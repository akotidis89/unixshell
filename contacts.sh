#!/bin/bash

#
#	This is a simple contact manager written in bash. 
#

#
#	First, we define a variable that will store the name of the file into
#	which all this information will be written.
#
fname="names.dat"

#
#	Now, the main program starts. It will prompt the user for six items of
#	data.
#
echo Welcome to Contact Manager 1.0. Please enter your data:
echo
echo -n "First name: "; read firstname
echo -n "Surname: "; read surname
echo -n "Address: "; read address
echo -n "City: "; read city
echo -n "State: "; read state
echo -n "Zip: "; read zip

#
#	Now, we append this information to the text file names.dat separating
#	the six items of data with ":"
#
echo "$firstname:$surname:$address:$city:$state:$zip" >> $fname

#
#	Before exiting, the contents and the count of the number of records in
#	the file will be displayed using the "less" page program.
#
echo
(echo Thank you for your input. 
echo The contents and the numbers of records in the file will now be desplayed.
echo
echo Number of records: `cat $fname | wc -l`
cat $fname) | less

