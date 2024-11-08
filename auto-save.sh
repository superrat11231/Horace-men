#!/bin/bash

save-init () {
    seconds=$((result + 5))

    sleep $seconds
    git add .
    git commit -m "Auto-Update (from Replit)"
    git push origin main
    git pull origin main

    clear
    sleep 1
    echo "You can turn off auto save by using ctrl+c."
    sleep 2

    save-init
}

echo "How long until every auto-save in seconds?"
read answer

save-init