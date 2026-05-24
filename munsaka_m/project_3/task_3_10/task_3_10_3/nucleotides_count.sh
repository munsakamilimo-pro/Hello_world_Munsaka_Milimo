#!/bin/bash

# Nucleotides Count Script
# Analyzes all *.fasta files, skips empty files, counts A, T, G, C nucleotides

echo "========================================="
echo "     NUCLEOTIDES COUNTER FOR FASTA FILES"
echo "========================================="
echo ""

# Print table header
printf "%-20s %8s %8s %8s %8s\n" "File" "A" "T" "G" "C"
echo "------------------------------------------------------------------------"

# Iterate through all *.fasta files
for file in *.fasta; do
    # Check if no fasta files exist
    if [ ! -f "$file" ]; then
        echo "No FASTA files found in current directory."
        exit 1
    fi
    
    # Skip files of 0 bytes (empty files)
    if [ ! -s "$file" ]; then
        echo "Skipping empty file: $file"
        continue
    fi
    
    # Initialize counters
    count_A=0
    count_T=0
    count_G=0
    count_C=0
    
    # Count nucleotides in the file (excluding header lines starting with '>')
    while IFS= read -r line; do
        # Skip header lines
        if [[ "$line" =~ ^\> ]]; then
            continue
        fi
        
        # Convert to uppercase for consistency
        line=$(echo "$line" | tr '[:lower:]' '[:upper:]')
        
        # Count each nucleotide in the line
        # Using grep -o to find each character and wc -l to count
        count_A=$((count_A + $(echo "$line" | grep -o 'A' | wc -l)))
        count_T=$((count_T + $(echo "$line" | grep -o 'T' | wc -l)))
        count_G=$((count_G + $(echo "$line" | grep -o 'G' | wc -l)))
        count_C=$((count_C + $(echo "$line" | grep -o 'C' | wc -l)))
    done < "$file"
    
    # Print results for this file
    printf "%-20s %8d %8d %8d %8d\n" "$file" "$count_A" "$count_T" "$count_G" "$count_C"
done

echo "------------------------------------------------------------------------"
echo "Analysis complete!"
