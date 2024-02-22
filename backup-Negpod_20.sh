#!/bin/bash

#configuration 

HOST="64293e56bc62.3a2627c1.alu-cod.online"
USERNAME="64293e56bc62"
PASSWORD="328d3b338a4ced526c9a"


# Destination location on the remote server
DESTINATION="/summative/1023-2024j"

DIRECTORY="negpod_20-q1"
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Local directory '$DIRECTORY' does not exist."
    exit 1
fi

#Backup command
rsync -avz -e "sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no" "$DIRECTORY" "$USERNAME@$HOST:$DESTINATION"


