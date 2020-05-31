#initiate variables
date=$(shell date)
number_of_lines_present=$(shell wc -l guessinggame.sh | egrep -o "[0-9]+")

README.md : guessinggame.sh
	touch README.md
	echo "The Title of the Project : ***Unix_Workbench_Coursera-Assignment***  " >> README.md
	echo "The date and time at which **make** was run : $(date)  " >> README.md
	echo "The number of lines of code contained in **guessinggame.sh** is : $(number_of_lines_present)  " >> README.md
