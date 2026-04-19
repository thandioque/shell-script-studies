#!/usr/bin/env bash

# file_validator.sh - Script to check if a path is a file or a directory
# Maintainer: Thandiwe Assis

# Ask for user input
# Using printf for a cleaner prompt without a newline
printf "Enter the file path or name: "
read -r TARGET_PATH

# Check if the input is empty to avoid false positives
if [[ -z "$TARGET_PATH" ]]; then
    echo "Error: No input provided. Please enter a valid path."
    exit 1
fi

# Validation Logic using an if/else block:
# -d: checks if it's a directory
# -f: checks if it's a regular file
# -e: checks if the path exists
# ! : inverts the condition (logical NOT)

if [[ -d "$TARGET_PATH" ]]; then
    echo "Success: '$TARGET_PATH' is a directory."

elif [[ -f "$TARGET_PATH" ]]; then
    echo "Success: '$TARGET_PATH' is a regular file."

elif [[ ! -e "$TARGET_PATH" ]]; then
    echo "Notice: The path '$TARGET_PATH' does not exist."
    
# Catch-all for unexpected scenarios (Example: special devices, sockets, or permission issues)
else
    echo "Critical: An unexpected error occurred while accessing '$TARGET_PATH'."
    exit 1
fi