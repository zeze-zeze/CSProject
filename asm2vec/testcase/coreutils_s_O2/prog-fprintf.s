	.file	"prog-fprintf.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	": "
	.text
	.p2align 4
	.globl	prog_fprintf
	.type	prog_fprintf, @function
prog_fprintf:
.LVL0:
.LFB135:
	.file 1 "src/prog-fprintf.c"
	.loc 1 29 1 view -0
	.cfi_startproc
	.loc 1 29 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdx, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.L2:
	.loc 1 29 1 view .LVU2
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 30 3 is_stmt 1 view .LVU3
	.loc 1 31 3 view .LVU4
	movq	program_name(%rip), %rdi
.LVL1:
	.loc 1 31 3 is_stmt 0 view .LVU5
	movq	%rbp, %rsi
.LVL2:
	.loc 1 31 3 view .LVU6
	call	fputs_unlocked@PLT
.LVL3:
	.loc 1 32 3 is_stmt 1 view .LVU7
	movq	%rbp, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC0(%rip), %rdi
	call	fwrite_unlocked@PLT
.LVL4:
	.loc 1 33 3 view .LVU8
	.loc 1 34 3 is_stmt 0 view .LVU9
	movq	%rsp, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	.loc 1 33 3 view .LVU10
	leaq	240(%rsp), %rax
	movl	$16, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	movl	$48, 4(%rsp)
	movq	%rax, 16(%rsp)
	.loc 1 34 3 is_stmt 1 view .LVU11
	call	rpl_vfprintf@PLT
.LVL5:
	.loc 1 35 3 view .LVU12
	.loc 1 36 3 view .LVU13
.LBB4:
.LBI4:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 2 91 1 view .LVU14
.LBB5:
	.loc 2 93 3 view .LVU15
	.loc 2 93 10 is_stmt 0 view .LVU16
	movq	40(%rbp), %rax
	cmpq	48(%rbp), %rax
	jnb	.L8
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rbp)
	movb	$10, (%rax)
.LVL6:
.L1:
	.loc 2 93 10 view .LVU17
.LBE5:
.LBE4:
	.loc 1 37 1 view .LVU18
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L9
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL7:
	.loc 1 37 1 view .LVU19
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL8:
	.loc 1 37 1 view .LVU20
	ret
.LVL9:
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
.LBB7:
.LBB6:
	.loc 2 93 10 view .LVU21
	movl	$10, %esi
	movq	%rbp, %rdi
	call	__overflow@PLT
.LVL10:
	jmp	.L1
.LVL11:
.L9:
	.loc 2 93 10 view .LVU22
.LBE6:
.LBE7:
	.loc 1 37 1 view .LVU23
	call	__stack_chk_fail@PLT
.LVL12:
	.cfi_endproc
.LFE135:
	.size	prog_fprintf, .-prog_fprintf
