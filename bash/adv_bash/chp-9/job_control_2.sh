#!/bin/bash

# This example by Matthew Sage.
# Used with permission.

TIMOUT=30		# Timeout value in seconds
count=0
possibly_hanging_job & {
while ((count < TIMEOUT )) do
	eval '[ ! -d /proc/$!" ] && ((count=TIMEOUT))'
	# /proc is where information about running processes is found.
	# "-d" tests whether it exists (whether directory exists).
	# So, we're waiting for the job in question to show up.
	((count++))
	sleep 1
done
eval '[ -d "/proc/$!" ] && kill -15 $!'
# If the hanging job is running, kill it.
}

# ---------------------------------------------------------------- #

# However, this may not work as specified if another process
#+begins to run after the "hanging_job" . . .
# In such a case, the wrong job my be killed.
# Ariel Meragelman suggest the following fix.

TIMEOUT=30
count=0
# Timout value in seconds
possibly_hanging_job & {
while ((count < TIMEOUT )); do
	eval '[ ! -d "/proc/$lasjob" ] && ((count = TIMEOUT))'
	lastjob=$!
	((count++))
	sleep 1
done
eval '[ -d "/proc/$lastjob" ] && kill -15 $lastjob'
}

exit
