#!/bin/bash

# array-sort: sort an array

a=(f e d c b a)

echo "Original array: ${a[@]}"

a_sorted=($(for i in "${a[@]}"; do echo $i; done | sort))
echo "sorted array: ${a_sorted[@]}"

