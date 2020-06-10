all: README.md

README.md: guessinggame.sh
	echo "# guessinggame" > README.md
	echo "Makefile run at: $$(date)" >> README.md
	echo "Number of lines in \`guessinggame.sh\`: $$(wc -l ./guessinggame.sh | grep -Po '^[0-9]+')" >> README.md

