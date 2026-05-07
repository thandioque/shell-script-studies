#!/usr/bin/env bash

# service_restarter.sh - Restarts a list of services provided by the user
# Maintainer: Thandiwe Assis

printf "Welcome! Input services to restart (e.g., nginx docker mysql)\n"
read -p "Enter the service names: " services

# Regex explanation:
# ^[a-zA-Z] -> Must start with a letter
# [a-zA-Z[:space:]]* -> Followed by any amount of letters or spaces
# [a-zA-Z]$ -> Must end with a letter (avoids trailing spaces causing issues)

if [[ -z "$services" || ! "$services" =~ ^[a-zA-Z][a-zA-Z[:space:]]*[a-zA-Z]$ ]]; then
    printf "Error: Invalid input. Use only letters and spaces (e.g., 'nginx docker').\n"
    exit 1
fi

# Converts the space-delimited string into a bash array
service_array=($services)

for service in "${service_array[@]}"; do
    printf "Restarting service: %s...\n" "$service"
done

printf "All requested services processed.\n"