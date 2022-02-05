.section .text
.type factorial, @function
factorial:
	pushl %ebp		# push old %ebp
	movl %esp, %ebp		# move %esp to %ebp
	movl 8(%ebp), %eax	# move first argument to %eax
	cmpl $1, %eax		# compare 1 to %eax
	je end_factorial	# if it is equal, we hit the base case, jump
	decl %eax		# decrement the %eax
	pushl %eax		# push again %eax for argument to recursive call
	call factorial		# call the factorial function
	movl 8(%ebp), %ebx	# move the argument to %ebp
	imull %ebx, %eax	# multiply the %ebx with $eax, with result in %eax

end_factorial:
	movl %ebp, %esp # move the %ebp to %esp
	popl %ebp	# pop the old %ebp
	ret		# return to next %eip
