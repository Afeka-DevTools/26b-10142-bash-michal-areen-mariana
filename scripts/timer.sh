#!/bin/bash

INPUT=$1

if [ -z "$INPUT" ]; then
    echo "Error: Please provide time in MM:SS format."
    exit 1
fi

MINUTES=$(echo "$INPUT" | cut -d':' -f1)
SECONDS=$(echo "$INPUT" | cut -d':' -f2)

TOTAL_SECONDS=$((MINUTES * 60 + SECONDS))

echo "Timer started for $INPUT"
echo "-------------------------"

while [ $TOTAL_SECONDS -gt 0 ]; do
    M=$((TOTAL_SECONDS / 60))
    S=$((TOTAL_SECONDS % 60))
    
    printf "Time remaining: %02d:%02d\r" $M $S
    
    sleep 1
    TOTAL_SECONDS=$((TOTAL_SECONDS - 1))
done

echo -e "\nTime's up!"