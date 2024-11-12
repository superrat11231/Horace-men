#!/bin/bash

points=0

runAgainEz() {
    echo "Chose a number between 1 and 10."
    read number

    # Generate random number between 1 and 10
    randomNum=$((RANDOM % 10 + 1))

    if [ $number -eq $randomNum ]; then
        echo "Correct! +1 point."
        points=$((points + 1))  # Add 1 point
        runAgainEz
    else 
        echo "That's wrong."
        runAgainEz
    fi
}

runAgainHard() {
    echo "Chose a number between 1 and 20."
    read number

    # Generate random number between 1 and 20
    randomNum=$((RANDOM % 20 + 1))

    if [ $number -eq $randomNum ]; then
        echo "Correct! +2 points."
        points=$((points + 2))  # Add 2 points
        runAgainHard
    else
        echo "That's wrong."
        runAgainHard
    fi
}

echo "Choose a difficulty. (EZ/HARD)"
read diff

if [ "$diff" = "ez" ] || [ "$diff" = "EZ" ]; then
    runAgainEz  # Start the easy difficulty game
elif [ "$diff" = "hard" ] || [ "$diff" = "HARD" ]; then
    runAgainHard  # Start the hard difficulty game
else
    echo "[Err]: Invalid input."
    exit 1
fi