	.file	"cut.c"
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
	.local	current_rp
	.comm	current_rp,8,8
	.local	field_1_buffer
	.comm	field_1_buffer,8,8
	.local	field_1_bufsize
	.comm	field_1_bufsize,8,8
	.local	operating_mode
	.comm	operating_mode,4,4
	.local	suppress_non_delimited
	.comm	suppress_non_delimited,1,1
	.local	complement
	.comm	complement,1,1
	.local	delim
	.comm	delim,1,1
	.data
	.type	line_delim, @object
	.size	line_delim, 1
line_delim:
	.byte	10
	.local	output_delimiter_specified
	.comm	output_delimiter_specified,1,1
	.local	output_delimiter_length
	.comm	output_delimiter_length,8,8
	.local	output_delimiter_string
	.comm	output_delimiter_string,8,8
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.section	.rodata
.LC20:
	.string	"bytes"
.LC21:
	.string	"characters"
.LC22:
	.string	"fields"
.LC23:
	.string	"delimiter"
.LC24:
	.string	"only-delimited"
.LC25:
	.string	"output-delimiter"
.LC26:
	.string	"complement"
.LC27:
	.string	"zero-terminated"
.LC28:
	.string	"help"
.LC29:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 352
longopts:
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC23
	.long	1
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC25
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC29
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
.LC30:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC31:
	.string	"Usage: %s OPTION... [FILE]...\n"
	.align 8
.LC32:
	.string	"Print selected parts of lines from each FILE to standard output.\n"
	.align 8
.LC33:
	.string	"  -b, --bytes=LIST        select only these bytes\n  -c, --characters=LIST   select only these characters\n  -d, --delimiter=DELIM   use DELIM instead of TAB for field delimiter\n"
	.align 8
.LC34:
	.string	"  -f, --fields=LIST       select only these fields;  also print any line\n                            that contains no delimiter character, unless\n                            the -s option is specified\n  -n                      (ignored)\n"
	.align 8
.LC35:
	.string	"      --complement        complement the set of selected bytes, characters\n                            or fields\n"
	.align 8
.LC36:
	.string	"  -s, --only-delimited    do not print lines not containing delimiters\n      --output-delimiter=STRING  use STRING as the output delimiter\n                            the default is to use the input delimiter\n"
	.align 8
.LC37:
	.string	"  -z, --zero-terminated    line delimiter is NUL, not newline\n"
	.align 8
.LC38:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC39:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC40:
	.string	"\nUse one, and only one of -b, -c or -f.  Each LIST is made up of one\nrange, or many ranges separated by commas.  Selected input is written\nin the same order that it is read, and is written exactly once.\n"
	.align 8
.LC41:
	.ascii	"Each "
	.string	"range is one of:\n\n  N     N'th byte, character or field, counted from 1\n  N-    from N'th byte, character or field, to end of line\n  N-M   from N'th to M'th (included) byte, character or field\n  -M    from first to M'th (included) byte, character or field\n"
