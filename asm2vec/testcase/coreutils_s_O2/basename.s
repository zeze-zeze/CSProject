	.file	"basename.c"
	.text
.Ltext0:
	.p2align 4
	.type	perform_basename, @function
perform_basename:
.LVL0:
.LFB137:
	.file 1 "src/basename.c"
	.loc 1 105 1 view -0
	.cfi_startproc
	.loc 1 106 3 view .LVU1
	.loc 1 105 1 is_stmt 0 view .LVU2
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%edx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 106 16 view .LVU3
	call	base_name@PLT
.LVL1:
	.loc 1 107 3 view .LVU4
	movq	%rax, %rdi
	.loc 1 106 16 view .LVU5
	movq	%rax, %rbp
.LVL2:
	.loc 1 107 3 is_stmt 1 view .LVU6
	call	strip_trailing_slashes@PLT
.LVL3:
	.loc 1 115 3 view .LVU7
	.loc 1 115 6 is_stmt 0 view .LVU8
	testq	%rbx, %rbx
	je	.L2
	.loc 1 115 14 discriminator 1 view .LVU9
	cmpb	$47, 0(%rbp)
	jne	.L19
.L2:
	.loc 1 118 3 is_stmt 1 view .LVU10
	movq	stdout(%rip), %rsi
	movq	%rbp, %rdi
	call	fputs_unlocked@PLT
.LVL4:
	.loc 1 119 3 view .LVU11
	cmpb	$1, %r13b
.LBB26:
.LBB27:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 2 110 10 is_stmt 0 view .LVU12
	movq	stdout(%rip), %rdi
.LBE27:
.LBE26:
	.loc 1 119 3 view .LVU13
	sbbl	%esi, %esi
.LBB31:
.LBB28:
	.loc 2 110 10 view .LVU14
	movq	40(%rdi), %rax
.LBE28:
.LBE31:
	.loc 1 119 3 view .LVU15
	andl	$10, %esi
.LVL5:
.LBB32:
.LBI26:
	.loc 2 108 1 is_stmt 1 view .LVU16
.LBB29:
	.loc 2 110 3 view .LVU17
	.loc 2 110 10 is_stmt 0 view .LVU18
	cmpq	48(%rdi), %rax
	jnb	.L20
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	%sil, (%rax)
.LVL6:
.L8:
	.loc 2 110 10 view .LVU19
.LBE29:
.LBE32:
	.loc 1 120 3 is_stmt 1 view .LVU20
	.loc 1 121 1 is_stmt 0 view .LVU21
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	.loc 1 120 3 view .LVU22
	movq	%rbp, %rdi
	.loc 1 121 1 view .LVU23
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL7:
	.loc 1 121 1 view .LVU24
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL8:
	.loc 1 121 1 view .LVU25
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	.loc 1 120 3 view .LVU26
	jmp	free@PLT
.LVL9:
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore_state
	.loc 1 116 5 is_stmt 1 view .LVU27
.LBB33:
.LBI33:
	.loc 1 85 1 view .LVU28
.LBB34:
	.loc 1 87 3 view .LVU29
	.loc 1 88 3 view .LVU30
	.loc 1 90 3 view .LVU31
	.loc 1 90 15 is_stmt 0 view .LVU32
	movq	%rbp, %rdi
	call	strlen@PLT
.LVL10:
	.loc 1 91 17 view .LVU33
	movq	%rbx, %rdi
	.loc 1 90 6 view .LVU34
	leaq	0(%rbp,%rax), %r12
.LVL11:
	.loc 1 91 3 is_stmt 1 view .LVU35
	.loc 1 91 17 is_stmt 0 view .LVU36
	call	strlen@PLT
.LVL12:
	.loc 1 91 6 view .LVU37
	addq	%rbx, %rax
.LVL13:
	.loc 1 93 3 is_stmt 1 view .LVU38
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 93 9 view .LVU39
	cmpq	%r12, %rbp
	jnb	.L2
	.loc 1 93 9 is_stmt 0 view .LVU40
	cmpq	%rax, %rbx
	jnb	.L21
	.loc 1 94 5 is_stmt 1 view .LVU41
	.loc 1 94 8 is_stmt 0 view .LVU42
	subq	$1, %r12
.LVL14:
	.loc 1 94 8 view .LVU43
	subq	$1, %rax
.LVL15:
	.loc 1 94 8 view .LVU44
	movzbl	(%rax), %ecx
	cmpb	%cl, (%r12)
	je	.L3
	jmp	.L2
.LVL16:
	.p2align 4,,10
	.p2align 3
.L20:
	.loc 1 94 8 view .LVU45
.LBE34:
.LBE33:
.LBB36:
.LBB30:
	.loc 2 110 10 view .LVU46
	call	__overflow@PLT
.LVL17:
	.loc 2 110 10 view .LVU47
	jmp	.L8
.LVL18:
	.p2align 4,,10
	.p2align 3
.L21:
	.loc 2 110 10 view .LVU48
.LBE30:
.LBE36:
.LBB37:
.LBB35:
	.loc 1 96 3 is_stmt 1 view .LVU49
	.loc 1 96 6 is_stmt 0 view .LVU50
	cmpq	%r12, %rbp
	jnb	.L2
	.loc 1 97 5 is_stmt 1 view .LVU51
	.loc 1 97 9 is_stmt 0 view .LVU52
	movb	$0, (%r12)
	jmp	.L2
.LBE35:
.LBE37:
	.cfi_endproc
.LFE137:
	.size	perform_basename, .-perform_basename
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"basename"
.LC1:
	.string	" invocation"
.LC2:
	.string	""
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC4:
	.string	"Usage: %s NAME [SUFFIX]\n  or:  %s OPTION... NAME...\n"
	.align 8
.LC5:
	.string	"Print NAME with any leading directory components removed.\nIf specified, also remove a trailing SUFFIX.\n"
	.align 8
.LC6:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.align 8
.LC7:
	.string	"  -a, --multiple       support multiple arguments and treat each as a NAME\n  -s, --suffix=SUFFIX  remove a trailing SUFFIX; implies -a\n  -z, --zero           end each output line with NUL, not newline\n"
	.align 8
.LC8:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC9:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC10:
	.string	"\nExamples:\n  %s /usr/bin/sort          -> \"sort\"\n  %s include/stdio.h .h     -> \"stdio\"\n  %s -s .h include/stdio.h  -> \"stdio\"\n  %s -a any/str1 any/str2   -> \"str1\" followed by \"str2\"\n"
	.section	.rodata.str1.1
.LC11:
	.string	"["
.LC12:
	.string	"test invocation"
.LC13:
	.string	"coreutils"
.LC14:
	.string	"Multi-call invocation"
.LC15:
	.string	"sha224sum"
.LC16:
	.string	"sha2 utilities"
.LC17:
	.string	"sha256sum"
.LC18:
	.string	"sha384sum"
.LC19:
	.string	"sha512sum"
.LC20:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC22:
	.string	"GNU coreutils"
.LC23:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC25:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL19:
.LFB135:
	.loc 1 43 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 43 1 is_stmt 0 view .LVU54
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 45 5 view .LVU55
	movl	$5, %edx
	.loc 1 43 1 view .LVU56
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
	.loc 1 43 1 view .LVU57
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 44 3 is_stmt 1 view .LVU58
	.loc 1 44 6 is_stmt 0 view .LVU59
	testl	%edi, %edi
	je	.L23
	.loc 1 45 5 is_stmt 1 view .LVU60
	.loc 1 45 5 view .LVU61
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL20:
	.loc 1 45 5 is_stmt 0 view .LVU62
	call	dcgettext@PLT
.LVL21:
.LBB54:
.LBB55:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 100 10 view .LVU63
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE55:
.LBE54:
	.loc 1 45 5 view .LVU64
	movq	%rax, %rdx
.LVL22:
.LBB57:
.LBI54:
	.loc 3 98 1 is_stmt 1 view .LVU65
.LBB56:
	.loc 3 100 3 view .LVU66
	.loc 3 100 10 is_stmt 0 view .LVU67
	xorl	%eax, %eax
.LVL23:
	.loc 3 100 10 view .LVU68
	call	__fprintf_chk@PLT
.LVL24:
.L24:
	.loc 3 100 10 view .LVU69
.LBE56:
.LBE57:
	.loc 1 78 3 is_stmt 1 view .LVU70
	movl	%ebp, %edi
	call	exit@PLT
.LVL25:
.L23:
	.loc 1 48 7 view .LVU71
	.loc 1 48 15 is_stmt 0 view .LVU72
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL26:
.LBB58:
.LBB59:
	.file 4 "src/system.h"
	.loc 4 636 67 view .LVU73
	leaq	.LC17(%rip), %rbx
