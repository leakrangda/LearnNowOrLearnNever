# Assembly language simpy requires pushing the argments to the function
# onto the stack in reverse order, and issuing a call instruction. After
# calling, the arguments are then popped back off of the stack. For example, 
# consider the C code:

# printf("The number is %d", 88);

# In Assembly, this would be:
.section .data
text_string:		# will be replaced with actual memory
	.ascii "The number is %d\0"
.section .text
.globl main
main:
	pushl $88
	pushl $text_string
	call printf
	popl %eax
	popl %eax	# %eax is just a dummy variable,
			# nothing is actually being done
			# with the value. you can also 
			# directly re-adjust %esp to the
			# proper location.
####
