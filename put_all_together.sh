#!/usr/bin/env bash

# put all together - Concatenates all command-line arguments into a single string.   
# Maintainer: Thandiwe Assis 

if [[ $# -eq 0 ]]; then
    echo "Usage: $(basename "$0") <arg1> <arg2> <arg3> ..."
    exit 1
fi

# Use printf "%s" "$@" to iterate through each argument and print them 
# without any separators. While using 'echo $* | tr -d " "' would achieve 
# the same result, this is the best approach because it is more performant 
# (it avoids spawning an external 'tr' process) and handles special 
# characters or arguments starting with hyphens more reliably.
printf "%s" "$@"

# Adds a single newline at the end to keep the terminal clean
echo ""