	.file	"regetest1.c"
	.section	.rodata
.LC0:
	.string	"The result is %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$10, -4(%rbp)
	movl	$20, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	%eax, %edx
#APP
# 9 "regetest1.c" 1
	imull %edx, %ecx
	movl %ecx, %eax
# 0 "" 2
#NO_APP
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.4.0-1) 6.4.0 20170704"
	.section	.note.GNU-stack,"",@progbits
