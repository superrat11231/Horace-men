#!/bin/bash

echo "Chose a difficulty. (EZ/HARD)"
read diff

if [ $diff = "ez" ] || [ $diff = "EZ" ]; then
    echo "Chose a number between 1 and 10."
    read number

    
elif [ $diff = "hard" ] || [ $diff = "HARD" ]; then
    # diff hard
else
    echo "[Err]: Invalid input."
    exit
fi