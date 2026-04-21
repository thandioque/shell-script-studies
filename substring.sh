#!/usr/bin/env bash

# check_substring.sh - Verifies if the first string is contained within the second one
# Maintainer: Thandiwe Assis

script_name=$(basename "$0")

if [[ $# -ne 2 ]]; then
    echo "Usage: $script_name <substring> <string>"
    echo "Example: ./$script_name 'street' 'mainstreet'"
    exit 1
fi

substring="$1"
target_string="$2"

# Pattern Matching Logic:
# I use Bash built-in globbing ([[ $a == *$b* ]]) instead of an external 
# command like 'grep' to avoid spawning unnecessary system processes. 
# The ',,' operator converts strings to lowercase for a case-insensitive search.
if [[ "${target_string,,}" == *"${substring,,}"* ]]; then
    echo "Status: Match found! '$substring' is part of '$target_string'."
else
    echo "Status: No match. '$substring' was not found inside '$target_string'."
    exit 1
fi