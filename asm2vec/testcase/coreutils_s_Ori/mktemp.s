	.file	"mktemp.c"
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
	.section	.rodata
.LC18:
	.string	"tmp.XXXXXXXXXX"
	.section	.data.rel.local,"aw"
	.align 8
	.type	default_template, @object
	.size	default_template, 8
default_template:
	.quad	.LC18
	.section	.rodata
.LC19:
	.string	"directory"
.LC20:
	.string	"quiet"
.LC21:
	.string	"dry-run"
.LC22:
	.string	"suffix"
.LC23:
	.string	"tmpdir"
.LC24:
	.string	"help"
.LC25:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 256
longopts:
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC23
	.long	2
	.zero	4
	.quad	0
	.long	112
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
	.string	"Usage: %s [OPTION]... [TEMPLATE]\n"
	.align 8
.LC28:
	.string	"Create a temporary file or directory, safely, and print its name.\nTEMPLATE must contain at least 3 consecutive 'X's in last component.\nIf TEMPLATE is not specified, use tmp.XXXXXXXXXX, and --tmpdir is implied.\n"
	.align 8
.LC29:
	.string	"Files are created u+rw, and directories u+rwx, minus umask restrictions.\n"
	.align 8
.LC30:
	.string	"  -d, --directory     create a directory, not a file\n  -u, --dry-run       do not create anything; merely print a name (unsafe)\n  -q, --quiet         suppress diagnostics about file/dir-creation failure\n"
	.align 8
.LC31:
	.string	"      --suffix=SUFF   append SUFF to TEMPLATE; SUFF must not contain a slash.\n                        This option is implied if TEMPLATE does not end in X\n"
	.align 8
.LC32:
	.ascii	"  -p DIR, --tmpdir[=DIR]  interpret TEMPLATE relative to DIR"
	.ascii	"; if DIR is not\n                        specif"
	.string	"ied, use $TMPDIR if set, else /tmp.  With\n                        this option, TEMPLATE must not be an absolute name;\n                        unlike with -t, TEMPLATE may contain slashes, but\n                        mktemp creates only the final component\n"
	.align 8
.LC33:
	.string	"  -t                  interpret TEMPLATE as a single file name component,\n                        relative to a directory: $TMPDIR, if set; else the\n                        directory specified via -p; else /tmp [deprecated]\n"
	.align 8
.LC34:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC35:
	.string	"      --version  output version information and exit\n"
.LC36:
	.string	"mktemp"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/mktemp.c"
	.loc 2 62 1 is_stmt 1
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
	.loc 2 63 6
	cmpl	$0, -20(%rbp)
	je	.L11
	.loc 2 64 5
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
	jmp	.L12
.L11:
	.loc 2 67 7
	movq	program_name(%rip), %rbx
	.loc 2 67 15
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	.loc 2 67 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 68 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 73 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 76 7
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc_unlocked@PLT
	.loc 2 77 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 82 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 86 7
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 93 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 98 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 99 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 100 7
	leaq	.LC36(%rip), %rdi
	call	emit_ancillary_info
.L12:
	.loc 2 103 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	count_consecutive_X_s, @function
count_consecutive_X_s:
.LFB47:
	.loc 2 108 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 109 10
	movq	$0, -8(%rbp)
	.loc 2 110 3
	jmp	.L14
.L16:
	.loc 2 111 5 discriminator 3
	addq	$1, -8(%rbp)
	.loc 2 110 38 discriminator 3
	subq	$1, -32(%rbp)
.L14:
	.loc 2 110 3 discriminator 1
	cmpq	$0, -32(%rbp)
	je	.L15
	.loc 2 110 19 discriminator 2
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 110 15 discriminator 2
	cmpb	$88, %al
	je	.L16
.L15:
	.loc 2 112 10
	movq	-8(%rbp), %rax
	.loc 2 113 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	count_consecutive_X_s, .-count_consecutive_X_s
	.type	mkstemp_len, @function
mkstemp_len:
.LFB48:
	.loc 2 117 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, %eax
	movb	%al, -28(%rbp)
	.loc 2 118 10
	cmpb	$0, -28(%rbp)
	je	.L19
	.loc 2 118 10 is_stmt 0 discriminator 1
	movl	$2, %ecx
	jmp	.L20
.L19:
	.loc 2 118 10 discriminator 2
	movl	$0, %ecx
.L20:
	.loc 2 118 10 discriminator 4
	movq	-16(%rbp), %rax
	movl	%eax, %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rdi
	call	gen_tempname_len@PLT
	.loc 2 120 1 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	mkstemp_len, .-mkstemp_len
	.type	mkdtemp_len, @function
mkdtemp_len:
.LFB49:
	.loc 2 124 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, %eax
	movb	%al, -28(%rbp)
	.loc 2 125 10
	cmpb	$0, -28(%rbp)
	je	.L23
	.loc 2 125 10 is_stmt 0 discriminator 1
	movl	$2, %ecx
	jmp	.L24
