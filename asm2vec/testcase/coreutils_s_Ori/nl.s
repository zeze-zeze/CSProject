	.file	"nl.c"
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
	.type	FORMAT_RIGHT_NOLZ, @object
	.size	FORMAT_RIGHT_NOLZ, 7
FORMAT_RIGHT_NOLZ:
	.string	"%*ld%s"
	.align 8
	.type	FORMAT_RIGHT_LZ, @object
	.size	FORMAT_RIGHT_LZ, 8
FORMAT_RIGHT_LZ:
	.string	"%0*ld%s"
	.align 8
	.type	FORMAT_LEFT, @object
	.size	FORMAT_LEFT, 8
FORMAT_LEFT:
	.string	"%-*ld%s"
	.type	DEFAULT_SECTION_DELIMITERS, @object
	.size	DEFAULT_SECTION_DELIMITERS, 3
DEFAULT_SECTION_DELIMITERS:
	.string	"\\:"
.LC20:
	.string	"t"
	.section	.data.rel.local,"aw"
	.align 8
	.type	body_type, @object
	.size	body_type, 8
body_type:
	.quad	.LC20
	.section	.rodata
.LC21:
	.string	"n"
	.section	.data.rel.local
	.align 8
	.type	header_type, @object
	.size	header_type, 8
header_type:
	.quad	.LC21
	.align 8
	.type	footer_type, @object
	.size	footer_type, 8
footer_type:
	.quad	.LC21
	.local	current_type
	.comm	current_type,8,8
	.local	body_regex
	.comm	body_regex,64,32
	.local	header_regex
	.comm	header_regex,64,32
	.local	footer_regex
	.comm	footer_regex,64,32
	.local	body_fastmap
	.comm	body_fastmap,256,32
	.local	header_fastmap
	.comm	header_fastmap,256,32
	.local	footer_fastmap
	.comm	footer_fastmap,256,32
	.local	current_regex
	.comm	current_regex,8,8
	.section	.rodata
.LC22:
	.string	"\t"
	.section	.data.rel.local
	.align 8
	.type	separator_str, @object
	.size	separator_str, 8
separator_str:
	.quad	.LC22
	.align 8
	.type	section_del, @object
	.size	section_del, 8
section_del:
	.quad	DEFAULT_SECTION_DELIMITERS
	.local	header_del
	.comm	header_del,8,8
	.local	header_del_len
	.comm	header_del_len,8,8
	.local	body_del
	.comm	body_del,8,8
	.local	body_del_len
	.comm	body_del_len,8,8
	.local	footer_del
	.comm	footer_del,8,8
	.local	footer_del_len
	.comm	footer_del_len,8,8
	.local	line_buf
	.comm	line_buf,24,16
	.local	print_no_line_fmt
	.comm	print_no_line_fmt,8,8
	.data
	.align 8
	.type	starting_line_number, @object
	.size	starting_line_number, 8
starting_line_number:
	.quad	1
	.align 8
	.type	page_incr, @object
	.size	page_incr, 8
page_incr:
	.quad	1
	.type	reset_numbers, @object
	.size	reset_numbers, 1
reset_numbers:
	.byte	1
	.align 8
	.type	blank_join, @object
	.size	blank_join, 8
blank_join:
	.quad	1
	.align 4
	.type	lineno_width, @object
	.size	lineno_width, 4
lineno_width:
	.long	6
	.section	.data.rel.local
	.align 8
	.type	lineno_format, @object
	.size	lineno_format, 8
lineno_format:
	.quad	FORMAT_RIGHT_NOLZ
	.local	line_no
	.comm	line_no,8,8
	.local	line_no_overflow
	.comm	line_no_overflow,1,1
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.section	.rodata
.LC23:
	.string	"header-numbering"
.LC24:
	.string	"body-numbering"
.LC25:
	.string	"footer-numbering"
.LC26:
	.string	"starting-line-number"
.LC27:
	.string	"line-increment"
.LC28:
	.string	"no-renumber"
.LC29:
	.string	"join-blank-lines"
.LC30:
	.string	"number-separator"
.LC31:
	.string	"number-width"
.LC32:
	.string	"number-format"
.LC33:
	.string	"section-delimiter"
.LC34:
	.string	"help"
.LC35:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 448
longopts:
	.quad	.LC23
	.long	1
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC24
	.long	1
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC25
	.long	1
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC26
	.long	1
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC27
	.long	1
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC29
	.long	1
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC30
	.long	1
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC31
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC32
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC33
	.long	1
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC35
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
.LC36:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC37:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC38:
	.string	"Write each FILE to standard output, with line numbers added.\n"
	.align 8
.LC39:
	.string	"  -b, --body-numbering=STYLE      use STYLE for numbering body lines\n  -d, --section-delimiter=CC      use CC for logical page delimiters\n  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines\n"
	.align 8
.LC40:
	.ascii	"  -h, --header-numbering=STYLE    use STYLE for numbering he"
	.ascii	"ader lines\n  -i, --line-increment=NUMBER     line number in"
	.ascii	"crement at each line\n  -l, --join-blank-lines=NUMBER   grou"
	.ascii	"p of NUM"
	.string	"BER empty lines counted as one\n  -n, --number-format=FORMAT      insert line numbers according to FORMAT\n  -p, --no-renumber               do not reset line numbers for each section\n  -s, --number-separator=STRING   add STRING after (possible) line number\n"
	.align 8
.LC41:
	.string	"  -v, --starting-line-number=NUMBER  first line number for each section\n  -w, --number-width=NUMBER       use NUMBER columns for line numbers\n"
	.align 8
.LC42:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC43:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC44:
	.string	"\nDefault options are: -bt -d'\\:' -fn -hn -i1 -l1 -n'rn' -s<TAB> -v1 -w6\n\nCC are two delimiter characters used to construct logical page delimiters;\na missing second character implies ':'.\n"
	.align 8
.LC45:
	.string	"\nSTYLE is one of:\n\n  a      number all lines\n  t      number only nonempty lines\n  n      number no lines\n  pBRE   number only lines that contain a match for the basic regular\n         expression, BRE\n"
	.align 8
.LC46:
	.string	"\nFORMAT is one of:\n\n  ln     left justified, no leading zeros\n  rn     right justified, no leading zeros\n  rz     right justified, leading zeros\n\n"
