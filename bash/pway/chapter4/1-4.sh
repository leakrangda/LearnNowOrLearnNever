#!/usr/bin/bash

input=0
angka=1
read -p 'angka:' input

for i in $(seq "$input"); do
	for j in $(seq "$i"); do
		printf '%3d' "$j"
	done
	echo
done
