#!/bin/bash

# modulo2: doemonstrate the modulo operator

for (( i= 0; i <= 20; ++i )); do
	remainder=$((i % 5))
	if (( remainder == 0 ));then
		printf "<%d> " $i
	else
		printf "%d " $i
	fi
done
printf "\n"
