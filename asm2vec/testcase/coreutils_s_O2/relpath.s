	.file	"relpath.c"
	.text
.Ltext0:
	.p2align 4
	.type	buffer_or_output, @function
buffer_or_output:
.LVL0:
.LFB136:
	.file 1 "src/relpath.c"
	.loc 1 67 1 view -0
	.cfi_startproc
	.loc 1 67 1 is_stmt 0 view .LVU1
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	.loc 1 68 3 is_stmt 1 view .LVU2
	.loc 1 67 1 is_stmt 0 view .LVU3
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.loc 1 68 7 view .LVU4
	movq	(%rsi), %r14
	.loc 1 68 6 view .LVU5
	testq	%r14, %r14
	je	.L2
	movq	%rsi, %rbx
	movq	%rdx, %rbp
.LBB16:
	.loc 1 70 7 is_stmt 1 view .LVU6
	.loc 1 70 21 is_stmt 0 view .LVU7
	call	strlen@PLT
.LVL1:
	.loc 1 70 21 view .LVU8
	movq	%rax, %r12
.LVL2:
	.loc 1 71 7 is_stmt 1 view .LVU9
	.loc 1 72 16 is_stmt 0 view .LVU10
	movl	$1, %eax
.LVL3:
	.loc 1 71 10 view .LVU11
	cmpq	%r12, 0(%rbp)
	ja	.L7
.LBE16:
	.loc 1 83 1 view .LVU12
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
.LVL4:
	.loc 1 83 1 view .LVU13
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL5:
	.loc 1 83 1 view .LVU14
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL6:
	.loc 1 83 1 view .LVU15
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL7:
	.loc 1 83 1 view .LVU16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.LVL8:
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
.LBB21:
	.loc 1 73 7 is_stmt 1 view .LVU17
.LBB17:
.LBI17:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 31 1 view .LVU18
.LBB18:
	.loc 2 34 3 view .LVU19
.LBE18:
.LBE17:
	.loc 1 73 7 is_stmt 0 view .LVU20
	leaq	1(%r12), %rdx
.LVL9:
.LBB20:
.LBB19:
	.loc 2 34 10 view .LVU21
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	memcpy@PLT
.LVL10:
	.loc 2 34 10 view .LVU22
.LBE19:
.LBE20:
	.loc 1 74 7 is_stmt 1 view .LVU23
	.loc 1 74 13 is_stmt 0 view .LVU24
	addq	%r12, (%rbx)
	.loc 1 75 7 is_stmt 1 view .LVU25
.LBE21:
	.loc 1 82 10 is_stmt 0 view .LVU26
	xorl	%eax, %eax
.LBB22:
	.loc 1 75 13 view .LVU27
	subq	%r12, 0(%rbp)
.LBE22:
	.loc 1 83 1 view .LVU28
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
.LVL11:
	.loc 1 83 1 view .LVU29
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL12:
	.loc 1 83 1 view .LVU30
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL13:
	.loc 1 83 1 view .LVU31
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL14:
	.loc 1 83 1 view .LVU32
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.LVL15:
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
.LBB23:
.LBI23:
	.loc 1 66 1 is_stmt 1 view .LVU33
.LBB24:
	.loc 1 79 7 view .LVU34
	movq	stdout(%rip), %rsi
.LVL16:
	.loc 1 79 7 is_stmt 0 view .LVU35
	call	fputs_unlocked@PLT
.LVL17:
	.loc 1 79 7 view .LVU36
.LBE24:
.LBE23:
	.loc 1 83 1 view .LVU37
	popq	%rbx
	.cfi_def_cfa_offset 40
.LBB26:
.LBB25:
	.loc 1 79 7 view .LVU38
	xorl	%eax, %eax
.LBE25:
.LBE26:
	.loc 1 83 1 view .LVU39
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL18:
	.loc 1 83 1 view .LVU40
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE136:
	.size	buffer_or_output, .-buffer_or_output
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"."
.LC1:
	.string	".."
.LC2:
	.string	"/.."
.LC3:
	.string	"/"
.LC4:
	.string	"generating relative path"
.LC5:
	.string	"%s"
	.text
	.p2align 4
	.globl	relpath
	.type	relpath, @function
relpath:
.LVL19:
.LFB137:
	.loc 1 89 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 89 1 is_stmt 0 view .LVU42
	endbr64
	.loc 1 90 3 is_stmt 1 view .LVU43
.LVL20:
	.loc 1 93 3 view .LVU44
.LBB29:
.LBI29:
	.loc 1 30 1 view .LVU45
.LBB30:
	.loc 1 32 3 view .LVU46
	.loc 1 33 3 view .LVU47
	.loc 1 38 3 view .LVU48
.LBE30:
.LBE29:
	.loc 1 89 1 is_stmt 0 view .LVU49
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
.LBB36:
.LBB31:
	.loc 1 38 25 view .LVU50
	cmpb	$47, 1(%rsi)
.LBE31:
.LBE36:
	.loc 1 89 1 view .LVU51
	movq	%rcx, (%rsp)
