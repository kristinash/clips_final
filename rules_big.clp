;
; АВТОМАТИЧЕСКИ СГЕНЕРИРОВАННЫЕ ПРАВИЛА
;

(defrule rule-r001
    (declare (salience 10))
    (ingredient (name "Мука пшеничная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Смесь муки и соли") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 3) 0.93))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Мука пшеничная + Соль йодированная -> Смесь муки и соли (CF=" ?res ")"))))
    )
)

(defrule rule-r002
    (declare (salience 10))
    (ingredient (name "Вода фильтрованная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Солевой раствор") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 6) 0.91))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Вода фильтрованная + Соль йодированная -> Солевой раствор (CF=" ?res ")"))))
    )
)

(defrule rule-r003
    (declare (salience 10))
    (ingredient (name "Вода фильтрованная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сахар тростниковый") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Сахарный сироп") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 9) 0.78))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Вода фильтрованная + Сахар тростниковый -> Сахарный сироп (CF=" ?res ")"))))
    )
)

(defrule rule-r004
    (declare (salience 10))
    (ingredient (name "Яйца категории С0") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Молоко пастеризованное") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Яичная смесь") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 1) 0.89))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Яйца категории С0 + Молоко пастеризованное -> Яичная смесь (CF=" ?res ")"))))
    )
)

(defrule rule-r005
    (declare (salience 10))
    (ingredient (name "Молоко пастеризованное") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Молочная основа") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 5 ?c2 9) 0.95))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Молоко пастеризованное + Масло сливочное -> Молочная основа (CF=" ?res ")"))))
    )
)

(defrule rule-r006
    (declare (salience 10))
    (ingredient (name "Томаты спелые") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Томатная паста") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 6) 0.76))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Томаты спелые + Соль йодированная -> Томатная паста (CF=" ?res ")"))))
    )
)

(defrule rule-r007
    (declare (salience 10))
    (ingredient (name "Чеснок свежий") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Чесночная паста") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 6) 0.93))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Чеснок свежий + Масло оливковое -> Чесночная паста (CF=" ?res ")"))))
    )
)

(defrule rule-r008
    (declare (salience 10))
    (ingredient (name "Базилик свежий") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Орегано сушеный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Тимьян свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Травяная смесь итальянская") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 1 ?c3 6) 0.19))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Базилик свежий + Орегано сушеный + Тимьян свежий -> Травяная смесь итальянская (CF=" ?res ")"))))
    )
)

(defrule rule-r009
    (declare (salience 10))
    (ingredient (name "Тимьян свежий") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Розмарин") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Петрушка кудрявая") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Травяная смесь прованс") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 2 ?c3 3) 0.34))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тимьян свежий + Розмарин + Петрушка кудрявая -> Травяная смесь прованс (CF=" ?res ")"))))
    )
)

(defrule rule-r010
    (declare (salience 10))
    (ingredient (name "Уксус бальзамический") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Лимоны свежие") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Маринад базовый") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 1 ?c3 7) 0.26))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Уксус бальзамический + Лимоны свежие + Соль йодированная -> Маринад базовый (CF=" ?res ")"))))
    )
)

(defrule rule-r011
    (declare (salience 10))
    (ingredient (name "Масло оливковое") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Уксус бальзамический") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Лимоны свежие") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Заправка винегрет") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 9 ?c3 1) 0.85))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Масло оливковое + Уксус бальзамический + Лимоны свежие -> Заправка винегрет (CF=" ?res ")"))))
    )
)

(defrule rule-r012
    (declare (salience 10))
    (ingredient (name "Томатная паста") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соусная основа") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 2 ?c2 1 ?c3 5) 0.68))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Томатная паста + Соль йодированная + Перец черный -> Соусная основа (CF=" ?res ")"))))
    )
)

(defrule rule-r013
    (declare (salience 10))
    (ingredient (name "Мука пшеничная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Кляр жидкий") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 5 ?c3 6) 0.34))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Мука пшеничная + Яйца категории С0 + Вода фильтрованная -> Кляр жидкий (CF=" ?res ")"))))
    )
)

(defrule rule-r014
    (declare (salience 10))
    (ingredient (name "Мука пшеничная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Панировка") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 5 ?c3 7) 0.52))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Мука пшеничная + Соль йодированная + Перец черный -> Панировка (CF=" ?res ")"))))
    )
)

(defrule rule-r015
    (declare (salience 10))
    (ingredient (name "Вода фильтрованная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Лук красный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Бульонная основа") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 1 ?c3 1) 0.41))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Вода фильтрованная + Лук красный + Чеснок свежий -> Бульонная основа (CF=" ?res ")"))))
    )
)

(defrule rule-r016
    (declare (salience 10))
    (ingredient (name "Молоко пастеризованное") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Сметанная смесь") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 5 ?c3 7) 0.82))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Молоко пастеризованное + Соль йодированная + Масло сливочное -> Сметанная смесь (CF=" ?res ")"))))
    )
)

(defrule rule-r017
    (declare (salience 10))
    (ingredient (name "Сыр Моцарелла") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Сырная стружка") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 7 ?c3 1) 0.58))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Сыр Моцарелла + Соль йодированная + Перец черный -> Сырная стружка (CF=" ?res ")"))))
    )
)

(defrule rule-r018
    (declare (salience 10))
    (ingredient (name "Томаты спелые") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Лук красный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Петрушка кудрявая") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Овощная нарезка") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 3 ?c3 1) 0.35))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Томаты спелые + Лук красный + Петрушка кудрявая -> Овощная нарезка (CF=" ?res ")"))))
    )
)

(defrule rule-r019
    (declare (salience 10))
    (ingredient (name "Лимоны свежие") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Мед цветочный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Сахар тростниковый") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Фруктовая цедра") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 3 ?c3 5) 0.53))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Лимоны свежие + Мед цветочный + Сахар тростниковый -> Фруктовая цедра (CF=" ?res ")"))))
    )
)

