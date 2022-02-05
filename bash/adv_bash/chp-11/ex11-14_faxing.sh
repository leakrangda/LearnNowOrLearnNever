#!/bin/bash
# Faxing (must have 'efax' package installed).

EXPECTED_ARGS=2
E_BADARGS=85
MODEM_PORT="/dev/ttyS2"	# May be different on your machine.
#		 ^^^^^	  PCMCIA modem card default port.

if [ $# -ne $EXPECTED_ARGS ]
# Check for proper number of command-line args.
then
	echo "Usage: `basename $0` phone text-file"
	exit $E_BADARGS
fi

if [ ! -f "$2" ]
then
	echo "File $2 is not a text file."
	#	File is not regular filem or does not exits.
	exit $E_BADARGS
fi

fax make $2		# Create fax-formatted files from text file.
for file in $(ls $2.0*)	# Concatenate the converted files.
			# Uses wild card (filename "globbing")
			#+in variable list.
do
	fil="$fil $file"
done

efax -d "$MODEM_PORT" -t "T$1" $fil	# Finally, do the work.
# Trying adding -o1 -t "T$1" $2.0*
#+but it's not quite as instructively [grin].

exit $?	# Also, efax sends diagnostic messages to stdout.
