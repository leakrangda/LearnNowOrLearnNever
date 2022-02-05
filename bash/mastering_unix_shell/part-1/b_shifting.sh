#!/bin/bash

total=0

while true
do
	total=`expr $total + 1`
	token=$1
	echo $token
	shift
	trap 'echo -e "\nexiting on a trapped signal";exit' 1 2 3 15
done
echo "total number of tokens processed: $total"
