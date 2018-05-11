#!/bin/bash

#
#	This is a simple contact manager written in bash. 
#

#
#	Define the file that will store our database.
#
fname=names.dat

#
#	First we present the user with a menu of choices to select.
#
while true; do
	clear
	echo -e "\t\tWelcome to Contact Manager"
	echo -e "\t----------------------------------------"
	echo
	echo
	echo -e "\t1. Create a record"
	echo -e "\t2. View records"
	echo -e "\t3. Search for records"
	echo -e "\t4. Delete records that match a pattern"
	echo
	echo
	echo -n "Please make a selection[1-4] or press Q to quit the program: "
	read choice
	
	#
	#	Using a case statement for user's different choices.
	#
	case $choice in
		1)
			#
			#	User creates a new record.
			#
			echo
			echo "You're about to create a new record."
			echo Please complete the appropriate fields:
			echo
			echo
			echo -n "First name: "; read firstname
			echo -n "   Surname: "; read surname
			echo -n "   Address: "; read address
			echo -n "      City: "; read city
			echo -n "     State: "; read state
			echo -n "       Zip: "; read zip
			#	
			#	Appending user info to database.     
			#
			echo $firstname:$surname:$address:$city:$state:$zip >> $fname
			echo
			echo A new record has been created. 
			echo Thank you for the input.
			continue
			;;
		2)
			#
			#	Display the contents of the database.
			#
			echo 
			(echo "The database contains `cat $fname | wc -l` record(s)."
			echo Here are the contents of the file $fname.
			echo
			cat $fname) | less
			continue
			;;
		3)
			echo
			echo Not implemented yet.
			continue
			;;	
		4)
			echo
			echo Not implemented yet.
			continue
			;;
		q)
			#
			#	Terminate the program.
			#
			echo
			echo Exiting... 
			sleep 1
			break
			;;
		*)
			#
			#	Case where user input is invalid.
			#
			echo Your input is invalid.
			sleep 1
			continue
			;;
	esac
done

exit 0
