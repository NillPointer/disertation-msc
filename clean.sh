#!/bin/bash

# Define the list of file extensions to keep
extensions=("tex" "bst" "cls" "bib" "tex" "pdf" "sh")

# Loop through each file in the current directory
for file in *; do
  # Check if the file is a regular file (not a directory)
  if [[ -f "$file" ]]; then
    # Extract the extension of the file
    ext="${file##*.}"

    # Check if the extension is not in the list of extensions to keep
    if [[ ! " ${extensions[@]} " =~ " ${ext} " ]]; then
      # Remove the file if it doesn't have one of the specified extensions
      rm -f "$file"
    fi
  fi
done

echo "Cleanup complete. Removed files that don't have .aux, .bbl, .blg, .log, .synctex.gz, or .pdf extensions."