.LBB37:
.LBB32:
	.loc 1 38 25 view .LVU52
	sete	%cl
.LVL21:
	.loc 1 38 25 view .LVU53
	cmpb	$47, 1(%rdi)
.LBE32:
.LBE37:
	.loc 1 89 1 view .LVU54
	movq	%rdx, 8(%rsp)
.LBB38:
.LBB33:
	.loc 1 38 25 view .LVU55
	sete	%dl
.LVL22:
	.loc 1 38 25 view .LVU56
.LBE33:
.LBE38:
	.loc 1 95 12 view .LVU57
	xorl	%eax, %eax
.LBB39:
.LBB34:
	.loc 1 38 6 view .LVU58
	cmpb	%dl, %cl
	jne	.L8
	.loc 1 41 9 is_stmt 1 view .LVU59
	.loc 1 41 10 is_stmt 0 view .LVU60
	movzbl	(%rsi), %edx
	.loc 1 41 9 view .LVU61
	testb	%dl, %dl
	je	.L8
	movq	%rdi, %r8
	movq	%rsi, %r9
	.loc 1 33 7 view .LVU62
	xorl	%eax, %eax
	.loc 1 32 7 view .LVU63
	xorl	%ecx, %ecx
	jmp	.L10
.LVL23:
	.p2align 4,,10
	.p2align 3
.L45:
	.loc 1 43 10 view .LVU64
	testb	%r11b, %r11b
	jne	.L31
	.loc 1 45 7 is_stmt 1 view .LVU65
	addl	$1, %ecx
.LVL24:
	.loc 1 45 10 is_stmt 0 view .LVU66
	cmpb	$47, %dl
	cmove	%ecx, %eax
.LVL25:
	.loc 1 47 7 is_stmt 1 view .LVU67
	.loc 1 41 10 is_stmt 0 view .LVU68
	movzbl	1(%r9), %edx
	.loc 1 47 12 view .LVU69
	addq	$1, %r9
.LVL26:
	.loc 1 48 7 is_stmt 1 view .LVU70
	.loc 1 48 12 is_stmt 0 view .LVU71
	addq	$1, %r8
.LVL27:
	.loc 1 49 7 is_stmt 1 view .LVU72
	.loc 1 41 9 view .LVU73
	testb	%dl, %dl
	je	.L44
.LVL28:
.L10:
	.loc 1 41 20 is_stmt 0 view .LVU74
	movzbl	(%r8), %r10d
	.loc 1 43 7 is_stmt 1 view .LVU75
	.loc 1 41 17 is_stmt 0 view .LVU76
	testb	%r10b, %r10b
	sete	%r11b
	.loc 1 43 10 view .LVU77
	cmpb	%dl, %r10b
	je	.L45
.L31:
	.loc 1 54 19 view .LVU78
	cmpb	$47, %dl
	jne	.L13
	testb	%r11b, %r11b
	cmovne	%ecx, %eax
.LVL29:
.L13:
	.loc 1 54 19 view .LVU79
.LBE34:
.LBE39:
	.loc 1 94 3 is_stmt 1 view .LVU80
	.loc 1 94 6 is_stmt 0 view .LVU81
	testl	%eax, %eax
	je	.L46
.LVL30:
.L12:
	.loc 1 97 3 is_stmt 1 view .LVU82
	.loc 1 97 41 is_stmt 0 view .LVU83
	cltq
	.loc 1 97 15 view .LVU84
	leaq	(%rsi,%rax), %rbx
.LVL31:
	.loc 1 98 3 is_stmt 1 view .LVU85
	.loc 1 98 15 is_stmt 0 view .LVU86
	leaq	(%rdi,%rax), %r12
.LVL32:
	.loc 1 101 3 is_stmt 1 view .LVU87
	.loc 1 101 7 is_stmt 0 view .LVU88
	movzbl	(%rbx), %eax
.LVL33:
	.loc 1 101 6 view .LVU89
	cmpb	$47, %al
	jne	.L17
	.loc 1 102 5 is_stmt 1 view .LVU90
.LVL34:
	.loc 1 102 5 is_stmt 0 view .LVU91
	movzbl	1(%rbx), %eax
	.loc 1 102 17 view .LVU92
	addq	$1, %rbx
.LVL35:
.L17:
	.loc 1 103 3 is_stmt 1 view .LVU93
	.loc 1 104 17 is_stmt 0 view .LVU94
	xorl	%edx, %edx
	cmpb	$47, (%r12)
	sete	%dl
	addq	%rdx, %r12
.LVL36:
	.loc 1 108 3 is_stmt 1 view .LVU95
	.loc 1 108 6 is_stmt 0 view .LVU96
	testb	%al, %al
	jne	.L47
	.loc 1 125 9 is_stmt 1 view .LVU97
	.loc 1 125 20 is_stmt 0 view .LVU98
	cmpb	$0, (%r12)
	leaq	.LC0(%rip), %rax
	movq	%rsp, %rdx
	cmove	%rax, %r12
.LVL37:
	.loc 1 125 20 view .LVU99
	leaq	8(%rsp), %rsi
