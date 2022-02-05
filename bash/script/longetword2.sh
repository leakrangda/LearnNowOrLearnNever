#!/bin/bash

# longest-word2: fine longest string in file

for i; do
	if [[ -r $1 ]]; then
		max_word=""
		max_len=0
		for j in $(strings $1); do
			len=$(echo -n $j | wc -c)
			if (( len > max_len )); then
				max_len=$len
				max_word=$j
			fi
		done
		echo "$1: '$max_word ($max_len characters)'"
	fi
	shift
done
