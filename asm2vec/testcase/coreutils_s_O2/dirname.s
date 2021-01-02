	.file	"dirname.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"dirname"
.LC1:
	.string	" invocation"
.LC2:
	.string	""
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Try '%s --help' for more information.\n"
	.section	.rodata.str1.1
.LC4:
	.string	"Usage: %s [OPTION] NAME...\n"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Output each NAME with its last non-slash component and trailing slashes\nremoved; if NAME contains no /'s, output '.' (meaning the current directory).\n\n"
	.align 8
.LC6:
	.string	"  -z, --zero     end each output line with NUL, not newline\n"
	.align 8
.LC7:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC8:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC9:
	.string	"\nExamples:\n  %s /usr/bin/          -> \"/usr\"\n  %s dir1/str dir2/str  -> \"dir1\" followed by \"dir2\"\n  %s stdio.h            -> \".\"\n"
	.section	.rodata.str1.1
.LC10:
	.string	"["
.LC11:
	.string	"test invocation"
.LC12:
	.string	"coreutils"
.LC13:
	.string	"Multi-call invocation"
.LC14:
	.string	"sha224sum"
.LC15:
	.string	"sha2 utilities"
.LC16:
	.string	"sha256sum"
.LC17:
	.string	"sha384sum"
.LC18:
	.string	"sha512sum"
.LC19:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC21:
	.string	"GNU coreutils"
.LC22:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC24:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL0:
.LFB135:
	.file 1 "src/dirname.c"
	.loc 1 45 1 view -0
	.cfi_startproc
	.loc 1 45 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 47 5 view .LVU2
	movl	$5, %edx
	.loc 1 45 1 view .LVU3
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
	.loc 1 45 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 46 3 is_stmt 1 view .LVU5
	.loc 1 46 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 47 5 is_stmt 1 view .LVU7
	.loc 1 47 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 47 5 is_stmt 0 view .LVU9
	call	dcgettext@PLT
.LVL2:
.LBB40:
.LBB41:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE41:
.LBE40:
	.loc 1 47 5 view .LVU11
	movq	%rax, %rdx
.LVL3:
.LBB43:
.LBI40:
	.loc 2 98 1 is_stmt 1 view .LVU12
.LBB42:
	.loc 2 100 3 view .LVU13
	.loc 2 100 10 is_stmt 0 view .LVU14
	xorl	%eax, %eax
.LVL4:
	.loc 2 100 10 view .LVU15
	call	__fprintf_chk@PLT
.LVL5:
.L3:
	.loc 2 100 10 view .LVU16
.LBE42:
.LBE43:
	.loc 1 74 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 50 7 view .LVU18
	.loc 1 50 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB44:
.LBB45:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC16(%rip), %rbx
.LBE45:
.LBE44:
	.loc 1 50 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB71:
.LBB72:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rdx
	movl	$1, %edi
.LBE72:
.LBE71:
	.loc 1 50 15 view .LVU23
	movq	%rax, %rsi
.LVL9:
.LBB74:
.LBI71:
	.loc 2 105 1 is_stmt 1 view .LVU24
.LBB73:
	.loc 2 107 3 view .LVU25
	.loc 2 107 10 is_stmt 0 view .LVU26
	xorl	%eax, %eax
.LVL10:
	.loc 2 107 10 view .LVU27
	call	__printf_chk@PLT
.LVL11:
	.loc 2 107 10 view .LVU28
.LBE73:
.LBE74:
	.loc 1 54 7 is_stmt 1 view .LVU29
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
	.loc 1 59 7 view .LVU30
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
	.loc 1 62 7 view .LVU31
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
	.loc 1 63 7 view .LVU32
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC8(%rip), %rsi
	call	dcgettext@PLT
.LVL18:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL19:
	.loc 1 64 7 view .LVU33
	movq	program_name(%rip), %r12
	.loc 1 64 15 is_stmt 0 view .LVU34
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC9(%rip), %rsi
	call	dcgettext@PLT
.LVL20:
.LBB75:
.LBB76:
	.loc 2 107 10 view .LVU35
	movq	%r12, %r8
	movq	%r12, %rcx
	movq	%r12, %rdx
.LBE76:
.LBE75:
	.loc 1 64 15 view .LVU36
	movq	%rax, %rsi
.LVL21:
.LBB78:
.LBI75:
	.loc 2 105 1 is_stmt 1 view .LVU37
.LBB77:
	.loc 2 107 3 view .LVU38
	.loc 2 107 10 is_stmt 0 view .LVU39
	movl	$1, %edi
	xorl	%eax, %eax
.LVL22:
	.loc 2 107 10 view .LVU40
	call	__printf_chk@PLT
.LVL23:
	.loc 2 107 10 view .LVU41
.LBE77:
.LBE78:
	.loc 1 72 7 is_stmt 1 view .LVU42
.LBB79:
.LBI44:
	.loc 3 634 1 view .LVU43
