#!/bin/bash

# Tip:
# if you're unsure how a certain condition might evaluate,
# test it in an if-test.

echo

echo "Testing \"0\""
if [ 0 ] 	# zero
then
	echo "0 is true."
else		# or else ...
	echo "0 is false."
fi		# 0 is true.

echo
echo "Testing \"1\""
if [ 1 ] 	# one
then
	echo "1 is true."
else
	echo "1 is false."
fi		# 1 is true.
echo

echo "Testing \"-1\""
if [ -1 ]	# minus one
then
	echo "-1 is true."
else
	echo "-1 is false."
fi		# -1 true.

echo

echo "Testing \"NULL\""
if [ ]		# NULL (empty condition)
then
	echo "NULL is true."
else
	echo "NULL is false."
fi		# NULL is false.
echo

echo "Testing \"xyz\""
if [ xyz ]	# string
then
	echo "Random string is true."
else
	echo "Random string is false."
fi		# Random string is true.

echo

echo "Testing \"\$xyz\""
if [ $xyz ] 	# test if $xyz is null, but ...
		# it's only an uninitialized variable
then
	echo "uninitialized variable is true."
else
	echo "uninitialized variable is false."
fi		# Uninitialized variable is false

echo 

echo "Testing \"-n \$xyz\""
if [ -n "$xyz" ] 	# more pedantically  correct.
then
	echo "Unitialized variable is true."
else
	echo "Unitialized variable is false."
fi		# Uninitialized variable is false.

echo

xyz=		# Initialized, but set to null value.

echo "Testing \"-n \$xyz\""
if [ -n "$xyz" ]
then
	echo "Null variable is true."
else
	echo "Null variable is false."
fi		# Null variable is false.

echo


# when is "false" true?

echo "Testing \"false\""
if [ "false" ]	# it seems that "false" is just a string ...
then
	echo "\"false\" is true."	# and it test true.
else
	echo "\"false\" is false."
fi		# "false" is true.

echo

echo "Testing \"\$false\""	#Again, uninitialized variable.

if [ "$false" ]
then
	echo "\"\$false\" is true."
else
	echo "\"\$false\" is false."
fi		# "$false" is false.
		# now, w get the expected result.

# what would happend if we tested the uninitialized variable "$true"?

echo

exit 0
