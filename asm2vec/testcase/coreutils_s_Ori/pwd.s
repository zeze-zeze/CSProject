	.file	"pwd.c"
	.text
.Ltext0:
	.type	dot_or_dotdot, @function
dot_or_dotdot:
.LFB28:
	.file 1 "src/system.h"
	.loc 1 266 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 267 16
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 267 6
	cmpb	$46, %al
	jne	.L2
.LBB2:
	.loc 1 269 38
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 269 27
	cmpb	$46, %al
	jne	.L3
	.loc 1 269 27 is_stmt 0 discriminator 1
	movl	$2, %edx
	jmp	.L4
.L3:
	.loc 1 269 27 discriminator 2
	movl	$1, %edx
.L4:
	.loc 1 269 27 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 269 12 is_stmt 1 discriminator 4
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	.loc 1 270 21 discriminator 4
	cmpb	$0, -1(%rbp)
	je	.L5
	.loc 1 270 21 is_stmt 0 discriminator 2
	cmpb	$47, -1(%rbp)
	jne	.L6
.L5:
	.loc 1 270 21 discriminator 3
	movl	$1, %eax
	jmp	.L7
.L6:
	.loc 1 270 21 discriminator 4
	movl	$0, %eax
.L7:
	.loc 1 270 21 discriminator 6
	andl	$1, %eax
	jmp	.L8
.L2:
.LBE2:
	.loc 1 273 12 is_stmt 1
	movl	$0, %eax
.L8:
	.loc 1 274 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	dot_or_dotdot, .-dot_or_dotdot
	.type	readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
.LFB29:
	.loc 1 279 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L13:
.LBB3:
	.loc 1 282 33
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -8(%rbp)
	.loc 1 283 10
	cmpq	$0, -8(%rbp)
	je	.L10
	.loc 1 283 44 discriminator 1
	movq	-8(%rbp), %rax
	addq	$19, %rax
	.loc 1 283 27 discriminator 1
	movq	%rax, %rdi
	call	dot_or_dotdot
	.loc 1 283 25 discriminator 1
	xorl	$1, %eax
	.loc 1 283 22 discriminator 1
	testb	%al, %al
	je	.L13
.L10:
	.loc 1 284 16
	movq	-8(%rbp), %rax
.LBE3:
	.loc 1 286 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	readdir_ignoring_dot_and_dotdot, .-readdir_ignoring_dot_and_dotdot
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
	jmp	.L16
.L18:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L16:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L17
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L18
.L17:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L19
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L19:
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
	je	.L20
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L20
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L20:
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
	jne	.L21
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L22
.L21:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L22:
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
	je	.L23
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L23:
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
	.string	"logical"
.LC19:
	.string	"physical"
.LC20:
	.string	"help"
.LC21:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 160
longopts:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	76
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	80
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
.LC23:
	.string	"Usage: %s [OPTION]...\n"
	.align 8
.LC24:
	.string	"Print the full filename of the current working directory.\n\n"
	.align 8
.LC25:
	.string	"  -L, --logical   use PWD from environment, even if it contains symlinks\n  -P, --physical  avoid all symlinks\n"
	.align 8
.LC26:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC27:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC28:
	.string	"\nIf no option is specified, -P is assumed.\n"
	.align 8
.LC29:
	.string	"\nNOTE: your shell may have its own version of %s, which usually supersedes\nthe version described here.  Please refer to your shell's documentation\nfor details about the options it supports.\n"
.LC30:
	.string	"pwd"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/pwd.c"
	.loc 2 52 1 is_stmt 1
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
	.loc 2 53 6
	cmpl	$0, -20(%rbp)
	je	.L25
	.loc 2 54 5
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
	jmp	.L26
.L25:
	.loc 2 57 7
	movq	program_name(%rip), %rbx
	.loc 2 57 15
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	.loc 2 57 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 58 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 62 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 66 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 67 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 68 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 71 15
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	.loc 2 71 7
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 72 7
	leaq	.LC30(%rip), %rdi
	call	emit_ancillary_info
.L26:
	.loc 2 74 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	file_name_free, @function
file_name_free:
.LFB47:
	.loc 2 79 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 80 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 80 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 81 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 82 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	file_name_free, .-file_name_free
	.type	file_name_init, @function
file_name_init:
.LFB48:
	.loc 2 86 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 87 25
	movl	$24, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 91 14
	movq	-8(%rbp), %rax
	movq	$8192, 8(%rax)
	.loc 2 93 12
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, %rdx
	.loc 2 93 10
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 94 15
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 94 25
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 94 21
	subq	$1, %rax
	addq	%rax, %rdx
	.loc 2 94 12
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 95 4
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 95 15
	movb	$0, (%rax)
	.loc 2 96 10
	movq	-8(%rbp), %rax
	.loc 2 97 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	file_name_init, .-file_name_init
	.type	file_name_prepend, @function
file_name_prepend:
.LFB49:
	.loc 2 102 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 2 103 20
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 103 31
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 103 28
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 103 10
	movq	%rax, -32(%rbp)
	.loc 2 104 18
	movq	-56(%rbp), %rax
	addq	$1, %rax
	.loc 2 104 6
	cmpq	%rax, -32(%rbp)
	jnb	.L31
