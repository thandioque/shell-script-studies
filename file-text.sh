#!/usr/bin/env bash

# test-file - Validate files
# Maintainer: Thandiwe Assis

# Give the file name
echo "Give the file name: "
read RESPONSE

test -d "$RESPONSE" && echo "$RESPONSE is a directory" && exit

test -f "$RESPONSE" && echo "$RESPONSE is a file" || echo "The file '$RESPONSE' was not found" && exit

