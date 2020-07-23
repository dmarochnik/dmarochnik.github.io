#!/bin/bash
#Daria Marochnik
#March 7, 2019
#Version 1.4
#
read -p "Please enter your name: " NAME
echo "Hello, $NAME. I'm Jim, and I'm bored. Will you play a game with me?"
read -p "Enter Y for yes: " Y
echo "You're the best, $NAME. OK, I picked a number between 1 and 100."
n1=$[($RANDOM % 100) +1]
echo -n "Please guess what it is:  "
while counter=$(($counter+1))
read n2; do

if   [[ $n2 -eq $n1 ]]; then
echo "Wowzers, $NAME! Fantastic! It only took you $counter guesses to get the right number."
exit 0;
else
echo
if [[ $n2 -gt $n1 ]]; then
echo -n "Sorry, $NAME, your guess is too high. New guess:"
elif [[ $n2 -lt $n1 ]]; then
echo -n "Sorry, $NAME, your guess is too low. New guess:"
fi
fi

done