.LVL38:
	.loc 1 125 20 view .LVU100
	movq	%r12, %rdi
.LVL39:
	.loc 1 125 20 view .LVU101
	call	buffer_or_output
.LVL40:
	.loc 1 125 20 view .LVU102
	movl	%eax, %ebp
.LVL41:
.L23:
	.loc 1 129 3 is_stmt 1 view .LVU103
	.loc 1 129 6 is_stmt 0 view .LVU104
	testb	%bpl, %bpl
	jne	.L48
.L25:
	.loc 1 132 3 is_stmt 1 view .LVU105
	movl	%ebp, %eax
	xorl	$1, %eax
.LVL42:
.L8:
	.loc 1 133 1 is_stmt 0 view .LVU106
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL43:
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore_state
.LBB40:
.LBB35:
	.loc 1 52 3 is_stmt 1 view .LVU107
	.loc 1 52 20 is_stmt 0 view .LVU108
	movzbl	(%r8), %edx
	.loc 1 53 7 view .LVU109
	testb	%dl, %dl
	je	.L28
	cmpb	$47, %dl
	jne	.L13
.L28:
	movl	%ecx, %eax
.LVL44:
	.loc 1 53 7 view .LVU110
	jmp	.L12
.LVL45:
	.p2align 4,,10
	.p2align 3
.L48:
	.loc 1 53 7 view .LVU111
.LBE35:
.LBE40:
	.loc 1 130 5 is_stmt 1 view .LVU112
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC4(%rip), %rsi
	call	dcgettext@PLT
.LVL46:
	leaq	.LC5(%rip), %rdx
	movl	$36, %esi
	xorl	%edi, %edi
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	error@PLT
.LVL47:
	jmp	.L25
.LVL48:
	.p2align 4,,10
	.p2align 3
.L47:
	.loc 1 110 7 view .LVU113
	.loc 1 110 18 is_stmt 0 view .LVU114
	movq	%rsp, %r14
	leaq	8(%rsp), %r13
.LVL49:
	.loc 1 110 18 view .LVU115
	leaq	.LC1(%rip), %rdi
.LVL50:
	.loc 1 110 18 view .LVU116
	movq	%r14, %rdx
	movq	%r13, %rsi
.LVL51:
	.loc 1 110 18 view .LVU117
	call	buffer_or_output
.LVL52:
	.loc 1 110 18 view .LVU118
	movl	%eax, %ebp
.LVL53:
	.loc 1 111 7 is_stmt 1 view .LVU119
	.loc 1 111 14 view .LVU120
	movzbl	(%rbx), %eax
.LVL54:
	.loc 1 111 7 is_stmt 0 view .LVU121
	testb	%al, %al
	je	.L20
	.loc 1 114 24 view .LVU122
	leaq	.LC2(%rip), %r15
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L21:
	.loc 1 111 29 is_stmt 1 view .LVU123
	.loc 1 111 14 is_stmt 0 view .LVU124
	movzbl	1(%rbx), %eax
	.loc 1 111 29 view .LVU125
	addq	$1, %rbx
.LVL55:
	.loc 1 111 14 is_stmt 1 view .LVU126
	.loc 1 111 7 is_stmt 0 view .LVU127
	testb	%al, %al
	je	.L20
.L22:
	.loc 1 113 11 is_stmt 1 view .LVU128
	.loc 1 113 14 is_stmt 0 view .LVU129
	cmpb	$47, %al
	jne	.L21
	.loc 1 114 13 is_stmt 1 view .LVU130
	.loc 1 114 24 is_stmt 0 view .LVU131
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	.loc 1 111 29 view .LVU132
	addq	$1, %rbx
.LVL56:
	.loc 1 114 24 view .LVU133
	call	buffer_or_output
.LVL57:
	.loc 1 114 21 view .LVU134
	orl	%eax, %ebp
.LVL58:
	.loc 1 111 29 is_stmt 1 view .LVU135
	.loc 1 111 14 view .LVU136
	movzbl	(%rbx), %eax
	.loc 1 111 7 is_stmt 0 view .LVU137
	testb	%al, %al
	jne	.L22
	.p2align 4,,10
	.p2align 3
.L20:
	.loc 1 117 7 is_stmt 1 view .LVU138
	.loc 1 117 10 is_stmt 0 view .LVU139
	cmpb	$0, (%r12)
	je	.L23
	.loc 1 119 11 is_stmt 1 view .LVU140
	.loc 1 119 22 is_stmt 0 view .LVU141
	movq	%r14, %rdx
	movq	%r13, %rsi
	leaq	.LC3(%rip), %rdi
	call	buffer_or_output
.LVL59:
	.loc 1 120 22 view .LVU142
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	.loc 1 119 22 view .LVU143
	movl	%eax, %ebx
.LVL60:
	.loc 1 120 11 is_stmt 1 view .LVU144
	.loc 1 120 22 is_stmt 0 view .LVU145
	call	buffer_or_output
.LVL61:
	.loc 1 120 19 view .LVU146
	orl	%eax, %ebx
.LVL62:
	.loc 1 120 19 view .LVU147
	orl	%ebx, %ebp
