	.file	"truncate.c"
	.text
.Ltext0:
	.type	to_uchar, @function
to_uchar:
.LFB11:
	.file 1 "src/system.h"
	.loc 1 156 48
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 156 57
	movzbl	-4(%rbp), %eax
	.loc 1 156 61
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	to_uchar, .-to_uchar
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
	.align 8
.LC1:
	.string	"\nThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\nUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\nBinary prefixes can be used, too: KiB=K, MiB=M, and so on.\n"
	.text
	.type	emit_size_note, @function
emit_size_note:
.LFB37:
	.loc 1 597 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 598 3
	movq	stdout(%rip), %rbx
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 603 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	emit_size_note, .-emit_size_note
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
	je	.L10
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L10
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L10:
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
	jne	.L11
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC17(%rip), %rbx
	jmp	.L12
.L11:
	.loc 1 671 3 discriminator 2
	leaq	.LC18(%rip), %rbx
.L12:
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
	.type	usable_st_size, @function
usable_st_size:
.LFB43:
	.loc 1 706 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 707 11
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31
	cmpl	$32768, %eax
	je	.L15
	.loc 1 707 36 discriminator 2
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31 discriminator 2
	cmpl	$40960, %eax
	jne	.L16
.L15:
	.loc 1 708 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L17
.L16:
	.loc 1 708 31 discriminator 4
	movl	$0, %eax
.L17:
	.loc 1 708 31 discriminator 6
	andl	$1, %eax
	.loc 1 709 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	usable_st_size, .-usable_st_size
	.local	no_create
	.comm	no_create,1,1
	.local	block_mode
	.comm	block_mode,1,1
	.local	ref_file
	.comm	ref_file,8,8
	.section	.rodata
.LC20:
	.string	"no-create"
.LC21:
	.string	"io-blocks"
.LC22:
	.string	"reference"
.LC23:
	.string	"size"
.LC24:
	.string	"help"
.LC25:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 224
longopts:
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC23
	.long	1
	.zero	4
	.quad	0
	.long	115
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
.LC27:
	.string	"Usage: %s OPTION... FILE...\n"
	.align 8
.LC28:
	.ascii	"Shrink or extend t"
	.string	"he size of each FILE to the specified size\n\nA FILE argument that does not exist is created.\n\nIf a FILE is larger than the specified size, the extra data is lost.\nIf a FILE is shorter, it is extended and the sparse extended part (hole)\nreads as zero bytes.\n"
	.align 8
.LC29:
	.string	"  -c, --no-create        do not create any files\n"
	.align 8
.LC30:
	.string	"  -o, --io-blocks        treat SIZE as number of IO blocks instead of bytes\n"
	.align 8
.LC31:
	.string	"  -r, --reference=RFILE  base size on RFILE\n  -s, --size=SIZE        set or adjust the file size by SIZE bytes\n"
	.align 8
.LC32:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC33:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC34:
	.string	"\nSIZE may also be prefixed by one of the following modifying characters:\n'+' extend by, '-' reduce by, '<' at most, '>' at least,\n'/' round down to multiple of, '%' round up to multiple of.\n"
.LC35:
	.string	"truncate"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/truncate.c"
	.loc 2 65 1
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
	.loc 2 66 6
	cmpl	$0, -20(%rbp)
	je	.L20
	.loc 2 67 5
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
	jmp	.L21
.L20:
	.loc 2 70 7
	movq	program_name(%rip), %rbx
	.loc 2 70 15
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	.loc 2 70 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 71 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 81 7
	call	emit_mandatory_arg_note
	.loc 2 83 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 86 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 89 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 92 7
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
	.loc 2 94 7
	call	emit_size_note
	.loc 2 95 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 99 7
	leaq	.LC35(%rip), %rdi
	call	emit_ancillary_info
.L21:
	.loc 2 101 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC36:
	.string	"cannot fstat %s"
	.align 8
.LC37:
	.string	"overflow in %ld * %ld byte blocks for file %s"
	.align 8
.LC38:
	.string	"%s has unusable, apparently negative size"
.LC39:
	.string	"cannot get the size of %s"
	.align 8
.LC40:
	.string	"overflow extending size of file %s"
	.align 8
.LC41:
	.string	"failed to truncate %s at %ld bytes"
	.text
	.type	do_ftruncate, @function
