# readtest2.s - A more complicated example of reading data from a file
.section .bss
	.lcomm buffer, 10
	.lcomm filehandle, 4
.section .text
.globl _start
_start:
	movl %esp, %ebp		# set ESP to EBP
	movl $5, %eax		# open syscall 
	movl 8(%ebp), %ebx	# filename
	movl $00, %ecx		# open mode
	movl $0444, %edx	# file permission
	int $0x80		# interupt
	test %eax, %eax		# flag testing
	js badfile		# jump if signed
	movl %eax, filehandle	#

read_loop:
	movl $3, %eax		# read syscall
	movl filehandle, %ebx	# file descriptor
	movl $buffer, %ecx	# buffer address
	movl $10, %edx		# length to read
	int $0x80		# interupt
	test %eax, %eax		# flag testing
	jz done			# done if zero
	js done			# done if signed
	movl %eax, %edx		# move length
	movl $4, %eax		# write syscall
	movl $1, %ebx		# file descriptor
	int $0x80
	test %eax, %eax		# flag testing
	js badfile		# jump if signed
	jmp read_loop		# re-read file
done:
	movl %eax, %eax		# close syscall
	movl filehandle, %ebx	# file descriptor
	int $0x80		# interupt
badfile:
	movl %eax, %ebx		# move return value to EBX
	movl $1, %eax		# exit syscall
	int $0x80		# interupt
