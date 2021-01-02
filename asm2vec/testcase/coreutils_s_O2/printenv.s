	.file	"printenv.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"printenv"
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
	.string	"Usage: %s [OPTION]... [VARIABLE]...\nPrint the values of the specified environment VARIABLE(s).\nIf no VARIABLE is specified, print name and value pairs for them all.\n\n"
	.align 8
.LC5:
	.string	"  -0, --null     end each output line with NUL, not newline\n"
	.align 8
.LC6:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC7:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC8:
	.string	"\nNOTE: your shell may have its own version of %s, which usually supersedes\nthe version described here.  Please refer to your shell's documentation\nfor details about the options it supports.\n"
	.section	.rodata.str1.1
.LC9:
	.string	"["
.LC10:
	.string	"test invocation"
.LC11:
	.string	"coreutils"
.LC12:
	.string	"Multi-call invocation"
.LC13:
	.string	"sha224sum"
.LC14:
	.string	"sha2 utilities"
.LC15:
	.string	"sha256sum"
.LC16:
	.string	"sha384sum"
.LC17:
	.string	"sha512sum"
.LC18:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC20:
	.string	"GNU coreutils"
.LC21:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC23:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL0:
.LFB135:
	.file 1 "src/printenv.c"
	.loc 1 57 1 view -0
	.cfi_startproc
	.loc 1 57 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 59 5 view .LVU2
	movl	$5, %edx
	.loc 1 57 1 view .LVU3
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
	.loc 1 57 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 58 3 is_stmt 1 view .LVU5
	.loc 1 58 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 59 5 is_stmt 1 view .LVU7
	.loc 1 59 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 59 5 is_stmt 0 view .LVU9
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
	.loc 1 59 5 view .LVU11
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
	.loc 1 77 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 62 7 view .LVU18
	.loc 1 62 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB52:
.LBB53:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC15(%rip), %rbx
.LBE53:
.LBE52:
	.loc 1 62 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB79:
.LBB80:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rdx
	movl	$1, %edi
.LBE80:
.LBE79:
	.loc 1 62 15 view .LVU23
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
	.loc 1 69 7 is_stmt 1 view .LVU29
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
	.loc 1 72 7 view .LVU30
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
	.loc 1 73 7 view .LVU31
	movl	$5, %edx
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	leaq	.LC7(%rip), %rsi
	call	dcgettext@PLT
