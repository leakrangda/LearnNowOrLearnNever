#!/bin/bash

angka=0
input=0
read -p "masukan angka:" input

for i in $(seq 1 "$input"); do
	for i in $(seq 1 "$input"); do
		angka=$((angka + 1))
		echo -n "$angka "
	done
	echo -e "\n"
done

