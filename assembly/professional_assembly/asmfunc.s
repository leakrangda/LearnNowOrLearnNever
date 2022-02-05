# asmfunc.s - An example of a simple assembly language function
.section .data
testdata:
	.ascii "This is test message from the asm function\n"
datasize:
	.int 45
.section .text
.type asmfunc, @function
asmfunc:
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl $4, %eax			# write syscall
	movl $1, %ebx			# file descriptor 1 for stdout
	movl $testdata, %ecx		# memory address of buffer
	movl datasize, %edx		# length of data to be passed
	int $0x80			# linux interupt kernel call

	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret

