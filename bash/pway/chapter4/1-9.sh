#!/usr/bin/bash

input=0
read -p 'angka:' input

for i in $(seq 0 "$((input - 1))"); do
	for j in $(seq 0 "$((input - 1))"); do
		printf '%3d' "$((j + i + 1))"
	done
	echo
done
