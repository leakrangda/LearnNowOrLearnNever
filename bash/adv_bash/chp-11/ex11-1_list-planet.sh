#!/bin/bash
# Listing the planets.

for planet in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
do
	echo $planet	# Each planet on a separate line
done

echo;echo

for planet in "Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"
	# All planets on same line.
	# Entire 'list' enclosed in quotes create a single variable.
	# Why? Whitespace incorporated into variable
do
	echo $planet
done

echo;echo "Whoops! Pluto is no longer a planet!"
echo now it is!.

exit 0
