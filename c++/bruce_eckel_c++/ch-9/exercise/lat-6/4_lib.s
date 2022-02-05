	.file	"4_lib.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.align 4
	.type	_ZL5limit, @object
	.size	_ZL5limit, 4
_ZL5limit:
	.long	35100
	.section	.text._Z2f2v,"axG",@progbits,_Z2f2v,comdat
	.weak	_Z2f2v
	.type	_Z2f2v, @function
_Z2f2v:
.LFB1458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -4(%rbp)
.L5:
	cmpl	$35099, -4(%rbp)
	jg	.L6
	movl	$0, -8(%rbp)
.L4:
	cmpl	$35099, -8(%rbp)
	jg	.L3
	addl	$1, -8(%rbp)
	jmp	.L4
.L3:
	addl	$1, -4(%rbp)
	jmp	.L5
.L6:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1458:
	.size	_Z2f2v, .-_Z2f2v
	.section	.rodata
	.align 8
.LC0:
	.string	"non inline func() time elapsed:"
.LC1:
	.string	"inline time elapsed:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	clock@PLT
	movq	%rax, -8(%rbp)
	call	_Z2f1v@PLT
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	difftime@PLT
	movsd	%xmm0, -24(%rbp)
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movsd	-24(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	call	clock@PLT
	movq	%rax, -8(%rbp)
	call	_Z2f2v
	call	clock@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	difftime@PLT
	movsd	%xmm0, -24(%rbp)
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movsd	-24(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1459:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1904:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L11
	cmpl	$65535, -8(%rbp)
	jne	.L11
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1904:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB1905:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1905:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
