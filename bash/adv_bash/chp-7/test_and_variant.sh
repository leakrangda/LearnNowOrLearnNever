#!/bin/bash

echo

if test -z "$1"
then
	echo "no command-line argument."
else
	echo "first command-line argument is $1."
fi

echo 

if /usr/bin/test -z "$1"	# Equivalent to "test" builtin.
#  ^^^^^^^^^^^^^		# Specify full pathname.
then
	echo "No command-line argument."
else
	echo "First command-line argument is $1."
fi

echo

if [ -z "$1" ]			# Functionally idenctical to above code blocks.
#	if [ -z "$1"		  should work, but ...
# bash resonds to a missing close-bracket with an error message.
then
	echo "no command-line argument."
else
	echo "first command-line argument is $1."
fi

echo



if /usr/bin/[ -z "$1" ] 	# again, functionally identical to above.
# if /usr/bin/[ -z "$1"		# works, but gives an error message.
# 				# Note:
#				# this has been fixed in bash, version 3.x.
then
	echo "No command-line argument."
else
	echo "First command-line argument is $1."
fi

echo 
exit 0

