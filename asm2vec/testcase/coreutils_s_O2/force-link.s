	.file	"force-link.c"
	.text
.Ltext0:
	.p2align 4
	.type	try_link, @function
try_link:
.LVL0:
.LFB136:
	.file 1 "src/force-link.c"
	.loc 1 81 1 view -0
	.cfi_startproc
	.loc 1 81 1 is_stmt 0 view .LVU1
	endbr64
	.loc 1 82 3 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 83 3 view .LVU3
	.loc 1 81 1 is_stmt 0 view .LVU4
	movq	%rsi, %rax
	.loc 1 83 10 view .LVU5
	movl	16(%rsi), %edx
	.loc 1 81 1 view .LVU6
	movq	%rdi, %rcx
	.loc 1 83 10 view .LVU7
	movq	8(%rsi), %rsi
.LVL2:
	.loc 1 83 10 view .LVU8
	movl	20(%rax), %r8d
	movl	(%rax), %edi
.LVL3:
	.loc 1 83 10 view .LVU9
	jmp	linkat@PLT
.LVL4:
	.loc 1 83 10 view .LVU10
	.cfi_endproc
.LFE136:
	.size	try_link, .-try_link
	.p2align 4
	.type	samedir_template, @function
samedir_template:
.LVL5:
.LFB135:
	.loc 1 52 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 53 3 view .LVU12
	.loc 1 52 1 is_stmt 0 view .LVU13
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 52 1 view .LVU14
	movq	%rsi, %rbx
	.loc 1 53 25 view .LVU15
	call	last_component@PLT
.LVL6:
	.loc 1 54 3 is_stmt 1 view .LVU16
	.loc 1 53 13 is_stmt 0 view .LVU17
	subq	%rbp, %rax
.LVL7:
	.loc 1 54 10 view .LVU18
	leaq	9(%rax), %rdi
.LVL8:
	.loc 1 55 3 is_stmt 1 view .LVU19
	.loc 1 56 3 view .LVU20
	.loc 1 53 13 is_stmt 0 view .LVU21
	movq	%rax, %r12
	.loc 1 56 6 view .LVU22
	cmpq	$256, %rdi
	jbe	.L4
	.loc 1 60 7 is_stmt 1 view .LVU23
	.loc 1 60 16 is_stmt 0 view .LVU24
	call	malloc@PLT
.LVL9:
	.loc 1 60 16 view .LVU25
	movq	%rax, %rbx
.LVL10:
	.loc 1 61 7 is_stmt 1 view .LVU26
	.loc 1 61 10 is_stmt 0 view .LVU27
	testq	%rax, %rax
	je	.L6
.LVL11:
.L4:
	.loc 1 64 3 is_stmt 1 view .LVU28
.LBB6:
.LBI6:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 45 1 view .LVU29
.LBB7:
	.loc 2 48 3 view .LVU30
	.loc 2 48 10 is_stmt 0 view .LVU31
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	mempcpy@PLT
.LVL12:
	.loc 2 48 10 view .LVU32
.LBE7:
.LBE6:
.LBB8:
.LBI8:
	.loc 2 88 1 is_stmt 1 view .LVU33
.LBB9:
	.loc 2 90 3 view .LVU34
	.loc 2 90 10 is_stmt 0 view .LVU35
	movq	simple_pattern(%rip), %rdx
	movq	%rdx, (%rax)
	movzbl	8+simple_pattern(%rip), %edx
	movb	%dl, 8(%rax)
.LVL13:
	.loc 2 90 10 view .LVU36
.LBE9:
.LBE8:
	.loc 1 65 3 is_stmt 1 view .LVU37
	.loc 1 65 10 is_stmt 0 view .LVU38
	movq	%rbx, %rax
.L3:
	.loc 1 66 1 view .LVU39
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL14:
	.loc 1 66 1 view .LVU40
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL15:
	.loc 1 66 1 view .LVU41
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL16:
	.loc 1 66 1 view .LVU42
	ret
.LVL17:
.L6:
	.cfi_restore_state
	.loc 1 62 16 view .LVU43
	xorl	%eax, %eax
.LVL18:
	.loc 1 62 16 view .LVU44
	jmp	.L3
	.cfi_endproc
.LFE135:
	.size	samedir_template, .-samedir_template
	.p2align 4
	.type	try_symlink, @function
try_symlink:
.LVL19:
.LFB138:
	.loc 1 139 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 139 1 is_stmt 0 view .LVU46
	endbr64
	.loc 1 140 3 is_stmt 1 view .LVU47
.LVL20:
	.loc 1 141 3 view .LVU48
	.loc 1 139 1 is_stmt 0 view .LVU49
	movq	%rsi, %rax
	movq	%rdi, %rdx
	.loc 1 141 10 view .LVU50
	movl	8(%rsi), %esi
.LVL21:
	.loc 1 141 10 view .LVU51
	movq	(%rax), %rdi
.LVL22:
	.loc 1 141 10 view .LVU52
	jmp	symlinkat@PLT
.LVL23:
	.loc 1 141 10 view .LVU53
	.cfi_endproc
.LFE138:
	.size	try_symlink, .-try_symlink
	.p2align 4
	.globl	force_linkat
	.type	force_linkat, @function
force_linkat:
.LVL24:
.LFB137:
	.loc 1 98 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 98 1 is_stmt 0 view .LVU55
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%r9d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$328, %rsp
	.cfi_def_cfa_offset 384
	.loc 1 98 1 view .LVU56
	movq	%fs:40, %rcx
	movq	%rcx, 312(%rsp)
	xorl	%ecx, %ecx
.LVL25:
	.loc 1 99 3 is_stmt 1 view .LVU57
	.loc 1 98 1 is_stmt 0 view .LVU58
	movl	384(%rsp), %eax
	.loc 1 99 6 view .LVU59
	testl	%eax, %eax
	js	.L24
.LVL26:
.L10:
	.loc 1 99 6 view .LVU60
	movl	%r8d, 4(%rsp)
