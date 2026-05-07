#!/usr/bin/env bash

# interactive_loop.sh - Loop until the specific word 'exit' is typed
# Maintainer: Thandiwe Assis

printf "Welcome. Enter any value or type 'exit' to quit.\n"

# In loops like this, we usually put the prompt inside or use 'read -p'
while true; do
    read -p "Input a word: " word

    if [[ -z "$word" || ! "$word" =~ ^[a-zA-Z]+$ ]]; then
        printf "Error: '%s' is not a valid string. Try again.\n" "$word"
        continue # Jumps back to the start of the while loop
    fi

    if [[ "$word" == "exit" ]]; then
        printf "Exit command received. Closing...\n"
        break # Breaks the loop cleanly
    fi

    printf "You typed: '%s'. (Only 'exit' closes this loop)\n" "$word"
done

printf "Script finished successfully.\n"