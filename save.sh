#!/bin/bash

echo "Saving..."
sleep 1

git add .
git commit -m "Quick-Update (from Replit)"
git push origin main
git pull origin main

clear

echo "                        -"
sleep 0.3
clear

echo "                        --"
sleep 0.3
clear

echo "                        ---"
sleep 0.3
clear

echo "                        -"
sleep 0.3
clear

echo "                        --"
sleep 0.3
clear

echo "                        ---"
sleep 0.8
clear

echo "Done!"
sleep 2
clear

exit