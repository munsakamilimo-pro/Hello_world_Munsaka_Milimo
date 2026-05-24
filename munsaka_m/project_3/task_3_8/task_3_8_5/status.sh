#!/bin/bash

# Status Script - System Information Reporter
# Outputs account name, current time, working directory, and argument count

# Get the name of the current account
current_account=$(whoami)

# Get current time accurate to seconds
current_time=$(date "+%H:%M:%S")

# Get full path to the working directory
working_directory=$(pwd)

# Get total number of arguments passed at startup
argument_count=$#

# Output all information
echo "========================================="
echo "           SYSTEM STATUS REPORT"
echo "========================================="
echo "Current account: $current_account"
echo "Current time: $current_time"
echo "Working directory: $working_directory"
echo "Number of arguments passed: $argument_count"
echo "========================================="
