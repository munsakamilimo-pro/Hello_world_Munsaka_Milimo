#!/bin/bash

# Students Data Processing Script
# Displays student names, grades, and line numbers with names

STUDENT_FILE="students.txt"

echo "========================================="
echo "        STUDENT DATA PROCESSING"
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

# 1. Display only the names of the students
echo "1. Student Names Only:"
echo "-----------------------------------"
cut -d' ' -f1 "$STUDENT_FILE"
# Alternative: awk '{print $1}' students.txt
# Alternative: while read name grade; do echo $name; done < students.txt
echo ""

# 2. Display only the grades
echo "2. Grades Only:"
echo "-----------------------------------"
cut -d' ' -f2 "$STUDENT_FILE"
# Alternative: awk '{print $2}' students.txt
# Alternative: while read name grade; do echo $grade; done < students.txt
echo ""

# 3. Display the line number and name
echo "3. Line Numbers with Student Names:"
echo "-----------------------------------"
awk '{print NR, $1}' "$STUDENT_FILE"
# Alternative: cat -n students.txt | awk '{print $1, $2}'
# Alternative: nl -w2 -s' ' students.txt | cut -d' ' -f1,2
echo ""

echo "========================================="
echo "           PROCESSING COMPLETE"
echo "========================================="