.Letext0:
	.file 3 "<built-in>"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "./lib/sys/select.h"
	.file 8 "/usr/include/time.h"
	.file 9 "/usr/include/signal.h"
	.file 10 "/usr/include/unistd.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 12 "/usr/include/errno.h"
	.file 13 "src/version.h"
	.file 14 "./lib/exitfail.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 17 "/usr/include/stdio.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 19 "./lib/version-etc.h"
	.file 20 "./lib/progname.h"
	.file 21 "./lib/quotearg.h"
	.file 22 "./lib/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6cc
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
	.long	.LASF6
	.byte	0x4
	.byte	0x28
	.byte	0x1b
	.long	0x39
	.uleb128 0x3
	.long	.LASF102
	.long	0x42
	.uleb128 0x4
	.long	0x59
	.long	0x52
	.uleb128 0x5
	.long	0x52
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x7
	.long	.LASF103
	.byte	0x18
	.byte	0x3
	.byte	0
	.long	0x96
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.byte	0
	.long	0x96
	.byte	0
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.byte	0
	.long	0x96
	.byte	0x4
	.uleb128 0x8
	.long	.LASF2
	.byte	0x3
	.byte	0
	.long	0x9d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF3
	.byte	0x3
	.byte	0
	.long	0x9d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0x63
	.byte	0x18
	.long	0x2d
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF11
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.long	0xc7
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0xd3
	.uleb128 0x2
	.long	.LASF14
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0xd3
	.uleb128 0xc
	.byte	0x8
	.long	0xf8
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0xd
	.long	0xf8
	.uleb128 0x2
	.long	.LASF16
	.byte	0x6
	.byte	0xd1
	.byte	0x17
	.long	0x52
	.uleb128 0xe
	.long	.LASF19
	.byte	0x7
	.value	0x30c
	.byte	0x1
	.long	0xc7
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF18
	.uleb128 0xc
	.byte	0x8
	.long	0xff
	.uleb128 0xd
	.long	0x12b
	.uleb128 0x4
	.long	0xf2
	.long	0x146
	.uleb128 0x5
	.long	0x52
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF20
	.byte	0x8
	.byte	0x9f
	.byte	0xe
	.long	0x136
	.uleb128 0xf
	.long	.LASF21
	.byte	0x8
	.byte	0xa0
	.byte	0xc
	.long	0xc7
	.uleb128 0xf
	.long	.LASF22
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.long	0xd3
	.uleb128 0xf
	.long	.LASF23
	.byte	0x8
	.byte	0xa6
	.byte	0xe
	.long	0x136
	.uleb128 0xf
	.long	.LASF24
	.byte	0x8
	.byte	0xae
	.byte	0xc
	.long	0xc7
	.uleb128 0xf
	.long	.LASF25
	.byte	0x8
	.byte	0xaf
	.byte	0x11
	.long	0xd3
	.uleb128 0xe
	.long	.LASF26
	.byte	0x8
	.value	0x112
	.byte	0xc
	.long	0xc7
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.long	.LASF27
	.uleb128 0x4
	.long	0x131
	.long	0x1b2
	.uleb128 0x5
	.long	0x52
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.long	0x1a2
	.uleb128 0xe
	.long	.LASF28
	.byte	0x9
	.value	0x11e
	.byte	0x1a
	.long	0x1b2
	.uleb128 0xe
	.long	.LASF29
	.byte	0x9
	.value	0x11f
	.byte	0x1a
	.long	0x1b2
	.uleb128 0xe
	.long	.LASF30
	.byte	0xa
	.value	0x21f
	.byte	0xf
	.long	0x1de
	.uleb128 0xc
	.byte	0x8
	.long	0xf2
	.uleb128 0xe
	.long	.LASF31
	.byte	0xa
	.value	0x221
	.byte	0xf
	.long	0x1de
	.uleb128 0xf
	.long	.LASF32
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0xf2
	.uleb128 0xf
	.long	.LASF33
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0xc7
	.uleb128 0xf
	.long	.LASF34
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0xc7
	.uleb128 0xf
	.long	.LASF35
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0xc7
	.uleb128 0xf
	.long	.LASF36
	.byte	0xc
	.byte	0x2d
	.byte	0xe
	.long	0xf2
	.uleb128 0xf
	.long	.LASF37
	.byte	0xc
	.byte	0x2e
	.byte	0xe
	.long	0xf2
	.uleb128 0xf
	.long	.LASF38
	.byte	0xd
	.byte	0x1
	.byte	0x14
	.long	0x12b
	.uleb128 0xf
	.long	.LASF39
	.byte	0xe
	.byte	0x12
	.byte	0x15
	.long	0xce
	.uleb128 0x10
	.long	.LASF104
	.byte	0xd8
	.byte	0xf
	.byte	0x31
	.byte	0x8
	.long	0x3d8
	.uleb128 0x11
	.long	.LASF40
	.byte	0xf
	.byte	0x33
	.byte	0x7
	.long	0xc7
	.byte	0
	.uleb128 0x11
	.long	.LASF41
	.byte	0xf
	.byte	0x36
	.byte	0x9
	.long	0xf2
	.byte	0x8
	.uleb128 0x11
	.long	.LASF42
	.byte	0xf
	.byte	0x37
	.byte	0x9
	.long	0xf2
	.byte	0x10
	.uleb128 0x11
	.long	.LASF43
	.byte	0xf
	.byte	0x38
	.byte	0x9
	.long	0xf2
	.byte	0x18
	.uleb128 0x11
	.long	.LASF44
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.long	0xf2
	.byte	0x20
	.uleb128 0x11
	.long	.LASF45
	.byte	0xf
	.byte	0x3a
	.byte	0x9
	.long	0xf2
	.byte	0x28
	.uleb128 0x11
	.long	.LASF46
	.byte	0xf
	.byte	0x3b
	.byte	0x9
	.long	0xf2
	.byte	0x30
	.uleb128 0x11
	.long	.LASF47
	.byte	0xf
	.byte	0x3c
	.byte	0x9
	.long	0xf2
	.byte	0x38
	.uleb128 0x11
	.long	.LASF48
	.byte	0xf
	.byte	0x3d
	.byte	0x9
	.long	0xf2
	.byte	0x40
	.uleb128 0x11
	.long	.LASF49
	.byte	0xf
	.byte	0x40
	.byte	0x9
	.long	0xf2
	.byte	0x48
	.uleb128 0x11
	.long	.LASF50
	.byte	0xf
	.byte	0x41
	.byte	0x9
	.long	0xf2
	.byte	0x50
	.uleb128 0x11
	.long	.LASF51
	.byte	0xf
	.byte	0x42
	.byte	0x9
	.long	0xf2
	.byte	0x58
	.uleb128 0x11
	.long	.LASF52
	.byte	0xf
	.byte	0x44
	.byte	0x16
	.long	0x3f1
	.byte	0x60
	.uleb128 0x11
	.long	.LASF53
	.byte	0xf
	.byte	0x46
	.byte	0x14
	.long	0x3f7
	.byte	0x68
	.uleb128 0x11
	.long	.LASF54
	.byte	0xf
	.byte	0x48
	.byte	0x7
	.long	0xc7
	.byte	0x70
	.uleb128 0x11
	.long	.LASF55
	.byte	0xf
	.byte	0x49
	.byte	0x7
	.long	0xc7
	.byte	0x74
	.uleb128 0x11
	.long	.LASF56
	.byte	0xf
	.byte	0x4a
	.byte	0xb
	.long	0xda
	.byte	0x78
	.uleb128 0x11
	.long	.LASF57
	.byte	0xf
	.byte	0x4d
	.byte	0x12
	.long	0xb2
	.byte	0x80
	.uleb128 0x11
	.long	.LASF58
	.byte	0xf
	.byte	0x4e
	.byte	0xf
	.long	0xb9
	.byte	0x82
	.uleb128 0x11
	.long	.LASF59
	.byte	0xf
	.byte	0x4f
	.byte	0x8
	.long	0x3fd
	.byte	0x83
	.uleb128 0x11
	.long	.LASF60
	.byte	0xf
	.byte	0x51
	.byte	0xf
	.long	0x40d
	.byte	0x88
	.uleb128 0x11
	.long	.LASF61
	.byte	0xf
	.byte	0x59
	.byte	0xd
	.long	0xe6
	.byte	0x90
	.uleb128 0x11
	.long	.LASF62
	.byte	0xf
	.byte	0x5b
	.byte	0x17
	.long	0x418
	.byte	0x98
	.uleb128 0x11
	.long	.LASF63
	.byte	0xf
	.byte	0x5c
	.byte	0x19
	.long	0x423
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF64
	.byte	0xf
	.byte	0x5d
	.byte	0x14
	.long	0x3f7
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF65
	.byte	0xf
	.byte	0x5e
	.byte	0x9
	.long	0x9d
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF66
	.byte	0xf
	.byte	0x5f
	.byte	0xa
	.long	0x104
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF67
	.byte	0xf
	.byte	0x60
	.byte	0x7
	.long	0xc7
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF68
	.byte	0xf
	.byte	0x62
	.byte	0x8
	.long	0x429
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x10
	.byte	0x7
	.byte	0x19
	.long	0x251
	.uleb128 0x12
	.long	.LASF105
	.byte	0xf
	.byte	0x2b
	.byte	0xe
	.uleb128 0x13
	.long	.LASF70
	.uleb128 0xc
	.byte	0x8
	.long	0x3ec
	.uleb128 0xc
	.byte	0x8
	.long	0x251
	.uleb128 0x4
	.long	0xf8
	.long	0x40d
	.uleb128 0x5
	.long	0x52
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x3e4
	.uleb128 0x13
	.long	.LASF71
	.uleb128 0xc
	.byte	0x8
	.long	0x413
	.uleb128 0x13
	.long	.LASF72
	.uleb128 0xc
	.byte	0x8
	.long	0x41e
	.uleb128 0x4
	.long	0xf8
	.long	0x439
	.uleb128 0x5
	.long	0x52
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF73
	.byte	0x11
	.byte	0x89
	.byte	0xe
	.long	0x445
	.uleb128 0xc
	.byte	0x8
	.long	0x3d8
	.uleb128 0xf
	.long	.LASF74
	.byte	0x11
	.byte	0x8a
	.byte	0xe
	.long	0x445
	.uleb128 0xf
	.long	.LASF75
	.byte	0x11
	.byte	0x8b
	.byte	0xe
	.long	0x445
	.uleb128 0xf
	.long	.LASF76
	.byte	0x12
	.byte	0x1a
	.byte	0xc
	.long	0xc7
	.uleb128 0x4
	.long	0x131
	.long	0x47a
	.uleb128 0x14
	.byte	0
	.uleb128 0xd
	.long	0x46f
	.uleb128 0xf
	.long	.LASF77
	.byte	0x12
	.byte	0x1b
	.byte	0x1a
	.long	0x47a
	.uleb128 0xf
	.long	.LASF78
	.byte	0x12
	.byte	0x1e
	.byte	0xc
	.long	0xc7
	.uleb128 0xf
	.long	.LASF79
	.byte	0x12
	.byte	0x1f
	.byte	0x1a
	.long	0x47a
	.uleb128 0x4
	.long	0xff
	.long	0x4ae
	.uleb128 0x14
	.byte	0
	.uleb128 0xd
	.long	0x4a3
	.uleb128 0xf
	.long	.LASF80
	.byte	0x13
	.byte	0x19
	.byte	0x13
	.long	0x4ae
	.uleb128 0xf
	.long	.LASF81
	.byte	0x14
	.byte	0x20
	.byte	0x14
	.long	0x12b
	.uleb128 0x15
	.long	.LASF106
	.byte	0x7
	.byte	0x4
	.long	0x96
	.byte	0x15
	.byte	0x20
	.byte	0x6
	.long	0x520
	.uleb128 0x16
	.long	.LASF82
	.byte	0
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.uleb128 0x16
	.long	.LASF84
	.byte	0x2
	.uleb128 0x16
	.long	.LASF85
	.byte	0x3
	.uleb128 0x16
	.long	.LASF86
	.byte	0x4
	.uleb128 0x16
	.long	.LASF87
	.byte	0x5
	.uleb128 0x16
	.long	.LASF88
	.byte	0x6
	.uleb128 0x16
	.long	.LASF89
	.byte	0x7
	.uleb128 0x16
	.long	.LASF90
	.byte	0x8
	.uleb128 0x16
	.long	.LASF91
	.byte	0x9
	.uleb128 0x16
	.long	.LASF92
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.long	0x4cb
	.uleb128 0xe
	.long	.LASF93
	.byte	0x15
	.value	0x10b
	.byte	0x1a
	.long	0x47a
	.uleb128 0x4
	.long	0x520
	.long	0x53d
	.uleb128 0x14
	.byte	0
	.uleb128 0xd
	.long	0x532
	.uleb128 0xe
	.long	.LASF94
	.byte	0x15
	.value	0x10c
	.byte	0x21
	.long	0x53d
	.uleb128 0x17
	.long	.LASF107
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x66a
	.uleb128 0x18
	.string	"fp"
	.byte	0x1
	.byte	0x1c
	.byte	0x15
	.long	0x445
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x18
	.string	"fmt"
	.byte	0x1
	.byte	0x1c
	.byte	0x25
	.long	0x12b
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x19
	.uleb128 0x1a
	.string	"ap"
	.byte	0x1
	.byte	0x1e
	.byte	0xb
	.long	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1b
	.long	0x66a
	.quad	.LBI4
	.byte	.LVU14
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.byte	0x3
	.long	0x5f1
	.uleb128 0x1c
	.long	0x687
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1c
	.long	0x67b
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1d
	.quad	.LVL10
	.long	0x694
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL3
	.long	0x6a1
	.long	0x609
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL4
	.long	0x6ae
	.long	0x638
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL5
	.long	0x6b9
	.long	0x65c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL12
	.long	0x6c6
	.byte	0
	.uleb128 0x21
	.long	.LASF108
	.byte	0x2
	.byte	0x5b
	.byte	0x1
	.long	0xc7
	.byte	0x3
	.long	0x694
	.uleb128 0x22
	.string	"__c"
	.byte	0x2
	.byte	0x5b
	.byte	0x15
	.long	0xc7
	.uleb128 0x23
	.long	.LASF95
	.byte	0x2
	.byte	0x5b
	.byte	0x20
	.long	0x445
	.byte	0
	.uleb128 0x24
	.long	.LASF96
	.long	.LASF96
	.byte	0x11
	.value	0x35b
	.byte	0xc
	.uleb128 0x24
	.long	.LASF97
	.long	.LASF97
	.byte	0x11
	.value	0x296
	.byte	0xc
	.uleb128 0x25
	.long	.LASF109
	.long	.LASF110
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.long	.LASF98
	.long	.LASF98
	.byte	0x16
	.value	0x748
	.byte	0x1
	.uleb128 0x26
	.long	.LASF111
	.long	.LASF111
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU14
	.uleb128 .LVU17
	.uleb128 .LVU21
	.uleb128 .LVU22
