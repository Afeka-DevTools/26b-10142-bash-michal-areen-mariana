#!/bin/bash
echo "Please enter the folder path:"
read folder_path
echo "Please enter the number of days (X):"
read days
if [ -d "$folder_path" ]; then
    find "$folder_path" -type f -mtime +"$days" -delete
    echo "Old files deleted successfully from $folder_path!"
else
    echo "Error: Folder not found!"
fi