files = ["seq1", "seq2", "seq3", "seq4"]

fecha = "2026-02-23"

for name in files:
    new_name = name + "_" + fecha + ".fasta"
    print(new_name)