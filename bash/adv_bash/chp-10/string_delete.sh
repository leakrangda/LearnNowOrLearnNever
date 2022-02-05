#!/bin/bash
# Function from "days-between.sh" example.
# Strips leading zero(s) from argument passed.

strip_leading_zero() 	# Strip possible leading zero(s)
{			#+ from argument passed.
	return=${1#0}	# The "1" refers to "$1" -- passed arg.
}			# The "0" is what to remove from "$1" -- strips zeros.

# Manfred Schwarb's more elaborate variation of the above:
strip_leading_zero2()	# Strip possible leading zero(s), since otherwise
{			# Bash will interpret such numbers as octal values
	shopt -s extglob# Turn on extended globbing.
	local val=${1##+(0)}	# Use local variable, longest matching series of 0's.
	shopt -u extglob	# Turn off extended globbing.
	_strip_leading_zero2=${var:-0}
				# If input was 0, return 0 instead "".
}

echo `basename $PWD`		# Basename of current working directory.
echo "${PWD*/}"			# Basename of current working direcotry.
echo
echo `basename $0`		# Name of script.
echo $0				# Name of script.
echo "${0##*/}"			# Name of script.
echo
filename=test.data
echo "${filename##*.}"		# data 
				# Extension of filename.
