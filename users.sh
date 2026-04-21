#!/usr/bin/env bash

# users - Extracts usernames and full names from /etc/passwd
# Maintainer: Thandiwe Assis

# cut -d ':' --output-delimiter=' ' -f 1,5 /etc/passwd

# Sanity Check: Ensure the script has read access to /etc/passwd
if [[ ! -r "/etc/passwd" ]]; then
    echo "Error: Cannot read /etc/passwd. Check your permissions."
    exit 1
fi

# Extraction and Formatting:
# cut:
#    -d ':': Defines the colon as the field delimiter (standard for /etc/passwd).
#    -f 1,5: Extracts only the 1st (username) and 5th (full name/GECOS) fields.
# tr -d ',':
#    Deletes commas from the output. The 5th field often contains extra system 
#    information separated by commas that I want to clean.
# column -t -s ':':
#    -s ':': Informs 'column' that the input fields are still separated by colons.
#    -t: Automatically creates a table by calculating the necessary padding 
#        between columns for perfect visual alignment.

cut -d ':' -f 1,5 /etc/passwd | tr -d ',' | column -t -s ':'