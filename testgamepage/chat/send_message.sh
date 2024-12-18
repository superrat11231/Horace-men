#!/bin/bash

LOG_FILE="chat.log"

# Read the JSON payload
read payload
message=$(echo $payload | jq -r '.message')

# Append the message to the chat log
echo "Web Client: $message" >> $LOG_FILE