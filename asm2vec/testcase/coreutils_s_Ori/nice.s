	.file	"nice.c"
	.text
.Ltext0:
	.type	initialize_exit_failure, @function
initialize_exit_failure:
.LFB6:
	.file 1 "src/system.h"
	.loc 1 100 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 101 6
	cmpl	$1, -4(%rbp)
	je	.L3
	.loc 1 102 18
	movl	-4(%rbp), %eax
	movl	%eax, exit_failure(%rip)
.L3:
	.loc 1 103 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	initialize_exit_failure, .-initialize_exit_failure
	.section	.rodata
	.align 8
.LC0:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.text
	.type	emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
.LFB36:
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
	jmp	.L6
.L8:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L6:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L7
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L8
.L7:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L9
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L9:
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
	je	.L10
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L10
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L10:
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
	jne	.L11
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L12
.L11:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L12:
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
	je	.L13
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L13:
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
	.string	"adjustment"
.LC20:
	.string	"help"
.LC21:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 128
longopts:
	.quad	.LC19
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC21
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
.LC22:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC23:
	.string	"Usage: %s [OPTION] [COMMAND [ARG]...]\n"
	.align 8
.LC24:
	.string	"Run COMMAND with an adjusted niceness, which affects process scheduling.\nWith no COMMAND, print the current niceness.  Niceness values range from\n%d (most favorable to the process) to %d (least favorable to the process).\n"
	.align 8
.LC25:
	.string	"  -n, --adjustment=N   add integer N to the niceness (default 10)\n"
	.align 8
.LC26:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC27:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC28:
	.string	"\nNOTE: your shell may have its own version of %s, which usually supersedes\nthe version described here.  Please refer to your shell's documentation\nfor details about the options it supports.\n"
