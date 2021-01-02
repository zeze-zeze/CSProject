	.file	"fmt.c"
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
	.local	crown
	.comm	crown,1,1
	.local	tagged
	.comm	tagged,1,1
	.local	split
	.comm	split,1,1
	.local	uniform
	.comm	uniform,1,1
	.local	prefix
	.comm	prefix,8,8
	.local	max_width
	.comm	max_width,4,4
	.local	prefix_full_length
	.comm	prefix_full_length,4,4
	.local	prefix_lead_space
	.comm	prefix_lead_space,4,4
	.local	prefix_length
	.comm	prefix_length,4,4
	.local	goal_width
	.comm	goal_width,4,4
	.local	in_column
	.comm	in_column,4,4
	.local	out_column
	.comm	out_column,4,4
	.local	parabuf
	.comm	parabuf,5000,32
	.local	wptr
	.comm	wptr,8,8
	.local	unused_word_type
	.comm	unused_word_type,40000,32
	.local	word_limit
	.comm	word_limit,8,8
	.local	tabs
	.comm	tabs,1,1
	.local	prefix_indent
	.comm	prefix_indent,4,4
	.local	first_indent
	.comm	first_indent,4,4
	.local	other_indent
	.comm	other_indent,4,4
	.local	next_char
	.comm	next_char,4,4
	.local	next_prefix_indent
	.comm	next_prefix_indent,4,4
	.local	last_line_length
	.comm	last_line_length,4,4
	.section	.rodata
	.align 8
.LC20:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC21:
	.string	"Usage: %s [-WIDTH] [OPTION]... [FILE]...\n"
	.align 8
.LC22:
	.string	"Reformat each paragraph in the FILE(s), writing to standard output.\nThe option -WIDTH is an abbreviated form of --width=DIGITS.\n"
	.align 8
.LC23:
	.ascii	"  -c, --crown-margin "
	.string	"       preserve indentation of first two lines\n  -p, --prefix=STRING       reformat only lines beginning with STRING,\n                              reattaching the prefix to reformatted lines\n  -s, --split-only          split long lines, but do not refill\n"
	.align 8
.LC24:
	.ascii	"  -t, --tagged-paragraph    i"
	.string	"ndentation of first line different from second\n  -u, --uniform-spacing     one space between words, two after sentences\n  -w, --width=WIDTH         maximum line width (default of 75 columns)\n  -g, --goal=WIDTH          goal width (default of 93% of width)\n"
	.align 8
.LC25:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC26:
	.string	"      --version  output version information and exit\n"
.LC27:
	.string	"fmt"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/fmt.c"
	.loc 2 264 1 is_stmt 1
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
	.loc 2 265 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 266 5
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
	jmp	.L14
