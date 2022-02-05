#!/bin/bash

total=0

while true
do
	total=`expr $total + 1`
	token=$1
	echo $token
	shift
done
echo "total number of tokens processed: $total"
