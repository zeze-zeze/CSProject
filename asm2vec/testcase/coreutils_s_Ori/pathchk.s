	.file	"pathchk.c"
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
	.string	"portability"
.LC19:
	.string	"help"
.LC20:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 128
longopts:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC20
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
.LC21:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC22:
	.string	"Usage: %s [OPTION]... NAME...\n"
	.align 8
.LC23:
	.string	"Diagnose invalid or unportable file names.\n\n  -p                  check for most POSIX systems\n  -P                  check for empty names and leading \"-\"\n      --portability   check for all POSIX systems (equivalent to -p -P)\n"
	.align 8
.LC24:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC25:
	.string	"      --version  output version information and exit\n"
.LC26:
	.string	"pathchk"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/pathchk.c"
	.loc 2 83 1 is_stmt 1
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
	.loc 2 84 6
	cmpl	$0, -20(%rbp)
	je	.L11
	.loc 2 85 5
	movq	program_name(%rip), %rbx
	leaq	.LC21(%rip), %rdi
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
	.loc 2 88 7
	movq	program_name(%rip), %rbx
	.loc 2 88 15
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	.loc 2 88 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 89 7
	movq	stdout(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 96 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 97 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 98 7
	leaq	.LC26(%rip), %rdi
	call	emit_ancillary_info
.L12:
	.loc 2 100 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC27:
	.string	"/usr/local/share/locale"
.LC28:
	.string	"David MacKenzie"
.LC29:
	.string	"Paul Eggert"
.LC30:
	.string	"Jim Meyering"
.LC31:
	.string	"+pP"
.LC32:
	.string	"missing operand"
	.text
	.globl	main
	.type	main, @function
main:
.LFB47:
	.loc 2 105 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 106 8
	movb	$1, -7(%rbp)
	.loc 2 107 8
	movb	$0, -6(%rbp)
	.loc 2 108 8
	movb	$0, -5(%rbp)
	.loc 2 112 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 113 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 114 3
	leaq	.LC27(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 115 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 117 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 119 9
	jmp	.L14
.L21:
	.loc 2 121 7
	cmpl	$128, -4(%rbp)
	je	.L15
	cmpl	$128, -4(%rbp)
	jg	.L16
	cmpl	$112, -4(%rbp)
	je	.L17
	cmpl	$112, -4(%rbp)
	jg	.L16
	cmpl	$80, -4(%rbp)
	je	.L18
	cmpl	$80, -4(%rbp)
	jg	.L16
	cmpl	$-131, -4(%rbp)
	je	.L19
	cmpl	$-130, -4(%rbp)
	je	.L20
	jmp	.L16
.L15:
	.loc 2 124 35
	movb	$1, -6(%rbp)
	.loc 2 125 35
	movb	$1, -5(%rbp)
	.loc 2 126 11
	jmp	.L14
.L17:
	.loc 2 129 35
	movb	$1, -6(%rbp)
	.loc 2 130 11
	jmp	.L14
.L18:
	.loc 2 133 35
	movb	$1, -5(%rbp)
	.loc 2 134 11
	jmp	.L14
.L20:
	.loc 2 136 9
	movl	$0, %edi
	call	usage
.L19:
	.loc 2 138 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	leaq	.LC30(%rip), %rcx
	pushq	%rcx
	leaq	.LC28(%rip), %r9
	leaq	.LC29(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L16:
	.loc 2 141 11
	movl	$1, %edi
	call	usage
.L14:
	.loc 2 119 18
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -4(%rbp)
	.loc 2 119 9
	cmpl	$-1, -4(%rbp)
	jne	.L21
	.loc 2 145 14
	movl	optind(%rip), %eax
	.loc 2 145 6
	cmpl	%eax, -20(%rbp)
	jne	.L23
	.loc 2 147 20
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 147 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 148 7
	movl	$1, %edi
	call	usage
.L24:
	.loc 2 152 11 discriminator 2
	movzbl	-5(%rbp), %edx
	movzbl	-6(%rbp), %ecx
	.loc 2 152 35 discriminator 2
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	.loc 2 152 11 discriminator 2
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	validate_file_name
	.loc 2 152 8 discriminator 2
	movzbl	-7(%rbp), %edx
	.loc 2 152 11 discriminator 2
	movzbl	%al, %eax
	.loc 2 152 8 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -7(%rbp)
	.loc 2 151 25 discriminator 2
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L23:
	.loc 2 151 17 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 151 3 discriminator 1
	cmpl	%eax, -20(%rbp)
	jg	.L24
	.loc 2 155 28
	movzbl	-7(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 156 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC33:
	.string	"leading '-' in a component of file name %s"
	.text
	.type	no_leading_hyphen, @function
no_leading_hyphen:
.LFB48:
	.loc 2 163 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	.loc 2 166 10
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 166 3
	jmp	.L27
.L31:
	.loc 2 167 8
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L28
	.loc 2 167 23 discriminator 1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 167 19 discriminator 1
	cmpb	$47, %al
	jne	.L29
.L28:
	.loc 2 169 9
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 169 22
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	.loc 2 169 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 171 16
	movl	$0, %eax
	jmp	.L30
.L29:
	.loc 2 166 44 discriminator 2
	addq	$1, -24(%rbp)
.L27:
	.loc 2 166 24 discriminator 1
	movq	-24(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 166 3 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L31
	.loc 2 174 10
	movl	$1, %eax
.L30:
	.loc 2 175 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	no_leading_hyphen, .-no_leading_hyphen
	.section	.rodata
	.align 8
.LC34:
	.string	"/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-"
	.align 8
.LC35:
	.string	"nonportable character %s in file name %s"
	.text
	.type	portable_chars_only, @function
portable_chars_only:
.LFB49:
	.loc 2 182 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 182 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 183 21
	movq	-72(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	movq	%rax, -56(%rbp)
	.loc 2 188 15
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 190 7
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 190 6
	testb	%al, %al
	je	.L33
.LBB2:
	.loc 2 192 17
	movq	$0, -32(%rbp)
	.loc 2 193 24
	movq	-80(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rcx
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_mbrlen@PLT
	movq	%rax, -40(%rbp)
	.loc 2 194 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	cmpq	$16, -40(%rbp)
	ja	.L34
	.loc 2 194 7 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	jmp	.L35
.L34:
	.loc 2 194 7 discriminator 2
	movl	$1, %eax
.L35:
	.loc 2 194 7 discriminator 4
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	movl	$8, %esi
	movl	$1, %edi
	call	quotearg_n_style_mem@PLT
	movq	%rax, %rbx
	.loc 2 195 14 is_stmt 1 discriminator 4
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	.loc 2 194 7 discriminator 4
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 199 14 discriminator 4
	movl	$0, %eax
	jmp	.L36
.L33:
.LBE2:
	.loc 2 202 10
	movl	$1, %eax
.L36:
	.loc 2 203 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L37
	.loc 2 203 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L37:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	portable_chars_only, .-portable_chars_only
	.type	component_start, @function
component_start:
.LFB50:
	.loc 2 209 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 210 9
	jmp	.L39
.L40:
	.loc 2 211 6
	addq	$1, -8(%rbp)
.L39:
	.loc 2 210 10
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 210 9
	cmpb	$47, %al
	je	.L40
	.loc 2 212 10
	movq	-8(%rbp), %rax
	.loc 2 213 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	component_start, .-component_start
	.type	component_len, @function
component_len:
.LFB51:
	.loc 2 219 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 221 12
	movq	$1, -8(%rbp)
	.loc 2 221 3
	jmp	.L43
.L45:
	.loc 2 221 45
	addq	$1, -8(%rbp)
.L43:
	.loc 2 221 18 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 221 3 discriminator 1
	cmpb	$47, %al
	je	.L44
	.loc 2 221 35 discriminator 3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 221 31 discriminator 3
	testb	%al, %al
	jne	.L45
.L44:
	.loc 2 223 10
	movq	-8(%rbp), %rax
	.loc 2 224 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	component_len, .-component_len
	.section	.rodata
.LC36:
	.string	"empty file name"
.LC37:
	.string	"%s"
.LC38:
	.string	"/"
.LC39:
	.string	"."
	.align 8
.LC40:
	.string	"%s: unable to determine maximum file name length"
	.align 8
.LC41:
	.string	"limit %lu exceeded by length %lu of file name %s"
	.align 8
.LC42:
	.string	"limit %lu exceeded by length %lu of file name component %s"
	.text
	.type	validate_file_name, @function
validate_file_name:
.LFB52:
	.loc 2 249 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%ecx, %edx
	movb	%dl, -316(%rbp)
	movb	%al, -320(%rbp)
	.loc 2 249 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 250 20
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -264(%rbp)
	.loc 2 259 8
	movb	$0, -299(%rbp)
	.loc 2 261 6
	cmpb	$0, -320(%rbp)
	je	.L48
	.loc 2 261 36 discriminator 1
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	no_leading_hyphen
	.loc 2 261 34 discriminator 1
	xorl	$1, %eax
	.loc 2 261 31 discriminator 1
	testb	%al, %al
	je	.L48
	.loc 2 262 12
	movl	$0, %eax
	jmp	.L49
.L48:
	.loc 2 264 6
	cmpb	$0, -316(%rbp)
	jne	.L50
	.loc 2 264 32 discriminator 1
	cmpb	$0, -320(%rbp)
	je	.L51
.L50:
	.loc 2 265 7
	cmpq	$0, -264(%rbp)
	jne	.L51
	.loc 2 271 20
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 2 271 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 272 14
	movl	$0, %eax
	jmp	.L49
.L51:
	.loc 2 275 6
	cmpb	$0, -316(%rbp)
	je	.L52
	.loc 2 277 13
	movq	-264(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	portable_chars_only
	.loc 2 277 11
	xorl	$1, %eax
	.loc 2 277 10
	testb	%al, %al
	je	.L53
	.loc 2 278 16
	movl	$0, %eax
	jmp	.L49
.L52:
.LBB3:
	.loc 2 288 11
	leaq	-176(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 2 288 10
	testl	%eax, %eax
	jne	.L54
	.loc 2 289 21
	movb	$1, -299(%rbp)
	jmp	.L53
.L54:
	.loc 2 290 16
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 290 15
	cmpl	$2, %eax
	jne	.L56
	.loc 2 290 32 discriminator 1
	cmpq	$0, -264(%rbp)
	jne	.L53
.L56:
	.loc 2 292 11
	movq	-312(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 292 21
	call	__errno_location@PLT
	.loc 2 292 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 293 18
	movl	$0, %eax
	jmp	.L49
.L53:
.LBE3:
	.loc 2 297 6
	cmpb	$0, -316(%rbp)
	jne	.L57
	.loc 2 298 11
	movzbl	-299(%rbp), %eax
	xorl	$1, %eax
	.loc 2 298 7
	testb	%al, %al
	je	.L58
	.loc 2 298 25 discriminator 1
	cmpq	$255, -264(%rbp)
	jbe	.L58
.L57:
.LBB4:
	.loc 2 302 10
	cmpb	$0, -316(%rbp)
	je	.L59
	.loc 2 303 17
	movq	$256, -288(%rbp)
	jmp	.L60
.L59:
.LBB5:
	.loc 2 307 30
	movq	-312(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 307 49
	cmpb	$47, %al
	jne	.L61
	.loc 2 307 49 is_stmt 0 discriminator 1
	leaq	.LC38(%rip), %rax
	jmp	.L62
.L61:
	.loc 2 307 49 discriminator 2
	leaq	.LC39(%rip), %rax
.L62:
	.loc 2 307 23 is_stmt 1 discriminator 4
	movq	%rax, -256(%rbp)
	.loc 2 308 11 discriminator 4
	call	__errno_location@PLT
	.loc 2 308 17 discriminator 4
	movl	$0, (%rax)
	.loc 2 309 18 discriminator 4
	movq	-256(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	pathconf@PLT
	movq	%rax, -248(%rbp)
	.loc 2 310 14 discriminator 4
	cmpq	$0, -248(%rbp)
	jns	.L63
	.loc 2 310 27 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 310 24 discriminator 1
	testl	%eax, %eax
	je	.L63
	.loc 2 313 22
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 312 25
	call	__errno_location@PLT
	.loc 2 312 15
	movl	(%rax), %eax
	movq	-256(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 315 22
	movl	$0, %eax
	jmp	.L49
.L63:
	.loc 2 317 19
	movq	-248(%rbp), %rax
	movq	%rax, -288(%rbp)
.L60:
.LBE5:
	.loc 2 320 10
	movq	-288(%rbp), %rax
	cmpq	-264(%rbp), %rax
	ja	.L58
.LBB6:
	.loc 2 322 29
	movq	-264(%rbp), %rax
	movq	%rax, -240(%rbp)
	.loc 2 323 29
	movq	-288(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -232(%rbp)
	.loc 2 324 11
	movq	-312(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 324 24
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 324 11
	movq	-240(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 326 18
	movl	$0, %eax
	jmp	.L49
.L58:
.LBE6:
.LBE4:
	.loc 2 335 27
	movzbl	-316(%rbp), %eax
	movb	%al, -300(%rbp)
	.loc 2 336 7
	movzbl	-300(%rbp), %eax
	xorl	$1, %eax
	.loc 2 336 6
	testb	%al, %al
	je	.L64
	.loc 2 336 36 discriminator 1
	movzbl	-299(%rbp), %eax
	xorl	$1, %eax
	.loc 2 336 33 discriminator 1
	testb	%al, %al
	je	.L64
	.loc 2 338 18
	movq	-312(%rbp), %rax
	movq	%rax, -296(%rbp)
	.loc 2 338 7
	jmp	.L65
.L67:
.LBB7:
	.loc 2 340 27
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	component_len
	movq	%rax, -224(%rbp)
	.loc 2 342 14
	cmpq	$14, -224(%rbp)
	jbe	.L66
	.loc 2 344 39
	movb	$1, -300(%rbp)
	.loc 2 345 15
	jmp	.L64
.L66:
	.loc 2 348 17
	movq	-224(%rbp), %rax
	addq	%rax, -296(%rbp)
.L65:
.LBE7:
	.loc 2 338 36 discriminator 1
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	component_start
	movq	%rax, -296(%rbp)
	.loc 2 338 26 discriminator 1
	movq	-296(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 338 7 discriminator 1
	testb	%al, %al
	jne	.L67
.L64:
	.loc 2 352 6
	cmpb	$0, -300(%rbp)
	je	.L68
.LBB8:
	.loc 2 358 14
	movq	$14, -280(%rbp)
	.loc 2 361 74
	cmpb	$0, -316(%rbp)
	je	.L69
	.loc 2 361 74 is_stmt 0 discriminator 1
	movl	$14, %eax
	jmp	.L70
.L69:
	.loc 2 361 74 discriminator 2
	movl	$0, %eax
.L70:
	.loc 2 361 14 is_stmt 1 discriminator 4
	movq	%rax, -272(%rbp)
	.loc 2 363 18 discriminator 4
	movq	-312(%rbp), %rax
	movq	%rax, -296(%rbp)
	.loc 2 363 7 discriminator 4
	jmp	.L71
.L81:
.LBB9:
	.loc 2 367 14
	cmpq	$0, -272(%rbp)
	je	.L72
	.loc 2 368 22
	movq	-272(%rbp), %rax
	movq	%rax, -280(%rbp)
	jmp	.L73
.L72:
.LBB10:
	.loc 2 372 54
	movq	-296(%rbp), %rax
	cmpq	-312(%rbp), %rax
	je	.L74
	.loc 2 372 54 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax
	jmp	.L75
.L74:
	.loc 2 372 54 discriminator 2
	leaq	.LC39(%rip), %rax
.L75:
	.loc 2 372 27 is_stmt 1 discriminator 4
	movq	%rax, -216(%rbp)
	.loc 2 373 20 discriminator 4
	movq	-296(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -298(%rbp)
	.loc 2 374 15 discriminator 4
	call	__errno_location@PLT
	.loc 2 374 21 discriminator 4
	movl	$0, (%rax)
	.loc 2 375 22 discriminator 4
	movq	-296(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 376 21 discriminator 4
	movq	-216(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	pathconf@PLT
	movq	%rax, -208(%rbp)
	.loc 2 377 22 discriminator 4
	movq	-296(%rbp), %rax
	movzbl	-298(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 378 18 discriminator 4
	cmpq	$0, -208(%rbp)
	js	.L76
	.loc 2 379 26
	movq	-208(%rbp), %rax
	movq	%rax, -280(%rbp)
	jmp	.L73
.L76:
	.loc 2 381 25
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 381 17
	testl	%eax, %eax
	je	.L77
	cmpl	$2, %eax
	je	.L78
	jmp	.L83
.L77:
	.loc 2 385 30
	movq	$-1, -280(%rbp)
	.loc 2 386 21
	jmp	.L73
.L78:
	.loc 2 390 36
	movq	-280(%rbp), %rax
	movq	%rax, -272(%rbp)
	.loc 2 391 21
	jmp	.L73
.L83:
	.loc 2 394 28
	movq	-296(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 395 21
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 395 31
	call	__errno_location@PLT
	.loc 2 395 21
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 396 28
	movq	-296(%rbp), %rax
	movzbl	-298(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 397 28
	movl	$0, %eax
	jmp	.L49
.L73:
.LBE10:
	.loc 2 401 20
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	component_len
	movq	%rax, -200(%rbp)
	.loc 2 403 14
	movq	-280(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jnb	.L80
.LBB11:
	.loc 2 405 33
	movq	-200(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 2 406 33
	movq	-280(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 2 407 29
	movq	-296(%rbp), %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 407 20
	movzbl	(%rax), %eax
	movb	%al, -297(%rbp)
	.loc 2 408 20
	movq	-296(%rbp), %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 408 26
	movb	$0, (%rax)
	.loc 2 409 15
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 410 22
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 409 15
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 413 20
	movq	-296(%rbp), %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 413 26
	movzbl	-297(%rbp), %eax
	movb	%al, (%rdx)
	.loc 2 414 22
	movl	$0, %eax
	jmp	.L49
.L80:
.LBE11:
	.loc 2 417 17
	movq	-200(%rbp), %rax
	addq	%rax, -296(%rbp)
.L71:
.LBE9:
	.loc 2 363 36 discriminator 1
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	component_start
	movq	%rax, -296(%rbp)
	.loc 2 363 26 discriminator 1
	movq	-296(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 363 7 discriminator 1
	testb	%al, %al
	jne	.L81
.L68:
.LBE8:
	.loc 2 421 10
	movl	$1, %eax
.L49:
	.loc 2 422 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L82
	call	__stack_chk_fail@PLT
.L82:
	addq	$312, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	validate_file_name, .-validate_file_name
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 18 "/usr/include/signal.h"
	.file 19 "/usr/include/unistd.h"
	.file 20 "/usr/include/errno.h"
	.file 21 "src/version.h"
	.file 22 "./lib/exitfail.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/confname.h"
	.file 24 "./lib/timespec.h"
	.file 25 "./lib/version-etc.h"
	.file 26 "./lib/progname.h"
	.file 27 "./lib/quotearg.h"
	.file 28 "./lib/error.h"
	.file 29 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd81
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF196
	.byte	0xc
	.long	.LASF197
	.long	.LASF198
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
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x71
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x71
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x10e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x8
	.long	0x10e
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x3
	.long	0x13c
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x12
	.byte	0x13
	.long	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x13
	.byte	0xa
	.long	0x13c
	.byte	0
	.uleb128 0xb
	.long	0x10e
	.long	0x14c
	.uleb128 0xc
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.byte	0xd
	.byte	0x9
	.long	0x170
	.uleb128 0xe
	.long	.LASF23
	.byte	0x5
	.byte	0xf
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xe
	.long	.LASF24
	.byte	0x5
	.byte	0x14
	.byte	0x5
	.long	0x11a
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF25
	.byte	0x5
	.byte	0x15
	.byte	0x3
	.long	0x14c
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x303
	.uleb128 0xe
	.long	.LASF26
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xe
	.long	.LASF27
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x108
	.byte	0x8
	.uleb128 0xe
	.long	.LASF28
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x108
	.byte	0x10
	.uleb128 0xe
	.long	.LASF29
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x108
	.byte	0x18
	.uleb128 0xe
	.long	.LASF30
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x108
	.byte	0x20
	.uleb128 0xe
	.long	.LASF31
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x108
	.byte	0x28
	.uleb128 0xe
	.long	.LASF32
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x108
	.byte	0x30
	.uleb128 0xe
	.long	.LASF33
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x108
	.byte	0x38
	.uleb128 0xe
	.long	.LASF34
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x108
	.byte	0x40
	.uleb128 0xe
	.long	.LASF35
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x108
	.byte	0x48
	.uleb128 0xe
	.long	.LASF36
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x108
	.byte	0x50
	.uleb128 0xe
	.long	.LASF37
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x108
	.byte	0x58
	.uleb128 0xe
	.long	.LASF38
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x31c
	.byte	0x60
	.uleb128 0xe
	.long	.LASF39
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x322
	.byte	0x68
	.uleb128 0xe
	.long	.LASF40
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xe
	.long	.LASF41
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xe
	.long	.LASF42
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0xc0
	.byte	0x78
	.uleb128 0xe
	.long	.LASF43
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xe
	.long	.LASF44
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x328
	.byte	0x83
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x338
	.byte	0x88
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xcc
	.byte	0x90
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x343
	.byte	0x98
	.uleb128 0xe
	.long	.LASF49
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x34e
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x322
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF51
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF52
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xe
	.long	.LASF53
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF54
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x354
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x17c
	.uleb128 0x10
	.long	.LASF199
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF56
	.uleb128 0x7
	.byte	0x8
	.long	0x317
	.uleb128 0x7
	.byte	0x8
	.long	0x17c
	.uleb128 0xb
	.long	0x10e
	.long	0x338
	.uleb128 0xc
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x30f
	.uleb128 0x11
	.long	.LASF57
	.uleb128 0x7
	.byte	0x8
	.long	0x33e
	.uleb128 0x11
	.long	.LASF58
	.uleb128 0x7
	.byte	0x8
	.long	0x349
	.uleb128 0xb
	.long	0x10e
	.long	0x364
	.uleb128 0xc
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x115
	.uleb128 0x8
	.long	0x364
	.uleb128 0x12
	.long	.LASF59
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x37b
	.uleb128 0x7
	.byte	0x8
	.long	0x303
	.uleb128 0x12
	.long	.LASF60
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x37b
	.uleb128 0x12
	.long	.LASF61
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x37b
	.uleb128 0x12
	.long	.LASF62
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xb
	.long	0x36a
	.long	0x3b0
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.long	0x3a5
	.uleb128 0x12
	.long	.LASF63
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x3b0
	.uleb128 0x12
	.long	.LASF64
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF65
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x3b0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF66
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF67
	.uleb128 0x2
	.long	.LASF68
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xd8
	.uleb128 0xf
	.long	.LASF70
	.byte	0x10
	.byte	0xb
	.byte	0xa
	.byte	0x8
	.long	0x41b
	.uleb128 0xe
	.long	.LASF71
	.byte	0xb
	.byte	0xc
	.byte	0xc
	.long	0xd8
	.byte	0
	.uleb128 0xe
	.long	.LASF72
	.byte	0xb
	.byte	0x10
	.byte	0x15
	.long	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF73
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF74
	.uleb128 0x12
	.long	.LASF75
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0x108
	.uleb128 0x12
	.long	.LASF76
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF77
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF78
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF79
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x4a1
	.uleb128 0xe
	.long	.LASF80
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x364
	.byte	0
	.uleb128 0xe
	.long	.LASF81
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xe
	.long	.LASF82
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x4a6
	.byte	0x10
	.uleb128 0x15
	.string	"val"
	.byte	0xe
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x45f
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x2
	.long	.LASF83
	.byte	0xf
	.byte	0x6
	.byte	0x15
	.long	0x170
	.uleb128 0xb
	.long	0x108
	.long	0x4c8
	.uleb128 0xc
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF84
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x4b8
	.uleb128 0x12
	.long	.LASF85
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF86
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0x12
	.long	.LASF87
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x4b8
	.uleb128 0x12
	.long	.LASF88
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF89
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x14
	.long	.LASF90
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF91
	.byte	0x90
	.byte	0x11
	.byte	0x2e
	.byte	0x8
	.long	0x5ee
	.uleb128 0xe
	.long	.LASF92
	.byte	0x11
	.byte	0x30
	.byte	0xd
	.long	0x78
	.byte	0
	.uleb128 0xe
	.long	.LASF93
	.byte	0x11
	.byte	0x35
	.byte	0xd
	.long	0x9c
	.byte	0x8
	.uleb128 0xe
	.long	.LASF94
	.byte	0x11
	.byte	0x3d
	.byte	0xf
	.long	0xb4
	.byte	0x10
	.uleb128 0xe
	.long	.LASF95
	.byte	0x11
	.byte	0x3e
	.byte	0xe
	.long	0xa8
	.byte	0x18
	.uleb128 0xe
	.long	.LASF96
	.byte	0x11
	.byte	0x40
	.byte	0xd
	.long	0x84
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF97
	.byte	0x11
	.byte	0x41
	.byte	0xd
	.long	0x90
	.byte	0x20
	.uleb128 0xe
	.long	.LASF98
	.byte	0x11
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xe
	.long	.LASF99
	.byte	0x11
	.byte	0x45
	.byte	0xd
	.long	0x78
	.byte	0x28
	.uleb128 0xe
	.long	.LASF100
	.byte	0x11
	.byte	0x4a
	.byte	0xd
	.long	0xc0
	.byte	0x30
	.uleb128 0xe
	.long	.LASF101
	.byte	0x11
	.byte	0x4e
	.byte	0x11
	.long	0xe4
	.byte	0x38
	.uleb128 0xe
	.long	.LASF102
	.byte	0x11
	.byte	0x50
	.byte	0x10
	.long	0xf0
	.byte	0x40
	.uleb128 0xe
	.long	.LASF103
	.byte	0x11
	.byte	0x5b
	.byte	0x15
	.long	0x3f3
	.byte	0x48
	.uleb128 0xe
	.long	.LASF104
	.byte	0x11
	.byte	0x5c
	.byte	0x15
	.long	0x3f3
	.byte	0x58
	.uleb128 0xe
	.long	.LASF105
	.byte	0x11
	.byte	0x5d
	.byte	0x15
	.long	0x3f3
	.byte	0x68
	.uleb128 0xe
	.long	.LASF106
	.byte	0x11
	.byte	0x6a
	.byte	0x17
	.long	0x5ee
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.long	0xfc
	.long	0x5fe
	.uleb128 0xc
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.uleb128 0x7
	.byte	0x8
	.long	0x5fe
	.uleb128 0xb
	.long	0x36a
	.long	0x615
	.uleb128 0xc
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x605
	.uleb128 0x14
	.long	.LASF107
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x615
	.uleb128 0x14
	.long	.LASF108
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x615
	.uleb128 0x14
	.long	.LASF109
	.byte	0x13
	.value	0x21f
	.byte	0xf
	.long	0x641
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0x14
	.long	.LASF110
	.byte	0x13
	.value	0x221
	.byte	0xf
	.long	0x641
	.uleb128 0x17
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x19
	.byte	0x3
	.long	0x6e1
	.uleb128 0x18
	.long	.LASF111
	.byte	0
	.uleb128 0x18
	.long	.LASF112
	.byte	0x1
	.uleb128 0x18
	.long	.LASF113
	.byte	0x2
	.uleb128 0x18
	.long	.LASF114
	.byte	0x3
	.uleb128 0x18
	.long	.LASF115
	.byte	0x4
	.uleb128 0x18
	.long	.LASF116
	.byte	0x5
	.uleb128 0x18
	.long	.LASF117
	.byte	0x6
	.uleb128 0x18
	.long	.LASF118
	.byte	0x7
	.uleb128 0x18
	.long	.LASF119
	.byte	0x8
	.uleb128 0x18
	.long	.LASF120
	.byte	0x9
	.uleb128 0x18
	.long	.LASF121
	.byte	0xa
	.uleb128 0x18
	.long	.LASF122
	.byte	0xb
	.uleb128 0x18
	.long	.LASF123
	.byte	0xc
	.uleb128 0x18
	.long	.LASF124
	.byte	0xd
	.uleb128 0x18
	.long	.LASF125
	.byte	0xe
	.uleb128 0x18
	.long	.LASF126
	.byte	0xf
	.uleb128 0x18
	.long	.LASF127
	.byte	0x10
	.uleb128 0x18
	.long	.LASF128
	.byte	0x11
	.uleb128 0x18
	.long	.LASF129
	.byte	0x12
	.uleb128 0x18
	.long	.LASF130
	.byte	0x13
	.uleb128 0x18
	.long	.LASF131
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.long	.LASF132
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0x108
	.uleb128 0x12
	.long	.LASF133
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0x108
	.uleb128 0x12
	.long	.LASF134
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0x364
	.uleb128 0x12
	.long	.LASF135
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x17
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x729
	.uleb128 0x19
	.long	.LASF136
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x17
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x73e
	.uleb128 0x18
	.long	.LASF137
	.byte	0x9
	.byte	0
	.uleb128 0x1a
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x75c
	.uleb128 0x1b
	.long	.LASF138
	.sleb128 -130
	.uleb128 0x1b
	.long	.LASF139
	.sleb128 -131
	.byte	0
	.uleb128 0xb
	.long	0x115
	.long	0x767
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.long	0x75c
	.uleb128 0x12
	.long	.LASF140
	.byte	0x19
	.byte	0x19
	.byte	0x13
	.long	0x767
	.uleb128 0x12
	.long	.LASF141
	.byte	0x1a
	.byte	0x20
	.byte	0x14
	.long	0x364
	.uleb128 0x1c
	.long	.LASF200
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1b
	.byte	0x20
	.byte	0x6
	.long	0x7d9
	.uleb128 0x18
	.long	.LASF142
	.byte	0
	.uleb128 0x18
	.long	.LASF143
	.byte	0x1
	.uleb128 0x18
	.long	.LASF144
	.byte	0x2
	.uleb128 0x18
	.long	.LASF145
	.byte	0x3
	.uleb128 0x18
	.long	.LASF146
	.byte	0x4
	.uleb128 0x18
	.long	.LASF147
	.byte	0x5
	.uleb128 0x18
	.long	.LASF148
	.byte	0x6
	.uleb128 0x18
	.long	.LASF149
	.byte	0x7
	.uleb128 0x18
	.long	.LASF150
	.byte	0x8
	.uleb128 0x18
	.long	.LASF151
	.byte	0x9
	.uleb128 0x18
	.long	.LASF152
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x784
	.uleb128 0x14
	.long	.LASF153
	.byte	0x1b
	.value	0x10b
	.byte	0x1a
	.long	0x3b0
	.uleb128 0xb
	.long	0x7d9
	.long	0x7f6
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.long	0x7eb
	.uleb128 0x14
	.long	.LASF154
	.byte	0x1b
	.value	0x10c
	.byte	0x21
	.long	0x7f6
	.uleb128 0x12
	.long	.LASF155
	.byte	0x1c
	.byte	0x32
	.byte	0xf
	.long	0x5ff
	.uleb128 0x12
	.long	.LASF156
	.byte	0x1c
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0x12
	.long	.LASF157
	.byte	0x1c
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x11
	.long	.LASF158
	.uleb128 0x12
	.long	.LASF159
	.byte	0x1d
	.byte	0x19
	.byte	0x1f
	.long	0x82c
	.uleb128 0x17
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x45
	.byte	0x1
	.long	0x852
	.uleb128 0x18
	.long	.LASF160
	.byte	0x80
	.byte	0
	.uleb128 0xb
	.long	0x4a1
	.long	0x862
	.uleb128 0xc
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x852
	.uleb128 0x1d
	.long	.LASF164
	.byte	0x2
	.byte	0x49
	.byte	0x1c
	.long	0x862
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1e
	.long	.LASF176
	.byte	0x2
	.byte	0xf7
	.byte	0x1
	.long	0xad3
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xad3
	.uleb128 0x1f
	.long	.LASF161
	.byte	0x2
	.byte	0xf7
	.byte	0x1b
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1f
	.long	.LASF162
	.byte	0x2
	.byte	0xf7
	.byte	0x26
	.long	0xad3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x1f
	.long	.LASF163
	.byte	0x2
	.byte	0xf8
	.byte	0x1a
	.long	0xad3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1d
	.long	.LASF165
	.byte	0x2
	.byte	0xfa
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1d
	.long	.LASF166
	.byte	0x2
	.byte	0xfd
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x20
	.long	.LASF167
	.byte	0x2
	.value	0x100
	.byte	0x8
	.long	0xad3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x20
	.long	.LASF168
	.byte	0x2
	.value	0x103
	.byte	0x8
	.long	0xad3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -315
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x937
	.uleb128 0x22
	.string	"st"
	.byte	0x2
	.value	0x11f
	.byte	0x13
	.long	0x51d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x9ca
	.uleb128 0x20
	.long	.LASF169
	.byte	0x2
	.value	0x12c
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x995
	.uleb128 0x20
	.long	.LASF170
	.byte	0x2
	.value	0x132
	.byte	0x14
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x22
	.string	"dir"
	.byte	0x2
	.value	0x133
	.byte	0x17
	.long	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x23
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x22
	.string	"len"
	.byte	0x2
	.value	0x142
	.byte	0x1d
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x20
	.long	.LASF171
	.byte	0x2
	.value	0x143
	.byte	0x1d
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x9f1
	.uleb128 0x20
	.long	.LASF172
	.byte	0x2
	.value	0x154
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x23
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x20
	.long	.LASF173
	.byte	0x2
	.value	0x166
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x20
	.long	.LASF174
	.byte	0x2
	.value	0x169
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x23
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x20
	.long	.LASF172
	.byte	0x2
	.value	0x16d
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x21
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xa8d
	.uleb128 0x22
	.string	"len"
	.byte	0x2
	.value	0x173
	.byte	0x18
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x22
	.string	"dir"
	.byte	0x2
	.value	0x174
	.byte	0x1b
	.long	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x22
	.string	"c"
	.byte	0x2
	.value	0x175
	.byte	0x14
	.long	0x10e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -314
	.byte	0
	.uleb128 0x23
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x22
	.string	"len"
	.byte	0x2
	.value	0x195
	.byte	0x21
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x20
	.long	.LASF171
	.byte	0x2
	.value	0x196
	.byte	0x21
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x22
	.string	"c"
	.byte	0x2
	.value	0x197
	.byte	0x14
	.long	0x10e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -313
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF175
	.uleb128 0x24
	.long	.LASF177
	.byte	0x2
	.byte	0xda
	.byte	0x1
	.long	0x2d
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xb19
	.uleb128 0x25
	.string	"f"
	.byte	0x2
	.byte	0xda
	.byte	0x1c
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"len"
	.byte	0x2
	.byte	0xdc
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF178
	.byte	0x2
	.byte	0xd0
	.byte	0x1
	.long	0x108
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xb49
	.uleb128 0x25
	.string	"f"
	.byte	0x2
	.byte	0xd0
	.byte	0x18
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.long	0xad3
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xbdb
	.uleb128 0x1f
	.long	.LASF161
	.byte	0x2
	.byte	0xb5
	.byte	0x22
	.long	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.long	.LASF165
	.byte	0x2
	.byte	0xb5
	.byte	0x2f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF180
	.byte	0x2
	.byte	0xb7
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF181
	.byte	0x2
	.byte	0xbc
	.byte	0xf
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1d
	.long	.LASF182
	.byte	0x2
	.byte	0xc0
	.byte	0x11
	.long	0x4ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF183
	.byte	0x2
	.byte	0xc1
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF184
	.byte	0x2
	.byte	0xa2
	.byte	0x1
	.long	0xad3
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xc1a
	.uleb128 0x1f
	.long	.LASF161
	.byte	0x2
	.byte	0xa2
	.byte	0x20
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"p"
	.byte	0x2
	.byte	0xa4
	.byte	0xf
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.long	.LASF188
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.long	0x65
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xc96
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x2
	.byte	0x68
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF186
	.byte	0x2
	.byte	0x68
	.byte	0x18
	.long	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"ok"
	.byte	0x2
	.byte	0x6a
	.byte	0x8
	.long	0xad3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x2
	.byte	0x6b
	.byte	0x8
	.long	0xad3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1d
	.long	.LASF163
	.byte	0x2
	.byte	0x6c
	.byte	0x8
	.long	0xad3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1d
	.long	.LASF187
	.byte	0x2
	.byte	0x6d
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF189
	.byte	0x2
	.byte	0x52
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc4
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x2
	.byte	0x52
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x29
	.long	.LASF201
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xd69
	.uleb128 0x2a
	.long	.LASF191
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.long	.LASF192
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xd1f
	.uleb128 0x2c
	.long	.LASF191
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x364
	.byte	0
	.uleb128 0x2c
	.long	.LASF193
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x364
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xcf4
	.uleb128 0x20
	.long	.LASF192
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xd79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF193
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF194
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xd7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.long	.LASF195
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xb
	.long	0xd1f
	.long	0xd79
	.uleb128 0xc
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xd69
	.uleb128 0x7
	.byte	0x8
	.long	0xd1f
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
.LASF135:
	.string	"exit_failure"
.LASF14:
	.string	"__off_t"
.LASF10:
	.string	"__gid_t"
.LASF27:
	.string	"_IO_read_ptr"
.LASF150:
	.string	"locale_quoting_style"
.LASF39:
	.string	"_chain"
.LASF105:
	.string	"st_ctim"
.LASF139:
	.string	"GETOPT_VERSION_CHAR"
.LASF167:
	.string	"check_component_lengths"
.LASF200:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF137:
	.string	"LOG10_TIMESPEC_HZ"
.LASF45:
	.string	"_shortbuf"
.LASF97:
	.string	"st_gid"
.LASF143:
	.string	"shell_quoting_style"
.LASF114:
	.string	"_PC_NAME_MAX"
.LASF138:
	.string	"GETOPT_HELP_CHAR"
.LASF33:
	.string	"_IO_buf_base"
.LASF172:
	.string	"length"
.LASF181:
	.string	"invalid"
.LASF74:
	.string	"long long unsigned int"
.LASF25:
	.string	"__mbstate_t"
.LASF115:
	.string	"_PC_PATH_MAX"
.LASF48:
	.string	"_codecvt"
.LASF164:
	.string	"longopts"
.LASF91:
	.string	"stat"
.LASF116:
	.string	"_PC_PIPE_BUF"
.LASF66:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF154:
	.string	"quoting_style_vals"
.LASF93:
	.string	"st_ino"
.LASF191:
	.string	"program"
.LASF149:
	.string	"escape_quoting_style"
.LASF12:
	.string	"__mode_t"
.LASF170:
	.string	"size"
.LASF142:
	.string	"literal_quoting_style"
.LASF112:
	.string	"_PC_MAX_CANON"
.LASF28:
	.string	"_IO_read_end"
.LASF174:
	.string	"known_name_max"
.LASF86:
	.string	"__timezone"
.LASF18:
	.string	"__blkcnt_t"
.LASF108:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF73:
	.string	"_gl_cxxalias_dummy"
.LASF40:
	.string	"_fileno"
.LASF26:
	.string	"_flags"
.LASF119:
	.string	"_PC_VDISABLE"
.LASF49:
	.string	"_wide_data"
.LASF34:
	.string	"_IO_buf_end"
.LASF43:
	.string	"_cur_column"
.LASF133:
	.string	"program_invocation_short_name"
.LASF147:
	.string	"c_quoting_style"
.LASF57:
	.string	"_IO_codecvt"
.LASF65:
	.string	"_sys_errlist"
.LASF132:
	.string	"program_invocation_name"
.LASF42:
	.string	"_old_offset"
.LASF47:
	.string	"_offset"
.LASF127:
	.string	"_PC_REC_MIN_XFER_SIZE"
.LASF136:
	.string	"TIMESPEC_HZ"
.LASF98:
	.string	"__pad0"
.LASF146:
	.string	"shell_escape_always_quoting_style"
.LASF89:
	.string	"timezone"
.LASF176:
	.string	"validate_file_name"
.LASF163:
	.string	"check_extra_portability"
.LASF52:
	.string	"__pad5"
.LASF102:
	.string	"st_blocks"
.LASF141:
	.string	"program_name"
.LASF96:
	.string	"st_uid"
.LASF56:
	.string	"_IO_marker"
.LASF59:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF22:
	.string	"__wchb"
.LASF126:
	.string	"_PC_REC_MAX_XFER_SIZE"
.LASF78:
	.string	"optopt"
.LASF173:
	.string	"name_max"
.LASF0:
	.string	"long unsigned int"
.LASF79:
	.string	"option"
.LASF31:
	.string	"_IO_write_ptr"
.LASF80:
	.string	"name"
.LASF88:
	.string	"daylight"
.LASF62:
	.string	"sys_nerr"
.LASF196:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF187:
	.string	"optc"
.LASF3:
	.string	"short unsigned int"
.LASF157:
	.string	"error_one_per_line"
.LASF171:
	.string	"maxlen"
.LASF134:
	.string	"Version"
.LASF117:
	.string	"_PC_CHOWN_RESTRICTED"
.LASF35:
	.string	"_IO_save_base"
.LASF21:
	.string	"__wch"
.LASF110:
	.string	"environ"
.LASF46:
	.string	"_lock"
.LASF41:
	.string	"_flags2"
.LASF53:
	.string	"_mode"
.LASF83:
	.string	"mbstate_t"
.LASF60:
	.string	"stdout"
.LASF120:
	.string	"_PC_SYNC_IO"
.LASF121:
	.string	"_PC_ASYNC_IO"
.LASF100:
	.string	"st_size"
.LASF140:
	.string	"version_etc_copyright"
.LASF95:
	.string	"st_mode"
.LASF168:
	.string	"file_exists"
.LASF130:
	.string	"_PC_SYMLINK_MAX"
.LASF162:
	.string	"check_basic_portability"
.LASF75:
	.string	"optarg"
.LASF72:
	.string	"tv_nsec"
.LASF90:
	.string	"getdate_err"
.LASF8:
	.string	"__dev_t"
.LASF129:
	.string	"_PC_ALLOC_SIZE_MIN"
.LASF76:
	.string	"optind"
.LASF19:
	.string	"__syscall_slong_t"
.LASF32:
	.string	"_IO_write_end"
.LASF199:
	.string	"_IO_lock_t"
.LASF69:
	.string	"_IO_FILE"
.LASF155:
	.string	"error_print_progname"
.LASF17:
	.string	"__blksize_t"
.LASF178:
	.string	"component_start"
.LASF194:
	.string	"map_prog"
.LASF109:
	.string	"__environ"
.LASF68:
	.string	"time_t"
.LASF63:
	.string	"sys_errlist"
.LASF124:
	.string	"_PC_FILESIZEBITS"
.LASF38:
	.string	"_markers"
.LASF161:
	.string	"file"
.LASF106:
	.string	"__glibc_reserved"
.LASF94:
	.string	"st_nlink"
.LASF183:
	.string	"charlen"
.LASF175:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF165:
	.string	"filelen"
.LASF193:
	.string	"node"
.LASF123:
	.string	"_PC_SOCK_MAXBUF"
.LASF125:
	.string	"_PC_REC_INCR_XFER_SIZE"
.LASF5:
	.string	"short int"
.LASF118:
	.string	"_PC_NO_TRUNC"
.LASF101:
	.string	"st_blksize"
.LASF159:
	.string	"quote_quoting_options"
.LASF131:
	.string	"_PC_2_SYMLINKS"
.LASF82:
	.string	"flag"
.LASF64:
	.string	"_sys_nerr"
.LASF70:
	.string	"timespec"
.LASF44:
	.string	"_vtable_offset"
.LASF87:
	.string	"tzname"
.LASF55:
	.string	"FILE"
.LASF160:
	.string	"PORTABILITY_OPTION"
.LASF145:
	.string	"shell_escape_quoting_style"
.LASF11:
	.string	"__ino_t"
.LASF153:
	.string	"quoting_style_args"
.LASF23:
	.string	"__count"
.LASF24:
	.string	"__value"
.LASF148:
	.string	"c_maybe_quoting_style"
.LASF99:
	.string	"st_rdev"
.LASF67:
	.string	"long double"
.LASF179:
	.string	"portable_chars_only"
.LASF20:
	.string	"char"
.LASF144:
	.string	"shell_always_quoting_style"
.LASF71:
	.string	"tv_sec"
.LASF151:
	.string	"clocale_quoting_style"
.LASF182:
	.string	"mbstate"
.LASF77:
	.string	"opterr"
.LASF9:
	.string	"__uid_t"
.LASF15:
	.string	"__off64_t"
.LASF158:
	.string	"quoting_options"
.LASF29:
	.string	"_IO_read_base"
.LASF37:
	.string	"_IO_save_end"
.LASF107:
	.string	"_sys_siglist"
.LASF192:
	.string	"infomap"
.LASF177:
	.string	"component_len"
.LASF81:
	.string	"has_arg"
.LASF189:
	.string	"usage"
.LASF184:
	.string	"no_leading_hyphen"
.LASF16:
	.string	"__time_t"
.LASF54:
	.string	"_unused2"
.LASF61:
	.string	"stderr"
.LASF103:
	.string	"st_atim"
.LASF186:
	.string	"argv"
.LASF85:
	.string	"__daylight"
.LASF190:
	.string	"status"
.LASF198:
	.string	"/root/coreutils"
.LASF156:
	.string	"error_message_count"
.LASF92:
	.string	"st_dev"
.LASF51:
	.string	"_freeres_buf"
.LASF36:
	.string	"_IO_backup_base"
.LASF152:
	.string	"custom_quoting_style"
.LASF104:
	.string	"st_mtim"
.LASF128:
	.string	"_PC_REC_XFER_ALIGN"
.LASF195:
	.string	"lc_messages"
.LASF185:
	.string	"argc"
.LASF180:
	.string	"validlen"
.LASF50:
	.string	"_freeres_list"
.LASF58:
	.string	"_IO_wide_data"
.LASF113:
	.string	"_PC_MAX_INPUT"
.LASF166:
	.string	"start"
.LASF169:
	.string	"maxsize"
.LASF84:
	.string	"__tzname"
.LASF188:
	.string	"main"
.LASF30:
	.string	"_IO_write_base"
.LASF201:
	.string	"emit_ancillary_info"
.LASF13:
	.string	"__nlink_t"
.LASF197:
	.string	"src/pathchk.c"
.LASF111:
	.string	"_PC_LINK_MAX"
.LASF122:
	.string	"_PC_PRIO_IO"
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
