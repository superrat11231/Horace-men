#!/bin/bash

save-init () {
    sleep $seconds
    git add .
    git commit -m "Auto-Update (from Replit)"
    git push origin main
    git pull origin main
}

echo "How long until every auto-save in seconds? (5/10/15/20)"
read seconds

save-init