.L23:
	.loc 2 125 10 discriminator 2
	movl	$1, %ecx
.L24:
	.loc 2 125 10 discriminator 4
	movq	-16(%rbp), %rax
	movl	%eax, %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rdi
	call	gen_tempname_len@PLT
	.loc 2 127 1 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	mkdtemp_len, .-mkdtemp_len
	.local	stdout_closed
	.comm	stdout_closed,1,1
	.type	maybe_close_stdout, @function
maybe_close_stdout:
.LFB50:
	.loc 2 138 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 139 7
	movzbl	stdout_closed(%rip), %eax
	xorl	$1, %eax
	.loc 2 139 6
	testb	%al, %al
	je	.L27
	.loc 2 140 5
	call	close_stdout@PLT
	.loc 2 143 1
	jmp	.L29
.L27:
	.loc 2 141 12
	movq	stderr(%rip), %rax
	movq	%rax, %rdi
	call	close_stream@PLT
	.loc 2 141 11
	testl	%eax, %eax
	je	.L29
	.loc 2 142 5
	movl	$1, %edi
	call	_exit@PLT
.L29:
	.loc 2 143 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	maybe_close_stdout, .-maybe_close_stdout
	.section	.rodata
.LC37:
	.string	"/usr/local/share/locale"
.LC38:
	.string	"Eric Blake"
.LC39:
	.string	"Jim Meyering"
.LC40:
	.string	"dp:qtuV"
.LC41:
	.string	"too many templates"
	.align 8
.LC42:
	.string	"with --suffix, template %s must end in X"
	.align 8
.LC43:
	.string	"invalid suffix %s, contains directory separator"
.LC44:
	.string	"too few X's in template %s"
.LC45:
	.string	"TMPDIR"
.LC46:
	.string	"/tmp"
	.align 8
.LC47:
	.string	"invalid template, %s, contains directory separator"
	.align 8
.LC48:
	.string	"invalid template, %s; with --tmpdir, it may not be absolute"
	.align 8
.LC49:
	.string	"failed to create directory via template %s"
	.align 8
.LC50:
	.string	"failed to create file via template %s"
