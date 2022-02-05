#!/bin/bash
# show replacing substring inside string with ${string/substring/replacement}
#+for first match.
# show replacing substring inside string with ${string//substring/replacement}
#+for all match.


stringZ=abcABC123ABCabc
echo 'show how ${string/substring/replacement}:'
echo ${stringZ/abc/xyz}		# xyzABC123ABCabc
				# Replaces first match of 'abc' with 'xyz'
echo 'show how ${string//substring/replacement}:'
echo ${stringZ//abc/xyz}	# xyzABC123ABCxyz.
				# Replaces all matches of 'abc' with 'xyz'

echo ----------------
echo "$stringZ"			# abcABC123ABCabc
echo ----------------
				# The string itself is not altered

# Can the match and replacement strings be parameterized?
match=abc
repl=000
echo 'show how ${string/$match/$repl}:'
echo ${stringZ/$match/$repl}	# 000ABC123ABCabc
#	       ^      ^		  ^^^
echo 'show how ${string//$match/$repl}:'
echo ${stringZ//$match/$repl}	# 000ABC123ABC000
# yes!	        ^      ^	  ^^^	      ^^^

echo

# What happens if no $prepalcement is supplied?
echo 'show how ${string/substring/}:'
echo ${stringZ/abc}		# ABC123ABCabc
echo ${stringZ//abc}		# ABC123ABC
# A simple deletion take place.
echo

# show how ${string/#substring/replacement} works
#+deleting the first match from the front of string.
echo '${string/#substring/replacement}:'
echo ${stringZ/#abc/XYZ}	# XYZABC123ABCabc

# show how ${string/%substring/replacement} works
#+deleting the first match from the back of string.
echo '${string/%substring/replacement}:'
echo ${stringZ/%abc/XYZ}	# abcABC123ABCXYZ
