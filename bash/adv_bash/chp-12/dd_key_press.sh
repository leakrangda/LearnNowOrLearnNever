#!/bin/bash

# cd "`pwd`"	# This should always work.
# However...

mkdir 'dir with trailing newline
'

cd 'dir with railing newline
'

cd "`pwd`"	# Error message:
# Bash: cd: /tmp/file with trailing newline: No such file or directory

cd "$PWD"	# Works fine.


old_tty_setting=$(stty -g)	# save old terminal setting
echo "Hit a key "
stty -icanon -echo		# Disable "canonical" mode for temrinal
				# Also, disable *local* echo.
key=$(dd bs=1 count=1 2> /dev/null)	# Using 'dd' to get a keypress
stty "$old_tty_setting"		# Restore old setting
echo "You hit ${#key} key."	# ${#variable} = number of characters in
				#+$variable.
#
# Hit any key except RETURN, and the output is "You hit 1 key."
# Hit RETURN, and it's "You hit 0 key."
# The newline gets eaten in the command substitution

# Code snippet by Stephane Chazelas.
