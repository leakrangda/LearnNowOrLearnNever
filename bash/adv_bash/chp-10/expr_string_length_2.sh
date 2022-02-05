#!
string=abcABC123ABCabc

# expr match "$string" "$substring"
echo `expr match "$string" 'abc[A-Z]*.2'`	# 8

# expr "$string" : '$substring'
echo `expr $string : abc[A-Z]*.2`		# 8

