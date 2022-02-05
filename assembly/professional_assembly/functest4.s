# functext4.s - An example of using external functions
.section .data
precision:
	.byte 0x7f, 0x00
.section .bss
	.lcomm result, 4
.section .text
.globl _start
_start:
	finit		# inintialize FPU
	fldcw precision # load 2 byte memory to FPU control Flag

	pushl $10	# push 10 value to stack as argument
	call area	# call function: area
	addl $4, %esp	# clean the argument for function
	movl %eax, result	# copy the EAX value to result
	
	pushl $2	# push 2 value to stack as argument
	call area	# call function: area
	addl $4, %esp	# clean the argument for function
	movl %eax, result	# copy the EAX value to result

	pushl $120	# push 120 value to stack as argument
	call area	# call function: area
	addl $4, %esp	# clean the argument for function
	movl %eax, result	# copy the EAX value to result

	movl $1, %eax
	movl $0, %ebx
	int $0x80
