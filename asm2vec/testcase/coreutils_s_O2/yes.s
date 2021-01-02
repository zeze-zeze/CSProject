	.file	"yes.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"yes"
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
	.string	"Usage: %s [STRING]...\n  or:  %s OPTION\n"
	.align 8
.LC5:
	.string	"Repeatedly output a line with all specified STRING(s), or 'y'.\n\n"
	.align 8
.LC6:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC7:
	.string	"      --version  output version information and exit\n"
	.section	.rodata.str1.1
.LC8:
	.string	"["
.LC9:
	.string	"test invocation"
.LC10:
	.string	"coreutils"
.LC11:
	.string	"Multi-call invocation"
.LC12:
	.string	"sha224sum"
.LC13:
	.string	"sha2 utilities"
.LC14:
	.string	"sha256sum"
.LC15:
	.string	"sha384sum"
.LC16:
	.string	"sha512sum"
.LC17:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC19:
	.string	"GNU coreutils"
.LC20:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC22:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL0:
.LFB135:
	.file 1 "src/yes.c"
	.loc 1 36 1 view -0
	.cfi_startproc
	.loc 1 36 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 38 5 view .LVU2
	movl	$5, %edx
	.loc 1 36 1 view .LVU3
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
	.loc 1 36 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 37 3 is_stmt 1 view .LVU5
	.loc 1 37 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 38 5 is_stmt 1 view .LVU7
	.loc 1 38 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 38 5 is_stmt 0 view .LVU9
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
	.loc 1 38 5 view .LVU11
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
	.loc 1 55 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 41 7 view .LVU18
	.loc 1 41 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB50:
.LBB51:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC14(%rip), %rbx
.LBE51:
.LBE50:
	.loc 1 41 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB77:
.LBB78:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE78:
.LBE77:
	.loc 1 41 15 view .LVU23
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
	.loc 1 47 7 is_stmt 1 view .LVU29
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
	.loc 1 51 7 view .LVU30
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
	.loc 1 52 7 view .LVU31
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
	.loc 1 53 7 view .LVU32
.LBB81:
.LBI50:
	.loc 3 634 1 view .LVU33