do_ftruncate:
.LFB47:
	.loc 2 108 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -244(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movl	%r8d, -248(%rbp)
	.loc 2 108 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 2 112 8
	movzbl	block_mode(%rip), %eax
	.loc 2 112 6
	testb	%al, %al
	jne	.L23
	.loc 2 112 19 discriminator 2
	cmpl	$0, -248(%rbp)
	je	.L24
	.loc 2 112 32 discriminator 3
	cmpq	$0, -272(%rbp)
	jns	.L24
.L23:
	.loc 2 112 50 discriminator 4
	leaq	-192(%rbp), %rdx
	movl	-244(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 2 112 47 discriminator 4
	testl	%eax, %eax
	je	.L24
	.loc 2 114 7
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 114 24
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 114 17
	call	__errno_location@PLT
	.loc 2 114 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 115 14
	movl	$0, %eax
	jmp	.L46
.L24:
	.loc 2 117 7
	movzbl	block_mode(%rip), %eax
	.loc 2 117 6
	testb	%al, %al
	je	.L26
.LBB2:
	.loc 2 119 27
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	jle	.L27
	.loc 2 119 27 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L27
	.loc 2 119 27 discriminator 3
	movq	-136(%rbp), %rax
	jmp	.L28
.L27:
	.loc 2 119 27 discriminator 4
	movl	$512, %eax
.L28:
	.loc 2 119 17 is_stmt 1 discriminator 6
	movq	%rax, -216(%rbp)
	.loc 2 120 16 discriminator 6
	movq	-264(%rbp), %rax
	movq	%rax, -208(%rbp)
	.loc 2 121 11 discriminator 6
	movq	-264(%rbp), %rax
	movl	$0, %edx
	imulq	-216(%rbp), %rax
	jno	.L29
	movl	$1, %edx
.L29:
	movq	%rax, -264(%rbp)
	movq	%rdx, %rax
	andl	$1, %eax
	.loc 2 121 10 discriminator 6
	testb	%al, %al
	je	.L26
	.loc 2 123 11
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 124 18
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 123 11
	movq	-216(%rbp), %rcx
	movq	-208(%rbp), %rax
	movq	%rbx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 127 18
	movl	$0, %eax
	jmp	.L46
.L26:
.LBE2:
	.loc 2 130 6
	cmpl	$0, -248(%rbp)
	je	.L31
.LBB3:
	.loc 2 134 10
	cmpq	$0, -272(%rbp)
	js	.L32
	.loc 2 135 15
	movq	-272(%rbp), %rax
	movq	%rax, -224(%rbp)
	jmp	.L33
.L32:
	.loc 2 138 15
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	usable_st_size
	.loc 2 138 14
	testb	%al, %al
	je	.L34
	.loc 2 140 21
	movq	-144(%rbp), %rax
	movq	%rax, -224(%rbp)
	.loc 2 141 18
	cmpq	$0, -224(%rbp)
	jns	.L33
	.loc 2 145 19
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 145 32
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	.loc 2 145 19
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 147 26
	movl	$0, %eax
	jmp	.L46
.L34:
	.loc 2 152 23
	movl	-244(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -224(%rbp)
	.loc 2 153 18
	cmpq	$0, -224(%rbp)
	jns	.L33
	.loc 2 155 19
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 155 36
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 155 29
	call	__errno_location@PLT
	.loc 2 155 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 157 26
	movl	$0, %eax
	jmp	.L46
.L33:
	.loc 2 162 10
	cmpl	$2, -248(%rbp)
	jne	.L35
	.loc 2 163 17
	movq	-264(%rbp), %rax
	cmpq	%rax, -224(%rbp)
	cmovge	-224(%rbp), %rax
	.loc 2 163 15
	movq	%rax, -232(%rbp)
	jmp	.L36
.L35:
	.loc 2 164 15
	cmpl	$3, -248(%rbp)
	jne	.L37
	.loc 2 165 17
	movq	-264(%rbp), %rax
	cmpq	%rax, -224(%rbp)
	cmovle	-224(%rbp), %rax
	.loc 2 165 15
	movq	%rax, -232(%rbp)
	jmp	.L36
.L37:
	.loc 2 166 15
	cmpl	$4, -248(%rbp)
	jne	.L38
	.loc 2 168 31
	movq	-264(%rbp), %rcx
	movq	-224(%rbp), %rax
	cqto
	idivq	%rcx
	.loc 2 168 23
	movq	-224(%rbp), %rax
	subq	%rdx, %rax
	.loc 2 168 15
	movq	%rax, -232(%rbp)
	jmp	.L36
.L38:
	.loc 2 171 14
	cmpl	$5, -248(%rbp)
	jne	.L39
.LBB4:
	.loc 2 174 31
	movq	-264(%rbp), %rcx
	.loc 2 174 21
	movq	-224(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rdx, -200(%rbp)
	.loc 2 175 34
	cmpq	$0, -200(%rbp)
	je	.L40
	.loc 2 175 42 discriminator 1
	movq	-264(%rbp), %rax
	.loc 2 175 34 discriminator 1
	subq	-200(%rbp), %rax
	jmp	.L41
.L40:
	.loc 2 175 34 is_stmt 0 discriminator 2
	movl	$0, %eax
.L41:
	.loc 2 175 21 is_stmt 1 discriminator 4
	movq	%rax, -264(%rbp)
.L39:
.LBE4:
	.loc 2 177 15
	movq	-264(%rbp), %rdx
	movl	$0, %ecx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	jno	.L42
	movl	$1, %ecx
.L42:
	movq	%rax, -232(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	.loc 2 177 14
	testb	%al, %al
	je	.L36
	.loc 2 179 15
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 179 28
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 2 179 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 181 22
	movl	$0, %eax
	jmp	.L46
.L31:
.LBE3:
	.loc 2 186 11
	movq	-264(%rbp), %rax
	movq	%rax, -232(%rbp)
.L36:
	.loc 2 187 13
	movq	-232(%rbp), %rax
	.loc 2 187 6
	testq	%rax, %rax
	jns	.L44
	.loc 2 188 11
	movq	$0, -232(%rbp)
.L44:
	.loc 2 190 7
	movq	-232(%rbp), %rdx
	movl	-244(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ftruncate@PLT
	.loc 2 190 6
	cmpl	$-1, %eax
	jne	.L45
	.loc 2 192 7
	movq	-232(%rbp), %r13
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 193 14
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 192 17
	call	__errno_location@PLT
	.loc 2 192 7
	movl	(%rax), %eax
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 195 14
	movl	$0, %eax
	jmp	.L46
.L45:
	.loc 2 198 10
	movl	$1, %eax
.L46:
	.loc 2 199 1 discriminator 1
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L47
	.loc 2 199 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L47:
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	do_ftruncate, .-do_ftruncate
	.section	.rodata
.LC42:
	.string	"/usr/local/share/locale"
	.align 8
.LC43:
	.string	"multiple relative modifiers specified"
.LC44:
	.string	"Invalid number"
.LC45:
	.string	"EgGkKmMPtTYZ0"
.LC46:
	.string	"division by zero"
.LC47:
	.string	"Padraig Brady"
.LC48:
	.string	"cor:s:"
.LC49:
	.string	"--reference"
.LC50:
	.string	"--size"
	.align 8
.LC51:
	.string	"you must specify either %s or %s"
	.align 8
.LC52:
	.string	"you must specify a relative %s with %s"
.LC53:
	.string	"--io-blocks"
	.align 8
.LC54:
	.string	"%s was specified but %s was not"
.LC55:
	.string	"missing file operand"
.LC56:
	.string	"cannot stat %s"
.LC57:
	.string	"cannot open %s for writing"
.LC58:
	.string	"failed to close %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB48:
	.loc 2 203 1 is_stmt 1
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
	.loc 2 203 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 204 8
	movb	$0, -242(%rbp)
	.loc 2 205 8
	movb	$0, -241(%rbp)
	.loc 2 206 9
	movq	$0, -216(%rbp)
	.loc 2 207 9
	movq	$-1, -208(%rbp)
	.loc 2 208 14
	movl	$0, -240(%rbp)
	.loc 2 209 10
	movl	$-1, -236(%rbp)
	.loc 2 213 3
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 214 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 215 3
	leaq	.LC42(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 216 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 218 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 220 9
	jmp	.L49
.L71:
	.loc 2 222 7
	cmpl	$115, -232(%rbp)
	je	.L57
	cmpl	$115, -232(%rbp)
	jg	.L51
	cmpl	$114, -232(%rbp)
	je	.L52
	cmpl	$114, -232(%rbp)
	jg	.L51
	cmpl	$111, -232(%rbp)
	je	.L53
	cmpl	$111, -232(%rbp)
	jg	.L51
	cmpl	$99, -232(%rbp)
	je	.L54
	cmpl	$99, -232(%rbp)
	jg	.L51
	cmpl	$-131, -232(%rbp)
	je	.L55
	cmpl	$-130, -232(%rbp)
	je	.L56
	jmp	.L51
.L54:
	.loc 2 225 21
	movb	$1, no_create(%rip)
	.loc 2 226 11
	jmp	.L49
.L53:
	.loc 2 229 22
	movb	$1, block_mode(%rip)
	.loc 2 230 11
	jmp	.L49
.L52:
	.loc 2 233 20
	movq	optarg(%rip), %rax
	movq	%rax, ref_file(%rip)
	.loc 2 234 11
	jmp	.L49
.L58:
	.loc 2 239 19
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
.L57:
	.loc 2 238 18
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	.loc 2 238 17
	testl	%eax, %eax
	jne	.L58
	.loc 2 240 19
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$62, %eax
	je	.L59
	cmpl	$62, %eax
	jg	.L64
	cmpl	$60, %eax
	je	.L61
	cmpl	$60, %eax
	jg	.L64
	cmpl	$37, %eax
	je	.L62
	cmpl	$47, %eax
	je	.L63
	jmp	.L64
.L61:
	.loc 2 243 24
	movl	$3, -240(%rbp)
	.loc 2 244 21
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
	.loc 2 245 15
	jmp	.L60
.L59:
	.loc 2 247 24
	movl	$2, -240(%rbp)
	.loc 2 248 21
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
	.loc 2 249 15
	jmp	.L60
.L63:
	.loc 2 251 24
	movl	$4, -240(%rbp)
	.loc 2 252 21
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
	.loc 2 253 15
	jmp	.L60
.L62:
	.loc 2 255 24
	movl	$5, -240(%rbp)
	.loc 2 256 21
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
	.loc 2 257 15
	nop
.L60:
	.loc 2 260 17
	jmp	.L64
.L65:
	.loc 2 261 19
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
.L64:
	.loc 2 260 18 discriminator 1
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	.loc 2 260 17 discriminator 1
	testl	%eax, %eax
	jne	.L65
	.loc 2 262 15
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 262 14
	cmpb	$43, %al
	je	.L66
	.loc 2 262 33 discriminator 1
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 262 30 discriminator 1
	cmpb	$45, %al
	jne	.L67
.L66:
	.loc 2 264 18
	cmpl	$0, -240(%rbp)
	je	.L68
	.loc 2 266 32
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	.loc 2 266 19
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 268 19
	movl	$1, %edi
	call	usage
.L68:
	.loc 2 270 24
	movl	$1, -240(%rbp)
.L67:
	.loc 2 275 30
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 274 18
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC45(%rip), %rcx
	movabsq	$9223372036854775807, %rdx
	movabsq	$-9223372036854775808, %rsi
	movq	%rax, %rdi
	call	xdectoimax@PLT
	movq	%rax, -216(%rbp)
	.loc 2 277 14
	cmpl	$5, -240(%rbp)
	je	.L69
	.loc 2 277 35 discriminator 2
	cmpl	$4, -240(%rbp)
	jne	.L70
.L69:
	.loc 2 277 58 discriminator 3
	cmpq	$0, -216(%rbp)
	jne	.L70
.LBB5:
	.loc 2 278 13
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L70:
.LBE5:
	.loc 2 279 20
	movb	$1, -242(%rbp)
	.loc 2 280 11
	jmp	.L49
.L56:
	.loc 2 282 9
	movl	$0, %edi
	call	usage
.L55:
	.loc 2 284 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC47(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L51:
	.loc 2 287 11
	movl	$1, %edi
	call	usage
.L49:
	.loc 2 220 15
	movq	-272(%rbp), %rsi
	movl	-260(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -232(%rbp)
	.loc 2 220 9
	cmpl	$-1, -232(%rbp)
	jne	.L71
	.loc 2 291 8
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -272(%rbp)
	.loc 2 292 8
	movl	optind(%rip), %eax
	subl	%eax, -260(%rbp)
	.loc 2 295 7
	movq	ref_file(%rip), %rax
	.loc 2 295 6
	testq	%rax, %rax
	jne	.L72
	.loc 2 295 20 discriminator 1
	movzbl	-242(%rbp), %eax
	xorl	$1, %eax
	.loc 2 295 17 discriminator 1
	testb	%al, %al
	je	.L72
	.loc 2 297 7
	leaq	.LC49(%rip), %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r12
	leaq	.LC50(%rip), %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %rbx
	.loc 2 297 20
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	.loc 2 297 7
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 299 7
	movl	$1, %edi
	call	usage
.L72:
	.loc 2 302 7
	movq	ref_file(%rip), %rax
	.loc 2 302 6
	testq	%rax, %rax
	je	.L73
	.loc 2 302 16 discriminator 1
	cmpb	$0, -242(%rbp)
	je	.L73
	.loc 2 302 28 discriminator 2
	cmpl	$0, -240(%rbp)
	jne	.L73
	.loc 2 304 7
	leaq	.LC49(%rip), %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r12
	leaq	.LC50(%rip), %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %rbx
	.loc 2 304 20
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	.loc 2 304 7
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 306 7
	movl	$1, %edi
	call	usage
.L73:
	.loc 2 309 7
	movzbl	block_mode(%rip), %eax
	.loc 2 309 6
	testb	%al, %al
	je	.L74
	.loc 2 309 21 discriminator 1
	movzbl	-242(%rbp), %eax
	xorl	$1, %eax
	.loc 2 309 18 discriminator 1
	testb	%al, %al
	je	.L74
	.loc 2 311 7
	leaq	.LC50(%rip), %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r12
	leaq	.LC53(%rip), %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %rbx
	.loc 2 311 20
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	.loc 2 311 7
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 313 7
	movl	$1, %edi
	call	usage
.L74:
	.loc 2 316 6
	cmpl	$0, -260(%rbp)
	jg	.L75
	.loc 2 318 20
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	.loc 2 318 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 319 7
	movl	$1, %edi
	call	usage
.L75:
	.loc 2 322 7
	movq	ref_file(%rip), %rax
	.loc 2 322 6
	testq	%rax, %rax
	je	.L76
.LBB6:
	.loc 2 325 13
	movq	$-1, -200(%rbp)
	.loc 2 326 11
	movq	ref_file(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 326 10
	testl	%eax, %eax
	je	.L77
.LBB7:
	.loc 2 327 9
	movq	ref_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC56(%rip), %rdi
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
.L77:
.LBE7:
	.loc 2 328 11
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	usable_st_size
	.loc 2 328 10
	testb	%al, %al
	je	.L78
	.loc 2 329 19
	movq	-128(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.L79
.L78:
.LBB8:
	.loc 2 332 24
	movq	ref_file(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -228(%rbp)
	.loc 2 333 14
	cmpl	$0, -228(%rbp)
	js	.L79
.LBB9:
	.loc 2 335 32
	movl	-228(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -192(%rbp)
	.loc 2 336 33
	call	__errno_location@PLT
	.loc 2 336 19
	movl	(%rax), %eax
	movl	%eax, -224(%rbp)
	.loc 2 337 15
	movl	-228(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 338 18
	cmpq	$0, -192(%rbp)
	js	.L80
	.loc 2 339 27
	movq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.L79
.L80:
	.loc 2 343 19
	call	__errno_location@PLT
	.loc 2 343 25
	movl	-224(%rbp), %edx
	movl	%edx, (%rax)
.L79:
.LBE9:
.LBE8:
	.loc 2 347 10
	cmpq	$0, -200(%rbp)
	jns	.L81
.LBB10:
	.loc 2 348 9
	movq	ref_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC39(%rip), %rdi
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
.L81:
.LBE10:
	.loc 2 350 11
	movzbl	-242(%rbp), %eax
	xorl	$1, %eax
	.loc 2 350 10
	testb	%al, %al
	je	.L82
	.loc 2 351 14
	movq	-200(%rbp), %rax
	movq	%rax, -216(%rbp)
	jmp	.L76
.L82:
	.loc 2 353 15
	movq	-200(%rbp), %rax
	movq	%rax, -208(%rbp)
.L76:
.LBE6:
	.loc 2 356 34
	movzbl	no_create(%rip), %eax
	.loc 2 356 49
	testb	%al, %al
	je	.L84
	.loc 2 356 49 is_stmt 0 discriminator 1
	movl	$2049, %eax
	jmp	.L85
.L84:
	.loc 2 356 49 discriminator 2
	movl	$2113, %eax
.L85:
	.loc 2 356 10 is_stmt 1 discriminator 4
	movl	%eax, -220(%rbp)
	.loc 2 358 9 discriminator 4
	jmp	.L86
.L90:
	.loc 2 360 17
	movl	-220(%rbp), %ecx
	movq	-184(%rbp), %rax
	movl	$438, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -236(%rbp)
	.loc 2 360 10
	cmpl	$-1, -236(%rbp)
	jne	.L87
	.loc 2 366 17
	movzbl	no_create(%rip), %eax
	xorl	$1, %eax
	.loc 2 366 14
	testb	%al, %al
	jne	.L88
	.loc 2 366 30 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 366 15 discriminator 1
	cmpl	$2, %eax
	je	.L86
.L88:
	.loc 2 368 15
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 368 32
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 368 25
	call	__errno_location@PLT
	.loc 2 368 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 370 22
	movb	$1, -241(%rbp)
	.loc 2 372 11
	jmp	.L86
.L87:
	.loc 2 376 10
	cmpl	$-1, -236(%rbp)
	je	.L86
	.loc 2 378 22
	movl	-240(%rbp), %edi
	movq	-208(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movl	-236(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	do_ftruncate
	.loc 2 378 21
	xorl	$1, %eax
	movzbl	%al, %edx
	.loc 2 378 18
	movzbl	-241(%rbp), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -241(%rbp)
	.loc 2 379 15
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 379 14
	testl	%eax, %eax
	je	.L86
	.loc 2 381 15
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 381 32
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 381 25
	call	__errno_location@PLT
	.loc 2 381 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 382 22
	movb	$1, -241(%rbp)
.L86:
	.loc 2 358 24
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	.loc 2 358 17
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	.loc 2 358 9
	cmpq	$0, -184(%rbp)
	jne	.L90
	.loc 2 387 32
	movzbl	-241(%rbp), %eax
	movzbl	%al, %eax
	.loc 2 388 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L92
	call	__stack_chk_fail@PLT
.L92:
	addq	$256, %rsp
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
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 11 "./lib/sys/select.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 14 "/usr/include/time.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 16 "/usr/include/signal.h"
	.file 17 "/usr/include/unistd.h"
	.file 18 "/usr/include/errno.h"
	.file 19 "src/version.h"
	.file 20 "./lib/exitfail.h"
	.file 21 "/usr/include/stdint.h"
	.file 22 "./lib/timespec.h"
	.file 23 "/usr/include/ctype.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcaa
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF193
	.byte	0xc
	.long	.LASF194
	.long	.LASF195
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
	.byte	0x48
	.byte	0x12
	.long	0x71
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
	.long	.LASF67
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
	.long	.LASF196
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
	.uleb128 0x2
	.long	.LASF55
	.byte	0x7
	.byte	0x3f
	.byte	0x11
	.long	0xcc
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x331
	.uleb128 0x7
	.byte	0x8
	.long	0x2ad
	.uleb128 0xf
	.long	.LASF57
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x331
	.uleb128 0xf
	.long	.LASF58
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x331
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x314
	.long	0x366
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x35b
	.uleb128 0xf
	.long	.LASF60
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x366
	.uleb128 0xf
	.long	.LASF61
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF62
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x366
	.uleb128 0x2
	.long	.LASF63
	.byte	0x3
	.byte	0x8f
	.byte	0x1a
	.long	0x71
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF64
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF65
	.uleb128 0x2
	.long	.LASF66
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0xe4
	.uleb128 0x9
	.long	.LASF68
	.byte	0x10
	.byte	0xa
	.byte	0xa
	.byte	0x8
	.long	0x3dd
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0xc
	.byte	0xc
	.long	0xe4
	.byte	0
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x10
	.byte	0x15
	.long	0x108
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF71
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF72
	.uleb128 0xf
	.long	.LASF73
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF74
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF75
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF76
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF77
	.byte	0x20
	.byte	0xd
	.byte	0x32
	.byte	0x8
	.long	0x463
	.uleb128 0xa
	.long	.LASF78
	.byte	0xd
	.byte	0x34
	.byte	0xf
	.long	0x30e
	.byte	0
	.uleb128 0xa
	.long	.LASF79
	.byte	0xd
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF80
	.byte	0xd
	.byte	0x38
	.byte	0x8
	.long	0x468
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xd
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x421
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0x114
	.long	0x47e
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF81
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x46e
	.uleb128 0xf
	.long	.LASF82
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF83
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF84
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x46e
	.uleb128 0xf
	.long	.LASF85
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF86
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF87
	.byte	0xe
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF88
	.byte	0x90
	.byte	0xf
	.byte	0x2e
	.byte	0x8
	.long	0x5a4
	.uleb128 0xa
	.long	.LASF89
	.byte	0xf
	.byte	0x30
	.byte	0xd
	.long	0x84
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0xf
	.byte	0x35
	.byte	0xd
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF91
	.byte	0xf
	.byte	0x3d
	.byte	0xf
	.long	0xc0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF92
	.byte	0xf
	.byte	0x3e
	.byte	0xe
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF93
	.byte	0xf
	.byte	0x40
	.byte	0xd
	.long	0x90
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF94
	.byte	0xf
	.byte	0x41
	.byte	0xd
	.long	0x9c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF95
	.byte	0xf
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF96
	.byte	0xf
	.byte	0x45
	.byte	0xd
	.long	0x84
	.byte	0x28
	.uleb128 0xa
	.long	.LASF97
	.byte	0xf
	.byte	0x4a
	.byte	0xd
	.long	0xcc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF98
	.byte	0xf
	.byte	0x4e
	.byte	0x11
	.long	0xf0
	.byte	0x38
	.uleb128 0xa
	.long	.LASF99
	.byte	0xf
	.byte	0x50
	.byte	0x10
	.long	0xfc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF100
	.byte	0xf
	.byte	0x5b
	.byte	0x15
	.long	0x3b5
	.byte	0x48
	.uleb128 0xa
	.long	.LASF101
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x3b5
	.byte	0x58
	.uleb128 0xa
	.long	.LASF102
	.byte	0xf
	.byte	0x5d
	.byte	0x15
	.long	0x3b5
	.byte	0x68
	.uleb128 0xa
	.long	.LASF103
	.byte	0xf
	.byte	0x6a
	.byte	0x17
	.long	0x5a9
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x4d3
	.uleb128 0xd
	.long	0x108
	.long	0x5b9
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x5b9
	.uleb128 0xd
	.long	0x314
	.long	0x5d0
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5c0
	.uleb128 0x11
	.long	.LASF104
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x5d0
	.uleb128 0x11
	.long	.LASF105
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x5d0
	.uleb128 0x11
	.long	.LASF106
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x5fc
	.uleb128 0x7
	.byte	0x8
	.long	0x114
	.uleb128 0x11
	.long	.LASF107
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x5fc
	.uleb128 0xf
	.long	.LASF108
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF109
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF110
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x30e
	.uleb128 0xf
	.long	.LASF111
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF112
	.byte	0x15
	.byte	0x65
	.byte	0x15
	.long	0x78
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x663
	.uleb128 0x15
	.long	.LASF113
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x678
	.uleb128 0x16
	.long	.LASF114
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x2f
	.byte	0x1
	.long	0x6d7
	.uleb128 0x17
	.long	.LASF115
	.value	0x100
	.uleb128 0x17
	.long	.LASF116
	.value	0x200
	.uleb128 0x17
	.long	.LASF117
	.value	0x400
	.uleb128 0x17
	.long	.LASF118
	.value	0x800
	.uleb128 0x17
	.long	.LASF119
	.value	0x1000
	.uleb128 0x17
	.long	.LASF120
	.value	0x2000
	.uleb128 0x17
	.long	.LASF121
	.value	0x4000
	.uleb128 0x17
	.long	.LASF122
	.value	0x8000
	.uleb128 0x16
	.long	.LASF123
	.byte	0x1
	.uleb128 0x16
	.long	.LASF124
	.byte	0x2
	.uleb128 0x16
	.long	.LASF125
	.byte	0x4
	.uleb128 0x16
	.long	.LASF126
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x6f5
	.uleb128 0x19
	.long	.LASF127
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF128
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x121
	.long	0x700
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x6f5
	.uleb128 0xf
	.long	.LASF129
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x700
	.uleb128 0xf
	.long	.LASF130
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0x30e
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x772
	.uleb128 0x16
	.long	.LASF131
	.byte	0
	.uleb128 0x16
	.long	.LASF132
	.byte	0x1
	.uleb128 0x16
	.long	.LASF133
	.byte	0x2
	.uleb128 0x16
	.long	.LASF134
	.byte	0x3
	.uleb128 0x16
	.long	.LASF135
	.byte	0x4
	.uleb128 0x16
	.long	.LASF136
	.byte	0x5
	.uleb128 0x16
	.long	.LASF137
	.byte	0x6
	.uleb128 0x16
	.long	.LASF138
	.byte	0x7
	.uleb128 0x16
	.long	.LASF139
	.byte	0x8
	.uleb128 0x16
	.long	.LASF140
	.byte	0x9
	.uleb128 0x16
	.long	.LASF141
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x71d
	.uleb128 0x11
	.long	.LASF142
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x366
	.uleb128 0xd
	.long	0x772
	.long	0x78f
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x784
	.uleb128 0x11
	.long	.LASF143
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x78f
	.uleb128 0xf
	.long	.LASF144
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x5ba
	.uleb128 0xf
	.long	.LASF145
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF146
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF147
	.uleb128 0xf
	.long	.LASF148
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x7c5
	.uleb128 0x1b
	.long	.LASF150
	.byte	0x2
	.byte	0x29
	.byte	0xd
	.long	0x7ec
	.uleb128 0x9
	.byte	0x3
	.quad	no_create
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF149
	.uleb128 0x1b
	.long	.LASF151
	.byte	0x2
	.byte	0x2c
	.byte	0xd
	.long	0x7ec
	.uleb128 0x9
	.byte	0x3
	.quad	block_mode
	.uleb128 0x1b
	.long	.LASF152
	.byte	0x2
	.byte	0x2f
	.byte	0x14
	.long	0x30e
	.uleb128 0x9
	.byte	0x3
	.quad	ref_file
	.uleb128 0xd
	.long	0x463
	.long	0x82f
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x81f
	.uleb128 0x1b
	.long	.LASF153
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.long	0x82f
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.long	0x87d
	.uleb128 0x16
	.long	.LASF154
	.byte	0
	.uleb128 0x16
	.long	.LASF155
	.byte	0x1
	.uleb128 0x16
	.long	.LASF156
	.byte	0x2
	.uleb128 0x16
	.long	.LASF157
	.byte	0x3
	.uleb128 0x16
	.long	.LASF158
	.byte	0x4
	.uleb128 0x16
	.long	.LASF159
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF160
	.byte	0x2
	.byte	0x3d
	.byte	0x38
	.long	0x84a
	.uleb128 0x1c
	.long	.LASF179
	.byte	0x2
	.byte	0xca
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1a
	.uleb128 0x1d
	.long	.LASF161
	.byte	0x2
	.byte	0xca
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x2
	.byte	0xca
	.byte	0x18
	.long	0x5fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1b
	.long	.LASF163
	.byte	0x2
	.byte	0xcc
	.byte	0x8
	.long	0x7ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -258
	.uleb128 0x1b
	.long	.LASF164
	.byte	0x2
	.byte	0xcd
	.byte	0x8
	.long	0x7ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -257
	.uleb128 0x1b
	.long	.LASF165
	.byte	0x2
	.byte	0xce
	.byte	0x9
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1b
	.long	.LASF166
	.byte	0x2
	.byte	0xcf
	.byte	0x9
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1b
	.long	.LASF167
	.byte	0x2
	.byte	0xd0
	.byte	0xe
	.long	0x87d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.byte	0xd1
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x1e
	.string	"fd"
	.byte	0x2
	.byte	0xd1
	.byte	0xa
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x1b
	.long	.LASF168
	.byte	0x2
	.byte	0xd1
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x1b
	.long	.LASF169
	.byte	0x2
	.byte	0xd2
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x21
	.string	"sb"
	.byte	0x2
	.value	0x144
	.byte	0x13
	.long	0x4d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x22
	.long	.LASF170
	.byte	0x2
	.value	0x145
	.byte	0xd
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x23
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xa07
	.uleb128 0x22
	.long	.LASF171
	.byte	0x2
	.value	0x14c
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x20
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x22
	.long	.LASF172
	.byte	0x2
	.value	0x14f
	.byte	0x15
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x22
	.long	.LASF173
	.byte	0x2
	.value	0x150
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF182
	.byte	0x2
	.byte	0x6a
	.byte	0x1
	.long	0x7ec
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xb23
	.uleb128 0x25
	.string	"fd"
	.byte	0x2
	.byte	0x6a
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x1d
	.long	.LASF169
	.byte	0x2
	.byte	0x6a
	.byte	0x23
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x2
	.byte	0x6a
	.byte	0x30
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1d
	.long	.LASF166
	.byte	0x2
	.byte	0x6a
	.byte	0x3d
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1d
	.long	.LASF167
	.byte	0x2
	.byte	0x6b
	.byte	0x1a
	.long	0x87d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1e
	.string	"sb"
	.byte	0x2
	.byte	0x6d
	.byte	0xf
	.long	0x4d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1b
	.long	.LASF175
	.byte	0x2
	.byte	0x6e
	.byte	0x9
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x23
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xae0
	.uleb128 0x1b
	.long	.LASF176
	.byte	0x2
	.byte	0x77
	.byte	0x11
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x2
	.byte	0x78
	.byte	0x10
	.long	0x63f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1b
	.long	.LASF178
	.byte	0x2
	.byte	0x84
	.byte	0xd
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1e
	.string	"r"
	.byte	0x2
	.byte	0xae
	.byte	0x15
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF180
	.byte	0x2
	.byte	0x40
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xb51
	.uleb128 0x1d
	.long	.LASF181
	.byte	0x2
	.byte	0x40
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.LASF183
	.byte	0x1
	.value	0x2c1
	.byte	0x1
	.long	0x7ec
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0xb84
	.uleb128 0x28
	.string	"sb"
	.byte	0x1
	.value	0x2c1
	.byte	0x24
	.long	0xb84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5a4
	.uleb128 0x29
	.long	.LASF191
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xc2f
	.uleb128 0x2a
	.long	.LASF184
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.long	.LASF185
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xbe5
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x30e
	.byte	0
	.uleb128 0x2c
	.long	.LASF186
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x30e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xbba
	.uleb128 0x22
	.long	.LASF185
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xc3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF186
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	.LASF187
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xc44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
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
	.long	0xbe5
	.long	0xc3f
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xc2f
	.uleb128 0x7
	.byte	0x8
	.long	0xbe5
	.uleb128 0x2d
	.long	.LASF189
	.byte	0x1
	.value	0x254
	.byte	0x1
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF190
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF192
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x49
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x11a
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x27
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
.LASF111:
	.string	"exit_failure"
.LASF11:
	.string	"__gid_t"
.LASF151:
	.string	"block_mode"
.LASF122:
	.string	"_ISgraph"
.LASF139:
	.string	"locale_quoting_style"
.LASF35:
	.string	"_chain"
.LASF102:
	.string	"st_ctim"
.LASF174:
	.string	"ssize"
.LASF128:
	.string	"GETOPT_VERSION_CHAR"
.LASF153:
	.string	"longopts"
.LASF197:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF183:
	.string	"usable_st_size"
.LASF114:
	.string	"LOG10_TIMESPEC_HZ"
.LASF41:
	.string	"_shortbuf"
.LASF177:
	.string	"ssize0"
.LASF120:
	.string	"_ISspace"
.LASF132:
	.string	"shell_quoting_style"
.LASF127:
	.string	"GETOPT_HELP_CHAR"
.LASF29:
	.string	"_IO_buf_base"
.LASF72:
	.string	"long long unsigned int"
.LASF57:
	.string	"stdout"
.LASF117:
	.string	"_ISalpha"
.LASF44:
	.string	"_codecvt"
.LASF163:
	.string	"got_size"
.LASF118:
	.string	"_ISdigit"
.LASF88:
	.string	"stat"
.LASF64:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF143:
	.string	"quoting_style_vals"
.LASF90:
	.string	"st_ino"
.LASF184:
	.string	"program"
.LASF138:
	.string	"escape_quoting_style"
.LASF13:
	.string	"__mode_t"
.LASF182:
	.string	"do_ftruncate"
.LASF178:
	.string	"fsize"
.LASF131:
	.string	"literal_quoting_style"
.LASF157:
	.string	"rm_max"
.LASF24:
	.string	"_IO_read_end"
.LASF83:
	.string	"__timezone"
.LASF19:
	.string	"__blkcnt_t"
.LASF105:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF71:
	.string	"_gl_cxxalias_dummy"
.LASF175:
	.string	"nsize"
.LASF36:
	.string	"_fileno"
.LASF22:
	.string	"_flags"
.LASF45:
	.string	"_wide_data"
.LASF126:
	.string	"_ISalnum"
.LASF39:
	.string	"_cur_column"
.LASF109:
	.string	"program_invocation_short_name"
.LASF136:
	.string	"c_quoting_style"
.LASF53:
	.string	"_IO_codecvt"
.LASF62:
	.string	"_sys_errlist"
.LASF108:
	.string	"program_invocation_name"
.LASF38:
	.string	"_old_offset"
.LASF43:
	.string	"_offset"
.LASF156:
	.string	"rm_min"
.LASF123:
	.string	"_ISblank"
.LASF55:
	.string	"off_t"
.LASF173:
	.string	"saved_errno"
.LASF95:
	.string	"__pad0"
.LASF135:
	.string	"shell_escape_always_quoting_style"
.LASF86:
	.string	"timezone"
.LASF125:
	.string	"_ISpunct"
.LASF99:
	.string	"st_blocks"
.LASF130:
	.string	"program_name"
.LASF93:
	.string	"st_uid"
.LASF52:
	.string	"_IO_marker"
.LASF56:
	.string	"stdin"
.LASF152:
	.string	"ref_file"
.LASF171:
	.string	"ref_fd"
.LASF47:
	.string	"_freeres_buf"
.LASF164:
	.string	"errors"
.LASF0:
	.string	"long unsigned int"
.LASF27:
	.string	"_IO_write_ptr"
.LASF78:
	.string	"name"
.LASF59:
	.string	"sys_nerr"
.LASF176:
	.string	"blksize"
.LASF193:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF165:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF146:
	.string	"error_one_per_line"
.LASF110:
	.string	"Version"
.LASF8:
	.string	"__intmax_t"
.LASF31:
	.string	"_IO_save_base"
.LASF14:
	.string	"__nlink_t"
.LASF107:
	.string	"environ"
.LASF42:
	.string	"_lock"
.LASF37:
	.string	"_flags2"
.LASF49:
	.string	"_mode"
.LASF169:
	.string	"fname"
.LASF97:
	.string	"st_size"
.LASF63:
	.string	"ptrdiff_t"
.LASF129:
	.string	"version_etc_copyright"
.LASF92:
	.string	"st_mode"
.LASF73:
	.string	"optarg"
.LASF70:
	.string	"tv_nsec"
.LASF187:
	.string	"map_prog"
.LASF154:
	.string	"rm_abs"
.LASF87:
	.string	"getdate_err"
.LASF9:
	.string	"__dev_t"
.LASF74:
	.string	"optind"
.LASF20:
	.string	"__syscall_slong_t"
.LASF23:
	.string	"_IO_read_ptr"
.LASF155:
	.string	"rm_rel"
.LASF112:
	.string	"intmax_t"
.LASF196:
	.string	"_IO_lock_t"
.LASF67:
	.string	"_IO_FILE"
.LASF144:
	.string	"error_print_progname"
.LASF18:
	.string	"__blksize_t"
.LASF172:
	.string	"file_end"
.LASF15:
	.string	"__off_t"
.LASF106:
	.string	"__environ"
.LASF66:
	.string	"time_t"
.LASF150:
	.string	"no_create"
.LASF166:
	.string	"rsize"
.LASF60:
	.string	"sys_errlist"
.LASF34:
	.string	"_markers"
.LASF103:
	.string	"__glibc_reserved"
.LASF192:
	.string	"to_uchar"
.LASF91:
	.string	"st_nlink"
.LASF137:
	.string	"c_maybe_quoting_style"
.LASF149:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF186:
	.string	"node"
.LASF30:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF168:
	.string	"oflags"
.LASF77:
	.string	"option"
.LASF98:
	.string	"st_blksize"
.LASF148:
	.string	"quote_quoting_options"
.LASF167:
	.string	"rel_mode"
.LASF80:
	.string	"flag"
.LASF61:
	.string	"_sys_nerr"
.LASF158:
	.string	"rm_rdn"
.LASF68:
	.string	"timespec"
.LASF40:
	.string	"_vtable_offset"
.LASF84:
	.string	"tzname"
.LASF51:
	.string	"FILE"
.LASF134:
	.string	"shell_escape_quoting_style"
.LASF12:
	.string	"__ino_t"
.LASF142:
	.string	"quoting_style_args"
.LASF76:
	.string	"optopt"
.LASF85:
	.string	"daylight"
.LASF160:
	.string	"rel_mode_t"
.LASF96:
	.string	"st_rdev"
.LASF65:
	.string	"long double"
.LASF21:
	.string	"char"
.LASF133:
	.string	"shell_always_quoting_style"
.LASF69:
	.string	"tv_sec"
.LASF1:
	.string	"unsigned int"
.LASF124:
	.string	"_IScntrl"
.LASF113:
	.string	"TIMESPEC_HZ"
.LASF17:
	.string	"__time_t"
.LASF119:
	.string	"_ISxdigit"
.LASF140:
	.string	"clocale_quoting_style"
.LASF116:
	.string	"_ISlower"
.LASF75:
	.string	"opterr"
.LASF10:
	.string	"__uid_t"
.LASF16:
	.string	"__off64_t"
.LASF147:
	.string	"quoting_options"
.LASF25:
	.string	"_IO_read_base"
.LASF33:
	.string	"_IO_save_end"
.LASF104:
	.string	"_sys_siglist"
.LASF185:
	.string	"infomap"
.LASF189:
	.string	"emit_size_note"
.LASF94:
	.string	"st_gid"
.LASF79:
	.string	"has_arg"
.LASF180:
	.string	"usage"
.LASF48:
	.string	"__pad5"
.LASF28:
	.string	"_IO_write_end"
.LASF50:
	.string	"_unused2"
.LASF58:
	.string	"stderr"
.LASF100:
	.string	"st_atim"
.LASF162:
	.string	"argv"
.LASF82:
	.string	"__daylight"
.LASF181:
	.string	"status"
.LASF195:
	.string	"/root/coreutils"
.LASF89:
	.string	"st_dev"
.LASF115:
	.string	"_ISupper"
.LASF141:
	.string	"custom_quoting_style"
.LASF32:
	.string	"_IO_backup_base"
.LASF101:
	.string	"st_mtim"
.LASF145:
	.string	"error_message_count"
.LASF188:
	.string	"lc_messages"
.LASF159:
	.string	"rm_rup"
.LASF161:
	.string	"argc"
.LASF194:
	.string	"src/truncate.c"
.LASF46:
	.string	"_freeres_list"
.LASF54:
	.string	"_IO_wide_data"
.LASF190:
	.string	"emit_mandatory_arg_note"
.LASF81:
	.string	"__tzname"
.LASF179:
	.string	"main"
.LASF26:
	.string	"_IO_write_base"
.LASF191:
	.string	"emit_ancillary_info"
.LASF121:
	.string	"_ISprint"
.LASF170:
	.string	"file_size"
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
