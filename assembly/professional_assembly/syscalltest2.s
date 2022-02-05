# syscalltest2.s - An example of getting a return value from a system call
.section .bss
	.lcomm pid, 4
	.lcomm uid, 4
	.lcomm gid, 4
.section .text
.globl _start
_start:
	movl $20, %eax		# getpid system call
	int $0x80
	movl %eax, pid		# save return value to pid

	movl $24, %eax		# getuid system call
	int $0x80
	movl %eax, uid		# save return value to uid

	movl $47, %eax		# getgid system call
	int $0x80
	movl %eax, gid		# save return value to gid

end:
	movl $1, %eax		# exit system call
	movl $0, %ebx		# return value to os
	int $0x80	
