#!/bin/bash
# Reading lines in /etc/fstab.

File=/etc/fstab

{
	read line1
	read line2
} < $File

echo "first line in $File is :"
echo "$line1"
echo
echo "second line in $File is :"
echo "$line2"

exit 0

#Now, how do you parse the separate field of each line?
#hint: use awk, or ...
#...Hans-joerg diers sugggests using the "set" bash builtin.
