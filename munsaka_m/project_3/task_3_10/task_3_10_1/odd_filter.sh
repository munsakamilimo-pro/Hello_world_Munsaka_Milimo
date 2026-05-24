#!/bin/bash

# Odd Filter Script
# Iterates over numbers 1 to 20, prints odd numbers, stops at 15

echo "========================================="
echo "           ODD NUMBER FILTER"
echo "========================================="
echo "Printing odd numbers from 1 to 20 (stopping at 15):"
echo ""

# Loop through numbers 1 to 20
for i in {1..20}; do
    # Check if we've reached 15, then break
    if [ $i -eq 15 ]; then
        echo "Encountered number 15. Stopping..."
        break
    fi
    
    # Check if the number is even, then skip using continue
    if [ $((i % 2)) -eq 0 ]; then
        continue
    fi
    
    # Print odd numbers
    echo "Odd number: $i"
done

echo ""
echo "Script finished."
