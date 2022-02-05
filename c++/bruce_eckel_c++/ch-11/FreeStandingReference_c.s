	.file	"FreeStandingReference.c"
	.comm	y,4,4
	.globl	r
	.section	.data.rel.local,"aw",@progbits
	.align 8
	.type	r, @object
	.size	r, 8
r:
	.quad	y
	.globl	q
	.data
	.align 8
	.type	q, @object
	.size	q, 8
q:
	.quad	12
	.globl	x
	.bss
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.zero	4
	.globl	a
	.section	.data.rel.local
	.align 8
	.type	a, @object
	.size	a, 8
a:
	.quad	x
	.section	.rodata
.LC0:
	.string	"x = %d, a = %d\n"
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
	movq	a(%rip), %rax
	movl	(%rax), %edx
	movl	x(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	a(%rip), %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	a(%rip), %rax
	movl	(%rax), %edx
	movl	x(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
