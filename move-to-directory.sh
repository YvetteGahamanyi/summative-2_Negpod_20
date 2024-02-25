#!/bin/bash

# Create the target directory if it doesn't exist
target_dir="negpod_20-q1"
mkdir -p "$target_dir"

# Move the files to the target directory
mv main.sh Students-list_1023.txt Select-emails.sh student-emails.txt "$target_dir/"

echo "Files moved to $target_dir"
