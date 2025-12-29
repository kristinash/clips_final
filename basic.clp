(deftemplate input-question 
    (slot name) 
    (slot certainty (type NUMBER))
)

(deftemplate ioproxy 
    (slot fact-id) 
    (slot mode (default 0))          
    (multislot messages)               
    (multislot answers)                
)

(deftemplate ingredient 
    (slot name) 
    (slot certainty (default 0.0)) 
    (slot type (default raw)) 
)

(deftemplate mood-factor
    (slot value (type NUMBER) (default 0.0))
)

(deftemplate sendmessage 
    (slot value)
)

(deffunction max-certainty (?old-cf ?new-cf)
   (min 1.0 (if (> ?new-cf ?old-cf) 
                then ?new-cf 
                else ?old-cf))
)

(deffunction weighted-avg ($?data)
   (bind ?sum-products 0.0) 
   (bind ?sum-weights 0.0) 
   (bind ?i 1)
   (while (<= ?i (length$ ?data))
      (bind ?val (nth$ ?i ?data))
      (bind ?weight (nth$ (+ ?i 1) ?data))
      (bind ?sum-products (+ ?sum-products (* ?val ?weight)))
      (bind ?sum-weights (+ ?sum-weights ?weight))
      (bind ?i (+ ?i 2)))
   (if (> ?sum-weights 0) 
       then (/ ?sum-products ?sum-weights) 
       else 0.0)
)
(defrule ask-user-mood
   (declare (salience 150))
   ?proxy <- (ioproxy (mode 0))
   (not (mood-factor))
   =>
   (modify ?proxy 
       (mode 1)
       (messages "У вас сегодня хорошее настроение?")
       (answers "хорошее" "плохое"))
   (halt)
)

(defrule handle-mood-voice
   (declare (salience 140))
   ?ans <- (answer ?val)
   ?proxy <- (ioproxy (mode 1))
   =>
   (bind ?normalized-val (lowcase ?val))
   (bind ?bonus (if (eq ?normalized-val "хорошее") 
                    then 0.1 
                    else -0.1))
   (assert (mood-factor (value ?bonus)))
   (modify ?proxy (mode 0) (messages) (answers))
   (retract ?ans)
)

(defrule match-ingredients
    (declare (salience 100))
    ?f <- (ingredient (name ?name))
    ?q <- (input-question (name ?name) (certainty ?new-c))
    =>
    (modify ?f (certainty ?new-c))
    (retract ?q)
)
(defrule generate-final-report
    (declare (salience -10))
    (ingredient (name ?name) (certainty ?c&:(> ?c 0.0)) (type result))
    (mood-factor (value ?m))
    =>
    (bind ?final-cf (max 0.0 (min 1.0 (+ ?c ?m))))
    (assert (sendmessage (value (str-cat "ИТОГО: " ?name " (CF=" ?final-cf ") [Настроение: " ?m "]"))))
)

(defrule collect-messages-to-proxy
    (declare (salience -100)) 
    ?msg <- (sendmessage (value ?text))
    ?proxy <- (ioproxy (messages $?current-msgs))
    =>
    (modify ?proxy (messages $?current-msgs ?text))
    (retract ?msg)
)
