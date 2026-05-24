#!/bin/bash

# Find .conf Files Script
# Lists all files in /etc directory with .conf extension (case-insensitive)

echo "========================================="
echo "     FINDING .CONF FILES IN /etc"
echo "========================================="
echo "Searching for files with .conf extension (case-insensitive)"
echo ""

# Method 1: Using ls -l and grep with -i flag (case-insensitive)
echo "Files found:"
echo "-----------------------------------"
ls -l /etc | grep -i '\.conf$'

# Check if any files were found
if [ $? -eq 0 ]; then
    echo "-----------------------------------"
    echo "SUCCESS: Listed .conf files from /etc"
else
    echo "No .conf files found in /etc"
fi

echo "========================================="
