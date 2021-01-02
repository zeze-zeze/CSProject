	.file	"readlink.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"readlink"
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
	.string	"Usage: %s [OPTION]... FILE...\n"
	.align 8
.LC5:
	.string	"Print value of a symbolic link or canonical file name\n\n"
	.align 8
.LC6:
	.ascii	"  -f, --canonicalize            canonicalize by following ev"
	.ascii	"ery symlink in\n                                every compon"
	.ascii	"ent of the given name recursively;\n                        "
	.ascii	"  "
	.string	"      all but the last component must exist\n  -e, --canonicalize-existing   canonicalize by following every symlink in\n                                every component of the given name recursively,\n                                all components must exist\n"
	.align 8
.LC7:
	.ascii	"  -m, --canonicalize-missing    canonicalize by following ev"
	.ascii	"ery symlink in\n                                every compon"
	.ascii	"ent of the given name recursively,\n                        "
	.ascii	"        without requirements on components existence\n  -n, "
	.ascii	"--no-newline              d"
	.string	"o not output the trailing delimiter\n  -q, --quiet\n  -s, --silent                  suppress most error messages (on by default)\n  -v, --verbose                 report error messages\n  -z, --zero                    end each output line with NUL, not newline\n"
	.align 8
.LC8:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC9:
	.string	"      --version  output version information and exit\n"
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
	.file 1 "src/readlink.c"
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
.LBB33:
.LBB34:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE34:
.LBE33:
	.loc 1 59 5 view .LVU11
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
	.loc 1 90 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 62 7 view .LVU18
	.loc 1 62 15 is_stmt 0 view .LVU19
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
.LVL7:
.LBB37:
.LBB38:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU20
	leaq	.LC16(%rip), %rbx
.LBE38:
.LBE37:
	.loc 1 62 15 view .LVU21
	call	dcgettext@PLT
.LVL8:
.LBB64:
.LBB65:
	.loc 2 107 10 view .LVU22
	movq	%r12, %rdx
	movl	$1, %edi
.LBE65:
.LBE64:
	.loc 1 62 15 view .LVU23
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
	.loc 1 63 7 is_stmt 1 view .LVU29
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
	.loc 1 65 7 view .LVU30
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
	.loc 1 75 7 view .LVU31
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
	.loc 1 86 7 view .LVU32
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
	.loc 1 87 7 view .LVU33
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC9(%rip), %rsi
	call	dcgettext@PLT
.LVL20:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL21:
	.loc 1 88 7 view .LVU34
.LBB68:
.LBI37:
	.loc 3 634 1 view .LVU35
.LBB63:
	.loc 3 636 3 view .LVU36
	.loc 3 636 67 is_stmt 0 view .LVU37
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
	.loc 3 646 3 is_stmt 1 view .LVU38
.LVL22:
	.loc 3 647 3 view .LVU39
	.loc 3 649 3 view .LVU40
	.loc 3 649 9 view .LVU41
	.loc 3 636 67 is_stmt 0 view .LVU42
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
	.loc 3 647 25 view .LVU43
	movq	%rsp, %rax
.LVL23:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 3 650 5 is_stmt 1 view .LVU44
	.loc 3 649 18 is_stmt 0 view .LVU45
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU46
	addq	$16, %rax
.LVL24:
	.loc 3 649 9 is_stmt 1 view .LVU47
	testq	%rdi, %rdi
	je	.L4
	.loc 3 649 33 is_stmt 0 view .LVU48
	movl	$9, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU49
	testb	%dl, %dl
	jne	.L5
