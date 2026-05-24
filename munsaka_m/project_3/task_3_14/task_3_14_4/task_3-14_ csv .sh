#!/bin/bash

# CSV Data Processing Script
# Displays product names, filters products > 20, calculates total cost

CSV_FILE="data.csv"

echo "========================================="
echo "        CSV PRODUCT ANALYZER"
echo "========================================="
echo ""

# Check if data.csv exists
if [ ! -f "$CSV_FILE" ]; then
    echo "ERROR: $CSV_FILE not found!"
    echo "Creating $CSV_FILE with sample data..."
    cat > "$CSV_FILE" << 'EOF'
1, Mouse, 23
2,Keyboard,15
3, Monitor, 120
4, USB, 5
EOF
    echo "File created successfully."
    echo ""
fi

# Display the original data for reference
echo "Original Product Data:"
echo "-----------------------------------"
cat "$CSV_FILE"
echo "-----------------------------------"
echo ""

# Task 1: Display product names
echo "1. Product Names:"
echo "-----------------------------------"
cut -d',' -f2 "$CSV_FILE" | sed 's/^ //'  # Remove leading spaces if any
# Alternative: awk -F',' '{print $2}' data.csv | sed 's/^ //'
# Alternative: while IFS=',' read id name price; do echo "$name"; done < data.csv
echo ""

# Task 2: Display products that cost more than 20
echo "2. Products costing more than 20:"
echo "-----------------------------------"
awk -F',' '$3 > 20 {print "   " $2 " - $" $3}' "$CSV_FILE" | sed 's/^ //'
# Alternative: awk -F',' '$3 > 20 {printf "   %s - $%d\n", $2, $3}' data.csv
# Alternative: while IFS=',' read id name price; do if [ $price -gt 20 ]; then echo "   $name - $$price"; fi; done < data.csv
echo ""

# Task 3: Calculate the total cost
echo "3. Total Cost of All Products:"
echo "-----------------------------------"
total=$(awk -F',' '{sum+=$3} END {print sum}' "$CSV_FILE")
echo "   Total: $$total"
# Alternative: cut -d',' -f3 data.csv | paste -sd+ | bc
# Alternative: while IFS=',' read id name price; do ((total+=price)); done < data.csv; echo "Total: $$total"
echo ""

echo "========================================="
echo "           PROCESSING COMPLETE"
echo "========================================="
