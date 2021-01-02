	.file	"nproc.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"nproc"
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
	.string	"Print the number of processing units available to the current process,\nwhich may be less than the number of online processors\n\n"
	.align 8
.LC6:
	.string	"      --all      print the number of installed processors\n      --ignore=N  if possible, exclude N processing units\n"
	.align 8
.LC7:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC8:
	.string	"      --version  output version information and exit\n"
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
	.file 1 "src/nproc.c"
	.loc 1 52 1 view -0
	.cfi_startproc
	.loc 1 52 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 54 5 view .LVU2
	movl	$5, %edx
	.loc 1 52 1 view .LVU3
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
	.loc 1 52 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 53 3 is_stmt 1 view .LVU5
	.loc 1 53 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 54 5 is_stmt 1 view .LVU7
	.loc 1 54 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 54 5 is_stmt 0 view .LVU9
	call	dcgettext@PLT
.LVL2:
.LBB33:
.LBB34:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE34:
.LBE33:
	.loc 1 54 5 view .LVU11
	movq	%rax, %rdx
.LVL3:
.LBB36:
.LBI33:
	.loc 2 98 1 is_stmt 1 view .LVU12
.LBB35:
	.loc 2 100 3 view .LVU13
	.loc 2 100 10 is_stmt 0 view .LVU14
	xorl	%eax, %eax
.LVL4:
	.loc 2 100 10 view .LVU15
	call	__fprintf_chk@PLT
.LVL5:
.L3:
	.loc 2 100 10 view .LVU16
.LBE35:
.LBE36:
	.loc 1 72 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 57 7 view .LVU18
	.loc 1 57 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB37:
.LBB38:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC15(%rip), %rbx
.LBE38:
.LBE37:
	.loc 1 57 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB64:
.LBB65:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rdx
	movl	$1, %edi
.LBE65:
.LBE64:
	.loc 1 57 15 view .LVU23
	movq	%rax, %rsi
.LVL9:
.LBB67:
.LBI64:
	.loc 2 105 1 is_stmt 1 view .LVU24
.LBB66:
	.loc 2 107 3 view .LVU25
	.loc 2 107 10 is_stmt 0 view .LVU26
	xorl	%eax, %eax
.LVL10:
	.loc 2 107 10 view .LVU27
	call	__printf_chk@PLT
.LVL11:
	.loc 2 107 10 view .LVU28
.LBE66:
.LBE67:
	.loc 1 58 7 is_stmt 1 view .LVU29
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
	.loc 1 63 7 view .LVU30
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
	.loc 1 68 7 view .LVU31
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
	.loc 1 69 7 view .LVU32
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
	.loc 1 70 7 view .LVU33
.LBB68:
.LBI37:
	.loc 3 634 1 view .LVU34
.LBB63:
	.loc 3 636 3 view .LVU35
	.loc 3 636 67 is_stmt 0 view .LVU36
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
	.loc 3 646 3 is_stmt 1 view .LVU37
.LVL20:
	.loc 3 647 3 view .LVU38
	.loc 3 649 3 view .LVU39
	.loc 3 649 9 view .LVU40
	.loc 3 636 67 is_stmt 0 view .LVU41
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
	.loc 3 647 25 view .LVU42
	movq	%rsp, %rax
.LVL21:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 3 650 5 is_stmt 1 view .LVU43
	.loc 3 649 18 is_stmt 0 view .LVU44
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU45
	addq	$16, %rax
.LVL22:
	.loc 3 649 9 is_stmt 1 view .LVU46
	testq	%rdi, %rdi
	je	.L4
	.loc 3 649 33 is_stmt 0 view .LVU47
	movl	$6, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU48
	testb	%dl, %dl
	jne	.L5
