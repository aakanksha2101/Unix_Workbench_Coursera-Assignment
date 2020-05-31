#initiate variables 
number_of_files_in_directory=$(ls | wc -l)
#definition of function
function guessinggame
{
	read entry_of_number_of_files_by_User

	if ! [[ $entry_of_number_of_files_by_User =~ ^[0-9]+$ ]]
	then
		echo "Your input is not valid. Please enter a valid number only."
		guessinggame
	else
		if [[ $entry_of_number_of_files_by_User -eq $number_of_files_in_directory ]]
		then
			echo "Congratulations !! Your guessed it right and you won !! :)"
		else
			if [[ $entry_of_number_of_files_by_User -gt $number_of_files_in_directory ]]
			then
				echo "Your guess was too low!! Please make a guess again."
				guessinggame
			else
				echo "Your guess was too high!! Please make a guess again"
				guessinggame
			fi
		fi
	fi
}
echo "Welcome to the Guessing Game of the UNIX"
echo "Make a guess of the number of files in the directory and press Enter"
guessinggame
