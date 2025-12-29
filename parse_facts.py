def process_ingredients(input_file, output_file):
        with open(input_file, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        clips_facts = []
        for line in lines:
            line = line.strip()
        
            if not line or line.startswith('#'):
                continue
            
            if ';' in line:
                parts = line.split(';')
                name = parts[1].strip()
    
                clips_facts.append(f'    (ingredient (name "{name}"))')

        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(";\n; Автоматически сгенерированные ингредиенты\n;\n")
            f.write("\n".join(clips_facts))
            
        print(f"Результат сохранен в: {output_file}")

process_ingredients('facts.txt', 'f.clp')