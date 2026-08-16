#!/bin/bash

FILE="$1"

if [ -z "$FILE" ]; then
    echo "Usage: file-triage.sh <file>"
    exit 1
fi

if [ ! -f "$FILE" ]; then
    echo "ERROR: File not found"
    exit 1
fi

echo "=== File Triage ==="
echo "File: $FILE"
echo

echo "Type:"
file "$FILE"

echo
echo "Size:"
du -h "$FILE"

echo
echo "SHA-256:"
sha256sum "$FILE"
