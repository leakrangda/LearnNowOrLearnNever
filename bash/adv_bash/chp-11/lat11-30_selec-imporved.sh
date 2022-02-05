#!/bin/bash

PS3='Choose our favorite vegetables: '  # Sets the prompt string.
					# Otherwise it default to #?

echo

select vegetable in "beans" "carrots" "potatoes" "onions" "rutabagas"
do
	if [ -z $vegetable ]
	then
		echo "Sorry, That is not on the menu."
	else
		echo
		echo "Your favorite veggie is ${vegetable}."
		echo "Yuck!"
		echo
	fi
	break	# What happens if there is no 'break' here?
done

exit

# Exercise:
# --------
# Fix this script to accept user input not specified in
#+the "select" statement.
# For example, if the user inputs "peas,"
#+the script would respond "Sorry. That is not on the menu."