(defrule rule-r020
    (declare (salience 10))
    (ingredient (name "Соль йодированная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Специальная соль") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 5 ?c3 7) 0.33))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Соль йодированная + Чеснок свежий + Перец черный -> Специальная соль (CF=" ?res ")"))))
    )
)

(defrule rule-r021
    (declare (salience 10))
    (ingredient (name "Сахар тростниковый") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Мед цветочный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Сахарный сироп") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 4 ?c3 9) 0.16))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Сахар тростниковый + Мед цветочный + Вода фильтрованная -> Сахарный сироп (CF=" ?res ")"))))
    )
)

(defrule rule-r022
    (declare (salience 10))
    (ingredient (name "Яйца категории С0") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Яичная смесь") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 6 ?c3 1) 0.23))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Яйца категории С0 + Соль йодированная + Перец черный -> Яичная смесь (CF=" ?res ")"))))
    )
)

(defrule rule-r023
    (declare (salience 10))
    (ingredient (name "Масло сливочное") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сахар тростниковый") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Молоко пастеризованное") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Молочная основа") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 5 ?c3 6) 0.97))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Масло сливочное + Сахар тростниковый + Молоко пастеризованное -> Молочная основа (CF=" ?res ")"))))
    )
)

(defrule rule-r024
    (declare (salience 10))
    (ingredient (name "Томаты спелые") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Томатная паста") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 2 ?c2 5 ?c3 10) 0.73))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Томаты спелые + Масло оливковое + Чеснок свежий -> Томатная паста (CF=" ?res ")"))))
    )
)

(defrule rule-r025
    (declare (salience 10))
    (ingredient (name "Говядина вырезка") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Маринад базовый") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 3 ?c3 3) 0.13))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Говядина вырезка + Соль йодированная + Перец черный -> Маринад базовый (CF=" ?res ")"))))
    )
)

(defrule rule-r026
    (declare (salience 10))
    (ingredient (name "Рис басмати") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Бульонная основа") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 9 ?c3 2) 0.76))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Рис басмати + Вода фильтрованная + Соль йодированная -> Бульонная основа (CF=" ?res ")"))))
    )
)

(defrule rule-r027
    (declare (salience 10))
    (ingredient (name "Лук красный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Овощная нарезка") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 4 ?c3 10) 0.39))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Лук красный + Чеснок свежий + Масло оливковое -> Овощная нарезка (CF=" ?res ")"))))
    )
)

(defrule rule-r028
    (declare (salience 10))
    (ingredient (name "Перец черный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Орегано сушеный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Специальная соль") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 2 ?c2 3 ?c3 4) 0.78))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Перец черный + Орегано сушеный + Соль йодированная -> Специальная соль (CF=" ?res ")"))))
    )
)

(defrule rule-r029
    (declare (salience 10))
    (ingredient (name "Лимоны свежие") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сахар тростниковый") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Заправка винегрет") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 4 ?c3 5) 0.19))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Лимоны свежие + Сахар тростниковый + Вода фильтрованная -> Заправка винегрет (CF=" ?res ")"))))
    )
)

(defrule rule-r030
    (declare (salience 10))
    (ingredient (name "Петрушка кудрявая") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Базилик свежий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Травяная смесь итальянская") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 9 ?c3 6) 0.39))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Петрушка кудрявая + Базилик свежий + Масло оливковое -> Травяная смесь итальянская (CF=" ?res ")"))))
    )
)

(defrule rule-r031
    (declare (salience 10))
    (ingredient (name "Смесь муки и соли") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Дрожжи сухие") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Тесто дрожжевое базовое") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 6 ?c3 2) 0.53))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Смесь муки и соли + Вода фильтрованная + Дрожжи сухие -> Тесто дрожжевое базовое (CF=" ?res ")"))))
    )
)

(defrule rule-r032
    (declare (salience 10))
    (ingredient (name "Смесь муки и соли") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Тесто слоеное") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 3 ?c3 7) 0.73))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Смесь муки и соли + Масло сливочное + Вода фильтрованная -> Тесто слоеное (CF=" ?res ")"))))
    )
)

(defrule rule-r033
    (declare (salience 10))
    (ingredient (name "Смесь муки и соли") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Сахар тростниковый") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Тесто песочное") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 7 ?c3 9) 0.3))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Смесь муки и соли + Масло сливочное + Сахар тростниковый -> Тесто песочное (CF=" ?res ")"))))
    )
)

(defrule rule-r034
    (declare (salience 10))
    (ingredient (name "Томатная паста") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус томатный базовый") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 10 ?c3 9) 0.2))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Томатная паста + Чеснок свежий + Перец черный -> Соус томатный базовый (CF=" ?res ")"))))
    )
)

(defrule rule-r035
    (declare (salience 10))
    (ingredient (name "Сырная стружка") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Молоко пастеризованное") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус сырный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 1 ?c3 3) 0.98))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Сырная стружка + Молоко пастеризованное + Масло сливочное -> Соус сырный (CF=" ?res ")"))))
    )
)

(defrule rule-r036
    (declare (salience 10))
    (ingredient (name "Смесь муки и соли") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Молоко пастеризованное") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус белый") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 9 ?c3 4) 0.27))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Смесь муки и соли + Молоко пастеризованное + Масло сливочное -> Соус белый (CF=" ?res ")"))))
    )
)

(defrule rule-r037
    (declare (salience 10))
    (ingredient (name "Говядина вырезка") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Лук красный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Фарш мясной подготовленный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 3 ?c3 10) 0.39))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Говядина вырезка + Лук красный + Чеснок свежий -> Фарш мясной подготовленный (CF=" ?res ")"))))
    )
)

