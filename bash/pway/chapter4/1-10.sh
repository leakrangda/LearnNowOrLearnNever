#!/usr/bin/bash

input=0
read -p 'angka:' input
angka=1

for i in $(seq 0 "$((input - 1))"); do
	for j in $(seq 0 "$((input - 2 - i))"); do
		printf '%3s' " "
	done
	for j in $(seq 0 "$i"); do
		printf '%3d' "$angka"
		angka=$((angka + 1))
	done
	echo
done
