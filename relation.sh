#!/usr/bin/env bash

# compare_numbers.sh - Evaluates the relationship between two integers
# Maintainer: Thandiwe Assis

# $0 stores the script name and uses the basename to display only the filename, not the full path.
script_name=$(basename "$0")

echo "Running script: $script_name"
echo "Total arguments received: $#"
echo "Values provided: $*"

# Validation: Ensure exactly two arguments are provided
if [[ $# -ne 2 ]]; then
    echo "Usage: ./$script_name <number1> <number2>"
    exit 1
fi

# Numerical Comparison
# Using (( )) is the standard for integer arithmetic
if (( $1 < $2 )); then
    echo "Result: $1 is less than $2"

elif (( $1 > $2 )); then
    echo "Result: $1 is greater than $2"

elif (( $1 == $2 )); then
    echo "Result: $1 is equal to $2"
else
    echo "Error: Unexpected input. Please ensure both arguments are integers."
    exit 1
fi