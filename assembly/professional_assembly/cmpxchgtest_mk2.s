# cmpxchgtest.s - An example of the cmpxchg instruction

.section .data
data:
	.int 7
.section .text
.globl _start
_start:
	movl $10, %eax
	movl $5, %ebx
	cmpxchg %ebx, data
	movl $1, %eax
	int $0x80
