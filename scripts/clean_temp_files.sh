#!/bin/bash
TARGET_DIR="."
echo "Starting cleanup of temporary files (.pyc, node_modules, .class)..."
find "$TARGET_DIR" -type f -name "*.pyc" -delete
echo "Cleaned .pyc files."
find "$TARGET_DIR" -type d -name "node_modules" -exec rm -rf {} +
echo "Cleaned node_modules folders."
find "$TARGET_DIR" -type f -name "*.class" -delete
echo "Cleaned .class files."

echo "Cleanup complete!"