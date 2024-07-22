#!/bin/bash

# filename
#FILE="filename"

read -p "Enter filename: " FILE

#check if exists
if [[ ! -f "$FILE" ]]; then
	echo "File not found"
	exit 1
fi

# Display file information
file "$FILE"

# Check for interesting strings
strings "$FILE" | head -n 10

# Check metadata
exiftool "$FILE"

# First hex data
hexdump -C "$FILE" | head -n 10

# last hex data
hexdump -C "$FILE" | tail -n 10

#objdump
objdump -d "$FILE"

