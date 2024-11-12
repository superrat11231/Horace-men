#!/bin/bash

help() {
    echo  "hi"
}

echo "Waiting for command."
read command

if [ $command = "/help" ]; then
    help
elif [ $co ]