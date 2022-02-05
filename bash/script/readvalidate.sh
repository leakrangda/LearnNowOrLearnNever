#!/bin/bash

# read-validate: validate input

invalid_input () {
	echo "Invalid input '$REPLY'" >&2
	exit 1
}

read -p "Enter a single item > "

#input is empty (invalid)
[[ -z $REPLY ]] && invalid_input

#input is multiple items (invalid)
(($(echo $REPLY | wc -w) > 1)) && invalid_input

#is input a valid filename?
if [[ $REPLY =~ ^[-[:alnum:]\._]+$ ]]; then
	echo "'$REPLY' is valid filename."
	if [[ -e $REPLY ]]; then
		echo "and file '$REPLY' exists."
	else
		echo "however, file '$REPLY' does not exist."
	fi

	# is input a floating point number?
	if [[ $REPLY =~ ^-?[[:digit:]]*\.[[:digit:]]+$ ]]; then
		echo "'$REPLY' is a floating point number"
	else
		echo "'$REPLY' is not a floating point number"
	fi
	
	#is input an integer?
	if [[ $REPLY =~ ^-?[[:digit:]]+$ ]]; then
		echo "'$REPLY' is an integer."
	else
		echo "'$REPLY' is not an integer."
	fi
else
	echo "The string '$REPLY' is not a valid filename."
fi
