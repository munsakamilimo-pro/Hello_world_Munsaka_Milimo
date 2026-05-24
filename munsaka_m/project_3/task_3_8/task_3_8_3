#!/bin/bash

# BMI Calculator Script
# Calculates Body Mass Index from weight (kg) and height (m)

echo "==================================="
echo "     BMI (Body Mass Index) Analyzer"
echo "==================================="
echo ""

# Prompt for weight
read -p "Enter your weight (in kg): " weight

# Prompt for height
read -p "Enter your height (in meters): " height

# Check if inputs are valid numbers
if ! [[ "$weight" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$height" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values for weight and height."
    exit 1
fi

# Check if height is greater than zero (avoid division by zero)
if (( $(echo "$height <= 0" | bc -l) )); then
    echo "Error: Height must be greater than zero."
    exit 1
fi

# Calculate BMI as integer
# Formula: BMI = weight / (height * height)
bmi=$(echo "scale=0; $weight / ($height * $height)" | bc -l)

# Output the result
echo ""
echo "-----------------------------------"
echo "Your BMI is: $bmi"
echo "-----------------------------------"

# Optional: Display BMI category
if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "Category: Underweight"
elif (( $(echo "$bmi < 25" | bc -l) )); then
    echo "Category: Normal weight"
elif (( $(echo "$bmi < 30" | bc -l) )); then
    echo "Category: Overweight"
else
    echo "Category: Obese"
fi

echo ""
