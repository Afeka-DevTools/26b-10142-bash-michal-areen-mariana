#!/bin/bash

PROCESS_NAME=$1

if [ -z "$PROCESS_NAME" ]; then
    echo "Error: Please provide a process name to kill."
    exit 1
fi

echo "Attempting to terminate all processes named: $PROCESS_NAME"

if pkill "$PROCESS_NAME"; then
    echo "Success: All processes named '$PROCESS_NAME' have been killed."
else
    echo "Notice: No active processes found with the name '$PROCESS_NAME'."
fi