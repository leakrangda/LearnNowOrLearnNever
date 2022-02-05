# IF in c
#
# if(a == b){
# /*true branch code here*/
# }
# else{
# /*false branch code here*/
# }
# /*at this point, reconverge*/
#
#
# in assembly, IF is :

.section .text
.globl, main
main:

# Move a and b into registers for comparison
	movl a, %eax
	movl b, %ebx

# Compare
	cmpl %eax, %ebx

# If true, go to true branch
	je true_branch

false_branch: 	# this lable is unnacessary,
		# only here for documentation / clarity.
# false Branch code here:

# Jump to reconverge point
	jmp reconverge
true_branch:
# true branch code here:

reconverge:
	# Both branches reconverge
