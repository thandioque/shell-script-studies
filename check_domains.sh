#!/usr/bin/env bash

# check_domains.sh - Verifies connectivity for a list of domains
# Maintainer: Thandiwe Assis 

# Create the temporary file
cat << EOF > records_domains.txt 
mainstreetrecords.com.br
ndml.com.br
bairro13.com
EOF

# read -r: Prevents backslashes (\) from being interpreted as escape characters. 
# Example: 'domain\name.com' would be read as 'domainname.com', potentially breaking the logic.
while read -r record_domain; do
    printf "Verifying connection with: %s\n" "$record_domain"
    
    # Execute ping and check the result directly in the 'if'
    # -c 2: two packets | -W 1: wait 1 second max
    # >/dev/null 2>&1: Silences the command by sending both standard output and error to the bit bucket (/dev/null), keeping the UI clean.
    if ping -c 2 -W 1 "$record_domain" >/dev/null 2>&1; then
        printf "Result: %s is REACHABLE\n" "$record_domain"
    else
        printf "Result: %s is UNREACHABLE\n" "$record_domain"
    fi

done < records_domains.txt

rm records_domains.txt

