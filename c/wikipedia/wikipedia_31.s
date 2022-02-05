	.file	"wikipedia_31.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"get string:"
	.align 8
.LC1:
	.string	"the string you want to concatenate:"
.LC2:
	.string	"first string:%s"
.LC3:
	.string	"second string:%s"
.LC4:
	.string	"final string:%s"
.LC5:
	.string	"shit happended"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "wikipedia_31.c"
	.loc 1 10 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.loc 1 15 0
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 16 0
	movq	stdin(%rip), %rdx
	leaq	-48(%rbp), %rax
	movl	$29, %esi
	movq	%rax, %rdi
	call	fgets
	.loc 1 17 0
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	.loc 1 18 0
	movq	stdin(%rip), %rdx
	leaq	-80(%rbp), %rax
	movl	$29, %esi
	movq	%rax, %rdi
	call	fgets
	.loc 1 20 0
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 21 0
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 22 0
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	length
	subl	$1, %eax
	cltq
	movb	$0, -48(%rbp,%rax)
	.loc 1 23 0
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	length
	subl	$1, %eax
	cltq
	movb	$0, -80(%rbp,%rax)
	.loc 1 24 0
	leaq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	concate
	movq	%rax, -8(%rbp)
	.loc 1 25 0
	cmpq	$0, -8(%rbp)
	je	.L2
	.loc 1 26 0
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	jmp	.L3
.L2:
	.loc 1 28 0
	movl	$.LC5, %edi
	call	puts
.L3:
	.loc 1 29 0
	movl	$0, %eax
	.loc 1 30 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC6:
	.string	"string yang akan dimasukan terlalu panjang"
	.text
	.globl	concate
	.type	concate, @function
concate:
.LFB1:
	.loc 1 32 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 33 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	length
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	length
	addl	%ebx, %eax
	cmpl	$29, %eax
	jle	.L6
	.loc 1 34 0
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	.loc 1 35 0
	movl	$0, %eax
	jmp	.L7
.L6:
.LBB2:
	.loc 1 39 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	length
	movl	%eax, -24(%rbp)
	.loc 1 40 0
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L8
.L9:
	.loc 1 40 0 is_stmt 0 discriminator 3
	addl	$1, -20(%rbp)
.L8:
	.loc 1 40 0 discriminator 1
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	subl	-24(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
.LBE2:
	.loc 1 43 0 is_stmt 1
	movq	-40(%rbp), %rax
.L7:
	.loc 1 44 0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	concate, .-concate
	.globl	length
	.type	length, @function
length:
.LFB2:
	.loc 1 46 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 48 0
	movl	$0, -4(%rbp)
	jmp	.L11
.L12:
	.loc 1 48 0 is_stmt 0 discriminator 3
	addl	$1, -4(%rbp)
.L11:
	.loc 1 48 0 discriminator 1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L12
	.loc 1 50 0 is_stmt 1
	movl	-4(%rbp), %eax
	.loc 1 51 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	length, .-length
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x392
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF56
	.byte	0xc
	.long	.LASF57
	.long	.LASF58
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x83
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x84
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf1
	.long	0x219
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf2
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xf7
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xf8
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xf9
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfa
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xfb
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x104
	.long	0x251
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x106
	.long	0x257
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x108
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x10c
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x10e
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x112
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x113
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x114
	.long	0x25d
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x118
	.long	0x26d
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x121
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12a
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x12b
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x12c
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x12d
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x12e
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x130
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x132
	.long	0x273
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x4
	.byte	0x96
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0x9c
	.long	0x251
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0x9d
	.long	0x251
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0x9e
	.long	0x257
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x220
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x26d
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x219
	.uleb128 0xb
	.long	0x95
	.long	0x283
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.byte	0x9
	.long	0x62
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.byte	0xb
	.long	0x2d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.long	.LASF47
	.byte	0x1
	.byte	0xc
	.long	0x2d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xe
	.long	.LASF48
	.byte	0x1
	.byte	0xd
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x2e0
	.uleb128 0xc
	.long	0x86
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x1
	.byte	0x1f
	.long	0x8f
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x34c
	.uleb128 0xf
	.long	.LASF51
	.byte	0x1
	.byte	0x1f
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.byte	0x1f
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.byte	0x26
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.long	.LASF54
	.byte	0x1
	.byte	0x27
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.byte	0x2d
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x38a
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.byte	0x2d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.byte	0x2f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF60
	.byte	0x5
	.byte	0xa8
	.long	0x257
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_old_offset"
.LASF23:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF33:
	.string	"_offset"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_base"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF53:
	.string	"index"
.LASF51:
	.string	"pointer1"
.LASF52:
	.string	"pointer2"
.LASF50:
	.string	"concate"
.LASF32:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF29:
	.string	"_cur_column"
.LASF45:
	.string	"_pos"
.LASF30:
	.string	"_vtable_offset"
.LASF41:
	.string	"_IO_FILE"
.LASF55:
	.string	"length"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF46:
	.string	"string1"
.LASF3:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF13:
	.string	"_IO_read_ptr"
.LASF2:
	.string	"short unsigned int"
.LASF57:
	.string	"wikipedia_31.c"
.LASF11:
	.string	"char"
.LASF49:
	.string	"main"
.LASF43:
	.string	"_next"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_end"
.LASF47:
	.string	"string2"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF54:
	.string	"size"
.LASF22:
	.string	"_IO_backup_base"
.LASF60:
	.string	"stdin"
.LASF56:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF48:
	.string	"pointer"
.LASF58:
	.string	"/home/ilhamrangda/restarea/c"
.LASF21:
	.string	"_IO_save_base"
.LASF26:
	.string	"_fileno"
.LASF44:
	.string	"_sbuf"
.LASF59:
	.string	"_IO_lock_t"
	.ident	"GCC: (Debian 5.4.0-4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