.LC42:
	.string	"cut"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/cut.c"
	.loc 2 142 1 is_stmt 1
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
	.loc 2 143 6
	cmpl	$0, -20(%rbp)
	je	.L15
	.loc 2 144 5
	movq	program_name(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L16
.L15:
	.loc 2 147 7
	movq	program_name(%rip), %rbx
	.loc 2 147 15
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 147 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 151 7
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 155 7
	call	emit_stdin_note
	.loc 2 156 7
	call	emit_mandatory_arg_note
	.loc 2 158 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 163 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 169 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 173 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 178 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 181 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 182 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 183 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 189 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 197 7
	leaq	.LC42(%rip), %rdi
	call	emit_ancillary_info
.L16:
	.loc 2 199 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	next_item, @function
next_item:
.LFB47:
	.loc 2 208 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 209 4
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 209 14
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 210 8
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 210 31
	movq	current_rp(%rip), %rax
	movq	8(%rax), %rax
	.loc 2 210 6
	cmpq	%rax, %rdx
	jbe	.L19
	.loc 2 211 15
	movq	current_rp(%rip), %rax
	addq	$16, %rax
	movq	%rax, current_rp(%rip)
.L19:
	.loc 2 212 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	next_item, .-next_item
	.type	print_kth, @function
print_kth:
.LFB48:
	.loc 2 218 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 219 20
	movq	current_rp(%rip), %rax
	movq	(%rax), %rax
	.loc 2 219 25
	cmpq	%rax, -8(%rbp)
	setnb	%al
	.loc 2 220 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	print_kth, .-print_kth
	.type	is_range_start_index, @function
is_range_start_index:
.LFB49:
	.loc 2 226 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 227 25
	movq	current_rp(%rip), %rax
	movq	(%rax), %rax
	.loc 2 227 12
	cmpq	%rax, -8(%rbp)
	sete	%al
	.loc 2 228 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	is_range_start_index, .-is_range_start_index
	.type	cut_bytes, @function
cut_bytes:
.LFB50:
	.loc 2 234 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 234 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 240 12
	movq	$0, -16(%rbp)
	.loc 2 241 19
	movb	$0, -21(%rbp)
	.loc 2 242 14
	movq	frp(%rip), %rax
	movq	%rax, current_rp(%rip)
.L32:
.LBB2:
	.loc 2 247 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -20(%rbp)
	.loc 2 249 13
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 249 10
	cmpl	%eax, -20(%rbp)
	jne	.L25
	.loc 2 251 11
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 252 20
	movq	$0, -16(%rbp)
	.loc 2 253 27
	movb	$0, -21(%rbp)
	.loc 2 254 22
	movq	frp(%rip), %rax
	movq	%rax, current_rp(%rip)
	jmp	.L32
.L25:
	.loc 2 256 15
	cmpl	$-1, -20(%rbp)
	jne	.L27
	.loc 2 258 24
	movq	-16(%rbp), %rax
	.loc 2 258 14
	testq	%rax, %rax
	je	.L34
	.loc 2 259 13
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 260 11
	jmp	.L34
.L27:
	.loc 2 264 11
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	next_item
	.loc 2 265 15
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print_kth
	.loc 2 265 14
	testb	%al, %al
	je	.L32
	.loc 2 267 19
	movzbl	output_delimiter_specified(%rip), %eax
	.loc 2 267 18
	testb	%al, %al
	je	.L30
	.loc 2 269 22
	cmpb	$0, -21(%rbp)
	je	.L31
	.loc 2 269 42 discriminator 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	is_range_start_index
	.loc 2 269 39 discriminator 1
	testb	%al, %al
	je	.L31
	.loc 2 271 23
	movq	stdout(%rip), %rcx
	movq	output_delimiter_length(%rip), %rdx
	movq	output_delimiter_string(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
.L31:
	.loc 2 274 35
	movb	$1, -21(%rbp)
.L30:
	.loc 2 277 15
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.LBE2:
	.loc 2 244 5
	jmp	.L32
.L34:
.LBB3:
	.loc 2 260 11
	nop
.LBE3:
	.loc 2 281 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	cut_bytes, .-cut_bytes
	.section	.rodata
.LC43:
	.string	"src/cut.c"
.LC44:
	.string	"n_bytes != 0"
	.text
	.type	cut_fields, @function
cut_fields:
.LFB51:
	.loc 2 287 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	.loc 2 287 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 289 13
	movq	$1, -32(%rbp)
	.loc 2 290 8
	movb	$0, -50(%rbp)
	.loc 2 293 14
	movq	frp(%rip), %rax
	movq	%rax, current_rp(%rip)
	.loc 2 295 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -48(%rbp)
	.loc 2 296 6
	cmpl	$-1, -48(%rbp)
	je	.L65
	.loc 2 299 3
	movq	-72(%rbp), %rdx
	movl	-48(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
	.loc 2 300 5
	movl	$0, -48(%rbp)
	.loc 2 308 51
	movl	$1, %edi
	call	print_kth
	.loc 2 308 50
	xorl	$1, %eax
	movl	%eax, %edx
	.loc 2 308 48
	movzbl	suppress_non_delimited(%rip), %eax
	xorl	%edx, %eax
	movzbl	%al, %eax
	.loc 2 308 22
	testl	%eax, %eax
	setne	%al
	movb	%al, -49(%rbp)
.L63:
.LBB4:
	.loc 2 312 21
	movq	-32(%rbp), %rax
	.loc 2 312 10
	cmpq	$1, %rax
	jne	.L38
	.loc 2 312 26 discriminator 1
	cmpb	$0, -49(%rbp)
	je	.L38
.LBB5:
	.loc 2 317 17
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %edx
	movzbl	delim(%rip), %eax
	movzbl	%al, %eax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movl	%edx, %r9d
	movl	%eax, %r8d
	movq	$-1, %rcx
	movl	$0, %edx
	leaq	field_1_bufsize(%rip), %rsi
	leaq	field_1_buffer(%rip), %rdi
	call	getndelim2@PLT
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	.loc 2 319 14
	cmpq	$0, -24(%rbp)
	jns	.L39
	.loc 2 321 15
	movq	field_1_buffer(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 322 30
	movq	$0, field_1_buffer(%rip)
	.loc 2 323 19
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 323 18
	testl	%eax, %eax
	jne	.L35
	.loc 2 323 38 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 323 35 discriminator 1
	testl	%eax, %eax
	jne	.L35
	.loc 2 325 15
	call	xalloc_die@PLT
.L39:
	.loc 2 328 19
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 329 11
	cmpq	$0, -16(%rbp)
	jne	.L41
	.loc 2 329 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6402(%rip), %rcx
	movl	$329, %edx
	leaq	.LC43(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	call	__assert_fail@PLT
.L41:
	.loc 2 331 13 is_stmt 1
	movl	$0, -48(%rbp)
	.loc 2 336 39
	movq	field_1_buffer(%rip), %rax
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 336 15
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	.loc 2 336 54
	movzbl	delim(%rip), %edx
	.loc 2 336 14
	cmpb	%dl, %al
	je	.L42
	.loc 2 338 19
	movzbl	suppress_non_delimited(%rip), %eax
	.loc 2 338 18
	testb	%al, %al
	jne	.L66
	.loc 2 344 19
	movq	stdout(%rip), %rcx
	movq	field_1_buffer(%rip), %rax
	movq	-16(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 346 37
	movq	field_1_buffer(%rip), %rax
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	.loc 2 346 51
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 346 22
	cmpl	%eax, %edx
	je	.L44
	.loc 2 347 21
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L44:
	.loc 2 348 21
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	.loc 2 350 15
	jmp	.L66
.L42:
	.loc 2 352 15
	movl	$1, %edi
	call	print_kth
	.loc 2 352 14
	testb	%al, %al
	je	.L46
	.loc 2 355 15
	movq	stdout(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rsi
	movq	field_1_buffer(%rip), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 358 25
	movzbl	delim(%rip), %edx
	movzbl	line_delim(%rip), %eax
	.loc 2 358 18
	cmpb	%al, %dl
	jne	.L47
.LBB6:
	.loc 2 360 32
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -40(%rbp)
	.loc 2 361 22
	cmpl	$-1, -40(%rbp)
	je	.L46
	.loc 2 363 23
	movq	-72(%rbp), %rdx
	movl	-40(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
	.loc 2 364 48
	movb	$1, -50(%rbp)
	jmp	.L46
.L47:
.LBE6:
	.loc 2 368 42
	movb	$1, -50(%rbp)
.L46:
	.loc 2 370 11
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	next_item
.L38:
.LBE5:
	.loc 2 373 11
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	.loc 2 375 11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_kth
	.loc 2 375 10
	testb	%al, %al
	je	.L53
	.loc 2 377 14
	cmpb	$0, -50(%rbp)
	je	.L49
	.loc 2 379 15
	movq	stdout(%rip), %rcx
	movq	output_delimiter_length(%rip), %rdx
	movq	output_delimiter_string(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
.L49:
	.loc 2 382 36
	movb	$1, -50(%rbp)
	.loc 2 384 17
	jmp	.L50
.L52:
	.loc 2 386 15
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 387 22
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
.L50:
	.loc 2 384 23
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -48(%rbp)
	.loc 2 384 38
	movzbl	delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 384 17
	cmpl	%eax, -48(%rbp)
	je	.L51
	.loc 2 384 52 discriminator 1
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 384 47 discriminator 1
	cmpl	%eax, -48(%rbp)
	je	.L51
	.loc 2 384 66 discriminator 2
	cmpl	$-1, -48(%rbp)
	jne	.L52
	jmp	.L51
.L54:
	.loc 2 394 22
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
.L53:
	.loc 2 392 23
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -48(%rbp)
	.loc 2 392 38
	movzbl	delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 392 17
	cmpl	%eax, -48(%rbp)
	je	.L51
	.loc 2 392 52 discriminator 1
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 392 47 discriminator 1
	cmpl	%eax, -48(%rbp)
	je	.L51
	.loc 2 392 66 discriminator 2
	cmpl	$-1, -48(%rbp)
	jne	.L54
.L51:
	.loc 2 399 17
	movzbl	delim(%rip), %edx
	movzbl	line_delim(%rip), %eax
	.loc 2 399 10
	cmpb	%al, %dl
	jne	.L55
	.loc 2 399 36 discriminator 1
	movzbl	delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 399 31 discriminator 1
	cmpl	%eax, -48(%rbp)
	jne	.L55
.LBB7:
	.loc 2 401 24
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -36(%rbp)
	.loc 2 402 14
	cmpl	$-1, -36(%rbp)
	je	.L56
	.loc 2 403 13
	movq	-72(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
	jmp	.L55
.L56:
	.loc 2 405 15
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
.L55:
.LBE7:
	.loc 2 408 13
	movzbl	delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 408 10
	cmpl	%eax, -48(%rbp)
	jne	.L57
	.loc 2 409 9
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	next_item
	jmp	.L63
.L57:
	.loc 2 410 18
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 410 15
	cmpl	%eax, -48(%rbp)
	je	.L58
	.loc 2 410 32 discriminator 1
	cmpl	$-1, -48(%rbp)
	jne	.L63
.L58:
	.loc 2 412 14
	cmpb	$0, -50(%rbp)
	jne	.L59
	.loc 2 413 20
	movzbl	suppress_non_delimited(%rip), %eax
	xorl	$1, %eax
	.loc 2 413 15
	testb	%al, %al
	jne	.L59
	.loc 2 413 56 discriminator 1
	movq	-32(%rbp), %rax
	.loc 2 413 18 discriminator 1
	cmpq	$1, %rax
	je	.L60
.L59:
	.loc 2 415 21
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 415 18
	cmpl	%eax, -48(%rbp)
	je	.L61
	.loc 2 415 45 discriminator 1
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 415 35 discriminator 1
	cmpl	%eax, -44(%rbp)
	jne	.L61
	.loc 2 416 28
	movzbl	delim(%rip), %edx
	movzbl	line_delim(%rip), %eax
	.loc 2 416 19
	cmpb	%al, %dl
	jne	.L60
.L61:
	.loc 2 417 17
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L60:
	.loc 2 419 14
	cmpl	$-1, -48(%rbp)
	je	.L67
	.loc 2 421 21
	movq	$1, -32(%rbp)
	.loc 2 422 22
	movq	frp(%rip), %rax
	movq	%rax, current_rp(%rip)
	.loc 2 423 36
	movb	$0, -50(%rbp)
	jmp	.L63
.L66:
.LBB8:
	.loc 2 350 15
	nop
.LBE8:
.LBE4:
	.loc 2 311 5
	jmp	.L63
.L65:
	.loc 2 297 5
	nop
	jmp	.L35
.L67:
.LBB9:
	.loc 2 420 13
	nop
.L35:
.LBE9:
	.loc 2 426 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	cut_fields, .-cut_fields
	.type	cut_stream, @function
cut_stream:
.LFB52:
	.loc 2 430 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 431 22
	movl	operating_mode(%rip), %eax
	.loc 2 431 6
	cmpl	$1, %eax
	jne	.L69
	.loc 2 432 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cut_bytes
	.loc 2 435 1
	jmp	.L71
.L69:
	.loc 2 434 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cut_fields
.L71:
	.loc 2 435 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	cut_stream, .-cut_stream
	.section	.rodata
.LC45:
	.string	"-"
.LC46:
	.string	"r"
.LC47:
	.string	"%s"
	.text
	.type	cut_file, @function
cut_file:
.LFB53:
	.loc 2 442 1
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
	.loc 2 445 7
	movq	-40(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 445 6
	testl	%eax, %eax
	jne	.L73
	.loc 2 447 23
	movb	$1, have_read_stdin(%rip)
	.loc 2 448 14
	movq	stdin(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L74
.L73:
	.loc 2 452 16
	movq	-40(%rbp), %rax
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	.loc 2 453 10
	cmpq	$0, -24(%rbp)
	jne	.L74
	.loc 2 455 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 455 21
	call	__errno_location@PLT
	.loc 2 455 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC47(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 456 18
	movl	$0, %eax
	jmp	.L75
.L74:
	.loc 2 460 3
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 462 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cut_stream
	.loc 2 464 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 464 6
	testl	%eax, %eax
	je	.L76
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
	leaq	.LC47(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 467 14
	movl	$0, %eax
	jmp	.L75
.L76:
	.loc 2 469 7
	movq	-40(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 469 6
	testl	%eax, %eax
	jne	.L77
	.loc 2 470 5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	jmp	.L78
.L77:
	.loc 2 471 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 471 11
	cmpl	$-1, %eax
	jne	.L78
	.loc 2 473 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 473 17
	call	__errno_location@PLT
	.loc 2 473 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC47(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 474 14
	movl	$0, %eax
	jmp	.L75
.L78:
	.loc 2 476 10
	movl	$1, %eax
.L75:
	.loc 2 477 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	cut_file, .-cut_file
	.section	.rodata
.LC48:
	.string	"/usr/local/share/locale"
	.align 8
.LC49:
	.string	"only one type of list may be specified"
	.align 8
.LC50:
	.string	"the delimiter must be a single character"
.LC51:
	.string	"David MacKenzie"
.LC52:
	.string	"David M. Ihnat"
.LC53:
	.string	"Jim Meyering"
.LC54:
	.string	"b:c:d:f:nsz"
	.align 8
.LC55:
	.string	"you must specify a list of bytes, characters, or fields"
	.align 8
.LC56:
	.string	"an input delimiter may be specified only when operating on fields"
	.align 8
.LC57:
	.string	"suppressing non-delimited lines makes sense\n\tonly when operating on fields"
	.text
	.globl	main
	.type	main, @function
main:
.LFB54:
	.loc 2 481 1
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
	.loc 2 484 8
	movb	$0, -13(%rbp)
	.loc 2 485 9
	movq	$0, -8(%rbp)
	.loc 2 488 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 489 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 490 3
	leaq	.LC48(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 491 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 493 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 495 18
	movl	$0, operating_mode(%rip)
	.loc 2 498 26
	movb	$0, suppress_non_delimited(%rip)
	.loc 2 500 9
	movb	$0, delim(%rip)
	.loc 2 501 19
	movb	$0, have_read_stdin(%rip)
	.loc 2 503 9
	jmp	.L80
.L99:
	.loc 2 505 7
	cmpl	$129, -12(%rbp)
	jg	.L81
	cmpl	$98, -12(%rbp)
	jge	.L82
	cmpl	$-131, -12(%rbp)
	je	.L83
	cmpl	$-130, -12(%rbp)
	je	.L84
	jmp	.L81
.L82:
	movl	-12(%rbp), %eax
	subl	$98, %eax
	cmpl	$31, %eax
	ja	.L81
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L86(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L86(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L86:
	.long	.L93-.L86
	.long	.L93-.L86
	.long	.L92-.L86
	.long	.L81-.L86
	.long	.L91-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L80-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L89-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L88-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L81-.L86
	.long	.L87-.L86
	.long	.L85-.L86
	.text
.L93:
	.loc 2 510 30
	movl	operating_mode(%rip), %eax
	.loc 2 510 14
	testl	%eax, %eax
	je	.L94
	.loc 2 511 13
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L94:
	.loc 2 512 26
	movl	$1, operating_mode(%rip)
	.loc 2 513 28
	movq	optarg(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 514 11
	jmp	.L80
.L91:
	.loc 2 518 30
	movl	operating_mode(%rip), %eax
	.loc 2 518 14
	testl	%eax, %eax
	je	.L95
	.loc 2 519 13
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L95:
	.loc 2 520 26
	movl	$2, operating_mode(%rip)
	.loc 2 521 28
	movq	optarg(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 522 11
	jmp	.L80
.L92:
	.loc 2 527 21
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 527 14
	testb	%al, %al
	je	.L96
	.loc 2 527 42 discriminator 1
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 527 33 discriminator 1
	testb	%al, %al
	je	.L96
	.loc 2 528 13
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L96:
	.loc 2 529 25
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 529 17
	movb	%al, delim(%rip)
	.loc 2 530 27
	movb	$1, -13(%rbp)
	.loc 2 531 11
	jmp	.L80
.L87:
	.loc 2 534 38
	movb	$1, output_delimiter_specified(%rip)
	.loc 2 537 44
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 538 42
	testb	%al, %al
	je	.L97
	.loc 2 538 44 discriminator 1
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L98
.L97:
	.loc 2 538 42 discriminator 2
	movl	$1, %eax
.L98:
	.loc 2 537 35
	movq	%rax, output_delimiter_length(%rip)
	.loc 2 539 37
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 2 539 35
	movq	%rax, output_delimiter_string(%rip)
	.loc 2 540 11
	jmp	.L80
.L89:
	.loc 2 546 34
	movb	$1, suppress_non_delimited(%rip)
	.loc 2 547 11
	jmp	.L80
.L88:
	.loc 2 550 22
	movb	$0, line_delim(%rip)
	.loc 2 551 11
	jmp	.L80
.L85:
	.loc 2 554 22
	movb	$1, complement(%rip)
	.loc 2 555 11
	jmp	.L80
.L84:
	.loc 2 557 9
	movl	$0, %edi
	call	usage
.L83:
	.loc 2 559 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	leaq	.LC53(%rip), %rcx
	pushq	%rcx
	leaq	.LC51(%rip), %r9
	leaq	.LC52(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L81:
	.loc 2 562 11
	movl	$1, %edi
	call	usage
.L80:
	.loc 2 503 18
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -12(%rbp)
	.loc 2 503 9
	cmpl	$-1, -12(%rbp)
	jne	.L99
	.loc 2 566 22
	movl	operating_mode(%rip), %eax
	.loc 2 566 6
	testl	%eax, %eax
	jne	.L100
	.loc 2 567 5
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L100:
	.loc 2 569 6
	cmpb	$0, -13(%rbp)
	je	.L101
	.loc 2 569 41 discriminator 1
	movl	operating_mode(%rip), %eax
	.loc 2 569 23 discriminator 1
	cmpl	$2, %eax
	je	.L101
	.loc 2 570 5
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L101:
	.loc 2 573 7
	movzbl	suppress_non_delimited(%rip), %eax
	.loc 2 573 6
	testb	%al, %al
	je	.L102
	.loc 2 573 48 discriminator 1
	movl	operating_mode(%rip), %eax
	.loc 2 573 30 discriminator 1
	cmpl	$2, %eax
	je	.L102
	.loc 2 574 5
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L102:
	.loc 2 578 33
	movl	operating_mode(%rip), %eax
	.loc 2 578 52
	cmpl	$2, %eax
	jne	.L103
	.loc 2 578 52 is_stmt 0 discriminator 1
	movl	$0, %edx
	jmp	.L104
.L103:
	.loc 2 578 52 discriminator 2
	movl	$4, %edx
.L104:
	.loc 2 579 29 is_stmt 1
	movzbl	complement(%rip), %eax
	.loc 2 579 49
	testb	%al, %al
	je	.L105
	.loc 2 579 49 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L106
.L105:
	.loc 2 579 49 discriminator 2
	movl	$0, %eax
.L106:
	.loc 2 579 15 is_stmt 1 discriminator 4
	orl	%edx, %eax
	.loc 2 577 3 discriminator 4
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_fields@PLT
	.loc 2 581 7 discriminator 4
	movzbl	-13(%rbp), %eax
	xorl	$1, %eax
	.loc 2 581 6 discriminator 4
	testb	%al, %al
	je	.L107
	.loc 2 582 11
	movb	$9, delim(%rip)
.L107:
	.loc 2 584 31
	movq	output_delimiter_string(%rip), %rax
	.loc 2 584 6
	testq	%rax, %rax
	jne	.L108
.LBB10:
	.loc 2 587 16
	movzbl	delim(%rip), %eax
	movb	%al, dummy.6445(%rip)
	.loc 2 588 16
	movb	$0, 1+dummy.6445(%rip)
	.loc 2 589 31
	leaq	dummy.6445(%rip), %rax
	movq	%rax, output_delimiter_string(%rip)
	.loc 2 590 31
	movq	$1, output_delimiter_length(%rip)
.L108:
.LBE10:
	.loc 2 593 14
	movl	optind(%rip), %eax
	.loc 2 593 6
	cmpl	%eax, -20(%rbp)
	jne	.L109
	.loc 2 594 10
	leaq	.LC45(%rip), %rdi
	call	cut_file
	movb	%al, -14(%rbp)
	jmp	.L110
.L109:
	.loc 2 596 13
	movb	$1, -14(%rbp)
	.loc 2 596 5
	jmp	.L111
.L112:
	.loc 2 597 27 discriminator 3
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 597 13 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	cut_file
	.loc 2 597 10 discriminator 3
	movzbl	-14(%rbp), %edx
	.loc 2 597 13 discriminator 3
	movzbl	%al, %eax
	.loc 2 597 10 discriminator 3
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -14(%rbp)
	.loc 2 596 42 discriminator 3
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L111:
	.loc 2 596 28 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 596 5 discriminator 1
	cmpl	%eax, -20(%rbp)
	jg	.L112
.L110:
	.loc 2 600 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 600 6
	testb	%al, %al
	je	.L113
	.loc 2 600 26 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 600 23 discriminator 1
	cmpl	$-1, %eax
	jne	.L113
	.loc 2 602 17
	call	__errno_location@PLT
	.loc 2 602 7
	movl	(%rax), %eax
	leaq	.LC45(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 603 10
	movb	$0, -14(%rbp)
.L113:
	.loc 2 606 3
	call	reset_fields@PLT
	.loc 2 608 28
	movzbl	-14(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 609 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6402, @object
	.size	__PRETTY_FUNCTION__.6402, 11
__PRETTY_FUNCTION__.6402:
	.string	"cut_fields"
	.local	dummy.6445
	.comm	dummy.6445,2,1
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
	.file 19 "/usr/include/stdint.h"
	.file 20 "./lib/timespec.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/fadvise.h"
	.file 26 "src/set-fields.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc93
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF175
	.byte	0xc
	.long	.LASF176
	.long	.LASF177
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0xc1
	.byte	0x1b
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x8
	.long	0xba
	.uleb128 0x9
	.long	.LASF64
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x24d
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xb4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xb4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xb4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xb4
	.byte	0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xb4
	.byte	0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xb4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x266
	.byte	0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x26c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x272
	.byte	0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x282
	.byte	0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x28d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x298
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x26c
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x29e
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xc6
	.uleb128 0xb
	.long	.LASF178
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x261
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0xd
	.long	0xba
	.long	0x282
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x259
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x288
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x293
	.uleb128 0xd
	.long	0xba
	.long	0x2ae
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xc1
	.uleb128 0x8
	.long	0x2ae
	.uleb128 0x2
	.long	.LASF47
	.byte	0x7
	.byte	0x4d
	.byte	0x13
	.long	0xa8
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2d1
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2d1
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2d1
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2b4
	.long	0x306
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2fb
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x306
	.uleb128 0xf
	.long	.LASF53
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF54
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x306
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF56
	.uleb128 0x2
	.long	.LASF57
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0x9c
	.uleb128 0x11
	.long	.LASF58
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF59
	.uleb128 0xf
	.long	.LASF60
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF62
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF63
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF65
	.byte	0x20
	.byte	0xc
	.byte	0x32
	.byte	0x8
	.long	0x3cf
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x34
	.byte	0xf
	.long	0x2ae
	.byte	0
	.uleb128 0xa
	.long	.LASF67
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF68
	.byte	0xc
	.byte	0x38
	.byte	0x8
	.long	0x3d4
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
	.long	0x38d
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0xb4
	.long	0x3ea
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3da
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3da
	.uleb128 0xf
	.long	.LASF73
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF74
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF75
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x43f
	.uleb128 0xd
	.long	0x2b4
	.long	0x456
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x446
	.uleb128 0x11
	.long	.LASF76
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x456
	.uleb128 0x11
	.long	.LASF77
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x456
	.uleb128 0x11
	.long	.LASF78
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x482
	.uleb128 0x7
	.byte	0x8
	.long	0xb4
	.uleb128 0x11
	.long	.LASF79
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x482
	.uleb128 0xf
	.long	.LASF80
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF81
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF82
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2ae
	.uleb128 0xf
	.long	.LASF83
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF84
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
	.long	0x4e9
	.uleb128 0x15
	.long	.LASF85
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x4fe
	.uleb128 0x16
	.long	.LASF86
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x51c
	.uleb128 0x18
	.long	.LASF87
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF88
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xc1
	.long	0x527
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x51c
	.uleb128 0xf
	.long	.LASF89
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x527
	.uleb128 0xf
	.long	.LASF90
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x2ae
	.uleb128 0x19
	.long	.LASF123
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x599
	.uleb128 0x16
	.long	.LASF91
	.byte	0
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.uleb128 0x16
	.long	.LASF93
	.byte	0x2
	.uleb128 0x16
	.long	.LASF94
	.byte	0x3
	.uleb128 0x16
	.long	.LASF95
	.byte	0x4
	.uleb128 0x16
	.long	.LASF96
	.byte	0x5
	.uleb128 0x16
	.long	.LASF97
	.byte	0x6
	.uleb128 0x16
	.long	.LASF98
	.byte	0x7
	.uleb128 0x16
	.long	.LASF99
	.byte	0x8
	.uleb128 0x16
	.long	.LASF100
	.byte	0x9
	.uleb128 0x16
	.long	.LASF101
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x544
	.uleb128 0x11
	.long	.LASF102
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x306
	.uleb128 0xd
	.long	0x599
	.long	0x5b6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5ab
	.uleb128 0x11
	.long	.LASF103
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x5b6
	.uleb128 0xf
	.long	.LASF104
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x440
	.uleb128 0xf
	.long	.LASF105
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF106
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
	.long	0x61f
	.uleb128 0x16
	.long	.LASF107
	.byte	0
	.uleb128 0x16
	.long	.LASF108
	.byte	0x2
	.uleb128 0x16
	.long	.LASF109
	.byte	0x5
	.uleb128 0x16
	.long	.LASF110
	.byte	0x4
	.uleb128 0x16
	.long	.LASF111
	.byte	0x3
	.uleb128 0x16
	.long	.LASF112
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF113
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF114
	.uleb128 0x9
	.long	.LASF115
	.byte	0x10
	.byte	0x1a
	.byte	0x14
	.byte	0x8
	.long	0x653
	.uleb128 0x12
	.string	"lo"
	.byte	0x1a
	.byte	0x16
	.byte	0xf
	.long	0x4c5
	.byte	0
	.uleb128 0x12
	.string	"hi"
	.byte	0x1a
	.byte	0x17
	.byte	0xf
	.long	0x4c5
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.string	"frp"
	.byte	0x1a
	.byte	0x1b
	.byte	0x21
	.long	0x65f
	.uleb128 0x7
	.byte	0x8
	.long	0x62d
	.uleb128 0xf
	.long	.LASF116
	.byte	0x1a
	.byte	0x1e
	.byte	0xf
	.long	0x2d
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x22
	.byte	0x1
	.long	0x692
	.uleb128 0x16
	.long	.LASF117
	.byte	0x1
	.uleb128 0x16
	.long	.LASF118
	.byte	0x2
	.uleb128 0x16
	.long	.LASF119
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x2
	.byte	0x3e
	.byte	0x21
	.long	0x65f
	.uleb128 0x9
	.byte	0x3
	.quad	current_rp
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x2
	.byte	0x47
	.byte	0xe
	.long	0xb4
	.uleb128 0x9
	.byte	0x3
	.quad	field_1_buffer
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x2
	.byte	0x4a
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	field_1_bufsize
	.uleb128 0x19
	.long	.LASF124
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x4c
	.byte	0x6
	.long	0x6f9
	.uleb128 0x16
	.long	.LASF125
	.byte	0
	.uleb128 0x16
	.long	.LASF126
	.byte	0x1
	.uleb128 0x16
	.long	.LASF127
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x2
	.byte	0x57
	.byte	0x1c
	.long	0x6d4
	.uleb128 0x9
	.byte	0x3
	.quad	operating_mode
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x2
	.byte	0x5c
	.byte	0xd
	.long	0x626
	.uleb128 0x9
	.byte	0x3
	.quad	suppress_non_delimited
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x2
	.byte	0x60
	.byte	0xd
	.long	0x626
	.uleb128 0x9
	.byte	0x3
	.quad	complement
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x2
	.byte	0x63
	.byte	0x16
	.long	0x49
	.uleb128 0x9
	.byte	0x3
	.quad	delim
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x2
	.byte	0x66
	.byte	0x16
	.long	0x49
	.uleb128 0x9
	.byte	0x3
	.quad	line_delim
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x2
	.byte	0x69
	.byte	0xd
	.long	0x626
	.uleb128 0x9
	.byte	0x3
	.quad	output_delimiter_specified
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x2
	.byte	0x6c
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	output_delimiter_length
	.uleb128 0x1b
	.long	.LASF134
	.byte	0x2
	.byte	0x70
	.byte	0xe
	.long	0xb4
	.uleb128 0x9
	.byte	0x3
	.quad	output_delimiter_string
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x2
	.byte	0x73
	.byte	0xd
	.long	0x626
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x7da
	.uleb128 0x16
	.long	.LASF136
	.byte	0x80
	.uleb128 0x16
	.long	.LASF137
	.byte	0x81
	.byte	0
	.uleb128 0xd
	.long	0x3cf
	.long	0x7ea
	.uleb128 0xe
	.long	0x39
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x7da
	.uleb128 0x1b
	.long	.LASF138
	.byte	0x2
	.byte	0x7d
	.byte	0x1c
	.long	0x7ea
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF163
	.byte	0x2
	.value	0x1e0
	.byte	0x1
	.long	0x65
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b1
	.uleb128 0x1d
	.long	.LASF139
	.byte	0x2
	.value	0x1e0
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.long	.LASF140
	.byte	0x2
	.value	0x1e0
	.byte	0x18
	.long	0x482
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x2
	.value	0x1e2
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"ok"
	.byte	0x2
	.value	0x1e3
	.byte	0x8
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x1e
	.long	.LASF142
	.byte	0x2
	.value	0x1e4
	.byte	0x8
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1e
	.long	.LASF143
	.byte	0x2
	.value	0x1e5
	.byte	0x9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x2
	.value	0x24a
	.byte	0x13
	.long	0x8b1
	.uleb128 0x9
	.byte	0x3
	.quad	dummy.6445
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xba
	.long	0x8c1
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.long	.LASF158
	.byte	0x2
	.value	0x1b9
	.byte	0x1
	.long	0x626
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x905
	.uleb128 0x1d
	.long	.LASF145
	.byte	0x2
	.value	0x1b9
	.byte	0x17
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x2
	.value	0x1bb
	.byte	0x9
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF147
	.byte	0x2
	.value	0x1ad
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x935
	.uleb128 0x1d
	.long	.LASF146
	.byte	0x2
	.value	0x1ad
	.byte	0x13
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF148
	.byte	0x2
	.value	0x11e
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xa3d
	.uleb128 0x1d
	.long	.LASF146
	.byte	0x2
	.value	0x11e
	.byte	0x13
	.long	0x2d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.string	"c"
	.byte	0x2
	.value	0x120
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF149
	.byte	0x2
	.value	0x121
	.byte	0xd
	.long	0x4c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x2
	.value	0x122
	.byte	0x8
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x1e
	.long	.LASF151
	.byte	0x2
	.value	0x123
	.byte	0x8
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x23
	.long	.LASF179
	.long	0xa4d
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6402
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x2
	.value	0x175
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x60
	.long	0xa19
	.uleb128 0x1f
	.string	"len"
	.byte	0x2
	.value	0x13a
	.byte	0x13
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF153
	.byte	0x2
	.value	0x13b
	.byte	0x12
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1e
	.long	.LASF154
	.byte	0x2
	.value	0x168
	.byte	0x17
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1e
	.long	.LASF154
	.byte	0x2
	.value	0x191
	.byte	0xf
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xc1
	.long	0xa4d
	.uleb128 0xe
	.long	0x39
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0xa3d
	.uleb128 0x26
	.long	.LASF155
	.byte	0x2
	.byte	0xe9
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xab1
	.uleb128 0x27
	.long	.LASF146
	.byte	0x2
	.byte	0xe9
	.byte	0x12
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF156
	.byte	0x2
	.byte	0xeb
	.byte	0xd
	.long	0x4c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF157
	.byte	0x2
	.byte	0xee
	.byte	0x8
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x24
	.long	.Ldebug_ranges0+0
	.uleb128 0x28
	.string	"c"
	.byte	0x2
	.byte	0xf5
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF159
	.byte	0x2
	.byte	0xe1
	.byte	0x1
	.long	0x626
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xae1
	.uleb128 0x2a
	.string	"k"
	.byte	0x2
	.byte	0xe1
	.byte	0x21
	.long	0x4c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF160
	.byte	0x2
	.byte	0xd9
	.byte	0x1
	.long	0x626
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xb11
	.uleb128 0x2a
	.string	"k"
	.byte	0x2
	.byte	0xd9
	.byte	0x16
	.long	0x4c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF161
	.byte	0x2
	.byte	0xcf
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xb3f
	.uleb128 0x27
	.long	.LASF162
	.byte	0x2
	.byte	0xcf
	.byte	0x17
	.long	0xb3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x4c5
	.uleb128 0x2c
	.long	.LASF164
	.byte	0x2
	.byte	0x8d
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xb73
	.uleb128 0x27
	.long	.LASF165
	.byte	0x2
	.byte	0x8d
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF166
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xc18
	.uleb128 0x1d
	.long	.LASF167
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.long	.LASF168
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xbce
	.uleb128 0x2e
	.long	.LASF167
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2ae
	.byte	0
	.uleb128 0x2e
	.long	.LASF169
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2ae
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xba3
	.uleb128 0x1e
	.long	.LASF168
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xc28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF169
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF170
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xc2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF171
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xbce
	.long	0xc28
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xc18
	.uleb128 0x7
	.byte	0x8
	.long	0xbce
	.uleb128 0x2f
	.long	.LASF172
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF173
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF174
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x49
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0xba
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
	.uleb128 0x8
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2117
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x30
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF83:
	.string	"exit_failure"
.LASF161:
	.string	"next_item"
.LASF108:
	.string	"FADVISE_SEQUENTIAL"
.LASF99:
	.string	"locale_quoting_style"
.LASF27:
	.string	"_chain"
.LASF158:
	.string	"cut_file"
.LASF153:
	.string	"n_bytes"
.LASF33:
	.string	"_shortbuf"
.LASF88:
	.string	"GETOPT_VERSION_CHAR"
.LASF138:
	.string	"longopts"
.LASF123:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF110:
	.string	"FADVISE_DONTNEED"
.LASF47:
	.string	"ssize_t"
.LASF92:
	.string	"shell_quoting_style"
.LASF87:
	.string	"GETOPT_HELP_CHAR"
.LASF21:
	.string	"_IO_buf_base"
.LASF59:
	.string	"long long unsigned int"
.LASF24:
	.string	"_IO_backup_base"
.LASF129:
	.string	"complement"
.LASF36:
	.string	"_codecvt"
.LASF71:
	.string	"__timezone"
.LASF55:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF143:
	.string	"spec_list_string"
.LASF179:
	.string	"__PRETTY_FUNCTION__"
.LASF167:
	.string	"program"
.LASF98:
	.string	"escape_quoting_style"
.LASF91:
	.string	"literal_quoting_style"
.LASF28:
	.string	"_fileno"
.LASF90:
	.string	"program_name"
.LASF130:
	.string	"delim"
.LASF77:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF58:
	.string	"_gl_cxxalias_dummy"
.LASF162:
	.string	"item_idx"
.LASF14:
	.string	"_flags"
.LASF136:
	.string	"OUTPUT_DELIMITER_OPTION"
.LASF12:
	.string	"__ssize_t"
.LASF121:
	.string	"field_1_buffer"
.LASF31:
	.string	"_cur_column"
.LASF81:
	.string	"program_invocation_short_name"
.LASF96:
	.string	"c_quoting_style"
.LASF152:
	.string	"prev_c"
.LASF45:
	.string	"_IO_codecvt"
.LASF54:
	.string	"_sys_errlist"
.LASF80:
	.string	"program_invocation_name"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF126:
	.string	"byte_mode"
.LASF159:
	.string	"is_range_start_index"
.LASF85:
	.string	"TIMESPEC_HZ"
.LASF95:
	.string	"shell_escape_always_quoting_style"
.LASF74:
	.string	"timezone"
.LASF144:
	.string	"dummy"
.LASF148:
	.string	"cut_fields"
.LASF44:
	.string	"_IO_marker"
.LASF48:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF115:
	.string	"field_range_pair"
.LASF149:
	.string	"field_idx"
.LASF0:
	.string	"long unsigned int"
.LASF93:
	.string	"shell_always_quoting_style"
.LASF65:
	.string	"option"
.LASF19:
	.string	"_IO_write_ptr"
.LASF66:
	.string	"name"
.LASF142:
	.string	"delim_specified"
.LASF51:
	.string	"sys_nerr"
.LASF133:
	.string	"output_delimiter_length"
.LASF151:
	.string	"buffer_first_field"
.LASF175:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF101:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF106:
	.string	"error_one_per_line"
.LASF82:
	.string	"Version"
.LASF23:
	.string	"_IO_save_base"
.LASF174:
	.string	"to_uchar"
.LASF157:
	.string	"print_delimiter"
.LASF79:
	.string	"environ"
.LASF84:
	.string	"uintmax_t"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF49:
	.string	"stdout"
.LASF131:
	.string	"line_delim"
.LASF176:
	.string	"src/cut.c"
.LASF141:
	.string	"optc"
.LASF89:
	.string	"version_etc_copyright"
.LASF127:
	.string	"field_mode"
.LASF132:
	.string	"output_delimiter_specified"
.LASF164:
	.string	"usage"
.LASF118:
	.string	"SETFLD_COMPLEMENT"
.LASF16:
	.string	"_IO_read_end"
.LASF60:
	.string	"optarg"
.LASF170:
	.string	"map_prog"
.LASF75:
	.string	"getdate_err"
.LASF61:
	.string	"optind"
.LASF37:
	.string	"_wide_data"
.LASF15:
	.string	"_IO_read_ptr"
.LASF10:
	.string	"__off64_t"
.LASF120:
	.string	"current_rp"
.LASF178:
	.string	"_IO_lock_t"
.LASF64:
	.string	"_IO_FILE"
.LASF104:
	.string	"error_print_progname"
.LASF154:
	.string	"last_c"
.LASF9:
	.string	"__off_t"
.LASF78:
	.string	"__environ"
.LASF57:
	.string	"time_t"
.LASF113:
	.string	"float"
.LASF52:
	.string	"sys_errlist"
.LASF26:
	.string	"_markers"
.LASF124:
	.string	"operating_mode"
.LASF146:
	.string	"stream"
.LASF128:
	.string	"suppress_non_delimited"
.LASF86:
	.string	"LOG10_TIMESPEC_HZ"
.LASF114:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF169:
	.string	"node"
.LASF22:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF145:
	.string	"file"
.LASF134:
	.string	"output_delimiter_string"
.LASF53:
	.string	"_sys_nerr"
.LASF32:
	.string	"_vtable_offset"
.LASF72:
	.string	"tzname"
.LASF43:
	.string	"FILE"
.LASF112:
	.string	"FADVISE_RANDOM"
.LASF94:
	.string	"shell_escape_quoting_style"
.LASF109:
	.string	"FADVISE_NOREUSE"
.LASF102:
	.string	"quoting_style_args"
.LASF63:
	.string	"optopt"
.LASF73:
	.string	"daylight"
.LASF97:
	.string	"c_maybe_quoting_style"
.LASF119:
	.string	"SETFLD_ERRMSG_USE_POS"
.LASF68:
	.string	"flag"
.LASF147:
	.string	"cut_stream"
.LASF56:
	.string	"long double"
.LASF117:
	.string	"SETFLD_ALLOW_DASH"
.LASF125:
	.string	"undefined_mode"
.LASF13:
	.string	"char"
.LASF140:
	.string	"argv"
.LASF103:
	.string	"quoting_style_vals"
.LASF11:
	.string	"__time_t"
.LASF173:
	.string	"emit_stdin_note"
.LASF100:
	.string	"clocale_quoting_style"
.LASF160:
	.string	"print_kth"
.LASF62:
	.string	"opterr"
.LASF155:
	.string	"cut_bytes"
.LASF8:
	.string	"__uintmax_t"
.LASF107:
	.string	"FADVISE_NORMAL"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF76:
	.string	"_sys_siglist"
.LASF135:
	.string	"have_read_stdin"
.LASF168:
	.string	"infomap"
.LASF67:
	.string	"has_arg"
.LASF150:
	.string	"found_any_selected_field"
.LASF40:
	.string	"__pad5"
.LASF20:
	.string	"_IO_write_end"
.LASF42:
	.string	"_unused2"
.LASF50:
	.string	"stderr"
.LASF122:
	.string	"field_1_bufsize"
.LASF70:
	.string	"__daylight"
.LASF165:
	.string	"status"
.LASF177:
	.string	"/root/coreutils"
.LASF39:
	.string	"_freeres_buf"
.LASF156:
	.string	"byte_idx"
.LASF116:
	.string	"n_frp"
.LASF105:
	.string	"error_message_count"
.LASF171:
	.string	"lc_messages"
.LASF139:
	.string	"argc"
.LASF137:
	.string	"COMPLEMENT_OPTION"
.LASF38:
	.string	"_freeres_list"
.LASF46:
	.string	"_IO_wide_data"
.LASF111:
	.string	"FADVISE_WILLNEED"
.LASF172:
	.string	"emit_mandatory_arg_note"
.LASF69:
	.string	"__tzname"
.LASF163:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
.LASF166:
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
