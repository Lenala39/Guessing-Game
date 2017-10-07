#makefile to create README.md 

README.md: guessinggame.sh
	# add title
	echo "Guessing Game \n" > README.md
	# add subheading and date (using shell command "date")
	echo "Program build at: "  >> README.md
	date >> README.md
	# add subheading and number of lines in program
	echo "The program file contains the following number of lines: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md