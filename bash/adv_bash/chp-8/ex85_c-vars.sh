#!/bin/bash
#c-vars.sh
# Manipulating a variable, C-style, using the (( .. )) construct.



echo


(( a = 23 ))		# Setting a value, C-style
			#+with spaces on both side of the "=".
echo "a (initial value) = $a"		# 23

(( a++ ))		# Post-increment 'a', C-style.
echo "a (after a++) = $a"		# 24

(( a-- ))		# Post-decrement 'a', C-style.
echo "a (after a--) = $a"		# 23

(( ++a ))		# pre-increment 'a', C-style.
echo "a (after ++a) = $a"		# 24

(( --a ))		# pre-decrement 'a', C-style.
echo "a (after --a) = $a"		# 23

echo

#################################################################
# Note that, as in C, pre- and post-decrement operators
#+have different side-effects.

n=1; let --n && echo "True" || echo "False"	# False
n=1; let n-- && echo "True" || echo "False"	# True

# Thanks Jeroen Domburg.
#################################################################

echo

(( t = a < 45? 7:11))		# C-style ternary
#	 ^   ^  ^
echo "if a < 45, then t = 7, else t = 11."	# a = 23
echo "t = $t "					# t = 7


echo 


# -------------------
# Easter Egg alert !
# -------------------
# Chet Remey seems to have snuck a bunch of unducumented C-Style
#+construct into Bash (actually adapted from ksh, pretty much).
# In the Bash docs, Ramey call (( ... )) shell arithmetic,
#+but it goes far beyond that.
# Sorry, Chet, the secret is out.

# See also "for" and "while" loops using the (( ... )) construct.

# These work only with version 2.04 or later of Bash.

exit
