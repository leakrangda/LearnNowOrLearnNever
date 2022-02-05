.section .text
.globl _start
_start:
prologue:
	pushl %ebp
	movl %esp, %ebp
	pushl $-1
	call is_negative
	movl $1 , %eax
	int $0x80
