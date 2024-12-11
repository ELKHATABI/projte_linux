# Makefile to generate README.md
README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "\n## Project Description" >> README.md
	echo "This is a Bash script that allows the user to guess the number of files in the current directory until they get it right." >> README.md
	echo "\n## Run Information" >> README.md
	echo "Script was run on: $$(date)" >> README.md
	echo "\n## Code Information" >> README.md
	echo "The script contains $$(wc -l < guessinggame.sh) lines of code." >> README.md
