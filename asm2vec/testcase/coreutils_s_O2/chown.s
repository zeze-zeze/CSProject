	.file	"chown.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"chown"
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
	.string	"Usage: %s [OPTION]... [OWNER][:[GROUP]] FILE...\n  or:  %s [OPTION]... --reference=RFILE FILE...\n"
	.align 8
.LC5:
	.string	"Change the owner and/or group of each FILE to OWNER and/or GROUP.\nWith --reference, change the owner and group of each FILE to those of RFILE.\n\n"
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
	.ascii	"      --from=CURRENT_OWNER:CURRENT_GROUP\n                  "
	.ascii	"       change the owner "
	.string	"and/or group of each file only if\n                         its current owner and/or group match those specified\n                         here.  Either may be omitted, in which case a match\n                         is not required for the omitted attribute\n"
	.align 8
.LC10:
	.string	"      --no-preserve-root  do not treat '/' specially (the default)\n      --preserve-root    fail to operate recursively on '/'\n"
	.align 8
.LC11:
	.string	"      --reference=RFILE  use RFILE's owner and group rather than\n                         specifying OWNER:GROUP values\n"
	.align 8
.LC12:
	.string	"  -R, --recursive        operate on files and directories recursively\n"
	.align 8
.LC13:
	.ascii	"\nThe following options modify how a hierarchy is traversed "
	.ascii	"when the -R\noption is also specified.  If more than one is "
	.ascii	"specified, only the final\none takes effect.\n\n  -H        "
	.ascii	"             if a command line ar"
	.string	"gument is a symbolic link\n                         to a directory, traverse it\n  -L                     traverse every symbolic link to a directory\n                         encountered\n  -P                     do not traverse any symbolic links (default)\n\n"
	.align 8
.LC14:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC15:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC16:
	.string	"\nOwner is unchanged if missing.  Group is unchanged if missing, but changed\nto login group if implied by a ':' following a symbolic OWNER.\nOWNER and GROUP may be numeric as well as symbolic.\n"
	.align 8
.LC17:
	.string	"\nExamples:\n  %s root /u        Change the owner of /u to \"root\".\n  %s root:staff /u  Likewise, but also change its group to \"staff\".\n  %s -hR root /u    Change the owner of /u and subfiles to \"root\".\n"
	.section	.rodata.str1.1
.LC18:
	.string	"["
.LC19:
	.string	"test invocation"
.LC20:
	.string	"coreutils"
.LC21:
	.string	"Multi-call invocation"
.LC22:
	.string	"sha224sum"
.LC23:
	.string	"sha2 utilities"
.LC24:
	.string	"sha256sum"
.LC25:
	.string	"sha384sum"
.LC26:
	.string	"sha512sum"
.LC27:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC29:
	.string	"GNU coreutils"
.LC30:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC32:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL0:
.LFB135:
	.file 1 "src/chown.c"
	.loc 1 75 1 view -0
	.cfi_startproc
	.loc 1 75 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 77 5 view .LVU2
	movl	$5, %edx
	.loc 1 75 1 view .LVU3
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
	.loc 1 75 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 76 3 is_stmt 1 view .LVU5
	.loc 1 76 6 is_stmt 0 view .LVU6
	testl	%edi, %edi
	je	.L2
	.loc 1 77 5 is_stmt 1 view .LVU7
	.loc 1 77 5 view .LVU8
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL1:
	.loc 1 77 5 is_stmt 0 view .LVU9
	call	dcgettext@PLT
.LVL2:
.LBB45:
.LBB46:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU10
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE46:
.LBE45:
	.loc 1 77 5 view .LVU11
	movq	%rax, %rdx
.LVL3:
.LBB48:
.LBI45:
	.loc 2 98 1 is_stmt 1 view .LVU12
.LBB47:
	.loc 2 100 3 view .LVU13
	.loc 2 100 10 is_stmt 0 view .LVU14
	xorl	%eax, %eax
.LVL4:
	.loc 2 100 10 view .LVU15
	call	__fprintf_chk@PLT
.LVL5:
.L3:
	.loc 2 100 10 view .LVU16
.LBE47:
.LBE48:
	.loc 1 153 3 is_stmt 1 view .LVU17
	movl	%ebp, %edi
	call	exit@PLT
.LVL6:
.L2:
	.loc 1 80 7 view .LVU18
	.loc 1 80 15 is_stmt 0 view .LVU19
	xorl	%edi, %edi
.LVL7:
	.loc 1 80 15 view .LVU20
	leaq	.LC4(%rip), %rsi
.LBB49:
.LBB50:
	.file 3 "src/system.h"
	.loc 3 636 67 view .LVU21
	leaq	.LC24(%rip), %rbx
.LBE50:
.LBE49:
	.loc 1 80 15 view .LVU22
	call	dcgettext@PLT
.LVL8:
.LBB76:
.LBB77:
	.loc 2 107 10 view .LVU23
	movq	%r12, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE77:
.LBE76:
	.loc 1 80 15 view .LVU24
	movq	%rax, %rsi
.LVL9:
.LBB79:
.LBI76:
	.loc 2 105 1 is_stmt 1 view .LVU25
.LBB78:
	.loc 2 107 3 view .LVU26
	.loc 2 107 10 is_stmt 0 view .LVU27
	xorl	%eax, %eax
.LVL10:
	.loc 2 107 10 view .LVU28
	call	__printf_chk@PLT
.LVL11:
	.loc 2 107 10 view .LVU29
.LBE78:
.LBE79:
	.loc 1 85 7 is_stmt 1 view .LVU30
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
	.loc 1 90 7 view .LVU31
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
	.loc 1 95 7 view .LVU32
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
	.loc 1 100 7 view .LVU33
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
	.loc 1 104 7 view .LVU34
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
	.loc 1 111 7 view .LVU35
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
	.loc 1 115 7 view .LVU36
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
	.loc 1 119 7 view .LVU37
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
	.loc 1 122 7 view .LVU38
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
	.loc 1 135 7 view .LVU39
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
	.loc 1 136 7 view .LVU40
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC15(%rip), %rsi
	call	dcgettext@PLT
.LVL32:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL33:
	.loc 1 137 7 view .LVU41
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC16(%rip), %rsi
	call	dcgettext@PLT
.LVL34:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL35:
	.loc 1 143 7 view .LVU42
	movq	program_name(%rip), %r12
	.loc 1 143 15 is_stmt 0 view .LVU43
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC17(%rip), %rsi
	call	dcgettext@PLT
.LVL36:
.LBB80:
.LBB81:
	.loc 2 107 10 view .LVU44
	movq	%r12, %r8
	movq	%r12, %rcx
	movq	%r12, %rdx
.LBE81:
.LBE80:
	.loc 1 143 15 view .LVU45
	movq	%rax, %rsi
.LVL37:
.LBB83:
.LBI80:
	.loc 2 105 1 is_stmt 1 view .LVU46
.LBB82:
	.loc 2 107 3 view .LVU47
	.loc 2 107 10 is_stmt 0 view .LVU48
	movl	$1, %edi
	xorl	%eax, %eax
.LVL38:
	.loc 2 107 10 view .LVU49
	call	__printf_chk@PLT
.LVL39:
	.loc 2 107 10 view .LVU50
.LBE82:
.LBE83:
	.loc 1 151 7 is_stmt 1 view .LVU51
.LBB84:
.LBI49:
	.loc 3 634 1 view .LVU52
