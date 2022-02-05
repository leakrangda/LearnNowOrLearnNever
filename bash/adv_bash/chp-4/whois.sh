#!/bin/bash
#ex18.sh

# does a 'whois domain-name' lookup on any of 3 alternate servers:
#			ripe.net, cw.net, radb.net

# place this script --renamed 'wh' -- in /usr/local/bin
# requires symbolic links:
# ln -s /usr/local/bin/wh /usr/local/bin/wh-ripe
# ln -s /usr/local/bin/wh /usr/local/bin/wh-apnic
# ln -s /usr/local/bin/wh /usr/local/bin/wh-tucows

E_NOARGS=75

if [ -z "$1" ]		# gak ada argument
then
	echo "usage: `basename $0` [domain-name]"
	exit $E_NOARGS
fi

# check script name and call proper server
case `basename $0` in 	# or${0##*/} in
	"wh"		) whois $1@whois.tucows.com;;
	"wh-ripe"	) whois $1@whois.ripe.net;;
	"wh-apnic"	) whois $1@whois.apnic.net;;
	"wh-cw"		) whois $1@whois.cw.net;;
	*		) echo "usage: `basename $0` [domain-name]";;
esac

exit $?

