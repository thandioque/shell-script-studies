#!/usr/bin/env bash

# half_calculator.sh - Calculates the half of a given number using arithmetic expansion -> $(())
# Maintainer: Thandiwe Assis

# Prompt the user for input
# -p flag in 'read' allows putting the message directly in the command
read -p "Input a number: " number 

# Validation: Check if empty OR if it's not a number
# We use a regex check [[ ! $number =~ ^[0-9]+$ ]] to ensure only digits are accepted
if [[ -z "$number" || ! "$number" =~ ^[0-9]+$ ]]; then
    printf "Error: Please input a valid positive integer.\n"
    exit 1
fi

half_value=$(( number / 2 ))

# Using %d (decimal) instead of %s (string) to ensure the variable is treated as an integer. 
# This provides implicit type validation and allows for specific numeric formatting or padding if needed in the future.
printf "The half of %d is: %d\n" "$number" "$half_value"