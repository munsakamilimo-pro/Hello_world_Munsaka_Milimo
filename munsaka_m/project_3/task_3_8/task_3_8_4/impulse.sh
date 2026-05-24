#!/bin/bash

# Impulse Script - Gene Expression Reporter
# Takes gene name and expression level as arguments

# Check if both arguments are provided
if [ $# -lt 2 ]; then
    echo "Error: Insufficient input data"
    echo "Usage: ./impulse.sh <gene_name> <expression_level>"
    echo "Example: ./impulse.sh BRCA1 150"
    exit 1
fi

# Assign arguments to variables
gene_name="$1"
expression_level="$2"

# Check if the second argument is an integer
if ! [[ "$expression_level" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Expression level must be an integer"
    echo "Usage: ./impulse.sh <gene_name> <expression_level>"
    exit 1
fi

# Output the result
echo "The expression of the gene [$gene_name] is [$expression_level] units"
