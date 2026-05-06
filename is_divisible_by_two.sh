#!/usr/bin/env bash

# is_divisible_by_two.sh - Checks if numbers from 1 to 10 were divisible by 2
# Maintainer: Thandiwe Assis

# Using {1..10} is a native Bash expansion, avoiding an external 'seq' call.
for i in {1..10}; do
    # Using (( ... )) for arithmetic evaluation. 
    # It returns 0 (true) if the condition is met.
    if (( i % 2 == 0 )); then
        echo "Number $i: It is even (divisible by two)"
    else
        echo "Number $i: It is odd (not divisible by two)"
    fi
done

echo "Goodbye, $USER !"