.section .data
.section .text
.globl _start
_start:

movl $1, %eax		# exit system call $1
movl $0, %ebx		# return value/exit status $0
int  $0x80		# interupt number
