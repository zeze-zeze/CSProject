	.file	"basename.c"
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
	.string	"multiple"
.LC20:
	.string	"suffix"
.LC21:
	.string	"zero"
.LC22:
	.string	"help"
.LC23:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 192
longopts:
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC23
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
.LC24:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC25:
	.string	"Usage: %s NAME [SUFFIX]\n  or:  %s OPTION... NAME...\n"
	.align 8
.LC26:
	.string	"Print NAME with any leading directory components removed.\nIf specified, also remove a trailing SUFFIX.\n"
	.align 8
.LC27:
	.string	"  -a, --multiple       support multiple arguments and treat each as a NAME\n  -s, --suffix=SUFFIX  remove a trailing SUFFIX; implies -a\n  -z, --zero           end each output line with NUL, not newline\n"
	.align 8
.LC28:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC29:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC30:
	.string	"\nExamples:\n  %s /usr/bin/sort          -> \"sort\"\n  %s include/stdio.h .h     -> \"stdio\"\n  %s -s .h include/stdio.h  -> \"stdio\"\n  %s -a any/str1 any/str2   -> \"str1\" followed by \"str2\"\n"
.LC31:
	.string	"basename"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/basename.c"
	.loc 2 43 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -36(%rbp)
	.loc 2 44 6
	cmpl	$0, -36(%rbp)
	je	.L12
	.loc 2 45 5
	movq	program_name(%rip), %rbx
	leaq	.LC24(%rip), %rdi
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
	.loc 2 48 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 48 15
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	.loc 2 48 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 53 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 58 7
	call	emit_mandatory_arg_note
	.loc 2 60 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 65 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 66 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 67 7
	movq	program_name(%rip), %r14
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 67 15
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	.loc 2 67 7
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 76 7
	leaq	.LC31(%rip), %rdi
	call	emit_ancillary_info
.L13:
	.loc 2 78 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	remove_suffix, @function
remove_suffix:
.LFB47:
	.loc 2 86 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 90 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 90 6
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 91 17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 91 6
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 93 9
	jmp	.L15
.L18:
	.loc 2 94 8
	subq	$1, -16(%rbp)
	.loc 2 94 9
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 2 94 8
	subq	$1, -8(%rbp)
	.loc 2 94 18
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 94 8
	cmpb	%al, %dl
	jne	.L19
.L15:
	.loc 2 93 9
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L17
	.loc 2 93 20 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	ja	.L18
.L17:
	.loc 2 96 6
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L14
	.loc 2 97 9
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L14
.L19:
	.loc 2 95 7
	nop
.L14:
	.loc 2 98 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	remove_suffix, .-remove_suffix
	.type	perform_basename, @function
