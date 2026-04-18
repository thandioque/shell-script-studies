#!/usr/bin/env bash

# file_validator.sh - Script to check if a path is a file or a directory
# Maintainer: Thandiwe Assis
# Version: 1.0.0

# Ask for user input
# Using printf for a cleaner prompt without a newline
printf "Enter the file path or name: "
read -r target_path

# Check if the input is empty to avoid false positives
if [[ -z "$target_path" ]]; then
    echo "Error: No input provided. Please enter a valid path."
    exit 1
fi

# Validation Logic using an if/else block:
# -d: checks if it's a directory
# -f: checks if it's a regular file
# -e: checks if the path exists
# ! : inverts the condition (logical NOT)

if [[ -d "$target_path" ]]; then
    echo "Success: '$target_path' is a directory."

elif [[ -f "$target_path" ]]; then
    echo "Success: '$target_path' is a regular file."

elif [[ ! -e "$target_path" ]]; then
    echo "Notice: The path '$target_path' does not exist."
    
# Catch-all for unexpected scenarios (Example: special devices, sockets, or permission issues)
else
    echo "Critical: An unexpected error occurred while accessing '$target_path'."
    exit 1
fi