.LVL63:
	.loc 1 120 19 view .LVU148
	jmp	.L23
.LVL64:
	.p2align 4,,10
	.p2align 3
.L46:
	.loc 1 95 12 view .LVU149
	xorl	%eax, %eax
.LVL65:
	.loc 1 95 12 view .LVU150
	jmp	.L8
	.cfi_endproc
.LFE137:
	.size	relpath, .-relpath
.Letext0:
	.file 3 "./lib/error.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "./lib/sys/select.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/include/signal.h"
	.file 9 "/usr/include/unistd.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 11 "/usr/include/errno.h"
	.file 12 "src/version.h"
	.file 13 "./lib/exitfail.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 18 "./lib/version-etc.h"
	.file 19 "./lib/progname.h"
	.file 20 "./lib/quotearg.h"
	.file 21 "/usr/include/libintl.h"
	.file 22 "/usr/include/string.h"
	.file 23 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x958
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF113
	.byte	0xc
	.long	.LASF114
	.long	.LASF115
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.uleb128 0x3
	.long	.LASF0
	.byte	0x3
	.byte	0x32
	.byte	0xf
	.long	0x3a
	.uleb128 0x4
	.byte	0x8
	.long	0x2d
	.uleb128 0x3
	.long	.LASF1
	.byte	0x3
	.byte	0x35
	.byte	0x15
	.long	0x4c
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x39
	.byte	0xc
	.long	0x5f
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x5f
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x8
	.long	.LASF10
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x8e
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x8e
	.uleb128 0x9
	.byte	0x8
	.uleb128 0xa
	.long	0xad
	.uleb128 0x4
	.byte	0x8
	.long	0xba
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xb
	.long	0xba
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x79
	.uleb128 0xc
	.long	.LASF14
	.byte	0x6
	.value	0x30c
	.byte	0x1
	.long	0x5f
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x4
	.byte	0x8
	.long	0xc1
	.uleb128 0xb
	.long	0xed
	.uleb128 0xd
	.long	0xb4
	.long	0x108
	.uleb128 0xe
	.long	0x79
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0xf8
	.uleb128 0x3
	.long	.LASF18
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF19
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x8e
	.uleb128 0x3
	.long	.LASF20
	.byte	0x7
	.byte	0xa6
	.byte	0xe
	.long	0xf8
	.uleb128 0x3
	.long	.LASF21
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF22
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.long	0x8e
	.uleb128 0xc
	.long	.LASF23
	.byte	0x7
	.value	0x112
	.byte	0xc
	.long	0x5f
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF24
	.uleb128 0xd
	.long	0xf3
	.long	0x174
	.uleb128 0xe
	.long	0x79
	.byte	0x40
	.byte	0
	.uleb128 0xb
	.long	0x164
	.uleb128 0xc
	.long	.LASF25
	.byte	0x8
	.value	0x11e
	.byte	0x1a
	.long	0x174
	.uleb128 0xc
	.long	.LASF26
	.byte	0x8
	.value	0x11f
	.byte	0x1a
	.long	0x174
	.uleb128 0xc
	.long	.LASF27
	.byte	0x9
	.value	0x21f
	.byte	0xf
	.long	0x1a0
	.uleb128 0x4
	.byte	0x8
	.long	0xb4
	.uleb128 0xc
	.long	.LASF28
	.byte	0x9
	.value	0x221
	.byte	0xf
	.long	0x1a0
	.uleb128 0x3
	.long	.LASF29
	.byte	0xa
	.byte	0x24
	.byte	0xe
	.long	0xb4
	.uleb128 0x3
	.long	.LASF30
	.byte	0xa
	.byte	0x32
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF31
	.byte	0xa
	.byte	0x37
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF32
	.byte	0xa
	.byte	0x3b
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF33
	.byte	0xb
	.byte	0x2d
	.byte	0xe
	.long	0xb4
	.uleb128 0x3
	.long	.LASF34
	.byte	0xb
	.byte	0x2e
	.byte	0xe
	.long	0xb4
	.uleb128 0x4
	.byte	0x8
	.long	0x206
	.uleb128 0xa
	.long	0x1fb
	.uleb128 0xf
	.uleb128 0x3
	.long	.LASF35
	.byte	0xc
	.byte	0x1
	.byte	0x14
	.long	0xed
	.uleb128 0x3
	.long	.LASF36
	.byte	0xd
	.byte	0x12
	.byte	0x15
	.long	0x66
	.uleb128 0x10
	.long	.LASF116
	.byte	0xd8
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0x3a6
	.uleb128 0x11
	.long	.LASF37
	.byte	0xe
	.byte	0x33
	.byte	0x7
	.long	0x5f
	.byte	0
	.uleb128 0x11
	.long	.LASF38
	.byte	0xe
	.byte	0x36
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0x11
	.long	.LASF39
	.byte	0xe
	.byte	0x37
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.uleb128 0x11
	.long	.LASF40
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0x11
	.long	.LASF41
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0x11
	.long	.LASF42
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.uleb128 0x11
	.long	.LASF43
	.byte	0xe
	.byte	0x3b
	.byte	0x9
	.long	0xb4
	.byte	0x30
	.uleb128 0x11
	.long	.LASF44
	.byte	0xe
	.byte	0x3c
	.byte	0x9
	.long	0xb4
	.byte	0x38
	.uleb128 0x11
	.long	.LASF45
	.byte	0xe
	.byte	0x3d
	.byte	0x9
	.long	0xb4
	.byte	0x40
	.uleb128 0x11
	.long	.LASF46
	.byte	0xe
	.byte	0x40
	.byte	0x9
	.long	0xb4
	.byte	0x48
	.uleb128 0x11
	.long	.LASF47
	.byte	0xe
	.byte	0x41
	.byte	0x9
	.long	0xb4
	.byte	0x50
	.uleb128 0x11
	.long	.LASF48
	.byte	0xe
	.byte	0x42
	.byte	0x9
	.long	0xb4
	.byte	0x58
	.uleb128 0x11
	.long	.LASF49
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0x3bf
	.byte	0x60
	.uleb128 0x11
	.long	.LASF50
	.byte	0xe
	.byte	0x46
	.byte	0x14
	.long	0x3c5
	.byte	0x68
	.uleb128 0x11
	.long	.LASF51
	.byte	0xe
	.byte	0x48
	.byte	0x7
	.long	0x5f
	.byte	0x70
	.uleb128 0x11
	.long	.LASF52
	.byte	0xe
	.byte	0x49
	.byte	0x7
	.long	0x5f
	.byte	0x74
	.uleb128 0x11
	.long	.LASF53
	.byte	0xe
	.byte	0x4a
	.byte	0xb
	.long	0x95
	.byte	0x78
	.uleb128 0x11
	.long	.LASF54
	.byte	0xe
	.byte	0x4d
	.byte	0x12
	.long	0x72
	.byte	0x80
	.uleb128 0x11
	.long	.LASF55
	.byte	0xe
	.byte	0x4e
	.byte	0xf
	.long	0x80
	.byte	0x82
	.uleb128 0x11
	.long	.LASF56
	.byte	0xe
	.byte	0x4f
	.byte	0x8
	.long	0x3cb
	.byte	0x83
	.uleb128 0x11
	.long	.LASF57
	.byte	0xe
	.byte	0x51
	.byte	0xf
	.long	0x3db
	.byte	0x88
	.uleb128 0x11
	.long	.LASF58
	.byte	0xe
	.byte	0x59
	.byte	0xd
	.long	0xa1
	.byte	0x90
	.uleb128 0x11
	.long	.LASF59
	.byte	0xe
	.byte	0x5b
	.byte	0x17
	.long	0x3e6
	.byte	0x98
	.uleb128 0x11
	.long	.LASF60
	.byte	0xe
	.byte	0x5c
	.byte	0x19
	.long	0x3f1
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF61
	.byte	0xe
	.byte	0x5d
	.byte	0x14
	.long	0x3c5
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF62
	.byte	0xe
	.byte	0x5e
	.byte	0x9
	.long	0xad
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF63
	.byte	0xe
	.byte	0x5f
	.byte	0xa
	.long	0xc6
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF64
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.long	0x5f
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF65
	.byte	0xe
	.byte	0x62
	.byte	0x8
	.long	0x3f7
	.byte	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0xf
	.byte	0x7
	.byte	0x19
	.long	0x21f
	.uleb128 0x12
	.long	.LASF117
	.byte	0xe
	.byte	0x2b
	.byte	0xe
	.uleb128 0x13
	.long	.LASF67
	.uleb128 0x4
	.byte	0x8
	.long	0x3ba
	.uleb128 0x4
	.byte	0x8
	.long	0x21f
	.uleb128 0xd
	.long	0xba
	.long	0x3db
	.uleb128 0xe
	.long	0x79
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x3b2
	.uleb128 0x13
	.long	.LASF68
	.uleb128 0x4
	.byte	0x8
	.long	0x3e1
	.uleb128 0x13
	.long	.LASF69
	.uleb128 0x4
	.byte	0x8
	.long	0x3ec
	.uleb128 0xd
	.long	0xba
	.long	0x407
	.uleb128 0xe
	.long	0x79
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	.LASF70
	.byte	0x10
	.byte	0x89
	.byte	0xe
	.long	0x413
	.uleb128 0x4
	.byte	0x8
	.long	0x3a6
	.uleb128 0x3
	.long	.LASF71
	.byte	0x10
	.byte	0x8a
	.byte	0xe
	.long	0x413
	.uleb128 0x3
	.long	.LASF72
	.byte	0x10
	.byte	0x8b
	.byte	0xe
	.long	0x413
	.uleb128 0x3
	.long	.LASF73
	.byte	0x11
	.byte	0x1a
	.byte	0xc
	.long	0x5f
	.uleb128 0xd
	.long	0xf3
	.long	0x448
	.uleb128 0x14
	.byte	0
	.uleb128 0xb
	.long	0x43d
	.uleb128 0x3
	.long	.LASF74
	.byte	0x11
	.byte	0x1b
	.byte	0x1a
	.long	0x448
	.uleb128 0x3
	.long	.LASF75
	.byte	0x11
	.byte	0x1e
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF76
	.byte	0x11
	.byte	0x1f
	.byte	0x1a
	.long	0x448
	.uleb128 0xd
	.long	0xc1
	.long	0x47c
	.uleb128 0x14
	.byte	0
	.uleb128 0xb
	.long	0x471
	.uleb128 0x3
	.long	.LASF77
	.byte	0x12
	.byte	0x19
	.byte	0x13
	.long	0x47c
	.uleb128 0x3
	.long	.LASF78
	.byte	0x13
	.byte	0x20
	.byte	0x14
	.long	0xed
	.uleb128 0x15
	.long	.LASF118
	.byte	0x7
	.byte	0x4
	.long	0x4c
	.byte	0x14
	.byte	0x20
	.byte	0x6
	.long	0x4ee
	.uleb128 0x16
	.long	.LASF79
	.byte	0
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.uleb128 0x16
	.long	.LASF81
	.byte	0x2
	.uleb128 0x16
	.long	.LASF82
	.byte	0x3
	.uleb128 0x16
	.long	.LASF83
	.byte	0x4
	.uleb128 0x16
	.long	.LASF84
	.byte	0x5
	.uleb128 0x16
	.long	.LASF85
	.byte	0x6
	.uleb128 0x16
	.long	.LASF86
	.byte	0x7
	.uleb128 0x16
	.long	.LASF87
	.byte	0x8
	.uleb128 0x16
	.long	.LASF88
	.byte	0x9
	.uleb128 0x16
	.long	.LASF89
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.long	0x499
	.uleb128 0xc
	.long	.LASF90
	.byte	0x14
	.value	0x10b
	.byte	0x1a
	.long	0x448
	.uleb128 0xd
	.long	0x4ee
	.long	0x50b
	.uleb128 0x14
	.byte	0
	.uleb128 0xb
	.long	0x500
	.uleb128 0xc
	.long	.LASF91
	.byte	0x14
	.value	0x10c
	.byte	0x21
	.long	0x50b
	.uleb128 0x17
	.long	.LASF119
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x746
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x746
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.byte	0x58
	.byte	0x16
	.long	0xed
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x18
	.long	.LASF93
	.byte	0x1
	.byte	0x58
	.byte	0x2d
	.long	0xed
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0x58
	.byte	0x3f
	.long	0xb4
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0x58
	.byte	0x4b
	.long	0xc6
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.long	0x746
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.byte	0x5d
	.byte	0x7
	.long	0x5f
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.byte	0x61
	.byte	0xf
	.long	0xed
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.byte	0x62
	.byte	0xf
	.long	0xed
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1b
	.long	0x7ab
	.quad	.LBI29
	.byte	.LVU45
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0x5d
	.byte	0x16
	.long	0x633
	.uleb128 0x1c
	.long	0x7c8
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x1c
	.long	0x7bc
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x1e
	.long	0x7d4
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x1e
	.long	0x7de
	.long	.LLST20
	.long	.LVUS20
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL40
	.long	0x74d
	.long	0x658
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL46
	.long	0x91e
	.long	0x681
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1f
	.quad	.LVL47
	.long	0x92a
	.long	0x6ab
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x1f
	.quad	.LVL52
	.long	0x74d
	.long	0x6d6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL57
	.long	0x74d
	.long	0x6fa
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL59
	.long	0x74d
	.long	0x725
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL61
	.long	0x74d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.long	.LASF98
	.uleb128 0x22
	.long	.LASF101
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.long	0x746
	.byte	0x1
	.long	0x7a5
	.uleb128 0x23
	.string	"str"
	.byte	0x1
	.byte	0x42
	.byte	0x1f
	.long	0xed
	.uleb128 0x24
	.long	.LASF99
	.byte	0x1
	.byte	0x42
	.byte	0x2b
	.long	0x1a0
	.uleb128 0x24
	.long	.LASF100
	.byte	0x1
	.byte	0x42
	.byte	0x39
	.long	0x7a5
	.uleb128 0x25
	.uleb128 0x26
	.long	.LASF105
	.byte	0x1
	.byte	0x46
	.byte	0xe
	.long	0xc6
	.uleb128 0x21
	.quad	.LVL1
	.long	0x936
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xc6
	.uleb128 0x22
	.long	.LASF102
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.long	0x5f
	.byte	0x1
	.long	0x7eb
	.uleb128 0x24
	.long	.LASF103
	.byte	0x1
	.byte	0x1e
	.byte	0x21
	.long	0xed
	.uleb128 0x24
	.long	.LASF104
	.byte	0x1
	.byte	0x1e
	.byte	0x34
	.long	0xed
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0x20
	.byte	0x7
	.long	0x5f
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.byte	0x21
	.byte	0x7
	.long	0x5f
	.byte	0
	.uleb128 0x28
	.long	.LASF120
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.long	0xad
	.byte	0x3
	.long	0x821
	.uleb128 0x24
	.long	.LASF106
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.long	0xaf
	.uleb128 0x24
	.long	.LASF107
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.long	0x201
	.uleb128 0x24
	.long	.LASF108
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.long	0xc6
	.byte	0
	.uleb128 0x29
	.long	0x74d
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x91e
	.uleb128 0x1c
	.long	0x75e
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1c
	.long	0x76a
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1c
	.long	0x776
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x2a
	.long	0x782
	.long	.Ldebug_ranges0+0
	.long	0x8db
	.uleb128 0x1e
	.long	0x783
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2b
	.long	0x7eb
	.quad	.LBI17
	.byte	.LVU18
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x49
	.byte	0x7
	.uleb128 0x1c
	.long	0x814
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1c
	.long	0x808
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1c
	.long	0x7fc
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x21
	.quad	.LVL10
	.long	0x943
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x74d
	.quad	.LBI23
	.byte	.LVU33
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uleb128 0x1c
	.long	0x76a
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x1c
	.long	0x776
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x2c
	.long	0x75e
	.uleb128 0x2d
	.quad	.LVL17
	.long	0x94e
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF109
	.long	.LASF109
	.byte	0x15
	.byte	0x33
	.byte	0xe
	.uleb128 0x2e
	.long	.LASF110
	.long	.LASF110
	.byte	0x3
	.byte	0x28
	.byte	0xd
	.uleb128 0x2f
	.long	.LASF111
	.long	.LASF111
	.byte	0x16
	.value	0x181
	.byte	0xf
	.uleb128 0x30
	.long	.LASF120
	.long	.LASF121
	.byte	0x17
	.byte	0
	.uleb128 0x2f
	.long	.LASF112
	.long	.LASF112
	.byte	0x10
	.value	0x296
	.byte	0xc
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS9:
	.uleb128 0
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 0
.LLST9:
	.quad	.LVL19-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL39-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL45-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL48-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL50-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 0
