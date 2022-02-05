# paramtest2.s - Listing system environment variables
.section .data
output:
	.asciz "%s\n"
.section .text
.globl _start
_start:
	movl %esp, %ebp		# copy the ESP value to EBP
	addl $12, %ebp		# step back through 12 byte to back of stack
loop1:
	cmpl $0, (%ebp)		# compare value referenced by EBP with 0
	je endit		# jump to endit label if equal
	pushl (%ebp)		# push the value referenced by EBP
	pushl $output		# push the memory of output
	call printf		# call function: printf
	addl $12, %esp		# step back through 12 byte to back of stack
	addl $4, %ebp		# step back through 4 byte 
	loop loop1
endit:
	pushl $0
	call exit
