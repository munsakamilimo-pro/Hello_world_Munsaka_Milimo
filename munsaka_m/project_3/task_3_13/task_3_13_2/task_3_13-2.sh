#!/bin/bash

# Replace spaces with tabs in sequences.txt
# Converts space-separated headers and sequences to tab-separated format

# Method 1: Using sed with standard separator
sed -i 's/ /\t/g' sequences.txt

# Alternative Method 2: Using sed with different separator for readability
# sed -i 's| |\t|g' sequences.txt

echo "Spaces have been replaced with tabs in sequences.txt"
