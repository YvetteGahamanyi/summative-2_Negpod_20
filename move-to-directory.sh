#!/bin/bash

# Create the target directory if it doesn't exist
target_dir="negpod_22-q1"
mkdir -p "$target_dir"

# Move the files to the target directory
mv main.sh students-list_0923.txt select-emails.sh student-emails.txt "$target_dir/"

echo "Files moved to $target_dir"
