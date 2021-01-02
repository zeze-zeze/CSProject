	.file	"group-list.c"
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"cannot find name for group ID %lu"
	.text
	.p2align 4
	.globl	print_group
	.type	print_group, @function
print_group:
.LVL0:
.LFB137:
	.file 1 "src/group-list.c"
	.loc 1 104 1 view -0
	.cfi_startproc
	.loc 1 104 1 is_stmt 0 view .LVU1
	endbr64
	.loc 1 105 3 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 106 3 view .LVU3
	.loc 1 108 3 view .LVU4
	.loc 1 104 1 is_stmt 0 view .LVU5
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 106 8 view .LVU6
	movl	$1, %r12d
	.loc 1 104 1 view .LVU7
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 108 6 view .LVU8
	testb	%sil, %sil
	je	.L3
	.loc 1 110 13 view .LVU9
	movl	%ebp, %edi
.LVL2:
	.loc 1 110 13 view .LVU10
	movl	%esi, %ebx
	.loc 1 110 7 is_stmt 1 view .LVU11
	.loc 1 110 13 is_stmt 0 view .LVU12
	call	getgrgid@PLT
.LVL3:
	.loc 1 111 7 is_stmt 1 view .LVU13
	.loc 1 111 10 is_stmt 0 view .LVU14
	testq	%rax, %rax
	je	.L9
	.loc 1 119 3 is_stmt 1 view .LVU15
	.loc 1 119 32 is_stmt 0 view .LVU16
	movq	(%rax), %rdi
	.loc 1 106 8 view .LVU17
	movl	%ebx, %r12d
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L9:
	.loc 1 113 11 is_stmt 1 view .LVU18
	.loc 1 113 24 is_stmt 0 view .LVU19
	movl	$5, %edx
	leaq	.LC0(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 115 14 view .LVU20
	xorl	%r12d, %r12d
	.loc 1 113 24 view .LVU21
	call	dcgettext@PLT
.LVL4:
	.loc 1 113 11 view .LVU22
	movq	%rbp, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 113 24 view .LVU23
	movq	%rax, %rdx
	.loc 1 113 11 view .LVU24
	xorl	%eax, %eax
	call	error@PLT
.LVL5:
	.loc 1 115 11 is_stmt 1 view .LVU25
	.loc 1 119 3 view .LVU26
	.p2align 4,,10
	.p2align 3
.L3:
.LBB10:
.LBI10:
	.loc 1 94 1 discriminator 2 view .LVU27
.LBB11:
	.loc 1 96 3 discriminator 2 view .LVU28
	.loc 1 97 3 discriminator 2 view .LVU29
	.loc 1 97 10 is_stmt 0 discriminator 2 view .LVU30
	movq	%rbp, %rdi
	leaq	buf.7188(%rip), %rsi
	call	umaxtostr@PLT
.LVL6:
	movq	%rax, %rdi
.LVL7:
.L5:
	.loc 1 97 10 discriminator 2 view .LVU31
.LBE11:
.LBE10:
	.loc 1 120 3 is_stmt 1 discriminator 4 view .LVU32
	movq	stdout(%rip), %rsi
	call	fputs_unlocked@PLT
.LVL8:
	.loc 1 121 3 discriminator 4 view .LVU33
	.loc 1 122 1 is_stmt 0 discriminator 4 view .LVU34
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL9:
	.loc 1 122 1 discriminator 4 view .LVU35
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE137:
	.size	print_group, .-print_group
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"failed to get groups for user %s"
	.align 8
.LC2:
	.string	"failed to get groups for the current process"
	.text
	.p2align 4
	.globl	print_group_list
	.type	print_group_list, @function
print_group_list:
.LVL10:
.LFB135:
	.loc 1 39 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 39 1 is_stmt 0 view .LVU37
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%ecx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 39 1 view .LVU38
	movl	%r9d, 12(%rsp)
	movb	%r9b, 11(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 40 3 is_stmt 1 view .LVU39
.LVL11:
	.loc 1 41 3 view .LVU40
	.loc 1 43 3 view .LVU41
	.loc 1 43 6 is_stmt 0 view .LVU42
	testq	%rdi, %rdi
	je	.L29
	movl	%esi, %edi
.LVL12:
	.loc 1 45 7 is_stmt 1 view .LVU43
	.loc 1 45 13 is_stmt 0 view .LVU44
	call	getpwuid@PLT
.LVL13:
	.loc 1 46 10 view .LVU45
	testq	%rax, %rax
	.loc 1 45 13 view .LVU46
	movq	%rax, %r15
.LVL14:
	.loc 1 46 7 is_stmt 1 view .LVU47
	.loc 1 46 10 is_stmt 0 view .LVU48
	setne	%r13b
.LVL15:
.L11:
	.loc 1 50 3 is_stmt 1 view .LVU49
	.loc 1 50 8 is_stmt 0 view .LVU50
	movzbl	%r12b, %r12d
	movl	%ebx, %edi
	movl	%r12d, %esi
	call	print_group
.LVL16:
	.loc 1 51 8 view .LVU51
	testb	%al, %al
	movl	$0, %eax
	cmove	%eax, %r13d
.LVL17:
	.loc 1 53 3 is_stmt 1 view .LVU52
	.loc 1 53 6 is_stmt 0 view .LVU53
	cmpl	%ebp, %ebx
	je	.L13
	.loc 1 55 7 is_stmt 1 view .LVU54
.LVL18:
.LBB12:
.LBI12:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 2 108 1 view .LVU55
.LBB13:
	.loc 2 110 3 view .LVU56
	.loc 2 110 10 is_stmt 0 view .LVU57
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L40
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movzbl	12(%rsp), %edx
	movb	%dl, (%rax)
.L15:
.LVL19:
	.loc 2 110 10 view .LVU58
.LBE13:
.LBE12:
	.loc 1 56 7 is_stmt 1 view .LVU59
	.loc 1 56 12 is_stmt 0 view .LVU60
	movl	%r12d, %esi
	movl	%ebp, %edi
	call	print_group
.LVL20:
	.loc 1 57 12 view .LVU61
	testb	%al, %al
	movl	$0, %eax
	cmove	%eax, %r13d
.LVL21:
.L13:
.LBB15:
	.loc 1 61 5 is_stmt 1 view .LVU62
	.loc 1 63 5 view .LVU63
	movl	%ebp, %esi
	.loc 1 63 20 is_stmt 0 view .LVU64
	testq	%r15, %r15
	je	.L16
.LVL22:
	.loc 1 63 20 discriminator 1 view .LVU65
	movl	20(%r15), %esi
.LVL23:
.L16:
	.loc 1 63 20 discriminator 4 view .LVU66
	leaq	16(%rsp), %rdx
	movq	%r14, %rdi
	call	xgetgroups@PLT
.LVL24:
	.loc 1 64 5 is_stmt 1 discriminator 4 view .LVU67
	.loc 1 64 8 is_stmt 0 discriminator 4 view .LVU68
	testl	%eax, %eax
	js	.L17
.LVL25:
.LBB16:
	.loc 1 78 21 is_stmt 1 view .LVU69
	movq	16(%rsp), %rdi
	.loc 1 78 5 is_stmt 0 view .LVU70
	je	.L19
	subl	$1, %eax
.LVL26:
	.loc 1 78 5 view .LVU71
	xorl	%r15d, %r15d
.LVL27:
	.loc 1 78 5 view .LVU72
	leaq	4(,%rax,4), %r14
.LVL28:
.LBB17:
.LBB18:
	.loc 2 110 10 view .LVU73
	movzbl	11(%rsp), %eax
	movl	%eax, 12(%rsp)
.LVL29:
	.p2align 4,,10
	.p2align 3
.L27:
	.loc 2 110 10 view .LVU74
.LBE18:
.LBE17:
	.loc 1 79 7 is_stmt 1 view .LVU75
	.loc 1 79 17 is_stmt 0 view .LVU76
	movl	(%rdi,%r15), %eax
	.loc 1 79 29 view .LVU77
	cmpl	%ebx, %eax
	je	.L23
	.loc 1 79 29 view .LVU78
	cmpl	%ebp, %eax
	je	.L23
	.loc 1 81 11 is_stmt 1 view .LVU79
.LVL30:
.LBB21:
.LBI17:
	.loc 2 108 1 view .LVU80
.LBB19:
	.loc 2 110 3 view .LVU81
	.loc 2 110 10 is_stmt 0 view .LVU82
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L41
	leaq	1(%rax), %rcx
	movq	%rcx, 40(%rdi)
	movzbl	11(%rsp), %ecx
	movb	%cl, (%rax)
.L25:
.LVL31:
	.loc 2 110 10 view .LVU83
.LBE19:
.LBE21:
	.loc 1 82 11 is_stmt 1 view .LVU84
	.loc 1 82 16 is_stmt 0 view .LVU85
	movq	16(%rsp), %rax
	movl	%r12d, %esi
	movl	(%rax,%r15), %edi
	call	print_group
.LVL32:
	movq	16(%rsp), %rdi
	.loc 1 82 14 view .LVU86
	testb	%al, %al
	jne	.L23
	.loc 1 83 13 is_stmt 1 view .LVU87
.LVL33:
	.loc 1 83 16 is_stmt 0 view .LVU88
	xorl	%r13d, %r13d
.LVL34:
.L23:
	.loc 1 78 35 is_stmt 1 discriminator 2 view .LVU89
	.loc 1 78 21 discriminator 2 view .LVU90
	addq	$4, %r15
	.loc 1 78 5 is_stmt 0 discriminator 2 view .LVU91
	cmpq	%r15, %r14
	jne	.L27
.L19:
	.loc 1 78 5 discriminator 2 view .LVU92
.LBE16:
	.loc 1 85 5 is_stmt 1 view .LVU93
	call	free@PLT
.LVL35:
.LBE15:
	.loc 1 87 3 view .LVU94
.L10:
	.loc 1 88 1 is_stmt 0 view .LVU95
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L42
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r13d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL36:
	.loc 1 88 1 view .LVU96
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL37:
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
	.loc 1 41 18 view .LVU97
	xorl	%r15d, %r15d
	.loc 1 40 8 view .LVU98
	movl	$1, %r13d
	jmp	.L11
.LVL38:
	.p2align 4,,10
	.p2align 3
.L17:
.LBB24:
	.loc 1 66 9 is_stmt 1 view .LVU99
	call	__errno_location@PLT
.LVL39:
	.loc 1 66 9 is_stmt 0 view .LVU100
	movq	%rax, %rbx
.LVL40:
	.loc 1 66 12 view .LVU101
	testq	%r14, %r14
	je	.L20
	.loc 1 68 13 is_stmt 1 view .LVU102
	movq	%r14, %rdi
	call	quote@PLT
.LVL41:
	.loc 1 68 30 is_stmt 0 view .LVU103
	movl	$5, %edx
	leaq	.LC1(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 68 13 view .LVU104
	movq	%rax, %r12
	.loc 1 68 30 view .LVU105
	call	dcgettext@PLT
.LVL42:
	.loc 1 68 13 view .LVU106
	movl	(%rbx), %esi
	movq	%r12, %rcx
	xorl	%edi, %edi
	.loc 1 68 30 view .LVU107
	movq	%rax, %rdx
	.loc 1 68 13 view .LVU108
	xorl	%eax, %eax
	call	error@PLT
.LVL43:
.L21:
	.loc 1 75 9 is_stmt 1 view .LVU109
	.loc 1 75 16 is_stmt 0 view .LVU110
	xorl	%r13d, %r13d
.LVL44:
	.loc 1 75 16 view .LVU111
	jmp	.L10
.LVL45:
	.p2align 4,,10
	.p2align 3
.L41:
.LBB23:
.LBB22:
.LBB20:
	.loc 2 110 10 view .LVU112
	movl	12(%rsp), %esi
	call	__overflow@PLT
.LVL46:
	jmp	.L25
.LVL47:
	.p2align 4,,10
	.p2align 3
.L20:
	.loc 2 110 10 view .LVU113
.LBE20:
.LBE22:
.LBE23:
	.loc 1 73 13 is_stmt 1 view .LVU114
	.loc 1 73 30 is_stmt 0 view .LVU115
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC2(%rip), %rsi
	call	dcgettext@PLT
.LVL48:
	.loc 1 73 13 view .LVU116
	movl	(%rbx), %esi
	xorl	%edi, %edi
	.loc 1 73 30 view .LVU117
	movq	%rax, %rdx
	.loc 1 73 13 view .LVU118
	xorl	%eax, %eax
	call	error@PLT
.LVL49:
	jmp	.L21
.LVL50:
.L40:
	.loc 1 73 13 view .LVU119
.LBE24:
.LBB25:
.LBB14:
	.loc 2 110 10 view .LVU120
	movzbl	12(%rsp), %esi
	call	__overflow@PLT
.LVL51:
	jmp	.L15
.LVL52:
.L42:
	.loc 2 110 10 view .LVU121
.LBE14:
.LBE25:
	.loc 1 88 1 view .LVU122
	call	__stack_chk_fail@PLT
.LVL53:
	.cfi_endproc
.LFE135:
	.size	print_group_list, .-print_group_list
	.local	buf.7188
	.comm	buf.7188,21,16
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/pwd.h"
	.file 12 "/usr/include/grp.h"
	.file 13 "/usr/include/time.h"
	.file 14 "/usr/include/signal.h"
	.file 15 "/usr/include/unistd.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 17 "/usr/include/errno.h"
	.file 18 "src/version.h"
	.file 19 "./lib/exitfail.h"
	.file 20 "/usr/include/stdint.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/quote.h"
	.file 26 "./lib/inttostr.h"
	.file 27 "/usr/include/libintl.h"
	.file 28 "./lib/mgetgroups.h"
	.file 29 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb42
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF137
	.byte	0xc
	.long	.LASF138
	.long	.LASF139
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
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
	.byte	0x4
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x8
	.long	0xba
	.uleb128 0x9
	.long	.LASF60
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x24d
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xb4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xb4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xb4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xb4
	.byte	0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xb4
	.byte	0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xb4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x266
	.byte	0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x26c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x9c
	.byte	0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x272
	.byte	0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x282
	.byte	0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xa8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x28d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x298
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x26c
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x29e
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xc6
	.uleb128 0xb
	.long	.LASF140
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x261
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0xd
	.long	0xba
	.long	0x282
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x259
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x288
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x293
	.uleb128 0xd
	.long	0xba
	.long	0x2ae
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xc1
	.uleb128 0x8
	.long	0x2ae
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2c5
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2c5
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2c5
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2b4
	.long	0x2fa
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2ef
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2fa
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF53
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2fa
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x40
	.byte	0x11
	.long	0x90
	.uleb128 0x8
	.long	0x331
	.uleb128 0x2
	.long	.LASF57
	.byte	0x9
	.byte	0x4f
	.byte	0x11
	.long	0x84
	.uleb128 0x11
	.long	.LASF58
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF59
	.uleb128 0x9
	.long	.LASF61
	.byte	0x30
	.byte	0xb
	.byte	0x31
	.byte	0x8
	.long	0x3cb
	.uleb128 0xa
	.long	.LASF62
	.byte	0xb
	.byte	0x33
	.byte	0x9
	.long	0xb4
	.byte	0
	.uleb128 0xa
	.long	.LASF63
	.byte	0xb
	.byte	0x34
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF64
	.byte	0xb
	.byte	0x36
	.byte	0xb
	.long	0x84
	.byte	0x10
	.uleb128 0xa
	.long	.LASF65
	.byte	0xb
	.byte	0x37
	.byte	0xb
	.long	0x90
	.byte	0x14
	.uleb128 0xa
	.long	.LASF66
	.byte	0xb
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF67
	.byte	0xb
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF68
	.byte	0xb
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x20
	.byte	0xc
	.byte	0x2a
	.byte	0x8
	.long	0x40d
	.uleb128 0xa
	.long	.LASF70
	.byte	0xc
	.byte	0x2c
	.byte	0xb
	.long	0xb4
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0xc
	.byte	0x2d
	.byte	0xb
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF72
	.byte	0xc
	.byte	0x2e
	.byte	0xd
	.long	0x90
	.byte	0x10
	.uleb128 0xa
	.long	.LASF73
	.byte	0xc
	.byte	0x2f
	.byte	0xc
	.long	0x40d
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb4
	.uleb128 0xd
	.long	0xb4
	.long	0x423
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF74
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x413
	.uleb128 0xf
	.long	.LASF75
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF76
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF77
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x413
	.uleb128 0xf
	.long	.LASF78
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF79
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF80
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x478
	.uleb128 0xd
	.long	0x2b4
	.long	0x48f
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x47f
	.uleb128 0x11
	.long	.LASF81
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x48f
	.uleb128 0x11
	.long	.LASF82
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x48f
	.uleb128 0x11
	.long	.LASF83
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x40d
	.uleb128 0x11
	.long	.LASF84
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x40d
	.uleb128 0xf
	.long	.LASF85
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF86
	.byte	0x10
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF87
	.byte	0x10
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF88
	.byte	0x10
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF89
	.byte	0x11
	.byte	0x2d
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF90
	.byte	0x11
	.byte	0x2e
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF91
	.byte	0x12
	.byte	0x1
	.byte	0x14
	.long	0x2ae
	.uleb128 0xf
	.long	.LASF92
	.byte	0x13
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF93
	.byte	0x14
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0xd
	.long	0xc1
	.long	0x53f
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x534
	.uleb128 0xf
	.long	.LASF94
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x53f
	.uleb128 0xf
	.long	.LASF95
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x2ae
	.uleb128 0x13
	.long	.LASF141
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x5b1
	.uleb128 0x14
	.long	.LASF96
	.byte	0
	.uleb128 0x14
	.long	.LASF97
	.byte	0x1
	.uleb128 0x14
	.long	.LASF98
	.byte	0x2
	.uleb128 0x14
	.long	.LASF99
	.byte	0x3
	.uleb128 0x14
	.long	.LASF100
	.byte	0x4
	.uleb128 0x14
	.long	.LASF101
	.byte	0x5
	.uleb128 0x14
	.long	.LASF102
	.byte	0x6
	.uleb128 0x14
	.long	.LASF103
	.byte	0x7
	.uleb128 0x14
	.long	.LASF104
	.byte	0x8
	.uleb128 0x14
	.long	.LASF105
	.byte	0x9
	.uleb128 0x14
	.long	.LASF106
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x55c
	.uleb128 0x11
	.long	.LASF107
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2fa
	.uleb128 0xd
	.long	0x5b1
	.long	0x5ce
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5c3
	.uleb128 0x11
	.long	.LASF108
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x5ce
	.uleb128 0xf
	.long	.LASF109
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x479
	.uleb128 0xf
	.long	.LASF110
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF111
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF112
	.uleb128 0xf
	.long	.LASF113
	.byte	0x19
	.byte	0x19
	.byte	0x1f
	.long	0x604
	.uleb128 0x15
	.long	.LASF116
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.long	0x760
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x760
	.uleb128 0x16
	.string	"gid"
	.byte	0x1
	.byte	0x67
	.byte	0x14
	.long	0x331
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.byte	0x67
	.byte	0x1e
	.long	0x760
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x18
	.string	"grp"
	.byte	0x1
	.byte	0x69
	.byte	0x11
	.long	0x767
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x18
	.string	"ok"
	.byte	0x1
	.byte	0x6a
	.byte	0x8
	.long	0x760
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x77
	.byte	0x9
	.long	0xb4
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x19
	.long	0x76d
	.quad	.LBI10
	.byte	.LVU27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0x1
	.byte	0x77
	.byte	0x22
	.long	0x6ec
	.uleb128 0x1a
	.long	0x77e
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1b
	.quad	.LVL6
	.long	0xab5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	buf.7188
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL3
	.long	0xac1
	.long	0x704
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL4
	.long	0xacd
	.long	0x72e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1d
	.quad	.LVL5
	.long	0xad9
	.long	0x752
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL8
	.long	0xae5
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF115
	.uleb128 0x7
	.byte	0x8
	.long	0x3cb
	.uleb128 0x1f
	.long	.LASF142
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0xb4
	.byte	0x1
	.long	0x7a1
	.uleb128 0x20
	.string	"gid"
	.byte	0x1
	.byte	0x5e
	.byte	0x1c
	.long	0x7a1
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.byte	0x60
	.byte	0xf
	.long	0x7a7
	.uleb128 0x9
	.byte	0x3
	.quad	buf.7188
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x33d
	.uleb128 0xd
	.long	0xba
	.long	0x7b7
	.uleb128 0xe
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x15
	.long	.LASF117
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	0x760
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xa8b
	.uleb128 0x17
	.long	.LASF118
	.byte	0x1
	.byte	0x24
	.byte	0x1f
	.long	0x2ae
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x17
	.long	.LASF119
	.byte	0x1
	.byte	0x25
	.byte	0x19
	.long	0x342
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x17
	.long	.LASF120
	.byte	0x1
	.byte	0x25
	.byte	0x25
	.long	0x331
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x17
	.long	.LASF121
	.byte	0x1
	.byte	0x25
	.byte	0x31
	.long	0x331
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x17
	.long	.LASF122
	.byte	0x1
	.byte	0x26
	.byte	0x18
	.long	0x760
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x17
	.long	.LASF123
	.byte	0x1
	.byte	0x26
	.byte	0x28
	.long	0xba
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x18
	.string	"ok"
	.byte	0x1
	.byte	0x28
	.byte	0x8
	.long	0x760
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x18
	.string	"pwd"
	.byte	0x1
	.byte	0x29
	.byte	0x12
	.long	0xa8b
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x30
	.long	0x9da
	.uleb128 0x23
	.long	.LASF124
	.byte	0x1
	.byte	0x3d
	.byte	0xc
	.long	0xa91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF125
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.long	0x65
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x60
	.long	0x913
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.byte	0xe
	.long	0x65
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x25
	.long	0xa97
	.quad	.LBI17
	.byte	.LVU80
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x51
	.byte	0xb
	.long	0x8fe
	.uleb128 0x1a
	.long	0xaa8
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x1b
	.quad	.LVL46
	.long	0xaf2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -84
	.byte	0x94
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL32
	.long	0x615
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL24
	.long	0xaff
	.long	0x932
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1e
	.quad	.LVL35
	.long	0xb0b
	.uleb128 0x1d
	.quad	.LVL41
	.long	0xb18
	.long	0x957
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL42
	.long	0xacd
	.long	0x980
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1d
	.quad	.LVL43
	.long	0xad9
	.long	0x99d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL48
	.long	0xacd
	.long	0x9c6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL49
	.long	0xad9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0xa97
	.quad	.LBI12
	.byte	.LVU55
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x37
	.byte	0x7
	.long	0xa1b
	.uleb128 0x1a
	.long	0xaa8
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1b
	.quad	.LVL51
	.long	0xaf2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x91
	.sleb128 -84
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL13
	.long	0xb24
	.long	0xa34
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1d
	.quad	.LVL16
	.long	0x615
	.long	0xa52
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL20
	.long	0x615
	.long	0xa70
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL39
	.long	0xb30
	.uleb128 0x1e
	.quad	.LVL53
	.long	0xb3c
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x362
	.uleb128 0x7
	.byte	0x8
	.long	0x331
	.uleb128 0x26
	.long	.LASF143
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.long	0x65
	.byte	0x3
	.long	0xab5
	.uleb128 0x20
	.string	"__c"
	.byte	0x2
	.byte	0x6c
	.byte	0x17
	.long	0x65
	.byte	0
	.uleb128 0x27
	.long	.LASF126
	.long	.LASF126
	.byte	0x1a
	.byte	0x1d
	.byte	0x7
	.uleb128 0x27
	.long	.LASF127
	.long	.LASF127
	.byte	0xc
	.byte	0x65
	.byte	0x16
	.uleb128 0x27
	.long	.LASF128
	.long	.LASF128
	.byte	0x1b
	.byte	0x33
	.byte	0xe
	.uleb128 0x27
	.long	.LASF129
	.long	.LASF129
	.byte	0x18
	.byte	0x28
	.byte	0xd
	.uleb128 0x28
	.long	.LASF130
	.long	.LASF130
	.byte	0x7
	.value	0x296
	.byte	0xc
	.uleb128 0x28
	.long	.LASF131
	.long	.LASF131
	.byte	0x7
	.value	0x35b
	.byte	0xc
	.uleb128 0x27
	.long	.LASF132
	.long	.LASF132
	.byte	0x1c
	.byte	0x15
	.byte	0x5
	.uleb128 0x28
	.long	.LASF133
	.long	.LASF133
	.byte	0x1d
	.value	0x235
	.byte	0xd
	.uleb128 0x27
	.long	.LASF134
	.long	.LASF134
	.byte	0x19
	.byte	0x2c
	.byte	0xd
	.uleb128 0x27
	.long	.LASF135
	.long	.LASF135
	.byte	0xb
	.byte	0x6e
	.byte	0x17
	.uleb128 0x27
	.long	.LASF136
	.long	.LASF136
	.byte	0x11
	.byte	0x25
	.byte	0xd
	.uleb128 0x29
	.long	.LASF144
	.long	.LASF144
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL9-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL3-1-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU3
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU22
	.uleb128 .LVU26
	.uleb128 .LVU27
.LLST2:
	.quad	.LVL1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL5-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU4
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU27
.LLST3:
	.quad	.LVL1-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU31
	.uleb128 .LVU33
.LLST4:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU28
	.uleb128 .LVU31
.LLST5:
	.quad	.LVL5-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1591
	.sleb128 0
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 0
.LLST6:
	.quad	.LVL10-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL12-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL28-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL38-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL45-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL47-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL52-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 0
.LLST7:
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL13-1-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL38-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 0
.LLST8:
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL13-1-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL38-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL40-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL47-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL52-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 0
.LLST9:
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL13-1-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL23-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL38-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 0
.LLST10:
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL13-1-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL38-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 0
.LLST11:
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL13-1-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -85
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL38-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -85
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU40
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU95
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU111
	.uleb128 .LVU112
	.uleb128 .LVU121
.LLST12:
	.quad	.LVL11-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL45-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU41
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU72
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU112
	.uleb128 .LVU113
	.uleb128 .LVU121
.LLST13:
	.quad	.LVL11-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL15-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL47-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU67
	.uleb128 .LVU71
	.uleb128 .LVU99
	.uleb128 .LVU100
.LLST15:
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU69
	.uleb128 .LVU74
.LLST16:
	.quad	.LVL25-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU80
	.uleb128 .LVU83
	.uleb128 .LVU112
	.uleb128 .LVU113
.LLST17:
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0xc
	.byte	0x91
	.sleb128 -85
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0xc
	.byte	0x91
	.sleb128 -85
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU55
	.uleb128 .LVU58
	.uleb128 .LVU119
	.uleb128 .LVU121
.LLST14:
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0xc
	.byte	0x91
	.sleb128 -84
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0xc
	.byte	0x91
	.sleb128 -84
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
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
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF92:
	.string	"exit_failure"
.LASF11:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF104:
	.string	"locale_quoting_style"
.LASF27:
	.string	"_chain"
.LASF141:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF33:
	.string	"_shortbuf"
.LASF65:
	.string	"pw_gid"
.LASF97:
	.string	"shell_quoting_style"
.LASF21:
	.string	"_IO_buf_base"
.LASF119:
	.string	"ruid"
.LASF59:
	.string	"long long unsigned int"
.LASF133:
	.string	"free"
.LASF143:
	.string	"putchar_unlocked"
.LASF10:
	.string	"__gid_t"
.LASF68:
	.string	"pw_shell"
.LASF76:
	.string	"__timezone"
.LASF54:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF108:
	.string	"quoting_style_vals"
.LASF93:
	.string	"uintmax_t"
.LASF103:
	.string	"escape_quoting_style"
.LASF96:
	.string	"literal_quoting_style"
.LASF28:
	.string	"_fileno"
.LASF123:
	.string	"delim"
.LASF69:
	.string	"group"
.LASF82:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF58:
	.string	"_gl_cxxalias_dummy"
.LASF14:
	.string	"_flags"
.LASF37:
	.string	"_wide_data"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF90:
	.string	"program_invocation_short_name"
.LASF101:
	.string	"c_quoting_style"
.LASF45:
	.string	"_IO_codecvt"
.LASF53:
	.string	"_sys_errlist"
.LASF89:
	.string	"program_invocation_name"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF56:
	.string	"gid_t"
.LASF100:
	.string	"shell_escape_always_quoting_style"
.LASF79:
	.string	"timezone"
.LASF134:
	.string	"quote"
.LASF95:
	.string	"program_name"
.LASF73:
	.string	"gr_mem"
.LASF47:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF117:
	.string	"print_group_list"
.LASF137:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF71:
	.string	"gr_passwd"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF50:
	.string	"sys_nerr"
.LASF57:
	.string	"uid_t"
.LASF106:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF111:
	.string	"error_one_per_line"
.LASF91:
	.string	"Version"
.LASF135:
	.string	"getpwuid"
.LASF23:
	.string	"_IO_save_base"
.LASF84:
	.string	"environ"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF118:
	.string	"username"
.LASF48:
	.string	"stdout"
.LASF63:
	.string	"pw_passwd"
.LASF94:
	.string	"version_etc_copyright"
.LASF36:
	.string	"_codecvt"
.LASF16:
	.string	"_IO_read_end"
.LASF85:
	.string	"optarg"
.LASF114:
	.string	"use_name"
.LASF80:
	.string	"getdate_err"
.LASF86:
	.string	"optind"
.LASF122:
	.string	"use_names"
.LASF20:
	.string	"_IO_write_end"
.LASF131:
	.string	"__overflow"
.LASF140:
	.string	"_IO_lock_t"
.LASF60:
	.string	"_IO_FILE"
.LASF109:
	.string	"error_print_progname"
.LASF126:
	.string	"umaxtostr"
.LASF124:
	.string	"groups"
.LASF83:
	.string	"__environ"
.LASF75:
	.string	"__daylight"
.LASF41:
	.string	"_mode"
.LASF44:
	.string	"_IO_marker"
.LASF129:
	.string	"error"
.LASF51:
	.string	"sys_errlist"
.LASF26:
	.string	"_markers"
.LASF120:
	.string	"rgid"
.LASF67:
	.string	"pw_dir"
.LASF102:
	.string	"c_maybe_quoting_style"
.LASF115:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF142:
	.string	"gidtostr_ptr"
.LASF70:
	.string	"gr_name"
.LASF5:
	.string	"short int"
.LASF113:
	.string	"quote_quoting_options"
.LASF52:
	.string	"_sys_nerr"
.LASF77:
	.string	"tzname"
.LASF61:
	.string	"passwd"
.LASF43:
	.string	"FILE"
.LASF144:
	.string	"__stack_chk_fail"
.LASF99:
	.string	"shell_escape_quoting_style"
.LASF128:
	.string	"dcgettext"
.LASF138:
	.string	"src/group-list.c"
.LASF107:
	.string	"quoting_style_args"
.LASF88:
	.string	"optopt"
.LASF78:
	.string	"daylight"
.LASF121:
	.string	"egid"
.LASF55:
	.string	"long double"
.LASF125:
	.string	"n_groups"
.LASF13:
	.string	"char"
.LASF98:
	.string	"shell_always_quoting_style"
.LASF66:
	.string	"pw_gecos"
.LASF105:
	.string	"clocale_quoting_style"
.LASF136:
	.string	"__errno_location"
.LASF87:
	.string	"opterr"
.LASF9:
	.string	"__uid_t"
.LASF8:
	.string	"__uintmax_t"
.LASF12:
	.string	"__off64_t"
.LASF112:
	.string	"quoting_options"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF81:
	.string	"_sys_siglist"
.LASF40:
	.string	"__pad5"
.LASF42:
	.string	"_unused2"
.LASF49:
	.string	"stderr"
.LASF62:
	.string	"pw_name"
.LASF139:
	.string	"/root/coreutils"
.LASF39:
	.string	"_freeres_buf"
.LASF24:
	.string	"_IO_backup_base"
.LASF72:
	.string	"gr_gid"
.LASF110:
	.string	"error_message_count"
.LASF64:
	.string	"pw_uid"
.LASF32:
	.string	"_vtable_offset"
.LASF38:
	.string	"_freeres_list"
.LASF127:
	.string	"getgrgid"
.LASF46:
	.string	"_IO_wide_data"
.LASF130:
	.string	"fputs_unlocked"
.LASF74:
	.string	"__tzname"
.LASF18:
	.string	"_IO_write_base"
.LASF132:
	.string	"xgetgroups"
.LASF116:
	.string	"print_group"
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
