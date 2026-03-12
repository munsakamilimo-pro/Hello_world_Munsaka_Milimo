dna = input("Введите последовательность ДНК: ")

dna = dna.upper()

a = dna.count("A")
t = dna.count("T")
m = dna.count("M")
total = len(dna)

print("\n РЕЗУЛЬТАТЫ ")
print(f"A: {a}")
print(f"T: {t}")
print(f"M: {m}")
print(f"Всего: {total} нуклеотидов")