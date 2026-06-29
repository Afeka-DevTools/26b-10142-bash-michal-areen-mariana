#!/bin/bash

while true; do
    PASSWORD=$(LC_ALL=C tr -dc 'A-Za-z0-9!@#$%^&*()_+' < /dev/urandom | head -c 10)
    
    echo "$PASSWORD" | grep -q '[A-Z]' && \
    echo "$PASSWORD" | grep -q '[a-z]' && \
    echo "$PASSWORD" | grep -q '[0-9]' && \
    echo "$PASSWORD" | grep -q '[!@#$%^&*()_+]' && \
    { echo "Generated Secure Password: $PASSWORD"; break; }
done