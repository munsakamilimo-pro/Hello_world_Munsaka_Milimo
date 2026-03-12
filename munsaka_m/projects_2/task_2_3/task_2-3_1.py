product = input("Тип продукта (йогурт/кефир): ")
batch_id = input("Номер партии: ")

with open("production_history.txt", "w", encoding="utf-8") as report:

    report.write("ОТЧЕТ ПРОИЗВОДСТВА\n")
    report.write(f"Продукт: {product}\n")
    report.write(f"Партия №: {batch_id}\n")

print("✅ Файл 'production_history.txt' успешно создан!")