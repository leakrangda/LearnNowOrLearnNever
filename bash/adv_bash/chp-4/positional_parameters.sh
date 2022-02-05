#!/bin/bash

# call this script with at least 10 parameters, for example
# ./scriptname 1 2 3 4 5 6 7 8 9 10
MINPARAMS=10

echo


echo "the name of this script is \"$0\"."
# add./for currrent directory
echo "the name of this script is \"`basename $0`\"."
# strips out path name info (see 'basename')

echo

if [ -n "$1" ]				# tested variable is quoted.
then
	echo "parameter #1 is $1"	# need quotes to escape #
fi

if [ -n "$2" ]
then
	echo "parameter #2 is $2"
fi

if [ -n "$3" ]
then
	echo "parameter #3 is $3"
fi

if [ -n "$4" ]
then
	echo "parameter #4 is $4"
fi

if [ -n "$5" ]
then
	echo "paremeter #5 is $5"
fi

if [ -n "$6" ]
then
	echo "parameter #6 is $6"
fi

if [ -n "$7" ]
then
	echo "parameter #7 is $7"
fi

if [ -n "$8" ]
then
	echo "parameter #8 is $8"
fi

if [ -n "$9" ]
then
	echo "parameter #9 is $9"
fi

if [ -n "${10}" ]
then
	echo "parameter #10 is ${10}"
fi

echo "--------------------------------------------------"
echo "all the command-line parameters are: "$*""

if [ $# -lt "$MINPARAMS" ]
then
	echo 
	echo "this script needs at least $MINPARAMS command-line arguments!"
fi

echo

args=$#			# numbers of args passed.
lastarg=${!args}
# note: this is an *indirect reference* to $args ..

# or: lastarg=${!#}	(thanks, chris monson.)
# this is an #indirect reference* to the $# variable.
# note that lastarg=${!$#} doesn't work.

echo "the last argument \"$lastarg\"."

exit 0
