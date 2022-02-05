#!/usr/bin/bash

input=0
read -p 'angka:' input
angka=1

for i in $(seq 0 "$((input - 1))"); do
	for j in $(seq "$((input - i))"); do
		printf '%3d' "$angka"
		angka=$((angka + 1))
	done
	echo
done
