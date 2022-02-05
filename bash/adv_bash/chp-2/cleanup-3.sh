#!/bin/bash
#cleanup, version 

#warning:
#-------
#this script uses quitea number of features that will be explained
#later on.
#by the time you've finished the first half of the book,
#there should be nothing mysterious about it.

LOG_DIR=/var/log
ROOT_UID=0	#only users with $UID 0 have root privileges.
LINES=50	#default number of lines saved.
E_XCD=86	#can't change directory?
E_NOTROOT=87	#non-root exit error.

#run as root, of course,

if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script."
	exit $E_NOTROOT
fi

if [ -n "$1" ]
#test whether command-line argument is present (non-empty).
then
	lines=$1
else
	lines=$LINES #default, if not specified on command-line
fi

#stephane chazelas suggests the following,
#as a better way of checking command-line arguments,
#but this is still a bit advanced for this stage of the tutorial.
#
#
#
#	E_WRONGARGS=85	#non-numerical argument (bad argument format).
#
#	case "$1" in
#	""	) lines=50;;
#	*[!0-9]*) echo "usage: `basename $0` lines-to-cleanup";
#	exit $E_WRONGARGS;;
#	*	) lines=$1;;
#	esac
#
#*skip ahead to "loops" chapter to dechiper all this.

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]	#or if [ "$PWD" != "$LOG_DIR" ]
				#not in /var/log?
then
	echo "can't change to $LOG_DIR."
	exit $E_XCD
fi #doublecheck if in right directory before messing with log file.

#far more efficient is:
#
#
#cd /var/log || {
#	echo "cannot change to necesary directory." >&2
#	exit $E_XCD;
#}

tail -n $lines messages > mesg.temp	#save last section of message log file.
mv mesg.temp messages			#rename it as system log file.

#cat /dev/null > messages
#* no longer needed, as the above method is safer.

cat /dev/null >wtmp 	# ': > wtmp' and '> wtmp' have the same effect.
echo "log files cleaned up."
#note that there are other log files in /var/log not affected
#by this script.

exit 0
#a zero return value from the scipt upon exit indicates success
#to the shell