.LVL16:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL17:
	.loc 1 74 7 view .LVU32
	.loc 1 74 15 is_stmt 0 view .LVU33
	movl	$5, %edx
	leaq	.LC8(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL18:
.LBB83:
.LBB84:
	.loc 2 107 10 view .LVU34
	leaq	.LC0(%rip), %rdx
	movl	$1, %edi
.LBE84:
.LBE83:
	.loc 1 74 15 view .LVU35
	movq	%rax, %rsi
.LVL19:
.LBB86:
.LBI83:
	.loc 2 105 1 is_stmt 1 view .LVU36
.LBB85:
	.loc 2 107 3 view .LVU37
	.loc 2 107 10 is_stmt 0 view .LVU38
	xorl	%eax, %eax
.LVL20:
	.loc 2 107 10 view .LVU39
	call	__printf_chk@PLT
.LVL21:
	.loc 2 107 10 view .LVU40
.LBE85:
.LBE86:
	.loc 1 75 7 is_stmt 1 view .LVU41
.LBB87:
.LBI52:
	.loc 3 634 1 view .LVU42
.LBB78:
	.loc 3 636 3 view .LVU43
	.loc 3 636 67 is_stmt 0 view .LVU44
	leaq	.LC9(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC16(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC10(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC11(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC12(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC13(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 3 646 3 is_stmt 1 view .LVU45
.LVL22:
	.loc 3 647 3 view .LVU46
	.loc 3 649 3 view .LVU47
	.loc 3 649 9 view .LVU48
	.loc 3 636 67 is_stmt 0 view .LVU49
	movq	%rax, 32(%rsp)
	leaq	.LC14(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC17(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC0(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 3 647 25 view .LVU50
	movq	%rsp, %rax
.LVL23:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 3 650 5 is_stmt 1 view .LVU51
	.loc 3 649 18 is_stmt 0 view .LVU52
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU53
	addq	$16, %rax
.LVL24:
	.loc 3 649 9 is_stmt 1 view .LVU54
	testq	%rdi, %rdi
	je	.L4
	.loc 3 649 33 is_stmt 0 view .LVU55
	movl	$9, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU56
	testb	%dl, %dl
	jne	.L5
.L4:
	.loc 3 652 3 is_stmt 1 view .LVU57
	.loc 3 652 15 is_stmt 0 view .LVU58
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU59
	movl	$5, %edx
	leaq	.LC18(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU60
	testq	%r12, %r12
	je	.L6
	.loc 3 653 5 is_stmt 1 view .LVU61
.LVL25:
	.loc 3 655 3 view .LVU62
	.loc 3 655 11 is_stmt 0 view .LVU63
	call	dcgettext@PLT
.LVL26:
.LBB54:
.LBB55:
	.loc 2 107 10 view .LVU64
	leaq	.LC19(%rip), %rcx
	movl	$1, %edi
	leaq	.LC20(%rip), %rdx
.LBE55:
.LBE54:
	.loc 3 655 11 view .LVU65
	movq	%rax, %rsi
.LVL27:
.LBB59:
.LBI54:
	.loc 2 105 1 is_stmt 1 view .LVU66
.LBB56:
	.loc 2 107 3 view .LVU67
	.loc 2 107 10 is_stmt 0 view .LVU68
	xorl	%eax, %eax
.LVL28:
	.loc 2 107 10 view .LVU69
	call	__printf_chk@PLT
.LVL29:
	.loc 2 107 10 view .LVU70
.LBE56:
.LBE59:
	.loc 3 659 3 is_stmt 1 view .LVU71
	.loc 3 659 29 is_stmt 0 view .LVU72
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL30:
	movq	%rax, %rdi
.LVL31:
	.loc 3 660 3 is_stmt 1 view .LVU73
	.loc 3 660 6 is_stmt 0 view .LVU74
	testq	%rax, %rax
	je	.L7
	.loc 3 660 22 view .LVU75
	movl	$3, %edx
	leaq	.LC21(%rip), %rsi
	call	strncmp@PLT
.LVL32:
	.loc 3 660 19 view .LVU76
	testl	%eax, %eax
	jne	.L10
.LVL33:
.L7:
	.loc 3 669 3 is_stmt 1 view .LVU77
	.loc 3 669 11 is_stmt 0 view .LVU78
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC23(%rip), %rsi
	call	dcgettext@PLT
.LVL34:
.LBB60:
.LBB61:
	.loc 2 107 10 view .LVU79
	leaq	.LC0(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	movl	$1, %edi
.LBE61:
.LBE60:
	.loc 3 669 11 view .LVU80
	movq	%rax, %rsi
.LVL35:
.LBB67:
.LBI60:
	.loc 2 105 1 is_stmt 1 view .LVU81
.LBB62:
	.loc 2 107 3 view .LVU82
	.loc 2 107 10 is_stmt 0 view .LVU83
	xorl	%eax, %eax
.LVL36:
	.loc 2 107 10 view .LVU84
.LBE62:
.LBE67:
	.loc 3 671 3 view .LVU85
	leaq	.LC1(%rip), %r13
.LBB68:
.LBB63:
	.loc 2 107 10 view .LVU86
	call	__printf_chk@PLT
.LVL37:
	.loc 2 107 10 view .LVU87
.LBE63:
.LBE68:
	.loc 3 671 3 is_stmt 1 view .LVU88
	cmpq	%rbx, %r12
	leaq	.LC2(%rip), %rcx
	cmovne	%rcx, %r13
.L8:
	.loc 3 671 11 is_stmt 0 view .LVU89
	xorl	%edi, %edi
	leaq	.LC24(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL38:
.LBB69:
.LBB70:
	.loc 2 107 10 view .LVU90
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE70:
.LBE69:
	.loc 3 671 11 view .LVU91
	movq	%rax, %rsi
.LVL39:
.LBB72:
.LBI69:
	.loc 2 105 1 is_stmt 1 view .LVU92
.LBB71:
	.loc 2 107 3 view .LVU93
	.loc 2 107 10 is_stmt 0 view .LVU94
	xorl	%eax, %eax
.LVL40:
	.loc 2 107 10 view .LVU95
	call	__printf_chk@PLT
.LVL41:
	.loc 2 107 10 view .LVU96
.LBE71:
.LBE72:
	.loc 3 673 1 view .LVU97
	jmp	.L3
.LVL42:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU98
	.loc 3 655 11 is_stmt 0 view .LVU99
	call	dcgettext@PLT
.LVL43:
.LBB73:
.LBB57:
	.loc 2 107 10 view .LVU100
	leaq	.LC19(%rip), %rcx
	movl	$1, %edi
	leaq	.LC20(%rip), %rdx
.LBE57:
.LBE73:
	.loc 3 655 11 view .LVU101
	movq	%rax, %rsi
.LVL44:
.LBB74:
	.loc 2 105 1 is_stmt 1 view .LVU102
.LBB58:
	.loc 2 107 3 view .LVU103
	.loc 2 107 10 is_stmt 0 view .LVU104
	xorl	%eax, %eax
.LVL45:
	.loc 2 107 10 view .LVU105
	call	__printf_chk@PLT
.LVL46:
	.loc 2 107 10 view .LVU106
.LBE58:
.LBE74:
	.loc 3 659 3 is_stmt 1 view .LVU107
	.loc 3 659 29 is_stmt 0 view .LVU108
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL47:
	movq	%rax, %rdi
.LVL48:
	.loc 3 660 3 is_stmt 1 view .LVU109
	.loc 3 660 6 is_stmt 0 view .LVU110
	testq	%rax, %rax
	je	.L9
	.loc 3 660 22 view .LVU111
	movl	$3, %edx
	leaq	.LC21(%rip), %rsi
	call	strncmp@PLT
.LVL49:
	.loc 3 660 19 view .LVU112
	testl	%eax, %eax
	jne	.L29
.L9:
	.loc 3 669 3 is_stmt 1 view .LVU113
	.loc 3 669 11 is_stmt 0 view .LVU114
	movl	$5, %edx
	leaq	.LC23(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL50:
.LBB75:
.LBB64:
	.loc 2 107 10 view .LVU115
	leaq	.LC0(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	movl	$1, %edi
.LBE64:
.LBE75:
	.loc 3 669 11 view .LVU116
	movq	%rax, %rsi
.LVL51:
.LBB76:
	.loc 2 105 1 is_stmt 1 view .LVU117
.LBB65:
	.loc 2 107 3 view .LVU118
	.loc 2 107 10 is_stmt 0 view .LVU119
	xorl	%eax, %eax
.LVL52:
	.loc 2 107 10 view .LVU120
.LBE65:
.LBE76:
	.loc 3 646 15 view .LVU121
	leaq	.LC0(%rip), %r12
.LBB77:
.LBB66:
	.loc 2 107 10 view .LVU122
	call	__printf_chk@PLT
.LVL53:
	.loc 2 107 10 view .LVU123
.LBE66:
.LBE77:
	.loc 3 671 3 is_stmt 1 view .LVU124
	leaq	.LC1(%rip), %r13
	jmp	.L8
.L29:
	.loc 3 646 15 is_stmt 0 view .LVU125
	leaq	.LC0(%rip), %r12
.LVL54:
.L10:
	.loc 3 666 7 is_stmt 1 view .LVU126
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC22(%rip), %rsi
	call	dcgettext@PLT
.LVL55:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL56:
	jmp	.L7
.LBE78:
.LBE87:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC25:
	.string	"/usr/local/share/locale"
.LC26:
	.string	"Richard Mlynarik"
.LC27:
	.string	"David MacKenzie"
.LC28:
	.string	"+iu:0"
.LC29:
	.string	"%s%c"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL57:
.LFB136:
	.loc 1 82 1 view -0
	.cfi_startproc
	.loc 1 82 1 is_stmt 0 view .LVU128
	endbr64
	.loc 1 83 3 is_stmt 1 view .LVU129
	.loc 1 84 3 view .LVU130
	.loc 1 85 3 view .LVU131
	.loc 1 86 3 view .LVU132
	.loc 1 87 3 view .LVU133
	.loc 1 88 3 view .LVU134
.LVL58:
	.loc 1 90 33 view .LVU135
	.loc 1 91 3 view .LVU136
	.loc 1 82 1 is_stmt 0 view .LVU137
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
	.loc 1 88 8 view .LVU138
	xorl	%r12d, %r12d
	.loc 1 82 1 view .LVU139
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 91 3 view .LVU140
	movq	(%rsi), %rdi
.LVL59:
	.loc 1 91 3 view .LVU141
	call	set_program_name@PLT
.LVL60:
	.loc 1 92 3 is_stmt 1 view .LVU142
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL61:
	.loc 1 93 3 view .LVU143
	leaq	.LC25(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	call	bindtextdomain@PLT
.LVL62:
	.loc 1 94 3 view .LVU144
	leaq	.LC11(%rip), %rdi
	call	textdomain@PLT
.LVL63:
	.loc 1 96 3 view .LVU145
.LBB88:
.LBI88:
	.loc 3 99 1 view .LVU146
.LBB89:
	.loc 3 101 3 view .LVU147
	.loc 3 102 5 view .LVU148
.LBE89:
.LBE88:
	.loc 1 97 3 is_stmt 0 view .LVU149
	movq	close_stdout@GOTPCREL(%rip), %rdi
.LBB91:
.LBB90:
	.loc 3 102 18 view .LVU150
	movl	$2, exit_failure(%rip)
.LVL64:
	.loc 3 102 18 view .LVU151
.LBE90:
.LBE91:
	.loc 1 97 3 is_stmt 1 view .LVU152
	call	atexit@PLT
.LVL65:
	.loc 1 99 3 view .LVU153
.L31:
	.loc 1 99 9 view .LVU154
	.loc 1 99 18 is_stmt 0 view .LVU155
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	leaq	.LC28(%rip), %rdx
	call	getopt_long@PLT
.LVL66:
	.loc 1 99 9 view .LVU156
	cmpl	$-1, %eax
	je	.L61
	.loc 1 101 7 is_stmt 1 view .LVU157
	cmpl	$-130, %eax
	je	.L32
	movl	$1, %r12d
.LVL67:
	.loc 1 101 7 is_stmt 0 view .LVU158
	cmpl	$48, %eax
	je	.L31
	cmpl	$-131, %eax
	je	.L62
	.loc 1 107 9 is_stmt 1 view .LVU159
	.loc 1 107 57 view .LVU160
	.loc 1 109 11 view .LVU161
	movl	$2, %edi
	call	usage
.LVL68:
	.p2align 4,,10
	.p2align 3
.L62:
	.loc 1 106 9 view .LVU162
	.loc 1 106 30 view .LVU163
	.loc 1 107 9 view .LVU164
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	movq	stdout(%rip), %rdi
	xorl	%eax, %eax
.LVL69:
	.loc 1 107 9 is_stmt 0 view .LVU165
	movq	Version(%rip), %rcx
	pushq	$0
	.cfi_def_cfa_offset 80
	leaq	.LC26(%rip), %r9
	leaq	.LC27(%rip), %r8
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL70:
	.loc 1 107 9 is_stmt 1 view .LVU166
	xorl	%edi, %edi
	call	exit@PLT
.LVL71:
.L61:
	.cfi_restore_state
	.loc 1 113 3 view .LVU167
	.loc 1 113 14 is_stmt 0 view .LVU168
	movslq	optind(%rip), %r14
	.loc 1 113 6 view .LVU169
	cmpl	%ebp, %r14d
	jl	.L36
	.loc 1 115 7 is_stmt 1 view .LVU170
	cmpb	$1, %r12b
	.loc 1 115 16 is_stmt 0 view .LVU171
	movq	environ(%rip), %rbx
.LVL72:
.LBB92:
.LBB93:
	.loc 2 107 10 view .LVU172
	leaq	.LC29(%rip), %r12
.LVL73:
	.loc 2 107 10 view .LVU173
	sbbl	%ebp, %ebp
.LVL74:
	.loc 2 107 10 view .LVU174
	andl	$10, %ebp
.LBE93:
.LBE92:
	.loc 1 115 7 view .LVU175
	jmp	.L37
.LVL75:
.L38:
	.loc 1 116 9 is_stmt 1 discriminator 4 view .LVU176
.LBB95:
.LBI92:
	.loc 2 105 1 discriminator 4 view .LVU177
.LBB94:
	.loc 2 107 3 discriminator 4 view .LVU178
	.loc 2 107 10 is_stmt 0 discriminator 4 view .LVU179
	movl	%ebp, %ecx
	movq	%r12, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL76:
	.loc 2 107 10 discriminator 4 view .LVU180
.LBE94:
.LBE95:
	.loc 1 115 41 is_stmt 1 discriminator 4 view .LVU181
	addq	$8, %rbx
.LVL77:
.L37:
	.loc 1 115 27 discriminator 2 view .LVU182
	movq	(%rbx), %rdx
	.loc 1 115 7 is_stmt 0 discriminator 2 view .LVU183
	testq	%rdx, %rdx
	jne	.L38
	.loc 1 117 10 view .LVU184
	movl	$1, %eax
.LVL78:
.L39:
	.loc 1 153 3 is_stmt 1 view .LVU185
	.loc 1 153 28 is_stmt 0 view .LVU186
	xorl	$1, %eax
.LVL79:
	.loc 1 154 1 view .LVU187
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	.loc 1 153 28 view .LVU188
	movzbl	%al, %eax
	.loc 1 154 1 view .LVU189
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
.LVL80:
.L36:
	.cfi_restore_state
	.loc 1 154 1 view .LVU190
	cmpb	$1, %r12b
	sbbl	%r13d, %r13d
.LBB96:
	.loc 1 121 11 view .LVU191
	xorl	%r12d, %r12d
.LVL81:
	.loc 1 121 11 view .LVU192
	andl	$10, %r13d
	jmp	.L48
.LVL82:
.L40:
	.loc 1 123 34 is_stmt 1 discriminator 2 view .LVU193
	.loc 1 123 24 discriminator 2 view .LVU194
	addq	$1, %r14
.LVL83:
	.loc 1 123 7 is_stmt 0 discriminator 2 view .LVU195
	cmpl	%r14d, %ebp
	jle	.L63
.LVL84:
.L48:
.LBB97:
	.loc 1 125 11 is_stmt 1 view .LVU196
	.loc 1 128 11 view .LVU197
	.loc 1 128 15 is_stmt 0 view .LVU198
	movq	(%rbx,%r14,8), %rdi
	movl	$61, %esi
	call	strchr@PLT
.LVL85:
	.loc 1 128 14 view .LVU199
	testq	%rax, %rax
	jne	.L40
	.loc 1 131 11 is_stmt 1 view .LVU200
	.loc 1 131 20 is_stmt 0 view .LVU201
	movq	environ(%rip), %r15
.LVL86:
	.loc 1 125 16 view .LVU202
	xorl	%r8d, %r8d
.LVL87:
.L41:
	.loc 1 131 31 is_stmt 1 discriminator 1 view .LVU203
	movq	(%r15), %rcx
	.loc 1 131 11 is_stmt 0 discriminator 1 view .LVU204
	testq	%rcx, %rcx
	je	.L64
	.loc 1 133 15 is_stmt 1 view .LVU205
.LVL88:
	.loc 1 134 15 view .LVU206
	.loc 1 135 22 is_stmt 0 view .LVU207
	movzbl	(%rcx), %eax
	.loc 1 134 18 view .LVU208
	movq	(%rbx,%r14,8), %rdx
.LVL89:
	.loc 1 135 15 is_stmt 1 view .LVU209
	.loc 1 135 21 view .LVU210
	testb	%al, %al
	jne	.L42
	jmp	.L43
.LVL90:
	.p2align 4,,10
	.p2align 3
.L44:
	.loc 1 135 21 view .LVU211
	testb	%al, %al
	je	.L43
.L45:
	.loc 1 135 21 is_stmt 0 view .LVU212
.LBE97:
	.loc 1 121 11 discriminator 1 view .LVU213
	movq	%rdi, %rcx
.LVL91:
.L42:
.LBB102:
	.loc 1 135 37 discriminator 1 view .LVU214
	movzbl	(%rdx), %esi
	.loc 1 135 34 discriminator 1 view .LVU215
	testb	%sil, %sil
	je	.L43
	.loc 1 135 55 discriminator 2 view .LVU216
	leaq	1(%rcx), %rdi
.LVL92:
	.loc 1 135 64 discriminator 2 view .LVU217
	addq	$1, %rdx
.LVL93:
	.loc 1 135 49 discriminator 2 view .LVU218
	cmpb	%sil, %al
	jne	.L43
	.loc 1 137 19 is_stmt 1 view .LVU219
	.loc 1 137 23 is_stmt 0 view .LVU220
	movzbl	1(%rcx), %eax
	.loc 1 137 22 view .LVU221
	cmpb	$61, %al
	jne	.L44
	.loc 1 137 34 discriminator 1 view .LVU222
	cmpb	$0, (%rdx)
	jne	.L45
	.loc 1 139 23 is_stmt 1 discriminator 4 view .LVU223
.LVL94:
.LBB98:
.LBI98:
	.loc 2 105 1 discriminator 4 view .LVU224
.LBB99:
	.loc 2 107 3 discriminator 4 view .LVU225
.LBE99:
.LBE98:
	.loc 1 139 23 is_stmt 0 discriminator 4 view .LVU226
	leaq	2(%rcx), %rdx
.LVL95:
.LBB101:
.LBB100:
	.loc 2 107 10 discriminator 4 view .LVU227
	leaq	.LC29(%rip), %rsi
	movl	%r13d, %ecx
	xorl	%eax, %eax
	movl	$1, %edi
.LVL96:
	.loc 2 107 10 discriminator 4 view .LVU228
	call	__printf_chk@PLT
.LVL97:
	.loc 2 107 10 discriminator 4 view .LVU229
.LBE100:
.LBE101:
	.loc 1 141 23 is_stmt 1 discriminator 4 view .LVU230
	.loc 1 142 23 discriminator 4 view .LVU231
	.loc 1 141 31 is_stmt 0 discriminator 4 view .LVU232
	movl	$1, %r8d
.LVL98:
.L43:
	.loc 1 131 37 is_stmt 1 discriminator 2 view .LVU233
	addq	$8, %r15
.LVL99:
	.loc 1 131 37 is_stmt 0 discriminator 2 view .LVU234
	jmp	.L41
.L64:
	.loc 1 147 11 is_stmt 1 view .LVU235
	.loc 1 147 19 is_stmt 0 view .LVU236
	addl	%r8d, %r12d
.LVL100:
	.loc 1 147 19 view .LVU237
	jmp	.L40
.LVL101:
.L63:
	.loc 1 147 19 view .LVU238
.LBE102:
	.loc 1 150 7 is_stmt 1 view .LVU239
	.loc 1 150 29 is_stmt 0 view .LVU240
	subl	optind(%rip), %ebp
.LVL102:
	.loc 1 150 10 view .LVU241
	cmpl	%r12d, %ebp
	sete	%al
.LVL103:
	.loc 1 150 10 view .LVU242
	jmp	.L39
.LVL104:
.L32:
	.loc 1 150 10 view .LVU243
.LBE96:
	.loc 1 106 9 is_stmt 1 view .LVU244
	xorl	%edi, %edi
	call	usage
.LVL105:
	.loc 1 106 9 is_stmt 0 view .LVU245
	.cfi_endproc
.LFE136:
	.size	main, .-main
	.section	.rodata.str1.1
.LC30:
	.string	"null"
.LC31:
	.string	"help"
.LC32:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 128
longopts:
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	48
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
	.file 24 "/usr/include/string.h"
	.file 25 "/usr/include/locale.h"
	.file 26 "/usr/include/libintl.h"
	.file 27 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x101d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF136
	.byte	0xc
	.long	.LASF137
	.long	.LASF138
	.long	.Ldebug_ranges0+0x270
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
	.long	.LASF139
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
	.uleb128 0xd
	.long	0x298
	.long	0x431
	.uleb128 0xe
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x421
	.uleb128 0x12
	.long	.LASF73
	.byte	0xf
	.value	0x11e
	.byte	0x1a
	.long	0x431
	.uleb128 0x12
	.long	.LASF74
	.byte	0xf
	.value	0x11f
	.byte	0x1a
	.long	0x431
	.uleb128 0x12
	.long	.LASF75
	.byte	0x10
	.value	0x21f
	.byte	0xf
	.long	0x45d
	.uleb128 0x7
	.byte	0x8
	.long	0x98
	.uleb128 0x12
	.long	.LASF76
	.byte	0x10
	.value	0x221
	.byte	0xf
	.long	0x45d
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
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x14
	.byte	0x29
	.byte	0x6
	.long	0x4b8
	.uleb128 0x15
	.long	.LASF81
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x4cd
	.uleb128 0x16
	.long	.LASF82
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x61
	.byte	0x3
	.value	0x147
	.byte	0x1
	.long	0x4eb
	.uleb128 0x18
	.long	.LASF83
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF84
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xa5
	.long	0x4f6
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x4eb
	.uleb128 0x10
	.long	.LASF85
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x4f6
	.uleb128 0x10
	.long	.LASF86
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x292
	.uleb128 0x19
	.long	.LASF140
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x568
	.uleb128 0x16
	.long	.LASF87
	.byte	0
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.uleb128 0x16
	.long	.LASF89
	.byte	0x2
	.uleb128 0x16
	.long	.LASF90
	.byte	0x3
	.uleb128 0x16
	.long	.LASF91
	.byte	0x4
	.uleb128 0x16
	.long	.LASF92
	.byte	0x5
	.uleb128 0x16
	.long	.LASF93
	.byte	0x6
	.uleb128 0x16
	.long	.LASF94
	.byte	0x7
	.uleb128 0x16
	.long	.LASF95
	.byte	0x8
	.uleb128 0x16
	.long	.LASF96
	.byte	0x9
	.uleb128 0x16
	.long	.LASF97
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x513
	.uleb128 0x12
	.long	.LASF98
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2e8
	.uleb128 0xd
	.long	0x568
	.long	0x585
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x57a
	.uleb128 0x12
	.long	.LASF99
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x585
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.long	0x5ac
	.uleb128 0x16
	.long	.LASF100
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	0x3b1
	.long	0x5bc
	.uleb128 0xe
	.long	0x35
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x5ac
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x1
	.byte	0x2f
	.byte	0x1c
	.long	0x5bc
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1b
	.long	.LASF108
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x61
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x908
	.uleb128 0x1c
	.long	.LASF101
	.byte	0x1
	.byte	0x51
	.byte	0xb
	.long	0x61
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1c
	.long	.LASF102
	.byte	0x1
	.byte	0x51
	.byte	0x18
	.long	0x45d
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1d
	.string	"env"
	.byte	0x1
	.byte	0x53
	.byte	0xa
	.long	0x45d
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1d
	.string	"ep"
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.long	0x98
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1d
	.string	"ap"
	.byte	0x1
	.byte	0x54
	.byte	0xe
	.long	0x98
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x55
	.byte	0x7
	.long	0x61
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1d
	.string	"ok"
	.byte	0x1
	.byte	0x56
	.byte	0x8
	.long	0x908
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x1e
	.long	.LASF103
	.byte	0x1
	.byte	0x57
	.byte	0x7
	.long	0x61
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x1e
	.long	.LASF104
	.byte	0x1
	.byte	0x58
	.byte	0x8
	.long	0x908
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x1f
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.long	0x74d
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x1
	.byte	0x79
	.byte	0xb
	.long	0x61
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x210
	.uleb128 0x1e
	.long	.LASF106
	.byte	0x1
	.byte	0x7d
	.byte	0x10
	.long	0x908
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x21
	.long	0xf2b
	.quad	.LBI98
	.byte	.LVU224
	.long	.Ldebug_ranges0+0x240
	.byte	0x1
	.byte	0x8b
	.byte	0x17
	.long	0x737
	.uleb128 0x22
	.long	0xf3c
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x23
	.quad	.LVL97
	.long	0xf75
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL85
	.long	0xf81
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x3d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0xf11
	.quad	.LBI88
	.byte	.LVU146
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0x60
	.byte	0x3
	.long	0x774
	.uleb128 0x22
	.long	0xf1e
	.long	.LLST20
	.long	.LVUS20
	.byte	0
	.uleb128 0x21
	.long	0xf2b
	.quad	.LBI92
	.byte	.LVU177
	.long	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.byte	0x74
	.byte	0x9
	.long	0x7ba
	.uleb128 0x22
	.long	0xf3c
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x23
	.quad	.LVL76
	.long	0xf75
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL60
	.long	0xf8d
	.uleb128 0x26
	.quad	.LVL61
	.long	0xf99
	.long	0x7eb
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
	.uleb128 0x26
	.quad	.LVL62
	.long	0xfa5
	.long	0x817
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x26
	.quad	.LVL63
	.long	0xfb1
	.long	0x836
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x25
	.quad	.LVL65
	.long	0xfbd
	.uleb128 0x26
	.quad	.LVL66
	.long	0xfca
	.long	0x880
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
	.quad	.LC28
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
	.uleb128 0x26
	.quad	.LVL68
	.long	0x90f
	.long	0x897
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x26
	.quad	.LVL70
	.long	0xfd6
	.long	0x8dd
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
	.quad	.LC20
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.byte	0
	.uleb128 0x26
	.quad	.LVL71
	.long	0xfe2
	.long	0x8f4
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL105
	.long	0x90f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF107
	.uleb128 0x27
	.long	.LASF109
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xe76
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x1
	.byte	0x38
	.byte	0xc
	.long	0x61
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x21
	.long	0xf4a
	.quad	.LBI48
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3b
	.byte	0x5
	.long	0x98e
	.uleb128 0x22
	.long	0xf67
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x22
	.long	0xf5b
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x23
	.quad	.LVL5
	.long	0xfef
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
	.uleb128 0x21
	.long	0xe76
	.quad	.LBI52
	.byte	.LVU42
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x4b
	.byte	0x7
	.long	0xca1
	.uleb128 0x28
	.long	0xe84
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.long	0xec1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	0xece
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2a
	.long	0xedb
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2a
	.long	0xee8
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2b
	.long	0xf2b
	.quad	.LBI54
	.byte	.LVU66
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0xa72
	.uleb128 0x22
	.long	0xf3c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x26
	.quad	.LVL29
	.long	0xf75
	.long	0xa44
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
	.quad	.LC20
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.uleb128 0x23
	.quad	.LVL46
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
	.quad	.LC20
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xf2b
	.quad	.LBI60
	.byte	.LVU81
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0xaea
	.uleb128 0x22
	.long	0xf3c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x26
	.quad	.LVL37
	.long	0xf75
	.long	0xac3
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
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL53
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
	.quad	.LC19
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xf2b
	.quad	.LBI69
	.byte	.LVU92
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xb31
	.uleb128 0x22
	.long	0xf3c
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x23
	.quad	.LVL41
	.long	0xf75
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
	.uleb128 0x26
	.quad	.LVL26
	.long	0xffb
	.long	0xb5a
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
	.quad	.LC18
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL30
	.long	0xf99
	.long	0xb76
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
	.uleb128 0x26
	.quad	.LVL32
	.long	0x1007
	.long	0xb9a
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
	.byte	0x33
	.byte	0
	.uleb128 0x26
	.quad	.LVL34
	.long	0xffb
	.long	0xbc3
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
	.uleb128 0x26
	.quad	.LVL38
	.long	0xffb
	.long	0xbec
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
	.quad	.LVL43
	.long	0xffb
	.uleb128 0x26
	.quad	.LVL47
	.long	0xf99
	.long	0xc15
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
	.uleb128 0x26
	.quad	.LVL49
	.long	0x1007
	.long	0xc39
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
	.byte	0x33
	.byte	0
	.uleb128 0x26
	.quad	.LVL50
	.long	0xffb
	.long	0xc62
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
	.uleb128 0x26
	.quad	.LVL55
	.long	0xffb
	.long	0xc8b
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
	.quad	.LVL56
	.long	0x1013
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0xf2b
	.quad	.LBI79
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x3e
	.byte	0x7
	.long	0xce1
	.uleb128 0x22
	.long	0xf3c
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x23
	.quad	.LVL11
	.long	0xf75
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
	.uleb128 0x21
	.long	0xf2b
	.quad	.LBI83
	.byte	.LVU36
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0x4a
	.byte	0x7
	.long	0xd28
	.uleb128 0x22
	.long	0xf3c
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x23
	.quad	.LVL21
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
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL2
	.long	0xffb
	.long	0xd51
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
	.uleb128 0x26
	.quad	.LVL6
	.long	0xfe2
	.long	0xd69
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL8
	.long	0xffb
	.long	0xd8d
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
	.uleb128 0x26
	.quad	.LVL12
	.long	0xffb
	.long	0xdb6
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
	.uleb128 0x26
	.quad	.LVL13
	.long	0x1013
	.long	0xdce
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL14
	.long	0xffb
	.long	0xdf7
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
	.uleb128 0x26
	.quad	.LVL15
	.long	0x1013
	.long	0xe0f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL16
	.long	0xffb
	.long	0xe38
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
	.uleb128 0x26
	.quad	.LVL17
	.long	0x1013
	.long	0xe50
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL18
	.long	0xffb
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
	.byte	0
	.uleb128 0x2c
	.long	.LASF116
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0xef6
	.uleb128 0x2d
	.long	.LASF112
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x292
	.uleb128 0x2e
	.long	.LASF111
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0xebc
	.uleb128 0x2f
	.long	.LASF112
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x292
	.byte	0
	.uleb128 0x2f
	.long	.LASF113
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x292
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xe91
	.uleb128 0x30
	.long	.LASF111
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0xf06
	.uleb128 0x30
	.long	.LASF113
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x292
	.uleb128 0x30
	.long	.LASF114
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0xf0b
	.uleb128 0x30
	.long	.LASF115
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x292
	.byte	0
	.uleb128 0xd
	.long	0xebc
	.long	0xf06
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xef6
	.uleb128 0x7
	.byte	0x8
	.long	0xebc
	.uleb128 0x31
	.long	.LASF117
	.byte	0x3
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0xf2b
	.uleb128 0x32
	.long	.LASF110
	.byte	0x3
	.byte	0x63
	.byte	0x1e
	.long	0x61
	.byte	0
	.uleb128 0x33
	.long	.LASF119
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0xf4a
	.uleb128 0x32
	.long	.LASF118
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x29d
	.uleb128 0x34
	.byte	0
	.uleb128 0x33
	.long	.LASF120
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0xf75
	.uleb128 0x32
	.long	.LASF121
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2b4
	.uleb128 0x32
	.long	.LASF118
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x29d
	.uleb128 0x34
	.byte	0
	.uleb128 0x35
	.long	.LASF122
	.long	.LASF122
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x35
	.long	.LASF123
	.long	.LASF123
	.byte	0x18
	.byte	0xe2
	.byte	0xe
	.uleb128 0x35
	.long	.LASF124
	.long	.LASF124
	.byte	0x16
	.byte	0x25
	.byte	0xd
	.uleb128 0x35
	.long	.LASF125
	.long	.LASF125
	.byte	0x19
	.byte	0x7a
	.byte	0xe
	.uleb128 0x35
	.long	.LASF126
	.long	.LASF126
	.byte	0x1a
	.byte	0x56
	.byte	0xe
	.uleb128 0x35
	.long	.LASF127
	.long	.LASF127
	.byte	0x1a
	.byte	0x52
	.byte	0xe
	.uleb128 0x36
	.long	.LASF128
	.long	.LASF128
	.byte	0x1b
	.value	0x253
	.byte	0xc
	.uleb128 0x35
	.long	.LASF129
	.long	.LASF129
	.byte	0xd
	.byte	0x42
	.byte	0xc
	.uleb128 0x35
	.long	.LASF130
	.long	.LASF130
	.byte	0x15
	.byte	0x3c
	.byte	0xd
	.uleb128 0x36
	.long	.LASF131
	.long	.LASF131
	.byte	0x1b
	.value	0x269
	.byte	0xd
	.uleb128 0x35
	.long	.LASF132
	.long	.LASF132
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x35
	.long	.LASF133
	.long	.LASF133
	.byte	0x1a
	.byte	0x33
	.byte	0xe
	.uleb128 0x35
	.long	.LASF134
	.long	.LASF134
	.byte	0x18
	.byte	0x8c
	.byte	0xc
	.uleb128 0x36
	.long	.LASF135
	.long	.LASF135
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
.LVUS11:
	.uleb128 0
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 0
.LLST11:
	.quad	.LVL57
	.quad	.LVL59
	.value	0x1
	.byte	0x55
	.quad	.LVL59
	.quad	.LVL74
	.value	0x1
	.byte	0x56
	.quad	.LVL74
	.quad	.LVL80
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL80
	.quad	.LVL102
	.value	0x1
	.byte	0x56
	.quad	.LVL102
	.quad	.LVL104
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL104
	.quad	.LFE136
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 0
.LLST12:
	.quad	.LVL57
	.quad	.LVL60-1
	.value	0x1
	.byte	0x54
	.quad	.LVL60-1
	.quad	.LVL72
	.value	0x1
	.byte	0x53
	.quad	.LVL72
	.quad	.LVL80
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL80
	.quad	.LFE136
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU172
	.uleb128 .LVU185
	.uleb128 .LVU202
	.uleb128 .LVU238
.LLST13:
	.quad	.LVL72
	.quad	.LVL78
	.value	0x1
	.byte	0x53
	.quad	.LVL86
	.quad	.LVL101
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU206
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU229
.LLST14:
	.quad	.LVL88
	.quad	.LVL90
	.value	0x1
	.byte	0x52
	.quad	.LVL90
	.quad	.LVL91
	.value	0x1
	.byte	0x55
	.quad	.LVL91
	.quad	.LVL92
	.value	0x1
	.byte	0x52
	.quad	.LVL92
	.quad	.LVL96
	.value	0x1
	.byte	0x55
	.quad	.LVL96
	.quad	.LVL97-1
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU209
	.uleb128 .LVU227
.LLST15:
	.quad	.LVL89
	.quad	.LVL95
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU193
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 .LVU195
	.uleb128 .LVU196
	.uleb128 .LVU238
.LLST16:
	.quad	.LVL82
	.quad	.LVL82
	.value	0x1
	.byte	0x5e
	.quad	.LVL82
	.quad	.LVL83
	.value	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.quad	.LVL84
	.quad	.LVL101
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU185
	.uleb128 .LVU187
	.uleb128 .LVU242
	.uleb128 .LVU243
.LLST17:
	.quad	.LVL78
	.quad	.LVL79
	.value	0x1
	.byte	0x50
	.quad	.LVL103
	.quad	.LVL104
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU156
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU165
	.uleb128 .LVU167
	.uleb128 .LVU176
	.uleb128 .LVU190
	.uleb128 .LVU193
	.uleb128 .LVU243
	.uleb128 .LVU245
.LLST18:
	.quad	.LVL66
	.quad	.LVL68-1
	.value	0x1
	.byte	0x50
	.quad	.LVL68
	.quad	.LVL69
	.value	0x1
	.byte	0x50
	.quad	.LVL71
	.quad	.LVL75
	.value	0x1
	.byte	0x50
	.quad	.LVL80
	.quad	.LVL82
	.value	0x1
	.byte	0x50
	.quad	.LVL104
	.quad	.LVL105-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU135
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU158
	.uleb128 .LVU167
	.uleb128 .LVU173
	.uleb128 .LVU190
	.uleb128 .LVU192
	.uleb128 .LVU243
	.uleb128 0
.LLST19:
	.quad	.LVL58
	.quad	.LVL65
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL67
	.value	0x1
	.byte	0x5c
	.quad	.LVL71
	.quad	.LVL73
	.value	0x1
	.byte	0x5c
	.quad	.LVL80
	.quad	.LVL81
	.value	0x1
	.byte	0x5c
	.quad	.LVL104
	.quad	.LFE136
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU193
	.uleb128 .LVU243
.LLST22:
	.quad	.LVL82
	.quad	.LVL104
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU197
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU229
	.uleb128 .LVU231
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU238
.LLST23:
	.quad	.LVL84
	.quad	.LVL87
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL87
	.quad	.LVL97-1
	.value	0x1
	.byte	0x58
	.quad	.LVL97
	.quad	.LVL98
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL98
	.quad	.LVL101
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU224
	.uleb128 .LVU229
.LLST24:
	.quad	.LVL94
	.quad	.LVL97
	.value	0xa
	.byte	0x3
	.quad	.LC29
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU146
	.uleb128 .LVU151
.LLST20:
	.quad	.LVL63
	.quad	.LVL64
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU177
	.uleb128 .LVU180
.LLST21:
	.quad	.LVL75
	.quad	.LVL76
	.value	0xa
	.byte	0x3
	.quad	.LC29
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
	.uleb128 .LVU46
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU77
	.uleb128 .LVU98
	.uleb128 .LVU126
.LLST3:
	.quad	.LVL22
	.quad	.LVL25
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	.LVL25
	.quad	.LVL33
	.value	0x1
	.byte	0x5c
	.quad	.LVL42
	.quad	.LVL54
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU47
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU64
	.uleb128 .LVU98
	.uleb128 .LVU100
.LLST4:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x1
	.byte	0x57
	.quad	.LVL23
	.quad	.LVL26-1
	.value	0x1
	.byte	0x50
	.quad	.LVL42
	.quad	.LVL43-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU73
	.uleb128 .LVU76
	.uleb128 .LVU109
	.uleb128 .LVU112
.LLST5:
	.quad	.LVL31
	.quad	.LVL32-1
	.value	0x1
	.byte	0x50
	.quad	.LVL48
	.quad	.LVL49-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU66
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU70
	.uleb128 .LVU102
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU106
.LLST6:
	.quad	.LVL27
	.quad	.LVL28
	.value	0x1
	.byte	0x50
	.quad	.LVL28
	.quad	.LVL29-1
	.value	0x1
	.byte	0x54
	.quad	.LVL44
	.quad	.LVL45
	.value	0x1
	.byte	0x50
	.quad	.LVL45
	.quad	.LVL46-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU81
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU87
	.uleb128 .LVU117
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU123
.LLST7:
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x50
	.quad	.LVL36
	.quad	.LVL37-1
	.value	0x1
	.byte	0x54
	.quad	.LVL51
	.quad	.LVL52
	.value	0x1
	.byte	0x50
	.quad	.LVL52
	.quad	.LVL53-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU92
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU96
.LLST8:
	.quad	.LVL39
	.quad	.LVL40
	.value	0x1
	.byte	0x50
	.quad	.LVL40
	.quad	.LVL41-1
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
	.uleb128 .LVU36
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU40
.LLST10:
	.quad	.LVL19
	.quad	.LVL20
	.value	0x1
	.byte	0x50
	.quad	.LVL20
	.quad	.LVL21-1
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
	.quad	.LBB83
	.quad	.LBE83
	.quad	.LBB86
	.quad	.LBE86
	.quad	0
	.quad	0
	.quad	.LBB88
	.quad	.LBE88
	.quad	.LBB91
	.quad	.LBE91
	.quad	0
	.quad	0
	.quad	.LBB92
	.quad	.LBE92
	.quad	.LBB95
	.quad	.LBE95
	.quad	0
	.quad	0
	.quad	.LBB97
	.quad	.LBE97
	.quad	.LBB102
	.quad	.LBE102
	.quad	0
	.quad	0
	.quad	.LBB98
	.quad	.LBE98
	.quad	.LBB101
	.quad	.LBE101
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
.LASF119:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF95:
	.string	"locale_quoting_style"
.LASF25:
	.string	"_chain"
.LASF84:
	.string	"GETOPT_VERSION_CHAR"
.LASF141:
	.string	"longopts"
.LASF140:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF124:
	.string	"set_program_name"
.LASF31:
	.string	"_shortbuf"
.LASF100:
	.string	"PRINTENV_FAILURE"
.LASF88:
	.string	"shell_quoting_style"
.LASF137:
	.string	"src/printenv.c"
.LASF83:
	.string	"GETOPT_HELP_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF34:
	.string	"_codecvt"
.LASF128:
	.string	"atexit"
.LASF68:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF99:
	.string	"quoting_style_vals"
.LASF112:
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
.LASF43:
	.string	"_IO_codecvt"
.LASF51:
	.string	"_sys_errlist"
.LASF122:
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
.LASF86:
	.string	"program_name"
.LASF130:
	.string	"version_etc"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF136:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF120:
	.string	"fprintf"
.LASF121:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF126:
	.string	"bindtextdomain"
.LASF17:
	.string	"_IO_write_ptr"
.LASF123:
	.string	"strchr"
.LASF63:
	.string	"name"
.LASF48:
	.string	"sys_nerr"
.LASF97:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF79:
	.string	"Version"
.LASF21:
	.string	"_IO_save_base"
.LASF76:
	.string	"environ"
.LASF113:
	.string	"node"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF125:
	.string	"setlocale"
.LASF46:
	.string	"stdout"
.LASF103:
	.string	"optc"
.LASF85:
	.string	"version_etc_copyright"
.LASF57:
	.string	"optarg"
.LASF72:
	.string	"getdate_err"
.LASF58:
	.string	"optind"
.LASF18:
	.string	"_IO_write_end"
.LASF139:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF114:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF54:
	.string	"time_t"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF106:
	.string	"matched"
.LASF93:
	.string	"c_maybe_quoting_style"
.LASF107:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF117:
	.string	"initialize_exit_failure"
.LASF105:
	.string	"matches"
.LASF134:
	.string	"strncmp"
.LASF5:
	.string	"short int"
.LASF62:
	.string	"option"
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
.LASF131:
	.string	"exit"
.LASF132:
	.string	"__fprintf_chk"
.LASF90:
	.string	"shell_escape_quoting_style"
.LASF133:
	.string	"dcgettext"
.LASF98:
	.string	"quoting_style_args"
.LASF60:
	.string	"optopt"
.LASF70:
	.string	"daylight"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF89:
	.string	"shell_always_quoting_style"
.LASF96:
	.string	"clocale_quoting_style"
.LASF59:
	.string	"opterr"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF118:
	.string	"__fmt"
.LASF111:
	.string	"infomap"
.LASF64:
	.string	"has_arg"
.LASF109:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF10:
	.string	"__time_t"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF102:
	.string	"argv"
.LASF127:
	.string	"textdomain"
.LASF67:
	.string	"__daylight"
.LASF110:
	.string	"status"
.LASF138:
	.string	"/root/coreutils"
.LASF37:
	.string	"_freeres_buf"
.LASF22:
	.string	"_IO_backup_base"
.LASF115:
	.string	"lc_messages"
.LASF101:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF129:
	.string	"getopt_long"
.LASF104:
	.string	"opt_nul_terminate_output"
.LASF135:
	.string	"fputs_unlocked"
.LASF66:
	.string	"__tzname"
.LASF108:
	.string	"main"
.LASF16:
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
