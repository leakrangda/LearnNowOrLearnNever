.section .data
.section .text
.globl _start
_start:
	pushl %ebp
	movl %esp,%ebp
	movl $0, %eax
	movl $30, %edx
loop:
	incl %eax
	cmpl %eax, %edx
	jge loop

	movl %eax, %ebx
	movl $1, %eax
	int $0x80
