#!/bin/bash

# filename
FILE="filename"

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