.L4:
	.loc 3 652 3 is_stmt 1 view .LVU50
	.loc 3 652 15 is_stmt 0 view .LVU51
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU52
	movl	$5, %edx
	leaq	.LC19(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU53
	testq	%r12, %r12
	je	.L6
	.loc 3 653 5 is_stmt 1 view .LVU54
.LVL25:
	.loc 3 655 3 view .LVU55
	.loc 3 655 11 is_stmt 0 view .LVU56
	call	dcgettext@PLT
.LVL26:
.LBB39:
.LBB40:
	.loc 2 107 10 view .LVU57
	leaq	.LC20(%rip), %rcx
	movl	$1, %edi
	leaq	.LC21(%rip), %rdx
.LBE40:
.LBE39:
	.loc 3 655 11 view .LVU58
	movq	%rax, %rsi
.LVL27:
.LBB44:
.LBI39:
	.loc 2 105 1 is_stmt 1 view .LVU59
.LBB41:
	.loc 2 107 3 view .LVU60
	.loc 2 107 10 is_stmt 0 view .LVU61
	xorl	%eax, %eax
.LVL28:
	.loc 2 107 10 view .LVU62
	call	__printf_chk@PLT
.LVL29:
	.loc 2 107 10 view .LVU63
.LBE41:
.LBE44:
	.loc 3 659 3 is_stmt 1 view .LVU64
	.loc 3 659 29 is_stmt 0 view .LVU65
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL30:
	movq	%rax, %rdi
.LVL31:
	.loc 3 660 3 is_stmt 1 view .LVU66
	.loc 3 660 6 is_stmt 0 view .LVU67
	testq	%rax, %rax
	je	.L7
	.loc 3 660 22 view .LVU68
	movl	$3, %edx
	leaq	.LC22(%rip), %rsi
	call	strncmp@PLT
.LVL32:
	.loc 3 660 19 view .LVU69
	testl	%eax, %eax
	jne	.L10
.LVL33:
.L7:
	.loc 3 669 3 is_stmt 1 view .LVU70
	.loc 3 669 11 is_stmt 0 view .LVU71
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC24(%rip), %rsi
	call	dcgettext@PLT
.LVL34:
.LBB45:
.LBB46:
	.loc 2 107 10 view .LVU72
	leaq	.LC0(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	movl	$1, %edi
.LBE46:
.LBE45:
	.loc 3 669 11 view .LVU73
	movq	%rax, %rsi
.LVL35:
.LBB52:
.LBI45:
	.loc 2 105 1 is_stmt 1 view .LVU74
.LBB47:
	.loc 2 107 3 view .LVU75
	.loc 2 107 10 is_stmt 0 view .LVU76
	xorl	%eax, %eax
.LVL36:
	.loc 2 107 10 view .LVU77
.LBE47:
.LBE52:
	.loc 3 671 3 view .LVU78
	leaq	.LC1(%rip), %r13
.LBB53:
.LBB48:
	.loc 2 107 10 view .LVU79
	call	__printf_chk@PLT
.LVL37:
	.loc 2 107 10 view .LVU80
.LBE48:
.LBE53:
	.loc 3 671 3 is_stmt 1 view .LVU81
	cmpq	%rbx, %r12
	leaq	.LC2(%rip), %rcx
	cmovne	%rcx, %r13
.L8:
	.loc 3 671 11 is_stmt 0 view .LVU82
	xorl	%edi, %edi
	leaq	.LC25(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL38:
.LBB54:
.LBB55:
	.loc 2 107 10 view .LVU83
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE55:
.LBE54:
	.loc 3 671 11 view .LVU84
	movq	%rax, %rsi
.LVL39:
.LBB57:
.LBI54:
	.loc 2 105 1 is_stmt 1 view .LVU85
.LBB56:
	.loc 2 107 3 view .LVU86
	.loc 2 107 10 is_stmt 0 view .LVU87
	xorl	%eax, %eax
.LVL40:
	.loc 2 107 10 view .LVU88
	call	__printf_chk@PLT
.LVL41:
	.loc 2 107 10 view .LVU89
.LBE56:
.LBE57:
	.loc 3 673 1 view .LVU90
	jmp	.L3
.LVL42:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU91
	.loc 3 655 11 is_stmt 0 view .LVU92
	call	dcgettext@PLT
.LVL43:
.LBB58:
.LBB42:
	.loc 2 107 10 view .LVU93
	leaq	.LC20(%rip), %rcx
	movl	$1, %edi
	leaq	.LC21(%rip), %rdx
.LBE42:
.LBE58:
	.loc 3 655 11 view .LVU94
	movq	%rax, %rsi
.LVL44:
.LBB59:
	.loc 2 105 1 is_stmt 1 view .LVU95
.LBB43:
	.loc 2 107 3 view .LVU96
	.loc 2 107 10 is_stmt 0 view .LVU97
	xorl	%eax, %eax
.LVL45:
	.loc 2 107 10 view .LVU98
	call	__printf_chk@PLT
.LVL46:
	.loc 2 107 10 view .LVU99
.LBE43:
.LBE59:
	.loc 3 659 3 is_stmt 1 view .LVU100
	.loc 3 659 29 is_stmt 0 view .LVU101
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL47:
	movq	%rax, %rdi
.LVL48:
	.loc 3 660 3 is_stmt 1 view .LVU102
	.loc 3 660 6 is_stmt 0 view .LVU103
	testq	%rax, %rax
	je	.L9
	.loc 3 660 22 view .LVU104
	movl	$3, %edx
	leaq	.LC22(%rip), %rsi
	call	strncmp@PLT
.LVL49:
	.loc 3 660 19 view .LVU105
	testl	%eax, %eax
	jne	.L29
.L9:
	.loc 3 669 3 is_stmt 1 view .LVU106
	.loc 3 669 11 is_stmt 0 view .LVU107
	movl	$5, %edx
	leaq	.LC24(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL50:
.LBB60:
.LBB49:
	.loc 2 107 10 view .LVU108
	leaq	.LC0(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	movl	$1, %edi
.LBE49:
.LBE60:
	.loc 3 669 11 view .LVU109
	movq	%rax, %rsi
.LVL51:
.LBB61:
	.loc 2 105 1 is_stmt 1 view .LVU110
.LBB50:
	.loc 2 107 3 view .LVU111
	.loc 2 107 10 is_stmt 0 view .LVU112
	xorl	%eax, %eax
.LVL52:
	.loc 2 107 10 view .LVU113
.LBE50:
.LBE61:
	.loc 3 646 15 view .LVU114
	leaq	.LC0(%rip), %r12
.LBB62:
.LBB51:
	.loc 2 107 10 view .LVU115
	call	__printf_chk@PLT
.LVL53:
	.loc 2 107 10 view .LVU116
.LBE51:
.LBE62:
	.loc 3 671 3 is_stmt 1 view .LVU117
	leaq	.LC1(%rip), %r13
	jmp	.L8
.L29:
	.loc 3 646 15 is_stmt 0 view .LVU118
	leaq	.LC0(%rip), %r12
.LVL54:
.L10:
	.loc 3 666 7 is_stmt 1 view .LVU119
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC23(%rip), %rsi
	call	dcgettext@PLT
.LVL55:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL56:
	jmp	.L7
.LBE63:
.LBE68:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC26:
	.string	"/usr/local/share/locale"
.LC27:
	.string	"Dmitry V. Levin"
.LC28:
	.string	"efmnqsvz"
.LC29:
	.string	"missing operand"
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"ignoring --no-newline with multiple arguments"
	.section	.rodata.str1.1
.LC31:
	.string	"%s"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL57:
.LFB136:
	.loc 1 95 1 view -0
	.cfi_startproc
	.loc 1 95 1 is_stmt 0 view .LVU121
	endbr64
	.loc 1 97 3 is_stmt 1 view .LVU122
.LVL58:
	.loc 1 98 3 view .LVU123
	.loc 1 99 3 view .LVU124
	.loc 1 100 3 view .LVU125
	.loc 1 102 33 view .LVU126
	.loc 1 103 3 view .LVU127
	.loc 1 95 1 is_stmt 0 view .LVU128
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 100 8 view .LVU129
	xorl	%r14d, %r14d
	.loc 1 95 1 view .LVU130
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	.L37(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	.loc 1 97 7 view .LVU131
	movl	$-1, %ebx
	.loc 1 95 1 view .LVU132
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 103 3 view .LVU133
	movq	(%rsi), %rdi
.LVL59:
	.loc 1 103 3 view .LVU134
	call	set_program_name@PLT
.LVL60:
	.loc 1 104 3 is_stmt 1 view .LVU135
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL61:
	.loc 1 105 3 view .LVU136
	leaq	.LC26(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	call	bindtextdomain@PLT
.LVL62:
	.loc 1 106 3 view .LVU137
	leaq	.LC12(%rip), %rdi
	call	textdomain@PLT
.LVL63:
	.loc 1 108 3 view .LVU138
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL64:
	.loc 1 110 3 view .LVU139
.L31:
	.loc 1 110 9 view .LVU140
	.loc 1 110 18 is_stmt 0 view .LVU141
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%r12, %rsi
	movl	%r13d, %edi
	leaq	.LC28(%rip), %rdx
	call	getopt_long@PLT
.LVL65:
	.loc 1 110 9 view .LVU142
	cmpl	$-1, %eax
	je	.L65
	.loc 1 112 7 is_stmt 1 view .LVU143
	cmpl	$122, %eax
	jg	.L64
	cmpl	$100, %eax
	jle	.L66
	subl	$101, %eax
.LVL66:
	.loc 1 112 7 is_stmt 0 view .LVU144
	cmpl	$21, %eax
	ja	.L64
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L37:
	.long	.L43-.L37
	.long	.L42-.L37
	.long	.L64-.L37
	.long	.L64-.L37
	.long	.L64-.L37
	.long	.L64-.L37
	.long	.L64-.L37
	.long	.L64-.L37
	.long	.L56-.L37
	.long	.L40-.L37
	.long	.L64-.L37
	.long	.L64-.L37
	.long	.L39-.L37
	.long	.L64-.L37
	.long	.L39-.L37
	.long	.L64-.L37
	.long	.L64-.L37
	.long	.L38-.L37
	.long	.L64-.L37
	.long	.L64-.L37
	.long	.L64-.L37
	.long	.L36-.L37
	.section	.text.startup
.L56:
	.loc 1 121 20 view .LVU145
	movl	$2, %ebx
.LVL67:
	.loc 1 121 20 view .LVU146
	jmp	.L31
.LVL68:
.L42:
	.loc 1 112 7 view .LVU147
	movl	$1, %ebx
.LVL69:
	.loc 1 112 7 view .LVU148
	jmp	.L31
.LVL70:
.L36:
	.loc 1 134 11 is_stmt 1 view .LVU149
	.loc 1 135 11 view .LVU150
	.loc 1 134 20 is_stmt 0 view .LVU151
	movl	$1, %r14d
	.loc 1 135 11 view .LVU152
	jmp	.L31
.LVL71:
.L38:
	.loc 1 131 11 is_stmt 1 view .LVU153
	.loc 1 131 19 is_stmt 0 view .LVU154
	movb	$1, verbose(%rip)
	.loc 1 132 11 is_stmt 1 view .LVU155
	jmp	.L31
.L39:
	.loc 1 128 11 view .LVU156
	.loc 1 128 19 is_stmt 0 view .LVU157
	movb	$0, verbose(%rip)
	.loc 1 129 11 is_stmt 1 view .LVU158
	jmp	.L31
.L40:
	.loc 1 124 11 view .LVU159
	.loc 1 124 22 is_stmt 0 view .LVU160
	movb	$1, no_newline(%rip)
	.loc 1 125 11 is_stmt 1 view .LVU161
	jmp	.L31
.L43:
	.loc 1 115 20 is_stmt 0 view .LVU162
	xorl	%ebx, %ebx
.LVL72:
	.loc 1 115 20 view .LVU163
	jmp	.L31
.LVL73:
	.p2align 4,,10
	.p2align 3
.L66:
	.loc 1 112 7 view .LVU164
	cmpl	$-131, %eax
	jne	.L67
	.loc 1 136 9 is_stmt 1 view .LVU165
	.loc 1 136 30 view .LVU166
	.loc 1 137 9 view .LVU167
	movq	stdout(%rip), %rdi
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
.LVL74:
	.loc 1 137 9 is_stmt 0 view .LVU168
	xorl	%r9d, %r9d
	leaq	.LC27(%rip), %r8
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL75:
	.loc 1 137 9 is_stmt 1 view .LVU169
	xorl	%edi, %edi
	call	exit@PLT
.LVL76:
.L67:
	.loc 1 112 7 is_stmt 0 view .LVU170
	cmpl	$-130, %eax
	jne	.L64
	.loc 1 136 9 is_stmt 1 view .LVU171
	xorl	%edi, %edi
	call	usage
.LVL77:
.L65:
	.loc 1 143 3 view .LVU172
	.loc 1 143 14 is_stmt 0 view .LVU173
	movl	optind(%rip), %edx
	movl	%edx, %eax
.LVL78:
	.loc 1 143 6 view .LVU174
	cmpl	%r13d, %edx
	jge	.L68
	.loc 1 149 3 is_stmt 1 view .LVU175
	.loc 1 149 12 is_stmt 0 view .LVU176
	movl	%r13d, %ecx
	subl	%edx, %ecx
	.loc 1 149 6 view .LVU177
	subl	$1, %ecx
	je	.L46
	.loc 1 151 7 is_stmt 1 view .LVU178
	.loc 1 151 10 is_stmt 0 view .LVU179
	cmpb	$0, no_newline(%rip)
	jne	.L69
.L47:
	.loc 1 153 7 is_stmt 1 view .LVU180
	.loc 1 153 18 is_stmt 0 view .LVU181
	movb	$0, no_newline(%rip)
	.loc 1 156 10 is_stmt 1 view .LVU182
	.loc 1 156 17 is_stmt 0 view .LVU183
	movl	%edx, %eax
	.loc 1 156 3 view .LVU184
	cmpl	%edx, %r13d
	jle	.L57
.L46:
.LVL79:
	.loc 1 156 3 view .LVU185
	cmpb	$1, %r14b
	sbbl	%ecx, %ecx
.LBB69:
.LBB70:
.LBB71:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 4 110 10 view .LVU186
	xorl	%r14d, %r14d
.LVL80:
	.loc 4 110 10 view .LVU187
	andl	$10, %ecx
	movl	%ecx, 12(%rsp)
	movb	%cl, 11(%rsp)
	jmp	.L55
.LVL81:
	.p2align 4,,10
	.p2align 3
.L71:
	.loc 4 110 10 view .LVU188
.LBE71:
.LBE70:
	.loc 1 164 11 is_stmt 1 view .LVU189
	movq	stdout(%rip), %rsi
	movq	%rbp, %rdi
	call	fputs_unlocked@PLT
.LVL82:
	.loc 1 165 11 view .LVU190
	.loc 1 165 14 is_stmt 0 view .LVU191
	cmpb	$0, no_newline(%rip)
	jne	.L52
	.loc 1 166 13 is_stmt 1 discriminator 4 view .LVU192
.LVL83:
.LBB74:
.LBI70:
	.loc 4 108 1 discriminator 4 view .LVU193
.LBB72:
	.loc 4 110 3 discriminator 4 view .LVU194
	.loc 4 110 10 is_stmt 0 discriminator 4 view .LVU195
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	%rax, 48(%rdi)
	jbe	.L70
	.loc 4 110 10 view .LVU196
	movzbl	11(%rsp), %ecx
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	%cl, (%rax)
.LVL84:
.L52:
	.loc 4 110 10 view .LVU197
.LBE72:
.LBE74:
	.loc 1 167 11 is_stmt 1 view .LVU198
	movq	%rbp, %rdi
	call	free@PLT
.LVL85:
.L54:
	.loc 1 167 11 is_stmt 0 view .LVU199
.LBE69:
	.loc 1 156 25 is_stmt 1 view .LVU200
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
	.loc 1 156 10 view .LVU201
	.loc 1 156 3 is_stmt 0 view .LVU202
	cmpl	%r13d, %eax
	jge	.L30
.LVL86:
.L55:
.LBB76:
	.loc 1 158 7 is_stmt 1 view .LVU203
	.loc 1 158 31 is_stmt 0 view .LVU204
	cltq
	.loc 1 158 19 view .LVU205
	movq	(%r12,%rax,8), %r15
.LVL87:
	.loc 1 159 7 is_stmt 1 view .LVU206
	.loc 1 161 22 is_stmt 0 view .LVU207
	cmpl	$-1, %ebx
	je	.L49
	.loc 1 160 24 view .LVU208
	movl	%ebx, %esi
	movq	%r15, %rdi
	call	canonicalize_filename_mode@PLT
.LVL88:
	movq	%rax, %rbp
.L50:
.LVL89:
	.loc 1 162 7 is_stmt 1 view .LVU209
	.loc 1 162 10 is_stmt 0 view .LVU210
	testq	%rbp, %rbp
	jne	.L71
	.loc 1 171 11 is_stmt 1 view .LVU211
.LVL90:
	.loc 1 172 11 view .LVU212
	.loc 1 172 14 is_stmt 0 view .LVU213
	cmpb	$0, verbose(%rip)
	.loc 1 171 18 view .LVU214
	movl	$1, %r14d
	.loc 1 172 14 view .LVU215
	je	.L54
	.loc 1 173 13 is_stmt 1 view .LVU216
	movq	%r15, %rdx
	xorl	%edi, %edi
	movl	$3, %esi
	call	quotearg_n_style_colon@PLT
.LVL91:
	movq	%rax, (%rsp)
	.loc 1 173 23 is_stmt 0 view .LVU217
	call	__errno_location@PLT
.LVL92:
	.loc 1 173 13 view .LVU218
	movq	(%rsp), %rcx
	leaq	.LC31(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL93:
	jmp	.L54
.LVL94:
.L49:
	.loc 1 161 24 discriminator 1 view .LVU219
	movl	$63, %esi
	movq	%r15, %rdi
	call	areadlink_with_size@PLT
.LVL95:
	movq	%rax, %rbp
	jmp	.L50
.LVL96:
.L57:
	.loc 1 161 24 discriminator 1 view .LVU220
.LBE76:
	.loc 1 156 3 view .LVU221
	xorl	%r14d, %r14d
.LVL97:
	.loc 1 177 3 is_stmt 1 view .LVU222
.L30:
	.loc 1 178 1 is_stmt 0 view .LVU223
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r14d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL98:
	.loc 1 178 1 view .LVU224
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL99:
	.loc 1 178 1 view .LVU225
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL100:
	.loc 1 178 1 view .LVU226
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL101:
.L68:
	.cfi_restore_state
	.loc 1 145 7 is_stmt 1 view .LVU227
	.loc 1 145 20 is_stmt 0 view .LVU228
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL102:
	.loc 1 145 7 view .LVU229
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 145 20 view .LVU230
	movq	%rax, %rdx
	.loc 1 145 7 view .LVU231
	xorl	%eax, %eax
	call	error@PLT
.LVL103:
.L64:
	.loc 1 146 7 is_stmt 1 view .LVU232
	movl	$1, %edi
	call	usage
.LVL104:
.L69:
	.loc 1 152 9 view .LVU233
	.loc 1 152 22 is_stmt 0 view .LVU234
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL105:
	.loc 1 152 9 view .LVU235
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 152 22 view .LVU236
	movq	%rax, %rdx
	.loc 1 152 9 view .LVU237
	xorl	%eax, %eax
	call	error@PLT
.LVL106:
	movl	optind(%rip), %edx
	jmp	.L47
.LVL107:
.L70:
.LBB77:
.LBB75:
.LBB73:
	.loc 4 110 10 view .LVU238
	movl	12(%rsp), %esi
	call	__overflow@PLT
.LVL108:
	jmp	.L52
.LBE73:
.LBE75:
.LBE77:
	.cfi_endproc
.LFE136:
	.size	main, .-main
	.section	.rodata.str1.1
.LC32:
	.string	"canonicalize"
.LC33:
	.string	"canonicalize-existing"
.LC34:
	.string	"canonicalize-missing"
.LC35:
	.string	"no-newline"
.LC36:
	.string	"quiet"
.LC37:
	.string	"silent"
.LC38:
	.string	"verbose"
.LC39:
	.string	"zero"
.LC40:
	.string	"help"
.LC41:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 352
longopts:
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	101
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	109
	.zero	4
	.quad	.LC35
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC36
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	.LC37
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC38
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC39
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC40
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC41
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
	.local	verbose
	.comm	verbose,1,1
	.local	no_newline
	.comm	no_newline,1,1
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
	.file 21 "./lib/timespec.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/canonicalize.h"
	.file 26 "./lib/error.h"
	.file 27 "/usr/include/stdlib.h"
	.file 28 "./lib/areadlink.h"
	.file 29 "/usr/include/locale.h"
	.file 30 "/usr/include/libintl.h"
	.file 31 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1156
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF152
	.byte	0xc
	.long	.LASF153
	.long	.LASF154
	.long	.Ldebug_ranges0+0x200
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
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x2
	.long	.LASF10
	.byte	0x6
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
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x231
	.uleb128 0xa
	.long	.LASF12
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF13
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x98
	.byte	0x8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x98
	.byte	0x10
	.uleb128 0xa
	.long	.LASF15
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x98
	.byte	0x18
	.uleb128 0xa
	.long	.LASF16
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x98
	.byte	0x20
	.uleb128 0xa
	.long	.LASF17
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x98
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x98
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x98
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x98
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x98
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x98
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x98
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x24a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x250
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x74
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x256
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x266
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x80
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x271
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x27c
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x250
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xaa
	.uleb128 0xb
	.long	.LASF155
	.byte	0x7
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
	.byte	0x9
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
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x2ae
	.uleb128 0x10
	.long	.LASF47
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x2ae
	.uleb128 0x10
	.long	.LASF48
	.byte	0xa
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
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x2e8
	.uleb128 0x10
	.long	.LASF50
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF51
	.byte	0xa
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
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x8c
	.uleb128 0x12
	.long	.LASF55
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF56
	.uleb128 0x10
	.long	.LASF57
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF58
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF59
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF60
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF62
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x3b1
	.uleb128 0xa
	.long	.LASF63
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x292
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF65
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x3b6
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
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x3bc
	.uleb128 0x10
	.long	.LASF67
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF68
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0x10
	.long	.LASF69
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x3bc
	.uleb128 0x10
	.long	.LASF70
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF71
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x12
	.long	.LASF72
	.byte	0xf
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
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x438
	.uleb128 0x12
	.long	.LASF74
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x438
	.uleb128 0x12
	.long	.LASF75
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x464
	.uleb128 0x7
	.byte	0x8
	.long	0x98
	.uleb128 0x12
	.long	.LASF76
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x464
	.uleb128 0x10
	.long	.LASF77
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF78
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF79
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x292
	.uleb128 0x10
	.long	.LASF80
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
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
	.long	0x3c
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
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x4fd
	.uleb128 0x10
	.long	.LASF86
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x292
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x7
	.byte	0x4
	.long	0x3c
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
	.uleb128 0x8
	.long	0x51a
	.uleb128 0x12
	.long	.LASF98
	.byte	0x18
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
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x58c
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x19
	.byte	0x1c
	.byte	0x6
	.long	0x5c9
	.uleb128 0x17
	.long	.LASF102
	.byte	0
	.uleb128 0x17
	.long	.LASF103
	.byte	0x1
	.uleb128 0x17
	.long	.LASF104
	.byte	0x2
	.uleb128 0x17
	.long	.LASF105
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF106
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x422
	.uleb128 0x10
	.long	.LASF107
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF108
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.long	0x603
	.uleb128 0x9
	.byte	0x3
	.quad	no_newline
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF109
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.long	0x603
	.uleb128 0x9
	.byte	0x3
	.quad	verbose
	.uleb128 0xd
	.long	0x3b1
	.long	0x630
	.uleb128 0xe
	.long	0x35
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x620
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x1
	.byte	0x28
	.byte	0x1c
	.long	0x630
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0x61
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e7
	.uleb128 0x1d
	.long	.LASF113
	.byte	0x1
	.byte	0x5e
	.byte	0xb
	.long	0x61
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1d
	.long	.LASF114
	.byte	0x1
	.byte	0x5e
	.byte	0x18
	.long	0x464
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1e
	.long	.LASF115
	.byte	0x1
	.byte	0x61
	.byte	0x7
	.long	0x61
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1e
	.long	.LASF116
	.byte	0x1
	.byte	0x62
	.byte	0x7
	.long	0x61
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1e
	.long	.LASF117
	.byte	0x1
	.byte	0x63
	.byte	0x7
	.long	0x61
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x1
	.byte	0x64
	.byte	0x8
	.long	0x603
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x180
	.long	0x817
	.uleb128 0x1e
	.long	.LASF119
	.byte	0x1
	.byte	0x9e
	.byte	0x13
	.long	0x292
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1e
	.long	.LASF120
	.byte	0x1
	.byte	0x9f
	.byte	0xd
	.long	0x98
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x20
	.long	0x1045
	.quad	.LBI70
	.byte	.LVU193
	.long	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.byte	0xa6
	.byte	0xd
	.long	0x754
	.uleb128 0x21
	.long	0x1056
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x22
	.quad	.LVL108
	.long	0x1063
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL82
	.long	0x1070
	.long	0x76c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL85
	.long	0x107d
	.long	0x784
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL88
	.long	0x108a
	.long	0x7a2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL91
	.long	0x1096
	.long	0x7c4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL92
	.long	0x10a3
	.uleb128 0x24
	.quad	.LVL93
	.long	0x10af
	.long	0x7fc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.quad	.LVL95
	.long	0x10bb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL60
	.long	0x10c7
	.uleb128 0x24
	.quad	.LVL61
	.long	0x10d3
	.long	0x848
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
	.uleb128 0x24
	.quad	.LVL62
	.long	0x10df
	.long	0x874
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
	.uleb128 0x24
	.quad	.LVL63
	.long	0x10eb
	.long	0x893
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.uleb128 0x25
	.quad	.LVL64
	.long	0x10f7
	.uleb128 0x24
	.quad	.LVL65
	.long	0x1104
	.long	0x8dd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
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
	.uleb128 0x24
	.quad	.LVL75
	.long	0x1110
	.long	0x91b
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
	.quad	.LC27
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL76
	.long	0x111c
	.long	0x932
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL77
	.long	0x9e7
	.long	0x949
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL102
	.long	0x1129
	.long	0x972
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
	.quad	.LVL103
	.long	0x10af
	.long	0x98e
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
	.uleb128 0x24
	.quad	.LVL104
	.long	0x9e7
	.long	0x9a5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.quad	.LVL105
	.long	0x1129
	.long	0x9ce
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
	.uleb128 0x22
	.quad	.LVL106
	.long	0x10af
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
	.uleb128 0x26
	.long	.LASF122
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xf60
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.byte	0x38
	.byte	0xc
	.long	0x61
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x20
	.long	0x101a
	.quad	.LBI33
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3b
	.byte	0x5
	.long	0xa66
	.uleb128 0x21
	.long	0x1037
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x21
	.long	0x102b
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x22
	.quad	.LVL5
	.long	0x1135
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
	.uleb128 0x20
	.long	0xf60
	.quad	.LBI37
	.byte	.LVU35
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x58
	.byte	0x7
	.long	0xd79
	.uleb128 0x27
	.long	0xf6e
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.long	0xfab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	0xfb8
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2a
	.long	0xfc5
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2a
	.long	0xfd2
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2b
	.long	0xffb
	.quad	.LBI39
	.byte	.LVU59
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0xb4a
	.uleb128 0x21
	.long	0x100c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x24
	.quad	.LVL29
	.long	0x1141
	.long	0xb1c
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
	.uleb128 0x22
	.quad	.LVL46
	.long	0x1141
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
	.uleb128 0x2b
	.long	0xffb
	.quad	.LBI45
	.byte	.LVU74
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0xbc2
	.uleb128 0x21
	.long	0x100c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x24
	.quad	.LVL37
	.long	0x1141
	.long	0xb9b
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
	.uleb128 0x22
	.quad	.LVL53
	.long	0x1141
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
	.uleb128 0x2b
	.long	0xffb
	.quad	.LBI54
	.byte	.LVU85
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0xc09
	.uleb128 0x21
	.long	0x100c
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x22
	.quad	.LVL41
	.long	0x1141
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
	.uleb128 0x24
	.quad	.LVL26
	.long	0x1129
	.long	0xc32
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
	.uleb128 0x24
	.quad	.LVL30
	.long	0x10d3
	.long	0xc4e
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
	.uleb128 0x24
	.quad	.LVL32
	.long	0x114d
	.long	0xc72
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
	.uleb128 0x24
	.quad	.LVL34
	.long	0x1129
	.long	0xc9b
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
	.uleb128 0x24
	.quad	.LVL38
	.long	0x1129
	.long	0xcc4
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
	.uleb128 0x25
	.quad	.LVL43
	.long	0x1129
	.uleb128 0x24
	.quad	.LVL47
	.long	0x10d3
	.long	0xced
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
	.uleb128 0x24
	.quad	.LVL49
	.long	0x114d
	.long	0xd11
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
	.uleb128 0x24
	.quad	.LVL50
	.long	0x1129
	.long	0xd3a
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
	.uleb128 0x24
	.quad	.LVL55
	.long	0x1129
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
	.quad	.LC23
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL56
	.long	0x1070
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xffb
	.quad	.LBI64
	.byte	.LVU24
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x3e
	.byte	0x7
	.long	0xdb9
	.uleb128 0x21
	.long	0x100c
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x22
	.quad	.LVL11
	.long	0x1141
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
	.uleb128 0x24
	.quad	.LVL2
	.long	0x1129
	.long	0xde2
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
	.uleb128 0x24
	.quad	.LVL6
	.long	0x111c
	.long	0xdfa
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL8
	.long	0x1129
	.long	0xe1e
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
	.uleb128 0x24
	.quad	.LVL12
	.long	0x1129
	.long	0xe47
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
	.uleb128 0x24
	.quad	.LVL13
	.long	0x1070
	.long	0xe5f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL14
	.long	0x1129
	.long	0xe88
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
	.uleb128 0x24
	.quad	.LVL15
	.long	0x1070
	.long	0xea0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL16
	.long	0x1129
	.long	0xec9
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
	.long	0x1070
	.long	0xee1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL18
	.long	0x1129
	.long	0xf0a
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
	.uleb128 0x24
	.quad	.LVL19
	.long	0x1070
	.long	0xf22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL20
	.long	0x1129
	.long	0xf4b
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
	.uleb128 0x22
	.quad	.LVL21
	.long	0x1070
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF156
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0xfe0
	.uleb128 0x2d
	.long	.LASF124
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x292
	.uleb128 0x2e
	.long	.LASF123
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0xfa6
	.uleb128 0x2f
	.long	.LASF124
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x292
	.byte	0
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x292
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xf7b
	.uleb128 0x30
	.long	.LASF123
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0xff0
	.uleb128 0x30
	.long	.LASF125
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x292
	.uleb128 0x30
	.long	.LASF126
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0xff5
	.uleb128 0x30
	.long	.LASF127
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x292
	.byte	0
	.uleb128 0xd
	.long	0xfa6
	.long	0xff0
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xfe0
	.uleb128 0x7
	.byte	0x8
	.long	0xfa6
	.uleb128 0x31
	.long	.LASF129
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x101a
	.uleb128 0x32
	.long	.LASF128
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x29d
	.uleb128 0x33
	.byte	0
	.uleb128 0x31
	.long	.LASF130
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1045
	.uleb128 0x32
	.long	.LASF131
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2b4
	.uleb128 0x32
	.long	.LASF128
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x29d
	.uleb128 0x33
	.byte	0
	.uleb128 0x34
	.long	.LASF157
	.byte	0x4
	.byte	0x6c
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1063
	.uleb128 0x35
	.string	"__c"
	.byte	0x4
	.byte	0x6c
	.byte	0x17
	.long	0x61
	.byte	0
	.uleb128 0x36
	.long	.LASF132
	.long	.LASF132
	.byte	0x9
	.value	0x35b
	.byte	0xc
	.uleb128 0x36
	.long	.LASF133
	.long	.LASF133
	.byte	0x9
	.value	0x296
	.byte	0xc
	.uleb128 0x36
	.long	.LASF134
	.long	.LASF134
	.byte	0x1b
	.value	0x235
	.byte	0xd
	.uleb128 0x37
	.long	.LASF135
	.long	.LASF135
	.byte	0x19
	.byte	0x33
	.byte	0x7
	.uleb128 0x36
	.long	.LASF136
	.long	.LASF136
	.byte	0x18
	.value	0x18d
	.byte	0x7
	.uleb128 0x37
	.long	.LASF137
	.long	.LASF137
	.byte	0x12
	.byte	0x25
	.byte	0xd
	.uleb128 0x37
	.long	.LASF138
	.long	.LASF138
	.byte	0x1a
	.byte	0x28
	.byte	0xd
	.uleb128 0x37
	.long	.LASF139
	.long	.LASF139
	.byte	0x1c
	.byte	0x18
	.byte	0xe
	.uleb128 0x37
	.long	.LASF140
	.long	.LASF140
	.byte	0x17
	.byte	0x25
	.byte	0xd
	.uleb128 0x37
	.long	.LASF141
	.long	.LASF141
	.byte	0x1d
	.byte	0x7a
	.byte	0xe
	.uleb128 0x37
	.long	.LASF142
	.long	.LASF142
	.byte	0x1e
	.byte	0x56
	.byte	0xe
	.uleb128 0x37
	.long	.LASF143
	.long	.LASF143
	.byte	0x1e
	.byte	0x52
	.byte	0xe
	.uleb128 0x36
	.long	.LASF144
	.long	.LASF144
	.byte	0x1b
	.value	0x253
	.byte	0xc
	.uleb128 0x37
	.long	.LASF145
	.long	.LASF145
	.byte	0xe
	.byte	0x42
	.byte	0xc
	.uleb128 0x37
	.long	.LASF146
	.long	.LASF146
	.byte	0x16
	.byte	0x3c
	.byte	0xd
	.uleb128 0x36
	.long	.LASF147
	.long	.LASF147
	.byte	0x1b
	.value	0x269
	.byte	0xd
	.uleb128 0x37
	.long	.LASF148
	.long	.LASF148
	.byte	0x1e
	.byte	0x33
	.byte	0xe
	.uleb128 0x37
	.long	.LASF149
	.long	.LASF149
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x37
	.long	.LASF150
	.long	.LASF150
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x37
	.long	.LASF151
	.long	.LASF151
	.byte	0x1f
	.byte	0x8c
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 0
.LLST10:
	.quad	.LVL57
	.quad	.LVL59
	.value	0x1
	.byte	0x55
	.quad	.LVL59
	.quad	.LVL100
	.value	0x1
	.byte	0x5d
	.quad	.LVL100
	.quad	.LVL101
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL101
	.quad	.LFE136
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 0
.LLST11:
	.quad	.LVL57
	.quad	.LVL60-1
	.value	0x1
	.byte	0x54
	.quad	.LVL60-1
	.quad	.LVL99
	.value	0x1
	.byte	0x5c
	.quad	.LVL99
	.quad	.LVL101
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL101
	.quad	.LFE136
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU123
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU146
	.uleb128 .LVU147
	.uleb128 .LVU148
	.uleb128 .LVU149
	.uleb128 .LVU163
	.uleb128 .LVU164
	.uleb128 .LVU224
	.uleb128 .LVU227
	.uleb128 0
.LLST12:
	.quad	.LVL58
	.quad	.LVL64
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL67
	.value	0x1
	.byte	0x53
	.quad	.LVL68
	.quad	.LVL69
	.value	0x1
	.byte	0x53
	.quad	.LVL70
	.quad	.LVL72
	.value	0x1
	.byte	0x53
	.quad	.LVL73
	.quad	.LVL98
	.value	0x1
	.byte	0x53
	.quad	.LVL101
	.quad	.LFE136
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU124
	.uleb128 .LVU185
	.uleb128 .LVU188
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU223
	.uleb128 .LVU227
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 0
.LLST13:
	.quad	.LVL58
	.quad	.LVL79
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL81
	.quad	.LVL90
	.value	0x1
	.byte	0x5e
	.quad	.LVL90
	.quad	.LVL94
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL94
	.quad	.LVL96
	.value	0x1
	.byte	0x5e
	.quad	.LVL96
	.quad	.LVL97
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL101
	.quad	.LVL107
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL107
	.quad	.LFE136
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU142
	.uleb128 .LVU144
	.uleb128 .LVU164
	.uleb128 .LVU168
	.uleb128 .LVU170
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU174
.LLST14:
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x50
	.quad	.LVL73
	.quad	.LVL74
	.value	0x1
	.byte	0x50
	.quad	.LVL76
	.quad	.LVL77-1
	.value	0x1
	.byte	0x50
	.quad	.LVL77
	.quad	.LVL78
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU126
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 .LVU187
	.uleb128 .LVU220
	.uleb128 .LVU222
	.uleb128 .LVU227
	.uleb128 .LVU238
.LLST15:
	.quad	.LVL58
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL70
	.value	0x1
	.byte	0x5e
	.quad	.LVL70
	.quad	.LVL71
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL71
	.quad	.LVL80
	.value	0x1
	.byte	0x5e
	.quad	.LVL96
	.quad	.LVL97
	.value	0x1
	.byte	0x5e
	.quad	.LVL101
	.quad	.LVL107
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU188
	.uleb128 .LVU203
	.uleb128 .LVU206
	.uleb128 .LVU220
	.uleb128 .LVU238
	.uleb128 0
.LLST16:
	.quad	.LVL81
	.quad	.LVL86
	.value	0x1
	.byte	0x5f
	.quad	.LVL87
	.quad	.LVL96
	.value	0x1
	.byte	0x5f
	.quad	.LVL107
	.quad	.LFE136
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU188
	.uleb128 .LVU203
	.uleb128 .LVU209
	.uleb128 .LVU219
	.uleb128 .LVU238
	.uleb128 0
.LLST17:
	.quad	.LVL81
	.quad	.LVL86
	.value	0x1
	.byte	0x56
	.quad	.LVL89
	.quad	.LVL94
	.value	0x1
	.byte	0x56
	.quad	.LVL107
	.quad	.LFE136
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU193
	.uleb128 .LVU197
	.uleb128 .LVU238
	.uleb128 0
.LLST18:
	.quad	.LVL83
	.quad	.LVL84
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL107
	.quad	.LFE136
	.value	0x3
	.byte	0x91
	.sleb128 -68
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
	.uleb128 .LVU39
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU70
	.uleb128 .LVU91
	.uleb128 .LVU119
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
	.uleb128 .LVU40
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU57
	.uleb128 .LVU91
	.uleb128 .LVU93
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
	.uleb128 .LVU66
	.uleb128 .LVU69
	.uleb128 .LVU102
	.uleb128 .LVU105
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
	.uleb128 .LVU59
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU63
	.uleb128 .LVU95
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU99
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
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 .LVU110
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU116
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
	.uleb128 .LVU85
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU89
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
	.quad	.LBB69
	.quad	.LBE69
	.quad	.LBB76
	.quad	.LBE76
	.quad	.LBB77
	.quad	.LBE77
	.quad	0
	.quad	0
	.quad	.LBB70
	.quad	.LBE70
	.quad	.LBB74
	.quad	.LBE74
	.quad	.LBB75
	.quad	.LBE75
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
.LASF129:
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
.LASF112:
	.string	"longopts"
.LASF100:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF140:
	.string	"set_program_name"
.LASF31:
	.string	"_shortbuf"
.LASF89:
	.string	"shell_always_quoting_style"
.LASF88:
	.string	"shell_quoting_style"
.LASF83:
	.string	"GETOPT_HELP_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF46:
	.string	"stdout"
.LASF102:
	.string	"CAN_EXISTING"
.LASF157:
	.string	"putchar_unlocked"
.LASF144:
	.string	"atexit"
.LASF68:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF99:
	.string	"quoting_style_vals"
.LASF124:
	.string	"program"
.LASF94:
	.string	"escape_quoting_style"
.LASF103:
	.string	"CAN_ALL_BUT_LAST"
.LASF87:
	.string	"literal_quoting_style"
.LASF26:
	.string	"_fileno"
.LASF115:
	.string	"can_mode"
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
.LASF150:
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
.LASF146:
	.string	"version_etc"
.LASF120:
	.string	"value"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF152:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF130:
	.string	"fprintf"
.LASF131:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF142:
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
.LASF108:
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
.LASF141:
	.string	"setlocale"
.LASF119:
	.string	"fname"
.LASF117:
	.string	"optc"
.LASF85:
	.string	"version_etc_copyright"
.LASF34:
	.string	"_codecvt"
.LASF57:
	.string	"optarg"
.LASF135:
	.string	"canonicalize_filename_mode"
.LASF72:
	.string	"getdate_err"
.LASF58:
	.string	"optind"
.LASF104:
	.string	"CAN_MISSING"
.LASF18:
	.string	"_IO_write_end"
.LASF132:
	.string	"__overflow"
.LASF155:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF106:
	.string	"error_print_progname"
.LASF126:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF54:
	.string	"time_t"
.LASF153:
	.string	"src/readlink.c"
.LASF138:
	.string	"error"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF139:
	.string	"areadlink_with_size"
.LASF93:
	.string	"c_maybe_quoting_style"
.LASF109:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF125:
	.string	"node"
.LASF151:
	.string	"strncmp"
.LASF110:
	.string	"no_newline"
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
.LASF147:
	.string	"exit"
.LASF149:
	.string	"__fprintf_chk"
.LASF90:
	.string	"shell_escape_quoting_style"
.LASF148:
	.string	"dcgettext"
.LASF98:
	.string	"quoting_style_args"
.LASF60:
	.string	"optopt"
.LASF136:
	.string	"quotearg_n_style_colon"
.LASF70:
	.string	"daylight"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF114:
	.string	"argv"
.LASF111:
	.string	"verbose"
.LASF118:
	.string	"use_nuls"
.LASF96:
	.string	"clocale_quoting_style"
.LASF137:
	.string	"__errno_location"
.LASF59:
	.string	"opterr"
.LASF105:
	.string	"CAN_NOLINKS"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF134:
	.string	"free"
.LASF128:
	.string	"__fmt"
.LASF123:
	.string	"infomap"
.LASF64:
	.string	"has_arg"
.LASF122:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF10:
	.string	"__time_t"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF101:
	.string	"canonicalize_mode_t"
.LASF143:
	.string	"textdomain"
.LASF67:
	.string	"__daylight"
.LASF116:
	.string	"status"
.LASF154:
	.string	"/root/coreutils"
.LASF37:
	.string	"_freeres_buf"
.LASF22:
	.string	"_IO_backup_base"
.LASF107:
	.string	"error_message_count"
.LASF127:
	.string	"lc_messages"
.LASF113:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF145:
	.string	"getopt_long"
.LASF133:
	.string	"fputs_unlocked"
.LASF66:
	.string	"__tzname"
.LASF121:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF156:
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
