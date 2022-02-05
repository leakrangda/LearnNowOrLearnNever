	.file	"Safecons.cpp"
	.section	.rodata
	.align 4
	.type	_ZL1i, @object
	.size	_ZL1i, 4
_ZL1i:
	.long	100
	.align 4
	.type	_ZL1j, @object
	.size	_ZL1j, 4
_ZL1j:
	.long	110
	.globl	address
	.section	.data.rel.local,"aw",@progbits
	.align 8
	.type	address, @object
	.size	address, 8
address:
	.quad	_ZL1j
	.globl	buf
	.bss
	.align 32
	.type	buf, @object
	.size	buf, 120
buf:
	.zero	120
	.section	.rodata
.LC0:
	.string	"type a character & CR:"
.LC1:
	.string	"%c\n"
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
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	call	getchar@PLT
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	addl	$65, %eax
	movb	%al, -2(%rbp)
	movsbl	-2(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
