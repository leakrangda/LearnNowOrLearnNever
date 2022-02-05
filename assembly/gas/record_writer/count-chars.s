.type count_chars, @function
.globl count_chars

#this is where our one parameter is on the stack
.equ ST_STRING_START_ADDRESS, 8
count_chars:
	pushl %ebp
	movl %esp, %ebp
#counter start at zero
	movl $0, %ecx
# starting address of data
	movl ST_STRING_START_ADDRESS(%ebp), %edx
count_loop_begin:
# grab the current character
	movb (%edx), %al
# is it null?
	cmpb $0, %al
# if yes, we are done
	je count_loop_end
# otherwise, increment the counter and the pointer
	incl %ecx
	incl %edx
# go back to the beginning of the loop
	jmp count_loop_begin

count_loop_end:
# we are done. move the count into %eax
# and return.
	movl %ecx, %eax
	popl %ebp
	ret

