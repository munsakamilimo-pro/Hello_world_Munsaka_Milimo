файлы = ["seq1", "seq2.fasta", "seq3.fa", "seq4"]

for имя in файлы:
    if имя.endswith(".fasta") or имя.endswith(".fa"):
        print(f"{имя} уже имеет расширение")
    else:
        новое_имя = имя + ".fasta"
        print(новое_имя)