.LLST2:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU14
	.uleb128 .LVU17
	.uleb128 .LVU21
	.uleb128 .LVU22
.LLST3:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF86:
	.string	"shell_escape_always_quoting_style"
.LASF33:
	.string	"optind"
.LASF32:
	.string	"optarg"
.LASF110:
	.string	"__builtin_fwrite_unlocked"
.LASF56:
	.string	"_old_offset"
.LASF31:
	.string	"environ"
.LASF81:
	.string	"program_name"
.LASF94:
	.string	"quoting_style_vals"
.LASF76:
	.string	"sys_nerr"
.LASF51:
	.string	"_IO_save_end"
.LASF11:
	.string	"short int"
.LASF16:
	.string	"size_t"
.LASF105:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_offset"
.LASF20:
	.string	"__tzname"
.LASF45:
	.string	"_IO_write_ptr"
.LASF40:
	.string	"_flags"
.LASF47:
	.string	"_IO_buf_base"
.LASF7:
	.string	"va_list"
.LASF65:
	.string	"_freeres_buf"
.LASF30:
	.string	"__environ"
.LASF52:
	.string	"_markers"
.LASF29:
	.string	"sys_siglist"
.LASF25:
	.string	"timezone"
.LASF24:
	.string	"daylight"
.LASF34:
	.string	"opterr"
