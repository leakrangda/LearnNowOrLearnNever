#!/bin/bash
# fileninfo.sh

FILES="/usr/sbin/accept
/usr/sbin/pwck
/usr/sbin/chroot
/usr/bin/fakefile
/sbin/badblocks
/sbin/ypbind"	# List of file you are curious about.
		# Threw in a dummy file, /usr/bin/fakefile.
echo

for file in $FILES
do
	if [ ! -e "$file" ]	# Check if file exists.
	then
		echo "$file does not exits.";echo
		continue	# On to next.
	fi

	ls -l $file | awk '{print $8 "		file size: " $5}'
	# print 2 fields.
	whatis `basename $file`	# File info.
	# Note that the whatis database needs to have been set up for this
	#+to work.
	echo
done

exit 0
