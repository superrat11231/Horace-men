#!/bin/bash

PORT=12345
SERVER_IP="0.0.0.0"

while true; do
    # Listen for incoming messages from the web interface
    read -p "Enter a message to send: " message
    echo "$message" | nc $SERVER_IP $PORT
done