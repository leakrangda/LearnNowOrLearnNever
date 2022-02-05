#!/bin/bash

a=23		# simple case
echo $a
b=$a
echo $b

# now, getting a little bit fancier (command substitution).

a=`echo Hello!`		# assigns result of 'echo' command to 'a' ...
echo $a
#	note that including an exclamation mark (!) within a
# 	command sustitution construct will not work from the command-line
#	(interactive mode), since this triggers the Bash "history mechanism."
#	inside a script, however, the history functions are disabled by default.

a=`ls -l`		# assigns result of 'ls -l command to 'a'
echo $a			# Unquoted, however, it remoes tabs and newlines.
echo
echo "$a"		# the quoted variable preserves whitespace.
			# (see the chapter on "quoting.")

exit 0
