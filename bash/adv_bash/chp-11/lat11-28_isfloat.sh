#!/bin/bash
# isalpha.sh: Using a "case" structure to filter a string.

SUCCESS=0
FAILURE=1	# Was FAILURE=-1
		#+but Bash no longer allows negative return value.
isalpha()	# Test whether *first character* of input string is alpha
		#+betic.
{
	if [ -z "$1" ]		# No argument passed7
	then
		return $FAILURE
	fi

	case "$1" in
		[a-zA-Z]*) return $SUCCESS;;	# Begins with a letter?
		*	 ) return $FAILURE;;
	esac
}		# Compare this with "isalpha ()" function in C.


isalpha2()	# Test whether *entire string* is alphabetic.
{
	[ $# -eq 1 ] || return $FAILURE

	case $1 in
		*[!a-zA-Z]*|"") return $FAILURE;;
			     *) return $SUCCESS;;
	esac
}

isdigit()	# Test whether *entire string* is numerical.
{		# In other words, tests for integer variable.
	[ $# -eq 1 ] || return $FAILURE

	case $1 in
		*[!0-9]*|"") return $FAILURE;;
			  *) return $SUCCESS;;
	esac
}

isfloat()
{
	[ $# -eq 1 ] || return $FAILURE

	case $1 in
		*[0-9].[0-9]*) return $SUCCESS;;
		*) return $FAILURE;;
	esac
}

check_var()	# Front-end to isalpha().
{
	if isalpha "$@"
	then
		echo "\"$*\" begins with an alpha character."
		if isalpha2 "$@"
		then	# No point in testing if first char is non-alpha
			echo "\"$*\" contains only alpha characters."
		else
			echo "\"$*\" contains at least one non-alpha character."
		fi
	else
		echo "\"$*\" begins with a non-alpha characters."
			# Also "non-alpha" if no argument passed.
	fi

	echo

}

digit_check()	# Front-end to isdigit().
{
	if isdigit "$@"
	then
		echo "\"$*\" contains only digits [0 - 9]."
	else
		echo "\"$*\" has at least one non-digit character."
	fi

	echo
}

float_check()
{
	if isfloat "$@"
	then
		echo "\"$*\" is float number"
	else
		echo "\"$*\" not float number"
	fi
	echo
}

a=23skidoo
b=H3llo
c=-What?
d=What?
e=$(echo $b)	# Command substitution
f=AbcDef
g=27234
h=27a34
i=27.34
j=.4

check_var $a
check_var $b
check_var $c
check_var $d
check_var $e
check_var $f
check_var	# No argument passed, so what happens?
#
digit_check $g
digit_check $h
digit_check $i

#
float_check $g
float_check $h
float_check $i
float_check $j
exit 0		# Script improved by S.C.

# Exercise:
# --------
# Write an 'isfloat()' function that test for floating pint numbers.
# Hint: The function duplicate 'isdigit ()',
#+but add a test for a mandatory decimal point.

