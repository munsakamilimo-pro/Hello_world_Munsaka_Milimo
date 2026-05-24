#!/bin/bash

# System Disk Usage Analyzer
# Analyzes df -h output and warns about filesystems above 90% usage

echo "========================================="
echo "     SYSTEM DISK USAGE ANALYZER"
echo "========================================="
echo ""

# Run df -h and analyze with awk
df -h | awk '
# Skip the header line
NR > 1 {
    # Extract filesystem (column 1) and usage percentage (column 5)
    filesystem = $1
    usage = $5
    
    # Remove the % sign from usage
    gsub(/%/, "", usage)
    
    # Print filesystem and usage percentage
    printf "%-20s %s\n", filesystem, $5
    
    # Check if usage exceeds 90%
    if (usage > 90) {
        printf "    WARNING: %s is at %s%% usage!\n", filesystem, $5
    }
}
'

echo ""
echo "========================================="
echo "           ANALYSIS COMPLETE"
echo "========================================="
