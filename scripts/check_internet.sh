#!/bin/bash
if ping -c 1 google.com &> /dev/null
then
    echo "$(date): Internet is working" >> internet_log.txt
else
    echo "$(date): Internet is NOT working" >> internet_log.txt
fi