.LLST10:
	.quad	.LVL19-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL38-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL45-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL48-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL51-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU102
	.uleb128 .LVU107
	.uleb128 .LVU111
	.uleb128 .LVU113
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU118
	.uleb128 .LVU149
	.uleb128 0
.LLST11:
	.quad	.LVL19-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL22-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL38-.Ltext0
	.quad	.LVL40-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 0
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL49-.Ltext0
	.quad	.LVL52-1-.Ltext0
	.value	0x2
	.byte	0x7d
	.sleb128 0
	.quad	.LVL64-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU102
	.uleb128 .LVU107
	.uleb128 .LVU111
	.uleb128 .LVU113
	.uleb128 .LVU118
	.uleb128 .LVU149
	.uleb128 0
.LLST12:
	.quad	.LVL19-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL21-.Ltext0
	.quad	.LVL40-1-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL48-.Ltext0
	.quad	.LVL52-1-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL64-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU44
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU106
	.uleb128 .LVU107
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU147
	.uleb128 .LVU148
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 0
.LLST13:
	.quad	.LVL20-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL48-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL54-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL60-.Ltext0
	.quad	.LVL61-1-.Ltext0
	.value	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.quad	.LVL61-1-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL64-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU79
	.uleb128 .LVU89
	.uleb128 .LVU149
	.uleb128 .LVU150
