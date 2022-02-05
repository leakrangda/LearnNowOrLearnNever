#!/bin/bash

AWKSCRIPT='{srand(); print rand()}'

for i in `seq 10`;do
	echo | awk "{srand($i); print rand()}"
done
