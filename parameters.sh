#!/usr/bin/env bash

# parameters - Lists and counts all arguments received via command line
# Maintainer: Thandiwe Assis

if [[ $# -eq 0 ]]; then
    echo "Usage: $(basename "$0") <arg1> [arg2] [arg3] ..."
    exit 1
fi

count=1

# I use a 'while' loop combined with 'shift' for dynamic argument processing.
while [[ $# -gt 0 ]]; do
    echo "Parameter $count: $1"
    
    # 'shift' moves all arguments one position to the left.
    # $2 becomes $1, $3 becomes $2, and so on.
    shift
    
    ((count++))
done