.LC47:
	.string	"nl"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/nl.c"
	.loc 2 174 1 is_stmt 1
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
	.loc 2 175 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 176 5
	movq	program_name(%rip), %rbx
	leaq	.LC36(%rip), %rdi
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
	.loc 2 179 7
	movq	program_name(%rip), %rbx
	.loc 2 179 15
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 179 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 183 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 187 7
	call	emit_stdin_note
	.loc 2 188 7
	call	emit_mandatory_arg_note
	.loc 2 190 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 195 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 203 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 207 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 208 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 209 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 216 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 226 7
	movq	stdout(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 235 7
	leaq	.LC47(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 237 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC48:
	.string	"%s"
	.text
	.type	build_type_arg, @function
build_type_arg:
.LFB47:
	.loc 2 246 1
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
	.loc 2 248 8
	movb	$1, -9(%rbp)
	.loc 2 250 11
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 250 3
	cmpl	$116, %eax
	je	.L16
	cmpl	$116, %eax
	jg	.L17
	cmpl	$112, %eax
	je	.L18
	cmpl	$112, %eax
	jg	.L17
	cmpl	$97, %eax
	je	.L16
	cmpl	$110, %eax
	jne	.L17
.L16:
	.loc 2 255 14
	movq	optarg(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 256 7
	jmp	.L19
.L18:
	.loc 2 258 22
	movq	optarg(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, optarg(%rip)
	.loc 2 258 14
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 2 259 22
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 260 25
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 261 23
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 262 25
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 2 263 25
	movq	$710, rpl_re_syntax_options(%rip)
	.loc 2 265 16
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	optarg(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_re_compile_pattern@PLT
	movq	%rax, -8(%rbp)
	.loc 2 266 10
	cmpq	$0, -8(%rbp)
	je	.L22
.LBB2:
	.loc 2 267 9
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC48(%rip), %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L17:
.LBE2:
	.loc 2 270 12
	movb	$0, -9(%rbp)
	.loc 2 271 7
	jmp	.L19
.L22:
	.loc 2 268 7
	nop
.L19:
	.loc 2 273 10
	movzbl	-9(%rbp), %eax
	.loc 2 274 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	build_type_arg, .-build_type_arg
	.section	.rodata
.LC49:
	.string	"line number overflow"
	.text
	.type	print_lineno, @function
print_lineno:
.LFB48:
	.loc 2 280 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 281 7
	movzbl	line_no_overflow(%rip), %eax
	.loc 2 281 6
	testb	%al, %al
	je	.L24
.LBB3:
	.loc 2 282 5
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L24:
.LBE3:
	.loc 2 284 3
	movq	separator_str(%rip), %rcx
	movq	line_no(%rip), %rdx
	movl	lineno_width(%rip), %esi
	movq	lineno_format(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 286 7
	movq	line_no(%rip), %rdx
	movq	page_incr(%rip), %rax
	movl	$0, %ecx
	addq	%rdx, %rax
	jno	.L25
	movl	$1, %ecx
.L25:
	movq	%rax, line_no(%rip)
	movq	%rcx, %rax
	andl	$1, %eax
	.loc 2 286 6
	testb	%al, %al
	je	.L28
	.loc 2 287 22
	movb	$1, line_no_overflow(%rip)
.L28:
	.loc 2 288 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	print_lineno, .-print_lineno
	.type	reset_lineno, @function
reset_lineno:
.LFB49:
	.loc 2 292 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 293 7
	movzbl	reset_numbers(%rip), %eax
	.loc 2 293 6
	testb	%al, %al
	je	.L31
	.loc 2 295 15
	movq	starting_line_number(%rip), %rax
	movq	%rax, line_no(%rip)
	.loc 2 296 24
	movb	$0, line_no_overflow(%rip)
.L31:
	.loc 2 298 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	reset_lineno, .-reset_lineno
	.type	proc_header, @function
proc_header:
.LFB50:
	.loc 2 304 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 305 16
	movq	header_type(%rip), %rax
	movq	%rax, current_type(%rip)
	.loc 2 306 17
	leaq	header_regex(%rip), %rax
	movq	%rax, current_regex(%rip)
	.loc 2 307 3
	call	reset_lineno
	.loc 2 308 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 309 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	proc_header, .-proc_header
	.type	proc_body, @function
proc_body:
.LFB51:
	.loc 2 315 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 316 16
	movq	body_type(%rip), %rax
	movq	%rax, current_type(%rip)
	.loc 2 317 17
	leaq	body_regex(%rip), %rax
	movq	%rax, current_regex(%rip)
	.loc 2 318 3
	call	reset_lineno
	.loc 2 319 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 320 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	proc_body, .-proc_body
	.type	proc_footer, @function
proc_footer:
.LFB52:
	.loc 2 326 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 327 16
	movq	footer_type(%rip), %rax
	movq	%rax, current_type(%rip)
	.loc 2 328 17
	leaq	footer_regex(%rip), %rax
	movq	%rax, current_regex(%rip)
	.loc 2 329 3
	call	reset_lineno
	.loc 2 330 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 331 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	proc_footer, .-proc_footer
	.section	.rodata
	.align 8
.LC50:
	.string	"error in regular expression search"
	.text
	.type	proc_text, @function
proc_text:
.LFB53:
	.loc 2 337 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 2 340 11
	movq	current_type(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 340 3
	cmpl	$116, %eax
	je	.L36
	cmpl	$116, %eax
	jg	.L37
	cmpl	$112, %eax
	je	.L38
	cmpl	$112, %eax
	jg	.L37
	cmpl	$97, %eax
	je	.L39
	cmpl	$110, %eax
	je	.L40
	jmp	.L37
.L39:
	.loc 2 343 22
	movq	blank_join(%rip), %rax
	.loc 2 343 10
	cmpq	$1, %rax
	jle	.L41
	.loc 2 345 27
	movq	8+line_buf(%rip), %rax
	.loc 2 345 14
	cmpq	$1, %rax
	ja	.L42
	.loc 2 345 38 discriminator 1
	movq	blank_lines.6476(%rip), %rax
	addq	$1, %rax
	.loc 2 345 35 discriminator 1
	movq	%rax, blank_lines.6476(%rip)
	.loc 2 345 38 discriminator 1
	movq	blank_lines.6476(%rip), %rdx
	.loc 2 345 52 discriminator 1
	movq	blank_join(%rip), %rax
	.loc 2 345 35 discriminator 1
	cmpq	%rax, %rdx
	jne	.L43
.L42:
	.loc 2 347 15
	call	print_lineno
	.loc 2 348 27
	movq	$0, blank_lines.6476(%rip)
	.loc 2 355 7
	jmp	.L37
.L43:
	.loc 2 351 13
	movq	stdout(%rip), %rdx
	movq	print_no_line_fmt(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 355 7
	jmp	.L37
.L41:
	.loc 2 354 9
	call	print_lineno
	.loc 2 355 7
	jmp	.L37
.L36:
	.loc 2 357 23
	movq	8+line_buf(%rip), %rax
	.loc 2 357 10
	cmpq	$1, %rax
	jbe	.L46
	.loc 2 358 9
	call	print_lineno
	.loc 2 361 7
	jmp	.L37
.L46:
	.loc 2 360 9
	movq	stdout(%rip), %rdx
	movq	print_no_line_fmt(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 361 7
	jmp	.L37
.L40:
	.loc 2 363 7
	movq	stdout(%rip), %rdx
	movq	print_no_line_fmt(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 364 7
	jmp	.L37
.L38:
	.loc 2 367 37
	movq	8+line_buf(%rip), %rax
	.loc 2 367 45
	subq	$1, %rax
	.loc 2 366 15
	movq	%rax, %rcx
	.loc 2 366 66
	movq	8+line_buf(%rip), %rax
	.loc 2 366 74
	subq	$1, %rax
	.loc 2 366 15
	movq	%rax, %rdx
	.loc 2 366 49
	movq	16+line_buf(%rip), %rsi
	.loc 2 366 15
	movq	current_regex(%rip), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	rpl_re_search@PLT
	cmpq	$-2, %rax
	je	.L48
	cmpq	$-1, %rax
	je	.L49
	jmp	.L51
.L48:
.LBB4:
	.loc 2 370 11
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L49:
	.loc 2 373 11
	movq	stdout(%rip), %rdx
	movq	print_no_line_fmt(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 374 11
	jmp	.L37
.L51:
	.loc 2 377 11
	call	print_lineno
	.loc 2 378 11
	nop
.L37:
.LBE4:
	.loc 2 381 3
	movq	stdout(%rip), %rcx
	movq	8+line_buf(%rip), %rdx
	movq	16+line_buf(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 382 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	proc_text, .-proc_text
	.type	check_section, @function
check_section:
.LFB54:
	.loc 2 388 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 389 24
	movq	8+line_buf(%rip), %rax
	.loc 2 389 10
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc 2 391 6
	cmpq	$1, -8(%rbp)
	jbe	.L53
	.loc 2 391 18 discriminator 1
	movq	section_del(%rip), %rcx
	.loc 2 391 34 discriminator 1
	movq	16+line_buf(%rip), %rax
	.loc 2 391 18 discriminator 1
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 2 391 15 discriminator 1
	testl	%eax, %eax
	je	.L54
.L53:
	.loc 2 392 12
	movl	$3, %eax
	jmp	.L55
.L54:
	.loc 2 393 11
	movq	header_del_len(%rip), %rax
	.loc 2 393 6
	cmpq	%rax, -8(%rbp)
	jne	.L56
	.loc 2 394 11
	movq	header_del_len(%rip), %rdx
	movq	header_del(%rip), %rcx
	.loc 2 394 27
	movq	16+line_buf(%rip), %rax
	.loc 2 394 11
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 2 394 7
	testl	%eax, %eax
	jne	.L56
	.loc 2 395 12
	movl	$0, %eax
	jmp	.L55
.L56:
	.loc 2 396 11
	movq	body_del_len(%rip), %rax
	.loc 2 396 6
	cmpq	%rax, -8(%rbp)
	jne	.L57
	.loc 2 397 11
	movq	body_del_len(%rip), %rdx
	movq	body_del(%rip), %rcx
	.loc 2 397 27
	movq	16+line_buf(%rip), %rax
	.loc 2 397 11
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 2 397 7
	testl	%eax, %eax
	jne	.L57
	.loc 2 398 12
	movl	$1, %eax
	jmp	.L55
.L57:
	.loc 2 399 11
	movq	footer_del_len(%rip), %rax
	.loc 2 399 6
	cmpq	%rax, -8(%rbp)
	jne	.L58
	.loc 2 400 11
	movq	footer_del_len(%rip), %rdx
	movq	footer_del(%rip), %rcx
	.loc 2 400 27
	movq	16+line_buf(%rip), %rax
	.loc 2 400 11
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 2 400 7
	testl	%eax, %eax
	jne	.L58
	.loc 2 401 12
	movl	$2, %eax
	jmp	.L55
.L58:
	.loc 2 402 10
	movl	$3, %eax
.L55:
	.loc 2 403 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	check_section, .-check_section
	.type	process_file, @function
process_file:
.LFB55:
	.loc 2 409 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 410 9
	jmp	.L60
.L65:
	.loc 2 412 15
	call	check_section
	.loc 2 412 7
	cmpl	$3, %eax
	je	.L61
	cmpl	$3, %eax
	ja	.L60
	cmpl	$2, %eax
	je	.L62
	cmpl	$2, %eax
	ja	.L60
	testl	%eax, %eax
	je	.L63
	cmpl	$1, %eax
	je	.L64
	jmp	.L60
.L63:
	.loc 2 415 11
	call	proc_header
	.loc 2 416 11
	jmp	.L60
.L64:
	.loc 2 418 11
	call	proc_body
	.loc 2 419 11
	jmp	.L60
.L62:
	.loc 2 421 11
	call	proc_footer
	.loc 2 422 11
	jmp	.L60
.L61:
	.loc 2 424 11
	call	proc_text
	.loc 2 425 11
	nop
.L60:
	.loc 2 410 10
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	line_buf(%rip), %rdi
	call	readlinebuffer@PLT
	.loc 2 410 9
	testq	%rax, %rax
	jne	.L65
	.loc 2 428 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	process_file, .-process_file
	.section	.rodata
.LC51:
	.string	"-"
.LC52:
	.string	"r"
	.text
	.type	nl_file, @function
nl_file:
.LFB56:
	.loc 2 435 1
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
	.loc 2 438 7
	movq	-40(%rbp), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 438 6
	testl	%eax, %eax
	jne	.L67
	.loc 2 440 23
	movb	$1, have_read_stdin(%rip)
	.loc 2 441 14
	movq	stdin(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L68
.L67:
	.loc 2 445 16
	movq	-40(%rbp), %rax
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	.loc 2 446 10
	cmpq	$0, -24(%rbp)
	jne	.L68
	.loc 2 448 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 448 21
	call	__errno_location@PLT
	.loc 2 448 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC48(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 449 18
	movl	$0, %eax
	jmp	.L69
.L68:
	.loc 2 453 3
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 455 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	process_file
	.loc 2 457 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 457 6
	testl	%eax, %eax
	je	.L70
	.loc 2 459 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 459 17
	call	__errno_location@PLT
	.loc 2 459 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC48(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 460 14
	movl	$0, %eax
	jmp	.L69
.L70:
	.loc 2 462 7
	movq	-40(%rbp), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 462 6
	testl	%eax, %eax
	jne	.L71
	.loc 2 463 5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	jmp	.L72
.L71:
	.loc 2 464 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 464 11
	cmpl	$-1, %eax
	jne	.L72
	.loc 2 466 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 466 17
	call	__errno_location@PLT
	.loc 2 466 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC48(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 467 14
	movl	$0, %eax
	jmp	.L69
.L72:
	.loc 2 469 10
	movl	$1, %eax
.L69:
	.loc 2 470 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	nl_file, .-nl_file
	.section	.rodata
.LC53:
	.string	"/usr/local/share/locale"
	.align 8
.LC54:
	.string	"invalid header numbering style: %s"
	.align 8
.LC55:
	.string	"invalid body numbering style: %s"
	.align 8
.LC56:
	.string	"invalid footer numbering style: %s"
.LC57:
	.string	"invalid starting line number"
.LC58:
	.string	"invalid line number increment"
	.align 8
.LC59:
	.string	"invalid line number of blank lines"
	.align 8
.LC60:
	.string	"invalid line number field width"
.LC61:
	.string	"ln"
.LC62:
	.string	"rn"
.LC63:
	.string	"rz"
	.align 8
.LC64:
	.string	"invalid line numbering format: %s"
.LC65:
	.string	"David MacKenzie"
.LC66:
	.string	"Scott Bartram"
.LC67:
	.string	"h:b:f:v:i:pl:s:w:n:d:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB57:
	.loc 2 474 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 477 8
	movb	$1, -29(%rbp)
	.loc 2 480 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 481 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 482 3
	leaq	.LC53(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 483 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 485 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 487 19
	movb	$0, have_read_stdin(%rip)
	.loc 2 489 9
	jmp	.L74
.L98:
	.loc 2 492 7
	cmpl	$119, -28(%rbp)
	jg	.L75
	cmpl	$98, -28(%rbp)
	jge	.L76
	cmpl	$-131, -28(%rbp)
	je	.L77
	cmpl	$-130, -28(%rbp)
	je	.L78
	jmp	.L75
.L76:
	movl	-28(%rbp), %eax
	subl	$98, %eax
	cmpl	$21, %eax
	ja	.L75
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L80(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L80(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L80:
	.long	.L90-.L80
	.long	.L75-.L80
	.long	.L89-.L80
	.long	.L75-.L80
	.long	.L88-.L80
	.long	.L75-.L80
	.long	.L87-.L80
	.long	.L86-.L80
	.long	.L75-.L80
	.long	.L75-.L80
	.long	.L85-.L80
	.long	.L75-.L80
	.long	.L84-.L80
	.long	.L75-.L80
	.long	.L83-.L80
	.long	.L75-.L80
	.long	.L75-.L80
	.long	.L82-.L80
	.long	.L75-.L80
	.long	.L75-.L80
	.long	.L81-.L80
	.long	.L79-.L80
	.text
.L87:
	.loc 2 495 17
	leaq	header_fastmap(%rip), %rdx
	leaq	header_regex(%rip), %rsi
	leaq	header_type(%rip), %rdi
	call	build_type_arg
	.loc 2 495 15
	xorl	$1, %eax
	.loc 2 495 14
	testb	%al, %al
	je	.L74
	.loc 2 497 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 497 28
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	.loc 2 497 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 499 18
	movb	$0, -29(%rbp)
	.loc 2 501 11
	jmp	.L74
.L90:
	.loc 2 503 17
	leaq	body_fastmap(%rip), %rdx
	leaq	body_regex(%rip), %rsi
	leaq	body_type(%rip), %rdi
	call	build_type_arg
	.loc 2 503 15
	xorl	$1, %eax
	.loc 2 503 14
	testb	%al, %al
	je	.L74
	.loc 2 505 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 505 28
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	.loc 2 505 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 507 18
	movb	$0, -29(%rbp)
	.loc 2 509 11
	jmp	.L74
.L88:
	.loc 2 511 17
	leaq	footer_fastmap(%rip), %rdx
	leaq	footer_regex(%rip), %rsi
	leaq	footer_type(%rip), %rdi
	call	build_type_arg
	.loc 2 511 15
	xorl	$1, %eax
	.loc 2 511 14
	testb	%al, %al
	je	.L74
	.loc 2 513 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 513 28
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	.loc 2 513 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 515 18
	movb	$0, -29(%rbp)
	.loc 2 517 11
	jmp	.L74
.L81:
	.loc 2 520 46
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 519 34
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movabsq	$9223372036854775807, %rdx
	movabsq	$-9223372036854775808, %rsi
	movq	%rax, %rdi
	call	xdectoimax@PLT
	.loc 2 519 32
	movq	%rax, starting_line_number(%rip)
	.loc 2 522 11
	jmp	.L74
.L86:
	.loc 2 525 35
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 524 23
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movabsq	$9223372036854775807, %rdx
	movabsq	$-9223372036854775808, %rsi
	movq	%rax, %rdi
	call	xdectoimax@PLT
	.loc 2 524 21
	movq	%rax, page_incr(%rip)
	.loc 2 526 11
	jmp	.L74
.L83:
	.loc 2 528 25
	movb	$0, reset_numbers(%rip)
	.loc 2 529 11
	jmp	.L74
.L85:
	.loc 2 532 36
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 531 24
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movabsq	$9223372036854775807, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	xdectoimax@PLT
	.loc 2 531 22
	movq	%rax, blank_join(%rip)
	.loc 2 533 11
	jmp	.L74
.L82:
	.loc 2 535 25
	movq	optarg(%rip), %rax
	movq	%rax, separator_str(%rip)
	.loc 2 536 11
	jmp	.L74
.L79:
	.loc 2 539 38
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 538 26
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movl	$2147483647, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	xdectoimax@PLT
	.loc 2 538 24
	movl	%eax, lineno_width(%rip)
	.loc 2 540 11
	jmp	.L74
.L84:
	.loc 2 542 15
	movq	optarg(%rip), %rax
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 542 14
	testl	%eax, %eax
	jne	.L94
	.loc 2 543 27
	leaq	FORMAT_LEFT(%rip), %rax
	movq	%rax, lineno_format(%rip)
	jmp	.L74
.L94:
	.loc 2 544 20
	movq	optarg(%rip), %rax
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 544 19
	testl	%eax, %eax
	jne	.L96
	.loc 2 545 27
	leaq	FORMAT_RIGHT_NOLZ(%rip), %rax
	movq	%rax, lineno_format(%rip)
	jmp	.L74
.L96:
	.loc 2 546 20
	movq	optarg(%rip), %rax
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 546 19
	testl	%eax, %eax
	jne	.L97
	.loc 2 547 27
	leaq	FORMAT_RIGHT_LZ(%rip), %rax
	movq	%rax, lineno_format(%rip)
	jmp	.L74
.L97:
	.loc 2 550 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 550 28
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	.loc 2 550 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 552 18
	movb	$0, -29(%rbp)
	.loc 2 554 11
	jmp	.L74
.L89:
	.loc 2 556 23
	movq	optarg(%rip), %rax
	movq	%rax, section_del(%rip)
	.loc 2 557 11
	jmp	.L74
.L78:
	.loc 2 558 9
	movl	$0, %edi
	call	usage
.L77:
	.loc 2 559 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC65(%rip), %r9
	leaq	.LC66(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L75:
	.loc 2 561 14
	movb	$0, -29(%rbp)
	.loc 2 562 11
	nop
.L74:
	.loc 2 489 15
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -28(%rbp)
	.loc 2 489 9
	cmpl	$-1, -28(%rbp)
	jne	.L98
	.loc 2 566 7
	movzbl	-29(%rbp), %eax
	xorl	$1, %eax
	.loc 2 566 6
	testb	%al, %al
	je	.L99
	.loc 2 567 5
	movl	$1, %edi
	call	usage
.L99:
	.loc 2 570 9
	movq	section_del(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	.loc 2 572 24
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	.loc 2 572 18
	movq	%rax, header_del_len(%rip)
	.loc 2 573 16
	movq	header_del_len(%rip), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 573 14
	movq	%rax, header_del(%rip)
	.loc 2 574 3
	movq	section_del(%rip), %rbx
	movq	section_del(%rip), %r12
	movq	section_del(%rip), %rdx
	movq	header_del(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 2 576 22
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	.loc 2 576 16
	movq	%rax, body_del_len(%rip)
	.loc 2 577 14
	movq	body_del_len(%rip), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 577 12
	movq	%rax, body_del(%rip)
	.loc 2 578 3
	movq	section_del(%rip), %rbx
	movq	section_del(%rip), %rdx
	movq	body_del(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 2 580 18
	movq	-24(%rbp), %rax
	movq	%rax, footer_del_len(%rip)
	.loc 2 581 16
	movq	footer_del_len(%rip), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 581 14
	movq	%rax, footer_del(%rip)
	.loc 2 582 3
	movq	section_del(%rip), %rdx
	movq	footer_del(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 2 585 3
	leaq	line_buf(%rip), %rdi
	call	initbuffer@PLT
	.loc 2 588 9
	movq	separator_str(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	.loc 2 589 45
	movl	lineno_width(%rip), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 589 23
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 589 21
	movq	%rax, print_no_line_fmt(%rip)
	.loc 2 590 3
	movl	lineno_width(%rip), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	print_no_line_fmt(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 591 20
	movq	print_no_line_fmt(%rip), %rax
	.loc 2 591 34
	movl	lineno_width(%rip), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 591 20
	addq	%rdx, %rax
	.loc 2 591 41
	movb	$0, (%rax)
	.loc 2 593 11
	movq	starting_line_number(%rip), %rax
	movq	%rax, line_no(%rip)
	.loc 2 594 16
	movq	body_type(%rip), %rax
	movq	%rax, current_type(%rip)
	.loc 2 595 17
	leaq	body_regex(%rip), %rax
	movq	%rax, current_regex(%rip)
	.loc 2 599 14
	movl	optind(%rip), %eax
	.loc 2 599 6
	cmpl	%eax, -36(%rbp)
	jne	.L102
	.loc 2 600 10
	leaq	.LC51(%rip), %rdi
	call	nl_file
	movb	%al, -29(%rbp)
	jmp	.L101
.L103:
	.loc 2 603 26 discriminator 2
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 603 13 discriminator 2
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	nl_file
	.loc 2 603 10 discriminator 2
	movzbl	-29(%rbp), %edx
	.loc 2 603 13 discriminator 2
	movzbl	%al, %eax
	.loc 2 603 10 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -29(%rbp)
	.loc 2 602 33 discriminator 2
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L102:
	.loc 2 602 19 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 602 5 discriminator 1
	cmpl	%eax, -36(%rbp)
	jg	.L103
.L101:
	.loc 2 605 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 605 6
	testb	%al, %al
	je	.L104
	.loc 2 605 26 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 605 23 discriminator 1
	cmpl	$-1, %eax
	jne	.L104
.LBB5:
	.loc 2 606 5
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC51(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L104:
.LBE5:
	.loc 2 608 28
	movzbl	-29(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 609 1
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	main, .-main
	.local	blank_lines.6476
	.comm	blank_lines.6476,8,8
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
	.file 24 "./lib/regex.h"
	.file 25 "./lib/error.h"
	.file 26 "./lib/fadvise.h"
	.file 27 "./lib/linebuffer.h"
	.file 28 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xebc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF207
	.byte	0xc
	.long	.LASF208
	.long	.LASF209
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
	.long	.LASF62
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x241
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xa8
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xa8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xa8
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xa8
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xa8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xa8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xa8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xa8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xa8
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x25a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x260
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x266
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x276
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x281
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x28c
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x260
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x292
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xba
	.uleb128 0xb
	.long	.LASF210
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x255
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0xd
	.long	0xae
	.long	0x276
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x27c
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x287
	.uleb128 0xd
	.long	0xae
	.long	0x2a2
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb5
	.uleb128 0x8
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2b9
	.uleb128 0x7
	.byte	0x8
	.long	0x241
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2a8
	.long	0x2ee
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2e3
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2ee
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
	.long	0x2ee
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
	.uleb128 0x9
	.long	.LASF63
	.byte	0x20
	.byte	0xc
	.byte	0x32
	.byte	0x8
	.long	0x3b7
	.uleb128 0xa
	.long	.LASF64
	.byte	0xc
	.byte	0x34
	.byte	0xf
	.long	0x2a2
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x38
	.byte	0x8
	.long	0x3bc
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
	.long	0x375
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0xa8
	.long	0x3d2
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF67
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3c2
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
	.long	0x3c2
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
	.long	0x427
	.uleb128 0xd
	.long	0x2a8
	.long	0x43e
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x42e
	.uleb128 0x11
	.long	.LASF74
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x43e
	.uleb128 0x11
	.long	.LASF75
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x43e
	.uleb128 0x11
	.long	.LASF76
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x46a
	.uleb128 0x7
	.byte	0x8
	.long	0xa8
	.uleb128 0x11
	.long	.LASF77
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x46a
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
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF81
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0xd
	.long	0xae
	.long	0x4bd
	.uleb128 0xe
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x13
	.byte	0x65
	.byte	0x15
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
	.uleb128 0xd
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
	.long	0x2a2
	.uleb128 0x19
	.long	.LASF139
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
	.long	0x2ee
	.uleb128 0xd
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
	.uleb128 0x2
	.long	.LASF102
	.byte	0x18
	.byte	0x31
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.long	.LASF103
	.byte	0x18
	.byte	0x48
	.byte	0x1b
	.long	0x39
	.uleb128 0xf
	.long	.LASF104
	.byte	0x18
	.byte	0xd3
	.byte	0x15
	.long	0x5cc
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x40
	.byte	0x18
	.value	0x19d
	.byte	0x8
	.long	0x6cc
	.uleb128 0x1b
	.long	.LASF106
	.byte	0x18
	.value	0x1a1
	.byte	0x14
	.long	0x6d1
	.byte	0
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x18
	.value	0x1a4
	.byte	0x14
	.long	0x5c0
	.byte	0x8
	.uleb128 0x1b
	.long	.LASF108
	.byte	0x18
	.value	0x1a7
	.byte	0x14
	.long	0x5c0
	.byte	0x10
	.uleb128 0x1b
	.long	.LASF109
	.byte	0x18
	.value	0x1aa
	.byte	0x10
	.long	0x5cc
	.byte	0x18
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x18
	.value	0x1af
	.byte	0x9
	.long	0xa8
	.byte	0x20
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x18
	.value	0x1b5
	.byte	0x17
	.long	0x6d7
	.byte	0x28
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x18
	.value	0x1b8
	.byte	0xa
	.long	0x2d
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF113
	.byte	0x18
	.value	0x1be
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x18
	.value	0x1c9
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x18
	.value	0x1cd
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x18
	.value	0x1d1
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x18
	.value	0x1d5
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x18
	.value	0x1d8
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x18
	.value	0x1db
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.long	.LASF120
	.uleb128 0x7
	.byte	0x8
	.long	0x6cc
	.uleb128 0x7
	.byte	0x8
	.long	0x49
	.uleb128 0xf
	.long	.LASF121
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x428
	.uleb128 0xf
	.long	.LASF122
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF123
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x2d
	.byte	0xe
	.long	0x734
	.uleb128 0x16
	.long	.LASF124
	.byte	0
	.uleb128 0x16
	.long	.LASF125
	.byte	0x2
	.uleb128 0x16
	.long	.LASF126
	.byte	0x5
	.uleb128 0x16
	.long	.LASF127
	.byte	0x4
	.uleb128 0x16
	.long	.LASF128
	.byte	0x3
	.uleb128 0x16
	.long	.LASF129
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF130
	.byte	0x18
	.byte	0x1b
	.byte	0x1a
	.byte	0x8
	.long	0x769
	.uleb128 0xa
	.long	.LASF131
	.byte	0x1b
	.byte	0x1c
	.byte	0xa
	.long	0x2d
	.byte	0
	.uleb128 0xa
	.long	.LASF132
	.byte	0x1b
	.byte	0x1d
	.byte	0xa
	.long	0x2d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF106
	.byte	0x1b
	.byte	0x1e
	.byte	0x9
	.long	0xa8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	.LASF133
	.uleb128 0xf
	.long	.LASF134
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x769
	.uleb128 0xd
	.long	0xb5
	.long	0x78a
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x77a
	.uleb128 0x1d
	.long	.LASF135
	.byte	0x2
	.byte	0x30
	.byte	0x13
	.long	0x78a
	.uleb128 0x9
	.byte	0x3
	.quad	FORMAT_RIGHT_NOLZ
	.uleb128 0xd
	.long	0xb5
	.long	0x7b5
	.uleb128 0xe
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x7a5
	.uleb128 0x1d
	.long	.LASF136
	.byte	0x2
	.byte	0x33
	.byte	0x13
	.long	0x7b5
	.uleb128 0x9
	.byte	0x3
	.quad	FORMAT_RIGHT_LZ
	.uleb128 0x1d
	.long	.LASF137
	.byte	0x2
	.byte	0x36
	.byte	0x13
	.long	0x7b5
	.uleb128 0x9
	.byte	0x3
	.quad	FORMAT_LEFT
	.uleb128 0xd
	.long	0xb5
	.long	0x7f6
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x7e6
	.uleb128 0x1d
	.long	.LASF138
	.byte	0x2
	.byte	0x39
	.byte	0x13
	.long	0x7f6
	.uleb128 0x9
	.byte	0x3
	.quad	DEFAULT_SECTION_DELIMITERS
	.uleb128 0x19
	.long	.LASF140
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x3d
	.byte	0x6
	.long	0x83c
	.uleb128 0x16
	.long	.LASF141
	.byte	0
	.uleb128 0x16
	.long	.LASF142
	.byte	0x1
	.uleb128 0x16
	.long	.LASF143
	.byte	0x2
	.uleb128 0x16
	.long	.LASF144
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.long	.LASF145
	.byte	0x2
	.byte	0x43
	.byte	0x14
	.long	0x2a2
	.uleb128 0x9
	.byte	0x3
	.quad	body_type
	.uleb128 0x1d
	.long	.LASF146
	.byte	0x2
	.byte	0x46
	.byte	0x14
	.long	0x2a2
	.uleb128 0x9
	.byte	0x3
	.quad	header_type
	.uleb128 0x1d
	.long	.LASF147
	.byte	0x2
	.byte	0x49
	.byte	0x14
	.long	0x2a2
	.uleb128 0x9
	.byte	0x3
	.quad	footer_type
	.uleb128 0x1d
	.long	.LASF148
	.byte	0x2
	.byte	0x4c
	.byte	0x14
	.long	0x2a2
	.uleb128 0x9
	.byte	0x3
	.quad	current_type
	.uleb128 0x1d
	.long	.LASF149
	.byte	0x2
	.byte	0x4f
	.byte	0x21
	.long	0x5e4
	.uleb128 0x9
	.byte	0x3
	.quad	body_regex
	.uleb128 0x1d
	.long	.LASF150
	.byte	0x2
	.byte	0x52
	.byte	0x21
	.long	0x5e4
	.uleb128 0x9
	.byte	0x3
	.quad	header_regex
	.uleb128 0x1d
	.long	.LASF151
	.byte	0x2
	.byte	0x55
	.byte	0x21
	.long	0x5e4
	.uleb128 0x9
	.byte	0x3
	.quad	footer_regex
	.uleb128 0x1d
	.long	.LASF152
	.byte	0x2
	.byte	0x58
	.byte	0xd
	.long	0x4ad
	.uleb128 0x9
	.byte	0x3
	.quad	body_fastmap
	.uleb128 0x1d
	.long	.LASF153
	.byte	0x2
	.byte	0x59
	.byte	0xd
	.long	0x4ad
	.uleb128 0x9
	.byte	0x3
	.quad	header_fastmap
	.uleb128 0x1d
	.long	.LASF154
	.byte	0x2
	.byte	0x5a
	.byte	0xd
	.long	0x4ad
	.uleb128 0x9
	.byte	0x3
	.quad	footer_fastmap
	.uleb128 0x1d
	.long	.LASF155
	.byte	0x2
	.byte	0x5d
	.byte	0x22
	.long	0x92e
	.uleb128 0x9
	.byte	0x3
	.quad	current_regex
	.uleb128 0x7
	.byte	0x8
	.long	0x5e4
	.uleb128 0x1d
	.long	.LASF156
	.byte	0x2
	.byte	0x60
	.byte	0x14
	.long	0x2a2
	.uleb128 0x9
	.byte	0x3
	.quad	separator_str
	.uleb128 0x1d
	.long	.LASF157
	.byte	0x2
	.byte	0x63
	.byte	0x14
	.long	0x2a2
	.uleb128 0x9
	.byte	0x3
	.quad	section_del
	.uleb128 0x1d
	.long	.LASF158
	.byte	0x2
	.byte	0x66
	.byte	0xe
	.long	0xa8
	.uleb128 0x9
	.byte	0x3
	.quad	header_del
	.uleb128 0x1d
	.long	.LASF159
	.byte	0x2
	.byte	0x69
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	header_del_len
	.uleb128 0x1d
	.long	.LASF160
	.byte	0x2
	.byte	0x6c
	.byte	0xe
	.long	0xa8
	.uleb128 0x9
	.byte	0x3
	.quad	body_del
	.uleb128 0x1d
	.long	.LASF161
	.byte	0x2
	.byte	0x6f
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	body_del_len
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x2
	.byte	0x72
	.byte	0xe
	.long	0xa8
	.uleb128 0x9
	.byte	0x3
	.quad	footer_del
	.uleb128 0x1d
	.long	.LASF163
	.byte	0x2
	.byte	0x75
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	footer_del_len
	.uleb128 0x1d
	.long	.LASF164
	.byte	0x2
	.byte	0x78
	.byte	0x1a
	.long	0x734
	.uleb128 0x9
	.byte	0x3
	.quad	line_buf
	.uleb128 0x1d
	.long	.LASF165
	.byte	0x2
	.byte	0x7b
	.byte	0xe
	.long	0xa8
	.uleb128 0x9
	.byte	0x3
	.quad	print_no_line_fmt
	.uleb128 0x1d
	.long	.LASF166
	.byte	0x2
	.byte	0x7e
	.byte	0x11
	.long	0x4bd
	.uleb128 0x9
	.byte	0x3
	.quad	starting_line_number
	.uleb128 0x1d
	.long	.LASF167
	.byte	0x2
	.byte	0x81
	.byte	0x11
	.long	0x4bd
	.uleb128 0x9
	.byte	0x3
	.quad	page_incr
	.uleb128 0x1d
	.long	.LASF168
	.byte	0x2
	.byte	0x84
	.byte	0xd
	.long	0xa52
	.uleb128 0x9
	.byte	0x3
	.quad	reset_numbers
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF169
	.uleb128 0x1d
	.long	.LASF170
	.byte	0x2
	.byte	0x87
	.byte	0x11
	.long	0x4bd
	.uleb128 0x9
	.byte	0x3
	.quad	blank_join
	.uleb128 0x1d
	.long	.LASF171
	.byte	0x2
	.byte	0x8a
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	lineno_width
	.uleb128 0x1d
	.long	.LASF172
	.byte	0x2
	.byte	0x8d
	.byte	0x14
	.long	0x2a2
	.uleb128 0x9
	.byte	0x3
	.quad	lineno_format
	.uleb128 0x1d
	.long	.LASF173
	.byte	0x2
	.byte	0x90
	.byte	0x11
	.long	0x4bd
	.uleb128 0x9
	.byte	0x3
	.quad	line_no
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x2
	.byte	0x93
	.byte	0xd
	.long	0xa52
	.uleb128 0x9
	.byte	0x3
	.quad	line_no_overflow
	.uleb128 0x1d
	.long	.LASF175
	.byte	0x2
	.byte	0x96
	.byte	0xd
	.long	0xa52
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0xd
	.long	0x3b7
	.long	0xaed
	.uleb128 0xe
	.long	0x39
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.long	0xadd
	.uleb128 0x1d
	.long	.LASF176
	.byte	0x2
	.byte	0x98
	.byte	0x1c
	.long	0xaed
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1e
	.long	.LASF196
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x65
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xb8a
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x2
	.value	0x1d9
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	.LASF178
	.byte	0x2
	.value	0x1d9
	.byte	0x18
	.long	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"c"
	.byte	0x2
	.value	0x1db
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.string	"len"
	.byte	0x2
	.value	0x1dc
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"ok"
	.byte	0x2
	.value	0x1dd
	.byte	0x8
	.long	0xa52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0x22
	.long	.LASF181
	.byte	0x2
	.value	0x1b2
	.byte	0x1
	.long	0xa52
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xbce
	.uleb128 0x1f
	.long	.LASF179
	.byte	0x2
	.value	0x1b2
	.byte	0x16
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF180
	.byte	0x2
	.value	0x1b4
	.byte	0x9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.long	.LASF183
	.byte	0x2
	.value	0x198
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xbfd
	.uleb128 0x25
	.string	"fp"
	.byte	0x2
	.value	0x198
	.byte	0x15
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF182
	.byte	0x2
	.value	0x183
	.byte	0x1
	.long	0x811
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xc31
	.uleb128 0x20
	.string	"len"
	.byte	0x2
	.value	0x185
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF184
	.byte	0x2
	.value	0x150
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xc79
	.uleb128 0x23
	.long	.LASF185
	.byte	0x2
	.value	0x152
	.byte	0x13
	.long	0x4bd
	.uleb128 0x9
	.byte	0x3
	.quad	blank_lines.6476
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x26
	.long	.LASF186
	.byte	0x2
	.value	0x145
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF187
	.byte	0x2
	.value	0x13a
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF188
	.byte	0x2
	.value	0x12f
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF189
	.byte	0x2
	.value	0x123
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.long	.LASF190
	.byte	0x2
	.value	0x117
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xd16
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.uleb128 0x28
	.long	.LASF191
	.byte	0x2
	.byte	0xf4
	.byte	0x1
	.long	0xa52
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xd95
	.uleb128 0x29
	.long	.LASF192
	.byte	0x2
	.byte	0xf4
	.byte	0x1e
	.long	0xd95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF193
	.byte	0x2
	.byte	0xf5
	.byte	0x2b
	.long	0x92e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF110
	.byte	0x2
	.byte	0xf5
	.byte	0x39
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF194
	.byte	0x2
	.byte	0xf7
	.byte	0xf
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF195
	.byte	0x2
	.byte	0xf8
	.byte	0x8
	.long	0xa52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2a2
	.uleb128 0x2a
	.long	.LASF197
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc9
	.uleb128 0x29
	.long	.LASF198
	.byte	0x2
	.byte	0xad
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF199
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xe6e
	.uleb128 0x1f
	.long	.LASF200
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1a
	.long	.LASF201
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xe24
	.uleb128 0x1b
	.long	.LASF200
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2a2
	.byte	0
	.uleb128 0x1b
	.long	.LASF202
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2a2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xdf9
	.uleb128 0x23
	.long	.LASF201
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xe7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	.LASF202
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	.LASF203
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xe83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.long	.LASF204
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xe24
	.long	0xe7e
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xe6e
	.uleb128 0x7
	.byte	0x8
	.long	0xe24
	.uleb128 0x26
	.long	.LASF205
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF206
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x23
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
	.uleb128 0x27
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
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x29
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
.LASF188:
	.string	"proc_header"
.LASF161:
	.string	"body_del_len"
.LASF111:
	.string	"translate"
.LASF97:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF32:
	.string	"_shortbuf"
.LASF86:
	.string	"GETOPT_VERSION_CHAR"
.LASF176:
	.string	"longopts"
.LASF139:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF165:
	.string	"print_no_line_fmt"
.LASF150:
	.string	"header_regex"
.LASF14:
	.string	"_IO_read_ptr"
.LASF141:
	.string	"Header"
.LASF90:
	.string	"shell_quoting_style"
.LASF154:
	.string	"footer_fastmap"
.LASF85:
	.string	"GETOPT_HELP_CHAR"
.LASF20:
	.string	"_IO_buf_base"
.LASF57:
	.string	"long long unsigned int"
.LASF23:
	.string	"_IO_backup_base"
.LASF110:
	.string	"fastmap"
.LASF35:
	.string	"_codecvt"
.LASF8:
	.string	"__intmax_t"
.LASF69:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF101:
	.string	"quoting_style_vals"
.LASF200:
	.string	"program"
.LASF96:
	.string	"escape_quoting_style"
.LASF119:
	.string	"newline_anchor"
.LASF89:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF116:
	.string	"no_sub"
.LASF75:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF13:
	.string	"_flags"
.LASF104:
	.string	"rpl_re_syntax_options"
.LASF206:
	.string	"emit_stdin_note"
.LASF36:
	.string	"_wide_data"
.LASF117:
	.string	"not_bol"
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
.LASF167:
	.string	"page_incr"
.LASF52:
	.string	"_sys_errlist"
.LASF78:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF196:
	.string	"main"
.LASF83:
	.string	"TIMESPEC_HZ"
.LASF93:
	.string	"shell_escape_always_quoting_style"
.LASF190:
	.string	"print_lineno"
.LASF72:
	.string	"timezone"
.LASF187:
	.string	"proc_body"
.LASF88:
	.string	"program_name"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF163:
	.string	"footer_del_len"
.LASF1:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF183:
	.string	"process_file"
.LASF61:
	.string	"optopt"
.LASF157:
	.string	"section_del"
.LASF147:
	.string	"footer_type"
.LASF182:
	.string	"check_section"
.LASF0:
	.string	"long unsigned int"
.LASF91:
	.string	"shell_always_quoting_style"
.LASF63:
	.string	"option"
.LASF18:
	.string	"_IO_write_ptr"
.LASF143:
	.string	"Footer"
.LASF49:
	.string	"sys_nerr"
.LASF189:
	.string	"reset_lineno"
.LASF64:
	.string	"name"
.LASF73:
	.string	"getdate_err"
.LASF207:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF131:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF123:
	.string	"error_one_per_line"
.LASF80:
	.string	"Version"
.LASF140:
	.string	"section"
.LASF22:
	.string	"_IO_save_base"
.LASF158:
	.string	"header_del"
.LASF103:
	.string	"reg_syntax_t"
.LASF77:
	.string	"environ"
.LASF171:
	.string	"lineno_width"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF137:
	.string	"FORMAT_LEFT"
.LASF47:
	.string	"stdout"
.LASF125:
	.string	"FADVISE_SEQUENTIAL"
.LASF87:
	.string	"version_etc_copyright"
.LASF155:
	.string	"current_regex"
.LASF109:
	.string	"syntax"
.LASF209:
	.string	"/root/coreutils"
.LASF58:
	.string	"optarg"
.LASF203:
	.string	"map_prog"
.LASF107:
	.string	"allocated"
.LASF59:
	.string	"optind"
.LASF166:
	.string	"starting_line_number"
.LASF130:
	.string	"linebuffer"
.LASF142:
	.string	"Body"
.LASF10:
	.string	"__off64_t"
.LASF179:
	.string	"file"
.LASF82:
	.string	"intmax_t"
.LASF210:
	.string	"_IO_lock_t"
.LASF114:
	.string	"regs_allocated"
.LASF62:
	.string	"_IO_FILE"
.LASF121:
	.string	"error_print_progname"
.LASF159:
	.string	"header_del_len"
.LASF9:
	.string	"__off_t"
.LASF76:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF208:
	.string	"src/nl.c"
.LASF108:
	.string	"used"
.LASF50:
	.string	"sys_errlist"
.LASF192:
	.string	"typep"
.LASF170:
	.string	"blank_join"
.LASF25:
	.string	"_markers"
.LASF186:
	.string	"proc_footer"
.LASF115:
	.string	"fastmap_accurate"
.LASF152:
	.string	"body_fastmap"
.LASF180:
	.string	"stream"
.LASF95:
	.string	"c_maybe_quoting_style"
.LASF169:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF135:
	.string	"FORMAT_RIGHT_NOLZ"
.LASF202:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF118:
	.string	"not_eol"
.LASF134:
	.string	"quote_quoting_options"
.LASF66:
	.string	"flag"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF70:
	.string	"tzname"
.LASF11:
	.string	"__time_t"
.LASF42:
	.string	"FILE"
.LASF145:
	.string	"body_type"
.LASF129:
	.string	"FADVISE_RANDOM"
.LASF92:
	.string	"shell_escape_quoting_style"
.LASF174:
	.string	"line_no_overflow"
.LASF126:
	.string	"FADVISE_NOREUSE"
.LASF100:
	.string	"quoting_style_args"
.LASF191:
	.string	"build_type_arg"
.LASF71:
	.string	"daylight"
.LASF172:
	.string	"lineno_format"
.LASF184:
	.string	"proc_text"
.LASF54:
	.string	"long double"
.LASF132:
	.string	"length"
.LASF12:
	.string	"char"
.LASF127:
	.string	"FADVISE_DONTNEED"
.LASF193:
	.string	"regexp"
.LASF164:
	.string	"line_buf"
.LASF120:
	.string	"re_dfa_t"
.LASF98:
	.string	"clocale_quoting_style"
.LASF105:
	.string	"re_pattern_buffer"
.LASF106:
	.string	"buffer"
.LASF60:
	.string	"opterr"
.LASF162:
	.string	"footer_del"
.LASF124:
	.string	"FADVISE_NORMAL"
.LASF133:
	.string	"quoting_options"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"_sys_siglist"
.LASF175:
	.string	"have_read_stdin"
.LASF201:
	.string	"infomap"
.LASF173:
	.string	"line_no"
.LASF156:
	.string	"separator_str"
.LASF65:
	.string	"has_arg"
.LASF197:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF151:
	.string	"footer_regex"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF195:
	.string	"rval"
.LASF68:
	.string	"__daylight"
.LASF185:
	.string	"blank_lines"
.LASF149:
	.string	"body_regex"
.LASF198:
	.string	"status"
.LASF160:
	.string	"body_del"
.LASF113:
	.string	"can_be_null"
.LASF153:
	.string	"header_fastmap"
.LASF99:
	.string	"custom_quoting_style"
.LASF168:
	.string	"reset_numbers"
.LASF181:
	.string	"nl_file"
.LASF138:
	.string	"DEFAULT_SECTION_DELIMITERS"
.LASF102:
	.string	"__re_long_size_t"
.LASF136:
	.string	"FORMAT_RIGHT_LZ"
.LASF122:
	.string	"error_message_count"
.LASF204:
	.string	"lc_messages"
.LASF177:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF148:
	.string	"current_type"
.LASF45:
	.string	"_IO_wide_data"
.LASF146:
	.string	"header_type"
.LASF128:
	.string	"FADVISE_WILLNEED"
.LASF194:
	.string	"errmsg"
.LASF205:
	.string	"emit_mandatory_arg_note"
.LASF67:
	.string	"__tzname"
.LASF178:
	.string	"argv"
.LASF17:
	.string	"_IO_write_base"
.LASF199:
	.string	"emit_ancillary_info"
.LASF144:
	.string	"Text"
.LASF112:
	.string	"re_nsub"
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
