#!/bin/bash
# wh-loopc.sh: Count to 10 in a "while" loop.

LIMIT=10		# 10 iterations.
a=1

while [ "$a" -le $LIMIT ]
do
	echo -n "$a "
	let "a+=1"		# also ((a+=1))
				# also expr "a+=1"
				# also ((a++))
				# also $(a+=1)
done			# No surprises, so fa.

echo; echo

# +======================================================================

# Now we'll repeat with C-like syntax.

((a = 1))		# a=1
# Double parentheses permit space wehn setting a variable, as in C.

while (( a <= LIMIT ))	# Double parentheses,
do			#+and no "$" preceding variables.
	echo -n "$a "
	((a += 1))	# let "a+="
	# Yes, indeed.
	# Double parentheses permit incrementing a variable with C-like 
	#+syntax
done

echo

# C and Java programmers can feel right at home in Bash

exit 0

