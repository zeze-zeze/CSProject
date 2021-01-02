	.file	"unexpand.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"unexpand"
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
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC5:
	.string	"Convert blanks in each FILE to tabs, writing to standard output.\n"
	.align 8
.LC6:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.align 8
.LC7:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.align 8
.LC8:
	.string	"  -a, --all        convert all blanks, instead of just initial blanks\n      --first-only  convert only leading sequences of blanks (overrides -a)\n  -t, --tabs=N     have tabs N characters apart instead of 8 (enables -a)\n"
	.align 8
.LC9:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC10:
	.string	"      --version  output version information and exit\n"
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
.LVL0:
.LFB135:
	.file 1 "src/unexpand.c"
	.loc 1 73 1 view -0
	.cfi_startproc
	.loc 1 73 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 75 5 view .LVU2
	movl	$5, %edx
	.loc 1 73 1 view .LVU3
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
	.loc 1 73 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 74 3 is_stmt 1 view .LVU5
	.loc 1 74 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 75 5 is_stmt 1 view .LVU7
	.loc 1 75 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 75 5 is_stmt 0 view .LVU9
	call	dcgettext@PLT
.LVL2:
.LBB48:
.LBB49:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE49:
.LBE48:
	.loc 1 75 5 view .LVU11
	movq	%rax, %rdx
.LVL3:
.LBB51:
.LBI48:
	.loc 2 98 1 is_stmt 1 view .LVU12
.LBB50:
	.loc 2 100 3 view .LVU13
	.loc 2 100 10 is_stmt 0 view .LVU14
	xorl	%eax, %eax
.LVL4:
	.loc 2 100 10 view .LVU15
	call	__fprintf_chk@PLT
.LVL5:
.L3:
	.loc 2 100 10 view .LVU16
.LBE50:
.LBE51:
	.loc 1 99 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 78 7 view .LVU18
	.loc 1 78 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB52:
.LBB53:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC17(%rip), %rbx
.LBE53:
.LBE52:
	.loc 1 78 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB79:
.LBB80:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rdx
	movl	$1, %edi
.LBE80:
.LBE79:
	.loc 1 78 15 view .LVU23
	movq	%rax, %rsi
.LVL9:
.LBB82:
.LBI79:
	.loc 2 105 1 is_stmt 1 view .LVU24
.LBB81:
	.loc 2 107 3 view .LVU25
	.loc 2 107 10 is_stmt 0 view .LVU26
	xorl	%eax, %eax
.LVL10:
	.loc 2 107 10 view .LVU27
	call	__printf_chk@PLT
.LVL11:
	.loc 2 107 10 view .LVU28
.LBE81:
.LBE82:
	.loc 1 82 7 is_stmt 1 view .LVU29
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC5(%rip), %rsi
	call	dcgettext@PLT
.LVL12:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL13:
	.loc 1 86 7 view .LVU30
.LBB83:
.LBI83:
	.loc 3 581 1 view .LVU31
.LBB84:
	.loc 3 583 3 view .LVU32
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC6(%rip), %rsi
	call	dcgettext@PLT
.LVL14:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL15:
.LBE84:
.LBE83:
	.loc 1 87 7 view .LVU33
.LBB85:
.LBI85:
	.loc 3 588 1 view .LVU34
.LBB86:
	.loc 3 590 3 view .LVU35
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC7(%rip), %rsi
	call	dcgettext@PLT
.LVL16:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL17:
.LBE86:
.LBE85:
	.loc 1 89 7 view .LVU36
	movl	$5, %edx
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	leaq	.LC8(%rip), %rsi
	call	dcgettext@PLT
.LVL18:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL19:
	.loc 1 94 7 view .LVU37
	call	emit_tab_list_info@PLT
.LVL20:
	.loc 1 95 7 view .LVU38
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC9(%rip), %rsi
	call	dcgettext@PLT
.LVL21:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL22:
	.loc 1 96 7 view .LVU39
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC10(%rip), %rsi
	call	dcgettext@PLT
.LVL23:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL24:
	.loc 1 97 7 view .LVU40
.LBB87:
.LBI52:
	.loc 3 634 1 view .LVU41
.LBB78:
	.loc 3 636 3 view .LVU42
	.loc 3 636 67 is_stmt 0 view .LVU43
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
	.loc 3 646 3 is_stmt 1 view .LVU44
.LVL25:
	.loc 3 647 3 view .LVU45
	.loc 3 649 3 view .LVU46
	.loc 3 649 9 view .LVU47
	.loc 3 636 67 is_stmt 0 view .LVU48
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
	.loc 3 647 25 view .LVU49
	movq	%rsp, %rax
.LVL26:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 3 650 5 is_stmt 1 view .LVU50
	.loc 3 649 18 is_stmt 0 view .LVU51
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU52
	addq	$16, %rax
.LVL27:
	.loc 3 649 9 is_stmt 1 view .LVU53
	testq	%rdi, %rdi
	je	.L4
	.loc 3 649 33 is_stmt 0 view .LVU54
	movl	$9, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU55
	testb	%dl, %dl
	jne	.L5
