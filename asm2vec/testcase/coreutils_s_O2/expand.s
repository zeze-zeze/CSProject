	.file	"expand.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"expand"
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
	.string	"Convert tabs in each FILE to spaces, writing to standard output.\n"
	.align 8
.LC6:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.align 8
.LC7:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.align 8
.LC8:
	.string	"  -i, --initial    do not convert tabs after non blanks\n  -t, --tabs=N     have tabs N characters apart, not 8\n"
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
	.file 1 "src/expand.c"
	.loc 1 64 1 view -0
	.cfi_startproc
	.loc 1 64 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 66 5 view .LVU2
	movl	$5, %edx
	.loc 1 64 1 view .LVU3
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
	.loc 1 64 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 65 3 is_stmt 1 view .LVU5
	.loc 1 65 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 66 5 is_stmt 1 view .LVU7
	.loc 1 66 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 66 5 is_stmt 0 view .LVU9
	call	dcgettext@PLT
.LVL2:
.LBB46:
.LBB47:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE47:
.LBE46:
	.loc 1 66 5 view .LVU11
	movq	%rax, %rdx
.LVL3:
.LBB49:
.LBI46:
	.loc 2 98 1 is_stmt 1 view .LVU12
.LBB48:
	.loc 2 100 3 view .LVU13
	.loc 2 100 10 is_stmt 0 view .LVU14
	xorl	%eax, %eax
.LVL4:
	.loc 2 100 10 view .LVU15
	call	__fprintf_chk@PLT
.LVL5:
.L3:
	.loc 2 100 10 view .LVU16
.LBE48:
.LBE49:
	.loc 1 89 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 69 7 view .LVU18
	.loc 1 69 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB50:
.LBB51:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC17(%rip), %rbx
.LBE51:
.LBE50:
	.loc 1 69 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB77:
.LBB78:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rdx
	movl	$1, %edi
.LBE78:
.LBE77:
	.loc 1 69 15 view .LVU23
	movq	%rax, %rsi
.LVL9:
.LBB80:
.LBI77:
	.loc 2 105 1 is_stmt 1 view .LVU24
.LBB79:
	.loc 2 107 3 view .LVU25
	.loc 2 107 10 is_stmt 0 view .LVU26
	xorl	%eax, %eax
.LVL10:
	.loc 2 107 10 view .LVU27
	call	__printf_chk@PLT
.LVL11:
	.loc 2 107 10 view .LVU28
.LBE79:
.LBE80:
	.loc 1 73 7 is_stmt 1 view .LVU29
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
	.loc 1 77 7 view .LVU30
.LBB81:
.LBI81:
	.loc 3 581 1 view .LVU31
.LBB82:
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
.LBE82:
.LBE81:
	.loc 1 78 7 view .LVU33
.LBB83:
.LBI83:
	.loc 3 588 1 view .LVU34
.LBB84:
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
.LBE84:
.LBE83:
	.loc 1 80 7 view .LVU36
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
	.loc 1 84 7 view .LVU37
	call	emit_tab_list_info@PLT
.LVL20:
	.loc 1 85 7 view .LVU38
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
	.loc 1 86 7 view .LVU39
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
	.loc 1 87 7 view .LVU40
.LBB85:
.LBI50:
	.loc 3 634 1 view .LVU41
.LBB76:
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
	movl	$7, %ecx
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
.LBB52:
.LBB53:
	.loc 2 107 10 view .LVU63
	leaq	.LC21(%rip), %rcx
	movl	$1, %edi
	leaq	.LC22(%rip), %rdx
.LBE53:
.LBE52:
	.loc 3 655 11 view .LVU64
	movq	%rax, %rsi
.LVL30:
.LBB57:
.LBI52:
	.loc 2 105 1 is_stmt 1 view .LVU65
.LBB54:
	.loc 2 107 3 view .LVU66
	.loc 2 107 10 is_stmt 0 view .LVU67
	xorl	%eax, %eax
.LVL31:
	.loc 2 107 10 view .LVU68
	call	__printf_chk@PLT
.LVL32:
	.loc 2 107 10 view .LVU69
