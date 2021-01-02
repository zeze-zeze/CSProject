	.file	"shuf.c"
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
	je	.L13
	.loc 1 707 36 discriminator 2
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31 discriminator 2
	cmpl	$40960, %eax
	jne	.L14
.L13:
	.loc 1 708 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L15
.L14:
	.loc 1 708 31 discriminator 4
	movl	$0, %eax
.L15:
	.loc 1 708 31 discriminator 6
	andl	$1, %eax
	.loc 1 709 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	usable_st_size, .-usable_st_size
	.type	randint_choose, @function
randint_choose:
.LFB46:
	.file 2 "./lib/randint.h"
	.loc 2 45 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 46 10
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	randint_genmax@PLT
	.loc 2 47 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	randint_choose, .-randint_choose
	.section	.rodata
	.align 8
.LC20:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC21:
	.string	"Usage: %s [OPTION]... [FILE]\n  or:  %s -e [OPTION]... [ARG]...\n  or:  %s -i LO-HI [OPTION]...\n"
	.align 8
.LC22:
	.string	"Write a random permutation of the input lines to standard output.\n"
	.align 8
.LC23:
	.ascii	"  -e, --echo                treat each ARG as an input line\n"
	.ascii	"  -i, --input-range=LO-HI   treat each number LO through HI "
	.ascii	"as a"
	.string	"n input line\n  -n, --head-count=COUNT    output at most COUNT lines\n  -o, --output=FILE         write result to FILE instead of standard output\n      --random-source=FILE  get random bytes from FILE\n  -r, --repeat              output lines can be repeated\n"
	.align 8
.LC24:
	.string	"  -z, --zero-terminated     line delimiter is NUL, not newline\n"
	.align 8
.LC25:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC26:
	.string	"      --version  output version information and exit\n"