.LC29:
	.string	"nice"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/nice.c"
	.loc 2 68 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	.loc 2 69 6
	cmpl	$0, -20(%rbp)
	je	.L15
	.loc 2 70 5
	movq	program_name(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L16
.L15:
	.loc 2 73 7
	movq	program_name(%rip), %rbx
	.loc 2 73 15
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	.loc 2 73 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 74 15
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	.loc 2 74 7
	movl	$19, %edx
	movl	$-20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 81 7
	call	emit_mandatory_arg_note
	.loc 2 83 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 86 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 87 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 88 15
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	.loc 2 88 7
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 89 7
	leaq	.LC29(%rip), %rdi
	call	emit_ancillary_info
.L16:
	.loc 2 91 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	perm_related_errno, @function
perm_related_errno:
.LFB47:
	.loc 2 96 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 97 24
	cmpl	$13, -4(%rbp)
	je	.L18
	.loc 2 97 24 is_stmt 0 discriminator 2
	cmpl	$1, -4(%rbp)
	jne	.L19
.L18:
	.loc 2 97 24 discriminator 3
	movl	$1, %eax
	jmp	.L20
.L19:
	.loc 2 97 24 discriminator 4
	movl	$0, %eax
.L20:
	.loc 2 97 24 discriminator 6
	andl	$1, %eax
	.loc 2 98 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	perm_related_errno, .-perm_related_errno
	.section	.rodata
.LC30:
	.string	"/usr/local/share/locale"
.LC31:
	.string	"+n:"
.LC32:
	.string	"David MacKenzie"
.LC33:
	.string	"invalid adjustment %s"
	.align 8
.LC34:
	.string	"a command must be given with an adjustment"
.LC35:
	.string	"cannot get niceness"
.LC36:
	.string	"%d\n"
.LC37:
	.string	"cannot set niceness"
.LC38:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB48:
	.loc 2 102 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 2 102 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 104 7
	movl	$10, -80(%rbp)
	.loc 2 105 15
	movq	$0, -48(%rbp)
	.loc 2 110 3
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 111 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 112 3
	leaq	.LC30(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 113 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 115 3
	movl	$125, %edi
	call	initialize_exit_failure
	.loc 2 116 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 118 10
	movl	$1, -76(%rbp)
	.loc 2 118 3
	jmp	.L23
.L35:
.LBB2:
	.loc 2 120 27
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 120 19
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 122 12
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 122 10
	cmpb	$45, %al
	jne	.L24
	.loc 2 122 26 discriminator 1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L25
	.loc 2 122 26 is_stmt 0 discriminator 3
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L26
.L25:
	.loc 2 122 26 discriminator 4
	movl	$1, %eax
	jmp	.L27
.L26:
	.loc 2 122 26 discriminator 5
	movl	$0, %eax
.L27:
	.loc 2 122 26 discriminator 7
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 122 23 is_stmt 1 discriminator 7
	cmpl	$9, %eax
	ja	.L24
	.loc 2 124 28
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	.loc 2 125 11
	addl	$1, -76(%rbp)
	jmp	.L23
.L24:
.LBB3:
	.loc 2 130 37
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	.loc 2 130 15
	movl	-100(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -72(%rbp)
	.loc 2 131 35
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	.loc 2 131 18
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 134 30
	movq	-112(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 134 24
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 137 18
	movl	$0, optind(%rip)
	.loc 2 139 15
	movq	-32(%rbp), %rsi
	movl	-72(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -68(%rbp)
	.loc 2 140 23
	movl	optind(%rip), %eax
	subl	$1, %eax
	.loc 2 140 13
	addl	%eax, -76(%rbp)
	.loc 2 142 11
	cmpl	$110, -68(%rbp)
	je	.L28
	cmpl	$110, -68(%rbp)
	jg	.L29
	cmpl	$-1, -68(%rbp)
	je	.L51
	cmpl	$0, -68(%rbp)
	jns	.L29
	cmpl	$-131, -68(%rbp)
	je	.L31
	cmpl	$-130, -68(%rbp)
	je	.L32
	jmp	.L29
.L28:
	.loc 2 145 32
	movq	optarg(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 146 15
	jmp	.L33
.L32:
	.loc 2 151 13
	movl	$0, %edi
	call	usage
.L31:
	.loc 2 153 13
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC32(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L29:
	.loc 2 156 15
	movl	$125, %edi
	call	usage
.L51:
	.loc 2 149 15
	nop
.L33:
	.loc 2 160 14
	cmpl	$-1, -68(%rbp)
	je	.L52
.L23:
.LBE3:
.LBE2:
	.loc 2 118 3 discriminator 1
	movl	-76(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L35
	jmp	.L34
.L52:
.LBB5:
.LBB4:
	.loc 2 161 13
	nop
.L34:
.LBE4:
.LBE5:
	.loc 2 165 6
	cmpq	$0, -48(%rbp)
	je	.L36
.LBB6:
	.loc 2 172 30
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC17(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtol@PLT
	.loc 2 172 10
	cmpl	$1, %eax
	jbe	.L37
.LBB7:
	.loc 2 173 9
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L37:
.LBE7:
	.loc 2 175 20
	movq	-56(%rbp), %rax
	.loc 2 175 18
	cmpq	$-39, %rax
	jl	.L38
	.loc 2 175 20 discriminator 1
	movq	-56(%rbp), %rax
	movl	$39, %edx
	cmpq	$39, %rax
	cmovg	%rdx, %rax
	jmp	.L39
.L38:
	.loc 2 175 18 discriminator 2
	movl	$-39, %eax
.L39:
	.loc 2 175 18 is_stmt 0 discriminator 4
	movl	%eax, -80(%rbp)
.L36:
.LBE6:
	.loc 2 178 6 is_stmt 1
	movl	-76(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jne	.L40
	.loc 2 180 10
	cmpq	$0, -48(%rbp)
	je	.L41
	.loc 2 182 24
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	.loc 2 182 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 183 11
	movl	$125, %edi
	call	usage
.L41:
	.loc 2 186 7
	call	__errno_location@PLT
	.loc 2 186 13
	movl	$0, (%rax)
	.loc 2 187 26
	movl	$0, %esi
	movl	$0, %edi
	call	getpriority@PLT
	movl	%eax, -64(%rbp)
	.loc 2 188 10
	cmpl	$-1, -64(%rbp)
	jne	.L42
	.loc 2 188 37 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 188 34 discriminator 1
	testl	%eax, %eax
	je	.L42
.LBB8:
	.loc 2 189 9
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L42:
.LBE8:
	.loc 2 190 7
	movl	-64(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC36(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 191 14
	movl	$0, %eax
	jmp	.L43
.L40:
	.loc 2 194 3
	call	__errno_location@PLT
	.loc 2 194 9
	movl	$0, (%rax)
	.loc 2 198 22
	movl	$0, %esi
	movl	$0, %edi
	call	getpriority@PLT
	movl	%eax, -64(%rbp)
	.loc 2 199 6
	cmpl	$-1, -64(%rbp)
	jne	.L44
	.loc 2 199 33 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 199 30 discriminator 1
	testl	%eax, %eax
	je	.L44
.LBB9:
	.loc 2 200 5
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L44:
.LBE9:
	.loc 2 201 9
	movl	-64(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	setpriority@PLT
	.loc 2 201 6
	testl	%eax, %eax
	sete	%al
	movb	%al, -81(%rbp)
	.loc 2 203 7
	movzbl	-81(%rbp), %eax
	xorl	$1, %eax
	.loc 2 203 6
	testb	%al, %al
	je	.L45
	.loc 2 206 38
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %r12
	.loc 2 206 31
	call	__errno_location@PLT
	.loc 2 205 7
	movl	(%rax), %ebx
	.loc 2 205 34
	call	__errno_location@PLT
	.loc 2 205 14
	movl	(%rax), %eax
	movl	%eax, %edi
	call	perm_related_errno
	.loc 2 205 7
	testb	%al, %al
	je	.L46
	.loc 2 205 7 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L47
.L46:
	.loc 2 205 7 discriminator 2
	movl	$125, %eax
.L47:
	.loc 2 205 7 discriminator 4
	movq	%r12, %rdx
	movl	%ebx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 212 11 is_stmt 1 discriminator 4
	movq	stderr(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 212 10 discriminator 4
	testl	%eax, %eax
	je	.L45
	.loc 2 213 16
	movl	$125, %eax
	jmp	.L43
.L45:
	.loc 2 216 25
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 216 20
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 216 15
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 216 3
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execvp@PLT
	.loc 2 218 21
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 218 51
	cmpl	$2, %eax
	jne	.L48
	.loc 2 218 51 is_stmt 0 discriminator 1
	movl	$127, %eax
	jmp	.L49
.L48:
	.loc 2 218 51 discriminator 2
	movl	$126, %eax
.L49:
	.loc 2 218 7 is_stmt 1 discriminator 4
	movl	%eax, -60(%rbp)
	.loc 2 219 37 discriminator 4
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 219 3 discriminator 4
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 219 13 discriminator 4
	call	__errno_location@PLT
	.loc 2 219 3 discriminator 4
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC38(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 220 10 discriminator 4
	movl	-60(%rbp), %eax
.L43:
	.loc 2 221 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
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
	.file 13 "/usr/include/time.h"
	.file 14 "/usr/include/signal.h"
	.file 15 "/usr/include/unistd.h"
	.file 16 "/usr/include/errno.h"
	.file 17 "src/version.h"
	.file 18 "./lib/exitfail.h"
	.file 19 "./lib/timespec.h"
	.file 20 "./lib/version-etc.h"
	.file 21 "./lib/progname.h"
	.file 22 "./lib/quotearg.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/resource.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/quote.h"
	.file 26 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x93b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF140
	.byte	0xc
	.long	.LASF141
	.long	.LASF142
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
	.long	.LASF143
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
	.uleb128 0xd
	.long	0x9c
	.long	0x3c6
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF66
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3b6
	.uleb128 0xf
	.long	.LASF67
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3b6
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF72
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x41b
	.uleb128 0xd
	.long	0x29c
	.long	0x432
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x422
	.uleb128 0x11
	.long	.LASF73
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x432
	.uleb128 0x11
	.long	.LASF74
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x432
	.uleb128 0x11
	.long	.LASF75
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x45e
	.uleb128 0x7
	.byte	0x8
	.long	0x9c
	.uleb128 0x11
	.long	.LASF76
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x45e
	.uleb128 0xf
	.long	.LASF77
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF78
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF79
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x296
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x4bc
	.uleb128 0x15
	.long	.LASF80
	.byte	0x7c
	.uleb128 0x15
	.long	.LASF81
	.byte	0x7d
	.uleb128 0x15
	.long	.LASF82
	.byte	0x7e
	.uleb128 0x15
	.long	.LASF83
	.byte	0x7f
	.byte	0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x29
	.byte	0x6
	.long	0x4e0
	.uleb128 0x16
	.long	.LASF85
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x2a
	.byte	0x6
	.long	0x4f5
	.uleb128 0x15
	.long	.LASF86
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x513
	.uleb128 0x18
	.long	.LASF87
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF88
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xa9
	.long	0x51e
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x513
	.uleb128 0xf
	.long	.LASF89
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x51e
	.uleb128 0xf
	.long	.LASF90
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x296
	.uleb128 0x19
	.long	.LASF104
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x590
	.uleb128 0x15
	.long	.LASF91
	.byte	0
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.uleb128 0x15
	.long	.LASF93
	.byte	0x2
	.uleb128 0x15
	.long	.LASF94
	.byte	0x3
	.uleb128 0x15
	.long	.LASF95
	.byte	0x4
	.uleb128 0x15
	.long	.LASF96
	.byte	0x5
	.uleb128 0x15
	.long	.LASF97
	.byte	0x6
	.uleb128 0x15
	.long	.LASF98
	.byte	0x7
	.uleb128 0x15
	.long	.LASF99
	.byte	0x8
	.uleb128 0x15
	.long	.LASF100
	.byte	0x9
	.uleb128 0x15
	.long	.LASF101
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x53b
	.uleb128 0x11
	.long	.LASF102
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x2e2
	.uleb128 0xd
	.long	0x590
	.long	0x5ad
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5a2
	.uleb128 0x11
	.long	.LASF103
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x5ad
	.uleb128 0x19
	.long	.LASF105
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0xbb
	.byte	0x6
	.long	0x5e4
	.uleb128 0x15
	.long	.LASF106
	.byte	0
	.uleb128 0x15
	.long	.LASF107
	.byte	0x1
	.uleb128 0x15
	.long	.LASF108
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	.LASF109
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x41c
	.uleb128 0xf
	.long	.LASF110
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF111
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF112
	.uleb128 0xf
	.long	.LASF113
	.byte	0x19
	.byte	0x19
	.byte	0x1f
	.long	0x608
	.uleb128 0x19
	.long	.LASF114
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x19
	.byte	0x6
	.long	0x64a
	.uleb128 0x15
	.long	.LASF115
	.byte	0
	.uleb128 0x15
	.long	.LASF116
	.byte	0x1
	.uleb128 0x15
	.long	.LASF117
	.byte	0x2
	.uleb128 0x15
	.long	.LASF118
	.byte	0x3
	.uleb128 0x15
	.long	.LASF119
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	0x3ab
	.long	0x65a
	.uleb128 0xe
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x64a
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x2
	.byte	0x3a
	.byte	0x1c
	.long	0x65a
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x2
	.byte	0x65
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d2
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x2
	.byte	0x65
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x2
	.byte	0x65
	.byte	0x18
	.long	0x45e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x2
	.byte	0x67
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x2
	.byte	0x68
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x2
	.byte	0x69
	.byte	0xf
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"ok"
	.byte	0x2
	.byte	0x6a
	.byte	0x8
	.long	0x7d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x1d
	.string	"i"
	.byte	0x2
	.byte	0x6b
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1a
	.long	.LASF126
	.byte	0x2
	.byte	0xda
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0
	.long	0x75d
	.uleb128 0x1d
	.string	"s"
	.byte	0x2
	.byte	0x78
	.byte	0x13
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1d
	.string	"c"
	.byte	0x2
	.byte	0x81
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x2
	.byte	0x82
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x2
	.byte	0x83
	.byte	0x12
	.long	0x45e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x7af
	.uleb128 0x14
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x2
	.byte	0xaa
	.byte	0xc
	.long	0x78d
	.uleb128 0x18
	.long	.LASF129
	.sleb128 -39
	.uleb128 0x15
	.long	.LASF130
	.byte	0x27
	.byte	0
	.uleb128 0x1d
	.string	"tmp"
	.byte	0x2
	.byte	0xab
	.byte	0x10
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF131
	.uleb128 0x22
	.long	.LASF144
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0x7d2
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x80b
	.uleb128 0x23
	.string	"err"
	.byte	0x2
	.byte	0x5f
	.byte	0x19
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF133
	.byte	0x2
	.byte	0x43
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x839
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x2
	.byte	0x43
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF145
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x8de
	.uleb128 0x26
	.long	.LASF135
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.long	.LASF136
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x894
	.uleb128 0x28
	.long	.LASF135
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x296
	.byte	0
	.uleb128 0x28
	.long	.LASF137
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x296
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x869
	.uleb128 0x29
	.long	.LASF136
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x8ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.long	.LASF137
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x29
	.long	.LASF138
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x8f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.long	.LASF139
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x894
	.long	0x8ee
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x8de
	.uleb128 0x7
	.byte	0x8
	.long	0x894
	.uleb128 0x2a
	.long	.LASF146
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF147
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
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
	.uleb128 0xb
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
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
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
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF99:
	.string	"locale_quoting_style"
.LASF25:
	.string	"_chain"
.LASF83:
	.string	"EXIT_ENOENT"
.LASF88:
	.string	"GETOPT_VERSION_CHAR"
.LASF122:
	.string	"longopts"
.LASF104:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF86:
	.string	"LOG10_TIMESPEC_HZ"
.LASF31:
	.string	"_shortbuf"
.LASF92:
	.string	"shell_quoting_style"
.LASF87:
	.string	"GETOPT_HELP_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF116:
	.string	"LONGINT_OVERFLOW"
.LASF46:
	.string	"stdout"
.LASF117:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF68:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF103:
	.string	"quoting_style_vals"
.LASF125:
	.string	"adjustment_given"
.LASF135:
	.string	"program"
.LASF98:
	.string	"escape_quoting_style"
.LASF129:
	.string	"MIN_ADJUSTMENT"
.LASF91:
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
.LASF96:
	.string	"c_quoting_style"
.LASF43:
	.string	"_IO_codecvt"
.LASF51:
	.string	"_sys_errlist"
.LASF77:
	.string	"program_invocation_name"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF80:
	.string	"EXIT_TIMEDOUT"
.LASF144:
	.string	"perm_related_errno"
.LASF82:
	.string	"EXIT_CANNOT_INVOKE"
.LASF85:
	.string	"TIMESPEC_HZ"
.LASF95:
	.string	"shell_escape_always_quoting_style"
.LASF71:
	.string	"timezone"
.LASF90:
	.string	"program_name"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF130:
	.string	"MAX_ADJUSTMENT"
.LASF1:
	.string	"unsigned int"
.LASF37:
	.string	"_freeres_buf"
.LASF107:
	.string	"PRIO_PGRP"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF63:
	.string	"name"
.LASF48:
	.string	"sys_nerr"
.LASF140:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF101:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF111:
	.string	"error_one_per_line"
.LASF124:
	.string	"adjustment"
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
.LASF127:
	.string	"fake_argc"
.LASF114:
	.string	"strtol_error"
.LASF89:
	.string	"version_etc_copyright"
.LASF34:
	.string	"_codecvt"
.LASF128:
	.string	"fake_argv"
.LASF57:
	.string	"optarg"
.LASF72:
	.string	"getdate_err"
.LASF58:
	.string	"optind"
.LASF81:
	.string	"EXIT_CANCELED"
.LASF18:
	.string	"_IO_write_end"
.LASF143:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF109:
	.string	"error_print_progname"
.LASF105:
	.string	"__priority_which"
.LASF138:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF54:
	.string	"time_t"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF115:
	.string	"LONGINT_OK"
.LASF97:
	.string	"c_maybe_quoting_style"
.LASF131:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF126:
	.string	"exit_status"
.LASF147:
	.string	"initialize_exit_failure"
.LASF137:
	.string	"node"
.LASF123:
	.string	"current_niceness"
.LASF5:
	.string	"short int"
.LASF62:
	.string	"option"
.LASF113:
	.string	"quote_quoting_options"
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
.LASF84:
	.string	"exit_failure"
.LASF94:
	.string	"shell_escape_quoting_style"
.LASF102:
	.string	"quoting_style_args"
.LASF60:
	.string	"optopt"
.LASF70:
	.string	"daylight"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF93:
	.string	"shell_always_quoting_style"
.LASF141:
	.string	"src/nice.c"
.LASF100:
	.string	"clocale_quoting_style"
.LASF59:
	.string	"opterr"
.LASF9:
	.string	"__off64_t"
.LASF112:
	.string	"quoting_options"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF136:
	.string	"infomap"
.LASF64:
	.string	"has_arg"
.LASF133:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF10:
	.string	"__time_t"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF121:
	.string	"argv"
.LASF67:
	.string	"__daylight"
.LASF134:
	.string	"status"
.LASF142:
	.string	"/root/coreutils"
.LASF118:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF106:
	.string	"PRIO_PROCESS"
.LASF22:
	.string	"_IO_backup_base"
.LASF108:
	.string	"PRIO_USER"
.LASF110:
	.string	"error_message_count"
.LASF139:
	.string	"lc_messages"
.LASF120:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF119:
	.string	"LONGINT_INVALID"
.LASF146:
	.string	"emit_mandatory_arg_note"
.LASF66:
	.string	"__tzname"
.LASF132:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF145:
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
