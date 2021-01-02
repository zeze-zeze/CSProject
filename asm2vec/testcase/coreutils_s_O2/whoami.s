	.file	"whoami.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"whoami"
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
	.string	"Print the user name associated with the current effective user ID.\nSame as id -un.\n\n"
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
	.file 1 "src/whoami.c"
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
.LBB30:
.LBB31:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE31:
.LBE30:
	.loc 1 41 5 view .LVU11
	movq	%rax, %rdx
.LVL3:
.LBB33:
.LBI30:
	.loc 2 98 1 is_stmt 1 view .LVU12
.LBB32:
	.loc 2 100 3 view .LVU13
	.loc 2 100 10 is_stmt 0 view .LVU14
	xorl	%eax, %eax
.LVL4:
	.loc 2 100 10 view .LVU15
	call	__fprintf_chk@PLT
.LVL5:
.L3:
	.loc 2 100 10 view .LVU16
.LBE32:
.LBE33:
	.loc 1 54 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 44 7 view .LVU18
	.loc 1 44 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB34:
.LBB35:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC14(%rip), %rbx
.LBE35:
.LBE34:
	.loc 1 44 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB61:
.LBB62:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rdx
	movl	$1, %edi
.LBE62:
.LBE61:
	.loc 1 44 15 view .LVU23
	movq	%rax, %rsi
.LVL9:
.LBB64:
.LBI61:
	.loc 2 105 1 is_stmt 1 view .LVU24
.LBB63:
	.loc 2 107 3 view .LVU25
	.loc 2 107 10 is_stmt 0 view .LVU26
	xorl	%eax, %eax
.LVL10:
	.loc 2 107 10 view .LVU27
	call	__printf_chk@PLT
.LVL11:
	.loc 2 107 10 view .LVU28
.LBE63:
.LBE64:
	.loc 1 45 7 is_stmt 1 view .LVU29
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
	.loc 1 50 7 view .LVU30
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
	.loc 1 51 7 view .LVU31
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
	.loc 1 52 7 view .LVU32
.LBB65:
.LBI34:
	.loc 3 634 1 view .LVU33
.LBB60:
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
.LBB36:
.LBB37:
	.loc 2 107 10 view .LVU55
	leaq	.LC18(%rip), %rcx
	movl	$1, %edi
	leaq	.LC19(%rip), %rdx
.LBE37:
.LBE36:
	.loc 3 655 11 view .LVU56
	movq	%rax, %rsi
.LVL23:
.LBB41:
.LBI36:
	.loc 2 105 1 is_stmt 1 view .LVU57
.LBB38:
	.loc 2 107 3 view .LVU58
	.loc 2 107 10 is_stmt 0 view .LVU59
	xorl	%eax, %eax
.LVL24:
	.loc 2 107 10 view .LVU60
	call	__printf_chk@PLT
.LVL25:
	.loc 2 107 10 view .LVU61
.LBE38:
.LBE41:
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
.LBB42:
.LBB43:
	.loc 2 107 10 view .LVU70
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	$1, %edi
.LBE43:
.LBE42:
	.loc 3 669 11 view .LVU71
	movq	%rax, %rsi
.LVL31:
.LBB49:
.LBI42:
	.loc 2 105 1 is_stmt 1 view .LVU72
.LBB44:
	.loc 2 107 3 view .LVU73
	.loc 2 107 10 is_stmt 0 view .LVU74
	xorl	%eax, %eax
.LVL32:
	.loc 2 107 10 view .LVU75
.LBE44:
.LBE49:
	.loc 3 671 3 view .LVU76
	leaq	.LC1(%rip), %r13
.LBB50:
.LBB45:
	.loc 2 107 10 view .LVU77
	call	__printf_chk@PLT
.LVL33:
	.loc 2 107 10 view .LVU78
.LBE45:
.LBE50:
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
.LBB51:
.LBB52:
	.loc 2 107 10 view .LVU81
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE52:
.LBE51:
	.loc 3 671 11 view .LVU82
	movq	%rax, %rsi
.LVL35:
.LBB54:
.LBI51:
	.loc 2 105 1 is_stmt 1 view .LVU83
