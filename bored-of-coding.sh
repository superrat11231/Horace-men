#!/bin/bash

points

runAgainEz() {
    echo "Chose a number between 1 and 10."
    read number

    # generate random number between 1 and 10 and classify the variable 'randomNum' to equal the random number
    
    if [ $number = $randomNum ]; then
        echo "Correct! +1 point."
        # add 1 to a variable named 'points'
        runAgainEz
    else 
        echo "That's wrong."
        runAgainEz
    fi
}

runAgainHard() {
    echo "Chose a number between 1 and 20."

    # same thing as 'ez', just with the number being 1 - 20.

    if [ $number = $randomNum ]; then
        echo "Correct! +2 points."
        # add 2 points to the variable name 'points'
        runAgainHard
    else
        echo "That's wrong."
        runAgainHard
    fi
}


echo "Chose a difficulty. (EZ/HARD)"
read diff

if [ $diff = "ez" ] || [ $diff = "EZ" ]; then
    echo "Chose a number between 1 and 10."
    read number

    # generate random number between 1 and 10 and classify the variable 'randomNum' to equal the random number
    
    if [ $number = $randomNum ]; then
        echo "Correct! +1 point."
        # add 1 to a variable named 'points'
        runAgainEz
    else 
        echo "That's wrong."
        runAgainEz
    fi

elif [ $diff = "hard" ] || [ $diff = "HARD" ]; then
    
    echo "Chose a number between 1 and 20."

    # same thing as 'ez', just with the number being 1 - 20.

    if [ $number = $randomNum ]; then
        echo "Correct! +2 points."
        # add 2 points to the variable name 'points'
        runAgainHard
    else
        echo "That's wrong."
        runAgainHard
    fi

else
    echo "[Err]: Invalid input."
    exit
fi