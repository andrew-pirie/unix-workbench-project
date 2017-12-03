all: README.md

README.md: guessinggame.sh
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	date >> README.md
	echo "" >> README.md
	echo "guessinggame.sh has the following number of lines: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
