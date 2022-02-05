#!/bin/bash
dir_listing=`ls -l`
echo $dir_listing	# unquoted

# Expecting a nicely ordered directory listing.

# However, what you get is:
# total 3 -rw-rw-r-- bozo bozo 30 May 13 17:15 1.txt -rw-rw-r-- 1 bozo
# bozo 51 May 15 20:57 t2.sh -rwxr-xr-x 1 bozo bozo 217 Mar 5 21:13 wi.sh

# The newlines disappeared.


echo "$dir_listing"	# quoted

# -rw-rw-r--		1 bozo		30 May 13 17:15 1.txt
# -rw-rw-r--		1 bozo		51 May 15 20:57 t2.sh
# -rwxr-xr-x		1 bozo	       217 Mar	5 21:13 wi.sh
