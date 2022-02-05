# structs are simply descriptions of memory blocks. For example, in C you can say:
# struct person{
# char firstname[40];
# char lastname[40];
# int age;
# };
#

# this doesn't do anything by itself, except give you ways of intelligently using
# 84 bytes of data. You can do basically the same thing using .equ directives in
# assembly language. Like this:

.equ PERSON_SIZE, 84
.equ PERSON_FIRSTNAME_OFFSET, 0
.equ PERSON_LASTNAME_OFFSET, 40
.equ PERSON_AGE_OFFSET, 80

# When you delcare a variabl of this type, all you are doing is reserving 84 bytes
# of space. So, if you have this in C:

# void foo(){
#	struct person p;
#	/* Do struff here */
# }

# In assembly langauge you would have:
foo:
	# Standard header beginning for function
	pushl %ebp
	movl %esp, %ebp

	# Reserve our local variable
	subl $PERSON_SIZE, %esp
	# This is the variable's offset from %ebp
	.equ P_VAR, 0 - PERSON_SIZE

	# Do stuff here

	# Standard function ending
	movl %ebp, %esp
	popl %ebp
	ret
# To Access structure member, you just have to use base pointer addressing with
# the offsets defined above. For example, in C you could set the person's age like
# this:
#
# p.age = 30;
#
# In Assembly language it would look like this.
#
# 	movl $30, P_VAR + PERSON_AGE_OFFSET(%ebp)

