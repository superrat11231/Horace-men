#!/bin/bash

SERVER_IP="127.0.0.1"
PORT=12345
PIPE="pipe$$"
LOG_FILE="chat.log"

# Create a named pipe
mkfifo $PIPE

# Connect to the server
nc $SERVER_IP $PORT < $PIPE | tee -a $LOG_FILE &

# Read user input and send to the server
while read message; do
    echo "$message" > $PIPE
done

# Cleanup
rm $PIPE