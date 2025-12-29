import random
import os

def generate_clips_from_file(input_filename, output_filename):
    rules = []
    with open(input_filename, 'r', encoding='utf-8') as infile:
        for line in infile:
            line = line.strip()
            if not line or line.startswith('#'):
                continue
                
            parts = line.split(';')
            if len(parts) < 4:
                continue
            
            rule_id = parts[0]
            recipe_content = parts[3] 
            
            if "->" not in recipe_content:
                continue
            
            left_side, right_side = recipe_content.split("->")
            ingredients = [i.strip() for i in left_side.split("+")]
            result_product = right_side.strip()
            
            patterns = []
            weights_args = []
            
            for i, name in enumerate(ingredients, 1):
                w = random.randint(1, 10)
                patterns.append(f'    (ingredient (name "{name}") (certainty ?c{i}&:(> ?c{i} 0.1)))')
                weights_args.append(f"?c{i} {w}")
            
            coeff = round(random.uniform(0.1, 1.0), 2)
            
            rule_text = (
                f"(defrule rule-{rule_id}\n"
                f"    (declare (salience 10))\n"
                f"{chr(10).join(patterns)}\n"
                f"    ?f <- (ingredient (name \"{result_product}\") (certainty ?cur-c))\n"
                f"    =>\n"
                f"    (bind ?res (* (weighted-avg {' '.join(weights_args)}) {coeff}))\n"
                f"    (if (> ?res ?cur-c) then\n"
                f"        (modify ?f (certainty (max-certainty ?cur-c ?res)) (type result))\n"
                f"        (assert (sendmessage (value (str-cat \"ПРОЦЕСС: {recipe_content} (CF=\" ?res \")\"))))\n"
                f"    )\n"
                f")\n"
            )
            rules.append(rule_text)

    with open(output_filename, 'w', encoding='utf-8') as outfile:
        outfile.write(";\n; АВТОМАТИЧЕСКИ СГЕНЕРИРОВАННЫЕ ПРАВИЛА\n;\n\n")
        outfile.write("\n".join(rules))
    print(f"Результат в файле: {output_filename}")

generate_clips_from_file('rules.txt', 'r.clp')