#!/usr/bin/env bash

# countdown.sh - Decreases a given number to zero in a single line
# Maintainer: Thandiwe Assis

if [[ $# -ne 1 ]]; then
    echo "Usage: ./$(basename $0) <number>"
    exit 1
fi

# Validation: Ensure the input is a positive number
if [[ ! "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: Please provide a positive integer."
    exit 1
fi

# Loop Anatomy: for (( initialization; condition; decrement ))
# 1. Initialization (i=$1): Starts the counter at the user's input.
# 2. Condition (i>=0): Keeps running as long as 'i' is zero or higher.
# 3. Decrement (i--): Reduces 'i' by 1 at the end of each iteration.
for (( i=$1; i>=0; i-- )); do
    # Formatting Logic:
    # If it's the last number (0), we print it with a newline to reset the terminal.
    # Otherwise, we use 'echo -n' to keep the countdown on the same line.
    if [[ $i -eq 0 ]]; then
        echo "$i"
    else
        echo -n "$i "
    fi
done