.LLST14:
	.quad	.LVL29-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL64-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU85
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU103
	.uleb128 .LVU113
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU144
.LLST15:
	.quad	.LVL31-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL48-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL56-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU87
	.uleb128 .LVU99
	.uleb128 .LVU113
	.uleb128 .LVU149
.LLST16:
	.quad	.LVL32-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL48-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU45
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU79
	.uleb128 .LVU107
	.uleb128 .LVU111
.LLST17:
	.quad	.LVL20-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL23-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU45
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU79
	.uleb128 .LVU107
	.uleb128 .LVU111
.LLST18:
	.quad	.LVL20-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL23-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU47
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU79
	.uleb128 .LVU107
	.uleb128 .LVU111
.LLST19:
	.quad	.LVL20-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL24-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU48
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU79
	.uleb128 .LVU107
	.uleb128 .LVU110
.LLST20:
	.quad	.LVL20-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-1-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL17-1-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL18-.Ltext0
	.quad	.LFE136-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL1-1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL4-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL11-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL16-.Ltext0
	.quad	.LFE136-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL1-1-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL5-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL12-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL17-1-.Ltext0
	.quad	.LFE136-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU9
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU31
.LLST3:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL3-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL8-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU18
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU22
.LLST4:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL10-1-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU18
	.uleb128 .LVU22
