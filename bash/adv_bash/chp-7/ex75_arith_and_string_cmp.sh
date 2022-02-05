#!/bin/bash

a=4
b=5

# Here "a" and "b" can be treated either as integers or strings.
# There is some blurring between the arightmetic and string comparisons,
#+ since Bash variable are not strongly typed.

# Bash permits integer operations and comparisons on variables
#+ whose value consists of all-integers characters.
# Caution advised, however.

echo

if [ "$a" -ne "$b" ]
then
	echo "$a is not equal to $b"
	echo "(arithmetic comparison)"
fi

echo

if [ "$a" != "$b" ]
then
	echo "$a is not equal to $b."
	echo "(string comparison)"
	#	"4"	!= "5"
	# ASCII 52 	!= ASCII 53
fi

# In this particular instance, both "-ne" work.

echo

exit 0
