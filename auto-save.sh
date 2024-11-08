#!/bin/bash

save-init () {
    seconds=$((result - 3))

    sleep $seconds
    git add .
    git commit -m "Auto-Update (from Replit)"
    git push origin main
    git pull origin main

    clear
    sleep 0.5
    echo "You can turn off auto save by using ctrl+c."
    sleep 1.5

    save-init
}

echo "How long until every auto-save in seconds?"
read answer

save-init