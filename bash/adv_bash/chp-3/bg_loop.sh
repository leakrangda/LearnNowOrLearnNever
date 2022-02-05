#!/bin/bash
#background-loop.sh

for i in 1 2 3 4 5 6 7 8 10	#first loop.
do
	echo -n "$i "
done &	#run this loop in background.
	#will sometimes execute after second loop.

echo	#this 'echo' sometimes will not display.
for i in 11 12 13 14 15 16 17 18 19 20	#second loop.
do
	echo -n "$i "
done

echo	#this 'echo' sometimes will not display.
#======================================================

#the expected output from the script:
#1 2 3 4 5 6 7 8 9 10
#11 12 13 14 15 16 17 18 19 20

#sometimes though, you get:
#11 12 13 14 15 16 17 18 19 20
#1 2 3 4 5 6 7 8 9 10
#(the second 'echo' does'nt execute. Why?)

#occasionally also:
#1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
#(the second 'echo' does'nt execute. Why?)

#very rarely someting like:
#11 12 13 1 2 3 4 5 6 7 8 9 10 14 15 16 17 18 19 20
#the foreground loop preempts the background one.

exit 0

# nasimuddin ansari suggest adding sleep 1
#after the echo -n "$i" in lines 6 and 14,
#for some real fun.