perform_basename:
.LFB48:
	.loc 2 105 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	.loc 2 106 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	base_name@PLT
	movq	%rax, -8(%rbp)
	.loc 2 107 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strip_trailing_slashes@PLT
	.loc 2 115 6
	cmpq	$0, -32(%rbp)
	je	.L21
	.loc 2 115 17 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 115 14 discriminator 1
	cmpb	$47, %al
	je	.L21
	.loc 2 116 5
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	remove_suffix
.L21:
	.loc 2 118 3
	movq	stdout(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 119 3
	cmpb	$0, -36(%rbp)
	je	.L22
	.loc 2 119 3 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L23
.L22:
	.loc 2 119 3 discriminator 2
	movl	$10, %eax
.L23:
	.loc 2 119 3 discriminator 4
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 120 3 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 121 1 discriminator 4
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	perform_basename, .-perform_basename
	.section	.rodata
.LC32:
	.string	"/usr/local/share/locale"
.LC33:
	.string	"+as:z"
.LC34:
	.string	"David MacKenzie"
.LC35:
	.string	"missing operand"
.LC36:
	.string	"extra operand %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB49:
	.loc 2 125 1
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
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 126 8
	movb	$0, -30(%rbp)
	.loc 2 127 8
	movb	$0, -29(%rbp)
	.loc 2 128 15
	movq	$0, -24(%rbp)
	.loc 2 131 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 132 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 133 3
	leaq	.LC32(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 134 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 136 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
.L34:
.LBB2:
	.loc 2 140 15
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -28(%rbp)
	.loc 2 142 10
	cmpl	$-1, -28(%rbp)
	je	.L45
	.loc 2 145 7
	cmpl	$122, -28(%rbp)
	je	.L27
	cmpl	$122, -28(%rbp)
	jg	.L28
	cmpl	$115, -28(%rbp)
	je	.L29
	cmpl	$115, -28(%rbp)
	jg	.L28
	cmpl	$97, -28(%rbp)
	je	.L30
	cmpl	$97, -28(%rbp)
	jg	.L28
	cmpl	$-131, -28(%rbp)
	je	.L31
	cmpl	$-130, -28(%rbp)
	je	.L32
	jmp	.L28
.L29:
	.loc 2 148 18
	movq	optarg(%rip), %rax
	movq	%rax, -24(%rbp)
.L30:
	.loc 2 153 26
	movb	$1, -30(%rbp)
	.loc 2 154 11
	jmp	.L33
.L27:
	.loc 2 157 20
	movb	$1, -29(%rbp)
	.loc 2 158 11
	jmp	.L33
.L32:
	.loc 2 160 9
	movl	$0, %edi
	call	usage
.L31:
	.loc 2 161 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC34(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L28:
	.loc 2 164 11
	movl	$1, %edi
	call	usage
.L33:
.LBE2:
	.loc 2 139 5
	jmp	.L34
.L45:
.LBB3:
	.loc 2 143 9
	nop
.LBE3:
	.loc 2 168 12
	movl	optind(%rip), %eax
	.loc 2 168 6
	cmpl	%eax, -36(%rbp)
	jg	.L35
	.loc 2 170 20
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	.loc 2 170 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 171 7
	movl	$1, %edi
	call	usage
.L35:
	.loc 2 174 7
	movzbl	-30(%rbp), %eax
	xorl	$1, %eax
	.loc 2 174 6
	testb	%al, %al
	je	.L36
	.loc 2 174 33 discriminator 1
	movl	optind(%rip), %eax
	addl	$2, %eax
	.loc 2 174 23 discriminator 1
	cmpl	%eax, -36(%rbp)
	jle	.L36
	.loc 2 176 54
	movl	optind(%rip), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 176 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 176 20
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 2 176 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 177 7
	movl	$1, %edi
	call	usage
.L36:
	.loc 2 180 6
	cmpb	$0, -30(%rbp)
	je	.L37
	.loc 2 182 7
	jmp	.L38
.L39:
	.loc 2 183 9 discriminator 2
	movzbl	-29(%rbp), %edx
	.loc 2 183 31 discriminator 2
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 183 9 discriminator 2
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	perform_basename
	.loc 2 182 35 discriminator 2
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L38:
	.loc 2 182 21 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 182 7 discriminator 1
	cmpl	%eax, -36(%rbp)
	jg	.L39
	jmp	.L40
.L37:
	.loc 2 186 5
	movzbl	-29(%rbp), %edx
	.loc 2 187 30
	movl	optind(%rip), %eax
	addl	$2, %eax
	.loc 2 186 5
	cmpl	%eax, -36(%rbp)
	jne	.L41
	.loc 2 187 48 discriminator 1
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 186 5 discriminator 1
	movq	(%rax), %rax
	jmp	.L42
.L41:
	.loc 2 186 5 is_stmt 0 discriminator 2
	movl	$0, %eax
.L42:
	.loc 2 186 27 is_stmt 1 discriminator 4
	movl	optind(%rip), %ecx
	movslq	%ecx, %rcx
	leaq	0(,%rcx,8), %rsi
	movq	-48(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 2 186 5 discriminator 4
	movq	(%rcx), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	perform_basename
.L40:
	.loc 2 189 10
	movl	$0, %eax
	.loc 2 190 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
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
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "./lib/sys/select.h"
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
	.file 23 "./lib/error.h"
	.file 24 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x83a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF124
	.byte	0xc
	.long	.LASF125
	.long	.LASF126
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
	.long	.LASF19
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
	.byte	0x98
	.byte	0x19
	.long	0x10b
	.uleb128 0xb
	.long	.LASF17
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x10b
	.uleb128 0xb
	.long	.LASF18
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x10b
	.uleb128 0x8
	.long	.LASF20
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x2bd
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x2d6
	.byte	0x60
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x2dc
	.byte	0x68
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x112
	.byte	0x78
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0xf6
	.byte	0x80
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0xfd
	.byte	0x82
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x2e2
	.byte	0x83
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x2f2
	.byte	0x88
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x11e
	.byte	0x90
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x2fd
	.byte	0x98
	.uleb128 0x9
	.long	.LASF44
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x308
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x2dc
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xed
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xd3
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x30e
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x136
	.uleb128 0xd
	.long	.LASF127
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF51
	.uleb128 0x3
	.byte	0x8
	.long	0x2d1
	.uleb128 0x3
	.byte	0x8
	.long	0x136
	.uleb128 0xf
	.long	0x3f
	.long	0x2f2
	.uleb128 0x10
	.long	0xdf
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c9
	.uleb128 0xe
	.long	.LASF52
	.uleb128 0x3
	.byte	0x8
	.long	0x2f8
	.uleb128 0xe
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.long	0x303
	.uleb128 0xf
	.long	0x3f
	.long	0x31e
	.uleb128 0x10
	.long	0xdf
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x32a
	.uleb128 0x3
	.byte	0x8
	.long	0x2bd
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x32a
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x32a
	.uleb128 0x2
	.long	.LASF57
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xc8
	.long	0x35f
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x354
	.uleb128 0x2
	.long	.LASF58
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x35f
	.uleb128 0x2
	.long	.LASF59
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF60
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x35f
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF62
	.uleb128 0xb
	.long	.LASF63
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x12a
	.uleb128 0x12
	.long	.LASF64
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF65
	.uleb128 0xf
	.long	0x39
	.long	0x3c6
	.uleb128 0x10
	.long	0xdf
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3b6
	.uleb128 0x2
	.long	.LASF67
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF68
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x10b
	.uleb128 0x2
	.long	.LASF69
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3b6
	.uleb128 0x2
	.long	.LASF70
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF71
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x10b
	.uleb128 0x12
	.long	.LASF72
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.uleb128 0x3
	.byte	0x8
	.long	0x41b
	.uleb128 0xf
	.long	0xc8
	.long	0x432
	.uleb128 0x10
	.long	0xdf
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x422
	.uleb128 0x12
	.long	.LASF73
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x432
	.uleb128 0x12
	.long	.LASF74
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x432
	.uleb128 0x12
	.long	.LASF75
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x45e
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x12
	.long	.LASF76
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x45e
	.uleb128 0x2
	.long	.LASF77
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF78
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF79
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF80
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x13
	.byte	0x29
	.byte	0x6
	.long	0x4b9
	.uleb128 0x15
	.long	.LASF81
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x13
	.byte	0x2a
	.byte	0x6
	.long	0x4ce
	.uleb128 0x16
	.long	.LASF82
	.byte	0x9
	.byte	0
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
	.uleb128 0xf
	.long	0x46
	.long	0x4f7
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x4ec
	.uleb128 0x2
	.long	.LASF85
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x4f7
	.uleb128 0x2
	.long	.LASF86
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x19
	.long	.LASF128
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x569
	.uleb128 0x16
	.long	.LASF87
	.byte	0
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.uleb128 0x16
	.long	.LASF89
	.byte	0x2
	.uleb128 0x16
	.long	.LASF90
	.byte	0x3
	.uleb128 0x16
	.long	.LASF91
	.byte	0x4
	.uleb128 0x16
	.long	.LASF92
	.byte	0x5
	.uleb128 0x16
	.long	.LASF93
	.byte	0x6
	.uleb128 0x16
	.long	.LASF94
	.byte	0x7
	.uleb128 0x16
	.long	.LASF95
	.byte	0x8
	.uleb128 0x16
	.long	.LASF96
	.byte	0x9
	.uleb128 0x16
	.long	.LASF97
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x514
	.uleb128 0x12
	.long	.LASF98
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x35f
	.uleb128 0xf
	.long	0x569
	.long	0x586
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x57b
	.uleb128 0x12
	.long	.LASF99
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x586
	.uleb128 0x2
	.long	.LASF100
	.byte	0x17
	.byte	0x32
	.byte	0xf
	.long	0x41c
	.uleb128 0x2
	.long	.LASF101
	.byte	0x17
	.byte	0x35
	.byte	0x15
	.long	0xe6
	.uleb128 0x2
	.long	.LASF102
	.byte	0x17
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF103
	.uleb128 0x2
	.long	.LASF104
	.byte	0x18
	.byte	0x19
	.byte	0x1f
	.long	0x5bc
	.uleb128 0xf
	.long	0xbd
	.long	0x5dd
	.uleb128 0x10
	.long	0xdf
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x5cd
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x2
	.byte	0x1f
	.byte	0x1c
	.long	0x5dd
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.long	0x57
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x679
	.uleb128 0x1c
	.long	.LASF105
	.byte	0x2
	.byte	0x7c
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.long	.LASF106
	.byte	0x2
	.byte	0x7c
	.byte	0x18
	.long	0x45e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x2
	.byte	0x7e
	.byte	0x8
	.long	0x679
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.long	0x679
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x2
	.byte	0x80
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.byte	0x8c
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF111
	.uleb128 0x1f
	.long	.LASF113
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x6db
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x2
	.byte	0x68
	.byte	0x1f
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x2
	.byte	0x68
	.byte	0x33
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF109
	.byte	0x2
	.byte	0x68
	.byte	0x40
	.long	0x679
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x2
	.byte	0x6a
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF114
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x734
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x2
	.byte	0x55
	.byte	0x16
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x2
	.byte	0x55
	.byte	0x28
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"np"
	.byte	0x2
	.byte	0x57
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"sp"
	.byte	0x2
	.byte	0x58
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF116
	.byte	0x2
	.byte	0x2a
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x762
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x2
	.byte	0x2a
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x21
	.long	.LASF118
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x807
	.uleb128 0x22
	.long	.LASF119
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x23
	.long	.LASF120
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x7bd
	.uleb128 0x24
	.long	.LASF119
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x24
	.long	.LASF121
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x792
	.uleb128 0x25
	.long	.LASF120
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x817
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.long	.LASF121
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x25
	.long	.LASF122
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x81c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.long	.LASF123
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xf
	.long	0x7bd
	.long	0x817
	.uleb128 0x10
	.long	0xdf
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x807
	.uleb128 0x3
	.byte	0x8
	.long	0x7bd
	.uleb128 0x26
	.long	.LASF129
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"exit_failure"
.LASF16:
	.string	"__off_t"
.LASF22:
	.string	"_IO_read_ptr"
.LASF95:
	.string	"locale_quoting_style"
.LASF34:
	.string	"_chain"
.LASF84:
	.string	"GETOPT_VERSION_CHAR"
.LASF107:
	.string	"longopts"
.LASF128:
	.string	"quoting_style"
.LASF15:
	.string	"size_t"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF40:
	.string	"_shortbuf"
.LASF113:
	.string	"perform_basename"
.LASF112:
	.string	"string"
.LASF88:
	.string	"shell_quoting_style"
.LASF83:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF65:
	.string	"long long unsigned int"
.LASF43:
	.string	"_codecvt"
.LASF68:
	.string	"__timezone"
.LASF61:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF99:
	.string	"quoting_style_vals"
.LASF119:
	.string	"program"
.LASF94:
	.string	"escape_quoting_style"
.LASF87:
	.string	"literal_quoting_style"
.LASF35:
	.string	"_fileno"
.LASF23:
	.string	"_IO_read_end"
.LASF74:
	.string	"sys_siglist"
.LASF14:
	.string	"long int"
.LASF64:
	.string	"_gl_cxxalias_dummy"
.LASF21:
	.string	"_flags"
.LASF44:
	.string	"_wide_data"
.LASF29:
	.string	"_IO_buf_end"
.LASF38:
	.string	"_cur_column"
.LASF78:
	.string	"program_invocation_short_name"
.LASF92:
	.string	"c_quoting_style"
.LASF52:
	.string	"_IO_codecvt"
.LASF60:
	.string	"_sys_errlist"
.LASF77:
	.string	"program_invocation_name"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF81:
	.string	"TIMESPEC_HZ"
.LASF91:
	.string	"shell_escape_always_quoting_style"
.LASF108:
	.string	"multiple_names"
.LASF71:
	.string	"timezone"
.LASF86:
	.string	"program_name"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF9:
	.string	"unsigned int"
.LASF46:
	.string	"_freeres_buf"
.LASF8:
	.string	"long unsigned int"
.LASF26:
	.string	"_IO_write_ptr"
.LASF5:
	.string	"name"
.LASF57:
	.string	"sys_nerr"
.LASF124:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF97:
	.string	"custom_quoting_style"
.LASF11:
	.string	"short unsigned int"
.LASF102:
	.string	"error_one_per_line"
.LASF79:
	.string	"Version"
.LASF30:
	.string	"_IO_save_base"
.LASF76:
	.string	"environ"
.LASF41:
	.string	"_lock"
.LASF36:
	.string	"_flags2"
.LASF48:
	.string	"_mode"
.LASF55:
	.string	"stdout"
.LASF85:
	.string	"version_etc_copyright"
.LASF0:
	.string	"optarg"
.LASF72:
	.string	"getdate_err"
.LASF1:
	.string	"optind"
.LASF27:
	.string	"_IO_write_end"
.LASF127:
	.string	"_IO_lock_t"
.LASF20:
	.string	"_IO_FILE"
.LASF100:
	.string	"error_print_progname"
.LASF122:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF63:
	.string	"time_t"
.LASF58:
	.string	"sys_errlist"
.LASF123:
	.string	"lc_messages"
.LASF33:
	.string	"_markers"
.LASF93:
	.string	"c_maybe_quoting_style"
.LASF111:
	.string	"_Bool"
.LASF10:
	.string	"unsigned char"
.LASF121:
	.string	"node"
.LASF13:
	.string	"short int"
.LASF19:
	.string	"option"
.LASF104:
	.string	"quote_quoting_options"
.LASF7:
	.string	"flag"
.LASF59:
	.string	"_sys_nerr"
.LASF39:
	.string	"_vtable_offset"
.LASF69:
	.string	"tzname"
.LASF50:
	.string	"FILE"
.LASF90:
	.string	"shell_escape_quoting_style"
.LASF98:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF70:
	.string	"daylight"
.LASF62:
	.string	"long double"
.LASF2:
	.string	"char"
.LASF89:
	.string	"shell_always_quoting_style"
.LASF109:
	.string	"use_nuls"
.LASF96:
	.string	"clocale_quoting_style"
.LASF114:
	.string	"remove_suffix"
.LASF3:
	.string	"opterr"
.LASF17:
	.string	"__off64_t"
.LASF103:
	.string	"quoting_options"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF120:
	.string	"infomap"
.LASF6:
	.string	"has_arg"
.LASF116:
	.string	"usage"
.LASF47:
	.string	"__pad5"
.LASF18:
	.string	"__time_t"
.LASF49:
	.string	"_unused2"
.LASF56:
	.string	"stderr"
.LASF106:
	.string	"argv"
.LASF67:
	.string	"__daylight"
.LASF117:
	.string	"status"
.LASF126:
	.string	"/root/coreutils"
.LASF31:
	.string	"_IO_backup_base"
.LASF110:
	.string	"suffix"
.LASF101:
	.string	"error_message_count"
.LASF125:
	.string	"src/basename.c"
.LASF105:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF53:
	.string	"_IO_wide_data"
.LASF129:
	.string	"emit_mandatory_arg_note"
.LASF66:
	.string	"__tzname"
.LASF115:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF118:
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