.LC27:
	.string	"shuf"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB47:
	.file 3 "src/shuf.c"
	.loc 3 57 1
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
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -36(%rbp)
	.loc 3 58 6
	cmpl	$0, -36(%rbp)
	je	.L20
	.loc 3 59 5
	movq	program_name(%rip), %rbx
	leaq	.LC20(%rip), %rdi
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
	.loc 3 62 7
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 3 62 15
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	.loc 3 62 7
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 68 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 72 7
	call	emit_stdin_note
	.loc 3 73 7
	call	emit_mandatory_arg_note
	.loc 3 75 7
	movq	stdout(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 83 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 86 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 87 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 88 7
	leaq	.LC27(%rip), %rdi
	call	emit_ancillary_info
.L21:
	.loc 3 91 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE47:
	.size	usage, .-usage
	.section	.rodata
.LC28:
	.string	"echo"
.LC29:
	.string	"input-range"
.LC30:
	.string	"head-count"
.LC31:
	.string	"output"
.LC32:
	.string	"random-source"
.LC33:
	.string	"repeat"
.LC34:
	.string	"zero-terminated"
.LC35:
	.string	"help"
.LC36:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_opts, @object
	.size	long_opts, 320
long_opts:
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	101
	.zero	4
	.quad	.LC29
	.long	1
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC30
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC31
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC32
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC35
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC36
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
	.text
	.type	input_from_argv, @function
input_from_argv:
.LFB48:
	.loc 3 117 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, %eax
	movb	%al, -48(%rbp)
	.loc 3 119 10
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	.loc 3 122 10
	movl	$0, -28(%rbp)
	.loc 3 122 3
	jmp	.L23
.L24:
	.loc 3 123 28 discriminator 3
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 123 13 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 3 123 10 discriminator 3
	addq	%rax, -16(%rbp)
	.loc 3 122 32 discriminator 3
	addl	$1, -28(%rbp)
.L23:
	.loc 3 122 3 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L24
	.loc 3 124 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -24(%rbp)
	.loc 3 126 10
	movl	$0, -28(%rbp)
	.loc 3 126 3
	jmp	.L25
.L26:
.LBB2:
	.loc 3 128 36 discriminator 3
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 128 18 discriminator 3
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rax, -8(%rbp)
	.loc 3 129 14 discriminator 3
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 129 18 discriminator 3
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 3 130 9 discriminator 3
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 3 131 9 discriminator 3
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 3 131 12 discriminator 3
	movzbl	-48(%rbp), %edx
	movb	%dl, (%rax)
.LBE2:
	.loc 3 126 32 discriminator 3
	addl	$1, -28(%rbp)
.L25:
	.loc 3 126 3 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L26
	.loc 3 134 10
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 134 23
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 3 135 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	input_from_argv, .-input_from_argv
	.type	next_line, @function
next_line:
.LFB49:
	.loc 3 142 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movb	%al, -28(%rbp)
	.loc 3 143 13
	movsbl	-28(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -8(%rbp)
	.loc 3 144 12
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 3 145 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	next_line, .-next_line
	.type	input_size, @function
input_size:
.LFB50:
	.loc 3 151 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	.loc 3 151 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 155 7
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	fstat@PLT
	.loc 3 155 6
	testl	%eax, %eax
	je	.L30
	.loc 3 156 12
	movabsq	$9223372036854775807, %rax
	jmp	.L35
.L30:
	.loc 3 157 7
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	usable_st_size
	.loc 3 157 6
	testb	%al, %al
	je	.L32
	.loc 3 158 15
	movq	-112(%rbp), %rax
	movq	%rax, -176(%rbp)
	.loc 3 162 24
	movl	$1, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	lseek@PLT
	movq	%rax, -168(%rbp)
	.loc 3 163 6
	cmpq	$0, -168(%rbp)
	jns	.L34
	jmp	.L37
.L32:
	.loc 3 160 12
	movabsq	$9223372036854775807, %rax
	jmp	.L35
.L37:
	.loc 3 164 12
	movabsq	$9223372036854775807, %rax
	jmp	.L35
.L34:
	.loc 3 166 13
	movq	-168(%rbp), %rax
	subq	%rax, -176(%rbp)
	.loc 3 168 10
	movq	-176(%rbp), %rax
.L35:
	.loc 3 169 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L36
	.loc 3 169 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	input_size, .-input_size
	.section	.rodata
.LC37:
	.string	"too many input lines"
.LC38:
	.string	"read error"
	.text
	.type	read_input_reservoir_sampling, @function
read_input_reservoir_sampling:
.LFB51:
	.loc 3 178 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, %eax
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movb	%al, -108(%rbp)
	.loc 3 178 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 179 11
	movq	$0, -88(%rbp)
	.loc 3 180 10
	movl	$1024, %eax
	cmpq	$1024, -120(%rbp)
	cmovbe	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 3 181 22
	movq	$0, -72(%rbp)
	.loc 3 184 10
	movq	-80(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	xcalloc@PLT
	movq	%rax, -64(%rbp)
	.loc 3 187 9
	jmp	.L39
.L41:
	.loc 3 191 14
	addq	$1, -88(%rbp)
	.loc 3 194 10
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L39
	.loc 3 196 25
	addq	$1024, -80(%rbp)
	.loc 3 197 18
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xnrealloc@PLT
	movq	%rax, -64(%rbp)
	.loc 3 198 24
	movq	-88(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 3 198 19
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 198 11
	movl	$24576, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L39:
	.loc 3 187 9
	movq	-88(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jnb	.L40
	.loc 3 189 14
	movsbl	-108(%rbp), %ecx
	.loc 3 189 41
	movq	-88(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 3 189 14
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-104(%rbp), %rax
	movl	%ecx, %edx
	movq	%rax, %rsi
	call	readlinebuffer_delim@PLT
	movq	%rax, -72(%rbp)
	.loc 3 188 10
	cmpq	$0, -72(%rbp)
	jne	.L41
.L40:
	.loc 3 204 6
	cmpq	$0, -72(%rbp)
	je	.L42
.LBB3:
	.loc 3 207 7
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	initbuffer@PLT
.L46:
.LBB4:
	.loc 3 220 23
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	randint_choose
	movq	%rax, -56(%rbp)
	.loc 3 221 39
	movq	-56(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jnb	.L43
	.loc 3 221 34 discriminator 1
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 3 221 39 discriminator 1
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L44
.L43:
	.loc 3 221 39 is_stmt 0 discriminator 2
	leaq	-48(%rbp), %rax
.L44:
	.loc 3 221 16 is_stmt 1 discriminator 4
	movq	%rax, -72(%rbp)
.LBE4:
	.loc 3 223 14 discriminator 4
	movsbl	-108(%rbp), %edx
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readlinebuffer_delim@PLT
	.loc 3 223 7 discriminator 4
	testq	%rax, %rax
	je	.L45
	.loc 3 223 73 discriminator 1
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	.loc 3 223 63 discriminator 1
	testq	%rax, %rax
	jne	.L46
.L45:
	.loc 3 225 10
	cmpq	$0, -88(%rbp)
	jne	.L47
.LBB5:
	.loc 3 226 9
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$75, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L47:
.LBE5:
	.loc 3 228 7
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	freebuffer@PLT
.L42:
.LBE3:
	.loc 3 232 7
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 3 232 6
	testl	%eax, %eax
	je	.L48
.LBB6:
	.loc 3 233 5
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L48:
.LBE6:
	.loc 3 235 13
	movq	-136(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 3 236 10
	movq	-120(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	cmovbe	-88(%rbp), %rax
	.loc 3 237 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	read_input_reservoir_sampling, .-read_input_reservoir_sampling
	.type	write_permuted_output_reservoir, @function
write_permuted_output_reservoir:
.LFB52:
	.loc 3 242 1
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
	movq	%rdx, -40(%rbp)
.LBB7:
	.loc 3 243 15
	movq	$0, -16(%rbp)
	.loc 3 243 3
	jmp	.L52
.L55:
.LBB8:
	.loc 3 245 54
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	.loc 3 245 42
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 3 245 32
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 3 246 11
	movq	stdout(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 3 246 68
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	.loc 3 246 10
	cmpq	%rdx, %rax
	je	.L53
	.loc 3 247 16
	movl	$-1, %eax
	jmp	.L54
.L53:
.LBE8:
	.loc 3 243 36 discriminator 2
	addq	$1, -16(%rbp)
.L52:
	.loc 3 243 3 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L55
.LBE7:
	.loc 3 250 10
	movl	$0, %eax
.L54:
	.loc 3 251 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	write_permuted_output_reservoir, .-write_permuted_output_reservoir
	.type	read_input, @function
read_input:
.LFB53:
	.loc 3 261 1
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
	movl	%esi, %eax
	movq	%rdx, -104(%rbp)
	movb	%al, -92(%rbp)
	.loc 3 261 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 263 9
	movq	$0, -48(%rbp)
	.loc 3 278 15
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	fread_file@PLT
	movq	%rax, -48(%rbp)
	.loc 3 278 6
	cmpq	$0, -48(%rbp)
	jne	.L57
.LBB9:
	.loc 3 279 5
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L57:
.LBE9:
	.loc 3 281 7
	movq	-80(%rbp), %rax
	.loc 3 281 6
	testq	%rax, %rax
	je	.L58
	.loc 3 281 18 discriminator 1
	movq	-80(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 3 281 12 discriminator 1
	cmpb	%al, -92(%rbp)
	je	.L58
	.loc 3 282 13
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	.loc 3 282 8
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	.loc 3 282 17
	movzbl	-92(%rbp), %eax
	movb	%al, (%rdx)
.L58:
	.loc 3 284 13
	movq	-80(%rbp), %rdx
	.loc 3 284 7
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 3 286 11
	movq	$0, -64(%rbp)
	.loc 3 287 10
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 3 287 3
	jmp	.L59
.L60:
	.loc 3 288 12 discriminator 3
	addq	$1, -64(%rbp)
	.loc 3 287 57 discriminator 3
	movq	-40(%rbp), %rax
	subq	-72(%rbp), %rax
	.loc 3 287 30 discriminator 3
	movq	%rax, %rdx
	movsbl	-92(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	next_line
	movq	%rax, -72(%rbp)
.L59:
	.loc 3 287 3 discriminator 1
	movq	-72(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L60
	.loc 3 290 19
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -32(%rbp)
	.loc 3 290 10
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 3 292 15
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 3 292 11
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
.LBB10:
	.loc 3 293 15
	movq	$1, -56(%rbp)
	.loc 3 293 3
	jmp	.L61
.L62:
	.loc 3 294 46 discriminator 3
	movq	-40(%rbp), %rax
	subq	-72(%rbp), %rax
	.loc 3 294 19 discriminator 3
	movq	%rax, %rdx
	movsbl	-92(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	next_line
	movq	%rax, -72(%rbp)
	.loc 3 294 9 discriminator 3
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 294 13 discriminator 3
	movq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 3 293 37 discriminator 3
	addq	$1, -56(%rbp)
.L61:
	.loc 3 293 3 discriminator 1
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jbe	.L62
.LBE10:
	.loc 3 296 10
	movq	-64(%rbp), %rax
	.loc 3 297 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	read_input, .-read_input
	.type	write_permuted_lines, @function
write_permuted_lines:
.LFB54:
	.loc 3 306 1
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
.LBB11:
	.loc 3 307 15
	movq	$0, -24(%rbp)
	.loc 3 307 3
	jmp	.L66
.L69:
.LBB12:
	.loc 3 309 42
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 3 309 29
	leaq	0(,%rax,8), %rdx
	.loc 3 309 20
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 3 310 21
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	.loc 3 310 28
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 310 25
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 3 310 14
	movq	%rax, -8(%rbp)
	.loc 3 311 11
	movq	stdout(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 3 311 10
	cmpq	%rax, -8(%rbp)
	je	.L67
	.loc 3 312 16
	movl	$-1, %eax
	jmp	.L68
.L67:
.LBE12:
	.loc 3 307 36 discriminator 2
	addq	$1, -24(%rbp)
.L66:
	.loc 3 307 3 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L69
.LBE11:
	.loc 3 315 10
	movl	$0, %eax
.L68:
	.loc 3 316 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	write_permuted_lines, .-write_permuted_lines
	.section	.rodata
.LC39:
	.string	"%lu%c"
	.text
	.type	write_permuted_numbers, @function
write_permuted_numbers:
.LFB55:
	.loc 3 323 1
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
	movq	%rdx, -40(%rbp)
	movl	%ecx, %eax
	movb	%al, -44(%rbp)
.LBB13:
	.loc 3 324 15
	movq	$0, -16(%rbp)
	.loc 3 324 3
	jmp	.L71
.L74:
.LBB14:
	.loc 3 326 51
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	.loc 3 326 25
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 3 327 11
	movsbl	-44(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC39(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 327 10
	testl	%eax, %eax
	jns	.L72
	.loc 3 328 16
	movl	$-1, %eax
	jmp	.L73
.L72:
.LBE14:
	.loc 3 324 36 discriminator 2
	addq	$1, -16(%rbp)
.L71:
	.loc 3 324 3 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L74
.LBE13:
	.loc 3 331 10
	movl	$0, %eax
.L73:
	.loc 3 332 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	write_permuted_numbers, .-write_permuted_numbers
	.type	write_random_numbers, @function
write_random_numbers:
.LFB56:
	.loc 3 339 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, %eax
	movb	%al, -68(%rbp)
	.loc 3 340 34
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	.loc 3 340 17
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB15:
	.loc 3 342 15
	movq	$0, -24(%rbp)
	.loc 3 342 3
	jmp	.L76
.L79:
.LBB16:
	.loc 3 344 40
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	randint_choose
	.loc 3 344 25
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 3 345 11
	movsbl	-68(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC39(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 345 10
	testl	%eax, %eax
	jns	.L77
	.loc 3 346 16
	movl	$-1, %eax
	jmp	.L78
.L77:
.LBE16:
	.loc 3 342 34 discriminator 2
	addq	$1, -24(%rbp)
.L76:
	.loc 3 342 3 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L79
.LBE15:
	.loc 3 349 10
	movl	$0, %eax
.L78:
	.loc 3 350 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	write_random_numbers, .-write_random_numbers
	.type	write_random_lines, @function
write_random_lines:
.LFB57:
	.loc 3 358 1
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
	movq	%rcx, -64(%rbp)
.LBB17:
	.loc 3 359 15
	movq	$0, -32(%rbp)
	.loc 3 359 3
	jmp	.L81
.L84:
.LBB18:
	.loc 3 361 25
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	randint_choose
	movq	%rax, -24(%rbp)
	.loc 3 362 30
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	.loc 3 362 20
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 3 363 21
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	.loc 3 363 28
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 363 25
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 3 363 14
	movq	%rax, -8(%rbp)
	.loc 3 364 11
	movq	stdout(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 3 364 10
	cmpq	%rax, -8(%rbp)
	je	.L82
	.loc 3 365 16
	movl	$-1, %eax
	jmp	.L83
.L82:
.LBE18:
	.loc 3 359 34 discriminator 2
	addq	$1, -32(%rbp)
.L81:
	.loc 3 359 3 discriminator 1
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L84
.LBE17:
	.loc 3 368 10
	movl	$0, %eax
.L83:
	.loc 3 369 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	write_random_lines, .-write_random_lines
	.section	.rodata
.LC40:
	.string	"/usr/local/share/locale"
.LC41:
	.string	"multiple -i options specified"
.LC42:
	.string	"invalid input range"
.LC43:
	.string	"%s: %s"
.LC44:
	.string	"invalid line count: %s"
	.align 8
.LC45:
	.string	"multiple output files specified"
	.align 8
.LC46:
	.string	"multiple random sources specified"
.LC47:
	.string	"Paul Eggert"
.LC48:
	.string	"ei:n:o:rz"
	.align 8
.LC49:
	.string	"cannot combine -e and -i options"
.LC50:
	.string	"extra operand %s"
.LC51:
	.string	"-"
.LC52:
	.string	"r"
.LC53:
	.string	"%s"
.LC54:
	.string	"getrandom"
.LC55:
	.string	"w"
.LC56:
	.string	"no lines to repeat"
.LC57:
	.string	"write error"
	.text
	.globl	main
	.type	main, @function
main:
.LFB58:
	.loc 3 373 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	.loc 3 373 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 374 8
	movb	$0, -182(%rbp)
	.loc 3 375 8
	movb	$0, -181(%rbp)
	.loc 3 376 10
	movq	$-1, -136(%rbp)
	.loc 3 377 10
	movq	$0, -128(%rbp)
	.loc 3 378 10
	movq	$-1, -120(%rbp)
	.loc 3 379 15
	movq	$0, -112(%rbp)
	.loc 3 380 9
	movq	$0, -104(%rbp)
	.loc 3 381 8
	movb	$10, -180(%rbp)
	.loc 3 382 10
	movq	$0, -160(%rbp)
	.loc 3 383 8
	movb	$0, -179(%rbp)
	.loc 3 384 8
	movb	$0, -178(%rbp)
	.loc 3 390 10
	movq	$0, -88(%rbp)
	.loc 3 391 22
	movq	$0, -152(%rbp)
	.loc 3 393 11
	movq	$0, -80(%rbp)
	.loc 3 397 3
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 3 398 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 3 399 3
	leaq	.LC40(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 3 400 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 3 402 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 3 404 9
	jmp	.L86
.L106:
	.loc 3 405 5
	cmpl	$128, -172(%rbp)
	jg	.L87
	cmpl	$101, -172(%rbp)
	jge	.L88
	cmpl	$-131, -172(%rbp)
	je	.L89
	cmpl	$-130, -172(%rbp)
	je	.L90
	jmp	.L87
.L88:
	movl	-172(%rbp), %eax
	subl	$101, %eax
	cmpl	$27, %eax
	ja	.L87
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L92(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L92(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L92:
	.long	.L98-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L97-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L96-.L92
	.long	.L95-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L94-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L93-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L87-.L92
	.long	.L91-.L92
	.text
.L98:
	.loc 3 408 14
	movb	$1, -182(%rbp)
	.loc 3 409 9
	jmp	.L86
.L97:
.LBB19:
	.loc 3 413 21
	movq	optarg(%rip), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	.loc 3 414 23
	movq	optarg(%rip), %rax
	movq	%rax, -72(%rbp)
	.loc 3 415 16
	cmpq	$0, -32(%rbp)
	sete	%al
	movb	%al, -177(%rbp)
	.loc 3 417 14
	cmpb	$0, -181(%rbp)
	je	.L99
.LBB20:
	.loc 3 418 13
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L99:
.LBE20:
	.loc 3 419 23
	movb	$1, -181(%rbp)
	.loc 3 421 14
	cmpq	$0, -32(%rbp)
	je	.L100
	.loc 3 423 18
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	.loc 3 425 38
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 424 26
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movq	$-1, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	movq	%rax, -136(%rbp)
	.loc 3 426 18
	movq	-32(%rbp), %rax
	movb	$45, (%rax)
	.loc 3 427 25
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.L100:
	.loc 3 431 34
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 430 22
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movq	$-1, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	movq	%rax, -128(%rbp)
	.loc 3 433 30
	movq	-128(%rbp), %rax
	subq	-136(%rbp), %rax
	.loc 3 433 19
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	.loc 3 434 46
	movq	-136(%rbp), %rax
	cmpq	-128(%rbp), %rax
	seta	%dl
	cmpq	$0, -96(%rbp)
	sete	%al
	xorl	%edx, %eax
	.loc 3 434 19
	orb	-177(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -177(%rbp)
	.loc 3 435 14
	cmpb	$0, -177(%rbp)
	je	.L86
.LBB21:
	.loc 3 436 13
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %r8
	movq	%rbx, %rcx
	leaq	.LC43(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L96:
.LBE21:
.LBE19:
.LBB22:
	.loc 3 444 28
	movq	optarg(%rip), %rax
	leaq	-144(%rbp), %rdx
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -164(%rbp)
	.loc 3 446 14
	cmpl	$0, -164(%rbp)
	jne	.L102
	.loc 3 447 26
	movq	-144(%rbp), %rax
	.loc 3 447 24
	cmpq	%rax, -120(%rbp)
	cmovbe	-120(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.L86
.L102:
	.loc 3 448 19
	cmpl	$1, -164(%rbp)
	je	.L86
.LBB23:
	.loc 3 449 13
	movq	optarg(%rip), %rax
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
.L95:
.LBE23:
.LBE22:
	.loc 3 455 12
	cmpq	$0, -112(%rbp)
	je	.L104
	.loc 3 455 25 discriminator 1
	movq	optarg(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 455 21 discriminator 1
	testl	%eax, %eax
	je	.L104
.LBB24:
	.loc 3 456 11
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L104:
.LBE24:
	.loc 3 457 17
	movq	optarg(%rip), %rax
	movq	%rax, -112(%rbp)
	.loc 3 458 9
	jmp	.L86
.L91:
	.loc 3 461 12
	cmpq	$0, -104(%rbp)
	je	.L105
	.loc 3 461 31 discriminator 1
	movq	optarg(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 461 27 discriminator 1
	testl	%eax, %eax
	je	.L105
.LBB25:
	.loc 3 462 11
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L105:
.LBE25:
	.loc 3 463 23
	movq	optarg(%rip), %rax
	movq	%rax, -104(%rbp)
	.loc 3 464 9
	jmp	.L86
.L94:
	.loc 3 467 16
	movb	$1, -178(%rbp)
	.loc 3 468 9
	jmp	.L86
.L93:
	.loc 3 471 17
	movb	$0, -180(%rbp)
	.loc 3 472 9
	jmp	.L86
.L90:
	.loc 3 474 7
	movl	$0, %edi
	call	usage
.L89:
	.loc 3 475 7
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC47(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L87:
	.loc 3 477 9
	movl	$1, %edi
	call	usage
.L86:
	.loc 3 404 18
	movq	-208(%rbp), %rsi
	movl	-196(%rbp), %eax
	movl	$0, %r8d
	leaq	long_opts(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -172(%rbp)
	.loc 3 404 9
	cmpl	$-1, -172(%rbp)
	jne	.L106
	.loc 3 480 21
	movl	optind(%rip), %eax
	.loc 3 480 14
	movl	-196(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -168(%rbp)
	.loc 3 481 18
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 3 481 11
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 3 484 6
	cmpb	$0, -182(%rbp)
	je	.L107
	.loc 3 484 12 discriminator 1
	cmpb	$0, -181(%rbp)
	je	.L107
	.loc 3 486 20
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	.loc 3 486 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 487 7
	movl	$1, %edi
	call	usage
.L107:
	.loc 3 489 7
	cmpb	$0, -181(%rbp)
	je	.L108
	.loc 3 489 7 is_stmt 0 discriminator 1
	cmpl	$0, -168(%rbp)
	setg	%al
	jmp	.L109
.L108:
	.loc 3 489 38 is_stmt 1 discriminator 2
	movzbl	-182(%rbp), %eax
	xorl	$1, %eax
	.loc 3 489 44 discriminator 2
	testb	%al, %al
	je	.L110
	.loc 3 489 44 is_stmt 0 discriminator 4
	cmpl	$1, -168(%rbp)
	jle	.L110
	.loc 3 489 44 discriminator 6
	movl	$1, %eax
	jmp	.L111
.L110:
	.loc 3 489 44 discriminator 7
	movl	$0, %eax
.L111:
	.loc 3 489 7 is_stmt 1 discriminator 9
	andl	$1, %eax
.L109:
	.loc 3 489 6 discriminator 10
	testb	%al, %al
	je	.L112
	.loc 3 491 58
	movzbl	-181(%rbp), %eax
	xorl	$1, %eax
	.loc 3 491 57
	testb	%al, %al
	je	.L113
	.loc 3 491 57 is_stmt 0 discriminator 1
	movl	$8, %edx
	jmp	.L114
.L113:
	.loc 3 491 57 discriminator 2
	movl	$0, %edx
.L114:
	.loc 3 491 57 discriminator 4
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 491 7 is_stmt 1 discriminator 4
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 3 491 20 discriminator 4
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	.loc 3 491 7 discriminator 4
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 492 7 discriminator 4
	movl	$1, %edi
	call	usage
.L112:
	.loc 3 496 6
	cmpq	$0, -120(%rbp)
	jne	.L115
	.loc 3 498 15
	movq	$0, -96(%rbp)
	.loc 3 499 12
	movq	$0, -88(%rbp)
	jmp	.L116
.L115:
	.loc 3 501 11
	cmpb	$0, -182(%rbp)
	je	.L117
	.loc 3 503 7
	movsbl	-180(%rbp), %edx
	movl	-168(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	input_from_argv
	.loc 3 504 15
	movl	-168(%rbp), %eax
	cltq
	movq	%rax, -96(%rbp)
	.loc 3 505 12
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L116
.L117:
	.loc 3 507 11
	cmpb	$0, -181(%rbp)
	je	.L118
	.loc 3 509 26
	movq	-128(%rbp), %rax
	subq	-136(%rbp), %rax
	.loc 3 509 15
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	.loc 3 510 12
	movq	$0, -88(%rbp)
	jmp	.L116
.L118:
	.loc 3 515 10
	cmpl	$1, -168(%rbp)
	jne	.L119
	.loc 3 516 17
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 516 11
	testl	%eax, %eax
	je	.L119
	.loc 3 517 20 discriminator 1
	movq	stdin(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	freopen_safer@PLT
	.loc 3 516 14 discriminator 1
	testq	%rax, %rax
	jne	.L119
.LBB26:
	.loc 3 518 9
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC53(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L119:
.LBE26:
	.loc 3 520 7
	movq	stdin(%rip), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 3 522 10
	cmpb	$0, -178(%rbp)
	jne	.L120
	.loc 3 522 18 discriminator 1
	cmpq	$-1, -120(%rbp)
	je	.L120
	.loc 3 523 14
	call	input_size
	.loc 3 523 11
	cmpq	$8388608, %rax
	jg	.L121
.L120:
	.loc 3 525 21
	movsbl	-180(%rbp), %ecx
	movq	stdin(%rip), %rax
	leaq	-160(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_input
	movq	%rax, -96(%rbp)
	.loc 3 526 16
	movq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L116
.L121:
	.loc 3 530 34
	movb	$1, -179(%rbp)
	.loc 3 531 19
	movq	$-1, -96(%rbp)
.L116:
	.loc 3 537 68
	cmpb	$0, -178(%rbp)
	jne	.L122
	.loc 3 537 31 discriminator 2
	movq	-120(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jnb	.L123
.L122:
	.loc 3 537 68 discriminator 3
	movq	-120(%rbp), %rax
	jmp	.L124
.L123:
	.loc 3 537 68 is_stmt 0 discriminator 4
	movq	-96(%rbp), %rax
.L124:
	.loc 3 537 10 is_stmt 1 discriminator 6
	movq	%rax, -64(%rbp)
	.loc 3 539 20 discriminator 6
	cmpb	$0, -179(%rbp)
	jne	.L125
	.loc 3 540 61
	cmpb	$0, -178(%rbp)
	jne	.L125
	.loc 3 542 40
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	randperm_bound@PLT
	movq	%rax, %rdx
	.loc 3 539 20
	jmp	.L126
.L125:
	.loc 3 539 20 is_stmt 0 discriminator 1
	movq	$-1, %rdx
.L126:
	.loc 3 539 20 discriminator 2
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	randint_all_new@PLT
	movq	%rax, -40(%rbp)
	.loc 3 543 6 is_stmt 1 discriminator 2
	cmpq	$0, -40(%rbp)
	jne	.L127
.LBB27:
	.loc 3 544 5
	cmpq	$0, -104(%rbp)
	je	.L128
	.loc 3 544 5 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax
	jmp	.L129
.L128:
	.loc 3 544 5 discriminator 2
	leaq	.LC54(%rip), %rax
.L129:
	.loc 3 544 5 discriminator 4
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC53(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L127:
.LBE27:
	.loc 3 547 6 is_stmt 1
	cmpb	$0, -179(%rbp)
	je	.L130
	.loc 3 551 17
	movsbl	-180(%rbp), %esi
	movq	stdin(%rip), %rax
	leaq	-152(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	read_input_reservoir_sampling
	movq	%rax, -96(%rbp)
	.loc 3 553 19
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
.L130:
	.loc 3 559 6
	cmpq	$0, -120(%rbp)
	je	.L131
	.loc 3 559 26 discriminator 1
	movzbl	-182(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L131
	.loc 3 559 34 discriminator 2
	movzbl	-181(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L131
	.loc 3 559 52 discriminator 3
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 3 559 7 discriminator 3
	testl	%eax, %eax
	je	.L131
.LBB28:
	.loc 3 560 5
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L131:
.LBE28:
	.loc 3 562 7
	movzbl	-178(%rbp), %eax
	xorl	$1, %eax
	.loc 3 562 6
	testb	%al, %al
	je	.L132
	.loc 3 563 19
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	randperm_new@PLT
	movq	%rax, -80(%rbp)
.L132:
	.loc 3 565 6
	cmpq	$0, -112(%rbp)
	je	.L133
	.loc 3 565 20 discriminator 1
	movq	stdout(%rip), %rdx
	movq	-112(%rbp), %rax
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	call	freopen_safer@PLT
	.loc 3 565 15 discriminator 1
	testq	%rax, %rax
	jne	.L133
.LBB29:
	.loc 3 566 5
	movq	-112(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC53(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L133:
.LBE29:
	.loc 3 569 6
	cmpb	$0, -178(%rbp)
	je	.L134
	.loc 3 571 10
	cmpq	$0, -120(%rbp)
	jne	.L135
	.loc 3 572 11
	movl	$0, -176(%rbp)
	jmp	.L136
.L135:
	.loc 3 575 14
	cmpq	$0, -96(%rbp)
	jne	.L137
.LBB30:
	.loc 3 576 13
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L137:
.LBE30:
	.loc 3 577 14
	cmpb	$0, -181(%rbp)
	je	.L138
	.loc 3 578 17
	movsbl	-180(%rbp), %edi
	movq	-128(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	write_random_numbers
	movl	%eax, -176(%rbp)
	jmp	.L136
.L138:
	.loc 3 581 17
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	write_random_lines
	movl	%eax, -176(%rbp)
	jmp	.L136
.L134:
	.loc 3 586 10
	cmpb	$0, -179(%rbp)
	je	.L139
	.loc 3 587 13
	movq	-152(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_permuted_output_reservoir
	movl	%eax, -176(%rbp)
	jmp	.L136
.L139:
	.loc 3 588 15
	cmpb	$0, -181(%rbp)
	je	.L140
	.loc 3 589 13
	movsbl	-180(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	write_permuted_numbers
	movl	%eax, -176(%rbp)
	jmp	.L136
.L140:
	.loc 3 592 13
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_permuted_lines
	movl	%eax, -176(%rbp)
.L136:
	.loc 3 595 6
	cmpl	$0, -176(%rbp)
	je	.L141
.LBB31:
	.loc 3 596 5
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L141:
.LBE31:
	.loc 3 599 3
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 600 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	randint_all_free@PLT
	.loc 3 601 7
	movq	-160(%rbp), %rax
	.loc 3 601 6
	testq	%rax, %rax
	je	.L142
	.loc 3 603 7
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 604 7
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L142:
	.loc 3 606 7
	movq	-152(%rbp), %rax
	.loc 3 606 6
	testq	%rax, %rax
	je	.L143
.LBB32:
	.loc 3 609 14
	movq	$0, -56(%rbp)
	.loc 3 609 7
	jmp	.L144
.L145:
	.loc 3 610 9 discriminator 3
	movq	-152(%rbp), %rcx
	.loc 3 610 31 discriminator 3
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 3 610 9 discriminator 3
	addq	%rcx, %rax
	movq	%rax, %rdi
	call	freebuffer@PLT
	.loc 3 609 32 discriminator 3
	addq	$1, -56(%rbp)
.L144:
	.loc 3 609 7 discriminator 1
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L145
	.loc 3 611 7
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L143:
.LBE32:
	.loc 3 615 10
	movl	$0, %eax
	.loc 3 616 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L147
	call	__stack_chk_fail@PLT
.L147:
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	main, .-main
.Letext0:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 9 "./lib/sys/select.h"
	.file 10 "/usr/include/time.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 12 "/usr/include/signal.h"
	.file 13 "/usr/include/unistd.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/include/errno.h"
	.file 16 "src/version.h"
	.file 17 "./lib/exitfail.h"
	.file 18 "/usr/include/stdint.h"
	.file 19 "./lib/timespec.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 22 "/usr/include/stdio.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/fadvise.h"
	.file 29 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 30 "./lib/linebuffer.h"
	.file 31 "./lib/quote.h"
	.file 32 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1415
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF220
	.byte	0xc
	.long	.LASF221
	.long	.LASF222
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
	.byte	0x4
	.byte	0x49
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF8
	.byte	0x4
	.byte	0x91
	.byte	0x19
	.long	0x42
	.uleb128 0x5
	.long	.LASF9
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x3b
	.uleb128 0x5
	.long	.LASF10
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x3b
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0x94
	.byte	0x19
	.long	0x42
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0x96
	.byte	0x1a
	.long	0x3b
	.uleb128 0x5
	.long	.LASF13
	.byte	0x4
	.byte	0x97
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF14
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF15
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF16
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x5
	.long	.LASF17
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x63
	.uleb128 0x5
	.long	.LASF18
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x63
	.uleb128 0x5
	.long	.LASF19
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x63
	.uleb128 0x7
	.byte	0x8
	.long	0x113
	.uleb128 0x8
	.long	0x108
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x8
	.long	0x113
	.uleb128 0x5
	.long	.LASF21
	.byte	0x5
	.byte	0x55
	.byte	0x11
	.long	0xbe
	.uleb128 0x5
	.long	.LASF22
	.byte	0x6
	.byte	0x7
	.byte	0x12
	.long	0xd6
	.uleb128 0x5
	.long	.LASF23
	.byte	0x7
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x8
	.long	0x137
	.uleb128 0x9
	.long	.LASF37
	.byte	0x10
	.byte	0x8
	.byte	0xa
	.byte	0x8
	.long	0x170
	.uleb128 0xa
	.long	.LASF24
	.byte	0x8
	.byte	0xc
	.byte	0xc
	.long	0xd6
	.byte	0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x8
	.byte	0x10
	.byte	0x15
	.long	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF28
	.byte	0x9
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF26
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF27
	.uleb128 0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0x8
	.long	0x18b
	.uleb128 0xc
	.long	0x108
	.long	0x1a6
	.uleb128 0xd
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF29
	.byte	0xa
	.byte	0x9f
	.byte	0xe
	.long	0x196
	.uleb128 0xe
	.long	.LASF30
	.byte	0xa
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF31
	.byte	0xa
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xe
	.long	.LASF32
	.byte	0xa
	.byte	0xa6
	.byte	0xe
	.long	0x196
	.uleb128 0xe
	.long	.LASF33
	.byte	0xa
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF34
	.byte	0xa
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0xb
	.long	.LASF35
	.byte	0xa
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF36
	.uleb128 0x9
	.long	.LASF38
	.byte	0x90
	.byte	0xb
	.byte	0x2e
	.byte	0x8
	.long	0x2d3
	.uleb128 0xa
	.long	.LASF39
	.byte	0xb
	.byte	0x30
	.byte	0xd
	.long	0x76
	.byte	0
	.uleb128 0xa
	.long	.LASF40
	.byte	0xb
	.byte	0x35
	.byte	0xd
	.long	0x9a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0xb
	.byte	0x3d
	.byte	0xf
	.long	0xb2
	.byte	0x10
	.uleb128 0xa
	.long	.LASF42
	.byte	0xb
	.byte	0x3e
	.byte	0xe
	.long	0xa6
	.byte	0x18
	.uleb128 0xa
	.long	.LASF43
	.byte	0xb
	.byte	0x40
	.byte	0xd
	.long	0x82
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF44
	.byte	0xb
	.byte	0x41
	.byte	0xd
	.long	0x8e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF45
	.byte	0xb
	.byte	0x43
	.byte	0x9
	.long	0x57
	.byte	0x24
	.uleb128 0xa
	.long	.LASF46
	.byte	0xb
	.byte	0x45
	.byte	0xd
	.long	0x76
	.byte	0x28
	.uleb128 0xa
	.long	.LASF47
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.long	0xbe
	.byte	0x30
	.uleb128 0xa
	.long	.LASF48
	.byte	0xb
	.byte	0x4e
	.byte	0x11
	.long	0xe4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF49
	.byte	0xb
	.byte	0x50
	.byte	0x10
	.long	0xf0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF50
	.byte	0xb
	.byte	0x5b
	.byte	0x15
	.long	0x148
	.byte	0x48
	.uleb128 0xa
	.long	.LASF51
	.byte	0xb
	.byte	0x5c
	.byte	0x15
	.long	0x148
	.byte	0x58
	.uleb128 0xa
	.long	.LASF52
	.byte	0xb
	.byte	0x5d
	.byte	0x15
	.long	0x148
	.byte	0x68
	.uleb128 0xa
	.long	.LASF53
	.byte	0xb
	.byte	0x6a
	.byte	0x17
	.long	0x2d8
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x202
	.uleb128 0xc
	.long	0xfc
	.long	0x2e8
	.uleb128 0xd
	.long	0x42
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.uleb128 0x7
	.byte	0x8
	.long	0x2e8
	.uleb128 0xc
	.long	0x191
	.long	0x2ff
	.uleb128 0xd
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x2ef
	.uleb128 0xb
	.long	.LASF54
	.byte	0xc
	.value	0x11e
	.byte	0x1a
	.long	0x2ff
	.uleb128 0xb
	.long	.LASF55
	.byte	0xc
	.value	0x11f
	.byte	0x1a
	.long	0x2ff
	.uleb128 0xb
	.long	.LASF56
	.byte	0xd
	.value	0x21f
	.byte	0xf
	.long	0x32b
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0xb
	.long	.LASF57
	.byte	0xd
	.value	0x221
	.byte	0xf
	.long	0x32b
	.uleb128 0xe
	.long	.LASF58
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0x108
	.uleb128 0xe
	.long	.LASF59
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF60
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF61
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF62
	.byte	0xf
	.byte	0x2d
	.byte	0xe
	.long	0x108
	.uleb128 0xe
	.long	.LASF63
	.byte	0xf
	.byte	0x2e
	.byte	0xe
	.long	0x108
	.uleb128 0xe
	.long	.LASF64
	.byte	0x10
	.byte	0x1
	.byte	0x14
	.long	0x18b
	.uleb128 0xe
	.long	.LASF65
	.byte	0x11
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x5
	.long	.LASF66
	.byte	0x12
	.byte	0x66
	.byte	0x16
	.long	0x6a
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x13
	.byte	0x29
	.byte	0x6
	.long	0x3c2
	.uleb128 0x11
	.long	.LASF67
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x13
	.byte	0x2a
	.byte	0x6
	.long	0x3d7
	.uleb128 0x12
	.long	.LASF68
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0xd8
	.byte	0x14
	.byte	0x31
	.byte	0x8
	.long	0x55e
	.uleb128 0xa
	.long	.LASF70
	.byte	0x14
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0x14
	.byte	0x36
	.byte	0x9
	.long	0x108
	.byte	0x8
	.uleb128 0xa
	.long	.LASF72
	.byte	0x14
	.byte	0x37
	.byte	0x9
	.long	0x108
	.byte	0x10
	.uleb128 0xa
	.long	.LASF73
	.byte	0x14
	.byte	0x38
	.byte	0x9
	.long	0x108
	.byte	0x18
	.uleb128 0xa
	.long	.LASF74
	.byte	0x14
	.byte	0x39
	.byte	0x9
	.long	0x108
	.byte	0x20
	.uleb128 0xa
	.long	.LASF75
	.byte	0x14
	.byte	0x3a
	.byte	0x9
	.long	0x108
	.byte	0x28
	.uleb128 0xa
	.long	.LASF76
	.byte	0x14
	.byte	0x3b
	.byte	0x9
	.long	0x108
	.byte	0x30
	.uleb128 0xa
	.long	.LASF77
	.byte	0x14
	.byte	0x3c
	.byte	0x9
	.long	0x108
	.byte	0x38
	.uleb128 0xa
	.long	.LASF78
	.byte	0x14
	.byte	0x3d
	.byte	0x9
	.long	0x108
	.byte	0x40
	.uleb128 0xa
	.long	.LASF79
	.byte	0x14
	.byte	0x40
	.byte	0x9
	.long	0x108
	.byte	0x48
	.uleb128 0xa
	.long	.LASF80
	.byte	0x14
	.byte	0x41
	.byte	0x9
	.long	0x108
	.byte	0x50
	.uleb128 0xa
	.long	.LASF81
	.byte	0x14
	.byte	0x42
	.byte	0x9
	.long	0x108
	.byte	0x58
	.uleb128 0xa
	.long	.LASF82
	.byte	0x14
	.byte	0x44
	.byte	0x16
	.long	0x577
	.byte	0x60
	.uleb128 0xa
	.long	.LASF83
	.byte	0x14
	.byte	0x46
	.byte	0x14
	.long	0x57d
	.byte	0x68
	.uleb128 0xa
	.long	.LASF84
	.byte	0x14
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xa
	.long	.LASF85
	.byte	0x14
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xa
	.long	.LASF86
	.byte	0x14
	.byte	0x4a
	.byte	0xb
	.long	0xbe
	.byte	0x78
	.uleb128 0xa
	.long	.LASF87
	.byte	0x14
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xa
	.long	.LASF88
	.byte	0x14
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xa
	.long	.LASF89
	.byte	0x14
	.byte	0x4f
	.byte	0x8
	.long	0x583
	.byte	0x83
	.uleb128 0xa
	.long	.LASF90
	.byte	0x14
	.byte	0x51
	.byte	0xf
	.long	0x593
	.byte	0x88
	.uleb128 0xa
	.long	.LASF91
	.byte	0x14
	.byte	0x59
	.byte	0xd
	.long	0xca
	.byte	0x90
	.uleb128 0xa
	.long	.LASF92
	.byte	0x14
	.byte	0x5b
	.byte	0x17
	.long	0x59e
	.byte	0x98
	.uleb128 0xa
	.long	.LASF93
	.byte	0x14
	.byte	0x5c
	.byte	0x19
	.long	0x5a9
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF94
	.byte	0x14
	.byte	0x5d
	.byte	0x14
	.long	0x57d
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF95
	.byte	0x14
	.byte	0x5e
	.byte	0x9
	.long	0xe2
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF96
	.byte	0x14
	.byte	0x5f
	.byte	0xa
	.long	0x137
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF97
	.byte	0x14
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF98
	.byte	0x14
	.byte	0x62
	.byte	0x8
	.long	0x5af
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF99
	.byte	0x15
	.byte	0x7
	.byte	0x19
	.long	0x3d7
	.uleb128 0x13
	.long	.LASF223
	.byte	0x14
	.byte	0x2b
	.byte	0xe
	.uleb128 0x14
	.long	.LASF100
	.uleb128 0x7
	.byte	0x8
	.long	0x572
	.uleb128 0x7
	.byte	0x8
	.long	0x3d7
	.uleb128 0xc
	.long	0x113
	.long	0x593
	.uleb128 0xd
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x56a
	.uleb128 0x14
	.long	.LASF101
	.uleb128 0x7
	.byte	0x8
	.long	0x599
	.uleb128 0x14
	.long	.LASF102
	.uleb128 0x7
	.byte	0x8
	.long	0x5a4
	.uleb128 0xc
	.long	0x113
	.long	0x5bf
	.uleb128 0xd
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF103
	.byte	0x16
	.byte	0x89
	.byte	0xe
	.long	0x5cb
	.uleb128 0x7
	.byte	0x8
	.long	0x55e
	.uleb128 0xe
	.long	.LASF104
	.byte	0x16
	.byte	0x8a
	.byte	0xe
	.long	0x5cb
	.uleb128 0xe
	.long	.LASF105
	.byte	0x16
	.byte	0x8b
	.byte	0xe
	.long	0x5cb
	.uleb128 0xe
	.long	.LASF106
	.byte	0x17
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	0x191
	.long	0x600
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.long	0x5f5
	.uleb128 0xe
	.long	.LASF107
	.byte	0x17
	.byte	0x1b
	.byte	0x1a
	.long	0x600
	.uleb128 0xe
	.long	.LASF108
	.byte	0x17
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF109
	.byte	0x17
	.byte	0x1f
	.byte	0x1a
	.long	0x600
	.uleb128 0x16
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x647
	.uleb128 0x17
	.long	.LASF110
	.sleb128 -130
	.uleb128 0x17
	.long	.LASF111
	.sleb128 -131
	.byte	0
	.uleb128 0xc
	.long	0x11a
	.long	0x652
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.long	0x647
	.uleb128 0xe
	.long	.LASF112
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x652
	.uleb128 0xe
	.long	.LASF113
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0x18b
	.uleb128 0x18
	.long	.LASF147
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x6c4
	.uleb128 0x12
	.long	.LASF114
	.byte	0
	.uleb128 0x12
	.long	.LASF115
	.byte	0x1
	.uleb128 0x12
	.long	.LASF116
	.byte	0x2
	.uleb128 0x12
	.long	.LASF117
	.byte	0x3
	.uleb128 0x12
	.long	.LASF118
	.byte	0x4
	.uleb128 0x12
	.long	.LASF119
	.byte	0x5
	.uleb128 0x12
	.long	.LASF120
	.byte	0x6
	.uleb128 0x12
	.long	.LASF121
	.byte	0x7
	.uleb128 0x12
	.long	.LASF122
	.byte	0x8
	.uleb128 0x12
	.long	.LASF123
	.byte	0x9
	.uleb128 0x12
	.long	.LASF124
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x66f
	.uleb128 0xb
	.long	.LASF125
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x600
	.uleb128 0xc
	.long	0x6c4
	.long	0x6e1
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.long	0x6d6
	.uleb128 0xb
	.long	.LASF126
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x6e1
	.uleb128 0xe
	.long	.LASF127
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x2e9
	.uleb128 0xe
	.long	.LASF128
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0xe
	.long	.LASF129
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1c
	.byte	0x2d
	.byte	0xe
	.long	0x74a
	.uleb128 0x12
	.long	.LASF130
	.byte	0
	.uleb128 0x12
	.long	.LASF131
	.byte	0x2
	.uleb128 0x12
	.long	.LASF132
	.byte	0x5
	.uleb128 0x12
	.long	.LASF133
	.byte	0x4
	.uleb128 0x12
	.long	.LASF134
	.byte	0x3
	.uleb128 0x12
	.long	.LASF135
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF136
	.byte	0x20
	.byte	0x1d
	.byte	0x32
	.byte	0x8
	.long	0x78c
	.uleb128 0xa
	.long	.LASF137
	.byte	0x1d
	.byte	0x34
	.byte	0xf
	.long	0x18b
	.byte	0
	.uleb128 0xa
	.long	.LASF138
	.byte	0x1d
	.byte	0x37
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0xa
	.long	.LASF139
	.byte	0x1d
	.byte	0x38
	.byte	0x8
	.long	0x791
	.byte	0x10
	.uleb128 0x19
	.string	"val"
	.byte	0x1d
	.byte	0x39
	.byte	0x7
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x74a
	.uleb128 0x7
	.byte	0x8
	.long	0x57
	.uleb128 0x9
	.long	.LASF140
	.byte	0x18
	.byte	0x1e
	.byte	0x1a
	.byte	0x8
	.long	0x7cc
	.uleb128 0xa
	.long	.LASF141
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.long	0x137
	.byte	0
	.uleb128 0xa
	.long	.LASF142
	.byte	0x1e
	.byte	0x1d
	.byte	0xa
	.long	0x137
	.byte	0x8
	.uleb128 0xa
	.long	.LASF143
	.byte	0x1e
	.byte	0x1e
	.byte	0x9
	.long	0x108
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x797
	.uleb128 0x14
	.long	.LASF144
	.uleb128 0xe
	.long	.LASF145
	.byte	0x1f
	.byte	0x19
	.byte	0x1f
	.long	0x7d1
	.uleb128 0x5
	.long	.LASF146
	.byte	0x2
	.byte	0x1e
	.byte	0x13
	.long	0x39e
	.uleb128 0x8
	.long	0x7e2
	.uleb128 0x18
	.long	.LASF148
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x20
	.byte	0x19
	.byte	0x6
	.long	0x824
	.uleb128 0x12
	.long	.LASF149
	.byte	0
	.uleb128 0x12
	.long	.LASF150
	.byte	0x1
	.uleb128 0x12
	.long	.LASF151
	.byte	0x2
	.uleb128 0x12
	.long	.LASF152
	.byte	0x3
	.uleb128 0x12
	.long	.LASF153
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF148
	.byte	0x20
	.byte	0x26
	.byte	0x1b
	.long	0x7f3
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x3
	.byte	0x2c
	.byte	0x6
	.long	0x846
	.uleb128 0x1a
	.long	.LASF154
	.value	0x400
	.byte	0
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x3
	.byte	0x34
	.byte	0x6
	.long	0x85e
	.uleb128 0x11
	.long	.LASF155
	.long	0x800000
	.byte	0
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x3
	.byte	0x61
	.byte	0x1
	.long	0x873
	.uleb128 0x12
	.long	.LASF156
	.byte	0x80
	.byte	0
	.uleb128 0xc
	.long	0x78c
	.long	0x883
	.uleb128 0xd
	.long	0x42
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.long	0x873
	.uleb128 0x1b
	.long	.LASF159
	.byte	0x3
	.byte	0x65
	.byte	0x1c
	.long	0x883
	.uleb128 0x9
	.byte	0x3
	.quad	long_opts
	.uleb128 0x1c
	.long	.LASF205
	.byte	0x3
	.value	0x174
	.byte	0x1
	.long	0x57
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0xb9d
	.uleb128 0x1d
	.long	.LASF157
	.byte	0x3
	.value	0x174
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x1d
	.long	.LASF158
	.byte	0x3
	.value	0x174
	.byte	0x18
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x3
	.value	0x176
	.byte	0x8
	.long	0xb9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -198
	.uleb128 0x1e
	.long	.LASF161
	.byte	0x3
	.value	0x177
	.byte	0x8
	.long	0xb9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -197
	.uleb128 0x1e
	.long	.LASF162
	.byte	0x3
	.value	0x178
	.byte	0xa
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1e
	.long	.LASF163
	.byte	0x3
	.value	0x179
	.byte	0xa
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.long	.LASF164
	.byte	0x3
	.value	0x17a
	.byte	0xa
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x3
	.value	0x17b
	.byte	0xf
	.long	0x18b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1e
	.long	.LASF166
	.byte	0x3
	.value	0x17c
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x3
	.value	0x17d
	.byte	0x8
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x1e
	.long	.LASF168
	.byte	0x3
	.value	0x17e
	.byte	0xa
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF169
	.byte	0x3
	.value	0x17f
	.byte	0x8
	.long	0xb9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -195
	.uleb128 0x1e
	.long	.LASF170
	.byte	0x3
	.value	0x180
	.byte	0x8
	.long	0xb9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -194
	.uleb128 0x1e
	.long	.LASF171
	.byte	0x3
	.value	0x182
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x3
	.value	0x183
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x3
	.value	0x184
	.byte	0xa
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x3
	.value	0x185
	.byte	0xa
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x3
	.value	0x186
	.byte	0xa
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.long	.LASF176
	.byte	0x3
	.value	0x187
	.byte	0x16
	.long	0xba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1e
	.long	.LASF177
	.byte	0x3
	.value	0x188
	.byte	0x1a
	.long	0xbaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF178
	.byte	0x3
	.value	0x189
	.byte	0xb
	.long	0xbb5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.string	"i"
	.byte	0x3
	.value	0x18a
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x3
	.value	0x219
	.byte	0xa
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0xaac
	.uleb128 0x1f
	.string	"p"
	.byte	0x3
	.value	0x19d
	.byte	0x11
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF180
	.byte	0x3
	.value	0x19e
	.byte	0x17
	.long	0x18b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF181
	.byte	0x3
	.value	0x19f
	.byte	0x10
	.long	0xb9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -193
	.uleb128 0x21
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x21
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0
	.uleb128 0x20
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0xaf3
	.uleb128 0x1e
	.long	.LASF182
	.byte	0x3
	.value	0x1bb
	.byte	0x15
	.long	0x39e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.string	"e"
	.byte	0x3
	.value	0x1bc
	.byte	0x18
	.long	0x824
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x21
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0
	.uleb128 0x21
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x21
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x21
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x21
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x21
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x21
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x21
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x21
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x22
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x1f
	.string	"j"
	.byte	0x3
	.value	0x260
	.byte	0xe
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF183
	.uleb128 0x7
	.byte	0x8
	.long	0x797
	.uleb128 0x14
	.long	.LASF177
	.uleb128 0x7
	.byte	0x8
	.long	0xbaa
	.uleb128 0x7
	.byte	0x8
	.long	0x137
	.uleb128 0x23
	.long	.LASF186
	.byte	0x3
	.value	0x164
	.byte	0x1
	.long	0x57
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xc7d
	.uleb128 0x24
	.string	"s"
	.byte	0x3
	.value	0x164
	.byte	0x2c
	.long	0xbaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF184
	.byte	0x3
	.value	0x164
	.byte	0x36
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF185
	.byte	0x3
	.value	0x165
	.byte	0x22
	.long	0xc7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x3
	.value	0x165
	.byte	0x30
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x1f
	.string	"i"
	.byte	0x3
	.value	0x167
	.byte	0xf
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x1f
	.string	"j"
	.byte	0x3
	.value	0x169
	.byte	0x15
	.long	0x7ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"p"
	.byte	0x3
	.value	0x16a
	.byte	0x14
	.long	0xc7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"len"
	.byte	0x3
	.value	0x16b
	.byte	0xe
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x10e
	.uleb128 0x23
	.long	.LASF187
	.byte	0x3
	.value	0x151
	.byte	0x1
	.long	0x57
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xd48
	.uleb128 0x24
	.string	"s"
	.byte	0x3
	.value	0x151
	.byte	0x2e
	.long	0xbaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF184
	.byte	0x3
	.value	0x151
	.byte	0x38
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x3
	.value	0x152
	.byte	0x1e
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF163
	.byte	0x3
	.value	0x152
	.byte	0x2f
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF167
	.byte	0x3
	.value	0x152
	.byte	0x3e
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1e
	.long	.LASF188
	.byte	0x3
	.value	0x154
	.byte	0x11
	.long	0x7ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x1f
	.string	"i"
	.byte	0x3
	.value	0x156
	.byte	0xf
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x1f
	.string	"j"
	.byte	0x3
	.value	0x158
	.byte	0x19
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF189
	.byte	0x3
	.value	0x141
	.byte	0x1
	.long	0x57
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xdec
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x3
	.value	0x141
	.byte	0x20
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x3
	.value	0x141
	.byte	0x30
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF178
	.byte	0x3
	.value	0x142
	.byte	0x27
	.long	0xdec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF167
	.byte	0x3
	.value	0x142
	.byte	0x39
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x1f
	.string	"i"
	.byte	0x3
	.value	0x144
	.byte	0xf
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x1f
	.string	"n"
	.byte	0x3
	.value	0x146
	.byte	0x19
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x143
	.uleb128 0x23
	.long	.LASF190
	.byte	0x3
	.value	0x130
	.byte	0x1
	.long	0x57
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xe97
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x3
	.value	0x130
	.byte	0x1e
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF175
	.byte	0x3
	.value	0x130
	.byte	0x34
	.long	0xc7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF178
	.byte	0x3
	.value	0x131
	.byte	0x25
	.long	0xdec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1f
	.string	"i"
	.byte	0x3
	.value	0x133
	.byte	0xf
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1f
	.string	"p"
	.byte	0x3
	.value	0x135
	.byte	0x14
	.long	0xc7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"len"
	.byte	0x3
	.value	0x136
	.byte	0xe
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF191
	.byte	0x3
	.value	0x104
	.byte	0x1
	.long	0x137
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xf80
	.uleb128 0x24
	.string	"in"
	.byte	0x3
	.value	0x104
	.byte	0x13
	.long	0x5cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.long	.LASF167
	.byte	0x3
	.value	0x104
	.byte	0x1c
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1d
	.long	.LASF192
	.byte	0x3
	.value	0x104
	.byte	0x2d
	.long	0xf80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1f
	.string	"p"
	.byte	0x3
	.value	0x106
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.string	"buf"
	.byte	0x3
	.value	0x107
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x3
	.value	0x108
	.byte	0xa
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.string	"lim"
	.byte	0x3
	.value	0x109
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x3
	.value	0x10a
	.byte	0xa
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x3
	.value	0x10b
	.byte	0xa
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x22
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1f
	.string	"i"
	.byte	0x3
	.value	0x125
	.byte	0xf
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x32b
	.uleb128 0x25
	.long	.LASF194
	.byte	0x3
	.byte	0xf0
	.byte	0x1
	.long	0x57
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x1014
	.uleb128 0x26
	.long	.LASF174
	.byte	0x3
	.byte	0xf0
	.byte	0x29
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF185
	.byte	0x3
	.byte	0xf0
	.byte	0x45
	.long	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF178
	.byte	0x3
	.byte	0xf1
	.byte	0x30
	.long	0xdec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x27
	.string	"i"
	.byte	0x3
	.byte	0xf3
	.byte	0xf
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x27
	.string	"p"
	.byte	0x3
	.byte	0xf5
	.byte	0x20
	.long	0x1014
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x7cc
	.uleb128 0x25
	.long	.LASF195
	.byte	0x3
	.byte	0xaf
	.byte	0x1
	.long	0x137
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x1133
	.uleb128 0x28
	.string	"in"
	.byte	0x3
	.byte	0xaf
	.byte	0x26
	.long	0x5cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF167
	.byte	0x3
	.byte	0xaf
	.byte	0x2f
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.string	"k"
	.byte	0x3
	.byte	0xaf
	.byte	0x3f
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.string	"s"
	.byte	0x3
	.byte	0xb0
	.byte	0x37
	.long	0xbaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF196
	.byte	0x3
	.byte	0xb1
	.byte	0x34
	.long	0x1133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1b
	.long	.LASF174
	.byte	0x3
	.byte	0xb3
	.byte	0xb
	.long	0x7e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF197
	.byte	0x3
	.byte	0xb4
	.byte	0xa
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF175
	.byte	0x3
	.byte	0xb5
	.byte	0x16
	.long	0xba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF198
	.byte	0x3
	.byte	0xb6
	.byte	0x16
	.long	0xba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1121
	.uleb128 0x1b
	.long	.LASF199
	.byte	0x3
	.byte	0xce
	.byte	0x19
	.long	0x797
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x110f
	.uleb128 0x27
	.string	"j"
	.byte	0x3
	.byte	0xdc
	.byte	0x13
	.long	0x7e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xba4
	.uleb128 0x25
	.long	.LASF200
	.byte	0x3
	.byte	0x96
	.byte	0x1
	.long	0x11f
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x118c
	.uleb128 0x1b
	.long	.LASF201
	.byte	0x3
	.byte	0x98
	.byte	0x9
	.long	0x11f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1b
	.long	.LASF202
	.byte	0x3
	.byte	0x9a
	.byte	0xf
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1b
	.long	.LASF203
	.byte	0x3
	.byte	0xa2
	.byte	0x9
	.long	0x11f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x25
	.long	.LASF204
	.byte	0x3
	.byte	0x8d
	.byte	0x1
	.long	0x108
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e7
	.uleb128 0x26
	.long	.LASF175
	.byte	0x3
	.byte	0x8d
	.byte	0x12
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF167
	.byte	0x3
	.byte	0x8d
	.byte	0x1d
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"n"
	.byte	0x3
	.byte	0x8d
	.byte	0x2d
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"p"
	.byte	0x3
	.byte	0x8f
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF211
	.byte	0x3
	.byte	0x74
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x127c
	.uleb128 0x26
	.long	.LASF173
	.byte	0x3
	.byte	0x74
	.byte	0x19
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF172
	.byte	0x3
	.byte	0x74
	.byte	0x26
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF167
	.byte	0x3
	.byte	0x74
	.byte	0x37
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"p"
	.byte	0x3
	.byte	0x76
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF141
	.byte	0x3
	.byte	0x77
	.byte	0xa
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"i"
	.byte	0x3
	.byte	0x78
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x27
	.string	"p1"
	.byte	0x3
	.byte	0x80
	.byte	0xd
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x3
	.byte	0x38
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x12aa
	.uleb128 0x26
	.long	.LASF207
	.byte	0x3
	.byte	0x38
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.long	.LASF208
	.byte	0x2
	.byte	0x2c
	.byte	0x1
	.long	0x7e2
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x12e9
	.uleb128 0x28
	.string	"s"
	.byte	0x2
	.byte	0x2c
	.byte	0x28
	.long	0xbaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF209
	.byte	0x2
	.byte	0x2c
	.byte	0x33
	.long	0x7e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF210
	.byte	0x1
	.value	0x2c1
	.byte	0x1
	.long	0xb9d
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x131c
	.uleb128 0x24
	.string	"sb"
	.byte	0x1
	.value	0x2c1
	.byte	0x24
	.long	0x131c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2d3
	.uleb128 0x2c
	.long	.LASF212
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x13c7
	.uleb128 0x1d
	.long	.LASF213
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x18b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.long	.LASF214
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x137d
	.uleb128 0x2e
	.long	.LASF213
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x18b
	.byte	0
	.uleb128 0x2e
	.long	.LASF215
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x18b
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x1352
	.uleb128 0x1e
	.long	.LASF214
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x13d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF215
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x18b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF216
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x13dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF217
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x18b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xc
	.long	0x137d
	.long	0x13d7
	.uleb128 0xd
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x13c7
	.uleb128 0x7
	.byte	0x8
	.long	0x137d
	.uleb128 0x2f
	.long	.LASF218
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF219
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1d
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
.LASF195:
	.string	"read_input_reservoir_sampling"
.LASF14:
	.string	"__off_t"
.LASF163:
	.string	"hi_input"
.LASF131:
	.string	"FADVISE_SEQUENTIAL"
.LASF122:
	.string	"locale_quoting_style"
.LASF83:
	.string	"_chain"
.LASF52:
	.string	"st_ctim"
.LASF200:
	.string	"input_size"
.LASF111:
	.string	"GETOPT_VERSION_CHAR"
.LASF147:
	.string	"quoting_style"
.LASF23:
	.string	"size_t"
.LASF68:
	.string	"LOG10_TIMESPEC_HZ"
.LASF89:
	.string	"_shortbuf"
.LASF116:
	.string	"shell_always_quoting_style"
.LASF115:
	.string	"shell_quoting_style"
.LASF110:
	.string	"GETOPT_HELP_CHAR"
.LASF77:
	.string	"_IO_buf_base"
.LASF142:
	.string	"length"
.LASF181:
	.string	"invalid"
.LASF177:
	.string	"randint_source"
.LASF150:
	.string	"LONGINT_OVERFLOW"
.LASF204:
	.string	"next_line"
.LASF104:
	.string	"stdout"
.LASF151:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF10:
	.string	"__gid_t"
.LASF38:
	.string	"stat"
.LASF27:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF126:
	.string	"quoting_style_vals"
.LASF174:
	.string	"n_lines"
.LASF66:
	.string	"uintmax_t"
.LASF213:
	.string	"program"
.LASF121:
	.string	"escape_quoting_style"
.LASF12:
	.string	"__mode_t"
.LASF141:
	.string	"size"
.LASF26:
	.string	"long long unsigned int"
.LASF114:
	.string	"literal_quoting_style"
.LASF84:
	.string	"_fileno"
.LASF72:
	.string	"_IO_read_end"
.LASF223:
	.string	"_IO_lock_t"
.LASF162:
	.string	"lo_input"
.LASF31:
	.string	"__timezone"
.LASF18:
	.string	"__blkcnt_t"
.LASF55:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF28:
	.string	"_gl_cxxalias_dummy"
.LASF70:
	.string	"_flags"
.LASF219:
	.string	"emit_stdin_note"
.LASF93:
	.string	"_wide_data"
.LASF78:
	.string	"_IO_buf_end"
.LASF87:
	.string	"_cur_column"
.LASF63:
	.string	"program_invocation_short_name"
.LASF119:
	.string	"c_quoting_style"
.LASF101:
	.string	"_IO_codecvt"
.LASF109:
	.string	"_sys_errlist"
.LASF62:
	.string	"program_invocation_name"
.LASF86:
	.string	"_old_offset"
.LASF91:
	.string	"_offset"
.LASF184:
	.string	"count"
.LASF175:
	.string	"line"
.LASF67:
	.string	"TIMESPEC_HZ"
.LASF45:
	.string	"__pad0"
.LASF118:
	.string	"shell_escape_always_quoting_style"
.LASF190:
	.string	"write_permuted_lines"
.LASF34:
	.string	"timezone"
.LASF199:
	.string	"dummy"
.LASF49:
	.string	"st_blocks"
.LASF113:
	.string	"program_name"
.LASF43:
	.string	"st_uid"
.LASF100:
	.string	"_IO_marker"
.LASF103:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF95:
	.string	"_freeres_buf"
.LASF3:
	.string	"long unsigned int"
.LASF160:
	.string	"echo"
.LASF75:
	.string	"_IO_write_ptr"
.LASF21:
	.string	"off_t"
.LASF159:
	.string	"long_opts"
.LASF106:
	.string	"sys_nerr"
.LASF178:
	.string	"permutation"
.LASF137:
	.string	"name"
.LASF196:
	.string	"out_rsrv"
.LASF220:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF171:
	.string	"optc"
.LASF1:
	.string	"short unsigned int"
.LASF64:
	.string	"Version"
.LASF129:
	.string	"error_one_per_line"
.LASF185:
	.string	"lines"
.LASF167:
	.string	"eolbyte"
.LASF79:
	.string	"_IO_save_base"
.LASF164:
	.string	"head_lines"
.LASF13:
	.string	"__nlink_t"
.LASF57:
	.string	"environ"
.LASF90:
	.string	"_lock"
.LASF85:
	.string	"_flags2"
.LASF97:
	.string	"_mode"
.LASF148:
	.string	"strtol_error"
.LASF191:
	.string	"read_input"
.LASF47:
	.string	"st_size"
.LASF112:
	.string	"version_etc_copyright"
.LASF42:
	.string	"st_mode"
.LASF92:
	.string	"_codecvt"
.LASF50:
	.string	"st_atim"
.LASF58:
	.string	"optarg"
.LASF25:
	.string	"tv_nsec"
.LASF210:
	.string	"usable_st_size"
.LASF35:
	.string	"getdate_err"
.LASF8:
	.string	"__dev_t"
.LASF59:
	.string	"optind"
.LASF19:
	.string	"__syscall_slong_t"
.LASF140:
	.string	"linebuffer"
.LASF71:
	.string	"_IO_read_ptr"
.LASF208:
	.string	"randint_choose"
.LASF161:
	.string	"input_range"
.LASF15:
	.string	"__off64_t"
.LASF173:
	.string	"operand"
.LASF211:
	.string	"input_from_argv"
.LASF202:
	.string	"stat_buf"
.LASF69:
	.string	"_IO_FILE"
.LASF127:
	.string	"error_print_progname"
.LASF17:
	.string	"__blksize_t"
.LASF182:
	.string	"argval"
.LASF216:
	.string	"map_prog"
.LASF56:
	.string	"__environ"
.LASF22:
	.string	"time_t"
.LASF188:
	.string	"range"
.LASF193:
	.string	"used"
.LASF169:
	.string	"use_reservoir_sampling"
.LASF217:
	.string	"lc_messages"
.LASF82:
	.string	"_markers"
.LASF165:
	.string	"outfile"
.LASF149:
	.string	"LONGINT_OK"
.LASF53:
	.string	"__glibc_reserved"
.LASF41:
	.string	"st_nlink"
.LASF120:
	.string	"c_maybe_quoting_style"
.LASF183:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF192:
	.string	"pline"
.LASF157:
	.string	"argc"
.LASF215:
	.string	"node"
.LASF40:
	.string	"st_ino"
.LASF5:
	.string	"short int"
.LASF198:
	.string	"rsrv"
.LASF136:
	.string	"option"
.LASF48:
	.string	"st_blksize"
.LASF145:
	.string	"quote_quoting_options"
.LASF168:
	.string	"input_lines"
.LASF139:
	.string	"flag"
.LASF108:
	.string	"_sys_nerr"
.LASF37:
	.string	"timespec"
.LASF88:
	.string	"_vtable_offset"
.LASF32:
	.string	"tzname"
.LASF99:
	.string	"FILE"
.LASF65:
	.string	"exit_failure"
.LASF180:
	.string	"hi_optarg"
.LASF135:
	.string	"FADVISE_RANDOM"
.LASF187:
	.string	"write_random_numbers"
.LASF117:
	.string	"shell_escape_quoting_style"
.LASF156:
	.string	"RANDOM_SOURCE_OPTION"
.LASF11:
	.string	"__ino_t"
.LASF132:
	.string	"FADVISE_NOREUSE"
.LASF125:
	.string	"quoting_style_args"
.LASF61:
	.string	"optopt"
.LASF179:
	.string	"ahead_lines"
.LASF33:
	.string	"daylight"
.LASF189:
	.string	"write_permuted_numbers"
.LASF46:
	.string	"st_rdev"
.LASF36:
	.string	"long double"
.LASF170:
	.string	"repeat"
.LASF20:
	.string	"char"
.LASF133:
	.string	"FADVISE_DONTNEED"
.LASF155:
	.string	"RESERVOIR_MIN_INPUT"
.LASF24:
	.string	"tv_sec"
.LASF16:
	.string	"__time_t"
.LASF123:
	.string	"clocale_quoting_style"
.LASF194:
	.string	"write_permuted_output_reservoir"
.LASF186:
	.string	"write_random_lines"
.LASF143:
	.string	"buffer"
.LASF60:
	.string	"opterr"
.LASF9:
	.string	"__uid_t"
.LASF7:
	.string	"__uintmax_t"
.LASF130:
	.string	"FADVISE_NORMAL"
.LASF144:
	.string	"quoting_options"
.LASF73:
	.string	"_IO_read_base"
.LASF81:
	.string	"_IO_save_end"
.LASF54:
	.string	"_sys_siglist"
.LASF214:
	.string	"infomap"
.LASF44:
	.string	"st_gid"
.LASF138:
	.string	"has_arg"
.LASF206:
	.string	"usage"
.LASF96:
	.string	"__pad5"
.LASF76:
	.string	"_IO_write_end"
.LASF98:
	.string	"_unused2"
.LASF105:
	.string	"stderr"
.LASF166:
	.string	"random_source"
.LASF158:
	.string	"argv"
.LASF30:
	.string	"__daylight"
.LASF207:
	.string	"status"
.LASF222:
	.string	"/root/coreutils"
.LASF128:
	.string	"error_message_count"
.LASF39:
	.string	"st_dev"
.LASF221:
	.string	"src/shuf.c"
.LASF124:
	.string	"custom_quoting_style"
.LASF152:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF80:
	.string	"_IO_backup_base"
.LASF51:
	.string	"st_mtim"
.LASF146:
	.string	"randint"
.LASF176:
	.string	"reservoir"
.LASF107:
	.string	"sys_errlist"
.LASF197:
	.string	"n_alloc_lines"
.LASF94:
	.string	"_freeres_list"
.LASF172:
	.string	"n_operands"
.LASF154:
	.string	"RESERVOIR_LINES_INCREMENT"
.LASF102:
	.string	"_IO_wide_data"
.LASF134:
	.string	"FADVISE_WILLNEED"
.LASF153:
	.string	"LONGINT_INVALID"
.LASF218:
	.string	"emit_mandatory_arg_note"
.LASF203:
	.string	"input_offset"
.LASF29:
	.string	"__tzname"
.LASF205:
	.string	"main"
.LASF74:
	.string	"_IO_write_base"
.LASF212:
	.string	"emit_ancillary_info"
.LASF209:
	.string	"choices"
.LASF201:
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
