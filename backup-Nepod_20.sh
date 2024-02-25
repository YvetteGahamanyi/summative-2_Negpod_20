#!/bin/bash

#configuration

HOST="55f104a5a8c2.3a2627c1.alu-cod.online"
USERNAME="55f104a5a8c2"
PASSWORD="e41f6a4e7055665f8b16"


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
