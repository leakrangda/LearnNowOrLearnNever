#!/bin/bash
# int-or-string.sh

a=2334		# integer
let "a +=1"
echo "a = $a"	#a = 2335
echo		# integer, still.

b=${a/23/BB}	# subtitue "BB" for "23"
		# this transforms $b into a string.
echo "b = $b"	# b = BB25
declare -i b	# declaring it an integer doesn't help.
echo "b = $b"	# b = BB25

let "b += 1"	# BB25 + 1
echo "b = $b"	# b = 1
echo		# Bash sets the "integer value" of a string to 0.

c=BB34
echo "c = $c"	# c = BB34
d=${c/BB/23}	# subtitute "23" for "BB".
		# this makes $d an integer.

echo "d = $d"	# d = 2334
let "d += 1"	# 2334 + 1
echo "d = $d"	# d = 2335
echo


# what about null variables?
e=''		# ... Or e="" ... or e=
echo "e = $e"	# e =
let "e +=1"	# arithmetic operations allowed on a null variable?
echo "e = $e"	# e = 1
echo		# null variable transformed int an integer.

	# what about undeclared varaibles?
echo "f = $f"	# f = 
let "f += 1"	# arithmetic operations allowed?
echo "f = $f"	# f = 1
echo 		# undeclared variable transformed into an integer.
#
# However ...
let "f /= $undecl_var"	#divide by zero?
#	let: f /= : syntax error: operand expected (error token is " ")
# syntax error! Variable $undecl_var is not set to zero here!
#
# but still ...
let "f /= 0"
#	let: f /= 0: division by 0 (error tokesn is "0")
# expected behavior.


# bash (usually) sets the "integer value" of null to zero
# when performing an arithmetic operation.
# but, don't try this at home, folks!
# it's undocumented and probably non-portable behavior.


# conclusion: variables in bash are untyped,
# with all attendant consequence.

exit $?
