#!/bin/bash

echo

echo "Enter a string terminated by \\, then press <ENTER>."
echo "Then, enter a second string (no \\ this time), and again press <ENTER>."

read var1	# The "\" supresses the newline, with reading $var1
		#	first line \
		#	second line

echo "var1 = $var1"
# var1 = first line second line

# For each line terminated by a "\"
#+you get a prompt on the next line to continue feeding characters into var1

echo; echo

echo "Enter another string terminated by a \\, then press <ENTER>."

read -r var2	# The -r option couses the "\" to be read literally.
		# 	first line \

echo "var2 = $var2"
#	var2 = first line \
# Data entry terminates with the first <ENTER>.

exit 0
