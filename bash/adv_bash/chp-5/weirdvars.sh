#!/bin/bash
# weirdvars.sh: echoing weid variables.

echo

var="'(]\\{}\$\""
echo $var	# '(]\{}$"
echo "$var"	# '(]\{}$" doesnt make any difference.

echo

IFS='\'
echo $var	# '(] {}$" converted to space. why?.
echo "$var"	# '(]\{}$"

# examples above supplied by stepehane chazelas.

echo

var2="\\\\\""
echo $var2	#    "
echo "$var2"	#  \\"
echo
# but ... var2="\\\\"" is illegal. Why?
var3='\\\\'
echo "$var3"	# \\\\
# strong quoting works, though.


# ****************************************************************************#
# as the fist example above shows, nesting quotes is permitted.

echo "$(echo '"')"	# "
#     ^           ^


# At times this comes in useful .

var1="two bits"
echo "\$var1 = "$var""	#$var1 = two bits.
#    ^	 	     ^

# or, as chris hestand points out ..

if [[ "$(du "$my_file1")" -gt "$(du "$my_file2")" ]]
#     ^	    ^	      ^ ^     ^	    ^	      ^ ^
then
	....
fi
# ****************************************************************************#

