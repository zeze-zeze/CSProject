	.file	"libstdbuf.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"stdin"
.LC1:
	.string	"stdout"
.LC2:
	.string	"stderr"
.LC3:
	.string	"unknown"
	.text
	.type	fileno_to_name, @function
fileno_to_name:
.LFB46:
	.file 1 "src/libstdbuf.c"
	.loc 1 68 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 69 15
	movq	$0, -8(%rbp)
	.loc 1 71 3
	cmpl	$2, -20(%rbp)
	je	.L2
	cmpl	$2, -20(%rbp)
	jg	.L3
	cmpl	$0, -20(%rbp)
	je	.L4
	cmpl	$1, -20(%rbp)
	je	.L5
	jmp	.L3
.L4:
	.loc 1 74 11
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 75 7
	jmp	.L6
.L5:
	.loc 1 77 11
	leaq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 78 7
	jmp	.L6
.L2:
	.loc 1 80 11
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 81 7
	jmp	.L6
.L3:
	.loc 1 83 11
	leaq	.LC3(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 84 7
	nop
.L6:
	.loc 1 87 10
	movq	-8(%rbp), %rax
	.loc 1 88 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	fileno_to_name, .-fileno_to_name
	.section	.rodata
	.align 8
.LC4:
	.string	"invalid buffering mode %s for %s\n"
	.align 8
.LC5:
	.string	"failed to allocate a %lu byte stdio buffer\n"
	.align 8
.LC6:
	.string	"could not set buffering of %s to mode %s\n"
	.text
	.type	apply_mode, @function
apply_mode:
.LFB47:
	.loc 1 92 1
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
	.loc 1 92 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 93 9
	movq	$0, -40(%rbp)
	.loc 1 95 13
	movq	$0, -32(%rbp)
	.loc 1 97 7
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 97 6
	cmpb	$48, %al
	jne	.L9
	.loc 1 98 18
	movl	$2, -52(%rbp)
	jmp	.L10
.L9:
	.loc 1 99 12
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 99 11
	cmpb	$76, %al
	jne	.L11
	.loc 1 100 18
	movl	$1, -52(%rbp)
	jmp	.L10
.L11:
.LBB2:
	.loc 1 103 20
	movl	$0, -52(%rbp)
	.loc 1 105 14
	leaq	-48(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoumax@PLT
	movq	%rax, -32(%rbp)
	.loc 1 106 10
	cmpq	$0, -32(%rbp)
	je	.L12
	.loc 1 106 24 discriminator 1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 106 21 discriminator 1
	testb	%al, %al
	je	.L13
.L12:
	.loc 1 108 11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %edi
	call	fileno_to_name
	movq	%rax, %rbx
	.loc 1 108 28
	leaq	.LC4(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 1 108 11
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 110 11
	jmp	.L8
.L13:
	.loc 1 113 46
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	.loc 1 114 10
	cmpq	$0, -40(%rbp)
	jne	.L10
	.loc 1 120 20
	leaq	.LC5(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 119 11
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 123 11
	jmp	.L8
.L10:
.LBE2:
	.loc 1 128 7
	movq	-32(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	setvbuf@PLT
	.loc 1 128 6
	testl	%eax, %eax
	je	.L8
	.loc 1 130 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %edi
	call	fileno_to_name
	movq	%rax, %rbx
	.loc 1 130 24
	leaq	.LC6(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 1 130 7
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 132 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L8:
	.loc 1 134 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	apply_mode, .-apply_mode
	.section	.rodata
.LC7:
	.string	"_STDBUF_E"
.LC8:
	.string	"_STDBUF_I"
.LC9:
	.string	"_STDBUF_O"
	.text
	.type	stdbuf, @function
stdbuf:
.LFB48:
	.loc 1 139 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 140 18
	leaq	.LC7(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -24(%rbp)
	.loc 1 141 18
	leaq	.LC8(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -16(%rbp)
	.loc 1 142 18
	leaq	.LC9(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	.loc 1 143 6
	cmpq	$0, -24(%rbp)
	je	.L19
	.loc 1 144 5
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apply_mode
.L19:
	.loc 1 145 6
	cmpq	$0, -16(%rbp)
	je	.L20
	.loc 1 146 5
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apply_mode
.L20:
	.loc 1 147 6
	cmpq	$0, -8(%rbp)
	je	.L22
	.loc 1 148 5
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apply_mode
.L22:
	.loc 1 149 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	stdbuf, .-stdbuf
	.section	.init_array,"aw"
	.align 8
	.quad	stdbuf
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "./lib/sys/select.h"
	.file 9 "/usr/include/stdint.h"
	.file 10 "/usr/include/time.h"
	.file 11 "/usr/include/signal.h"
	.file 12 "/usr/include/unistd.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/errno.h"
	.file 15 "src/version.h"
	.file 16 "./lib/exitfail.h"
	.file 17 "./lib/version-etc.h"
	.file 18 "./lib/progname.h"
	.file 19 "./lib/quotearg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x611
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF102
	.byte	0xc
	.long	.LASF103
	.long	.LASF104
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
	.uleb128 0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x76
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x76
	.uleb128 0x8
	.byte	0x8
	.long	0xa7
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	0xa7
	.uleb128 0x9
	.long	.LASF105
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x23a
	.uleb128 0xa
	.long	.LASF12
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF13
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xa1
	.byte	0x8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xa1
	.byte	0x10
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xa1
	.byte	0x18
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xa1
	.byte	0x20
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xa1
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xa1
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xa1
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xa1
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xa1
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xa1
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xa1
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x253
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x259
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x89
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x25f
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x26f
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x95
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x27a
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x285
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x259
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x28b
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xb3
	.uleb128 0xb
	.long	.LASF106
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x8
	.byte	0x8
	.long	0x24e
	.uleb128 0x8
	.byte	0x8
	.long	0xb3
	.uleb128 0xd
	.long	0xa7
	.long	0x26f
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x246
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x8
	.byte	0x8
	.long	0x275
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x8
	.byte	0x8
	.long	0x280
	.uleb128 0xd
	.long	0xa7
	.long	0x29b
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xae
	.uleb128 0x7
	.long	0x29b
	.uleb128 0xf
	.long	.LASF45
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2b2
	.uleb128 0x8
	.byte	0x8
	.long	0x23a
	.uleb128 0xf
	.long	.LASF46
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2b2
	.uleb128 0xf
	.long	.LASF47
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2b2
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2a1
	.long	0x2e7
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x2dc
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2e7
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF51
	.byte	0x7
	.byte	0x1f
	.byte	0x1a
	.long	0x2e7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF52
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF53
	.uleb128 0x11
	.long	.LASF54
	.byte	0x8
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x66
	.byte	0x16
	.long	0x7d
	.uleb128 0xd
	.long	0xa1
	.long	0x34e
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF57
	.byte	0xa
	.byte	0x9f
	.byte	0xe
	.long	0x33e
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
	.long	0x76
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa
	.byte	0xa6
	.byte	0xe
	.long	0x33e
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
	.long	0x76
	.uleb128 0x11
	.long	.LASF63
	.byte	0xa
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2a1
	.long	0x3b3
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	0x3a3
	.uleb128 0x11
	.long	.LASF64
	.byte	0xb
	.value	0x11e
	.byte	0x1a
	.long	0x3b3
	.uleb128 0x11
	.long	.LASF65
	.byte	0xb
	.value	0x11f
	.byte	0x1a
	.long	0x3b3
	.uleb128 0x11
	.long	.LASF66
	.byte	0xc
	.value	0x21f
	.byte	0xf
	.long	0x3df
	.uleb128 0x8
	.byte	0x8
	.long	0xa1
	.uleb128 0x11
	.long	.LASF67
	.byte	0xc
	.value	0x221
	.byte	0xf
	.long	0x3df
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0xa1
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xe
	.byte	0x2d
	.byte	0xe
	.long	0xa1
	.uleb128 0xf
	.long	.LASF73
	.byte	0xe
	.byte	0x2e
	.byte	0xe
	.long	0xa1
	.uleb128 0xf
	.long	.LASF74
	.byte	0xf
	.byte	0x1
	.byte	0x14
	.long	0x29b
	.uleb128 0xf
	.long	.LASF75
	.byte	0x10
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0xd
	.long	0xae
	.long	0x45d
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x452
	.uleb128 0xf
	.long	.LASF76
	.byte	0x11
	.byte	0x19
	.byte	0x13
	.long	0x45d
	.uleb128 0xf
	.long	.LASF77
	.byte	0x12
	.byte	0x20
	.byte	0x14
	.long	0x29b
	.uleb128 0x12
	.long	.LASF107
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x20
	.byte	0x6
	.long	0x4cf
	.uleb128 0x13
	.long	.LASF78
	.byte	0
	.uleb128 0x13
	.long	.LASF79
	.byte	0x1
	.uleb128 0x13
	.long	.LASF80
	.byte	0x2
	.uleb128 0x13
	.long	.LASF81
	.byte	0x3
	.uleb128 0x13
	.long	.LASF82
	.byte	0x4
	.uleb128 0x13
	.long	.LASF83
	.byte	0x5
	.uleb128 0x13
	.long	.LASF84
	.byte	0x6
	.uleb128 0x13
	.long	.LASF85
	.byte	0x7
	.uleb128 0x13
	.long	.LASF86
	.byte	0x8
	.uleb128 0x13
	.long	.LASF87
	.byte	0x9
	.uleb128 0x13
	.long	.LASF88
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x47a
	.uleb128 0x11
	.long	.LASF89
	.byte	0x13
	.value	0x10b
	.byte	0x1a
	.long	0x2e7
	.uleb128 0xd
	.long	0x4cf
	.long	0x4ec
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x4e1
	.uleb128 0x11
	.long	.LASF90
	.byte	0x13
	.value	0x10c
	.byte	0x21
	.long	0x4ec
	.uleb128 0x14
	.long	.LASF94
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x54a
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.byte	0x8c
	.byte	0x9
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.byte	0x8d
	.byte	0x9
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF93
	.byte	0x1
	.byte	0x8e
	.byte	0x9
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF95
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d8
	.uleb128 0x16
	.long	.LASF96
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.long	0x2b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.long	.LASF97
	.byte	0x1
	.byte	0x5b
	.byte	0x27
	.long	0x29b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x5d
	.byte	0x9
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF98
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.long	.LASF99
	.byte	0x1
	.byte	0x5f
	.byte	0xd
	.long	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x15
	.long	.LASF100
	.byte	0x1
	.byte	0x68
	.byte	0xd
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0x29b
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.string	"fd"
	.byte	0x1
	.byte	0x43
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x45
	.byte	0xf
	.long	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
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
.LASF82:
	.string	"shell_escape_always_quoting_style"
.LASF69:
	.string	"optind"
.LASF68:
	.string	"optarg"
.LASF28:
	.string	"_old_offset"
.LASF67:
	.string	"environ"
.LASF77:
	.string	"program_name"
.LASF90:
	.string	"quoting_style_vals"
.LASF48:
	.string	"sys_nerr"
.LASF23:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF106:
	.string	"_IO_lock_t"
.LASF33:
	.string	"_offset"
.LASF57:
	.string	"__tzname"
.LASF103:
	.string	"src/libstdbuf.c"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF97:
	.string	"mode"
.LASF19:
	.string	"_IO_buf_base"
.LASF37:
	.string	"_freeres_buf"
.LASF66:
	.string	"__environ"
.LASF24:
	.string	"_markers"
.LASF65:
	.string	"sys_siglist"
.LASF62:
	.string	"timezone"
.LASF61:
	.string	"daylight"
.LASF70:
	.string	"opterr"
.LASF101:
	.string	"fileno_to_name"
.LASF95:
	.string	"apply_mode"
.LASF51:
	.string	"_sys_errlist"
.LASF89:
	.string	"quoting_style_args"
.LASF47:
	.string	"stderr"
.LASF71:
	.string	"optopt"
.LASF52:
	.string	"long long int"
.LASF104:
	.string	"/root/coreutils"
.LASF59:
	.string	"__timezone"
.LASF32:
	.string	"_lock"
.LASF58:
	.string	"__daylight"
.LASF6:
	.string	"long int"
.LASF63:
	.string	"getdate_err"
.LASF76:
	.string	"version_etc_copyright"
.LASF96:
	.string	"stream"
.LASF29:
	.string	"_cur_column"
.LASF87:
	.string	"clocale_quoting_style"
.LASF94:
	.string	"stdbuf"
.LASF50:
	.string	"_sys_nerr"
.LASF91:
	.string	"e_mode"
.LASF100:
	.string	"mode_end"
.LASF105:
	.string	"_IO_FILE"
.LASF53:
	.string	"long double"
.LASF72:
	.string	"program_invocation_name"
.LASF2:
	.string	"unsigned char"
.LASF80:
	.string	"shell_always_quoting_style"
.LASF4:
	.string	"signed char"
.LASF34:
	.string	"_codecvt"
.LASF55:
	.string	"long long unsigned int"
.LASF31:
	.string	"_shortbuf"
.LASF1:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF98:
	.string	"setvbuf_mode"
.LASF14:
	.string	"_IO_read_end"
.LASF107:
	.string	"quoting_style"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF56:
	.string	"uintmax_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF102:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fPIC -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF64:
	.string	"_sys_siglist"
.LASF20:
	.string	"_IO_buf_end"
.LASF79:
	.string	"shell_quoting_style"
.LASF81:
	.string	"shell_escape_quoting_style"
.LASF83:
	.string	"c_quoting_style"
.LASF11:
	.string	"char"
.LASF35:
	.string	"_wide_data"
.LASF36:
	.string	"_freeres_list"
.LASF74:
	.string	"Version"
.LASF60:
	.string	"tzname"
.LASF38:
	.string	"__pad5"
.LASF8:
	.string	"__uintmax_t"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"_fileno"
.LASF73:
	.string	"program_invocation_short_name"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF78:
	.string	"literal_quoting_style"
.LASF9:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF99:
	.string	"size"
.LASF85:
	.string	"escape_quoting_style"
.LASF44:
	.string	"_IO_wide_data"
.LASF22:
	.string	"_IO_backup_base"
.LASF45:
	.string	"stdin"
.LASF86:
	.string	"locale_quoting_style"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF93:
	.string	"o_mode"
.LASF30:
	.string	"_vtable_offset"
.LASF21:
	.string	"_IO_save_base"
.LASF49:
	.string	"sys_errlist"
.LASF54:
	.string	"_gl_cxxalias_dummy"
.LASF92:
	.string	"i_mode"
.LASF75:
	.string	"exit_failure"
.LASF41:
	.string	"FILE"
.LASF84:
	.string	"c_maybe_quoting_style"
.LASF46:
	.string	"stdout"
.LASF43:
	.string	"_IO_codecvt"
.LASF88:
	.string	"custom_quoting_style"
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
