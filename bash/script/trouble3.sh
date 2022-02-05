#!/bin/bash

# trouble2: script ot demonstrate common errors

number=1

echo "number=$number"		#DEBUG
set -x		# turn on tracing
if [ $number = 1 ]; then
	echo "Number is equal to 1."
else
	echo "Number is not equal to 1."
fi
set +x 		# turn off tracing

