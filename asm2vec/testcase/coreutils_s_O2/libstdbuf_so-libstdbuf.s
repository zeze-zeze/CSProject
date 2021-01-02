	.file	"libstdbuf.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"unknown"
.LC1:
	.string	"stderr"
.LC2:
	.string	"stdout"
.LC3:
	.string	"stdin"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"invalid buffering mode %s for %s\n"
	.align 8
.LC5:
	.string	"failed to allocate a %lu byte stdio buffer\n"
	.align 8
.LC6:
	.string	"could not set buffering of %s to mode %s\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	apply_mode, @function
apply_mode:
.LVL0:
.LFB136:
	.file 1 "src/libstdbuf.c"
	.loc 1 92 1 view -0
	.cfi_startproc
	.loc 1 92 1 is_stmt 0 view .LVU1
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 92 1 view .LVU2
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 93 3 is_stmt 1 view .LVU3
.LVL1:
	.loc 1 94 3 view .LVU4
	.loc 1 95 3 view .LVU5
	.loc 1 97 3 view .LVU6
	.loc 1 97 7 is_stmt 0 view .LVU7
	movzbl	(%rsi), %eax
	.loc 1 97 6 view .LVU8
	cmpb	$48, %al
	je	.L12
	.loc 1 99 8 is_stmt 1 view .LVU9
	.loc 1 99 11 is_stmt 0 view .LVU10
	cmpb	$76, %al
	jne	.L33
	.loc 1 95 13 view .LVU11
	xorl	%ecx, %ecx
	.loc 1 100 18 view .LVU12
	movl	$1, %edx
	.loc 1 93 9 view .LVU13
	xorl	%r13d, %r13d
.LVL2:
.L2:
	.loc 1 128 3 is_stmt 1 view .LVU14
	.loc 1 128 7 is_stmt 0 view .LVU15
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	setvbuf@PLT
.LVL3:
	.loc 1 128 6 view .LVU16
	testl	%eax, %eax
	jne	.L34
.LVL4:
.L1:
	.loc 1 134 1 view .LVU17
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L31
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL5:
	.loc 1 134 1 view .LVU18
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.LVL6:
.L33:
	.cfi_restore_state
.LBB24:
	.loc 1 103 7 is_stmt 1 view .LVU19
	.loc 1 104 7 view .LVU20
	.loc 1 105 7 view .LVU21
.LBB25:
.LBI25:
	.file 2 "/usr/include/inttypes.h"
	.loc 2 336 1 view .LVU22
.LBB26:
	.loc 2 339 3 view .LVU23
	.loc 2 339 10 is_stmt 0 view .LVU24
	xorl	%ecx, %ecx
	leaq	16(%rsp), %rsi
.LVL7:
	.loc 2 339 10 view .LVU25
	movl	$10, %edx
	movq	%r12, %rdi
.LVL8:
	.loc 2 339 10 view .LVU26
	call	__strtoul_internal@PLT
.LVL9:
	.loc 2 339 10 view .LVU27
	movq	%rax, %rcx
.LVL10:
	.loc 2 339 10 view .LVU28
.LBE26:
.LBE25:
	.loc 1 106 7 is_stmt 1 view .LVU29
	.loc 1 106 10 is_stmt 0 view .LVU30
	testq	%rax, %rax
	je	.L3
	.loc 1 106 24 discriminator 1 view .LVU31
	movq	16(%rsp), %rax
.LVL11:
	.loc 1 106 21 discriminator 1 view .LVU32
	cmpb	$0, (%rax)
	je	.L4
.L3:
	.loc 1 108 11 is_stmt 1 view .LVU33
	movq	%rbp, %rdi
.LBB27:
.LBB28:
	.loc 1 71 3 is_stmt 0 view .LVU34
	leaq	.LC2(%rip), %rbp
.LVL12:
	.loc 1 71 3 view .LVU35
.LBE28:
.LBE27:
	.loc 1 108 11 view .LVU36
	call	fileno@PLT
.LVL13:
.LBB30:
.LBI27:
	.loc 1 67 1 is_stmt 1 view .LVU37
.LBB29:
	.loc 1 69 3 view .LVU38
	.loc 1 71 3 view .LVU39
	cmpl	$1, %eax
	je	.L5
	.loc 1 80 11 is_stmt 0 view .LVU40
	leaq	.LC1(%rip), %rbp
	.loc 1 71 3 view .LVU41
	cmpl	$2, %eax
	je	.L5
	.loc 1 74 11 view .LVU42
	testl	%eax, %eax
	leaq	.LC0(%rip), %rbp
	leaq	.LC3(%rip), %r8
	cmove	%r8, %rbp
.L5:
.LVL14:
	.loc 1 87 3 is_stmt 1 view .LVU43
	.loc 1 87 3 is_stmt 0 view .LVU44
