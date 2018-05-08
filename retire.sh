#!/bin/bash

#
#	Script that checks the user age for retirement.
#

#
#	Define the retirement age
#
retirement_age=65

#
#	Prompt the user for her age and store it in a variable
#
echo -n "Please enter your age: "; read age

#
#	Compare the age with the retirement age using an if statement
#
if [ "$age" = "" ]; then
	echo Please restart the program and enter an age!
elif [ $age -le $retirement_age ]; then
	echo You can still work! You have $((retirement_age - age)) years for \
retirement
elif [ $age -gt $retirement_age ]; then
	echo You should retire!
else
	echo This is invalid input. Exiting..
fi
