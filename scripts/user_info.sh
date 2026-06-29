#!/bin/bash

echo "========================================"
echo "        CURRENT USER INFORMATION        "
echo "========================================"

USER_NAME=$(whoami)
echo "Username: $USER_NAME"

echo "Home Directory: $HOME"

USER_GROUPS=$(id -Gn)
echo "Groups: $USER_GROUPS"

echo "Current Shell: $SHELL"

echo "========================================"