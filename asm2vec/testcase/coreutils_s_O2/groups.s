	.file	"groups.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"groups"
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
	.string	"Usage: %s [OPTION]... [USERNAME]...\n"
	.align 8
.LC5:
	.string	"Print group memberships for each USERNAME or, if no USERNAME is specified, for\nthe current process (which may differ if the groups database has changed).\n"
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
	.file 1 "src/groups.c"
	.loc 1 49 1 view -0
	.cfi_startproc
	.loc 1 49 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 51 5 view .LVU2
	movl	$5, %edx
	.loc 1 49 1 view .LVU3
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
	.loc 1 49 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 50 3 is_stmt 1 view .LVU5
	.loc 1 50 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 51 5 is_stmt 1 view .LVU7
	.loc 1 51 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 51 5 is_stmt 0 view .LVU9
	call	dcgettext@PLT
.LVL2:
.LBB41:
.LBB42:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE42:
.LBE41:
	.loc 1 51 5 view .LVU11
	movq	%rax, %rdx
.LVL3:
.LBB44:
.LBI41:
	.loc 2 98 1 is_stmt 1 view .LVU12
.LBB43:
	.loc 2 100 3 view .LVU13
	.loc 2 100 10 is_stmt 0 view .LVU14
	xorl	%eax, %eax
.LVL4:
	.loc 2 100 10 view .LVU15
	call	__fprintf_chk@PLT
.LVL5:
.L3:
	.loc 2 100 10 view .LVU16
.LBE43:
.LBE44:
	.loc 1 64 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 54 7 view .LVU18
	.loc 1 54 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB45:
.LBB46:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC14(%rip), %rbx
.LBE46:
.LBE45:
	.loc 1 54 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB72:
.LBB73:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rdx
	movl	$1, %edi
.LBE73:
.LBE72:
	.loc 1 54 15 view .LVU23
	movq	%rax, %rsi
.LVL9:
.LBB75:
.LBI72:
	.loc 2 105 1 is_stmt 1 view .LVU24
.LBB74:
	.loc 2 107 3 view .LVU25
	.loc 2 107 10 is_stmt 0 view .LVU26
	xorl	%eax, %eax
.LVL10:
	.loc 2 107 10 view .LVU27
	call	__printf_chk@PLT
.LVL11:
	.loc 2 107 10 view .LVU28
.LBE74:
.LBE75:
	.loc 1 55 7 is_stmt 1 view .LVU29
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
	.loc 1 60 7 view .LVU30
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
	.loc 1 61 7 view .LVU31
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
	.loc 1 62 7 view .LVU32
.LBB76:
.LBI45:
	.loc 3 634 1 view .LVU33
.LBB71:
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
	movl	$7, %ecx
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
.LBB47:
.LBB48:
	.loc 2 107 10 view .LVU55
	leaq	.LC18(%rip), %rcx
	movl	$1, %edi
	leaq	.LC19(%rip), %rdx
.LBE48:
.LBE47:
	.loc 3 655 11 view .LVU56
	movq	%rax, %rsi
.LVL23:
.LBB52:
.LBI47:
	.loc 2 105 1 is_stmt 1 view .LVU57
.LBB49:
	.loc 2 107 3 view .LVU58
	.loc 2 107 10 is_stmt 0 view .LVU59
	xorl	%eax, %eax
.LVL24:
	.loc 2 107 10 view .LVU60
	call	__printf_chk@PLT
.LVL25:
	.loc 2 107 10 view .LVU61
.LBE49:
.LBE52:
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
.LBB53:
.LBB54:
	.loc 2 107 10 view .LVU70
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	$1, %edi
.LBE54:
.LBE53:
	.loc 3 669 11 view .LVU71
	movq	%rax, %rsi
.LVL31:
.LBB60:
.LBI53:
	.loc 2 105 1 is_stmt 1 view .LVU72
.LBB55:
	.loc 2 107 3 view .LVU73
	.loc 2 107 10 is_stmt 0 view .LVU74
	xorl	%eax, %eax
.LVL32:
	.loc 2 107 10 view .LVU75
.LBE55:
.LBE60:
	.loc 3 671 3 view .LVU76
	leaq	.LC1(%rip), %r13
.LBB61:
.LBB56:
	.loc 2 107 10 view .LVU77
	call	__printf_chk@PLT
.LVL33:
	.loc 2 107 10 view .LVU78
.LBE56:
.LBE61:
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
.LBB62:
.LBB63:
	.loc 2 107 10 view .LVU81
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE63:
.LBE62:
	.loc 3 671 11 view .LVU82
	movq	%rax, %rsi
.LVL35:
.LBB65:
.LBI62:
	.loc 2 105 1 is_stmt 1 view .LVU83
.LBB64:
	.loc 2 107 3 view .LVU84
	.loc 2 107 10 is_stmt 0 view .LVU85
	xorl	%eax, %eax
.LVL36:
	.loc 2 107 10 view .LVU86
	call	__printf_chk@PLT
.LVL37:
	.loc 2 107 10 view .LVU87
.LBE64:
.LBE65:
	.loc 3 673 1 view .LVU88
	jmp	.L3
.LVL38:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU89
	.loc 3 655 11 is_stmt 0 view .LVU90
	call	dcgettext@PLT
.LVL39:
.LBB66:
.LBB50:
	.loc 2 107 10 view .LVU91
	leaq	.LC18(%rip), %rcx
	movl	$1, %edi
	leaq	.LC19(%rip), %rdx
.LBE50:
.LBE66:
	.loc 3 655 11 view .LVU92
	movq	%rax, %rsi
.LVL40:
.LBB67:
	.loc 2 105 1 is_stmt 1 view .LVU93
.LBB51:
	.loc 2 107 3 view .LVU94
	.loc 2 107 10 is_stmt 0 view .LVU95
	xorl	%eax, %eax
.LVL41:
	.loc 2 107 10 view .LVU96
	call	__printf_chk@PLT
.LVL42:
	.loc 2 107 10 view .LVU97
.LBE51:
.LBE67:
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
.LBB68:
.LBB57:
	.loc 2 107 10 view .LVU106
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	$1, %edi
.LBE57:
.LBE68:
	.loc 3 669 11 view .LVU107
	movq	%rax, %rsi
.LVL47:
.LBB69:
	.loc 2 105 1 is_stmt 1 view .LVU108
.LBB58:
	.loc 2 107 3 view .LVU109
	.loc 2 107 10 is_stmt 0 view .LVU110
	xorl	%eax, %eax
.LVL48:
	.loc 2 107 10 view .LVU111
.LBE58:
.LBE69:
	.loc 3 646 15 view .LVU112
	leaq	.LC0(%rip), %r12
.LBB70:
.LBB59:
	.loc 2 107 10 view .LVU113
	call	__printf_chk@PLT
.LVL49:
	.loc 2 107 10 view .LVU114
