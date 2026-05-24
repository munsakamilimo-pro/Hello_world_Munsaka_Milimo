#!/bin/bash

# Files Roundtrip Script
# Creates 10 text files (test1.txt to test10.txt) using a for loop
# Then deletes them in reverse order (test10.txt to test1.txt) using a while loop

echo "========================================="
echo "        FILES ROUNDTRIP SCRIPT"
echo "========================================="
echo ""

# PART 1: Create files using a for loop
echo "Phase 1: Creating files..."
echo "-----------------------------------"

for i in {1..10}; do
    filename="test${i}.txt"
    touch "$filename"
    echo "Created: $filename"
done

echo ""
echo "Files created successfully!"
echo ""

# List created files to verify
echo "Current files in directory:"
ls -1 test*.txt 2>/dev/null
echo ""

# PART 2: Delete files in reverse order using a while loop
echo "Phase 2: Deleting files in reverse order..."
echo "-----------------------------------"

counter=10
while [ $counter -ge 1 ]; do
    filename="test${counter}.txt"
    
    # Check if file exists before deleting
    if [ -f "$filename" ]; then
        rm "$filename"
        echo "Deleted: $filename"
    else
        echo "Warning: $filename not found"
    fi
    
    # Decrement counter
    ((counter--))
done

echo ""
echo "All files deleted successfully!"
echo ""

# Verify deletion
echo "Verifying deletion:"
remaining_files=$(ls test*.txt 2>/dev/null | wc -l)
if [ $remaining_files -eq 0 ]; then
    echo "No test files remain. Cleanup complete!"
else
    echo "Warning: $remaining_files test files still exist"
fi

echo "========================================="
echo "          ROUNDTRIP COMPLETE"
echo "========================================="
