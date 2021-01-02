	.file	"tty.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"tty"
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
	.string	"Usage: %s [OPTION]...\n"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Print the file name of the terminal connected to standard input.\n\n  -s, --silent, --quiet   print nothing, only return an exit status\n"
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
	.file 1 "src/tty.c"
	.loc 1 60 1 view -0
	.cfi_startproc
	.loc 1 60 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 62 5 view .LVU2
	movl	$5, %edx
	.loc 1 60 1 view .LVU3
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
	.loc 1 60 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 61 3 is_stmt 1 view .LVU5
	.loc 1 61 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 62 5 is_stmt 1 view .LVU7
	.loc 1 62 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 62 5 is_stmt 0 view .LVU9
	call	dcgettext@PLT
.LVL2:
.LBB32:
.LBB33:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE33:
.LBE32:
	.loc 1 62 5 view .LVU11
	movq	%rax, %rdx
.LVL3:
.LBB35:
.LBI32:
	.loc 2 98 1 is_stmt 1 view .LVU12
.LBB34:
	.loc 2 100 3 view .LVU13
	.loc 2 100 10 is_stmt 0 view .LVU14
	xorl	%eax, %eax
.LVL4:
	.loc 2 100 10 view .LVU15
	call	__fprintf_chk@PLT
.LVL5:
.L3:
	.loc 2 100 10 view .LVU16
.LBE34:
.LBE35:
	.loc 1 75 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 65 7 view .LVU18
	.loc 1 65 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB36:
.LBB37:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC14(%rip), %rbx
.LBE37:
.LBE36:
	.loc 1 65 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB63:
.LBB64:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rdx
	movl	$1, %edi
.LBE64:
.LBE63:
	.loc 1 65 15 view .LVU23
	movq	%rax, %rsi
.LVL9:
.LBB66:
.LBI63:
	.loc 2 105 1 is_stmt 1 view .LVU24
.LBB65:
	.loc 2 107 3 view .LVU25
	.loc 2 107 10 is_stmt 0 view .LVU26
	xorl	%eax, %eax
.LVL10:
	.loc 2 107 10 view .LVU27
	call	__printf_chk@PLT
.LVL11:
	.loc 2 107 10 view .LVU28
.LBE65:
.LBE66:
	.loc 1 66 7 is_stmt 1 view .LVU29
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
	.loc 1 71 7 view .LVU30
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
	.loc 1 72 7 view .LVU31
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
	.loc 1 73 7 view .LVU32
.LBB67:
.LBI36:
	.loc 3 634 1 view .LVU33
.LBB62:
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
.LBB38:
.LBB39:
	.loc 2 107 10 view .LVU55
	leaq	.LC18(%rip), %rcx
	movl	$1, %edi
	leaq	.LC19(%rip), %rdx
.LBE39:
.LBE38:
	.loc 3 655 11 view .LVU56
	movq	%rax, %rsi
.LVL23:
.LBB43:
.LBI38:
	.loc 2 105 1 is_stmt 1 view .LVU57
.LBB40:
	.loc 2 107 3 view .LVU58
	.loc 2 107 10 is_stmt 0 view .LVU59
	xorl	%eax, %eax
.LVL24:
	.loc 2 107 10 view .LVU60
	call	__printf_chk@PLT
.LVL25:
	.loc 2 107 10 view .LVU61
.LBE40:
.LBE43:
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
.LBB44:
.LBB45:
	.loc 2 107 10 view .LVU70
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	$1, %edi
.LBE45:
.LBE44:
	.loc 3 669 11 view .LVU71
	movq	%rax, %rsi
.LVL31:
.LBB51:
.LBI44:
	.loc 2 105 1 is_stmt 1 view .LVU72
.LBB46:
	.loc 2 107 3 view .LVU73
	.loc 2 107 10 is_stmt 0 view .LVU74
	xorl	%eax, %eax
.LVL32:
	.loc 2 107 10 view .LVU75
.LBE46:
.LBE51:
	.loc 3 671 3 view .LVU76
	leaq	.LC1(%rip), %r13
.LBB52:
.LBB47:
	.loc 2 107 10 view .LVU77
	call	__printf_chk@PLT
.LVL33:
	.loc 2 107 10 view .LVU78
.LBE47:
.LBE52:
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
.LBB53:
.LBB54:
	.loc 2 107 10 view .LVU81
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE54:
.LBE53:
	.loc 3 671 11 view .LVU82
	movq	%rax, %rsi
.LVL35:
.LBB56:
.LBI53:
	.loc 2 105 1 is_stmt 1 view .LVU83
.LBB55:
	.loc 2 107 3 view .LVU84
	.loc 2 107 10 is_stmt 0 view .LVU85
	xorl	%eax, %eax
.LVL36:
	.loc 2 107 10 view .LVU86
	call	__printf_chk@PLT
.LVL37:
	.loc 2 107 10 view .LVU87
