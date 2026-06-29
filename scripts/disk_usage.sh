#!/bin/bash

FOLDER=$1

if [ -z "$FOLDER" ]; then
    FOLDER="."
fi

if [ ! -d "$FOLDER" ]; then
    echo "Error: Folder $FOLDER does not exist."
    exit 1
fi

echo "Scanning disk usage for: $FOLDER"
echo "---------------------------------"
du -h --max-depth=1 "$FOLDER"