.LBB70:
	.loc 3 636 3 view .LVU44
	.loc 3 636 67 is_stmt 0 view .LVU45
	leaq	.LC10(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC17(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC11(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC12(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC13(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC14(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 3 646 3 is_stmt 1 view .LVU46
.LVL24:
	.loc 3 647 3 view .LVU47
	.loc 3 649 3 view .LVU48
	.loc 3 649 9 view .LVU49
	.loc 3 636 67 is_stmt 0 view .LVU50
	movq	%rax, 32(%rsp)
	leaq	.LC15(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC18(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC0(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 3 647 25 view .LVU51
	movq	%rsp, %rax
.LVL25:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 3 650 5 is_stmt 1 view .LVU52
	.loc 3 649 18 is_stmt 0 view .LVU53
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU54
	addq	$16, %rax
.LVL26:
	.loc 3 649 9 is_stmt 1 view .LVU55
	testq	%rdi, %rdi
	je	.L4
	.loc 3 649 33 is_stmt 0 view .LVU56
	movl	$8, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU57
	testb	%dl, %dl
	jne	.L5
.L4:
	.loc 3 652 3 is_stmt 1 view .LVU58
	.loc 3 652 15 is_stmt 0 view .LVU59
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU60
	movl	$5, %edx
	leaq	.LC19(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU61
	testq	%r12, %r12
	je	.L6
	.loc 3 653 5 is_stmt 1 view .LVU62
.LVL27:
	.loc 3 655 3 view .LVU63
	.loc 3 655 11 is_stmt 0 view .LVU64
	call	dcgettext@PLT
.LVL28:
.LBB46:
.LBB47:
	.loc 2 107 10 view .LVU65
	leaq	.LC20(%rip), %rcx
	movl	$1, %edi
	leaq	.LC21(%rip), %rdx
.LBE47:
.LBE46:
	.loc 3 655 11 view .LVU66
	movq	%rax, %rsi
.LVL29:
.LBB51:
.LBI46:
	.loc 2 105 1 is_stmt 1 view .LVU67
.LBB48:
	.loc 2 107 3 view .LVU68
	.loc 2 107 10 is_stmt 0 view .LVU69
	xorl	%eax, %eax
.LVL30:
	.loc 2 107 10 view .LVU70
	call	__printf_chk@PLT
.LVL31:
	.loc 2 107 10 view .LVU71
.LBE48:
.LBE51:
	.loc 3 659 3 is_stmt 1 view .LVU72
	.loc 3 659 29 is_stmt 0 view .LVU73
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL32:
	movq	%rax, %rdi
.LVL33:
	.loc 3 660 3 is_stmt 1 view .LVU74
	.loc 3 660 6 is_stmt 0 view .LVU75
	testq	%rax, %rax
	je	.L7
	.loc 3 660 22 view .LVU76
	movl	$3, %edx
	leaq	.LC22(%rip), %rsi
	call	strncmp@PLT
.LVL34:
	.loc 3 660 19 view .LVU77
	testl	%eax, %eax
	jne	.L10
.LVL35:
.L7:
	.loc 3 669 3 is_stmt 1 view .LVU78
	.loc 3 669 11 is_stmt 0 view .LVU79
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC24(%rip), %rsi
	call	dcgettext@PLT
.LVL36:
.LBB52:
.LBB53:
	.loc 2 107 10 view .LVU80
	leaq	.LC0(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	movl	$1, %edi
.LBE53:
.LBE52:
	.loc 3 669 11 view .LVU81
	movq	%rax, %rsi
.LVL37:
.LBB59:
.LBI52:
	.loc 2 105 1 is_stmt 1 view .LVU82
.LBB54:
	.loc 2 107 3 view .LVU83
	.loc 2 107 10 is_stmt 0 view .LVU84
	xorl	%eax, %eax
.LVL38:
	.loc 2 107 10 view .LVU85
.LBE54:
.LBE59:
	.loc 3 671 3 view .LVU86
	leaq	.LC1(%rip), %r13
.LBB60:
.LBB55:
	.loc 2 107 10 view .LVU87
	call	__printf_chk@PLT
.LVL39:
	.loc 2 107 10 view .LVU88
.LBE55:
.LBE60:
	.loc 3 671 3 is_stmt 1 view .LVU89
	cmpq	%rbx, %r12
	leaq	.LC2(%rip), %rcx
	cmovne	%rcx, %r13
.L8:
	.loc 3 671 11 is_stmt 0 view .LVU90
	xorl	%edi, %edi
	leaq	.LC25(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL40:
.LBB61:
.LBB62:
	.loc 2 107 10 view .LVU91
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE62:
.LBE61:
	.loc 3 671 11 view .LVU92
	movq	%rax, %rsi
.LVL41:
.LBB64:
.LBI61:
	.loc 2 105 1 is_stmt 1 view .LVU93
.LBB63:
	.loc 2 107 3 view .LVU94
	.loc 2 107 10 is_stmt 0 view .LVU95
	xorl	%eax, %eax
.LVL42:
	.loc 2 107 10 view .LVU96
	call	__printf_chk@PLT
.LVL43:
	.loc 2 107 10 view .LVU97
.LBE63:
.LBE64:
	.loc 3 673 1 view .LVU98
	jmp	.L3
.LVL44:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU99
	.loc 3 655 11 is_stmt 0 view .LVU100
	call	dcgettext@PLT
.LVL45:
.LBB65:
.LBB49:
	.loc 2 107 10 view .LVU101
	leaq	.LC20(%rip), %rcx
	movl	$1, %edi
	leaq	.LC21(%rip), %rdx
.LBE49:
.LBE65:
	.loc 3 655 11 view .LVU102
	movq	%rax, %rsi
.LVL46:
.LBB66:
	.loc 2 105 1 is_stmt 1 view .LVU103
.LBB50:
	.loc 2 107 3 view .LVU104
	.loc 2 107 10 is_stmt 0 view .LVU105
	xorl	%eax, %eax
.LVL47:
	.loc 2 107 10 view .LVU106
	call	__printf_chk@PLT
.LVL48:
	.loc 2 107 10 view .LVU107
.LBE50:
.LBE66:
	.loc 3 659 3 is_stmt 1 view .LVU108
	.loc 3 659 29 is_stmt 0 view .LVU109
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL49:
	movq	%rax, %rdi
.LVL50:
	.loc 3 660 3 is_stmt 1 view .LVU110
	.loc 3 660 6 is_stmt 0 view .LVU111
	testq	%rax, %rax
	je	.L9
	.loc 3 660 22 view .LVU112
	movl	$3, %edx
	leaq	.LC22(%rip), %rsi
	call	strncmp@PLT
.LVL51:
	.loc 3 660 19 view .LVU113
	testl	%eax, %eax
	jne	.L29
.L9:
	.loc 3 669 3 is_stmt 1 view .LVU114
	.loc 3 669 11 is_stmt 0 view .LVU115
	movl	$5, %edx
	leaq	.LC24(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL52:
.LBB67:
.LBB56:
	.loc 2 107 10 view .LVU116
	leaq	.LC0(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	movl	$1, %edi
.LBE56:
.LBE67:
	.loc 3 669 11 view .LVU117
	movq	%rax, %rsi
.LVL53:
.LBB68:
	.loc 2 105 1 is_stmt 1 view .LVU118
.LBB57:
	.loc 2 107 3 view .LVU119
	.loc 2 107 10 is_stmt 0 view .LVU120
	xorl	%eax, %eax
.LVL54:
	.loc 2 107 10 view .LVU121
.LBE57:
.LBE68:
	.loc 3 646 15 view .LVU122
	leaq	.LC0(%rip), %r12
.LBB69:
.LBB58:
	.loc 2 107 10 view .LVU123
	call	__printf_chk@PLT
.LVL55:
	.loc 2 107 10 view .LVU124
.LBE58:
.LBE69:
	.loc 3 671 3 is_stmt 1 view .LVU125
	leaq	.LC1(%rip), %r13
	jmp	.L8
.L29:
	.loc 3 646 15 is_stmt 0 view .LVU126
	leaq	.LC0(%rip), %r12
.LVL56:
.L10:
	.loc 3 666 7 is_stmt 1 view .LVU127
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC23(%rip), %rsi
	call	dcgettext@PLT
.LVL57:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL58:
	jmp	.L7
.LBE70:
.LBE79:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC26:
	.string	"/usr/local/share/locale"
.LC27:
	.string	"z"
.LC28:
	.string	"Jim Meyering"
.LC29:
	.string	"David MacKenzie"
.LC30:
	.string	"missing operand"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL59:
.LFB136:
	.loc 1 79 1 view -0
	.cfi_startproc
	.loc 1 79 1 is_stmt 0 view .LVU129
	endbr64
	.loc 1 80 3 is_stmt 1 view .LVU130
	.loc 1 81 3 view .LVU131
.LVL60:
	.loc 1 82 3 view .LVU132
	.loc 1 83 3 view .LVU133
	.loc 1 85 33 view .LVU134
	.loc 1 86 3 view .LVU135
	.loc 1 79 1 is_stmt 0 view .LVU136
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	.loc 1 81 8 view .LVU137
	xorl	%r12d, %r12d
	.loc 1 79 1 view .LVU138
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.loc 1 86 3 view .LVU139
	movq	(%rsi), %rdi
.LVL61:
	.loc 1 79 1 view .LVU140
	movq	%rsi, %rbx
	.loc 1 86 3 view .LVU141
	call	set_program_name@PLT
.LVL62:
	.loc 1 87 3 is_stmt 1 view .LVU142
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL63:
	.loc 1 88 3 view .LVU143
	leaq	.LC26(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	call	bindtextdomain@PLT
.LVL64:
	.loc 1 89 3 view .LVU144
	leaq	.LC12(%rip), %rdi
	call	textdomain@PLT
.LVL65:
	.loc 1 91 3 view .LVU145
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL66:
.L33:
	.loc 1 93 3 view .LVU146
.LBB80:
	.loc 1 95 7 view .LVU147
	.loc 1 95 15 is_stmt 0 view .LVU148
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	leaq	.LC27(%rip), %rdx
	call	getopt_long@PLT
.LVL67:
	.loc 1 97 7 is_stmt 1 view .LVU149
	.loc 1 97 10 is_stmt 0 view .LVU150
	cmpl	$-1, %eax
	je	.L31
	.loc 1 100 7 is_stmt 1 view .LVU151
	cmpl	$-130, %eax
	je	.L32
	movl	$1, %r12d
.LVL68:
	.loc 1 100 7 is_stmt 0 view .LVU152
	cmpl	$122, %eax
	je	.L33
	cmpl	$-131, %eax
	je	.L53
.LVL69:
.L52:
	.loc 1 100 7 view .LVU153
.LBE80:
	.loc 1 117 7 is_stmt 1 view .LVU154
	movl	$1, %edi
	call	usage
.LVL70:
	.p2align 4,,10
	.p2align 3
.L53:
.LBB81:
	.loc 1 106 9 view .LVU155
	.loc 1 106 30 view .LVU156
	.loc 1 107 9 view .LVU157
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	stdout(%rip), %rdi
	xorl	%eax, %eax
.LVL71:
	.loc 1 107 9 is_stmt 0 view .LVU158
	movq	Version(%rip), %rcx
	pushq	$0
	.cfi_def_cfa_offset 64
	leaq	.LC28(%rip), %r9
	leaq	.LC29(%rip), %r8
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL72:
	.loc 1 107 9 is_stmt 1 view .LVU159
	xorl	%edi, %edi
	call	exit@PLT
.LVL73:
.L31:
	.cfi_restore_state
	.loc 1 107 9 is_stmt 0 view .LVU160
.LBE81:
	.loc 1 114 3 is_stmt 1 view .LVU161
	.loc 1 114 12 is_stmt 0 view .LVU162
	movl	optind(%rip), %eax
.LVL74:
	.loc 1 114 6 view .LVU163
	cmpl	%ebp, %eax
	jge	.L54
	.loc 1 120 10 is_stmt 1 view .LVU164
	cmpb	$1, %r12b
	sbbl	%r13d, %r13d
	andl	$10, %r13d
.LBB82:
.LBB83:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 4 110 10 is_stmt 0 view .LVU165
	movl	%r13d, %r12d
.LVL75:
	.loc 4 110 10 view .LVU166
	jmp	.L42
.LVL76:
.L37:
	.loc 4 110 10 view .LVU167
.LBE83:
.LBE82:
	.loc 1 127 11 is_stmt 1 view .LVU168
	.loc 1 128 11 view .LVU169
	.loc 1 131 7 view .LVU170
.LBB86:
	.loc 1 131 7 view .LVU171
	.loc 1 131 7 view .LVU172
	.loc 1 131 7 view .LVU173
	.loc 1 131 7 view .LVU174
	.loc 1 131 7 view .LVU175
	.loc 1 131 7 view .LVU176
.LBB87:
.LBI87:
	.loc 4 101 1 view .LVU177
.LBB88:
	.loc 4 103 3 view .LVU178
	.loc 4 103 10 is_stmt 0 view .LVU179
	movq	40(%rcx), %rax
	cmpq	%rax, 48(%rcx)
	jbe	.L55
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rcx)
	movb	$46, (%rax)
.LVL77:
	.loc 4 103 10 view .LVU180
.LBE88:
.LBE87:
	.loc 1 131 7 is_stmt 1 view .LVU181
	.loc 1 131 7 view .LVU182
.L38:
	.loc 1 131 7 is_stmt 0 view .LVU183
.LBE86:
	.loc 1 132 7 is_stmt 1 view .LVU184
.LBB91:
.LBI82:
	.loc 4 108 1 view .LVU185
.LBB84:
	.loc 4 110 3 view .LVU186
	.loc 4 110 10 is_stmt 0 view .LVU187
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L56
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	%r12b, (%rax)
.L41:
.LVL78:
	.loc 4 110 10 view .LVU188
.LBE84:
.LBE91:
	.loc 1 120 25 is_stmt 1 view .LVU189
	.loc 1 120 31 is_stmt 0 view .LVU190
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
	.loc 1 120 10 is_stmt 1 view .LVU191
	.loc 1 120 3 is_stmt 0 view .LVU192
	cmpl	%ebp, %eax
	jge	.L57
.L42:
	.loc 1 122 7 is_stmt 1 view .LVU193
	.loc 1 122 20 is_stmt 0 view .LVU194
	cltq
	.loc 1 122 14 view .LVU195
	movq	(%rbx,%rax,8), %r14
.LVL79:
	.loc 1 123 7 is_stmt 1 view .LVU196
	.loc 1 123 13 is_stmt 0 view .LVU197
	movq	%r14, %rdi
	call	dir_len@PLT
.LVL80:
	movq	stdout(%rip), %rcx
	movq	%rax, %rdx
.LVL81:
	.loc 1 125 7 is_stmt 1 view .LVU198
	.loc 1 125 10 is_stmt 0 view .LVU199
	testq	%rax, %rax
	je	.L37
	.loc 1 131 7 is_stmt 1 view .LVU200
	movl	$1, %esi
	movq	%r14, %rdi
	call	fwrite_unlocked@PLT
.LVL82:
	.loc 1 131 7 is_stmt 0 view .LVU201
	jmp	.L38
.LVL83:
.L57:
	.loc 1 136 1 view .LVU202
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
.LVL84:
	.loc 1 136 1 view .LVU203
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL85:
	.loc 1 136 1 view .LVU204
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.LVL86:
.L55:
	.cfi_restore_state
.LBB92:
.LBB90:
.LBB89:
	.loc 4 103 10 view .LVU205
	movl	$46, %esi
	movq	%rcx, %rdi
	call	__overflow@PLT
.LVL87:
	.loc 4 103 10 view .LVU206
.LBE89:
.LBE90:
	jmp	.L38
.LVL88:
.L56:
	.loc 4 103 10 view .LVU207
.LBE92:
.LBB93:
.LBB85:
	.loc 4 110 10 view .LVU208
	movl	%r13d, %esi
	call	__overflow@PLT
.LVL89:
	jmp	.L41
.LVL90:
.L32:
	.loc 4 110 10 view .LVU209
.LBE85:
.LBE93:
.LBB94:
	.loc 1 106 9 is_stmt 1 view .LVU210
	xorl	%edi, %edi
	call	usage
.LVL91:
.L54:
	.loc 1 106 9 is_stmt 0 view .LVU211
.LBE94:
	.loc 1 116 7 is_stmt 1 view .LVU212
	.loc 1 116 20 is_stmt 0 view .LVU213
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	call	dcgettext@PLT
.LVL92:
	.loc 1 116 7 view .LVU214
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 116 20 view .LVU215
	movq	%rax, %rdx
	.loc 1 116 7 view .LVU216
	xorl	%eax, %eax
	call	error@PLT
.LVL93:
	jmp	.L52
	.cfi_endproc
.LFE136:
	.size	main, .-main
	.section	.rodata.str1.1
.LC31:
	.string	"zero"
.LC32:
	.string	"help"
.LC33:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 128
longopts:
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC33
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
	.file 26 "/usr/include/stdlib.h"
	.file 27 "/usr/include/locale.h"
	.file 28 "/usr/include/libintl.h"
	.file 29 "./lib/dirname.h"
	.file 30 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10c4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF142
	.byte	0xc
	.long	.LASF143
	.long	.LASF144
	.long	.Ldebug_ranges0+0x290
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
	.long	.LASF145
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
	.byte	0x3
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
	.long	.LASF146
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
	.uleb128 0x10
	.long	0xb9
	.long	0x5d2
	.uleb128 0x11
	.long	0xe0
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x5c2
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.byte	0x23
	.byte	0x1c
	.long	0x5d2
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.long	0x53
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x915
	.uleb128 0x1d
	.long	.LASF103
	.byte	0x1
	.byte	0x4e
	.byte	0xb
	.long	0x53
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1d
	.long	.LASF104
	.byte	0x1
	.byte	0x4e
	.byte	0x18
	.long	0x464
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1e
	.string	"dot"
	.byte	0x1
	.byte	0x50
	.byte	0x15
	.long	0x42
	.byte	0x2e
	.uleb128 0x1f
	.long	.LASF106
	.byte	0x1
	.byte	0x51
	.byte	0x8
	.long	0x915
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x1
	.byte	0x52
	.byte	0xf
	.long	0xbe
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.byte	0x53
	.byte	0xa
	.long	0xd4
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x1b0
	.long	0x749
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.byte	0x5f
	.byte	0xb
	.long	0x53
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x22
	.quad	.LVL67
	.long	0xff6
	.long	0x6d8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL72
	.long	0x1002
	.long	0x71e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.byte	0
	.uleb128 0x22
	.quad	.LVL73
	.long	0x100e
	.long	0x735
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL91
	.long	0x91c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x230
	.long	0x7c3
	.uleb128 0x1f
	.long	.LASF108
	.byte	0x1
	.byte	0x83
	.byte	0x7
	.long	0xbe
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x25
	.long	.LASF117
	.byte	0x1
	.byte	0x83
	.byte	0x7
	.long	0x32b
	.uleb128 0x1f
	.long	.LASF109
	.byte	0x1
	.byte	0x83
	.byte	0x7
	.long	0xd4
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x26
	.long	0xfcc
	.quad	.LBI87
	.byte	.LVU177
	.long	.Ldebug_ranges0+0x260
	.byte	0x1
	.byte	0x83
	.byte	0x7
	.uleb128 0x27
	.long	0xfe9
	.uleb128 0x28
	.long	0xfdd
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x24
	.quad	.LVL87
	.long	0x101b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0xfae
	.quad	.LBI82
	.byte	.LVU185
	.long	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.byte	0x84
	.byte	0x7
	.long	0x7fe
	.uleb128 0x28
	.long	0xfbf
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x24
	.quad	.LVL89
	.long	0x101b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LVL62
	.long	0x1028
	.uleb128 0x22
	.quad	.LVL63
	.long	0x1034
	.long	0x82f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x22
	.quad	.LVL64
	.long	0x1040
	.long	0x85b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.byte	0
	.uleb128 0x22
	.quad	.LVL65
	.long	0x104c
	.long	0x87a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.uleb128 0x2a
	.quad	.LVL66
	.long	0x1058
	.uleb128 0x22
	.quad	.LVL70
	.long	0x91c
	.long	0x89e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.quad	.LVL80
	.long	0x1065
	.long	0x8b6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL82
	.long	0x1071
	.long	0x8d3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.quad	.LVL92
	.long	0x107e
	.long	0x8fc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL93
	.long	0x108a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF110
	.uleb128 0x2b
	.long	.LASF112
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xec9
	.uleb128 0x1d
	.long	.LASF113
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.long	0x53
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x29
	.long	0xf83
	.quad	.LBI40
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.long	0x99b
	.uleb128 0x28
	.long	0xfa0
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x28
	.long	0xf94
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x24
	.quad	.LVL5
	.long	0x1096
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0xec9
	.quad	.LBI44
	.byte	.LVU43
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x48
	.byte	0x7
	.long	0xcae
	.uleb128 0x2c
	.long	0xed7
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2e
	.long	0xf14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	0xf21
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2f
	.long	0xf2e
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2f
	.long	0xf3b
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x30
	.long	0xf64
	.quad	.LBI46
	.byte	.LVU67
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0xa7f
	.uleb128 0x28
	.long	0xf75
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x22
	.quad	.LVL31
	.long	0x10a2
	.long	0xa51
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.byte	0
	.uleb128 0x24
	.quad	.LVL48
	.long	0x10a2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0xf64
	.quad	.LBI52
	.byte	.LVU82
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0xaf7
	.uleb128 0x28
	.long	0xf75
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x22
	.quad	.LVL39
	.long	0x10a2
	.long	0xad0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL55
	.long	0x10a2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0xf64
	.quad	.LBI61
	.byte	.LVU93
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xb3e
	.uleb128 0x28
	.long	0xf75
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x24
	.quad	.LVL43
	.long	0x10a2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL28
	.long	0x107e
	.long	0xb67
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL32
	.long	0x1034
	.long	0xb83
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL34
	.long	0x10ae
	.long	0xba7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.quad	.LVL36
	.long	0x107e
	.long	0xbd0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL40
	.long	0x107e
	.long	0xbf9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2a
	.quad	.LVL45
	.long	0x107e
	.uleb128 0x22
	.quad	.LVL49
	.long	0x1034
	.long	0xc22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL51
	.long	0x10ae
	.long	0xc46
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.quad	.LVL52
	.long	0x107e
	.long	0xc6f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL57
	.long	0x107e
	.long	0xc98
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL58
	.long	0x10ba
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0xf64
	.quad	.LBI71
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x32
	.byte	0x7
	.long	0xcee
	.uleb128 0x28
	.long	0xf75
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x24
	.quad	.LVL11
	.long	0x10a2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0xf64
	.quad	.LBI75
	.byte	.LVU37
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0x40
	.byte	0x7
	.long	0xd3a
	.uleb128 0x28
	.long	0xf75
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x24
	.quad	.LVL23
	.long	0x10a2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL2
	.long	0x107e
	.long	0xd63
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL6
	.long	0x100e
	.long	0xd7b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL8
	.long	0x107e
	.long	0xd9f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x22
	.quad	.LVL12
	.long	0x107e
	.long	0xdc8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL13
	.long	0x10ba
	.long	0xde0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL14
	.long	0x107e
	.long	0xe09
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL15
	.long	0x10ba
	.long	0xe21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL16
	.long	0x107e
	.long	0xe4a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL17
	.long	0x10ba
	.long	0xe62
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL18
	.long	0x107e
	.long	0xe8b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL19
	.long	0x10ba
	.long	0xea3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL20
	.long	0x107e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF147
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0xf49
	.uleb128 0x32
	.long	.LASF115
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0xbe
	.uleb128 0x33
	.long	.LASF114
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0xf0f
	.uleb128 0x34
	.long	.LASF115
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0xbe
	.byte	0
	.uleb128 0x34
	.long	.LASF116
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0xbe
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xee4
	.uleb128 0x35
	.long	.LASF114
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0xf59
	.uleb128 0x35
	.long	.LASF116
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0xbe
	.uleb128 0x35
	.long	.LASF118
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0xf5e
	.uleb128 0x35
	.long	.LASF119
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0xbe
	.byte	0
	.uleb128 0x10
	.long	0xf0f
	.long	0xf59
	.uleb128 0x11
	.long	0xe0
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0xf49
	.uleb128 0x3
	.byte	0x8
	.long	0xf0f
	.uleb128 0x36
	.long	.LASF121
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0xf83
	.uleb128 0x37
	.long	.LASF120
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0xc9
	.uleb128 0x38
	.byte	0
	.uleb128 0x36
	.long	.LASF122
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0xfae
	.uleb128 0x37
	.long	.LASF117
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x331
	.uleb128 0x37
	.long	.LASF120
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0xc9
	.uleb128 0x38
	.byte	0
	.uleb128 0x39
	.long	.LASF123
	.byte	0x4
	.byte	0x6c
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0xfcc
	.uleb128 0x3a
	.string	"__c"
	.byte	0x4
	.byte	0x6c
	.byte	0x17
	.long	0x53
	.byte	0
	.uleb128 0x39
	.long	.LASF124
	.byte	0x4
	.byte	0x65
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0xff6
	.uleb128 0x3a
	.string	"__c"
	.byte	0x4
	.byte	0x65
	.byte	0x14
	.long	0x53
	.uleb128 0x37
	.long	.LASF117
	.byte	0x4
	.byte	0x65
	.byte	0x1f
	.long	0x32b
	.byte	0
	.uleb128 0x3b
	.long	.LASF125
	.long	.LASF125
	.byte	0x6
	.byte	0x42
	.byte	0xc
	.uleb128 0x3b
	.long	.LASF126
	.long	.LASF126
	.byte	0x16
	.byte	0x3c
	.byte	0xd
	.uleb128 0x3c
	.long	.LASF127
	.long	.LASF127
	.byte	0x1a
	.value	0x269
	.byte	0xd
	.uleb128 0x3c
	.long	.LASF128
	.long	.LASF128
	.byte	0xb
	.value	0x35b
	.byte	0xc
	.uleb128 0x3b
	.long	.LASF129
	.long	.LASF129
	.byte	0x17
	.byte	0x25
	.byte	0xd
	.uleb128 0x3b
	.long	.LASF130
	.long	.LASF130
	.byte	0x1b
	.byte	0x7a
	.byte	0xe
	.uleb128 0x3b
	.long	.LASF131
	.long	.LASF131
	.byte	0x1c
	.byte	0x56
	.byte	0xe
	.uleb128 0x3b
	.long	.LASF132
	.long	.LASF132
	.byte	0x1c
	.byte	0x52
	.byte	0xe
	.uleb128 0x3c
	.long	.LASF133
	.long	.LASF133
	.byte	0x1a
	.value	0x253
	.byte	0xc
	.uleb128 0x3b
	.long	.LASF134
	.long	.LASF134
	.byte	0x1d
	.byte	0x29
	.byte	0x8
	.uleb128 0x3c
	.long	.LASF135
	.long	.LASF135
	.byte	0xb
	.value	0x2a3
	.byte	0xf
	.uleb128 0x3b
	.long	.LASF136
	.long	.LASF136
	.byte	0x1c
	.byte	0x33
	.byte	0xe
	.uleb128 0x3b
	.long	.LASF137
	.long	.LASF137
	.byte	0x19
	.byte	0x28
	.byte	0xd
	.uleb128 0x3b
	.long	.LASF138
	.long	.LASF138
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x3b
	.long	.LASF139
	.long	.LASF139
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x3b
	.long	.LASF140
	.long	.LASF140
	.byte	0x1e
	.byte	0x8c
	.byte	0xc
	.uleb128 0x3c
	.long	.LASF141
	.long	.LASF141
	.byte	0xb
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
.LVUS11:
	.uleb128 0
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 0
.LLST11:
	.quad	.LVL59
	.quad	.LVL61
	.value	0x1
	.byte	0x55
	.quad	.LVL61
	.quad	.LVL85
	.value	0x1
	.byte	0x56
	.quad	.LVL85
	.quad	.LVL86
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL86
	.quad	.LFE136
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 0
.LLST12:
	.quad	.LVL59
	.quad	.LVL62-1
	.value	0x1
	.byte	0x54
	.quad	.LVL62-1
	.quad	.LVL84
	.value	0x1
	.byte	0x53
	.quad	.LVL84
	.quad	.LVL86
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL86
	.quad	.LFE136
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU132
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU152
	.uleb128 .LVU160
	.uleb128 .LVU166
	.uleb128 .LVU209
	.uleb128 0
.LLST13:
	.quad	.LVL60
	.quad	.LVL66
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL66
	.quad	.LVL68
	.value	0x1
	.byte	0x5c
	.quad	.LVL73
	.quad	.LVL75
	.value	0x1
	.byte	0x5c
	.quad	.LVL90
	.quad	.LFE136
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU167
	.uleb128 .LVU169
	.uleb128 .LVU196
	.uleb128 .LVU202
.LLST14:
	.quad	.LVL76
	.quad	.LVL76
	.value	0x1
	.byte	0x5e
	.quad	.LVL79
	.quad	.LVL83
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU167
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU183
	.uleb128 .LVU198
	.uleb128 .LVU201
	.uleb128 .LVU205
	.uleb128 .LVU207
.LLST15:
	.quad	.LVL76
	.quad	.LVL76
	.value	0x1
	.byte	0x50
	.quad	.LVL76
	.quad	.LVL77
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL81
	.quad	.LVL82-1
	.value	0x1
	.byte	0x50
	.quad	.LVL86
	.quad	.LVL88
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU149
	.uleb128 .LVU153
	.uleb128 .LVU155
	.uleb128 .LVU158
	.uleb128 .LVU160
	.uleb128 .LVU163
	.uleb128 .LVU209
	.uleb128 .LVU211
.LLST16:
	.quad	.LVL67
	.quad	.LVL69
	.value	0x1
	.byte	0x50
	.quad	.LVL70
	.quad	.LVL71
	.value	0x1
	.byte	0x50
	.quad	.LVL73
	.quad	.LVL74
	.value	0x1
	.byte	0x50
	.quad	.LVL90
	.quad	.LVL91-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU177
	.uleb128 .LVU183
	.uleb128 .LVU205
	.uleb128 .LVU207
.LLST18:
	.quad	.LVL76
	.quad	.LVL77
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1591
	.sleb128 1
	.quad	.LVL86
	.quad	.LVL88
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1591
	.sleb128 1
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU175
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU205
	.uleb128 .LVU207
.LLST19:
	.quad	.LVL76
	.quad	.LVL77
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL86
	.quad	.LVL88
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU177
	.uleb128 .LVU180
	.uleb128 .LVU205
	.uleb128 .LVU206
.LLST20:
	.quad	.LVL76
	.quad	.LVL77
	.value	0x3
	.byte	0x8
	.byte	0x2e
	.byte	0x9f
	.quad	.LVL86
	.quad	.LVL87
	.value	0x3
	.byte	0x8
	.byte	0x2e
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU185
	.uleb128 .LVU188
	.uleb128 .LVU207
	.uleb128 .LVU209
.LLST17:
	.quad	.LVL77
	.quad	.LVL78
	.value	0x1
	.byte	0x5d
	.quad	.LVL88
	.quad	.LVL90
	.value	0x1
	.byte	0x5d
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
	.uleb128 .LVU47
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU78
	.uleb128 .LVU99
	.uleb128 .LVU127
.LLST3:
	.quad	.LVL24
	.quad	.LVL27
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	.LVL27
	.quad	.LVL35
	.value	0x1
	.byte	0x5c
	.quad	.LVL44
	.quad	.LVL56
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU48
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU65
	.uleb128 .LVU99
	.uleb128 .LVU101
.LLST4:
	.quad	.LVL24
	.quad	.LVL25
	.value	0x1
	.byte	0x57
	.quad	.LVL25
	.quad	.LVL28-1
	.value	0x1
	.byte	0x50
	.quad	.LVL44
	.quad	.LVL45-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU110
	.uleb128 .LVU113
.LLST5:
	.quad	.LVL33
	.quad	.LVL34-1
	.value	0x1
	.byte	0x50
	.quad	.LVL50
	.quad	.LVL51-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU67
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU71
	.uleb128 .LVU103
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU107
.LLST6:
	.quad	.LVL29
	.quad	.LVL30
	.value	0x1
	.byte	0x50
	.quad	.LVL30
	.quad	.LVL31-1
	.value	0x1
	.byte	0x54
	.quad	.LVL46
	.quad	.LVL47
	.value	0x1
	.byte	0x50
	.quad	.LVL47
	.quad	.LVL48-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU82
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU88
	.uleb128 .LVU118
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU124
.LLST7:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x1
	.byte	0x50
	.quad	.LVL38
	.quad	.LVL39-1
	.value	0x1
	.byte	0x54
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x50
	.quad	.LVL54
	.quad	.LVL55-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU93
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
.LLST8:
	.quad	.LVL41
	.quad	.LVL42
	.value	0x1
	.byte	0x50
	.quad	.LVL42
	.quad	.LVL43-1
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
.LVUS10:
	.uleb128 .LVU37
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU41
.LLST10:
	.quad	.LVL21
	.quad	.LVL22
	.value	0x1
	.byte	0x50
	.quad	.LVL22
	.quad	.LVL23-1
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
	.quad	.LBB40
	.quad	.LBE40
	.quad	.LBB43
	.quad	.LBE43
	.quad	0
	.quad	0
	.quad	.LBB44
	.quad	.LBE44
	.quad	.LBB79
	.quad	.LBE79
	.quad	0
	.quad	0
	.quad	.LBB46
	.quad	.LBE46
	.quad	.LBB51
	.quad	.LBE51
	.quad	.LBB65
	.quad	.LBE65
	.quad	.LBB66
	.quad	.LBE66
	.quad	0
	.quad	0
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB59
	.quad	.LBE59
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB67
	.quad	.LBE67
	.quad	.LBB68
	.quad	.LBE68
	.quad	.LBB69
	.quad	.LBE69
	.quad	0
	.quad	0
	.quad	.LBB61
	.quad	.LBE61
	.quad	.LBB64
	.quad	.LBE64
	.quad	0
	.quad	0
	.quad	.LBB71
	.quad	.LBE71
	.quad	.LBB74
	.quad	.LBE74
	.quad	0
	.quad	0
	.quad	.LBB75
	.quad	.LBE75
	.quad	.LBB78
	.quad	.LBE78
	.quad	0
	.quad	0
	.quad	.LBB80
	.quad	.LBE80
	.quad	.LBB81
	.quad	.LBE81
	.quad	.LBB94
	.quad	.LBE94
	.quad	0
	.quad	0
	.quad	.LBB82
	.quad	.LBE82
	.quad	.LBB91
	.quad	.LBE91
	.quad	.LBB93
	.quad	.LBE93
	.quad	0
	.quad	0
	.quad	.LBB86
	.quad	.LBE86
	.quad	.LBB92
	.quad	.LBE92
	.quad	0
	.quad	0
	.quad	.LBB87
	.quad	.LBE87
	.quad	.LBB90
	.quad	.LBE90
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
.LASF121:
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
.LASF105:
	.string	"longopts"
.LASF146:
	.string	"quoting_style"
.LASF15:
	.string	"size_t"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF129:
	.string	"set_program_name"
.LASF40:
	.string	"_shortbuf"
.LASF134:
	.string	"dir_len"
.LASF88:
	.string	"shell_quoting_style"
.LASF83:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF65:
	.string	"long long unsigned int"
.LASF123:
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
.LASF115:
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
.LASF139:
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
.LASF71:
	.string	"timezone"
.LASF86:
	.string	"program_name"
.LASF126:
	.string	"version_etc"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF9:
	.string	"unsigned int"
.LASF142:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF122:
	.string	"fprintf"
.LASF117:
	.string	"__stream"
.LASF8:
	.string	"long unsigned int"
.LASF143:
	.string	"src/dirname.c"
.LASF26:
	.string	"_IO_write_ptr"
.LASF5:
	.string	"name"
.LASF70:
	.string	"daylight"
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
.LASF109:
	.string	"__cnt"
.LASF72:
	.string	"getdate_err"
.LASF1:
	.string	"optind"
.LASF27:
	.string	"_IO_write_end"
.LASF128:
	.string	"__overflow"
.LASF145:
	.string	"_IO_lock_t"
.LASF20:
	.string	"_IO_FILE"
.LASF100:
	.string	"error_print_progname"
.LASF118:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF63:
	.string	"time_t"
.LASF137:
	.string	"error"
.LASF58:
	.string	"sys_errlist"
.LASF33:
	.string	"_markers"
.LASF93:
	.string	"c_maybe_quoting_style"
.LASF110:
	.string	"_Bool"
.LASF10:
	.string	"unsigned char"
.LASF116:
	.string	"node"
.LASF140:
	.string	"strncmp"
.LASF13:
	.string	"short int"
.LASF19:
	.string	"option"
.LASF131:
	.string	"bindtextdomain"
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
.LASF127:
	.string	"exit"
.LASF138:
	.string	"__fprintf_chk"
.LASF90:
	.string	"shell_escape_quoting_style"
.LASF136:
	.string	"dcgettext"
.LASF98:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF135:
	.string	"fwrite_unlocked"
.LASF62:
	.string	"long double"
.LASF2:
	.string	"char"
.LASF89:
	.string	"shell_always_quoting_style"
.LASF106:
	.string	"use_nuls"
.LASF96:
	.string	"clocale_quoting_style"
.LASF3:
	.string	"opterr"
.LASF17:
	.string	"__off64_t"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF120:
	.string	"__fmt"
.LASF114:
	.string	"infomap"
.LASF6:
	.string	"has_arg"
.LASF112:
	.string	"usage"
.LASF47:
	.string	"__pad5"
.LASF18:
	.string	"__time_t"
.LASF49:
	.string	"_unused2"
.LASF56:
	.string	"stderr"
.LASF104:
	.string	"argv"
.LASF132:
	.string	"textdomain"
.LASF67:
	.string	"__daylight"
.LASF113:
	.string	"status"
.LASF144:
	.string	"/root/coreutils"
.LASF46:
	.string	"_freeres_buf"
.LASF31:
	.string	"_IO_backup_base"
.LASF124:
	.string	"putc_unlocked"
.LASF101:
	.string	"error_message_count"
.LASF119:
	.string	"lc_messages"
.LASF103:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF53:
	.string	"_IO_wide_data"
.LASF125:
	.string	"getopt_long"
.LASF141:
	.string	"fputs_unlocked"
.LASF66:
	.string	"__tzname"
.LASF111:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF147:
	.string	"emit_ancillary_info"
.LASF107:
	.string	"result"
.LASF108:
	.string	"__ptr"
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
