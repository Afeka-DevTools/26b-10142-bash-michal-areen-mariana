#!/bin/bash
echo "Please enter the path of the directory to analyze:"
read -r TARGET_DIR

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory $TARGET_DIR does not exist!"
    exit 1
fi

echo "Analyzing files in $TARGET_DIR..."
echo "--------------------------------"

for FILE in "$TARGET_DIR"/*
do
    if [ -f "$FILE" ]; then
        echo "File: $(basename "$FILE")"
        wc "$FILE"
        echo "--------------------------------"
    fi
done