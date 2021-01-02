	.file	"nohup.c"
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
	jmp	.L5
.L7:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L5:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L6
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L7
.L6:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L8
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L8:
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
	je	.L9
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L9
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L9:
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
	jne	.L10
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L11
.L10:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L11:
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
	je	.L12
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L12:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.section	.rodata
	.align 8
.LC18:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC19:
	.string	"Usage: %s COMMAND [ARG]...\n  or:  %s OPTION\n"
	.align 8
.LC20:
	.string	"Run COMMAND, ignoring hangup signals.\n\n"
	.align 8
.LC21:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC22:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC23:
	.ascii	"\nIf standard input is a terminal, "
	.string	"redirect it from an unreadable file.\nIf standard output is a terminal, append output to 'nohup.out' if possible,\n'$HOME/nohup.out' otherwise.\nIf standard error is a terminal, redirect it to standard output.\nTo save output to FILE, use '%s COMMAND > FILE'.\n"
	.align 8
.LC24:
	.string	"\nNOTE: your shell may have its own version of %s, which usually supersedes\nthe version described here.  Please refer to your shell's documentation\nfor details about the options it supports.\n"
.LC25:
	.string	"nohup"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/nohup.c"
	.loc 2 45 1 is_stmt 1
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
	.loc 2 46 6
	cmpl	$0, -20(%rbp)
	je	.L14
	.loc 2 47 5
	movq	program_name(%rip), %rbx
	leaq	.LC18(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L15
.L14:
	.loc 2 50 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 50 15
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	.loc 2 50 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 56 7
	movq	stdout(%rip), %rbx
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 60 7
	movq	stdout(%rip), %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 61 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 62 7
	movq	program_name(%rip), %rbx
	.loc 2 62 15
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	.loc 2 62 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 69 15
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	.loc 2 69 7
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 70 7
	leaq	.LC25(%rip), %rdi
	call	emit_ancillary_info
.L15:
	.loc 2 72 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC26:
	.string	"/usr/local/share/locale"
.LC27:
	.string	"POSIXLY_CORRECT"
.LC28:
	.string	"Jim Meyering"
.LC29:
	.string	"missing operand"
.LC30:
	.string	"/dev/null"
	.align 8
.LC31:
	.string	"failed to render standard input unusable"
.LC32:
	.string	"ignoring input"
.LC33:
	.string	"nohup.out"
.LC34:
	.string	"HOME"
.LC35:
	.string	"failed to open %s"
	.align 8
.LC36:
	.string	"ignoring input and appending output to %s"
.LC37:
	.string	"appending output to %s"
	.align 8
.LC38:
	.string	"ignoring input and redirecting stderr to stdout"
.LC39:
	.string	"redirecting stderr to stdout"
	.align 8
.LC40:
	.string	"failed to redirect standard error"
.LC41:
	.string	"failed to run command %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB47:
	.loc 2 77 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 2 78 7
	movl	$1, -88(%rbp)
	.loc 2 79 7
	movl	$2, -84(%rbp)
	.loc 2 87 3
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 88 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 89 3
	leaq	.LC26(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 90 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 96 28
	leaq	.LC27(%rip), %rdi
	call	getenv@PLT
	.loc 2 97 50
	testq	%rax, %rax
	je	.L17
	.loc 2 97 50 is_stmt 0 discriminator 1
	movl	$127, %eax
	jmp	.L18
.L17:
	.loc 2 97 50 discriminator 2
	movl	$125, %eax
.L18:
	.loc 2 96 25 is_stmt 1
	movl	%eax, -80(%rbp)
	.loc 2 98 3
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	call	initialize_exit_failure
	.loc 2 99 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 101 3
	movq	Version(%rip), %rcx
	movq	-112(%rbp), %rsi
	movl	-100(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC28(%rip), %rdx
	pushq	%rdx
	leaq	usage(%rip), %rdx
	pushq	%rdx
	movl	$0, %r9d
	movq	%rcx, %r8
	leaq	.LC11(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	parse_gnu_standard_options_only@PLT
	addq	$32, %rsp
	.loc 2 105 12
	movl	optind(%rip), %eax
	.loc 2 105 6
	cmpl	%eax, -100(%rbp)
	jg	.L19
	.loc 2 107 20
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	.loc 2 107 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 108 7
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	call	usage
.L19:
	.loc 2 111 20
	movl	$0, %edi
	call	isatty@PLT
	.loc 2 111 18
	testl	%eax, %eax
	setne	%al
	movb	%al, -92(%rbp)
	.loc 2 112 24
	movl	$1, %edi
	call	isatty@PLT
	.loc 2 112 22
	testl	%eax, %eax
	setne	%al
	movb	%al, -91(%rbp)
	.loc 2 113 23
	movzbl	-91(%rbp), %eax
	xorl	$1, %eax
	.loc 2 113 43
	testb	%al, %al
	je	.L20
	.loc 2 113 46 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 113 43 discriminator 1
	cmpl	$9, %eax
	jne	.L20
	.loc 2 113 43 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L21
.L20:
	.loc 2 113 43 discriminator 4
	movl	$0, %eax
.L21:
	.loc 2 113 20 is_stmt 1 discriminator 6
	movb	%al, -90(%rbp)
	andb	$1, -90(%rbp)
	.loc 2 114 24 discriminator 6
	movl	$2, %edi
	call	isatty@PLT
	.loc 2 114 22 discriminator 6
	testl	%eax, %eax
	setne	%al
	movb	%al, -89(%rbp)
	.loc 2 119 6 discriminator 6
	cmpb	$0, -92(%rbp)
	je	.L22
	.loc 2 121 11
	movl	$0, %ecx
	movl	$1, %edx
	leaq	.LC30(%rip), %rsi
	movl	$0, %edi
	call	fd_reopen@PLT
	.loc 2 121 10
	testl	%eax, %eax
	jns	.L23
	.loc 2 123 16
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 122 39
	call	__errno_location@PLT
	.loc 2 122 9
	movl	(%rax), %ecx
	movl	-80(%rbp), %eax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
.L23:
	.loc 2 124 11
	movzbl	-91(%rbp), %eax
	xorl	$1, %eax
	.loc 2 124 10
	testb	%al, %al
	je	.L22
	.loc 2 124 34 discriminator 1
	movzbl	-89(%rbp), %eax
	xorl	$1, %eax
	.loc 2 124 31 discriminator 1
	testb	%al, %al
	je	.L22
	.loc 2 125 22
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 125 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L22:
	.loc 2 132 6
	cmpb	$0, -91(%rbp)
	jne	.L24
	.loc 2 132 26 discriminator 1
	cmpb	$0, -89(%rbp)
	je	.L25
	.loc 2 132 49 discriminator 2
	cmpb	$0, -90(%rbp)
	je	.L25
.L24:
.LBB2:
	.loc 2 134 13
	movq	$0, -48(%rbp)
	.loc 2 135 19
	leaq	.LC33(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 136 11
	movl	$1089, -76(%rbp)
	.loc 2 137 14
	movl	$384, -72(%rbp)
	.loc 2 138 28
	movl	-72(%rbp), %eax
	notl	%eax
	movl	%eax, %edi
	call	umask@PLT
	movl	%eax, -68(%rbp)
	.loc 2 141 17
	cmpb	$0, -91(%rbp)
	je	.L26
	.loc 2 140 19
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	fd_reopen@PLT
	jmp	.L27
.L26:
	.loc 2 141 19 discriminator 1
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
.L27:
	.loc 2 139 14
	movl	%eax, -88(%rbp)
	.loc 2 143 10
	cmpl	$0, -88(%rbp)
	jns	.L28
.LBB3:
	.loc 2 145 29
	call	__errno_location@PLT
	.loc 2 145 15
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	.loc 2 146 30
	leaq	.LC34(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -32(%rbp)
	.loc 2 147 14
	cmpq	$0, -32(%rbp)
	je	.L29
	.loc 2 149 25
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -48(%rbp)
	.loc 2 152 25
	cmpb	$0, -91(%rbp)
	je	.L30
	.loc 2 151 27
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	fd_reopen@PLT
	jmp	.L31
.L30:
	.loc 2 152 27 discriminator 1
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
.L31:
	.loc 2 150 22
	movl	%eax, -88(%rbp)
.L29:
	.loc 2 154 14
	cmpl	$0, -88(%rbp)
	jns	.L32
.LBB4:
	.loc 2 156 34
	call	__errno_location@PLT
	.loc 2 156 19
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	.loc 2 157 15
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 157 38
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 157 15
	movl	-64(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 158 18
	cmpq	$0, -48(%rbp)
	je	.L33
	.loc 2 159 17
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 159 41
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 159 17
	movl	-60(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L33:
	.loc 2 161 22
	movl	-80(%rbp), %eax
	jmp	.L34
.L32:
.LBE4:
	.loc 2 163 16
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.L28:
.LBE3:
	.loc 2 166 7
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	umask@PLT
	.loc 2 167 7
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 168 14
	cmpb	$0, -92(%rbp)
	je	.L35
	.loc 2 168 14 is_stmt 0 discriminator 1
	leaq	.LC36(%rip), %rax
	jmp	.L36
.L35:
	.loc 2 168 14 discriminator 2
	leaq	.LC37(%rip), %rax
.L36:
	.loc 2 168 14 discriminator 4
	movq	%rax, %rdi
	call	gettext@PLT
	.loc 2 167 7 is_stmt 1 discriminator 4
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 172 7 discriminator 4
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L25:
.LBE2:
	.loc 2 176 6
	cmpb	$0, -89(%rbp)
	je	.L37
	.loc 2 182 25
	movl	$3, %edx
	movl	$1030, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	movl	%eax, -84(%rbp)
	.loc 2 185 11
	movzbl	-91(%rbp), %eax
	xorl	$1, %eax
	.loc 2 185 10
	testb	%al, %al
	je	.L38
	.loc 2 187 16
	cmpb	$0, -92(%rbp)
	je	.L39
	.loc 2 187 16 is_stmt 0 discriminator 1
	leaq	.LC38(%rip), %rax
	jmp	.L40
.L39:
	.loc 2 187 16 discriminator 2
	leaq	.LC39(%rip), %rax
.L40:
	.loc 2 187 16 discriminator 4
	movq	%rax, %rdi
	call	gettext@PLT
	.loc 2 186 9 is_stmt 1 discriminator 4
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L38:
	.loc 2 191 11
	movl	-88(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	dup2@PLT
	.loc 2 191 10
	testl	%eax, %eax
	jns	.L41
	.loc 2 193 16
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 192 39
	call	__errno_location@PLT
	.loc 2 192 9
	movl	(%rax), %ecx
	movl	-80(%rbp), %eax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
.L41:
	.loc 2 195 10
	cmpb	$0, -90(%rbp)
	je	.L37
	.loc 2 196 9
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L37:
	.loc 2 205 7
	movq	stderr(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 205 6
	testl	%eax, %eax
	je	.L42
	.loc 2 206 12
	movl	-80(%rbp), %eax
	jmp	.L34
.L42:
	.loc 2 208 3
	movl	$1, %esi
	movl	$1, %edi
	call	signal@PLT
	.loc 2 210 21
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 210 10
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 211 3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execvp@PLT
	.loc 2 212 21
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 212 51
	cmpl	$2, %eax
	jne	.L43
	.loc 2 212 51 is_stmt 0 discriminator 1
	movl	$127, %eax
	jmp	.L44
.L43:
	.loc 2 212 51 discriminator 2
	movl	$126, %eax
.L44:
	.loc 2 212 7 is_stmt 1 discriminator 4
	movl	%eax, -56(%rbp)
	.loc 2 213 21 discriminator 4
	call	__errno_location@PLT
	.loc 2 213 7 discriminator 4
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	.loc 2 221 7 discriminator 4
	movl	-84(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	dup2@PLT
	.loc 2 221 6 discriminator 4
	cmpl	$2, %eax
	jne	.L45
	.loc 2 222 5
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 222 28
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 222 5
	movl	-52(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L45:
	.loc 2 224 10
	movl	-56(%rbp), %eax
.L34:
	.loc 2 225 1
	movq	-8(%rbp), %rbx
	leave
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
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/signal.h"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/unistd.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/include/errno.h"
	.file 16 "src/version.h"
	.file 17 "./lib/exitfail.h"
	.file 18 "./lib/version-etc.h"
	.file 19 "./lib/progname.h"
	.file 20 "./lib/quotearg.h"
	.file 21 "./lib/error.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x82e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF128
	.byte	0xc
	.long	.LASF129
	.long	.LASF130
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
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x99
	.byte	0x1b
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
	.long	.LASF123
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
	.long	0x84
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
	.long	0x90
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
	.long	.LASF131
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
	.byte	0x45
	.byte	0x12
	.long	0x78
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
	.uleb128 0x2
	.long	.LASF57
	.byte	0xb
	.byte	0x48
	.byte	0x10
	.long	0x345
	.uleb128 0x7
	.byte	0x8
	.long	0x34b
	.uleb128 0x12
	.long	0x356
	.uleb128 0x13
	.long	0x65
	.byte	0
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x8
	.long	0x356
	.uleb128 0xd
	.long	0x29c
	.long	0x36d
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x35d
	.uleb128 0x11
	.long	.LASF58
	.byte	0xb
	.value	0x11e
	.byte	0x1a
	.long	0x36d
	.uleb128 0x11
	.long	.LASF59
	.byte	0xb
	.value	0x11f
	.byte	0x1a
	.long	0x36d
	.uleb128 0xd
	.long	0x9c
	.long	0x39c
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF60
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x38c
	.uleb128 0xf
	.long	.LASF61
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF62
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF63
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x38c
	.uleb128 0xf
	.long	.LASF64
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF65
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF66
	.byte	0xc
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x11
	.long	.LASF67
	.byte	0xd
	.value	0x21f
	.byte	0xf
	.long	0x3fe
	.uleb128 0x7
	.byte	0x8
	.long	0x9c
	.uleb128 0x11
	.long	.LASF68
	.byte	0xd
	.value	0x221
	.byte	0xf
	.long	0x3fe
	.uleb128 0xf
	.long	.LASF69
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF70
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF71
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xf
	.byte	0x2d
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF74
	.byte	0xf
	.byte	0x2e
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF75
	.byte	0x10
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
	.long	0x48c
	.uleb128 0x16
	.long	.LASF76
	.byte	0x7c
	.uleb128 0x16
	.long	.LASF77
	.byte	0x7d
	.uleb128 0x16
	.long	.LASF78
	.byte	0x7e
	.uleb128 0x16
	.long	.LASF79
	.byte	0x7f
	.byte	0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x11
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0xd
	.long	0xa9
	.long	0x4a3
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x498
	.uleb128 0xf
	.long	.LASF81
	.byte	0x12
	.byte	0x19
	.byte	0x13
	.long	0x4a3
	.uleb128 0xf
	.long	.LASF82
	.byte	0x13
	.byte	0x20
	.byte	0x14
	.long	0x296
	.uleb128 0x17
	.long	.LASF132
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x20
	.byte	0x6
	.long	0x515
	.uleb128 0x16
	.long	.LASF83
	.byte	0
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.uleb128 0x16
	.long	.LASF85
	.byte	0x2
	.uleb128 0x16
	.long	.LASF86
	.byte	0x3
	.uleb128 0x16
	.long	.LASF87
	.byte	0x4
	.uleb128 0x16
	.long	.LASF88
	.byte	0x5
	.uleb128 0x16
	.long	.LASF89
	.byte	0x6
	.uleb128 0x16
	.long	.LASF90
	.byte	0x7
	.uleb128 0x16
	.long	.LASF91
	.byte	0x8
	.uleb128 0x16
	.long	.LASF92
	.byte	0x9
	.uleb128 0x16
	.long	.LASF93
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x4c0
	.uleb128 0x11
	.long	.LASF94
	.byte	0x14
	.value	0x10b
	.byte	0x1a
	.long	0x2e2
	.uleb128 0xd
	.long	0x515
	.long	0x532
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x527
	.uleb128 0x11
	.long	.LASF95
	.byte	0x14
	.value	0x10c
	.byte	0x21
	.long	0x532
	.uleb128 0xf
	.long	.LASF96
	.byte	0x15
	.byte	0x32
	.byte	0xf
	.long	0x357
	.uleb128 0xf
	.long	.LASF97
	.byte	0x15
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF98
	.byte	0x15
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x26
	.byte	0x3
	.long	0x57d
	.uleb128 0x16
	.long	.LASF99
	.byte	0x7f
	.byte	0
	.uleb128 0x18
	.long	.LASF119
	.byte	0x2
	.byte	0x4c
	.byte	0x1
	.long	0x65
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x712
	.uleb128 0x19
	.long	.LASF100
	.byte	0x2
	.byte	0x4c
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x19
	.long	.LASF101
	.byte	0x2
	.byte	0x4c
	.byte	0x18
	.long	0x3fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x2
	.byte	0x4e
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x2
	.byte	0x4f
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.long	.LASF104
	.byte	0x2
	.byte	0x50
	.byte	0x8
	.long	0x712
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x2
	.byte	0x51
	.byte	0x8
	.long	0x712
	.uleb128 0x3
	.byte	0x91
	.sleb128 -107
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x2
	.byte	0x52
	.byte	0x8
	.long	0x712
	.uleb128 0x3
	.byte	0x91
	.sleb128 -106
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x2
	.byte	0x53
	.byte	0x8
	.long	0x712
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x2
	.byte	0x54
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.string	"cmd"
	.byte	0x2
	.byte	0xd2
	.byte	0xa
	.long	0x3fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x2
	.byte	0xd4
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x2
	.byte	0xd5
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x2
	.byte	0x86
	.byte	0xd
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x2
	.byte	0x87
	.byte	0x13
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x2
	.byte	0x88
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x2
	.byte	0x89
	.byte	0xe
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x2
	.byte	0x8a
	.byte	0xe
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x2
	.byte	0x91
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x2
	.byte	0x92
	.byte	0x17
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x2
	.byte	0x9c
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF118
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x2
	.byte	0x2c
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x747
	.uleb128 0x19
	.long	.LASF121
	.byte	0x2
	.byte	0x2c
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1e
	.long	.LASF133
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ec
	.uleb128 0x1f
	.long	.LASF122
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x20
	.long	.LASF124
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x7a2
	.uleb128 0x21
	.long	.LASF122
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x296
	.byte	0
	.uleb128 0x21
	.long	.LASF125
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x296
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x777
	.uleb128 0x22
	.long	.LASF124
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x7fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF125
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	.LASF126
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x801
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	.LASF127
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x7a2
	.long	0x7fc
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x7ec
	.uleb128 0x7
	.byte	0x8
	.long	0x7a2
	.uleb128 0x23
	.long	.LASF134
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF121
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"exit_failure"
.LASF9:
	.string	"__off_t"
.LASF106:
	.string	"stdout_is_closed"
.LASF13:
	.string	"_IO_read_ptr"
.LASF91:
	.string	"locale_quoting_style"
.LASF25:
	.string	"_chain"
.LASF79:
	.string	"EXIT_ENOENT"
.LASF132:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF84:
	.string	"shell_quoting_style"
.LASF19:
	.string	"_IO_buf_base"
.LASF57:
	.string	"__sighandler_t"
.LASF56:
	.string	"long long unsigned int"
.LASF34:
	.string	"_codecvt"
.LASF62:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF95:
	.string	"quoting_style_vals"
.LASF122:
	.string	"program"
.LASF90:
	.string	"escape_quoting_style"
.LASF8:
	.string	"__mode_t"
.LASF83:
	.string	"literal_quoting_style"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF59:
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
.LASF74:
	.string	"program_invocation_short_name"
.LASF88:
	.string	"c_quoting_style"
.LASF43:
	.string	"_IO_codecvt"
.LASF51:
	.string	"_sys_errlist"
.LASF73:
	.string	"program_invocation_name"
.LASF103:
	.string	"saved_stderr_fd"
.LASF33:
	.string	"_offset"
.LASF76:
	.string	"EXIT_TIMEDOUT"
.LASF78:
	.string	"EXIT_CANNOT_INVOKE"
.LASF110:
	.string	"saved_errno"
.LASF87:
	.string	"shell_escape_always_quoting_style"
.LASF65:
	.string	"timezone"
.LASF115:
	.string	"umask_value"
.LASF82:
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
.LASF17:
	.string	"_IO_write_ptr"
.LASF48:
	.string	"sys_nerr"
.LASF128:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF93:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF69:
	.string	"optarg"
.LASF98:
	.string	"error_one_per_line"
.LASF111:
	.string	"in_home"
.LASF75:
	.string	"Version"
.LASF21:
	.string	"_IO_save_base"
.LASF102:
	.string	"out_fd"
.LASF68:
	.string	"environ"
.LASF105:
	.string	"redirecting_stdout"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF46:
	.string	"stdout"
.LASF81:
	.string	"version_etc_copyright"
.LASF108:
	.string	"exit_internal_failure"
.LASF116:
	.string	"home"
.LASF129:
	.string	"src/nohup.c"
.LASF66:
	.string	"getdate_err"
.LASF70:
	.string	"optind"
.LASF77:
	.string	"EXIT_CANCELED"
.LASF18:
	.string	"_IO_write_end"
.LASF131:
	.string	"_IO_lock_t"
.LASF123:
	.string	"_IO_FILE"
.LASF96:
	.string	"error_print_progname"
.LASF126:
	.string	"map_prog"
.LASF67:
	.string	"__environ"
.LASF61:
	.string	"__daylight"
.LASF28:
	.string	"_old_offset"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF89:
	.string	"c_maybe_quoting_style"
.LASF118:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF109:
	.string	"exit_status"
.LASF134:
	.string	"initialize_exit_failure"
.LASF125:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF112:
	.string	"file"
.LASF50:
	.string	"_sys_nerr"
.LASF30:
	.string	"_vtable_offset"
.LASF63:
	.string	"tzname"
.LASF41:
	.string	"FILE"
.LASF86:
	.string	"shell_escape_quoting_style"
.LASF94:
	.string	"quoting_style_args"
.LASF72:
	.string	"optopt"
.LASF64:
	.string	"daylight"
.LASF117:
	.string	"saved_errno2"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF85:
	.string	"shell_always_quoting_style"
.LASF114:
	.string	"mode"
.LASF99:
	.string	"POSIX_NOHUP_FAILURE"
.LASF92:
	.string	"clocale_quoting_style"
.LASF71:
	.string	"opterr"
.LASF10:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF58:
	.string	"_sys_siglist"
.LASF124:
	.string	"infomap"
.LASF107:
	.string	"redirecting_stderr"
.LASF120:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF101:
	.string	"argv"
.LASF121:
	.string	"status"
.LASF130:
	.string	"/root/coreutils"
.LASF54:
	.string	"mode_t"
.LASF22:
	.string	"_IO_backup_base"
.LASF104:
	.string	"ignoring_input"
.LASF113:
	.string	"flags"
.LASF97:
	.string	"error_message_count"
.LASF127:
	.string	"lc_messages"
.LASF100:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF60:
	.string	"__tzname"
.LASF119:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF133:
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
