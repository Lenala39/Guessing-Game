#!/usr/bin/env bash
# File: guessinggame.sh

#store number of files in directory
num_files=$(ls -F | grep -v / | wc -l)

# prompt for first guess and read user input
echo "Please gues how many files (not directories) are in your current working directory:"
read user_guess

#define function to check guess
function check_guess {
	
	#as long as guess is not correct 
	while [[ $user_guess -ne $num_files ]]; do
		
		# respond with "too high", if guess is bigger
		if [[ $user_guess > $num_files ]]; then
			echo "Your guess was too high, please try again!"
		# respond with "too small", if guess is smaller
		else
			echo "Your guess was too low, please try again!"
		fi
		#ask for another guess
		read user_guess
	done

	# if while loop is done, the guess is correct -> congrats 
	echo "Your guess $user_guess was correct! Congratulations"

}
#call function (after definition)
check_guess