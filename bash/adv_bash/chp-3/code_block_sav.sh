#!/bin/bash
#rpm-check.sh

#queries an frpm file for description, listing,
#and whether it can be installed.
#saves output to a file.
#
#this script illustrates using a code block.

SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then
	echo "usage; `basename $0` rpm-file"
	exit $E_NOARGS
fi
{#begin code block.
	echo
	echo "archive Description:"
	rpm -qpi $1	#quiery listing.
	echo "archive listing: "
	rpm -qpl $1	#query listing.
	echo
	rpm -i --test $1#query whether rpm file can be installed.
	if [ "$?" -eq $SUCCESS ]
	then
		echo "$1 can be installed."
	else
		echo "$1 cannot be installed."
	fi
	echo	#end code block.
} > "$1.text"	#redirect output of everything in block to file.
#see rpm man page for explanation of options.

exit 0

	
