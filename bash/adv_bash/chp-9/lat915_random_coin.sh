#!/bin/bash

RANDOM=$$

HEADS=0
TAILS=0

RANGE=2
MAXFLIP=100
declare -i count=0

flip_coin(){
	while [ $count -lt $MAXFLIP ]; do 
		case $((RANDOM%RANGE)) in
			0) ((HEADS++));;
			*) ((TAILS++));;
		esac
		((count++))
	done
}
show_result(){
	echo	"--------------"
	echo	"HEADS = $HEADS"
	echo	"TAILS = $TAILS"
	echo	"--------------"
}

flip_coin && show_result

exit 0
