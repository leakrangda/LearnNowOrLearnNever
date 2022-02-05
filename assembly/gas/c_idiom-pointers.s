# Pointers are very easy. Remember, pointers are simply the address that a value
# resides at. Let/'s start by taking a look at global variables. For example:
#
# int global_data = 30;
#
# In assembly language, this would be:
#
.section .data
global_data:
	.long 30

# Taking the address of this data in C:
#
# a = &global_data;
#
# Taking the address of this data in assembly language:
#
	movl $global_data, %eax
#
# you see, with assembly language, you are almost always accessing memory
# through pointers. That's what direct addressing is. To get the pointer itself,
# you just have to go with immediate mode addressing.

# local variables are a little more difficult, but not much. Here is how you
# take the address of a local variable in C:
#
# void foo(){
#	int a;
#	int *b;
#
#	a = 30;
#	b = &a;
#	*b = 44;
# }
#
# The same code in assembly language:
foo:
	# standard opening
	pushl %ebp
	movl %esp, %ebp

	# Resever two words of memory
	subl $8, %esp
	.equ A_VAR, -4
	.equ B_VAR, -8

	#a = 30
	movl $30, A_VAR(%ebp)

	#b = &a
	movl $A_VAR, B_VAR(%ebp)
	addl %ebp, B_VAR(%ebp)

	#*b = 30
	movl B_VAR(%ebp), %eax
	movl $30, (%eax)

	# Standard closing
	movl %ebp, %esp
	popl %ebp
	ret
# As you can see, to take the address of a local variable, the address has to be
# computed the same way the computer compute the address in base pointer addressing
# . There is an easier way - the processor provides the instruction leal, which
# stands for "load efective address". This lets the computer compute the address,
# and the load it wherever you want. So, we could just say:
	#b - &a
	leal A_VAR(%ebp), %eax
	movl %eax, B_VAR(%ebp)
# it's the same number of lines, but a litter cleaner. Then to use this value, you
# simply have to move it to a general-purpose register and use indirect addressing,
# as shown in the example above.
