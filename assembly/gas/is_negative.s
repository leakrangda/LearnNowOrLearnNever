.section .text
	.equ	ST_ARG, 8
	.type is_negative, @function 
	.globl is_negative
is_negative:
prologue:
	pushl %ebp
	movl %esp, %ebp
routine:
	movl ST_ARG(%ebp), %eax
	cmpl $0, %eax
	jl negative
	movl $0, %ebx
epilogue:
	movl %ebp, %esp
	popl %ebp
	ret
negative:
	movl $1, %ebx
	jmp epilogue