.LASF96:
	.string	"__overflow"
.LASF79:
	.string	"_sys_errlist"
.LASF93:
	.string	"quoting_style_args"
.LASF5:
	.string	"unsigned int"
.LASF35:
	.string	"optopt"
.LASF18:
	.string	"long long int"
.LASF101:
	.string	"/root/coreutils"
.LASF22:
	.string	"__timezone"
.LASF60:
	.string	"_lock"
.LASF21:
	.string	"__daylight"
.LASF12:
	.string	"long int"
.LASF26:
	.string	"getdate_err"
.LASF63:
	.string	"_wide_data"
.LASF1:
	.string	"fp_offset"
.LASF89:
	.string	"escape_quoting_style"
.LASF57:
	.string	"_cur_column"
.LASF0:
	.string	"gp_offset"
.LASF78:
	.string	"_sys_nerr"
.LASF91:
	.string	"clocale_quoting_style"
.LASF104:
	.string	"_IO_FILE"
.LASF27:
	.string	"long double"
.LASF36:
	.string	"program_invocation_name"
.LASF8:
	.string	"unsigned char"
.LASF84:
	.string	"shell_always_quoting_style"
.LASF92:
	.string	"custom_quoting_style"
.LASF10:
	.string	"signed char"
.LASF62:
	.string	"_codecvt"
