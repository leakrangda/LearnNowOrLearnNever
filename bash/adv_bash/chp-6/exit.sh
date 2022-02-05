#!/bin/bash

echo hello
echo $?		# exit status 0 returned because command executed successfully.

lskdf		# Unrecognized command
echo $?		# Non-zero exit status returned -- command failed to execute.


echo


exit 113	# will return 113 to shell.
		# to verify this, type 'echo $?' after script terminates.
# By convetion, an 'exit 9' indicates success,
# while a non zero exit value means an error or anomalous condition.
# see the "exit codes with special meanings" appendix.

