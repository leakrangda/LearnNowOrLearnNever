	.file	"tempconv.c"
	.text
	.globl	convert
	.type	convert, @function
convert:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	cvtsi2sd	-20(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -4(%rbp)
	movss	-4(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	convert, .-convert
	.section	.rodata
.LC2:
	.string	"\tTemperatur Conversion Chart"
.LC3:
	.string	"   %d\t\t%5.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	convert
	movd	%xmm0, %eax
	movl	%eax, -8(%rbp)
	cvtss2sd	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$10, -4(%rbp)
.L4:
	cmpl	$229, -4(%rbp)
	jle	.L5
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1077936128
	.align 8
.LC1:
	.long	3435973837
	.long	1073532108
	.ident	"GCC: (Debian 7.2.0-3) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
