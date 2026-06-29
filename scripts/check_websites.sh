#!/bin/bash
INPUT_FILE="scripts/websites.txt"
LOG_FILE="scripts/websites_status.txt"
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: The file $INPUT_FILE was not found!"
    exit 1
fi
echo "Checking websites... saving results to $LOG_FILE"
echo "--- Website Status ($(date)) ---" > "$LOG_FILE"
while IFS= read -r url
do
    if [ -z "$url" ]; then
        continue
    fi
    status_code=$(curl -o /dev/null -s -w "%{http_code}" "$url")

    if [ "$status_code" -eq 200 ]; then
        echo "✅ $url is UP (Status: $status_code)" | tee -a "$LOG_FILE"
    else
        echo "❌ $url is DOWN (Status: $status_code)" | tee -a "$LOG_FILE"
    fi
done < "$INPUT_FILE"
echo "Done!"