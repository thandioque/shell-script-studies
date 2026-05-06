#!/usr/bin/env bash

# create_logs.sh - Generates multiple log files for testing purposes
# Maintainer: Thandiwe Assis

# We use a clear loop to iterate through the range
for i in {1..5}; do
    log_file="file_${i}.log"

    # We redirect stderr (2) to /dev/null to suppress raw system errors.
    # This allows us to provide a cleaner, user-friendly error message and prevents sensitive system info from leaking in the logs, 
    # while still catching the failure via the exit code in the 'if' block.
    
    if touch "$log_file" 2>/dev/null; then
        printf "Success: '%s' has been created.\n" "$log_file"
    else
        printf "Error: Failed to create '%s'. Check permissions or disk space.\n" "$log_file"
        exit 1
    fi
done