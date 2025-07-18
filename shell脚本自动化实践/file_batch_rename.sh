#!/bin/bash

TARGET_DIR="/path/to/files"
PREFIX="renamed"
COUNT=1

cd "$TARGET_DIR" || exit

for file in *; do
    if [ -f "$file" ]; then
        EXT="${file##*.}"
        mv "$file" "${PREFIX}_${COUNT}.${EXT}"
        ((COUNT++))
    fi
done

echo "File renaming completed."
