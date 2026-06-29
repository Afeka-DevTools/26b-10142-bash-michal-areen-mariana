#!/bin/bash
echo "Please enter the city name (e.g., London, Tokyo, Paris):"
read -r CITY

if [ -z "$CITY" ]; then
    echo "Error: City name cannot be empty!"
    exit 1
fi

echo "Fetching current weather for $CITY..."
echo "----------------------------------------"

curl -s "wttr.in/${CITY}?m"
echo "----------------------------------------"