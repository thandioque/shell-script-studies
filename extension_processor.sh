#!/usr/bin/env bash

# extension_processor.sh - Iterates through a list of file extensions
# Maintainer: Thandiwe Assis 
extensions=("jpg" "png" "txt")

for extension in "${extensions[@]}"; do
    printf "Processing files of type: .%s\n" "$extension"
done