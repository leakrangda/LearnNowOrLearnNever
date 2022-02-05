.section .data
buffer:
	.ascii "\0\0\0\0\0\0\0\0\0\0\0"
.section .text
.globl _start
_start:
	pushl %ebp		# push old ebp
	mov %esp, %ebp		# move esp, to current ebp
	pushl $3		# push second argument
	pushl $2		# push first argument
	call power		# push return address, and load power function
	addl $8, %esp		# move 8 byte to clear the local variable
	pushl %eax		# push %eax
	pushl $2		# push second argument
	pushl $5		# push first argument
	call power		# push return address, and load power function
	addl $8, %esp		# move 8 byte to clear the local variable
	popl %ebx		# pop the value (%eax) to the %ebx
	add %eax, %ebx		# add %eax and %ebx and save the result in %ebx

	pushl $8		# first argument, the base
	pushl $buffer		# second argument, the buffer data
	pushl %ebx		# third argument, the number being converted
	call integer2string	# call integer2string
	addl $12, %esp		# clear the local variable
	
	pushl $buffer		# get the caracter count for our system call
	call count_chars	# call count_chars
	addl $4, %esp		# clear local variable

	movl %eax, %edx		# the count goes in %edx for SYS_WRITE
	movl $1, %ebx		# 1 for stdout file stream
	movl $4, %eax		# move 1 to %eax
	movl $buffer, %ecx	# move the buffer address to %ecx	
	int $0x080		# interupt the kernel to exit (0x80)
	
	pushl $1		# 1 for stdout file stream
	call write_newline	# call write_newline function

	movl $1, %eax		# 1 in %eax for linux exit syscall
	movl $0, %ebx		# 0 in %ebx for linux return status
	int $0x80		# interupt the kernel for service

.type power, @function
power:
	pushl %ebp		# push old ebp
	mov %esp, %ebp		# move esp, to current ebp
	sub $4, %esp		# substract 4 to %esp, to make room for local var
	mov 8(%ebp), %ebx	# move first argument, to %ebx
	mov 12(%ebp), %ecx	# move second argument, to %ecx
	mov %ebx, -4(%ebp)	# move %ebx, to local var

	power_loop_start:
		cmp $1, %ecx		# compare 1 to %ecx
		je end_power		# if equal, jumps to end_power
		mov -4(%ebp), %eax	# move local var, to %eax
		imul %ebx, %eax		# multiply %ebx and %eax, save in %eax
		mov %eax, -4(%ebp)	# move %eax to local variable
		decl %ecx		# decrement %ecx
		jmp power_loop_start	# jump unconditionaly to power_loop_start

	end_power:
		mov -4(%ebp), %eax	# move local var to %eax
		mov %ebp, %esp		# move %ebp to %esp
		popl %ebp		# pop the old %ebp
		ret			# return to the next %eip
