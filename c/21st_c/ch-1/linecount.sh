# Count lines with a ;,),or,} and let that count be named Lines.
Lines=`grep '[;)}]' *.c | wc -l`

# Now count how many lines there are in a directory listing; name it Files
Files=`ls *c | wc -l`

echo files=$Files and lines=$Lines

# Arithmetic expansion is adoube-paren.
# In bash, the remainder is truncated; more on this later.
echo lines/file = $(($Lines/$Files))

# Or, use thos variables in a here script.
# Bye setting scale=3, answers are printed to 3 decimal places.
bc << ---
scale=3
$Lines/$files
---
