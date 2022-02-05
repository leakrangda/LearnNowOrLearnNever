#!/usr/bin/bash

input=0
angka=1
read -p 'angka:' input

for i in $(seq "$input"); do
	for j in $(seq "$input"); do
		printf '%3d' "$angka"
		angka=$((angka + 2))
	done
	echo
done
