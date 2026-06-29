#!/bin/bash
echo "Please enter the path of the directory to backup:"
read -r SOURCE_DIR
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory $SOURCE_DIR does not exist!"
    exit 1
fi

BACKUP_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
echo "Starting backup of $SOURCE_DIR..."
tar -czf "$BACKUP_NAME" -C "$SOURCE_DIR" .
echo "Backup completed successfully! Saved as: $BACKUP_NAME"