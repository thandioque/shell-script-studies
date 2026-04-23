#!/usr/bin/env bash

# shells - Lists all unique shells currently in use on the system
# Maintainer: Thandiwe Assis

if [[ ! -r "/etc/passwd" ]]; then
    echo "Error: Read permission for /etc/passwd is required."
    exit 1
fi

if [[ $# -ne 0 ]]; then
    echo "Usage: $(basename "$0")"
    echo "Error: This script does not accept arguments."
    exit 1
fi

# - cut: Selects the 7th field (shell path) using colon as delimiter.
# - sort -u: Sorts the list and removes duplicates (unique) in a single step.
cut -d ':' -f 7 /etc/passwd | sort -u