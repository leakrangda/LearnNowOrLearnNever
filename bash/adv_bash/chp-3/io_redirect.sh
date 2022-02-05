#!/bin/bash
#reading lines in /etc/fstab.

file=/etc/fstab

{
read line1
read line2
} < $file

echo "first line in $file is : "
echo "$line1"
echo
echo "second line in $file is:"
echo "$line2"

exit 0

#now, how do you parse separate field of each line?
#hint, use awk, or ...
#... hans-joerg diers suggest using the "set" Bash builtin.

