#!/bin/bash
# arith-test.sh
# Arithmetic test.

# the (( ... )) construct evaluates and tests numerical expressions.
# Exit status opposite from [ ... ] construct !

(( 0 ))
echo "Exit status of \"(( 0 ))\" is $?."		# 1

(( 1 ))
echo "Exit status of \"(( 1 ))\" is $?."		# 0

(( 5 > 4 ))						# true
echo "Exit status of \"(( 5 > 4 ))\" is $?."		# 0

(( 5 > 9 ))						# false
echo "Exit status of \"(( 5 > 9 ))\" is $?."		# 1

(( 5 == 5 ))						# true
echo "Exit status of \"(( 5 == 5 ))\" is $?."		# 0
# (( 5 = 5 )) gives an error message.

(( 5 - 5 ))						# 0
echo "Exit status of \"(( 5 - 5 ))\" is $?."		# 1

(( 5 / 4 ))						# division ok
echo "Exit status of \"(( 5 / 4 ))\" is $?."		# 0

(( 1 / 2 ))
echo "Exit status of \"(( 1 / 2 ))\" is $?."		# division result < 1.
							# rounded off to 0.
							# 1
(( 1 / 0 )) 2>/dev/null					# illegal division by 0.
#	    ^^^^^^^^^^^
echo "Exit status of \"(( 1 / 0 ))\" is $?."		# 1

# what effect does the "2>/dev/null"have?
# what would happen if it were removed?
# try removing it, then rerunning the script.

#==========================================================#

# (( ... )) also useful in an if-then test.
var1=5
var2=4

if (( var1 > var2 ))
then #^	     ^		Note: not $var1, $var2. Why?
	echo "$var1 is greater than $var2"
fi	#5 is greater than 4

exit 0