.LBE59:
.LBE58:
	.loc 1 48 15 view .LVU74
	call	dcgettext@PLT
.LVL27:
.LBB85:
.LBB86:
	.loc 3 107 10 view .LVU75
	movq	%r12, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE86:
.LBE85:
	.loc 1 48 15 view .LVU76
	movq	%rax, %rsi
.LVL28:
.LBB88:
.LBI85:
	.loc 3 105 1 is_stmt 1 view .LVU77
.LBB87:
	.loc 3 107 3 view .LVU78
	.loc 3 107 10 is_stmt 0 view .LVU79
	xorl	%eax, %eax
.LVL29:
	.loc 3 107 10 view .LVU80
	call	__printf_chk@PLT
.LVL30:
	.loc 3 107 10 view .LVU81
.LBE87:
.LBE88:
	.loc 1 53 7 is_stmt 1 view .LVU82
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC5(%rip), %rsi
	call	dcgettext@PLT
.LVL31:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL32:
	.loc 1 58 7 view .LVU83
.LBB89:
.LBI89:
	.loc 4 588 1 view .LVU84
.LBB90:
	.loc 4 590 3 view .LVU85
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC6(%rip), %rsi
	call	dcgettext@PLT
.LVL33:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL34:
.LBE90:
.LBE89:
	.loc 1 60 7 view .LVU86
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC7(%rip), %rsi
	call	dcgettext@PLT
.LVL35:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL36:
	.loc 1 65 7 view .LVU87
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC8(%rip), %rsi
	call	dcgettext@PLT
.LVL37:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL38:
	.loc 1 66 7 view .LVU88
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC9(%rip), %rsi
	call	dcgettext@PLT
.LVL39:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL40:
	.loc 1 67 7 view .LVU89
	movq	program_name(%rip), %r12
	.loc 1 67 15 is_stmt 0 view .LVU90
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC10(%rip), %rsi
	call	dcgettext@PLT
.LVL41:
.LBB91:
.LBB92:
	.loc 3 107 10 view .LVU91
	movq	%r12, %r9
	movq	%r12, %r8
	movq	%r12, %rcx
.LBE92:
.LBE91:
	.loc 1 67 15 view .LVU92
	movq	%rax, %rsi
.LVL42:
.LBB94:
.LBI91:
	.loc 3 105 1 is_stmt 1 view .LVU93
.LBB93:
	.loc 3 107 3 view .LVU94
	.loc 3 107 10 is_stmt 0 view .LVU95
	movq	%r12, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
.LVL43:
	.loc 3 107 10 view .LVU96
	call	__printf_chk@PLT
.LVL44:
	.loc 3 107 10 view .LVU97
.LBE93:
.LBE94:
	.loc 1 76 7 is_stmt 1 view .LVU98
.LBB95:
.LBI58:
	.loc 4 634 1 view .LVU99