.L13:
	.loc 2 269 7
	movq	program_name(%rip), %rbx
	.loc 2 269 15
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	.loc 2 269 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 270 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 275 7
	call	emit_stdin_note
	.loc 2 276 7
	call	emit_mandatory_arg_note
	.loc 2 278 7
	movq	stdout(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 287 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 293 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 294 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 295 7
	leaq	.LC27(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 297 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC28:
	.string	"crown-margin"
.LC29:
	.string	"prefix"
.LC30:
	.string	"split-only"
.LC31:
	.string	"tagged-paragraph"
.LC32:
	.string	"uniform-spacing"
.LC33:
	.string	"width"
.LC34:
	.string	"goal"
.LC35:
	.string	"help"
.LC36:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 320
long_options:
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC29
	.long	1
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC33
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC34
	.long	1
	.zero	4
	.quad	0
	.long	103
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
	.section	.rodata
.LC37:
	.string	"/usr/local/share/locale"
	.align 8
.LC38:
	.string	"invalid option -- %c; -WIDTH is recognized only when it is the first\noption; use -w N instead"
.LC39:
	.string	"Ross Paterson"
.LC40:
	.string	"0123456789cstuw:p:g:"
.LC41:
	.string	"invalid width"
.LC42:
	.string	"-"
.LC43:
	.string	"r"
.LC44:
	.string	"%s"
.LC45:
	.string	"cannot open %s for reading"
	.text
	.globl	main
	.type	main, @function
main:
.LFB47:
	.loc 2 318 1
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
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 320 8
	movb	$1, -53(%rbp)
	.loc 2 321 15
	movq	$0, -48(%rbp)
	.loc 2 322 15
	movq	$0, -40(%rbp)
	.loc 2 325 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 326 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 327 3
	leaq	.LC37(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 328 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 330 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 332 36
	movb	$0, uniform(%rip)
	.loc 2 332 26
	movzbl	uniform(%rip), %eax
	movb	%al, split(%rip)
	.loc 2 332 18
	movzbl	split(%rip), %eax
	movb	%al, tagged(%rip)
	.loc 2 332 9
	movzbl	tagged(%rip), %eax
	movb	%al, crown(%rip)
	.loc 2 333 13
	movl	$75, max_width(%rip)
	.loc 2 334 10
	leaq	.LC18(%rip), %rax
	movq	%rax, prefix(%rip)
	.loc 2 335 58
	movl	$0, prefix_full_length(%rip)
	.loc 2 335 37
	movl	prefix_full_length(%rip), %eax
	movl	%eax, prefix_lead_space(%rip)
	.loc 2 335 17
	movl	prefix_lead_space(%rip), %eax
	movl	%eax, prefix_length(%rip)
	.loc 2 337 6
	cmpl	$1, -68(%rbp)
	jle	.L17
	.loc 2 337 23 discriminator 1
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	.loc 2 337 26 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 337 16 discriminator 1
	cmpb	$45, %al
	jne	.L17
	.loc 2 337 40 discriminator 2
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 337 37 discriminator 2
	cmpl	$9, %eax
	ja	.L17
	.loc 2 340 30
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	.loc 2 340 24
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	.loc 2 343 11
	movq	-80(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 2 343 21
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 343 15
	movq	%rax, (%rdx)
	.loc 2 344 11
	addq	$8, -80(%rbp)
	.loc 2 345 11
	subl	$1, -68(%rbp)
	.loc 2 348 9
	jmp	.L17
.L31:
	.loc 2 351 5
	cmpl	$119, -52(%rbp)
	jg	.L18
	cmpl	$99, -52(%rbp)
	jge	.L19
	cmpl	$-131, -52(%rbp)
	je	.L20
	cmpl	$-130, -52(%rbp)
	je	.L21
	jmp	.L18
.L19:
	movl	-52(%rbp), %eax
	subl	$99, %eax
	cmpl	$20, %eax
	ja	.L18
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L23(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L23(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L23:
	.long	.L29-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L28-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L27-.L23
	.long	.L18-.L23
	.long	.L18-.L23
	.long	.L26-.L23
	.long	.L25-.L23
	.long	.L24-.L23
	.long	.L18-.L23
	.long	.L22-.L23
	.text
.L18:
	.loc 2 354 13
	movl	-52(%rbp), %eax
	subl	$48, %eax
	.loc 2 354 12
	cmpl	$9, %eax
	ja	.L30
	.loc 2 355 24
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 355 11
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L30:
	.loc 2 358 9
	movl	$1, %edi
	call	usage
.L29:
	.loc 2 361 15
	movb	$1, crown(%rip)
	.loc 2 362 9
	jmp	.L17
.L26:
	.loc 2 365 15
	movb	$1, split(%rip)
	.loc 2 366 9
	jmp	.L17
.L25:
	.loc 2 369 16
	movb	$1, tagged(%rip)
	.loc 2 370 9
	jmp	.L17
.L24:
	.loc 2 373 17
	movb	$1, uniform(%rip)
	.loc 2 374 9
	jmp	.L17
.L22:
	.loc 2 377 26
	movq	optarg(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 378 9
	jmp	.L17
.L28:
	.loc 2 381 27
	movq	optarg(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 382 9
	jmp	.L17
.L27:
	.loc 2 385 9
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	set_prefix
	.loc 2 386 9
	jmp	.L17
.L21:
	.loc 2 388 7
	movl	$0, %edi
	call	usage
.L20:
	.loc 2 390 7
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC39(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L17:
	.loc 2 348 21
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -52(%rbp)
	.loc 2 348 9
	cmpl	$-1, -52(%rbp)
	jne	.L31
	.loc 2 394 6
	cmpq	$0, -48(%rbp)
	je	.L32
	.loc 2 399 31
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 398 19
	movq	-48(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movl	$2500, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 2 398 17
	movl	%eax, max_width(%rip)
.L32:
	.loc 2 402 6
	cmpq	$0, -40(%rbp)
	je	.L33
	.loc 2 406 32
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 2 405 20
	movl	max_width(%rip), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	leaq	.LC18(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 2 405 18
	movl	%eax, goal_width(%rip)
	.loc 2 407 10
	cmpq	$0, -48(%rbp)
	jne	.L34
	.loc 2 408 32
	movl	goal_width(%rip), %eax
	addl	$10, %eax
	.loc 2 408 19
	movl	%eax, max_width(%rip)
	jmp	.L34
.L33:
	.loc 2 412 30
	movl	max_width(%rip), %eax
	imull	$187, %eax, %eax
	.loc 2 412 57
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$6, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 412 18
	movl	%eax, goal_width(%rip)
.L34:
	.loc 2 415 14
	movl	optind(%rip), %eax
	.loc 2 415 6
	cmpl	%eax, -68(%rbp)
	jne	.L37
	.loc 2 416 5
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fmt
	jmp	.L36
.L41:
.LBB2:
	.loc 2 421 28
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 421 17
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 422 15
	movq	-32(%rbp), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 422 14
	testl	%eax, %eax
	jne	.L38
	.loc 2 423 13
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fmt
	jmp	.L39
.L38:
.LBB3:
	.loc 2 427 27
	movq	-32(%rbp), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	.loc 2 428 18
	cmpq	$0, -24(%rbp)
	je	.L40
	.loc 2 430 19
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fmt
	.loc 2 431 23
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 431 22
	cmpl	$-1, %eax
	jne	.L39
	.loc 2 433 23
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 433 33
	call	__errno_location@PLT
	.loc 2 433 23
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC44(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 434 26
	movb	$0, -53(%rbp)
	jmp	.L39
.L40:
	.loc 2 439 19
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 439 36
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 439 29
	call	__errno_location@PLT
	.loc 2 439 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 441 22
	movb	$0, -53(%rbp)
.L39:
.LBE3:
.LBE2:
	.loc 2 419 35
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L37:
	.loc 2 419 21 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 419 7 discriminator 1
	cmpl	%eax, -68(%rbp)
	jg	.L41
.L36:
	.loc 2 447 28
	movzbl	-53(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 448 1
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	main, .-main
	.type	set_prefix, @function
set_prefix:
.LFB48:
	.loc 2 455 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 458 21
	movl	$0, prefix_lead_space(%rip)
	.loc 2 459 9
	jmp	.L44
.L45:
	.loc 2 461 24
	movl	prefix_lead_space(%rip), %eax
	addl	$1, %eax
	movl	%eax, prefix_lead_space(%rip)
	.loc 2 462 8
	addq	$1, -24(%rbp)
.L44:
	.loc 2 459 10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 459 9
	cmpb	$32, %al
	je	.L45
	.loc 2 464 10
	movq	-24(%rbp), %rax
	movq	%rax, prefix(%rip)
	.loc 2 465 24
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 465 22
	movl	%eax, prefix_full_length(%rip)
	.loc 2 466 9
	movl	prefix_full_length(%rip), %eax
	movslq	%eax, %rdx
	.loc 2 466 5
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 467 9
	jmp	.L46
.L48:
	.loc 2 468 6
	subq	$1, -8(%rbp)
.L46:
	.loc 2 467 9
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L47
	.loc 2 467 20 discriminator 1
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 467 16 discriminator 1
	cmpb	$32, %al
	je	.L48
.L47:
	.loc 2 469 6
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 470 21
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 2 470 17
	movl	%eax, prefix_length(%rip)
	.loc 2 471 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	set_prefix, .-set_prefix
	.type	fmt, @function
fmt:
.LFB49:
	.loc 2 477 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 478 3
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 479 8
	movb	$0, tabs(%rip)
	.loc 2 480 16
	movl	$0, other_indent(%rip)
	.loc 2 481 15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_prefix
	.loc 2 481 13
	movl	%eax, next_char(%rip)
	.loc 2 482 9
	jmp	.L50
.L51:
	.loc 2 484 7
	call	fmt_paragraph
	.loc 2 485 7
	movq	word_limit(%rip), %rax
	movq	%rax, %rdi
	call	put_paragraph
.L50:
	.loc 2 482 10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_paragraph
	.loc 2 482 9
	testb	%al, %al
	jne	.L51
	.loc 2 487 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	fmt, .-fmt
	.type	set_other_indent, @function
set_other_indent:
.LFB50:
	.loc 2 494 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 495 7
	movzbl	split(%rip), %eax
	.loc 2 495 6
	testb	%al, %al
	je	.L53
	.loc 2 496 18
	movl	first_indent(%rip), %eax
	movl	%eax, other_indent(%rip)
	.loc 2 520 1
	jmp	.L63
.L53:
	.loc 2 497 12
	movzbl	crown(%rip), %eax
	.loc 2 497 11
	testb	%al, %al
	je	.L55
	.loc 2 499 50
	cmpb	$0, -4(%rbp)
	je	.L56
	.loc 2 499 50 is_stmt 0 discriminator 1
	movl	in_column(%rip), %eax
	jmp	.L57
.L56:
	.loc 2 499 50 discriminator 2
	movl	first_indent(%rip), %eax
.L57:
	.loc 2 499 20 is_stmt 1 discriminator 4
	movl	%eax, other_indent(%rip)
	.loc 2 520 1 discriminator 4
	jmp	.L63
.L55:
	.loc 2 501 12
	movzbl	tagged(%rip), %eax
	.loc 2 501 11
	testb	%al, %al
	je	.L58
	.loc 2 503 10
	cmpb	$0, -4(%rbp)
	je	.L59
	.loc 2 503 39 discriminator 1
	movl	in_column(%rip), %edx
	movl	first_indent(%rip), %eax
	.loc 2 503 26 discriminator 1
	cmpl	%eax, %edx
	je	.L59
	.loc 2 505 24
	movl	in_column(%rip), %eax
	movl	%eax, other_indent(%rip)
	.loc 2 520 1
	jmp	.L63
.L59:
	.loc 2 513 29
	movl	other_indent(%rip), %edx
	movl	first_indent(%rip), %eax
	.loc 2 513 15
	cmpl	%eax, %edx
	jne	.L63
	.loc 2 514 37
	movl	first_indent(%rip), %eax
	.loc 2 514 55
	testl	%eax, %eax
	jne	.L61
	.loc 2 514 55 is_stmt 0 discriminator 1
	movl	$3, %eax
	jmp	.L62
.L61:
	.loc 2 514 55 discriminator 2
	movl	$0, %eax
.L62:
	.loc 2 514 22 is_stmt 1 discriminator 4
	movl	%eax, other_indent(%rip)
	.loc 2 520 1 discriminator 4
	jmp	.L63
.L58:
	.loc 2 518 20
	movl	first_indent(%rip), %eax
	movl	%eax, other_indent(%rip)
.L63:
	.loc 2 520 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	set_other_indent, .-set_other_indent
	.section	.rodata
.LC46:
	.string	"src/fmt.c"
.LC47:
	.string	"word < word_limit"
	.text
	.type	get_paragraph, @function
get_paragraph:
.LFB51:
	.loc 2 539 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 542 20
	movl	$0, last_line_length(%rip)
	.loc 2 543 5
	movl	next_char(%rip), %eax
	movl	%eax, -4(%rbp)
	.loc 2 547 9
	jmp	.L65
.L68:
	.loc 2 551 11
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	copy_rest
	movl	%eax, -4(%rbp)
	.loc 2 552 10
	cmpl	$-1, -4(%rbp)
	jne	.L66
	.loc 2 554 21
	movl	$-1, next_char(%rip)
	.loc 2 555 18
	movl	$0, %eax
	jmp	.L67
.L66:
	.loc 2 557 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 558 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_prefix
	movl	%eax, -4(%rbp)
.L65:
	.loc 2 547 9
	cmpl	$10, -4(%rbp)
	je	.L68
	.loc 2 547 20 discriminator 1
	cmpl	$-1, -4(%rbp)
	je	.L68
	.loc 2 548 32
	movl	next_prefix_indent(%rip), %edx
	movl	prefix_lead_space(%rip), %eax
	.loc 2 548 10
	cmpl	%eax, %edx
	jl	.L68
	.loc 2 549 44
	movl	next_prefix_indent(%rip), %edx
	movl	prefix_full_length(%rip), %eax
	addl	%eax, %edx
	.loc 2 549 23
	movl	in_column(%rip), %eax
	.loc 2 549 10
	cmpl	%eax, %edx
	jg	.L68
	.loc 2 563 17
	movl	next_prefix_indent(%rip), %eax
	movl	%eax, prefix_indent(%rip)
	.loc 2 564 16
	movl	in_column(%rip), %eax
	movl	%eax, first_indent(%rip)
	.loc 2 565 8
	leaq	parabuf(%rip), %rax
	movq	%rax, wptr(%rip)
	.loc 2 566 14
	leaq	unused_word_type(%rip), %rax
	movq	%rax, word_limit(%rip)
	.loc 2 567 7
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_line
	movl	%eax, -4(%rbp)
	.loc 2 568 21
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	same_para
	.loc 2 568 3
	movzbl	%al, %eax
	movl	%eax, %edi
	call	set_other_indent
	.loc 2 572 7
	movzbl	split(%rip), %eax
	.loc 2 572 6
	testb	%al, %al
	jne	.L69
	.loc 2 576 12
	movzbl	crown(%rip), %eax
	.loc 2 576 11
	testb	%al, %al
	je	.L70
	.loc 2 578 11
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	same_para
	.loc 2 578 10
	testb	%al, %al
	je	.L69
.L71:
	.loc 2 582 19 discriminator 2
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_line
	movl	%eax, -4(%rbp)
	.loc 2 584 18 discriminator 2
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	same_para
	.loc 2 584 11 discriminator 2
	testb	%al, %al
	je	.L69
	.loc 2 584 45 discriminator 1
	movl	in_column(%rip), %edx
	movl	other_indent(%rip), %eax
	.loc 2 584 32 discriminator 1
	cmpl	%eax, %edx
	je	.L71
	jmp	.L69
.L70:
	.loc 2 587 12
	movzbl	tagged(%rip), %eax
	.loc 2 587 11
	testb	%al, %al
	je	.L74
	.loc 2 589 11
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	same_para
	.loc 2 589 10
	testb	%al, %al
	je	.L69
	.loc 2 589 38 discriminator 1
	movl	in_column(%rip), %edx
	movl	first_indent(%rip), %eax
	.loc 2 589 25 discriminator 1
	cmpl	%eax, %edx
	je	.L69
.L73:
	.loc 2 593 19 discriminator 2
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_line
	movl	%eax, -4(%rbp)
	.loc 2 595 18 discriminator 2
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	same_para
	.loc 2 595 11 discriminator 2
	testb	%al, %al
	je	.L69
	.loc 2 595 45 discriminator 1
	movl	in_column(%rip), %edx
	movl	other_indent(%rip), %eax
	.loc 2 595 32 discriminator 1
	cmpl	%eax, %edx
	je	.L73
	jmp	.L69
.L75:
	.loc 2 601 13
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_line
	movl	%eax, -4(%rbp)
.L74:
	.loc 2 600 14
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	same_para
	.loc 2 600 13
	testb	%al, %al
	je	.L69
	.loc 2 600 41 discriminator 1
	movl	in_column(%rip), %edx
	movl	other_indent(%rip), %eax
	.loc 2 600 28 discriminator 1
	cmpl	%eax, %edx
	je	.L75
.L69:
	.loc 2 606 3
	movq	word_limit(%rip), %rax
	leaq	unused_word_type(%rip), %rdx
	cmpq	%rdx, %rax
	ja	.L76
	.loc 2 606 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6408(%rip), %rcx
	movl	$606, %edx
	leaq	.LC46(%rip), %rsi
	leaq	.LC47(%rip), %rdi
	call	__assert_fail@PLT
.L76:
	.loc 2 608 42 is_stmt 1
	movq	word_limit(%rip), %rax
	subq	$40, %rax
	.loc 2 608 54
	movzbl	16(%rax), %edx
	orl	$8, %edx
	movb	%dl, 16(%rax)
	.loc 2 608 15
	movq	word_limit(%rip), %rdx
	subq	$40, %rdx
	.loc 2 608 46
	movzbl	16(%rax), %eax
	shrb	$3, %al
	andl	$1, %eax
	.loc 2 608 28
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	16(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 16(%rdx)
	.loc 2 609 13
	movl	-4(%rbp), %eax
	movl	%eax, next_char(%rip)
	.loc 2 610 10
	movl	$1, %eax
.L67:
	.loc 2 611 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	get_paragraph, .-get_paragraph
	.type	copy_rest, @function
copy_rest:
.LFB52:
	.loc 2 620 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 2 623 14
	movl	$0, out_column(%rip)
	.loc 2 624 17
	movl	in_column(%rip), %edx
	movl	next_prefix_indent(%rip), %eax
	.loc 2 624 6
	cmpl	%eax, %edx
	jg	.L78
	.loc 2 624 38 discriminator 1
	cmpl	$10, -28(%rbp)
	je	.L84
	.loc 2 624 52 discriminator 2
	cmpl	$-1, -28(%rbp)
	je	.L84
.L78:
	.loc 2 626 7
	movl	next_prefix_indent(%rip), %eax
	movl	%eax, %edi
	call	put_space
	.loc 2 627 14
	movq	prefix(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 627 7
	jmp	.L80
.L82:
	.loc 2 628 9 discriminator 4
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 627 65 discriminator 4
	movl	out_column(%rip), %eax
	addl	$1, %eax
	movl	%eax, out_column(%rip)
.L80:
	.loc 2 627 35 discriminator 1
	movl	out_column(%rip), %edx
	movl	in_column(%rip), %eax
	.loc 2 627 7 discriminator 1
	cmpl	%eax, %edx
	je	.L81
	.loc 2 627 51 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 627 48 discriminator 3
	testb	%al, %al
	jne	.L82
.L81:
	.loc 2 629 10
	cmpl	$-1, -28(%rbp)
	je	.L83
	.loc 2 629 20 discriminator 1
	cmpl	$10, -28(%rbp)
	je	.L83
	.loc 2 630 9
	movl	in_column(%rip), %edx
	movl	out_column(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edi
	call	put_space
.L83:
	.loc 2 631 10
	cmpl	$-1, -28(%rbp)
	jne	.L84
	.loc 2 631 55 discriminator 1
	movl	next_prefix_indent(%rip), %edx
	movl	prefix_length(%rip), %eax
	addl	%eax, %edx
	.loc 2 631 33 discriminator 1
	movl	in_column(%rip), %eax
	.loc 2 631 20 discriminator 1
	cmpl	%eax, %edx
	jg	.L84
	.loc 2 632 9
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 634 9
	jmp	.L84
.L86:
	.loc 2 636 7
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 637 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -28(%rbp)
.L84:
	.loc 2 634 9
	cmpl	$10, -28(%rbp)
	je	.L85
	.loc 2 634 20 discriminator 1
	cmpl	$-1, -28(%rbp)
	jne	.L86
.L85:
	.loc 2 639 10
	movl	-28(%rbp), %eax
	.loc 2 640 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	copy_rest, .-copy_rest
	.type	same_para, @function
same_para:
.LFB53:
	.loc 2 648 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 649 30
	movl	next_prefix_indent(%rip), %edx
	movl	prefix_indent(%rip), %eax
	.loc 2 651 24
	cmpl	%eax, %edx
	jne	.L89
	.loc 2 650 46
	movl	next_prefix_indent(%rip), %edx
	movl	prefix_full_length(%rip), %eax
	addl	%eax, %edx
	.loc 2 650 24
	movl	in_column(%rip), %eax
	.loc 2 650 11
	cmpl	%eax, %edx
	jg	.L89
	.loc 2 651 11 discriminator 3
	cmpl	$10, -4(%rbp)
	je	.L89
	.loc 2 651 24 discriminator 2
	cmpl	$-1, -4(%rbp)
	je	.L89
	.loc 2 651 24 is_stmt 0 discriminator 4
	movl	$1, %eax
	jmp	.L90
.L89:
	.loc 2 651 24 discriminator 5
	movl	$0, %eax
.L90:
	.loc 2 651 24 discriminator 7
	andl	$1, %eax
	.loc 2 652 1 is_stmt 1 discriminator 7
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	same_para, .-same_para
	.type	get_line, @function
get_line:
.LFB54:
	.loc 2 664 1
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
	.loc 2 669 18
	leaq	5000+parabuf(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 2 670 15
	leaq	39920+unused_word_type(%rip), %rax
	movq	%rax, -8(%rbp)
.L105:
	.loc 2 677 17
	movq	word_limit(%rip), %rax
	.loc 2 677 24
	movq	wptr(%rip), %rdx
	movq	%rdx, (%rax)
.L95:
	.loc 2 680 20
	movq	wptr(%rip), %rax
	.loc 2 680 14
	cmpq	%rax, -16(%rbp)
	jne	.L93
	.loc 2 682 15
	movl	$1, %edi
	call	set_other_indent
	.loc 2 683 15
	call	flush_paragraph
.L93:
	.loc 2 685 16
	movq	wptr(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, wptr(%rip)
	.loc 2 685 19
	movl	-44(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 686 15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -44(%rbp)
	.loc 2 688 7
	cmpl	$-1, -44(%rbp)
	je	.L94
	.loc 2 688 27 discriminator 1
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	.loc 2 688 23 discriminator 1
	testl	%eax, %eax
	je	.L95
.L94:
	.loc 2 689 46
	movq	wptr(%rip), %rdx
	.loc 2 689 58
	movq	word_limit(%rip), %rax
	movq	(%rax), %rax
	.loc 2 689 46
	subq	%rax, %rdx
	.loc 2 689 30
	movq	word_limit(%rip), %rax
	.loc 2 689 39
	movl	%edx, 8(%rax)
	.loc 2 689 30
	movl	8(%rax), %edx
	.loc 2 689 17
	movl	in_column(%rip), %eax
	addl	%edx, %eax
	movl	%eax, in_column(%rip)
	.loc 2 690 7
	movq	word_limit(%rip), %rax
	movq	%rax, %rdi
	call	check_punctuation
	.loc 2 694 13
	movl	in_column(%rip), %eax
	movl	%eax, -20(%rbp)
	.loc 2 695 11
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_space
	movl	%eax, -44(%rbp)
	.loc 2 696 37
	movl	in_column(%rip), %edx
	.loc 2 696 17
	movq	word_limit(%rip), %rax
	.loc 2 696 37
	subl	-20(%rbp), %edx
	.loc 2 696 25
	movl	%edx, 12(%rax)
	.loc 2 698 28
	cmpl	$-1, -44(%rbp)
	je	.L96
	.loc 2 698 42 discriminator 2
	movq	word_limit(%rip), %rax
	.loc 2 698 32 discriminator 2
	movzbl	16(%rax), %eax
	andl	$2, %eax
	.loc 2 698 28 discriminator 2
	testb	%al, %al
	je	.L97
	.loc 2 699 32
	cmpl	$10, -44(%rbp)
	je	.L96
	.loc 2 699 59 discriminator 1
	movq	word_limit(%rip), %rax
	movl	12(%rax), %eax
	.loc 2 699 46 discriminator 1
	cmpl	$1, %eax
	jle	.L97
.L96:
	.loc 2 698 28 discriminator 1
	movl	$1, %eax
	jmp	.L98
.L97:
	.loc 2 698 28 is_stmt 0 discriminator 3
	movl	$0, %eax
.L98:
	.loc 2 697 17 is_stmt 1
	movq	word_limit(%rip), %rdx
	.loc 2 698 28
	andl	$1, %eax
	.loc 2 697 25
	andl	$1, %eax
	leal	0(,%rax,8), %ecx
	movzbl	16(%rdx), %eax
	andl	$-9, %eax
	orl	%ecx, %eax
	movb	%al, 16(%rdx)
	.loc 2 700 10
	cmpl	$10, -44(%rbp)
	je	.L99
	.loc 2 700 21 discriminator 1
	cmpl	$-1, -44(%rbp)
	je	.L99
	.loc 2 700 33 discriminator 2
	movzbl	uniform(%rip), %eax
	testb	%al, %al
	je	.L100
.L99:
	.loc 2 701 39
	movq	word_limit(%rip), %rax
	.loc 2 701 47
	movzbl	16(%rax), %eax
	andl	$8, %eax
	.loc 2 701 51
	testb	%al, %al
	je	.L101
	.loc 2 701 51 is_stmt 0 discriminator 1
	movl	$2, %edx
	jmp	.L102
.L101:
	.loc 2 701 51 discriminator 2
	movl	$1, %edx
.L102:
	.loc 2 701 19 is_stmt 1 discriminator 4
	movq	word_limit(%rip), %rax
	.loc 2 701 27 discriminator 4
	movl	%edx, 12(%rax)
.L100:
	.loc 2 702 22
	movq	word_limit(%rip), %rax
	.loc 2 702 10
	cmpq	%rax, -8(%rbp)
	jne	.L103
	.loc 2 704 11
	movl	$1, %edi
	call	set_other_indent
	.loc 2 705 11
	call	flush_paragraph
.L103:
	.loc 2 707 17
	movq	word_limit(%rip), %rax
	addq	$40, %rax
	movq	%rax, word_limit(%rip)
	.loc 2 709 3
	cmpl	$10, -44(%rbp)
	je	.L104
	.loc 2 709 20 discriminator 1
	cmpl	$-1, -44(%rbp)
	jne	.L105
.L104:
	.loc 2 710 10
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_prefix
	.loc 2 711 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	get_line, .-get_line
	.type	get_prefix, @function
get_prefix:
.LFB55:
	.loc 2 718 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 721 13
	movl	$0, in_column(%rip)
	.loc 2 722 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_space
	movl	%eax, -12(%rbp)
	.loc 2 723 21
	movl	prefix_length(%rip), %eax
	.loc 2 723 6
	testl	%eax, %eax
	jne	.L108
	.loc 2 725 25
	movl	in_column(%rip), %edx
	movl	prefix_lead_space(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	.loc 2 724 24
	movl	%eax, next_prefix_indent(%rip)
	jmp	.L109
.L108:
.LBB4:
	.loc 2 729 26
	movl	in_column(%rip), %eax
	movl	%eax, next_prefix_indent(%rip)
	.loc 2 730 14
	movq	prefix(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 730 7
	jmp	.L110
.L113:
.LBB5:
	.loc 2 732 30
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 732 25
	movb	%al, -13(%rbp)
	.loc 2 733 17
	movzbl	-13(%rbp), %eax
	.loc 2 733 14
	cmpl	%eax, -12(%rbp)
	je	.L111
	.loc 2 734 20
	movl	-12(%rbp), %eax
	jmp	.L112
.L111:
	.loc 2 735 20 discriminator 2
	movl	in_column(%rip), %eax
	addl	$1, %eax
	movl	%eax, in_column(%rip)
	.loc 2 736 15 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -12(%rbp)
.LBE5:
	.loc 2 730 37 discriminator 2
	addq	$1, -8(%rbp)
.L110:
	.loc 2 730 24 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 730 7 discriminator 1
	testb	%al, %al
	jne	.L113
	.loc 2 738 11
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_space
	movl	%eax, -12(%rbp)
.L109:
.LBE4:
	.loc 2 740 10
	movl	-12(%rbp), %eax
.L112:
	.loc 2 741 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	get_prefix, .-get_prefix
	.type	get_space, @function
get_space:
.LFB56:
	.loc 2 748 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.L119:
	.loc 2 751 10
	cmpl	$32, -12(%rbp)
	jne	.L115
	.loc 2 752 18
	movl	in_column(%rip), %eax
	addl	$1, %eax
	movl	%eax, in_column(%rip)
	jmp	.L116
.L115:
	.loc 2 753 15
	cmpl	$9, -12(%rbp)
	jne	.L117
	.loc 2 755 16
	movb	$1, tabs(%rip)
	.loc 2 756 34
	movl	in_column(%rip), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	.loc 2 756 45
	addl	$1, %eax
	.loc 2 756 50
	sall	$3, %eax
	.loc 2 756 21
	movl	%eax, in_column(%rip)
	jmp	.L116
.L117:
	.loc 2 759 16
	movl	-12(%rbp), %eax
	jmp	.L120
.L116:
	.loc 2 760 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -12(%rbp)
	.loc 2 751 10
	jmp	.L119
.L120:
	.loc 2 762 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	get_space, .-get_space
	.section	.rodata
.LC48:
	.string	"(['`\""
.LC49:
	.string	")]'\""
.LC50:
	.string	".?!"
	.text
	.type	check_punctuation, @function
check_punctuation:
.LFB57:
	.loc 2 768 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 769 15
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 770 34
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	.loc 2 770 30
	leaq	-1(%rax), %rdx
	.loc 2 770 15
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 771 23
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 771 17
	movb	%al, -17(%rbp)
	.loc 2 773 14
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC48(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	setne	%dl
	.loc 2 773 12
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	16(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 16(%rax)
	.loc 2 774 17
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-17(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	.loc 2 774 14
	testl	%eax, %eax
	setne	%dl
	.loc 2 774 12
	movq	-40(%rbp), %rax
	andl	$1, %edx
	leal	0(,%rdx,4), %ecx
	movzbl	16(%rax), %edx
	andl	$-5, %edx
	orl	%ecx, %edx
	movb	%dl, 16(%rax)
	.loc 2 775 9
	jmp	.L122
.L124:
	.loc 2 776 11
	subq	$1, -16(%rbp)
.L122:
	.loc 2 775 9
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L123
	.loc 2 775 28 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC49(%rip), %rdi
	call	strchr@PLT
	.loc 2 775 25 discriminator 1
	testq	%rax, %rax
	jne	.L124
.L123:
	.loc 2 777 15
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC50(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	setne	%dl
	.loc 2 777 13
	movq	-40(%rbp), %rax
	andl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movzbl	16(%rax), %edx
	andl	$-3, %edx
	orl	%ecx, %edx
	movb	%dl, 16(%rax)
	.loc 2 778 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	check_punctuation, .-check_punctuation
	.type	flush_paragraph, @function
flush_paragraph:
.LFB58:
	.loc 2 785 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 2 793 18
	movq	word_limit(%rip), %rax
	.loc 2 793 6
	leaq	unused_word_type(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L126
	.loc 2 795 7
	movq	stdout(%rip), %rax
	movq	wptr(%rip), %rdx
	leaq	parabuf(%rip), %rcx
	subq	%rcx, %rdx
	movq	%rax, %rcx
	movl	$1, %esi
	leaq	parabuf(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 796 12
	leaq	parabuf(%rip), %rax
	movq	%rax, wptr(%rip)
	.loc 2 797 7
	jmp	.L125
.L126:
	.loc 2 806 3
	call	fmt_paragraph
	.loc 2 810 15
	movq	word_limit(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 811 14
	movabsq	$9223372036854775807, %rax
	movq	%rax, -8(%rbp)
	.loc 2 812 10
	movq	32+unused_word_type(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 2 812 3
	jmp	.L128
.L131:
	.loc 2 814 12
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 814 27
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 814 39
	movq	24(%rax), %rax
	.loc 2 814 24
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 814 10
	cmpq	%rax, -8(%rbp)
	jle	.L129
	.loc 2 816 23
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 817 25
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 817 40
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 817 52
	movq	24(%rax), %rax
	.loc 2 817 22
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L129:
	.loc 2 819 10
	movabsq	$9223372036854775798, %rax
	cmpq	%rax, -8(%rbp)
	jg	.L130
	.loc 2 820 20
	addq	$9, -8(%rbp)
.L130:
	.loc 2 812 49 discriminator 2
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
.L128:
	.loc 2 812 32 discriminator 1
	movq	word_limit(%rip), %rax
	.loc 2 812 3 discriminator 1
	cmpq	%rax, -16(%rbp)
	jne	.L131
	.loc 2 822 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	put_paragraph
	.loc 2 827 45
	movq	wptr(%rip), %rdx
	.loc 2 827 58
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 827 45
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 827 3
	movq	%rax, %rdx
	.loc 2 827 32
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 827 3
	movq	%rax, %rsi
	leaq	parabuf(%rip), %rdi
	call	memmove@PLT
	.loc 2 828 22
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 828 29
	leaq	parabuf(%rip), %rdx
	subq	%rdx, %rax
	.loc 2 828 9
	movl	%eax, -28(%rbp)
	.loc 2 829 8
	movq	wptr(%rip), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, wptr(%rip)
	.loc 2 833 10
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 833 3
	jmp	.L132
.L133:
	.loc 2 834 13 discriminator 3
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	negq	%rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 833 43 discriminator 3
	addq	$40, -16(%rbp)
.L132:
	.loc 2 833 27 discriminator 1
	movq	word_limit(%rip), %rax
	.loc 2 833 3 discriminator 1
	cmpq	%rax, -16(%rbp)
	jbe	.L133
	.loc 2 839 43
	movq	word_limit(%rip), %rax
	subq	-24(%rbp), %rax
	.loc 2 839 3
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	unused_word_type(%rip), %rdi
	call	memmove@PLT
	.loc 2 840 14
	movq	word_limit(%rip), %rax
	.loc 2 840 29
	leaq	unused_word_type(%rip), %rcx
	movq	-24(%rbp), %rdx
	subq	%rcx, %rdx
	.loc 2 840 14
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, word_limit(%rip)
.L125:
	.loc 2 841 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	flush_paragraph, .-flush_paragraph
	.type	fmt_paragraph, @function
fmt_paragraph:
.LFB59:
	.loc 2 849 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 855 13
	movq	word_limit(%rip), %rax
	.loc 2 855 25
	movq	$0, 24(%rax)
	.loc 2 856 28
	movq	word_limit(%rip), %rax
	.loc 2 856 16
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 2 857 13
	movq	word_limit(%rip), %rax
	.loc 2 857 22
	movl	max_width(%rip), %edx
	movl	%edx, 8(%rax)
	.loc 2 859 27
	movq	word_limit(%rip), %rax
	.loc 2 859 14
	subq	$40, %rax
	movq	%rax, -32(%rbp)
	.loc 2 859 3
	jmp	.L135
.L143:
	.loc 2 861 12
	movabsq	$9223372036854775807, %rax
	movq	%rax, -8(%rbp)
	.loc 2 862 42
	leaq	unused_word_type(%rip), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L136
	.loc 2 862 42 is_stmt 0 discriminator 1
	movl	first_indent(%rip), %eax
	jmp	.L137
.L136:
	.loc 2 862 42 discriminator 2
	movl	other_indent(%rip), %eax
.L137:
	.loc 2 862 11 is_stmt 1 discriminator 4
	movl	%eax, -40(%rbp)
	.loc 2 866 9 discriminator 4
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 867 15 discriminator 4
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 867 11 discriminator 4
	addl	%eax, -40(%rbp)
.L142:
	.loc 2 870 12
	addq	$40, -24(%rbp)
	.loc 2 874 19
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	line_cost
	.loc 2 874 41
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rdx
	.loc 2 874 17
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 875 14
	leaq	unused_word_type(%rip), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L138
	.loc 2 875 49 discriminator 1
	movl	last_line_length(%rip), %eax
	.loc 2 875 29 discriminator 1
	testl	%eax, %eax
	jle	.L138
	.loc 2 876 22
	movl	last_line_length(%rip), %eax
	movl	-40(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movslq	%eax, %rcx
	movl	last_line_length(%rip), %eax
	movl	-40(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cltq
	imulq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	.loc 2 876 19
	addq	%rax, -16(%rbp)
.L138:
	.loc 2 877 14
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.L139
	.loc 2 879 20
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 880 33
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 881 34
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 20(%rax)
.L139:
	.loc 2 888 17
	movq	word_limit(%rip), %rax
	.loc 2 888 14
	cmpq	%rax, -24(%rbp)
	je	.L144
	.loc 2 891 21
	movq	-24(%rbp), %rax
	subq	$40, %rax
	.loc 2 891 25
	movl	12(%rax), %edx
	.loc 2 891 36
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 891 33
	addl	%edx, %eax
	.loc 2 891 15
	addl	%eax, -40(%rbp)
	.loc 2 893 18
	movl	max_width(%rip), %eax
	.loc 2 893 7
	cmpl	%eax, -40(%rbp)
	jl	.L142
	jmp	.L141
.L144:
	.loc 2 889 13
	nop
.L141:
	.loc 2 894 33 discriminator 2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	base_cost
	.loc 2 894 31 discriminator 2
	movq	-8(%rbp), %rdx
	addq	%rax, %rdx
	.loc 2 894 24 discriminator 2
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 859 52 discriminator 2
	subq	$40, -32(%rbp)
.L135:
	.loc 2 859 3 discriminator 1
	leaq	unused_word_type(%rip), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L143
	.loc 2 897 13
	movq	word_limit(%rip), %rax
	.loc 2 897 22
	movl	-36(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 2 898 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	fmt_paragraph, .-fmt_paragraph
	.type	base_cost, @function
base_cost:
.LFB60:
	.loc 2 905 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 908 8
	movq	$4900, -8(%rbp)
	.loc 2 910 6
	leaq	unused_word_type(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jbe	.L146
	.loc 2 912 17
	movq	-24(%rbp), %rax
	subq	$40, %rax
	.loc 2 912 11
	movzbl	16(%rax), %eax
	andl	$2, %eax
	.loc 2 912 10
	testb	%al, %al
	je	.L147
	.loc 2 914 21
	movq	-24(%rbp), %rax
	subq	$40, %rax
	.loc 2 914 15
	movzbl	16(%rax), %eax
	andl	$8, %eax
	.loc 2 914 14
	testb	%al, %al
	je	.L148
	.loc 2 915 18
	subq	$2500, -8(%rbp)
	jmp	.L146
.L148:
	.loc 2 917 18
	addq	$360000, -8(%rbp)
	jmp	.L146
.L147:
	.loc 2 919 22
	movq	-24(%rbp), %rax
	subq	$40, %rax
	.loc 2 919 16
	movzbl	16(%rax), %eax
	andl	$4, %eax
	.loc 2 919 15
	testb	%al, %al
	je	.L149
	.loc 2 920 14
	subq	$1600, -8(%rbp)
	jmp	.L146
.L149:
	.loc 2 921 28
	leaq	40+unused_word_type(%rip), %rax
	.loc 2 921 15
	cmpq	%rax, -24(%rbp)
	jbe	.L146
	.loc 2 921 41 discriminator 1
	movq	-24(%rbp), %rax
	subq	$80, %rax
	.loc 2 921 32 discriminator 1
	movzbl	16(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L146
	.loc 2 922 17
	movq	-24(%rbp), %rax
	subq	$40, %rax
	movl	8(%rax), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movl	$40000, %eax
	cqto
	idivq	%rcx
	.loc 2 922 14
	addq	%rax, -8(%rbp)
.L146:
	.loc 2 925 7
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$1, %eax
	.loc 2 925 6
	testb	%al, %al
	je	.L150
	.loc 2 926 10
	subq	$1600, -8(%rbp)
	jmp	.L151
.L150:
	.loc 2 927 12
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$8, %eax
	.loc 2 927 11
	testb	%al, %al
	je	.L151
	.loc 2 928 13
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movl	$22500, %eax
	cqto
	idivq	%rsi
	.loc 2 928 10
	addq	%rax, -8(%rbp)
.L151:
	.loc 2 930 10
	movq	-8(%rbp), %rax
	.loc 2 931 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	base_cost, .-base_cost
	.type	line_cost, @function
line_cost:
.LFB61:
	.loc 2 938 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 2 942 12
	movq	word_limit(%rip), %rax
	.loc 2 942 6
	cmpq	%rax, -24(%rbp)
	jne	.L154
	.loc 2 943 12
	movl	$0, %eax
	jmp	.L155
.L154:
	.loc 2 944 18
	movl	goal_width(%rip), %eax
	.loc 2 944 5
	subl	-28(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 2 945 10
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cltq
	.loc 2 945 8
	imulq	%rcx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 946 11
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 946 24
	movq	word_limit(%rip), %rax
	.loc 2 946 6
	cmpq	%rax, %rdx
	je	.L156
	.loc 2 948 21
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	.loc 2 948 9
	movl	-28(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	.loc 2 949 15
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cltq
	imulq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	.loc 2 949 12
	addq	%rax, -8(%rbp)
.L156:
	.loc 2 951 10
	movq	-8(%rbp), %rax
.L155:
	.loc 2 952 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	line_cost, .-line_cost
	.type	put_paragraph, @function
put_paragraph:
.LFB62:
	.loc 2 959 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 962 3
	movl	first_indent(%rip), %eax
	movl	%eax, %esi
	leaq	unused_word_type(%rip), %rdi
	call	put_line
	.loc 2 963 10
	movq	32+unused_word_type(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 963 3
	jmp	.L158
.L159:
	.loc 2 964 5 discriminator 3
	movl	other_indent(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	put_line
	.loc 2 963 45 discriminator 3
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.L158:
	.loc 2 963 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L159
	.loc 2 965 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	put_paragraph, .-put_paragraph
	.type	put_line, @function
put_line:
.LFB63:
	.loc 2 972 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 2 975 14
	movl	$0, out_column(%rip)
	.loc 2 976 3
	movl	prefix_indent(%rip), %eax
	movl	%eax, %edi
	call	put_space
	.loc 2 977 3
	movq	stdout(%rip), %rdx
	movq	prefix(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 978 14
	movl	out_column(%rip), %edx
	movl	prefix_length(%rip), %eax
	addl	%edx, %eax
	movl	%eax, out_column(%rip)
	.loc 2 979 3
	movl	out_column(%rip), %eax
	movl	-28(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edi
	call	put_space
	.loc 2 981 14
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 981 11
	subq	$40, %rax
	movq	%rax, -8(%rbp)
	.loc 2 982 3
	jmp	.L161
.L162:
	.loc 2 984 7 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	put_word
	.loc 2 985 7 discriminator 2
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %edi
	call	put_space
	.loc 2 982 25 discriminator 2
	addq	$40, -24(%rbp)
.L161:
	.loc 2 982 3 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L162
	.loc 2 987 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	put_word
	.loc 2 988 20
	movl	out_column(%rip), %eax
	movl	%eax, last_line_length(%rip)
	.loc 2 989 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 990 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	put_line, .-put_line
	.type	put_word, @function
put_word:
.LFB64:
	.loc 2 996 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 1000 5
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1001 10
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 2 1001 3
	jmp	.L164
.L165:
	.loc 2 1002 5 discriminator 3
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 1001 32 discriminator 3
	subl	$1, -12(%rbp)
.L164:
	.loc 2 1001 3 discriminator 1
	cmpl	$0, -12(%rbp)
	jne	.L165
	.loc 2 1003 18
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	.loc 2 1003 14
	movl	out_column(%rip), %eax
	addl	%edx, %eax
	movl	%eax, out_column(%rip)
	.loc 2 1004 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	put_word, .-put_word
	.type	put_space, @function
put_space:
.LFB65:
	.loc 2 1010 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 2 1013 29
	movl	out_column(%rip), %edx
	.loc 2 1013 16
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 2 1014 7
	movzbl	tabs(%rip), %eax
	.loc 2 1014 6
	testb	%al, %al
	je	.L170
	.loc 2 1016 33
	movl	-8(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	.loc 2 1016 18
	sall	$3, %eax
	movl	%eax, -4(%rbp)
	.loc 2 1017 22
	movl	out_column(%rip), %eax
	addl	$1, %eax
	.loc 2 1017 10
	cmpl	%eax, -4(%rbp)
	jle	.L170
	.loc 2 1018 15
	jmp	.L168
.L169:
	.loc 2 1020 13
	movl	$9, %edi
	call	putchar_unlocked@PLT
	.loc 2 1021 38
	movl	out_column(%rip), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	.loc 2 1021 49
	addl	$1, %eax
	.loc 2 1021 54
	sall	$3, %eax
	.loc 2 1021 24
	movl	%eax, out_column(%rip)
.L168:
	.loc 2 1018 27
	movl	out_column(%rip), %eax
	.loc 2 1018 15
	cmpl	%eax, -4(%rbp)
	jg	.L169
	.loc 2 1024 9
	jmp	.L170
.L171:
	.loc 2 1026 7
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 2 1027 17
	movl	out_column(%rip), %eax
	addl	$1, %eax
	movl	%eax, out_column(%rip)
.L170:
	.loc 2 1024 21
	movl	out_column(%rip), %eax
	.loc 2 1024 9
	cmpl	%eax, -8(%rbp)
	jg	.L171
	.loc 2 1029 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	put_space, .-put_space
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6408, @object
	.size	__PRETTY_FUNCTION__.6408, 14
__PRETTY_FUNCTION__.6408:
	.string	"get_paragraph"
	.text
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
	.file 20 "/usr/include/ctype.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/fadvise.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10ff
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF212
	.byte	0xc
	.long	.LASF213
	.long	.LASF214
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
	.long	.LASF215
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
	.uleb128 0xf
	.long	.LASF80
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
	.long	0x4b9
	.uleb128 0x15
	.long	.LASF81
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x2a
	.byte	0x6
	.long	0x4ce
	.uleb128 0x16
	.long	.LASF82
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2f
	.byte	0x1
	.long	0x52d
	.uleb128 0x17
	.long	.LASF83
	.value	0x100
	.uleb128 0x17
	.long	.LASF84
	.value	0x200
	.uleb128 0x17
	.long	.LASF85
	.value	0x400
	.uleb128 0x17
	.long	.LASF86
	.value	0x800
	.uleb128 0x17
	.long	.LASF87
	.value	0x1000
	.uleb128 0x17
	.long	.LASF88
	.value	0x2000
	.uleb128 0x17
	.long	.LASF89
	.value	0x4000
	.uleb128 0x17
	.long	.LASF90
	.value	0x8000
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.uleb128 0x16
	.long	.LASF92
	.byte	0x2
	.uleb128 0x16
	.long	.LASF93
	.byte	0x4
	.uleb128 0x16
	.long	.LASF94
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x54b
	.uleb128 0x19
	.long	.LASF95
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF96
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xa9
	.long	0x556
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x54b
	.uleb128 0xf
	.long	.LASF97
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x556
	.uleb128 0xf
	.long	.LASF98
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x296
	.uleb128 0x1a
	.long	.LASF216
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x5c8
	.uleb128 0x16
	.long	.LASF99
	.byte	0
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.uleb128 0x16
	.long	.LASF101
	.byte	0x2
	.uleb128 0x16
	.long	.LASF102
	.byte	0x3
	.uleb128 0x16
	.long	.LASF103
	.byte	0x4
	.uleb128 0x16
	.long	.LASF104
	.byte	0x5
	.uleb128 0x16
	.long	.LASF105
	.byte	0x6
	.uleb128 0x16
	.long	.LASF106
	.byte	0x7
	.uleb128 0x16
	.long	.LASF107
	.byte	0x8
	.uleb128 0x16
	.long	.LASF108
	.byte	0x9
	.uleb128 0x16
	.long	.LASF109
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x573
	.uleb128 0x11
	.long	.LASF110
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2e2
	.uleb128 0xd
	.long	0x5c8
	.long	0x5e5
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5da
	.uleb128 0x11
	.long	.LASF111
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x5e5
	.uleb128 0xf
	.long	.LASF112
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x41c
	.uleb128 0xf
	.long	.LASF113
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF114
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
	.long	0x64e
	.uleb128 0x16
	.long	.LASF115
	.byte	0
	.uleb128 0x16
	.long	.LASF116
	.byte	0x2
	.uleb128 0x16
	.long	.LASF117
	.byte	0x5
	.uleb128 0x16
	.long	.LASF118
	.byte	0x4
	.uleb128 0x16
	.long	.LASF119
	.byte	0x3
	.uleb128 0x16
	.long	.LASF120
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF121
	.byte	0x2
	.byte	0x40
	.byte	0x12
	.long	0x71
	.uleb128 0x2
	.long	.LASF122
	.byte	0x2
	.byte	0x81
	.byte	0x15
	.long	0x666
	.uleb128 0x9
	.long	.LASF123
	.byte	0x28
	.byte	0x2
	.byte	0x83
	.byte	0x8
	.long	0x702
	.uleb128 0xa
	.long	.LASF124
	.byte	0x2
	.byte	0x88
	.byte	0x11
	.long	0x296
	.byte	0
	.uleb128 0xa
	.long	.LASF125
	.byte	0x2
	.byte	0x89
	.byte	0x9
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF126
	.byte	0x2
	.byte	0x8a
	.byte	0x9
	.long	0x65
	.byte	0xc
	.uleb128 0x1b
	.long	.LASF127
	.byte	0x2
	.byte	0x8b
	.byte	0x12
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x2
	.byte	0x8c
	.byte	0x12
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x10
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x2
	.byte	0x8d
	.byte	0x12
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x10
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x2
	.byte	0x8e
	.byte	0x12
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF131
	.byte	0x2
	.byte	0x92
	.byte	0x9
	.long	0x65
	.byte	0x14
	.uleb128 0xa
	.long	.LASF132
	.byte	0x2
	.byte	0x93
	.byte	0xa
	.long	0x64e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF133
	.byte	0x2
	.byte	0x94
	.byte	0xb
	.long	0x702
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x65a
	.uleb128 0x1c
	.long	.LASF135
	.byte	0x2
	.byte	0xae
	.byte	0xd
	.long	0x71e
	.uleb128 0x9
	.byte	0x3
	.quad	crown
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF134
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x2
	.byte	0xb1
	.byte	0xd
	.long	0x71e
	.uleb128 0x9
	.byte	0x3
	.quad	tagged
	.uleb128 0x1c
	.long	.LASF137
	.byte	0x2
	.byte	0xb4
	.byte	0xd
	.long	0x71e
	.uleb128 0x9
	.byte	0x3
	.quad	split
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x2
	.byte	0xb7
	.byte	0xd
	.long	0x71e
	.uleb128 0x9
	.byte	0x3
	.quad	uniform
	.uleb128 0x1c
	.long	.LASF139
	.byte	0x2
	.byte	0xba
	.byte	0x14
	.long	0x296
	.uleb128 0x9
	.byte	0x3
	.quad	prefix
	.uleb128 0x1c
	.long	.LASF140
	.byte	0x2
	.byte	0xbe
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	max_width
	.uleb128 0x1c
	.long	.LASF141
	.byte	0x2
	.byte	0xc3
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	prefix_full_length
	.uleb128 0x1c
	.long	.LASF142
	.byte	0x2
	.byte	0xc6
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	prefix_lead_space
	.uleb128 0x1c
	.long	.LASF143
	.byte	0x2
	.byte	0xc9
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	prefix_length
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x2
	.byte	0xcc
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	goal_width
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x2
	.byte	0xd1
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	in_column
	.uleb128 0x1c
	.long	.LASF146
	.byte	0x2
	.byte	0xd4
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	out_column
	.uleb128 0xd
	.long	0xa2
	.long	0x828
	.uleb128 0x1d
	.long	0x39
	.value	0x1387
	.byte	0
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x2
	.byte	0xd8
	.byte	0xd
	.long	0x817
	.uleb128 0x9
	.byte	0x3
	.quad	parabuf
	.uleb128 0x1c
	.long	.LASF148
	.byte	0x2
	.byte	0xdb
	.byte	0xe
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	wptr
	.uleb128 0xd
	.long	0x65a
	.long	0x865
	.uleb128 0x1d
	.long	0x39
	.value	0x3e7
	.byte	0
	.uleb128 0x1c
	.long	.LASF149
	.byte	0x2
	.byte	0xdf
	.byte	0xd
	.long	0x854
	.uleb128 0x9
	.byte	0x3
	.quad	unused_word_type
	.uleb128 0x1c
	.long	.LASF150
	.byte	0x2
	.byte	0xe4
	.byte	0xe
	.long	0x702
	.uleb128 0x9
	.byte	0x3
	.quad	word_limit
	.uleb128 0x1c
	.long	.LASF151
	.byte	0x2
	.byte	0xe8
	.byte	0xd
	.long	0x71e
	.uleb128 0x9
	.byte	0x3
	.quad	tabs
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x2
	.byte	0xeb
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	prefix_indent
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x2
	.byte	0xee
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	first_indent
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x2
	.byte	0xf1
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	other_indent
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x2
	.byte	0xfb
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	next_char
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0xff
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	next_prefix_indent
	.uleb128 0x1e
	.long	.LASF157
	.byte	0x2
	.value	0x104
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	last_line_length
	.uleb128 0xd
	.long	0x3ab
	.long	0x93c
	.uleb128 0xe
	.long	0x39
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.long	0x92c
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x2
	.value	0x12e
	.byte	0x1c
	.long	0x93c
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1f
	.long	.LASF161
	.byte	0x2
	.value	0x3f1
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a8
	.uleb128 0x20
	.long	.LASF126
	.byte	0x2
	.value	0x3f1
	.byte	0x10
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x2
	.value	0x3f3
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x2
	.value	0x3f3
	.byte	0x15
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF162
	.byte	0x2
	.value	0x3e3
	.byte	0x1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f2
	.uleb128 0x21
	.string	"w"
	.byte	0x2
	.value	0x3e3
	.byte	0x11
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.value	0x3e5
	.byte	0xf
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"n"
	.byte	0x2
	.value	0x3e6
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.long	.LASF163
	.byte	0x2
	.value	0x3cb
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0xa40
	.uleb128 0x21
	.string	"w"
	.byte	0x2
	.value	0x3cb
	.byte	0x11
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF164
	.byte	0x2
	.value	0x3cb
	.byte	0x18
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x2
	.value	0x3cd
	.byte	0x9
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF166
	.byte	0x2
	.value	0x3be
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7e
	.uleb128 0x20
	.long	.LASF167
	.byte	0x2
	.value	0x3be
	.byte	0x16
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"w"
	.byte	0x2
	.value	0x3c0
	.byte	0x9
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF170
	.byte	0x2
	.value	0x3a9
	.byte	0x1
	.long	0x64e
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0xae0
	.uleb128 0x20
	.long	.LASF168
	.byte	0x2
	.value	0x3a9
	.byte	0x12
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"len"
	.byte	0x2
	.value	0x3a9
	.byte	0x1c
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"n"
	.byte	0x2
	.value	0x3ab
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF169
	.byte	0x2
	.value	0x3ac
	.byte	0x8
	.long	0x64e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF171
	.byte	0x2
	.value	0x388
	.byte	0x1
	.long	0x64e
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0xb24
	.uleb128 0x20
	.long	.LASF172
	.byte	0x2
	.value	0x388
	.byte	0x12
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF169
	.byte	0x2
	.value	0x38a
	.byte	0x8
	.long	0x64e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF173
	.byte	0x2
	.value	0x350
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0xba2
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x2
	.value	0x352
	.byte	0x9
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"w"
	.byte	0x2
	.value	0x352
	.byte	0x11
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"len"
	.byte	0x2
	.value	0x353
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x2
	.value	0x354
	.byte	0x8
	.long	0x64e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF176
	.byte	0x2
	.value	0x354
	.byte	0xf
	.long	0x64e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF177
	.byte	0x2
	.value	0x355
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1f
	.long	.LASF178
	.byte	0x2
	.value	0x310
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0xc00
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x2
	.value	0x312
	.byte	0x9
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"w"
	.byte	0x2
	.value	0x313
	.byte	0x9
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF180
	.byte	0x2
	.value	0x314
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.long	.LASF181
	.byte	0x2
	.value	0x315
	.byte	0x8
	.long	0x64e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x2
	.value	0x2ff
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xc5e
	.uleb128 0x21
	.string	"w"
	.byte	0x2
	.value	0x2ff
	.byte	0x1a
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x2
	.value	0x301
	.byte	0xf
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x2
	.value	0x302
	.byte	0xf
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"fin"
	.byte	0x2
	.value	0x303
	.byte	0x11
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x24
	.long	.LASF183
	.byte	0x2
	.value	0x2eb
	.byte	0x1
	.long	0x65
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xc9e
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.value	0x2eb
	.byte	0x12
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"c"
	.byte	0x2
	.value	0x2eb
	.byte	0x19
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF184
	.byte	0x2
	.value	0x2cd
	.byte	0x1
	.long	0x65
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1f
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.value	0x2cd
	.byte	0x13
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"c"
	.byte	0x2
	.value	0x2cf
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x22
	.string	"p"
	.byte	0x2
	.value	0x2d8
	.byte	0x13
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x22
	.string	"pc"
	.byte	0x2
	.value	0x2dc
	.byte	0x19
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.value	0x297
	.byte	0x1
	.long	0x65
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xd8f
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.value	0x297
	.byte	0x11
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"c"
	.byte	0x2
	.value	0x297
	.byte	0x18
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x2
	.value	0x299
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF186
	.byte	0x2
	.value	0x29a
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF187
	.byte	0x2
	.value	0x29b
	.byte	0x9
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF188
	.byte	0x2
	.value	0x287
	.byte	0x1
	.long	0x71e
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc1
	.uleb128 0x21
	.string	"c"
	.byte	0x2
	.value	0x287
	.byte	0x10
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF189
	.byte	0x2
	.value	0x26b
	.byte	0x1
	.long	0x65
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0f
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.value	0x26b
	.byte	0x12
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"c"
	.byte	0x2
	.value	0x26b
	.byte	0x19
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.value	0x26d
	.byte	0xf
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF190
	.byte	0x2
	.value	0x21a
	.byte	0x1
	.long	0x71e
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xe62
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.value	0x21a
	.byte	0x16
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"c"
	.byte	0x2
	.value	0x21c
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF217
	.long	0xe72
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6408
	.byte	0
	.uleb128 0xd
	.long	0xa9
	.long	0xe72
	.uleb128 0xe
	.long	0x39
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.long	0xe62
	.uleb128 0x27
	.long	.LASF191
	.byte	0x2
	.value	0x1ed
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xea7
	.uleb128 0x20
	.long	.LASF192
	.byte	0x2
	.value	0x1ed
	.byte	0x18
	.long	0x71e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.string	"fmt"
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xed5
	.uleb128 0x21
	.string	"f"
	.byte	0x2
	.value	0x1dc
	.byte	0xc
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF193
	.byte	0x2
	.value	0x1c6
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xf11
	.uleb128 0x21
	.string	"p"
	.byte	0x2
	.value	0x1c6
	.byte	0x13
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"s"
	.byte	0x2
	.value	0x1c8
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF201
	.byte	0x2
	.value	0x13d
	.byte	0x1
	.long	0x65
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xfdc
	.uleb128 0x20
	.long	.LASF194
	.byte	0x2
	.value	0x13d
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.long	.LASF195
	.byte	0x2
	.value	0x13d
	.byte	0x18
	.long	0x45e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF196
	.byte	0x2
	.value	0x13f
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.string	"ok"
	.byte	0x2
	.value	0x140
	.byte	0x8
	.long	0x71e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x1e
	.long	.LASF197
	.byte	0x2
	.value	0x141
	.byte	0xf
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x2
	.value	0x142
	.byte	0xf
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x2
	.value	0x1a5
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1e
	.long	.LASF200
	.byte	0x2
	.value	0x1aa
	.byte	0x15
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF202
	.byte	0x2
	.value	0x107
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x100c
	.uleb128 0x20
	.long	.LASF203
	.byte	0x2
	.value	0x107
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1f
	.long	.LASF204
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x10b1
	.uleb128 0x20
	.long	.LASF205
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.long	.LASF206
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1067
	.uleb128 0x2c
	.long	.LASF205
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x296
	.byte	0
	.uleb128 0x2c
	.long	.LASF207
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x296
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x103c
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x10c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF207
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF208
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x10c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF209
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x1067
	.long	0x10c1
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x10b1
	.uleb128 0x7
	.byte	0x8
	.long	0x1067
	.uleb128 0x2d
	.long	.LASF210
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF211
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x20
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x5
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
.LASF8:
	.string	"__off_t"
.LASF210:
	.string	"emit_mandatory_arg_note"
.LASF90:
	.string	"_ISgraph"
.LASF25:
	.string	"_chain"
.LASF67:
	.string	"__daylight"
.LASF96:
	.string	"GETOPT_VERSION_CHAR"
.LASF123:
	.string	"Word"
.LASF216:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF212:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF31:
	.string	"_shortbuf"
.LASF138:
	.string	"uniform"
.LASF101:
	.string	"shell_always_quoting_style"
.LASF127:
	.string	"paren"
.LASF100:
	.string	"shell_quoting_style"
.LASF95:
	.string	"GETOPT_HELP_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF130:
	.string	"final"
.LASF56:
	.string	"long long unsigned int"
.LASF16:
	.string	"_IO_write_base"
.LASF156:
	.string	"next_prefix_indent"
.LASF85:
	.string	"_ISalpha"
.LASF168:
	.string	"next"
.LASF34:
	.string	"_codecvt"
.LASF86:
	.string	"_ISdigit"
.LASF68:
	.string	"__timezone"
.LASF78:
	.string	"program_invocation_short_name"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF111:
	.string	"quoting_style_vals"
.LASF217:
	.string	"__PRETTY_FUNCTION__"
.LASF205:
	.string	"program"
.LASF106:
	.string	"escape_quoting_style"
.LASF182:
	.string	"check_punctuation"
.LASF99:
	.string	"literal_quoting_style"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF178:
	.string	"flush_paragraph"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"_gl_cxxalias_dummy"
.LASF158:
	.string	"long_options"
.LASF190:
	.string	"get_paragraph"
.LASF12:
	.string	"_flags"
.LASF171:
	.string	"base_cost"
.LASF211:
	.string	"emit_stdin_note"
.LASF35:
	.string	"_wide_data"
.LASF193:
	.string	"set_prefix"
.LASF94:
	.string	"_ISalnum"
.LASF162:
	.string	"put_word"
.LASF200:
	.string	"in_stream"
.LASF104:
	.string	"c_quoting_style"
.LASF142:
	.string	"prefix_lead_space"
.LASF43:
	.string	"_IO_codecvt"
.LASF213:
	.string	"src/fmt.c"
.LASF126:
	.string	"space"
.LASF146:
	.string	"out_column"
.LASF77:
	.string	"program_invocation_name"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF172:
	.string	"this"
.LASF180:
	.string	"shift"
.LASF165:
	.string	"endline"
.LASF91:
	.string	"_ISblank"
.LASF173:
	.string	"fmt_paragraph"
.LASF166:
	.string	"put_paragraph"
.LASF81:
	.string	"TIMESPEC_HZ"
.LASF103:
	.string	"shell_escape_always_quoting_style"
.LASF137:
	.string	"split"
.LASF188:
	.string	"same_para"
.LASF71:
	.string	"timezone"
.LASF93:
	.string	"_ISpunct"
.LASF98:
	.string	"program_name"
.LASF131:
	.string	"line_length"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF159:
	.string	"space_target"
.LASF147:
	.string	"parabuf"
.LASF37:
	.string	"_freeres_buf"
.LASF129:
	.string	"punct"
.LASF132:
	.string	"best_cost"
.LASF153:
	.string	"first_indent"
.LASF0:
	.string	"long unsigned int"
.LASF152:
	.string	"prefix_indent"
.LASF62:
	.string	"option"
.LASF17:
	.string	"_IO_write_ptr"
.LASF63:
	.string	"name"
.LASF48:
	.string	"sys_nerr"
.LASF122:
	.string	"WORD"
.LASF176:
	.string	"best"
.LASF170:
	.string	"line_cost"
.LASF109:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF114:
	.string	"error_one_per_line"
.LASF79:
	.string	"Version"
.LASF21:
	.string	"_IO_save_base"
.LASF197:
	.string	"max_width_option"
.LASF160:
	.string	"tab_target"
.LASF76:
	.string	"environ"
.LASF133:
	.string	"next_break"
.LASF198:
	.string	"goal_width_option"
.LASF32:
	.string	"_lock"
.LASF167:
	.string	"finish"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF46:
	.string	"stdout"
.LASF116:
	.string	"FADVISE_SEQUENTIAL"
.LASF74:
	.string	"sys_siglist"
.LASF184:
	.string	"get_prefix"
.LASF97:
	.string	"version_etc_copyright"
.LASF139:
	.string	"prefix"
.LASF177:
	.string	"saved_length"
.LASF196:
	.string	"optchar"
.LASF186:
	.string	"end_of_parabuf"
.LASF57:
	.string	"optarg"
.LASF164:
	.string	"indent"
.LASF72:
	.string	"getdate_err"
.LASF88:
	.string	"_ISspace"
.LASF58:
	.string	"optind"
.LASF157:
	.string	"last_line_length"
.LASF13:
	.string	"_IO_read_ptr"
.LASF9:
	.string	"__off64_t"
.LASF215:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF112:
	.string	"error_print_progname"
.LASF51:
	.string	"_sys_errlist"
.LASF208:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF54:
	.string	"time_t"
.LASF189:
	.string	"copy_rest"
.LASF155:
	.string	"next_char"
.LASF49:
	.string	"sys_errlist"
.LASF136:
	.string	"tagged"
.LASF24:
	.string	"_markers"
.LASF140:
	.string	"max_width"
.LASF151:
	.string	"tabs"
.LASF105:
	.string	"c_maybe_quoting_style"
.LASF134:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF207:
	.string	"node"
.LASF20:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF143:
	.string	"prefix_length"
.LASF199:
	.string	"file"
.LASF65:
	.string	"flag"
.LASF50:
	.string	"_sys_nerr"
.LASF141:
	.string	"prefix_full_length"
.LASF30:
	.string	"_vtable_offset"
.LASF69:
	.string	"tzname"
.LASF191:
	.string	"set_other_indent"
.LASF41:
	.string	"FILE"
.LASF120:
	.string	"FADVISE_RANDOM"
.LASF102:
	.string	"shell_escape_quoting_style"
.LASF117:
	.string	"FADVISE_NOREUSE"
.LASF110:
	.string	"quoting_style_args"
.LASF60:
	.string	"optopt"
.LASF70:
	.string	"daylight"
.LASF179:
	.string	"split_point"
.LASF53:
	.string	"long double"
.LASF125:
	.string	"length"
.LASF11:
	.string	"char"
.LASF118:
	.string	"FADVISE_DONTNEED"
.LASF183:
	.string	"get_space"
.LASF124:
	.string	"text"
.LASF1:
	.string	"unsigned int"
.LASF92:
	.string	"_IScntrl"
.LASF10:
	.string	"__time_t"
.LASF87:
	.string	"_ISxdigit"
.LASF108:
	.string	"clocale_quoting_style"
.LASF187:
	.string	"end_of_word"
.LASF84:
	.string	"_ISlower"
.LASF59:
	.string	"opterr"
.LASF128:
	.string	"period"
.LASF115:
	.string	"FADVISE_NORMAL"
.LASF29:
	.string	"_cur_column"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF206:
	.string	"infomap"
.LASF150:
	.string	"word_limit"
.LASF107:
	.string	"locale_quoting_style"
.LASF64:
	.string	"has_arg"
.LASF202:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF18:
	.string	"_IO_write_end"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF195:
	.string	"argv"
.LASF169:
	.string	"cost"
.LASF185:
	.string	"get_line"
.LASF161:
	.string	"put_space"
.LASF203:
	.string	"status"
.LASF214:
	.string	"/root/coreutils"
.LASF192:
	.string	"same_paragraph"
.LASF83:
	.string	"_ISupper"
.LASF181:
	.string	"best_break"
.LASF121:
	.string	"COST"
.LASF22:
	.string	"_IO_backup_base"
.LASF148:
	.string	"wptr"
.LASF113:
	.string	"error_message_count"
.LASF209:
	.string	"lc_messages"
.LASF135:
	.string	"crown"
.LASF194:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF175:
	.string	"wcost"
.LASF44:
	.string	"_IO_wide_data"
.LASF119:
	.string	"FADVISE_WILLNEED"
.LASF174:
	.string	"start"
.LASF154:
	.string	"other_indent"
.LASF145:
	.string	"in_column"
.LASF66:
	.string	"__tzname"
.LASF201:
	.string	"main"
.LASF149:
	.string	"unused_word_type"
.LASF204:
	.string	"emit_ancillary_info"
.LASF89:
	.string	"_ISprint"
.LASF163:
	.string	"put_line"
.LASF144:
	.string	"goal_width"
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
