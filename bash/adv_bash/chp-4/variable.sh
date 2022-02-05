#!/bin/bash
#ex9.sh

# Variables: assignment and substitution

a=375
hello=$a;
#   ^ ^
#-------------------------------------------------------------------------------
# No space permintted on either side of = sign when initializing variables.
# what happens if there is a space?

#	"VARIABLE =value"
#		 ^
#% Script tries to run "VARIABLE" command with one argument, "=value".

#	"VARIABLE= value"
#		  ^
#% Script tries to run "value" command with
# the environmental variable "VARIABLE" set to "".
#-------------------------------------------------------------------------------


echo hello 	# hello
# Not a variable reference, just the string "hello" ...

echo $hello	# 375
#    ^		this *is* a variable reference.
echo ${hello}	# 375
#		likewise a variable reference, as above.

# Quoting...
echo "$hello"	# 375
echo "${hello}" # 375

echo

hello="A B	C	D"
echo $hello	#A B C D
echo "$hello"	#A B	C	D
# as we see, echo $hello and echo "$hello" gives different results.
#==============================================================================
# Quoting a variable preserve whitespace.
#==============================================================================

echo

echo '$hello'	# $hello
#    ^      ^
# variable referencing disabled (escaped) by single quotes,
# which causes the "$" to be interpreted literally.

# Notice the effect of different types of quoting.

hello=		# setting it to a null value.
echo "\n$hello (null value) = $hello"	#$hello (null value) = 
# note that setting a variable to a null value is not the same as
# unsetting it, although the end result is the same (see below).


#-------------------------------------------------------------------------------

# it is permissible to set a multiple  variables on the same line,
# if separated by white space.
# caution, this may reduce legibility, and may not be portable.

var1=21 var2=22 vaar3=$V3
echo
echo "var1=$var1	var2=$var2	var3=$var3"
# may cause problems with legacy version of "sh"...

#-------------------------------------------------------------------------------

echo;echo

numbers="one two three"
#	    ^   ^
other_numbers="1 2 3"
#
# if there is whitespace embedded within a variable,
# then quotes are necessary.
# other_numbers=1 2 3			# Gives an error message.
echo "numbers = $numbers"
echo "other_numbers = $other_numbers"	# other_numbers = 1 2 3
# escaping the whitespace also works.
mixed_bag=2\ ---\ Whatever
#	    ^	 ^ space after escape  (\)

echo "$mixed_bag"

echo; echo

echo "uninitialized_variable = $uninitialized_variable"
# uninitialized varialbe has null value (no value at all!)
uninitialized_variable=		# declaring, but not initializing it --
				# same as setting it to null value, as above.
echo "uninitialized_variable = $uninitialized_variable"
				# still has null value.
uninitialized_variable=23	# set it
unset uninitialized_variable	# unset it.
echo "uninitialized_variable = $uninitialized_variable"
				# uninitialized_varialbe = 
				# it still has null value.
echo 

exit 0

