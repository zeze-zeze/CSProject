	.file	"od.c"
	.text
.Ltext0:
	.type	gcd, @function
gcd:
.LFB31:
	.file 1 "src/system.h"
	.loc 1 473 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
.L2:
.LBB2:
	.loc 1 476 14 discriminator 1
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 1 477 9 discriminator 1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 478 9 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBE2:
	.loc 1 480 3 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L2
	.loc 1 482 10
	movq	-24(%rbp), %rax
	.loc 1 483 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	gcd, .-gcd
	.type	lcm, @function
lcm:
.LFB32:
	.loc 1 491 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 492 19
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gcd
	movq	%rax, %rcx
	.loc 1 492 17
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	.loc 1 492 12
	imulq	-8(%rbp), %rax
	.loc 1 493 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	lcm, .-lcm
	.section	.rodata
	.align 8
.LC0:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.text
	.type	emit_stdin_note, @function
emit_stdin_note:
.LFB35:
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
	jmp	.L9
.L11:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L9:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L10
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L11
.L10:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L12
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L12:
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
	je	.L13
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L13
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L13:
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
	jne	.L14
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC17(%rip), %rbx
	jmp	.L15
.L14:
	.loc 1 671 3 discriminator 2
	leaq	.LC18(%rip), %rbx
.L15:
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
	je	.L16
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L16:
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
	je	.L18
	.loc 1 707 36 discriminator 2
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31 discriminator 2
	cmpl	$40960, %eax
	jne	.L19
.L18:
	.loc 1 708 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L20
.L19:
	.loc 1 708 31 discriminator 4
	movl	$0, %eax
.L20:
	.loc 1 708 31 discriminator 6
	andl	$1, %eax
	.loc 1 709 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	usable_st_size, .-usable_st_size
	.section	.rodata
	.align 32
	.type	bytes_to_oct_digits, @object
	.size	bytes_to_oct_digits, 68
bytes_to_oct_digits:
	.long	0
	.long	3
	.long	6
	.long	8
	.long	11
	.long	14
	.long	16
	.long	19
	.long	22
	.long	25
	.long	27
	.long	30
	.long	32
	.long	35
	.long	38
	.long	41
	.long	43
	.align 32
	.type	bytes_to_signed_dec_digits, @object
	.size	bytes_to_signed_dec_digits, 68
bytes_to_signed_dec_digits:
	.long	1
	.long	4
	.long	6
	.long	8
	.long	11
	.long	13
	.long	16
	.long	18
	.long	20
	.long	23
	.long	25
	.long	28
	.long	30
	.long	33
	.long	35
	.long	37
	.long	40
	.align 32
	.type	bytes_to_unsigned_dec_digits, @object
	.size	bytes_to_unsigned_dec_digits, 68
bytes_to_unsigned_dec_digits:
	.long	0
	.long	3
	.long	5
	.long	8
	.long	10
	.long	13
	.long	15
	.long	17
	.long	20
	.long	22
	.long	25
	.long	27
	.long	29
	.long	32
	.long	34
	.long	37
	.long	39
	.align 32
	.type	bytes_to_hex_digits, @object
	.size	bytes_to_hex_digits, 68
bytes_to_hex_digits:
	.long	0
	.long	2
	.long	4
	.long	6
	.long	8
	.long	10
	.long	12
	.long	14
	.long	16
	.long	18
	.long	20
	.long	22
	.long	24
	.long	26
	.long	28
	.long	30
	.long	32
	.align 32
	.type	width_bytes, @object
	.size	width_bytes, 36
width_bytes:
	.long	-1
	.long	1
	.long	2
	.long	4
	.long	8
	.long	8
	.long	4
	.long	8
	.long	16
	.align 32
	.type	charname, @object
	.size	charname, 132
charname:
	.string	"nul"
	.string	"soh"
	.string	"stx"
	.string	"etx"
	.string	"eot"
	.string	"enq"
	.string	"ack"
	.string	"bel"
	.string	"bs"
	.zero	1
	.string	"ht"
	.zero	1
	.string	"nl"
	.zero	1
	.string	"vt"
	.zero	1
	.string	"ff"
	.zero	1
	.string	"cr"
	.zero	1
	.string	"so"
	.zero	1
	.string	"si"
	.zero	1
	.string	"dle"
	.string	"dc1"
	.string	"dc2"
	.string	"dc3"
	.string	"dc4"
	.string	"nak"
	.string	"syn"
	.string	"etb"
	.string	"can"
	.string	"em"
	.zero	1
	.string	"sub"
	.string	"esc"
	.string	"fs"
	.zero	1
	.string	"gs"
	.zero	1
	.string	"rs"
	.zero	1
	.string	"us"
	.zero	1
	.string	"sp"
	.zero	1
	.local	address_base
	.comm	address_base,4,4
	.local	address_pad_len
	.comm	address_pad_len,4,4
	.local	string_min
	.comm	string_min,8,8
	.local	flag_dump_strings
	.comm	flag_dump_strings,1,1
	.local	traditional
	.comm	traditional,1,1
	.local	flag_pseudo_start
	.comm	flag_pseudo_start,1,1
	.local	pseudo_offset
	.comm	pseudo_offset,8,8
	.local	format_address
	.comm	format_address,8,8
	.local	n_bytes_to_skip
	.comm	n_bytes_to_skip,8,8
	.local	limit_bytes_to_format
	.comm	limit_bytes_to_format,1,1
	.local	max_bytes_to_format
	.comm	max_bytes_to_format,8,8
	.local	end_offset
	.comm	end_offset,8,8
	.data
	.type	abbreviate_duplicate_blocks, @object
	.size	abbreviate_duplicate_blocks, 1
abbreviate_duplicate_blocks:
	.byte	1
	.local	spec
	.comm	spec,8,8
	.local	n_specs
	.comm	n_specs,8,8
	.local	n_specs_allocated
	.comm	n_specs_allocated,8,8
	.local	bytes_per_block
	.comm	bytes_per_block,8,8
	.local	input_filename
	.comm	input_filename,8,8
	.local	file_list
	.comm	file_list,8,8
	.section	.rodata
.LC20:
	.string	"-"
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	default_file_list, @object
	.size	default_file_list, 16
default_file_list:
	.quad	.LC20
	.quad	0
	.local	in_stream
	.comm	in_stream,8,8
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.local	integral_type_size
	.comm	integral_type_size,36,32
	.local	fp_type_size
	.comm	fp_type_size,68,32
	.local	input_swap
	.comm	input_swap,1,1
	.section	.rodata
	.align 32
	.type	short_options, @object
	.size	short_options, 35
short_options:
	.string	"A:aBbcDdeFfHhIij:LlN:OoS:st:vw::Xx"
.LC21:
	.string	"little"
.LC22:
	.string	"big"
	.section	.data.rel.ro.local
	.align 16
	.type	endian_args, @object
	.size	endian_args, 24
endian_args:
	.quad	.LC21
	.quad	.LC22
	.quad	0
	.section	.rodata
	.align 8
	.type	endian_types, @object
	.size	endian_types, 8
endian_types:
	.long	0
	.long	1
.LC23:
	.string	"skip-bytes"
.LC24:
	.string	"address-radix"
.LC25:
	.string	"read-bytes"
.LC26:
	.string	"format"
.LC27:
	.string	"output-duplicates"
.LC28:
	.string	"strings"
.LC29:
	.string	"traditional"
.LC30:
	.string	"width"
.LC31:
	.string	"endian"
.LC32:
	.string	"help"
.LC33:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	long_options, @object
	.size	long_options, 384
long_options:
	.quad	.LC23
	.long	1
	.zero	4
	.quad	0
	.long	106
	.zero	4
	.quad	.LC24
	.long	1
	.zero	4
	.quad	0
	.long	65
	.zero	4
	.quad	.LC25
	.long	1
	.zero	4
	.quad	0
	.long	78
	.zero	4
	.quad	.LC26
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC28
	.long	2
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC30
	.long	2
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC31
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC33
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
.LC34:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC35:
	.string	"Usage: %s [OPTION]... [FILE]...\n  or:  %s [-abcdfilosx]... [FILE] [[+]OFFSET[.][b]]\n  or:  %s --traditional [OPTION]... [FILE] [[+]OFFSET[.][b] [+][LABEL][.][b]]\n"
	.align 8
.LC36:
	.string	"\nWrite an unambiguous representation, octal bytes by default,\nof FILE to standard output.  With more than one FILE argument,\nconcatenate them in the listed order to form the input.\n"
	.align 8
.LC37:
	.ascii	"\nIf first and second call formats both apply, the second fo"
	.ascii	"rmat is assumed\nif the last operand begins with + or (if th"
	.ascii	"ere are 2 operan"
	.string	"ds) a digit.\nAn OFFSET operand means -j OFFSET.  LABEL is the pseudo-address\nat first byte printed, incremented when dump is progressing.\nFor OFFSET and LABEL, a 0x or 0X prefix indicates hexadecimal;\nsuffixes may be . for octal and b for multiply by 512.\n"
	.align 8
.LC38:
	.ascii	"  -A, --address-radix=RADIX   "
	.string	"output format for file offsets; RADIX is one\n                                of [doxn], for Decimal, Octal, Hex or None\n      --endian={big|little}   swap input bytes according the specified order\n  -j, --skip-bytes=BYTES      skip BYTES input bytes first\n"
	.align 8
.LC39:
	.ascii	"  -N, --read-bytes=BYTES      limit dump to BYTES input byte"
	.ascii	"s\n  -S BYTES, --strings[=BYTES]  output strings of at least"
	.ascii	" BYTES graphic chars;\n                                3 is "
	.ascii	"implied when BYTES is not specified\n  -t, --format=TYPE    "
	.ascii	"       select output format or formats\n  -v, --output-dupl"
	.string	"icates     do not use * to mark line suppression\n  -w[BYTES], --width[=BYTES]  output BYTES bytes per output line;\n                                32 is implied when BYTES is not specified\n      --traditional           accept arguments in third form above\n"
	.align 8
.LC40:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC41:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC42:
	.ascii	"\n\nTraditional format specifications may be intermixed; the"
	.string	"y accumulate:\n  -a   same as -t a,  select named characters, ignoring high-order bit\n  -b   same as -t o1, select octal bytes\n  -c   same as -t c,  select printable characters or backslash escapes\n  -d   same as -t u2, select unsigned decimal 2-byte units\n"
	.align 8
.LC43:
	.ascii	"  -f   same as -t"
	.string	" fF, select floats\n  -i   same as -t dI, select decimal ints\n  -l   same as -t dL, select decimal longs\n  -o   same as -t o2, select octal 2-byte units\n  -s   same as -t d2, select decimal 2-byte units\n  -x   same as -t x2, select hexadecimal 2-byte units\n"
	.align 8
.LC44:
	.string	"\n\nTYPE is made up of one or more of these specifications:\n  a          named character, ignoring high-order bit\n  c          printable character or backslash escape\n"
	.align 8
.LC45:
	.string	"  d[SIZE]    signed decimal, SIZE bytes per integer\n  f[SIZE]    floating point, SIZE bytes per float\n  o[SIZE]    octal, SIZE bytes per integer\n  u[SIZE]    unsigned decimal, SIZE bytes per integer\n  x[SIZE]    hexadecimal, SIZE bytes per integer\n"
	.align 8
.LC46:
	.string	"\nSIZE is a number.  For TYPE in [doux], SIZE may also be C for\nsizeof(char), S for sizeof(short), I for sizeof(int) or L for\nsizeof(long).  If TYPE is f, SIZE may also be F for sizeof(float), D\nfor sizeof(double) or L for sizeof(long double).\n"
	.align 8
.LC47:
	.string	"\nAdding a z suffix to any type displays printable characters at the end of\neach output line.\n"
	.align 8
.LC48:
	.string	"\n\nBYTES is hex with 0x or 0X prefix, and may have a multiplier suffix:\n  b    512\n  KB   1000\n  K    1024\n  MB   1000*1000\n  M    1024*1024\nand so on for G, T, P, E, Z, Y.\nBinary prefixes can be used, too: KiB=K, MiB=M, and so on.\n"