.LBE59:
.LBE70:
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
.LBE71:
.LBE76:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC24:
	.string	"/usr/local/share/locale"
.LC25:
	.string	"James Youngman"
.LC26:
	.string	"David MacKenzie"
.LC27:
	.string	"cannot get real UID"
.LC28:
	.string	"cannot get effective GID"
.LC29:
	.string	"cannot get real GID"
.LC30:
	.string	"%s: no such user"
.LC31:
	.string	"%s : "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL53:
.LFB136:
	.loc 1 69 1 view -0
	.cfi_startproc
	.loc 1 69 1 is_stmt 0 view .LVU119
	endbr64
	.loc 1 70 3 is_stmt 1 view .LVU120
	.loc 1 71 3 view .LVU121
.LVL54:
	.loc 1 72 3 view .LVU122
	.loc 1 73 3 view .LVU123
	.loc 1 75 33 view .LVU124
	.loc 1 76 3 view .LVU125
	.loc 1 69 1 is_stmt 0 view .LVU126
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 76 3 view .LVU127
	movq	(%rsi), %rdi
.LVL55:
	.loc 1 76 3 view .LVU128
	call	set_program_name@PLT
.LVL56:
	.loc 1 77 3 is_stmt 1 view .LVU129
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL57:
	.loc 1 78 3 view .LVU130
	leaq	.LC24(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	bindtextdomain@PLT
.LVL58:
	.loc 1 79 3 view .LVU131
	leaq	.LC10(%rip), %rdi
	call	textdomain@PLT
.LVL59:
	.loc 1 81 3 view .LVU132
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL60:
	.loc 1 86 3 view .LVU133
	.loc 1 86 9 view .LVU134
	.loc 1 86 18 is_stmt 0 view .LVU135
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movl	%ebp, %edi
	leaq	longopts(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	call	getopt_long@PLT
.LVL61:
	.loc 1 86 9 view .LVU136
	cmpl	$-1, %eax
	je	.L31
	.loc 1 88 7 is_stmt 1 view .LVU137
	cmpl	$-131, %eax
	jne	.L49
	.loc 1 90 9 view .LVU138
	.loc 1 90 30 view .LVU139
	.loc 1 91 9 view .LVU140
	pushq	%rcx
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	movq	stdout(%rip), %rdi
	xorl	%eax, %eax
.LVL62:
	.loc 1 91 9 is_stmt 0 view .LVU141
	leaq	.LC25(%rip), %r9
	pushq	$0
	.cfi_def_cfa_offset 80
	movq	Version(%rip), %rcx
	leaq	.LC26(%rip), %r8
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL63:
	.loc 1 91 9 is_stmt 1 view .LVU142
	xorl	%edi, %edi
	call	exit@PLT
.LVL64:
.L49:
	.cfi_restore_state
	.loc 1 88 7 is_stmt 0 view .LVU143
	cmpl	$-130, %eax
	je	.L50
	.loc 1 91 9 is_stmt 1 view .LVU144
	.loc 1 91 57 view .LVU145
	.loc 1 93 11 view .LVU146
	movl	$1, %edi
	call	usage
.LVL65:
.L31:
	.loc 1 97 3 view .LVU147
	.loc 1 97 14 is_stmt 0 view .LVU148
	movl	optind(%rip), %eax
.LVL66:
	.loc 1 97 6 view .LVU149
	cmpl	%ebp, %eax
	je	.L34
	.loc 1 125 15 is_stmt 1 view .LVU150
	.loc 1 71 8 is_stmt 0 view .LVU151
	movl	$1, %r12d
.LBB77:
.LBB78:
.LBB79:
	.loc 2 107 10 view .LVU152
	leaq	.LC31(%rip), %r13
.LBE79:
.LBE78:
.LBE77:
	.loc 1 125 7 view .LVU153
	jl	.L35
	jmp	.L36
.LVL67:
	.p2align 4,,10
	.p2align 3
.L41:
.LBB90:
	.loc 1 134 11 is_stmt 1 view .LVU154
	.loc 1 135 23 is_stmt 0 view .LVU155
	movl	20(%rax), %r14d
	.loc 1 134 16 view .LVU156
	movl	16(%rax), %r15d
.LVL68:
	.loc 1 135 11 is_stmt 1 view .LVU157
	.loc 1 137 11 view .LVU158
.LBB82:
.LBI78:
	.loc 2 105 1 view .LVU159
.LBB80:
	.loc 2 107 3 view .LVU160
	.loc 2 107 10 is_stmt 0 view .LVU161
	movq	%r13, %rsi
	movl	$1, %edi
.LBE80:
.LBE82:
	.loc 1 137 32 view .LVU162
	movslq	optind(%rip), %rax
.LVL69:
.LBB83:
.LBB81:
	.loc 2 107 10 view .LVU163
	movq	(%rbx,%rax,8), %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL70:
	.loc 2 107 10 view .LVU164
.LBE81:
.LBE83:
	.loc 1 138 11 is_stmt 1 view .LVU165
	.loc 1 138 16 is_stmt 0 view .LVU166
	movl	%r14d, %ecx
	movl	%r14d, %edx
	movl	%r15d, %esi
	.loc 1 138 38 view .LVU167
	movslq	optind(%rip), %rax
	.loc 1 138 16 view .LVU168
	movl	$32, %r9d
	movl	$1, %r8d
	movq	(%rbx,%rax,8), %rdi
	call	print_group_list@PLT
.LVL71:
.LBB84:
.LBB85:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 4 110 10 view .LVU169
	movq	stdout(%rip), %rdi
.LBE85:
.LBE84:
	.loc 1 139 16 view .LVU170
	testb	%al, %al
	movl	$0, %eax
	cmove	%eax, %r12d
.LVL72:
	.loc 1 140 11 is_stmt 1 view .LVU171
.LBB88:
.LBI84:
	.loc 4 108 1 view .LVU172
.LBB86:
	.loc 4 110 3 view .LVU173
	.loc 4 110 10 is_stmt 0 view .LVU174
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L51
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	$10, (%rax)
.LVL73:
.L42:
	.loc 4 110 10 view .LVU175
.LBE86:
.LBE88:
.LBE90:
	.loc 1 125 30 is_stmt 1 view .LVU176
	.loc 1 125 36 is_stmt 0 view .LVU177
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
	.loc 1 125 15 is_stmt 1 view .LVU178
	.loc 1 125 7 is_stmt 0 view .LVU179
	cmpl	%ebp, %eax
	jge	.L36
.LVL74:
.L35:
.LBB91:
	.loc 1 127 11 is_stmt 1 view .LVU180
	.loc 1 127 46 is_stmt 0 view .LVU181
	cltq
	.loc 1 127 32 view .LVU182
	movq	(%rbx,%rax,8), %rdi
	call	getpwnam@PLT
.LVL75:
	.loc 1 128 11 is_stmt 1 view .LVU183
	.loc 1 128 14 is_stmt 0 view .LVU184
	testq	%rax, %rax
	jne	.L41
	.loc 1 130 15 is_stmt 1 view .LVU185
	.loc 1 130 62 is_stmt 0 view .LVU186
	movslq	optind(%rip), %rax
.LVL76:
	.loc 1 130 15 view .LVU187
	movq	(%rbx,%rax,8), %rdi
	call	quote@PLT
.LVL77:
	.loc 1 130 28 view .LVU188
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 130 15 view .LVU189
	movq	%rax, %r12
.LVL78:
	.loc 1 130 28 view .LVU190
	call	dcgettext@PLT
.LVL79:
	.loc 1 130 15 view .LVU191
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 130 28 view .LVU192
	movq	%rax, %rdx
	.loc 1 130 15 view .LVU193
	xorl	%eax, %eax
	.loc 1 131 18 view .LVU194
	xorl	%r12d, %r12d
	.loc 1 130 15 view .LVU195
	call	error@PLT
.LVL80:
	.loc 1 131 15 is_stmt 1 view .LVU196
	.loc 1 132 15 view .LVU197
	jmp	.L42
.LVL81:
.L34:
	.loc 1 132 15 is_stmt 0 view .LVU198
.LBE91:
.LBB92:
	.loc 1 100 7 is_stmt 1 view .LVU199
	.loc 1 101 7 view .LVU200
	.loc 1 103 7 view .LVU201
	call	__errno_location@PLT
.LVL82:
	.loc 1 103 13 is_stmt 0 view .LVU202
	movl	$0, (%rax)
	.loc 1 104 7 is_stmt 1 view .LVU203
	.loc 1 103 7 is_stmt 0 view .LVU204
	movq	%rax, %rbx
.LVL83:
	.loc 1 104 14 view .LVU205
	call	getuid@PLT
.LVL84:
	movl	%eax, %ebp
.LVL85:
	.loc 1 105 7 is_stmt 1 view .LVU206
	.loc 1 105 10 is_stmt 0 view .LVU207
	cmpl	$-1, %eax
	je	.L52
.L37:
	.loc 1 108 7 is_stmt 1 view .LVU208
	.loc 1 108 13 is_stmt 0 view .LVU209
	movl	$0, (%rbx)
	.loc 1 109 7 is_stmt 1 view .LVU210
	.loc 1 109 14 is_stmt 0 view .LVU211
	call	getegid@PLT
.LVL86:
	.loc 1 109 14 view .LVU212
	movl	%eax, %r12d
.LVL87:
	.loc 1 110 7 is_stmt 1 view .LVU213
	.loc 1 110 10 is_stmt 0 view .LVU214
	cmpl	$-1, %eax
	je	.L53
.L38:
	.loc 1 113 7 is_stmt 1 view .LVU215
	.loc 1 113 13 is_stmt 0 view .LVU216
	movl	$0, (%rbx)
	.loc 1 114 7 is_stmt 1 view .LVU217
	.loc 1 114 14 is_stmt 0 view .LVU218
	call	getgid@PLT
.LVL88:
	.loc 1 114 14 view .LVU219
	movl	%eax, %edx
.LVL89:
	.loc 1 115 7 is_stmt 1 view .LVU220
	.loc 1 115 10 is_stmt 0 view .LVU221
	cmpl	$-1, %eax
	je	.L54
.L39:
	.loc 1 118 7 is_stmt 1 view .LVU222
	.loc 1 118 12 is_stmt 0 view .LVU223
	movl	%r12d, %ecx
	xorl	%edi, %edi
	movl	$32, %r9d
	movl	%ebp, %esi
	movl	$1, %r8d
	call	print_group_list@PLT
.LVL90:
.LBB93:
.LBB94:
	.loc 4 110 10 view .LVU224
	movq	stdout(%rip), %rdi
.LBE94:
.LBE93:
	.loc 1 118 12 view .LVU225
	movl	%eax, %r12d
.LVL91:
	.loc 1 120 7 is_stmt 1 view .LVU226
.LBB97:
.LBI93:
	.loc 4 108 1 view .LVU227
.LBB95:
	.loc 4 110 3 view .LVU228
	.loc 4 110 10 is_stmt 0 view .LVU229
	movq	40(%rdi), %rax
.LVL92:
	.loc 4 110 10 view .LVU230
	cmpq	48(%rdi), %rax
	jnb	.L55
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	$10, (%rax)
.LVL93:
.L36:
	.loc 4 110 10 view .LVU231
.LBE95:
.LBE97:
.LBE92:
	.loc 1 144 3 is_stmt 1 view .LVU232
	.loc 1 144 28 is_stmt 0 view .LVU233
	xorl	$1, %r12d
.LVL94:
	.loc 1 145 1 view .LVU234
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	.loc 1 144 28 view .LVU235
	movzbl	%r12b, %eax
	.loc 1 145 1 view .LVU236
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
.LVL95:
.L51:
	.cfi_restore_state
.LBB102:
.LBB89:
.LBB87:
	.loc 4 110 10 view .LVU237
	movl	$10, %esi
	call	__overflow@PLT
.LVL96:
	jmp	.L42
.LVL97:
.L50:
	.loc 4 110 10 view .LVU238
.LBE87:
.LBE89:
.LBE102:
	.loc 1 90 9 is_stmt 1 view .LVU239
	xorl	%edi, %edi
	call	usage
.LVL98:
.L52:
.LBB103:
	.loc 1 105 26 is_stmt 0 discriminator 1 view .LVU240
	cmpl	$0, (%rbx)
	je	.L37
.LBB98:
	.loc 1 106 9 is_stmt 1 view .LVU241
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL99:
	.loc 1 106 9 is_stmt 0 view .LVU242
	movl	(%rbx), %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL100:
.L54:
	.loc 1 106 9 view .LVU243
.LBE98:
	.loc 1 115 26 discriminator 1 view .LVU244
	cmpl	$0, (%rbx)
	je	.L39
.LBB99:
	.loc 1 116 9 is_stmt 1 view .LVU245
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL101:
	.loc 1 116 9 is_stmt 0 view .LVU246
	movl	(%rbx), %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL102:
.L53:
	.loc 1 116 9 view .LVU247
.LBE99:
	.loc 1 110 26 discriminator 1 view .LVU248
	cmpl	$0, (%rbx)
	je	.L38
.LBB100:
	.loc 1 111 9 is_stmt 1 view .LVU249
	movl	$5, %edx
	leaq	.LC28(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL103:
	.loc 1 111 9 is_stmt 0 view .LVU250
	movl	(%rbx), %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL104:
.L55:
	.loc 1 111 9 view .LVU251
.LBE100:
.LBB101:
.LBB96:
	.loc 4 110 10 view .LVU252
	movl	$10, %esi
	call	__overflow@PLT
.LVL105:
	jmp	.L36
.LBE96:
.LBE101:
.LBE103:
	.cfi_endproc
.LFE136:
	.size	main, .-main
	.section	.rodata.str1.1
.LC32:
	.string	"help"
.LC33:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 96
longopts:
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
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 11 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 13 "./lib/sys/select.h"
	.file 14 "/usr/include/pwd.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 17 "/usr/include/time.h"
	.file 18 "/usr/include/signal.h"
	.file 19 "/usr/include/unistd.h"
	.file 20 "/usr/include/errno.h"
	.file 21 "src/version.h"
	.file 22 "./lib/exitfail.h"
	.file 23 "./lib/timespec.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/quote.h"
	.file 29 "/usr/include/libintl.h"
	.file 30 "src/group-list.h"
	.file 31 "/usr/include/locale.h"
	.file 32 "/usr/include/stdlib.h"
	.file 33 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1289
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF160
	.byte	0xc
	.long	.LASF161
	.long	.LASF162
	.long	.Ldebug_ranges0+0x2c0
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
	.byte	0x92
	.byte	0x19
	.long	0x3c
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
	.byte	0x93
	.byte	0x19
	.long	0x3c
	.uleb128 0x2
	.long	.LASF10
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x6d
	.uleb128 0x7
	.byte	0x8
	.long	0xb6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x8
	.long	0xb6
	.uleb128 0x9
	.long	.LASF61
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x249
	.uleb128 0xa
	.long	.LASF14
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0xb0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0xb0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF17
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0xb0
	.byte	0x18
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0xb0
	.byte	0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0xb0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF20
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0xb0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF21
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0xb0
	.byte	0x38
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0xb0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0xb0
	.byte	0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0xb0
	.byte	0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0xb0
	.byte	0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x262
	.byte	0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x268
	.byte	0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x8c
	.byte	0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x26e
	.byte	0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x27e
	.byte	0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x98
	.byte	0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x289
	.byte	0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x294
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x268
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x29a
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xc2
	.uleb128 0xb
	.long	.LASF163
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x25d
	.uleb128 0x7
	.byte	0x8
	.long	0xc2
	.uleb128 0xd
	.long	0xb6
	.long	0x27e
	.uleb128 0xe
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x255
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x284
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x28f
	.uleb128 0xd
	.long	0xb6
	.long	0x2aa
	.uleb128 0xe
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xbd
	.uleb128 0x8
	.long	0x2aa
	.uleb128 0xf
	.long	0x2aa
	.uleb128 0x10
	.long	.LASF47
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x2c6
	.uleb128 0x7
	.byte	0x8
	.long	0x249
	.uleb128 0xf
	.long	0x2c6
	.uleb128 0x10
	.long	.LASF48
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x2c6
	.uleb128 0x10
	.long	.LASF49
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x2c6
	.uleb128 0x10
	.long	.LASF50
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x2b0
	.long	0x300
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x2f5
	.uleb128 0x10
	.long	.LASF51
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x300
	.uleb128 0x10
	.long	.LASF52
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF53
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x300
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF56
	.byte	0xb
	.byte	0x40
	.byte	0x11
	.long	0x80
	.uleb128 0x2
	.long	.LASF57
	.byte	0xb
	.byte	0x4f
	.byte	0x11
	.long	0x74
	.uleb128 0x2
	.long	.LASF58
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0xa4
	.uleb128 0x12
	.long	.LASF59
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF60
	.uleb128 0x9
	.long	.LASF62
	.byte	0x30
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0x3d8
	.uleb128 0xa
	.long	.LASF63
	.byte	0xe
	.byte	0x33
	.byte	0x9
	.long	0xb0
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0xe
	.byte	0x34
	.byte	0x9
	.long	0xb0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF65
	.byte	0xe
	.byte	0x36
	.byte	0xb
	.long	0x74
	.byte	0x10
	.uleb128 0xa
	.long	.LASF66
	.byte	0xe
	.byte	0x37
	.byte	0xb
	.long	0x80
	.byte	0x14
	.uleb128 0xa
	.long	.LASF67
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0xb0
	.byte	0x18
	.uleb128 0xa
	.long	.LASF68
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0xb0
	.byte	0x20
	.uleb128 0xa
	.long	.LASF69
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0xb0
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb0
	.uleb128 0x10
	.long	.LASF70
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0xb0
	.uleb128 0x10
	.long	.LASF71
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF72
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF73
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF74
	.byte	0x20
	.byte	0x10
	.byte	0x32
	.byte	0x8
	.long	0x450
	.uleb128 0xa
	.long	.LASF75
	.byte	0x10
	.byte	0x34
	.byte	0xf
	.long	0x2aa
	.byte	0
	.uleb128 0xa
	.long	.LASF76
	.byte	0x10
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF77
	.byte	0x10
	.byte	0x38
	.byte	0x8
	.long	0x455
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0x10
	.byte	0x39
	.byte	0x7
	.long	0x61
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x40e
	.uleb128 0x7
	.byte	0x8
	.long	0x61
	.uleb128 0xd
	.long	0xb0
	.long	0x46b
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x11
	.byte	0x9f
	.byte	0xe
	.long	0x45b
	.uleb128 0x10
	.long	.LASF79
	.byte	0x11
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF80
	.byte	0x11
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0x10
	.long	.LASF81
	.byte	0x11
	.byte	0xa6
	.byte	0xe
	.long	0x45b
	.uleb128 0x10
	.long	.LASF82
	.byte	0x11
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF83
	.byte	0x11
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x12
	.long	.LASF84
	.byte	0x11
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x8
	.long	0x4c0
	.uleb128 0xd
	.long	0x2b0
	.long	0x4d7
	.uleb128 0xe
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x4c7
	.uleb128 0x12
	.long	.LASF85
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x4d7
	.uleb128 0x12
	.long	.LASF86
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x4d7
	.uleb128 0x12
	.long	.LASF87
	.byte	0x13
	.value	0x21f
	.byte	0xf
	.long	0x3d8
	.uleb128 0x12
	.long	.LASF88
	.byte	0x13
	.value	0x221
	.byte	0xf
	.long	0x3d8
	.uleb128 0x10
	.long	.LASF89
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0xb0
	.uleb128 0x10
	.long	.LASF90
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0xb0
	.uleb128 0x10
	.long	.LASF91
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0x2aa
	.uleb128 0x10
	.long	.LASF92
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x17
	.byte	0x29
	.byte	0x6
	.long	0x558
	.uleb128 0x16
	.long	.LASF93
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x17
	.byte	0x2a
	.byte	0x6
	.long	0x56d
	.uleb128 0x17
	.long	.LASF94
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x61
	.byte	0x3
	.value	0x147
	.byte	0x1
	.long	0x58b
	.uleb128 0x19
	.long	.LASF95
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF96
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xbd
	.long	0x596
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x58b
	.uleb128 0x10
	.long	.LASF97
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x596
	.uleb128 0x10
	.long	.LASF98
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0x2aa
	.uleb128 0x1a
	.long	.LASF164
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x608
	.uleb128 0x17
	.long	.LASF99
	.byte	0
	.uleb128 0x17
	.long	.LASF100
	.byte	0x1
	.uleb128 0x17
	.long	.LASF101
	.byte	0x2
	.uleb128 0x17
	.long	.LASF102
	.byte	0x3
	.uleb128 0x17
	.long	.LASF103
	.byte	0x4
	.uleb128 0x17
	.long	.LASF104
	.byte	0x5
	.uleb128 0x17
	.long	.LASF105
	.byte	0x6
	.uleb128 0x17
	.long	.LASF106
	.byte	0x7
	.uleb128 0x17
	.long	.LASF107
	.byte	0x8
	.uleb128 0x17
	.long	.LASF108
	.byte	0x9
	.uleb128 0x17
	.long	.LASF109
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x5b3
	.uleb128 0x12
	.long	.LASF110
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x300
	.uleb128 0xd
	.long	0x608
	.long	0x625
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x61a
	.uleb128 0x12
	.long	.LASF111
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x625
	.uleb128 0x10
	.long	.LASF112
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x4c1
	.uleb128 0x10
	.long	.LASF113
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF114
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0xc
	.long	.LASF115
	.uleb128 0x10
	.long	.LASF116
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x65b
	.uleb128 0xd
	.long	0x450
	.long	0x67c
	.uleb128 0xe
	.long	0x35
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x66c
	.uleb128 0x1b
	.long	.LASF165
	.byte	0x1
	.byte	0x28
	.byte	0x1c
	.long	0x67c
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF126
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	0x61
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0xb76
	.uleb128 0x1d
	.long	.LASF117
	.byte	0x1
	.byte	0x44
	.byte	0xb
	.long	0x61
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1d
	.long	.LASF118
	.byte	0x1
	.byte	0x44
	.byte	0x18
	.long	0x3d8
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1e
	.long	.LASF119
	.byte	0x1
	.byte	0x46
	.byte	0x7
	.long	0x61
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1f
	.string	"ok"
	.byte	0x1
	.byte	0x47
	.byte	0x8
	.long	0xb76
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1e
	.long	.LASF120
	.byte	0x1
	.byte	0x48
	.byte	0x9
	.long	0x337
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x1
	.byte	0x48
	.byte	0xf
	.long	0x337
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x1e
	.long	.LASF122
	.byte	0x1
	.byte	0x49
	.byte	0x9
	.long	0x343
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x250
	.long	0x904
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.long	0x343
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x1
	.byte	0x65
	.byte	0xd
	.long	0x337
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x21
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0x7c7
	.uleb128 0x22
	.quad	.LVL99
	.long	0x117d
	.long	0x7b3
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
	.quad	.LC27
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL100
	.long	0x1189
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x819
	.uleb128 0x22
	.quad	.LVL103
	.long	0x117d
	.long	0x805
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
	.quad	.LC28
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL104
	.long	0x1189
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.long	0x86b
	.uleb128 0x22
	.quad	.LVL101
	.long	0x117d
	.long	0x857
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
	.quad	.LC29
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL102
	.long	0x1189
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x115f
	.quad	.LBI93
	.byte	.LVU227
	.long	.Ldebug_ranges0+0x280
	.byte	0x1
	.byte	0x78
	.byte	0x7
	.long	0x8a5
	.uleb128 0x26
	.long	0x1170
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x24
	.quad	.LVL105
	.long	0x1195
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL82
	.long	0x11a2
	.uleb128 0x27
	.quad	.LVL84
	.long	0x11ae
	.uleb128 0x27
	.quad	.LVL86
	.long	0x11bb
	.uleb128 0x27
	.quad	.LVL88
	.long	0x11c8
	.uleb128 0x24
	.quad	.LVL90
	.long	0x11d5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
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
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x180
	.long	0xa28
	.uleb128 0x1f
	.string	"pwd"
	.byte	0x1
	.byte	0x7f
	.byte	0x1a
	.long	0xb7d
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x25
	.long	0x1115
	.quad	.LBI78
	.byte	.LVU159
	.long	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.byte	0x89
	.byte	0xb
	.long	0x961
	.uleb128 0x26
	.long	0x1126
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x24
	.quad	.LVL70
	.long	0x11e1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x115f
	.quad	.LBI84
	.byte	.LVU172
	.long	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0x8c
	.byte	0xb
	.long	0x99b
	.uleb128 0x26
	.long	0x1170
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x24
	.quad	.LVL96
	.long	0x1195
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL71
	.long	0x11d5
	.long	0x9ca
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.quad	.LVL75
	.long	0x11ed
	.uleb128 0x27
	.quad	.LVL77
	.long	0x11f9
	.uleb128 0x22
	.quad	.LVL79
	.long	0x117d
	.long	0xa0d
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
	.quad	.LVL80
	.long	0x1189
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL56
	.long	0x1205
	.uleb128 0x22
	.quad	.LVL57
	.long	0x1211
	.long	0xa59
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
	.quad	.LVL58
	.long	0x121d
	.long	0xa85
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.uleb128 0x22
	.quad	.LVL59
	.long	0x1229
	.long	0xaa4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.uleb128 0x27
	.quad	.LVL60
	.long	0x1235
	.uleb128 0x22
	.quad	.LVL61
	.long	0x1242
	.long	0xaee
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
	.quad	.LC2
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
	.quad	.LVL63
	.long	0x124e
	.long	0xb34
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
	.quad	.LC19
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x22
	.quad	.LVL64
	.long	0x125a
	.long	0xb4b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL65
	.long	0xb83
	.long	0xb62
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.quad	.LVL98
	.long	0xb83
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF125
	.uleb128 0x7
	.byte	0x8
	.long	0x36f
	.uleb128 0x28
	.long	.LASF127
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x107a
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.long	0x61
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x25
	.long	0x1134
	.quad	.LBI41
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.long	0xc02
	.uleb128 0x26
	.long	0x1151
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x26
	.long	0x1145
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x24
	.quad	.LVL5
	.long	0x1267
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
	.uleb128 0x25
	.long	0x107a
	.quad	.LBI45
	.byte	.LVU33
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x3e
	.byte	0x7
	.long	0xf15
	.uleb128 0x29
	.long	0x1088
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2b
	.long	0x10c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.long	0x10d2
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2c
	.long	0x10df
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2c
	.long	0x10ec
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2d
	.long	0x1115
	.quad	.LBI47
	.byte	.LVU57
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0xce6
	.uleb128 0x26
	.long	0x1126
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x22
	.quad	.LVL25
	.long	0x11e1
	.long	0xcb8
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
	.quad	.LC19
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.uleb128 0x24
	.quad	.LVL42
	.long	0x11e1
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
	.quad	.LC19
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1115
	.quad	.LBI53
	.byte	.LVU72
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0xd5e
	.uleb128 0x26
	.long	0x1126
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x22
	.quad	.LVL33
	.long	0x11e1
	.long	0xd37
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
	.quad	.LC18
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL49
	.long	0x11e1
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
	.quad	.LC18
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1115
	.quad	.LBI62
	.byte	.LVU83
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xda5
	.uleb128 0x26
	.long	0x1126
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x24
	.quad	.LVL37
	.long	0x11e1
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
	.quad	.LVL22
	.long	0x117d
	.long	0xdce
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
	.quad	.LC17
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL26
	.long	0x1211
	.long	0xdea
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
	.quad	.LVL28
	.long	0x1273
	.long	0xe0e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.quad	.LVL30
	.long	0x117d
	.long	0xe37
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
	.quad	.LC22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL34
	.long	0x117d
	.long	0xe60
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
	.uleb128 0x27
	.quad	.LVL39
	.long	0x117d
	.uleb128 0x22
	.quad	.LVL43
	.long	0x1211
	.long	0xe89
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
	.quad	.LVL45
	.long	0x1273
	.long	0xead
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.quad	.LVL46
	.long	0x117d
	.long	0xed6
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
	.quad	.LC22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL51
	.long	0x117d
	.long	0xeff
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
	.quad	.LC21
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL52
	.long	0x127f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x1115
	.quad	.LBI72
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x36
	.byte	0x7
	.long	0xf55
	.uleb128 0x26
	.long	0x1126
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x24
	.quad	.LVL11
	.long	0x11e1
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
	.uleb128 0x22
	.quad	.LVL2
	.long	0x117d
	.long	0xf7e
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
	.long	0x125a
	.long	0xf96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL8
	.long	0x117d
	.long	0xfba
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
	.long	0x117d
	.long	0xfe3
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
	.long	0x127f
	.long	0xffb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL14
	.long	0x117d
	.long	0x1024
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
	.long	0x127f
	.long	0x103c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL16
	.long	0x117d
	.long	0x1065
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
	.uleb128 0x24
	.quad	.LVL17
	.long	0x127f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF166
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x10fa
	.uleb128 0x2f
	.long	.LASF130
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x2aa
	.uleb128 0x30
	.long	.LASF129
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0x10c0
	.uleb128 0x31
	.long	.LASF130
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x2aa
	.byte	0
	.uleb128 0x31
	.long	.LASF131
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x2aa
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x1095
	.uleb128 0x32
	.long	.LASF129
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0x110a
	.uleb128 0x32
	.long	.LASF131
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x2aa
	.uleb128 0x32
	.long	.LASF132
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0x110f
	.uleb128 0x32
	.long	.LASF133
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x2aa
	.byte	0
	.uleb128 0xd
	.long	0x10c0
	.long	0x110a
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x10fa
	.uleb128 0x7
	.byte	0x8
	.long	0x10c0
	.uleb128 0x33
	.long	.LASF135
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1134
	.uleb128 0x34
	.long	.LASF134
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x2b5
	.uleb128 0x35
	.byte	0
	.uleb128 0x33
	.long	.LASF136
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x115f
	.uleb128 0x34
	.long	.LASF137
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2cc
	.uleb128 0x34
	.long	.LASF134
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x2b5
	.uleb128 0x35
	.byte	0
	.uleb128 0x36
	.long	.LASF167
	.byte	0x4
	.byte	0x6c
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x117d
	.uleb128 0x37
	.string	"__c"
	.byte	0x4
	.byte	0x6c
	.byte	0x17
	.long	0x61
	.byte	0
	.uleb128 0x38
	.long	.LASF138
	.long	.LASF138
	.byte	0x1d
	.byte	0x33
	.byte	0xe
	.uleb128 0x38
	.long	.LASF139
	.long	.LASF139
	.byte	0x1b
	.byte	0x28
	.byte	0xd
	.uleb128 0x39
	.long	.LASF140
	.long	.LASF140
	.byte	0x9
	.value	0x35b
	.byte	0xc
	.uleb128 0x38
	.long	.LASF141
	.long	.LASF141
	.byte	0x14
	.byte	0x25
	.byte	0xd
	.uleb128 0x39
	.long	.LASF142
	.long	.LASF142
	.byte	0x13
	.value	0x2a3
	.byte	0x10
	.uleb128 0x39
	.long	.LASF143
	.long	.LASF143
	.byte	0x13
	.value	0x2ac
	.byte	0x10
	.uleb128 0x39
	.long	.LASF144
	.long	.LASF144
	.byte	0x13
	.value	0x2a9
	.byte	0x10
	.uleb128 0x38
	.long	.LASF145
	.long	.LASF145
	.byte	0x1e
	.byte	0x13
	.byte	0x6
	.uleb128 0x38
	.long	.LASF146
	.long	.LASF146
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x38
	.long	.LASF147
	.long	.LASF147
	.byte	0xe
	.byte	0x74
	.byte	0x17
	.uleb128 0x38
	.long	.LASF148
	.long	.LASF148
	.byte	0x1c
	.byte	0x2c
	.byte	0xd
	.uleb128 0x38
	.long	.LASF149
	.long	.LASF149
	.byte	0x19
	.byte	0x25
	.byte	0xd
	.uleb128 0x38
	.long	.LASF150
	.long	.LASF150
	.byte	0x1f
	.byte	0x7a
	.byte	0xe
	.uleb128 0x38
	.long	.LASF151
	.long	.LASF151
	.byte	0x1d
	.byte	0x56
	.byte	0xe
	.uleb128 0x38
	.long	.LASF152
	.long	.LASF152
	.byte	0x1d
	.byte	0x52
	.byte	0xe
	.uleb128 0x39
	.long	.LASF153
	.long	.LASF153
	.byte	0x20
	.value	0x253
	.byte	0xc
	.uleb128 0x38
	.long	.LASF154
	.long	.LASF154
	.byte	0x10
	.byte	0x42
	.byte	0xc
	.uleb128 0x38
	.long	.LASF155
	.long	.LASF155
	.byte	0x18
	.byte	0x3c
	.byte	0xd
	.uleb128 0x39
	.long	.LASF156
	.long	.LASF156
	.byte	0x20
	.value	0x269
	.byte	0xd
	.uleb128 0x38
	.long	.LASF157
	.long	.LASF157
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x38
	.long	.LASF158
	.long	.LASF158
	.byte	0x21
	.byte	0x8c
	.byte	0xc
	.uleb128 0x39
	.long	.LASF159
	.long	.LASF159
	.byte	0x9
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x35
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST10:
	.quad	.LVL53
	.quad	.LVL55
	.value	0x1
	.byte	0x55
	.quad	.LVL55
	.quad	.LVL85
	.value	0x1
	.byte	0x56
	.quad	.LVL85
	.quad	.LVL95
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL98
	.value	0x1
	.byte	0x56
	.quad	.LVL98
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
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST11:
	.quad	.LVL53
	.quad	.LVL56-1
	.value	0x1
	.byte	0x54
	.quad	.LVL56-1
	.quad	.LVL83
	.value	0x1
	.byte	0x53
	.quad	.LVL83
	.quad	.LVL95
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL98
	.value	0x1
	.byte	0x53
	.quad	.LVL98
	.quad	.LFE136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU136
	.uleb128 .LVU141
	.uleb128 .LVU143
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU149
	.uleb128 .LVU238
	.uleb128 .LVU240
.LLST12:
	.quad	.LVL61
	.quad	.LVL62
	.value	0x1
	.byte	0x50
	.quad	.LVL64
	.quad	.LVL65-1
	.value	0x1
	.byte	0x50
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x50
	.quad	.LVL97
	.quad	.LVL98-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU122
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU190
	.uleb128 .LVU197
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 .LVU234
	.uleb128 .LVU237
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 0
.LLST13:
	.quad	.LVL54
	.quad	.LVL67
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL78
	.value	0x1
	.byte	0x5c
	.quad	.LVL80
	.quad	.LVL81
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL81
	.quad	.LVL91
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL91
	.quad	.LVL92
	.value	0x1
	.byte	0x50
	.quad	.LVL92
	.quad	.LVL94
	.value	0x1
	.byte	0x5c
	.quad	.LVL95
	.quad	.LVL97
	.value	0x1
	.byte	0x5c
	.quad	.LVL97
	.quad	.LVL104
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL104
	.quad	.LFE136
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU158
	.uleb128 .LVU175
	.uleb128 .LVU220
	.uleb128 .LVU224
	.uleb128 .LVU237
	.uleb128 .LVU238
	.uleb128 .LVU243
	.uleb128 .LVU246
.LLST14:
	.quad	.LVL68
	.quad	.LVL73
	.value	0x1
	.byte	0x5e
	.quad	.LVL89
	.quad	.LVL90-1
	.value	0x1
	.byte	0x50
	.quad	.LVL95
	.quad	.LVL97
	.value	0x1
	.byte	0x5e
	.quad	.LVL100
	.quad	.LVL101-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU158
	.uleb128 .LVU175
	.uleb128 .LVU213
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU226
	.uleb128 .LVU237
	.uleb128 .LVU238
	.uleb128 .LVU243
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU251
.LLST15:
	.quad	.LVL68
	.quad	.LVL73
	.value	0x1
	.byte	0x5e
	.quad	.LVL87
	.quad	.LVL88-1
	.value	0x1
	.byte	0x50
	.quad	.LVL88-1
	.quad	.LVL91
	.value	0x1
	.byte	0x5c
	.quad	.LVL95
	.quad	.LVL97
	.value	0x1
	.byte	0x5e
	.quad	.LVL100
	.quad	.LVL102
	.value	0x1
	.byte	0x5c
	.quad	.LVL102
	.quad	.LVL103-1
	.value	0x1
	.byte	0x50
	.quad	.LVL103-1
	.quad	.LVL104
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU157
	.uleb128 .LVU175
	.uleb128 .LVU206
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU231
	.uleb128 .LVU237
	.uleb128 .LVU238
	.uleb128 .LVU240
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 0
.LLST16:
	.quad	.LVL68
	.quad	.LVL73
	.value	0x1
	.byte	0x5f
	.quad	.LVL85
	.quad	.LVL86-1
	.value	0x1
	.byte	0x50
	.quad	.LVL86-1
	.quad	.LVL93
	.value	0x1
	.byte	0x56
	.quad	.LVL95
	.quad	.LVL97
	.value	0x1
	.byte	0x5f
	.quad	.LVL98
	.quad	.LVL99-1
	.value	0x1
	.byte	0x50
	.quad	.LVL99-1
	.quad	.LFE136
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU200
	.uleb128 .LVU231
	.uleb128 .LVU240
	.uleb128 0
.LLST20:
	.quad	.LVL81
	.quad	.LVL93
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL98
	.quad	.LFE136
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU201
	.uleb128 .LVU231
	.uleb128 .LVU240
	.uleb128 0
.LLST21:
	.quad	.LVL81
	.quad	.LVL93
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL98
	.quad	.LFE136
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU227
	.uleb128 .LVU231
	.uleb128 .LVU251
	.uleb128 0
.LLST22:
	.quad	.LVL91
	.quad	.LVL93
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL104
	.quad	.LFE136
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU154
	.uleb128 .LVU163
	.uleb128 .LVU183
	.uleb128 .LVU187
.LLST17:
	.quad	.LVL67
	.quad	.LVL69
	.value	0x1
	.byte	0x50
	.quad	.LVL75
	.quad	.LVL76
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU159
	.uleb128 .LVU164
.LLST18:
	.quad	.LVL68
	.quad	.LVL70
	.value	0xa
	.byte	0x3
	.quad	.LC31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU172
	.uleb128 .LVU175
	.uleb128 .LVU237
	.uleb128 .LVU238
.LLST19:
	.quad	.LVL72
	.quad	.LVL73
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL97
	.value	0x2
	.byte	0x3a
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
	.quad	.LBB41
	.quad	.LBE41
	.quad	.LBB44
	.quad	.LBE44
	.quad	0
	.quad	0
	.quad	.LBB45
	.quad	.LBE45
	.quad	.LBB76
	.quad	.LBE76
	.quad	0
	.quad	0
	.quad	.LBB47
	.quad	.LBE47
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB66
	.quad	.LBE66
	.quad	.LBB67
	.quad	.LBE67
	.quad	0
	.quad	0
	.quad	.LBB53
	.quad	.LBE53
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB61
	.quad	.LBE61
	.quad	.LBB68
	.quad	.LBE68
	.quad	.LBB69
	.quad	.LBE69
	.quad	.LBB70
	.quad	.LBE70
	.quad	0
	.quad	0
	.quad	.LBB62
	.quad	.LBE62
	.quad	.LBB65
	.quad	.LBE65
	.quad	0
	.quad	0
	.quad	.LBB72
	.quad	.LBE72
	.quad	.LBB75
	.quad	.LBE75
	.quad	0
	.quad	0
	.quad	.LBB77
	.quad	.LBE77
	.quad	.LBB90
	.quad	.LBE90
	.quad	.LBB91
	.quad	.LBE91
	.quad	.LBB102
	.quad	.LBE102
	.quad	0
	.quad	0
	.quad	.LBB78
	.quad	.LBE78
	.quad	.LBB82
	.quad	.LBE82
	.quad	.LBB83
	.quad	.LBE83
	.quad	0
	.quad	0
	.quad	.LBB84
	.quad	.LBE84
	.quad	.LBB88
	.quad	.LBE88
	.quad	.LBB89
	.quad	.LBE89
	.quad	0
	.quad	0
	.quad	.LBB92
	.quad	.LBE92
	.quad	.LBB103
	.quad	.LBE103
	.quad	0
	.quad	0
	.quad	.LBB93
	.quad	.LBE93
	.quad	.LBB97
	.quad	.LBE97
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
.LASF135:
	.string	"printf"
.LASF10:
	.string	"__off_t"
.LASF9:
	.string	"__gid_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF107:
	.string	"locale_quoting_style"
.LASF27:
	.string	"_chain"
.LASF96:
	.string	"GETOPT_VERSION_CHAR"
.LASF165:
	.string	"longopts"
.LASF164:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF94:
	.string	"LOG10_TIMESPEC_HZ"
.LASF149:
	.string	"set_program_name"
.LASF33:
	.string	"_shortbuf"
.LASF147:
	.string	"getpwnam"
.LASF66:
	.string	"pw_gid"
.LASF100:
	.string	"shell_quoting_style"
.LASF95:
	.string	"GETOPT_HELP_CHAR"
.LASF21:
	.string	"_IO_buf_base"
.LASF124:
	.string	"NO_GID"
.LASF122:
	.string	"ruid"
.LASF60:
	.string	"long long unsigned int"
.LASF167:
	.string	"putchar_unlocked"
.LASF153:
	.string	"atexit"
.LASF69:
	.string	"pw_shell"
.LASF80:
	.string	"__timezone"
.LASF54:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF111:
	.string	"quoting_style_vals"
.LASF130:
	.string	"program"
.LASF106:
	.string	"escape_quoting_style"
.LASF99:
	.string	"literal_quoting_style"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF86:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF59:
	.string	"_gl_cxxalias_dummy"
.LASF14:
	.string	"_flags"
.LASF37:
	.string	"_wide_data"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF90:
	.string	"program_invocation_short_name"
.LASF104:
	.string	"c_quoting_style"
.LASF45:
	.string	"_IO_codecvt"
.LASF53:
	.string	"_sys_errlist"
.LASF146:
	.string	"__printf_chk"
.LASF89:
	.string	"program_invocation_name"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF93:
	.string	"TIMESPEC_HZ"
.LASF103:
	.string	"shell_escape_always_quoting_style"
.LASF83:
	.string	"timezone"
.LASF148:
	.string	"quote"
.LASF98:
	.string	"program_name"
.LASF155:
	.string	"version_etc"
.LASF44:
	.string	"_IO_marker"
.LASF47:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF145:
	.string	"print_group_list"
.LASF160:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF136:
	.string	"fprintf"
.LASF137:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF151:
	.string	"bindtextdomain"
.LASF19:
	.string	"_IO_write_ptr"
.LASF75:
	.string	"name"
.LASF50:
	.string	"sys_nerr"
.LASF57:
	.string	"uid_t"
.LASF109:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF114:
	.string	"error_one_per_line"
.LASF91:
	.string	"Version"
.LASF23:
	.string	"_IO_save_base"
.LASF123:
	.string	"NO_UID"
.LASF88:
	.string	"environ"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF150:
	.string	"setlocale"
.LASF48:
	.string	"stdout"
.LASF119:
	.string	"optc"
.LASF64:
	.string	"pw_passwd"
.LASF97:
	.string	"version_etc_copyright"
.LASF36:
	.string	"_codecvt"
.LASF70:
	.string	"optarg"
.LASF84:
	.string	"getdate_err"
.LASF71:
	.string	"optind"
.LASF65:
	.string	"pw_uid"
.LASF20:
	.string	"_IO_write_end"
.LASF140:
	.string	"__overflow"
.LASF163:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF112:
	.string	"error_print_progname"
.LASF132:
	.string	"map_prog"
.LASF87:
	.string	"__environ"
.LASF58:
	.string	"time_t"
.LASF139:
	.string	"error"
.LASF51:
	.string	"sys_errlist"
.LASF26:
	.string	"_markers"
.LASF120:
	.string	"rgid"
.LASF68:
	.string	"pw_dir"
.LASF105:
	.string	"c_maybe_quoting_style"
.LASF125:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF131:
	.string	"node"
.LASF158:
	.string	"strncmp"
.LASF5:
	.string	"short int"
.LASF74:
	.string	"option"
.LASF116:
	.string	"quote_quoting_options"
.LASF161:
	.string	"src/groups.c"
.LASF77:
	.string	"flag"
.LASF52:
	.string	"_sys_nerr"
.LASF32:
	.string	"_vtable_offset"
.LASF81:
	.string	"tzname"
.LASF62:
	.string	"passwd"
.LASF43:
	.string	"FILE"
.LASF92:
	.string	"exit_failure"
.LASF156:
	.string	"exit"
.LASF157:
	.string	"__fprintf_chk"
.LASF102:
	.string	"shell_escape_quoting_style"
.LASF138:
	.string	"dcgettext"
.LASF110:
	.string	"quoting_style_args"
.LASF73:
	.string	"optopt"
.LASF82:
	.string	"daylight"
.LASF121:
	.string	"egid"
.LASF55:
	.string	"long double"
.LASF13:
	.string	"char"
.LASF101:
	.string	"shell_always_quoting_style"
.LASF67:
	.string	"pw_gecos"
.LASF108:
	.string	"clocale_quoting_style"
.LASF141:
	.string	"__errno_location"
.LASF72:
	.string	"opterr"
.LASF8:
	.string	"__uid_t"
.LASF11:
	.string	"__off64_t"
.LASF115:
	.string	"quoting_options"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF85:
	.string	"_sys_siglist"
.LASF134:
	.string	"__fmt"
.LASF129:
	.string	"infomap"
.LASF76:
	.string	"has_arg"
.LASF127:
	.string	"usage"
.LASF40:
	.string	"__pad5"
.LASF12:
	.string	"__time_t"
.LASF42:
	.string	"_unused2"
.LASF49:
	.string	"stderr"
.LASF118:
	.string	"argv"
.LASF152:
	.string	"textdomain"
.LASF79:
	.string	"__daylight"
.LASF63:
	.string	"pw_name"
.LASF128:
	.string	"status"
.LASF162:
	.string	"/root/coreutils"
.LASF144:
	.string	"getgid"
.LASF39:
	.string	"_freeres_buf"
.LASF142:
	.string	"getuid"
.LASF24:
	.string	"_IO_backup_base"
.LASF56:
	.string	"gid_t"
.LASF113:
	.string	"error_message_count"
.LASF133:
	.string	"lc_messages"
.LASF117:
	.string	"argc"
.LASF38:
	.string	"_freeres_list"
.LASF143:
	.string	"getegid"
.LASF46:
	.string	"_IO_wide_data"
.LASF154:
	.string	"getopt_long"
.LASF159:
	.string	"fputs_unlocked"
.LASF78:
	.string	"__tzname"
.LASF126:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
.LASF166:
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
