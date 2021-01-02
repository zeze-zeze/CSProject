	.file	"runcon.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.text
	.type	emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
.LFB36:
	.file 1 "src/system.h"
	.loc 1 589 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 590 3
	movq	stdout(%rip), %rbx
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 593 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	emit_mandatory_arg_note, .-emit_mandatory_arg_note
	.section	.rodata
.LC1:
	.string	"["
.LC2:
	.string	"test invocation"
.LC3:
	.string	"coreutils"
.LC4:
	.string	"Multi-call invocation"
.LC5:
	.string	"sha224sum"
.LC6:
	.string	"sha2 utilities"
.LC7:
	.string	"sha256sum"
.LC8:
	.string	"sha384sum"
.LC9:
	.string	"sha512sum"
.LC10:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC11:
	.string	"https://www.gnu.org/software/coreutils/"
.LC12:
	.string	"GNU coreutils"
.LC13:
	.string	"en_"
	.align 8
.LC14:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC15:
	.string	"Full documentation <%s%s>\n"
.LC16:
	.string	" invocation"
.LC17:
	.string	""
	.align 8
.LC18:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.type	emit_ancillary_info, @function
emit_ancillary_info:
.LFB40:
	.loc 1 635 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	.loc 1 635 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 636 67
	leaq	.LC1(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	.loc 1 646 15
	movq	-184(%rbp), %rax
	movq	%rax, -168(%rbp)
	.loc 1 647 25
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	.loc 1 649 9
	jmp	.L3
.L5:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L3:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L4
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L5
.L4:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L6
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L6:
	.loc 1 655 11
	leaq	.LC10(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC11(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 659 29
	movl	$0, %esi
	movl	$5, %edi
	call	setlocale@PLT
	movq	%rax, -152(%rbp)
	.loc 1 660 6
	cmpq	$0, -152(%rbp)
	je	.L7
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L7
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L7:
	.loc 1 669 11
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L8
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L9
.L8:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L9:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC18(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 671 3 discriminator 4
	movq	-168(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 673 1 discriminator 4
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L10
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L10:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.section	.rodata
.LC19:
	.string	"role"
.LC20:
	.string	"type"
.LC21:
	.string	"user"
.LC22:
	.string	"range"
.LC23:
	.string	"compute"
.LC24:
	.string	"help"
.LC25:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 256
long_options:
	.quad	.LC19
	.long	1
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC25
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
	.section	.rodata
	.align 8
.LC26:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC27:
	.string	"Usage: %s CONTEXT COMMAND [args]\n  or:  %s [ -c ] [-u USER] [-r ROLE] [-t TYPE] [-l RANGE] COMMAND [args]\n"
	.align 8
.LC28:
	.string	"Run a program in a different SELinux security context.\nWith neither CONTEXT nor COMMAND, print the current security context.\n"
	.align 8
.LC29:
	.ascii	"  CONTEXT"
	.string	"            Complete security context\n  -c, --compute      compute process transition context before modifying\n  -t, --type=TYPE    type (for same role as parent)\n  -u, --user=USER    user identity\n  -r, --role=ROLE    role\n  -l, --range=RANGE  levelrange\n"
	.align 8
.LC30:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC31:
	.string	"      --version  output version information and exit\n"
.LC32:
	.string	"runcon"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/runcon.c"
	.loc 2 73 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -20(%rbp)
	.loc 2 74 6
	cmpl	$0, -20(%rbp)
	je	.L12
	.loc 2 75 5
	movq	program_name(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L13
.L12:
	.loc 2 78 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 78 15
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	.loc 2 78 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 82 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 87 7
	call	emit_mandatory_arg_note
	.loc 2 89 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 97 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 98 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 99 7
	leaq	.LC32(%rip), %rdi
	call	emit_ancillary_info
.L13:
	.loc 2 101 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC33:
	.string	"/usr/local/share/locale"
.LC34:
	.string	"+r:t:u:l:c"
.LC35:
	.string	"multiple roles"
.LC36:
	.string	"multiple types"
.LC37:
	.string	"multiple users"
.LC38:
	.string	"multiple levelranges"
.LC39:
	.string	"Russell Coker"
.LC40:
	.string	"failed to get current context"
	.align 8
.LC41:
	.string	"you must specify -c, -t, -u, -l, -r, or context"
.LC42:
	.string	"no command specified"
	.align 8
.LC43:
	.string	"%s may be used only on a SELinux kernel"
	.align 8
.LC44:
	.string	"failed to create security context: %s"
	.align 8
.LC45:
	.string	"failed to get security context of %s"
.LC46:
	.string	"process"
	.align 8
.LC47:
	.string	"failed to compute a new context"
.LC48:
	.string	"failed to set new user: %s"
.LC49:
	.string	"failed to set new type: %s"
.LC50:
	.string	"failed to set new range: %s"
.LC51:
	.string	"failed to set new role: %s"
.LC52:
	.string	"invalid context: %s"
	.align 8
.LC53:
	.string	"unable to set security context %s"
.LC54:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB47:
	.loc 2 106 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	.loc 2 106 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 107 9
	movq	$0, -72(%rbp)
	.loc 2 108 9
	movq	$0, -64(%rbp)
	.loc 2 109 9
	movq	$0, -56(%rbp)
	.loc 2 110 9
	movq	$0, -48(%rbp)
	.loc 2 111 9
	movq	$0, -40(%rbp)
	.loc 2 112 9
	movq	$0, -96(%rbp)
	.loc 2 113 9
	movq	$0, -88(%rbp)
	.loc 2 114 9
	movq	$0, -80(%rbp)
	.loc 2 115 8
	movb	$0, -109(%rbp)
	.loc 2 120 3
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 121 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 122 3
	leaq	.LC33(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 123 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 125 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
.L33:
.LBB2:
	.loc 2 129 11
	movl	$0, -108(%rbp)
	.loc 2 130 15
	leaq	-108(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movl	-116(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -104(%rbp)
	.loc 2 132 10
	cmpl	$-1, -104(%rbp)
	jne	.L15
.LBE2:
	.loc 2 168 21
	movl	optind(%rip), %eax
	.loc 2 168 6
	cmpl	%eax, -116(%rbp)
	je	.L16
	jmp	.L57
.L15:
.LBB7:
	.loc 2 134 7
	cmpl	$117, -104(%rbp)
	jg	.L18
	cmpl	$99, -104(%rbp)
	jge	.L19
	cmpl	$-131, -104(%rbp)
	je	.L20
	cmpl	$-130, -104(%rbp)
	je	.L21
	jmp	.L18
.L19:
	movl	-104(%rbp), %eax
	subl	$99, %eax
	cmpl	$18, %eax
	ja	.L18
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L23(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L23(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L23:
	.long	.L27-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L26-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L25-.L23
	.long	.L18-.L23
	.long	.L24-.L23
	.long	.L22-.L23
	.text
.L25:
	.loc 2 137 14
	cmpq	$0, -72(%rbp)
	je	.L28
.LBB3:
	.loc 2 138 13
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L28:
.LBE3:
	.loc 2 139 16
	movq	optarg(%rip), %rax
	movq	%rax, -72(%rbp)
	.loc 2 140 11
	jmp	.L29
.L24:
	.loc 2 142 14
	cmpq	$0, -48(%rbp)
	je	.L30
.LBB4:
	.loc 2 143 13
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L30:
.LBE4:
	.loc 2 144 16
	movq	optarg(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 145 11
	jmp	.L29
.L22:
	.loc 2 147 14
	cmpq	$0, -56(%rbp)
	je	.L31
.LBB5:
	.loc 2 148 13
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L31:
.LBE5:
	.loc 2 149 16
	movq	optarg(%rip), %rax
	movq	%rax, -56(%rbp)
	.loc 2 150 11
	jmp	.L29
.L26:
	.loc 2 152 14
	cmpq	$0, -64(%rbp)
	je	.L32
.LBB6:
	.loc 2 153 13
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L32:
.LBE6:
	.loc 2 154 17
	movq	optarg(%rip), %rax
	movq	%rax, -64(%rbp)
	.loc 2 155 11
	jmp	.L29
.L27:
	.loc 2 157 25
	movb	$1, -109(%rbp)
	.loc 2 158 11
	jmp	.L29
.L21:
	.loc 2 160 9
	movl	$0, %edi
	call	usage
.L20:
	.loc 2 161 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC39(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L18:
	.loc 2 163 11
	movl	$1, %edi
	call	usage
.L29:
.LBE7:
	.loc 2 128 5
	jmp	.L33
.L16:
	.loc 2 170 11
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	getcon@PLT
	.loc 2 170 10
	testl	%eax, %eax
	jns	.L34
.LBB8:
	.loc 2 171 9
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L34:
.LBE8:
	.loc 2 172 7
	movq	stdout(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 173 7
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc_unlocked@PLT
	.loc 2 174 14
	movl	$0, %eax
	jmp	.L55
.L57:
	.loc 2 177 6
	cmpq	$0, -56(%rbp)
	jne	.L36
	.loc 2 177 14 discriminator 1
	cmpq	$0, -72(%rbp)
	jne	.L36
	.loc 2 177 22 discriminator 2
	cmpq	$0, -48(%rbp)
	jne	.L36
	.loc 2 177 30 discriminator 3
	cmpq	$0, -64(%rbp)
	jne	.L36
	.loc 2 177 39 discriminator 4
	movzbl	-109(%rbp), %eax
	xorl	$1, %eax
	.loc 2 177 7 discriminator 4
	testb	%al, %al
	je	.L36
	.loc 2 179 18
	movl	optind(%rip), %eax
	.loc 2 179 10
	cmpl	%eax, -116(%rbp)
	jg	.L37
	.loc 2 181 24
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	.loc 2 181 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 182 11
	movl	$1, %edi
	call	usage
.L37:
	.loc 2 184 28
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 184 21
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 184 15
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.L36:
	.loc 2 187 14
	movl	optind(%rip), %eax
	.loc 2 187 6
	cmpl	%eax, -116(%rbp)
	jg	.L38
	.loc 2 189 20
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	.loc 2 189 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 190 7
	movl	$1, %edi
	call	usage
.L38:
	.loc 2 193 7
	call	is_selinux_enabled@PLT
	.loc 2 193 6
	cmpl	$1, %eax
	je	.L39
.LBB9:
	.loc 2 194 5
	movq	program_name(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L39:
.LBE9:
	.loc 2 197 6
	cmpq	$0, -40(%rbp)
	je	.L40
	.loc 2 199 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	context_new@PLT
	movq	%rax, -32(%rbp)
	.loc 2 200 10
	cmpq	$0, -32(%rbp)
	jne	.L41
.LBB10:
	.loc 2 201 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L40:
.LBE10:
	.loc 2 206 11
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	getcon@PLT
	.loc 2 206 10
	testl	%eax, %eax
	jns	.L42
.LBB11:
	.loc 2 207 9
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L42:
.LBE11:
	.loc 2 210 10
	cmpb	$0, -109(%rbp)
	je	.L43
	.loc 2 213 31
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 213 15
	movq	(%rax), %rax
	leaq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_getfilecon@PLT
	.loc 2 213 14
	cmpl	$-1, %eax
	jne	.L44
.LBB12:
	.loc 2 214 13
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L44:
.LBE12:
	.loc 2 219 40
	leaq	.LC46(%rip), %rdi
	call	string_to_security_class@PLT
	.loc 2 218 15
	movzwl	%ax, %edx
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movq	%rax, %rdi
	call	security_compute_create@PLT
	.loc 2 218 14
	testl	%eax, %eax
	je	.L45
.LBB13:
	.loc 2 221 13
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L45:
.LBE13:
	.loc 2 223 11
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 2 224 11
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 2 227 23
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
.L43:
	.loc 2 230 13
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	context_new@PLT
	movq	%rax, -32(%rbp)
	.loc 2 231 10
	cmpq	$0, -32(%rbp)
	jne	.L46
.LBB14:
	.loc 2 232 9
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L46:
.LBE14:
	.loc 2 234 10
	cmpq	$0, -56(%rbp)
	je	.L47
	.loc 2 234 19 discriminator 1
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	context_user_set@PLT
	.loc 2 234 16 discriminator 1
	testl	%eax, %eax
	je	.L47
.LBB15:
	.loc 2 235 9
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L47:
.LBE15:
	.loc 2 237 10
	cmpq	$0, -48(%rbp)
	je	.L48
	.loc 2 237 19 discriminator 1
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	context_type_set@PLT
	.loc 2 237 16 discriminator 1
	testl	%eax, %eax
	je	.L48
.LBB16:
	.loc 2 238 9
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L48:
.LBE16:
	.loc 2 240 10
	cmpq	$0, -64(%rbp)
	je	.L49
	.loc 2 240 20 discriminator 1
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	context_range_set@PLT
	.loc 2 240 17 discriminator 1
	testl	%eax, %eax
	je	.L49
.LBB17:
	.loc 2 241 9
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L49:
.LBE17:
	.loc 2 243 10
	cmpq	$0, -72(%rbp)
	je	.L41
	.loc 2 243 19 discriminator 1
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	context_role_set@PLT
	.loc 2 243 16 discriminator 1
	testl	%eax, %eax
	je	.L41
.LBB18:
	.loc 2 244 9
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L41:
.LBE18:
	.loc 2 248 31
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	context_str@PLT
	.loc 2 248 7
	movq	%rax, %rdi
	call	security_check_context@PLT
	.loc 2 248 6
	testl	%eax, %eax
	jns	.L50
.LBB19:
	.loc 2 249 5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	context_str@PLT
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L50:
.LBE19:
	.loc 2 252 19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	context_str@PLT
	.loc 2 252 7
	movq	%rax, %rdi
	call	setexeccon@PLT
	.loc 2 252 6
	testl	%eax, %eax
	je	.L51
.LBB20:
	.loc 2 253 5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	context_str@PLT
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L51:
.LBE20:
	.loc 2 255 19
	movq	-96(%rbp), %rax
	.loc 2 255 6
	testq	%rax, %rax
	je	.L52
	.loc 2 256 5
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
.L52:
	.loc 2 258 30
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 258 15
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-128(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 258 3
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execvp@PLT
	.loc 2 260 21
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 260 51
	cmpl	$2, %eax
	jne	.L53
	.loc 2 260 51 is_stmt 0 discriminator 1
	movl	$127, %eax
	jmp	.L54
.L53:
	.loc 2 260 51 discriminator 2
	movl	$126, %eax
.L54:
	.loc 2 260 7 is_stmt 1 discriminator 4
	movl	%eax, -100(%rbp)
	.loc 2 261 37 discriminator 4
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 261 3 discriminator 4
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 261 13 discriminator 4
	call	__errno_location@PLT
	.loc 2 261 3 discriminator 4
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC54(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 262 10 discriminator 4
	movl	-100(%rbp), %eax
.L55:
	.loc 2 263 1 discriminator 2
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L56
	.loc 2 263 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L56:
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 13 "/usr/include/selinux/context.h"
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
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x99b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF134
	.byte	0xc
	.long	.LASF135
	.long	.LASF136
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x39
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
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xa2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.long	0xa2
	.uleb128 0x9
	.long	.LASF61
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x235
	.uleb128 0xa
	.long	.LASF12
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x9c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x9c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x9c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x9c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x9c
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x9c
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x9c
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x9c
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x9c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x9c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x9c
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x24e
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x254
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x78
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x25a
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x26a
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x84
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x275
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x280
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x254
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x286
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xae
	.uleb128 0xb
	.long	.LASF137
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x7
	.byte	0x8
	.long	0x249
	.uleb128 0x7
	.byte	0x8
	.long	0xae
	.uleb128 0xd
	.long	0xa2
	.long	0x26a
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x241
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x270
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x27b
	.uleb128 0xd
	.long	0xa2
	.long	0x296
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa9
	.uleb128 0x8
	.long	0x296
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2ad
	.uleb128 0x7
	.byte	0x8
	.long	0x235
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2ad
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2ad
	.uleb128 0xf
	.long	.LASF48
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x29c
	.long	0x2e2
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2d7
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2e2
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2e2
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
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0x90
	.uleb128 0x11
	.long	.LASF55
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF56
	.uleb128 0xf
	.long	.LASF57
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF58
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF59
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF62
	.byte	0x20
	.byte	0xc
	.byte	0x32
	.byte	0x8
	.long	0x3ab
	.uleb128 0xa
	.long	.LASF63
	.byte	0xc
	.byte	0x34
	.byte	0xf
	.long	0x296
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x38
	.byte	0x8
	.long	0x3b0
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xc
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x369
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x7
	.byte	0x8
	.long	0x9c
	.uleb128 0x13
	.byte	0x8
	.byte	0xd
	.byte	0xc
	.byte	0xa
	.long	0x3d3
	.uleb128 0x12
	.string	"ptr"
	.byte	0xd
	.byte	0xd
	.byte	0x9
	.long	0x47
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0xd
	.byte	0xe
	.byte	0x4
	.long	0x3bc
	.uleb128 0x2
	.long	.LASF67
	.byte	0xd
	.byte	0x10
	.byte	0x17
	.long	0x3eb
	.uleb128 0x7
	.byte	0x8
	.long	0x3d3
	.uleb128 0xd
	.long	0x9c
	.long	0x401
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF68
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x3f1
	.uleb128 0xf
	.long	.LASF69
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF70
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF71
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x3f1
	.uleb128 0xf
	.long	.LASF72
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF74
	.byte	0xe
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x8
	.long	0x456
	.uleb128 0xd
	.long	0x29c
	.long	0x46d
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x45d
	.uleb128 0x11
	.long	.LASF75
	.byte	0xf
	.value	0x11e
	.byte	0x1a
	.long	0x46d
	.uleb128 0x11
	.long	.LASF76
	.byte	0xf
	.value	0x11f
	.byte	0x1a
	.long	0x46d
	.uleb128 0x11
	.long	.LASF77
	.byte	0x10
	.value	0x21f
	.byte	0xf
	.long	0x3b6
	.uleb128 0x11
	.long	.LASF78
	.byte	0x10
	.value	0x221
	.byte	0xf
	.long	0x3b6
	.uleb128 0xf
	.long	.LASF79
	.byte	0x11
	.byte	0x2d
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF80
	.byte	0x11
	.byte	0x2e
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF81
	.byte	0x12
	.byte	0x1
	.byte	0x14
	.long	0x296
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x4f1
	.uleb128 0x16
	.long	.LASF82
	.byte	0x7c
	.uleb128 0x16
	.long	.LASF83
	.byte	0x7d
	.uleb128 0x16
	.long	.LASF84
	.byte	0x7e
	.uleb128 0x16
	.long	.LASF85
	.byte	0x7f
	.byte	0
	.uleb128 0xf
	.long	.LASF86
	.byte	0x13
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x29
	.byte	0x6
	.long	0x515
	.uleb128 0x17
	.long	.LASF87
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x52a
	.uleb128 0x16
	.long	.LASF88
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x548
	.uleb128 0x19
	.long	.LASF89
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF90
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xa9
	.long	0x553
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x548
	.uleb128 0xf
	.long	.LASF91
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x553
	.uleb128 0xf
	.long	.LASF92
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x296
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x5c5
	.uleb128 0x16
	.long	.LASF93
	.byte	0
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.uleb128 0x16
	.long	.LASF95
	.byte	0x2
	.uleb128 0x16
	.long	.LASF96
	.byte	0x3
	.uleb128 0x16
	.long	.LASF97
	.byte	0x4
	.uleb128 0x16
	.long	.LASF98
	.byte	0x5
	.uleb128 0x16
	.long	.LASF99
	.byte	0x6
	.uleb128 0x16
	.long	.LASF100
	.byte	0x7
	.uleb128 0x16
	.long	.LASF101
	.byte	0x8
	.uleb128 0x16
	.long	.LASF102
	.byte	0x9
	.uleb128 0x16
	.long	.LASF103
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x570
	.uleb128 0x11
	.long	.LASF104
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2e2
	.uleb128 0xd
	.long	0x5c5
	.long	0x5e2
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5d7
	.uleb128 0x11
	.long	.LASF105
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x5e2
	.uleb128 0xf
	.long	.LASF106
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x457
	.uleb128 0xf
	.long	.LASF107
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF108
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF109
	.uleb128 0xf
	.long	.LASF110
	.byte	0x19
	.byte	0x19
	.byte	0x1f
	.long	0x618
	.uleb128 0xd
	.long	0x3ab
	.long	0x639
	.uleb128 0xe
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x629
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x2
	.byte	0x3b
	.byte	0x1c
	.long	0x639
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1c
	.long	.LASF126
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x65
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x88e
	.uleb128 0x1d
	.long	.LASF111
	.byte	0x2
	.byte	0x69
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1d
	.long	.LASF112
	.byte	0x2
	.byte	0x69
	.byte	0x18
	.long	0x3b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x2
	.byte	0x6b
	.byte	0x9
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x2
	.byte	0x6c
	.byte	0x9
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x2
	.byte	0x6d
	.byte	0x9
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x2
	.byte	0x6e
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF118
	.byte	0x2
	.byte	0x6f
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF119
	.byte	0x2
	.byte	0x70
	.byte	0x9
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x2
	.byte	0x71
	.byte	0x9
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x2
	.byte	0x72
	.byte	0x9
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x2
	.byte	0x73
	.byte	0x8
	.long	0x88e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -125
	.uleb128 0x1e
	.string	"con"
	.byte	0x2
	.byte	0x75
	.byte	0xd
	.long	0x3df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF123
	.byte	0x2
	.value	0x104
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x20
	.long	.Ldebug_ranges0+0
	.long	0x7b0
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x2
	.byte	0x81
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.byte	0x82
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x21
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x21
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x21
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x21
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x21
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x21
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x21
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x21
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x21
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x21
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x21
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF125
	.uleb128 0x22
	.long	.LASF127
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c3
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x2
	.byte	0x48
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x23
	.long	.LASF139
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x968
	.uleb128 0x24
	.long	.LASF129
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x25
	.long	.LASF130
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x91e
	.uleb128 0x26
	.long	.LASF129
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x296
	.byte	0
	.uleb128 0x26
	.long	.LASF131
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x296
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x8f3
	.uleb128 0x1f
	.long	.LASF130
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x978
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF131
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1f
	.long	.LASF132
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x97d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	.LASF133
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x91e
	.long	0x978
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x968
	.uleb128 0x7
	.byte	0x8
	.long	0x91e
	.uleb128 0x27
	.long	.LASF140
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x2116
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF86:
	.string	"exit_failure"
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF101:
	.string	"locale_quoting_style"
.LASF25:
	.string	"_chain"
.LASF85:
	.string	"EXIT_ENOENT"
.LASF90:
	.string	"GETOPT_VERSION_CHAR"
.LASF138:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF88:
	.string	"LOG10_TIMESPEC_HZ"
.LASF31:
	.string	"_shortbuf"
.LASF119:
	.string	"cur_context"
.LASF94:
	.string	"shell_quoting_style"
.LASF117:
	.string	"type"
.LASF89:
	.string	"GETOPT_HELP_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF67:
	.string	"context_t"
.LASF34:
	.string	"_codecvt"
.LASF70:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF105:
	.string	"quoting_style_vals"
.LASF129:
	.string	"program"
.LASF100:
	.string	"escape_quoting_style"
.LASF84:
	.string	"EXIT_CANNOT_INVOKE"
.LASF93:
	.string	"literal_quoting_style"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF76:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"_gl_cxxalias_dummy"
.LASF113:
	.string	"long_options"
.LASF12:
	.string	"_flags"
.LASF35:
	.string	"_wide_data"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF80:
	.string	"program_invocation_short_name"
.LASF98:
	.string	"c_quoting_style"
.LASF43:
	.string	"_IO_codecvt"
.LASF51:
	.string	"_sys_errlist"
.LASF79:
	.string	"program_invocation_name"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF82:
	.string	"EXIT_TIMEDOUT"
.LASF120:
	.string	"file_context"
.LASF87:
	.string	"TIMESPEC_HZ"
.LASF97:
	.string	"shell_escape_always_quoting_style"
.LASF73:
	.string	"timezone"
.LASF92:
	.string	"program_name"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF37:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF66:
	.string	"context_s_t"
.LASF17:
	.string	"_IO_write_ptr"
.LASF63:
	.string	"name"
.LASF48:
	.string	"sys_nerr"
.LASF122:
	.string	"compute_trans"
.LASF134:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF103:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF108:
	.string	"error_one_per_line"
.LASF81:
	.string	"Version"
.LASF21:
	.string	"_IO_save_base"
.LASF78:
	.string	"environ"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF46:
	.string	"stdout"
.LASF91:
	.string	"version_etc_copyright"
.LASF124:
	.string	"option_index"
.LASF57:
	.string	"optarg"
.LASF74:
	.string	"getdate_err"
.LASF58:
	.string	"optind"
.LASF83:
	.string	"EXIT_CANCELED"
.LASF121:
	.string	"new_context"
.LASF18:
	.string	"_IO_write_end"
.LASF137:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF106:
	.string	"error_print_progname"
.LASF114:
	.string	"role"
.LASF132:
	.string	"map_prog"
.LASF77:
	.string	"__environ"
.LASF54:
	.string	"time_t"
.LASF115:
	.string	"range"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF116:
	.string	"user"
.LASF99:
	.string	"c_maybe_quoting_style"
.LASF125:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF123:
	.string	"exit_status"
.LASF131:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF62:
	.string	"option"
.LASF110:
	.string	"quote_quoting_options"
.LASF65:
	.string	"flag"
.LASF50:
	.string	"_sys_nerr"
.LASF30:
	.string	"_vtable_offset"
.LASF71:
	.string	"tzname"
.LASF41:
	.string	"FILE"
.LASF96:
	.string	"shell_escape_quoting_style"
.LASF104:
	.string	"quoting_style_args"
.LASF60:
	.string	"optopt"
.LASF72:
	.string	"daylight"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF95:
	.string	"shell_always_quoting_style"
.LASF135:
	.string	"src/runcon.c"
.LASF102:
	.string	"clocale_quoting_style"
.LASF59:
	.string	"opterr"
.LASF9:
	.string	"__off64_t"
.LASF109:
	.string	"quoting_options"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF75:
	.string	"_sys_siglist"
.LASF130:
	.string	"infomap"
.LASF64:
	.string	"has_arg"
.LASF127:
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
.LASF69:
	.string	"__daylight"
.LASF128:
	.string	"status"
.LASF136:
	.string	"/root/coreutils"
.LASF22:
	.string	"_IO_backup_base"
.LASF107:
	.string	"error_message_count"
.LASF133:
	.string	"lc_messages"
.LASF111:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF118:
	.string	"context"
.LASF44:
	.string	"_IO_wide_data"
.LASF140:
	.string	"emit_mandatory_arg_note"
.LASF68:
	.string	"__tzname"
.LASF126:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF139:
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
