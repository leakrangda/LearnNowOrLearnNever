#!/bin/bash

# posit-param3: script to display all arguments

count=1

while [[ $# -gt 0 ]]; do
	echo "argument $count = $1"
	count=$((count + 1))
	shift
done