(defrule rule-r038
    (declare (salience 10))
    (ingredient (name "Лук красный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Томаты спелые") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Петрушка кудрявая") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Фарш овощной") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 4 ?c3 9) 0.32))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Лук красный + Томаты спелые + Петрушка кудрявая -> Фарш овощной (CF=" ?res ")"))))
    )
)

(defrule rule-r039
    (declare (salience 10))
    (ingredient (name "Бульонная основа") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Говядина вырезка") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Лук красный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Бульон куриный процеженный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 5 ?c3 9) 0.44))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Бульонная основа + Говядина вырезка + Лук красный -> Бульон куриный процеженный (CF=" ?res ")"))))
    )
)

(defrule rule-r040
    (declare (salience 10))
    (ingredient (name "Бульонная основа") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Лук красный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Томаты спелые") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Бульон овощной ароматный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 2 ?c2 6 ?c3 1) 0.39))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Бульонная основа + Лук красный + Томаты спелые -> Бульон овощной ароматный (CF=" ?res ")"))))
    )
)

(defrule rule-r041
    (declare (salience 10))
    (ingredient (name "Маринад базовый") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Маринад сложный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 8 ?c3 8) 0.57))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Маринад базовый + Чеснок свежий + Перец черный -> Маринад сложный (CF=" ?res ")"))))
    )
)

(defrule rule-r042
    (declare (salience 10))
    (ingredient (name "Кляр жидкий") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Молоко пастеризованное") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Кляр воздушный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 2 ?c3 5) 0.62))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Кляр жидкий + Яйца категории С0 + Молоко пастеризованное -> Кляр воздушный (CF=" ?res ")"))))
    )
)

(defrule rule-r043
    (declare (salience 10))
    (ingredient (name "Сахарный сироп") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Молоко пастеризованное") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Крем заварной базовый") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 10 ?c3 5) 0.99))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Сахарный сироп + Яйца категории С0 + Молоко пастеризованное -> Крем заварной базовый (CF=" ?res ")"))))
    )
)

(defrule rule-r044
    (declare (salience 10))
    (ingredient (name "Сахарный сироп") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сахар тростниковый") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Глазурь зеркальная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 3 ?c3 3) 0.63))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Сахарный сироп + Сахар тростниковый + Вода фильтрованная -> Глазурь зеркальная (CF=" ?res ")"))))
    )
)

(defrule rule-r045
    (declare (salience 10))
    (ingredient (name "Овощная нарезка") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Овощи бланшированные") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 1 ?c3 3) 0.55))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Овощная нарезка + Масло оливковое + Соль йодированная -> Овощи бланшированные (CF=" ?res ")"))))
    )
)

(defrule rule-r046
    (declare (salience 10))
    (ingredient (name "Овощная нарезка") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Овощи обжаренные") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 9 ?c3 5) 0.5))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Овощная нарезка + Масло оливковое + Чеснок свежий -> Овощи обжаренные (CF=" ?res ")"))))
    )
)

(defrule rule-r047
    (declare (salience 10))
    (ingredient (name "Говядина вырезка") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Маринад сложный") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Мясо маринованное") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 2 ?c2 7) 0.41))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Говядина вырезка + Маринад сложный -> Мясо маринованное (CF=" ?res ")"))))
    )
)

(defrule rule-r048
    (declare (salience 10))
    (ingredient (name "Говядина вырезка") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Маринад базовый") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Рыба подготовленная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 6) 0.62))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Говядина вырезка + Маринад базовый -> Рыба подготовленная (CF=" ?res ")"))))
    )
)

(defrule rule-r049
    (declare (salience 10))
    (ingredient (name "Тесто дрожжевое базовое") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Тесто раскатанное") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 10) 0.3))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тесто дрожжевое базовое + Масло сливочное -> Тесто раскатанное (CF=" ?res ")"))))
    )
)

(defrule rule-r050
    (declare (salience 10))
    (ingredient (name "Сахар тростниковый") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Мед цветочный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Начинка сладкая") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 1 ?c3 6) 0.49))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Сахар тростниковый + Мед цветочный + Яйца категории С0 -> Начинка сладкая (CF=" ?res ")"))))
    )
)

(defrule rule-r051
    (declare (salience 10))
    (ingredient (name "Смесь муки и соли") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Дрожжи сухие") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Тесто дрожжевое базовое") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 2 ?c2 5 ?c3 8) 0.92))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Смесь муки и соли + Дрожжи сухие + Вода фильтрованная -> Тесто дрожжевое базовое (CF=" ?res ")"))))
    )
)

(defrule rule-r052
    (declare (salience 10))
    (ingredient (name "Томатная паста") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Травяная смесь итальянская") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус томатный базовый") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 1 ?c3 2) 0.36))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Томатная паста + Травяная смесь итальянская + Соль йодированная -> Соус томатный базовый (CF=" ?res ")"))))
    )
)

(defrule rule-r053
    (declare (salience 10))
    (ingredient (name "Сырная стружка") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Молочная основа") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус сырный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 3 ?c3 3) 0.11))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Сырная стружка + Молочная основа + Соль йодированная -> Соус сырный (CF=" ?res ")"))))
    )
)

(defrule rule-r054
    (declare (salience 10))
    (ingredient (name "Яичная смесь") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус белый") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 5 ?c3 5) 0.35))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Яичная смесь + Соль йодированная + Перец черный -> Соус белый (CF=" ?res ")"))))
    )
)

(defrule rule-r055
    (declare (salience 10))
    (ingredient (name "Фарш мясной подготовленный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Специальная соль") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Фарш для пельменей") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 8 ?c3 1) 0.83))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Фарш мясной подготовленный + Специальная соль + Чеснок свежий -> Фарш для пельменей (CF=" ?res ")"))))
    )
)