.LC49:
	.string	"od"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.file 2 "src/od.c"
	.loc 2 318 1
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
	.loc 2 319 6
	cmpl	$0, -36(%rbp)
	je	.L23
	.loc 2 320 5
	movq	program_name(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L24
.L23:
	.loc 2 323 7
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 323 15
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	.loc 2 323 7
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 329 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 335 7
	call	emit_stdin_note
	.loc 2 337 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 347 7
	call	emit_mandatory_arg_note
	.loc 2 349 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 355 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 366 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 367 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 368 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 377 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 385 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 392 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 399 7
	movq	stdout(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 406 7
	movq	stdout(%rip), %rbx
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 411 7
	movq	stdout(%rip), %rbx
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 423 7
	leaq	.LC49(%rip), %rdi
	call	emit_ancillary_info
.L24:
	.loc 2 425 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.type	print_s_char, @function
print_s_char:
.LFB51:
	.loc 2 471 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	.loc 2 471 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L26
.L27:
.LBB3:
	.loc 2 471 1 is_stmt 0 discriminator 10
	movl	-88(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -45(%rbp)
	addq	$1, -32(%rbp)
	movsbl	-45(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBE3:
	subq	$1, -24(%rbp)
.L26:
	.loc 2 471 1 discriminator 9
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L27
	.loc 2 471 1 discriminator 11
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L28
	.loc 2 471 1
	call	__stack_chk_fail@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	print_s_char, .-print_s_char
	.type	print_char, @function
print_char:
.LFB52:
	.loc 2 472 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	.loc 2 472 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L30
.L31:
.LBB4:
	.loc 2 472 1 is_stmt 0 discriminator 10
	movl	-88(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -45(%rbp)
	addq	$1, -32(%rbp)
	movzbl	-45(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBE4:
	subq	$1, -24(%rbp)
.L30:
	.loc 2 472 1 discriminator 9
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L31
	.loc 2 472 1 discriminator 11
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L32
	.loc 2 472 1
	call	__stack_chk_fail@PLT
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	print_char, .-print_char
	.type	print_s_short, @function
print_s_short:
.LFB53:
	.loc 2 473 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	.loc 2 473 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L34
.L39:
.LBB5:
	.loc 2 473 1 is_stmt 0 discriminator 10
	movl	-104(%rbp), %eax
	cltq
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	-72(%rbp)
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	movzbl	input_swap(%rip), %eax
	testb	%al, %al
	je	.L35
.LBB6:
	.loc 2 473 1 discriminator 2
	movq	$0, -24(%rbp)
	jmp	.L36
.L37:
	.loc 2 473 1 discriminator 6
	movl	$1, %eax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leaq	-10(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L36:
	.loc 2 473 1 discriminator 4
	cmpq	$1, -24(%rbp)
	jbe	.L37
	.loc 2 473 1 discriminator 7
	movzwl	-10(%rbp), %eax
	movw	%ax, -54(%rbp)
.LBE6:
	jmp	.L38
.L35:
	.loc 2 473 1 discriminator 3
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, -54(%rbp)
.L38:
	.loc 2 473 1 discriminator 8
	addq	$2, -40(%rbp)
	movswl	-54(%rbp), %edx
	movl	-44(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBE5:
	subq	$1, -32(%rbp)
.L34:
	.loc 2 473 1 discriminator 9
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L39
	.loc 2 473 1 discriminator 11
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L40
	.loc 2 473 1
	call	__stack_chk_fail@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	print_s_short, .-print_s_short
	.type	print_short, @function
print_short:
.LFB54:
	.loc 2 474 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	.loc 2 474 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L42
.L47:
.LBB7:
	.loc 2 474 1 is_stmt 0 discriminator 10
	movl	-104(%rbp), %eax
	cltq
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	-72(%rbp)
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	movzbl	input_swap(%rip), %eax
	testb	%al, %al
	je	.L43
.LBB8:
	.loc 2 474 1 discriminator 2
	movq	$0, -24(%rbp)
	jmp	.L44
.L45:
	.loc 2 474 1 discriminator 6
	movl	$1, %eax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leaq	-10(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L44:
	.loc 2 474 1 discriminator 4
	cmpq	$1, -24(%rbp)
	jbe	.L45
	.loc 2 474 1 discriminator 7
	movzwl	-10(%rbp), %eax
	movw	%ax, -54(%rbp)
.LBE8:
	jmp	.L46
.L43:
	.loc 2 474 1 discriminator 3
	movq	-40(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, -54(%rbp)
.L46:
	.loc 2 474 1 discriminator 8
	addq	$2, -40(%rbp)
	movzwl	-54(%rbp), %edx
	movl	-44(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBE7:
	subq	$1, -32(%rbp)
.L42:
	.loc 2 474 1 discriminator 9
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L47
	.loc 2 474 1 discriminator 11
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L48
	.loc 2 474 1
	call	__stack_chk_fail@PLT
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	print_short, .-print_short
	.type	print_int, @function
print_int:
.LFB55:
	.loc 2 475 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	.loc 2 475 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L50
.L55:
.LBB9:
	.loc 2 475 1 is_stmt 0 discriminator 10
	movl	-104(%rbp), %eax
	cltq
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	-72(%rbp)
	movl	%eax, -48(%rbp)
	movl	-56(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	movzbl	input_swap(%rip), %eax
	testb	%al, %al
	je	.L51
.LBB10:
	.loc 2 475 1 discriminator 2
	movq	$0, -24(%rbp)
	jmp	.L52
.L53:
	.loc 2 475 1 discriminator 6
	movl	$3, %eax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leaq	-12(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L52:
	.loc 2 475 1 discriminator 4
	cmpq	$3, -24(%rbp)
	jbe	.L53
	.loc 2 475 1 discriminator 7
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBE10:
	jmp	.L54
.L51:
	.loc 2 475 1 discriminator 3
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
.L54:
	.loc 2 475 1 discriminator 8
	addq	$4, -40(%rbp)
	movl	-52(%rbp), %edx
	movl	-44(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	movl	-48(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBE9:
	subq	$1, -32(%rbp)
.L50:
	.loc 2 475 1 discriminator 9
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L55
	.loc 2 475 1 discriminator 11
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L56
	.loc 2 475 1
	call	__stack_chk_fail@PLT
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	print_int, .-print_int
	.type	print_long, @function
print_long:
.LFB56:
	.loc 2 476 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	.loc 2 476 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L58
.L63:
.LBB11:
	.loc 2 476 1 is_stmt 0 discriminator 10
	movl	-104(%rbp), %eax
	cltq
	movq	-40(%rbp), %rdx
	subq	$1, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	-72(%rbp)
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movzbl	input_swap(%rip), %eax
	testb	%al, %al
	je	.L59
.LBB12:
	.loc 2 476 1 discriminator 2
	movq	$0, -24(%rbp)
	jmp	.L60
.L61:
	.loc 2 476 1 discriminator 6
	movl	$7, %eax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L60:
	.loc 2 476 1 discriminator 4
	cmpq	$7, -24(%rbp)
	jbe	.L61
	.loc 2 476 1 discriminator 7
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBE12:
	jmp	.L62
.L59:
	.loc 2 476 1 discriminator 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L62:
	.loc 2 476 1 discriminator 8
	addq	$8, -48(%rbp)
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBE11:
	subq	$1, -40(%rbp)
.L58:
	.loc 2 476 1 discriminator 9
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L63
	.loc 2 476 1 discriminator 11
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L64
	.loc 2 476 1
	call	__stack_chk_fail@PLT
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	print_long, .-print_long
	.type	print_long_long, @function
print_long_long:
.LFB57:
	.loc 2 477 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	.loc 2 477 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L66
.L71:
.LBB13:
	.loc 2 477 1 is_stmt 0 discriminator 10
	movl	-104(%rbp), %eax
	cltq
	movq	-40(%rbp), %rdx
	subq	$1, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	-72(%rbp)
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movzbl	input_swap(%rip), %eax
	testb	%al, %al
	je	.L67
.LBB14:
	.loc 2 477 1 discriminator 2
	movq	$0, -24(%rbp)
	jmp	.L68
.L69:
	.loc 2 477 1 discriminator 6
	movl	$7, %eax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L68:
	.loc 2 477 1 discriminator 4
	cmpq	$7, -24(%rbp)
	jbe	.L69
	.loc 2 477 1 discriminator 7
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBE14:
	jmp	.L70
.L67:
	.loc 2 477 1 discriminator 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L70:
	.loc 2 477 1 discriminator 8
	addq	$8, -48(%rbp)
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBE13:
	subq	$1, -40(%rbp)
.L66:
	.loc 2 477 1 discriminator 9
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L71
	.loc 2 477 1 discriminator 11
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L72
	.loc 2 477 1
	call	__stack_chk_fail@PLT
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	print_long_long, .-print_long_long
	.section	.rodata
.LC50:
	.string	"%*s"
	.text
	.type	print_float, @function
print_float:
.LFB58:
	.loc 2 479 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	%r8d, -132(%rbp)
	movl	%r9d, -136(%rbp)
	.loc 2 479 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L74
.L79:
.LBB15:
	.loc 2 479 1 is_stmt 0 discriminator 10
	movl	-136(%rbp), %eax
	cltq
	movq	-72(%rbp), %rdx
	subq	$1, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	-104(%rbp)
	movl	%eax, -88(%rbp)
	movl	-96(%rbp), %eax
	subl	-88(%rbp), %eax
	movl	%eax, %edx
	movl	-132(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -84(%rbp)
	movzbl	input_swap(%rip), %eax
	testb	%al, %al
	je	.L75
.LBB16:
	.loc 2 479 1 discriminator 2
	movq	$0, -64(%rbp)
	jmp	.L76
.L77:
	.loc 2 479 1 discriminator 6
	movl	$3, %eax
	subq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leaq	-52(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -64(%rbp)
.L76:
	.loc 2 479 1 discriminator 4
	cmpq	$3, -64(%rbp)
	jbe	.L77
	.loc 2 479 1 discriminator 7
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
.LBE16:
	jmp	.L78
.L75:
	.loc 2 479 1 discriminator 3
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -92(%rbp)
.L78:
	.loc 2 479 1 discriminator 8
	addq	$4, -80(%rbp)
	movl	-92(%rbp), %edx
	leaq	-48(%rbp), %rax
	movd	%edx, %xmm0
	movl	$0, %ecx
	movl	$0, %edx
	movl	$31, %esi
	movq	%rax, %rdi
	call	ftoastr@PLT
	leaq	-48(%rbp), %rdx
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	xprintf@PLT
	movl	-88(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBE15:
	subq	$1, -72(%rbp)
.L74:
	.loc 2 479 1 discriminator 9
	movq	-112(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L79
	.loc 2 479 1 discriminator 11
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L80
	.loc 2 479 1
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	print_float, .-print_float
	.type	print_double, @function
print_double:
.LFB59:
	.loc 2 480 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movl	%r8d, -148(%rbp)
	movl	%r9d, -152(%rbp)
	.loc 2 480 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.L82
.L87:
.LBB17:
	.loc 2 480 1 is_stmt 0 discriminator 10
	movl	-152(%rbp), %eax
	cltq
	movq	-80(%rbp), %rdx
	subq	$1, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	-120(%rbp)
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %eax
	subl	-96(%rbp), %eax
	movl	%eax, %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -92(%rbp)
	movzbl	input_swap(%rip), %eax
	testb	%al, %al
	je	.L83
.LBB18:
	.loc 2 480 1 discriminator 2
	movq	$0, -64(%rbp)
	jmp	.L84
.L85:
	.loc 2 480 1 discriminator 6
	movl	$7, %eax
	subq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leaq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -64(%rbp)
.L84:
	.loc 2 480 1 discriminator 4
	cmpq	$7, -64(%rbp)
	jbe	.L85
	.loc 2 480 1 discriminator 7
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.LBE18:
	jmp	.L86
.L83:
	.loc 2 480 1 discriminator 3
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
.L86:
	.loc 2 480 1 discriminator 8
	addq	$8, -88(%rbp)
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %xmm0
	movl	$0, %ecx
	movl	$0, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	dtoastr@PLT
	leaq	-48(%rbp), %rdx
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	xprintf@PLT
	movl	-96(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBE17:
	subq	$1, -80(%rbp)
.L82:
	.loc 2 480 1 discriminator 9
	movq	-128(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L87
	.loc 2 480 1 discriminator 11
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L88
	.loc 2 480 1
	call	__stack_chk_fail@PLT
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	print_double, .-print_double
	.type	print_long_double, @function
print_long_double:
.LFB60:
	.loc 2 481 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	%r8d, -180(%rbp)
	movl	%r9d, -184(%rbp)
	.loc 2 481 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-168(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.L90
.L95:
.LBB19:
	.loc 2 481 1 is_stmt 0 discriminator 10
	movl	-184(%rbp), %eax
	cltq
	movq	-112(%rbp), %rdx
	subq	$1, %rdx
	imulq	%rdx, %rax
	movl	$0, %edx
	divq	-152(%rbp)
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %eax
	subl	-128(%rbp), %eax
	movl	%eax, %edx
	movl	-180(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -124(%rbp)
	movzbl	input_swap(%rip), %eax
	testb	%al, %al
	je	.L91
.LBB20:
	.loc 2 481 1 discriminator 2
	movq	$0, -104(%rbp)
	jmp	.L92
.L93:
	.loc 2 481 1 discriminator 6
	movl	$15, %eax
	subq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leaq	-80(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -104(%rbp)
.L92:
	.loc 2 481 1 discriminator 4
	cmpq	$15, -104(%rbp)
	jbe	.L93
	.loc 2 481 1 discriminator 7
	fldt	-80(%rbp)
	fstpt	-96(%rbp)
.LBE20:
	jmp	.L94
.L91:
	.loc 2 481 1 discriminator 3
	movq	-120(%rbp), %rax
	fldt	(%rax)
	fstpt	-96(%rbp)
.L94:
	.loc 2 481 1 discriminator 8
	addq	$16, -120(%rbp)
	leaq	-64(%rbp), %rax
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	movl	$0, %ecx
	movl	$0, %edx
	movl	$45, %esi
	movq	%rax, %rdi
	call	ldtoastr@PLT
	addq	$16, %rsp
	leaq	-64(%rbp), %rdx
	movl	-124(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	xprintf@PLT
	movl	-128(%rbp), %eax
	movl	%eax, -132(%rbp)
.LBE19:
	subq	$1, -112(%rbp)
.L90:
	.loc 2 481 1 discriminator 9
	movq	-160(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L95
	.loc 2 481 1 discriminator 11
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L96
	.loc 2 481 1
	call	__stack_chk_fail@PLT
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	print_long_double, .-print_long_double
	.section	.rodata
.LC52:
	.string	"  >"
	.text
	.type	dump_hexl_mode_trailer, @function
dump_hexl_mode_trailer:
.LFB61:
	.loc 2 488 1 is_stmt 1
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
	.loc 2 489 3
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC52(%rip), %rdi
	call	fwrite_unlocked@PLT
.LBB21:
	.loc 2 490 15
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 490 3
	jmp	.L98
.L101:
.LBB22:
	.loc 2 492 31
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 492 25
	movzbl	(%rax), %eax
	.loc 2 492 21
	movb	%al, -10(%rbp)
	.loc 2 493 27
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-10(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 493 21
	testl	%eax, %eax
	je	.L99
	.loc 2 493 21 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax
	jmp	.L100
.L99:
	.loc 2 493 21 discriminator 2
	movl	$46, %eax
.L100:
	.loc 2 493 21 discriminator 4
	movb	%al, -9(%rbp)
	.loc 2 494 7 is_stmt 1 discriminator 4
	movzbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.LBE22:
	.loc 2 490 36 discriminator 4
	subq	$1, -8(%rbp)
.L98:
	.loc 2 490 3 discriminator 2
	cmpq	$0, -8(%rbp)
	jne	.L101
.LBE21:
	.loc 2 496 3
	movl	$60, %edi
	call	putchar_unlocked@PLT
	.loc 2 497 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	dump_hexl_mode_trailer, .-dump_hexl_mode_trailer
	.section	.rodata
.LC53:
	.string	"del"
	.text
	.type	print_named_ascii, @function
print_named_ascii:
.LFB62:
	.loc 2 503 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	.loc 2 503 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 504 24
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 506 7
	movl	-104(%rbp), %eax
	movl	%eax, -52(%rbp)
	.loc 2 507 10
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 507 3
	jmp	.L103
.L107:
.LBB23:
	.loc 2 509 26
	movl	-104(%rbp), %eax
	cltq
	.loc 2 509 31
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	.loc 2 509 26
	imulq	%rdx, %rax
	.loc 2 509 36
	movl	$0, %edx
	divq	-72(%rbp)
	.loc 2 509 11
	movl	%eax, -48(%rbp)
	.loc 2 510 24
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 510 22
	movzbl	(%rax), %eax
	.loc 2 510 27
	movzbl	%al, %eax
	.loc 2 510 11
	andl	$127, %eax
	movl	%eax, -44(%rbp)
	.loc 2 514 10
	cmpl	$127, -44(%rbp)
	jne	.L104
	.loc 2 515 11
	leaq	.LC53(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L105
.L104:
	.loc 2 516 15
	cmpl	$32, -44(%rbp)
	jg	.L106
	.loc 2 517 11
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	charname(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L105
.L106:
	.loc 2 520 18
	movl	-44(%rbp), %eax
	movb	%al, -10(%rbp)
	.loc 2 521 18
	movb	$0, -9(%rbp)
	.loc 2 522 13
	leaq	-10(%rbp), %rax
	movq	%rax, -24(%rbp)
.L105:
	.loc 2 525 37 discriminator 2
	movl	-52(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, %edx
	.loc 2 525 7 discriminator 2
	movl	-100(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	xprintf@PLT
	.loc 2 526 21 discriminator 2
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBE23:
	.loc 2 507 32 discriminator 2
	subq	$1, -32(%rbp)
.L103:
	.loc 2 507 3 discriminator 1
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L107
	.loc 2 528 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	print_named_ascii, .-print_named_ascii
	.section	.rodata
.LC54:
	.string	"\\0"
.LC55:
	.string	"\\a"
.LC56:
	.string	"\\b"
.LC57:
	.string	"\\f"
.LC58:
	.string	"\\n"
.LC59:
	.string	"\\r"
.LC60:
	.string	"\\t"
.LC61:
	.string	"\\v"
.LC62:
	.string	"%c"
.LC63:
	.string	"%03o"
	.text
	.type	print_ascii, @function
print_ascii:
.LFB63:
	.loc 2 534 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, -116(%rbp)
	movl	%r9d, -120(%rbp)
	.loc 2 534 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 535 24
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 2 537 7
	movl	-120(%rbp), %eax
	movl	%eax, -64(%rbp)
	.loc 2 538 10
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 538 3
	jmp	.L110
.L124:
.LBB24:
	.loc 2 540 26
	movl	-120(%rbp), %eax
	cltq
	.loc 2 540 31
	movq	-48(%rbp), %rdx
	subq	$1, %rdx
	.loc 2 540 26
	imulq	%rdx, %rax
	.loc 2 540 36
	movl	$0, %edx
	divq	-88(%rbp)
	.loc 2 540 11
	movl	%eax, -60(%rbp)
	.loc 2 541 27
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 541 21
	movzbl	(%rax), %eax
	movb	%al, -65(%rbp)
	.loc 2 545 7
	movzbl	-65(%rbp), %eax
	cmpl	$13, %eax
	ja	.L111
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L113(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L113(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L113:
	.long	.L120-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L119-.L113
	.long	.L118-.L113
	.long	.L117-.L113
	.long	.L116-.L113
	.long	.L115-.L113
	.long	.L114-.L113
	.long	.L112-.L113
	.text
.L120:
	.loc 2 548 13
	leaq	.LC54(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 549 11
	jmp	.L121
.L119:
	.loc 2 552 13
	leaq	.LC55(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 553 11
	jmp	.L121
.L118:
	.loc 2 556 13
	leaq	.LC56(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 557 11
	jmp	.L121
.L114:
	.loc 2 560 13
	leaq	.LC57(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 561 11
	jmp	.L121
.L116:
	.loc 2 564 13
	leaq	.LC58(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 565 11
	jmp	.L121
.L112:
	.loc 2 568 13
	leaq	.LC59(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 569 11
	jmp	.L121
.L117:
	.loc 2 572 13
	leaq	.LC60(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 573 11
	jmp	.L121
.L115:
	.loc 2 576 13
	leaq	.LC61(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 577 11
	jmp	.L121
.L111:
	.loc 2 580 11
	movzbl	-65(%rbp), %ebx
	.loc 2 580 26
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-65(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 580 11
	testl	%eax, %eax
	je	.L122
	.loc 2 580 11 is_stmt 0 discriminator 1
	leaq	.LC62(%rip), %rax
	jmp	.L123
.L122:
	.loc 2 580 11 discriminator 2
	leaq	.LC63(%rip), %rax
.L123:
	.loc 2 580 11 discriminator 4
	leaq	-28(%rbp), %rcx
	movl	%ebx, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 581 13 is_stmt 1 discriminator 4
	leaq	-28(%rbp), %rax
	movq	%rax, -40(%rbp)
.L121:
	.loc 2 584 37 discriminator 2
	movl	-64(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %edx
	.loc 2 584 7 discriminator 2
	movl	-116(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	xprintf@PLT
	.loc 2 585 21 discriminator 2
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBE24:
	.loc 2 538 32 discriminator 2
	subq	$1, -48(%rbp)
.L110:
	.loc 2 538 3 discriminator 1
	movq	-96(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L124
	.loc 2 587 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L125
	call	__stack_chk_fail@PLT
.L125:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	print_ascii, .-print_ascii
	.type	simple_strtoul, @function
simple_strtoul:
.LFB64:
	.loc 2 599 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 2 602 7
	movq	$0, -8(%rbp)
	.loc 2 603 9
	jmp	.L127
.L130:
.LBB25:
	.loc 2 605 17
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 605 15
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 605 11
	subl	$48, %eax
	movl	%eax, -12(%rbp)
	.loc 2 606 28
	movl	-12(%rbp), %eax
	cltq
	notq	%rax
	.loc 2 606 33
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	.loc 2 606 10
	cmpq	%rax, -8(%rbp)
	jbe	.L128
	.loc 2 607 16
	movl	$0, %eax
	jmp	.L129
.L128:
	.loc 2 608 17
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	.loc 2 608 22
	movl	-12(%rbp), %eax
	cltq
	.loc 2 608 11
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L127:
.LBE25:
	.loc 2 603 10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 603 9
	cmpl	$9, %eax
	jbe	.L130
	.loc 2 610 6
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 611 8
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 612 10
	movl	$1, %eax
.L129:
	.loc 2 613 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	simple_strtoul, .-simple_strtoul
	.section	.rodata
.LC64:
	.string	"src/od.c"
.LC65:
	.string	"tspec != NULL"
.LC66:
	.string	"invalid type string %s"
	.align 8
.LC67:
	.string	"invalid type string %s;\nthis system doesn't provide a %lu-byte integral type"
.LC68:
	.string	"ld"
.LC69:
	.string	"d"
.LC70:
	.string	"%%*%s"
.LC71:
	.string	"lo"
.LC72:
	.string	"o"
.LC73:
	.string	"%%*.%d%s"
.LC74:
	.string	"lu"
.LC75:
	.string	"u"
.LC76:
	.string	"lx"
.LC77:
	.string	"x"
	.align 8
.LC78:
	.string	"strlen (tspec->fmt_string) < FMT_BYTES_ALLOCATED"
	.align 8
.LC79:
	.string	"invalid type string %s;\nthis system doesn't provide a %lu-byte floating point type"
	.align 8
.LC80:
	.string	"invalid character '%c' in type string %s"
	.text
	.type	decode_one_format, @function
decode_one_format:
.LFB65:
	.loc 2 637 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	.loc 2 637 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 647 3
	cmpq	$0, -112(%rbp)
	jne	.L132
	.loc 2 647 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6795(%rip), %rcx
	movl	$647, %edx
	leaq	.LC64(%rip), %rsi
	leaq	.LC65(%rip), %rdi
	call	__assert_fail@PLT
.L132:
	.loc 2 649 11 is_stmt 1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$97, %eax
	cmpl	$23, %eax
	ja	.L133
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L135(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L135(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L135:
	.long	.L138-.L135
	.long	.L133-.L135
	.long	.L137-.L135
	.long	.L134-.L135
	.long	.L133-.L135
	.long	.L136-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L134-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L134-.L135
	.long	.L133-.L135
	.long	.L133-.L135
	.long	.L134-.L135
	.text
.L134:
	.loc 2 655 9
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -77(%rbp)
	.loc 2 656 7
	addq	$1, -96(%rbp)
	.loc 2 657 15
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$83, %eax
	je	.L139
	cmpl	$83, %eax
	jg	.L140
	cmpl	$76, %eax
	je	.L141
	cmpl	$76, %eax
	jg	.L140
	cmpl	$67, %eax
	je	.L142
	cmpl	$73, %eax
	je	.L143
	jmp	.L140
.L142:
	.loc 2 660 11
	addq	$1, -96(%rbp)
	.loc 2 661 16
	movq	$1, -64(%rbp)
	.loc 2 662 11
	jmp	.L144
.L139:
	.loc 2 665 11
	addq	$1, -96(%rbp)
	.loc 2 666 16
	movq	$2, -64(%rbp)
	.loc 2 667 11
	jmp	.L144
.L143:
	.loc 2 670 11
	addq	$1, -96(%rbp)
	.loc 2 671 16
	movq	$4, -64(%rbp)
	.loc 2 672 11
	jmp	.L144
.L141:
	.loc 2 675 11
	addq	$1, -96(%rbp)
	.loc 2 676 16
	movq	$8, -64(%rbp)
	.loc 2 677 11
	jmp	.L144
.L140:
	.loc 2 680 17
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	simple_strtoul
	.loc 2 680 15
	xorl	$1, %eax
	.loc 2 680 14
	testb	%al, %al
	je	.L145
	.loc 2 685 15
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 685 28
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	.loc 2 685 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 686 22
	movl	$0, %eax
	jmp	.L205
.L145:
	.loc 2 688 17
	movq	-56(%rbp), %rax
	.loc 2 688 14
	cmpq	%rax, -96(%rbp)
	jne	.L147
	.loc 2 689 18
	movq	$4, -64(%rbp)
	.loc 2 702 11
	jmp	.L207
.L147:
	.loc 2 692 42
	movq	-64(%rbp), %rax
	.loc 2 692 18
	cmpq	$8, %rax
	ja	.L149
	.loc 2 693 40
	movq	-64(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	integral_type_size(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 693 19
	testl	%eax, %eax
	jne	.L150
.L149:
	.loc 2 695 19
	movq	-64(%rbp), %r12
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 695 32
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	.loc 2 695 19
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 698 26
	movl	$0, %eax
	jmp	.L205
.L150:
	.loc 2 700 17
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
.L207:
	.loc 2 702 11
	nop
.L144:
	.loc 2 710 37 discriminator 1
	movq	-64(%rbp), %rax
	.loc 2 710 17 discriminator 1
	leaq	0(,%rax,4), %rdx
	leaq	integral_type_size(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -76(%rbp)
	.loc 2 712 7 discriminator 1
	movsbl	-77(%rbp), %eax
	cmpl	$120, %eax
	je	.L151
	cmpl	$120, %eax
	jg	.L152
	cmpl	$117, %eax
	je	.L153
	cmpl	$117, %eax
	jg	.L152
	cmpl	$100, %eax
	je	.L154
	cmpl	$111, %eax
	je	.L155
	jmp	.L152
.L154:
	.loc 2 715 15
	movl	$0, -72(%rbp)
	.loc 2 716 51
	movq	-64(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	bytes_to_signed_dec_digits(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 716 23
	movl	%eax, -68(%rbp)
	.loc 2 717 11
	cmpl	$5, -76(%rbp)
	je	.L156
	.loc 2 718 20
	cmpl	$4, -76(%rbp)
	jne	.L157
	.loc 2 718 20 is_stmt 0 discriminator 1
	leaq	.LC68(%rip), %rax
	jmp	.L159
.L157:
	.loc 2 718 20 discriminator 2
	leaq	.LC69(%rip), %rax
	jmp	.L159
.L156:
	.loc 2 717 11 is_stmt 1 discriminator 1
	leaq	.LC68(%rip), %rax
.L159:
	.loc 2 717 25 discriminator 3
	movq	-112(%rbp), %rdx
	leaq	16(%rdx), %rcx
	.loc 2 717 11 discriminator 3
	movq	%rax, %rdx
	leaq	.LC70(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 719 11 discriminator 3
	jmp	.L160
.L155:
	.loc 2 722 15
	movl	$2, -72(%rbp)
	.loc 2 723 11
	cmpl	$5, -76(%rbp)
	je	.L161
	.loc 2 725 20
	cmpl	$4, -76(%rbp)
	jne	.L162
	.loc 2 725 20 is_stmt 0 discriminator 1
	leaq	.LC71(%rip), %rax
	jmp	.L164
.L162:
	.loc 2 725 20 discriminator 2
	leaq	.LC72(%rip), %rax
	jmp	.L164
.L161:
	.loc 2 723 11 is_stmt 1 discriminator 1
	leaq	.LC71(%rip), %rax
.L164:
	.loc 2 724 54 discriminator 3
	movq	-64(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	bytes_to_oct_digits(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	.loc 2 723 11 discriminator 3
	movl	%edx, -68(%rbp)
	.loc 2 723 25 discriminator 3
	movq	-112(%rbp), %rdx
	leaq	16(%rdx), %rdi
	.loc 2 723 11 discriminator 3
	movl	-68(%rbp), %edx
	movq	%rax, %rcx
	leaq	.LC73(%rip), %rsi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 726 11 discriminator 3
	jmp	.L160
.L153:
	.loc 2 729 15
	movl	$1, -72(%rbp)
	.loc 2 730 53
	movq	-64(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	bytes_to_unsigned_dec_digits(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 730 23
	movl	%eax, -68(%rbp)
	.loc 2 731 11
	cmpl	$5, -76(%rbp)
	je	.L165
	.loc 2 732 20
	cmpl	$4, -76(%rbp)
	jne	.L166
	.loc 2 732 20 is_stmt 0 discriminator 1
	leaq	.LC74(%rip), %rax
	jmp	.L168
.L166:
	.loc 2 732 20 discriminator 2
	leaq	.LC75(%rip), %rax
	jmp	.L168
.L165:
	.loc 2 731 11 is_stmt 1 discriminator 1
	leaq	.LC74(%rip), %rax
.L168:
	.loc 2 731 25 discriminator 3
	movq	-112(%rbp), %rdx
	leaq	16(%rdx), %rcx
	.loc 2 731 11 discriminator 3
	movq	%rax, %rdx
	leaq	.LC70(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 733 11 discriminator 3
	jmp	.L160
.L151:
	.loc 2 736 15
	movl	$3, -72(%rbp)
	.loc 2 737 11
	cmpl	$5, -76(%rbp)
	je	.L169
	.loc 2 739 20
	cmpl	$4, -76(%rbp)
	jne	.L170
	.loc 2 739 20 is_stmt 0 discriminator 1
	leaq	.LC76(%rip), %rax
	jmp	.L172
.L170:
	.loc 2 739 20 discriminator 2
	leaq	.LC77(%rip), %rax
	jmp	.L172
.L169:
	.loc 2 737 11 is_stmt 1 discriminator 1
	leaq	.LC76(%rip), %rax
.L172:
	.loc 2 738 54 discriminator 3
	movq	-64(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	bytes_to_hex_digits(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	.loc 2 737 11 discriminator 3
	movl	%edx, -68(%rbp)
	.loc 2 737 25 discriminator 3
	movq	-112(%rbp), %rdx
	leaq	16(%rdx), %rdi
	.loc 2 737 11 discriminator 3
	movl	-68(%rbp), %edx
	movq	%rax, %rcx
	leaq	.LC73(%rip), %rsi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 740 11 discriminator 3
	jmp	.L160
.L152:
	.loc 2 743 11
	call	abort@PLT
.L160:
	.loc 2 746 7
	movq	-112(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$7, %rax
	jbe	.L173
	.loc 2 746 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6795(%rip), %rcx
	movl	$746, %edx
	leaq	.LC64(%rip), %rsi
	leaq	.LC78(%rip), %rdi
	call	__assert_fail@PLT
.L173:
	cmpl	$5, -76(%rbp)
	ja	.L174
	movl	-76(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L176(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L176(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L176:
	.long	.L174-.L176
	.long	.L180-.L176
	.long	.L179-.L176
	.long	.L178-.L176
	.long	.L177-.L176
	.long	.L175-.L176
	.text
.L180:
	.loc 2 753 29 is_stmt 1
	cmpl	$0, -72(%rbp)
	jne	.L181
	.loc 2 753 29 is_stmt 0 discriminator 1
	leaq	print_s_char(%rip), %rax
	jmp	.L182
.L181:
	.loc 2 753 29 discriminator 2
	leaq	print_char(%rip), %rax
.L182:
	.loc 2 751 26 is_stmt 1
	movq	%rax, -48(%rbp)
	.loc 2 754 11
	jmp	.L183
.L179:
	.loc 2 759 29
	cmpl	$0, -72(%rbp)
	jne	.L184
	.loc 2 759 29 is_stmt 0 discriminator 1
	leaq	print_s_short(%rip), %rax
	jmp	.L185
.L184:
	.loc 2 759 29 discriminator 2
	leaq	print_short(%rip), %rax
.L185:
	.loc 2 757 26 is_stmt 1
	movq	%rax, -48(%rbp)
	.loc 2 760 11
	jmp	.L183
.L178:
	.loc 2 763 26
	leaq	print_int(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 764 11
	jmp	.L183
.L177:
	.loc 2 767 26
	leaq	print_long(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 768 11
	jmp	.L183
.L175:
	.loc 2 771 26
	leaq	print_long_long(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 772 11
	jmp	.L183
.L174:
	.loc 2 775 11
	call	abort@PLT
.L183:
	.loc 2 777 7
	jmp	.L186
.L136:
	.loc 2 780 11
	movl	$4, -72(%rbp)
	.loc 2 781 7
	addq	$1, -96(%rbp)
	.loc 2 782 15
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$76, %eax
	je	.L187
	cmpl	$76, %eax
	jg	.L188
	cmpl	$68, %eax
	je	.L189
	cmpl	$70, %eax
	jne	.L188
	.loc 2 785 11
	addq	$1, -96(%rbp)
	.loc 2 786 16
	movq	$4, -64(%rbp)
	.loc 2 787 11
	jmp	.L190
.L189:
	.loc 2 790 11
	addq	$1, -96(%rbp)
	.loc 2 791 16
	movq	$8, -64(%rbp)
	.loc 2 792 11
	jmp	.L190
.L187:
	.loc 2 795 11
	addq	$1, -96(%rbp)
	.loc 2 796 16
	movq	$16, -64(%rbp)
	.loc 2 797 11
	jmp	.L190
.L188:
	.loc 2 800 17
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	simple_strtoul
	.loc 2 800 15
	xorl	$1, %eax
	.loc 2 800 14
	testb	%al, %al
	je	.L191
	.loc 2 805 15
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 805 28
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	.loc 2 805 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 806 22
	movl	$0, %eax
	jmp	.L205
.L191:
	.loc 2 808 17
	movq	-56(%rbp), %rax
	.loc 2 808 14
	cmpq	%rax, -96(%rbp)
	jne	.L192
	.loc 2 809 18
	movq	$8, -64(%rbp)
	.loc 2 824 11
	jmp	.L208
.L192:
	.loc 2 812 24
	movq	-64(%rbp), %rax
	.loc 2 812 18
	cmpq	$16, %rax
	ja	.L194
	.loc 2 813 34
	movq	-64(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	fp_type_size(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 813 19
	testl	%eax, %eax
	jne	.L195
.L194:
	.loc 2 815 19
	movq	-64(%rbp), %r12
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 816 26
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	.loc 2 815 19
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 820 26
	movl	$0, %eax
	jmp	.L205
.L195:
	.loc 2 822 17
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
.L208:
	.loc 2 824 11
	nop
.L190:
	.loc 2 826 31
	movq	-64(%rbp), %rax
	.loc 2 826 17
	leaq	0(,%rax,4), %rdx
	leaq	fp_type_size(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -76(%rbp)
.LBB26:
	.loc 2 829 38
	call	localeconv@PLT
	movq	%rax, -40(%rbp)
	.loc 2 831 18
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 831 33
	movzbl	(%rax), %eax
	.loc 2 831 70
	testb	%al, %al
	je	.L196
	.loc 2 831 53 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 831 39 discriminator 1
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L197
.L196:
	.loc 2 831 70 discriminator 2
	movl	$1, %eax
.L197:
	.loc 2 830 16
	movq	%rax, -32(%rbp)
	cmpl	$8, -76(%rbp)
	je	.L198
	cmpl	$8, -76(%rbp)
	ja	.L199
	cmpl	$6, -76(%rbp)
	je	.L200
	cmpl	$7, -76(%rbp)
	je	.L201
	jmp	.L199
.L200:
	.loc 2 836 28
	leaq	print_float(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 837 27
	movq	-32(%rbp), %rax
	addl	$14, %eax
	.loc 2 837 25
	movl	%eax, -68(%rbp)
	.loc 2 838 13
	jmp	.L202
.L201:
	.loc 2 841 28
	leaq	print_double(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 842 27
	movq	-32(%rbp), %rax
	addl	$23, %eax
	.loc 2 842 25
	movl	%eax, -68(%rbp)
	.loc 2 843 13
	jmp	.L202
.L198:
	.loc 2 846 28
	leaq	print_long_double(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 847 27
	movq	-32(%rbp), %rax
	addl	$28, %eax
	.loc 2 847 25
	movl	%eax, -68(%rbp)
	.loc 2 848 13
	jmp	.L202
.L199:
	.loc 2 851 13
	call	abort@PLT
.L202:
	.loc 2 854 9
	jmp	.L186
.L138:
.LBE26:
	.loc 2 858 7
	addq	$1, -96(%rbp)
	.loc 2 859 11
	movl	$5, -72(%rbp)
	.loc 2 860 17
	movl	$1, -76(%rbp)
	.loc 2 861 22
	leaq	print_named_ascii(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 862 19
	movl	$3, -68(%rbp)
	.loc 2 863 7
	jmp	.L186
.L137:
	.loc 2 866 7
	addq	$1, -96(%rbp)
	.loc 2 867 11
	movl	$6, -72(%rbp)
	.loc 2 868 17
	movl	$1, -76(%rbp)
	.loc 2 869 22
	leaq	print_ascii(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 870 19
	movl	$3, -68(%rbp)
	.loc 2 871 7
	jmp	.L186
.L133:
	.loc 2 874 7
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 2 875 14
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 874 7
	movsbl	%al, %ebx
	.loc 2 874 20
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	.loc 2 874 7
	movq	%r12, %r8
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 876 14
	movl	$0, %eax
	jmp	.L205
.L186:
	.loc 2 879 15
	movq	-112(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, 4(%rax)
	.loc 2 880 14
	movq	-112(%rbp), %rax
	movl	-72(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 881 25
	movq	-112(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 883 22
	movq	-112(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 28(%rax)
	.loc 2 884 31
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 884 34
	cmpb	$122, %al
	sete	%dl
	.loc 2 884 28
	movq	-112(%rbp), %rax
	movb	%dl, 24(%rax)
	.loc 2 885 12
	movq	-112(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 885 6
	testb	%al, %al
	je	.L203
	.loc 2 886 6
	addq	$1, -96(%rbp)
.L203:
	.loc 2 888 6
	cmpq	$0, -104(%rbp)
	je	.L204
	.loc 2 889 11
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
.L204:
	.loc 2 891 10
	movl	$1, %eax
.L205:
	.loc 2 892 1 discriminator 3
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L206
	.loc 2 892 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L206:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	decode_one_format, .-decode_one_format
	.section	.rodata
.LC81:
	.string	"standard input"
.LC82:
	.string	"r"
.LC83:
	.string	"%s"
	.text
	.type	open_next_file, @function
open_next_file:
.LFB66:
	.loc 2 903 1 is_stmt 1
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
	.loc 2 904 8
	movb	$1, -17(%rbp)
.L214:
	.loc 2 908 24
	movq	file_list(%rip), %rax
	movq	(%rax), %rax
	.loc 2 908 22
	movq	%rax, input_filename(%rip)
	.loc 2 909 26
	movq	input_filename(%rip), %rax
	.loc 2 909 10
	testq	%rax, %rax
	jne	.L210
	.loc 2 910 16
	movzbl	-17(%rbp), %eax
	jmp	.L211
.L210:
	.loc 2 911 7
	movq	file_list(%rip), %rax
	addq	$8, %rax
	movq	%rax, file_list(%rip)
	.loc 2 913 11
	movq	input_filename(%rip), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 913 10
	testl	%eax, %eax
	jne	.L212
	.loc 2 915 28
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	.loc 2 915 26
	movq	%rax, input_filename(%rip)
	.loc 2 916 21
	movq	stdin(%rip), %rax
	movq	%rax, in_stream(%rip)
	.loc 2 917 27
	movb	$1, have_read_stdin(%rip)
	.loc 2 918 11
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	jmp	.L213
.L212:
	.loc 2 922 23
	movq	input_filename(%rip), %rax
	leaq	.LC82(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	.loc 2 922 21
	movq	%rax, in_stream(%rip)
	.loc 2 923 25
	movq	in_stream(%rip), %rax
	.loc 2 923 14
	testq	%rax, %rax
	jne	.L213
	.loc 2 925 15
	movq	input_filename(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 925 25
	call	__errno_location@PLT
	.loc 2 925 15
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC83(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 926 18
	movb	$0, -17(%rbp)
.L213:
	.loc 2 930 20
	movq	in_stream(%rip), %rax
	.loc 2 930 3
	testq	%rax, %rax
	je	.L214
	.loc 2 932 7
	movzbl	limit_bytes_to_format(%rip), %eax
	.loc 2 932 6
	testb	%al, %al
	je	.L215
	.loc 2 932 32 discriminator 1
	movzbl	flag_dump_strings(%rip), %eax
	xorl	$1, %eax
	.loc 2 932 29 discriminator 1
	testb	%al, %al
	je	.L215
	.loc 2 933 5
	movq	in_stream(%rip), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setvbuf@PLT
.L215:
	.loc 2 935 10
	movzbl	-17(%rbp), %eax
.L211:
	.loc 2 936 1
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	open_next_file, .-open_next_file
	.section	.rodata
.LC84:
	.string	"%s: read error"
.LC85:
	.string	"write error"
	.text
	.type	check_and_close, @function
check_and_close:
.LFB67:
	.loc 2 947 1
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
	.loc 2 948 8
	movb	$1, -17(%rbp)
	.loc 2 950 17
	movq	in_stream(%rip), %rax
	.loc 2 950 6
	testq	%rax, %rax
	je	.L217
	.loc 2 952 11
	movq	in_stream(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 952 10
	testl	%eax, %eax
	je	.L218
	.loc 2 954 11
	movq	input_filename(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 954 31
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 954 11
	movl	-36(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 955 17
	movq	file_list(%rip), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 955 14
	testl	%eax, %eax
	je	.L219
	.loc 2 956 13
	movq	in_stream(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
.L219:
	.loc 2 957 14
	movb	$0, -17(%rbp)
	jmp	.L220
.L218:
	.loc 2 959 18
	movq	file_list(%rip), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 959 15
	testl	%eax, %eax
	je	.L220
	.loc 2 959 48 discriminator 1
	movq	in_stream(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 959 45 discriminator 1
	testl	%eax, %eax
	je	.L220
	.loc 2 961 11
	movq	input_filename(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 961 21
	call	__errno_location@PLT
	.loc 2 961 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC83(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 962 14
	movb	$0, -17(%rbp)
.L220:
	.loc 2 965 17
	movq	$0, in_stream(%rip)
.L217:
	.loc 2 968 7
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 968 6
	testl	%eax, %eax
	je	.L221
	.loc 2 970 20
	leaq	.LC85(%rip), %rdi
	call	gettext@PLT
	.loc 2 970 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 971 10
	movb	$0, -17(%rbp)
.L221:
	.loc 2 974 10
	movzbl	-17(%rbp), %eax
	.loc 2 975 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	check_and_close, .-check_and_close
	.section	.rodata
.LC86:
	.string	"s != NULL"
.LC87:
	.string	"s != next"
	.text
	.type	decode_format_string, @function
decode_format_string:
.LFB68:
	.loc 2 983 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 983 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 984 15
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 985 3
	cmpq	$0, -40(%rbp)
	jne	.L225
	.loc 2 985 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6850(%rip), %rcx
	movl	$985, %edx
	leaq	.LC64(%rip), %rsi
	leaq	.LC86(%rip), %rdi
	call	__assert_fail@PLT
.L230:
.LBB27:
	.loc 2 991 29 is_stmt 1
	movq	n_specs_allocated(%rip), %rdx
	movq	n_specs(%rip), %rax
	.loc 2 991 10
	cmpq	%rax, %rdx
	ja	.L226
.LBB28:
	.loc 2 992 16
	movq	spec(%rip), %rax
	movl	$40, %edx
	leaq	n_specs_allocated(%rip), %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 992 14
	movq	%rax, spec(%rip)
.L226:
.LBE28:
	.loc 2 994 13
	movq	spec(%rip), %rcx
	.loc 2 994 55
	movq	n_specs(%rip), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 2 994 13
	addq	%rax, %rcx
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	decode_one_format
	.loc 2 994 11
	xorl	$1, %eax
	.loc 2 994 10
	testb	%al, %al
	je	.L227
	.loc 2 995 16
	movl	$0, %eax
	jmp	.L228
.L227:
	.loc 2 997 7
	movq	-24(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L229
	.loc 2 997 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6850(%rip), %rcx
	movl	$997, %edx
	leaq	.LC64(%rip), %rsi
	leaq	.LC87(%rip), %rdi
	call	__assert_fail@PLT
.L229:
	.loc 2 998 9 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 999 7 discriminator 2
	movq	n_specs(%rip), %rax
	addq	$1, %rax
	movq	%rax, n_specs(%rip)
.L225:
.LBE27:
	.loc 2 987 10
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 987 9
	testb	%al, %al
	jne	.L230
	.loc 2 1002 10
	movl	$1, %eax
.L228:
	.loc 2 1003 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L231
	call	__stack_chk_fail@PLT
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	decode_format_string, .-decode_format_string
	.section	.rodata
	.align 8
.LC88:
	.string	"cannot skip past end of combined input"
	.text
	.type	skip, @function
skip:
.LFB69:
	.loc 2 1014 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -8408(%rbp)
	.loc 2 1014 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1015 8
	movb	$1, -8390(%rbp)
	.loc 2 1016 7
	movl	$0, -8388(%rbp)
	.loc 2 1018 6
	cmpq	$0, -8408(%rbp)
	jne	.L235
	.loc 2 1019 12
	movl	$1, %eax
	jmp	.L234
.L253:
.LBB29:
	.loc 2 1035 11
	movq	in_stream(%rip), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %edx
	leaq	-8368(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	fstat@PLT
	.loc 2 1035 10
	testl	%eax, %eax
	jne	.L236
.LBB30:
	.loc 2 1037 30
	leaq	-8368(%rbp), %rax
	movq	%rax, %rdi
	call	usable_st_size
	movb	%al, -8389(%rbp)
	.loc 2 1046 14
	cmpb	$0, -8389(%rbp)
	je	.L237
	.loc 2 1046 30 discriminator 1
	movq	-8312(%rbp), %rax
	testq	%rax, %rax
	jle	.L238
	.loc 2 1046 30 is_stmt 0 discriminator 2
	movq	-8312(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L238
	.loc 2 1046 30 discriminator 4
	movq	-8312(%rbp), %rax
	jmp	.L239
.L238:
	.loc 2 1046 30 discriminator 5
	movl	$512, %eax
.L239:
	.loc 2 1046 66 is_stmt 1 discriminator 7
	movq	-8320(%rbp), %rdx
	.loc 2 1046 27 discriminator 7
	cmpq	%rdx, %rax
	jge	.L237
	.loc 2 1048 41
	movq	-8320(%rbp), %rax
	.loc 2 1048 18
	cmpq	%rax, -8408(%rbp)
	jbe	.L240
	.loc 2 1049 37
	movq	-8320(%rbp), %rax
	.loc 2 1049 24
	subq	%rax, -8408(%rbp)
	.loc 2 1048 18
	jmp	.L243
.L240:
	.loc 2 1052 23
	movq	-8408(%rbp), %rcx
	movq	in_stream(%rip), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fseeko@PLT
	.loc 2 1052 22
	testl	%eax, %eax
	je	.L242
	.loc 2 1054 34
	call	__errno_location@PLT
	.loc 2 1054 32
	movl	(%rax), %eax
	movl	%eax, -8388(%rbp)
	.loc 2 1055 26
	movb	$0, -8390(%rbp)
.L242:
	.loc 2 1057 26
	movq	$0, -8408(%rbp)
	.loc 2 1048 18
	jmp	.L243
.L237:
	.loc 2 1061 20
	movzbl	-8389(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1061 19
	testb	%al, %al
	je	.L244
	.loc 2 1061 36 discriminator 1
	movq	-8408(%rbp), %rcx
	movq	in_stream(%rip), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fseeko@PLT
	.loc 2 1061 33 discriminator 1
	testl	%eax, %eax
	jne	.L244
	.loc 2 1062 20
	movq	$0, -8408(%rbp)
	jmp	.L243
.L244:
.LBB31:
	.loc 2 1071 36
	movq	$8192, -8384(%rbp)
	.loc 2 1073 21
	jmp	.L245
.L249:
	.loc 2 1075 22
	movq	-8408(%rbp), %rax
	cmpq	-8384(%rbp), %rax
	jnb	.L246
	.loc 2 1076 37
	movq	-8408(%rbp), %rax
	movq	%rax, -8384(%rbp)
.L246:
	.loc 2 1077 34
	movq	in_stream(%rip), %rcx
	movq	-8384(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread_unlocked@PLT
	movq	%rax, -8376(%rbp)
	.loc 2 1078 26
	movq	-8376(%rbp), %rax
	subq	%rax, -8408(%rbp)
	.loc 2 1079 22
	movq	-8376(%rbp), %rax
	cmpq	-8384(%rbp), %rax
	je	.L245
	.loc 2 1081 27
	movq	in_stream(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1081 26
	testl	%eax, %eax
	je	.L247
	.loc 2 1083 38
	call	__errno_location@PLT
	.loc 2 1083 36
	movl	(%rax), %eax
	movl	%eax, -8388(%rbp)
	.loc 2 1084 30
	movb	$0, -8390(%rbp)
	.loc 2 1085 34
	movq	$0, -8408(%rbp)
	.loc 2 1086 27
	jmp	.L243
.L247:
	.loc 2 1088 27
	movq	in_stream(%rip), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1088 26
	testl	%eax, %eax
	jne	.L256
.L245:
	.loc 2 1073 21
	cmpq	$0, -8408(%rbp)
	jne	.L249
	jmp	.L243
.L256:
	.loc 2 1089 25
	nop
.L243:
.LBE31:
	.loc 2 1094 14
	cmpq	$0, -8408(%rbp)
	jne	.L250
	.loc 2 1095 13
	jmp	.L252
.L236:
.LBE30:
	.loc 2 1100 11
	movq	input_filename(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 1100 21
	call	__errno_location@PLT
	.loc 2 1100 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC83(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1101 14
	movb	$0, -8390(%rbp)
.L250:
	.loc 2 1104 13 discriminator 2
	movl	-8388(%rbp), %eax
	movl	%eax, %edi
	call	check_and_close
	.loc 2 1104 10 discriminator 2
	movzbl	-8390(%rbp), %edx
	.loc 2 1104 13 discriminator 2
	movzbl	%al, %eax
	.loc 2 1104 10 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -8390(%rbp)
	.loc 2 1106 13 discriminator 2
	call	open_next_file
	.loc 2 1106 10 discriminator 2
	movzbl	-8390(%rbp), %edx
	.loc 2 1106 13 discriminator 2
	movzbl	%al, %eax
	.loc 2 1106 10 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -8390(%rbp)
.L235:
.LBE29:
	.loc 2 1021 20
	movq	in_stream(%rip), %rax
	.loc 2 1021 9
	testq	%rax, %rax
	jne	.L253
.L252:
	.loc 2 1109 6
	cmpq	$0, -8408(%rbp)
	je	.L254
.LBB32:
	.loc 2 1110 5
	leaq	.LC88(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L254:
.LBE32:
	.loc 2 1112 10
	movzbl	-8390(%rbp), %eax
.L234:
	.loc 2 1113 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L255
	call	__stack_chk_fail@PLT
.L255:
	addq	$8408, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	skip, .-skip
	.type	format_address_none, @function
format_address_none:
.LFB70:
	.loc 2 1118 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	.loc 2 1119 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	format_address_none, .-format_address_none
	.section	.rodata
.LC89:
	.string	"0123456789abcdef"
	.text
	.type	format_address_std, @function
format_address_std:
.LFB71:
	.loc 2 1123 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, %eax
	movb	%al, -76(%rbp)
	.loc 2 1123 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1125 9
	leaq	-48(%rbp), %rax
	addq	$25, %rax
	movq	%rax, -64(%rbp)
	.loc 2 1128 8
	subq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 1129 8
	subq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	-76(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 1130 14
	movl	address_pad_len(%rip), %eax
	cltq
	negq	%rax
	movq	%rax, %rdx
	.loc 2 1130 10
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 2 1134 3
	movl	address_base(%rip), %eax
	cmpl	$16, %eax
	je	.L259
	cmpl	$16, %eax
	jg	.L263
	cmpl	$8, %eax
	je	.L261
	cmpl	$10, %eax
	je	.L262
	jmp	.L260
.L266:
	.loc 2 1136 5
	nop
.L261:
	.loc 2 1138 31 discriminator 1
	movq	-72(%rbp), %rax
	andl	$7, %eax
	.loc 2 1138 20 discriminator 1
	addl	$48, %eax
	.loc 2 1138 14 discriminator 1
	subq	$1, -64(%rbp)
	.loc 2 1138 20 discriminator 1
	movl	%eax, %edx
	.loc 2 1138 14 discriminator 1
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 1139 23 discriminator 1
	shrq	$3, -72(%rbp)
	.loc 2 1139 7 discriminator 1
	cmpq	$0, -72(%rbp)
	jne	.L266
	.loc 2 1140 7
	jmp	.L260
.L267:
	.loc 2 1142 5
	nop
.L262:
	.loc 2 1144 31 discriminator 1
	movq	-72(%rbp), %rcx
	movabsq	$-3689348814741910323, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	.loc 2 1144 20 discriminator 1
	movl	%edx, %eax
	addl	$48, %eax
	.loc 2 1144 14 discriminator 1
	subq	$1, -64(%rbp)
	.loc 2 1144 20 discriminator 1
	movl	%eax, %edx
	.loc 2 1144 14 discriminator 1
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 1145 23 discriminator 1
	movq	-72(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -72(%rbp)
	.loc 2 1145 7 discriminator 1
	cmpq	$0, -72(%rbp)
	jne	.L267
	.loc 2 1146 7
	jmp	.L260
.L268:
	.loc 2 1148 5
	nop
.L259:
	.loc 2 1150 43 discriminator 1
	movq	-72(%rbp), %rax
	andl	$15, %eax
	movq	%rax, %rdx
	.loc 2 1150 14 discriminator 1
	subq	$1, -64(%rbp)
	.loc 2 1150 34 discriminator 1
	leaq	.LC89(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	.loc 2 1150 14 discriminator 1
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 1151 23 discriminator 1
	shrq	$4, -72(%rbp)
	.loc 2 1151 7 discriminator 1
	cmpq	$0, -72(%rbp)
	jne	.L268
	.loc 2 1152 7
	nop
.L260:
	.loc 2 1155 9
	jmp	.L263
.L264:
	.loc 2 1156 10
	subq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$48, (%rax)
.L263:
	.loc 2 1155 9 discriminator 1
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L264
	.loc 2 1158 3
	movq	stdout(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1159 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L265
	call	__stack_chk_fail@PLT
.L265:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	format_address_std, .-format_address_std
	.type	format_address_paren, @function
format_address_paren:
.LFB72:
	.loc 2 1163 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	.loc 2 1164 3
	movl	$40, %edi
	call	putchar_unlocked@PLT
	.loc 2 1165 3
	movq	-8(%rbp), %rax
	movl	$41, %esi
	movq	%rax, %rdi
	call	format_address_std
	.loc 2 1166 6
	cmpb	$0, -12(%rbp)
	je	.L271
	.loc 2 1167 5
	movsbl	-12(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L271:
	.loc 2 1168 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	format_address_paren, .-format_address_paren
	.type	format_address_label, @function
format_address_label:
.LFB73:
	.loc 2 1172 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	.loc 2 1173 3
	movq	-8(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	format_address_std
	.loc 2 1174 3
	movsbl	-12(%rbp), %eax
	movq	pseudo_offset(%rip), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	format_address_paren
	.loc 2 1175 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	format_address_label, .-format_address_label
	.section	.rodata
.LC90:
	.string	"*"
	.text
	.type	write_block, @function
write_block:
.LFB74:
	.loc 2 1190 1
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
	.loc 2 1196 7
	movzbl	abbreviate_duplicate_blocks(%rip), %eax
	.loc 2 1196 6
	testb	%al, %al
	je	.L274
	.loc 2 1197 10
	movzbl	first.6913(%rip), %eax
	xorl	$1, %eax
	.loc 2 1197 7
	testb	%al, %al
	je	.L274
	.loc 2 1197 28 discriminator 1
	movq	bytes_per_block(%rip), %rax
	.loc 2 1197 17 discriminator 1
	cmpq	%rax, -48(%rbp)
	jne	.L274
	.loc 2 1198 10
	movq	bytes_per_block(%rip), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 2 1198 7
	testl	%eax, %eax
	jne	.L274
	.loc 2 1200 11
	movzbl	prev_pair_equal.6914(%rip), %eax
	.loc 2 1200 10
	testb	%al, %al
	jne	.L276
	.loc 2 1207 11
	leaq	.LC90(%rip), %rdi
	call	puts@PLT
	.loc 2 1208 27
	movb	$1, prev_pair_equal.6914(%rip)
	.loc 2 1200 10
	jmp	.L276
.L274:
	.loc 2 1213 23
	movb	$0, prev_pair_equal.6914(%rip)
.LBB33:
	.loc 2 1214 19
	movq	$0, -8(%rbp)
	.loc 2 1214 7
	jmp	.L277
.L281:
.LBB34:
	.loc 2 1216 45
	movq	spec(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1216 48
	movl	4(%rax), %eax
	.loc 2 1216 15
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	width_bytes(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 1217 50
	movq	bytes_per_block(%rip), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rsi
	movl	$0, %edx
	divq	%rsi
	.loc 2 1217 15
	movl	%eax, -24(%rbp)
	.loc 2 1218 47
	movq	bytes_per_block(%rip), %rax
	subq	-48(%rbp), %rax
	.loc 2 1218 58
	movl	-28(%rbp), %edx
	movslq	%edx, %rsi
	movl	$0, %edx
	divq	%rsi
	.loc 2 1218 15
	movl	%eax, -20(%rbp)
	.loc 2 1219 14
	cmpq	$0, -8(%rbp)
	jne	.L278
	.loc 2 1220 13
	movq	format_address(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
.LVL0:
	jmp	.L279
.L278:
	.loc 2 1222 13
	movl	address_pad_len(%rip), %eax
	leaq	.LC18(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L279:
	.loc 2 1223 17
	movq	spec(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1223 12
	movq	8(%rax), %r10
	.loc 2 1225 63
	movq	spec(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1223 12
	movl	32(%rax), %r8d
	.loc 2 1225 42
	movq	spec(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1223 12
	movl	28(%rax), %edi
	.loc 2 1224 54
	movq	spec(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1224 57
	leaq	16(%rax), %rcx
	.loc 2 1223 12
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movl	-24(%rbp), %eax
	cltq
	movq	-64(%rbp), %rdx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	*%r10
.LVL1:
	.loc 2 1226 19
	movq	spec(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1226 22
	movzbl	24(%rax), %eax
	.loc 2 1226 14
	testb	%al, %al
	je	.L280
.LBB35:
	.loc 2 1229 37
	movq	spec(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1229 19
	movl	28(%rax), %eax
	movl	%eax, -16(%rbp)
	.loc 2 1230 36
	movq	spec(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1230 39
	movl	32(%rax), %eax
	.loc 2 1230 50
	imull	-20(%rbp), %eax
	.loc 2 1230 19
	cltd
	idivl	-24(%rbp)
	movl	%eax, -12(%rbp)
	.loc 2 1232 43
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, %edx
	.loc 2 1232 15
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	leaq	.LC18(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1233 15
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dump_hexl_mode_trailer
.L280:
.LBE35:
	.loc 2 1235 11 discriminator 2
	movl	$10, %edi
	call	putchar_unlocked@PLT
.LBE34:
	.loc 2 1214 40 discriminator 2
	addq	$1, -8(%rbp)
.L277:
	.loc 2 1214 28 discriminator 1
	movq	n_specs(%rip), %rax
	.loc 2 1214 7 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L281
.L276:
.LBE33:
	.loc 2 1238 9
	movb	$0, first.6913(%rip)
	.loc 2 1239 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	write_block, .-write_block
	.type	read_char, @function
read_char:
.LFB75:
	.loc 2 1254 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 1255 8
	movb	$1, -1(%rbp)
	.loc 2 1257 6
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
	.loc 2 1259 9
	jmp	.L283
.L286:
	.loc 2 1261 12
	movq	in_stream(%rip), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	.loc 2 1261 10
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 2 1263 11
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 1263 10
	cmpl	$-1, %eax
	jne	.L288
	.loc 2 1266 30
	call	__errno_location@PLT
	.loc 2 1266 13
	movl	(%rax), %eax
	movl	%eax, %edi
	call	check_and_close
	.loc 2 1266 10
	movzbl	-1(%rbp), %edx
	.loc 2 1266 13
	movzbl	%al, %eax
	.loc 2 1266 10
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -1(%rbp)
	.loc 2 1268 13
	call	open_next_file
	.loc 2 1268 10
	movzbl	-1(%rbp), %edx
	.loc 2 1268 13
	movzbl	%al, %eax
	.loc 2 1268 10
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -1(%rbp)
.L283:
	.loc 2 1259 20
	movq	in_stream(%rip), %rax
	.loc 2 1259 9
	testq	%rax, %rax
	jne	.L286
	jmp	.L285
.L288:
	.loc 2 1264 9
	nop
.L285:
	.loc 2 1271 10
	movzbl	-1(%rbp), %eax
	.loc 2 1272 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	read_char, .-read_char
	.section	.rodata
.LC91:
	.string	"0 < n && n <= bytes_per_block"
	.text
	.type	read_block, @function
read_block:
.LFB76:
	.loc 2 1290 1
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
	.loc 2 1291 8
	movb	$1, -17(%rbp)
	.loc 2 1293 3
	cmpq	$0, -40(%rbp)
	je	.L290
	.loc 2 1293 3 is_stmt 0 discriminator 1
	movq	bytes_per_block(%rip), %rax
	cmpq	%rax, -40(%rbp)
	jbe	.L297
.L290:
	.loc 2 1293 3 discriminator 3
	leaq	__PRETTY_FUNCTION__.6937(%rip), %rcx
	movl	$1293, %edx
	leaq	.LC64(%rip), %rsi
	leaq	.LC91(%rip), %rdi
	call	__assert_fail@PLT
.L297:
	.loc 2 1295 22 is_stmt 1
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 1297 9
	jmp	.L292
.L295:
.LBB36:
	.loc 2 1302 22
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1302 16
	movq	-40(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 1303 16
	movq	in_stream(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fread_unlocked@PLT
	movq	%rax, -8(%rbp)
	.loc 2 1305 26
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1307 10
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L298
	.loc 2 1310 30
	call	__errno_location@PLT
	.loc 2 1310 13
	movl	(%rax), %eax
	movl	%eax, %edi
	call	check_and_close
	.loc 2 1310 10
	movzbl	-17(%rbp), %edx
	.loc 2 1310 13
	movzbl	%al, %eax
	.loc 2 1310 10
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -17(%rbp)
	.loc 2 1312 13
	call	open_next_file
	.loc 2 1312 10
	movzbl	-17(%rbp), %edx
	.loc 2 1312 13
	movzbl	%al, %eax
	.loc 2 1312 10
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -17(%rbp)
.L292:
.LBE36:
	.loc 2 1297 20
	movq	in_stream(%rip), %rax
	.loc 2 1297 9
	testq	%rax, %rax
	jne	.L295
	jmp	.L294
.L298:
.LBB37:
	.loc 2 1308 9
	nop
.L294:
.LBE37:
	.loc 2 1315 10
	movzbl	-17(%rbp), %eax
	.loc 2 1316 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	read_block, .-read_block
	.type	get_lcm, @function
get_lcm:
.LFB77:
	.loc 2 1323 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 1324 7
	movl	$1, -12(%rbp)
.LBB38:
	.loc 2 1326 15
	movq	$0, -8(%rbp)
	.loc 2 1326 3
	jmp	.L300
.L301:
	.loc 2 1327 41 discriminator 3
	movq	spec(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1327 44 discriminator 3
	movl	4(%rax), %eax
	.loc 2 1327 36 discriminator 3
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	width_bytes(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 1327 13 discriminator 3
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcm
	.loc 2 1327 11 discriminator 3
	movl	%eax, -12(%rbp)
	.loc 2 1326 36 discriminator 3
	addq	$1, -8(%rbp)
.L300:
	.loc 2 1326 24 discriminator 1
	movq	n_specs(%rip), %rax
	.loc 2 1326 3 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L301
.LBE38:
	.loc 2 1328 10
	movl	-12(%rbp), %eax
	.loc 2 1329 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	get_lcm, .-get_lcm
	.section	.rodata
.LC92:
	.string	"Bb"
	.text
	.type	parse_old_offset, @function
parse_old_offset:
.LFB78:
	.loc 2 1336 1
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
	.loc 2 1339 7
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1339 6
	testb	%al, %al
	jne	.L304
	.loc 2 1340 12
	movl	$0, %eax
	jmp	.L305
.L304:
	.loc 2 1343 8
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1343 6
	cmpb	$43, %al
	jne	.L306
	.loc 2 1344 5
	addq	$1, -24(%rbp)
.L306:
	.loc 2 1349 7
	movq	-24(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 1349 6
	testq	%rax, %rax
	je	.L307
	.loc 2 1350 11
	movl	$10, -4(%rbp)
	jmp	.L308
.L307:
	.loc 2 1353 12
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1353 10
	cmpb	$48, %al
	jne	.L309
	.loc 2 1353 28 discriminator 1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1353 23 discriminator 1
	cmpb	$120, %al
	je	.L310
	.loc 2 1353 43 discriminator 2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1353 39 discriminator 2
	cmpb	$88, %al
	jne	.L309
.L310:
	.loc 2 1354 15
	movl	$16, -4(%rbp)
	jmp	.L308
.L309:
	.loc 2 1356 15
	movl	$8, -4(%rbp)
.L308:
	.loc 2 1359 10
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	leaq	.LC92(%rip), %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 2 1359 52
	testl	%eax, %eax
	sete	%al
.L305:
	.loc 2 1360 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	parse_old_offset, .-parse_old_offset
	.section	.rodata
	.align 8
.LC93:
	.string	"n_bytes_read == bytes_per_block"
	.text
	.type	dump, @function
dump:
.LFB79:
	.loc 2 1376 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.loc 2 1376 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1379 8
	movb	$0, -70(%rbp)
	.loc 2 1380 8
	movb	$1, -69(%rbp)
	.loc 2 1383 14
	movq	bytes_per_block(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	xnmalloc@PLT
	.loc 2 1383 12
	movq	%rax, -32(%rbp)
	.loc 2 1384 19
	movq	-32(%rbp), %rdx
	.loc 2 1384 23
	movq	bytes_per_block(%rip), %rax
	addq	%rdx, %rax
	.loc 2 1384 12
	movq	%rax, -24(%rbp)
	.loc 2 1386 18
	movq	n_bytes_to_skip(%rip), %rax
	movq	%rax, -56(%rbp)
	.loc 2 1388 7
	movzbl	limit_bytes_to_format(%rip), %eax
	.loc 2 1388 6
	testb	%al, %al
	je	.L312
.L317:
.LBB39:
	.loc 2 1393 30
	movq	end_offset(%rip), %rax
	.loc 2 1393 14
	cmpq	%rax, -56(%rbp)
	jb	.L313
	.loc 2 1395 28
	movq	$0, -64(%rbp)
	.loc 2 1396 15
	jmp	.L318
.L313:
	.loc 2 1398 22
	movq	end_offset(%rip), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	bytes_per_block(%rip), %rax
	.loc 2 1398 20
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 1400 17
	movzbl	-70(%rbp), %eax
	cltq
	movq	-32(%rbp,%rax,8), %rcx
	leaq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	read_block
	.loc 2 1400 14
	movzbl	-69(%rbp), %edx
	.loc 2 1400 17
	movzbl	%al, %eax
	.loc 2 1400 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -69(%rbp)
	.loc 2 1401 28
	movq	-64(%rbp), %rdx
	movq	bytes_per_block(%rip), %rax
	.loc 2 1401 14
	cmpq	%rax, %rdx
	jb	.L325
	.loc 2 1403 11
	movq	-64(%rbp), %rdx
	movq	bytes_per_block(%rip), %rax
	cmpq	%rax, %rdx
	je	.L316
	.loc 2 1403 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6966(%rip), %rcx
	movl	$1403, %edx
	leaq	.LC64(%rip), %rsi
	leaq	.LC93(%rip), %rdi
	call	__assert_fail@PLT
.L316:
	.loc 2 1404 11 is_stmt 1
	movzbl	-70(%rbp), %eax
	.loc 2 1405 42
	cltq
	movq	-32(%rbp,%rax,8), %rcx
	.loc 2 1405 30
	movzbl	-70(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1405 29
	cltq
	movq	-32(%rbp,%rax,8), %rdx
	.loc 2 1404 11
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	write_block
	.loc 2 1406 26
	movq	-64(%rbp), %rax
	addq	%rax, -56(%rbp)
	.loc 2 1407 11
	movzbl	-70(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1407 15
	movb	%al, -70(%rbp)
	andb	$1, -70(%rbp)
.LBE39:
	.loc 2 1391 9
	jmp	.L317
.L312:
	.loc 2 1414 17
	movzbl	-70(%rbp), %eax
	cltq
	movq	-32(%rbp,%rax,8), %rcx
	movq	bytes_per_block(%rip), %rax
	leaq	-64(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	read_block
	.loc 2 1414 14
	movzbl	-69(%rbp), %edx
	.loc 2 1414 17
	movzbl	%al, %eax
	.loc 2 1414 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -69(%rbp)
	.loc 2 1415 28
	movq	-64(%rbp), %rdx
	movq	bytes_per_block(%rip), %rax
	.loc 2 1415 14
	cmpq	%rax, %rdx
	jb	.L326
	.loc 2 1417 11
	movq	-64(%rbp), %rdx
	movq	bytes_per_block(%rip), %rax
	cmpq	%rax, %rdx
	je	.L320
	.loc 2 1417 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6966(%rip), %rcx
	movl	$1417, %edx
	leaq	.LC64(%rip), %rsi
	leaq	.LC93(%rip), %rdi
	call	__assert_fail@PLT
.L320:
	.loc 2 1418 11 is_stmt 1
	movzbl	-70(%rbp), %eax
	.loc 2 1419 42
	cltq
	movq	-32(%rbp,%rax,8), %rcx
	.loc 2 1419 30
	movzbl	-70(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1419 29
	cltq
	movq	-32(%rbp,%rax,8), %rdx
	.loc 2 1418 11
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	write_block
	.loc 2 1420 26
	movq	-64(%rbp), %rax
	addq	%rax, -56(%rbp)
	.loc 2 1421 11
	movzbl	-70(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1421 15
	movb	%al, -70(%rbp)
	andb	$1, -70(%rbp)
	.loc 2 1414 11
	jmp	.L312
.L325:
.LBB40:
	.loc 2 1402 13
	nop
	jmp	.L318
.L326:
.LBE40:
	.loc 2 1416 13
	nop
.L318:
	.loc 2 1425 20
	movq	-64(%rbp), %rax
	.loc 2 1425 6
	testq	%rax, %rax
	je	.L321
.LBB41:
	.loc 2 1430 15
	call	get_lcm
	movl	%eax, -68(%rbp)
	.loc 2 1434 30
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	.loc 2 1434 47
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1434 55
	subq	$1, %rax
	.loc 2 1434 60
	movl	-68(%rbp), %edx
	movslq	%edx, %rdi
	movl	$0, %edx
	divq	%rdi
	.loc 2 1434 22
	imulq	%rcx, %rax
	movq	%rax, -40(%rbp)
	.loc 2 1436 7
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	subq	%rax, %rdx
	.loc 2 1436 20
	movzbl	-70(%rbp), %eax
	cltq
	movq	-32(%rbp,%rax,8), %rcx
	.loc 2 1436 7
	movq	-64(%rbp), %rax
	.loc 2 1436 26
	addq	%rcx, %rax
	.loc 2 1436 7
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 1437 7
	movzbl	-70(%rbp), %eax
	.loc 2 1437 68
	cltq
	movq	-32(%rbp,%rax,8), %rcx
	.loc 2 1437 56
	movzbl	-70(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1437 55
	cltq
	movq	-32(%rbp,%rax,8), %rdx
	.loc 2 1437 7
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	write_block
	.loc 2 1438 22
	movq	-64(%rbp), %rax
	addq	%rax, -56(%rbp)
.L321:
.LBE41:
	.loc 2 1441 3
	movq	format_address(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	*%rdx
.LVL2:
	.loc 2 1443 7
	movzbl	limit_bytes_to_format(%rip), %eax
	.loc 2 1443 6
	testb	%al, %al
	je	.L322
	.loc 2 1443 47 discriminator 1
	movq	end_offset(%rip), %rax
	.loc 2 1443 29 discriminator 1
	cmpq	%rax, -56(%rbp)
	jb	.L322
	.loc 2 1444 11
	movl	$0, %edi
	call	check_and_close
	.loc 2 1444 8
	movzbl	-69(%rbp), %edx
	.loc 2 1444 11
	movzbl	%al, %eax
	.loc 2 1444 8
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -69(%rbp)
.L322:
	.loc 2 1446 14
	movq	-32(%rbp), %rax
	.loc 2 1446 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1448 10
	movzbl	-69(%rbp), %eax
	.loc 2 1449 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L324
	call	__stack_chk_fail@PLT
.L324:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	dump, .-dump
	.type	dump_strings, @function
dump_strings:
.LFB80:
	.loc 2 1459 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 1459 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1460 20
	movq	string_min(%rip), %rax
	movl	$100, %edx
	cmpq	$100, %rax
	cmovb	%rdx, %rax
	.loc 2 1460 10
	movq	%rax, -40(%rbp)
	.loc 2 1461 15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -32(%rbp)
	.loc 2 1462 13
	movq	n_bytes_to_skip(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1463 8
	movb	$1, -45(%rbp)
.L328:
.LBB42:
	.loc 2 1473 11
	movzbl	limit_bytes_to_format(%rip), %eax
	.loc 2 1473 10
	testb	%al, %al
	je	.L329
	.loc 2 1474 26
	movq	end_offset(%rip), %rdx
	movq	string_min(%rip), %rax
	.loc 2 1474 11
	cmpq	%rax, %rdx
	jb	.L330
	.loc 2 1474 53 discriminator 1
	movq	end_offset(%rip), %rdx
	movq	string_min(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1474 39 discriminator 1
	cmpq	%rax, -24(%rbp)
	jnb	.L330
.L329:
	.loc 2 1477 14
	movq	$0, -16(%rbp)
	.loc 2 1477 7
	jmp	.L331
.L335:
	.loc 2 1479 17
	leaq	-44(%rbp), %rax
	movq	%rax, %rdi
	call	read_char
	.loc 2 1479 14
	movzbl	-45(%rbp), %edx
	.loc 2 1479 17
	movzbl	%al, %eax
	.loc 2 1479 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -45(%rbp)
	.loc 2 1480 18
	addq	$1, -24(%rbp)
	.loc 2 1481 17
	movl	-44(%rbp), %eax
	.loc 2 1481 14
	testl	%eax, %eax
	jns	.L332
	.loc 2 1483 15
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1484 22
	movzbl	-45(%rbp), %eax
	jmp	.L356
.L332:
	.loc 2 1486 17
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 1486 14
	testl	%eax, %eax
	jne	.L334
	.loc 2 1488 13
	jmp	.L328
.L334:
	.loc 2 1489 18 discriminator 2
	movl	-44(%rbp), %ecx
	.loc 2 1489 14 discriminator 2
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1489 18 discriminator 2
	movl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 2 1477 36 discriminator 2
	addq	$1, -16(%rbp)
.L331:
	.loc 2 1477 21 discriminator 1
	movq	string_min(%rip), %rax
	.loc 2 1477 7 discriminator 1
	cmpq	%rax, -16(%rbp)
	jb	.L335
	.loc 2 1494 13
	jmp	.L336
.L342:
	.loc 2 1496 17
	movq	-40(%rbp), %rax
	.loc 2 1496 14
	cmpq	%rax, -16(%rbp)
	jne	.L337
.LBB43:
	.loc 2 1498 21
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x2realloc@PLT
	movq	%rax, -32(%rbp)
.L337:
.LBE43:
	.loc 2 1500 17
	leaq	-44(%rbp), %rax
	movq	%rax, %rdi
	call	read_char
	.loc 2 1500 14
	movzbl	-45(%rbp), %edx
	.loc 2 1500 17
	movzbl	%al, %eax
	.loc 2 1500 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -45(%rbp)
	.loc 2 1501 18
	addq	$1, -24(%rbp)
	.loc 2 1502 17
	movl	-44(%rbp), %eax
	.loc 2 1502 14
	testl	%eax, %eax
	jns	.L338
	.loc 2 1504 15
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1505 22
	movzbl	-45(%rbp), %eax
	jmp	.L356
.L338:
	.loc 2 1507 17
	movl	-44(%rbp), %eax
	.loc 2 1507 14
	testl	%eax, %eax
	je	.L358
	.loc 2 1509 17
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 1509 14
	testl	%eax, %eax
	jne	.L341
	.loc 2 1510 13
	jmp	.L328
.L341:
	.loc 2 1511 20
	movl	-44(%rbp), %ecx
	.loc 2 1511 16
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 1511 14
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 1511 20
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L336:
	.loc 2 1494 14
	movzbl	limit_bytes_to_format(%rip), %eax
	xorl	$1, %eax
	.loc 2 1494 13
	testb	%al, %al
	jne	.L342
	.loc 2 1494 48 discriminator 1
	movq	end_offset(%rip), %rax
	.loc 2 1494 37 discriminator 1
	cmpq	%rax, -24(%rbp)
	jb	.L342
	jmp	.L340
.L358:
	.loc 2 1508 13
	nop
.L340:
	.loc 2 1516 10
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1516 14
	movb	$0, (%rax)
	.loc 2 1517 7
	movq	format_address(%rip), %rax
	.loc 2 1517 31
	movq	-24(%rbp), %rdx
	subq	-16(%rbp), %rdx
	.loc 2 1517 7
	subq	$1, %rdx
	movl	$32, %esi
	movq	%rdx, %rdi
	call	*%rax
.LVL3:
	.loc 2 1519 14
	movq	$0, -16(%rbp)
	.loc 2 1519 7
	jmp	.L343
.L354:
	.loc 2 1521 11
	movl	-44(%rbp), %eax
	subl	$7, %eax
	cmpl	$6, %eax
	ja	.L344
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L346(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L346(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L346:
	.long	.L352-.L346
	.long	.L351-.L346
	.long	.L350-.L346
	.long	.L349-.L346
	.long	.L348-.L346
	.long	.L347-.L346
	.long	.L345-.L346
	.text
.L352:
	.loc 2 1524 15
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC55(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1525 15
	jmp	.L353
.L351:
	.loc 2 1528 15
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC56(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1529 15
	jmp	.L353
.L347:
	.loc 2 1532 15
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC57(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1533 15
	jmp	.L353
.L349:
	.loc 2 1536 15
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC58(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1537 15
	jmp	.L353
.L345:
	.loc 2 1540 15
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC59(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1541 15
	jmp	.L353
.L350:
	.loc 2 1544 15
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC60(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1545 15
	jmp	.L353
.L348:
	.loc 2 1548 15
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC61(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1549 15
	jmp	.L353
.L344:
	.loc 2 1552 15
	movq	stdout(%rip), %rdx
	movl	-44(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	putc_unlocked@PLT
.L353:
	.loc 2 1519 34 discriminator 2
	addq	$1, -16(%rbp)
.L343:
	.loc 2 1519 27 discriminator 1
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 1519 22 discriminator 1
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	.loc 2 1519 7 discriminator 1
	testl	%eax, %eax
	jne	.L354
	.loc 2 1555 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
.LBE42:
	.loc 2 1466 5
	jmp	.L328
.L330:
	.loc 2 1561 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1563 9
	movl	$0, %edi
	call	check_and_close
	.loc 2 1563 6
	movzbl	-45(%rbp), %edx
	.loc 2 1563 9
	movzbl	%al, %eax
	.loc 2 1563 6
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -45(%rbp)
	.loc 2 1564 10
	movzbl	-45(%rbp), %eax
.L356:
	.loc 2 1565 1 discriminator 2
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L357
	.loc 2 1565 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L357:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	dump_strings, .-dump_strings
	.section	.rodata
.LC94:
	.string	"/usr/local/share/locale"
	.align 8
.LC95:
	.string	"invalid output address radix '%c'; it must be one character from [doxn]"
.LC96:
	.string	"--endian"
.LC97:
	.string	"a"
.LC98:
	.string	"o1"
.LC99:
	.string	"c"
.LC100:
	.string	"u4"
.LC101:
	.string	"u2"
.LC102:
	.string	"fD"
.LC103:
	.string	"fF"
.LC104:
	.string	"x4"
.LC105:
	.string	"dI"
.LC106:
	.string	"dL"
.LC107:
	.string	"o4"
.LC108:
	.string	"o2"
.LC109:
	.string	"d2"
.LC110:
	.string	"x2"
.LC111:
	.string	"Jim Meyering"
	.align 8
.LC112:
	.string	"no type may be specified when dumping strings"
.LC113:
	.string	"extra operand %s"
	.align 8
.LC114:
	.string	"compatibility mode supports at most one file"
	.align 8
.LC115:
	.string	"skip-bytes + read-bytes is too large"
.LC116:
	.string	"oS"
	.align 8
.LC117:
	.string	"warning: invalid width %lu; using %d instead"
	.text
	.globl	main
	.type	main, @function
main:
.LFB81:
	.loc 2 1569 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	.loc 2 1569 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1573 10
	movq	$0, -48(%rbp)
	.loc 2 1574 8
	movb	$0, -107(%rbp)
	.loc 2 1575 8
	movb	$0, -106(%rbp)
	.loc 2 1576 8
	movb	$1, -105(%rbp)
	.loc 2 1577 10
	movq	$0, -40(%rbp)
	.loc 2 1582 13
	movq	$0, -32(%rbp)
	.loc 2 1585 3
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 1586 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 1587 3
	leaq	.LC94(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 1588 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 1590 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 1592 10
	movq	$0, -56(%rbp)
	.loc 2 1592 3
	jmp	.L360
.L361:
	.loc 2 1593 27 discriminator 3
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	integral_type_size(%rip), %rax
	movl	$0, (%rdx,%rax)
	.loc 2 1592 45 discriminator 3
	addq	$1, -56(%rbp)
.L360:
	.loc 2 1592 3 discriminator 1
	cmpq	$8, -56(%rbp)
	jbe	.L361
	.loc 2 1595 37
	movl	$1, 4+integral_type_size(%rip)
	.loc 2 1596 42
	movl	$2, 8+integral_type_size(%rip)
	.loc 2 1597 36
	movl	$3, 16+integral_type_size(%rip)
	.loc 2 1598 41
	movl	$4, 32+integral_type_size(%rip)
	.loc 2 1602 55
	movl	$5, 32+integral_type_size(%rip)
	.loc 2 1605 10
	movq	$0, -56(%rbp)
	.loc 2 1605 3
	jmp	.L362
.L363:
	.loc 2 1606 21 discriminator 3
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	fp_type_size(%rip), %rax
	movl	$0, (%rdx,%rax)
	.loc 2 1605 39 discriminator 3
	addq	$1, -56(%rbp)
.L362:
	.loc 2 1605 3 discriminator 1
	cmpq	$16, -56(%rbp)
	jbe	.L363
	.loc 2 1608 32
	movl	$6, 16+fp_type_size(%rip)
	.loc 2 1612 38
	movl	$8, 64+fp_type_size(%rip)
	.loc 2 1613 33
	movl	$7, 32+fp_type_size(%rip)
	.loc 2 1615 11
	movq	$0, n_specs(%rip)
	.loc 2 1616 21
	movq	$0, n_specs_allocated(%rip)
	.loc 2 1617 8
	movq	$0, spec(%rip)
	.loc 2 1619 18
	leaq	format_address_std(%rip), %rax
	movq	%rax, format_address(%rip)
	.loc 2 1620 16
	movl	$8, address_base(%rip)
	.loc 2 1621 19
	movl	$7, address_pad_len(%rip)
	.loc 2 1622 21
	movb	$0, flag_dump_strings(%rip)
.L412:
.LBB44:
	.loc 2 1628 11
	movl	$-1, -72(%rbp)
	.loc 2 1629 15
	leaq	-72(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movl	-116(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options(%rip), %rcx
	leaq	short_options(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -100(%rbp)
	.loc 2 1630 10
	cmpl	$-1, -100(%rbp)
	jne	.L364
.LBE44:
	.loc 2 1793 7
	movzbl	-105(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1793 6
	testb	%al, %al
	jne	.L365
	jmp	.L453
.L364:
.LBB47:
	.loc 2 1633 7
	cmpl	$129, -100(%rbp)
	jg	.L367
	cmpl	$65, -100(%rbp)
	jge	.L368
	cmpl	$-131, -100(%rbp)
	je	.L369
	cmpl	$-130, -100(%rbp)
	je	.L370
	jmp	.L367
.L368:
	movl	-100(%rbp), %eax
	subl	$65, %eax
	cmpl	$64, %eax
	ja	.L367
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L372(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L372(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L372:
	.long	.L394-.L372
	.long	.L379-.L372
	.long	.L367-.L372
	.long	.L393-.L372
	.long	.L367-.L372
	.long	.L384-.L372
	.long	.L367-.L372
	.long	.L389-.L372
	.long	.L380-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L380-.L372
	.long	.L367-.L372
	.long	.L392-.L372
	.long	.L391-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L390-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L389-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L388-.L372
	.long	.L387-.L372
	.long	.L386-.L372
	.long	.L385-.L372
	.long	.L384-.L372
	.long	.L383-.L372
	.long	.L367-.L372
	.long	.L374-.L372
	.long	.L382-.L372
	.long	.L381-.L372
	.long	.L367-.L372
	.long	.L380-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L379-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L378-.L372
	.long	.L377-.L372
	.long	.L367-.L372
	.long	.L376-.L372
	.long	.L375-.L372
	.long	.L374-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L367-.L372
	.long	.L373-.L372
	.long	.L371-.L372
	.text
.L394:
	.loc 2 1636 18
	movb	$1, -107(%rbp)
	.loc 2 1637 25
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$120, %eax
	je	.L395
	cmpl	$120, %eax
	jg	.L396
	cmpl	$111, %eax
	je	.L397
	cmpl	$111, %eax
	jg	.L396
	cmpl	$100, %eax
	je	.L398
	cmpl	$110, %eax
	je	.L399
	jmp	.L396
.L398:
.LBB45:
	.loc 2 1640 30
	leaq	format_address_std(%rip), %rax
	movq	%rax, format_address(%rip)
	.loc 2 1641 28
	movl	$10, address_base(%rip)
	.loc 2 1642 31
	movl	$7, address_pad_len(%rip)
	.loc 2 1643 15
	jmp	.L400
.L397:
	.loc 2 1645 30
	leaq	format_address_std(%rip), %rax
	movq	%rax, format_address(%rip)
	.loc 2 1646 28
	movl	$8, address_base(%rip)
	.loc 2 1647 31
	movl	$7, address_pad_len(%rip)
	.loc 2 1648 15
	jmp	.L400
.L395:
	.loc 2 1650 30
	leaq	format_address_std(%rip), %rax
	movq	%rax, format_address(%rip)
	.loc 2 1651 28
	movl	$16, address_base(%rip)
	.loc 2 1652 31
	movl	$6, address_pad_len(%rip)
	.loc 2 1653 15
	jmp	.L400
.L399:
	.loc 2 1655 30
	leaq	format_address_none(%rip), %rax
	movq	%rax, format_address(%rip)
	.loc 2 1656 31
	movl	$0, address_pad_len(%rip)
	.loc 2 1657 15
	jmp	.L400
.L396:
	.loc 2 1659 15
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	leaq	.LC95(%rip), %rdi
	call	gettext@PLT
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L400:
.LBE45:
	.loc 2 1665 11
	jmp	.L401
.L381:
	.loc 2 1668 18
	movb	$1, -107(%rbp)
	.loc 2 1669 19
	movq	optarg(%rip), %rax
	leaq	multipliers.7016(%rip), %r8
	leaq	n_bytes_to_skip(%rip), %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -96(%rbp)
	.loc 2 1670 14
	cmpl	$0, -96(%rbp)
	je	.L454
	.loc 2 1671 13
	movq	optarg(%rip), %rcx
	movl	-100(%rbp), %eax
	movsbl	%al, %edx
	movl	-72(%rbp), %esi
	movl	-96(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L392:
	.loc 2 1675 18
	movb	$1, -107(%rbp)
	.loc 2 1676 33
	movb	$1, limit_bytes_to_format(%rip)
	.loc 2 1678 19
	movq	optarg(%rip), %rax
	leaq	multipliers.7016(%rip), %r8
	leaq	max_bytes_to_format(%rip), %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -96(%rbp)
	.loc 2 1680 14
	cmpl	$0, -96(%rbp)
	je	.L455
	.loc 2 1681 13
	movq	optarg(%rip), %rcx
	movl	-100(%rbp), %eax
	movsbl	%al, %edx
	movl	-72(%rbp), %esi
	movl	-96(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L390:
	.loc 2 1685 18
	movb	$1, -107(%rbp)
	.loc 2 1686 22
	movq	optarg(%rip), %rax
	.loc 2 1686 14
	testq	%rax, %rax
	jne	.L404
	.loc 2 1687 24
	movq	$3, string_min(%rip)
	jmp	.L405
.L404:
	.loc 2 1690 23
	movq	optarg(%rip), %rax
	leaq	-64(%rbp), %rdx
	leaq	multipliers.7016(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -96(%rbp)
	.loc 2 1691 18
	cmpl	$0, -96(%rbp)
	je	.L406
	.loc 2 1692 17
	movq	optarg(%rip), %rcx
	movl	-100(%rbp), %eax
	movsbl	%al, %edx
	movl	-72(%rbp), %esi
	movl	-96(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L406:
	.loc 2 1699 26
	movq	-64(%rbp), %rax
	movq	%rax, string_min(%rip)
.L405:
	.loc 2 1701 29
	movb	$1, flag_dump_strings(%rip)
	.loc 2 1702 11
	jmp	.L401
.L377:
	.loc 2 1705 18
	movb	$1, -107(%rbp)
	.loc 2 1706 17
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	decode_format_string
	.loc 2 1706 14
	movzbl	-105(%rbp), %edx
	.loc 2 1706 17
	movzbl	%al, %eax
	.loc 2 1706 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	.loc 2 1707 11
	jmp	.L401
.L376:
	.loc 2 1710 18
	movb	$1, -107(%rbp)
	.loc 2 1711 39
	movb	$0, abbreviate_duplicate_blocks(%rip)
	.loc 2 1712 11
	jmp	.L401
.L373:
	.loc 2 1715 23
	movb	$1, traditional(%rip)
	.loc 2 1716 11
	jmp	.L401
.L371:
	.loc 2 1719 19
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	endian_types(%rip), %rcx
	leaq	endian_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC96(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	endian_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L407
	cmpl	$1, %eax
	jne	.L456
	.loc 2 1722 30
	movb	$1, input_swap(%rip)
	.loc 2 1723 19
	jmp	.L408
.L407:
	.loc 2 1725 30
	movb	$0, input_swap(%rip)
	.loc 2 1726 19
	nop
.L408:
	.loc 2 1728 11
	jmp	.L456
.L388:
	.loc 2 1742 11
	leaq	.LC97(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L387:
	.loc 2 1743 11
	leaq	.LC98(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L386:
	.loc 2 1744 11
	leaq	.LC99(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L393:
	.loc 2 1745 11
	leaq	.LC100(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L385:
	.loc 2 1746 11
	leaq	.LC101(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L384:
	.loc 2 1748 11
	leaq	.LC102(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L383:
	.loc 2 1749 11
	leaq	.LC103(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L389:
	.loc 2 1751 11
	leaq	.LC104(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L382:
	.loc 2 1752 11
	leaq	.LC105(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L380:
	.loc 2 1754 11
	leaq	.LC106(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L391:
	.loc 2 1755 11
	leaq	.LC107(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L379:
	.loc 2 1757 11
	leaq	.LC108(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L378:
	.loc 2 1758 11
	leaq	.LC109(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L374:
	.loc 2 1760 11
	leaq	.LC110(%rip), %rdi
	call	decode_format_string
	movzbl	-105(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L401
.L375:
	.loc 2 1765 18
	movb	$1, -107(%rbp)
	.loc 2 1766 27
	movb	$1, -106(%rbp)
	.loc 2 1767 22
	movq	optarg(%rip), %rax
	.loc 2 1767 14
	testq	%rax, %rax
	jne	.L409
	.loc 2 1769 29
	movq	$32, -48(%rbp)
	.loc 2 1781 11
	jmp	.L401
.L409:
.LBB46:
	.loc 2 1774 23
	movq	optarg(%rip), %rax
	leaq	-64(%rbp), %rdx
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -96(%rbp)
	.loc 2 1775 18
	cmpl	$0, -96(%rbp)
	je	.L411
	.loc 2 1776 17
	movq	optarg(%rip), %rcx
	movl	-100(%rbp), %eax
	movsbl	%al, %edx
	movl	-72(%rbp), %esi
	movl	-96(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L411:
	.loc 2 1779 29
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBE46:
	.loc 2 1781 11
	jmp	.L401
.L370:
	.loc 2 1783 9
	movl	$0, %edi
	call	usage
.L369:
	.loc 2 1785 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC111(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L367:
	.loc 2 1788 11
	movl	$1, %edi
	call	usage
.L454:
	.loc 2 1672 11
	nop
	jmp	.L412
.L455:
	.loc 2 1682 11
	nop
	jmp	.L412
.L456:
	.loc 2 1728 11
	nop
.L401:
.LBE47:
	.loc 2 1625 5 discriminator 4
	jmp	.L412
.L365:
	.loc 2 1794 12
	movl	$1, %eax
	jmp	.L413
.L453:
	.loc 2 1796 7
	movzbl	flag_dump_strings(%rip), %eax
	.loc 2 1796 6
	testb	%al, %al
	je	.L414
	.loc 2 1796 36 discriminator 1
	movq	n_specs(%rip), %rax
	.loc 2 1796 25 discriminator 1
	testq	%rax, %rax
	je	.L414
.LBB48:
	.loc 2 1797 5
	leaq	.LC112(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L414:
.LBE48:
	.loc 2 1800 18
	movl	optind(%rip), %eax
	.loc 2 1800 11
	movl	-116(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -104(%rbp)
	.loc 2 1814 7
	movzbl	-107(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1814 6
	testb	%al, %al
	jne	.L415
	.loc 2 1814 15 discriminator 1
	movzbl	traditional(%rip), %eax
	testb	%al, %al
	je	.L416
.L415:
.LBB49:
	.loc 2 1819 7
	cmpl	$3, -104(%rbp)
	je	.L417
	cmpl	$3, -104(%rbp)
	jg	.L418
	cmpl	$1, -104(%rbp)
	je	.L419
	cmpl	$2, -104(%rbp)
	je	.L420
	jmp	.L418
.L419:
	.loc 2 1822 16
	movzbl	traditional(%rip), %eax
	.loc 2 1822 14
	testb	%al, %al
	jne	.L421
	.loc 2 1822 35 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1822 43 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 1822 28 discriminator 1
	cmpb	$43, %al
	jne	.L457
.L421:
	.loc 2 1823 40
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1823 18
	movq	(%rax), %rax
	leaq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_old_offset
	.loc 2 1823 15
	testb	%al, %al
	je	.L457
	.loc 2 1825 31
	movq	-72(%rbp), %rax
	movq	%rax, n_bytes_to_skip(%rip)
	.loc 2 1826 15
	subl	$1, -104(%rbp)
	.loc 2 1827 15
	addq	$8, -128(%rbp)
	.loc 2 1829 11
	jmp	.L457
.L420:
	.loc 2 1832 16
	movzbl	traditional(%rip), %eax
	.loc 2 1832 14
	testb	%al, %al
	jne	.L423
	.loc 2 1832 35 discriminator 1
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1832 47 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 1832 28 discriminator 1
	cmpb	$43, %al
	je	.L423
	.loc 2 1833 19
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 1833 16
	cmpl	$9, %eax
	ja	.L458
.L423:
	.loc 2 1834 40
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1834 18
	movq	(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_old_offset
	.loc 2 1834 15
	testb	%al, %al
	je	.L458
	.loc 2 1836 19
	movzbl	traditional(%rip), %eax
	.loc 2 1836 18
	testb	%al, %al
	je	.L425
	.loc 2 1836 56 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1836 34 discriminator 1
	movq	(%rax), %rax
	leaq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_old_offset
	.loc 2 1836 31 discriminator 1
	testb	%al, %al
	je	.L425
	.loc 2 1838 35
	movq	-72(%rbp), %rax
	movq	%rax, n_bytes_to_skip(%rip)
	.loc 2 1839 37
	movb	$1, flag_pseudo_start(%rip)
	.loc 2 1840 32
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1841 24
	addq	$16, -128(%rbp)
	.loc 2 1842 27
	subl	$2, -104(%rbp)
	.loc 2 1852 11
	jmp	.L458
.L425:
	.loc 2 1846 35
	movq	-64(%rbp), %rax
	movq	%rax, n_bytes_to_skip(%rip)
	.loc 2 1847 19
	subl	$1, -104(%rbp)
	.loc 2 1848 42
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1848 23
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 1848 42
	movq	(%rax), %rax
	.loc 2 1848 36
	movq	%rax, (%rdx)
	.loc 2 1849 19
	addq	$8, -128(%rbp)
	.loc 2 1852 11
	jmp	.L458
.L417:
	.loc 2 1855 15
	movzbl	traditional(%rip), %eax
	.loc 2 1855 14
	testb	%al, %al
	je	.L459
	.loc 2 1856 40
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1856 18
	movq	(%rax), %rax
	leaq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_old_offset
	.loc 2 1856 15
	testb	%al, %al
	je	.L459
	.loc 2 1857 40
	movl	optind(%rip), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1857 18
	movq	(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_old_offset
	.loc 2 1857 15
	testb	%al, %al
	je	.L459
	.loc 2 1859 31
	movq	-72(%rbp), %rax
	movq	%rax, n_bytes_to_skip(%rip)
	.loc 2 1860 33
	movb	$1, flag_pseudo_start(%rip)
	.loc 2 1861 28
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1862 38
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1862 19
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 1862 38
	movq	(%rax), %rax
	.loc 2 1862 32
	movq	%rax, (%rdx)
	.loc 2 1863 20
	addq	$16, -128(%rbp)
	.loc 2 1864 23
	subl	$2, -104(%rbp)
	.loc 2 1866 11
	jmp	.L459
.L457:
	.loc 2 1829 11
	nop
	jmp	.L418
.L458:
	.loc 2 1852 11
	nop
	jmp	.L418
.L459:
	.loc 2 1866 11
	nop
.L418:
	.loc 2 1869 11
	movzbl	traditional(%rip), %eax
	.loc 2 1869 10
	testb	%al, %al
	je	.L416
	.loc 2 1869 23 discriminator 1
	cmpl	$1, -104(%rbp)
	jle	.L416
	.loc 2 1871 58
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1871 11
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1871 24
	leaq	.LC113(%rip), %rdi
	call	gettext@PLT
	.loc 2 1871 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1872 11
	leaq	.LC114(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	leaq	.LC83(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1874 11
	movl	$1, %edi
	call	usage
.L416:
.LBE49:
	.loc 2 1878 7
	movzbl	flag_pseudo_start(%rip), %eax
	.loc 2 1878 6
	testb	%al, %al
	je	.L428
	.loc 2 1880 26
	movq	format_address(%rip), %rax
	.loc 2 1880 10
	leaq	format_address_none(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L429
	.loc 2 1882 24
	movl	$8, address_base(%rip)
	.loc 2 1883 27
	movl	$7, address_pad_len(%rip)
	.loc 2 1884 26
	leaq	format_address_paren(%rip), %rax
	movq	%rax, format_address(%rip)
	jmp	.L428
.L429:
	.loc 2 1887 24
	leaq	format_address_label(%rip), %rax
	movq	%rax, format_address(%rip)
.L428:
	.loc 2 1890 7
	movzbl	limit_bytes_to_format(%rip), %eax
	.loc 2 1890 6
	testb	%al, %al
	je	.L430
	.loc 2 1892 36
	movq	n_bytes_to_skip(%rip), %rdx
	movq	max_bytes_to_format(%rip), %rax
	addq	%rdx, %rax
	.loc 2 1892 18
	movq	%rax, end_offset(%rip)
	.loc 2 1893 22
	movq	end_offset(%rip), %rdx
	movq	n_bytes_to_skip(%rip), %rax
	.loc 2 1893 10
	cmpq	%rax, %rdx
	jnb	.L430
.LBB50:
	.loc 2 1894 9
	leaq	.LC115(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L430:
.LBE50:
	.loc 2 1897 15
	movq	n_specs(%rip), %rax
	.loc 2 1897 6
	testq	%rax, %rax
	jne	.L431
	.loc 2 1898 5
	leaq	.LC116(%rip), %rdi
	call	decode_format_string
.L431:
	.loc 2 1900 6
	cmpl	$0, -104(%rbp)
	jle	.L432
	.loc 2 1905 46
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 1905 41
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1905 17
	movq	%rax, file_list(%rip)
	jmp	.L433
.L432:
	.loc 2 1913 17
	leaq	default_file_list(%rip), %rax
	movq	%rax, file_list(%rip)
.L433:
	.loc 2 1917 8
	call	open_next_file
	movb	%al, -105(%rbp)
	.loc 2 1918 17
	movq	in_stream(%rip), %rax
	.loc 2 1918 6
	testq	%rax, %rax
	je	.L460
	.loc 2 1922 9
	movq	n_bytes_to_skip(%rip), %rax
	movq	%rax, %rdi
	call	skip
	.loc 2 1922 6
	movzbl	-105(%rbp), %edx
	.loc 2 1922 9
	movzbl	%al, %eax
	.loc 2 1922 6
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	.loc 2 1923 17
	movq	in_stream(%rip), %rax
	.loc 2 1923 6
	testq	%rax, %rax
	je	.L461
	.loc 2 1926 38
	movzbl	flag_pseudo_start(%rip), %eax
	.loc 2 1926 71
	testb	%al, %al
	je	.L437
	.loc 2 1926 53 discriminator 1
	movq	n_bytes_to_skip(%rip), %rax
	.loc 2 1926 71 discriminator 1
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L438
.L437:
	.loc 2 1926 71 is_stmt 0 discriminator 2
	movl	$0, %eax
.L438:
	.loc 2 1926 17 is_stmt 1 discriminator 4
	movq	%rax, pseudo_offset(%rip)
	.loc 2 1929 11 discriminator 4
	call	get_lcm
	movl	%eax, -92(%rbp)
	.loc 2 1931 6 discriminator 4
	cmpb	$0, -106(%rbp)
	je	.L439
	.loc 2 1933 10
	cmpq	$0, -48(%rbp)
	je	.L440
	.loc 2 1933 47 discriminator 1
	movl	-92(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	.loc 2 1933 30 discriminator 1
	testq	%rax, %rax
	jne	.L440
	.loc 2 1934 25
	movq	-48(%rbp), %rax
	movq	%rax, bytes_per_block(%rip)
	jmp	.L442
.L440:
	.loc 2 1937 24
	leaq	.LC117(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1937 11
	movl	-92(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1939 27
	movl	-92(%rbp), %eax
	cltq
	movq	%rax, bytes_per_block(%rip)
	jmp	.L442
.L439:
	.loc 2 1944 10
	cmpl	$15, -92(%rbp)
	jg	.L443
	.loc 2 1945 60
	movl	$16, %eax
	cltd
	idivl	-92(%rbp)
	.loc 2 1945 33
	imull	-92(%rbp), %eax
	cltq
	.loc 2 1945 25
	movq	%rax, bytes_per_block(%rip)
	jmp	.L442
.L443:
	.loc 2 1947 25
	movl	-92(%rbp), %eax
	cltq
	movq	%rax, bytes_per_block(%rip)
.L442:
	.loc 2 1951 10
	movq	$0, -56(%rbp)
	.loc 2 1951 3
	jmp	.L444
.L446:
.LBB51:
	.loc 2 1953 46
	movq	bytes_per_block(%rip), %rcx
	.loc 2 1953 64
	movq	spec(%rip), %rsi
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	.loc 2 1953 67
	movl	4(%rax), %eax
	.loc 2 1953 59
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	width_bytes(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rbx
	.loc 2 1953 46
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rbx
	.loc 2 1953 11
	movl	%eax, -80(%rbp)
	.loc 2 1954 30
	movq	spec(%rip), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1954 33
	movl	28(%rax), %eax
	.loc 2 1954 46
	leal	1(%rax), %edx
	.loc 2 1954 11
	movl	-80(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -76(%rbp)
	.loc 2 1955 27
	movl	-76(%rbp), %eax
	cltq
	.loc 2 1955 10
	cmpq	%rax, -40(%rbp)
	jnb	.L445
	.loc 2 1956 25
	movl	-76(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
.L445:
.LBE51:
	.loc 2 1951 29 discriminator 2
	addq	$1, -56(%rbp)
.L444:
	.loc 2 1951 17 discriminator 1
	movq	n_specs(%rip), %rax
	.loc 2 1951 3 discriminator 1
	cmpq	%rax, -56(%rbp)
	jb	.L446
	.loc 2 1958 10
	movq	$0, -56(%rbp)
	.loc 2 1958 3
	jmp	.L447
.L448:
.LBB52:
	.loc 2 1960 46 discriminator 3
	movq	bytes_per_block(%rip), %rcx
	.loc 2 1960 64 discriminator 3
	movq	spec(%rip), %rsi
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	.loc 2 1960 67 discriminator 3
	movl	4(%rax), %eax
	.loc 2 1960 59 discriminator 3
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	width_bytes(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rbx
	.loc 2 1960 46 discriminator 3
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rbx
	.loc 2 1960 11 discriminator 3
	movl	%eax, -88(%rbp)
	.loc 2 1961 29 discriminator 3
	movq	spec(%rip), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1961 32 discriminator 3
	movl	28(%rax), %eax
	.loc 2 1961 11 discriminator 3
	movl	-88(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -84(%rbp)
	.loc 2 1962 43 discriminator 3
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movl	-84(%rbp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	.loc 2 1962 11 discriminator 3
	movq	spec(%rip), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 2 1962 43 discriminator 3
	movl	%esi, %edx
	.loc 2 1962 25 discriminator 3
	movl	%edx, 32(%rax)
.LBE52:
	.loc 2 1958 29 discriminator 3
	addq	$1, -56(%rbp)
.L447:
	.loc 2 1958 17 discriminator 1
	movq	n_specs(%rip), %rax
	.loc 2 1958 3 discriminator 1
	cmpq	%rax, -56(%rbp)
	jb	.L448
	.loc 2 1979 28
	movzbl	flag_dump_strings(%rip), %eax
	.loc 2 1979 46
	testb	%al, %al
	je	.L449
	.loc 2 1979 30 discriminator 1
	call	dump_strings
	.loc 2 1979 46 discriminator 1
	movzbl	%al, %eax
	jmp	.L450
.L449:
	.loc 2 1979 48 discriminator 2
	call	dump
	.loc 2 1979 46 discriminator 2
	movzbl	%al, %eax
.L450:
	.loc 2 1979 6 discriminator 4
	movzbl	-105(%rbp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	jmp	.L435
.L460:
	.loc 2 1919 5
	nop
	jmp	.L435
.L461:
	.loc 2 1924 5
	nop
.L435:
	.loc 2 1983 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 1983 6
	testb	%al, %al
	je	.L451
	.loc 2 1983 26 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1983 23 discriminator 1
	cmpl	$-1, %eax
	jne	.L451
.LBB53:
	.loc 2 1984 5
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L451:
.LBE53:
	.loc 2 1986 28
	movzbl	-105(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
.L413:
	.loc 2 1987 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L452
	call	__stack_chk_fail@PLT
.L452:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.6795, @object
	.size	__PRETTY_FUNCTION__.6795, 18
__PRETTY_FUNCTION__.6795:
	.string	"decode_one_format"
	.align 16
	.type	__PRETTY_FUNCTION__.6850, @object
	.size	__PRETTY_FUNCTION__.6850, 21
__PRETTY_FUNCTION__.6850:
	.string	"decode_format_string"
	.data
	.type	first.6913, @object
	.size	first.6913, 1
first.6913:
	.byte	1
	.local	prev_pair_equal.6914
	.comm	prev_pair_equal.6914,1,1
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6937, @object
	.size	__PRETTY_FUNCTION__.6937, 11
__PRETTY_FUNCTION__.6937:
	.string	"read_block"
	.type	__PRETTY_FUNCTION__.6966, @object
	.size	__PRETTY_FUNCTION__.6966, 5
__PRETTY_FUNCTION__.6966:
	.string	"dump"
	.align 8
	.type	multipliers.7016, @object
	.size	multipliers.7016, 13
multipliers.7016:
	.string	"bEGKkMmPTYZ0"
	.text
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
	.file 24 "/usr/include/locale.h"
	.file 25 "./lib/version-etc.h"
	.file 26 "./lib/progname.h"
	.file 27 "./lib/quotearg.h"
	.file 28 "./lib/quote.h"
	.file 29 "./lib/argmatch.h"
	.file 30 "./lib/error.h"
	.file 31 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2d03
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF346
	.byte	0xc
	.long	.LASF347
	.long	.LASF348
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
	.uleb128 0x4
	.long	0x39
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.long	0x45
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x4
	.long	0x53
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.long	0x5f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.long	0x77
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x83
	.uleb128 0x4
	.long	0x83
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
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x45
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x45
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
	.long	0x45
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
	.long	0x94
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x94
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x94
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x94
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x94
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x94
	.uleb128 0x8
	.byte	0x8
	.long	0x13d
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x4
	.long	0x13d
	.uleb128 0x9
	.long	0x13d
	.long	0x159
	.uleb128 0xa
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF65
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x2e0
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x83
	.byte	0
	.uleb128 0xc
	.long	.LASF23
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x137
	.byte	0x8
	.uleb128 0xc
	.long	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x137
	.byte	0x10
	.uleb128 0xc
	.long	.LASF25
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x137
	.byte	0x18
	.uleb128 0xc
	.long	.LASF26
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x137
	.byte	0x20
	.uleb128 0xc
	.long	.LASF27
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x137
	.byte	0x28
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x137
	.byte	0x30
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x137
	.byte	0x38
	.uleb128 0xc
	.long	.LASF30
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x137
	.byte	0x40
	.uleb128 0xc
	.long	.LASF31
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x137
	.byte	0x48
	.uleb128 0xc
	.long	.LASF32
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x137
	.byte	0x50
	.uleb128 0xc
	.long	.LASF33
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x137
	.byte	0x58
	.uleb128 0xc
	.long	.LASF34
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2f9
	.byte	0x60
	.uleb128 0xc
	.long	.LASF35
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2ff
	.byte	0x68
	.uleb128 0xc
	.long	.LASF36
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x83
	.byte	0x70
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x83
	.byte	0x74
	.uleb128 0xc
	.long	.LASF38
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xef
	.byte	0x78
	.uleb128 0xc
	.long	.LASF39
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x5f
	.byte	0x80
	.uleb128 0xc
	.long	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x6b
	.byte	0x82
	.uleb128 0xc
	.long	.LASF41
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x305
	.byte	0x83
	.uleb128 0xc
	.long	.LASF42
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x315
	.byte	0x88
	.uleb128 0xc
	.long	.LASF43
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xfb
	.byte	0x90
	.uleb128 0xc
	.long	.LASF44
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x320
	.byte	0x98
	.uleb128 0xc
	.long	.LASF45
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x32b
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2ff
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF47
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x51
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF48
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF49
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x83
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF50
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x331
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x159
	.uleb128 0xd
	.long	.LASF349
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF52
	.uleb128 0x8
	.byte	0x8
	.long	0x2f4
	.uleb128 0x8
	.byte	0x8
	.long	0x159
	.uleb128 0x9
	.long	0x13d
	.long	0x315
	.uleb128 0xa
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2ec
	.uleb128 0xe
	.long	.LASF53
	.uleb128 0x8
	.byte	0x8
	.long	0x31b
	.uleb128 0xe
	.long	.LASF54
	.uleb128 0x8
	.byte	0x8
	.long	0x326
	.uleb128 0x9
	.long	0x13d
	.long	0x341
	.uleb128 0xa
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x144
	.uleb128 0x4
	.long	0x341
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x358
	.uleb128 0x8
	.byte	0x8
	.long	0x2e0
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x358
	.uleb128 0xf
	.long	.LASF57
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x358
	.uleb128 0xf
	.long	.LASF58
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x83
	.uleb128 0x9
	.long	0x347
	.long	0x38d
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.long	0x382
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x38d
	.uleb128 0xf
	.long	.LASF60
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x83
	.uleb128 0xf
	.long	.LASF61
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x38d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF62
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF63
	.uleb128 0x4
	.long	0x3bd
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0x107
	.uleb128 0xb
	.long	.LASF66
	.byte	0x10
	.byte	0xa
	.byte	0xa
	.byte	0x8
	.long	0x3fd
	.uleb128 0xc
	.long	.LASF67
	.byte	0xa
	.byte	0xc
	.byte	0xc
	.long	0x107
	.byte	0
	.uleb128 0xc
	.long	.LASF68
	.byte	0xa
	.byte	0x10
	.byte	0x15
	.long	0x12b
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF69
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF70
	.uleb128 0x9
	.long	0x13d
	.long	0x421
	.uleb128 0xa
	.long	0x39
	.byte	0x27
	.byte	0
	.uleb128 0x9
	.long	0x13d
	.long	0x431
	.uleb128 0xa
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.long	.LASF71
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x137
	.uleb128 0xf
	.long	.LASF72
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x83
	.uleb128 0xf
	.long	.LASF73
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x83
	.uleb128 0xf
	.long	.LASF74
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x83
	.uleb128 0xb
	.long	.LASF75
	.byte	0x20
	.byte	0xd
	.byte	0x32
	.byte	0x8
	.long	0x4a3
	.uleb128 0xc
	.long	.LASF76
	.byte	0xd
	.byte	0x34
	.byte	0xf
	.long	0x341
	.byte	0
	.uleb128 0xc
	.long	.LASF77
	.byte	0xd
	.byte	0x37
	.byte	0x7
	.long	0x83
	.byte	0x8
	.uleb128 0xc
	.long	.LASF78
	.byte	0xd
	.byte	0x38
	.byte	0x8
	.long	0x4a8
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xd
	.byte	0x39
	.byte	0x7
	.long	0x83
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	0x461
	.uleb128 0x8
	.byte	0x8
	.long	0x83
	.uleb128 0x8
	.byte	0x8
	.long	0x66
	.uleb128 0x9
	.long	0x137
	.long	0x4c4
	.uleb128 0xa
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF79
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x4b4
	.uleb128 0xf
	.long	.LASF80
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x83
	.uleb128 0xf
	.long	.LASF81
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x94
	.uleb128 0xf
	.long	.LASF82
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x4b4
	.uleb128 0xf
	.long	.LASF83
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x83
	.uleb128 0xf
	.long	.LASF84
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x94
	.uleb128 0x11
	.long	.LASF85
	.byte	0xe
	.value	0x112
	.byte	0xc
	.long	0x83
	.uleb128 0xb
	.long	.LASF86
	.byte	0x90
	.byte	0xf
	.byte	0x2e
	.byte	0x8
	.long	0x5ea
	.uleb128 0xc
	.long	.LASF87
	.byte	0xf
	.byte	0x30
	.byte	0xd
	.long	0xa7
	.byte	0
	.uleb128 0xc
	.long	.LASF88
	.byte	0xf
	.byte	0x35
	.byte	0xd
	.long	0xcb
	.byte	0x8
	.uleb128 0xc
	.long	.LASF89
	.byte	0xf
	.byte	0x3d
	.byte	0xf
	.long	0xe3
	.byte	0x10
	.uleb128 0xc
	.long	.LASF90
	.byte	0xf
	.byte	0x3e
	.byte	0xe
	.long	0xd7
	.byte	0x18
	.uleb128 0xc
	.long	.LASF91
	.byte	0xf
	.byte	0x40
	.byte	0xd
	.long	0xb3
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF92
	.byte	0xf
	.byte	0x41
	.byte	0xd
	.long	0xbf
	.byte	0x20
	.uleb128 0xc
	.long	.LASF93
	.byte	0xf
	.byte	0x43
	.byte	0x9
	.long	0x83
	.byte	0x24
	.uleb128 0xc
	.long	.LASF94
	.byte	0xf
	.byte	0x45
	.byte	0xd
	.long	0xa7
	.byte	0x28
	.uleb128 0xc
	.long	.LASF95
	.byte	0xf
	.byte	0x4a
	.byte	0xd
	.long	0xef
	.byte	0x30
	.uleb128 0xc
	.long	.LASF96
	.byte	0xf
	.byte	0x4e
	.byte	0x11
	.long	0x113
	.byte	0x38
	.uleb128 0xc
	.long	.LASF97
	.byte	0xf
	.byte	0x50
	.byte	0x10
	.long	0x11f
	.byte	0x40
	.uleb128 0xc
	.long	.LASF98
	.byte	0xf
	.byte	0x5b
	.byte	0x15
	.long	0x3d5
	.byte	0x48
	.uleb128 0xc
	.long	.LASF99
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x3d5
	.byte	0x58
	.uleb128 0xc
	.long	.LASF100
	.byte	0xf
	.byte	0x5d
	.byte	0x15
	.long	0x3d5
	.byte	0x68
	.uleb128 0xc
	.long	.LASF101
	.byte	0xf
	.byte	0x6a
	.byte	0x17
	.long	0x5ef
	.byte	0x78
	.byte	0
	.uleb128 0x4
	.long	0x519
	.uleb128 0x9
	.long	0x12b
	.long	0x5ff
	.uleb128 0xa
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x8
	.byte	0x8
	.long	0x5ff
	.uleb128 0x9
	.long	0x347
	.long	0x616
	.uleb128 0xa
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.long	0x606
	.uleb128 0x11
	.long	.LASF102
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x616
	.uleb128 0x11
	.long	.LASF103
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x616
	.uleb128 0x11
	.long	.LASF104
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x642
	.uleb128 0x8
	.byte	0x8
	.long	0x137
	.uleb128 0x11
	.long	.LASF105
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x642
	.uleb128 0xf
	.long	.LASF106
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x137
	.uleb128 0xf
	.long	.LASF107
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x137
	.uleb128 0x8
	.byte	0x8
	.long	0x673
	.uleb128 0x14
	.uleb128 0xf
	.long	.LASF108
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x341
	.uleb128 0xf
	.long	.LASF109
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x8a
	.uleb128 0x2
	.long	.LASF110
	.byte	0x15
	.byte	0x66
	.byte	0x16
	.long	0x9b
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x6b0
	.uleb128 0x16
	.long	.LASF111
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x6c5
	.uleb128 0x17
	.long	.LASF112
	.byte	0x9
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x17
	.byte	0x2f
	.byte	0x1
	.long	0x724
	.uleb128 0x18
	.long	.LASF113
	.value	0x100
	.uleb128 0x18
	.long	.LASF114
	.value	0x200
	.uleb128 0x18
	.long	.LASF115
	.value	0x400
	.uleb128 0x18
	.long	.LASF116
	.value	0x800
	.uleb128 0x18
	.long	.LASF117
	.value	0x1000
	.uleb128 0x18
	.long	.LASF118
	.value	0x2000
	.uleb128 0x18
	.long	.LASF119
	.value	0x4000
	.uleb128 0x18
	.long	.LASF120
	.value	0x8000
	.uleb128 0x17
	.long	.LASF121
	.byte	0x1
	.uleb128 0x17
	.long	.LASF122
	.byte	0x2
	.uleb128 0x17
	.long	.LASF123
	.byte	0x4
	.uleb128 0x17
	.long	.LASF124
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF125
	.byte	0x60
	.byte	0x18
	.byte	0x33
	.byte	0x8
	.long	0x86a
	.uleb128 0xc
	.long	.LASF126
	.byte	0x18
	.byte	0x37
	.byte	0x9
	.long	0x137
	.byte	0
	.uleb128 0xc
	.long	.LASF127
	.byte	0x18
	.byte	0x38
	.byte	0x9
	.long	0x137
	.byte	0x8
	.uleb128 0xc
	.long	.LASF128
	.byte	0x18
	.byte	0x3e
	.byte	0x9
	.long	0x137
	.byte	0x10
	.uleb128 0xc
	.long	.LASF129
	.byte	0x18
	.byte	0x44
	.byte	0x9
	.long	0x137
	.byte	0x18
	.uleb128 0xc
	.long	.LASF130
	.byte	0x18
	.byte	0x45
	.byte	0x9
	.long	0x137
	.byte	0x20
	.uleb128 0xc
	.long	.LASF131
	.byte	0x18
	.byte	0x46
	.byte	0x9
	.long	0x137
	.byte	0x28
	.uleb128 0xc
	.long	.LASF132
	.byte	0x18
	.byte	0x47
	.byte	0x9
	.long	0x137
	.byte	0x30
	.uleb128 0xc
	.long	.LASF133
	.byte	0x18
	.byte	0x48
	.byte	0x9
	.long	0x137
	.byte	0x38
	.uleb128 0xc
	.long	.LASF134
	.byte	0x18
	.byte	0x49
	.byte	0x9
	.long	0x137
	.byte	0x40
	.uleb128 0xc
	.long	.LASF135
	.byte	0x18
	.byte	0x4a
	.byte	0x9
	.long	0x137
	.byte	0x48
	.uleb128 0xc
	.long	.LASF136
	.byte	0x18
	.byte	0x4b
	.byte	0x8
	.long	0x13d
	.byte	0x50
	.uleb128 0xc
	.long	.LASF137
	.byte	0x18
	.byte	0x4c
	.byte	0x8
	.long	0x13d
	.byte	0x51
	.uleb128 0xc
	.long	.LASF138
	.byte	0x18
	.byte	0x4e
	.byte	0x8
	.long	0x13d
	.byte	0x52
	.uleb128 0xc
	.long	.LASF139
	.byte	0x18
	.byte	0x50
	.byte	0x8
	.long	0x13d
	.byte	0x53
	.uleb128 0xc
	.long	.LASF140
	.byte	0x18
	.byte	0x52
	.byte	0x8
	.long	0x13d
	.byte	0x54
	.uleb128 0xc
	.long	.LASF141
	.byte	0x18
	.byte	0x54
	.byte	0x8
	.long	0x13d
	.byte	0x55
	.uleb128 0xc
	.long	.LASF142
	.byte	0x18
	.byte	0x5b
	.byte	0x8
	.long	0x13d
	.byte	0x56
	.uleb128 0xc
	.long	.LASF143
	.byte	0x18
	.byte	0x5c
	.byte	0x8
	.long	0x13d
	.byte	0x57
	.uleb128 0xc
	.long	.LASF144
	.byte	0x18
	.byte	0x5f
	.byte	0x8
	.long	0x13d
	.byte	0x58
	.uleb128 0xc
	.long	.LASF145
	.byte	0x18
	.byte	0x61
	.byte	0x8
	.long	0x13d
	.byte	0x59
	.uleb128 0xc
	.long	.LASF146
	.byte	0x18
	.byte	0x63
	.byte	0x8
	.long	0x13d
	.byte	0x5a
	.uleb128 0xc
	.long	.LASF147
	.byte	0x18
	.byte	0x65
	.byte	0x8
	.long	0x13d
	.byte	0x5b
	.uleb128 0xc
	.long	.LASF148
	.byte	0x18
	.byte	0x6c
	.byte	0x8
	.long	0x13d
	.byte	0x5c
	.uleb128 0xc
	.long	.LASF149
	.byte	0x18
	.byte	0x6d
	.byte	0x8
	.long	0x13d
	.byte	0x5d
	.byte	0
	.uleb128 0x4
	.long	0x724
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x83
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x88d
	.uleb128 0x1a
	.long	.LASF150
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF151
	.sleb128 -131
	.byte	0
	.uleb128 0x9
	.long	0x144
	.long	0x898
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.long	0x88d
	.uleb128 0xf
	.long	.LASF152
	.byte	0x19
	.byte	0x19
	.byte	0x13
	.long	0x898
	.uleb128 0xf
	.long	.LASF153
	.byte	0x1a
	.byte	0x20
	.byte	0x14
	.long	0x341
	.uleb128 0x1b
	.long	.LASF174
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x1b
	.byte	0x20
	.byte	0x6
	.long	0x90a
	.uleb128 0x17
	.long	.LASF154
	.byte	0
	.uleb128 0x17
	.long	.LASF155
	.byte	0x1
	.uleb128 0x17
	.long	.LASF156
	.byte	0x2
	.uleb128 0x17
	.long	.LASF157
	.byte	0x3
	.uleb128 0x17
	.long	.LASF158
	.byte	0x4
	.uleb128 0x17
	.long	.LASF159
	.byte	0x5
	.uleb128 0x17
	.long	.LASF160
	.byte	0x6
	.uleb128 0x17
	.long	.LASF161
	.byte	0x7
	.uleb128 0x17
	.long	.LASF162
	.byte	0x8
	.uleb128 0x17
	.long	.LASF163
	.byte	0x9
	.uleb128 0x17
	.long	.LASF164
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x8b5
	.uleb128 0x11
	.long	.LASF165
	.byte	0x1b
	.value	0x10b
	.byte	0x1a
	.long	0x38d
	.uleb128 0x9
	.long	0x90a
	.long	0x927
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.long	0x91c
	.uleb128 0x11
	.long	.LASF166
	.byte	0x1b
	.value	0x10c
	.byte	0x21
	.long	0x927
	.uleb128 0xe
	.long	.LASF167
	.uleb128 0xf
	.long	.LASF168
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x939
	.uleb128 0x2
	.long	.LASF169
	.byte	0x1d
	.byte	0x3d
	.byte	0x10
	.long	0x600
	.uleb128 0xf
	.long	.LASF170
	.byte	0x1d
	.byte	0x3e
	.byte	0x19
	.long	0x94a
	.uleb128 0xf
	.long	.LASF171
	.byte	0x1e
	.byte	0x32
	.byte	0xf
	.long	0x600
	.uleb128 0xf
	.long	.LASF172
	.byte	0x1e
	.byte	0x35
	.byte	0x15
	.long	0x45
	.uleb128 0xf
	.long	.LASF173
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.long	0x83
	.uleb128 0x1b
	.long	.LASF175
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x1f
	.byte	0x19
	.byte	0x6
	.long	0x9b7
	.uleb128 0x17
	.long	.LASF176
	.byte	0
	.uleb128 0x17
	.long	.LASF177
	.byte	0x1
	.uleb128 0x17
	.long	.LASF178
	.byte	0x2
	.uleb128 0x17
	.long	.LASF179
	.byte	0x3
	.uleb128 0x17
	.long	.LASF180
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF181
	.byte	0x2
	.byte	0x2e
	.byte	0x20
	.long	0x40a
	.uleb128 0x4
	.long	0x9b7
	.uleb128 0x1b
	.long	.LASF182
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x2
	.byte	0x35
	.byte	0x6
	.long	0xa17
	.uleb128 0x17
	.long	.LASF183
	.byte	0
	.uleb128 0x17
	.long	.LASF184
	.byte	0x1
	.uleb128 0x17
	.long	.LASF185
	.byte	0x2
	.uleb128 0x1c
	.string	"INT"
	.byte	0x3
	.uleb128 0x17
	.long	.LASF186
	.byte	0x4
	.uleb128 0x17
	.long	.LASF187
	.byte	0x5
	.uleb128 0x17
	.long	.LASF188
	.byte	0x6
	.uleb128 0x17
	.long	.LASF189
	.byte	0x7
	.uleb128 0x17
	.long	.LASF190
	.byte	0x8
	.uleb128 0x17
	.long	.LASF191
	.byte	0x9
	.byte	0
	.uleb128 0x1b
	.long	.LASF192
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x2
	.byte	0x44
	.byte	0x6
	.long	0xa54
	.uleb128 0x17
	.long	.LASF193
	.byte	0
	.uleb128 0x17
	.long	.LASF194
	.byte	0x1
	.uleb128 0x17
	.long	.LASF195
	.byte	0x2
	.uleb128 0x17
	.long	.LASF196
	.byte	0x3
	.uleb128 0x17
	.long	.LASF197
	.byte	0x4
	.uleb128 0x17
	.long	.LASF198
	.byte	0x5
	.uleb128 0x17
	.long	.LASF199
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x2
	.byte	0x56
	.byte	0x3
	.long	0xa69
	.uleb128 0x17
	.long	.LASF200
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF201
	.byte	0x28
	.byte	0x2
	.byte	0x65
	.byte	0x8
	.long	0xad2
	.uleb128 0x12
	.string	"fmt"
	.byte	0x2
	.byte	0x67
	.byte	0x18
	.long	0xa17
	.byte	0
	.uleb128 0xc
	.long	.LASF202
	.byte	0x2
	.byte	0x68
	.byte	0x14
	.long	0x9c8
	.byte	0x4
	.uleb128 0xc
	.long	.LASF203
	.byte	0x2
	.byte	0x6d
	.byte	0xc
	.long	0xaf6
	.byte	0x8
	.uleb128 0xc
	.long	.LASF204
	.byte	0x2
	.byte	0x6f
	.byte	0xa
	.long	0x421
	.byte	0x10
	.uleb128 0xc
	.long	.LASF205
	.byte	0x2
	.byte	0x70
	.byte	0xa
	.long	0xafc
	.byte	0x18
	.uleb128 0xc
	.long	.LASF206
	.byte	0x2
	.byte	0x71
	.byte	0x9
	.long	0x83
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF207
	.byte	0x2
	.byte	0x72
	.byte	0x9
	.long	0x83
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.long	0xaf6
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x2d
	.uleb128 0x1e
	.long	0x66d
	.uleb128 0x1e
	.long	0x341
	.uleb128 0x1e
	.long	0x83
	.uleb128 0x1e
	.long	0x83
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xad2
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF208
	.uleb128 0x9
	.long	0x4c
	.long	0xb13
	.uleb128 0xa
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0xb03
	.uleb128 0x1f
	.long	.LASF209
	.byte	0x2
	.byte	0x7f
	.byte	0x1b
	.long	0xb13
	.uleb128 0x9
	.byte	0x3
	.quad	bytes_to_oct_digits
	.uleb128 0x1f
	.long	.LASF210
	.byte	0x2
	.byte	0x82
	.byte	0x1b
	.long	0xb13
	.uleb128 0x9
	.byte	0x3
	.quad	bytes_to_signed_dec_digits
	.uleb128 0x1f
	.long	.LASF211
	.byte	0x2
	.byte	0x85
	.byte	0x1b
	.long	0xb13
	.uleb128 0x9
	.byte	0x3
	.quad	bytes_to_unsigned_dec_digits
	.uleb128 0x1f
	.long	.LASF212
	.byte	0x2
	.byte	0x88
	.byte	0x1b
	.long	0xb13
	.uleb128 0x9
	.byte	0x3
	.quad	bytes_to_hex_digits
	.uleb128 0x9
	.long	0x8f
	.long	0xb80
	.uleb128 0xa
	.long	0x39
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0xb70
	.uleb128 0x1f
	.long	.LASF213
	.byte	0x2
	.byte	0x96
	.byte	0x12
	.long	0xb80
	.uleb128 0x9
	.byte	0x3
	.quad	width_bytes
	.uleb128 0x9
	.long	0x144
	.long	0xbb1
	.uleb128 0xa
	.long	0x39
	.byte	0x20
	.uleb128 0xa
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0xb9b
	.uleb128 0x1f
	.long	.LASF214
	.byte	0x2
	.byte	0xa8
	.byte	0x13
	.long	0xbb1
	.uleb128 0x9
	.byte	0x3
	.quad	charname
	.uleb128 0x1f
	.long	.LASF215
	.byte	0x2
	.byte	0xb2
	.byte	0xc
	.long	0x83
	.uleb128 0x9
	.byte	0x3
	.quad	address_base
	.uleb128 0x1f
	.long	.LASF216
	.byte	0x2
	.byte	0xba
	.byte	0xc
	.long	0x83
	.uleb128 0x9
	.byte	0x3
	.quad	address_pad_len
	.uleb128 0x1f
	.long	.LASF217
	.byte	0x2
	.byte	0xbd
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	string_min
	.uleb128 0x1f
	.long	.LASF218
	.byte	0x2
	.byte	0xc0
	.byte	0xd
	.long	0xafc
	.uleb128 0x9
	.byte	0x3
	.quad	flag_dump_strings
	.uleb128 0x1f
	.long	.LASF219
	.byte	0x2
	.byte	0xc5
	.byte	0xd
	.long	0xafc
	.uleb128 0x9
	.byte	0x3
	.quad	traditional
	.uleb128 0x1f
	.long	.LASF220
	.byte	0x2
	.byte	0xc8
	.byte	0xd
	.long	0xafc
	.uleb128 0x9
	.byte	0x3
	.quad	flag_pseudo_start
	.uleb128 0x1f
	.long	.LASF221
	.byte	0x2
	.byte	0xcc
	.byte	0x12
	.long	0x68c
	.uleb128 0x9
	.byte	0x3
	.quad	pseudo_offset
	.uleb128 0x1d
	.long	0xc76
	.uleb128 0x1e
	.long	0x68c
	.uleb128 0x1e
	.long	0x13d
	.byte	0
	.uleb128 0x1f
	.long	.LASF222
	.byte	0x2
	.byte	0xd0
	.byte	0xf
	.long	0xc8c
	.uleb128 0x9
	.byte	0x3
	.quad	format_address
	.uleb128 0x8
	.byte	0x8
	.long	0xc66
	.uleb128 0x1f
	.long	.LASF223
	.byte	0x2
	.byte	0xd3
	.byte	0x12
	.long	0x68c
	.uleb128 0x9
	.byte	0x3
	.quad	n_bytes_to_skip
	.uleb128 0x1f
	.long	.LASF224
	.byte	0x2
	.byte	0xd7
	.byte	0xd
	.long	0xafc
	.uleb128 0x9
	.byte	0x3
	.quad	limit_bytes_to_format
	.uleb128 0x1f
	.long	.LASF225
	.byte	0x2
	.byte	0xda
	.byte	0x12
	.long	0x68c
	.uleb128 0x9
	.byte	0x3
	.quad	max_bytes_to_format
	.uleb128 0x1f
	.long	.LASF226
	.byte	0x2
	.byte	0xdd
	.byte	0x12
	.long	0x68c
	.uleb128 0x9
	.byte	0x3
	.quad	end_offset
	.uleb128 0x1f
	.long	.LASF227
	.byte	0x2
	.byte	0xe2
	.byte	0xd
	.long	0xafc
	.uleb128 0x9
	.byte	0x3
	.quad	abbreviate_duplicate_blocks
	.uleb128 0x1f
	.long	.LASF228
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.long	0xd16
	.uleb128 0x9
	.byte	0x3
	.quad	spec
	.uleb128 0x8
	.byte	0x8
	.long	0xa69
	.uleb128 0x1f
	.long	.LASF229
	.byte	0x2
	.byte	0xe8
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	n_specs
	.uleb128 0x1f
	.long	.LASF230
	.byte	0x2
	.byte	0xeb
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	n_specs_allocated
	.uleb128 0x1f
	.long	.LASF231
	.byte	0x2
	.byte	0xf1
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	bytes_per_block
	.uleb128 0x1f
	.long	.LASF232
	.byte	0x2
	.byte	0xf5
	.byte	0x14
	.long	0x341
	.uleb128 0x9
	.byte	0x3
	.quad	input_filename
	.uleb128 0x1f
	.long	.LASF233
	.byte	0x2
	.byte	0xf8
	.byte	0x1b
	.long	0xd8a
	.uleb128 0x9
	.byte	0x3
	.quad	file_list
	.uleb128 0x8
	.byte	0x8
	.long	0x347
	.uleb128 0x9
	.long	0x347
	.long	0xda0
	.uleb128 0xa
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0xd90
	.uleb128 0x1f
	.long	.LASF234
	.byte	0x2
	.byte	0xfc
	.byte	0x1a
	.long	0xda0
	.uleb128 0x9
	.byte	0x3
	.quad	default_file_list
	.uleb128 0x1f
	.long	.LASF235
	.byte	0x2
	.byte	0xff
	.byte	0xe
	.long	0x358
	.uleb128 0x9
	.byte	0x3
	.quad	in_stream
	.uleb128 0x20
	.long	.LASF236
	.byte	0x2
	.value	0x102
	.byte	0xd
	.long	0xafc
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x9
	.long	0x9c8
	.long	0xdf8
	.uleb128 0xa
	.long	0x39
	.byte	0x8
	.byte	0
	.uleb128 0x20
	.long	.LASF237
	.byte	0x2
	.value	0x105
	.byte	0x17
	.long	0xde8
	.uleb128 0x9
	.byte	0x3
	.quad	integral_type_size
	.uleb128 0x9
	.long	0x9c8
	.long	0xe1f
	.uleb128 0xa
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0x20
	.long	.LASF238
	.byte	0x2
	.value	0x108
	.byte	0x17
	.long	0xe0f
	.uleb128 0x9
	.byte	0x3
	.quad	fp_type_size
	.uleb128 0x20
	.long	.LASF239
	.byte	0x2
	.value	0x10f
	.byte	0xd
	.long	0xafc
	.uleb128 0x9
	.byte	0x3
	.quad	input_swap
	.uleb128 0x9
	.long	0x144
	.long	0xe5d
	.uleb128 0xa
	.long	0x39
	.byte	0x22
	.byte	0
	.uleb128 0x4
	.long	0xe4d
	.uleb128 0x20
	.long	.LASF240
	.byte	0x2
	.value	0x111
	.byte	0x13
	.long	0xe5d
	.uleb128 0x9
	.byte	0x3
	.quad	short_options
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x2
	.value	0x116
	.byte	0x1
	.long	0xe95
	.uleb128 0x17
	.long	.LASF241
	.byte	0x80
	.uleb128 0x17
	.long	.LASF242
	.byte	0x81
	.byte	0
	.uleb128 0x21
	.long	.LASF243
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x2
	.value	0x11b
	.byte	0x6
	.long	0xeb5
	.uleb128 0x17
	.long	.LASF244
	.byte	0
	.uleb128 0x17
	.long	.LASF245
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0xe95
	.uleb128 0x9
	.long	0x347
	.long	0xeca
	.uleb128 0xa
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	0xeba
	.uleb128 0x20
	.long	.LASF246
	.byte	0x2
	.value	0x121
	.byte	0x1a
	.long	0xeca
	.uleb128 0x9
	.byte	0x3
	.quad	endian_args
	.uleb128 0x9
	.long	0xeb5
	.long	0xef6
	.uleb128 0xa
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0xee6
	.uleb128 0x20
	.long	.LASF247
	.byte	0x2
	.value	0x126
	.byte	0x1f
	.long	0xef6
	.uleb128 0x9
	.byte	0x3
	.quad	endian_types
	.uleb128 0x9
	.long	0x4a3
	.long	0xf22
	.uleb128 0xa
	.long	0x39
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.long	0xf12
	.uleb128 0x20
	.long	.LASF248
	.byte	0x2
	.value	0x12b
	.byte	0x1c
	.long	0xf22
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x22
	.long	.LASF334
	.byte	0x2
	.value	0x620
	.byte	0x1
	.long	0x83
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1199
	.uleb128 0x23
	.long	.LASF249
	.byte	0x2
	.value	0x620
	.byte	0xb
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x23
	.long	.LASF250
	.byte	0x2
	.value	0x620
	.byte	0x18
	.long	0x642
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x20
	.long	.LASF251
	.byte	0x2
	.value	0x622
	.byte	0x7
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x623
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF252
	.byte	0x2
	.value	0x624
	.byte	0x7
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x20
	.long	.LASF253
	.byte	0x2
	.value	0x625
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF254
	.byte	0x2
	.value	0x626
	.byte	0x8
	.long	0xafc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -123
	.uleb128 0x20
	.long	.LASF255
	.byte	0x2
	.value	0x627
	.byte	0x8
	.long	0xafc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -122
	.uleb128 0x24
	.string	"ok"
	.byte	0x2
	.value	0x628
	.byte	0x8
	.long	0xafc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x20
	.long	.LASF256
	.byte	0x2
	.value	0x629
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF257
	.byte	0x2
	.value	0x62a
	.byte	0x15
	.long	0x11a9
	.uleb128 0x9
	.byte	0x3
	.quad	multipliers.7016
	.uleb128 0x20
	.long	.LASF258
	.byte	0x2
	.value	0x62e
	.byte	0xd
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF265
	.byte	0x2
	.value	0x7bd
	.byte	0x1
	.quad	.L435
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x60
	.long	0x10bf
	.uleb128 0x24
	.string	"tmp"
	.byte	0x2
	.value	0x65a
	.byte	0x11
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF259
	.byte	0x2
	.value	0x65b
	.byte	0x19
	.long	0x986
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.string	"oi"
	.byte	0x2
	.value	0x65c
	.byte	0xb
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.string	"c"
	.byte	0x2
	.value	0x65d
	.byte	0xb
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x28
	.uleb128 0x29
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x20
	.long	.LASF260
	.byte	0x2
	.value	0x6ed
	.byte	0x19
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2a
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x1106
	.uleb128 0x24
	.string	"o1"
	.byte	0x2
	.value	0x718
	.byte	0x11
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.string	"o2"
	.byte	0x2
	.value	0x719
	.byte	0x11
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x27
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x2a
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x114f
	.uleb128 0x20
	.long	.LASF261
	.byte	0x2
	.value	0x7a1
	.byte	0xb
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF262
	.byte	0x2
	.value	0x7a2
	.byte	0xb
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x2a
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x1187
	.uleb128 0x20
	.long	.LASF261
	.byte	0x2
	.value	0x7a8
	.byte	0xb
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF262
	.byte	0x2
	.value	0x7a9
	.byte	0xb
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x27
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.byte	0
	.uleb128 0x9
	.long	0x144
	.long	0x11a9
	.uleb128 0xa
	.long	0x39
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	0x1199
	.uleb128 0x2b
	.long	.LASF267
	.byte	0x2
	.value	0x5b2
	.byte	0x1
	.long	0xafc
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x1261
	.uleb128 0x20
	.long	.LASF263
	.byte	0x2
	.value	0x5b4
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x5b5
	.byte	0x9
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF264
	.byte	0x2
	.value	0x5b6
	.byte	0xd
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"ok"
	.byte	0x2
	.value	0x5b7
	.byte	0x8
	.long	0xafc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x25
	.long	.LASF266
	.byte	0x2
	.value	0x5bf
	.byte	0x5
	.quad	.L328
	.uleb128 0x29
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x5bb
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"c"
	.byte	0x2
	.value	0x5bc
	.byte	0xb
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF268
	.byte	0x2
	.value	0x55f
	.byte	0x1
	.long	0xafc
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x1338
	.uleb128 0x20
	.long	.LASF269
	.byte	0x2
	.value	0x561
	.byte	0x9
	.long	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF270
	.byte	0x2
	.value	0x562
	.byte	0xd
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"idx"
	.byte	0x2
	.value	0x563
	.byte	0x8
	.long	0xafc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0x24
	.string	"ok"
	.byte	0x2
	.value	0x564
	.byte	0x8
	.long	0xafc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x20
	.long	.LASF271
	.byte	0x2
	.value	0x565
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF280
	.long	0x1348
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6966
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x30
	.long	0x1304
	.uleb128 0x20
	.long	.LASF272
	.byte	0x2
	.value	0x570
	.byte	0x12
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x20
	.long	.LASF252
	.byte	0x2
	.value	0x593
	.byte	0xb
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.long	.LASF273
	.byte	0x2
	.value	0x594
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x144
	.long	0x1348
	.uleb128 0xa
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	0x1338
	.uleb128 0x2b
	.long	.LASF274
	.byte	0x2
	.value	0x537
	.byte	0x1
	.long	0xafc
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x139f
	.uleb128 0x2d
	.string	"s"
	.byte	0x2
	.value	0x537
	.byte	0x1f
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF275
	.byte	0x2
	.value	0x537
	.byte	0x2d
	.long	0x139f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF276
	.byte	0x2
	.value	0x539
	.byte	0x7
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x68c
	.uleb128 0x2b
	.long	.LASF277
	.byte	0x2
	.value	0x52a
	.byte	0x1
	.long	0x83
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x13f9
	.uleb128 0x20
	.long	.LASF252
	.byte	0x2
	.value	0x52c
	.byte	0x7
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x52e
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF278
	.byte	0x2
	.value	0x509
	.byte	0x1
	.long	0xafc
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x1494
	.uleb128 0x2d
	.string	"n"
	.byte	0x2
	.value	0x509
	.byte	0x14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x509
	.byte	0x1d
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF279
	.byte	0x2
	.value	0x509
	.byte	0x2c
	.long	0x1494
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"ok"
	.byte	0x2
	.value	0x50b
	.byte	0x8
	.long	0xafc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2c
	.long	.LASF280
	.long	0x14aa
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6937
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.uleb128 0x20
	.long	.LASF272
	.byte	0x2
	.value	0x513
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF281
	.byte	0x2
	.value	0x514
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2d
	.uleb128 0x9
	.long	0x144
	.long	0x14aa
	.uleb128 0xa
	.long	0x39
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x149a
	.uleb128 0x2b
	.long	.LASF282
	.byte	0x2
	.value	0x4e5
	.byte	0x1
	.long	0xafc
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x14f0
	.uleb128 0x2d
	.string	"c"
	.byte	0x2
	.value	0x4e5
	.byte	0x11
	.long	0x4a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"ok"
	.byte	0x2
	.value	0x4e7
	.byte	0x8
	.long	0xafc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2f
	.long	.LASF290
	.byte	0x2
	.value	0x4a4
	.byte	0x1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x1614
	.uleb128 0x23
	.long	.LASF270
	.byte	0x2
	.value	0x4a4
	.byte	0x18
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF283
	.byte	0x2
	.value	0x4a4
	.byte	0x2f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF284
	.byte	0x2
	.value	0x4a5
	.byte	0x1a
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF285
	.byte	0x2
	.value	0x4a5
	.byte	0x32
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF286
	.byte	0x2
	.value	0x4a7
	.byte	0xf
	.long	0xafc
	.uleb128 0x9
	.byte	0x3
	.quad	first.6913
	.uleb128 0x20
	.long	.LASF287
	.byte	0x2
	.value	0x4a8
	.byte	0xf
	.long	0xafc
	.uleb128 0x9
	.byte	0x3
	.quad	prev_pair_equal.6914
	.uleb128 0x29
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x4be
	.byte	0x13
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x20
	.long	.LASF288
	.byte	0x2
	.value	0x4c0
	.byte	0xf
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.long	.LASF261
	.byte	0x2
	.value	0x4c1
	.byte	0xf
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF289
	.byte	0x2
	.value	0x4c2
	.byte	0xf
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x20
	.long	.LASF206
	.byte	0x2
	.value	0x4cd
	.byte	0x13
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF207
	.byte	0x2
	.value	0x4ce
	.byte	0x13
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF291
	.byte	0x2
	.value	0x493
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1652
	.uleb128 0x23
	.long	.LASF264
	.byte	0x2
	.value	0x493
	.byte	0x21
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"c"
	.byte	0x2
	.value	0x493
	.byte	0x2f
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2f
	.long	.LASF292
	.byte	0x2
	.value	0x48a
	.byte	0x1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1690
	.uleb128 0x23
	.long	.LASF264
	.byte	0x2
	.value	0x48a
	.byte	0x21
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"c"
	.byte	0x2
	.value	0x48a
	.byte	0x2f
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2f
	.long	.LASF293
	.byte	0x2
	.value	0x462
	.byte	0x1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x1700
	.uleb128 0x23
	.long	.LASF264
	.byte	0x2
	.value	0x462
	.byte	0x1f
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"c"
	.byte	0x2
	.value	0x462
	.byte	0x2d
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x464
	.byte	0x8
	.long	0x1700
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x465
	.byte	0x9
	.long	0x137
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF294
	.byte	0x2
	.value	0x466
	.byte	0xf
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x9
	.long	0x13d
	.long	0x1710
	.uleb128 0xa
	.long	0x39
	.byte	0x18
	.byte	0
	.uleb128 0x30
	.long	.LASF295
	.byte	0x2
	.value	0x45c
	.byte	0x1
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x174e
	.uleb128 0x23
	.long	.LASF264
	.byte	0x2
	.value	0x45c
	.byte	0x20
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"c"
	.byte	0x2
	.value	0x45d
	.byte	0x1b
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.long	.LASF296
	.byte	0x2
	.value	0x3f5
	.byte	0x1
	.long	0xafc
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x184c
	.uleb128 0x23
	.long	.LASF297
	.byte	0x2
	.value	0x3f5
	.byte	0x11
	.long	0x68c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8424
	.uleb128 0x24
	.string	"ok"
	.byte	0x2
	.value	0x3f7
	.byte	0x8
	.long	0xafc
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8406
	.uleb128 0x20
	.long	.LASF298
	.byte	0x2
	.value	0x3f8
	.byte	0x7
	.long	0x83
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8404
	.uleb128 0x2a
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x183a
	.uleb128 0x20
	.long	.LASF299
	.byte	0x2
	.value	0x3ff
	.byte	0x13
	.long	0x519
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8384
	.uleb128 0x29
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x20
	.long	.LASF300
	.byte	0x2
	.value	0x40d
	.byte	0x10
	.long	0xafc
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8405
	.uleb128 0x29
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x42e
	.byte	0x14
	.long	0x184c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x20
	.long	.LASF271
	.byte	0x2
	.value	0x42f
	.byte	0x16
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8392
	.uleb128 0x20
	.long	.LASF301
	.byte	0x2
	.value	0x42f
	.byte	0x24
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8400
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0
	.uleb128 0x9
	.long	0x13d
	.long	0x185d
	.uleb128 0x31
	.long	0x39
	.value	0x1fff
	.byte	0
	.uleb128 0x2b
	.long	.LASF302
	.byte	0x2
	.value	0x3d6
	.byte	0x1
	.long	0xafc
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x18e5
	.uleb128 0x2d
	.string	"s"
	.byte	0x2
	.value	0x3d6
	.byte	0x23
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF303
	.byte	0x2
	.value	0x3d8
	.byte	0xf
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF280
	.long	0x18f5
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6850
	.uleb128 0x29
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x20
	.long	.LASF304
	.byte	0x2
	.value	0x3dd
	.byte	0x13
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x144
	.long	0x18f5
	.uleb128 0xa
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	0x18e5
	.uleb128 0x2b
	.long	.LASF305
	.byte	0x2
	.value	0x3b2
	.byte	0x1
	.long	0xafc
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x193d
	.uleb128 0x23
	.long	.LASF298
	.byte	0x2
	.value	0x3b2
	.byte	0x16
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"ok"
	.byte	0x2
	.value	0x3b4
	.byte	0x8
	.long	0xafc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x2b
	.long	.LASF306
	.byte	0x2
	.value	0x386
	.byte	0x1
	.long	0xafc
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1970
	.uleb128 0x24
	.string	"ok"
	.byte	0x2
	.value	0x388
	.byte	0x8
	.long	0xafc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x2b
	.long	.LASF307
	.byte	0x2
	.value	0x27b
	.byte	0x1
	.long	0xafc
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a8d
	.uleb128 0x23
	.long	.LASF303
	.byte	0x2
	.value	0x27b
	.byte	0x20
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"s"
	.byte	0x2
	.value	0x27b
	.byte	0x34
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF304
	.byte	0x2
	.value	0x27b
	.byte	0x44
	.long	0x1a8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.long	.LASF201
	.byte	0x2
	.value	0x27c
	.byte	0x22
	.long	0xd16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x20
	.long	.LASF182
	.byte	0x2
	.value	0x27e
	.byte	0x12
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.long	.LASF202
	.byte	0x2
	.value	0x27f
	.byte	0x15
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"fmt"
	.byte	0x2
	.value	0x280
	.byte	0x16
	.long	0xa17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF203
	.byte	0x2
	.value	0x281
	.byte	0xa
	.long	0xaf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x283
	.byte	0xf
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"c"
	.byte	0x2
	.value	0x284
	.byte	0x8
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x20
	.long	.LASF206
	.byte	0x2
	.value	0x285
	.byte	0x7
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF280
	.long	0x1aa3
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6795
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x20
	.long	.LASF308
	.byte	0x2
	.value	0x33d
	.byte	0x1d
	.long	0x1aa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF309
	.byte	0x2
	.value	0x33e
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x341
	.uleb128 0x9
	.long	0x144
	.long	0x1aa3
	.uleb128 0xa
	.long	0x39
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.long	0x1a93
	.uleb128 0x8
	.byte	0x8
	.long	0x86a
	.uleb128 0x32
	.long	.LASF310
	.byte	0x2
	.value	0x256
	.byte	0x1
	.long	0xafc
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b2e
	.uleb128 0x2d
	.string	"s"
	.byte	0x2
	.value	0x256
	.byte	0x1d
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"p"
	.byte	0x2
	.value	0x256
	.byte	0x2d
	.long	0x1a8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"val"
	.byte	0x2
	.value	0x256
	.byte	0x43
	.long	0x1b2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"sum"
	.byte	0x2
	.value	0x258
	.byte	0x15
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x24
	.string	"c"
	.byte	0x2
	.value	0x25d
	.byte	0xb
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x39
	.uleb128 0x2f
	.long	.LASF311
	.byte	0x2
	.value	0x213
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c38
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x213
	.byte	0x15
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x213
	.byte	0x24
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x213
	.byte	0x37
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.long	.LASF314
	.byte	0x2
	.value	0x214
	.byte	0x1a
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x214
	.byte	0x3c
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x215
	.byte	0x12
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x217
	.byte	0x18
	.long	0x1c38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x218
	.byte	0xd
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x219
	.byte	0x7
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x21c
	.byte	0xb
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.string	"c"
	.byte	0x2
	.value	0x21d
	.byte	0x15
	.long	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x24
	.string	"s"
	.byte	0x2
	.value	0x21e
	.byte	0x13
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x21f
	.byte	0xc
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5a
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x2
	.value	0x1f4
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d41
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1f4
	.byte	0x1b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1f4
	.byte	0x2a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1f4
	.byte	0x3d
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF314
	.byte	0x2
	.value	0x1f5
	.byte	0x20
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1f6
	.byte	0x18
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1f6
	.byte	0x23
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1f8
	.byte	0x18
	.long	0x1c38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1f9
	.byte	0xd
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1fa
	.byte	0x7
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1fd
	.byte	0xb
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF319
	.byte	0x2
	.value	0x1fe
	.byte	0xb
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"s"
	.byte	0x2
	.value	0x1ff
	.byte	0x13
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x200
	.byte	0xc
	.long	0x1d41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x13d
	.long	0x1d51
	.uleb128 0xa
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x2
	.value	0x1e7
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1de0
	.uleb128 0x23
	.long	.LASF283
	.byte	0x2
	.value	0x1e7
	.byte	0x20
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1e7
	.byte	0x35
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1ea
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x24
	.string	"c"
	.byte	0x2
	.value	0x1ec
	.byte	0x15
	.long	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x24
	.string	"c2"
	.byte	0x2
	.value	0x1ed
	.byte	0x15
	.long	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF321
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f3a
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x1f3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x20
	.long	.LASF322
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x3bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x1f40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x24
	.string	"j"
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.byte	0x10
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x1f28
	.uleb128 0x34
	.string	"x"
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x3bd
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x1f50
	.byte	0
	.uleb128 0x24
	.string	"u"
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.long	0x1f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3c4
	.uleb128 0x9
	.long	0x13d
	.long	0x1f50
	.uleb128 0xa
	.long	0x39
	.byte	0x2c
	.byte	0
	.uleb128 0x9
	.long	0x13d
	.long	0x1f60
	.uleb128 0xa
	.long	0x39
	.byte	0xf
	.byte	0
	.uleb128 0x2f
	.long	.LASF323
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x20b9
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x20b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF322
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x20bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x411
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x24
	.string	"j"
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.byte	0x8
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x20a7
	.uleb128 0x34
	.string	"x"
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x20bf
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x421
	.byte	0
	.uleb128 0x24
	.string	"u"
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x2086
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x20c6
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF324
	.uleb128 0x4
	.long	0x20bf
	.uleb128 0x2f
	.long	.LASF325
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x2224
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x2224
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x68c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF322
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x222a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x2236
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x24
	.string	"j"
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.byte	0x4
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x2212
	.uleb128 0x34
	.string	"x"
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x222a
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x149
	.byte	0
	.uleb128 0x24
	.string	"u"
	.byte	0x2
	.value	0x1df
	.byte	0x1
	.long	0x21f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2231
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF326
	.uleb128 0x4
	.long	0x222a
	.uleb128 0x9
	.long	0x13d
	.long	0x2246
	.uleb128 0xa
	.long	0x39
	.byte	0x1e
	.byte	0
	.uleb128 0x2f
	.long	.LASF327
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x238a
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x238a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF322
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x9b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x24
	.string	"j"
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.byte	0x8
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x2379
	.uleb128 0x34
	.string	"x"
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x9b7
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x421
	.byte	0
	.uleb128 0x24
	.string	"u"
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x2358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9c3
	.uleb128 0x2f
	.long	.LASF328
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x24d4
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x24d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF322
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x24
	.string	"j"
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.byte	0x8
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x24c3
	.uleb128 0x34
	.string	"x"
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x39
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x421
	.byte	0
	.uleb128 0x24
	.string	"u"
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.long	0x24a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x40
	.uleb128 0x2f
	.long	.LASF329
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x261d
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x261d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF322
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x24
	.string	"j"
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.byte	0x4
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x260c
	.uleb128 0x34
	.string	"x"
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x45
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x149
	.byte	0
	.uleb128 0x24
	.string	"u"
	.byte	0x2
	.value	0x1db
	.byte	0x1
	.long	0x25eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x4c
	.uleb128 0x2f
	.long	.LASF330
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x2766
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x4ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF322
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x24
	.string	"j"
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.byte	0x2
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x2755
	.uleb128 0x34
	.string	"x"
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x5f
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x1d41
	.byte	0
	.uleb128 0x24
	.string	"u"
	.byte	0x2
	.value	0x1da
	.byte	0x1
	.long	0x2734
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF331
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x28a9
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x28a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF322
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x24
	.string	"j"
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.byte	0x2
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x2898
	.uleb128 0x34
	.string	"x"
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x77
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x1d41
	.byte	0
	.uleb128 0x24
	.string	"u"
	.byte	0x2
	.value	0x1d9
	.byte	0x1
	.long	0x2877
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x7e
	.uleb128 0x2f
	.long	.LASF332
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x29da
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x1c38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF322
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x35
	.uleb128 0x36
	.string	"j"
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x2d
	.uleb128 0x33
	.byte	0x1
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x29cc
	.uleb128 0x34
	.string	"x"
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x53
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x305
	.byte	0
	.uleb128 0x36
	.string	"u"
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x29ab
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF333
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b05
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF315
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.string	"pad"
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.string	"p"
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x2b05
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF316
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x20
	.long	.LASF317
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF322
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"x"
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x35
	.uleb128 0x36
	.string	"j"
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x2d
	.uleb128 0x33
	.byte	0x1
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x2af7
	.uleb128 0x34
	.string	"x"
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x6b
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x305
	.byte	0
	.uleb128 0x36
	.string	"u"
	.byte	0x2
	.value	0x1d7
	.byte	0x1
	.long	0x2ad6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x72
	.uleb128 0x37
	.long	.LASF335
	.byte	0x2
	.value	0x13d
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b3b
	.uleb128 0x23
	.long	.LASF336
	.byte	0x2
	.value	0x13d
	.byte	0xc
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x32
	.long	.LASF337
	.byte	0x1
	.value	0x2c1
	.byte	0x1
	.long	0xafc
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b6e
	.uleb128 0x2d
	.string	"sb"
	.byte	0x1
	.value	0x2c1
	.byte	0x24
	.long	0x2b6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5ea
	.uleb128 0x2f
	.long	.LASF338
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c19
	.uleb128 0x23
	.long	.LASF339
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x38
	.long	.LASF340
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x2bcf
	.uleb128 0x39
	.long	.LASF339
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x341
	.byte	0
	.uleb128 0x39
	.long	.LASF341
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x341
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x2ba4
	.uleb128 0x20
	.long	.LASF340
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x2c29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF341
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF342
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x2c2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.long	.LASF343
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x9
	.long	0x2bcf
	.long	0x2c29
	.uleb128 0xa
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	0x2c19
	.uleb128 0x8
	.byte	0x8
	.long	0x2bcf
	.uleb128 0x3a
	.long	.LASF344
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF345
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.string	"lcm"
	.byte	0x1
	.value	0x1ea
	.byte	0x1
	.long	0x2d
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x2caa
	.uleb128 0x2d
	.string	"u"
	.byte	0x1
	.value	0x1ea
	.byte	0xd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.value	0x1ea
	.byte	0x17
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3c
	.string	"gcd"
	.byte	0x1
	.value	0x1d8
	.byte	0x1
	.long	0x2d
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.string	"u"
	.byte	0x1
	.value	0x1d8
	.byte	0xd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.value	0x1d8
	.byte	0x17
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x24
	.string	"t"
	.byte	0x1
	.value	0x1dc
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x34
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF192:
	.string	"output_format"
.LASF101:
	.string	"__glibc_reserved"
.LASF100:
	.string	"st_ctim"
.LASF7:
	.string	"size_t"
.LASF150:
	.string	"GETOPT_HELP_CHAR"
.LASF120:
	.string	"_ISgraph"
.LASF96:
	.string	"st_blksize"
.LASF97:
	.string	"st_blocks"
.LASF310:
	.string	"simple_strtoul"
.LASF53:
	.string	"_IO_codecvt"
.LASF315:
	.string	"width"
.LASF33:
	.string	"_IO_save_end"
.LASF346:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF11:
	.string	"__gid_t"
.LASF269:
	.string	"block"
.LASF102:
	.string	"_sys_siglist"
.LASF99:
	.string	"st_mtim"
.LASF256:
	.string	"width_per_block"
.LASF205:
	.string	"hexl_mode_trailer"
.LASF64:
	.string	"time_t"
.LASF332:
	.string	"print_char"
.LASF26:
	.string	"_IO_write_base"
.LASF173:
	.string	"error_one_per_line"
.LASF42:
	.string	"_lock"
.LASF294:
	.string	"pbound"
.LASF129:
	.string	"int_curr_symbol"
.LASF178:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF140:
	.string	"n_cs_precedes"
.LASF86:
	.string	"stat"
.LASF79:
	.string	"__tzname"
.LASF262:
	.string	"block_width"
.LASF31:
	.string	"_IO_save_base"
.LASF170:
	.string	"argmatch_die"
.LASF234:
	.string	"default_file_list"
.LASF136:
	.string	"int_frac_digits"
.LASF213:
	.string	"width_bytes"
.LASF263:
	.string	"bufsize"
.LASF35:
	.string	"_chain"
.LASF203:
	.string	"print_function"
.LASF39:
	.string	"_cur_column"
.LASF58:
	.string	"sys_nerr"
.LASF308:
	.string	"locale"
.LASF134:
	.string	"positive_sign"
.LASF212:
	.string	"bytes_to_hex_digits"
.LASF276:
	.string	"radix"
.LASF9:
	.string	"__dev_t"
.LASF141:
	.string	"n_sep_by_space"
.LASF289:
	.string	"blank_fields"
.LASF230:
	.string	"n_specs_allocated"
.LASF229:
	.string	"n_specs"
.LASF60:
	.string	"_sys_nerr"
.LASF271:
	.string	"n_bytes_read"
.LASF301:
	.string	"n_bytes_to_read"
.LASF267:
	.string	"dump_strings"
.LASF104:
	.string	"__environ"
.LASF274:
	.string	"parse_old_offset"
.LASF131:
	.string	"mon_decimal_point"
.LASF6:
	.string	"long int"
.LASF188:
	.string	"FLOAT_SINGLE"
.LASF313:
	.string	"blank"
.LASF272:
	.string	"n_needed"
.LASF210:
	.string	"bytes_to_signed_dec_digits"
.LASF306:
	.string	"open_next_file"
.LASF77:
	.string	"has_arg"
.LASF331:
	.string	"print_s_short"
.LASF223:
	.string	"n_bytes_to_skip"
.LASF52:
	.string	"_IO_marker"
.LASF299:
	.string	"file_stats"
.LASF334:
	.string	"main"
.LASF146:
	.string	"int_n_cs_precedes"
.LASF273:
	.string	"bytes_to_write"
.LASF219:
	.string	"traditional"
.LASF214:
	.string	"charname"
.LASF323:
	.string	"print_double"
.LASF119:
	.string	"_ISprint"
.LASF187:
	.string	"LONG_LONG"
.LASF258:
	.string	"pseudo_start"
.LASF259:
	.string	"s_err"
.LASF227:
	.string	"abbreviate_duplicate_blocks"
.LASF4:
	.string	"signed char"
.LASF18:
	.string	"__blksize_t"
.LASF307:
	.string	"decode_one_format"
.LASF345:
	.string	"emit_stdin_note"
.LASF65:
	.string	"_IO_FILE"
.LASF81:
	.string	"__timezone"
.LASF54:
	.string	"_IO_wide_data"
.LASF91:
	.string	"st_uid"
.LASF319:
	.string	"masked_c"
.LASF325:
	.string	"print_float"
.LASF280:
	.string	"__PRETTY_FUNCTION__"
.LASF165:
	.string	"quoting_style_args"
.LASF105:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF253:
	.string	"desired_width"
.LASF46:
	.string	"_freeres_list"
.LASF94:
	.string	"st_rdev"
.LASF236:
	.string	"have_read_stdin"
.LASF175:
	.string	"strtol_error"
.LASF338:
	.string	"emit_ancillary_info"
.LASF254:
	.string	"modern"
.LASF172:
	.string	"error_message_count"
.LASF20:
	.string	"__syscall_slong_t"
.LASF208:
	.string	"_Bool"
.LASF329:
	.string	"print_int"
.LASF318:
	.string	"print_named_ascii"
.LASF21:
	.string	"char"
.LASF195:
	.string	"OCTAL"
.LASF225:
	.string	"max_bytes_to_format"
.LASF278:
	.string	"read_block"
.LASF322:
	.string	"adjusted_width"
.LASF266:
	.string	"tryline"
.LASF349:
	.string	"_IO_lock_t"
.LASF226:
	.string	"end_offset"
.LASF143:
	.string	"n_sign_posn"
.LASF317:
	.string	"next_pad"
.LASF84:
	.string	"timezone"
.LASF158:
	.string	"shell_escape_always_quoting_style"
.LASF13:
	.string	"__mode_t"
.LASF238:
	.string	"fp_type_size"
.LASF23:
	.string	"_IO_read_ptr"
.LASF132:
	.string	"mon_thousands_sep"
.LASF55:
	.string	"stdin"
.LASF135:
	.string	"negative_sign"
.LASF199:
	.string	"CHARACTER"
.LASF59:
	.string	"sys_errlist"
.LASF285:
	.string	"curr_block"
.LASF144:
	.string	"int_p_cs_precedes"
.LASF34:
	.string	"_markers"
.LASF153:
	.string	"program_name"
.LASF123:
	.string	"_ISpunct"
.LASF160:
	.string	"c_maybe_quoting_style"
.LASF179:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF341:
	.string	"node"
.LASF125:
	.string	"lconv"
.LASF194:
	.string	"UNSIGNED_DECIMAL"
.LASF206:
	.string	"field_width"
.LASF196:
	.string	"HEXADECIMAL"
.LASF106:
	.string	"program_invocation_name"
.LASF43:
	.string	"_offset"
.LASF248:
	.string	"long_options"
.LASF92:
	.string	"st_gid"
.LASF279:
	.string	"n_bytes_in_buffer"
.LASF224:
	.string	"limit_bytes_to_format"
.LASF177:
	.string	"LONGINT_OVERFLOW"
.LASF72:
	.string	"optind"
.LASF320:
	.string	"dump_hexl_mode_trailer"
.LASF283:
	.string	"n_bytes"
.LASF228:
	.string	"spec"
.LASF163:
	.string	"clocale_quoting_style"
.LASF171:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF231:
	.string	"bytes_per_block"
.LASF336:
	.string	"status"
.LASF37:
	.string	"_flags2"
.LASF235:
	.string	"in_stream"
.LASF95:
	.string	"st_size"
.LASF25:
	.string	"_IO_read_base"
.LASF217:
	.string	"string_min"
.LASF75:
	.string	"option"
.LASF50:
	.string	"_unused2"
.LASF328:
	.string	"print_long"
.LASF292:
	.string	"format_address_paren"
.LASF260:
	.string	"w_tmp"
.LASF139:
	.string	"p_sep_by_space"
.LASF316:
	.string	"pad_remaining"
.LASF207:
	.string	"pad_width"
.LASF117:
	.string	"_ISxdigit"
.LASF249:
	.string	"argc"
.LASF38:
	.string	"_old_offset"
.LASF251:
	.string	"n_files"
.LASF277:
	.string	"get_lcm"
.LASF340:
	.string	"infomap"
.LASF250:
	.string	"argv"
.LASF222:
	.string	"format_address"
.LASF147:
	.string	"int_n_sep_by_space"
.LASF19:
	.string	"__blkcnt_t"
.LASF347:
	.string	"src/od.c"
.LASF155:
	.string	"shell_quoting_style"
.LASF12:
	.string	"__ino_t"
.LASF246:
	.string	"endian_args"
.LASF62:
	.string	"long long int"
.LASF185:
	.string	"SHORT"
.LASF211:
	.string	"bytes_to_unsigned_dec_digits"
.LASF339:
	.string	"program"
.LASF108:
	.string	"Version"
.LASF109:
	.string	"exit_failure"
.LASF69:
	.string	"_gl_cxxalias_dummy"
.LASF113:
	.string	"_ISupper"
.LASF295:
	.string	"format_address_none"
.LASF159:
	.string	"c_quoting_style"
.LASF242:
	.string	"ENDIAN_OPTION"
.LASF324:
	.string	"double"
.LASF122:
	.string	"_IScntrl"
.LASF28:
	.string	"_IO_write_end"
.LASF110:
	.string	"uintmax_t"
.LASF180:
	.string	"LONGINT_INVALID"
.LASF193:
	.string	"SIGNED_DECIMAL"
.LASF296:
	.string	"skip"
.LASF103:
	.string	"sys_siglist"
.LASF326:
	.string	"float"
.LASF209:
	.string	"bytes_to_oct_digits"
.LASF151:
	.string	"GETOPT_VERSION_CHAR"
.LASF29:
	.string	"_IO_buf_base"
.LASF265:
	.string	"cleanup"
.LASF1:
	.string	"unsigned int"
.LASF152:
	.string	"version_etc_copyright"
.LASF337:
	.string	"usable_st_size"
.LASF166:
	.string	"quoting_style_vals"
.LASF142:
	.string	"p_sign_posn"
.LASF154:
	.string	"literal_quoting_style"
.LASF93:
	.string	"__pad0"
.LASF82:
	.string	"tzname"
.LASF48:
	.string	"__pad5"
.LASF181:
	.string	"unsigned_long_long_int"
.LASF327:
	.string	"print_long_long"
.LASF78:
	.string	"flag"
.LASF184:
	.string	"CHAR"
.LASF221:
	.string	"pseudo_offset"
.LASF215:
	.string	"address_base"
.LASF167:
	.string	"quoting_options"
.LASF284:
	.string	"prev_block"
.LASF22:
	.string	"_flags"
.LASF244:
	.string	"endian_little"
.LASF275:
	.string	"offset"
.LASF264:
	.string	"address"
.LASF343:
	.string	"lc_messages"
.LASF168:
	.string	"quote_quoting_options"
.LASF286:
	.string	"first"
.LASF49:
	.string	"_mode"
.LASF126:
	.string	"decimal_point"
.LASF233:
	.string	"file_list"
.LASF44:
	.string	"_codecvt"
.LASF112:
	.string	"LOG10_TIMESPEC_HZ"
.LASF89:
	.string	"st_nlink"
.LASF63:
	.string	"long double"
.LASF51:
	.string	"FILE"
.LASF270:
	.string	"current_offset"
.LASF287:
	.string	"prev_pair_equal"
.LASF314:
	.string	"unused_fmt_string"
.LASF87:
	.string	"st_dev"
.LASF176:
	.string	"LONGINT_OK"
.LASF204:
	.string	"fmt_string"
.LASF288:
	.string	"datum_width"
.LASF66:
	.string	"timespec"
.LASF115:
	.string	"_ISalpha"
.LASF312:
	.string	"fields"
.LASF74:
	.string	"optopt"
.LASF162:
	.string	"locale_quoting_style"
.LASF202:
	.string	"size"
.LASF200:
	.string	"FMT_BYTES_ALLOCATED"
.LASF247:
	.string	"endian_types"
.LASF70:
	.string	"long long unsigned int"
.LASF145:
	.string	"int_p_sep_by_space"
.LASF300:
	.string	"usable_size"
.LASF121:
	.string	"_ISblank"
.LASF15:
	.string	"__off_t"
.LASF174:
	.string	"quoting_style"
.LASF124:
	.string	"_ISalnum"
.LASF107:
	.string	"program_invocation_short_name"
.LASF344:
	.string	"emit_mandatory_arg_note"
.LASF311:
	.string	"print_ascii"
.LASF47:
	.string	"_freeres_buf"
.LASF118:
	.string	"_ISspace"
.LASF218:
	.string	"flag_dump_strings"
.LASF73:
	.string	"opterr"
.LASF348:
	.string	"/root/coreutils"
.LASF17:
	.string	"__time_t"
.LASF293:
	.string	"format_address_std"
.LASF330:
	.string	"print_short"
.LASF32:
	.string	"_IO_backup_base"
.LASF41:
	.string	"_shortbuf"
.LASF128:
	.string	"grouping"
.LASF190:
	.string	"FLOAT_LONG_DOUBLE"
.LASF156:
	.string	"shell_always_quoting_style"
.LASF16:
	.string	"__off64_t"
.LASF220:
	.string	"flag_pseudo_start"
.LASF127:
	.string	"thousands_sep"
.LASF241:
	.string	"TRADITIONAL_OPTION"
.LASF161:
	.string	"escape_quoting_style"
.LASF243:
	.string	"endian_type"
.LASF30:
	.string	"_IO_buf_end"
.LASF245:
	.string	"endian_big"
.LASF76:
	.string	"name"
.LASF114:
	.string	"_ISlower"
.LASF342:
	.string	"map_prog"
.LASF137:
	.string	"frac_digits"
.LASF130:
	.string	"currency_symbol"
.LASF57:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF68:
	.string	"tv_nsec"
.LASF197:
	.string	"FLOATING_POINT"
.LASF335:
	.string	"usage"
.LASF157:
	.string	"shell_escape_quoting_style"
.LASF297:
	.string	"n_skip"
.LASF321:
	.string	"print_long_double"
.LASF40:
	.string	"_vtable_offset"
.LASF133:
	.string	"mon_grouping"
.LASF291:
	.string	"format_address_label"
.LASF61:
	.string	"_sys_errlist"
.LASF8:
	.string	"__uintmax_t"
.LASF268:
	.string	"dump"
.LASF281:
	.string	"n_read"
.LASF111:
	.string	"TIMESPEC_HZ"
.LASF148:
	.string	"int_p_sign_posn"
.LASF309:
	.string	"decimal_point_len"
.LASF80:
	.string	"__daylight"
.LASF298:
	.string	"in_errno"
.LASF90:
	.string	"st_mode"
.LASF10:
	.string	"__uid_t"
.LASF24:
	.string	"_IO_read_end"
.LASF261:
	.string	"fields_per_block"
.LASF191:
	.string	"N_SIZE_SPECS"
.LASF189:
	.string	"FLOAT_DOUBLE"
.LASF85:
	.string	"getdate_err"
.LASF282:
	.string	"read_char"
.LASF149:
	.string	"int_n_sign_posn"
.LASF36:
	.string	"_fileno"
.LASF232:
	.string	"input_filename"
.LASF302:
	.string	"decode_format_string"
.LASF45:
	.string	"_wide_data"
.LASF71:
	.string	"optarg"
.LASF255:
	.string	"width_specified"
.LASF237:
	.string	"integral_type_size"
.LASF116:
	.string	"_ISdigit"
.LASF138:
	.string	"p_cs_precedes"
.LASF3:
	.string	"short unsigned int"
.LASF56:
	.string	"stdout"
.LASF305:
	.string	"check_and_close"
.LASF27:
	.string	"_IO_write_ptr"
.LASF201:
	.string	"tspec"
.LASF252:
	.string	"l_c_m"
.LASF303:
	.string	"s_orig"
.LASF333:
	.string	"print_s_char"
.LASF216:
	.string	"address_pad_len"
.LASF198:
	.string	"NAMED_CHARACTER"
.LASF83:
	.string	"daylight"
.LASF88:
	.string	"st_ino"
.LASF186:
	.string	"LONG"
.LASF14:
	.string	"__nlink_t"
.LASF183:
	.string	"NO_SIZE"
.LASF240:
	.string	"short_options"
.LASF304:
	.string	"next"
.LASF257:
	.string	"multipliers"
.LASF67:
	.string	"tv_sec"
.LASF169:
	.string	"argmatch_exit_fn"
.LASF164:
	.string	"custom_quoting_style"
.LASF182:
	.string	"size_spec"
.LASF290:
	.string	"write_block"
.LASF98:
	.string	"st_atim"
.LASF239:
	.string	"input_swap"
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