.LVL27:
	.loc 1 102 3 is_stmt 1 view .LVU61
	.loc 1 102 6 is_stmt 0 view .LVU62
	cmpb	$1, %r15b
	jne	.L17
	cmpl	$17, %eax
	jne	.L17
	.loc 1 105 3 is_stmt 1 view .LVU63
	.loc 1 106 3 view .LVU64
	.loc 1 106 18 is_stmt 0 view .LVU65
	leaq	48(%rsp), %rax
.LVL28:
	.loc 1 106 18 view .LVU66
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	%rax, 8(%rsp)
	call	samedir_template
.LVL29:
	.loc 1 107 6 view .LVU67
	movl	4(%rsp), %r8d
	testq	%rax, %rax
	.loc 1 106 18 view .LVU68
	movq	%rax, %r15
.LVL30:
	.loc 1 107 3 is_stmt 1 view .LVU69
	.loc 1 107 6 is_stmt 0 view .LVU70
	je	.L25
	.loc 1 109 3 is_stmt 1 view .LVU71
	.loc 1 109 19 is_stmt 0 view .LVU72
	movl	%r8d, 36(%rsp)
	.loc 1 110 3 is_stmt 1 view .LVU73
	.loc 1 112 3 view .LVU74
	.loc 1 112 7 is_stmt 0 view .LVU75
	xorl	%esi, %esi
	leaq	16(%rsp), %rdx
	movq	%rax, %rdi
	movl	$6, %r8d
	leaq	try_link(%rip), %rcx
	.loc 1 109 19 view .LVU76
	movl	%r14d, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ebp, 32(%rsp)
	.loc 1 112 7 view .LVU77
	call	try_tempname_len@PLT
.LVL31:
	.loc 1 112 6 view .LVU78
	testl	%eax, %eax
	je	.L13
	.loc 1 113 5 is_stmt 1 view .LVU79
	.loc 1 113 11 is_stmt 0 view .LVU80
	call	__errno_location@PLT
.LVL32:
	.loc 1 113 9 view .LVU81
	movl	(%rax), %r12d
.LVL33:
.L14:
	.loc 1 123 3 is_stmt 1 view .LVU82
	.loc 1 123 6 is_stmt 0 view .LVU83
	cmpq	8(%rsp), %r15
	je	.L9
	.loc 1 124 5 is_stmt 1 view .LVU84
	movq	%r15, %rdi
	call	free@PLT
.LVL34:
	jmp	.L9
.LVL35:
	.p2align 4,,10
	.p2align 3
.L17:
	.loc 1 124 5 is_stmt 0 view .LVU85
	movl	%eax, %r12d
