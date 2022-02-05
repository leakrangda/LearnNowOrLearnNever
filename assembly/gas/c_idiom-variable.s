# Global and static variable declared using .data or .bss entries. Local
# variables are declared by reserveing space on the stack at beginning of the 
# function. This space is given back at the end of the function.

# global variables are accessed differently than local variable in assembly
# language. Global variables are accessed using direct addressing, while
# local variable are accessed using base pointer addressing. For example, Consider
# the following C code:

# int my_global_var;
# int foo(){
#	int my_local_var;
#
#	my_local_var = 1;
#	my_global_var = 2;
#
#	return 0;
# }
#
# This would be rendered in assembly language as:
.section .data
	.lcomm my_global_var, 4
.type foo, @function
foo:
	pushl %ebp		# save old base pointer
	movl %esp, %ebp		# make stack pointer base pointer
	subl $4, %esp		# make room for my_local_var
	.equ my_local_var, -4	# can now use my_local_var to
				# find the local variable
	
	movl $1, my_local_var(%ebp)
	movl $2, my_global_var

	movl %ebp, %esp		# clean up function and return
	popl %ebp
	ret