(defrule rule-r056
    (declare (salience 10))
    (ingredient (name "Фарш овощной") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Начинка овощная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 3 ?c3 8) 0.75))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Фарш овощной + Масло оливковое + Соль йодированная -> Начинка овощная (CF=" ?res ")"))))
    )
)

(defrule rule-r057
    (declare (salience 10))
    (ingredient (name "Бульон куриный процеженный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Специальная соль") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Бульон концентрированный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 2 ?c3 2) 0.23))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Бульон куриный процеженный + Специальная соль + Перец черный -> Бульон концентрированный (CF=" ?res ")"))))
    )
)

(defrule rule-r058
    (declare (salience 10))
    (ingredient (name "Бульон овощной ароматный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Травяная смесь итальянская") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Овощи тушеные") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 4 ?c3 4) 0.98))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Бульон овощной ароматный + Травяная смесь итальянская + Соль йодированная -> Овощи тушеные (CF=" ?res ")"))))
    )
)

(defrule rule-r059
    (declare (salience 10))
    (ingredient (name "Маринад сложный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Орегано сушеный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Тимьян свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Маринад пряный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 10 ?c3 7) 0.83))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Маринад сложный + Орегано сушеный + Тимьян свежий -> Маринад пряный (CF=" ?res ")"))))
    )
)

(defrule rule-r060
    (declare (salience 10))
    (ingredient (name "Кляр воздушный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Панировка") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Кляр пивной") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 1 ?c3 4) 0.13))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Кляр воздушный + Панировка + Яйца категории С0 -> Кляр пивной (CF=" ?res ")"))))
    )
)

(defrule rule-r061
    (declare (salience 10))
    (ingredient (name "Тесто дрожжевое базовое") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Дрожжи сухие") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Тесто для пиццы выброженное") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 4 ?c3 8) 0.35))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тесто дрожжевое базовое + Дрожжи сухие + Вода фильтрованная -> Тесто для пиццы выброженное (CF=" ?res ")"))))
    )
)

(defrule rule-r062
    (declare (salience 10))
    (ingredient (name "Смесь муки и соли") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Тесто для пасты") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 4 ?c3 5) 0.78))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Смесь муки и соли + Яйца категории С0 + Вода фильтрованная -> Тесто для пасты (CF=" ?res ")"))))
    )
)

(defrule rule-r063
    (declare (salience 10))
    (ingredient (name "Соус томатный базовый") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Травяная смесь итальянская") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус томатный ароматный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 10 ?c3 7) 0.37))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Соус томатный базовый + Травяная смесь итальянская + Масло оливковое -> Соус томатный ароматный (CF=" ?res ")"))))
    )
)

(defrule rule-r064
    (declare (salience 10))
    (ingredient (name "Соус белый") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сырная стружка") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус бешамель") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 10 ?c3 10) 0.89))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Соус белый + Сырная стружка + Соль йодированная -> Соус бешамель (CF=" ?res ")"))))
    )
)

(defrule rule-r065
    (declare (salience 10))
    (ingredient (name "Яичная смесь") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Лимоны свежие") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус голландез") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 3 ?c3 2) 0.75))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Яичная смесь + Масло сливочное + Лимоны свежие -> Соус голландез (CF=" ?res ")"))))
    )
)

(defrule rule-r066
    (declare (salience 10))
    (ingredient (name "Фарш мясной подготовленный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Лук красный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Фарш для пельменей") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 6 ?c3 6) 0.91))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Фарш мясной подготовленный + Лук красный + Чеснок свежий -> Фарш для пельменей (CF=" ?res ")"))))
    )
)

(defrule rule-r067
    (declare (salience 10))
    (ingredient (name "Фарш мясной подготовленный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Панировка") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Фарш для котлет") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 3 ?c3 1) 0.69))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Фарш мясной подготовленный + Панировка + Соль йодированная -> Фарш для котлет (CF=" ?res ")"))))
    )
)

(defrule rule-r068
    (declare (salience 10))
    (ingredient (name "Бульон куриный процеженный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Бульон концентрированный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 8 ?c3 4) 0.42))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Бульон куриный процеженный + Чеснок свежий + Перец черный -> Бульон концентрированный (CF=" ?res ")"))))
    )
)

(defrule rule-r069
    (declare (salience 10))
    (ingredient (name "Маринад сложный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Базилик свежий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Орегано сушеный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Маринад пряный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 5 ?c3 1) 0.66))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Маринад сложный + Базилик свежий + Орегано сушеный -> Маринад пряный (CF=" ?res ")"))))
    )
)

(defrule rule-r070
    (declare (salience 10))
    (ingredient (name "Кляр воздушный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Молоко пастеризованное") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Дрожжи сухие") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Кляр пивной") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 2 ?c3 1) 0.42))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Кляр воздушный + Молоко пастеризованное + Дрожжи сухие -> Кляр пивной (CF=" ?res ")"))))
    )
)

(defrule rule-r071
    (declare (salience 10))
    (ingredient (name "Крем заварной базовый") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Мед цветочный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Крем дипломат") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 1 ?c3 1) 0.4))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Крем заварной базовый + Мед цветочный + Масло сливочное -> Крем дипломат (CF=" ?res ")"))))
    )
)

(defrule rule-r072
    (declare (salience 10))
    (ingredient (name "Глазурь зеркальная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сахар тростниковый") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Глазурь шоколадная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 8 ?c3 7) 0.69))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Глазурь зеркальная + Сахар тростниковый + Масло сливочное -> Глазурь шоколадная (CF=" ?res ")"))))
    )
)

(defrule rule-r073
    (declare (salience 10))
    (ingredient (name "Овощи бланшированные") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Овощи тушеные") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 2 ?c2 1 ?c3 10) 0.83))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Овощи бланшированные + Масло оливковое + Соль йодированная -> Овощи тушеные (CF=" ?res ")"))))
    )
)