.L4:
	.loc 3 652 3 is_stmt 1 view .LVU49
	.loc 3 652 15 is_stmt 0 view .LVU50
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU51
	movl	$5, %edx
	leaq	.LC18(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU52
	testq	%r12, %r12
	je	.L6
	.loc 3 653 5 is_stmt 1 view .LVU53
.LVL23:
	.loc 3 655 3 view .LVU54
	.loc 3 655 11 is_stmt 0 view .LVU55
	call	dcgettext@PLT
.LVL24:
.LBB39:
.LBB40:
	.loc 2 107 10 view .LVU56
	leaq	.LC19(%rip), %rcx
	movl	$1, %edi
	leaq	.LC20(%rip), %rdx
.LBE40:
.LBE39:
	.loc 3 655 11 view .LVU57
	movq	%rax, %rsi
.LVL25:
.LBB44:
.LBI39:
	.loc 2 105 1 is_stmt 1 view .LVU58
.LBB41:
	.loc 2 107 3 view .LVU59
	.loc 2 107 10 is_stmt 0 view .LVU60
	xorl	%eax, %eax
.LVL26:
	.loc 2 107 10 view .LVU61
	call	__printf_chk@PLT
.LVL27:
	.loc 2 107 10 view .LVU62
.LBE41:
.LBE44:
	.loc 3 659 3 is_stmt 1 view .LVU63
	.loc 3 659 29 is_stmt 0 view .LVU64
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL28:
	movq	%rax, %rdi
.LVL29:
	.loc 3 660 3 is_stmt 1 view .LVU65
	.loc 3 660 6 is_stmt 0 view .LVU66
	testq	%rax, %rax
	je	.L7
	.loc 3 660 22 view .LVU67
	movl	$3, %edx
	leaq	.LC21(%rip), %rsi
	call	strncmp@PLT
.LVL30:
	.loc 3 660 19 view .LVU68
	testl	%eax, %eax
	jne	.L10
.LVL31:
.L7:
	.loc 3 669 3 is_stmt 1 view .LVU69
	.loc 3 669 11 is_stmt 0 view .LVU70
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC23(%rip), %rsi
	call	dcgettext@PLT
.LVL32:
.LBB45:
.LBB46:
	.loc 2 107 10 view .LVU71
	leaq	.LC0(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	movl	$1, %edi
.LBE46:
.LBE45:
	.loc 3 669 11 view .LVU72
	movq	%rax, %rsi
.LVL33:
.LBB52:
.LBI45:
	.loc 2 105 1 is_stmt 1 view .LVU73
.LBB47:
	.loc 2 107 3 view .LVU74
	.loc 2 107 10 is_stmt 0 view .LVU75
	xorl	%eax, %eax
.LVL34:
	.loc 2 107 10 view .LVU76
.LBE47:
.LBE52:
	.loc 3 671 3 view .LVU77
	leaq	.LC1(%rip), %r13
.LBB53:
.LBB48:
	.loc 2 107 10 view .LVU78
	call	__printf_chk@PLT
.LVL35:
	.loc 2 107 10 view .LVU79
.LBE48:
.LBE53:
	.loc 3 671 3 is_stmt 1 view .LVU80
	cmpq	%rbx, %r12
	leaq	.LC2(%rip), %rcx
	cmovne	%rcx, %r13
.L8:
	.loc 3 671 11 is_stmt 0 view .LVU81
	xorl	%edi, %edi
	leaq	.LC24(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL36:
.LBB54:
.LBB55:
	.loc 2 107 10 view .LVU82
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE55:
.LBE54:
	.loc 3 671 11 view .LVU83
	movq	%rax, %rsi
.LVL37:
.LBB57:
.LBI54:
	.loc 2 105 1 is_stmt 1 view .LVU84
.LBB56:
	.loc 2 107 3 view .LVU85
	.loc 2 107 10 is_stmt 0 view .LVU86
	xorl	%eax, %eax
.LVL38:
	.loc 2 107 10 view .LVU87
	call	__printf_chk@PLT
.LVL39:
	.loc 2 107 10 view .LVU88
.LBE56:
.LBE57:
	.loc 3 673 1 view .LVU89
	jmp	.L3
.LVL40:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU90
	.loc 3 655 11 is_stmt 0 view .LVU91
	call	dcgettext@PLT
.LVL41:
.LBB58:
.LBB42:
	.loc 2 107 10 view .LVU92
	leaq	.LC19(%rip), %rcx
	movl	$1, %edi
	leaq	.LC20(%rip), %rdx
.LBE42:
.LBE58:
	.loc 3 655 11 view .LVU93
	movq	%rax, %rsi
.LVL42:
.LBB59:
	.loc 2 105 1 is_stmt 1 view .LVU94
.LBB43:
	.loc 2 107 3 view .LVU95
	.loc 2 107 10 is_stmt 0 view .LVU96
	xorl	%eax, %eax
.LVL43:
	.loc 2 107 10 view .LVU97
	call	__printf_chk@PLT
.LVL44:
	.loc 2 107 10 view .LVU98
.LBE43:
.LBE59:
	.loc 3 659 3 is_stmt 1 view .LVU99
	.loc 3 659 29 is_stmt 0 view .LVU100
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL45:
	movq	%rax, %rdi
.LVL46:
	.loc 3 660 3 is_stmt 1 view .LVU101
	.loc 3 660 6 is_stmt 0 view .LVU102
	testq	%rax, %rax
	je	.L9
	.loc 3 660 22 view .LVU103
	movl	$3, %edx
	leaq	.LC21(%rip), %rsi
	call	strncmp@PLT
.LVL47:
	.loc 3 660 19 view .LVU104
	testl	%eax, %eax
	jne	.L29
.L9:
	.loc 3 669 3 is_stmt 1 view .LVU105
	.loc 3 669 11 is_stmt 0 view .LVU106
	movl	$5, %edx
	leaq	.LC23(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL48:
.LBB60:
.LBB49:
	.loc 2 107 10 view .LVU107
	leaq	.LC0(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	movl	$1, %edi
.LBE49:
.LBE60:
	.loc 3 669 11 view .LVU108
	movq	%rax, %rsi
.LVL49:
.LBB61:
	.loc 2 105 1 is_stmt 1 view .LVU109
.LBB50:
	.loc 2 107 3 view .LVU110
	.loc 2 107 10 is_stmt 0 view .LVU111
	xorl	%eax, %eax
.LVL50:
	.loc 2 107 10 view .LVU112
.LBE50:
.LBE61:
	.loc 3 646 15 view .LVU113
	leaq	.LC0(%rip), %r12
.LBB62:
.LBB51:
	.loc 2 107 10 view .LVU114
	call	__printf_chk@PLT
.LVL51:
	.loc 2 107 10 view .LVU115
.LBE51:
.LBE62:
	.loc 3 671 3 is_stmt 1 view .LVU116
	leaq	.LC1(%rip), %r13
	jmp	.L8
.L29:
	.loc 3 646 15 is_stmt 0 view .LVU117
	leaq	.LC0(%rip), %r12
.LVL52:
.L10:
	.loc 3 666 7 is_stmt 1 view .LVU118
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC22(%rip), %rsi
	call	dcgettext@PLT
.LVL53:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL54:
	jmp	.L7
.LBE63:
.LBE68:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC25:
	.string	"/usr/local/share/locale"
.LC26:
	.string	"Giuseppe Scrivano"
.LC27:
	.string	"invalid number"
.LC28:
	.string	"extra operand %s"
.LC29:
	.string	"%lu\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL55:
.LFB136:
	.loc 1 77 1 view -0
	.cfi_startproc
	.loc 1 77 1 is_stmt 0 view .LVU120
	endbr64
	.loc 1 78 3 is_stmt 1 view .LVU121
.LVL56:
	.loc 1 79 33 view .LVU122
	.loc 1 80 3 view .LVU123
	.loc 1 77 1 is_stmt 0 view .LVU124
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 87 20 view .LVU125
	movl	$2, %r13d
	.loc 1 77 1 view .LVU126
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	.loc 1 78 24 view .LVU127
	xorl	%ebp, %ebp
	.loc 1 77 1 view .LVU128
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 80 3 view .LVU129
	movq	(%rsi), %rdi
.LVL57:
	.loc 1 80 3 view .LVU130
	call	set_program_name@PLT
.LVL58:
	.loc 1 81 3 is_stmt 1 view .LVU131
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL59:
	.loc 1 82 3 view .LVU132
	leaq	.LC25(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	call	bindtextdomain@PLT
.LVL60:
	.loc 1 83 3 view .LVU133
	leaq	.LC11(%rip), %rdi
	call	textdomain@PLT
.LVL61:
	.loc 1 85 3 view .LVU134
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL62:
	.loc 1 87 3 view .LVU135
.L32:
	.loc 1 89 3 view .LVU136
.LBB69:
	.loc 1 91 7 view .LVU137
	.loc 1 91 15 is_stmt 0 view .LVU138
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%rbx, %rsi
	movl	%r12d, %edi
	leaq	.LC2(%rip), %rdx
	call	getopt_long@PLT
.LVL63:
	.loc 1 92 7 is_stmt 1 view .LVU139
	.loc 1 92 10 is_stmt 0 view .LVU140
	cmpl	$-1, %eax
	je	.L31
	.loc 1 94 7 is_stmt 1 view .LVU141
	cmpl	$128, %eax
	je	.L41
	jg	.L33
	cmpl	$-131, %eax
	jne	.L45
	.loc 1 96 9 view .LVU142
	.loc 1 96 30 view .LVU143
	.loc 1 98 9 view .LVU144
	movq	stdout(%rip), %rdi
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
.LVL64:
	.loc 1 98 9 is_stmt 0 view .LVU145
	xorl	%r9d, %r9d
	leaq	.LC26(%rip), %r8
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL65:
	.loc 1 98 9 is_stmt 1 view .LVU146
	xorl	%edi, %edi
	call	exit@PLT
.LVL66:
	.p2align 4,,10
	.p2align 3
.L33:
	.loc 1 94 7 is_stmt 0 view .LVU147
	cmpl	$129, %eax
	jne	.L44
	.loc 1 105 11 is_stmt 1 view .LVU148
	.loc 1 105 58 is_stmt 0 view .LVU149
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL67:
	.loc 1 105 20 view .LVU150
	movq	optarg(%rip), %rdi
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	.loc 1 105 58 view .LVU151
	movq	%rax, %r8
	.loc 1 105 20 view .LVU152
	leaq	.LC2(%rip), %rcx
	movq	$-1, %rdx
	call	xdectoumax@PLT
.LVL68:
	movq	%rax, %rbp
.LVL69:
	.loc 1 106 11 is_stmt 1 view .LVU153
	jmp	.L32
.LVL70:
.L45:
	.loc 1 94 7 is_stmt 0 view .LVU154
	cmpl	$-130, %eax
	jne	.L44
	.loc 1 96 9 is_stmt 1 view .LVU155
	xorl	%edi, %edi
	call	usage
.LVL71:
	.p2align 4,,10
	.p2align 3
.L41:
	.loc 1 94 7 is_stmt 0 view .LVU156
	xorl	%r13d, %r13d
.LVL72:
	.loc 1 94 7 view .LVU157
	jmp	.L32
.LVL73:
.L31:
	.loc 1 94 7 view .LVU158
.LBE69:
	.loc 1 113 3 is_stmt 1 view .LVU159
	.loc 1 113 12 is_stmt 0 view .LVU160
	movslq	optind(%rip), %rax
.LVL74:
	.loc 1 113 6 view .LVU161
	cmpl	%r12d, %eax
	jne	.L46
	.loc 1 119 3 is_stmt 1 view .LVU162
	.loc 1 119 11 is_stmt 0 view .LVU163
	movl	%r13d, %edi
	call	num_processors@PLT
.LVL75:
	.loc 1 121 3 is_stmt 1 view .LVU164
	.loc 1 124 11 is_stmt 0 view .LVU165
	movl	$1, %edx
	.loc 1 121 6 view .LVU166
	cmpq	%rax, %rbp
	jnb	.L40
	.loc 1 122 5 is_stmt 1 view .LVU167
	.loc 1 122 11 is_stmt 0 view .LVU168
	subq	%rbp, %rax
.LVL76:
	.loc 1 122 11 view .LVU169
	movq	%rax, %rdx
.LVL77:
.L40:
	.loc 1 126 3 is_stmt 1 view .LVU170
.LBB70:
.LBI70:
	.loc 2 105 1 view .LVU171
.LBB71:
	.loc 2 107 3 view .LVU172
	.loc 2 107 10 is_stmt 0 view .LVU173
	leaq	.LC29(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL78:
	.loc 2 107 10 view .LVU174
.LBE71:
.LBE70:
	.loc 1 128 3 is_stmt 1 view .LVU175
	.loc 1 129 1 is_stmt 0 view .LVU176
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL79:
	.loc 1 129 1 view .LVU177
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL80:
	.loc 1 129 1 view .LVU178
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL81:
	.loc 1 129 1 view .LVU179
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL82:
	.loc 1 129 1 view .LVU180
	ret
.LVL83:
.L46:
	.cfi_restore_state
	.loc 1 115 7 is_stmt 1 view .LVU181
	movq	(%rbx,%rax,8), %rdi
	call	quote@PLT
.LVL84:
	.loc 1 115 20 is_stmt 0 view .LVU182
	movl	$5, %edx
	leaq	.LC28(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 115 7 view .LVU183
	movq	%rax, %r12
.LVL85:
	.loc 1 115 20 view .LVU184
	call	dcgettext@PLT
.LVL86:
	.loc 1 115 7 view .LVU185
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 115 20 view .LVU186
	movq	%rax, %rdx
	.loc 1 115 7 view .LVU187
	xorl	%eax, %eax
	call	error@PLT
.LVL87:
.L44:
	.loc 1 116 7 is_stmt 1 view .LVU188
	movl	$1, %edi
	call	usage
.LVL88:
	.cfi_endproc
.LFE136:
	.size	main, .-main
	.section	.rodata.str1.1
.LC30:
	.string	"all"
.LC31:
	.string	"ignore"
.LC32:
	.string	"help"
.LC33:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 160
longopts:
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC31
	.long	1
	.zero	4
	.quad	0
	.long	129
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
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 13 "./lib/sys/select.h"
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
	.file 25 "./lib/nproc.h"
	.file 26 "./lib/quote.h"
	.file 27 "/usr/include/stdlib.h"
	.file 28 "/usr/include/libintl.h"
	.file 29 "./lib/xdectoint.h"
	.file 30 "/usr/include/locale.h"
	.file 31 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1032
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF146
	.byte	0xc
	.long	.LASF147
	.long	.LASF148
	.long	.Ldebug_ranges0+0x180
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x37
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF4
	.byte	0x4
	.byte	0x3b
	.byte	0xc
	.long	0x53
	.uleb128 0x8
	.long	.LASF19
	.byte	0x20
	.byte	0x5
	.byte	0x32
	.byte	0x8
	.long	0xb9
	.uleb128 0x9
	.long	.LASF5
	.byte	0x5
	.byte	0x34
	.byte	0xf
	.long	0xbe
	.byte	0
	.uleb128 0x9
	.long	.LASF6
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.long	0x53
	.byte	0x8
	.uleb128 0x9
	.long	.LASF7
	.byte	0x5
	.byte	0x38
	.byte	0x8
	.long	0xce
	.byte	0x10
	.uleb128 0xa
	.string	"val"
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
	.byte	0x98
	.byte	0x19
	.long	0x10c
	.uleb128 0xc
	.long	.LASF17
	.byte	0x7
	.byte	0x99
	.byte	0x1b
	.long	0x10c
	.uleb128 0xc
	.long	.LASF18
	.byte	0x7
	.byte	0xa0
	.byte	0x1a
	.long	0x10c
	.uleb128 0x8
	.long	.LASF20
	.byte	0xd8
	.byte	0x8
	.byte	0x31
	.byte	0x8
	.long	0x2be
	.uleb128 0x9
	.long	.LASF21
	.byte	0x8
	.byte	0x33
	.byte	0x7
	.long	0x53
	.byte	0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.long	0x35
	.byte	0x8
	.uleb128 0x9
	.long	.LASF23
	.byte	0x8
	.byte	0x37
	.byte	0x9
	.long	0x35
	.byte	0x10
	.uleb128 0x9
	.long	.LASF24
	.byte	0x8
	.byte	0x38
	.byte	0x9
	.long	0x35
	.byte	0x18
	.uleb128 0x9
	.long	.LASF25
	.byte	0x8
	.byte	0x39
	.byte	0x9
	.long	0x35
	.byte	0x20
	.uleb128 0x9
	.long	.LASF26
	.byte	0x8
	.byte	0x3a
	.byte	0x9
	.long	0x35
	.byte	0x28
	.uleb128 0x9
	.long	.LASF27
	.byte	0x8
	.byte	0x3b
	.byte	0x9
	.long	0x35
	.byte	0x30
	.uleb128 0x9
	.long	.LASF28
	.byte	0x8
	.byte	0x3c
	.byte	0x9
	.long	0x35
	.byte	0x38
	.uleb128 0x9
	.long	.LASF29
	.byte	0x8
	.byte	0x3d
	.byte	0x9
	.long	0x35
	.byte	0x40
	.uleb128 0x9
	.long	.LASF30
	.byte	0x8
	.byte	0x40
	.byte	0x9
	.long	0x35
	.byte	0x48
	.uleb128 0x9
	.long	.LASF31
	.byte	0x8
	.byte	0x41
	.byte	0x9
	.long	0x35
	.byte	0x50
	.uleb128 0x9
	.long	.LASF32
	.byte	0x8
	.byte	0x42
	.byte	0x9
	.long	0x35
	.byte	0x58
	.uleb128 0x9
	.long	.LASF33
	.byte	0x8
	.byte	0x44
	.byte	0x16
	.long	0x2d7
	.byte	0x60
	.uleb128 0x9
	.long	.LASF34
	.byte	0x8
	.byte	0x46
	.byte	0x14
	.long	0x2dd
	.byte	0x68
	.uleb128 0x9
	.long	.LASF35
	.byte	0x8
	.byte	0x48
	.byte	0x7
	.long	0x53
	.byte	0x70
	.uleb128 0x9
	.long	.LASF36
	.byte	0x8
	.byte	0x49
	.byte	0x7
	.long	0x53
	.byte	0x74
	.uleb128 0x9
	.long	.LASF37
	.byte	0x8
	.byte	0x4a
	.byte	0xb
	.long	0x113
	.byte	0x78
	.uleb128 0x9
	.long	.LASF38
	.byte	0x8
	.byte	0x4d
	.byte	0x12
	.long	0xf7
	.byte	0x80
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.byte	0x4e
	.byte	0xf
	.long	0xfe
	.byte	0x82
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.long	0x2e3
	.byte	0x83
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.byte	0x51
	.byte	0xf
	.long	0x2f3
	.byte	0x88
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.byte	0x59
	.byte	0xd
	.long	0x11f
	.byte	0x90
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0x5b
	.byte	0x17
	.long	0x2fe
	.byte	0x98
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x5c
	.byte	0x19
	.long	0x309
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x5d
	.byte	0x14
	.long	0x2dd
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x5e
	.byte	0x9
	.long	0xee
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x5f
	.byte	0xa
	.long	0xd4
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x60
	.byte	0x7
	.long	0x53
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.long	0x30f
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF50
	.byte	0x9
	.byte	0x7
	.byte	0x19
	.long	0x137
	.uleb128 0xe
	.long	.LASF149
	.byte	0x8
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
	.byte	0xa
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
	.byte	0xa
	.byte	0x8a
	.byte	0xe
	.long	0x32b
	.uleb128 0x2
	.long	.LASF56
	.byte	0xa
	.byte	0x8b
	.byte	0xe
	.long	0x32b
	.uleb128 0x2
	.long	.LASF57
	.byte	0xb
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
	.byte	0xb
	.byte	0x1b
	.byte	0x1a
	.long	0x365
	.uleb128 0x2
	.long	.LASF59
	.byte	0xb
	.byte	0x1e
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF60
	.byte	0xb
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
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0x12b
	.uleb128 0x13
	.long	.LASF64
	.byte	0xd
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
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x3bc
	.uleb128 0x2
	.long	.LASF67
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF68
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x10c
	.uleb128 0x2
	.long	.LASF69
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x3bc
	.uleb128 0x2
	.long	.LASF70
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.long	.LASF71
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x10c
	.uleb128 0x13
	.long	.LASF72
	.byte	0xe
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
	.byte	0xf
	.value	0x11e
	.byte	0x1a
	.long	0x438
	.uleb128 0x13
	.long	.LASF74
	.byte	0xf
	.value	0x11f
	.byte	0x1a
	.long	0x438
	.uleb128 0x13
	.long	.LASF75
	.byte	0x10
	.value	0x21f
	.byte	0xf
	.long	0x464
	.uleb128 0x3
	.byte	0x8
	.long	0x35
	.uleb128 0x13
	.long	.LASF76
	.byte	0x10
	.value	0x221
	.byte	0xf
	.long	0x464
	.uleb128 0x2
	.long	.LASF77
	.byte	0x11
	.byte	0x2d
	.byte	0xe
	.long	0x35
	.uleb128 0x2
	.long	.LASF78
	.byte	0x11
	.byte	0x2e
	.byte	0xe
	.long	0x35
	.uleb128 0x2
	.long	.LASF79
	.byte	0x12
	.byte	0x1
	.byte	0x14
	.long	0xbe
	.uleb128 0x2
	.long	.LASF80
	.byte	0x13
	.byte	0x12
	.byte	0x15
	.long	0x5a
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe7
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
	.long	0xe7
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
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x4fd
	.uleb128 0x2
	.long	.LASF86
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0xbe
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x7
	.byte	0x4
	.long	0xe7
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
	.uleb128 0x5
	.long	0x51a
	.uleb128 0x13
	.long	.LASF98
	.byte	0x17
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
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x58c
	.uleb128 0x2
	.long	.LASF100
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x422
	.uleb128 0x2
	.long	.LASF101
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0xe7
	.uleb128 0x2
	.long	.LASF102
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x53
	.uleb128 0x1a
	.long	.LASF104
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x5e7
	.uleb128 0x17
	.long	.LASF105
	.byte	0
	.uleb128 0x17
	.long	.LASF106
	.byte	0x1
	.uleb128 0x17
	.long	.LASF107
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	.LASF108
	.uleb128 0x2
	.long	.LASF109
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x5e7
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe7
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	0x613
	.uleb128 0x17
	.long	.LASF110
	.byte	0x80
	.uleb128 0x17
	.long	.LASF111
	.byte	0x81
	.byte	0
	.uleb128 0x10
	.long	0xb9
	.long	0x623
	.uleb128 0x11
	.long	0xe0
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x613
	.uleb128 0x1b
	.long	.LASF150
	.byte	0x1
	.byte	0x29
	.byte	0x1c
	.long	0x623
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.long	0x53
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x949
	.uleb128 0x1d
	.long	.LASF112
	.byte	0x1
	.byte	0x4c
	.byte	0xb
	.long	0x53
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1d
	.long	.LASF113
	.byte	0x1
	.byte	0x4c
	.byte	0x18
	.long	0x464
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1e
	.long	.LASF114
	.byte	0x1
	.byte	0x4e
	.byte	0x11
	.long	0xe0
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1e
	.long	.LASF115
	.byte	0x1
	.byte	0x4e
	.byte	0x18
	.long	0xe0
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1e
	.long	.LASF116
	.byte	0x1
	.byte	0x57
	.byte	0x14
	.long	0x5c2
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1f
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.long	0x7e9
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.byte	0x5b
	.byte	0xb
	.long	0x53
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x21
	.quad	.LVL63
	.long	0xf66
	.long	0x728
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
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
	.quad	.LVL65
	.long	0xf72
	.long	0x766
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
	.quad	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL66
	.long	0xf7e
	.long	0x77d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL67
	.long	0xf8b
	.long	0x7a6
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
	.quad	.LVL68
	.long	0xf97
	.long	0x7d5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL71
	.long	0x949
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0xf1c
	.quad	.LBI70
	.byte	.LVU171
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.byte	0x1
	.byte	0x7e
	.byte	0x3
	.long	0x83c
	.uleb128 0x25
	.long	0xf2d
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x23
	.quad	.LVL78
	.long	0xfa3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL58
	.long	0xfaf
	.uleb128 0x21
	.quad	.LVL59
	.long	0xfbb
	.long	0x86d
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
	.quad	.LVL60
	.long	0xfc7
	.long	0x899
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x21
	.quad	.LVL61
	.long	0xfd3
	.long	0x8b8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x26
	.quad	.LVL62
	.long	0xfdf
	.uleb128 0x21
	.quad	.LVL75
	.long	0xfec
	.long	0x8dd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL84
	.long	0xff8
	.uleb128 0x21
	.quad	.LVL86
	.long	0xf8b
	.long	0x913
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
	.quad	.LC28
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL87
	.long	0x1004
	.long	0x935
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
	.quad	.LVL88
	.long	0x949
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF118
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xe81
	.uleb128 0x1d
	.long	.LASF119
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.long	0x53
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x28
	.long	0xf3b
	.quad	.LBI33
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x36
	.byte	0x5
	.long	0x9c8
	.uleb128 0x25
	.long	0xf58
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x25
	.long	0xf4c
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x23
	.quad	.LVL5
	.long	0x1010
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
	.uleb128 0x28
	.long	0xe81
	.quad	.LBI37
	.byte	.LVU34
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x46
	.byte	0x7
	.long	0xcdb
	.uleb128 0x29
	.long	0xe8f
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2b
	.long	0xecc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.long	0xed9
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2c
	.long	0xee6
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2c
	.long	0xef3
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2d
	.long	0xf1c
	.quad	.LBI39
	.byte	.LVU58
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0xaac
	.uleb128 0x25
	.long	0xf2d
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x21
	.quad	.LVL27
	.long	0xfa3
	.long	0xa7e
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
	.quad	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.uleb128 0x23
	.quad	.LVL44
	.long	0xfa3
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
	.quad	.LC20
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0xf1c
	.quad	.LBI45
	.byte	.LVU73
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0xb24
	.uleb128 0x25
	.long	0xf2d
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x21
	.quad	.LVL35
	.long	0xfa3
	.long	0xafd
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
	.quad	.LC19
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL51
	.long	0xfa3
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
	.quad	.LC19
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0xf1c
	.quad	.LBI54
	.byte	.LVU84
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xb6b
	.uleb128 0x25
	.long	0xf2d
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x23
	.quad	.LVL39
	.long	0xfa3
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
	.quad	.LVL24
	.long	0xf8b
	.long	0xb94
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
	.quad	.LC18
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL28
	.long	0xfbb
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
	.quad	.LVL30
	.long	0x101c
	.long	0xbd4
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
	.byte	0x33
	.byte	0
	.uleb128 0x21
	.quad	.LVL32
	.long	0xf8b
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
	.quad	.LC23
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL36
	.long	0xf8b
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
	.quad	.LC24
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL41
	.long	0xf8b
	.uleb128 0x21
	.quad	.LVL45
	.long	0xfbb
	.long	0xc4f
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
	.quad	.LVL47
	.long	0x101c
	.long	0xc73
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
	.byte	0x33
	.byte	0
	.uleb128 0x21
	.quad	.LVL48
	.long	0xf8b
	.long	0xc9c
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
	.quad	.LC23
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL53
	.long	0xf8b
	.long	0xcc5
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
	.uleb128 0x23
	.quad	.LVL54
	.long	0x1028
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0xf1c
	.quad	.LBI64
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x39
	.byte	0x7
	.long	0xd1b
	.uleb128 0x25
	.long	0xf2d
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x23
	.quad	.LVL11
	.long	0xfa3
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
	.quad	.LVL2
	.long	0xf8b
	.long	0xd44
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
	.long	0xf7e
	.long	0xd5c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL8
	.long	0xf8b
	.long	0xd80
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
	.long	0xf8b
	.long	0xda9
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
	.long	0x1028
	.long	0xdc1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL14
	.long	0xf8b
	.long	0xdea
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
	.long	0x1028
	.long	0xe02
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL16
	.long	0xf8b
	.long	0xe2b
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
	.long	0x1028
	.long	0xe43
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL18
	.long	0xf8b
	.long	0xe6c
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
	.uleb128 0x23
	.quad	.LVL19
	.long	0x1028
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF151
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0xf01
	.uleb128 0x2f
	.long	.LASF121
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0xbe
	.uleb128 0x30
	.long	.LASF120
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0xec7
	.uleb128 0x31
	.long	.LASF121
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0xbe
	.byte	0
	.uleb128 0x31
	.long	.LASF122
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0xbe
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xe9c
	.uleb128 0x32
	.long	.LASF120
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0xf11
	.uleb128 0x32
	.long	.LASF122
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0xbe
	.uleb128 0x32
	.long	.LASF123
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0xf16
	.uleb128 0x32
	.long	.LASF124
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0xbe
	.byte	0
	.uleb128 0x10
	.long	0xec7
	.long	0xf11
	.uleb128 0x11
	.long	0xe0
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0xf01
	.uleb128 0x3
	.byte	0x8
	.long	0xec7
	.uleb128 0x33
	.long	.LASF126
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0xf3b
	.uleb128 0x34
	.long	.LASF125
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0xc9
	.uleb128 0x35
	.byte	0
	.uleb128 0x33
	.long	.LASF127
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0xf66
	.uleb128 0x34
	.long	.LASF128
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x331
	.uleb128 0x34
	.long	.LASF125
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0xc9
	.uleb128 0x35
	.byte	0
	.uleb128 0x36
	.long	.LASF129
	.long	.LASF129
	.byte	0x5
	.byte	0x42
	.byte	0xc
	.uleb128 0x36
	.long	.LASF130
	.long	.LASF130
	.byte	0x15
	.byte	0x3c
	.byte	0xd
	.uleb128 0x37
	.long	.LASF131
	.long	.LASF131
	.byte	0x1b
	.value	0x269
	.byte	0xd
	.uleb128 0x36
	.long	.LASF132
	.long	.LASF132
	.byte	0x1c
	.byte	0x33
	.byte	0xe
	.uleb128 0x36
	.long	.LASF133
	.long	.LASF133
	.byte	0x1d
	.byte	0x1f
	.byte	0x1
	.uleb128 0x36
	.long	.LASF134
	.long	.LASF134
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x36
	.long	.LASF135
	.long	.LASF135
	.byte	0x16
	.byte	0x25
	.byte	0xd
	.uleb128 0x36
	.long	.LASF136
	.long	.LASF136
	.byte	0x1e
	.byte	0x7a
	.byte	0xe
	.uleb128 0x36
	.long	.LASF137
	.long	.LASF137
	.byte	0x1c
	.byte	0x56
	.byte	0xe
	.uleb128 0x36
	.long	.LASF138
	.long	.LASF138
	.byte	0x1c
	.byte	0x52
	.byte	0xe
	.uleb128 0x37
	.long	.LASF139
	.long	.LASF139
	.byte	0x1b
	.value	0x253
	.byte	0xc
	.uleb128 0x36
	.long	.LASF140
	.long	.LASF140
	.byte	0x19
	.byte	0x2a
	.byte	0x1a
	.uleb128 0x36
	.long	.LASF141
	.long	.LASF141
	.byte	0x1a
	.byte	0x2c
	.byte	0xd
	.uleb128 0x36
	.long	.LASF142
	.long	.LASF142
	.byte	0x18
	.byte	0x28
	.byte	0xd
	.uleb128 0x36
	.long	.LASF143
	.long	.LASF143
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x36
	.long	.LASF144
	.long	.LASF144
	.byte	0x1f
	.byte	0x8c
	.byte	0xc
	.uleb128 0x37
	.long	.LASF145
	.long	.LASF145
	.byte	0xa
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x37
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
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 0
.LLST10:
	.quad	.LVL55
	.quad	.LVL57
	.value	0x1
	.byte	0x55
	.quad	.LVL57
	.quad	.LVL81
	.value	0x1
	.byte	0x5c
	.quad	.LVL81
	.quad	.LVL83
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL83
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
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 0
.LLST11:
	.quad	.LVL55
	.quad	.LVL58-1
	.value	0x1
	.byte	0x54
	.quad	.LVL58-1
	.quad	.LVL79
	.value	0x1
	.byte	0x53
	.quad	.LVL79
	.quad	.LVL83
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL83
	.quad	.LFE136
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU164
	.uleb128 .LVU169
	.uleb128 .LVU170
	.uleb128 .LVU174
.LLST12:
	.quad	.LVL75
	.quad	.LVL76
	.value	0x1
	.byte	0x50
	.quad	.LVL77
	.quad	.LVL78-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU122
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU178
	.uleb128 .LVU181
	.uleb128 0
.LLST13:
	.quad	.LVL56
	.quad	.LVL62
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL62
	.quad	.LVL69
	.value	0x1
	.byte	0x56
	.quad	.LVL69
	.quad	.LVL70
	.value	0x1
	.byte	0x50
	.quad	.LVL70
	.quad	.LVL80
	.value	0x1
	.byte	0x56
	.quad	.LVL83
	.quad	.LFE136
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU136
	.uleb128 .LVU157
	.uleb128 .LVU158
	.uleb128 .LVU180
	.uleb128 .LVU181
	.uleb128 0
.LLST14:
	.quad	.LVL62
	.quad	.LVL72
	.value	0x1
	.byte	0x5d
	.quad	.LVL73
	.quad	.LVL82
	.value	0x1
	.byte	0x5d
	.quad	.LVL83
	.quad	.LFE136
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU139
	.uleb128 .LVU145
	.uleb128 .LVU147
	.uleb128 .LVU150
	.uleb128 .LVU154
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU161
.LLST15:
	.quad	.LVL63
	.quad	.LVL64
	.value	0x1
	.byte	0x50
	.quad	.LVL66
	.quad	.LVL67-1
	.value	0x1
	.byte	0x50
	.quad	.LVL70
	.quad	.LVL71-1
	.value	0x1
	.byte	0x50
	.quad	.LVL71
	.quad	.LVL74
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU171
	.uleb128 .LVU174
.LLST16:
	.quad	.LVL77
	.quad	.LVL78
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
	.uleb128 .LVU38
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU69
	.uleb128 .LVU90
	.uleb128 .LVU118
.LLST3:
	.quad	.LVL20
	.quad	.LVL23
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL31
	.value	0x1
	.byte	0x5c
	.quad	.LVL40
	.quad	.LVL52
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU39
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU56
	.uleb128 .LVU90
	.uleb128 .LVU92
.LLST4:
	.quad	.LVL20
	.quad	.LVL21
	.value	0x1
	.byte	0x57
	.quad	.LVL21
	.quad	.LVL24-1
	.value	0x1
	.byte	0x50
	.quad	.LVL40
	.quad	.LVL41-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU65
	.uleb128 .LVU68
	.uleb128 .LVU101
	.uleb128 .LVU104
.LLST5:
	.quad	.LVL29
	.quad	.LVL30-1
	.value	0x1
	.byte	0x50
	.quad	.LVL46
	.quad	.LVL47-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU58
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU62
	.uleb128 .LVU94
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU98
.LLST6:
	.quad	.LVL25
	.quad	.LVL26
	.value	0x1
	.byte	0x50
	.quad	.LVL26
	.quad	.LVL27-1
	.value	0x1
	.byte	0x54
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
.LVUS7:
	.uleb128 .LVU73
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU79
	.uleb128 .LVU109
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU115
.LLST7:
	.quad	.LVL33
	.quad	.LVL34
	.value	0x1
	.byte	0x50
	.quad	.LVL34
	.quad	.LVL35-1
	.value	0x1
	.byte	0x54
	.quad	.LVL49
	.quad	.LVL50
	.value	0x1
	.byte	0x50
	.quad	.LVL50
	.quad	.LVL51-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU84
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU88
.LLST8:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x1
	.byte	0x50
	.quad	.LVL38
	.quad	.LVL39-1
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
	.quad	.LBB33
	.quad	.LBE33
	.quad	.LBB36
	.quad	.LBE36
	.quad	0
	.quad	0
	.quad	.LBB37
	.quad	.LBE37
	.quad	.LBB68
	.quad	.LBE68
	.quad	0
	.quad	0
	.quad	.LBB39
	.quad	.LBE39
	.quad	.LBB44
	.quad	.LBE44
	.quad	.LBB58
	.quad	.LBE58
	.quad	.LBB59
	.quad	.LBE59
	.quad	0
	.quad	0
	.quad	.LBB45
	.quad	.LBE45
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB53
	.quad	.LBE53
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB61
	.quad	.LBE61
	.quad	.LBB62
	.quad	.LBE62
	.quad	0
	.quad	0
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB57
	.quad	.LBE57
	.quad	0
	.quad	0
	.quad	.LBB64
	.quad	.LBE64
	.quad	.LBB67
	.quad	.LBE67
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
.LASF126:
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
.LASF150:
	.string	"longopts"
.LASF103:
	.string	"quoting_style"
.LASF15:
	.string	"size_t"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF135:
	.string	"set_program_name"
.LASF40:
	.string	"_shortbuf"
.LASF88:
	.string	"shell_quoting_style"
.LASF83:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF65:
	.string	"long long unsigned int"
.LASF140:
	.string	"num_processors"
.LASF43:
	.string	"_codecvt"
.LASF139:
	.string	"atexit"
.LASF68:
	.string	"__timezone"
.LASF61:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF99:
	.string	"quoting_style_vals"
.LASF121:
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
.LASF133:
	.string	"xdectoumax"
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
.LASF147:
	.string	"src/nproc.c"
.LASF52:
	.string	"_IO_codecvt"
.LASF60:
	.string	"_sys_errlist"
.LASF134:
	.string	"__printf_chk"
.LASF77:
	.string	"program_invocation_name"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF110:
	.string	"ALL_OPTION"
.LASF114:
	.string	"nproc"
.LASF91:
	.string	"shell_escape_always_quoting_style"
.LASF71:
	.string	"timezone"
.LASF141:
	.string	"quote"
.LASF86:
	.string	"program_name"
.LASF130:
	.string	"version_etc"
.LASF105:
	.string	"NPROC_ALL"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF9:
	.string	"unsigned int"
.LASF146:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF127:
	.string	"fprintf"
.LASF128:
	.string	"__stream"
.LASF8:
	.string	"long unsigned int"
.LASF137:
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
.LASF136:
	.string	"setlocale"
.LASF55:
	.string	"stdout"
.LASF104:
	.string	"nproc_query"
.LASF85:
	.string	"version_etc_copyright"
.LASF0:
	.string	"optarg"
.LASF72:
	.string	"getdate_err"
.LASF1:
	.string	"optind"
.LASF27:
	.string	"_IO_write_end"
.LASF149:
	.string	"_IO_lock_t"
.LASF20:
	.string	"_IO_FILE"
.LASF100:
	.string	"error_print_progname"
.LASF123:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF63:
	.string	"time_t"
.LASF142:
	.string	"error"
.LASF58:
	.string	"sys_errlist"
.LASF33:
	.string	"_markers"
.LASF115:
	.string	"ignore"
.LASF93:
	.string	"c_maybe_quoting_style"
.LASF10:
	.string	"unsigned char"
.LASF122:
	.string	"node"
.LASF144:
	.string	"strncmp"
.LASF13:
	.string	"short int"
.LASF19:
	.string	"option"
.LASF109:
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
.LASF131:
	.string	"exit"
.LASF143:
	.string	"__fprintf_chk"
.LASF90:
	.string	"shell_escape_quoting_style"
.LASF132:
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
.LASF116:
	.string	"mode"
.LASF107:
	.string	"NPROC_CURRENT_OVERRIDABLE"
.LASF81:
	.string	"TIMESPEC_HZ"
.LASF96:
	.string	"clocale_quoting_style"
.LASF106:
	.string	"NPROC_CURRENT"
.LASF3:
	.string	"opterr"
.LASF17:
	.string	"__off64_t"
.LASF108:
	.string	"quoting_options"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF125:
	.string	"__fmt"
.LASF120:
	.string	"infomap"
.LASF6:
	.string	"has_arg"
.LASF118:
	.string	"usage"
.LASF47:
	.string	"__pad5"
.LASF18:
	.string	"__time_t"
.LASF49:
	.string	"_unused2"
.LASF56:
	.string	"stderr"
.LASF113:
	.string	"argv"
.LASF138:
	.string	"textdomain"
.LASF67:
	.string	"__daylight"
.LASF119:
	.string	"status"
.LASF148:
	.string	"/root/coreutils"
.LASF46:
	.string	"_freeres_buf"
.LASF31:
	.string	"_IO_backup_base"
.LASF101:
	.string	"error_message_count"
.LASF124:
	.string	"lc_messages"
.LASF112:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF53:
	.string	"_IO_wide_data"
.LASF129:
	.string	"getopt_long"
.LASF145:
	.string	"fputs_unlocked"
.LASF111:
	.string	"IGNORE_OPTION"
.LASF66:
	.string	"__tzname"
.LASF117:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF151:
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
