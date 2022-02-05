.section .data
.section .text
.globl _start
_start:
	pushl %ebp		# push old ebp
	mov %esp, %ebp		# move esp, to current ebp
	pushl $3		# push second argument
	pushl $2		# push first argument
	call power		# push return address, and load power function
	add $8, %esp		# move 8 byte to clear the local variable
	pushl %eax		# push %eax
	pushl $2		# push second argument
	pushl $5		# push first argument
	call power		# push return address, and load power function
	add $8, %esp		# move 8 byte to clear the local variable
	popl %ebx		# pop the value (%eax) to the %ebx
	add %eax, %ebx		# add %eax and %ebx and save the result in %ebx
	mov $1, %eax		# move 1 to %eax
	int $0x080		# interupt the kernel to exit (0x80)

.type power, @function
power:
	pushl %ebp		# push old ebp
	mov %esp, %ebp		# move esp, to current ebp
	sub $4, %esp		# substract 4 to %esp, to make room for local var
	mov 8(%ebp), %ebx	# move first argument, to %ebx
	mov 12(%ebp), %ecx	# move second argument, to %ecx
	mov %ebx, -4(%ebp)	# move %ebx, to local var
	decl %ecx		# decrement %ecx

	power_loop_start:
		cmp $0, %ecx		# compare 1 to %ecx
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
