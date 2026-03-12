# task_2-6_1.py
# Ejercicio 2.6.1 - Clasificación de pH

# Pedir el valor de pH
pH = float(input("Введите значение pH: "))


if pH < 7:
    print("Кислая среда")
elif pH == 7:
    print("Нейтральная среда")
else:
    print("Щелочная среда")