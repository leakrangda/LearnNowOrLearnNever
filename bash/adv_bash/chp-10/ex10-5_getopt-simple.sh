#!/bin/bash
# getopt-simple.sh
# Author. Chris Morgan
# Used in the ABS Guide with permission.


getopt_simple()
{
	echo "getopt_simple()"
	echo "Parameters are '$*'"
	until [ -z "$1" ]
	do
		echo "Processing parameter of: '$1'"
		if [ ${1:0:1} = '/' ]		# substring, start from 0
						# take 1 character
		then
			tmp=${1:1}		# substring, start form 1
						# take everything after
			parameter=${tmp%%=*}	# string removal from back
			value=${tmp##*=}	# string removal from front
			echo "Parameter: '$parameter', value: '$value'"
			eval $parameter=$value
		fi
		shift
	done
}
# Pass all options to getopt_simple().
getopt_simple $*

echo "test is '$test'"
echo "test2 is '$test2'"

exit 0	# See also, UseGetOpt.sh, a modified version of this script.
