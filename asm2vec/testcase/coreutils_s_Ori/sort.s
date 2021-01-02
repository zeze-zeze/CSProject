	.file	"sort.c"
	.text
.Ltext0:
	.type	initialize_exit_failure, @function
initialize_exit_failure:
.LFB6:
	.file 1 "src/system.h"
	.loc 1 100 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 101 6
	cmpl	$1, -4(%rbp)
	je	.L3
	.loc 1 102 18
	movl	-4(%rbp), %eax
	movl	%eax, exit_failure(%rip)
.L3:
	.loc 1 103 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	initialize_exit_failure, .-initialize_exit_failure
	.type	to_uchar, @function
to_uchar:
.LFB11:
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
	.type	field_sep, @function
field_sep:
.LFB12:
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
	jne	.L7
	.loc 1 162 23 is_stmt 0 discriminator 2
	cmpb	$10, -4(%rbp)
	jne	.L8
.L7:
	.loc 1 162 23 discriminator 3
	movl	$1, %eax
	jmp	.L9
.L8:
	.loc 1 162 23 discriminator 4
	movl	$0, %eax
.L9:
	.loc 1 162 23 discriminator 6
	andl	$1, %eax
	.loc 1 163 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	field_sep, .-field_sep
	.type	select_plural, @function
select_plural:
.LFB17:
	.loc 1 184 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 188 30
	movq	-8(%rbp), %rax
	.loc 1 189 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	select_plural, .-select_plural
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
	jmp	.L16
.L18:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L16:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L17
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L18
.L17:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L19
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L19:
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
	je	.L20
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L20
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L20:
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
	jne	.L21
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC17(%rip), %rbx
	jmp	.L22
.L21:
	.loc 1 671 3 discriminator 2
	leaq	.LC18(%rip), %rbx
.L22:
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
	je	.L23
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L23:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	decimal_point
	.comm	decimal_point,4,4
	.local	thousands_sep
	.comm	thousands_sep,4,4
	.local	hard_LC_COLLATE
	.comm	hard_LC_COLLATE,1,1
	.local	hard_LC_TIME
	.comm	hard_LC_TIME,1,1
	.data
	.type	eolchar, @object
	.size	eolchar, 1
eolchar:
	.byte	10
	.local	saved_line
	.comm	saved_line,32,32
	.local	blanks
	.comm	blanks,256,32
	.local	nonprinting
	.comm	nonprinting,256,32
	.local	nondictionary
	.comm	nondictionary,256,32
	.local	fold_toupper
	.comm	fold_toupper,256,32
	.section	.rodata
.LC20:
	.string	"APR"
.LC21:
	.string	"AUG"
.LC22:
	.string	"DEC"
.LC23:
	.string	"FEB"
.LC24:
	.string	"JAN"
.LC25:
	.string	"JUL"
.LC26:
	.string	"JUN"
.LC27:
	.string	"MAR"
.LC28:
	.string	"MAY"
.LC29:
	.string	"NOV"
.LC30:
	.string	"OCT"
.LC31:
	.string	"SEP"
	.section	.data.rel.local,"aw"
	.align 32
	.type	monthtab, @object
	.size	monthtab, 192
monthtab:
	.quad	.LC20
	.long	4
	.zero	4
	.quad	.LC21
	.long	8
	.zero	4
	.quad	.LC22
	.long	12
	.zero	4
	.quad	.LC23
	.long	2
	.zero	4
	.quad	.LC24
	.long	1
	.zero	4
	.quad	.LC25
	.long	7
	.zero	4
	.quad	.LC26
	.long	6
	.zero	4
	.quad	.LC27
	.long	3
	.zero	4
	.quad	.LC28
	.long	5
	.zero	4
	.quad	.LC29
	.long	11
	.zero	4
	.quad	.LC30
	.long	10
	.zero	4
	.quad	.LC31
	.long	9
	.zero	4
	.data
	.align 8
	.type	merge_buffer_size, @object
	.size	merge_buffer_size, 8
merge_buffer_size:
	.quad	262144
	.local	sort_size
	.comm	sort_size,8,8
	.local	temp_dirs
	.comm	temp_dirs,8,8
	.local	temp_dir_count
	.comm	temp_dir_count,8,8
	.local	temp_dir_alloc
	.comm	temp_dir_alloc,8,8
	.local	reverse
	.comm	reverse,1,1
	.local	stable
	.comm	stable,1,1
	.align 4
	.type	tab, @object
	.size	tab, 4
tab:
	.long	128
	.local	unique
	.comm	unique,1,1
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.local	keylist
	.comm	keylist,8,8
	.local	compress_program
	.comm	compress_program,8,8
	.local	debug
	.comm	debug,1,1
	.align 4
	.type	nmerge, @object
	.size	nmerge, 4
nmerge:
	.long	16
	.section	.rodata
.LC32:
	.string	": errno "
.LC33:
	.string	"\n"
	.text
	.type	async_safe_die, @function
async_safe_die:
.LFB46:
	.file 2 "src/sort.c"
	.loc 2 376 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 376 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.LBB2:
	.loc 2 377 3
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	write@PLT
	movq	%rax, -64(%rbp)
.LBE2:
	.loc 2 384 6
	cmpl	$0, -68(%rbp)
	je	.L25
.LBB3:
	.loc 2 387 17
	leaq	-20(%rbp), %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	inttostr@PLT
	movq	%rax, -56(%rbp)
.LBB4:
	.loc 2 388 7
	movl	$8, %edx
	leaq	.LC32(%rip), %rsi
	movl	$2, %edi
	call	write@PLT
	movq	%rax, -48(%rbp)
.LBE4:
.LBB5:
	.loc 2 389 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	write@PLT
	movq	%rax, -40(%rbp)
.L25:
.LBE5:
.LBE3:
.LBB6:
	.loc 2 392 3
	movl	$1, %edx
	leaq	.LC33(%rip), %rsi
	movl	$2, %edi
	call	write@PLT
	movq	%rax, -32(%rbp)
.LBE6:
	.loc 2 394 3
	movl	$2, %edi
	call	_exit@PLT
	.cfi_endproc
.LFE46:
	.size	async_safe_die, .-async_safe_die
	.section	.rodata
.LC34:
	.string	"standard output"
.LC35:
	.string	"%s: %s"
	.text
	.type	sort_die, @function
sort_die:
.LFB47:
	.loc 2 403 1
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 404 3
	cmpq	$0, -32(%rbp)
	jne	.L28
	.loc 2 404 3 is_stmt 0 discriminator 1
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	jmp	.L29
.L28:
	.loc 2 404 3 discriminator 2
	movq	-32(%rbp), %rax
.L29:
	.loc 2 404 3 discriminator 4
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	movq	%rbx, %r8
	movq	%rdx, %rcx
	leaq	.LC35(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
	.cfi_endproc
.LFE47:
	.size	sort_die, .-sort_die
	.section	.rodata
	.align 8
.LC36:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC37:
	.string	"Usage: %s [OPTION]... [FILE]...\n  or:  %s [OPTION]... --files0-from=F\n"
	.align 8
.LC38:
	.string	"Write sorted concatenation of all FILE(s) to standard output.\n"
.LC39:
	.string	"Ordering options:\n\n"
	.align 8
.LC40:
	.string	"  -b, --ignore-leading-blanks  ignore leading blanks\n  -d, --dictionary-order      consider only blanks and alphanumeric characters\n  -f, --ignore-case           fold lower case to upper case characters\n"
	.align 8
.LC41:
	.string	"  -g, --general-numeric-sort  compare according to general numerical value\n  -i, --ignore-nonprinting    consider only printable characters\n  -M, --month-sort            compare (unknown) < 'JAN' < ... < 'DEC'\n"
	.align 8
.LC42:
	.string	"  -h, --human-numeric-sort    compare human readable numbers (e.g., 2K 1G)\n"
	.align 8
.LC43:
	.ascii	"  -n, --numeric-s"
	.string	"ort          compare according to string numerical value\n  -R, --random-sort           shuffle, but group identical keys.  See shuf(1)\n      --random-source=FILE    get random bytes from FILE\n  -r, --reverse               reverse the result of comparisons\n"
	.align 8
.LC44:
	.ascii	"      --sort=WORD    "
	.string	"         sort according to WORD:\n                                general-numeric -g, human-numeric -h, month -M,\n                                numeric -n, random -R, version -V\n  -V, --version-sort          natural sort of (version) numbers within text\n\n"
.LC45:
	.string	"Other options:\n\n"
	.align 8
.LC46:
	.string	"      --batch-size=NMERGE   merge at most NMERGE inputs at once;\n                            for more use temp files\n"
	.align 8
.LC47:
	.ascii	"  -c, --check, --che"
	.string	"ck=diagnose-first  check for sorted input; do not sort\n  -C, --check=quiet, --check=silent  like -c, but do not report first bad line\n      --compress-program=PROG  compress temporaries with PROG;\n                              decompress them with PROG -d\n"
	.align 8
.LC48:
	.ascii	"      --debug               annotate the part of the line us"
	.ascii	"ed to sort,\n                   "
	.string	"           and warn about questionable usage to stderr\n      --files0-from=F       read input from the files specified by\n                            NUL-terminated names in file F;\n                            If F is - then read names from standard input\n"
	.align 8
.LC49:
	.string	"  -k, --key=KEYDEF          sort via a key; KEYDEF gives location and type\n  -m, --merge               merge already sorted files; do not sort\n"
	.align 8
.LC50:
	.string	"  -o, --output=FILE         write result to FILE instead of standard output\n  -s, --stable              stabilize sort by disabling last-resort comparison\n  -S, --buffer-size=SIZE    use SIZE for main memory buffer\n"
	.align 8
.LC51:
	.ascii	"  -t, --field-separator=SEP  use SEP instead of non-blank to"
	.ascii	" blank transition\n  -T, --temporary-directory=DIR  use DIR "
	.ascii	"for temporaries, not $TMPDIR or %s;\n                       "
	.ascii	"       multiple op"
	.string	"tions specify multiple directories\n      --parallel=N          change the number of sorts run concurrently to N\n  -u, --unique              with -c, check for strict ordering;\n                              without -c, output only the first of an equal run\n"
.LC52:
	.string	"/tmp"
	.align 8
.LC53:
	.string	"  -z, --zero-terminated     line delimiter is NUL, not newline\n"
	.align 8
.LC54:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC55:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC56:
	.ascii	"\nKEYDEF is F[.C][OPTS][,F[.C][OPTS]] for start and stop pos"
	.ascii	"ition, where F is a\nfield number and C a character position"
	.ascii	" in the field; both are origin 1, and\nthe stop position def"
	.ascii	"aults to the line's end.  If neither -t nor -b is in\neffect"
	.ascii	", characters in a field are counted from the beginning of th"
	.ascii	"e preceding\nwhitespace.  OPTS is one or more single"
	.string	"-letter ordering options [bdfgiMhnRrV],\nwhich override global ordering options for that key.  If no key is given, use\nthe entire line as the key.  Use --debug to diagnose incorrect key usage.\n\nSIZE may be followed by the following multiplicative suffixes:\n"
	.align 8
.LC57:
	.string	"% 1% of memory, b 1, K 1024 (default), and so on for M, G, T, P, E, Z, Y.\n\n*** WARNING ***\nThe locale specified by the environment affects sort order.\nSet LC_ALL=C to get the traditional sort order that uses\nnative byte values.\n"
.LC58:
	.string	"sort"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB48:
	.loc 2 410 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -20(%rbp)
	.loc 2 411 6
	cmpl	$0, -20(%rbp)
	je	.L31
	.loc 2 412 5
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
	jmp	.L32
.L31:
	.loc 2 415 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 415 15
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 415 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 420 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 424 7
	call	emit_stdin_note
	.loc 2 425 7
	call	emit_mandatory_arg_note
	.loc 2 427 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 431 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 437 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 442 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 445 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 451 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 459 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 463 7
	movq	stdout(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 467 7
	movq	stdout(%rip), %rbx
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 474 7
	movq	stdout(%rip), %rbx
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 481 7
	movq	stdout(%rip), %rbx
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 485 7
	movq	stdout(%rip), %rbx
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 491 15
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	.loc 2 491 7
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 500 7
	movq	stdout(%rip), %rbx
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 503 7
	movq	stdout(%rip), %rbx
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 504 7
	movq	stdout(%rip), %rbx
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 505 7
	movq	stdout(%rip), %rbx
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 518 7
	movq	stdout(%rip), %rbx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 526 7
	leaq	.LC58(%rip), %rdi
	call	emit_ancillary_info
.L32:
	.loc 2 529 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE48:
	.size	usage, .-usage
	.section	.rodata
	.align 16
	.type	short_options, @object
	.size	short_options, 31
short_options:
	.string	"-bcCdfghik:mMno:rRsS:t:T:uVy:z"
.LC59:
	.string	"ignore-leading-blanks"
.LC60:
	.string	"check"
.LC61:
	.string	"compress-program"
.LC62:
	.string	"debug"
.LC63:
	.string	"dictionary-order"
.LC64:
	.string	"ignore-case"
.LC65:
	.string	"files0-from"
.LC66:
	.string	"general-numeric-sort"
.LC67:
	.string	"ignore-nonprinting"
.LC68:
	.string	"key"
.LC69:
	.string	"merge"
.LC70:
	.string	"month-sort"
.LC71:
	.string	"numeric-sort"
.LC72:
	.string	"human-numeric-sort"
.LC73:
	.string	"version-sort"
.LC74:
	.string	"random-sort"
.LC75:
	.string	"random-source"
.LC76:
	.string	"output"
.LC77:
	.string	"reverse"
.LC78:
	.string	"stable"
.LC79:
	.string	"batch-size"
.LC80:
	.string	"buffer-size"
.LC81:
	.string	"field-separator"
.LC82:
	.string	"temporary-directory"
.LC83:
	.string	"unique"
.LC84:
	.string	"zero-terminated"
.LC85:
	.string	"parallel"
.LC86:
	.string	"help"
.LC87:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 992
long_options:
	.quad	.LC59
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC60
	.long	2
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC61
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC62
	.long	0
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC63
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC64
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC65
	.long	1
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC66
	.long	0
	.zero	4
	.quad	0
	.long	103
	.zero	4
	.quad	.LC67
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC68
	.long	1
	.zero	4
	.quad	0
	.long	107
	.zero	4
	.quad	.LC69
	.long	0
	.zero	4
	.quad	0
	.long	109
	.zero	4
	.quad	.LC70
	.long	0
	.zero	4
	.quad	0
	.long	77
	.zero	4
	.quad	.LC71
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC72
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC73
	.long	0
	.zero	4
	.quad	0
	.long	86
	.zero	4
	.quad	.LC74
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	.LC75
	.long	1
	.zero	4
	.quad	0
	.long	133
	.zero	4
	.quad	.LC58
	.long	1
	.zero	4
	.quad	0
	.long	134
	.zero	4
	.quad	.LC76
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC77
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC78
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC79
	.long	1
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	.LC80
	.long	1
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC81
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC82
	.long	1
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC83
	.long	0
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC84
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC85
	.long	1
	.zero	4
	.quad	0
	.long	135
	.zero	4
	.quad	.LC86
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC87
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
.LC88:
	.string	"quiet"
.LC89:
	.string	"silent"
.LC90:
	.string	"diagnose-first"
	.section	.data.rel.ro.local
	.align 32
	.type	check_args, @object
	.size	check_args, 32
check_args:
	.quad	.LC88
	.quad	.LC89
	.quad	.LC90
	.quad	0
	.section	.rodata
	.type	check_types, @object
	.size	check_types, 3
check_types:
	.ascii	"CCc"
.LC91:
	.string	"general-numeric"
.LC92:
	.string	"human-numeric"
.LC93:
	.string	"month"
.LC94:
	.string	"numeric"
.LC95:
	.string	"random"
	.section	.data.rel.ro.local
	.align 32
	.type	sort_args, @object
	.size	sort_args, 56
sort_args:
	.quad	.LC91
	.quad	.LC92
	.quad	.LC93
	.quad	.LC94
	.quad	.LC95
	.quad	.LC87
	.quad	0
	.section	.rodata
	.type	sort_types, @object
	.size	sort_types, 6
sort_types:
	.ascii	"ghMnRV"
	.local	caught_signals
	.comm	caught_signals,128,32
	.text
	.type	cs_enter, @function
cs_enter:
.LFB49:
	.loc 2 635 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 636 58
	movq	-24(%rbp), %rax
	addq	$8, %rax
	.loc 2 636 13
	movq	%rax, %rdx
	leaq	caught_signals(%rip), %rsi
	movl	$0, %edi
	call	pthread_sigmask@PLT
	movl	%eax, -4(%rbp)
	.loc 2 637 23
	cmpl	$0, -4(%rbp)
	sete	%dl
	.loc 2 637 17
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 638 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	cs_enter, .-cs_enter
	.type	cs_leave, @function
cs_leave:
.LFB50:
	.loc 2 643 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 644 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 644 6
	testb	%al, %al
	je	.L36
	.loc 2 647 37
	movq	-8(%rbp), %rax
	addq	$8, %rax
	.loc 2 647 7
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	pthread_sigmask@PLT
.L36:
	.loc 2 649 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	cs_leave, .-cs_leave
	.local	temphead
	.comm	temphead,8,8
	.section	.data.rel.local
	.align 8
	.type	temptail, @object
	.size	temptail, 8
temptail:
	.quad	temphead
	.local	proctab
	.comm	proctab,8,8
	.text
	.type	proctab_hasher, @function
proctab_hasher:
.LFB51:
	.loc 2 684 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 685 26
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 686 14
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	.loc 2 686 20
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, %rax
	.loc 2 687 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	proctab_hasher, .-proctab_hasher
	.type	proctab_comparator, @function
proctab_comparator:
.LFB52:
	.loc 2 691 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 692 26
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 693 26
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 694 12
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	.loc 2 694 23
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 694 18
	cmpl	%eax, %edx
	sete	%al
	.loc 2 695 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	proctab_comparator, .-proctab_comparator
	.local	nprocs
	.comm	nprocs,4,4
	.section	.rodata
.LC96:
	.string	"waiting for %s [-d]"
.LC97:
	.string	"%s [-d] terminated abnormally"
	.text
	.type	reap, @function
reap:
.LFB53:
	.loc 2 711 1
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
	.loc 2 711 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 713 16
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %edx
	cmpl	$0, -36(%rbp)
	je	.L42
	.loc 2 713 16 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax
	jmp	.L43
.L42:
	.loc 2 713 16 discriminator 2
	movl	$-1, %eax
.L43:
	.loc 2 713 16 discriminator 4
	leaq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	waitpid@PLT
	movl	%eax, -28(%rbp)
	.loc 2 715 6 is_stmt 1 discriminator 4
	cmpl	$0, -28(%rbp)
	jns	.L44
.LBB7:
	.loc 2 716 5
	movq	compress_program(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC96(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L44:
.LBE7:
	.loc 2 718 11
	cmpl	$0, -28(%rbp)
	jle	.L45
	.loc 2 718 21 discriminator 1
	cmpl	$0, -36(%rbp)
	jg	.L46
	.loc 2 718 36 discriminator 2
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	delete_proc
	.loc 2 718 33 discriminator 2
	testb	%al, %al
	je	.L45
.L46:
	.loc 2 720 13
	movl	-32(%rbp), %eax
	andl	$127, %eax
	.loc 2 720 10
	testl	%eax, %eax
	jne	.L47
	.loc 2 720 35 discriminator 1
	movl	-32(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %eax
	.loc 2 720 32 discriminator 1
	testl	%eax, %eax
	je	.L48
.L47:
.LBB8:
	.loc 2 721 9
	movq	compress_program(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC97(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L48:
.LBE8:
	.loc 2 723 7
	movl	nprocs(%rip), %eax
	subl	$1, %eax
	movl	%eax, nprocs(%rip)
.L45:
	.loc 2 726 10
	movl	-28(%rbp), %eax
	.loc 2 727 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	reap, .-reap
	.type	register_proc, @function
register_proc:
.LFB54:
	.loc 2 734 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 735 7
	movq	proctab(%rip), %rax
	.loc 2 735 6
	testq	%rax, %rax
	jne	.L52
	.loc 2 737 17
	movl	$0, %r8d
	leaq	proctab_comparator(%rip), %rcx
	leaq	proctab_hasher(%rip), %rdx
	movl	$0, %esi
	movl	$47, %edi
	call	hash_initialize@PLT
	.loc 2 737 15
	movq	%rax, proctab(%rip)
	.loc 2 741 11
	movq	proctab(%rip), %rax
	.loc 2 741 10
	testq	%rax, %rax
	jne	.L52
	.loc 2 742 9
	call	xalloc_die@PLT
.L52:
	.loc 2 745 15
	movq	-8(%rbp), %rax
	movb	$1, 12(%rax)
	.loc 2 747 9
	movq	proctab(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_insert@PLT
	.loc 2 747 6
	testq	%rax, %rax
	jne	.L54
	.loc 2 748 5
	call	xalloc_die@PLT
.L54:
	.loc 2 749 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	register_proc, .-register_proc
	.type	delete_proc, @function
delete_proc:
.LFB55:
	.loc 2 756 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	.loc 2 756 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 759 12
	movl	-52(%rbp), %eax
	movl	%eax, -24(%rbp)
	.loc 2 760 27
	movq	proctab(%rip), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_remove@PLT
	movq	%rax, -40(%rbp)
	.loc 2 761 6
	cmpq	$0, -40(%rbp)
	jne	.L56
	.loc 2 762 12
	movl	$0, %eax
	jmp	.L58
.L56:
	.loc 2 763 15
	movq	-40(%rbp), %rax
	movb	$2, 12(%rax)
	.loc 2 764 10
	movl	$1, %eax
.L58:
	.loc 2 765 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L59
	.loc 2 765 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	delete_proc, .-delete_proc
	.type	wait_proc, @function
wait_proc:
.LFB56:
	.loc 2 772 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 2 773 7
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	delete_proc
	.loc 2 773 6
	testb	%al, %al
	je	.L62
	.loc 2 774 5
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	reap
.L62:
	.loc 2 775 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	wait_proc, .-wait_proc
	.type	reap_exited, @function
reap_exited:
.LFB57:
	.loc 2 782 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 783 9
	jmp	.L64
.L66:
	.loc 2 784 5
	nop
.L64:
	.loc 2 783 12
	movl	nprocs(%rip), %eax
	.loc 2 783 9
	testl	%eax, %eax
	jle	.L67
	.loc 2 783 24 discriminator 1
	movl	$0, %edi
	call	reap
	.loc 2 783 21 discriminator 1
	testl	%eax, %eax
	jne	.L66
.L67:
	.loc 2 785 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	reap_exited, .-reap_exited
	.type	reap_some, @function
reap_some:
.LFB58:
	.loc 2 791 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 792 3
	movl	$-1, %edi
	call	reap
	.loc 2 793 3
	call	reap_exited
	.loc 2 794 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	reap_some, .-reap_some
	.type	reap_all, @function
reap_all:
.LFB59:
	.loc 2 800 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 801 9
	jmp	.L70
.L71:
	.loc 2 802 5
	movl	$-1, %edi
	call	reap
.L70:
	.loc 2 801 12
	movl	nprocs(%rip), %eax
	.loc 2 801 9
	testl	%eax, %eax
	jg	.L71
	.loc 2 803 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	reap_all, .-reap_all
	.type	cleanup, @function
cleanup:
.LFB60:
	.loc 2 809 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 812 13
	movq	temphead(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 812 3
	jmp	.L73
.L74:
	.loc 2 813 17 discriminator 3
	movq	-8(%rbp), %rax
	addq	$13, %rax
	.loc 2 813 5 discriminator 3
	movq	%rax, %rdi
	call	unlink@PLT
	.loc 2 812 36 discriminator 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L73:
	.loc 2 812 3 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L74
	.loc 2 814 12
	movq	$0, temphead(%rip)
	.loc 2 815 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	cleanup, .-cleanup
	.type	exit_cleanup, @function
exit_cleanup:
.LFB61:
	.loc 2 821 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	.loc 2 821 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 822 7
	movq	temphead(%rip), %rax
	.loc 2 822 6
	testq	%rax, %rax
	je	.L76
.LBB9:
	.loc 2 827 7
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	cs_enter
	.loc 2 828 7
	call	cleanup
	.loc 2 829 7
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	cs_leave
.L76:
.LBE9:
	.loc 2 832 3
	call	close_stdout@PLT
	.loc 2 833 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L77
	call	__stack_chk_fail@PLT
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	exit_cleanup, .-exit_cleanup
	.section	.rodata
	.align 8
.LC98:
	.string	"cannot create temporary file in %s"
	.text
	.type	create_temp_file, @function
create_temp_file:
.LFB62:
	.loc 2 843 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -216(%rbp)
	movl	%esi, %eax
	movb	%al, -220(%rbp)
	.loc 2 843 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 848 35
	movq	temp_dirs(%rip), %rax
	movq	temp_dir_index.7932(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 848 15
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	.loc 2 849 16
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -176(%rbp)
	.loc 2 851 14
	movq	-176(%rbp), %rax
	addq	$32, %rax
	.loc 2 851 5
	andq	$-8, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -192(%rbp)
	.loc 2 852 9
	movq	-192(%rbp), %rax
	addq	$13, %rax
	movq	%rax, -168(%rbp)
	.loc 2 855 3
	movq	-176(%rbp), %rdx
	movq	-184(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 856 16
	movq	-168(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 856 3
	movq	slashbase.7931(%rip), %rdx
	movq	%rdx, (%rax)
	movl	8+slashbase.7931(%rip), %edx
	movl	%edx, 8(%rax)
	.loc 2 857 14
	movq	-192(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 858 7
	movq	temp_dir_index.7932(%rip), %rax
	addq	$1, %rax
	.loc 2 858 6
	movq	%rax, temp_dir_index.7932(%rip)
	.loc 2 858 7
	movq	temp_dir_index.7932(%rip), %rdx
	.loc 2 858 24
	movq	temp_dir_count(%rip), %rax
	.loc 2 858 6
	cmpq	%rax, %rdx
	jne	.L79
	.loc 2 859 20
	movq	$0, temp_dir_index.7932(%rip)
.L79:
	.loc 2 862 3
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	cs_enter
	.loc 2 863 8
	movq	-168(%rbp), %rax
	movl	$524288, %esi
	movq	%rax, %rdi
	call	mkostemp_safer@PLT
	movl	%eax, -200(%rbp)
	.loc 2 864 6
	cmpl	$0, -200(%rbp)
	js	.L80
	.loc 2 866 7
	movq	temptail(%rip), %rax
	.loc 2 866 17
	movq	-192(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 867 18
	movq	-192(%rbp), %rax
	.loc 2 867 16
	movq	%rax, temptail(%rip)
.L80:
	.loc 2 869 17
	call	__errno_location@PLT
	.loc 2 869 15
	movl	(%rax), %eax
	movl	%eax, -196(%rbp)
	.loc 2 870 3
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	cs_leave
	.loc 2 871 3
	call	__errno_location@PLT
	.loc 2 871 9
	movl	-196(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 873 6
	cmpl	$0, -200(%rbp)
	jns	.L81
	.loc 2 875 14
	movzbl	-220(%rbp), %eax
	xorl	$1, %eax
	.loc 2 875 10
	testb	%al, %al
	jne	.L82
	.loc 2 875 39 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 875 11 discriminator 1
	cmpl	$24, %eax
	je	.L83
.L82:
.LBB10:
	.loc 2 876 9
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC98(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L83:
.LBE10:
	.loc 2 878 7
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 879 12
	movq	$0, -192(%rbp)
.L81:
	.loc 2 882 8
	movq	-216(%rbp), %rax
	movl	-200(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 883 10
	movq	-192(%rbp), %rax
	.loc 2 884 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L85
	call	__stack_chk_fail@PLT
.L85:
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	create_temp_file, .-create_temp_file
	.type	get_outstatus, @function
get_outstatus:
.LFB63:
	.loc 2 890 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 893 21
	movl	outstat_errno.7945(%rip), %eax
	.loc 2 893 6
	testl	%eax, %eax
	jne	.L87
	.loc 2 894 21
	leaq	outstat.7946(%rip), %rsi
	movl	$1, %edi
	call	fstat@PLT
	.loc 2 894 63
	testl	%eax, %eax
	je	.L88
	.loc 2 894 65 discriminator 1
	call	__errno_location@PLT
	.loc 2 894 63 discriminator 1
	movl	(%rax), %eax
	jmp	.L89
.L88:
	.loc 2 894 63 is_stmt 0 discriminator 2
	movl	$-1, %eax
.L89:
	.loc 2 894 19 is_stmt 1 discriminator 4
	movl	%eax, outstat_errno.7945(%rip)
.L87:
	.loc 2 895 24
	movl	outstat_errno.7945(%rip), %eax
	.loc 2 895 39
	testl	%eax, %eax
	jns	.L90
	.loc 2 895 39 is_stmt 0 discriminator 1
	leaq	outstat.7946(%rip), %rax
	jmp	.L92
.L90:
	.loc 2 895 39 discriminator 2
	movl	$0, %eax
.L92:
	.loc 2 896 1 is_stmt 1 discriminator 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	get_outstatus, .-get_outstatus
	.section	.rodata
.LC99:
	.string	"-"
.LC100:
	.string	"%s: error truncating"
.LC101:
	.string	"src/sort.c"
	.align 8
.LC102:
	.string	"!\"unexpected mode passed to stream_open\""
	.text
	.type	stream_open, @function
stream_open:
.LFB64:
	.loc 2 948 1
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
	movq	%rsi, -64(%rbp)
	.loc 2 951 7
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 951 6
	cmpb	$114, %al
	jne	.L94
	.loc 2 953 11
	movq	-56(%rbp), %rax
	leaq	.LC99(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 953 10
	testl	%eax, %eax
	jne	.L95
	.loc 2 955 27
	movb	$1, have_read_stdin(%rip)
	.loc 2 956 14
	movq	stdin(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L96
.L95:
.LBB11:
	.loc 2 960 20
	movq	-56(%rbp), %rax
	movl	$524288, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -36(%rbp)
	.loc 2 961 30
	cmpl	$0, -36(%rbp)
	js	.L97
	.loc 2 961 32 discriminator 1
	movq	-64(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fdopen@PLT
	jmp	.L98
.L97:
	.loc 2 961 30 discriminator 2
	movl	$0, %eax
.L98:
	.loc 2 961 14 discriminator 4
	movq	%rax, -32(%rbp)
.L96:
.LBE11:
	.loc 2 963 7
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	jmp	.L99
.L94:
	.loc 2 965 12
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 965 11
	cmpb	$119, %al
	jne	.L100
	.loc 2 967 10
	cmpq	$0, -56(%rbp)
	je	.L101
	.loc 2 967 19 discriminator 1
	movl	$0, %esi
	movl	$1, %edi
	call	ftruncate@PLT
	.loc 2 967 16 discriminator 1
	testl	%eax, %eax
	je	.L101
.LBB12:
	.loc 2 969 33
	call	__errno_location@PLT
	.loc 2 969 15
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 2 970 32
	call	get_outstatus
	movq	%rax, -24(%rbp)
	.loc 2 971 14
	cmpq	$0, -24(%rbp)
	je	.L102
	.loc 2 971 25 discriminator 1
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 2 971 50 discriminator 1
	cmpl	$32768, %eax
	jne	.L101
.L102:
.LBB13:
	.loc 2 972 13
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC100(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	-40(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L101:
.LBE13:
.LBE12:
	.loc 2 975 10
	movq	stdout(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L99
.L100:
	.loc 2 978 5 discriminator 1
	leaq	__PRETTY_FUNCTION__.7957(%rip), %rcx
	movl	$978, %edx
	leaq	.LC101(%rip), %rsi
	leaq	.LC102(%rip), %rdi
	call	__assert_fail@PLT
.L99:
	.loc 2 980 10
	movq	-32(%rbp), %rax
	.loc 2 981 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	stream_open, .-stream_open
	.section	.rodata
.LC103:
	.string	"open failed"
	.text
	.type	xfopen, @function
xfopen:
.LFB65:
	.loc 2 988 1
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
	.loc 2 989 14
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stream_open
	movq	%rax, -8(%rbp)
	.loc 2 990 6
	cmpq	$0, -8(%rbp)
	jne	.L105
	.loc 2 991 15
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 991 5
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sort_die
.L105:
	.loc 2 992 10
	movq	-8(%rbp), %rax
	.loc 2 993 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	xfopen, .-xfopen
	.section	.rodata
.LC104:
	.string	"fflush failed"
.LC105:
	.string	"close failed"
	.text
	.type	xfclose, @function
xfclose:
.LFB66:
	.loc 2 999 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 1000 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	.loc 2 1000 3
	testl	%eax, %eax
	je	.L108
	cmpl	$1, %eax
	je	.L109
	jmp	.L115
.L108:
	.loc 2 1004 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1004 10
	testl	%eax, %eax
	je	.L116
	.loc 2 1005 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	.loc 2 1006 7
	jmp	.L116
.L109:
	.loc 2 1010 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fflush_unlocked@PLT
	.loc 2 1010 10
	testl	%eax, %eax
	je	.L117
	.loc 2 1011 19
	leaq	.LC104(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1011 9
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sort_die
.L115:
	.loc 2 1015 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1015 10
	testl	%eax, %eax
	je	.L118
	.loc 2 1016 19
	leaq	.LC105(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1016 9
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sort_die
.L116:
	.loc 2 1006 7
	nop
	jmp	.L119
.L117:
	.loc 2 1012 7
	nop
	jmp	.L119
.L118:
	.loc 2 1017 7
	nop
.L119:
	.loc 2 1019 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	xfclose, .-xfclose
	.type	move_fd, @function
move_fd:
.LFB67:
	.loc 2 1025 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 2 1026 6
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	.L122
	.loc 2 1029 7
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	dup2@PLT
	.loc 2 1030 7
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L122:
	.loc 2 1032 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	move_fd, .-move_fd
	.type	pipe_fork, @function
pipe_fork:
.LFB68:
	.loc 2 1041 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	.loc 2 1041 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1045 10
	movsd	.LC106(%rip), %xmm0
	movsd	%xmm0, -160(%rbp)
	.loc 2 1046 9
	movl	$-1, -168(%rbp)
	.loc 2 1049 7
	movq	-184(%rbp), %rax
	movl	$524288, %esi
	movq	%rax, %rdi
	call	rpl_pipe2@PLT
	.loc 2 1049 6
	testl	%eax, %eax
	jns	.L124
	.loc 2 1050 12
	movl	$-1, %eax
	jmp	.L134
.L124:
	.loc 2 1059 14
	movl	nmerge(%rip), %eax
	leal	1(%rax), %edx
	.loc 2 1059 18
	movl	nprocs(%rip), %eax
	.loc 2 1059 6
	cmpl	%eax, %edx
	jnb	.L127
	.loc 2 1060 5
	call	reap_some
	.loc 2 1062 9
	jmp	.L127
.L130:
	.loc 2 1066 7
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	cs_enter
	.loc 2 1067 22
	movq	temphead(%rip), %rax
	movq	%rax, -152(%rbp)
	.loc 2 1068 16
	movq	$0, temphead(%rip)
	.loc 2 1070 13
	call	fork@PLT
	movl	%eax, -168(%rbp)
	.loc 2 1071 21
	call	__errno_location@PLT
	.loc 2 1071 19
	movl	(%rax), %eax
	movl	%eax, -164(%rbp)
	.loc 2 1072 10
	cmpl	$0, -168(%rbp)
	je	.L128
	.loc 2 1073 18
	movq	-152(%rbp), %rax
	movq	%rax, temphead(%rip)
.L128:
	.loc 2 1075 7
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	cs_leave
	.loc 2 1076 7
	call	__errno_location@PLT
	.loc 2 1076 13
	movl	-164(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 1078 10
	cmpl	$0, -168(%rbp)
	jns	.L129
	.loc 2 1078 23 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1078 20 discriminator 1
	cmpl	$11, %eax
	jne	.L129
	.loc 2 1082 11
	movq	-160(%rbp), %rax
	movq	%rax, %xmm0
	call	xnanosleep@PLT
	.loc 2 1083 22
	movsd	-160(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)
	.loc 2 1084 11
	call	reap_exited
.L127:
	.loc 2 1062 15
	movq	-192(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -192(%rbp)
	.loc 2 1062 9
	testq	%rax, %rax
	jne	.L130
.L129:
	.loc 2 1088 6
	cmpl	$0, -168(%rbp)
	jns	.L131
	.loc 2 1090 21
	call	__errno_location@PLT
	.loc 2 1090 19
	movl	(%rax), %eax
	movl	%eax, -164(%rbp)
	.loc 2 1091 7
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 1092 21
	movq	-184(%rbp), %rax
	addq	$4, %rax
	.loc 2 1092 7
	movl	(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 1093 7
	call	__errno_location@PLT
	.loc 2 1093 13
	movl	-164(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L132
.L131:
	.loc 2 1095 11
	cmpl	$0, -168(%rbp)
	jne	.L133
	.loc 2 1097 7
	movl	$0, %edi
	call	close@PLT
	.loc 2 1098 7
	movl	$1, %edi
	call	close@PLT
	jmp	.L132
.L133:
	.loc 2 1101 5
	movl	nprocs(%rip), %eax
	addl	$1, %eax
	movl	%eax, nprocs(%rip)
.L132:
	.loc 2 1103 10
	movl	-168(%rbp), %eax
.L134:
	.loc 2 1108 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L135
	.loc 2 1108 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	pipe_fork, .-pipe_fork
	.section	.rodata
	.align 8
.LC107:
	.string	"couldn't execute compress program"
.LC108:
	.string	"w"
	.align 8
.LC109:
	.string	"couldn't create temporary file"
	.text
	.type	maybe_create_temp, @function
maybe_create_temp:
.LFB69:
	.loc 2 1118 1 is_stmt 1
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
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	.loc 2 1118 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1120 27
	movzbl	-60(%rbp), %edx
	leaq	-44(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	create_temp_file
	movq	%rax, -40(%rbp)
	.loc 2 1121 6
	cmpq	$0, -40(%rbp)
	jne	.L137
	.loc 2 1122 12
	movl	$0, %eax
	jmp	.L143
.L137:
	.loc 2 1124 15
	movq	-40(%rbp), %rax
	movb	$0, 12(%rax)
	.loc 2 1126 7
	movq	compress_program(%rip), %rax
	.loc 2 1126 6
	testq	%rax, %rax
	je	.L139
.LBB14:
	.loc 2 1130 19
	leaq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	pipe_fork
	.loc 2 1130 17
	movq	-40(%rbp), %rdx
	movl	%eax, 8(%rdx)
	.loc 2 1131 19
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 1131 10
	testl	%eax, %eax
	jle	.L140
	.loc 2 1133 11
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 1134 11
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 1135 27
	movl	-28(%rbp), %eax
	.loc 2 1135 18
	movl	%eax, -44(%rbp)
	.loc 2 1137 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	register_proc
	jmp	.L139
.L140:
	.loc 2 1139 20
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 1139 15
	testl	%eax, %eax
	jne	.L139
	.loc 2 1143 11
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 1144 11
	movl	-44(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	move_fd
	.loc 2 1145 11
	movl	-32(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	move_fd
	.loc 2 1147 11
	movq	compress_program(%rip), %rcx
	movq	compress_program(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	execlp@PLT
	.loc 2 1149 27
	call	__errno_location@PLT
	.loc 2 1149 11
	movl	(%rax), %eax
	leaq	.LC107(%rip), %rsi
	movl	%eax, %edi
	call	async_safe_die
.L139:
.LBE14:
	.loc 2 1153 10
	movl	-44(%rbp), %eax
	leaq	.LC108(%rip), %rsi
	movl	%eax, %edi
	call	fdopen@PLT
	.loc 2 1153 8
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 2 1154 9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1154 6
	testq	%rax, %rax
	jne	.L142
	.loc 2 1155 56
	movq	-40(%rbp), %rax
	leaq	13(%rax), %rbx
	.loc 2 1155 15
	leaq	.LC109(%rip), %rdi
	call	gettext@PLT
	.loc 2 1155 5
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	sort_die
.L142:
	.loc 2 1157 10
	movq	-40(%rbp), %rax
.L143:
	.loc 2 1158 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L144
	.loc 2 1158 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L144:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	maybe_create_temp, .-maybe_create_temp
	.type	create_temp, @function
create_temp:
.LFB70:
	.loc 2 1166 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 1167 10
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	maybe_create_temp
	.loc 2 1168 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	create_temp, .-create_temp
	.section	.rodata
	.align 8
.LC110:
	.string	"couldn't create process for %s -d"
.LC111:
	.string	"-d"
	.align 8
.LC112:
	.string	"couldn't execute compress program (with -d)"
.LC113:
	.string	"r"
	.text
	.type	open_temp, @function
open_temp:
.LFB71:
	.loc 2 1177 1
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
	.loc 2 1177 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1179 9
	movq	$0, -40(%rbp)
	.loc 2 1181 11
	movq	-72(%rbp), %rax
	movzbl	12(%rax), %eax
	.loc 2 1181 6
	cmpb	$1, %al
	jne	.L148
	.loc 2 1182 5
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edi
	call	wait_proc
.L148:
	.loc 2 1184 22
	movq	-72(%rbp), %rax
	addq	$13, %rax
	.loc 2 1184 12
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -52(%rbp)
	.loc 2 1185 6
	cmpl	$0, -52(%rbp)
	jns	.L149
	.loc 2 1186 12
	movl	$0, %eax
	jmp	.L157
.L149:
	.loc 2 1188 17
	leaq	-32(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	pipe_fork
	movl	%eax, -48(%rbp)
	.loc 2 1190 3
	cmpl	$-1, -48(%rbp)
	je	.L151
	cmpl	$0, -48(%rbp)
	je	.L152
	jmp	.L159
.L151:
	.loc 2 1193 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1193 10
	cmpl	$24, %eax
	je	.L154
.LBB15:
	.loc 2 1194 9
	movq	compress_program(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC110(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L154:
.LBE15:
	.loc 2 1196 7
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 1197 7
	call	__errno_location@PLT
	.loc 2 1197 13
	movl	$24, (%rax)
	.loc 2 1198 7
	jmp	.L155
.L152:
	.loc 2 1203 7
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 1204 7
	movl	-52(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	move_fd
	.loc 2 1205 7
	movl	-28(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	move_fd
	.loc 2 1207 7
	movq	compress_program(%rip), %rsi
	movq	compress_program(%rip), %rax
	movl	$0, %ecx
	leaq	.LC111(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	execlp@PLT
	.loc 2 1209 23
	call	__errno_location@PLT
	.loc 2 1209 7
	movl	(%rax), %eax
	leaq	.LC112(%rip), %rsi
	movl	%eax, %edi
	call	async_safe_die
.L159:
	.loc 2 1212 17
	movq	-72(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 2 1213 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	register_proc
	.loc 2 1214 7
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 1215 7
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 1217 12
	movl	-32(%rbp), %eax
	leaq	.LC113(%rip), %rsi
	movl	%eax, %edi
	call	fdopen@PLT
	movq	%rax, -40(%rbp)
	.loc 2 1218 10
	cmpq	$0, -40(%rbp)
	jne	.L160
.LBB16:
	.loc 2 1220 29
	call	__errno_location@PLT
	.loc 2 1220 15
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 1221 11
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 1222 11
	call	__errno_location@PLT
	.loc 2 1222 17
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
.L160:
.LBE16:
	.loc 2 1224 7
	nop
.L155:
	.loc 2 1227 10
	movq	-40(%rbp), %rax
.L157:
	.loc 2 1228 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L158
	.loc 2 1228 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L158:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	open_temp, .-open_temp
	.type	add_temp_dir, @function
add_temp_dir:
.LFB72:
	.loc 2 1233 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 1234 22
	movq	temp_dir_count(%rip), %rdx
	movq	temp_dir_alloc(%rip), %rax
	.loc 2 1234 6
	cmpq	%rax, %rdx
	jne	.L162
.LBB17:
	.loc 2 1235 17
	movq	temp_dirs(%rip), %rax
	movl	$8, %edx
	leaq	temp_dir_alloc(%rip), %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 1235 15
	movq	%rax, temp_dirs(%rip)
.L162:
.LBE17:
	.loc 2 1237 12
	movq	temp_dirs(%rip), %rcx
	.loc 2 1237 27
	movq	temp_dir_count(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, temp_dir_count(%rip)
	.loc 2 1237 12
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	.loc 2 1237 31
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 1238 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	add_temp_dir, .-add_temp_dir
	.section	.rodata
.LC114:
	.string	"warning: cannot remove: %s"
	.text
	.type	zaptemp, @function
zaptemp:
.LFB73:
	.loc 2 1244 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	.loc 2 1244 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1249 7
	movl	$0, -192(%rbp)
	.loc 2 1252 14
	leaq	temphead(%rip), %rax
	movq	%rax, -184(%rbp)
	.loc 2 1252 3
	jmp	.L164
.L165:
	.loc 2 1252 64
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
.L164:
	.loc 2 1252 33 discriminator 1
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	.loc 2 1252 27 discriminator 1
	movq	-176(%rbp), %rax
	addq	$13, %rax
	.loc 2 1252 3 discriminator 1
	cmpq	%rax, -200(%rbp)
	jne	.L165
	.loc 2 1255 11
	movq	-176(%rbp), %rax
	movzbl	12(%rax), %eax
	.loc 2 1255 6
	cmpb	$1, %al
	jne	.L166
	.loc 2 1256 5
	movq	-176(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edi
	call	wait_proc
.L166:
	.loc 2 1259 8
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	.loc 2 1260 3
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	cs_enter
	.loc 2 1261 19
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	movl	%eax, -188(%rbp)
	.loc 2 1262 18
	call	__errno_location@PLT
	.loc 2 1262 16
	movl	(%rax), %eax
	movl	%eax, -192(%rbp)
	.loc 2 1263 10
	movq	-184(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 1264 3
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	cs_leave
	.loc 2 1266 6
	cmpl	$0, -188(%rbp)
	je	.L167
	.loc 2 1267 5
	movq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 1267 29
	leaq	.LC114(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1267 5
	movl	-192(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L167:
	.loc 2 1268 6
	cmpq	$0, -168(%rbp)
	jne	.L168
	.loc 2 1269 14
	movq	-184(%rbp), %rax
	movq	%rax, temptail(%rip)
.L168:
	.loc 2 1270 3
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1271 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L169
	call	__stack_chk_fail@PLT
.L169:
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	zaptemp, .-zaptemp
	.type	struct_month_cmp, @function
struct_month_cmp:
.LFB74:
	.loc 2 1277 1
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
	.loc 2 1278 23
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1279 23
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1280 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1281 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	struct_month_cmp, .-struct_month_cmp
	.type	inittables, @function
inittables:
.LFB75:
	.loc 2 1289 1
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
	.loc 2 1292 10
	movq	$0, -64(%rbp)
	.loc 2 1292 3
	jmp	.L173
.L176:
	.loc 2 1294 19
	movq	-64(%rbp), %rax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	field_sep
	.loc 2 1294 17
	leaq	blanks(%rip), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	.loc 2 1295 26
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 1295 24
	testl	%eax, %eax
	sete	%dl
	.loc 2 1295 22
	leaq	nonprinting(%rip), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	.loc 2 1296 28
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	.loc 2 1296 40
	testl	%eax, %eax
	jne	.L174
	.loc 2 1296 45 discriminator 1
	movq	-64(%rbp), %rax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	field_sep
	.loc 2 1296 43 discriminator 1
	xorl	$1, %eax
	.loc 2 1296 40 discriminator 1
	testb	%al, %al
	je	.L174
	.loc 2 1296 40 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L175
.L174:
	.loc 2 1296 40 discriminator 4
	movl	$0, %eax
.L175:
	.loc 2 1296 40 discriminator 6
	andl	$1, %eax
	.loc 2 1296 24 is_stmt 1 discriminator 6
	leaq	nondictionary(%rip), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	.loc 2 1297 25 discriminator 6
	movq	-64(%rbp), %rax
	movl	%eax, %edi
	call	toupper@PLT
	.loc 2 1297 23 discriminator 6
	movl	%eax, %ecx
	leaq	fold_toupper(%rip), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movb	%cl, (%rax)
	.loc 2 1292 30 discriminator 6
	addq	$1, -64(%rbp)
.L173:
	.loc 2 1292 3 discriminator 2
	cmpq	$255, -64(%rbp)
	jbe	.L176
	.loc 2 1302 7
	movzbl	hard_LC_TIME(%rip), %eax
	.loc 2 1302 6
	testb	%al, %al
	je	.L183
	.loc 2 1304 14
	movq	$0, -64(%rbp)
	.loc 2 1304 7
	jmp	.L178
.L182:
.LBB18:
	.loc 2 1311 36
	movq	-64(%rbp), %rax
	addl	$131086, %eax
	.loc 2 1311 15
	movl	%eax, %edi
	call	nl_langinfo@PLT
	movq	%rax, -40(%rbp)
	.loc 2 1312 19
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	.loc 2 1313 37
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 1313 28
	movq	-64(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	monthtab(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	.loc 2 1314 31
	movq	-64(%rbp), %rax
	addl	$1, %eax
	movl	%eax, %ecx
	.loc 2 1314 27
	movq	-64(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+monthtab(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	.loc 2 1316 22
	movq	$0, -48(%rbp)
	.loc 2 1316 18
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 2 1316 11
	jmp	.L179
.L181:
	.loc 2 1317 19
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	.loc 2 1317 16
	testl	%eax, %eax
	jne	.L180
	.loc 2 1318 51
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1318 40
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %ecx
	.loc 2 1318 21
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 1318 19
	movq	-24(%rbp), %rdx
	addq	%rax, %rdx
	.loc 2 1318 39
	movslq	%ecx, %rax
	leaq	fold_toupper(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	.loc 2 1318 25
	movb	%al, (%rdx)
.L180:
	.loc 2 1316 39 discriminator 2
	addq	$1, -56(%rbp)
.L179:
	.loc 2 1316 11 discriminator 1
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L181
	.loc 2 1319 15 discriminator 2
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1319 19 discriminator 2
	movb	$0, (%rax)
.LBE18:
	.loc 2 1304 41 discriminator 2
	addq	$1, -64(%rbp)
.L178:
	.loc 2 1304 7 discriminator 1
	cmpq	$11, -64(%rbp)
	jbe	.L182
	.loc 2 1321 7
	leaq	struct_month_cmp(%rip), %rcx
	movl	$16, %edx
	movl	$12, %esi
	leaq	monthtab(%rip), %rdi
	call	qsort@PLT
.L183:
	.loc 2 1324 1
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	inittables, .-inittables
	.section	.rodata
.LC115:
	.string	"invalid --%s argument %s"
.LC116:
	.string	"2"
.LC117:
	.string	"minimum --%s argument is %s"
.LC118:
	.string	"--%s argument %s too large"
	.align 8
.LC119:
	.string	"maximum --%s argument with current rlimit is %s"
	.text
	.type	specify_nmerge, @function
specify_nmerge:
.LFB76:
	.loc 2 1331 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -84(%rbp)
	movl	%esi, %eax
	movq	%rdx, -96(%rbp)
	movb	%al, -88(%rbp)
	.loc 2 1331 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1334 25
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -80(%rbp)
	.loc 2 1339 31
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	getrlimit@PLT
	.loc 2 1339 16
	testl	%eax, %eax
	jne	.L185
	.loc 2 1340 39 discriminator 1
	movq	-64(%rbp), %rax
	.loc 2 1339 16 discriminator 1
	subl	$3, %eax
	jmp	.L186
.L185:
	.loc 2 1339 16 is_stmt 0 discriminator 2
	movl	$17, %eax
.L186:
	.loc 2 1339 16 discriminator 4
	movl	%eax, -76(%rbp)
	.loc 2 1344 6 is_stmt 1 discriminator 4
	cmpl	$0, -80(%rbp)
	jne	.L187
	.loc 2 1346 14
	movq	-72(%rbp), %rax
	movl	%eax, nmerge(%rip)
	.loc 2 1347 18
	movl	nmerge(%rip), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	.loc 2 1347 10
	cmpq	%rax, %rdx
	je	.L188
	.loc 2 1348 11
	movl	$1, -80(%rbp)
	jmp	.L187
.L188:
	.loc 2 1351 22
	movl	nmerge(%rip), %eax
	.loc 2 1351 14
	cmpl	$1, %eax
	ja	.L189
.LBB19:
	.loc 2 1353 15
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	long_options(%rip), %rax
	movq	(%rdx,%rax), %rbx
	.loc 2 1353 28
	leaq	.LC115(%rip), %rdi
	call	gettext@PLT
	.loc 2 1353 15
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1355 15
	leaq	.LC116(%rip), %rdi
	call	quote@PLT
	movq	%rax, %r12
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	long_options(%rip), %rax
	movq	(%rdx,%rax), %rbx
	leaq	.LC117(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L189:
.LBE19:
	.loc 2 1359 31
	movl	nmerge(%rip), %eax
	.loc 2 1359 19
	cmpl	%eax, -76(%rbp)
	jnb	.L194
	.loc 2 1361 17
	movl	$1, -80(%rbp)
.L187:
	.loc 2 1368 6
	cmpl	$1, -80(%rbp)
	jne	.L192
.LBB20:
	.loc 2 1371 7
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	long_options(%rip), %rax
	movq	(%rdx,%rax), %rbx
	.loc 2 1371 20
	leaq	.LC118(%rip), %rdi
	call	gettext@PLT
	.loc 2 1371 7
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1373 7
	leaq	-35(%rbp), %rdx
	movl	-76(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	uinttostr@PLT
	movq	%rax, %r12
	movl	-84(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	long_options(%rip), %rax
	movq	(%rdx,%rax), %rbx
	leaq	.LC119(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L192:
.LBE20:
	.loc 2 1379 5
	movsbl	-88(%rbp), %edx
	movq	-96(%rbp), %rcx
	movl	-84(%rbp), %esi
	movl	-80(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L194:
	.loc 2 1364 13
	nop
	.loc 2 1380 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L193
	call	__stack_chk_fail@PLT
.L193:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	specify_nmerge, .-specify_nmerge
	.section	.rodata
.LC120:
	.string	"EgGkKmMPtTYZ"
	.text
	.type	specify_sort_size, @function
specify_sort_size:
.LFB77:
	.loc 2 1385 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	%esi, %eax
	movq	%rdx, -64(%rbp)
	movb	%al, -56(%rbp)
	.loc 2 1385 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1388 25
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	leaq	.LC120(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -36(%rbp)
	.loc 2 1391 6
	cmpl	$0, -36(%rbp)
	jne	.L196
	.loc 2 1391 26 discriminator 1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 1391 23 discriminator 1
	cmpl	$9, %eax
	ja	.L196
	.loc 2 1393 13
	movq	-32(%rbp), %rax
	.loc 2 1393 10
	movabsq	$18014398509481983, %rdx
	cmpq	%rdx, %rax
	ja	.L197
	.loc 2 1394 11
	movq	-32(%rbp), %rax
	salq	$10, %rax
	movq	%rax, -32(%rbp)
	jmp	.L196
.L197:
	.loc 2 1396 11
	movl	$1, -36(%rbp)
.L196:
	.loc 2 1400 6
	cmpl	$2, -36(%rbp)
	jne	.L215
	.loc 2 1400 43 discriminator 1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 1400 40 discriminator 1
	cmpl	$9, %eax
	ja	.L215
	.loc 2 1400 75 discriminator 2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1400 64 discriminator 2
	testb	%al, %al
	jne	.L215
	.loc 2 1401 19
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 1401 5
	cmpl	$37, %eax
	je	.L199
	cmpl	$98, %eax
	jne	.L198
	.loc 2 1404 11
	movl	$0, -36(%rbp)
	.loc 2 1405 9
	jmp	.L198
.L199:
.LBB21:
	.loc 2 1409 24
	call	physmem_total@PLT
	movapd	%xmm0, %xmm1
	.loc 2 1409 41
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	js	.L200
	cvtsi2sdq	%rax, %xmm0
	jmp	.L201
.L200:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L201:
	mulsd	%xmm1, %xmm0
	.loc 2 1409 18
	movsd	.LC121(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	.loc 2 1412 14
	movsd	.LC122(%rip), %xmm0
	comisd	-16(%rbp), %xmm0
	jbe	.L214
	.loc 2 1414 17
	movsd	-16(%rbp), %xmm0
	comisd	.LC123(%rip), %xmm0
	jnb	.L204
	movsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	jmp	.L205
.L204:
	movsd	-16(%rbp), %xmm0
	movsd	.LC123(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L205:
	movq	%rax, -32(%rbp)
	.loc 2 1415 17
	movl	$0, -36(%rbp)
.LBE21:
	.loc 2 1420 9
	jmp	.L198
.L214:
.LBB22:
	.loc 2 1418 15
	movl	$1, -36(%rbp)
.LBE22:
	.loc 2 1420 9
	jmp	.L198
.L215:
	.loc 2 1423 3
	nop
.L198:
	.loc 2 1423 6
	cmpl	$0, -36(%rbp)
	jne	.L207
	.loc 2 1427 13
	movq	-32(%rbp), %rdx
	movq	sort_size(%rip), %rax
	.loc 2 1427 10
	cmpq	%rax, %rdx
	jb	.L216
	.loc 2 1430 17
	movq	-32(%rbp), %rax
	movq	%rax, sort_size(%rip)
	.loc 2 1431 21
	movq	sort_size(%rip), %rdx
	movq	-32(%rbp), %rax
	.loc 2 1431 10
	cmpq	%rax, %rdx
	jne	.L210
	.loc 2 1433 23
	movl	nmerge(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	sort_size(%rip), %rax
	cmpq	%rax, %rdx
	cmovnb	%rdx, %rax
	.loc 2 1433 21
	movq	%rax, sort_size(%rip)
	.loc 2 1434 11
	jmp	.L195
.L210:
	.loc 2 1437 9
	movl	$1, -36(%rbp)
.L207:
	.loc 2 1440 3
	movsbl	-56(%rbp), %edx
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L216:
	.loc 2 1428 9
	nop
.L195:
	.loc 2 1441 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L212
	call	__stack_chk_fail@PLT
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	specify_sort_size, .-specify_sort_size
	.section	.rodata
	.align 8
.LC124:
	.string	"number in parallel must be nonzero"
	.text
	.type	specify_nthreads, @function
specify_nthreads:
.LFB78:
	.loc 2 1446 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, %eax
	movq	%rdx, -48(%rbp)
	movb	%al, -40(%rbp)
	.loc 2 1446 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1448 25
	leaq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -20(%rbp)
	.loc 2 1449 6
	cmpl	$1, -20(%rbp)
	jne	.L218
	.loc 2 1450 12
	movq	$-1, %rax
	jmp	.L222
.L218:
	.loc 2 1451 6
	cmpl	$0, -20(%rbp)
	je	.L220
	.loc 2 1452 5
	movsbl	-40(%rbp), %edx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %esi
	movl	-20(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L220:
	.loc 2 1455 16
	movq	-16(%rbp), %rax
	.loc 2 1455 6
	testq	%rax, %rax
	jne	.L221
.LBB23:
	.loc 2 1456 5
	leaq	.LC124(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L221:
.LBE23:
	.loc 2 1457 10
	movq	-16(%rbp), %rax
.L222:
	.loc 2 1458 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L223
	.loc 2 1458 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	specify_nthreads, .-specify_nthreads
	.type	default_sort_size, @function
default_sort_size:
.LFB79:
	.loc 2 1463 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.loc 2 1463 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1468 10
	movq	$-1, -64(%rbp)
	.loc 2 1470 7
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	getrlimit@PLT
	.loc 2 1470 6
	testl	%eax, %eax
	jne	.L225
	.loc 2 1470 54 discriminator 1
	movq	-32(%rbp), %rax
	.loc 2 1470 45 discriminator 1
	cmpq	%rax, -64(%rbp)
	jbe	.L225
	.loc 2 1471 10
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L225:
	.loc 2 1473 7
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$9, %edi
	call	getrlimit@PLT
	.loc 2 1473 6
	testl	%eax, %eax
	jne	.L226
	.loc 2 1473 52 discriminator 1
	movq	-32(%rbp), %rax
	.loc 2 1473 43 discriminator 1
	cmpq	%rax, -64(%rbp)
	jbe	.L226
	.loc 2 1474 10
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L226:
	.loc 2 1479 8
	movq	-64(%rbp), %rax
	shrq	%rax
	movq	%rax, -64(%rbp)
	.loc 2 1484 7
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$5, %edi
	call	getrlimit@PLT
	.loc 2 1484 6
	testl	%eax, %eax
	jne	.L227
	.loc 2 1484 53 discriminator 1
	movq	-32(%rbp), %rax
	.loc 2 1484 63 discriminator 1
	shrq	$4, %rax
	movq	%rax, %rdx
	.loc 2 1484 68 discriminator 1
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	.loc 2 1484 44 discriminator 1
	cmpq	%rax, -64(%rbp)
	jbe	.L227
	.loc 2 1485 18
	movq	-32(%rbp), %rax
	.loc 2 1485 28
	shrq	$4, %rax
	movq	%rax, %rdx
	.loc 2 1485 10
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, -64(%rbp)
.L227:
	.loc 2 1490 18
	call	physmem_available@PLT
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	.loc 2 1491 18
	call	physmem_total@PLT
	movq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	.loc 2 1492 16
	movsd	-48(%rbp), %xmm0
	movsd	.LC125(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L248
	.loc 2 1492 16 is_stmt 0 discriminator 1
	movsd	-56(%rbp), %xmm0
	jmp	.L230
.L248:
	.loc 2 1492 16 discriminator 2
	movsd	-48(%rbp), %xmm0
	movsd	.LC125(%rip), %xmm1
	divsd	%xmm1, %xmm0
.L230:
	.loc 2 1492 10 is_stmt 1 discriminator 4
	movsd	%xmm0, -40(%rbp)
	.loc 2 1495 13 discriminator 4
	movsd	-48(%rbp), %xmm1
	movsd	.LC126(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	.loc 2 1495 20 discriminator 4
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	js	.L231
	cvtsi2sdq	%rax, %xmm0
	jmp	.L232
.L231:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L232:
	.loc 2 1495 6 discriminator 4
	comisd	%xmm1, %xmm0
	jbe	.L233
	.loc 2 1496 18
	movsd	-48(%rbp), %xmm1
	movsd	.LC126(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	.loc 2 1496 10
	comisd	.LC123(%rip), %xmm0
	jnb	.L235
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	jmp	.L236
.L235:
	movsd	.LC123(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -64(%rbp)
.L236:
	movq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
.L233:
	.loc 2 1501 11
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	js	.L237
	cvtsi2sdq	%rax, %xmm0
	jmp	.L238
.L237:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L238:
	.loc 2 1501 6
	comisd	-40(%rbp), %xmm0
	jbe	.L239
	.loc 2 1502 10
	movsd	-40(%rbp), %xmm0
	comisd	.LC123(%rip), %xmm0
	jnb	.L241
	movsd	-40(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	jmp	.L242
.L241:
	movsd	-40(%rbp), %xmm0
	movsd	.LC123(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -64(%rbp)
.L242:
	movq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
.L239:
	.loc 2 1503 10
	movl	nmerge(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	cmpq	%rax, -64(%rbp)
	cmovnb	-64(%rbp), %rax
	.loc 2 1504 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L244
	call	__stack_chk_fail@PLT
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	default_sort_size, .-default_sort_size
	.section	.rodata
.LC127:
	.string	"stat failed"
	.text
	.type	sort_buffer_size, @function
sort_buffer_size:
.LFB80:
	.loc 2 1517 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	.loc 2 1517 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1523 10
	movq	-264(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	.loc 2 1527 10
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -216(%rbp)
.LBB24:
	.loc 2 1529 15
	movq	$0, -208(%rbp)
	.loc 2 1529 3
	jmp	.L250
.L264:
.LBB25:
	.loc 2 1538 11
	movq	-208(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jnb	.L251
	.loc 2 1535 41 discriminator 1
	movq	-208(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1535 23 discriminator 1
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %edx
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	fstat@PLT
	.loc 2 1538 11 discriminator 1
	testl	%eax, %eax
	setne	%al
	jmp	.L252
.L251:
	.loc 2 1536 14 discriminator 2
	movq	-208(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC99(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1538 11 discriminator 2
	testl	%eax, %eax
	jne	.L253
	.loc 2 1536 38 discriminator 3
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	fstat@PLT
	.loc 2 1538 11 discriminator 3
	testl	%eax, %eax
	setne	%al
	jmp	.L252
.L253:
	.loc 2 1537 25 discriminator 4
	movq	-208(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1537 14 discriminator 4
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 1538 11 discriminator 4
	testl	%eax, %eax
	setne	%al
.L252:
	.loc 2 1535 10
	testb	%al, %al
	je	.L255
	.loc 2 1539 42
	movq	-208(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1539 9
	movq	(%rax), %rbx
	.loc 2 1539 19
	leaq	.LC127(%rip), %rdi
	call	gettext@PLT
	.loc 2 1539 9
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	sort_die
.L255:
	.loc 2 1541 11
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 1541 10
	cmpl	$32768, %eax
	jne	.L256
	.loc 2 1542 19
	movq	-128(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.L257
.L256:
	.loc 2 1547 15
	movq	sort_size(%rip), %rax
	.loc 2 1547 14
	testq	%rax, %rax
	je	.L258
	.loc 2 1548 20
	movq	sort_size(%rip), %rax
	jmp	.L263
.L258:
	.loc 2 1549 21
	movq	$131072, -200(%rbp)
.L257:
	.loc 2 1552 11
	movq	size_bound.8103(%rip), %rax
	.loc 2 1552 10
	testq	%rax, %rax
	jne	.L260
	.loc 2 1554 22
	movq	sort_size(%rip), %rax
	movq	%rax, size_bound.8103(%rip)
	.loc 2 1555 15
	movq	size_bound.8103(%rip), %rax
	.loc 2 1555 14
	testq	%rax, %rax
	jne	.L260
	.loc 2 1556 26
	call	default_sort_size
	.loc 2 1556 24
	movq	%rax, size_bound.8103(%rip)
.L260:
	.loc 2 1562 30
	movq	-200(%rbp), %rax
	imulq	-192(%rbp), %rax
	.loc 2 1562 18
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	.loc 2 1563 35
	movq	-184(%rbp), %rax
	movl	$0, %edx
	divq	-192(%rbp)
	movq	%rax, %rdx
	.loc 2 1563 21
	movq	-200(%rbp), %rax
	.loc 2 1563 10
	cmpq	%rax, %rdx
	jne	.L261
	.loc 2 1564 25
	movq	size_bound.8103(%rip), %rax
	subq	-216(%rbp), %rax
	.loc 2 1564 11
	cmpq	%rax, -184(%rbp)
	jb	.L262
.L261:
	.loc 2 1565 16
	movq	size_bound.8103(%rip), %rax
	jmp	.L263
.L262:
	.loc 2 1566 12
	movq	-184(%rbp), %rax
	addq	%rax, -216(%rbp)
.LBE25:
	.loc 2 1529 35
	addq	$1, -208(%rbp)
.L250:
	.loc 2 1529 3 discriminator 1
	movq	-208(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jb	.L264
.LBE24:
	.loc 2 1569 10
	movq	-216(%rbp), %rax
.L263:
	.loc 2 1570 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L265
	call	__stack_chk_fail@PLT
.L265:
	addq	$264, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	sort_buffer_size, .-sort_buffer_size
	.type	initbuf, @function
initbuf:
.LFB81:
	.loc 2 1578 1
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
.L270:
	.loc 2 1585 13
	movq	-24(%rbp), %rax
	andq	$-32, %rax
	addq	$32, %rax
	movq	%rax, -24(%rbp)
	.loc 2 1586 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	.loc 2 1586 16
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1587 14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1587 10
	testq	%rax, %rax
	jne	.L272
	.loc 2 1589 13
	movq	-24(%rbp), %rax
	shrq	%rax
	movq	%rax, -24(%rbp)
	.loc 2 1590 31
	movq	-16(%rbp), %rax
	addq	$1, %rax
	.loc 2 1590 10
	cmpq	%rax, -24(%rbp)
	ja	.L270
	.loc 2 1591 9
	call	xalloc_die@PLT
.L272:
	.loc 2 1588 9
	nop
	.loc 2 1594 19
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 2 1595 14
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 2 1596 39
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 1596 30
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 1596 25
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 2 1596 18
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 1596 13
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1597 12
	movq	-8(%rbp), %rax
	movb	$0, 48(%rax)
	.loc 2 1598 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	initbuf, .-initbuf
	.type	buffer_linelim, @function
buffer_linelim:
.LFB82:
	.loc 2 1604 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 1605 22
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 1605 33
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1605 9
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 1606 10
	movq	-8(%rbp), %rax
	.loc 2 1607 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	buffer_linelim, .-buffer_linelim
	.type	begfield, @function
begfield:
.LFB83:
	.loc 2 1614 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 1615 9
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1615 44
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1615 53
	leaq	-1(%rax), %rdx
	.loc 2 1615 28
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 1616 10
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1617 10
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1622 11
	movl	tab(%rip), %eax
	.loc 2 1622 6
	cmpl	$128, %eax
	je	.L283
	.loc 2 1623 11
	jmp	.L277
.L280:
	.loc 2 1626 11
	addq	$1, -32(%rbp)
.L278:
	.loc 2 1625 15
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L279
	.loc 2 1625 29 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	.loc 2 1625 34 discriminator 1
	movl	tab(%rip), %eax
	.loc 2 1625 26 discriminator 1
	cmpl	%eax, %edx
	jne	.L280
.L279:
	.loc 2 1627 12
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L277
	.loc 2 1628 11
	addq	$1, -32(%rbp)
.L277:
	.loc 2 1623 11
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L281
	.loc 2 1623 30 discriminator 1
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 1623 22 discriminator 1
	testq	%rax, %rax
	jne	.L278
	jmp	.L281
.L286:
	.loc 2 1634 11
	addq	$1, -32(%rbp)
.L284:
	.loc 2 1633 15
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L287
	.loc 2 1633 46 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1633 36 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1633 35 discriminator 1
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1633 26 discriminator 1
	testb	%al, %al
	jne	.L286
	.loc 2 1635 15
	jmp	.L287
.L288:
	.loc 2 1636 11
	addq	$1, -32(%rbp)
.L287:
	.loc 2 1635 15
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L283
	.loc 2 1635 47 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1635 37 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1635 36 discriminator 1
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1635 29 discriminator 1
	xorl	$1, %eax
	.loc 2 1635 26 discriminator 1
	testb	%al, %al
	jne	.L288
.L283:
	.loc 2 1631 11
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L281
	.loc 2 1631 30 discriminator 1
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 1631 22 discriminator 1
	testq	%rax, %rax
	jne	.L284
.L281:
	.loc 2 1641 10
	movq	-48(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 1641 6
	testb	%al, %al
	je	.L290
	.loc 2 1642 11
	jmp	.L291
.L292:
	.loc 2 1643 7
	addq	$1, -32(%rbp)
.L291:
	.loc 2 1642 11
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L290
	.loc 2 1642 42 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1642 32 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1642 31 discriminator 1
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1642 22 discriminator 1
	testb	%al, %al
	jne	.L292
.L290:
	.loc 2 1646 9
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1646 7
	cmpq	%rax, -16(%rbp)
	cmovbe	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1648 10
	movq	-32(%rbp), %rax
	.loc 2 1649 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	begfield, .-begfield
	.type	limfield, @function
limfield:
.LFB84:
	.loc 2 1656 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 1657 9
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1657 44
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1657 53
	leaq	-1(%rax), %rdx
	.loc 2 1657 28
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 1658 10
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1658 30
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1660 6
	cmpq	$0, -8(%rbp)
	jne	.L295
	.loc 2 1661 10
	addq	$1, -24(%rbp)
.L295:
	.loc 2 1670 11
	movl	tab(%rip), %eax
	.loc 2 1670 6
	cmpl	$128, %eax
	je	.L304
	.loc 2 1671 11
	jmp	.L297
.L300:
	.loc 2 1674 11
	addq	$1, -32(%rbp)
.L298:
	.loc 2 1673 15
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L299
	.loc 2 1673 29 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	.loc 2 1673 34 discriminator 1
	movl	tab(%rip), %eax
	.loc 2 1673 26 discriminator 1
	cmpl	%eax, %edx
	jne	.L300
.L299:
	.loc 2 1675 12
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L297
	.loc 2 1675 23 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L301
	.loc 2 1675 33 discriminator 2
	cmpq	$0, -8(%rbp)
	je	.L297
.L301:
	.loc 2 1676 11
	addq	$1, -32(%rbp)
.L297:
	.loc 2 1671 11
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L302
	.loc 2 1671 30 discriminator 1
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 1671 22 discriminator 1
	testq	%rax, %rax
	jne	.L298
	jmp	.L302
.L307:
	.loc 2 1682 11
	addq	$1, -32(%rbp)
.L305:
	.loc 2 1681 15
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L308
	.loc 2 1681 46 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1681 36 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1681 35 discriminator 1
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1681 26 discriminator 1
	testb	%al, %al
	jne	.L307
	.loc 2 1683 15
	jmp	.L308
.L309:
	.loc 2 1684 11
	addq	$1, -32(%rbp)
.L308:
	.loc 2 1683 15
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L304
	.loc 2 1683 47 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1683 37 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1683 36 discriminator 1
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1683 29 discriminator 1
	xorl	$1, %eax
	.loc 2 1683 26 discriminator 1
	testb	%al, %al
	jne	.L309
.L304:
	.loc 2 1679 11
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L302
	.loc 2 1679 30 discriminator 1
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 1679 22 discriminator 1
	testq	%rax, %rax
	jne	.L305
.L302:
	.loc 2 1738 6
	cmpq	$0, -8(%rbp)
	je	.L311
	.loc 2 1742 14
	movq	-48(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 2 1742 10
	testb	%al, %al
	je	.L312
	.loc 2 1743 15
	jmp	.L313
.L314:
	.loc 2 1744 11
	addq	$1, -32(%rbp)
.L313:
	.loc 2 1743 15
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L312
	.loc 2 1743 46 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1743 36 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1743 35 discriminator 1
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1743 26 discriminator 1
	testb	%al, %al
	jne	.L314
.L312:
	.loc 2 1747 13
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1747 11
	cmpq	%rax, -16(%rbp)
	cmovbe	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.L311:
	.loc 2 1750 10
	movq	-32(%rbp), %rax
	.loc 2 1751 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	limfield, .-limfield
	.section	.rodata
.LC128:
	.string	"read failed"
	.text
	.type	fillbuf, @function
fillbuf:
.LFB85:
	.loc 2 1761 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	.loc 2 1761 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1762 26
	movq	keylist(%rip), %rax
	movq	%rax, -56(%rbp)
	.loc 2 1763 8
	movzbl	eolchar(%rip), %eax
	movb	%al, -113(%rbp)
	.loc 2 1764 10
	movq	-136(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 2 1765 40
	movq	merge_buffer_size(%rip), %rax
	.loc 2 1765 10
	subq	$34, %rax
	movq	%rax, -104(%rbp)
	.loc 2 1767 10
	movq	-136(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 1767 6
	testb	%al, %al
	je	.L317
	.loc 2 1768 12
	movl	$0, %eax
	jmp	.L318
.L317:
	.loc 2 1770 10
	movq	-136(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 1770 23
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1770 6
	cmpq	%rax, %rdx
	je	.L338
	.loc 2 1772 7
	movq	-136(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 1772 29
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 1772 40
	movq	-136(%rbp), %rax
	movq	8(%rax), %rsi
	.loc 2 1772 52
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1772 47
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	%rax, %rcx
	.loc 2 1772 19
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1772 7
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	.loc 2 1773 22
	movq	-136(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 1773 17
	movq	-136(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1774 19
	movq	-136(%rbp), %rax
	movq	$0, 16(%rax)
.L338:
.LBB26:
	.loc 2 1779 22
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 1779 33
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1779 13
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	.loc 2 1780 30
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	buffer_linelim
	movq	%rax, -40(%rbp)
	.loc 2 1781 40
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1781 35
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	.loc 2 1781 20
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	.loc 2 1782 44
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1782 53
	imulq	-48(%rbp), %rax
	.loc 2 1782 39
	negq	%rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1782 66
	subq	-96(%rbp), %rax
	.loc 2 1782 14
	movq	%rax, -80(%rbp)
	.loc 2 1783 29
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1783 66
	testq	%rax, %rax
	je	.L320
	.loc 2 1783 44 discriminator 1
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 1783 57 discriminator 1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1783 66 discriminator 1
	addq	%rdx, %rax
	jmp	.L321
.L320:
	.loc 2 1783 66 is_stmt 0 discriminator 2
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
.L321:
	.loc 2 1783 13 is_stmt 1 discriminator 4
	movq	%rax, -72(%rbp)
	.loc 2 1785 13 discriminator 4
	jmp	.L322
.L336:
.LBB27:
	.loc 2 1792 36
	movq	-80(%rbp), %rax
	subq	$1, %rax
	.loc 2 1792 55
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rcx
	.loc 2 1792 18
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -32(%rbp)
	.loc 2 1793 31
	movq	-144(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread_unlocked@PLT
	movq	%rax, -24(%rbp)
	.loc 2 1794 17
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 2 1796 17
	movq	-24(%rbp), %rax
	subq	%rax, -80(%rbp)
	.loc 2 1798 14
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L326
	.loc 2 1800 19
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1800 18
	testl	%eax, %eax
	je	.L324
	.loc 2 1801 27
	leaq	.LC128(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1801 17
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sort_die
.L324:
	.loc 2 1802 19
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1802 18
	testl	%eax, %eax
	je	.L326
	.loc 2 1804 28
	movq	-136(%rbp), %rax
	movb	$1, 48(%rax)
	.loc 2 1805 26
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1805 22
	cmpq	%rax, -64(%rbp)
	jne	.L325
	.loc 2 1806 28
	movl	$0, %eax
	jmp	.L318
.L325:
	.loc 2 1807 22
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.L326
	.loc 2 1807 53 discriminator 1
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1807 44 discriminator 1
	cmpb	%al, -113(%rbp)
	je	.L326
	.loc 2 1808 28
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	.loc 2 1808 31
	movzbl	-113(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 1813 17
	jmp	.L326
.L334:
	.loc 2 1818 18
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 1819 19
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	.loc 2 1820 19
	subq	$32, -88(%rbp)
	.loc 2 1821 26
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 1822 34
	movq	-96(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 1822 28
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1823 27
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1823 25
	cmpq	%rax, -104(%rbp)
	cmovnb	-104(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 2 1824 21
	movq	-48(%rbp), %rax
	subq	%rax, -80(%rbp)
	.loc 2 1826 18
	cmpq	$0, -56(%rbp)
	je	.L327
	.loc 2 1830 38
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1832 35
	cmpq	$-1, %rax
	je	.L328
	.loc 2 1832 37 discriminator 1
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	limfield
	jmp	.L329
.L328:
	.loc 2 1832 35 discriminator 2
	movq	-16(%rbp), %rax
.L329:
	.loc 2 1830 32
	movq	-88(%rbp), %rdx
	movq	%rax, 24(%rdx)
	.loc 2 1834 26
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1834 22
	cmpq	$-1, %rax
	je	.L330
	.loc 2 1835 36
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	begfield
	.loc 2 1835 34
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L327
.L330:
	.loc 2 1838 30
	movq	-56(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 1838 26
	testb	%al, %al
	je	.L331
	.loc 2 1839 31
	jmp	.L332
.L333:
	.loc 2 1840 37
	addq	$1, -72(%rbp)
.L332:
	.loc 2 1839 49
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1839 39
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1839 38
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1839 31
	testb	%al, %al
	jne	.L333
.L331:
	.loc 2 1841 36
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L327:
	.loc 2 1845 26
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
.L326:
	.loc 2 1813 48
	movq	-64(%rbp), %rax
	subq	-96(%rbp), %rax
	.loc 2 1813 23
	movq	%rax, %rdx
	movsbl	-113(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -16(%rbp)
	.loc 2 1813 17
	cmpq	$0, -16(%rbp)
	jne	.L334
	.loc 2 1848 15
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 2 1849 18
	movq	-136(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 1849 14
	testb	%al, %al
	jne	.L340
.L322:
.LBE27:
	.loc 2 1785 25
	movq	-48(%rbp), %rax
	addq	$1, %rax
	.loc 2 1785 13
	cmpq	%rax, -80(%rbp)
	ja	.L336
	jmp	.L335
.L340:
.LBB28:
	.loc 2 1850 13
	nop
.L335:
.LBE28:
	.loc 2 1853 28
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1853 23
	movq	-96(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	.loc 2 1853 17
	movq	-136(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1854 21
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	buffer_linelim
	.loc 2 1854 42
	subq	-88(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	.loc 2 1854 19
	movq	-136(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 1855 14
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1855 10
	testq	%rax, %rax
	je	.L337
	.loc 2 1857 27
	movq	-96(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 1857 21
	movq	-136(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 2 1858 41
	movq	-104(%rbp), %rax
	addq	$34, %rax
	.loc 2 1858 29
	movq	%rax, merge_buffer_size(%rip)
	.loc 2 1859 18
	movl	$1, %eax
	jmp	.L318
.L337:
.LBB29:
	.loc 2 1866 32
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1866 40
	shrq	$5, %rax
	.loc 2 1866 16
	movq	%rax, -112(%rbp)
	.loc 2 1867 35
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1867 20
	leaq	-112(%rbp), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 1867 18
	movq	-136(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 2 1868 33
	movq	-112(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	.loc 2 1868 20
	movq	-136(%rbp), %rax
	movq	%rdx, 24(%rax)
.LBE29:
.LBE26:
	.loc 2 1778 5
	jmp	.L338
.L318:
	.loc 2 1871 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L339
	call	__stack_chk_fail@PLT
.L339:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	fillbuf, .-fillbuf
	.section	.rodata
	.align 32
	.type	unit_order, @object
	.size	unit_order, 256
unit_order:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\006"
	.string	"\003"
	.string	""
	.string	""
	.string	"\001"
	.string	"\002"
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	""
	.string	"\b\007"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.text
	.type	traverse_raw_number, @function
traverse_raw_number:
.LFB86:
	.loc 2 1908 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 1909 15
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1911 17
	movb	$0, -11(%rbp)
	.loc 2 1912 8
	movb	$0, -10(%rbp)
	.loc 2 1920 9
	jmp	.L342
.L344:
	.loc 2 1922 10
	movzbl	-11(%rbp), %eax
	cmpb	-9(%rbp), %al
	jnb	.L343
	.loc 2 1923 19
	movzbl	-9(%rbp), %eax
	movb	%al, -11(%rbp)
.L343:
	.loc 2 1928 34
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	.loc 2 1928 37
	movl	thousands_sep(%rip), %eax
	.loc 2 1928 31
	cmpl	%eax, %edx
	sete	%al
	movb	%al, -10(%rbp)
	.loc 2 1929 10
	cmpb	$0, -10(%rbp)
	je	.L342
	.loc 2 1930 9
	addq	$1, -8(%rbp)
.L342:
	.loc 2 1920 10
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	subl	$48, %eax
	.loc 2 1920 9
	cmpl	$9, %eax
	jbe	.L344
	.loc 2 1933 6
	cmpb	$0, -10(%rbp)
	je	.L345
	.loc 2 1936 19
	movq	-8(%rbp), %rax
	leaq	-2(%rax), %rdx
	.loc 2 1936 15
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1937 14
	movzbl	-11(%rbp), %eax
	jmp	.L346
.L345:
	.loc 2 1940 10
	movzbl	-9(%rbp), %edx
	movl	decimal_point(%rip), %eax
	.loc 2 1940 6
	cmpl	%eax, %edx
	jne	.L347
	.loc 2 1941 11
	jmp	.L348
.L349:
	.loc 2 1942 10
	movzbl	-11(%rbp), %eax
	cmpb	-9(%rbp), %al
	jnb	.L348
	.loc 2 1943 19
	movzbl	-9(%rbp), %eax
	movb	%al, -11(%rbp)
.L348:
	.loc 2 1941 12
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	subl	$48, %eax
	.loc 2 1941 11
	cmpl	$9, %eax
	jbe	.L349
.L347:
	.loc 2 1945 15
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	.loc 2 1945 11
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1946 10
	movzbl	-11(%rbp), %eax
.L346:
	.loc 2 1947 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	traverse_raw_number, .-traverse_raw_number
	.type	find_unit_order, @function
find_unit_order:
.LFB87:
	.loc 2 1956 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 1956 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1957 22
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1957 8
	cmpb	$45, %al
	sete	%al
	movb	%al, -23(%rbp)
	.loc 2 1958 26
	movzbl	-23(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1958 15
	movq	%rax, -16(%rbp)
	.loc 2 1959 29
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	traverse_raw_number
	movb	%al, -22(%rbp)
	.loc 2 1960 6
	cmpb	$48, -22(%rbp)
	jbe	.L351
.LBB30:
	.loc 2 1962 26
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1962 21
	movb	%al, -21(%rbp)
	.loc 2 1963 29
	movzbl	-21(%rbp), %eax
	cltq
	leaq	unit_order(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1963 11
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 2 1964 35
	cmpb	$0, -23(%rbp)
	je	.L352
	.loc 2 1964 35 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax
	negl	%eax
	jmp	.L355
.L352:
	.loc 2 1964 35 discriminator 2
	movl	-20(%rbp), %eax
	jmp	.L355
.L351:
.LBE30:
	.loc 2 1967 12 is_stmt 1
	movl	$0, %eax
.L355:
	.loc 2 1968 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L356
	.loc 2 1968 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L356:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	find_unit_order, .-find_unit_order
	.type	human_numcompare, @function
human_numcompare:
.LFB88:
	.loc 2 1975 1 is_stmt 1
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
	movq	%rsi, -48(%rbp)
	.loc 2 1976 9
	jmp	.L358
.L359:
	.loc 2 1977 6
	addq	$1, -40(%rbp)
.L358:
	.loc 2 1976 27
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1976 17
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1976 16
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1976 9
	testb	%al, %al
	jne	.L359
	.loc 2 1978 9
	jmp	.L360
.L361:
	.loc 2 1979 6
	addq	$1, -48(%rbp)
.L360:
	.loc 2 1978 27
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1978 17
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1978 16
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1978 9
	testb	%al, %al
	jne	.L361
	.loc 2 1981 14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	find_unit_order
	movl	%eax, %ebx
	.loc 2 1981 36
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	find_unit_order
	.loc 2 1981 7
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -20(%rbp)
	.loc 2 1982 23
	cmpl	$0, -20(%rbp)
	jne	.L362
	.loc 2 1982 25 discriminator 1
	movl	thousands_sep(%rip), %ecx
	movl	decimal_point(%rip), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strnumcmp@PLT
	.loc 2 1982 23 discriminator 1
	jmp	.L364
.L362:
	.loc 2 1982 23 is_stmt 0 discriminator 2
	movl	-20(%rbp), %eax
.L364:
	.loc 2 1983 1 is_stmt 1 discriminator 5
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	human_numcompare, .-human_numcompare
	.type	numcompare, @function
numcompare:
.LFB89:
	.loc 2 1991 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 1992 9
	jmp	.L366
.L367:
	.loc 2 1993 6
	addq	$1, -8(%rbp)
.L366:
	.loc 2 1992 27
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1992 17
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1992 16
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1992 9
	testb	%al, %al
	jne	.L367
	.loc 2 1994 9
	jmp	.L368
.L369:
	.loc 2 1995 6
	addq	$1, -16(%rbp)
.L368:
	.loc 2 1994 27
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1994 17
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1994 16
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1994 9
	testb	%al, %al
	jne	.L369
	.loc 2 1997 10
	movl	thousands_sep(%rip), %ecx
	movl	decimal_point(%rip), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strnumcmp@PLT
	.loc 2 1998 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	numcompare, .-numcompare
	.type	nan_compare, @function
nan_compare:
.LFB90:
	.loc 2 2006 1
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
	.loc 2 2006 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 2008 3
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 2009 7
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtold@PLT
	.loc 2 2009 5
	fstpt	-48(%rbp)
	.loc 2 2012 3
	leaq	-32(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 2013 7
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtold@PLT
	.loc 2 2013 5
	fstpt	-32(%rbp)
	.loc 2 2015 10
	leaq	-32(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 2 2016 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L373
	call	__stack_chk_fail@PLT
.L373:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	nan_compare, .-nan_compare
	.type	general_numcompare, @function
general_numcompare:
.LFB91:
	.loc 2 2020 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 2020 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 2026 19
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtold@PLT
	fstpt	-48(%rbp)
	.loc 2 2027 19
	leaq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtold@PLT
	fstpt	-32(%rbp)
	.loc 2 2030 10
	movq	-64(%rbp), %rax
	.loc 2 2030 6
	cmpq	%rax, -72(%rbp)
	jne	.L375
	.loc 2 2031 15
	movq	-56(%rbp), %rax
	.loc 2 2031 25
	cmpq	%rax, -80(%rbp)
	jne	.L376
	.loc 2 2031 25 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L395
.L376:
	.loc 2 2031 25 discriminator 2
	movl	$-1, %eax
	jmp	.L395
.L375:
	.loc 2 2032 10 is_stmt 1
	movq	-56(%rbp), %rax
	.loc 2 2032 6
	cmpq	%rax, -80(%rbp)
	jne	.L379
	.loc 2 2033 12
	movl	$1, %eax
	jmp	.L395
.L379:
	.loc 2 2039 11
	fldt	-48(%rbp)
	fldt	-32(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L402
	.loc 2 2039 11 is_stmt 0 discriminator 1
	movl	$-1, %eax
	jmp	.L407
.L402:
	.loc 2 2040 11 is_stmt 1
	fldt	-32(%rbp)
	fldt	-48(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L403
	.loc 2 2040 11 is_stmt 0 discriminator 1
	movl	$1, %eax
	.loc 2 2039 11 is_stmt 1 discriminator 1
	jmp	.L407
.L403:
	.loc 2 2041 11
	fldt	-48(%rbp)
	fldt	-32(%rbp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L399
	fldt	-48(%rbp)
	fldt	-32(%rbp)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L404
.L399:
	.loc 2 2042 11
	fldt	-32(%rbp)
	fldt	-32(%rbp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L400
	fldt	-32(%rbp)
	fldt	-32(%rbp)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L405
.L400:
	.loc 2 2043 11
	fldt	-48(%rbp)
	fldt	-48(%rbp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L401
	fldt	-48(%rbp)
	fldt	-48(%rbp)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L406
.L401:
	.loc 2 2043 13 discriminator 1
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nan_compare
	.loc 2 2039 11 discriminator 1
	jmp	.L407
.L406:
	.loc 2 2043 11 discriminator 2
	movl	$1, %eax
	.loc 2 2039 11 discriminator 2
	jmp	.L407
.L405:
	.loc 2 2042 11 discriminator 1
	movl	$-1, %eax
	.loc 2 2039 11 discriminator 1
	jmp	.L407
.L404:
	.loc 2 2041 11 discriminator 1
	movl	$0, %eax
.L407:
	.loc 2 2039 11
	nop
.L395:
	.loc 2 2044 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L396
	.loc 2 2044 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L396:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	general_numcompare, .-general_numcompare
	.type	getmonth, @function
getmonth:
.LFB92:
	.loc 2 2051 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -64(%rbp)
	movq	%rsi, -72(%rbp)
	.loc 2 2052 10
	movq	$0, -48(%rbp)
	.loc 2 2053 10
	movq	$12, -40(%rbp)
	.loc 2 2055 9
	jmp	.L409
.L410:
	.loc 2 2056 10
	addq	$1, -64(%rbp)
.L409:
	.loc 2 2055 27
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2055 17
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 2055 16
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 2055 9
	testb	%al, %al
	jne	.L410
.L418:
.LBB31:
	.loc 2 2060 23
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2060 14
	shrq	%rax
	movq	%rax, -16(%rbp)
	.loc 2 2061 19
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 2062 19
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	monthtab(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
.L417:
	.loc 2 2066 16
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2066 14
	testb	%al, %al
	jne	.L411
	.loc 2 2068 18
	cmpq	$0, -72(%rbp)
	je	.L412
	.loc 2 2069 21
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L412:
	.loc 2 2070 34
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+monthtab(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L413
.L411:
	.loc 2 2072 48
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2072 38
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 2072 37
	cltq
	leaq	fold_toupper(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 2072 15
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movl	%eax, %ebx
	.loc 2 2072 66
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2072 56
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	.loc 2 2072 14
	cmpb	%al, %bl
	jnb	.L414
	.loc 2 2074 18
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 2075 15
	jmp	.L415
.L414:
	.loc 2 2077 53
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2077 43
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 2077 42
	cltq
	leaq	fold_toupper(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 2077 20
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movl	%eax, %ebx
	.loc 2 2077 71
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2077 61
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	.loc 2 2077 19
	cmpb	%al, %bl
	jbe	.L416
	.loc 2 2079 18
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	.loc 2 2080 15
	jmp	.L415
.L416:
	.loc 2 2064 16
	addq	$1, -32(%rbp)
	.loc 2 2064 21
	addq	$1, -24(%rbp)
	.loc 2 2066 14
	jmp	.L417
.L415:
.LBE31:
	.loc 2 2084 3
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L418
	.loc 2 2086 10
	movl	$0, %eax
.L413:
	.loc 2 2087 1
	addq	$64, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	getmonth, .-getmonth
	.local	random_md5_state
	.comm	random_md5_state,156,32
	.section	.rodata
.LC130:
	.string	"getrandom"
	.text
	.type	random_md5_state_init, @function
random_md5_state_init:
.LFB93:
	.loc 2 2096 1
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
	movq	%rdi, -72(%rbp)
	.loc 2 2096 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 2098 31
	movq	-72(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	randread_new@PLT
	movq	%rax, -56(%rbp)
	.loc 2 2099 6
	cmpq	$0, -56(%rbp)
	jne	.L420
	.loc 2 2100 5
	cmpq	$0, -72(%rbp)
	je	.L421
	.loc 2 2100 5 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rbx
	jmp	.L422
.L421:
	.loc 2 2100 5 discriminator 2
	leaq	.LC130(%rip), %rbx
.L422:
	.loc 2 2100 15 is_stmt 1 discriminator 4
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	.loc 2 2100 5 discriminator 4
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	sort_die
.L420:
	.loc 2 2101 3
	leaq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	randread@PLT
	.loc 2 2102 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	randread_free@PLT
	.loc 2 2102 6
	testl	%eax, %eax
	je	.L423
	.loc 2 2103 15
	leaq	.LC105(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 2103 5
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sort_die
.L423:
	.loc 2 2104 3
	leaq	random_md5_state(%rip), %rdi
	call	md5_init_ctx@PLT
	.loc 2 2105 3
	leaq	-48(%rbp), %rax
	leaq	random_md5_state(%rip), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	call	md5_process_bytes@PLT
	.loc 2 2106 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L424
	call	__stack_chk_fail@PLT
.L424:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	random_md5_state_init, .-random_md5_state_init
	.section	.rodata
.LC131:
	.string	"string transformation failed"
	.align 8
.LC132:
	.string	"set LC_ALL='C' to work around the problem"
	.align 8
.LC133:
	.string	"the untransformed string was %s"
	.text
	.type	xstrxfrm, @function
xstrxfrm:
.LFB94:
	.loc 2 2112 1
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
	movq	%rdx, -56(%rbp)
	.loc 2 2113 3
	call	__errno_location@PLT
	.loc 2 2113 9
	movl	$0, (%rax)
	.loc 2 2114 28
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strxfrm@PLT
	movq	%rax, -24(%rbp)
	.loc 2 2116 7
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 2116 6
	testl	%eax, %eax
	je	.L426
.LBB32:
	.loc 2 2118 24
	leaq	.LC131(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2118 17
	call	__errno_location@PLT
	.loc 2 2118 7
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 2119 20
	leaq	.LC132(%rip), %rdi
	call	gettext@PLT
	.loc 2 2119 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 2120 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$8, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC133(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L426:
.LBE32:
	.loc 2 2125 10
	movq	-24(%rbp), %rax
	.loc 2 2126 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	xstrxfrm, .-xstrxfrm
	.type	compare_random, @function
compare_random:
.LFB95:
	.loc 2 2135 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$384, %rsp
	movq	%rdi, -4456(%rbp)
	movq	%rsi, -4464(%rbp)
	movq	%rdx, -4472(%rbp)
	movq	%rcx, -4480(%rbp)
	.loc 2 2135 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 2140 7
	movl	$0, -4440(%rbp)
	.loc 2 2143 9
	leaq	-4016(%rbp), %rax
	movq	%rax, -4432(%rbp)
	.loc 2 2144 10
	movq	$4000, -4424(%rbp)
	.loc 2 2145 9
	movq	$0, -4416(%rbp)
	.loc 2 2148 15
	movq	random_md5_state(%rip), %rax
	movq	8+random_md5_state(%rip), %rdx
	movq	%rax, -4180(%rbp)
	movq	%rdx, -4172(%rbp)
	movq	16+random_md5_state(%rip), %rax
	movq	24+random_md5_state(%rip), %rdx
	movq	%rax, -4164(%rbp)
	movq	%rdx, -4156(%rbp)
	movq	32+random_md5_state(%rip), %rax
	movq	40+random_md5_state(%rip), %rdx
	movq	%rax, -4148(%rbp)
	movq	%rdx, -4140(%rbp)
	movq	48+random_md5_state(%rip), %rax
	movq	56+random_md5_state(%rip), %rdx
	movq	%rax, -4132(%rbp)
	movq	%rdx, -4124(%rbp)
	movq	64+random_md5_state(%rip), %rax
	movq	72+random_md5_state(%rip), %rdx
	movq	%rax, -4116(%rbp)
	movq	%rdx, -4108(%rbp)
	movq	80+random_md5_state(%rip), %rax
	movq	88+random_md5_state(%rip), %rdx
	movq	%rax, -4100(%rbp)
	movq	%rdx, -4092(%rbp)
	movq	96+random_md5_state(%rip), %rax
	movq	104+random_md5_state(%rip), %rdx
	movq	%rax, -4084(%rbp)
	movq	%rdx, -4076(%rbp)
	movq	112+random_md5_state(%rip), %rax
	movq	120+random_md5_state(%rip), %rdx
	movq	%rax, -4068(%rbp)
	movq	%rdx, -4060(%rbp)
	movq	128+random_md5_state(%rip), %rax
	movq	136+random_md5_state(%rip), %rdx
	movq	%rax, -4052(%rbp)
	movq	%rdx, -4044(%rbp)
	movq	144+random_md5_state(%rip), %rax
	movq	%rax, -4036(%rbp)
	movl	152+random_md5_state(%rip), %eax
	movl	%eax, -4028(%rbp)
	.loc 2 2148 8
	movq	-4180(%rbp), %rax
	movq	-4172(%rbp), %rdx
	movq	%rax, -4336(%rbp)
	movq	%rdx, -4328(%rbp)
	movq	-4164(%rbp), %rax
	movq	-4156(%rbp), %rdx
	movq	%rax, -4320(%rbp)
	movq	%rdx, -4312(%rbp)
	movq	-4148(%rbp), %rax
	movq	-4140(%rbp), %rdx
	movq	%rax, -4304(%rbp)
	movq	%rdx, -4296(%rbp)
	movq	-4132(%rbp), %rax
	movq	-4124(%rbp), %rdx
	movq	%rax, -4288(%rbp)
	movq	%rdx, -4280(%rbp)
	movq	-4116(%rbp), %rax
	movq	-4108(%rbp), %rdx
	movq	%rax, -4272(%rbp)
	movq	%rdx, -4264(%rbp)
	movq	-4100(%rbp), %rax
	movq	-4092(%rbp), %rdx
	movq	%rax, -4256(%rbp)
	movq	%rdx, -4248(%rbp)
	movq	-4084(%rbp), %rax
	movq	-4076(%rbp), %rdx
	movq	%rax, -4240(%rbp)
	movq	%rdx, -4232(%rbp)
	movq	-4068(%rbp), %rax
	movq	-4060(%rbp), %rdx
	movq	%rax, -4224(%rbp)
	movq	%rdx, -4216(%rbp)
	movq	-4052(%rbp), %rax
	movq	-4044(%rbp), %rdx
	movq	%rax, -4208(%rbp)
	movq	%rdx, -4200(%rbp)
	movq	-4036(%rbp), %rax
	movq	%rax, -4192(%rbp)
	movl	-4028(%rbp), %eax
	movl	%eax, -4184(%rbp)
	.loc 2 2150 7
	movzbl	hard_LC_COLLATE(%rip), %eax
	.loc 2 2150 6
	testb	%al, %al
	je	.L429
.LBB33:
	.loc 2 2152 19
	movq	-4456(%rbp), %rdx
	movq	-4464(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4408(%rbp)
	.loc 2 2153 19
	movq	-4472(%rbp), %rdx
	movq	-4480(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4400(%rbp)
.L447:
.LBB34:
	.loc 2 2172 44
	movq	-4464(%rbp), %rdx
	movq	-4480(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 2172 36
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	.loc 2 2172 18
	addq	$2, %rax
	movq	%rax, -4392(%rbp)
	.loc 2 2173 14
	movq	-4424(%rbp), %rax
	cmpq	-4392(%rbp), %rax
	jnb	.L430
	.loc 2 2175 25
	movq	-4424(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	shrq	%rax
	.loc 2 2175 23
	cmpq	%rax, -4392(%rbp)
	cmovnb	-4392(%rbp), %rax
	movq	%rax, -4424(%rbp)
	.loc 2 2176 15
	movq	-4416(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2177 33
	movq	-4424(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -4416(%rbp)
	.loc 2 2177 19
	movq	-4416(%rbp), %rax
	movq	%rax, -4432(%rbp)
	.loc 2 2178 18
	cmpq	$0, -4432(%rbp)
	jne	.L430
	.loc 2 2180 23
	leaq	-4016(%rbp), %rax
	movq	%rax, -4432(%rbp)
	.loc 2 2181 27
	movq	$4000, -4424(%rbp)
.L430:
	.loc 2 2186 64
	movq	-4456(%rbp), %rax
	cmpq	-4408(%rbp), %rax
	jnb	.L431
	.loc 2 2186 29 discriminator 1
	movq	-4424(%rbp), %rdx
	movq	-4456(%rbp), %rcx
	movq	-4432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xstrxfrm
	.loc 2 2186 64 discriminator 1
	addq	$1, %rax
	jmp	.L432
.L431:
	.loc 2 2186 64 is_stmt 0 discriminator 2
	movl	$0, %eax
.L432:
	.loc 2 2185 18 is_stmt 1
	movq	%rax, -4384(%rbp)
	.loc 2 2187 16
	movq	-4384(%rbp), %rax
	cmpq	-4424(%rbp), %rax
	setbe	%al
	movb	%al, -4441(%rbp)
	.loc 2 2193 14
	movq	-4472(%rbp), %rax
	cmpq	-4400(%rbp), %rax
	jnb	.L433
	.loc 2 2190 17
	cmpb	$0, -4441(%rbp)
	je	.L434
	.loc 2 2190 17 is_stmt 0 discriminator 1
	movq	-4424(%rbp), %rax
	subq	-4384(%rbp), %rax
	jmp	.L435
.L434:
	.loc 2 2190 17 discriminator 2
	movl	$0, %eax
.L435:
	.loc 2 2190 17 discriminator 4
	cmpb	$0, -4441(%rbp)
	je	.L436
	.loc 2 2190 17 discriminator 5
	movq	-4432(%rbp), %rcx
	movq	-4384(%rbp), %rdx
	addq	%rdx, %rcx
	jmp	.L437
.L436:
	.loc 2 2190 17 discriminator 6
	movl	$0, %ecx
.L437:
	.loc 2 2190 17 discriminator 8
	movq	-4472(%rbp), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	xstrxfrm
	.loc 2 2193 14 is_stmt 1 discriminator 8
	addq	$1, %rax
	jmp	.L438
.L433:
	.loc 2 2193 14 is_stmt 0 discriminator 1
	movl	$0, %eax
.L438:
	.loc 2 2188 18 is_stmt 1
	movq	%rax, -4376(%rbp)
	.loc 2 2195 18
	movzbl	-4441(%rbp), %eax
	xorl	$1, %eax
	.loc 2 2195 14
	testb	%al, %al
	jne	.L439
	.loc 2 2195 34 discriminator 1
	movq	-4384(%rbp), %rdx
	movq	-4376(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2195 15 discriminator 1
	cmpq	%rax, -4424(%rbp)
	jnb	.L440
.L439:
	.loc 2 2197 23
	movq	-4384(%rbp), %rdx
	movq	-4376(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4424(%rbp)
	.loc 2 2198 18
	movabsq	$6148914691236517204, %rax
	cmpq	%rax, -4424(%rbp)
	ja	.L441
	.loc 2 2199 35
	movq	-4424(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	.loc 2 2199 25
	shrq	%rax
	movq	%rax, -4424(%rbp)
.L441:
	.loc 2 2200 15
	movq	-4416(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2201 33
	movq	-4424(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -4416(%rbp)
	.loc 2 2201 19
	movq	-4416(%rbp), %rax
	movq	%rax, -4432(%rbp)
	.loc 2 2202 18
	movq	-4456(%rbp), %rax
	cmpq	-4408(%rbp), %rax
	jnb	.L442
	.loc 2 2203 17
	movq	-4384(%rbp), %rdx
	movq	-4456(%rbp), %rcx
	movq	-4432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strxfrm@PLT
.L442:
	.loc 2 2204 18
	movq	-4472(%rbp), %rax
	cmpq	-4400(%rbp), %rax
	jnb	.L440
	.loc 2 2205 17
	movq	-4432(%rbp), %rdx
	movq	-4384(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-4376(%rbp), %rdx
	movq	-4472(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strxfrm@PLT
.L440:
	.loc 2 2212 14
	movq	-4456(%rbp), %rax
	cmpq	-4408(%rbp), %rax
	jnb	.L443
	.loc 2 2213 22
	movq	-4456(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 2213 19
	addq	$1, %rax
	addq	%rax, -4456(%rbp)
.L443:
	.loc 2 2214 14
	movq	-4472(%rbp), %rax
	cmpq	-4400(%rbp), %rax
	jnb	.L444
	.loc 2 2215 22
	movq	-4472(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 2215 19
	addq	$1, %rax
	addq	%rax, -4472(%rbp)
.L444:
	.loc 2 2216 14
	movq	-4456(%rbp), %rax
	cmpq	-4408(%rbp), %rax
	jb	.L445
	.loc 2 2216 15 discriminator 1
	movq	-4472(%rbp), %rax
	cmpq	-4400(%rbp), %rax
	jb	.L445
	.loc 2 2218 20
	movq	-4384(%rbp), %rax
	movq	%rax, -4464(%rbp)
	.loc 2 2218 35
	movq	-4432(%rbp), %rax
	movq	%rax, -4456(%rbp)
	.loc 2 2219 20
	movq	-4376(%rbp), %rax
	movq	%rax, -4480(%rbp)
	.loc 2 2219 35
	movq	-4432(%rbp), %rdx
	movq	-4384(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4472(%rbp)
	.loc 2 2220 15
	jmp	.L429
.L445:
	.loc 2 2225 11
	leaq	-4336(%rbp), %rdx
	movq	-4384(%rbp), %rcx
	movq	-4432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	md5_process_bytes@PLT
	.loc 2 2226 34
	movq	-4432(%rbp), %rdx
	movq	-4384(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 2226 11
	leaq	-4336(%rbp), %rax
	leaq	156(%rax), %rdx
	movq	-4376(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	md5_process_bytes@PLT
	.loc 2 2229 14
	cmpl	$0, -4440(%rbp)
	jne	.L447
	.loc 2 2231 27
	movq	-4384(%rbp), %rax
	cmpq	%rax, -4376(%rbp)
	cmovbe	-4376(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 2231 44
	movq	-4432(%rbp), %rcx
	movq	-4384(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 2231 27
	movq	-4432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4440(%rbp)
	.loc 2 2232 18
	cmpl	$0, -4440(%rbp)
	jne	.L447
	.loc 2 2233 36
	movq	-4384(%rbp), %rax
	cmpq	-4376(%rbp), %rax
	seta	%al
	movzbl	%al, %edx
	.loc 2 2233 54
	movq	-4384(%rbp), %rax
	cmpq	-4376(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	.loc 2 2233 27
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4440(%rbp)
.LBE34:
	.loc 2 2156 9
	jmp	.L447
.L429:
.LBE33:
	.loc 2 2239 3
	leaq	-4336(%rbp), %rdx
	movq	-4464(%rbp), %rcx
	movq	-4456(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	md5_process_bytes@PLT
	.loc 2 2239 43
	leaq	-4368(%rbp), %rdx
	leaq	-4336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	md5_finish_ctx@PLT
	.loc 2 2240 3
	leaq	-4336(%rbp), %rax
	leaq	156(%rax), %rdx
	movq	-4480(%rbp), %rcx
	movq	-4472(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	md5_process_bytes@PLT
	.loc 2 2240 43
	leaq	-4368(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-4336(%rbp), %rax
	addq	$156, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	md5_finish_ctx@PLT
	.loc 2 2241 14
	leaq	-4368(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-4368(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4436(%rbp)
	.loc 2 2244 6
	cmpl	$0, -4436(%rbp)
	jne	.L448
	.loc 2 2246 10
	cmpl	$0, -4440(%rbp)
	jne	.L449
	.loc 2 2248 23
	movq	-4464(%rbp), %rax
	cmpq	%rax, -4480(%rbp)
	cmovbe	-4480(%rbp), %rax
	movq	%rax, %rdx
	movq	-4472(%rbp), %rcx
	movq	-4456(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4440(%rbp)
	.loc 2 2249 14
	cmpl	$0, -4440(%rbp)
	jne	.L449
	.loc 2 2250 31
	movq	-4464(%rbp), %rax
	cmpq	-4480(%rbp), %rax
	seta	%al
	movzbl	%al, %edx
	.loc 2 2250 47
	movq	-4464(%rbp), %rax
	cmpq	-4480(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	.loc 2 2250 23
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4440(%rbp)
.L449:
	.loc 2 2253 12
	movl	-4440(%rbp), %eax
	movl	%eax, -4436(%rbp)
.L448:
	.loc 2 2256 3
	movq	-4416(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2258 10
	movl	-4436(%rbp), %eax
	.loc 2 2259 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L451
	call	__stack_chk_fail@PLT
.L451:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	compare_random, .-compare_random
	.type	debug_width, @function
debug_width:
.LFB96:
	.loc 2 2267 1
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
	.loc 2 2268 39
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 2 2268 18
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mbsnwidth@PLT
	.loc 2 2268 10
	cltq
	movq	%rax, -8(%rbp)
	.loc 2 2269 9
	jmp	.L453
.L454:
	.loc 2 2270 20
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 2270 15
	movzbl	(%rax), %eax
	.loc 2 2270 23
	cmpb	$9, %al
	sete	%al
	movzbl	%al, %eax
	cltq
	.loc 2 2270 11
	addq	%rax, -8(%rbp)
.L453:
	.loc 2 2269 9
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L454
	.loc 2 2271 10
	movq	-8(%rbp), %rax
	.loc 2 2272 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	debug_width, .-debug_width
	.section	.rodata
.LC134:
	.string	"^ no match for key\n"
	.text
	.type	mark_key, @function
mark_key:
.LFB97:
	.loc 2 2279 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 2280 9
	jmp	.L457
.L458:
	.loc 2 2281 5
	movl	$32, %edi
	call	putchar_unlocked@PLT
.L457:
	.loc 2 2280 16
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2280 9
	testq	%rax, %rax
	jne	.L458
	.loc 2 2283 6
	cmpq	$0, -16(%rbp)
	jne	.L459
	.loc 2 2284 13
	leaq	.LC134(%rip), %rdi
	call	gettext@PLT
	.loc 2 2284 5
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 2293 1
	jmp	.L461
.L459:
	.loc 2 2288 9 discriminator 1
	movl	$95, %edi
	call	putchar_unlocked@PLT
	.loc 2 2289 7 discriminator 1
	subq	$1, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L459
	.loc 2 2291 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
.L461:
	.loc 2 2293 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	mark_key, .-mark_key
	.type	key_numeric, @function
key_numeric:
.LFB98:
	.loc 2 2299 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 2300 13
	movq	-8(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 2 2300 47
	testb	%al, %al
	jne	.L463
	.loc 2 2300 29 discriminator 2
	movq	-8(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 2 2300 23 discriminator 2
	testb	%al, %al
	jne	.L463
	.loc 2 2300 53 discriminator 4
	movq	-8(%rbp), %rax
	movzbl	53(%rax), %eax
	.loc 2 2300 47 discriminator 4
	testb	%al, %al
	je	.L464
.L463:
	.loc 2 2300 47 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L465
.L464:
	.loc 2 2300 47 discriminator 6
	movl	$0, %eax
.L465:
	.loc 2 2300 47 discriminator 8
	andl	$1, %eax
	.loc 2 2301 1 is_stmt 1 discriminator 8
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	key_numeric, .-key_numeric
	.type	debug_key, @function
debug_key:
.LFB99:
	.loc 2 2308 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 2 2308 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 2309 9
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 2 2310 9
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 2 2311 26
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 2311 35
	leaq	-1(%rax), %rdx
	.loc 2 2311 9
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 2 2313 6
	cmpq	$0, -112(%rbp)
	je	.L468
	.loc 2 2315 14
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2315 10
	cmpq	$-1, %rax
	je	.L469
	.loc 2 2316 15
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	begfield
	movq	%rax, -72(%rbp)
.L469:
	.loc 2 2317 14
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 2317 10
	cmpq	$-1, %rax
	je	.L470
	.loc 2 2318 15
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	limfield
	movq	%rax, -64(%rbp)
.L470:
	.loc 2 2320 15
	movq	-112(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 2320 10
	testb	%al, %al
	je	.L471
	.loc 2 2320 35 discriminator 1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2320 29 discriminator 1
	cmpq	$-1, %rax
	je	.L472
.L471:
	.loc 2 2321 17
	movq	-112(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 2 2321 11
	testb	%al, %al
	jne	.L472
	.loc 2 2321 28 discriminator 1
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	key_numeric
	.loc 2 2321 25 discriminator 1
	testb	%al, %al
	je	.L468
.L472:
.LBB35:
	.loc 2 2323 16
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -91(%rbp)
	.loc 2 2324 16
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 2326 17
	jmp	.L473
.L474:
	.loc 2 2327 16
	addq	$1, -72(%rbp)
.L473:
	.loc 2 2326 35
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2326 25
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 2326 24
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 2326 17
	testb	%al, %al
	jne	.L474
	.loc 2 2329 17
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 2 2331 14
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L475
	.loc 2 2332 25
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L476
.L475:
	.loc 2 2333 23
	movq	-112(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 2 2333 19
	testb	%al, %al
	je	.L477
	.loc 2 2334 13
	leaq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getmonth
	jmp	.L476
.L477:
	.loc 2 2335 23
	movq	-112(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 2 2335 19
	testb	%al, %al
	je	.L478
.LBB36:
	.loc 2 2336 13
	leaq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtold@PLT
	fstpt	-32(%rbp)
.LBE36:
	jmp	.L476
.L478:
	.loc 2 2337 23
	movq	-112(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 2 2337 19
	testb	%al, %al
	jne	.L479
	.loc 2 2337 39 discriminator 1
	movq	-112(%rbp), %rax
	movzbl	53(%rax), %eax
	.loc 2 2337 33 discriminator 1
	testb	%al, %al
	je	.L480
.L479:
.LBB37:
	.loc 2 2339 48
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L481
	.loc 2 2339 51 discriminator 1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2339 48 discriminator 1
	cmpb	$45, %al
	jne	.L481
	.loc 2 2339 48 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L482
.L481:
	.loc 2 2339 48 discriminator 4
	movl	$0, %eax
.L482:
	.loc 2 2339 48 discriminator 6
	movslq	%eax, %rdx
	.loc 2 2339 35 is_stmt 1 discriminator 6
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2339 27 discriminator 6
	movq	%rax, -80(%rbp)
	.loc 2 2340 41 discriminator 6
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	traverse_raw_number
	movb	%al, -90(%rbp)
	.loc 2 2341 18 discriminator 6
	cmpb	$47, -90(%rbp)
	jbe	.L487
.LBB38:
	.loc 2 2343 38
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2343 33
	movb	%al, -89(%rbp)
	.loc 2 2344 33
	movq	-80(%rbp), %rdx
	.loc 2 2345 27
	movq	-112(%rbp), %rax
	movzbl	53(%rax), %eax
	.loc 2 2345 43
	testb	%al, %al
	je	.L484
	.loc 2 2345 56 discriminator 1
	movzbl	-89(%rbp), %eax
	cltq
	leaq	unit_order(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	.loc 2 2345 43 discriminator 1
	testb	%al, %al
	je	.L484
	.loc 2 2345 43 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L485
.L484:
	.loc 2 2345 43 discriminator 4
	movl	$0, %eax
.L485:
	.loc 2 2345 43 discriminator 6
	cltq
	.loc 2 2345 21 is_stmt 1 discriminator 6
	addq	%rdx, %rax
	.loc 2 2344 31 discriminator 6
	movq	%rax, -88(%rbp)
.LBE38:
.LBE37:
	.loc 2 2338 13 discriminator 6
	jmp	.L487
.L480:
	.loc 2 2349 25
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L476
.L487:
	.loc 2 2338 13
	nop
.L476:
	.loc 2 2351 16 discriminator 1
	movq	-64(%rbp), %rax
	movzbl	-91(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 2352 15 discriminator 1
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
.L468:
.LBE35:
	.loc 2 2356 19
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	debug_width
	movq	%rax, -48(%rbp)
	.loc 2 2357 18
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	debug_width
	movq	%rax, -40(%rbp)
	.loc 2 2358 3
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mark_key
	.loc 2 2359 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L486
	call	__stack_chk_fail@PLT
.L486:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	debug_key, .-debug_key
	.type	debug_line, @function
debug_line:
.LFB100:
	.loc 2 2365 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 2366 26
	movq	keylist(%rip), %rax
	movq	%rax, -8(%rbp)
.L490:
	.loc 2 2369 5 discriminator 5
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	debug_key
	.loc 2 2370 3 discriminator 5
	cmpq	$0, -8(%rbp)
	je	.L491
	.loc 2 2370 23 discriminator 1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2370 14 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L490
	.loc 2 2370 42 discriminator 3
	movzbl	unique(%rip), %eax
	xorl	$1, %eax
	.loc 2 2370 36 discriminator 3
	testb	%al, %al
	je	.L491
	.loc 2 2370 49 discriminator 4
	movzbl	stable(%rip), %eax
	xorl	$1, %eax
	.loc 2 2370 39 discriminator 4
	testb	%al, %al
	jne	.L490
.L491:
	.loc 2 2371 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	debug_line, .-debug_line
	.type	default_key_compare, @function
default_key_compare:
.LFB101:
	.loc 2 2377 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 2378 16
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 2378 10
	testq	%rax, %rax
	jne	.L493
	.loc 2 2379 19
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 2379 13
	testq	%rax, %rax
	jne	.L493
	.loc 2 2380 19
	movq	-8(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 2380 13
	xorl	$1, %eax
	testb	%al, %al
	je	.L493
	.loc 2 2381 19
	movq	-8(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 2 2381 13
	xorl	$1, %eax
	testb	%al, %al
	je	.L493
	.loc 2 2382 16
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	key_numeric
	.loc 2 2382 13
	xorl	$1, %eax
	testb	%al, %al
	je	.L493
	.loc 2 2383 19
	movq	-8(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 2 2383 13
	xorl	$1, %eax
	testb	%al, %al
	je	.L493
	.loc 2 2384 19
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 2 2384 13
	xorl	$1, %eax
	testb	%al, %al
	je	.L493
	.loc 2 2385 19 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 2 2385 13 discriminator 3
	xorl	$1, %eax
	.loc 2 2378 10 discriminator 3
	testb	%al, %al
	je	.L493
	.loc 2 2378 10 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L494
.L493:
	.loc 2 2378 10 discriminator 1
	movl	$0, %eax
.L494:
	.loc 2 2378 10 discriminator 5
	andl	$1, %eax
	.loc 2 2388 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	default_key_compare, .-default_key_compare
	.type	key_to_opts, @function
key_to_opts:
.LFB102:
	.loc 2 2394 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 2395 10
	movq	-8(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 2395 6
	testb	%al, %al
	jne	.L497
	.loc 2 2395 30 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 2 2395 24 discriminator 1
	testb	%al, %al
	je	.L498
.L497:
	.loc 2 2396 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2396 13
	movb	$98, (%rax)
.L498:
	.loc 2 2397 10
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 2397 6
	leaq	nondictionary(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L499
	.loc 2 2398 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2398 13
	movb	$100, (%rax)
.L499:
	.loc 2 2399 10
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 2399 6
	testq	%rax, %rax
	je	.L500
	.loc 2 2400 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2400 13
	movb	$102, (%rax)
.L500:
	.loc 2 2401 10
	movq	-8(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 2 2401 6
	testb	%al, %al
	je	.L501
	.loc 2 2402 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2402 13
	movb	$103, (%rax)
.L501:
	.loc 2 2403 10
	movq	-8(%rbp), %rax
	movzbl	53(%rax), %eax
	.loc 2 2403 6
	testb	%al, %al
	je	.L502
	.loc 2 2404 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2404 13
	movb	$104, (%rax)
.L502:
	.loc 2 2405 10
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 2405 6
	leaq	nonprinting(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L503
	.loc 2 2406 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2406 13
	movb	$105, (%rax)
.L503:
	.loc 2 2407 10
	movq	-8(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 2 2407 6
	testb	%al, %al
	je	.L504
	.loc 2 2408 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2408 13
	movb	$77, (%rax)
.L504:
	.loc 2 2409 10
	movq	-8(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 2 2409 6
	testb	%al, %al
	je	.L505
	.loc 2 2410 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2410 13
	movb	$110, (%rax)
.L505:
	.loc 2 2411 10
	movq	-8(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 2 2411 6
	testb	%al, %al
	je	.L506
	.loc 2 2412 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2412 13
	movb	$82, (%rax)
.L506:
	.loc 2 2413 10
	movq	-8(%rbp), %rax
	movzbl	55(%rax), %eax
	.loc 2 2413 6
	testb	%al, %al
	je	.L507
	.loc 2 2414 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2414 13
	movb	$114, (%rax)
.L507:
	.loc 2 2415 10
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 2 2415 6
	testb	%al, %al
	je	.L508
	.loc 2 2416 10
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2416 13
	movb	$86, (%rax)
.L508:
	.loc 2 2417 9
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 2418 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	key_to_opts, .-key_to_opts
	.section	.rodata
	.align 8
.LC135:
	.string	"obsolescent key %s used; consider %s instead"
	.align 8
.LC136:
	.string	"key %lu has zero width and will be ignored"
	.align 8
.LC137:
	.string	"leading blanks are significant in key %lu; consider also specifying 'b'"
	.align 8
.LC138:
	.string	"key %lu is numeric and spans multiple fields"
.LC139:
	.string	"options '-%s' are ignored"
.LC140:
	.string	"option '-%s' is ignored"
	.align 8
.LC141:
	.string	"option '-r' only applies to last-resort comparison"
	.text
	.type	key_warnings, @function
key_warnings:
.LFB103:
	.loc 2 2424 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$320, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -328(%rbp)
	movl	%esi, %eax
	movb	%al, -332(%rbp)
	.loc 2 2424 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 2426 19
	movq	-328(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -240(%rbp)
	movq	%rbx, -232(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -224(%rbp)
	movq	%rbx, -216(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -208(%rbp)
	movq	%rbx, -200(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -192(%rbp)
	movq	%rbx, -184(%rbp)
	movq	64(%rax), %rax
	movq	%rax, -176(%rbp)
	.loc 2 2427 17
	movq	$1, -296(%rbp)
	.loc 2 2429 12
	movq	keylist(%rip), %rax
	movq	%rax, -304(%rbp)
	.loc 2 2429 3
	jmp	.L510
.L531:
.LBB39:
	.loc 2 2431 14
	movq	-304(%rbp), %rax
	movzbl	57(%rax), %eax
	.loc 2 2431 10
	testb	%al, %al
	je	.L511
.LBB40:
	.loc 2 2433 18
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	.loc 2 2434 18
	movq	-304(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -272(%rbp)
	.loc 2 2441 17
	leaq	-128(%rbp), %rax
	movq	%rax, -264(%rbp)
	.loc 2 2442 17
	leaq	-80(%rbp), %rax
	movq	%rax, -256(%rbp)
	.loc 2 2444 14
	cmpq	$-1, -288(%rbp)
	jne	.L512
	.loc 2 2445 18
	addq	$1, -288(%rbp)
.L512:
	.loc 2 2447 42
	leaq	-160(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdx
	movq	-264(%rbp), %rax
	movw	$43, (%rax)
	.loc 2 2447 16
	movq	-264(%rbp), %rax
	addq	$1, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rax, -264(%rbp)
	.loc 2 2448 44
	movq	-288(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdx
	movq	-256(%rbp), %rax
	movl	$2124589, (%rax)
	.loc 2 2448 16
	movq	-256(%rbp), %rax
	addq	$3, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rax, -256(%rbp)
	.loc 2 2449 18
	movq	-304(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 2449 14
	cmpq	$-1, %rax
	je	.L513
	.loc 2 2451 42
	movq	-272(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdx
	movq	-264(%rbp), %rax
	movw	$11552, (%rax)
	movb	$0, 2(%rax)
	.loc 2 2451 15
	movq	-264(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 2 2454 40
	movq	-304(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 2454 48
	cmpq	$-1, %rax
	sete	%al
	movzbl	%al, %edx
	.loc 2 2454 34
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2453 23
	leaq	1(%rax), %rdx
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdx
	movq	-256(%rbp), %rax
	movw	$44, (%rax)
	.loc 2 2452 15
	movq	-256(%rbp), %rax
	addq	$1, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L513:
	.loc 2 2456 11
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r12
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %rbx
	.loc 2 2456 24
	leaq	.LC135(%rip), %rdi
	call	gettext@PLT
	.loc 2 2456 11
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L511:
.LBE40:
	.loc 2 2461 28
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2461 48
	cmpq	$-1, %rax
	je	.L514
	.loc 2 2461 54 discriminator 1
	movq	-304(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 2461 67 discriminator 1
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2461 48 discriminator 1
	cmpq	%rax, %rdx
	jnb	.L514
	.loc 2 2461 48 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L515
.L514:
	.loc 2 2461 48 discriminator 4
	movl	$0, %eax
.L515:
	.loc 2 2461 12 is_stmt 1 discriminator 6
	movb	%al, -307(%rbp)
	andb	$1, -307(%rbp)
	.loc 2 2462 10 discriminator 6
	cmpb	$0, -307(%rbp)
	je	.L516
	.loc 2 2463 22
	leaq	.LC136(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 2463 9
	movq	-296(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L516:
	.loc 2 2466 28
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	key_numeric
	.loc 2 2466 46
	testb	%al, %al
	jne	.L517
	.loc 2 2466 52 discriminator 2
	movq	-304(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 2 2466 46 discriminator 2
	testb	%al, %al
	je	.L518
.L517:
	.loc 2 2466 46 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L519
.L518:
	.loc 2 2466 46 discriminator 4
	movl	$0, %eax
.L519:
	.loc 2 2466 12 is_stmt 1 discriminator 6
	movb	%al, -306(%rbp)
	andb	$1, -306(%rbp)
	.loc 2 2467 29 discriminator 6
	movq	-304(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 2467 42 discriminator 6
	testq	%rax, %rax
	jne	.L520
	.loc 2 2467 48 discriminator 1
	movq	-304(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 2467 42 discriminator 1
	testq	%rax, %rax
	je	.L520
	.loc 2 2467 42 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L521
.L520:
	.loc 2 2467 42 discriminator 4
	movl	$0, %eax
.L521:
	.loc 2 2467 12 is_stmt 1 discriminator 6
	movb	%al, -305(%rbp)
	andb	$1, -305(%rbp)
	.loc 2 2468 11 discriminator 6
	movzbl	-307(%rbp), %eax
	xorl	$1, %eax
	.loc 2 2468 10 discriminator 6
	testb	%al, %al
	je	.L522
	.loc 2 2468 26 discriminator 1
	movzbl	-332(%rbp), %eax
	xorl	$1, %eax
	.loc 2 2468 23 discriminator 1
	testb	%al, %al
	je	.L522
	.loc 2 2468 44 discriminator 2
	movl	tab(%rip), %eax
	.loc 2 2468 37 discriminator 2
	cmpl	$128, %eax
	jne	.L522
	.loc 2 2468 62 discriminator 3
	movzbl	-305(%rbp), %eax
	xorl	$1, %eax
	.loc 2 2468 59 discriminator 3
	testb	%al, %al
	je	.L522
	.loc 2 2469 20
	movq	-304(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 2469 16
	xorl	$1, %eax
	.loc 2 2469 11
	testb	%al, %al
	je	.L523
	.loc 2 2469 37 discriminator 1
	movzbl	-306(%rbp), %eax
	xorl	$1, %eax
	.loc 2 2469 34 discriminator 1
	testb	%al, %al
	jne	.L524
.L523:
	.loc 2 2470 23
	movq	-304(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 2470 19
	xorl	$1, %eax
	.loc 2 2470 15
	testb	%al, %al
	je	.L525
	.loc 2 2470 43 discriminator 1
	movq	-304(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 2470 37 discriminator 1
	testq	%rax, %rax
	jne	.L524
.L525:
	.loc 2 2471 23
	movq	-304(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 2 2471 19
	xorl	$1, %eax
	.loc 2 2471 15
	testb	%al, %al
	je	.L522
	.loc 2 2471 43 discriminator 1
	movq	-304(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 2471 37 discriminator 1
	testq	%rax, %rax
	je	.L522
.L524:
	.loc 2 2472 22
	leaq	.LC137(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 2472 9
	movq	-296(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L522:
	.loc 2 2478 11
	movzbl	-332(%rbp), %eax
	xorl	$1, %eax
	.loc 2 2478 10
	testb	%al, %al
	je	.L526
	.loc 2 2478 25 discriminator 1
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	key_numeric
	.loc 2 2478 22 discriminator 1
	testb	%al, %al
	je	.L526
.LBB41:
	.loc 2 2480 29
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2480 18
	addq	$1, %rax
	movq	%rax, -280(%rbp)
	.loc 2 2481 29
	movq	-304(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 2481 18
	addq	$1, %rax
	movq	%rax, -248(%rbp)
	.loc 2 2482 14
	cmpq	$0, -280(%rbp)
	jne	.L527
	.loc 2 2483 18
	addq	$1, -280(%rbp)
.L527:
	.loc 2 2484 14
	cmpq	$0, -248(%rbp)
	je	.L528
	.loc 2 2484 22 discriminator 1
	movq	-280(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jnb	.L526
.L528:
	.loc 2 2485 26
	leaq	.LC138(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 2485 13
	movq	-296(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L526:
.LBE41:
	.loc 2 2490 16
	movq	-208(%rbp), %rax
	.loc 2 2490 10
	testq	%rax, %rax
	je	.L529
	.loc 2 2490 33 discriminator 1
	movq	-208(%rbp), %rdx
	.loc 2 2490 47 discriminator 1
	movq	-304(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 2490 24 discriminator 1
	cmpq	%rax, %rdx
	jne	.L529
	.loc 2 2491 22
	movq	$0, -208(%rbp)
.L529:
	.loc 2 2492 16
	movq	-200(%rbp), %rax
	.loc 2 2492 10
	testq	%rax, %rax
	je	.L530
	.loc 2 2492 36 discriminator 1
	movq	-200(%rbp), %rdx
	.loc 2 2492 53 discriminator 1
	movq	-304(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 2492 27 discriminator 1
	cmpq	%rax, %rdx
	jne	.L530
	.loc 2 2493 25
	movq	$0, -200(%rbp)
.L530:
	.loc 2 2494 25 discriminator 2
	movzbl	-192(%rbp), %eax
	movzbl	%al, %edx
	.loc 2 2494 32 discriminator 2
	movq	-304(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 2494 28 discriminator 2
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2494 25 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -192(%rbp)
	.loc 2 2495 25 discriminator 2
	movzbl	-191(%rbp), %eax
	movzbl	%al, %edx
	.loc 2 2495 32 discriminator 2
	movq	-304(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 2 2495 28 discriminator 2
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2495 25 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -191(%rbp)
	.loc 2 2496 19 discriminator 2
	movzbl	-186(%rbp), %eax
	movzbl	%al, %edx
	.loc 2 2496 26 discriminator 2
	movq	-304(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 2 2496 22 discriminator 2
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2496 19 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -186(%rbp)
	.loc 2 2497 21 discriminator 2
	movzbl	-190(%rbp), %eax
	movzbl	%al, %edx
	.loc 2 2497 28 discriminator 2
	movq	-304(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 2 2497 24 discriminator 2
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2497 21 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -190(%rbp)
	.loc 2 2498 29 discriminator 2
	movzbl	-188(%rbp), %eax
	movzbl	%al, %edx
	.loc 2 2498 36 discriminator 2
	movq	-304(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 2 2498 32 discriminator 2
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2498 29 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -188(%rbp)
	.loc 2 2499 27 discriminator 2
	movzbl	-187(%rbp), %eax
	movzbl	%al, %edx
	.loc 2 2499 34 discriminator 2
	movq	-304(%rbp), %rax
	movzbl	53(%rax), %eax
	.loc 2 2499 30 discriminator 2
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2499 27 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -187(%rbp)
	.loc 2 2500 20 discriminator 2
	movzbl	-189(%rbp), %eax
	movzbl	%al, %edx
	.loc 2 2500 27 discriminator 2
	movq	-304(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 2 2500 23 discriminator 2
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2500 20 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -189(%rbp)
	.loc 2 2501 21 discriminator 2
	movzbl	-184(%rbp), %eax
	movzbl	%al, %edx
	.loc 2 2501 28 discriminator 2
	movq	-304(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 2 2501 24 discriminator 2
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2501 21 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -184(%rbp)
	.loc 2 2502 21 discriminator 2
	movzbl	-185(%rbp), %eax
	movzbl	%al, %edx
	.loc 2 2502 28 discriminator 2
	movq	-304(%rbp), %rax
	movzbl	55(%rax), %eax
	.loc 2 2502 24 discriminator 2
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2502 21 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -185(%rbp)
.LBE39:
	.loc 2 2429 32 discriminator 2
	movq	-304(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -304(%rbp)
	.loc 2 2429 51 discriminator 2
	addq	$1, -296(%rbp)
.L510:
	.loc 2 2429 3 discriminator 1
	cmpq	$0, -304(%rbp)
	jne	.L531
	.loc 2 2507 8
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	default_key_compare
	.loc 2 2507 7
	xorl	$1, %eax
	.loc 2 2507 6
	testb	%al, %al
	jne	.L532
	.loc 2 2508 16
	movzbl	-185(%rbp), %eax
	.loc 2 2508 7
	testb	%al, %al
	je	.L533
	.loc 2 2508 29 discriminator 1
	movzbl	stable(%rip), %eax
	.loc 2 2508 25 discriminator 1
	testb	%al, %al
	jne	.L534
	.loc 2 2508 36 discriminator 3
	movzbl	unique(%rip), %eax
	testb	%al, %al
	je	.L533
.L534:
	.loc 2 2508 47 discriminator 4
	movq	keylist(%rip), %rax
	testq	%rax, %rax
	je	.L533
.L532:
.LBB42:
	.loc 2 2510 12
	movzbl	-185(%rbp), %eax
	movb	%al, -308(%rbp)
	.loc 2 2511 13
	movzbl	stable(%rip), %eax
	xorl	$1, %eax
	.loc 2 2511 10
	testb	%al, %al
	je	.L535
	.loc 2 2511 20 discriminator 1
	movzbl	unique(%rip), %eax
	xorl	$1, %eax
	.loc 2 2511 11 discriminator 1
	testb	%al, %al
	je	.L535
	.loc 2 2512 23
	movb	$0, -185(%rbp)
.L535:
	.loc 2 2515 7
	leaq	-80(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	key_to_opts
	.loc 2 2517 14
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC139(%rip), %rsi
	leaq	.LC140(%rip), %rdi
	call	ngettext@PLT
	movq	%rax, %rdx
	.loc 2 2516 7
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 2520 21
	movzbl	-308(%rbp), %eax
	movb	%al, -185(%rbp)
.L533:
.LBE42:
	.loc 2 2522 12
	movzbl	-185(%rbp), %eax
	.loc 2 2522 6
	testb	%al, %al
	je	.L538
	.loc 2 2522 26 discriminator 1
	movzbl	stable(%rip), %eax
	xorl	$1, %eax
	.loc 2 2522 21 discriminator 1
	testb	%al, %al
	je	.L538
	.loc 2 2522 33 discriminator 2
	movzbl	unique(%rip), %eax
	xorl	$1, %eax
	.loc 2 2522 24 discriminator 2
	testb	%al, %al
	je	.L538
	.loc 2 2522 44 discriminator 3
	movq	keylist(%rip), %rax
	testq	%rax, %rax
	je	.L538
	.loc 2 2523 18
	leaq	.LC141(%rip), %rdi
	call	gettext@PLT
	.loc 2 2523 5
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L538:
	.loc 2 2524 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L537
	call	__stack_chk_fail@PLT
.L537:
	addq	$320, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	key_warnings, .-key_warnings
	.type	keycompare, @function
keycompare:
.LFB104:
	.loc 2 2531 1
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
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -4184(%rbp)
	movq	%rsi, -4192(%rbp)
	.loc 2 2531 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 2532 20
	movq	keylist(%rip), %rax
	movq	%rax, -4160(%rbp)
	.loc 2 2536 9
	movq	-4184(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -4152(%rbp)
	.loc 2 2537 9
	movq	-4192(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -4144(%rbp)
	.loc 2 2538 9
	movq	-4184(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -4136(%rbp)
	.loc 2 2539 9
	movq	-4192(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -4128(%rbp)
.L613:
.LBB43:
	.loc 2 2545 19
	movq	-4160(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -4072(%rbp)
	.loc 2 2546 19
	movq	-4160(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -4064(%rbp)
	.loc 2 2549 12
	movq	-4152(%rbp), %rax
	cmpq	%rax, -4136(%rbp)
	cmovnb	-4136(%rbp), %rax
	movq	%rax, -4136(%rbp)
	.loc 2 2550 12
	movq	-4144(%rbp), %rax
	cmpq	%rax, -4128(%rbp)
	cmovnb	-4128(%rbp), %rax
	movq	%rax, -4128(%rbp)
	.loc 2 2553 26
	movq	-4136(%rbp), %rax
	subq	-4152(%rbp), %rax
	.loc 2 2553 14
	movq	%rax, -4056(%rbp)
	.loc 2 2554 26
	movq	-4128(%rbp), %rax
	subq	-4144(%rbp), %rax
	.loc 2 2554 14
	movq	%rax, -4048(%rbp)
	.loc 2 2556 11
	movzbl	hard_LC_COLLATE(%rip), %eax
	.loc 2 2556 10
	testb	%al, %al
	jne	.L540
	.loc 2 2556 30 discriminator 1
	movq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	key_numeric
	.loc 2 2556 27 discriminator 1
	testb	%al, %al
	jne	.L540
	.loc 2 2557 17
	movq	-4160(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 2 2557 11
	testb	%al, %al
	jne	.L540
	.loc 2 2557 31 discriminator 1
	movq	-4160(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 2 2557 25 discriminator 1
	testb	%al, %al
	jne	.L540
	.loc 2 2557 46 discriminator 2
	movq	-4160(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 2 2557 40 discriminator 2
	testb	%al, %al
	je	.L541
.L540:
.LBB44:
	.loc 2 2564 16
	movb	$0, -4166(%rbp)
	.loc 2 2565 16
	movb	$0, -4165(%rbp)
	.loc 2 2566 17
	movq	$0, -4088(%rbp)
	.loc 2 2569 14
	cmpq	$0, -4064(%rbp)
	jne	.L542
	.loc 2 2569 22 discriminator 1
	cmpq	$0, -4072(%rbp)
	je	.L543
.L542:
.LBB45:
	.loc 2 2578 38
	movq	-4056(%rbp), %rdx
	movq	-4048(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2578 22
	addq	$2, %rax
	movq	%rax, -4040(%rbp)
	.loc 2 2579 18
	cmpq	$4000, -4040(%rbp)
	ja	.L544
	.loc 2 2580 20
	leaq	-4032(%rbp), %rax
	movq	%rax, -4120(%rbp)
	.loc 2 2580 42
	movq	$0, -4088(%rbp)
	jmp	.L545
.L544:
	.loc 2 2582 34
	movq	-4040(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -4088(%rbp)
	.loc 2 2582 20
	movq	-4088(%rbp), %rax
	movq	%rax, -4120(%rbp)
.L545:
	.loc 2 2583 30
	movq	-4056(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 2 2583 18
	movq	-4120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4112(%rbp)
	.loc 2 2587 30
	movq	$0, -4080(%rbp)
	.loc 2 2587 26
	movq	-4080(%rbp), %rax
	movq	%rax, -4104(%rbp)
	.loc 2 2587 15
	jmp	.L546
.L551:
	.loc 2 2588 20
	cmpq	$0, -4064(%rbp)
	je	.L547
	.loc 2 2588 56 discriminator 1
	movq	-4152(%rbp), %rdx
	movq	-4080(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 2588 41 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	.loc 2 2588 40 discriminator 1
	movq	-4064(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 2588 31 discriminator 1
	xorl	$1, %eax
	.loc 2 2588 21 discriminator 1
	testb	%al, %al
	je	.L548
.L547:
	.loc 2 2589 31
	cmpq	$0, -4072(%rbp)
	je	.L549
	.loc 2 2590 61 discriminator 1
	movq	-4152(%rbp), %rdx
	movq	-4080(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 2590 46 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	.loc 2 2590 45 discriminator 1
	movq	-4072(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2589 31 discriminator 1
	movzbl	(%rax), %eax
	jmp	.L550
.L549:
	.loc 2 2591 41 discriminator 2
	movq	-4152(%rbp), %rdx
	movq	-4080(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2589 31 discriminator 2
	movzbl	(%rax), %eax
.L550:
	.loc 2 2589 27 discriminator 4
	movq	-4104(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -4104(%rbp)
	.loc 2 2589 21 discriminator 4
	movq	-4120(%rbp), %rcx
	addq	%rcx, %rdx
	.loc 2 2589 31 discriminator 4
	movb	%al, (%rdx)
.L548:
	.loc 2 2587 46 discriminator 2
	addq	$1, -4080(%rbp)
.L546:
	.loc 2 2587 15 discriminator 1
	movq	-4080(%rbp), %rax
	cmpq	-4056(%rbp), %rax
	jb	.L551
	.loc 2 2592 17
	movq	-4120(%rbp), %rdx
	movq	-4104(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2592 25
	movb	$0, (%rax)
	.loc 2 2594 30
	movq	$0, -4080(%rbp)
	.loc 2 2594 26
	movq	-4080(%rbp), %rax
	movq	%rax, -4096(%rbp)
	.loc 2 2594 15
	jmp	.L552
.L557:
	.loc 2 2595 20
	cmpq	$0, -4064(%rbp)
	je	.L553
	.loc 2 2595 56 discriminator 1
	movq	-4144(%rbp), %rdx
	movq	-4080(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 2595 41 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	.loc 2 2595 40 discriminator 1
	movq	-4064(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 2595 31 discriminator 1
	xorl	$1, %eax
	.loc 2 2595 21 discriminator 1
	testb	%al, %al
	je	.L554
.L553:
	.loc 2 2596 31
	cmpq	$0, -4072(%rbp)
	je	.L555
	.loc 2 2597 61 discriminator 1
	movq	-4144(%rbp), %rdx
	movq	-4080(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 2597 46 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	.loc 2 2597 45 discriminator 1
	movq	-4072(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2596 31 discriminator 1
	movzbl	(%rax), %eax
	jmp	.L556
.L555:
	.loc 2 2598 41 discriminator 2
	movq	-4144(%rbp), %rdx
	movq	-4080(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2596 31 discriminator 2
	movzbl	(%rax), %eax
.L556:
	.loc 2 2596 27 discriminator 4
	movq	-4096(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -4096(%rbp)
	.loc 2 2596 21 discriminator 4
	movq	-4112(%rbp), %rcx
	addq	%rcx, %rdx
	.loc 2 2596 31 discriminator 4
	movb	%al, (%rdx)
.L554:
	.loc 2 2594 46 discriminator 2
	addq	$1, -4080(%rbp)
.L552:
	.loc 2 2594 15 discriminator 1
	movq	-4080(%rbp), %rax
	cmpq	-4048(%rbp), %rax
	jb	.L557
	.loc 2 2599 17
	movq	-4112(%rbp), %rdx
	movq	-4096(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2599 25
	movb	$0, (%rax)
.LBE45:
	.loc 2 2570 13
	jmp	.L558
.L543:
	.loc 2 2604 18
	movq	-4152(%rbp), %rax
	movq	%rax, -4120(%rbp)
	.loc 2 2604 33
	movq	-4056(%rbp), %rax
	movq	%rax, -4104(%rbp)
	.loc 2 2604 50
	movq	-4120(%rbp), %rdx
	movq	-4104(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2604 46
	movzbl	(%rax), %eax
	movb	%al, -4166(%rbp)
	.loc 2 2604 61
	movq	-4120(%rbp), %rdx
	movq	-4104(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2604 69
	movb	$0, (%rax)
	.loc 2 2605 18
	movq	-4144(%rbp), %rax
	movq	%rax, -4112(%rbp)
	.loc 2 2605 33
	movq	-4048(%rbp), %rax
	movq	%rax, -4096(%rbp)
	.loc 2 2605 50
	movq	-4112(%rbp), %rdx
	movq	-4096(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2605 46
	movzbl	(%rax), %eax
	movb	%al, -4165(%rbp)
	.loc 2 2605 61
	movq	-4112(%rbp), %rdx
	movq	-4096(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2605 69
	movb	$0, (%rax)
.L558:
	.loc 2 2608 18
	movq	-4160(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 2 2608 14
	testb	%al, %al
	je	.L559
	.loc 2 2609 20
	movq	-4112(%rbp), %rdx
	movq	-4120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	numcompare
	movl	%eax, -4164(%rbp)
	jmp	.L560
.L559:
	.loc 2 2610 23
	movq	-4160(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 2 2610 19
	testb	%al, %al
	je	.L561
	.loc 2 2611 20
	movq	-4112(%rbp), %rdx
	movq	-4120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	general_numcompare
	movl	%eax, -4164(%rbp)
	jmp	.L560
.L561:
	.loc 2 2612 23
	movq	-4160(%rbp), %rax
	movzbl	53(%rax), %eax
	.loc 2 2612 19
	testb	%al, %al
	je	.L562
	.loc 2 2613 20
	movq	-4112(%rbp), %rdx
	movq	-4120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	human_numcompare
	movl	%eax, -4164(%rbp)
	jmp	.L560
.L562:
	.loc 2 2614 23
	movq	-4160(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 2 2614 19
	testb	%al, %al
	je	.L563
	.loc 2 2615 20
	movq	-4120(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	getmonth
	movl	%eax, %ebx
	.loc 2 2615 42
	movq	-4112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	getmonth
	.loc 2 2615 18
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -4164(%rbp)
	jmp	.L560
.L563:
	.loc 2 2616 23
	movq	-4160(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 2 2616 19
	testb	%al, %al
	je	.L564
	.loc 2 2617 20
	movq	-4096(%rbp), %rcx
	movq	-4112(%rbp), %rdx
	movq	-4104(%rbp), %rsi
	movq	-4120(%rbp), %rax
	movq	%rax, %rdi
	call	compare_random
	movl	%eax, -4164(%rbp)
	jmp	.L560
.L564:
	.loc 2 2618 23
	movq	-4160(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 2 2618 19
	testb	%al, %al
	je	.L565
	.loc 2 2619 20
	movq	-4112(%rbp), %rdx
	movq	-4120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	filevercmp@PLT
	movl	%eax, -4164(%rbp)
	jmp	.L560
.L565:
	.loc 2 2624 18
	cmpq	$0, -4104(%rbp)
	jne	.L566
	.loc 2 2625 26
	cmpq	$0, -4096(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 2 2625 22
	negl	%eax
	movl	%eax, -4164(%rbp)
	jmp	.L560
.L566:
	.loc 2 2626 23
	cmpq	$0, -4096(%rbp)
	jne	.L567
	.loc 2 2627 22
	movl	$1, -4164(%rbp)
	jmp	.L560
.L567:
	.loc 2 2629 24
	movq	-4096(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-4104(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-4112(%rbp), %rdx
	movq	-4120(%rbp), %rax
	movq	%rax, %rdi
	call	xmemcoll0@PLT
	movl	%eax, -4164(%rbp)
.L560:
	.loc 2 2632 14
	cmpq	$0, -4064(%rbp)
	jne	.L568
	.loc 2 2632 22 discriminator 1
	cmpq	$0, -4072(%rbp)
	je	.L569
.L568:
	.loc 2 2633 13
	movq	-4088(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE44:
	.loc 2 2558 9
	jmp	.L571
.L569:
.LBB46:
	.loc 2 2636 17
	movq	-4120(%rbp), %rdx
	movq	-4104(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 2636 25
	movzbl	-4166(%rbp), %eax
	movb	%al, (%rdx)
	.loc 2 2637 17
	movq	-4112(%rbp), %rdx
	movq	-4096(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 2637 25
	movzbl	-4165(%rbp), %eax
	movb	%al, (%rdx)
.LBE46:
	.loc 2 2558 9
	jmp	.L571
.L541:
	.loc 2 2640 15
	cmpq	$0, -4064(%rbp)
	je	.L572
	.loc 2 2664 14
	cmpq	$0, -4072(%rbp)
	je	.L584
	.loc 2 2665 13
	jmp	.L574
.L576:
	.loc 2 2665 13 is_stmt 0 discriminator 3
	addq	$1, -4152(%rbp)
.L574:
	.loc 2 2665 13 discriminator 1
	movq	-4152(%rbp), %rax
	cmpq	-4136(%rbp), %rax
	jnb	.L577
	.loc 2 2665 13 discriminator 2
	movq	-4152(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	movq	-4064(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L576
	.loc 2 2665 13
	jmp	.L577
.L579:
	.loc 2 2665 13 discriminator 7
	addq	$1, -4144(%rbp)
.L577:
	.loc 2 2665 13 discriminator 4
	movq	-4144(%rbp), %rax
	cmpq	-4128(%rbp), %rax
	jnb	.L578
	.loc 2 2665 13 discriminator 5
	movq	-4144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	movq	-4064(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L579
.L578:
	.loc 2 2665 13 discriminator 8
	movq	-4152(%rbp), %rax
	cmpq	-4136(%rbp), %rax
	jnb	.L580
	.loc 2 2665 13 discriminator 10
	movq	-4144(%rbp), %rax
	cmpq	-4128(%rbp), %rax
	jnb	.L580
	.loc 2 2665 13 discriminator 12
	movq	-4152(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	movq	-4072(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %ebx
	movq	-4144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	movq	-4072(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -4164(%rbp)
	cmpl	$0, -4164(%rbp)
	jne	.L620
	.loc 2 2665 13 discriminator 14
	addq	$1, -4152(%rbp)
	addq	$1, -4144(%rbp)
	jmp	.L574
.L580:
	.loc 2 2665 13 discriminator 11
	movq	-4152(%rbp), %rax
	cmpq	-4136(%rbp), %rax
	setb	%al
	movzbl	%al, %edx
	movq	-4144(%rbp), %rax
	cmpq	-4128(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4164(%rbp)
	jmp	.L571
.L586:
	.loc 2 2668 13 is_stmt 1 discriminator 3
	addq	$1, -4152(%rbp)
.L584:
	.loc 2 2668 13 is_stmt 0 discriminator 1
	movq	-4152(%rbp), %rax
	cmpq	-4136(%rbp), %rax
	jnb	.L587
	.loc 2 2668 13 discriminator 2
	movq	-4152(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	movq	-4064(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L586
	.loc 2 2668 13
	jmp	.L587
.L589:
	.loc 2 2668 13 discriminator 7
	addq	$1, -4144(%rbp)
.L587:
	.loc 2 2668 13 discriminator 4
	movq	-4144(%rbp), %rax
	cmpq	-4128(%rbp), %rax
	jnb	.L588
	.loc 2 2668 13 discriminator 5
	movq	-4144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	movq	-4064(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L589
.L588:
	.loc 2 2668 13 discriminator 8
	movq	-4152(%rbp), %rax
	cmpq	-4136(%rbp), %rax
	jnb	.L590
	.loc 2 2668 13 discriminator 10
	movq	-4144(%rbp), %rax
	cmpq	-4128(%rbp), %rax
	jnb	.L590
	.loc 2 2668 13 discriminator 12
	movq	-4152(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %ebx
	movq	-4144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -4164(%rbp)
	cmpl	$0, -4164(%rbp)
	jne	.L621
	.loc 2 2668 13 discriminator 14
	addq	$1, -4152(%rbp)
	addq	$1, -4144(%rbp)
	jmp	.L584
.L590:
	.loc 2 2668 13 discriminator 11
	movq	-4152(%rbp), %rax
	cmpq	-4136(%rbp), %rax
	setb	%al
	movzbl	%al, %edx
	movq	-4144(%rbp), %rax
	cmpq	-4128(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4164(%rbp)
	jmp	.L571
.L572:
	.loc 2 2670 15 is_stmt 1
	cmpq	$0, -4056(%rbp)
	jne	.L592
	.loc 2 2671 18
	cmpq	$0, -4048(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 2 2671 14
	negl	%eax
	movl	%eax, -4164(%rbp)
	jmp	.L571
.L592:
	.loc 2 2672 15
	cmpq	$0, -4048(%rbp)
	je	.L622
	.loc 2 2676 14
	cmpq	$0, -4072(%rbp)
	je	.L595
	.loc 2 2678 21
	jmp	.L596
.L598:
	.loc 2 2680 63
	movq	-4152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -4152(%rbp)
	.loc 2 2680 57
	movzbl	(%rax), %eax
	.loc 2 2680 47
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	.loc 2 2680 46
	movq	-4072(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 2680 27
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %ebx
	.loc 2 2681 65
	movq	-4144(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -4144(%rbp)
	.loc 2 2681 59
	movzbl	(%rax), %eax
	.loc 2 2681 49
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %edx
	.loc 2 2681 48
	movq	-4072(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 2681 29
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 2680 24
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -4164(%rbp)
	.loc 2 2682 22
	cmpl	$0, -4164(%rbp)
	jne	.L623
.L596:
	.loc 2 2678 21
	movq	-4152(%rbp), %rax
	cmpq	-4136(%rbp), %rax
	jnb	.L597
	.loc 2 2678 35 discriminator 1
	movq	-4144(%rbp), %rax
	cmpq	-4128(%rbp), %rax
	jb	.L598
	jmp	.L597
.L595:
	.loc 2 2688 22
	movq	-4056(%rbp), %rax
	cmpq	%rax, -4048(%rbp)
	cmovbe	-4048(%rbp), %rax
	movq	%rax, %rdx
	movq	-4144(%rbp), %rcx
	movq	-4152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4164(%rbp)
	.loc 2 2689 18
	cmpl	$0, -4164(%rbp)
	jne	.L624
.L597:
	.loc 2 2692 35
	movq	-4056(%rbp), %rax
	cmpq	-4048(%rbp), %rax
	jb	.L599
	.loc 2 2692 42 discriminator 1
	movq	-4056(%rbp), %rax
	cmpq	-4048(%rbp), %rax
	setne	%al
	.loc 2 2692 35 discriminator 1
	movzbl	%al, %eax
	jmp	.L600
.L599:
	.loc 2 2692 35 is_stmt 0 discriminator 2
	movl	$-1, %eax
.L600:
	.loc 2 2692 16 is_stmt 1 discriminator 4
	movl	%eax, -4164(%rbp)
.L571:
	.loc 2 2695 10
	cmpl	$0, -4164(%rbp)
	jne	.L625
	.loc 2 2698 11
	movq	-4160(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -4160(%rbp)
	.loc 2 2699 10
	cmpq	$0, -4160(%rbp)
	je	.L626
	.loc 2 2703 14
	movq	-4160(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 2703 10
	cmpq	$-1, %rax
	je	.L604
	.loc 2 2704 16
	movq	-4160(%rbp), %rdx
	movq	-4184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	limfield
	movq	%rax, -4136(%rbp)
	.loc 2 2704 42
	movq	-4160(%rbp), %rdx
	movq	-4192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	limfield
	movq	%rax, -4128(%rbp)
	jmp	.L605
.L604:
	.loc 2 2706 17
	movq	-4184(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 2706 27
	movq	-4184(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 2706 36
	subq	$1, %rax
	.loc 2 2706 14
	addq	%rdx, %rax
	movq	%rax, -4136(%rbp)
	.loc 2 2706 49
	movq	-4192(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 2706 59
	movq	-4192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 2706 68
	subq	$1, %rax
	.loc 2 2706 46
	addq	%rdx, %rax
	movq	%rax, -4128(%rbp)
.L605:
	.loc 2 2708 14
	movq	-4160(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2708 10
	cmpq	$-1, %rax
	je	.L606
	.loc 2 2709 17
	movq	-4160(%rbp), %rdx
	movq	-4184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	begfield
	movq	%rax, -4152(%rbp)
	.loc 2 2709 44
	movq	-4160(%rbp), %rdx
	movq	-4192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	begfield
	movq	%rax, -4144(%rbp)
	jmp	.L613
.L606:
	.loc 2 2712 17
	movq	-4184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -4152(%rbp)
	.loc 2 2712 34
	movq	-4192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -4144(%rbp)
	.loc 2 2713 18
	movq	-4160(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 2713 14
	testb	%al, %al
	je	.L613
	.loc 2 2715 21
	jmp	.L608
.L610:
	.loc 2 2716 17
	addq	$1, -4152(%rbp)
.L608:
	.loc 2 2715 21
	movq	-4152(%rbp), %rax
	cmpq	-4136(%rbp), %rax
	jnb	.L611
	.loc 2 2715 55 discriminator 1
	movq	-4152(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2715 45 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 2715 44 discriminator 1
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 2715 35 discriminator 1
	testb	%al, %al
	jne	.L610
	.loc 2 2717 21
	jmp	.L611
.L612:
	.loc 2 2718 17
	addq	$1, -4144(%rbp)
.L611:
	.loc 2 2717 21
	movq	-4144(%rbp), %rax
	cmpq	-4128(%rbp), %rax
	jnb	.L613
	.loc 2 2717 55 discriminator 1
	movq	-4144(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2717 45 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 2717 44 discriminator 1
	cltq
	leaq	blanks(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 2717 35 discriminator 1
	testb	%al, %al
	jne	.L612
.LBE43:
	.loc 2 2544 5
	jmp	.L613
.L626:
.LBB47:
	.loc 2 2700 9
	nop
.LBE47:
	.loc 2 2723 10
	movl	$0, %eax
	jmp	.L614
.L622:
.LBB48:
	.loc 2 2673 9
	nop
.L594:
	endbr64
.LBE48:
	.loc 2 2726 8
	movl	$1, -4164(%rbp)
	jmp	.L582
.L620:
.LBB49:
	.loc 2 2665 13
	nop
	jmp	.L582
.L621:
	.loc 2 2668 13
	nop
	jmp	.L582
.L623:
	.loc 2 2683 21
	nop
	jmp	.L582
.L624:
	.loc 2 2690 17
	nop
	jmp	.L582
.L625:
	.loc 2 2696 9
	nop
.L582:
.LBE49:
	.loc 2 2728 13
	movq	-4160(%rbp), %rax
	movzbl	55(%rax), %eax
	.loc 2 2728 31
	testb	%al, %al
	je	.L615
	.loc 2 2728 31 is_stmt 0 discriminator 1
	movl	-4164(%rbp), %eax
	negl	%eax
	jmp	.L614
.L615:
	.loc 2 2728 31 discriminator 2
	movl	-4164(%rbp), %eax
.L614:
	.loc 2 2729 1 is_stmt 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L617
	call	__stack_chk_fail@PLT
.L617:
	addq	$4184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	keycompare, .-keycompare
	.type	compare, @function
compare:
.LFB105:
	.loc 2 2736 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 2743 7
	movq	keylist(%rip), %rax
	.loc 2 2743 6
	testq	%rax, %rax
	je	.L628
	.loc 2 2745 14
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	keycompare
	movl	%eax, -20(%rbp)
	.loc 2 2746 10
	cmpl	$0, -20(%rbp)
	jne	.L629
	.loc 2 2746 16 discriminator 1
	movzbl	unique(%rip), %eax
	testb	%al, %al
	jne	.L629
	.loc 2 2746 26 discriminator 2
	movzbl	stable(%rip), %eax
	testb	%al, %al
	je	.L628
.L629:
	.loc 2 2747 16
	movl	-20(%rbp), %eax
	jmp	.L630
.L628:
	.loc 2 2752 11
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 2752 8
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	.loc 2 2752 33
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 2752 30
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc 2 2754 6
	cmpq	$0, -16(%rbp)
	jne	.L631
	.loc 2 2755 14
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 2 2755 10
	negl	%eax
	movl	%eax, -20(%rbp)
	jmp	.L632
.L631:
	.loc 2 2756 11
	cmpq	$0, -8(%rbp)
	jne	.L633
	.loc 2 2757 10
	movl	$1, -20(%rbp)
	jmp	.L632
.L633:
	.loc 2 2758 12
	movzbl	hard_LC_COLLATE(%rip), %eax
	.loc 2 2758 11
	testb	%al, %al
	je	.L634
	.loc 2 2764 14
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	.loc 2 2764 45
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 2764 14
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rsi
	.loc 2 2764 26
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2764 14
	movq	%rax, %rdi
	call	xmemcoll0@PLT
	movl	%eax, -20(%rbp)
	jmp	.L632
.L634:
	.loc 2 2766 22
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	cmovbe	-8(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 2766 40
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 2766 31
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2766 22
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -20(%rbp)
	.loc 2 2766 11
	cmpl	$0, -20(%rbp)
	jne	.L632
	.loc 2 2767 29
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L635
	.loc 2 2767 36 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setne	%al
	.loc 2 2767 29 discriminator 1
	movzbl	%al, %eax
	jmp	.L636
.L635:
	.loc 2 2767 29 is_stmt 0 discriminator 2
	movl	$-1, %eax
.L636:
	.loc 2 2767 10 is_stmt 1 discriminator 4
	movl	%eax, -20(%rbp)
.L632:
	.loc 2 2769 18
	movzbl	reverse(%rip), %eax
	.loc 2 2769 26
	testb	%al, %al
	je	.L637
	.loc 2 2769 26 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax
	negl	%eax
	jmp	.L630
.L637:
	.loc 2 2769 26 discriminator 2
	movl	-20(%rbp), %eax
.L630:
	.loc 2 2770 1 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	compare, .-compare
	.section	.rodata
.LC142:
	.string	"write failed"
	.text
	.type	write_line, @function
write_line:
.LFB106:
	.loc 2 2779 1
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
	.loc 2 2780 9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 2781 10
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 2782 9
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 2784 6
	cmpq	$0, -72(%rbp)
	jne	.L640
	.loc 2 2784 20 discriminator 1
	movzbl	debug(%rip), %eax
	testb	%al, %al
	je	.L640
.LBB50:
	.loc 2 2787 19
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 2789 13
	jmp	.L641
.L644:
.LBB51:
	.loc 2 2791 23
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 2791 16
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
	.loc 2 2792 14
	cmpb	$9, -33(%rbp)
	jne	.L642
	.loc 2 2793 16
	movb	$62, -33(%rbp)
	jmp	.L643
.L642:
	.loc 2 2794 19
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L643
	.loc 2 2795 16
	movb	$10, -33(%rbp)
.L643:
	.loc 2 2796 15
	movsbl	-33(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc_unlocked@PLT
	.loc 2 2796 14
	cmpl	$-1, %eax
	jne	.L641
	.loc 2 2797 23
	leaq	.LC142(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 2797 13
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sort_die
.L641:
.LBE51:
	.loc 2 2789 13
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L644
	.loc 2 2800 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	debug_line
.LBE50:
	.loc 2 2785 5
	jmp	.L645
.L640:
	.loc 2 2804 11
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	.loc 2 2804 16
	movzbl	eolchar(%rip), %eax
	movb	%al, (%rdx)
	.loc 2 2805 11
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 2805 10
	cmpq	%rax, -16(%rbp)
	je	.L646
	.loc 2 2806 19
	leaq	.LC142(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 2806 9
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sort_die
.L646:
	.loc 2 2807 11
	movq	-8(%rbp), %rax
	subq	$1, %rax
	.loc 2 2807 16
	movb	$0, (%rax)
	.loc 2 2809 1
	nop
.L645:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	write_line, .-write_line
	.section	.rodata
.LC143:
	.string	"%s: %s:%s: disorder: "
.LC144:
	.string	"standard error"
	.text
	.type	check, @function
check:
.LFB107:
	.loc 2 2818 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$224, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -232(%rbp)
	movl	%esi, %eax
	movb	%al, -236(%rbp)
	.loc 2 2818 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 2819 14
	movq	-232(%rbp), %rax
	leaq	.LC113(%rip), %rsi
	movq	%rax, %rdi
	call	xfopen
	movq	%rax, -184(%rbp)
	.loc 2 2822 10
	movq	$0, -208(%rbp)
	.loc 2 2823 13
	movq	$0, -200(%rbp)
	.loc 2 2824 26
	movq	keylist(%rip), %rax
	movq	%rax, -176(%rbp)
	.loc 2 2825 3
	movzbl	unique(%rip), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2825 8
	movb	%al, -209(%rbp)
	andb	$1, -209(%rbp)
	.loc 2 2826 8
	movb	$1, -210(%rbp)
	.loc 2 2828 3
	movq	sort_size(%rip), %rdx
	movq	merge_buffer_size(%rip), %rax
	cmpq	%rax, %rdx
	cmovb	%rax, %rdx
	leaq	-112(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	initbuf
	.loc 2 2830 13
	movq	$0, -144(%rbp)
	.loc 2 2832 9
	jmp	.L648
.L659:
.LBB52:
	.loc 2 2834 33
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	buffer_linelim
	movq	%rax, -192(%rbp)
	.loc 2 2835 47
	movq	-96(%rbp), %rax
	.loc 2 2835 42
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	.loc 2 2835 26
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -168(%rbp)
	.loc 2 2839 10
	cmpq	$0, -208(%rbp)
	je	.L653
	.loc 2 2839 30 discriminator 1
	movzbl	-209(%rbp), %ebx
	.loc 2 2839 33 discriminator 1
	movq	-192(%rbp), %rax
	leaq	-32(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare
	.loc 2 2839 17 discriminator 1
	cmpl	%eax, %ebx
	jg	.L653
	.loc 2 2841 9
	nop
	jmp	.L650
.L662:
	.loc 2 2863 11
	nop
.L650:
	.loc 2 2843 16
	cmpb	$99, -236(%rbp)
	jne	.L651
.LBB53:
	.loc 2 2845 36
	movq	-192(%rbp), %rax
	subq	$32, %rax
	movq	%rax, -160(%rbp)
	.loc 2 2847 19
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	buffer_linelim
	.loc 2 2847 41
	subq	-160(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	.loc 2 2846 27
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	.loc 2 2849 17
	leaq	-48(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %r12
	movq	program_name(%rip), %rbx
	.loc 2 2849 34
	leaq	.LC143(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 2849 17
	movq	stderr(%rip), %rax
	movq	-232(%rbp), %rdx
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 2852 52
	leaq	.LC144(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 2852 17
	movq	stderr(%rip), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_line
.L651:
.LBE53:
	.loc 2 2855 21
	movb	$0, -210(%rbp)
	.loc 2 2856 13
	jmp	.L652
.L654:
	.loc 2 2862 23
	movzbl	-209(%rbp), %ebx
	.loc 2 2862 26
	movq	-192(%rbp), %rax
	leaq	-32(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare
	.loc 2 2862 12
	cmpl	%eax, %ebx
	jle	.L662
.L653:
	.loc 2 2861 13
	subq	$32, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-168(%rbp), %rax
	ja	.L654
	.loc 2 2865 25
	movq	-96(%rbp), %rax
	.loc 2 2865 19
	addq	%rax, -200(%rbp)
	.loc 2 2868 23
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 2868 10
	cmpq	%rax, -208(%rbp)
	jnb	.L655
.L658:
	.loc 2 2872 21
	salq	-208(%rbp)
	.loc 2 2873 18
	cmpq	$0, -208(%rbp)
	jne	.L656
	.loc 2 2875 25
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)
	.loc 2 2876 19
	jmp	.L657
.L656:
	.loc 2 2879 30
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 2879 11
	cmpq	%rax, -208(%rbp)
	jb	.L658
.L657:
	.loc 2 2881 21
	movq	-144(%rbp), %rax
	.loc 2 2881 11
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2882 23
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 2882 21
	movq	%rax, -144(%rbp)
.L655:
	.loc 2 2884 7
	movq	-192(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 2884 30
	movq	-192(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 2884 19
	movq	-144(%rbp), %rax
	.loc 2 2884 7
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 2885 25
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 2885 19
	movq	%rax, -136(%rbp)
	.loc 2 2886 10
	cmpq	$0, -176(%rbp)
	je	.L648
	.loc 2 2888 29
	movq	-144(%rbp), %rdx
	.loc 2 2888 42
	movq	-192(%rbp), %rax
	movq	16(%rax), %rcx
	.loc 2 2888 57
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2888 51
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 2888 35
	addq	%rdx, %rax
	.loc 2 2888 23
	movq	%rax, -128(%rbp)
	.loc 2 2889 29
	movq	-144(%rbp), %rdx
	.loc 2 2889 42
	movq	-192(%rbp), %rax
	movq	24(%rax), %rcx
	.loc 2 2889 57
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2889 51
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 2889 35
	addq	%rdx, %rax
	.loc 2 2889 23
	movq	%rax, -120(%rbp)
.L648:
.LBE52:
	.loc 2 2832 10
	movq	-232(%rbp), %rdx
	movq	-184(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fillbuf
	.loc 2 2832 9
	testb	%al, %al
	jne	.L659
.L652:
	.loc 2 2893 3
	movq	-232(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xfclose
	.loc 2 2894 12
	movq	-112(%rbp), %rax
	.loc 2 2894 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2895 13
	movq	-144(%rbp), %rax
	.loc 2 2895 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2896 10
	movzbl	-210(%rbp), %eax
	.loc 2 2897 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L661
	call	__stack_chk_fail@PLT
.L661:
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	check, .-check
	.type	open_input_files, @function
open_input_files:
.LFB108:
	.loc 2 2906 1
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
	.loc 2 2907 24
	movq	-32(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, %rdx
	.loc 2 2907 22
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 2907 10
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2911 10
	movl	$0, -12(%rbp)
	.loc 2 2911 3
	jmp	.L664
.L669:
	.loc 2 2913 22
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2913 25
	movq	8(%rax), %rax
	.loc 2 2915 17
	testq	%rax, %rax
	je	.L665
	.loc 2 2913 39
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2913 42
	movq	8(%rax), %rax
	.loc 2 2913 47
	movzbl	12(%rax), %eax
	.loc 2 2913 31
	testb	%al, %al
	je	.L665
	.loc 2 2914 35
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2914 19
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	open_temp
	.loc 2 2915 17
	jmp	.L666
.L665:
	.loc 2 2915 37 discriminator 1
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2915 19 discriminator 1
	movq	(%rax), %rax
	leaq	.LC113(%rip), %rsi
	movq	%rax, %rdi
	call	stream_open
.L666:
	.loc 2 2913 10
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 2913 14
	movq	%rax, (%rdx)
	.loc 2 2916 15
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 2916 10
	testq	%rax, %rax
	je	.L671
	.loc 2 2911 28 discriminator 2
	addl	$1, -12(%rbp)
.L664:
	.loc 2 2911 17 discriminator 1
	movl	-12(%rbp), %eax
	cltq
	.loc 2 2911 3 discriminator 1
	cmpq	%rax, -32(%rbp)
	ja	.L669
	jmp	.L668
.L671:
	.loc 2 2917 9
	nop
.L668:
	.loc 2 2920 10
	movl	-12(%rbp), %eax
	cltq
	.loc 2 2921 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	open_input_files, .-open_input_files
	.type	mergefps, @function
mergefps:
.LFB109:
	.loc 2 2934 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	.loc 2 2934 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 2935 27
	movq	-248(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -152(%rbp)
	.loc 2 2938 22
	movq	$0, -208(%rbp)
	.loc 2 2940 10
	movq	$0, -200(%rbp)
	.loc 2 2941 29
	movq	-248(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -144(%rbp)
	.loc 2 2943 30
	movq	-248(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -136(%rbp)
	.loc 2 2945 17
	movq	-248(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -128(%rbp)
	.loc 2 2952 26
	movq	keylist(%rip), %rax
	movq	%rax, -120(%rbp)
	.loc 2 2953 14
	movq	$0, -64(%rbp)
	.loc 2 2956 10
	movq	$0, -192(%rbp)
	.loc 2 2956 3
	jmp	.L673
.L678:
	.loc 2 2959 16
	movq	sort_size(%rip), %rax
	movl	$0, %edx
	divq	-248(%rbp)
	movq	%rax, %rdx
	.loc 2 2958 7
	movq	merge_buffer_size(%rip), %rax
	cmpq	%rax, %rdx
	cmovnb	%rdx, %rax
	movq	%rax, %rcx
	.loc 2 2958 23
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 2 2958 7
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rdx
	movl	$32, %esi
	movq	%rax, %rdi
	call	initbuf
	.loc 2 2960 45
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2960 11
	movq	(%rax), %rsi
	.loc 2 2960 35
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2960 11
	movq	(%rax), %rcx
	.loc 2 2960 27
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 2 2960 11
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fillbuf
	.loc 2 2960 10
	testb	%al, %al
	je	.L674
.LBB54:
	.loc 2 2962 63
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 2 2962 56
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2962 40
	movq	%rax, %rdi
	call	buffer_linelim
	movq	%rax, -72(%rbp)
	.loc 2 2963 14
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2963 28
	movq	-72(%rbp), %rdx
	subq	$32, %rdx
	.loc 2 2963 18
	movq	%rdx, (%rax)
	.loc 2 2964 37
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2964 40
	movq	16(%rax), %rax
	.loc 2 2964 29
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rcx
	.loc 2 2964 15
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2964 29
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 2964 19
	movq	%rdx, (%rax)
	.loc 2 2965 12
	addq	$1, -192(%rbp)
.LBE54:
	jmp	.L673
.L674:
	.loc 2 2970 33
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2970 11
	movq	(%rax), %rdx
	.loc 2 2970 23
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-272(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 2970 11
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xfclose
	.loc 2 2971 14
	movq	-192(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jnb	.L675
	.loc 2 2973 21
	subq	$1, -240(%rbp)
	.loc 2 2974 29
	movq	-192(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2974 15
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	zaptemp
.L675:
	.loc 2 2976 23
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2976 26
	movq	(%rax), %rax
	.loc 2 2976 11
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2977 11
	subq	$1, -248(%rbp)
	.loc 2 2978 18
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 2 2978 11
	jmp	.L676
.L677:
	.loc 2 2980 31 discriminator 3
	movq	-184(%rbp), %rax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2980 20 discriminator 3
	movq	-184(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-232(%rbp), %rdx
	addq	%rdx, %rcx
	.loc 2 2980 24 discriminator 3
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	.loc 2 2981 27 discriminator 3
	movq	-184(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2981 18 discriminator 3
	movq	-184(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-272(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 2981 27 discriminator 3
	movq	(%rax), %rax
	.loc 2 2981 22 discriminator 3
	movq	%rax, (%rdx)
	.loc 2 2978 35 discriminator 3
	addq	$1, -184(%rbp)
.L676:
	.loc 2 2978 11 discriminator 1
	movq	-184(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jb	.L677
.L673:
	.loc 2 2956 3 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jb	.L678
	.loc 2 2989 10
	movq	$0, -192(%rbp)
	.loc 2 2989 3
	jmp	.L679
.L680:
	.loc 2 2990 8 discriminator 3
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 2990 12 discriminator 3
	movq	-192(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 2989 27 discriminator 3
	addq	$1, -192(%rbp)
.L679:
	.loc 2 2989 3 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jb	.L680
	.loc 2 2991 10
	movq	$1, -192(%rbp)
	.loc 2 2991 3
	jmp	.L681
.L683:
	.loc 2 2992 46
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 2992 42
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2992 13
	movq	(%rax), %rdx
	.loc 2 2992 29
	movq	-192(%rbp), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rcx
	movq	-128(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	.loc 2 2992 25
	leaq	0(,%rax,8), %rcx
	movq	-144(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 2992 13
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare
	.loc 2 2992 8
	testl	%eax, %eax
	jle	.L682
	.loc 2 2993 14
	movq	-192(%rbp), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2993 9
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	.loc 2 2993 39
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2993 26
	movq	-192(%rbp), %rdx
	salq	$3, %rdx
	leaq	-8(%rdx), %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 2993 39
	movq	(%rax), %rax
	.loc 2 2993 34
	movq	%rax, (%rdx)
	.loc 2 2993 47
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 2993 51
	movq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 2993 58
	movq	$0, -192(%rbp)
.L682:
	.loc 2 2991 27 discriminator 2
	addq	$1, -192(%rbp)
.L681:
	.loc 2 2991 3 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jb	.L683
	.loc 2 2996 9
	jmp	.L684
.L710:
.LBB55:
	.loc 2 2998 44
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2998 40
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2998 26
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	.loc 2 3002 11
	movzbl	unique(%rip), %eax
	.loc 2 3002 10
	testb	%al, %al
	je	.L685
	.loc 2 3004 14
	cmpq	$0, -208(%rbp)
	je	.L686
	.loc 2 3004 28 discriminator 1
	movq	-112(%rbp), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare
	.loc 2 3004 25 discriminator 1
	testl	%eax, %eax
	je	.L686
	.loc 2 3006 25
	movq	$0, -208(%rbp)
	.loc 2 3007 15
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_line
.L686:
	.loc 2 3009 14
	cmpq	$0, -208(%rbp)
	jne	.L687
	.loc 2 3011 25
	leaq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)
	.loc 2 3012 39
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3012 18
	cmpq	%rax, -200(%rbp)
	jnb	.L688
.L691:
	.loc 2 3015 24
	cmpq	$0, -200(%rbp)
	jne	.L689
	.loc 2 3017 35
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)
	.loc 2 3018 25
	jmp	.L690
.L689:
	.loc 2 3020 37
	salq	-200(%rbp)
	.loc 2 3020 53
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3020 19
	cmpq	%rax, -200(%rbp)
	jb	.L691
.L690:
	.loc 2 3022 30
	movq	-64(%rbp), %rax
	.loc 2 3022 19
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 3023 32
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 3023 30
	movq	%rax, -64(%rbp)
.L688:
	.loc 2 3025 38
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3025 28
	movq	%rax, -56(%rbp)
	.loc 2 3026 15
	movq	-56(%rbp), %rdx
	.loc 2 3026 43
	movq	-112(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 3026 28
	movq	-64(%rbp), %rax
	.loc 2 3026 15
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 3027 18
	cmpq	$0, -120(%rbp)
	je	.L687
	.loc 2 3030 26
	movq	-64(%rbp), %rdx
	.loc 2 3030 43
	movq	-112(%rbp), %rax
	movq	16(%rax), %rcx
	.loc 2 3030 62
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3030 52
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 3030 32
	addq	%rdx, %rax
	.loc 2 3029 32
	movq	%rax, -48(%rbp)
	.loc 2 3032 26
	movq	-64(%rbp), %rdx
	.loc 2 3032 43
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	.loc 2 3032 62
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3032 52
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 3032 32
	addq	%rdx, %rax
	.loc 2 3031 32
	movq	%rax, -40(%rbp)
	jmp	.L687
.L685:
	.loc 2 3037 9
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_line
.L687:
	.loc 2 3040 19
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3040 15
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 3040 10
	cmpq	%rax, -112(%rbp)
	jbe	.L692
	.loc 2 3041 16
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3041 12
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3041 32
	movq	-112(%rbp), %rdx
	subq	$32, %rdx
	.loc 2 3041 21
	movq	%rdx, (%rax)
	jmp	.L693
.L692:
	.loc 2 3044 63
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3044 59
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3044 15
	movq	(%rax), %rsi
	.loc 2 3044 48
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3044 44
	leaq	0(,%rax,8), %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3044 15
	movq	(%rax), %rcx
	.loc 2 3044 35
	movq	-128(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 3044 31
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 2 3044 15
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fillbuf
	.loc 2 3044 14
	testb	%al, %al
	je	.L694
.LBB56:
	.loc 2 3046 71
	movq	-128(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 3046 67
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 2 3046 60
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3046 44
	movq	%rax, %rdi
	call	buffer_linelim
	movq	%rax, -104(%rbp)
	.loc 2 3047 22
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3047 18
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3047 37
	movq	-104(%rbp), %rdx
	subq	$32, %rdx
	.loc 2 3047 27
	movq	%rdx, (%rax)
	.loc 2 3048 50
	movq	-128(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 3048 46
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3048 54
	movq	16(%rax), %rax
	.loc 2 3048 38
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rcx
	.loc 2 3048 23
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3048 19
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3048 38
	movq	-104(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 3048 28
	movq	%rdx, (%rax)
.LBE56:
	jmp	.L693
.L694:
	.loc 2 3053 22
	movq	$1, -192(%rbp)
	.loc 2 3053 15
	jmp	.L695
.L697:
	.loc 2 3054 24
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	.loc 2 3054 33
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3054 20
	cmpq	%rax, %rdx
	jbe	.L696
	.loc 2 3055 24
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	.loc 2 3055 19
	subq	$1, %rdx
	movq	%rdx, (%rax)
.L696:
	.loc 2 3053 39 discriminator 2
	addq	$1, -192(%rbp)
.L695:
	.loc 2 3053 15 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jb	.L697
	.loc 2 3056 15
	subq	$1, -248(%rbp)
	.loc 2 3057 46
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3057 42
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3057 15
	movq	(%rax), %rdx
	.loc 2 3057 31
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3057 27
	leaq	0(,%rax,8), %rcx
	movq	-272(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 3057 15
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xfclose
	.loc 2 3058 22
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3058 18
	cmpq	%rax, -240(%rbp)
	jbe	.L698
	.loc 2 3060 25
	subq	$1, -240(%rbp)
	.loc 2 3061 37
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3061 33
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3061 19
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	zaptemp
.L698:
	.loc 2 3063 31
	movq	-128(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 3063 27
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3063 35
	movq	(%rax), %rax
	.loc 2 3063 15
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 3064 22
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	.loc 2 3064 15
	jmp	.L699
.L700:
	.loc 2 3066 31 discriminator 3
	movq	-192(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3066 22 discriminator 3
	movq	-192(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-272(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 3066 31 discriminator 3
	movq	(%rax), %rax
	.loc 2 3066 26 discriminator 3
	movq	%rax, (%rdx)
	.loc 2 3067 35 discriminator 3
	movq	-192(%rbp), %rax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3067 24 discriminator 3
	movq	-192(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-232(%rbp), %rdx
	addq	%rdx, %rcx
	.loc 2 3067 28 discriminator 3
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	.loc 2 3068 37 discriminator 3
	movq	-192(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 3068 25 discriminator 3
	movq	-192(%rbp), %rcx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-152(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 3068 29 discriminator 3
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	.loc 2 3069 31 discriminator 3
	movq	-192(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3069 22 discriminator 3
	movq	-192(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-144(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 3069 31 discriminator 3
	movq	(%rax), %rax
	.loc 2 3069 26 discriminator 3
	movq	%rax, (%rdx)
	.loc 2 3070 33 discriminator 3
	movq	-192(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3070 23 discriminator 3
	movq	-192(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-136(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 3070 33 discriminator 3
	movq	(%rax), %rax
	.loc 2 3070 27 discriminator 3
	movq	%rax, (%rdx)
	.loc 2 3064 44 discriminator 3
	addq	$1, -192(%rbp)
.L699:
	.loc 2 3064 15 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jb	.L700
	.loc 2 3072 22
	movq	$0, -192(%rbp)
	.loc 2 3072 15
	jmp	.L701
.L702:
	.loc 2 3073 29 discriminator 3
	movq	-192(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3073 20 discriminator 3
	movq	-192(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 3073 29 discriminator 3
	movq	(%rax), %rax
	.loc 2 3073 24 discriminator 3
	movq	%rax, (%rdx)
	.loc 2 3072 39 discriminator 3
	addq	$1, -192(%rbp)
.L701:
	.loc 2 3072 15 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jb	.L702
	.loc 2 3074 15
	jmp	.L684
.L693:
.LBB57:
	.loc 2 3083 16
	movq	$1, -176(%rbp)
	.loc 2 3084 16
	movq	-248(%rbp), %rax
	movq	%rax, -168(%rbp)
	.loc 2 3085 16
	movq	-176(%rbp), %rax
	movq	%rax, -160(%rbp)
	.loc 2 3086 16
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	.loc 2 3089 15
	jmp	.L703
.L707:
.LBB58:
	.loc 2 3091 50
	movq	-160(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 3091 46
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3091 23
	movq	(%rax), %rdx
	.loc 2 3091 35
	movq	-96(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-144(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 3091 23
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare
	movl	%eax, -212(%rbp)
	.loc 2 3092 16
	cmpl	$0, -212(%rbp)
	js	.L704
	.loc 2 3092 25 discriminator 1
	cmpl	$0, -212(%rbp)
	jne	.L705
	.loc 2 3092 51 discriminator 2
	movq	-160(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 3092 38 discriminator 2
	cmpq	%rax, -96(%rbp)
	jnb	.L705
.L704:
	.loc 2 3093 18
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.L706
.L705:
	.loc 2 3095 18
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
.L706:
	.loc 2 3096 25
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3096 19
	shrq	%rax
	movq	%rax, -160(%rbp)
.L703:
.LBE58:
	.loc 2 3089 15
	movq	-176(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jb	.L707
	.loc 2 3099 32
	movq	-176(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	.loc 2 3100 16
	movq	$0, -184(%rbp)
	.loc 2 3100 9
	jmp	.L708
.L709:
	.loc 2 3101 23 discriminator 3
	movq	-184(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3101 14 discriminator 3
	movq	-184(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 3101 23 discriminator 3
	movq	(%rax), %rax
	.loc 2 3101 18 discriminator 3
	movq	%rax, (%rdx)
	.loc 2 3100 50 discriminator 3
	addq	$1, -184(%rbp)
.L708:
	.loc 2 3100 9 discriminator 1
	movq	-184(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L709
	.loc 2 3102 12
	movq	-88(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 3102 37
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L684:
.LBE57:
.LBE55:
	.loc 2 2996 9
	cmpq	$0, -248(%rbp)
	jne	.L710
	.loc 2 3106 7
	movzbl	unique(%rip), %eax
	.loc 2 3106 6
	testb	%al, %al
	je	.L711
	.loc 2 3106 14 discriminator 1
	cmpq	$0, -208(%rbp)
	je	.L711
	.loc 2 3108 7
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_line
	.loc 2 3109 18
	movq	-64(%rbp), %rax
	.loc 2 3109 7
	movq	%rax, %rdi
	call	free@PLT
.L711:
	.loc 2 3112 3
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xfclose
	.loc 2 3113 3
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 3114 3
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 3115 3
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 3116 3
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 3117 3
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 3118 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L712
	call	__stack_chk_fail@PLT
.L712:
	addq	$264, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	mergefps, .-mergefps
	.type	mergefiles, @function
mergefiles:
.LFB110:
	.loc 2 3133 1
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
	.loc 2 3133 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 3135 20
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	open_input_files
	movq	%rax, -32(%rbp)
	.loc 2 3136 6
	movq	-32(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L714
	.loc 2 3136 24 discriminator 1
	cmpq	$1, -32(%rbp)
	ja	.L714
	.loc 2 3137 38
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3137 5
	movq	(%rax), %rbx
	.loc 2 3137 15
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	.loc 2 3137 5
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	sort_die
.L714:
	.loc 2 3138 3
	movq	-40(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mergefps
	.loc 2 3139 10
	movq	-32(%rbp), %rax
	.loc 2 3140 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L716
	call	__stack_chk_fail@PLT
.L716:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	mergefiles, .-mergefiles
	.type	mergelines, @function
mergelines:
.LFB111:
	.loc 2 3151 1
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
	.loc 2 3152 10
	movq	-48(%rbp), %rax
	shrq	%rax
	movq	%rax, -24(%rbp)
	.loc 2 3153 10
	movq	-48(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 3154 23
	movq	-24(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	.loc 2 3154 16
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L722:
	.loc 2 3157 29
	movq	-8(%rbp), %rax
	leaq	-32(%rax), %rdx
	.loc 2 3157 9
	movq	-56(%rbp), %rax
	subq	$32, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare
	.loc 2 3157 8
	testl	%eax, %eax
	jg	.L718
	.loc 2 3159 14
	subq	$32, -56(%rbp)
	subq	$32, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 2 3160 12
	subq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L722
	.loc 2 3164 13
	jmp	.L717
.L718:
	.loc 2 3169 14
	subq	$32, -8(%rbp)
	subq	$32, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 2 3170 12
	subq	$1, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L722
.L721:
	.loc 2 3173 20 discriminator 1
	subq	$32, -56(%rbp)
	subq	$32, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 2 3174 13 discriminator 1
	subq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L721
.L717:
	.loc 2 3179 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	mergelines, .-mergelines
	.type	sequential_sort, @function
sequential_sort:
.LFB112:
	.loc 2 3198 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, %eax
	movb	%al, -92(%rbp)
	.loc 2 3199 6
	cmpq	$2, -80(%rbp)
	jne	.L724
.LBB59:
	.loc 2 3204 44
	movq	-72(%rbp), %rax
	leaq	-64(%rax), %rdx
	.loc 2 3204 32
	movq	-72(%rbp), %rax
	subq	$32, %rax
	.loc 2 3204 23
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare
	.loc 2 3204 21
	testl	%eax, %eax
	setg	%al
	.loc 2 3204 11
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	.loc 2 3205 10
	cmpb	$0, -92(%rbp)
	je	.L725
	.loc 2 3207 31
	movl	-52(%rbp), %eax
	notl	%eax
	cltq
	.loc 2 3207 27
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	.loc 2 3207 15
	movq	-88(%rbp), %rax
	leaq	-32(%rax), %rcx
	.loc 2 3207 20
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 2 3208 31
	movl	-52(%rbp), %eax
	subl	$2, %eax
	cltq
	.loc 2 3208 27
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	.loc 2 3208 15
	movq	-88(%rbp), %rax
	leaq	-64(%rax), %rcx
	.loc 2 3208 20
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.LBE59:
	.loc 2 3244 1
	jmp	.L733
.L725:
.LBB60:
	.loc 2 3210 15
	cmpl	$0, -52(%rbp)
	je	.L733
	.loc 2 3212 15
	movq	-88(%rbp), %rax
	leaq	-32(%rax), %rsi
	.loc 2 3212 20
	movq	-72(%rbp), %rcx
	movq	-32(%rcx), %rax
	movq	-24(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	-16(%rcx), %rax
	movq	-8(%rcx), %rdx
	movq	%rax, 16(%rsi)
	movq	%rdx, 24(%rsi)
	.loc 2 3213 16
	movq	-72(%rbp), %rax
	leaq	-32(%rax), %rsi
	.loc 2 3213 21
	movq	-72(%rbp), %rcx
	movq	-64(%rcx), %rax
	movq	-56(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	-48(%rcx), %rax
	movq	-40(%rcx), %rdx
	movq	%rax, 16(%rsi)
	movq	%rdx, 24(%rsi)
	.loc 2 3214 16
	movq	-72(%rbp), %rax
	leaq	-64(%rax), %rsi
	.loc 2 3214 21
	movq	-88(%rbp), %rcx
	movq	-32(%rcx), %rax
	movq	-24(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	-16(%rcx), %rax
	movq	-8(%rcx), %rdx
	movq	%rax, 16(%rsi)
	movq	%rdx, 24(%rsi)
.LBE60:
	.loc 2 3244 1
	jmp	.L733
.L724:
.LBB61:
	.loc 2 3219 14
	movq	-80(%rbp), %rax
	shrq	%rax
	movq	%rax, -32(%rbp)
	.loc 2 3220 14
	movq	-80(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 3221 20
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 3222 31
	movq	-32(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	.loc 2 3222 20
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 3224 7
	movzbl	-92(%rbp), %edx
	.loc 2 3224 38
	cmpb	$0, -92(%rbp)
	je	.L727
	.loc 2 3224 38 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rcx
	jmp	.L728
.L727:
	.loc 2 3224 38 discriminator 2
	movl	$0, %ecx
.L728:
	.loc 2 3224 7 is_stmt 1 discriminator 4
	movq	-88(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	sequential_sort
	.loc 2 3225 10 discriminator 4
	cmpq	$1, -32(%rbp)
	jbe	.L729
	.loc 2 3226 9
	movzbl	-92(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 3226 41
	andl	$1, %eax
	.loc 2 3226 9
	movzbl	%al, %ecx
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sequential_sort
	jmp	.L730
.L729:
	.loc 2 3227 16
	movzbl	-92(%rbp), %eax
	xorl	$1, %eax
	.loc 2 3227 15
	testb	%al, %al
	je	.L730
	.loc 2 3228 13
	movq	-88(%rbp), %rax
	leaq	-32(%rax), %rsi
	.loc 2 3228 18
	movq	-16(%rbp), %rcx
	movq	-32(%rcx), %rax
	movq	-24(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	-16(%rcx), %rax
	movq	-8(%rcx), %rdx
	movq	%rax, 16(%rsi)
	movq	%rdx, 24(%rsi)
.L730:
	.loc 2 3232 10
	cmpb	$0, -92(%rbp)
	je	.L731
	.loc 2 3234 16
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 3235 21
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L732
.L731:
	.loc 2 3239 16
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 3240 21
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
.L732:
	.loc 2 3242 7
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mergelines
.L733:
.LBE61:
	.loc 2 3244 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	sequential_sort, .-sequential_sort
	.type	merge_tree_init, @function
merge_tree_init:
.LFB113:
	.loc 2 3255 1
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
	.loc 2 3256 35
	movq	-24(%rbp), %rax
	salq	$8, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -16(%rbp)
	.loc 2 3258 22
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 3259 53
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	.loc 2 3259 44
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 3259 38
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 3259 29
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 3259 23
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 3259 18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 3259 12
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 3260 14
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	.loc 2 3261 25
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	.loc 2 3261 19
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 3261 13
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 2 3262 16
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	.loc 2 3263 15
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
	.loc 2 3264 16
	movq	-8(%rbp), %rax
	movb	$0, 84(%rax)
	.loc 2 3265 3
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_mutex_init@PLT
	.loc 2 3267 3
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rsi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	init_node
	.loc 2 3268 10
	movq	-16(%rbp), %rax
	.loc 2 3269 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	merge_tree_init, .-merge_tree_init
	.type	merge_tree_destroy, @function
merge_tree_destroy:
.LFB114:
	.loc 2 3274 1
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
	.loc 2 3275 10
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -16(%rbp)
	.loc 2 3276 22
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 3278 9
	jmp	.L737
.L738:
	.loc 2 3280 7
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	pthread_mutex_destroy@PLT
	.loc 2 3281 11
	subq	$-128, -8(%rbp)
.L737:
	.loc 2 3278 17
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 3278 9
	testq	%rax, %rax
	jne	.L738
	.loc 2 3284 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 3285 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	merge_tree_destroy, .-merge_tree_destroy
	.type	init_node, @function
init_node:
.LFB115:
	.loc 2 3299 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	%r9d, %eax
	movb	%al, -124(%rbp)
	.loc 2 3300 46
	cmpb	$0, -124(%rbp)
	je	.L740
	.loc 2 3300 46 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L741
.L740:
	.loc 2 3300 46 discriminator 2
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
.L741:
	.loc 2 3300 10 is_stmt 1 discriminator 4
	movq	%rax, -72(%rbp)
	.loc 2 3301 10 discriminator 4
	movq	-72(%rbp), %rax
	shrq	%rax
	movq	%rax, -64(%rbp)
	.loc 2 3302 10 discriminator 4
	movq	-72(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 2 3303 26 discriminator 4
	movq	-120(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	.loc 2 3303 16 discriminator 4
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 3304 24 discriminator 4
	movq	-64(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	.loc 2 3304 16 discriminator 4
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 2 3305 61 discriminator 4
	cmpb	$0, -124(%rbp)
	je	.L742
	.loc 2 3305 61 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax
	addq	$16, %rax
	jmp	.L743
.L742:
	.loc 2 3305 61 discriminator 2
	movq	-88(%rbp), %rax
	addq	$24, %rax
.L743:
	.loc 2 3305 17 is_stmt 1 discriminator 4
	movq	%rax, -32(%rbp)
	.loc 2 3307 38 discriminator 4
	movq	-96(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	%rdx, -96(%rbp)
	.loc 2 3307 22 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 2 3308 27 discriminator 4
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 3308 18 discriminator 4
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 3308 12 discriminator 4
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 3309 27 discriminator 4
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 2 3309 18 discriminator 4
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 3309 12 discriminator 4
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 3310 14 discriminator 4
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 3311 13 discriminator 4
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 2 3312 13 discriminator 4
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 48(%rax)
	.loc 2 3313 16 discriminator 4
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 56(%rax)
	.loc 2 3314 23 discriminator 4
	movq	-88(%rbp), %rax
	movl	80(%rax), %eax
	.loc 2 3314 31 discriminator 4
	leal	1(%rax), %edx
	.loc 2 3314 15 discriminator 4
	movq	-24(%rbp), %rax
	movl	%edx, 80(%rax)
	.loc 2 3315 16 discriminator 4
	movq	-24(%rbp), %rax
	movb	$0, 84(%rax)
	.loc 2 3316 3 discriminator 4
	movq	-24(%rbp), %rax
	addq	$88, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_mutex_init@PLT
	.loc 2 3318 6 discriminator 4
	cmpq	$1, -112(%rbp)
	jbe	.L744
.LBB62:
	.loc 2 3320 14
	movq	-112(%rbp), %rax
	shrq	%rax
	movq	%rax, -16(%rbp)
	.loc 2 3321 14
	movq	-112(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 3322 22
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 64(%rax)
	.loc 2 3323 19
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	init_node
	movq	%rax, -96(%rbp)
	.loc 2 3325 22
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 72(%rax)
	.loc 2 3326 19
	movq	-120(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	init_node
	movq	%rax, -96(%rbp)
.LBE62:
	jmp	.L745
.L744:
	.loc 2 3331 22
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	.loc 2 3332 22
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
.L745:
	.loc 2 3334 10
	movq	-96(%rbp), %rax
	.loc 2 3335 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	init_node, .-init_node
	.type	compare_nodes, @function
compare_nodes:
.LFB116:
	.loc 2 3342 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 3343 28
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 3344 28
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 3345 12
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	.loc 2 3345 28
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	.loc 2 3345 6
	cmpl	%eax, %edx
	jne	.L748
	.loc 2 3346 20
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 3346 33
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 3346 26
	leaq	(%rdx,%rax), %rcx
	.loc 2 3346 48
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 3346 61
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 3346 54
	addq	%rdx, %rax
	.loc 2 3346 40
	cmpq	%rax, %rcx
	setb	%al
	movzbl	%al, %eax
	jmp	.L749
.L748:
	.loc 2 3347 15
	movq	-16(%rbp), %rax
	movl	80(%rax), %edx
	.loc 2 3347 30
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	.loc 2 3347 23
	cmpl	%eax, %edx
	setb	%al
	movzbl	%al, %eax
.L749:
	.loc 2 3348 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	compare_nodes, .-compare_nodes
	.type	lock_node, @function
lock_node:
.LFB117:
	.loc 2 3354 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 3355 3
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	.loc 2 3356 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	lock_node, .-lock_node
	.type	unlock_node, @function
unlock_node:
.LFB118:
	.loc 2 3362 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 3363 3
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	.loc 2 3364 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	unlock_node, .-unlock_node
	.type	queue_destroy, @function
queue_destroy:
.LFB119:
	.loc 2 3370 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 3371 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	heap_free@PLT
	.loc 2 3372 3
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	pthread_cond_destroy@PLT
	.loc 2 3373 3
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	pthread_mutex_destroy@PLT
	.loc 2 3374 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	queue_destroy, .-queue_destroy
	.type	queue_init, @function
queue_init:
.LFB120:
	.loc 2 3381 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 3385 27
	movq	-16(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, %rsi
	leaq	compare_nodes(%rip), %rdi
	call	heap_alloc@PLT
	.loc 2 3385 25
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 2 3386 3
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_mutex_init@PLT
	.loc 2 3387 3
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_cond_init@PLT
	.loc 2 3388 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	queue_init, .-queue_init
	.type	queue_insert, @function
queue_insert:
.LFB121:
	.loc 2 3395 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 3396 3
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	.loc 2 3397 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	heap_insert@PLT
	.loc 2 3398 16
	movq	-16(%rbp), %rax
	movb	$1, 84(%rax)
	.loc 2 3399 3
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	pthread_cond_signal@PLT
	.loc 2 3400 3
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	.loc 2 3401 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	queue_insert, .-queue_insert
	.type	queue_pop, @function
queue_pop:
.LFB122:
	.loc 2 3407 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 3409 3
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	.loc 2 3410 9
	jmp	.L756
.L757:
	.loc 2 3411 5
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_cond_wait@PLT
.L756:
	.loc 2 3410 20
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	heap_remove_top@PLT
	movq	%rax, -8(%rbp)
	.loc 2 3410 9
	cmpq	$0, -8(%rbp)
	je	.L757
	.loc 2 3412 3
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	.loc 2 3413 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	lock_node
	.loc 2 3414 16
	movq	-8(%rbp), %rax
	movb	$0, 84(%rax)
	.loc 2 3415 10
	movq	-8(%rbp), %rax
	.loc 2 3416 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	queue_pop, .-queue_pop
	.type	write_unique, @function
write_unique:
.LFB123:
	.loc 2 3427 1
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
	.loc 2 3428 7
	movzbl	unique(%rip), %eax
	.loc 2 3428 6
	testb	%al, %al
	je	.L760
	.loc 2 3430 21
	movq	saved_line(%rip), %rax
	.loc 2 3430 10
	testq	%rax, %rax
	je	.L761
	.loc 2 3430 32 discriminator 1
	movq	-8(%rbp), %rax
	leaq	saved_line(%rip), %rsi
	movq	%rax, %rdi
	call	compare
	.loc 2 3430 27 discriminator 1
	testl	%eax, %eax
	je	.L763
.L761:
	.loc 2 3432 18
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, saved_line(%rip)
	movq	%rdx, 8+saved_line(%rip)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, 16+saved_line(%rip)
	movq	%rdx, 24+saved_line(%rip)
.L760:
	.loc 2 3435 3
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_line
	jmp	.L759
.L763:
	.loc 2 3431 9
	nop
.L759:
	.loc 2 3436 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	write_unique, .-write_unique
	.type	mergelines_node, @function
mergelines_node:
.LFB124:
	.loc 2 3448 1
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
	.loc 2 3449 16
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 3450 16
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 3451 21
	movq	-56(%rbp), %rax
	movl	80(%rax), %eax
	addl	$1, %eax
	addl	%eax, %eax
	movq	-64(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	.loc 2 3451 10
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	.loc 2 3455 11
	movq	-56(%rbp), %rax
	movl	80(%rax), %eax
	.loc 2 3455 6
	cmpl	$1, %eax
	jbe	.L777
.LBB63:
	.loc 2 3458 32
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 3458 20
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 3459 13
	jmp	.L766
.L769:
	.loc 2 3460 40
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3460 45
	leaq	-32(%rax), %rdx
	.loc 2 3460 26
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3460 31
	subq	$32, %rax
	.loc 2 3460 13
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare
	.loc 2 3460 12
	testl	%eax, %eax
	jg	.L767
	.loc 2 3461 28
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3461 22
	leaq	-32(%rax), %rdx
	.loc 2 3461 19
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 3461 28
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	.loc 2 3461 19
	subq	$32, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	jmp	.L766
.L767:
	.loc 2 3463 28
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3463 22
	leaq	-32(%rax), %rdx
	.loc 2 3463 19
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 3463 28
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	.loc 2 3463 19
	subq	$32, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L766:
	.loc 2 3459 18
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 3459 30
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 3459 13
	cmpq	%rax, %rdx
	je	.L768
	.loc 2 3459 46 discriminator 1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 3459 58 discriminator 1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 3459 39 discriminator 1
	cmpq	%rax, %rdx
	je	.L768
	.loc 2 3459 78 discriminator 2
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 3459 67 discriminator 2
	testq	%rax, %rax
	jne	.L769
.L768:
	.loc 2 3465 33
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3465 27
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	.loc 2 3465 17
	movq	%rax, -16(%rbp)
	.loc 2 3466 33
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3466 27
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	.loc 2 3466 17
	movq	%rax, -8(%rbp)
	.loc 2 3468 15
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 3468 10
	cmpq	%rax, -8(%rbp)
	jne	.L770
	.loc 2 3469 15
	jmp	.L771
.L773:
	.loc 2 3470 28
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3470 22
	leaq	-32(%rax), %rdx
	.loc 2 3470 19
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 3470 28
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	.loc 2 3470 19
	subq	$32, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L771:
	.loc 2 3469 20
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 3469 32
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 3469 15
	cmpq	%rax, %rdx
	je	.L772
	.loc 2 3469 52 discriminator 1
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 3469 41 discriminator 1
	testq	%rax, %rax
	jne	.L773
	jmp	.L772
.L770:
	.loc 2 3471 20
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 3471 15
	cmpq	%rax, -16(%rbp)
	jne	.L772
	.loc 2 3472 15
	jmp	.L774
.L775:
	.loc 2 3473 28
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3473 22
	leaq	-32(%rax), %rdx
	.loc 2 3473 19
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 3473 28
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	.loc 2 3473 19
	subq	$32, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L774:
	.loc 2 3472 20
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 3472 32
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 3472 15
	cmpq	%rax, %rdx
	je	.L772
	.loc 2 3472 52 discriminator 1
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 3472 41 discriminator 1
	testq	%rax, %rax
	jne	.L775
.L772:
	.loc 2 3474 12
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 3474 19
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
.LBE63:
	jmp	.L776
.L780:
	.loc 2 3481 42
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3481 47
	leaq	-32(%rax), %rdx
	.loc 2 3481 28
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3481 33
	subq	$32, %rax
	.loc 2 3481 15
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare
	.loc 2 3481 14
	testl	%eax, %eax
	jg	.L778
	.loc 2 3482 33
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3482 13
	leaq	-32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 3482 33
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3482 13
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_unique
	jmp	.L777
.L778:
	.loc 2 3484 33
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3484 13
	leaq	-32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 3484 33
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3484 13
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_unique
.L777:
	.loc 2 3479 18
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 3479 30
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 3479 13
	cmpq	%rax, %rdx
	je	.L779
	.loc 2 3479 46 discriminator 1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 3479 58 discriminator 1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 3479 39 discriminator 1
	cmpq	%rax, %rdx
	je	.L779
	.loc 2 3479 78 discriminator 2
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 3479 67 discriminator 2
	testq	%rax, %rax
	jne	.L780
.L779:
	.loc 2 3487 33
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3487 27
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	.loc 2 3487 17
	movq	%rax, -16(%rbp)
	.loc 2 3488 33
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3488 27
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	.loc 2 3488 17
	movq	%rax, -8(%rbp)
	.loc 2 3490 15
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 3490 10
	cmpq	%rax, -8(%rbp)
	jne	.L781
	.loc 2 3492 17
	jmp	.L782
.L783:
	.loc 2 3493 33
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3493 13
	leaq	-32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 3493 33
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3493 13
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_unique
.L782:
	.loc 2 3492 22
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 3492 34
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 3492 17
	cmpq	%rax, %rdx
	je	.L776
	.loc 2 3492 54 discriminator 1
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 3492 43 discriminator 1
	testq	%rax, %rax
	jne	.L783
	jmp	.L776
.L781:
	.loc 2 3495 20
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 3495 15
	cmpq	%rax, -16(%rbp)
	jne	.L776
	.loc 2 3497 17
	jmp	.L784
.L785:
	.loc 2 3498 33
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3498 13
	leaq	-32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 3498 33
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3498 13
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_unique
.L784:
	.loc 2 3497 22
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 3497 34
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 3497 17
	cmpq	%rax, %rdx
	je	.L776
	.loc 2 3497 54 discriminator 1
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 3497 43 discriminator 1
	testq	%rax, %rax
	jne	.L785
.L776:
	.loc 2 3503 29
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 3503 23
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	.loc 2 3503 13
	movq	%rax, -16(%rbp)
	.loc 2 3504 29
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3504 23
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	.loc 2 3504 13
	movq	%rax, -8(%rbp)
	.loc 2 3505 13
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 2 3506 13
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	.loc 2 3507 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	mergelines_node, .-mergelines_node
	.type	queue_check_insert, @function
queue_check_insert:
.LFB125:
	.loc 2 3515 1
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
	.loc 2 3516 13
	movq	-32(%rbp), %rax
	movzbl	84(%rax), %eax
	.loc 2 3516 7
	xorl	$1, %eax
	.loc 2 3516 6
	testb	%al, %al
	je	.L795
.LBB64:
	.loc 2 3518 28
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 3518 39
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 3518 12
	cmpq	%rax, %rdx
	setne	%al
	movb	%al, -2(%rbp)
	.loc 2 3519 28
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 3519 39
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 3519 12
	cmpq	%rax, %rdx
	setne	%al
	movb	%al, -1(%rbp)
	.loc 2 3520 11
	cmpb	$0, -2(%rbp)
	je	.L788
	.loc 2 3520 31 discriminator 1
	cmpb	$0, -1(%rbp)
	jne	.L789
	.loc 2 3520 40 discriminator 4
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 3520 31 discriminator 4
	testq	%rax, %rax
	jne	.L790
.L789:
	.loc 2 3520 31 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L791
.L790:
	.loc 2 3520 31 discriminator 6
	movl	$0, %eax
.L791:
	.loc 2 3520 11 is_stmt 1 discriminator 8
	andl	$1, %eax
	jmp	.L792
.L788:
	.loc 2 3520 57 discriminator 2
	cmpb	$0, -1(%rbp)
	je	.L793
	.loc 2 3520 66 discriminator 10
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 3520 57 discriminator 10
	testq	%rax, %rax
	jne	.L793
	.loc 2 3520 57 is_stmt 0 discriminator 12
	movl	$1, %eax
	jmp	.L794
.L793:
	.loc 2 3520 57 discriminator 13
	movl	$0, %eax
.L794:
	.loc 2 3520 11 is_stmt 1 discriminator 15
	andl	$1, %eax
.L792:
	.loc 2 3520 10 discriminator 16
	testb	%al, %al
	je	.L795
	.loc 2 3521 9
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	queue_insert
.L795:
.LBE64:
	.loc 2 3523 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	queue_check_insert, .-queue_check_insert
	.type	queue_check_insert_parent, @function
queue_check_insert_parent:
.LFB126:
	.loc 2 3530 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 3531 11
	movq	-16(%rbp), %rax
	movl	80(%rax), %eax
	.loc 2 3531 6
	cmpl	$1, %eax
	jbe	.L797
	.loc 2 3533 7
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	lock_node
	.loc 2 3534 7
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	queue_check_insert
	.loc 2 3535 7
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	unlock_node
	.loc 2 3543 1
	jmp	.L799
.L797:
	.loc 2 3537 16
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 3537 28
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 3537 22
	addq	%rdx, %rax
	.loc 2 3537 11
	testq	%rax, %rax
	jne	.L799
	.loc 2 3541 7
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	queue_insert
.L799:
	.loc 2 3543 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	queue_check_insert_parent, .-queue_check_insert_parent
	.type	merge_loop, @function
merge_loop:
.LFB127:
	.loc 2 3554 1
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
	movq	%rcx, -48(%rbp)
.L803:
.LBB65:
	.loc 2 3557 33
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	queue_pop
	movq	%rax, -8(%rbp)
	.loc 2 3559 15
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	.loc 2 3559 10
	testl	%eax, %eax
	jne	.L801
	.loc 2 3561 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	unlock_node
	.loc 2 3563 11
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	queue_insert
	.loc 2 3564 11
	jmp	.L804
.L801:
	.loc 2 3566 7
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mergelines_node
	.loc 2 3567 7
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	queue_check_insert
	.loc 2 3568 7
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	queue_check_insert_parent
	.loc 2 3570 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	unlock_node
.LBE65:
	.loc 2 3556 5
	jmp	.L803
.L804:
	.loc 2 3572 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	merge_loop, .-merge_loop
	.type	sortlines_thread, @function
sortlines_thread:
.LFB128:
	.loc 2 3611 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 3612 29
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 3613 3
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %r9
	movq	-8(%rbp), %rax
	movq	32(%rax), %r8
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	sortlines
	addq	$16, %rsp
	.loc 2 3616 10
	movl	$0, %eax
	.loc 2 3617 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	sortlines_thread, .-sortlines_thread
	.type	sortlines, @function
sortlines:
.LFB129:
	.loc 2 3647 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 2 3647 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 3648 23
	movq	-160(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 3648 35
	movq	-160(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 3648 10
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	.loc 2 3651 10
	movq	-144(%rbp), %rax
	shrq	%rax
	movq	%rax, -104(%rbp)
	.loc 2 3652 10
	movq	-144(%rbp), %rax
	subq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 2 3654 22
	movq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 3655 34
	movq	-160(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 3654 22
	movq	%rax, -40(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 3657 6
	cmpq	$1, -144(%rbp)
	jbe	.L808
	.loc 2 3657 20 discriminator 1
	cmpq	$131071, -112(%rbp)
	jbe	.L808
	.loc 2 3658 10
	leaq	-64(%rbp), %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rcx
	leaq	sortlines_thread(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	.loc 2 3658 7
	testl	%eax, %eax
	jne	.L808
	.loc 2 3660 7
	movq	-160(%rbp), %rax
	movq	72(%rax), %rcx
	.loc 2 3660 30
	movq	-160(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 3660 24
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	.loc 2 3660 7
	movq	-136(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-176(%rbp), %r8
	movq	-168(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	-184(%rbp)
	movq	%r8, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	sortlines
	addq	$16, %rsp
	.loc 2 3662 7
	movq	-120(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join@PLT
	jmp	.L809
.L808:
.LBB66:
	.loc 2 3668 14
	movq	-160(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -88(%rbp)
	.loc 2 3669 14
	movq	-160(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -80(%rbp)
	.loc 2 3670 33
	movq	-152(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	.loc 2 3670 20
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 2 3671 10
	cmpq	$1, -80(%rbp)
	jbe	.L810
	.loc 2 3672 55
	movq	-88(%rbp), %rax
	shrq	%rax
	.loc 2 3672 49
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	.loc 2 3672 9
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 3672 32
	movq	-88(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rcx
	.loc 2 3672 9
	movq	-136(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	call	sequential_sort
.L810:
	.loc 2 3673 10
	cmpq	$1, -88(%rbp)
	jbe	.L811
	.loc 2 3674 9
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	sequential_sort
.L811:
	.loc 2 3677 16
	movq	-160(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 3678 24
	movq	-88(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 3678 16
	movq	-160(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 3679 28
	movq	-88(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 3679 20
	movq	-160(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 3680 28
	movq	-88(%rbp), %rax
	salq	$5, %rax
	negq	%rax
	movq	%rax, %rdx
	.loc 2 3680 34
	movq	-80(%rbp), %rax
	salq	$5, %rax
	subq	%rax, %rdx
	movq	-136(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 3680 20
	movq	-160(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 3682 7
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	queue_insert
	.loc 2 3683 7
	movq	-184(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	merge_loop
.L809:
.LBE66:
	.loc 2 3685 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L812
	call	__stack_chk_fail@PLT
.L812:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	sortlines, .-sortlines
	.type	avoid_trashing_input, @function
avoid_trashing_input:
.LFB130:
	.loc 2 3707 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	.loc 2 3707 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 3708 20
	movq	$0, -184(%rbp)
.LBB67:
	.loc 2 3710 15
	movq	-224(%rbp), %rax
	movq	%rax, -176(%rbp)
	.loc 2 3710 3
	jmp	.L814
.L826:
.LBB68:
	.loc 2 3712 23
	movq	-176(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC99(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 3712 12
	testl	%eax, %eax
	sete	%al
	movb	%al, -193(%rbp)
	.loc 2 3716 10
	cmpq	$0, -240(%rbp)
	je	.L815
	.loc 2 3716 22 discriminator 1
	movq	-176(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 3716 19 discriminator 1
	testl	%eax, %eax
	jne	.L815
	.loc 2 3716 56 discriminator 2
	movzbl	-193(%rbp), %eax
	xorl	$1, %eax
	.loc 2 3716 53 discriminator 2
	testb	%al, %al
	je	.L815
	.loc 2 3717 14
	movb	$1, -194(%rbp)
	jmp	.L816
.L815:
.LBB69:
	.loc 2 3720 32
	call	get_outstatus
	movq	%rax, -168(%rbp)
	.loc 2 3721 14
	cmpq	$0, -168(%rbp)
	je	.L829
	.loc 2 3728 19
	cmpb	$0, -193(%rbp)
	je	.L819
	.loc 2 3725 23 discriminator 1
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	fstat@PLT
	.loc 2 3728 19 discriminator 1
	testl	%eax, %eax
	je	.L820
	jmp	.L821
.L819:
	.loc 2 3726 34
	movq	-176(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3726 23
	movq	(%rax), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 3727 20
	testl	%eax, %eax
	jne	.L821
.L820:
	.loc 2 3728 22 discriminator 4
	movq	-152(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 3728 19 discriminator 4
	cmpq	%rax, %rdx
	jne	.L821
	.loc 2 3728 22 discriminator 3
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L821
	.loc 2 3728 19 discriminator 5
	movl	$1, %eax
	jmp	.L822
.L821:
	.loc 2 3728 19 is_stmt 0 discriminator 6
	movl	$0, %eax
.L822:
	.loc 2 3724 16 is_stmt 1
	movb	%al, -194(%rbp)
	andb	$1, -194(%rbp)
.L816:
.LBE69:
	.loc 2 3731 10
	cmpb	$0, -194(%rbp)
	je	.L823
	.loc 2 3733 14
	cmpq	$0, -184(%rbp)
	jne	.L824
.LBB70:
	.loc 2 3736 26
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	create_temp
	movq	%rax, -184(%rbp)
	.loc 2 3737 58
	movq	-184(%rbp), %rax
	leaq	13(%rax), %rsi
	.loc 2 3737 15
	movq	-192(%rbp), %rax
	.loc 2 3737 33
	movq	-176(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	.loc 2 3737 15
	movq	-216(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$0, %esi
	call	mergefiles
.L824:
.LBE70:
	.loc 2 3740 16
	movq	-176(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3740 27
	movq	-184(%rbp), %rdx
	addq	$13, %rdx
	.loc 2 3740 25
	movq	%rdx, (%rax)
	.loc 2 3741 16
	movq	-176(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 3741 25
	movq	-184(%rbp), %rax
	movq	%rax, 8(%rdx)
.L823:
.LBE68:
	.loc 2 3710 40
	addq	$1, -176(%rbp)
	jmp	.L814
.L829:
.LBB72:
.LBB71:
	.loc 2 3722 13
	nop
.LBE71:
.LBE72:
.LBE67:
	.loc 2 3744 1
	jmp	.L830
.L814:
.LBB73:
	.loc 2 3710 3 discriminator 1
	movq	-176(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jb	.L826
.L830:
.LBE73:
	.loc 2 3744 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L827
	call	__stack_chk_fail@PLT
.L827:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	avoid_trashing_input, .-avoid_trashing_input
	.section	.rodata
.LC145:
	.string	"cannot read"
	.text
	.type	check_inputs, @function
check_inputs:
.LFB131:
	.loc 2 3757 1
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
	movq	%rsi, -48(%rbp)
.LBB74:
	.loc 2 3758 15
	movq	$0, -24(%rbp)
	.loc 2 3758 3
	jmp	.L832
.L835:
	.loc 2 3760 11
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC99(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 3760 10
	testl	%eax, %eax
	je	.L836
	.loc 2 3763 28
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3763 11
	movq	(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	euidaccess@PLT
	.loc 2 3763 10
	testl	%eax, %eax
	je	.L834
	.loc 2 3764 42
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3764 9
	movq	(%rax), %rbx
	.loc 2 3764 19
	leaq	.LC145(%rip), %rdi
	call	gettext@PLT
	.loc 2 3764 9
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	sort_die
.L836:
	.loc 2 3761 9
	nop
.L834:
	.loc 2 3758 35 discriminator 2
	addq	$1, -24(%rbp)
.L832:
	.loc 2 3758 3 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L835
.LBE74:
	.loc 2 3766 1
	nop
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	check_inputs, .-check_inputs
	.type	check_output, @function
check_output:
.LFB132:
	.loc 2 3774 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 3775 6
	cmpq	$0, -24(%rbp)
	je	.L840
.LBB75:
	.loc 2 3777 11
	movl	$524353, -8(%rbp)
	.loc 2 3778 19
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$438, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -4(%rbp)
	.loc 2 3779 10
	cmpl	$0, -4(%rbp)
	jns	.L839
	.loc 2 3780 19
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 3780 9
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sort_die
.L839:
	.loc 2 3781 7
	movl	-4(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	move_fd
.L840:
.LBE75:
	.loc 2 3783 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	check_output, .-check_output
	.type	merge, @function
merge:
.LFB133:
	.loc 2 3793 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	.loc 2 3793 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 3794 9
	jmp	.L842
.L846:
.LBB76:
	.loc 2 3812 21
	movq	$0, -120(%rbp)
	.loc 2 3812 16
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	.loc 2 3812 7
	jmp	.L843
.L844:
.LBB77:
	.loc 2 3815 35 discriminator 3
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	create_temp
	movq	%rax, -40(%rbp)
	.loc 2 3817 60 discriminator 3
	movq	-40(%rbp), %rax
	leaq	13(%rax), %r8
	.loc 2 3816 31 discriminator 3
	movq	-128(%rbp), %rdx
	movl	nmerge(%rip), %eax
	movl	%eax, %r9d
	movl	nmerge(%rip), %eax
	movl	%eax, %eax
	cmpq	%rax, -160(%rbp)
	cmovbe	-160(%rbp), %rax
	.loc 2 3816 49 discriminator 3
	movq	-120(%rbp), %rcx
	movq	%rcx, %rsi
	salq	$4, %rsi
	.loc 2 3816 31 discriminator 3
	movq	-152(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %rcx
	movq	%r9, %rdx
	movq	%rax, %rsi
	call	mergefiles
	movq	%rax, -32(%rbp)
	.loc 2 3818 21 discriminator 3
	movq	-160(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	cmovbe	-32(%rbp), %rax
	.loc 2 3818 18 discriminator 3
	subq	%rax, -160(%rbp)
	.loc 2 3819 16 discriminator 3
	movq	-112(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3819 29 discriminator 3
	movq	-40(%rbp), %rdx
	addq	$13, %rdx
	.loc 2 3819 27 discriminator 3
	movq	%rdx, (%rax)
	.loc 2 3820 16 discriminator 3
	movq	-112(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 3820 27 discriminator 3
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
	.loc 2 3821 14 discriminator 3
	movq	-32(%rbp), %rax
	addq	%rax, -120(%rbp)
.LBE77:
	.loc 2 3812 52 discriminator 3
	addq	$1, -112(%rbp)
.L843:
	.loc 2 3812 33 discriminator 1
	movl	nmerge(%rip), %eax
	movl	%eax, %edx
	.loc 2 3812 43 discriminator 1
	movq	-168(%rbp), %rax
	subq	-120(%rbp), %rax
	.loc 2 3812 7 discriminator 1
	cmpq	%rax, %rdx
	jbe	.L844
	.loc 2 3824 17
	movq	-168(%rbp), %rax
	subq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 2 3825 28
	movl	nmerge(%rip), %eax
	movl	%eax, %ecx
	.loc 2 3825 34
	movl	nmerge(%rip), %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rax
	.loc 2 3825 19
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -72(%rbp)
	.loc 2 3827 10
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L845
.LBB78:
	.loc 2 3832 42
	movq	-80(%rbp), %rax
	subq	-72(%rbp), %rax
	.loc 2 3832 18
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	.loc 2 3834 35
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	create_temp
	movq	%rax, -56(%rbp)
	.loc 2 3836 65
	movq	-56(%rbp), %rax
	leaq	13(%rax), %r8
	.loc 2 3835 31
	movq	-128(%rbp), %rcx
	movq	-160(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	cmovbe	-64(%rbp), %rax
	.loc 2 3835 49
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	salq	$4, %rsi
	.loc 2 3835 31
	movq	-152(%rbp), %rdx
	leaq	(%rsi,%rdx), %rdi
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	call	mergefiles
	movq	%rax, -48(%rbp)
	.loc 2 3837 21
	movq	-160(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	cmovbe	-48(%rbp), %rax
	.loc 2 3837 18
	subq	%rax, -160(%rbp)
	.loc 2 3838 16
	movq	-112(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3838 29
	movq	-56(%rbp), %rdx
	addq	$13, %rdx
	.loc 2 3838 27
	movq	%rdx, (%rax)
	.loc 2 3839 20
	movq	-112(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	.loc 2 3839 16
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 3839 29
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	.loc 2 3840 14
	movq	-48(%rbp), %rax
	addq	%rax, -120(%rbp)
.L845:
.LBE78:
	.loc 2 3845 49
	movq	-168(%rbp), %rax
	subq	-120(%rbp), %rax
	.loc 2 3845 7
	salq	$4, %rax
	movq	%rax, %rdx
	.loc 2 3845 35
	movq	-120(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	.loc 2 3845 29
	movq	-152(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 3845 22
	movq	-112(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	.loc 2 3845 16
	movq	-152(%rbp), %rax
	addq	%rsi, %rax
	.loc 2 3845 7
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	.loc 2 3846 14
	movq	-112(%rbp), %rax
	addq	%rax, -160(%rbp)
	.loc 2 3847 14
	movq	-112(%rbp), %rax
	subq	-120(%rbp), %rax
	addq	%rax, -168(%rbp)
.L842:
.LBE76:
	.loc 2 3794 17
	movl	nmerge(%rip), %eax
	movl	%eax, %eax
	.loc 2 3794 9
	cmpq	%rax, -168(%rbp)
	ja	.L846
	.loc 2 3850 3
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	avoid_trashing_input
.L853:
.LBB79:
	.loc 2 3860 24
	leaq	-136(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	open_input_files
	movq	%rax, -104(%rbp)
	.loc 2 3862 10
	movq	-104(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jne	.L847
.LBB80:
	.loc 2 3864 23
	movq	-176(%rbp), %rax
	leaq	.LC108(%rip), %rsi
	movq	%rax, %rdi
	call	stream_open
	movq	%rax, -96(%rbp)
	.loc 2 3865 14
	cmpq	$0, -96(%rbp)
	je	.L848
	.loc 2 3867 15
	movq	-136(%rbp), %r8
	movq	-176(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mergefps
	.loc 2 3868 15
	nop
.LBE80:
.LBE79:
	.loc 2 3902 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L854
	jmp	.L855
.L848:
.LBB82:
.LBB81:
	.loc 2 3870 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 3870 14
	cmpl	$24, %eax
	jne	.L850
	.loc 2 3870 31 discriminator 1
	cmpq	$2, -104(%rbp)
	ja	.L852
.L850:
	.loc 2 3871 23
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 3871 13
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sort_die
.L847:
.LBE81:
	.loc 2 3873 15
	cmpq	$2, -104(%rbp)
	ja	.L852
	.loc 2 3874 42
	movq	-104(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3874 9
	movq	(%rax), %rbx
	.loc 2 3874 19
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	.loc 2 3874 9
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	sort_die
.L852:
	.loc 2 3885 18 discriminator 1
	subq	$1, -104(%rbp)
	.loc 2 3886 39 discriminator 1
	movq	-104(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 3886 11 discriminator 1
	movq	(%rax), %rdx
	.loc 2 3886 23 discriminator 1
	movq	-136(%rbp), %rax
	movq	-104(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	.loc 2 3886 11 discriminator 1
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xfclose
	.loc 2 3887 18 discriminator 1
	cmpq	$2, -104(%rbp)
	seta	%al
	movzbl	%al, %edx
	leaq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	maybe_create_temp
	movq	%rax, -88(%rbp)
	.loc 2 3889 7 discriminator 1
	cmpq	$0, -88(%rbp)
	je	.L852
	.loc 2 3892 7
	movq	-136(%rbp), %rdi
	.loc 2 3892 69
	movq	-88(%rbp), %rax
	leaq	13(%rax), %r8
	.loc 2 3892 7
	movq	-128(%rbp), %rcx
	movq	-160(%rbp), %rax
	cmpq	%rax, -104(%rbp)
	cmovbe	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	-104(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	mergefps
	.loc 2 3894 17
	movq	-160(%rbp), %rax
	cmpq	%rax, -104(%rbp)
	cmovbe	-104(%rbp), %rax
	.loc 2 3894 14
	subq	%rax, -160(%rbp)
	.loc 2 3895 23
	movq	-88(%rbp), %rax
	leaq	13(%rax), %rdx
	.loc 2 3895 21
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 3896 21
	movq	-152(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 3898 52
	movq	-168(%rbp), %rax
	subq	-104(%rbp), %rax
	.loc 2 3898 7
	salq	$4, %rax
	movq	%rax, %rdx
	.loc 2 3898 33
	movq	-104(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	.loc 2 3898 27
	movq	-152(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 3898 16
	movq	-152(%rbp), %rax
	addq	$16, %rax
	.loc 2 3898 7
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	.loc 2 3899 13
	addq	$1, -160(%rbp)
	.loc 2 3900 14
	movq	-168(%rbp), %rax
	subq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
.LBE82:
	.loc 2 3857 5
	jmp	.L853
.L855:
	.loc 2 3902 1
	call	__stack_chk_fail@PLT
.L854:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	merge, .-merge
	.type	sort, @function
sort:
.LFB134:
	.loc 2 3909 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	%rcx, -320(%rbp)
	.loc 2 3909 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 3911 3
	movq	$0, -176(%rbp)
	.loc 2 3912 10
	movq	$0, -264(%rbp)
	.loc 2 3913 8
	movb	$0, -281(%rbp)
	.loc 2 3915 13
	movq	$0, -152(%rbp)
	.loc 2 3917 9
	jmp	.L857
.L872:
.LBB83:
	.loc 2 3920 19
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	.loc 2 3921 18
	movq	-208(%rbp), %rax
	leaq	.LC113(%rip), %rsi
	movq	%rax, %rdi
	call	xfopen
	.loc 2 3921 13
	movq	%rax, -280(%rbp)
	.loc 2 3925 10
	cmpq	$1, -320(%rbp)
	jbe	.L858
.LBB84:
	.loc 2 3928 18
	movq	$1, -240(%rbp)
	.loc 2 3929 18
	movq	$1, -232(%rbp)
	.loc 2 3930 17
	jmp	.L859
.L860:
	.loc 2 3932 19
	salq	-240(%rbp)
	.loc 2 3933 19
	addq	$1, -232(%rbp)
.L859:
	.loc 2 3930 17
	movq	-240(%rbp), %rax
	cmpq	-320(%rbp), %rax
	jb	.L860
	.loc 2 3935 26
	movq	-232(%rbp), %rax
	salq	$5, %rax
	movq	%rax, -248(%rbp)
.LBE84:
	jmp	.L861
.L858:
	.loc 2 3938 24
	movq	$48, -248(%rbp)
.L861:
	.loc 2 3940 16
	movq	-152(%rbp), %rax
	.loc 2 3940 10
	testq	%rax, %rax
	jne	.L862
	.loc 2 3941 9
	movq	-248(%rbp), %rsi
	movq	-304(%rbp), %rcx
	movq	-296(%rbp), %rdx
	leaq	-280(%rbp), %rax
	movq	%rsi, %r8
	movl	$1, %esi
	movq	%rax, %rdi
	call	sort_buffer_size
	movq	%rax, %rdx
	movq	-248(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	initbuf
.L862:
	.loc 2 3943 15
	movb	$0, -128(%rbp)
	.loc 2 3944 12
	addq	$8, -296(%rbp)
	.loc 2 3945 13
	subq	$1, -304(%rbp)
	.loc 2 3947 13
	jmp	.L863
.L871:
.LBB85:
	.loc 2 3951 18
	movzbl	-128(%rbp), %eax
	.loc 2 3951 14
	testb	%al, %al
	je	.L864
	.loc 2 3951 23 discriminator 1
	cmpq	$0, -304(%rbp)
	je	.L864
	.loc 2 3952 34
	movq	-248(%rbp), %rax
	leaq	1(%rax), %rcx
	.loc 2 3953 25
	movq	-152(%rbp), %rdx
	.loc 2 3953 37
	movq	-168(%rbp), %rax
	.loc 2 3953 32
	subq	%rax, %rdx
	.loc 2 3953 65
	movq	-160(%rbp), %rax
	.loc 2 3953 60
	imulq	-248(%rbp), %rax
	.loc 2 3953 43
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 3952 15
	cmpq	%rax, %rcx
	jnb	.L864
	.loc 2 3958 29
	movq	-168(%rbp), %rax
	.loc 2 3958 24
	movq	%rax, -144(%rbp)
	.loc 2 3959 15
	jmp	.L865
.L864:
	.loc 2 3962 27
	movq	$0, saved_line(%rip)
	.loc 2 3963 18
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	buffer_linelim
	movq	%rax, -200(%rbp)
	.loc 2 3964 18
	movzbl	-128(%rbp), %eax
	.loc 2 3964 14
	testb	%al, %al
	je	.L866
	.loc 2 3964 23 discriminator 1
	cmpq	$0, -304(%rbp)
	jne	.L866
	.loc 2 3964 34 discriminator 2
	cmpq	$0, -264(%rbp)
	jne	.L866
	.loc 2 3964 52 discriminator 3
	movq	-144(%rbp), %rax
	.loc 2 3964 45 discriminator 3
	testq	%rax, %rax
	jne	.L866
	.loc 2 3966 15
	movq	-280(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xfclose
	.loc 2 3967 21
	movq	-312(%rbp), %rax
	leaq	.LC108(%rip), %rsi
	movq	%rax, %rdi
	call	xfopen
	.loc 2 3967 19
	movq	%rax, -272(%rbp)
	.loc 2 3968 27
	movq	-312(%rbp), %rax
	movq	%rax, -256(%rbp)
	.loc 2 3969 35
	movb	$1, -281(%rbp)
	jmp	.L867
.L866:
	.loc 2 3973 15
	addq	$1, -264(%rbp)
	.loc 2 3974 29
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	create_temp
	.loc 2 3974 27
	addq	$13, %rax
	movq	%rax, -256(%rbp)
.L867:
	.loc 2 3976 22
	movq	-160(%rbp), %rax
	.loc 2 3976 14
	cmpq	$1, %rax
	jbe	.L868
.LBB86:
	.loc 2 3979 15
	movq	-320(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	queue_init
	.loc 2 3981 17
	movq	-160(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	merge_tree_init
	movq	%rax, -192(%rbp)
	.loc 2 3983 15
	movq	-272(%rbp), %r8
	movq	-192(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-160(%rbp), %rdx
	leaq	-112(%rbp), %rdi
	movq	-320(%rbp), %rsi
	movq	-200(%rbp), %rax
	subq	$8, %rsp
	pushq	-256(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sortlines
	addq	$16, %rsp
	.loc 2 3987 15
	movq	-192(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	merge_tree_destroy
	.loc 2 3988 15
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	queue_destroy
.LBE86:
	jmp	.L869
.L868:
	.loc 2 3992 13
	movq	-272(%rbp), %rax
	.loc 2 3992 32
	movq	-200(%rbp), %rdx
	leaq	-32(%rdx), %rcx
	.loc 2 3992 13
	movq	-256(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	write_unique
.L869:
	.loc 2 3994 11
	movq	-272(%rbp), %rax
	movq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xfclose
	.loc 2 3996 14
	cmpb	$0, -281(%rbp)
	jne	.L877
.L863:
.LBE85:
	.loc 2 3947 14
	movq	-280(%rbp), %rcx
	movq	-208(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fillbuf
	.loc 2 3947 13
	testb	%al, %al
	jne	.L871
.L865:
	.loc 2 3999 7
	movq	-280(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xfclose
.L857:
.LBE83:
	.loc 2 3917 9
	cmpq	$0, -304(%rbp)
	jne	.L872
	.loc 2 4002 2
	jmp	.L870
.L877:
.LBB87:
	.loc 2 3997 13
	nop
.L870:
.LBE87:
	.loc 2 4003 12
	movq	-176(%rbp), %rax
	.loc 2 4003 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 4005 7
	movzbl	-281(%rbp), %eax
	xorl	$1, %eax
	.loc 2 4005 6
	testb	%al, %al
	je	.L873
.LBB88:
	.loc 2 4007 24
	movq	temphead(%rip), %rax
	movq	%rax, -224(%rbp)
	.loc 2 4008 36
	movq	-264(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -184(%rbp)
.LBB89:
	.loc 2 4009 19
	movq	$0, -216(%rbp)
	.loc 2 4009 7
	jmp	.L874
.L875:
	.loc 2 4011 20 discriminator 3
	movq	-216(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 4011 31 discriminator 3
	movq	-224(%rbp), %rdx
	addq	$13, %rdx
	.loc 2 4011 29 discriminator 3
	movq	%rdx, (%rax)
	.loc 2 4012 20 discriminator 3
	movq	-216(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 4012 29 discriminator 3
	movq	-224(%rbp), %rax
	movq	%rax, 8(%rdx)
	.loc 2 4013 16 discriminator 3
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	.loc 2 4009 33 discriminator 3
	addq	$1, -216(%rbp)
.L874:
	.loc 2 4009 7 discriminator 1
	cmpq	$0, -224(%rbp)
	jne	.L875
.LBE89:
	.loc 2 4015 7
	movq	-312(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	merge
	.loc 2 4016 7
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L873:
.LBE88:
	.loc 2 4019 3
	call	reap_all
	.loc 2 4020 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L876
	call	__stack_chk_fail@PLT
.L876:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	sort, .-sort
	.type	insertkey, @function
insertkey:
.LFB135:
	.loc 2 4026 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 4028 26
	movq	-24(%rbp), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	xmemdup@PLT
	movq	%rax, -8(%rbp)
	.loc 2 4030 10
	leaq	keylist(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 2 4030 3
	jmp	.L879
.L880:
	.loc 2 4030 32
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 4030 28
	addq	$64, %rax
	movq	%rax, -16(%rbp)
.L879:
	.loc 2 4030 22 discriminator 1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 4030 3 discriminator 1
	testq	%rax, %rax
	jne	.L880
	.loc 2 4032 6
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 4033 13
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	.loc 2 4034 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	insertkey, .-insertkey
	.section	.rodata
	.align 8
.LC146:
	.string	"%s: invalid field specification %s"
	.text
	.type	badfieldspec, @function
badfieldspec:
.LFB136:
	.loc 2 4042 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 4043 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	leaq	.LC146(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
	.cfi_endproc
.LFE136:
	.size	badfieldspec, .-badfieldspec
	.section	.rodata
	.align 8
.LC147:
	.string	"options '-%s' are incompatible"
	.text
	.type	incompatible_options, @function
incompatible_options:
.LFB137:
	.loc 2 4052 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 4053 3
	leaq	.LC147(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
	.cfi_endproc
.LFE137:
	.size	incompatible_options, .-incompatible_options
	.type	check_ordering_compatibility, @function
check_ordering_compatibility:
.LFB138:
	.loc 2 4060 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.loc 2 4060 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 4063 12
	movq	keylist(%rip), %rax
	movq	%rax, -56(%rbp)
	.loc 2 4063 3
	jmp	.L884
.L886:
	.loc 2 4064 17
	movq	-56(%rbp), %rax
	movzbl	50(%rax), %eax
	movzbl	%al, %edx
	.loc 2 4064 32
	movq	-56(%rbp), %rax
	movzbl	52(%rax), %eax
	movzbl	%al, %eax
	.loc 2 4064 27
	addl	%eax, %edx
	.loc 2 4064 55
	movq	-56(%rbp), %rax
	movzbl	53(%rax), %eax
	movzbl	%al, %eax
	.loc 2 4064 50
	addl	%eax, %edx
	.loc 2 4065 19
	movq	-56(%rbp), %rax
	movzbl	54(%rax), %eax
	movzbl	%al, %eax
	.loc 2 4065 14
	leal	(%rdx,%rax), %ecx
	.loc 2 4065 33
	movq	-56(%rbp), %rax
	movzbl	56(%rax), %edx
	.loc 2 4065 48
	movq	-56(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 2 4065 43
	orl	%edx, %eax
	movzbl	%al, %edx
	.loc 2 4065 64
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 4065 59
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	.loc 2 4065 57
	orl	%edx, %eax
	.loc 2 4065 27
	addl	%ecx, %eax
	.loc 2 4064 8
	cmpl	$1, %eax
	jle	.L885
.LBB90:
	.loc 2 4070 60
	movq	-56(%rbp), %rax
	movb	$0, 55(%rax)
	.loc 2 4070 50
	movq	-56(%rbp), %rax
	movzbl	55(%rax), %edx
	.loc 2 4070 45
	movq	-56(%rbp), %rax
	movb	%dl, 49(%rax)
	.loc 2 4070 31
	movq	-56(%rbp), %rax
	movzbl	49(%rax), %edx
	.loc 2 4070 26
	movq	-56(%rbp), %rax
	movb	%dl, 48(%rax)
	.loc 2 4071 9
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	key_to_opts
	.loc 2 4072 9
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	incompatible_options
.L885:
.LBE90:
	.loc 2 4063 32 discriminator 2
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)
.L884:
	.loc 2 4063 3 discriminator 1
	cmpq	$0, -56(%rbp)
	jne	.L886
	.loc 2 4074 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L887
	call	__stack_chk_fail@PLT
.L887:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	check_ordering_compatibility, .-check_ordering_compatibility
	.section	.rodata
	.align 8
.LC148:
	.string	"%s: invalid count at start of %s"
	.text
	.type	parse_field_count, @function
parse_field_count:
.LFB139:
	.loc 2 4084 1
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 4084 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 4088 11
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	cmpl	$4, %eax
	ja	.L889
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L891(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L891(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L891:
	.long	.L893-.L891
	.long	.L892-.L891
	.long	.L893-.L891
	.long	.L892-.L891
	.long	.L890-.L891
	.text
.L893:
	.loc 2 4092 12
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 4093 11
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 4093 16
	movq	-32(%rbp), %rax
	.loc 2 4093 10
	cmpq	%rax, %rdx
	je	.L898
.L892:
	.loc 2 4098 12
	movq	-64(%rbp), %rax
	movq	$-1, (%rax)
	.loc 2 4099 7
	jmp	.L889
.L890:
	.loc 2 4102 10
	cmpq	$0, -72(%rbp)
	je	.L894
.LBB91:
	.loc 2 4103 9
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	leaq	.LC148(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L894:
.LBE91:
	.loc 2 4105 14
	movl	$0, %eax
	jmp	.L896
.L898:
	.loc 2 4094 9
	nop
.L889:
	.loc 2 4108 10
	movq	-40(%rbp), %rax
.L896:
	.loc 2 4109 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L897
	.loc 2 4109 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L897:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	parse_field_count, .-parse_field_count
	.type	sighandler, @function
sighandler:
.LFB140:
	.loc 2 4115 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 2 4119 3
	call	cleanup
	.loc 2 4121 3
	movl	-4(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	signal@PLT
	.loc 2 4122 3
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	raise@PLT
	.loc 2 4123 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	sighandler, .-sighandler
	.type	set_ordering, @function
set_ordering:
.LFB141:
	.loc 2 4132 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	.loc 2 4133 9
	jmp	.L901
.L922:
	.loc 2 4135 15
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$77, %eax
	cmpl	$37, %eax
	ja	.L902
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L904(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L904(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L904:
	.long	.L914-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L913-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L912-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L911-.L904
	.long	.L902-.L904
	.long	.L910-.L904
	.long	.L902-.L904
	.long	.L909-.L904
	.long	.L908-.L904
	.long	.L907-.L904
	.long	.L906-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L905-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L902-.L904
	.long	.L903-.L904
	.text
.L911:
	.loc 2 4138 14
	cmpl	$0, -20(%rbp)
	je	.L915
	.loc 2 4138 37 discriminator 1
	cmpl	$2, -20(%rbp)
	jne	.L916
.L915:
	.loc 2 4139 30
	movq	-16(%rbp), %rax
	movb	$1, 48(%rax)
.L916:
	.loc 2 4140 14
	cmpl	$1, -20(%rbp)
	je	.L917
	.loc 2 4140 35 discriminator 1
	cmpl	$2, -20(%rbp)
	jne	.L923
.L917:
	.loc 2 4141 30
	movq	-16(%rbp), %rax
	movb	$1, 49(%rax)
	.loc 2 4142 11
	jmp	.L923
.L910:
	.loc 2 4144 23
	movq	-16(%rbp), %rax
	leaq	nondictionary(%rip), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 4145 11
	jmp	.L919
.L909:
	.loc 2 4147 26
	movq	-16(%rbp), %rax
	leaq	fold_toupper(%rip), %rdx
	movq	%rdx, 40(%rax)
	.loc 2 4148 11
	jmp	.L919
.L908:
	.loc 2 4150 32
	movq	-16(%rbp), %rax
	movb	$1, 52(%rax)
	.loc 2 4151 11
	jmp	.L919
.L907:
	.loc 2 4153 30
	movq	-16(%rbp), %rax
	movb	$1, 53(%rax)
	.loc 2 4154 11
	jmp	.L919
.L906:
	.loc 2 4158 20
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 4158 14
	testq	%rax, %rax
	jne	.L924
	.loc 2 4159 25
	movq	-16(%rbp), %rax
	leaq	nonprinting(%rip), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 4160 11
	jmp	.L924
.L914:
	.loc 2 4162 22
	movq	-16(%rbp), %rax
	movb	$1, 54(%rax)
	.loc 2 4163 11
	jmp	.L919
.L905:
	.loc 2 4165 24
	movq	-16(%rbp), %rax
	movb	$1, 50(%rax)
	.loc 2 4166 11
	jmp	.L919
.L913:
	.loc 2 4168 23
	movq	-16(%rbp), %rax
	movb	$1, 51(%rax)
	.loc 2 4169 11
	jmp	.L919
.L903:
	.loc 2 4171 24
	movq	-16(%rbp), %rax
	movb	$1, 55(%rax)
	.loc 2 4172 11
	jmp	.L919
.L912:
	.loc 2 4174 24
	movq	-16(%rbp), %rax
	movb	$1, 56(%rax)
	.loc 2 4175 11
	jmp	.L919
.L902:
	.loc 2 4177 18
	movq	-8(%rbp), %rax
	jmp	.L921
.L923:
	.loc 2 4142 11
	nop
	jmp	.L919
.L924:
	.loc 2 4160 11
	nop
.L919:
	.loc 2 4179 7
	addq	$1, -8(%rbp)
.L901:
	.loc 2 4133 10
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 4133 9
	testb	%al, %al
	jne	.L922
	.loc 2 4181 10
	movq	-8(%rbp), %rax
.L921:
	.loc 2 4182 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	set_ordering, .-set_ordering
	.type	key_init, @function
key_init:
.LFB142:
	.loc 2 4188 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 4189 3
	movq	-8(%rbp), %rax
	movl	$72, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 4190 14
	movq	-8(%rbp), %rax
	movq	$-1, 16(%rax)
	.loc 2 4191 10
	movq	-8(%rbp), %rax
	.loc 2 4192 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	key_init, .-key_init
	.section	.rodata
.LC149:
	.string	"POSIXLY_CORRECT"
.LC150:
	.string	"/usr/local/share/locale"
.LC151:
	.string	"invalid number after '-'"
.LC152:
	.string	"s"
.LC153:
	.string	"invalid number after '.'"
.LC154:
	.string	"stray character in field spec"
.LC155:
	.string	"--sort"
.LC156:
	.string	"--check"
.LC157:
	.string	"cC"
	.align 8
.LC158:
	.string	"multiple compress programs specified"
.LC159:
	.string	"invalid number at field start"
.LC160:
	.string	"field number is zero"
.LC161:
	.string	"character offset is zero"
.LC162:
	.string	"invalid number after ','"
	.align 8
.LC163:
	.string	"multiple output files specified"
	.align 8
.LC164:
	.string	"multiple random sources specified"
.LC165:
	.string	"empty tab"
.LC166:
	.string	"\\0"
.LC167:
	.string	"multi-character tab %s"
.LC168:
	.string	"incompatible tabs"
.LC169:
	.string	"Paul Eggert"
.LC170:
	.string	"Mike Haertel"
.LC171:
	.string	"extra operand %s"
	.align 8
.LC172:
	.string	"file operands cannot be combined with --files0-from"
.LC173:
	.string	"%s\n"
	.align 8
.LC174:
	.string	"cannot read file names from %s"
	.align 8
.LC175:
	.string	"when reading file names from stdin, no file name of %s allowed"
	.align 8
.LC176:
	.string	"%s:%lu: invalid zero-length file name"
.LC177:
	.string	"no input from %s"
.LC178:
	.string	"failed to set locale"
.LC179:
	.string	"%s"
	.align 8
.LC180:
	.string	"text ordering performed using %s sorting rules"
	.align 8
.LC181:
	.string	"text ordering performed using simple byte comparison"
.LC182:
	.string	"TMPDIR"
	.align 8
.LC183:
	.string	"extra operand %s not allowed with -%c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB143:
	.loc 2 4196 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$832, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -836(%rbp)
	movq	%rsi, -848(%rbp)
	.loc 2 4196 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 4200 8
	movb	$0, -817(%rbp)
	.loc 2 4202 7
	movl	$0, -808(%rbp)
	.loc 2 4203 8
	movb	$0, -816(%rbp)
	.loc 2 4204 8
	movb	$0, -815(%rbp)
	.loc 2 4205 9
	movq	$0, -784(%rbp)
	.loc 2 4206 8
	movb	$0, -814(%rbp)
	.loc 2 4207 10
	movq	$0, -776(%rbp)
	.loc 2 4208 10
	movq	$0, -768(%rbp)
	.loc 2 4209 27
	leaq	.LC149(%rip), %rdi
	call	getenv@PLT
	.loc 2 4209 8
	testq	%rax, %rax
	setne	%al
	movb	%al, -810(%rbp)
	.loc 2 4210 19
	call	posix2_version@PLT
	movl	%eax, -804(%rbp)
	.loc 2 4211 28
	cmpl	$200111, -804(%rbp)
	jle	.L928
	.loc 2 4211 28 is_stmt 0 discriminator 2
	cmpl	$200808, -804(%rbp)
	jle	.L929
.L928:
	.loc 2 4211 28 discriminator 3
	movl	$1, %eax
	jmp	.L930
.L929:
	.loc 2 4211 28 discriminator 4
	movl	$0, %eax
.L930:
	.loc 2 4211 8 is_stmt 1 discriminator 6
	movb	%al, -813(%rbp)
	andb	$1, -813(%rbp)
	.loc 2 4213 9 discriminator 6
	movq	$0, -752(%rbp)
	.loc 2 4215 15 discriminator 6
	movq	$0, -744(%rbp)
	.loc 2 4219 3 discriminator 6
	movq	-848(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 4220 18 discriminator 6
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 4220 13 discriminator 6
	testq	%rax, %rax
	setne	%al
	movb	%al, -812(%rbp)
	.loc 2 4221 3 discriminator 6
	leaq	.LC150(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 4222 3 discriminator 6
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 4224 3 discriminator 6
	movl	$2, %edi
	call	initialize_exit_failure
	.loc 2 4226 21 discriminator 6
	movl	$3, %edi
	call	hard_locale@PLT
	.loc 2 4226 19 discriminator 6
	movb	%al, hard_LC_COLLATE(%rip)
	.loc 2 4228 18 discriminator 6
	movl	$2, %edi
	call	hard_locale@PLT
	.loc 2 4228 16 discriminator 6
	movb	%al, hard_LC_TIME(%rip)
.LBB92:
	.loc 2 4233 34 discriminator 6
	call	localeconv@PLT
	movq	%rax, -704(%rbp)
	.loc 2 4238 37 discriminator 6
	movq	-704(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 4238 52 discriminator 6
	movzbl	(%rax), %eax
	.loc 2 4238 21 discriminator 6
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 4238 19 discriminator 6
	movl	%eax, decimal_point(%rip)
	.loc 2 4239 9 discriminator 6
	movl	decimal_point(%rip), %eax
	.loc 2 4239 8 discriminator 6
	testl	%eax, %eax
	je	.L931
	.loc 2 4239 34 discriminator 1
	movq	-704(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 4239 49 discriminator 1
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 4239 25 discriminator 1
	testb	%al, %al
	je	.L932
.L931:
	.loc 2 4240 21
	movl	$46, decimal_point(%rip)
.L932:
	.loc 2 4243 38
	movq	-704(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 4243 31
	movzbl	(%rax), %eax
	.loc 2 4243 21
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 4243 19
	movl	%eax, thousands_sep(%rip)
	.loc 2 4244 9
	movl	thousands_sep(%rip), %eax
	.loc 2 4244 8
	testl	%eax, %eax
	je	.L933
	.loc 2 4244 34 discriminator 1
	movq	-704(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 4244 49 discriminator 1
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 4244 25 discriminator 1
	testb	%al, %al
	je	.L934
.L933:
	.loc 2 4245 21
	movl	$-1, thousands_sep(%rip)
.L934:
.LBE92:
	.loc 2 4248 19
	movb	$0, have_read_stdin(%rip)
	.loc 2 4249 3
	call	inittables
.LBB93:
	.loc 2 4278 5
	leaq	caught_signals(%rip), %rdi
	call	sigemptyset@PLT
	.loc 2 4279 12
	movq	$0, -736(%rbp)
	.loc 2 4279 5
	jmp	.L935
.L937:
	.loc 2 4281 9
	movq	-736(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	sig.8956(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	-192(%rbp), %rdx
	movl	$0, %esi
	movl	%eax, %edi
	call	sigaction@PLT
	.loc 2 4282 17
	movq	-192(%rbp), %rax
	.loc 2 4282 12
	cmpq	$1, %rax
	je	.L936
	.loc 2 4283 11
	movq	-736(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	sig.8956(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigaddset@PLT
.L936:
	.loc 2 4279 29 discriminator 2
	addq	$1, -736(%rbp)
.L935:
	.loc 2 4279 5 discriminator 1
	cmpq	$10, -736(%rbp)
	jbe	.L937
	.loc 2 4286 20
	leaq	sighandler(%rip), %rax
	movq	%rax, -192(%rbp)
	.loc 2 4287 17
	movq	caught_signals(%rip), %rax
	movq	8+caught_signals(%rip), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	16+caught_signals(%rip), %rax
	movq	24+caught_signals(%rip), %rdx
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	32+caught_signals(%rip), %rax
	movq	40+caught_signals(%rip), %rdx
	movq	%rax, -152(%rbp)
	movq	%rdx, -144(%rbp)
	movq	48+caught_signals(%rip), %rax
	movq	56+caught_signals(%rip), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	64+caught_signals(%rip), %rax
	movq	72+caught_signals(%rip), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	80+caught_signals(%rip), %rax
	movq	88+caught_signals(%rip), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	96+caught_signals(%rip), %rax
	movq	104+caught_signals(%rip), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	112+caught_signals(%rip), %rax
	movq	120+caught_signals(%rip), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	.loc 2 4288 18
	movl	$0, -56(%rbp)
	.loc 2 4290 12
	movq	$0, -736(%rbp)
	.loc 2 4290 5
	jmp	.L938
.L940:
	.loc 2 4291 11
	movq	-736(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	sig.8956(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigismember@PLT
	.loc 2 4291 10
	testl	%eax, %eax
	je	.L939
	.loc 2 4292 9
	movq	-736(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	sig.8956(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	-192(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	sigaction@PLT
.L939:
	.loc 2 4290 29 discriminator 2
	addq	$1, -736(%rbp)
.L938:
	.loc 2 4290 5 discriminator 1
	cmpq	$10, -736(%rbp)
	jbe	.L940
.LBE93:
	.loc 2 4302 3
	movl	$0, %esi
	movl	$17, %edi
	call	signal@PLT
	.loc 2 4305 3
	leaq	exit_cleanup(%rip), %rdi
	call	atexit@PLT
	.loc 2 4307 3
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	key_init
	.loc 2 4308 14
	movq	$-1, -560(%rbp)
	.loc 2 4310 11
	movl	-836(%rbp), %eax
	cltq
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -760(%rbp)
.L1009:
.LBB94:
	.loc 2 4318 11
	movl	$-1, -480(%rbp)
	.loc 2 4320 10
	cmpl	$-1, -808(%rbp)
	je	.L941
	.loc 2 4321 11
	cmpb	$0, -810(%rbp)
	je	.L942
	.loc 2 4321 31 discriminator 1
	cmpq	$0, -768(%rbp)
	je	.L942
	.loc 2 4322 21
	movzbl	-813(%rbp), %eax
	xorl	$1, %eax
	.loc 2 4322 15
	testb	%al, %al
	jne	.L941
	.loc 2 4323 21
	cmpb	$0, -816(%rbp)
	jne	.L941
	.loc 2 4324 31
	movl	optind(%rip), %eax
	.loc 2 4324 21
	cmpl	%eax, -836(%rbp)
	je	.L941
	.loc 2 4325 28
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-848(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 4325 36
	movzbl	(%rax), %eax
	.loc 2 4325 21
	cmpb	$45, %al
	jne	.L941
	.loc 2 4325 54 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-848(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 4325 62 discriminator 1
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 4325 47 discriminator 1
	cmpb	$111, %al
	jne	.L941
	.loc 2 4326 29
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-848(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 4326 37
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 4322 18
	testb	%al, %al
	jne	.L942
	.loc 2 4326 51
	movl	optind(%rip), %eax
	addl	$1, %eax
	.loc 2 4326 41
	cmpl	%eax, -836(%rbp)
	je	.L941
.L942:
	.loc 2 4327 20
	leaq	-480(%rbp), %rdx
	movq	-848(%rbp), %rsi
	movl	-836(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options(%rip), %rcx
	leaq	short_options(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -808(%rbp)
	.loc 2 4327 11
	cmpl	$-1, -808(%rbp)
	jne	.L943
.L941:
	.loc 2 4331 20
	movl	optind(%rip), %eax
	.loc 2 4331 14
	cmpl	%eax, -836(%rbp)
	jg	.L944
.LBE94:
	.loc 2 4590 6
	cmpq	$0, -752(%rbp)
	jne	.L945
.LBB106:
	jmp	.L946
.L944:
.LBE106:
.LBB112:
	.loc 2 4333 40
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 4333 33
	leaq	0(,%rax,8), %rdx
	movq	-848(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 4333 23
	movq	-768(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -768(%rbp)
	.loc 2 4333 16
	leaq	0(,%rax,8), %rdx
	movq	-760(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 4333 33
	movq	(%rcx), %rax
	.loc 2 4333 27
	movq	%rax, (%rdx)
	jmp	.L947
.L943:
	.loc 2 4335 12
	cmpl	$135, -808(%rbp)
	jg	.L948
	cmpl	$0, -808(%rbp)
	jg	.L949
	cmpl	$-131, -808(%rbp)
	je	.L950
	cmpl	$-130, -808(%rbp)
	je	.L951
	jmp	.L948
.L949:
	cmpl	$135, -808(%rbp)
	ja	.L948
	movl	-808(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L953(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L953(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L953:
	.long	.L948-.L953
	.long	.L973-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L970-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L966-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L966-.L953
	.long	.L972-.L953
	.long	.L971-.L953
	.long	.L948-.L953
	.long	.L966-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L966-.L953
	.long	.L970-.L953
	.long	.L966-.L953
	.long	.L948-.L953
	.long	.L966-.L953
	.long	.L966-.L953
	.long	.L966-.L953
	.long	.L966-.L953
	.long	.L948-.L953
	.long	.L969-.L953
	.long	.L948-.L953
	.long	.L968-.L953
	.long	.L966-.L953
	.long	.L967-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L966-.L953
	.long	.L965-.L953
	.long	.L964-.L953
	.long	.L963-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L962-.L953
	.long	.L961-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L948-.L953
	.long	.L960-.L953
	.long	.L959-.L953
	.long	.L958-.L953
	.long	.L957-.L953
	.long	.L956-.L953
	.long	.L955-.L953
	.long	.L954-.L953
	.long	.L952-.L953
	.text
.L973:
	.loc 2 4338 15
	movq	$0, -800(%rbp)
	.loc 2 4339 21
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 4339 14
	cmpb	$43, %al
	jne	.L974
.LBB95:
	.loc 2 4341 46
	movl	optind(%rip), %eax
	.loc 2 4342 39
	cmpl	%eax, -836(%rbp)
	je	.L975
	.loc 2 4341 61
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-848(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 4341 69
	movzbl	(%rax), %eax
	.loc 2 4341 54
	cmpb	$45, %al
	jne	.L975
	.loc 2 4342 42 discriminator 3
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-848(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 4342 39 discriminator 3
	cmpl	$9, %eax
	ja	.L975
	.loc 2 4342 39 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L976
.L975:
	.loc 2 4342 39 discriminator 1
	movl	$0, %eax
.L976:
	.loc 2 4341 20 is_stmt 1
	movb	%al, -809(%rbp)
	andb	$1, -809(%rbp)
	.loc 2 4343 33
	movzbl	-813(%rbp), %eax
	.loc 2 4343 52
	cmpb	$0, -809(%rbp)
	je	.L977
	.loc 2 4343 55 discriminator 1
	movzbl	-810(%rbp), %edx
	xorl	$1, %edx
	.loc 2 4343 52 discriminator 1
	testb	%dl, %dl
	je	.L977
	.loc 2 4343 52 is_stmt 0 discriminator 3
	movl	$1, %edx
	jmp	.L978
.L977:
	.loc 2 4343 52 discriminator 4
	movl	$0, %edx
.L978:
	.loc 2 4343 33 is_stmt 1 discriminator 6
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -813(%rbp)
	.loc 2 4344 18 discriminator 6
	cmpb	$0, -813(%rbp)
	je	.L974
	.loc 2 4348 25
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	key_init
	movq	%rax, -800(%rbp)
	.loc 2 4349 23
	movq	-800(%rbp), %rax
	movq	optarg(%rip), %rdx
	.loc 2 4349 49
	leaq	1(%rdx), %rcx
	.loc 2 4349 23
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	parse_field_count
	movq	%rax, -792(%rbp)
	.loc 2 4350 22
	cmpq	$0, -792(%rbp)
	je	.L979
	.loc 2 4350 28 discriminator 1
	movq	-792(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 4350 25 discriminator 1
	cmpb	$46, %al
	jne	.L979
	.loc 2 4351 25
	movq	-800(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-792(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_field_count
	movq	%rax, -792(%rbp)
.L979:
	.loc 2 4352 29
	movq	-800(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 4352 22
	testq	%rax, %rax
	jne	.L980
	.loc 2 4352 43 discriminator 1
	movq	-800(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 4352 23 discriminator 1
	testq	%rax, %rax
	jne	.L980
	.loc 2 4353 32
	movq	-800(%rbp), %rax
	movq	$-1, (%rax)
.L980:
	.loc 2 4354 22
	cmpq	$0, -792(%rbp)
	je	.L981
	.loc 2 4354 31 discriminator 1
	movq	-800(%rbp), %rcx
	movq	-792(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_ordering
	.loc 2 4354 30 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 4354 27 discriminator 1
	testb	%al, %al
	je	.L982
.L981:
	.loc 2 4355 25
	movq	$0, -800(%rbp)
	jmp	.L974
.L982:
	.loc 2 4358 26
	cmpb	$0, -809(%rbp)
	je	.L983
.LBB96:
	.loc 2 4360 60
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 4360 53
	leaq	0(,%rax,8), %rdx
	movq	-848(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 4360 39
	movq	(%rax), %rax
	movq	%rax, -696(%rbp)
	.loc 2 4361 31
	movq	-800(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-696(%rbp), %rax
	addq	$1, %rax
	leaq	.LC151(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_field_count
	movq	%rax, -792(%rbp)
	.loc 2 4366 27
	cmpq	$0, -792(%rbp)
	jne	.L984
	.loc 2 4366 27 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.8971(%rip), %rcx
	movl	$4366, %edx
	leaq	.LC101(%rip), %rsi
	leaq	.LC152(%rip), %rdi
	call	__assert_fail@PLT
.L984:
	.loc 2 4367 31 is_stmt 1
	movq	-792(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 4367 30
	cmpb	$46, %al
	jne	.L985
	.loc 2 4368 33
	movq	-800(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-792(%rbp), %rax
	addq	$1, %rax
	leaq	.LC153(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_field_count
	movq	%rax, -792(%rbp)
.L985:
	.loc 2 4370 35
	movq	-800(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 4370 30
	testq	%rax, %rax
	jne	.L986
	.loc 2 4370 49 discriminator 1
	movq	-800(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 4370 43 discriminator 1
	testq	%rax, %rax
	je	.L986
	.loc 2 4378 34
	movq	-800(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 4378 41
	leaq	-1(%rax), %rdx
	movq	-800(%rbp), %rax
	movq	%rdx, 16(%rax)
.L986:
	.loc 2 4380 32
	movq	-800(%rbp), %rcx
	movq	-792(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_ordering
	.loc 2 4380 31
	movzbl	(%rax), %eax
	.loc 2 4380 30
	testb	%al, %al
	je	.L983
	.loc 2 4381 29
	movq	-696(%rbp), %rax
	leaq	.LC154(%rip), %rsi
	movq	%rax, %rdi
	call	badfieldspec
.L983:
.LBE96:
	.loc 2 4384 45
	movq	-800(%rbp), %rax
	movb	$1, 57(%rax)
	.loc 2 4385 23
	movq	-800(%rbp), %rax
	movq	%rax, %rdi
	call	insertkey
.L974:
.LBE95:
	.loc 2 4389 14
	cmpq	$0, -800(%rbp)
	jne	.L1050
	.loc 2 4390 25
	movq	-768(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -768(%rbp)
	.loc 2 4390 18
	leaq	0(,%rax,8), %rdx
	movq	-760(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 4390 29
	movq	optarg(%rip), %rax
	movq	%rax, (%rdx)
	.loc 2 4391 11
	jmp	.L1050
.L954:
	.loc 2 4394 15
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	leaq	sort_types(%rip), %rcx
	leaq	sort_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC155(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	sort_types(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 4394 13
	movsbl	%al, %eax
	movl	%eax, -808(%rbp)
.L966:
.LBB97:
	.loc 2 4409 20 discriminator 2
	movl	-808(%rbp), %eax
	movb	%al, -26(%rbp)
	.loc 2 4410 20 discriminator 2
	movb	$0, -25(%rbp)
	.loc 2 4411 13 discriminator 2
	leaq	-560(%rbp), %rcx
	leaq	-26(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_ordering
.LBE97:
	.loc 2 4413 11 discriminator 2
	jmp	.L947
.L960:
	.loc 2 4417 16
	movq	optarg(%rip), %rax
	.loc 2 4418 16
	testq	%rax, %rax
	je	.L988
	.loc 2 4417 18 discriminator 1
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	leaq	check_types(%rip), %rcx
	leaq	check_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC156(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	check_types(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 4418 16 discriminator 1
	movsbl	%al, %eax
	jmp	.L989
.L988:
	.loc 2 4418 16 is_stmt 0 discriminator 2
	movl	$99, %eax
.L989:
	.loc 2 4416 13 is_stmt 1
	movl	%eax, -808(%rbp)
.L970:
	.loc 2 4422 14
	cmpb	$0, -816(%rbp)
	je	.L990
	.loc 2 4422 38 discriminator 1
	movsbl	-816(%rbp), %eax
	.loc 2 4422 25 discriminator 1
	cmpl	%eax, -808(%rbp)
	je	.L990
	.loc 2 4423 13
	leaq	.LC157(%rip), %rdi
	call	incompatible_options
.L990:
	.loc 2 4424 21
	movl	-808(%rbp), %eax
	movb	%al, -816(%rbp)
	.loc 2 4425 11
	jmp	.L947
.L959:
	.loc 2 4428 15
	movq	compress_program(%rip), %rax
	.loc 2 4428 14
	testq	%rax, %rax
	je	.L991
	.loc 2 4428 36 discriminator 1
	movq	optarg(%rip), %rdx
	movq	compress_program(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 4428 32 discriminator 1
	testl	%eax, %eax
	je	.L991
.LBB98:
	.loc 2 4429 13
	leaq	.LC158(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L991:
.LBE98:
	.loc 2 4430 28
	movq	optarg(%rip), %rax
	movq	%rax, compress_program(%rip)
	.loc 2 4431 11
	jmp	.L947
.L958:
	.loc 2 4434 17
	movb	$1, debug(%rip)
	.loc 2 4435 11
	jmp	.L947
.L957:
	.loc 2 4438 22
	movq	optarg(%rip), %rax
	movq	%rax, -752(%rbp)
	.loc 2 4439 11
	jmp	.L947
.L969:
	.loc 2 4442 17
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	key_init
	movq	%rax, -800(%rbp)
	.loc 2 4445 15
	movq	-800(%rbp), %rcx
	movq	optarg(%rip), %rax
	leaq	.LC159(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_field_count
	movq	%rax, -792(%rbp)
	.loc 2 4447 20
	movq	-800(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 4447 27
	leaq	-1(%rax), %rcx
	movq	-800(%rbp), %rdx
	movq	%rcx, (%rdx)
	.loc 2 4447 14
	testq	%rax, %rax
	jne	.L992
	.loc 2 4450 15
	movq	optarg(%rip), %rax
	leaq	.LC160(%rip), %rsi
	movq	%rax, %rdi
	call	badfieldspec
.L992:
	.loc 2 4452 15
	movq	-792(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 4452 14
	cmpb	$46, %al
	jne	.L993
	.loc 2 4454 19
	movq	-800(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-792(%rbp), %rax
	addq	$1, %rax
	leaq	.LC153(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_field_count
	movq	%rax, -792(%rbp)
	.loc 2 4456 24
	movq	-800(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 4456 31
	leaq	-1(%rax), %rcx
	movq	-800(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	.loc 2 4456 18
	testq	%rax, %rax
	jne	.L993
	.loc 2 4459 19
	movq	optarg(%rip), %rax
	leaq	.LC161(%rip), %rsi
	movq	%rax, %rdi
	call	badfieldspec
.L993:
	.loc 2 4462 21
	movq	-800(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 4462 14
	testq	%rax, %rax
	jne	.L994
	.loc 2 4462 35 discriminator 1
	movq	-800(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 4462 15 discriminator 1
	testq	%rax, %rax
	jne	.L994
	.loc 2 4463 24
	movq	-800(%rbp), %rax
	movq	$-1, (%rax)
.L994:
	.loc 2 4464 15
	movq	-800(%rbp), %rcx
	movq	-792(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_ordering
	movq	%rax, -792(%rbp)
	.loc 2 4465 15
	movq	-792(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 4465 14
	cmpb	$44, %al
	je	.L995
	.loc 2 4467 26
	movq	-800(%rbp), %rax
	movq	$-1, 16(%rax)
	.loc 2 4468 26
	movq	-800(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L996
.L995:
	.loc 2 4473 19
	movq	-800(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-792(%rbp), %rax
	addq	$1, %rax
	leaq	.LC162(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_field_count
	movq	%rax, -792(%rbp)
	.loc 2 4475 24
	movq	-800(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 4475 31
	leaq	-1(%rax), %rcx
	movq	-800(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	.loc 2 4475 18
	testq	%rax, %rax
	jne	.L997
	.loc 2 4478 19
	movq	optarg(%rip), %rax
	leaq	.LC160(%rip), %rsi
	movq	%rax, %rdi
	call	badfieldspec
.L997:
	.loc 2 4480 19
	movq	-792(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 4480 18
	cmpb	$46, %al
	jne	.L998
	.loc 2 4482 23
	movq	-800(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-792(%rbp), %rax
	addq	$1, %rax
	leaq	.LC153(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_field_count
	movq	%rax, -792(%rbp)
.L998:
	.loc 2 4485 19
	movq	-800(%rbp), %rcx
	movq	-792(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_ordering
	movq	%rax, -792(%rbp)
.L996:
	.loc 2 4487 15
	movq	-792(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 4487 14
	testb	%al, %al
	je	.L999
	.loc 2 4488 13
	movq	optarg(%rip), %rax
	leaq	.LC154(%rip), %rsi
	movq	%rax, %rdi
	call	badfieldspec
.L999:
	.loc 2 4489 11
	movq	-800(%rbp), %rax
	movq	%rax, %rdi
	call	insertkey
	.loc 2 4490 11
	jmp	.L947
.L968:
	.loc 2 4493 21
	movb	$1, -815(%rbp)
	.loc 2 4494 11
	jmp	.L947
.L956:
	.loc 2 4497 11
	movq	optarg(%rip), %rdx
	movl	-808(%rbp), %eax
	movsbl	%al, %ecx
	movl	-480(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	specify_nmerge
	.loc 2 4498 11
	jmp	.L947
.L967:
	.loc 2 4501 14
	cmpq	$0, -744(%rbp)
	je	.L1000
	.loc 2 4501 27 discriminator 1
	movq	optarg(%rip), %rdx
	movq	-744(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 4501 23 discriminator 1
	testl	%eax, %eax
	je	.L1000
.LBB99:
	.loc 2 4502 13
	leaq	.LC163(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L1000:
.LBE99:
	.loc 2 4503 19
	movq	optarg(%rip), %rax
	movq	%rax, -744(%rbp)
	.loc 2 4504 11
	jmp	.L947
.L955:
	.loc 2 4507 14
	cmpq	$0, -784(%rbp)
	je	.L1001
	.loc 2 4507 33 discriminator 1
	movq	optarg(%rip), %rdx
	movq	-784(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 4507 29 discriminator 1
	testl	%eax, %eax
	je	.L1001
.LBB100:
	.loc 2 4508 13
	leaq	.LC164(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L1001:
.LBE100:
	.loc 2 4509 25
	movq	optarg(%rip), %rax
	movq	%rax, -784(%rbp)
	.loc 2 4510 11
	jmp	.L947
.L965:
	.loc 2 4513 18
	movb	$1, stable(%rip)
	.loc 2 4514 11
	jmp	.L947
.L972:
	.loc 2 4517 11
	movq	optarg(%rip), %rdx
	movl	-808(%rbp), %eax
	movsbl	%al, %ecx
	movl	-480(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	specify_sort_size
	.loc 2 4518 11
	jmp	.L947
.L964:
.LBB101:
	.loc 2 4522 33
	movq	optarg(%rip), %rax
	.loc 2 4522 18
	movzbl	(%rax), %eax
	movb	%al, -811(%rbp)
	.loc 2 4523 16
	cmpb	$0, -811(%rbp)
	jne	.L1002
.LBB102:
	.loc 2 4524 15
	leaq	.LC165(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L1002:
.LBE102:
	.loc 2 4525 23
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 4525 16
	testb	%al, %al
	je	.L1003
	.loc 2 4527 21
	movq	optarg(%rip), %rax
	leaq	.LC166(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 4527 20
	testl	%eax, %eax
	jne	.L1004
	.loc 2 4528 26
	movb	$0, -811(%rbp)
	jmp	.L1003
.L1004:
.LBB103:
	.loc 2 4535 21
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC167(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L1003:
.LBE103:
	.loc 2 4539 21
	movl	tab(%rip), %eax
	.loc 2 4539 16
	cmpl	$128, %eax
	je	.L1005
	.loc 2 4539 43 discriminator 1
	movsbl	-811(%rbp), %edx
	movl	tab(%rip), %eax
	.loc 2 4539 36 discriminator 1
	cmpl	%eax, %edx
	je	.L1005
.LBB104:
	.loc 2 4540 15
	leaq	.LC168(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L1005:
.LBE104:
	.loc 2 4541 17
	movsbl	-811(%rbp), %eax
	movl	%eax, tab(%rip)
.LBE101:
	.loc 2 4543 11
	jmp	.L947
.L971:
	.loc 2 4546 11
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	add_temp_dir
	.loc 2 4547 11
	jmp	.L947
.L952:
	.loc 2 4550 22
	movq	optarg(%rip), %rdx
	movl	-808(%rbp), %eax
	movsbl	%al, %ecx
	movl	-480(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	specify_nthreads
	movq	%rax, -776(%rbp)
	.loc 2 4551 11
	jmp	.L947
.L963:
	.loc 2 4554 18
	movb	$1, unique(%rip)
	.loc 2 4555 11
	jmp	.L947
.L962:
	.loc 2 4568 29
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-848(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	.loc 2 4568 22
	movq	optarg(%rip), %rax
	.loc 2 4568 14
	cmpq	%rax, %rdx
	jne	.L1051
.LBB105:
	.loc 2 4571 22
	movq	optarg(%rip), %rax
	movq	%rax, -728(%rbp)
	.loc 2 4571 15
	jmp	.L1007
.L1008:
	.loc 2 4571 47
	addq	$1, -728(%rbp)
.L1007:
	.loc 2 4571 32 discriminator 1
	movq	-728(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 4571 15 discriminator 1
	cmpl	$9, %eax
	jbe	.L1008
	.loc 2 4573 22
	movl	optind(%rip), %edx
	.loc 2 4573 26
	movq	-728(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 4573 29
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	.loc 2 4573 22
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, optind(%rip)
.LBE105:
	.loc 2 4575 11
	jmp	.L1051
.L961:
	.loc 2 4578 19
	movb	$0, eolchar(%rip)
	.loc 2 4579 11
	jmp	.L947
.L951:
	.loc 2 4581 9
	movl	$0, %edi
	call	usage
.L950:
	.loc 2 4583 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC169(%rip), %r9
	leaq	.LC170(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L948:
	.loc 2 4586 11
	movl	$2, %edi
	call	usage
.L1050:
	.loc 2 4391 11
	nop
	jmp	.L1009
.L1051:
	.loc 2 4575 11
	nop
.L947:
.LBE112:
	.loc 2 4313 5 discriminator 1
	jmp	.L1009
.L945:
.LBB113:
	.loc 2 4594 10
	cmpq	$0, -768(%rbp)
	je	.L1010
	.loc 2 4596 11
	movq	-760(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 4596 24
	leaq	.LC171(%rip), %rdi
	call	gettext@PLT
	.loc 2 4596 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 4597 11
	leaq	.LC172(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC173(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 4599 11
	movl	$2, %edi
	call	usage
.L1010:
	.loc 2 4602 22
	movq	-752(%rbp), %rax
	leaq	.LC113(%rip), %rsi
	movq	%rax, %rdi
	call	xfopen
	movq	%rax, -688(%rbp)
	.loc 2 4604 7
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	readtokens0_init@PLT
	.loc 2 4606 13
	leaq	-480(%rbp), %rdx
	movq	-688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	readtokens0@PLT
	.loc 2 4606 11
	xorl	$1, %eax
	.loc 2 4606 10
	testb	%al, %al
	je	.L1011
.LBB107:
	.loc 2 4607 9
	movq	-752(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC174(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L1011:
.LBE107:
	.loc 2 4609 7
	movq	-752(%rbp), %rdx
	movq	-688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xfclose
	.loc 2 4611 14
	movq	-480(%rbp), %rax
	.loc 2 4611 10
	testq	%rax, %rax
	je	.L1012
	.loc 2 4613 11
	movq	-760(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 4614 17
	movq	-472(%rbp), %rax
	movq	%rax, -760(%rbp)
	.loc 2 4615 18
	movq	-480(%rbp), %rax
	movq	%rax, -768(%rbp)
.LBB108:
	.loc 2 4616 23
	movq	$0, -720(%rbp)
	.loc 2 4616 11
	jmp	.L1013
.L1016:
	.loc 2 4618 19
	movq	-720(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-760(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC99(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 4618 18
	testl	%eax, %eax
	jne	.L1014
.LBB109:
	.loc 2 4619 17
	movq	-720(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-760(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC175(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L1014:
.LBE109:
	.loc 2 4622 29
	movq	-720(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-760(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 4622 32
	movzbl	(%rax), %eax
	.loc 2 4622 23
	testb	%al, %al
	jne	.L1015
.LBB110:
	.loc 2 4627 37
	movq	-720(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -680(%rbp)
	.loc 2 4628 19
	movq	-752(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC176(%rip), %rdi
	call	gettext@PLT
	movq	-680(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L1015:
.LBE110:
	.loc 2 4616 43 discriminator 2
	addq	$1, -720(%rbp)
.L1013:
	.loc 2 4616 11 discriminator 1
	movq	-720(%rbp), %rax
	cmpq	-768(%rbp), %rax
	jb	.L1016
	jmp	.L946
.L1012:
.LBE108:
.LBB111:
	.loc 2 4635 9
	movq	-752(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC177(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L946:
.LBE111:
.LBE113:
	.loc 2 4640 12
	movq	keylist(%rip), %rax
	movq	%rax, -800(%rbp)
	.loc 2 4640 3
	jmp	.L1017
.L1019:
	.loc 2 4642 11
	movq	-800(%rbp), %rax
	movq	%rax, %rdi
	call	default_key_compare
	.loc 2 4642 10
	testb	%al, %al
	je	.L1018
	.loc 2 4642 44 discriminator 1
	movq	-800(%rbp), %rax
	movzbl	55(%rax), %eax
	.loc 2 4642 40 discriminator 1
	xorl	$1, %eax
	.loc 2 4642 37 discriminator 1
	testb	%al, %al
	je	.L1018
	.loc 2 4644 29
	movq	-528(%rbp), %rdx
	.loc 2 4644 23
	movq	-800(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 2 4645 32
	movq	-520(%rbp), %rdx
	.loc 2 4645 26
	movq	-800(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 2 4646 34
	movzbl	-512(%rbp), %edx
	.loc 2 4646 28
	movq	-800(%rbp), %rax
	movb	%dl, 48(%rax)
	.loc 2 4647 34
	movzbl	-511(%rbp), %edx
	.loc 2 4647 28
	movq	-800(%rbp), %rax
	movb	%dl, 49(%rax)
	.loc 2 4648 28
	movzbl	-506(%rbp), %edx
	.loc 2 4648 22
	movq	-800(%rbp), %rax
	movb	%dl, 54(%rax)
	.loc 2 4649 30
	movzbl	-510(%rbp), %edx
	.loc 2 4649 24
	movq	-800(%rbp), %rax
	movb	%dl, 50(%rax)
	.loc 2 4650 38
	movzbl	-508(%rbp), %edx
	.loc 2 4650 32
	movq	-800(%rbp), %rax
	movb	%dl, 52(%rax)
	.loc 2 4651 36
	movzbl	-507(%rbp), %edx
	.loc 2 4651 30
	movq	-800(%rbp), %rax
	movb	%dl, 53(%rax)
	.loc 2 4652 30
	movzbl	-504(%rbp), %edx
	.loc 2 4652 24
	movq	-800(%rbp), %rax
	movb	%dl, 56(%rax)
	.loc 2 4653 29
	movzbl	-509(%rbp), %edx
	.loc 2 4653 23
	movq	-800(%rbp), %rax
	movb	%dl, 51(%rax)
	.loc 2 4654 30
	movzbl	-505(%rbp), %edx
	.loc 2 4654 24
	movq	-800(%rbp), %rax
	movb	%dl, 55(%rax)
.L1018:
	.loc 2 4657 25 discriminator 2
	movq	-800(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 2 4657 19 discriminator 2
	orb	-814(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -814(%rbp)
	.loc 2 4640 32 discriminator 2
	movq	-800(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -800(%rbp)
.L1017:
	.loc 2 4640 3 discriminator 1
	cmpq	$0, -800(%rbp)
	jne	.L1019
	.loc 2 4660 7
	movq	keylist(%rip), %rax
	.loc 2 4660 6
	testq	%rax, %rax
	jne	.L1020
	.loc 2 4660 20 discriminator 1
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	default_key_compare
	.loc 2 4660 19 discriminator 1
	xorl	$1, %eax
	.loc 2 4660 16 discriminator 1
	testb	%al, %al
	je	.L1020
	.loc 2 4662 17
	movb	$1, -817(%rbp)
	.loc 2 4663 7
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	insertkey
	.loc 2 4664 26
	movzbl	-509(%rbp), %eax
	.loc 2 4664 19
	orb	-814(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -814(%rbp)
.L1020:
	.loc 2 4667 3
	call	check_ordering_compatibility
	.loc 2 4669 7
	movzbl	debug(%rip), %eax
	.loc 2 4669 6
	testb	%al, %al
	je	.L1021
	.loc 2 4671 10
	cmpb	$0, -816(%rbp)
	jne	.L1022
	.loc 2 4671 21 discriminator 1
	cmpq	$0, -744(%rbp)
	je	.L1023
.L1022:
.LBB114:
	.loc 2 4674 19
	cmpb	$0, -816(%rbp)
	je	.L1024
	.loc 2 4674 19 is_stmt 0 discriminator 1
	movzbl	-816(%rbp), %eax
	jmp	.L1025
.L1024:
	.loc 2 4674 19 discriminator 2
	movl	$111, %eax
.L1025:
	.loc 2 4674 19 discriminator 4
	movb	%al, opts.9044(%rip)
	.loc 2 4675 11 is_stmt 1 discriminator 4
	leaq	opts.9044(%rip), %rdi
	call	incompatible_options
.L1023:
.LBE114:
	.loc 2 4683 10
	cmpb	$0, -812(%rbp)
	je	.L1026
	.loc 2 4684 24
	leaq	.LC18(%rip), %rsi
	movl	$3, %edi
	call	setlocale@PLT
	.loc 2 4684 19
	testq	%rax, %rax
	setne	%al
	movb	%al, -812(%rbp)
.L1026:
	.loc 2 4685 11
	movzbl	-812(%rbp), %eax
	xorl	$1, %eax
	.loc 2 4685 10
	testb	%al, %al
	je	.L1027
	.loc 2 4686 11
	leaq	.LC178(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	leaq	.LC179(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L1027:
	.loc 2 4687 11
	movzbl	hard_LC_COLLATE(%rip), %eax
	.loc 2 4687 10
	testb	%al, %al
	je	.L1028
	.loc 2 4689 23
	movl	$0, %esi
	movl	$3, %edi
	call	setlocale@PLT
	.loc 2 4688 9
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 4688 22
	leaq	.LC180(%rip), %rdi
	call	gettext@PLT
	.loc 2 4688 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L1029
.L1028:
	.loc 2 4691 9
	leaq	.LC181(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	leaq	.LC179(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L1029:
	.loc 2 4694 7
	movzbl	-817(%rbp), %edx
	leaq	-560(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	key_warnings
.L1021:
	.loc 2 4697 17
	movzbl	-505(%rbp), %eax
	.loc 2 4697 11
	movb	%al, reverse(%rip)
	.loc 2 4699 6
	cmpb	$0, -814(%rbp)
	je	.L1030
	.loc 2 4700 5
	movq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	random_md5_state_init
.L1030:
	.loc 2 4702 22
	movq	temp_dir_count(%rip), %rax
	.loc 2 4702 6
	testq	%rax, %rax
	jne	.L1031
.LBB115:
	.loc 2 4704 29
	leaq	.LC182(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -672(%rbp)
	.loc 2 4705 7
	cmpq	$0, -672(%rbp)
	je	.L1032
	.loc 2 4705 7 is_stmt 0 discriminator 1
	movq	-672(%rbp), %rax
	jmp	.L1033
.L1032:
	.loc 2 4705 7 discriminator 2
	leaq	.LC52(%rip), %rax
.L1033:
	.loc 2 4705 7 discriminator 4
	movq	%rax, %rdi
	call	add_temp_dir
.L1031:
.LBE115:
	.loc 2 4708 6 is_stmt 1
	cmpq	$0, -768(%rbp)
	jne	.L1034
	.loc 2 4710 14
	movq	$1, -768(%rbp)
	.loc 2 4711 7
	movq	-760(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 4712 15
	movl	$8, %edi
	call	xmalloc@PLT
	movq	%rax, -760(%rbp)
	.loc 2 4713 14
	movq	-760(%rbp), %rax
	leaq	.LC99(%rip), %rdx
	movq	%rdx, (%rax)
.L1034:
	.loc 2 4718 9
	movq	sort_size(%rip), %rax
	.loc 2 4718 6
	testq	%rax, %rax
	je	.L1035
	.loc 2 4719 17
	movl	nmerge(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	sort_size(%rip), %rax
	cmpq	%rax, %rdx
	cmovnb	%rdx, %rax
	.loc 2 4719 15
	movq	%rax, sort_size(%rip)
.L1035:
	.loc 2 4721 6
	cmpb	$0, -816(%rbp)
	je	.L1036
	.loc 2 4723 10
	cmpq	$1, -768(%rbp)
	jbe	.L1037
.LBB116:
	.loc 2 4724 9
	movsbl	-816(%rbp), %r12d
	movq	-760(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC183(%rip), %rdi
	call	gettext@PLT
	movl	%r12d, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L1037:
.LBE116:
	.loc 2 4727 10
	cmpq	$0, -744(%rbp)
	je	.L1038
.LBB117:
	.loc 2 4730 19
	movzbl	-816(%rbp), %eax
	movb	%al, opts.9048(%rip)
	.loc 2 4731 11
	leaq	opts.9048(%rip), %rdi
	call	incompatible_options
.L1038:
.LBE117:
	.loc 2 4736 14
	movsbl	-816(%rbp), %edx
	movq	-760(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check
	.loc 2 4736 57
	xorl	$1, %eax
	movzbl	%al, %eax
	jmp	.L1048
.L1036:
	.loc 2 4740 3
	movq	-768(%rbp), %rdx
	movq	-760(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_inputs
	.loc 2 4743 3
	movq	-744(%rbp), %rax
	movq	%rax, %rdi
	call	check_output
	.loc 2 4745 6
	cmpb	$0, -815(%rbp)
	je	.L1040
.LBB118:
	.loc 2 4747 36
	movq	-768(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	xcalloc@PLT
	movq	%rax, -648(%rbp)
.LBB119:
	.loc 2 4749 19
	movq	$0, -712(%rbp)
	.loc 2 4749 7
	jmp	.L1041
.L1042:
	.loc 2 4750 34 discriminator 3
	movq	-712(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-760(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 4750 18 discriminator 3
	movq	-712(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-648(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 4750 34 discriminator 3
	movq	(%rax), %rax
	.loc 2 4750 27 discriminator 3
	movq	%rax, (%rdx)
	.loc 2 4749 38 discriminator 3
	addq	$1, -712(%rbp)
.L1041:
	.loc 2 4749 7 discriminator 1
	movq	-712(%rbp), %rax
	cmpq	-768(%rbp), %rax
	jb	.L1042
.LBE119:
	.loc 2 4752 7
	movq	-744(%rbp), %rcx
	movq	-768(%rbp), %rdx
	movq	-648(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	merge
	.loc 2 4753 7
	movq	-648(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE118:
	jmp	.L1043
.L1040:
.LBB120:
	.loc 2 4757 10
	cmpq	$0, -776(%rbp)
	jne	.L1044
.LBB121:
	.loc 2 4759 34
	movl	$2, %edi
	call	num_processors@PLT
	movq	%rax, -664(%rbp)
	.loc 2 4760 20
	movl	$8, %eax
	cmpq	$8, -664(%rbp)
	cmovbe	-664(%rbp), %rax
	movq	%rax, -776(%rbp)
.L1044:
.LBE121:
	.loc 2 4764 14
	movabsq	$72057594037927935, %rax
	movq	%rax, -656(%rbp)
	.loc 2 4765 16
	movq	-776(%rbp), %rax
	cmpq	%rax, -656(%rbp)
	cmovbe	-656(%rbp), %rax
	movq	%rax, -776(%rbp)
	.loc 2 4767 7
	movq	-776(%rbp), %rcx
	movq	-744(%rbp), %rdx
	movq	-768(%rbp), %rsi
	movq	-760(%rbp), %rax
	movq	%rax, %rdi
	call	sort
.L1043:
.LBE120:
	.loc 2 4771 6
	cmpq	$0, -752(%rbp)
	je	.L1045
	.loc 2 4772 5
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	readtokens0_free@PLT
	jmp	.L1046
.L1045:
	.loc 2 4774 5
	movq	-760(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L1046:
	.loc 2 4777 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 4777 6
	testb	%al, %al
	je	.L1047
	.loc 2 4777 26 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 4777 23 discriminator 1
	cmpl	$-1, %eax
	jne	.L1047
	.loc 2 4778 15
	leaq	.LC105(%rip), %rdi
	call	gettext@PLT
	.loc 2 4778 5
	leaq	.LC99(%rip), %rsi
	movq	%rax, %rdi
	call	sort_die
.L1047:
	.loc 2 4780 10
	movl	$0, %eax
.L1048:
	.loc 2 4781 1 discriminator 5
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1049
	.loc 2 4781 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L1049:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	main, .-main
	.local	temp_dir_index.7932
	.comm	temp_dir_index.7932,8,8
	.section	.rodata
	.align 8
	.type	slashbase.7931, @object
	.size	slashbase.7931, 12
slashbase.7931:
	.string	"/sortXXXXXX"
	.local	outstat_errno.7945
	.comm	outstat_errno.7945,4,4
	.local	outstat.7946
	.comm	outstat.7946,144,32
	.align 8
	.type	__PRETTY_FUNCTION__.7957, @object
	.size	__PRETTY_FUNCTION__.7957, 12
__PRETTY_FUNCTION__.7957:
	.string	"stream_open"
	.local	size_bound.8103
	.comm	size_bound.8103,8,8
	.align 32
	.type	sig.8956, @object
	.size	sig.8956, 44
sig.8956:
	.long	14
	.long	1
	.long	2
	.long	13
	.long	3
	.long	15
	.long	29
	.long	27
	.long	26
	.long	24
	.long	25
	.type	__PRETTY_FUNCTION__.8971, @object
	.size	__PRETTY_FUNCTION__.8971, 5
__PRETTY_FUNCTION__.8971:
	.string	"main"
	.data
	.align 8
	.type	opts.9044, @object
	.size	opts.9044, 10
opts.9044:
	.string	"X --debug"
	.type	opts.9048, @object
	.size	opts.9048, 3
opts.9048:
	.string	""
	.string	"o"
	.section	.rodata
	.align 8
.LC106:
	.long	0
	.long	1070596096
	.align 8
.LC121:
	.long	0
	.long	1079574528
	.align 8
.LC122:
	.long	0
	.long	1139802112
	.align 8
.LC123:
	.long	0
	.long	1138753536
	.align 8
.LC125:
	.long	0
	.long	1075838976
	.align 8
.LC126:
	.long	0
	.long	1072168960
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 9 "/usr/include/sched.h"
	.file 10 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h"
	.file 13 "./lib/sys/select.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 17 "/usr/include/time.h"
	.file 18 "/usr/include/errno.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/resource.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h"
	.file 22 "/usr/include/signal.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/sigaction.h"
	.file 24 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 25 "/usr/include/unistd.h"
	.file 26 "src/version.h"
	.file 27 "./lib/exitfail.h"
	.file 28 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 29 "/usr/include/stdint.h"
	.file 30 "./lib/timespec.h"
	.file 31 "/usr/include/ctype.h"
	.file 32 "/usr/include/locale.h"
	.file 33 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 34 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 35 "/usr/include/stdio.h"
	.file 36 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 37 "./lib/version-etc.h"
	.file 38 "./lib/progname.h"
	.file 39 "./lib/quotearg.h"
	.file 40 "./lib/quote.h"
	.file 41 "./lib/argmatch.h"
	.file 42 "./lib/error.h"
	.file 43 "./lib/fadvise.h"
	.file 44 "./lib/hash.h"
	.file 45 "./lib/md5.h"
	.file 46 "./lib/nproc.h"
	.file 47 "./lib/obstack.h"
	.file 48 "./lib/readtokens0.h"
	.file 49 "./lib/xstrtol.h"
	.file 50 "/usr/include/langinfo.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x65e9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1132
	.byte	0xc
	.long	.LASF1133
	.long	.LASF1134
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
	.long	0x49
	.uleb128 0x4
	.long	0x39
	.uleb128 0x5
	.long	0x39
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	0x49
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.long	0x61
	.uleb128 0x4
	.long	0x61
	.uleb128 0x2
	.long	.LASF3
	.byte	0x3
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF35
	.byte	0x20
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.long	0xcc
	.uleb128 0xa
	.long	.LASF5
	.byte	0x4
	.byte	0x34
	.byte	0xf
	.long	0xd1
	.byte	0
	.uleb128 0xa
	.long	.LASF6
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF7
	.byte	0x4
	.byte	0x38
	.byte	0x8
	.long	0xe1
	.byte	0x10
	.uleb128 0xb
	.string	"val"
	.byte	0x4
	.byte	0x39
	.byte	0x7
	.long	0x61
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	0x8a
	.uleb128 0x3
	.byte	0x8
	.long	0x50
	.uleb128 0x4
	.long	0xd1
	.uleb128 0x5
	.long	0xd1
	.uleb128 0x3
	.byte	0x8
	.long	0x61
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF13
	.uleb128 0xc
	.long	.LASF15
	.byte	0x5
	.byte	0x2a
	.byte	0x16
	.long	0xf5
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0xc
	.long	.LASF16
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0xfc
	.uleb128 0xc
	.long	.LASF17
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0xfc
	.uleb128 0xc
	.long	.LASF18
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0xf5
	.uleb128 0xc
	.long	.LASF19
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0xf5
	.uleb128 0xc
	.long	.LASF20
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0xfc
	.uleb128 0xc
	.long	.LASF21
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0xf5
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0xfc
	.uleb128 0xc
	.long	.LASF23
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x11d
	.uleb128 0xc
	.long	.LASF24
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x11d
	.uleb128 0xc
	.long	.LASF25
	.byte	0x5
	.byte	0x9a
	.byte	0x19
	.long	0x61
	.uleb128 0xd
	.long	0x61
	.long	0x1ac
	.uleb128 0xe
	.long	0xfc
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF26
	.byte	0x5
	.byte	0x9c
	.byte	0x1b
	.long	0x11d
	.uleb128 0xc
	.long	.LASF27
	.byte	0x5
	.byte	0x9d
	.byte	0x1a
	.long	0xfc
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x11d
	.uleb128 0xf
	.byte	0x8
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0xae
	.byte	0x1d
	.long	0x11d
	.uleb128 0xc
	.long	.LASF30
	.byte	0x5
	.byte	0xb3
	.byte	0x1c
	.long	0x11d
	.uleb128 0xc
	.long	.LASF31
	.byte	0x5
	.byte	0xc1
	.byte	0x1b
	.long	0x11d
	.uleb128 0xc
	.long	.LASF32
	.byte	0x5
	.byte	0xc4
	.byte	0x21
	.long	0x11d
	.uleb128 0xc
	.long	.LASF33
	.byte	0x6
	.byte	0xd1
	.byte	0x17
	.long	0xfc
	.uleb128 0x4
	.long	0x202
	.uleb128 0xc
	.long	.LASF34
	.byte	0x7
	.byte	0x7
	.byte	0x12
	.long	0x1c4
	.uleb128 0x9
	.long	.LASF36
	.byte	0x10
	.byte	0x8
	.byte	0xa
	.byte	0x8
	.long	0x247
	.uleb128 0xa
	.long	.LASF37
	.byte	0x8
	.byte	0xc
	.byte	0xc
	.long	0x1c4
	.byte	0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x8
	.byte	0x10
	.byte	0x15
	.long	0x1f6
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x9
	.byte	0x26
	.byte	0x11
	.long	0x190
	.uleb128 0xc
	.long	.LASF40
	.byte	0xa
	.byte	0x55
	.byte	0x11
	.long	0x178
	.uleb128 0xc
	.long	.LASF41
	.byte	0xa
	.byte	0x6c
	.byte	0x13
	.long	0x1ea
	.uleb128 0x10
	.byte	0x80
	.byte	0xb
	.byte	0x5
	.byte	0x9
	.long	0x282
	.uleb128 0xa
	.long	.LASF42
	.byte	0xb
	.byte	0x7
	.byte	0x15
	.long	0x282
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xfc
	.long	0x292
	.uleb128 0xe
	.long	0xfc
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	.LASF43
	.byte	0xb
	.byte	0x8
	.byte	0x3
	.long	0x26b
	.uleb128 0xc
	.long	.LASF44
	.byte	0xc
	.byte	0x7
	.byte	0x14
	.long	0x292
	.uleb128 0x11
	.long	.LASF45
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x9
	.long	.LASF46
	.byte	0x10
	.byte	0xe
	.byte	0x31
	.byte	0x10
	.long	0x2df
	.uleb128 0xa
	.long	.LASF47
	.byte	0xe
	.byte	0x33
	.byte	0x23
	.long	0x2df
	.byte	0
	.uleb128 0xa
	.long	.LASF48
	.byte	0xe
	.byte	0x34
	.byte	0x23
	.long	0x2df
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2b7
	.uleb128 0xc
	.long	.LASF49
	.byte	0xe
	.byte	0x35
	.byte	0x3
	.long	0x2b7
	.uleb128 0x9
	.long	.LASF50
	.byte	0x28
	.byte	0xf
	.byte	0x16
	.byte	0x8
	.long	0x367
	.uleb128 0xa
	.long	.LASF51
	.byte	0xf
	.byte	0x18
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF52
	.byte	0xf
	.byte	0x19
	.byte	0x10
	.long	0xf5
	.byte	0x4
	.uleb128 0xa
	.long	.LASF53
	.byte	0xf
	.byte	0x1a
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF54
	.byte	0xf
	.byte	0x1c
	.byte	0x10
	.long	0xf5
	.byte	0xc
	.uleb128 0xa
	.long	.LASF55
	.byte	0xf
	.byte	0x20
	.byte	0x7
	.long	0x61
	.byte	0x10
	.uleb128 0xa
	.long	.LASF56
	.byte	0xf
	.byte	0x22
	.byte	0x9
	.long	0x10a
	.byte	0x14
	.uleb128 0xa
	.long	.LASF57
	.byte	0xf
	.byte	0x23
	.byte	0x9
	.long	0x10a
	.byte	0x16
	.uleb128 0xa
	.long	.LASF58
	.byte	0xf
	.byte	0x24
	.byte	0x14
	.long	0x2e5
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0xe
	.byte	0x61
	.byte	0x5
	.long	0x38b
	.uleb128 0xa
	.long	.LASF59
	.byte	0xe
	.byte	0x63
	.byte	0x14
	.long	0xf5
	.byte	0
	.uleb128 0xa
	.long	.LASF60
	.byte	0xe
	.byte	0x64
	.byte	0x14
	.long	0xf5
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0xe
	.byte	0x5e
	.byte	0x11
	.long	0x3ad
	.uleb128 0x13
	.long	.LASF61
	.byte	0xe
	.byte	0x60
	.byte	0x2a
	.long	0x3ad
	.uleb128 0x13
	.long	.LASF62
	.byte	0xe
	.byte	0x65
	.byte	0x7
	.long	0x367
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF63
	.uleb128 0x10
	.byte	0x8
	.byte	0xe
	.byte	0x6a
	.byte	0x5
	.long	0x3d8
	.uleb128 0xa
	.long	.LASF59
	.byte	0xe
	.byte	0x6c
	.byte	0x14
	.long	0xf5
	.byte	0
	.uleb128 0xa
	.long	.LASF60
	.byte	0xe
	.byte	0x6d
	.byte	0x14
	.long	0xf5
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0xe
	.byte	0x67
	.byte	0x11
	.long	0x3fa
	.uleb128 0x13
	.long	.LASF64
	.byte	0xe
	.byte	0x69
	.byte	0x2a
	.long	0x3ad
	.uleb128 0x13
	.long	.LASF65
	.byte	0xe
	.byte	0x6e
	.byte	0x7
	.long	0x3b4
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0x30
	.byte	0xe
	.byte	0x5c
	.byte	0x8
	.long	0x455
	.uleb128 0x14
	.long	0x38b
	.byte	0
	.uleb128 0x14
	.long	0x3d8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF67
	.byte	0xe
	.byte	0x70
	.byte	0x10
	.long	0x455
	.byte	0x10
	.uleb128 0xa
	.long	.LASF68
	.byte	0xe
	.byte	0x71
	.byte	0x10
	.long	0x455
	.byte	0x18
	.uleb128 0xa
	.long	.LASF69
	.byte	0xe
	.byte	0x72
	.byte	0x10
	.long	0xf5
	.byte	0x20
	.uleb128 0xa
	.long	.LASF70
	.byte	0xe
	.byte	0x73
	.byte	0x10
	.long	0xf5
	.byte	0x24
	.uleb128 0xa
	.long	.LASF71
	.byte	0xe
	.byte	0x74
	.byte	0x10
	.long	0x455
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.long	0xf5
	.long	0x465
	.uleb128 0xe
	.long	0xfc
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF72
	.byte	0x10
	.byte	0x1b
	.byte	0x1b
	.long	0xfc
	.uleb128 0x12
	.byte	0x28
	.byte	0x10
	.byte	0x43
	.byte	0x9
	.long	0x49f
	.uleb128 0x13
	.long	.LASF73
	.byte	0x10
	.byte	0x45
	.byte	0x1c
	.long	0x2f1
	.uleb128 0x13
	.long	.LASF74
	.byte	0x10
	.byte	0x46
	.byte	0x8
	.long	0x49f
	.uleb128 0x13
	.long	.LASF75
	.byte	0x10
	.byte	0x47
	.byte	0xc
	.long	0x11d
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x4af
	.uleb128 0xe
	.long	0xfc
	.byte	0x27
	.byte	0
	.uleb128 0xc
	.long	.LASF76
	.byte	0x10
	.byte	0x48
	.byte	0x3
	.long	0x471
	.uleb128 0x12
	.byte	0x30
	.byte	0x10
	.byte	0x4b
	.byte	0x9
	.long	0x4e9
	.uleb128 0x13
	.long	.LASF73
	.byte	0x10
	.byte	0x4d
	.byte	0x1b
	.long	0x3fa
	.uleb128 0x13
	.long	.LASF74
	.byte	0x10
	.byte	0x4e
	.byte	0x8
	.long	0x4e9
	.uleb128 0x13
	.long	.LASF75
	.byte	0x10
	.byte	0x4f
	.byte	0x1f
	.long	0x4f9
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x4f9
	.uleb128 0xe
	.long	0xfc
	.byte	0x2f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF77
	.uleb128 0xc
	.long	.LASF78
	.byte	0x10
	.byte	0x50
	.byte	0x3
	.long	0x4bb
	.uleb128 0xd
	.long	0x39
	.long	0x51c
	.uleb128 0xe
	.long	0xfc
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x11
	.byte	0x9f
	.byte	0xe
	.long	0x50c
	.uleb128 0x2
	.long	.LASF80
	.byte	0x11
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.long	.LASF81
	.byte	0x11
	.byte	0xa1
	.byte	0x11
	.long	0x11d
	.uleb128 0x2
	.long	.LASF82
	.byte	0x11
	.byte	0xa6
	.byte	0xe
	.long	0x50c
	.uleb128 0x2
	.long	.LASF83
	.byte	0x11
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.long	.LASF84
	.byte	0x11
	.byte	0xaf
	.byte	0x11
	.long	0x11d
	.uleb128 0x11
	.long	.LASF85
	.byte	0x11
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.long	.LASF86
	.uleb128 0x15
	.long	0x583
	.uleb128 0x16
	.long	0x1d0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x578
	.uleb128 0x3
	.byte	0x8
	.long	0x58f
	.uleb128 0x17
	.uleb128 0x2
	.long	.LASF87
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF88
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x18
	.long	.LASF263
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x13
	.byte	0x1f
	.byte	0x6
	.long	0x62d
	.uleb128 0x19
	.long	.LASF89
	.byte	0
	.uleb128 0x19
	.long	.LASF90
	.byte	0x1
	.uleb128 0x19
	.long	.LASF91
	.byte	0x2
	.uleb128 0x19
	.long	.LASF92
	.byte	0x3
	.uleb128 0x19
	.long	.LASF93
	.byte	0x4
	.uleb128 0x19
	.long	.LASF94
	.byte	0x5
	.uleb128 0x19
	.long	.LASF95
	.byte	0x7
	.uleb128 0x19
	.long	.LASF96
	.byte	0x7
	.uleb128 0x19
	.long	.LASF97
	.byte	0x9
	.uleb128 0x19
	.long	.LASF98
	.byte	0x6
	.uleb128 0x19
	.long	.LASF99
	.byte	0x8
	.uleb128 0x19
	.long	.LASF100
	.byte	0xa
	.uleb128 0x19
	.long	.LASF101
	.byte	0xb
	.uleb128 0x19
	.long	.LASF102
	.byte	0xc
	.uleb128 0x19
	.long	.LASF103
	.byte	0xd
	.uleb128 0x19
	.long	.LASF104
	.byte	0xe
	.uleb128 0x19
	.long	.LASF105
	.byte	0xf
	.uleb128 0x19
	.long	.LASF106
	.byte	0x10
	.uleb128 0x19
	.long	.LASF107
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	.LASF108
	.byte	0x13
	.byte	0x83
	.byte	0x12
	.long	0x1b8
	.uleb128 0x9
	.long	.LASF109
	.byte	0x10
	.byte	0x13
	.byte	0x8b
	.byte	0x8
	.long	0x661
	.uleb128 0xa
	.long	.LASF110
	.byte	0x13
	.byte	0x8e
	.byte	0xc
	.long	0x62d
	.byte	0
	.uleb128 0xa
	.long	.LASF111
	.byte	0x13
	.byte	0x90
	.byte	0xc
	.long	0x62d
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	.LASF1135
	.byte	0x8
	.byte	0x14
	.byte	0x18
	.byte	0x7
	.long	0x687
	.uleb128 0x13
	.long	.LASF112
	.byte	0x14
	.byte	0x1a
	.byte	0x7
	.long	0x61
	.uleb128 0x13
	.long	.LASF113
	.byte	0x14
	.byte	0x1b
	.byte	0x9
	.long	0x1d0
	.byte	0
	.uleb128 0xc
	.long	.LASF114
	.byte	0x14
	.byte	0x1e
	.byte	0x16
	.long	0x661
	.uleb128 0x10
	.byte	0x8
	.byte	0x15
	.byte	0x38
	.byte	0x2
	.long	0x6b7
	.uleb128 0xa
	.long	.LASF115
	.byte	0x15
	.byte	0x3a
	.byte	0xe
	.long	0x190
	.byte	0
	.uleb128 0xa
	.long	.LASF116
	.byte	0x15
	.byte	0x3b
	.byte	0xe
	.long	0x13c
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0x15
	.byte	0x3f
	.byte	0x2
	.long	0x6e8
	.uleb128 0xa
	.long	.LASF117
	.byte	0x15
	.byte	0x41
	.byte	0xa
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF118
	.byte	0x15
	.byte	0x42
	.byte	0xa
	.long	0x61
	.byte	0x4
	.uleb128 0xa
	.long	.LASF119
	.byte	0x15
	.byte	0x43
	.byte	0x11
	.long	0x687
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0x15
	.byte	0x47
	.byte	0x2
	.long	0x719
	.uleb128 0xa
	.long	.LASF115
	.byte	0x15
	.byte	0x49
	.byte	0xe
	.long	0x190
	.byte	0
	.uleb128 0xa
	.long	.LASF116
	.byte	0x15
	.byte	0x4a
	.byte	0xe
	.long	0x13c
	.byte	0x4
	.uleb128 0xa
	.long	.LASF119
	.byte	0x15
	.byte	0x4b
	.byte	0x11
	.long	0x687
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x20
	.byte	0x15
	.byte	0x4f
	.byte	0x2
	.long	0x764
	.uleb128 0xa
	.long	.LASF115
	.byte	0x15
	.byte	0x51
	.byte	0xe
	.long	0x190
	.byte	0
	.uleb128 0xa
	.long	.LASF116
	.byte	0x15
	.byte	0x52
	.byte	0xe
	.long	0x13c
	.byte	0x4
	.uleb128 0xa
	.long	.LASF120
	.byte	0x15
	.byte	0x53
	.byte	0xa
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF121
	.byte	0x15
	.byte	0x54
	.byte	0x13
	.long	0x1ac
	.byte	0x10
	.uleb128 0xa
	.long	.LASF122
	.byte	0x15
	.byte	0x55
	.byte	0x13
	.long	0x1ac
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0x15
	.byte	0x61
	.byte	0x3
	.long	0x788
	.uleb128 0xa
	.long	.LASF123
	.byte	0x15
	.byte	0x63
	.byte	0xd
	.long	0x1d0
	.byte	0
	.uleb128 0xa
	.long	.LASF124
	.byte	0x15
	.byte	0x64
	.byte	0xd
	.long	0x1d0
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x15
	.byte	0x5e
	.byte	0x6
	.long	0x7aa
	.uleb128 0x13
	.long	.LASF125
	.byte	0x15
	.byte	0x65
	.byte	0x7
	.long	0x764
	.uleb128 0x13
	.long	.LASF126
	.byte	0x15
	.byte	0x67
	.byte	0xe
	.long	0x111
	.byte	0
	.uleb128 0x10
	.byte	0x20
	.byte	0x15
	.byte	0x59
	.byte	0x2
	.long	0x7db
	.uleb128 0xa
	.long	.LASF127
	.byte	0x15
	.byte	0x5b
	.byte	0xc
	.long	0x1d0
	.byte	0
	.uleb128 0xa
	.long	.LASF128
	.byte	0x15
	.byte	0x5d
	.byte	0x10
	.long	0x10a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF129
	.byte	0x15
	.byte	0x68
	.byte	0xa
	.long	0x788
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0x15
	.byte	0x6c
	.byte	0x2
	.long	0x7ff
	.uleb128 0xa
	.long	.LASF130
	.byte	0x15
	.byte	0x6e
	.byte	0x15
	.long	0x11d
	.byte	0
	.uleb128 0xa
	.long	.LASF131
	.byte	0x15
	.byte	0x6f
	.byte	0xa
	.long	0x61
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0x15
	.byte	0x74
	.byte	0x2
	.long	0x830
	.uleb128 0xa
	.long	.LASF132
	.byte	0x15
	.byte	0x76
	.byte	0xc
	.long	0x1d0
	.byte	0
	.uleb128 0xa
	.long	.LASF133
	.byte	0x15
	.byte	0x77
	.byte	0xa
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF134
	.byte	0x15
	.byte	0x78
	.byte	0x13
	.long	0xf5
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.byte	0x70
	.byte	0x15
	.byte	0x33
	.byte	0x5
	.long	0x89a
	.uleb128 0x13
	.long	.LASF135
	.byte	0x15
	.byte	0x35
	.byte	0x6
	.long	0x89a
	.uleb128 0x13
	.long	.LASF136
	.byte	0x15
	.byte	0x3c
	.byte	0x6
	.long	0x693
	.uleb128 0x13
	.long	.LASF137
	.byte	0x15
	.byte	0x44
	.byte	0x6
	.long	0x6b7
	.uleb128 0x1b
	.string	"_rt"
	.byte	0x15
	.byte	0x4c
	.byte	0x6
	.long	0x6e8
	.uleb128 0x13
	.long	.LASF138
	.byte	0x15
	.byte	0x56
	.byte	0x6
	.long	0x719
	.uleb128 0x13
	.long	.LASF139
	.byte	0x15
	.byte	0x69
	.byte	0x6
	.long	0x7aa
	.uleb128 0x13
	.long	.LASF140
	.byte	0x15
	.byte	0x70
	.byte	0x6
	.long	0x7db
	.uleb128 0x13
	.long	.LASF141
	.byte	0x15
	.byte	0x79
	.byte	0x6
	.long	0x7ff
	.byte	0
	.uleb128 0xd
	.long	0x61
	.long	0x8aa
	.uleb128 0xe
	.long	0xfc
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.byte	0x80
	.byte	0x15
	.byte	0x24
	.byte	0x9
	.long	0x8f5
	.uleb128 0xa
	.long	.LASF142
	.byte	0x15
	.byte	0x26
	.byte	0x9
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF143
	.byte	0x15
	.byte	0x28
	.byte	0x9
	.long	0x61
	.byte	0x4
	.uleb128 0xa
	.long	.LASF144
	.byte	0x15
	.byte	0x2a
	.byte	0x9
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF145
	.byte	0x15
	.byte	0x30
	.byte	0x9
	.long	0x61
	.byte	0xc
	.uleb128 0xa
	.long	.LASF146
	.byte	0x15
	.byte	0x7b
	.byte	0x9
	.long	0x830
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	.LASF147
	.byte	0x15
	.byte	0x7c
	.byte	0x5
	.long	0x8aa
	.uleb128 0xc
	.long	.LASF148
	.byte	0x16
	.byte	0x48
	.byte	0x10
	.long	0x90d
	.uleb128 0x3
	.byte	0x8
	.long	0x913
	.uleb128 0x15
	.long	0x91e
	.uleb128 0x16
	.long	0x61
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0x17
	.byte	0x1f
	.byte	0x5
	.long	0x940
	.uleb128 0x13
	.long	.LASF149
	.byte	0x17
	.byte	0x22
	.byte	0x11
	.long	0x901
	.uleb128 0x13
	.long	.LASF150
	.byte	0x17
	.byte	0x24
	.byte	0x9
	.long	0x95b
	.byte	0
	.uleb128 0x15
	.long	0x955
	.uleb128 0x16
	.long	0x61
	.uleb128 0x16
	.long	0x955
	.uleb128 0x16
	.long	0x1d0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x8f5
	.uleb128 0x3
	.byte	0x8
	.long	0x940
	.uleb128 0x9
	.long	.LASF151
	.byte	0x98
	.byte	0x17
	.byte	0x1b
	.byte	0x8
	.long	0x9a3
	.uleb128 0xa
	.long	.LASF152
	.byte	0x17
	.byte	0x26
	.byte	0x5
	.long	0x91e
	.byte	0
	.uleb128 0xa
	.long	.LASF153
	.byte	0x17
	.byte	0x2e
	.byte	0x10
	.long	0x292
	.byte	0x8
	.uleb128 0xa
	.long	.LASF154
	.byte	0x17
	.byte	0x31
	.byte	0x9
	.long	0x61
	.byte	0x88
	.uleb128 0xa
	.long	.LASF155
	.byte	0x17
	.byte	0x34
	.byte	0xc
	.long	0x9a9
	.byte	0x90
	.byte	0
	.uleb128 0x1c
	.uleb128 0x8
	.long	0x9a3
	.uleb128 0x3
	.byte	0x8
	.long	0x9a3
	.uleb128 0xd
	.long	0xd7
	.long	0x9bf
	.uleb128 0xe
	.long	0xfc
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.long	0x9af
	.uleb128 0x11
	.long	.LASF156
	.byte	0x16
	.value	0x11e
	.byte	0x1a
	.long	0x9bf
	.uleb128 0x11
	.long	.LASF157
	.byte	0x16
	.value	0x11f
	.byte	0x1a
	.long	0x9bf
	.uleb128 0x9
	.long	.LASF158
	.byte	0x90
	.byte	0x18
	.byte	0x2e
	.byte	0x8
	.long	0xaaf
	.uleb128 0xa
	.long	.LASF159
	.byte	0x18
	.byte	0x30
	.byte	0xd
	.long	0x130
	.byte	0
	.uleb128 0xa
	.long	.LASF160
	.byte	0x18
	.byte	0x35
	.byte	0xd
	.long	0x154
	.byte	0x8
	.uleb128 0xa
	.long	.LASF161
	.byte	0x18
	.byte	0x3d
	.byte	0xf
	.long	0x16c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF162
	.byte	0x18
	.byte	0x3e
	.byte	0xe
	.long	0x160
	.byte	0x18
	.uleb128 0xa
	.long	.LASF163
	.byte	0x18
	.byte	0x40
	.byte	0xd
	.long	0x13c
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF164
	.byte	0x18
	.byte	0x41
	.byte	0xd
	.long	0x148
	.byte	0x20
	.uleb128 0xa
	.long	.LASF145
	.byte	0x18
	.byte	0x43
	.byte	0x9
	.long	0x61
	.byte	0x24
	.uleb128 0xa
	.long	.LASF165
	.byte	0x18
	.byte	0x45
	.byte	0xd
	.long	0x130
	.byte	0x28
	.uleb128 0xa
	.long	.LASF166
	.byte	0x18
	.byte	0x4a
	.byte	0xd
	.long	0x178
	.byte	0x30
	.uleb128 0xa
	.long	.LASF167
	.byte	0x18
	.byte	0x4e
	.byte	0x11
	.long	0x1d2
	.byte	0x38
	.uleb128 0xa
	.long	.LASF168
	.byte	0x18
	.byte	0x50
	.byte	0x10
	.long	0x1de
	.byte	0x40
	.uleb128 0xa
	.long	.LASF169
	.byte	0x18
	.byte	0x5b
	.byte	0x15
	.long	0x21f
	.byte	0x48
	.uleb128 0xa
	.long	.LASF170
	.byte	0x18
	.byte	0x5c
	.byte	0x15
	.long	0x21f
	.byte	0x58
	.uleb128 0xa
	.long	.LASF171
	.byte	0x18
	.byte	0x5d
	.byte	0x15
	.long	0x21f
	.byte	0x68
	.uleb128 0xa
	.long	.LASF172
	.byte	0x18
	.byte	0x6a
	.byte	0x17
	.long	0xaaf
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0x1f6
	.long	0xabf
	.uleb128 0xe
	.long	0xfc
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.long	.LASF173
	.byte	0x19
	.value	0x21f
	.byte	0xf
	.long	0xacc
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x11
	.long	.LASF174
	.byte	0x19
	.value	0x221
	.byte	0xf
	.long	0xacc
	.uleb128 0x2
	.long	.LASF175
	.byte	0x1a
	.byte	0x1
	.byte	0x14
	.long	0xd1
	.uleb128 0x2
	.long	.LASF176
	.byte	0x1b
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0xd
	.long	0x49
	.long	0xb07
	.uleb128 0xe
	.long	0xfc
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.long	.LASF177
	.byte	0x1c
	.byte	0x1a
	.byte	0x14
	.long	0x111
	.uleb128 0xc
	.long	.LASF178
	.byte	0x1d
	.byte	0x66
	.byte	0x16
	.long	0x124
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x1e
	.byte	0x29
	.byte	0x6
	.long	0xb37
	.uleb128 0x1e
	.long	.LASF179
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x1e
	.byte	0x2a
	.byte	0x6
	.long	0xb4c
	.uleb128 0x19
	.long	.LASF180
	.byte	0x9
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x1f
	.byte	0x2f
	.byte	0x1
	.long	0xbab
	.uleb128 0x1f
	.long	.LASF181
	.value	0x100
	.uleb128 0x1f
	.long	.LASF182
	.value	0x200
	.uleb128 0x1f
	.long	.LASF183
	.value	0x400
	.uleb128 0x1f
	.long	.LASF184
	.value	0x800
	.uleb128 0x1f
	.long	.LASF185
	.value	0x1000
	.uleb128 0x1f
	.long	.LASF186
	.value	0x2000
	.uleb128 0x1f
	.long	.LASF187
	.value	0x4000
	.uleb128 0x1f
	.long	.LASF188
	.value	0x8000
	.uleb128 0x19
	.long	.LASF189
	.byte	0x1
	.uleb128 0x19
	.long	.LASF190
	.byte	0x2
	.uleb128 0x19
	.long	.LASF191
	.byte	0x4
	.uleb128 0x19
	.long	.LASF192
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF193
	.byte	0x60
	.byte	0x20
	.byte	0x33
	.byte	0x8
	.long	0xcf1
	.uleb128 0xa
	.long	.LASF194
	.byte	0x20
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0
	.uleb128 0xa
	.long	.LASF195
	.byte	0x20
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0xa
	.long	.LASF196
	.byte	0x20
	.byte	0x3e
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0xa
	.long	.LASF197
	.byte	0x20
	.byte	0x44
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0xa
	.long	.LASF198
	.byte	0x20
	.byte	0x45
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0xa
	.long	.LASF199
	.byte	0x20
	.byte	0x46
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0xa
	.long	.LASF200
	.byte	0x20
	.byte	0x47
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0xa
	.long	.LASF201
	.byte	0x20
	.byte	0x48
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0xa
	.long	.LASF202
	.byte	0x20
	.byte	0x49
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0xa
	.long	.LASF203
	.byte	0x20
	.byte	0x4a
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0xa
	.long	.LASF204
	.byte	0x20
	.byte	0x4b
	.byte	0x8
	.long	0x49
	.byte	0x50
	.uleb128 0xa
	.long	.LASF205
	.byte	0x20
	.byte	0x4c
	.byte	0x8
	.long	0x49
	.byte	0x51
	.uleb128 0xa
	.long	.LASF206
	.byte	0x20
	.byte	0x4e
	.byte	0x8
	.long	0x49
	.byte	0x52
	.uleb128 0xa
	.long	.LASF207
	.byte	0x20
	.byte	0x50
	.byte	0x8
	.long	0x49
	.byte	0x53
	.uleb128 0xa
	.long	.LASF208
	.byte	0x20
	.byte	0x52
	.byte	0x8
	.long	0x49
	.byte	0x54
	.uleb128 0xa
	.long	.LASF209
	.byte	0x20
	.byte	0x54
	.byte	0x8
	.long	0x49
	.byte	0x55
	.uleb128 0xa
	.long	.LASF210
	.byte	0x20
	.byte	0x5b
	.byte	0x8
	.long	0x49
	.byte	0x56
	.uleb128 0xa
	.long	.LASF211
	.byte	0x20
	.byte	0x5c
	.byte	0x8
	.long	0x49
	.byte	0x57
	.uleb128 0xa
	.long	.LASF212
	.byte	0x20
	.byte	0x5f
	.byte	0x8
	.long	0x49
	.byte	0x58
	.uleb128 0xa
	.long	.LASF213
	.byte	0x20
	.byte	0x61
	.byte	0x8
	.long	0x49
	.byte	0x59
	.uleb128 0xa
	.long	.LASF214
	.byte	0x20
	.byte	0x63
	.byte	0x8
	.long	0x49
	.byte	0x5a
	.uleb128 0xa
	.long	.LASF215
	.byte	0x20
	.byte	0x65
	.byte	0x8
	.long	0x49
	.byte	0x5b
	.uleb128 0xa
	.long	.LASF216
	.byte	0x20
	.byte	0x6c
	.byte	0x8
	.long	0x49
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF217
	.byte	0x20
	.byte	0x6d
	.byte	0x8
	.long	0x49
	.byte	0x5d
	.byte	0
	.uleb128 0x4
	.long	0xbab
	.uleb128 0x9
	.long	.LASF218
	.byte	0xd8
	.byte	0x21
	.byte	0x31
	.byte	0x8
	.long	0xe7d
	.uleb128 0xa
	.long	.LASF219
	.byte	0x21
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF220
	.byte	0x21
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0xa
	.long	.LASF221
	.byte	0x21
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0xa
	.long	.LASF222
	.byte	0x21
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0xa
	.long	.LASF223
	.byte	0x21
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0xa
	.long	.LASF224
	.byte	0x21
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0xa
	.long	.LASF225
	.byte	0x21
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0xa
	.long	.LASF226
	.byte	0x21
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0xa
	.long	.LASF227
	.byte	0x21
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0xa
	.long	.LASF228
	.byte	0x21
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0xa
	.long	.LASF229
	.byte	0x21
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0xa
	.long	.LASF230
	.byte	0x21
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0xa
	.long	.LASF231
	.byte	0x21
	.byte	0x44
	.byte	0x16
	.long	0xe96
	.byte	0x60
	.uleb128 0xa
	.long	.LASF232
	.byte	0x21
	.byte	0x46
	.byte	0x14
	.long	0xe9c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF233
	.byte	0x21
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF234
	.byte	0x21
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF235
	.byte	0x21
	.byte	0x4a
	.byte	0xb
	.long	0x178
	.byte	0x78
	.uleb128 0xa
	.long	.LASF236
	.byte	0x21
	.byte	0x4d
	.byte	0x12
	.long	0xee
	.byte	0x80
	.uleb128 0xa
	.long	.LASF237
	.byte	0x21
	.byte	0x4e
	.byte	0xf
	.long	0x103
	.byte	0x82
	.uleb128 0xa
	.long	.LASF238
	.byte	0x21
	.byte	0x4f
	.byte	0x8
	.long	0xea2
	.byte	0x83
	.uleb128 0xa
	.long	.LASF239
	.byte	0x21
	.byte	0x51
	.byte	0xf
	.long	0xeb2
	.byte	0x88
	.uleb128 0xa
	.long	.LASF240
	.byte	0x21
	.byte	0x59
	.byte	0xd
	.long	0x184
	.byte	0x90
	.uleb128 0xa
	.long	.LASF241
	.byte	0x21
	.byte	0x5b
	.byte	0x17
	.long	0xebd
	.byte	0x98
	.uleb128 0xa
	.long	.LASF242
	.byte	0x21
	.byte	0x5c
	.byte	0x19
	.long	0xec8
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF243
	.byte	0x21
	.byte	0x5d
	.byte	0x14
	.long	0xe9c
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF244
	.byte	0x21
	.byte	0x5e
	.byte	0x9
	.long	0x1d0
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF245
	.byte	0x21
	.byte	0x5f
	.byte	0xa
	.long	0x202
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF246
	.byte	0x21
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF247
	.byte	0x21
	.byte	0x62
	.byte	0x8
	.long	0xece
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF248
	.byte	0x22
	.byte	0x7
	.byte	0x19
	.long	0xcf6
	.uleb128 0x20
	.long	.LASF1136
	.byte	0x21
	.byte	0x2b
	.byte	0xe
	.uleb128 0x21
	.long	.LASF249
	.uleb128 0x3
	.byte	0x8
	.long	0xe91
	.uleb128 0x3
	.byte	0x8
	.long	0xcf6
	.uleb128 0xd
	.long	0x49
	.long	0xeb2
	.uleb128 0xe
	.long	0xfc
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe89
	.uleb128 0x21
	.long	.LASF250
	.uleb128 0x3
	.byte	0x8
	.long	0xeb8
	.uleb128 0x21
	.long	.LASF251
	.uleb128 0x3
	.byte	0x8
	.long	0xec3
	.uleb128 0xd
	.long	0x49
	.long	0xede
	.uleb128 0xe
	.long	0xfc
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF252
	.byte	0x23
	.byte	0x89
	.byte	0xe
	.long	0xeea
	.uleb128 0x3
	.byte	0x8
	.long	0xe7d
	.uleb128 0x4
	.long	0xeea
	.uleb128 0x2
	.long	.LASF253
	.byte	0x23
	.byte	0x8a
	.byte	0xe
	.long	0xeea
	.uleb128 0x2
	.long	.LASF254
	.byte	0x23
	.byte	0x8b
	.byte	0xe
	.long	0xeea
	.uleb128 0x2
	.long	.LASF255
	.byte	0x24
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0xd7
	.long	0xf24
	.uleb128 0x22
	.byte	0
	.uleb128 0x4
	.long	0xf19
	.uleb128 0x2
	.long	.LASF256
	.byte	0x24
	.byte	0x1b
	.byte	0x1a
	.long	0xf24
	.uleb128 0x2
	.long	.LASF257
	.byte	0x24
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.long	.LASF258
	.byte	0x24
	.byte	0x1f
	.byte	0x1a
	.long	0xf24
	.uleb128 0x23
	.byte	0x5
	.byte	0x4
	.long	0x61
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0xf6b
	.uleb128 0x24
	.long	.LASF259
	.sleb128 -130
	.uleb128 0x24
	.long	.LASF260
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x50
	.long	0xf76
	.uleb128 0x22
	.byte	0
	.uleb128 0x4
	.long	0xf6b
	.uleb128 0x2
	.long	.LASF261
	.byte	0x25
	.byte	0x19
	.byte	0x13
	.long	0xf76
	.uleb128 0x2
	.long	.LASF262
	.byte	0x26
	.byte	0x20
	.byte	0x14
	.long	0xd1
	.uleb128 0x18
	.long	.LASF264
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x27
	.byte	0x20
	.byte	0x6
	.long	0xfe8
	.uleb128 0x19
	.long	.LASF265
	.byte	0
	.uleb128 0x19
	.long	.LASF266
	.byte	0x1
	.uleb128 0x19
	.long	.LASF267
	.byte	0x2
	.uleb128 0x19
	.long	.LASF268
	.byte	0x3
	.uleb128 0x19
	.long	.LASF269
	.byte	0x4
	.uleb128 0x19
	.long	.LASF270
	.byte	0x5
	.uleb128 0x19
	.long	.LASF271
	.byte	0x6
	.uleb128 0x19
	.long	.LASF272
	.byte	0x7
	.uleb128 0x19
	.long	.LASF273
	.byte	0x8
	.uleb128 0x19
	.long	.LASF274
	.byte	0x9
	.uleb128 0x19
	.long	.LASF275
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0xf93
	.uleb128 0x11
	.long	.LASF276
	.byte	0x27
	.value	0x10b
	.byte	0x1a
	.long	0xf24
	.uleb128 0xd
	.long	0xfe8
	.long	0x1005
	.uleb128 0x22
	.byte	0
	.uleb128 0x4
	.long	0xffa
	.uleb128 0x11
	.long	.LASF277
	.byte	0x27
	.value	0x10c
	.byte	0x21
	.long	0x1005
	.uleb128 0x21
	.long	.LASF278
	.uleb128 0x2
	.long	.LASF279
	.byte	0x28
	.byte	0x19
	.byte	0x1f
	.long	0x1017
	.uleb128 0xc
	.long	.LASF280
	.byte	0x29
	.byte	0x3d
	.byte	0x10
	.long	0x9a9
	.uleb128 0x2
	.long	.LASF281
	.byte	0x29
	.byte	0x3e
	.byte	0x19
	.long	0x1028
	.uleb128 0x2
	.long	.LASF282
	.byte	0x2a
	.byte	0x32
	.byte	0xf
	.long	0x9a9
	.uleb128 0x2
	.long	.LASF283
	.byte	0x2a
	.byte	0x35
	.byte	0x15
	.long	0xf5
	.uleb128 0x2
	.long	.LASF284
	.byte	0x2a
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2b
	.byte	0x2d
	.byte	0xe
	.long	0x1097
	.uleb128 0x19
	.long	.LASF285
	.byte	0
	.uleb128 0x19
	.long	.LASF286
	.byte	0x2
	.uleb128 0x19
	.long	.LASF287
	.byte	0x5
	.uleb128 0x19
	.long	.LASF288
	.byte	0x4
	.uleb128 0x19
	.long	.LASF289
	.byte	0x3
	.uleb128 0x19
	.long	.LASF290
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.long	.LASF291
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.long	.LASF292
	.uleb128 0x4
	.long	0x109e
	.uleb128 0xc
	.long	.LASF293
	.byte	0x2c
	.byte	0x32
	.byte	0x1b
	.long	0x10b6
	.uleb128 0x21
	.long	.LASF294
	.uleb128 0x9
	.long	.LASF295
	.byte	0x9c
	.byte	0x2d
	.byte	0x45
	.byte	0x8
	.long	0x111c
	.uleb128 0xb
	.string	"A"
	.byte	0x2d
	.byte	0x47
	.byte	0xc
	.long	0xb07
	.byte	0
	.uleb128 0xb
	.string	"B"
	.byte	0x2d
	.byte	0x48
	.byte	0xc
	.long	0xb07
	.byte	0x4
	.uleb128 0xb
	.string	"C"
	.byte	0x2d
	.byte	0x49
	.byte	0xc
	.long	0xb07
	.byte	0x8
	.uleb128 0xb
	.string	"D"
	.byte	0x2d
	.byte	0x4a
	.byte	0xc
	.long	0xb07
	.byte	0xc
	.uleb128 0xa
	.long	.LASF296
	.byte	0x2d
	.byte	0x4c
	.byte	0xc
	.long	0x111c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF297
	.byte	0x2d
	.byte	0x4d
	.byte	0xc
	.long	0xb07
	.byte	0x18
	.uleb128 0xa
	.long	.LASF298
	.byte	0x2d
	.byte	0x4e
	.byte	0xc
	.long	0x112c
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.long	0xb07
	.long	0x112c
	.uleb128 0xe
	.long	0xfc
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.long	0xb07
	.long	0x113c
	.uleb128 0xe
	.long	0xfc
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.long	.LASF299
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2e
	.byte	0x20
	.byte	0x6
	.long	0x1161
	.uleb128 0x19
	.long	.LASF300
	.byte	0
	.uleb128 0x19
	.long	.LASF301
	.byte	0x1
	.uleb128 0x19
	.long	.LASF302
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF303
	.byte	0x10
	.byte	0x2f
	.byte	0xa7
	.byte	0x8
	.long	0x1196
	.uleb128 0xa
	.long	.LASF304
	.byte	0x2f
	.byte	0xa9
	.byte	0x9
	.long	0x39
	.byte	0
	.uleb128 0xa
	.long	.LASF305
	.byte	0x2f
	.byte	0xaa
	.byte	0x1a
	.long	0x1196
	.byte	0x8
	.uleb128 0xa
	.long	.LASF306
	.byte	0x2f
	.byte	0xab
	.byte	0x8
	.long	0x119c
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1161
	.uleb128 0xd
	.long	0x49
	.long	0x11ab
	.uleb128 0x25
	.long	0xfc
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0x2f
	.byte	0xb5
	.byte	0x3
	.long	0x11c9
	.uleb128 0x1b
	.string	"i"
	.byte	0x2f
	.byte	0xb7
	.byte	0x15
	.long	0x202
	.uleb128 0x1b
	.string	"p"
	.byte	0x2f
	.byte	0xb8
	.byte	0xb
	.long	0x1d0
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0x2f
	.byte	0xbd
	.byte	0x3
	.long	0x11eb
	.uleb128 0x13
	.long	.LASF307
	.byte	0x2f
	.byte	0xbf
	.byte	0xd
	.long	0x11fa
	.uleb128 0x13
	.long	.LASF308
	.byte	0x2f
	.byte	0xc0
	.byte	0xd
	.long	0x1214
	.byte	0
	.uleb128 0x26
	.long	0x1d0
	.long	0x11fa
	.uleb128 0x16
	.long	0x202
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11eb
	.uleb128 0x26
	.long	0x1d0
	.long	0x1214
	.uleb128 0x16
	.long	0x1d0
	.uleb128 0x16
	.long	0x202
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1200
	.uleb128 0x12
	.byte	0x8
	.byte	0x2f
	.byte	0xc2
	.byte	0x3
	.long	0x123c
	.uleb128 0x13
	.long	.LASF307
	.byte	0x2f
	.byte	0xc4
	.byte	0xc
	.long	0x583
	.uleb128 0x13
	.long	.LASF308
	.byte	0x2f
	.byte	0xc5
	.byte	0xc
	.long	0x124c
	.byte	0
	.uleb128 0x15
	.long	0x124c
	.uleb128 0x16
	.long	0x1d0
	.uleb128 0x16
	.long	0x1d0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123c
	.uleb128 0x9
	.long	.LASF309
	.byte	0x58
	.byte	0x2f
	.byte	0xae
	.byte	0x8
	.long	0x1312
	.uleb128 0xa
	.long	.LASF310
	.byte	0x2f
	.byte	0xb0
	.byte	0x11
	.long	0x202
	.byte	0
	.uleb128 0xa
	.long	.LASF311
	.byte	0x2f
	.byte	0xb1
	.byte	0x1a
	.long	0x1196
	.byte	0x8
	.uleb128 0xa
	.long	.LASF312
	.byte	0x2f
	.byte	0xb2
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0xa
	.long	.LASF313
	.byte	0x2f
	.byte	0xb3
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0xa
	.long	.LASF314
	.byte	0x2f
	.byte	0xb4
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0xa
	.long	.LASF315
	.byte	0x2f
	.byte	0xb9
	.byte	0x5
	.long	0x11ab
	.byte	0x28
	.uleb128 0xa
	.long	.LASF316
	.byte	0x2f
	.byte	0xba
	.byte	0x13
	.long	0x202
	.byte	0x30
	.uleb128 0xa
	.long	.LASF317
	.byte	0x2f
	.byte	0xc1
	.byte	0x5
	.long	0x11c9
	.byte	0x38
	.uleb128 0xa
	.long	.LASF318
	.byte	0x2f
	.byte	0xc6
	.byte	0x5
	.long	0x121a
	.byte	0x40
	.uleb128 0xa
	.long	.LASF319
	.byte	0x2f
	.byte	0xc8
	.byte	0x9
	.long	0x1d0
	.byte	0x48
	.uleb128 0x27
	.long	.LASF320
	.byte	0x2f
	.byte	0xc9
	.byte	0xc
	.long	0xf5
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x27
	.long	.LASF321
	.byte	0x2f
	.byte	0xca
	.byte	0xc
	.long	0xf5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x27
	.long	.LASF322
	.byte	0x2f
	.byte	0xce
	.byte	0xc
	.long	0xf5
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF323
	.byte	0x2f
	.byte	0xe6
	.byte	0x26
	.long	0x131e
	.uleb128 0x3
	.byte	0x8
	.long	0x9a4
	.uleb128 0x2
	.long	.LASF324
	.byte	0x2f
	.byte	0xe9
	.byte	0xc
	.long	0x61
	.uleb128 0x28
	.long	.LASF325
	.value	0x120
	.byte	0x30
	.byte	0x1c
	.byte	0x8
	.long	0x138d
	.uleb128 0xa
	.long	.LASF326
	.byte	0x30
	.byte	0x1e
	.byte	0xa
	.long	0x202
	.byte	0
	.uleb128 0xb
	.string	"tok"
	.byte	0x30
	.byte	0x1f
	.byte	0xa
	.long	0xacc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF327
	.byte	0x30
	.byte	0x20
	.byte	0xb
	.long	0x138d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF328
	.byte	0x30
	.byte	0x21
	.byte	0x12
	.long	0x1252
	.byte	0x18
	.uleb128 0xa
	.long	.LASF329
	.byte	0x30
	.byte	0x22
	.byte	0x12
	.long	0x1252
	.byte	0x70
	.uleb128 0xa
	.long	.LASF330
	.byte	0x30
	.byte	0x23
	.byte	0x12
	.long	0x1252
	.byte	0xc8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x202
	.uleb128 0x18
	.long	.LASF331
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x31
	.byte	0x19
	.byte	0x6
	.long	0x13c4
	.uleb128 0x19
	.long	.LASF332
	.byte	0
	.uleb128 0x19
	.long	.LASF333
	.byte	0x1
	.uleb128 0x19
	.long	.LASF334
	.byte	0x2
	.uleb128 0x19
	.long	.LASF335
	.byte	0x3
	.uleb128 0x19
	.long	.LASF336
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x32
	.byte	0x2a
	.byte	0x1
	.long	0x2042
	.uleb128 0x1e
	.long	.LASF337
	.long	0x20000
	.uleb128 0x1e
	.long	.LASF338
	.long	0x20001
	.uleb128 0x1e
	.long	.LASF339
	.long	0x20002
	.uleb128 0x1e
	.long	.LASF340
	.long	0x20003
	.uleb128 0x1e
	.long	.LASF341
	.long	0x20004
	.uleb128 0x1e
	.long	.LASF342
	.long	0x20005
	.uleb128 0x1e
	.long	.LASF343
	.long	0x20006
	.uleb128 0x1e
	.long	.LASF344
	.long	0x20007
	.uleb128 0x1e
	.long	.LASF345
	.long	0x20008
	.uleb128 0x1e
	.long	.LASF346
	.long	0x20009
	.uleb128 0x1e
	.long	.LASF347
	.long	0x2000a
	.uleb128 0x1e
	.long	.LASF348
	.long	0x2000b
	.uleb128 0x1e
	.long	.LASF349
	.long	0x2000c
	.uleb128 0x1e
	.long	.LASF350
	.long	0x2000d
	.uleb128 0x1e
	.long	.LASF351
	.long	0x2000e
	.uleb128 0x1e
	.long	.LASF352
	.long	0x2000f
	.uleb128 0x1e
	.long	.LASF353
	.long	0x20010
	.uleb128 0x1e
	.long	.LASF354
	.long	0x20011
	.uleb128 0x1e
	.long	.LASF355
	.long	0x20012
	.uleb128 0x1e
	.long	.LASF356
	.long	0x20013
	.uleb128 0x1e
	.long	.LASF357
	.long	0x20014
	.uleb128 0x1e
	.long	.LASF358
	.long	0x20015
	.uleb128 0x1e
	.long	.LASF359
	.long	0x20016
	.uleb128 0x1e
	.long	.LASF360
	.long	0x20017
	.uleb128 0x1e
	.long	.LASF361
	.long	0x20018
	.uleb128 0x1e
	.long	.LASF362
	.long	0x20019
	.uleb128 0x1e
	.long	.LASF363
	.long	0x2001a
	.uleb128 0x1e
	.long	.LASF364
	.long	0x2001b
	.uleb128 0x1e
	.long	.LASF365
	.long	0x2001c
	.uleb128 0x1e
	.long	.LASF366
	.long	0x2001d
	.uleb128 0x1e
	.long	.LASF367
	.long	0x2001e
	.uleb128 0x1e
	.long	.LASF368
	.long	0x2001f
	.uleb128 0x1e
	.long	.LASF369
	.long	0x20020
	.uleb128 0x1e
	.long	.LASF370
	.long	0x20021
	.uleb128 0x1e
	.long	.LASF371
	.long	0x20022
	.uleb128 0x1e
	.long	.LASF372
	.long	0x20023
	.uleb128 0x1e
	.long	.LASF373
	.long	0x20024
	.uleb128 0x1e
	.long	.LASF374
	.long	0x20025
	.uleb128 0x1e
	.long	.LASF375
	.long	0x20026
	.uleb128 0x1e
	.long	.LASF376
	.long	0x20027
	.uleb128 0x1e
	.long	.LASF377
	.long	0x20028
	.uleb128 0x1e
	.long	.LASF378
	.long	0x20029
	.uleb128 0x1e
	.long	.LASF379
	.long	0x2002a
	.uleb128 0x1e
	.long	.LASF380
	.long	0x2002b
	.uleb128 0x29
	.string	"ERA"
	.long	0x2002c
	.uleb128 0x1e
	.long	.LASF381
	.long	0x2002d
	.uleb128 0x1e
	.long	.LASF382
	.long	0x2002e
	.uleb128 0x1e
	.long	.LASF383
	.long	0x2002f
	.uleb128 0x1e
	.long	.LASF384
	.long	0x20030
	.uleb128 0x1e
	.long	.LASF385
	.long	0x20031
	.uleb128 0x1e
	.long	.LASF386
	.long	0x20032
	.uleb128 0x1e
	.long	.LASF387
	.long	0x20033
	.uleb128 0x1e
	.long	.LASF388
	.long	0x20034
	.uleb128 0x1e
	.long	.LASF389
	.long	0x20035
	.uleb128 0x1e
	.long	.LASF390
	.long	0x20036
	.uleb128 0x1e
	.long	.LASF391
	.long	0x20037
	.uleb128 0x1e
	.long	.LASF392
	.long	0x20038
	.uleb128 0x1e
	.long	.LASF393
	.long	0x20039
	.uleb128 0x1e
	.long	.LASF394
	.long	0x2003a
	.uleb128 0x1e
	.long	.LASF395
	.long	0x2003b
	.uleb128 0x1e
	.long	.LASF396
	.long	0x2003c
	.uleb128 0x1e
	.long	.LASF397
	.long	0x2003d
	.uleb128 0x1e
	.long	.LASF398
	.long	0x2003e
	.uleb128 0x1e
	.long	.LASF399
	.long	0x2003f
	.uleb128 0x1e
	.long	.LASF400
	.long	0x20040
	.uleb128 0x1e
	.long	.LASF401
	.long	0x20041
	.uleb128 0x1e
	.long	.LASF402
	.long	0x20042
	.uleb128 0x1e
	.long	.LASF403
	.long	0x20043
	.uleb128 0x1e
	.long	.LASF404
	.long	0x20044
	.uleb128 0x1e
	.long	.LASF405
	.long	0x20045
	.uleb128 0x1e
	.long	.LASF406
	.long	0x20046
	.uleb128 0x1e
	.long	.LASF407
	.long	0x20047
	.uleb128 0x1e
	.long	.LASF408
	.long	0x20048
	.uleb128 0x1e
	.long	.LASF409
	.long	0x20049
	.uleb128 0x1e
	.long	.LASF410
	.long	0x2004a
	.uleb128 0x1e
	.long	.LASF411
	.long	0x2004b
	.uleb128 0x1e
	.long	.LASF412
	.long	0x2004c
	.uleb128 0x1e
	.long	.LASF413
	.long	0x2004d
	.uleb128 0x1e
	.long	.LASF414
	.long	0x2004e
	.uleb128 0x1e
	.long	.LASF415
	.long	0x2004f
	.uleb128 0x1e
	.long	.LASF416
	.long	0x20050
	.uleb128 0x1e
	.long	.LASF417
	.long	0x20051
	.uleb128 0x1e
	.long	.LASF418
	.long	0x20052
	.uleb128 0x1e
	.long	.LASF419
	.long	0x20053
	.uleb128 0x1e
	.long	.LASF420
	.long	0x20054
	.uleb128 0x1e
	.long	.LASF421
	.long	0x20055
	.uleb128 0x1e
	.long	.LASF422
	.long	0x20056
	.uleb128 0x1e
	.long	.LASF423
	.long	0x20057
	.uleb128 0x1e
	.long	.LASF424
	.long	0x20058
	.uleb128 0x1e
	.long	.LASF425
	.long	0x20059
	.uleb128 0x1e
	.long	.LASF426
	.long	0x2005a
	.uleb128 0x1e
	.long	.LASF427
	.long	0x2005b
	.uleb128 0x1e
	.long	.LASF428
	.long	0x2005c
	.uleb128 0x1e
	.long	.LASF429
	.long	0x2005d
	.uleb128 0x1e
	.long	.LASF430
	.long	0x2005e
	.uleb128 0x1e
	.long	.LASF431
	.long	0x2005f
	.uleb128 0x1e
	.long	.LASF432
	.long	0x20060
	.uleb128 0x1e
	.long	.LASF433
	.long	0x20061
	.uleb128 0x1e
	.long	.LASF434
	.long	0x20062
	.uleb128 0x1e
	.long	.LASF435
	.long	0x20063
	.uleb128 0x1e
	.long	.LASF436
	.long	0x20064
	.uleb128 0x1e
	.long	.LASF437
	.long	0x20065
	.uleb128 0x1e
	.long	.LASF438
	.long	0x20066
	.uleb128 0x1e
	.long	.LASF439
	.long	0x20067
	.uleb128 0x1e
	.long	.LASF440
	.long	0x20068
	.uleb128 0x1e
	.long	.LASF441
	.long	0x20069
	.uleb128 0x1e
	.long	.LASF442
	.long	0x2006a
	.uleb128 0x1e
	.long	.LASF443
	.long	0x2006b
	.uleb128 0x1e
	.long	.LASF444
	.long	0x2006c
	.uleb128 0x1e
	.long	.LASF445
	.long	0x2006d
	.uleb128 0x1e
	.long	.LASF446
	.long	0x2006e
	.uleb128 0x1e
	.long	.LASF447
	.long	0x2006f
	.uleb128 0x1e
	.long	.LASF448
	.long	0x20070
	.uleb128 0x1e
	.long	.LASF449
	.long	0x20071
	.uleb128 0x1e
	.long	.LASF450
	.long	0x20072
	.uleb128 0x1e
	.long	.LASF451
	.long	0x20073
	.uleb128 0x1e
	.long	.LASF452
	.long	0x20074
	.uleb128 0x1e
	.long	.LASF453
	.long	0x20075
	.uleb128 0x1e
	.long	.LASF454
	.long	0x20076
	.uleb128 0x1e
	.long	.LASF455
	.long	0x20077
	.uleb128 0x1e
	.long	.LASF456
	.long	0x20078
	.uleb128 0x1e
	.long	.LASF457
	.long	0x20079
	.uleb128 0x1e
	.long	.LASF458
	.long	0x2007a
	.uleb128 0x1e
	.long	.LASF459
	.long	0x2007b
	.uleb128 0x1e
	.long	.LASF460
	.long	0x2007c
	.uleb128 0x1e
	.long	.LASF461
	.long	0x2007d
	.uleb128 0x1e
	.long	.LASF462
	.long	0x2007e
	.uleb128 0x1e
	.long	.LASF463
	.long	0x2007f
	.uleb128 0x1e
	.long	.LASF464
	.long	0x20080
	.uleb128 0x1e
	.long	.LASF465
	.long	0x20081
	.uleb128 0x1e
	.long	.LASF466
	.long	0x20082
	.uleb128 0x1e
	.long	.LASF467
	.long	0x20083
	.uleb128 0x1e
	.long	.LASF468
	.long	0x20084
	.uleb128 0x1e
	.long	.LASF469
	.long	0x20085
	.uleb128 0x1e
	.long	.LASF470
	.long	0x20086
	.uleb128 0x1e
	.long	.LASF471
	.long	0x20087
	.uleb128 0x1e
	.long	.LASF472
	.long	0x20088
	.uleb128 0x1e
	.long	.LASF473
	.long	0x20089
	.uleb128 0x1e
	.long	.LASF474
	.long	0x2008a
	.uleb128 0x1e
	.long	.LASF475
	.long	0x2008b
	.uleb128 0x1e
	.long	.LASF476
	.long	0x2008c
	.uleb128 0x1e
	.long	.LASF477
	.long	0x2008d
	.uleb128 0x1e
	.long	.LASF478
	.long	0x2008e
	.uleb128 0x1e
	.long	.LASF479
	.long	0x2008f
	.uleb128 0x1e
	.long	.LASF480
	.long	0x20090
	.uleb128 0x1e
	.long	.LASF481
	.long	0x20091
	.uleb128 0x1e
	.long	.LASF482
	.long	0x20092
	.uleb128 0x1e
	.long	.LASF483
	.long	0x20093
	.uleb128 0x1e
	.long	.LASF484
	.long	0x20094
	.uleb128 0x1e
	.long	.LASF485
	.long	0x20095
	.uleb128 0x1e
	.long	.LASF486
	.long	0x20096
	.uleb128 0x1e
	.long	.LASF487
	.long	0x20097
	.uleb128 0x1e
	.long	.LASF488
	.long	0x20098
	.uleb128 0x1e
	.long	.LASF489
	.long	0x20099
	.uleb128 0x1e
	.long	.LASF490
	.long	0x2009a
	.uleb128 0x1e
	.long	.LASF491
	.long	0x2009b
	.uleb128 0x1e
	.long	.LASF492
	.long	0x2009c
	.uleb128 0x1e
	.long	.LASF493
	.long	0x2009d
	.uleb128 0x1e
	.long	.LASF494
	.long	0x2009e
	.uleb128 0x1e
	.long	.LASF495
	.long	0x2009f
	.uleb128 0x1e
	.long	.LASF496
	.long	0x30000
	.uleb128 0x1e
	.long	.LASF497
	.long	0x30001
	.uleb128 0x1e
	.long	.LASF498
	.long	0x30002
	.uleb128 0x1e
	.long	.LASF499
	.long	0x30003
	.uleb128 0x1e
	.long	.LASF500
	.long	0x30004
	.uleb128 0x1e
	.long	.LASF501
	.long	0x30005
	.uleb128 0x1e
	.long	.LASF502
	.long	0x30006
	.uleb128 0x1e
	.long	.LASF503
	.long	0x30007
	.uleb128 0x1e
	.long	.LASF504
	.long	0x30008
	.uleb128 0x1e
	.long	.LASF505
	.long	0x30009
	.uleb128 0x1e
	.long	.LASF506
	.long	0x3000a
	.uleb128 0x1e
	.long	.LASF507
	.long	0x3000b
	.uleb128 0x1e
	.long	.LASF508
	.long	0x3000c
	.uleb128 0x1e
	.long	.LASF509
	.long	0x3000d
	.uleb128 0x1e
	.long	.LASF510
	.long	0x3000e
	.uleb128 0x1e
	.long	.LASF511
	.long	0x3000f
	.uleb128 0x1e
	.long	.LASF512
	.long	0x30010
	.uleb128 0x1e
	.long	.LASF513
	.long	0x30011
	.uleb128 0x1e
	.long	.LASF514
	.long	0x30012
	.uleb128 0x1e
	.long	.LASF515
	.long	0x30013
	.uleb128 0x19
	.long	.LASF516
	.byte	0
	.uleb128 0x19
	.long	.LASF517
	.byte	0x1
	.uleb128 0x19
	.long	.LASF518
	.byte	0x2
	.uleb128 0x19
	.long	.LASF519
	.byte	0x3
	.uleb128 0x19
	.long	.LASF520
	.byte	0x4
	.uleb128 0x19
	.long	.LASF521
	.byte	0x5
	.uleb128 0x19
	.long	.LASF522
	.byte	0x6
	.uleb128 0x19
	.long	.LASF523
	.byte	0x7
	.uleb128 0x19
	.long	.LASF524
	.byte	0x8
	.uleb128 0x19
	.long	.LASF525
	.byte	0x9
	.uleb128 0x19
	.long	.LASF526
	.byte	0xa
	.uleb128 0x19
	.long	.LASF527
	.byte	0xb
	.uleb128 0x19
	.long	.LASF528
	.byte	0xc
	.uleb128 0x19
	.long	.LASF529
	.byte	0xd
	.uleb128 0x19
	.long	.LASF530
	.byte	0xe
	.uleb128 0x19
	.long	.LASF531
	.byte	0xe
	.uleb128 0x19
	.long	.LASF532
	.byte	0xf
	.uleb128 0x19
	.long	.LASF533
	.byte	0x10
	.uleb128 0x19
	.long	.LASF534
	.byte	0x11
	.uleb128 0x19
	.long	.LASF535
	.byte	0x12
	.uleb128 0x19
	.long	.LASF536
	.byte	0x13
	.uleb128 0x19
	.long	.LASF537
	.byte	0x14
	.uleb128 0x19
	.long	.LASF538
	.byte	0x15
	.uleb128 0x19
	.long	.LASF539
	.byte	0x16
	.uleb128 0x19
	.long	.LASF540
	.byte	0x17
	.uleb128 0x19
	.long	.LASF541
	.byte	0x18
	.uleb128 0x19
	.long	.LASF542
	.byte	0x19
	.uleb128 0x19
	.long	.LASF543
	.byte	0x1a
	.uleb128 0x19
	.long	.LASF544
	.byte	0x1b
	.uleb128 0x19
	.long	.LASF545
	.byte	0x1c
	.uleb128 0x19
	.long	.LASF546
	.byte	0x1d
	.uleb128 0x19
	.long	.LASF547
	.byte	0x1e
	.uleb128 0x19
	.long	.LASF548
	.byte	0x1f
	.uleb128 0x19
	.long	.LASF549
	.byte	0x20
	.uleb128 0x19
	.long	.LASF550
	.byte	0x21
	.uleb128 0x19
	.long	.LASF551
	.byte	0x22
	.uleb128 0x19
	.long	.LASF552
	.byte	0x23
	.uleb128 0x19
	.long	.LASF553
	.byte	0x24
	.uleb128 0x19
	.long	.LASF554
	.byte	0x25
	.uleb128 0x19
	.long	.LASF555
	.byte	0x26
	.uleb128 0x19
	.long	.LASF556
	.byte	0x27
	.uleb128 0x19
	.long	.LASF557
	.byte	0x28
	.uleb128 0x19
	.long	.LASF558
	.byte	0x29
	.uleb128 0x19
	.long	.LASF559
	.byte	0x2a
	.uleb128 0x19
	.long	.LASF560
	.byte	0x2b
	.uleb128 0x19
	.long	.LASF561
	.byte	0x2c
	.uleb128 0x19
	.long	.LASF562
	.byte	0x2d
	.uleb128 0x19
	.long	.LASF563
	.byte	0x2e
	.uleb128 0x19
	.long	.LASF564
	.byte	0x2f
	.uleb128 0x19
	.long	.LASF565
	.byte	0x30
	.uleb128 0x19
	.long	.LASF566
	.byte	0x31
	.uleb128 0x19
	.long	.LASF567
	.byte	0x32
	.uleb128 0x19
	.long	.LASF568
	.byte	0x33
	.uleb128 0x19
	.long	.LASF569
	.byte	0x34
	.uleb128 0x19
	.long	.LASF570
	.byte	0x35
	.uleb128 0x19
	.long	.LASF571
	.byte	0x36
	.uleb128 0x19
	.long	.LASF572
	.byte	0x37
	.uleb128 0x19
	.long	.LASF573
	.byte	0x38
	.uleb128 0x19
	.long	.LASF574
	.byte	0x39
	.uleb128 0x19
	.long	.LASF575
	.byte	0x3a
	.uleb128 0x19
	.long	.LASF576
	.byte	0x3b
	.uleb128 0x19
	.long	.LASF577
	.byte	0x3c
	.uleb128 0x19
	.long	.LASF578
	.byte	0x3d
	.uleb128 0x19
	.long	.LASF579
	.byte	0x3e
	.uleb128 0x19
	.long	.LASF580
	.byte	0x3f
	.uleb128 0x19
	.long	.LASF581
	.byte	0x40
	.uleb128 0x19
	.long	.LASF582
	.byte	0x41
	.uleb128 0x19
	.long	.LASF583
	.byte	0x42
	.uleb128 0x19
	.long	.LASF584
	.byte	0x43
	.uleb128 0x19
	.long	.LASF585
	.byte	0x44
	.uleb128 0x19
	.long	.LASF586
	.byte	0x45
	.uleb128 0x19
	.long	.LASF587
	.byte	0x46
	.uleb128 0x19
	.long	.LASF588
	.byte	0x47
	.uleb128 0x19
	.long	.LASF589
	.byte	0x48
	.uleb128 0x19
	.long	.LASF590
	.byte	0x49
	.uleb128 0x19
	.long	.LASF591
	.byte	0x4a
	.uleb128 0x19
	.long	.LASF592
	.byte	0x4b
	.uleb128 0x19
	.long	.LASF593
	.byte	0x4c
	.uleb128 0x19
	.long	.LASF594
	.byte	0x4d
	.uleb128 0x19
	.long	.LASF595
	.byte	0x4e
	.uleb128 0x19
	.long	.LASF596
	.byte	0x4f
	.uleb128 0x19
	.long	.LASF597
	.byte	0x50
	.uleb128 0x19
	.long	.LASF598
	.byte	0x51
	.uleb128 0x19
	.long	.LASF599
	.byte	0x52
	.uleb128 0x19
	.long	.LASF600
	.byte	0x53
	.uleb128 0x19
	.long	.LASF601
	.byte	0x54
	.uleb128 0x19
	.long	.LASF602
	.byte	0x55
	.uleb128 0x19
	.long	.LASF603
	.byte	0x56
	.uleb128 0x1e
	.long	.LASF604
	.long	0x40000
	.uleb128 0x1e
	.long	.LASF605
	.long	0x40001
	.uleb128 0x1e
	.long	.LASF606
	.long	0x40002
	.uleb128 0x1e
	.long	.LASF607
	.long	0x40003
	.uleb128 0x1e
	.long	.LASF608
	.long	0x40004
	.uleb128 0x1e
	.long	.LASF609
	.long	0x40005
	.uleb128 0x1e
	.long	.LASF610
	.long	0x40006
	.uleb128 0x1e
	.long	.LASF611
	.long	0x40007
	.uleb128 0x1e
	.long	.LASF612
	.long	0x40008
	.uleb128 0x1e
	.long	.LASF613
	.long	0x40009
	.uleb128 0x1e
	.long	.LASF614
	.long	0x4000a
	.uleb128 0x1e
	.long	.LASF615
	.long	0x4000b
	.uleb128 0x1e
	.long	.LASF616
	.long	0x4000c
	.uleb128 0x1e
	.long	.LASF617
	.long	0x4000d
	.uleb128 0x1e
	.long	.LASF618
	.long	0x4000e
	.uleb128 0x1e
	.long	.LASF619
	.long	0x4000f
	.uleb128 0x1e
	.long	.LASF620
	.long	0x40010
	.uleb128 0x1e
	.long	.LASF621
	.long	0x40011
	.uleb128 0x1e
	.long	.LASF622
	.long	0x40012
	.uleb128 0x1e
	.long	.LASF623
	.long	0x40013
	.uleb128 0x1e
	.long	.LASF624
	.long	0x40014
	.uleb128 0x1e
	.long	.LASF625
	.long	0x40015
	.uleb128 0x1e
	.long	.LASF626
	.long	0x40016
	.uleb128 0x1e
	.long	.LASF627
	.long	0x40017
	.uleb128 0x1e
	.long	.LASF628
	.long	0x40018
	.uleb128 0x1e
	.long	.LASF629
	.long	0x40019
	.uleb128 0x1e
	.long	.LASF630
	.long	0x4001a
	.uleb128 0x1e
	.long	.LASF631
	.long	0x4001b
	.uleb128 0x1e
	.long	.LASF632
	.long	0x4001c
	.uleb128 0x1e
	.long	.LASF633
	.long	0x4001d
	.uleb128 0x1e
	.long	.LASF634
	.long	0x4001e
	.uleb128 0x1e
	.long	.LASF635
	.long	0x4001f
	.uleb128 0x1e
	.long	.LASF636
	.long	0x40020
	.uleb128 0x1e
	.long	.LASF637
	.long	0x40021
	.uleb128 0x1e
	.long	.LASF638
	.long	0x40022
	.uleb128 0x1e
	.long	.LASF639
	.long	0x40023
	.uleb128 0x1e
	.long	.LASF640
	.long	0x40024
	.uleb128 0x1e
	.long	.LASF641
	.long	0x40025
	.uleb128 0x1e
	.long	.LASF642
	.long	0x40026
	.uleb128 0x1e
	.long	.LASF643
	.long	0x40027
	.uleb128 0x1e
	.long	.LASF644
	.long	0x40028
	.uleb128 0x1e
	.long	.LASF645
	.long	0x40029
	.uleb128 0x1e
	.long	.LASF646
	.long	0x4002a
	.uleb128 0x1e
	.long	.LASF647
	.long	0x4002b
	.uleb128 0x1e
	.long	.LASF648
	.long	0x4002c
	.uleb128 0x1e
	.long	.LASF649
	.long	0x4002d
	.uleb128 0x1e
	.long	.LASF650
	.long	0x4002e
	.uleb128 0x1e
	.long	.LASF651
	.long	0x10000
	.uleb128 0x1e
	.long	.LASF652
	.long	0x10000
	.uleb128 0x1e
	.long	.LASF653
	.long	0x10001
	.uleb128 0x1e
	.long	.LASF654
	.long	0x10001
	.uleb128 0x1e
	.long	.LASF655
	.long	0x10002
	.uleb128 0x1e
	.long	.LASF656
	.long	0x10003
	.uleb128 0x1e
	.long	.LASF657
	.long	0x10004
	.uleb128 0x1e
	.long	.LASF658
	.long	0x10005
	.uleb128 0x1e
	.long	.LASF659
	.long	0x10006
	.uleb128 0x1e
	.long	.LASF660
	.long	0x50000
	.uleb128 0x1e
	.long	.LASF661
	.long	0x50001
	.uleb128 0x1e
	.long	.LASF662
	.long	0x50002
	.uleb128 0x1e
	.long	.LASF663
	.long	0x50003
	.uleb128 0x1e
	.long	.LASF664
	.long	0x50004
	.uleb128 0x1e
	.long	.LASF665
	.long	0x50005
	.uleb128 0x1e
	.long	.LASF666
	.long	0x70000
	.uleb128 0x1e
	.long	.LASF667
	.long	0x70001
	.uleb128 0x1e
	.long	.LASF668
	.long	0x70002
	.uleb128 0x1e
	.long	.LASF669
	.long	0x70003
	.uleb128 0x1e
	.long	.LASF670
	.long	0x80000
	.uleb128 0x1e
	.long	.LASF671
	.long	0x80001
	.uleb128 0x1e
	.long	.LASF672
	.long	0x80002
	.uleb128 0x1e
	.long	.LASF673
	.long	0x80003
	.uleb128 0x1e
	.long	.LASF674
	.long	0x80004
	.uleb128 0x1e
	.long	.LASF675
	.long	0x80005
	.uleb128 0x1e
	.long	.LASF676
	.long	0x80006
	.uleb128 0x1e
	.long	.LASF677
	.long	0x80007
	.uleb128 0x1e
	.long	.LASF678
	.long	0x90000
	.uleb128 0x1e
	.long	.LASF679
	.long	0x90001
	.uleb128 0x1e
	.long	.LASF680
	.long	0x90002
	.uleb128 0x1e
	.long	.LASF681
	.long	0x90003
	.uleb128 0x1e
	.long	.LASF682
	.long	0x90004
	.uleb128 0x1e
	.long	.LASF683
	.long	0x90005
	.uleb128 0x1e
	.long	.LASF684
	.long	0x90006
	.uleb128 0x1e
	.long	.LASF685
	.long	0x90007
	.uleb128 0x1e
	.long	.LASF686
	.long	0x90008
	.uleb128 0x1e
	.long	.LASF687
	.long	0x90009
	.uleb128 0x1e
	.long	.LASF688
	.long	0x9000a
	.uleb128 0x1e
	.long	.LASF689
	.long	0x9000b
	.uleb128 0x1e
	.long	.LASF690
	.long	0x9000c
	.uleb128 0x1e
	.long	.LASF691
	.long	0x9000d
	.uleb128 0x1e
	.long	.LASF692
	.long	0xa0000
	.uleb128 0x1e
	.long	.LASF693
	.long	0xa0001
	.uleb128 0x1e
	.long	.LASF694
	.long	0xa0002
	.uleb128 0x1e
	.long	.LASF695
	.long	0xa0003
	.uleb128 0x1e
	.long	.LASF696
	.long	0xa0004
	.uleb128 0x1e
	.long	.LASF697
	.long	0xa0005
	.uleb128 0x1e
	.long	.LASF698
	.long	0xb0000
	.uleb128 0x1e
	.long	.LASF699
	.long	0xb0001
	.uleb128 0x1e
	.long	.LASF700
	.long	0xb0002
	.uleb128 0x1e
	.long	.LASF701
	.long	0xc0000
	.uleb128 0x1e
	.long	.LASF702
	.long	0xc0001
	.uleb128 0x1e
	.long	.LASF703
	.long	0xc0002
	.uleb128 0x1e
	.long	.LASF704
	.long	0xc0003
	.uleb128 0x1e
	.long	.LASF705
	.long	0xc0004
	.uleb128 0x1e
	.long	.LASF706
	.long	0xc0005
	.uleb128 0x1e
	.long	.LASF707
	.long	0xc0006
	.uleb128 0x1e
	.long	.LASF708
	.long	0xc0007
	.uleb128 0x1e
	.long	.LASF709
	.long	0xc0008
	.uleb128 0x1e
	.long	.LASF710
	.long	0xc0009
	.uleb128 0x1e
	.long	.LASF711
	.long	0xc000a
	.uleb128 0x1e
	.long	.LASF712
	.long	0xc000b
	.uleb128 0x1e
	.long	.LASF713
	.long	0xc000c
	.uleb128 0x1e
	.long	.LASF714
	.long	0xc000d
	.uleb128 0x1e
	.long	.LASF715
	.long	0xc000e
	.uleb128 0x1e
	.long	.LASF716
	.long	0xc000f
	.uleb128 0x1e
	.long	.LASF717
	.long	0xc0010
	.uleb128 0x1e
	.long	.LASF718
	.long	0xc0011
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.byte	0x70
	.byte	0x6
	.long	0x205a
	.uleb128 0x1e
	.long	.LASF719
	.long	0x20000
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.byte	0x75
	.byte	0x6
	.long	0x206f
	.uleb128 0x19
	.long	.LASF720
	.byte	0x8
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.byte	0x79
	.byte	0x3
	.long	0x208a
	.uleb128 0x19
	.long	.LASF721
	.byte	0x1
	.uleb128 0x19
	.long	.LASF722
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.byte	0x84
	.byte	0x3
	.long	0x20a5
	.uleb128 0x19
	.long	.LASF723
	.byte	0x4
	.uleb128 0x19
	.long	.LASF724
	.byte	0x9
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.byte	0x92
	.byte	0x3
	.long	0x20c0
	.uleb128 0x19
	.long	.LASF725
	.byte	0
	.uleb128 0x19
	.long	.LASF726
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.long	.LASF194
	.byte	0x2
	.byte	0x9b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	decimal_point
	.uleb128 0x2a
	.long	.LASF195
	.byte	0x2
	.byte	0x9e
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	thousands_sep
	.uleb128 0x2a
	.long	.LASF727
	.byte	0x2
	.byte	0xa1
	.byte	0xd
	.long	0x109e
	.uleb128 0x9
	.byte	0x3
	.quad	hard_LC_COLLATE
	.uleb128 0x2a
	.long	.LASF728
	.byte	0x2
	.byte	0xa3
	.byte	0xd
	.long	0x109e
	.uleb128 0x9
	.byte	0x3
	.quad	hard_LC_TIME
	.uleb128 0x18
	.long	.LASF729
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.byte	0xa9
	.byte	0x6
	.long	0x213d
	.uleb128 0x19
	.long	.LASF730
	.byte	0
	.uleb128 0x19
	.long	.LASF731
	.byte	0x1
	.uleb128 0x19
	.long	.LASF732
	.byte	0x2
	.byte	0
	.uleb128 0x2a
	.long	.LASF733
	.byte	0x2
	.byte	0xac
	.byte	0xd
	.long	0x49
	.uleb128 0x9
	.byte	0x3
	.quad	eolchar
	.uleb128 0x9
	.long	.LASF734
	.byte	0x20
	.byte	0x2
	.byte	0xaf
	.byte	0x8
	.long	0x2195
	.uleb128 0xa
	.long	.LASF735
	.byte	0x2
	.byte	0xb1
	.byte	0x9
	.long	0x39
	.byte	0
	.uleb128 0xa
	.long	.LASF736
	.byte	0x2
	.byte	0xb2
	.byte	0xa
	.long	0x202
	.byte	0x8
	.uleb128 0xa
	.long	.LASF737
	.byte	0x2
	.byte	0xb3
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0xa
	.long	.LASF738
	.byte	0x2
	.byte	0xb4
	.byte	0x9
	.long	0x39
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	0x2153
	.uleb128 0x9
	.long	.LASF298
	.byte	0x38
	.byte	0x2
	.byte	0xb8
	.byte	0x8
	.long	0x2203
	.uleb128 0xb
	.string	"buf"
	.byte	0x2
	.byte	0xba
	.byte	0x9
	.long	0x39
	.byte	0
	.uleb128 0xa
	.long	.LASF739
	.byte	0x2
	.byte	0xbf
	.byte	0xa
	.long	0x202
	.byte	0x8
	.uleb128 0xa
	.long	.LASF740
	.byte	0x2
	.byte	0xc0
	.byte	0xa
	.long	0x202
	.byte	0x10
	.uleb128 0xa
	.long	.LASF741
	.byte	0x2
	.byte	0xc1
	.byte	0xa
	.long	0x202
	.byte	0x18
	.uleb128 0xa
	.long	.LASF742
	.byte	0x2
	.byte	0xc2
	.byte	0xa
	.long	0x202
	.byte	0x20
	.uleb128 0xa
	.long	.LASF743
	.byte	0x2
	.byte	0xc3
	.byte	0xa
	.long	0x202
	.byte	0x28
	.uleb128 0xb
	.string	"eof"
	.byte	0x2
	.byte	0xc4
	.byte	0x8
	.long	0x109e
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.long	0x219a
	.uleb128 0x9
	.long	.LASF744
	.byte	0x48
	.byte	0x2
	.byte	0xc8
	.byte	0x8
	.long	0x22f3
	.uleb128 0xa
	.long	.LASF745
	.byte	0x2
	.byte	0xca
	.byte	0xa
	.long	0x202
	.byte	0
	.uleb128 0xa
	.long	.LASF746
	.byte	0x2
	.byte	0xcb
	.byte	0xa
	.long	0x202
	.byte	0x8
	.uleb128 0xa
	.long	.LASF747
	.byte	0x2
	.byte	0xcc
	.byte	0xa
	.long	0x202
	.byte	0x10
	.uleb128 0xa
	.long	.LASF748
	.byte	0x2
	.byte	0xcd
	.byte	0xa
	.long	0x202
	.byte	0x18
	.uleb128 0xa
	.long	.LASF749
	.byte	0x2
	.byte	0xce
	.byte	0xf
	.long	0x22f8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF750
	.byte	0x2
	.byte	0xcf
	.byte	0xf
	.long	0xd1
	.byte	0x28
	.uleb128 0xa
	.long	.LASF751
	.byte	0x2
	.byte	0xd0
	.byte	0x8
	.long	0x109e
	.byte	0x30
	.uleb128 0xa
	.long	.LASF752
	.byte	0x2
	.byte	0xd1
	.byte	0x8
	.long	0x109e
	.byte	0x31
	.uleb128 0xa
	.long	.LASF753
	.byte	0x2
	.byte	0xd2
	.byte	0x8
	.long	0x109e
	.byte	0x32
	.uleb128 0xa
	.long	.LASF754
	.byte	0x2
	.byte	0xd5
	.byte	0x8
	.long	0x109e
	.byte	0x33
	.uleb128 0xa
	.long	.LASF755
	.byte	0x2
	.byte	0xd6
	.byte	0x8
	.long	0x109e
	.byte	0x34
	.uleb128 0xa
	.long	.LASF756
	.byte	0x2
	.byte	0xd8
	.byte	0x8
	.long	0x109e
	.byte	0x35
	.uleb128 0xa
	.long	.LASF757
	.byte	0x2
	.byte	0xda
	.byte	0x8
	.long	0x109e
	.byte	0x36
	.uleb128 0xa
	.long	.LASF758
	.byte	0x2
	.byte	0xdb
	.byte	0x8
	.long	0x109e
	.byte	0x37
	.uleb128 0xa
	.long	.LASF759
	.byte	0x2
	.byte	0xdc
	.byte	0x8
	.long	0x109e
	.byte	0x38
	.uleb128 0xa
	.long	.LASF760
	.byte	0x2
	.byte	0xdd
	.byte	0x8
	.long	0x109e
	.byte	0x39
	.uleb128 0xa
	.long	.LASF761
	.byte	0x2
	.byte	0xde
	.byte	0x14
	.long	0x22fe
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.long	0x2208
	.uleb128 0x3
	.byte	0x8
	.long	0x10a5
	.uleb128 0x3
	.byte	0x8
	.long	0x2208
	.uleb128 0x9
	.long	.LASF757
	.byte	0x10
	.byte	0x2
	.byte	0xe1
	.byte	0x8
	.long	0x232c
	.uleb128 0xa
	.long	.LASF5
	.byte	0x2
	.byte	0xe3
	.byte	0xf
	.long	0xd1
	.byte	0
	.uleb128 0xb
	.string	"val"
	.byte	0x2
	.byte	0xe4
	.byte	0x7
	.long	0x61
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x2304
	.uleb128 0x9
	.long	.LASF762
	.byte	0x80
	.byte	0x2
	.byte	0xe8
	.byte	0x8
	.long	0x23e6
	.uleb128 0xb
	.string	"lo"
	.byte	0x2
	.byte	0xea
	.byte	0x10
	.long	0x23eb
	.byte	0
	.uleb128 0xb
	.string	"hi"
	.byte	0x2
	.byte	0xeb
	.byte	0x10
	.long	0x23eb
	.byte	0x8
	.uleb128 0xa
	.long	.LASF763
	.byte	0x2
	.byte	0xec
	.byte	0x10
	.long	0x23eb
	.byte	0x10
	.uleb128 0xa
	.long	.LASF764
	.byte	0x2
	.byte	0xed
	.byte	0x10
	.long	0x23eb
	.byte	0x18
	.uleb128 0xa
	.long	.LASF765
	.byte	0x2
	.byte	0xee
	.byte	0x11
	.long	0x23f6
	.byte	0x20
	.uleb128 0xb
	.string	"nlo"
	.byte	0x2
	.byte	0xef
	.byte	0xa
	.long	0x202
	.byte	0x28
	.uleb128 0xb
	.string	"nhi"
	.byte	0x2
	.byte	0xf0
	.byte	0xa
	.long	0x202
	.byte	0x30
	.uleb128 0xa
	.long	.LASF766
	.byte	0x2
	.byte	0xf1
	.byte	0x16
	.long	0x23fc
	.byte	0x38
	.uleb128 0xa
	.long	.LASF767
	.byte	0x2
	.byte	0xf2
	.byte	0x16
	.long	0x23fc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF768
	.byte	0x2
	.byte	0xf3
	.byte	0x16
	.long	0x23fc
	.byte	0x48
	.uleb128 0xa
	.long	.LASF769
	.byte	0x2
	.byte	0xf4
	.byte	0x10
	.long	0xf5
	.byte	0x50
	.uleb128 0xa
	.long	.LASF770
	.byte	0x2
	.byte	0xf5
	.byte	0x8
	.long	0x109e
	.byte	0x54
	.uleb128 0xa
	.long	.LASF771
	.byte	0x2
	.byte	0xf6
	.byte	0x13
	.long	0x4af
	.byte	0x58
	.byte	0
	.uleb128 0x4
	.long	0x2331
	.uleb128 0x3
	.byte	0x8
	.long	0x2153
	.uleb128 0x5
	.long	0x23eb
	.uleb128 0x3
	.byte	0x8
	.long	0x23eb
	.uleb128 0x3
	.byte	0x8
	.long	0x2331
	.uleb128 0x4
	.long	0x23fc
	.uleb128 0x5
	.long	0x23fc
	.uleb128 0x9
	.long	.LASF772
	.byte	0x60
	.byte	0x2
	.byte	0xfa
	.byte	0x8
	.long	0x2441
	.uleb128 0xa
	.long	.LASF773
	.byte	0x2
	.byte	0xfc
	.byte	0x10
	.long	0x2446
	.byte	0
	.uleb128 0xa
	.long	.LASF774
	.byte	0x2
	.byte	0xfd
	.byte	0x13
	.long	0x4af
	.byte	0x8
	.uleb128 0xa
	.long	.LASF775
	.byte	0x2
	.byte	0xfe
	.byte	0x12
	.long	0x500
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.long	.LASF776
	.uleb128 0x3
	.byte	0x8
	.long	0x2441
	.uleb128 0x2b
	.long	.LASF777
	.byte	0x2
	.value	0x103
	.byte	0x14
	.long	0x2153
	.uleb128 0x9
	.byte	0x3
	.quad	saved_line
	.uleb128 0xd
	.long	0x109e
	.long	0x2473
	.uleb128 0xe
	.long	0xfc
	.byte	0xff
	.byte	0
	.uleb128 0x2b
	.long	.LASF778
	.byte	0x2
	.value	0x10c
	.byte	0xd
	.long	0x2463
	.uleb128 0x9
	.byte	0x3
	.quad	blanks
	.uleb128 0x2b
	.long	.LASF779
	.byte	0x2
	.value	0x10f
	.byte	0xd
	.long	0x2463
	.uleb128 0x9
	.byte	0x3
	.quad	nonprinting
	.uleb128 0x2b
	.long	.LASF780
	.byte	0x2
	.value	0x112
	.byte	0xd
	.long	0x2463
	.uleb128 0x9
	.byte	0x3
	.quad	nondictionary
	.uleb128 0x2b
	.long	.LASF781
	.byte	0x2
	.value	0x115
	.byte	0xd
	.long	0xaf7
	.uleb128 0x9
	.byte	0x3
	.quad	fold_toupper
	.uleb128 0xd
	.long	0x2304
	.long	0x24df
	.uleb128 0xe
	.long	0xfc
	.byte	0xb
	.byte	0
	.uleb128 0x2b
	.long	.LASF782
	.byte	0x2
	.value	0x11b
	.byte	0x15
	.long	0x24cf
	.uleb128 0x9
	.byte	0x3
	.quad	monthtab
	.uleb128 0x2b
	.long	.LASF783
	.byte	0x2
	.value	0x137
	.byte	0xf
	.long	0x202
	.uleb128 0x9
	.byte	0x3
	.quad	merge_buffer_size
	.uleb128 0x2b
	.long	.LASF784
	.byte	0x2
	.value	0x13b
	.byte	0xf
	.long	0x202
	.uleb128 0x9
	.byte	0x3
	.quad	sort_size
	.uleb128 0x2b
	.long	.LASF785
	.byte	0x2
	.value	0x145
	.byte	0x15
	.long	0x253b
	.uleb128 0x9
	.byte	0x3
	.quad	temp_dirs
	.uleb128 0x3
	.byte	0x8
	.long	0xd1
	.uleb128 0x2b
	.long	.LASF786
	.byte	0x2
	.value	0x148
	.byte	0xf
	.long	0x202
	.uleb128 0x9
	.byte	0x3
	.quad	temp_dir_count
	.uleb128 0x2b
	.long	.LASF787
	.byte	0x2
	.value	0x14b
	.byte	0xf
	.long	0x202
	.uleb128 0x9
	.byte	0x3
	.quad	temp_dir_alloc
	.uleb128 0x2b
	.long	.LASF758
	.byte	0x2
	.value	0x14e
	.byte	0xd
	.long	0x109e
	.uleb128 0x9
	.byte	0x3
	.quad	reverse
	.uleb128 0x2b
	.long	.LASF788
	.byte	0x2
	.value	0x153
	.byte	0xd
	.long	0x109e
	.uleb128 0x9
	.byte	0x3
	.quad	stable
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.value	0x156
	.byte	0x6
	.long	0x25b3
	.uleb128 0x19
	.long	.LASF789
	.byte	0x80
	.byte	0
	.uleb128 0x2c
	.string	"tab"
	.byte	0x2
	.value	0x15b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	tab
	.uleb128 0x2b
	.long	.LASF790
	.byte	0x2
	.value	0x15f
	.byte	0xd
	.long	0x109e
	.uleb128 0x9
	.byte	0x3
	.quad	unique
	.uleb128 0x2b
	.long	.LASF791
	.byte	0x2
	.value	0x162
	.byte	0xd
	.long	0x109e
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x2b
	.long	.LASF792
	.byte	0x2
	.value	0x165
	.byte	0x19
	.long	0x22fe
	.uleb128 0x9
	.byte	0x3
	.quad	keylist
	.uleb128 0x2b
	.long	.LASF793
	.byte	0x2
	.value	0x168
	.byte	0x14
	.long	0xd1
	.uleb128 0x9
	.byte	0x3
	.quad	compress_program
	.uleb128 0x2b
	.long	.LASF794
	.byte	0x2
	.value	0x16b
	.byte	0xd
	.long	0x109e
	.uleb128 0x9
	.byte	0x3
	.quad	debug
	.uleb128 0x2b
	.long	.LASF795
	.byte	0x2
	.value	0x16f
	.byte	0x15
	.long	0xf5
	.uleb128 0x9
	.byte	0x3
	.quad	nmerge
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.value	0x217
	.byte	0x1
	.long	0x2694
	.uleb128 0x19
	.long	.LASF796
	.byte	0x80
	.uleb128 0x19
	.long	.LASF797
	.byte	0x81
	.uleb128 0x19
	.long	.LASF798
	.byte	0x82
	.uleb128 0x19
	.long	.LASF799
	.byte	0x83
	.uleb128 0x19
	.long	.LASF800
	.byte	0x84
	.uleb128 0x19
	.long	.LASF801
	.byte	0x85
	.uleb128 0x19
	.long	.LASF802
	.byte	0x86
	.uleb128 0x19
	.long	.LASF803
	.byte	0x87
	.byte	0
	.uleb128 0xd
	.long	0x50
	.long	0x26a4
	.uleb128 0xe
	.long	0xfc
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.long	0x2694
	.uleb128 0x2b
	.long	.LASF804
	.byte	0x2
	.value	0x222
	.byte	0x13
	.long	0x26a4
	.uleb128 0x9
	.byte	0x3
	.quad	short_options
	.uleb128 0xd
	.long	0xcc
	.long	0x26d0
	.uleb128 0xe
	.long	0xfc
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.long	0x26c0
	.uleb128 0x2b
	.long	.LASF805
	.byte	0x2
	.value	0x224
	.byte	0x1c
	.long	0x26d0
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0xd
	.long	0xd7
	.long	0x26fc
	.uleb128 0xe
	.long	0xfc
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x26ec
	.uleb128 0x2b
	.long	.LASF806
	.byte	0x2
	.value	0x24c
	.byte	0x1a
	.long	0x26fc
	.uleb128 0x9
	.byte	0x3
	.quad	check_args
	.uleb128 0xd
	.long	0x50
	.long	0x2728
	.uleb128 0xe
	.long	0xfc
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	0x2718
	.uleb128 0x2b
	.long	.LASF807
	.byte	0x2
	.value	0x252
	.byte	0x13
	.long	0x2728
	.uleb128 0x9
	.byte	0x3
	.quad	check_types
	.uleb128 0xd
	.long	0xd7
	.long	0x2754
	.uleb128 0xe
	.long	0xfc
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	0x2744
	.uleb128 0x2b
	.long	.LASF808
	.byte	0x2
	.value	0x261
	.byte	0x1a
	.long	0x2754
	.uleb128 0x9
	.byte	0x3
	.quad	sort_args
	.uleb128 0xd
	.long	0x50
	.long	0x2780
	.uleb128 0xe
	.long	0xfc
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x2770
	.uleb128 0x2b
	.long	.LASF809
	.byte	0x2
	.value	0x267
	.byte	0x13
	.long	0x2780
	.uleb128 0x9
	.byte	0x3
	.quad	sort_types
	.uleb128 0x2b
	.long	.LASF810
	.byte	0x2
	.value	0x26f
	.byte	0x11
	.long	0x29e
	.uleb128 0x9
	.byte	0x3
	.quad	caught_signals
	.uleb128 0x2d
	.long	.LASF811
	.byte	0x88
	.byte	0x2
	.value	0x272
	.byte	0x8
	.long	0x27de
	.uleb128 0x2e
	.long	.LASF812
	.byte	0x2
	.value	0x274
	.byte	0x8
	.long	0x109e
	.byte	0
	.uleb128 0x2e
	.long	.LASF813
	.byte	0x2
	.value	0x275
	.byte	0xc
	.long	0x29e
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x27b3
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.value	0x28e
	.byte	0x6
	.long	0x2805
	.uleb128 0x19
	.long	.LASF814
	.byte	0
	.uleb128 0x19
	.long	.LASF815
	.byte	0x1
	.uleb128 0x19
	.long	.LASF816
	.byte	0x2
	.byte	0
	.uleb128 0x2d
	.long	.LASF817
	.byte	0x10
	.byte	0x2
	.value	0x291
	.byte	0x8
	.long	0x284c
	.uleb128 0x2e
	.long	.LASF761
	.byte	0x2
	.value	0x293
	.byte	0x1d
	.long	0x2857
	.byte	0
	.uleb128 0x2f
	.string	"pid"
	.byte	0x2
	.value	0x294
	.byte	0x9
	.long	0x247
	.byte	0x8
	.uleb128 0x2e
	.long	.LASF818
	.byte	0x2
	.value	0x295
	.byte	0x8
	.long	0x49
	.byte	0xc
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x2
	.value	0x296
	.byte	0x8
	.long	0x119c
	.byte	0xd
	.byte	0
	.uleb128 0x4
	.long	0x2805
	.uleb128 0x3
	.byte	0x8
	.long	0x2805
	.uleb128 0x8
	.long	0x2851
	.uleb128 0x2b
	.long	.LASF819
	.byte	0x2
	.value	0x298
	.byte	0x22
	.long	0x2857
	.uleb128 0x9
	.byte	0x3
	.quad	temphead
	.uleb128 0x2b
	.long	.LASF820
	.byte	0x2
	.value	0x299
	.byte	0x23
	.long	0x288a
	.uleb128 0x9
	.byte	0x3
	.quad	temptail
	.uleb128 0x3
	.byte	0x8
	.long	0x2857
	.uleb128 0x2d
	.long	.LASF821
	.byte	0x10
	.byte	0x2
	.value	0x29c
	.byte	0x8
	.long	0x28bb
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x2
	.value	0x29f
	.byte	0xf
	.long	0xd1
	.byte	0
	.uleb128 0x2e
	.long	.LASF315
	.byte	0x2
	.value	0x2a2
	.byte	0x14
	.long	0x2851
	.byte	0x8
	.byte	0
	.uleb128 0x2b
	.long	.LASF822
	.byte	0x2
	.value	0x2a6
	.byte	0x14
	.long	0x28d2
	.uleb128 0x9
	.byte	0x3
	.quad	proctab
	.uleb128 0x3
	.byte	0x8
	.long	0x10aa
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.value	0x2a8
	.byte	0x6
	.long	0x28ee
	.uleb128 0x19
	.long	.LASF823
	.byte	0x2f
	.byte	0
	.uleb128 0x2b
	.long	.LASF824
	.byte	0x2
	.value	0x2ba
	.byte	0xe
	.long	0x247
	.uleb128 0x9
	.byte	0x3
	.quad	nprocs
	.uleb128 0xd
	.long	0x50
	.long	0x2915
	.uleb128 0xe
	.long	0xfc
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.long	0x2905
	.uleb128 0x2b
	.long	.LASF825
	.byte	0x2
	.value	0x752
	.byte	0x13
	.long	0x2915
	.uleb128 0x9
	.byte	0x3
	.quad	unit_order
	.uleb128 0x2b
	.long	.LASF826
	.byte	0x2
	.value	0x82a
	.byte	0x17
	.long	0x10bb
	.uleb128 0x9
	.byte	0x3
	.quad	random_md5_state
	.uleb128 0x2d
	.long	.LASF827
	.byte	0x38
	.byte	0x2
	.value	0xdfd
	.byte	0x8
	.long	0x29b9
	.uleb128 0x2e
	.long	.LASF828
	.byte	0x2
	.value	0xe01
	.byte	0x10
	.long	0x23eb
	.byte	0
	.uleb128 0x2e
	.long	.LASF829
	.byte	0x2
	.value	0xe04
	.byte	0xa
	.long	0x202
	.byte	0x8
	.uleb128 0x2e
	.long	.LASF830
	.byte	0x2
	.value	0xe07
	.byte	0x10
	.long	0x20e
	.byte	0x10
	.uleb128 0x2e
	.long	.LASF831
	.byte	0x2
	.value	0xe0b
	.byte	0x1c
	.long	0x2402
	.byte	0x18
	.uleb128 0x2e
	.long	.LASF832
	.byte	0x2
	.value	0xe0f
	.byte	0x22
	.long	0x29c4
	.byte	0x20
	.uleb128 0x2f
	.string	"tfp"
	.byte	0x2
	.value	0xe13
	.byte	0x9
	.long	0xeea
	.byte	0x28
	.uleb128 0x2e
	.long	.LASF833
	.byte	0x2
	.value	0xe14
	.byte	0xf
	.long	0xd1
	.byte	0x30
	.byte	0
	.uleb128 0x4
	.long	0x2948
	.uleb128 0x3
	.byte	0x8
	.long	0x240c
	.uleb128 0x4
	.long	0x29be
	.uleb128 0x30
	.long	.LASF1113
	.byte	0x2
	.value	0x1063
	.byte	0x1
	.long	0x61
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ee9
	.uleb128 0x31
	.long	.LASF834
	.byte	0x2
	.value	0x1063
	.byte	0xb
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -852
	.uleb128 0x31
	.long	.LASF835
	.byte	0x2
	.value	0x1063
	.byte	0x18
	.long	0xacc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x2c
	.string	"key"
	.byte	0x2
	.value	0x1065
	.byte	0x14
	.long	0x22fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x2b
	.long	.LASF836
	.byte	0x2
	.value	0x1066
	.byte	0x13
	.long	0x2208
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2b
	.long	.LASF837
	.byte	0x2
	.value	0x1067
	.byte	0x13
	.long	0x2208
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2b
	.long	.LASF838
	.byte	0x2
	.value	0x1068
	.byte	0x8
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -833
	.uleb128 0x2c
	.string	"s"
	.byte	0x2
	.value	0x1069
	.byte	0xf
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x2c
	.string	"c"
	.byte	0x2
	.value	0x106a
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x2b
	.long	.LASF839
	.byte	0x2
	.value	0x106b
	.byte	0x8
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x2b
	.long	.LASF840
	.byte	0x2
	.value	0x106c
	.byte	0x8
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -831
	.uleb128 0x2b
	.long	.LASF841
	.byte	0x2
	.value	0x106d
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x2b
	.long	.LASF842
	.byte	0x2
	.value	0x106e
	.byte	0x8
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -830
	.uleb128 0x2b
	.long	.LASF829
	.byte	0x2
	.value	0x106f
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x2b
	.long	.LASF843
	.byte	0x2
	.value	0x1070
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x2b
	.long	.LASF844
	.byte	0x2
	.value	0x1071
	.byte	0x8
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -826
	.uleb128 0x2b
	.long	.LASF845
	.byte	0x2
	.value	0x1072
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -820
	.uleb128 0x2b
	.long	.LASF846
	.byte	0x2
	.value	0x1073
	.byte	0x8
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -829
	.uleb128 0x2b
	.long	.LASF847
	.byte	0x2
	.value	0x1074
	.byte	0xa
	.long	0xacc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x2b
	.long	.LASF848
	.byte	0x2
	.value	0x1075
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x2c
	.string	"tok"
	.byte	0x2
	.value	0x1076
	.byte	0x11
	.long	0x1330
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x2b
	.long	.LASF849
	.byte	0x2
	.value	0x1077
	.byte	0xf
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x2b
	.long	.LASF850
	.byte	0x2
	.value	0x1078
	.byte	0x8
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -828
	.uleb128 0x32
	.long	.LASF1086
	.long	0x2ef9
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.8971
	.uleb128 0x33
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.long	0x2b98
	.uleb128 0x2b
	.long	.LASF851
	.byte	0x2
	.value	0x1089
	.byte	0x19
	.long	0x2efe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.byte	0
	.uleb128 0x33
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x2bfb
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0x109c
	.byte	0xc
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x2c
	.string	"sig"
	.byte	0x2
	.value	0x109d
	.byte	0x16
	.long	0x2f14
	.uleb128 0x9
	.byte	0x3
	.quad	sig.8956
	.uleb128 0x23
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x2
	.value	0x10b1
	.byte	0xa
	.long	0x2be9
	.uleb128 0x19
	.long	.LASF852
	.byte	0xb
	.byte	0
	.uleb128 0x2c
	.string	"act"
	.byte	0x2
	.value	0x10b4
	.byte	0x16
	.long	0x961
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x230
	.long	0x2d33
	.uleb128 0x2c
	.string	"oi"
	.byte	0x2
	.value	0x10de
	.byte	0xb
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x33
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.long	0x2c5e
	.uleb128 0x2b
	.long	.LASF853
	.byte	0x2
	.value	0x10f5
	.byte	0x14
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -825
	.uleb128 0x35
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.uleb128 0x2b
	.long	.LASF854
	.byte	0x2
	.value	0x1108
	.byte	0x27
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.long	0x2c84
	.uleb128 0x2c
	.string	"str"
	.byte	0x2
	.value	0x1138
	.byte	0x12
	.long	0x2f19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.byte	0
	.uleb128 0x36
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x36
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x36
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.uleb128 0x33
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.long	0x2d11
	.uleb128 0x2b
	.long	.LASF855
	.byte	0x2
	.value	0x11aa
	.byte	0x12
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -827
	.uleb128 0x36
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.uleb128 0x36
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.uleb128 0x36
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.byte	0
	.uleb128 0x35
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.uleb128 0x2c
	.string	"p"
	.byte	0x2
	.value	0x11da
	.byte	0x1b
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x260
	.long	0x2dc9
	.uleb128 0x2b
	.long	.LASF856
	.byte	0x2
	.value	0x11fa
	.byte	0xd
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x36
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.uleb128 0x33
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.long	0x2db7
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0x1208
	.byte	0x17
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x36
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.uleb128 0x35
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.uleb128 0x2b
	.long	.LASF857
	.byte	0x2
	.value	0x1213
	.byte	0x25
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.byte	0
	.uleb128 0x33
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.long	0x2df6
	.uleb128 0x2b
	.long	.LASF858
	.byte	0x2
	.value	0x1241
	.byte	0x17
	.long	0x2f29
	.uleb128 0x9
	.byte	0x3
	.quad	opts.9044
	.byte	0
	.uleb128 0x33
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.long	0x2e1d
	.uleb128 0x2b
	.long	.LASF859
	.byte	0x2
	.value	0x1260
	.byte	0x13
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.byte	0
	.uleb128 0x36
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.uleb128 0x33
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.long	0x2e5b
	.uleb128 0x2b
	.long	.LASF858
	.byte	0x2
	.value	0x1279
	.byte	0x17
	.long	0x2f39
	.uleb128 0x9
	.byte	0x3
	.quad	opts.9048
	.byte	0
	.uleb128 0x33
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.long	0x2ea3
	.uleb128 0x2b
	.long	.LASF860
	.byte	0x2
	.value	0x128b
	.byte	0x18
	.long	0x2f49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x35
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0x128d
	.byte	0x13
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.uleb128 0x2b
	.long	.LASF861
	.byte	0x2
	.value	0x129c
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x35
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.uleb128 0x2c
	.string	"np"
	.byte	0x2
	.value	0x1297
	.byte	0x1d
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x50
	.long	0x2ef9
	.uleb128 0xe
	.long	0xfc
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	0x2ee9
	.uleb128 0x3
	.byte	0x8
	.long	0xcf1
	.uleb128 0xd
	.long	0x6d
	.long	0x2f14
	.uleb128 0xe
	.long	0xfc
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x2f04
	.uleb128 0xd
	.long	0x49
	.long	0x2f29
	.uleb128 0xe
	.long	0xfc
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x2f39
	.uleb128 0xe
	.long	0xfc
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x2f49
	.uleb128 0xe
	.long	0xfc
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2890
	.uleb128 0x37
	.long	.LASF862
	.byte	0x2
	.value	0x105b
	.byte	0x1
	.long	0x22fe
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f83
	.uleb128 0x38
	.string	"key"
	.byte	0x2
	.value	0x105b
	.byte	0x1c
	.long	0x22fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF863
	.byte	0x2
	.value	0x1023
	.byte	0x1
	.long	0x39
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fd5
	.uleb128 0x38
	.string	"s"
	.byte	0x2
	.value	0x1023
	.byte	0x1b
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"key"
	.byte	0x2
	.value	0x1023
	.byte	0x2f
	.long	0x22fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF729
	.byte	0x2
	.value	0x1023
	.byte	0x43
	.long	0x2118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3a
	.long	.LASF868
	.byte	0x2
	.value	0x1012
	.byte	0x1
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x3005
	.uleb128 0x38
	.string	"sig"
	.byte	0x2
	.value	0x1012
	.byte	0x11
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF864
	.byte	0x2
	.value	0xff3
	.byte	0x1
	.long	0xd1
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x308b
	.uleb128 0x31
	.long	.LASF865
	.byte	0x2
	.value	0xff3
	.byte	0x20
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"val"
	.byte	0x2
	.value	0xff3
	.byte	0x30
	.long	0x138d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF866
	.byte	0x2
	.value	0xff3
	.byte	0x41
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF867
	.byte	0x2
	.value	0xff5
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"n"
	.byte	0x2
	.value	0xff6
	.byte	0xd
	.long	0xb13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.byte	0
	.uleb128 0x3a
	.long	.LASF869
	.byte	0x2
	.value	0xfdb
	.byte	0x1
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x30de
	.uleb128 0x2c
	.string	"key"
	.byte	0x2
	.value	0xfdd
	.byte	0x14
	.long	0x22fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x2b
	.long	.LASF858
	.byte	0x2
	.value	0xfe4
	.byte	0xe
	.long	0x30de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x30ee
	.uleb128 0xe
	.long	0xfc
	.byte	0x1e
	.byte	0
	.uleb128 0x3b
	.long	.LASF870
	.byte	0x2
	.value	0xfd3
	.byte	0x1
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x311e
	.uleb128 0x31
	.long	.LASF858
	.byte	0x2
	.value	0xfd3
	.byte	0x23
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF871
	.byte	0x2
	.value	0xfc9
	.byte	0x1
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x315e
	.uleb128 0x31
	.long	.LASF872
	.byte	0x2
	.value	0xfc9
	.byte	0x1b
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF866
	.byte	0x2
	.value	0xfc9
	.byte	0x2d
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3a
	.long	.LASF873
	.byte	0x2
	.value	0xfb9
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x31ac
	.uleb128 0x31
	.long	.LASF874
	.byte	0x2
	.value	0xfb9
	.byte	0x1d
	.long	0x22fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"p"
	.byte	0x2
	.value	0xfbb
	.byte	0x15
	.long	0x31ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"key"
	.byte	0x2
	.value	0xfbc
	.byte	0x14
	.long	0x22fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x22fe
	.uleb128 0x3a
	.long	.LASF875
	.byte	0x2
	.value	0xf43
	.byte	0x1
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x339c
	.uleb128 0x31
	.long	.LASF847
	.byte	0x2
	.value	0xf43
	.byte	0x14
	.long	0x339c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x31
	.long	.LASF843
	.byte	0x2
	.value	0xf43
	.byte	0x22
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x31
	.long	.LASF876
	.byte	0x2
	.value	0xf43
	.byte	0x36
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x31
	.long	.LASF829
	.byte	0x2
	.value	0xf44
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2c
	.string	"buf"
	.byte	0x2
	.value	0xf46
	.byte	0x11
	.long	0x219a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.long	.LASF877
	.byte	0x2
	.value	0xf48
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2b
	.long	.LASF878
	.byte	0x2
	.value	0xf49
	.byte	0x8
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -297
	.uleb128 0x3c
	.long	.LASF961
	.byte	0x2
	.value	0xfa2
	.byte	0x2
	.quad	.L870
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x200
	.long	0x3346
	.uleb128 0x2b
	.long	.LASF879
	.byte	0x2
	.value	0xf4f
	.byte	0x13
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2b
	.long	.LASF880
	.byte	0x2
	.value	0xf50
	.byte	0x13
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2c
	.string	"fp"
	.byte	0x2
	.value	0xf51
	.byte	0xd
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2c
	.string	"tfp"
	.byte	0x2
	.value	0xf52
	.byte	0xd
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2b
	.long	.LASF881
	.byte	0x2
	.value	0xf54
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x33
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.long	0x32ee
	.uleb128 0x2c
	.string	"tmp"
	.byte	0x2
	.value	0xf58
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2b
	.long	.LASF882
	.byte	0x2
	.value	0xf59
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x35
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.uleb128 0x2b
	.long	.LASF734
	.byte	0x2
	.value	0xf6d
	.byte	0x18
	.long	0x23eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x35
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x2b
	.long	.LASF832
	.byte	0x2
	.value	0xf8a
	.byte	0x27
	.long	0x240c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF883
	.byte	0x2
	.value	0xf8c
	.byte	0x22
	.long	0x23fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0xfa7
	.byte	0x18
	.long	0x2851
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2b
	.long	.LASF884
	.byte	0x2
	.value	0xfa8
	.byte	0x18
	.long	0x2f49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x35
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0xfa9
	.byte	0x13
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3f
	.uleb128 0x3a
	.long	.LASF885
	.byte	0x2
	.value	0xecf
	.byte	0x1
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x355c
	.uleb128 0x31
	.long	.LASF847
	.byte	0x2
	.value	0xecf
	.byte	0x19
	.long	0x2f49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.long	.LASF877
	.byte	0x2
	.value	0xecf
	.byte	0x27
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.long	.LASF843
	.byte	0x2
	.value	0xecf
	.byte	0x36
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x31
	.long	.LASF876
	.byte	0x2
	.value	0xed0
	.byte	0x14
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x34fa
	.uleb128 0x2c
	.string	"in"
	.byte	0x2
	.value	0xed5
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.string	"out"
	.byte	0x2
	.value	0xed8
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF886
	.byte	0x2
	.value	0xedc
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF887
	.byte	0x2
	.value	0xedf
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x34a4
	.uleb128 0x2c
	.string	"tfp"
	.byte	0x2
	.value	0xee6
	.byte	0x11
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x2
	.value	0xee7
	.byte	0x1c
	.long	0x2851
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF888
	.byte	0x2
	.value	0xee8
	.byte	0x12
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x35
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x2b
	.long	.LASF889
	.byte	0x2
	.value	0xef8
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"tfp"
	.byte	0x2
	.value	0xef9
	.byte	0x11
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x2
	.value	0xefa
	.byte	0x1c
	.long	0x2851
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF888
	.byte	0x2
	.value	0xefb
	.byte	0x12
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x2c
	.string	"fps"
	.byte	0x2
	.value	0xf13
	.byte	0xe
	.long	0x355c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.long	.LASF890
	.byte	0x2
	.value	0xf14
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.string	"tfp"
	.byte	0x2
	.value	0xf29
	.byte	0xd
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x2
	.value	0xf2a
	.byte	0x18
	.long	0x2851
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3d
	.long	.Ldebug_ranges0+0x1d0
	.uleb128 0x2c
	.string	"ofp"
	.byte	0x2
	.value	0xf18
	.byte	0x11
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xeea
	.uleb128 0x3a
	.long	.LASF891
	.byte	0x2
	.value	0xebd
	.byte	0x1
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x35c4
	.uleb128 0x31
	.long	.LASF849
	.byte	0x2
	.value	0xebd
	.byte	0x1b
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0x2b
	.long	.LASF892
	.byte	0x2
	.value	0xec1
	.byte	0xb
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF893
	.byte	0x2
	.value	0xec2
	.byte	0xb
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF894
	.byte	0x2
	.value	0xeac
	.byte	0x1
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.long	0x3624
	.uleb128 0x31
	.long	.LASF847
	.byte	0x2
	.value	0xeac
	.byte	0x1c
	.long	0x339c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF843
	.byte	0x2
	.value	0xeac
	.byte	0x2a
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0xeae
	.byte	0xf
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF895
	.byte	0x2
	.value	0xe79
	.byte	0x1
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x3725
	.uleb128 0x31
	.long	.LASF847
	.byte	0x2
	.value	0xe79
	.byte	0x28
	.long	0x2f49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x31
	.long	.LASF877
	.byte	0x2
	.value	0xe79
	.byte	0x36
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x31
	.long	.LASF843
	.byte	0x2
	.value	0xe7a
	.byte	0x1e
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x31
	.long	.LASF849
	.byte	0x2
	.value	0xe7a
	.byte	0x32
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2b
	.long	.LASF896
	.byte	0x2
	.value	0xe7c
	.byte	0x14
	.long	0x2851
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x3d
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0xe7e
	.byte	0xf
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x3d
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x2b
	.long	.LASF897
	.byte	0x2
	.value	0xe80
	.byte	0xc
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -209
	.uleb128 0x2b
	.long	.LASF898
	.byte	0x2
	.value	0xe81
	.byte	0xc
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -210
	.uleb128 0x2b
	.long	.LASF899
	.byte	0x2
	.value	0xe82
	.byte	0x13
	.long	0x9de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x170
	.long	0x36ff
	.uleb128 0x2b
	.long	.LASF900
	.byte	0x2
	.value	0xe88
	.byte	0x18
	.long	0x3725
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x35
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x2b
	.long	.LASF901
	.byte	0x2
	.value	0xe97
	.byte	0x15
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x9de
	.uleb128 0x3a
	.long	.LASF902
	.byte	0x2
	.value	0xe3c
	.byte	0x1
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x385c
	.uleb128 0x31
	.long	.LASF828
	.byte	0x2
	.value	0xe3c
	.byte	0x22
	.long	0x23f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.long	.LASF829
	.byte	0x2
	.value	0xe3c
	.byte	0x30
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x31
	.long	.LASF830
	.byte	0x2
	.value	0xe3d
	.byte	0x13
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.long	.LASF831
	.byte	0x2
	.value	0xe3d
	.byte	0x33
	.long	0x23fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.long	.LASF832
	.byte	0x2
	.value	0xe3e
	.byte	0x25
	.long	0x29be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x38
	.string	"tfp"
	.byte	0x2
	.value	0xe3e
	.byte	0x32
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.long	.LASF879
	.byte	0x2
	.value	0xe3e
	.byte	0x43
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.long	.LASF740
	.byte	0x2
	.value	0xe40
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF903
	.byte	0x2
	.value	0xe43
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF904
	.byte	0x2
	.value	0xe44
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF905
	.byte	0x2
	.value	0xe45
	.byte	0xd
	.long	0x465
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.long	.LASF906
	.byte	0x2
	.value	0xe46
	.byte	0x16
	.long	0x2948
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x2c
	.string	"nlo"
	.byte	0x2
	.value	0xe54
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.string	"nhi"
	.byte	0x2
	.value	0xe55
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x2
	.value	0xe56
	.byte	0x14
	.long	0x23eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF907
	.byte	0x2
	.value	0xe1a
	.byte	0x1
	.long	0x1d0
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x38a0
	.uleb128 0x31
	.long	.LASF908
	.byte	0x2
	.value	0xe1a
	.byte	0x19
	.long	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF906
	.byte	0x2
	.value	0xe1c
	.byte	0x1d
	.long	0x38a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x29b9
	.uleb128 0x3a
	.long	.LASF909
	.byte	0x2
	.value	0xde0
	.byte	0x1
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x3928
	.uleb128 0x31
	.long	.LASF832
	.byte	0x2
	.value	0xde0
	.byte	0x26
	.long	0x29be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF830
	.byte	0x2
	.value	0xde1
	.byte	0x14
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"tfp"
	.byte	0x2
	.value	0xde1
	.byte	0x27
	.long	0xeea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF879
	.byte	0x2
	.value	0xde1
	.byte	0x38
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0xde5
	.byte	0x1a
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF910
	.byte	0x2
	.value	0xdc8
	.byte	0x1
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x3968
	.uleb128 0x31
	.long	.LASF832
	.byte	0x2
	.value	0xdc8
	.byte	0x35
	.long	0x29be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF831
	.byte	0x2
	.value	0xdc9
	.byte	0x2f
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3a
	.long	.LASF911
	.byte	0x2
	.value	0xdba
	.byte	0x1
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x39da
	.uleb128 0x31
	.long	.LASF832
	.byte	0x2
	.value	0xdba
	.byte	0x2e
	.long	0x29be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF831
	.byte	0x2
	.value	0xdba
	.byte	0x48
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x2b
	.long	.LASF912
	.byte	0x2
	.value	0xdbe
	.byte	0xc
	.long	0x109e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2b
	.long	.LASF913
	.byte	0x2
	.value	0xdbf
	.byte	0xc
	.long	0x109e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF914
	.byte	0x2
	.value	0xd76
	.byte	0x1
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ab0
	.uleb128 0x31
	.long	.LASF831
	.byte	0x2
	.value	0xd76
	.byte	0x2e
	.long	0x2407
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF830
	.byte	0x2
	.value	0xd76
	.byte	0x3b
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"tfp"
	.byte	0x2
	.value	0xd77
	.byte	0x18
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF879
	.byte	0x2
	.value	0xd77
	.byte	0x29
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF915
	.byte	0x2
	.value	0xd79
	.byte	0x10
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF916
	.byte	0x2
	.value	0xd7a
	.byte	0x10
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF917
	.byte	0x2
	.value	0xd7b
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF918
	.byte	0x2
	.value	0xd7c
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF919
	.byte	0x2
	.value	0xd7d
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x2b
	.long	.LASF765
	.byte	0x2
	.value	0xd82
	.byte	0x14
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF920
	.byte	0x2
	.value	0xd62
	.byte	0x1
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b00
	.uleb128 0x31
	.long	.LASF734
	.byte	0x2
	.value	0xd62
	.byte	0x22
	.long	0x3b00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"tfp"
	.byte	0x2
	.value	0xd62
	.byte	0x2e
	.long	0xeea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF879
	.byte	0x2
	.value	0xd62
	.byte	0x3f
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2195
	.uleb128 0x5
	.long	0x3b00
	.uleb128 0x37
	.long	.LASF921
	.byte	0x2
	.value	0xd4e
	.byte	0x1
	.long	0x23fc
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b4f
	.uleb128 0x31
	.long	.LASF832
	.byte	0x2
	.value	0xd4e
	.byte	0x25
	.long	0x29be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0xd50
	.byte	0x16
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF922
	.byte	0x2
	.value	0xd42
	.byte	0x1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b8f
	.uleb128 0x31
	.long	.LASF832
	.byte	0x2
	.value	0xd42
	.byte	0x28
	.long	0x29be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF831
	.byte	0x2
	.value	0xd42
	.byte	0x42
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3a
	.long	.LASF923
	.byte	0x2
	.value	0xd34
	.byte	0x1
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bcf
	.uleb128 0x31
	.long	.LASF832
	.byte	0x2
	.value	0xd34
	.byte	0x26
	.long	0x29be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF829
	.byte	0x2
	.value	0xd34
	.byte	0x34
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3a
	.long	.LASF924
	.byte	0x2
	.value	0xd29
	.byte	0x1
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bff
	.uleb128 0x31
	.long	.LASF832
	.byte	0x2
	.value	0xd29
	.byte	0x29
	.long	0x29be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF925
	.byte	0x2
	.value	0xd21
	.byte	0x1
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c2f
	.uleb128 0x31
	.long	.LASF831
	.byte	0x2
	.value	0xd21
	.byte	0x21
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF926
	.byte	0x2
	.value	0xd19
	.byte	0x1
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c5f
	.uleb128 0x31
	.long	.LASF831
	.byte	0x2
	.value	0xd19
	.byte	0x1f
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF927
	.byte	0x2
	.value	0xd0d
	.byte	0x1
	.long	0x61
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cbf
	.uleb128 0x38
	.string	"a"
	.byte	0x2
	.value	0xd0d
	.byte	0x1c
	.long	0x589
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"b"
	.byte	0x2
	.value	0xd0d
	.byte	0x2b
	.long	0x589
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF928
	.byte	0x2
	.value	0xd0f
	.byte	0x1c
	.long	0x3cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF929
	.byte	0x2
	.value	0xd10
	.byte	0x1c
	.long	0x3cbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x23e6
	.uleb128 0x37
	.long	.LASF930
	.byte	0x2
	.value	0xcdf
	.byte	0x1
	.long	0x23fc
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df2
	.uleb128 0x31
	.long	.LASF766
	.byte	0x2
	.value	0xcdf
	.byte	0x28
	.long	0x2407
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.long	.LASF931
	.byte	0x2
	.value	0xce0
	.byte	0x28
	.long	0x2407
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.long	.LASF765
	.byte	0x2
	.value	0xce1
	.byte	0x19
	.long	0x23eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.long	.LASF829
	.byte	0x2
	.value	0xce1
	.byte	0x26
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x31
	.long	.LASF830
	.byte	0x2
	.value	0xce2
	.byte	0x13
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.long	.LASF932
	.byte	0x2
	.value	0xce2
	.byte	0x25
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.long	.LASF740
	.byte	0x2
	.value	0xce4
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"nlo"
	.byte	0x2
	.value	0xce5
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"nhi"
	.byte	0x2
	.value	0xce6
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"lo"
	.byte	0x2
	.value	0xce7
	.byte	0x10
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"hi"
	.byte	0x2
	.value	0xce8
	.byte	0x10
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF933
	.byte	0x2
	.value	0xce9
	.byte	0x11
	.long	0x23f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0xceb
	.byte	0x16
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x2b
	.long	.LASF903
	.byte	0x2
	.value	0xcf8
	.byte	0xe
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF904
	.byte	0x2
	.value	0xcf9
	.byte	0xe
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF934
	.byte	0x2
	.value	0xcc9
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e52
	.uleb128 0x31
	.long	.LASF829
	.byte	0x2
	.value	0xcc9
	.byte	0x1c
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF883
	.byte	0x2
	.value	0xcc9
	.byte	0x39
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF935
	.byte	0x2
	.value	0xccb
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0xccc
	.byte	0x16
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF936
	.byte	0x2
	.value	0xcb6
	.byte	0x1
	.long	0x23fc
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ec6
	.uleb128 0x31
	.long	.LASF829
	.byte	0x2
	.value	0xcb6
	.byte	0x19
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF740
	.byte	0x2
	.value	0xcb6
	.byte	0x2a
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF765
	.byte	0x2
	.value	0xcb6
	.byte	0x3f
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF883
	.byte	0x2
	.value	0xcb8
	.byte	0x16
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF937
	.byte	0x2
	.value	0xcba
	.byte	0x16
	.long	0x23fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF938
	.byte	0x2
	.value	0xc7c
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fb5
	.uleb128 0x31
	.long	.LASF828
	.byte	0x2
	.value	0xc7c
	.byte	0x28
	.long	0x23f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF740
	.byte	0x2
	.value	0xc7c
	.byte	0x36
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF315
	.byte	0x2
	.value	0xc7d
	.byte	0x28
	.long	0x23f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.long	.LASF939
	.byte	0x2
	.value	0xc7d
	.byte	0x33
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x34
	.long	.Ldebug_ranges0+0xe0
	.long	0x3f44
	.uleb128 0x2b
	.long	.LASF940
	.byte	0x2
	.value	0xc84
	.byte	0xb
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x35
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x2c
	.string	"nlo"
	.byte	0x2
	.value	0xc93
	.byte	0xe
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"nhi"
	.byte	0x2
	.value	0xc94
	.byte	0xe
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"lo"
	.byte	0x2
	.value	0xc95
	.byte	0x14
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"hi"
	.byte	0x2
	.value	0xc96
	.byte	0x14
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF765
	.byte	0x2
	.value	0xc9e
	.byte	0x14
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF941
	.byte	0x2
	.value	0xc9f
	.byte	0x1a
	.long	0x3b00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF942
	.byte	0x2
	.value	0xc4d
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x4032
	.uleb128 0x38
	.string	"t"
	.byte	0x2
	.value	0xc4d
	.byte	0x23
	.long	0x23f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF740
	.byte	0x2
	.value	0xc4d
	.byte	0x2d
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"lo"
	.byte	0x2
	.value	0xc4e
	.byte	0x29
	.long	0x3b06
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"nlo"
	.byte	0x2
	.value	0xc50
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"nhi"
	.byte	0x2
	.value	0xc51
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"hi"
	.byte	0x2
	.value	0xc52
	.byte	0x10
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF943
	.byte	0x2
	.value	0xc3b
	.byte	0x1
	.long	0x202
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x40cb
	.uleb128 0x31
	.long	.LASF847
	.byte	0x2
	.value	0xc3b
	.byte	0x1e
	.long	0x2f49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF877
	.byte	0x2
	.value	0xc3b
	.byte	0x2c
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF843
	.byte	0x2
	.value	0xc3b
	.byte	0x3b
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.string	"ofp"
	.byte	0x2
	.value	0xc3c
	.byte	0x13
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF876
	.byte	0x2
	.value	0xc3c
	.byte	0x24
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.string	"fps"
	.byte	0x2
	.value	0xc3e
	.byte	0xa
	.long	0x355c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF890
	.byte	0x2
	.value	0xc3f
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3a
	.long	.LASF944
	.byte	0x2
	.value	0xb74
	.byte	0x1
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x42ff
	.uleb128 0x31
	.long	.LASF847
	.byte	0x2
	.value	0xb74
	.byte	0x1c
	.long	0x2f49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x31
	.long	.LASF877
	.byte	0x2
	.value	0xb74
	.byte	0x2a
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x31
	.long	.LASF843
	.byte	0x2
	.value	0xb74
	.byte	0x39
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x38
	.string	"ofp"
	.byte	0x2
	.value	0xb75
	.byte	0x11
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x31
	.long	.LASF876
	.byte	0x2
	.value	0xb75
	.byte	0x22
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x38
	.string	"fps"
	.byte	0x2
	.value	0xb75
	.byte	0x36
	.long	0x355c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2b
	.long	.LASF298
	.byte	0x2
	.value	0xb77
	.byte	0x12
	.long	0x42ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.long	.LASF945
	.byte	0x2
	.value	0xb79
	.byte	0xf
	.long	0x2153
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF946
	.byte	0x2
	.value	0xb7a
	.byte	0x16
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2b
	.long	.LASF947
	.byte	0x2
	.value	0xb7c
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2c
	.string	"cur"
	.byte	0x2
	.value	0xb7d
	.byte	0x17
	.long	0x4305
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF948
	.byte	0x2
	.value	0xb7f
	.byte	0x17
	.long	0x4305
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.string	"ord"
	.byte	0x2
	.value	0xb81
	.byte	0xb
	.long	0x138d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0xb85
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.string	"j"
	.byte	0x2
	.value	0xb86
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.string	"t"
	.byte	0x2
	.value	0xb87
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.string	"key"
	.byte	0x2
	.value	0xb88
	.byte	0x1a
	.long	0x430b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x422c
	.uleb128 0x2b
	.long	.LASF949
	.byte	0x2
	.value	0xb92
	.byte	0x1e
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x35
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x2b
	.long	.LASF950
	.byte	0x2
	.value	0xbb6
	.byte	0x1a
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0x4275
	.uleb128 0x2b
	.long	.LASF949
	.byte	0x2
	.value	0xbe6
	.byte	0x22
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x35
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2c
	.string	"lo"
	.byte	0x2
	.value	0xc0b
	.byte	0x10
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2c
	.string	"hi"
	.byte	0x2
	.value	0xc0c
	.byte	0x10
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.long	.LASF951
	.byte	0x2
	.value	0xc0d
	.byte	0x10
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.long	.LASF952
	.byte	0x2
	.value	0xc0e
	.byte	0x10
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF953
	.byte	0x2
	.value	0xc0f
	.byte	0x10
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x2c
	.string	"cmp"
	.byte	0x2
	.value	0xc13
	.byte	0x11
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x219a
	.uleb128 0x3
	.byte	0x8
	.long	0x3b00
	.uleb128 0x3
	.byte	0x8
	.long	0x22f3
	.uleb128 0x37
	.long	.LASF954
	.byte	0x2
	.value	0xb59
	.byte	0x1
	.long	0x202
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x4383
	.uleb128 0x31
	.long	.LASF847
	.byte	0x2
	.value	0xb59
	.byte	0x24
	.long	0x2f49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF843
	.byte	0x2
	.value	0xb59
	.byte	0x32
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF955
	.byte	0x2
	.value	0xb59
	.byte	0x42
	.long	0x4383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"fps"
	.byte	0x2
	.value	0xb5b
	.byte	0xa
	.long	0x355c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0xb5c
	.byte	0x7
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x355c
	.uleb128 0x37
	.long	.LASF956
	.byte	0x2
	.value	0xb01
	.byte	0x1
	.long	0x109e
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x44df
	.uleb128 0x31
	.long	.LASF957
	.byte	0x2
	.value	0xb01
	.byte	0x14
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x31
	.long	.LASF839
	.byte	0x2
	.value	0xb01
	.byte	0x24
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2c
	.string	"fp"
	.byte	0x2
	.value	0xb03
	.byte	0x9
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.string	"buf"
	.byte	0x2
	.value	0xb04
	.byte	0x11
	.long	0x219a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x2
	.value	0xb05
	.byte	0xf
	.long	0x2153
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF741
	.byte	0x2
	.value	0xb06
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2b
	.long	.LASF958
	.byte	0x2
	.value	0xb07
	.byte	0xd
	.long	0xb13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2c
	.string	"key"
	.byte	0x2
	.value	0xb08
	.byte	0x1a
	.long	0x430b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.long	.LASF959
	.byte	0x2
	.value	0xb09
	.byte	0x8
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -225
	.uleb128 0x2b
	.long	.LASF960
	.byte	0x2
	.value	0xb0a
	.byte	0x8
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -226
	.uleb128 0x3c
	.long	.LASF962
	.byte	0x2
	.value	0xb19
	.byte	0x9
	.quad	.L650
	.uleb128 0x35
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2b
	.long	.LASF734
	.byte	0x2
	.value	0xb12
	.byte	0x1a
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF963
	.byte	0x2
	.value	0xb13
	.byte	0x1a
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x35
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x2b
	.long	.LASF964
	.byte	0x2
	.value	0xb1d
	.byte	0x24
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.long	.LASF965
	.byte	0x2
	.value	0xb1e
	.byte	0x1b
	.long	0xb13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.long	.LASF966
	.byte	0x2
	.value	0xb20
	.byte	0x16
	.long	0x44df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x44ef
	.uleb128 0xe
	.long	0xfc
	.byte	0x14
	.byte	0
	.uleb128 0x3a
	.long	.LASF967
	.byte	0x2
	.value	0xada
	.byte	0x1
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x45b2
	.uleb128 0x31
	.long	.LASF734
	.byte	0x2
	.value	0xada
	.byte	0x20
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"fp"
	.byte	0x2
	.value	0xada
	.byte	0x2c
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF876
	.byte	0x2
	.value	0xada
	.byte	0x3c
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"buf"
	.byte	0x2
	.value	0xadc
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF968
	.byte	0x2
	.value	0xadd
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF969
	.byte	0x2
	.value	0xade
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x2c
	.string	"c"
	.byte	0x2
	.value	0xae3
	.byte	0x13
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2c
	.string	"wc"
	.byte	0x2
	.value	0xae7
	.byte	0x10
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF970
	.byte	0x2
	.value	0xaaf
	.byte	0x1
	.long	0x61
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x4622
	.uleb128 0x38
	.string	"a"
	.byte	0x2
	.value	0xaaf
	.byte	0x1d
	.long	0x3b00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"b"
	.byte	0x2
	.value	0xaaf
	.byte	0x33
	.long	0x3b00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF971
	.byte	0x2
	.value	0xab1
	.byte	0x7
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF972
	.byte	0x2
	.value	0xab2
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF973
	.byte	0x2
	.value	0xab2
	.byte	0x10
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF974
	.byte	0x2
	.value	0x9e2
	.byte	0x1
	.long	0x61
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x47f4
	.uleb128 0x38
	.string	"a"
	.byte	0x2
	.value	0x9e2
	.byte	0x20
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4200
	.uleb128 0x38
	.string	"b"
	.byte	0x2
	.value	0x9e2
	.byte	0x36
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4208
	.uleb128 0x2c
	.string	"key"
	.byte	0x2
	.value	0x9e4
	.byte	0x14
	.long	0x22fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4176
	.uleb128 0x2b
	.long	.LASF975
	.byte	0x2
	.value	0x9e8
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4168
	.uleb128 0x2b
	.long	.LASF976
	.byte	0x2
	.value	0x9e9
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4160
	.uleb128 0x2b
	.long	.LASF977
	.byte	0x2
	.value	0x9ea
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4152
	.uleb128 0x2b
	.long	.LASF978
	.byte	0x2
	.value	0x9eb
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x2b
	.long	.LASF971
	.byte	0x2
	.value	0x9ed
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4180
	.uleb128 0x3c
	.long	.LASF979
	.byte	0x2
	.value	0xaa7
	.byte	0x2
	.quad	.L582
	.uleb128 0x3c
	.long	.LASF980
	.byte	0x2
	.value	0xaa5
	.byte	0x2
	.quad	.L594
	.uleb128 0x3d
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x2b
	.long	.LASF750
	.byte	0x2
	.value	0x9f1
	.byte	0x13
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4088
	.uleb128 0x2b
	.long	.LASF749
	.byte	0x2
	.value	0x9f2
	.byte	0x13
	.long	0x22f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4080
	.uleb128 0x2b
	.long	.LASF981
	.byte	0x2
	.value	0x9f9
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4072
	.uleb128 0x2b
	.long	.LASF982
	.byte	0x2
	.value	0x9fa
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4064
	.uleb128 0x3d
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x2c
	.string	"ta"
	.byte	0x2
	.value	0x9ff
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4136
	.uleb128 0x2c
	.string	"tb"
	.byte	0x2
	.value	0xa00
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x2b
	.long	.LASF983
	.byte	0x2
	.value	0xa01
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4120
	.uleb128 0x2b
	.long	.LASF984
	.byte	0x2
	.value	0xa02
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4112
	.uleb128 0x2b
	.long	.LASF985
	.byte	0x2
	.value	0xa04
	.byte	0x10
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4182
	.uleb128 0x2b
	.long	.LASF986
	.byte	0x2
	.value	0xa05
	.byte	0x10
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4181
	.uleb128 0x2b
	.long	.LASF987
	.byte	0x2
	.value	0xa06
	.byte	0x11
	.long	0x1d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4104
	.uleb128 0x2b
	.long	.LASF988
	.byte	0x2
	.value	0xa07
	.byte	0x10
	.long	0x47f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4048
	.uleb128 0x35
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0xa0f
	.byte	0x16
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4096
	.uleb128 0x2b
	.long	.LASF989
	.byte	0x2
	.value	0xa12
	.byte	0x16
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4056
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x4805
	.uleb128 0x3e
	.long	0xfc
	.value	0xf9f
	.byte	0
	.uleb128 0x3a
	.long	.LASF990
	.byte	0x2
	.value	0x977
	.byte	0x1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x49b6
	.uleb128 0x31
	.long	.LASF837
	.byte	0x2
	.value	0x977
	.byte	0x26
	.long	0x430b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x31
	.long	.LASF838
	.byte	0x2
	.value	0x977
	.byte	0x31
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x2c
	.string	"key"
	.byte	0x2
	.value	0x979
	.byte	0x1a
	.long	0x430b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2b
	.long	.LASF991
	.byte	0x2
	.value	0x97a
	.byte	0x13
	.long	0x2208
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2b
	.long	.LASF992
	.byte	0x2
	.value	0x97b
	.byte	0x11
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x33
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x4981
	.uleb128 0x2b
	.long	.LASF993
	.byte	0x2
	.value	0x99d
	.byte	0xc
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -323
	.uleb128 0x2b
	.long	.LASF994
	.byte	0x2
	.value	0x9a2
	.byte	0xc
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -322
	.uleb128 0x2b
	.long	.LASF995
	.byte	0x2
	.value	0x9a3
	.byte	0xc
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -321
	.uleb128 0x33
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x494c
	.uleb128 0x2b
	.long	.LASF745
	.byte	0x2
	.value	0x981
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2b
	.long	.LASF747
	.byte	0x2
	.value	0x982
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2c
	.string	"tmp"
	.byte	0x2
	.value	0x983
	.byte	0x10
	.long	0x44df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.long	.LASF996
	.byte	0x2
	.value	0x987
	.byte	0x10
	.long	0x49b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.long	.LASF997
	.byte	0x2
	.value	0x988
	.byte	0x10
	.long	0x49c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.string	"po"
	.byte	0x2
	.value	0x989
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2c
	.string	"pn"
	.byte	0x2
	.value	0x98a
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x35
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2b
	.long	.LASF745
	.byte	0x2
	.value	0x9b0
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2b
	.long	.LASF747
	.byte	0x2
	.value	0x9b1
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2b
	.long	.LASF998
	.byte	0x2
	.value	0x9ce
	.byte	0xc
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x2b
	.long	.LASF858
	.byte	0x2
	.value	0x9d2
	.byte	0xc
	.long	0x30de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x49c6
	.uleb128 0xe
	.long	0xfc
	.byte	0x2d
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x49d6
	.uleb128 0xe
	.long	0xfc
	.byte	0x2e
	.byte	0
	.uleb128 0x3f
	.long	.LASF999
	.byte	0x2
	.value	0x959
	.byte	0x1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a16
	.uleb128 0x38
	.string	"key"
	.byte	0x2
	.value	0x959
	.byte	0x25
	.long	0x430b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF858
	.byte	0x2
	.value	0x959
	.byte	0x30
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF1000
	.byte	0x2
	.value	0x948
	.byte	0x1
	.long	0x109e
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a4a
	.uleb128 0x38
	.string	"key"
	.byte	0x2
	.value	0x948
	.byte	0x2d
	.long	0x430b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1001
	.byte	0x2
	.value	0x93c
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a8a
	.uleb128 0x31
	.long	.LASF734
	.byte	0x2
	.value	0x93c
	.byte	0x20
	.long	0x3b00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"key"
	.byte	0x2
	.value	0x93e
	.byte	0x1a
	.long	0x430b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1002
	.byte	0x2
	.value	0x903
	.byte	0x1
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bcd
	.uleb128 0x31
	.long	.LASF734
	.byte	0x2
	.value	0x903
	.byte	0x1f
	.long	0x3b00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x38
	.string	"key"
	.byte	0x2
	.value	0x903
	.byte	0x3c
	.long	0x430b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF735
	.byte	0x2
	.value	0x905
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"beg"
	.byte	0x2
	.value	0x906
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"lim"
	.byte	0x2
	.value	0x907
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF1003
	.byte	0x2
	.value	0x934
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF1004
	.byte	0x2
	.value	0x935
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2b
	.long	.LASF945
	.byte	0x2
	.value	0x913
	.byte	0x10
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -107
	.uleb128 0x2b
	.long	.LASF1005
	.byte	0x2
	.value	0x919
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x4b77
	.uleb128 0x2c
	.string	"__x"
	.byte	0x2
	.value	0x920
	.byte	0xd
	.long	0x571
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x35
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2c
	.string	"p"
	.byte	0x2
	.value	0x923
	.byte	0x1b
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF1006
	.byte	0x2
	.value	0x924
	.byte	0x1d
	.long	0xe7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -106
	.uleb128 0x35
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x2c
	.string	"ch"
	.byte	0x2
	.value	0x927
	.byte	0x21
	.long	0xe7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1007
	.byte	0x2
	.value	0x8fa
	.byte	0x1
	.long	0x109e
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c01
	.uleb128 0x38
	.string	"key"
	.byte	0x2
	.value	0x8fa
	.byte	0x25
	.long	0x430b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1008
	.byte	0x2
	.value	0x8e6
	.byte	0x1
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c41
	.uleb128 0x31
	.long	.LASF1003
	.byte	0x2
	.value	0x8e6
	.byte	0x12
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF1004
	.byte	0x2
	.value	0x8e6
	.byte	0x21
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF1009
	.byte	0x2
	.value	0x8da
	.byte	0x1
	.long	0x202
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c95
	.uleb128 0x31
	.long	.LASF735
	.byte	0x2
	.value	0x8da
	.byte	0x1a
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"lim"
	.byte	0x2
	.value	0x8da
	.byte	0x2c
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF1004
	.byte	0x2
	.value	0x8dc
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1010
	.byte	0x2
	.value	0x855
	.byte	0x1
	.long	0x61
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e0d
	.uleb128 0x31
	.long	.LASF975
	.byte	0x2
	.value	0x855
	.byte	0x20
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4472
	.uleb128 0x31
	.long	.LASF981
	.byte	0x2
	.value	0x855
	.byte	0x2e
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4480
	.uleb128 0x31
	.long	.LASF976
	.byte	0x2
	.value	0x856
	.byte	0x20
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4488
	.uleb128 0x31
	.long	.LASF982
	.byte	0x2
	.value	0x856
	.byte	0x2e
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4496
	.uleb128 0x2b
	.long	.LASF1011
	.byte	0x2
	.value	0x85c
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4456
	.uleb128 0x2b
	.long	.LASF988
	.byte	0x2
	.value	0x85e
	.byte	0x8
	.long	0x47f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4032
	.uleb128 0x2c
	.string	"buf"
	.byte	0x2
	.value	0x85f
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4448
	.uleb128 0x2b
	.long	.LASF1012
	.byte	0x2
	.value	0x860
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4440
	.uleb128 0x2b
	.long	.LASF987
	.byte	0x2
	.value	0x861
	.byte	0x9
	.long	0x1d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4432
	.uleb128 0x2c
	.string	"dig"
	.byte	0x2
	.value	0x862
	.byte	0xc
	.long	0x4e0d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4384
	.uleb128 0x2c
	.string	"s"
	.byte	0x2
	.value	0x863
	.byte	0x12
	.long	0x4e23
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4352
	.uleb128 0x2b
	.long	.LASF971
	.byte	0x2
	.value	0x8c1
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4452
	.uleb128 0x35
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2b
	.long	.LASF977
	.byte	0x2
	.value	0x868
	.byte	0x13
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4424
	.uleb128 0x2b
	.long	.LASF978
	.byte	0x2
	.value	0x869
	.byte	0x13
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4416
	.uleb128 0x35
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2b
	.long	.LASF1013
	.byte	0x2
	.value	0x87c
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4408
	.uleb128 0x2b
	.long	.LASF1014
	.byte	0x2
	.value	0x889
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4400
	.uleb128 0x2b
	.long	.LASF1015
	.byte	0x2
	.value	0x88b
	.byte	0x10
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4457
	.uleb128 0x2b
	.long	.LASF1016
	.byte	0x2
	.value	0x88c
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4392
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xb07
	.long	0x4e23
	.uleb128 0xe
	.long	0xfc
	.byte	0x1
	.uleb128 0xe
	.long	0xfc
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	0x10bb
	.long	0x4e33
	.uleb128 0xe
	.long	0xfc
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.long	.LASF1017
	.byte	0x2
	.value	0x83f
	.byte	0x1
	.long	0x202
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ea9
	.uleb128 0x31
	.long	.LASF765
	.byte	0x2
	.value	0x83f
	.byte	0x1a
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"src"
	.byte	0x2
	.value	0x83f
	.byte	0x35
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF1018
	.byte	0x2
	.value	0x83f
	.byte	0x41
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF1019
	.byte	0x2
	.value	0x842
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0
	.uleb128 0x3a
	.long	.LASF1020
	.byte	0x2
	.value	0x82f
	.byte	0x1
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ef9
	.uleb128 0x31
	.long	.LASF841
	.byte	0x2
	.value	0x82f
	.byte	0x24
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"buf"
	.byte	0x2
	.value	0x831
	.byte	0x11
	.long	0x4ef9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"r"
	.byte	0x2
	.value	0x832
	.byte	0x1b
	.long	0x4f0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xd
	.long	0xe7
	.long	0x4f09
	.uleb128 0xe
	.long	0xfc
	.byte	0xf
	.byte	0
	.uleb128 0x21
	.long	.LASF1021
	.uleb128 0x3
	.byte	0x8
	.long	0x4f09
	.uleb128 0x37
	.long	.LASF1022
	.byte	0x2
	.value	0x802
	.byte	0x1
	.long	0x61
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fb4
	.uleb128 0x31
	.long	.LASF757
	.byte	0x2
	.value	0x802
	.byte	0x17
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"ea"
	.byte	0x2
	.value	0x802
	.byte	0x25
	.long	0xacc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"lo"
	.byte	0x2
	.value	0x804
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"hi"
	.byte	0x2
	.value	0x805
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2c
	.string	"ix"
	.byte	0x2
	.value	0x80c
	.byte	0xe
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"m"
	.byte	0x2
	.value	0x80d
	.byte	0x13
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"n"
	.byte	0x2
	.value	0x80e
	.byte	0x13
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1023
	.byte	0x2
	.value	0x7e3
	.byte	0x1
	.long	0x61
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x5034
	.uleb128 0x38
	.string	"sa"
	.byte	0x2
	.value	0x7e3
	.byte	0x21
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.string	"sb"
	.byte	0x2
	.value	0x7e3
	.byte	0x31
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.string	"ea"
	.byte	0x2
	.value	0x7e8
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"eb"
	.byte	0x2
	.value	0x7e9
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"a"
	.byte	0x2
	.value	0x7ea
	.byte	0xf
	.long	0x571
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"b"
	.byte	0x2
	.value	0x7eb
	.byte	0xf
	.long	0x571
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x37
	.long	.LASF1024
	.byte	0x2
	.value	0x7d5
	.byte	0x1
	.long	0x61
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x5094
	.uleb128 0x38
	.string	"sa"
	.byte	0x2
	.value	0x7d5
	.byte	0x1a
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"sb"
	.byte	0x2
	.value	0x7d5
	.byte	0x2a
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"a"
	.byte	0x2
	.value	0x7d7
	.byte	0xf
	.long	0x571
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"b"
	.byte	0x2
	.value	0x7db
	.byte	0xf
	.long	0x571
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x37
	.long	.LASF1025
	.byte	0x2
	.value	0x7c6
	.byte	0x1
	.long	0x61
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x50d4
	.uleb128 0x38
	.string	"a"
	.byte	0x2
	.value	0x7c6
	.byte	0x19
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"b"
	.byte	0x2
	.value	0x7c6
	.byte	0x28
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF1026
	.byte	0x2
	.value	0x7b6
	.byte	0x1
	.long	0x61
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x5124
	.uleb128 0x38
	.string	"a"
	.byte	0x2
	.value	0x7b6
	.byte	0x1f
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"b"
	.byte	0x2
	.value	0x7b6
	.byte	0x2e
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF971
	.byte	0x2
	.value	0x7bd
	.byte	0x7
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x37
	.long	.LASF1027
	.byte	0x2
	.value	0x7a3
	.byte	0x1
	.long	0x61
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x51b7
	.uleb128 0x31
	.long	.LASF1028
	.byte	0x2
	.value	0x7a3
	.byte	0x1e
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF1029
	.byte	0x2
	.value	0x7a5
	.byte	0x8
	.long	0x109e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x2c
	.string	"p"
	.byte	0x2
	.value	0x7a6
	.byte	0xf
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF1006
	.byte	0x2
	.value	0x7a7
	.byte	0x11
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x35
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2c
	.string	"ch"
	.byte	0x2
	.value	0x7aa
	.byte	0x15
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2b
	.long	.LASF1030
	.byte	0x2
	.value	0x7ab
	.byte	0xb
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1031
	.byte	0x2
	.value	0x773
	.byte	0x1
	.long	0xe7
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x5228
	.uleb128 0x31
	.long	.LASF1028
	.byte	0x2
	.value	0x773
	.byte	0x23
	.long	0x253b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"p"
	.byte	0x2
	.value	0x775
	.byte	0xf
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"ch"
	.byte	0x2
	.value	0x776
	.byte	0x11
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2b
	.long	.LASF1006
	.byte	0x2
	.value	0x777
	.byte	0x11
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x2b
	.long	.LASF1032
	.byte	0x2
	.value	0x778
	.byte	0x8
	.long	0x109e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x37
	.long	.LASF1033
	.byte	0x2
	.value	0x6e0
	.byte	0x1
	.long	0x109e
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x5393
	.uleb128 0x38
	.string	"buf"
	.byte	0x2
	.value	0x6e0
	.byte	0x19
	.long	0x42ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x38
	.string	"fp"
	.byte	0x2
	.value	0x6e0
	.byte	0x24
	.long	0xeea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x31
	.long	.LASF880
	.byte	0x2
	.value	0x6e0
	.byte	0x34
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.string	"key"
	.byte	0x2
	.value	0x6e2
	.byte	0x1a
	.long	0x430b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"eol"
	.byte	0x2
	.value	0x6e3
	.byte	0x8
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.uleb128 0x2b
	.long	.LASF743
	.byte	0x2
	.value	0x6e4
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF1034
	.byte	0x2
	.value	0x6e5
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2c
	.string	"ptr"
	.byte	0x2
	.value	0x6f3
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF949
	.byte	0x2
	.value	0x6f4
	.byte	0x14
	.long	0x23eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF734
	.byte	0x2
	.value	0x6f5
	.byte	0x14
	.long	0x23eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	.LASF1035
	.byte	0x2
	.value	0x6f6
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF1036
	.byte	0x2
	.value	0x6f7
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x30
	.long	0x536e
	.uleb128 0x2b
	.long	.LASF1037
	.byte	0x2
	.value	0x700
	.byte	0x12
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF1038
	.byte	0x2
	.value	0x701
	.byte	0x12
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF1039
	.byte	0x2
	.value	0x702
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"p"
	.byte	0x2
	.value	0x703
	.byte	0x11
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2b
	.long	.LASF1040
	.byte	0x2
	.value	0x74a
	.byte	0x10
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1041
	.byte	0x2
	.value	0x677
	.byte	0x1
	.long	0x39
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x5417
	.uleb128 0x31
	.long	.LASF734
	.byte	0x2
	.value	0x677
	.byte	0x1e
	.long	0x3b00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"key"
	.byte	0x2
	.value	0x677
	.byte	0x3b
	.long	0x430b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"ptr"
	.byte	0x2
	.value	0x679
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"lim"
	.byte	0x2
	.value	0x679
	.byte	0x1c
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF747
	.byte	0x2
	.value	0x67a
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF748
	.byte	0x2
	.value	0x67a
	.byte	0x1e
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1042
	.byte	0x2
	.value	0x64d
	.byte	0x1
	.long	0x39
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x549b
	.uleb128 0x31
	.long	.LASF734
	.byte	0x2
	.value	0x64d
	.byte	0x1e
	.long	0x3b00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"key"
	.byte	0x2
	.value	0x64d
	.byte	0x3b
	.long	0x430b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"ptr"
	.byte	0x2
	.value	0x64f
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"lim"
	.byte	0x2
	.value	0x64f
	.byte	0x1c
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF745
	.byte	0x2
	.value	0x650
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF746
	.byte	0x2
	.value	0x651
	.byte	0xa
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1043
	.byte	0x2
	.value	0x643
	.byte	0x1
	.long	0x23eb
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x54df
	.uleb128 0x38
	.string	"buf"
	.byte	0x2
	.value	0x643
	.byte	0x26
	.long	0x54df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF949
	.byte	0x2
	.value	0x645
	.byte	0x9
	.long	0x1d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2203
	.uleb128 0x3a
	.long	.LASF1044
	.byte	0x2
	.value	0x629
	.byte	0x1
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x5535
	.uleb128 0x38
	.string	"buf"
	.byte	0x2
	.value	0x629
	.byte	0x19
	.long	0x42ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF743
	.byte	0x2
	.value	0x629
	.byte	0x25
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF741
	.byte	0x2
	.value	0x629
	.byte	0x38
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x37
	.long	.LASF1045
	.byte	0x2
	.value	0x5ea
	.byte	0x1
	.long	0x202
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x564c
	.uleb128 0x38
	.string	"fps"
	.byte	0x2
	.value	0x5ea
	.byte	0x20
	.long	0x564c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x31
	.long	.LASF1046
	.byte	0x2
	.value	0x5ea
	.byte	0x2c
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x31
	.long	.LASF847
	.byte	0x2
	.value	0x5eb
	.byte	0x20
	.long	0x339c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x31
	.long	.LASF843
	.byte	0x2
	.value	0x5eb
	.byte	0x2e
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x31
	.long	.LASF743
	.byte	0x2
	.value	0x5ec
	.byte	0x1a
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2b
	.long	.LASF1047
	.byte	0x2
	.value	0x5f0
	.byte	0x11
	.long	0x202
	.uleb128 0x9
	.byte	0x3
	.quad	size_bound.8103
	.uleb128 0x2b
	.long	.LASF1048
	.byte	0x2
	.value	0x5f3
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF989
	.byte	0x2
	.value	0x5f7
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x35
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0x5f9
	.byte	0xf
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x35
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2c
	.string	"st"
	.byte	0x2
	.value	0x5fb
	.byte	0x13
	.long	0x9de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.long	.LASF1049
	.byte	0x2
	.value	0x5fc
	.byte	0xd
	.long	0x253
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2b
	.long	.LASF1050
	.byte	0x2
	.value	0x5fd
	.byte	0xe
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xef0
	.uleb128 0x37
	.long	.LASF1051
	.byte	0x2
	.value	0x5b6
	.byte	0x1
	.long	0x202
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x56c8
	.uleb128 0x2b
	.long	.LASF989
	.byte	0x2
	.value	0x5bc
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF109
	.byte	0x2
	.value	0x5bd
	.byte	0x11
	.long	0x639
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF1035
	.byte	0x2
	.value	0x5d2
	.byte	0xa
	.long	0x56c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF296
	.byte	0x2
	.value	0x5d3
	.byte	0xa
	.long	0x56c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"mem"
	.byte	0x2
	.value	0x5d4
	.byte	0xa
	.long	0x56c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.long	.LASF1052
	.uleb128 0x37
	.long	.LASF1053
	.byte	0x2
	.value	0x5a5
	.byte	0x1
	.long	0x202
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x574d
	.uleb128 0x38
	.string	"oi"
	.byte	0x2
	.value	0x5a5
	.byte	0x17
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.string	"c"
	.byte	0x2
	.value	0x5a5
	.byte	0x20
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"s"
	.byte	0x2
	.value	0x5a5
	.byte	0x2f
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF829
	.byte	0x2
	.value	0x5a7
	.byte	0xd
	.long	0xb13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"e"
	.byte	0x2
	.value	0x5a8
	.byte	0x15
	.long	0x1393
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0
	.uleb128 0x3a
	.long	.LASF1054
	.byte	0x2
	.value	0x568
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x57dd
	.uleb128 0x38
	.string	"oi"
	.byte	0x2
	.value	0x568
	.byte	0x18
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.string	"c"
	.byte	0x2
	.value	0x568
	.byte	0x21
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"s"
	.byte	0x2
	.value	0x568
	.byte	0x30
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"n"
	.byte	0x2
	.value	0x56a
	.byte	0xd
	.long	0xb13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF867
	.byte	0x2
	.value	0x56b
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"e"
	.byte	0x2
	.value	0x56c
	.byte	0x15
	.long	0x1393
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3d
	.long	.Ldebug_ranges0+0
	.uleb128 0x2c
	.string	"mem"
	.byte	0x2
	.value	0x581
	.byte	0x12
	.long	0x56c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1055
	.byte	0x2
	.value	0x532
	.byte	0x1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x589e
	.uleb128 0x38
	.string	"oi"
	.byte	0x2
	.value	0x532
	.byte	0x15
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x38
	.string	"c"
	.byte	0x2
	.value	0x532
	.byte	0x1e
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x38
	.string	"s"
	.byte	0x2
	.value	0x532
	.byte	0x2d
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.string	"n"
	.byte	0x2
	.value	0x534
	.byte	0xd
	.long	0xb13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF109
	.byte	0x2
	.value	0x535
	.byte	0x11
	.long	0x639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"e"
	.byte	0x2
	.value	0x536
	.byte	0x15
	.long	0x1393
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF1056
	.byte	0x2
	.value	0x53b
	.byte	0x10
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x36
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x35
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2b
	.long	.LASF1057
	.byte	0x2
	.value	0x55a
	.byte	0xc
	.long	0x589e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -51
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x58ae
	.uleb128 0xe
	.long	0xfc
	.byte	0xa
	.byte	0
	.uleb128 0x3a
	.long	.LASF1058
	.byte	0x2
	.value	0x508
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x593a
	.uleb128 0x2c
	.string	"i"
	.byte	0x2
	.value	0x50a
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2c
	.string	"s"
	.byte	0x2
	.value	0x51a
	.byte	0x17
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF1059
	.byte	0x2
	.value	0x51b
	.byte	0x12
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"j"
	.byte	0x2
	.value	0x51c
	.byte	0x12
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"k"
	.byte	0x2
	.value	0x51c
	.byte	0x15
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF5
	.byte	0x2
	.value	0x51d
	.byte	0x11
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1060
	.byte	0x2
	.value	0x4fc
	.byte	0x1
	.long	0x61
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x599c
	.uleb128 0x38
	.string	"m1"
	.byte	0x2
	.value	0x4fc
	.byte	0x1f
	.long	0x589
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"m2"
	.byte	0x2
	.value	0x4fc
	.byte	0x2f
	.long	0x589
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF1061
	.byte	0x2
	.value	0x4fe
	.byte	0x17
	.long	0x599c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF1062
	.byte	0x2
	.value	0x4ff
	.byte	0x17
	.long	0x599c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x232c
	.uleb128 0x3a
	.long	.LASF1063
	.byte	0x2
	.value	0x4db
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a38
	.uleb128 0x31
	.long	.LASF5
	.byte	0x2
	.value	0x4db
	.byte	0x16
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2b
	.long	.LASF1064
	.byte	0x2
	.value	0x4dd
	.byte	0x1e
	.long	0x288a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0x4de
	.byte	0x14
	.long	0x2851
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.long	.LASF761
	.byte	0x2
	.value	0x4df
	.byte	0x14
	.long	0x2851
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.long	.LASF1065
	.byte	0x2
	.value	0x4e0
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2b
	.long	.LASF1066
	.byte	0x2
	.value	0x4e1
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.string	"cs"
	.byte	0x2
	.value	0x4e2
	.byte	0x14
	.long	0x27b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x3a
	.long	.LASF1067
	.byte	0x2
	.value	0x4d0
	.byte	0x1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a79
	.uleb128 0x38
	.string	"dir"
	.byte	0x2
	.value	0x4d0
	.byte	0x1b
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.byte	0
	.uleb128 0x37
	.long	.LASF1068
	.byte	0x2
	.value	0x498
	.byte	0x1
	.long	0xeea
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b21
	.uleb128 0x31
	.long	.LASF315
	.byte	0x2
	.value	0x498
	.byte	0x1d
	.long	0x2851
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF1069
	.byte	0x2
	.value	0x49a
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LASF1070
	.byte	0x2
	.value	0x49a
	.byte	0xf
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"fp"
	.byte	0x2
	.value	0x49b
	.byte	0x9
	.long	0xeea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF1071
	.byte	0x2
	.value	0x4a4
	.byte	0x9
	.long	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x35
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2b
	.long	.LASF1072
	.byte	0x2
	.value	0x4c4
	.byte	0xf
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1073
	.byte	0x2
	.value	0x48d
	.byte	0x1
	.long	0x2851
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b55
	.uleb128 0x38
	.string	"pfp"
	.byte	0x2
	.value	0x48d
	.byte	0x15
	.long	0x355c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1074
	.byte	0x2
	.value	0x45d
	.byte	0x1
	.long	0x2851
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bdd
	.uleb128 0x38
	.string	"pfp"
	.byte	0x2
	.value	0x45d
	.byte	0x1b
	.long	0x355c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF1075
	.byte	0x2
	.value	0x45d
	.byte	0x25
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.long	.LASF1069
	.byte	0x2
	.value	0x45f
	.byte	0x7
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0x460
	.byte	0x14
	.long	0x2851
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2b
	.long	.LASF1070
	.byte	0x2
	.value	0x468
	.byte	0xb
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1076
	.byte	0x2
	.value	0x410
	.byte	0x1
	.long	0x247
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c77
	.uleb128 0x31
	.long	.LASF1070
	.byte	0x2
	.value	0x410
	.byte	0x10
	.long	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x31
	.long	.LASF1077
	.byte	0x2
	.value	0x410
	.byte	0x23
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF1078
	.byte	0x2
	.value	0x413
	.byte	0x14
	.long	0x2851
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.long	.LASF1072
	.byte	0x2
	.value	0x414
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2b
	.long	.LASF1079
	.byte	0x2
	.value	0x415
	.byte	0xa
	.long	0x56c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.string	"pid"
	.byte	0x2
	.value	0x416
	.byte	0x9
	.long	0x247
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.string	"cs"
	.byte	0x2
	.value	0x417
	.byte	0x14
	.long	0x27b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x3a
	.long	.LASF1080
	.byte	0x2
	.value	0x400
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cb7
	.uleb128 0x31
	.long	.LASF1081
	.byte	0x2
	.value	0x400
	.byte	0xe
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LASF1082
	.byte	0x2
	.value	0x400
	.byte	0x19
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1083
	.byte	0x2
	.value	0x3e6
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cf6
	.uleb128 0x38
	.string	"fp"
	.byte	0x2
	.value	0x3e6
	.byte	0x10
	.long	0xeea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF880
	.byte	0x2
	.value	0x3e6
	.byte	0x20
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF1084
	.byte	0x2
	.value	0x3db
	.byte	0x1
	.long	0xeea
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d49
	.uleb128 0x31
	.long	.LASF880
	.byte	0x2
	.value	0x3db
	.byte	0x15
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"how"
	.byte	0x2
	.value	0x3db
	.byte	0x27
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"fp"
	.byte	0x2
	.value	0x3dd
	.byte	0x9
	.long	0xeea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1085
	.byte	0x2
	.value	0x3b3
	.byte	0x1
	.long	0xeea
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e19
	.uleb128 0x31
	.long	.LASF880
	.byte	0x2
	.value	0x3b3
	.byte	0x1a
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.string	"how"
	.byte	0x2
	.value	0x3b3
	.byte	0x2c
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"fp"
	.byte	0x2
	.value	0x3b5
	.byte	0x9
	.long	0xeea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF1086
	.long	0x5e29
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7957
	.uleb128 0x33
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x5dd5
	.uleb128 0x2c
	.string	"fd"
	.byte	0x2
	.value	0x3c0
	.byte	0xf
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x35
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2b
	.long	.LASF1087
	.byte	0x2
	.value	0x3c9
	.byte	0xf
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF900
	.byte	0x2
	.value	0x3ca
	.byte	0x18
	.long	0x3725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x50
	.long	0x5e29
	.uleb128 0xe
	.long	0xfc
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.long	0x5e19
	.uleb128 0x37
	.long	.LASF1088
	.byte	0x2
	.value	0x379
	.byte	0x1
	.long	0x3725
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e80
	.uleb128 0x2b
	.long	.LASF1089
	.byte	0x2
	.value	0x37b
	.byte	0xe
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	outstat_errno.7945
	.uleb128 0x2b
	.long	.LASF1090
	.byte	0x2
	.value	0x37c
	.byte	0x16
	.long	0x9de
	.uleb128 0x9
	.byte	0x3
	.quad	outstat.7946
	.byte	0
	.uleb128 0x37
	.long	.LASF1091
	.byte	0x2
	.value	0x34a
	.byte	0x1
	.long	0x2851
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f7a
	.uleb128 0x38
	.string	"pfd"
	.byte	0x2
	.value	0x34a
	.byte	0x18
	.long	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x31
	.long	.LASF1075
	.byte	0x2
	.value	0x34a
	.byte	0x22
	.long	0x109e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2b
	.long	.LASF1092
	.byte	0x2
	.value	0x34c
	.byte	0x15
	.long	0x5e29
	.uleb128 0x9
	.byte	0x3
	.quad	slashbase.7931
	.uleb128 0x2b
	.long	.LASF1093
	.byte	0x2
	.value	0x34d
	.byte	0x11
	.long	0x202
	.uleb128 0x9
	.byte	0x3
	.quad	temp_dir_index.7932
	.uleb128 0x2c
	.string	"fd"
	.byte	0x2
	.value	0x34e
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2b
	.long	.LASF1072
	.byte	0x2
	.value	0x34f
	.byte	0x7
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2b
	.long	.LASF1094
	.byte	0x2
	.value	0x350
	.byte	0xf
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.string	"len"
	.byte	0x2
	.value	0x351
	.byte	0xa
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0x352
	.byte	0x14
	.long	0x2851
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2b
	.long	.LASF880
	.byte	0x2
	.value	0x354
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.string	"cs"
	.byte	0x2
	.value	0x355
	.byte	0x14
	.long	0x27b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.uleb128 0x3a
	.long	.LASF1095
	.byte	0x2
	.value	0x334
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fbc
	.uleb128 0x35
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2c
	.string	"cs"
	.byte	0x2
	.value	0x33a
	.byte	0x18
	.long	0x27b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1096
	.byte	0x2
	.value	0x328
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fec
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0x32a
	.byte	0x1a
	.long	0x5fec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x284c
	.uleb128 0x40
	.long	.LASF1097
	.byte	0x2
	.value	0x31f
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x40
	.long	.LASF1098
	.byte	0x2
	.value	0x316
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x40
	.long	.LASF1099
	.byte	0x2
	.value	0x30d
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF1100
	.byte	0x2
	.value	0x303
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x6073
	.uleb128 0x38
	.string	"pid"
	.byte	0x2
	.value	0x303
	.byte	0x12
	.long	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1101
	.byte	0x2
	.value	0x2f3
	.byte	0x1
	.long	0x109e
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x60c8
	.uleb128 0x38
	.string	"pid"
	.byte	0x2
	.value	0x2f3
	.byte	0x14
	.long	0x247
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.long	.LASF1102
	.byte	0x2
	.value	0x2f5
	.byte	0x13
	.long	0x2805
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0x2f8
	.byte	0x14
	.long	0x2851
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3a
	.long	.LASF1103
	.byte	0x2
	.value	0x2dd
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x60f8
	.uleb128 0x31
	.long	.LASF315
	.byte	0x2
	.value	0x2dd
	.byte	0x21
	.long	0x2851
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1104
	.byte	0x2
	.value	0x2c6
	.byte	0x1
	.long	0x247
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x616e
	.uleb128 0x38
	.string	"pid"
	.byte	0x2
	.value	0x2c6
	.byte	0xd
	.long	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF1105
	.byte	0x2
	.value	0x2c8
	.byte	0x7
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF1106
	.byte	0x2
	.value	0x2c9
	.byte	0x9
	.long	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x36
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0
	.uleb128 0x39
	.long	.LASF1107
	.byte	0x2
	.value	0x2b2
	.byte	0x1
	.long	0x109e
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x61ce
	.uleb128 0x38
	.string	"e1"
	.byte	0x2
	.value	0x2b2
	.byte	0x21
	.long	0x589
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"e2"
	.byte	0x2
	.value	0x2b2
	.byte	0x31
	.long	0x589
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"n1"
	.byte	0x2
	.value	0x2b4
	.byte	0x1a
	.long	0x5fec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"n2"
	.byte	0x2
	.value	0x2b5
	.byte	0x1a
	.long	0x5fec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1108
	.byte	0x2
	.value	0x2ab
	.byte	0x1
	.long	0x202
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x6222
	.uleb128 0x31
	.long	.LASF1109
	.byte	0x2
	.value	0x2ab
	.byte	0x1d
	.long	0x589
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF1110
	.byte	0x2
	.value	0x2ab
	.byte	0x2b
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x2
	.value	0x2ad
	.byte	0x1a
	.long	0x5fec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1111
	.byte	0x2
	.value	0x282
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x6252
	.uleb128 0x31
	.long	.LASF1105
	.byte	0x2
	.value	0x282
	.byte	0x23
	.long	0x6252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x27de
	.uleb128 0x3a
	.long	.LASF1112
	.byte	0x2
	.value	0x27a
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x6298
	.uleb128 0x31
	.long	.LASF1105
	.byte	0x2
	.value	0x27a
	.byte	0x1d
	.long	0x6298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"ret"
	.byte	0x2
	.value	0x27c
	.byte	0x7
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x27b3
	.uleb128 0x41
	.long	.LASF1114
	.byte	0x2
	.value	0x199
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x62ce
	.uleb128 0x31
	.long	.LASF1105
	.byte	0x2
	.value	0x199
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3b
	.long	.LASF1115
	.byte	0x2
	.value	0x192
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x630e
	.uleb128 0x31
	.long	.LASF1116
	.byte	0x2
	.value	0x192
	.byte	0x17
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF880
	.byte	0x2
	.value	0x192
	.byte	0x2c
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3b
	.long	.LASF1117
	.byte	0x2
	.value	0x177
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x6416
	.uleb128 0x31
	.long	.LASF1118
	.byte	0x2
	.value	0x177
	.byte	0x15
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x31
	.long	.LASF1119
	.byte	0x2
	.value	0x177
	.byte	0x29
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x6376
	.uleb128 0x2c
	.string	"__x"
	.byte	0x2
	.value	0x179
	.byte	0x3
	.long	0x25f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x33
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x63f3
	.uleb128 0x2b
	.long	.LASF1120
	.byte	0x2
	.value	0x182
	.byte	0xc
	.long	0x6416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"p"
	.byte	0x2
	.value	0x183
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x63d0
	.uleb128 0x2c
	.string	"__x"
	.byte	0x2
	.value	0x184
	.byte	0x7
	.long	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x35
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2c
	.string	"__x"
	.byte	0x2
	.value	0x185
	.byte	0x7
	.long	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2c
	.string	"__x"
	.byte	0x2
	.value	0x188
	.byte	0x3
	.long	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x6426
	.uleb128 0xe
	.long	0xfc
	.byte	0xb
	.byte	0
	.uleb128 0x3a
	.long	.LASF1121
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x64cb
	.uleb128 0x31
	.long	.LASF1122
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.long	.LASF1123
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x6481
	.uleb128 0x2e
	.long	.LASF1122
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xd1
	.byte	0
	.uleb128 0x2e
	.long	.LASF831
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xd1
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x6456
	.uleb128 0x2b
	.long	.LASF1123
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x64db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF831
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.long	.LASF1124
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x64e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.long	.LASF1125
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x6481
	.long	0x64db
	.uleb128 0xe
	.long	0xfc
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	0x64cb
	.uleb128 0x3
	.byte	0x8
	.long	0x6481
	.uleb128 0x40
	.long	.LASF1126
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x40
	.long	.LASF1127
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x42
	.long	.LASF1128
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	0xfc
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x6560
	.uleb128 0x43
	.string	"n"
	.byte	0x1
	.byte	0xb7
	.byte	0x1a
	.long	0xb13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x44
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x1
	.byte	0xbb
	.byte	0x8
	.uleb128 0x1e
	.long	.LASF1129
	.long	0xf4240
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	.LASF1130
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.long	0x109e
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x6591
	.uleb128 0x43
	.string	"ch"
	.byte	0x1
	.byte	0xa0
	.byte	0x1a
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x42
	.long	.LASF1131
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0xe7
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x65c2
	.uleb128 0x43
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x46
	.long	.LASF1137
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x47
	.long	.LASF1105
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.long	0x61
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x37
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x35
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
	.uleb128 0xc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x28
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x29
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	.LBB60-.Ltext0
	.quad	.LBE60-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB73-.Ltext0
	.quad	.LBE73-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	.LBB71-.Ltext0
	.quad	.LBE71-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB79-.Ltext0
	.quad	.LBE79-.Ltext0
	.quad	.LBB82-.Ltext0
	.quad	.LBE82-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	.LBB81-.Ltext0
	.quad	.LBE81-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB83-.Ltext0
	.quad	.LBE83-.Ltext0
	.quad	.LBB87-.Ltext0
	.quad	.LBE87-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB94-.Ltext0
	.quad	.LBE94-.Ltext0
	.quad	.LBB112-.Ltext0
	.quad	.LBE112-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB106-.Ltext0
	.quad	.LBE106-.Ltext0
	.quad	.LBB113-.Ltext0
	.quad	.LBE113-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF850:
	.string	"locale_ok"
.LASF577:
	.string	"_NL_CTYPE_OUTDIGIT9_WC"
.LASF296:
	.string	"total"
.LASF193:
	.string	"lconv"
.LASF75:
	.string	"__align"
.LASF861:
	.string	"nthreads_max"
.LASF258:
	.string	"_sys_errlist"
.LASF128:
	.string	"si_addr_lsb"
.LASF247:
	.string	"_unused2"
.LASF442:
	.string	"_NL_TIME_CAL_DIRECTION"
.LASF233:
	.string	"_fileno"
.LASF50:
	.string	"__pthread_mutex_s"
.LASF471:
	.string	"_NL_ABALTMON_1"
.LASF472:
	.string	"_NL_ABALTMON_2"
.LASF473:
	.string	"_NL_ABALTMON_3"
.LASF474:
	.string	"_NL_ABALTMON_4"
.LASF475:
	.string	"_NL_ABALTMON_5"
.LASF476:
	.string	"_NL_ABALTMON_6"
.LASF398:
	.string	"_NL_WDAY_4"
.LASF478:
	.string	"_NL_ABALTMON_8"
.LASF479:
	.string	"_NL_ABALTMON_9"
.LASF385:
	.string	"ERA_T_FMT"
.LASF402:
	.string	"_NL_WABMON_1"
.LASF403:
	.string	"_NL_WABMON_2"
.LASF404:
	.string	"_NL_WABMON_3"
.LASF405:
	.string	"_NL_WABMON_4"
.LASF406:
	.string	"_NL_WABMON_5"
.LASF407:
	.string	"_NL_WABMON_6"
.LASF176:
	.string	"exit_failure"
.LASF409:
	.string	"_NL_WABMON_8"
.LASF410:
	.string	"_NL_WABMON_9"
.LASF299:
	.string	"nproc_query"
.LASF423:
	.string	"_NL_WMON_10"
.LASF424:
	.string	"_NL_WMON_11"
.LASF425:
	.string	"_NL_WMON_12"
.LASF411:
	.string	"_NL_WABMON_10"
.LASF412:
	.string	"_NL_WABMON_11"
.LASF413:
	.string	"_NL_WABMON_12"
.LASF892:
	.string	"oflags"
.LASF213:
	.string	"int_p_sep_by_space"
.LASF705:
	.string	"_NL_IDENTIFICATION_EMAIL"
.LASF813:
	.string	"sigs"
.LASF538:
	.string	"_NL_CTYPE_INDIGITS1_MB"
.LASF895:
	.string	"avoid_trashing_input"
.LASF292:
	.string	"_Bool"
.LASF378:
	.string	"D_FMT"
.LASF858:
	.string	"opts"
.LASF1092:
	.string	"slashbase"
.LASF276:
	.string	"quoting_style_args"
.LASF438:
	.string	"_NL_TIME_WEEK_1STDAY"
.LASF1046:
	.string	"nfps"
.LASF970:
	.string	"compare"
.LASF980:
	.string	"greater"
.LASF116:
	.string	"si_uid"
.LASF842:
	.string	"need_random"
.LASF903:
	.string	"lo_threads"
.LASF918:
	.string	"merged_lo"
.LASF1066:
	.string	"unlink_errno"
.LASF1110:
	.string	"tabsize"
.LASF227:
	.string	"_IO_buf_end"
.LASF379:
	.string	"T_FMT"
.LASF107:
	.string	"__RLIM_NLIMITS"
.LASF238:
	.string	"_shortbuf"
.LASF109:
	.string	"rlimit"
.LASF444:
	.string	"_DATE_FMT"
.LASF191:
	.string	"_ISpunct"
.LASF497:
	.string	"_NL_COLLATE_RULESETS"
.LASF780:
	.string	"nondictionary"
.LASF557:
	.string	"_NL_CTYPE_INDIGITS9_WC"
.LASF1111:
	.string	"cs_leave"
.LASF1062:
	.string	"month2"
.LASF1088:
	.string	"get_outstatus"
.LASF575:
	.string	"_NL_CTYPE_OUTDIGIT7_WC"
.LASF514:
	.string	"_NL_COLLATE_CODESET"
.LASF1056:
	.string	"max_nmerge"
.LASF1075:
	.string	"survive_fd_exhaustion"
.LASF173:
	.string	"__environ"
.LASF1104:
	.string	"reap"
.LASF140:
	.string	"_sigpoll"
.LASF870:
	.string	"incompatible_options"
.LASF966:
	.string	"hr_buf"
.LASF792:
	.string	"keylist"
.LASF742:
	.string	"left"
.LASF727:
	.string	"hard_LC_COLLATE"
.LASF34:
	.string	"time_t"
.LASF1130:
	.string	"field_sep"
.LASF219:
	.string	"_flags"
.LASF1084:
	.string	"xfopen"
.LASF762:
	.string	"merge_node"
.LASF761:
	.string	"next"
.LASF877:
	.string	"ntemps"
.LASF736:
	.string	"length"
.LASF654:
	.string	"THOUSEP"
.LASF573:
	.string	"_NL_CTYPE_OUTDIGIT5_WC"
.LASF134:
	.string	"_arch"
.LASF699:
	.string	"_NL_MEASUREMENT_CODESET"
.LASF948:
	.string	"base"
.LASF23:
	.string	"__off_t"
.LASF999:
	.string	"key_to_opts"
.LASF692:
	.string	"_NL_TELEPHONE_TEL_INT_FMT"
.LASF1096:
	.string	"cleanup"
.LASF1042:
	.string	"begfield"
.LASF125:
	.string	"_addr_bnd"
.LASF726:
	.string	"MERGE_ROOT"
.LASF279:
	.string	"quote_quoting_options"
.LASF166:
	.string	"st_size"
.LASF744:
	.string	"keyfield"
.LASF655:
	.string	"__GROUPING"
.LASF1081:
	.string	"oldfd"
.LASF992:
	.string	"keynum"
.LASF555:
	.string	"_NL_CTYPE_INDIGITS7_WC"
.LASF196:
	.string	"grouping"
.LASF422:
	.string	"_NL_WMON_9"
.LASF1103:
	.string	"register_proc"
.LASF239:
	.string	"_lock"
.LASF807:
	.string	"check_types"
.LASF676:
	.string	"_NL_NAME_CODESET"
.LASF777:
	.string	"saved_line"
.LASF506:
	.string	"_NL_COLLATE_WEIGHTWC"
.LASF1026:
	.string	"human_numcompare"
.LASF340:
	.string	"ABDAY_4"
.LASF98:
	.string	"__RLIMIT_NPROC"
.LASF616:
	.string	"__N_SEP_BY_SPACE"
.LASF689:
	.string	"_NL_ADDRESS_LANG_LIB"
.LASF91:
	.string	"RLIMIT_DATA"
.LASF6:
	.string	"has_arg"
.LASF757:
	.string	"month"
.LASF891:
	.string	"check_output"
.LASF656:
	.string	"_NL_NUMERIC_DECIMAL_POINT_WC"
.LASF985:
	.string	"enda"
.LASF72:
	.string	"pthread_t"
.LASF571:
	.string	"_NL_CTYPE_OUTDIGIT3_WC"
.LASF635:
	.string	"_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE"
.LASF167:
	.string	"st_blksize"
.LASF95:
	.string	"RLIMIT_NOFILE"
.LASF179:
	.string	"TIMESPEC_HZ"
.LASF138:
	.string	"_sigchld"
.LASF1019:
	.string	"translated_size"
.LASF45:
	.string	"_gl_cxxalias_dummy"
.LASF1063:
	.string	"zaptemp"
.LASF124:
	.string	"_upper"
.LASF767:
	.string	"lo_child"
.LASF505:
	.string	"_NL_COLLATE_TABLEWC"
.LASF806:
	.string	"check_args"
.LASF814:
	.string	"UNCOMPRESSED"
.LASF151:
	.string	"sigaction"
.LASF105:
	.string	"__RLIMIT_RTTIME"
.LASF553:
	.string	"_NL_CTYPE_INDIGITS5_WC"
.LASF621:
	.string	"__INT_P_SEP_BY_SPACE"
.LASF178:
	.string	"uintmax_t"
.LASF703:
	.string	"_NL_IDENTIFICATION_ADDRESS"
.LASF988:
	.string	"stackbuf"
.LASF164:
	.string	"st_gid"
.LASF897:
	.string	"is_stdin"
.LASF839:
	.string	"checkonly"
.LASF1023:
	.string	"general_numcompare"
.LASF606:
	.string	"__MON_DECIMAL_POINT"
.LASF137:
	.string	"_timer"
.LASF679:
	.string	"_NL_ADDRESS_COUNTRY_NAME"
.LASF380:
	.string	"T_FMT_AMPM"
.LASF1039:
	.string	"ptrlim"
.LASF32:
	.string	"__syscall_slong_t"
.LASF280:
	.string	"argmatch_exit_fn"
.LASF155:
	.string	"sa_restorer"
.LASF225:
	.string	"_IO_write_end"
.LASF706:
	.string	"_NL_IDENTIFICATION_TEL"
.LASF691:
	.string	"_NL_NUM_LC_ADDRESS"
.LASF569:
	.string	"_NL_CTYPE_OUTDIGIT1_WC"
.LASF161:
	.string	"st_nlink"
.LASF53:
	.string	"__owner"
.LASF261:
	.string	"version_etc_copyright"
.LASF501:
	.string	"_NL_COLLATE_INDIRECTMB"
.LASF860:
	.string	"sortfiles"
.LASF733:
	.string	"eolchar"
.LASF820:
	.string	"temptail"
.LASF590:
	.string	"_NL_CTYPE_EXTRA_MAP_2"
.LASF133:
	.string	"_syscall"
.LASF711:
	.string	"_NL_IDENTIFICATION_APPLICATION"
.LASF619:
	.string	"_NL_MONETARY_CRNCYSTR"
.LASF171:
	.string	"st_ctim"
.LASF1009:
	.string	"debug_width"
.LASF809:
	.string	"sort_types"
.LASF990:
	.string	"key_warnings"
.LASF829:
	.string	"nthreads"
.LASF43:
	.string	"__sigset_t"
.LASF1007:
	.string	"key_numeric"
.LASF1122:
	.string	"program"
.LASF509:
	.string	"_NL_COLLATE_SYMB_HASH_SIZEMB"
.LASF551:
	.string	"_NL_CTYPE_INDIGITS3_WC"
.LASF964:
	.string	"disorder_line"
.LASF429:
	.string	"_NL_WD_FMT"
.LASF307:
	.string	"plain"
.LASF869:
	.string	"check_ordering_compatibility"
.LASF1085:
	.string	"stream_open"
.LASF79:
	.string	"__tzname"
.LASF51:
	.string	"__lock"
.LASF972:
	.string	"alen"
.LASF765:
	.string	"dest"
.LASF1051:
	.string	"default_sort_size"
.LASF917:
	.string	"to_merge"
.LASF430:
	.string	"_NL_WT_FMT"
.LASF49:
	.string	"__pthread_list_t"
.LASF853:
	.string	"minus_pos_usage"
.LASF802:
	.string	"SORT_OPTION"
.LASF837:
	.string	"gkey"
.LASF311:
	.string	"chunk"
.LASF136:
	.string	"_kill"
.LASF1126:
	.string	"emit_mandatory_arg_note"
.LASF888:
	.string	"num_merged"
.LASF92:
	.string	"RLIMIT_STACK"
.LASF195:
	.string	"thousands_sep"
.LASF111:
	.string	"rlim_max"
.LASF1116:
	.string	"message"
.LASF328:
	.string	"o_data"
.LASF974:
	.string	"keycompare"
.LASF1045:
	.string	"sort_buffer_size"
.LASF16:
	.string	"__uintmax_t"
.LASF169:
	.string	"st_atim"
.LASF1032:
	.string	"ends_with_thousands_sep"
.LASF900:
	.string	"outst"
.LASF643:
	.string	"_NL_MONETARY_UNO_VALID_TO"
.LASF0:
	.string	"optarg"
.LASF363:
	.string	"MON_1"
.LASF364:
	.string	"MON_2"
.LASF365:
	.string	"MON_3"
.LASF366:
	.string	"MON_4"
.LASF367:
	.string	"MON_5"
.LASF368:
	.string	"MON_6"
.LASF369:
	.string	"MON_7"
.LASF370:
	.string	"MON_8"
.LASF371:
	.string	"MON_9"
.LASF1036:
	.string	"line_start"
.LASF922:
	.string	"queue_insert"
.LASF26:
	.string	"__clock_t"
.LASF529:
	.string	"_NL_CTYPE_MB_CUR_MAX"
.LASF928:
	.string	"nodea"
.LASF929:
	.string	"nodeb"
.LASF690:
	.string	"_NL_ADDRESS_CODESET"
.LASF863:
	.string	"set_ordering"
.LASF588:
	.string	"_NL_CTYPE_NONASCII_CASE"
.LASF256:
	.string	"sys_errlist"
.LASF113:
	.string	"sival_ptr"
.LASF648:
	.string	"_NL_MONETARY_THOUSANDS_SEP_WC"
.LASF526:
	.string	"_NL_CTYPE_CLASS_NAMES"
.LASF18:
	.string	"__uid_t"
.LASF83:
	.string	"daylight"
.LASF122:
	.string	"si_stime"
.LASF549:
	.string	"_NL_CTYPE_INDIGITS1_WC"
.LASF713:
	.string	"_NL_IDENTIFICATION_REVISION"
.LASF639:
	.string	"_NL_MONETARY_DUO_N_SIGN_POSN"
.LASF351:
	.string	"ABMON_1"
.LASF352:
	.string	"ABMON_2"
.LASF353:
	.string	"ABMON_3"
.LASF354:
	.string	"ABMON_4"
.LASF355:
	.string	"ABMON_5"
.LASF356:
	.string	"ABMON_6"
.LASF357:
	.string	"ABMON_7"
.LASF358:
	.string	"ABMON_8"
.LASF359:
	.string	"ABMON_9"
.LASF377:
	.string	"D_T_FMT"
.LASF517:
	.string	"_NL_CTYPE_TOUPPER"
.LASF1054:
	.string	"specify_sort_size"
.LASF902:
	.string	"sortlines"
.LASF315:
	.string	"temp"
.LASF198:
	.string	"currency_symbol"
.LASF533:
	.string	"_NL_CTYPE_TOLOWER32"
.LASF303:
	.string	"_obstack_chunk"
.LASF73:
	.string	"__data"
.LASF923:
	.string	"queue_init"
.LASF798:
	.string	"DEBUG_PROGRAM_OPTION"
.LASF1074:
	.string	"maybe_create_temp"
.LASF613:
	.string	"__P_CS_PRECEDES"
.LASF1099:
	.string	"reap_exited"
.LASF232:
	.string	"_chain"
.LASF132:
	.string	"_call_addr"
.LASF214:
	.string	"int_n_cs_precedes"
.LASF1082:
	.string	"newfd"
.LASF754:
	.string	"random"
.LASF721:
	.string	"SORT_OUT_OF_ORDER"
.LASF456:
	.string	"__ALTMON_10"
.LASF457:
	.string	"__ALTMON_11"
.LASF458:
	.string	"__ALTMON_12"
.LASF604:
	.string	"__INT_CURR_SYMBOL"
.LASF833:
	.string	"output_temp"
.LASF189:
	.string	"_ISblank"
.LASF8:
	.string	"unsigned char"
.LASF857:
	.string	"file_number"
.LASF1100:
	.string	"wait_proc"
.LASF1020:
	.string	"random_md5_state_init"
.LASF1117:
	.string	"async_safe_die"
.LASF267:
	.string	"shell_always_quoting_style"
.LASF76:
	.string	"pthread_mutex_t"
.LASF106:
	.string	"__RLIMIT_NLIMITS"
.LASF30:
	.string	"__blkcnt_t"
.LASF447:
	.string	"__ALTMON_1"
.LASF1136:
	.string	"_IO_lock_t"
.LASF291:
	.string	"float"
.LASF310:
	.string	"chunk_size"
.LASF937:
	.string	"root"
.LASF336:
	.string	"LONGINT_INVALID"
.LASF274:
	.string	"clocale_quoting_style"
.LASF826:
	.string	"random_md5_state"
.LASF1107:
	.string	"proctab_comparator"
.LASF1059:
	.string	"s_len"
.LASF878:
	.string	"output_file_created"
.LASF1043:
	.string	"buffer_linelim"
.LASF154:
	.string	"sa_flags"
.LASF175:
	.string	"Version"
.LASF986:
	.string	"endb"
.LASF776:
	.string	"heap"
.LASF883:
	.string	"merge_tree"
.LASF300:
	.string	"NPROC_ALL"
.LASF40:
	.string	"off_t"
.LASF312:
	.string	"object_base"
.LASF333:
	.string	"LONGINT_OVERFLOW"
.LASF284:
	.string	"error_one_per_line"
.LASF693:
	.string	"_NL_TELEPHONE_TEL_DOM_FMT"
.LASF862:
	.string	"key_init"
.LASF782:
	.string	"monthtab"
.LASF1008:
	.string	"mark_key"
.LASF941:
	.string	"sorted_lo"
.LASF183:
	.string	"_ISalpha"
.LASF55:
	.string	"__kind"
.LASF646:
	.string	"_NL_MONETARY_CONVERSION_RATE"
.LASF686:
	.string	"_NL_ADDRESS_LANG_NAME"
.LASF516:
	.string	"_NL_CTYPE_CLASS"
.LASF21:
	.string	"__mode_t"
.LASF740:
	.string	"nlines"
.LASF1028:
	.string	"number"
.LASF1035:
	.string	"avail"
.LASF940:
	.string	"swap"
.LASF28:
	.string	"__time_t"
.LASF511:
	.string	"_NL_COLLATE_SYMB_EXTRAMB"
.LASF811:
	.string	"cs_status"
.LASF101:
	.string	"__RLIMIT_SIGPENDING"
.LASF685:
	.string	"_NL_ADDRESS_COUNTRY_ISBN"
.LASF909:
	.string	"merge_loop"
.LASF1118:
	.string	"errnum"
.LASF951:
	.string	"probe"
.LASF854:
	.string	"optarg1"
.LASF535:
	.string	"_NL_CTYPE_MAP_OFFSET"
.LASF69:
	.string	"__g1_orig_size"
.LASF871:
	.string	"badfieldspec"
.LASF768:
	.string	"hi_child"
.LASF187:
	.string	"_ISprint"
.LASF297:
	.string	"buflen"
.LASF192:
	.string	"_ISalnum"
.LASF904:
	.string	"hi_threads"
.LASF640:
	.string	"_NL_MONETARY_DUO_INT_P_SIGN_POSN"
.LASF831:
	.string	"node"
.LASF224:
	.string	"_IO_write_ptr"
.LASF977:
	.string	"lima"
.LASF978:
	.string	"limb"
.LASF881:
	.string	"bytes_per_line"
.LASF203:
	.string	"negative_sign"
.LASF683:
	.string	"_NL_ADDRESS_COUNTRY_CAR"
.LASF306:
	.string	"contents"
.LASF508:
	.string	"_NL_COLLATE_INDIRECTWC"
.LASF1094:
	.string	"temp_dir"
.LASF751:
	.string	"skipsblanks"
.LASF186:
	.string	"_ISspace"
.LASF983:
	.string	"tlena"
.LASF984:
	.string	"tlenb"
.LASF1065:
	.string	"unlink_status"
.LASF794:
	.string	"debug"
.LASF325:
	.string	"Tokens"
.LASF947:
	.string	"savealloc"
.LASF1102:
	.string	"test"
.LASF914:
	.string	"mergelines_node"
.LASF414:
	.string	"_NL_WMON_1"
.LASF415:
	.string	"_NL_WMON_2"
.LASF416:
	.string	"_NL_WMON_3"
.LASF417:
	.string	"_NL_WMON_4"
.LASF418:
	.string	"_NL_WMON_5"
.LASF419:
	.string	"_NL_WMON_6"
.LASF420:
	.string	"_NL_WMON_7"
.LASF421:
	.string	"_NL_WMON_8"
.LASF197:
	.string	"int_curr_symbol"
.LASF764:
	.string	"end_hi"
.LASF1137:
	.string	"initialize_exit_failure"
.LASF734:
	.string	"line"
.LASF376:
	.string	"PM_STR"
.LASF439:
	.string	"_NL_TIME_WEEK_1STWEEK"
.LASF346:
	.string	"DAY_3"
.LASF459:
	.string	"_NL_WALTMON_1"
.LASF460:
	.string	"_NL_WALTMON_2"
.LASF461:
	.string	"_NL_WALTMON_3"
.LASF462:
	.string	"_NL_WALTMON_4"
.LASF463:
	.string	"_NL_WALTMON_5"
.LASF464:
	.string	"_NL_WALTMON_6"
.LASF465:
	.string	"_NL_WALTMON_7"
.LASF350:
	.string	"DAY_7"
.LASF467:
	.string	"_NL_WALTMON_9"
.LASF27:
	.string	"__rlim_t"
.LASF527:
	.string	"_NL_CTYPE_MAP_NAMES"
.LASF99:
	.string	"__RLIMIT_MEMLOCK"
.LASF728:
	.string	"hard_LC_TIME"
.LASF74:
	.string	"__size"
.LASF774:
	.string	"mutex"
.LASF989:
	.string	"size"
.LASF971:
	.string	"diff"
.LASF293:
	.string	"Hash_table"
.LASF248:
	.string	"FILE"
.LASF745:
	.string	"sword"
.LASF674:
	.string	"_NL_NAME_NAME_MISS"
.LASF996:
	.string	"obuf"
.LASF671:
	.string	"_NL_NAME_NAME_GEN"
.LASF185:
	.string	"_ISxdigit"
.LASF1095:
	.string	"exit_cleanup"
.LASF898:
	.string	"same"
.LASF67:
	.string	"__g_refs"
.LASF390:
	.string	"_NL_WABDAY_3"
.LASF33:
	.string	"size_t"
.LASF718:
	.string	"_NL_NUM"
.LASF824:
	.string	"nprocs"
.LASF85:
	.string	"getdate_err"
.LASF52:
	.string	"__count"
.LASF803:
	.string	"PARALLEL_OPTION"
.LASF968:
	.string	"n_bytes"
.LASF275:
	.string	"custom_quoting_style"
.LASF566:
	.string	"_NL_CTYPE_OUTDIGIT8_MB"
.LASF375:
	.string	"AM_STR"
.LASF778:
	.string	"blanks"
.LASF890:
	.string	"nopened"
.LASF1053:
	.string	"specify_nthreads"
.LASF381:
	.string	"__ERA_YEAR"
.LASF532:
	.string	"_NL_CTYPE_TOUPPER32"
.LASF295:
	.string	"md5_ctx"
.LASF669:
	.string	"_NL_NUM_LC_PAPER"
.LASF228:
	.string	"_IO_save_base"
.LASF262:
	.string	"program_name"
.LASF331:
	.string	"strtol_error"
.LASF924:
	.string	"queue_destroy"
.LASF670:
	.string	"_NL_NAME_NAME_FMT"
.LASF821:
	.string	"sortfile"
.LASF912:
	.string	"lo_avail"
.LASF200:
	.string	"mon_thousands_sep"
.LASF1133:
	.string	"src/sort.c"
.LASF174:
	.string	"environ"
.LASF1072:
	.string	"saved_errno"
.LASF70:
	.string	"__wrefs"
.LASF969:
	.string	"ebuf"
.LASF153:
	.string	"sa_mask"
.LASF681:
	.string	"_NL_ADDRESS_COUNTRY_AB2"
.LASF682:
	.string	"_NL_ADDRESS_COUNTRY_AB3"
.LASF564:
	.string	"_NL_CTYPE_OUTDIGIT6_MB"
.LASF695:
	.string	"_NL_TELEPHONE_INT_PREFIX"
.LASF763:
	.string	"end_lo"
.LASF894:
	.string	"check_inputs"
.LASF114:
	.string	"__sigval_t"
.LASF382:
	.string	"ERA_D_FMT"
.LASF1064:
	.string	"pnode"
.LASF949:
	.string	"linelim"
.LASF1041:
	.string	"limfield"
.LASF880:
	.string	"file"
.LASF735:
	.string	"text"
.LASF332:
	.string	"LONGINT_OK"
.LASF1029:
	.string	"minus_sign"
.LASF242:
	.string	"_wide_data"
.LASF1010:
	.string	"compare_random"
.LASF963:
	.string	"linebase"
.LASF22:
	.string	"__nlink_t"
.LASF536:
	.string	"_NL_CTYPE_INDIGITS_MB_LEN"
.LASF545:
	.string	"_NL_CTYPE_INDIGITS8_MB"
.LASF127:
	.string	"si_addr"
.LASF1123:
	.string	"infomap"
.LASF266:
	.string	"shell_quoting_style"
.LASF160:
	.string	"st_ino"
.LASF162:
	.string	"st_mode"
.LASF427:
	.string	"_NL_WPM_STR"
.LASF587:
	.string	"_NL_CTYPE_MAP_TO_NONASCII"
.LASF810:
	.string	"caught_signals"
.LASF1078:
	.string	"saved_temphead"
.LASF1037:
	.string	"readsize"
.LASF633:
	.string	"_NL_MONETARY_DUO_N_SEP_BY_SPACE"
.LASF605:
	.string	"__CURRENCY_SYMBOL"
.LASF46:
	.string	"__pthread_internal_list"
.LASF47:
	.string	"__prev"
.LASF822:
	.string	"proctab"
.LASF848:
	.string	"files_from"
.LASF896:
	.string	"tempcopy"
.LASF190:
	.string	"_IScntrl"
.LASF440:
	.string	"_NL_TIME_FIRST_WEEKDAY"
.LASF653:
	.string	"__THOUSANDS_SEP"
.LASF967:
	.string	"write_line"
.LASF562:
	.string	"_NL_CTYPE_OUTDIGIT4_MB"
.LASF181:
	.string	"_ISupper"
.LASF112:
	.string	"sival_int"
.LASF518:
	.string	"_NL_CTYPE_GAP1"
.LASF520:
	.string	"_NL_CTYPE_GAP2"
.LASF522:
	.string	"_NL_CTYPE_GAP3"
.LASF144:
	.string	"si_code"
.LASF524:
	.string	"_NL_CTYPE_GAP5"
.LASF525:
	.string	"_NL_CTYPE_GAP6"
.LASF725:
	.string	"MERGE_END"
.LASF625:
	.string	"__INT_N_SIGN_POSN"
.LASF652:
	.string	"RADIXCHAR"
.LASF194:
	.string	"decimal_point"
.LASF647:
	.string	"_NL_MONETARY_DECIMAL_POINT_WC"
.LASF673:
	.string	"_NL_NAME_NAME_MRS"
.LASF426:
	.string	"_NL_WAM_STR"
.LASF1014:
	.string	"sizea"
.LASF1016:
	.string	"sizeb"
.LASF859:
	.string	"tmp_dir"
.LASF800:
	.string	"NMERGE_OPTION"
.LASF317:
	.string	"chunkfun"
.LASF543:
	.string	"_NL_CTYPE_INDIGITS6_MB"
.LASF1132:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF756:
	.string	"human_numeric"
.LASF956:
	.string	"check"
.LASF1091:
	.string	"create_temp_file"
.LASF1097:
	.string	"reap_all"
.LASF31:
	.string	"__ssize_t"
.LASF915:
	.string	"lo_orig"
.LASF1077:
	.string	"tries"
.LASF885:
	.string	"merge"
.LASF205:
	.string	"frac_digits"
.LASF36:
	.string	"timespec"
.LASF428:
	.string	"_NL_WD_T_FMT"
.LASF933:
	.string	"parent_end"
.LASF723:
	.string	"MAX_FORK_TRIES_COMPRESS"
.LASF708:
	.string	"_NL_IDENTIFICATION_LANGUAGE"
.LASF334:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF560:
	.string	"_NL_CTYPE_OUTDIGIT2_MB"
.LASF1101:
	.string	"delete_proc"
.LASF1119:
	.string	"errstr"
.LASF650:
	.string	"_NL_NUM_LC_MONETARY"
.LASF42:
	.string	"__val"
.LASF952:
	.string	"ord0"
.LASF260:
	.string	"GETOPT_VERSION_CHAR"
.LASF81:
	.string	"__timezone"
.LASF1076:
	.string	"pipe_fork"
.LASF78:
	.string	"pthread_cond_t"
.LASF1115:
	.string	"sort_die"
.LASF962:
	.string	"found_disorder"
.LASF148:
	.string	"__sighandler_t"
.LASF707:
	.string	"_NL_IDENTIFICATION_FAX"
.LASF285:
	.string	"FADVISE_NORMAL"
.LASF541:
	.string	"_NL_CTYPE_INDIGITS4_MB"
.LASF287:
	.string	"FADVISE_NOREUSE"
.LASF100:
	.string	"__RLIMIT_LOCKS"
.LASF868:
	.string	"sighandler"
.LASF163:
	.string	"st_uid"
.LASF724:
	.string	"MAX_FORK_TRIES_DECOMPRESS"
.LASF308:
	.string	"extra"
.LASF907:
	.string	"sortlines_thread"
.LASF668:
	.string	"_NL_PAPER_CODESET"
.LASF715:
	.string	"_NL_IDENTIFICATION_CATEGORY"
.LASF123:
	.string	"_lower"
.LASF1121:
	.string	"emit_ancillary_info"
.LASF443:
	.string	"_NL_TIME_TIMEZONE"
.LASF507:
	.string	"_NL_COLLATE_EXTRAWC"
.LASF729:
	.string	"blanktype"
.LASF804:
	.string	"short_options"
.LASF769:
	.string	"level"
.LASF795:
	.string	"nmerge"
.LASF254:
	.string	"stderr"
.LASF558:
	.string	"_NL_CTYPE_OUTDIGIT0_MB"
.LASF844:
	.string	"posixly_correct"
.LASF5:
	.string	"name"
.LASF209:
	.string	"n_sep_by_space"
.LASF88:
	.string	"program_invocation_short_name"
.LASF1114:
	.string	"usage"
.LASF1048:
	.string	"worst_case_per_input_byte"
.LASF230:
	.string	"_IO_save_end"
.LASF750:
	.string	"translate"
.LASF288:
	.string	"FADVISE_DONTNEED"
.LASF836:
	.string	"key_buf"
.LASF48:
	.string	"__next"
.LASF612:
	.string	"__FRAC_DIGITS"
.LASF206:
	.string	"p_cs_precedes"
.LASF388:
	.string	"_NL_WABDAY_1"
.LASF389:
	.string	"_NL_WABDAY_2"
.LASF7:
	.string	"flag"
.LASF391:
	.string	"_NL_WABDAY_4"
.LASF392:
	.string	"_NL_WABDAY_5"
.LASF393:
	.string	"_NL_WABDAY_6"
.LASF394:
	.string	"_NL_WABDAY_7"
.LASF329:
	.string	"o_tok"
.LASF815:
	.string	"UNREAPED"
.LASF603:
	.string	"_NL_NUM_LC_CTYPE"
.LASF253:
	.string	"stdout"
.LASF272:
	.string	"escape_quoting_style"
.LASF959:
	.string	"nonunique"
.LASF953:
	.string	"count_of_smaller_lines"
.LASF4:
	.string	"optopt"
.LASF1044:
	.string	"initbuf"
.LASF201:
	.string	"mon_grouping"
.LASF747:
	.string	"eword"
.LASF576:
	.string	"_NL_CTYPE_OUTDIGIT8_WC"
.LASF135:
	.string	"_pad"
.LASF1086:
	.string	"__PRETTY_FUNCTION__"
.LASF697:
	.string	"_NL_NUM_LC_TELEPHONE"
.LASF1018:
	.string	"destsize"
.LASF636:
	.string	"_NL_MONETARY_DUO_INT_N_CS_PRECEDES"
.LASF408:
	.string	"_NL_WABMON_7"
.LASF817:
	.string	"tempnode"
.LASF57:
	.string	"__elision"
.LASF65:
	.string	"__g1_start32"
.LASF786:
	.string	"temp_dir_count"
.LASF1079:
	.string	"wait_retry"
.LASF987:
	.string	"allocated"
.LASF326:
	.string	"n_tok"
.LASF638:
	.string	"_NL_MONETARY_DUO_P_SIGN_POSN"
.LASF717:
	.string	"_NL_NUM_LC_IDENTIFICATION"
.LASF634:
	.string	"_NL_MONETARY_DUO_INT_P_CS_PRECEDES"
.LASF9:
	.string	"short unsigned int"
.LASF110:
	.string	"rlim_cur"
.LASF642:
	.string	"_NL_MONETARY_UNO_VALID_FROM"
.LASF12:
	.string	"signed char"
.LASF68:
	.string	"__g_size"
.LASF29:
	.string	"__blksize_t"
.LASF758:
	.string	"reverse"
.LASF932:
	.string	"is_lo_child"
.LASF637:
	.string	"_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE"
.LASF779:
	.string	"nonprinting"
.LASF732:
	.string	"bl_both"
.LASF537:
	.string	"_NL_CTYPE_INDIGITS0_MB"
.LASF927:
	.string	"compare_nodes"
.LASF477:
	.string	"_NL_ABALTMON_7"
.LASF1105:
	.string	"status"
.LASF387:
	.string	"_NL_TIME_ERA_ENTRIES"
.LASF115:
	.string	"si_pid"
.LASF64:
	.string	"__g1_start"
.LASF574:
	.string	"_NL_CTYPE_OUTDIGIT6_WC"
.LASF680:
	.string	"_NL_ADDRESS_COUNTRY_POST"
.LASF129:
	.string	"_bounds"
.LASF1113:
	.string	"main"
.LASF24:
	.string	"__off64_t"
.LASF321:
	.string	"maybe_empty_object"
.LASF141:
	.string	"_sigsys"
.LASF775:
	.string	"cond"
.LASF222:
	.string	"_IO_read_base"
.LASF791:
	.string	"have_read_stdin"
.LASF936:
	.string	"merge_tree_init"
.LASF240:
	.string	"_offset"
.LASF865:
	.string	"string"
.LASF556:
	.string	"_NL_CTYPE_INDIGITS8_WC"
.LASF731:
	.string	"bl_end"
.LASF271:
	.string	"c_maybe_quoting_style"
.LASF818:
	.string	"state"
.LASF44:
	.string	"sigset_t"
.LASF1050:
	.string	"worst_case"
.LASF323:
	.string	"obstack_alloc_failed_handler"
.LASF433:
	.string	"_NL_WERA_D_FMT"
.LASF631:
	.string	"_NL_MONETARY_DUO_P_SEP_BY_SPACE"
.LASF957:
	.string	"file_name"
.LASF913:
	.string	"hi_avail"
.LASF211:
	.string	"n_sign_posn"
.LASF847:
	.string	"files"
.LASF1106:
	.string	"cpid"
.LASF943:
	.string	"mergefiles"
.LASF3:
	.string	"opterr"
.LASF1124:
	.string	"map_prog"
.LASF436:
	.string	"_NL_WERA_T_FMT"
.LASF500:
	.string	"_NL_COLLATE_EXTRAMB"
.LASF246:
	.string	"_mode"
.LASF889:
	.string	"nshortmerge"
.LASF223:
	.string	"_IO_write_base"
.LASF704:
	.string	"_NL_IDENTIFICATION_CONTACT"
.LASF572:
	.string	"_NL_CTYPE_OUTDIGIT4_WC"
.LASF749:
	.string	"ignore"
.LASF1089:
	.string	"outstat_errno"
.LASF1080:
	.string	"move_fd"
.LASF519:
	.string	"_NL_CTYPE_TOLOWER"
.LASF492:
	.string	"_NL_WABALTMON_10"
.LASF493:
	.string	"_NL_WABALTMON_11"
.LASF494:
	.string	"_NL_WABALTMON_12"
.LASF960:
	.string	"ordered"
.LASF787:
	.string	"temp_dir_alloc"
.LASF277:
	.string	"quoting_style_vals"
.LASF294:
	.string	"hash_table"
.LASF582:
	.string	"_NL_CTYPE_TRANSLIT_TO_TBL"
.LASF554:
	.string	"_NL_CTYPE_INDIGITS6_WC"
.LASF884:
	.string	"tempfiles"
.LASF510:
	.string	"_NL_COLLATE_SYMB_TABLEMB"
.LASF1127:
	.string	"emit_stdin_note"
.LASF62:
	.string	"__wseq32"
.LASF827:
	.string	"thread_args"
.LASF14:
	.string	"long int"
.LASF150:
	.string	"sa_sigaction"
.LASF289:
	.string	"FADVISE_WILLNEED"
.LASF1068:
	.string	"open_temp"
.LASF445:
	.string	"_NL_W_DATE_FMT"
.LASF644:
	.string	"_NL_MONETARY_DUO_VALID_FROM"
.LASF437:
	.string	"_NL_TIME_WEEK_NDAYS"
.LASF649:
	.string	"_NL_MONETARY_CODESET"
.LASF660:
	.string	"__YESEXPR"
.LASF512:
	.string	"_NL_COLLATE_COLLSEQMB"
.LASF1017:
	.string	"xstrxfrm"
.LASF911:
	.string	"queue_check_insert"
.LASF249:
	.string	"_IO_marker"
.LASF216:
	.string	"int_p_sign_posn"
.LASF1093:
	.string	"temp_dir_index"
.LASF663:
	.string	"__NOSTR"
.LASF741:
	.string	"alloc"
.LASF304:
	.string	"limit"
.LASF843:
	.string	"nfiles"
.LASF264:
	.string	"quoting_style"
.LASF531:
	.string	"CODESET"
.LASF570:
	.string	"_NL_CTYPE_OUTDIGIT2_WC"
.LASF1073:
	.string	"create_temp"
.LASF945:
	.string	"saved"
.LASF1031:
	.string	"traverse_raw_number"
.LASF1021:
	.string	"randread_source"
.LASF838:
	.string	"gkey_only"
.LASF789:
	.string	"TAB_DEFAULT"
.LASF579:
	.string	"_NL_CTYPE_TRANSLIT_FROM_IDX"
.LASF1012:
	.string	"bufsize"
.LASF152:
	.string	"__sigaction_handler"
.LASF632:
	.string	"_NL_MONETARY_DUO_N_CS_PRECEDES"
.LASF199:
	.string	"mon_decimal_point"
.LASF1135:
	.string	"sigval"
.LASF552:
	.string	"_NL_CTYPE_INDIGITS4_WC"
.LASF177:
	.string	"uint32_t"
.LASF730:
	.string	"bl_start"
.LASF628:
	.string	"_NL_MONETARY_DUO_INT_FRAC_DIGITS"
.LASF25:
	.string	"__pid_t"
.LASF760:
	.string	"traditional_used"
.LASF250:
	.string	"_IO_codecvt"
.LASF790:
	.string	"unique"
.LASF886:
	.string	"remainder"
.LASF688:
	.string	"_NL_ADDRESS_LANG_TERM"
.LASF265:
	.string	"literal_quoting_style"
.LASF1131:
	.string	"to_uchar"
.LASF973:
	.string	"blen"
.LASF852:
	.string	"nsigs"
.LASF938:
	.string	"sequential_sort"
.LASF86:
	.string	"long double"
.LASF630:
	.string	"_NL_MONETARY_DUO_P_CS_PRECEDES"
.LASF498:
	.string	"_NL_COLLATE_TABLEMB"
.LASF828:
	.string	"lines"
.LASF770:
	.string	"queued"
.LASF942:
	.string	"mergelines"
.LASF316:
	.string	"alignment_mask"
.LASF991:
	.string	"ugkey"
.LASF534:
	.string	"_NL_CTYPE_CLASS_OFFSET"
.LASF935:
	.string	"n_nodes"
.LASF431:
	.string	"_NL_WT_FMT_AMPM"
.LASF1033:
	.string	"fillbuf"
.LASF1038:
	.string	"bytes_read"
.LASF788:
	.string	"stable"
.LASF207:
	.string	"p_sep_by_space"
.LASF318:
	.string	"freefun"
.LASF11:
	.string	"long unsigned int"
.LASF568:
	.string	"_NL_CTYPE_OUTDIGIT0_WC"
.LASF737:
	.string	"keybeg"
.LASF753:
	.string	"numeric"
.LASF441:
	.string	"_NL_TIME_FIRST_WORKDAY"
.LASF578:
	.string	"_NL_CTYPE_TRANSLIT_TAB_SIZE"
.LASF1109:
	.string	"entry"
.LASF496:
	.string	"_NL_COLLATE_NRULES"
.LASF120:
	.string	"si_status"
.LASF126:
	.string	"_pkey"
.LASF872:
	.string	"spec"
.LASF96:
	.string	"__RLIMIT_OFILE"
.LASF930:
	.string	"init_node"
.LASF799:
	.string	"FILES0_FROM_OPTION"
.LASF550:
	.string	"_NL_CTYPE_INDIGITS2_WC"
.LASF887:
	.string	"cheap_slots"
.LASF523:
	.string	"_NL_CTYPE_GAP4"
.LASF2:
	.string	"char"
.LASF816:
	.string	"REAPED"
.LASF701:
	.string	"_NL_IDENTIFICATION_TITLE"
.LASF773:
	.string	"priority_queue"
.LASF320:
	.string	"use_extra_arg"
.LASF252:
	.string	"stdin"
.LASF344:
	.string	"DAY_1"
.LASF345:
	.string	"DAY_2"
.LASF56:
	.string	"__spins"
.LASF347:
	.string	"DAY_4"
.LASF348:
	.string	"DAY_5"
.LASF349:
	.string	"DAY_6"
.LASF313:
	.string	"next_free"
.LASF226:
	.string	"_IO_buf_base"
.LASF623:
	.string	"__INT_N_SEP_BY_SPACE"
.LASF846:
	.string	"traditional_usage"
.LASF54:
	.string	"__nusers"
.LASF614:
	.string	"__P_SEP_BY_SPACE"
.LASF17:
	.string	"__dev_t"
.LASF950:
	.string	"smallest"
.LASF738:
	.string	"keylim"
.LASF89:
	.string	"RLIMIT_CPU"
.LASF172:
	.string	"__glibc_reserved"
.LASF270:
	.string	"c_quoting_style"
.LASF1002:
	.string	"debug_key"
.LASF783:
	.string	"merge_buffer_size"
.LASF221:
	.string	"_IO_read_end"
.LASF712:
	.string	"_NL_IDENTIFICATION_ABBREVIATION"
.LASF700:
	.string	"_NL_NUM_LC_MEASUREMENT"
.LASF330:
	.string	"o_tok_len"
.LASF1013:
	.string	"guess_bufsize"
.LASF337:
	.string	"ABDAY_1"
.LASF338:
	.string	"ABDAY_2"
.LASF339:
	.string	"ABDAY_3"
.LASF218:
	.string	"_IO_FILE"
.LASF341:
	.string	"ABDAY_5"
.LASF342:
	.string	"ABDAY_6"
.LASF343:
	.string	"ABDAY_7"
.LASF808:
	.string	"sort_args"
.LASF251:
	.string	"_IO_wide_data"
.LASF548:
	.string	"_NL_CTYPE_INDIGITS0_WC"
.LASF1040:
	.string	"line_alloc"
.LASF446:
	.string	"_NL_TIME_CODESET"
.LASF82:
	.string	"tzname"
.LASF146:
	.string	"_sifields"
.LASF273:
	.string	"locale_quoting_style"
.LASF961:
	.string	"finish"
.LASF993:
	.string	"zero_width"
.LASF1034:
	.string	"mergesize"
.LASF386:
	.string	"_NL_TIME_ERA_NUM_ENTRIES"
.LASF180:
	.string	"LOG10_TIMESPEC_HZ"
.LASF1134:
	.string	"/root/coreutils"
.LASF60:
	.string	"__high"
.LASF483:
	.string	"_NL_WABALTMON_1"
.LASF484:
	.string	"_NL_WABALTMON_2"
.LASF485:
	.string	"_NL_WABALTMON_3"
.LASF486:
	.string	"_NL_WABALTMON_4"
.LASF487:
	.string	"_NL_WABALTMON_5"
.LASF488:
	.string	"_NL_WABALTMON_6"
.LASF489:
	.string	"_NL_WABALTMON_7"
.LASF490:
	.string	"_NL_WABALTMON_8"
.LASF491:
	.string	"_NL_WABALTMON_9"
.LASF665:
	.string	"_NL_NUM_LC_MESSAGES"
.LASF658:
	.string	"_NL_NUMERIC_CODESET"
.LASF867:
	.string	"suffix"
.LASF383:
	.string	"ALT_DIGITS"
.LASF567:
	.string	"_NL_CTYPE_OUTDIGIT9_MB"
.LASF1108:
	.string	"proctab_hasher"
.LASF771:
	.string	"lock"
.LASF997:
	.string	"nbuf"
.LASF97:
	.string	"RLIMIT_AS"
.LASF142:
	.string	"si_signo"
.LASF59:
	.string	"__low"
.LASF849:
	.string	"outfile"
.LASF102:
	.string	"__RLIMIT_MSGQUEUE"
.LASF793:
	.string	"compress_program"
.LASF188:
	.string	"_ISgraph"
.LASF645:
	.string	"_NL_MONETARY_DUO_VALID_TO"
.LASF217:
	.string	"int_n_sign_posn"
.LASF1005:
	.string	"tighter_lim"
.LASF298:
	.string	"buffer"
.LASF609:
	.string	"__POSITIVE_SIGN"
.LASF269:
	.string	"shell_escape_always_quoting_style"
.LASF1069:
	.string	"tempfd"
.LASF882:
	.string	"mult"
.LASF851:
	.string	"locale"
.LASF145:
	.string	"__pad0"
.LASF245:
	.string	"__pad5"
.LASF714:
	.string	"_NL_IDENTIFICATION_DATE"
.LASF801:
	.string	"RANDOM_SOURCE_OPTION"
.LASF696:
	.string	"_NL_TELEPHONE_CODESET"
.LASF873:
	.string	"insertkey"
.LASF468:
	.string	"_NL_WALTMON_10"
.LASF469:
	.string	"_NL_WALTMON_11"
.LASF470:
	.string	"_NL_WALTMON_12"
.LASF143:
	.string	"si_errno"
.LASF979:
	.string	"not_equal"
.LASF1060:
	.string	"struct_month_cmp"
.LASF231:
	.string	"_markers"
.LASF1128:
	.string	"select_plural"
.LASF998:
	.string	"ugkey_reverse"
.LASF624:
	.string	"__INT_P_SIGN_POSN"
.LASF268:
	.string	"shell_escape_quoting_style"
.LASF130:
	.string	"si_band"
.LASF1027:
	.string	"find_unit_order"
.LASF819:
	.string	"temphead"
.LASF322:
	.string	"alloc_failed"
.LASF687:
	.string	"_NL_ADDRESS_LANG_AB"
.LASF583:
	.string	"_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN"
.LASF241:
	.string	"_codecvt"
.LASF1112:
	.string	"cs_enter"
.LASF855:
	.string	"newtab"
.LASF373:
	.string	"MON_11"
.LASF1052:
	.string	"double"
.LASF480:
	.string	"_NL_ABALTMON_10"
.LASF481:
	.string	"_NL_ABALTMON_11"
.LASF482:
	.string	"_NL_ABALTMON_12"
.LASF90:
	.string	"RLIMIT_FSIZE"
.LASF958:
	.string	"line_number"
.LASF825:
	.string	"unit_order"
.LASF585:
	.string	"_NL_CTYPE_TRANSLIT_IGNORE_LEN"
.LASF165:
	.string	"st_rdev"
.LASF666:
	.string	"_NL_PAPER_HEIGHT"
.LASF71:
	.string	"__g_signals"
.LASF834:
	.string	"argc"
.LASF159:
	.string	"st_dev"
.LASF41:
	.string	"ssize_t"
.LASF1098:
	.string	"reap_some"
.LASF702:
	.string	"_NL_IDENTIFICATION_SOURCE"
.LASF906:
	.string	"args"
.LASF1061:
	.string	"month1"
.LASF835:
	.string	"argv"
.LASF513:
	.string	"_NL_COLLATE_COLLSEQWC"
.LASF755:
	.string	"general_numeric"
.LASF1067:
	.string	"add_temp_dir"
.LASF866:
	.string	"msgid"
.LASF15:
	.string	"__uint32_t"
.LASF875:
	.string	"sort"
.LASF466:
	.string	"_NL_WALTMON_8"
.LASF626:
	.string	"_NL_MONETARY_DUO_INT_CURR_SYMBOL"
.LASF746:
	.string	"schar"
.LASF908:
	.string	"data"
.LASF80:
	.string	"__daylight"
.LASF610:
	.string	"__NEGATIVE_SIGN"
.LASF840:
	.string	"mergeonly"
.LASF302:
	.string	"NPROC_CURRENT_OVERRIDABLE"
.LASF586:
	.string	"_NL_CTYPE_TRANSLIT_IGNORE"
.LASF156:
	.string	"_sys_siglist"
.LASF720:
	.string	"DEFAULT_MAX_THREADS"
.LASF1129:
	.string	"PLURAL_REDUCER"
.LASF278:
	.string	"quoting_options"
.LASF926:
	.string	"lock_node"
.LASF182:
	.string	"_ISlower"
.LASF448:
	.string	"__ALTMON_2"
.LASF449:
	.string	"__ALTMON_3"
.LASF450:
	.string	"__ALTMON_4"
.LASF451:
	.string	"__ALTMON_5"
.LASF452:
	.string	"__ALTMON_6"
.LASF453:
	.string	"__ALTMON_7"
.LASF454:
	.string	"__ALTMON_8"
.LASF455:
	.string	"__ALTMON_9"
.LASF314:
	.string	"chunk_limit"
.LASF283:
	.string	"error_message_count"
.LASF301:
	.string	"NPROC_CURRENT"
.LASF841:
	.string	"random_source"
.LASF1004:
	.string	"width"
.LASF916:
	.string	"hi_orig"
.LASF434:
	.string	"_NL_WALT_DIGITS"
.LASF651:
	.string	"__DECIMAL_POINT"
.LASF202:
	.string	"positive_sign"
.LASF939:
	.string	"to_temp"
.LASF395:
	.string	"_NL_WDAY_1"
.LASF396:
	.string	"_NL_WDAY_2"
.LASF397:
	.string	"_NL_WDAY_3"
.LASF149:
	.string	"sa_handler"
.LASF399:
	.string	"_NL_WDAY_5"
.LASF400:
	.string	"_NL_WDAY_6"
.LASF401:
	.string	"_NL_WDAY_7"
.LASF608:
	.string	"__MON_GROUPING"
.LASF931:
	.string	"node_pool"
.LASF796:
	.string	"CHECK_OPTION"
.LASF719:
	.string	"SUBTHREAD_LINES_HEURISTIC"
.LASF620:
	.string	"__INT_P_CS_PRECEDES"
.LASF87:
	.string	"program_invocation_name"
.LASF324:
	.string	"obstack_exit_failure"
.LASF19:
	.string	"__gid_t"
.LASF805:
	.string	"long_options"
.LASF784:
	.string	"sort_size"
.LASF934:
	.string	"merge_tree_destroy"
.LASF698:
	.string	"_NL_MEASUREMENT_MEASUREMENT"
.LASF772:
	.string	"merge_node_queue"
.LASF832:
	.string	"queue"
.LASF244:
	.string	"_freeres_buf"
.LASF1120:
	.string	"errbuf"
.LASF139:
	.string	"_sigfault"
.LASF1001:
	.string	"debug_line"
.LASF286:
	.string	"FADVISE_SEQUENTIAL"
.LASF121:
	.string	"si_utime"
.LASF37:
	.string	"tv_sec"
.LASF607:
	.string	"__MON_THOUSANDS_SEP"
.LASF965:
	.string	"disorder_line_number"
.LASF830:
	.string	"total_lines"
.LASF432:
	.string	"_NL_WERA_YEAR"
.LASF63:
	.string	"long long unsigned int"
.LASF766:
	.string	"parent"
.LASF1003:
	.string	"offset"
.LASF39:
	.string	"pid_t"
.LASF528:
	.string	"_NL_CTYPE_WIDTH"
.LASF236:
	.string	"_cur_column"
.LASF1022:
	.string	"getmonth"
.LASF677:
	.string	"_NL_NUM_LC_NAME"
.LASF131:
	.string	"si_fd"
.LASF615:
	.string	"__N_CS_PRECEDES"
.LASF667:
	.string	"_NL_PAPER_WIDTH"
.LASF58:
	.string	"__list"
.LASF168:
	.string	"st_blocks"
.LASF618:
	.string	"__N_SIGN_POSN"
.LASF581:
	.string	"_NL_CTYPE_TRANSLIT_TO_IDX"
.LASF874:
	.string	"key_arg"
.LASF1047:
	.string	"size_bound"
.LASF1006:
	.string	"max_digit"
.LASF1125:
	.string	"lc_messages"
.LASF899:
	.string	"instat"
.LASF662:
	.string	"__YESSTR"
.LASF94:
	.string	"__RLIMIT_RSS"
.LASF229:
	.string	"_IO_backup_base"
.LASF215:
	.string	"int_n_sep_by_space"
.LASF220:
	.string	"_IO_read_ptr"
.LASF1011:
	.string	"xfrm_diff"
.LASF629:
	.string	"_NL_MONETARY_DUO_FRAC_DIGITS"
.LASF622:
	.string	"__INT_N_CS_PRECEDES"
.LASF661:
	.string	"__NOEXPR"
.LASF1030:
	.string	"order"
.LASF565:
	.string	"_NL_CTYPE_OUTDIGIT7_MB"
.LASF975:
	.string	"texta"
.LASF976:
	.string	"textb"
.LASF243:
	.string	"_freeres_list"
.LASF435:
	.string	"_NL_WERA_D_T_FMT"
.LASF657:
	.string	"_NL_NUMERIC_THOUSANDS_SEP_WC"
.LASF257:
	.string	"_sys_nerr"
.LASF108:
	.string	"rlim_t"
.LASF994:
	.string	"implicit_skip"
.LASF539:
	.string	"_NL_CTYPE_INDIGITS2_MB"
.LASF540:
	.string	"_NL_CTYPE_INDIGITS3_MB"
.LASF84:
	.string	"timezone"
.LASF118:
	.string	"si_overrun"
.LASF910:
	.string	"queue_check_insert_parent"
.LASF547:
	.string	"_NL_CTYPE_INDIGITS_WC_LEN"
.LASF920:
	.string	"write_unique"
.LASF1090:
	.string	"outstat"
.LASF546:
	.string	"_NL_CTYPE_INDIGITS9_MB"
.LASF61:
	.string	"__wseq"
.LASF905:
	.string	"thread"
.LASF235:
	.string	"_old_offset"
.LASF1087:
	.string	"ftruncate_errno"
.LASF335:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF147:
	.string	"siginfo_t"
.LASF694:
	.string	"_NL_TELEPHONE_INT_SELECT"
.LASF290:
	.string	"FADVISE_RANDOM"
.LASF1:
	.string	"optind"
.LASF309:
	.string	"obstack"
.LASF210:
	.string	"p_sign_posn"
.LASF752:
	.string	"skipeblanks"
.LASF995:
	.string	"line_offset"
.LASF944:
	.string	"mergefps"
.LASF77:
	.string	"long long int"
.LASF925:
	.string	"unlock_node"
.LASF234:
	.string	"_flags2"
.LASF921:
	.string	"queue_pop"
.LASF743:
	.string	"line_bytes"
.LASF563:
	.string	"_NL_CTYPE_OUTDIGIT5_MB"
.LASF66:
	.string	"__pthread_cond_s"
.LASF1025:
	.string	"numcompare"
.LASF38:
	.string	"tv_nsec"
.LASF360:
	.string	"ABMON_10"
.LASF361:
	.string	"ABMON_11"
.LASF362:
	.string	"ABMON_12"
.LASF35:
	.string	"option"
.LASF580:
	.string	"_NL_CTYPE_TRANSLIT_FROM_TBL"
.LASF748:
	.string	"echar"
.LASF812:
	.string	"valid"
.LASF282:
	.string	"error_print_progname"
.LASF184:
	.string	"_ISdigit"
.LASF544:
	.string	"_NL_CTYPE_INDIGITS7_MB"
.LASF739:
	.string	"used"
.LASF495:
	.string	"_NL_NUM_LC_TIME"
.LASF785:
	.string	"temp_dirs"
.LASF20:
	.string	"__ino_t"
.LASF678:
	.string	"_NL_ADDRESS_POSTAL_FMT"
.LASF255:
	.string	"sys_nerr"
.LASF659:
	.string	"_NL_NUM_LC_NUMERIC"
.LASF499:
	.string	"_NL_COLLATE_WEIGHTMB"
.LASF208:
	.string	"n_cs_precedes"
.LASF1024:
	.string	"nan_compare"
.LASF1055:
	.string	"specify_nmerge"
.LASF521:
	.string	"_NL_CTYPE_CLASS32"
.LASF981:
	.string	"lena"
.LASF982:
	.string	"lenb"
.LASF372:
	.string	"MON_10"
.LASF93:
	.string	"RLIMIT_CORE"
.LASF374:
	.string	"MON_12"
.LASF117:
	.string	"si_tid"
.LASF1015:
	.string	"a_fits"
.LASF1083:
	.string	"xfclose"
.LASF530:
	.string	"_NL_CTYPE_CODESET_NAME"
.LASF611:
	.string	"__INT_FRAC_DIGITS"
.LASF561:
	.string	"_NL_CTYPE_OUTDIGIT3_MB"
.LASF823:
	.string	"INIT_PROCTAB_SIZE"
.LASF598:
	.string	"_NL_CTYPE_EXTRA_MAP_10"
.LASF599:
	.string	"_NL_CTYPE_EXTRA_MAP_11"
.LASF1057:
	.string	"max_nmerge_buf"
.LASF600:
	.string	"_NL_CTYPE_EXTRA_MAP_12"
.LASF601:
	.string	"_NL_CTYPE_EXTRA_MAP_13"
.LASF1070:
	.string	"pipefds"
.LASF602:
	.string	"_NL_CTYPE_EXTRA_MAP_14"
.LASF1058:
	.string	"inittables"
.LASF864:
	.string	"parse_field_count"
.LASF281:
	.string	"argmatch_die"
.LASF946:
	.string	"savedline"
.LASF204:
	.string	"int_frac_digits"
.LASF797:
	.string	"COMPRESS_PROGRAM_OPTION"
.LASF627:
	.string	"_NL_MONETARY_DUO_CURRENCY_SYMBOL"
.LASF263:
	.string	"__rlimit_resource"
.LASF954:
	.string	"open_input_files"
.LASF542:
	.string	"_NL_CTYPE_INDIGITS5_MB"
.LASF759:
	.string	"version"
.LASF515:
	.string	"_NL_NUM_LC_COLLATE"
.LASF319:
	.string	"extra_arg"
.LASF955:
	.string	"pfps"
.LASF781:
	.string	"fold_toupper"
.LASF684:
	.string	"_NL_ADDRESS_COUNTRY_NUM"
.LASF901:
	.string	"tftp"
.LASF589:
	.string	"_NL_CTYPE_EXTRA_MAP_1"
.LASF10:
	.string	"unsigned int"
.LASF591:
	.string	"_NL_CTYPE_EXTRA_MAP_3"
.LASF592:
	.string	"_NL_CTYPE_EXTRA_MAP_4"
.LASF593:
	.string	"_NL_CTYPE_EXTRA_MAP_5"
.LASF594:
	.string	"_NL_CTYPE_EXTRA_MAP_6"
.LASF595:
	.string	"_NL_CTYPE_EXTRA_MAP_7"
.LASF596:
	.string	"_NL_CTYPE_EXTRA_MAP_8"
.LASF597:
	.string	"_NL_CTYPE_EXTRA_MAP_9"
.LASF1000:
	.string	"default_key_compare"
.LASF856:
	.string	"stream"
.LASF710:
	.string	"_NL_IDENTIFICATION_AUDIENCE"
.LASF617:
	.string	"__P_SIGN_POSN"
.LASF876:
	.string	"output_file"
.LASF919:
	.string	"merged_hi"
.LASF893:
	.string	"outfd"
.LASF1049:
	.string	"file_size"
.LASF502:
	.string	"_NL_COLLATE_GAP1"
.LASF503:
	.string	"_NL_COLLATE_GAP2"
.LASF504:
	.string	"_NL_COLLATE_GAP3"
.LASF170:
	.string	"st_mtim"
.LASF103:
	.string	"__RLIMIT_NICE"
.LASF13:
	.string	"short int"
.LASF1071:
	.string	"child"
.LASF212:
	.string	"int_p_cs_precedes"
.LASF559:
	.string	"_NL_CTYPE_OUTDIGIT1_MB"
.LASF119:
	.string	"si_sigval"
.LASF584:
	.string	"_NL_CTYPE_TRANSLIT_DEFAULT_MISSING"
.LASF845:
	.string	"posix_ver"
.LASF305:
	.string	"prev"
.LASF237:
	.string	"_vtable_offset"
.LASF384:
	.string	"ERA_D_T_FMT"
.LASF641:
	.string	"_NL_MONETARY_DUO_INT_N_SIGN_POSN"
.LASF664:
	.string	"_NL_MESSAGES_CODESET"
.LASF722:
	.string	"SORT_FAILURE"
.LASF327:
	.string	"tok_len"
.LASF709:
	.string	"_NL_IDENTIFICATION_TERRITORY"
.LASF259:
	.string	"GETOPT_HELP_CHAR"
.LASF158:
	.string	"stat"
.LASF879:
	.string	"temp_output"
.LASF157:
	.string	"sys_siglist"
.LASF716:
	.string	"_NL_IDENTIFICATION_CODESET"
.LASF104:
	.string	"__RLIMIT_RTPRIO"
.LASF672:
	.string	"_NL_NAME_NAME_MR"
.LASF675:
	.string	"_NL_NAME_NAME_MS"
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
