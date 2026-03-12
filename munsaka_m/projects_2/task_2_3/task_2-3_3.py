print("РЕЦЕПТУРНЫЙ СПРАВОЧНИК")
nazvanie = input("Название питательной среды: ")
agar = input("Концентрация агара (%): ")
temperatura = input("Температура стерилизации (°C): ")

with open("recipe 2.txt", "w", encoding="utf-8") as file:
    file.write(f"{nazvanie.upper()}\n")           # Заголовок большими буквами
    file.write(f"  • Концентрация агара: {agar}%\n")
    file.write(f"  • Температура стерилизации: {temperatura}°C\n")

print("\n✅ Файл 'recipe.txt' успешно сформирован!")