.LLST5:
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU18
	.uleb128 .LVU22
.LLST6:
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU34
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU36
.LLST7:
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU36
.LLST8:
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL17-1-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
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
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"exit_failure"
.LASF10:
	.string	"__off_t"
.LASF38:
	.string	"_IO_read_ptr"
.LASF87:
	.string	"locale_quoting_style"
.LASF50:
	.string	"_chain"
.LASF99:
	.string	"pbuf"
.LASF118:
	.string	"quoting_style"
.LASF13:
	.string	"size_t"
.LASF56:
	.string	"_shortbuf"
.LASF80:
	.string	"shell_quoting_style"
.LASF119:
	.string	"relpath"
.LASF15:
	.string	"long long unsigned int"
.LASF105:
	.string	"slen"
.LASF107:
	.string	"__src"
.LASF95:
	.string	"common_index"
.LASF100:
	.string	"plen"
.LASF59:
	.string	"_codecvt"
.LASF94:
	.string	"buf_err"
.LASF19:
	.string	"__timezone"
.LASF16:
	.string	"long long int"
.LASF7:
	.string	"signed char"
.LASF91:
	.string	"quoting_style_vals"
.LASF86:
	.string	"escape_quoting_style"
.LASF96:
	.string	"relto_suffix"
.LASF79:
	.string	"literal_quoting_style"