.LBB76:
	.loc 3 636 3 view .LVU34
	.loc 3 636 67 is_stmt 0 view .LVU35
	leaq	.LC8(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC15(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC9(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC10(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC11(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC12(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 3 646 3 is_stmt 1 view .LVU36
.LVL18:
	.loc 3 647 3 view .LVU37
	.loc 3 649 3 view .LVU38
	.loc 3 649 9 view .LVU39
	.loc 3 636 67 is_stmt 0 view .LVU40
	movq	%rax, 32(%rsp)
	leaq	.LC13(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC16(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC0(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 3 647 25 view .LVU41
	movq	%rsp, %rax
.LVL19:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 3 650 5 is_stmt 1 view .LVU42
	.loc 3 649 18 is_stmt 0 view .LVU43
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU44
	addq	$16, %rax
.LVL20:
	.loc 3 649 9 is_stmt 1 view .LVU45
	testq	%rdi, %rdi
	je	.L4
	.loc 3 649 33 is_stmt 0 view .LVU46
	movl	$4, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU47
	testb	%dl, %dl
	jne	.L5
.L4:
	.loc 3 652 3 is_stmt 1 view .LVU48
	.loc 3 652 15 is_stmt 0 view .LVU49
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU50
	movl	$5, %edx
	leaq	.LC17(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU51
	testq	%r12, %r12
	je	.L6
	.loc 3 653 5 is_stmt 1 view .LVU52
.LVL21:
	.loc 3 655 3 view .LVU53
	.loc 3 655 11 is_stmt 0 view .LVU54
	call	dcgettext@PLT
.LVL22:
.LBB52:
.LBB53:
	.loc 2 107 10 view .LVU55
	leaq	.LC18(%rip), %rcx
	movl	$1, %edi
	leaq	.LC19(%rip), %rdx
.LBE53:
.LBE52:
	.loc 3 655 11 view .LVU56
	movq	%rax, %rsi
.LVL23:
.LBB57:
.LBI52:
	.loc 2 105 1 is_stmt 1 view .LVU57
.LBB54:
	.loc 2 107 3 view .LVU58
	.loc 2 107 10 is_stmt 0 view .LVU59
	xorl	%eax, %eax
.LVL24:
	.loc 2 107 10 view .LVU60
	call	__printf_chk@PLT
.LVL25:
	.loc 2 107 10 view .LVU61
.LBE54:
.LBE57:
	.loc 3 659 3 is_stmt 1 view .LVU62
	.loc 3 659 29 is_stmt 0 view .LVU63
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL26:
	movq	%rax, %rdi
.LVL27:
	.loc 3 660 3 is_stmt 1 view .LVU64
	.loc 3 660 6 is_stmt 0 view .LVU65
	testq	%rax, %rax
	je	.L7
	.loc 3 660 22 view .LVU66
	movl	$3, %edx
	leaq	.LC20(%rip), %rsi
	call	strncmp@PLT
.LVL28:
	.loc 3 660 19 view .LVU67
	testl	%eax, %eax
	jne	.L10
.LVL29:
.L7:
	.loc 3 669 3 is_stmt 1 view .LVU68
	.loc 3 669 11 is_stmt 0 view .LVU69
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC22(%rip), %rsi
	call	dcgettext@PLT
.LVL30:
.LBB58:
.LBB59:
	.loc 2 107 10 view .LVU70
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	$1, %edi
.LBE59:
.LBE58:
	.loc 3 669 11 view .LVU71
	movq	%rax, %rsi
.LVL31:
.LBB65:
.LBI58:
	.loc 2 105 1 is_stmt 1 view .LVU72
.LBB60:
	.loc 2 107 3 view .LVU73
	.loc 2 107 10 is_stmt 0 view .LVU74
	xorl	%eax, %eax
.LVL32:
	.loc 2 107 10 view .LVU75
.LBE60:
.LBE65:
	.loc 3 671 3 view .LVU76
	leaq	.LC1(%rip), %r13
.LBB66:
.LBB61:
	.loc 2 107 10 view .LVU77
	call	__printf_chk@PLT
.LVL33:
	.loc 2 107 10 view .LVU78
.LBE61:
.LBE66:
	.loc 3 671 3 is_stmt 1 view .LVU79
	cmpq	%rbx, %r12
	leaq	.LC2(%rip), %rcx
	cmovne	%rcx, %r13
.L8:
	.loc 3 671 11 is_stmt 0 view .LVU80
	xorl	%edi, %edi
	leaq	.LC23(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL34:
.LBB67:
.LBB68:
	.loc 2 107 10 view .LVU81
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE68:
.LBE67:
	.loc 3 671 11 view .LVU82
	movq	%rax, %rsi
.LVL35:
.LBB70:
.LBI67:
	.loc 2 105 1 is_stmt 1 view .LVU83
.LBB69:
	.loc 2 107 3 view .LVU84
	.loc 2 107 10 is_stmt 0 view .LVU85
	xorl	%eax, %eax
.LVL36:
	.loc 2 107 10 view .LVU86
	call	__printf_chk@PLT
.LVL37:
	.loc 2 107 10 view .LVU87
.LBE69:
.LBE70:
	.loc 3 673 1 view .LVU88
	jmp	.L3
.LVL38:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU89
	.loc 3 655 11 is_stmt 0 view .LVU90
	call	dcgettext@PLT
.LVL39:
.LBB71:
.LBB55:
	.loc 2 107 10 view .LVU91
	leaq	.LC18(%rip), %rcx
	movl	$1, %edi
	leaq	.LC19(%rip), %rdx
.LBE55:
.LBE71:
	.loc 3 655 11 view .LVU92
	movq	%rax, %rsi
.LVL40:
.LBB72:
	.loc 2 105 1 is_stmt 1 view .LVU93
.LBB56:
	.loc 2 107 3 view .LVU94
	.loc 2 107 10 is_stmt 0 view .LVU95
	xorl	%eax, %eax
.LVL41:
	.loc 2 107 10 view .LVU96
	call	__printf_chk@PLT
.LVL42:
	.loc 2 107 10 view .LVU97
.LBE56:
.LBE72:
	.loc 3 659 3 is_stmt 1 view .LVU98
	.loc 3 659 29 is_stmt 0 view .LVU99
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL43:
	movq	%rax, %rdi
.LVL44:
	.loc 3 660 3 is_stmt 1 view .LVU100
	.loc 3 660 6 is_stmt 0 view .LVU101
	testq	%rax, %rax
	je	.L9
	.loc 3 660 22 view .LVU102
	movl	$3, %edx
	leaq	.LC20(%rip), %rsi
	call	strncmp@PLT
.LVL45:
	.loc 3 660 19 view .LVU103
	testl	%eax, %eax
	jne	.L29
.L9:
	.loc 3 669 3 is_stmt 1 view .LVU104
	.loc 3 669 11 is_stmt 0 view .LVU105
	movl	$5, %edx
	leaq	.LC22(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL46:
.LBB73:
.LBB62:
	.loc 2 107 10 view .LVU106
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	$1, %edi
.LBE62:
.LBE73:
	.loc 3 669 11 view .LVU107
	movq	%rax, %rsi
.LVL47:
.LBB74:
	.loc 2 105 1 is_stmt 1 view .LVU108
.LBB63:
	.loc 2 107 3 view .LVU109
	.loc 2 107 10 is_stmt 0 view .LVU110
	xorl	%eax, %eax
.LVL48:
	.loc 2 107 10 view .LVU111
.LBE63:
.LBE74:
	.loc 3 646 15 view .LVU112
	leaq	.LC0(%rip), %r12
.LBB75:
.LBB64:
	.loc 2 107 10 view .LVU113
	call	__printf_chk@PLT
.LVL49:
	.loc 2 107 10 view .LVU114
.LBE64:
.LBE75:
	.loc 3 671 3 is_stmt 1 view .LVU115
	leaq	.LC1(%rip), %r13
	jmp	.L8
.L29:
	.loc 3 646 15 is_stmt 0 view .LVU116
	leaq	.LC0(%rip), %r12
.LVL50:
.L10:
	.loc 3 666 7 is_stmt 1 view .LVU117
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC21(%rip), %rsi
	call	dcgettext@PLT
.LVL51:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL52:
	jmp	.L7
.LBE76:
.LBE81:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC24:
	.string	"/usr/local/share/locale"
.LC25:
	.string	"David MacKenzie"
.LC26:
	.string	"y"
.LC27:
	.string	"standard output"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL53:
.LFB136:
	.loc 1 60 1 view -0
	.cfi_startproc
	.loc 1 60 1 is_stmt 0 view .LVU119
	endbr64
	.loc 1 61 33 is_stmt 1 view .LVU120
	.loc 1 62 3 view .LVU121
	.loc 1 60 1 is_stmt 0 view .LVU122
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
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 62 3 view .LVU123
	movq	(%rsi), %rdi
.LVL54:
	.loc 1 62 3 view .LVU124
	call	set_program_name@PLT
.LVL55:
	.loc 1 63 3 is_stmt 1 view .LVU125
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL56:
	.loc 1 64 3 view .LVU126
	leaq	.LC24(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	bindtextdomain@PLT
.LVL57:
	.loc 1 65 3 view .LVU127
	leaq	.LC10(%rip), %rdi
	call	textdomain@PLT
.LVL58:
	.loc 1 67 3 view .LVU128
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL59:
	.loc 1 69 3 view .LVU129
	subq	$8, %rsp
	.cfi_def_cfa_offset 88
	movq	%rbp, %rsi
	leaq	.LC25(%rip), %rax
	pushq	$0
	.cfi_def_cfa_offset 96
	movq	Version(%rip), %r8
	movl	%r12d, %edi
	leaq	.LC0(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 104
	leaq	usage(%rip), %rax
	movl	$1, %r9d
	leaq	.LC19(%rip), %rcx
	pushq	%rax
	.cfi_def_cfa_offset 112
	xorl	%eax, %eax
	call	parse_gnu_standard_options_only@PLT
.LVL60:
	.loc 1 73 3 view .LVU130
	.loc 1 73 26 is_stmt 0 view .LVU131
	movslq	optind(%rip), %rdx
	movq	%rdx, %rax
	.loc 1 73 10 view .LVU132
	leaq	0(%rbp,%rdx,8), %rbx
.LVL61:
	.loc 1 74 3 is_stmt 1 view .LVU133
	.loc 1 74 29 is_stmt 0 view .LVU134
	movslq	%r12d, %rdx
	.loc 1 74 10 view .LVU135
	leaq	0(%rbp,%rdx,8), %rdx
	movq	%rdx, 32(%rsp)
.LVL62:
	.loc 1 75 3 is_stmt 1 view .LVU136
	.loc 1 75 6 is_stmt 0 view .LVU137
	addq	$32, %rsp
	.cfi_def_cfa_offset 80
	cmpl	%r12d, %eax
	jne	.L31
	.loc 1 76 5 is_stmt 1 view .LVU138
.LVL63:
	.loc 3 700 3 view .LVU139
	.loc 1 76 20 is_stmt 0 view .LVU140
	movq	%rdx, %rax
	leaq	.LC26(%rip), %rdx
.LVL64:
	.loc 1 76 20 view .LVU141
	movq	%rdx, (%rax)
	.loc 1 76 17 view .LVU142
	addq	$8, %rax
.LVL65:
	.loc 1 76 17 view .LVU143
	movq	%rax, (%rsp)
.LVL66:
.L31:
	.loc 1 80 3 is_stmt 1 view .LVU144
	.loc 1 81 3 view .LVU145
	.loc 1 82 3 view .LVU146
	.loc 1 82 3 is_stmt 0 view .LVU147
	movq	(%rbx), %rbp
.LVL67:
.LBB82:
	.loc 1 89 31 view .LVU148
	movq	%rbx, %r14
.LBE82:
	.loc 1 81 8 view .LVU149
	movl	$1, %r13d
	.loc 1 80 10 view .LVU150
	xorl	%r12d, %r12d
.LVL68:
.LBB83:
	.loc 1 89 31 view .LVU151
	movq	%rbp, %r15
.LVL69:
	.p2align 4,,10
	.p2align 3
.L32:
	.loc 1 89 31 view .LVU152
.LBE83:
	.loc 1 83 3 is_stmt 1 view .LVU153
.LBB84:
	.loc 1 85 7 view .LVU154
	.loc 1 85 28 is_stmt 0 view .LVU155
	movq	%r15, %rdi
	.loc 1 87 20 view .LVU156
	addq	$8, %r14
	.loc 1 85 28 view .LVU157
	call	strlen@PLT
.LVL70:
	.loc 1 86 7 is_stmt 1 view .LVU158
	addq	$1, %rax
.LVL71:
	.loc 1 86 16 is_stmt 0 view .LVU159
	addq	%rax, %r12
.LVL72:
	.loc 1 87 7 is_stmt 1 view .LVU160
	.loc 1 87 10 is_stmt 0 view .LVU161
	cmpq	(%rsp), %r14
	jb	.L56
	.loc 1 87 10 view .LVU162
.LBE84:
	.loc 1 91 9 is_stmt 1 view .LVU163
	.loc 1 94 3 view .LVU164
	.loc 1 94 6 is_stmt 0 view .LVU165
	cmpq	$4096, %r12
	jbe	.L57
	.loc 1 102 3 is_stmt 1 view .LVU166
	.loc 1 102 49 is_stmt 0 view .LVU167
	testb	%r13b, %r13b
	je	.L42
.LVL73:
.L36:
	.loc 1 103 3 is_stmt 1 discriminator 4 view .LVU168
	.loc 1 104 3 discriminator 4 view .LVU169
	.loc 1 103 10 is_stmt 0 discriminator 4 view .LVU170
	xorl	%r14d, %r14d
	jmp	.L38
.LVL74:
	.p2align 4,,10
	.p2align 3
.L37:
.LBB85:
	.loc 1 110 7 is_stmt 1 view .LVU171
	.loc 1 110 15 is_stmt 0 view .LVU172
	leaq	(%r14,%r15), %rcx
.LVL75:
	.loc 1 111 7 is_stmt 1 view .LVU173
.LBE85:
	.loc 1 113 3 is_stmt 0 view .LVU174
	addq	$8, %rbx
.LVL76:
.LBB90:
	.loc 1 111 18 view .LVU175
	leaq	1(%rcx), %r14
.LVL77:
	.loc 1 111 10 view .LVU176
	addq	%rbp, %rcx
	.loc 1 111 22 view .LVU177
	movb	$32, (%rcx)
.LBE90:
	.loc 1 113 9 is_stmt 1 view .LVU178
.LVL78:
	.loc 1 113 3 is_stmt 0 view .LVU179
	cmpq	%rbx, (%rsp)
	jbe	.L58
.LVL79:
.L38:
	.loc 1 105 3 is_stmt 1 view .LVU180
.LBB91:
	.loc 1 107 7 view .LVU181
	.loc 1 107 28 is_stmt 0 view .LVU182
	movq	(%rbx), %rsi
	movq	%rsi, %rdi
	movq	%rsi, 8(%rsp)
	call	strlen@PLT
.LVL80:
	.loc 1 108 10 view .LVU183
	testb	%r13b, %r13b
	movq	8(%rsp), %rsi
	.loc 1 107 28 view .LVU184
	movq	%rax, %r15
.LVL81:
	.loc 1 108 7 is_stmt 1 view .LVU185
	.loc 1 108 10 is_stmt 0 view .LVU186
	jne	.L37
	.loc 1 109 9 is_stmt 1 view .LVU187
.LVL82:
.LBB86:
.LBI86:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 4 31 1 view .LVU188
.LBB87:
	.loc 4 34 3 view .LVU189
.LBE87:
.LBE86:
	.loc 1 109 21 is_stmt 0 view .LVU190
	leaq	0(%rbp,%r14), %rdi
.LVL83:
.LBB89:
.LBB88:
	.loc 4 34 10 view .LVU191
	movq	%rax, %rdx
	call	memcpy@PLT
.LVL84:
	.loc 4 34 10 view .LVU192
	jmp	.L37
.LVL85:
.L57:
	.loc 4 34 10 view .LVU193
.LBE88:
.LBE89:
.LBE91:
	.loc 1 96 16 view .LVU194
	movl	$8192, %r12d
.LVL86:
.L42:
	.loc 1 102 51 discriminator 2 view .LVU195
	movq	%r12, %rdi
	xorl	%r13d, %r13d
	call	xmalloc@PLT
.LVL87:
	.loc 1 102 51 discriminator 2 view .LVU196
	movq	%rax, %rbp
	jmp	.L36
.LVL88:
	.p2align 4,,10
	.p2align 3
.L56:
.LBB92:
	.loc 1 88 38 view .LVU197
	addq	%r15, %rax
.LVL89:
	.loc 1 88 53 view .LVU198
	movq	(%r14), %r15
	.loc 1 89 31 view .LVU199
	cmpq	%r15, %rax
	movl	$0, %eax
	cmovne	%eax, %r13d
.LVL90:
	.loc 1 89 31 view .LVU200
	jmp	.L32
.LVL91:
	.p2align 4,,10
	.p2align 3
.L58:
	.loc 1 89 31 view .LVU201
.LBE92:
	.loc 1 114 3 is_stmt 1 view .LVU202
.LBB93:
	.loc 1 119 15 is_stmt 0 view .LVU203
	movq	%r12, %rax
	xorl	%edx, %edx
.LBE93:
	.loc 1 114 20 view .LVU204
	movb	$10, (%rcx)
	.loc 1 118 3 is_stmt 1 view .LVU205
.LVL92:
	.loc 1 119 3 view .LVU206
.LBB96:
	.loc 1 119 8 view .LVU207
	.loc 1 119 15 is_stmt 0 view .LVU208
	divq	%r14
	.loc 1 119 3 view .LVU209
	movq	%rax, %rbx
.LVL93:
	.loc 1 119 15 view .LVU210
	movq	%rax, %r12
.LVL94:
	.loc 1 119 45 is_stmt 1 view .LVU211
	.loc 1 119 3 is_stmt 0 view .LVU212
	subq	$1, %rbx
.LVL95:
	.loc 1 119 3 view .LVU213
	je	.L41
	leaq	0(%rbp,%r14), %rcx
.LVL96:
	.p2align 4,,10
	.p2align 3
.L40:
	.loc 1 121 7 is_stmt 1 view .LVU214
.LBB94:
.LBI94:
	.loc 4 31 1 view .LVU215
.LBB95:
	.loc 4 34 3 view .LVU216
	.loc 4 34 10 is_stmt 0 view .LVU217
	movq	%rcx, %rdi
	movq	%r14, %rdx
	movq	%rbp, %rsi
	call	memcpy@PLT
.LVL97:
	.loc 4 34 10 view .LVU218
	movq	%rax, %rcx
.LVL98:
	.loc 4 34 10 view .LVU219
.LBE95:
.LBE94:
	.loc 1 122 7 is_stmt 1 view .LVU220
	.loc 1 119 45 view .LVU221
	.loc 1 119 45 is_stmt 0 view .LVU222
	addq	%r14, %rcx
	.loc 1 119 3 view .LVU223
	subq	$1, %rbx
.LVL99:
	.loc 1 119 3 view .LVU224
	jne	.L40
	imulq	%r12, %r14
.LVL100:
.L41:
	.loc 1 119 3 view .LVU225
.LBE96:
	.loc 1 126 9 is_stmt 1 view .LVU226
	.loc 1 126 10 is_stmt 0 view .LVU227
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movl	$1, %edi
	call	full_write@PLT
.LVL101:
	.loc 1 126 9 view .LVU228
	cmpq	%rax, %r14
	je	.L41
	.loc 1 128 3 is_stmt 1 view .LVU229
	.loc 1 128 20 is_stmt 0 view .LVU230
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL102:
	movq	%rax, %r12
	.loc 1 128 13 view .LVU231
	call	__errno_location@PLT
.LVL103:
	.loc 1 128 3 view .LVU232
	movq	%r12, %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL104:
	.loc 1 129 3 is_stmt 1 view .LVU233
	.loc 1 130 1 is_stmt 0 view .LVU234
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
.LVL105:
	.loc 1 130 1 view .LVU235
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL106:
	.loc 1 130 1 view .LVU236
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL107:
	.loc 1 130 1 view .LVU237
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL108:
	.loc 1 130 1 view .LVU238
	ret
	.cfi_endproc
.LFE136:
	.size	main, .-main
	.text
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 11 "./lib/sys/select.h"
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
	.file 22 "./lib/error.h"
	.file 23 "/usr/include/string.h"
	.file 24 "/usr/include/locale.h"
	.file 25 "/usr/include/libintl.h"
	.file 26 "/usr/include/stdlib.h"
	.file 27 "./lib/long-options.h"
	.file 28 "./lib/xalloc.h"
	.file 29 "./lib/full-write.h"
	.file 30 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xfc0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF138
	.byte	0xc
	.long	.LASF139
	.long	.LASF140
	.long	.Ldebug_ranges0+0x270
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
	.uleb128 0x5
	.long	0x43
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
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x66
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x72
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x72
	.uleb128 0x8
	.byte	0x8
	.long	0x97
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x9
	.long	0x97
	.uleb128 0xa
	.long	.LASF108
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x22a
	.uleb128 0xb
	.long	.LASF11
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0xb
	.long	.LASF12
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x91
	.byte	0x8
	.uleb128 0xb
	.long	.LASF13
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x91
	.byte	0x10
	.uleb128 0xb
	.long	.LASF14
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x91
	.byte	0x18
	.uleb128 0xb
	.long	.LASF15
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x91
	.byte	0x20
	.uleb128 0xb
	.long	.LASF16
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x91
	.byte	0x28
	.uleb128 0xb
	.long	.LASF17
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x91
	.byte	0x30
	.uleb128 0xb
	.long	.LASF18
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x91
	.byte	0x38
	.uleb128 0xb
	.long	.LASF19
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x91
	.byte	0x40
	.uleb128 0xb
	.long	.LASF20
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x91
	.byte	0x48
	.uleb128 0xb
	.long	.LASF21
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x91
	.byte	0x50
	.uleb128 0xb
	.long	.LASF22
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x91
	.byte	0x58
	.uleb128 0xb
	.long	.LASF23
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x243
	.byte	0x60
	.uleb128 0xb
	.long	.LASF24
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x249
	.byte	0x68
	.uleb128 0xb
	.long	.LASF25
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x66
	.byte	0x70
	.uleb128 0xb
	.long	.LASF26
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x66
	.byte	0x74
	.uleb128 0xb
	.long	.LASF27
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x79
	.byte	0x78
	.uleb128 0xb
	.long	.LASF28
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0xb
	.long	.LASF29
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0xb
	.long	.LASF30
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x24f
	.byte	0x83
	.uleb128 0xb
	.long	.LASF31
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x25f
	.byte	0x88
	.uleb128 0xb
	.long	.LASF32
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x85
	.byte	0x90
	.uleb128 0xb
	.long	.LASF33
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x26a
	.byte	0x98
	.uleb128 0xb
	.long	.LASF34
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x275
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x249
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF36
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x27b
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xa3
	.uleb128 0xc
	.long	.LASF141
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xd
	.long	.LASF41
	.uleb128 0x8
	.byte	0x8
	.long	0x23e
	.uleb128 0x8
	.byte	0x8
	.long	0xa3
	.uleb128 0xe
	.long	0x97
	.long	0x25f
	.uleb128 0xf
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x236
	.uleb128 0xd
	.long	.LASF42
	.uleb128 0x8
	.byte	0x8
	.long	0x265
	.uleb128 0xd
	.long	.LASF43
	.uleb128 0x8
	.byte	0x8
	.long	0x270
	.uleb128 0xe
	.long	0x97
	.long	0x28b
	.uleb128 0xf
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9e
	.uleb128 0x9
	.long	0x28b
	.uleb128 0x5
	.long	0x28b
	.uleb128 0x10
	.long	.LASF44
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x2a7
	.uleb128 0x8
	.byte	0x8
	.long	0x22a
	.uleb128 0x5
	.long	0x2a7
	.uleb128 0x10
	.long	.LASF45
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x2a7
	.uleb128 0x10
	.long	.LASF46
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x2a7
	.uleb128 0x10
	.long	.LASF47
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x66
	.uleb128 0xe
	.long	0x291
	.long	0x2e1
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x2d6
	.uleb128 0x10
	.long	.LASF48
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x2e1
	.uleb128 0x10
	.long	.LASF49
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF50
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x2e1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF51
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF52
	.uleb128 0x12
	.long	.LASF53
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x66
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0xe
	.long	0x91
	.long	0x33c
	.uleb128 0xf
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF55
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x32c
	.uleb128 0x10
	.long	.LASF56
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF57
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0x72
	.uleb128 0x10
	.long	.LASF58
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x32c
	.uleb128 0x10
	.long	.LASF59
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF60
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0x72
	.uleb128 0x12
	.long	.LASF61
	.byte	0xc
	.value	0x112
	.byte	0xc
	.long	0x66
	.uleb128 0x13
	.uleb128 0x8
	.byte	0x8
	.long	0x391
	.uleb128 0xe
	.long	0x291
	.long	0x3a8
	.uleb128 0xf
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.long	0x398
	.uleb128 0x12
	.long	.LASF62
	.byte	0xd
	.value	0x11e
	.byte	0x1a
	.long	0x3a8
	.uleb128 0x12
	.long	.LASF63
	.byte	0xd
	.value	0x11f
	.byte	0x1a
	.long	0x3a8
	.uleb128 0x12
	.long	.LASF64
	.byte	0xe
	.value	0x21f
	.byte	0xf
	.long	0x3d4
	.uleb128 0x8
	.byte	0x8
	.long	0x91
	.uleb128 0x12
	.long	.LASF65
	.byte	0xe
	.value	0x221
	.byte	0xf
	.long	0x3d4
	.uleb128 0x10
	.long	.LASF66
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0x91
	.uleb128 0x10
	.long	.LASF67
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF68
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF69
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF70
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0x91
	.uleb128 0x10
	.long	.LASF71
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0x91
	.uleb128 0x8
	.byte	0x8
	.long	0x43a
	.uleb128 0x5
	.long	0x42f
	.uleb128 0x14
	.uleb128 0x10
	.long	.LASF72
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x28b
	.uleb128 0x10
	.long	.LASF73
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6d
	.uleb128 0xe
	.long	0x9e
	.long	0x45e
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x453
	.uleb128 0x10
	.long	.LASF74
	.byte	0x13
	.byte	0x19
	.byte	0x13
	.long	0x45e
	.uleb128 0x10
	.long	.LASF75
	.byte	0x14
	.byte	0x20
	.byte	0x14
	.long	0x28b
	.uleb128 0x15
	.long	.LASF142
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x15
	.byte	0x20
	.byte	0x6
	.long	0x4d0
	.uleb128 0x16
	.long	.LASF76
	.byte	0
	.uleb128 0x16
	.long	.LASF77
	.byte	0x1
	.uleb128 0x16
	.long	.LASF78
	.byte	0x2
	.uleb128 0x16
	.long	.LASF79
	.byte	0x3
	.uleb128 0x16
	.long	.LASF80
	.byte	0x4
	.uleb128 0x16
	.long	.LASF81
	.byte	0x5
	.uleb128 0x16
	.long	.LASF82
	.byte	0x6
	.uleb128 0x16
	.long	.LASF83
	.byte	0x7
	.uleb128 0x16
	.long	.LASF84
	.byte	0x8
	.uleb128 0x16
	.long	.LASF85
	.byte	0x9
	.uleb128 0x16
	.long	.LASF86
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.long	0x47b
	.uleb128 0x12
	.long	.LASF87
	.byte	0x15
	.value	0x10b
	.byte	0x1a
	.long	0x2e1
	.uleb128 0xe
	.long	0x4d0
	.long	0x4ed
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x4e2
	.uleb128 0x12
	.long	.LASF88
	.byte	0x15
	.value	0x10c
	.byte	0x21
	.long	0x4ed
	.uleb128 0x10
	.long	.LASF89
	.byte	0x16
	.byte	0x32
	.byte	0xf
	.long	0x392
	.uleb128 0x10
	.long	.LASF90
	.byte	0x16
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF91
	.byte	0x16
	.byte	0x39
	.byte	0xc
	.long	0x66
	.uleb128 0x17
	.long	.LASF104
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.long	0x66
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ab
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.long	0x66
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x18
	.long	.LASF93
	.byte	0x1
	.byte	0x3b
	.byte	0x18
	.long	0x3d4
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.byte	0x49
	.byte	0xa
	.long	0x3d4
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.byte	0x4a
	.byte	0xa
	.long	0x3d4
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x19
	.long	.LASF96
	.byte	0x1
	.byte	0x50
	.byte	0xa
	.long	0x29
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x19
	.long	.LASF97
	.byte	0x1
	.byte	0x51
	.byte	0x8
	.long	0x8ab
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x19
	.long	.LASF98
	.byte	0x1
	.byte	0x52
	.byte	0xa
	.long	0x3d4
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x66
	.byte	0x9
	.long	0x91
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x19
	.long	.LASF99
	.byte	0x1
	.byte	0x67
	.byte	0xa
	.long	0x29
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x19
	.long	.LASF100
	.byte	0x1
	.byte	0x76
	.byte	0xa
	.long	0x29
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x180
	.long	0x63f
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.byte	0x55
	.byte	0xe
	.long	0x29
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x1c
	.quad	.LVL70
	.long	0xee8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x1d0
	.long	0x6d9
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.byte	0x6b
	.byte	0xe
	.long	0x29
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x1e
	.long	0xe68
	.quad	.LBI86
	.byte	.LVU188
	.long	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.long	0x6c2
	.uleb128 0x1f
	.long	0xe91
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x1f
	.long	0xe85
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x1f
	.long	0xe79
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x1c
	.quad	.LVL84
	.long	0xef5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL80
	.long	0xee8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x240
	.long	0x75a
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.byte	0x77
	.byte	0xf
	.long	0x29
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x20
	.long	0xe68
	.quad	.LBI94
	.byte	.LVU215
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.byte	0x1
	.byte	0x79
	.byte	0x7
	.uleb128 0x1f
	.long	0xe91
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x1f
	.long	0xe85
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x1f
	.long	0xe79
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x1c
	.quad	.LVL97
	.long	0xef5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL55
	.long	0xf00
	.uleb128 0x22
	.quad	.LVL56
	.long	0xf0c
	.long	0x78b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x22
	.quad	.LVL57
	.long	0xf18
	.long	0x7b7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.uleb128 0x22
	.quad	.LVL58
	.long	0xf24
	.long	0x7d6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.uleb128 0x21
	.quad	.LVL59
	.long	0xf30
	.uleb128 0x22
	.quad	.LVL60
	.long	0xf3d
	.long	0x820
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.quad	.LVL87
	.long	0xf49
	.long	0x838
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL101
	.long	0xf55
	.long	0x85b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL102
	.long	0xf61
	.long	0x884
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL103
	.long	0xf6d
	.uleb128 0x1c
	.quad	.LVL104
	.long	0xf79
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF103
	.uleb128 0x23
	.long	.LASF105
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xdaf
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.long	0x66
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1e
	.long	0xebd
	.quad	.LBI46
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x26
	.byte	0x5
	.long	0x931
	.uleb128 0x1f
	.long	0xeda
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1f
	.long	0xece
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1c
	.quad	.LVL5
	.long	0xf85
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xdcd
	.quad	.LBI50
	.byte	.LVU33
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x35
	.byte	0x7
	.long	0xc44
	.uleb128 0x24
	.long	0xddb
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x26
	.long	0xe18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x27
	.long	0xe25
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x27
	.long	0xe32
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x27
	.long	0xe3f
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x28
	.long	0xe9e
	.quad	.LBI52
	.byte	.LVU57
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0xa15
	.uleb128 0x1f
	.long	0xeaf
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x22
	.quad	.LVL25
	.long	0xf91
	.long	0x9e7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.uleb128 0x1c
	.quad	.LVL42
	.long	0xf91
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0xe9e
	.quad	.LBI58
	.byte	.LVU72
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0xa8d
	.uleb128 0x1f
	.long	0xeaf
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x22
	.quad	.LVL33
	.long	0xf91
	.long	0xa66
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL49
	.long	0xf91
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0xe9e
	.quad	.LBI67
	.byte	.LVU83
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xad4
	.uleb128 0x1f
	.long	0xeaf
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x1c
	.quad	.LVL37
	.long	0xf91
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL22
	.long	0xf61
	.long	0xafd
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL26
	.long	0xf0c
	.long	0xb19
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL28
	.long	0xf9d
	.long	0xb3d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.quad	.LVL30
	.long	0xf61
	.long	0xb66
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL34
	.long	0xf61
	.long	0xb8f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL39
	.long	0xf61
	.uleb128 0x22
	.quad	.LVL43
	.long	0xf0c
	.long	0xbb8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL45
	.long	0xf9d
	.long	0xbdc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.quad	.LVL46
	.long	0xf61
	.long	0xc05
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL51
	.long	0xf61
	.long	0xc2e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1c
	.quad	.LVL52
	.long	0xfa9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xe9e
	.quad	.LBI77
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x29
	.byte	0x7
	.long	0xc8a
	.uleb128 0x1f
	.long	0xeaf
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x1c
	.quad	.LVL11
	.long	0xf91
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL2
	.long	0xf61
	.long	0xcb3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL6
	.long	0xfb6
	.long	0xccb
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL8
	.long	0xf61
	.long	0xcef
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x22
	.quad	.LVL12
	.long	0xf61
	.long	0xd18
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL13
	.long	0xfa9
	.long	0xd30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL14
	.long	0xf61
	.long	0xd59
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL15
	.long	0xfa9
	.long	0xd71
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL16
	.long	0xf61
	.long	0xd9a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1c
	.quad	.LVL17
	.long	0xfa9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF143
	.byte	0x3
	.value	0x2ba
	.byte	0x1
	.long	0x91
	.byte	0x3
	.long	0xdcd
	.uleb128 0x2a
	.string	"s"
	.byte	0x3
	.value	0x2ba
	.byte	0x17
	.long	0x28b
	.byte	0
	.uleb128 0x2b
	.long	.LASF144
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0xe4d
	.uleb128 0x2c
	.long	.LASF107
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x28b
	.uleb128 0x2d
	.long	.LASF109
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0xe13
	.uleb128 0x2e
	.long	.LASF107
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x28b
	.byte	0
	.uleb128 0x2e
	.long	.LASF110
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x28b
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0xde8
	.uleb128 0x2f
	.long	.LASF109
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0xe5d
	.uleb128 0x2f
	.long	.LASF110
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x28b
	.uleb128 0x2f
	.long	.LASF111
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0xe62
	.uleb128 0x2f
	.long	.LASF112
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x28b
	.byte	0
	.uleb128 0xe
	.long	0xe13
	.long	0xe5d
	.uleb128 0xf
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0xe4d
	.uleb128 0x8
	.byte	0x8
	.long	0xe13
	.uleb128 0x30
	.long	.LASF116
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.long	0x43
	.byte	0x3
	.long	0xe9e
	.uleb128 0x31
	.long	.LASF113
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.long	0x45
	.uleb128 0x31
	.long	.LASF114
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.long	0x435
	.uleb128 0x31
	.long	.LASF115
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.long	0x29
	.byte	0
	.uleb128 0x30
	.long	.LASF117
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0xebd
	.uleb128 0x31
	.long	.LASF118
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x296
	.uleb128 0x32
	.byte	0
	.uleb128 0x30
	.long	.LASF119
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0xee8
	.uleb128 0x31
	.long	.LASF120
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2ad
	.uleb128 0x31
	.long	.LASF118
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x296
	.uleb128 0x32
	.byte	0
	.uleb128 0x33
	.long	.LASF121
	.long	.LASF121
	.byte	0x17
	.value	0x181
	.byte	0xf
	.uleb128 0x34
	.long	.LASF116
	.long	.LASF145
	.byte	0x1e
	.byte	0
	.uleb128 0x35
	.long	.LASF122
	.long	.LASF122
	.byte	0x14
	.byte	0x25
	.byte	0xd
	.uleb128 0x35
	.long	.LASF123
	.long	.LASF123
	.byte	0x18
	.byte	0x7a
	.byte	0xe
	.uleb128 0x35
	.long	.LASF124
	.long	.LASF124
	.byte	0x19
	.byte	0x56
	.byte	0xe
	.uleb128 0x35
	.long	.LASF125
	.long	.LASF125
	.byte	0x19
	.byte	0x52
	.byte	0xe
	.uleb128 0x33
	.long	.LASF126
	.long	.LASF126
	.byte	0x1a
	.value	0x253
	.byte	0xc
	.uleb128 0x35
	.long	.LASF127
	.long	.LASF127
	.byte	0x1b
	.byte	0x21
	.byte	0x6
	.uleb128 0x35
	.long	.LASF128
	.long	.LASF128
	.byte	0x1c
	.byte	0x35
	.byte	0x7
	.uleb128 0x35
	.long	.LASF129
	.long	.LASF129
	.byte	0x1d
	.byte	0x1d
	.byte	0xf
	.uleb128 0x35
	.long	.LASF130
	.long	.LASF130
	.byte	0x19
	.byte	0x33
	.byte	0xe
	.uleb128 0x35
	.long	.LASF131
	.long	.LASF131
	.byte	0x10
	.byte	0x25
	.byte	0xd
	.uleb128 0x35
	.long	.LASF132
	.long	.LASF132
	.byte	0x16
	.byte	0x28
	.byte	0xd
	.uleb128 0x35
	.long	.LASF133
	.long	.LASF133
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x35
	.long	.LASF134
	.long	.LASF134
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x35
	.long	.LASF135
	.long	.LASF135
	.byte	0x17
	.byte	0x8c
	.byte	0xc
	.uleb128 0x33
	.long	.LASF136
	.long	.LASF136
	.byte	0x9
	.value	0x296
	.byte	0xc
	.uleb128 0x33
	.long	.LASF137
	.long	.LASF137
	.byte	0x1a
	.value	0x269
	.byte	0xd
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
	.uleb128 0x37
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS10:
	.uleb128 0
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 0
.LLST10:
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x55
	.quad	.LVL54
	.quad	.LVL68
	.value	0x1
	.byte	0x5c
	.quad	.LVL68
	.quad	.LFE136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST11:
	.quad	.LVL53
	.quad	.LVL55-1
	.value	0x1
	.byte	0x54
	.quad	.LVL55-1
	.quad	.LVL67
	.value	0x1
	.byte	0x56
	.quad	.LVL67
	.quad	.LFE136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU133
	.uleb128 .LVU171
	.uleb128 .LVU193
	.uleb128 .LVU201
.LLST12:
	.quad	.LVL61
	.quad	.LVL74
	.value	0x1
	.byte	0x53
	.quad	.LVL85
	.quad	.LVL91
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU136
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 0
.LLST13:
	.quad	.LVL62
	.quad	.LVL63
	.value	0x1
	.byte	0x51
	.quad	.LVL63
	.quad	.LVL64
	.value	0x3
	.byte	0x71
	.sleb128 8
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL65
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x50
	.quad	.LVL66
	.quad	.LVL105
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL105
	.quad	.LFE136
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU145
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU168
	.uleb128 .LVU193
	.uleb128 .LVU195
	.uleb128 .LVU197
	.uleb128 .LVU201
.LLST14:
	.quad	.LVL66
	.quad	.LVL69
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL69
	.quad	.LVL73
	.value	0x1
	.byte	0x5c
	.quad	.LVL85
	.quad	.LVL86
	.value	0x1
	.byte	0x5c
	.quad	.LVL88
	.quad	.LVL91
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU146
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU168
	.uleb128 .LVU193
	.uleb128 .LVU195
	.uleb128 .LVU197
	.uleb128 .LVU200
.LLST15:
	.quad	.LVL66
	.quad	.LVL69
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL69
	.quad	.LVL73
	.value	0x1
	.byte	0x5d
	.quad	.LVL85
	.quad	.LVL86
	.value	0x1
	.byte	0x5d
	.quad	.LVL88
	.quad	.LVL90
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU147
	.uleb128 .LVU152
	.uleb128 .LVU170
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU193
	.uleb128 .LVU201
	.uleb128 .LVU210
.LLST16:
	.quad	.LVL66
	.quad	.LVL69
	.value	0x1
	.byte	0x53
	.quad	.LVL73
	.quad	.LVL76
	.value	0x1
	.byte	0x53
	.quad	.LVL76
	.quad	.LVL78
	.value	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL85
	.value	0x1
	.byte	0x53
	.quad	.LVL91
	.quad	.LVL93
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU168
	.uleb128 .LVU193
	.uleb128 .LVU201
	.uleb128 .LVU237
.LLST17:
	.quad	.LVL73
	.quad	.LVL85
	.value	0x1
	.byte	0x56
	.quad	.LVL91
	.quad	.LVL107
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU169
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 .LVU193
	.uleb128 .LVU201
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU218
	.uleb128 .LVU221
	.uleb128 .LVU225
.LLST18:
	.quad	.LVL73
	.quad	.LVL74
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL74
	.quad	.LVL75
	.value	0x1
	.byte	0x5e
	.quad	.LVL75
	.quad	.LVL77
	.value	0x1
	.byte	0x52
	.quad	.LVL77
	.quad	.LVL85
	.value	0x1
	.byte	0x5e
	.quad	.LVL91
	.quad	.LVL96
	.value	0x1
	.byte	0x5e
	.quad	.LVL96
	.quad	.LVL97-1
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL98
	.quad	.LVL100
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU206
	.uleb128 .LVU225
.LLST19:
	.quad	.LVL92
	.quad	.LVL100
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU158
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU168
	.uleb128 .LVU193
	.uleb128 .LVU196
	.uleb128 .LVU197
	.uleb128 .LVU198
.LLST20:
	.quad	.LVL70
	.quad	.LVL71
	.value	0x1
	.byte	0x50
	.quad	.LVL71
	.quad	.LVL73
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL85
	.quad	.LVL87-1
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL88
	.quad	.LVL89
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU171
	.uleb128 .LVU180
	.uleb128 .LVU185
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU201
	.uleb128 .LVU238
.LLST21:
	.quad	.LVL74
	.quad	.LVL79
	.value	0x1
	.byte	0x5f
	.quad	.LVL81
	.quad	.LVL84-1
	.value	0x1
	.byte	0x50
	.quad	.LVL84-1
	.quad	.LVL85
	.value	0x1
	.byte	0x5f
	.quad	.LVL91
	.quad	.LVL108
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU188
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
.LLST22:
	.quad	.LVL82
	.quad	.LVL84-1
	.value	0x1
	.byte	0x50
	.quad	.LVL84-1
	.quad	.LVL85
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU188
	.uleb128 .LVU193
.LLST23:
	.quad	.LVL82
	.quad	.LVL85
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU188
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
.LLST24:
	.quad	.LVL82
	.quad	.LVL83
	.value	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL84-1
	.value	0x1
	.byte	0x55
	.quad	.LVL84-1
	.quad	.LVL85
	.value	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU211
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU236
.LLST25:
	.quad	.LVL94
	.quad	.LVL94
	.value	0x1
	.byte	0x50
	.quad	.LVL94
	.quad	.LVL95
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL98
	.value	0x1
	.byte	0x53
	.quad	.LVL98
	.quad	.LVL99
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL99
	.quad	.LVL106
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU215
	.uleb128 .LVU219
.LLST26:
	.quad	.LVL96
	.quad	.LVL98
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU215
	.uleb128 .LVU219
.LLST27:
	.quad	.LVL96
	.quad	.LVL98
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU215
	.uleb128 .LVU218
.LLST28:
	.quad	.LVL96
	.quad	.LVL97-1
	.value	0x1
	.byte	0x52
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
	.uleb128 .LVU37
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU68
	.uleb128 .LVU89
	.uleb128 .LVU117
.LLST3:
	.quad	.LVL18
	.quad	.LVL21
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	.LVL21
	.quad	.LVL29
	.value	0x1
	.byte	0x5c
	.quad	.LVL38
	.quad	.LVL50
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU38
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU55
	.uleb128 .LVU89
	.uleb128 .LVU91
.LLST4:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x1
	.byte	0x57
	.quad	.LVL19
	.quad	.LVL22-1
	.value	0x1
	.byte	0x50
	.quad	.LVL38
	.quad	.LVL39-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU64
	.uleb128 .LVU67
	.uleb128 .LVU100
	.uleb128 .LVU103
.LLST5:
	.quad	.LVL27
	.quad	.LVL28-1
	.value	0x1
	.byte	0x50
	.quad	.LVL44
	.quad	.LVL45-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU57
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU61
	.uleb128 .LVU93
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
.LLST6:
	.quad	.LVL23
	.quad	.LVL24
	.value	0x1
	.byte	0x50
	.quad	.LVL24
	.quad	.LVL25-1
	.value	0x1
	.byte	0x54
	.quad	.LVL40
	.quad	.LVL41
	.value	0x1
	.byte	0x50
	.quad	.LVL41
	.quad	.LVL42-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU72
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU78
	.uleb128 .LVU108
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU114
.LLST7:
	.quad	.LVL31
	.quad	.LVL32
	.value	0x1
	.byte	0x50
	.quad	.LVL32
	.quad	.LVL33-1
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
.LVUS8:
	.uleb128 .LVU83
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU87
.LLST8:
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x50
	.quad	.LVL36
	.quad	.LVL37-1
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
	.quad	.LFB136
	.quad	.LFE136-.LFB136
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
	.quad	.LBB81
	.quad	.LBE81
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
	.quad	.LBB82
	.quad	.LBE82
	.quad	.LBB83
	.quad	.LBE83
	.quad	.LBB84
	.quad	.LBE84
	.quad	.LBB92
	.quad	.LBE92
	.quad	0
	.quad	0
	.quad	.LBB85
	.quad	.LBE85
	.quad	.LBB90
	.quad	.LBE90
	.quad	.LBB91
	.quad	.LBE91
	.quad	0
	.quad	0
	.quad	.LBB86
	.quad	.LBE86
	.quad	.LBB89
	.quad	.LBE89
	.quad	0
	.quad	0
	.quad	.LBB93
	.quad	.LBE93
	.quad	.LBB96
	.quad	.LBE96
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB136
	.quad	.LFE136
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF117:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF12:
	.string	"_IO_read_ptr"
.LASF84:
	.string	"locale_quoting_style"
.LASF24:
	.string	"_chain"
.LASF142:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF122:
	.string	"set_program_name"
.LASF30:
	.string	"_shortbuf"
.LASF97:
	.string	"reuse_operand_strings"
.LASF77:
	.string	"shell_quoting_style"
.LASF18:
	.string	"_IO_buf_base"
.LASF54:
	.string	"long long unsigned int"
.LASF127:
	.string	"parse_gnu_standard_options_only"
.LASF114:
	.string	"__src"
.LASF33:
	.string	"_codecvt"
.LASF126:
	.string	"atexit"
.LASF57:
	.string	"__timezone"
.LASF51:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF95:
	.string	"operand_lim"
.LASF107:
	.string	"program"
.LASF83:
	.string	"escape_quoting_style"
.LASF76:
	.string	"literal_quoting_style"
.LASF25:
	.string	"_fileno"
.LASF13:
	.string	"_IO_read_end"
.LASF63:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF53:
	.string	"_gl_cxxalias_dummy"
.LASF11:
	.string	"_flags"
.LASF34:
	.string	"_wide_data"
.LASF19:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_cur_column"
.LASF71:
	.string	"program_invocation_short_name"
.LASF81:
	.string	"c_quoting_style"
.LASF42:
	.string	"_IO_codecvt"
.LASF139:
	.string	"src/yes.c"
.LASF134:
	.string	"__printf_chk"
.LASF70:
	.string	"program_invocation_name"
.LASF27:
	.string	"_old_offset"
.LASF32:
	.string	"_offset"
.LASF80:
	.string	"shell_escape_always_quoting_style"
.LASF60:
	.string	"timezone"
.LASF75:
	.string	"program_name"
.LASF41:
	.string	"_IO_marker"
.LASF44:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF138:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF98:
	.string	"operandp"
.LASF119:
	.string	"fprintf"
.LASF94:
	.string	"operands"
.LASF120:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF124:
	.string	"bindtextdomain"
.LASF16:
	.string	"_IO_write_ptr"
.LASF47:
	.string	"sys_nerr"
.LASF86:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF91:
	.string	"error_one_per_line"
.LASF72:
	.string	"Version"
.LASF121:
	.string	"strlen"
.LASF20:
	.string	"_IO_save_base"
.LASF65:
	.string	"environ"
.LASF145:
	.string	"__builtin_memcpy"
.LASF31:
	.string	"_lock"
.LASF99:
	.string	"bufused"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF123:
	.string	"setlocale"
.LASF45:
	.string	"stdout"
.LASF74:
	.string	"version_etc_copyright"
.LASF66:
	.string	"optarg"
.LASF102:
	.string	"copies"
.LASF61:
	.string	"getdate_err"
.LASF67:
	.string	"optind"
.LASF17:
	.string	"_IO_write_end"
.LASF113:
	.string	"__dest"
.LASF96:
	.string	"bufalloc"
.LASF141:
	.string	"_IO_lock_t"
.LASF108:
	.string	"_IO_FILE"
.LASF89:
	.string	"error_print_progname"
.LASF111:
	.string	"map_prog"
.LASF64:
	.string	"__environ"
.LASF56:
	.string	"__daylight"
.LASF100:
	.string	"copysize"
.LASF132:
	.string	"error"
.LASF48:
	.string	"sys_errlist"
.LASF23:
	.string	"_markers"
.LASF101:
	.string	"operand_len"
.LASF82:
	.string	"c_maybe_quoting_style"
.LASF103:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF110:
	.string	"node"
.LASF135:
	.string	"strncmp"
.LASF5:
	.string	"short int"
.LASF115:
	.string	"__len"
.LASF49:
	.string	"_sys_nerr"
.LASF29:
	.string	"_vtable_offset"
.LASF58:
	.string	"tzname"
.LASF40:
	.string	"FILE"
.LASF73:
	.string	"exit_failure"
.LASF137:
	.string	"exit"
.LASF133:
	.string	"__fprintf_chk"
.LASF79:
	.string	"shell_escape_quoting_style"
.LASF130:
	.string	"dcgettext"
.LASF87:
	.string	"quoting_style_args"
.LASF69:
	.string	"optopt"
.LASF59:
	.string	"daylight"
.LASF52:
	.string	"long double"
.LASF10:
	.string	"char"
.LASF78:
	.string	"shell_always_quoting_style"
.LASF88:
	.string	"quoting_style_vals"
.LASF85:
	.string	"clocale_quoting_style"
.LASF50:
	.string	"_sys_errlist"
.LASF131:
	.string	"__errno_location"
.LASF68:
	.string	"opterr"
.LASF9:
	.string	"__off64_t"
.LASF14:
	.string	"_IO_read_base"
.LASF116:
	.string	"memcpy"
.LASF22:
	.string	"_IO_save_end"
.LASF62:
	.string	"_sys_siglist"
.LASF118:
	.string	"__fmt"
.LASF109:
	.string	"infomap"
.LASF105:
	.string	"usage"
.LASF37:
	.string	"__pad5"
.LASF39:
	.string	"_unused2"
.LASF46:
	.string	"stderr"
.LASF93:
	.string	"argv"
.LASF125:
	.string	"textdomain"
.LASF106:
	.string	"status"
.LASF140:
	.string	"/root/coreutils"
.LASF36:
	.string	"_freeres_buf"
.LASF21:
	.string	"_IO_backup_base"
.LASF128:
	.string	"xmalloc"
.LASF90:
	.string	"error_message_count"
.LASF112:
	.string	"lc_messages"
.LASF92:
	.string	"argc"
.LASF35:
	.string	"_freeres_list"
.LASF43:
	.string	"_IO_wide_data"
.LASF136:
	.string	"fputs_unlocked"
.LASF129:
	.string	"full_write"
.LASF55:
	.string	"__tzname"
.LASF104:
	.string	"main"
.LASF15:
	.string	"_IO_write_base"
.LASF144:
	.string	"emit_ancillary_info"
.LASF143:
	.string	"bad_cast"
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