.LC51:
	.string	"write error"
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 2 147 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	.loc 2 149 15
	movq	$0, -88(%rbp)
	.loc 2 150 8
	movb	$0, -125(%rbp)
	.loc 2 154 9
	movq	$0, -72(%rbp)
	.loc 2 155 8
	movb	$0, -124(%rbp)
	.loc 2 156 8
	movb	$0, -123(%rbp)
	.loc 2 157 8
	movb	$0, -122(%rbp)
	.loc 2 158 8
	movb	$0, -121(%rbp)
	.loc 2 159 7
	movl	$0, -120(%rbp)
	.loc 2 165 3
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 166 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 167 3
	leaq	.LC37(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 168 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 170 3
	leaq	maybe_close_stdout(%rip), %rdi
	call	atexit@PLT
	.loc 2 172 9
	jmp	.L31
.L43:
	.loc 2 174 7
	cmpl	$128, -116(%rbp)
	jg	.L32
	cmpl	$86, -116(%rbp)
	jge	.L33
	cmpl	$-131, -116(%rbp)
	je	.L34
	cmpl	$-130, -116(%rbp)
	je	.L35
	jmp	.L32
.L33:
	movl	-116(%rbp), %eax
	subl	$86, %eax
	cmpl	$42, %eax
	ja	.L32
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L37(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L37(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L37:
	.long	.L34-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L42-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L41-.L37
	.long	.L40-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L39-.L37
	.long	.L38-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L32-.L37
	.long	.L36-.L37
	.text
.L42:
	.loc 2 177 28
	movb	$1, -122(%rbp)
	.loc 2 178 11
	jmp	.L31
.L41:
	.loc 2 180 24
	movq	optarg(%rip), %rax
	movq	%rax, -88(%rbp)
	.loc 2 181 24
	movb	$1, -124(%rbp)
	.loc 2 182 11
	jmp	.L31
.L40:
	.loc 2 184 29
	movb	$1, -125(%rbp)
	.loc 2 185 11
	jmp	.L31
.L39:
	.loc 2 187 24
	movb	$1, -124(%rbp)
	.loc 2 188 31
	movb	$1, -123(%rbp)
	.loc 2 189 11
	jmp	.L31
.L38:
	.loc 2 191 19
	movb	$1, -121(%rbp)
	.loc 2 192 11
	jmp	.L31
.L36:
	.loc 2 195 18
	movq	optarg(%rip), %rax
	movq	%rax, -72(%rbp)
	.loc 2 196 11
	jmp	.L31
.L35:
	.loc 2 198 9
	movl	$0, %edi
	call	usage
.L34:
	.loc 2 202 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC38(%rip), %r9
	leaq	.LC39(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L32:
	.loc 2 204 11
	movl	$1, %edi
	call	usage
.L31:
	.loc 2 172 15
	movq	-144(%rbp), %rsi
	movl	-132(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -116(%rbp)
	.loc 2 172 9
	cmpl	$-1, -116(%rbp)
	jne	.L43
	.loc 2 208 17
	movl	optind(%rip), %eax
	movl	-132(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 208 10
	movl	%eax, -112(%rbp)
	.loc 2 209 6
	cmpl	$1, -112(%rbp)
	jbe	.L44
	.loc 2 211 20
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	.loc 2 211 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 212 7
	movl	$1, %edi
	call	usage
.L44:
	.loc 2 215 6
	cmpl	$0, -112(%rbp)
	jne	.L45
	.loc 2 217 20
	movb	$1, -124(%rbp)
	.loc 2 218 16
	movq	default_template(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L46
.L45:
	.loc 2 222 22
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 222 16
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.L46:
	.loc 2 225 6
	cmpq	$0, -72(%rbp)
	je	.L47
.LBB2:
	.loc 2 227 20
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -56(%rbp)
	.loc 2 228 10
	cmpq	$0, -56(%rbp)
	je	.L48
	.loc 2 228 27 discriminator 1
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 228 16 discriminator 1
	cmpb	$88, %al
	je	.L49
.L48:
.LBB3:
	.loc 2 230 11
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L49:
.LBE3:
	.loc 2 234 20
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -64(%rbp)
	.loc 2 235 35
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 235 19
	addq	$1, %rax
	movq	%rax, %rdi
	call	xcharalloc@PLT
	movq	%rax, -48(%rbp)
	.loc 2 236 7
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 237 7
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 2 237 25
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 237 7
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 2 238 16
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 2 239 14
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
.LBE2:
	jmp	.L50
.L47:
	.loc 2 243 18
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -80(%rbp)
	.loc 2 244 16
	movq	-80(%rbp), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -72(%rbp)
	.loc 2 245 10
	cmpq	$0, -72(%rbp)
	jne	.L51
	.loc 2 246 18
	movq	-80(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	jmp	.L52
.L51:
	.loc 2 248 15
	addq	$1, -72(%rbp)
.L52:
	.loc 2 249 20
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -64(%rbp)
.L50:
	.loc 2 253 6
	cmpq	$0, -64(%rbp)
	je	.L53
	.loc 2 253 21 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	.loc 2 253 18 discriminator 1
	cmpq	%rax, -72(%rbp)
	je	.L53
.LBB4:
	.loc 2 255 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L53:
.LBE4:
	.loc 2 259 53
	movq	-72(%rbp), %rax
	subq	-80(%rbp), %rax
	.loc 2 259 13
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	count_consecutive_X_s
	movq	%rax, -40(%rbp)
	.loc 2 260 6
	cmpq	$2, -40(%rbp)
	ja	.L54
.LBB5:
	.loc 2 261 5
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L54:
.LBE5:
	.loc 2 263 6
	cmpb	$0, -124(%rbp)
	je	.L55
	.loc 2 265 10
	cmpb	$0, -123(%rbp)
	je	.L56
.LBB6:
	.loc 2 267 23
	leaq	.LC45(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -24(%rbp)
	.loc 2 268 14
	cmpq	$0, -24(%rbp)
	je	.L57
	.loc 2 268 22 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 268 19 discriminator 1
	testb	%al, %al
	je	.L57
	.loc 2 269 22
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L58
.L57:
	.loc 2 270 19
	cmpq	$0, -88(%rbp)
	je	.L59
	.loc 2 270 36 discriminator 1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 270 33 discriminator 1
	testb	%al, %al
	je	.L59
	.loc 2 271 22
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L58
.L59:
	.loc 2 273 22
	leaq	.LC46(%rip), %rax
	movq	%rax, -96(%rbp)
.L58:
	.loc 2 275 15
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	.loc 2 275 14
	cmpq	%rax, -80(%rbp)
	je	.L60
.LBB7:
	.loc 2 276 13
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L56:
.LBE7:
.LBE6:
	.loc 2 282 14
	cmpq	$0, -88(%rbp)
	je	.L61
	.loc 2 282 31 discriminator 1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 282 28 discriminator 1
	testb	%al, %al
	je	.L61
	.loc 2 283 22
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L62
.L61:
.LBB8:
	.loc 2 286 27
	leaq	.LC45(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -32(%rbp)
	.loc 2 287 45
	cmpq	$0, -32(%rbp)
	je	.L63
	.loc 2 287 34 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 287 31 discriminator 1
	testb	%al, %al
	je	.L63
	.loc 2 287 45 discriminator 3
	movq	-32(%rbp), %rax
	jmp	.L64
.L63:
	.loc 2 287 45 is_stmt 0 discriminator 4
	leaq	.LC46(%rip), %rax
.L64:
	.loc 2 287 24 is_stmt 1 discriminator 6
	movq	%rax, -96(%rbp)
.L62:
.LBE8:
	.loc 2 289 15
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 289 14
	cmpb	$47, %al
	jne	.L60
.LBB9:
	.loc 2 290 13
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L60:
.LBE9:
	.loc 2 296 19
	movq	-80(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -48(%rbp)
	.loc 2 297 7
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 298 16
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
.L55:
	.loc 2 304 15
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -48(%rbp)
	.loc 2 306 6
	cmpb	$0, -122(%rbp)
	je	.L65
.LBB10:
	.loc 2 308 17
	movzbl	-121(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	mkdtemp_len
	movl	%eax, -104(%rbp)
	.loc 2 309 10
	cmpl	$0, -104(%rbp)
	je	.L66
	.loc 2 311 15
	movzbl	-125(%rbp), %eax
	xorl	$1, %eax
	.loc 2 311 14
	testb	%al, %al
	je	.L67
	.loc 2 312 13
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 2 312 30
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 312 23
	call	__errno_location@PLT
	.loc 2 312 13
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L67:
	.loc 2 314 18
	movl	$1, -120(%rbp)
	jmp	.L66
.L65:
.LBE10:
.LBB11:
	.loc 2 319 16
	movzbl	-121(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	mkstemp_len
	movl	%eax, -108(%rbp)
	.loc 2 320 10
	cmpl	$0, -108(%rbp)
	js	.L68
	.loc 2 320 22 discriminator 1
	movzbl	-121(%rbp), %eax
	xorl	$1, %eax
	.loc 2 320 18 discriminator 1
	testb	%al, %al
	je	.L66
	.loc 2 320 34 discriminator 2
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 320 31 discriminator 2
	testl	%eax, %eax
	je	.L66
.L68:
	.loc 2 322 15
	movzbl	-125(%rbp), %eax
	xorl	$1, %eax
	.loc 2 322 14
	testb	%al, %al
	je	.L69
	.loc 2 323 13
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 2 323 30
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 323 23
	call	__errno_location@PLT
	.loc 2 323 13
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L69:
	.loc 2 325 18
	movl	$1, -120(%rbp)
.L66:
.LBE11:
	.loc 2 329 6
	cmpl	$0, -120(%rbp)
	jne	.L70
	.loc 2 331 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 334 11
	movzbl	-121(%rbp), %eax
	xorl	$1, %eax
	.loc 2 334 10
	testb	%al, %al
	je	.L70
	.loc 2 334 39 discriminator 1
	movb	$1, stdout_closed(%rip)
	.loc 2 334 48 discriminator 1
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	close_stream@PLT
	.loc 2 334 20 discriminator 1
	testl	%eax, %eax
	je	.L70
.LBB12:
	.loc 2 336 29
	call	__errno_location@PLT
	.loc 2 336 15
	movl	(%rax), %eax
	movl	%eax, -100(%rbp)
	.loc 2 337 11
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	remove@PLT
	.loc 2 338 15
	movzbl	-125(%rbp), %eax
	xorl	$1, %eax
	.loc 2 338 14
	testb	%al, %al
	je	.L71
	.loc 2 339 36
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 339 13
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L71:
	.loc 2 340 18
	movl	$1, -120(%rbp)
.L70:
.LBE12:
	.loc 2 345 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 346 3
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 349 10
	movl	-120(%rbp), %eax
	.loc 2 350 1
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "./lib/sys/select.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/signal.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/errno.h"
	.file 13 "src/version.h"
	.file 14 "./lib/exitfail.h"
	.file 15 "./lib/timespec.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 18 "/usr/include/stdio.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 20 "./lib/version-etc.h"
	.file 21 "./lib/progname.h"
	.file 22 "./lib/quotearg.h"
	.file 23 "./lib/error.h"
	.file 24 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xab5
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
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF7
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x96
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0x7
	.byte	0x12
	.long	0x82
	.uleb128 0x5
	.long	.LASF12
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0xa
	.long	.LASF16
	.byte	0x7
	.byte	0x24
	.byte	0xe
	.long	0x90
	.uleb128 0xa
	.long	.LASF17
	.byte	0x7
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF19
	.byte	0x7
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	.LASF41
	.byte	0x20
	.byte	0x8
	.byte	0x32
	.byte	0x8
	.long	0x147
	.uleb128 0xc
	.long	.LASF20
	.byte	0x8
	.byte	0x34
	.byte	0xf
	.long	0x14c
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x8
	.byte	0x37
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0xc
	.long	.LASF22
	.byte	0x8
	.byte	0x38
	.byte	0x8
	.long	0x157
	.byte	0x10
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x39
	.byte	0x7
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x105
	.uleb128 0x7
	.byte	0x8
	.long	0x9d
	.uleb128 0x8
	.long	0x14c
	.uleb128 0x7
	.byte	0x8
	.long	0x57
	.uleb128 0xe
	.long	0x90
	.long	0x16d
	.uleb128 0xf
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x15d
	.uleb128 0xa
	.long	.LASF24
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF25
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x15d
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0x9
	.long	.LASF29
	.byte	0x9
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF30
	.uleb128 0x10
	.uleb128 0x7
	.byte	0x8
	.long	0x1c9
	.uleb128 0xe
	.long	0x152
	.long	0x1e0
	.uleb128 0xf
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x1d0
	.uleb128 0x9
	.long	.LASF31
	.byte	0xa
	.value	0x11e
	.byte	0x1a
	.long	0x1e0
	.uleb128 0x9
	.long	.LASF32
	.byte	0xa
	.value	0x11f
	.byte	0x1a
	.long	0x1e0
	.uleb128 0x9
	.long	.LASF33
	.byte	0xb
	.value	0x21f
	.byte	0xf
	.long	0x20c
	.uleb128 0x7
	.byte	0x8
	.long	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0xb
	.value	0x221
	.byte	0xf
	.long	0x20c
	.uleb128 0xa
	.long	.LASF35
	.byte	0xc
	.byte	0x2d
	.byte	0xe
	.long	0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0xc
	.byte	0x2e
	.byte	0xe
	.long	0x90
	.uleb128 0xa
	.long	.LASF37
	.byte	0xd
	.byte	0x1
	.byte	0x14
	.long	0x14c
	.uleb128 0xa
	.long	.LASF38
	.byte	0xe
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xf
	.byte	0x29
	.byte	0x6
	.long	0x267
	.uleb128 0x12
	.long	.LASF39
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xf
	.byte	0x2a
	.byte	0x6
	.long	0x27c
	.uleb128 0x13
	.long	.LASF40
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0xd8
	.byte	0x10
	.byte	0x31
	.byte	0x8
	.long	0x403
	.uleb128 0xc
	.long	.LASF43
	.byte	0x10
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xc
	.long	.LASF44
	.byte	0x10
	.byte	0x36
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0xc
	.long	.LASF45
	.byte	0x10
	.byte	0x37
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0xc
	.long	.LASF46
	.byte	0x10
	.byte	0x38
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0xc
	.long	.LASF47
	.byte	0x10
	.byte	0x39
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0xc
	.long	.LASF48
	.byte	0x10
	.byte	0x3a
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0xc
	.long	.LASF49
	.byte	0x10
	.byte	0x3b
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0xc
	.long	.LASF50
	.byte	0x10
	.byte	0x3c
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0xc
	.long	.LASF51
	.byte	0x10
	.byte	0x3d
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0xc
	.long	.LASF52
	.byte	0x10
	.byte	0x40
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0xc
	.long	.LASF53
	.byte	0x10
	.byte	0x41
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0xc
	.long	.LASF54
	.byte	0x10
	.byte	0x42
	.byte	0x9
	.long	0x90
	.byte	0x58
	.uleb128 0xc
	.long	.LASF55
	.byte	0x10
	.byte	0x44
	.byte	0x16
	.long	0x41c
	.byte	0x60
	.uleb128 0xc
	.long	.LASF56
	.byte	0x10
	.byte	0x46
	.byte	0x14
	.long	0x422
	.byte	0x68
	.uleb128 0xc
	.long	.LASF57
	.byte	0x10
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xc
	.long	.LASF58
	.byte	0x10
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xc
	.long	.LASF59
	.byte	0x10
	.byte	0x4a
	.byte	0xb
	.long	0x6a
	.byte	0x78
	.uleb128 0xc
	.long	.LASF60
	.byte	0x10
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xc
	.long	.LASF61
	.byte	0x10
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xc
	.long	.LASF62
	.byte	0x10
	.byte	0x4f
	.byte	0x8
	.long	0x428
	.byte	0x83
	.uleb128 0xc
	.long	.LASF63
	.byte	0x10
	.byte	0x51
	.byte	0xf
	.long	0x438
	.byte	0x88
	.uleb128 0xc
	.long	.LASF64
	.byte	0x10
	.byte	0x59
	.byte	0xd
	.long	0x76
	.byte	0x90
	.uleb128 0xc
	.long	.LASF65
	.byte	0x10
	.byte	0x5b
	.byte	0x17
	.long	0x443
	.byte	0x98
	.uleb128 0xc
	.long	.LASF66
	.byte	0x10
	.byte	0x5c
	.byte	0x19
	.long	0x44e
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF67
	.byte	0x10
	.byte	0x5d
	.byte	0x14
	.long	0x422
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF68
	.byte	0x10
	.byte	0x5e
	.byte	0x9
	.long	0x8e
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF69
	.byte	0x10
	.byte	0x5f
	.byte	0xa
	.long	0xae
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF70
	.byte	0x10
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF71
	.byte	0x10
	.byte	0x62
	.byte	0x8
	.long	0x454
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF72
	.byte	0x11
	.byte	0x7
	.byte	0x19
	.long	0x27c
	.uleb128 0x14
	.long	.LASF143
	.byte	0x10
	.byte	0x2b
	.byte	0xe
	.uleb128 0x15
	.long	.LASF73
	.uleb128 0x7
	.byte	0x8
	.long	0x417
	.uleb128 0x7
	.byte	0x8
	.long	0x27c
	.uleb128 0xe
	.long	0x96
	.long	0x438
	.uleb128 0xf
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x40f
	.uleb128 0x15
	.long	.LASF74
	.uleb128 0x7
	.byte	0x8
	.long	0x43e
	.uleb128 0x15
	.long	.LASF75
	.uleb128 0x7
	.byte	0x8
	.long	0x449
	.uleb128 0xe
	.long	0x96
	.long	0x464
	.uleb128 0xf
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	.LASF76
	.byte	0x12
	.byte	0x89
	.byte	0xe
	.long	0x470
	.uleb128 0x7
	.byte	0x8
	.long	0x403
	.uleb128 0xa
	.long	.LASF77
	.byte	0x12
	.byte	0x8a
	.byte	0xe
	.long	0x470
	.uleb128 0xa
	.long	.LASF78
	.byte	0x12
	.byte	0x8b
	.byte	0xe
	.long	0x470
	.uleb128 0xa
	.long	.LASF79
	.byte	0x13
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	0x152
	.long	0x4a5
	.uleb128 0x16
	.byte	0
	.uleb128 0x8
	.long	0x49a
	.uleb128 0xa
	.long	.LASF80
	.byte	0x13
	.byte	0x1b
	.byte	0x1a
	.long	0x4a5
	.uleb128 0xa
	.long	.LASF81
	.byte	0x13
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF82
	.byte	0x13
	.byte	0x1f
	.byte	0x1a
	.long	0x4a5
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x4ec
	.uleb128 0x18
	.long	.LASF83
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF84
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0x9d
	.long	0x4f7
	.uleb128 0x16
	.byte	0
	.uleb128 0x8
	.long	0x4ec
	.uleb128 0xa
	.long	.LASF85
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x4f7
	.uleb128 0xa
	.long	.LASF86
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x14c
	.uleb128 0x19
	.long	.LASF144
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x569
	.uleb128 0x13
	.long	.LASF87
	.byte	0
	.uleb128 0x13
	.long	.LASF88
	.byte	0x1
	.uleb128 0x13
	.long	.LASF89
	.byte	0x2
	.uleb128 0x13
	.long	.LASF90
	.byte	0x3
	.uleb128 0x13
	.long	.LASF91
	.byte	0x4
	.uleb128 0x13
	.long	.LASF92
	.byte	0x5
	.uleb128 0x13
	.long	.LASF93
	.byte	0x6
	.uleb128 0x13
	.long	.LASF94
	.byte	0x7
	.uleb128 0x13
	.long	.LASF95
	.byte	0x8
	.uleb128 0x13
	.long	.LASF96
	.byte	0x9
	.uleb128 0x13
	.long	.LASF97
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x514
	.uleb128 0x9
	.long	.LASF98
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x4a5
	.uleb128 0xe
	.long	0x569
	.long	0x586
	.uleb128 0x16
	.byte	0
	.uleb128 0x8
	.long	0x57b
	.uleb128 0x9
	.long	.LASF99
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x586
	.uleb128 0xa
	.long	.LASF100
	.byte	0x17
	.byte	0x32
	.byte	0xf
	.long	0x1ca
	.uleb128 0xa
	.long	.LASF101
	.byte	0x17
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0xa
	.long	.LASF102
	.byte	0x17
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x15
	.long	.LASF103
	.uleb128 0xa
	.long	.LASF104
	.byte	0x18
	.byte	0x19
	.byte	0x1f
	.long	0x5bc
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x2
	.byte	0x27
	.byte	0x14
	.long	0x14c
	.uleb128 0x9
	.byte	0x3
	.quad	default_template
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2
	.byte	0x2c
	.byte	0x1
	.long	0x5f8
	.uleb128 0x13
	.long	.LASF105
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.long	0x147
	.long	0x608
	.uleb128 0xf
	.long	0x42
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x5f8
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.long	0x608
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x2
	.byte	0x82
	.byte	0xd
	.long	0x639
	.uleb128 0x9
	.byte	0x3
	.quad	stdout_closed
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF109
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x2
	.byte	0x92
	.byte	0x1
	.long	0x57
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a6
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x2
	.byte	0x92
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x2
	.byte	0x92
	.byte	0x18
	.long	0x20c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x2
	.byte	0x94
	.byte	0xf
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x2
	.byte	0x95
	.byte	0xf
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x2
	.byte	0x96
	.byte	0x8
	.long	0x639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.uleb128 0x1d
	.string	"c"
	.byte	0x2
	.byte	0x97
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x2
	.byte	0x98
	.byte	0x10
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x2
	.byte	0x99
	.byte	0x9
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x2
	.byte	0x9a
	.byte	0x9
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x2
	.byte	0x9b
	.byte	0x8
	.long	0x639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x2
	.byte	0x9c
	.byte	0x8
	.long	0x639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -139
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x2
	.byte	0x9d
	.byte	0x8
	.long	0x639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -138
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x2
	.byte	0x9e
	.byte	0x8
	.long	0x639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x2
	.byte	0x9f
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x2
	.byte	0xa0
	.byte	0xa
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x2
	.byte	0xa1
	.byte	0xa
	.long	0xae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x2
	.byte	0xa2
	.byte	0x9
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x7a5
	.uleb128 0x1d
	.string	"len"
	.byte	0x2
	.byte	0xe3
	.byte	0xe
	.long	0xae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x7fe
	.uleb128 0x20
	.string	"env"
	.byte	0x2
	.value	0x10b
	.byte	0x11
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.uleb128 0x1e
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x824
	.uleb128 0x20
	.string	"env"
	.byte	0x2
	.value	0x11e
	.byte	0x15
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1e
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x85c
	.uleb128 0x20
	.string	"err"
	.byte	0x2
	.value	0x134
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x1e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x882
	.uleb128 0x20
	.string	"fd"
	.byte	0x2
	.value	0x13f
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x21
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x22
	.long	.LASF126
	.byte	0x2
	.value	0x150
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF145
	.byte	0x2
	.byte	0x89
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.long	.LASF130
	.byte	0x2
	.byte	0x7b
	.byte	0x1
	.long	0x57
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x91f
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x2
	.byte	0x7b
	.byte	0x14
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF128
	.byte	0x2
	.byte	0x7b
	.byte	0x21
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF129
	.byte	0x2
	.byte	0x7b
	.byte	0x32
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x2
	.byte	0x7b
	.byte	0x3e
	.long	0x639
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x24
	.long	.LASF131
	.byte	0x2
	.byte	0x74
	.byte	0x1
	.long	0x57
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x97e
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x2
	.byte	0x74
	.byte	0x14
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF128
	.byte	0x2
	.byte	0x74
	.byte	0x21
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF129
	.byte	0x2
	.byte	0x74
	.byte	0x32
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x2
	.byte	0x74
	.byte	0x3e
	.long	0x639
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x25
	.long	.LASF132
	.byte	0x2
	.byte	0x6b
	.byte	0x1
	.long	0xae
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ca
	.uleb128 0x26
	.string	"s"
	.byte	0x2
	.byte	0x6b
	.byte	0x24
	.long	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"len"
	.byte	0x2
	.byte	0x6b
	.byte	0x2e
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"n"
	.byte	0x2
	.byte	0x6d
	.byte	0xa
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF134
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f8
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x2
	.byte	0x3d
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x28
	.long	.LASF146
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xa9d
	.uleb128 0x29
	.long	.LASF135
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.long	.LASF136
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xa53
	.uleb128 0x2b
	.long	.LASF135
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x14c
	.byte	0
	.uleb128 0x2b
	.long	.LASF137
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x14c
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xa28
	.uleb128 0x22
	.long	.LASF136
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xaad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF137
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	.LASF138
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xab2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	.LASF139
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0xa53
	.long	0xaad
	.uleb128 0xf
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xa9d
	.uleb128 0x7
	.byte	0x8
	.long	0xa53
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
.LASF7:
	.string	"__off_t"
.LASF116:
	.string	"template"
.LASF44:
	.string	"_IO_read_ptr"
.LASF95:
	.string	"locale_quoting_style"
.LASF56:
	.string	"_chain"
.LASF84:
	.string	"GETOPT_VERSION_CHAR"
.LASF107:
	.string	"longopts"
.LASF144:
	.string	"quoting_style"
.LASF12:
	.string	"size_t"
.LASF40:
	.string	"LOG10_TIMESPEC_HZ"
.LASF106:
	.string	"default_template"
.LASF62:
	.string	"_shortbuf"
.LASF88:
	.string	"shell_quoting_style"
.LASF83:
	.string	"GETOPT_HELP_CHAR"
.LASF50:
	.string	"_IO_buf_base"
.LASF13:
	.string	"long long unsigned int"
.LASF125:
	.string	"dest_name"
.LASF14:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF99:
	.string	"quoting_style_vals"
.LASF105:
	.string	"SUFFIX_OPTION"
.LASF135:
	.string	"program"
.LASF94:
	.string	"escape_quoting_style"
.LASF87:
	.string	"literal_quoting_style"
.LASF57:
	.string	"_fileno"
.LASF45:
	.string	"_IO_read_end"
.LASF119:
	.string	"deprecated_t_option"
.LASF25:
	.string	"__timezone"
.LASF120:
	.string	"create_directory"
.LASF32:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"_gl_cxxalias_dummy"
.LASF43:
	.string	"_flags"
.LASF66:
	.string	"_wide_data"
.LASF51:
	.string	"_IO_buf_end"
.LASF60:
	.string	"_cur_column"
.LASF36:
	.string	"program_invocation_short_name"
.LASF92:
	.string	"c_quoting_style"
.LASF74:
	.string	"_IO_codecvt"
.LASF82:
	.string	"_sys_errlist"
.LASF35:
	.string	"program_invocation_name"
.LASF59:
	.string	"_old_offset"
.LASF64:
	.string	"_offset"
.LASF127:
	.string	"tmpl"
.LASF126:
	.string	"saved_errno"
.LASF91:
	.string	"shell_escape_always_quoting_style"
.LASF128:
	.string	"suff_len"
.LASF123:
	.string	"x_count"
.LASF28:
	.string	"timezone"
.LASF86:
	.string	"program_name"
.LASF73:
	.string	"_IO_marker"
.LASF76:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF68:
	.string	"_freeres_buf"
.LASF3:
	.string	"long unsigned int"
.LASF48:
	.string	"_IO_write_ptr"
.LASF20:
	.string	"name"
.LASF79:
	.string	"sys_nerr"
.LASF145:
	.string	"maybe_close_stdout"
.LASF140:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF97:
	.string	"custom_quoting_style"
.LASF1:
	.string	"short unsigned int"
.LASF102:
	.string	"error_one_per_line"
.LASF37:
	.string	"Version"
.LASF52:
	.string	"_IO_save_base"
.LASF34:
	.string	"environ"
.LASF130:
	.string	"mkdtemp_len"
.LASF63:
	.string	"_lock"
.LASF58:
	.string	"_flags2"
.LASF70:
	.string	"_mode"
.LASF77:
	.string	"stdout"
.LASF141:
	.string	"src/mktemp.c"
.LASF85:
	.string	"version_etc_copyright"
.LASF121:
	.string	"dry_run"
.LASF124:
	.string	"suffix_len"
.LASF118:
	.string	"use_dest_dir"
.LASF16:
	.string	"optarg"
.LASF29:
	.string	"getdate_err"
.LASF17:
	.string	"optind"
.LASF49:
	.string	"_IO_write_end"
.LASF143:
	.string	"_IO_lock_t"
.LASF112:
	.string	"dest_dir"
.LASF42:
	.string	"_IO_FILE"
.LASF100:
	.string	"error_print_progname"
.LASF138:
	.string	"map_prog"
.LASF33:
	.string	"__environ"
.LASF11:
	.string	"time_t"
.LASF80:
	.string	"sys_errlist"
.LASF113:
	.string	"dest_dir_arg"
.LASF55:
	.string	"_markers"
.LASF93:
	.string	"c_maybe_quoting_style"
.LASF109:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF137:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF41:
	.string	"option"
.LASF131:
	.string	"mkstemp_len"
.LASF104:
	.string	"quote_quoting_options"
.LASF132:
	.string	"count_consecutive_X_s"
.LASF22:
	.string	"flag"
.LASF81:
	.string	"_sys_nerr"
.LASF61:
	.string	"_vtable_offset"
.LASF26:
	.string	"tzname"
.LASF129:
	.string	"x_len"
.LASF72:
	.string	"FILE"
.LASF38:
	.string	"exit_failure"
.LASF90:
	.string	"shell_escape_quoting_style"
.LASF98:
	.string	"quoting_style_args"
.LASF19:
	.string	"optopt"
.LASF27:
	.string	"daylight"
.LASF30:
	.string	"long double"
.LASF10:
	.string	"char"
.LASF89:
	.string	"shell_always_quoting_style"
.LASF39:
	.string	"TIMESPEC_HZ"
.LASF96:
	.string	"clocale_quoting_style"
.LASF18:
	.string	"opterr"
.LASF8:
	.string	"__off64_t"
.LASF103:
	.string	"quoting_options"
.LASF46:
	.string	"_IO_read_base"
.LASF54:
	.string	"_IO_save_end"
.LASF31:
	.string	"_sys_siglist"
.LASF136:
	.string	"infomap"
.LASF65:
	.string	"_codecvt"
.LASF21:
	.string	"has_arg"
.LASF134:
	.string	"usage"
.LASF69:
	.string	"__pad5"
.LASF9:
	.string	"__time_t"
.LASF71:
	.string	"_unused2"
.LASF78:
	.string	"stderr"
.LASF111:
	.string	"argv"
.LASF24:
	.string	"__daylight"
.LASF122:
	.string	"status"
.LASF142:
	.string	"/root/coreutils"
.LASF114:
	.string	"suppress_file_err"
.LASF53:
	.string	"_IO_backup_base"
.LASF117:
	.string	"suffix"
.LASF101:
	.string	"error_message_count"
.LASF139:
	.string	"lc_messages"
.LASF110:
	.string	"argc"
.LASF67:
	.string	"_freeres_list"
.LASF75:
	.string	"_IO_wide_data"
.LASF108:
	.string	"stdout_closed"
.LASF23:
	.string	"__tzname"
.LASF133:
	.string	"main"
.LASF47:
	.string	"_IO_write_base"
.LASF146:
	.string	"emit_ancillary_info"
.LASF115:
	.string	"n_args"
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
