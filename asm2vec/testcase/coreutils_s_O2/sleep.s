	.file	"sleep.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"sleep"
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
	.ascii	"Usage: %s NUMBER[SUFFIX]...\n  or:  %s O"
	.string	"PTION\nPause for NUMBER seconds.  SUFFIX may be 's' for seconds (the default),\n'm' for minutes, 'h' for hours or 'd' for days.  NUMBER need not be an\ninteger.  Given two or more arguments, pause for the amount of time\nspecified by the sum of their values.\n\n"
	.align 8
.LC5:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC6:
	.string	"      --version  output version information and exit\n"
	.section	.rodata.str1.1
.LC7:
	.string	"["
.LC8:
	.string	"test invocation"
.LC9:
	.string	"coreutils"
.LC10:
	.string	"Multi-call invocation"
.LC11:
	.string	"sha224sum"
.LC12:
	.string	"sha2 utilities"
.LC13:
	.string	"sha256sum"
.LC14:
	.string	"sha384sum"
.LC15:
	.string	"sha512sum"
.LC16:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC18:
	.string	"GNU coreutils"
.LC19:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC21:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL0:
.LFB135:
	.file 1 "src/sleep.c"
	.loc 1 39 1 view -0
	.cfi_startproc
	.loc 1 39 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 41 5 view .LVU2
	movl	$5, %edx
	.loc 1 39 1 view .LVU3
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
	.loc 1 39 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 40 3 is_stmt 1 view .LVU5
	.loc 1 40 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 41 5 is_stmt 1 view .LVU7
	.loc 1 41 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 41 5 is_stmt 0 view .LVU9
	call	dcgettext@PLT
.LVL2:
.LBB35:
.LBB36:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE36:
.LBE35:
	.loc 1 41 5 view .LVU11
	movq	%rax, %rdx
.LVL3:
.LBB38:
.LBI35:
	.loc 2 98 1 is_stmt 1 view .LVU12
.LBB37:
	.loc 2 100 3 view .LVU13
	.loc 2 100 10 is_stmt 0 view .LVU14
	xorl	%eax, %eax
.LVL4:
	.loc 2 100 10 view .LVU15
	call	__fprintf_chk@PLT
.LVL5:
.L3:
	.loc 2 100 10 view .LVU16
.LBE37:
.LBE38:
	.loc 1 58 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 44 7 view .LVU18
	.loc 1 44 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB39:
.LBB40:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC13(%rip), %rbx
.LBE40:
.LBE39:
	.loc 1 44 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB66:
.LBB67:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE67:
.LBE66:
	.loc 1 44 15 view .LVU23
	movq	%rax, %rsi
.LVL9:
.LBB69:
.LBI66:
	.loc 2 105 1 is_stmt 1 view .LVU24
.LBB68:
	.loc 2 107 3 view .LVU25
	.loc 2 107 10 is_stmt 0 view .LVU26
	xorl	%eax, %eax
.LVL10:
	.loc 2 107 10 view .LVU27
	call	__printf_chk@PLT
.LVL11:
	.loc 2 107 10 view .LVU28
.LBE68:
.LBE69:
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
	.loc 1 55 7 view .LVU30
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
	.loc 1 56 7 view .LVU31
.LBB70:
.LBI39:
	.loc 3 634 1 view .LVU32
