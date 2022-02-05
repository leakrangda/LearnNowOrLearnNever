#!/bin/bash
z=$(($z+3))
z=$((z+3))				# also correct.
					# Within double parentheses.
					#+parameter dereferencing
					#+is optional

# $((EXPRESSION)) is arithmetic expansion. # Not to be confused with
					   #+command sustitution.

# You may also use operation within double parentheses without assignment.

n=0
echo "n = $n"				# n = 0

(( n += 1))				# Increment.
#(( $n += 1)) is incorrect
echo "n = $n"				# n = 1

let z=z+3
let "z += 3"	# Quotes permit the use of spaces in variable assignment.
		# The 'let' operator actually perform arithmetic evaluation,
		#+rahter than expansion.
