#!/bin/bash
echo "Please enter the path of the directory to analyze:"
read -r TARGET_DIR

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory $TARGET_DIR does not exist!"
    exit 1
fi

file_count=0
dir_count=0
link_count=0

for FILE in "$TARGET_DIR"/*
do
    # קודם כל בודקים אם זה לינק, כדי שלא ייחשב בטעות כקובץ/תיקייה
    if [ -L "$FILE" ]; then
        ((link_count++))
    elif [ -f "$FILE" ]; then
        ((file_count++))
    elif [ -d "$FILE" ]; then
        ((dir_count++))
    fi
done

# הדפסת הסיכום החגיגי למשתמש!
echo "----------------------------------------"
echo "Analysis Summary for: $TARGET_DIR"
echo "Files: $file_count"
echo "Directories: $dir_count"
echo "Links: $link_count"
echo "----------------------------------------"