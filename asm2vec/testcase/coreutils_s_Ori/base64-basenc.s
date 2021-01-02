	.file	"basenc.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.text
	.type	emit_stdin_note, @function
emit_stdin_note:
.LFB35:
	.file 1 "src/system.h"
	.loc 1 582 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 583 3
	movq	stdout(%rip), %rbx
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 586 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	emit_stdin_note, .-emit_stdin_note
	.section	.rodata
	.align 8
.LC1:
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
	leaq	.LC1(%rip), %rdi
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
.LC2:
	.string	"["
.LC3:
	.string	"test invocation"
.LC4:
	.string	"coreutils"
.LC5:
	.string	"Multi-call invocation"
.LC6:
	.string	"sha224sum"
.LC7:
	.string	"sha2 utilities"
.LC8:
	.string	"sha256sum"
.LC9:
	.string	"sha384sum"
.LC10:
	.string	"sha512sum"
.LC11:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC12:
	.string	"https://www.gnu.org/software/coreutils/"
.LC13:
	.string	"GNU coreutils"
.LC14:
	.string	"en_"
	.align 8
.LC15:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC16:
	.string	"Full documentation <%s%s>\n"
.LC17:
	.string	" invocation"
.LC18:
	.string	""
	.align 8
.LC19:
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
	leaq	.LC2(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC7(%rip), %rax
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
	jmp	.L4
.L6:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L4:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L5
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L6
.L5:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L7
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L7:
	.loc 1 655 11
	leaq	.LC11(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC12(%rip), %rdx
	leaq	.LC13(%rip), %rsi
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
	je	.L8
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L8
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L8:
	.loc 1 669 11
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L9
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC17(%rip), %rbx
	jmp	.L10
.L9:
	.loc 1 671 3 discriminator 2
	leaq	.LC18(%rip), %rbx
.L10:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC19(%rip), %rdi
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
	je	.L11
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L11:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.section	.rodata
.LC20:
	.string	"decode"
.LC21:
	.string	"wrap"
.LC22:
	.string	"ignore-garbage"
.LC23:
	.string	"help"
.LC24:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 192
long_options:
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC24
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
.LC25:
	.string	"Try '%s --help' for more information.\n"
.LC26:
	.string	"Usage: %s [OPTION]... [FILE]\n"
	.align 8
.LC27:
	.string	"Base%d encode or decode FILE, or standard input, to standard output.\n"
	.align 8
.LC28:
	.string	"  -d, --decode          decode data\n  -i, --ignore-garbage  when decoding, ignore non-alphabet characters\n  -w, --wrap=COLS       wrap encoded lines after COLS character (default 76).\n                          Use 0 to disable line wrapping\n"
	.align 8
.LC29:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC30:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC31:
	.ascii	"\nThe data a"
	.string	"re encoded as described for the %s alphabet in RFC 4648.\nWhen decoding, the input may contain newlines in addition to the bytes of\nthe formal %s alphabet.  Use --ignore-garbage to attempt to recover\nfrom any other non-alphabet bytes in the encoded stream.\n"
.LC32:
	.string	"base64"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB65:
	.file 2 "src/basenc.c"
	.loc 2 96 1 is_stmt 1
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
	.loc 2 97 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 98 5
	movq	program_name(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L14
.L13:
	.loc 2 101 7
	movq	program_name(%rip), %rbx
	.loc 2 101 15
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	.loc 2 101 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 110 15
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	.loc 2 110 7
	movl	$64, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 115 7
	call	emit_stdin_note
	.loc 2 116 7
	call	emit_mandatory_arg_note
	.loc 2 140 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 153 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 154 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 163 15
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 163 7
	leaq	.LC32(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 171 7
	leaq	.LC32(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 174 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE65:
	.size	usage, .-usage
	.section	.rodata
.LC33:
	.string	"write error"
	.text
	.type	wrap_write, @function
wrap_write:
.LFB66:
	.loc 2 937 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	.loc 2 940 6
	cmpq	$0, -72(%rbp)
	jne	.L16
	.loc 2 943 11
	movq	stdout(%rip), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 943 10
	cmpq	%rax, -64(%rbp)
	jbe	.L23
.LBB2:
	.loc 2 944 9
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L16:
.LBE2:
	.loc 2 947 18
	movq	$0, -40(%rbp)
	.loc 2 947 5
	jmp	.L18
.L22:
.LBB3:
	.loc 2 949 50
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 949 19
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 950 16
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 951 20
	movq	-64(%rbp), %rax
	subq	-40(%rbp), %rax
	.loc 2 951 18
	cmpq	%rax, -24(%rbp)
	cmovbe	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 953 12
	cmpq	$0, -24(%rbp)
	jne	.L19
	.loc 2 955 17
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc_unlocked@PLT
	.loc 2 955 16
	cmpl	$-1, %eax
	jne	.L20
.LBB4:
	.loc 2 956 15
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L20:
.LBE4:
	.loc 2 957 29
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L18
.L19:
	.loc 2 961 17
	movq	stdout(%rip), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fwrite_unlocked@PLT
	.loc 2 961 16
	cmpq	%rax, -24(%rbp)
	jbe	.L21
.LBB5:
	.loc 2 962 15
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L21:
.LBE5:
	.loc 2 963 29
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 964 21
	movq	-24(%rbp), %rax
	addq	%rax, -40(%rbp)
.L18:
.LBE3:
	.loc 2 947 5 discriminator 1
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L22
.L23:
	.loc 2 967 1
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	wrap_write, .-wrap_write
	.section	.rodata
.LC34:
	.string	"read error"
	.text
	.type	do_encode, @function
do_encode:
.LFB67:
	.loc 2 971 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 2 971 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 972 10
	movq	$0, -64(%rbp)
	.loc 2 976 11
	movl	$30720, %edi
	call	xmalloc@PLT
	movq	%rax, -48(%rbp)
	.loc 2 977 12
	movl	$40960, %edi
	call	xmalloc@PLT
	movq	%rax, -40(%rbp)
.L29:
.LBB6:
	.loc 2 983 11
	movq	$0, -56(%rbp)
.L26:
	.loc 2 986 15 discriminator 3
	movl	$30720, %eax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	-72(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fread_unlocked@PLT
	movq	%rax, -32(%rbp)
	.loc 2 987 15 discriminator 3
	movq	-32(%rbp), %rax
	addq	%rax, -56(%rbp)
	.loc 2 989 15 discriminator 3
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 989 7 discriminator 3
	testl	%eax, %eax
	jne	.L25
	.loc 2 989 29 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 989 25 discriminator 1
	testl	%eax, %eax
	jne	.L25
	.loc 2 989 41 discriminator 2
	cmpq	$30719, -56(%rbp)
	jbe	.L26
.L25:
	.loc 2 991 10
	cmpq	$0, -56(%rbp)
	je	.L27
	.loc 2 995 44
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	.loc 2 995 11
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	base64_encode@PLT
	.loc 2 997 31
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	.loc 2 997 11
	leaq	0(,%rax,4), %rsi
	movq	-80(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	wrap_write
.L27:
.LBE6:
	.loc 2 1001 11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1001 3
	testl	%eax, %eax
	jne	.L28
	.loc 2 1001 25 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1001 21 discriminator 1
	testl	%eax, %eax
	jne	.L28
	.loc 2 1001 37 discriminator 2
	cmpq	$30720, -56(%rbp)
	je	.L29
.L28:
	.loc 2 1004 6
	cmpq	$0, -88(%rbp)
	je	.L30
	.loc 2 1004 37 discriminator 1
	movq	-64(%rbp), %rax
	.loc 2 1004 19 discriminator 1
	testq	%rax, %rax
	je	.L30
	.loc 2 1004 44 discriminator 2
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc_unlocked@PLT
	.loc 2 1004 41 discriminator 2
	cmpl	$-1, %eax
	jne	.L30
.LBB7:
	.loc 2 1005 5
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L30:
.LBE7:
	.loc 2 1007 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1007 6
	testl	%eax, %eax
	je	.L31
.LBB8:
	.loc 2 1008 5
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L31:
.LBE8:
	.loc 2 1010 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1011 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1012 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	do_encode, .-do_encode
	.section	.rodata
.LC35:
	.string	"invalid input"
	.text
	.type	do_decode, @function
do_decode:
.LFB68:
	.loc 2 1016 1
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
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, %eax
	movb	%al, -100(%rbp)
	.loc 2 1016 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1021 11
	movl	$4096, %edi
	call	xmalloc@PLT
	movq	%rax, -48(%rbp)
	.loc 2 1022 12
	movl	$3072, %edi
	call	xmalloc@PLT
	movq	%rax, -40(%rbp)
	.loc 2 1027 3
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	base64_decode_ctx_init@PLT
.L52:
.LBB9:
	.loc 2 1035 11
	movq	$0, -64(%rbp)
.L41:
	.loc 2 1038 15
	movl	$4096, %eax
	subq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fread_unlocked@PLT
	.loc 2 1038 13
	movq	%rax, -72(%rbp)
	.loc 2 1040 14
	cmpb	$0, -100(%rbp)
	je	.L34
.LBB10:
	.loc 2 1042 27
	movq	$0, -56(%rbp)
	.loc 2 1042 15
	jmp	.L35
.L38:
	.loc 2 1044 41
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 1044 36
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1044 23
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isbase64@PLT
	.loc 2 1044 22
	testb	%al, %al
	jne	.L36
	.loc 2 1044 60 discriminator 1
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 1044 55 discriminator 1
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1044 47 discriminator 1
	cmpb	$61, %al
	jne	.L37
.L36:
	.loc 2 1045 22
	addq	$1, -56(%rbp)
	jmp	.L35
.L37:
	.loc 2 1047 68
	movq	-72(%rbp), %rax
	subq	$1, %rax
	.loc 2 1047 21
	movq	%rax, -72(%rbp)
	.loc 2 1047 68
	movq	-72(%rbp), %rax
	.loc 2 1047 21
	subq	-56(%rbp), %rax
	.loc 2 1047 59
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 1047 63
	leaq	1(%rdx), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	.loc 2 1047 42
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	.loc 2 1047 21
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memmove@PLT
.L35:
	.loc 2 1042 36 discriminator 1
	movq	-72(%rbp), %rax
	.loc 2 1042 15 discriminator 1
	testq	%rax, %rax
	je	.L34
	.loc 2 1042 45 discriminator 2
	movq	-72(%rbp), %rax
	.loc 2 1042 40 discriminator 2
	cmpq	%rax, -56(%rbp)
	jb	.L38
.L34:
.LBE10:
	.loc 2 1051 15
	movq	-72(%rbp), %rax
	addq	%rax, -64(%rbp)
	.loc 2 1053 15
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1053 14
	testl	%eax, %eax
	je	.L39
.LBB11:
	.loc 2 1054 13
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L39:
.LBE11:
	.loc 2 1056 7
	cmpq	$4095, -64(%rbp)
	ja	.L40
	.loc 2 1056 52 discriminator 1
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1056 48 discriminator 1
	testl	%eax, %eax
	je	.L41
.L40:
	.loc 2 1062 14
	movl	$0, -76(%rbp)
	.loc 2 1062 7
	jmp	.L42
.L51:
	.loc 2 1064 14
	cmpl	$1, -76(%rbp)
	jne	.L43
	.loc 2 1064 28 discriminator 1
	movl	-32(%rbp), %eax
	.loc 2 1064 22 discriminator 1
	testl	%eax, %eax
	je	.L54
.L43:
	.loc 2 1066 13
	movq	$3072, -72(%rbp)
	.loc 2 1067 16
	cmpl	$0, -76(%rbp)
	jne	.L45
	.loc 2 1067 16 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax
	jmp	.L46
.L45:
	.loc 2 1067 16 discriminator 2
	movl	$0, %eax
.L46:
	.loc 2 1067 16 discriminator 4
	leaq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	base64_decode_ctx@PLT
	movb	%al, -77(%rbp)
	.loc 2 1069 15 is_stmt 1 discriminator 4
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1069 42 discriminator 4
	movq	-72(%rbp), %rdx
	.loc 2 1069 14 discriminator 4
	cmpq	%rdx, %rax
	jnb	.L47
.LBB12:
	.loc 2 1070 13
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L47:
.LBE12:
	.loc 2 1072 15
	movzbl	-77(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1072 14
	testb	%al, %al
	je	.L48
.LBB13:
	.loc 2 1073 13
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L48:
.LBE13:
	.loc 2 1062 41 discriminator 2
	addl	$1, -76(%rbp)
.L42:
	.loc 2 1062 29 discriminator 1
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1062 25 discriminator 1
	testl	%eax, %eax
	je	.L49
	.loc 2 1062 25 is_stmt 0 discriminator 3
	movl	$2, %eax
	jmp	.L50
.L49:
	.loc 2 1062 25 discriminator 4
	movl	$1, %eax
.L50:
	.loc 2 1062 7 is_stmt 1 discriminator 6
	cmpl	-76(%rbp), %eax
	ja	.L51
	jmp	.L44
.L54:
	.loc 2 1065 13
	nop
.L44:
.LBE9:
	.loc 2 1076 11 discriminator 1
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1076 3 discriminator 1
	testl	%eax, %eax
	je	.L52
	.loc 2 1081 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1082 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1083 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L53
	call	__stack_chk_fail@PLT
.L53:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	do_decode, .-do_decode
	.section	.rodata
.LC36:
	.string	"/usr/local/share/locale"
.LC37:
	.string	"invalid wrap size"
.LC38:
	.string	"Simon Josefsson"
.LC39:
	.string	"diw:"
.LC40:
	.string	"extra operand %s"
.LC41:
	.string	"-"
.LC42:
	.string	"rb"
.LC43:
	.string	"%s"
.LC44:
	.string	"closing standard input"
	.text
	.globl	main
	.type	main, @function
main:
.LFB69:
	.loc 2 1087 1
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
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 1093 8
	movb	$0, -46(%rbp)
	.loc 2 1095 8
	movb	$0, -45(%rbp)
	.loc 2 1097 13
	movq	$76, -24(%rbp)
	.loc 2 1104 3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 1105 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 1106 3
	leaq	.LC36(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 1107 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 1109 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 1111 9
	jmp	.L56
.L63:
	.loc 2 1112 5
	cmpl	$119, -44(%rbp)
	je	.L57
	cmpl	$119, -44(%rbp)
	jg	.L58
	cmpl	$105, -44(%rbp)
	je	.L59
	cmpl	$105, -44(%rbp)
	jg	.L58
	cmpl	$100, -44(%rbp)
	je	.L60
	cmpl	$100, -44(%rbp)
	jg	.L58
	cmpl	$-131, -44(%rbp)
	je	.L61
	cmpl	$-130, -44(%rbp)
	je	.L62
	jmp	.L58
.L60:
	.loc 2 1115 16
	movb	$1, -46(%rbp)
	.loc 2 1116 9
	jmp	.L56
.L57:
	.loc 2 1120 35
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1119 23
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movq	$-1, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	movq	%rax, -24(%rbp)
	.loc 2 1121 9
	jmp	.L56
.L59:
	.loc 2 1124 24
	movb	$1, -45(%rbp)
	.loc 2 1125 9
	jmp	.L56
.L62:
	.loc 2 1140 7
	movl	$0, %edi
	call	usage
.L61:
	.loc 2 1142 7
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC38(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L58:
	.loc 2 1145 9
	movl	$1, %edi
	call	usage
.L56:
	.loc 2 1111 17
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -44(%rbp)
	.loc 2 1111 9
	cmpl	$-1, -44(%rbp)
	jne	.L63
	.loc 2 1222 12
	movl	optind(%rip), %eax
	movl	-52(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 1222 6
	cmpl	$1, %eax
	jle	.L64
	.loc 2 1224 54
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1224 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1224 20
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 2 1224 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1225 7
	movl	$1, %edi
	call	usage
.L64:
	.loc 2 1228 14
	movl	optind(%rip), %eax
	.loc 2 1228 6
	cmpl	%eax, -52(%rbp)
	jle	.L65
	.loc 2 1229 18
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1229 12
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L66
.L65:
	.loc 2 1231 12
	leaq	.LC41(%rip), %rax
	movq	%rax, -32(%rbp)
.L66:
	.loc 2 1233 7
	movq	-32(%rbp), %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1233 6
	testl	%eax, %eax
	jne	.L67
	.loc 2 1235 7
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	.loc 2 1236 16
	movq	stdin(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L68
.L67:
	.loc 2 1240 18
	movq	-32(%rbp), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -40(%rbp)
	.loc 2 1241 10
	cmpq	$0, -40(%rbp)
	jne	.L68
.LBB14:
	.loc 2 1242 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC43(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L68:
.LBE14:
	.loc 2 1245 3
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 1247 6
	cmpb	$0, -46(%rbp)
	je	.L69
	.loc 2 1248 5
	movzbl	-45(%rbp), %edx
	movq	stdout(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_decode
	jmp	.L70
.L69:
	.loc 2 1250 5
	movq	stdout(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_encode
.L70:
	.loc 2 1252 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1252 6
	cmpl	$-1, %eax
	jne	.L71
	.loc 2 1254 11
	movq	-32(%rbp), %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1254 10
	testl	%eax, %eax
	jne	.L72
.LBB15:
	.loc 2 1255 9
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L72:
.LBE15:
.LBB16:
	.loc 2 1257 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC43(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L71:
.LBE16:
	.loc 2 1260 10
	movl	$0, %eax
	.loc 2 1261 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
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
	.file 19 "/usr/include/stdint.h"
	.file 20 "./lib/timespec.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/fadvise.h"
	.file 26 "./lib/quote.h"
	.file 27 "./lib/base64.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb6f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF144
	.byte	0xc
	.long	.LASF145
	.long	.LASF146
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
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xae
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	0xae
	.uleb128 0x9
	.long	0xae
	.long	0xca
	.uleb128 0xa
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF62
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x251
	.uleb128 0xc
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xc
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xa8
	.byte	0x8
	.uleb128 0xc
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xa8
	.byte	0x10
	.uleb128 0xc
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xa8
	.byte	0x18
	.uleb128 0xc
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xa8
	.byte	0x20
	.uleb128 0xc
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xa8
	.byte	0x28
	.uleb128 0xc
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xa8
	.byte	0x30
	.uleb128 0xc
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xa8
	.byte	0x38
	.uleb128 0xc
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xa8
	.byte	0x40
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xa8
	.byte	0x48
	.uleb128 0xc
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xa8
	.byte	0x50
	.uleb128 0xc
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xa8
	.byte	0x58
	.uleb128 0xc
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x26a
	.byte	0x60
	.uleb128 0xc
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x270
	.byte	0x68
	.uleb128 0xc
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xc
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xc
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xc
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x276
	.byte	0x83
	.uleb128 0xc
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x286
	.byte	0x88
	.uleb128 0xc
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xc
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x291
	.byte	0x98
	.uleb128 0xc
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x29c
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x270
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2a2
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xca
	.uleb128 0xd
	.long	.LASF147
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x265
	.uleb128 0x7
	.byte	0x8
	.long	0xca
	.uleb128 0x9
	.long	0xae
	.long	0x286
	.uleb128 0xa
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x25d
	.uleb128 0xe
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x28c
	.uleb128 0xe
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x297
	.uleb128 0x9
	.long	0xae
	.long	0x2b2
	.uleb128 0xa
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb5
	.uleb128 0x8
	.long	0x2b2
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2c9
	.uleb128 0x7
	.byte	0x8
	.long	0x251
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2c9
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2c9
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	0x2b8
	.long	0x2fe
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2f3
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2fe
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2fe
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0x9c
	.uleb128 0x11
	.long	.LASF56
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0xf
	.long	.LASF58
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF59
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xb
	.long	.LASF63
	.byte	0x20
	.byte	0xc
	.byte	0x32
	.byte	0x8
	.long	0x3c7
	.uleb128 0xc
	.long	.LASF64
	.byte	0xc
	.byte	0x34
	.byte	0xf
	.long	0x2b2
	.byte	0
	.uleb128 0xc
	.long	.LASF65
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xc
	.long	.LASF66
	.byte	0xc
	.byte	0x38
	.byte	0x8
	.long	0x3cc
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
	.long	0x385
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x9
	.long	0xa8
	.long	0x3e2
	.uleb128 0xa
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF67
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3d2
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3d2
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF73
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x437
	.uleb128 0x9
	.long	0x2b8
	.long	0x44e
	.uleb128 0xa
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x43e
	.uleb128 0x11
	.long	.LASF74
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x44e
	.uleb128 0x11
	.long	.LASF75
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x44e
	.uleb128 0x11
	.long	.LASF76
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x47a
	.uleb128 0x7
	.byte	0x8
	.long	0xa8
	.uleb128 0x11
	.long	.LASF77
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x47a
	.uleb128 0xf
	.long	.LASF78
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF79
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF80
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2b2
	.uleb128 0xf
	.long	.LASF81
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF82
	.byte	0x13
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x29
	.byte	0x6
	.long	0x4e1
	.uleb128 0x15
	.long	.LASF83
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x4f6
	.uleb128 0x16
	.long	.LASF84
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x514
	.uleb128 0x18
	.long	.LASF85
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF86
	.sleb128 -131
	.byte	0
	.uleb128 0x9
	.long	0xb5
	.long	0x51f
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x514
	.uleb128 0xf
	.long	.LASF87
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x51f
	.uleb128 0xf
	.long	.LASF88
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x2b2
	.uleb128 0x19
	.long	.LASF148
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x591
	.uleb128 0x16
	.long	.LASF89
	.byte	0
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.uleb128 0x16
	.long	.LASF91
	.byte	0x2
	.uleb128 0x16
	.long	.LASF92
	.byte	0x3
	.uleb128 0x16
	.long	.LASF93
	.byte	0x4
	.uleb128 0x16
	.long	.LASF94
	.byte	0x5
	.uleb128 0x16
	.long	.LASF95
	.byte	0x6
	.uleb128 0x16
	.long	.LASF96
	.byte	0x7
	.uleb128 0x16
	.long	.LASF97
	.byte	0x8
	.uleb128 0x16
	.long	.LASF98
	.byte	0x9
	.uleb128 0x16
	.long	.LASF99
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x53c
	.uleb128 0x11
	.long	.LASF100
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2fe
	.uleb128 0x9
	.long	0x591
	.long	0x5ae
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5a3
	.uleb128 0x11
	.long	.LASF101
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x5ae
	.uleb128 0xf
	.long	.LASF102
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x438
	.uleb128 0xf
	.long	.LASF103
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF104
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x2d
	.byte	0xe
	.long	0x617
	.uleb128 0x16
	.long	.LASF105
	.byte	0
	.uleb128 0x16
	.long	.LASF106
	.byte	0x2
	.uleb128 0x16
	.long	.LASF107
	.byte	0x5
	.uleb128 0x16
	.long	.LASF108
	.byte	0x4
	.uleb128 0x16
	.long	.LASF109
	.byte	0x3
	.uleb128 0x16
	.long	.LASF110
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF111
	.uleb128 0xf
	.long	.LASF112
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x617
	.uleb128 0xb
	.long	.LASF113
	.byte	0x8
	.byte	0x1b
	.byte	0x23
	.byte	0x8
	.long	0x64e
	.uleb128 0x12
	.string	"i"
	.byte	0x1b
	.byte	0x25
	.byte	0x10
	.long	0x40
	.byte	0
	.uleb128 0x12
	.string	"buf"
	.byte	0x1b
	.byte	0x26
	.byte	0x8
	.long	0xba
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	0x3c7
	.long	0x65e
	.uleb128 0xa
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x64e
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x2
	.byte	0x4a
	.byte	0x1c
	.long	0x65e
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x2
	.value	0x43e
	.byte	0x1
	.long	0x65
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x752
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x2
	.value	0x43e
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x2
	.value	0x43e
	.byte	0x18
	.long	0x47a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"opt"
	.byte	0x2
	.value	0x440
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF117
	.byte	0x2
	.value	0x441
	.byte	0x9
	.long	0x2c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x2
	.value	0x442
	.byte	0xf
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF119
	.byte	0x2
	.value	0x445
	.byte	0x8
	.long	0x752
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x1e
	.long	.LASF120
	.byte	0x2
	.value	0x447
	.byte	0x8
	.long	0x752
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x2
	.value	0x449
	.byte	0xd
	.long	0x4bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x1f
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x1f
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF122
	.uleb128 0x20
	.long	.LASF125
	.byte	0x2
	.value	0x3f7
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x884
	.uleb128 0x21
	.string	"in"
	.byte	0x2
	.value	0x3f7
	.byte	0x12
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.string	"out"
	.byte	0x2
	.value	0x3f7
	.byte	0x1c
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x2
	.value	0x3f7
	.byte	0x26
	.long	0x752
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x2
	.value	0x3f9
	.byte	0x9
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x2
	.value	0x3f9
	.byte	0x11
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"sum"
	.byte	0x2
	.value	0x3fa
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"ctx"
	.byte	0x2
	.value	0x3fb
	.byte	0x1e
	.long	0x628
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1d
	.string	"ok"
	.byte	0x2
	.value	0x407
	.byte	0xc
	.long	0x752
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x1d
	.string	"n"
	.byte	0x2
	.value	0x408
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.string	"k"
	.byte	0x2
	.value	0x409
	.byte	0x14
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x23
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x84f
	.uleb128 0x1d
	.string	"i"
	.byte	0x2
	.value	0x412
	.byte	0x1b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1f
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1f
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1f
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF126
	.byte	0x2
	.value	0x3ca
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x95e
	.uleb128 0x21
	.string	"in"
	.byte	0x2
	.value	0x3ca
	.byte	0x12
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"out"
	.byte	0x2
	.value	0x3ca
	.byte	0x1c
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x2
	.value	0x3ca
	.byte	0x2b
	.long	0x4bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x2
	.value	0x3cc
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x2
	.value	0x3cd
	.byte	0x9
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x2
	.value	0x3cd
	.byte	0x11
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"sum"
	.byte	0x2
	.value	0x3ce
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x93b
	.uleb128 0x1d
	.string	"n"
	.byte	0x2
	.value	0x3d5
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1f
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0
	.uleb128 0x20
	.long	.LASF128
	.byte	0x2
	.value	0x3a7
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0xa48
	.uleb128 0x1c
	.long	.LASF129
	.byte	0x2
	.value	0x3a7
	.byte	0x19
	.long	0x2b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"len"
	.byte	0x2
	.value	0x3a7
	.byte	0x28
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x2
	.value	0x3a8
	.byte	0x17
	.long	0x4bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x2
	.value	0x3a8
	.byte	0x2c
	.long	0xa48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.string	"out"
	.byte	0x2
	.value	0x3a8
	.byte	0x42
	.long	0x2c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x2
	.value	0x3aa
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1e
	.long	.LASF131
	.byte	0x2
	.value	0x3b5
	.byte	0x13
	.long	0x4bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF132
	.byte	0x2
	.value	0x3b6
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2d
	.uleb128 0x24
	.long	.LASF134
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7c
	.uleb128 0x25
	.long	.LASF135
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x20
	.long	.LASF136
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xb21
	.uleb128 0x1c
	.long	.LASF137
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF138
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xad7
	.uleb128 0x27
	.long	.LASF137
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2b2
	.byte	0
	.uleb128 0x27
	.long	.LASF139
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2b2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xaac
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xb31
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF140
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xb36
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x9
	.long	0xad7
	.long	0xb31
	.uleb128 0xa
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xb21
	.uleb128 0x7
	.byte	0x8
	.long	0xad7
	.uleb128 0x28
	.long	.LASF142
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF143
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
	.uleb128 0x5
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
	.uleb128 0x28
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"exit_failure"
.LASF9:
	.string	"__off_t"
.LASF106:
	.string	"FADVISE_SEQUENTIAL"
.LASF97:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF96:
	.string	"escape_quoting_style"
.LASF86:
	.string	"GETOPT_VERSION_CHAR"
.LASF148:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF32:
	.string	"_shortbuf"
.LASF91:
	.string	"shell_always_quoting_style"
.LASF128:
	.string	"wrap_write"
.LASF90:
	.string	"shell_quoting_style"
.LASF85:
	.string	"GETOPT_HELP_CHAR"
.LASF20:
	.string	"_IO_buf_base"
.LASF57:
	.string	"long long unsigned int"
.LASF117:
	.string	"input_fh"
.LASF120:
	.string	"ignore_garbage"
.LASF35:
	.string	"_codecvt"
.LASF69:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF131:
	.string	"cols_remaining"
.LASF82:
	.string	"uintmax_t"
.LASF137:
	.string	"program"
.LASF89:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF132:
	.string	"to_write"
.LASF15:
	.string	"_IO_read_end"
.LASF75:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF116:
	.string	"long_options"
.LASF118:
	.string	"infile"
.LASF143:
	.string	"emit_stdin_note"
.LASF36:
	.string	"_wide_data"
.LASF123:
	.string	"inbuf"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF79:
	.string	"program_invocation_short_name"
.LASF94:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF78:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF83:
	.string	"TIMESPEC_HZ"
.LASF93:
	.string	"shell_escape_always_quoting_style"
.LASF72:
	.string	"timezone"
.LASF88:
	.string	"program_name"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF64:
	.string	"name"
.LASF49:
	.string	"sys_nerr"
.LASF144:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF99:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF104:
	.string	"error_one_per_line"
.LASF80:
	.string	"Version"
.LASF126:
	.string	"do_encode"
.LASF22:
	.string	"_IO_save_base"
.LASF77:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"stdout"
.LASF121:
	.string	"wrap_column"
.LASF87:
	.string	"version_etc_copyright"
.LASF58:
	.string	"optarg"
.LASF73:
	.string	"getdate_err"
.LASF19:
	.string	"_IO_write_end"
.LASF59:
	.string	"optind"
.LASF119:
	.string	"decode"
.LASF14:
	.string	"_IO_read_ptr"
.LASF10:
	.string	"__off64_t"
.LASF147:
	.string	"_IO_lock_t"
.LASF62:
	.string	"_IO_FILE"
.LASF102:
	.string	"error_print_progname"
.LASF140:
	.string	"map_prog"
.LASF76:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF50:
	.string	"sys_errlist"
.LASF25:
	.string	"_markers"
.LASF127:
	.string	"current_column"
.LASF125:
	.string	"do_decode"
.LASF95:
	.string	"c_maybe_quoting_style"
.LASF122:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF139:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF63:
	.string	"option"
.LASF112:
	.string	"quote_quoting_options"
.LASF145:
	.string	"src/basenc.c"
.LASF66:
	.string	"flag"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF70:
	.string	"tzname"
.LASF42:
	.string	"FILE"
.LASF110:
	.string	"FADVISE_RANDOM"
.LASF92:
	.string	"shell_escape_quoting_style"
.LASF130:
	.string	"written"
.LASF107:
	.string	"FADVISE_NOREUSE"
.LASF100:
	.string	"quoting_style_args"
.LASF61:
	.string	"optopt"
.LASF71:
	.string	"daylight"
.LASF54:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF108:
	.string	"FADVISE_DONTNEED"
.LASF101:
	.string	"quoting_style_vals"
.LASF11:
	.string	"__time_t"
.LASF98:
	.string	"clocale_quoting_style"
.LASF114:
	.string	"argc"
.LASF129:
	.string	"buffer"
.LASF60:
	.string	"opterr"
.LASF8:
	.string	"__uintmax_t"
.LASF105:
	.string	"FADVISE_NORMAL"
.LASF111:
	.string	"quoting_options"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"_sys_siglist"
.LASF138:
	.string	"infomap"
.LASF65:
	.string	"has_arg"
.LASF134:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF124:
	.string	"outbuf"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF115:
	.string	"argv"
.LASF68:
	.string	"__daylight"
.LASF135:
	.string	"status"
.LASF146:
	.string	"/root/coreutils"
.LASF13:
	.string	"_flags"
.LASF23:
	.string	"_IO_backup_base"
.LASF103:
	.string	"error_message_count"
.LASF141:
	.string	"lc_messages"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF109:
	.string	"FADVISE_WILLNEED"
.LASF142:
	.string	"emit_mandatory_arg_note"
.LASF67:
	.string	"__tzname"
.LASF133:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF136:
	.string	"emit_ancillary_info"
.LASF113:
	.string	"base64_decode_context"
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
