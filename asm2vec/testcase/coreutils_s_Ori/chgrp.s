	.file	"chgrp.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"["
.LC1:
	.string	"test invocation"
.LC2:
	.string	"coreutils"
.LC3:
	.string	"Multi-call invocation"
.LC4:
	.string	"sha224sum"
.LC5:
	.string	"sha2 utilities"
.LC6:
	.string	"sha256sum"
.LC7:
	.string	"sha384sum"
.LC8:
	.string	"sha512sum"
.LC9:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC10:
	.string	"https://www.gnu.org/software/coreutils/"
.LC11:
	.string	"GNU coreutils"
.LC12:
	.string	"en_"
	.align 8
.LC13:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC14:
	.string	"Full documentation <%s%s>\n"
.LC15:
	.string	" invocation"
.LC16:
	.string	""
	.align 8
.LC17:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.type	emit_ancillary_info, @function
emit_ancillary_info:
.LFB40:
	.file 1 "src/system.h"
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
	leaq	.LC0(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC5(%rip), %rax
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
	jmp	.L2
.L4:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L2:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L3
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L4
.L3:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L5
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L5:
	.loc 1 655 11
	leaq	.LC9(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rsi
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
	je	.L6
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L6
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L6:
	.loc 1 669 11
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L7
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L8
.L7:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L8:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC17(%rip), %rdi
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
	je	.L9
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L9:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	reference_file
	.comm	reference_file,8,8
	.section	.rodata
.LC18:
	.string	"recursive"
.LC19:
	.string	"changes"
.LC20:
	.string	"dereference"
.LC21:
	.string	"no-dereference"
.LC22:
	.string	"no-preserve-root"
.LC23:
	.string	"preserve-root"
.LC24:
	.string	"quiet"
.LC25:
	.string	"silent"
.LC26:
	.string	"reference"
.LC27:
	.string	"verbose"
.LC28:
	.string	"help"
.LC29:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 416
long_options:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC26
	.long	1
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC29
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
.LC30:
	.string	"invalid group: %s"
	.text
	.type	parse_group, @function
parse_group:
.LFB46:
	.file 2 "src/chgrp.c"
	.loc 2 80 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	.loc 2 80 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 81 9
	movl	$-1, -44(%rbp)
	.loc 2 83 7
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 83 6
	testb	%al, %al
	je	.L11
.LBB2:
	.loc 2 85 27
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	getgrnam@PLT
	movq	%rax, -32(%rbp)
	.loc 2 86 10
	cmpq	$0, -32(%rbp)
	je	.L12
	.loc 2 87 13
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -44(%rbp)
	jmp	.L13
.L12:
.LBB3:
	.loc 2 91 18
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC16(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 2 91 14
	testl	%eax, %eax
	jne	.L14
	.loc 2 92 25 discriminator 1
	movq	-40(%rbp), %rax
	.loc 2 91 15 discriminator 1
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jbe	.L15
.L14:
.LBB4:
	.loc 2 93 13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L15:
.LBE4:
	.loc 2 95 15
	movq	-40(%rbp), %rax
	movl	%eax, -44(%rbp)
.L13:
.LBE3:
	.loc 2 97 7
	call	endgrent@PLT
.L11:
.LBE2:
	.loc 2 100 10
	movl	-44(%rbp), %eax
	.loc 2 101 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	parse_group, .-parse_group
	.section	.rodata
	.align 8
.LC31:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC32:
	.string	"Usage: %s [OPTION]... GROUP FILE...\n  or:  %s [OPTION]... --reference=RFILE FILE...\n"
	.align 8
.LC33:
	.string	"Change the group of each FILE to GROUP.\nWith --reference, change the group of each FILE to that of RFILE.\n\n"
	.align 8
.LC34:
	.string	"  -c, --changes          like verbose but report only when a change is made\n  -f, --silent, --quiet  suppress most error messages\n  -v, --verbose          output a diagnostic for every file processed\n"
	.align 8
.LC35:
	.string	"      --dereference      affect the referent of each symbolic link (this is\n                         the default), rather than the symbolic link itself\n  -h, --no-dereference   affect symbolic links instead of any referenced file\n"
	.align 8
.LC36:
	.string	"                         (useful only on systems that can change the\n                         ownership of a symlink)\n"
	.align 8
.LC37:
	.string	"      --no-preserve-root  do not treat '/' specially (the default)\n      --preserve-root    fail to operate recursively on '/'\n"
	.align 8
.LC38:
	.string	"      --reference=RFILE  use RFILE's group rather than specifying a\n                         GROUP value\n"
	.align 8
.LC39:
	.string	"  -R, --recursive        operate on files and directories recursively\n"
	.align 8
.LC40:
	.ascii	"\nThe following options modify how a hierarchy is traversed "
	.ascii	"when the -R\noption is also specified.  If more than one is "
	.ascii	"specified, only the final\none takes effect.\n\n  -H        "
	.ascii	"             if a command line ar"
	.string	"gument is a symbolic link\n                         to a directory, traverse it\n  -L                     traverse every symbolic link to a directory\n                         encountered\n  -P                     do not traverse any symbolic links (default)\n\n"
	.align 8
.LC41:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC42:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC43:
	.string	"\nExamples:\n  %s staff /u      Change the group of /u to \"staff\".\n  %s -hR staff /u  Change the group of /u and subfiles to \"staff\".\n"
.LC44:
	.string	"chgrp"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB47:
	.loc 2 105 1
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
	.loc 2 106 6
	cmpl	$0, -20(%rbp)
	je	.L19
	.loc 2 107 5
	movq	program_name(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L20
.L19:
	.loc 2 110 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 110 15
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 110 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 115 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 120 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 125 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 130 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 134 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 138 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 142 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 145 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 158 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 159 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 160 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 160 15
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	.loc 2 160 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 167 7
	leaq	.LC44(%rip), %rdi
	call	emit_ancillary_info
.L20:
	.loc 2 169 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE47:
	.size	usage, .-usage
	.section	.rodata
.LC45:
	.string	"/usr/local/share/locale"
.LC46:
	.string	"Jim Meyering"
.LC47:
	.string	"David MacKenzie"
.LC48:
	.string	"HLPRcfhv"
	.align 8
.LC49:
	.string	"-R --dereference requires either -H or -L"
.LC50:
	.string	"missing operand"
.LC51:
	.string	"missing operand after %s"
	.align 8
.LC52:
	.string	"failed to get attributes of %s"
.LC53:
	.string	"/"
	.text
	.globl	main
	.type	main, @function
main:
.LFB48:
	.loc 2 174 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$256, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -260(%rbp)
	movq	%rsi, -272(%rbp)
	.loc 2 174 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 175 8
	movb	$0, -250(%rbp)
	.loc 2 179 7
	movl	$16, -244(%rbp)
	.loc 2 183 7
	movl	$-1, -240(%rbp)
	.loc 2 190 3
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 191 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 192 3
	leaq	.LC45(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 193 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 195 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 197 3
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	chopt_init@PLT
	.loc 2 199 9
	jmp	.L22
.L40:
	.loc 2 202 7
	cmpl	$131, -236(%rbp)
	jg	.L23
	cmpl	$72, -236(%rbp)
	jge	.L24
	cmpl	$-131, -236(%rbp)
	je	.L25
	cmpl	$-130, -236(%rbp)
	je	.L26
	jmp	.L23
.L24:
	movl	-236(%rbp), %eax
	subl	$72, %eax
	cmpl	$59, %eax
	ja	.L23
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L28(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L28(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L28:
	.long	.L39-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L38-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L37-.L28
	.long	.L23-.L28
	.long	.L36-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L35-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L34-.L28
	.long	.L23-.L28
	.long	.L33-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L32-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L23-.L28
	.long	.L31-.L28
	.long	.L30-.L28
	.long	.L29-.L28
	.long	.L27-.L28
	.text
.L39:
	.loc 2 205 21
	movl	$17, -244(%rbp)
	.loc 2 206 11
	jmp	.L22
.L38:
	.loc 2 209 21
	movl	$2, -244(%rbp)
	.loc 2 210 11
	jmp	.L22
.L37:
	.loc 2 213 21
	movl	$16, -244(%rbp)
	.loc 2 214 11
	jmp	.L22
.L33:
	.loc 2 217 23
	movl	$0, -240(%rbp)
	.loc 2 218 11
	jmp	.L22
.L31:
	.loc 2 222 23
	movl	$1, -240(%rbp)
	.loc 2 223 11
	jmp	.L22
.L30:
	.loc 2 226 25
	movb	$0, -250(%rbp)
	.loc 2 227 11
	jmp	.L22
.L29:
	.loc 2 230 25
	movb	$1, -250(%rbp)
	.loc 2 231 11
	jmp	.L22
.L27:
	.loc 2 234 26
	movq	optarg(%rip), %rax
	movq	%rax, reference_file(%rip)
	.loc 2 235 11
	jmp	.L22
.L36:
	.loc 2 238 25
	movb	$1, -220(%rbp)
	.loc 2 239 11
	jmp	.L22
.L35:
	.loc 2 242 27
	movl	$1, -224(%rbp)
	.loc 2 243 11
	jmp	.L22
.L34:
	.loc 2 246 30
	movb	$1, -207(%rbp)
	.loc 2 247 11
	jmp	.L22
.L32:
	.loc 2 250 27
	movl	$0, -224(%rbp)
	.loc 2 251 11
	jmp	.L22
.L26:
	.loc 2 253 9
	movl	$0, %edi
	call	usage
.L25:
	.loc 2 254 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC46(%rip), %r9
	leaq	.LC47(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L23:
	.loc 2 256 11
	movl	$1, %edi
	call	usage
.L22:
	.loc 2 199 18
	movq	-272(%rbp), %rsi
	movl	-260(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -236(%rbp)
	.loc 2 199 9
	cmpl	$-1, -236(%rbp)
	jne	.L40
	.loc 2 260 12
	movzbl	-220(%rbp), %eax
	.loc 2 260 6
	testb	%al, %al
	je	.L41
	.loc 2 262 10
	cmpl	$16, -244(%rbp)
	jne	.L42
	.loc 2 264 14
	cmpl	$1, -240(%rbp)
	jne	.L43
.LBB5:
	.loc 2 265 13
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L43:
.LBE5:
	.loc 2 267 23
	movl	$0, -240(%rbp)
	jmp	.L42
.L41:
	.loc 2 272 17
	movl	$16, -244(%rbp)
.L42:
	.loc 2 274 48
	cmpl	$0, -240(%rbp)
	setne	%al
	.loc 2 274 33
	movb	%al, -208(%rbp)
	.loc 2 276 12
	movl	optind(%rip), %eax
	movl	-260(%rbp), %edx
	subl	%eax, %edx
	.loc 2 276 39
	movq	reference_file(%rip), %rax
	.loc 2 276 43
	testq	%rax, %rax
	je	.L44
	.loc 2 276 43 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L45
.L44:
	.loc 2 276 43 discriminator 2
	movl	$2, %eax
.L45:
	.loc 2 276 6 is_stmt 1 discriminator 4
	cmpl	%edx, %eax
	jle	.L46
	.loc 2 278 16
	movl	optind(%rip), %eax
	.loc 2 278 10
	cmpl	%eax, -260(%rbp)
	jg	.L47
	.loc 2 279 22
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	.loc 2 279 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L48
.L47:
	.loc 2 281 64
	movl	-260(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 281 9
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 281 22
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	.loc 2 281 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L48:
	.loc 2 282 7
	movl	$1, %edi
	call	usage
.L46:
	.loc 2 285 7
	movq	reference_file(%rip), %rax
	.loc 2 285 6
	testq	%rax, %rax
	je	.L49
.LBB6:
	.loc 2 288 11
	movq	reference_file(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 288 10
	testl	%eax, %eax
	je	.L50
.LBB7:
	.loc 2 289 9
	movq	reference_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
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
.LBE7:
	.loc 2 292 11
	movl	-144(%rbp), %eax
	movl	%eax, -248(%rbp)
	.loc 2 293 26
	movl	-144(%rbp), %eax
	movl	%eax, %edi
	call	gid_to_name@PLT
	.loc 2 293 24
	movq	%rax, -192(%rbp)
.LBE6:
	jmp	.L51
.L49:
.LBB8:
	.loc 2 297 37
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 297 30
	leaq	0(,%rax,8), %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 297 13
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	.loc 2 298 27
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 298 62
	testb	%al, %al
	je	.L52
	.loc 2 298 41 discriminator 1
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	jmp	.L53
.L52:
	.loc 2 298 62 discriminator 2
	movl	$0, %eax
.L53:
	.loc 2 298 24 discriminator 4
	movq	%rax, -192(%rbp)
	.loc 2 299 13 discriminator 4
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	parse_group
	movl	%eax, -248(%rbp)
.L51:
.LBE8:
	.loc 2 302 12
	movzbl	-220(%rbp), %eax
	.loc 2 302 6
	testb	%al, %al
	je	.L54
	.loc 2 302 21 discriminator 1
	cmpb	$0, -250(%rbp)
	je	.L54
.LBB9:
	.loc 2 305 28
	leaq	dev_ino_buf.6490(%rip), %rdi
	call	get_root_dev_ino@PLT
	.loc 2 305 26
	movq	%rax, -216(%rbp)
	.loc 2 306 16
	movq	-216(%rbp), %rax
	.loc 2 306 10
	testq	%rax, %rax
	jne	.L54
.LBB10:
	.loc 2 307 9
	leaq	.LC53(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
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
.L54:
.LBE10:
.LBE9:
	.loc 2 311 13
	orl	$1024, -244(%rbp)
	.loc 2 312 26
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 312 8
	movq	-272(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-248(%rbp), %edx
	movl	-244(%rbp), %eax
	subq	$8, %rsp
	leaq	-224(%rbp), %rcx
	pushq	%rcx
	movl	$-1, %r9d
	movl	$-1, %r8d
	movl	%edx, %ecx
	movl	$-1, %edx
	movl	%eax, %esi
	call	chown_files@PLT
	addq	$16, %rsp
	movb	%al, -249(%rbp)
	.loc 2 316 3
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	chopt_free@PLT
	.loc 2 318 28
	movzbl	-249(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 319 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L56
	call	__stack_chk_fail@PLT
.L56:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	main, .-main
	.local	dev_ino_buf.6490
	.comm	dev_ino_buf.6490,16,16
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/grp.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 18 "/usr/include/signal.h"
	.file 19 "/usr/include/unistd.h"
	.file 20 "/usr/include/errno.h"
	.file 21 "src/version.h"
	.file 22 "./lib/exitfail.h"
	.file 23 "/usr/include/stdint.h"
	.file 24 "./lib/timespec.h"
	.file 25 "./lib/version-etc.h"
	.file 26 "./lib/progname.h"
	.file 27 "./lib/quotearg.h"
	.file 28 "./lib/dev-ino.h"
	.file 29 "src/chown-core.h"
	.file 30 "./lib/error.h"
	.file 31 "./lib/i-ring.h"
	.file 32 "./lib/quote.h"
	.file 33 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc1f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF189
	.byte	0xc
	.long	.LASF190
	.long	.LASF191
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
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x71
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x71
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x8
	.long	0x11a
	.uleb128 0x9
	.long	.LASF69
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x2ad
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x114
	.byte	0x8
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x114
	.byte	0x10
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x114
	.byte	0x20
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x114
	.byte	0x28
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x114
	.byte	0x30
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x114
	.byte	0x38
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x114
	.byte	0x40
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x114
	.byte	0x48
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x114
	.byte	0x50
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x114
	.byte	0x58
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2c6
	.byte	0x60
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2cc
	.byte	0x68
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xcc
	.byte	0x78
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2d2
	.byte	0x83
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2e2
	.byte	0x88
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xd8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2ed
	.byte	0x98
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2f8
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2cc
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2fe
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x126
	.uleb128 0xb
	.long	.LASF192
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x7
	.byte	0x8
	.long	0x2c1
	.uleb128 0x7
	.byte	0x8
	.long	0x126
	.uleb128 0xd
	.long	0x11a
	.long	0x2e2
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2b9
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2e8
	.uleb128 0xc
	.long	.LASF54
	.uleb128 0x7
	.byte	0x8
	.long	0x2f3
	.uleb128 0xd
	.long	0x11a
	.long	0x30e
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x121
	.uleb128 0x8
	.long	0x30e
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x325
	.uleb128 0x7
	.byte	0x8
	.long	0x2ad
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x325
	.uleb128 0xf
	.long	.LASF57
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x325
	.uleb128 0xf
	.long	.LASF58
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x314
	.long	0x35a
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x34f
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x35a
	.uleb128 0xf
	.long	.LASF60
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x35a
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
	.byte	0x9
	.byte	0x2f
	.byte	0x11
	.long	0xa8
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x3b
	.byte	0x11
	.long	0x84
	.uleb128 0x2
	.long	.LASF66
	.byte	0x9
	.byte	0x40
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.long	.LASF67
	.byte	0x9
	.byte	0x4f
	.byte	0x11
	.long	0x90
	.uleb128 0x2
	.long	.LASF68
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xe4
	.uleb128 0x9
	.long	.LASF70
	.byte	0x10
	.byte	0xb
	.byte	0xa
	.byte	0x8
	.long	0x3f5
	.uleb128 0xa
	.long	.LASF71
	.byte	0xb
	.byte	0xc
	.byte	0xc
	.long	0xe4
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0xb
	.byte	0x10
	.byte	0x15
	.long	0x108
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF73
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF74
	.uleb128 0x9
	.long	.LASF75
	.byte	0x20
	.byte	0xd
	.byte	0x2a
	.byte	0x8
	.long	0x44b
	.uleb128 0xa
	.long	.LASF76
	.byte	0xd
	.byte	0x2c
	.byte	0xb
	.long	0x114
	.byte	0
	.uleb128 0xa
	.long	.LASF77
	.byte	0xd
	.byte	0x2d
	.byte	0xb
	.long	0x114
	.byte	0x8
	.uleb128 0xa
	.long	.LASF78
	.byte	0xd
	.byte	0x2e
	.byte	0xd
	.long	0x9c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF79
	.byte	0xd
	.byte	0x2f
	.byte	0xc
	.long	0x44b
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x114
	.uleb128 0xf
	.long	.LASF80
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF81
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF82
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF83
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF84
	.byte	0x20
	.byte	0xf
	.byte	0x32
	.byte	0x8
	.long	0x4c3
	.uleb128 0xa
	.long	.LASF85
	.byte	0xf
	.byte	0x34
	.byte	0xf
	.long	0x30e
	.byte	0
	.uleb128 0xa
	.long	.LASF86
	.byte	0xf
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF87
	.byte	0xf
	.byte	0x38
	.byte	0x8
	.long	0x4c8
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xf
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x481
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0x114
	.long	0x4de
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF88
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x4ce
	.uleb128 0xf
	.long	.LASF89
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF90
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF91
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x4ce
	.uleb128 0xf
	.long	.LASF92
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF93
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF94
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF95
	.byte	0x90
	.byte	0x11
	.byte	0x2e
	.byte	0x8
	.long	0x604
	.uleb128 0xa
	.long	.LASF96
	.byte	0x11
	.byte	0x30
	.byte	0xd
	.long	0x84
	.byte	0
	.uleb128 0xa
	.long	.LASF97
	.byte	0x11
	.byte	0x35
	.byte	0xd
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF98
	.byte	0x11
	.byte	0x3d
	.byte	0xf
	.long	0xc0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF99
	.byte	0x11
	.byte	0x3e
	.byte	0xe
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF100
	.byte	0x11
	.byte	0x40
	.byte	0xd
	.long	0x90
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF101
	.byte	0x11
	.byte	0x41
	.byte	0xd
	.long	0x9c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF102
	.byte	0x11
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF103
	.byte	0x11
	.byte	0x45
	.byte	0xd
	.long	0x84
	.byte	0x28
	.uleb128 0xa
	.long	.LASF104
	.byte	0x11
	.byte	0x4a
	.byte	0xd
	.long	0xcc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF105
	.byte	0x11
	.byte	0x4e
	.byte	0x11
	.long	0xf0
	.byte	0x38
	.uleb128 0xa
	.long	.LASF106
	.byte	0x11
	.byte	0x50
	.byte	0x10
	.long	0xfc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF107
	.byte	0x11
	.byte	0x5b
	.byte	0x15
	.long	0x3cd
	.byte	0x48
	.uleb128 0xa
	.long	.LASF108
	.byte	0x11
	.byte	0x5c
	.byte	0x15
	.long	0x3cd
	.byte	0x58
	.uleb128 0xa
	.long	.LASF109
	.byte	0x11
	.byte	0x5d
	.byte	0x15
	.long	0x3cd
	.byte	0x68
	.uleb128 0xa
	.long	.LASF110
	.byte	0x11
	.byte	0x6a
	.byte	0x17
	.long	0x604
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0x108
	.long	0x614
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x614
	.uleb128 0xd
	.long	0x314
	.long	0x62b
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x61b
	.uleb128 0x11
	.long	.LASF111
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x62b
	.uleb128 0x11
	.long	.LASF112
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x62b
	.uleb128 0x11
	.long	.LASF113
	.byte	0x13
	.value	0x21f
	.byte	0xf
	.long	0x44b
	.uleb128 0x11
	.long	.LASF114
	.byte	0x13
	.value	0x221
	.byte	0xf
	.long	0x44b
	.uleb128 0xf
	.long	.LASF115
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF116
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF117
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0x30e
	.uleb128 0xf
	.long	.LASF118
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF119
	.byte	0x17
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x6b8
	.uleb128 0x15
	.long	.LASF120
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x6cd
	.uleb128 0x16
	.long	.LASF121
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x6eb
	.uleb128 0x18
	.long	.LASF122
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF123
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x121
	.long	0x6f6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x6eb
	.uleb128 0xf
	.long	.LASF124
	.byte	0x19
	.byte	0x19
	.byte	0x13
	.long	0x6f6
	.uleb128 0xf
	.long	.LASF125
	.byte	0x1a
	.byte	0x20
	.byte	0x14
	.long	0x30e
	.uleb128 0x19
	.long	.LASF140
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1b
	.byte	0x20
	.byte	0x6
	.long	0x768
	.uleb128 0x16
	.long	.LASF126
	.byte	0
	.uleb128 0x16
	.long	.LASF127
	.byte	0x1
	.uleb128 0x16
	.long	.LASF128
	.byte	0x2
	.uleb128 0x16
	.long	.LASF129
	.byte	0x3
	.uleb128 0x16
	.long	.LASF130
	.byte	0x4
	.uleb128 0x16
	.long	.LASF131
	.byte	0x5
	.uleb128 0x16
	.long	.LASF132
	.byte	0x6
	.uleb128 0x16
	.long	.LASF133
	.byte	0x7
	.uleb128 0x16
	.long	.LASF134
	.byte	0x8
	.uleb128 0x16
	.long	.LASF135
	.byte	0x9
	.uleb128 0x16
	.long	.LASF136
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x713
	.uleb128 0x11
	.long	.LASF137
	.byte	0x1b
	.value	0x10b
	.byte	0x1a
	.long	0x35a
	.uleb128 0xd
	.long	0x768
	.long	0x785
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x77a
	.uleb128 0x11
	.long	.LASF138
	.byte	0x1b
	.value	0x10c
	.byte	0x21
	.long	0x785
	.uleb128 0x9
	.long	.LASF139
	.byte	0x10
	.byte	0x1c
	.byte	0x19
	.byte	0x8
	.long	0x7bf
	.uleb128 0xa
	.long	.LASF97
	.byte	0x1c
	.byte	0x1b
	.byte	0x9
	.long	0x391
	.byte	0
	.uleb128 0xa
	.long	.LASF96
	.byte	0x1c
	.byte	0x1c
	.byte	0x9
	.long	0x39d
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF141
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1d
	.byte	0x1f
	.byte	0x6
	.long	0x7e4
	.uleb128 0x16
	.long	.LASF142
	.byte	0
	.uleb128 0x16
	.long	.LASF143
	.byte	0x1
	.uleb128 0x16
	.long	.LASF144
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF145
	.byte	0x28
	.byte	0x1d
	.byte	0x2b
	.byte	0x8
	.long	0x84d
	.uleb128 0xa
	.long	.LASF146
	.byte	0x1d
	.byte	0x2e
	.byte	0x12
	.long	0x7bf
	.byte	0
	.uleb128 0xa
	.long	.LASF147
	.byte	0x1d
	.byte	0x31
	.byte	0x8
	.long	0x84d
	.byte	0x4
	.uleb128 0xa
	.long	.LASF148
	.byte	0x1d
	.byte	0x35
	.byte	0x13
	.long	0x854
	.byte	0x8
	.uleb128 0xa
	.long	.LASF149
	.byte	0x1d
	.byte	0x38
	.byte	0x8
	.long	0x84d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF150
	.byte	0x1d
	.byte	0x3b
	.byte	0x8
	.long	0x84d
	.byte	0x11
	.uleb128 0xa
	.long	.LASF151
	.byte	0x1d
	.byte	0x3e
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1d
	.byte	0x41
	.byte	0x9
	.long	0x114
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF153
	.uleb128 0x7
	.byte	0x8
	.long	0x797
	.uleb128 0xf
	.long	.LASF154
	.byte	0x1e
	.byte	0x32
	.byte	0xf
	.long	0x615
	.uleb128 0xf
	.long	.LASF155
	.byte	0x1e
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF156
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1f
	.byte	0x14
	.byte	0x6
	.long	0x893
	.uleb128 0x16
	.long	.LASF157
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF158
	.uleb128 0xf
	.long	.LASF159
	.byte	0x20
	.byte	0x19
	.byte	0x1f
	.long	0x893
	.uleb128 0x19
	.long	.LASF160
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x21
	.byte	0x19
	.byte	0x6
	.long	0x8d5
	.uleb128 0x16
	.long	.LASF161
	.byte	0
	.uleb128 0x16
	.long	.LASF162
	.byte	0x1
	.uleb128 0x16
	.long	.LASF163
	.byte	0x2
	.uleb128 0x16
	.long	.LASF164
	.byte	0x3
	.uleb128 0x16
	.long	.LASF165
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.long	.LASF170
	.byte	0x2
	.byte	0x2f
	.byte	0xe
	.long	0x114
	.uleb128 0x9
	.byte	0x3
	.quad	reference_file
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x34
	.byte	0x1
	.long	0x912
	.uleb128 0x16
	.long	.LASF166
	.byte	0x80
	.uleb128 0x16
	.long	.LASF167
	.byte	0x81
	.uleb128 0x16
	.long	.LASF168
	.byte	0x82
	.uleb128 0x16
	.long	.LASF169
	.byte	0x83
	.byte	0
	.uleb128 0xd
	.long	0x4c3
	.long	0x922
	.uleb128 0xe
	.long	0x39
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x912
	.uleb128 0x1a
	.long	.LASF171
	.byte	0x2
	.byte	0x3b
	.byte	0x1c
	.long	0x922
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1b
	.long	.LASF181
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xa99
	.uleb128 0x1c
	.long	.LASF172
	.byte	0x2
	.byte	0xad
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1c
	.long	.LASF173
	.byte	0x2
	.byte	0xad
	.byte	0x18
	.long	0x44b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1a
	.long	.LASF174
	.byte	0x2
	.byte	0xaf
	.byte	0x8
	.long	0x84d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -266
	.uleb128 0x1d
	.string	"gid"
	.byte	0x2
	.byte	0xb0
	.byte	0x9
	.long	0x3a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x2
	.byte	0xb3
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x1a
	.long	.LASF176
	.byte	0x2
	.byte	0xb7
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1a
	.long	.LASF177
	.byte	0x2
	.byte	0xb9
	.byte	0x17
	.long	0x7e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1d
	.string	"ok"
	.byte	0x2
	.byte	0xba
	.byte	0x8
	.long	0x84d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -265
	.uleb128 0x1a
	.long	.LASF178
	.byte	0x2
	.byte	0xbb
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x1e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xa37
	.uleb128 0x20
	.long	.LASF179
	.byte	0x2
	.value	0x11f
	.byte	0x13
	.long	0x533
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.uleb128 0x1f
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xa5e
	.uleb128 0x20
	.long	.LASF152
	.byte	0x2
	.value	0x129
	.byte	0xd
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x20
	.long	.LASF180
	.byte	0x2
	.value	0x130
	.byte	0x1d
	.long	0x797
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_buf.6490
	.uleb128 0x1e
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF182
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xac7
	.uleb128 0x1c
	.long	.LASF183
	.byte	0x2
	.byte	0x68
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x23
	.long	.LASF193
	.byte	0x2
	.byte	0x4f
	.byte	0x1
	.long	0x3a9
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xb5c
	.uleb128 0x1c
	.long	.LASF85
	.byte	0x2
	.byte	0x4f
	.byte	0x1a
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"gid"
	.byte	0x2
	.byte	0x51
	.byte	0x9
	.long	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1d
	.string	"grp"
	.byte	0x2
	.byte	0x55
	.byte	0x15
	.long	0xb5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1d
	.string	"tmp"
	.byte	0x2
	.byte	0x5a
	.byte	0x15
	.long	0x694
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x409
	.uleb128 0x24
	.long	.LASF194
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xc07
	.uleb128 0x25
	.long	.LASF184
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF185
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xbbd
	.uleb128 0x27
	.long	.LASF184
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x30e
	.byte	0
	.uleb128 0x27
	.long	.LASF186
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x30e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xb92
	.uleb128 0x20
	.long	.LASF185
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xc17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF187
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xc1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.long	.LASF188
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xbbd
	.long	0xc17
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xc07
	.uleb128 0x7
	.byte	0x8
	.long	0xbbd
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x2116
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF118:
	.string	"exit_failure"
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
.LASF168:
	.string	"PRESERVE_ROOT"
.LASF127:
	.string	"shell_quoting_style"
.LASF122:
	.string	"GETOPT_HELP_CHAR"
.LASF29:
	.string	"_IO_buf_base"
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
.LASF53:
	.string	"_IO_codecvt"
.LASF167:
	.string	"NO_PRESERVE_ROOT"
.LASF61:
	.string	"_sys_errlist"
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
.LASF47:
	.string	"_freeres_buf"
.LASF77:
	.string	"gr_passwd"
.LASF193:
	.string	"parse_group"
.LASF0:
	.string	"long unsigned int"
.LASF149:
	.string	"affect_symlink_referent"
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
.LASF189:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF178:
	.string	"optc"
.LASF3:
	.string	"short unsigned int"
.LASF156:
	.string	"error_one_per_line"
.LASF117:
	.string	"Version"
.LASF31:
	.string	"_IO_save_base"
.LASF14:
	.string	"__nlink_t"
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
.LASF160:
	.string	"strtol_error"
.LASF104:
	.string	"st_size"
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
.LASF192:
	.string	"_IO_lock_t"
.LASF69:
	.string	"_IO_FILE"
.LASF154:
	.string	"error_print_progname"
.LASF18:
	.string	"__blksize_t"
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
.LASF153:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF186:
	.string	"node"
.LASF97:
	.string	"st_ino"
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
.LASF129:
	.string	"shell_escape_quoting_style"
.LASF179:
	.string	"ref_stats"
.LASF137:
	.string	"quoting_style_args"
.LASF83:
	.string	"optopt"
.LASF92:
	.string	"daylight"
.LASF103:
	.string	"st_rdev"
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
.LASF190:
	.string	"src/chgrp.c"
.LASF176:
	.string	"dereference"
.LASF135:
	.string	"clocale_quoting_style"
.LASF82:
	.string	"opterr"
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
.LASF185:
	.string	"infomap"
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
.LASF89:
	.string	"__daylight"
.LASF145:
	.string	"Chown_option"
.LASF183:
	.string	"status"
.LASF191:
	.string	"/root/coreutils"
.LASF96:
	.string	"st_dev"
.LASF136:
	.string	"custom_quoting_style"
.LASF164:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF32:
	.string	"_IO_backup_base"
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
.LASF54:
	.string	"_IO_wide_data"
.LASF148:
	.string	"root_dev_ino"
.LASF165:
	.string	"LONGINT_INVALID"
.LASF88:
	.string	"__tzname"
.LASF181:
	.string	"main"
.LASF26:
	.string	"_IO_write_base"
.LASF194:
	.string	"emit_ancillary_info"
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