(defrule rule-r074
    (declare (salience 10))
    (ingredient (name "Овощи обжаренные") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Травяная смесь итальянская") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Овощи гриль") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 9 ?c3 2) 0.9))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Овощи обжаренные + Травяная смесь итальянская + Соль йодированная -> Овощи гриль (CF=" ?res ")"))))
    )
)

(defrule rule-r075
    (declare (salience 10))
    (ingredient (name "Мясо маринованное") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Панировка") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Мясо панированное") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 5 ?c2 10 ?c3 7) 0.32))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Мясо маринованное + Панировка + Яйца категории С0 -> Мясо панированное (CF=" ?res ")"))))
    )
)

(defrule rule-r076
    (declare (salience 10))
    (ingredient (name "Рыба подготовленная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Кляр жидкий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Рыба в кляре") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 6 ?c3 9) 0.4))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Рыба подготовленная + Кляр жидкий + Соль йодированная -> Рыба в кляре (CF=" ?res ")"))))
    )
)

(defrule rule-r077
    (declare (salience 10))
    (ingredient (name "Тесто раскатанное") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Тесто формованное") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 2) 0.48))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тесто раскатанное + Масло оливковое -> Тесто формованное (CF=" ?res ")"))))
    )
)

(defrule rule-r078
    (declare (salience 10))
    (ingredient (name "Фарш для пельменей") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Лук красный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Начинка мясная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 3 ?c3 1) 0.76))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Фарш для пельменей + Лук красный + Чеснок свежий -> Начинка мясная (CF=" ?res ")"))))
    )
)

(defrule rule-r079
    (declare (salience 10))
    (ingredient (name "Фарш овощной") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Томаты спелые") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Петрушка кудрявая") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Начинка овощная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 2 ?c3 1) 0.36))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Фарш овощной + Томаты спелые + Петрушка кудрявая -> Начинка овощная (CF=" ?res ")"))))
    )
)

(defrule rule-r080
    (declare (salience 10))
    (ingredient (name "Начинка сладкая") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Молоко пастеризованное") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Основа для десерта") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 7 ?c3 1) 0.57))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Начинка сладкая + Яйца категории С0 + Молоко пастеризованное -> Основа для десерта (CF=" ?res ")"))))
    )
)

(defrule rule-r081
    (declare (salience 10))
    (ingredient (name "Тесто для пиццы выброженное") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соус томатный ароматный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Сыр Моцарелла") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Основа пиццы готовая") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 5 ?c2 8 ?c3 10) 0.62))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тесто для пиццы выброженное + Соус томатный ароматный + Сыр Моцарелла -> Основа пиццы готовая (CF=" ?res ")"))))
    )
)

(defrule rule-r082
    (declare (salience 10))
    (ingredient (name "Тесто для пасты") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Паста свежая") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 3 ?c3 7) 0.22))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тесто для пасты + Соль йодированная + Вода фильтрованная -> Паста свежая (CF=" ?res ")"))))
    )
)

(defrule rule-r083
    (declare (salience 10))
    (ingredient (name "Соус томатный ароматный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Травяная смесь итальянская") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус для пасты") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 7 ?c3 4) 0.9))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Соус томатный ароматный + Травяная смесь итальянская + Масло оливковое -> Соус для пасты (CF=" ?res ")"))))
    )
)

(defrule rule-r084
    (declare (salience 10))
    (ingredient (name "Соус бешамель") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соус для мяса") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 10 ?c3 1) 0.21))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Соус бешамель + Чеснок свежий + Перец черный -> Соус для мяса (CF=" ?res ")"))))
    )
)

(defrule rule-r085
    (declare (salience 10))
    (ingredient (name "Фарш для котлет") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Панировка") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Котлеты сырые") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 9 ?c3 9) 0.34))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Фарш для котлет + Панировка + Яйца категории С0 -> Котлеты сырые (CF=" ?res ")"))))
    )
)

(defrule rule-r086
    (declare (salience 10))
    (ingredient (name "Рис басмати") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Бульон концентрированный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Гарнир рисовый подготовленный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 7 ?c3 4) 0.96))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Рис басмати + Бульон концентрированный + Соль йодированная -> Гарнир рисовый подготовленный (CF=" ?res ")"))))
    )
)

(defrule rule-r087
    (declare (salience 10))
    (ingredient (name "Овощная нарезка") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Заправка винегрет") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Овощи для салата") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 5 ?c3 6) 0.4))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Овощная нарезка + Заправка винегрет + Соль йодированная -> Овощи для салата (CF=" ?res ")"))))
    )
)

(defrule rule-r088
    (declare (salience 10))
    (ingredient (name "Мясо маринованное") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Маринад пряный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Мясо для жарки") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 5 ?c3 7) 0.58))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Мясо маринованное + Маринад пряный + Масло оливковое -> Мясо для жарки (CF=" ?res ")"))))
    )
)

(defrule rule-r089
    (declare (salience 10))
    (ingredient (name "Рыба подготовленная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Кляр пивной") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Рыба для запекания") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 9 ?c3 1) 0.74))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Рыба подготовленная + Кляр пивной + Соль йодированная -> Рыба для запекания (CF=" ?res ")"))))
    )
)

(defrule rule-r090
    (declare (salience 10))
    (ingredient (name "Тесто формованное") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Сахар тростниковый") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Тесто для выпечки") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 3 ?c3 2) 0.26))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тесто формованное + Масло сливочное + Сахар тростниковый -> Тесто для выпечки (CF=" ?res ")"))))
    )
)

(defrule rule-r091
    (declare (salience 10))
    (ingredient (name "Крем дипломат") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Мед цветочный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Крем кондитерский") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 2 ?c3 8) 0.19))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Крем дипломат + Мед цветочный + Яйца категории С0 -> Крем кондитерский (CF=" ?res ")"))))
    )
)