.LVL36:
.L9:
	.loc 1 126 1 view .LVU86
	movq	312(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L26
	addq	$328, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL37:
	.loc 1 126 1 view .LVU87
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL38:
	.loc 1 126 1 view .LVU88
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL39:
	.loc 1 126 1 view .LVU89
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL40:
	.loc 1 126 1 view .LVU90
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL41:
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
	.loc 1 100 5 is_stmt 1 view .LVU91
	.loc 1 100 21 is_stmt 0 view .LVU92
	movq	%r13, %rcx
	movl	%r8d, 4(%rsp)
	call	linkat@PLT
.LVL42:
	.loc 1 100 21 view .LVU93
	movl	%eax, %r12d
	.loc 1 101 25 view .LVU94
	testl	%eax, %eax
	je	.L9
	.loc 1 101 27 discriminator 1 view .LVU95
	call	__errno_location@PLT
.LVL43:
	.loc 1 101 25 discriminator 1 view .LVU96
	movl	4(%rsp), %r8d
	movl	(%rax), %eax
	jmp	.L10
.LVL44:
	.p2align 4,,10
	.p2align 3
.L25:
	.loc 1 108 5 is_stmt 1 view .LVU97
	.loc 1 108 12 is_stmt 0 view .LVU98
	call	__errno_location@PLT
.LVL45:
	.loc 1 108 12 view .LVU99
	movl	(%rax), %r12d
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L13:
	.loc 1 116 7 is_stmt 1 view .LVU100
	.loc 1 116 13 is_stmt 0 view .LVU101
	movq	%r13, %rcx
	movl	%ebp, %edx
	movq	%r15, %rsi
	movl	%ebp, %edi
	call	renameat@PLT
.LVL46:
	.loc 1 116 66 view .LVU102
	movl	$-1, %r12d
	testl	%eax, %eax
	je	.L15
	.loc 1 116 68 discriminator 1 view .LVU103
	call	__errno_location@PLT
.LVL47:
	.loc 1 116 66 discriminator 1 view .LVU104
	movl	(%rax), %r12d
.L15:
.LVL48:
	.loc 1 120 7 is_stmt 1 discriminator 4 view .LVU105
	xorl	%edx, %edx
	movq	%r15, %rsi
	movl	%ebp, %edi
	call	unlinkat@PLT
.LVL49:
	jmp	.L14
.LVL50:
.L26:
	.loc 1 126 1 is_stmt 0 view .LVU106
	call	__stack_chk_fail@PLT
.LVL51:
	.cfi_endproc
.LFE137:
	.size	force_linkat, .-force_linkat
	.p2align 4
	.globl	force_symlinkat
	.type	force_symlinkat, @function
force_symlinkat:
.LVL52:
.LFB139:
	.loc 1 154 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 154 1 is_stmt 0 view .LVU108
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
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%ecx, %ebx
	subq	$296, %rsp
	.cfi_def_cfa_offset 352
	.loc 1 154 1 view .LVU109
	movq	%fs:40, %rax
	movq	%rax, 280(%rsp)
	xorl	%eax, %eax
	.loc 1 155 3 is_stmt 1 view .LVU110
	.loc 1 155 6 is_stmt 0 view .LVU111
	testl	%r8d, %r8d
	js	.L41
.LVL53:
.L28:
	.loc 1 157 3 is_stmt 1 view .LVU112
	.loc 1 157 6 is_stmt 0 view .LVU113
	cmpb	$1, %bl
	jne	.L34
	cmpl	$17, %r8d
	jne	.L34
	.loc 1 160 3 is_stmt 1 view .LVU114
	.loc 1 161 3 view .LVU115
	.loc 1 161 18 is_stmt 0 view .LVU116
	leaq	16(%rsp), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	call	samedir_template
.LVL54:
	.loc 1 161 18 view .LVU117
	movq	%rax, %r15
.LVL55:
	.loc 1 162 3 is_stmt 1 view .LVU118
	.loc 1 162 6 is_stmt 0 view .LVU119
	testq	%rax, %rax
	je	.L42
	.loc 1 164 3 is_stmt 1 view .LVU120
	.loc 1 167 7 is_stmt 0 view .LVU121
	xorl	%esi, %esi
	movq	%rsp, %rdx
	movl	$6, %r8d
	movq	%rax, %rdi
	leaq	try_symlink(%rip), %rcx
	.loc 1 164 22 view .LVU122
	movq	%r14, (%rsp)
	movl	%ebp, 8(%rsp)
	.loc 1 165 3 is_stmt 1 view .LVU123
	.loc 1 167 3 view .LVU124
	.loc 1 167 7 is_stmt 0 view .LVU125
	call	try_tempname_len@PLT
.LVL56:
	.loc 1 167 6 view .LVU126
	testl	%eax, %eax
	je	.L31
	.loc 1 168 5 is_stmt 1 view .LVU127
	.loc 1 168 11 is_stmt 0 view .LVU128
	call	__errno_location@PLT
.LVL57:
	.loc 1 168 9 view .LVU129
	movl	(%rax), %r12d
.LVL58:
.L32:
	.loc 1 181 3 is_stmt 1 view .LVU130
	.loc 1 181 6 is_stmt 0 view .LVU131
	cmpq	%rbx, %r15
	je	.L27
	.loc 1 182 5 is_stmt 1 view .LVU132
	movq	%r15, %rdi
	call	free@PLT
.LVL59:
	jmp	.L27
.LVL60:
	.p2align 4,,10
	.p2align 3
.L34:
	.loc 1 182 5 is_stmt 0 view .LVU133
	movl	%r8d, %r12d
.LVL61:
.L27:
	.loc 1 184 1 view .LVU134
	movq	280(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L43
	addq	$296, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL62:
	.loc 1 184 1 view .LVU135
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL63:
	.loc 1 184 1 view .LVU136
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL64:
	.loc 1 184 1 view .LVU137
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL65:
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	.loc 1 156 5 is_stmt 1 view .LVU138
	.loc 1 156 23 is_stmt 0 view .LVU139
	call	symlinkat@PLT
.LVL66:
	.loc 1 156 23 view .LVU140
	movl	%eax, %r12d
	.loc 1 156 69 view .LVU141
	testl	%eax, %eax
	je	.L27
	.loc 1 156 71 discriminator 1 view .LVU142
	call	__errno_location@PLT
.LVL67:
	.loc 1 156 69 discriminator 1 view .LVU143
	movl	(%rax), %r8d
	jmp	.L28
.LVL68:
	.p2align 4,,10
	.p2align 3
.L42:
	.loc 1 163 5 is_stmt 1 view .LVU144
	.loc 1 163 12 is_stmt 0 view .LVU145
	call	__errno_location@PLT
.LVL69:
	.loc 1 163 12 view .LVU146
	movl	(%rax), %r12d
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L31:
	.loc 1 169 8 is_stmt 1 view .LVU147
	.loc 1 169 12 is_stmt 0 view .LVU148
	movq	%r13, %rcx
	movl	%ebp, %edx
	movq	%r15, %rsi
	movl	%ebp, %edi
	call	renameat@PLT
.LVL70:
	.loc 1 178 11 view .LVU149
	movl	$-1, %r12d
	.loc 1 169 11 view .LVU150
	testl	%eax, %eax
	je	.L32
	.loc 1 171 7 is_stmt 1 view .LVU151
	.loc 1 171 13 is_stmt 0 view .LVU152
	call	__errno_location@PLT
.LVL71:
	.loc 1 172 7 view .LVU153
	xorl	%edx, %edx
	movq	%r15, %rsi
	movl	%ebp, %edi
	.loc 1 171 11 view .LVU154
	movl	(%rax), %r12d
.LVL72:
	.loc 1 172 7 is_stmt 1 view .LVU155
	call	unlinkat@PLT
.LVL73:
	jmp	.L32
.LVL74:
.L43:
	.loc 1 184 1 is_stmt 0 view .LVU156
	call	__stack_chk_fail@PLT
.LVL75:
	.cfi_endproc
.LFE139:
	.size	force_symlinkat, .-force_symlinkat
	.section	.rodata
	.align 8
	.type	simple_pattern, @object
	.size	simple_pattern, 9
simple_pattern:
	.string	"CuXXXXXX"
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "./lib/sys/select.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/include/signal.h"
	.file 9 "/usr/include/unistd.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 11 "/usr/include/errno.h"
	.file 12 "src/version.h"
	.file 13 "./lib/exitfail.h"
	.file 14 "./lib/timespec.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 17 "/usr/include/stdio.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 19 "./lib/version-etc.h"
	.file 20 "./lib/progname.h"
	.file 21 "./lib/quotearg.h"
	.file 22 "./lib/tempname.h"
	.file 23 "/usr/include/stdlib.h"
	.file 24 "./lib/basename-lgpl.h"
	.file 25 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd4c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF132
	.byte	0xc
	.long	.LASF133
	.long	.LASF134
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.uleb128 0x4
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF7
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.long	0x8e
	.uleb128 0x8
	.byte	0x8
	.long	0xa0
	.uleb128 0x7
	.long	0x95
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x9
	.long	0xa0
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0x7
	.byte	0x12
	.long	0x82
	.uleb128 0x5
	.long	.LASF12
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0x8
	.byte	0x8
	.long	0xa7
	.uleb128 0x9
	.long	0xdf
	.uleb128 0x7
	.long	0xdf
	.uleb128 0xb
	.long	0x95
	.long	0xff
	.uleb128 0xc
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0xef
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xa6
	.byte	0xe
	.long	0xef
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x5
	.long	.LASF23
	.byte	0x5
	.byte	0x8f
	.byte	0x1a
	.long	0x63
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF24
	.uleb128 0xb
	.long	0xe5
	.long	0x177
	.uleb128 0xc
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.long	0x167
	.uleb128 0xa
	.long	.LASF25
	.byte	0x8
	.value	0x11e
	.byte	0x1a
	.long	0x177
	.uleb128 0xa
	.long	.LASF26
	.byte	0x8
	.value	0x11f
	.byte	0x1a
	.long	0x177
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.value	0x21f
	.byte	0xf
	.long	0x1a3
	.uleb128 0x8
	.byte	0x8
	.long	0x95
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.value	0x221
	.byte	0xf
	.long	0x1a3
	.uleb128 0xd
	.long	.LASF29
	.byte	0xa
	.byte	0x24
	.byte	0xe
	.long	0x95
	.uleb128 0xd
	.long	.LASF30
	.byte	0xa
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	.LASF31
	.byte	0xa
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	.LASF32
	.byte	0xa
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	.LASF33
	.byte	0xb
	.byte	0x2d
	.byte	0xe
	.long	0x95
	.uleb128 0xd
	.long	.LASF34
	.byte	0xb
	.byte	0x2e
	.byte	0xe
	.long	0x95
	.uleb128 0x8
	.byte	0x8
	.long	0x209
	.uleb128 0x7
	.long	0x1fe
	.uleb128 0xe
	.uleb128 0xd
	.long	.LASF35
	.byte	0xc
	.byte	0x1
	.byte	0x14
	.long	0xdf
	.uleb128 0xd
	.long	.LASF36
	.byte	0xd
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xb
	.long	0xa0
	.long	0x232
	.uleb128 0xc
	.long	0x42
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xe
	.byte	0x29
	.byte	0x6
	.long	0x24a
	.uleb128 0x10
	.long	.LASF37
	.long	0x3b9aca00
	.byte	0
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xe
	.byte	0x2a
	.byte	0x6
	.long	0x25f
	.uleb128 0x11
	.long	.LASF38
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.long	.LASF96
	.byte	0xd8
	.byte	0xf
	.byte	0x31
	.byte	0x8
	.long	0x3e6
	.uleb128 0x13
	.long	.LASF39
	.byte	0xf
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x13
	.long	.LASF40
	.byte	0xf
	.byte	0x36
	.byte	0x9
	.long	0x95
	.byte	0x8
	.uleb128 0x13
	.long	.LASF41
	.byte	0xf
	.byte	0x37
	.byte	0x9
	.long	0x95
	.byte	0x10
	.uleb128 0x13
	.long	.LASF42
	.byte	0xf
	.byte	0x38
	.byte	0x9
	.long	0x95
	.byte	0x18
	.uleb128 0x13
	.long	.LASF43
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.long	0x95
	.byte	0x20
	.uleb128 0x13
	.long	.LASF44
	.byte	0xf
	.byte	0x3a
	.byte	0x9
	.long	0x95
	.byte	0x28
	.uleb128 0x13
	.long	.LASF45
	.byte	0xf
	.byte	0x3b
	.byte	0x9
	.long	0x95
	.byte	0x30
	.uleb128 0x13
	.long	.LASF46
	.byte	0xf
	.byte	0x3c
	.byte	0x9
	.long	0x95
	.byte	0x38
	.uleb128 0x13
	.long	.LASF47
	.byte	0xf
	.byte	0x3d
	.byte	0x9
	.long	0x95
	.byte	0x40
	.uleb128 0x13
	.long	.LASF48
	.byte	0xf
	.byte	0x40
	.byte	0x9
	.long	0x95
	.byte	0x48
	.uleb128 0x13
	.long	.LASF49
	.byte	0xf
	.byte	0x41
	.byte	0x9
	.long	0x95
	.byte	0x50
	.uleb128 0x13
	.long	.LASF50
	.byte	0xf
	.byte	0x42
	.byte	0x9
	.long	0x95
	.byte	0x58
	.uleb128 0x13
	.long	.LASF51
	.byte	0xf
	.byte	0x44
	.byte	0x16
	.long	0x3ff
	.byte	0x60
	.uleb128 0x13
	.long	.LASF52
	.byte	0xf
	.byte	0x46
	.byte	0x14
	.long	0x405
	.byte	0x68
	.uleb128 0x13
	.long	.LASF53
	.byte	0xf
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x13
	.long	.LASF54
	.byte	0xf
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x13
	.long	.LASF55
	.byte	0xf
	.byte	0x4a
	.byte	0xb
	.long	0x6a
	.byte	0x78
	.uleb128 0x13
	.long	.LASF56
	.byte	0xf
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0x13
	.long	.LASF57
	.byte	0xf
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0x13
	.long	.LASF58
	.byte	0xf
	.byte	0x4f
	.byte	0x8
	.long	0x40b
	.byte	0x83
	.uleb128 0x13
	.long	.LASF59
	.byte	0xf
	.byte	0x51
	.byte	0xf
	.long	0x41b
	.byte	0x88
	.uleb128 0x13
	.long	.LASF60
	.byte	0xf
	.byte	0x59
	.byte	0xd
	.long	0x76
	.byte	0x90
	.uleb128 0x13
	.long	.LASF61
	.byte	0xf
	.byte	0x5b
	.byte	0x17
	.long	0x426
	.byte	0x98
	.uleb128 0x13
	.long	.LASF62
	.byte	0xf
	.byte	0x5c
	.byte	0x19
	.long	0x431
	.byte	0xa0
	.uleb128 0x13
	.long	.LASF63
	.byte	0xf
	.byte	0x5d
	.byte	0x14
	.long	0x405
	.byte	0xa8
	.uleb128 0x13
	.long	.LASF64
	.byte	0xf
	.byte	0x5e
	.byte	0x9
	.long	0x8e
	.byte	0xb0
	.uleb128 0x13
	.long	.LASF65
	.byte	0xf
	.byte	0x5f
	.byte	0xa
	.long	0xb8
	.byte	0xb8
	.uleb128 0x13
	.long	.LASF66
	.byte	0xf
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x13
	.long	.LASF67
	.byte	0xf
	.byte	0x62
	.byte	0x8
	.long	0x437
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF68
	.byte	0x10
	.byte	0x7
	.byte	0x19
	.long	0x25f
	.uleb128 0x14
	.long	.LASF135
	.byte	0xf
	.byte	0x2b
	.byte	0xe
	.uleb128 0x15
	.long	.LASF69
	.uleb128 0x8
	.byte	0x8
	.long	0x3fa
	.uleb128 0x8
	.byte	0x8
	.long	0x25f
	.uleb128 0xb
	.long	0xa0
	.long	0x41b
	.uleb128 0xc
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3f2
	.uleb128 0x15
	.long	.LASF70
	.uleb128 0x8
	.byte	0x8
	.long	0x421
	.uleb128 0x15
	.long	.LASF71
	.uleb128 0x8
	.byte	0x8
	.long	0x42c
	.uleb128 0xb
	.long	0xa0
	.long	0x447
	.uleb128 0xc
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF72
	.byte	0x11
	.byte	0x89
	.byte	0xe
	.long	0x453
	.uleb128 0x8
	.byte	0x8
	.long	0x3e6
	.uleb128 0xd
	.long	.LASF73
	.byte	0x11
	.byte	0x8a
	.byte	0xe
	.long	0x453
	.uleb128 0xd
	.long	.LASF74
	.byte	0x11
	.byte	0x8b
	.byte	0xe
	.long	0x453
	.uleb128 0xd
	.long	.LASF75
	.byte	0x12
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	0xe5
	.long	0x488
	.uleb128 0x16
	.byte	0
	.uleb128 0x9
	.long	0x47d
	.uleb128 0xd
	.long	.LASF76
	.byte	0x12
	.byte	0x1b
	.byte	0x1a
	.long	0x488
	.uleb128 0xd
	.long	.LASF77
	.byte	0x12
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	.LASF78
	.byte	0x12
	.byte	0x1f
	.byte	0x1a
	.long	0x488
	.uleb128 0xb
	.long	0xa7
	.long	0x4bc
	.uleb128 0x16
	.byte	0
	.uleb128 0x9
	.long	0x4b1
	.uleb128 0xd
	.long	.LASF79
	.byte	0x13
	.byte	0x19
	.byte	0x13
	.long	0x4bc
	.uleb128 0xd
	.long	.LASF80
	.byte	0x14
	.byte	0x20
	.byte	0x14
	.long	0xdf
	.uleb128 0x17
	.long	.LASF136
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x15
	.byte	0x20
	.byte	0x6
	.long	0x52e
	.uleb128 0x11
	.long	.LASF81
	.byte	0
	.uleb128 0x11
	.long	.LASF82
	.byte	0x1
	.uleb128 0x11
	.long	.LASF83
	.byte	0x2
	.uleb128 0x11
	.long	.LASF84
	.byte	0x3
	.uleb128 0x11
	.long	.LASF85
	.byte	0x4
	.uleb128 0x11
	.long	.LASF86
	.byte	0x5
	.uleb128 0x11
	.long	.LASF87
	.byte	0x6
	.uleb128 0x11
	.long	.LASF88
	.byte	0x7
	.uleb128 0x11
	.long	.LASF89
	.byte	0x8
	.uleb128 0x11
	.long	.LASF90
	.byte	0x9
	.uleb128 0x11
	.long	.LASF91
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.long	0x4d9
	.uleb128 0xa
	.long	.LASF92
	.byte	0x15
	.value	0x10b
	.byte	0x1a
	.long	0x488
	.uleb128 0xb
	.long	0x52e
	.long	0x54b
	.uleb128 0x16
	.byte	0
	.uleb128 0x9
	.long	0x540
	.uleb128 0xa
	.long	.LASF93
	.byte	0x15
	.value	0x10c
	.byte	0x21
	.long	0x54b
	.uleb128 0xb
	.long	0xa7
	.long	0x56d
	.uleb128 0xc
	.long	0x42
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x55d
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.byte	0x26
	.byte	0x13
	.long	0x56d
	.uleb128 0x9
	.byte	0x3
	.quad	simple_pattern
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.long	0x59d
	.uleb128 0x11
	.long	.LASF94
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.long	0x5b3
	.uleb128 0x19
	.long	.LASF95
	.value	0x100
	.byte	0
	.uleb128 0x12
	.long	.LASF97
	.byte	0x18
	.byte	0x1
	.byte	0x47
	.byte	0x8
	.long	0x5f5
	.uleb128 0x13
	.long	.LASF98
	.byte	0x1
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x13
	.long	.LASF99
	.byte	0x1
	.byte	0x4a
	.byte	0xf
	.long	0xdf
	.byte	0x8
	.uleb128 0x13
	.long	.LASF100
	.byte	0x1
	.byte	0x4b
	.byte	0x7
	.long	0x57
	.byte	0x10
	.uleb128 0x13
	.long	.LASF101
	.byte	0x1
	.byte	0x4c
	.byte	0x7
	.long	0x57
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.long	.LASF102
	.byte	0x10
	.byte	0x1
	.byte	0x83
	.byte	0x8
	.long	0x61d
	.uleb128 0x13
	.long	.LASF99
	.byte	0x1
	.byte	0x85
	.byte	0xf
	.long	0xdf
	.byte	0
	.uleb128 0x13
	.long	.LASF100
	.byte	0x1
	.byte	0x86
	.byte	0x7
	.long	0x57
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0x57
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f2
	.uleb128 0x1b
	.long	.LASF99
	.byte	0x1
	.byte	0x98
	.byte	0x1e
	.long	0xdf
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x1b
	.long	.LASF100
	.byte	0x1
	.byte	0x98
	.byte	0x2b
	.long	0x57
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x1b
	.long	.LASF103
	.byte	0x1
	.byte	0x98
	.byte	0x3f
	.long	0xdf
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x1b
	.long	.LASF104
	.byte	0x1
	.byte	0x99
	.byte	0x17
	.long	0x7f2
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.byte	0x99
	.byte	0x22
	.long	0x57
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0xa0
	.byte	0x8
	.long	0x222
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1d
	.long	.LASF107
	.byte	0x1
	.byte	0xa1
	.byte	0x9
	.long	0x95
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0xa4
	.byte	0x16
	.long	0x5f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.byte	0xa5
	.byte	0x7
	.long	0x57
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x1f
	.quad	.LVL54
	.long	0xafd
	.long	0x709
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL56
	.long	0xcbd
	.long	0x73e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	try_symlink
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x21
	.quad	.LVL57
	.long	0xcc9
	.uleb128 0x1f
	.quad	.LVL59
	.long	0xcd5
	.long	0x763
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL66
	.long	0xce2
	.uleb128 0x21
	.quad	.LVL67
	.long	0xcc9
	.uleb128 0x21
	.quad	.LVL69
	.long	0xcc9
	.uleb128 0x1f
	.quad	.LVL70
	.long	0xcef
	.long	0x7b4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL71
	.long	0xcc9
	.uleb128 0x1f
	.quad	.LVL73
	.long	0xcfb
	.long	0x7e4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL75
	.long	0xd08
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF108
	.uleb128 0x22
	.long	.LASF113
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.long	0x57
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x86b
	.uleb128 0x1b
	.long	.LASF109
	.byte	0x1
	.byte	0x8a
	.byte	0x14
	.long	0x95
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x23
	.string	"arg"
	.byte	0x1
	.byte	0x8a
	.byte	0x20
	.long	0x8e
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1e
	.string	"a"
	.byte	0x1
	.byte	0x8c
	.byte	0x17
	.long	0x86b
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x24
	.quad	.LVL23
	.long	0xce2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5f5
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	0x57
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0xa85
	.uleb128 0x1b
	.long	.LASF98
	.byte	0x1
	.byte	0x5f
	.byte	0x13
	.long	0x57
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1b
	.long	.LASF99
	.byte	0x1
	.byte	0x5f
	.byte	0x27
	.long	0xdf
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x1b
	.long	.LASF100
	.byte	0x1
	.byte	0x60
	.byte	0x13
	.long	0x57
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x1b
	.long	.LASF103
	.byte	0x1
	.byte	0x60
	.byte	0x27
	.long	0xdf
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x1b
	.long	.LASF101
	.byte	0x1
	.byte	0x60
	.byte	0x34
	.long	0x57
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x1b
	.long	.LASF104
	.byte	0x1
	.byte	0x60
	.byte	0x40
	.long	0x7f2
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x1
	.byte	0x61
	.byte	0x13
	.long	0x57
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0x69
	.byte	0x8
	.long	0x222
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1d
	.long	.LASF107
	.byte	0x1
	.byte	0x6a
	.byte	0x9
	.long	0x95
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0x6d
	.byte	0x13
	.long	0x5b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.byte	0x6e
	.byte	0x7
	.long	0x57
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x1f
	.quad	.LVL29
	.long	0xafd
	.long	0x987
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -376
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.quad	.LVL31
	.long	0xcbd
	.long	0x9bd
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	try_link
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x21
	.quad	.LVL32
	.long	0xcc9
	.uleb128 0x1f
	.quad	.LVL34
	.long	0xcd5
	.long	0x9e2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL42
	.long	0xd11
	.long	0xa03
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x5
	.byte	0x91
	.sleb128 -380
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x21
	.quad	.LVL43
	.long	0xcc9
	.uleb128 0x21
	.quad	.LVL45
	.long	0xcc9
	.uleb128 0x1f
	.quad	.LVL46
	.long	0xcef
	.long	0xa47
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL47
	.long	0xcc9
	.uleb128 0x1f
	.quad	.LVL49
	.long	0xcfb
	.long	0xa77
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL51
	.long	0xd08
	.byte	0
	.uleb128 0x22
	.long	.LASF114
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	0x57
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0xaf7
	.uleb128 0x1b
	.long	.LASF109
	.byte	0x1
	.byte	0x50
	.byte	0x11
	.long	0x95
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x23
	.string	"arg"
	.byte	0x1
	.byte	0x50
	.byte	0x1d
	.long	0x8e
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1e
	.string	"a"
	.byte	0x1
	.byte	0x52
	.byte	0x14
	.long	0xaf7
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x24
	.quad	.LVL4
	.long	0xd11
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5b3
	.uleb128 0x22
	.long	.LASF115
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0x95
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xc5d
	.uleb128 0x1b
	.long	.LASF103
	.byte	0x1
	.byte	0x33
	.byte	0x1f
	.long	0xdf
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.byte	0x33
	.byte	0x2d
	.long	0x95
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.long	0x154
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1d
	.long	.LASF117
	.byte	0x1
	.byte	0x36
	.byte	0xa
	.long	0xb8
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1d
	.long	.LASF107
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.long	0x95
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x25
	.long	0xc87
	.quad	.LBI6
	.byte	.LVU29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0x1
	.byte	0x40
	.byte	0xb
	.long	0xbf0
	.uleb128 0x26
	.long	0xcb0
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x26
	.long	0xca4
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x26
	.long	0xc98
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x27
	.quad	.LVL12
	.long	0xd1e
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0xc5d
	.quad	.LBI8
	.byte	.LVU33
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0x1
	.byte	0x40
	.byte	0x3
	.long	0xc30
	.uleb128 0x26
	.long	0xc7a
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x26
	.long	0xc6e
	.long	.LLST12
	.long	.LVUS12
	.byte	0
	.uleb128 0x1f
	.quad	.LVL6
	.long	0xd36
	.long	0xc48
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL9
	.long	0xd42
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 9
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF120
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.long	0x95
	.byte	0x3
	.long	0xc87
	.uleb128 0x29
	.long	.LASF118
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.long	0x9b
	.uleb128 0x29
	.long	.LASF119
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.long	0xea
	.byte	0
	.uleb128 0x28
	.long	.LASF121
	.byte	0x2
	.byte	0x2d
	.byte	0x1
	.long	0x8e
	.byte	0x3
	.long	0xcbd
	.uleb128 0x29
	.long	.LASF118
	.byte	0x2
	.byte	0x2d
	.byte	0x1
	.long	0x90
	.uleb128 0x29
	.long	.LASF119
	.byte	0x2
	.byte	0x2d
	.byte	0x1
	.long	0x204
	.uleb128 0x29
	.long	.LASF122
	.byte	0x2
	.byte	0x2d
	.byte	0x1
	.long	0xb8
	.byte	0
	.uleb128 0x2a
	.long	.LASF123
	.long	.LASF123
	.byte	0x16
	.byte	0x40
	.byte	0xc
	.uleb128 0x2a
	.long	.LASF124
	.long	.LASF124
	.byte	0xb
	.byte	0x25
	.byte	0xd
	.uleb128 0x2b
	.long	.LASF125
	.long	.LASF125
	.byte	0x17
	.value	0x235
	.byte	0xd
	.uleb128 0x2b
	.long	.LASF126
	.long	.LASF126
	.byte	0x9
	.value	0x32f
	.byte	0xc
	.uleb128 0x2a
	.long	.LASF127
	.long	.LASF127
	.byte	0x11
	.byte	0x98
	.byte	0xc
	.uleb128 0x2b
	.long	.LASF128
	.long	.LASF128
	.byte	0x9
	.value	0x33d
	.byte	0xc
	.uleb128 0x2c
	.long	.LASF137
	.long	.LASF137
	.uleb128 0x2b
	.long	.LASF129
	.long	.LASF129
	.byte	0x9
	.value	0x31b
	.byte	0xc
	.uleb128 0x2d
	.long	.LASF121
	.long	.LASF138
	.byte	0x19
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x9e
	.uleb128 0x9
	.byte	0x43
	.byte	0x75
	.byte	0x58
	.byte	0x58
	.byte	0x58
	.byte	0x58
	.byte	0x58
	.byte	0x58
	.byte	0
	.uleb128 0x2a
	.long	.LASF130
	.long	.LASF130
	.byte	0x18
	.byte	0x42
	.byte	0xe
	.uleb128 0x2b
	.long	.LASF131
	.long	.LASF131
	.byte	0x17
	.value	0x21b
	.byte	0xe
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x37
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS25:
	.uleb128 0
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 0
.LLST25:
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL53-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL64-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL65-.Ltext0
	.quad	.LVL66-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL66-1-.Ltext0
	.quad	.LFE139-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 0
.LLST26:
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL53-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL62-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL65-.Ltext0
	.quad	.LVL66-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL66-1-.Ltext0
	.quad	.LFE139-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 0
.LLST27:
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL53-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL63-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL65-.Ltext0
	.quad	.LVL66-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL66-1-.Ltext0
	.quad	.LFE139-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 0
.LLST28:
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL53-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL65-.Ltext0
	.quad	.LVL66-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL66-1-.Ltext0
	.quad	.LFE139-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU117
	.uleb128 .LVU133
	.uleb128 .LVU134
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU144
.LLST29:
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL60-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL65-.Ltext0
	.quad	.LVL66-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL66-1-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS30:
	.uleb128 .LVU118
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU133
	.uleb128 .LVU144
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU156
.LLST30:
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL56-1-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL69-1-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 .LVU130
	.uleb128 .LVU133
	.uleb128 .LVU155
	.uleb128 .LVU156
.LLST31:
	.quad	.LVL58-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL72-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST13:
	.quad	.LVL19-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL23-1-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST14:
	.quad	.LVL19-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL23-1-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU48
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST15:
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL23-1-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 0
.LLST16:
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL26-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL42-1-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST17:
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL26-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL37-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 0
.LLST18:
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL26-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL38-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL42-1-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST19:
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL25-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL39-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 0
.LLST20:
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL26-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL42-1-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -380
	.quad	.LVL44-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 0
.LLST21:
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL26-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-1-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL42-1-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU66
	.uleb128 .LVU85
	.uleb128 .LVU86
	.uleb128 .LVU91
	.uleb128 .LVU97
.LLST22:
	.quad	.LVL24-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL41-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 0
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU69
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU85
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU106
.LLST23:
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL31-1-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL45-1-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU82
	.uleb128 .LVU85
	.uleb128 .LVU105
	.uleb128 .LVU106
.LLST24:
	.quad	.LVL33-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL48-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL4-1-.Ltext0
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
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL4-1-.Ltext0
	.quad	.LFE136-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU3
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST2:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL4-1-.Ltext0
	.quad	.LFE136-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST3:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL6-1-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST4:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL6-1-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL10-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU16
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 0
.LLST5:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL9-1-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL17-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU19
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 0
.LLST6:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL9-1-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 9
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 9
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU40
	.uleb128 .LVU43
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 0
.LLST7:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL11-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL18-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU29
	.uleb128 .LVU32
.LLST8:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU29
	.uleb128 .LVU32
.LLST9:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU29
	.uleb128 .LVU32
.LLST10:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU32
	.uleb128 .LVU36
.LLST11:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3369
	.sleb128 0
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU32
	.uleb128 .LVU36
.LLST12:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x50
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF127:
	.string	"renameat"
.LASF7:
	.string	"__off_t"
.LASF5:
	.string	"short int"
.LASF40:
	.string	"_IO_read_ptr"
.LASF89:
	.string	"locale_quoting_style"
.LASF52:
	.string	"_chain"
.LASF99:
	.string	"srcname"
.LASF136:
	.string	"quoting_style"
.LASF12:
	.string	"size_t"
.LASF38:
	.string	"LOG10_TIMESPEC_HZ"
.LASF58:
	.string	"_shortbuf"
.LASF82:
	.string	"shell_quoting_style"
.LASF129:
	.string	"linkat"
.LASF46:
	.string	"_IO_buf_base"
.LASF13:
	.string	"long long unsigned int"
.LASF119:
	.string	"__src"
.LASF126:
	.string	"symlinkat"
.LASF125:
	.string	"free"
.LASF61:
	.string	"_codecvt"
.LASF100:
	.string	"dstdir"
.LASF111:
	.string	"force_linkat"
.LASF18:
	.string	"__timezone"
.LASF14:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF93:
	.string	"quoting_style_vals"
.LASF117:
	.string	"dsttmpsize"
.LASF88:
	.string	"escape_quoting_style"
.LASF81:
	.string	"literal_quoting_style"
.LASF53:
	.string	"_fileno"
.LASF41:
	.string	"_IO_read_end"
.LASF26:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"_gl_cxxalias_dummy"
.LASF39:
	.string	"_flags"
.LASF68:
	.string	"FILE"
.LASF62:
	.string	"_wide_data"
.LASF47:
	.string	"_IO_buf_end"
.LASF56:
	.string	"_cur_column"
.LASF34:
	.string	"program_invocation_short_name"
.LASF86:
	.string	"c_quoting_style"
.LASF70:
	.string	"_IO_codecvt"
.LASF78:
	.string	"_sys_errlist"
.LASF133:
	.string	"src/force-link.c"
.LASF33:
	.string	"program_invocation_name"
.LASF55:
	.string	"_old_offset"
.LASF60:
	.string	"_offset"
.LASF37:
	.string	"TIMESPEC_HZ"
.LASF115:
	.string	"samedir_template"
.LASF85:
	.string	"shell_escape_always_quoting_style"
.LASF21:
	.string	"timezone"
.LASF80:
	.string	"program_name"
.LASF69:
	.string	"_IO_marker"
.LASF72:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF132:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF97:
	.string	"link_arg"
.LASF3:
	.string	"long unsigned int"
.LASF44:
	.string	"_IO_write_ptr"
.LASF113:
	.string	"try_symlink"
.LASF75:
	.string	"sys_nerr"
.LASF116:
	.string	"dstdirlen"
.LASF91:
	.string	"custom_quoting_style"
.LASF1:
	.string	"short unsigned int"
.LASF35:
	.string	"Version"
.LASF48:
	.string	"_IO_save_base"
.LASF28:
	.string	"environ"
.LASF138:
	.string	"__builtin_mempcpy"
.LASF120:
	.string	"strcpy"
.LASF59:
	.string	"_lock"
.LASF54:
	.string	"_flags2"
.LASF66:
	.string	"_mode"
.LASF73:
	.string	"stdout"
.LASF114:
	.string	"try_link"
.LASF23:
	.string	"ptrdiff_t"
.LASF79:
	.string	"version_etc_copyright"
.LASF29:
	.string	"optarg"
.LASF128:
	.string	"unlinkat"
.LASF22:
	.string	"getdate_err"
.LASF30:
	.string	"optind"
.LASF45:
	.string	"_IO_write_end"
.LASF105:
	.string	"symlinkat_errno"
.LASF118:
	.string	"__dest"
.LASF135:
	.string	"_IO_lock_t"
.LASF96:
	.string	"_IO_FILE"
.LASF109:
	.string	"dest"
.LASF27:
	.string	"__environ"
.LASF11:
	.string	"time_t"
.LASF76:
	.string	"sys_errlist"
.LASF51:
	.string	"_markers"
.LASF87:
	.string	"c_maybe_quoting_style"
.LASF108:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF102:
	.string	"symlink_arg"
.LASF122:
	.string	"__len"
.LASF77:
	.string	"_sys_nerr"
.LASF57:
	.string	"_vtable_offset"
.LASF19:
	.string	"tzname"
.LASF95:
	.string	"smallsize"
.LASF131:
	.string	"malloc"
.LASF36:
	.string	"exit_failure"
.LASF98:
	.string	"srcdir"
.LASF137:
	.string	"__stack_chk_fail"
.LASF84:
	.string	"shell_escape_quoting_style"
.LASF92:
	.string	"quoting_style_args"
.LASF32:
	.string	"optopt"
.LASF20:
	.string	"daylight"
.LASF24:
	.string	"long double"
.LASF10:
	.string	"char"
.LASF107:
	.string	"dsttmp"
.LASF83:
	.string	"shell_always_quoting_style"
.LASF130:
	.string	"last_component"
.LASF123:
	.string	"try_tempname_len"
.LASF124:
	.string	"__errno_location"
.LASF31:
	.string	"opterr"
.LASF106:
	.string	"simple_pattern"
.LASF103:
	.string	"dstname"
.LASF110:
	.string	"force_symlinkat"
.LASF8:
	.string	"__off64_t"
.LASF42:
	.string	"_IO_read_base"
.LASF50:
	.string	"_IO_save_end"
.LASF25:
	.string	"_sys_siglist"
.LASF65:
	.string	"__pad5"
.LASF9:
	.string	"__time_t"
.LASF67:
	.string	"_unused2"
.LASF74:
	.string	"stderr"
.LASF17:
	.string	"__daylight"
.LASF134:
	.string	"/root/coreutils"
.LASF64:
	.string	"_freeres_buf"
.LASF90:
	.string	"clocale_quoting_style"
.LASF49:
	.string	"_IO_backup_base"
.LASF101:
	.string	"flags"
.LASF112:
	.string	"linkat_errno"
.LASF94:
	.string	"x_suffix_len"
.LASF63:
	.string	"_freeres_list"
.LASF71:
	.string	"_IO_wide_data"
.LASF104:
	.string	"force"
.LASF16:
	.string	"__tzname"
.LASF43:
	.string	"_IO_write_base"
.LASF121:
	.string	"mempcpy"
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
