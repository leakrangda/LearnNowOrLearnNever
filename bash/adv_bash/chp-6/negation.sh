true		 #the "true" builtin.
echo "exit status of \"true\" = $?"	#0

! true
echo "exit status of \"! true\" - $?"	#1
# Note that the"!" needs a space between it and the command.
#	!true leads to a "command not found" error
#
# the '!' operator prefixing a command invokes the Bash history mechanism.

true
!true
# No error this time, but no negation either.
# it jus repeats the previous command (true).

# ======================================================================== #
# preceding a _pipe_ with ! invert the exit status returned.

ls | bogus_command	# bash: bogus_command: command not found
echo $?			# 127
! ls | bogus_command 	# bash: bogus_command: command not found
echo $?			# 0
# note that ! does not change the execution fo the pipe.
# only the exit status change.
# ======================================================================== #
# Thanks to stephane chazelas and kristopher newsome.

