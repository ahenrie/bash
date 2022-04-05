#!/bin/bash

#Version 1.0

#variables
count=0
(( answer =  $RANDOM % 100 + 1 ))
guess=0

#guess
while (( guess != answer ));
do
	count=$(( count + 1 ))
	read -p "Guess a number: $num " guess
	if (( guess > answer ));
	then
		echo "Try lower"
	elif (( guess <  answer ));
	then
		echo "Try higer"
	fi
done

#exit code
echo "Good job! Your guess count: $count."

