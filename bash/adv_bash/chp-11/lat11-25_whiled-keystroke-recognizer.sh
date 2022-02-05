#!/bin/bash

while true
do
	echo; echo "Hit a key then hit return."
	read Keypress
	
	[ "$Keypress" = "X" ] &&  echo "X is found, exiting"; break

	case "$Keypress" in
		[[:lower:]]	) echo "Lower case letter";;
		[[:upper:]]	) echo "upper case letter";;
		[0-9]		) echo "Digit";;
		*		) echo "Punctuation, whitespace, or other";;
	esac
done

exit 0
