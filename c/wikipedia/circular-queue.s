	.file	"circular-queue.c"
	.text
.Ltext0:
	.comm	queue,10,8
	.comm	depan,4,4
	.comm	belakang,4,4
	.comm	counter,4,4
	.section	.rodata
.LC0:
	.string	"\n\nanimasi queue"
.LC1:
	.string	"----Circular------"
.LC2:
	.string	"------------------"
.LC3:
	.string	"pilihan:"
	.align 8
.LC4:
	.string	"1.insert\n2.delete\n3.reset\n4.cetak\n5.keluar"
.LC5:
	.string	"\n%c"
.LC6:
	.string	"masukan nilai:"
.LC7:
	.string	"anda telah mendelete %d\n"
.LC8:
	.string	"anda akan keluar, terimakasih"
	.align 8
.LC9:
	.string	"anda memasukan nilai salah, coba lagi"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "circular-queue.c"
	.loc 1 17 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 19 0
	movl	$1, -4(%rbp)
	.loc 1 21 0
	call	init
	.loc 1 22 0
	jmp	.L2
.L10:
	.loc 1 23 0
	movl	$.LC0, %edi
	call	puts
	.loc 1 24 0
	movl	$.LC1, %edi
	call	puts
	.loc 1 25 0
	movl	$.LC2, %edi
	call	puts
	.loc 1 26 0
	movl	$.LC3, %edi
	call	puts
	.loc 1 27 0
	movl	$.LC4, %edi
	call	puts
	.loc 1 28 0
	movl	$58, %edi
	call	putchar
	.loc 1 29 0
	leaq	-5(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	.loc 1 30 0
	movzbl	-5(%rbp), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cmpl	$5, %eax
	ja	.L3
	movl	%eax, %eax
	movq	.L5(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L5:
	.quad	.L3
	.quad	.L4
	.quad	.L6
	.quad	.L7
	.quad	.L8
	.quad	.L9
	.text
.L4:
	.loc 1 32 0
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	.loc 1 33 0
	leaq	-5(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	.loc 1 34 0
	movzbl	-5(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	insert
	.loc 1 35 0
	jmp	.L2
.L6:
	.loc 1 37 0
	call	delete
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	.loc 1 38 0
	jmp	.L2
.L7:
	.loc 1 40 0
	call	reset
	.loc 1 41 0
	jmp	.L2
.L8:
	.loc 1 43 0
	call	cetak
	.loc 1 44 0
	jmp	.L2
.L9:
	.loc 1 46 0
	movl	$.LC8, %edi
	call	puts
	.loc 1 47 0
	movl	$0, -4(%rbp)
	.loc 1 48 0
	jmp	.L2
.L3:
	.loc 1 50 0
	movl	$.LC9, %edi
	call	puts
	.loc 1 51 0
	nop
.L2:
	.loc 1 22 0
	cmpl	$0, -4(%rbp)
	jne	.L10
	.loc 1 54 0
	movl	$0, %eax
	.loc 1 55 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	init
	.type	init, @function
init:
.LFB1:
	.loc 1 57 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 58 0
	movl	$0, counter(%rip)
	movl	counter(%rip), %eax
	movl	%eax, depan(%rip)
	.loc 1 59 0
	movl	$-1, belakang(%rip)
	.loc 1 60 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	init, .-init
	.section	.rodata
.LC10:
	.string	"queue penuh\n."
	.text
	.globl	insert
	.type	insert, @function
insert:
.LFB2:
	.loc 1 62 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 63 0
	movl	counter(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, counter(%rip)
	cmpl	$9, %eax
	jg	.L14
	.loc 1 64 0
	movl	belakang(%rip), %eax
	leal	1(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, belakang(%rip)
	.loc 1 65 0
	movl	belakang(%rip), %eax
	cltq
	movzbl	-4(%rbp), %edx
	movb	%dl, queue(%rax)
	.loc 1 69 0
	jmp	.L16
.L14:
	.loc 1 68 0
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
.L16:
	.loc 1 69 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	insert, .-insert
	.section	.rodata
.LC11:
	.string	"queue kosong"
	.text
	.globl	delete
	.type	delete, @function
delete:
.LFB3:
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 72 0
	movl	counter(%rip), %eax
	leal	-1(%rax), %edx
	movl	%edx, counter(%rip)
	cmpl	$9, %eax
	jg	.L18
	.loc 1 73 0
	movl	depan(%rip), %eax
	leal	1(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, depan(%rip)
	.loc 1 74 0
	movl	depan(%rip), %eax
	cltq
	movzbl	queue(%rax), %eax
	jmp	.L17
.L18:
	.loc 1 77 0
	movl	$.LC11, %edi
	call	puts
.L17:
	.loc 1 78 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	delete, .-delete
	.section	.rodata
.LC12:
	.string	"queue telah dikosongkan!"
	.text
	.globl	reset
	.type	reset, @function
reset:
.LFB4:
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 81 0
	call	init
	.loc 1 82 0
	movl	$.LC12, %edi
	movl	$0, %eax
	call	printf
	.loc 1 83 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	reset, .-reset
	.section	.rodata
.LC13:
	.string	"%c "
	.text
	.globl	cetak
	.type	cetak, @function
cetak:
.LFB5:
	.loc 1 85 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 88 0
	movl	depan(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L22
.L24:
	.loc 1 89 0
	cmpl	$9, -4(%rbp)
	jne	.L23
	.loc 1 90 0
	movl	$0, -4(%rbp)
.L23:
	.loc 1 91 0 discriminator 2
	movl	-4(%rbp), %eax
	cltq
	movzbl	queue(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	.loc 1 88 0 discriminator 2
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
.L22:
	.loc 1 88 0 is_stmt 0 discriminator 1
	movl	counter(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L24
	.loc 1 93 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	cetak, .-cetak
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF21
	.byte	0xc
	.long	.LASF22
	.long	.LASF23
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF24
	.byte	0x1
	.byte	0x10
	.long	0x57
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1
	.uleb128 0x5
	.long	.LASF9
	.byte	0x1
	.byte	0x12
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x5
	.long	.LASF10
	.byte	0x1
	.byte	0x13
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0x38
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x3d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf6
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x3d
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x46
	.long	0x6c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x4f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x54
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x166
	.uleb128 0x5
	.long	.LASF15
	.byte	0x1
	.byte	0x56
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.long	.LASF16
	.byte	0x1
	.byte	0x57
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x6c
	.long	0x176
	.uleb128 0xc
	.long	0x65
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x5
	.long	0x166
	.uleb128 0x9
	.byte	0x3
	.quad	queue
	.uleb128 0xd
	.long	.LASF18
	.byte	0x1
	.byte	0x6
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	depan
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x7
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	belakang
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1
	.byte	0x8
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	counter
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF18:
	.string	"depan"
.LASF3:
	.string	"unsigned int"
.LASF11:
	.string	"init"
.LASF13:
	.string	"insert"
.LASF23:
	.string	"/home/ilhamrangda/restarea/c"
.LASF25:
	.string	"nilai"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"queue"
.LASF10:
	.string	"flag"
.LASF8:
	.string	"char"
.LASF1:
	.string	"unsigned char"
.LASF24:
	.string	"main"
.LASF15:
	.string	"count"
.LASF6:
	.string	"long int"
.LASF16:
	.string	"index"
.LASF22:
	.string	"circular-queue.c"
.LASF14:
	.string	"cetak"
.LASF20:
	.string	"counter"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF9:
	.string	"jawaban"
.LASF21:
	.string	"GNU C11 5.3.1 20160509 -mtune=generic -march=x86-64 -g"
.LASF19:
	.string	"belakang"
.LASF12:
	.string	"reset"
.LASF26:
	.string	"delete"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
	.ident	"GCC: (Debian 5.3.1-19) 5.3.1 20160509"
	.section	.note.GNU-stack,"",@progbits