.LBB53:
	.loc 2 107 3 view .LVU84
	.loc 2 107 10 is_stmt 0 view .LVU85
	xorl	%eax, %eax
.LVL36:
	.loc 2 107 10 view .LVU86
	call	__printf_chk@PLT
.LVL37:
	.loc 2 107 10 view .LVU87
.LBE53:
.LBE54:
	.loc 3 673 1 view .LVU88
	jmp	.L3
.LVL38:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU89
	.loc 3 655 11 is_stmt 0 view .LVU90
	call	dcgettext@PLT
.LVL39:
.LBB55:
.LBB39:
	.loc 2 107 10 view .LVU91
	leaq	.LC18(%rip), %rcx
	movl	$1, %edi
	leaq	.LC19(%rip), %rdx
.LBE39:
.LBE55:
	.loc 3 655 11 view .LVU92
	movq	%rax, %rsi
.LVL40:
.LBB56:
	.loc 2 105 1 is_stmt 1 view .LVU93
.LBB40:
	.loc 2 107 3 view .LVU94
	.loc 2 107 10 is_stmt 0 view .LVU95
	xorl	%eax, %eax
.LVL41:
	.loc 2 107 10 view .LVU96
	call	__printf_chk@PLT
.LVL42:
	.loc 2 107 10 view .LVU97
.LBE40:
.LBE56:
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
.LBB57:
.LBB46:
	.loc 2 107 10 view .LVU106
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	movl	$1, %edi
.LBE46:
.LBE57:
	.loc 3 669 11 view .LVU107
	movq	%rax, %rsi
.LVL47:
.LBB58:
	.loc 2 105 1 is_stmt 1 view .LVU108
.LBB47:
	.loc 2 107 3 view .LVU109
	.loc 2 107 10 is_stmt 0 view .LVU110
	xorl	%eax, %eax
.LVL48:
	.loc 2 107 10 view .LVU111
.LBE47:
.LBE58:
	.loc 3 646 15 view .LVU112
	leaq	.LC0(%rip), %r12
.LBB59:
.LBB48:
	.loc 2 107 10 view .LVU113
	call	__printf_chk@PLT
.LVL49:
	.loc 2 107 10 view .LVU114
.LBE48:
.LBE59:
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
.LBE60:
.LBE65:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC24:
	.string	"/usr/local/share/locale"
.LC25:
	.string	"Richard Mlynarik"
.LC26:
	.string	"extra operand %s"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"cannot find name for user ID %lu"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL53:
.LFB136:
	.loc 1 59 1 view -0
	.cfi_startproc
	.loc 1 59 1 is_stmt 0 view .LVU119
	endbr64
	.loc 1 60 3 is_stmt 1 view .LVU120
	.loc 1 61 3 view .LVU121
	.loc 1 62 3 view .LVU122
.LVL54:
	.loc 1 64 33 view .LVU123
	.loc 1 65 3 view .LVU124
	.loc 1 59 1 is_stmt 0 view .LVU125
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 65 3 view .LVU126
	movq	(%rsi), %rdi
.LVL55:
	.loc 1 59 1 view .LVU127
	movq	%rsi, %rbx
	.loc 1 65 3 view .LVU128
	call	set_program_name@PLT
