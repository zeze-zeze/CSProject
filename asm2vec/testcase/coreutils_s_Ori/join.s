	.file	"join.c"
	.text
.Ltext0:
	.type	field_sep, @function
field_sep:
.LFB12:
	.file 1 "src/system.h"
	.loc 1 161 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 162 10
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-4(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	.loc 1 162 23
	testl	%eax, %eax
	jne	.L2
	.loc 1 162 23 is_stmt 0 discriminator 2
	cmpb	$10, -4(%rbp)
	jne	.L3
.L2:
	.loc 1 162 23 discriminator 3
	movl	$1, %eax
	jmp	.L4
.L3:
	.loc 1 162 23 discriminator 4
	movl	$0, %eax
.L4:
	.loc 1 162 23 discriminator 6
	andl	$1, %eax
	.loc 1 163 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	field_sep, .-field_sep
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
	jmp	.L7
.L9:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L7:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L8
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L9
.L8:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L10
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L10:
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
	je	.L11
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L11
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L11:
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
	jne	.L12
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L13
.L12:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L13:
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
	je	.L14
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L14:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	prevline
	.comm	prevline,16,16
	.local	line_no
	.comm	line_no,16,16
	.local	g_names
	.comm	g_names,16,16
	.local	spareline
	.comm	spareline,16,16
	.local	hard_LC_COLLATE
	.comm	hard_LC_COLLATE,1,1
	.local	print_unpairables_1
	.comm	print_unpairables_1,1,1
	.local	print_unpairables_2
	.comm	print_unpairables_2,1,1
	.local	print_pairables
	.comm	print_pairables,1,1
	.local	seen_unpairable
	.comm	seen_unpairable,1,1
	.local	issued_disorder_warning
	.comm	issued_disorder_warning,2,1
	.local	empty_filler
	.comm	empty_filler,8,8
	.local	autoformat
	.comm	autoformat,1,1
	.local	autocount_1
	.comm	autocount_1,8,8
	.local	autocount_2
	.comm	autocount_2,8,8
	.data
	.align 8
	.type	join_field_1, @object
	.size	join_field_1, 8
join_field_1:
	.quad	-1
	.align 8
	.type	join_field_2, @object
	.size	join_field_2, 8
join_field_2:
	.quad	-1
	.local	outlist_head
	.comm	outlist_head,24,16
	.section	.data.rel.local,"aw"
	.align 8
	.type	outlist_end, @object
	.size	outlist_end, 8
outlist_end:
	.quad	outlist_head
	.data
	.align 4
	.type	tab, @object
	.size	tab, 4
tab:
	.long	-1
	.local	check_input_order
	.comm	check_input_order,4,4
	.section	.rodata
.LC18:
	.string	"ignore-case"
.LC19:
	.string	"check-order"
.LC20:
	.string	"nocheck-order"
.LC21:
	.string	"zero-terminated"
.LC22:
	.string	"header"
.LC23:
	.string	"help"
.LC24:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 256
longopts:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	129
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
	.long	130
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
	.local	uni_blank
	.comm	uni_blank,48,32
	.local	ignore_case
	.comm	ignore_case,1,1
	.local	join_header_lines
	.comm	join_header_lines,1,1
	.data
	.type	eolchar, @object
	.size	eolchar, 1
eolchar:
	.byte	10
	.section	.rodata
	.align 8
.LC25:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC26:
	.string	"Usage: %s [OPTION]... FILE1 FILE2\n"
	.align 8
.LC27:
	.string	"For each pair of input lines with identical join fields, write a line to\nstandard output.  The default join field is the first, delimited by blanks.\n"
	.align 8
.LC28:
	.string	"\nWhen FILE1 or FILE2 (not both) is -, read standard input.\n"
	.align 8
.LC29:
	.string	"\n  -a FILENUM        also print unpairable lines from file FILENUM, where\n                      FILENUM is 1 or 2, corresponding to FILE1 or FILE2\n  -e EMPTY          replace missing input fields with EMPTY\n"
	.align 8
.LC30:
	.string	"  -i, --ignore-case  ignore differences in case when comparing fields\n  -j FIELD          equivalent to '-1 FIELD -2 FIELD'\n  -o FORMAT         obey FORMAT while constructing output line\n  -t CHAR           use CHAR as input and output field separator\n"
	.align 8
.LC31:
	.ascii	"  -v FILENUM        like -a FILENUM, but suppress joined out"
	.ascii	"put lines\n  -1 FIELD          join on this FIELD of file 1\n"
	.ascii	"  -2 FIELD          join on this FIELD of file 2\n  --check-"
	.ascii	"order     check that the input is correctly sorted, even"
	.string	"\n                      if all input lines are pairable\n  --nocheck-order   do not check that the input is correctly sorted\n  --header          treat the first line in each file as field headers,\n                      print them without trying to pair them\n"
	.align 8
.LC32:
	.string	"  -z, --zero-terminated     line delimiter is NUL, not newline\n"
	.align 8
.LC33:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC34:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC35:
	.ascii	"\nUnless -t CHAR is given, leading blanks separate fields an"
	.ascii	"d are ignored,\nelse fields are separated by CHAR.  Any FIEL"
	.ascii	"D is a field number counted\nfrom 1.  FORMAT is one or more "
	.ascii	"comma or blank separated specifications,\neach being 'FILENU"
	.ascii	"M.FIELD' or '0'.  Default FORMAT outputs the join field,\nth"
	.ascii	"e remaining fields from FILE1, the remaining fields from FIL"
	.ascii	"E2, all\nseparated by CHAR.  If FORMAT is the keyword 'auto'"
	.ascii	", then the first\nline of each file determines the number of"
	.ascii	" fields output for each line.\n\nImportant: FILE1 and FILE2 "
	.ascii	"must be sorted on the join fie"
	.string	"lds.\nE.g., use \"sort -k 1b,1\" if 'join' has no options,\nor use \"join -t ''\" if 'sort' has no options.\nNote, comparisons honor the rules specified by 'LC_COLLATE'.\nIf the input is not sorted and some lines cannot be joined, a\nwarning message will be given.\n"
.LC36:
	.string	"join"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/join.c"
	.loc 2 187 1 is_stmt 1
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
	.loc 2 188 6
	cmpl	$0, -20(%rbp)
	je	.L16
	.loc 2 189 5
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
	jmp	.L17
.L16:
	.loc 2 192 7
	movq	program_name(%rip), %rbx
	.loc 2 192 15
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	.loc 2 192 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 196 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 201 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 205 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 211 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 217 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 227 7
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 230 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 231 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 232 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 249 7
	leaq	.LC36(%rip), %rdi
	call	emit_ancillary_info
.L17:
	.loc 2 251 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	extract_field, @function
extract_field:
.LFB47:
	.loc 2 258 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 259 11
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 259 28
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 259 6
	cmpq	%rax, %rdx
	jb	.L19
.LBB2:
	.loc 2 261 22
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 261 20
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
.L19:
.LBE2:
	.loc 2 263 7
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 263 20
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 263 15
	salq	$4, %rax
	addq	%rax, %rdx
	.loc 2 263 35
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 264 7
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 264 20
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 264 15
	salq	$4, %rax
	addq	%rax, %rdx
	.loc 2 264 35
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	.loc 2 265 10
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 265 3
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 266 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	extract_field, .-extract_field
	.type	xfields, @function
xfields:
.LFB48:
	.loc 2 272 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 273 9
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 274 36
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 274 44
	leaq	-1(%rax), %rdx
	.loc 2 274 15
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 276 6
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L37
	.loc 2 279 9
	movl	tab(%rip), %eax
	.loc 2 279 6
	testl	%eax, %eax
	js	.L23
	.loc 2 279 23 discriminator 1
	movl	tab(%rip), %eax
	.loc 2 279 16 discriminator 1
	cmpl	$10, %eax
	je	.L23
.LBB3:
	.loc 2 282 7
	jmp	.L24
.L25:
	.loc 2 283 39 discriminator 2
	movq	-8(%rbp), %rax
	subq	-32(%rbp), %rax
	.loc 2 283 9 discriminator 2
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	extract_field
	.loc 2 282 64 discriminator 2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.L24:
	.loc 2 282 43 discriminator 1
	movq	-16(%rbp), %rax
	subq	-32(%rbp), %rax
	.loc 2 282 21 discriminator 1
	movq	%rax, %rdx
	movl	tab(%rip), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -8(%rbp)
	.loc 2 282 7 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L25
.LBE3:
	.loc 2 280 5
	jmp	.L26
.L23:
	.loc 2 285 16
	movl	tab(%rip), %eax
	.loc 2 285 11
	testl	%eax, %eax
	jns	.L26
	.loc 2 288 13
	jmp	.L27
.L28:
	.loc 2 289 12
	addq	$1, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L38
.L27:
	.loc 2 288 25
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 288 14
	movzbl	%al, %eax
	movl	%eax, %edi
	call	field_sep
	.loc 2 288 13
	testb	%al, %al
	jne	.L28
.L36:
.LBB4:
	.loc 2 295 20
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	.loc 2 295 11
	jmp	.L29
.L31:
	.loc 2 295 68
	addq	$1, -24(%rbp)
.L29:
	.loc 2 295 11 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L30
	.loc 2 295 58 discriminator 3
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 295 47 discriminator 3
	movzbl	%al, %eax
	movl	%eax, %edi
	call	field_sep
	.loc 2 295 45 discriminator 3
	xorl	$1, %eax
	.loc 2 295 42 discriminator 3
	testb	%al, %al
	jne	.L31
.L30:
	.loc 2 297 41
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	.loc 2 297 11
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	extract_field
	.loc 2 298 14
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L39
	.loc 2 300 20
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	.loc 2 300 11
	jmp	.L33
.L35:
	.loc 2 300 66
	addq	$1, -32(%rbp)
.L33:
	.loc 2 300 11 discriminator 1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L34
	.loc 2 300 56 discriminator 3
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 300 45 discriminator 3
	movzbl	%al, %eax
	movl	%eax, %edi
	call	field_sep
	.loc 2 300 42 discriminator 3
	testb	%al, %al
	jne	.L35
.L34:
.LBE4:
	.loc 2 303 7
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L36
.L26:
	.loc 2 306 33
	movq	-16(%rbp), %rax
	subq	-32(%rbp), %rax
	.loc 2 306 3
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	extract_field
	jmp	.L20
.L37:
	.loc 2 277 5
	nop
	jmp	.L20
.L38:
	.loc 2 290 11
	nop
	jmp	.L20
.L39:
.LBB5:
	.loc 2 299 13
	nop
.L20:
.LBE5:
	.loc 2 307 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	xfields, .-xfields
	.type	freeline, @function
freeline:
.LFB49:
	.loc 2 311 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 312 6
	cmpq	$0, -8(%rbp)
	je	.L43
	.loc 2 314 13
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 314 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 315 16
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 2 316 18
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 316 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 317 20
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L40
.L43:
	.loc 2 313 5
	nop
.L40:
	.loc 2 318 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	freeline, .-freeline
	.type	keycmp, @function
keycmp:
.LFB50:
	.loc 2 328 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 2 337 19
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 337 6
	cmpq	%rax, -72(%rbp)
	jnb	.L45
	.loc 2 339 19
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 339 27
	movq	-72(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 2 339 12
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 340 19
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 340 27
	movq	-72(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 2 340 12
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L46
.L45:
	.loc 2 344 12
	movq	$0, -32(%rbp)
	.loc 2 345 12
	movq	$0, -16(%rbp)
.L46:
	.loc 2 348 19
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 348 6
	cmpq	%rax, -80(%rbp)
	jnb	.L47
	.loc 2 350 19
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 350 27
	movq	-80(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 2 350 12
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 351 19
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 351 27
	movq	-80(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 2 351 12
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L48
.L47:
	.loc 2 355 12
	movq	$0, -24(%rbp)
	.loc 2 356 12
	movq	$0, -8(%rbp)
.L48:
	.loc 2 359 6
	cmpq	$0, -16(%rbp)
	jne	.L49
	.loc 2 360 26
	cmpq	$0, -8(%rbp)
	jne	.L50
	.loc 2 360 26 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L52
.L50:
	.loc 2 360 26 discriminator 2
	movl	$-1, %eax
	jmp	.L52
.L49:
	.loc 2 361 6 is_stmt 1
	cmpq	$0, -8(%rbp)
	jne	.L53
	.loc 2 362 12
	movl	$1, %eax
	jmp	.L52
.L53:
	.loc 2 364 7
	movzbl	ignore_case(%rip), %eax
	.loc 2 364 6
	testb	%al, %al
	je	.L54
	.loc 2 368 14
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	cmovbe	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcasecmp@PLT
	movl	%eax, -36(%rbp)
	jmp	.L55
.L54:
	.loc 2 372 11
	movzbl	hard_LC_COLLATE(%rip), %eax
	.loc 2 372 10
	testb	%al, %al
	je	.L56
	.loc 2 373 16
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	xmemcoll@PLT
	jmp	.L52
.L56:
	.loc 2 374 14
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	cmovbe	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -36(%rbp)
.L55:
	.loc 2 377 6
	cmpl	$0, -36(%rbp)
	je	.L57
	.loc 2 378 12
	movl	-36(%rbp), %eax
	jmp	.L52
.L57:
	.loc 2 379 27
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L58
	.loc 2 379 34 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setne	%al
	.loc 2 379 27 discriminator 1
	movzbl	%al, %eax
	jmp	.L52
.L58:
	.loc 2 379 27 is_stmt 0 discriminator 2
	movl	$-1, %eax
.L52:
	.loc 2 380 1 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	keycmp, .-keycmp
	.section	.rodata
.LC37:
	.string	"%s:%lu: is not sorted: %.*s"
	.text
	.type	check_order, @function
check_order:
.LFB51:
	.loc 2 397 1
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
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	.loc 2 398 25
	movl	check_input_order(%rip), %eax
	.loc 2 398 6
	cmpl	$2, %eax
	je	.L66
	.loc 2 399 30
	movl	check_input_order(%rip), %eax
	.loc 2 399 7
	cmpl	$1, %eax
	je	.L62
	.loc 2 399 54 discriminator 1
	movzbl	seen_unpairable(%rip), %eax
	testb	%al, %al
	je	.L66
.L62:
	.loc 2 401 44
	movl	-68(%rbp), %eax
	subl	$1, %eax
	.loc 2 401 35
	cltq
	leaq	issued_disorder_warning(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 401 11
	xorl	$1, %eax
	.loc 2 401 10
	testb	%al, %al
	je	.L66
.LBB6:
	.loc 2 403 60
	cmpl	$1, -68(%rbp)
	jne	.L63
	.loc 2 403 60 is_stmt 0 discriminator 1
	movq	join_field_1(%rip), %rax
	jmp	.L64
.L63:
	.loc 2 403 60 discriminator 2
	movq	join_field_2(%rip), %rax
.L64:
	.loc 2 403 18 is_stmt 1 discriminator 4
	movq	%rax, -40(%rbp)
	.loc 2 404 15 discriminator 4
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	keycmp
	.loc 2 404 14 discriminator 4
	testl	%eax, %eax
	jle	.L66
.LBB7:
	.loc 2 407 22
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 2 408 18
	cmpq	$0, -48(%rbp)
	je	.L65
	.loc 2 408 42 discriminator 1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 408 49 discriminator 1
	movq	-48(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 408 27 discriminator 1
	cmpb	$10, %al
	jne	.L65
	.loc 2 409 17
	subq	$1, -48(%rbp)
.L65:
	.loc 2 413 19
	movl	$2147483648, %eax
	movl	$2147483647, %edx
	cmpq	%rax, -48(%rbp)
	movq	%rdx, %rax
	cmovb	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 415 15
	movq	-64(%rbp), %rax
	movq	16(%rax), %r12
	movq	-48(%rbp), %rax
	movl	%eax, %r14d
	.loc 2 418 62
	movl	-68(%rbp), %eax
	subl	$1, %eax
	.loc 2 415 15
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	line_no(%rip), %rax
	movq	(%rdx,%rax), %r13
	.loc 2 418 39
	movl	-68(%rbp), %eax
	subl	$1, %eax
	.loc 2 415 15
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	g_names(%rip), %rax
	movq	(%rdx,%rax), %rbx
	.loc 2 417 25
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 415 15
	movl	check_input_order(%rip), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	subq	$8, %rsp
	pushq	%r12
	movl	%r14d, %r9d
	movq	%r13, %r8
	movq	%rbx, %rcx
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$16, %rsp
	.loc 2 423 47
	movl	-68(%rbp), %eax
	subl	$1, %eax
	.loc 2 423 51
	cltq
	leaq	issued_disorder_warning(%rip), %rdx
	movb	$1, (%rax,%rdx)
.L66:
.LBE7:
.LBE6:
	.loc 2 427 1
	nop
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	check_order, .-check_order
	.type	reset_line, @function
reset_line:
.LFB52:
	.loc 2 431 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 432 17
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	.loc 2 433 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	reset_line, .-reset_line
	.type	init_linep, @function
init_linep:
.LFB53:
	.loc 2 437 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 438 23
	movl	$48, %esi
	movl	$1, %edi
	call	xcalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 439 10
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 440 10
	movq	-8(%rbp), %rax
	.loc 2 441 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	init_linep, .-init_linep
	.section	.rodata
.LC38:
	.string	"read error"
	.text
	.type	get_line, @function
get_line:
.LFB54:
	.loc 2 448 1
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
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 2 449 16
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 451 30
	movl	-52(%rbp), %eax
	subl	$1, %eax
	.loc 2 451 23
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	prevline(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 451 6
	cmpq	%rax, -32(%rbp)
	jne	.L71
.LBB8:
	.loc 2 453 7
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	spareline(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	spareline(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
.LBE8:
	.loc 2 454 14
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L71:
	.loc 2 457 6
	cmpq	$0, -32(%rbp)
	je	.L72
	.loc 2 458 5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	reset_line
	jmp	.L73
.L72:
	.loc 2 460 12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	init_linep
	movq	%rax, -32(%rbp)
.L73:
	.loc 2 462 9
	movzbl	eolchar(%rip), %eax
	movsbl	%al, %edx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readlinebuffer_delim@PLT
	.loc 2 462 6
	testq	%rax, %rax
	jne	.L74
	.loc 2 464 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 464 10
	testl	%eax, %eax
	je	.L75
.LBB9:
	.loc 2 465 9
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
.L75:
.LBE9:
	.loc 2 466 7
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	freeline
	.loc 2 467 14
	movl	$0, %eax
	jmp	.L76
.L74:
	.loc 2 469 19
	movl	-52(%rbp), %eax
	subl	$1, %eax
	.loc 2 469 12
	movslq	%eax, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	line_no(%rip), %rdx
	movq	(%rcx,%rdx), %rdx
	.loc 2 469 3
	leaq	1(%rdx), %rcx
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	line_no(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	.loc 2 471 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	xfields
	.loc 2 473 22
	movl	-52(%rbp), %eax
	subl	$1, %eax
	.loc 2 473 15
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	prevline(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 473 6
	testq	%rax, %rax
	je	.L77
	.loc 2 474 33
	movl	-52(%rbp), %eax
	subl	$1, %eax
	.loc 2 474 26
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	prevline(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 474 5
	movl	-52(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_order
.L77:
	.loc 2 476 18
	movl	-52(%rbp), %eax
	subl	$1, %eax
	.loc 2 476 23
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	prevline(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	.loc 2 477 10
	movl	$1, %eax
.L76:
	.loc 2 478 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	get_line, .-get_line
	.type	free_spareline, @function
free_spareline:
.LFB55:
	.loc 2 482 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.LBB10:
	.loc 2 483 15
	movq	$0, -8(%rbp)
	.loc 2 483 3
	jmp	.L79
.L81:
	.loc 2 485 20
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	spareline(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 485 10
	testq	%rax, %rax
	je	.L80
	.loc 2 487 11
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	spareline(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	freeline
	.loc 2 488 26
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	spareline(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 488 11
	movq	%rax, %rdi
	call	free@PLT
.L80:
	.loc 2 483 58 discriminator 2
	addq	$1, -8(%rbp)
.L79:
	.loc 2 483 3 discriminator 1
	cmpq	$1, -8(%rbp)
	jbe	.L81
.LBE10:
	.loc 2 491 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	free_spareline, .-free_spareline
	.type	initseq, @function
initseq:
.LFB56:
	.loc 2 495 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 496 14
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 497 14
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 498 14
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 499 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	initseq, .-initseq
	.type	getseq, @function
getseq:
.LFB57:
	.loc 2 505 1
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
	movl	%edx, -36(%rbp)
	.loc 2 506 10
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 506 24
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 506 6
	cmpq	%rax, %rdx
	jne	.L84
.LBB11:
	.loc 2 508 20
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 508 18
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
.LBB12:
	.loc 2 509 19
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 509 7
	jmp	.L85
.L86:
	.loc 2 510 12 discriminator 3
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 510 19 discriminator 3
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 510 23 discriminator 3
	movq	$0, (%rax)
	.loc 2 509 52 discriminator 3
	addq	$1, -8(%rbp)
.L85:
	.loc 2 509 42 discriminator 1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 509 7 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L86
.L84:
.LBE12:
.LBE11:
	.loc 2 513 25
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 513 36
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 513 32
	salq	$3, %rax
	.loc 2 513 7
	leaq	(%rdx,%rax), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_line
	.loc 2 513 6
	testb	%al, %al
	je	.L87
	.loc 2 515 12
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 515 7
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 516 14
	movl	$1, %eax
	jmp	.L88
.L87:
	.loc 2 518 10
	movl	$0, %eax
.L88:
	.loc 2 519 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	getseq, .-getseq
	.type	advance_seq, @function
advance_seq:
.LFB58:
	.loc 2 525 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movl	%ecx, -24(%rbp)
	movb	%al, -20(%rbp)
	.loc 2 526 6
	cmpb	$0, -20(%rbp)
	je	.L90
	.loc 2 527 16
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.L90:
	.loc 2 529 10
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getseq
	.loc 2 530 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	advance_seq, .-advance_seq
	.type	delseq, @function
delseq:
.LFB59:
	.loc 2 534 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.LBB13:
	.loc 2 535 15
	movq	$0, -8(%rbp)
	.loc 2 535 3
	jmp	.L93
.L94:
	.loc 2 537 20 discriminator 3
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 537 27 discriminator 3
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 537 7 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	freeline
	.loc 2 538 16 discriminator 3
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 538 23 discriminator 3
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 538 7 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 535 39 discriminator 3
	addq	$1, -8(%rbp)
.L93:
	.loc 2 535 29 discriminator 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 535 3 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L94
.LBE13:
	.loc 2 540 12
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 540 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 541 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	delseq, .-delseq
	.type	prfield, @function
prfield:
.LFB60:
	.loc 2 549 1
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
	.loc 2 552 15
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 552 6
	cmpq	%rax, -24(%rbp)
	jnb	.L96
	.loc 2 554 17
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 554 25
	movq	-24(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 2 554 11
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 555 10
	cmpq	$0, -8(%rbp)
	je	.L97
	.loc 2 556 9
	movq	stdout(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 562 1
	jmp	.L99
.L97:
	.loc 2 557 16
	movq	empty_filler(%rip), %rax
	.loc 2 557 15
	testq	%rax, %rax
	je	.L99
	.loc 2 558 9
	movq	stdout(%rip), %rdx
	movq	empty_filler(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 562 1
	jmp	.L99
.L96:
	.loc 2 560 12
	movq	empty_filler(%rip), %rax
	.loc 2 560 11
	testq	%rax, %rax
	je	.L99
	.loc 2 561 5
	movq	stdout(%rip), %rdx
	movq	empty_filler(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L99:
	.loc 2 562 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	prfield, .-prfield
	.type	prfields, @function
prfields:
.LFB61:
	.loc 2 568 1
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
	.loc 2 570 43
	movzbl	autoformat(%rip), %eax
	testb	%al, %al
	je	.L101
	.loc 2 570 43 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	jmp	.L102
.L101:
	.loc 2 570 43 discriminator 2
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
.L102:
	.loc 2 570 10 is_stmt 1 discriminator 4
	movq	%rax, -8(%rbp)
	.loc 2 571 31 discriminator 4
	movl	tab(%rip), %eax
	.loc 2 571 8 discriminator 4
	testl	%eax, %eax
	js	.L103
	.loc 2 571 8 is_stmt 0 discriminator 1
	movl	tab(%rip), %eax
	jmp	.L104
.L103:
	.loc 2 571 8 discriminator 2
	movl	$32, %eax
.L104:
	.loc 2 571 8 discriminator 4
	movb	%al, -17(%rbp)
	.loc 2 573 10 is_stmt 1 discriminator 4
	movq	$0, -16(%rbp)
	.loc 2 573 3 discriminator 4
	jmp	.L105
.L107:
	.loc 2 575 7 discriminator 4
	movsbl	-17(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 576 7 discriminator 4
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prfield
	.loc 2 573 46 discriminator 4
	addq	$1, -16(%rbp)
.L105:
	.loc 2 573 3 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L106
	.loc 2 573 30 discriminator 3
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L107
.L106:
	.loc 2 578 10
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	.loc 2 578 3
	jmp	.L108
.L109:
	.loc 2 580 7 discriminator 3
	movsbl	-17(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 581 7 discriminator 3
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prfield
	.loc 2 578 41 discriminator 3
	addq	$1, -16(%rbp)
.L108:
	.loc 2 578 3 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L109
	.loc 2 583 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	prfields, .-prfields
	.type	prjoin, @function
prjoin:
.LFB62:
	.loc 2 589 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 591 31
	movl	tab(%rip), %eax
	.loc 2 591 8
	testl	%eax, %eax
	js	.L111
	.loc 2 591 8 is_stmt 0 discriminator 1
	movl	tab(%rip), %eax
	jmp	.L112
.L111:
	.loc 2 591 8 discriminator 2
	movl	$32, %eax
.L112:
	.loc 2 591 8 discriminator 4
	movb	%al, -33(%rbp)
	.loc 2 595 11 is_stmt 1 discriminator 4
	movq	16+outlist_head(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 596 6 discriminator 4
	cmpq	$0, -8(%rbp)
	je	.L113
.LBB14:
	.loc 2 600 9
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L121:
	.loc 2 603 16
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 603 14
	testl	%eax, %eax
	jne	.L114
	.loc 2 605 18
	leaq	uni_blank(%rip), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L115
	.loc 2 607 24
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 608 25
	movq	join_field_2(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L116
.L115:
	.loc 2 612 24
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 613 25
	movq	join_field_1(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L116
.L114:
	.loc 2 618 24
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 618 44
	cmpl	$1, %eax
	jne	.L117
	.loc 2 618 44 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	jmp	.L118
.L117:
	.loc 2 618 44 discriminator 2
	movq	-64(%rbp), %rax
.L118:
	.loc 2 618 20 is_stmt 1 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 2 619 21 discriminator 4
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.L116:
	.loc 2 621 11
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prfield
	.loc 2 622 13
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 623 14
	cmpq	$0, -16(%rbp)
	je	.L126
	.loc 2 625 11
	movsbl	-33(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 603 14
	jmp	.L121
.L126:
	.loc 2 624 13
	nop
	.loc 2 627 7
	movzbl	eolchar(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.LBE14:
	.loc 2 651 1
	jmp	.L127
.L113:
	.loc 2 631 10
	leaq	uni_blank(%rip), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L123
	.loc 2 633 16
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 634 17
	movq	join_field_2(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L124
.L123:
	.loc 2 638 16
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 639 17
	movq	join_field_1(%rip), %rax
	movq	%rax, -32(%rbp)
.L124:
	.loc 2 643 7
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prfield
	.loc 2 646 7
	movq	autocount_1(%rip), %rdx
	movq	join_field_1(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	prfields
	.loc 2 647 7
	movq	autocount_2(%rip), %rdx
	movq	join_field_2(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	prfields
	.loc 2 649 7
	movzbl	eolchar(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L127:
	.loc 2 651 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	prjoin, .-prjoin
	.type	system_join, @function
system_join:
.LFB63:
	.loc 2 657 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	.loc 2 657 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 662 3
	movq	-136(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 663 3
	movq	-144(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 666 3
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	initseq
	.loc 2 667 3
	leaq	-64(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getseq
	.loc 2 668 3
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	initseq
	.loc 2 669 3
	leaq	-32(%rbp), %rcx
	movq	-144(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getseq
	.loc 2 671 7
	movzbl	autoformat(%rip), %eax
	.loc 2 671 6
	testb	%al, %al
	je	.L129
	.loc 2 673 25
	movq	-64(%rbp), %rax
	.loc 2 673 57
	testq	%rax, %rax
	je	.L130
	.loc 2 673 38 discriminator 1
	movq	-48(%rbp), %rax
	.loc 2 673 44 discriminator 1
	movq	(%rax), %rax
	.loc 2 673 57 discriminator 1
	movq	24(%rax), %rax
	jmp	.L131
.L130:
	.loc 2 673 57 is_stmt 0 discriminator 2
	movl	$0, %eax
.L131:
	.loc 2 673 19 is_stmt 1 discriminator 4
	movq	%rax, autocount_1(%rip)
	.loc 2 674 25 discriminator 4
	movq	-32(%rbp), %rax
	.loc 2 674 57 discriminator 4
	testq	%rax, %rax
	je	.L132
	.loc 2 674 38 discriminator 1
	movq	-16(%rbp), %rax
	.loc 2 674 44 discriminator 1
	movq	(%rax), %rax
	.loc 2 674 57 discriminator 1
	movq	24(%rax), %rax
	jmp	.L133
.L132:
	.loc 2 674 57 is_stmt 0 discriminator 2
	movl	$0, %eax
.L133:
	.loc 2 674 19 is_stmt 1 discriminator 4
	movq	%rax, autocount_2(%rip)
.L129:
	.loc 2 677 7
	movzbl	join_header_lines(%rip), %eax
	.loc 2 677 6
	testb	%al, %al
	je	.L141
	.loc 2 677 33 discriminator 1
	movq	-64(%rbp), %rax
	.loc 2 677 25 discriminator 1
	testq	%rax, %rax
	jne	.L135
	.loc 2 677 47 discriminator 2
	movq	-32(%rbp), %rax
	.loc 2 677 40 discriminator 2
	testq	%rax, %rax
	je	.L141
.L135:
.LBB15:
	.loc 2 679 39
	movq	-64(%rbp), %rax
	.loc 2 679 26
	testq	%rax, %rax
	je	.L136
	.loc 2 679 52 discriminator 1
	movq	-48(%rbp), %rax
	.loc 2 679 26 discriminator 1
	movq	(%rax), %rax
	jmp	.L137
.L136:
	.loc 2 679 26 is_stmt 0 discriminator 2
	leaq	uni_blank(%rip), %rax
.L137:
	.loc 2 679 26 discriminator 4
	movq	%rax, -96(%rbp)
	.loc 2 680 39 is_stmt 1 discriminator 4
	movq	-32(%rbp), %rax
	.loc 2 680 26 discriminator 4
	testq	%rax, %rax
	je	.L138
	.loc 2 680 52 discriminator 1
	movq	-16(%rbp), %rax
	.loc 2 680 26 discriminator 1
	movq	(%rax), %rax
	jmp	.L139
.L138:
	.loc 2 680 26 is_stmt 0 discriminator 2
	leaq	uni_blank(%rip), %rax
.L139:
	.loc 2 680 26 discriminator 4
	movq	%rax, -88(%rbp)
	.loc 2 681 7 is_stmt 1 discriminator 4
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prjoin
	.loc 2 682 19 discriminator 4
	movq	$0, prevline(%rip)
	.loc 2 683 19 discriminator 4
	movq	$0, 8+prevline(%rip)
	.loc 2 684 15 discriminator 4
	movq	-64(%rbp), %rax
	.loc 2 684 10 discriminator 4
	testq	%rax, %rax
	je	.L140
	.loc 2 685 9
	leaq	-64(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	advance_seq
.L140:
	.loc 2 686 15
	movq	-32(%rbp), %rax
	.loc 2 686 10
	testq	%rax, %rax
	je	.L141
	.loc 2 687 9
	leaq	-32(%rbp), %rsi
	movq	-144(%rbp), %rax
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	advance_seq
.LBE15:
	.loc 2 690 9
	jmp	.L141
.L161:
	.loc 2 692 14
	movq	join_field_2(%rip), %rcx
	movq	join_field_1(%rip), %rdx
	.loc 2 692 41
	movq	-16(%rbp), %rax
	.loc 2 692 14
	movq	(%rax), %rsi
	.loc 2 692 26
	movq	-48(%rbp), %rax
	.loc 2 692 14
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	keycmp
	movl	%eax, -124(%rbp)
	.loc 2 694 10
	cmpl	$0, -124(%rbp)
	jns	.L142
	.loc 2 696 15
	movzbl	print_unpairables_1(%rip), %eax
	.loc 2 696 14
	testb	%al, %al
	je	.L143
	.loc 2 697 25
	movq	-48(%rbp), %rax
	.loc 2 697 13
	movq	(%rax), %rax
	leaq	uni_blank(%rip), %rsi
	movq	%rax, %rdi
	call	prjoin
.L143:
	.loc 2 698 11
	leaq	-64(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	advance_seq
	.loc 2 699 27
	movb	$1, seen_unpairable(%rip)
	.loc 2 700 11
	jmp	.L141
.L142:
	.loc 2 702 10
	cmpl	$0, -124(%rbp)
	jle	.L144
	.loc 2 704 15
	movzbl	print_unpairables_2(%rip), %eax
	.loc 2 704 14
	testb	%al, %al
	je	.L145
	.loc 2 705 37
	movq	-16(%rbp), %rax
	.loc 2 705 13
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	uni_blank(%rip), %rdi
	call	prjoin
.L145:
	.loc 2 706 11
	leaq	-32(%rbp), %rsi
	movq	-144(%rbp), %rax
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	advance_seq
	.loc 2 707 27
	movb	$1, seen_unpairable(%rip)
	.loc 2 708 11
	jmp	.L141
.L144:
	.loc 2 713 12
	movb	$0, -127(%rbp)
.L148:
	.loc 2 715 14
	leaq	-64(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	advance_seq
	.loc 2 715 13
	xorl	$1, %eax
	.loc 2 715 12
	testb	%al, %al
	je	.L146
	.loc 2 717 18
	movb	$1, -127(%rbp)
	.loc 2 718 19
	movq	-64(%rbp), %rax
	.loc 2 718 13
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	.loc 2 719 13
	jmp	.L147
.L146:
	.loc 2 721 15
	movq	join_field_2(%rip), %rcx
	movq	join_field_1(%rip), %rdx
	.loc 2 721 55
	movq	-16(%rbp), %rax
	.loc 2 721 15
	movq	(%rax), %rsi
	.loc 2 721 27
	movq	-48(%rbp), %rax
	.loc 2 721 38
	movq	-64(%rbp), %rdi
	.loc 2 721 33
	salq	$3, %rdi
	subq	$8, %rdi
	addq	%rdi, %rax
	.loc 2 721 15
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	keycmp
	.loc 2 722 23
	testl	%eax, %eax
	je	.L148
.L147:
	.loc 2 726 12
	movb	$0, -126(%rbp)
.L151:
	.loc 2 728 14
	leaq	-32(%rbp), %rsi
	movq	-144(%rbp), %rax
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	advance_seq
	.loc 2 728 13
	xorl	$1, %eax
	.loc 2 728 12
	testb	%al, %al
	je	.L149
	.loc 2 730 18
	movb	$1, -126(%rbp)
	.loc 2 731 19
	movq	-32(%rbp), %rax
	.loc 2 731 13
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	.loc 2 732 13
	jmp	.L150
.L149:
	.loc 2 734 15
	movq	join_field_2(%rip), %rcx
	movq	join_field_1(%rip), %rdx
	.loc 2 734 42
	movq	-16(%rbp), %rax
	.loc 2 734 53
	movq	-32(%rbp), %rsi
	.loc 2 734 48
	salq	$3, %rsi
	subq	$8, %rsi
	addq	%rsi, %rax
	.loc 2 734 15
	movq	(%rax), %rsi
	.loc 2 734 27
	movq	-48(%rbp), %rax
	.loc 2 734 15
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	keycmp
	.loc 2 735 23
	testl	%eax, %eax
	je	.L151
.L150:
	.loc 2 737 11
	movzbl	print_pairables(%rip), %eax
	.loc 2 737 10
	testb	%al, %al
	je	.L152
.LBB16:
	.loc 2 739 23
	movq	$0, -112(%rbp)
	.loc 2 739 11
	jmp	.L153
.L156:
.LBB17:
	.loc 2 742 22
	movq	$0, -104(%rbp)
	.loc 2 742 15
	jmp	.L154
.L155:
	.loc 2 743 44 discriminator 3
	movq	-16(%rbp), %rax
	.loc 2 743 50 discriminator 3
	movq	-104(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 743 17 discriminator 3
	movq	(%rax), %rdx
	.loc 2 743 29 discriminator 3
	movq	-48(%rbp), %rax
	.loc 2 743 35 discriminator 3
	movq	-112(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	.loc 2 743 17 discriminator 3
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prjoin
	.loc 2 742 47 discriminator 3
	addq	$1, -104(%rbp)
.L154:
	.loc 2 742 35 discriminator 1
	movq	-32(%rbp), %rax
	.loc 2 742 42 discriminator 1
	subq	$1, %rax
	.loc 2 742 15 discriminator 1
	cmpq	%rax, -104(%rbp)
	jb	.L155
.LBE17:
	.loc 2 739 50 discriminator 2
	addq	$1, -112(%rbp)
.L153:
	.loc 2 739 38 discriminator 1
	movq	-64(%rbp), %rax
	.loc 2 739 45 discriminator 1
	subq	$1, %rax
	.loc 2 739 11 discriminator 1
	cmpq	%rax, -112(%rbp)
	jb	.L156
.L152:
.LBE16:
	.loc 2 747 11
	movzbl	-127(%rbp), %eax
	xorl	$1, %eax
	.loc 2 747 10
	testb	%al, %al
	je	.L157
.LBB18:
	.loc 2 749 11
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rdx)
.LBE18:
	.loc 2 750 22
	movq	$1, -64(%rbp)
	jmp	.L158
.L157:
	.loc 2 753 20
	movq	$0, -64(%rbp)
.L158:
	.loc 2 755 11
	movzbl	-126(%rbp), %eax
	xorl	$1, %eax
	.loc 2 755 10
	testb	%al, %al
	je	.L159
.LBB19:
	.loc 2 757 11
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, (%rdx)
.LBE19:
	.loc 2 758 22
	movq	$1, -32(%rbp)
	jmp	.L141
.L159:
	.loc 2 761 20
	movq	$0, -32(%rbp)
.L141:
	.loc 2 690 14
	movq	-64(%rbp), %rax
	.loc 2 690 9
	testq	%rax, %rax
	je	.L160
	.loc 2 690 28 discriminator 1
	movq	-32(%rbp), %rax
	.loc 2 690 21 discriminator 1
	testq	%rax, %rax
	jne	.L161
.L160:
	.loc 2 768 16
	movq	$0, -120(%rbp)
	.loc 2 769 8
	movb	$0, -125(%rbp)
	.loc 2 771 25
	movl	check_input_order(%rip), %eax
	.loc 2 771 6
	cmpl	$2, %eax
	je	.L162
	.loc 2 772 35
	movzbl	issued_disorder_warning(%rip), %eax
	.loc 2 772 12
	xorl	$1, %eax
	.loc 2 772 7
	testb	%al, %al
	jne	.L163
	.loc 2 772 65 discriminator 1
	movzbl	1+issued_disorder_warning(%rip), %eax
	.loc 2 772 39 discriminator 1
	xorl	$1, %eax
	.loc 2 772 10 discriminator 1
	testb	%al, %al
	je	.L162
.L163:
	.loc 2 773 15
	movb	$1, -125(%rbp)
.L162:
	.loc 2 775 8
	movzbl	print_unpairables_1(%rip), %eax
	.loc 2 775 6
	testb	%al, %al
	jne	.L164
	.loc 2 775 28 discriminator 2
	cmpb	$0, -125(%rbp)
	je	.L165
.L164:
	.loc 2 775 49 discriminator 3
	movq	-64(%rbp), %rax
	.loc 2 775 42 discriminator 3
	testq	%rax, %rax
	je	.L165
	.loc 2 777 11
	movzbl	print_unpairables_1(%rip), %eax
	.loc 2 777 10
	testb	%al, %al
	je	.L166
	.loc 2 778 21
	movq	-48(%rbp), %rax
	.loc 2 778 9
	movq	(%rax), %rax
	leaq	uni_blank(%rip), %rsi
	movq	%rax, %rdi
	call	prjoin
.L166:
	.loc 2 779 15
	movq	-32(%rbp), %rax
	.loc 2 779 10
	testq	%rax, %rax
	je	.L168
	.loc 2 780 25
	movb	$1, seen_unpairable(%rip)
	.loc 2 781 13
	jmp	.L168
.L170:
	.loc 2 783 15
	movzbl	print_unpairables_1(%rip), %eax
	.loc 2 783 14
	testb	%al, %al
	je	.L169
	.loc 2 784 13
	movq	-120(%rbp), %rax
	leaq	uni_blank(%rip), %rsi
	movq	%rax, %rdi
	call	prjoin
.L169:
	.loc 2 785 38
	movzbl	issued_disorder_warning(%rip), %eax
	.loc 2 785 14
	testb	%al, %al
	je	.L168
	.loc 2 785 45 discriminator 1
	movzbl	print_unpairables_1(%rip), %eax
	xorl	$1, %eax
	.loc 2 785 42 discriminator 1
	testb	%al, %al
	jne	.L179
.L168:
	.loc 2 781 14
	leaq	-120(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_line
	.loc 2 781 13
	testb	%al, %al
	jne	.L170
	jmp	.L165
.L179:
	.loc 2 786 13
	nop
.L165:
	.loc 2 790 8
	movzbl	print_unpairables_2(%rip), %eax
	.loc 2 790 6
	testb	%al, %al
	jne	.L171
	.loc 2 790 28 discriminator 2
	cmpb	$0, -125(%rbp)
	je	.L172
.L171:
	.loc 2 790 49 discriminator 3
	movq	-32(%rbp), %rax
	.loc 2 790 42 discriminator 3
	testq	%rax, %rax
	je	.L172
	.loc 2 792 11
	movzbl	print_unpairables_2(%rip), %eax
	.loc 2 792 10
	testb	%al, %al
	je	.L173
	.loc 2 793 33
	movq	-16(%rbp), %rax
	.loc 2 793 9
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	uni_blank(%rip), %rdi
	call	prjoin
.L173:
	.loc 2 794 15
	movq	-64(%rbp), %rax
	.loc 2 794 10
	testq	%rax, %rax
	je	.L175
	.loc 2 795 25
	movb	$1, seen_unpairable(%rip)
	.loc 2 796 13
	jmp	.L175
.L177:
	.loc 2 798 15
	movzbl	print_unpairables_2(%rip), %eax
	.loc 2 798 14
	testb	%al, %al
	je	.L176
	.loc 2 799 13
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	uni_blank(%rip), %rdi
	call	prjoin
.L176:
	.loc 2 800 38
	movzbl	1+issued_disorder_warning(%rip), %eax
	.loc 2 800 14
	testb	%al, %al
	je	.L175
	.loc 2 800 45 discriminator 1
	movzbl	print_unpairables_2(%rip), %eax
	xorl	$1, %eax
	.loc 2 800 42 discriminator 1
	testb	%al, %al
	jne	.L180
.L175:
	.loc 2 796 14
	leaq	-120(%rbp), %rcx
	movq	-144(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_line
	.loc 2 796 13
	testb	%al, %al
	jne	.L177
	jmp	.L172
.L180:
	.loc 2 801 13
	nop
.L172:
	.loc 2 805 3
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	freeline
	.loc 2 806 3
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 808 3
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	delseq
	.loc 2 809 3
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	delseq
	.loc 2 810 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L178
	call	__stack_chk_fail@PLT
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	system_join, .-system_join
	.section	.rodata
.LC39:
	.string	"src/join.c"
	.align 8
.LC40:
	.string	"file == 0 || file == 1 || file == 2"
.LC41:
	.string	"file != 0 || field == 0"
	.text
	.type	add_field, @function
add_field:
.LFB64:
	.loc 2 816 1
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
	.loc 2 819 3
	cmpl	$0, -20(%rbp)
	je	.L182
	.loc 2 819 3 is_stmt 0 discriminator 1
	cmpl	$1, -20(%rbp)
	je	.L182
	.loc 2 819 3 discriminator 2
	cmpl	$2, -20(%rbp)
	je	.L182
	.loc 2 819 3 discriminator 3
	leaq	__PRETTY_FUNCTION__.6584(%rip), %rcx
	movl	$819, %edx
	leaq	.LC39(%rip), %rsi
	leaq	.LC40(%rip), %rdi
	call	__assert_fail@PLT
.L182:
	.loc 2 820 3 is_stmt 1
	cmpl	$0, -20(%rbp)
	jne	.L183
	.loc 2 820 3 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)
	je	.L183
	.loc 2 820 3 discriminator 2
	leaq	__PRETTY_FUNCTION__.6584(%rip), %rcx
	movl	$820, %edx
	leaq	.LC39(%rip), %rsi
	leaq	.LC41(%rip), %rdi
	call	__assert_fail@PLT
.L183:
	.loc 2 822 7 is_stmt 1
	movl	$24, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 823 11
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 824 12
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 825 11
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 828 14
	movq	outlist_end(%rip), %rax
	.loc 2 828 21
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 829 15
	movq	-8(%rbp), %rax
	movq	%rax, outlist_end(%rip)
	.loc 2 830 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	add_field, .-add_field
	.section	.rodata
.LC42:
	.string	"invalid field number: %s"
	.text
	.type	string_to_join_field, @function
string_to_join_field:
.LFB65:
	.loc 2 840 1
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
	movq	%rdi, -56(%rbp)
	.loc 2 840 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 844 24
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC16(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -44(%rbp)
	.loc 2 845 6
	cmpl	$1, -44(%rbp)
	jne	.L185
	.loc 2 846 9
	movq	$-1, -40(%rbp)
	jmp	.L186
.L185:
	.loc 2 847 11
	cmpl	$0, -44(%rbp)
	jne	.L187
	.loc 2 847 39 discriminator 1
	movq	-40(%rbp), %rax
	.loc 2 847 32 discriminator 1
	testq	%rax, %rax
	jne	.L186
.L187:
.LBB20:
	.loc 2 848 5
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L186:
.LBE20:
	.loc 2 850 16
	movq	-40(%rbp), %rax
	.loc 2 850 10
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	.loc 2 852 10
	movq	-32(%rbp), %rax
	.loc 2 853 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L189
	call	__stack_chk_fail@PLT
.L189:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	string_to_join_field, .-string_to_join_field
	.section	.rodata
.LC43:
	.string	"invalid field specifier: %s"
	.align 8
.LC44:
	.string	"invalid file number in field spec: %s"
	.text
	.type	decode_field_spec, @function
decode_field_spec:
.LFB66:
	.loc 2 861 1
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 2 863 12
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 863 3
	cmpl	$48, %eax
	je	.L191
	cmpl	$48, %eax
	jl	.L192
	subl	$49, %eax
	cmpl	$1, %eax
	ja	.L192
	jmp	.L197
.L191:
.LBB21:
	.loc 2 866 12
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 866 10
	testb	%al, %al
	je	.L194
.LBB22:
	.loc 2 869 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L194:
.LBE22:
	.loc 2 871 19
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 872 20
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 873 7
	jmp	.L195
.L197:
	.loc 2 877 12
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 877 10
	cmpb	$46, %al
	je	.L196
.LBB23:
	.loc 2 878 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L196:
.LBE23:
	.loc 2 879 22
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 879 26
	leal	-48(%rax), %edx
	.loc 2 879 19
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 880 22
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	string_to_join_field
	.loc 2 880 20
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 2 881 7
	jmp	.L195
.L192:
	.loc 2 884 7
	movq	-24(%rbp), %rax
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
.L195:
.LBE21:
	.loc 2 894 1
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	decode_field_spec, .-decode_field_spec
	.section	.rodata
.LC45:
	.string	", \t"
	.text
	.type	add_field_list, @function
add_field_list:
.LFB67:
	.loc 2 900 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 2 900 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 901 9
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L200:
.LBB24:
	.loc 2 907 19
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 909 11
	movq	-24(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	strpbrk@PLT
	movq	%rax, -24(%rbp)
	.loc 2 910 10
	cmpq	$0, -24(%rbp)
	je	.L199
	.loc 2 911 11
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 911 14
	movb	$0, (%rax)
.L199:
	.loc 2 912 7
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	decode_field_spec
	.loc 2 913 7
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	add_field
.LBE24:
	.loc 2 915 3
	cmpq	$0, -24(%rbp)
	jne	.L200
	.loc 2 916 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L201
	call	__stack_chk_fail@PLT
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	add_field_list, .-add_field_list
	.section	.rodata
	.align 8
.LC46:
	.string	"incompatible join fields %lu, %lu"
	.text
	.type	set_join_field, @function
set_join_field:
.LFB68:
	.loc 2 923 1
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
	.loc 2 924 7
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 924 6
	cmpq	$-1, %rax
	je	.L203
	.loc 2 924 27 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 924 24 discriminator 1
	cmpq	%rax, -32(%rbp)
	je	.L203
.LBB25:
	.loc 2 926 32
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 926 25
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	.loc 2 927 25
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc 2 928 7
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L203:
.LBE25:
	.loc 2 931 8
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 932 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	set_join_field, .-set_join_field
	.section	.rodata
.LC47:
	.string	"extra operand %s"
	.text
	.type	add_file_name, @function
add_file_name:
.LFB69:
	.loc 2 959 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	.loc 2 960 7
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 962 6
	cmpl	$2, -28(%rbp)
	jne	.L205
.LBB26:
	.loc 2 964 33
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 964 12
	testl	%eax, %eax
	sete	%al
	movb	%al, -29(%rbp)
	.loc 2 965 24
	movzbl	-29(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 965 13
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 966 29
	movzbl	-29(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 2 966 7
	cmpl	$3, %eax
	je	.L206
	cmpl	$3, %eax
	jg	.L207
	cmpl	$2, %eax
	je	.L208
	cmpl	$2, %eax
	jg	.L207
	testl	%eax, %eax
	je	.L209
	cmpl	$1, %eax
	je	.L210
	jmp	.L207
.L209:
	.loc 2 969 11
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 969 24
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	.loc 2 969 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 970 11
	movl	$1, %edi
	call	usage
.L210:
	.loc 2 973 24
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 973 27
	leal	-1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 974 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	string_to_join_field
	movq	%rax, %rsi
	leaq	join_field_1(%rip), %rdi
	call	set_join_field
	.loc 2 975 11
	jmp	.L207
.L208:
	.loc 2 978 24
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	.loc 2 978 27
	subl	$1, %edx
	movl	%edx, (%rax)
	.loc 2 979 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	string_to_join_field
	movq	%rax, %rsi
	leaq	join_field_2(%rip), %rdi
	call	set_join_field
	.loc 2 980 11
	jmp	.L207
.L206:
	.loc 2 983 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	add_field_list
	.loc 2 984 11
	nop
.L207:
	.loc 2 986 11
	movzbl	-29(%rbp), %eax
	xorl	$1, %eax
	.loc 2 986 10
	testb	%al, %al
	je	.L211
	.loc 2 988 29
	movq	-56(%rbp), %rax
	movl	4(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 989 20
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L211:
	.loc 2 991 9
	movl	$1, -28(%rbp)
.L205:
.LBE26:
	.loc 2 994 17
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 994 23
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 994 21
	movl	%eax, (%rdx)
	.loc 2 995 8
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 995 12
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 996 15
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	.loc 2 996 11
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 997 7
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 997 6
	cmpl	$3, %eax
	jne	.L213
	.loc 2 998 18
	movq	16(%rbp), %rax
	movl	$3, (%rax)
.L213:
	.loc 2 999 1
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	add_file_name, .-add_file_name
	.section	.rodata
.LC48:
	.string	"/usr/local/share/locale"
	.align 8
.LC49:
	.string	"conflicting empty-field replacement strings"
.LC50:
	.string	"auto"
.LC51:
	.string	"\\0"
.LC52:
	.string	"multi-character tab %s"
.LC53:
	.string	"incompatible tabs"
.LC54:
	.string	"Mike Haertel"
.LC55:
	.string	"-a:e:i1:2:j:o:t:v:z"
.LC56:
	.string	"missing operand"
.LC57:
	.string	"missing operand after %s"
.LC58:
	.string	"-"
.LC59:
	.string	"r"
.LC60:
	.string	"%s"
	.align 8
.LC61:
	.string	"both files cannot be standard input"
.LC62:
	.string	"input is not in sorted order"
	.text
	.globl	main
	.type	main, @function
main:
.LFB70:
	.loc 2 1003 1
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
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 2 1003 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1005 7
	movl	$0, -80(%rbp)
	.loc 2 1007 7
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	.loc 2 1010 7
	movl	$0, -76(%rbp)
	.loc 2 1014 3
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 1015 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 1016 3
	leaq	.LC48(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 1017 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 1018 21
	movl	$3, %edi
	call	hard_locale@PLT
	.loc 2 1018 19
	movb	%al, hard_LC_COLLATE(%rip)
	.loc 2 1020 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 1021 3
	leaq	free_spareline(%rip), %rdi
	call	atexit@PLT
	.loc 2 1023 19
	movb	$1, print_pairables(%rip)
	.loc 2 1024 19
	movb	$0, seen_unpairable(%rip)
	.loc 2 1025 59
	movb	$0, 1+issued_disorder_warning(%rip)
	.loc 2 1025 55
	movzbl	1+issued_disorder_warning(%rip), %eax
	.loc 2 1025 30
	movb	%al, issued_disorder_warning(%rip)
	.loc 2 1026 21
	movl	$0, check_input_order(%rip)
	.loc 2 1028 9
	jmp	.L215
.L250:
	.loc 2 1032 19
	movl	$0, -84(%rbp)
	.loc 2 1034 7
	cmpl	$130, -68(%rbp)
	jg	.L216
	cmpl	$49, -68(%rbp)
	jge	.L217
	cmpl	$1, -68(%rbp)
	je	.L218
	cmpl	$1, -68(%rbp)
	jg	.L216
	cmpl	$-131, -68(%rbp)
	je	.L219
	cmpl	$-130, -68(%rbp)
	je	.L220
	jmp	.L216
.L217:
	movl	-68(%rbp), %eax
	subl	$49, %eax
	cmpl	$81, %eax
	ja	.L216
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L222(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L222(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L222:
	.long	.L234-.L222
	.long	.L233-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L232-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L231-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L230-.L222
	.long	.L229-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L228-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L227-.L222
	.long	.L216-.L222
	.long	.L226-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L225-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L216-.L222
	.long	.L224-.L222
	.long	.L223-.L222
	.long	.L221-.L222
	.text
.L226:
	.loc 2 1037 29
	movb	$0, print_pairables(%rip)
.L232:
.LBB27:
	.loc 2 1043 17
	movq	optarg(%rip), %rax
	leaq	-64(%rbp), %rdx
	leaq	.LC16(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoul@PLT
	.loc 2 1043 16
	testl	%eax, %eax
	jne	.L235
	.loc 2 1044 25
	movq	-64(%rbp), %rax
	.loc 2 1044 17
	cmpq	$1, %rax
	je	.L236
	.loc 2 1044 37 discriminator 1
	movq	-64(%rbp), %rax
	.loc 2 1044 30 discriminator 1
	cmpq	$2, %rax
	je	.L236
.L235:
.LBB28:
	.loc 2 1045 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L236:
.LBE28:
	.loc 2 1047 21
	movq	-64(%rbp), %rax
	.loc 2 1047 16
	cmpq	$1, %rax
	jne	.L237
	.loc 2 1048 35
	movb	$1, print_unpairables_1(%rip)
.LBE27:
	.loc 2 1052 11
	jmp	.L239
.L237:
.LBB29:
	.loc 2 1050 35
	movb	$1, print_unpairables_2(%rip)
.LBE29:
	.loc 2 1052 11
	jmp	.L239
.L231:
	.loc 2 1055 15
	movq	empty_filler(%rip), %rax
	.loc 2 1055 14
	testq	%rax, %rax
	je	.L240
	.loc 2 1055 33 discriminator 1
	movq	optarg(%rip), %rdx
	movq	empty_filler(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1055 28 discriminator 1
	testl	%eax, %eax
	je	.L240
.LBB30:
	.loc 2 1056 13
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L240:
.LBE30:
	.loc 2 1058 24
	movq	optarg(%rip), %rax
	movq	%rax, empty_filler(%rip)
	.loc 2 1059 11
	jmp	.L239
.L230:
	.loc 2 1062 23
	movb	$1, ignore_case(%rip)
	.loc 2 1063 11
	jmp	.L239
.L234:
	.loc 2 1066 11
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	string_to_join_field
	movq	%rax, %rsi
	leaq	join_field_1(%rip), %rdi
	call	set_join_field
	.loc 2 1067 11
	jmp	.L239
.L233:
	.loc 2 1070 11
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	string_to_join_field
	movq	%rax, %rsi
	leaq	join_field_2(%rip), %rdi
	call	set_join_field
	.loc 2 1071 11
	jmp	.L239
.L229:
	.loc 2 1074 22
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 1074 14
	cmpb	$49, %al
	je	.L241
	.loc 2 1074 42 discriminator 2
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 1074 33 discriminator 2
	cmpb	$50, %al
	jne	.L242
.L241:
	.loc 2 1074 64 discriminator 3
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1074 54 discriminator 3
	testb	%al, %al
	jne	.L242
	.loc 2 1075 32
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1075 45
	leaq	2(%rax), %rdx
	.loc 2 1075 25
	movq	optarg(%rip), %rax
	.loc 2 1075 15
	cmpq	%rax, %rdx
	jne	.L242
.LBB31:
	.loc 2 1078 35
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 1078 20
	cmpb	$50, %al
	sete	%al
	movb	%al, -85(%rbp)
	.loc 2 1079 28
	movzbl	-85(%rbp), %eax
	movslq	%eax, %rdx
	movl	-32(%rbp,%rdx,4), %edx
	.loc 2 1079 35
	addl	$1, %edx
	cltq
	movl	%edx, -32(%rbp,%rax,4)
	.loc 2 1080 45
	movzbl	-85(%rbp), %eax
	addl	$1, %eax
	.loc 2 1080 27
	movl	%eax, -84(%rbp)
.LBE31:
	.loc 2 1076 13
	nop
	.loc 2 1087 11
	jmp	.L239
.L242:
	.loc 2 1084 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	string_to_join_field
	movq	%rax, %rsi
	leaq	join_field_1(%rip), %rdi
	call	set_join_field
	.loc 2 1085 15
	movq	join_field_1(%rip), %rax
	movq	%rax, %rsi
	leaq	join_field_2(%rip), %rdi
	call	set_join_field
	.loc 2 1087 11
	jmp	.L239
.L228:
	.loc 2 1090 15
	movq	optarg(%rip), %rax
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1090 14
	testl	%eax, %eax
	jne	.L244
	.loc 2 1091 24
	movb	$1, autoformat(%rip)
	.loc 2 1097 11
	jmp	.L239
.L244:
	.loc 2 1094 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	add_field_list
	.loc 2 1095 27
	movl	$3, -84(%rbp)
	.loc 2 1097 11
	jmp	.L239
.L227:
.LBB32:
	.loc 2 1101 42
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 1101 27
	movb	%al, -86(%rbp)
	.loc 2 1102 16
	cmpb	$0, -86(%rbp)
	jne	.L246
	.loc 2 1103 22
	movb	$10, -86(%rbp)
	jmp	.L247
.L246:
	.loc 2 1104 28
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1104 21
	testb	%al, %al
	je	.L247
	.loc 2 1106 21
	movq	optarg(%rip), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1106 20
	testl	%eax, %eax
	jne	.L248
	.loc 2 1107 26
	movb	$0, -86(%rbp)
	jmp	.L247
.L248:
.LBB33:
	.loc 2 1109 19
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L247:
.LBE33:
	.loc 2 1112 19
	movl	tab(%rip), %eax
	.loc 2 1112 16
	testl	%eax, %eax
	js	.L249
	.loc 2 1112 33 discriminator 1
	movzbl	-86(%rbp), %edx
	movl	tab(%rip), %eax
	.loc 2 1112 26 discriminator 1
	cmpl	%eax, %edx
	je	.L249
.LBB34:
	.loc 2 1113 15
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L249:
.LBE34:
	.loc 2 1114 17
	movzbl	-86(%rbp), %eax
	movl	%eax, tab(%rip)
.LBE32:
	.loc 2 1116 11
	jmp	.L239
.L225:
	.loc 2 1119 19
	movb	$0, eolchar(%rip)
	.loc 2 1120 11
	jmp	.L239
.L223:
	.loc 2 1123 29
	movl	$2, check_input_order(%rip)
	.loc 2 1124 11
	jmp	.L239
.L224:
	.loc 2 1127 29
	movl	$1, check_input_order(%rip)
	.loc 2 1128 11
	jmp	.L239
.L218:
	.loc 2 1131 11
	movq	optarg(%rip), %rax
	leaq	-80(%rbp), %r8
	leaq	-76(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	subq	$8, %rsp
	leaq	-84(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	leaq	g_names(%rip), %rsi
	movq	%rax, %rdi
	call	add_file_name
	addq	$16, %rsp
	.loc 2 1133 11
	jmp	.L239
.L221:
	.loc 2 1136 29
	movb	$1, join_header_lines(%rip)
	.loc 2 1137 11
	jmp	.L239
.L220:
	.loc 2 1139 9
	movl	$0, %edi
	call	usage
.L219:
	.loc 2 1141 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC54(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L216:
	.loc 2 1144 11
	movl	$1, %edi
	call	usage
.L239:
	.loc 2 1147 24
	movl	-84(%rbp), %eax
	movl	%eax, -80(%rbp)
.L215:
	.loc 2 1028 18
	movq	-112(%rbp), %rsi
	movl	-100(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -68(%rbp)
	.loc 2 1028 9
	cmpl	$-1, -68(%rbp)
	jne	.L250
	.loc 2 1151 20
	movl	$0, -80(%rbp)
	.loc 2 1152 9
	jmp	.L251
.L252:
	.loc 2 1153 31
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 1153 24
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1153 5
	movq	(%rax), %rax
	leaq	-80(%rbp), %r8
	leaq	-76(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	subq	$8, %rsp
	leaq	-84(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	leaq	g_names(%rip), %rsi
	movq	%rax, %rdi
	call	add_file_name
	addq	$16, %rsp
.L251:
	.loc 2 1152 17
	movl	optind(%rip), %eax
	.loc 2 1152 9
	cmpl	%eax, -100(%rbp)
	jg	.L252
	.loc 2 1156 14
	movl	-76(%rbp), %eax
	.loc 2 1156 6
	cmpl	$2, %eax
	je	.L253
	.loc 2 1158 18
	movl	-76(%rbp), %eax
	.loc 2 1158 10
	testl	%eax, %eax
	jne	.L254
	.loc 2 1159 22
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	.loc 2 1159 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L255
.L254:
	.loc 2 1161 64
	movl	-100(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1161 9
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1161 22
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	.loc 2 1161 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L255:
	.loc 2 1162 7
	movl	$1, %edi
	call	usage
.L253:
	.loc 2 1167 10
	movl	$0, -72(%rbp)
	.loc 2 1167 3
	jmp	.L256
.L258:
	.loc 2 1168 22
	movl	-72(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	.loc 2 1168 8
	testl	%eax, %eax
	je	.L257
	.loc 2 1170 9
	movl	-72(%rbp), %eax
	cltq
	movq	%rax, %rsi
	leaq	join_field_1(%rip), %rdi
	call	set_join_field
	.loc 2 1171 9
	movl	-72(%rbp), %eax
	cltq
	movq	%rax, %rsi
	leaq	join_field_2(%rip), %rdi
	call	set_join_field
.L257:
	.loc 2 1167 23 discriminator 2
	addl	$1, -72(%rbp)
.L256:
	.loc 2 1167 3 discriminator 1
	cmpl	$1, -72(%rbp)
	jle	.L258
	.loc 2 1174 20
	movq	join_field_1(%rip), %rax
	.loc 2 1174 6
	cmpq	$-1, %rax
	jne	.L259
	.loc 2 1175 18
	movq	$0, join_field_1(%rip)
.L259:
	.loc 2 1176 20
	movq	join_field_2(%rip), %rax
	.loc 2 1176 6
	cmpq	$-1, %rax
	jne	.L260
	.loc 2 1177 18
	movq	$0, join_field_2(%rip)
.L260:
	.loc 2 1179 9
	movq	g_names(%rip), %rax
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1179 41
	testl	%eax, %eax
	je	.L261
	.loc 2 1179 57 discriminator 1
	movq	g_names(%rip), %rax
	.loc 2 1179 43 discriminator 1
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	fopen_safer@PLT
	jmp	.L262
.L261:
	.loc 2 1179 41 discriminator 2
	movq	stdin(%rip), %rax
.L262:
	.loc 2 1179 7 discriminator 4
	movq	%rax, -56(%rbp)
	.loc 2 1180 6 discriminator 4
	cmpq	$0, -56(%rbp)
	jne	.L263
.LBB35:
	.loc 2 1181 5
	movq	g_names(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC60(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L263:
.LBE35:
	.loc 2 1182 9
	movq	8+g_names(%rip), %rax
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1182 41
	testl	%eax, %eax
	je	.L264
	.loc 2 1182 57 discriminator 1
	movq	8+g_names(%rip), %rax
	.loc 2 1182 43 discriminator 1
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	fopen_safer@PLT
	jmp	.L265
.L264:
	.loc 2 1182 41 discriminator 2
	movq	stdin(%rip), %rax
.L265:
	.loc 2 1182 7 discriminator 4
	movq	%rax, -48(%rbp)
	.loc 2 1183 6 discriminator 4
	cmpq	$0, -48(%rbp)
	jne	.L266
.LBB36:
	.loc 2 1184 5
	movq	8+g_names(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC60(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L266:
.LBE36:
	.loc 2 1185 6
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L267
.LBB37:
	.loc 2 1186 5
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L267:
.LBE37:
	.loc 2 1187 3
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	system_join
	.loc 2 1189 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1189 6
	testl	%eax, %eax
	je	.L268
.LBB38:
	.loc 2 1190 5
	movq	g_names(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC60(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L268:
.LBE38:
	.loc 2 1191 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1191 6
	testl	%eax, %eax
	je	.L269
.LBB39:
	.loc 2 1192 5
	movq	8+g_names(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC60(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L269:
.LBE39:
	.loc 2 1194 30
	movzbl	issued_disorder_warning(%rip), %eax
	.loc 2 1194 6
	testb	%al, %al
	jne	.L270
	.loc 2 1194 60 discriminator 1
	movzbl	1+issued_disorder_warning(%rip), %eax
	.loc 2 1194 34 discriminator 1
	testb	%al, %al
	je	.L271
.L270:
.LBB40:
	.loc 2 1195 5
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L271:
.LBE40:
	.loc 2 1197 12
	movl	$0, %eax
	.loc 2 1198 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L273
	call	__stack_chk_fail@PLT
.L273:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6584, @object
	.size	__PRETTY_FUNCTION__.6584, 10
__PRETTY_FUNCTION__.6584:
	.string	"add_field"
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "./lib/sys/select.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/signal.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/errno.h"
	.file 13 "src/version.h"
	.file 14 "./lib/exitfail.h"
	.file 15 "/usr/include/stdint.h"
	.file 16 "./lib/timespec.h"
	.file 17 "/usr/include/ctype.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 20 "/usr/include/stdio.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/error.h"
	.file 26 "./lib/fadvise.h"
	.file 27 "./lib/linebuffer.h"
	.file 28 "./lib/quote.h"
	.file 29 "./lib/xstrtol.h"
	.file 30 "./lib/argmatch.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x194b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF261
	.byte	0xc
	.long	.LASF262
	.long	.LASF263
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
	.byte	0x3
	.byte	0x49
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x6
	.long	0x57
	.long	0x9e
	.uleb128 0x7
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x8
	.byte	0x8
	.uleb128 0x9
	.byte	0x8
	.long	0xb2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0xa
	.long	0xb2
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0x7
	.byte	0x12
	.long	0x9e
	.uleb128 0x5
	.long	.LASF13
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0xb
	.long	.LASF16
	.byte	0x6
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0xc
	.long	.LASF17
	.byte	0x7
	.byte	0x24
	.byte	0xe
	.long	0xac
	.uleb128 0xc
	.long	.LASF18
	.byte	0x7
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF19
	.byte	0x7
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF20
	.byte	0x7
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	.LASF55
	.byte	0x20
	.byte	0x8
	.byte	0x32
	.byte	0x8
	.long	0x163
	.uleb128 0xe
	.long	.LASF21
	.byte	0x8
	.byte	0x34
	.byte	0xf
	.long	0x168
	.byte	0
	.uleb128 0xe
	.long	.LASF22
	.byte	0x8
	.byte	0x37
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0xe
	.long	.LASF23
	.byte	0x8
	.byte	0x38
	.byte	0x8
	.long	0x173
	.byte	0x10
	.uleb128 0xf
	.string	"val"
	.byte	0x8
	.byte	0x39
	.byte	0x7
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.long	0x121
	.uleb128 0x9
	.byte	0x8
	.long	0xb9
	.uleb128 0xa
	.long	0x168
	.uleb128 0x9
	.byte	0x8
	.long	0x57
	.uleb128 0x6
	.long	0xac
	.long	0x189
	.uleb128 0x7
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF24
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x179
	.uleb128 0xc
	.long	.LASF25
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF26
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xc
	.long	.LASF27
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x179
	.uleb128 0xc
	.long	.LASF28
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF29
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0xb
	.long	.LASF30
	.byte	0x9
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF31
	.uleb128 0x10
	.uleb128 0x9
	.byte	0x8
	.long	0x1e5
	.uleb128 0x6
	.long	0x16e
	.long	0x1fc
	.uleb128 0x7
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0xa
	.long	0x1ec
	.uleb128 0xb
	.long	.LASF32
	.byte	0xa
	.value	0x11e
	.byte	0x1a
	.long	0x1fc
	.uleb128 0xb
	.long	.LASF33
	.byte	0xa
	.value	0x11f
	.byte	0x1a
	.long	0x1fc
	.uleb128 0xb
	.long	.LASF34
	.byte	0xb
	.value	0x21f
	.byte	0xf
	.long	0x228
	.uleb128 0x9
	.byte	0x8
	.long	0xac
	.uleb128 0xb
	.long	.LASF35
	.byte	0xb
	.value	0x221
	.byte	0xf
	.long	0x228
	.uleb128 0xc
	.long	.LASF36
	.byte	0xc
	.byte	0x2d
	.byte	0xe
	.long	0xac
	.uleb128 0xc
	.long	.LASF37
	.byte	0xc
	.byte	0x2e
	.byte	0xe
	.long	0xac
	.uleb128 0xc
	.long	.LASF38
	.byte	0xd
	.byte	0x1
	.byte	0x14
	.long	0x168
	.uleb128 0xc
	.long	.LASF39
	.byte	0xe
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x5
	.long	.LASF40
	.byte	0xf
	.byte	0x66
	.byte	0x16
	.long	0x6a
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x10
	.byte	0x29
	.byte	0x6
	.long	0x28f
	.uleb128 0x12
	.long	.LASF41
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x10
	.byte	0x2a
	.byte	0x6
	.long	0x2a4
	.uleb128 0x13
	.long	.LASF42
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x11
	.byte	0x2f
	.byte	0x1
	.long	0x303
	.uleb128 0x14
	.long	.LASF43
	.value	0x100
	.uleb128 0x14
	.long	.LASF44
	.value	0x200
	.uleb128 0x14
	.long	.LASF45
	.value	0x400
	.uleb128 0x14
	.long	.LASF46
	.value	0x800
	.uleb128 0x14
	.long	.LASF47
	.value	0x1000
	.uleb128 0x14
	.long	.LASF48
	.value	0x2000
	.uleb128 0x14
	.long	.LASF49
	.value	0x4000
	.uleb128 0x14
	.long	.LASF50
	.value	0x8000
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.uleb128 0x13
	.long	.LASF52
	.byte	0x2
	.uleb128 0x13
	.long	.LASF53
	.byte	0x4
	.uleb128 0x13
	.long	.LASF54
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF56
	.byte	0xd8
	.byte	0x12
	.byte	0x31
	.byte	0x8
	.long	0x48a
	.uleb128 0xe
	.long	.LASF57
	.byte	0x12
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF58
	.byte	0x12
	.byte	0x36
	.byte	0x9
	.long	0xac
	.byte	0x8
	.uleb128 0xe
	.long	.LASF59
	.byte	0x12
	.byte	0x37
	.byte	0x9
	.long	0xac
	.byte	0x10
	.uleb128 0xe
	.long	.LASF60
	.byte	0x12
	.byte	0x38
	.byte	0x9
	.long	0xac
	.byte	0x18
	.uleb128 0xe
	.long	.LASF61
	.byte	0x12
	.byte	0x39
	.byte	0x9
	.long	0xac
	.byte	0x20
	.uleb128 0xe
	.long	.LASF62
	.byte	0x12
	.byte	0x3a
	.byte	0x9
	.long	0xac
	.byte	0x28
	.uleb128 0xe
	.long	.LASF63
	.byte	0x12
	.byte	0x3b
	.byte	0x9
	.long	0xac
	.byte	0x30
	.uleb128 0xe
	.long	.LASF64
	.byte	0x12
	.byte	0x3c
	.byte	0x9
	.long	0xac
	.byte	0x38
	.uleb128 0xe
	.long	.LASF65
	.byte	0x12
	.byte	0x3d
	.byte	0x9
	.long	0xac
	.byte	0x40
	.uleb128 0xe
	.long	.LASF66
	.byte	0x12
	.byte	0x40
	.byte	0x9
	.long	0xac
	.byte	0x48
	.uleb128 0xe
	.long	.LASF67
	.byte	0x12
	.byte	0x41
	.byte	0x9
	.long	0xac
	.byte	0x50
	.uleb128 0xe
	.long	.LASF68
	.byte	0x12
	.byte	0x42
	.byte	0x9
	.long	0xac
	.byte	0x58
	.uleb128 0xe
	.long	.LASF69
	.byte	0x12
	.byte	0x44
	.byte	0x16
	.long	0x4a3
	.byte	0x60
	.uleb128 0xe
	.long	.LASF70
	.byte	0x12
	.byte	0x46
	.byte	0x14
	.long	0x4a9
	.byte	0x68
	.uleb128 0xe
	.long	.LASF71
	.byte	0x12
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xe
	.long	.LASF72
	.byte	0x12
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xe
	.long	.LASF73
	.byte	0x12
	.byte	0x4a
	.byte	0xb
	.long	0x76
	.byte	0x78
	.uleb128 0xe
	.long	.LASF74
	.byte	0x12
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xe
	.long	.LASF75
	.byte	0x12
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xe
	.long	.LASF76
	.byte	0x12
	.byte	0x4f
	.byte	0x8
	.long	0x4af
	.byte	0x83
	.uleb128 0xe
	.long	.LASF77
	.byte	0x12
	.byte	0x51
	.byte	0xf
	.long	0x4bf
	.byte	0x88
	.uleb128 0xe
	.long	.LASF78
	.byte	0x12
	.byte	0x59
	.byte	0xd
	.long	0x82
	.byte	0x90
	.uleb128 0xe
	.long	.LASF79
	.byte	0x12
	.byte	0x5b
	.byte	0x17
	.long	0x4ca
	.byte	0x98
	.uleb128 0xe
	.long	.LASF80
	.byte	0x12
	.byte	0x5c
	.byte	0x19
	.long	0x4d5
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF81
	.byte	0x12
	.byte	0x5d
	.byte	0x14
	.long	0x4a9
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF82
	.byte	0x12
	.byte	0x5e
	.byte	0x9
	.long	0xaa
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF83
	.byte	0x12
	.byte	0x5f
	.byte	0xa
	.long	0xca
	.byte	0xb8
	.uleb128 0xe
	.long	.LASF84
	.byte	0x12
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF85
	.byte	0x12
	.byte	0x62
	.byte	0x8
	.long	0x4db
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF86
	.byte	0x13
	.byte	0x7
	.byte	0x19
	.long	0x303
	.uleb128 0x15
	.long	.LASF264
	.byte	0x12
	.byte	0x2b
	.byte	0xe
	.uleb128 0x16
	.long	.LASF87
	.uleb128 0x9
	.byte	0x8
	.long	0x49e
	.uleb128 0x9
	.byte	0x8
	.long	0x303
	.uleb128 0x6
	.long	0xb2
	.long	0x4bf
	.uleb128 0x7
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x496
	.uleb128 0x16
	.long	.LASF88
	.uleb128 0x9
	.byte	0x8
	.long	0x4c5
	.uleb128 0x16
	.long	.LASF89
	.uleb128 0x9
	.byte	0x8
	.long	0x4d0
	.uleb128 0x6
	.long	0xb2
	.long	0x4eb
	.uleb128 0x7
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.long	.LASF90
	.byte	0x14
	.byte	0x89
	.byte	0xe
	.long	0x4f7
	.uleb128 0x9
	.byte	0x8
	.long	0x48a
	.uleb128 0xc
	.long	.LASF91
	.byte	0x14
	.byte	0x8a
	.byte	0xe
	.long	0x4f7
	.uleb128 0xc
	.long	.LASF92
	.byte	0x14
	.byte	0x8b
	.byte	0xe
	.long	0x4f7
	.uleb128 0xc
	.long	.LASF93
	.byte	0x15
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0x6
	.long	0x16e
	.long	0x52c
	.uleb128 0x17
	.byte	0
	.uleb128 0xa
	.long	0x521
	.uleb128 0xc
	.long	.LASF94
	.byte	0x15
	.byte	0x1b
	.byte	0x1a
	.long	0x52c
	.uleb128 0xc
	.long	.LASF95
	.byte	0x15
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF96
	.byte	0x15
	.byte	0x1f
	.byte	0x1a
	.long	0x52c
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x573
	.uleb128 0x19
	.long	.LASF97
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF98
	.sleb128 -131
	.byte	0
	.uleb128 0x6
	.long	0xb9
	.long	0x57e
	.uleb128 0x17
	.byte	0
	.uleb128 0xa
	.long	0x573
	.uleb128 0xc
	.long	.LASF99
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x57e
	.uleb128 0xc
	.long	.LASF100
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x168
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x5f0
	.uleb128 0x13
	.long	.LASF101
	.byte	0
	.uleb128 0x13
	.long	.LASF102
	.byte	0x1
	.uleb128 0x13
	.long	.LASF103
	.byte	0x2
	.uleb128 0x13
	.long	.LASF104
	.byte	0x3
	.uleb128 0x13
	.long	.LASF105
	.byte	0x4
	.uleb128 0x13
	.long	.LASF106
	.byte	0x5
	.uleb128 0x13
	.long	.LASF107
	.byte	0x6
	.uleb128 0x13
	.long	.LASF108
	.byte	0x7
	.uleb128 0x13
	.long	.LASF109
	.byte	0x8
	.uleb128 0x13
	.long	.LASF110
	.byte	0x9
	.uleb128 0x13
	.long	.LASF111
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.long	0x59b
	.uleb128 0xb
	.long	.LASF112
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x52c
	.uleb128 0x6
	.long	0x5f0
	.long	0x60d
	.uleb128 0x17
	.byte	0
	.uleb128 0xa
	.long	0x602
	.uleb128 0xb
	.long	.LASF113
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x60d
	.uleb128 0xc
	.long	.LASF114
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x1e6
	.uleb128 0xc
	.long	.LASF115
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0xc
	.long	.LASF116
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1a
	.byte	0x2d
	.byte	0xe
	.long	0x676
	.uleb128 0x13
	.long	.LASF117
	.byte	0
	.uleb128 0x13
	.long	.LASF118
	.byte	0x2
	.uleb128 0x13
	.long	.LASF119
	.byte	0x5
	.uleb128 0x13
	.long	.LASF120
	.byte	0x4
	.uleb128 0x13
	.long	.LASF121
	.byte	0x3
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.long	.LASF123
	.byte	0x18
	.byte	0x1b
	.byte	0x1a
	.byte	0x8
	.long	0x6ab
	.uleb128 0xe
	.long	.LASF124
	.byte	0x1b
	.byte	0x1c
	.byte	0xa
	.long	0xca
	.byte	0
	.uleb128 0xe
	.long	.LASF125
	.byte	0x1b
	.byte	0x1d
	.byte	0xa
	.long	0xca
	.byte	0x8
	.uleb128 0xe
	.long	.LASF126
	.byte	0x1b
	.byte	0x1e
	.byte	0x9
	.long	0xac
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.long	.LASF127
	.uleb128 0xc
	.long	.LASF128
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x6ab
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1d
	.byte	0x19
	.byte	0x6
	.long	0x6ed
	.uleb128 0x13
	.long	.LASF131
	.byte	0
	.uleb128 0x13
	.long	.LASF132
	.byte	0x1
	.uleb128 0x13
	.long	.LASF133
	.byte	0x2
	.uleb128 0x13
	.long	.LASF134
	.byte	0x3
	.uleb128 0x13
	.long	.LASF135
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF130
	.byte	0x1d
	.byte	0x26
	.byte	0x1b
	.long	0x6bc
	.uleb128 0x5
	.long	.LASF136
	.byte	0x1e
	.byte	0x3d
	.byte	0x10
	.long	0x1e6
	.uleb128 0xc
	.long	.LASF137
	.byte	0x1e
	.byte	0x3e
	.byte	0x19
	.long	0x6f9
	.uleb128 0xd
	.long	.LASF138
	.byte	0x18
	.byte	0x2
	.byte	0x35
	.byte	0x8
	.long	0x746
	.uleb128 0xe
	.long	.LASF139
	.byte	0x2
	.byte	0x39
	.byte	0x9
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF140
	.byte	0x2
	.byte	0x3c
	.byte	0xc
	.long	0xca
	.byte	0x8
	.uleb128 0xe
	.long	.LASF141
	.byte	0x2
	.byte	0x3e
	.byte	0x15
	.long	0x74b
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0x711
	.uleb128 0x9
	.byte	0x8
	.long	0x711
	.uleb128 0xd
	.long	.LASF140
	.byte	0x10
	.byte	0x2
	.byte	0x42
	.byte	0x8
	.long	0x779
	.uleb128 0xf
	.string	"beg"
	.byte	0x2
	.byte	0x44
	.byte	0xb
	.long	0xac
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0x2
	.byte	0x45
	.byte	0xc
	.long	0xca
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x30
	.byte	0x2
	.byte	0x49
	.byte	0x8
	.long	0x7bb
	.uleb128 0xf
	.string	"buf"
	.byte	0x2
	.byte	0x4b
	.byte	0x17
	.long	0x676
	.byte	0
	.uleb128 0xe
	.long	.LASF143
	.byte	0x2
	.byte	0x4c
	.byte	0xc
	.long	0xca
	.byte	0x18
	.uleb128 0xe
	.long	.LASF144
	.byte	0x2
	.byte	0x4d
	.byte	0xc
	.long	0xca
	.byte	0x20
	.uleb128 0xe
	.long	.LASF145
	.byte	0x2
	.byte	0x4e
	.byte	0x13
	.long	0x7c0
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.long	0x779
	.uleb128 0x9
	.byte	0x8
	.long	0x751
	.uleb128 0x1b
	.string	"seq"
	.byte	0x18
	.byte	0x2
	.byte	0x53
	.byte	0x8
	.long	0x7fb
	.uleb128 0xe
	.long	.LASF146
	.byte	0x2
	.byte	0x55
	.byte	0xc
	.long	0xca
	.byte	0
	.uleb128 0xe
	.long	.LASF147
	.byte	0x2
	.byte	0x56
	.byte	0xc
	.long	0xca
	.byte	0x8
	.uleb128 0xe
	.long	.LASF148
	.byte	0x2
	.byte	0x57
	.byte	0x13
	.long	0x7fb
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x801
	.uleb128 0x9
	.byte	0x8
	.long	0x779
	.uleb128 0x6
	.long	0x801
	.long	0x817
	.uleb128 0x7
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.long	.LASF149
	.byte	0x2
	.byte	0x5b
	.byte	0x15
	.long	0x807
	.uleb128 0x9
	.byte	0x3
	.quad	prevline
	.uleb128 0x6
	.long	0x26b
	.long	0x83d
	.uleb128 0x7
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.long	.LASF150
	.byte	0x2
	.byte	0x5e
	.byte	0x12
	.long	0x82d
	.uleb128 0x9
	.byte	0x3
	.quad	line_no
	.uleb128 0x1c
	.long	.LASF151
	.byte	0x2
	.byte	0x61
	.byte	0xe
	.long	0x179
	.uleb128 0x9
	.byte	0x3
	.quad	g_names
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x2
	.byte	0x66
	.byte	0x15
	.long	0x807
	.uleb128 0x9
	.byte	0x3
	.quad	spareline
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x2
	.byte	0x69
	.byte	0xd
	.long	0x895
	.uleb128 0x9
	.byte	0x3
	.quad	hard_LC_COLLATE
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF154
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x2
	.byte	0x6c
	.byte	0xd
	.long	0x895
	.uleb128 0x9
	.byte	0x3
	.quad	print_unpairables_1
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0x6c
	.byte	0x22
	.long	0x895
	.uleb128 0x9
	.byte	0x3
	.quad	print_unpairables_2
	.uleb128 0x1c
	.long	.LASF157
	.byte	0x2
	.byte	0x6f
	.byte	0xd
	.long	0x895
	.uleb128 0x9
	.byte	0x3
	.quad	print_pairables
	.uleb128 0x1c
	.long	.LASF158
	.byte	0x2
	.byte	0x72
	.byte	0xd
	.long	0x895
	.uleb128 0x9
	.byte	0x3
	.quad	seen_unpairable
	.uleb128 0x6
	.long	0x895
	.long	0x904
	.uleb128 0x7
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x2
	.byte	0x75
	.byte	0xd
	.long	0x8f4
	.uleb128 0x9
	.byte	0x3
	.quad	issued_disorder_warning
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2
	.byte	0x78
	.byte	0x14
	.long	0x168
	.uleb128 0x9
	.byte	0x3
	.quad	empty_filler
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x2
	.byte	0x7b
	.byte	0xd
	.long	0x895
	.uleb128 0x9
	.byte	0x3
	.quad	autoformat
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x2
	.byte	0x7e
	.byte	0xf
	.long	0xca
	.uleb128 0x9
	.byte	0x3
	.quad	autocount_1
	.uleb128 0x1c
	.long	.LASF163
	.byte	0x2
	.byte	0x7f
	.byte	0xf
	.long	0xca
	.uleb128 0x9
	.byte	0x3
	.quad	autocount_2
	.uleb128 0x1c
	.long	.LASF164
	.byte	0x2
	.byte	0x82
	.byte	0xf
	.long	0xca
	.uleb128 0x9
	.byte	0x3
	.quad	join_field_1
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x2
	.byte	0x83
	.byte	0xf
	.long	0xca
	.uleb128 0x9
	.byte	0x3
	.quad	join_field_2
	.uleb128 0x1c
	.long	.LASF166
	.byte	0x2
	.byte	0x86
	.byte	0x17
	.long	0x711
	.uleb128 0x9
	.byte	0x3
	.quad	outlist_head
	.uleb128 0x1c
	.long	.LASF167
	.byte	0x2
	.byte	0x89
	.byte	0x18
	.long	0x74b
	.uleb128 0x9
	.byte	0x3
	.quad	outlist_end
	.uleb128 0x1d
	.string	"tab"
	.byte	0x2
	.byte	0x8e
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	tab
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2
	.byte	0x92
	.byte	0x3
	.long	0xa01
	.uleb128 0x13
	.long	.LASF168
	.byte	0
	.uleb128 0x13
	.long	.LASF169
	.byte	0x1
	.uleb128 0x13
	.long	.LASF170
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.long	.LASF171
	.byte	0x2
	.byte	0x96
	.byte	0x5
	.long	0x9e0
	.uleb128 0x9
	.byte	0x3
	.quad	check_input_order
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2
	.byte	0x99
	.byte	0x1
	.long	0xa38
	.uleb128 0x13
	.long	.LASF172
	.byte	0x80
	.uleb128 0x13
	.long	.LASF173
	.byte	0x81
	.uleb128 0x13
	.long	.LASF174
	.byte	0x82
	.byte	0
	.uleb128 0x6
	.long	0x163
	.long	0xa48
	.uleb128 0x7
	.long	0x42
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.long	0xa38
	.uleb128 0x1c
	.long	.LASF175
	.byte	0x2
	.byte	0xa0
	.byte	0x1c
	.long	0xa48
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF176
	.byte	0x2
	.byte	0xad
	.byte	0x14
	.long	0x779
	.uleb128 0x9
	.byte	0x3
	.quad	uni_blank
	.uleb128 0x1c
	.long	.LASF177
	.byte	0x2
	.byte	0xb0
	.byte	0xd
	.long	0x895
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_case
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x2
	.byte	0xb4
	.byte	0xd
	.long	0x895
	.uleb128 0x9
	.byte	0x3
	.quad	join_header_lines
	.uleb128 0x1c
	.long	.LASF179
	.byte	0x2
	.byte	0xb7
	.byte	0xd
	.long	0xb2
	.uleb128 0x9
	.byte	0x3
	.quad	eolchar
	.uleb128 0x1e
	.long	.LASF180
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2
	.value	0x3a8
	.byte	0x6
	.long	0xae7
	.uleb128 0x13
	.long	.LASF181
	.byte	0
	.uleb128 0x13
	.long	.LASF182
	.byte	0x1
	.uleb128 0x13
	.long	.LASF183
	.byte	0x2
	.uleb128 0x13
	.long	.LASF184
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.long	.LASF251
	.byte	0x2
	.value	0x3ea
	.byte	0x1
	.long	0x57
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd4
	.uleb128 0x20
	.long	.LASF185
	.byte	0x2
	.value	0x3ea
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x20
	.long	.LASF186
	.byte	0x2
	.value	0x3ea
	.byte	0x18
	.long	0x228
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF187
	.byte	0x2
	.value	0x3ec
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x21
	.long	.LASF188
	.byte	0x2
	.value	0x3ed
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF180
	.byte	0x2
	.value	0x3ee
	.byte	0x7
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF189
	.byte	0x2
	.value	0x3ef
	.byte	0x7
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"fp1"
	.byte	0x2
	.value	0x3f0
	.byte	0x9
	.long	0x4f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"fp2"
	.byte	0x2
	.value	0x3f0
	.byte	0xf
	.long	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF190
	.byte	0x2
	.value	0x3f1
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.long	.LASF191
	.byte	0x2
	.value	0x3f2
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x3f3
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x30
	.long	0xbec
	.uleb128 0x22
	.string	"val"
	.byte	0x2
	.value	0x412
	.byte	0x1f
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0
	.uleb128 0x24
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x25
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0xc24
	.uleb128 0x21
	.long	.LASF192
	.byte	0x2
	.value	0x436
	.byte	0x14
	.long	0x895
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.byte	0
	.uleb128 0x25
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0xc6d
	.uleb128 0x21
	.long	.LASF193
	.byte	0x2
	.value	0x44d
	.byte	0x1b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -102
	.uleb128 0x24
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x24
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.byte	0
	.uleb128 0x24
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x24
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x24
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x24
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x24
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x24
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0
	.uleb128 0x26
	.long	.LASF195
	.byte	0x2
	.value	0x3bc
	.byte	0x1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0xda8
	.uleb128 0x20
	.long	.LASF21
	.byte	0x2
	.value	0x3bc
	.byte	0x16
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF194
	.byte	0x2
	.value	0x3bc
	.byte	0x22
	.long	0x228
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF180
	.byte	0x2
	.value	0x3bd
	.byte	0x14
	.long	0x173
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF189
	.byte	0x2
	.value	0x3bd
	.byte	0x2b
	.long	0x173
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF191
	.byte	0x2
	.value	0x3bd
	.byte	0x42
	.long	0x173
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF188
	.byte	0x2
	.value	0x3be
	.byte	0x15
	.long	0x173
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF187
	.byte	0x2
	.value	0x3be
	.byte	0x2c
	.long	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"n"
	.byte	0x2
	.value	0x3c0
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x22
	.string	"op0"
	.byte	0x2
	.value	0x3c4
	.byte	0xc
	.long	0x895
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x22
	.string	"arg"
	.byte	0x2
	.value	0x3c5
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF196
	.byte	0x2
	.value	0x39a
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0xe1a
	.uleb128 0x28
	.string	"var"
	.byte	0x2
	.value	0x39a
	.byte	0x19
	.long	0xe1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"val"
	.byte	0x2
	.value	0x39a
	.byte	0x25
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x21
	.long	.LASF197
	.byte	0x2
	.value	0x39e
	.byte	0x19
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF198
	.byte	0x2
	.value	0x39f
	.byte	0x19
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xca
	.uleb128 0x26
	.long	.LASF199
	.byte	0x2
	.value	0x383
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0xea1
	.uleb128 0x28
	.string	"str"
	.byte	0x2
	.value	0x383
	.byte	0x17
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"p"
	.byte	0x2
	.value	0x385
	.byte	0x9
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x21
	.long	.LASF200
	.byte	0x2
	.value	0x389
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	.LASF201
	.byte	0x2
	.value	0x38a
	.byte	0xe
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF202
	.byte	0x2
	.value	0x38b
	.byte	0x13
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF203
	.byte	0x2
	.value	0x35c
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0xf23
	.uleb128 0x28
	.string	"s"
	.byte	0x2
	.value	0x35c
	.byte	0x20
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF200
	.byte	0x2
	.value	0x35c
	.byte	0x28
	.long	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF201
	.byte	0x2
	.value	0x35c
	.byte	0x3c
	.long	0xe1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x24
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x24
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF225
	.byte	0x2
	.value	0x347
	.byte	0x1
	.long	0xca
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0xf99
	.uleb128 0x28
	.string	"str"
	.byte	0x2
	.value	0x347
	.byte	0x23
	.long	0x168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF204
	.byte	0x2
	.value	0x349
	.byte	0xa
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"val"
	.byte	0x2
	.value	0x34a
	.byte	0xd
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF205
	.byte	0x2
	.value	0x34c
	.byte	0x10
	.long	0x6ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0
	.uleb128 0x26
	.long	.LASF206
	.byte	0x2
	.value	0x32f
	.byte	0x1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0xffa
	.uleb128 0x20
	.long	.LASF139
	.byte	0x2
	.value	0x32f
	.byte	0x10
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF140
	.byte	0x2
	.value	0x32f
	.byte	0x1d
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"o"
	.byte	0x2
	.value	0x331
	.byte	0x13
	.long	0x74b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF265
	.long	0x100a
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6584
	.byte	0
	.uleb128 0x6
	.long	0xb9
	.long	0x100a
	.uleb128 0x7
	.long	0x42
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.long	0xffa
	.uleb128 0x26
	.long	.LASF207
	.byte	0x2
	.value	0x290
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x118f
	.uleb128 0x28
	.string	"fp1"
	.byte	0x2
	.value	0x290
	.byte	0xd
	.long	0x4f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"fp2"
	.byte	0x2
	.value	0x290
	.byte	0x18
	.long	0x4f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF208
	.byte	0x2
	.value	0x292
	.byte	0xe
	.long	0x7c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF209
	.byte	0x2
	.value	0x292
	.byte	0x14
	.long	0x7c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF210
	.byte	0x2
	.value	0x293
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x21
	.long	.LASF211
	.byte	0x2
	.value	0x294
	.byte	0x8
	.long	0x895
	.uleb128 0x3
	.byte	0x91
	.sleb128 -143
	.uleb128 0x21
	.long	.LASF212
	.byte	0x2
	.value	0x294
	.byte	0xe
	.long	0x895
	.uleb128 0x3
	.byte	0x91
	.sleb128 -142
	.uleb128 0x21
	.long	.LASF142
	.byte	0x2
	.value	0x300
	.byte	0x10
	.long	0x801
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.long	.LASF213
	.byte	0x2
	.value	0x301
	.byte	0x8
	.long	0x895
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x10fe
	.uleb128 0x21
	.long	.LASF214
	.byte	0x2
	.value	0x2a7
	.byte	0x1a
	.long	0x118f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF215
	.byte	0x2
	.value	0x2a8
	.byte	0x1a
	.long	0x118f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x25
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1144
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x2e3
	.byte	0x17
	.long	0xca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x22
	.string	"j"
	.byte	0x2
	.value	0x2e5
	.byte	0x16
	.long	0xca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x116b
	.uleb128 0x22
	.string	"tmp"
	.byte	0x2
	.value	0x2ed
	.byte	0xb
	.long	0x801
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x27
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x22
	.string	"tmp"
	.byte	0x2
	.value	0x2f5
	.byte	0xb
	.long	0x801
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x7bb
	.uleb128 0x26
	.long	.LASF216
	.byte	0x2
	.value	0x24c
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1237
	.uleb128 0x20
	.long	.LASF217
	.byte	0x2
	.value	0x24c
	.byte	0x1c
	.long	0x118f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF218
	.byte	0x2
	.value	0x24c
	.byte	0x36
	.long	0x118f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF138
	.byte	0x2
	.value	0x24e
	.byte	0x19
	.long	0x1237
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF219
	.byte	0x2
	.value	0x24f
	.byte	0x8
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x21
	.long	.LASF140
	.byte	0x2
	.value	0x250
	.byte	0xa
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF142
	.byte	0x2
	.value	0x251
	.byte	0x16
	.long	0x118f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x22
	.string	"o"
	.byte	0x2
	.value	0x256
	.byte	0x1d
	.long	0x1237
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x746
	.uleb128 0x26
	.long	.LASF220
	.byte	0x2
	.value	0x237
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x12bc
	.uleb128 0x20
	.long	.LASF142
	.byte	0x2
	.value	0x237
	.byte	0x1e
	.long	0x118f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF221
	.byte	0x2
	.value	0x237
	.byte	0x2b
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF222
	.byte	0x2
	.value	0x237
	.byte	0x3e
	.long	0xca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x239
	.byte	0xa
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF143
	.byte	0x2
	.value	0x23a
	.byte	0xa
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF219
	.byte	0x2
	.value	0x23b
	.byte	0x8
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x26
	.long	.LASF223
	.byte	0x2
	.value	0x224
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x130a
	.uleb128 0x28
	.string	"n"
	.byte	0x2
	.value	0x224
	.byte	0x11
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF142
	.byte	0x2
	.value	0x224
	.byte	0x27
	.long	0x118f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"len"
	.byte	0x2
	.value	0x226
	.byte	0xa
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF224
	.byte	0x2
	.value	0x215
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x135a
	.uleb128 0x28
	.string	"seq"
	.byte	0x2
	.value	0x215
	.byte	0x15
	.long	0x135a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x217
	.byte	0xf
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x7c6
	.uleb128 0x29
	.long	.LASF226
	.byte	0x2
	.value	0x20c
	.byte	0x1
	.long	0x895
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x13c3
	.uleb128 0x28
	.string	"fp"
	.byte	0x2
	.value	0x20c
	.byte	0x14
	.long	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"seq"
	.byte	0x2
	.value	0x20c
	.byte	0x24
	.long	0x135a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF227
	.byte	0x2
	.value	0x20c
	.byte	0x2e
	.long	0x895
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF228
	.byte	0x2
	.value	0x20c
	.byte	0x39
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.long	.LASF229
	.byte	0x2
	.value	0x1f8
	.byte	0x1
	.long	0x895
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1448
	.uleb128 0x28
	.string	"fp"
	.byte	0x2
	.value	0x1f8
	.byte	0xf
	.long	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"seq"
	.byte	0x2
	.value	0x1f8
	.byte	0x1f
	.long	0x135a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF228
	.byte	0x2
	.value	0x1f8
	.byte	0x28
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x1fd
	.byte	0x13
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF230
	.byte	0x2
	.value	0x1ee
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x1478
	.uleb128 0x28
	.string	"seq"
	.byte	0x2
	.value	0x1ee
	.byte	0x16
	.long	0x135a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF231
	.byte	0x2
	.value	0x1e1
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b8
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x1e3
	.byte	0xf
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF232
	.byte	0x2
	.value	0x1bf
	.byte	0x1
	.long	0x895
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x1553
	.uleb128 0x28
	.string	"fp"
	.byte	0x2
	.value	0x1bf
	.byte	0x11
	.long	0x4f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF233
	.byte	0x2
	.value	0x1bf
	.byte	0x23
	.long	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF234
	.byte	0x2
	.value	0x1bf
	.byte	0x2e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.long	.LASF142
	.byte	0x2
	.value	0x1c1
	.byte	0x10
	.long	0x801
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1541
	.uleb128 0x22
	.string	"tmp"
	.byte	0x2
	.value	0x1c5
	.byte	0x7
	.long	0x801
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.byte	0
	.uleb128 0x29
	.long	.LASF235
	.byte	0x2
	.value	0x1b4
	.byte	0x1
	.long	0x801
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1597
	.uleb128 0x20
	.long	.LASF233
	.byte	0x2
	.value	0x1b4
	.byte	0x1b
	.long	0x7fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF142
	.byte	0x2
	.value	0x1b6
	.byte	0x10
	.long	0x801
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF236
	.byte	0x2
	.value	0x1ae
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x15c7
	.uleb128 0x20
	.long	.LASF142
	.byte	0x2
	.value	0x1ae
	.byte	0x1a
	.long	0x801
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF237
	.byte	0x2
	.value	0x18a
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x165e
	.uleb128 0x20
	.long	.LASF238
	.byte	0x2
	.value	0x18a
	.byte	0x21
	.long	0x118f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF239
	.byte	0x2
	.value	0x18b
	.byte	0x21
	.long	0x118f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF240
	.byte	0x2
	.value	0x18c
	.byte	0x12
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x21
	.long	.LASF221
	.byte	0x2
	.value	0x193
	.byte	0x12
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x22
	.string	"len"
	.byte	0x2
	.value	0x197
	.byte	0x16
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF241
	.byte	0x2
	.value	0x146
	.byte	0x1
	.long	0x57
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x1716
	.uleb128 0x20
	.long	.LASF217
	.byte	0x2
	.value	0x146
	.byte	0x1c
	.long	0x118f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF218
	.byte	0x2
	.value	0x146
	.byte	0x36
	.long	0x118f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF242
	.byte	0x2
	.value	0x147
	.byte	0x10
	.long	0xca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF243
	.byte	0x2
	.value	0x147
	.byte	0x1d
	.long	0xca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF244
	.byte	0x2
	.value	0x14a
	.byte	0x9
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF245
	.byte	0x2
	.value	0x14b
	.byte	0x9
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF246
	.byte	0x2
	.value	0x14d
	.byte	0xa
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF247
	.byte	0x2
	.value	0x14e
	.byte	0xa
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF210
	.byte	0x2
	.value	0x14f
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x26
	.long	.LASF248
	.byte	0x2
	.value	0x136
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x1746
	.uleb128 0x20
	.long	.LASF142
	.byte	0x2
	.value	0x136
	.byte	0x18
	.long	0x801
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF249
	.byte	0x2
	.value	0x10f
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x17d2
	.uleb128 0x20
	.long	.LASF142
	.byte	0x2
	.value	0x10f
	.byte	0x17
	.long	0x801
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"ptr"
	.byte	0x2
	.value	0x111
	.byte	0x9
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"lim"
	.byte	0x2
	.value	0x112
	.byte	0xf
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x17bb
	.uleb128 0x22
	.string	"sep"
	.byte	0x2
	.value	0x119
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0
	.uleb128 0x22
	.string	"sep"
	.byte	0x2
	.value	0x126
	.byte	0x11
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF250
	.byte	0x2
	.value	0x101
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x1833
	.uleb128 0x20
	.long	.LASF142
	.byte	0x2
	.value	0x101
	.byte	0x1d
	.long	0x801
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF140
	.byte	0x2
	.value	0x101
	.byte	0x29
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"len"
	.byte	0x2
	.value	0x101
	.byte	0x37
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.byte	0
	.uleb128 0x2d
	.long	.LASF252
	.byte	0x2
	.byte	0xba
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x1861
	.uleb128 0x2e
	.long	.LASF253
	.byte	0x2
	.byte	0xba
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.long	.LASF254
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1906
	.uleb128 0x20
	.long	.LASF255
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF256
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x18bc
	.uleb128 0x30
	.long	.LASF255
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x168
	.byte	0
	.uleb128 0x30
	.long	.LASF257
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x168
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x1891
	.uleb128 0x21
	.long	.LASF256
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x1916
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF257
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF258
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x191b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF259
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x6
	.long	0x18bc
	.long	0x1916
	.uleb128 0x7
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.long	0x1906
	.uleb128 0x9
	.byte	0x8
	.long	0x18bc
	.uleb128 0x31
	.long	.LASF260
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.long	0x895
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.string	"ch"
	.byte	0x1
	.byte	0xa0
	.byte	0x1a
	.long	0x2d
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"size_t"
.LASF226:
	.string	"advance_seq"
.LASF97:
	.string	"GETOPT_HELP_CHAR"
.LASF50:
	.string	"_ISgraph"
.LASF144:
	.string	"nfields_allocated"
.LASF249:
	.string	"xfields"
.LASF88:
	.string	"_IO_codecvt"
.LASF192:
	.string	"is_j2"
.LASF68:
	.string	"_IO_save_end"
.LASF261:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF32:
	.string	"_sys_siglist"
.LASF12:
	.string	"time_t"
.LASF61:
	.string	"_IO_write_base"
.LASF116:
	.string	"error_one_per_line"
.LASF77:
	.string	"_lock"
.LASF133:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF220:
	.string	"prfields"
.LASF191:
	.string	"nfiles"
.LASF66:
	.string	"_IO_save_base"
.LASF240:
	.string	"whatfile"
.LASF137:
	.string	"argmatch_die"
.LASF198:
	.string	"val1"
.LASF70:
	.string	"_chain"
.LASF74:
	.string	"_cur_column"
.LASF93:
	.string	"sys_nerr"
.LASF248:
	.string	"freeline"
.LASF250:
	.string	"extract_field"
.LASF204:
	.string	"result"
.LASF210:
	.string	"diff"
.LASF95:
	.string	"_sys_nerr"
.LASF153:
	.string	"hard_LC_COLLATE"
.LASF34:
	.string	"__environ"
.LASF6:
	.string	"long int"
.LASF138:
	.string	"outlist"
.LASF22:
	.string	"has_arg"
.LASF87:
	.string	"_IO_marker"
.LASF251:
	.string	"main"
.LASF203:
	.string	"decode_field_spec"
.LASF49:
	.string	"_ISprint"
.LASF173:
	.string	"NOCHECK_ORDER_OPTION"
.LASF214:
	.string	"hline1"
.LASF215:
	.string	"hline2"
.LASF205:
	.string	"s_err"
.LASF122:
	.string	"FADVISE_RANDOM"
.LASF4:
	.string	"signed char"
.LASF56:
	.string	"_IO_FILE"
.LASF26:
	.string	"__timezone"
.LASF89:
	.string	"_IO_wide_data"
.LASF265:
	.string	"__PRETTY_FUNCTION__"
.LASF112:
	.string	"quoting_style_args"
.LASF35:
	.string	"environ"
.LASF0:
	.string	"unsigned char"
.LASF81:
	.string	"_freeres_list"
.LASF218:
	.string	"line2"
.LASF236:
	.string	"reset_line"
.LASF130:
	.string	"strtol_error"
.LASF254:
	.string	"emit_ancillary_info"
.LASF115:
	.string	"error_message_count"
.LASF24:
	.string	"__tzname"
.LASF154:
	.string	"_Bool"
.LASF184:
	.string	"MIGHT_BE_O_ARG"
.LASF118:
	.string	"FADVISE_SEQUENTIAL"
.LASF11:
	.string	"char"
.LASF264:
	.string	"_IO_lock_t"
.LASF233:
	.string	"linep"
.LASF197:
	.string	"var1"
.LASF148:
	.string	"lines"
.LASF29:
	.string	"timezone"
.LASF105:
	.string	"shell_escape_always_quoting_style"
.LASF177:
	.string	"ignore_case"
.LASF242:
	.string	"jf_1"
.LASF243:
	.string	"jf_2"
.LASF221:
	.string	"join_field"
.LASF58:
	.string	"_IO_read_ptr"
.LASF90:
	.string	"stdin"
.LASF244:
	.string	"beg1"
.LASF245:
	.string	"beg2"
.LASF162:
	.string	"autocount_1"
.LASF163:
	.string	"autocount_2"
.LASF94:
	.string	"sys_errlist"
.LASF69:
	.string	"_markers"
.LASF100:
	.string	"program_name"
.LASF139:
	.string	"file"
.LASF53:
	.string	"_ISpunct"
.LASF107:
	.string	"c_maybe_quoting_style"
.LASF126:
	.string	"buffer"
.LASF134:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF257:
	.string	"node"
.LASF189:
	.string	"joption_count"
.LASF228:
	.string	"whichfile"
.LASF119:
	.string	"FADVISE_NOREUSE"
.LASF36:
	.string	"program_invocation_name"
.LASF217:
	.string	"line1"
.LASF78:
	.string	"_offset"
.LASF178:
	.string	"join_header_lines"
.LASF132:
	.string	"LONGINT_OVERFLOW"
.LASF195:
	.string	"add_file_name"
.LASF18:
	.string	"optind"
.LASF110:
	.string	"clocale_quoting_style"
.LASF114:
	.string	"error_print_progname"
.LASF3:
	.string	"long unsigned int"
.LASF181:
	.string	"MUST_BE_OPERAND"
.LASF253:
	.string	"status"
.LASF72:
	.string	"_flags2"
.LASF60:
	.string	"_IO_read_base"
.LASF142:
	.string	"line"
.LASF55:
	.string	"option"
.LASF260:
	.string	"field_sep"
.LASF225:
	.string	"string_to_join_field"
.LASF85:
	.string	"_unused2"
.LASF234:
	.string	"which"
.LASF47:
	.string	"_ISxdigit"
.LASF169:
	.string	"CHECK_ORDER_ENABLED"
.LASF185:
	.string	"argc"
.LASF73:
	.string	"_old_offset"
.LASF256:
	.string	"infomap"
.LASF186:
	.string	"argv"
.LASF157:
	.string	"print_pairables"
.LASF102:
	.string	"shell_quoting_style"
.LASF151:
	.string	"g_names"
.LASF15:
	.string	"long long int"
.LASF171:
	.string	"check_input_order"
.LASF255:
	.string	"program"
.LASF38:
	.string	"Version"
.LASF39:
	.string	"exit_failure"
.LASF16:
	.string	"_gl_cxxalias_dummy"
.LASF160:
	.string	"empty_filler"
.LASF43:
	.string	"_ISupper"
.LASF106:
	.string	"c_quoting_style"
.LASF120:
	.string	"FADVISE_DONTNEED"
.LASF52:
	.string	"_IScntrl"
.LASF174:
	.string	"HEADER_LINE_OPTION"
.LASF63:
	.string	"_IO_write_end"
.LASF143:
	.string	"nfields"
.LASF40:
	.string	"uintmax_t"
.LASF150:
	.string	"line_no"
.LASF135:
	.string	"LONGINT_INVALID"
.LASF33:
	.string	"sys_siglist"
.LASF146:
	.string	"count"
.LASF235:
	.string	"init_linep"
.LASF147:
	.string	"alloc"
.LASF98:
	.string	"GETOPT_VERSION_CHAR"
.LASF64:
	.string	"_IO_buf_base"
.LASF190:
	.string	"optc"
.LASF2:
	.string	"unsigned int"
.LASF208:
	.string	"seq1"
.LASF209:
	.string	"seq2"
.LASF99:
	.string	"version_etc_copyright"
.LASF113:
	.string	"quoting_style_vals"
.LASF101:
	.string	"literal_quoting_style"
.LASF201:
	.string	"field_index"
.LASF27:
	.string	"tzname"
.LASF83:
	.string	"__pad5"
.LASF183:
	.string	"MIGHT_BE_J2_ARG"
.LASF23:
	.string	"flag"
.LASF127:
	.string	"quoting_options"
.LASF239:
	.string	"current"
.LASF57:
	.string	"_flags"
.LASF202:
	.string	"spec_item"
.LASF247:
	.string	"len2"
.LASF241:
	.string	"keycmp"
.LASF246:
	.string	"len1"
.LASF259:
	.string	"lc_messages"
.LASF128:
	.string	"quote_quoting_options"
.LASF227:
	.string	"first"
.LASF84:
	.string	"_mode"
.LASF117:
	.string	"FADVISE_NORMAL"
.LASF79:
	.string	"_codecvt"
.LASF206:
	.string	"add_field"
.LASF42:
	.string	"LOG10_TIMESPEC_HZ"
.LASF121:
	.string	"FADVISE_WILLNEED"
.LASF172:
	.string	"CHECK_ORDER_OPTION"
.LASF223:
	.string	"prfield"
.LASF161:
	.string	"autoformat"
.LASF31:
	.string	"long double"
.LASF213:
	.string	"checktail"
.LASF86:
	.string	"FILE"
.LASF123:
	.string	"linebuffer"
.LASF175:
	.string	"longopts"
.LASF164:
	.string	"join_field_1"
.LASF165:
	.string	"join_field_2"
.LASF131:
	.string	"LONGINT_OK"
.LASF168:
	.string	"CHECK_ORDER_DEFAULT"
.LASF45:
	.string	"_ISalpha"
.LASF145:
	.string	"fields"
.LASF30:
	.string	"getdate_err"
.LASF20:
	.string	"optopt"
.LASF109:
	.string	"locale_quoting_style"
.LASF124:
	.string	"size"
.LASF14:
	.string	"long long unsigned int"
.LASF156:
	.string	"print_unpairables_2"
.LASF125:
	.string	"length"
.LASF51:
	.string	"_ISblank"
.LASF8:
	.string	"__off_t"
.LASF176:
	.string	"uni_blank"
.LASF216:
	.string	"prjoin"
.LASF129:
	.string	"quoting_style"
.LASF54:
	.string	"_ISalnum"
.LASF37:
	.string	"program_invocation_short_name"
.LASF149:
	.string	"prevline"
.LASF82:
	.string	"_freeres_buf"
.LASF48:
	.string	"_ISspace"
.LASF224:
	.string	"delseq"
.LASF19:
	.string	"opterr"
.LASF263:
	.string	"/root/coreutils"
.LASF182:
	.string	"MIGHT_BE_J1_ARG"
.LASF10:
	.string	"__time_t"
.LASF222:
	.string	"autocount"
.LASF207:
	.string	"system_join"
.LASF67:
	.string	"_IO_backup_base"
.LASF76:
	.string	"_shortbuf"
.LASF140:
	.string	"field"
.LASF158:
	.string	"seen_unpairable"
.LASF103:
	.string	"shell_always_quoting_style"
.LASF9:
	.string	"__off64_t"
.LASF199:
	.string	"add_field_list"
.LASF159:
	.string	"issued_disorder_warning"
.LASF108:
	.string	"escape_quoting_style"
.LASF65:
	.string	"_IO_buf_end"
.LASF193:
	.string	"newtab"
.LASF231:
	.string	"free_spareline"
.LASF200:
	.string	"file_index"
.LASF21:
	.string	"name"
.LASF44:
	.string	"_ISlower"
.LASF258:
	.string	"map_prog"
.LASF92:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF211:
	.string	"eof1"
.LASF212:
	.string	"eof2"
.LASF252:
	.string	"usage"
.LASF104:
	.string	"shell_escape_quoting_style"
.LASF75:
	.string	"_vtable_offset"
.LASF96:
	.string	"_sys_errlist"
.LASF7:
	.string	"__uintmax_t"
.LASF41:
	.string	"TIMESPEC_HZ"
.LASF194:
	.string	"names"
.LASF25:
	.string	"__daylight"
.LASF230:
	.string	"initseq"
.LASF166:
	.string	"outlist_head"
.LASF237:
	.string	"check_order"
.LASF59:
	.string	"_IO_read_end"
.LASF179:
	.string	"eolchar"
.LASF262:
	.string	"src/join.c"
.LASF167:
	.string	"outlist_end"
.LASF71:
	.string	"_fileno"
.LASF80:
	.string	"_wide_data"
.LASF152:
	.string	"spareline"
.LASF17:
	.string	"optarg"
.LASF232:
	.string	"get_line"
.LASF46:
	.string	"_ISdigit"
.LASF1:
	.string	"short unsigned int"
.LASF91:
	.string	"stdout"
.LASF170:
	.string	"CHECK_ORDER_DISABLED"
.LASF229:
	.string	"getseq"
.LASF188:
	.string	"prev_optc_status"
.LASF196:
	.string	"set_join_field"
.LASF62:
	.string	"_IO_write_ptr"
.LASF180:
	.string	"operand_status"
.LASF28:
	.string	"daylight"
.LASF187:
	.string	"optc_status"
.LASF141:
	.string	"next"
.LASF238:
	.string	"prev"
.LASF136:
	.string	"argmatch_exit_fn"
.LASF111:
	.string	"custom_quoting_style"
.LASF219:
	.string	"output_separator"
.LASF155:
	.string	"print_unpairables_1"
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
