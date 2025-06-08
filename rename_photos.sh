#!/bin/bash

# Path to your images folder
cd images || exit

# Counter starts at 1
counter=1

# Loop over all image files (jpg and png)
for file in *.{jpg,png}; do
  # Skip if no match
  [ -e "$file" ] || continue

  # Get extension
  ext="${file##*.}"

  # New file name
  newname="photo${counter}.${ext}"

  # Rename
  mv -- "$file" "$newname"

  # Increment counter
  ((counter++))
done

echo "✅ Renamed $((counter - 1)) images successfully."

