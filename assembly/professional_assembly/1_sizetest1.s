# sizetest1.s - A sample program to view the executable size

.section .text
.globl _start
_start:
	movl $1, %eax		# exit kernel function
	movl $0, %ebx		# return value
	int $0x80
