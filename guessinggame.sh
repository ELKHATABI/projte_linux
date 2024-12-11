#!/bin/bash

# Function to get the number of files in the current directory
function get_file_count {
    echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
correct_count=$(get_file_count)
user_guess=-1

while [[ $user_guess -ne $correct_count ]]; do
    echo "Guess how many files are in the current directory:"
    read user_guess

    if [[ $user_guess -lt $correct_count ]]; then
        echo "Your guess is too low. Try again."
    elif [[ $user_guess -gt $correct_count ]]; then
        echo "Your guess is too high. Try again."
    fi
done

echo "Congratulations! You guessed correctly. There are $correct_count files."
