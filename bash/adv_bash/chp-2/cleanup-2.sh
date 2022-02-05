#!/bin/bash
#proper header for a bash script;

#cleanup, version 2

#run as root, of course
#insert code here to print error message and exit if not root.

LOG_DIR=/var/log
#Variables are better than hard-coded values.
cd $LOG_DIR

cat /dev/null > messages
cat /dev/null > wtmp

echo "logs cleaned up."
exit	# the right adn proper method of "exiting" from a script.
	# a bare "exit" (no parameter) returns the exit status
	# + of the preceding command.

