#!/usr/bin/env bash

# check_dir.sh - Validates if a directory exists on the system
# Maintainer: Thandiwe Assis

if [[ -z "$1" ]]; then
    printf "Usage: %s <directory_path>\n" "$(basename "$0")"
    exit 1
fi

if [[ -d "$1" ]]; then
    printf "Success: The directory '%s' exists.\n" "$1"
else
    printf "Error: '%s' is not a valid directory or is inaccessible.\n" "$1"
    exit 1
fi