#!/bin/bash

#test-integer: evaluate the value of an integer.

INT=8

if [ -z "$INT" ]; then
	echo "INT is empty." >&2
	exit 1
fi
if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
	if [ $INT -eq 0 ]; then
		echo "INT is zero."
	else
		if [ $INT -lt 0 ]; then
			echo "INT is negative."
		else
			echo "INT is positive."
		fi
		if [ $((INT % 2)) -eq 0 ]; then
			echo "INT is even."
		else
			echo "INT is odd."
		fi
	fi
else
	echo "INT is not an integer." >&2
	exit 1
fi

