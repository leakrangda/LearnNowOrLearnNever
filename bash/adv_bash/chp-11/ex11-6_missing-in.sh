#!/bin/bash

# Invoke this script both with and without arguments,
#+and see what happens.

for a
do

	echo "$a"
done

# The 'in llist' missing, therefore the loop operate on '$@'
#+ (command-line argument list, including whitespace).

echo

exit 0
