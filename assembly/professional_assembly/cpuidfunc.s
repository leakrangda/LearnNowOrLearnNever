# cpuidfunc.s - An example of retruning a staring value
.section .bss
	.comm output, 13
.section .text
.type cpuidfunc, @function
.globl cpuidfunc
cpuidfunc:
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx		# reserve EBX
	movl $0, %eax		# zeroing EAX
	cpuid
	movl $output, %edi	# move outuput address to EDI
	movl %ebx, (%edi)
	movl %edx, 4(%edi)
	movl %ecx, 8(%edi)
	movl $output, %eax
	popl %ebx
	movl %ebp, %esp
	popl %ebp
	ret	