.LBB4:
	.loc 2 106 22
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 106 36
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 106 14
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	.loc 2 111 17
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	xnmalloc@PLT
	movq	%rax, -16(%rbp)
	.loc 2 112 24
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 112 14
	subq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 113 24
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	.loc 2 113 31
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 113 16
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 114 26
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 114 32
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 114 16
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 114 7
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 115 14
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 115 7
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 116 14
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 117 22
	movq	-24(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	.loc 2 117 18
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
.L31:
.LBE4:
	.loc 2 120 12
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	notq	%rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 121 4
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 121 15
	movb	$47, (%rax)
	.loc 2 122 12
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 122 20
	leaq	1(%rax), %rcx
	.loc 2 122 3
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 2 123 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	file_name_prepend, .-file_name_prepend
	.section	.rodata
.LC31:
	.string	"../"
	.text
	.type	nth_parent, @function
nth_parent:
.LFB50:
	.loc 2 128 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 129 15
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	xnmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 130 9
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB5:
	.loc 2 132 15
	movq	$0, -16(%rbp)
	.loc 2 132 3
	jmp	.L33
.L34:
	.loc 2 134 7 discriminator 3
	movq	-24(%rbp), %rax
	movl	$3, %edx
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 135 9 discriminator 3
	addq	$3, -24(%rbp)
	.loc 2 132 30 discriminator 3
	addq	$1, -16(%rbp)
.L33:
	.loc 2 132 3 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L34
.LBE5:
	.loc 2 137 4
	movq	-24(%rbp), %rax
	subq	$1, %rax
	.loc 2 137 9
	movb	$0, (%rax)
	.loc 2 138 10
	movq	-8(%rbp), %rax
	.loc 2 139 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	nth_parent, .-nth_parent
	.section	.rodata
.LC32:
	.string	".."
.LC33:
	.string	"cannot open directory %s"
.LC34:
	.string	"failed to chdir to %s"
.LC35:
	.string	"."
.LC36:
	.string	"failed to stat %s"
.LC37:
	.string	"reading directory %s"
	.align 8
.LC38:
	.string	"couldn't find directory entry in %s with matching i-node"
	.text
	.type	find_dir_entry, @function
find_dir_entry:
.LFB51:
	.loc 2 155 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$384, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rdx, -392(%rbp)
	.loc 2 155 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 162 10
	leaq	.LC32(%rip), %rdi
	call	opendir@PLT
	movq	%rax, -344(%rbp)
	.loc 2 163 6
	cmpq	$0, -344(%rbp)
	jne	.L37
.LBB6:
	.loc 2 164 5
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	nth_parent
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC33(%rip), %rdi
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
.L37:
.LBE6:
	.loc 2 167 8
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	dirfd@PLT
	movl	%eax, -352(%rbp)
	.loc 2 168 46
	cmpl	$0, -352(%rbp)
	js	.L38
	.loc 2 168 18 discriminator 1
	movl	-352(%rbp), %eax
	movl	%eax, %edi
	call	fchdir@PLT
	.loc 2 168 46 discriminator 1
	shrl	$31, %eax
	jmp	.L39
.L38:
	.loc 2 168 32 discriminator 2
	leaq	.LC32(%rip), %rdi
	call	chdir@PLT
	.loc 2 168 46 discriminator 2
	shrl	$31, %eax
.L39:
	.loc 2 168 6 discriminator 4
	testb	%al, %al
	je	.L40
.LBB7:
	.loc 2 169 5
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	nth_parent
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC34(%rip), %rdi
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
.LBE7:
	.loc 2 172 67
	cmpl	$0, -352(%rbp)
	js	.L41
	.loc 2 172 18 discriminator 1
	leaq	-320(%rbp), %rdx
	movl	-352(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 2 172 67 discriminator 1
	shrl	$31, %eax
	jmp	.L42
.L41:
	.loc 2 172 43 discriminator 2
	leaq	-320(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	call	stat@PLT
	.loc 2 172 67 discriminator 2
	shrl	$31, %eax
.L42:
	.loc 2 172 6 discriminator 4
	testb	%al, %al
	je	.L43
.LBB8:
	.loc 2 173 5
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	nth_parent
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC36(%rip), %rdi
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
.L43:
.LBE8:
	.loc 2 178 25
	movq	-320(%rbp), %rdx
	.loc 2 178 42
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 178 13
	cmpq	%rax, %rdx
	setne	%al
	movb	%al, -353(%rbp)
	.loc 2 180 9
	movb	$0, -354(%rbp)
.L57:
.LBB9:
	.loc 2 187 7
	call	__errno_location@PLT
	.loc 2 187 13
	movl	$0, (%rax)
	.loc 2 188 17
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	readdir_ignoring_dot_and_dotdot
	movq	%rax, -328(%rbp)
	.loc 2 188 10
	cmpq	$0, -328(%rbp)
	jne	.L44
	.loc 2 190 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 190 14
	testl	%eax, %eax
	je	.L62
.LBB10:
	.loc 2 193 23
	call	__errno_location@PLT
	.loc 2 193 19
	movl	(%rax), %eax
	movl	%eax, -348(%rbp)
	.loc 2 194 15
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	.loc 2 195 15
	call	__errno_location@PLT
	.loc 2 195 21
	movl	-348(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 198 20
	movq	$0, -344(%rbp)
.LBE10:
	.loc 2 200 11
	jmp	.L62
.L44:
	.loc 2 203 11
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	.loc 2 205 10
	cmpq	$0, -336(%rbp)
	je	.L47
	.loc 2 205 38 discriminator 1
	cmpb	$0, -353(%rbp)
	je	.L48
.L47:
	.loc 2 207 24
	movq	-328(%rbp), %rax
	leaq	19(%rax), %rdx
	.loc 2 207 15
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	lstat@PLT
	.loc 2 207 14
	testl	%eax, %eax
	js	.L63
	.loc 2 212 15
	movq	-168(%rbp), %rax
	movq	%rax, -336(%rbp)
.L48:
	.loc 2 215 24
	movq	-376(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 215 10
	cmpq	%rax, -336(%rbp)
	jne	.L64
	.loc 2 220 12
	movzbl	-353(%rbp), %eax
	xorl	$1, %eax
	.loc 2 220 10
	testb	%al, %al
	jne	.L52
	.loc 2 220 33 discriminator 1
	movq	-176(%rbp), %rdx
	.loc 2 220 50 discriminator 1
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 220 24 discriminator 1
	cmpq	%rax, %rdx
	jne	.L57
.L52:
	.loc 2 222 53
	movq	-328(%rbp), %rax
	addq	$19, %rax
	.loc 2 222 11
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	.loc 2 222 43
	movq	-328(%rbp), %rax
	leaq	19(%rax), %rcx
	.loc 2 222 11
	movq	-384(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_prepend
	.loc 2 223 17
	movb	$1, -354(%rbp)
	.loc 2 224 11
	jmp	.L46
.L62:
	.loc 2 200 11
	nop
.L46:
.LBE9:
	.loc 2 228 6
	cmpq	$0, -344(%rbp)
	je	.L55
	jmp	.L61
.L63:
.LBB11:
	.loc 2 210 15
	nop
	jmp	.L57
.L64:
	.loc 2 216 9
	nop
.LBE11:
	.loc 2 182 5
	jmp	.L57
.L61:
	.loc 2 228 23 discriminator 1
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	.loc 2 228 20 discriminator 1
	testl	%eax, %eax
	je	.L58
.L55:
.LBB12:
	.loc 2 232 7
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	nth_parent
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC37(%rip), %rdi
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
.L58:
.LBE12:
	.loc 2 236 8
	movzbl	-354(%rbp), %eax
	xorl	$1, %eax
	.loc 2 236 6
	testb	%al, %al
	je	.L59
.LBB13:
	.loc 2 237 5
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	nth_parent
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L59:
.LBE13:
	.loc 2 241 11
	movq	-376(%rbp), %rax
	movq	-320(%rbp), %rcx
	movq	-312(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-304(%rbp), %rcx
	movq	-296(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-288(%rbp), %rcx
	movq	-280(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	-240(%rbp), %rcx
	movq	-232(%rbp), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rbx
	movq	%rcx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rbx
	movq	%rcx, 128(%rax)
	movq	%rbx, 136(%rax)
	.loc 2 242 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	addq	$384, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	find_dir_entry, .-find_dir_entry
	.section	.rodata
.LC39:
	.string	"/"
	.align 8
.LC40:
	.string	"failed to get attributes of %s"
	.text
	.type	robust_getcwd, @function
robust_getcwd:
.LFB52:
	.loc 2 269 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -216(%rbp)
	.loc 2 269 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 270 10
	movq	$1, -208(%rbp)
	.loc 2 272 34
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	get_root_dev_ino@PLT
	movq	%rax, -200(%rbp)
	.loc 2 275 6
	cmpq	$0, -200(%rbp)
	jne	.L66
.LBB14:
	.loc 2 276 5
	leaq	.LC39(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC40(%rip), %rdi
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
.L66:
.LBE14:
	.loc 2 279 7
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	call	stat@PLT
	.loc 2 279 6
	testl	%eax, %eax
	jns	.L67
.LBB15:
	.loc 2 280 5
	leaq	.LC35(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC36(%rip), %rdi
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
.L67:
.LBE15:
	.loc 2 285 11
	movq	-168(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 285 10
	cmpq	%rax, %rdx
	jne	.L68
	.loc 2 285 11 discriminator 1
	movq	-176(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L73
.L68:
	.loc 2 288 7
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -208(%rbp)
	movq	-216(%rbp), %rsi
	leaq	-176(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	find_dir_entry
	.loc 2 285 10
	jmp	.L67
.L73:
	.loc 2 286 9
	nop
	.loc 2 292 16
	movq	-216(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 292 23
	movzbl	(%rax), %eax
	.loc 2 292 6
	testb	%al, %al
	jne	.L74
	.loc 2 293 5
	movq	-216(%rbp), %rax
	movl	$0, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	file_name_prepend
.L74:
	.loc 2 294 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L71
	call	__stack_chk_fail@PLT
.L71:
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	robust_getcwd, .-robust_getcwd
	.section	.rodata
.LC41:
	.string	"PWD"
.LC42:
	.string	"/."
	.text
	.type	logical_getcwd, @function
logical_getcwd:
.LFB53:
	.loc 2 301 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	.loc 2 301 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 304 14
	leaq	.LC41(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -312(%rbp)
	.loc 2 308 6
	cmpq	$0, -312(%rbp)
	je	.L76
	.loc 2 308 16 discriminator 1
	movq	-312(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 308 11 discriminator 1
	cmpb	$47, %al
	je	.L77
.L76:
	.loc 2 309 12
	movl	$0, %eax
	jmp	.L84
.L77:
	.loc 2 310 5
	movq	-312(%rbp), %rax
	movq	%rax, -320(%rbp)
	.loc 2 311 9
	jmp	.L79
.L82:
	.loc 2 313 13
	movq	-320(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 313 10
	testb	%al, %al
	je	.L80
	.loc 2 313 21 discriminator 1
	movq	-320(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 313 17 discriminator 1
	cmpb	$47, %al
	je	.L80
	.loc 2 314 16
	movq	-320(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 314 11
	cmpb	$46, %al
	jne	.L81
	.loc 2 314 33 discriminator 1
	movq	-320(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 2 314 27 discriminator 1
	testb	%al, %al
	je	.L80
	.loc 2 314 41 discriminator 2
	movq	-320(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 2 314 37 discriminator 2
	cmpb	$47, %al
	jne	.L81
.L80:
	.loc 2 315 16
	movl	$0, %eax
	jmp	.L84
.L81:
	.loc 2 316 8
	addq	$1, -320(%rbp)
.L79:
	.loc 2 311 15
	movq	-320(%rbp), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -320(%rbp)
	.loc 2 311 9
	cmpq	$0, -320(%rbp)
	jne	.L82
	.loc 2 320 7
	leaq	-304(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 320 6
	testl	%eax, %eax
	jne	.L83
	.loc 2 320 31 discriminator 1
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	call	stat@PLT
	.loc 2 320 28 discriminator 1
	testl	%eax, %eax
	jne	.L83
	.loc 2 320 56 discriminator 2
	movq	-296(%rbp), %rdx
	movq	-152(%rbp), %rax
	.loc 2 320 53 discriminator 2
	cmpq	%rax, %rdx
	jne	.L83
	.loc 2 320 56 discriminator 3
	movq	-304(%rbp), %rdx
	movq	-160(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L83
	.loc 2 321 12
	movq	-312(%rbp), %rax
	jmp	.L84
.L83:
	.loc 2 322 10
	movl	$0, %eax
.L84:
	.loc 2 323 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L85
	.loc 2 323 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	logical_getcwd, .-logical_getcwd
	.section	.rodata
.LC43:
	.string	"POSIXLY_CORRECT"
.LC44:
	.string	"/usr/local/share/locale"
.LC45:
	.string	"LP"
.LC46:
	.string	"Jim Meyering"
.LC47:
	.string	"ignoring non-option arguments"
	.text
	.globl	main
	.type	main, @function
main:
.LFB54:
	.loc 2 328 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 333 19
	leaq	.LC43(%rip), %rdi
	call	getenv@PLT
	.loc 2 333 8
	testq	%rax, %rax
	setne	%al
	movb	%al, -21(%rbp)
	.loc 2 336 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 337 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 338 3
	leaq	.LC44(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 339 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 341 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
.L95:
.LBB16:
	.loc 2 345 15
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -20(%rbp)
	.loc 2 346 10
	cmpl	$-1, -20(%rbp)
	je	.L102
	.loc 2 348 7
	cmpl	$80, -20(%rbp)
	je	.L89
	cmpl	$80, -20(%rbp)
	jg	.L90
	cmpl	$76, -20(%rbp)
	je	.L91
	cmpl	$76, -20(%rbp)
	jg	.L90
	cmpl	$-131, -20(%rbp)
	je	.L92
	cmpl	$-130, -20(%rbp)
	je	.L93
	jmp	.L90
.L91:
	.loc 2 351 19
	movb	$1, -21(%rbp)
	.loc 2 352 11
	jmp	.L94
.L89:
	.loc 2 354 19
	movb	$0, -21(%rbp)
	.loc 2 355 11
	jmp	.L94
.L93:
	.loc 2 357 9
	movl	$0, %edi
	call	usage
.L92:
	.loc 2 359 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC46(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L90:
	.loc 2 362 11
	movl	$1, %edi
	call	usage
.L94:
.LBE16:
	.loc 2 344 5
	jmp	.L95
.L102:
.LBB17:
	.loc 2 347 9
	nop
.LBE17:
	.loc 2 366 14
	movl	optind(%rip), %eax
	.loc 2 366 6
	cmpl	%eax, -36(%rbp)
	jle	.L96
	.loc 2 367 18
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	.loc 2 367 5
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L96:
	.loc 2 369 6
	cmpb	$0, -21(%rbp)
	je	.L97
	.loc 2 371 12
	call	logical_getcwd
	movq	%rax, -16(%rbp)
	.loc 2 372 10
	cmpq	$0, -16(%rbp)
	je	.L97
	.loc 2 374 11
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 375 18
	movl	$0, %eax
	jmp	.L98
.L97:
	.loc 2 379 8
	call	xgetcwd@PLT
	movq	%rax, -16(%rbp)
	.loc 2 380 6
	cmpq	$0, -16(%rbp)
	je	.L99
	.loc 2 382 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 383 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L100
.L99:
.LBB18:
	.loc 2 387 37
	call	file_name_init
	movq	%rax, -8(%rbp)
	.loc 2 388 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	robust_getcwd
	.loc 2 389 22
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 389 7
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 390 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	file_name_free
.L100:
.LBE18:
	.loc 2 393 10
	movl	$0, %eax
.L98:
	.loc 2 394 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
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
	.file 15 "/usr/include/time.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 17 "/usr/include/signal.h"
	.file 18 "/usr/include/unistd.h"
	.file 19 "/usr/include/errno.h"
	.file 20 "src/version.h"
	.file 21 "./lib/exitfail.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/dirent.h"
	.file 23 "./lib/timespec.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/quote.h"
	.file 29 "./lib/dev-ino.h"
	.file 30 "/usr/include/dirent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe65
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF184
	.byte	0xc
	.long	.LASF185
	.long	.LASF186
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x3
	.byte	0x24
	.byte	0xe
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.long	0x3f
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x57
	.uleb128 0x2
	.long	.LASF3
	.byte	0x3
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0x8
	.long	.LASF28
	.byte	0x20
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.long	0xbd
	.uleb128 0x9
	.long	.LASF5
	.byte	0x4
	.byte	0x34
	.byte	0xf
	.long	0xc2
	.byte	0
	.uleb128 0x9
	.long	.LASF6
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0x9
	.long	.LASF7
	.byte	0x4
	.byte	0x38
	.byte	0x8
	.long	0xcd
	.byte	0x10
	.uleb128 0xa
	.string	"val"
	.byte	0x4
	.byte	0x39
	.byte	0x7
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	0x7b
	.uleb128 0x3
	.byte	0x8
	.long	0x46
	.uleb128 0x5
	.long	0xc2
	.uleb128 0x3
	.byte	0x8
	.long	0x57
	.uleb128 0xb
	.long	.LASF15
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0xdf
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0xc
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
	.uleb128 0xb
	.long	.LASF16
	.byte	0x6
	.byte	0x91
	.byte	0x19
	.long	0xdf
	.uleb128 0xb
	.long	.LASF17
	.byte	0x6
	.byte	0x92
	.byte	0x19
	.long	0xe6
	.uleb128 0xb
	.long	.LASF18
	.byte	0x6
	.byte	0x93
	.byte	0x19
	.long	0xe6
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.byte	0x94
	.byte	0x19
	.long	0xdf
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.byte	0x96
	.byte	0x1a
	.long	0xe6
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.byte	0x97
	.byte	0x1b
	.long	0xdf
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x10b
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x10b
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x10b
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.byte	0xae
	.byte	0x1d
	.long	0x10b
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.byte	0xb3
	.byte	0x1c
	.long	0x10b
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.byte	0xc4
	.byte	0x21
	.long	0x10b
	.uleb128 0x8
	.long	.LASF29
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x329
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x342
	.byte	0x60
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x348
	.byte	0x68
	.uleb128 0x9
	.long	.LASF44
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF45
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x15a
	.byte	0x78
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0xf6
	.byte	0x80
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0xfd
	.byte	0x82
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x34e
	.byte	0x83
	.uleb128 0x9
	.long	.LASF50
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x35e
	.byte	0x88
	.uleb128 0x9
	.long	.LASF51
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x166
	.byte	0x90
	.uleb128 0x9
	.long	.LASF52
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x369
	.byte	0x98
	.uleb128 0x9
	.long	.LASF53
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x374
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF54
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x348
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF55
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xed
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xd3
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF57
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x37a
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF59
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x1a2
	.uleb128 0xd
	.long	.LASF187
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF60
	.uleb128 0x3
	.byte	0x8
	.long	0x33d
	.uleb128 0x3
	.byte	0x8
	.long	0x1a2
	.uleb128 0xf
	.long	0x3f
	.long	0x35e
	.uleb128 0x10
	.long	0xdf
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x335
	.uleb128 0xe
	.long	.LASF61
	.uleb128 0x3
	.byte	0x8
	.long	0x364
	.uleb128 0xe
	.long	.LASF62
	.uleb128 0x3
	.byte	0x8
	.long	0x36f
	.uleb128 0xf
	.long	0x3f
	.long	0x38a
	.uleb128 0x10
	.long	0xdf
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x396
	.uleb128 0x3
	.byte	0x8
	.long	0x329
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x396
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x396
	.uleb128 0x2
	.long	.LASF66
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xc8
	.long	0x3cb
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x3c0
	.uleb128 0x2
	.long	.LASF67
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x3cb
	.uleb128 0x2
	.long	.LASF68
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF69
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x3cb
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF70
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF71
	.uleb128 0xb
	.long	.LASF72
	.byte	0xb
	.byte	0x2f
	.byte	0x11
	.long	0x136
	.uleb128 0xb
	.long	.LASF73
	.byte	0xb
	.byte	0x3b
	.byte	0x11
	.long	0x112
	.uleb128 0xb
	.long	.LASF74
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0x172
	.uleb128 0x8
	.long	.LASF75
	.byte	0x10
	.byte	0xd
	.byte	0xa
	.byte	0x8
	.long	0x44e
	.uleb128 0x9
	.long	.LASF76
	.byte	0xd
	.byte	0xc
	.byte	0xc
	.long	0x172
	.byte	0
	.uleb128 0x9
	.long	.LASF77
	.byte	0xd
	.byte	0x10
	.byte	0x15
	.long	0x196
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0xe
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF79
	.uleb128 0xf
	.long	0x39
	.long	0x472
	.uleb128 0x10
	.long	0xdf
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x462
	.uleb128 0x2
	.long	.LASF81
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF82
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x10b
	.uleb128 0x2
	.long	.LASF83
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x462
	.uleb128 0x2
	.long	.LASF84
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF85
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x10b
	.uleb128 0x12
	.long	.LASF86
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x8
	.long	.LASF87
	.byte	0x90
	.byte	0x10
	.byte	0x2e
	.byte	0x8
	.long	0x598
	.uleb128 0x9
	.long	.LASF88
	.byte	0x10
	.byte	0x30
	.byte	0xd
	.long	0x112
	.byte	0
	.uleb128 0x9
	.long	.LASF89
	.byte	0x10
	.byte	0x35
	.byte	0xd
	.long	0x136
	.byte	0x8
	.uleb128 0x9
	.long	.LASF90
	.byte	0x10
	.byte	0x3d
	.byte	0xf
	.long	0x14e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF91
	.byte	0x10
	.byte	0x3e
	.byte	0xe
	.long	0x142
	.byte	0x18
	.uleb128 0x9
	.long	.LASF92
	.byte	0x10
	.byte	0x40
	.byte	0xd
	.long	0x11e
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF93
	.byte	0x10
	.byte	0x41
	.byte	0xd
	.long	0x12a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF94
	.byte	0x10
	.byte	0x43
	.byte	0x9
	.long	0x57
	.byte	0x24
	.uleb128 0x9
	.long	.LASF95
	.byte	0x10
	.byte	0x45
	.byte	0xd
	.long	0x112
	.byte	0x28
	.uleb128 0x9
	.long	.LASF96
	.byte	0x10
	.byte	0x4a
	.byte	0xd
	.long	0x15a
	.byte	0x30
	.uleb128 0x9
	.long	.LASF97
	.byte	0x10
	.byte	0x4e
	.byte	0x11
	.long	0x17e
	.byte	0x38
	.uleb128 0x9
	.long	.LASF98
	.byte	0x10
	.byte	0x50
	.byte	0x10
	.long	0x18a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF99
	.byte	0x10
	.byte	0x5b
	.byte	0x15
	.long	0x426
	.byte	0x48
	.uleb128 0x9
	.long	.LASF100
	.byte	0x10
	.byte	0x5c
	.byte	0x15
	.long	0x426
	.byte	0x58
	.uleb128 0x9
	.long	.LASF101
	.byte	0x10
	.byte	0x5d
	.byte	0x15
	.long	0x426
	.byte	0x68
	.uleb128 0x9
	.long	.LASF102
	.byte	0x10
	.byte	0x6a
	.byte	0x17
	.long	0x598
	.byte	0x78
	.byte	0
	.uleb128 0xf
	.long	0x196
	.long	0x5a8
	.uleb128 0x10
	.long	0xdf
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x3
	.byte	0x8
	.long	0x5a8
	.uleb128 0xf
	.long	0xc8
	.long	0x5bf
	.uleb128 0x10
	.long	0xdf
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x5af
	.uleb128 0x12
	.long	.LASF103
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x5bf
	.uleb128 0x12
	.long	.LASF104
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x5bf
	.uleb128 0x12
	.long	.LASF105
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x5eb
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x12
	.long	.LASF106
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x5eb
	.uleb128 0x2
	.long	.LASF107
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF108
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF109
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF110
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x14
	.long	.LASF111
	.value	0x118
	.byte	0x16
	.byte	0x16
	.byte	0x8
	.long	0x67e
	.uleb128 0x9
	.long	.LASF112
	.byte	0x16
	.byte	0x19
	.byte	0xd
	.long	0x136
	.byte	0
	.uleb128 0x9
	.long	.LASF113
	.byte	0x16
	.byte	0x1a
	.byte	0xd
	.long	0x15a
	.byte	0x8
	.uleb128 0x9
	.long	.LASF114
	.byte	0x16
	.byte	0x1f
	.byte	0x18
	.long	0xf6
	.byte	0x10
	.uleb128 0x9
	.long	.LASF115
	.byte	0x16
	.byte	0x20
	.byte	0x13
	.long	0xef
	.byte	0x12
	.uleb128 0x9
	.long	.LASF116
	.byte	0x16
	.byte	0x21
	.byte	0xa
	.long	0x683
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x62e
	.uleb128 0xf
	.long	0x3f
	.long	0x693
	.uleb128 0x10
	.long	0xdf
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.string	"DIR"
	.byte	0x1e
	.byte	0x7f
	.byte	0x1c
	.long	0x69f
	.uleb128 0xe
	.long	.LASF117
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.long	0x6b9
	.uleb128 0x17
	.long	.LASF118
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x17
	.byte	0x29
	.byte	0x6
	.long	0x6d1
	.uleb128 0x18
	.long	.LASF119
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x17
	.byte	0x2a
	.byte	0x6
	.long	0x6e6
	.uleb128 0x17
	.long	.LASF120
	.byte	0x9
	.byte	0
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x704
	.uleb128 0x1a
	.long	.LASF121
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF122
	.sleb128 -131
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0x70f
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x704
	.uleb128 0x2
	.long	.LASF123
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x70f
	.uleb128 0x2
	.long	.LASF124
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x1b
	.long	.LASF188
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x781
	.uleb128 0x17
	.long	.LASF125
	.byte	0
	.uleb128 0x17
	.long	.LASF126
	.byte	0x1
	.uleb128 0x17
	.long	.LASF127
	.byte	0x2
	.uleb128 0x17
	.long	.LASF128
	.byte	0x3
	.uleb128 0x17
	.long	.LASF129
	.byte	0x4
	.uleb128 0x17
	.long	.LASF130
	.byte	0x5
	.uleb128 0x17
	.long	.LASF131
	.byte	0x6
	.uleb128 0x17
	.long	.LASF132
	.byte	0x7
	.uleb128 0x17
	.long	.LASF133
	.byte	0x8
	.uleb128 0x17
	.long	.LASF134
	.byte	0x9
	.uleb128 0x17
	.long	.LASF135
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x72c
	.uleb128 0x12
	.long	.LASF136
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x3cb
	.uleb128 0xf
	.long	0x781
	.long	0x79e
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x793
	.uleb128 0x12
	.long	.LASF137
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x79e
	.uleb128 0x2
	.long	.LASF138
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x5a9
	.uleb128 0x2
	.long	.LASF139
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0xe6
	.uleb128 0x2
	.long	.LASF140
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF141
	.uleb128 0x2
	.long	.LASF142
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x7d4
	.uleb128 0x8
	.long	.LASF143
	.byte	0x10
	.byte	0x1d
	.byte	0x19
	.byte	0x8
	.long	0x80d
	.uleb128 0x9
	.long	.LASF89
	.byte	0x1d
	.byte	0x1b
	.byte	0x9
	.long	0x402
	.byte	0
	.uleb128 0x9
	.long	.LASF88
	.byte	0x1d
	.byte	0x1c
	.byte	0x9
	.long	0x40e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF144
	.byte	0x18
	.byte	0x2
	.byte	0x22
	.byte	0x8
	.long	0x842
	.uleb128 0xa
	.string	"buf"
	.byte	0x2
	.byte	0x24
	.byte	0x9
	.long	0x39
	.byte	0
	.uleb128 0x9
	.long	.LASF145
	.byte	0x2
	.byte	0x25
	.byte	0xa
	.long	0xd3
	.byte	0x8
	.uleb128 0x9
	.long	.LASF146
	.byte	0x2
	.byte	0x26
	.byte	0x9
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	0xbd
	.long	0x852
	.uleb128 0x10
	.long	0xdf
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x842
	.uleb128 0x1c
	.long	.LASF149
	.byte	0x2
	.byte	0x29
	.byte	0x1c
	.long	0x852
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1d
	.long	.LASF173
	.byte	0x2
	.value	0x147
	.byte	0x1
	.long	0x57
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x90a
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x2
	.value	0x147
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.long	.LASF148
	.byte	0x2
	.value	0x147
	.byte	0x18
	.long	0x5eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"wd"
	.byte	0x2
	.value	0x149
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF150
	.byte	0x2
	.value	0x14d
	.byte	0x8
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x30
	.long	0x8e7
	.uleb128 0x1f
	.string	"c"
	.byte	0x2
	.value	0x159
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x20
	.long	.LASF144
	.byte	0x2
	.value	0x183
	.byte	0x19
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF151
	.uleb128 0x3
	.byte	0x8
	.long	0x80d
	.uleb128 0x23
	.long	.LASF164
	.byte	0x2
	.value	0x12c
	.byte	0x1
	.long	0x39
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x97c
	.uleb128 0x1f
	.string	"st1"
	.byte	0x2
	.value	0x12e
	.byte	0xf
	.long	0x4c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1f
	.string	"st2"
	.byte	0x2
	.value	0x12f
	.byte	0xf
	.long	0x4c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.string	"wd"
	.byte	0x2
	.value	0x130
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1f
	.string	"p"
	.byte	0x2
	.value	0x131
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.byte	0
	.uleb128 0x24
	.long	.LASF156
	.byte	0x2
	.value	0x10c
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xa13
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x2
	.value	0x10c
	.byte	0x22
	.long	0x911
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.long	.LASF152
	.byte	0x2
	.value	0x10e
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x20
	.long	.LASF153
	.byte	0x2
	.value	0x10f
	.byte	0x12
	.long	0x7e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x20
	.long	.LASF154
	.byte	0x2
	.value	0x110
	.byte	0x13
	.long	0xa13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x20
	.long	.LASF155
	.byte	0x2
	.value	0x111
	.byte	0xf
	.long	0x4c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x7e5
	.uleb128 0x26
	.long	.LASF157
	.byte	0x2
	.byte	0x99
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xb65
	.uleb128 0x27
	.long	.LASF155
	.byte	0x2
	.byte	0x99
	.byte	0x1e
	.long	0xb65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x27
	.long	.LASF144
	.byte	0x2
	.byte	0x99
	.byte	0x38
	.long	0x911
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x27
	.long	.LASF158
	.byte	0x2
	.byte	0x9a
	.byte	0x18
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x2
	.byte	0x9c
	.byte	0x8
	.long	0xb6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x28
	.string	"fd"
	.byte	0x2
	.byte	0x9d
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2
	.byte	0x9e
	.byte	0xf
	.long	0x4c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x2
	.byte	0x9f
	.byte	0x8
	.long	0x90a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -369
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x2
	.byte	0xa0
	.byte	0x8
	.long	0x90a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -370
	.uleb128 0x25
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x25
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x21
	.long	.Ldebug_ranges0+0
	.long	0xb42
	.uleb128 0x28
	.string	"dp"
	.byte	0x2
	.byte	0xb7
	.byte	0x1c
	.long	0xb71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1c
	.long	.LASF163
	.byte	0x2
	.byte	0xb8
	.byte	0x13
	.long	0x4c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.string	"ino"
	.byte	0x2
	.byte	0xb9
	.byte	0xd
	.long	0x402
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x22
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x28
	.string	"e"
	.byte	0x2
	.byte	0xc1
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x25
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4c7
	.uleb128 0x3
	.byte	0x8
	.long	0x693
	.uleb128 0x3
	.byte	0x8
	.long	0x67e
	.uleb128 0x29
	.long	.LASF165
	.byte	0x2
	.byte	0x7f
	.byte	0x1
	.long	0x39
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xbe2
	.uleb128 0x2a
	.string	"n"
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.byte	0x81
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.byte	0x82
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.byte	0x84
	.byte	0xf
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF166
	.byte	0x2
	.byte	0x65
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xc77
	.uleb128 0x2a
	.string	"p"
	.byte	0x2
	.byte	0x65
	.byte	0x26
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"s"
	.byte	0x2
	.byte	0x65
	.byte	0x35
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF167
	.byte	0x2
	.byte	0x65
	.byte	0x3f
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x2
	.byte	0x67
	.byte	0xa
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1c
	.long	.LASF169
	.byte	0x2
	.byte	0x6a
	.byte	0xe
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"q"
	.byte	0x2
	.byte	0x6f
	.byte	0xd
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF170
	.byte	0x2
	.byte	0x70
	.byte	0xe
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF171
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0x911
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xca7
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.byte	0x57
	.byte	0x15
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF172
	.byte	0x2
	.byte	0x4e
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd3
	.uleb128 0x2a
	.string	"p"
	.byte	0x2
	.byte	0x4e
	.byte	0x23
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF174
	.byte	0x2
	.byte	0x33
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xd01
	.uleb128 0x27
	.long	.LASF175
	.byte	0x2
	.byte	0x33
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF176
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xda6
	.uleb128 0x1e
	.long	.LASF177
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.long	.LASF178
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xd5c
	.uleb128 0x2d
	.long	.LASF177
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x2d
	.long	.LASF179
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xd31
	.uleb128 0x20
	.long	.LASF178
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xdb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF179
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF180
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xdbb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.long	.LASF181
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xf
	.long	0xd5c
	.long	0xdb6
	.uleb128 0x10
	.long	0xdf
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0xda6
	.uleb128 0x3
	.byte	0x8
	.long	0xd5c
	.uleb128 0x23
	.long	.LASF182
	.byte	0x1
	.value	0x116
	.byte	0x1
	.long	0xb71
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xe16
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x1
	.value	0x116
	.byte	0x27
	.long	0xb6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1f
	.string	"dp"
	.byte	0x1
	.value	0x11a
	.byte	0x1c
	.long	0xb71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF183
	.byte	0x1
	.value	0x109
	.byte	0x1
	.long	0x90a
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x1
	.value	0x109
	.byte	0x1c
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1f
	.string	"sep"
	.byte	0x1
	.value	0x10d
	.byte	0xc
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x16
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
	.uleb128 0x16
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x5
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"__off_t"
.LASF31:
	.string	"_IO_read_ptr"
.LASF133:
	.string	"locale_quoting_style"
.LASF43:
	.string	"_chain"
.LASF101:
	.string	"st_ctim"
.LASF159:
	.string	"dirp"
.LASF122:
	.string	"GETOPT_VERSION_CHAR"
.LASF149:
	.string	"longopts"
.LASF188:
	.string	"quoting_style"
.LASF15:
	.string	"size_t"
.LASF120:
	.string	"LOG10_TIMESPEC_HZ"
.LASF49:
	.string	"_shortbuf"
.LASF126:
	.string	"shell_quoting_style"
.LASF121:
	.string	"GETOPT_HELP_CHAR"
.LASF37:
	.string	"_IO_buf_base"
.LASF79:
	.string	"long long unsigned int"
.LASF166:
	.string	"file_name_prepend"
.LASF143:
	.string	"dev_ino"
.LASF52:
	.string	"_codecvt"
.LASF18:
	.string	"__gid_t"
.LASF87:
	.string	"stat"
.LASF168:
	.string	"n_free"
.LASF70:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF137:
	.string	"quoting_style_vals"
.LASF89:
	.string	"st_ino"
.LASF177:
	.string	"program"
.LASF132:
	.string	"escape_quoting_style"
.LASF20:
	.string	"__mode_t"
.LASF125:
	.string	"literal_quoting_style"
.LASF44:
	.string	"_fileno"
.LASF32:
	.string	"_IO_read_end"
.LASF185:
	.string	"src/pwd.c"
.LASF82:
	.string	"__timezone"
.LASF26:
	.string	"__blkcnt_t"
.LASF104:
	.string	"sys_siglist"
.LASF14:
	.string	"long int"
.LASF78:
	.string	"_gl_cxxalias_dummy"
.LASF160:
	.string	"parent_sb"
.LASF30:
	.string	"_flags"
.LASF53:
	.string	"_wide_data"
.LASF38:
	.string	"_IO_buf_end"
.LASF47:
	.string	"_cur_column"
.LASF108:
	.string	"program_invocation_short_name"
.LASF130:
	.string	"c_quoting_style"
.LASF61:
	.string	"_IO_codecvt"
.LASF69:
	.string	"_sys_errlist"
.LASF107:
	.string	"program_invocation_name"
.LASF46:
	.string	"_old_offset"
.LASF51:
	.string	"_offset"
.LASF116:
	.string	"d_name"
.LASF183:
	.string	"dot_or_dotdot"
.LASF119:
	.string	"TIMESPEC_HZ"
.LASF94:
	.string	"__pad0"
.LASF129:
	.string	"shell_escape_always_quoting_style"
.LASF182:
	.string	"readdir_ignoring_dot_and_dotdot"
.LASF85:
	.string	"timezone"
.LASF98:
	.string	"st_blocks"
.LASF124:
	.string	"program_name"
.LASF92:
	.string	"st_uid"
.LASF118:
	.string	"NOT_AN_INODE_NUMBER"
.LASF144:
	.string	"file_name"
.LASF60:
	.string	"_IO_marker"
.LASF63:
	.string	"stdin"
.LASF9:
	.string	"unsigned int"
.LASF55:
	.string	"_freeres_buf"
.LASF8:
	.string	"long unsigned int"
.LASF35:
	.string	"_IO_write_ptr"
.LASF5:
	.string	"name"
.LASF66:
	.string	"sys_nerr"
.LASF184:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF135:
	.string	"custom_quoting_style"
.LASF11:
	.string	"short unsigned int"
.LASF0:
	.string	"optarg"
.LASF140:
	.string	"error_one_per_line"
.LASF113:
	.string	"d_off"
.LASF109:
	.string	"Version"
.LASF39:
	.string	"_IO_save_base"
.LASF21:
	.string	"__nlink_t"
.LASF156:
	.string	"robust_getcwd"
.LASF117:
	.string	"__dirstream"
.LASF106:
	.string	"environ"
.LASF180:
	.string	"map_prog"
.LASF50:
	.string	"_lock"
.LASF45:
	.string	"_flags2"
.LASF57:
	.string	"_mode"
.LASF64:
	.string	"stdout"
.LASF96:
	.string	"st_size"
.LASF123:
	.string	"version_etc_copyright"
.LASF165:
	.string	"nth_parent"
.LASF91:
	.string	"st_mode"
.LASF161:
	.string	"use_lstat"
.LASF77:
	.string	"tv_nsec"
.LASF86:
	.string	"getdate_err"
.LASF16:
	.string	"__dev_t"
.LASF1:
	.string	"optind"
.LASF27:
	.string	"__syscall_slong_t"
.LASF36:
	.string	"_IO_write_end"
.LASF111:
	.string	"dirent"
.LASF145:
	.string	"n_alloc"
.LASF158:
	.string	"parent_height"
.LASF167:
	.string	"s_len"
.LASF187:
	.string	"_IO_lock_t"
.LASF29:
	.string	"_IO_FILE"
.LASF138:
	.string	"error_print_progname"
.LASF25:
	.string	"__blksize_t"
.LASF73:
	.string	"dev_t"
.LASF105:
	.string	"__environ"
.LASF74:
	.string	"time_t"
.LASF163:
	.string	"ent_sb"
.LASF67:
	.string	"sys_errlist"
.LASF42:
	.string	"_markers"
.LASF102:
	.string	"__glibc_reserved"
.LASF90:
	.string	"st_nlink"
.LASF131:
	.string	"c_maybe_quoting_style"
.LASF151:
	.string	"_Bool"
.LASF10:
	.string	"unsigned char"
.LASF179:
	.string	"node"
.LASF115:
	.string	"d_type"
.LASF153:
	.string	"dev_ino_buf"
.LASF13:
	.string	"short int"
.LASF28:
	.string	"option"
.LASF97:
	.string	"st_blksize"
.LASF142:
	.string	"quote_quoting_options"
.LASF7:
	.string	"flag"
.LASF68:
	.string	"_sys_nerr"
.LASF75:
	.string	"timespec"
.LASF170:
	.string	"n_used"
.LASF83:
	.string	"tzname"
.LASF59:
	.string	"FILE"
.LASF110:
	.string	"exit_failure"
.LASF128:
	.string	"shell_escape_quoting_style"
.LASF19:
	.string	"__ino_t"
.LASF136:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF84:
	.string	"daylight"
.LASF95:
	.string	"st_rdev"
.LASF71:
	.string	"long double"
.LASF2:
	.string	"char"
.LASF127:
	.string	"shell_always_quoting_style"
.LASF76:
	.string	"tv_sec"
.LASF134:
	.string	"clocale_quoting_style"
.LASF3:
	.string	"opterr"
.LASF155:
	.string	"dot_sb"
.LASF17:
	.string	"__uid_t"
.LASF23:
	.string	"__off64_t"
.LASF141:
	.string	"quoting_options"
.LASF33:
	.string	"_IO_read_base"
.LASF41:
	.string	"_IO_save_end"
.LASF112:
	.string	"d_ino"
.LASF103:
	.string	"_sys_siglist"
.LASF164:
	.string	"logical_getcwd"
.LASF178:
	.string	"infomap"
.LASF93:
	.string	"st_gid"
.LASF6:
	.string	"has_arg"
.LASF174:
	.string	"usage"
.LASF56:
	.string	"__pad5"
.LASF114:
	.string	"d_reclen"
.LASF24:
	.string	"__time_t"
.LASF162:
	.string	"found"
.LASF58:
	.string	"_unused2"
.LASF65:
	.string	"stderr"
.LASF99:
	.string	"st_atim"
.LASF148:
	.string	"argv"
.LASF81:
	.string	"__daylight"
.LASF175:
	.string	"status"
.LASF186:
	.string	"/root/coreutils"
.LASF157:
	.string	"find_dir_entry"
.LASF150:
	.string	"logical"
.LASF88:
	.string	"st_dev"
.LASF169:
	.string	"half"
.LASF40:
	.string	"_IO_backup_base"
.LASF100:
	.string	"st_mtim"
.LASF139:
	.string	"error_message_count"
.LASF181:
	.string	"lc_messages"
.LASF48:
	.string	"_vtable_offset"
.LASF147:
	.string	"argc"
.LASF54:
	.string	"_freeres_list"
.LASF171:
	.string	"file_name_init"
.LASF62:
	.string	"_IO_wide_data"
.LASF154:
	.string	"root_dev_ino"
.LASF146:
	.string	"start"
.LASF152:
	.string	"height"
.LASF80:
	.string	"__tzname"
.LASF173:
	.string	"main"
.LASF34:
	.string	"_IO_write_base"
.LASF176:
	.string	"emit_ancillary_info"
.LASF172:
	.string	"file_name_free"
.LASF72:
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