.L4:
	.loc 3 652 3 is_stmt 1 view .LVU56
	.loc 3 652 15 is_stmt 0 view .LVU57
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU58
	movl	$5, %edx
	leaq	.LC20(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU59
	testq	%r12, %r12
	je	.L6
	.loc 3 653 5 is_stmt 1 view .LVU60
.LVL28:
	.loc 3 655 3 view .LVU61
	.loc 3 655 11 is_stmt 0 view .LVU62
	call	dcgettext@PLT
.LVL29:
.LBB54:
.LBB55:
	.loc 2 107 10 view .LVU63
	leaq	.LC21(%rip), %rcx
	movl	$1, %edi
	leaq	.LC22(%rip), %rdx
.LBE55:
.LBE54:
	.loc 3 655 11 view .LVU64
	movq	%rax, %rsi
.LVL30:
.LBB59:
.LBI54:
	.loc 2 105 1 is_stmt 1 view .LVU65
.LBB56:
	.loc 2 107 3 view .LVU66
	.loc 2 107 10 is_stmt 0 view .LVU67
	xorl	%eax, %eax
.LVL31:
	.loc 2 107 10 view .LVU68
	call	__printf_chk@PLT
.LVL32:
	.loc 2 107 10 view .LVU69
.LBE56:
.LBE59:
	.loc 3 659 3 is_stmt 1 view .LVU70
	.loc 3 659 29 is_stmt 0 view .LVU71
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL33:
	movq	%rax, %rdi
.LVL34:
	.loc 3 660 3 is_stmt 1 view .LVU72
	.loc 3 660 6 is_stmt 0 view .LVU73
	testq	%rax, %rax
	je	.L7
	.loc 3 660 22 view .LVU74
	movl	$3, %edx
	leaq	.LC23(%rip), %rsi
	call	strncmp@PLT
.LVL35:
	.loc 3 660 19 view .LVU75
	testl	%eax, %eax
	jne	.L10
.LVL36:
.L7:
	.loc 3 669 3 is_stmt 1 view .LVU76
	.loc 3 669 11 is_stmt 0 view .LVU77
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC25(%rip), %rsi
	call	dcgettext@PLT
.LVL37:
.LBB60:
.LBB61:
	.loc 2 107 10 view .LVU78
	leaq	.LC0(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	movl	$1, %edi
.LBE61:
.LBE60:
	.loc 3 669 11 view .LVU79
	movq	%rax, %rsi
.LVL38:
.LBB67:
.LBI60:
	.loc 2 105 1 is_stmt 1 view .LVU80
.LBB62:
	.loc 2 107 3 view .LVU81
	.loc 2 107 10 is_stmt 0 view .LVU82
	xorl	%eax, %eax
.LVL39:
	.loc 2 107 10 view .LVU83
.LBE62:
.LBE67:
	.loc 3 671 3 view .LVU84
	leaq	.LC1(%rip), %r13
.LBB68:
.LBB63:
	.loc 2 107 10 view .LVU85
	call	__printf_chk@PLT
.LVL40:
	.loc 2 107 10 view .LVU86
.LBE63:
.LBE68:
	.loc 3 671 3 is_stmt 1 view .LVU87
	cmpq	%rbx, %r12
	leaq	.LC2(%rip), %rcx
	cmovne	%rcx, %r13
.L8:
	.loc 3 671 11 is_stmt 0 view .LVU88
	xorl	%edi, %edi
	leaq	.LC26(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL41:
.LBB69:
.LBB70:
	.loc 2 107 10 view .LVU89
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE70:
.LBE69:
	.loc 3 671 11 view .LVU90
	movq	%rax, %rsi
.LVL42:
.LBB72:
.LBI69:
	.loc 2 105 1 is_stmt 1 view .LVU91
.LBB71:
	.loc 2 107 3 view .LVU92
	.loc 2 107 10 is_stmt 0 view .LVU93
	xorl	%eax, %eax
.LVL43:
	.loc 2 107 10 view .LVU94
	call	__printf_chk@PLT
.LVL44:
	.loc 2 107 10 view .LVU95
.LBE71:
.LBE72:
	.loc 3 673 1 view .LVU96
	jmp	.L3
.LVL45:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU97
	.loc 3 655 11 is_stmt 0 view .LVU98
	call	dcgettext@PLT
.LVL46:
.LBB73:
.LBB57:
	.loc 2 107 10 view .LVU99
	leaq	.LC21(%rip), %rcx
	movl	$1, %edi
	leaq	.LC22(%rip), %rdx
.LBE57:
.LBE73:
	.loc 3 655 11 view .LVU100
	movq	%rax, %rsi
.LVL47:
.LBB74:
	.loc 2 105 1 is_stmt 1 view .LVU101
.LBB58:
	.loc 2 107 3 view .LVU102
	.loc 2 107 10 is_stmt 0 view .LVU103
	xorl	%eax, %eax
.LVL48:
	.loc 2 107 10 view .LVU104
	call	__printf_chk@PLT
.LVL49:
	.loc 2 107 10 view .LVU105
.LBE58:
.LBE74:
	.loc 3 659 3 is_stmt 1 view .LVU106
	.loc 3 659 29 is_stmt 0 view .LVU107
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL50:
	movq	%rax, %rdi
.LVL51:
	.loc 3 660 3 is_stmt 1 view .LVU108
	.loc 3 660 6 is_stmt 0 view .LVU109
	testq	%rax, %rax
	je	.L9
	.loc 3 660 22 view .LVU110
	movl	$3, %edx
	leaq	.LC23(%rip), %rsi
	call	strncmp@PLT
.LVL52:
	.loc 3 660 19 view .LVU111
	testl	%eax, %eax
	jne	.L29
.L9:
	.loc 3 669 3 is_stmt 1 view .LVU112
	.loc 3 669 11 is_stmt 0 view .LVU113
	movl	$5, %edx
	leaq	.LC25(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL53:
.LBB75:
.LBB64:
	.loc 2 107 10 view .LVU114
	leaq	.LC0(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	movl	$1, %edi
.LBE64:
.LBE75:
	.loc 3 669 11 view .LVU115
	movq	%rax, %rsi
.LVL54:
.LBB76:
	.loc 2 105 1 is_stmt 1 view .LVU116
.LBB65:
	.loc 2 107 3 view .LVU117
	.loc 2 107 10 is_stmt 0 view .LVU118
	xorl	%eax, %eax
.LVL55:
	.loc 2 107 10 view .LVU119
.LBE65:
.LBE76:
	.loc 3 646 15 view .LVU120
	leaq	.LC0(%rip), %r12
.LBB77:
.LBB66:
	.loc 2 107 10 view .LVU121
	call	__printf_chk@PLT
.LVL56:
	.loc 2 107 10 view .LVU122
.LBE66:
.LBE77:
	.loc 3 671 3 is_stmt 1 view .LVU123
	leaq	.LC1(%rip), %r13
	jmp	.L8
.L29:
	.loc 3 646 15 is_stmt 0 view .LVU124
	leaq	.LC0(%rip), %r12
.LVL57:
.L10:
	.loc 3 666 7 is_stmt 1 view .LVU125
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC24(%rip), %rsi
	call	dcgettext@PLT
.LVL58:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL59:
	jmp	.L7
.LBE78:
.LBE87:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC27:
	.string	"/usr/local/share/locale"
.LC28:
	.string	"David MacKenzie"
.LC29:
	.string	"tab stop value is too large"
.LC30:
	.string	",0123456789at:"
.LC31:
	.string	"input line is too long"
.LC32:
	.string	"write error"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL60:
.LFB137:
	.loc 1 258 1 view -0
	.cfi_startproc
	.loc 1 258 1 is_stmt 0 view .LVU127
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	.loc 1 278 7 view .LVU128
	movl	$1, %r15d
	.loc 1 258 1 view .LVU129
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 260 13 view .LVU130
	xorl	%r14d, %r14d
	.loc 1 258 1 view .LVU131
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	.loc 1 259 8 view .LVU132
	xorl	%r13d, %r13d
	.loc 1 258 1 view .LVU133
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	.loc 1 265 8 view .LVU134
	xorl	%r12d, %r12d
	.loc 1 258 1 view .LVU135
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.loc 1 268 3 view .LVU136
	movq	(%rsi), %rdi
.LVL61:
	.loc 1 258 1 view .LVU137
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	.loc 1 259 3 is_stmt 1 view .LVU138
.LVL62:
	.loc 1 260 3 view .LVU139
	.loc 1 261 3 view .LVU140
	.loc 1 265 3 view .LVU141
	.loc 1 267 33 view .LVU142
	.loc 1 268 3 view .LVU143
	call	set_program_name@PLT
.LVL63:
	.loc 1 269 3 view .LVU144
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL64:
	.loc 1 270 3 view .LVU145
	leaq	.LC27(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	bindtextdomain@PLT
.LVL65:
	.loc 1 271 3 view .LVU146
	leaq	.LC13(%rip), %rdi
	call	textdomain@PLT
.LVL66:
	.loc 1 273 3 view .LVU147
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL67:
	.loc 1 275 3 view .LVU148
	.p2align 4,,10
	.p2align 3
.L41:
	.loc 1 275 9 view .LVU149
	.loc 1 275 15 is_stmt 0 view .LVU150
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	leaq	.LC30(%rip), %rdx
	call	getopt_long@PLT
.LVL68:
	.loc 1 275 9 view .LVU151
	cmpl	$-1, %eax
	je	.L113
	.loc 1 278 7 is_stmt 1 view .LVU152
	cmpl	$97, %eax
	je	.L32
	jg	.L33
	cmpl	$44, %eax
	je	.L34
	jg	.L35
	cmpl	$-131, %eax
	jne	.L114
	.loc 1 297 9 view .LVU153
	.loc 1 297 30 view .LVU154
	.loc 1 298 9 view .LVU155
	movq	stdout(%rip), %rdi
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
.LVL69:
	.loc 1 298 9 is_stmt 0 view .LVU156
	xorl	%r9d, %r9d
	leaq	.LC28(%rip), %r8
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL70:
	.loc 1 298 9 is_stmt 1 view .LVU157
	xorl	%edi, %edi
	call	exit@PLT
.LVL71:
	.p2align 4,,10
	.p2align 3
.L33:
	.loc 1 278 7 is_stmt 0 view .LVU158
	cmpl	$116, %eax
	je	.L40
	cmpl	$128, %eax
	jne	.L38
	movl	$1, %r12d
.LVL72:
	.loc 1 278 7 view .LVU159
	jmp	.L41
.LVL73:
	.p2align 4,,10
	.p2align 3
.L114:
	.loc 1 278 7 view .LVU160
	cmpl	$-130, %eax
	je	.L115
.L38:
	.loc 1 298 9 is_stmt 1 view .LVU161
	.loc 1 298 57 view .LVU162
	.loc 1 300 11 view .LVU163
	.loc 1 300 14 is_stmt 0 view .LVU164
	testb	%r13b, %r13b
	je	.L43
.LVL74:
	.loc 1 305 11 is_stmt 1 view .LVU165
.LBB106:
	.loc 1 305 15 is_stmt 0 view .LVU166
	movabsq	$1844674407370955161, %rcx
	cmpq	%rcx, %r14
	ja	.L44
.LVL75:
	.loc 1 305 16 discriminator 1 view .LVU167
	imulq	$10, %r14, %rdx
	subl	$48, %eax
.LVL76:
	.loc 1 305 16 discriminator 1 view .LVU168
	cltq
	.loc 1 305 16 discriminator 1 view .LVU169
	addq	%rdx, %rax
.LVL77:
	.loc 1 305 16 discriminator 1 view .LVU170
	cmpq	%rax, %r14
	ja	.L44
	movq	%rax, %r14
	jmp	.L41
.LVL78:
	.p2align 4,,10
	.p2align 3
.L35:
	.loc 1 305 16 discriminator 1 view .LVU171
.LBE106:
	.loc 1 278 7 view .LVU172
	cmpl	$63, %eax
	jne	.L38
	.loc 1 281 11 is_stmt 1 view .LVU173
	movl	$1, %edi
	call	usage
.LVL79:
	.p2align 4,,10
	.p2align 3
.L34:
	.loc 1 293 11 view .LVU174
	.loc 1 293 14 is_stmt 0 view .LVU175
	testb	%r13b, %r13b
	je	.L41
	.loc 1 294 13 is_stmt 1 view .LVU176
	movq	%r14, %rdi
	.loc 1 295 23 is_stmt 0 view .LVU177
	xorl	%r13d, %r13d
.LVL80:
	.loc 1 294 13 view .LVU178
	call	add_tab_stop@PLT
.LVL81:
	.loc 1 294 13 view .LVU179
	jmp	.L41
.LVL82:
	.p2align 4,,10
	.p2align 3
.L32:
	.loc 1 283 11 is_stmt 1 view .LVU180
	.loc 1 283 31 is_stmt 0 view .LVU181
	movb	%r15b, convert_entire_line(%rip)
	.loc 1 284 11 is_stmt 1 view .LVU182
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L40:
	.loc 1 286 11 view .LVU183
	.loc 1 287 11 is_stmt 0 view .LVU184
	movq	optarg(%rip), %rdi
	.loc 1 286 31 view .LVU185
	movb	%r15b, convert_entire_line(%rip)
	.loc 1 287 11 is_stmt 1 view .LVU186
	call	parse_tab_stops@PLT
.LVL83:
	.loc 1 288 11 view .LVU187
	jmp	.L41
.LVL84:
.L43:
.LBB108:
	.loc 1 305 16 is_stmt 0 view .LVU188
	subl	$48, %eax
.LVL85:
	.loc 1 305 16 view .LVU189
	movl	$1, %r13d
	movslq	%eax, %r14
	jmp	.L41
.LVL86:
.L113:
	.loc 1 305 16 view .LVU190
.LBE108:
	.loc 1 311 3 is_stmt 1 view .LVU191
	.loc 1 311 6 is_stmt 0 view .LVU192
	testb	%r12b, %r12b
	je	.L46
	.loc 1 312 5 is_stmt 1 view .LVU193
	.loc 1 312 25 is_stmt 0 view .LVU194
	movb	$0, convert_entire_line(%rip)
.L46:
	.loc 1 314 3 is_stmt 1 view .LVU195
	.loc 1 314 6 is_stmt 0 view .LVU196
	testb	%r13b, %r13b
	jne	.L116
.LVL87:
.L47:
	.loc 1 317 3 is_stmt 1 view .LVU197
	call	finalize_tab_stops@PLT
.LVL88:
	.loc 1 319 3 view .LVU198
	.loc 1 319 27 is_stmt 0 view .LVU199
	movslq	optind(%rip), %rax
	.loc 1 319 3 view .LVU200
	xorl	%edi, %edi
	cmpl	%ebp, %eax
	jge	.L48
	.loc 1 319 3 discriminator 1 view .LVU201
	leaq	(%rbx,%rax,8), %rdi
.L48:
	.loc 1 319 3 discriminator 4 view .LVU202
	call	set_file_list@PLT
.LVL89:
	.loc 1 321 3 is_stmt 1 discriminator 4 view .LVU203
.LBB109:
.LBI109:
	.loc 1 106 1 discriminator 4 view .LVU204
.LBB110:
	.loc 1 109 3 discriminator 4 view .LVU205
	.loc 1 109 14 is_stmt 0 discriminator 4 view .LVU206
	xorl	%edi, %edi
	call	next_file@PLT
.LVL90:
	movq	%rax, %r14
.LVL91:
	.loc 1 114 3 is_stmt 1 discriminator 4 view .LVU207
	.loc 1 116 3 discriminator 4 view .LVU208
	.loc 1 116 6 is_stmt 0 discriminator 4 view .LVU209
	testq	%rax, %rax
	je	.L49
	.loc 1 122 3 is_stmt 1 view .LVU210
	.loc 1 122 19 is_stmt 0 view .LVU211
	movq	max_column_width(%rip), %rdi
	call	xmalloc@PLT
.LVL92:
	.loc 1 122 19 view .LVU212
	movq	%rax, %r15
.LVL93:
.L73:
	.loc 1 124 3 is_stmt 1 view .LVU213
.LBB111:
	.loc 1 127 7 view .LVU214
	.loc 1 130 7 view .LVU215
	.loc 1 137 7 view .LVU216
	.loc 1 140 7 view .LVU217
	.loc 1 143 7 view .LVU218
	.loc 1 151 12 is_stmt 0 view .LVU219
	movb	$1, 13(%rsp)
	.loc 1 154 14 view .LVU220
	xorl	%ebp, %ebp
	.loc 1 137 17 view .LVU221
	xorl	%r12d, %r12d
	.loc 1 130 12 view .LVU222
	movl	$1, %ebx
	.loc 1 143 14 view .LVU223
	movq	$0, 32(%rsp)
	.loc 1 146 7 is_stmt 1 view .LVU224
.LVL94:
	.loc 1 151 7 view .LVU225
	.loc 1 154 7 view .LVU226
	.loc 1 146 12 is_stmt 0 view .LVU227
	movb	$0, 14(%rsp)
	jmp	.L50
.LVL95:
	.p2align 4,,10
	.p2align 3
.L56:
.LBB112:
	.loc 1 214 20 is_stmt 1 view .LVU228
	.loc 1 214 23 is_stmt 0 view .LVU229
	cmpl	$8, %r13d
	je	.L117
.LVL96:
.L65:
	.loc 1 224 19 is_stmt 1 view .LVU230
	.loc 1 225 19 view .LVU231
	.loc 1 225 22 is_stmt 0 view .LVU232
	addq	$1, %r12
.LVL97:
	.loc 1 225 22 view .LVU233
	je	.L118
	movl	$1, %ebx
.LVL98:
.L64:
	.loc 1 229 15 is_stmt 1 view .LVU234
	movb	%r10b, 13(%rsp)
.LVL99:
	.loc 1 229 18 is_stmt 0 view .LVU235
	testq	%rbp, %rbp
	je	.L68
.LVL100:
.L66:
	.loc 1 231 19 is_stmt 1 view .LVU236
	.loc 1 231 22 is_stmt 0 view .LVU237
	cmpq	$1, %rbp
	jbe	.L69
	.loc 1 231 22 view .LVU238
	cmpb	$0, 14(%rsp)
	je	.L69
	.loc 1 232 21 is_stmt 1 view .LVU239
	.loc 1 232 38 is_stmt 0 view .LVU240
	movb	$9, (%r15)
.L69:
	.loc 1 233 23 view .LVU241
	movq	%rbp, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movb	%r10b, 14(%rsp)
.LVL101:
	.loc 1 233 19 is_stmt 1 view .LVU242
	.loc 1 233 23 is_stmt 0 view .LVU243
	movq	stdout(%rip), %rcx
	call	fwrite_unlocked@PLT
.LVL102:
	.loc 1 233 22 view .LVU244
	movzbl	14(%rsp), %r10d
	cmpq	%rbp, %rax
	jne	.L119
	.loc 1 236 45 view .LVU245
	movb	$0, 14(%rsp)
.L68:
.LVL103:
	.loc 1 239 15 is_stmt 1 view .LVU246
	.loc 1 240 15 view .LVU247
	.loc 1 240 46 is_stmt 0 view .LVU248
	orb	convert_entire_line(%rip), %r10b
	andl	%r10d, %ebx
.LVL104:
	.loc 1 240 46 view .LVU249
.LBE112:
	.loc 1 243 11 is_stmt 1 view .LVU250
	.loc 1 243 14 is_stmt 0 view .LVU251
	testl	%r13d, %r13d
	js	.L75
	.loc 1 243 14 view .LVU252
	xorl	%ebp, %ebp
.LVL105:
.L70:
	.loc 1 249 11 is_stmt 1 view .LVU253
.LBB120:
.LBI120:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 4 108 1 view .LVU254
.LBB121:
	.loc 4 110 3 view .LVU255
	.loc 4 110 10 is_stmt 0 view .LVU256
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L120
	.loc 4 110 10 view .LVU257
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	%r13b, (%rax)
.LVL106:
.L63:
	.loc 4 110 10 view .LVU258
.LBE121:
.LBE120:
	.loc 1 252 13 is_stmt 1 view .LVU259
	.loc 1 252 7 is_stmt 0 view .LVU260
	cmpl	$10, %r13d
	je	.L73
.LVL107:
.L50:
	.loc 1 161 17 is_stmt 1 view .LVU261
.LBB123:
.LBI123:
	.loc 4 66 1 view .LVU262
.LBB124:
	.loc 4 68 3 view .LVU263
	.loc 4 68 10 is_stmt 0 view .LVU264
	movq	8(%r14), %rax
	cmpq	16(%r14), %rax
	jnb	.L121
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%r14)
	movzbl	(%rax), %r13d
.LVL108:
.L53:
	.loc 4 68 10 view .LVU265
.LBE124:
.LBE123:
	.loc 1 164 11 is_stmt 1 view .LVU266
	.loc 1 164 14 is_stmt 0 view .LVU267
	testb	%bl, %bl
	je	.L70
.LBB126:
	.loc 1 166 15 is_stmt 1 view .LVU268
	.loc 1 166 31 is_stmt 0 view .LVU269
	call	__ctype_b_loc@PLT
.LVL109:
	movq	%rax, %r10
	movslq	%r13d, %rax
	movq	(%r10), %rdx
	movzwl	(%rdx,%rax,2), %eax
	.loc 1 166 20 view .LVU270
	movl	%eax, %r10d
	andl	$1, %r10d
.LVL110:
	.loc 1 168 15 is_stmt 1 view .LVU271
	.loc 1 168 18 is_stmt 0 view .LVU272
	testb	$1, %al
	je	.L56
.LVL111:
.L77:
.LBB113:
	.loc 1 172 37 view .LVU273
	leaq	31(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%r12, %rdi
	movb	%r10b, 15(%rsp)
	.loc 1 170 19 is_stmt 1 view .LVU274
	.loc 1 170 24 is_stmt 0 view .LVU275
	movb	$0, 31(%rsp)
	.loc 1 172 19 is_stmt 1 view .LVU276
	.loc 1 172 37 is_stmt 0 view .LVU277
	call	get_next_tab_column@PLT
.LVL112:
	.loc 1 175 19 is_stmt 1 view .LVU278
	.loc 1 175 22 is_stmt 0 view .LVU279
	cmpb	$0, 31(%rsp)
	movzbl	15(%rsp), %r10d
	jne	.L82
.LVL113:
	.loc 1 178 19 is_stmt 1 view .LVU280
	.loc 1 180 23 view .LVU281
	.loc 1 180 26 is_stmt 0 view .LVU282
	cmpq	%rax, %r12
	ja	.L122
	.loc 1 183 23 is_stmt 1 view .LVU283
	.loc 1 183 26 is_stmt 0 view .LVU284
	cmpl	$9, %r13d
	je	.L123
	.loc 1 192 27 is_stmt 1 view .LVU285
	.loc 1 194 34 is_stmt 0 view .LVU286
	movzbl	13(%rsp), %ebx
	.loc 1 192 33 view .LVU287
	addq	$1, %r12
.LVL114:
	.loc 1 194 27 is_stmt 1 view .LVU288
	.loc 1 194 34 is_stmt 0 view .LVU289
	xorl	$1, %ebx
	.loc 1 194 55 view .LVU290
	cmpq	%r12, %rax
	setne	%dl
	.loc 1 194 30 view .LVU291
	orb	%dl, %bl
	jne	.L124
	.loc 1 206 27 is_stmt 1 view .LVU292
.LVL115:
	.loc 1 206 44 is_stmt 0 view .LVU293
	movb	$9, (%r15)
	movq	%r12, %rax
.LVL116:
.L60:
	.loc 1 211 23 is_stmt 1 view .LVU294
	.loc 1 211 31 is_stmt 0 view .LVU295
	movzbl	14(%rsp), %ebp
.LVL117:
	.loc 1 211 31 view .LVU296
	movq	%rax, %r12
	movl	$1, %ebx
	movl	$9, %r13d
	jmp	.L64
.LVL118:
	.p2align 4,,10
	.p2align 3
.L121:
	.loc 1 211 31 view .LVU297
.LBE113:
.LBE126:
.LBB127:
.LBB125:
	.loc 4 68 10 view .LVU298
	movq	%r14, %rdi
	call	__uflow@PLT
.LVL119:
	movl	%eax, %r13d
.LVL120:
	.loc 4 68 10 view .LVU299
.LBE125:
.LBE127:
	.loc 1 161 17 view .LVU300
	testl	%eax, %eax
	jns	.L53
	.loc 1 161 47 view .LVU301
	movq	%r14, %rdi
	call	next_file@PLT
.LVL121:
	.loc 1 161 47 view .LVU302
	movq	%rax, %r14
.LVL122:
	.loc 1 161 38 view .LVU303
	testq	%rax, %rax
	jne	.L50
.LVL123:
	.loc 1 164 11 is_stmt 1 view .LVU304
	.loc 1 164 14 is_stmt 0 view .LVU305
	testb	%bl, %bl
	je	.L75
.LBB128:
	.loc 1 166 15 is_stmt 1 view .LVU306
	.loc 1 166 31 is_stmt 0 view .LVU307
	call	__ctype_b_loc@PLT
.LVL124:
	movq	%rax, %r10
	movslq	%r13d, %rax
	movq	(%r10), %rdx
	movzwl	(%rdx,%rax,2), %eax
	.loc 1 166 20 view .LVU308
	movl	%eax, %r10d
	andl	$1, %r10d
.LVL125:
	.loc 1 168 15 is_stmt 1 view .LVU309
	.loc 1 168 18 is_stmt 0 view .LVU310
	testb	$1, %al
	je	.L65
	jmp	.L77
.LVL126:
.L117:
	.loc 1 218 19 is_stmt 1 view .LVU311
	.loc 1 218 29 is_stmt 0 view .LVU312
	xorl	%eax, %eax
.LVL127:
	.loc 1 218 29 view .LVU313
	testq	%r12, %r12
	setne	%al
	.loc 1 220 32 view .LVU314
	xorl	%edx, %edx
.LVL128:
	.loc 1 218 26 view .LVU315
	subq	%rax, %r12
.LVL129:
	.loc 1 219 19 is_stmt 1 view .LVU316
	.loc 1 220 19 view .LVU317
	.loc 1 220 29 is_stmt 0 view .LVU318
	movq	32(%rsp), %rax
	.loc 1 220 32 view .LVU319
	testq	%rax, %rax
	setne	%dl
	.loc 1 220 29 view .LVU320
	subq	%rdx, %rax
	movq	%rax, 32(%rsp)
.LVL130:
	.loc 1 229 15 is_stmt 1 view .LVU321
	.loc 1 229 18 is_stmt 0 view .LVU322
	testq	%rbp, %rbp
	je	.L110
	.loc 1 166 20 view .LVU323
	movb	%r10b, 13(%rsp)
.LVL131:
	.loc 1 166 20 view .LVU324
	jmp	.L66
.LVL132:
.L120:
	.loc 1 166 20 view .LVU325
.LBE128:
.LBB129:
.LBB122:
	.loc 4 110 10 view .LVU326
	movzbl	%r13b, %esi
	call	__overflow@PLT
.LVL133:
	.loc 4 110 10 view .LVU327
.LBE122:
.LBE129:
	.loc 1 249 14 view .LVU328
	testl	%eax, %eax
	jns	.L63
.LBB130:
	.loc 1 250 13 is_stmt 1 view .LVU329
	movl	$5, %edx
	leaq	.LC32(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL134:
	movq	%rax, %r12
.LVL135:
	.loc 1 250 13 is_stmt 0 view .LVU330
	call	__errno_location@PLT
.LVL136:
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL137:
.L82:
	.loc 1 250 13 view .LVU331
.LBE130:
.LBB131:
.LBB115:
	.loc 1 176 29 view .LVU332
	xorl	%ebx, %ebx
.LVL138:
	.loc 1 176 29 view .LVU333
	jmp	.L64
.LVL139:
.L110:
	.loc 1 176 29 view .LVU334
.LBE115:
	.loc 1 239 15 is_stmt 1 view .LVU335
	.loc 1 240 15 view .LVU336
	.loc 1 240 46 is_stmt 0 view .LVU337
	movzbl	convert_entire_line(%rip), %ebx
	.loc 1 166 20 view .LVU338
	movb	%r10b, 13(%rsp)
	.loc 1 240 46 view .LVU339
	orl	%r10d, %ebx
.LVL140:
	.loc 1 240 46 view .LVU340
.LBE131:
	.loc 1 243 11 is_stmt 1 view .LVU341
	jmp	.L70
.LVL141:
.L75:
	.loc 1 245 15 view .LVU342
	movq	%r15, %rdi
	call	free@PLT
.LVL142:
	.loc 1 246 15 view .LVU343
.L49:
	.loc 1 246 15 is_stmt 0 view .LVU344
.LBE111:
.LBE110:
.LBE109:
	.loc 1 323 3 is_stmt 1 view .LVU345
	call	cleanup_file_list_stdin@PLT
.LVL143:
	.loc 1 325 3 view .LVU346
	.loc 1 325 3 is_stmt 0 view .LVU347
	movl	exit_status(%rip), %eax
	.loc 1 326 1 view .LVU348
	movq	40(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L125
	addq	$56, %rsp
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
.LVL144:
.L123:
	.cfi_restore_state
.LBB141:
.LBB138:
.LBB135:
.LBB132:
.LBB116:
	.loc 1 185 27 is_stmt 1 view .LVU349
	.loc 1 187 27 view .LVU350
	.loc 1 187 30 is_stmt 0 view .LVU351
	testq	%rbp, %rbp
	je	.L60
	.loc 1 188 29 is_stmt 1 view .LVU352
	.loc 1 188 46 is_stmt 0 view .LVU353
	movb	$9, (%r15)
	jmp	.L60
.LVL145:
.L124:
	.loc 1 198 31 is_stmt 1 view .LVU354
	.loc 1 199 59 is_stmt 0 view .LVU355
	cmpq	%r12, %rax
	movzbl	14(%rsp), %eax
.LVL146:
	.loc 1 200 56 view .LVU356
	movb	%r13b, (%r15,%rbp)
	.loc 1 201 42 view .LVU357
	movb	%bl, 13(%rsp)
.LVL147:
	.loc 1 199 59 view .LVU358
	cmove	%ebx, %eax
	.loc 1 200 52 view .LVU359
	addq	$1, %rbp
.LVL148:
	.loc 1 199 59 view .LVU360
	movb	%al, 14(%rsp)
.LVL149:
	.loc 1 200 31 is_stmt 1 view .LVU361
	.loc 1 201 31 view .LVU362
	.loc 1 202 31 view .LVU363
	jmp	.L63
.LVL150:
.L116:
	.loc 1 202 31 is_stmt 0 view .LVU364
.LBE116:
.LBE132:
.LBE135:
.LBE138:
.LBE141:
	.loc 1 315 5 is_stmt 1 view .LVU365
	movq	%r14, %rdi
	call	add_tab_stop@PLT
.LVL151:
	.loc 1 315 5 is_stmt 0 view .LVU366
	jmp	.L47
.LVL152:
.L115:
	.loc 1 297 9 is_stmt 1 view .LVU367
	xorl	%edi, %edi
	call	usage
.LVL153:
.L119:
.LBB142:
.LBB139:
.LBB136:
.LBB133:
.LBB117:
	.loc 1 234 21 view .LVU368
	movl	$5, %edx
	leaq	.LC32(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL154:
	movq	%rax, %r12
.LVL155:
	.loc 1 234 21 is_stmt 0 view .LVU369
	call	__errno_location@PLT
.LVL156:
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL157:
.L118:
	.loc 1 234 21 view .LVU370
.LBE117:
.LBB118:
	.loc 1 226 21 is_stmt 1 view .LVU371
	movl	$5, %edx
	leaq	.LC31(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL158:
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL159:
.L44:
	.loc 1 226 21 is_stmt 0 view .LVU372
.LBE118:
.LBE133:
.LBE136:
.LBE139:
.LBE142:
.LBB143:
.LBB107:
	.loc 1 306 13 is_stmt 1 view .LVU373
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL160:
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL161:
.L122:
	.loc 1 306 13 is_stmt 0 view .LVU374
.LBE107:
.LBE143:
.LBB144:
.LBB140:
.LBB137:
.LBB134:
.LBB119:
.LBB114:
	.loc 1 181 25 is_stmt 1 view .LVU375
	movl	$5, %edx
	leaq	.LC31(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL162:
	.loc 1 181 25 is_stmt 0 view .LVU376
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL163:
.L125:
	.loc 1 181 25 view .LVU377
.LBE114:
.LBE119:
.LBE134:
.LBE137:
.LBE140:
.LBE144:
	.loc 1 326 1 view .LVU378
	call	__stack_chk_fail@PLT
.LVL164:
	.cfi_endproc
.LFE137:
	.size	main, .-main
	.section	.rodata.str1.1
.LC33:
	.string	"tabs"
.LC34:
	.string	"all"
.LC35:
	.string	"first-only"
.LC36:
	.string	"help"
.LC37:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 192
longopts:
	.quad	.LC33
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC35
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC36
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC37
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
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 15 "/usr/include/time.h"
	.file 16 "/usr/include/signal.h"
	.file 17 "/usr/include/unistd.h"
	.file 18 "/usr/include/errno.h"
	.file 19 "src/version.h"
	.file 20 "./lib/exitfail.h"
	.file 21 "/usr/include/stdint.h"
	.file 22 "./lib/timespec.h"
	.file 23 "/usr/include/ctype.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "src/expand-common.h"
	.file 29 "/usr/include/libintl.h"
	.file 30 "/usr/include/stdlib.h"
	.file 31 "./lib/xalloc.h"
	.file 32 "/usr/include/locale.h"
	.file 33 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1694
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF188
	.byte	0xc
	.long	.LASF189
	.long	.LASF190
	.long	.Ldebug_ranges0+0x390
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x5
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x6
	.byte	0x49
	.byte	0x1b
	.long	0x35
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.long	.LASF10
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x6d
	.uleb128 0x7
	.byte	0x8
	.long	0xaa
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	0xaa
	.uleb128 0x9
	.long	.LASF62
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x23d
	.uleb128 0xa
	.long	.LASF13
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0xa4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0xa4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0xa4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0xa4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0xa4
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0xa4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0xa4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0xa4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0xa4
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0xa4
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0xa4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x256
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x25c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x80
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x262
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x272
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x8c
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x27d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x288
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x25c
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x28e
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xb6
	.uleb128 0xb
	.long	.LASF191
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x251
	.uleb128 0x7
	.byte	0x8
	.long	0xb6
	.uleb128 0xd
	.long	0xaa
	.long	0x272
	.uleb128 0xe
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x249
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x278
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x283
	.uleb128 0xd
	.long	0xaa
	.long	0x29e
	.uleb128 0xe
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb1
	.uleb128 0x8
	.long	0x29e
	.uleb128 0xf
	.long	0x29e
	.uleb128 0x10
	.long	.LASF46
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x2ba
	.uleb128 0x7
	.byte	0x8
	.long	0x23d
	.uleb128 0xf
	.long	0x2ba
	.uleb128 0x10
	.long	.LASF47
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x2ba
	.uleb128 0x10
	.long	.LASF48
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x2ba
	.uleb128 0x10
	.long	.LASF49
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x2a4
	.long	0x2f4
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x2e9
	.uleb128 0x10
	.long	.LASF50
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x2f4
	.uleb128 0x10
	.long	.LASF51
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF52
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x2f4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x98
	.uleb128 0x12
	.long	.LASF56
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0x10
	.long	.LASF58
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0xa4
	.uleb128 0x10
	.long	.LASF59
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF60
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF61
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF63
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x3bd
	.uleb128 0xa
	.long	.LASF64
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x29e
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF66
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x3c2
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0xe
	.byte	0x39
	.byte	0x7
	.long	0x61
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x37b
	.uleb128 0x7
	.byte	0x8
	.long	0x61
	.uleb128 0xd
	.long	0xa4
	.long	0x3d8
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x3c8
	.uleb128 0x10
	.long	.LASF68
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF69
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0x10
	.long	.LASF70
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x3c8
	.uleb128 0x10
	.long	.LASF71
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF72
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x12
	.long	.LASF73
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x8
	.long	0x42d
	.uleb128 0xd
	.long	0x2a4
	.long	0x444
	.uleb128 0xe
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x434
	.uleb128 0x12
	.long	.LASF74
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x444
	.uleb128 0x12
	.long	.LASF75
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x444
	.uleb128 0x12
	.long	.LASF76
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x470
	.uleb128 0x7
	.byte	0x8
	.long	0xa4
	.uleb128 0x12
	.long	.LASF77
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x470
	.uleb128 0x10
	.long	.LASF78
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0xa4
	.uleb128 0x10
	.long	.LASF79
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0xa4
	.uleb128 0x10
	.long	.LASF80
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x29e
	.uleb128 0x10
	.long	.LASF81
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0x2
	.long	.LASF82
	.byte	0x15
	.byte	0x66
	.byte	0x16
	.long	0x74
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x4d7
	.uleb128 0x16
	.long	.LASF83
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x4ec
	.uleb128 0x17
	.long	.LASF84
	.byte	0x9
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x17
	.byte	0x2f
	.byte	0x1
	.long	0x54b
	.uleb128 0x18
	.long	.LASF85
	.value	0x100
	.uleb128 0x18
	.long	.LASF86
	.value	0x200
	.uleb128 0x18
	.long	.LASF87
	.value	0x400
	.uleb128 0x18
	.long	.LASF88
	.value	0x800
	.uleb128 0x18
	.long	.LASF89
	.value	0x1000
	.uleb128 0x18
	.long	.LASF90
	.value	0x2000
	.uleb128 0x18
	.long	.LASF91
	.value	0x4000
	.uleb128 0x18
	.long	.LASF92
	.value	0x8000
	.uleb128 0x17
	.long	.LASF93
	.byte	0x1
	.uleb128 0x17
	.long	.LASF94
	.byte	0x2
	.uleb128 0x17
	.long	.LASF95
	.byte	0x4
	.uleb128 0x17
	.long	.LASF96
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x61
	.byte	0x3
	.value	0x147
	.byte	0x1
	.long	0x569
	.uleb128 0x1a
	.long	.LASF97
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF98
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xb1
	.long	0x574
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x569
	.uleb128 0x10
	.long	.LASF99
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x574
	.uleb128 0x10
	.long	.LASF100
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0x29e
	.uleb128 0x1b
	.long	.LASF192
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x5e6
	.uleb128 0x17
	.long	.LASF101
	.byte	0
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1
	.uleb128 0x17
	.long	.LASF103
	.byte	0x2
	.uleb128 0x17
	.long	.LASF104
	.byte	0x3
	.uleb128 0x17
	.long	.LASF105
	.byte	0x4
	.uleb128 0x17
	.long	.LASF106
	.byte	0x5
	.uleb128 0x17
	.long	.LASF107
	.byte	0x6
	.uleb128 0x17
	.long	.LASF108
	.byte	0x7
	.uleb128 0x17
	.long	.LASF109
	.byte	0x8
	.uleb128 0x17
	.long	.LASF110
	.byte	0x9
	.uleb128 0x17
	.long	.LASF111
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x591
	.uleb128 0x12
	.long	.LASF112
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x2f4
	.uleb128 0xd
	.long	0x5e6
	.long	0x603
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x5f8
	.uleb128 0x12
	.long	.LASF113
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x603
	.uleb128 0x10
	.long	.LASF114
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x42e
	.uleb128 0x10
	.long	.LASF115
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF116
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF117
	.byte	0x1c
	.byte	0x14
	.byte	0xd
	.long	0x645
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF118
	.uleb128 0x10
	.long	.LASF119
	.byte	0x1c
	.byte	0x17
	.byte	0xf
	.long	0x29
	.uleb128 0x10
	.long	.LASF120
	.byte	0x1c
	.byte	0x23
	.byte	0xc
	.long	0x61
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.long	0x679
	.uleb128 0x17
	.long	.LASF121
	.byte	0x80
	.byte	0
	.uleb128 0xd
	.long	0x3bd
	.long	0x689
	.uleb128 0xe
	.long	0x35
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x679
	.uleb128 0x1c
	.long	.LASF193
	.byte	0x1
	.byte	0x3d
	.byte	0x1c
	.long	0x689
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1d
	.long	.LASF140
	.byte	0x1
	.value	0x101
	.byte	0x1
	.long	0x61
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0xcea
	.uleb128 0x1e
	.long	.LASF122
	.byte	0x1
	.value	0x101
	.byte	0xb
	.long	0x61
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x1
	.value	0x101
	.byte	0x18
	.long	0x470
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1f
	.long	.LASF124
	.byte	0x1
	.value	0x103
	.byte	0x8
	.long	0x645
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1f
	.long	.LASF125
	.byte	0x1
	.value	0x104
	.byte	0xd
	.long	0x4b3
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.value	0x105
	.byte	0x7
	.long	0x61
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1f
	.long	.LASF126
	.byte	0x1
	.value	0x109
	.byte	0x8
	.long	0x645
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x180
	.long	0x7a0
	.uleb128 0x22
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.uleb128 0x23
	.quad	.LVL160
	.long	0x152b
	.long	0x786
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL161
	.long	0x1537
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xcea
	.quad	.LBI109
	.byte	.LVU204
	.long	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.value	0x141
	.byte	0x3
	.long	0xb2f
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x28
	.long	0xcf7
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x28
	.long	0xd02
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x29
	.long	0xd0e
	.long	.Ldebug_ranges0+0x210
	.long	0xb09
	.uleb128 0x28
	.long	0xd0f
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x28
	.long	0xd19
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x28
	.long	0xd25
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x28
	.long	0xd31
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x2a
	.long	0xd3d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	0xd49
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x28
	.long	0xd55
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x28
	.long	0xd61
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x29
	.long	0xd6d
	.long	.Ldebug_ranges0+0x260
	.long	0x9fa
	.uleb128 0x28
	.long	0xd72
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x29
	.long	0xd7e
	.long	.Ldebug_ranges0+0x2e0
	.long	0x8f8
	.uleb128 0x2a
	.long	0xd83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x2b
	.long	0xd8f
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.long	0x8d5
	.uleb128 0x23
	.quad	.LVL162
	.long	0x152b
	.long	0x8bc
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL163
	.long	0x1537
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL112
	.long	0x1543
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xdbc
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.long	0x961
	.uleb128 0x23
	.quad	.LVL154
	.long	0x152b
	.long	0x93a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL156
	.long	0x154f
	.uleb128 0x25
	.quad	.LVL157
	.long	0x1537
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xd91
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.long	0x9bc
	.uleb128 0x23
	.quad	.LVL158
	.long	0x152b
	.long	0x9a3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL159
	.long	0x1537
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL102
	.long	0x155b
	.long	0x9df
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL109
	.long	0x1568
	.uleb128 0x2c
	.quad	.LVL124
	.long	0x1568
	.byte	0
	.uleb128 0x2d
	.long	0x14c5
	.quad	.LBI120
	.byte	.LVU254
	.long	.Ldebug_ranges0+0x330
	.byte	0x1
	.byte	0xf9
	.byte	0xf
	.long	0xa38
	.uleb128 0x2e
	.long	0x14d6
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x25
	.quad	.LVL133
	.long	0x1574
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x150d
	.quad	.LBI123
	.byte	.LVU262
	.long	.Ldebug_ranges0+0x360
	.byte	0x1
	.byte	0xa1
	.byte	0x17
	.long	0xa73
	.uleb128 0x2e
	.long	0x151e
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x25
	.quad	.LVL119
	.long	0x1581
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xdbe
	.quad	.LBB130
	.quad	.LBE130-.LBB130
	.long	0xadc
	.uleb128 0x23
	.quad	.LVL134
	.long	0x152b
	.long	0xab5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL136
	.long	0x154f
	.uleb128 0x25
	.quad	.LVL137
	.long	0x1537
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL121
	.long	0x158e
	.long	0xaf4
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL142
	.long	0x159a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL90
	.long	0x158e
	.long	0xb20
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.quad	.LVL92
	.long	0x15a7
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL63
	.long	0x15b3
	.uleb128 0x23
	.quad	.LVL64
	.long	0x15bf
	.long	0xb60
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x23
	.quad	.LVL65
	.long	0x15cb
	.long	0xb8c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.byte	0
	.uleb128 0x23
	.quad	.LVL66
	.long	0x15d7
	.long	0xbab
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.uleb128 0x2c
	.quad	.LVL67
	.long	0x15e3
	.uleb128 0x23
	.quad	.LVL68
	.long	0x15f0
	.long	0xbf5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL70
	.long	0x15fc
	.long	0xc33
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL71
	.long	0x1608
	.long	0xc4a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL79
	.long	0xdc1
	.long	0xc61
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.quad	.LVL81
	.long	0x1615
	.long	0xc79
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL83
	.long	0x1621
	.uleb128 0x2c
	.quad	.LVL88
	.long	0x162d
	.uleb128 0x2c
	.quad	.LVL89
	.long	0x1639
	.uleb128 0x2c
	.quad	.LVL143
	.long	0x1645
	.uleb128 0x23
	.quad	.LVL151
	.long	0x1615
	.long	0xcc5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL153
	.long	0xdc1
	.long	0xcdc
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.quad	.LVL164
	.long	0x1651
	.byte	0
	.uleb128 0x2f
	.long	.LASF143
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x1
	.long	0xdc1
	.uleb128 0x30
	.string	"fp"
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.long	0x2ba
	.uleb128 0x31
	.long	.LASF127
	.byte	0x1
	.byte	0x72
	.byte	0x9
	.long	0xa4
	.uleb128 0x32
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.byte	0x7f
	.byte	0xb
	.long	0x61
	.uleb128 0x31
	.long	.LASF128
	.byte	0x1
	.byte	0x82
	.byte	0xc
	.long	0x645
	.uleb128 0x31
	.long	.LASF129
	.byte	0x1
	.byte	0x89
	.byte	0x11
	.long	0x4b3
	.uleb128 0x31
	.long	.LASF130
	.byte	0x1
	.byte	0x8c
	.byte	0x11
	.long	0x4b3
	.uleb128 0x31
	.long	.LASF131
	.byte	0x1
	.byte	0x8f
	.byte	0xe
	.long	0x29
	.uleb128 0x31
	.long	.LASF132
	.byte	0x1
	.byte	0x92
	.byte	0xc
	.long	0x645
	.uleb128 0x31
	.long	.LASF133
	.byte	0x1
	.byte	0x97
	.byte	0xc
	.long	0x645
	.uleb128 0x31
	.long	.LASF134
	.byte	0x1
	.byte	0x9a
	.byte	0xe
	.long	0x29
	.uleb128 0x33
	.long	0xdbe
	.uleb128 0x31
	.long	.LASF135
	.byte	0x1
	.byte	0xa6
	.byte	0x14
	.long	0x645
	.uleb128 0x33
	.long	0xd91
	.uleb128 0x31
	.long	.LASF136
	.byte	0x1
	.byte	0xaa
	.byte	0x18
	.long	0x645
	.uleb128 0x34
	.byte	0
	.uleb128 0x34
	.uleb128 0x33
	.long	0xdbc
	.uleb128 0x31
	.long	.LASF137
	.byte	0x1
	.byte	0xe9
	.byte	0x17
	.long	0x29e
	.uleb128 0x31
	.long	.LASF138
	.byte	0x1
	.byte	0xe9
	.byte	0x17
	.long	0x2ba
	.uleb128 0x31
	.long	.LASF139
	.byte	0x1
	.byte	0xe9
	.byte	0x17
	.long	0x29
	.byte	0
	.uleb128 0x34
	.byte	0
	.uleb128 0x34
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF141
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x13cc
	.uleb128 0x36
	.long	.LASF142
	.byte	0x1
	.byte	0x48
	.byte	0xc
	.long	0x61
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x2d
	.long	0x149a
	.quad	.LBI48
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.long	0xe40
	.uleb128 0x2e
	.long	0x14b7
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x2e
	.long	0x14ab
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x25
	.quad	.LVL5
	.long	0x165a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x13cc
	.quad	.LBI52
	.byte	.LVU41
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x61
	.byte	0x7
	.long	0x1153
	.uleb128 0x37
	.long	0x13da
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2a
	.long	0x1417
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.long	0x1424
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x28
	.long	0x1431
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x28
	.long	0x143e
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x26
	.long	0x147b
	.quad	.LBI54
	.byte	.LVU65
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0xf24
	.uleb128 0x2e
	.long	0x148c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x23
	.quad	.LVL32
	.long	0x1666
	.long	0xef6
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.byte	0
	.uleb128 0x25
	.quad	.LVL49
	.long	0x1666
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x147b
	.quad	.LBI60
	.byte	.LVU80
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0xf9c
	.uleb128 0x2e
	.long	0x148c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x23
	.quad	.LVL40
	.long	0x1666
	.long	0xf75
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL56
	.long	0x1666
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x147b
	.quad	.LBI69
	.byte	.LVU91
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xfe3
	.uleb128 0x2e
	.long	0x148c
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x25
	.quad	.LVL44
	.long	0x1666
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL29
	.long	0x152b
	.long	0x100c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL33
	.long	0x15bf
	.long	0x1028
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL35
	.long	0x1672
	.long	0x104c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.quad	.LVL37
	.long	0x152b
	.long	0x1075
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL41
	.long	0x152b
	.long	0x109e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2c
	.quad	.LVL46
	.long	0x152b
	.uleb128 0x23
	.quad	.LVL50
	.long	0x15bf
	.long	0x10c7
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL52
	.long	0x1672
	.long	0x10eb
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.quad	.LVL53
	.long	0x152b
	.long	0x1114
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL58
	.long	0x152b
	.long	0x113d
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL59
	.long	0x167e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x147b
	.quad	.LBI79
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x4e
	.byte	0x7
	.long	0x1193
	.uleb128 0x2e
	.long	0x148c
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x25
	.quad	.LVL11
	.long	0x1666
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	0x1471
	.quad	.LBI83
	.byte	.LVU31
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.byte	0x1
	.byte	0x56
	.byte	0x7
	.long	0x11f6
	.uleb128 0x23
	.quad	.LVL14
	.long	0x152b
	.long	0x11e1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL15
	.long	0x167e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	0x1467
	.quad	.LBI85
	.byte	.LVU34
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.byte	0x1
	.byte	0x57
	.byte	0x7
	.long	0x1259
	.uleb128 0x23
	.quad	.LVL16
	.long	0x152b
	.long	0x1244
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL17
	.long	0x167e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL2
	.long	0x152b
	.long	0x1282
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL6
	.long	0x1608
	.long	0x129a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL8
	.long	0x152b
	.long	0x12be
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x23
	.quad	.LVL12
	.long	0x152b
	.long	0x12e7
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL13
	.long	0x167e
	.long	0x12ff
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL18
	.long	0x152b
	.long	0x1328
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL19
	.long	0x167e
	.long	0x1340
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.quad	.LVL20
	.long	0x168b
	.uleb128 0x23
	.quad	.LVL21
	.long	0x152b
	.long	0x1376
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL22
	.long	0x167e
	.long	0x138e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL23
	.long	0x152b
	.long	0x13b7
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL24
	.long	0x167e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF144
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x144c
	.uleb128 0x3a
	.long	.LASF146
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x29e
	.uleb128 0x3b
	.long	.LASF145
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0x1412
	.uleb128 0x3c
	.long	.LASF146
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x29e
	.byte	0
	.uleb128 0x3c
	.long	.LASF147
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x29e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x13e7
	.uleb128 0x3d
	.long	.LASF145
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0x145c
	.uleb128 0x3d
	.long	.LASF147
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x29e
	.uleb128 0x3d
	.long	.LASF148
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0x1461
	.uleb128 0x3d
	.long	.LASF149
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x29e
	.byte	0
	.uleb128 0xd
	.long	0x1412
	.long	0x145c
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x144c
	.uleb128 0x7
	.byte	0x8
	.long	0x1412
	.uleb128 0x3e
	.long	.LASF150
	.byte	0x3
	.value	0x24c
	.byte	0x1
	.byte	0x3
	.uleb128 0x3e
	.long	.LASF151
	.byte	0x3
	.value	0x245
	.byte	0x1
	.byte	0x3
	.uleb128 0x3f
	.long	.LASF153
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x149a
	.uleb128 0x40
	.long	.LASF152
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x2a9
	.uleb128 0x41
	.byte	0
	.uleb128 0x3f
	.long	.LASF154
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x14c5
	.uleb128 0x40
	.long	.LASF138
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2c0
	.uleb128 0x40
	.long	.LASF152
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x2a9
	.uleb128 0x41
	.byte	0
	.uleb128 0x42
	.long	.LASF155
	.byte	0x4
	.byte	0x6c
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x14e3
	.uleb128 0x43
	.string	"__c"
	.byte	0x4
	.byte	0x6c
	.byte	0x17
	.long	0x61
	.byte	0
	.uleb128 0x42
	.long	.LASF156
	.byte	0x4
	.byte	0x65
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x150d
	.uleb128 0x43
	.string	"__c"
	.byte	0x4
	.byte	0x65
	.byte	0x14
	.long	0x61
	.uleb128 0x40
	.long	.LASF138
	.byte	0x4
	.byte	0x65
	.byte	0x1f
	.long	0x2ba
	.byte	0
	.uleb128 0x42
	.long	.LASF157
	.byte	0x4
	.byte	0x42
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x152b
	.uleb128 0x40
	.long	.LASF158
	.byte	0x4
	.byte	0x42
	.byte	0x16
	.long	0x2ba
	.byte	0
	.uleb128 0x44
	.long	.LASF159
	.long	.LASF159
	.byte	0x1d
	.byte	0x33
	.byte	0xe
	.uleb128 0x44
	.long	.LASF160
	.long	.LASF160
	.byte	0x1b
	.byte	0x28
	.byte	0xd
	.uleb128 0x44
	.long	.LASF161
	.long	.LASF161
	.byte	0x1c
	.byte	0x30
	.byte	0x1
	.uleb128 0x44
	.long	.LASF162
	.long	.LASF162
	.byte	0x12
	.byte	0x25
	.byte	0xd
	.uleb128 0x45
	.long	.LASF163
	.long	.LASF163
	.byte	0x9
	.value	0x2a3
	.byte	0xf
	.uleb128 0x44
	.long	.LASF164
	.long	.LASF164
	.byte	0x17
	.byte	0x4f
	.byte	0x23
	.uleb128 0x45
	.long	.LASF165
	.long	.LASF165
	.byte	0x9
	.value	0x35b
	.byte	0xc
	.uleb128 0x45
	.long	.LASF166
	.long	.LASF166
	.byte	0x9
	.value	0x35a
	.byte	0xc
	.uleb128 0x44
	.long	.LASF167
	.long	.LASF167
	.byte	0x1c
	.byte	0x44
	.byte	0x1
	.uleb128 0x45
	.long	.LASF168
	.long	.LASF168
	.byte	0x1e
	.value	0x235
	.byte	0xd
	.uleb128 0x44
	.long	.LASF169
	.long	.LASF169
	.byte	0x1f
	.byte	0x35
	.byte	0x7
	.uleb128 0x44
	.long	.LASF170
	.long	.LASF170
	.byte	0x19
	.byte	0x25
	.byte	0xd
	.uleb128 0x44
	.long	.LASF171
	.long	.LASF171
	.byte	0x20
	.byte	0x7a
	.byte	0xe
	.uleb128 0x44
	.long	.LASF172
	.long	.LASF172
	.byte	0x1d
	.byte	0x56
	.byte	0xe
	.uleb128 0x44
	.long	.LASF173
	.long	.LASF173
	.byte	0x1d
	.byte	0x52
	.byte	0xe
	.uleb128 0x45
	.long	.LASF174
	.long	.LASF174
	.byte	0x1e
	.value	0x253
	.byte	0xc
	.uleb128 0x44
	.long	.LASF175
	.long	.LASF175
	.byte	0xe
	.byte	0x42
	.byte	0xc
	.uleb128 0x44
	.long	.LASF176
	.long	.LASF176
	.byte	0x18
	.byte	0x3c
	.byte	0xd
	.uleb128 0x45
	.long	.LASF177
	.long	.LASF177
	.byte	0x1e
	.value	0x269
	.byte	0xd
	.uleb128 0x44
	.long	.LASF178
	.long	.LASF178
	.byte	0x1c
	.byte	0x27
	.byte	0x1
	.uleb128 0x44
	.long	.LASF179
	.long	.LASF179
	.byte	0x1c
	.byte	0x2c
	.byte	0x1
	.uleb128 0x44
	.long	.LASF180
	.long	.LASF180
	.byte	0x1c
	.byte	0x36
	.byte	0x1
	.uleb128 0x44
	.long	.LASF181
	.long	.LASF181
	.byte	0x1c
	.byte	0x3d
	.byte	0x1
	.uleb128 0x44
	.long	.LASF182
	.long	.LASF182
	.byte	0x1c
	.byte	0x48
	.byte	0x1
	.uleb128 0x46
	.long	.LASF194
	.long	.LASF194
	.uleb128 0x44
	.long	.LASF183
	.long	.LASF183
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x44
	.long	.LASF184
	.long	.LASF184
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x44
	.long	.LASF185
	.long	.LASF185
	.byte	0x21
	.byte	0x8c
	.byte	0xc
	.uleb128 0x45
	.long	.LASF186
	.long	.LASF186
	.byte	0x9
	.value	0x296
	.byte	0xc
	.uleb128 0x44
	.long	.LASF187
	.long	.LASF187
	.byte	0x1c
	.byte	0x4c
	.byte	0x1
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
.LVUS10:
	.uleb128 0
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU368
	.uleb128 .LVU368
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 0
.LLST10:
	.quad	.LVL60
	.quad	.LVL61
	.value	0x1
	.byte	0x55
	.quad	.LVL61
	.quad	.LVL93
	.value	0x1
	.byte	0x56
	.quad	.LVL93
	.quad	.LVL150
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL150
	.quad	.LVL153
	.value	0x1
	.byte	0x56
	.quad	.LVL153
	.quad	.LVL159
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL159
	.quad	.LVL161
	.value	0x1
	.byte	0x56
	.quad	.LVL161
	.quad	.LFE137
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU368
	.uleb128 .LVU368
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 0
.LLST11:
	.quad	.LVL60
	.quad	.LVL63-1
	.value	0x1
	.byte	0x54
	.quad	.LVL63-1
	.quad	.LVL93
	.value	0x1
	.byte	0x53
	.quad	.LVL93
	.quad	.LVL150
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL150
	.quad	.LVL153
	.value	0x1
	.byte	0x53
	.quad	.LVL153
	.quad	.LVL159
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL159
	.quad	.LVL161
	.value	0x1
	.byte	0x53
	.quad	.LVL161
	.quad	.LFE137
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU139
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU167
	.uleb128 .LVU171
	.uleb128 .LVU178
	.uleb128 .LVU180
	.uleb128 .LVU188
	.uleb128 .LVU190
	.uleb128 .LVU213
	.uleb128 .LVU364
	.uleb128 .LVU368
.LLST12:
	.quad	.LVL62
	.quad	.LVL67
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL74
	.value	0x1
	.byte	0x5d
	.quad	.LVL74
	.quad	.LVL75
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL80
	.value	0x1
	.byte	0x5d
	.quad	.LVL82
	.quad	.LVL84
	.value	0x1
	.byte	0x5d
	.quad	.LVL86
	.quad	.LVL93
	.value	0x1
	.byte	0x5d
	.quad	.LVL150
	.quad	.LVL153
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU140
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU167
	.uleb128 .LVU171
	.uleb128 .LVU188
	.uleb128 .LVU190
	.uleb128 .LVU207
	.uleb128 .LVU364
	.uleb128 .LVU368
.LLST13:
	.quad	.LVL62
	.quad	.LVL67
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL75
	.value	0x1
	.byte	0x5e
	.quad	.LVL78
	.quad	.LVL84
	.value	0x1
	.byte	0x5e
	.quad	.LVL86
	.quad	.LVL91
	.value	0x1
	.byte	0x5e
	.quad	.LVL150
	.quad	.LVL153
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU151
	.uleb128 .LVU156
	.uleb128 .LVU158
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU170
	.uleb128 .LVU171
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU179
	.uleb128 .LVU180
	.uleb128 .LVU187
	.uleb128 .LVU188
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU197
	.uleb128 .LVU364
	.uleb128 .LVU366
	.uleb128 .LVU367
	.uleb128 .LVU368
.LLST14:
	.quad	.LVL68
	.quad	.LVL69
	.value	0x1
	.byte	0x50
	.quad	.LVL71
	.quad	.LVL76
	.value	0x1
	.byte	0x50
	.quad	.LVL76
	.quad	.LVL77
	.value	0x3
	.byte	0x70
	.sleb128 48
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL79-1
	.value	0x1
	.byte	0x50
	.quad	.LVL79
	.quad	.LVL81-1
	.value	0x1
	.byte	0x50
	.quad	.LVL82
	.quad	.LVL83-1
	.value	0x1
	.byte	0x50
	.quad	.LVL84
	.quad	.LVL85
	.value	0x1
	.byte	0x50
	.quad	.LVL85
	.quad	.LVL86
	.value	0x3
	.byte	0x70
	.sleb128 48
	.byte	0x9f
	.quad	.LVL86
	.quad	.LVL87
	.value	0x1
	.byte	0x50
	.quad	.LVL150
	.quad	.LVL151-1
	.value	0x1
	.byte	0x50
	.quad	.LVL152
	.quad	.LVL153-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU142
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU159
	.uleb128 .LVU160
	.uleb128 .LVU213
	.uleb128 .LVU364
	.uleb128 .LVU368
	.uleb128 .LVU372
	.uleb128 .LVU374
.LLST15:
	.quad	.LVL62
	.quad	.LVL67
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL72
	.value	0x1
	.byte	0x5c
	.quad	.LVL73
	.quad	.LVL93
	.value	0x1
	.byte	0x5c
	.quad	.LVL150
	.quad	.LVL153
	.value	0x1
	.byte	0x5c
	.quad	.LVL159
	.quad	.LVL161
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU207
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU230
	.uleb128 .LVU261
	.uleb128 .LVU273
	.uleb128 .LVU297
	.uleb128 .LVU303
	.uleb128 .LVU303
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU325
	.uleb128 .LVU334
	.uleb128 .LVU342
.LLST16:
	.quad	.LVL91
	.quad	.LVL92-1
	.value	0x1
	.byte	0x50
	.quad	.LVL92-1
	.quad	.LVL96
	.value	0x1
	.byte	0x5e
	.quad	.LVL107
	.quad	.LVL111
	.value	0x1
	.byte	0x5e
	.quad	.LVL118
	.quad	.LVL122
	.value	0x1
	.byte	0x5e
	.quad	.LVL122
	.quad	.LVL123
	.value	0x1
	.byte	0x50
	.quad	.LVL123
	.quad	.LVL126
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL126
	.quad	.LVL132
	.value	0x1
	.byte	0x5e
	.quad	.LVL139
	.quad	.LVL141
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU213
	.uleb128 .LVU344
	.uleb128 .LVU349
	.uleb128 .LVU364
	.uleb128 .LVU368
	.uleb128 .LVU372
	.uleb128 .LVU374
	.uleb128 .LVU377
.LLST17:
	.quad	.LVL93
	.quad	.LVL142
	.value	0x1
	.byte	0x5f
	.quad	.LVL144
	.quad	.LVL150
	.value	0x1
	.byte	0x5f
	.quad	.LVL153
	.quad	.LVL159
	.value	0x1
	.byte	0x5f
	.quad	.LVL161
	.quad	.LVL163
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU234
	.uleb128 .LVU236
	.uleb128 .LVU249
	.uleb128 .LVU261
	.uleb128 .LVU293
	.uleb128 .LVU297
	.uleb128 .LVU299
	.uleb128 .LVU302
	.uleb128 .LVU302
	.uleb128 .LVU304
	.uleb128 .LVU321
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU331
	.uleb128 .LVU333
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU342
.LLST18:
	.quad	.LVL98
	.quad	.LVL100
	.value	0x1
	.byte	0x5d
	.quad	.LVL104
	.quad	.LVL107
	.value	0x1
	.byte	0x5d
	.quad	.LVL115
	.quad	.LVL118
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.quad	.LVL120
	.quad	.LVL121-1
	.value	0x1
	.byte	0x50
	.quad	.LVL121-1
	.quad	.LVL123
	.value	0x1
	.byte	0x5d
	.quad	.LVL130
	.quad	.LVL132
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL132
	.quad	.LVL137
	.value	0x1
	.byte	0x5d
	.quad	.LVL138
	.quad	.LVL139
	.value	0x1
	.byte	0x5d
	.quad	.LVL139
	.quad	.LVL141
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU216
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU236
	.uleb128 .LVU249
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU333
	.uleb128 .LVU334
	.uleb128 .LVU340
	.uleb128 .LVU340
	.uleb128 .LVU342
	.uleb128 .LVU349
	.uleb128 .LVU364
	.uleb128 .LVU370
	.uleb128 .LVU372
	.uleb128 .LVU374
	.uleb128 .LVU377
.LLST19:
	.quad	.LVL93
	.quad	.LVL95
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL100
	.value	0x1
	.byte	0x53
	.quad	.LVL104
	.quad	.LVL113
	.value	0x1
	.byte	0x53
	.quad	.LVL113
	.quad	.LVL118
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL118
	.quad	.LVL130
	.value	0x1
	.byte	0x53
	.quad	.LVL130
	.quad	.LVL132
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL132
	.quad	.LVL138
	.value	0x1
	.byte	0x53
	.quad	.LVL139
	.quad	.LVL140
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL140
	.quad	.LVL141
	.value	0x1
	.byte	0x53
	.quad	.LVL144
	.quad	.LVL150
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL157
	.quad	.LVL159
	.value	0x1
	.byte	0x53
	.quad	.LVL161
	.quad	.LVL163
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU217
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 .LVU330
	.uleb128 .LVU331
	.uleb128 .LVU342
	.uleb128 .LVU349
	.uleb128 .LVU350
	.uleb128 .LVU350
	.uleb128 .LVU354
	.uleb128 .LVU354
	.uleb128 .LVU364
	.uleb128 .LVU368
	.uleb128 .LVU369
	.uleb128 .LVU370
	.uleb128 .LVU372
	.uleb128 .LVU374
	.uleb128 .LVU377
.LLST20:
	.quad	.LVL93
	.quad	.LVL95
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL96
	.value	0x1
	.byte	0x5c
	.quad	.LVL96
	.quad	.LVL97
	.value	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.quad	.LVL97
	.quad	.LVL116
	.value	0x1
	.byte	0x5c
	.quad	.LVL116
	.quad	.LVL118
	.value	0x1
	.byte	0x50
	.quad	.LVL118
	.quad	.LVL135
	.value	0x1
	.byte	0x5c
	.quad	.LVL137
	.quad	.LVL141
	.value	0x1
	.byte	0x5c
	.quad	.LVL144
	.quad	.LVL144
	.value	0x1
	.byte	0x5c
	.quad	.LVL144
	.quad	.LVL145
	.value	0x1
	.byte	0x50
	.quad	.LVL145
	.quad	.LVL150
	.value	0x1
	.byte	0x5c
	.quad	.LVL153
	.quad	.LVL155
	.value	0x1
	.byte	0x5c
	.quad	.LVL157
	.quad	.LVL159
	.value	0x1
	.byte	0x5c
	.quad	.LVL161
	.quad	.LVL163
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU218
	.uleb128 .LVU228
	.uleb128 .LVU278
	.uleb128 .LVU294
	.uleb128 .LVU317
	.uleb128 .LVU325
	.uleb128 .LVU331
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU342
	.uleb128 .LVU349
	.uleb128 .LVU356
	.uleb128 .LVU374
	.uleb128 .LVU376
.LLST21:
	.quad	.LVL93
	.quad	.LVL95
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL112
	.quad	.LVL116
	.value	0x1
	.byte	0x50
	.quad	.LVL129
	.quad	.LVL132
	.value	0x1
	.byte	0x5c
	.quad	.LVL137
	.quad	.LVL139
	.value	0x1
	.byte	0x50
	.quad	.LVL139
	.quad	.LVL141
	.value	0x1
	.byte	0x5c
	.quad	.LVL144
	.quad	.LVL146
	.value	0x1
	.byte	0x50
	.quad	.LVL161
	.quad	.LVL162-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU225
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU242
	.uleb128 .LVU246
	.uleb128 .LVU342
	.uleb128 .LVU349
	.uleb128 .LVU361
	.uleb128 .LVU361
	.uleb128 .LVU364
	.uleb128 .LVU370
	.uleb128 .LVU372
	.uleb128 .LVU374
	.uleb128 .LVU377
.LLST22:
	.quad	.LVL94
	.quad	.LVL95
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL101
	.value	0x3
	.byte	0x91
	.sleb128 -98
	.quad	.LVL103
	.quad	.LVL141
	.value	0x3
	.byte	0x91
	.sleb128 -98
	.quad	.LVL144
	.quad	.LVL149
	.value	0x3
	.byte	0x91
	.sleb128 -98
	.quad	.LVL149
	.quad	.LVL150
	.value	0x1
	.byte	0x50
	.quad	.LVL157
	.quad	.LVL159
	.value	0x3
	.byte	0x91
	.sleb128 -98
	.quad	.LVL161
	.quad	.LVL163
	.value	0x3
	.byte	0x91
	.sleb128 -98
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU226
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU235
	.uleb128 .LVU253
	.uleb128 .LVU324
	.uleb128 .LVU325
	.uleb128 .LVU336
	.uleb128 .LVU349
	.uleb128 .LVU358
	.uleb128 .LVU363
	.uleb128 .LVU364
	.uleb128 .LVU370
	.uleb128 .LVU372
	.uleb128 .LVU374
	.uleb128 .LVU377
.LLST23:
	.quad	.LVL94
	.quad	.LVL95
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL99
	.value	0x3
	.byte	0x91
	.sleb128 -99
	.quad	.LVL105
	.quad	.LVL131
	.value	0x3
	.byte	0x91
	.sleb128 -99
	.quad	.LVL132
	.quad	.LVL139
	.value	0x3
	.byte	0x91
	.sleb128 -99
	.quad	.LVL144
	.quad	.LVL147
	.value	0x3
	.byte	0x91
	.sleb128 -99
	.quad	.LVL149
	.quad	.LVL150
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL157
	.quad	.LVL159
	.value	0x3
	.byte	0x91
	.sleb128 -99
	.quad	.LVL161
	.quad	.LVL163
	.value	0x3
	.byte	0x91
	.sleb128 -99
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU227
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU342
	.uleb128 .LVU349
	.uleb128 .LVU360
	.uleb128 .LVU360
	.uleb128 .LVU362
	.uleb128 .LVU368
	.uleb128 .LVU372
	.uleb128 .LVU374
	.uleb128 .LVU377
.LLST24:
	.quad	.LVL94
	.quad	.LVL95
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL103
	.value	0x1
	.byte	0x56
	.quad	.LVL103
	.quad	.LVL105
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL105
	.quad	.LVL139
	.value	0x1
	.byte	0x56
	.quad	.LVL139
	.quad	.LVL141
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL144
	.quad	.LVL148
	.value	0x1
	.byte	0x56
	.quad	.LVL148
	.quad	.LVL149
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL153
	.quad	.LVL159
	.value	0x1
	.byte	0x56
	.quad	.LVL161
	.quad	.LVL163
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU228
	.uleb128 .LVU230
	.uleb128 .LVU271
	.uleb128 .LVU273
	.uleb128 .LVU309
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 .LVU315
.LLST25:
	.quad	.LVL95
	.quad	.LVL96
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL110
	.quad	.LVL111
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL125
	.quad	.LVL127
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL127
	.quad	.LVL128
	.value	0x12
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x31
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU254
	.uleb128 .LVU258
	.uleb128 .LVU325
	.uleb128 .LVU327
.LLST26:
	.quad	.LVL105
	.quad	.LVL106
	.value	0x1
	.byte	0x5d
	.quad	.LVL132
	.quad	.LVL133
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU262
	.uleb128 .LVU265
	.uleb128 .LVU297
	.uleb128 .LVU299
.LLST27:
	.quad	.LVL107
	.quad	.LVL108
	.value	0x1
	.byte	0x5e
	.quad	.LVL118
	.quad	.LVL120
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LVL6
	.value	0x1
	.byte	0x56
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x55
	.quad	.LVL7
	.quad	.LFE135
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU12
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU16
.LLST1:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x1
	.byte	0x50
	.quad	.LVL4
	.quad	.LVL5-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU12
	.uleb128 .LVU16
.LLST2:
	.quad	.LVL3
	.quad	.LVL5-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU45
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU76
	.uleb128 .LVU97
	.uleb128 .LVU125
.LLST3:
	.quad	.LVL25
	.quad	.LVL28
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	.LVL28
	.quad	.LVL36
	.value	0x1
	.byte	0x5c
	.quad	.LVL45
	.quad	.LVL57
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU46
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU63
	.uleb128 .LVU97
	.uleb128 .LVU99
.LLST4:
	.quad	.LVL25
	.quad	.LVL26
	.value	0x1
	.byte	0x57
	.quad	.LVL26
	.quad	.LVL29-1
	.value	0x1
	.byte	0x50
	.quad	.LVL45
	.quad	.LVL46-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU72
	.uleb128 .LVU75
	.uleb128 .LVU108
	.uleb128 .LVU111
.LLST5:
	.quad	.LVL34
	.quad	.LVL35-1
	.value	0x1
	.byte	0x50
	.quad	.LVL51
	.quad	.LVL52-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU65
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU101
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU105
.LLST6:
	.quad	.LVL30
	.quad	.LVL31
	.value	0x1
	.byte	0x50
	.quad	.LVL31
	.quad	.LVL32-1
	.value	0x1
	.byte	0x54
	.quad	.LVL47
	.quad	.LVL48
	.value	0x1
	.byte	0x50
	.quad	.LVL48
	.quad	.LVL49-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU80
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU86
	.uleb128 .LVU116
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU122
.LLST7:
	.quad	.LVL38
	.quad	.LVL39
	.value	0x1
	.byte	0x50
	.quad	.LVL39
	.quad	.LVL40-1
	.value	0x1
	.byte	0x54
	.quad	.LVL54
	.quad	.LVL55
	.value	0x1
	.byte	0x50
	.quad	.LVL55
	.quad	.LVL56-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU91
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU95
.LLST8:
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
.LVUS9:
	.uleb128 .LVU24
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
.LLST9:
	.quad	.LVL9
	.quad	.LVL10
	.value	0x1
	.byte	0x50
	.quad	.LVL10
	.quad	.LVL11-1
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
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB48
	.quad	.LBE48
	.quad	.LBB51
	.quad	.LBE51
	.quad	0
	.quad	0
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB87
	.quad	.LBE87
	.quad	0
	.quad	0
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB59
	.quad	.LBE59
	.quad	.LBB73
	.quad	.LBE73
	.quad	.LBB74
	.quad	.LBE74
	.quad	0
	.quad	0
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB67
	.quad	.LBE67
	.quad	.LBB68
	.quad	.LBE68
	.quad	.LBB75
	.quad	.LBE75
	.quad	.LBB76
	.quad	.LBE76
	.quad	.LBB77
	.quad	.LBE77
	.quad	0
	.quad	0
	.quad	.LBB69
	.quad	.LBE69
	.quad	.LBB72
	.quad	.LBE72
	.quad	0
	.quad	0
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB82
	.quad	.LBE82
	.quad	0
	.quad	0
	.quad	.LBB106
	.quad	.LBE106
	.quad	.LBB108
	.quad	.LBE108
	.quad	.LBB143
	.quad	.LBE143
	.quad	0
	.quad	0
	.quad	.LBB109
	.quad	.LBE109
	.quad	.LBB141
	.quad	.LBE141
	.quad	.LBB142
	.quad	.LBE142
	.quad	.LBB144
	.quad	.LBE144
	.quad	0
	.quad	0
	.quad	.LBB111
	.quad	.LBE111
	.quad	.LBB135
	.quad	.LBE135
	.quad	.LBB136
	.quad	.LBE136
	.quad	.LBB137
	.quad	.LBE137
	.quad	0
	.quad	0
	.quad	.LBB112
	.quad	.LBE112
	.quad	.LBB126
	.quad	.LBE126
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB131
	.quad	.LBE131
	.quad	.LBB132
	.quad	.LBE132
	.quad	.LBB133
	.quad	.LBE133
	.quad	.LBB134
	.quad	.LBE134
	.quad	0
	.quad	0
	.quad	.LBB113
	.quad	.LBE113
	.quad	.LBB115
	.quad	.LBE115
	.quad	.LBB116
	.quad	.LBE116
	.quad	.LBB119
	.quad	.LBE119
	.quad	0
	.quad	0
	.quad	.LBB120
	.quad	.LBE120
	.quad	.LBB129
	.quad	.LBE129
	.quad	0
	.quad	0
	.quad	.LBB123
	.quad	.LBE123
	.quad	.LBB127
	.quad	.LBE127
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB137
	.quad	.LFE137
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF119:
	.string	"max_column_width"
.LASF9:
	.string	"__off_t"
.LASF92:
	.string	"_ISgraph"
.LASF109:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF98:
	.string	"GETOPT_VERSION_CHAR"
.LASF193:
	.string	"longopts"
.LASF192:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF170:
	.string	"set_program_name"
.LASF32:
	.string	"_shortbuf"
.LASF90:
	.string	"_ISspace"
.LASF103:
	.string	"shell_always_quoting_style"
.LASF102:
	.string	"shell_quoting_style"
.LASF97:
	.string	"GETOPT_HELP_CHAR"
.LASF20:
	.string	"_IO_buf_base"
.LASF153:
	.string	"printf"
.LASF57:
	.string	"long long unsigned int"
.LASF181:
	.string	"set_file_list"
.LASF87:
	.string	"_ISalpha"
.LASF168:
	.string	"free"
.LASF155:
	.string	"putchar_unlocked"
.LASF174:
	.string	"atexit"
.LASF88:
	.string	"_ISdigit"
.LASF69:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF113:
	.string	"quoting_style_vals"
.LASF82:
	.string	"uintmax_t"
.LASF146:
	.string	"program"
.LASF108:
	.string	"escape_quoting_style"
.LASF101:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF75:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF13:
	.string	"_flags"
.LASF151:
	.string	"emit_stdin_note"
.LASF36:
	.string	"_wide_data"
.LASF96:
	.string	"_ISalnum"
.LASF30:
	.string	"_cur_column"
.LASF79:
	.string	"program_invocation_short_name"
.LASF106:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF184:
	.string	"__printf_chk"
.LASF78:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF126:
	.string	"convert_first_only"
.LASF3:
	.string	"short unsigned int"
.LASF93:
	.string	"_ISblank"
.LASF83:
	.string	"TIMESPEC_HZ"
.LASF105:
	.string	"shell_escape_always_quoting_style"
.LASF72:
	.string	"timezone"
.LASF95:
	.string	"_ISpunct"
.LASF135:
	.string	"blank"
.LASF100:
	.string	"program_name"
.LASF176:
	.string	"version_etc"
.LASF104:
	.string	"shell_escape_quoting_style"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF188:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF154:
	.string	"fprintf"
.LASF138:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF172:
	.string	"bindtextdomain"
.LASF18:
	.string	"_IO_write_ptr"
.LASF64:
	.string	"name"
.LASF71:
	.string	"daylight"
.LASF49:
	.string	"sys_nerr"
.LASF111:
	.string	"custom_quoting_style"
.LASF134:
	.string	"pending"
.LASF116:
	.string	"error_one_per_line"
.LASF80:
	.string	"Version"
.LASF136:
	.string	"last_tab"
.LASF22:
	.string	"_IO_save_base"
.LASF77:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF171:
	.string	"setlocale"
.LASF47:
	.string	"stdout"
.LASF178:
	.string	"add_tab_stop"
.LASF99:
	.string	"version_etc_copyright"
.LASF158:
	.string	"__fp"
.LASF58:
	.string	"optarg"
.LASF139:
	.string	"__cnt"
.LASF86:
	.string	"_ISlower"
.LASF167:
	.string	"next_file"
.LASF73:
	.string	"getdate_err"
.LASF59:
	.string	"optind"
.LASF14:
	.string	"_IO_read_ptr"
.LASF132:
	.string	"one_blank_before_tab_stop"
.LASF165:
	.string	"__overflow"
.LASF143:
	.string	"unexpand"
.LASF191:
	.string	"_IO_lock_t"
.LASF62:
	.string	"_IO_FILE"
.LASF114:
	.string	"error_print_progname"
.LASF148:
	.string	"map_prog"
.LASF76:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF160:
	.string	"error"
.LASF179:
	.string	"parse_tab_stops"
.LASF149:
	.string	"lc_messages"
.LASF187:
	.string	"emit_tab_list_info"
.LASF25:
	.string	"_markers"
.LASF117:
	.string	"convert_entire_line"
.LASF107:
	.string	"c_maybe_quoting_style"
.LASF118:
	.string	"_Bool"
.LASF133:
	.string	"prev_blank"
.LASF120:
	.string	"exit_status"
.LASF147:
	.string	"node"
.LASF21:
	.string	"_IO_buf_end"
.LASF185:
	.string	"strncmp"
.LASF189:
	.string	"src/unexpand.c"
.LASF5:
	.string	"short int"
.LASF63:
	.string	"option"
.LASF66:
	.string	"flag"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF70:
	.string	"tzname"
.LASF42:
	.string	"FILE"
.LASF81:
	.string	"exit_failure"
.LASF177:
	.string	"exit"
.LASF183:
	.string	"__fprintf_chk"
.LASF194:
	.string	"__stack_chk_fail"
.LASF180:
	.string	"finalize_tab_stops"
.LASF159:
	.string	"dcgettext"
.LASF112:
	.string	"quoting_style_args"
.LASF61:
	.string	"optopt"
.LASF163:
	.string	"fwrite_unlocked"
.LASF131:
	.string	"tab_index"
.LASF124:
	.string	"have_tabval"
.LASF127:
	.string	"pending_blank"
.LASF54:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF164:
	.string	"__ctype_b_loc"
.LASF94:
	.string	"_IScntrl"
.LASF11:
	.string	"__time_t"
.LASF161:
	.string	"get_next_tab_column"
.LASF89:
	.string	"_ISxdigit"
.LASF110:
	.string	"clocale_quoting_style"
.LASF182:
	.string	"cleanup_file_list_stdin"
.LASF162:
	.string	"__errno_location"
.LASF60:
	.string	"opterr"
.LASF166:
	.string	"__uflow"
.LASF8:
	.string	"__uintmax_t"
.LASF10:
	.string	"__off64_t"
.LASF128:
	.string	"convert"
.LASF16:
	.string	"_IO_read_base"
.LASF129:
	.string	"column"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"_sys_siglist"
.LASF2:
	.string	"unsigned char"
.LASF152:
	.string	"__fmt"
.LASF145:
	.string	"infomap"
.LASF35:
	.string	"_codecvt"
.LASF157:
	.string	"getc_unlocked"
.LASF65:
	.string	"has_arg"
.LASF141:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF123:
	.string	"argv"
.LASF173:
	.string	"textdomain"
.LASF68:
	.string	"__daylight"
.LASF142:
	.string	"status"
.LASF190:
	.string	"/root/coreutils"
.LASF130:
	.string	"next_tab_column"
.LASF85:
	.string	"_ISupper"
.LASF38:
	.string	"_freeres_buf"
.LASF23:
	.string	"_IO_backup_base"
.LASF156:
	.string	"putc_unlocked"
.LASF169:
	.string	"xmalloc"
.LASF115:
	.string	"error_message_count"
.LASF50:
	.string	"sys_errlist"
.LASF122:
	.string	"argc"
.LASF125:
	.string	"tabval"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF175:
	.string	"getopt_long"
.LASF186:
	.string	"fputs_unlocked"
.LASF150:
	.string	"emit_mandatory_arg_note"
.LASF67:
	.string	"__tzname"
.LASF140:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF144:
	.string	"emit_ancillary_info"
.LASF91:
	.string	"_ISprint"
.LASF137:
	.string	"__ptr"
.LASF121:
	.string	"CONVERT_FIRST_ONLY_OPTION"
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
