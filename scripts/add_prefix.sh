#!/bin/bash

FOLDER=$1
PREFIX=$2

if [ -z "$FOLDER" ] || [ -z "$PREFIX" ]; then
    echo "Error: Missing folder path or prefix."
    exit 1
fi

if [ ! -d "$FOLDER" ]; then
    echo "Error: Folder $FOLDER does not exist."
    exit 1
fi

for FILE in "$FOLDER"/*.txt; do
    if [ -f "$FILE" ]; then
        FILENAME=$(basename "$FILE")
        NEW_FILE="$FOLDER/$PREFIX$FILENAME"
        mv "$FILE" "$NEW_FILE"
    fi
done

echo "Done!"