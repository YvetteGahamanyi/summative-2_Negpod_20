#!/bin/bash

#configuration

HOST="dcf9e6c69bfe.31ac8d1e.alu-cod.online"
USERNAME="dcf9e6c69bfe"
PASSWORD="ea9e45648728e884b89e"


# Destination location on the remote server
DESTINATION="/summative/1023-2024j"

DIRECTORY="negpod_20-q1"
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Local directory '$DIRECTORY' does not exist."
    exit 1
fi

#Backup command
rsync -avz -e "sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no" "$DIRECTORY" "$USERNAME@$HOST:$DESTINATION"


# Check rsync exit status
if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Error: Backup failed."
fi