.LBB84:
	.loc 4 636 3 view .LVU100
	.loc 4 636 67 is_stmt 0 view .LVU101
	leaq	.LC11(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC18(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC12(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC13(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC14(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC15(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 4 646 3 is_stmt 1 view .LVU102
.LVL45:
	.loc 4 647 3 view .LVU103
	.loc 4 649 3 view .LVU104
	.loc 4 649 9 view .LVU105
	.loc 4 636 67 is_stmt 0 view .LVU106
	movq	%rax, 32(%rsp)
	leaq	.LC16(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC19(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC0(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 4 647 25 view .LVU107
	movq	%rsp, %rax
.LVL46:
	.p2align 4,,10
	.p2align 3
.L26:
	.loc 4 650 5 is_stmt 1 view .LVU108
	.loc 4 649 18 is_stmt 0 view .LVU109
	movq	16(%rax), %rdi
	.loc 4 650 13 view .LVU110
	addq	$16, %rax
.LVL47:
	.loc 4 649 9 is_stmt 1 view .LVU111
	testq	%rdi, %rdi
	je	.L25
	.loc 4 649 33 is_stmt 0 view .LVU112
	movl	$9, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 4 649 28 view .LVU113
	testb	%dl, %dl
	jne	.L26
.L25:
	.loc 4 652 3 is_stmt 1 view .LVU114
	.loc 4 652 15 is_stmt 0 view .LVU115
	movq	8(%rax), %r12
	.loc 4 655 11 view .LVU116
	movl	$5, %edx
	leaq	.LC20(%rip), %rsi
	xorl	%edi, %edi
	.loc 4 652 6 view .LVU117
	testq	%r12, %r12
	je	.L27
	.loc 4 653 5 is_stmt 1 view .LVU118
.LVL48:
	.loc 4 655 3 view .LVU119
	.loc 4 655 11 is_stmt 0 view .LVU120
	call	dcgettext@PLT
.LVL49:
.LBB60:
.LBB61:
	.loc 3 107 10 view .LVU121
	leaq	.LC21(%rip), %rcx
	movl	$1, %edi
	leaq	.LC22(%rip), %rdx
.LBE61:
.LBE60:
	.loc 4 655 11 view .LVU122
	movq	%rax, %rsi
.LVL50:
.LBB65:
.LBI60:
	.loc 3 105 1 is_stmt 1 view .LVU123
.LBB62:
	.loc 3 107 3 view .LVU124
	.loc 3 107 10 is_stmt 0 view .LVU125
	xorl	%eax, %eax
.LVL51:
	.loc 3 107 10 view .LVU126
	call	__printf_chk@PLT
.LVL52:
	.loc 3 107 10 view .LVU127
.LBE62:
.LBE65:
	.loc 4 659 3 is_stmt 1 view .LVU128
	.loc 4 659 29 is_stmt 0 view .LVU129
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL53:
	movq	%rax, %rdi
.LVL54:
	.loc 4 660 3 is_stmt 1 view .LVU130
	.loc 4 660 6 is_stmt 0 view .LVU131
	testq	%rax, %rax
	je	.L28
	.loc 4 660 22 view .LVU132
	movl	$3, %edx
	leaq	.LC23(%rip), %rsi
	call	strncmp@PLT
.LVL55:
	.loc 4 660 19 view .LVU133
	testl	%eax, %eax
	jne	.L31
.LVL56:
.L28:
	.loc 4 669 3 is_stmt 1 view .LVU134
	.loc 4 669 11 is_stmt 0 view .LVU135
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC25(%rip), %rsi
	call	dcgettext@PLT
.LVL57:
.LBB66:
.LBB67:
	.loc 3 107 10 view .LVU136
	leaq	.LC0(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	movl	$1, %edi
.LBE67:
.LBE66:
	.loc 4 669 11 view .LVU137
	movq	%rax, %rsi
.LVL58:
.LBB73:
.LBI66:
	.loc 3 105 1 is_stmt 1 view .LVU138
.LBB68:
	.loc 3 107 3 view .LVU139
	.loc 3 107 10 is_stmt 0 view .LVU140
	xorl	%eax, %eax
.LVL59:
	.loc 3 107 10 view .LVU141
.LBE68:
.LBE73:
	.loc 4 671 3 view .LVU142
	leaq	.LC1(%rip), %r13
.LBB74:
.LBB69:
	.loc 3 107 10 view .LVU143
	call	__printf_chk@PLT
.LVL60:
	.loc 3 107 10 view .LVU144
.LBE69:
.LBE74:
	.loc 4 671 3 is_stmt 1 view .LVU145
	cmpq	%rbx, %r12
	leaq	.LC2(%rip), %rcx
	cmovne	%rcx, %r13
.L29:
	.loc 4 671 11 is_stmt 0 view .LVU146
	xorl	%edi, %edi
	leaq	.LC26(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL61:
.LBB75:
.LBB76:
	.loc 3 107 10 view .LVU147
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE76:
.LBE75:
	.loc 4 671 11 view .LVU148
	movq	%rax, %rsi
.LVL62:
.LBB78:
.LBI75:
	.loc 3 105 1 is_stmt 1 view .LVU149
.LBB77:
	.loc 3 107 3 view .LVU150
	.loc 3 107 10 is_stmt 0 view .LVU151
	xorl	%eax, %eax
.LVL63:
	.loc 3 107 10 view .LVU152
	call	__printf_chk@PLT
.LVL64:
	.loc 3 107 10 view .LVU153
.LBE77:
.LBE78:
	.loc 4 673 1 view .LVU154
	jmp	.L24
.LVL65:
.L27:
	.loc 4 655 3 is_stmt 1 view .LVU155
	.loc 4 655 11 is_stmt 0 view .LVU156
	call	dcgettext@PLT
.LVL66:
.LBB79:
.LBB63:
	.loc 3 107 10 view .LVU157
	leaq	.LC21(%rip), %rcx
	movl	$1, %edi
	leaq	.LC22(%rip), %rdx
.LBE63:
.LBE79:
	.loc 4 655 11 view .LVU158
	movq	%rax, %rsi
.LVL67:
.LBB80:
	.loc 3 105 1 is_stmt 1 view .LVU159
.LBB64:
	.loc 3 107 3 view .LVU160
	.loc 3 107 10 is_stmt 0 view .LVU161
	xorl	%eax, %eax
.LVL68:
	.loc 3 107 10 view .LVU162
	call	__printf_chk@PLT
.LVL69:
	.loc 3 107 10 view .LVU163
.LBE64:
.LBE80:
	.loc 4 659 3 is_stmt 1 view .LVU164
	.loc 4 659 29 is_stmt 0 view .LVU165
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL70:
	movq	%rax, %rdi
.LVL71:
	.loc 4 660 3 is_stmt 1 view .LVU166
	.loc 4 660 6 is_stmt 0 view .LVU167
	testq	%rax, %rax
	je	.L30
	.loc 4 660 22 view .LVU168
	movl	$3, %edx
	leaq	.LC23(%rip), %rsi
	call	strncmp@PLT
.LVL72:
	.loc 4 660 19 view .LVU169
	testl	%eax, %eax
	jne	.L49
.L30:
	.loc 4 669 3 is_stmt 1 view .LVU170
	.loc 4 669 11 is_stmt 0 view .LVU171
	movl	$5, %edx
	leaq	.LC25(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL73:
.LBB81:
.LBB70:
	.loc 3 107 10 view .LVU172
	leaq	.LC0(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	movl	$1, %edi
.LBE70:
.LBE81:
	.loc 4 669 11 view .LVU173
	movq	%rax, %rsi
.LVL74:
.LBB82:
	.loc 3 105 1 is_stmt 1 view .LVU174
.LBB71:
	.loc 3 107 3 view .LVU175
	.loc 3 107 10 is_stmt 0 view .LVU176
	xorl	%eax, %eax
.LVL75:
	.loc 3 107 10 view .LVU177
.LBE71:
.LBE82:
	.loc 4 646 15 view .LVU178
	leaq	.LC0(%rip), %r12
.LBB83:
.LBB72:
	.loc 3 107 10 view .LVU179
	call	__printf_chk@PLT
.LVL76:
	.loc 3 107 10 view .LVU180
.LBE72:
.LBE83:
	.loc 4 671 3 is_stmt 1 view .LVU181
	leaq	.LC1(%rip), %r13
	jmp	.L29
.L49:
	.loc 4 646 15 is_stmt 0 view .LVU182
	leaq	.LC0(%rip), %r12
.LVL77:
.L31:
	.loc 4 666 7 is_stmt 1 view .LVU183
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC24(%rip), %rsi
	call	dcgettext@PLT
.LVL78:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL79:
	jmp	.L28
.LBE84:
.LBE95:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC27:
	.string	"/usr/local/share/locale"
.LC28:
	.string	"+as:z"
.LC29:
	.string	"David MacKenzie"
.LC30:
	.string	"missing operand"
.LC31:
	.string	"extra operand %s"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL80:
.LFB138:
	.loc 1 125 1 view -0
	.cfi_startproc
	.loc 1 125 1 is_stmt 0 view .LVU185
	endbr64
	.loc 1 126 3 is_stmt 1 view .LVU186
.LVL81:
	.loc 1 127 3 view .LVU187
	.loc 1 128 3 view .LVU188
	.loc 1 130 33 view .LVU189
	.loc 1 131 3 view .LVU190
	.loc 1 125 1 is_stmt 0 view .LVU191
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	.loc 1 128 15 view .LVU192
	xorl	%r14d, %r14d
	.loc 1 125 1 view .LVU193
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	.loc 1 126 8 view .LVU194
	xorl	%r13d, %r13d
	.loc 1 125 1 view .LVU195
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	.loc 1 127 8 view .LVU196
	xorl	%r12d, %r12d
	.loc 1 125 1 view .LVU197
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.loc 1 131 3 view .LVU198
	movq	(%rsi), %rdi
.LVL82:
	.loc 1 125 1 view .LVU199
	movq	%rsi, %rbx
	.loc 1 131 3 view .LVU200
	call	set_program_name@PLT
.LVL83:
	.loc 1 132 3 is_stmt 1 view .LVU201
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL84:
	.loc 1 133 3 view .LVU202
	leaq	.LC27(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	bindtextdomain@PLT
.LVL85:
	.loc 1 134 3 view .LVU203
	leaq	.LC13(%rip), %rdi
	call	textdomain@PLT
.LVL86:
	.loc 1 136 3 view .LVU204
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL87:
	.p2align 4,,10
	.p2align 3
.L51:
	.loc 1 138 3 view .LVU205
.LBB96:
	.loc 1 140 7 view .LVU206
	.loc 1 140 15 is_stmt 0 view .LVU207
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	leaq	.LC28(%rip), %rdx
	call	getopt_long@PLT
.LVL88:
	.loc 1 142 7 is_stmt 1 view .LVU208
	.loc 1 142 10 is_stmt 0 view .LVU209
	cmpl	$-1, %eax
	je	.L52
	.loc 1 145 7 is_stmt 1 view .LVU210
	cmpl	$97, %eax
	je	.L71
	jle	.L73
	cmpl	$115, %eax
	jne	.L74
	.loc 1 148 11 view .LVU211
	.loc 1 148 18 is_stmt 0 view .LVU212
	movq	optarg(%rip), %r14
.LVL89:
.L71:
	.loc 1 153 26 view .LVU213
	movl	$1, %r13d
.LVL90:
	.loc 1 153 26 view .LVU214
	jmp	.L51
.LVL91:
	.p2align 4,,10
	.p2align 3
.L74:
	.loc 1 145 7 view .LVU215
	cmpl	$122, %eax
	jne	.L72
	.loc 1 157 20 view .LVU216
	movl	$1, %r12d
.LVL92:
	.loc 1 157 20 view .LVU217
	jmp	.L51
.LVL93:
	.p2align 4,,10
	.p2align 3
.L73:
	.loc 1 145 7 view .LVU218
	cmpl	$-131, %eax
	jne	.L75
	.loc 1 160 9 is_stmt 1 view .LVU219
	.loc 1 160 30 view .LVU220
	.loc 1 161 9 view .LVU221
	movq	stdout(%rip), %rdi
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
.LVL94:
	.loc 1 161 9 is_stmt 0 view .LVU222
	xorl	%r9d, %r9d
	leaq	.LC29(%rip), %r8
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL95:
	.loc 1 161 9 is_stmt 1 view .LVU223
	xorl	%edi, %edi
	call	exit@PLT
.LVL96:
.L75:
	.loc 1 145 7 is_stmt 0 view .LVU224
	cmpl	$-130, %eax
	jne	.L72
	.loc 1 160 9 is_stmt 1 view .LVU225
	xorl	%edi, %edi
	call	usage
.LVL97:
.L52:
	.loc 1 160 9 is_stmt 0 view .LVU226
.LBE96:
	.loc 1 168 3 is_stmt 1 view .LVU227
	.loc 1 168 12 is_stmt 0 view .LVU228
	movl	optind(%rip), %eax
.LVL98:
	.loc 1 168 6 view .LVU229
	cmpl	%ebp, %eax
	jge	.L76
	.loc 1 174 3 is_stmt 1 view .LVU230
	.loc 1 174 6 is_stmt 0 view .LVU231
	testb	%r13b, %r13b
	jne	.L60
	movslq	%eax, %rcx
	.loc 1 174 33 discriminator 1 view .LVU232
	addl	$2, %eax
	.loc 1 174 23 discriminator 1 view .LVU233
	cmpl	%ebp, %eax
	jl	.L77
	.loc 1 180 3 is_stmt 1 view .LVU234
	.loc 1 186 5 view .LVU235
	movzbl	%r12b, %edx
	movl	$0, %esi
	je	.L78
.L63:
	.loc 1 186 5 is_stmt 0 discriminator 4 view .LVU236
	movq	(%rbx,%rcx,8), %rdi
	call	perform_basename
.LVL99:
.L62:
	.loc 1 189 3 is_stmt 1 view .LVU237
	.loc 1 190 1 is_stmt 0 view .LVU238
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
.LVL100:
	.loc 1 190 1 view .LVU239
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL101:
	.loc 1 190 1 view .LVU240
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL102:
	.loc 1 190 1 view .LVU241
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL103:
	.loc 1 190 1 view .LVU242
	popq	%r14
	.cfi_def_cfa_offset 8
.LVL104:
	.loc 1 190 1 view .LVU243
	ret
.LVL105:
.L60:
	.cfi_restore_state
	.loc 1 183 9 is_stmt 1 discriminator 2 view .LVU244
	.loc 1 183 31 is_stmt 0 discriminator 2 view .LVU245
	cltq
	.loc 1 183 9 discriminator 2 view .LVU246
	movl	%r12d, %edx
	movq	%r14, %rsi
	movq	(%rbx,%rax,8), %rdi
	call	perform_basename
.LVL106:
	.loc 1 182 29 is_stmt 1 discriminator 2 view .LVU247
	.loc 1 182 35 is_stmt 0 discriminator 2 view .LVU248
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
	.loc 1 182 14 is_stmt 1 discriminator 2 view .LVU249
	.loc 1 182 7 is_stmt 0 discriminator 2 view .LVU250
	cmpl	%ebp, %eax
	jl	.L60
	jmp	.L62
.L78:
	.loc 1 186 5 discriminator 1 view .LVU251
	movq	8(%rbx,%rcx,8), %rsi
	jmp	.L63
.L76:
	.loc 1 170 7 is_stmt 1 view .LVU252
	.loc 1 170 20 is_stmt 0 view .LVU253
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL107:
	.loc 1 170 7 view .LVU254
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 170 20 view .LVU255
	movq	%rax, %rdx
	.loc 1 170 7 view .LVU256
	xorl	%eax, %eax
	call	error@PLT
.LVL108:
.L72:
	.loc 1 171 7 is_stmt 1 view .LVU257
	movl	$1, %edi
	call	usage
.LVL109:
.L77:
	.loc 1 176 7 view .LVU258
	movq	16(%rbx,%rcx,8), %rdi
	call	quote@PLT
.LVL110:
	.loc 1 176 20 is_stmt 0 view .LVU259
	movl	$5, %edx
	leaq	.LC31(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 176 7 view .LVU260
	movq	%rax, %r12
.LVL111:
	.loc 1 176 20 view .LVU261
	call	dcgettext@PLT
.LVL112:
	.loc 1 176 7 view .LVU262
	xorl	%edi, %edi
	movq	%r12, %rcx
	xorl	%esi, %esi
	.loc 1 176 20 view .LVU263
	movq	%rax, %rdx
	.loc 1 176 7 view .LVU264
	xorl	%eax, %eax
	call	error@PLT
.LVL113:
	.loc 1 177 7 is_stmt 1 view .LVU265
	movl	$1, %edi
	call	usage
.LVL114:
	.cfi_endproc
.LFE138:
	.size	main, .-main
	.section	.rodata.str1.1
.LC32:
	.string	"multiple"
.LC33:
	.string	"suffix"
.LC34:
	.string	"zero"
.LC35:
	.string	"help"
.LC36:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 192
longopts:
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC33
	.long	1
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC35
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC36
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
	.file 5 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 14 "./lib/sys/select.h"
	.file 15 "/usr/include/time.h"
	.file 16 "/usr/include/signal.h"
	.file 17 "/usr/include/unistd.h"
	.file 18 "/usr/include/errno.h"
	.file 19 "src/version.h"
	.file 20 "./lib/exitfail.h"
	.file 21 "./lib/timespec.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/error.h"
	.file 26 "./lib/quote.h"
	.file 27 "/usr/include/stdlib.h"
	.file 28 "/usr/include/locale.h"
	.file 29 "/usr/include/libintl.h"
	.file 30 "/usr/include/string.h"
	.file 31 "./lib/dirname.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12a5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF146
	.byte	0xc
	.long	.LASF147
	.long	.LASF148
	.long	.Ldebug_ranges0+0x230
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x37
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF4
	.byte	0x5
	.byte	0x3b
	.byte	0xc
	.long	0x53
	.uleb128 0x8
	.long	.LASF19
	.byte	0x20
	.byte	0x6
	.byte	0x32
	.byte	0x8
	.long	0xb9
	.uleb128 0x9
	.long	.LASF5
	.byte	0x6
	.byte	0x34
	.byte	0xf
	.long	0xbe
	.byte	0
	.uleb128 0x9
	.long	.LASF6
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.long	0x53
	.byte	0x8
	.uleb128 0x9
	.long	.LASF7
	.byte	0x6
	.byte	0x38
	.byte	0x8
	.long	0xce
	.byte	0x10
	.uleb128 0xa
	.string	"val"
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x98
	.byte	0x19
	.long	0x10c
	.uleb128 0xc
	.long	.LASF17
	.byte	0x8
	.byte	0x99
	.byte	0x1b
	.long	0x10c
	.uleb128 0xc
	.long	.LASF18
	.byte	0x8
	.byte	0xa0
	.byte	0x1a
	.long	0x10c
	.uleb128 0x8
	.long	.LASF20
	.byte	0xd8
	.byte	0x9
	.byte	0x31
	.byte	0x8
	.long	0x2be
	.uleb128 0x9
	.long	.LASF21
	.byte	0x9
	.byte	0x33
	.byte	0x7
	.long	0x53
	.byte	0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x9
	.byte	0x36
	.byte	0x9
	.long	0x35
	.byte	0x8
	.uleb128 0x9
	.long	.LASF23
	.byte	0x9
	.byte	0x37
	.byte	0x9
	.long	0x35
	.byte	0x10
	.uleb128 0x9
	.long	.LASF24
	.byte	0x9
	.byte	0x38
	.byte	0x9
	.long	0x35
	.byte	0x18
	.uleb128 0x9
	.long	.LASF25
	.byte	0x9
	.byte	0x39
	.byte	0x9
	.long	0x35
	.byte	0x20
	.uleb128 0x9
	.long	.LASF26
	.byte	0x9
	.byte	0x3a
	.byte	0x9
	.long	0x35
	.byte	0x28
	.uleb128 0x9
	.long	.LASF27
	.byte	0x9
	.byte	0x3b
	.byte	0x9
	.long	0x35
	.byte	0x30
	.uleb128 0x9
	.long	.LASF28
	.byte	0x9
	.byte	0x3c
	.byte	0x9
	.long	0x35
	.byte	0x38
	.uleb128 0x9
	.long	.LASF29
	.byte	0x9
	.byte	0x3d
	.byte	0x9
	.long	0x35
	.byte	0x40
	.uleb128 0x9
	.long	.LASF30
	.byte	0x9
	.byte	0x40
	.byte	0x9
	.long	0x35
	.byte	0x48
	.uleb128 0x9
	.long	.LASF31
	.byte	0x9
	.byte	0x41
	.byte	0x9
	.long	0x35
	.byte	0x50
	.uleb128 0x9
	.long	.LASF32
	.byte	0x9
	.byte	0x42
	.byte	0x9
	.long	0x35
	.byte	0x58
	.uleb128 0x9
	.long	.LASF33
	.byte	0x9
	.byte	0x44
	.byte	0x16
	.long	0x2d7
	.byte	0x60
	.uleb128 0x9
	.long	.LASF34
	.byte	0x9
	.byte	0x46
	.byte	0x14
	.long	0x2dd
	.byte	0x68
	.uleb128 0x9
	.long	.LASF35
	.byte	0x9
	.byte	0x48
	.byte	0x7
	.long	0x53
	.byte	0x70
	.uleb128 0x9
	.long	.LASF36
	.byte	0x9
	.byte	0x49
	.byte	0x7
	.long	0x53
	.byte	0x74
	.uleb128 0x9
	.long	.LASF37
	.byte	0x9
	.byte	0x4a
	.byte	0xb
	.long	0x113
	.byte	0x78
	.uleb128 0x9
	.long	.LASF38
	.byte	0x9
	.byte	0x4d
	.byte	0x12
	.long	0xf7
	.byte	0x80
	.uleb128 0x9
	.long	.LASF39
	.byte	0x9
	.byte	0x4e
	.byte	0xf
	.long	0xfe
	.byte	0x82
	.uleb128 0x9
	.long	.LASF40
	.byte	0x9
	.byte	0x4f
	.byte	0x8
	.long	0x2e3
	.byte	0x83
	.uleb128 0x9
	.long	.LASF41
	.byte	0x9
	.byte	0x51
	.byte	0xf
	.long	0x2f3
	.byte	0x88
	.uleb128 0x9
	.long	.LASF42
	.byte	0x9
	.byte	0x59
	.byte	0xd
	.long	0x11f
	.byte	0x90
	.uleb128 0x9
	.long	.LASF43
	.byte	0x9
	.byte	0x5b
	.byte	0x17
	.long	0x2fe
	.byte	0x98
	.uleb128 0x9
	.long	.LASF44
	.byte	0x9
	.byte	0x5c
	.byte	0x19
	.long	0x309
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x9
	.byte	0x5d
	.byte	0x14
	.long	0x2dd
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x9
	.byte	0x5e
	.byte	0x9
	.long	0xee
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x9
	.byte	0x5f
	.byte	0xa
	.long	0xd4
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF48
	.byte	0x9
	.byte	0x60
	.byte	0x7
	.long	0x53
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x9
	.byte	0x62
	.byte	0x8
	.long	0x30f
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF50
	.byte	0xa
	.byte	0x7
	.byte	0x19
	.long	0x137
	.uleb128 0xe
	.long	.LASF149
	.byte	0x9
	.byte	0x2b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF51
	.uleb128 0x3
	.byte	0x8
	.long	0x2d2
	.uleb128 0x3
	.byte	0x8
	.long	0x137
	.uleb128 0x10
	.long	0x3b
	.long	0x2f3
	.uleb128 0x11
	.long	0xe0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ca
	.uleb128 0xf
	.long	.LASF52
	.uleb128 0x3
	.byte	0x8
	.long	0x2f9
	.uleb128 0xf
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.long	0x304
	.uleb128 0x10
	.long	0x3b
	.long	0x31f
	.uleb128 0x11
	.long	0xe0
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0xb
	.byte	0x89
	.byte	0xe
	.long	0x32b
	.uleb128 0x3
	.byte	0x8
	.long	0x2be
	.uleb128 0xb
	.long	0x32b
	.uleb128 0x2
	.long	.LASF55
	.byte	0xb
	.byte	0x8a
	.byte	0xe
	.long	0x32b
	.uleb128 0x2
	.long	.LASF56
	.byte	0xb
	.byte	0x8b
	.byte	0xe
	.long	0x32b
	.uleb128 0x2
	.long	.LASF57
	.byte	0xc
	.byte	0x1a
	.byte	0xc
	.long	0x53
	.uleb128 0x10
	.long	0xc4
	.long	0x365
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.long	0x35a
	.uleb128 0x2
	.long	.LASF58
	.byte	0xc
	.byte	0x1b
	.byte	0x1a
	.long	0x365
	.uleb128 0x2
	.long	.LASF59
	.byte	0xc
	.byte	0x1e
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF60
	.byte	0xc
	.byte	0x1f
	.byte	0x1a
	.long	0x365
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF62
	.uleb128 0xc
	.long	.LASF63
	.byte	0xd
	.byte	0x7
	.byte	0x12
	.long	0x12b
	.uleb128 0x13
	.long	.LASF64
	.byte	0xe
	.value	0x30c
	.byte	0x1
	.long	0x53
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF65
	.uleb128 0x10
	.long	0x35
	.long	0x3cc
	.uleb128 0x11
	.long	0xe0
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x3bc
	.uleb128 0x2
	.long	.LASF67
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF68
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x10c
	.uleb128 0x2
	.long	.LASF69
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x3bc
	.uleb128 0x2
	.long	.LASF70
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF71
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x10c
	.uleb128 0x13
	.long	.LASF72
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x53
	.uleb128 0x14
	.uleb128 0x3
	.byte	0x8
	.long	0x421
	.uleb128 0x10
	.long	0xc4
	.long	0x438
	.uleb128 0x11
	.long	0xe0
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x428
	.uleb128 0x13
	.long	.LASF73
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x438
	.uleb128 0x13
	.long	.LASF74
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x438
	.uleb128 0x13
	.long	.LASF75
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x464
	.uleb128 0x3
	.byte	0x8
	.long	0x35
	.uleb128 0x13
	.long	.LASF76
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x464
	.uleb128 0x2
	.long	.LASF77
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x35
	.uleb128 0x2
	.long	.LASF78
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x35
	.uleb128 0x2
	.long	.LASF79
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0xbe
	.uleb128 0x2
	.long	.LASF80
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x5a
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x15
	.byte	0x29
	.byte	0x6
	.long	0x4bf
	.uleb128 0x16
	.long	.LASF81
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x4d4
	.uleb128 0x17
	.long	.LASF82
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x53
	.byte	0x4
	.value	0x147
	.byte	0x1
	.long	0x4f2
	.uleb128 0x19
	.long	.LASF83
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF84
	.sleb128 -131
	.byte	0
	.uleb128 0x10
	.long	0x42
	.long	0x4fd
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.long	0x4f2
	.uleb128 0x2
	.long	.LASF85
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x4fd
	.uleb128 0x2
	.long	.LASF86
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0xbe
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x56f
	.uleb128 0x17
	.long	.LASF87
	.byte	0
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.uleb128 0x17
	.long	.LASF89
	.byte	0x2
	.uleb128 0x17
	.long	.LASF90
	.byte	0x3
	.uleb128 0x17
	.long	.LASF91
	.byte	0x4
	.uleb128 0x17
	.long	.LASF92
	.byte	0x5
	.uleb128 0x17
	.long	.LASF93
	.byte	0x6
	.uleb128 0x17
	.long	.LASF94
	.byte	0x7
	.uleb128 0x17
	.long	.LASF95
	.byte	0x8
	.uleb128 0x17
	.long	.LASF96
	.byte	0x9
	.uleb128 0x17
	.long	.LASF97
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x51a
	.uleb128 0x13
	.long	.LASF98
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x365
	.uleb128 0x10
	.long	0x56f
	.long	0x58c
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.long	0x581
	.uleb128 0x13
	.long	.LASF99
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x58c
	.uleb128 0x2
	.long	.LASF100
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x422
	.uleb128 0x2
	.long	.LASF101
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0xe7
	.uleb128 0x2
	.long	.LASF102
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x53
	.uleb128 0xf
	.long	.LASF103
	.uleb128 0x2
	.long	.LASF104
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x5c2
	.uleb128 0x10
	.long	0xb9
	.long	0x5e3
	.uleb128 0x11
	.long	0xe0
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x5d3
	.uleb128 0x1b
	.long	.LASF151
	.byte	0x1
	.byte	0x1f
	.byte	0x1c
	.long	0x5e3
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	0x53
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x8cd
	.uleb128 0x1d
	.long	.LASF105
	.byte	0x1
	.byte	0x7c
	.byte	0xb
	.long	0x53
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x1d
	.long	.LASF106
	.byte	0x1
	.byte	0x7c
	.byte	0x18
	.long	0x464
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x1e
	.long	.LASF107
	.byte	0x1
	.byte	0x7e
	.byte	0x8
	.long	0x8cd
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x1
	.byte	0x7f
	.byte	0x8
	.long	0x8cd
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.byte	0x80
	.byte	0xf
	.long	0xbe
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x1f
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.long	0x751
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.byte	0x8c
	.byte	0xb
	.long	0x53
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x21
	.quad	.LVL88
	.long	0x11b2
	.long	0x6e8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL95
	.long	0x11be
	.long	0x726
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL96
	.long	0x11ca
	.long	0x73d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL97
	.long	0xa89
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL83
	.long	0x11d7
	.uleb128 0x21
	.quad	.LVL84
	.long	0x11e3
	.long	0x782
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x21
	.quad	.LVL85
	.long	0x11ef
	.long	0x7ae
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.byte	0
	.uleb128 0x21
	.quad	.LVL86
	.long	0x11fb
	.long	0x7cd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.uleb128 0x24
	.quad	.LVL87
	.long	0x1207
	.uleb128 0x24
	.quad	.LVL99
	.long	0x8d4
	.uleb128 0x21
	.quad	.LVL106
	.long	0x8d4
	.long	0x805
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL107
	.long	0x1214
	.long	0x82e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL108
	.long	0x1220
	.long	0x84a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL109
	.long	0xa89
	.long	0x861
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.quad	.LVL110
	.long	0x122c
	.uleb128 0x21
	.quad	.LVL112
	.long	0x1214
	.long	0x897
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL113
	.long	0x1220
	.long	0x8b9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL114
	.long	0xa89
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF110
	.uleb128 0x25
	.long	.LASF152
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4d
	.uleb128 0x1d
	.long	.LASF111
	.byte	0x1
	.byte	0x68
	.byte	0x1f
	.long	0xbe
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1d
	.long	.LASF109
	.byte	0x1
	.byte	0x68
	.byte	0x33
	.long	0xbe
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.byte	0x68
	.byte	0x40
	.long	0x8cd
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.byte	0x6a
	.byte	0x9
	.long	0x35
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x26
	.long	0x1194
	.quad	.LBI26
	.byte	.LVU16
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x77
	.byte	0x3
	.long	0x976
	.uleb128 0x27
	.long	0x11a5
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x24
	.quad	.LVL17
	.long	0x1238
	.byte	0
	.uleb128 0x26
	.long	0xa4d
	.quad	.LBI33
	.byte	.LVU28
	.long	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x74
	.byte	0x5
	.long	0x9f6
	.uleb128 0x27
	.long	0xa66
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x27
	.long	0xa5a
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x29
	.long	0xa72
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x29
	.long	0xa7d
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x21
	.quad	.LVL10
	.long	0x1245
	.long	0x9e0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL12
	.long	0x1245
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL1
	.long	0x1252
	.long	0xa0f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x21
	.quad	.LVL3
	.long	0x125e
	.long	0xa27
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL4
	.long	0x126a
	.long	0xa3f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL9
	.long	0x1277
	.byte	0
	.uleb128 0x2b
	.long	.LASF115
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x1
	.long	0xa89
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.byte	0x55
	.byte	0x16
	.long	0x35
	.uleb128 0x2c
	.long	.LASF109
	.byte	0x1
	.byte	0x55
	.byte	0x28
	.long	0xbe
	.uleb128 0x2d
	.string	"np"
	.byte	0x1
	.byte	0x57
	.byte	0x9
	.long	0x35
	.uleb128 0x2d
	.string	"sp"
	.byte	0x1
	.byte	0x58
	.byte	0xf
	.long	0xbe
	.byte	0
	.uleb128 0x2e
	.long	.LASF113
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x10a5
	.uleb128 0x1d
	.long	.LASF114
	.byte	0x1
	.byte	0x2a
	.byte	0xc
	.long	0x53
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x26
	.long	0x1169
	.quad	.LBI54
	.byte	.LVU65
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x2d
	.byte	0x5
	.long	0xb08
	.uleb128 0x27
	.long	0x1186
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x27
	.long	0x117a
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x23
	.quad	.LVL24
	.long	0x1284
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x10a5
	.quad	.LBI58
	.byte	.LVU99
	.long	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x4c
	.byte	0x7
	.long	0xe1b
	.uleb128 0x2f
	.long	0x10b3
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x30
	.long	0x10f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.long	0x10fd
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x29
	.long	0x110a
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x29
	.long	0x1117
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x31
	.long	0x114a
	.quad	.LBI60
	.byte	.LVU123
	.long	.Ldebug_ranges0+0xe0
	.byte	0x4
	.value	0x28f
	.byte	0x3
	.long	0xbec
	.uleb128 0x27
	.long	0x115b
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x21
	.quad	.LVL52
	.long	0x1290
	.long	0xbbe
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.byte	0
	.uleb128 0x23
	.quad	.LVL69
	.long	0x1290
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x114a
	.quad	.LBI66
	.byte	.LVU138
	.long	.Ldebug_ranges0+0x130
	.byte	0x4
	.value	0x29d
	.byte	0x3
	.long	0xc64
	.uleb128 0x27
	.long	0x115b
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x21
	.quad	.LVL60
	.long	0x1290
	.long	0xc3d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL76
	.long	0x1290
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x114a
	.quad	.LBI75
	.byte	.LVU149
	.long	.Ldebug_ranges0+0x1a0
	.byte	0x4
	.value	0x29f
	.byte	0x3
	.long	0xcab
	.uleb128 0x27
	.long	0x115b
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x23
	.quad	.LVL64
	.long	0x1290
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL49
	.long	0x1214
	.long	0xcd4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL53
	.long	0x11e3
	.long	0xcf0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL55
	.long	0x129c
	.long	0xd14
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x21
	.quad	.LVL57
	.long	0x1214
	.long	0xd3d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL61
	.long	0x1214
	.long	0xd66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL66
	.long	0x1214
	.uleb128 0x21
	.quad	.LVL70
	.long	0x11e3
	.long	0xd8f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL72
	.long	0x129c
	.long	0xdb3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x21
	.quad	.LVL73
	.long	0x1214
	.long	0xddc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL78
	.long	0x1214
	.long	0xe05
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL79
	.long	0x126a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x114a
	.quad	.LBI85
	.byte	.LVU77
	.long	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.byte	0x30
	.byte	0x7
	.long	0xe61
	.uleb128 0x27
	.long	0x115b
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x23
	.quad	.LVL30
	.long	0x1290
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x1140
	.quad	.LBI89
	.byte	.LVU84
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.byte	0x1
	.byte	0x3a
	.byte	0x7
	.long	0xec4
	.uleb128 0x21
	.quad	.LVL33
	.long	0x1214
	.long	0xeaf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL34
	.long	0x126a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x114a
	.quad	.LBI91
	.byte	.LVU93
	.long	.Ldebug_ranges0+0x200
	.byte	0x1
	.byte	0x43
	.byte	0x7
	.long	0xf16
	.uleb128 0x27
	.long	0x115b
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x23
	.quad	.LVL44
	.long	0x1290
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL21
	.long	0x1214
	.long	0xf3f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL25
	.long	0x11ca
	.long	0xf57
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL27
	.long	0x1214
	.long	0xf7b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x21
	.quad	.LVL31
	.long	0x1214
	.long	0xfa4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL32
	.long	0x126a
	.long	0xfbc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL35
	.long	0x1214
	.long	0xfe5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL36
	.long	0x126a
	.long	0xffd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL37
	.long	0x1214
	.long	0x1026
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL38
	.long	0x126a
	.long	0x103e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL39
	.long	0x1214
	.long	0x1067
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL40
	.long	0x126a
	.long	0x107f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL41
	.long	0x1214
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF116
	.byte	0x4
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x1125
	.uleb128 0x34
	.long	.LASF117
	.byte	0x4
	.value	0x27a
	.byte	0x22
	.long	0xbe
	.uleb128 0x35
	.long	.LASF118
	.byte	0x10
	.byte	0x4
	.value	0x27c
	.byte	0xa
	.long	0x10eb
	.uleb128 0x36
	.long	.LASF117
	.byte	0x4
	.value	0x27c
	.byte	0x20
	.long	0xbe
	.byte	0
	.uleb128 0x36
	.long	.LASF119
	.byte	0x4
	.value	0x27c
	.byte	0x35
	.long	0xbe
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x10c0
	.uleb128 0x37
	.long	.LASF118
	.byte	0x4
	.value	0x27c
	.byte	0x43
	.long	0x1135
	.uleb128 0x37
	.long	.LASF119
	.byte	0x4
	.value	0x286
	.byte	0xf
	.long	0xbe
	.uleb128 0x37
	.long	.LASF120
	.byte	0x4
	.value	0x287
	.byte	0x19
	.long	0x113a
	.uleb128 0x37
	.long	.LASF121
	.byte	0x4
	.value	0x293
	.byte	0xf
	.long	0xbe
	.byte	0
	.uleb128 0x10
	.long	0x10eb
	.long	0x1135
	.uleb128 0x11
	.long	0xe0
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x1125
	.uleb128 0x3
	.byte	0x8
	.long	0x10eb
	.uleb128 0x38
	.long	.LASF153
	.byte	0x4
	.value	0x24c
	.byte	0x1
	.byte	0x3
	.uleb128 0x39
	.long	.LASF123
	.byte	0x3
	.byte	0x69
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x1169
	.uleb128 0x2c
	.long	.LASF122
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.long	0xc9
	.uleb128 0x3a
	.byte	0
	.uleb128 0x39
	.long	.LASF124
	.byte	0x3
	.byte	0x62
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x1194
	.uleb128 0x2c
	.long	.LASF125
	.byte	0x3
	.byte	0x62
	.byte	0x1b
	.long	0x331
	.uleb128 0x2c
	.long	.LASF122
	.byte	0x3
	.byte	0x62
	.byte	0x3c
	.long	0xc9
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3b
	.long	.LASF154
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x11b2
	.uleb128 0x3c
	.string	"__c"
	.byte	0x2
	.byte	0x6c
	.byte	0x17
	.long	0x53
	.byte	0
	.uleb128 0x3d
	.long	.LASF126
	.long	.LASF126
	.byte	0x6
	.byte	0x42
	.byte	0xc
	.uleb128 0x3d
	.long	.LASF127
	.long	.LASF127
	.byte	0x16
	.byte	0x3c
	.byte	0xd
	.uleb128 0x3e
	.long	.LASF128
	.long	.LASF128
	.byte	0x1b
	.value	0x269
	.byte	0xd
	.uleb128 0x3d
	.long	.LASF129
	.long	.LASF129
	.byte	0x17
	.byte	0x25
	.byte	0xd
	.uleb128 0x3d
	.long	.LASF130
	.long	.LASF130
	.byte	0x1c
	.byte	0x7a
	.byte	0xe
	.uleb128 0x3d
	.long	.LASF131
	.long	.LASF131
	.byte	0x1d
	.byte	0x56
	.byte	0xe
	.uleb128 0x3d
	.long	.LASF132
	.long	.LASF132
	.byte	0x1d
	.byte	0x52
	.byte	0xe
	.uleb128 0x3e
	.long	.LASF133
	.long	.LASF133
	.byte	0x1b
	.value	0x253
	.byte	0xc
	.uleb128 0x3d
	.long	.LASF134
	.long	.LASF134
	.byte	0x1d
	.byte	0x33
	.byte	0xe
	.uleb128 0x3d
	.long	.LASF135
	.long	.LASF135
	.byte	0x19
	.byte	0x28
	.byte	0xd
	.uleb128 0x3d
	.long	.LASF136
	.long	.LASF136
	.byte	0x1a
	.byte	0x2c
	.byte	0xd
	.uleb128 0x3e
	.long	.LASF137
	.long	.LASF137
	.byte	0xb
	.value	0x35b
	.byte	0xc
	.uleb128 0x3e
	.long	.LASF138
	.long	.LASF138
	.byte	0x1e
	.value	0x181
	.byte	0xf
	.uleb128 0x3d
	.long	.LASF139
	.long	.LASF139
	.byte	0x1f
	.byte	0x24
	.byte	0x7
	.uleb128 0x3d
	.long	.LASF140
	.long	.LASF140
	.byte	0x1f
	.byte	0x2b
	.byte	0x6
	.uleb128 0x3e
	.long	.LASF141
	.long	.LASF141
	.byte	0xb
	.value	0x296
	.byte	0xc
	.uleb128 0x3e
	.long	.LASF142
	.long	.LASF142
	.byte	0x1b
	.value	0x235
	.byte	0xd
	.uleb128 0x3d
	.long	.LASF143
	.long	.LASF143
	.byte	0x3
	.byte	0x58
	.byte	0xc
	.uleb128 0x3d
	.long	.LASF144
	.long	.LASF144
	.byte	0x3
	.byte	0x5a
	.byte	0xc
	.uleb128 0x3d
	.long	.LASF145
	.long	.LASF145
	.byte	0x1e
	.byte	0x8c
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS20:
	.uleb128 0
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST20:
	.quad	.LVL80
	.quad	.LVL82
	.value	0x1
	.byte	0x55
	.quad	.LVL82
	.quad	.LVL101
	.value	0x1
	.byte	0x56
	.quad	.LVL101
	.quad	.LVL105
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL105
	.quad	.LFE138
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST21:
	.quad	.LVL80
	.quad	.LVL83-1
	.value	0x1
	.byte	0x54
	.quad	.LVL83-1
	.quad	.LVL100
	.value	0x1
	.byte	0x53
	.quad	.LVL100
	.quad	.LVL105
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL105
	.quad	.LFE138
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU187
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU214
	.uleb128 .LVU215
	.uleb128 .LVU242
	.uleb128 .LVU244
	.uleb128 0
.LLST22:
	.quad	.LVL81
	.quad	.LVL87
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL87
	.quad	.LVL90
	.value	0x1
	.byte	0x5d
	.quad	.LVL91
	.quad	.LVL103
	.value	0x1
	.byte	0x5d
	.quad	.LVL105
	.quad	.LFE138
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU188
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU217
	.uleb128 .LVU218
	.uleb128 .LVU241
	.uleb128 .LVU244
	.uleb128 .LVU261
.LLST23:
	.quad	.LVL81
	.quad	.LVL87
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL87
	.quad	.LVL92
	.value	0x1
	.byte	0x5c
	.quad	.LVL93
	.quad	.LVL102
	.value	0x1
	.byte	0x5c
	.quad	.LVL105
	.quad	.LVL111
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU189
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 0
.LLST24:
	.quad	.LVL81
	.quad	.LVL87
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL87
	.quad	.LVL104
	.value	0x1
	.byte	0x5e
	.quad	.LVL105
	.quad	.LFE138
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU208
	.uleb128 .LVU222
	.uleb128 .LVU224
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU229
.LLST25:
	.quad	.LVL88
	.quad	.LVL94
	.value	0x1
	.byte	0x50
	.quad	.LVL96
	.quad	.LVL97-1
	.value	0x1
	.byte	0x50
	.quad	.LVL97
	.quad	.LVL98
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1-1
	.value	0x1
	.byte	0x55
	.quad	.LVL1-1
	.quad	.LFE137
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST1:
	.quad	.LVL0
	.quad	.LVL1-1
	.value	0x1
	.byte	0x54
	.quad	.LVL1-1
	.quad	.LVL7
	.value	0x1
	.byte	0x53
	.quad	.LVL7
	.quad	.LVL9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL9
	.quad	.LFE137
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST2:
	.quad	.LVL0
	.quad	.LVL1-1
	.value	0x1
	.byte	0x51
	.quad	.LVL1-1
	.quad	.LFE137
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST3:
	.quad	.LVL2
	.quad	.LVL3-1
	.value	0x1
	.byte	0x50
	.quad	.LVL3-1
	.quad	.LVL8
	.value	0x1
	.byte	0x56
	.quad	.LVL8
	.quad	.LVL9-1
	.value	0x1
	.byte	0x55
	.quad	.LVL9
	.quad	.LFE137
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU16
	.uleb128 .LVU19
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
.LLST4:
	.quad	.LVL5
	.quad	.LVL6
	.value	0x1
	.byte	0x54
	.quad	.LVL16
	.quad	.LVL17-1
	.value	0x1
	.byte	0x54
	.quad	.LVL17-1
	.quad	.LVL18
	.value	0x12
	.byte	0x9
	.byte	0xff
	.byte	0x30
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3a
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU28
	.uleb128 .LVU45
	.uleb128 .LVU48
	.uleb128 0
.LLST5:
	.quad	.LVL9
	.quad	.LVL16
	.value	0x1
	.byte	0x53
	.quad	.LVL18
	.quad	.LFE137
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU28
	.uleb128 .LVU45
	.uleb128 .LVU48
	.uleb128 0
.LLST6:
	.quad	.LVL9
	.quad	.LVL16
	.value	0x1
	.byte	0x56
	.quad	.LVL18
	.quad	.LFE137
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU35
	.uleb128 .LVU45
	.uleb128 .LVU48
	.uleb128 0
.LLST7:
	.quad	.LVL11
	.quad	.LVL16
	.value	0x1
	.byte	0x5c
	.quad	.LVL18
	.quad	.LFE137
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU38
	.uleb128 .LVU45
	.uleb128 .LVU48
	.uleb128 0
.LLST8:
	.quad	.LVL13
	.quad	.LVL16
	.value	0x1
	.byte	0x50
	.quad	.LVL18
	.quad	.LFE137
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST9:
	.quad	.LVL19
	.quad	.LVL20
	.value	0x1
	.byte	0x55
	.quad	.LVL20
	.quad	.LVL25
	.value	0x1
	.byte	0x56
	.quad	.LVL25
	.quad	.LVL26
	.value	0x1
	.byte	0x55
	.quad	.LVL26
	.quad	.LFE135
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU65
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU69
.LLST10:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x1
	.byte	0x50
	.quad	.LVL23
	.quad	.LVL24-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU65
	.uleb128 .LVU69
.LLST11:
	.quad	.LVL22
	.quad	.LVL24-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU103
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU134
	.uleb128 .LVU155
	.uleb128 .LVU183
.LLST12:
	.quad	.LVL45
	.quad	.LVL48
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	.LVL48
	.quad	.LVL56
	.value	0x1
	.byte	0x5c
	.quad	.LVL65
	.quad	.LVL77
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU104
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU121
	.uleb128 .LVU155
	.uleb128 .LVU157
.LLST13:
	.quad	.LVL45
	.quad	.LVL46
	.value	0x1
	.byte	0x57
	.quad	.LVL46
	.quad	.LVL49-1
	.value	0x1
	.byte	0x50
	.quad	.LVL65
	.quad	.LVL66-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU130
	.uleb128 .LVU133
	.uleb128 .LVU166
	.uleb128 .LVU169
.LLST14:
	.quad	.LVL54
	.quad	.LVL55-1
	.value	0x1
	.byte	0x50
	.quad	.LVL71
	.quad	.LVL72-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU123
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU127
	.uleb128 .LVU159
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU163
.LLST15:
	.quad	.LVL50
	.quad	.LVL51
	.value	0x1
	.byte	0x50
	.quad	.LVL51
	.quad	.LVL52-1
	.value	0x1
	.byte	0x54
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x50
	.quad	.LVL68
	.quad	.LVL69-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU138
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU144
	.uleb128 .LVU174
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 .LVU180
.LLST16:
	.quad	.LVL58
	.quad	.LVL59
	.value	0x1
	.byte	0x50
	.quad	.LVL59
	.quad	.LVL60-1
	.value	0x1
	.byte	0x54
	.quad	.LVL74
	.quad	.LVL75
	.value	0x1
	.byte	0x50
	.quad	.LVL75
	.quad	.LVL76-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU149
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU153
.LLST17:
	.quad	.LVL62
	.quad	.LVL63
	.value	0x1
	.byte	0x50
	.quad	.LVL63
	.quad	.LVL64-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU81
.LLST18:
	.quad	.LVL28
	.quad	.LVL29
	.value	0x1
	.byte	0x50
	.quad	.LVL29
	.quad	.LVL30-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU93
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
.LLST19:
	.quad	.LVL42
	.quad	.LVL43
	.value	0x1
	.byte	0x50
	.quad	.LVL43
	.quad	.LVL44-1
	.value	0x1
	.byte	0x54
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
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB26
	.quad	.LBE26
	.quad	.LBB31
	.quad	.LBE31
	.quad	.LBB32
	.quad	.LBE32
	.quad	.LBB36
	.quad	.LBE36
	.quad	0
	.quad	0
	.quad	.LBB33
	.quad	.LBE33
	.quad	.LBB37
	.quad	.LBE37
	.quad	0
	.quad	0
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB57
	.quad	.LBE57
	.quad	0
	.quad	0
	.quad	.LBB58
	.quad	.LBE58
	.quad	.LBB95
	.quad	.LBE95
	.quad	0
	.quad	0
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB65
	.quad	.LBE65
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB80
	.quad	.LBE80
	.quad	0
	.quad	0
	.quad	.LBB66
	.quad	.LBE66
	.quad	.LBB73
	.quad	.LBE73
	.quad	.LBB74
	.quad	.LBE74
	.quad	.LBB81
	.quad	.LBE81
	.quad	.LBB82
	.quad	.LBE82
	.quad	.LBB83
	.quad	.LBE83
	.quad	0
	.quad	0
	.quad	.LBB75
	.quad	.LBE75
	.quad	.LBB78
	.quad	.LBE78
	.quad	0
	.quad	0
	.quad	.LBB85
	.quad	.LBE85
	.quad	.LBB88
	.quad	.LBE88
	.quad	0
	.quad	0
	.quad	.LBB91
	.quad	.LBE91
	.quad	.LBB94
	.quad	.LBE94
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB138
	.quad	.LFE138
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF123:
	.string	"printf"
.LASF16:
	.string	"__off_t"
.LASF22:
	.string	"_IO_read_ptr"
.LASF95:
	.string	"locale_quoting_style"
.LASF34:
	.string	"_chain"
.LASF84:
	.string	"GETOPT_VERSION_CHAR"
.LASF151:
	.string	"longopts"
.LASF150:
	.string	"quoting_style"
.LASF15:
	.string	"size_t"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF129:
	.string	"set_program_name"
.LASF40:
	.string	"_shortbuf"
.LASF152:
	.string	"perform_basename"
.LASF111:
	.string	"string"
.LASF88:
	.string	"shell_quoting_style"
.LASF83:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF65:
	.string	"long long unsigned int"
.LASF142:
	.string	"free"
.LASF154:
	.string	"putchar_unlocked"
.LASF133:
	.string	"atexit"
.LASF68:
	.string	"__timezone"
.LASF61:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF99:
	.string	"quoting_style_vals"
.LASF117:
	.string	"program"
.LASF94:
	.string	"escape_quoting_style"
.LASF87:
	.string	"literal_quoting_style"
.LASF35:
	.string	"_fileno"
.LASF23:
	.string	"_IO_read_end"
.LASF74:
	.string	"sys_siglist"
.LASF14:
	.string	"long int"
.LASF64:
	.string	"_gl_cxxalias_dummy"
.LASF21:
	.string	"_flags"
.LASF44:
	.string	"_wide_data"
.LASF29:
	.string	"_IO_buf_end"
.LASF38:
	.string	"_cur_column"
.LASF78:
	.string	"program_invocation_short_name"
.LASF92:
	.string	"c_quoting_style"
.LASF52:
	.string	"_IO_codecvt"
.LASF60:
	.string	"_sys_errlist"
.LASF144:
	.string	"__printf_chk"
.LASF77:
	.string	"program_invocation_name"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF81:
	.string	"TIMESPEC_HZ"
.LASF91:
	.string	"shell_escape_always_quoting_style"
.LASF107:
	.string	"multiple_names"
.LASF71:
	.string	"timezone"
.LASF136:
	.string	"quote"
.LASF86:
	.string	"program_name"
.LASF127:
	.string	"version_etc"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF140:
	.string	"strip_trailing_slashes"
.LASF9:
	.string	"unsigned int"
.LASF146:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF124:
	.string	"fprintf"
.LASF125:
	.string	"__stream"
.LASF8:
	.string	"long unsigned int"
.LASF131:
	.string	"bindtextdomain"
.LASF26:
	.string	"_IO_write_ptr"
.LASF5:
	.string	"name"
.LASF57:
	.string	"sys_nerr"
.LASF97:
	.string	"custom_quoting_style"
.LASF11:
	.string	"short unsigned int"
.LASF102:
	.string	"error_one_per_line"
.LASF79:
	.string	"Version"
.LASF138:
	.string	"strlen"
.LASF30:
	.string	"_IO_save_base"
.LASF76:
	.string	"environ"
.LASF41:
	.string	"_lock"
.LASF36:
	.string	"_flags2"
.LASF48:
	.string	"_mode"
.LASF130:
	.string	"setlocale"
.LASF55:
	.string	"stdout"
.LASF85:
	.string	"version_etc_copyright"
.LASF43:
	.string	"_codecvt"
.LASF0:
	.string	"optarg"
.LASF72:
	.string	"getdate_err"
.LASF1:
	.string	"optind"
.LASF27:
	.string	"_IO_write_end"
.LASF137:
	.string	"__overflow"
.LASF149:
	.string	"_IO_lock_t"
.LASF20:
	.string	"_IO_FILE"
.LASF100:
	.string	"error_print_progname"
.LASF120:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF63:
	.string	"time_t"
.LASF135:
	.string	"error"
.LASF58:
	.string	"sys_errlist"
.LASF121:
	.string	"lc_messages"
.LASF33:
	.string	"_markers"
.LASF93:
	.string	"c_maybe_quoting_style"
.LASF110:
	.string	"_Bool"
.LASF10:
	.string	"unsigned char"
.LASF119:
	.string	"node"
.LASF145:
	.string	"strncmp"
.LASF13:
	.string	"short int"
.LASF19:
	.string	"option"
.LASF104:
	.string	"quote_quoting_options"
.LASF7:
	.string	"flag"
.LASF59:
	.string	"_sys_nerr"
.LASF39:
	.string	"_vtable_offset"
.LASF69:
	.string	"tzname"
.LASF50:
	.string	"FILE"
.LASF80:
	.string	"exit_failure"
.LASF128:
	.string	"exit"
.LASF143:
	.string	"__fprintf_chk"
.LASF139:
	.string	"base_name"
.LASF90:
	.string	"shell_escape_quoting_style"
.LASF134:
	.string	"dcgettext"
.LASF98:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF70:
	.string	"daylight"
.LASF62:
	.string	"long double"
.LASF2:
	.string	"char"
.LASF89:
	.string	"shell_always_quoting_style"
.LASF108:
	.string	"use_nuls"
.LASF96:
	.string	"clocale_quoting_style"
.LASF115:
	.string	"remove_suffix"
.LASF3:
	.string	"opterr"
.LASF17:
	.string	"__off64_t"
.LASF103:
	.string	"quoting_options"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF122:
	.string	"__fmt"
.LASF118:
	.string	"infomap"
.LASF6:
	.string	"has_arg"
.LASF113:
	.string	"usage"
.LASF47:
	.string	"__pad5"
.LASF18:
	.string	"__time_t"
.LASF49:
	.string	"_unused2"
.LASF56:
	.string	"stderr"
.LASF106:
	.string	"argv"
.LASF132:
	.string	"textdomain"
.LASF67:
	.string	"__daylight"
.LASF114:
	.string	"status"
.LASF148:
	.string	"/root/coreutils"
.LASF46:
	.string	"_freeres_buf"
.LASF31:
	.string	"_IO_backup_base"
.LASF109:
	.string	"suffix"
.LASF101:
	.string	"error_message_count"
.LASF147:
	.string	"src/basename.c"
.LASF105:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF53:
	.string	"_IO_wide_data"
.LASF126:
	.string	"getopt_long"
.LASF141:
	.string	"fputs_unlocked"
.LASF153:
	.string	"emit_mandatory_arg_note"
.LASF66:
	.string	"__tzname"
.LASF112:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF116:
	.string	"emit_ancillary_info"
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
