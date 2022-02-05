#!/bin/bash
# Thank you, lee Maschmeyer, for this example

read -n 1 -s -p \
	$'control-M leaves cursor  at beginning of this line. Press Enter.\x0d'
		# of course, '0d' is the hex equivalent of Control-M.
echo >&2	# the '-s' makes anything typed silent,
		# so it is necessary to go to new line explicityly.
read -n 1 -s -p $'Control-j leaves cursor on next line. \x0a'
		#'0a' is the hex equivalent of Control-j, linefeed.
echo >&2

###

read -n 1 -s -p $'And control-K\x0bgoes straight down.'
echo >&2	# Control-K is vertical tab.

# A better example of the effect of vartical tab is:

var=$'\x0aThis is the bottom line\x0bThis is the top line\x0a'
echo "$var"

# This works the same way as the above exapmle. However:
echo "$var" | col
# This couses the right end of the line to be higher thatn the left end.
# it also explains why we started and ended with a line feed--
# to avoid a gargled screen.

# as lee Maschmeyer explains:
# the real pupose of VT is to go straight UP, not down
# it can be used to print superscripts on a printer.
# the col utility can be used to emulate the proper behaviour of VT.

exit 0