.LBE55:
.LBE56:
	.loc 3 673 1 view .LVU88
	jmp	.L3
.LVL38:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU89
	.loc 3 655 11 is_stmt 0 view .LVU90
	call	dcgettext@PLT
.LVL39:
.LBB57:
.LBB41:
	.loc 2 107 10 view .LVU91
	leaq	.LC18(%rip), %rcx
	movl	$1, %edi
	leaq	.LC19(%rip), %rdx
.LBE41:
.LBE57:
	.loc 3 655 11 view .LVU92
	movq	%rax, %rsi
.LVL40:
.LBB58:
	.loc 2 105 1 is_stmt 1 view .LVU93
.LBB42:
	.loc 2 107 3 view .LVU94
	.loc 2 107 10 is_stmt 0 view .LVU95
	xorl	%eax, %eax
.LVL41:
	.loc 2 107 10 view .LVU96
	call	__printf_chk@PLT
.LVL42:
	.loc 2 107 10 view .LVU97
.LBE42:
.LBE58:
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
.LBB59:
.LBB48:
	.loc 2 107 10 view .LVU106
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	$1, %edi
.LBE48:
.LBE59:
	.loc 3 669 11 view .LVU107
	movq	%rax, %rsi
.LVL47:
.LBB60:
	.loc 2 105 1 is_stmt 1 view .LVU108
.LBB49:
	.loc 2 107 3 view .LVU109
	.loc 2 107 10 is_stmt 0 view .LVU110
	xorl	%eax, %eax
.LVL48:
	.loc 2 107 10 view .LVU111
.LBE49:
.LBE60:
	.loc 3 646 15 view .LVU112
	leaq	.LC0(%rip), %r12
.LBB61:
.LBB50:
	.loc 2 107 10 view .LVU113
	call	__printf_chk@PLT
.LVL49:
	.loc 2 107 10 view .LVU114
.LBE50:
.LBE61:
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
.LBE62:
.LBE67:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC24:
	.string	"/usr/local/share/locale"
.LC25:
	.string	"David MacKenzie"
.LC26:
	.string	"s"
.LC27:
	.string	"extra operand %s"
.LC28:
	.string	"not a tty"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL53:
.LFB136:
	.loc 1 80 1 view -0
	.cfi_startproc
	.loc 1 80 1 is_stmt 0 view .LVU119
	endbr64
	.loc 1 81 3 is_stmt 1 view .LVU120
	.loc 1 83 33 view .LVU121
	.loc 1 84 3 view .LVU122
	.loc 1 80 1 is_stmt 0 view .LVU123
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	.loc 1 94 18 view .LVU124
	leaq	longopts(%rip), %rbp
	.loc 1 80 1 view .LVU125
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 84 3 view .LVU126
	movq	(%rsi), %rdi
.LVL54:
	.loc 1 80 1 view .LVU127
	movq	%rsi, %rbx
	.loc 1 84 3 view .LVU128
	call	set_program_name@PLT
