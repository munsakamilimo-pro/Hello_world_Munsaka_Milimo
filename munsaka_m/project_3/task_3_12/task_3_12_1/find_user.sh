#!/bin/bash

# Find User in /etc/passwd Script
# Uses grep to locate the current user's entry in /etc/passwd

# Method 1: Using $USER variable with grep
echo "========================================="
echo "     FINDING CURRENT USER IN /etc/passwd"
echo "========================================="
echo "Current username: $USER"
echo ""

# Search for the current user in /etc/passwd
echo "Searching for user entry:"
echo "-----------------------------------"
grep "^$USER:" /etc/passwd

# Check if the user was found
if [ $? -eq 0 ]; then
    echo "-----------------------------------"
    echo "SUCCESS: User '$USER' found in /etc/passwd"
else
    echo "-----------------------------------"
    echo "ERROR: User '$USER' not found in /etc/passwd"
    exit 1
fi

echo "========================================="