.LBE29:
.LBE30:
	.loc 1 108 28 view .LVU45
	xorl	%edi, %edi
	leaq	.LC4(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL15:
.LBB31:
.LBB32:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 100 10 view .LVU46
	movq	%rbp, %r8
	movq	%r12, %rcx
	movl	$1, %esi
.LBE32:
.LBE31:
	.loc 1 108 28 view .LVU47
	movq	%rax, %rdx
.LVL16:
.LBB34:
.LBI31:
	.loc 3 98 1 is_stmt 1 view .LVU48
.LBB33:
	.loc 3 100 3 view .LVU49
	.loc 3 100 10 is_stmt 0 view .LVU50
	movq	stderr@GOTPCREL(%rip), %rax
.LVL17:
	.loc 3 100 10 view .LVU51
	movq	(%rax), %rdi
	xorl	%eax, %eax
.LVL18:
	.loc 3 100 10 view .LVU52
	call	__fprintf_chk@PLT
.LVL19:
	.loc 3 100 10 view .LVU53
.LBE33:
.LBE34:
	.loc 1 110 11 is_stmt 1 view .LVU54
	jmp	.L1
.LVL20:
.L34:
	.loc 1 110 11 is_stmt 0 view .LVU55
.LBE24:
	.loc 1 130 7 is_stmt 1 view .LVU56
	movq	%rbp, %rdi
.LBB39:
.LBB40:
	.loc 1 71 3 is_stmt 0 view .LVU57
	leaq	.LC2(%rip), %r14
.LBE40:
.LBE39:
	.loc 1 130 7 view .LVU58
	call	fileno@PLT
.LVL21:
.LBB42:
.LBI39:
	.loc 1 67 1 is_stmt 1 view .LVU59
.LBB41:
	.loc 1 69 3 view .LVU60
	.loc 1 71 3 view .LVU61
	cmpl	$1, %eax
	je	.L9
	.loc 1 80 11 is_stmt 0 view .LVU62
	leaq	.LC1(%rip), %r14
	.loc 1 71 3 view .LVU63
	cmpl	$2, %eax
	je	.L9
	.loc 1 74 11 view .LVU64
	testl	%eax, %eax
	leaq	.LC0(%rip), %r14
	leaq	.LC3(%rip), %rcx
	cmove	%rcx, %r14
.L9:
.LVL22:
	.loc 1 87 3 is_stmt 1 view .LVU65
	.loc 1 87 3 is_stmt 0 view .LVU66
.LBE41:
.LBE42:
	.loc 1 130 24 view .LVU67
	xorl	%edi, %edi
	leaq	.LC6(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL23:
.LBB43:
.LBB44:
	.loc 3 100 10 view .LVU68
	movq	%r12, %r8
	movq	%r14, %rcx
	movl	$1, %esi
.LBE44:
.LBE43:
	.loc 1 130 24 view .LVU69
	movq	%rax, %rdx
.LVL24:
.LBB46:
.LBI43:
	.loc 3 98 1 is_stmt 1 view .LVU70
.LBB45:
	.loc 3 100 3 view .LVU71
	.loc 3 100 10 is_stmt 0 view .LVU72
	movq	stderr@GOTPCREL(%rip), %rax
.LVL25:
	.loc 3 100 10 view .LVU73
	movq	(%rax), %rdi
	xorl	%eax, %eax
.LVL26:
	.loc 3 100 10 view .LVU74
	call	__fprintf_chk@PLT
.LVL27:
	.loc 3 100 10 view .LVU75
.LBE45:
.LBE46:
	.loc 1 132 7 is_stmt 1 view .LVU76
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L31
	.loc 1 134 1 is_stmt 0 view .LVU77
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	.loc 1 132 7 view .LVU78
	movq	%r13, %rdi
	.loc 1 134 1 view .LVU79
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL28:
	.loc 1 134 1 view .LVU80
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL29:
	.loc 1 134 1 view .LVU81
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL30:
	.loc 1 134 1 view .LVU82
	popq	%r14
	.cfi_def_cfa_offset 8
	.loc 1 132 7 view .LVU83
	jmp	free@PLT
.LVL31:
.L12:
	.cfi_restore_state
	.loc 1 95 13 view .LVU84
	xorl	%ecx, %ecx
	.loc 1 98 18 view .LVU85
	movl	$2, %edx
	.loc 1 93 9 view .LVU86
	xorl	%r13d, %r13d
	jmp	.L2
.LVL32:
.L4:
.LBB47:
	.loc 1 113 7 is_stmt 1 view .LVU87
	.loc 1 113 46 is_stmt 0 view .LVU88
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)
	call	malloc@PLT
.LVL33:
	.loc 1 103 20 view .LVU89
	xorl	%edx, %edx
	.loc 1 114 10 view .LVU90
	movq	8(%rsp), %rcx
	testq	%rax, %rax
	.loc 1 113 46 view .LVU91
	movq	%rax, %r13
.LVL34:
	.loc 1 114 7 is_stmt 1 view .LVU92
	.loc 1 114 10 is_stmt 0 view .LVU93
	jne	.L2
	.loc 1 119 11 is_stmt 1 view .LVU94
	.loc 1 120 20 is_stmt 0 view .LVU95
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC5(%rip), %rsi
	call	dcgettext@PLT
.LVL35:
.LBB35:
.LBB36:
	.loc 3 100 10 view .LVU96
	movq	8(%rsp), %rcx
	movl	$1, %esi
.LBE36:
.LBE35:
	.loc 1 120 20 view .LVU97
	movq	%rax, %rdx
.LVL36:
.LBB38:
.LBI35:
	.loc 3 98 1 is_stmt 1 view .LVU98
.LBB37:
	.loc 3 100 3 view .LVU99
	.loc 3 100 10 is_stmt 0 view .LVU100
	movq	stderr@GOTPCREL(%rip), %rax
.LVL37:
	.loc 3 100 10 view .LVU101
	movq	(%rax), %rdi
	xorl	%eax, %eax
.LVL38:
	.loc 3 100 10 view .LVU102
	call	__fprintf_chk@PLT
.LVL39:
	.loc 3 100 10 view .LVU103
.LBE37:
.LBE38:
	.loc 1 123 11 is_stmt 1 view .LVU104
	jmp	.L1
.LVL40:
.L31:
	.loc 1 123 11 is_stmt 0 view .LVU105
.LBE47:
	.loc 1 134 1 view .LVU106
	call	__stack_chk_fail@PLT
.LVL41:
	.cfi_endproc
.LFE136:
	.size	apply_mode, .-apply_mode
	.section	.rodata.str1.1
.LC7:
	.string	"_STDBUF_E"
.LC8:
	.string	"_STDBUF_I"
.LC9:
	.string	"_STDBUF_O"
	.section	.text.startup
	.p2align 4
	.type	stdbuf, @function
stdbuf:
.LFB137:
	.loc 1 139 1 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	.loc 1 140 3 view .LVU108
	.loc 1 139 1 is_stmt 0 view .LVU109
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 140 18 view .LVU110
	leaq	.LC7(%rip), %rdi
	.loc 1 139 1 view .LVU111
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	.loc 1 140 18 view .LVU112
	call	getenv@PLT
.LVL42:
	.loc 1 141 18 view .LVU113
	leaq	.LC8(%rip), %rdi
	.loc 1 140 18 view .LVU114
	movq	%rax, %r13
.LVL43:
	.loc 1 141 3 is_stmt 1 view .LVU115
	.loc 1 141 18 is_stmt 0 view .LVU116
	call	getenv@PLT
.LVL44:
	.loc 1 142 18 view .LVU117
	leaq	.LC9(%rip), %rdi
	.loc 1 141 18 view .LVU118
	movq	%rax, %r12
.LVL45:
	.loc 1 142 3 is_stmt 1 view .LVU119
	.loc 1 142 18 is_stmt 0 view .LVU120
	call	getenv@PLT
.LVL46:
	.loc 1 142 18 view .LVU121
	movq	%rax, %rbp
.LVL47:
	.loc 1 143 3 is_stmt 1 view .LVU122
	.loc 1 143 6 is_stmt 0 view .LVU123
	testq	%r13, %r13
	je	.L36
	.loc 1 144 5 is_stmt 1 view .LVU124
	movq	stderr@GOTPCREL(%rip), %rax
.LVL48:
	.loc 1 144 5 is_stmt 0 view .LVU125
	movq	%r13, %rsi
	movq	(%rax), %rdi
	call	apply_mode
.LVL49:
.L36:
	.loc 1 145 3 is_stmt 1 view .LVU126
	.loc 1 145 6 is_stmt 0 view .LVU127
	testq	%r12, %r12
	je	.L37
	.loc 1 146 5 is_stmt 1 view .LVU128
	movq	stdin@GOTPCREL(%rip), %rax
	movq	%r12, %rsi
	movq	(%rax), %rdi
	call	apply_mode
.LVL50:
.L37:
	.loc 1 147 3 view .LVU129
	.loc 1 147 6 is_stmt 0 view .LVU130
	testq	%rbp, %rbp
	je	.L35
	.loc 1 148 5 is_stmt 1 view .LVU131
	movq	stdout@GOTPCREL(%rip), %rax
	movq	%rbp, %rsi
	.loc 1 149 1 is_stmt 0 view .LVU132
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL51:
	.loc 1 149 1 view .LVU133
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL52:
	.loc 1 149 1 view .LVU134
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL53:
	.loc 1 148 5 view .LVU135
	movq	(%rax), %rdi
	jmp	apply_mode
.LVL54:
.L35:
	.cfi_restore_state
	.loc 1 149 1 view .LVU136
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL55:
	.loc 1 149 1 view .LVU137
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL56:
	.loc 1 149 1 view .LVU138
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL57:
	.loc 1 149 1 view .LVU139
	ret
	.cfi_endproc
.LFE137:
	.size	stdbuf, .-stdbuf
	.section	.init_array,"aw"
	.align 8
	.quad	stdbuf
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/stdint.h"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/signal.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 16 "/usr/include/errno.h"
	.file 17 "src/version.h"
	.file 18 "./lib/exitfail.h"
	.file 19 "./lib/version-etc.h"
	.file 20 "./lib/progname.h"
	.file 21 "./lib/quotearg.h"
	.file 22 "/usr/include/stdlib.h"
	.file 23 "/usr/include/libintl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa68
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF113
	.byte	0xc
	.long	.LASF114
	.long	.LASF115
	.long	.Ldebug_ranges0+0x120
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.long	0x35
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
	.long	0x61
	.uleb128 0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0x35
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x72
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x72
	.uleb128 0x8
	.byte	0x8
	.long	0xa3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	0xa3
	.uleb128 0x9
	.long	.LASF116
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x236
	.uleb128 0xa
	.long	.LASF12
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF13
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x9d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x9d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x9d
	.byte	0x18
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x9d
	.byte	0x20
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x9d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x9d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x9d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x9d
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x9d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x9d
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x9d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x24f
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x255
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x85
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x25b
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x26b
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x91
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x276
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x281
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x255
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x287
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xaf
	.uleb128 0xb
	.long	.LASF117
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x8
	.byte	0x8
	.long	0x24a
	.uleb128 0x8
	.byte	0x8
	.long	0xaf
	.uleb128 0xd
	.long	0xa3
	.long	0x26b
	.uleb128 0xe
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x242
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x8
	.byte	0x8
	.long	0x271
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x8
	.byte	0x8
	.long	0x27c
	.uleb128 0xd
	.long	0xa3
	.long	0x297
	.uleb128 0xe
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xaa
	.uleb128 0x7
	.long	0x297
	.uleb128 0xf
	.long	0x297
	.uleb128 0x10
	.long	.LASF45
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x2b3
	.uleb128 0x8
	.byte	0x8
	.long	0x236
	.uleb128 0xf
	.long	0x2b3
	.uleb128 0x10
	.long	.LASF46
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x2b3
	.uleb128 0x10
	.long	.LASF47
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x2b3
	.uleb128 0x10
	.long	.LASF48
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x29d
	.long	0x2ed
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	0x2e2
	.uleb128 0x10
	.long	.LASF49
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x2ed
	.uleb128 0x10
	.long	.LASF50
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF51
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x2ed
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF52
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF53
	.uleb128 0x12
	.long	.LASF54
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF56
	.byte	0xb
	.byte	0x66
	.byte	0x16
	.long	0x79
	.uleb128 0xd
	.long	0x9d
	.long	0x354
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF57
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x344
	.uleb128 0x10
	.long	.LASF58
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF59
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0x72
	.uleb128 0x10
	.long	.LASF60
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x344
	.uleb128 0x10
	.long	.LASF61
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF62
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0x72
	.uleb128 0x12
	.long	.LASF63
	.byte	0xc
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x29d
	.long	0x3b9
	.uleb128 0xe
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	0x3a9
	.uleb128 0x12
	.long	.LASF64
	.byte	0xd
	.value	0x11e
	.byte	0x1a
	.long	0x3b9
	.uleb128 0x12
	.long	.LASF65
	.byte	0xd
	.value	0x11f
	.byte	0x1a
	.long	0x3b9
	.uleb128 0x12
	.long	.LASF66
	.byte	0xe
	.value	0x21f
	.byte	0xf
	.long	0x3e5
	.uleb128 0x8
	.byte	0x8
	.long	0x9d
	.uleb128 0xf
	.long	0x3e5
	.uleb128 0x12
	.long	.LASF67
	.byte	0xe
	.value	0x221
	.byte	0xf
	.long	0x3e5
	.uleb128 0x10
	.long	.LASF68
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0x9d
	.uleb128 0x10
	.long	.LASF69
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF70
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF71
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF72
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0x9d
	.uleb128 0x10
	.long	.LASF73
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0x9d
	.uleb128 0x10
	.long	.LASF74
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x297
	.uleb128 0x10
	.long	.LASF75
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0xd
	.long	0xaa
	.long	0x468
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	0x45d
	.uleb128 0x10
	.long	.LASF76
	.byte	0x13
	.byte	0x19
	.byte	0x13
	.long	0x468
	.uleb128 0x10
	.long	.LASF77
	.byte	0x14
	.byte	0x20
	.byte	0x14
	.long	0x297
	.uleb128 0x13
	.long	.LASF118
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x15
	.byte	0x20
	.byte	0x6
	.long	0x4da
	.uleb128 0x14
	.long	.LASF78
	.byte	0
	.uleb128 0x14
	.long	.LASF79
	.byte	0x1
	.uleb128 0x14
	.long	.LASF80
	.byte	0x2
	.uleb128 0x14
	.long	.LASF81
	.byte	0x3
	.uleb128 0x14
	.long	.LASF82
	.byte	0x4
	.uleb128 0x14
	.long	.LASF83
	.byte	0x5
	.uleb128 0x14
	.long	.LASF84
	.byte	0x6
	.uleb128 0x14
	.long	.LASF85
	.byte	0x7
	.uleb128 0x14
	.long	.LASF86
	.byte	0x8
	.uleb128 0x14
	.long	.LASF87
	.byte	0x9
	.uleb128 0x14
	.long	.LASF88
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x485
	.uleb128 0x12
	.long	.LASF89
	.byte	0x15
	.value	0x10b
	.byte	0x1a
	.long	0x2ed
	.uleb128 0xd
	.long	0x4da
	.long	0x4f7
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	0x4ec
	.uleb128 0x12
	.long	.LASF90
	.byte	0x15
	.value	0x10c
	.byte	0x21
	.long	0x4f7
	.uleb128 0x15
	.long	.LASF94
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fe
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.byte	0x8c
	.byte	0x9
	.long	0x9d
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.byte	0x8d
	.byte	0x9
	.long	0x9d
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.byte	0x8e
	.byte	0x9
	.long	0x9d
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x17
	.quad	.LVL42
	.long	0x9fc
	.long	0x582
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x17
	.quad	.LVL44
	.long	0x9fc
	.long	0x5a1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x17
	.quad	.LVL46
	.long	0x9fc
	.long	0x5c0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x17
	.quad	.LVL49
	.long	0x5fe
	.long	0x5d8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.quad	.LVL50
	.long	0x5fe
	.long	0x5f0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.quad	.LVL54
	.long	0x5fe
	.byte	0
	.uleb128 0x15
	.long	.LASF95
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x96e
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.long	0x2b3
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.byte	0x5b
	.byte	0x27
	.long	0x297
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x5d
	.byte	0x9
	.long	0x9d
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x16
	.long	.LASF98
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.long	0x61
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x16
	.long	.LASF99
	.byte	0x1
	.byte	0x5f
	.byte	0xd
	.long	0x338
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0
	.long	0x867
	.uleb128 0x1d
	.long	.LASF119
	.byte	0x1
	.byte	0x68
	.byte	0xd
	.long	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	0x997
	.quad	.LBI25
	.byte	.LVU22
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0x1
	.byte	0x69
	.byte	0xe
	.long	0x709
	.uleb128 0x1f
	.long	0x9c3
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1f
	.long	0x9b6
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1f
	.long	0x9a9
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x20
	.quad	.LVL9
	.long	0xa09
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x96e
	.quad	.LBI27
	.byte	.LVU37
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x6c
	.byte	0xb
	.long	0x743
	.uleb128 0x1f
	.long	0x97f
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x23
	.long	0x98a
	.long	.LLST9
	.long	.LVUS9
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x9d1
	.quad	.LBI31
	.byte	.LVU48
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x6c
	.byte	0xb
	.long	0x796
	.uleb128 0x1f
	.long	0x9ee
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1f
	.long	0x9e2
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x20
	.quad	.LVL19
	.long	0xa16
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x9d1
	.quad	.LBI35
	.byte	.LVU98
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x77
	.byte	0xb
	.long	0x7e5
	.uleb128 0x1f
	.long	0x9ee
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1f
	.long	0x9e2
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x20
	.quad	.LVL39
	.long	0xa16
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.quad	.LVL13
	.long	0xa22
	.long	0x7fe
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x17
	.quad	.LVL15
	.long	0xa2f
	.long	0x827
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x17
	.quad	.LVL33
	.long	0xa3b
	.long	0x841
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.quad	.LVL35
	.long	0xa2f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x96e
	.quad	.LBI39
	.byte	.LVU59
	.long	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x82
	.byte	0x7
	.long	0x8a1
	.uleb128 0x1f
	.long	0x97f
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x22
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x23
	.long	0x98a
	.long	.LLST15
	.long	.LVUS15
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x9d1
	.quad	.LBI43
	.byte	.LVU70
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x82
	.byte	0x7
	.long	0x8f4
	.uleb128 0x1f
	.long	0x9ee
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1f
	.long	0x9e2
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x20
	.quad	.LVL27
	.long	0xa16
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.quad	.LVL3
	.long	0xa48
	.long	0x912
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.quad	.LVL21
	.long	0xa22
	.long	0x92a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.quad	.LVL23
	.long	0xa2f
	.long	0x953
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x19
	.quad	.LVL31
	.long	0xa55
	.uleb128 0x24
	.quad	.LVL41
	.long	0xa62
	.byte	0
	.uleb128 0x25
	.long	.LASF120
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0x297
	.byte	0x1
	.long	0x997
	.uleb128 0x26
	.string	"fd"
	.byte	0x1
	.byte	0x43
	.byte	0x1b
	.long	0x6d
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x45
	.byte	0xf
	.long	0x297
	.byte	0
	.uleb128 0x28
	.long	.LASF121
	.byte	0x2
	.value	0x150
	.byte	0x1
	.long	0x338
	.byte	0x3
	.long	0x9d1
	.uleb128 0x29
	.long	.LASF100
	.byte	0x2
	.value	0x150
	.byte	0x1
	.long	0x2a2
	.uleb128 0x29
	.long	.LASF101
	.byte	0x2
	.value	0x150
	.byte	0x1
	.long	0x3eb
	.uleb128 0x29
	.long	.LASF102
	.byte	0x2
	.value	0x150
	.byte	0x1
	.long	0x61
	.byte	0
	.uleb128 0x2a
	.long	.LASF122
	.byte	0x3
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x9fc
	.uleb128 0x2b
	.long	.LASF103
	.byte	0x3
	.byte	0x62
	.byte	0x1b
	.long	0x2b9
	.uleb128 0x2b
	.long	.LASF104
	.byte	0x3
	.byte	0x62
	.byte	0x3c
	.long	0x2a2
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2d
	.long	.LASF105
	.long	.LASF105
	.byte	0x16
	.value	0x27a
	.byte	0xe
	.uleb128 0x2d
	.long	.LASF106
	.long	.LASF106
	.byte	0x2
	.value	0x14a
	.byte	0x1a
	.uleb128 0x2e
	.long	.LASF107
	.long	.LASF107
	.byte	0x3
	.byte	0x58
	.byte	0xc
	.uleb128 0x2d
	.long	.LASF108
	.long	.LASF108
	.byte	0x8
	.value	0x312
	.byte	0xc
	.uleb128 0x2e
	.long	.LASF109
	.long	.LASF109
	.byte	0x17
	.byte	0x33
	.byte	0xe
	.uleb128 0x2d
	.long	.LASF110
	.long	.LASF110
	.byte	0x16
	.value	0x21b
	.byte	0xe
	.uleb128 0x2d
	.long	.LASF111
	.long	.LASF111
	.byte	0x8
	.value	0x134
	.byte	0xc
	.uleb128 0x2d
	.long	.LASF112
	.long	.LASF112
	.byte	0x16
	.value	0x235
	.byte	0xd
	.uleb128 0x2f
	.long	.LASF123
	.long	.LASF123
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x29
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
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
.LVUS18:
	.uleb128 .LVU115
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU135
	.uleb128 .LVU136
	.uleb128 .LVU139
.LLST18:
	.quad	.LVL43
	.quad	.LVL44-1
	.value	0x1
	.byte	0x50
	.quad	.LVL44-1
	.quad	.LVL53
	.value	0x1
	.byte	0x5d
	.quad	.LVL54
	.quad	.LVL57
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU119
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU134
	.uleb128 .LVU136
	.uleb128 .LVU138
.LLST19:
	.quad	.LVL45
	.quad	.LVL46-1
	.value	0x1
	.byte	0x50
	.quad	.LVL46-1
	.quad	.LVL52
	.value	0x1
	.byte	0x5c
	.quad	.LVL54
	.quad	.LVL56
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU122
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU137
.LLST20:
	.quad	.LVL47
	.quad	.LVL48
	.value	0x1
	.byte	0x50
	.quad	.LVL48
	.quad	.LVL51
	.value	0x1
	.byte	0x56
	.quad	.LVL51
	.quad	.LVL54-1
	.value	0x1
	.byte	0x54
	.quad	.LVL54
	.quad	.LVL55
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL4
	.value	0x1
	.byte	0x56
	.quad	.LVL4
	.quad	.LVL6
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL6
	.quad	.LVL8
	.value	0x1
	.byte	0x55
	.quad	.LVL8
	.quad	.LVL12
	.value	0x1
	.byte	0x56
	.quad	.LVL12
	.quad	.LVL13-1
	.value	0x1
	.byte	0x55
	.quad	.LVL13-1
	.quad	.LVL20
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL20
	.quad	.LVL28
	.value	0x1
	.byte	0x56
	.quad	.LVL28
	.quad	.LVL31
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL32
	.value	0x1
	.byte	0x55
	.quad	.LVL32
	.quad	.LVL40
	.value	0x1
	.byte	0x56
	.quad	.LVL40
	.quad	.LFE136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x54
	.quad	.LVL2
	.quad	.LVL5
	.value	0x1
	.byte	0x5c
	.quad	.LVL5
	.quad	.LVL6
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x54
	.quad	.LVL7
	.quad	.LVL29
	.value	0x1
	.byte	0x5c
	.quad	.LVL29
	.quad	.LVL31
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL32
	.value	0x1
	.byte	0x54
	.quad	.LVL32
	.quad	.LFE136
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU17
	.uleb128 .LVU19
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU105
.LLST2:
	.quad	.LVL1
	.quad	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL2
	.quad	.LVL4
	.value	0x1
	.byte	0x5d
	.quad	.LVL6
	.quad	.LVL20
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL20
	.quad	.LVL30
	.value	0x1
	.byte	0x5d
	.quad	.LVL30
	.quad	.LVL31-1
	.value	0x1
	.byte	0x55
	.quad	.LVL31
	.quad	.LVL34
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL34
	.quad	.LVL35-1
	.value	0x1
	.byte	0x50
	.quad	.LVL35-1
	.quad	.LVL40
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU14
	.uleb128 .LVU16
	.uleb128 .LVU20
	.uleb128 .LVU55
	.uleb128 .LVU87
	.uleb128 .LVU105
.LLST3:
	.quad	.LVL2
	.quad	.LVL3-1
	.value	0x1
	.byte	0x51
	.quad	.LVL6
	.quad	.LVL20
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL32
	.quad	.LVL40
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU6
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU16
	.uleb128 .LVU19
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU37
	.uleb128 .LVU84
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU105
.LLST4:
	.quad	.LVL1
	.quad	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL2
	.quad	.LVL3-1
	.value	0x1
	.byte	0x52
	.quad	.LVL6
	.quad	.LVL10
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL10
	.quad	.LVL11
	.value	0x1
	.byte	0x50
	.quad	.LVL11
	.quad	.LVL13-1
	.value	0x1
	.byte	0x52
	.quad	.LVL31
	.quad	.LVL32
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL32
	.quad	.LVL33-1
	.value	0x1
	.byte	0x52
	.quad	.LVL33-1
	.quad	.LVL40
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU22
	.uleb128 .LVU28
.LLST5:
	.quad	.LVL6
	.quad	.LVL10
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU22
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
.LLST6:
	.quad	.LVL6
	.quad	.LVL7
	.value	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.quad	.LVL7
	.quad	.LVL9-1
	.value	0x1
	.byte	0x54
	.quad	.LVL9-1
	.quad	.LVL10
	.value	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU22
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU28
.LLST7:
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x54
	.quad	.LVL7
	.quad	.LVL10
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU37
	.uleb128 .LVU44
.LLST8:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU39
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU44
.LLST9:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL14
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU48
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU53
.LLST10:
	.quad	.LVL16
	.quad	.LVL17
	.value	0x1
	.byte	0x50
	.quad	.LVL17
	.quad	.LVL19-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU51
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU53
.LLST11:
	.quad	.LVL17
	.quad	.LVL18
	.value	0x2
	.byte	0x70
	.sleb128 0
	.quad	.LVL18
	.quad	.LVL19-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU98
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU103
.LLST12:
	.quad	.LVL36
	.quad	.LVL37
	.value	0x1
	.byte	0x50
	.quad	.LVL37
	.quad	.LVL39-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU101
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU103
.LLST13:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x2
	.byte	0x70
	.sleb128 0
	.quad	.LVL38
	.quad	.LVL39-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU59
	.uleb128 .LVU66
.LLST14:
	.quad	.LVL21
	.quad	.LVL22
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU61
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
.LLST15:
	.quad	.LVL21
	.quad	.LVL22
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL22
	.quad	.LVL22
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU70
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU75
.LLST16:
	.quad	.LVL24
	.quad	.LVL25
	.value	0x1
	.byte	0x50
	.quad	.LVL25
	.quad	.LVL27-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU75
.LLST17:
	.quad	.LVL25
	.quad	.LVL26
	.value	0x2
	.byte	0x70
	.sleb128 0
	.quad	.LVL26
	.quad	.LVL27-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB24
	.quad	.LBE24
	.quad	.LBB47
	.quad	.LBE47
	.quad	0
	.quad	0
	.quad	.LBB27
	.quad	.LBE27
	.quad	.LBB30
	.quad	.LBE30
	.quad	0
	.quad	0
	.quad	.LBB31
	.quad	.LBE31
	.quad	.LBB34
	.quad	.LBE34
	.quad	0
	.quad	0
	.quad	.LBB35
	.quad	.LBE35
	.quad	.LBB38
	.quad	.LBE38
	.quad	0
	.quad	0
	.quad	.LBB39
	.quad	.LBE39
	.quad	.LBB42
	.quad	.LBE42
	.quad	0
	.quad	0
	.quad	.LBB43
	.quad	.LBE43
	.quad	.LBB46
	.quad	.LBE46
	.quad	0
	.quad	0
	.quad	.LFB136
	.quad	.LFE136
	.quad	.LFB137
	.quad	.LFE137
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF75:
	.string	"exit_failure"
.LASF9:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF86:
	.string	"locale_quoting_style"
.LASF25:
	.string	"_chain"
.LASF118:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF79:
	.string	"shell_quoting_style"
.LASF96:
	.string	"stream"
.LASF91:
	.string	"e_mode"
.LASF55:
	.string	"long long unsigned int"
.LASF98:
	.string	"setvbuf_mode"
.LASF112:
	.string	"free"
.LASF34:
	.string	"_codecvt"
.LASF59:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF90:
	.string	"quoting_style_vals"
.LASF95:
	.string	"apply_mode"
.LASF56:
	.string	"uintmax_t"
.LASF85:
	.string	"escape_quoting_style"
.LASF78:
	.string	"literal_quoting_style"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF65:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF54:
	.string	"_gl_cxxalias_dummy"
.LASF93:
	.string	"o_mode"
.LASF12:
	.string	"_flags"
.LASF35:
	.string	"_wide_data"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF73:
	.string	"program_invocation_short_name"
.LASF83:
	.string	"c_quoting_style"
.LASF43:
	.string	"_IO_codecvt"
.LASF51:
	.string	"_sys_errlist"
.LASF72:
	.string	"program_invocation_name"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF119:
	.string	"mode_end"
.LASF82:
	.string	"shell_escape_always_quoting_style"
.LASF62:
	.string	"timezone"
.LASF77:
	.string	"program_name"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF37:
	.string	"_freeres_buf"
.LASF122:
	.string	"fprintf"
.LASF103:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF48:
	.string	"sys_nerr"
.LASF99:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF74:
	.string	"Version"
.LASF21:
	.string	"_IO_save_base"
.LASF67:
	.string	"environ"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF101:
	.string	"endptr"
.LASF46:
	.string	"stdout"
.LASF76:
	.string	"version_etc_copyright"
.LASF120:
	.string	"fileno_to_name"
.LASF105:
	.string	"getenv"
.LASF68:
	.string	"optarg"
.LASF121:
	.string	"strtoumax"
.LASF63:
	.string	"getdate_err"
.LASF69:
	.string	"optind"
.LASF18:
	.string	"_IO_write_end"
.LASF117:
	.string	"_IO_lock_t"
.LASF116:
	.string	"_IO_FILE"
.LASF66:
	.string	"__environ"
.LASF58:
	.string	"__daylight"
.LASF114:
	.string	"src/libstdbuf.c"
.LASF49:
	.string	"sys_errlist"
.LASF100:
	.string	"nptr"
.LASF24:
	.string	"_markers"
.LASF102:
	.string	"base"
.LASF84:
	.string	"c_maybe_quoting_style"
.LASF2:
	.string	"unsigned char"
.LASF106:
	.string	"__strtoul_internal"
.LASF5:
	.string	"short int"
.LASF50:
	.string	"_sys_nerr"
.LASF30:
	.string	"_vtable_offset"
.LASF60:
	.string	"tzname"
.LASF110:
	.string	"malloc"
.LASF41:
	.string	"FILE"
.LASF107:
	.string	"__fprintf_chk"
.LASF123:
	.string	"__stack_chk_fail"
.LASF81:
	.string	"shell_escape_quoting_style"
.LASF109:
	.string	"dcgettext"
.LASF89:
	.string	"quoting_style_args"
.LASF71:
	.string	"optopt"
.LASF61:
	.string	"daylight"
.LASF108:
	.string	"fileno"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF80:
	.string	"shell_always_quoting_style"
.LASF97:
	.string	"mode"
.LASF94:
	.string	"stdbuf"
.LASF87:
	.string	"clocale_quoting_style"
.LASF70:
	.string	"opterr"
.LASF8:
	.string	"__uintmax_t"
.LASF10:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF64:
	.string	"_sys_siglist"
.LASF104:
	.string	"__fmt"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF92:
	.string	"i_mode"
.LASF115:
	.string	"/root/coreutils"
.LASF88:
	.string	"custom_quoting_style"
.LASF113:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fPIC -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF22:
	.string	"_IO_backup_base"
.LASF111:
	.string	"setvbuf"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF57:
	.string	"__tzname"
.LASF16:
	.string	"_IO_write_base"
.LASF19:
	.string	"_IO_buf_base"
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
