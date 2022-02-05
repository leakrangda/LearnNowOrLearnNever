	.file	"ConstPointers.cpp"
	.globl	u
	.bss
	.align 8
	.type	u, @object
	.size	u, 8
u:
	.zero	8
	.globl	v
	.align 8
	.type	v, @object
	.size	v, 8
v:
	.zero	8
	.globl	d
	.data
	.align 4
	.type	d, @object
	.size	d, 4
d:
	.long	1
	.section	.data.rel.ro.local,"aw",@progbits
	.align 8
	.type	_ZL1w, @object
	.size	_ZL1w, 8
_ZL1w:
	.quad	d
	.align 8
	.type	_ZL1x, @object
	.size	_ZL1x, 8
_ZL1x:
	.quad	d
	.align 8
	.type	_ZL2x2, @object
	.size	_ZL2x2, 8
_ZL2x2:
	.quad	d
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
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
