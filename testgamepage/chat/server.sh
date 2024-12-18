#!/bin/bash

PORT=12345
LOG_FILE="chat.log"
PIPE="pipe"

# Create a named pipe
mkfifo $PIPE

# Start the server
nc -lvp $PORT < $PIPE | tee -a $LOG_FILE &

# Read user input and send to clients
while read message; do
    echo "$message" > $PIPE
done

# Cleanup
rm $PIPE