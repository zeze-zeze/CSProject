	.file	"chgrp.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"chgrp"
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
	.string	"Usage: %s [OPTION]... GROUP FILE...\n  or:  %s [OPTION]... --reference=RFILE FILE...\n"
	.align 8
.LC5:
	.string	"Change the group of each FILE to GROUP.\nWith --reference, change the group of each FILE to that of RFILE.\n\n"
	.align 8
.LC6:
	.string	"  -c, --changes          like verbose but report only when a change is made\n  -f, --silent, --quiet  suppress most error messages\n  -v, --verbose          output a diagnostic for every file processed\n"
	.align 8
.LC7:
	.string	"      --dereference      affect the referent of each symbolic link (this is\n                         the default), rather than the symbolic link itself\n  -h, --no-dereference   affect symbolic links instead of any referenced file\n"
	.align 8
.LC8:
	.string	"                         (useful only on systems that can change the\n                         ownership of a symlink)\n"
	.align 8
.LC9:
	.string	"      --no-preserve-root  do not treat '/' specially (the default)\n      --preserve-root    fail to operate recursively on '/'\n"
	.align 8
.LC10:
	.string	"      --reference=RFILE  use RFILE's group rather than specifying a\n                         GROUP value\n"
	.align 8
.LC11:
	.string	"  -R, --recursive        operate on files and directories recursively\n"
	.align 8
.LC12:
	.ascii	"\nThe following options modify how a hierarchy is traversed "
	.ascii	"when the -R\noption is also specified.  If more than one is "
	.ascii	"specified, only the final\none takes effect.\n\n  -H        "
	.ascii	"             if a command line ar"
	.string	"gument is a symbolic link\n                         to a directory, traverse it\n  -L                     traverse every symbolic link to a directory\n                         encountered\n  -P                     do not traverse any symbolic links (default)\n\n"
	.align 8
.LC13:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC14:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC15:
	.string	"\nExamples:\n  %s staff /u      Change the group of /u to \"staff\".\n  %s -hR staff /u  Change the group of /u and subfiles to \"staff\".\n"
	.section	.rodata.str1.1
.LC16:
	.string	"["
.LC17:
	.string	"test invocation"
.LC18:
	.string	"coreutils"
.LC19:
	.string	"Multi-call invocation"
.LC20:
	.string	"sha224sum"
.LC21:
	.string	"sha2 utilities"
.LC22:
	.string	"sha256sum"
.LC23:
	.string	"sha384sum"
.LC24:
	.string	"sha512sum"
.LC25:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC27:
	.string	"GNU coreutils"
.LC28:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC30:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL0:
.LFB136:
	.file 1 "src/chgrp.c"
	.loc 1 105 1 view -0
	.cfi_startproc
	.loc 1 105 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 107 5 view .LVU2
	movl	$5, %edx
	.loc 1 105 1 view .LVU3
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
	.loc 1 105 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 106 3 is_stmt 1 view .LVU5
	.loc 1 106 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 107 5 is_stmt 1 view .LVU7
	.loc 1 107 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 107 5 is_stmt 0 view .LVU9
	call	dcgettext@PLT
.LVL2:
.LBB42:
.LBB43:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE43:
.LBE42:
	.loc 1 107 5 view .LVU11
	movq	%rax, %rdx
.LVL3:
.LBB45:
.LBI42:
	.loc 2 98 1 is_stmt 1 view .LVU12
.LBB44:
	.loc 2 100 3 view .LVU13
	.loc 2 100 10 is_stmt 0 view .LVU14
	xorl	%eax, %eax
.LVL4:
	.loc 2 100 10 view .LVU15
	call	__fprintf_chk@PLT
.LVL5:
.L3:
	.loc 2 100 10 view .LVU16
.LBE44:
.LBE45:
	.loc 1 169 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 110 7 view .LVU18
	.loc 1 110 15 is_stmt 0 view .LVU19
	xorl	%edi, %edi
.LVL7:
	.loc 1 110 15 view .LVU20
	leaq	.LC4(%rip), %rsi
.LBB46:
.LBB47:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU21
	leaq	.LC22(%rip), %rbx
.LBE47:
.LBE46:
	.loc 1 110 15 view .LVU22
	call	dcgettext@PLT
.LVL8:
.LBB73:
.LBB74:
	.loc 2 107 10 view .LVU23
	movq	%r12, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE74:
.LBE73:
	.loc 1 110 15 view .LVU24
	movq	%rax, %rsi
.LVL9:
.LBB76:
.LBI73:
	.loc 2 105 1 is_stmt 1 view .LVU25
.LBB75:
	.loc 2 107 3 view .LVU26
	.loc 2 107 10 is_stmt 0 view .LVU27
	xorl	%eax, %eax
.LVL10:
	.loc 2 107 10 view .LVU28
	call	__printf_chk@PLT
.LVL11:
	.loc 2 107 10 view .LVU29
.LBE75:
.LBE76:
	.loc 1 115 7 is_stmt 1 view .LVU30
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC5(%rip), %rsi
	call	dcgettext@PLT
.LVL12:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL13:
	.loc 1 120 7 view .LVU31
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC6(%rip), %rsi
	call	dcgettext@PLT
.LVL14:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL15:
	.loc 1 125 7 view .LVU32
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC7(%rip), %rsi
	call	dcgettext@PLT
.LVL16:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL17:
	.loc 1 130 7 view .LVU33
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC8(%rip), %rsi
	call	dcgettext@PLT
.LVL18:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL19:
	.loc 1 134 7 view .LVU34
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC9(%rip), %rsi
	call	dcgettext@PLT
.LVL20:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL21:
	.loc 1 138 7 view .LVU35
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC10(%rip), %rsi
	call	dcgettext@PLT
.LVL22:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL23:
	.loc 1 142 7 view .LVU36
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC11(%rip), %rsi
	call	dcgettext@PLT
.LVL24:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL25:
	.loc 1 145 7 view .LVU37
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC12(%rip), %rsi
	call	dcgettext@PLT
.LVL26:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL27:
	.loc 1 158 7 view .LVU38
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC13(%rip), %rsi
	call	dcgettext@PLT
.LVL28:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL29:
	.loc 1 159 7 view .LVU39
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC14(%rip), %rsi
	call	dcgettext@PLT
.LVL30:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL31:
	.loc 1 160 7 view .LVU40
	movq	program_name(%rip), %r12
	.loc 1 160 15 is_stmt 0 view .LVU41
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC15(%rip), %rsi
	call	dcgettext@PLT
.LVL32:
.LBB77:
.LBB78:
	.loc 2 107 10 view .LVU42
	movq	%r12, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE78:
.LBE77:
	.loc 1 160 15 view .LVU43
	movq	%rax, %rsi
.LVL33:
.LBB80:
.LBI77:
	.loc 2 105 1 is_stmt 1 view .LVU44
.LBB79:
	.loc 2 107 3 view .LVU45
	.loc 2 107 10 is_stmt 0 view .LVU46
	xorl	%eax, %eax
.LVL34:
	.loc 2 107 10 view .LVU47
	call	__printf_chk@PLT
.LVL35:
	.loc 2 107 10 view .LVU48
.LBE79:
.LBE80:
	.loc 1 167 7 is_stmt 1 view .LVU49
.LBB81:
.LBI46:
	.loc 3 634 1 view .LVU50
