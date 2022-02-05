#!/usr/bin/bash
input=0

read -p 'angka:' input
angka=$((input * input))

for i in $(seq "$input"); do
	for j in $(seq "$input"); do
		printf '%3d' "$((angka - input + j))"
	done
	angka=$((angka - input))
	echo
done