.LASF17:
	.string	"long long unsigned int"
.LASF70:
	.string	"_IO_marker"
.LASF59:
	.string	"_shortbuf"
.LASF42:
	.string	"_IO_read_end"
.LASF106:
	.string	"quoting_style"
.LASF44:
	.string	"_IO_write_base"
.LASF68:
	.string	"_unused2"
.LASF80:
	.string	"version_etc_copyright"
.LASF41:
	.string	"_IO_read_ptr"
.LASF54:
	.string	"_fileno"
.LASF28:
	.string	"_sys_siglist"
.LASF48:
	.string	"_IO_buf_end"
.LASF98:
	.string	"rpl_vfprintf"
.LASF83:
	.string	"shell_quoting_style"
.LASF85:
	.string	"shell_escape_quoting_style"
.LASF87:
	.string	"c_quoting_style"
.LASF15:
	.string	"char"
.LASF90:
	.string	"locale_quoting_style"
.LASF64:
	.string	"_freeres_list"
.LASF38:
	.string	"Version"
.LASF23:
	.string	"tzname"
.LASF66:
	.string	"__pad5"
.LASF69:
	.string	"FILE"
.LASF97:
	.string	"fputs_unlocked"
.LASF9:
	.string	"short unsigned int"
.LASF75:
	.string	"stderr"
