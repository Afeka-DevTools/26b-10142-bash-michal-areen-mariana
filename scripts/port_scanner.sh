#!/bin/bash
if ! command -v nmap &> /dev/null
then
    echo "nmap is not installed. Attempting to install..."
    sudo apt-get update
    sudo apt-get install -y nmap
else
    echo "nmap is already installed."
fi
echo "Please enter the IP address to scan:"
read ip_address
echo "Scanning ports for $ip_address..."
nmap -F "$ip_address"