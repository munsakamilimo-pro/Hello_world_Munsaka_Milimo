sreda = input("Введите название питательной среды: ")
agar = input("Введите концентрацию агара (%): ")
temperatura = input("Введите температуру стерилизации (°C): ")

with open("recipe.txt", "w", encoding="utf-8") as file:
    file.write(f"Название среды: {sreda}\n")
    file.write(f"Концентрация агара: {agar}%\n")
    file.write(f"Температура стерилизации: {temperatura}°C\n")

print("Файл 'recipe.txt' успешно сформирован!")