.LASF37:
	.string	"program_invocation_short_name"
.LASF4:
	.string	"long unsigned int"
.LASF102:
	.string	"__builtin_va_list"
.LASF100:
	.string	"src/prog-fprintf.c"
.LASF46:
	.string	"_IO_write_end"
.LASF14:
	.string	"__off64_t"
.LASF2:
	.string	"overflow_arg_area"
.LASF82:
	.string	"literal_quoting_style"
.LASF13:
	.string	"__off_t"
.LASF53:
	.string	"_chain"
.LASF108:
	.string	"fputc_unlocked"
.LASF72:
	.string	"_IO_wide_data"
.LASF50:
	.string	"_IO_backup_base"
.LASF73:
	.string	"stdin"
.LASF99:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF55:
	.string	"_flags2"
.LASF67:
	.string	"_mode"
.LASF43:
	.string	"_IO_read_base"
.LASF6:
	.string	"__gnuc_va_list"
.LASF58:
	.string	"_vtable_offset"
.LASF49:
	.string	"_IO_save_base"
.LASF77:
	.string	"sys_errlist"
.LASF19:
	.string	"_gl_cxxalias_dummy"
.LASF39:
	.string	"exit_failure"
.LASF111:
	.string	"__stack_chk_fail"
.LASF107:
	.string	"prog_fprintf"
.LASF95:
	.string	"__stream"
.LASF109:
	.string	"fwrite_unlocked"
.LASF88:
	.string	"c_maybe_quoting_style"
.LASF3:
	.string	"reg_save_area"
.LASF103:
	.string	"__va_list_tag"
.LASF71:
	.string	"_IO_codecvt"
.LASF74:
	.string	"stdout"
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