(defrule rule-r092
    (declare (salience 10))
    (ingredient (name "Овощи тушеные") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Овощная смесь тушеная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 4 ?c3 1) 0.18))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Овощи тушеные + Масло оливковое + Соль йодированная -> Овощная смесь тушеная (CF=" ?res ")"))))
    )
)

(defrule rule-r093
    (declare (salience 10))
    (ingredient (name "Начинка мясная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Лук красный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Мясная смесь фаршированная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 10 ?c3 3) 0.93))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Начинка мясная + Лук красный + Чеснок свежий -> Мясная смесь фаршированная (CF=" ?res ")"))))
    )
)

(defrule rule-r094
    (declare (salience 10))
    (ingredient (name "Соус голландез") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соус для пасты") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Соусная композиция") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 10 ?c3 5) 0.63))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Соус голландез + Соус для пасты + Соль йодированная -> Соусная композиция (CF=" ?res ")"))))
    )
)

(defrule rule-r095
    (declare (salience 10))
    (ingredient (name "Основа для десерта") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сахар тростниковый") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Яйца категории С0") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Десертная основа") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 4 ?c3 5) 0.66))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Основа для десерта + Сахар тростниковый + Яйца категории С0 -> Десертная основа (CF=" ?res ")"))))
    )
)

(defrule rule-r096
    (declare (salience 10))
    (ingredient (name "Основа пиццы готовая") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сыр Моцарелла") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Томаты спелые") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Пицца Маргарита свежая") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 4 ?c3 10) 0.13))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Основа пиццы готовая + Сыр Моцарелла + Томаты спелые -> Пицца Маргарита свежая (CF=" ?res ")"))))
    )
)

(defrule rule-r097
    (declare (salience 10))
    (ingredient (name "Паста свежая") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соус для пасты") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Сыр Моцарелла") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Паста Карбонара") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 1 ?c3 7) 0.27))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Паста свежая + Соус для пасты + Сыр Моцарелла -> Паста Карбонара (CF=" ?res ")"))))
    )
)

(defrule rule-r098
    (declare (salience 10))
    (ingredient (name "Овощи для салата") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Котлеты сырые") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Сырная стружка") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Салат Цезарь классический") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 2 ?c3 6) 0.87))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Овощи для салата + Котлеты сырые + Сырная стружка -> Салат Цезарь классический (CF=" ?res ")"))))
    )
)

(defrule rule-r099
    (declare (salience 10))
    (ingredient (name "Бульон куриный процеженный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Лимоны свежие") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Суп Том Ям") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 3 ?c3 9) 0.48))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Бульон куриный процеженный + Чеснок свежий + Лимоны свежие -> Суп Том Ям (CF=" ?res ")"))))
    )
)

(defrule rule-r100
    (declare (salience 10))
    (ingredient (name "Мясо для жарки") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Стейк Рибай medium rare") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 4 ?c3 8) 0.1))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Мясо для жарки + Масло оливковое + Перец черный -> Стейк Рибай medium rare (CF=" ?res ")"))))
    )
)

(defrule rule-r101
    (declare (salience 10))
    (ingredient (name "Гарнир рисовый подготовленный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Овощи для салата") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Сыр Моцарелла") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Роллы Калифорния") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 1 ?c3 5) 0.16))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Гарнир рисовый подготовленный + Овощи для салата + Сыр Моцарелла -> Роллы Калифорния (CF=" ?res ")"))))
    )
)

(defrule rule-r102
    (declare (salience 10))
    (ingredient (name "Котлеты сырые") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Тесто для выпечки") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Сыр Моцарелла") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Бургер Чизбургер") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 5 ?c3 9) 0.47))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Котлеты сырые + Тесто для выпечки + Сыр Моцарелла -> Бургер Чизбургер (CF=" ?res ")"))))
    )
)

(defrule rule-r103
    (declare (salience 10))
    (ingredient (name "Тесто для выпечки") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Начинка мясная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соус сырный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Тако с говядиной") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 9 ?c3 4) 0.67))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тесто для выпечки + Начинка мясная + Соус сырный -> Тако с говядиной (CF=" ?res ")"))))
    )
)

(defrule rule-r104
    (declare (salience 10))
    (ingredient (name "Бульон куриный процеженный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Рыба для запекания") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Лук красный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Рамен с курицей") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 8 ?c3 3) 0.56))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Бульон куриный процеженный + Рыба для запекания + Лук красный -> Рамен с курицей (CF=" ?res ")"))))
    )
)

(defrule rule-r105
    (declare (salience 10))
    (ingredient (name "Гарнир рисовый подготовленный") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Начинка мясная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Лук красный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Плов узбекский") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 2 ?c2 7 ?c3 2) 0.49))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Гарнир рисовый подготовленный + Начинка мясная + Лук красный -> Плов узбекский (CF=" ?res ")"))))
    )
)

(defrule rule-r106
    (declare (salience 10))
    (ingredient (name "Овощная смесь тушеная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Мясная смесь фаршированная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соусная композиция") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Лазанья мясная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 7 ?c3 4) 0.71))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Овощная смесь тушеная + Мясная смесь фаршированная + Соусная композиция -> Лазанья мясная (CF=" ?res ")"))))
    )
)

(defrule rule-r107
    (declare (salience 10))
    (ingredient (name "Фарш для пельменей") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Тесто раскатанное") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Пельмени сибирские") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 8 ?c3 9) 0.52))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Фарш для пельменей + Тесто раскатанное + Соль йодированная -> Пельмени сибирские (CF=" ?res ")"))))
    )
)

(defrule rule-r108
    (declare (salience 10))
    (ingredient (name "Мясо маринованное") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Овощи гриль") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Курица гриль") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 5 ?c2 1 ?c3 2) 0.65))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Мясо маринованное + Овощи гриль + Соль йодированная -> Курица гриль (CF=" ?res ")"))))
    )
)