.LASF51:
	.string	"_fileno"
.LASF39:
	.string	"_IO_read_end"
.LASF26:
	.string	"sys_siglist"
.LASF9:
	.string	"long int"
.LASF14:
	.string	"_gl_cxxalias_dummy"
.LASF37:
	.string	"_flags"
.LASF60:
	.string	"_wide_data"
.LASF45:
	.string	"_IO_buf_end"
.LASF54:
	.string	"_cur_column"
.LASF34:
	.string	"program_invocation_short_name"
.LASF84:
	.string	"c_quoting_style"
.LASF68:
	.string	"_IO_codecvt"
.LASF76:
	.string	"_sys_errlist"
.LASF33:
	.string	"program_invocation_name"
.LASF53:
	.string	"_old_offset"
.LASF58:
	.string	"_offset"
.LASF97:
	.string	"fname_suffix"
.LASF83:
	.string	"shell_escape_always_quoting_style"
.LASF22:
	.string	"timezone"
.LASF78:
	.string	"program_name"
.LASF67:
	.string	"_IO_marker"
.LASF70:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF113:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF111:
	.string	"strlen"
.LASF92:
	.string	"can_fname"
.LASF6:
	.string	"long unsigned int"
.LASF42:
	.string	"_IO_write_ptr"
.LASF101:
	.string	"buffer_or_output"
.LASF73:
	.string	"sys_nerr"
.LASF89:
	.string	"custom_quoting_style"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"error_one_per_line"
.LASF35:
	.string	"Version"
.LASF46:
	.string	"_IO_save_base"
.LASF28:
	.string	"environ"
.LASF102:
	.string	"path_common_prefix"
.LASF121:
	.string	"__builtin_memcpy"
.LASF57:
	.string	"_lock"
.LASF52:
	.string	"_flags2"
.LASF64:
	.string	"_mode"
.LASF71:
	.string	"stdout"
.LASF77:
	.string	"version_etc_copyright"
.LASF29:
	.string	"optarg"
.LASF114:
	.string	"src/relpath.c"
.LASF23:
	.string	"getdate_err"
.LASF30:
	.string	"optind"
.LASF43:
	.string	"_IO_write_end"
.LASF106:
	.string	"__dest"
.LASF117:
	.string	"_IO_lock_t"
.LASF116:
	.string	"_IO_FILE"
.LASF0:
	.string	"error_print_progname"
.LASF27:
	.string	"__environ"
.LASF18:
	.string	"__daylight"
.LASF110:
	.string	"error"
.LASF74:
	.string	"sys_errlist"
.LASF49:
	.string	"_markers"
.LASF93:
	.string	"can_reldir"
.LASF85:
	.string	"c_maybe_quoting_style"
.LASF98:
	.string	"_Bool"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"short int"
.LASF108:
	.string	"__len"
.LASF75:
	.string	"_sys_nerr"
.LASF55:
	.string	"_vtable_offset"
.LASF20:
	.string	"tzname"
.LASF66:
	.string	"FILE"
.LASF82:
	.string	"shell_escape_quoting_style"
.LASF109:
	.string	"dcgettext"
.LASF90:
	.string	"quoting_style_args"
.LASF32:
	.string	"optopt"
.LASF21:
	.string	"daylight"
.LASF24:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF81:
	.string	"shell_always_quoting_style"
.LASF88:
	.string	"clocale_quoting_style"
.LASF31:
	.string	"opterr"
.LASF11:
	.string	"__off64_t"
.LASF40:
	.string	"_IO_read_base"
.LASF120:
	.string	"memcpy"
.LASF48:
	.string	"_IO_save_end"
.LASF25:
	.string	"_sys_siglist"
.LASF63:
	.string	"__pad5"
.LASF65:
	.string	"_unused2"
.LASF72:
	.string	"stderr"
.LASF115:
	.string	"/root/coreutils"
.LASF62:
	.string	"_freeres_buf"
.LASF47:
	.string	"_IO_backup_base"
.LASF1:
	.string	"error_message_count"
.LASF61:
	.string	"_freeres_list"
.LASF69:
	.string	"_IO_wide_data"
.LASF112:
	.string	"fputs_unlocked"
.LASF17:
	.string	"__tzname"
.LASF41:
	.string	"_IO_write_base"
.LASF103:
	.string	"path1"
.LASF104:
	.string	"path2"
.LASF44:
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