.LBB65:
	.loc 3 636 3 view .LVU33
	.loc 3 636 67 is_stmt 0 view .LVU34
	leaq	.LC7(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC14(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC8(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC9(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC10(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC11(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 3 646 3 is_stmt 1 view .LVU35
.LVL16:
	.loc 3 647 3 view .LVU36
	.loc 3 649 3 view .LVU37
	.loc 3 649 9 view .LVU38
	.loc 3 636 67 is_stmt 0 view .LVU39
	movq	%rax, 32(%rsp)
	leaq	.LC12(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC15(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC0(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 3 647 25 view .LVU40
	movq	%rsp, %rax
.LVL17:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 3 650 5 is_stmt 1 view .LVU41
	.loc 3 649 18 is_stmt 0 view .LVU42
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU43
	addq	$16, %rax
.LVL18:
	.loc 3 649 9 is_stmt 1 view .LVU44
	testq	%rdi, %rdi
	je	.L4
	.loc 3 649 33 is_stmt 0 view .LVU45
	movl	$6, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU46
	testb	%dl, %dl
	jne	.L5
.L4:
	.loc 3 652 3 is_stmt 1 view .LVU47
	.loc 3 652 15 is_stmt 0 view .LVU48
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU49
	movl	$5, %edx
	leaq	.LC16(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU50
	testq	%r12, %r12
	je	.L6
	.loc 3 653 5 is_stmt 1 view .LVU51
.LVL19:
	.loc 3 655 3 view .LVU52
	.loc 3 655 11 is_stmt 0 view .LVU53
	call	dcgettext@PLT
.LVL20:
.LBB41:
.LBB42:
	.loc 2 107 10 view .LVU54
	leaq	.LC17(%rip), %rcx
	movl	$1, %edi
	leaq	.LC18(%rip), %rdx
.LBE42:
.LBE41:
	.loc 3 655 11 view .LVU55
	movq	%rax, %rsi
.LVL21:
.LBB46:
.LBI41:
	.loc 2 105 1 is_stmt 1 view .LVU56
.LBB43:
	.loc 2 107 3 view .LVU57
	.loc 2 107 10 is_stmt 0 view .LVU58
	xorl	%eax, %eax
.LVL22:
	.loc 2 107 10 view .LVU59
	call	__printf_chk@PLT
.LVL23:
	.loc 2 107 10 view .LVU60
.LBE43:
.LBE46:
	.loc 3 659 3 is_stmt 1 view .LVU61
	.loc 3 659 29 is_stmt 0 view .LVU62
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL24:
	movq	%rax, %rdi
.LVL25:
	.loc 3 660 3 is_stmt 1 view .LVU63
	.loc 3 660 6 is_stmt 0 view .LVU64
	testq	%rax, %rax
	je	.L7
	.loc 3 660 22 view .LVU65
	movl	$3, %edx
	leaq	.LC19(%rip), %rsi
	call	strncmp@PLT
.LVL26:
	.loc 3 660 19 view .LVU66
	testl	%eax, %eax
	jne	.L10
.LVL27:
.L7:
	.loc 3 669 3 is_stmt 1 view .LVU67
	.loc 3 669 11 is_stmt 0 view .LVU68
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC21(%rip), %rsi
	call	dcgettext@PLT
.LVL28:
.LBB47:
.LBB48:
	.loc 2 107 10 view .LVU69
	leaq	.LC0(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	movl	$1, %edi
.LBE48:
.LBE47:
	.loc 3 669 11 view .LVU70
	movq	%rax, %rsi
.LVL29:
.LBB54:
.LBI47:
	.loc 2 105 1 is_stmt 1 view .LVU71
.LBB49:
	.loc 2 107 3 view .LVU72
	.loc 2 107 10 is_stmt 0 view .LVU73
	xorl	%eax, %eax
.LVL30:
	.loc 2 107 10 view .LVU74
.LBE49:
.LBE54:
	.loc 3 671 3 view .LVU75
	leaq	.LC1(%rip), %r13
.LBB55:
.LBB50:
	.loc 2 107 10 view .LVU76
	call	__printf_chk@PLT
.LVL31:
	.loc 2 107 10 view .LVU77
.LBE50:
.LBE55:
	.loc 3 671 3 is_stmt 1 view .LVU78
	cmpq	%rbx, %r12
	leaq	.LC2(%rip), %rcx
	cmovne	%rcx, %r13
.L8:
	.loc 3 671 11 is_stmt 0 view .LVU79
	xorl	%edi, %edi
	leaq	.LC22(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL32:
.LBB56:
.LBB57:
	.loc 2 107 10 view .LVU80
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE57:
.LBE56:
	.loc 3 671 11 view .LVU81
	movq	%rax, %rsi
.LVL33:
.LBB59:
.LBI56:
	.loc 2 105 1 is_stmt 1 view .LVU82
.LBB58:
	.loc 2 107 3 view .LVU83
	.loc 2 107 10 is_stmt 0 view .LVU84
	xorl	%eax, %eax
.LVL34:
	.loc 2 107 10 view .LVU85
	call	__printf_chk@PLT
.LVL35:
	.loc 2 107 10 view .LVU86
.LBE58:
.LBE59:
	.loc 3 673 1 view .LVU87
	jmp	.L3
.LVL36:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU88
	.loc 3 655 11 is_stmt 0 view .LVU89
	call	dcgettext@PLT
.LVL37:
.LBB60:
.LBB44:
	.loc 2 107 10 view .LVU90
	leaq	.LC17(%rip), %rcx
	movl	$1, %edi
	leaq	.LC18(%rip), %rdx
.LBE44:
.LBE60:
	.loc 3 655 11 view .LVU91
	movq	%rax, %rsi
.LVL38:
.LBB61:
	.loc 2 105 1 is_stmt 1 view .LVU92
.LBB45:
	.loc 2 107 3 view .LVU93
	.loc 2 107 10 is_stmt 0 view .LVU94
	xorl	%eax, %eax
.LVL39:
	.loc 2 107 10 view .LVU95
	call	__printf_chk@PLT
.LVL40:
	.loc 2 107 10 view .LVU96
.LBE45:
.LBE61:
	.loc 3 659 3 is_stmt 1 view .LVU97
	.loc 3 659 29 is_stmt 0 view .LVU98
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL41:
	movq	%rax, %rdi
.LVL42:
	.loc 3 660 3 is_stmt 1 view .LVU99
	.loc 3 660 6 is_stmt 0 view .LVU100
	testq	%rax, %rax
	je	.L9
	.loc 3 660 22 view .LVU101
	movl	$3, %edx
	leaq	.LC19(%rip), %rsi
	call	strncmp@PLT
.LVL43:
	.loc 3 660 19 view .LVU102
	testl	%eax, %eax
	jne	.L29
.L9:
	.loc 3 669 3 is_stmt 1 view .LVU103
	.loc 3 669 11 is_stmt 0 view .LVU104
	movl	$5, %edx
	leaq	.LC21(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL44:
.LBB62:
.LBB51:
	.loc 2 107 10 view .LVU105
	leaq	.LC0(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	movl	$1, %edi
.LBE51:
.LBE62:
	.loc 3 669 11 view .LVU106
	movq	%rax, %rsi
.LVL45:
.LBB63:
	.loc 2 105 1 is_stmt 1 view .LVU107
.LBB52:
	.loc 2 107 3 view .LVU108
	.loc 2 107 10 is_stmt 0 view .LVU109
	xorl	%eax, %eax
.LVL46:
	.loc 2 107 10 view .LVU110
.LBE52:
.LBE63:
	.loc 3 646 15 view .LVU111
	leaq	.LC0(%rip), %r12
.LBB64:
.LBB53:
	.loc 2 107 10 view .LVU112
	call	__printf_chk@PLT
.LVL47:
	.loc 2 107 10 view .LVU113
.LBE53:
.LBE64:
	.loc 3 671 3 is_stmt 1 view .LVU114
	leaq	.LC1(%rip), %r13
	jmp	.L8
.L29:
	.loc 3 646 15 is_stmt 0 view .LVU115
	leaq	.LC0(%rip), %r12
.LVL48:
.L10:
	.loc 3 666 7 is_stmt 1 view .LVU116
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC20(%rip), %rsi
	call	dcgettext@PLT
.LVL49:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL50:
	jmp	.L7
.LBE65:
.LBE70:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC24:
	.string	"/usr/local/share/locale"
.LC25:
	.string	"Paul Eggert"
.LC26:
	.string	"Jim Meyering"
.LC27:
	.string	"missing operand"
.LC31:
	.string	"invalid time interval %s"
.LC32:
	.string	"cannot read realtime clock"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL51:
.LFB137:
	.loc 1 98 1 view -0
	.cfi_startproc
	.loc 1 98 1 is_stmt 0 view .LVU118
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
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.loc 1 103 3 view .LVU119
	movq	(%rsi), %rdi
.LVL52:
	.loc 1 98 1 view .LVU120
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	.loc 1 99 3 is_stmt 1 view .LVU121
.LVL53:
	.loc 1 100 3 view .LVU122
	.loc 1 102 33 view .LVU123
	.loc 1 103 3 view .LVU124
	call	set_program_name@PLT
.LVL54:
	.loc 1 104 3 view .LVU125
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL55:
	.loc 1 105 3 view .LVU126
	leaq	.LC24(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	call	bindtextdomain@PLT
.LVL56:
	.loc 1 106 3 view .LVU127
	leaq	.LC9(%rip), %rdi
	call	textdomain@PLT
.LVL57:
	.loc 1 108 3 view .LVU128
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL58:
	.loc 1 110 3 view .LVU129
	leaq	.LC25(%rip), %rax
	pushq	$0
	.cfi_def_cfa_offset 120
	movl	%ebp, %edi
	pushq	%rax
	.cfi_def_cfa_offset 128
	movl	$1, %r9d
	leaq	.LC26(%rip), %rax
	movq	Version(%rip), %r8
	pushq	%rax
	.cfi_def_cfa_offset 136
	leaq	usage(%rip), %rax
	leaq	.LC18(%rip), %rcx
	movq	%r12, %rsi
	pushq	%rax
	.cfi_def_cfa_offset 144
	leaq	.LC0(%rip), %rdx
	xorl	%eax, %eax
	call	parse_gnu_standard_options_only@PLT
.LVL59:
	.loc 1 114 3 view .LVU130
	.loc 1 114 6 is_stmt 0 view .LVU131
	addq	$32, %rsp
	.cfi_def_cfa_offset 112
	cmpl	$1, %ebp
	je	.L55
	.loc 1 120 3 is_stmt 1 view .LVU132
.LBB71:
	.loc 1 120 8 view .LVU133
	.loc 1 120 12 is_stmt 0 view .LVU134
	movl	optind(%rip), %eax
.LVL60:
	.loc 1 120 24 is_stmt 1 view .LVU135
	.loc 1 120 3 is_stmt 0 view .LVU136
	cmpl	%eax, %ebp
	jle	.L45
	movslq	%eax, %rdx
	notl	%eax
.LVL61:
	.loc 1 120 3 view .LVU137
.LBE71:
	.loc 1 100 8 view .LVU138
	movl	$1, %r15d
	.loc 1 99 10 view .LVU139
	movq	$0x000000000, 8(%rsp)
	addl	%ebp, %eax
	leaq	(%r12,%rdx,8), %rbx
	movq	cl_strtod@GOTPCREL(%rip), %rbp
.LVL62:
	.loc 1 99 10 view .LVU140
	leaq	24(%rsp), %r13
	addq	%rdx, %rax
	leaq	8(%r12,%rax,8), %r14
	leaq	32(%rsp), %r12
.LVL63:
	.loc 1 99 10 view .LVU141
	jmp	.L42
.LVL64:
	.p2align 4,,10
	.p2align 3
.L57:
.LBB79:
.LBB72:
	.loc 1 124 54 discriminator 1 view .LVU142
	call	__errno_location@PLT
.LVL65:
	.loc 1 124 11 discriminator 1 view .LVU143
	cmpl	$34, (%rax)
	je	.L33
.L34:
	.loc 1 132 11 is_stmt 1 view .LVU144
	movq	(%rbx), %rdi
	call	quote@PLT
.LVL66:
	.loc 1 132 24 is_stmt 0 view .LVU145
	movl	$5, %edx
	leaq	.LC31(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 132 11 view .LVU146
	movq	%rax, %r15
.LVL67:
	.loc 1 132 24 view .LVU147
	call	dcgettext@PLT
.LVL68:
	.loc 1 132 11 view .LVU148
	movq	%r15, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 132 24 view .LVU149
	movq	%rax, %rdx
	.loc 1 132 11 view .LVU150
	xorl	%eax, %eax
	.loc 1 133 14 view .LVU151
	xorl	%r15d, %r15d
	.loc 1 132 11 view .LVU152
	call	error@PLT
.LVL69:
	.loc 1 133 11 is_stmt 1 view .LVU153
	.loc 1 133 11 is_stmt 0 view .LVU154
	movsd	24(%rsp), %xmm0
.LVL70:
.L41:
	.loc 1 136 7 is_stmt 1 discriminator 2 view .LVU155
	.loc 1 136 15 is_stmt 0 discriminator 2 view .LVU156
	addsd	8(%rsp), %xmm0
	addq	$8, %rbx
	movsd	%xmm0, 8(%rsp)
.LVL71:
	.loc 1 136 15 discriminator 2 view .LVU157
.LBE72:
	.loc 1 120 34 is_stmt 1 discriminator 2 view .LVU158
	.loc 1 120 24 discriminator 2 view .LVU159
	.loc 1 120 3 is_stmt 0 discriminator 2 view .LVU160
	cmpq	%r14, %rbx
	je	.L56
.LVL72:
.L42:
.LBB77:
	.loc 1 122 7 is_stmt 1 view .LVU161
	.loc 1 123 7 view .LVU162
	.loc 1 124 7 view .LVU163
	.loc 1 124 14 is_stmt 0 view .LVU164
	movq	(%rbx), %rdi
	movq	%rbp, %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	call	xstrtod@PLT
.LVL73:
	.loc 1 124 10 view .LVU165
	testb	%al, %al
	je	.L57
.L33:
	.loc 1 126 19 view .LVU166
	movsd	24(%rsp), %xmm0
	.loc 1 126 11 view .LVU167
	pxor	%xmm2, %xmm2
	comisd	%xmm2, %xmm0
	jb	.L34
	.loc 1 128 15 view .LVU168
	movq	32(%rsp), %rdx
	movzbl	(%rdx), %eax
	.loc 1 128 11 view .LVU169
	testb	%al, %al
	je	.L41
	.loc 1 128 18 discriminator 1 view .LVU170
	cmpb	$0, 1(%rdx)
	jne	.L34
.LVL74:
.LBB73:
.LBI73:
	.loc 1 68 1 is_stmt 1 view .LVU171
.LBB74:
	.loc 1 70 3 view .LVU172
	.loc 1 72 3 view .LVU173
	cmpb	$104, %al
	je	.L37
	jg	.L38
	cmpb	$100, %al
	jne	.L34
	.loc 1 85 7 view .LVU174
.LVL75:
	.loc 1 86 7 view .LVU175
	mulsd	.LC30(%rip), %xmm0
.LVL76:
	.loc 1 91 3 view .LVU176
	.loc 1 93 3 view .LVU177
	.loc 1 86 7 is_stmt 0 view .LVU178
	jmp	.L41
.LVL77:
	.p2align 4,,10
	.p2align 3
.L38:
	.loc 1 72 3 view .LVU179
	cmpb	$109, %al
	jne	.L58
	.loc 1 79 7 is_stmt 1 view .LVU180
.LVL78:
	.loc 1 80 7 view .LVU181
	mulsd	.LC28(%rip), %xmm0
	jmp	.L41
.LVL79:
	.p2align 4,,10
	.p2align 3
.L58:
	.loc 1 72 3 is_stmt 0 view .LVU182
	cmpb	$115, %al
	jne	.L34
	jmp	.L41
.LVL80:
	.p2align 4,,10
	.p2align 3
.L56:
	.loc 1 72 3 view .LVU183
.LBE74:
.LBE73:
.LBE77:
.LBE79:
	.loc 1 139 3 is_stmt 1 view .LVU184
	.loc 1 139 6 is_stmt 0 view .LVU185
	testb	%r15b, %r15b
	je	.L59
.LVL81:
.L32:
	.loc 1 142 3 is_stmt 1 view .LVU186
	.loc 1 142 7 is_stmt 0 view .LVU187
	movsd	8(%rsp), %xmm0
	call	xnanosleep@PLT
.LVL82:
	.loc 1 142 6 view .LVU188
	testl	%eax, %eax
	jne	.L60
	.loc 1 145 3 is_stmt 1 view .LVU189
	.loc 1 146 1 is_stmt 0 view .LVU190
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L61
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
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
.LVL83:
.L37:
	.cfi_restore_state
.LBB80:
.LBB78:
.LBB76:
.LBB75:
	.loc 1 82 7 is_stmt 1 view .LVU191
	.loc 1 83 7 view .LVU192
	mulsd	.LC29(%rip), %xmm0
	jmp	.L41
.LVL84:
.L45:
	.loc 1 83 7 is_stmt 0 view .LVU193
.LBE75:
.LBE76:
.LBE78:
.LBE80:
	.loc 1 99 10 view .LVU194
	pxor	%xmm3, %xmm3
	movsd	%xmm3, 8(%rsp)
	jmp	.L32
.LVL85:
.L59:
	.loc 1 140 5 is_stmt 1 view .LVU195
	movl	$1, %edi
	call	usage
.LVL86:
.L55:
	.loc 1 116 7 view .LVU196
	.loc 1 116 20 is_stmt 0 view .LVU197
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL87:
	.loc 1 116 7 view .LVU198
	xorl	%edi, %edi
	xorl	%esi, %esi
	.loc 1 116 20 view .LVU199
	movq	%rax, %rdx
	.loc 1 116 7 view .LVU200
	xorl	%eax, %eax
	call	error@PLT
.LVL88:
	.loc 1 117 7 is_stmt 1 view .LVU201
	movl	$1, %edi
	call	usage
.LVL89:
.L61:
	.loc 1 146 1 is_stmt 0 view .LVU202
	call	__stack_chk_fail@PLT
.LVL90:
.L60:
.LBB81:
	.loc 1 143 5 is_stmt 1 view .LVU203
	movl	$5, %edx
	leaq	.LC32(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL91:
	movq	%rax, %r12
	call	__errno_location@PLT
.LVL92:
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL93:
.LBE81:
	.cfi_endproc
.LFE137:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC28:
	.long	0
	.long	1078853632
	.align 8
.LC29:
	.long	0
	.long	1085022208
	.align 8
.LC30:
	.long	0
	.long	1089804288
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/time.h"
	.file 12 "/usr/include/signal.h"
	.file 13 "/usr/include/unistd.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/include/errno.h"
	.file 16 "src/version.h"
	.file 17 "./lib/exitfail.h"
	.file 18 "./lib/version-etc.h"
	.file 19 "./lib/progname.h"
	.file 20 "./lib/quotearg.h"
	.file 21 "./lib/error.h"
	.file 22 "./lib/quote.h"
	.file 23 "/usr/include/libintl.h"
	.file 24 "./lib/xstrtod.h"
	.file 25 "/usr/include/locale.h"
	.file 26 "/usr/include/stdlib.h"
	.file 27 "./lib/long-options.h"
	.file 28 "./lib/xnanosleep.h"
	.file 29 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf20
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF131
	.byte	0xc
	.long	.LASF132
	.long	.LASF133
	.long	.Ldebug_ranges0+0x230
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.long	0x3c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF9
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x74
	.uleb128 0x3
	.long	.LASF10
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x74
	.uleb128 0x7
	.byte	0x8
	.long	0x99
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.long	0x99
	.uleb128 0x9
	.long	.LASF104
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x22c
	.uleb128 0xa
	.long	.LASF12
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x68
	.byte	0
	.uleb128 0xa
	.long	.LASF13
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x93
	.byte	0x8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x93
	.byte	0x10
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x93
	.byte	0x18
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x93
	.byte	0x20
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x93
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x93
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x93
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x93
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x93
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x93
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x93
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x245
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x24b
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x68
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x68
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x7b
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x53
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x5a
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x251
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x261
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x87
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x26c
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x277
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x24b
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x4a
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x30
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x68
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x27d
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF41
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xa5
	.uleb128 0xb
	.long	.LASF134
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x7
	.byte	0x8
	.long	0x240
	.uleb128 0x7
	.byte	0x8
	.long	0xa5
	.uleb128 0xd
	.long	0x99
	.long	0x261
	.uleb128 0xe
	.long	0x3c
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x238
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x267
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x272
	.uleb128 0xd
	.long	0x99
	.long	0x28d
	.uleb128 0xe
	.long	0x3c
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa0
	.uleb128 0x8
	.long	0x28d
	.uleb128 0xf
	.long	0x28d
	.uleb128 0x10
	.long	.LASF45
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x2a9
	.uleb128 0x7
	.byte	0x8
	.long	0x22c
	.uleb128 0xf
	.long	0x2a9
	.uleb128 0x10
	.long	.LASF46
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x2a9
	.uleb128 0x10
	.long	.LASF47
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x2a9
	.uleb128 0x10
	.long	.LASF48
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x68
	.uleb128 0xd
	.long	0x293
	.long	0x2e3
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x2d8
	.uleb128 0x10
	.long	.LASF49
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x2e3
	.uleb128 0x10
	.long	.LASF50
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x68
	.uleb128 0x10
	.long	.LASF51
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x2e3
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF52
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF53
	.uleb128 0x12
	.long	.LASF54
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0xd
	.long	0x93
	.long	0x33e
	.uleb128 0xe
	.long	0x3c
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF56
	.byte	0xb
	.byte	0x9f
	.byte	0xe
	.long	0x32e
	.uleb128 0x10
	.long	.LASF57
	.byte	0xb
	.byte	0xa0
	.byte	0xc
	.long	0x68
	.uleb128 0x10
	.long	.LASF58
	.byte	0xb
	.byte	0xa1
	.byte	0x11
	.long	0x74
	.uleb128 0x10
	.long	.LASF59
	.byte	0xb
	.byte	0xa6
	.byte	0xe
	.long	0x32e
	.uleb128 0x10
	.long	.LASF60
	.byte	0xb
	.byte	0xae
	.byte	0xc
	.long	0x68
	.uleb128 0x10
	.long	.LASF61
	.byte	0xb
	.byte	0xaf
	.byte	0x11
	.long	0x74
	.uleb128 0x12
	.long	.LASF62
	.byte	0xb
	.value	0x112
	.byte	0xc
	.long	0x68
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x393
	.uleb128 0xd
	.long	0x293
	.long	0x3aa
	.uleb128 0xe
	.long	0x3c
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x39a
	.uleb128 0x12
	.long	.LASF63
	.byte	0xc
	.value	0x11e
	.byte	0x1a
	.long	0x3aa
	.uleb128 0x12
	.long	.LASF64
	.byte	0xc
	.value	0x11f
	.byte	0x1a
	.long	0x3aa
	.uleb128 0x12
	.long	.LASF65
	.byte	0xd
	.value	0x21f
	.byte	0xf
	.long	0x3d6
	.uleb128 0x7
	.byte	0x8
	.long	0x93
	.uleb128 0x12
	.long	.LASF66
	.byte	0xd
	.value	0x221
	.byte	0xf
	.long	0x3d6
	.uleb128 0x10
	.long	.LASF67
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0x93
	.uleb128 0x10
	.long	.LASF68
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x68
	.uleb128 0x10
	.long	.LASF69
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x68
	.uleb128 0x10
	.long	.LASF70
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x68
	.uleb128 0x10
	.long	.LASF71
	.byte	0xf
	.byte	0x2d
	.byte	0xe
	.long	0x93
	.uleb128 0x10
	.long	.LASF72
	.byte	0xf
	.byte	0x2e
	.byte	0xe
	.long	0x93
	.uleb128 0x10
	.long	.LASF73
	.byte	0x10
	.byte	0x1
	.byte	0x14
	.long	0x28d
	.uleb128 0x10
	.long	.LASF74
	.byte	0x11
	.byte	0x12
	.byte	0x15
	.long	0x6f
	.uleb128 0xd
	.long	0xa0
	.long	0x454
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x449
	.uleb128 0x10
	.long	.LASF75
	.byte	0x12
	.byte	0x19
	.byte	0x13
	.long	0x454
	.uleb128 0x10
	.long	.LASF76
	.byte	0x13
	.byte	0x20
	.byte	0x14
	.long	0x28d
	.uleb128 0x14
	.long	.LASF135
	.byte	0x7
	.byte	0x4
	.long	0x43
	.byte	0x14
	.byte	0x20
	.byte	0x6
	.long	0x4c6
	.uleb128 0x15
	.long	.LASF77
	.byte	0
	.uleb128 0x15
	.long	.LASF78
	.byte	0x1
	.uleb128 0x15
	.long	.LASF79
	.byte	0x2
	.uleb128 0x15
	.long	.LASF80
	.byte	0x3
	.uleb128 0x15
	.long	.LASF81
	.byte	0x4
	.uleb128 0x15
	.long	.LASF82
	.byte	0x5
	.uleb128 0x15
	.long	.LASF83
	.byte	0x6
	.uleb128 0x15
	.long	.LASF84
	.byte	0x7
	.uleb128 0x15
	.long	.LASF85
	.byte	0x8
	.uleb128 0x15
	.long	.LASF86
	.byte	0x9
	.uleb128 0x15
	.long	.LASF87
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x471
	.uleb128 0x12
	.long	.LASF88
	.byte	0x14
	.value	0x10b
	.byte	0x1a
	.long	0x2e3
	.uleb128 0xd
	.long	0x4c6
	.long	0x4e3
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x4d8
	.uleb128 0x12
	.long	.LASF89
	.byte	0x14
	.value	0x10c
	.byte	0x21
	.long	0x4e3
	.uleb128 0x10
	.long	.LASF90
	.byte	0x15
	.byte	0x32
	.byte	0xf
	.long	0x394
	.uleb128 0x10
	.long	.LASF91
	.byte	0x15
	.byte	0x35
	.byte	0x15
	.long	0x43
	.uleb128 0x10
	.long	.LASF92
	.byte	0x15
	.byte	0x39
	.byte	0xc
	.long	0x68
	.uleb128 0xc
	.long	.LASF93
	.uleb128 0x10
	.long	.LASF94
	.byte	0x16
	.byte	0x19
	.byte	0x1f
	.long	0x519
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.long	0x68
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x869
	.uleb128 0x17
	.long	.LASF95
	.byte	0x1
	.byte	0x61
	.byte	0xb
	.long	0x68
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x17
	.long	.LASF96
	.byte	0x1
	.byte	0x61
	.byte	0x18
	.long	0x3d6
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x18
	.long	.LASF97
	.byte	0x1
	.byte	0x63
	.byte	0xa
	.long	0x29
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x19
	.string	"ok"
	.byte	0x1
	.byte	0x64
	.byte	0x8
	.long	0x869
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x180
	.long	0x6a1
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x78
	.byte	0xc
	.long	0x68
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.byte	0x7a
	.byte	0xe
	.long	0x29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x7b
	.byte	0x13
	.long	0x28d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	0x870
	.quad	.LBI73
	.byte	.LVU171
	.long	.Ldebug_ranges0+0x200
	.byte	0x1
	.byte	0x82
	.byte	0x10
	.long	0x61e
	.uleb128 0x1e
	.long	0x88b
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x1e
	.long	0x881
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x200
	.uleb128 0x1f
	.long	0x897
	.long	.LLST17
	.long	.LVUS17
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LVL65
	.long	0xe4b
	.uleb128 0x20
	.quad	.LVL66
	.long	0xe57
	.uleb128 0x21
	.quad	.LVL68
	.long	0xe63
	.long	0x661
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
	.quad	.LVL69
	.long	0xe6f
	.long	0x67f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL73
	.long	0xe7b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.long	0x706
	.uleb128 0x21
	.quad	.LVL91
	.long	0xe63
	.long	0x6df
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
	.quad	.LC32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL92
	.long	0xe4b
	.uleb128 0x23
	.quad	.LVL93
	.long	0xe6f
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
	.uleb128 0x20
	.quad	.LVL54
	.long	0xe87
	.uleb128 0x21
	.quad	.LVL55
	.long	0xe93
	.long	0x737
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
	.quad	.LVL56
	.long	0xe9f
	.long	0x763
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.uleb128 0x21
	.quad	.LVL57
	.long	0xeab
	.long	0x782
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x20
	.quad	.LVL58
	.long	0xeb7
	.uleb128 0x21
	.quad	.LVL59
	.long	0xec4
	.long	0x7cc
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
	.byte	0x7c
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.quad	.LVL82
	.long	0xed0
	.long	0x7e8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -104
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0
	.uleb128 0x21
	.quad	.LVL86
	.long	0x8aa
	.long	0x7ff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.quad	.LVL87
	.long	0xe63
	.long	0x828
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
	.quad	.LC27
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL88
	.long	0xe6f
	.long	0x844
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
	.quad	.LVL89
	.long	0x8aa
	.long	0x85b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.quad	.LVL90
	.long	0xedc
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF98
	.uleb128 0x25
	.long	.LASF136
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	0x869
	.byte	0x1
	.long	0x8a4
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.byte	0x44
	.byte	0x17
	.long	0x8a4
	.uleb128 0x27
	.long	.LASF99
	.byte	0x1
	.byte	0x44
	.byte	0x1f
	.long	0x99
	.uleb128 0x28
	.long	.LASF107
	.byte	0x1
	.byte	0x46
	.byte	0x7
	.long	0x68
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x29
	.uleb128 0x29
	.long	.LASF101
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xd66
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1
	.byte	0x26
	.byte	0xc
	.long	0x68
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1d
	.long	0xe20
	.quad	.LBI35
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.long	0x929
	.uleb128 0x1e
	.long	0xe3d
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1e
	.long	0xe31
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x23
	.quad	.LVL5
	.long	0xee5
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
	.uleb128 0x1d
	.long	0xd66
	.quad	.LBI39
	.byte	.LVU32
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x38
	.byte	0x7
	.long	0xc3c
	.uleb128 0x2a
	.long	0xd74
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2b
	.long	0xdb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	0xdbe
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1f
	.long	0xdcb
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1f
	.long	0xdd8
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2c
	.long	0xe01
	.quad	.LBI41
	.byte	.LVU56
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0xa0d
	.uleb128 0x1e
	.long	0xe12
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x21
	.quad	.LVL23
	.long	0xef1
	.long	0x9df
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
	.quad	.LC18
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.uleb128 0x23
	.quad	.LVL40
	.long	0xef1
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
	.quad	.LC18
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0xe01
	.quad	.LBI47
	.byte	.LVU71
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0xa85
	.uleb128 0x1e
	.long	0xe12
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x21
	.quad	.LVL31
	.long	0xef1
	.long	0xa5e
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
	.quad	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL47
	.long	0xef1
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
	.quad	.LC17
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0xe01
	.quad	.LBI56
	.byte	.LVU82
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xacc
	.uleb128 0x1e
	.long	0xe12
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x23
	.quad	.LVL35
	.long	0xef1
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
	.quad	.LVL20
	.long	0xe63
	.long	0xaf5
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
	.quad	.LC16
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL24
	.long	0xe93
	.long	0xb11
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
	.quad	.LVL26
	.long	0xefd
	.long	0xb35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x21
	.quad	.LVL28
	.long	0xe63
	.long	0xb5e
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
	.quad	.LC21
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL32
	.long	0xe63
	.long	0xb87
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
	.quad	.LC22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL37
	.long	0xe63
	.uleb128 0x21
	.quad	.LVL41
	.long	0xe93
	.long	0xbb0
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
	.quad	.LVL43
	.long	0xefd
	.long	0xbd4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x21
	.quad	.LVL44
	.long	0xe63
	.long	0xbfd
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
	.quad	.LC21
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL49
	.long	0xe63
	.long	0xc26
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
	.uleb128 0x23
	.quad	.LVL50
	.long	0xf09
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0xe01
	.quad	.LBI66
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x2c
	.byte	0x7
	.long	0xc82
	.uleb128 0x1e
	.long	0xe12
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x23
	.quad	.LVL11
	.long	0xef1
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
	.uleb128 0x21
	.quad	.LVL2
	.long	0xe63
	.long	0xcab
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
	.quad	.LVL6
	.long	0xf16
	.long	0xcc3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL8
	.long	0xe63
	.long	0xce7
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
	.quad	.LVL12
	.long	0xe63
	.long	0xd10
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
	.quad	.LVL13
	.long	0xf09
	.long	0xd28
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL14
	.long	0xe63
	.long	0xd51
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
	.quad	.LVL15
	.long	0xf09
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF137
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0xde6
	.uleb128 0x2e
	.long	.LASF103
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x28d
	.uleb128 0x2f
	.long	.LASF105
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0xdac
	.uleb128 0x30
	.long	.LASF103
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x28d
	.byte	0
	.uleb128 0x30
	.long	.LASF106
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x28d
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xd81
	.uleb128 0x31
	.long	.LASF105
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0xdf6
	.uleb128 0x31
	.long	.LASF106
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x28d
	.uleb128 0x31
	.long	.LASF108
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0xdfb
	.uleb128 0x31
	.long	.LASF109
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x28d
	.byte	0
	.uleb128 0xd
	.long	0xdac
	.long	0xdf6
	.uleb128 0xe
	.long	0x3c
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xde6
	.uleb128 0x7
	.byte	0x8
	.long	0xdac
	.uleb128 0x32
	.long	.LASF111
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x68
	.byte	0x3
	.long	0xe20
	.uleb128 0x27
	.long	.LASF110
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x298
	.uleb128 0x33
	.byte	0
	.uleb128 0x32
	.long	.LASF112
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x68
	.byte	0x3
	.long	0xe4b
	.uleb128 0x27
	.long	.LASF113
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2af
	.uleb128 0x27
	.long	.LASF110
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x298
	.uleb128 0x33
	.byte	0
	.uleb128 0x34
	.long	.LASF114
	.long	.LASF114
	.byte	0xf
	.byte	0x25
	.byte	0xd
	.uleb128 0x34
	.long	.LASF115
	.long	.LASF115
	.byte	0x16
	.byte	0x2c
	.byte	0xd
	.uleb128 0x34
	.long	.LASF116
	.long	.LASF116
	.byte	0x17
	.byte	0x33
	.byte	0xe
	.uleb128 0x34
	.long	.LASF117
	.long	.LASF117
	.byte	0x15
	.byte	0x28
	.byte	0xd
	.uleb128 0x34
	.long	.LASF118
	.long	.LASF118
	.byte	0x18
	.byte	0x1a
	.byte	0x6
	.uleb128 0x34
	.long	.LASF119
	.long	.LASF119
	.byte	0x13
	.byte	0x25
	.byte	0xd
	.uleb128 0x34
	.long	.LASF120
	.long	.LASF120
	.byte	0x19
	.byte	0x7a
	.byte	0xe
	.uleb128 0x34
	.long	.LASF121
	.long	.LASF121
	.byte	0x17
	.byte	0x56
	.byte	0xe
	.uleb128 0x34
	.long	.LASF122
	.long	.LASF122
	.byte	0x17
	.byte	0x52
	.byte	0xe
	.uleb128 0x35
	.long	.LASF123
	.long	.LASF123
	.byte	0x1a
	.value	0x253
	.byte	0xc
	.uleb128 0x34
	.long	.LASF124
	.long	.LASF124
	.byte	0x1b
	.byte	0x21
	.byte	0x6
	.uleb128 0x34
	.long	.LASF125
	.long	.LASF125
	.byte	0x1c
	.byte	0x1
	.byte	0x5
	.uleb128 0x36
	.long	.LASF138
	.long	.LASF138
	.uleb128 0x34
	.long	.LASF126
	.long	.LASF126
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x34
	.long	.LASF127
	.long	.LASF127
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x34
	.long	.LASF128
	.long	.LASF128
	.byte	0x1d
	.byte	0x8c
	.byte	0xc
	.uleb128 0x35
	.long	.LASF129
	.long	.LASF129
	.byte	0x8
	.value	0x296
	.byte	0xc
	.uleb128 0x35
	.long	.LASF130
	.long	.LASF130
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x33
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x39
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
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS10:
	.uleb128 0
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST10:
	.quad	.LVL51
	.quad	.LVL52
	.value	0x1
	.byte	0x55
	.quad	.LVL52
	.quad	.LVL62
	.value	0x1
	.byte	0x56
	.quad	.LVL62
	.quad	.LVL84
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL84
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
	.quad	.LVL89
	.value	0x1
	.byte	0x56
	.quad	.LVL89
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
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST11:
	.quad	.LVL51
	.quad	.LVL54-1
	.value	0x1
	.byte	0x54
	.quad	.LVL54-1
	.quad	.LVL63
	.value	0x1
	.byte	0x5c
	.quad	.LVL63
	.quad	.LVL84
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL84
	.quad	.LVL85
	.value	0x1
	.byte	0x5c
	.quad	.LVL85
	.quad	.LVL86
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL86
	.quad	.LVL89
	.value	0x1
	.byte	0x5c
	.quad	.LVL89
	.quad	.LFE137
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU122
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 .LVU186
	.uleb128 .LVU191
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU202
.LLST12:
	.quad	.LVL53
	.quad	.LVL64
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL64
	.quad	.LVL71
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL71
	.quad	.LVL72
	.value	0x1
	.byte	0x61
	.quad	.LVL72
	.quad	.LVL80
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL80
	.quad	.LVL81
	.value	0x1
	.byte	0x61
	.quad	.LVL83
	.quad	.LVL84
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL84
	.quad	.LVL85
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL85
	.quad	.LVL86-1
	.value	0x1
	.byte	0x61
	.quad	.LVL86-1
	.quad	.LVL86
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL86
	.quad	.LVL89
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU123
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU147
	.uleb128 .LVU154
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU186
	.uleb128 .LVU191
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU202
.LLST13:
	.quad	.LVL53
	.quad	.LVL64
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL67
	.value	0x1
	.byte	0x5f
	.quad	.LVL69
	.quad	.LVL70
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL70
	.quad	.LVL81
	.value	0x1
	.byte	0x5f
	.quad	.LVL83
	.quad	.LVL84
	.value	0x1
	.byte	0x5f
	.quad	.LVL84
	.quad	.LVL85
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL85
	.quad	.LVL86
	.value	0x1
	.byte	0x5f
	.quad	.LVL86
	.quad	.LVL89
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU135
	.uleb128 .LVU137
	.uleb128 .LVU193
	.uleb128 .LVU195
.LLST14:
	.quad	.LVL60
	.quad	.LVL61
	.value	0x1
	.byte	0x50
	.quad	.LVL84
	.quad	.LVL85
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU171
	.uleb128 .LVU176
	.uleb128 .LVU179
	.uleb128 .LVU183
	.uleb128 .LVU191
	.uleb128 .LVU193
.LLST15:
	.quad	.LVL74
	.quad	.LVL76
	.value	0x1
	.byte	0x50
	.quad	.LVL77
	.quad	.LVL80
	.value	0x1
	.byte	0x50
	.quad	.LVL83
	.quad	.LVL84
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU171
	.uleb128 .LVU176
	.uleb128 .LVU179
	.uleb128 .LVU183
	.uleb128 .LVU191
	.uleb128 .LVU193
.LLST16:
	.quad	.LVL74
	.quad	.LVL76
	.value	0x1
	.byte	0x5d
	.quad	.LVL77
	.quad	.LVL80
	.value	0x1
	.byte	0x5d
	.quad	.LVL83
	.quad	.LVL84
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU175
	.uleb128 .LVU176
	.uleb128 .LVU181
	.uleb128 .LVU182
	.uleb128 .LVU192
	.uleb128 .LVU193
.LLST17:
	.quad	.LVL75
	.quad	.LVL76
	.value	0x6
	.byte	0xc
	.long	0x15180
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL79
	.value	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL84
	.value	0x4
	.byte	0xa
	.value	0xe10
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
	.uleb128 .LVU36
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU67
	.uleb128 .LVU88
	.uleb128 .LVU116
.LLST3:
	.quad	.LVL16
	.quad	.LVL19
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	.LVL19
	.quad	.LVL27
	.value	0x1
	.byte	0x5c
	.quad	.LVL36
	.quad	.LVL48
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU37
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU54
	.uleb128 .LVU88
	.uleb128 .LVU90
.LLST4:
	.quad	.LVL16
	.quad	.LVL17
	.value	0x1
	.byte	0x57
	.quad	.LVL17
	.quad	.LVL20-1
	.value	0x1
	.byte	0x50
	.quad	.LVL36
	.quad	.LVL37-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU63
	.uleb128 .LVU66
	.uleb128 .LVU99
	.uleb128 .LVU102
.LLST5:
	.quad	.LVL25
	.quad	.LVL26-1
	.value	0x1
	.byte	0x50
	.quad	.LVL42
	.quad	.LVL43-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU56
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU92
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU96
.LLST6:
	.quad	.LVL21
	.quad	.LVL22
	.value	0x1
	.byte	0x50
	.quad	.LVL22
	.quad	.LVL23-1
	.value	0x1
	.byte	0x54
	.quad	.LVL38
	.quad	.LVL39
	.value	0x1
	.byte	0x50
	.quad	.LVL39
	.quad	.LVL40-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU71
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU107
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU113
.LLST7:
	.quad	.LVL29
	.quad	.LVL30
	.value	0x1
	.byte	0x50
	.quad	.LVL30
	.quad	.LVL31-1
	.value	0x1
	.byte	0x54
	.quad	.LVL45
	.quad	.LVL46
	.value	0x1
	.byte	0x50
	.quad	.LVL46
	.quad	.LVL47-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU82
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU86
.LLST8:
	.quad	.LVL33
	.quad	.LVL34
	.value	0x1
	.byte	0x50
	.quad	.LVL34
	.quad	.LVL35-1
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
	.quad	.LBB35
	.quad	.LBE35
	.quad	.LBB38
	.quad	.LBE38
	.quad	0
	.quad	0
	.quad	.LBB39
	.quad	.LBE39
	.quad	.LBB70
	.quad	.LBE70
	.quad	0
	.quad	0
	.quad	.LBB41
	.quad	.LBE41
	.quad	.LBB46
	.quad	.LBE46
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB61
	.quad	.LBE61
	.quad	0
	.quad	0
	.quad	.LBB47
	.quad	.LBE47
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB55
	.quad	.LBE55
	.quad	.LBB62
	.quad	.LBE62
	.quad	.LBB63
	.quad	.LBE63
	.quad	.LBB64
	.quad	.LBE64
	.quad	0
	.quad	0
	.quad	.LBB56
	.quad	.LBE56
	.quad	.LBB59
	.quad	.LBE59
	.quad	0
	.quad	0
	.quad	.LBB66
	.quad	.LBE66
	.quad	.LBB69
	.quad	.LBE69
	.quad	0
	.quad	0
	.quad	.LBB71
	.quad	.LBE71
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB80
	.quad	.LBE80
	.quad	0
	.quad	0
	.quad	.LBB72
	.quad	.LBE72
	.quad	.LBB77
	.quad	.LBE77
	.quad	.LBB78
	.quad	.LBE78
	.quad	0
	.quad	0
	.quad	.LBB73
	.quad	.LBE73
	.quad	.LBB76
	.quad	.LBE76
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
.LASF111:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF85:
	.string	"locale_quoting_style"
.LASF135:
	.string	"quoting_style"
.LASF8:
	.string	"size_t"
.LASF119:
	.string	"set_program_name"
.LASF31:
	.string	"_shortbuf"
.LASF78:
	.string	"shell_quoting_style"
.LASF99:
	.string	"suffix_char"
.LASF55:
	.string	"long long unsigned int"
.LASF118:
	.string	"xstrtod"
.LASF124:
	.string	"parse_gnu_standard_options_only"
.LASF34:
	.string	"_codecvt"
.LASF123:
	.string	"atexit"
.LASF58:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF89:
	.string	"quoting_style_vals"
.LASF103:
	.string	"program"
.LASF84:
	.string	"escape_quoting_style"
.LASF77:
	.string	"literal_quoting_style"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF64:
	.string	"sys_siglist"
.LASF7:
	.string	"long int"
.LASF54:
	.string	"_gl_cxxalias_dummy"
.LASF12:
	.string	"_flags"
.LASF35:
	.string	"_wide_data"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF72:
	.string	"program_invocation_short_name"
.LASF82:
	.string	"c_quoting_style"
.LASF43:
	.string	"_IO_codecvt"
.LASF0:
	.string	"double"
.LASF127:
	.string	"__printf_chk"
.LASF71:
	.string	"program_invocation_name"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF81:
	.string	"shell_escape_always_quoting_style"
.LASF61:
	.string	"timezone"
.LASF115:
	.string	"quote"
.LASF76:
	.string	"program_name"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF131:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF112:
	.string	"fprintf"
.LASF113:
	.string	"__stream"
.LASF1:
	.string	"long unsigned int"
.LASF121:
	.string	"bindtextdomain"
.LASF17:
	.string	"_IO_write_ptr"
.LASF48:
	.string	"sys_nerr"
.LASF87:
	.string	"custom_quoting_style"
.LASF4:
	.string	"short unsigned int"
.LASF92:
	.string	"error_one_per_line"
.LASF73:
	.string	"Version"
.LASF21:
	.string	"_IO_save_base"
.LASF66:
	.string	"environ"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF120:
	.string	"setlocale"
.LASF46:
	.string	"stdout"
.LASF75:
	.string	"version_etc_copyright"
.LASF67:
	.string	"optarg"
.LASF62:
	.string	"getdate_err"
.LASF68:
	.string	"optind"
.LASF97:
	.string	"seconds"
.LASF18:
	.string	"_IO_write_end"
.LASF107:
	.string	"multiplier"
.LASF125:
	.string	"xnanosleep"
.LASF134:
	.string	"_IO_lock_t"
.LASF104:
	.string	"_IO_FILE"
.LASF90:
	.string	"error_print_progname"
.LASF108:
	.string	"map_prog"
.LASF65:
	.string	"__environ"
.LASF132:
	.string	"src/sleep.c"
.LASF117:
	.string	"error"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF83:
	.string	"c_maybe_quoting_style"
.LASF98:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF136:
	.string	"apply_suffix"
.LASF106:
	.string	"node"
.LASF128:
	.string	"strncmp"
.LASF6:
	.string	"short int"
.LASF25:
	.string	"_chain"
.LASF94:
	.string	"quote_quoting_options"
.LASF50:
	.string	"_sys_nerr"
.LASF30:
	.string	"_vtable_offset"
.LASF59:
	.string	"tzname"
.LASF41:
	.string	"FILE"
.LASF74:
	.string	"exit_failure"
.LASF130:
	.string	"exit"
.LASF126:
	.string	"__fprintf_chk"
.LASF138:
	.string	"__stack_chk_fail"
.LASF80:
	.string	"shell_escape_quoting_style"
.LASF116:
	.string	"dcgettext"
.LASF88:
	.string	"quoting_style_args"
.LASF70:
	.string	"optopt"
.LASF60:
	.string	"daylight"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF79:
	.string	"shell_always_quoting_style"
.LASF86:
	.string	"clocale_quoting_style"
.LASF51:
	.string	"_sys_errlist"
.LASF114:
	.string	"__errno_location"
.LASF69:
	.string	"opterr"
.LASF10:
	.string	"__off64_t"
.LASF93:
	.string	"quoting_options"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF63:
	.string	"_sys_siglist"
.LASF110:
	.string	"__fmt"
.LASF105:
	.string	"infomap"
.LASF101:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF96:
	.string	"argv"
.LASF122:
	.string	"textdomain"
.LASF57:
	.string	"__daylight"
.LASF102:
	.string	"status"
.LASF133:
	.string	"/root/coreutils"
.LASF37:
	.string	"_freeres_buf"
.LASF22:
	.string	"_IO_backup_base"
.LASF91:
	.string	"error_message_count"
.LASF109:
	.string	"lc_messages"
.LASF95:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF129:
	.string	"fputs_unlocked"
.LASF56:
	.string	"__tzname"
.LASF100:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF137:
	.string	"emit_ancillary_info"
.LASF19:
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
