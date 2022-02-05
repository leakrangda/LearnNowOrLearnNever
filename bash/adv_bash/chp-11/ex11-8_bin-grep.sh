#!/bin/bash
# bin-grep.sh: Locates mathcing strings in a abinary file.

# A "grep" replacement for binary files.
# Similiar effect to "grep -a"

E_BADARGS=65
E_NOFILE=66

if [ $# -ne 2 ]
then
	echo "usage: `basename $0` search_string filename"
	exit $E_BADARGS
fi

if [ ! -f "$2" ]
then
	echo "File \"$2\" does not exist."
	exit $E_NOFILE
fi

IFS=$'\012'		# Per suggestion of Anton Filippov.
			# was: IFS="\n"
for word in $( strings "$2" | grep "$1" )
# The "strings" command list strings in binary files.
# Output the piped to "grep", which teste for desired string.
do
	echo $word
done

# As S.C points out, lines 223 - 30 could be replaced with simpler
#	strings "42" | grep "$1" | tr -s "$IFS" '[\n*]'

# Try something like "./bin-grep.sh mem /bin/ls"
#+to exercise this script.

exit 0