(defrule rule-r109
    (declare (salience 10))
    (ingredient (name "Рыба в кляре") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Овощи тушеные") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Лимоны свежие") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Рыба запеченная с лимоном") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 3 ?c3 7) 0.3))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Рыба в кляре + Овощи тушеные + Лимоны свежие -> Рыба запеченная с лимоном (CF=" ?res ")"))))
    )
)

(defrule rule-r110
    (declare (salience 10))
    (ingredient (name "Яичная смесь") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Начинка овощная") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Омлет с овощами") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 5 ?c3 10) 0.24))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Яичная смесь + Начинка овощная + Соль йодированная -> Омлет с овощами (CF=" ?res ")"))))
    )
)

(defrule rule-r111
    (declare (salience 10))
    (ingredient (name "Пицца Маргарита свежая") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сыр Моцарелла") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Травяная смесь итальянская") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Пицца Маргарита запеченная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 6 ?c3 7) 0.19))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Пицца Маргарита свежая + Сыр Моцарелла + Травяная смесь итальянская -> Пицца Маргарита запеченная (CF=" ?res ")"))))
    )
)

(defrule rule-r112
    (declare (salience 10))
    (ingredient (name "Паста Карбонара") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сырная стружка") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Орегано сушеный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Паста Карбонара с трюфелем") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 5 ?c2 5 ?c3 6) 0.38))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Паста Карбонара + Сырная стружка + Орегано сушеный -> Паста Карбонара с трюфелем (CF=" ?res ")"))))
    )
)

(defrule rule-r113
    (declare (salience 10))
    (ingredient (name "Салат Цезарь классический") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Рыба для запекания") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Заправка винегрет") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Салат Цезарь с креветками") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 7 ?c3 3) 0.54))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Салат Цезарь классический + Рыба для запекания + Заправка винегрет -> Салат Цезарь с креветками (CF=" ?res ")"))))
    )
)

(defrule rule-r114
    (declare (salience 10))
    (ingredient (name "Суп Том Ям") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Молоко пастеризованное") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Мед цветочный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Суп Том Ям кокосовый") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 4 ?c3 8) 0.88))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Суп Том Ям + Молоко пастеризованное + Мед цветочный -> Суп Том Ям кокосовый (CF=" ?res ")"))))
    )
)

(defrule rule-r115
    (declare (salience 10))
    (ingredient (name "Стейк Рибай medium rare") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соус для мяса") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Базилик свежий") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Стейк Рибай с соусом") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 3 ?c3 5) 0.98))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Стейк Рибай medium rare + Соус для мяса + Базилик свежий -> Стейк Рибай с соусом (CF=" ?res ")"))))
    )
)

(defrule rule-r116
    (declare (salience 10))
    (ingredient (name "Роллы Калифорния") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сыр Моцарелла") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Травяная смесь итальянская") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Роллы Калифорния премиум") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 5 ?c3 2) 0.53))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Роллы Калифорния + Сыр Моцарелла + Травяная смесь итальянская -> Роллы Калифорния премиум (CF=" ?res ")"))))
    )
)

(defrule rule-r117
    (declare (salience 10))
    (ingredient (name "Бургер Чизбургер") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Котлеты сырые") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Сыр Моцарелла") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Бургер Чизбургер двойной") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 8 ?c3 7) 0.4))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Бургер Чизбургер + Котлеты сырые + Сыр Моцарелла -> Бургер Чизбургер двойной (CF=" ?res ")"))))
    )
)

(defrule rule-r118
    (declare (salience 10))
    (ingredient (name "Тако с говядиной") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соус сырный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Перец черный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Тако с говядиной острейшие") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 10 ?c3 1) 0.42))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тако с говядиной + Соус сырный + Перец черный -> Тако с говядиной острейшие (CF=" ?res ")"))))
    )
)

(defrule rule-r119
    (declare (salience 10))
    (ingredient (name "Рамен с курицей") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Чеснок свежий") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Лимоны свежие") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Рамен с курицей пикантный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 10 ?c3 6) 0.26))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Рамен с курицей + Чеснок свежий + Лимоны свежие -> Рамен с курицей пикантный (CF=" ?res ")"))))
    )
)

(defrule rule-r120
    (declare (salience 10))
    (ingredient (name "Плов узбекский") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло оливковое") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Травяная смесь итальянская") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Плов узбекский праздничный") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 3 ?c3 9) 0.18))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Плов узбекский + Масло оливковое + Травяная смесь итальянская -> Плов узбекский праздничный (CF=" ?res ")"))))
    )
)

(defrule rule-r121
    (declare (salience 10))
    (ingredient (name "Пицца Маргарита запеченная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Паста Карбонара с трюфелем") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Салат Цезарь с креветками") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Итальянский ужин премиум") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 7 ?c3 5) 0.27))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Пицца Маргарита запеченная + Паста Карбонара с трюфелем + Салат Цезарь с креветками -> Итальянский ужин премиум (CF=" ?res ")"))))
    )
)

(defrule rule-r122
    (declare (salience 10))
    (ingredient (name "Роллы Калифорния премиум") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Суп Том Ям кокосовый") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Рамен с курицей пикантный") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Азиатский сет делюкс") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 3 ?c3 4) 0.37))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Роллы Калифорния премиум + Суп Том Ям кокосовый + Рамен с курицей пикантный -> Азиатский сет делюкс (CF=" ?res ")"))))
    )
)

(defrule rule-r123
    (declare (salience 10))
    (ingredient (name "Тако с говядиной острейшие") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Бургер Чизбургер двойной") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Тако с говядиной") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Мексиканская фиеста") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 6 ?c3 4) 0.12))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тако с говядиной острейшие + Бургер Чизбургер двойной + Тако с говядиной -> Мексиканская фиеста (CF=" ?res ")"))))
    )
)

