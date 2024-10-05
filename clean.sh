#!/bin/bash

# Define the list of file extensions to delete
extensions=("aux" "bbl" "blg" "log" "synctex.gz" "pdf")

# Loop through each extension and remove files with that extension
for ext in "${extensions[@]}"; do
  find . -type f -name "*.$ext" -exec rm -f {} +
done

echo "Cleanup complete. Removed .aux, .bbl, and .blg files."
