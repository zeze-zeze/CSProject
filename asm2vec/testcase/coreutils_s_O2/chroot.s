	.file	"chroot.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	","
.LC1:
	.string	""
.LC2:
	.string	"invalid group %s"
.LC3:
	.string	"invalid group list %s"
	.text
	.p2align 4
	.type	parse_additional_groups, @function
parse_additional_groups:
.LVL0:
.LFB137:
	.file 1 "src/chroot.c"
	.loc 1 98 1 view -0
	.cfi_startproc
	.loc 1 98 1 is_stmt 0 view .LVU1
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.loc 1 98 1 view .LVU2
	movq	%rdi, 16(%rsp)
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	movl	%ecx, 28(%rsp)
	movb	%cl, 27(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	.loc 1 99 3 is_stmt 1 view .LVU3
.LVL1:
	.loc 1 100 3 view .LVU4
	.loc 1 100 10 is_stmt 0 view .LVU5
	movq	$0, 40(%rsp)
	.loc 1 101 3 is_stmt 1 view .LVU6
.LVL2:
	.loc 1 102 3 view .LVU7
	.loc 1 102 18 is_stmt 0 view .LVU8
	call	xstrdup@PLT
.LVL3:
	.loc 1 106 14 view .LVU9
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	.loc 1 102 18 view .LVU10
	movq	%rax, %r12
.LVL4:
	.loc 1 103 3 is_stmt 1 view .LVU11
	.loc 1 104 3 view .LVU12
	.loc 1 106 3 view .LVU13
	.loc 1 106 14 is_stmt 0 view .LVU14
	call	strtok@PLT
.LVL5:
	.loc 1 106 14 view .LVU15
	movq	%rax, %r14
.LVL6:
	.loc 1 106 36 is_stmt 1 view .LVU16
	.loc 1 106 3 is_stmt 0 view .LVU17
	testq	%rax, %rax
	je	.L2
	.loc 1 104 7 view .LVU18
	xorl	%r15d, %r15d
	.loc 1 101 10 view .LVU19
	xorl	%ebx, %ebx
	leaq	48(%rsp), %r13
	.loc 1 99 16 view .LVU20
	xorl	%ebp, %ebp
.LVL7:
.L12:
.LBB75:
	.loc 1 108 7 is_stmt 1 view .LVU21
	.loc 1 109 7 view .LVU22
	.loc 1 111 7 view .LVU23
	.loc 1 111 11 is_stmt 0 view .LVU24
	xorl	%esi, %esi
	leaq	.LC1(%rip), %r8
	movq	%r13, %rcx
	movq	%r14, %rdi
	movl	$10, %edx
	call	xstrtoumax@PLT
.LVL8:
	.loc 1 111 10 view .LVU25
	testl	%eax, %eax
	jne	.L3
	.loc 1 112 11 view .LVU26
	movl	$4294967295, %eax
	cmpq	%rax, 48(%rsp)
	jbe	.L40
.L3:
	.loc 1 128 11 is_stmt 1 view .LVU27
	.loc 1 128 15 is_stmt 0 view .LVU28
	movq	%r14, %rdi
	call	getgrnam@PLT
.LVL9:
	.loc 1 129 11 is_stmt 1 view .LVU29
	.loc 1 129 14 is_stmt 0 view .LVU30
	testq	%rax, %rax
	je	.L8
.LVL10:
.L38:
	.loc 1 130 13 is_stmt 1 view .LVU31
	.loc 1 130 22 is_stmt 0 view .LVU32
	movl	16(%rax), %eax
	movq	%rax, 48(%rsp)
	.loc 1 133 7 is_stmt 1 view .LVU33
.L7:
.LVL11:
	.loc 1 146 7 view .LVU34
	.loc 1 146 10 is_stmt 0 view .LVU35
	cmpq	%rbx, 40(%rsp)
	je	.L41
.L10:
	.loc 1 148 7 is_stmt 1 view .LVU36
.LVL12:
	.loc 1 148 22 is_stmt 0 view .LVU37
	movq	48(%rsp), %rax
	movl	%eax, 0(%rbp,%rbx,4)
	.loc 1 148 18 view .LVU38
	addq	$1, %rbx
.LVL13:
.L9:
	.loc 1 148 18 view .LVU39
.LBE75:
	.loc 1 106 41 is_stmt 1 discriminator 2 view .LVU40
	.loc 1 106 47 is_stmt 0 discriminator 2 view .LVU41
	leaq	.LC0(%rip), %rsi
	xorl	%edi, %edi
	call	strtok@PLT
.LVL14:
	movq	%rax, %r14
.LVL15:
	.loc 1 106 36 is_stmt 1 discriminator 2 view .LVU42
	.loc 1 106 3 is_stmt 0 discriminator 2 view .LVU43
	testq	%rax, %rax
	jne	.L12
	.loc 1 151 3 is_stmt 1 view .LVU44
	.loc 1 151 6 is_stmt 0 view .LVU45
	testl	%r15d, %r15d
	je	.L42
.L13:
	.loc 1 158 3 is_stmt 1 view .LVU46
	.loc 1 158 10 is_stmt 0 view .LVU47
	movq	(%rsp), %rax
.LVL16:
	.loc 1 158 10 view .LVU48
	movq	%rbp, (%rax)
	.loc 1 160 3 is_stmt 1 view .LVU49
	.loc 1 160 6 is_stmt 0 view .LVU50
	testl	%r15d, %r15d
	jne	.L18
	.loc 1 161 5 is_stmt 1 view .LVU51
	.loc 1 161 14 is_stmt 0 view .LVU52
	movq	8(%rsp), %rax
	movq	%rbx, (%rax)
	jmp	.L11
.LVL17:
	.p2align 4,,10
	.p2align 3
.L8:
.LBB79:
	.loc 1 133 7 is_stmt 1 view .LVU53
	.loc 1 135 11 view .LVU54
	.loc 1 137 11 view .LVU55
	.loc 1 137 14 is_stmt 0 view .LVU56
	cmpb	$0, 27(%rsp)
	jne	.L43
	.loc 1 143 11 is_stmt 1 view .LVU57
	.loc 1 143 11 is_stmt 0 view .LVU58
.LBE79:
	.loc 1 151 3 is_stmt 1 view .LVU59
	.loc 1 158 3 view .LVU60
	.loc 1 158 10 is_stmt 0 view .LVU61
	movq	(%rsp), %rax
.LBB80:
	.loc 1 135 15 view .LVU62
	movl	$-1, %r15d
.LBE80:
	.loc 1 158 10 view .LVU63
	movq	%rbp, (%rax)
	.loc 1 160 3 is_stmt 1 view .LVU64
.LVL18:
.L11:
	.loc 1 163 3 view .LVU65
	movq	%r12, %rdi
	call	free@PLT
.LVL19:
	.loc 1 164 3 view .LVU66
	.loc 1 165 1 is_stmt 0 view .LVU67
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L44
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
.LVL20:
	.loc 1 165 1 view .LVU68
	movl	%r15d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL21:
	.loc 1 165 1 view .LVU69
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL22:
	.loc 1 165 1 view .LVU70
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL23:
	.p2align 4,,10
	.p2align 3
.L40:
	.cfi_restore_state
.LBB81:
	.loc 1 114 18 view .LVU71
	call	__ctype_b_loc@PLT
.LVL24:
	movq	(%rax), %rcx
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 1 115 13 is_stmt 1 view .LVU72
.LVL25:
	.loc 1 115 16 is_stmt 0 view .LVU73
	addq	$1, %r14
.LVL26:
.L4:
	.loc 1 114 17 is_stmt 1 view .LVU74
	.loc 1 114 18 is_stmt 0 view .LVU75
	movzbl	(%r14), %edx
.LVL27:
.LBB76:
.LBI76:
	.file 2 "src/system.h"
	.loc 2 156 29 is_stmt 1 view .LVU76
.LBB77:
	.loc 2 156 50 view .LVU77
	.loc 2 156 50 is_stmt 0 view .LVU78
.LBE77:
.LBE76:
	.loc 1 114 17 view .LVU79
	testb	$32, 1(%rcx,%rdx,2)
	jne	.L5
	.loc 1 116 11 is_stmt 1 view .LVU80
	.loc 1 116 14 is_stmt 0 view .LVU81
	cmpb	$43, %dl
	je	.L7
	.loc 1 119 15 is_stmt 1 view .LVU82
	.loc 1 119 19 is_stmt 0 view .LVU83
	movq	%r14, %rdi
	call	getgrnam@PLT
.LVL28:
	.loc 1 120 15 is_stmt 1 view .LVU84
	.loc 1 120 18 is_stmt 0 view .LVU85
	testq	%rax, %rax
	jne	.L38
	jmp	.L7
.LVL29:
.L41:
.LBB78:
	.loc 1 147 9 is_stmt 1 view .LVU86
	.loc 1 147 16 is_stmt 0 view .LVU87
	movq	%rbp, %rdi
	leaq	40(%rsp), %rsi
	movl	$4, %edx
	call	x2nrealloc@PLT
.LVL30:
	movq	%rax, %rbp
.LVL31:
	.loc 1 147 16 view .LVU88
	jmp	.L10
.LVL32:
.L42:
	.loc 1 147 16 view .LVU89
.LBE78:
.LBE81:
	.loc 1 151 6 view .LVU90
	testq	%rbx, %rbx
	jne	.L13
.LVL33:
	.loc 1 151 6 view .LVU91
	movq	%rbp, %r14
.LVL34:
.L2:
	.loc 1 153 7 is_stmt 1 view .LVU92
	.loc 1 153 10 is_stmt 0 view .LVU93
	cmpb	$0, 28(%rsp)
	je	.L14
	.loc 1 154 9 is_stmt 1 view .LVU94
	movq	16(%rsp), %rdi
	call	quote@PLT
.LVL35:
	.loc 1 154 22 is_stmt 0 view .LVU95
	movl	$5, %edx
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 154 9 view .LVU96
	movq	%rax, %r13
	.loc 1 154 22 view .LVU97
	call	dcgettext@PLT
.LVL36:
	.loc 1 154 9 view .LVU98
	movq	%r13, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 154 22 view .LVU99
	movq	%rax, %rdx
	.loc 1 154 9 view .LVU100
	xorl	%eax, %eax
	call	error@PLT
.LVL37:
.L14:
	.loc 1 155 7 is_stmt 1 view .LVU101
	.loc 1 158 3 view .LVU102
	.loc 1 158 10 is_stmt 0 view .LVU103
	movq	(%rsp), %rax
	.loc 1 155 11 view .LVU104
	orl	$-1, %r15d
	.loc 1 158 10 view .LVU105
	movq	%r14, (%rax)
	.loc 1 160 3 is_stmt 1 view .LVU106
	jmp	.L11
.LVL38:
.L43:
.LBB82:
	.loc 1 139 15 view .LVU107
	movq	%r14, %rdi
	call	quote@PLT
.LVL39:
	.loc 1 139 32 is_stmt 0 view .LVU108
	movl	$5, %edx
	leaq	.LC2(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 139 15 view .LVU109
	movq	%rax, %r15
	.loc 1 139 32 view .LVU110
	call	dcgettext@PLT
.LVL40:
	movq	%rax, %r14
.LVL41:
	.loc 1 139 25 view .LVU111
	call	__errno_location@PLT
.LVL42:
	.loc 1 139 15 view .LVU112
	movq	%r15, %rcx
	movq	%r14, %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	.loc 1 135 15 view .LVU113
	orl	$-1, %r15d
	.loc 1 139 15 view .LVU114
	call	error@PLT
.LVL43:
	.loc 1 140 15 is_stmt 1 view .LVU115
	jmp	.L9
.LVL44:
.L18:
	.loc 1 140 15 is_stmt 0 view .LVU116
.LBE82:
	orl	$-1, %r15d
.LVL45:
	.loc 1 140 15 view .LVU117
	jmp	.L11
.LVL46:
.L44:
	.loc 1 165 1 view .LVU118
	call	__stack_chk_fail@PLT
.LVL47:
	.cfi_endproc
.LFE137:
	.size	parse_additional_groups, .-parse_additional_groups
	.section	.rodata.str1.1
.LC4:
	.string	"chroot"
.LC5:
	.string	" invocation"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC7:
	.string	"Usage: %s [OPTION] NEWROOT [COMMAND [ARG]...]\n  or:  %s OPTION\n"
	.align 8
.LC8:
	.string	"Run COMMAND with root directory set to NEWROOT.\n\n"
	.align 8
.LC9:
	.string	"  --groups=G_LIST        specify supplementary groups as g1,g2,..,gN\n"
	.align 8
.LC10:
	.string	"  --userspec=USER:GROUP  specify user and group (ID or name) to use\n"
	.section	.rodata.str1.1
.LC11:
	.string	"/"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"  --skip-chdir           do not change working directory to %s\n"
	.align 8
.LC13:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC14:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC15:
	.string	"\nIf no command is given, run '\"$SHELL\" -i' (default: '/bin/sh -i').\n"
	.section	.rodata.str1.1
.LC16:
	.string	"["
.LC17:
	.string	"test invocation"
.LC18:
	.string	"coreutils"
.LC19:
	.string	"Multi-call invocation"
.LC20:
	.string	"sha224sum"
.LC21:
	.string	"sha2 utilities"
.LC22:
	.string	"sha256sum"
.LC23:
	.string	"sha384sum"
.LC24:
	.string	"sha512sum"
.LC25:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC27:
	.string	"GNU coreutils"
.LC28:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC30:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL48:
.LFB139:
	.loc 1 182 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 182 1 is_stmt 0 view .LVU120
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 184 5 view .LVU121
	movl	$5, %edx
	.loc 1 182 1 view .LVU122
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$136, %rsp
	.cfi_def_cfa_offset 176
	movq	program_name(%rip), %r12
	.loc 1 182 1 view .LVU123
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 183 3 is_stmt 1 view .LVU124
	.loc 1 183 6 is_stmt 0 view .LVU125
	testl	%edi, %edi
	je	.L46
	.loc 1 184 5 is_stmt 1 view .LVU126
	.loc 1 184 5 view .LVU127
	leaq	.LC6(%rip), %rsi
	xorl	%edi, %edi
.LVL49:
	.loc 1 184 5 is_stmt 0 view .LVU128
	call	dcgettext@PLT
.LVL50:
.LBB97:
.LBB98:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 100 10 view .LVU129
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE98:
.LBE97:
	.loc 1 184 5 view .LVU130
	movq	%rax, %rdx
.LVL51:
.LBB100:
.LBI97:
	.loc 3 98 1 is_stmt 1 view .LVU131
.LBB99:
	.loc 3 100 3 view .LVU132
	.loc 3 100 10 is_stmt 0 view .LVU133
	xorl	%eax, %eax
.LVL52:
	.loc 3 100 10 view .LVU134
	call	__fprintf_chk@PLT
.LVL53:
.L47:
	.loc 3 100 10 view .LVU135
.LBE99:
.LBE100:
	.loc 1 215 3 is_stmt 1 view .LVU136
	movl	%ebp, %edi
	call	exit@PLT
.LVL54:
.L46:
	.loc 1 187 7 view .LVU137
	.loc 1 187 15 is_stmt 0 view .LVU138
	leaq	.LC7(%rip), %rsi
	xorl	%edi, %edi
.LVL55:
.LBB101:
.LBB102:
	.loc 2 636 67 view .LVU139
	leaq	.LC22(%rip), %rbx
.LBE102:
.LBE101:
	.loc 1 187 15 view .LVU140
	call	dcgettext@PLT
.LVL56:
.LBB128:
.LBB129:
	.loc 3 107 10 view .LVU141
	movq	%r12, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE129:
.LBE128:
	.loc 1 187 15 view .LVU142
	movq	%rax, %rsi
.LVL57:
.LBB131:
.LBI128:
	.loc 3 105 1 is_stmt 1 view .LVU143
.LBB130:
	.loc 3 107 3 view .LVU144
	.loc 3 107 10 is_stmt 0 view .LVU145
	xorl	%eax, %eax
.LVL58:
	.loc 3 107 10 view .LVU146
	call	__printf_chk@PLT
.LVL59:
	.loc 3 107 10 view .LVU147
.LBE130:
.LBE131:
	.loc 1 192 7 is_stmt 1 view .LVU148
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC8(%rip), %rsi
	call	dcgettext@PLT
.LVL60:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL61:
	.loc 1 197 7 view .LVU149
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC9(%rip), %rsi
	call	dcgettext@PLT
.LVL62:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL63:
	.loc 1 200 7 view .LVU150
	movl	$5, %edx
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	leaq	.LC10(%rip), %rsi
	call	dcgettext@PLT
.LVL64:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL65:
	.loc 1 203 7 view .LVU151
	leaq	.LC11(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL66:
	.loc 1 203 15 is_stmt 0 view .LVU152
	movl	$5, %edx
	leaq	.LC12(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 203 7 view .LVU153
	movq	%rax, %r12
	.loc 1 203 15 view .LVU154
	call	dcgettext@PLT
.LVL67:
.LBB132:
.LBB133:
	.loc 3 107 10 view .LVU155
	movq	%r12, %rdx
	movl	$1, %edi
.LBE133:
.LBE132:
	.loc 1 203 15 view .LVU156
	movq	%rax, %rsi
.LVL68:
.LBB135:
.LBI132:
	.loc 3 105 1 is_stmt 1 view .LVU157
.LBB134:
	.loc 3 107 3 view .LVU158
	.loc 3 107 10 is_stmt 0 view .LVU159
	xorl	%eax, %eax
.LVL69:
	.loc 3 107 10 view .LVU160
	call	__printf_chk@PLT
.LVL70:
	.loc 3 107 10 view .LVU161
.LBE134:
.LBE135:
	.loc 1 207 7 is_stmt 1 view .LVU162
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC13(%rip), %rsi
	call	dcgettext@PLT
.LVL71:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL72:
	.loc 1 208 7 view .LVU163
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC14(%rip), %rsi
	call	dcgettext@PLT
.LVL73:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL74:
	.loc 1 209 7 view .LVU164
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC15(%rip), %rsi
	call	dcgettext@PLT
.LVL75:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL76:
	.loc 1 213 7 view .LVU165
.LBB136:
.LBI101:
	.loc 2 634 1 view .LVU166
.LBB127:
	.loc 2 636 3 view .LVU167
	.loc 2 636 67 is_stmt 0 view .LVU168
	leaq	.LC16(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC23(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC17(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC18(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC19(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC20(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 2 646 3 is_stmt 1 view .LVU169
.LVL77:
	.loc 2 647 3 view .LVU170
	.loc 2 649 3 view .LVU171
	.loc 2 649 9 view .LVU172
	.loc 2 636 67 is_stmt 0 view .LVU173
	movq	%rax, 32(%rsp)
	leaq	.LC21(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC24(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC4(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 2 647 25 view .LVU174
	movq	%rsp, %rax
.LVL78:
	.p2align 4,,10
	.p2align 3
.L49:
	.loc 2 650 5 is_stmt 1 view .LVU175
	.loc 2 649 18 is_stmt 0 view .LVU176
	movq	16(%rax), %rdi
	.loc 2 650 13 view .LVU177
	addq	$16, %rax
.LVL79:
	.loc 2 649 9 is_stmt 1 view .LVU178
	testq	%rdi, %rdi
	je	.L48
	.loc 2 649 33 is_stmt 0 view .LVU179
	movl	$7, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 2 649 28 view .LVU180
	testb	%dl, %dl
	jne	.L49
.L48:
	.loc 2 652 3 is_stmt 1 view .LVU181
	.loc 2 652 15 is_stmt 0 view .LVU182
	movq	8(%rax), %r12
	.loc 2 655 11 view .LVU183
	movl	$5, %edx
	leaq	.LC25(%rip), %rsi
	xorl	%edi, %edi
	.loc 2 652 6 view .LVU184
	testq	%r12, %r12
	je	.L50
	.loc 2 653 5 is_stmt 1 view .LVU185
.LVL80:
	.loc 2 655 3 view .LVU186
	.loc 2 655 11 is_stmt 0 view .LVU187
	call	dcgettext@PLT
.LVL81:
.LBB103:
.LBB104:
	.loc 3 107 10 view .LVU188
	leaq	.LC26(%rip), %rcx
	movl	$1, %edi
	leaq	.LC27(%rip), %rdx
.LBE104:
.LBE103:
	.loc 2 655 11 view .LVU189
	movq	%rax, %rsi
.LVL82:
.LBB108:
.LBI103:
	.loc 3 105 1 is_stmt 1 view .LVU190
.LBB105:
	.loc 3 107 3 view .LVU191
	.loc 3 107 10 is_stmt 0 view .LVU192
	xorl	%eax, %eax
.LVL83:
	.loc 3 107 10 view .LVU193
	call	__printf_chk@PLT
.LVL84:
	.loc 3 107 10 view .LVU194
.LBE105:
.LBE108:
	.loc 2 659 3 is_stmt 1 view .LVU195
	.loc 2 659 29 is_stmt 0 view .LVU196
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL85:
	movq	%rax, %rdi
.LVL86:
	.loc 2 660 3 is_stmt 1 view .LVU197
	.loc 2 660 6 is_stmt 0 view .LVU198
	testq	%rax, %rax
	je	.L51
	.loc 2 660 22 view .LVU199
	movl	$3, %edx
	leaq	.LC28(%rip), %rsi
	call	strncmp@PLT
.LVL87:
	.loc 2 660 19 view .LVU200
	testl	%eax, %eax
	jne	.L54
.LVL88:
.L51:
	.loc 2 669 3 is_stmt 1 view .LVU201
	.loc 2 669 11 is_stmt 0 view .LVU202
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	call	dcgettext@PLT
.LVL89:
.LBB109:
.LBB110:
	.loc 3 107 10 view .LVU203
	leaq	.LC4(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	movl	$1, %edi
.LBE110:
.LBE109:
	.loc 2 669 11 view .LVU204
	movq	%rax, %rsi
.LVL90:
.LBB116:
.LBI109:
	.loc 3 105 1 is_stmt 1 view .LVU205
.LBB111:
	.loc 3 107 3 view .LVU206
	.loc 3 107 10 is_stmt 0 view .LVU207
	xorl	%eax, %eax
.LVL91:
	.loc 3 107 10 view .LVU208
.LBE111:
.LBE116:
	.loc 2 671 3 view .LVU209
	leaq	.LC5(%rip), %r13
.LBB117:
.LBB112:
	.loc 3 107 10 view .LVU210
	call	__printf_chk@PLT
.LVL92:
	.loc 3 107 10 view .LVU211
.LBE112:
.LBE117:
	.loc 2 671 3 is_stmt 1 view .LVU212
	cmpq	%rbx, %r12
	leaq	.LC1(%rip), %rcx
	cmovne	%rcx, %r13
.L52:
	.loc 2 671 11 is_stmt 0 view .LVU213
	xorl	%edi, %edi
	leaq	.LC31(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL93:
.LBB118:
.LBB119:
	.loc 3 107 10 view .LVU214
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE119:
.LBE118:
	.loc 2 671 11 view .LVU215
	movq	%rax, %rsi
.LVL94:
.LBB121:
.LBI118:
	.loc 3 105 1 is_stmt 1 view .LVU216
.LBB120:
	.loc 3 107 3 view .LVU217
	.loc 3 107 10 is_stmt 0 view .LVU218
	xorl	%eax, %eax
.LVL95:
	.loc 3 107 10 view .LVU219
	call	__printf_chk@PLT
.LVL96:
	.loc 3 107 10 view .LVU220
.LBE120:
.LBE121:
	.loc 2 673 1 view .LVU221
	jmp	.L47
.LVL97:
.L50:
	.loc 2 655 3 is_stmt 1 view .LVU222
	.loc 2 655 11 is_stmt 0 view .LVU223
	call	dcgettext@PLT
.LVL98:
.LBB122:
.LBB106:
	.loc 3 107 10 view .LVU224
	leaq	.LC26(%rip), %rcx
	movl	$1, %edi
	leaq	.LC27(%rip), %rdx
.LBE106:
.LBE122:
	.loc 2 655 11 view .LVU225
	movq	%rax, %rsi
.LVL99:
.LBB123:
	.loc 3 105 1 is_stmt 1 view .LVU226
.LBB107:
	.loc 3 107 3 view .LVU227
	.loc 3 107 10 is_stmt 0 view .LVU228
	xorl	%eax, %eax
.LVL100:
	.loc 3 107 10 view .LVU229
	call	__printf_chk@PLT
.LVL101:
	.loc 3 107 10 view .LVU230
.LBE107:
.LBE123:
	.loc 2 659 3 is_stmt 1 view .LVU231
	.loc 2 659 29 is_stmt 0 view .LVU232
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL102:
	movq	%rax, %rdi
.LVL103:
	.loc 2 660 3 is_stmt 1 view .LVU233
	.loc 2 660 6 is_stmt 0 view .LVU234
	testq	%rax, %rax
	je	.L53
	.loc 2 660 22 view .LVU235
	movl	$3, %edx
	leaq	.LC28(%rip), %rsi
	call	strncmp@PLT
.LVL104:
	.loc 2 660 19 view .LVU236
	testl	%eax, %eax
	jne	.L72
.L53:
	.loc 2 669 3 is_stmt 1 view .LVU237
	.loc 2 669 11 is_stmt 0 view .LVU238
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL105:
.LBB124:
.LBB113:
	.loc 3 107 10 view .LVU239
	leaq	.LC4(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	movl	$1, %edi
.LBE113:
.LBE124:
	.loc 2 669 11 view .LVU240
	movq	%rax, %rsi
.LVL106:
.LBB125:
	.loc 3 105 1 is_stmt 1 view .LVU241
.LBB114:
	.loc 3 107 3 view .LVU242
	.loc 3 107 10 is_stmt 0 view .LVU243
	xorl	%eax, %eax
.LVL107:
	.loc 3 107 10 view .LVU244
.LBE114:
.LBE125:
	.loc 2 646 15 view .LVU245
	leaq	.LC4(%rip), %r12
.LBB126:
.LBB115:
	.loc 3 107 10 view .LVU246
	call	__printf_chk@PLT
.LVL108:
	.loc 3 107 10 view .LVU247
.LBE115:
.LBE126:
	.loc 2 671 3 is_stmt 1 view .LVU248
	leaq	.LC5(%rip), %r13
	jmp	.L52
.L72:
	.loc 2 646 15 is_stmt 0 view .LVU249
	leaq	.LC4(%rip), %r12
.LVL109:
.L54:
	.loc 2 666 7 is_stmt 1 view .LVU250
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	call	dcgettext@PLT
.LVL110:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL111:
	jmp	.L51
.LBE127:
.LBE136:
	.cfi_endproc
.LFE139:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC32:
	.string	"/bin/sh"
.LC33:
	.string	"/usr/local/share/locale"
.LC34:
	.string	"Roland McGrath"
.LC35:
	.string	"+"
.LC36:
	.string	"missing operand"
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"option --skip-chdir only permitted if NEWROOT is old %s"
	.align 8
.LC38:
	.string	"cannot change root directory to %s"
	.align 8
.LC39:
	.string	"cannot chdir to root directory"
	.section	.rodata.str1.1
.LC40:
	.string	"SHELL"
.LC41:
	.string	"-i"
.LC42:
	.string	"%s"
	.section	.rodata.str1.8
	.align 8
.LC43:
	.string	"no group specified for unknown uid: %d"
	.align 8
.LC44:
	.string	"failed to get supplemental groups"
	.align 8
.LC45:
	.string	"failed to set supplemental groups"
	.section	.rodata.str1.1
.LC46:
	.string	"failed to set group-ID"
.LC47:
	.string	"failed to set user-ID"
.LC48:
	.string	"failed to run command %s"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL112:
.LFB140:
	.loc 1 220 1 view -0
	.cfi_startproc
	.loc 1 220 1 is_stmt 0 view .LVU252
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 226 15 view .LVU253
	xorl	%r14d, %r14d
	.loc 1 220 1 view .LVU254
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	.loc 1 224 9 view .LVU255
	xorl	%r13d, %r13d
	.loc 1 220 1 view .LVU256
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	.loc 1 227 8 view .LVU257
	xorl	%r12d, %r12d
	.loc 1 220 1 view .LVU258
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.loc 1 236 3 view .LVU259
	movq	(%rsi), %rdi
.LVL113:
	.loc 1 220 1 view .LVU260
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	.loc 1 221 3 is_stmt 1 view .LVU261
	.loc 1 224 3 view .LVU262
.LVL114:
	.loc 1 225 3 view .LVU263
	.loc 1 226 3 view .LVU264
	.loc 1 227 3 view .LVU265
	.loc 1 230 3 view .LVU266
	.loc 1 230 9 is_stmt 0 view .LVU267
	movl	$-1, 24(%rsp)
	.loc 1 231 3 is_stmt 1 view .LVU268
	.loc 1 231 9 is_stmt 0 view .LVU269
	movl	$-1, 28(%rsp)
	.loc 1 232 3 is_stmt 1 view .LVU270
	.loc 1 232 16 is_stmt 0 view .LVU271
	movq	$0, 32(%rsp)
	.loc 1 233 3 is_stmt 1 view .LVU272
	.loc 1 233 10 is_stmt 0 view .LVU273
	movq	$0, 40(%rsp)
	.loc 1 235 33 is_stmt 1 view .LVU274
	.loc 1 236 3 view .LVU275
	call	set_program_name@PLT
.LVL115:
	.loc 1 237 3 view .LVU276
	leaq	.LC1(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL116:
	.loc 1 238 3 view .LVU277
	leaq	.LC33(%rip), %rsi
	leaq	.LC18(%rip), %rdi
	call	bindtextdomain@PLT
.LVL117:
	.loc 1 239 3 view .LVU278
	leaq	.LC18(%rip), %rdi
	call	textdomain@PLT
.LVL118:
	.loc 1 241 3 view .LVU279
.LBB158:
.LBI158:
	.loc 2 99 1 view .LVU280
.LBB159:
	.loc 2 101 3 view .LVU281
	.loc 2 102 5 view .LVU282
.LBE159:
.LBE158:
	.loc 1 242 3 is_stmt 0 view .LVU283
	movq	close_stdout@GOTPCREL(%rip), %rdi
.LBB161:
.LBB160:
	.loc 2 102 18 view .LVU284
	movl	$125, exit_failure(%rip)
.LVL119:
	.loc 2 102 18 view .LVU285
.LBE160:
.LBE161:
	.loc 1 242 3 is_stmt 1 view .LVU286
	call	atexit@PLT
.LVL120:
	.loc 1 244 3 view .LVU287
	.p2align 4,,10
	.p2align 3
.L74:
	.loc 1 244 9 view .LVU288
	.loc 1 244 15 is_stmt 0 view .LVU289
	xorl	%r8d, %r8d
	leaq	long_opts(%rip), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	leaq	.LC35(%rip), %rdx
	call	getopt_long@PLT
.LVL121:
	.loc 1 244 9 view .LVU290
	cmpl	$-1, %eax
	je	.L187
	.loc 1 246 7 is_stmt 1 view .LVU291
	cmpl	$256, %eax
	je	.L75
	jle	.L188
	cmpl	$257, %eax
	jne	.L189
.LBB162:
	.loc 1 250 13 view .LVU292
	.loc 1 250 22 is_stmt 0 view .LVU293
	movq	optarg(%rip), %r13
.LVL122:
	.loc 1 254 13 is_stmt 1 view .LVU294
	.loc 1 254 30 is_stmt 0 view .LVU295
	movq	%r13, %rdi
	call	strlen@PLT
.LVL123:
	.loc 1 255 13 is_stmt 1 view .LVU296
	.loc 1 255 16 is_stmt 0 view .LVU297
	testq	%rax, %rax
	je	.L74
	.loc 1 255 36 discriminator 1 view .LVU298
	leaq	-1(%r13,%rax), %rax
.LVL124:
	.loc 1 255 25 discriminator 1 view .LVU299
	cmpb	$58, (%rax)
	jne	.L74
	.loc 1 256 15 is_stmt 1 view .LVU300
	.loc 1 256 37 is_stmt 0 view .LVU301
	movb	$0, (%rax)
	jmp	.L74
.LVL125:
	.p2align 4,,10
	.p2align 3
.L188:
	.loc 1 256 37 view .LVU302
.LBE162:
	.loc 1 246 7 view .LVU303
	cmpl	$-131, %eax
	jne	.L190
	.loc 1 268 9 is_stmt 1 view .LVU304
	.loc 1 268 30 view .LVU305
	.loc 1 270 9 view .LVU306
	movq	stdout(%rip), %rdi
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
.LVL126:
	.loc 1 270 9 is_stmt 0 view .LVU307
	xorl	%r9d, %r9d
	leaq	.LC34(%rip), %r8
	leaq	.LC27(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	call	version_etc@PLT
.LVL127:
	.loc 1 270 9 is_stmt 1 view .LVU308
	xorl	%edi, %edi
	call	exit@PLT
.LVL128:
	.p2align 4,,10
	.p2align 3
.L189:
	.loc 1 246 7 is_stmt 0 view .LVU309
	cmpl	$258, %eax
	jne	.L186
	movl	$1, %r12d
.LVL129:
	.loc 1 246 7 view .LVU310
	jmp	.L74
.LVL130:
.L190:
	.loc 1 246 7 view .LVU311
	cmpl	$-130, %eax
	jne	.L186
	.loc 1 268 9 is_stmt 1 view .LVU312
	xorl	%edi, %edi
	call	usage
.LVL131:
	.p2align 4,,10
	.p2align 3
.L75:
	.loc 1 261 11 view .LVU313
	.loc 1 261 18 is_stmt 0 view .LVU314
	movq	optarg(%rip), %r14
.LVL132:
	.loc 1 262 11 is_stmt 1 view .LVU315
	jmp	.L74
.L187:
	.loc 1 277 3 view .LVU316
	.loc 1 277 12 is_stmt 0 view .LVU317
	movslq	optind(%rip), %rax
.LVL133:
	.loc 1 277 6 view .LVU318
	cmpl	%ebp, %eax
	jge	.L191
	.loc 1 283 3 is_stmt 1 view .LVU319
	.loc 1 283 15 is_stmt 0 view .LVU320
	movq	(%rbx,%rax,8), %r15
.LVL134:
	.loc 1 284 3 is_stmt 1 view .LVU321
.LBB163:
.LBI163:
	.loc 1 172 1 view .LVU322
.LBB164:
	.loc 1 174 3 view .LVU323
	.loc 1 174 20 is_stmt 0 view .LVU324
	movq	%r15, %rdi
	call	canonicalize_file_name@PLT
.LVL135:
	movq	%rax, %r8
.LVL136:
	.loc 1 175 3 is_stmt 1 view .LVU325
	.loc 1 175 31 is_stmt 0 view .LVU326
	testq	%rax, %rax
	je	.L84
	.loc 1 175 34 view .LVU327
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	movq	%rax, 8(%rsp)
	call	strcmp@PLT
.LVL137:
	.loc 1 175 31 view .LVU328
	movq	8(%rsp), %r8
	testl	%eax, %eax
	jne	.L84
.LVL138:
	.loc 1 176 3 is_stmt 1 view .LVU329
	movq	%r8, %rdi
	call	free@PLT
.LVL139:
	.loc 1 177 3 view .LVU330
	.loc 1 177 3 is_stmt 0 view .LVU331
.LBE164:
.LBE163:
	.loc 1 286 3 is_stmt 1 view .LVU332
	.loc 1 330 3 view .LVU333
	.loc 1 330 7 is_stmt 0 view .LVU334
	movq	%r15, %rdi
	call	chroot@PLT
.LVL140:
	.loc 1 330 6 view .LVU335
	testl	%eax, %eax
	jne	.L120
	.loc 1 334 3 is_stmt 1 view .LVU336
	.loc 1 225 15 is_stmt 0 view .LVU337
	movq	$0, 8(%rsp)
	.loc 1 334 6 view .LVU338
	testb	%r12b, %r12b
	je	.L124
.LVL141:
.L95:
	.loc 1 337 3 is_stmt 1 view .LVU339
	.loc 1 337 22 is_stmt 0 view .LVU340
	movslq	optind(%rip), %rax
	leal	1(%rax), %edx
	.loc 1 337 6 view .LVU341
	cmpl	%ebp, %edx
	je	.L192
	.loc 1 350 7 is_stmt 1 view .LVU342
	.loc 1 350 12 is_stmt 0 view .LVU343
	leaq	8(%rbx,%rax,8), %rbx
.LVL142:
.L98:
	.loc 1 355 3 is_stmt 1 view .LVU344
	.loc 1 355 6 is_stmt 0 view .LVU345
	testq	%r13, %r13
	je	.L99
.LBB166:
	.loc 1 357 7 is_stmt 1 view .LVU346
	.loc 1 357 25 is_stmt 0 view .LVU347
	leaq	28(%rsp), %rdx
	leaq	24(%rsp), %rsi
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	call	parse_user_spec@PLT
.LVL143:
	movq	%rax, %r12
.LVL144:
	.loc 1 359 7 is_stmt 1 view .LVU348
	.loc 1 359 10 is_stmt 0 view .LVU349
	testq	%rax, %rax
	je	.L99
	.loc 1 359 18 discriminator 1 view .LVU350
	movl	24(%rsp), %edi
.LVL145:
	.loc 1 359 18 discriminator 1 view .LVU351
.LBE166:
	.loc 1 45 44 is_stmt 1 discriminator 1 view .LVU352
.LBB168:
	.loc 1 359 15 is_stmt 0 discriminator 1 view .LVU353
	cmpl	$-1, %edi
	jne	.L100
.LVL146:
	.loc 1 359 15 discriminator 1 view .LVU354
.LBE168:
	.loc 1 46 44 is_stmt 1 discriminator 2 view .LVU355
.LBB169:
	.loc 1 359 34 is_stmt 0 discriminator 2 view .LVU356
	cmpl	$-1, 28(%rsp)
	jne	.L101
.LBB167:
	.loc 1 360 9 is_stmt 1 view .LVU357
	call	__errno_location@PLT
.LVL147:
	.loc 1 360 9 is_stmt 0 view .LVU358
	movq	%r12, %rcx
	movl	$125, %edi
	leaq	.LC42(%rip), %rdx
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL148:
.L84:
	.loc 1 360 9 view .LVU359
.LBE167:
.LBE169:
.LBB170:
.LBB165:
	.loc 1 176 3 is_stmt 1 view .LVU360
	movq	%r8, %rdi
	call	free@PLT
.LVL149:
	.loc 1 177 3 view .LVU361
	.loc 1 177 3 is_stmt 0 view .LVU362
.LBE165:
.LBE170:
	.loc 1 286 3 is_stmt 1 view .LVU363
	.loc 1 286 6 is_stmt 0 view .LVU364
	testb	%r12b, %r12b
	jne	.L193
	.loc 1 301 7 is_stmt 1 view .LVU365
	.loc 1 301 10 is_stmt 0 view .LVU366
	testq	%r13, %r13
	je	.L86
	.loc 1 302 9 is_stmt 1 view .LVU367
.LBB171:
	.loc 1 302 9 view .LVU368
	leaq	28(%rsp), %rdx
	leaq	24(%rsp), %rsi
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	call	parse_user_spec@PLT
.LVL150:
.L86:
	.loc 1 302 9 discriminator 1 view .LVU369
.LBE171:
	.loc 1 306 7 discriminator 1 view .LVU370
	.loc 1 306 11 is_stmt 0 discriminator 1 view .LVU371
	movl	24(%rsp), %edi
.LVL151:
	.loc 1 45 44 is_stmt 1 discriminator 1 view .LVU372
	.loc 1 306 10 is_stmt 0 discriminator 1 view .LVU373
	cmpl	$-1, %edi
	je	.L127
	.loc 1 306 25 discriminator 1 view .LVU374
	testq	%r14, %r14
	je	.L88
.LVL152:
	.loc 1 46 44 is_stmt 1 discriminator 2 view .LVU375
	.loc 1 306 38 is_stmt 0 discriminator 2 view .LVU376
	cmpl	$-1, 28(%rsp)
	je	.L89
.L119:
	.loc 1 225 15 view .LVU377
	movq	$0, 8(%rsp)
.LVL153:
.L90:
	.loc 1 317 18 discriminator 1 view .LVU378
	cmpb	$0, (%r14)
	jne	.L194
.L93:
	.loc 1 330 3 is_stmt 1 view .LVU379
	.loc 1 330 7 is_stmt 0 view .LVU380
	movq	%r15, %rdi
	call	chroot@PLT
.LVL154:
	.loc 1 330 6 view .LVU381
	testl	%eax, %eax
	jne	.L120
.LVL155:
.L124:
	.loc 1 334 23 discriminator 1 view .LVU382
	leaq	.LC11(%rip), %rdi
	call	chdir@PLT
.LVL156:
	.loc 1 334 20 discriminator 1 view .LVU383
	testl	%eax, %eax
	je	.L95
.LBB172:
	.loc 1 335 5 is_stmt 1 view .LVU384
	movl	$5, %edx
	leaq	.LC39(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL157:
	movq	%rax, %r12
.LVL158:
	.loc 1 335 5 is_stmt 0 view .LVU385
	call	__errno_location@PLT
.LVL159:
	movq	%r12, %rdx
	movl	$125, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL160:
.L99:
	.loc 1 335 5 view .LVU386
.LBE172:
	.loc 1 365 3 is_stmt 1 view .LVU387
	.loc 1 365 7 is_stmt 0 view .LVU388
	movl	24(%rsp), %edi
.LVL161:
	.loc 1 45 44 is_stmt 1 view .LVU389
	.loc 1 365 6 is_stmt 0 view .LVU390
	cmpl	$-1, %edi
	je	.L101
.L100:
	.loc 1 365 21 discriminator 1 view .LVU391
	testq	%r14, %r14
	je	.L102
.LVL162:
	.loc 1 46 44 is_stmt 1 discriminator 2 view .LVU392
	.loc 1 365 34 is_stmt 0 discriminator 2 view .LVU393
	cmpl	$-1, 28(%rsp)
	je	.L102
	.loc 1 381 3 is_stmt 1 view .LVU394
	.loc 1 382 16 is_stmt 0 view .LVU395
	movq	$0, 48(%rsp)
	.loc 1 381 16 view .LVU396
	movq	32(%rsp), %rbp
.LVL163:
	.loc 1 382 3 is_stmt 1 view .LVU397
	.loc 1 383 3 view .LVU398
.L116:
	.loc 1 383 14 is_stmt 0 discriminator 1 view .LVU399
	cmpb	$0, (%r14)
	jne	.L195
.L107:
.LVL164:
	.loc 1 413 36 discriminator 3 view .LVU400
	movq	40(%rsp), %rdi
	movq	%rbp, %rsi
	call	setgroups@PLT
.LVL165:
	.loc 1 413 33 discriminator 3 view .LVU401
	testl	%eax, %eax
	jne	.L196
.L112:
	.loc 1 416 3 is_stmt 1 view .LVU402
	movq	48(%rsp), %rdi
	call	free@PLT
.LVL166:
	.loc 1 417 3 view .LVU403
	movq	32(%rsp), %rdi
	call	free@PLT
.LVL167:
	.loc 1 419 3 view .LVU404
	.loc 1 419 7 is_stmt 0 view .LVU405
	movl	28(%rsp), %r12d
.LVL168:
	.loc 1 46 44 is_stmt 1 view .LVU406
	.loc 1 46 44 is_stmt 0 view .LVU407
	call	__errno_location@PLT
.LVL169:
	movq	%rax, %rbp
	.loc 1 419 6 view .LVU408
	cmpl	$-1, %r12d
	jne	.L197
.L113:
	.loc 1 422 3 is_stmt 1 view .LVU409
	.loc 1 422 7 is_stmt 0 view .LVU410
	movl	24(%rsp), %edi
.LVL170:
	.loc 1 45 44 is_stmt 1 view .LVU411
	.loc 1 422 6 is_stmt 0 view .LVU412
	cmpl	$-1, %edi
	je	.L114
	.loc 1 422 24 discriminator 1 view .LVU413
	call	setuid@PLT
.LVL171:
	.loc 1 422 21 discriminator 1 view .LVU414
	testl	%eax, %eax
	jne	.L198
.L114:
	.loc 1 426 3 is_stmt 1 view .LVU415
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	.loc 1 428 51 is_stmt 0 view .LVU416
	xorl	%r12d, %r12d
	.loc 1 426 3 view .LVU417
	call	execvp@PLT
.LVL172:
	.loc 1 428 3 is_stmt 1 view .LVU418
	.loc 1 429 3 is_stmt 0 view .LVU419
	movq	(%rbx), %rdi
	.loc 1 428 51 view .LVU420
	cmpl	$2, 0(%rbp)
	sete	%r12b
	.loc 1 429 3 view .LVU421
	call	quote@PLT
.LVL173:
	.loc 1 429 20 view .LVU422
	movl	$5, %edx
	xorl	%edi, %edi
	.loc 1 428 51 view .LVU423
	addl	$126, %r12d
.LVL174:
	.loc 1 429 3 is_stmt 1 view .LVU424
	.loc 1 429 20 is_stmt 0 view .LVU425
	leaq	.LC48(%rip), %rsi
	.loc 1 429 3 view .LVU426
	movq	%rax, %r13
.LVL175:
	.loc 1 429 20 view .LVU427
	call	dcgettext@PLT
.LVL176:
	.loc 1 429 3 view .LVU428
	movl	0(%rbp), %esi
	movq	%r13, %rcx
	xorl	%edi, %edi
	.loc 1 429 20 view .LVU429
	movq	%rax, %rdx
	.loc 1 429 3 view .LVU430
	xorl	%eax, %eax
	call	error@PLT
.LVL177:
	.loc 1 430 3 is_stmt 1 view .LVU431
.L73:
	.loc 1 431 1 is_stmt 0 view .LVU432
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L199
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL178:
	.loc 1 431 1 view .LVU433
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL179:
	.loc 1 431 1 view .LVU434
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL180:
	.loc 1 431 1 view .LVU435
	ret
.LVL181:
.L102:
	.cfi_restore_state
.LBB173:
	.loc 1 367 7 is_stmt 1 view .LVU436
	.loc 1 368 7 view .LVU437
	.loc 1 368 18 is_stmt 0 view .LVU438
	call	getpwuid@PLT
.LVL182:
	.loc 1 368 10 view .LVU439
	testq	%rax, %rax
	je	.L104
	.loc 1 370 11 is_stmt 1 view .LVU440
.LVL183:
	.loc 1 370 11 is_stmt 0 view .LVU441
.LBE173:
	.loc 1 46 44 is_stmt 1 view .LVU442
.LBB175:
	.loc 1 370 14 is_stmt 0 view .LVU443
	cmpl	$-1, 28(%rsp)
	jne	.L105
	.loc 1 371 13 is_stmt 1 view .LVU444
	.loc 1 371 17 is_stmt 0 view .LVU445
	movl	20(%rax), %edx
	movl	%edx, 28(%rsp)
.L105:
	.loc 1 372 11 is_stmt 1 view .LVU446
	.loc 1 372 20 is_stmt 0 view .LVU447
	movq	(%rax), %rax
.LVL184:
	.loc 1 372 20 view .LVU448
	movq	%rax, 8(%rsp)
.LVL185:
.L101:
	.loc 1 372 20 view .LVU449
.LBE175:
	.loc 1 381 3 is_stmt 1 view .LVU450
	.loc 1 382 16 is_stmt 0 view .LVU451
	movq	$0, 48(%rsp)
	.loc 1 381 16 view .LVU452
	movq	32(%rsp), %rbp
.LVL186:
	.loc 1 382 3 is_stmt 1 view .LVU453
	.loc 1 383 3 view .LVU454
	.loc 1 383 6 is_stmt 0 view .LVU455
	testq	%r14, %r14
	jne	.L116
	.loc 1 395 8 is_stmt 1 discriminator 1 view .LVU456
	.loc 1 395 38 is_stmt 0 discriminator 1 view .LVU457
	movq	8(%rsp), %rdi
	.loc 1 395 24 discriminator 1 view .LVU458
	movl	28(%rsp), %esi
.LVL187:
	.loc 1 46 44 is_stmt 1 discriminator 1 view .LVU459
	.loc 1 395 38 is_stmt 0 discriminator 1 view .LVU460
	testq	%rdi, %rdi
	je	.L110
	cmpl	$-1, %esi
	je	.L110
.LBB176:
	.loc 1 397 7 is_stmt 1 view .LVU461
	.loc 1 397 21 is_stmt 0 view .LVU462
	leaq	48(%rsp), %rdx
	call	xgetgroups@PLT
.LVL188:
	.loc 1 398 7 is_stmt 1 view .LVU463
	.loc 1 398 10 is_stmt 0 view .LVU464
	testl	%eax, %eax
	jle	.L200
	.loc 1 407 11 is_stmt 1 view .LVU465
	.loc 1 407 18 is_stmt 0 view .LVU466
	cltq
	.loc 1 408 16 view .LVU467
	movq	48(%rsp), %rbp
.LVL189:
	.loc 1 407 18 view .LVU468
	movq	%rax, 40(%rsp)
	.loc 1 408 11 is_stmt 1 view .LVU469
.LVL190:
.L110:
	.loc 1 408 11 is_stmt 0 view .LVU470
.LBE176:
	.loc 1 413 3 is_stmt 1 view .LVU471
	.loc 1 45 44 view .LVU472
	.loc 1 413 6 is_stmt 0 view .LVU473
	cmpl	$-1, 24(%rsp)
	je	.L112
	.loc 1 413 6 view .LVU474
	jmp	.L107
.L195:
	.loc 1 385 7 is_stmt 1 view .LVU475
	.loc 1 385 11 is_stmt 0 view .LVU476
	xorl	%ecx, %ecx
	cmpq	$0, 40(%rsp)
	leaq	40(%rsp), %rdx
	movq	%r14, %rdi
	sete	%cl
	leaq	48(%rsp), %rsi
	call	parse_additional_groups
.LVL191:
	.loc 1 385 10 view .LVU477
	testl	%eax, %eax
	je	.L108
	.loc 1 387 11 is_stmt 1 view .LVU478
	.loc 1 387 14 is_stmt 0 view .LVU479
	cmpq	$0, 40(%rsp)
	jne	.L107
	.loc 1 388 20 view .LVU480
	movl	$125, %r12d
	jmp	.L73
.LVL192:
.L127:
	.loc 1 225 15 view .LVU481
	movq	$0, 8(%rsp)
.LVL193:
.L87:
	.loc 1 317 7 is_stmt 1 view .LVU482
	.loc 1 317 10 is_stmt 0 view .LVU483
	testq	%r14, %r14
	jne	.L90
	.loc 1 321 12 is_stmt 1 view .LVU484
	.loc 1 321 28 is_stmt 0 view .LVU485
	movl	28(%rsp), %esi
.LVL194:
	.loc 1 46 44 is_stmt 1 view .LVU486
	.loc 1 321 25 is_stmt 0 view .LVU487
	cmpl	$-1, %esi
	je	.L93
	.loc 1 321 42 discriminator 2 view .LVU488
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L94
.LBB178:
	.loc 1 323 11 is_stmt 1 view .LVU489
	.loc 1 323 25 is_stmt 0 view .LVU490
	leaq	32(%rsp), %rdx
	call	xgetgroups@PLT
.LVL195:
	.loc 1 324 11 is_stmt 1 view .LVU491
	.loc 1 324 14 is_stmt 0 view .LVU492
	testl	%eax, %eax
	jle	.L93
	.loc 1 325 13 is_stmt 1 view .LVU493
	.loc 1 325 20 is_stmt 0 view .LVU494
	cltq
	.loc 1 325 20 view .LVU495
	movq	%rax, 40(%rsp)
	jmp	.L93
.LVL196:
.L197:
	.loc 1 325 20 view .LVU496
.LBE178:
	.loc 1 419 24 discriminator 1 view .LVU497
	movl	%r12d, %edi
	call	setgid@PLT
.LVL197:
	.loc 1 419 21 discriminator 1 view .LVU498
	testl	%eax, %eax
	je	.L113
.LBB179:
	.loc 1 420 5 is_stmt 1 view .LVU499
	movl	$5, %edx
	leaq	.LC46(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL198:
	movl	0(%rbp), %esi
	movl	$125, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL199:
.L192:
	.loc 1 420 5 is_stmt 0 view .LVU500
.LBE179:
.LBB180:
	.loc 1 340 7 is_stmt 1 view .LVU501
	.loc 1 340 21 is_stmt 0 view .LVU502
	leaq	.LC40(%rip), %rdi
	call	getenv@PLT
.LVL200:
	.loc 1 341 7 is_stmt 1 view .LVU503
	.loc 1 341 10 is_stmt 0 view .LVU504
	testq	%rax, %rax
	je	.L201
.LVL201:
.L97:
	.loc 1 343 7 is_stmt 1 view .LVU505
	.loc 1 343 15 is_stmt 0 view .LVU506
	movq	%rax, (%rbx)
	.loc 1 344 7 is_stmt 1 view .LVU507
.LVL202:
	.loc 1 344 7 is_stmt 0 view .LVU508
.LBE180:
	.loc 2 700 3 is_stmt 1 view .LVU509
.LBB181:
	.loc 1 344 15 is_stmt 0 view .LVU510
	leaq	.LC41(%rip), %rax
.LVL203:
	.loc 1 344 15 view .LVU511
	movq	%rax, 8(%rbx)
	.loc 1 345 7 is_stmt 1 view .LVU512
	.loc 1 345 15 is_stmt 0 view .LVU513
	movq	$0, 16(%rbx)
.LBE181:
	jmp	.L98
.LVL204:
.L120:
.LBB182:
	.loc 1 331 5 is_stmt 1 view .LVU514
	movq	%r15, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL205:
	movl	$5, %edx
	leaq	.LC38(%rip), %rsi
	xorl	%edi, %edi
	movq	%rax, %r13
.LVL206:
	.loc 1 331 5 is_stmt 0 view .LVU515
	call	dcgettext@PLT
.LVL207:
	movq	%rax, %r12
.LVL208:
	.loc 1 331 5 view .LVU516
	call	__errno_location@PLT
.LVL209:
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$125, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL210:
.L108:
	.loc 1 331 5 view .LVU517
.LBE182:
	.loc 1 392 9 is_stmt 1 view .LVU518
	.loc 1 392 14 is_stmt 0 view .LVU519
	movq	48(%rsp), %rbp
.LVL211:
	.loc 1 392 14 view .LVU520
	jmp	.L107
.LVL212:
.L194:
	.loc 1 318 9 is_stmt 1 view .LVU521
.LBB183:
	.loc 1 318 9 view .LVU522
	leaq	40(%rsp), %rdx
	leaq	32(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	call	parse_additional_groups
.LVL213:
	.loc 1 318 9 view .LVU523
.LBE183:
	jmp	.L93
.LVL214:
.L104:
.LBB184:
	.loc 1 374 12 view .LVU524
	.loc 1 374 12 is_stmt 0 view .LVU525
.LBE184:
	.loc 1 46 44 is_stmt 1 view .LVU526
.LBB185:
	.loc 1 374 15 is_stmt 0 view .LVU527
	cmpl	$-1, 28(%rsp)
	jne	.L101
.LBB174:
	.loc 1 376 11 is_stmt 1 view .LVU528
	movl	$5, %edx
	leaq	.LC43(%rip), %rsi
	xorl	%edi, %edi
	movl	24(%rsp), %r13d
.LVL215:
	.loc 1 376 11 is_stmt 0 view .LVU529
	call	dcgettext@PLT
.LVL216:
	.loc 1 376 11 view .LVU530
	movq	%rax, %r12
	call	__errno_location@PLT
.LVL217:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$125, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL218:
.L89:
	.loc 1 376 11 view .LVU531
.LBE174:
.LBE185:
.LBB186:
	.loc 1 308 11 is_stmt 1 view .LVU532
	.loc 1 309 11 view .LVU533
	.loc 1 309 22 is_stmt 0 view .LVU534
	call	getpwuid@PLT
.LVL219:
	movq	%rax, 8(%rsp)
.LVL220:
	.loc 1 309 14 view .LVU535
	testq	%rax, %rax
	je	.L119
.L117:
	.loc 1 311 15 is_stmt 1 view .LVU536
.LVL221:
	.loc 1 311 15 is_stmt 0 view .LVU537
.LBE186:
	.loc 1 46 44 is_stmt 1 view .LVU538
.LBB187:
	.loc 1 311 18 is_stmt 0 view .LVU539
	cmpl	$-1, 28(%rsp)
	jne	.L91
	.loc 1 312 17 is_stmt 1 view .LVU540
	.loc 1 312 21 is_stmt 0 view .LVU541
	movq	8(%rsp), %rax
.LVL222:
	.loc 1 312 21 view .LVU542
	movl	20(%rax), %eax
	movl	%eax, 28(%rsp)
.L91:
	.loc 1 313 15 is_stmt 1 view .LVU543
.LVL223:
	.loc 1 313 24 is_stmt 0 view .LVU544
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
.LVL224:
	.loc 1 313 24 view .LVU545
	jmp	.L87
.LVL225:
.L201:
	.loc 1 313 24 view .LVU546
.LBE187:
.LBB188:
	.loc 1 342 17 view .LVU547
	leaq	.LC32(%rip), %rax
.LVL226:
	.loc 1 342 17 view .LVU548
	jmp	.L97
.LVL227:
.L88:
	.loc 1 342 17 view .LVU549
.LBE188:
.LBB189:
	.loc 1 308 11 is_stmt 1 view .LVU550
	.loc 1 309 11 view .LVU551
	.loc 1 309 22 is_stmt 0 view .LVU552
	call	getpwuid@PLT
.LVL228:
	movq	%rax, 8(%rsp)
.LVL229:
	.loc 1 309 14 view .LVU553
	testq	%rax, %rax
	jne	.L117
	.loc 1 309 14 view .LVU554
.LBE189:
	.loc 1 321 12 is_stmt 1 view .LVU555
.LVL230:
	.loc 1 46 44 view .LVU556
	.loc 1 321 25 is_stmt 0 view .LVU557
	cmpl	$-1, 28(%rsp)
	je	.L93
.LVL231:
.L94:
	.loc 1 388 20 view .LVU558
	movq	$0, 8(%rsp)
	jmp	.L93
.LVL232:
.L200:
.LBB190:
	.loc 1 400 11 is_stmt 1 view .LVU559
	.loc 1 400 14 is_stmt 0 view .LVU560
	cmpq	$0, 40(%rsp)
	jne	.L110
.LBB177:
	.loc 1 401 13 is_stmt 1 view .LVU561
	movl	$5, %edx
	leaq	.LC44(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL233:
	.loc 1 401 13 is_stmt 0 view .LVU562
	movq	%rax, %r12
	call	__errno_location@PLT
.LVL234:
	movq	%r12, %rdx
	movl	$125, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL235:
.L191:
	.loc 1 401 13 view .LVU563
.LBE177:
.LBE190:
	.loc 1 279 7 is_stmt 1 view .LVU564
	.loc 1 279 20 is_stmt 0 view .LVU565
	movl	$5, %edx
	leaq	.LC36(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL236:
	.loc 1 279 7 view .LVU566
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 279 20 view .LVU567
	movq	%rax, %rdx
	.loc 1 279 7 view .LVU568
	xorl	%eax, %eax
	call	error@PLT
.LVL237:
.L186:
	.loc 1 280 7 is_stmt 1 view .LVU569
	movl	$125, %edi
	call	usage
.LVL238:
.L196:
.LBB191:
	.loc 1 414 5 view .LVU570
	movl	$5, %edx
	leaq	.LC45(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL239:
	movq	%rax, %r12
	call	__errno_location@PLT
.LVL240:
	movq	%r12, %rdx
	movl	$125, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL241:
.L193:
	.loc 1 414 5 is_stmt 0 view .LVU571
.LBE191:
	.loc 1 288 7 is_stmt 1 view .LVU572
	leaq	.LC11(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL242:
	.loc 1 288 20 is_stmt 0 view .LVU573
	movl	$5, %edx
	leaq	.LC37(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 288 7 view .LVU574
	movq	%rax, %r12
.LVL243:
	.loc 1 288 20 view .LVU575
	call	dcgettext@PLT
.LVL244:
	.loc 1 288 7 view .LVU576
	xorl	%edi, %edi
	movq	%r12, %rcx
	xorl	%esi, %esi
	.loc 1 288 20 view .LVU577
	movq	%rax, %rdx
	.loc 1 288 7 view .LVU578
	xorl	%eax, %eax
	call	error@PLT
.LVL245:
	.loc 1 290 7 is_stmt 1 view .LVU579
	movl	$125, %edi
	call	usage
.LVL246:
.L199:
	.loc 1 431 1 is_stmt 0 view .LVU580
	call	__stack_chk_fail@PLT
.LVL247:
.L198:
.LBB192:
	.loc 1 423 5 is_stmt 1 view .LVU581
	movl	$5, %edx
	leaq	.LC47(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL248:
	movl	0(%rbp), %esi
	movl	$125, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL249:
.LBE192:
	.cfi_endproc
.LFE140:
	.size	main, .-main
	.section	.rodata.str1.1
.LC49:
	.string	"groups"
.LC50:
	.string	"userspec"
.LC51:
	.string	"skip-chdir"
.LC52:
	.string	"help"
.LC53:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_opts, @object
	.size	long_opts, 192
long_opts:
	.quad	.LC49
	.long	1
	.zero	4
	.quad	0
	.long	256
	.zero	4
	.quad	.LC50
	.long	1
	.zero	4
	.quad	0
	.long	257
	.zero	4
	.quad	.LC51
	.long	0
	.zero	4
	.quad	0
	.long	258
	.zero	4
	.quad	.LC52
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC53
	.long	0
	.zero	4
	.quad	0
	.long	-131
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.text
.Letext0:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 12 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 14 "./lib/sys/select.h"
	.file 15 "/usr/include/pwd.h"
	.file 16 "/usr/include/grp.h"
	.file 17 "/usr/include/time.h"
	.file 18 "/usr/include/signal.h"
	.file 19 "/usr/include/unistd.h"
	.file 20 "/usr/include/errno.h"
	.file 21 "src/version.h"
	.file 22 "./lib/exitfail.h"
	.file 23 "/usr/include/stdint.h"
	.file 24 "./lib/timespec.h"
	.file 25 "/usr/include/ctype.h"
	.file 26 "./lib/xalloc-oversized.h"
	.file 27 "./lib/version-etc.h"
	.file 28 "./lib/progname.h"
	.file 29 "./lib/quotearg.h"
	.file 30 "./lib/error.h"
	.file 31 "./lib/quote.h"
	.file 32 "./lib/xstrtol.h"
	.file 33 "./lib/xalloc.h"
	.file 34 "/usr/include/string.h"
	.file 35 "./lib/userspec.h"
	.file 36 "./lib/mgetgroups.h"
	.file 37 "/usr/include/libintl.h"
	.file 38 "/usr/include/stdlib.h"
	.file 39 "/usr/include/locale.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2067
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF236
	.byte	0xc
	.long	.LASF237
	.long	.LASF238
	.long	.Ldebug_ranges0+0x3b0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x24
	.byte	0xe
	.long	0x35
	.uleb128 0x3
	.byte	0x8
	.long	0x3b
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x5
	.long	0x3b
	.uleb128 0x2
	.long	.LASF1
	.byte	0x4
	.byte	0x32
	.byte	0xc
	.long	0x53
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x53
	.uleb128 0x2
	.long	.LASF3
	.byte	0x4
	.byte	0x37
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF4
	.byte	0x4
	.byte	0x3b
	.byte	0xc
	.long	0x53
	.uleb128 0x8
	.long	.LASF23
	.byte	0x20
	.byte	0x5
	.byte	0x32
	.byte	0x8
	.long	0xb9
	.uleb128 0x9
	.long	.LASF5
	.byte	0x5
	.byte	0x34
	.byte	0xf
	.long	0xbe
	.byte	0
	.uleb128 0x9
	.long	.LASF6
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.long	0x53
	.byte	0x8
	.uleb128 0x9
	.long	.LASF7
	.byte	0x5
	.byte	0x38
	.byte	0x8
	.long	0xce
	.byte	0x10
	.uleb128 0xa
	.string	"val"
	.byte	0x5
	.byte	0x39
	.byte	0x7
	.long	0x53
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	0x77
	.uleb128 0x3
	.byte	0x8
	.long	0x42
	.uleb128 0x5
	.long	0xbe
	.uleb128 0xb
	.long	0xbe
	.uleb128 0x3
	.byte	0x8
	.long	0x53
	.uleb128 0xc
	.long	.LASF15
	.byte	0x6
	.byte	0xd1
	.byte	0x17
	.long	0xe0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0xd
	.byte	0x8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF13
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0xc
	.long	.LASF16
	.byte	0x7
	.byte	0x49
	.byte	0x1b
	.long	0xe0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x7
	.byte	0x92
	.byte	0x19
	.long	0xe7
	.uleb128 0xc
	.long	.LASF18
	.byte	0x7
	.byte	0x93
	.byte	0x19
	.long	0xe7
	.uleb128 0xc
	.long	.LASF19
	.byte	0x7
	.byte	0x98
	.byte	0x19
	.long	0x10c
	.uleb128 0xc
	.long	.LASF20
	.byte	0x7
	.byte	0x99
	.byte	0x1b
	.long	0x10c
	.uleb128 0xc
	.long	.LASF21
	.byte	0x7
	.byte	0xa0
	.byte	0x1a
	.long	0x10c
	.uleb128 0xc
	.long	.LASF22
	.byte	0x7
	.byte	0xce
	.byte	0x19
	.long	0x10c
	.uleb128 0x8
	.long	.LASF24
	.byte	0xd8
	.byte	0x8
	.byte	0x31
	.byte	0x8
	.long	0x2ee
	.uleb128 0x9
	.long	.LASF25
	.byte	0x8
	.byte	0x33
	.byte	0x7
	.long	0x53
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.long	0x35
	.byte	0x8
	.uleb128 0x9
	.long	.LASF27
	.byte	0x8
	.byte	0x37
	.byte	0x9
	.long	0x35
	.byte	0x10
	.uleb128 0x9
	.long	.LASF28
	.byte	0x8
	.byte	0x38
	.byte	0x9
	.long	0x35
	.byte	0x18
	.uleb128 0x9
	.long	.LASF29
	.byte	0x8
	.byte	0x39
	.byte	0x9
	.long	0x35
	.byte	0x20
	.uleb128 0x9
	.long	.LASF30
	.byte	0x8
	.byte	0x3a
	.byte	0x9
	.long	0x35
	.byte	0x28
	.uleb128 0x9
	.long	.LASF31
	.byte	0x8
	.byte	0x3b
	.byte	0x9
	.long	0x35
	.byte	0x30
	.uleb128 0x9
	.long	.LASF32
	.byte	0x8
	.byte	0x3c
	.byte	0x9
	.long	0x35
	.byte	0x38
	.uleb128 0x9
	.long	.LASF33
	.byte	0x8
	.byte	0x3d
	.byte	0x9
	.long	0x35
	.byte	0x40
	.uleb128 0x9
	.long	.LASF34
	.byte	0x8
	.byte	0x40
	.byte	0x9
	.long	0x35
	.byte	0x48
	.uleb128 0x9
	.long	.LASF35
	.byte	0x8
	.byte	0x41
	.byte	0x9
	.long	0x35
	.byte	0x50
	.uleb128 0x9
	.long	.LASF36
	.byte	0x8
	.byte	0x42
	.byte	0x9
	.long	0x35
	.byte	0x58
	.uleb128 0x9
	.long	.LASF37
	.byte	0x8
	.byte	0x44
	.byte	0x16
	.long	0x307
	.byte	0x60
	.uleb128 0x9
	.long	.LASF38
	.byte	0x8
	.byte	0x46
	.byte	0x14
	.long	0x30d
	.byte	0x68
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.byte	0x48
	.byte	0x7
	.long	0x53
	.byte	0x70
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.byte	0x49
	.byte	0x7
	.long	0x53
	.byte	0x74
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.byte	0x4a
	.byte	0xb
	.long	0x137
	.byte	0x78
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.byte	0x4d
	.byte	0x12
	.long	0xf7
	.byte	0x80
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0x4e
	.byte	0xf
	.long	0xfe
	.byte	0x82
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.long	0x313
	.byte	0x83
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x51
	.byte	0xf
	.long	0x323
	.byte	0x88
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x59
	.byte	0xd
	.long	0x143
	.byte	0x90
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x5b
	.byte	0x17
	.long	0x32e
	.byte	0x98
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x5c
	.byte	0x19
	.long	0x339
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x5d
	.byte	0x14
	.long	0x30d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF50
	.byte	0x8
	.byte	0x5e
	.byte	0x9
	.long	0xee
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x5f
	.byte	0xa
	.long	0xd4
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x60
	.byte	0x7
	.long	0x53
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.long	0x33f
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF54
	.byte	0x9
	.byte	0x7
	.byte	0x19
	.long	0x167
	.uleb128 0xe
	.long	.LASF239
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF55
	.uleb128 0x3
	.byte	0x8
	.long	0x302
	.uleb128 0x3
	.byte	0x8
	.long	0x167
	.uleb128 0x10
	.long	0x3b
	.long	0x323
	.uleb128 0x11
	.long	0xe0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2fa
	.uleb128 0xf
	.long	.LASF56
	.uleb128 0x3
	.byte	0x8
	.long	0x329
	.uleb128 0xf
	.long	.LASF57
	.uleb128 0x3
	.byte	0x8
	.long	0x334
	.uleb128 0x10
	.long	0x3b
	.long	0x34f
	.uleb128 0x11
	.long	0xe0
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0xa
	.byte	0x89
	.byte	0xe
	.long	0x35b
	.uleb128 0x3
	.byte	0x8
	.long	0x2ee
	.uleb128 0xb
	.long	0x35b
	.uleb128 0x2
	.long	.LASF59
	.byte	0xa
	.byte	0x8a
	.byte	0xe
	.long	0x35b
	.uleb128 0x2
	.long	.LASF60
	.byte	0xa
	.byte	0x8b
	.byte	0xe
	.long	0x35b
	.uleb128 0x2
	.long	.LASF61
	.byte	0xb
	.byte	0x1a
	.byte	0xc
	.long	0x53
	.uleb128 0x10
	.long	0xc4
	.long	0x395
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.long	0x38a
	.uleb128 0x2
	.long	.LASF62
	.byte	0xb
	.byte	0x1b
	.byte	0x1a
	.long	0x395
	.uleb128 0x2
	.long	.LASF63
	.byte	0xb
	.byte	0x1e
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF64
	.byte	0xb
	.byte	0x1f
	.byte	0x1a
	.long	0x395
	.uleb128 0xc
	.long	.LASF65
	.byte	0x6
	.byte	0x8f
	.byte	0x1a
	.long	0x10c
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF66
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF67
	.uleb128 0xc
	.long	.LASF68
	.byte	0xc
	.byte	0x40
	.byte	0x11
	.long	0x12b
	.uleb128 0xc
	.long	.LASF69
	.byte	0xc
	.byte	0x4f
	.byte	0x11
	.long	0x11f
	.uleb128 0xc
	.long	.LASF70
	.byte	0xd
	.byte	0x7
	.byte	0x12
	.long	0x14f
	.uleb128 0x13
	.long	.LASF71
	.byte	0xe
	.value	0x30c
	.byte	0x1
	.long	0x53
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF72
	.uleb128 0x8
	.long	.LASF73
	.byte	0x30
	.byte	0xf
	.byte	0x31
	.byte	0x8
	.long	0x479
	.uleb128 0x9
	.long	.LASF74
	.byte	0xf
	.byte	0x33
	.byte	0x9
	.long	0x35
	.byte	0
	.uleb128 0x9
	.long	.LASF75
	.byte	0xf
	.byte	0x34
	.byte	0x9
	.long	0x35
	.byte	0x8
	.uleb128 0x9
	.long	.LASF76
	.byte	0xf
	.byte	0x36
	.byte	0xb
	.long	0x11f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF77
	.byte	0xf
	.byte	0x37
	.byte	0xb
	.long	0x12b
	.byte	0x14
	.uleb128 0x9
	.long	.LASF78
	.byte	0xf
	.byte	0x38
	.byte	0x9
	.long	0x35
	.byte	0x18
	.uleb128 0x9
	.long	.LASF79
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.long	0x35
	.byte	0x20
	.uleb128 0x9
	.long	.LASF80
	.byte	0xf
	.byte	0x3a
	.byte	0x9
	.long	0x35
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	0x410
	.uleb128 0x8
	.long	.LASF81
	.byte	0x20
	.byte	0x10
	.byte	0x2a
	.byte	0x8
	.long	0x4c0
	.uleb128 0x9
	.long	.LASF82
	.byte	0x10
	.byte	0x2c
	.byte	0xb
	.long	0x35
	.byte	0
	.uleb128 0x9
	.long	.LASF83
	.byte	0x10
	.byte	0x2d
	.byte	0xb
	.long	0x35
	.byte	0x8
	.uleb128 0x9
	.long	.LASF84
	.byte	0x10
	.byte	0x2e
	.byte	0xd
	.long	0x12b
	.byte	0x10
	.uleb128 0x9
	.long	.LASF85
	.byte	0x10
	.byte	0x2f
	.byte	0xc
	.long	0x4c0
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x35
	.uleb128 0x10
	.long	0x35
	.long	0x4d6
	.uleb128 0x11
	.long	0xe0
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF86
	.byte	0x11
	.byte	0x9f
	.byte	0xe
	.long	0x4c6
	.uleb128 0x2
	.long	.LASF87
	.byte	0x11
	.byte	0xa0
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF88
	.byte	0x11
	.byte	0xa1
	.byte	0x11
	.long	0x10c
	.uleb128 0x2
	.long	.LASF89
	.byte	0x11
	.byte	0xa6
	.byte	0xe
	.long	0x4c6
	.uleb128 0x2
	.long	.LASF90
	.byte	0x11
	.byte	0xae
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF91
	.byte	0x11
	.byte	0xaf
	.byte	0x11
	.long	0x10c
	.uleb128 0x13
	.long	.LASF92
	.byte	0x11
	.value	0x112
	.byte	0xc
	.long	0x53
	.uleb128 0x14
	.uleb128 0x3
	.byte	0x8
	.long	0x52b
	.uleb128 0x10
	.long	0xc4
	.long	0x542
	.uleb128 0x11
	.long	0xe0
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x532
	.uleb128 0x13
	.long	.LASF93
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x542
	.uleb128 0x13
	.long	.LASF94
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x542
	.uleb128 0x15
	.long	.LASF95
	.byte	0x13
	.value	0x10b
	.byte	0x14
	.long	0x15b
	.uleb128 0x13
	.long	.LASF96
	.byte	0x13
	.value	0x21f
	.byte	0xf
	.long	0x4c0
	.uleb128 0x13
	.long	.LASF97
	.byte	0x13
	.value	0x221
	.byte	0xf
	.long	0x4c0
	.uleb128 0x2
	.long	.LASF98
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0x35
	.uleb128 0x2
	.long	.LASF99
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0x35
	.uleb128 0x2
	.long	.LASF100
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0xbe
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.long	0x5d3
	.uleb128 0x17
	.long	.LASF101
	.byte	0x7c
	.uleb128 0x17
	.long	.LASF102
	.byte	0x7d
	.uleb128 0x17
	.long	.LASF103
	.byte	0x7e
	.uleb128 0x17
	.long	.LASF104
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.long	.LASF105
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0x5a
	.uleb128 0xc
	.long	.LASF106
	.byte	0x17
	.byte	0x66
	.byte	0x16
	.long	0x113
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x603
	.uleb128 0x18
	.long	.LASF107
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x618
	.uleb128 0x17
	.long	.LASF108
	.byte	0x9
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x19
	.byte	0x2f
	.byte	0x1
	.long	0x677
	.uleb128 0x19
	.long	.LASF109
	.value	0x100
	.uleb128 0x19
	.long	.LASF110
	.value	0x200
	.uleb128 0x19
	.long	.LASF111
	.value	0x400
	.uleb128 0x19
	.long	.LASF112
	.value	0x800
	.uleb128 0x19
	.long	.LASF113
	.value	0x1000
	.uleb128 0x19
	.long	.LASF114
	.value	0x2000
	.uleb128 0x19
	.long	.LASF115
	.value	0x4000
	.uleb128 0x19
	.long	.LASF116
	.value	0x8000
	.uleb128 0x17
	.long	.LASF117
	.byte	0x1
	.uleb128 0x17
	.long	.LASF118
	.byte	0x2
	.uleb128 0x17
	.long	.LASF119
	.byte	0x4
	.uleb128 0x17
	.long	.LASF120
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF121
	.byte	0x1a
	.byte	0x22
	.byte	0x13
	.long	0x3be
	.uleb128 0x1a
	.byte	0x5
	.byte	0x4
	.long	0x53
	.byte	0x2
	.value	0x147
	.byte	0x1
	.long	0x6a1
	.uleb128 0x1b
	.long	.LASF122
	.sleb128 -130
	.uleb128 0x1b
	.long	.LASF123
	.sleb128 -131
	.byte	0
	.uleb128 0x10
	.long	0x42
	.long	0x6ac
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.long	0x6a1
	.uleb128 0x2
	.long	.LASF124
	.byte	0x1b
	.byte	0x19
	.byte	0x13
	.long	0x6ac
	.uleb128 0x2
	.long	.LASF125
	.byte	0x1c
	.byte	0x20
	.byte	0x14
	.long	0xbe
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x1d
	.byte	0x20
	.byte	0x6
	.long	0x71e
	.uleb128 0x17
	.long	.LASF126
	.byte	0
	.uleb128 0x17
	.long	.LASF127
	.byte	0x1
	.uleb128 0x17
	.long	.LASF128
	.byte	0x2
	.uleb128 0x17
	.long	.LASF129
	.byte	0x3
	.uleb128 0x17
	.long	.LASF130
	.byte	0x4
	.uleb128 0x17
	.long	.LASF131
	.byte	0x5
	.uleb128 0x17
	.long	.LASF132
	.byte	0x6
	.uleb128 0x17
	.long	.LASF133
	.byte	0x7
	.uleb128 0x17
	.long	.LASF134
	.byte	0x8
	.uleb128 0x17
	.long	.LASF135
	.byte	0x9
	.uleb128 0x17
	.long	.LASF136
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x6c9
	.uleb128 0x13
	.long	.LASF137
	.byte	0x1d
	.value	0x10b
	.byte	0x1a
	.long	0x395
	.uleb128 0x10
	.long	0x71e
	.long	0x73b
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.long	0x730
	.uleb128 0x13
	.long	.LASF138
	.byte	0x1d
	.value	0x10c
	.byte	0x21
	.long	0x73b
	.uleb128 0x2
	.long	.LASF139
	.byte	0x1e
	.byte	0x32
	.byte	0xf
	.long	0x52c
	.uleb128 0x2
	.long	.LASF140
	.byte	0x1e
	.byte	0x35
	.byte	0x15
	.long	0xe7
	.uleb128 0x2
	.long	.LASF141
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.long	0x53
	.uleb128 0xf
	.long	.LASF142
	.uleb128 0x2
	.long	.LASF143
	.byte	0x1f
	.byte	0x19
	.byte	0x1f
	.long	0x771
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x20
	.byte	0x19
	.byte	0x6
	.long	0x7b3
	.uleb128 0x17
	.long	.LASF146
	.byte	0
	.uleb128 0x17
	.long	.LASF147
	.byte	0x1
	.uleb128 0x17
	.long	.LASF148
	.byte	0x2
	.uleb128 0x17
	.long	.LASF149
	.byte	0x3
	.uleb128 0x17
	.long	.LASF150
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0x7d7
	.uleb128 0x19
	.long	.LASF151
	.value	0x100
	.uleb128 0x19
	.long	.LASF152
	.value	0x101
	.uleb128 0x19
	.long	.LASF153
	.value	0x102
	.byte	0
	.uleb128 0x10
	.long	0xb9
	.long	0x7e7
	.uleb128 0x11
	.long	0xe0
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x7d7
	.uleb128 0x1d
	.long	.LASF160
	.byte	0x1
	.byte	0x39
	.byte	0x1c
	.long	0x7e7
	.uleb128 0x9
	.byte	0x3
	.quad	long_opts
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.long	0x53
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ee
	.uleb128 0x1f
	.long	.LASF154
	.byte	0x1
	.byte	0xdb
	.byte	0xb
	.long	0x53
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x1f
	.long	.LASF155
	.byte	0x1
	.byte	0xdb
	.byte	0x18
	.long	0x4c0
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.byte	0xdd
	.byte	0x7
	.long	0x53
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x21
	.long	.LASF156
	.byte	0x1
	.byte	0xe0
	.byte	0x9
	.long	0x35
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x21
	.long	.LASF157
	.byte	0x1
	.byte	0xe1
	.byte	0xf
	.long	0xbe
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x21
	.long	.LASF158
	.byte	0x1
	.byte	0xe2
	.byte	0xf
	.long	0xbe
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x21
	.long	.LASF159
	.byte	0x1
	.byte	0xe3
	.byte	0x8
	.long	0x12ee
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x22
	.string	"uid"
	.byte	0x1
	.byte	0xe6
	.byte	0x9
	.long	0x3e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"gid"
	.byte	0x1
	.byte	0xe7
	.byte	0x9
	.long	0x3d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1d
	.long	.LASF161
	.byte	0x1
	.byte	0xe8
	.byte	0x10
	.long	0x12f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x1
	.byte	0xe9
	.byte	0xa
	.long	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF163
	.byte	0x1
	.value	0x11b
	.byte	0xf
	.long	0xbe
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x23
	.long	.LASF164
	.byte	0x1
	.value	0x11c
	.byte	0x8
	.long	0x12ee
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x23
	.long	.LASF165
	.byte	0x1
	.value	0x17d
	.byte	0x10
	.long	0x12f5
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x24
	.long	.LASF166
	.byte	0x1
	.value	0x17e
	.byte	0x10
	.long	0x12f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF167
	.byte	0x1
	.value	0x1ac
	.byte	0x7
	.long	0x53
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x25
	.quad	.LBB162
	.quad	.LBE162-.LBB162
	.long	0x991
	.uleb128 0x21
	.long	.LASF168
	.byte	0x1
	.byte	0xfe
	.byte	0x14
	.long	0xd4
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x26
	.quad	.LVL123
	.long	0x1ea3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB171
	.quad	.LBE171-.LBB171
	.long	0x9e0
	.uleb128 0x28
	.string	"__x"
	.byte	0x1
	.value	0x12e
	.byte	0x9
	.long	0xbe
	.uleb128 0x26
	.quad	.LVL150
	.long	0x1eb0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x370
	.long	0xa19
	.uleb128 0x2a
	.string	"pwd"
	.byte	0x1
	.value	0x134
	.byte	0x20
	.long	0x12fb
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x2b
	.quad	.LVL219
	.long	0x1ebc
	.uleb128 0x2b
	.quad	.LVL228
	.long	0x1ebc
	.byte	0
	.uleb128 0x25
	.quad	.LBB183
	.quad	.LBE183-.LBB183
	.long	0xa63
	.uleb128 0x28
	.string	"__x"
	.byte	0x1
	.value	0x13e
	.byte	0x9
	.long	0x53
	.uleb128 0x26
	.quad	.LVL213
	.long	0x198b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB178
	.quad	.LBE178-.LBB178
	.long	0xaab
	.uleb128 0x23
	.long	.LASF169
	.byte	0x1
	.value	0x143
	.byte	0xf
	.long	0x53
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x26
	.quad	.LVL195
	.long	0x1ec8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB182
	.quad	.LBE182-.LBB182
	.long	0xb34
	.uleb128 0x2c
	.quad	.LVL205
	.long	0x1ed4
	.long	0xadd
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL207
	.long	0x1ee1
	.long	0xb06
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC38
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL209
	.long	0x1eed
	.uleb128 0x26
	.quad	.LVL210
	.long	0x1ef9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB172
	.quad	.LBE172-.LBB172
	.long	0xb9a
	.uleb128 0x2c
	.quad	.LVL157
	.long	0x1ee1
	.long	0xb72
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC39
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL159
	.long	0x1eed
	.uleb128 0x26
	.quad	.LVL160
	.long	0x1ef9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x330
	.long	0xbd4
	.uleb128 0x23
	.long	.LASF170
	.byte	0x1
	.value	0x154
	.byte	0xd
	.long	0x35
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x26
	.quad	.LVL200
	.long	0x1f05
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x270
	.long	0xc69
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x165
	.byte	0x13
	.long	0xbe
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x25
	.quad	.LBB167
	.quad	.LBE167-.LBB167
	.long	0xc3c
	.uleb128 0x2b
	.quad	.LVL147
	.long	0x1eed
	.uleb128 0x26
	.quad	.LVL148
	.long	0x1ef9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC42
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL143
	.long	0x1eb0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x2b0
	.long	0xd01
	.uleb128 0x2a
	.string	"pwd"
	.byte	0x1
	.value	0x16f
	.byte	0x1c
	.long	0x12fb
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x25
	.quad	.LBB174
	.quad	.LBE174-.LBB174
	.long	0xcf3
	.uleb128 0x2c
	.quad	.LVL216
	.long	0x1ee1
	.long	0xcc5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC43
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL217
	.long	0x1eed
	.uleb128 0x26
	.quad	.LVL218
	.long	0x1ef9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL182
	.long	0x1ebc
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x300
	.long	0xd96
	.uleb128 0x23
	.long	.LASF169
	.byte	0x1
	.value	0x18d
	.byte	0xb
	.long	0x53
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x25
	.quad	.LBB177
	.quad	.LBE177-.LBB177
	.long	0xd78
	.uleb128 0x2c
	.quad	.LVL233
	.long	0x1ee1
	.long	0xd5d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC44
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL235
	.long	0x1ef9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL188
	.long	0x1ec8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB191
	.quad	.LBE191-.LBB191
	.long	0xdef
	.uleb128 0x2c
	.quad	.LVL239
	.long	0x1ee1
	.long	0xdd4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC45
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL241
	.long	0x1ef9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB179
	.quad	.LBE179-.LBB179
	.long	0xe42
	.uleb128 0x2c
	.quad	.LVL198
	.long	0x1ee1
	.long	0xe2d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC46
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL199
	.long	0x1ef9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB192
	.quad	.LBE192-.LBB192
	.long	0xe95
	.uleb128 0x2c
	.quad	.LVL248
	.long	0x1ee1
	.long	0xe80
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC47
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL249
	.long	0x1ef9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1e3f
	.quad	.LBI158
	.value	.LVU280
	.long	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0xf1
	.byte	0x3
	.long	0xebd
	.uleb128 0x2e
	.long	0x1e4c
	.long	.LLST33
	.long	.LVUS33
	.byte	0
	.uleb128 0x2f
	.long	0x1955
	.quad	.LBI163
	.value	.LVU322
	.long	.Ldebug_ranges0+0x240
	.byte	0x1
	.value	0x11c
	.byte	0x15
	.long	0xf6c
	.uleb128 0x2e
	.long	0x1966
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x240
	.uleb128 0x31
	.long	0x1972
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x31
	.long	0x197e
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x2c
	.quad	.LVL135
	.long	0x1f12
	.long	0xf1c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL137
	.long	0x1f1f
	.long	0xf43
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.uleb128 0x2c
	.quad	.LVL139
	.long	0x1f2b
	.long	0xf5d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.uleb128 0x2b
	.quad	.LVL149
	.long	0x1f2b
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL115
	.long	0x1f38
	.uleb128 0x2c
	.quad	.LVL116
	.long	0x1f44
	.long	0xf9d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x2c
	.quad	.LVL117
	.long	0x1f50
	.long	0xfc9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.byte	0
	.uleb128 0x2c
	.quad	.LVL118
	.long	0x1f5c
	.long	0xfe8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.uleb128 0x2b
	.quad	.LVL120
	.long	0x1f68
	.uleb128 0x2c
	.quad	.LVL121
	.long	0x1f75
	.long	0x1032
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	long_opts
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.quad	.LVL127
	.long	0x1f81
	.long	0x1070
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC34
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.quad	.LVL128
	.long	0x1f8d
	.long	0x1087
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.quad	.LVL131
	.long	0x1301
	.long	0x109e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.quad	.LVL140
	.long	0x1f9a
	.long	0x10b6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL154
	.long	0x1f9a
	.long	0x10ce
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL156
	.long	0x1fa7
	.long	0x10ed
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x2c
	.quad	.LVL165
	.long	0x1fb4
	.long	0x1105
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL166
	.long	0x1f2b
	.uleb128 0x2b
	.quad	.LVL167
	.long	0x1f2b
	.uleb128 0x2b
	.quad	.LVL169
	.long	0x1eed
	.uleb128 0x2b
	.quad	.LVL171
	.long	0x1fc0
	.uleb128 0x2c
	.quad	.LVL172
	.long	0x1fcd
	.long	0x1151
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL173
	.long	0x1fda
	.uleb128 0x2c
	.quad	.LVL176
	.long	0x1ee1
	.long	0x1187
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC48
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL177
	.long	0x1ef9
	.long	0x11a4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL191
	.long	0x198b
	.long	0x11ca
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2c
	.quad	.LVL197
	.long	0x1fe6
	.long	0x11e2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL234
	.long	0x1eed
	.uleb128 0x2c
	.quad	.LVL236
	.long	0x1ee1
	.long	0x1218
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC36
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL237
	.long	0x1ef9
	.long	0x1234
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.quad	.LVL238
	.long	0x1301
	.long	0x124c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.byte	0
	.uleb128 0x2b
	.quad	.LVL240
	.long	0x1eed
	.uleb128 0x2c
	.quad	.LVL242
	.long	0x1ed4
	.long	0x127d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x2c
	.quad	.LVL244
	.long	0x1ee1
	.long	0x12a6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC37
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL245
	.long	0x1ef9
	.long	0x12c8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL246
	.long	0x1301
	.long	0x12e0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.byte	0
	.uleb128 0x2b
	.quad	.LVL247
	.long	0x1ff3
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF171
	.uleb128 0x3
	.byte	0x8
	.long	0x3d8
	.uleb128 0x3
	.byte	0x8
	.long	0x479
	.uleb128 0x32
	.long	.LASF173
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x1955
	.uleb128 0x1f
	.long	.LASF174
	.byte	0x1
	.byte	0xb5
	.byte	0xc
	.long	0x53
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x2d
	.long	0x1e78
	.quad	.LBI97
	.value	.LVU131
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xb8
	.byte	0x5
	.long	0x1381
	.uleb128 0x2e
	.long	0x1e95
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x2e
	.long	0x1e89
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x26
	.quad	.LVL53
	.long	0x1ffc
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1d3a
	.quad	.LBI101
	.value	.LVU166
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0xd5
	.byte	0x7
	.long	0x1698
	.uleb128 0x33
	.long	0x1d48
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x34
	.long	0x1d85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.long	0x1d92
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x31
	.long	0x1d9f
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x31
	.long	0x1dac
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x2f
	.long	0x1e59
	.quad	.LBI103
	.value	.LVU190
	.long	.Ldebug_ranges0+0xc0
	.byte	0x2
	.value	0x28f
	.byte	0x3
	.long	0x1467
	.uleb128 0x2e
	.long	0x1e6a
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x2c
	.quad	.LVL84
	.long	0x2008
	.long	0x1439
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.byte	0
	.uleb128 0x26
	.quad	.LVL101
	.long	0x2008
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x1e59
	.quad	.LBI109
	.value	.LVU205
	.long	.Ldebug_ranges0+0x110
	.byte	0x2
	.value	0x29d
	.byte	0x3
	.long	0x14e0
	.uleb128 0x2e
	.long	0x1e6a
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x2c
	.quad	.LVL92
	.long	0x2008
	.long	0x14b9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL108
	.long	0x2008
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x1e59
	.quad	.LBI118
	.value	.LVU216
	.long	.Ldebug_ranges0+0x180
	.byte	0x2
	.value	0x29f
	.byte	0x3
	.long	0x1528
	.uleb128 0x2e
	.long	0x1e6a
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x26
	.quad	.LVL96
	.long	0x2008
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL81
	.long	0x1ee1
	.long	0x1551
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL85
	.long	0x1f44
	.long	0x156d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.quad	.LVL87
	.long	0x2014
	.long	0x1591
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2c
	.quad	.LVL89
	.long	0x1ee1
	.long	0x15ba
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL93
	.long	0x1ee1
	.long	0x15e3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL98
	.long	0x1ee1
	.uleb128 0x2c
	.quad	.LVL102
	.long	0x1f44
	.long	0x160c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.quad	.LVL104
	.long	0x2014
	.long	0x1630
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2c
	.quad	.LVL105
	.long	0x1ee1
	.long	0x1659
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL110
	.long	0x1ee1
	.long	0x1682
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL111
	.long	0x2020
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1e59
	.quad	.LBI128
	.value	.LVU143
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0xbb
	.byte	0x7
	.long	0x16df
	.uleb128 0x2e
	.long	0x1e6a
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x26
	.quad	.LVL59
	.long	0x2008
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1e59
	.quad	.LBI132
	.value	.LVU157
	.long	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.byte	0xcb
	.byte	0x7
	.long	0x1720
	.uleb128 0x2e
	.long	0x1e6a
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x26
	.quad	.LVL70
	.long	0x2008
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL50
	.long	0x1ee1
	.long	0x1749
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL54
	.long	0x1f8d
	.long	0x1761
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL56
	.long	0x1ee1
	.long	0x1785
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x2c
	.quad	.LVL60
	.long	0x1ee1
	.long	0x17ae
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL61
	.long	0x2020
	.long	0x17c6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL62
	.long	0x1ee1
	.long	0x17ef
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL63
	.long	0x2020
	.long	0x1807
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL64
	.long	0x1ee1
	.long	0x1830
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL65
	.long	0x2020
	.long	0x1848
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL66
	.long	0x1ed4
	.long	0x186c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x2c
	.quad	.LVL67
	.long	0x1ee1
	.long	0x1895
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL71
	.long	0x1ee1
	.long	0x18be
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL72
	.long	0x2020
	.long	0x18d6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL73
	.long	0x1ee1
	.long	0x18ff
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL74
	.long	0x2020
	.long	0x1917
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL75
	.long	0x1ee1
	.long	0x1940
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL76
	.long	0x2020
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF183
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.long	0x12ee
	.byte	0x1
	.long	0x198b
	.uleb128 0x36
	.string	"dir"
	.byte	0x1
	.byte	0xac
	.byte	0x16
	.long	0xbe
	.uleb128 0x37
	.long	.LASF175
	.byte	0x1
	.byte	0xae
	.byte	0x9
	.long	0x35
	.uleb128 0x37
	.long	.LASF176
	.byte	0x1
	.byte	0xaf
	.byte	0x8
	.long	0x12ee
	.byte	0
	.uleb128 0x38
	.long	.LASF240
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.long	0x53
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cce
	.uleb128 0x1f
	.long	.LASF158
	.byte	0x1
	.byte	0x60
	.byte	0x26
	.long	0xbe
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.byte	0x60
	.byte	0x3c
	.long	0x1cce
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1f
	.long	.LASF178
	.byte	0x1
	.byte	0x61
	.byte	0x22
	.long	0x1cd4
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1f
	.long	.LASF179
	.byte	0x1
	.byte	0x61
	.byte	0x30
	.long	0x12ee
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x21
	.long	.LASF165
	.byte	0x1
	.byte	0x63
	.byte	0x10
	.long	0x12f5
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1d
	.long	.LASF180
	.byte	0x1
	.byte	0x64
	.byte	0xa
	.long	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.long	.LASF162
	.byte	0x1
	.byte	0x65
	.byte	0xa
	.long	0xd4
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x21
	.long	.LASF181
	.byte	0x1
	.byte	0x66
	.byte	0x9
	.long	0x35
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x20
	.string	"tmp"
	.byte	0x1
	.byte	0x67
	.byte	0xf
	.long	0xbe
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x68
	.byte	0x7
	.long	0x53
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x29
	.long	.Ldebug_ranges0+0
	.long	0x1be0
	.uleb128 0x20
	.string	"g"
	.byte	0x1
	.byte	0x6c
	.byte	0x15
	.long	0x1cda
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x1d
	.long	.LASF182
	.byte	0x1
	.byte	0x6d
	.byte	0x11
	.long	0x5df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.long	0x1ad2
	.uleb128 0x26
	.quad	.LVL30
	.long	0x1dd5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x1e22
	.quad	.LBI76
	.value	.LVU76
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.byte	0x1
	.byte	0x72
	.byte	0x12
	.long	0x1b06
	.uleb128 0x2e
	.long	0x1e33
	.long	.LLST10
	.long	.LVUS10
	.byte	0
	.uleb128 0x2c
	.quad	.LVL8
	.long	0x202d
	.long	0x1b3b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x2c
	.quad	.LVL9
	.long	0x2039
	.long	0x1b53
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL24
	.long	0x2045
	.uleb128 0x2c
	.quad	.LVL28
	.long	0x2039
	.long	0x1b78
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL39
	.long	0x1fda
	.long	0x1b90
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL40
	.long	0x1ee1
	.long	0x1bb9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL42
	.long	0x1eed
	.uleb128 0x26
	.quad	.LVL43
	.long	0x1ef9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL3
	.long	0x2051
	.long	0x1bfa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0
	.uleb128 0x2c
	.quad	.LVL5
	.long	0x205d
	.long	0x1c1f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL14
	.long	0x205d
	.long	0x1c43
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL19
	.long	0x1f2b
	.long	0x1c5b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL35
	.long	0x1fda
	.long	0x1c75
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0
	.uleb128 0x2c
	.quad	.LVL36
	.long	0x1ee1
	.long	0x1c9e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL37
	.long	0x1ef9
	.long	0x1cc0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL47
	.long	0x1ff3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12f5
	.uleb128 0x3
	.byte	0x8
	.long	0xd4
	.uleb128 0x3
	.byte	0x8
	.long	0x47e
	.uleb128 0x35
	.long	.LASF184
	.byte	0x1
	.byte	0x2e
	.byte	0x14
	.long	0x12ee
	.byte	0x3
	.long	0x1cfe
	.uleb128 0x36
	.string	"gid"
	.byte	0x1
	.byte	0x2e
	.byte	0x25
	.long	0x3d8
	.byte	0
	.uleb128 0x35
	.long	.LASF185
	.byte	0x1
	.byte	0x2d
	.byte	0x14
	.long	0x12ee
	.byte	0x3
	.long	0x1d1c
	.uleb128 0x36
	.string	"uid"
	.byte	0x1
	.byte	0x2d
	.byte	0x25
	.long	0x3e4
	.byte	0
	.uleb128 0x3a
	.long	.LASF186
	.byte	0x2
	.value	0x2ba
	.byte	0x1
	.long	0x35
	.byte	0x3
	.long	0x1d3a
	.uleb128 0x3b
	.string	"s"
	.byte	0x2
	.value	0x2ba
	.byte	0x17
	.long	0xbe
	.byte	0
	.uleb128 0x3c
	.long	.LASF194
	.byte	0x2
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x1dba
	.uleb128 0x3d
	.long	.LASF187
	.byte	0x2
	.value	0x27a
	.byte	0x22
	.long	0xbe
	.uleb128 0x3e
	.long	.LASF188
	.byte	0x10
	.byte	0x2
	.value	0x27c
	.byte	0xa
	.long	0x1d80
	.uleb128 0x3f
	.long	.LASF187
	.byte	0x2
	.value	0x27c
	.byte	0x20
	.long	0xbe
	.byte	0
	.uleb128 0x3f
	.long	.LASF189
	.byte	0x2
	.value	0x27c
	.byte	0x35
	.long	0xbe
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x1d55
	.uleb128 0x40
	.long	.LASF188
	.byte	0x2
	.value	0x27c
	.byte	0x43
	.long	0x1dca
	.uleb128 0x40
	.long	.LASF189
	.byte	0x2
	.value	0x286
	.byte	0xf
	.long	0xbe
	.uleb128 0x40
	.long	.LASF190
	.byte	0x2
	.value	0x287
	.byte	0x19
	.long	0x1dcf
	.uleb128 0x40
	.long	.LASF191
	.byte	0x2
	.value	0x293
	.byte	0xf
	.long	0xbe
	.byte	0
	.uleb128 0x10
	.long	0x1d80
	.long	0x1dca
	.uleb128 0x11
	.long	0xe0
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x1dba
	.uleb128 0x3
	.byte	0x8
	.long	0x1d80
	.uleb128 0x41
	.long	.LASF241
	.byte	0x21
	.byte	0xae
	.byte	0x1
	.long	0xee
	.long	0x1e22
	.uleb128 0x36
	.string	"p"
	.byte	0x21
	.byte	0xae
	.byte	0x13
	.long	0xee
	.uleb128 0x36
	.string	"pn"
	.byte	0x21
	.byte	0xae
	.byte	0x1e
	.long	0x1cd4
	.uleb128 0x36
	.string	"s"
	.byte	0x21
	.byte	0xae
	.byte	0x29
	.long	0xd4
	.uleb128 0x42
	.string	"n"
	.byte	0x21
	.byte	0xb0
	.byte	0xa
	.long	0xd4
	.uleb128 0x43
	.uleb128 0x44
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x21
	.byte	0xba
	.byte	0x10
	.uleb128 0x17
	.long	.LASF192
	.byte	0x80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF193
	.byte	0x2
	.byte	0x9c
	.byte	0x1d
	.long	0xf0
	.byte	0x3
	.long	0x1e3f
	.uleb128 0x36
	.string	"ch"
	.byte	0x2
	.byte	0x9c
	.byte	0x2c
	.long	0x3b
	.byte	0
	.uleb128 0x45
	.long	.LASF195
	.byte	0x2
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0x1e59
	.uleb128 0x46
	.long	.LASF174
	.byte	0x2
	.byte	0x63
	.byte	0x1e
	.long	0x53
	.byte	0
	.uleb128 0x47
	.long	.LASF197
	.byte	0x3
	.byte	0x69
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x1e78
	.uleb128 0x46
	.long	.LASF196
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.long	0xc9
	.uleb128 0x48
	.byte	0
	.uleb128 0x47
	.long	.LASF198
	.byte	0x3
	.byte	0x62
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x1ea3
	.uleb128 0x46
	.long	.LASF199
	.byte	0x3
	.byte	0x62
	.byte	0x1b
	.long	0x361
	.uleb128 0x46
	.long	.LASF196
	.byte	0x3
	.byte	0x62
	.byte	0x3c
	.long	0xc9
	.uleb128 0x48
	.byte	0
	.uleb128 0x49
	.long	.LASF200
	.long	.LASF200
	.byte	0x22
	.value	0x181
	.byte	0xf
	.uleb128 0x4a
	.long	.LASF201
	.long	.LASF201
	.byte	0x23
	.byte	0x19
	.byte	0x1
	.uleb128 0x4a
	.long	.LASF202
	.long	.LASF202
	.byte	0xf
	.byte	0x6e
	.byte	0x17
	.uleb128 0x4a
	.long	.LASF203
	.long	.LASF203
	.byte	0x24
	.byte	0x15
	.byte	0x5
	.uleb128 0x49
	.long	.LASF204
	.long	.LASF204
	.byte	0x1d
	.value	0x179
	.byte	0x7
	.uleb128 0x4a
	.long	.LASF205
	.long	.LASF205
	.byte	0x25
	.byte	0x33
	.byte	0xe
	.uleb128 0x4a
	.long	.LASF206
	.long	.LASF206
	.byte	0x14
	.byte	0x25
	.byte	0xd
	.uleb128 0x4a
	.long	.LASF207
	.long	.LASF207
	.byte	0x1e
	.byte	0x28
	.byte	0xd
	.uleb128 0x49
	.long	.LASF208
	.long	.LASF208
	.byte	0x26
	.value	0x27a
	.byte	0xe
	.uleb128 0x49
	.long	.LASF209
	.long	.LASF209
	.byte	0x26
	.value	0x316
	.byte	0xe
	.uleb128 0x4a
	.long	.LASF210
	.long	.LASF210
	.byte	0x22
	.byte	0x89
	.byte	0xc
	.uleb128 0x49
	.long	.LASF211
	.long	.LASF211
	.byte	0x26
	.value	0x235
	.byte	0xd
	.uleb128 0x4a
	.long	.LASF212
	.long	.LASF212
	.byte	0x1c
	.byte	0x25
	.byte	0xd
	.uleb128 0x4a
	.long	.LASF213
	.long	.LASF213
	.byte	0x27
	.byte	0x7a
	.byte	0xe
	.uleb128 0x4a
	.long	.LASF214
	.long	.LASF214
	.byte	0x25
	.byte	0x56
	.byte	0xe
	.uleb128 0x4a
	.long	.LASF215
	.long	.LASF215
	.byte	0x25
	.byte	0x52
	.byte	0xe
	.uleb128 0x49
	.long	.LASF216
	.long	.LASF216
	.byte	0x26
	.value	0x253
	.byte	0xc
	.uleb128 0x4a
	.long	.LASF217
	.long	.LASF217
	.byte	0x5
	.byte	0x42
	.byte	0xc
	.uleb128 0x4a
	.long	.LASF218
	.long	.LASF218
	.byte	0x1b
	.byte	0x3c
	.byte	0xd
	.uleb128 0x49
	.long	.LASF219
	.long	.LASF219
	.byte	0x26
	.value	0x269
	.byte	0xd
	.uleb128 0x49
	.long	.LASF220
	.long	.LASF220
	.byte	0x13
	.value	0x3ae
	.byte	0xc
	.uleb128 0x49
	.long	.LASF221
	.long	.LASF221
	.byte	0x13
	.value	0x1f1
	.byte	0xc
	.uleb128 0x4a
	.long	.LASF222
	.long	.LASF222
	.byte	0x10
	.byte	0xb0
	.byte	0xc
	.uleb128 0x49
	.long	.LASF223
	.long	.LASF223
	.byte	0x13
	.value	0x2bc
	.byte	0xc
	.uleb128 0x49
	.long	.LASF224
	.long	.LASF224
	.byte	0x13
	.value	0x242
	.byte	0xc
	.uleb128 0x4a
	.long	.LASF225
	.long	.LASF225
	.byte	0x1f
	.byte	0x2c
	.byte	0xd
	.uleb128 0x49
	.long	.LASF226
	.long	.LASF226
	.byte	0x13
	.value	0x2cd
	.byte	0xc
	.uleb128 0x4b
	.long	.LASF242
	.long	.LASF242
	.uleb128 0x4a
	.long	.LASF227
	.long	.LASF227
	.byte	0x3
	.byte	0x58
	.byte	0xc
	.uleb128 0x4a
	.long	.LASF228
	.long	.LASF228
	.byte	0x3
	.byte	0x5a
	.byte	0xc
	.uleb128 0x4a
	.long	.LASF229
	.long	.LASF229
	.byte	0x22
	.byte	0x8c
	.byte	0xc
	.uleb128 0x49
	.long	.LASF230
	.long	.LASF230
	.byte	0xa
	.value	0x296
	.byte	0xc
	.uleb128 0x4a
	.long	.LASF231
	.long	.LASF231
	.byte	0x20
	.byte	0x30
	.byte	0x1
	.uleb128 0x4a
	.long	.LASF232
	.long	.LASF232
	.byte	0x10
	.byte	0x6b
	.byte	0x16
	.uleb128 0x4a
	.long	.LASF233
	.long	.LASF233
	.byte	0x19
	.byte	0x4f
	.byte	0x23
	.uleb128 0x4a
	.long	.LASF234
	.long	.LASF234
	.byte	0x21
	.byte	0x40
	.byte	0x7
	.uleb128 0x49
	.long	.LASF235
	.long	.LASF235
	.byte	0x22
	.value	0x150
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x87
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
.LVUS22:
	.uleb128 0
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 .LVU397
	.uleb128 .LVU397
	.uleb128 .LVU436
	.uleb128 .LVU436
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 .LVU481
	.uleb128 .LVU481
	.uleb128 .LVU496
	.uleb128 .LVU496
	.uleb128 .LVU500
	.uleb128 .LVU500
	.uleb128 .LVU517
	.uleb128 .LVU517
	.uleb128 .LVU521
	.uleb128 .LVU521
	.uleb128 .LVU559
	.uleb128 .LVU559
	.uleb128 .LVU563
	.uleb128 .LVU563
	.uleb128 .LVU570
	.uleb128 .LVU570
	.uleb128 .LVU571
	.uleb128 .LVU571
	.uleb128 .LVU580
	.uleb128 .LVU580
	.uleb128 0
.LLST22:
	.quad	.LVL112
	.quad	.LVL113
	.value	0x1
	.byte	0x55
	.quad	.LVL113
	.quad	.LVL163
	.value	0x1
	.byte	0x56
	.quad	.LVL163
	.quad	.LVL181
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL181
	.quad	.LVL186
	.value	0x1
	.byte	0x56
	.quad	.LVL186
	.quad	.LVL192
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL192
	.quad	.LVL196
	.value	0x1
	.byte	0x56
	.quad	.LVL196
	.quad	.LVL199
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL199
	.quad	.LVL210
	.value	0x1
	.byte	0x56
	.quad	.LVL210
	.quad	.LVL212
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL212
	.quad	.LVL232
	.value	0x1
	.byte	0x56
	.quad	.LVL232
	.quad	.LVL235
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL235
	.quad	.LVL238
	.value	0x1
	.byte	0x56
	.quad	.LVL238
	.quad	.LVL241
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL241
	.quad	.LVL246
	.value	0x1
	.byte	0x56
	.quad	.LVL246
	.quad	.LFE140
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU433
	.uleb128 .LVU436
	.uleb128 0
.LLST23:
	.quad	.LVL112
	.quad	.LVL115-1
	.value	0x1
	.byte	0x54
	.quad	.LVL115-1
	.quad	.LVL178
	.value	0x1
	.byte	0x53
	.quad	.LVL181
	.quad	.LFE140
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU290
	.uleb128 .LVU296
	.uleb128 .LVU302
	.uleb128 .LVU307
	.uleb128 .LVU309
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 .LVU318
.LLST24:
	.quad	.LVL121
	.quad	.LVL123-1
	.value	0x1
	.byte	0x50
	.quad	.LVL125
	.quad	.LVL126
	.value	0x1
	.byte	0x50
	.quad	.LVL128
	.quad	.LVL131-1
	.value	0x1
	.byte	0x50
	.quad	.LVL131
	.quad	.LVL133
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU263
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 .LVU427
	.uleb128 .LVU436
	.uleb128 .LVU515
	.uleb128 .LVU517
	.uleb128 .LVU529
	.uleb128 .LVU531
	.uleb128 .LVU580
	.uleb128 .LVU581
	.uleb128 0
.LLST25:
	.quad	.LVL114
	.quad	.LVL120
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL120
	.quad	.LVL175
	.value	0x1
	.byte	0x5d
	.quad	.LVL181
	.quad	.LVL206
	.value	0x1
	.byte	0x5d
	.quad	.LVL210
	.quad	.LVL215
	.value	0x1
	.byte	0x5d
	.quad	.LVL218
	.quad	.LVL246
	.value	0x1
	.byte	0x5d
	.quad	.LVL247
	.quad	.LFE140
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU264
	.uleb128 .LVU339
	.uleb128 .LVU359
	.uleb128 .LVU378
	.uleb128 .LVU481
	.uleb128 .LVU482
	.uleb128 .LVU531
	.uleb128 .LVU545
	.uleb128 .LVU545
	.uleb128 .LVU546
	.uleb128 .LVU549
	.uleb128 .LVU558
	.uleb128 .LVU563
	.uleb128 .LVU570
	.uleb128 .LVU571
	.uleb128 .LVU580
.LLST26:
	.quad	.LVL114
	.quad	.LVL141
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL148
	.quad	.LVL153
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL192
	.quad	.LVL193
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL218
	.quad	.LVL224
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL224
	.quad	.LVL225
	.value	0x1
	.byte	0x50
	.quad	.LVL227
	.quad	.LVL231
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL235
	.quad	.LVL238
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL241
	.quad	.LVL246
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU265
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 .LVU434
	.uleb128 .LVU436
	.uleb128 0
.LLST27:
	.quad	.LVL114
	.quad	.LVL120
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL120
	.quad	.LVL179
	.value	0x1
	.byte	0x5e
	.quad	.LVL181
	.quad	.LFE140
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU266
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 .LVU310
	.uleb128 .LVU311
	.uleb128 .LVU348
	.uleb128 .LVU359
	.uleb128 .LVU385
	.uleb128 .LVU481
	.uleb128 .LVU496
	.uleb128 .LVU500
	.uleb128 .LVU516
	.uleb128 .LVU521
	.uleb128 .LVU524
	.uleb128 .LVU531
	.uleb128 .LVU559
	.uleb128 .LVU563
	.uleb128 .LVU570
	.uleb128 .LVU571
	.uleb128 .LVU575
.LLST28:
	.quad	.LVL114
	.quad	.LVL120
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL120
	.quad	.LVL129
	.value	0x1
	.byte	0x5c
	.quad	.LVL130
	.quad	.LVL144
	.value	0x1
	.byte	0x5c
	.quad	.LVL148
	.quad	.LVL158
	.value	0x1
	.byte	0x5c
	.quad	.LVL192
	.quad	.LVL196
	.value	0x1
	.byte	0x5c
	.quad	.LVL199
	.quad	.LVL208
	.value	0x1
	.byte	0x5c
	.quad	.LVL212
	.quad	.LVL214
	.value	0x1
	.byte	0x5c
	.quad	.LVL218
	.quad	.LVL232
	.value	0x1
	.byte	0x5c
	.quad	.LVL235
	.quad	.LVL238
	.value	0x1
	.byte	0x5c
	.quad	.LVL241
	.quad	.LVL243
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 .LVU321
	.uleb128 .LVU435
	.uleb128 .LVU436
	.uleb128 .LVU563
	.uleb128 .LVU570
	.uleb128 0
.LLST29:
	.quad	.LVL134
	.quad	.LVL180
	.value	0x1
	.byte	0x5f
	.quad	.LVL181
	.quad	.LVL235
	.value	0x1
	.byte	0x5f
	.quad	.LVL238
	.quad	.LFE140
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS30:
	.uleb128 .LVU331
	.uleb128 .LVU339
	.uleb128 .LVU362
	.uleb128 .LVU382
	.uleb128 .LVU481
	.uleb128 .LVU496
	.uleb128 .LVU521
	.uleb128 .LVU524
	.uleb128 .LVU531
	.uleb128 .LVU546
	.uleb128 .LVU549
	.uleb128 .LVU559
	.uleb128 .LVU571
	.uleb128 .LVU580
.LLST30:
	.quad	.LVL139
	.quad	.LVL141
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL149
	.quad	.LVL155
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL192
	.quad	.LVL196
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL212
	.quad	.LVL214
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL218
	.quad	.LVL225
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL227
	.quad	.LVL232
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL241
	.quad	.LVL246
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 .LVU397
	.uleb128 .LVU400
	.uleb128 .LVU453
	.uleb128 .LVU468
	.uleb128 .LVU470
	.uleb128 .LVU481
	.uleb128 .LVU517
	.uleb128 .LVU521
	.uleb128 .LVU559
	.uleb128 .LVU563
.LLST31:
	.quad	.LVL163
	.quad	.LVL164
	.value	0x1
	.byte	0x56
	.quad	.LVL186
	.quad	.LVL189
	.value	0x1
	.byte	0x56
	.quad	.LVL190
	.quad	.LVL192
	.value	0x1
	.byte	0x56
	.quad	.LVL210
	.quad	.LVL212
	.value	0x1
	.byte	0x56
	.quad	.LVL232
	.quad	.LVL235
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS32:
	.uleb128 .LVU424
	.uleb128 .LVU432
.LLST32:
	.quad	.LVL174
	.quad	.LVL177
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS34:
	.uleb128 .LVU296
	.uleb128 .LVU299
.LLST34:
	.quad	.LVL123
	.quad	.LVL124
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS43:
	.uleb128 .LVU535
	.uleb128 .LVU542
	.uleb128 .LVU542
	.uleb128 .LVU544
	.uleb128 .LVU544
	.uleb128 .LVU545
	.uleb128 .LVU545
	.uleb128 .LVU546
	.uleb128 .LVU553
	.uleb128 .LVU558
.LLST43:
	.quad	.LVL220
	.quad	.LVL222
	.value	0x1
	.byte	0x50
	.quad	.LVL222
	.quad	.LVL223
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL223
	.quad	.LVL224
	.value	0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.quad	.LVL224
	.quad	.LVL225
	.value	0x1
	.byte	0x50
	.quad	.LVL229
	.quad	.LVL231
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS41:
	.uleb128 .LVU491
	.uleb128 .LVU496
.LLST41:
	.quad	.LVL195
	.quad	.LVL196
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS42:
	.uleb128 .LVU503
	.uleb128 .LVU511
	.uleb128 .LVU511
	.uleb128 .LVU514
	.uleb128 .LVU546
	.uleb128 .LVU548
.LLST42:
	.quad	.LVL200
	.quad	.LVL203
	.value	0x1
	.byte	0x50
	.quad	.LVL203
	.quad	.LVL204
	.value	0x2
	.byte	0x73
	.sleb128 0
	.quad	.LVL225
	.quad	.LVL226
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS38:
	.uleb128 .LVU348
	.uleb128 .LVU358
	.uleb128 .LVU358
	.uleb128 .LVU359
.LLST38:
	.quad	.LVL144
	.quad	.LVL147-1
	.value	0x1
	.byte	0x50
	.quad	.LVL147-1
	.quad	.LVL148
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS39:
	.uleb128 .LVU439
	.uleb128 .LVU448
	.uleb128 .LVU524
	.uleb128 .LVU530
.LLST39:
	.quad	.LVL182
	.quad	.LVL184
	.value	0x1
	.byte	0x50
	.quad	.LVL214
	.quad	.LVL216-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS40:
	.uleb128 .LVU463
	.uleb128 .LVU470
	.uleb128 .LVU559
	.uleb128 .LVU562
.LLST40:
	.quad	.LVL188
	.quad	.LVL190
	.value	0x1
	.byte	0x50
	.quad	.LVL232
	.quad	.LVL233-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS33:
	.uleb128 .LVU280
	.uleb128 .LVU285
.LLST33:
	.quad	.LVL118
	.quad	.LVL119
	.value	0x3
	.byte	0x8
	.byte	0x7d
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS35:
	.uleb128 .LVU322
	.uleb128 .LVU331
	.uleb128 .LVU359
	.uleb128 .LVU362
.LLST35:
	.quad	.LVL134
	.quad	.LVL139
	.value	0x1
	.byte	0x5f
	.quad	.LVL148
	.quad	.LVL149
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS36:
	.uleb128 .LVU325
	.uleb128 .LVU328
	.uleb128 .LVU328
	.uleb128 .LVU331
	.uleb128 .LVU359
	.uleb128 .LVU361
.LLST36:
	.quad	.LVL136
	.quad	.LVL137-1
	.value	0x1
	.byte	0x50
	.quad	.LVL137-1
	.quad	.LVL139
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL148
	.quad	.LVL149-1
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LVUS37:
	.uleb128 .LVU329
	.uleb128 .LVU331
	.uleb128 .LVU359
	.uleb128 .LVU362
.LLST37:
	.quad	.LVL138
	.quad	.LVL139
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL148
	.quad	.LVL149
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 0
.LLST11:
	.quad	.LVL48
	.quad	.LVL49
	.value	0x1
	.byte	0x55
	.quad	.LVL49
	.quad	.LVL54
	.value	0x1
	.byte	0x56
	.quad	.LVL54
	.quad	.LVL55
	.value	0x1
	.byte	0x55
	.quad	.LVL55
	.quad	.LFE139
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU131
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU135
.LLST12:
	.quad	.LVL51
	.quad	.LVL52
	.value	0x1
	.byte	0x50
	.quad	.LVL52
	.quad	.LVL53-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU131
	.uleb128 .LVU135
.LLST13:
	.quad	.LVL51
	.quad	.LVL53-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU170
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU201
	.uleb128 .LVU222
	.uleb128 .LVU250
.LLST14:
	.quad	.LVL77
	.quad	.LVL80
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	.LVL80
	.quad	.LVL88
	.value	0x1
	.byte	0x5c
	.quad	.LVL97
	.quad	.LVL109
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU171
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU188
	.uleb128 .LVU222
	.uleb128 .LVU224
.LLST15:
	.quad	.LVL77
	.quad	.LVL78
	.value	0x1
	.byte	0x57
	.quad	.LVL78
	.quad	.LVL81-1
	.value	0x1
	.byte	0x50
	.quad	.LVL97
	.quad	.LVL98-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU197
	.uleb128 .LVU200
	.uleb128 .LVU233
	.uleb128 .LVU236
.LLST16:
	.quad	.LVL86
	.quad	.LVL87-1
	.value	0x1
	.byte	0x50
	.quad	.LVL103
	.quad	.LVL104-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU190
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU194
	.uleb128 .LVU226
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU230
.LLST17:
	.quad	.LVL82
	.quad	.LVL83
	.value	0x1
	.byte	0x50
	.quad	.LVL83
	.quad	.LVL84-1
	.value	0x1
	.byte	0x54
	.quad	.LVL99
	.quad	.LVL100
	.value	0x1
	.byte	0x50
	.quad	.LVL100
	.quad	.LVL101-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU205
	.uleb128 .LVU208
	.uleb128 .LVU208
	.uleb128 .LVU211
	.uleb128 .LVU241
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU247
.LLST18:
	.quad	.LVL90
	.quad	.LVL91
	.value	0x1
	.byte	0x50
	.quad	.LVL91
	.quad	.LVL92-1
	.value	0x1
	.byte	0x54
	.quad	.LVL106
	.quad	.LVL107
	.value	0x1
	.byte	0x50
	.quad	.LVL107
	.quad	.LVL108-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU216
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU220
.LLST19:
	.quad	.LVL94
	.quad	.LVL95
	.value	0x1
	.byte	0x50
	.quad	.LVL95
	.quad	.LVL96-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU143
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU147
.LLST20:
	.quad	.LVL57
	.quad	.LVL58
	.value	0x1
	.byte	0x50
	.quad	.LVL58
	.quad	.LVL59-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU157
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU161
.LLST21:
	.quad	.LVL68
	.quad	.LVL69
	.value	0x1
	.byte	0x50
	.quad	.LVL69
	.quad	.LVL70-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL3-1
	.value	0x1
	.byte	0x55
	.quad	.LVL3-1
	.quad	.LFE137
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 0
.LLST1:
	.quad	.LVL0
	.quad	.LVL3-1
	.value	0x1
	.byte	0x54
	.quad	.LVL3-1
	.quad	.LVL20
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL20
	.quad	.LVL23
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	.LVL23
	.quad	.LFE137
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST2:
	.quad	.LVL0
	.quad	.LVL3-1
	.value	0x1
	.byte	0x51
	.quad	.LVL3-1
	.quad	.LFE137
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST3:
	.quad	.LVL0
	.quad	.LVL3-1
	.value	0x1
	.byte	0x52
	.quad	.LVL3-1
	.quad	.LFE137
	.value	0x3
	.byte	0x91
	.sleb128 -101
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU4
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU65
	.uleb128 .LVU71
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU92
	.uleb128 .LVU107
	.uleb128 .LVU118
.LLST4:
	.quad	.LVL1
	.quad	.LVL7
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL7
	.quad	.LVL18
	.value	0x1
	.byte	0x56
	.quad	.LVL23
	.quad	.LVL31
	.value	0x1
	.byte	0x56
	.quad	.LVL31
	.quad	.LVL32
	.value	0x1
	.byte	0x50
	.quad	.LVL32
	.quad	.LVL34
	.value	0x1
	.byte	0x56
	.quad	.LVL38
	.quad	.LVL46
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU7
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU65
	.uleb128 .LVU71
	.uleb128 .LVU92
	.uleb128 .LVU107
	.uleb128 .LVU118
.LLST5:
	.quad	.LVL2
	.quad	.LVL7
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL7
	.quad	.LVL12
	.value	0x1
	.byte	0x53
	.quad	.LVL12
	.quad	.LVL13
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL18
	.value	0x1
	.byte	0x53
	.quad	.LVL23
	.quad	.LVL34
	.value	0x1
	.byte	0x53
	.quad	.LVL38
	.quad	.LVL46
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU11
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU69
	.uleb128 .LVU71
	.uleb128 0
.LLST6:
	.quad	.LVL4
	.quad	.LVL5-1
	.value	0x1
	.byte	0x50
	.quad	.LVL5-1
	.quad	.LVL21
	.value	0x1
	.byte	0x5c
	.quad	.LVL23
	.quad	.LFE137
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU16
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU34
	.uleb128 .LVU42
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU70
	.uleb128 .LVU71
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU86
	.uleb128 .LVU89
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU111
	.uleb128 .LVU116
	.uleb128 0
.LLST7:
	.quad	.LVL6
	.quad	.LVL8-1
	.value	0x1
	.byte	0x50
	.quad	.LVL8-1
	.quad	.LVL11
	.value	0x1
	.byte	0x5e
	.quad	.LVL15
	.quad	.LVL16
	.value	0x1
	.byte	0x50
	.quad	.LVL16
	.quad	.LVL22
	.value	0x1
	.byte	0x5e
	.quad	.LVL23
	.quad	.LVL25
	.value	0x1
	.byte	0x5e
	.quad	.LVL25
	.quad	.LVL26
	.value	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.quad	.LVL26
	.quad	.LVL29
	.value	0x1
	.byte	0x5e
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x50
	.quad	.LVL33
	.quad	.LVL34
	.value	0x1
	.byte	0x56
	.quad	.LVL34
	.quad	.LVL41
	.value	0x1
	.byte	0x5e
	.quad	.LVL44
	.quad	.LFE137
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU13
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU65
	.uleb128 .LVU71
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU117
.LLST8:
	.quad	.LVL4
	.quad	.LVL7
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL7
	.quad	.LVL17
	.value	0x1
	.byte	0x5f
	.quad	.LVL17
	.quad	.LVL18
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL34
	.value	0x1
	.byte	0x5f
	.quad	.LVL34
	.quad	.LVL37
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL44
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL44
	.quad	.LVL45
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU29
	.uleb128 .LVU31
	.uleb128 .LVU53
	.uleb128 .LVU65
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU107
	.uleb128 .LVU116
.LLST9:
	.quad	.LVL9
	.quad	.LVL10
	.value	0x1
	.byte	0x50
	.quad	.LVL17
	.quad	.LVL18
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28
	.quad	.LVL29
	.value	0x1
	.byte	0x50
	.quad	.LVL38
	.quad	.LVL44
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU76
	.uleb128 .LVU78
.LLST10:
	.quad	.LVL27
	.quad	.LVL27
	.value	0x1
	.byte	0x51
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
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB75
	.quad	.LBE75
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB80
	.quad	.LBE80
	.quad	.LBB81
	.quad	.LBE81
	.quad	.LBB82
	.quad	.LBE82
	.quad	0
	.quad	0
	.quad	.LBB97
	.quad	.LBE97
	.quad	.LBB100
	.quad	.LBE100
	.quad	0
	.quad	0
	.quad	.LBB101
	.quad	.LBE101
	.quad	.LBB136
	.quad	.LBE136
	.quad	0
	.quad	0
	.quad	.LBB103
	.quad	.LBE103
	.quad	.LBB108
	.quad	.LBE108
	.quad	.LBB122
	.quad	.LBE122
	.quad	.LBB123
	.quad	.LBE123
	.quad	0
	.quad	0
	.quad	.LBB109
	.quad	.LBE109
	.quad	.LBB116
	.quad	.LBE116
	.quad	.LBB117
	.quad	.LBE117
	.quad	.LBB124
	.quad	.LBE124
	.quad	.LBB125
	.quad	.LBE125
	.quad	.LBB126
	.quad	.LBE126
	.quad	0
	.quad	0
	.quad	.LBB118
	.quad	.LBE118
	.quad	.LBB121
	.quad	.LBE121
	.quad	0
	.quad	0
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB131
	.quad	.LBE131
	.quad	0
	.quad	0
	.quad	.LBB132
	.quad	.LBE132
	.quad	.LBB135
	.quad	.LBE135
	.quad	0
	.quad	0
	.quad	.LBB158
	.quad	.LBE158
	.quad	.LBB161
	.quad	.LBE161
	.quad	0
	.quad	0
	.quad	.LBB163
	.quad	.LBE163
	.quad	.LBB170
	.quad	.LBE170
	.quad	0
	.quad	0
	.quad	.LBB166
	.quad	.LBE166
	.quad	.LBB168
	.quad	.LBE168
	.quad	.LBB169
	.quad	.LBE169
	.quad	0
	.quad	0
	.quad	.LBB173
	.quad	.LBE173
	.quad	.LBB175
	.quad	.LBE175
	.quad	.LBB184
	.quad	.LBE184
	.quad	.LBB185
	.quad	.LBE185
	.quad	0
	.quad	0
	.quad	.LBB176
	.quad	.LBE176
	.quad	.LBB190
	.quad	.LBE190
	.quad	0
	.quad	0
	.quad	.LBB180
	.quad	.LBE180
	.quad	.LBB181
	.quad	.LBE181
	.quad	.LBB188
	.quad	.LBE188
	.quad	0
	.quad	0
	.quad	.LBB186
	.quad	.LBE186
	.quad	.LBB187
	.quad	.LBE187
	.quad	.LBB189
	.quad	.LBE189
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB140
	.quad	.LFE140
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF199:
	.string	"__stream"
.LASF169:
	.string	"ngroups"
.LASF15:
	.string	"size_t"
.LASF164:
	.string	"is_oldroot"
.LASF84:
	.string	"gr_gid"
.LASF122:
	.string	"GETOPT_HELP_CHAR"
.LASF116:
	.string	"_ISgraph"
.LASF167:
	.string	"exit_status"
.LASF56:
	.string	"_IO_codecvt"
.LASF36:
	.string	"_IO_save_end"
.LASF18:
	.string	"__gid_t"
.LASF93:
	.string	"_sys_siglist"
.LASF70:
	.string	"time_t"
.LASF29:
	.string	"_IO_write_base"
.LASF141:
	.string	"error_one_per_line"
.LASF45:
	.string	"_lock"
.LASF148:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF34:
	.string	"_IO_save_base"
.LASF85:
	.string	"gr_mem"
.LASF240:
	.string	"parse_additional_groups"
.LASF204:
	.string	"quotearg_style"
.LASF195:
	.string	"initialize_exit_failure"
.LASF38:
	.string	"_chain"
.LASF42:
	.string	"_cur_column"
.LASF61:
	.string	"sys_nerr"
.LASF228:
	.string	"__printf_chk"
.LASF69:
	.string	"uid_t"
.LASF63:
	.string	"_sys_nerr"
.LASF157:
	.string	"username"
.LASF212:
	.string	"set_program_name"
.LASF96:
	.string	"__environ"
.LASF223:
	.string	"setuid"
.LASF73:
	.string	"passwd"
.LASF208:
	.string	"getenv"
.LASF14:
	.string	"long int"
.LASF219:
	.string	"exit"
.LASF209:
	.string	"canonicalize_file_name"
.LASF79:
	.string	"pw_dir"
.LASF178:
	.string	"pn_gids"
.LASF6:
	.string	"has_arg"
.LASF158:
	.string	"groups"
.LASF232:
	.string	"getgrnam"
.LASF55:
	.string	"_IO_marker"
.LASF172:
	.string	"main"
.LASF115:
	.string	"_ISprint"
.LASF207:
	.string	"error"
.LASF220:
	.string	"chroot"
.LASF80:
	.string	"pw_shell"
.LASF121:
	.string	"__xalloc_count_type"
.LASF12:
	.string	"signed char"
.LASF162:
	.string	"n_gids"
.LASF24:
	.string	"_IO_FILE"
.LASF88:
	.string	"__timezone"
.LASF57:
	.string	"_IO_wide_data"
.LASF156:
	.string	"userspec"
.LASF236:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF137:
	.string	"quoting_style_args"
.LASF97:
	.string	"environ"
.LASF10:
	.string	"unsigned char"
.LASF49:
	.string	"_freeres_list"
.LASF78:
	.string	"pw_gecos"
.LASF145:
	.string	"strtol_error"
.LASF194:
	.string	"emit_ancillary_info"
.LASF140:
	.string	"error_message_count"
.LASF184:
	.string	"gid_unset"
.LASF86:
	.string	"__tzname"
.LASF171:
	.string	"_Bool"
.LASF101:
	.string	"EXIT_TIMEDOUT"
.LASF182:
	.string	"value"
.LASF2:
	.string	"char"
.LASF197:
	.string	"printf"
.LASF163:
	.string	"newroot"
.LASF153:
	.string	"SKIP_CHDIR"
.LASF202:
	.string	"getpwuid"
.LASF239:
	.string	"_IO_lock_t"
.LASF206:
	.string	"__errno_location"
.LASF218:
	.string	"version_etc"
.LASF104:
	.string	"EXIT_ENOENT"
.LASF91:
	.string	"timezone"
.LASF130:
	.string	"shell_escape_always_quoting_style"
.LASF26:
	.string	"_IO_read_ptr"
.LASF65:
	.string	"ptrdiff_t"
.LASF210:
	.string	"strcmp"
.LASF58:
	.string	"stdin"
.LASF226:
	.string	"setgid"
.LASF62:
	.string	"sys_errlist"
.LASF37:
	.string	"_markers"
.LASF125:
	.string	"program_name"
.LASF119:
	.string	"_ISpunct"
.LASF83:
	.string	"gr_passwd"
.LASF185:
	.string	"uid_unset"
.LASF132:
	.string	"c_maybe_quoting_style"
.LASF168:
	.string	"userlen"
.LASF192:
	.string	"DEFAULT_MXFAST"
.LASF181:
	.string	"buffer"
.LASF149:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF230:
	.string	"fputs_unlocked"
.LASF189:
	.string	"node"
.LASF102:
	.string	"EXIT_CANCELED"
.LASF98:
	.string	"program_invocation_name"
.LASF46:
	.string	"_offset"
.LASF89:
	.string	"tzname"
.LASF147:
	.string	"LONGINT_OVERFLOW"
.LASF1:
	.string	"optind"
.LASF237:
	.string	"src/chroot.c"
.LASF135:
	.string	"clocale_quoting_style"
.LASF139:
	.string	"error_print_progname"
.LASF8:
	.string	"long unsigned int"
.LASF221:
	.string	"chdir"
.LASF174:
	.string	"status"
.LASF40:
	.string	"_flags2"
.LASF28:
	.string	"_IO_read_base"
.LASF23:
	.string	"option"
.LASF53:
	.string	"_unused2"
.LASF234:
	.string	"xstrdup"
.LASF113:
	.string	"_ISxdigit"
.LASF227:
	.string	"__fprintf_chk"
.LASF81:
	.string	"group"
.LASF154:
	.string	"argc"
.LASF41:
	.string	"_old_offset"
.LASF188:
	.string	"infomap"
.LASF155:
	.string	"argv"
.LASF161:
	.string	"out_gids"
.LASF22:
	.string	"__intptr_t"
.LASF127:
	.string	"shell_quoting_style"
.LASF242:
	.string	"__stack_chk_fail"
.LASF66:
	.string	"long long int"
.LASF151:
	.string	"GROUPS"
.LASF187:
	.string	"program"
.LASF100:
	.string	"Version"
.LASF105:
	.string	"exit_failure"
.LASF71:
	.string	"_gl_cxxalias_dummy"
.LASF109:
	.string	"_ISupper"
.LASF131:
	.string	"c_quoting_style"
.LASF224:
	.string	"execvp"
.LASF233:
	.string	"__ctype_b_loc"
.LASF118:
	.string	"_IScntrl"
.LASF31:
	.string	"_IO_write_end"
.LASF106:
	.string	"uintmax_t"
.LASF150:
	.string	"LONGINT_INVALID"
.LASF186:
	.string	"bad_cast"
.LASF94:
	.string	"sys_siglist"
.LASF123:
	.string	"GETOPT_VERSION_CHAR"
.LASF32:
	.string	"_IO_buf_base"
.LASF170:
	.string	"shell"
.LASF9:
	.string	"unsigned int"
.LASF124:
	.string	"version_etc_copyright"
.LASF95:
	.string	"intptr_t"
.LASF138:
	.string	"quoting_style_vals"
.LASF126:
	.string	"literal_quoting_style"
.LASF76:
	.string	"pw_uid"
.LASF51:
	.string	"__pad5"
.LASF7:
	.string	"flag"
.LASF165:
	.string	"gids"
.LASF142:
	.string	"quoting_options"
.LASF25:
	.string	"_flags"
.LASF201:
	.string	"parse_user_spec"
.LASF191:
	.string	"lc_messages"
.LASF143:
	.string	"quote_quoting_options"
.LASF52:
	.string	"_mode"
.LASF47:
	.string	"_codecvt"
.LASF108:
	.string	"LOG10_TIMESPEC_HZ"
.LASF67:
	.string	"long double"
.LASF229:
	.string	"strncmp"
.LASF152:
	.string	"USERSPEC"
.LASF54:
	.string	"FILE"
.LASF183:
	.string	"is_root"
.LASF175:
	.string	"resolved"
.LASF146:
	.string	"LONGINT_OK"
.LASF111:
	.string	"_ISalpha"
.LASF180:
	.string	"n_gids_allocated"
.LASF179:
	.string	"show_errors"
.LASF4:
	.string	"optopt"
.LASF134:
	.string	"locale_quoting_style"
.LASF72:
	.string	"long long unsigned int"
.LASF160:
	.string	"long_opts"
.LASF117:
	.string	"_ISblank"
.LASF19:
	.string	"__off_t"
.LASF144:
	.string	"quoting_style"
.LASF120:
	.string	"_ISalnum"
.LASF82:
	.string	"gr_name"
.LASF99:
	.string	"program_invocation_short_name"
.LASF225:
	.string	"quote"
.LASF50:
	.string	"_freeres_buf"
.LASF114:
	.string	"_ISspace"
.LASF3:
	.string	"opterr"
.LASF238:
	.string	"/root/coreutils"
.LASF21:
	.string	"__time_t"
.LASF177:
	.string	"pgids"
.LASF35:
	.string	"_IO_backup_base"
.LASF213:
	.string	"setlocale"
.LASF44:
	.string	"_shortbuf"
.LASF193:
	.string	"to_uchar"
.LASF77:
	.string	"pw_gid"
.LASF128:
	.string	"shell_always_quoting_style"
.LASF20:
	.string	"__off64_t"
.LASF133:
	.string	"escape_quoting_style"
.LASF33:
	.string	"_IO_buf_end"
.LASF222:
	.string	"setgroups"
.LASF5:
	.string	"name"
.LASF198:
	.string	"fprintf"
.LASF166:
	.string	"in_gids"
.LASF110:
	.string	"_ISlower"
.LASF235:
	.string	"strtok"
.LASF190:
	.string	"map_prog"
.LASF241:
	.string	"x2nrealloc"
.LASF60:
	.string	"stderr"
.LASF13:
	.string	"short int"
.LASF173:
	.string	"usage"
.LASF216:
	.string	"atexit"
.LASF129:
	.string	"shell_escape_quoting_style"
.LASF43:
	.string	"_vtable_offset"
.LASF64:
	.string	"_sys_errlist"
.LASF75:
	.string	"pw_passwd"
.LASF16:
	.string	"__uintmax_t"
.LASF159:
	.string	"skip_chdir"
.LASF107:
	.string	"TIMESPEC_HZ"
.LASF87:
	.string	"__daylight"
.LASF200:
	.string	"strlen"
.LASF203:
	.string	"xgetgroups"
.LASF74:
	.string	"pw_name"
.LASF17:
	.string	"__uid_t"
.LASF103:
	.string	"EXIT_CANNOT_INVOKE"
.LASF27:
	.string	"_IO_read_end"
.LASF92:
	.string	"getdate_err"
.LASF217:
	.string	"getopt_long"
.LASF39:
	.string	"_fileno"
.LASF215:
	.string	"textdomain"
.LASF196:
	.string	"__fmt"
.LASF48:
	.string	"_wide_data"
.LASF0:
	.string	"optarg"
.LASF211:
	.string	"free"
.LASF112:
	.string	"_ISdigit"
.LASF205:
	.string	"dcgettext"
.LASF11:
	.string	"short unsigned int"
.LASF59:
	.string	"stdout"
.LASF30:
	.string	"_IO_write_ptr"
.LASF176:
	.string	"is_res_root"
.LASF90:
	.string	"daylight"
.LASF68:
	.string	"gid_t"
.LASF214:
	.string	"bindtextdomain"
.LASF136:
	.string	"custom_quoting_style"
.LASF231:
	.string	"xstrtoumax"
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
