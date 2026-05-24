#!/bin/bash

# Students Statistics Script
# Calculates sum, average, and maximum score from students.txt

STUDENT_FILE="students.txt"

echo "========================================="
echo "        STUDENT STATISTICS CALCULATOR"
echo "========================================="
echo ""

# Check if students.txt exists
if [ ! -f "$STUDENT_FILE" ]; then
    echo "ERROR: $STUDENT_FILE not found!"
    echo "Creating $STUDENT_FILE with sample data..."
    cat > "$STUDENT_FILE" << 'EOF'
Ivan 78
Maria 92
Oleg 67
Anna 85
EOF
    echo "File created successfully."
    echo ""
fi

# Display the data for reference
echo "Student Data:"
echo "-----------------------------------"
cat "$STUDENT_FILE"
echo "-----------------------------------"
echo ""

# Task 1: Find the sum of all ratings
echo "1. Sum of all ratings:"
echo "-----------------------------------"
sum=$(awk '{sum+=$2} END {print sum}' "$STUDENT_FILE")
echo "   Total sum: $sum"
# Alternative: cut -d' ' -f2 students.txt | paste -sd+ | bc
echo ""

# Task 2: Find the average rating
echo "2. Average rating:"
echo "-----------------------------------"
average=$(awk '{sum+=$2} END {printf "%.2f", sum/NR}' "$STUDENT_FILE")
echo "   Average score: $average"
# Alternative: awk '{sum+=$2} END {print sum/NR}' students.txt
echo ""

# Task 3: Find the maximum score
echo "3. Maximum score:"
echo "-----------------------------------"
max=$(awk 'NR==1{max=$2} $2>max{max=$2} END {print max}' "$STUDENT_FILE")
echo "   Maximum score: $max"
# Alternative: cut -d' ' -f2 students.txt | sort -n | tail -1
# Alternative: awk '{print $2}' students.txt | sort -n | tail -1
echo ""

# Bonus: Find the minimum score and student with highest score
echo "4. Additional Statistics (Bonus):"
echo "-----------------------------------"
min=$(awk 'NR==1{min=$2} $2<min{min=$2} END {print min}' "$STUDENT_FILE")
echo "   Minimum score: $min"

# Find student(s) with maximum score
top_student=$(awk -v max="$max" '$2 == max {print $1}' "$STUDENT_FILE")
echo "   Student(s) with highest score ($max): $top_student"

# Calculate number of students
count=$(wc -l < "$STUDENT_FILE")
echo "   Total students: $count"

echo ""
echo "========================================="
echo "           STATISTICS COMPLETE"
echo "========================================="
