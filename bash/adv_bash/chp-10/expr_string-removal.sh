#!/bin/bash
# show how to remove a string in bash using '${}'

stringZ=abcABC123ABCabc

# delete shortest match of $substring from front of string
# ${string#substring}
echo "show string removal the shortest match of substring from"
echo '${string#substring}'
echo "in front of string."
echo ${stringZ#a*C}		# 123ABCabc
echo
# Strip out shortest match between 'a' and 'C'

echo "show string removal the longest match of substring from"
echo "in front of string"
# delete longest match of $substring from front of string
# ${string##substring}
echo '${stringZ##a*C}'
echo ${stringZ##a*C}		# abc
echo
# Strip out shortest match between 'a' and 'C'




# You can parameterize the substrings.
X='a*C'
echo 'show parameterized ${stringZ#$X}'
echo ${stringZ#$X}	# 123ABCabc
echo ${stringZ##$X}	#  abc
echo			# As above.

# delete shortest match of substring from back of string
echo 'show ${string%abc}'
echo ${stringZ%b*c}
echo
# delete longest match of substing from back of string
echo 'show ${string%%B.*c}'
echo ${stringZ%%b*c}
echo
