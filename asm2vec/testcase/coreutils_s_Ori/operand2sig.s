	.file	"operand2sig.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"abcdefghijklmnopqrstuvwxyz"
.LC1:
	.string	"%s: invalid signal"
	.text
	.globl	operand2sig
	.type	operand2sig, @function
operand2sig:
.LFB46:
	.file 1 "src/operand2sig.c"
	.loc 1 37 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 1 37 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 40 7
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 1 40 6
	cmpl	$9, %eax
	ja	.L2
.LBB2:
	.loc 1 54 21
	call	__errno_location@PLT
	.loc 1 54 27
	movl	$0, (%rax)
	.loc 1 54 32
	leaq	-56(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -32(%rbp)
	.loc 1 55 11
	movq	-32(%rbp), %rax
	movl	%eax, -60(%rbp)
	.loc 1 56 25
	movq	-56(%rbp), %rax
	.loc 1 56 66
	cmpq	%rax, -72(%rbp)
	je	.L3
	.loc 1 56 36 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 56 33 discriminator 1
	testb	%al, %al
	jne	.L3
	.loc 1 56 45 discriminator 3
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 1 56 42 discriminator 3
	testl	%eax, %eax
	jne	.L3
	.loc 1 56 56 discriminator 5
	movl	-60(%rbp), %eax
	cltq
	.loc 1 56 51 discriminator 5
	cmpq	%rax, -32(%rbp)
	jne	.L3
	.loc 1 56 66 discriminator 7
	movl	-60(%rbp), %eax
	jmp	.L4
.L3:
	.loc 1 56 66 is_stmt 0 discriminator 8
	movl	$-1, %eax
.L4:
	.loc 1 56 14 is_stmt 1 discriminator 10
	movl	%eax, -64(%rbp)
	.loc 1 58 18 discriminator 10
	movl	-64(%rbp), %eax
	.loc 1 58 10 discriminator 10
	cmpl	$-1, %eax
	je	.L8
	.loc 1 63 28
	movl	-64(%rbp), %eax
	.loc 1 63 43
	cmpl	$254, %eax
	jle	.L6
	.loc 1 63 43 is_stmt 0 discriminator 1
	movl	$255, %edx
	jmp	.L7
.L6:
	.loc 1 63 43 discriminator 2
	movl	$127, %edx
.L7:
	.loc 1 63 18 is_stmt 1 discriminator 4
	movl	-64(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, -64(%rbp)
	jmp	.L8
.L2:
.LBE2:
.LBB3:
	.loc 1 70 23
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -40(%rbp)
	.loc 1 72 14
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 1 72 7
	jmp	.L9
.L11:
	.loc 1 73 51
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 73 13
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	call	strchr@PLT
	.loc 1 73 12
	testq	%rax, %rax
	je	.L10
	.loc 1 74 14
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	subl	$32, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
.L10:
	.loc 1 72 30 discriminator 2
	addq	$1, -48(%rbp)
.L9:
	.loc 1 72 25 discriminator 1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 72 7 discriminator 1
	testb	%al, %al
	jne	.L11
	.loc 1 78 13
	leaq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	str2sig@PLT
	.loc 1 78 10
	testl	%eax, %eax
	je	.L12
	.loc 1 79 24 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 78 11 discriminator 1
	cmpb	$83, %al
	jne	.L13
	.loc 1 79 45
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 79 35
	cmpb	$73, %al
	jne	.L13
	.loc 1 79 66 discriminator 1
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 79 56 discriminator 1
	cmpb	$71, %al
	jne	.L13
	.loc 1 80 37
	movq	-40(%rbp), %rax
	leaq	3(%rax), %rdx
	.loc 1 80 20
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	str2sig@PLT
	.loc 1 80 17
	testl	%eax, %eax
	je	.L12
.L13:
	.loc 1 81 16
	movl	$-1, -64(%rbp)
.L12:
	.loc 1 83 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L8:
.LBE3:
	.loc 1 86 14
	movl	-64(%rbp), %eax
	.loc 1 86 6
	testl	%eax, %eax
	js	.L14
	.loc 1 86 21 discriminator 1
	movl	-64(%rbp), %eax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sig2str@PLT
	.loc 1 86 18 discriminator 1
	testl	%eax, %eax
	je	.L15
.L14:
	.loc 1 88 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 1 88 20
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	.loc 1 88 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 89 14
	movl	$-1, %eax
	jmp	.L17
.L15:
	.loc 1 92 10
	movl	-64(%rbp), %eax
.L17:
	.loc 1 93 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L18
	.loc 1 93 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L18:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	operand2sig, .-operand2sig
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "./lib/sys/select.h"
	.file 9 "/usr/include/signal.h"
	.file 10 "/usr/include/time.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/errno.h"
	.file 14 "src/version.h"
	.file 15 "./lib/exitfail.h"
	.file 16 "./lib/version-etc.h"
	.file 17 "./lib/progname.h"
	.file 18 "./lib/quotearg.h"
	.file 19 "./lib/error.h"
	.file 20 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5d8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF99
	.byte	0xc
	.long	.LASF100
	.long	.LASF101
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x96
	.uleb128 0x9
	.long	.LASF102
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x229
	.uleb128 0xa
	.long	.LASF11
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0xa
	.long	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x90
	.byte	0x58
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x242
	.byte	0x60
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x248
	.byte	0x68
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x78
	.byte	0x78
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x24e
	.byte	0x83
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x25e
	.byte	0x88
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x84
	.byte	0x90
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x269
	.byte	0x98
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x274
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x248
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x27a
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xa2
	.uleb128 0xb
	.long	.LASF103
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF41
	.uleb128 0x7
	.byte	0x8
	.long	0x23d
	.uleb128 0x7
	.byte	0x8
	.long	0xa2
	.uleb128 0xd
	.long	0x96
	.long	0x25e
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x235
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x7
	.byte	0x8
	.long	0x264
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x26f
	.uleb128 0xd
	.long	0x96
	.long	0x28a
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x9d
	.uleb128 0x8
	.long	0x28a
	.uleb128 0xf
	.long	.LASF44
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2a1
	.uleb128 0x7
	.byte	0x8
	.long	0x229
	.uleb128 0xf
	.long	.LASF45
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF46
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x290
	.long	0x2d6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2cb
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2d6
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.byte	0x1f
	.byte	0x1a
	.long	0x2d6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF51
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF52
	.uleb128 0x11
	.long	.LASF53
	.byte	0x8
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x321
	.uleb128 0xd
	.long	0x290
	.long	0x338
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x328
	.uleb128 0x11
	.long	.LASF55
	.byte	0x9
	.value	0x11e
	.byte	0x1a
	.long	0x338
	.uleb128 0x11
	.long	.LASF56
	.byte	0x9
	.value	0x11f
	.byte	0x1a
	.long	0x338
	.uleb128 0xd
	.long	0x90
	.long	0x367
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF57
	.byte	0xa
	.byte	0x9f
	.byte	0xe
	.long	0x357
	.uleb128 0xf
	.long	.LASF58
	.byte	0xa
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF59
	.byte	0xa
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa
	.byte	0xa6
	.byte	0xe
	.long	0x357
	.uleb128 0xf
	.long	.LASF61
	.byte	0xa
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF62
	.byte	0xa
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF63
	.byte	0xa
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x11
	.long	.LASF64
	.byte	0xb
	.value	0x21f
	.byte	0xf
	.long	0x3c9
	.uleb128 0x7
	.byte	0x8
	.long	0x90
	.uleb128 0x11
	.long	.LASF65
	.byte	0xb
	.value	0x221
	.byte	0xf
	.long	0x3c9
	.uleb128 0xf
	.long	.LASF66
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF67
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF68
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF69
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0x2d
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0x2e
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF72
	.byte	0xe
	.byte	0x1
	.byte	0x14
	.long	0x28a
	.uleb128 0xf
	.long	.LASF73
	.byte	0xf
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0xd
	.long	0x9d
	.long	0x447
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x43c
	.uleb128 0xf
	.long	.LASF74
	.byte	0x10
	.byte	0x19
	.byte	0x13
	.long	0x447
	.uleb128 0xf
	.long	.LASF75
	.byte	0x11
	.byte	0x20
	.byte	0x14
	.long	0x28a
	.uleb128 0x13
	.long	.LASF104
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x12
	.byte	0x20
	.byte	0x6
	.long	0x4b9
	.uleb128 0x14
	.long	.LASF76
	.byte	0
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.uleb128 0x14
	.long	.LASF78
	.byte	0x2
	.uleb128 0x14
	.long	.LASF79
	.byte	0x3
	.uleb128 0x14
	.long	.LASF80
	.byte	0x4
	.uleb128 0x14
	.long	.LASF81
	.byte	0x5
	.uleb128 0x14
	.long	.LASF82
	.byte	0x6
	.uleb128 0x14
	.long	.LASF83
	.byte	0x7
	.uleb128 0x14
	.long	.LASF84
	.byte	0x8
	.uleb128 0x14
	.long	.LASF85
	.byte	0x9
	.uleb128 0x14
	.long	.LASF86
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x464
	.uleb128 0x11
	.long	.LASF87
	.byte	0x12
	.value	0x10b
	.byte	0x1a
	.long	0x2d6
	.uleb128 0xd
	.long	0x4b9
	.long	0x4d6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x4cb
	.uleb128 0x11
	.long	.LASF88
	.byte	0x12
	.value	0x10c
	.byte	0x21
	.long	0x4d6
	.uleb128 0xf
	.long	.LASF89
	.byte	0x13
	.byte	0x32
	.byte	0xf
	.long	0x322
	.uleb128 0xf
	.long	.LASF90
	.byte	0x13
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF91
	.byte	0x13
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF92
	.uleb128 0xf
	.long	.LASF93
	.byte	0x14
	.byte	0x19
	.byte	0x1f
	.long	0x50c
	.uleb128 0x15
	.long	.LASF105
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	0x65
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.byte	0x24
	.byte	0x1a
	.long	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.byte	0x24
	.byte	0x29
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.long	.LASF96
	.byte	0x1
	.byte	0x26
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x5ac
	.uleb128 0x17
	.long	.LASF97
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.string	"l"
	.byte	0x1
	.byte	0x36
	.byte	0x10
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x37
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x1a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x17
	.long	.LASF98
	.byte	0x1
	.byte	0x46
	.byte	0xd
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x47
	.byte	0xd
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
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
	.uleb128 0x39
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x39
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF80:
	.string	"shell_escape_always_quoting_style"
.LASF67:
	.string	"optind"
.LASF66:
	.string	"optarg"
.LASF27:
	.string	"_old_offset"
.LASF65:
	.string	"environ"
.LASF75:
	.string	"program_name"
.LASF88:
	.string	"quoting_style_vals"
.LASF47:
	.string	"sys_nerr"
.LASF22:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF95:
	.string	"signame"
.LASF103:
	.string	"_IO_lock_t"
.LASF32:
	.string	"_offset"
.LASF57:
	.string	"__tzname"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF18:
	.string	"_IO_buf_base"
.LASF36:
	.string	"_freeres_buf"
.LASF64:
	.string	"__environ"
.LASF23:
	.string	"_markers"
.LASF56:
	.string	"sys_siglist"
.LASF62:
	.string	"timezone"
.LASF61:
	.string	"daylight"
.LASF97:
	.string	"endp"
.LASF50:
	.string	"_sys_errlist"
.LASF87:
	.string	"quoting_style_args"
.LASF46:
	.string	"stderr"
.LASF69:
	.string	"optopt"
.LASF51:
	.string	"long long int"
.LASF101:
	.string	"/root/coreutils"
.LASF92:
	.string	"quoting_options"
.LASF59:
	.string	"__timezone"
.LASF31:
	.string	"_lock"
.LASF58:
	.string	"__daylight"
.LASF6:
	.string	"long int"
.LASF63:
	.string	"getdate_err"
.LASF83:
	.string	"escape_quoting_style"
.LASF28:
	.string	"_cur_column"
.LASF90:
	.string	"error_message_count"
.LASF49:
	.string	"_sys_nerr"
.LASF85:
	.string	"clocale_quoting_style"
.LASF102:
	.string	"_IO_FILE"
.LASF52:
	.string	"long double"
.LASF70:
	.string	"program_invocation_name"
.LASF2:
	.string	"unsigned char"
.LASF78:
	.string	"shell_always_quoting_style"
.LASF86:
	.string	"custom_quoting_style"
.LASF93:
	.string	"quote_quoting_options"
.LASF4:
	.string	"signed char"
.LASF89:
	.string	"error_print_progname"
.LASF54:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned int"
.LASF41:
	.string	"_IO_marker"
.LASF30:
	.string	"_shortbuf"
.LASF13:
	.string	"_IO_read_end"
.LASF104:
	.string	"quoting_style"
.LASF15:
	.string	"_IO_write_base"
.LASF39:
	.string	"_unused2"
.LASF74:
	.string	"version_etc_copyright"
.LASF12:
	.string	"_IO_read_ptr"
.LASF25:
	.string	"_fileno"
.LASF55:
	.string	"_sys_siglist"
.LASF19:
	.string	"_IO_buf_end"
.LASF77:
	.string	"shell_quoting_style"
.LASF79:
	.string	"shell_escape_quoting_style"
.LASF81:
	.string	"c_quoting_style"
.LASF98:
	.string	"upcased"
.LASF10:
	.string	"char"
.LASF91:
	.string	"error_one_per_line"
.LASF34:
	.string	"_wide_data"
.LASF35:
	.string	"_freeres_list"
.LASF72:
	.string	"Version"
.LASF60:
	.string	"tzname"
.LASF37:
	.string	"__pad5"
.LASF96:
	.string	"signum"
.LASF3:
	.string	"short unsigned int"
.LASF71:
	.string	"program_invocation_short_name"
.LASF0:
	.string	"long unsigned int"
.LASF105:
	.string	"operand2sig"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF76:
	.string	"literal_quoting_style"
.LASF8:
	.string	"__off_t"
.LASF24:
	.string	"_chain"
.LASF43:
	.string	"_IO_wide_data"
.LASF99:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF100:
	.string	"src/operand2sig.c"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF84:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF29:
	.string	"_vtable_offset"
.LASF33:
	.string	"_codecvt"
.LASF20:
	.string	"_IO_save_base"
.LASF48:
	.string	"sys_errlist"
.LASF53:
	.string	"_gl_cxxalias_dummy"
.LASF68:
	.string	"opterr"
.LASF73:
	.string	"exit_failure"
.LASF40:
	.string	"FILE"
.LASF82:
	.string	"c_maybe_quoting_style"
.LASF94:
	.string	"operand"
.LASF45:
	.string	"stdout"
.LASF42:
	.string	"_IO_codecvt"
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