.LBB72:
	.loc 3 636 3 view .LVU51
	.loc 3 636 67 is_stmt 0 view .LVU52
	leaq	.LC16(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC23(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC17(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC18(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC19(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC20(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 3 646 3 is_stmt 1 view .LVU53
.LVL36:
	.loc 3 647 3 view .LVU54
	.loc 3 649 3 view .LVU55
	.loc 3 649 9 view .LVU56
	.loc 3 636 67 is_stmt 0 view .LVU57
	movq	%rax, 32(%rsp)
	leaq	.LC21(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC24(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC0(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 3 647 25 view .LVU58
	movq	%rsp, %rax
.LVL37:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 3 650 5 is_stmt 1 view .LVU59
	.loc 3 649 18 is_stmt 0 view .LVU60
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU61
	addq	$16, %rax
.LVL38:
	.loc 3 649 9 is_stmt 1 view .LVU62
	testq	%rdi, %rdi
	je	.L4
	.loc 3 649 33 is_stmt 0 view .LVU63
	movl	$6, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU64
	testb	%dl, %dl
	jne	.L5
.L4:
	.loc 3 652 3 is_stmt 1 view .LVU65
	.loc 3 652 15 is_stmt 0 view .LVU66
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU67
	movl	$5, %edx
	leaq	.LC25(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU68
	testq	%r12, %r12
	je	.L6
	.loc 3 653 5 is_stmt 1 view .LVU69
.LVL39:
	.loc 3 655 3 view .LVU70
	.loc 3 655 11 is_stmt 0 view .LVU71
	call	dcgettext@PLT
.LVL40:
.LBB48:
.LBB49:
	.loc 2 107 10 view .LVU72
	leaq	.LC26(%rip), %rcx
	movl	$1, %edi
	leaq	.LC27(%rip), %rdx
.LBE49:
.LBE48:
	.loc 3 655 11 view .LVU73
	movq	%rax, %rsi
.LVL41:
.LBB53:
.LBI48:
	.loc 2 105 1 is_stmt 1 view .LVU74
.LBB50:
	.loc 2 107 3 view .LVU75
	.loc 2 107 10 is_stmt 0 view .LVU76
	xorl	%eax, %eax
.LVL42:
	.loc 2 107 10 view .LVU77
	call	__printf_chk@PLT
.LVL43:
	.loc 2 107 10 view .LVU78
.LBE50:
.LBE53:
	.loc 3 659 3 is_stmt 1 view .LVU79
	.loc 3 659 29 is_stmt 0 view .LVU80
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL44:
	movq	%rax, %rdi
.LVL45:
	.loc 3 660 3 is_stmt 1 view .LVU81
	.loc 3 660 6 is_stmt 0 view .LVU82
	testq	%rax, %rax
	je	.L7
	.loc 3 660 22 view .LVU83
	movl	$3, %edx
	leaq	.LC28(%rip), %rsi
	call	strncmp@PLT
.LVL46:
	.loc 3 660 19 view .LVU84
	testl	%eax, %eax
	jne	.L10
.LVL47:
.L7:
	.loc 3 669 3 is_stmt 1 view .LVU85
	.loc 3 669 11 is_stmt 0 view .LVU86
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	call	dcgettext@PLT
.LVL48:
.LBB54:
.LBB55:
	.loc 2 107 10 view .LVU87
	leaq	.LC0(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	movl	$1, %edi
.LBE55:
.LBE54:
	.loc 3 669 11 view .LVU88
	movq	%rax, %rsi
.LVL49:
.LBB61:
.LBI54:
	.loc 2 105 1 is_stmt 1 view .LVU89
.LBB56:
	.loc 2 107 3 view .LVU90
	.loc 2 107 10 is_stmt 0 view .LVU91
	xorl	%eax, %eax
.LVL50:
	.loc 2 107 10 view .LVU92
.LBE56:
.LBE61:
	.loc 3 671 3 view .LVU93
	leaq	.LC1(%rip), %r13
.LBB62:
.LBB57:
	.loc 2 107 10 view .LVU94
	call	__printf_chk@PLT
.LVL51:
	.loc 2 107 10 view .LVU95
.LBE57:
.LBE62:
	.loc 3 671 3 is_stmt 1 view .LVU96
	cmpq	%rbx, %r12
	leaq	.LC2(%rip), %rcx
	cmovne	%rcx, %r13
.L8:
	.loc 3 671 11 is_stmt 0 view .LVU97
	xorl	%edi, %edi
	leaq	.LC31(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL52:
.LBB63:
.LBB64:
	.loc 2 107 10 view .LVU98
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE64:
.LBE63:
	.loc 3 671 11 view .LVU99
	movq	%rax, %rsi
.LVL53:
.LBB66:
.LBI63:
	.loc 2 105 1 is_stmt 1 view .LVU100
.LBB65:
	.loc 2 107 3 view .LVU101
	.loc 2 107 10 is_stmt 0 view .LVU102
	xorl	%eax, %eax
.LVL54:
	.loc 2 107 10 view .LVU103
	call	__printf_chk@PLT
.LVL55:
	.loc 2 107 10 view .LVU104
.LBE65:
.LBE66:
	.loc 3 673 1 view .LVU105
	jmp	.L3
.LVL56:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU106
	.loc 3 655 11 is_stmt 0 view .LVU107
	call	dcgettext@PLT
.LVL57:
.LBB67:
.LBB51:
	.loc 2 107 10 view .LVU108
	leaq	.LC26(%rip), %rcx
	movl	$1, %edi
	leaq	.LC27(%rip), %rdx
.LBE51:
.LBE67:
	.loc 3 655 11 view .LVU109
	movq	%rax, %rsi
.LVL58:
.LBB68:
	.loc 2 105 1 is_stmt 1 view .LVU110
.LBB52:
	.loc 2 107 3 view .LVU111
	.loc 2 107 10 is_stmt 0 view .LVU112
	xorl	%eax, %eax
.LVL59:
	.loc 2 107 10 view .LVU113
	call	__printf_chk@PLT
.LVL60:
	.loc 2 107 10 view .LVU114
.LBE52:
.LBE68:
	.loc 3 659 3 is_stmt 1 view .LVU115
	.loc 3 659 29 is_stmt 0 view .LVU116
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL61:
	movq	%rax, %rdi
.LVL62:
	.loc 3 660 3 is_stmt 1 view .LVU117
	.loc 3 660 6 is_stmt 0 view .LVU118
	testq	%rax, %rax
	je	.L9
	.loc 3 660 22 view .LVU119
	movl	$3, %edx
	leaq	.LC28(%rip), %rsi
	call	strncmp@PLT
.LVL63:
	.loc 3 660 19 view .LVU120
	testl	%eax, %eax
	jne	.L29
.L9:
	.loc 3 669 3 is_stmt 1 view .LVU121
	.loc 3 669 11 is_stmt 0 view .LVU122
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL64:
.LBB69:
.LBB58:
	.loc 2 107 10 view .LVU123
	leaq	.LC0(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	movl	$1, %edi
.LBE58:
.LBE69:
	.loc 3 669 11 view .LVU124
	movq	%rax, %rsi
.LVL65:
.LBB70:
	.loc 2 105 1 is_stmt 1 view .LVU125
.LBB59:
	.loc 2 107 3 view .LVU126
	.loc 2 107 10 is_stmt 0 view .LVU127
	xorl	%eax, %eax
.LVL66:
	.loc 2 107 10 view .LVU128
.LBE59:
.LBE70:
	.loc 3 646 15 view .LVU129
	leaq	.LC0(%rip), %r12
.LBB71:
.LBB60:
	.loc 2 107 10 view .LVU130
	call	__printf_chk@PLT
.LVL67:
	.loc 2 107 10 view .LVU131
.LBE60:
.LBE71:
	.loc 3 671 3 is_stmt 1 view .LVU132
	leaq	.LC1(%rip), %r13
	jmp	.L8
.L29:
	.loc 3 646 15 is_stmt 0 view .LVU133
	leaq	.LC0(%rip), %r12
.LVL68:
.L10:
	.loc 3 666 7 is_stmt 1 view .LVU134
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	call	dcgettext@PLT
.LVL69:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL70:
	jmp	.L7
.LBE72:
.LBE81:
	.cfi_endproc
.LFE136:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC32:
	.string	"/usr/local/share/locale"
.LC33:
	.string	"Jim Meyering"
.LC34:
	.string	"David MacKenzie"
.LC35:
	.string	"HLPRcfhv"
	.section	.rodata.str1.8
	.align 8
.LC36:
	.string	"-R --dereference requires either -H or -L"
	.section	.rodata.str1.1
.LC37:
	.string	"missing operand"
.LC38:
	.string	"missing operand after %s"
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"failed to get attributes of %s"
	.section	.rodata.str1.1
.LC40:
	.string	"invalid group: %s"
.LC41:
	.string	"/"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL71:
.LFB137:
	.loc 1 174 1 view -0
	.cfi_startproc
	.loc 1 174 1 is_stmt 0 view .LVU136
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 179 7 view .LVU137
	movl	$16, %r14d
	.loc 1 174 1 view .LVU138
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	.loc 1 183 7 view .LVU139
	movl	$-1, %r13d
	.loc 1 174 1 view .LVU140
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movslq	%edi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	.L37(%rip), %rbx
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.loc 1 190 3 view .LVU141
	movq	(%rsi), %rdi
.LVL72:
	.loc 1 174 1 view .LVU142
	movq	%fs:40, %rax
	movq	%rax, 232(%rsp)
	xorl	%eax, %eax
	.loc 1 175 3 is_stmt 1 view .LVU143
.LVL73:
	.loc 1 176 3 view .LVU144
	.loc 1 179 3 view .LVU145
	.loc 1 183 3 view .LVU146
	.loc 1 185 3 view .LVU147
	.loc 1 186 3 view .LVU148
	.loc 1 187 3 view .LVU149
	.loc 1 189 33 view .LVU150
	.loc 1 190 3 view .LVU151
	.loc 1 197 3 is_stmt 0 view .LVU152
	leaq	32(%rsp), %r15
	.loc 1 190 3 view .LVU153
	call	set_program_name@PLT
.LVL74:
	.loc 1 191 3 is_stmt 1 view .LVU154
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL75:
	.loc 1 192 3 view .LVU155
	leaq	.LC32(%rip), %rsi
	leaq	.LC18(%rip), %rdi
	call	bindtextdomain@PLT
.LVL76:
	.loc 1 193 3 view .LVU156
	leaq	.LC18(%rip), %rdi
	call	textdomain@PLT
.LVL77:
	.loc 1 195 3 view .LVU157
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL78:
	.loc 1 197 3 view .LVU158
	movq	%r15, %rdi
	call	chopt_init@PLT
.LVL79:
	.loc 1 199 3 view .LVU159
	.loc 1 175 8 is_stmt 0 view .LVU160
	movb	$0, 15(%rsp)
.LVL80:
.L31:
	.loc 1 199 9 is_stmt 1 view .LVU161
	.loc 1 199 18 is_stmt 0 view .LVU162
	xorl	%r8d, %r8d
	leaq	long_options(%rip), %rcx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	leaq	.LC35(%rip), %rdx
	call	getopt_long@PLT
.LVL81:
	.loc 1 199 9 view .LVU163
	cmpl	$-1, %eax
	je	.L79
	.loc 1 202 7 is_stmt 1 view .LVU164
	cmpl	$131, %eax
	jg	.L54
	cmpl	$71, %eax
	jle	.L80
	subl	$72, %eax
.LVL82:
	.loc 1 202 7 is_stmt 0 view .LVU165
	cmpl	$59, %eax
	ja	.L54
	movslq	(%rbx,%rax,4), %rax
	addq	%rbx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L37:
	.long	.L48-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L47-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L67-.L37
	.long	.L54-.L37
	.long	.L45-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L44-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L43-.L37
	.long	.L54-.L37
	.long	.L42-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L41-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L54-.L37
	.long	.L40-.L37
	.long	.L39-.L37
	.long	.L38-.L37
	.long	.L36-.L37
	.section	.text.startup
.L67:
	.loc 1 213 21 view .LVU166
	movl	$16, %r14d
.LVL83:
	.loc 1 213 21 view .LVU167
	jmp	.L31
.LVL84:
.L47:
	.loc 1 202 7 view .LVU168
	movl	$2, %r14d
.LVL85:
	.loc 1 202 7 view .LVU169
	jmp	.L31
.LVL86:
.L48:
	.loc 1 205 21 view .LVU170
	movl	$17, %r14d
.LVL87:
	.loc 1 205 21 view .LVU171
	jmp	.L31
.LVL88:
.L36:
	.loc 1 234 11 is_stmt 1 view .LVU172
	.loc 1 234 26 is_stmt 0 view .LVU173
	movq	optarg(%rip), %rax
	movq	%rax, reference_file(%rip)
	.loc 1 235 11 is_stmt 1 view .LVU174
	jmp	.L31
.L38:
	.loc 1 230 11 view .LVU175
.LVL89:
	.loc 1 231 11 view .LVU176
	.loc 1 230 25 is_stmt 0 view .LVU177
	movb	$1, 15(%rsp)
	.loc 1 231 11 view .LVU178
	jmp	.L31
.LVL90:
.L39:
	.loc 1 226 11 is_stmt 1 view .LVU179
	.loc 1 227 11 view .LVU180
	.loc 1 226 25 is_stmt 0 view .LVU181
	movb	$0, 15(%rsp)
	.loc 1 227 11 view .LVU182
	jmp	.L31
.LVL91:
.L40:
	.loc 1 222 11 is_stmt 1 view .LVU183
	.loc 1 223 11 view .LVU184
	.loc 1 222 23 is_stmt 0 view .LVU185
	movl	$1, %r13d
	.loc 1 223 11 view .LVU186
	jmp	.L31
.LVL92:
.L41:
	.loc 1 250 11 is_stmt 1 view .LVU187
	.loc 1 250 27 is_stmt 0 view .LVU188
	movl	$0, 32(%rsp)
	.loc 1 251 11 is_stmt 1 view .LVU189
	jmp	.L31
.L42:
	.loc 1 217 11 view .LVU190
.LVL93:
	.loc 1 218 11 view .LVU191
	.loc 1 217 23 is_stmt 0 view .LVU192
	xorl	%r13d, %r13d
	.loc 1 218 11 view .LVU193
	jmp	.L31
.LVL94:
.L43:
	.loc 1 246 11 is_stmt 1 view .LVU194
	.loc 1 246 30 is_stmt 0 view .LVU195
	movb	$1, 49(%rsp)
	.loc 1 247 11 is_stmt 1 view .LVU196
	jmp	.L31
.L44:
	.loc 1 242 11 view .LVU197
	.loc 1 242 27 is_stmt 0 view .LVU198
	movl	$1, 32(%rsp)
	.loc 1 243 11 is_stmt 1 view .LVU199
	jmp	.L31
.L45:
	.loc 1 238 11 view .LVU200
	.loc 1 238 25 is_stmt 0 view .LVU201
	movb	$1, 36(%rsp)
	.loc 1 239 11 is_stmt 1 view .LVU202
	jmp	.L31
.LVL95:
	.p2align 4,,10
	.p2align 3
.L80:
	.loc 1 202 7 is_stmt 0 view .LVU203
	cmpl	$-131, %eax
	jne	.L81
	.loc 1 253 9 is_stmt 1 view .LVU204
	.loc 1 253 30 view .LVU205
	.loc 1 254 9 view .LVU206
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 312
	movq	stdout(%rip), %rdi
	xorl	%eax, %eax
.LVL96:
	.loc 1 254 9 is_stmt 0 view .LVU207
	movq	Version(%rip), %rcx
	pushq	$0
	.cfi_def_cfa_offset 320
	leaq	.LC33(%rip), %r9
	leaq	.LC34(%rip), %r8
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL97:
	.loc 1 254 9 is_stmt 1 view .LVU208
	xorl	%edi, %edi
	call	exit@PLT
.LVL98:
.L81:
	.cfi_restore_state
	.loc 1 202 7 is_stmt 0 view .LVU209
	cmpl	$-130, %eax
	jne	.L54
	.loc 1 253 9 is_stmt 1 view .LVU210
	xorl	%edi, %edi
	call	usage
.LVL99:
.L79:
	.loc 1 260 3 view .LVU211
	.loc 1 260 6 is_stmt 0 view .LVU212
	cmpb	$0, 36(%rsp)
	jne	.L82
	.loc 1 272 17 view .LVU213
	movl	$16, %r14d
.LVL100:
.L50:
	.loc 1 274 3 is_stmt 1 view .LVU214
	.loc 1 274 48 is_stmt 0 view .LVU215
	testl	%r13d, %r13d
	.loc 1 276 12 view .LVU216
	movslq	optind(%rip), %rax
.LVL101:
	.loc 1 276 39 view .LVU217
	movq	reference_file(%rip), %r13
.LVL102:
	.loc 1 276 12 view .LVU218
	movl	%r12d, %edx
	.loc 1 274 33 view .LVU219
	setne	48(%rsp)
	.loc 1 276 3 is_stmt 1 view .LVU220
	.loc 1 276 12 is_stmt 0 view .LVU221
	subl	%eax, %edx
	.loc 1 276 43 view .LVU222
	testq	%r13, %r13
	je	.L83
	.loc 1 276 6 view .LVU223
	testl	%edx, %edx
	jle	.L63
.LBB95:
	.loc 1 287 7 is_stmt 1 view .LVU224
	.loc 1 288 7 view .LVU225
.LVL103:
.LBB96:
.LBI96:
	.file 4 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.loc 4 453 1 view .LVU226
.LBB97:
	.loc 4 455 3 view .LVU227
	.loc 4 455 10 is_stmt 0 view .LVU228
	leaq	80(%rsp), %rdx
.LVL104:
	.loc 4 455 10 view .LVU229
	movq	%r13, %rsi
	movl	$1, %edi
	call	__xstat@PLT
.LVL105:
	.loc 4 455 10 view .LVU230
.LBE97:
.LBE96:
	.loc 1 288 10 view .LVU231
	testl	%eax, %eax
	jne	.L84
	.loc 1 292 7 is_stmt 1 view .LVU232
	.loc 1 292 11 is_stmt 0 view .LVU233
	movl	112(%rsp), %r12d
.LVL106:
	.loc 1 293 7 is_stmt 1 view .LVU234
	.loc 1 293 26 is_stmt 0 view .LVU235
	movl	%r12d, %edi
	call	gid_to_name@PLT
.LVL107:
	.loc 1 293 24 view .LVU236
	movq	%rax, 64(%rsp)
.LVL108:
.L56:
	.loc 1 293 24 view .LVU237
.LBE95:
	.loc 1 302 3 is_stmt 1 view .LVU238
	.loc 1 302 21 is_stmt 0 view .LVU239
	cmpb	$0, 36(%rsp)
	je	.L62
	cmpb	$0, 15(%rsp)
	jne	.L85
.L62:
	.loc 1 311 3 is_stmt 1 view .LVU240
.LVL109:
	.loc 1 312 3 view .LVU241
	.loc 1 312 26 is_stmt 0 view .LVU242
	movslq	optind(%rip), %rax
	.loc 1 311 13 view .LVU243
	movl	%r14d, %esi
	.loc 1 312 8 view .LVU244
	orl	$-1, %edx
	movl	%r12d, %ecx
	.loc 1 311 13 view .LVU245
	orl	$1024, %esi
.LVL110:
	.loc 1 312 8 view .LVU246
	orl	$-1, %r9d
	orl	$-1, %r8d
	leaq	0(%rbp,%rax,8), %rdi
	pushq	%rax
	.cfi_def_cfa_offset 312
	pushq	%r15
	.cfi_def_cfa_offset 320
	call	chown_files@PLT
.LVL111:
	.loc 1 316 3 view .LVU247
	movq	%r15, %rdi
	.loc 1 312 8 view .LVU248
	movl	%eax, %ebx
.LVL112:
	.loc 1 316 3 is_stmt 1 view .LVU249
	call	chopt_free@PLT
.LVL113:
	.loc 1 318 3 view .LVU250
	popq	%rdx
	.cfi_def_cfa_offset 312
	popq	%rcx
	.cfi_def_cfa_offset 304
	.loc 1 318 28 is_stmt 0 view .LVU251
	xorl	$1, %ebx
.LVL114:
	.loc 1 319 1 view .LVU252
	movq	232(%rsp), %rcx
	xorq	%fs:40, %rcx
	.loc 1 318 28 view .LVU253
	movzbl	%bl, %eax
	.loc 1 319 1 view .LVU254
	jne	.L86
	addq	$248, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL115:
	.loc 1 319 1 view .LVU255
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL116:
	.loc 1 319 1 view .LVU256
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL117:
	.loc 1 319 1 view .LVU257
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL118:
.L82:
	.cfi_restore_state
	.loc 1 262 7 is_stmt 1 view .LVU258
	.loc 1 262 10 is_stmt 0 view .LVU259
	cmpl	$16, %r14d
	jne	.L50
	.loc 1 264 11 is_stmt 1 view .LVU260
	.loc 1 264 14 is_stmt 0 view .LVU261
	subl	$1, %r13d
.LVL119:
	.loc 1 264 14 view .LVU262
	je	.L87
	.loc 1 267 23 view .LVU263
	xorl	%r13d, %r13d
	jmp	.L50
.LVL120:
.L83:
	.loc 1 276 6 view .LVU264
	subl	$1, %edx
	jle	.L63
.LBB99:
	.loc 1 297 7 is_stmt 1 view .LVU265
	.loc 1 297 13 is_stmt 0 view .LVU266
	movq	0(%rbp,%rax,8), %rbx
.LVL121:
	.loc 1 298 7 is_stmt 1 view .LVU267
	.loc 1 297 37 is_stmt 0 view .LVU268
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	.loc 1 298 62 view .LVU269
	cmpb	$0, (%rbx)
	jne	.L88
.L57:
	.loc 1 298 24 discriminator 4 view .LVU270
	movq	%r13, 64(%rsp)
	.loc 1 299 7 is_stmt 1 discriminator 4 view .LVU271
.LVL122:
.LBB100:
.LBI100:
	.loc 1 79 1 discriminator 4 view .LVU272
.LBB101:
	.loc 1 81 3 discriminator 4 view .LVU273
	.loc 1 83 3 discriminator 4 view .LVU274
	.loc 1 81 9 is_stmt 0 discriminator 4 view .LVU275
	orl	$-1, %r12d
	.loc 1 83 6 discriminator 4 view .LVU276
	cmpb	$0, (%rbx)
	je	.L56
.LBB102:
	.loc 1 85 7 is_stmt 1 view .LVU277
	.loc 1 85 27 is_stmt 0 view .LVU278
	movq	%rbx, %rdi
	call	getgrnam@PLT
.LVL123:
	.loc 1 86 7 is_stmt 1 view .LVU279
	.loc 1 86 10 is_stmt 0 view .LVU280
	testq	%rax, %rax
	je	.L58
	.loc 1 87 9 is_stmt 1 view .LVU281
	.loc 1 87 13 is_stmt 0 view .LVU282
	movl	16(%rax), %r12d
.LVL124:
.L59:
	.loc 1 97 7 is_stmt 1 view .LVU283
	call	endgrent@PLT
.LVL125:
	jmp	.L56
.LVL126:
.L85:
	.loc 1 97 7 is_stmt 0 view .LVU284
.LBE102:
.LBE101:
.LBE100:
.LBE99:
.LBB108:
	.loc 1 304 7 is_stmt 1 view .LVU285
	.loc 1 305 7 view .LVU286
	.loc 1 305 28 is_stmt 0 view .LVU287
	leaq	dev_ino_buf.7334(%rip), %rdi
	call	get_root_dev_ino@PLT
.LVL127:
	.loc 1 305 26 view .LVU288
	movq	%rax, 40(%rsp)
	.loc 1 306 7 is_stmt 1 view .LVU289
	.loc 1 306 10 is_stmt 0 view .LVU290
	testq	%rax, %rax
	jne	.L62
.LBB109:
	.loc 1 307 9 is_stmt 1 view .LVU291
	leaq	.LC41(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL128:
	movl	$5, %edx
	leaq	.LC39(%rip), %rsi
	xorl	%edi, %edi
	movq	%rax, %r13
	call	dcgettext@PLT
.LVL129:
	movq	%rax, %r12
.LVL130:
	.loc 1 307 9 is_stmt 0 view .LVU292
	call	__errno_location@PLT
.LVL131:
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL132:
.L63:
	.loc 1 307 9 view .LVU293
.LBE109:
.LBE108:
	.loc 1 278 7 is_stmt 1 view .LVU294
	.loc 1 278 10 is_stmt 0 view .LVU295
	cmpl	%r12d, %eax
	jl	.L53
	.loc 1 279 9 is_stmt 1 view .LVU296
	.loc 1 279 22 is_stmt 0 view .LVU297
	movl	$5, %edx
	leaq	.LC37(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL133:
	.loc 1 279 9 view .LVU298
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 279 22 view .LVU299
	movq	%rax, %rdx
	.loc 1 279 9 view .LVU300
	xorl	%eax, %eax
	call	error@PLT
.LVL134:
.L54:
	.loc 1 282 7 is_stmt 1 view .LVU301
	movl	$1, %edi
	call	usage
.LVL135:
.L58:
.LBB110:
.LBB107:
.LBB106:
.LBB105:
.LBB103:
	.loc 1 90 11 view .LVU302
	.loc 1 91 11 view .LVU303
	.loc 1 91 18 is_stmt 0 view .LVU304
	xorl	%esi, %esi
	leaq	24(%rsp), %rcx
	movl	$10, %edx
	movq	%rbx, %rdi
	leaq	.LC2(%rip), %r8
	call	xstrtoumax@PLT
.LVL136:
	.loc 1 91 14 view .LVU305
	testl	%eax, %eax
	jne	.L60
	.loc 1 92 25 view .LVU306
	movq	24(%rsp), %rax
	.loc 1 91 15 view .LVU307
	movl	$4294967295, %edx
	.loc 1 95 15 view .LVU308
	movl	%eax, %r12d
	.loc 1 91 15 view .LVU309
	cmpq	%rdx, %rax
	jbe	.L59
.L60:
.LBB104:
	.loc 1 93 13 is_stmt 1 view .LVU310
	movq	%rbx, %rdi
	call	quote@PLT
.LVL137:
	movl	$5, %edx
	leaq	.LC40(%rip), %rsi
	xorl	%edi, %edi
	movq	%rax, %r12
	call	dcgettext@PLT
.LVL138:
	movq	%r12, %rcx
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL139:
.L88:
	.loc 1 93 13 is_stmt 0 view .LVU311
.LBE104:
.LBE103:
.LBE105:
.LBE106:
.LBE107:
	.loc 1 298 41 discriminator 1 view .LVU312
	movq	%rbx, %rdi
	call	xstrdup@PLT
.LVL140:
	movq	%rax, %r13
	jmp	.L57
.LVL141:
.L86:
	.loc 1 298 41 discriminator 1 view .LVU313
.LBE110:
	.loc 1 319 1 view .LVU314
	call	__stack_chk_fail@PLT
.LVL142:
.L87:
.LBB111:
	.loc 1 265 13 is_stmt 1 view .LVU315
	movl	$5, %edx
	leaq	.LC36(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL143:
	.loc 1 265 13 is_stmt 0 view .LVU316
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL144:
.L84:
	.loc 1 265 13 view .LVU317
.LBE111:
.LBB112:
.LBB98:
	.loc 1 289 9 is_stmt 1 view .LVU318
	movq	%r13, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL145:
	movl	$5, %edx
	leaq	.LC39(%rip), %rsi
	xorl	%edi, %edi
	movq	%rax, %r13
	call	dcgettext@PLT
.LVL146:
	movq	%rax, %r12
	call	__errno_location@PLT
.LVL147:
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL148:
.L53:
.LBE98:
.LBE112:
	.loc 1 281 9 view .LVU319
	movq	-8(%rbp,%r12,8), %rdi
	call	quote@PLT
.LVL149:
	.loc 1 281 22 is_stmt 0 view .LVU320
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC38(%rip), %rsi
	.loc 1 281 9 view .LVU321
	movq	%rax, %r12
	.loc 1 281 22 view .LVU322
	call	dcgettext@PLT
.LVL150:
	.loc 1 281 9 view .LVU323
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 281 22 view .LVU324
	movq	%rax, %rdx
	.loc 1 281 9 view .LVU325
	xorl	%eax, %eax
	call	error@PLT
.LVL151:
	jmp	.L54
	.cfi_endproc
.LFE137:
	.size	main, .-main
	.local	dev_ino_buf.7334
	.comm	dev_ino_buf.7334,16,16
	.section	.rodata.str1.1
.LC42:
	.string	"recursive"
.LC43:
	.string	"changes"
.LC44:
	.string	"dereference"
.LC45:
	.string	"no-dereference"
.LC46:
	.string	"no-preserve-root"
.LC47:
	.string	"preserve-root"
.LC48:
	.string	"quiet"
.LC49:
	.string	"silent"
.LC50:
	.string	"reference"
.LC51:
	.string	"verbose"
.LC52:
	.string	"help"
.LC53:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 416
long_options:
	.quad	.LC42
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	.LC43
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC44
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC45
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC46
	.long	0
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC47
	.long	0
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC48
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC49
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC50
	.long	1
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC51
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC52
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC53
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
	.local	reference_file
	.comm	reference_file,8,8
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
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 14 "./lib/sys/select.h"
	.file 15 "/usr/include/grp.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 18 "/usr/include/time.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 20 "/usr/include/signal.h"
	.file 21 "/usr/include/unistd.h"
	.file 22 "/usr/include/errno.h"
	.file 23 "src/version.h"
	.file 24 "./lib/exitfail.h"
	.file 25 "/usr/include/stdint.h"
	.file 26 "./lib/timespec.h"
	.file 27 "./lib/version-etc.h"
	.file 28 "./lib/progname.h"
	.file 29 "./lib/quotearg.h"
	.file 30 "./lib/dev-ino.h"
	.file 31 "src/chown-core.h"
	.file 32 "./lib/error.h"
	.file 33 "./lib/i-ring.h"
	.file 34 "./lib/quote.h"
	.file 35 "./lib/xstrtol.h"
	.file 36 "/usr/include/libintl.h"
	.file 37 "./lib/xalloc.h"
	.file 38 "./lib/root-dev-ino.h"
	.file 39 "/usr/include/locale.h"
	.file 40 "/usr/include/stdlib.h"
	.file 41 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1a15
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF222
	.byte	0xc
	.long	.LASF223
	.long	.LASF224
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
	.byte	0x91
	.byte	0x19
	.long	0x35
	.uleb128 0x2
	.long	.LASF10
	.byte	0x6
	.byte	0x92
	.byte	0x19
	.long	0x3c
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0x93
	.byte	0x19
	.long	0x3c
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0x94
	.byte	0x19
	.long	0x35
	.uleb128 0x2
	.long	.LASF13
	.byte	0x6
	.byte	0x96
	.byte	0x1a
	.long	0x3c
	.uleb128 0x2
	.long	.LASF14
	.byte	0x6
	.byte	0x97
	.byte	0x1b
	.long	0x35
	.uleb128 0x2
	.long	.LASF15
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.long	.LASF16
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x2
	.long	.LASF17
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x6d
	.uleb128 0x2
	.long	.LASF18
	.byte	0x6
	.byte	0xae
	.byte	0x1d
	.long	0x6d
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6
	.byte	0xb3
	.byte	0x1c
	.long	0x6d
	.uleb128 0x2
	.long	.LASF20
	.byte	0x6
	.byte	0xc4
	.byte	0x21
	.long	0x6d
	.uleb128 0x7
	.byte	0x8
	.long	0x116
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x8
	.long	0x116
	.uleb128 0x9
	.long	.LASF69
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x2a9
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x110
	.byte	0x8
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x110
	.byte	0x10
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x110
	.byte	0x18
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x110
	.byte	0x20
	.uleb128 0xa
	.long	.LASF27
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x110
	.byte	0x28
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x110
	.byte	0x30
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x110
	.byte	0x38
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x110
	.byte	0x40
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x110
	.byte	0x48
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x110
	.byte	0x50
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x110
	.byte	0x58
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x2c2
	.byte	0x60
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x2c8
	.byte	0x68
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0xc8
	.byte	0x78
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x2ce
	.byte	0x83
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x2de
	.byte	0x88
	.uleb128 0xa
	.long	.LASF43
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0xd4
	.byte	0x90
	.uleb128 0xa
	.long	.LASF44
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x2e9
	.byte	0x98
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x2f4
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x2c8
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF49
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x2fa
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x122
	.uleb128 0xb
	.long	.LASF225
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x7
	.byte	0x8
	.long	0x2bd
	.uleb128 0x7
	.byte	0x8
	.long	0x122
	.uleb128 0xd
	.long	0x116
	.long	0x2de
	.uleb128 0xe
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2b5
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2e4
	.uleb128 0xc
	.long	.LASF54
	.uleb128 0x7
	.byte	0x8
	.long	0x2ef
	.uleb128 0xd
	.long	0x116
	.long	0x30a
	.uleb128 0xe
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x11d
	.uleb128 0x8
	.long	0x30a
	.uleb128 0xf
	.long	0x30a
	.uleb128 0x10
	.long	.LASF55
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x326
	.uleb128 0x7
	.byte	0x8
	.long	0x2a9
	.uleb128 0xf
	.long	0x326
	.uleb128 0x10
	.long	.LASF56
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x326
	.uleb128 0x10
	.long	.LASF57
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x326
	.uleb128 0x10
	.long	.LASF58
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x310
	.long	0x360
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x355
	.uleb128 0x10
	.long	.LASF59
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x360
	.uleb128 0x10
	.long	.LASF60
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF61
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x360
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF62
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF63
	.uleb128 0x2
	.long	.LASF64
	.byte	0xb
	.byte	0x2f
	.byte	0x11
	.long	0xa4
	.uleb128 0x2
	.long	.LASF65
	.byte	0xb
	.byte	0x3b
	.byte	0x11
	.long	0x80
	.uleb128 0x2
	.long	.LASF66
	.byte	0xb
	.byte	0x40
	.byte	0x11
	.long	0x98
	.uleb128 0x2
	.long	.LASF67
	.byte	0xb
	.byte	0x4f
	.byte	0x11
	.long	0x8c
	.uleb128 0x2
	.long	.LASF68
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0xe0
	.uleb128 0x9
	.long	.LASF70
	.byte	0x10
	.byte	0xd
	.byte	0xa
	.byte	0x8
	.long	0x3fb
	.uleb128 0xa
	.long	.LASF71
	.byte	0xd
	.byte	0xc
	.byte	0xc
	.long	0xe0
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0xd
	.byte	0x10
	.byte	0x15
	.long	0x104
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF73
	.byte	0xe
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF74
	.uleb128 0x9
	.long	.LASF75
	.byte	0x20
	.byte	0xf
	.byte	0x2a
	.byte	0x8
	.long	0x451
	.uleb128 0xa
	.long	.LASF76
	.byte	0xf
	.byte	0x2c
	.byte	0xb
	.long	0x110
	.byte	0
	.uleb128 0xa
	.long	.LASF77
	.byte	0xf
	.byte	0x2d
	.byte	0xb
	.long	0x110
	.byte	0x8
	.uleb128 0xa
	.long	.LASF78
	.byte	0xf
	.byte	0x2e
	.byte	0xd
	.long	0x98
	.byte	0x10
	.uleb128 0xa
	.long	.LASF79
	.byte	0xf
	.byte	0x2f
	.byte	0xc
	.long	0x451
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x110
	.uleb128 0x10
	.long	.LASF80
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.long	0x110
	.uleb128 0x10
	.long	.LASF81
	.byte	0x10
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF82
	.byte	0x10
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF83
	.byte	0x10
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF84
	.byte	0x20
	.byte	0x11
	.byte	0x32
	.byte	0x8
	.long	0x4c9
	.uleb128 0xa
	.long	.LASF85
	.byte	0x11
	.byte	0x34
	.byte	0xf
	.long	0x30a
	.byte	0
	.uleb128 0xa
	.long	.LASF86
	.byte	0x11
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF87
	.byte	0x11
	.byte	0x38
	.byte	0x8
	.long	0x4ce
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0x11
	.byte	0x39
	.byte	0x7
	.long	0x61
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x487
	.uleb128 0x7
	.byte	0x8
	.long	0x61
	.uleb128 0xd
	.long	0x110
	.long	0x4e4
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF88
	.byte	0x12
	.byte	0x9f
	.byte	0xe
	.long	0x4d4
	.uleb128 0x10
	.long	.LASF89
	.byte	0x12
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF90
	.byte	0x12
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0x10
	.long	.LASF91
	.byte	0x12
	.byte	0xa6
	.byte	0xe
	.long	0x4d4
	.uleb128 0x10
	.long	.LASF92
	.byte	0x12
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF93
	.byte	0x12
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x12
	.long	.LASF94
	.byte	0x12
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF95
	.byte	0x90
	.byte	0x13
	.byte	0x2e
	.byte	0x8
	.long	0x60a
	.uleb128 0xa
	.long	.LASF96
	.byte	0x13
	.byte	0x30
	.byte	0xd
	.long	0x80
	.byte	0
	.uleb128 0xa
	.long	.LASF97
	.byte	0x13
	.byte	0x35
	.byte	0xd
	.long	0xa4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF98
	.byte	0x13
	.byte	0x3d
	.byte	0xf
	.long	0xbc
	.byte	0x10
	.uleb128 0xa
	.long	.LASF99
	.byte	0x13
	.byte	0x3e
	.byte	0xe
	.long	0xb0
	.byte	0x18
	.uleb128 0xa
	.long	.LASF100
	.byte	0x13
	.byte	0x40
	.byte	0xd
	.long	0x8c
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF101
	.byte	0x13
	.byte	0x41
	.byte	0xd
	.long	0x98
	.byte	0x20
	.uleb128 0xa
	.long	.LASF102
	.byte	0x13
	.byte	0x43
	.byte	0x9
	.long	0x61
	.byte	0x24
	.uleb128 0xa
	.long	.LASF103
	.byte	0x13
	.byte	0x45
	.byte	0xd
	.long	0x80
	.byte	0x28
	.uleb128 0xa
	.long	.LASF104
	.byte	0x13
	.byte	0x4a
	.byte	0xd
	.long	0xc8
	.byte	0x30
	.uleb128 0xa
	.long	.LASF105
	.byte	0x13
	.byte	0x4e
	.byte	0x11
	.long	0xec
	.byte	0x38
	.uleb128 0xa
	.long	.LASF106
	.byte	0x13
	.byte	0x50
	.byte	0x10
	.long	0xf8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF107
	.byte	0x13
	.byte	0x5b
	.byte	0x15
	.long	0x3d3
	.byte	0x48
	.uleb128 0xa
	.long	.LASF108
	.byte	0x13
	.byte	0x5c
	.byte	0x15
	.long	0x3d3
	.byte	0x58
	.uleb128 0xa
	.long	.LASF109
	.byte	0x13
	.byte	0x5d
	.byte	0x15
	.long	0x3d3
	.byte	0x68
	.uleb128 0xa
	.long	.LASF110
	.byte	0x13
	.byte	0x6a
	.byte	0x17
	.long	0x60a
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0x104
	.long	0x61a
	.uleb128 0xe
	.long	0x35
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x8
	.long	0x61a
	.uleb128 0xd
	.long	0x310
	.long	0x631
	.uleb128 0xe
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x621
	.uleb128 0x12
	.long	.LASF111
	.byte	0x14
	.value	0x11e
	.byte	0x1a
	.long	0x631
	.uleb128 0x12
	.long	.LASF112
	.byte	0x14
	.value	0x11f
	.byte	0x1a
	.long	0x631
	.uleb128 0x12
	.long	.LASF113
	.byte	0x15
	.value	0x21f
	.byte	0xf
	.long	0x451
	.uleb128 0x12
	.long	.LASF114
	.byte	0x15
	.value	0x221
	.byte	0xf
	.long	0x451
	.uleb128 0x10
	.long	.LASF115
	.byte	0x16
	.byte	0x2d
	.byte	0xe
	.long	0x110
	.uleb128 0x10
	.long	.LASF116
	.byte	0x16
	.byte	0x2e
	.byte	0xe
	.long	0x110
	.uleb128 0x10
	.long	.LASF117
	.byte	0x17
	.byte	0x1
	.byte	0x14
	.long	0x30a
	.uleb128 0x10
	.long	.LASF118
	.byte	0x18
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0x2
	.long	.LASF119
	.byte	0x19
	.byte	0x66
	.byte	0x16
	.long	0x74
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1a
	.byte	0x29
	.byte	0x6
	.long	0x6be
	.uleb128 0x16
	.long	.LASF120
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1a
	.byte	0x2a
	.byte	0x6
	.long	0x6d3
	.uleb128 0x17
	.long	.LASF121
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x61
	.byte	0x3
	.value	0x147
	.byte	0x1
	.long	0x6f1
	.uleb128 0x19
	.long	.LASF122
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF123
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x11d
	.long	0x6fc
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x6f1
	.uleb128 0x10
	.long	.LASF124
	.byte	0x1b
	.byte	0x19
	.byte	0x13
	.long	0x6fc
	.uleb128 0x10
	.long	.LASF125
	.byte	0x1c
	.byte	0x20
	.byte	0x14
	.long	0x30a
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1d
	.byte	0x20
	.byte	0x6
	.long	0x76e
	.uleb128 0x17
	.long	.LASF126
	.byte	0
	.uleb128 0x17
	.long	.LASF127
	.byte	0x1
	.uleb128 0x17
	.long	.LASF128
	.byte	0x2
	.uleb128 0x17
	.long	.LASF129
	.byte	0x3
	.uleb128 0x17
	.long	.LASF130
	.byte	0x4
	.uleb128 0x17
	.long	.LASF131
	.byte	0x5
	.uleb128 0x17
	.long	.LASF132
	.byte	0x6
	.uleb128 0x17
	.long	.LASF133
	.byte	0x7
	.uleb128 0x17
	.long	.LASF134
	.byte	0x8
	.uleb128 0x17
	.long	.LASF135
	.byte	0x9
	.uleb128 0x17
	.long	.LASF136
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x719
	.uleb128 0x12
	.long	.LASF137
	.byte	0x1d
	.value	0x10b
	.byte	0x1a
	.long	0x360
	.uleb128 0xd
	.long	0x76e
	.long	0x78b
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x780
	.uleb128 0x12
	.long	.LASF138
	.byte	0x1d
	.value	0x10c
	.byte	0x21
	.long	0x78b
	.uleb128 0x9
	.long	.LASF139
	.byte	0x10
	.byte	0x1e
	.byte	0x19
	.byte	0x8
	.long	0x7c5
	.uleb128 0xa
	.long	.LASF97
	.byte	0x1e
	.byte	0x1b
	.byte	0x9
	.long	0x397
	.byte	0
	.uleb128 0xa
	.long	.LASF96
	.byte	0x1e
	.byte	0x1c
	.byte	0x9
	.long	0x3a3
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1f
	.byte	0x1f
	.byte	0x6
	.long	0x7ea
	.uleb128 0x17
	.long	.LASF142
	.byte	0
	.uleb128 0x17
	.long	.LASF143
	.byte	0x1
	.uleb128 0x17
	.long	.LASF144
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF145
	.byte	0x28
	.byte	0x1f
	.byte	0x2b
	.byte	0x8
	.long	0x853
	.uleb128 0xa
	.long	.LASF146
	.byte	0x1f
	.byte	0x2e
	.byte	0x12
	.long	0x7c5
	.byte	0
	.uleb128 0xa
	.long	.LASF147
	.byte	0x1f
	.byte	0x31
	.byte	0x8
	.long	0x853
	.byte	0x4
	.uleb128 0xa
	.long	.LASF148
	.byte	0x1f
	.byte	0x35
	.byte	0x13
	.long	0x85a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF149
	.byte	0x1f
	.byte	0x38
	.byte	0x8
	.long	0x853
	.byte	0x10
	.uleb128 0xa
	.long	.LASF150
	.byte	0x1f
	.byte	0x3b
	.byte	0x8
	.long	0x853
	.byte	0x11
	.uleb128 0xa
	.long	.LASF151
	.byte	0x1f
	.byte	0x3e
	.byte	0x9
	.long	0x110
	.byte	0x18
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1f
	.byte	0x41
	.byte	0x9
	.long	0x110
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF153
	.uleb128 0x7
	.byte	0x8
	.long	0x79d
	.uleb128 0x10
	.long	.LASF154
	.byte	0x20
	.byte	0x32
	.byte	0xf
	.long	0x61b
	.uleb128 0x10
	.long	.LASF155
	.byte	0x20
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF156
	.byte	0x20
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x21
	.byte	0x14
	.byte	0x6
	.long	0x899
	.uleb128 0x17
	.long	.LASF157
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF158
	.uleb128 0x10
	.long	.LASF159
	.byte	0x22
	.byte	0x19
	.byte	0x1f
	.long	0x899
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x23
	.byte	0x19
	.byte	0x6
	.long	0x8db
	.uleb128 0x17
	.long	.LASF161
	.byte	0
	.uleb128 0x17
	.long	.LASF162
	.byte	0x1
	.uleb128 0x17
	.long	.LASF163
	.byte	0x2
	.uleb128 0x17
	.long	.LASF164
	.byte	0x3
	.uleb128 0x17
	.long	.LASF165
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.long	.LASF170
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.long	0x110
	.uleb128 0x9
	.byte	0x3
	.quad	reference_file
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.long	0x918
	.uleb128 0x17
	.long	.LASF166
	.byte	0x80
	.uleb128 0x17
	.long	.LASF167
	.byte	0x81
	.uleb128 0x17
	.long	.LASF168
	.byte	0x82
	.uleb128 0x17
	.long	.LASF169
	.byte	0x83
	.byte	0
	.uleb128 0xd
	.long	0x4c9
	.long	0x928
	.uleb128 0xe
	.long	0x35
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x918
	.uleb128 0x1b
	.long	.LASF171
	.byte	0x1
	.byte	0x3b
	.byte	0x1c
	.long	0x928
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1c
	.long	.LASF181
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	0x61
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x102e
	.uleb128 0x1d
	.long	.LASF172
	.byte	0x1
	.byte	0xad
	.byte	0xb
	.long	0x61
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1d
	.long	.LASF173
	.byte	0x1
	.byte	0xad
	.byte	0x18
	.long	0x451
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x1
	.byte	0xaf
	.byte	0x8
	.long	0x853
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1f
	.string	"gid"
	.byte	0x1
	.byte	0xb0
	.byte	0x9
	.long	0x3af
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x1
	.byte	0xb3
	.byte	0x7
	.long	0x61
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x1e
	.long	.LASF176
	.byte	0x1
	.byte	0xb7
	.byte	0x7
	.long	0x61
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x1
	.byte	0xb9
	.byte	0x17
	.long	0x7ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1f
	.string	"ok"
	.byte	0x1
	.byte	0xba
	.byte	0x8
	.long	0x853
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x1e
	.long	.LASF178
	.byte	0x1
	.byte	0xbb
	.byte	0x7
	.long	0x61
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x20
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.long	0xa6b
	.uleb128 0x21
	.quad	.LVL143
	.long	0x18c6
	.long	0xa52
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
	.quad	.LC36
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL144
	.long	0x18d2
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
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x1b0
	.long	0xb83
	.uleb128 0x25
	.long	.LASF179
	.byte	0x1
	.value	0x11f
	.byte	0x13
	.long	0x539
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x20
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0xb0d
	.uleb128 0x21
	.quad	.LVL145
	.long	0x18de
	.long	0xab7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL146
	.long	0x18c6
	.long	0xae0
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
	.quad	.LC39
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL147
	.long	0x18eb
	.uleb128 0x23
	.quad	.LVL148
	.long	0x18d2
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
	.uleb128 0x27
	.long	0x1849
	.quad	.LBI96
	.byte	.LVU226
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.byte	0x1
	.value	0x120
	.byte	0xb
	.long	0xb6e
	.uleb128 0x28
	.long	0x1868
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x28
	.long	0x185b
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x23
	.quad	.LVL105
	.long	0x18f7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL107
	.long	0x1904
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x1e0
	.long	0xcfb
	.uleb128 0x29
	.long	.LASF152
	.byte	0x1
	.value	0x129
	.byte	0xd
	.long	0x110
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x2a
	.long	0x1761
	.quad	.LBI100
	.byte	.LVU272
	.long	.Ldebug_ranges0+0x210
	.byte	0x1
	.value	0x12b
	.byte	0xd
	.long	0xce6
	.uleb128 0x28
	.long	0x1772
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x210
	.uleb128 0x2c
	.long	0x177e
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x2d
	.long	0x178a
	.long	.Ldebug_ranges0+0x240
	.uleb128 0x2c
	.long	0x178b
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x2e
	.long	0x1797
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.long	0xcbe
	.uleb128 0x2f
	.long	0x1798
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2e
	.long	0x17a4
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.long	0xc8b
	.uleb128 0x21
	.quad	.LVL137
	.long	0x1910
	.long	0xc43
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL138
	.long	0x18c6
	.long	0xc6c
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
	.quad	.LC40
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL139
	.long	0x18d2
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
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL136
	.long	0x191c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL123
	.long	0x1928
	.long	0xcd6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL125
	.long	0x1934
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL140
	.long	0x1940
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.long	0xdd2
	.uleb128 0x25
	.long	.LASF180
	.byte	0x1
	.value	0x130
	.byte	0x1d
	.long	0x79d
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_buf.7334
	.uleb128 0x20
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.long	0xdb6
	.uleb128 0x21
	.quad	.LVL128
	.long	0x18de
	.long	0xd60
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC41
	.byte	0
	.uleb128 0x21
	.quad	.LVL129
	.long	0x18c6
	.long	0xd89
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
	.quad	.LC39
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL131
	.long	0x18eb
	.uleb128 0x23
	.quad	.LVL132
	.long	0x18d2
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
	.uleb128 0x23
	.quad	.LVL127
	.long	0x194c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_buf.7334
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL74
	.long	0x1958
	.uleb128 0x21
	.quad	.LVL75
	.long	0x1964
	.long	0xe03
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
	.quad	.LVL76
	.long	0x1970
	.long	0xe2f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.byte	0
	.uleb128 0x21
	.quad	.LVL77
	.long	0x197c
	.long	0xe4e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.uleb128 0x26
	.quad	.LVL78
	.long	0x1988
	.uleb128 0x21
	.quad	.LVL79
	.long	0x1995
	.long	0xe73
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL81
	.long	0x19a1
	.long	0xeb0
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL97
	.long	0x19ad
	.long	0xef6
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
	.quad	.LC27
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.byte	0
	.uleb128 0x21
	.quad	.LVL98
	.long	0x19b9
	.long	0xf0d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL99
	.long	0x102e
	.long	0xf24
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.quad	.LVL111
	.long	0x19c6
	.long	0xf58
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x6
	.byte	0x7e
	.sleb128 0
	.byte	0xa
	.value	0x400
	.byte	0x21
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x21
	.quad	.LVL113
	.long	0x19d2
	.long	0xf70
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL133
	.long	0x18c6
	.long	0xf99
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
	.quad	.LC37
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL134
	.long	0x18d2
	.long	0xfb5
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
	.quad	.LVL135
	.long	0x102e
	.long	0xfcc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.quad	.LVL142
	.long	0x19de
	.uleb128 0x26
	.quad	.LVL149
	.long	0x1910
	.uleb128 0x21
	.quad	.LVL150
	.long	0x18c6
	.long	0x100f
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
	.quad	.LC38
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL151
	.long	0x18d2
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
	.byte	0
	.uleb128 0x30
	.long	.LASF182
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x1761
	.uleb128 0x1d
	.long	.LASF183
	.byte	0x1
	.byte	0x68
	.byte	0xc
	.long	0x61
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x31
	.long	0x189b
	.quad	.LBI42
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6b
	.byte	0x5
	.long	0x10ad
	.uleb128 0x28
	.long	0x18b8
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x28
	.long	0x18ac
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x23
	.quad	.LVL5
	.long	0x19e7
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
	.uleb128 0x31
	.long	0x17ae
	.quad	.LBI46
	.byte	.LVU50
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xa7
	.byte	0x7
	.long	0x13c0
	.uleb128 0x32
	.long	0x17bc
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2f
	.long	0x17f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.long	0x1806
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2c
	.long	0x1813
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2c
	.long	0x1820
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2a
	.long	0x187c
	.quad	.LBI48
	.byte	.LVU74
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0x1191
	.uleb128 0x28
	.long	0x188d
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x21
	.quad	.LVL43
	.long	0x19f3
	.long	0x1163
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
	.quad	.LC27
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.byte	0
	.uleb128 0x23
	.quad	.LVL60
	.long	0x19f3
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
	.quad	.LC27
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x187c
	.quad	.LBI54
	.byte	.LVU89
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0x1209
	.uleb128 0x28
	.long	0x188d
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x21
	.quad	.LVL51
	.long	0x19f3
	.long	0x11e2
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
	.quad	.LC26
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL67
	.long	0x19f3
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
	.quad	.LC26
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x187c
	.quad	.LBI63
	.byte	.LVU100
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0x1250
	.uleb128 0x28
	.long	0x188d
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x23
	.quad	.LVL55
	.long	0x19f3
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
	.quad	.LVL40
	.long	0x18c6
	.long	0x1279
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
	.uleb128 0x21
	.quad	.LVL44
	.long	0x1964
	.long	0x1295
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
	.quad	.LVL46
	.long	0x19ff
	.long	0x12b9
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
	.byte	0x33
	.byte	0
	.uleb128 0x21
	.quad	.LVL48
	.long	0x18c6
	.long	0x12e2
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
	.uleb128 0x21
	.quad	.LVL52
	.long	0x18c6
	.long	0x130b
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
	.uleb128 0x26
	.quad	.LVL57
	.long	0x18c6
	.uleb128 0x21
	.quad	.LVL61
	.long	0x1964
	.long	0x1334
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
	.quad	.LVL63
	.long	0x19ff
	.long	0x1358
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
	.byte	0x33
	.byte	0
	.uleb128 0x21
	.quad	.LVL64
	.long	0x18c6
	.long	0x1381
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
	.uleb128 0x21
	.quad	.LVL69
	.long	0x18c6
	.long	0x13aa
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
	.uleb128 0x23
	.quad	.LVL70
	.long	0x1a0b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x187c
	.quad	.LBI73
	.byte	.LVU25
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x6e
	.byte	0x7
	.long	0x1406
	.uleb128 0x28
	.long	0x188d
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x23
	.quad	.LVL11
	.long	0x19f3
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
	.uleb128 0x31
	.long	0x187c
	.quad	.LBI77
	.byte	.LVU44
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0xa0
	.byte	0x7
	.long	0x144c
	.uleb128 0x28
	.long	0x188d
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x23
	.quad	.LVL35
	.long	0x19f3
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
	.long	0x18c6
	.long	0x1475
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
	.long	0x19b9
	.long	0x148d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL8
	.long	0x18c6
	.long	0x14b1
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
	.long	0x18c6
	.long	0x14da
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
	.long	0x1a0b
	.long	0x14f2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL14
	.long	0x18c6
	.long	0x151b
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
	.long	0x1a0b
	.long	0x1533
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL16
	.long	0x18c6
	.long	0x155c
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
	.long	0x1a0b
	.long	0x1574
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL18
	.long	0x18c6
	.long	0x159d
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
	.uleb128 0x21
	.quad	.LVL19
	.long	0x1a0b
	.long	0x15b5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL20
	.long	0x18c6
	.long	0x15de
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
	.uleb128 0x21
	.quad	.LVL21
	.long	0x1a0b
	.long	0x15f6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL22
	.long	0x18c6
	.long	0x161f
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
	.quad	.LVL23
	.long	0x1a0b
	.long	0x1637
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL24
	.long	0x18c6
	.long	0x1660
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
	.quad	.LC11
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL25
	.long	0x1a0b
	.long	0x1678
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL26
	.long	0x18c6
	.long	0x16a1
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
	.quad	.LC12
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL27
	.long	0x1a0b
	.long	0x16b9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL28
	.long	0x18c6
	.long	0x16e2
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
	.quad	.LC13
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL29
	.long	0x1a0b
	.long	0x16fa
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL30
	.long	0x18c6
	.long	0x1723
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
	.quad	.LC14
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL31
	.long	0x1a0b
	.long	0x173b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL32
	.long	0x18c6
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
	.quad	.LC15
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF226
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	0x3af
	.byte	0x1
	.long	0x17a8
	.uleb128 0x34
	.long	.LASF85
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.long	0x30a
	.uleb128 0x35
	.string	"gid"
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.long	0x3af
	.uleb128 0x36
	.uleb128 0x35
	.string	"grp"
	.byte	0x1
	.byte	0x55
	.byte	0x15
	.long	0x17a8
	.uleb128 0x36
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.long	0x69a
	.uleb128 0x37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x40f
	.uleb128 0x38
	.long	.LASF227
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x182e
	.uleb128 0x39
	.long	.LASF184
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x30a
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0x17f4
	.uleb128 0x3b
	.long	.LASF184
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x30a
	.byte	0
	.uleb128 0x3b
	.long	.LASF186
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x30a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x17c9
	.uleb128 0x3c
	.long	.LASF185
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0x183e
	.uleb128 0x3c
	.long	.LASF186
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x30a
	.uleb128 0x3c
	.long	.LASF187
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0x1843
	.uleb128 0x3c
	.long	.LASF188
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x30a
	.byte	0
	.uleb128 0xd
	.long	0x17f4
	.long	0x183e
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x182e
	.uleb128 0x7
	.byte	0x8
	.long	0x17f4
	.uleb128 0x3d
	.long	.LASF95
	.byte	0x4
	.value	0x1c5
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1876
	.uleb128 0x39
	.long	.LASF189
	.byte	0x4
	.value	0x1c5
	.byte	0x1
	.long	0x30a
	.uleb128 0x39
	.long	.LASF190
	.byte	0x4
	.value	0x1c5
	.byte	0x1
	.long	0x1876
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x539
	.uleb128 0x3e
	.long	.LASF192
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x189b
	.uleb128 0x34
	.long	.LASF191
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x315
	.uleb128 0x3f
	.byte	0
	.uleb128 0x3e
	.long	.LASF193
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x18c6
	.uleb128 0x34
	.long	.LASF194
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x32c
	.uleb128 0x34
	.long	.LASF191
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x315
	.uleb128 0x3f
	.byte	0
	.uleb128 0x40
	.long	.LASF195
	.long	.LASF195
	.byte	0x24
	.byte	0x33
	.byte	0xe
	.uleb128 0x40
	.long	.LASF196
	.long	.LASF196
	.byte	0x20
	.byte	0x28
	.byte	0xd
	.uleb128 0x41
	.long	.LASF197
	.long	.LASF197
	.byte	0x1d
	.value	0x179
	.byte	0x7
	.uleb128 0x40
	.long	.LASF198
	.long	.LASF198
	.byte	0x16
	.byte	0x25
	.byte	0xd
	.uleb128 0x41
	.long	.LASF199
	.long	.LASF199
	.byte	0x4
	.value	0x18d
	.byte	0xc
	.uleb128 0x40
	.long	.LASF200
	.long	.LASF200
	.byte	0x1f
	.byte	0x4b
	.byte	0x1
	.uleb128 0x40
	.long	.LASF201
	.long	.LASF201
	.byte	0x22
	.byte	0x2c
	.byte	0xd
	.uleb128 0x40
	.long	.LASF202
	.long	.LASF202
	.byte	0x23
	.byte	0x30
	.byte	0x1
	.uleb128 0x40
	.long	.LASF203
	.long	.LASF203
	.byte	0xf
	.byte	0x6b
	.byte	0x16
	.uleb128 0x40
	.long	.LASF204
	.long	.LASF204
	.byte	0xf
	.byte	0x43
	.byte	0xd
	.uleb128 0x40
	.long	.LASF205
	.long	.LASF205
	.byte	0x25
	.byte	0x40
	.byte	0x7
	.uleb128 0x40
	.long	.LASF206
	.long	.LASF206
	.byte	0x26
	.byte	0x19
	.byte	0x1
	.uleb128 0x40
	.long	.LASF207
	.long	.LASF207
	.byte	0x1c
	.byte	0x25
	.byte	0xd
	.uleb128 0x40
	.long	.LASF208
	.long	.LASF208
	.byte	0x27
	.byte	0x7a
	.byte	0xe
	.uleb128 0x40
	.long	.LASF209
	.long	.LASF209
	.byte	0x24
	.byte	0x56
	.byte	0xe
	.uleb128 0x40
	.long	.LASF210
	.long	.LASF210
	.byte	0x24
	.byte	0x52
	.byte	0xe
	.uleb128 0x41
	.long	.LASF211
	.long	.LASF211
	.byte	0x28
	.value	0x253
	.byte	0xc
	.uleb128 0x40
	.long	.LASF212
	.long	.LASF212
	.byte	0x1f
	.byte	0x45
	.byte	0x1
	.uleb128 0x40
	.long	.LASF213
	.long	.LASF213
	.byte	0x11
	.byte	0x42
	.byte	0xc
	.uleb128 0x40
	.long	.LASF214
	.long	.LASF214
	.byte	0x1b
	.byte	0x3c
	.byte	0xd
	.uleb128 0x41
	.long	.LASF215
	.long	.LASF215
	.byte	0x28
	.value	0x269
	.byte	0xd
	.uleb128 0x40
	.long	.LASF216
	.long	.LASF216
	.byte	0x1f
	.byte	0x51
	.byte	0x1
	.uleb128 0x40
	.long	.LASF217
	.long	.LASF217
	.byte	0x1f
	.byte	0x48
	.byte	0x1
	.uleb128 0x42
	.long	.LASF228
	.long	.LASF228
	.uleb128 0x40
	.long	.LASF218
	.long	.LASF218
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x40
	.long	.LASF219
	.long	.LASF219
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x40
	.long	.LASF220
	.long	.LASF220
	.byte	0x29
	.byte	0x8c
	.byte	0xc
	.uleb128 0x41
	.long	.LASF221
	.long	.LASF221
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS11:
	.uleb128 0
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU234
	.uleb128 .LVU234
	.uleb128 0
.LLST11:
	.quad	.LVL71
	.quad	.LVL72
	.value	0x1
	.byte	0x55
	.quad	.LVL72
	.quad	.LVL106
	.value	0x1
	.byte	0x5c
	.quad	.LVL106
	.quad	.LFE137
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU258
	.uleb128 .LVU258
	.uleb128 0
.LLST12:
	.quad	.LVL71
	.quad	.LVL74-1
	.value	0x1
	.byte	0x54
	.quad	.LVL74-1
	.quad	.LVL115
	.value	0x1
	.byte	0x56
	.quad	.LVL115
	.quad	.LVL118
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL118
	.quad	.LFE137
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU144
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST13:
	.quad	.LVL73
	.quad	.LVL80
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL80
	.quad	.LVL89
	.value	0x3
	.byte	0x91
	.sleb128 -289
	.quad	.LVL89
	.quad	.LVL90
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL90
	.quad	.LVL90
	.value	0x3
	.byte	0x91
	.sleb128 -289
	.quad	.LVL90
	.quad	.LVL91
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL91
	.quad	.LFE137
	.value	0x3
	.byte	0x91
	.sleb128 -289
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU234
	.uleb128 .LVU256
	.uleb128 .LVU284
	.uleb128 .LVU292
	.uleb128 .LVU313
	.uleb128 .LVU315
.LLST14:
	.quad	.LVL106
	.quad	.LVL116
	.value	0x1
	.byte	0x5c
	.quad	.LVL126
	.quad	.LVL130
	.value	0x1
	.byte	0x5c
	.quad	.LVL141
	.quad	.LVL142
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU146
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU167
	.uleb128 .LVU168
	.uleb128 .LVU169
	.uleb128 .LVU170
	.uleb128 .LVU171
	.uleb128 .LVU172
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU257
	.uleb128 .LVU258
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 .LVU315
	.uleb128 .LVU315
	.uleb128 0
.LLST15:
	.quad	.LVL73
	.quad	.LVL80
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL80
	.quad	.LVL83
	.value	0x1
	.byte	0x5e
	.quad	.LVL84
	.quad	.LVL85
	.value	0x1
	.byte	0x5e
	.quad	.LVL86
	.quad	.LVL87
	.value	0x1
	.byte	0x5e
	.quad	.LVL88
	.quad	.LVL109
	.value	0x1
	.byte	0x5e
	.quad	.LVL109
	.quad	.LVL110
	.value	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0xa
	.value	0x400
	.byte	0x21
	.byte	0x9f
	.quad	.LVL110
	.quad	.LVL111-1
	.value	0x1
	.byte	0x54
	.quad	.LVL111-1
	.quad	.LVL117
	.value	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0xa
	.value	0x400
	.byte	0x21
	.byte	0x9f
	.quad	.LVL118
	.quad	.LVL141
	.value	0x1
	.byte	0x5e
	.quad	.LVL141
	.quad	.LVL142
	.value	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0xa
	.value	0x400
	.byte	0x21
	.byte	0x9f
	.quad	.LVL142
	.quad	.LFE137
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU147
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 .LVU218
	.uleb128 .LVU258
	.uleb128 .LVU262
.LLST16:
	.quad	.LVL73
	.quad	.LVL80
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL80
	.quad	.LVL91
	.value	0x1
	.byte	0x5d
	.quad	.LVL91
	.quad	.LVL92
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL92
	.quad	.LVL93
	.value	0x1
	.byte	0x5d
	.quad	.LVL93
	.quad	.LVL94
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL94
	.quad	.LVL102
	.value	0x1
	.byte	0x5d
	.quad	.LVL118
	.quad	.LVL119
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU249
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU252
.LLST17:
	.quad	.LVL112
	.quad	.LVL113-1
	.value	0x1
	.byte	0x50
	.quad	.LVL113-1
	.quad	.LVL114
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU163
	.uleb128 .LVU165
	.uleb128 .LVU203
	.uleb128 .LVU207
	.uleb128 .LVU209
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU217
	.uleb128 .LVU258
	.uleb128 .LVU264
	.uleb128 .LVU315
	.uleb128 .LVU316
.LLST18:
	.quad	.LVL81
	.quad	.LVL82
	.value	0x1
	.byte	0x50
	.quad	.LVL95
	.quad	.LVL96
	.value	0x1
	.byte	0x50
	.quad	.LVL98
	.quad	.LVL99-1
	.value	0x1
	.byte	0x50
	.quad	.LVL99
	.quad	.LVL101
	.value	0x1
	.byte	0x50
	.quad	.LVL118
	.quad	.LVL120
	.value	0x1
	.byte	0x50
	.quad	.LVL142
	.quad	.LVL143-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU226
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 .LVU230
.LLST19:
	.quad	.LVL103
	.quad	.LVL104
	.value	0x4
	.byte	0x91
	.sleb128 -224
	.byte	0x9f
	.quad	.LVL104
	.quad	.LVL105-1
	.value	0x1
	.byte	0x51
	.quad	.LVL105-1
	.quad	.LVL105
	.value	0x4
	.byte	0x91
	.sleb128 -224
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU226
	.uleb128 .LVU230
.LLST20:
	.quad	.LVL103
	.quad	.LVL105
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU267
	.uleb128 .LVU284
	.uleb128 .LVU302
	.uleb128 .LVU313
.LLST21:
	.quad	.LVL121
	.quad	.LVL126
	.value	0x1
	.byte	0x53
	.quad	.LVL135
	.quad	.LVL141
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU272
	.uleb128 .LVU284
	.uleb128 .LVU302
	.uleb128 .LVU311
.LLST22:
	.quad	.LVL122
	.quad	.LVL126
	.value	0x1
	.byte	0x53
	.quad	.LVL135
	.quad	.LVL139
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU274
	.uleb128 .LVU283
	.uleb128 .LVU283
	.uleb128 .LVU284
	.uleb128 .LVU302
	.uleb128 .LVU311
.LLST23:
	.quad	.LVL122
	.quad	.LVL124
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL124
	.quad	.LVL126
	.value	0x1
	.byte	0x5c
	.quad	.LVL135
	.quad	.LVL139
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU279
	.uleb128 .LVU283
	.uleb128 .LVU302
	.uleb128 .LVU305
.LLST24:
	.quad	.LVL123
	.quad	.LVL124
	.value	0x1
	.byte	0x50
	.quad	.LVL135
	.quad	.LVL136-1
	.value	0x1
	.byte	0x50
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
	.quad	.LFE136
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
	.uleb128 .LVU54
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU85
	.uleb128 .LVU106
	.uleb128 .LVU134
.LLST3:
	.quad	.LVL36
	.quad	.LVL39
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	.LVL39
	.quad	.LVL47
	.value	0x1
	.byte	0x5c
	.quad	.LVL56
	.quad	.LVL68
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU55
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU72
	.uleb128 .LVU106
	.uleb128 .LVU108
.LLST4:
	.quad	.LVL36
	.quad	.LVL37
	.value	0x1
	.byte	0x57
	.quad	.LVL37
	.quad	.LVL40-1
	.value	0x1
	.byte	0x50
	.quad	.LVL56
	.quad	.LVL57-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU81
	.uleb128 .LVU84
	.uleb128 .LVU117
	.uleb128 .LVU120
.LLST5:
	.quad	.LVL45
	.quad	.LVL46-1
	.value	0x1
	.byte	0x50
	.quad	.LVL62
	.quad	.LVL63-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU110
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU114
.LLST6:
	.quad	.LVL41
	.quad	.LVL42
	.value	0x1
	.byte	0x50
	.quad	.LVL42
	.quad	.LVL43-1
	.value	0x1
	.byte	0x54
	.quad	.LVL58
	.quad	.LVL59
	.value	0x1
	.byte	0x50
	.quad	.LVL59
	.quad	.LVL60-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU89
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU95
	.uleb128 .LVU125
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU131
.LLST7:
	.quad	.LVL49
	.quad	.LVL50
	.value	0x1
	.byte	0x50
	.quad	.LVL50
	.quad	.LVL51-1
	.value	0x1
	.byte	0x54
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x50
	.quad	.LVL66
	.quad	.LVL67-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU100
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU104
.LLST8:
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
.LVUS9:
	.uleb128 .LVU25
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU29
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
	.uleb128 .LVU44
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
.LLST10:
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
	.quad	.LBB42
	.quad	.LBE42
	.quad	.LBB45
	.quad	.LBE45
	.quad	0
	.quad	0
	.quad	.LBB46
	.quad	.LBE46
	.quad	.LBB81
	.quad	.LBE81
	.quad	0
	.quad	0
	.quad	.LBB48
	.quad	.LBE48
	.quad	.LBB53
	.quad	.LBE53
	.quad	.LBB67
	.quad	.LBE67
	.quad	.LBB68
	.quad	.LBE68
	.quad	0
	.quad	0
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB61
	.quad	.LBE61
	.quad	.LBB62
	.quad	.LBE62
	.quad	.LBB69
	.quad	.LBE69
	.quad	.LBB70
	.quad	.LBE70
	.quad	.LBB71
	.quad	.LBE71
	.quad	0
	.quad	0
	.quad	.LBB63
	.quad	.LBE63
	.quad	.LBB66
	.quad	.LBE66
	.quad	0
	.quad	0
	.quad	.LBB73
	.quad	.LBE73
	.quad	.LBB76
	.quad	.LBE76
	.quad	0
	.quad	0
	.quad	.LBB77
	.quad	.LBE77
	.quad	.LBB80
	.quad	.LBE80
	.quad	0
	.quad	0
	.quad	.LBB95
	.quad	.LBE95
	.quad	.LBB112
	.quad	.LBE112
	.quad	0
	.quad	0
	.quad	.LBB99
	.quad	.LBE99
	.quad	.LBB110
	.quad	.LBE110
	.quad	0
	.quad	0
	.quad	.LBB100
	.quad	.LBE100
	.quad	.LBB107
	.quad	.LBE107
	.quad	0
	.quad	0
	.quad	.LBB102
	.quad	.LBE102
	.quad	.LBB105
	.quad	.LBE105
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
.LASF192:
	.string	"printf"
.LASF15:
	.string	"__off_t"
.LASF11:
	.string	"__gid_t"
.LASF152:
	.string	"group_name"
.LASF23:
	.string	"_IO_read_ptr"
.LASF134:
	.string	"locale_quoting_style"
.LASF35:
	.string	"_chain"
.LASF109:
	.string	"st_ctim"
.LASF41:
	.string	"_shortbuf"
.LASF123:
	.string	"GETOPT_VERSION_CHAR"
.LASF174:
	.string	"preserve_root"
.LASF140:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF121:
	.string	"LOG10_TIMESPEC_HZ"
.LASF207:
	.string	"set_program_name"
.LASF168:
	.string	"PRESERVE_ROOT"
.LASF189:
	.string	"__path"
.LASF127:
	.string	"shell_quoting_style"
.LASF204:
	.string	"endgrent"
.LASF122:
	.string	"GETOPT_HELP_CHAR"
.LASF29:
	.string	"_IO_buf_base"
.LASF206:
	.string	"get_root_dev_ino"
.LASF74:
	.string	"long long unsigned int"
.LASF162:
	.string	"LONGINT_OVERFLOW"
.LASF56:
	.string	"stdout"
.LASF177:
	.string	"chopt"
.LASF163:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF211:
	.string	"atexit"
.LASF95:
	.string	"stat"
.LASF62:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF138:
	.string	"quoting_style_vals"
.LASF119:
	.string	"uintmax_t"
.LASF184:
	.string	"program"
.LASF133:
	.string	"escape_quoting_style"
.LASF13:
	.string	"__mode_t"
.LASF40:
	.string	"_vtable_offset"
.LASF126:
	.string	"literal_quoting_style"
.LASF36:
	.string	"_fileno"
.LASF12:
	.string	"__ino_t"
.LASF24:
	.string	"_IO_read_end"
.LASF75:
	.string	"group"
.LASF90:
	.string	"__timezone"
.LASF19:
	.string	"__blkcnt_t"
.LASF112:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF73:
	.string	"_gl_cxxalias_dummy"
.LASF171:
	.string	"long_options"
.LASF22:
	.string	"_flags"
.LASF147:
	.string	"recurse"
.LASF30:
	.string	"_IO_buf_end"
.LASF39:
	.string	"_cur_column"
.LASF116:
	.string	"program_invocation_short_name"
.LASF131:
	.string	"c_quoting_style"
.LASF190:
	.string	"__statbuf"
.LASF53:
	.string	"_IO_codecvt"
.LASF167:
	.string	"NO_PRESERVE_ROOT"
.LASF202:
	.string	"xstrtoumax"
.LASF61:
	.string	"_sys_errlist"
.LASF219:
	.string	"__printf_chk"
.LASF115:
	.string	"program_invocation_name"
.LASF38:
	.string	"_old_offset"
.LASF43:
	.string	"_offset"
.LASF120:
	.string	"TIMESPEC_HZ"
.LASF102:
	.string	"__pad0"
.LASF130:
	.string	"shell_escape_always_quoting_style"
.LASF93:
	.string	"timezone"
.LASF201:
	.string	"quote"
.LASF106:
	.string	"st_blocks"
.LASF125:
	.string	"program_name"
.LASF100:
	.string	"st_uid"
.LASF79:
	.string	"gr_mem"
.LASF55:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF222:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF77:
	.string	"gr_passwd"
.LASF226:
	.string	"parse_group"
.LASF194:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF149:
	.string	"affect_symlink_referent"
.LASF209:
	.string	"bindtextdomain"
.LASF27:
	.string	"_IO_write_ptr"
.LASF85:
	.string	"name"
.LASF58:
	.string	"sys_nerr"
.LASF67:
	.string	"uid_t"
.LASF94:
	.string	"getdate_err"
.LASF178:
	.string	"optc"
.LASF3:
	.string	"short unsigned int"
.LASF156:
	.string	"error_one_per_line"
.LASF117:
	.string	"Version"
.LASF214:
	.string	"version_etc"
.LASF31:
	.string	"_IO_save_base"
.LASF216:
	.string	"chown_files"
.LASF197:
	.string	"quotearg_style"
.LASF212:
	.string	"chopt_init"
.LASF114:
	.string	"environ"
.LASF187:
	.string	"map_prog"
.LASF42:
	.string	"_lock"
.LASF37:
	.string	"_flags2"
.LASF49:
	.string	"_mode"
.LASF208:
	.string	"setlocale"
.LASF160:
	.string	"strtol_error"
.LASF104:
	.string	"st_size"
.LASF217:
	.string	"chopt_free"
.LASF124:
	.string	"version_etc_copyright"
.LASF45:
	.string	"_wide_data"
.LASF99:
	.string	"st_mode"
.LASF44:
	.string	"_codecvt"
.LASF80:
	.string	"optarg"
.LASF72:
	.string	"tv_nsec"
.LASF139:
	.string	"dev_ino"
.LASF63:
	.string	"long double"
.LASF9:
	.string	"__dev_t"
.LASF81:
	.string	"optind"
.LASF20:
	.string	"__syscall_slong_t"
.LASF28:
	.string	"_IO_write_end"
.LASF141:
	.string	"Verbosity"
.LASF66:
	.string	"gid_t"
.LASF225:
	.string	"_IO_lock_t"
.LASF69:
	.string	"_IO_FILE"
.LASF154:
	.string	"error_print_progname"
.LASF18:
	.string	"__blksize_t"
.LASF193:
	.string	"fprintf"
.LASF65:
	.string	"dev_t"
.LASF113:
	.string	"__environ"
.LASF68:
	.string	"time_t"
.LASF146:
	.string	"verbosity"
.LASF144:
	.string	"V_off"
.LASF52:
	.string	"_IO_marker"
.LASF196:
	.string	"error"
.LASF59:
	.string	"sys_errlist"
.LASF150:
	.string	"force_silent"
.LASF34:
	.string	"_markers"
.LASF143:
	.string	"V_changes_only"
.LASF161:
	.string	"LONGINT_OK"
.LASF175:
	.string	"bit_flags"
.LASF110:
	.string	"__glibc_reserved"
.LASF98:
	.string	"st_nlink"
.LASF132:
	.string	"c_maybe_quoting_style"
.LASF203:
	.string	"getgrnam"
.LASF2:
	.string	"unsigned char"
.LASF186:
	.string	"node"
.LASF97:
	.string	"st_ino"
.LASF220:
	.string	"strncmp"
.LASF180:
	.string	"dev_ino_buf"
.LASF76:
	.string	"gr_name"
.LASF5:
	.string	"short int"
.LASF84:
	.string	"option"
.LASF105:
	.string	"st_blksize"
.LASF159:
	.string	"quote_quoting_options"
.LASF87:
	.string	"flag"
.LASF60:
	.string	"_sys_nerr"
.LASF70:
	.string	"timespec"
.LASF91:
	.string	"tzname"
.LASF170:
	.string	"reference_file"
.LASF51:
	.string	"FILE"
.LASF118:
	.string	"exit_failure"
.LASF215:
	.string	"exit"
.LASF218:
	.string	"__fprintf_chk"
.LASF228:
	.string	"__stack_chk_fail"
.LASF129:
	.string	"shell_escape_quoting_style"
.LASF179:
	.string	"ref_stats"
.LASF137:
	.string	"quoting_style_args"
.LASF195:
	.string	"dcgettext"
.LASF83:
	.string	"optopt"
.LASF92:
	.string	"daylight"
.LASF103:
	.string	"st_rdev"
.LASF153:
	.string	"_Bool"
.LASF169:
	.string	"REFERENCE_FILE_OPTION"
.LASF21:
	.string	"char"
.LASF128:
	.string	"shell_always_quoting_style"
.LASF166:
	.string	"DEREFERENCE_OPTION"
.LASF71:
	.string	"tv_sec"
.LASF157:
	.string	"I_RING_SIZE"
.LASF142:
	.string	"V_high"
.LASF223:
	.string	"src/chgrp.c"
.LASF176:
	.string	"dereference"
.LASF135:
	.string	"clocale_quoting_style"
.LASF198:
	.string	"__errno_location"
.LASF82:
	.string	"opterr"
.LASF205:
	.string	"xstrdup"
.LASF10:
	.string	"__uid_t"
.LASF8:
	.string	"__uintmax_t"
.LASF16:
	.string	"__off64_t"
.LASF158:
	.string	"quoting_options"
.LASF25:
	.string	"_IO_read_base"
.LASF33:
	.string	"_IO_save_end"
.LASF111:
	.string	"_sys_siglist"
.LASF191:
	.string	"__fmt"
.LASF185:
	.string	"infomap"
.LASF200:
	.string	"gid_to_name"
.LASF199:
	.string	"__xstat"
.LASF101:
	.string	"st_gid"
.LASF86:
	.string	"has_arg"
.LASF182:
	.string	"usage"
.LASF48:
	.string	"__pad5"
.LASF17:
	.string	"__time_t"
.LASF50:
	.string	"_unused2"
.LASF57:
	.string	"stderr"
.LASF107:
	.string	"st_atim"
.LASF173:
	.string	"argv"
.LASF210:
	.string	"textdomain"
.LASF89:
	.string	"__daylight"
.LASF145:
	.string	"Chown_option"
.LASF183:
	.string	"status"
.LASF224:
	.string	"/root/coreutils"
.LASF96:
	.string	"st_dev"
.LASF47:
	.string	"_freeres_buf"
.LASF164:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF32:
	.string	"_IO_backup_base"
.LASF136:
	.string	"custom_quoting_style"
.LASF78:
	.string	"gr_gid"
.LASF108:
	.string	"st_mtim"
.LASF155:
	.string	"error_message_count"
.LASF188:
	.string	"lc_messages"
.LASF172:
	.string	"argc"
.LASF46:
	.string	"_freeres_list"
.LASF213:
	.string	"getopt_long"
.LASF54:
	.string	"_IO_wide_data"
.LASF148:
	.string	"root_dev_ino"
.LASF165:
	.string	"LONGINT_INVALID"
.LASF221:
	.string	"fputs_unlocked"
.LASF88:
	.string	"__tzname"
.LASF181:
	.string	"main"
.LASF26:
	.string	"_IO_write_base"
.LASF227:
	.string	"emit_ancillary_info"
.LASF14:
	.string	"__nlink_t"
.LASF151:
	.string	"user_name"
.LASF64:
	.string	"ino_t"
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