.LVL55:
	.loc 1 85 3 is_stmt 1 view .LVU129
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL56:
	.loc 1 86 3 view .LVU130
	leaq	.LC24(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	bindtextdomain@PLT
.LVL57:
	.loc 1 87 3 view .LVU131
	leaq	.LC10(%rip), %rdi
	call	textdomain@PLT
.LVL58:
	.loc 1 89 3 view .LVU132
.LBB68:
.LBI68:
	.loc 3 99 1 view .LVU133
.LBB69:
	.loc 3 101 3 view .LVU134
	.loc 3 102 5 view .LVU135
.LBE69:
.LBE68:
	.loc 1 90 3 is_stmt 0 view .LVU136
	movq	close_stdout@GOTPCREL(%rip), %rdi
.LBB71:
.LBB70:
	.loc 3 102 18 view .LVU137
	movl	$3, exit_failure(%rip)
.LVL59:
	.loc 3 102 18 view .LVU138
.LBE70:
.LBE71:
	.loc 1 90 3 is_stmt 1 view .LVU139
	call	atexit@PLT
.LVL60:
	.loc 1 92 3 view .LVU140
	.loc 1 92 10 is_stmt 0 view .LVU141
	movb	$0, silent(%rip)
	.loc 1 94 3 is_stmt 1 view .LVU142
.L31:
	.loc 1 94 9 view .LVU143
	.loc 1 94 18 is_stmt 0 view .LVU144
	xorl	%r8d, %r8d
	movq	%rbp, %rcx
	leaq	.LC26(%rip), %rdx
	movq	%rbx, %rsi
	movl	%r12d, %edi
	call	getopt_long@PLT
.LVL61:
	.loc 1 94 9 view .LVU145
	cmpl	$-1, %eax
	je	.L45
	.loc 1 96 7 is_stmt 1 view .LVU146
	cmpl	$-130, %eax
	je	.L32
	cmpl	$115, %eax
	jne	.L46
	.loc 1 99 11 view .LVU147
	.loc 1 99 18 is_stmt 0 view .LVU148
	movb	$1, silent(%rip)
	.loc 1 100 11 is_stmt 1 view .LVU149
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L46:
	.loc 1 96 7 is_stmt 0 view .LVU150
	cmpl	$-131, %eax
	je	.L47
.LVL62:
.L44:
	.loc 1 114 7 is_stmt 1 view .LVU151
	movl	$2, %edi
	call	usage
.LVL63:
	.p2align 4,,10
	.p2align 3
.L47:
	.loc 1 102 9 view .LVU152
	.loc 1 102 30 view .LVU153
	.loc 1 104 9 view .LVU154
	movq	stdout(%rip), %rdi
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
.LVL64:
	.loc 1 104 9 is_stmt 0 view .LVU155
	xorl	%r9d, %r9d
	leaq	.LC25(%rip), %r8
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL65:
	.loc 1 104 9 is_stmt 1 view .LVU156
	xorl	%edi, %edi
	call	exit@PLT
.LVL66:
.L45:
	.loc 1 111 3 view .LVU157
	.loc 1 111 14 is_stmt 0 view .LVU158
	movslq	optind(%rip), %rax
.LVL67:
	.loc 1 111 6 view .LVU159
	cmpl	%r12d, %eax
	jl	.L48
	.loc 1 117 3 is_stmt 1 view .LVU160
	call	__errno_location@PLT
.LVL68:
	.loc 1 120 12 is_stmt 0 view .LVU161
	xorl	%edi, %edi
	.loc 1 119 6 view .LVU162
	cmpb	$0, silent(%rip)
	.loc 1 117 9 view .LVU163
	movl	$2, (%rax)
	.loc 1 119 3 is_stmt 1 view .LVU164
	.loc 1 119 6 is_stmt 0 view .LVU165
	jne	.L49
	.loc 1 122 3 is_stmt 1 view .LVU166
.LVL69:
	.loc 1 123 3 view .LVU167
	.loc 1 123 21 is_stmt 0 view .LVU168
	call	ttyname@PLT
.LVL70:
	.loc 1 122 7 view .LVU169
	xorl	%r12d, %r12d
.LVL71:
	.loc 1 123 21 view .LVU170
	movq	%rax, %rdi
.LVL72:
	.loc 1 125 3 is_stmt 1 view .LVU171
	.loc 1 125 6 is_stmt 0 view .LVU172
	testq	%rax, %rax
	je	.L50
.LVL73:
.L40:
	.loc 1 131 3 is_stmt 1 view .LVU173
	call	puts@PLT
.LVL74:
	.loc 1 132 3 view .LVU174
.L30:
	.loc 1 133 1 is_stmt 0 view .LVU175
	movl	%r12d, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL75:
	.loc 1 133 1 view .LVU176
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL76:
.L49:
	.cfi_restore_state
	.loc 1 120 5 is_stmt 1 view .LVU177
	.loc 1 120 12 is_stmt 0 view .LVU178
	call	isatty@PLT
.LVL77:
	.loc 1 120 49 view .LVU179
	xorl	%r12d, %r12d
.LVL78:
	.loc 1 120 49 view .LVU180
	testl	%eax, %eax
	sete	%r12b
	jmp	.L30
.LVL79:
.L50:
	.loc 1 127 7 is_stmt 1 view .LVU181
	.loc 1 127 13 is_stmt 0 view .LVU182
	movl	$5, %edx
	leaq	.LC28(%rip), %rsi
	.loc 1 128 14 view .LVU183
	movl	$1, %r12d
	.loc 1 127 13 view .LVU184
	call	dcgettext@PLT
.LVL80:
	.loc 1 127 13 view .LVU185
	movq	%rax, %rdi
.LVL81:
	.loc 1 128 7 is_stmt 1 view .LVU186
	.loc 1 128 7 is_stmt 0 view .LVU187
	jmp	.L40
.LVL82:
.L32:
	.loc 1 102 9 is_stmt 1 view .LVU188
	xorl	%edi, %edi
	call	usage
.LVL83:
.L48:
	.loc 1 113 7 view .LVU189
	movq	(%rbx,%rax,8), %rdi
	call	quote@PLT
.LVL84:
	.loc 1 113 20 is_stmt 0 view .LVU190
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	.loc 1 113 7 view .LVU191
	movq	%rax, %r12
.LVL85:
	.loc 1 113 20 view .LVU192
	call	dcgettext@PLT
.LVL86:
	.loc 1 113 7 view .LVU193
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 113 20 view .LVU194
	movq	%rax, %rdx
	.loc 1 113 7 view .LVU195
	xorl	%eax, %eax
	call	error@PLT
.LVL87:
	jmp	.L44
	.cfi_endproc
.LFE136:
	.size	main, .-main
	.section	.rodata.str1.1
.LC29:
	.string	"silent"
.LC30:
	.string	"quiet"
.LC31:
	.string	"help"
.LC32:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 160
longopts:
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC32
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
	.local	silent
	.comm	silent,1,1
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 11 "./lib/sys/select.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 14 "/usr/include/time.h"
	.file 15 "/usr/include/signal.h"
	.file 16 "/usr/include/unistd.h"
	.file 17 "/usr/include/errno.h"
	.file 18 "src/version.h"
	.file 19 "./lib/exitfail.h"
	.file 20 "./lib/timespec.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/quote.h"
	.file 26 "/usr/include/locale.h"
	.file 27 "/usr/include/libintl.h"
	.file 28 "/usr/include/stdlib.h"
	.file 29 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xfbf
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF147
	.byte	0xc
	.long	.LASF148
	.long	.LASF149
	.long	.Ldebug_ranges0+0x1b0
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x6d
	.uleb128 0x7
	.byte	0x8
	.long	0x9e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.long	0x9e
	.uleb128 0x9
	.long	.LASF61
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x231
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
	.long	0x98
	.byte	0x8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x98
	.byte	0x10
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x98
	.byte	0x18
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x98
	.byte	0x20
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x98
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x98
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x98
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x98
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x98
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x98
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x98
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x24a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x250
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
	.long	0x74
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
	.long	0x256
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x266
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x80
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x271
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x27c
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x250
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
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xaa
	.uleb128 0xb
	.long	.LASF150
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x7
	.byte	0x8
	.long	0x245
	.uleb128 0x7
	.byte	0x8
	.long	0xaa
	.uleb128 0xd
	.long	0x9e
	.long	0x266
	.uleb128 0xe
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x23d
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x26c
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x277
	.uleb128 0xd
	.long	0x9e
	.long	0x292
	.uleb128 0xe
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa5
	.uleb128 0x8
	.long	0x292
	.uleb128 0xf
	.long	0x292
	.uleb128 0x10
	.long	.LASF45
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x2ae
	.uleb128 0x7
	.byte	0x8
	.long	0x231
	.uleb128 0xf
	.long	0x2ae
	.uleb128 0x10
	.long	.LASF46
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x2ae
	.uleb128 0x10
	.long	.LASF47
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x2ae
	.uleb128 0x10
	.long	.LASF48
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x298
	.long	0x2e8
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x2dd
	.uleb128 0x10
	.long	.LASF49
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x2e8
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
	.long	0x2e8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF52
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF53
	.uleb128 0x2
	.long	.LASF54
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0x8c
	.uleb128 0x12
	.long	.LASF55
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF56
	.uleb128 0x10
	.long	.LASF57
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF58
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF59
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF60
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF62
	.byte	0x20
	.byte	0xd
	.byte	0x32
	.byte	0x8
	.long	0x3b1
	.uleb128 0xa
	.long	.LASF63
	.byte	0xd
	.byte	0x34
	.byte	0xf
	.long	0x292
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0xd
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF65
	.byte	0xd
	.byte	0x38
	.byte	0x8
	.long	0x3b6
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0xd
	.byte	0x39
	.byte	0x7
	.long	0x61
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x36f
	.uleb128 0x7
	.byte	0x8
	.long	0x61
	.uleb128 0xd
	.long	0x98
	.long	0x3cc
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF66
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x3bc
	.uleb128 0x10
	.long	.LASF67
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF68
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0x10
	.long	.LASF69
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x3bc
	.uleb128 0x10
	.long	.LASF70
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF71
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x12
	.long	.LASF72
	.byte	0xe
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x8
	.long	0x421
	.uleb128 0xd
	.long	0x298
	.long	0x438
	.uleb128 0xe
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x428
	.uleb128 0x12
	.long	.LASF73
	.byte	0xf
	.value	0x11e
	.byte	0x1a
	.long	0x438
	.uleb128 0x12
	.long	.LASF74
	.byte	0xf
	.value	0x11f
	.byte	0x1a
	.long	0x438
	.uleb128 0x12
	.long	.LASF75
	.byte	0x10
	.value	0x21f
	.byte	0xf
	.long	0x464
	.uleb128 0x7
	.byte	0x8
	.long	0x98
	.uleb128 0x12
	.long	.LASF76
	.byte	0x10
	.value	0x221
	.byte	0xf
	.long	0x464
	.uleb128 0x10
	.long	.LASF77
	.byte	0x11
	.byte	0x2d
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF78
	.byte	0x11
	.byte	0x2e
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF79
	.byte	0x12
	.byte	0x1
	.byte	0x14
	.long	0x292
	.uleb128 0x10
	.long	.LASF80
	.byte	0x13
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x14
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
	.long	0x3c
	.byte	0x14
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
	.long	0x61
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
	.uleb128 0xd
	.long	0xa5
	.long	0x4fd
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x4f2
	.uleb128 0x10
	.long	.LASF85
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x4fd
	.uleb128 0x10
	.long	.LASF86
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x292
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x17
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
	.uleb128 0x8
	.long	0x51a
	.uleb128 0x12
	.long	.LASF98
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2e8
	.uleb128 0xd
	.long	0x56f
	.long	0x58c
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x581
	.uleb128 0x12
	.long	.LASF99
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x58c
	.uleb128 0x10
	.long	.LASF100
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x422
	.uleb128 0x10
	.long	.LASF101
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF102
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0xc
	.long	.LASF103
	.uleb128 0x10
	.long	.LASF104
	.byte	0x19
	.byte	0x19
	.byte	0x1f
	.long	0x5c2
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1
	.byte	0x23
	.byte	0x3
	.long	0x5f4
	.uleb128 0x17
	.long	.LASF105
	.byte	0x1
	.uleb128 0x17
	.long	.LASF106
	.byte	0x2
	.uleb128 0x17
	.long	.LASF107
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.long	.LASF109
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.long	0x60a
	.uleb128 0x9
	.byte	0x3
	.quad	silent
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF108
	.uleb128 0xd
	.long	0x3b1
	.long	0x621
	.uleb128 0xe
	.long	0x35
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x611
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x1
	.byte	0x31
	.byte	0x1c
	.long	0x621
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	0x61
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e2
	.uleb128 0x1d
	.long	.LASF111
	.byte	0x1
	.byte	0x4f
	.byte	0xb
	.long	0x61
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1d
	.long	.LASF112
	.byte	0x1
	.byte	0x4f
	.byte	0x18
	.long	0x464
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1e
	.long	.LASF113
	.byte	0x1
	.byte	0x51
	.byte	0x7
	.long	0x61
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1e
	.long	.LASF114
	.byte	0x1
	.byte	0x7a
	.byte	0x7
	.long	0x61
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1f
	.string	"tty"
	.byte	0x1
	.byte	0x7b
	.byte	0xf
	.long	0x292
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x20
	.long	0xe74
	.quad	.LBI68
	.byte	.LVU133
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0x59
	.byte	0x3
	.long	0x6e9
	.uleb128 0x21
	.long	0xe81
	.long	.LLST15
	.long	.LVUS15
	.byte	0
	.uleb128 0x22
	.quad	.LVL55
	.long	0xed8
	.uleb128 0x23
	.quad	.LVL56
	.long	0xee4
	.long	0x71a
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
	.quad	.LVL57
	.long	0xef0
	.long	0x746
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.uleb128 0x23
	.quad	.LVL58
	.long	0xefc
	.long	0x765
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.uleb128 0x22
	.quad	.LVL60
	.long	0xf08
	.uleb128 0x23
	.quad	.LVL61
	.long	0xf15
	.long	0x7a8
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
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
	.quad	.LC26
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL63
	.long	0x8e2
	.long	0x7bf
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.quad	.LVL65
	.long	0xf21
	.long	0x7fd
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
	.quad	.LC19
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL66
	.long	0xf2d
	.long	0x814
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL68
	.long	0xf3a
	.uleb128 0x23
	.quad	.LVL70
	.long	0xf46
	.long	0x838
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL74
	.long	0xf53
	.uleb128 0x22
	.quad	.LVL77
	.long	0xf60
	.uleb128 0x23
	.quad	.LVL80
	.long	0xf6d
	.long	0x876
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL83
	.long	0x8e2
	.long	0x88d
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL84
	.long	0xf79
	.uleb128 0x23
	.quad	.LVL86
	.long	0xf6d
	.long	0x8c3
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
	.quad	.LC27
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL87
	.long	0xf85
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF116
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd9
	.uleb128 0x1d
	.long	.LASF114
	.byte	0x1
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x20
	.long	0xead
	.quad	.LBI32
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.long	0x961
	.uleb128 0x21
	.long	0xeca
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x21
	.long	0xebe
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x25
	.quad	.LVL5
	.long	0xf91
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
	.uleb128 0x20
	.long	0xdd9
	.quad	.LBI36
	.byte	.LVU33
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x49
	.byte	0x7
	.long	0xc74
	.uleb128 0x27
	.long	0xde7
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.long	0xe24
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	0xe31
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2a
	.long	0xe3e
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2a
	.long	0xe4b
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2b
	.long	0xe8e
	.quad	.LBI38
	.byte	.LVU57
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0xa45
	.uleb128 0x21
	.long	0xe9f
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x23
	.quad	.LVL25
	.long	0xf9d
	.long	0xa17
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
	.quad	.LC19
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.uleb128 0x25
	.quad	.LVL42
	.long	0xf9d
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
	.quad	.LC19
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xe8e
	.quad	.LBI44
	.byte	.LVU72
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0xabd
	.uleb128 0x21
	.long	0xe9f
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x23
	.quad	.LVL33
	.long	0xf9d
	.long	0xa96
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
	.quad	.LC18
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL49
	.long	0xf9d
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
	.quad	.LC18
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xe8e
	.quad	.LBI53
	.byte	.LVU83
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xb04
	.uleb128 0x21
	.long	0xe9f
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x25
	.quad	.LVL37
	.long	0xf9d
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
	.quad	.LVL22
	.long	0xf6d
	.long	0xb2d
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
	.quad	.LC17
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL26
	.long	0xee4
	.long	0xb49
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
	.quad	.LVL28
	.long	0xfa9
	.long	0xb6d
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
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.quad	.LVL30
	.long	0xf6d
	.long	0xb96
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
	.quad	.LC22
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL34
	.long	0xf6d
	.long	0xbbf
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
	.quad	.LC23
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL39
	.long	0xf6d
	.uleb128 0x23
	.quad	.LVL43
	.long	0xee4
	.long	0xbe8
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
	.quad	.LVL45
	.long	0xfa9
	.long	0xc0c
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
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.quad	.LVL46
	.long	0xf6d
	.long	0xc35
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
	.quad	.LC22
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL51
	.long	0xf6d
	.long	0xc5e
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
	.quad	.LC21
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL52
	.long	0xfb5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xe8e
	.quad	.LBI63
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x41
	.byte	0x7
	.long	0xcb4
	.uleb128 0x21
	.long	0xe9f
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x25
	.quad	.LVL11
	.long	0xf9d
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
	.quad	.LVL2
	.long	0xf6d
	.long	0xcdd
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
	.long	0xf2d
	.long	0xcf5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL8
	.long	0xf6d
	.long	0xd19
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
	.long	0xf6d
	.long	0xd42
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
	.long	0xfb5
	.long	0xd5a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL14
	.long	0xf6d
	.long	0xd83
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
	.uleb128 0x23
	.quad	.LVL15
	.long	0xfb5
	.long	0xd9b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL16
	.long	0xf6d
	.long	0xdc4
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
	.long	0xfb5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF122
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0xe59
	.uleb128 0x2d
	.long	.LASF118
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x292
	.uleb128 0x2e
	.long	.LASF117
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0xe1f
	.uleb128 0x2f
	.long	.LASF118
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x292
	.byte	0
	.uleb128 0x2f
	.long	.LASF119
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x292
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xdf4
	.uleb128 0x30
	.long	.LASF117
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0xe69
	.uleb128 0x30
	.long	.LASF119
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x292
	.uleb128 0x30
	.long	.LASF120
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0xe6e
	.uleb128 0x30
	.long	.LASF121
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x292
	.byte	0
	.uleb128 0xd
	.long	0xe1f
	.long	0xe69
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xe59
	.uleb128 0x7
	.byte	0x8
	.long	0xe1f
	.uleb128 0x31
	.long	.LASF123
	.byte	0x3
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0xe8e
	.uleb128 0x32
	.long	.LASF114
	.byte	0x3
	.byte	0x63
	.byte	0x1e
	.long	0x61
	.byte	0
	.uleb128 0x33
	.long	.LASF125
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0xead
	.uleb128 0x32
	.long	.LASF124
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x29d
	.uleb128 0x34
	.byte	0
	.uleb128 0x33
	.long	.LASF126
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0xed8
	.uleb128 0x32
	.long	.LASF127
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2b4
	.uleb128 0x32
	.long	.LASF124
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x29d
	.uleb128 0x34
	.byte	0
	.uleb128 0x35
	.long	.LASF128
	.long	.LASF128
	.byte	0x16
	.byte	0x25
	.byte	0xd
	.uleb128 0x35
	.long	.LASF129
	.long	.LASF129
	.byte	0x1a
	.byte	0x7a
	.byte	0xe
	.uleb128 0x35
	.long	.LASF130
	.long	.LASF130
	.byte	0x1b
	.byte	0x56
	.byte	0xe
	.uleb128 0x35
	.long	.LASF131
	.long	.LASF131
	.byte	0x1b
	.byte	0x52
	.byte	0xe
	.uleb128 0x36
	.long	.LASF132
	.long	.LASF132
	.byte	0x1c
	.value	0x253
	.byte	0xc
	.uleb128 0x35
	.long	.LASF133
	.long	.LASF133
	.byte	0xd
	.byte	0x42
	.byte	0xc
	.uleb128 0x35
	.long	.LASF134
	.long	.LASF134
	.byte	0x15
	.byte	0x3c
	.byte	0xd
	.uleb128 0x36
	.long	.LASF135
	.long	.LASF135
	.byte	0x1c
	.value	0x269
	.byte	0xd
	.uleb128 0x35
	.long	.LASF136
	.long	.LASF136
	.byte	0x11
	.byte	0x25
	.byte	0xd
	.uleb128 0x36
	.long	.LASF137
	.long	.LASF137
	.byte	0x10
	.value	0x302
	.byte	0xe
	.uleb128 0x36
	.long	.LASF138
	.long	.LASF138
	.byte	0x8
	.value	0x278
	.byte	0xc
	.uleb128 0x36
	.long	.LASF139
	.long	.LASF139
	.byte	0x10
	.value	0x30b
	.byte	0xc
	.uleb128 0x35
	.long	.LASF140
	.long	.LASF140
	.byte	0x1b
	.byte	0x33
	.byte	0xe
	.uleb128 0x35
	.long	.LASF141
	.long	.LASF141
	.byte	0x19
	.byte	0x2c
	.byte	0xd
	.uleb128 0x35
	.long	.LASF142
	.long	.LASF142
	.byte	0x18
	.byte	0x28
	.byte	0xd
	.uleb128 0x35
	.long	.LASF143
	.long	.LASF143
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x35
	.long	.LASF144
	.long	.LASF144
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x35
	.long	.LASF145
	.long	.LASF145
	.byte	0x1d
	.byte	0x8c
	.byte	0xc
	.uleb128 0x36
	.long	.LASF146
	.long	.LASF146
	.byte	0x8
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x36
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
.LVUS10:
	.uleb128 0
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 0
.LLST10:
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x55
	.quad	.LVL54
	.quad	.LVL62
	.value	0x1
	.byte	0x5c
	.quad	.LVL62
	.quad	.LVL63
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL63
	.quad	.LVL71
	.value	0x1
	.byte	0x5c
	.quad	.LVL71
	.quad	.LVL76
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL76
	.quad	.LVL78
	.value	0x1
	.byte	0x5c
	.quad	.LVL78
	.quad	.LVL82
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL82
	.quad	.LVL85
	.value	0x1
	.byte	0x5c
	.quad	.LVL85
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
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 0
.LLST11:
	.quad	.LVL53
	.quad	.LVL55-1
	.value	0x1
	.byte	0x54
	.quad	.LVL55-1
	.quad	.LVL75
	.value	0x1
	.byte	0x53
	.quad	.LVL75
	.quad	.LVL76
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL76
	.quad	.LFE136
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU145
	.uleb128 .LVU151
	.uleb128 .LVU152
	.uleb128 .LVU155
	.uleb128 .LVU157
	.uleb128 .LVU159
	.uleb128 .LVU188
	.uleb128 .LVU189
.LLST12:
	.quad	.LVL61
	.quad	.LVL62
	.value	0x1
	.byte	0x50
	.quad	.LVL63
	.quad	.LVL64
	.value	0x1
	.byte	0x50
	.quad	.LVL66
	.quad	.LVL67
	.value	0x1
	.byte	0x50
	.quad	.LVL82
	.quad	.LVL83-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU167
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU175
	.uleb128 .LVU181
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU188
.LLST13:
	.quad	.LVL69
	.quad	.LVL73
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL73
	.quad	.LVL74
	.value	0x1
	.byte	0x5c
	.quad	.LVL79
	.quad	.LVL81
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL81
	.quad	.LVL82
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU171
	.uleb128 .LVU174
	.uleb128 .LVU181
	.uleb128 .LVU185
	.uleb128 .LVU186
	.uleb128 .LVU188
.LLST14:
	.quad	.LVL72
	.quad	.LVL74-1
	.value	0x1
	.byte	0x50
	.quad	.LVL79
	.quad	.LVL80-1
	.value	0x1
	.byte	0x50
	.quad	.LVL81
	.quad	.LVL82
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU133
	.uleb128 .LVU138
.LLST15:
	.quad	.LVL58
	.quad	.LVL59
	.value	0x2
	.byte	0x33
	.byte	0x9f
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
	.quad	.LBB32
	.quad	.LBE32
	.quad	.LBB35
	.quad	.LBE35
	.quad	0
	.quad	0
	.quad	.LBB36
	.quad	.LBE36
	.quad	.LBB67
	.quad	.LBE67
	.quad	0
	.quad	0
	.quad	.LBB38
	.quad	.LBE38
	.quad	.LBB43
	.quad	.LBE43
	.quad	.LBB57
	.quad	.LBE57
	.quad	.LBB58
	.quad	.LBE58
	.quad	0
	.quad	0
	.quad	.LBB44
	.quad	.LBE44
	.quad	.LBB51
	.quad	.LBE51
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB59
	.quad	.LBE59
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB61
	.quad	.LBE61
	.quad	0
	.quad	0
	.quad	.LBB53
	.quad	.LBE53
	.quad	.LBB56
	.quad	.LBE56
	.quad	0
	.quad	0
	.quad	.LBB63
	.quad	.LBE63
	.quad	.LBB66
	.quad	.LBE66
	.quad	0
	.quad	0
	.quad	.LBB68
	.quad	.LBE68
	.quad	.LBB71
	.quad	.LBE71
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
.LASF125:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF139:
	.string	"isatty"
.LASF13:
	.string	"_IO_read_ptr"
.LASF95:
	.string	"locale_quoting_style"
.LASF25:
	.string	"_chain"
.LASF84:
	.string	"GETOPT_VERSION_CHAR"
.LASF110:
	.string	"longopts"
.LASF151:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF128:
	.string	"set_program_name"
.LASF31:
	.string	"_shortbuf"
.LASF88:
	.string	"shell_quoting_style"
.LASF83:
	.string	"GETOPT_HELP_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF34:
	.string	"_codecvt"
.LASF132:
	.string	"atexit"
.LASF68:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF99:
	.string	"quoting_style_vals"
.LASF118:
	.string	"program"
.LASF94:
	.string	"escape_quoting_style"
.LASF87:
	.string	"literal_quoting_style"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF74:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"_gl_cxxalias_dummy"
.LASF12:
	.string	"_flags"
.LASF35:
	.string	"_wide_data"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF78:
	.string	"program_invocation_short_name"
.LASF92:
	.string	"c_quoting_style"
.LASF131:
	.string	"textdomain"
.LASF43:
	.string	"_IO_codecvt"
.LASF51:
	.string	"_sys_errlist"
.LASF144:
	.string	"__printf_chk"
.LASF77:
	.string	"program_invocation_name"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF81:
	.string	"TIMESPEC_HZ"
.LASF91:
	.string	"shell_escape_always_quoting_style"
.LASF71:
	.string	"timezone"
.LASF141:
	.string	"quote"
.LASF86:
	.string	"program_name"
.LASF134:
	.string	"version_etc"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF147:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF126:
	.string	"fprintf"
.LASF127:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF148:
	.string	"src/tty.c"
.LASF130:
	.string	"bindtextdomain"
.LASF17:
	.string	"_IO_write_ptr"
.LASF63:
	.string	"name"
.LASF48:
	.string	"sys_nerr"
.LASF97:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF102:
	.string	"error_one_per_line"
.LASF79:
	.string	"Version"
.LASF21:
	.string	"_IO_save_base"
.LASF76:
	.string	"environ"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF129:
	.string	"setlocale"
.LASF46:
	.string	"stdout"
.LASF113:
	.string	"optc"
.LASF85:
	.string	"version_etc_copyright"
.LASF138:
	.string	"puts"
.LASF57:
	.string	"optarg"
.LASF72:
	.string	"getdate_err"
.LASF58:
	.string	"optind"
.LASF18:
	.string	"_IO_write_end"
.LASF109:
	.string	"silent"
.LASF150:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF100:
	.string	"error_print_progname"
.LASF120:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF54:
	.string	"time_t"
.LASF142:
	.string	"error"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF93:
	.string	"c_maybe_quoting_style"
.LASF108:
	.string	"_Bool"
.LASF106:
	.string	"TTY_FAILURE"
.LASF2:
	.string	"unsigned char"
.LASF123:
	.string	"initialize_exit_failure"
.LASF119:
	.string	"node"
.LASF145:
	.string	"strncmp"
.LASF5:
	.string	"short int"
.LASF62:
	.string	"option"
.LASF104:
	.string	"quote_quoting_options"
.LASF65:
	.string	"flag"
.LASF50:
	.string	"_sys_nerr"
.LASF30:
	.string	"_vtable_offset"
.LASF69:
	.string	"tzname"
.LASF41:
	.string	"FILE"
.LASF80:
	.string	"exit_failure"
.LASF135:
	.string	"exit"
.LASF143:
	.string	"__fprintf_chk"
.LASF90:
	.string	"shell_escape_quoting_style"
.LASF140:
	.string	"dcgettext"
.LASF98:
	.string	"quoting_style_args"
.LASF60:
	.string	"optopt"
.LASF70:
	.string	"daylight"
.LASF107:
	.string	"TTY_WRITE_ERROR"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF89:
	.string	"shell_always_quoting_style"
.LASF96:
	.string	"clocale_quoting_style"
.LASF136:
	.string	"__errno_location"
.LASF59:
	.string	"opterr"
.LASF9:
	.string	"__off64_t"
.LASF103:
	.string	"quoting_options"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF124:
	.string	"__fmt"
.LASF117:
	.string	"infomap"
.LASF64:
	.string	"has_arg"
.LASF116:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF10:
	.string	"__time_t"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF112:
	.string	"argv"
.LASF105:
	.string	"TTY_STDIN_NOTTY"
.LASF67:
	.string	"__daylight"
.LASF114:
	.string	"status"
.LASF149:
	.string	"/root/coreutils"
.LASF37:
	.string	"_freeres_buf"
.LASF22:
	.string	"_IO_backup_base"
.LASF137:
	.string	"ttyname"
.LASF101:
	.string	"error_message_count"
.LASF121:
	.string	"lc_messages"
.LASF111:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF133:
	.string	"getopt_long"
.LASF146:
	.string	"fputs_unlocked"
.LASF66:
	.string	"__tzname"
.LASF115:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF122:
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
