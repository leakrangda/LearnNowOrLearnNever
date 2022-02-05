#!/bin/bash

# file_info: simple file information program

PROGNAME=$(basename $0)

if [[ -e $1 ]]; then
	echo -e "\nFile type:"
	file $1
	echo -e "\nFile status:"
	stat $1
else
	echo "$PROGNAME: usage: $PROGNAME file" >&2
	exit 1
fi