.LBB75:
	.loc 3 636 3 view .LVU53
	.loc 3 636 67 is_stmt 0 view .LVU54
	leaq	.LC18(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC25(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC19(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC20(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC21(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC22(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 3 646 3 is_stmt 1 view .LVU55
.LVL40:
	.loc 3 647 3 view .LVU56
	.loc 3 649 3 view .LVU57
	.loc 3 649 9 view .LVU58
	.loc 3 636 67 is_stmt 0 view .LVU59
	movq	%rax, 32(%rsp)
	leaq	.LC23(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC26(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC0(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 3 647 25 view .LVU60
	movq	%rsp, %rax
.LVL41:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 3 650 5 is_stmt 1 view .LVU61
	.loc 3 649 18 is_stmt 0 view .LVU62
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU63
	addq	$16, %rax
.LVL42:
	.loc 3 649 9 is_stmt 1 view .LVU64
	testq	%rdi, %rdi
	je	.L4
	.loc 3 649 33 is_stmt 0 view .LVU65
	movl	$6, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU66
	testb	%dl, %dl
	jne	.L5
.L4:
	.loc 3 652 3 is_stmt 1 view .LVU67
	.loc 3 652 15 is_stmt 0 view .LVU68
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU69
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU70
	testq	%r12, %r12
	je	.L6
	.loc 3 653 5 is_stmt 1 view .LVU71
.LVL43:
	.loc 3 655 3 view .LVU72
	.loc 3 655 11 is_stmt 0 view .LVU73
	call	dcgettext@PLT
.LVL44:
.LBB51:
.LBB52:
	.loc 2 107 10 view .LVU74
	leaq	.LC28(%rip), %rcx
	movl	$1, %edi
	leaq	.LC29(%rip), %rdx
.LBE52:
.LBE51:
	.loc 3 655 11 view .LVU75
	movq	%rax, %rsi
.LVL45:
.LBB56:
.LBI51:
	.loc 2 105 1 is_stmt 1 view .LVU76
.LBB53:
	.loc 2 107 3 view .LVU77
	.loc 2 107 10 is_stmt 0 view .LVU78
	xorl	%eax, %eax
.LVL46:
	.loc 2 107 10 view .LVU79
	call	__printf_chk@PLT
.LVL47:
	.loc 2 107 10 view .LVU80
.LBE53:
.LBE56:
	.loc 3 659 3 is_stmt 1 view .LVU81
	.loc 3 659 29 is_stmt 0 view .LVU82
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL48:
	movq	%rax, %rdi
.LVL49:
	.loc 3 660 3 is_stmt 1 view .LVU83
	.loc 3 660 6 is_stmt 0 view .LVU84
	testq	%rax, %rax
	je	.L7
	.loc 3 660 22 view .LVU85
	movl	$3, %edx
	leaq	.LC30(%rip), %rsi
	call	strncmp@PLT
.LVL50:
	.loc 3 660 19 view .LVU86
	testl	%eax, %eax
	jne	.L10
.LVL51:
.L7:
	.loc 3 669 3 is_stmt 1 view .LVU87
	.loc 3 669 11 is_stmt 0 view .LVU88
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC32(%rip), %rsi
	call	dcgettext@PLT
.LVL52:
.LBB57:
.LBB58:
	.loc 2 107 10 view .LVU89
	leaq	.LC0(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	movl	$1, %edi
.LBE58:
.LBE57:
	.loc 3 669 11 view .LVU90
	movq	%rax, %rsi
.LVL53:
.LBB64:
.LBI57:
	.loc 2 105 1 is_stmt 1 view .LVU91
.LBB59:
	.loc 2 107 3 view .LVU92
	.loc 2 107 10 is_stmt 0 view .LVU93
	xorl	%eax, %eax
.LVL54:
	.loc 2 107 10 view .LVU94
.LBE59:
.LBE64:
	.loc 3 671 3 view .LVU95
	leaq	.LC1(%rip), %r13
.LBB65:
.LBB60:
	.loc 2 107 10 view .LVU96
	call	__printf_chk@PLT
.LVL55:
	.loc 2 107 10 view .LVU97
.LBE60:
.LBE65:
	.loc 3 671 3 is_stmt 1 view .LVU98
	cmpq	%rbx, %r12
	leaq	.LC2(%rip), %rcx
	cmovne	%rcx, %r13
.L8:
	.loc 3 671 11 is_stmt 0 view .LVU99
	xorl	%edi, %edi
	leaq	.LC33(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL56:
.LBB66:
.LBB67:
	.loc 2 107 10 view .LVU100
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE67:
.LBE66:
	.loc 3 671 11 view .LVU101
	movq	%rax, %rsi
.LVL57:
.LBB69:
.LBI66:
	.loc 2 105 1 is_stmt 1 view .LVU102
.LBB68:
	.loc 2 107 3 view .LVU103
	.loc 2 107 10 is_stmt 0 view .LVU104
	xorl	%eax, %eax
.LVL58:
	.loc 2 107 10 view .LVU105
	call	__printf_chk@PLT
.LVL59:
	.loc 2 107 10 view .LVU106
.LBE68:
.LBE69:
	.loc 3 673 1 view .LVU107
	jmp	.L3
.LVL60:
.L6:
	.loc 3 655 3 is_stmt 1 view .LVU108
	.loc 3 655 11 is_stmt 0 view .LVU109
	call	dcgettext@PLT
.LVL61:
.LBB70:
.LBB54:
	.loc 2 107 10 view .LVU110
	leaq	.LC28(%rip), %rcx
	movl	$1, %edi
	leaq	.LC29(%rip), %rdx
.LBE54:
.LBE70:
	.loc 3 655 11 view .LVU111
	movq	%rax, %rsi
.LVL62:
.LBB71:
	.loc 2 105 1 is_stmt 1 view .LVU112
.LBB55:
	.loc 2 107 3 view .LVU113
	.loc 2 107 10 is_stmt 0 view .LVU114
	xorl	%eax, %eax
.LVL63:
	.loc 2 107 10 view .LVU115
	call	__printf_chk@PLT
.LVL64:
	.loc 2 107 10 view .LVU116
.LBE55:
.LBE71:
	.loc 3 659 3 is_stmt 1 view .LVU117
	.loc 3 659 29 is_stmt 0 view .LVU118
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL65:
	movq	%rax, %rdi
.LVL66:
	.loc 3 660 3 is_stmt 1 view .LVU119
	.loc 3 660 6 is_stmt 0 view .LVU120
	testq	%rax, %rax
	je	.L9
	.loc 3 660 22 view .LVU121
	movl	$3, %edx
	leaq	.LC30(%rip), %rsi
	call	strncmp@PLT
.LVL67:
	.loc 3 660 19 view .LVU122
	testl	%eax, %eax
	jne	.L29
.L9:
	.loc 3 669 3 is_stmt 1 view .LVU123
	.loc 3 669 11 is_stmt 0 view .LVU124
	movl	$5, %edx
	leaq	.LC32(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL68:
.LBB72:
.LBB61:
	.loc 2 107 10 view .LVU125
	leaq	.LC0(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	movl	$1, %edi
.LBE61:
.LBE72:
	.loc 3 669 11 view .LVU126
	movq	%rax, %rsi
.LVL69:
.LBB73:
	.loc 2 105 1 is_stmt 1 view .LVU127
.LBB62:
	.loc 2 107 3 view .LVU128
	.loc 2 107 10 is_stmt 0 view .LVU129
	xorl	%eax, %eax
.LVL70:
	.loc 2 107 10 view .LVU130
.LBE62:
.LBE73:
	.loc 3 646 15 view .LVU131
	leaq	.LC0(%rip), %r12
.LBB74:
.LBB63:
	.loc 2 107 10 view .LVU132
	call	__printf_chk@PLT
.LVL71:
	.loc 2 107 10 view .LVU133
.LBE63:
.LBE74:
	.loc 3 671 3 is_stmt 1 view .LVU134
	leaq	.LC1(%rip), %r13
	jmp	.L8
.L29:
	.loc 3 646 15 is_stmt 0 view .LVU135
	leaq	.LC0(%rip), %r12
.LVL72:
.L10:
	.loc 3 666 7 is_stmt 1 view .LVU136
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC31(%rip), %rsi
	call	dcgettext@PLT
.LVL73:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL74:
	jmp	.L7
.LBE75:
.LBE84:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC34:
	.string	"/usr/local/share/locale"
.LC35:
	.string	"%s: %s"
.LC36:
	.string	"Jim Meyering"
.LC37:
	.string	"David MacKenzie"
.LC38:
	.string	"HLPRcfhv"
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"-R --dereference requires either -H or -L"
	.section	.rodata.str1.1
.LC40:
	.string	"missing operand"
.LC41:
	.string	"missing operand after %s"
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"failed to get attributes of %s"
	.section	.rodata.str1.1
.LC43:
	.string	"/"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL75:
.LFB136:
	.loc 1 158 1 view -0
	.cfi_startproc
	.loc 1 158 1 is_stmt 0 view .LVU138
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 174 7 view .LVU139
	movl	$-1, %r14d
	.loc 1 158 1 view .LVU140
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movslq	%edi, %r13
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
	.loc 1 170 7 view .LVU141
	movl	$16, %ebx
	.loc 1 158 1 view .LVU142
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.loc 1 181 3 view .LVU143
	movq	(%rsi), %rdi
.LVL76:
	.loc 1 158 1 view .LVU144
	movq	%fs:40, %rax
	movq	%rax, 232(%rsp)
	xorl	%eax, %eax
	.loc 1 159 3 is_stmt 1 view .LVU145
.LVL77:
	.loc 1 161 3 view .LVU146
	.loc 1 161 9 is_stmt 0 view .LVU147
	movl	$-1, 16(%rsp)
	.loc 1 162 3 is_stmt 1 view .LVU148
	.loc 1 188 3 is_stmt 0 view .LVU149
	leaq	32(%rsp), %r15
	.loc 1 162 9 view .LVU150
	movl	$-1, 20(%rsp)
	.loc 1 166 3 is_stmt 1 view .LVU151
	.loc 1 166 9 is_stmt 0 view .LVU152
	movl	$-1, 24(%rsp)
	.loc 1 167 3 is_stmt 1 view .LVU153
	.loc 1 167 9 is_stmt 0 view .LVU154
	movl	$-1, 28(%rsp)
	.loc 1 170 3 is_stmt 1 view .LVU155
.LVL78:
	.loc 1 174 3 view .LVU156
	.loc 1 176 3 view .LVU157
	.loc 1 177 3 view .LVU158
	.loc 1 178 3 view .LVU159
	.loc 1 180 33 view .LVU160
	.loc 1 181 3 view .LVU161
	call	set_program_name@PLT
.LVL79:
	.loc 1 182 3 view .LVU162
	leaq	.LC2(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL80:
	.loc 1 183 3 view .LVU163
	leaq	.LC34(%rip), %rsi
	leaq	.LC20(%rip), %rdi
	call	bindtextdomain@PLT
.LVL81:
	.loc 1 184 3 view .LVU164
	leaq	.LC20(%rip), %rdi
	call	textdomain@PLT
.LVL82:
	.loc 1 186 3 view .LVU165
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL83:
	.loc 1 188 3 view .LVU166
	movq	%r15, %rdi
	call	chopt_init@PLT
.LVL84:
	.loc 1 190 3 view .LVU167
	.loc 1 159 8 is_stmt 0 view .LVU168
	movb	$0, 8(%rsp)
.LVL85:
.L31:
	.loc 1 190 9 is_stmt 1 view .LVU169
	.loc 1 190 18 is_stmt 0 view .LVU170
	xorl	%r8d, %r8d
	leaq	long_options(%rip), %rcx
	movq	%r12, %rsi
	movl	%r13d, %edi
	leaq	.LC38(%rip), %rdx
	call	getopt_long@PLT
.LVL86:
	.loc 1 190 9 view .LVU171
	cmpl	$-1, %eax
	je	.L79
	.loc 1 193 7 is_stmt 1 view .LVU172
	cmpl	$132, %eax
	jg	.L55
	cmpl	$71, %eax
	jle	.L80
	subl	$72, %eax
.LVL87:
	.loc 1 193 7 is_stmt 0 view .LVU173
	cmpl	$60, %eax
	ja	.L55
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L37:
	.long	.L49-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L48-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L65-.L37
	.long	.L55-.L37
	.long	.L46-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L45-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L44-.L37
	.long	.L55-.L37
	.long	.L43-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L42-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L55-.L37
	.long	.L41-.L37
	.long	.L40-.L37
	.long	.L39-.L37
	.long	.L38-.L37
	.long	.L36-.L37
	.section	.text.startup
.L65:
	.loc 1 204 21 view .LVU174
	movl	$16, %ebx
.LVL88:
	.loc 1 204 21 view .LVU175
	jmp	.L31
.LVL89:
.L48:
	.loc 1 193 7 view .LVU176
	movl	$2, %ebx
.LVL90:
	.loc 1 193 7 view .LVU177
	jmp	.L31
.LVL91:
.L49:
	.loc 1 196 21 view .LVU178
	movl	$17, %ebx
.LVL92:
	.loc 1 196 21 view .LVU179
	jmp	.L31
.LVL93:
.L36:
	.loc 1 225 11 is_stmt 1 view .LVU180
	.loc 1 225 26 is_stmt 0 view .LVU181
	movq	optarg(%rip), %rax
	movq	%rax, reference_file(%rip)
	.loc 1 226 11 is_stmt 1 view .LVU182
	jmp	.L31
.L38:
	.loc 1 221 11 view .LVU183
.LVL94:
	.loc 1 222 11 view .LVU184
	.loc 1 221 25 is_stmt 0 view .LVU185
	movb	$1, 8(%rsp)
	.loc 1 222 11 view .LVU186
	jmp	.L31
.LVL95:
.L39:
	.loc 1 217 11 is_stmt 1 view .LVU187
	.loc 1 218 11 view .LVU188
	.loc 1 217 25 is_stmt 0 view .LVU189
	movb	$0, 8(%rsp)
	.loc 1 218 11 view .LVU190
	jmp	.L31
.LVL96:
.L40:
.LBB85:
	.loc 1 230 13 is_stmt 1 view .LVU191
	.loc 1 230 29 is_stmt 0 view .LVU192
	xorl	%r8d, %r8d
	leaq	28(%rsp), %rdx
	leaq	24(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	optarg(%rip), %rdi
	call	parse_user_spec@PLT
.LVL97:
	.loc 1 233 13 is_stmt 1 view .LVU193
	.loc 1 233 16 is_stmt 0 view .LVU194
	testq	%rax, %rax
	je	.L31
.LBB86:
	.loc 1 234 15 view .LVU195
	movq	optarg(%rip), %rdi
	movq	%rax, 8(%rsp)
.LVL98:
	.loc 1 234 15 is_stmt 1 view .LVU196
	call	quote@PLT
.LVL99:
	.loc 1 234 15 is_stmt 0 view .LVU197
	movq	8(%rsp), %rcx
	xorl	%esi, %esi
	leaq	.LC35(%rip), %rdx
	movq	%rax, %r8
	movl	$1, %edi
	xorl	%eax, %eax
	call	error@PLT
.LVL100:
.L41:
	.loc 1 234 15 view .LVU198
.LBE86:
.LBE85:
	.loc 1 213 11 is_stmt 1 view .LVU199
	.loc 1 214 11 view .LVU200
	.loc 1 213 23 is_stmt 0 view .LVU201
	movl	$1, %r14d
	.loc 1 214 11 view .LVU202
	jmp	.L31
.LVL101:
.L42:
	.loc 1 251 11 is_stmt 1 view .LVU203
	.loc 1 251 27 is_stmt 0 view .LVU204
	movl	$0, 32(%rsp)
	.loc 1 252 11 is_stmt 1 view .LVU205
	jmp	.L31
.L43:
	.loc 1 208 11 view .LVU206
.LVL102:
	.loc 1 209 11 view .LVU207
	.loc 1 208 23 is_stmt 0 view .LVU208
	xorl	%r14d, %r14d
	.loc 1 209 11 view .LVU209
	jmp	.L31
.LVL103:
.L44:
	.loc 1 247 11 is_stmt 1 view .LVU210
	.loc 1 247 30 is_stmt 0 view .LVU211
	movb	$1, 49(%rsp)
	.loc 1 248 11 is_stmt 1 view .LVU212
	jmp	.L31
.L45:
	.loc 1 243 11 view .LVU213
	.loc 1 243 27 is_stmt 0 view .LVU214
	movl	$1, 32(%rsp)
	.loc 1 244 11 is_stmt 1 view .LVU215
	jmp	.L31
.L46:
	.loc 1 239 11 view .LVU216
	.loc 1 239 25 is_stmt 0 view .LVU217
	movb	$1, 36(%rsp)
	.loc 1 240 11 is_stmt 1 view .LVU218
	jmp	.L31
.LVL104:
	.p2align 4,,10
	.p2align 3
.L80:
	.loc 1 193 7 is_stmt 0 view .LVU219
	cmpl	$-131, %eax
	jne	.L81
	.loc 1 254 9 is_stmt 1 view .LVU220
	.loc 1 254 30 view .LVU221
	.loc 1 255 9 view .LVU222
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 312
	movq	stdout(%rip), %rdi
	xorl	%eax, %eax
.LVL105:
	.loc 1 255 9 is_stmt 0 view .LVU223
	movq	Version(%rip), %rcx
	pushq	$0
	.cfi_def_cfa_offset 320
	leaq	.LC36(%rip), %r9
	leaq	.LC37(%rip), %r8
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	call	version_etc@PLT
.LVL106:
	.loc 1 255 9 is_stmt 1 view .LVU224
	xorl	%edi, %edi
	call	exit@PLT
.LVL107:
	.p2align 4,,10
	.p2align 3
.L81:
	.cfi_restore_state
	.loc 1 193 7 is_stmt 0 view .LVU225
	cmpl	$-130, %eax
	jne	.L55
	.loc 1 254 9 is_stmt 1 view .LVU226
	xorl	%edi, %edi
	call	usage
.LVL108:
.L79:
	.loc 1 261 3 view .LVU227
	.loc 1 261 6 is_stmt 0 view .LVU228
	cmpb	$0, 36(%rsp)
	jne	.L82
	.loc 1 273 17 view .LVU229
	movl	$16, %ebx
.LVL109:
.L51:
	.loc 1 275 3 is_stmt 1 view .LVU230
	.loc 1 277 12 is_stmt 0 view .LVU231
	movslq	optind(%rip), %rax
.LVL110:
	.loc 1 277 39 view .LVU232
	movq	reference_file(%rip), %rbp
	.loc 1 275 48 view .LVU233
	testl	%r14d, %r14d
	.loc 1 277 12 view .LVU234
	movl	%r13d, %edx
	.loc 1 275 33 view .LVU235
	setne	48(%rsp)
	.loc 1 277 3 is_stmt 1 view .LVU236
	.loc 1 277 12 is_stmt 0 view .LVU237
	subl	%eax, %edx
	.loc 1 277 43 view .LVU238
	testq	%rbp, %rbp
	je	.L83
	.loc 1 277 6 view .LVU239
	testl	%edx, %edx
	jle	.L61
.LBB87:
	.loc 1 288 7 is_stmt 1 view .LVU240
	.loc 1 289 7 view .LVU241
.LVL111:
.LBB88:
.LBI88:
	.file 4 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.loc 4 453 1 view .LVU242
.LBB89:
	.loc 4 455 3 view .LVU243
	.loc 4 455 10 is_stmt 0 view .LVU244
	leaq	80(%rsp), %rdx
.LVL112:
	.loc 4 455 10 view .LVU245
	movq	%rbp, %rsi
	movl	$1, %edi
	call	__xstat@PLT
.LVL113:
	.loc 4 455 10 view .LVU246
.LBE89:
.LBE88:
	.loc 1 289 10 view .LVU247
	testl	%eax, %eax
	jne	.L84
	.loc 1 293 7 is_stmt 1 view .LVU248
	.loc 1 293 22 is_stmt 0 view .LVU249
	movl	108(%rsp), %edi
	.loc 1 294 11 view .LVU250
	movl	112(%rsp), %eax
	.loc 1 293 11 view .LVU251
	movl	%edi, 16(%rsp)
	.loc 1 294 7 is_stmt 1 view .LVU252
	.loc 1 294 11 is_stmt 0 view .LVU253
	movl	%eax, 20(%rsp)
	.loc 1 295 7 is_stmt 1 view .LVU254
	.loc 1 295 25 is_stmt 0 view .LVU255
	call	uid_to_name@PLT
.LVL114:
	.loc 1 296 26 view .LVU256
	movl	112(%rsp), %edi
	.loc 1 295 23 view .LVU257
	movq	%rax, 56(%rsp)
	.loc 1 296 7 is_stmt 1 view .LVU258
	.loc 1 296 26 is_stmt 0 view .LVU259
	call	gid_to_name@PLT
.LVL115:
	.loc 1 296 24 view .LVU260
	movq	%rax, 64(%rsp)
.LVL116:
.L57:
	.loc 1 296 24 view .LVU261
.LBE87:
	.loc 1 314 3 is_stmt 1 view .LVU262
	.loc 1 314 21 is_stmt 0 view .LVU263
	cmpb	$0, 36(%rsp)
	je	.L60
	cmpb	$0, 8(%rsp)
	jne	.L85
.L60:
	.loc 1 323 3 is_stmt 1 view .LVU264
.LVL117:
	.loc 1 324 3 view .LVU265
	.loc 1 324 26 is_stmt 0 view .LVU266
	movslq	optind(%rip), %rax
	.loc 1 323 13 view .LVU267
	movl	%ebx, %esi
	orl	$1024, %esi
.LVL118:
	.loc 1 324 8 view .LVU268
	leaq	(%r12,%rax,8), %rdi
	pushq	%rax
	.cfi_def_cfa_offset 312
	pushq	%r15
	.cfi_def_cfa_offset 320
	movl	44(%rsp), %r9d
	movl	40(%rsp), %r8d
	movl	36(%rsp), %ecx
	movl	32(%rsp), %edx
	call	chown_files@PLT
.LVL119:
	.loc 1 328 3 view .LVU269
	movq	%r15, %rdi
	.loc 1 324 8 view .LVU270
	movl	%eax, %ebx
.LVL120:
	.loc 1 328 3 is_stmt 1 view .LVU271
	call	chopt_free@PLT
.LVL121:
	.loc 1 330 3 view .LVU272
	popq	%rdx
	.cfi_def_cfa_offset 312
	popq	%rcx
	.cfi_def_cfa_offset 304
	.loc 1 330 28 is_stmt 0 view .LVU273
	xorl	$1, %ebx
.LVL122:
	.loc 1 331 1 view .LVU274
	movq	232(%rsp), %rcx
	xorq	%fs:40, %rcx
	.loc 1 330 28 view .LVU275
	movzbl	%bl, %eax
	.loc 1 331 1 view .LVU276
	jne	.L86
	addq	$248, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL123:
	.loc 1 331 1 view .LVU277
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL124:
	.loc 1 331 1 view .LVU278
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL125:
.L82:
	.cfi_restore_state
	.loc 1 263 7 is_stmt 1 view .LVU279
	.loc 1 263 10 is_stmt 0 view .LVU280
	cmpl	$16, %ebx
	jne	.L51
	.loc 1 265 11 is_stmt 1 view .LVU281
	.loc 1 265 14 is_stmt 0 view .LVU282
	subl	$1, %r14d
.LVL126:
	.loc 1 265 14 view .LVU283
	je	.L87
	.loc 1 268 23 view .LVU284
	xorl	%r14d, %r14d
	jmp	.L51
.LVL127:
.L83:
	.loc 1 277 6 view .LVU285
	subl	$1, %edx
	jle	.L61
.LBB91:
	.loc 1 300 7 is_stmt 1 view .LVU286
	.loc 1 300 23 is_stmt 0 view .LVU287
	movq	(%r12,%rax,8), %rdi
	leaq	56(%rsp), %rcx
	leaq	20(%rsp), %rdx
	leaq	16(%rsp), %rsi
	leaq	64(%rsp), %r8
	call	parse_user_spec@PLT
.LVL128:
	movq	%rax, %r13
.LVL129:
	.loc 1 302 7 is_stmt 1 view .LVU288
	.loc 1 302 10 is_stmt 0 view .LVU289
	testq	%rax, %rax
	jne	.L88
	.loc 1 308 7 is_stmt 1 view .LVU290
	.loc 1 308 10 is_stmt 0 view .LVU291
	cmpq	$0, 56(%rsp)
	je	.L89
.LVL130:
.L59:
	.loc 1 311 7 is_stmt 1 view .LVU292
	.loc 1 311 13 is_stmt 0 view .LVU293
	addl	$1, optind(%rip)
	jmp	.L57
.LVL131:
.L85:
	.loc 1 311 13 view .LVU294
.LBE91:
.LBB93:
	.loc 1 316 7 is_stmt 1 view .LVU295
	.loc 1 317 7 view .LVU296
	.loc 1 317 28 is_stmt 0 view .LVU297
	leaq	dev_ino_buf.7245(%rip), %rdi
	call	get_root_dev_ino@PLT
.LVL132:
	.loc 1 317 26 view .LVU298
	movq	%rax, 40(%rsp)
	.loc 1 318 7 is_stmt 1 view .LVU299
	.loc 1 318 10 is_stmt 0 view .LVU300
	testq	%rax, %rax
	jne	.L60
.LBB94:
	.loc 1 319 9 is_stmt 1 view .LVU301
	leaq	.LC43(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL133:
	movl	$5, %edx
	leaq	.LC42(%rip), %rsi
	xorl	%edi, %edi
	movq	%rax, %r13
	call	dcgettext@PLT
.LVL134:
	movq	%rax, %r12
.LVL135:
	.loc 1 319 9 is_stmt 0 view .LVU302
	call	__errno_location@PLT
.LVL136:
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL137:
.L61:
	.loc 1 319 9 view .LVU303
.LBE94:
.LBE93:
	.loc 1 279 7 is_stmt 1 view .LVU304
	.loc 1 279 10 is_stmt 0 view .LVU305
	cmpl	%r13d, %eax
	jl	.L54
	.loc 1 280 9 is_stmt 1 view .LVU306
	.loc 1 280 22 is_stmt 0 view .LVU307
	movl	$5, %edx
	leaq	.LC40(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL138:
	.loc 1 280 9 view .LVU308
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 280 22 view .LVU309
	movq	%rax, %rdx
	.loc 1 280 9 view .LVU310
	xorl	%eax, %eax
	call	error@PLT
.LVL139:
.L55:
	.loc 1 283 7 is_stmt 1 view .LVU311
	movl	$1, %edi
	call	usage
.LVL140:
.L89:
.LBB95:
	.loc 1 308 28 is_stmt 0 discriminator 1 view .LVU312
	cmpq	$0, 64(%rsp)
	je	.L59
	.loc 1 309 9 is_stmt 1 view .LVU313
	.loc 1 309 27 is_stmt 0 view .LVU314
	leaq	.LC2(%rip), %rdi
	call	xstrdup@PLT
.LVL141:
	.loc 1 309 25 view .LVU315
	movq	%rax, 56(%rsp)
	jmp	.L59
.LVL142:
.L86:
	.loc 1 309 25 view .LVU316
.LBE95:
	.loc 1 331 1 view .LVU317
	call	__stack_chk_fail@PLT
.LVL143:
.L84:
.LBB96:
.LBB90:
	.loc 1 290 9 is_stmt 1 view .LVU318
	movq	%rbp, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL144:
	movl	$5, %edx
	leaq	.LC42(%rip), %rsi
	xorl	%edi, %edi
	movq	%rax, %r13
	call	dcgettext@PLT
.LVL145:
	movq	%rax, %r12
.LVL146:
	.loc 1 290 9 is_stmt 0 view .LVU319
	call	__errno_location@PLT
.LVL147:
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL148:
.L88:
	.loc 1 290 9 view .LVU320
.LBE90:
.LBE96:
.LBB97:
.LBB92:
	.loc 1 303 9 is_stmt 1 view .LVU321
	movslq	optind(%rip), %rax
.LVL149:
	.loc 1 303 9 is_stmt 0 view .LVU322
	movq	(%r12,%rax,8), %rdi
	call	quote@PLT
.LVL150:
	movq	%r13, %rcx
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %r8
	leaq	.LC35(%rip), %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL151:
.L87:
	.loc 1 303 9 view .LVU323
.LBE92:
.LBE97:
.LBB98:
	.loc 1 266 13 is_stmt 1 view .LVU324
	movl	$5, %edx
	leaq	.LC39(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL152:
	.loc 1 266 13 is_stmt 0 view .LVU325
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL153:
.L54:
	.loc 1 266 13 view .LVU326
.LBE98:
	.loc 1 282 9 is_stmt 1 view .LVU327
	movq	-8(%r12,%r13,8), %rdi
	call	quote@PLT
.LVL154:
	.loc 1 282 22 is_stmt 0 view .LVU328
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC41(%rip), %rsi
	.loc 1 282 9 view .LVU329
	movq	%rax, %r12
.LVL155:
	.loc 1 282 22 view .LVU330
	call	dcgettext@PLT
.LVL156:
	.loc 1 282 9 view .LVU331
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 282 22 view .LVU332
	movq	%rax, %rdx
	.loc 1 282 9 view .LVU333
	xorl	%eax, %eax
	call	error@PLT
.LVL157:
	jmp	.L55
	.cfi_endproc
.LFE136:
	.size	main, .-main
	.local	dev_ino_buf.7245
	.comm	dev_ino_buf.7245,16,16
	.section	.rodata.str1.1
.LC44:
	.string	"recursive"
.LC45:
	.string	"changes"
.LC46:
	.string	"dereference"
.LC47:
	.string	"from"
.LC48:
	.string	"no-dereference"
.LC49:
	.string	"no-preserve-root"
.LC50:
	.string	"preserve-root"
.LC51:
	.string	"quiet"
.LC52:
	.string	"silent"
.LC53:
	.string	"reference"
.LC54:
	.string	"verbose"
.LC55:
	.string	"help"
.LC56:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 448
long_options:
	.quad	.LC44
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	.LC45
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC46
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC47
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC48
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC49
	.long	0
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC50
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC51
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC52
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC53
	.long	1
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	.LC54
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC55
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC56
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
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 17 "/usr/include/time.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 19 "/usr/include/signal.h"
	.file 20 "/usr/include/unistd.h"
	.file 21 "/usr/include/errno.h"
	.file 22 "src/version.h"
	.file 23 "./lib/exitfail.h"
	.file 24 "./lib/timespec.h"
	.file 25 "./lib/version-etc.h"
	.file 26 "./lib/progname.h"
	.file 27 "./lib/quotearg.h"
	.file 28 "./lib/dev-ino.h"
	.file 29 "src/chown-core.h"
	.file 30 "./lib/error.h"
	.file 31 "./lib/i-ring.h"
	.file 32 "./lib/quote.h"
	.file 33 "./lib/userspec.h"
	.file 34 "/usr/include/libintl.h"
	.file 35 "./lib/xalloc.h"
	.file 36 "./lib/root-dev-ino.h"
	.file 37 "/usr/include/locale.h"
	.file 38 "/usr/include/stdlib.h"
	.file 39 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x19b3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF211
	.byte	0xc
	.long	.LASF212
	.long	.LASF213
	.long	.Ldebug_ranges0+0x220
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
	.byte	0x91
	.byte	0x19
	.long	0x35
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
	.byte	0x92
	.byte	0x19
	.long	0x3c
	.uleb128 0x2
	.long	.LASF10
	.byte	0x6
	.byte	0x93
	.byte	0x19
	.long	0x3c
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0x94
	.byte	0x19
	.long	0x35
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0x96
	.byte	0x1a
	.long	0x3c
	.uleb128 0x2
	.long	.LASF13
	.byte	0x6
	.byte	0x97
	.byte	0x1b
	.long	0x35
	.uleb128 0x2
	.long	.LASF14
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.long	.LASF15
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x2
	.long	.LASF16
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x6d
	.uleb128 0x2
	.long	.LASF17
	.byte	0x6
	.byte	0xae
	.byte	0x1d
	.long	0x6d
	.uleb128 0x2
	.long	.LASF18
	.byte	0x6
	.byte	0xb3
	.byte	0x1c
	.long	0x6d
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6
	.byte	0xc4
	.byte	0x21
	.long	0x6d
	.uleb128 0x7
	.byte	0x8
	.long	0x10a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x8
	.long	0x10a
	.uleb128 0x9
	.long	.LASF68
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x29d
	.uleb128 0xa
	.long	.LASF21
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x104
	.byte	0x8
	.uleb128 0xa
	.long	.LASF23
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x104
	.byte	0x10
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x104
	.byte	0x18
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x104
	.byte	0x20
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x104
	.byte	0x28
	.uleb128 0xa
	.long	.LASF27
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x104
	.byte	0x30
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x104
	.byte	0x38
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x104
	.byte	0x40
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x104
	.byte	0x48
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x104
	.byte	0x50
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x104
	.byte	0x58
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x2b6
	.byte	0x60
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x2bc
	.byte	0x68
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0xbc
	.byte	0x78
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x2c2
	.byte	0x83
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x2d2
	.byte	0x88
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0xc8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF43
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x2dd
	.byte	0x98
	.uleb128 0xa
	.long	.LASF44
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x2e8
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x2bc
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x2ee
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x116
	.uleb128 0xb
	.long	.LASF214
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF51
	.uleb128 0x7
	.byte	0x8
	.long	0x2b1
	.uleb128 0x7
	.byte	0x8
	.long	0x116
	.uleb128 0xd
	.long	0x10a
	.long	0x2d2
	.uleb128 0xe
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2a9
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x7
	.byte	0x8
	.long	0x2d8
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2e3
	.uleb128 0xd
	.long	0x10a
	.long	0x2fe
	.uleb128 0xe
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x111
	.uleb128 0x8
	.long	0x2fe
	.uleb128 0xf
	.long	0x2fe
	.uleb128 0x10
	.long	.LASF54
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x31a
	.uleb128 0x7
	.byte	0x8
	.long	0x29d
	.uleb128 0xf
	.long	0x31a
	.uleb128 0x10
	.long	.LASF55
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x31a
	.uleb128 0x10
	.long	.LASF56
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x31a
	.uleb128 0x10
	.long	.LASF57
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x304
	.long	0x354
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x349
	.uleb128 0x10
	.long	.LASF58
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x354
	.uleb128 0x10
	.long	.LASF59
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF60
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x354
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF62
	.uleb128 0x2
	.long	.LASF63
	.byte	0xb
	.byte	0x2f
	.byte	0x11
	.long	0x98
	.uleb128 0x2
	.long	.LASF64
	.byte	0xb
	.byte	0x3b
	.byte	0x11
	.long	0x74
	.uleb128 0x2
	.long	.LASF65
	.byte	0xb
	.byte	0x40
	.byte	0x11
	.long	0x8c
	.uleb128 0x2
	.long	.LASF66
	.byte	0xb
	.byte	0x4f
	.byte	0x11
	.long	0x80
	.uleb128 0x2
	.long	.LASF67
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0xd4
	.uleb128 0x9
	.long	.LASF69
	.byte	0x10
	.byte	0xd
	.byte	0xa
	.byte	0x8
	.long	0x3ef
	.uleb128 0xa
	.long	.LASF70
	.byte	0xd
	.byte	0xc
	.byte	0xc
	.long	0xd4
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0xd
	.byte	0x10
	.byte	0x15
	.long	0xf8
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF72
	.byte	0xe
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF73
	.uleb128 0x10
	.long	.LASF74
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0x104
	.uleb128 0x10
	.long	.LASF75
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF76
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF77
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF78
	.byte	0x20
	.byte	0x10
	.byte	0x32
	.byte	0x8
	.long	0x475
	.uleb128 0xa
	.long	.LASF79
	.byte	0x10
	.byte	0x34
	.byte	0xf
	.long	0x2fe
	.byte	0
	.uleb128 0xa
	.long	.LASF80
	.byte	0x10
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF81
	.byte	0x10
	.byte	0x38
	.byte	0x8
	.long	0x47a
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
	.long	0x433
	.uleb128 0x7
	.byte	0x8
	.long	0x61
	.uleb128 0xd
	.long	0x104
	.long	0x490
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF82
	.byte	0x11
	.byte	0x9f
	.byte	0xe
	.long	0x480
	.uleb128 0x10
	.long	.LASF83
	.byte	0x11
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF84
	.byte	0x11
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0x10
	.long	.LASF85
	.byte	0x11
	.byte	0xa6
	.byte	0xe
	.long	0x480
	.uleb128 0x10
	.long	.LASF86
	.byte	0x11
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF87
	.byte	0x11
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x12
	.long	.LASF88
	.byte	0x11
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF89
	.byte	0x90
	.byte	0x12
	.byte	0x2e
	.byte	0x8
	.long	0x5b6
	.uleb128 0xa
	.long	.LASF90
	.byte	0x12
	.byte	0x30
	.byte	0xd
	.long	0x74
	.byte	0
	.uleb128 0xa
	.long	.LASF91
	.byte	0x12
	.byte	0x35
	.byte	0xd
	.long	0x98
	.byte	0x8
	.uleb128 0xa
	.long	.LASF92
	.byte	0x12
	.byte	0x3d
	.byte	0xf
	.long	0xb0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF93
	.byte	0x12
	.byte	0x3e
	.byte	0xe
	.long	0xa4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF94
	.byte	0x12
	.byte	0x40
	.byte	0xd
	.long	0x80
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF95
	.byte	0x12
	.byte	0x41
	.byte	0xd
	.long	0x8c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF96
	.byte	0x12
	.byte	0x43
	.byte	0x9
	.long	0x61
	.byte	0x24
	.uleb128 0xa
	.long	.LASF97
	.byte	0x12
	.byte	0x45
	.byte	0xd
	.long	0x74
	.byte	0x28
	.uleb128 0xa
	.long	.LASF98
	.byte	0x12
	.byte	0x4a
	.byte	0xd
	.long	0xbc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF99
	.byte	0x12
	.byte	0x4e
	.byte	0x11
	.long	0xe0
	.byte	0x38
	.uleb128 0xa
	.long	.LASF100
	.byte	0x12
	.byte	0x50
	.byte	0x10
	.long	0xec
	.byte	0x40
	.uleb128 0xa
	.long	.LASF101
	.byte	0x12
	.byte	0x5b
	.byte	0x15
	.long	0x3c7
	.byte	0x48
	.uleb128 0xa
	.long	.LASF102
	.byte	0x12
	.byte	0x5c
	.byte	0x15
	.long	0x3c7
	.byte	0x58
	.uleb128 0xa
	.long	.LASF103
	.byte	0x12
	.byte	0x5d
	.byte	0x15
	.long	0x3c7
	.byte	0x68
	.uleb128 0xa
	.long	.LASF104
	.byte	0x12
	.byte	0x6a
	.byte	0x17
	.long	0x5b6
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0xf8
	.long	0x5c6
	.uleb128 0xe
	.long	0x35
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x8
	.long	0x5c6
	.uleb128 0xd
	.long	0x304
	.long	0x5dd
	.uleb128 0xe
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5cd
	.uleb128 0x12
	.long	.LASF105
	.byte	0x13
	.value	0x11e
	.byte	0x1a
	.long	0x5dd
	.uleb128 0x12
	.long	.LASF106
	.byte	0x13
	.value	0x11f
	.byte	0x1a
	.long	0x5dd
	.uleb128 0x12
	.long	.LASF107
	.byte	0x14
	.value	0x21f
	.byte	0xf
	.long	0x609
	.uleb128 0x7
	.byte	0x8
	.long	0x104
	.uleb128 0x12
	.long	.LASF108
	.byte	0x14
	.value	0x221
	.byte	0xf
	.long	0x609
	.uleb128 0x10
	.long	.LASF109
	.byte	0x15
	.byte	0x2d
	.byte	0xe
	.long	0x104
	.uleb128 0x10
	.long	.LASF110
	.byte	0x15
	.byte	0x2e
	.byte	0xe
	.long	0x104
	.uleb128 0x10
	.long	.LASF111
	.byte	0x16
	.byte	0x1
	.byte	0x14
	.long	0x2fe
	.uleb128 0x10
	.long	.LASF112
	.byte	0x17
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x664
	.uleb128 0x16
	.long	.LASF113
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x679
	.uleb128 0x17
	.long	.LASF114
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x61
	.byte	0x3
	.value	0x147
	.byte	0x1
	.long	0x697
	.uleb128 0x19
	.long	.LASF115
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF116
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x111
	.long	0x6a2
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x697
	.uleb128 0x10
	.long	.LASF117
	.byte	0x19
	.byte	0x19
	.byte	0x13
	.long	0x6a2
	.uleb128 0x10
	.long	.LASF118
	.byte	0x1a
	.byte	0x20
	.byte	0x14
	.long	0x2fe
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1b
	.byte	0x20
	.byte	0x6
	.long	0x714
	.uleb128 0x17
	.long	.LASF119
	.byte	0
	.uleb128 0x17
	.long	.LASF120
	.byte	0x1
	.uleb128 0x17
	.long	.LASF121
	.byte	0x2
	.uleb128 0x17
	.long	.LASF122
	.byte	0x3
	.uleb128 0x17
	.long	.LASF123
	.byte	0x4
	.uleb128 0x17
	.long	.LASF124
	.byte	0x5
	.uleb128 0x17
	.long	.LASF125
	.byte	0x6
	.uleb128 0x17
	.long	.LASF126
	.byte	0x7
	.uleb128 0x17
	.long	.LASF127
	.byte	0x8
	.uleb128 0x17
	.long	.LASF128
	.byte	0x9
	.uleb128 0x17
	.long	.LASF129
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x6bf
	.uleb128 0x12
	.long	.LASF130
	.byte	0x1b
	.value	0x10b
	.byte	0x1a
	.long	0x354
	.uleb128 0xd
	.long	0x714
	.long	0x731
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x726
	.uleb128 0x12
	.long	.LASF131
	.byte	0x1b
	.value	0x10c
	.byte	0x21
	.long	0x731
	.uleb128 0x9
	.long	.LASF132
	.byte	0x10
	.byte	0x1c
	.byte	0x19
	.byte	0x8
	.long	0x76b
	.uleb128 0xa
	.long	.LASF91
	.byte	0x1c
	.byte	0x1b
	.byte	0x9
	.long	0x38b
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1c
	.byte	0x1c
	.byte	0x9
	.long	0x397
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1d
	.byte	0x1f
	.byte	0x6
	.long	0x790
	.uleb128 0x17
	.long	.LASF135
	.byte	0
	.uleb128 0x17
	.long	.LASF136
	.byte	0x1
	.uleb128 0x17
	.long	.LASF137
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF138
	.byte	0x28
	.byte	0x1d
	.byte	0x2b
	.byte	0x8
	.long	0x7f9
	.uleb128 0xa
	.long	.LASF139
	.byte	0x1d
	.byte	0x2e
	.byte	0x12
	.long	0x76b
	.byte	0
	.uleb128 0xa
	.long	.LASF140
	.byte	0x1d
	.byte	0x31
	.byte	0x8
	.long	0x7f9
	.byte	0x4
	.uleb128 0xa
	.long	.LASF141
	.byte	0x1d
	.byte	0x35
	.byte	0x13
	.long	0x800
	.byte	0x8
	.uleb128 0xa
	.long	.LASF142
	.byte	0x1d
	.byte	0x38
	.byte	0x8
	.long	0x7f9
	.byte	0x10
	.uleb128 0xa
	.long	.LASF143
	.byte	0x1d
	.byte	0x3b
	.byte	0x8
	.long	0x7f9
	.byte	0x11
	.uleb128 0xa
	.long	.LASF144
	.byte	0x1d
	.byte	0x3e
	.byte	0x9
	.long	0x104
	.byte	0x18
	.uleb128 0xa
	.long	.LASF145
	.byte	0x1d
	.byte	0x41
	.byte	0x9
	.long	0x104
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF146
	.uleb128 0x7
	.byte	0x8
	.long	0x743
	.uleb128 0x10
	.long	.LASF147
	.byte	0x1e
	.byte	0x32
	.byte	0xf
	.long	0x5c7
	.uleb128 0x10
	.long	.LASF148
	.byte	0x1e
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF149
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1f
	.byte	0x14
	.byte	0x6
	.long	0x83f
	.uleb128 0x17
	.long	.LASF150
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF151
	.uleb128 0x10
	.long	.LASF152
	.byte	0x20
	.byte	0x19
	.byte	0x1f
	.long	0x83f
	.uleb128 0x1b
	.long	.LASF158
	.byte	0x1
	.byte	0x2a
	.byte	0xe
	.long	0x104
	.uleb128 0x9
	.byte	0x3
	.quad	reference_file
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	0x893
	.uleb128 0x17
	.long	.LASF153
	.byte	0x80
	.uleb128 0x17
	.long	.LASF154
	.byte	0x81
	.uleb128 0x17
	.long	.LASF155
	.byte	0x82
	.uleb128 0x17
	.long	.LASF156
	.byte	0x83
	.uleb128 0x17
	.long	.LASF157
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.long	0x475
	.long	0x8a3
	.uleb128 0xe
	.long	0x35
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.long	0x893
	.uleb128 0x1b
	.long	.LASF159
	.byte	0x1
	.byte	0x37
	.byte	0x1c
	.long	0x8a3
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1c
	.long	.LASF171
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0x61
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0xf9d
	.uleb128 0x1d
	.long	.LASF160
	.byte	0x1
	.byte	0x9d
	.byte	0xb
	.long	0x61
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1d
	.long	.LASF161
	.byte	0x1
	.byte	0x9d
	.byte	0x18
	.long	0x609
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1e
	.long	.LASF162
	.byte	0x1
	.byte	0x9f
	.byte	0x8
	.long	0x7f9
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1f
	.string	"uid"
	.byte	0x1
	.byte	0xa1
	.byte	0x9
	.long	0x3af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1f
	.string	"gid"
	.byte	0x1
	.byte	0xa2
	.byte	0x9
	.long	0x3a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x1b
	.long	.LASF163
	.byte	0x1
	.byte	0xa6
	.byte	0x9
	.long	0x3af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1b
	.long	.LASF164
	.byte	0x1
	.byte	0xa7
	.byte	0x9
	.long	0x3a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x1
	.byte	0xaa
	.byte	0x7
	.long	0x61
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1e
	.long	.LASF166
	.byte	0x1
	.byte	0xae
	.byte	0x7
	.long	0x61
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x1b
	.long	.LASF167
	.byte	0x1
	.byte	0xb0
	.byte	0x17
	.long	0x790
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x20
	.string	"ok"
	.byte	0x1
	.byte	0xb1
	.byte	0x8
	.long	0x7f9
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1e
	.long	.LASF168
	.byte	0x1
	.byte	0xb2
	.byte	0x7
	.long	0x61
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x21
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0xa59
	.uleb128 0x20
	.string	"e"
	.byte	0x1
	.byte	0xe6
	.byte	0x19
	.long	0x2fe
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x21
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.long	0xa32
	.uleb128 0x22
	.quad	.LVL99
	.long	0x1870
	.uleb128 0x23
	.quad	.LVL100
	.long	0x187c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -296
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL97
	.long	0x1888
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0xab0
	.uleb128 0x25
	.quad	.LVL152
	.long	0x1894
	.long	0xa97
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
	.quad	.LC39
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL153
	.long	0x187c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x1b0
	.long	0xbce
	.uleb128 0x27
	.long	.LASF169
	.byte	0x1
	.value	0x120
	.byte	0x13
	.long	0x4e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x21
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.long	0xb52
	.uleb128 0x25
	.quad	.LVL144
	.long	0x18a0
	.long	0xafc
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL145
	.long	0x1894
	.long	0xb25
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
	.quad	.LC42
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL147
	.long	0x18ad
	.uleb128 0x23
	.quad	.LVL148
	.long	0x187c
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
	.uleb128 0x28
	.long	0x17f3
	.quad	.LBI88
	.byte	.LVU242
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.byte	0x1
	.value	0x121
	.byte	0xb
	.long	0xbb3
	.uleb128 0x29
	.long	0x1812
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x29
	.long	0x1805
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x23
	.quad	.LVL113
	.long	0x18b9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL114
	.long	0x18c6
	.uleb128 0x22
	.quad	.LVL115
	.long	0x18d2
	.byte	0
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x1e0
	.long	0xc82
	.uleb128 0x2a
	.string	"e"
	.byte	0x1
	.value	0x12c
	.byte	0x13
	.long	0x2fe
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x21
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.long	0xc38
	.uleb128 0x22
	.quad	.LVL150
	.long	0x1870
	.uleb128 0x23
	.quad	.LVL151
	.long	0x187c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL128
	.long	0x1888
	.long	0xc66
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x23
	.quad	.LVL141
	.long	0x18de
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0xd59
	.uleb128 0x27
	.long	.LASF170
	.byte	0x1
	.value	0x13c
	.byte	0x1d
	.long	0x743
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_buf.7245
	.uleb128 0x21
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.long	0xd3d
	.uleb128 0x25
	.quad	.LVL133
	.long	0x18a0
	.long	0xce7
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC43
	.byte	0
	.uleb128 0x25
	.quad	.LVL134
	.long	0x1894
	.long	0xd10
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
	.quad	.LC42
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL136
	.long	0x18ad
	.uleb128 0x23
	.quad	.LVL137
	.long	0x187c
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
	.quad	.LVL132
	.long	0x18ea
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_buf.7245
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL79
	.long	0x18f6
	.uleb128 0x25
	.quad	.LVL80
	.long	0x1902
	.long	0xd8a
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
	.uleb128 0x25
	.quad	.LVL81
	.long	0x190e
	.long	0xdb6
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC34
	.byte	0
	.uleb128 0x25
	.quad	.LVL82
	.long	0x191a
	.long	0xdd5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.byte	0
	.uleb128 0x22
	.quad	.LVL83
	.long	0x1926
	.uleb128 0x25
	.quad	.LVL84
	.long	0x1933
	.long	0xdfa
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL86
	.long	0x193f
	.long	0xe37
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC38
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL106
	.long	0x194b
	.long	0xe7d
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
	.quad	.LC29
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC37
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC36
	.byte	0
	.uleb128 0x25
	.quad	.LVL107
	.long	0x1957
	.long	0xe94
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL108
	.long	0xf9d
	.long	0xeab
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL119
	.long	0x1964
	.long	0xec7
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.value	0x400
	.byte	0x21
	.byte	0
	.uleb128 0x25
	.quad	.LVL121
	.long	0x1970
	.long	0xedf
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL138
	.long	0x1894
	.long	0xf08
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
	.quad	.LC40
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL139
	.long	0x187c
	.long	0xf24
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
	.byte	0
	.uleb128 0x25
	.quad	.LVL140
	.long	0xf9d
	.long	0xf3b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.quad	.LVL143
	.long	0x197c
	.uleb128 0x22
	.quad	.LVL154
	.long	0x1870
	.uleb128 0x25
	.quad	.LVL156
	.long	0x1894
	.long	0xf7e
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
	.quad	.LC41
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL157
	.long	0x187c
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
	.uleb128 0x2b
	.long	.LASF172
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x1758
	.uleb128 0x1d
	.long	.LASF173
	.byte	0x1
	.byte	0x4a
	.byte	0xc
	.long	0x61
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x2c
	.long	0x1845
	.quad	.LBI45
	.byte	.LVU12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.long	0x101c
	.uleb128 0x29
	.long	0x1862
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x29
	.long	0x1856
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x23
	.quad	.LVL5
	.long	0x1985
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
	.uleb128 0x2c
	.long	0x1758
	.quad	.LBI49
	.byte	.LVU52
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x97
	.byte	0x7
	.long	0x132f
	.uleb128 0x2d
	.long	0x1766
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2f
	.long	0x17a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x30
	.long	0x17b0
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x30
	.long	0x17bd
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x30
	.long	0x17ca
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x31
	.long	0x1826
	.quad	.LBI51
	.byte	.LVU76
	.long	.Ldebug_ranges0+0x60
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0x1100
	.uleb128 0x29
	.long	0x1837
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x25
	.quad	.LVL47
	.long	0x1991
	.long	0x10d2
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
	.quad	.LC29
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.byte	0
	.uleb128 0x23
	.quad	.LVL64
	.long	0x1991
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
	.quad	.LC29
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x1826
	.quad	.LBI57
	.byte	.LVU91
	.long	.Ldebug_ranges0+0xb0
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0x1178
	.uleb128 0x29
	.long	0x1837
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x25
	.quad	.LVL55
	.long	0x1991
	.long	0x1151
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
	.quad	.LC28
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL71
	.long	0x1991
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
	.quad	.LC28
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x1826
	.quad	.LBI66
	.byte	.LVU102
	.long	.Ldebug_ranges0+0x120
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0x11bf
	.uleb128 0x29
	.long	0x1837
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x23
	.quad	.LVL59
	.long	0x1991
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
	.uleb128 0x25
	.quad	.LVL44
	.long	0x1894
	.long	0x11e8
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
	.quad	.LVL48
	.long	0x1902
	.long	0x1204
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
	.uleb128 0x25
	.quad	.LVL50
	.long	0x199d
	.long	0x1228
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x25
	.quad	.LVL52
	.long	0x1894
	.long	0x1251
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
	.quad	.LC32
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL56
	.long	0x1894
	.long	0x127a
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
	.quad	.LC33
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL61
	.long	0x1894
	.uleb128 0x25
	.quad	.LVL65
	.long	0x1902
	.long	0x12a3
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
	.uleb128 0x25
	.quad	.LVL67
	.long	0x199d
	.long	0x12c7
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x25
	.quad	.LVL68
	.long	0x1894
	.long	0x12f0
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
	.quad	.LC32
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL73
	.long	0x1894
	.long	0x1319
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
	.quad	.LC31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL74
	.long	0x19a9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x1826
	.quad	.LBI76
	.byte	.LVU25
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x50
	.byte	0x7
	.long	0x1375
	.uleb128 0x29
	.long	0x1837
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x23
	.quad	.LVL11
	.long	0x1991
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
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x1826
	.quad	.LBI80
	.byte	.LVU46
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0x8f
	.byte	0x7
	.long	0x13c1
	.uleb128 0x29
	.long	0x1837
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x23
	.quad	.LVL39
	.long	0x1991
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
	.byte	0x7c
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL2
	.long	0x1894
	.long	0x13ea
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
	.uleb128 0x25
	.quad	.LVL6
	.long	0x1957
	.long	0x1402
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL8
	.long	0x1894
	.long	0x1426
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
	.uleb128 0x25
	.quad	.LVL12
	.long	0x1894
	.long	0x144f
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
	.uleb128 0x25
	.quad	.LVL13
	.long	0x19a9
	.long	0x1467
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL14
	.long	0x1894
	.long	0x1490
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
	.uleb128 0x25
	.quad	.LVL15
	.long	0x19a9
	.long	0x14a8
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL16
	.long	0x1894
	.long	0x14d1
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
	.long	0x19a9
	.long	0x14e9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL18
	.long	0x1894
	.long	0x1512
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
	.uleb128 0x25
	.quad	.LVL19
	.long	0x19a9
	.long	0x152a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL20
	.long	0x1894
	.long	0x1553
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
	.quad	.LC9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL21
	.long	0x19a9
	.long	0x156b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL22
	.long	0x1894
	.long	0x1594
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
	.quad	.LC10
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL23
	.long	0x19a9
	.long	0x15ac
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL24
	.long	0x1894
	.long	0x15d5
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
	.quad	.LC11
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL25
	.long	0x19a9
	.long	0x15ed
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL26
	.long	0x1894
	.long	0x1616
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
	.quad	.LC12
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL27
	.long	0x19a9
	.long	0x162e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL28
	.long	0x1894
	.long	0x1657
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
	.quad	.LC13
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL29
	.long	0x19a9
	.long	0x166f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL30
	.long	0x1894
	.long	0x1698
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
	.quad	.LC14
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL31
	.long	0x19a9
	.long	0x16b0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL32
	.long	0x1894
	.long	0x16d9
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
	.quad	.LC15
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL33
	.long	0x19a9
	.long	0x16f1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL34
	.long	0x1894
	.long	0x171a
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
	.quad	.LC16
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL35
	.long	0x19a9
	.long	0x1732
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL36
	.long	0x1894
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
	.byte	0
	.uleb128 0x32
	.long	.LASF215
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x17d8
	.uleb128 0x33
	.long	.LASF175
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x2fe
	.uleb128 0x34
	.long	.LASF174
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0x179e
	.uleb128 0x35
	.long	.LASF175
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x2fe
	.byte	0
	.uleb128 0x35
	.long	.LASF176
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x2fe
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x1773
	.uleb128 0x36
	.long	.LASF174
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0x17e8
	.uleb128 0x36
	.long	.LASF176
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x2fe
	.uleb128 0x36
	.long	.LASF177
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0x17ed
	.uleb128 0x36
	.long	.LASF178
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x2fe
	.byte	0
	.uleb128 0xd
	.long	0x179e
	.long	0x17e8
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x17d8
	.uleb128 0x7
	.byte	0x8
	.long	0x179e
	.uleb128 0x37
	.long	.LASF89
	.byte	0x4
	.value	0x1c5
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1820
	.uleb128 0x33
	.long	.LASF179
	.byte	0x4
	.value	0x1c5
	.byte	0x1
	.long	0x2fe
	.uleb128 0x33
	.long	.LASF180
	.byte	0x4
	.value	0x1c5
	.byte	0x1
	.long	0x1820
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x4e5
	.uleb128 0x38
	.long	.LASF182
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1845
	.uleb128 0x39
	.long	.LASF181
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x309
	.uleb128 0x3a
	.byte	0
	.uleb128 0x38
	.long	.LASF183
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1870
	.uleb128 0x39
	.long	.LASF184
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x320
	.uleb128 0x39
	.long	.LASF181
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x309
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3b
	.long	.LASF185
	.long	.LASF185
	.byte	0x20
	.byte	0x2c
	.byte	0xd
	.uleb128 0x3b
	.long	.LASF186
	.long	.LASF186
	.byte	0x1e
	.byte	0x28
	.byte	0xd
	.uleb128 0x3b
	.long	.LASF187
	.long	.LASF187
	.byte	0x21
	.byte	0x19
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF188
	.long	.LASF188
	.byte	0x22
	.byte	0x33
	.byte	0xe
	.uleb128 0x3c
	.long	.LASF189
	.long	.LASF189
	.byte	0x1b
	.value	0x179
	.byte	0x7
	.uleb128 0x3b
	.long	.LASF190
	.long	.LASF190
	.byte	0x15
	.byte	0x25
	.byte	0xd
	.uleb128 0x3c
	.long	.LASF191
	.long	.LASF191
	.byte	0x4
	.value	0x18d
	.byte	0xc
	.uleb128 0x3b
	.long	.LASF192
	.long	.LASF192
	.byte	0x1d
	.byte	0x4e
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF193
	.long	.LASF193
	.byte	0x1d
	.byte	0x4b
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF194
	.long	.LASF194
	.byte	0x23
	.byte	0x40
	.byte	0x7
	.uleb128 0x3b
	.long	.LASF195
	.long	.LASF195
	.byte	0x24
	.byte	0x19
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF196
	.long	.LASF196
	.byte	0x1a
	.byte	0x25
	.byte	0xd
	.uleb128 0x3b
	.long	.LASF197
	.long	.LASF197
	.byte	0x25
	.byte	0x7a
	.byte	0xe
	.uleb128 0x3b
	.long	.LASF198
	.long	.LASF198
	.byte	0x22
	.byte	0x56
	.byte	0xe
	.uleb128 0x3b
	.long	.LASF199
	.long	.LASF199
	.byte	0x22
	.byte	0x52
	.byte	0xe
	.uleb128 0x3c
	.long	.LASF200
	.long	.LASF200
	.byte	0x26
	.value	0x253
	.byte	0xc
	.uleb128 0x3b
	.long	.LASF201
	.long	.LASF201
	.byte	0x1d
	.byte	0x45
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF202
	.long	.LASF202
	.byte	0x10
	.byte	0x42
	.byte	0xc
	.uleb128 0x3b
	.long	.LASF203
	.long	.LASF203
	.byte	0x19
	.byte	0x3c
	.byte	0xd
	.uleb128 0x3c
	.long	.LASF204
	.long	.LASF204
	.byte	0x26
	.value	0x269
	.byte	0xd
	.uleb128 0x3b
	.long	.LASF205
	.long	.LASF205
	.byte	0x1d
	.byte	0x51
	.byte	0x1
	.uleb128 0x3b
	.long	.LASF206
	.long	.LASF206
	.byte	0x1d
	.byte	0x48
	.byte	0x1
	.uleb128 0x3d
	.long	.LASF216
	.long	.LASF216
	.uleb128 0x3b
	.long	.LASF207
	.long	.LASF207
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x3b
	.long	.LASF208
	.long	.LASF208
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x3b
	.long	.LASF209
	.long	.LASF209
	.byte	0x27
	.byte	0x8c
	.byte	0xc
	.uleb128 0x3c
	.long	.LASF210
	.long	.LASF210
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
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x3d
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
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 0
.LLST11:
	.quad	.LVL75
	.quad	.LVL76
	.value	0x1
	.byte	0x55
	.quad	.LVL76
	.quad	.LVL116
	.value	0x1
	.byte	0x5d
	.quad	.LVL116
	.quad	.LFE136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU302
	.uleb128 .LVU302
	.uleb128 .LVU303
	.uleb128 .LVU303
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 0
.LLST12:
	.quad	.LVL75
	.quad	.LVL79-1
	.value	0x1
	.byte	0x54
	.quad	.LVL79-1
	.quad	.LVL123
	.value	0x1
	.byte	0x5c
	.quad	.LVL123
	.quad	.LVL125
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL125
	.quad	.LVL135
	.value	0x1
	.byte	0x5c
	.quad	.LVL135
	.quad	.LVL137
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL137
	.quad	.LVL139
	.value	0x1
	.byte	0x5c
	.quad	.LVL139
	.quad	.LVL140
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL140
	.quad	.LVL146
	.value	0x1
	.byte	0x5c
	.quad	.LVL146
	.quad	.LVL148
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL148
	.quad	.LVL155
	.value	0x1
	.byte	0x5c
	.quad	.LVL155
	.quad	.LFE136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU146
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU196
	.uleb128 .LVU198
	.uleb128 0
.LLST13:
	.quad	.LVL77
	.quad	.LVL85
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL85
	.quad	.LVL94
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	.LVL94
	.quad	.LVL95
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL95
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	.LVL95
	.quad	.LVL96
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL96
	.quad	.LVL98
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	.LVL100
	.quad	.LFE136
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU156
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU175
	.uleb128 .LVU176
	.uleb128 .LVU177
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU180
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU271
	.uleb128 .LVU279
	.uleb128 .LVU316
	.uleb128 .LVU318
	.uleb128 0
.LLST14:
	.quad	.LVL78
	.quad	.LVL85
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL85
	.quad	.LVL88
	.value	0x1
	.byte	0x53
	.quad	.LVL89
	.quad	.LVL90
	.value	0x1
	.byte	0x53
	.quad	.LVL91
	.quad	.LVL92
	.value	0x1
	.byte	0x53
	.quad	.LVL93
	.quad	.LVL117
	.value	0x1
	.byte	0x53
	.quad	.LVL117
	.quad	.LVL118
	.value	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.value	0x400
	.byte	0x21
	.byte	0x9f
	.quad	.LVL118
	.quad	.LVL119-1
	.value	0x1
	.byte	0x54
	.quad	.LVL119-1
	.quad	.LVL120
	.value	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.value	0x400
	.byte	0x21
	.byte	0x9f
	.quad	.LVL125
	.quad	.LVL142
	.value	0x1
	.byte	0x53
	.quad	.LVL143
	.quad	.LFE136
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU157
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 .LVU278
	.uleb128 .LVU279
	.uleb128 .LVU283
	.uleb128 .LVU285
	.uleb128 .LVU323
	.uleb128 .LVU326
	.uleb128 0
.LLST15:
	.quad	.LVL78
	.quad	.LVL85
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL85
	.quad	.LVL100
	.value	0x1
	.byte	0x5e
	.quad	.LVL100
	.quad	.LVL101
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL101
	.quad	.LVL102
	.value	0x1
	.byte	0x5e
	.quad	.LVL102
	.quad	.LVL103
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL103
	.quad	.LVL124
	.value	0x1
	.byte	0x5e
	.quad	.LVL125
	.quad	.LVL126
	.value	0x1
	.byte	0x5e
	.quad	.LVL127
	.quad	.LVL151
	.value	0x1
	.byte	0x5e
	.quad	.LVL153
	.quad	.LFE136
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU271
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 .LVU274
.LLST16:
	.quad	.LVL120
	.quad	.LVL121-1
	.value	0x1
	.byte	0x50
	.quad	.LVL121-1
	.quad	.LVL122
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU171
	.uleb128 .LVU173
	.uleb128 .LVU219
	.uleb128 .LVU223
	.uleb128 .LVU225
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU232
	.uleb128 .LVU279
	.uleb128 .LVU285
	.uleb128 .LVU323
	.uleb128 .LVU325
.LLST17:
	.quad	.LVL86
	.quad	.LVL87
	.value	0x1
	.byte	0x50
	.quad	.LVL104
	.quad	.LVL105
	.value	0x1
	.byte	0x50
	.quad	.LVL107
	.quad	.LVL108-1
	.value	0x1
	.byte	0x50
	.quad	.LVL108
	.quad	.LVL110
	.value	0x1
	.byte	0x50
	.quad	.LVL125
	.quad	.LVL127
	.value	0x1
	.byte	0x50
	.quad	.LVL151
	.quad	.LVL152-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU193
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 .LVU198
.LLST18:
	.quad	.LVL97
	.quad	.LVL99-1
	.value	0x1
	.byte	0x50
	.quad	.LVL99-1
	.quad	.LVL100
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU242
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU246
.LLST19:
	.quad	.LVL111
	.quad	.LVL112
	.value	0x4
	.byte	0x91
	.sleb128 -224
	.byte	0x9f
	.quad	.LVL112
	.quad	.LVL113-1
	.value	0x1
	.byte	0x51
	.quad	.LVL113-1
	.quad	.LVL113
	.value	0x4
	.byte	0x91
	.sleb128 -224
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU242
	.uleb128 .LVU246
.LLST20:
	.quad	.LVL111
	.quad	.LVL113
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU288
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU294
	.uleb128 .LVU312
	.uleb128 .LVU315
	.uleb128 .LVU315
	.uleb128 .LVU316
	.uleb128 .LVU320
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 .LVU323
.LLST21:
	.quad	.LVL129
	.quad	.LVL130
	.value	0x1
	.byte	0x50
	.quad	.LVL130
	.quad	.LVL131
	.value	0x1
	.byte	0x5d
	.quad	.LVL140
	.quad	.LVL141-1
	.value	0x1
	.byte	0x50
	.quad	.LVL141-1
	.quad	.LVL142
	.value	0x1
	.byte	0x5d
	.quad	.LVL148
	.quad	.LVL149
	.value	0x1
	.byte	0x50
	.quad	.LVL149
	.quad	.LVL151
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
	.uleb128 .LVU56
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU87
	.uleb128 .LVU108
	.uleb128 .LVU136
.LLST3:
	.quad	.LVL40
	.quad	.LVL43
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	.LVL43
	.quad	.LVL51
	.value	0x1
	.byte	0x5c
	.quad	.LVL60
	.quad	.LVL72
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU57
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU74
	.uleb128 .LVU108
	.uleb128 .LVU110
.LLST4:
	.quad	.LVL40
	.quad	.LVL41
	.value	0x1
	.byte	0x57
	.quad	.LVL41
	.quad	.LVL44-1
	.value	0x1
	.byte	0x50
	.quad	.LVL60
	.quad	.LVL61-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU83
	.uleb128 .LVU86
	.uleb128 .LVU119
	.uleb128 .LVU122
.LLST5:
	.quad	.LVL49
	.quad	.LVL50-1
	.value	0x1
	.byte	0x50
	.quad	.LVL66
	.quad	.LVL67-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU76
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU80
	.uleb128 .LVU112
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU116
.LLST6:
	.quad	.LVL45
	.quad	.LVL46
	.value	0x1
	.byte	0x50
	.quad	.LVL46
	.quad	.LVL47-1
	.value	0x1
	.byte	0x54
	.quad	.LVL62
	.quad	.LVL63
	.value	0x1
	.byte	0x50
	.quad	.LVL63
	.quad	.LVL64-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU91
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU97
	.uleb128 .LVU127
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU133
.LLST7:
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x50
	.quad	.LVL54
	.quad	.LVL55-1
	.value	0x1
	.byte	0x54
	.quad	.LVL69
	.quad	.LVL70
	.value	0x1
	.byte	0x50
	.quad	.LVL70
	.quad	.LVL71-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU102
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU106
.LLST8:
	.quad	.LVL57
	.quad	.LVL58
	.value	0x1
	.byte	0x50
	.quad	.LVL58
	.quad	.LVL59-1
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
	.uleb128 .LVU46
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU50
.LLST10:
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
	.quad	.LBB45
	.quad	.LBE45
	.quad	.LBB48
	.quad	.LBE48
	.quad	0
	.quad	0
	.quad	.LBB49
	.quad	.LBE49
	.quad	.LBB84
	.quad	.LBE84
	.quad	0
	.quad	0
	.quad	.LBB51
	.quad	.LBE51
	.quad	.LBB56
	.quad	.LBE56
	.quad	.LBB70
	.quad	.LBE70
	.quad	.LBB71
	.quad	.LBE71
	.quad	0
	.quad	0
	.quad	.LBB57
	.quad	.LBE57
	.quad	.LBB64
	.quad	.LBE64
	.quad	.LBB65
	.quad	.LBE65
	.quad	.LBB72
	.quad	.LBE72
	.quad	.LBB73
	.quad	.LBE73
	.quad	.LBB74
	.quad	.LBE74
	.quad	0
	.quad	0
	.quad	.LBB66
	.quad	.LBE66
	.quad	.LBB69
	.quad	.LBE69
	.quad	0
	.quad	0
	.quad	.LBB76
	.quad	.LBE76
	.quad	.LBB79
	.quad	.LBE79
	.quad	0
	.quad	0
	.quad	.LBB80
	.quad	.LBE80
	.quad	.LBB83
	.quad	.LBE83
	.quad	0
	.quad	0
	.quad	.LBB87
	.quad	.LBE87
	.quad	.LBB96
	.quad	.LBE96
	.quad	0
	.quad	0
	.quad	.LBB91
	.quad	.LBE91
	.quad	.LBB95
	.quad	.LBE95
	.quad	.LBB97
	.quad	.LBE97
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
.LASF182:
	.string	"printf"
.LASF14:
	.string	"__off_t"
.LASF10:
	.string	"__gid_t"
.LASF145:
	.string	"group_name"
.LASF22:
	.string	"_IO_read_ptr"
.LASF127:
	.string	"locale_quoting_style"
.LASF34:
	.string	"_chain"
.LASF103:
	.string	"st_ctim"
.LASF40:
	.string	"_shortbuf"
.LASF116:
	.string	"GETOPT_VERSION_CHAR"
.LASF162:
	.string	"preserve_root"
.LASF133:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF114:
	.string	"LOG10_TIMESPEC_HZ"
.LASF196:
	.string	"set_program_name"
.LASF156:
	.string	"PRESERVE_ROOT"
.LASF179:
	.string	"__path"
.LASF120:
	.string	"shell_quoting_style"
.LASF115:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF195:
	.string	"get_root_dev_ino"
.LASF73:
	.string	"long long unsigned int"
.LASF167:
	.string	"chopt"
.LASF43:
	.string	"_codecvt"
.LASF200:
	.string	"atexit"
.LASF89:
	.string	"stat"
.LASF61:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF131:
	.string	"quoting_style_vals"
.LASF175:
	.string	"program"
.LASF126:
	.string	"escape_quoting_style"
.LASF12:
	.string	"__mode_t"
.LASF119:
	.string	"literal_quoting_style"
.LASF35:
	.string	"_fileno"
.LASF11:
	.string	"__ino_t"
.LASF141:
	.string	"root_dev_ino"
.LASF84:
	.string	"__timezone"
.LASF18:
	.string	"__blkcnt_t"
.LASF106:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF72:
	.string	"_gl_cxxalias_dummy"
.LASF159:
	.string	"long_options"
.LASF21:
	.string	"_flags"
.LASF140:
	.string	"recurse"
.LASF29:
	.string	"_IO_buf_end"
.LASF38:
	.string	"_cur_column"
.LASF110:
	.string	"program_invocation_short_name"
.LASF124:
	.string	"c_quoting_style"
.LASF180:
	.string	"__statbuf"
.LASF52:
	.string	"_IO_codecvt"
.LASF155:
	.string	"NO_PRESERVE_ROOT"
.LASF60:
	.string	"_sys_errlist"
.LASF208:
	.string	"__printf_chk"
.LASF109:
	.string	"program_invocation_name"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF113:
	.string	"TIMESPEC_HZ"
.LASF96:
	.string	"__pad0"
.LASF123:
	.string	"shell_escape_always_quoting_style"
.LASF87:
	.string	"timezone"
.LASF185:
	.string	"quote"
.LASF100:
	.string	"st_blocks"
.LASF118:
	.string	"program_name"
.LASF94:
	.string	"st_uid"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF211:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF183:
	.string	"fprintf"
.LASF163:
	.string	"required_uid"
.LASF184:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF142:
	.string	"affect_symlink_referent"
.LASF198:
	.string	"bindtextdomain"
.LASF26:
	.string	"_IO_write_ptr"
.LASF79:
	.string	"name"
.LASF57:
	.string	"sys_nerr"
.LASF66:
	.string	"uid_t"
.LASF88:
	.string	"getdate_err"
.LASF168:
	.string	"optc"
.LASF3:
	.string	"short unsigned int"
.LASF149:
	.string	"error_one_per_line"
.LASF111:
	.string	"Version"
.LASF203:
	.string	"version_etc"
.LASF30:
	.string	"_IO_save_base"
.LASF205:
	.string	"chown_files"
.LASF189:
	.string	"quotearg_style"
.LASF201:
	.string	"chopt_init"
.LASF108:
	.string	"environ"
.LASF177:
	.string	"map_prog"
.LASF41:
	.string	"_lock"
.LASF36:
	.string	"_flags2"
.LASF48:
	.string	"_mode"
.LASF197:
	.string	"setlocale"
.LASF55:
	.string	"stdout"
.LASF187:
	.string	"parse_user_spec"
.LASF98:
	.string	"st_size"
.LASF206:
	.string	"chopt_free"
.LASF117:
	.string	"version_etc_copyright"
.LASF44:
	.string	"_wide_data"
.LASF93:
	.string	"st_mode"
.LASF23:
	.string	"_IO_read_end"
.LASF74:
	.string	"optarg"
.LASF71:
	.string	"tv_nsec"
.LASF132:
	.string	"dev_ino"
.LASF62:
	.string	"long double"
.LASF8:
	.string	"__dev_t"
.LASF75:
	.string	"optind"
.LASF19:
	.string	"__syscall_slong_t"
.LASF27:
	.string	"_IO_write_end"
.LASF134:
	.string	"Verbosity"
.LASF65:
	.string	"gid_t"
.LASF214:
	.string	"_IO_lock_t"
.LASF68:
	.string	"_IO_FILE"
.LASF147:
	.string	"error_print_progname"
.LASF17:
	.string	"__blksize_t"
.LASF64:
	.string	"dev_t"
.LASF107:
	.string	"__environ"
.LASF67:
	.string	"time_t"
.LASF139:
	.string	"verbosity"
.LASF137:
	.string	"V_off"
.LASF164:
	.string	"required_gid"
.LASF186:
	.string	"error"
.LASF58:
	.string	"sys_errlist"
.LASF143:
	.string	"force_silent"
.LASF33:
	.string	"_markers"
.LASF136:
	.string	"V_changes_only"
.LASF192:
	.string	"uid_to_name"
.LASF212:
	.string	"src/chown.c"
.LASF165:
	.string	"bit_flags"
.LASF104:
	.string	"__glibc_reserved"
.LASF92:
	.string	"st_nlink"
.LASF125:
	.string	"c_maybe_quoting_style"
.LASF146:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF176:
	.string	"node"
.LASF91:
	.string	"st_ino"
.LASF209:
	.string	"strncmp"
.LASF170:
	.string	"dev_ino_buf"
.LASF5:
	.string	"short int"
.LASF78:
	.string	"option"
.LASF99:
	.string	"st_blksize"
.LASF152:
	.string	"quote_quoting_options"
.LASF81:
	.string	"flag"
.LASF59:
	.string	"_sys_nerr"
.LASF69:
	.string	"timespec"
.LASF85:
	.string	"tzname"
.LASF50:
	.string	"FILE"
.LASF112:
	.string	"exit_failure"
.LASF204:
	.string	"exit"
.LASF207:
	.string	"__fprintf_chk"
.LASF216:
	.string	"__stack_chk_fail"
.LASF122:
	.string	"shell_escape_quoting_style"
.LASF169:
	.string	"ref_stats"
.LASF130:
	.string	"quoting_style_args"
.LASF188:
	.string	"dcgettext"
.LASF77:
	.string	"optopt"
.LASF86:
	.string	"daylight"
.LASF97:
	.string	"st_rdev"
.LASF157:
	.string	"REFERENCE_FILE_OPTION"
.LASF20:
	.string	"char"
.LASF121:
	.string	"shell_always_quoting_style"
.LASF153:
	.string	"DEREFERENCE_OPTION"
.LASF70:
	.string	"tv_sec"
.LASF150:
	.string	"I_RING_SIZE"
.LASF135:
	.string	"V_high"
.LASF166:
	.string	"dereference"
.LASF128:
	.string	"clocale_quoting_style"
.LASF190:
	.string	"__errno_location"
.LASF76:
	.string	"opterr"
.LASF194:
	.string	"xstrdup"
.LASF9:
	.string	"__uid_t"
.LASF15:
	.string	"__off64_t"
.LASF151:
	.string	"quoting_options"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF105:
	.string	"_sys_siglist"
.LASF181:
	.string	"__fmt"
.LASF174:
	.string	"infomap"
.LASF193:
	.string	"gid_to_name"
.LASF191:
	.string	"__xstat"
.LASF95:
	.string	"st_gid"
.LASF80:
	.string	"has_arg"
.LASF172:
	.string	"usage"
.LASF47:
	.string	"__pad5"
.LASF16:
	.string	"__time_t"
.LASF49:
	.string	"_unused2"
.LASF56:
	.string	"stderr"
.LASF101:
	.string	"st_atim"
.LASF161:
	.string	"argv"
.LASF199:
	.string	"textdomain"
.LASF83:
	.string	"__daylight"
.LASF138:
	.string	"Chown_option"
.LASF173:
	.string	"status"
.LASF213:
	.string	"/root/coreutils"
.LASF90:
	.string	"st_dev"
.LASF46:
	.string	"_freeres_buf"
.LASF31:
	.string	"_IO_backup_base"
.LASF129:
	.string	"custom_quoting_style"
.LASF102:
	.string	"st_mtim"
.LASF148:
	.string	"error_message_count"
.LASF178:
	.string	"lc_messages"
.LASF39:
	.string	"_vtable_offset"
.LASF160:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF53:
	.string	"_IO_wide_data"
.LASF202:
	.string	"getopt_long"
.LASF158:
	.string	"reference_file"
.LASF210:
	.string	"fputs_unlocked"
.LASF82:
	.string	"__tzname"
.LASF171:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF215:
	.string	"emit_ancillary_info"
.LASF13:
	.string	"__nlink_t"
.LASF154:
	.string	"FROM_OPTION"
.LASF144:
	.string	"user_name"
.LASF63:
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
