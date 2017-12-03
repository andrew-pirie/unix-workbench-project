#!/usr/bin/env bash
# File: guessinggame.sh

# Count the files in the current directory
file_count=$(ls -1 | wc -l)

# Function that tells the user whether their guess is too high or too low
function comparator {
	[[ $1 < $file_count ]] && echo "Too low. Try again:" || echo "Too high. Try again:"
}

# Initial instruction
echo "How many files are in the current directory? Guess a number:"

# Set this variable for use by the loop
finished=0

# Loop that runs for each guess until the user enters the correct number
while [[ $finished -eq 0 ]]
	do
	read response
	# if statement
	if [[ $response == $file_count ]]
	then
		echo "Congratulations! You guessed the correct number!"
		finished=1
	else
		comparator $response
	fi
done
