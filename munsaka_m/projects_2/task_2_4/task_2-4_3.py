capsules = int(input("Введите общее количество произведенных капсул: "))
pack_size = int(input("Введите количество капсул в одной упаковке: "))

full_packs = capsules // pack_size
leftover = capsules % pack_size

print("\n Отчет фасованного цеха ")
print(f"Полных упаковок: {full_packs}")
print(f"Остаток капсул: {leftover}")