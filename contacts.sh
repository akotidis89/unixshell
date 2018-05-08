#!/bin/bash

#
#	This is a simple contact manager written in bash. 
#

#
#	First, we define a variable that will store the name of the file into
#	which all this information will be written.
#
fname=names.dat

#
#	First we present the user with a menu of choices to select.
#
echo Welcome to Contact Manager. Below are the options provided:
echo
echo 1. Create a record
echo 2. View records
echo 3. Search for records
echo 4. Delete records that match a pattern
echo q. Exit the program
echo
echo
echo -n "Please make a selection[1-4q]: "; read choice

#
#	Based on the user's input we create a case statement to apply the 
#	different options.	
#
case $choice in
	1)
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
		#	Now, we append this information to the text file names.dat
		#       separating the six items of data with ":"
		#
		echo $firstname:$surname:$address:$city:$state:$zip >> $fname
		echo
		echo A new record has been created. 
		echo Thank you for the input.
		;;
	2)
		#
		#	The contents and count of the number of records 
		#	of the file will be displayed using the "less" page 
		#	program.
		#
		echo 
		(echo "The database contains `cat $fname | wc -l` record(s)."
		echo Here are the contents of the file $fname.
		echo
		cat $fname) | less
		;;
	3)
		echo Not yet implemented.
		;;	
	4)
		echo Not yet implemented.
		;;
	q)
		#
		#	Program is terminated within a given time of 2 seconds.
		#
		echo Exiting.. Hope to see you soon!
		sleep 2
		;;
	*)
		echo Your input is invalid.
		;;
esac
