#!/bin/bash

# Check Root Script
# Function to verify if script is running as superuser (UID 0)

# Define the check_root function
check_root() {
    # Check if EUID is not 0 (not root/superuser)
    if [ "$EUID" -ne 0 ]; then
        echo "ERROR: This script must be run as superuser (root)."
        echo "Current EUID: $EUID"
        echo "Please run with: sudo $0"
        exit 1
    else
        echo "SUCCESS: Script is running as superuser."
        echo "Current EUID: $EUID"
    fi
}

# Call the function
check_root

# Rest of your script would go here
echo ""
echo "Script continuing with root privileges..."
echo "You can now perform administrative tasks."
