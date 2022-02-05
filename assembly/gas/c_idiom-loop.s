# Loops work a lot like if statements in assembly language - the blocks are formed
# by jumping around. in C, a while loop consists of a loop body, and a test to 
# termine whether or not it is time to exit the loop. A FOR loop is exactly the 
# same, with optional initialization and counter-increment section. These can 
# simply be moved around to make a while loop.

# in C, a while loop looks like this:
#
# while(a < b){
# /*do stuff here*/
# }
#
# /*finished*/

# This can be rendered in assembly language like this:

loop_begin:
	movl a, %eax
	movl b, %ebx
	cmpl %eax, %ebx
	jge loop_end
loop_body:
	# Do stuff here

	jmp loop_begin

loop_end:
	# finished looping

# The x86 assembly language has some direct support for looping as well. The %ecx
# register can be used as a coutner that ends with zero. The loop instruction will
# decrement %ecx and jump to a specified address unless %ecx is zero. For example
# if you wanted to execute a stement 100 times, you would do this in C:
#
# for(i = 0; i < 100; i++){
#	/*do process here*/
# }
#
# in assembly language it sould be written like this:
#
loop_initialize:
	movl $100, %ecx
loop_begin:
	#
	# Do process here
	# 

	# Decrement %ecx and loops if not zero
	loop loop_begin
rest_of_program:
	# continues on to here

# One thing to notice is that the LOOP instruction REQUIRE YOU TO COUNTING
# BACKWORD TO ZERO. if you need to count forward or use another ending number,
# you should use the loop form which does not include the LOOP instruction.

