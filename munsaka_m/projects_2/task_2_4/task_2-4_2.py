weight = float(input("Введите вес (кг): "))
height = float(input("Введите рост (м): "))

bmi = weight / (height ** 2)

print("\n ОТЧЕТ ")
print(f"Рост:\t{height} м")
print(f"Вес:\t{weight} кг")
print(f"ИМТ:\t{bmi:.2f}")