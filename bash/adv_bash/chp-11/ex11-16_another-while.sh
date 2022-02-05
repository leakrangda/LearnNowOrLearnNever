#!/bin/bash

echo
					# Equivalent to:
while [ "$var1" != "end" ]		# while test "$var1" != "end"
do
	echo "Input variable #1 (end to exit)"
	read var1			# Not 'read $var1' (why?).
	echo "variable #1 = $var1"	# Need quotes because of "#" . . .
	echo
done

exit 0