.LVL56:
	.loc 1 66 3 is_stmt 1 view .LVU129
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL57:
	.loc 1 67 3 view .LVU130
	leaq	.LC24(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	bindtextdomain@PLT
.LVL58:
	.loc 1 68 3 view .LVU131
	leaq	.LC10(%rip), %rdi
	call	textdomain@PLT
.LVL59:
	.loc 1 70 3 view .LVU132
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL60:
	.loc 1 72 3 view .LVU133
	movl	$1, %r9d
	movq	%rbx, %rsi
	movl	%ebp, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	leaq	.LC25(%rip), %rax
	movq	Version(%rip), %r8
	leaq	.LC19(%rip), %rcx
	pushq	$0
	.cfi_def_cfa_offset 48
	leaq	.LC0(%rip), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 56
	leaq	usage(%rip), %rax
	pushq	%rax
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	call	parse_gnu_standard_options_only@PLT
.LVL61:
	.loc 1 76 3 view .LVU134
	.loc 1 76 14 is_stmt 0 view .LVU135
	movslq	optind(%rip), %rax
	.loc 1 76 6 view .LVU136
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	cmpl	%ebp, %eax
	jne	.L38
	.loc 1 82 3 is_stmt 1 view .LVU137
	call	__errno_location@PLT
.LVL62:
	.loc 1 82 9 is_stmt 0 view .LVU138
	movl	$0, (%rax)
	.loc 1 83 3 is_stmt 1 view .LVU139
	.loc 1 82 3 is_stmt 0 view .LVU140
	movq	%rax, %rbp
.LVL63:
	.loc 1 83 9 view .LVU141
	call	geteuid@PLT
.LVL64:
	movl	%eax, %ebx
.LVL65:
	.loc 1 84 3 is_stmt 1 view .LVU142
	.loc 1 84 39 is_stmt 0 view .LVU143
	cmpl	$-1, %eax
	jne	.L32
	.loc 1 84 23 discriminator 2 view .LVU144
	cmpl	$0, 0(%rbp)
	jne	.L33
.L32:
	.loc 1 84 41 discriminator 3 view .LVU145
	movl	%ebx, %edi
	call	getpwuid@PLT
.LVL66:
	.loc 1 85 3 is_stmt 1 discriminator 3 view .LVU146
	.loc 1 85 6 is_stmt 0 discriminator 3 view .LVU147
	testq	%rax, %rax
	je	.L33
	.loc 1 88 3 is_stmt 1 view .LVU148
	movq	(%rax), %rdi
	call	puts@PLT
.LVL67:
	.loc 1 89 3 view .LVU149
	.loc 1 90 1 is_stmt 0 view .LVU150
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL68:
	.loc 1 90 1 view .LVU151
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL69:
.L33:
	.cfi_restore_state
.LBB66:
	.loc 1 86 5 is_stmt 1 view .LVU152
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL70:
	movl	0(%rbp), %esi
	movl	%ebx, %ecx
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL71:
.L38:
	.loc 1 86 5 is_stmt 0 view .LVU153
.LBE66:
	.loc 1 78 7 is_stmt 1 view .LVU154
	movq	(%rbx,%rax,8), %rdi
	call	quote@PLT
.LVL72:
	.loc 1 78 20 is_stmt 0 view .LVU155
	movl	$5, %edx
	leaq	.LC26(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 78 7 view .LVU156
	movq	%rax, %r12
	.loc 1 78 20 view .LVU157
	call	dcgettext@PLT
.LVL73:
	.loc 1 78 7 view .LVU158
	xorl	%edi, %edi
	movq	%r12, %rcx
	xorl	%esi, %esi
	.loc 1 78 20 view .LVU159
	movq	%rax, %rdx
	.loc 1 78 7 view .LVU160
	xorl	%eax, %eax
	call	error@PLT
.LVL74:
	.loc 1 79 7 is_stmt 1 view .LVU161
	movl	$1, %edi
	call	usage
.LVL75:
	.cfi_endproc
.LFE136:
	.size	main, .-main
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 11 "./lib/sys/select.h"
	.file 12 "/usr/include/pwd.h"
	.file 13 "/usr/include/time.h"
	.file 14 "/usr/include/signal.h"
	.file 15 "/usr/include/unistd.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 17 "/usr/include/errno.h"
	.file 18 "src/version.h"
	.file 19 "./lib/exitfail.h"
	.file 20 "./lib/version-etc.h"
	.file 21 "./lib/progname.h"
	.file 22 "./lib/quotearg.h"
	.file 23 "./lib/error.h"
	.file 24 "./lib/quote.h"
	.file 25 "/usr/include/libintl.h"
	.file 26 "/usr/include/locale.h"
	.file 27 "/usr/include/stdlib.h"
	.file 28 "./lib/long-options.h"
	.file 29 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xeb9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF138
	.byte	0xc
	.long	.LASF139
	.long	.LASF140
	.long	.Ldebug_ranges0+0x180
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
	.byte	0x92
	.byte	0x19
	.long	0x3c
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0x3c
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x99
	.byte	0x1b
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
	.long	.LASF58
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x23d
	.uleb128 0xa
	.long	.LASF13
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0xa4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0xa4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0xa4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0xa4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0xa4
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0xa4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0xa4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0xa4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0xa4
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0xa4
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0xa4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x256
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x25c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x8c
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x262
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x272
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x98
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x27d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x288
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x25c
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x28e
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xb6
	.uleb128 0xb
	.long	.LASF141
	.byte	0x6
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
	.byte	0x8
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
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x2ba
	.uleb128 0x10
	.long	.LASF48
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x2ba
	.uleb128 0x10
	.long	.LASF49
	.byte	0x9
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
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x2f4
	.uleb128 0x10
	.long	.LASF51
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF52
	.byte	0x9
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
	.byte	0xa
	.byte	0x4f
	.byte	0x11
	.long	0x74
	.uleb128 0x12
	.long	.LASF56
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0x9
	.long	.LASF59
	.byte	0x30
	.byte	0xc
	.byte	0x31
	.byte	0x8
	.long	0x3b4
	.uleb128 0xa
	.long	.LASF60
	.byte	0xc
	.byte	0x33
	.byte	0x9
	.long	0xa4
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0xc
	.byte	0x34
	.byte	0x9
	.long	0xa4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF62
	.byte	0xc
	.byte	0x36
	.byte	0xb
	.long	0x74
	.byte	0x10
	.uleb128 0xa
	.long	.LASF63
	.byte	0xc
	.byte	0x37
	.byte	0xb
	.long	0x80
	.byte	0x14
	.uleb128 0xa
	.long	.LASF64
	.byte	0xc
	.byte	0x38
	.byte	0x9
	.long	0xa4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.long	0xa4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x3a
	.byte	0x9
	.long	0xa4
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.long	0xa4
	.long	0x3c4
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3b4
	.uleb128 0x10
	.long	.LASF68
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF69
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0x10
	.long	.LASF70
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3b4
	.uleb128 0x10
	.long	.LASF71
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF72
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x12
	.long	.LASF73
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x419
	.uleb128 0xd
	.long	0x2a4
	.long	0x430
	.uleb128 0xe
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x420
	.uleb128 0x12
	.long	.LASF74
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x430
	.uleb128 0x12
	.long	.LASF75
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x430
	.uleb128 0x12
	.long	.LASF76
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x45c
	.uleb128 0x7
	.byte	0x8
	.long	0xa4
	.uleb128 0x12
	.long	.LASF77
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x45c
	.uleb128 0x10
	.long	.LASF78
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.long	0xa4
	.uleb128 0x10
	.long	.LASF79
	.byte	0x10
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF80
	.byte	0x10
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF81
	.byte	0x10
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF82
	.byte	0x11
	.byte	0x2d
	.byte	0xe
	.long	0xa4
	.uleb128 0x10
	.long	.LASF83
	.byte	0x11
	.byte	0x2e
	.byte	0xe
	.long	0xa4
	.uleb128 0x10
	.long	.LASF84
	.byte	0x12
	.byte	0x1
	.byte	0x14
	.long	0x29e
	.uleb128 0x10
	.long	.LASF85
	.byte	0x13
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0xd
	.long	0xb1
	.long	0x4da
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x4cf
	.uleb128 0x10
	.long	.LASF86
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x4da
	.uleb128 0x10
	.long	.LASF87
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x29e
	.uleb128 0x14
	.long	.LASF142
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x54c
	.uleb128 0x15
	.long	.LASF88
	.byte	0
	.uleb128 0x15
	.long	.LASF89
	.byte	0x1
	.uleb128 0x15
	.long	.LASF90
	.byte	0x2
	.uleb128 0x15
	.long	.LASF91
	.byte	0x3
	.uleb128 0x15
	.long	.LASF92
	.byte	0x4
	.uleb128 0x15
	.long	.LASF93
	.byte	0x5
	.uleb128 0x15
	.long	.LASF94
	.byte	0x6
	.uleb128 0x15
	.long	.LASF95
	.byte	0x7
	.uleb128 0x15
	.long	.LASF96
	.byte	0x8
	.uleb128 0x15
	.long	.LASF97
	.byte	0x9
	.uleb128 0x15
	.long	.LASF98
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x4f7
	.uleb128 0x12
	.long	.LASF99
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x2f4
	.uleb128 0xd
	.long	0x54c
	.long	0x569
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x55e
	.uleb128 0x12
	.long	.LASF100
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x569
	.uleb128 0x10
	.long	.LASF101
	.byte	0x17
	.byte	0x32
	.byte	0xf
	.long	0x41a
	.uleb128 0x10
	.long	.LASF102
	.byte	0x17
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF103
	.byte	0x17
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0xc
	.long	.LASF104
	.uleb128 0x10
	.long	.LASF105
	.byte	0x18
	.byte	0x19
	.byte	0x1f
	.long	0x59f
	.uleb128 0x16
	.long	.LASF108
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x61
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x7fd
	.uleb128 0x17
	.long	.LASF106
	.byte	0x1
	.byte	0x3a
	.byte	0xb
	.long	0x61
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x17
	.long	.LASF107
	.byte	0x1
	.byte	0x3a
	.byte	0x18
	.long	0x45c
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x18
	.string	"pw"
	.byte	0x1
	.byte	0x3c
	.byte	0x12
	.long	0x7fd
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x18
	.string	"uid"
	.byte	0x1
	.byte	0x3d
	.byte	0x9
	.long	0x32b
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x19
	.long	.LASF143
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.long	0x32b
	.sleb128 -1
	.uleb128 0x1a
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.long	0x68c
	.uleb128 0x1b
	.quad	.LVL70
	.long	0xddf
	.long	0x66c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1d
	.quad	.LVL71
	.long	0xdeb
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL56
	.long	0xdf7
	.uleb128 0x1b
	.quad	.LVL57
	.long	0xe03
	.long	0x6bd
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x1b
	.quad	.LVL58
	.long	0xe0f
	.long	0x6e9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.uleb128 0x1b
	.quad	.LVL59
	.long	0xe1b
	.long	0x708
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.uleb128 0x1e
	.quad	.LVL60
	.long	0xe27
	.uleb128 0x1b
	.quad	.LVL61
	.long	0xe34
	.long	0x752
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.quad	.LVL62
	.long	0xe40
	.uleb128 0x1e
	.quad	.LVL64
	.long	0xe4c
	.uleb128 0x1b
	.quad	.LVL66
	.long	0xe59
	.long	0x784
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL67
	.long	0xe65
	.uleb128 0x1e
	.quad	.LVL72
	.long	0xe72
	.uleb128 0x1b
	.quad	.LVL73
	.long	0xddf
	.long	0x7c7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL74
	.long	0xdeb
	.long	0x7e9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL75
	.long	0x803
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x34b
	.uleb128 0x1f
	.long	.LASF109
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xcfa
	.uleb128 0x17
	.long	.LASF110
	.byte	0x1
	.byte	0x26
	.byte	0xc
	.long	0x61
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x20
	.long	0xdb4
	.quad	.LBI30
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.long	0x882
	.uleb128 0x21
	.long	0xdd1
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x21
	.long	0xdc5
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1d
	.quad	.LVL5
	.long	0xe7e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xcfa
	.quad	.LBI34
	.byte	.LVU33
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x34
	.byte	0x7
	.long	0xb95
	.uleb128 0x22
	.long	0xd08
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x24
	.long	0xd45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.long	0xd52
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x25
	.long	0xd5f
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x25
	.long	0xd6c
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x26
	.long	0xd95
	.quad	.LBI36
	.byte	.LVU57
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0x966
	.uleb128 0x21
	.long	0xda6
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1b
	.quad	.LVL25
	.long	0xe8a
	.long	0x938
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.uleb128 0x1d
	.quad	.LVL42
	.long	0xe8a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xd95
	.quad	.LBI42
	.byte	.LVU72
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0x9de
	.uleb128 0x21
	.long	0xda6
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x1b
	.quad	.LVL33
	.long	0xe8a
	.long	0x9b7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL49
	.long	0xe8a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xd95
	.quad	.LBI51
	.byte	.LVU83
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xa25
	.uleb128 0x21
	.long	0xda6
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x1d
	.quad	.LVL37
	.long	0xe8a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL22
	.long	0xddf
	.long	0xa4e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL26
	.long	0xe03
	.long	0xa6a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.quad	.LVL28
	.long	0xe96
	.long	0xa8e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1b
	.quad	.LVL30
	.long	0xddf
	.long	0xab7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL34
	.long	0xddf
	.long	0xae0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1e
	.quad	.LVL39
	.long	0xddf
	.uleb128 0x1b
	.quad	.LVL43
	.long	0xe03
	.long	0xb09
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.quad	.LVL45
	.long	0xe96
	.long	0xb2d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1b
	.quad	.LVL46
	.long	0xddf
	.long	0xb56
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL51
	.long	0xddf
	.long	0xb7f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1d
	.quad	.LVL52
	.long	0xea2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xd95
	.quad	.LBI61
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x2c
	.byte	0x7
	.long	0xbd5
	.uleb128 0x21
	.long	0xda6
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x1d
	.quad	.LVL11
	.long	0xe8a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL2
	.long	0xddf
	.long	0xbfe
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL6
	.long	0xeaf
	.long	0xc16
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL8
	.long	0xddf
	.long	0xc3a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x1b
	.quad	.LVL12
	.long	0xddf
	.long	0xc63
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL13
	.long	0xea2
	.long	0xc7b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL14
	.long	0xddf
	.long	0xca4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL15
	.long	0xea2
	.long	0xcbc
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL16
	.long	0xddf
	.long	0xce5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1d
	.quad	.LVL17
	.long	0xea2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF144
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0xd7a
	.uleb128 0x28
	.long	.LASF112
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x29e
	.uleb128 0x29
	.long	.LASF111
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0xd40
	.uleb128 0x2a
	.long	.LASF112
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x29e
	.byte	0
	.uleb128 0x2a
	.long	.LASF113
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x29e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xd15
	.uleb128 0x2b
	.long	.LASF111
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0xd8a
	.uleb128 0x2b
	.long	.LASF113
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x29e
	.uleb128 0x2b
	.long	.LASF114
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0xd8f
	.uleb128 0x2b
	.long	.LASF115
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x29e
	.byte	0
	.uleb128 0xd
	.long	0xd40
	.long	0xd8a
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xd7a
	.uleb128 0x7
	.byte	0x8
	.long	0xd40
	.uleb128 0x2c
	.long	.LASF117
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0xdb4
	.uleb128 0x2d
	.long	.LASF116
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x2a9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.long	.LASF118
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0xddf
	.uleb128 0x2d
	.long	.LASF119
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2c0
	.uleb128 0x2d
	.long	.LASF116
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x2a9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.long	.LASF120
	.long	.LASF120
	.byte	0x19
	.byte	0x33
	.byte	0xe
	.uleb128 0x2f
	.long	.LASF121
	.long	.LASF121
	.byte	0x17
	.byte	0x28
	.byte	0xd
	.uleb128 0x2f
	.long	.LASF122
	.long	.LASF122
	.byte	0x15
	.byte	0x25
	.byte	0xd
	.uleb128 0x2f
	.long	.LASF123
	.long	.LASF123
	.byte	0x1a
	.byte	0x7a
	.byte	0xe
	.uleb128 0x2f
	.long	.LASF124
	.long	.LASF124
	.byte	0x19
	.byte	0x56
	.byte	0xe
	.uleb128 0x2f
	.long	.LASF125
	.long	.LASF125
	.byte	0x19
	.byte	0x52
	.byte	0xe
	.uleb128 0x30
	.long	.LASF126
	.long	.LASF126
	.byte	0x1b
	.value	0x253
	.byte	0xc
	.uleb128 0x2f
	.long	.LASF127
	.long	.LASF127
	.byte	0x1c
	.byte	0x21
	.byte	0x6
	.uleb128 0x2f
	.long	.LASF128
	.long	.LASF128
	.byte	0x11
	.byte	0x25
	.byte	0xd
	.uleb128 0x30
	.long	.LASF129
	.long	.LASF129
	.byte	0xf
	.value	0x2a6
	.byte	0x10
	.uleb128 0x2f
	.long	.LASF130
	.long	.LASF130
	.byte	0xc
	.byte	0x6e
	.byte	0x17
	.uleb128 0x30
	.long	.LASF131
	.long	.LASF131
	.byte	0x8
	.value	0x278
	.byte	0xc
	.uleb128 0x2f
	.long	.LASF132
	.long	.LASF132
	.byte	0x18
	.byte	0x2c
	.byte	0xd
	.uleb128 0x2f
	.long	.LASF133
	.long	.LASF133
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x2f
	.long	.LASF134
	.long	.LASF134
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x2f
	.long	.LASF135
	.long	.LASF135
	.byte	0x1d
	.byte	0x8c
	.byte	0xc
	.uleb128 0x30
	.long	.LASF136
	.long	.LASF136
	.byte	0x8
	.value	0x296
	.byte	0xc
	.uleb128 0x30
	.long	.LASF137
	.long	.LASF137
	.byte	0x1b
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 0
.LLST10:
	.quad	.LVL53
	.quad	.LVL55
	.value	0x1
	.byte	0x55
	.quad	.LVL55
	.quad	.LVL63
	.value	0x1
	.byte	0x56
	.quad	.LVL63
	.quad	.LVL71
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL71
	.quad	.LFE136
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 0
.LLST11:
	.quad	.LVL53
	.quad	.LVL56-1
	.value	0x1
	.byte	0x54
	.quad	.LVL56-1
	.quad	.LVL65
	.value	0x1
	.byte	0x53
	.quad	.LVL65
	.quad	.LVL71
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL71
	.quad	.LFE136
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU146
	.uleb128 .LVU149
.LLST12:
	.quad	.LVL66
	.quad	.LVL67-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU142
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU151
	.uleb128 .LVU152
	.uleb128 .LVU153
.LLST13:
	.quad	.LVL65
	.quad	.LVL66-1
	.value	0x1
	.byte	0x50
	.quad	.LVL66-1
	.quad	.LVL68
	.value	0x1
	.byte	0x53
	.quad	.LVL69
	.quad	.LVL71
	.value	0x1
	.byte	0x53
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
	.quad	.LBB30
	.quad	.LBE30
	.quad	.LBB33
	.quad	.LBE33
	.quad	0
	.quad	0
	.quad	.LBB34
	.quad	.LBE34
	.quad	.LBB65
	.quad	.LBE65
	.quad	0
	.quad	0
	.quad	.LBB36
	.quad	.LBE36
	.quad	.LBB41
	.quad	.LBE41
	.quad	.LBB55
	.quad	.LBE55
	.quad	.LBB56
	.quad	.LBE56
	.quad	0
	.quad	0
	.quad	.LBB42
	.quad	.LBE42
	.quad	.LBB49
	.quad	.LBE49
	.quad	.LBB50
	.quad	.LBE50
	.quad	.LBB57
	.quad	.LBE57
	.quad	.LBB58
	.quad	.LBE58
	.quad	.LBB59
	.quad	.LBE59
	.quad	0
	.quad	0
	.quad	.LBB51
	.quad	.LBE51
	.quad	.LBB54
	.quad	.LBE54
	.quad	0
	.quad	0
	.quad	.LBB61
	.quad	.LBE61
	.quad	.LBB64
	.quad	.LBE64
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
.LASF10:
	.string	"__off_t"
.LASF9:
	.string	"__gid_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF96:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF142:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF122:
	.string	"set_program_name"
.LASF32:
	.string	"_shortbuf"
.LASF63:
	.string	"pw_gid"
.LASF89:
	.string	"shell_quoting_style"
.LASF20:
	.string	"_IO_buf_base"
.LASF57:
	.string	"long long unsigned int"
.LASF127:
	.string	"parse_gnu_standard_options_only"
.LASF35:
	.string	"_codecvt"
.LASF126:
	.string	"atexit"
.LASF66:
	.string	"pw_shell"
.LASF69:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF100:
	.string	"quoting_style_vals"
.LASF112:
	.string	"program"
.LASF95:
	.string	"escape_quoting_style"
.LASF88:
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
.LASF139:
	.string	"src/whoami.c"
.LASF13:
	.string	"_flags"
.LASF36:
	.string	"_wide_data"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF83:
	.string	"program_invocation_short_name"
.LASF93:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF134:
	.string	"__printf_chk"
.LASF82:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF92:
	.string	"shell_escape_always_quoting_style"
.LASF72:
	.string	"timezone"
.LASF132:
	.string	"quote"
.LASF87:
	.string	"program_name"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF138:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF118:
	.string	"fprintf"
.LASF119:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF124:
	.string	"bindtextdomain"
.LASF18:
	.string	"_IO_write_ptr"
.LASF129:
	.string	"geteuid"
.LASF49:
	.string	"sys_nerr"
.LASF55:
	.string	"uid_t"
.LASF98:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF103:
	.string	"error_one_per_line"
.LASF84:
	.string	"Version"
.LASF130:
	.string	"getpwuid"
.LASF22:
	.string	"_IO_save_base"
.LASF143:
	.string	"NO_UID"
.LASF77:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF123:
	.string	"setlocale"
.LASF47:
	.string	"stdout"
.LASF61:
	.string	"pw_passwd"
.LASF86:
	.string	"version_etc_copyright"
.LASF131:
	.string	"puts"
.LASF78:
	.string	"optarg"
.LASF114:
	.string	"map_prog"
.LASF73:
	.string	"getdate_err"
.LASF79:
	.string	"optind"
.LASF62:
	.string	"pw_uid"
.LASF19:
	.string	"_IO_write_end"
.LASF141:
	.string	"_IO_lock_t"
.LASF58:
	.string	"_IO_FILE"
.LASF101:
	.string	"error_print_progname"
.LASF76:
	.string	"__environ"
.LASF68:
	.string	"__daylight"
.LASF121:
	.string	"error"
.LASF50:
	.string	"sys_errlist"
.LASF25:
	.string	"_markers"
.LASF65:
	.string	"pw_dir"
.LASF94:
	.string	"c_maybe_quoting_style"
.LASF2:
	.string	"unsigned char"
.LASF113:
	.string	"node"
.LASF135:
	.string	"strncmp"
.LASF5:
	.string	"short int"
.LASF105:
	.string	"quote_quoting_options"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF70:
	.string	"tzname"
.LASF59:
	.string	"passwd"
.LASF42:
	.string	"FILE"
.LASF85:
	.string	"exit_failure"
.LASF137:
	.string	"exit"
.LASF133:
	.string	"__fprintf_chk"
.LASF91:
	.string	"shell_escape_quoting_style"
.LASF120:
	.string	"dcgettext"
.LASF99:
	.string	"quoting_style_args"
.LASF81:
	.string	"optopt"
.LASF71:
	.string	"daylight"
.LASF54:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF90:
	.string	"shell_always_quoting_style"
.LASF64:
	.string	"pw_gecos"
.LASF97:
	.string	"clocale_quoting_style"
.LASF128:
	.string	"__errno_location"
.LASF80:
	.string	"opterr"
.LASF8:
	.string	"__uid_t"
.LASF11:
	.string	"__off64_t"
.LASF104:
	.string	"quoting_options"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"_sys_siglist"
.LASF116:
	.string	"__fmt"
.LASF111:
	.string	"infomap"
.LASF109:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF107:
	.string	"argv"
.LASF125:
	.string	"textdomain"
.LASF60:
	.string	"pw_name"
.LASF110:
	.string	"status"
.LASF140:
	.string	"/root/coreutils"
.LASF38:
	.string	"_freeres_buf"
.LASF23:
	.string	"_IO_backup_base"
.LASF102:
	.string	"error_message_count"
.LASF115:
	.string	"lc_messages"
.LASF106:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF136:
	.string	"fputs_unlocked"
.LASF67:
	.string	"__tzname"
.LASF108:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF144:
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