(defrule rule-r124
    (declare (salience 10))
    (ingredient (name "Стейк Рибай с соусом") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Плов узбекский праздничный") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Пицца Маргарита запеченная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Праздничный гала-ужин") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 4 ?c2 10 ?c3 10) 0.95))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Стейк Рибай с соусом + Плов узбекский праздничный + Пицца Маргарита запеченная -> Праздничный гала-ужин (CF=" ?res ")"))))
    )
)

(defrule rule-r125
    (declare (salience 10))
    (ingredient (name "Лазанья мясная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Салат Цезарь с креветками") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Паста Карбонара с трюфелем") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Семейный обед выходного дня") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 9 ?c3 8) 0.39))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Лазанья мясная + Салат Цезарь с креветками + Паста Карбонара с трюфелем -> Семейный обед выходного дня (CF=" ?res ")"))))
    )
)

(defrule rule-r126
    (declare (salience 10))
    (ingredient (name "Пицца Маргарита запеченная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Стейк Рибай с соусом") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Десертная основа") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Романтический ужин") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 5 ?c3 1) 0.96))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Пицца Маргарита запеченная + Стейк Рибай с соусом + Десертная основа -> Романтический ужин (CF=" ?res ")"))))
    )
)

(defrule rule-r127
    (declare (salience 10))
    (ingredient (name "Паста Карбонара с трюфелем") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Роллы Калифорния премиум") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Салат Цезарь классический") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Бизнес-ланч премиум") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 6 ?c2 1 ?c3 1) 0.9))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Паста Карбонара с трюфелем + Роллы Калифорния премиум + Салат Цезарь классический -> Бизнес-ланч премиум (CF=" ?res ")"))))
    )
)

(defrule rule-r128
    (declare (salience 10))
    (ingredient (name "Омлет с овощами") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Пельмени сибирские") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Начинка сладкая") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Детский праздничный набор") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 10 ?c3 10) 0.53))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Омлет с овощами + Пельмени сибирские + Начинка сладкая -> Детский праздничный набор (CF=" ?res ")"))))
    )
)

(defrule rule-r129
    (declare (salience 10))
    (ingredient (name "Салат Цезарь с креветками") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Рыба запеченная с лимоном") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Овощная смесь тушеная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Вегетарианское комбо") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 1 ?c2 5 ?c3 2) 0.66))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Салат Цезарь с креветками + Рыба запеченная с лимоном + Овощная смесь тушеная -> Вегетарианское комбо (CF=" ?res ")"))))
    )
)

(defrule rule-r130
    (declare (salience 10))
    (ingredient (name "Пицца Маргарита запеченная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Паста Карбонара с трюфелем") (certainty ?c2&:(> ?c2 0.1)))
    (ingredient (name "Лазанья мясная") (certainty ?c3&:(> ?c3 0.1)))
    ?f <- (ingredient (name "Шведский стол домашний") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 8 ?c2 8 ?c3 9) 0.97))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Пицца Маргарита запеченная + Паста Карбонара с трюфелем + Лазанья мясная -> Шведский стол домашний (CF=" ?res ")"))))
    )
)

(defrule rule-r131
    (declare (salience 10))
    (ingredient (name "Смесь муки и соли") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Вода фильтрованная") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Мука пшеничная") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 10 ?c2 6) 0.86))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Смесь муки и соли + Вода фильтрованная -> Мука пшеничная (CF=" ?res ")"))))
    )
)

(defrule rule-r132
    (declare (salience 10))
    (ingredient (name "Сахарный сироп") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Соль йодированная") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Сахар тростниковый") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 5 ?c2 6) 0.68))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Сахарный сироп + Соль йодированная -> Сахар тростниковый (CF=" ?res ")"))))
    )
)

(defrule rule-r133
    (declare (salience 10))
    (ingredient (name "Яичная смесь") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Молоко пастеризованное") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Яйца категории С0") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 3 ?c2 5) 0.98))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Яичная смесь + Молоко пастеризованное -> Яйца категории С0 (CF=" ?res ")"))))
    )
)

(defrule rule-r134
    (declare (salience 10))
    (ingredient (name "Тесто дрожжевое базовое") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Масло сливочное") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Смесь муки и соли") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 5 ?c2 4) 0.35))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Тесто дрожжевое базовое + Масло сливочное -> Смесь муки и соли (CF=" ?res ")"))))
    )
)

(defrule rule-r135
    (declare (salience 10))
    (ingredient (name "Основа пиццы готовая") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Сыр Моцарелла") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Тесто для пиццы выброженное") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 2) 0.36))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Основа пиццы готовая + Сыр Моцарелла -> Тесто для пиццы выброженное (CF=" ?res ")"))))
    )
)

(defrule rule-r136
    (declare (salience 10))
    (ingredient (name "Пицца Маргарита свежая") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Томаты спелые") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Основа пиццы готовая") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 7 ?c2 6) 0.88))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Пицца Маргарита свежая + Томаты спелые -> Основа пиццы готовая (CF=" ?res ")"))))
    )
)

(defrule rule-r137
    (declare (salience 10))
    (ingredient (name "Пицца Маргарита запеченная") (certainty ?c1&:(> ?c1 0.1)))
    (ingredient (name "Травяная смесь итальянская") (certainty ?c2&:(> ?c2 0.1)))
    ?f <- (ingredient (name "Пицца Маргарита свежая") (certainty ?cur-c))
    =>
    (bind ?res (* (weighted-avg ?c1 9 ?c2 8) 0.32))
    (if (> ?res ?cur-c) then
        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))
        (assert (sendmessage (value (str-cat "ПРОЦЕСС: Пицца Маргарита запеченная + Травяная смесь итальянская -> Пицца Маргарита свежая (CF=" ?res ")"))))
    )
)
