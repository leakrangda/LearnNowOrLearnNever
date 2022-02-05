	.file	"1_lib.cpp"
	.section	.rodata
	.align 4
	.type	_ZL1a, @object
	.size	_ZL1a, 4
_ZL1a:
	.long	10
	.align 4
	.type	_ZL1b, @object
	.size	_ZL1b, 4
_ZL1b:
	.long	20
	.align 4
	.type	_ZL1c, @object
	.size	_ZL1c, 4
_ZL1c:
	.long	30
	.globl	array
	.bss
	.align 32
	.type	array, @object
	.size	array, 240
array:
	.zero	240
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