.LBE54:
.LBE57:
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
.LBB58:
.LBB59:
	.loc 2 107 10 view .LVU78
	leaq	.LC0(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	movl	$1, %edi
.LBE59:
.LBE58:
	.loc 3 669 11 view .LVU79
	movq	%rax, %rsi
.LVL38:
.LBB65:
.LBI58:
	.loc 2 105 1 is_stmt 1 view .LVU80
.LBB60:
	.loc 2 107 3 view .LVU81
	.loc 2 107 10 is_stmt 0 view .LVU82
	xorl	%eax, %eax
.LVL39:
	.loc 2 107 10 view .LVU83
.LBE60:
.LBE65:
	.loc 3 671 3 view .LVU84
	leaq	.LC1(%rip), %r13
.LBB66:
.LBB61:
	.loc 2 107 10 view .LVU85
	call	__printf_chk@PLT
.LVL40:
	.loc 2 107 10 view .LVU86
.LBE61:
.LBE66:
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
.LBB67:
.LBB68:
	.loc 2 107 10 view .LVU89
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE68:
.LBE67:
	.loc 3 671 11 view .LVU90
	movq	%rax, %rsi
.LVL42:
.LBB70:
.LBI67:
	.loc 2 105 1 is_stmt 1 view .LVU91
.LBB69:
	.loc 2 107 3 view .LVU92
	.loc 2 107 10 is_stmt 0 view .LVU93
	xorl	%eax, %eax
.LVL43:
	.loc 2 107 10 view .LVU94
	call	__printf_chk@PLT
.LVL44:
	.loc 2 107 10 view .LVU95
.LBE69:
.LBE70:
	.loc 3 673 1 view .LVU96
	jmp	.L3
.LVL45:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU97
	.loc 3 655 11 is_stmt 0 view .LVU98
	call	dcgettext@PLT
.LVL46:
.LBB71:
.LBB55:
	.loc 2 107 10 view .LVU99
	leaq	.LC21(%rip), %rcx
	movl	$1, %edi
	leaq	.LC22(%rip), %rdx
.LBE55:
.LBE71:
	.loc 3 655 11 view .LVU100
	movq	%rax, %rsi
.LVL47:
.LBB72:
	.loc 2 105 1 is_stmt 1 view .LVU101
.LBB56:
	.loc 2 107 3 view .LVU102
	.loc 2 107 10 is_stmt 0 view .LVU103
	xorl	%eax, %eax
.LVL48:
	.loc 2 107 10 view .LVU104
	call	__printf_chk@PLT
.LVL49:
	.loc 2 107 10 view .LVU105
.LBE56:
.LBE72:
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
.LBB73:
.LBB62:
	.loc 2 107 10 view .LVU114
	leaq	.LC0(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	movl	$1, %edi
.LBE62:
.LBE73:
	.loc 3 669 11 view .LVU115
	movq	%rax, %rsi
.LVL54:
.LBB74:
	.loc 2 105 1 is_stmt 1 view .LVU116
.LBB63:
	.loc 2 107 3 view .LVU117
	.loc 2 107 10 is_stmt 0 view .LVU118
	xorl	%eax, %eax
.LVL55:
	.loc 2 107 10 view .LVU119
.LBE63:
.LBE74:
	.loc 3 646 15 view .LVU120
	leaq	.LC0(%rip), %r12
.LBB75:
.LBB64:
	.loc 2 107 10 view .LVU121
	call	__printf_chk@PLT
.LVL56:
	.loc 2 107 10 view .LVU122
.LBE64:
.LBE75:
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
.LBE76:
.LBE85:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC27:
	.string	"/usr/local/share/locale"
.LC28:
	.string	"David MacKenzie"
.LC29:
	.string	"input line is too long"
.LC30:
	.string	"write error"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL60:
.LFB137:
	.loc 1 183 1 view -0
	.cfi_startproc
	.loc 1 183 1 is_stmt 0 view .LVU127
	endbr64
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
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 187 3 view .LVU128
	movq	(%rsi), %rdi
.LVL61:
	.loc 1 183 1 view .LVU129
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 184 3 is_stmt 1 view .LVU130
	.loc 1 186 33 view .LVU131
	.loc 1 187 3 view .LVU132
.LBB101:
	.loc 1 216 15 is_stmt 0 view .LVU133
	leaq	22(%rsp), %r12
.LBE101:
	.loc 1 187 3 view .LVU134
	call	set_program_name@PLT
.LVL62:
	.loc 1 188 3 is_stmt 1 view .LVU135
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL63:
	.loc 1 189 3 view .LVU136
	leaq	.LC27(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	bindtextdomain@PLT
.LVL64:
	.loc 1 190 3 view .LVU137
	leaq	.LC13(%rip), %rdi
	call	textdomain@PLT
.LVL65:
	.loc 1 192 3 view .LVU138
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL66:
	.loc 1 193 3 view .LVU139
	.loc 1 193 23 is_stmt 0 view .LVU140
	movb	$1, convert_entire_line(%rip)
	.loc 1 195 3 is_stmt 1 view .LVU141
.L31:
	.loc 1 195 9 view .LVU142
	.loc 1 195 15 is_stmt 0 view .LVU143
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	leaq	shortopts(%rip), %rdx
	call	getopt_long@PLT
.LVL67:
	.loc 1 195 9 view .LVU144
	cmpl	$-1, %eax
	je	.L86
	.loc 1 197 7 is_stmt 1 view .LVU145
	cmpl	$57, %eax
	jg	.L32
	cmpl	$47, %eax
	jg	.L33
	cmpl	$-131, %eax
	jne	.L87
	.loc 1 220 9 view .LVU146
	.loc 1 220 30 view .LVU147
	.loc 1 222 9 view .LVU148
	movq	stdout(%rip), %rdi
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
.LVL68:
	.loc 1 222 9 is_stmt 0 view .LVU149
	xorl	%r9d, %r9d
	leaq	.LC28(%rip), %r8
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL69:
	.loc 1 222 9 is_stmt 1 view .LVU150
	xorl	%edi, %edi
	call	exit@PLT
.LVL70:
	.p2align 4,,10
	.p2align 3
.L32:
	.loc 1 197 7 is_stmt 0 view .LVU151
	cmpl	$105, %eax
	jne	.L88
	.loc 1 200 11 is_stmt 1 view .LVU152
	.loc 1 200 31 is_stmt 0 view .LVU153
	movb	$0, convert_entire_line(%rip)
	.loc 1 201 11 is_stmt 1 view .LVU154
	jmp	.L31
.L87:
	.loc 1 197 7 is_stmt 0 view .LVU155
	cmpl	$-130, %eax
	jne	.L36
	.loc 1 220 9 is_stmt 1 view .LVU156
	xorl	%edi, %edi
	call	usage
.LVL71:
	.p2align 4,,10
	.p2align 3
.L88:
	.loc 1 197 7 is_stmt 0 view .LVU157
	cmpl	$116, %eax
	jne	.L36
	.loc 1 204 11 is_stmt 1 view .LVU158
	movq	optarg(%rip), %rdi
	call	parse_tab_stops@PLT
.LVL72:
	.loc 1 205 11 view .LVU159
	jmp	.L31
.LVL73:
	.p2align 4,,10
	.p2align 3
.L33:
	.loc 1 209 11 view .LVU160
	.loc 1 209 15 is_stmt 0 view .LVU161
	movq	optarg(%rip), %rdi
	.loc 1 209 14 view .LVU162
	testq	%rdi, %rdi
	je	.L40
	.loc 1 210 13 is_stmt 1 view .LVU163
	.loc 1 210 37 is_stmt 0 view .LVU164
	subq	$1, %rdi
	.loc 1 210 13 view .LVU165
	call	parse_tab_stops@PLT
.LVL74:
	.loc 1 210 13 view .LVU166
	jmp	.L31
.LVL75:
.L40:
.LBB102:
	.loc 1 213 15 is_stmt 1 view .LVU167
	.loc 1 214 15 view .LVU168
	.loc 1 216 15 is_stmt 0 view .LVU169
	movq	%r12, %rdi
	.loc 1 214 27 view .LVU170
	movb	%al, 22(%rsp)
	.loc 1 215 15 is_stmt 1 view .LVU171
	.loc 1 215 27 is_stmt 0 view .LVU172
	movb	$0, 23(%rsp)
	.loc 1 216 15 is_stmt 1 view .LVU173
	call	parse_tab_stops@PLT
.LVL76:
	.loc 1 216 15 is_stmt 0 view .LVU174
	jmp	.L31
.LVL77:
.L86:
	.loc 1 216 15 view .LVU175
.LBE102:
	.loc 1 229 3 is_stmt 1 view .LVU176
	call	finalize_tab_stops@PLT
.LVL78:
	.loc 1 231 3 view .LVU177
	.loc 1 231 27 is_stmt 0 view .LVU178
	movslq	optind(%rip), %rax
	.loc 1 231 3 view .LVU179
	xorl	%edi, %edi
	cmpl	%ebp, %eax
	jge	.L42
	.loc 1 231 3 discriminator 1 view .LVU180
	leaq	(%rbx,%rax,8), %rdi
.L42:
	.loc 1 231 3 discriminator 4 view .LVU181
	call	set_file_list@PLT
.LVL79:
	.loc 1 233 3 is_stmt 1 discriminator 4 view .LVU182
.LBB103:
.LBI103:
	.loc 1 97 1 discriminator 4 view .LVU183
.LBB104:
	.loc 1 100 3 discriminator 4 view .LVU184
	.loc 1 100 14 is_stmt 0 discriminator 4 view .LVU185
	xorl	%edi, %edi
	call	next_file@PLT
.LVL80:
	movq	%rax, %rbp
.LVL81:
	.loc 1 102 3 is_stmt 1 discriminator 4 view .LVU186
	.loc 1 102 6 is_stmt 0 discriminator 4 view .LVU187
	testq	%rax, %rax
	je	.L43
.LBB105:
.LBB106:
	.loc 1 139 37 view .LVU188
	leaq	7(%rsp), %r14
	leaq	8(%rsp), %r13
.LVL82:
.L67:
	.loc 1 139 37 view .LVU189
.LBE106:
.LBE105:
	.loc 1 105 3 is_stmt 1 view .LVU190
.LBB124:
	.loc 1 108 7 view .LVU191
	.loc 1 111 7 view .LVU192
	.loc 1 118 7 view .LVU193
	.loc 1 121 7 view .LVU194
	.loc 1 121 14 is_stmt 0 view .LVU195
	movq	$0, 8(%rsp)
	.loc 1 118 17 view .LVU196
	xorl	%r12d, %r12d
	.loc 1 111 12 view .LVU197
	movl	$1, %r15d
	jmp	.L44
.LVL83:
	.p2align 4,,10
	.p2align 3
.L60:
	.loc 1 163 19 is_stmt 1 view .LVU198
	.loc 1 164 19 view .LVU199
	.loc 1 164 22 is_stmt 0 view .LVU200
	addq	$1, %r12
.LVL84:
	.loc 1 164 22 view .LVU201
	je	.L89
.LVL85:
	.loc 1 168 15 is_stmt 1 view .LVU202
	.loc 1 168 26 is_stmt 0 view .LVU203
	movzbl	convert_entire_line(%rip), %r15d
.LVL86:
	.loc 1 168 46 view .LVU204
	testb	%r15b, %r15b
	jne	.L62
.L71:
	.loc 1 168 52 view .LVU205
	call	__ctype_b_loc@PLT
.LVL87:
	movq	%rax, %r8
	movslq	%ebx, %rax
	movq	(%r8), %rdx
	movzwl	(%rdx,%rax,2), %r15d
	andl	$1, %r15d
.L62:
.LVL88:
	.loc 1 171 11 is_stmt 1 view .LVU206
	.loc 1 171 14 is_stmt 0 view .LVU207
	testl	%ebx, %ebx
	js	.L43
.LVL89:
.L70:
	.loc 1 174 11 is_stmt 1 view .LVU208
.LBB113:
.LBI113:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 4 108 1 view .LVU209
.LBB114:
	.loc 4 110 3 view .LVU210
	.loc 4 110 10 is_stmt 0 view .LVU211
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L90
	.loc 4 110 10 view .LVU212
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	%bl, (%rax)
.LVL90:
.L66:
	.loc 4 110 10 view .LVU213
.LBE114:
.LBE113:
	.loc 1 177 13 is_stmt 1 view .LVU214
	.loc 1 177 7 is_stmt 0 view .LVU215
	cmpl	$10, %ebx
	je	.L67
.LVL91:
.L44:
	.loc 1 128 17 is_stmt 1 view .LVU216
.LBB116:
.LBI116:
	.loc 4 66 1 view .LVU217
.LBB117:
	.loc 4 68 3 view .LVU218
	.loc 4 68 10 is_stmt 0 view .LVU219
	movq	8(%rbp), %rax
	cmpq	16(%rbp), %rax
	jnb	.L91
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbp)
	movzbl	(%rax), %ebx
.LVL92:
.L47:
	.loc 4 68 10 view .LVU220
.LBE117:
.LBE116:
	.loc 1 131 11 is_stmt 1 view .LVU221
	.loc 1 131 14 is_stmt 0 view .LVU222
	testb	%r15b, %r15b
	je	.L70
	.loc 1 133 15 is_stmt 1 view .LVU223
	.loc 1 133 18 is_stmt 0 view .LVU224
	cmpl	$9, %ebx
	je	.L92
	.loc 1 154 20 is_stmt 1 view .LVU225
	.loc 1 154 23 is_stmt 0 view .LVU226
	cmpl	$8, %ebx
	jne	.L60
	.loc 1 158 19 is_stmt 1 view .LVU227
	.loc 1 158 29 is_stmt 0 view .LVU228
	xorl	%eax, %eax
	testq	%r12, %r12
	setne	%al
	.loc 1 159 32 view .LVU229
	xorl	%edx, %edx
	.loc 1 158 26 view .LVU230
	subq	%rax, %r12
.LVL93:
	.loc 1 159 19 is_stmt 1 view .LVU231
	.loc 1 159 29 is_stmt 0 view .LVU232
	movq	8(%rsp), %rax
	.loc 1 159 32 view .LVU233
	testq	%rax, %rax
	setne	%dl
	.loc 1 159 29 view .LVU234
	subq	%rdx, %rax
	movq	%rax, 8(%rsp)
.LVL94:
.L59:
	.loc 1 168 15 is_stmt 1 view .LVU235
	.loc 1 168 26 is_stmt 0 view .LVU236
	movzbl	convert_entire_line(%rip), %r15d
.LVL95:
	.loc 1 168 46 view .LVU237
	testb	%r15b, %r15b
	jne	.L70
	jmp	.L71
.LVL96:
	.p2align 4,,10
	.p2align 3
.L91:
.LBB119:
.LBB118:
	.loc 4 68 10 view .LVU238
	movq	%rbp, %rdi
	call	__uflow@PLT
.LVL97:
	movl	%eax, %ebx
.LVL98:
	.loc 4 68 10 view .LVU239
.LBE118:
.LBE119:
	.loc 1 128 17 view .LVU240
	testl	%eax, %eax
	jns	.L47
	.loc 1 128 47 view .LVU241
	movq	%rbp, %rdi
	call	next_file@PLT
.LVL99:
	.loc 1 128 47 view .LVU242
	movq	%rax, %rbp
.LVL100:
	.loc 1 128 38 view .LVU243
	testq	%rax, %rax
	jne	.L44
.LVL101:
	.loc 1 131 11 is_stmt 1 view .LVU244
	.loc 1 131 14 is_stmt 0 view .LVU245
	testb	%r15b, %r15b
	jne	.L60
.LVL102:
.L43:
	.loc 1 131 14 view .LVU246
.LBE124:
.LBE104:
.LBE103:
	.loc 1 235 3 is_stmt 1 view .LVU247
	call	cleanup_file_list_stdin@PLT
.LVL103:
	.loc 1 237 3 view .LVU248
	movl	exit_status(%rip), %eax
	.loc 1 238 1 is_stmt 0 view .LVU249
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L93
	addq	$40, %rsp
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
.LVL104:
.L90:
	.cfi_restore_state
.LBB129:
.LBB127:
.LBB125:
.LBB120:
.LBB115:
	.loc 4 110 10 view .LVU250
	movzbl	%bl, %esi
	call	__overflow@PLT
.LVL105:
	.loc 4 110 10 view .LVU251
.LBE115:
.LBE120:
	.loc 1 174 14 view .LVU252
	testl	%eax, %eax
	jns	.L66
.LBB121:
	.loc 1 175 13 is_stmt 1 view .LVU253
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL106:
	movq	%rax, %r12
.LVL107:
	.loc 1 175 13 is_stmt 0 view .LVU254
	call	__errno_location@PLT
.LVL108:
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL109:
.L92:
	.loc 1 175 13 view .LVU255
.LBE121:
.LBB122:
	.loc 1 136 19 is_stmt 1 view .LVU256
	.loc 1 137 19 view .LVU257
	.loc 1 139 37 is_stmt 0 view .LVU258
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	.loc 1 137 24 view .LVU259
	movb	$0, 7(%rsp)
	.loc 1 139 19 is_stmt 1 view .LVU260
	.loc 1 139 37 is_stmt 0 view .LVU261
	call	get_next_tab_column@PLT
.LVL110:
	.loc 1 142 22 view .LVU262
	cmpb	$0, 7(%rsp)
	.loc 1 139 37 view .LVU263
	movq	%rax, %rbx
.LVL111:
	.loc 1 142 19 is_stmt 1 view .LVU264
	.loc 1 142 22 is_stmt 0 view .LVU265
	je	.L51
	.loc 1 143 21 is_stmt 1 view .LVU266
.LVL112:
	.loc 1 145 19 view .LVU267
	.loc 1 145 22 is_stmt 0 view .LVU268
	cmpq	$-1, %r12
	jne	.L94
.LVL113:
.L52:
.LBB107:
	.loc 1 146 21 is_stmt 1 view .LVU269
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL114:
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL115:
.L51:
	.loc 1 146 21 is_stmt 0 view .LVU270
.LBE107:
	.loc 1 145 19 is_stmt 1 view .LVU271
	.loc 1 145 22 is_stmt 0 view .LVU272
	cmpq	%rax, %r12
	jbe	.L58
	jmp	.L52
.LVL116:
	.p2align 4,,10
	.p2align 3
.L56:
.LBB108:
.LBB109:
	.loc 4 110 10 view .LVU273
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	$32, (%rax)
.LVL117:
.L58:
	.loc 4 110 10 view .LVU274
.LBE109:
.LBE108:
	.loc 1 148 25 is_stmt 1 view .LVU275
	addq	$1, %r12
.LVL118:
	.loc 1 148 25 is_stmt 0 view .LVU276
	cmpq	%r12, %rbx
	jbe	.L55
	.loc 1 149 21 is_stmt 1 view .LVU277
.LVL119:
.LBB111:
.LBI108:
	.loc 4 108 1 view .LVU278
.LBB110:
	.loc 4 110 3 view .LVU279
	.loc 4 110 10 is_stmt 0 view .LVU280
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jb	.L56
	movl	$32, %esi
	call	__overflow@PLT
.LVL120:
	.loc 4 110 10 view .LVU281
.LBE110:
.LBE111:
	.loc 1 149 24 view .LVU282
	testl	%eax, %eax
	jns	.L58
.LBB112:
	.loc 1 150 23 is_stmt 1 view .LVU283
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL121:
	movq	%rax, %r12
.LVL122:
	.loc 1 150 23 is_stmt 0 view .LVU284
	call	__errno_location@PLT
.LVL123:
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL124:
.L94:
	.loc 1 150 23 view .LVU285
.LBE112:
	.loc 1 143 37 view .LVU286
	addq	$1, %r12
.LVL125:
.L55:
	.loc 1 152 19 is_stmt 1 view .LVU287
	.loc 1 152 21 is_stmt 0 view .LVU288
	movl	$32, %ebx
.LBE122:
	jmp	.L59
.LVL126:
.L36:
	.loc 1 152 21 view .LVU289
.LBE125:
.LBE127:
.LBE129:
	.loc 1 222 9 is_stmt 1 view .LVU290
	.loc 1 222 57 view .LVU291
	.loc 1 225 11 view .LVU292
	movl	$1, %edi
	call	usage
.LVL127:
.L89:
.LBB130:
.LBB128:
.LBB126:
.LBB123:
	.loc 1 165 21 view .LVU293
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL128:
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL129:
.L93:
	.loc 1 165 21 is_stmt 0 view .LVU294
.LBE123:
.LBE126:
.LBE128:
.LBE130:
	.loc 1 238 1 view .LVU295
	call	__stack_chk_fail@PLT
.LVL130:
	.cfi_endproc
.LFE137:
	.size	main, .-main
	.section	.rodata.str1.1
.LC31:
	.string	"tabs"
.LC32:
	.string	"initial"
.LC33:
	.string	"help"
.LC34:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 160
longopts:
	.quad	.LC31
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC34
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
	.section	.rodata
	.align 32
	.type	shortopts, @object
	.size	shortopts, 34
shortopts:
	.string	"it:0::1::2::3::4::5::6::7::8::9::"
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
	.file 30 "/usr/include/locale.h"
	.file 31 "/usr/include/stdlib.h"
	.file 32 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x14ed
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF175
	.byte	0xc
	.long	.LASF176
	.long	.LASF177
	.long	.Ldebug_ranges0+0x300
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
	.long	.LASF178
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
	.long	.LASF179
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
	.uleb128 0xd
	.long	0xb1
	.long	0x674
	.uleb128 0xe
	.long	0x35
	.byte	0x21
	.byte	0
	.uleb128 0x8
	.long	0x664
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x1
	.byte	0x33
	.byte	0x13
	.long	0x674
	.uleb128 0x9
	.byte	0x3
	.quad	shortopts
	.uleb128 0xd
	.long	0x3bd
	.long	0x69f
	.uleb128 0xe
	.long	0x35
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x68f
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x1
	.byte	0x35
	.byte	0x1c
	.long	0x69f
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1d
	.long	.LASF131
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	0x61
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0xbfb
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x1
	.byte	0xb6
	.byte	0xb
	.long	0x61
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x1
	.byte	0xb6
	.byte	0x18
	.long	0x470
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0xb8
	.byte	0x7
	.long	0x61
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x180
	.long	0x744
	.uleb128 0x1c
	.long	.LASF125
	.byte	0x1
	.byte	0xd5
	.byte	0x14
	.long	0xbfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x21
	.quad	.LVL76
	.long	0x13b6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0xc0b
	.quad	.LBI103
	.byte	.LVU183
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0xe9
	.byte	0x3
	.long	0xa63
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x25
	.long	0xc18
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x26
	.long	0xc23
	.long	.Ldebug_ranges0+0x1f0
	.long	0xa4e
	.uleb128 0x25
	.long	0xc24
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x25
	.long	0xc2e
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x25
	.long	0xc3a
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x27
	.long	0xc46
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	0xc52
	.long	.Ldebug_ranges0+0x240
	.long	0x8ef
	.uleb128 0x25
	.long	0xc57
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x27
	.long	0xc63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x28
	.long	0xc6f
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.long	0x82a
	.uleb128 0x29
	.quad	.LVL114
	.long	0x13c2
	.long	0x811
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
	.quad	.LC29
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL115
	.long	0x13ce
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x137a
	.quad	.LBI108
	.byte	.LVU278
	.long	.Ldebug_ranges0+0x270
	.byte	0x1
	.byte	0x95
	.byte	0x19
	.long	0x865
	.uleb128 0x2a
	.long	0x138b
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x21
	.quad	.LVL120
	.long	0x13da
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0xc70
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.long	0x8ce
	.uleb128 0x29
	.quad	.LVL121
	.long	0x13c2
	.long	0x8a7
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
	.uleb128 0x2b
	.quad	.LVL123
	.long	0x13e7
	.uleb128 0x21
	.quad	.LVL124
	.long	0x13ce
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
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL110
	.long	0x13f3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x137a
	.quad	.LBI113
	.byte	.LVU209
	.long	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.byte	0xae
	.byte	0xf
	.long	0x92d
	.uleb128 0x2a
	.long	0x138b
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x21
	.quad	.LVL105
	.long	0x13da
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x1398
	.quad	.LBI116
	.byte	.LVU217
	.long	.Ldebug_ranges0+0x2d0
	.byte	0x1
	.byte	0x80
	.byte	0x17
	.long	0x968
	.uleb128 0x2a
	.long	0x13a9
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x21
	.quad	.LVL97
	.long	0x13ff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0xc73
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.long	0x9d1
	.uleb128 0x29
	.quad	.LVL106
	.long	0x13c2
	.long	0x9aa
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
	.uleb128 0x2b
	.quad	.LVL108
	.long	0x13e7
	.uleb128 0x21
	.quad	.LVL109
	.long	0x13ce
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0xc72
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.long	0xa2c
	.uleb128 0x29
	.quad	.LVL128
	.long	0x13c2
	.long	0xa13
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
	.quad	.LC29
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL129
	.long	0x13ce
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL87
	.long	0x140c
	.uleb128 0x21
	.quad	.LVL99
	.long	0x1418
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL80
	.long	0x1418
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL62
	.long	0x1424
	.uleb128 0x29
	.quad	.LVL63
	.long	0x1430
	.long	0xa94
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
	.uleb128 0x29
	.quad	.LVL64
	.long	0x143c
	.long	0xac0
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
	.uleb128 0x29
	.quad	.LVL65
	.long	0x1448
	.long	0xadf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.uleb128 0x2b
	.quad	.LVL66
	.long	0x1454
	.uleb128 0x29
	.quad	.LVL67
	.long	0x1461
	.long	0xb29
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
	.quad	shortopts
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
	.uleb128 0x29
	.quad	.LVL69
	.long	0x146d
	.long	0xb67
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
	.quad	.LC28
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.quad	.LVL70
	.long	0x1479
	.long	0xb7e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.quad	.LVL71
	.long	0xc76
	.long	0xb95
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.quad	.LVL72
	.long	0x13b6
	.uleb128 0x2b
	.quad	.LVL74
	.long	0x13b6
	.uleb128 0x2b
	.quad	.LVL78
	.long	0x1486
	.uleb128 0x2b
	.quad	.LVL79
	.long	0x1492
	.uleb128 0x2b
	.quad	.LVL103
	.long	0x149e
	.uleb128 0x29
	.quad	.LVL127
	.long	0xc76
	.long	0xbed
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.quad	.LVL130
	.long	0x14aa
	.byte	0
	.uleb128 0xd
	.long	0xaa
	.long	0xc0b
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.long	.LASF134
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.long	0xc76
	.uleb128 0x2d
	.string	"fp"
	.byte	0x1
	.byte	0x64
	.byte	0x9
	.long	0x2ba
	.uleb128 0x2e
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.byte	0x6c
	.byte	0xb
	.long	0x61
	.uleb128 0x2f
	.long	.LASF126
	.byte	0x1
	.byte	0x6f
	.byte	0xc
	.long	0x645
	.uleb128 0x2f
	.long	.LASF127
	.byte	0x1
	.byte	0x76
	.byte	0x11
	.long	0x4b3
	.uleb128 0x2f
	.long	.LASF128
	.byte	0x1
	.byte	0x79
	.byte	0xe
	.long	0x29
	.uleb128 0x30
	.long	0xc72
	.uleb128 0x2f
	.long	.LASF129
	.byte	0x1
	.byte	0x88
	.byte	0x1d
	.long	0x4b3
	.uleb128 0x2f
	.long	.LASF130
	.byte	0x1
	.byte	0x89
	.byte	0x18
	.long	0x645
	.uleb128 0x31
	.uleb128 0x31
	.byte	0
	.uleb128 0x31
	.uleb128 0x31
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF132
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x1281
	.uleb128 0x1e
	.long	.LASF133
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.long	0x61
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x23
	.long	0x134f
	.quad	.LBI46
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.long	0xcf5
	.uleb128 0x2a
	.long	0x136c
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x2a
	.long	0x1360
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x21
	.quad	.LVL5
	.long	0x14b3
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
	.uleb128 0x23
	.long	0x1281
	.quad	.LBI50
	.byte	.LVU41
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x57
	.byte	0x7
	.long	0x1008
	.uleb128 0x33
	.long	0x128f
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x27
	.long	0x12cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.long	0x12d9
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x25
	.long	0x12e6
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x25
	.long	0x12f3
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x34
	.long	0x1330
	.quad	.LBI52
	.byte	.LVU65
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0xdd9
	.uleb128 0x2a
	.long	0x1341
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x29
	.quad	.LVL32
	.long	0x14bf
	.long	0xdab
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
	.uleb128 0x21
	.quad	.LVL49
	.long	0x14bf
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
	.uleb128 0x34
	.long	0x1330
	.quad	.LBI58
	.byte	.LVU80
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0xe51
	.uleb128 0x2a
	.long	0x1341
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x29
	.quad	.LVL40
	.long	0x14bf
	.long	0xe2a
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
	.uleb128 0x21
	.quad	.LVL56
	.long	0x14bf
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
	.uleb128 0x34
	.long	0x1330
	.quad	.LBI67
	.byte	.LVU91
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xe98
	.uleb128 0x2a
	.long	0x1341
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x21
	.quad	.LVL44
	.long	0x14bf
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
	.uleb128 0x29
	.quad	.LVL29
	.long	0x13c2
	.long	0xec1
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
	.uleb128 0x29
	.quad	.LVL33
	.long	0x1430
	.long	0xedd
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
	.uleb128 0x29
	.quad	.LVL35
	.long	0x14cb
	.long	0xf01
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
	.uleb128 0x29
	.quad	.LVL37
	.long	0x13c2
	.long	0xf2a
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
	.uleb128 0x29
	.quad	.LVL41
	.long	0x13c2
	.long	0xf53
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
	.uleb128 0x2b
	.quad	.LVL46
	.long	0x13c2
	.uleb128 0x29
	.quad	.LVL50
	.long	0x1430
	.long	0xf7c
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
	.uleb128 0x29
	.quad	.LVL52
	.long	0x14cb
	.long	0xfa0
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
	.uleb128 0x29
	.quad	.LVL53
	.long	0x13c2
	.long	0xfc9
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
	.uleb128 0x29
	.quad	.LVL58
	.long	0x13c2
	.long	0xff2
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
	.uleb128 0x21
	.quad	.LVL59
	.long	0x14d7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x1330
	.quad	.LBI77
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x45
	.byte	0x7
	.long	0x1048
	.uleb128 0x2a
	.long	0x1341
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x21
	.quad	.LVL11
	.long	0x14bf
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
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x1326
	.quad	.LBI81
	.byte	.LVU31
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.byte	0x1
	.byte	0x4d
	.byte	0x7
	.long	0x10ab
	.uleb128 0x29
	.quad	.LVL14
	.long	0x13c2
	.long	0x1096
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
	.uleb128 0x21
	.quad	.LVL15
	.long	0x14d7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x131c
	.quad	.LBI83
	.byte	.LVU34
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.byte	0x1
	.byte	0x4e
	.byte	0x7
	.long	0x110e
	.uleb128 0x29
	.quad	.LVL16
	.long	0x13c2
	.long	0x10f9
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
	.quad	.LVL17
	.long	0x14d7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LVL2
	.long	0x13c2
	.long	0x1137
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
	.uleb128 0x29
	.quad	.LVL6
	.long	0x1479
	.long	0x114f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL8
	.long	0x13c2
	.long	0x1173
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
	.uleb128 0x29
	.quad	.LVL12
	.long	0x13c2
	.long	0x119c
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
	.uleb128 0x29
	.quad	.LVL13
	.long	0x14d7
	.long	0x11b4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL18
	.long	0x13c2
	.long	0x11dd
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
	.uleb128 0x29
	.quad	.LVL19
	.long	0x14d7
	.long	0x11f5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL20
	.long	0x14e4
	.uleb128 0x29
	.quad	.LVL21
	.long	0x13c2
	.long	0x122b
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
	.uleb128 0x29
	.quad	.LVL22
	.long	0x14d7
	.long	0x1243
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL23
	.long	0x13c2
	.long	0x126c
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
	.uleb128 0x21
	.quad	.LVL24
	.long	0x14d7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF135
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x1301
	.uleb128 0x37
	.long	.LASF137
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x29e
	.uleb128 0x38
	.long	.LASF136
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0x12c7
	.uleb128 0x39
	.long	.LASF137
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x29e
	.byte	0
	.uleb128 0x39
	.long	.LASF138
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x29e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x129c
	.uleb128 0x3a
	.long	.LASF136
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0x1311
	.uleb128 0x3a
	.long	.LASF138
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x29e
	.uleb128 0x3a
	.long	.LASF139
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0x1316
	.uleb128 0x3a
	.long	.LASF140
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x29e
	.byte	0
	.uleb128 0xd
	.long	0x12c7
	.long	0x1311
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x1301
	.uleb128 0x7
	.byte	0x8
	.long	0x12c7
	.uleb128 0x3b
	.long	.LASF141
	.byte	0x3
	.value	0x24c
	.byte	0x1
	.byte	0x3
	.uleb128 0x3b
	.long	.LASF142
	.byte	0x3
	.value	0x245
	.byte	0x1
	.byte	0x3
	.uleb128 0x3c
	.long	.LASF144
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x134f
	.uleb128 0x3d
	.long	.LASF143
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x2a9
	.uleb128 0x3e
	.byte	0
	.uleb128 0x3c
	.long	.LASF145
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x137a
	.uleb128 0x3d
	.long	.LASF146
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2c0
	.uleb128 0x3d
	.long	.LASF143
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x2a9
	.uleb128 0x3e
	.byte	0
	.uleb128 0x3f
	.long	.LASF147
	.byte	0x4
	.byte	0x6c
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1398
	.uleb128 0x40
	.string	"__c"
	.byte	0x4
	.byte	0x6c
	.byte	0x17
	.long	0x61
	.byte	0
	.uleb128 0x3f
	.long	.LASF148
	.byte	0x4
	.byte	0x42
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x13b6
	.uleb128 0x3d
	.long	.LASF149
	.byte	0x4
	.byte	0x42
	.byte	0x16
	.long	0x2ba
	.byte	0
	.uleb128 0x41
	.long	.LASF150
	.long	.LASF150
	.byte	0x1c
	.byte	0x2c
	.byte	0x1
	.uleb128 0x41
	.long	.LASF151
	.long	.LASF151
	.byte	0x1d
	.byte	0x33
	.byte	0xe
	.uleb128 0x41
	.long	.LASF152
	.long	.LASF152
	.byte	0x1b
	.byte	0x28
	.byte	0xd
	.uleb128 0x42
	.long	.LASF153
	.long	.LASF153
	.byte	0x9
	.value	0x35b
	.byte	0xc
	.uleb128 0x41
	.long	.LASF154
	.long	.LASF154
	.byte	0x12
	.byte	0x25
	.byte	0xd
	.uleb128 0x41
	.long	.LASF155
	.long	.LASF155
	.byte	0x1c
	.byte	0x30
	.byte	0x1
	.uleb128 0x42
	.long	.LASF156
	.long	.LASF156
	.byte	0x9
	.value	0x35a
	.byte	0xc
	.uleb128 0x41
	.long	.LASF157
	.long	.LASF157
	.byte	0x17
	.byte	0x4f
	.byte	0x23
	.uleb128 0x41
	.long	.LASF158
	.long	.LASF158
	.byte	0x1c
	.byte	0x44
	.byte	0x1
	.uleb128 0x41
	.long	.LASF159
	.long	.LASF159
	.byte	0x19
	.byte	0x25
	.byte	0xd
	.uleb128 0x41
	.long	.LASF160
	.long	.LASF160
	.byte	0x1e
	.byte	0x7a
	.byte	0xe
	.uleb128 0x41
	.long	.LASF161
	.long	.LASF161
	.byte	0x1d
	.byte	0x56
	.byte	0xe
	.uleb128 0x41
	.long	.LASF162
	.long	.LASF162
	.byte	0x1d
	.byte	0x52
	.byte	0xe
	.uleb128 0x42
	.long	.LASF163
	.long	.LASF163
	.byte	0x1f
	.value	0x253
	.byte	0xc
	.uleb128 0x41
	.long	.LASF164
	.long	.LASF164
	.byte	0xe
	.byte	0x42
	.byte	0xc
	.uleb128 0x41
	.long	.LASF165
	.long	.LASF165
	.byte	0x18
	.byte	0x3c
	.byte	0xd
	.uleb128 0x42
	.long	.LASF166
	.long	.LASF166
	.byte	0x1f
	.value	0x269
	.byte	0xd
	.uleb128 0x41
	.long	.LASF167
	.long	.LASF167
	.byte	0x1c
	.byte	0x36
	.byte	0x1
	.uleb128 0x41
	.long	.LASF168
	.long	.LASF168
	.byte	0x1c
	.byte	0x3d
	.byte	0x1
	.uleb128 0x41
	.long	.LASF169
	.long	.LASF169
	.byte	0x1c
	.byte	0x48
	.byte	0x1
	.uleb128 0x43
	.long	.LASF180
	.long	.LASF180
	.uleb128 0x41
	.long	.LASF170
	.long	.LASF170
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x41
	.long	.LASF171
	.long	.LASF171
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x41
	.long	.LASF172
	.long	.LASF172
	.byte	0x20
	.byte	0x8c
	.byte	0xc
	.uleb128 0x42
	.long	.LASF173
	.long	.LASF173
	.byte	0x9
	.value	0x296
	.byte	0xc
	.uleb128 0x41
	.long	.LASF174
	.long	.LASF174
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 0
.LLST10:
	.quad	.LVL60
	.quad	.LVL61
	.value	0x1
	.byte	0x55
	.quad	.LVL61
	.quad	.LVL81
	.value	0x1
	.byte	0x56
	.quad	.LVL81
	.quad	.LVL126
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL126
	.quad	.LVL127
	.value	0x1
	.byte	0x56
	.quad	.LVL127
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
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 0
.LLST11:
	.quad	.LVL60
	.quad	.LVL62-1
	.value	0x1
	.byte	0x54
	.quad	.LVL62-1
	.quad	.LVL82
	.value	0x1
	.byte	0x53
	.quad	.LVL82
	.quad	.LVL126
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL126
	.quad	.LVL127
	.value	0x1
	.byte	0x53
	.quad	.LVL127
	.quad	.LFE137
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU144
	.uleb128 .LVU149
	.uleb128 .LVU151
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU159
	.uleb128 .LVU160
	.uleb128 .LVU166
	.uleb128 .LVU167
	.uleb128 .LVU174
	.uleb128 .LVU175
	.uleb128 .LVU177
	.uleb128 .LVU289
	.uleb128 .LVU293
.LLST12:
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x50
	.quad	.LVL70
	.quad	.LVL71-1
	.value	0x1
	.byte	0x50
	.quad	.LVL71
	.quad	.LVL72-1
	.value	0x1
	.byte	0x50
	.quad	.LVL73
	.quad	.LVL74-1
	.value	0x1
	.byte	0x50
	.quad	.LVL75
	.quad	.LVL76-1
	.value	0x1
	.byte	0x50
	.quad	.LVL77
	.quad	.LVL78-1
	.value	0x1
	.byte	0x50
	.quad	.LVL126
	.quad	.LVL127-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU186
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU198
	.uleb128 .LVU216
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU246
	.uleb128 .LVU255
	.uleb128 .LVU289
.LLST13:
	.quad	.LVL81
	.quad	.LVL82
	.value	0x1
	.byte	0x50
	.quad	.LVL82
	.quad	.LVL83
	.value	0x1
	.byte	0x56
	.quad	.LVL91
	.quad	.LVL100
	.value	0x1
	.byte	0x56
	.quad	.LVL100
	.quad	.LVL101
	.value	0x1
	.byte	0x50
	.quad	.LVL101
	.quad	.LVL102
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL109
	.quad	.LVL126
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU202
	.uleb128 .LVU216
	.uleb128 .LVU235
	.uleb128 .LVU238
	.uleb128 .LVU239
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU244
	.uleb128 .LVU250
	.uleb128 .LVU255
	.uleb128 .LVU288
	.uleb128 .LVU289
.LLST14:
	.quad	.LVL85
	.quad	.LVL91
	.value	0x1
	.byte	0x53
	.quad	.LVL94
	.quad	.LVL96
	.value	0x1
	.byte	0x53
	.quad	.LVL98
	.quad	.LVL99-1
	.value	0x1
	.byte	0x50
	.quad	.LVL99-1
	.quad	.LVL101
	.value	0x1
	.byte	0x53
	.quad	.LVL104
	.quad	.LVL109
	.value	0x1
	.byte	0x53
	.quad	.LVL125
	.quad	.LVL126
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU193
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU204
	.uleb128 .LVU206
	.uleb128 .LVU237
	.uleb128 .LVU238
	.uleb128 .LVU246
	.uleb128 .LVU250
	.uleb128 .LVU289
	.uleb128 .LVU293
	.uleb128 .LVU294
.LLST15:
	.quad	.LVL82
	.quad	.LVL83
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL86
	.value	0x1
	.byte	0x5f
	.quad	.LVL88
	.quad	.LVL95
	.value	0x1
	.byte	0x5f
	.quad	.LVL96
	.quad	.LVL102
	.value	0x1
	.byte	0x5f
	.quad	.LVL104
	.quad	.LVL126
	.value	0x1
	.byte	0x5f
	.quad	.LVL127
	.quad	.LVL129
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU194
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU246
	.uleb128 .LVU250
	.uleb128 .LVU254
	.uleb128 .LVU255
	.uleb128 .LVU284
	.uleb128 .LVU285
	.uleb128 .LVU287
	.uleb128 .LVU293
	.uleb128 .LVU294
.LLST16:
	.quad	.LVL82
	.quad	.LVL83
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL83
	.value	0x1
	.byte	0x5c
	.quad	.LVL83
	.quad	.LVL84
	.value	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.quad	.LVL84
	.quad	.LVL102
	.value	0x1
	.byte	0x5c
	.quad	.LVL104
	.quad	.LVL107
	.value	0x1
	.byte	0x5c
	.quad	.LVL109
	.quad	.LVL122
	.value	0x1
	.byte	0x5c
	.quad	.LVL124
	.quad	.LVL125
	.value	0x1
	.byte	0x5c
	.quad	.LVL127
	.quad	.LVL129
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU264
	.uleb128 .LVU267
	.uleb128 .LVU267
	.uleb128 .LVU269
	.uleb128 .LVU270
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 .LVU287
.LLST17:
	.quad	.LVL111
	.quad	.LVL112
	.value	0x1
	.byte	0x50
	.quad	.LVL112
	.quad	.LVL113
	.value	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.quad	.LVL115
	.quad	.LVL116
	.value	0x1
	.byte	0x50
	.quad	.LVL116
	.quad	.LVL124
	.value	0x1
	.byte	0x53
	.quad	.LVL124
	.quad	.LVL125
	.value	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU273
	.uleb128 .LVU274
	.uleb128 .LVU278
	.uleb128 .LVU281
.LLST18:
	.quad	.LVL116
	.quad	.LVL117
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	.LVL119
	.quad	.LVL120
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU209
	.uleb128 .LVU213
	.uleb128 .LVU250
	.uleb128 .LVU251
.LLST19:
	.quad	.LVL89
	.quad	.LVL90
	.value	0x1
	.byte	0x53
	.quad	.LVL104
	.quad	.LVL105
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU217
	.uleb128 .LVU220
	.uleb128 .LVU238
	.uleb128 .LVU239
.LLST20:
	.quad	.LVL91
	.quad	.LVL92
	.value	0x1
	.byte	0x56
	.quad	.LVL96
	.quad	.LVL98
	.value	0x1
	.byte	0x56
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
	.quad	.LBB46
	.quad	.LBE46
	.quad	.LBB49
	.quad	.LBE49
	.quad	0
	.quad	0
	.quad	.LBB50
	.quad	.LBE50
	.quad	.LBB85
	.quad	.LBE85
	.quad	0
	.quad	0
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB57
	.quad	.LBE57
	.quad	.LBB71
	.quad	.LBE71
	.quad	.LBB72
	.quad	.LBE72
	.quad	0
	.quad	0
	.quad	.LBB58
	.quad	.LBE58
	.quad	.LBB65
	.quad	.LBE65
	.quad	.LBB66
	.quad	.LBE66
	.quad	.LBB73
	.quad	.LBE73
	.quad	.LBB74
	.quad	.LBE74
	.quad	.LBB75
	.quad	.LBE75
	.quad	0
	.quad	0
	.quad	.LBB67
	.quad	.LBE67
	.quad	.LBB70
	.quad	.LBE70
	.quad	0
	.quad	0
	.quad	.LBB77
	.quad	.LBE77
	.quad	.LBB80
	.quad	.LBE80
	.quad	0
	.quad	0
	.quad	.LBB101
	.quad	.LBE101
	.quad	.LBB102
	.quad	.LBE102
	.quad	0
	.quad	0
	.quad	.LBB103
	.quad	.LBE103
	.quad	.LBB129
	.quad	.LBE129
	.quad	.LBB130
	.quad	.LBE130
	.quad	0
	.quad	0
	.quad	.LBB105
	.quad	.LBE105
	.quad	.LBB124
	.quad	.LBE124
	.quad	.LBB125
	.quad	.LBE125
	.quad	.LBB126
	.quad	.LBE126
	.quad	0
	.quad	0
	.quad	.LBB106
	.quad	.LBE106
	.quad	.LBB122
	.quad	.LBE122
	.quad	0
	.quad	0
	.quad	.LBB108
	.quad	.LBE108
	.quad	.LBB111
	.quad	.LBE111
	.quad	0
	.quad	0
	.quad	.LBB113
	.quad	.LBE113
	.quad	.LBB120
	.quad	.LBE120
	.quad	0
	.quad	0
	.quad	.LBB116
	.quad	.LBE116
	.quad	.LBB119
	.quad	.LBE119
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
.LASF122:
	.string	"longopts"
.LASF179:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF159:
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
.LASF144:
	.string	"printf"
.LASF57:
	.string	"long long unsigned int"
.LASF168:
	.string	"set_file_list"
.LASF87:
	.string	"_ISalpha"
.LASF147:
	.string	"putchar_unlocked"
.LASF163:
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
.LASF137:
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
.LASF142:
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
.LASF171:
	.string	"__printf_chk"
.LASF78:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
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
.LASF100:
	.string	"program_name"
.LASF165:
	.string	"version_etc"
.LASF134:
	.string	"expand"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF175:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF145:
	.string	"fprintf"
.LASF146:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF161:
	.string	"bindtextdomain"
.LASF18:
	.string	"_IO_write_ptr"
.LASF64:
	.string	"name"
.LASF49:
	.string	"sys_nerr"
.LASF111:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF116:
	.string	"error_one_per_line"
.LASF80:
	.string	"Version"
.LASF130:
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
.LASF160:
	.string	"setlocale"
.LASF47:
	.string	"stdout"
.LASF99:
	.string	"version_etc_copyright"
.LASF149:
	.string	"__fp"
.LASF121:
	.string	"shortopts"
.LASF58:
	.string	"optarg"
.LASF86:
	.string	"_ISlower"
.LASF158:
	.string	"next_file"
.LASF73:
	.string	"getdate_err"
.LASF59:
	.string	"optind"
.LASF14:
	.string	"_IO_read_ptr"
.LASF153:
	.string	"__overflow"
.LASF178:
	.string	"_IO_lock_t"
.LASF62:
	.string	"_IO_FILE"
.LASF114:
	.string	"error_print_progname"
.LASF139:
	.string	"map_prog"
.LASF76:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF152:
	.string	"error"
.LASF150:
	.string	"parse_tab_stops"
.LASF140:
	.string	"lc_messages"
.LASF174:
	.string	"emit_tab_list_info"
.LASF25:
	.string	"_markers"
.LASF117:
	.string	"convert_entire_line"
.LASF107:
	.string	"c_maybe_quoting_style"
.LASF118:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF120:
	.string	"exit_status"
.LASF138:
	.string	"node"
.LASF21:
	.string	"_IO_buf_end"
.LASF172:
	.string	"strncmp"
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
.LASF166:
	.string	"exit"
.LASF170:
	.string	"__fprintf_chk"
.LASF180:
	.string	"__stack_chk_fail"
.LASF167:
	.string	"finalize_tab_stops"
.LASF151:
	.string	"dcgettext"
.LASF112:
	.string	"quoting_style_args"
.LASF61:
	.string	"optopt"
.LASF71:
	.string	"daylight"
.LASF128:
	.string	"tab_index"
.LASF54:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF157:
	.string	"__ctype_b_loc"
.LASF94:
	.string	"_IScntrl"
.LASF11:
	.string	"__time_t"
.LASF155:
	.string	"get_next_tab_column"
.LASF89:
	.string	"_ISxdigit"
.LASF110:
	.string	"clocale_quoting_style"
.LASF169:
	.string	"cleanup_file_list_stdin"
.LASF154:
	.string	"__errno_location"
.LASF60:
	.string	"opterr"
.LASF156:
	.string	"__uflow"
.LASF8:
	.string	"__uintmax_t"
.LASF10:
	.string	"__off64_t"
.LASF126:
	.string	"convert"
.LASF16:
	.string	"_IO_read_base"
.LASF127:
	.string	"column"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"_sys_siglist"
.LASF143:
	.string	"__fmt"
.LASF136:
	.string	"infomap"
.LASF35:
	.string	"_codecvt"
.LASF148:
	.string	"getc_unlocked"
.LASF65:
	.string	"has_arg"
.LASF132:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF176:
	.string	"src/expand.c"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF124:
	.string	"argv"
.LASF162:
	.string	"textdomain"
.LASF125:
	.string	"tab_stop"
.LASF68:
	.string	"__daylight"
.LASF133:
	.string	"status"
.LASF177:
	.string	"/root/coreutils"
.LASF129:
	.string	"next_tab_column"
.LASF85:
	.string	"_ISupper"
.LASF38:
	.string	"_freeres_buf"
.LASF104:
	.string	"shell_escape_quoting_style"
.LASF23:
	.string	"_IO_backup_base"
.LASF115:
	.string	"error_message_count"
.LASF50:
	.string	"sys_errlist"
.LASF123:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF164:
	.string	"getopt_long"
.LASF173:
	.string	"fputs_unlocked"
.LASF141:
	.string	"emit_mandatory_arg_note"
.LASF67:
	.string	"__tzname"
.LASF131:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF135:
	.string	"emit_ancillary_info"
.LASF91:
	.string	"_ISprint"
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
