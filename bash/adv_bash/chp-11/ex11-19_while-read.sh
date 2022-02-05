#!/bin/bash
# showing the use of read in while loop

cat $filename |		# Supply input from a file.
while read line		# As long as there is another line to read ...
do
	continue;
done

# ================== Snippet from "sd.sh" example script =============== #
while read value	# Read one data point at a time.
do
	rt=$(echo "scale=$SC; $rt + $value" | bc )
	(( ct++ ))
done

am=$(echo "scale=$SC; $rt / $ct" | bc)

echo $am; return $ct	# This function "returns" TWO values!
# Caution: This little trick will not work if $ct > 255 !
# To handle a larger number of data points,
#+simply comment out the "return $ct" above.
} <"$datafile"	# Feed in data file.
