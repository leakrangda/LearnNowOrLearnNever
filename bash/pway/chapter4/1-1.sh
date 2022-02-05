#!/usr/bin/env bash

number=0
angka=0
read -p 'angka:' number

for i in $(seq "$number")
do
	for j in $(seq "$number") 
	do
		printf '%3d' "$((angka + 1))"
		angka=$((angka + 1))
	done
	echo
done
