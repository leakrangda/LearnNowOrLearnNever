#!/bin/bash
#	str-test.sh: Testing null string and unquoted strings,
#+ but not strings and sealing wax, not to mention cabbages and kings..

# Using if [ ... ]

# If a string has not been initialized, it has no defined value.
# This state is called "null" (not the same as zero!).

if [ -n $string1 ]	# string1 has not been declared or initialized.
then
	echo "String \"string1\" is not null."
else
	echo "String \"string1\" is null."
fi			# wrong result.
# Shows $string1 as not null, although it was not initialized.

echo


# Let's try it again.

if [ -n "$string1" ] 	# This time, $string1 is quoted.
then
	echo "String \"string1\" is not null."
else
	echo "String \"string1\" is null."
fi			# Quote strings within test brackets!

echo

if [ $string1 ] 	# This time, $string1 stands naked.
then
	echo "String \"string1\" is not null."
else
	echo "String \"string1\" is null."
fi			# This works fine.
# The [ ... ] test operator alone detecs whether the string is null.
# However it is good practice ot quote it (if [ "$string1" ])
#
# As Stephane Chazelas points out,
#	if [ $string1 ]		has one argument, "]"
#	if [ "$string1 ]	has two argument, the empty "$string1" and "]"
echo

String1=initialized

if [ $string1 ]		# Again, $string1 stands naked
then
	echo "String \"string1\" is not null."
else
	echo "String \"string1\" is null."
fi			# Again, give correct result.
# Still, it is better to quote it ("$string1"), because . . .

string1="a = b"

if [ $string1 ]		# Again, $string1 stands unquoted.
then
	echo "String \"string1\" is not null."
else
	echo "String \"string1\" is null."
fi			# Not quotng "$string1" now gives wrong result!

exit 0	# Thank you, also, Floarian Wisser, for the "heads-up".
