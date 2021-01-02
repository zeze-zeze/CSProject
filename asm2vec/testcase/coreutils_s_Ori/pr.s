	.file	"pr.c"
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
	.type	timetostr, @function
timetostr:
.LFB41:
	.loc 1 691 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 694 11
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	imaxtostr@PLT
	.loc 1 695 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	timetostr, .-timetostr
	.local	column_vector
	.comm	column_vector,8,8
	.local	buff
	.comm	buff,8,8
	.local	buff_current
	.comm	buff_current,4,4
	.local	buff_allocated
	.comm	buff_allocated,8,8
	.local	line_vector
	.comm	line_vector,8,8
	.local	end_vector
	.comm	end_vector,8,8
	.local	parallel_files
	.comm	parallel_files,1,1
	.local	align_empty_cols
	.comm	align_empty_cols,1,1
	.local	empty_line
	.comm	empty_line,1,1
	.local	FF_only
	.comm	FF_only,1,1
	.local	explicit_columns
	.comm	explicit_columns,1,1
	.data
	.type	extremities, @object
	.size	extremities, 1
extremities:
	.byte	1
	.local	keep_FF
	.comm	keep_FF,1,1
	.local	print_a_FF
	.comm	print_a_FF,1,1
	.local	print_a_header
	.comm	print_a_header,1,1
	.local	use_form_feed
	.comm	use_form_feed,1,1
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.local	print_across_flag
	.comm	print_across_flag,1,1
	.type	storing_columns, @object
	.size	storing_columns, 1
storing_columns:
	.byte	1
	.local	balance_columns
	.comm	balance_columns,1,1
	.align 4
	.type	lines_per_page, @object
	.size	lines_per_page, 4
lines_per_page:
	.long	66
	.local	lines_per_body
	.comm	lines_per_body,4,4
	.align 4
	.type	chars_per_line, @object
	.size	chars_per_line, 4
chars_per_line:
	.long	72
	.local	truncate_lines
	.comm	truncate_lines,1,1
	.local	join_lines
	.comm	join_lines,1,1
	.local	chars_per_column
	.comm	chars_per_column,4,4
	.local	untabify_input
	.comm	untabify_input,1,1
	.type	input_tab_char, @object
	.size	input_tab_char, 1
input_tab_char:
	.byte	9
	.align 4
	.type	chars_per_input_tab, @object
	.size	chars_per_input_tab, 4
chars_per_input_tab:
	.long	8
	.local	tabify_output
	.comm	tabify_output,1,1
	.type	output_tab_char, @object
	.size	output_tab_char, 1
output_tab_char:
	.byte	9
	.align 4
	.type	chars_per_output_tab, @object
	.size	chars_per_output_tab, 4
chars_per_output_tab:
	.long	8
	.local	spaces_not_printed
	.comm	spaces_not_printed,4,4
	.local	chars_per_margin
	.comm	chars_per_margin,4,4
	.local	output_position
	.comm	output_position,4,4
	.local	input_position
	.comm	input_position,4,4
	.local	failed_opens
	.comm	failed_opens,1,1
	.align 4
	.type	columns, @object
	.size	columns, 4
columns:
	.long	1
	.local	first_page_number
	.comm	first_page_number,8,8
	.align 8
	.type	last_page_number, @object
	.size	last_page_number, 8
last_page_number:
	.quad	-1
	.local	files_ready_to_read
	.comm	files_ready_to_read,4,4
	.local	page_number
	.comm	page_number,8,8
	.local	line_number
	.comm	line_number,4,4
	.local	numbered_lines
	.comm	numbered_lines,1,1
	.type	number_separator, @object
	.size	number_separator, 1
number_separator:
	.byte	9
	.align 4
	.type	line_count, @object
	.size	line_count, 4
line_count:
	.long	1
	.type	skip_count, @object
	.size	skip_count, 1
skip_count:
	.byte	1
	.align 4
	.type	start_line_num, @object
	.size	start_line_num, 4
start_line_num:
	.long	1
	.align 4
	.type	chars_per_number, @object
	.size	chars_per_number, 4
chars_per_number:
	.long	5
	.local	number_width
	.comm	number_width,4,4
	.local	number_buff
	.comm	number_buff,8,8
	.local	use_esc_sequence
	.comm	use_esc_sequence,1,1
	.local	use_cntrl_prefix
	.comm	use_cntrl_prefix,1,1
	.local	double_space
	.comm	double_space,1,1
	.local	total_files
	.comm	total_files,4,4
	.local	ignore_failed_opens
	.comm	ignore_failed_opens,1,1
	.local	use_col_separator
	.comm	use_col_separator,1,1
	.section	.data.rel.local,"aw"
	.align 8
	.type	col_sep_string, @object
	.size	col_sep_string, 8
col_sep_string:
	.quad	.LC18
	.local	col_sep_length
	.comm	col_sep_length,4,4
	.section	.rodata
.LC20:
	.string	" "
	.section	.data.rel.local
	.align 8
	.type	column_separator, @object
	.size	column_separator, 8
column_separator:
	.quad	.LC20
	.section	.rodata
.LC21:
	.string	"\t"
	.section	.data.rel.local
	.align 8
	.type	line_separator, @object
	.size	line_separator, 8
line_separator:
	.quad	.LC21
	.local	separators_not_printed
	.comm	separators_not_printed,4,4
	.local	padding_not_printed
	.comm	padding_not_printed,4,4
	.local	pad_vertically
	.comm	pad_vertically,1,1
	.local	custom_header
	.comm	custom_header,8,8
	.local	date_format
	.comm	date_format,8,8
	.local	localtz
	.comm	localtz,8,8
	.local	date_text
	.comm	date_text,8,8
	.local	file_text
	.comm	file_text,8,8
	.local	header_width_available
	.comm	header_width_available,4,4
	.local	clump_buff
	.comm	clump_buff,8,8
	.local	last_line
	.comm	last_line,1,1
	.section	.rodata
	.align 32
	.type	short_options, @object
	.size	short_options, 53
short_options:
	.string	"-0123456789D:FJN:S::TW:abcde::fh:i::l:mn::o:rs::tvw:"
.LC22:
	.string	"pages"
.LC23:
	.string	"columns"
.LC24:
	.string	"across"
.LC25:
	.string	"show-control-chars"
.LC26:
	.string	"double-space"
.LC27:
	.string	"date-format"
.LC28:
	.string	"expand-tabs"
.LC29:
	.string	"form-feed"
.LC30:
	.string	"header"
.LC31:
	.string	"output-tabs"
.LC32:
	.string	"join-lines"
.LC33:
	.string	"length"
.LC34:
	.string	"merge"
.LC35:
	.string	"number-lines"
.LC36:
	.string	"first-line-number"
.LC37:
	.string	"indent"
.LC38:
	.string	"no-file-warnings"
.LC39:
	.string	"separator"
.LC40:
	.string	"sep-string"
.LC41:
	.string	"omit-header"
.LC42:
	.string	"omit-pagination"
.LC43:
	.string	"show-nonprinting"
.LC44:
	.string	"width"
.LC45:
	.string	"page-width"
.LC46:
	.string	"help"
.LC47:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 864
long_options:
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC23
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC27
	.long	1
	.zero	4
	.quad	0
	.long	68
	.zero	4
	.quad	.LC28
	.long	2
	.zero	4
	.quad	0
	.long	101
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC30
	.long	1
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC31
	.long	2
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	74
	.zero	4
	.quad	.LC33
	.long	1
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	109
	.zero	4
	.quad	.LC35
	.long	2
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC36
	.long	1
	.zero	4
	.quad	0
	.long	78
	.zero	4
	.quad	.LC37
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC38
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC39
	.long	2
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC40
	.long	2
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC41
	.long	0
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC42
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC43
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC44
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC45
	.long	1
	.zero	4
	.quad	0
	.long	87
	.zero	4
	.quad	.LC46
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC47
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
.LC48:
	.string	"integer overflow"
	.text
	.type	integer_overflow, @function
integer_overflow:
.LFB55:
	.file 2 "src/pr.c"
	.loc 2 777 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 778 3
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
	.cfi_endproc
.LFE55:
	.size	integer_overflow, .-integer_overflow
	.type	cols_ready_to_print, @function
cols_ready_to_print:
.LFB56:
	.loc 2 786 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 791 5
	movl	$0, -12(%rbp)
	.loc 2 792 10
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 792 29
	movl	$0, -16(%rbp)
	.loc 2 792 3
	jmp	.L18
.L21:
	.loc 2 793 10
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 793 8
	testl	%eax, %eax
	je	.L19
	.loc 2 794 13
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 794 9
	cmpl	$1, %eax
	je	.L19
	.loc 2 795 13
	movzbl	storing_columns(%rip), %eax
	.loc 2 795 9
	testb	%al, %al
	je	.L20
	.loc 2 795 33 discriminator 1
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	.loc 2 795 29 discriminator 1
	testl	%eax, %eax
	jle	.L20
	.loc 2 795 56 discriminator 2
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	.loc 2 795 52 discriminator 2
	testl	%eax, %eax
	jle	.L20
.L19:
	.loc 2 796 7
	addl	$1, -12(%rbp)
.L20:
	.loc 2 792 47 discriminator 2
	addq	$64, -8(%rbp)
	.loc 2 792 52 discriminator 2
	addl	$1, -16(%rbp)
.L18:
	.loc 2 792 36 discriminator 1
	movl	columns(%rip), %eax
	.loc 2 792 3 discriminator 1
	cmpl	%eax, -16(%rbp)
	jb	.L21
	.loc 2 797 10
	movl	-12(%rbp), %eax
	.loc 2 798 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	cols_ready_to_print, .-cols_ready_to_print
	.type	first_last_page, @function
first_last_page:
.LFB57:
	.loc 2 805 1
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
	.loc 2 805 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 808 13
	movq	$-1, -24(%rbp)
	.loc 2 809 22
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -44(%rbp)
	.loc 2 810 6
	cmpl	$0, -44(%rbp)
	je	.L24
	.loc 2 810 25 discriminator 1
	cmpl	$2, -44(%rbp)
	je	.L24
	.loc 2 811 5
	movsbl	-56(%rbp), %edx
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %esi
	movl	-44(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L24:
	.loc 2 813 9
	movq	-40(%rbp), %rax
	.loc 2 813 6
	cmpq	%rax, -64(%rbp)
	je	.L25
	.loc 2 813 21 discriminator 1
	movq	-32(%rbp), %rax
	.loc 2 813 18 discriminator 1
	testq	%rax, %rax
	jne	.L26
.L25:
	.loc 2 814 12
	movl	$0, %eax
	jmp	.L32
.L26:
	.loc 2 816 7
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 816 6
	cmpb	$58, %al
	jne	.L28
.LBB2:
	.loc 2 818 26
	movq	-40(%rbp), %rax
	.loc 2 818 19
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	.loc 2 819 13
	leaq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -44(%rbp)
	.loc 2 820 10
	cmpl	$0, -44(%rbp)
	je	.L29
	.loc 2 821 9
	movsbl	-56(%rbp), %edx
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %esi
	movl	-44(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L29:
	.loc 2 822 14
	movq	-40(%rbp), %rax
	.loc 2 822 10
	cmpq	%rax, -16(%rbp)
	je	.L30
	.loc 2 822 27 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	.loc 2 822 19 discriminator 1
	cmpq	%rax, %rdx
	jnb	.L28
.L30:
	.loc 2 823 16
	movl	$0, %eax
	jmp	.L32
.L28:
.LBE2:
	.loc 2 826 7
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 826 6
	testb	%al, %al
	je	.L31
	.loc 2 827 12
	movl	$0, %eax
	jmp	.L32
.L31:
	.loc 2 829 21
	movq	-32(%rbp), %rax
	movq	%rax, first_page_number(%rip)
	.loc 2 830 20
	movq	-24(%rbp), %rax
	movq	%rax, last_page_number(%rip)
	.loc 2 831 10
	movl	$1, %eax
.L32:
	.loc 2 832 1 discriminator 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L33
	.loc 2 832 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	first_last_page, .-first_last_page
	.section	.rodata
.LC49:
	.string	"invalid number of columns"
	.text
	.type	parse_column_count, @function
parse_column_count:
.LFB58:
	.loc 2 840 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 841 30
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 841 3
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	leaq	columns(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	getoptnum
	.loc 2 842 20
	movb	$1, explicit_columns(%rip)
	.loc 2 843 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	parse_column_count, .-parse_column_count
	.type	separator_string, @function
separator_string:
.LFB59:
	.loc 2 849 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 850 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	.loc 2 851 6
	movl	$2147483648, %eax
	cmpq	%rax, -8(%rbp)
	jb	.L36
	.loc 2 852 5
	call	integer_overflow
.L36:
	.loc 2 853 18
	movq	-8(%rbp), %rax
	movl	%eax, col_sep_length(%rip)
	.loc 2 854 18
	movq	-24(%rbp), %rax
	movq	%rax, col_sep_string(%rip)
	.loc 2 855 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	separator_string, .-separator_string
	.section	.rodata
.LC50:
	.string	"/usr/local/share/locale"
	.align 8
.LC51:
	.string	"'--pages=FIRST_PAGE[:LAST_PAGE]' missing argument"
.LC52:
	.string	"invalid page range %s"
	.align 8
.LC53:
	.string	"'-l PAGE_LENGTH' invalid number of lines"
	.align 8
.LC54:
	.string	"'-N NUMBER' invalid starting line number"
	.align 8
.LC55:
	.string	"'-o MARGIN' invalid line offset"
	.align 8
.LC56:
	.string	"'-w PAGE_WIDTH' invalid number of characters"
	.align 8
.LC57:
	.string	"'-W PAGE_WIDTH' invalid number of characters"
.LC58:
	.string	"Roland Huebner"
.LC59:
	.string	"Pete TerMaat"
.LC60:
	.string	"pr"
.LC61:
	.string	"POSIXLY_CORRECT"
.LC62:
	.string	"%b %e %H:%M %Y"
.LC63:
	.string	"%Y-%m-%d %H:%M"
.LC64:
	.string	"TZ"
	.align 8
.LC65:
	.string	"cannot specify number of columns when printing in parallel"
	.align 8
.LC66:
	.string	"cannot specify both printing across and printing in parallel"
.LC67:
	.string	"standard input"
	.text
	.globl	main
	.type	main, @function
main:
.LFB60:
	.loc 2 859 1
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
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 2 859 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 861 8
	movb	$0, -79(%rbp)
	.loc 2 862 8
	movb	$0, -78(%rbp)
	.loc 2 863 8
	movb	$0, -77(%rbp)
	.loc 2 867 9
	movq	$0, -48(%rbp)
	.loc 2 868 10
	movq	$0, -40(%rbp)
	.loc 2 869 10
	movq	$0, -56(%rbp)
	.loc 2 872 3
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 873 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 874 3
	leaq	.LC50(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 875 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 877 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 879 11
	movl	$0, -68(%rbp)
	.loc 2 882 17
	cmpl	$1, -84(%rbp)
	jle	.L38
	.loc 2 881 34
	movl	-84(%rbp), %eax
	subl	$1, %eax
	.loc 2 881 19
	cltq
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	jmp	.L39
.L38:
	.loc 2 882 17 discriminator 1
	movl	$0, %eax
.L39:
	.loc 2 880 14
	movq	%rax, -32(%rbp)
.L88:
.LBB3:
	.loc 2 886 11
	movl	$-1, -76(%rbp)
	.loc 2 887 15
	leaq	-76(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movl	-84(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options(%rip), %rcx
	leaq	short_options(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -60(%rbp)
	.loc 2 888 10
	cmpl	$-1, -60(%rbp)
	jne	.L40
.LBE3:
	.loc 2 1054 6
	cmpq	$0, -48(%rbp)
	jne	.L41
	jmp	.L42
.L40:
.LBB8:
	.loc 2 891 11
	movl	-60(%rbp), %eax
	subl	$48, %eax
	.loc 2 891 10
	cmpl	$9, %eax
	ja	.L43
	.loc 2 894 24
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 2 894 28
	movq	-56(%rbp), %rax
	.loc 2 894 14
	cmpq	%rax, %rdx
	jb	.L44
.LBB4:
	.loc 2 896 17
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x2realloc@PLT
	movq	%rax, -48(%rbp)
.L44:
.LBE4:
	.loc 2 897 39
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 897 30
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 897 43
	movl	-60(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 898 30
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 898 41
	movb	$0, (%rax)
	jmp	.L88
.L43:
	.loc 2 902 16
	movq	$0, -40(%rbp)
	.loc 2 904 7
	cmpl	$129, -60(%rbp)
	jg	.L46
	cmpl	$0, -60(%rbp)
	jg	.L47
	cmpl	$-131, -60(%rbp)
	je	.L48
	cmpl	$-130, -60(%rbp)
	je	.L49
	jmp	.L46
.L47:
	cmpl	$129, -60(%rbp)
	ja	.L46
	movl	-60(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L51(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L51(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L51:
	.long	.L46-.L51
	.long	.L76-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L75-.L51
	.long	.L46-.L51
	.long	.L64-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L74-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L73-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L72-.L51
	.long	.L71-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L70-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L69-.L51
	.long	.L68-.L51
	.long	.L67-.L51
	.long	.L66-.L51
	.long	.L65-.L51
	.long	.L64-.L51
	.long	.L46-.L51
	.long	.L63-.L51
	.long	.L62-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L61-.L51
	.long	.L60-.L51
	.long	.L59-.L51
	.long	.L58-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L57-.L51
	.long	.L56-.L51
	.long	.L55-.L51
	.long	.L46-.L51
	.long	.L54-.L51
	.long	.L53-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L46-.L51
	.long	.L52-.L51
	.long	.L50-.L51
	.text
.L76:
	.loc 2 908 36
	movq	first_page_number(%rip), %rax
	.loc 2 908 14
	testq	%rax, %rax
	jne	.L77
	.loc 2 909 21
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 909 18
	cmpb	$43, %al
	jne	.L77
	.loc 2 909 39 discriminator 1
	movq	optarg(%rip), %rax
	.loc 2 909 72 discriminator 1
	addq	$1, %rax
	.loc 2 909 39 discriminator 1
	movq	%rax, %rdx
	movl	$43, %esi
	movl	$-2, %edi
	call	first_last_page
	.loc 2 909 36 discriminator 1
	xorl	$1, %eax
	.loc 2 908 15 discriminator 1
	testb	%al, %al
	je	.L113
.L77:
	.loc 2 910 31
	movl	-68(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -68(%rbp)
	movl	%eax, %eax
	.loc 2 910 23
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 910 35
	movq	optarg(%rip), %rax
	movq	%rax, (%rdx)
	.loc 2 911 11
	jmp	.L113
.L50:
	.loc 2 915 17
	movq	optarg(%rip), %rax
	.loc 2 915 16
	testq	%rax, %rax
	jne	.L80
.LBB5:
	.loc 2 916 15
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L80:
.LBE5:
	.loc 2 918 24
	movq	optarg(%rip), %rdx
	movl	-76(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	first_last_page
	.loc 2 918 22
	xorl	$1, %eax
	.loc 2 918 21
	testb	%al, %al
	je	.L114
.LBB6:
	.loc 2 919 15
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
.L52:
.LBE6:
	.loc 2 926 13
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	parse_column_count
	.loc 2 931 13
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 932 33
	movq	$0, -48(%rbp)
	.loc 2 933 21
	movq	$0, -56(%rbp)
	.loc 2 934 13
	jmp	.L45
.L69:
	.loc 2 938 29
	movb	$1, print_across_flag(%rip)
	.loc 2 939 27
	movb	$0, storing_columns(%rip)
	.loc 2 940 11
	jmp	.L45
.L68:
	.loc 2 942 27
	movb	$1, balance_columns(%rip)
	.loc 2 943 11
	jmp	.L45
.L67:
	.loc 2 945 28
	movb	$1, use_cntrl_prefix(%rip)
	.loc 2 946 11
	jmp	.L45
.L66:
	.loc 2 948 24
	movb	$1, double_space(%rip)
	.loc 2 949 11
	jmp	.L45
.L75:
	.loc 2 951 23
	movq	optarg(%rip), %rax
	movq	%rax, date_format(%rip)
	.loc 2 952 11
	jmp	.L45
.L65:
	.loc 2 954 15
	movq	optarg(%rip), %rax
	.loc 2 954 14
	testq	%rax, %rax
	je	.L82
	.loc 2 955 13
	movq	optarg(%rip), %rax
	leaq	chars_per_input_tab(%rip), %rcx
	leaq	input_tab_char(%rip), %rdx
	movl	$101, %esi
	movq	%rax, %rdi
	call	getoptarg
.L82:
	.loc 2 958 26
	movb	$1, untabify_input(%rip)
	.loc 2 959 11
	jmp	.L45
.L64:
	.loc 2 962 25
	movb	$1, use_form_feed(%rip)
	.loc 2 963 11
	jmp	.L45
.L63:
	.loc 2 965 25
	movq	optarg(%rip), %rax
	movq	%rax, custom_header(%rip)
	.loc 2 966 11
	jmp	.L45
.L62:
	.loc 2 968 15
	movq	optarg(%rip), %rax
	.loc 2 968 14
	testq	%rax, %rax
	je	.L83
	.loc 2 969 13
	movq	optarg(%rip), %rax
	leaq	chars_per_output_tab(%rip), %rcx
	leaq	output_tab_char(%rip), %rdx
	movl	$105, %esi
	movq	%rax, %rdi
	call	getoptarg
.L83:
	.loc 2 972 25
	movb	$1, tabify_output(%rip)
	.loc 2 973 11
	jmp	.L45
.L74:
	.loc 2 975 22
	movb	$1, join_lines(%rip)
	.loc 2 976 11
	jmp	.L45
.L61:
	.loc 2 979 22
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 978 11
	movq	optarg(%rip), %rax
	movq	%rdx, %rcx
	leaq	lines_per_page(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	getoptnum
	.loc 2 980 11
	jmp	.L45
.L60:
	.loc 2 982 26
	movb	$1, parallel_files(%rip)
	.loc 2 983 27
	movb	$0, storing_columns(%rip)
	.loc 2 984 11
	jmp	.L45
.L59:
	.loc 2 986 26
	movb	$1, numbered_lines(%rip)
	.loc 2 987 15
	movq	optarg(%rip), %rax
	.loc 2 987 14
	testq	%rax, %rax
	je	.L115
	.loc 2 988 13
	movq	optarg(%rip), %rax
	leaq	chars_per_number(%rip), %rcx
	leaq	number_separator(%rip), %rdx
	movl	$110, %esi
	movq	%rax, %rdi
	call	getoptarg
	.loc 2 990 11
	jmp	.L115
.L73:
	.loc 2 992 22
	movb	$0, skip_count(%rip)
	.loc 2 994 22
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 993 11
	movq	optarg(%rip), %rax
	movq	%rdx, %rcx
	leaq	start_line_num(%rip), %rdx
	movl	$-2147483648, %esi
	movq	%rax, %rdi
	call	getoptnum
	.loc 2 995 11
	jmp	.L45
.L58:
	.loc 2 998 22
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 997 11
	movq	optarg(%rip), %rax
	movq	%rdx, %rcx
	leaq	chars_per_margin(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	getoptnum
	.loc 2 999 11
	jmp	.L45
.L57:
	.loc 2 1001 31
	movb	$1, ignore_failed_opens(%rip)
	.loc 2 1002 11
	jmp	.L45
.L56:
	.loc 2 1004 23
	movb	$1, -79(%rbp)
	.loc 2 1005 17
	movb	$1, -77(%rbp)
	.loc 2 1006 15
	movzbl	use_col_separator(%rip), %eax
	xorl	$1, %eax
	.loc 2 1006 14
	testb	%al, %al
	je	.L116
	.loc 2 1006 34 discriminator 1
	movq	optarg(%rip), %rax
	testq	%rax, %rax
	je	.L116
	.loc 2 1007 13
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	separator_string
	.loc 2 1008 11
	jmp	.L116
.L72:
	.loc 2 1010 17
	movb	$0, -77(%rbp)
	.loc 2 1012 26
	leaq	.LC18(%rip), %rax
	movq	%rax, col_sep_string(%rip)
	.loc 2 1013 26
	movl	$0, col_sep_length(%rip)
	.loc 2 1014 29
	movb	$1, use_col_separator(%rip)
	.loc 2 1015 15
	movq	optarg(%rip), %rax
	.loc 2 1015 14
	testq	%rax, %rax
	je	.L117
	.loc 2 1016 13
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	separator_string
	.loc 2 1017 11
	jmp	.L117
.L55:
	.loc 2 1019 23
	movb	$0, extremities(%rip)
	.loc 2 1020 19
	movb	$1, keep_FF(%rip)
	.loc 2 1021 11
	jmp	.L45
.L71:
	.loc 2 1023 23
	movb	$0, extremities(%rip)
	.loc 2 1024 19
	movb	$0, keep_FF(%rip)
	.loc 2 1025 11
	jmp	.L45
.L54:
	.loc 2 1027 28
	movb	$1, use_esc_sequence(%rip)
	.loc 2 1028 11
	jmp	.L45
.L53:
	.loc 2 1030 23
	movb	$1, -79(%rbp)
	.loc 2 1031 17
	movb	$1, -78(%rbp)
.LBB7:
	.loc 2 1035 24
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 2 1034 13
	movq	optarg(%rip), %rax
	leaq	-72(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	getoptnum
	.loc 2 1036 17
	movzbl	truncate_lines(%rip), %eax
	xorl	$1, %eax
	.loc 2 1036 16
	testb	%al, %al
	je	.L118
	.loc 2 1037 30
	movl	-72(%rbp), %eax
	movl	%eax, chars_per_line(%rip)
.LBE7:
	.loc 2 1039 11
	jmp	.L118
.L70:
	.loc 2 1041 17
	movb	$0, -78(%rbp)
	.loc 2 1042 26
	movb	$1, truncate_lines(%rip)
	.loc 2 1044 22
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1043 11
	movq	optarg(%rip), %rax
	movq	%rdx, %rcx
	leaq	chars_per_line(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	getoptnum
	.loc 2 1045 11
	jmp	.L45
.L49:
	.loc 2 1046 9
	movl	$0, %edi
	call	usage
.L48:
	.loc 2 1047 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC58(%rip), %r9
	leaq	.LC59(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L46:
	.loc 2 1049 11
	movl	$1, %edi
	call	usage
.L113:
	.loc 2 911 11
	nop
	jmp	.L88
.L114:
	.loc 2 921 13
	nop
	jmp	.L88
.L115:
	.loc 2 990 11
	nop
	jmp	.L88
.L116:
	.loc 2 1008 11
	nop
	jmp	.L88
.L117:
	.loc 2 1017 11
	nop
	jmp	.L88
.L118:
	.loc 2 1039 11
	nop
.L45:
.LBE8:
	.loc 2 885 5 discriminator 7
	jmp	.L88
.L41:
	.loc 2 1056 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	parse_column_count
	.loc 2 1057 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L42:
	.loc 2 1060 7
	movq	date_format(%rip), %rax
	.loc 2 1060 6
	testq	%rax, %rax
	jne	.L89
	.loc 2 1061 20
	leaq	.LC61(%rip), %rdi
	call	getenv@PLT
	.loc 2 1063 20
	testq	%rax, %rax
	je	.L90
	.loc 2 1061 51
	movl	$2, %edi
	call	hard_locale@PLT
	.loc 2 1061 50
	xorl	$1, %eax
	.loc 2 1061 47
	testb	%al, %al
	je	.L90
	.loc 2 1063 20
	leaq	.LC62(%rip), %rax
	jmp	.L91
.L90:
	.loc 2 1063 20 is_stmt 0 discriminator 1
	leaq	.LC63(%rip), %rax
.L91:
	.loc 2 1061 17 is_stmt 1
	movq	%rax, date_format(%rip)
.L89:
	.loc 2 1065 22
	leaq	.LC64(%rip), %rdi
	call	getenv@PLT
	.loc 2 1065 13
	movq	%rax, %rdi
	call	tzalloc@PLT
	.loc 2 1065 11
	movq	%rax, localtz(%rip)
	.loc 2 1068 25
	movq	first_page_number(%rip), %rax
	.loc 2 1068 6
	testq	%rax, %rax
	jne	.L92
	.loc 2 1069 23
	movq	$1, first_page_number(%rip)
.L92:
	.loc 2 1071 7
	movzbl	parallel_files(%rip), %eax
	.loc 2 1071 6
	testb	%al, %al
	je	.L93
	.loc 2 1071 22 discriminator 1
	movzbl	explicit_columns(%rip), %eax
	testb	%al, %al
	je	.L93
.LBB9:
	.loc 2 1072 5
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L93:
.LBE9:
	.loc 2 1075 7
	movzbl	parallel_files(%rip), %eax
	.loc 2 1075 6
	testb	%al, %al
	je	.L94
	.loc 2 1075 22 discriminator 1
	movzbl	print_across_flag(%rip), %eax
	testb	%al, %al
	je	.L94
.LBB10:
	.loc 2 1076 5
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L94:
.LBE10:
	.loc 2 1083 6
	cmpb	$0, -79(%rbp)
	je	.L103
	.loc 2 1085 10
	cmpb	$0, -78(%rbp)
	je	.L96
	.loc 2 1087 15
	movzbl	parallel_files(%rip), %eax
	.loc 2 1087 14
	testb	%al, %al
	jne	.L97
	.loc 2 1087 30 discriminator 1
	movzbl	explicit_columns(%rip), %eax
	testb	%al, %al
	je	.L98
.L97:
	.loc 2 1090 30
	movb	$1, truncate_lines(%rip)
	.loc 2 1091 18
	cmpb	$0, -77(%rbp)
	je	.L95
	.loc 2 1094 35
	movb	$1, use_col_separator(%rip)
	.loc 2 1091 18
	jmp	.L95
.L98:
	.loc 2 1099 24
	movb	$1, join_lines(%rip)
	jmp	.L103
.L96:
	.loc 2 1101 16
	movzbl	use_col_separator(%rip), %eax
	xorl	$1, %eax
	.loc 2 1101 15
	testb	%al, %al
	je	.L103
	.loc 2 1104 14
	cmpb	$0, -77(%rbp)
	je	.L103
	.loc 2 1104 25 discriminator 1
	movzbl	parallel_files(%rip), %eax
	.loc 2 1104 21 discriminator 1
	testb	%al, %al
	jne	.L101
	.loc 2 1104 40 discriminator 2
	movzbl	explicit_columns(%rip), %eax
	testb	%al, %al
	je	.L103
.L101:
	.loc 2 1106 19
	movzbl	truncate_lines(%rip), %eax
	xorl	$1, %eax
	.loc 2 1106 18
	testb	%al, %al
	je	.L102
	.loc 2 1110 30
	movb	$1, join_lines(%rip)
	.loc 2 1111 38
	movl	col_sep_length(%rip), %eax
	.loc 2 1111 22
	testl	%eax, %eax
	jle	.L103
	.loc 2 1113 39
	movb	$1, use_col_separator(%rip)
	jmp	.L103
.L102:
	.loc 2 1119 35
	movb	$1, use_col_separator(%rip)
.L95:
	.loc 2 1124 3 discriminator 9
	jmp	.L103
.L104:
	.loc 2 1126 35 discriminator 2
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 1126 25 discriminator 2
	movl	-68(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -68(%rbp)
	movl	%eax, %eax
	.loc 2 1126 17 discriminator 2
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 1126 35 discriminator 2
	movq	(%rcx), %rax
	.loc 2 1126 29 discriminator 2
	movq	%rax, (%rdx)
	.loc 2 1124 31 discriminator 2
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L103:
	.loc 2 1124 17 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 1124 3 discriminator 1
	cmpl	%eax, -84(%rbp)
	jg	.L104
	.loc 2 1129 6
	cmpl	$0, -68(%rbp)
	jne	.L105
	.loc 2 1132 7
	movl	$0, %esi
	movl	$0, %edi
	call	print_files
	jmp	.L106
.L105:
	.loc 2 1136 11
	movzbl	parallel_files(%rip), %eax
	.loc 2 1136 10
	testb	%al, %al
	je	.L107
	.loc 2 1137 9
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	print_files
	jmp	.L106
.L107:
.LBB11:
	.loc 2 1140 29
	movl	$0, -64(%rbp)
	.loc 2 1140 11
	jmp	.L108
.L109:
	.loc 2 1141 40 discriminator 3
	movl	-64(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	.loc 2 1141 13 discriminator 3
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	print_files
	.loc 2 1140 50 discriminator 3
	addl	$1, -64(%rbp)
.L108:
	.loc 2 1140 11 discriminator 1
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jb	.L109
.L106:
.LBE11:
	.loc 2 1145 3
	call	cleanup
	.loc 2 1146 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1148 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 1148 6
	testb	%al, %al
	je	.L110
	.loc 2 1148 26 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1148 23 discriminator 1
	cmpl	$-1, %eax
	jne	.L110
.LBB12:
	.loc 2 1149 5
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L110:
.LBE12:
	.loc 2 1150 38
	movzbl	failed_opens(%rip), %eax
	movzbl	%al, %eax
	.loc 2 1151 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L112
	call	__stack_chk_fail@PLT
.L112:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	main, .-main
	.type	getoptnum, @function
getoptnum:
.LFB61:
	.loc 2 1157 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 2 1158 19
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movl	$2147483647, %edx
	movq	%rax, %rdi
	call	xdectoimax@PLT
	movq	%rax, -8(%rbp)
	.loc 2 1159 8
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 1160 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	getoptnum, .-getoptnum
	.section	.rodata
	.align 8
.LC68:
	.string	"'-%c' extra characters or invalid number in the argument: %s"
	.text
	.type	getoptarg, @function
getoptarg:
.LFB62:
	.loc 2 1170 1
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
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movb	%al, -60(%rbp)
	.loc 2 1170 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 2 1171 8
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 1171 6
	cmpl	$9, %eax
	jbe	.L121
	.loc 2 1172 22
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 1172 18
	movzbl	(%rax), %edx
	.loc 2 1172 16
	movq	-72(%rbp), %rax
	movb	%dl, (%rax)
.L121:
	.loc 2 1173 7
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1173 6
	testb	%al, %al
	je	.L128
.LBB13:
	.loc 2 1176 11
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtol@PLT
	.loc 2 1176 10
	testl	%eax, %eax
	jne	.L123
	.loc 2 1177 23
	movq	-48(%rbp), %rax
	.loc 2 1177 11
	testq	%rax, %rax
	jle	.L123
	.loc 2 1177 39 discriminator 1
	movq	-48(%rbp), %rax
	.loc 2 1177 28 discriminator 1
	movl	$2147483648, %edx
	cmpq	%rdx, %rax
	jl	.L124
.L123:
	.loc 2 1179 11
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r13
	movsbl	-60(%rbp), %ebx
	.loc 2 1180 14
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %r12
	.loc 2 1179 29
	movq	-48(%rbp), %rax
	.loc 2 1179 11
	movl	$2147483648, %edx
	cmpq	%rdx, %rax
	jge	.L125
	.loc 2 1179 55 discriminator 1
	call	__errno_location@PLT
	.loc 2 1179 11 discriminator 1
	movl	(%rax), %eax
	jmp	.L126
.L125:
	.loc 2 1179 11 is_stmt 0 discriminator 2
	movl	$75, %eax
.L126:
	.loc 2 1179 11 discriminator 4
	movq	%r13, %r8
	movl	%ebx, %ecx
	movq	%r12, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1182 11 is_stmt 1 discriminator 4
	movl	$1, %edi
	call	usage
.L124:
	.loc 2 1184 15
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
.L128:
.LBE13:
	.loc 2 1186 1
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L127
	call	__stack_chk_fail@PLT
.L127:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	getoptarg, .-getoptarg
	.section	.rodata
.LC69:
	.string	"page width too narrow"
	.text
	.type	init_parameters, @function
init_parameters:
.LFB63:
	.loc 2 1192 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	.loc 2 1192 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1193 7
	movl	$0, -16(%rbp)
	.loc 2 1195 54
	movl	lines_per_page(%rip), %eax
	subl	$10, %eax
	.loc 2 1195 18
	movl	%eax, lines_per_body(%rip)
	.loc 2 1196 22
	movl	lines_per_body(%rip), %eax
	.loc 2 1196 6
	testl	%eax, %eax
	jg	.L130
	.loc 2 1198 19
	movb	$0, extremities(%rip)
	.loc 2 1199 15
	movb	$1, keep_FF(%rip)
.L130:
	.loc 2 1201 19
	movzbl	extremities(%rip), %eax
	xorl	$1, %eax
	.loc 2 1201 6
	testb	%al, %al
	je	.L131
	.loc 2 1202 20
	movl	lines_per_page(%rip), %eax
	movl	%eax, lines_per_body(%rip)
.L131:
	.loc 2 1204 7
	movzbl	double_space(%rip), %eax
	.loc 2 1204 6
	testb	%al, %al
	je	.L132
	.loc 2 1205 37
	movl	lines_per_body(%rip), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	.loc 2 1205 20
	movl	%eax, lines_per_body(%rip)
.L132:
	.loc 2 1209 6
	cmpl	$0, -36(%rbp)
	jne	.L133
	.loc 2 1210 20
	movb	$0, parallel_files(%rip)
.L133:
	.loc 2 1212 7
	movzbl	parallel_files(%rip), %eax
	.loc 2 1212 6
	testb	%al, %al
	je	.L134
	.loc 2 1213 13
	movl	-36(%rbp), %eax
	movl	%eax, columns(%rip)
.L134:
	.loc 2 1217 7
	movzbl	storing_columns(%rip), %eax
	.loc 2 1217 6
	testb	%al, %al
	je	.L135
	.loc 2 1218 21
	movb	$1, balance_columns(%rip)
.L135:
	.loc 2 1221 15
	movl	columns(%rip), %eax
	.loc 2 1221 6
	cmpl	$1, %eax
	jle	.L136
	.loc 2 1223 11
	movzbl	use_col_separator(%rip), %eax
	xorl	$1, %eax
	.loc 2 1223 10
	testb	%al, %al
	je	.L137
	.loc 2 1226 15
	movzbl	join_lines(%rip), %eax
	.loc 2 1226 14
	testb	%al, %al
	je	.L138
	.loc 2 1227 28
	movq	line_separator(%rip), %rax
	movq	%rax, col_sep_string(%rip)
	jmp	.L139
.L138:
	.loc 2 1229 28
	movq	column_separator(%rip), %rax
	movq	%rax, col_sep_string(%rip)
.L139:
	.loc 2 1231 26
	movl	$1, col_sep_length(%rip)
	.loc 2 1232 29
	movb	$1, use_col_separator(%rip)
	jmp	.L140
.L137:
	.loc 2 1236 16
	movzbl	join_lines(%rip), %eax
	xorl	$1, %eax
	.loc 2 1236 15
	testb	%al, %al
	je	.L140
	.loc 2 1236 46 discriminator 1
	movl	col_sep_length(%rip), %eax
	.loc 2 1236 28 discriminator 1
	cmpl	$1, %eax
	jne	.L140
	.loc 2 1236 54 discriminator 2
	movq	col_sep_string(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 1236 51 discriminator 2
	cmpb	$9, %al
	jne	.L140
	.loc 2 1237 24
	movq	column_separator(%rip), %rax
	movq	%rax, col_sep_string(%rip)
.L140:
	.loc 2 1239 22
	movb	$1, truncate_lines(%rip)
	.loc 2 1240 21
	movb	$1, tabify_output(%rip)
	jmp	.L141
.L136:
	.loc 2 1243 21
	movb	$0, storing_columns(%rip)
.L141:
	.loc 2 1246 7
	movzbl	join_lines(%rip), %eax
	.loc 2 1246 6
	testb	%al, %al
	je	.L142
	.loc 2 1247 20
	movb	$0, truncate_lines(%rip)
.L142:
	.loc 2 1249 7
	movzbl	numbered_lines(%rip), %eax
	.loc 2 1249 6
	testb	%al, %al
	je	.L143
.LBB14:
	.loc 2 1251 11
	movl	$8, -12(%rbp)
	.loc 2 1253 18
	movl	start_line_num(%rip), %eax
	movl	%eax, line_count(%rip)
	.loc 2 1261 28
	movzbl	number_separator(%rip), %eax
	.loc 2 1261 10
	cmpb	$9, %al
	jne	.L144
	.loc 2 1263 27
	movl	chars_per_number(%rip), %eax
	cltd
	idivl	-12(%rbp)
	movl	-12(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	.loc 2 1263 25
	movl	chars_per_number(%rip), %eax
	addl	%edx, %eax
	.loc 2 1262 22
	movl	%eax, number_width(%rip)
	jmp	.L145
.L144:
	.loc 2 1265 41
	movl	chars_per_number(%rip), %eax
	addl	$1, %eax
	.loc 2 1265 22
	movl	%eax, number_width(%rip)
.L145:
	.loc 2 1269 11
	movzbl	parallel_files(%rip), %eax
	.loc 2 1269 10
	testb	%al, %al
	je	.L143
	.loc 2 1270 30
	movl	number_width(%rip), %eax
	movl	%eax, -16(%rbp)
.L143:
.LBE14:
	.loc 2 1274 7
	movl	columns(%rip), %eax
	leal	-1(%rax), %edx
	movl	col_sep_length(%rip), %eax
	movl	$0, %ecx
	imull	%edx, %eax
	jno	.L146
	movl	$1, %ecx
.L146:
	movl	%eax, -24(%rbp)
	movl	%ecx, %eax
	andl	$1, %eax
	.loc 2 1274 6
	testb	%al, %al
	je	.L148
	.loc 2 1275 15
	movl	$2147483647, -24(%rbp)
.L148:
	.loc 2 1276 7
	movl	chars_per_line(%rip), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	movl	$0, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	jno	.L149
	movl	$1, %ecx
.L149:
	movl	%eax, -20(%rbp)
	movl	%ecx, %eax
	andl	$1, %eax
	.loc 2 1276 6
	testb	%al, %al
	je	.L151
	.loc 2 1278 18
	movl	$0, -20(%rbp)
.L151:
	.loc 2 1279 35
	movl	-20(%rbp), %eax
	movl	columns(%rip), %esi
	cltd
	idivl	%esi
	.loc 2 1279 20
	movl	%eax, chars_per_column(%rip)
	.loc 2 1281 24
	movl	chars_per_column(%rip), %eax
	.loc 2 1281 6
	testl	%eax, %eax
	jg	.L152
.LBB15:
	.loc 2 1282 5
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L152:
.LBE15:
	.loc 2 1284 7
	movzbl	numbered_lines(%rip), %eax
	.loc 2 1284 6
	testb	%al, %al
	je	.L153
	.loc 2 1286 7
	movq	number_buff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1287 30
	movl	chars_per_number(%rip), %eax
	.loc 2 1287 21
	cmpl	$11, %eax
	jbe	.L154
	.loc 2 1288 67 discriminator 1
	movl	chars_per_number(%rip), %eax
	cltq
	.loc 2 1287 21 discriminator 1
	addq	$1, %rax
	jmp	.L155
.L154:
	.loc 2 1287 21 is_stmt 0 discriminator 2
	movl	$12, %eax
.L155:
	.loc 2 1287 21 discriminator 4
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 1287 19 is_stmt 1 discriminator 4
	movq	%rax, number_buff(%rip)
.L153:
	.loc 2 1296 3
	movq	clump_buff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1297 25
	movl	chars_per_input_tab(%rip), %eax
	movl	$8, %edx
	cmpl	$8, %eax
	cmovl	%edx, %eax
	.loc 2 1297 16
	cltq
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 1297 14
	movq	%rax, clump_buff(%rip)
	.loc 2 1298 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L156
	call	__stack_chk_fail@PLT
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	init_parameters, .-init_parameters
	.type	init_fps, @function
init_fps:
.LFB64:
	.loc 2 1313 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 1316 15
	movl	$0, total_files(%rip)
	.loc 2 1318 3
	movq	column_vector(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1319 19
	movl	columns(%rip), %eax
	cltq
	movl	$64, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	.loc 2 1319 17
	movq	%rax, column_vector(%rip)
	.loc 2 1321 7
	movzbl	parallel_files(%rip), %eax
	.loc 2 1321 6
	testb	%al, %al
	je	.L158
.LBB16:
	.loc 2 1323 11
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 2 1324 14
	movq	column_vector(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1324 7
	jmp	.L159
.L161:
	.loc 2 1326 17
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	open_file
	.loc 2 1326 15
	xorl	$1, %eax
	.loc 2 1326 14
	testb	%al, %al
	je	.L160
	.loc 2 1328 15
	subq	$64, -24(%rbp)
	.loc 2 1329 15
	movl	columns(%rip), %eax
	subl	$1, %eax
	movl	%eax, columns(%rip)
.L160:
	.loc 2 1324 45 discriminator 2
	addq	$64, -24(%rbp)
	.loc 2 1324 50 discriminator 2
	addq	$8, -48(%rbp)
.L159:
	.loc 2 1324 41 discriminator 1
	movl	-32(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -32(%rbp)
	.loc 2 1324 7 discriminator 1
	testl	%eax, %eax
	jne	.L161
	.loc 2 1332 19
	movl	columns(%rip), %eax
	.loc 2 1332 10
	testl	%eax, %eax
	jne	.L162
	.loc 2 1333 16
	movl	$0, %eax
	jmp	.L163
.L162:
	.loc 2 1334 7
	movl	$-1, %esi
	leaq	.LC18(%rip), %rdi
	call	init_header
.LBE16:
	jmp	.L164
.L158:
.LBB17:
	.loc 2 1338 9
	movq	column_vector(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1339 10
	cmpl	$0, -36(%rbp)
	jle	.L165
	.loc 2 1341 17
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	open_file
	.loc 2 1341 15
	xorl	$1, %eax
	.loc 2 1341 14
	testb	%al, %al
	je	.L166
	.loc 2 1342 20
	movl	$0, %eax
	jmp	.L163
.L166:
	.loc 2 1343 11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	init_header
	.loc 2 1344 27
	movq	-24(%rbp), %rax
	movl	$0, 44(%rax)
	jmp	.L167
.L165:
	.loc 2 1348 21
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	.loc 2 1348 19
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 2 1349 17
	movq	stdin(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1350 27
	movb	$1, have_read_stdin(%rip)
	.loc 2 1351 21
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 2 1352 32
	movq	-24(%rbp), %rax
	movb	$0, 57(%rax)
	.loc 2 1353 11
	movl	total_files(%rip), %eax
	addl	$1, %eax
	movl	%eax, total_files(%rip)
	.loc 2 1354 11
	movl	$-1, %esi
	leaq	.LC18(%rip), %rdi
	call	init_header
	.loc 2 1355 27
	movq	-24(%rbp), %rax
	movl	$0, 44(%rax)
.L167:
	.loc 2 1358 19
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1359 13
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1361 24
	movl	columns(%rip), %eax
	.loc 2 1361 14
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc 2 1361 29
	addq	$64, -24(%rbp)
	.loc 2 1361 7
	jmp	.L168
.L169:
	.loc 2 1363 19 discriminator 3
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 1364 17 discriminator 3
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 1365 21 discriminator 3
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 2 1366 32 discriminator 3
	movq	-24(%rbp), %rax
	movb	$0, 57(%rax)
	.loc 2 1367 27 discriminator 3
	movq	-24(%rbp), %rax
	movl	$0, 44(%rax)
	.loc 2 1361 37 discriminator 3
	subl	$1, -28(%rbp)
	.loc 2 1361 42 discriminator 3
	addq	$64, -24(%rbp)
.L168:
	.loc 2 1361 7 discriminator 1
	cmpl	$0, -28(%rbp)
	jne	.L169
.L164:
.LBE17:
	.loc 2 1370 23
	movl	total_files(%rip), %eax
	movl	%eax, files_ready_to_read(%rip)
	.loc 2 1371 10
	movl	$1, %eax
.L163:
	.loc 2 1372 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	init_fps, .-init_fps
	.type	init_funcs, @function
init_funcs:
.LFB65:
	.loc 2 1382 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 1386 5
	movl	chars_per_margin(%rip), %eax
	movl	%eax, -16(%rbp)
	.loc 2 1388 7
	movzbl	truncate_lines(%rip), %eax
	xorl	$1, %eax
	.loc 2 1388 6
	testb	%al, %al
	je	.L171
	.loc 2 1389 12
	movl	$0, -12(%rbp)
	jmp	.L172
.L171:
	.loc 2 1395 11
	movzbl	parallel_files(%rip), %eax
	.loc 2 1395 10
	testb	%al, %al
	je	.L173
	.loc 2 1395 26 discriminator 1
	movzbl	numbered_lines(%rip), %eax
	testb	%al, %al
	je	.L173
	.loc 2 1396 20
	movl	chars_per_column(%rip), %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	.loc 2 1396 39
	movl	number_width(%rip), %eax
	.loc 2 1396 16
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	jmp	.L172
.L173:
	.loc 2 1398 20
	movl	chars_per_column(%rip), %edx
	.loc 2 1398 16
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
.L172:
	.loc 2 1403 9
	movl	col_sep_length(%rip), %eax
	.loc 2 1403 5
	addl	%eax, -16(%rbp)
	.loc 2 1407 10
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1407 29
	movl	$1, -20(%rbp)
	.loc 2 1407 3
	jmp	.L174
.L182:
	.loc 2 1409 11
	movzbl	storing_columns(%rip), %eax
	.loc 2 1409 10
	testb	%al, %al
	je	.L175
	.loc 2 1411 24
	movq	-8(%rbp), %rax
	leaq	store_char(%rip), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 1412 25
	movq	-8(%rbp), %rax
	leaq	print_stored(%rip), %rdx
	movq	%rdx, 24(%rax)
	jmp	.L176
.L175:
	.loc 2 1417 24
	movq	-8(%rbp), %rax
	leaq	print_char(%rip), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 1418 25
	movq	-8(%rbp), %rax
	leaq	read_line(%rip), %rdx
	movq	%rdx, 24(%rax)
.L176:
	.loc 2 1423 21
	movzbl	numbered_lines(%rip), %eax
	.loc 2 1423 36
	testb	%al, %al
	je	.L177
	.loc 2 1423 40 discriminator 1
	movzbl	parallel_files(%rip), %eax
	xorl	$1, %eax
	.loc 2 1423 36 discriminator 1
	testb	%al, %al
	jne	.L178
	.loc 2 1423 56 discriminator 4
	cmpl	$1, -20(%rbp)
	jne	.L177
.L178:
	.loc 2 1423 36 discriminator 5
	movl	$1, %eax
	jmp	.L179
.L177:
	.loc 2 1423 36 is_stmt 0 discriminator 6
	movl	$0, %eax
.L179:
	.loc 2 1423 36 discriminator 8
	andl	$1, %eax
	.loc 2 1423 19 is_stmt 1 discriminator 8
	movq	-8(%rbp), %rdx
	movb	%al, 56(%rdx)
	.loc 2 1424 25 discriminator 8
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 52(%rax)
	.loc 2 1430 11 discriminator 8
	movzbl	truncate_lines(%rip), %eax
	xorl	$1, %eax
	.loc 2 1430 10 discriminator 8
	testb	%al, %al
	je	.L180
	.loc 2 1432 13
	movl	$0, -16(%rbp)
	.loc 2 1433 18
	movl	$0, -12(%rbp)
	jmp	.L181
.L180:
	.loc 2 1437 22
	movl	col_sep_length(%rip), %edx
	.loc 2 1437 13
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	.loc 2 1438 22
	movl	chars_per_column(%rip), %edx
	.loc 2 1438 18
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
.L181:
	.loc 2 1407 47 discriminator 2
	addq	$64, -8(%rbp)
	.loc 2 1407 52 discriminator 2
	addl	$1, -20(%rbp)
.L174:
	.loc 2 1407 36 discriminator 1
	movl	columns(%rip), %eax
	.loc 2 1407 3 discriminator 1
	cmpl	%eax, -20(%rbp)
	jl	.L182
	.loc 2 1446 7
	movzbl	storing_columns(%rip), %eax
	.loc 2 1446 6
	testb	%al, %al
	je	.L183
	.loc 2 1446 23 discriminator 1
	movzbl	balance_columns(%rip), %eax
	testb	%al, %al
	je	.L183
	.loc 2 1448 20
	movq	-8(%rbp), %rax
	leaq	store_char(%rip), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 1449 21
	movq	-8(%rbp), %rax
	leaq	print_stored(%rip), %rdx
	movq	%rdx, 24(%rax)
	jmp	.L184
.L183:
	.loc 2 1453 20
	movq	-8(%rbp), %rax
	leaq	print_char(%rip), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 1454 21
	movq	-8(%rbp), %rax
	leaq	read_line(%rip), %rdx
	movq	%rdx, 24(%rax)
.L184:
	.loc 2 1457 17
	movzbl	numbered_lines(%rip), %eax
	.loc 2 1457 32
	testb	%al, %al
	je	.L185
	.loc 2 1457 36 discriminator 1
	movzbl	parallel_files(%rip), %eax
	xorl	$1, %eax
	.loc 2 1457 32 discriminator 1
	testb	%al, %al
	jne	.L186
	.loc 2 1457 52 discriminator 4
	cmpl	$1, -20(%rbp)
	jne	.L185
.L186:
	.loc 2 1457 32 discriminator 5
	movl	$1, %eax
	jmp	.L187
.L185:
	.loc 2 1457 32 is_stmt 0 discriminator 6
	movl	$0, %eax
.L187:
	.loc 2 1457 32 discriminator 8
	andl	$1, %eax
	.loc 2 1457 15 is_stmt 1 discriminator 8
	movq	-8(%rbp), %rdx
	movb	%al, 56(%rdx)
	.loc 2 1458 21 discriminator 8
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 52(%rax)
	.loc 2 1459 1 discriminator 8
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	init_funcs, .-init_funcs
	.section	.rodata
.LC70:
	.string	"-"
.LC71:
	.string	"r"
.LC72:
	.string	"%s"
	.text
	.type	open_file, @function
open_file:
.LFB66:
	.loc 2 1468 1
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
	.loc 2 1469 7
	movq	-24(%rbp), %rax
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1469 6
	testl	%eax, %eax
	jne	.L189
	.loc 2 1471 17
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	.loc 2 1471 15
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 2 1472 13
	movq	stdin(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1473 23
	movb	$1, have_read_stdin(%rip)
	jmp	.L190
.L189:
	.loc 2 1477 15
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 1478 15
	movq	-24(%rbp), %rax
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	call	fopen_safer@PLT
	.loc 2 1478 13
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
.L190:
	.loc 2 1480 8
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1480 6
	testq	%rax, %rax
	jne	.L191
	.loc 2 1482 20
	movb	$1, failed_opens(%rip)
	.loc 2 1483 11
	movzbl	ignore_failed_opens(%rip), %eax
	xorl	$1, %eax
	.loc 2 1483 10
	testb	%al, %al
	je	.L192
	.loc 2 1484 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 1484 19
	call	__errno_location@PLT
	.loc 2 1484 9
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC72(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L192:
	.loc 2 1485 14
	movl	$0, %eax
	jmp	.L193
.L191:
	.loc 2 1487 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 1488 13
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 2 1489 24
	movq	-32(%rbp), %rax
	movb	$0, 57(%rax)
	.loc 2 1490 3
	movl	total_files(%rip), %eax
	addl	$1, %eax
	movl	%eax, total_files(%rip)
	.loc 2 1491 10
	movl	$1, %eax
.L193:
	.loc 2 1492 1
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	open_file, .-open_file
	.type	close_file, @function
close_file:
.LFB67:
	.loc 2 1501 1
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
	.loc 2 1505 8
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1505 6
	cmpl	$3, %eax
	je	.L204
	.loc 2 1507 7
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1507 6
	testl	%eax, %eax
	je	.L197
.LBB18:
	.loc 2 1508 5
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC72(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L197:
.LBE18:
	.loc 2 1509 7
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	.loc 2 1509 6
	testl	%eax, %eax
	je	.L198
	.loc 2 1509 41 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1509 38 discriminator 1
	testl	%eax, %eax
	je	.L198
.LBB19:
	.loc 2 1510 5
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC72(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L198:
.LBE19:
	.loc 2 1512 7
	movzbl	parallel_files(%rip), %eax
	xorl	$1, %eax
	.loc 2 1512 6
	testb	%al, %al
	je	.L199
	.loc 2 1514 14
	movq	column_vector(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1514 33
	movl	columns(%rip), %eax
	movl	%eax, -28(%rbp)
	.loc 2 1514 7
	jmp	.L200
.L202:
	.loc 2 1516 21
	movq	-24(%rbp), %rax
	movl	$3, 16(%rax)
	.loc 2 1517 16
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	.loc 2 1517 14
	testl	%eax, %eax
	jne	.L201
	.loc 2 1519 33
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
.L201:
	.loc 2 1514 47 discriminator 2
	addq	$64, -24(%rbp)
	.loc 2 1514 52 discriminator 2
	subl	$1, -28(%rbp)
.L200:
	.loc 2 1514 7 discriminator 1
	cmpl	$0, -28(%rbp)
	jne	.L202
	jmp	.L203
.L199:
	.loc 2 1525 17
	movq	-40(%rbp), %rax
	movl	$3, 16(%rax)
	.loc 2 1526 25
	movq	-40(%rbp), %rax
	movl	$0, 48(%rax)
.L203:
	.loc 2 1529 3
	movl	files_ready_to_read(%rip), %eax
	subl	$1, %eax
	movl	%eax, files_ready_to_read(%rip)
	jmp	.L194
.L204:
	.loc 2 1506 5
	nop
.L194:
	.loc 2 1530 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	close_file, .-close_file
	.type	hold_file, @function
hold_file:
.LFB68:
	.loc 2 1540 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 1544 7
	movzbl	parallel_files(%rip), %eax
	xorl	$1, %eax
	.loc 2 1544 6
	testb	%al, %al
	je	.L206
	.loc 2 1545 12
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1545 31
	movl	columns(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 2 1545 5
	jmp	.L207
.L210:
	.loc 2 1547 13
	movzbl	storing_columns(%rip), %eax
	.loc 2 1547 12
	testb	%al, %al
	je	.L208
	.loc 2 1548 21
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	jmp	.L209
.L208:
	.loc 2 1550 21
	movq	-8(%rbp), %rax
	movl	$2, 16(%rax)
.L209:
	.loc 2 1545 45 discriminator 2
	addq	$64, -8(%rbp)
	.loc 2 1545 50 discriminator 2
	subl	$1, -12(%rbp)
.L207:
	.loc 2 1545 5 discriminator 1
	cmpl	$0, -12(%rbp)
	jne	.L210
	jmp	.L211
.L206:
	.loc 2 1553 15
	movq	-24(%rbp), %rax
	movl	$2, 16(%rax)
.L211:
	.loc 2 1555 21
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
	.loc 2 1556 3
	movl	files_ready_to_read(%rip), %eax
	subl	$1, %eax
	movl	%eax, files_ready_to_read(%rip)
	.loc 2 1557 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	hold_file, .-hold_file
	.type	reset_status, @function
reset_status:
.LFB69:
	.loc 2 1564 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 1565 7
	movl	columns(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 2 1568 10
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1568 3
	jmp	.L213
.L215:
	.loc 2 1569 10
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1569 8
	cmpl	$2, %eax
	jne	.L214
	.loc 2 1571 19
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 2 1572 28
	movl	files_ready_to_read(%rip), %eax
	addl	$1, %eax
	movl	%eax, files_ready_to_read(%rip)
.L214:
	.loc 2 1568 30 discriminator 2
	subl	$1, -12(%rbp)
	.loc 2 1568 35 discriminator 2
	addq	$64, -8(%rbp)
.L213:
	.loc 2 1568 3 discriminator 1
	cmpl	$0, -12(%rbp)
	jne	.L215
	.loc 2 1575 7
	movzbl	storing_columns(%rip), %eax
	.loc 2 1575 6
	testb	%al, %al
	je	.L218
	.loc 2 1577 24
	movq	column_vector(%rip), %rax
	movl	16(%rax), %eax
	.loc 2 1577 10
	cmpl	$3, %eax
	jne	.L217
	.loc 2 1579 29
	movl	$0, files_ready_to_read(%rip)
	.loc 2 1583 1
	jmp	.L218
.L217:
	.loc 2 1581 29
	movl	$1, files_ready_to_read(%rip)
.L218:
	.loc 2 1583 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	reset_status, .-reset_status
	.type	print_files, @function
print_files:
.LFB70:
	.loc 2 1596 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 1597 3
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	init_parameters
	.loc 2 1598 9
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	init_fps
	.loc 2 1598 7
	xorl	$1, %eax
	.loc 2 1598 6
	testb	%al, %al
	jne	.L227
	.loc 2 1600 7
	movzbl	storing_columns(%rip), %eax
	.loc 2 1600 6
	testb	%al, %al
	je	.L222
	.loc 2 1601 5
	call	init_store_cols
.L222:
	.loc 2 1603 25
	movq	first_page_number(%rip), %rax
	.loc 2 1603 6
	cmpq	$1, %rax
	jbe	.L223
	.loc 2 1605 12
	movq	first_page_number(%rip), %rax
	movq	%rax, %rdi
	call	skip_to_page
	.loc 2 1605 11
	xorl	$1, %eax
	.loc 2 1605 10
	testb	%al, %al
	jne	.L228
	.loc 2 1608 21
	movq	first_page_number(%rip), %rax
	movq	%rax, page_number(%rip)
	jmp	.L225
.L223:
	.loc 2 1611 17
	movq	$1, page_number(%rip)
.L225:
	.loc 2 1613 3
	call	init_funcs
	.loc 2 1615 15
	movl	line_count(%rip), %eax
	movl	%eax, line_number(%rip)
	.loc 2 1616 9
	nop
.L226:
	.loc 2 1616 10 discriminator 1
	call	print_page
	.loc 2 1616 9 discriminator 1
	testb	%al, %al
	jne	.L226
	jmp	.L219
.L227:
	.loc 2 1599 5
	nop
	jmp	.L219
.L228:
	.loc 2 1606 9
	nop
.L219:
	.loc 2 1618 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	print_files, .-print_files
	.section	.rodata
.LC73:
	.string	"%s.%09d"
	.text
	.type	init_header, @function
init_header:
.LFB71:
	.loc 2 1626 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	.loc 2 1626 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1627 9
	movq	$0, -288(%rbp)
	.loc 2 1634 7
	movq	-312(%rbp), %rax
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1634 6
	testl	%eax, %eax
	jne	.L230
	.loc 2 1635 10
	movl	$-1, -316(%rbp)
.L230:
	.loc 2 1636 6
	cmpl	$0, -316(%rbp)
	js	.L231
	.loc 2 1636 20 discriminator 1
	leaq	-192(%rbp), %rdx
	movl	-316(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 2 1636 17 discriminator 1
	testl	%eax, %eax
	jne	.L231
	.loc 2 1637 9
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	.loc 2 1637 7
	jmp	.L232
.L231:
.LBB20:
	.loc 2 1641 21
	movq	timespec.6729(%rip), %rax
	.loc 2 1641 10
	testq	%rax, %rax
	jne	.L233
	.loc 2 1642 9
	leaq	timespec.6729(%rip), %rdi
	call	gettime@PLT
.L233:
	.loc 2 1643 9
	movq	timespec.6729(%rip), %rax
	movq	8+timespec.6729(%rip), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
.L232:
.LBE20:
	.loc 2 1646 9
	movq	-264(%rbp), %rax
	.loc 2 1646 6
	movl	%eax, -292(%rbp)
	.loc 2 1647 7
	movq	localtz(%rip), %rax
	leaq	-256(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	localtime_rz@PLT
	.loc 2 1647 6
	testq	%rax, %rax
	je	.L234
.LBB21:
	.loc 2 1650 11
	movq	localtz(%rip), %rcx
	movq	date_format(%rip), %rax
	movl	-292(%rbp), %esi
	leaq	-256(%rbp), %rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	$-1, %rsi
	movl	$0, %edi
	call	nstrftime@PLT
	.loc 2 1649 14
	addq	$1, %rax
	movq	%rax, -280(%rbp)
	.loc 2 1651 13
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -288(%rbp)
	.loc 2 1652 7
	movq	localtz(%rip), %rdi
	movq	date_format(%rip), %rdx
	movl	-292(%rbp), %r8d
	leaq	-256(%rbp), %rcx
	movq	-280(%rbp), %rsi
	movq	-288(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	nstrftime@PLT
.LBE21:
	jmp	.L235
.L234:
.LBB22:
	.loc 2 1657 13
	movl	$33, %edi
	call	xmalloc@PLT
	movq	%rax, -288(%rbp)
	.loc 2 1658 7
	movq	-272(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	timetostr
	movq	%rax, %rsi
	movl	-292(%rbp), %edx
	movq	-288(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L235:
.LBE22:
	.loc 2 1661 3
	movq	date_text(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1662 13
	movq	-288(%rbp), %rax
	movq	%rax, date_text(%rip)
	.loc 2 1663 29
	movq	custom_header(%rip), %rax
	.loc 2 1663 45
	testq	%rax, %rax
	jne	.L236
	.loc 2 1663 61 discriminator 1
	cmpl	$0, -316(%rbp)
	js	.L237
	.loc 2 1663 61 is_stmt 0 discriminator 3
	movq	-312(%rbp), %rax
	jmp	.L239
.L237:
	.loc 2 1663 61 discriminator 4
	leaq	.LC18(%rip), %rax
	jmp	.L239
.L236:
	.loc 2 1663 45 is_stmt 1 discriminator 2
	movq	custom_header(%rip), %rax
.L239:
	.loc 2 1663 13 discriminator 8
	movq	%rax, file_text(%rip)
	.loc 2 1665 29 discriminator 8
	movl	chars_per_line(%rip), %ebx
	.loc 2 1665 31 discriminator 8
	movq	date_text(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	.loc 2 1665 29 discriminator 8
	subl	%eax, %ebx
	.loc 2 1666 31 discriminator 8
	movq	file_text(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	.loc 2 1666 29 discriminator 8
	subl	%eax, %ebx
	movl	%ebx, %eax
	.loc 2 1664 26 discriminator 8
	movl	%eax, header_width_available(%rip)
	.loc 2 1667 1 discriminator 8
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L240
	.loc 2 1667 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L240:
	addq	$312, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	init_header, .-init_header
	.type	init_page, @function
init_page:
.LFB72:
	.loc 2 1681 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 1685 7
	movzbl	storing_columns(%rip), %eax
	.loc 2 1685 6
	testb	%al, %al
	je	.L242
	.loc 2 1687 7
	call	store_columns
	.loc 2 1688 24
	movl	columns(%rip), %eax
	.loc 2 1688 14
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc 2 1688 31
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1688 7
	jmp	.L243
.L244:
	.loc 2 1690 32 discriminator 3
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	.loc 2 1690 29 discriminator 3
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	.loc 2 1688 51 discriminator 3
	subl	$1, -12(%rbp)
	.loc 2 1688 56 discriminator 3
	addq	$64, -8(%rbp)
.L243:
	.loc 2 1688 7 discriminator 1
	cmpl	$0, -12(%rbp)
	jne	.L244
	.loc 2 1694 11
	movzbl	balance_columns(%rip), %eax
	.loc 2 1694 10
	testb	%al, %al
	je	.L245
	.loc 2 1696 32
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	.loc 2 1696 29
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	.loc 2 1718 1
	jmp	.L252
.L245:
	.loc 2 1702 16
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1702 14
	testl	%eax, %eax
	jne	.L247
	.loc 2 1704 33
	movl	lines_per_body(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	.loc 2 1718 1
	jmp	.L252
.L247:
	.loc 2 1707 31
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	.loc 2 1718 1
	jmp	.L252
.L242:
	.loc 2 1711 12
	movl	columns(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 2 1711 25
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1711 5
	jmp	.L248
.L251:
	.loc 2 1712 12
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1712 10
	testl	%eax, %eax
	jne	.L249
	.loc 2 1714 29
	movl	lines_per_body(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	jmp	.L250
.L249:
	.loc 2 1717 27
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.L250:
	.loc 2 1711 45 discriminator 2
	subl	$1, -12(%rbp)
	.loc 2 1711 50 discriminator 2
	addq	$64, -8(%rbp)
.L248:
	.loc 2 1711 5 discriminator 1
	cmpl	$0, -12(%rbp)
	jne	.L251
.L252:
	.loc 2 1718 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	init_page, .-init_page
	.type	align_column, @function
align_column:
.LFB73:
	.loc 2 1726 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 1727 26
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	.loc 2 1727 23
	movl	%eax, padding_not_printed(%rip)
	.loc 2 1728 22
	movl	col_sep_length(%rip), %edx
	movl	padding_not_printed(%rip), %eax
	.loc 2 1728 6
	cmpl	%eax, %edx
	jge	.L254
	.loc 2 1730 7
	movl	padding_not_printed(%rip), %edx
	movl	col_sep_length(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edi
	call	pad_across_to
	.loc 2 1731 27
	movl	$0, padding_not_printed(%rip)
.L254:
	.loc 2 1734 7
	movzbl	use_col_separator(%rip), %eax
	.loc 2 1734 6
	testb	%al, %al
	je	.L255
	.loc 2 1735 5
	call	print_sep_string
.L255:
	.loc 2 1737 8
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 2 1737 6
	testb	%al, %al
	je	.L257
	.loc 2 1738 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	add_line_number
.L257:
	.loc 2 1739 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	align_column, .-align_column
	.type	print_page, @function
print_page:
.LFB74:
	.loc 2 1754 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 2 1768 3
	call	init_page
	.loc 2 1770 7
	call	cols_ready_to_print
	.loc 2 1770 6
	testl	%eax, %eax
	jne	.L259
	.loc 2 1771 12
	movl	$0, %eax
	jmp	.L260
.L259:
	.loc 2 1773 7
	movzbl	extremities(%rip), %eax
	.loc 2 1773 6
	testb	%al, %al
	je	.L261
	.loc 2 1774 20
	movb	$1, print_a_header(%rip)
.L261:
	.loc 2 1777 18
	movb	$0, pad_vertically(%rip)
	.loc 2 1778 6
	movb	$0, -17(%rbp)
	.loc 2 1780 22
	movl	lines_per_body(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 2 1781 7
	movzbl	double_space(%rip), %eax
	.loc 2 1781 6
	testb	%al, %al
	je	.L263
	.loc 2 1782 24
	sall	-12(%rbp)
	.loc 2 1784 9
	jmp	.L263
.L280:
	.loc 2 1786 23
	movl	$0, output_position(%rip)
	.loc 2 1787 26
	movl	$0, spaces_not_printed(%rip)
	.loc 2 1788 30
	movl	$0, separators_not_printed(%rip)
	.loc 2 1789 22
	movb	$0, pad_vertically(%rip)
	.loc 2 1790 24
	movb	$0, align_empty_cols(%rip)
	.loc 2 1791 18
	movb	$1, empty_line(%rip)
	.loc 2 1793 14
	movl	$1, -16(%rbp)
	.loc 2 1793 21
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1793 7
	jmp	.L264
.L276:
	.loc 2 1795 26
	movl	$0, input_position(%rip)
	.loc 2 1796 16
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	.loc 2 1796 14
	testl	%eax, %eax
	jg	.L265
	.loc 2 1796 41 discriminator 1
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1796 37 discriminator 1
	cmpl	$1, %eax
	jne	.L266
.L265:
	.loc 2 1798 23
	movb	$0, FF_only(%rip)
	.loc 2 1799 38
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	.loc 2 1799 35
	movl	%eax, padding_not_printed(%rip)
	.loc 2 1800 22
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.LVL0:
	.loc 2 1800 19
	xorl	$1, %eax
	.loc 2 1800 18
	testb	%al, %al
	je	.L267
	.loc 2 1801 17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	read_rest_of_line
.L267:
	.loc 2 1802 18
	movzbl	pad_vertically(%rip), %eax
	orb	-17(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -17(%rbp)
	.loc 2 1804 18
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	.loc 2 1804 15
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	.loc 2 1805 20
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	.loc 2 1805 18
	testl	%eax, %eax
	jg	.L268
	.loc 2 1807 23
	call	cols_ready_to_print
	.loc 2 1807 22
	testl	%eax, %eax
	je	.L288
.L268:
	.loc 2 1812 19
	movzbl	parallel_files(%rip), %eax
	.loc 2 1812 18
	testb	%al, %al
	je	.L289
	.loc 2 1812 38 discriminator 1
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1812 34 discriminator 1
	testl	%eax, %eax
	je	.L289
	.loc 2 1814 23
	movzbl	empty_line(%rip), %eax
	.loc 2 1814 22
	testb	%al, %al
	je	.L271
	.loc 2 1815 38
	movb	$1, align_empty_cols(%rip)
	.loc 2 1812 18
	jmp	.L289
.L271:
	.loc 2 1816 29
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1816 27
	cmpl	$3, %eax
	je	.L272
	.loc 2 1817 33
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1817 28
	cmpl	$2, %eax
	jne	.L289
	.loc 2 1817 53 discriminator 1
	movzbl	FF_only(%rip), %eax
	testb	%al, %al
	je	.L289
.L272:
	.loc 2 1818 21
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	align_column
	.loc 2 1812 18
	jmp	.L289
.L266:
	.loc 2 1821 20
	movzbl	parallel_files(%rip), %eax
	.loc 2 1821 19
	testb	%al, %al
	je	.L273
	.loc 2 1824 19
	movzbl	empty_line(%rip), %eax
	.loc 2 1824 18
	testb	%al, %al
	je	.L274
	.loc 2 1825 34
	movb	$1, align_empty_cols(%rip)
	jmp	.L273
.L274:
	.loc 2 1827 17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	align_column
	jmp	.L273
.L289:
	.loc 2 1812 18
	nop
.L273:
	.loc 2 1831 15
	movzbl	use_col_separator(%rip), %eax
	.loc 2 1831 14
	testb	%al, %al
	je	.L275
	.loc 2 1832 13
	movl	separators_not_printed(%rip), %eax
	addl	$1, %eax
	movl	%eax, separators_not_printed(%rip)
.L275:
	.loc 2 1793 52 discriminator 2
	addl	$1, -16(%rbp)
	.loc 2 1793 57 discriminator 2
	addq	$64, -8(%rbp)
.L264:
	.loc 2 1793 40 discriminator 1
	movl	columns(%rip), %eax
	.loc 2 1793 7 discriminator 1
	cmpl	%eax, -16(%rbp)
	jle	.L276
	jmp	.L269
.L288:
	.loc 2 1808 21
	nop
.L269:
	.loc 2 1835 11
	movzbl	pad_vertically(%rip), %eax
	.loc 2 1835 10
	testb	%al, %al
	je	.L277
	.loc 2 1837 11
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 1838 11
	subl	$1, -12(%rbp)
.L277:
	.loc 2 1841 11
	call	cols_ready_to_print
	.loc 2 1841 10
	testl	%eax, %eax
	jne	.L278
	.loc 2 1841 42 discriminator 1
	movzbl	extremities(%rip), %eax
	xorl	$1, %eax
	.loc 2 1841 39 discriminator 1
	testb	%al, %al
	jne	.L290
.L278:
	.loc 2 1844 11
	movzbl	double_space(%rip), %eax
	.loc 2 1844 10
	testb	%al, %al
	je	.L263
	.loc 2 1844 24 discriminator 1
	cmpb	$0, -17(%rbp)
	je	.L263
	.loc 2 1846 11
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 1847 11
	subl	$1, -12(%rbp)
.L263:
	.loc 2 1784 9
	cmpl	$0, -12(%rbp)
	jle	.L279
	.loc 2 1784 36 discriminator 1
	call	cols_ready_to_print
	.loc 2 1784 33 discriminator 1
	testl	%eax, %eax
	jne	.L280
	jmp	.L279
.L290:
	.loc 2 1842 9
	nop
.L279:
	.loc 2 1851 6
	cmpl	$0, -12(%rbp)
	jne	.L281
	.loc 2 1852 12
	movl	$1, -16(%rbp)
	.loc 2 1852 19
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1852 5
	jmp	.L282
.L284:
	.loc 2 1853 12
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1853 10
	testl	%eax, %eax
	jne	.L283
	.loc 2 1854 30
	movq	-8(%rbp), %rax
	movb	$1, 57(%rax)
.L283:
	.loc 2 1852 50 discriminator 2
	addl	$1, -16(%rbp)
	.loc 2 1852 55 discriminator 2
	addq	$64, -8(%rbp)
.L282:
	.loc 2 1852 38 discriminator 1
	movl	columns(%rip), %eax
	.loc 2 1852 5 discriminator 1
	cmpl	%eax, -16(%rbp)
	jle	.L284
.L281:
	.loc 2 1856 18
	movzbl	-17(%rbp), %eax
	movb	%al, pad_vertically(%rip)
	.loc 2 1858 7
	movzbl	pad_vertically(%rip), %eax
	.loc 2 1858 6
	testb	%al, %al
	je	.L285
	.loc 2 1858 22 discriminator 1
	movzbl	extremities(%rip), %eax
	testb	%al, %al
	je	.L285
	.loc 2 1859 34
	movl	-12(%rbp), %eax
	addl	$5, %eax
	.loc 2 1859 5
	movl	%eax, %edi
	call	pad_down
	jmp	.L286
.L285:
	.loc 2 1860 12
	movzbl	keep_FF(%rip), %eax
	.loc 2 1860 11
	testb	%al, %al
	je	.L286
	.loc 2 1860 20 discriminator 1
	movzbl	print_a_FF(%rip), %eax
	testb	%al, %al
	je	.L286
	.loc 2 1862 7
	movl	$12, %edi
	call	putchar_unlocked@PLT
	.loc 2 1863 18
	movb	$0, print_a_FF(%rip)
.L286:
	.loc 2 1866 26
	movq	page_number(%rip), %rax
	addq	$1, %rax
	.loc 2 1866 6
	movq	%rax, page_number(%rip)
	.loc 2 1866 26
	movq	page_number(%rip), %rdx
	.loc 2 1866 24
	movq	last_page_number(%rip), %rax
	.loc 2 1866 6
	cmpq	%rax, %rdx
	jbe	.L287
	.loc 2 1867 12
	movl	$0, %eax
	jmp	.L260
.L287:
	.loc 2 1869 3
	call	reset_status
	.loc 2 1871 10
	movl	$1, %eax
.L260:
	.loc 2 1872 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	print_page, .-print_page
	.type	init_store_cols, @function
init_store_cols:
.LFB75:
	.loc 2 1890 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 2 1890 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1892 7
	movl	lines_per_body(%rip), %edx
	movl	columns(%rip), %eax
	movl	$0, %ecx
	imull	%edx, %eax
	jno	.L292
	movl	$1, %ecx
.L292:
	movl	%eax, -24(%rbp)
	movl	%ecx, %eax
	andl	$1, %eax
	.loc 2 1892 6
	testb	%al, %al
	jne	.L294
	.loc 2 1893 10
	movl	-24(%rbp), %eax
	movl	$0, %edx
	addl	$1, %eax
	jno	.L295
	movl	$1, %edx
.L295:
	movl	%eax, -20(%rbp)
	movl	%edx, %eax
	andl	$1, %eax
	.loc 2 1893 7
	testb	%al, %al
	jne	.L294
	.loc 2 1894 10
	movl	chars_per_column(%rip), %eax
	movl	$0, %edx
	addl	$1, %eax
	jno	.L297
	movl	$1, %edx
.L297:
	movl	%eax, -16(%rbp)
	movl	%edx, %eax
	andl	$1, %eax
	.loc 2 1894 7
	testb	%al, %al
	jne	.L294
	.loc 2 1895 10
	movl	-24(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	$0, %ecx
	imull	%edx, %eax
	jno	.L299
	movl	$1, %ecx
.L299:
	movl	%eax, -12(%rbp)
	movl	%ecx, %eax
	andl	$1, %eax
	.loc 2 1895 7
	testb	%al, %al
	je	.L301
.L294:
	.loc 2 1897 5
	call	integer_overflow
.L301:
	.loc 2 1899 3
	movq	line_vector(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1901 17
	movl	-20(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	.loc 2 1901 15
	movq	%rax, line_vector(%rip)
	.loc 2 1903 3
	movq	end_vector(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1904 16
	movl	-24(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	.loc 2 1904 14
	movq	%rax, end_vector(%rip)
	.loc 2 1906 3
	movq	buff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1907 57
	movzbl	use_col_separator(%rip), %eax
	movzbl	%al, %eax
	addl	$1, %eax
	.loc 2 1907 10
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	.loc 2 1907 8
	movq	%rax, buff(%rip)
	.loc 2 1908 18
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, buff_allocated(%rip)
	.loc 2 1909 39
	movzbl	use_col_separator(%rip), %eax
	movzbl	%al, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	.loc 2 1909 18
	movq	buff_allocated(%rip), %rax
	imulq	%rdx, %rax
	movq	%rax, buff_allocated(%rip)
	.loc 2 1910 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L302
	call	__stack_chk_fail@PLT
.L302:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	init_store_cols, .-init_store_cols
	.type	store_columns, @function
store_columns:
.LFB76:
	.loc 2 1926 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 2 1928 16
	movl	$0, -20(%rbp)
	.loc 2 1933 16
	movl	$0, buff_current(%rip)
	.loc 2 1934 14
	movl	$0, -16(%rbp)
	.loc 2 1936 7
	movzbl	balance_columns(%rip), %eax
	.loc 2 1936 6
	testb	%al, %al
	je	.L304
	.loc 2 1937 14
	movl	columns(%rip), %eax
	movl	%eax, -12(%rbp)
	jmp	.L305
.L304:
	.loc 2 1939 24
	movl	columns(%rip), %eax
	.loc 2 1939 14
	subl	$1, %eax
	movl	%eax, -12(%rbp)
.L305:
	.loc 2 1941 10
	movl	$1, -28(%rbp)
	.loc 2 1941 17
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1941 3
	jmp	.L306
.L307:
	.loc 2 1942 21 discriminator 3
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
	.loc 2 1941 49 discriminator 3
	addl	$1, -28(%rbp)
	.loc 2 1941 54 discriminator 3
	addq	$64, -8(%rbp)
.L306:
	.loc 2 1941 3 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L307
	.loc 2 1944 10
	movl	$1, -28(%rbp)
	.loc 2 1944 17
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1944 3
	jmp	.L308
.L316:
	.loc 2 1947 23
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	.loc 2 1948 14
	movl	lines_per_body(%rip), %eax
	movl	%eax, -24(%rbp)
	.loc 2 1948 7
	jmp	.L309
.L314:
	.loc 2 1950 14
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1950 12
	testl	%eax, %eax
	jne	.L310
	.loc 2 1952 28
	movl	$0, input_position(%rip)
	.loc 2 1954 18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	read_line
	.loc 2 1954 17
	xorl	$1, %eax
	.loc 2 1954 16
	testb	%al, %al
	je	.L311
	.loc 2 1955 15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	read_rest_of_line
.L311:
	.loc 2 1957 18
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 1957 16
	testl	%eax, %eax
	je	.L312
	.loc 2 1958 31
	movl	buff_current(%rip), %eax
	.loc 2 1958 17
	cmpl	%eax, -16(%rbp)
	je	.L310
.L312:
	.loc 2 1960 20
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	.loc 2 1960 17
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 44(%rax)
	.loc 2 1961 28
	movq	line_vector(%rip), %rax
	movl	-20(%rbp), %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	.loc 2 1961 35
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 2 1962 27
	movq	end_vector(%rip), %rcx
	.loc 2 1962 32
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movl	%eax, %eax
	.loc 2 1962 27
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	.loc 2 1962 36
	movl	input_position(%rip), %eax
	movl	%eax, (%rdx)
	.loc 2 1963 28
	movl	buff_current(%rip), %eax
	movl	%eax, -16(%rbp)
.L310:
	.loc 2 1948 58 discriminator 2
	subl	$1, -24(%rbp)
.L309:
	.loc 2 1948 7 discriminator 1
	cmpl	$0, -24(%rbp)
	je	.L313
	.loc 2 1948 34 discriminator 3
	movl	files_ready_to_read(%rip), %eax
	testl	%eax, %eax
	jne	.L314
.L313:
	.loc 2 1945 8
	addl	$1, -28(%rbp)
	.loc 2 1945 13
	addq	$64, -8(%rbp)
.L308:
	.loc 2 1944 3 discriminator 1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.L315
	.loc 2 1944 48 discriminator 2
	movl	files_ready_to_read(%rip), %eax
	testl	%eax, %eax
	jne	.L316
.L315:
	.loc 2 1969 14
	movq	line_vector(%rip), %rax
	movl	-20(%rbp), %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	.loc 2 1969 21
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
	.loc 2 1971 7
	movzbl	balance_columns(%rip), %eax
	.loc 2 1971 6
	testb	%al, %al
	je	.L318
	.loc 2 1972 5
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	balance
.L318:
	.loc 2 1973 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	store_columns, .-store_columns
	.type	balance, @function
balance:
.LFB77:
	.loc 2 1977 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	.loc 2 1980 7
	movl	$0, -12(%rbp)
	.loc 2 1982 10
	movl	$1, -20(%rbp)
	.loc 2 1982 17
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1982 3
	jmp	.L320
.L322:
	.loc 2 1984 28
	movl	columns(%rip), %esi
	.loc 2 1984 13
	movl	-36(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, -16(%rbp)
	.loc 2 1985 29
	movl	columns(%rip), %ecx
	movl	-36(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	.loc 2 1985 10
	cmpl	%eax, -20(%rbp)
	jg	.L321
	.loc 2 1986 9
	addl	$1, -16(%rbp)
.L321:
	.loc 2 1988 23 discriminator 2
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 44(%rax)
	.loc 2 1989 23 discriminator 2
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 40(%rax)
	.loc 2 1991 18 discriminator 2
	movl	-16(%rbp), %eax
	addl	%eax, -12(%rbp)
	.loc 2 1982 48 discriminator 2
	addl	$1, -20(%rbp)
	.loc 2 1982 53 discriminator 2
	addq	$64, -8(%rbp)
.L320:
	.loc 2 1982 36 discriminator 1
	movl	columns(%rip), %eax
	.loc 2 1982 3 discriminator 1
	cmpl	%eax, -20(%rbp)
	jle	.L322
	.loc 2 1993 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	balance, .-balance
	.type	store_char, @function
store_char:
.LFB78:
	.loc 2 1999 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 2000 20
	movl	buff_current(%rip), %eax
	movl	%eax, %edx
	movq	buff_allocated(%rip), %rax
	.loc 2 2000 6
	cmpq	%rax, %rdx
	jb	.L324
.LBB23:
	.loc 2 2003 14
	movq	buff(%rip), %rax
	leaq	buff_allocated(%rip), %rsi
	movq	%rax, %rdi
	call	x2realloc@PLT
	.loc 2 2003 12
	movq	%rax, buff(%rip)
.L324:
.LBE23:
	.loc 2 2005 7
	movq	buff(%rip), %rcx
	.loc 2 2005 20
	movl	buff_current(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, buff_current(%rip)
	movl	%eax, %eax
	.loc 2 2005 7
	leaq	(%rcx,%rax), %rdx
	.loc 2 2005 24
	movzbl	-4(%rbp), %eax
	movb	%al, (%rdx)
	.loc 2 2006 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	store_char, .-store_char
	.section	.rodata
.LC74:
	.string	"%*d"
	.text
	.type	add_line_number, @function
add_line_number:
.LFB79:
	.loc 2 2010 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 2017 15
	movl	line_number(%rip), %ecx
	movl	chars_per_number(%rip), %edx
	movq	number_buff(%rip), %rax
	leaq	.LC74(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	%eax, -12(%rbp)
	.loc 2 2018 14
	movl	line_number(%rip), %eax
	addl	$1, %eax
	movl	%eax, line_number(%rip)
	.loc 2 2019 19
	movq	number_buff(%rip), %rdx
	.loc 2 2019 32
	movl	chars_per_number(%rip), %eax
	movl	-12(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	.loc 2 2019 5
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 2020 10
	movl	chars_per_number(%rip), %eax
	movl	%eax, -16(%rbp)
	.loc 2 2020 3
	jmp	.L326
.L327:
	.loc 2 2021 7 discriminator 3
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 2021 23 discriminator 3
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	.loc 2 2021 21 discriminator 3
	movzbl	(%rax), %eax
	.loc 2 2021 7 discriminator 3
	movsbl	%al, %eax
	movl	%eax, %edi
	call	*%rdx
.LVL1:
	.loc 2 2020 38 discriminator 3
	subl	$1, -16(%rbp)
.L326:
	.loc 2 2020 3 discriminator 1
	cmpl	$0, -16(%rbp)
	jg	.L327
	.loc 2 2023 15
	movl	columns(%rip), %eax
	.loc 2 2023 6
	cmpl	$1, %eax
	jle	.L328
	.loc 2 2028 28
	movzbl	number_separator(%rip), %eax
	.loc 2 2028 10
	cmpb	$9, %al
	jne	.L329
	.loc 2 2030 28
	movl	number_width(%rip), %edx
	movl	chars_per_number(%rip), %eax
	.loc 2 2030 13
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	.loc 2 2031 17
	jmp	.L330
.L331:
	.loc 2 2032 15
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	$32, %edi
	call	*%rax
.LVL2:
.L330:
	.loc 2 2031 19
	movl	-16(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -16(%rbp)
	.loc 2 2031 17
	testl	%eax, %eax
	jg	.L331
	jmp	.L332
.L329:
	.loc 2 2035 11
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movzbl	number_separator(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	*%rdx
.LVL3:
	jmp	.L332
.L328:
	.loc 2 2042 9
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movzbl	number_separator(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	*%rdx
.LVL4:
	.loc 2 2043 28
	movzbl	number_separator(%rip), %eax
	.loc 2 2043 10
	cmpb	$9, %al
	jne	.L332
	.loc 2 2044 27
	movl	chars_per_output_tab(%rip), %ecx
	movl	output_position(%rip), %eax
	movl	chars_per_output_tab(%rip), %esi
	cltd
	idivl	%esi
	movl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	output_position(%rip), %eax
	addl	%edx, %eax
	.loc 2 2044 25
	movl	%eax, output_position(%rip)
.L332:
	.loc 2 2048 7
	movzbl	truncate_lines(%rip), %eax
	.loc 2 2048 6
	testb	%al, %al
	je	.L334
	.loc 2 2048 25 discriminator 1
	movzbl	parallel_files(%rip), %eax
	xorl	$1, %eax
	.loc 2 2048 22 discriminator 1
	testb	%al, %al
	je	.L334
	.loc 2 2049 20
	movl	input_position(%rip), %edx
	movl	number_width(%rip), %eax
	addl	%edx, %eax
	movl	%eax, input_position(%rip)
.L334:
	.loc 2 2050 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	add_line_number, .-add_line_number
	.type	pad_across_to, @function
pad_across_to:
.LFB80:
	.loc 2 2057 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 2 2058 7
	movl	output_position(%rip), %eax
	movl	%eax, -4(%rbp)
	.loc 2 2060 7
	movzbl	tabify_output(%rip), %eax
	.loc 2 2060 6
	testb	%al, %al
	je	.L338
	.loc 2 2061 35
	movl	output_position(%rip), %eax
	movl	-20(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 2061 24
	movl	%eax, spaces_not_printed(%rip)
	.loc 2 2068 1
	jmp	.L340
.L339:
	.loc 2 2065 9
	movl	$32, %edi
	call	putchar_unlocked@PLT
.L338:
	.loc 2 2064 13
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L339
	.loc 2 2066 23
	movl	-20(%rbp), %eax
	movl	%eax, output_position(%rip)
.L340:
	.loc 2 2068 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	pad_across_to, .-pad_across_to
	.type	pad_down, @function
pad_down:
.LFB81:
	.loc 2 2077 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 2 2078 7
	movzbl	use_form_feed(%rip), %eax
	.loc 2 2078 6
	testb	%al, %al
	je	.L342
	.loc 2 2079 5
	movl	$12, %edi
	call	putchar_unlocked@PLT
	.loc 2 2083 1
	jmp	.L346
.L342:
.LBB24:
	.loc 2 2081 23
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 2 2081 5
	jmp	.L344
.L345:
	.loc 2 2082 7 discriminator 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 2081 37 discriminator 3
	subl	$1, -4(%rbp)
.L344:
	.loc 2 2081 5 discriminator 1
	cmpl	$0, -4(%rbp)
	jne	.L345
.L346:
.LBE24:
	.loc 2 2083 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	pad_down, .-pad_down
	.type	read_rest_of_line, @function
read_rest_of_line:
.LFB82:
	.loc 2 2093 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 2095 9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2097 9
	jmp	.L348
.L353:
	.loc 2 2099 10
	cmpl	$12, -12(%rbp)
	jne	.L349
	.loc 2 2101 20
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -12(%rbp)
	.loc 2 2101 14
	cmpl	$10, -12(%rbp)
	je	.L350
	.loc 2 2102 13
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
.L350:
	.loc 2 2103 15
	movzbl	keep_FF(%rip), %eax
	.loc 2 2103 14
	testb	%al, %al
	je	.L351
	.loc 2 2104 24
	movb	$1, print_a_FF(%rip)
.L351:
	.loc 2 2105 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	hold_file
	.loc 2 2106 11
	jmp	.L352
.L349:
	.loc 2 2108 15
	cmpl	$-1, -12(%rbp)
	jne	.L348
	.loc 2 2110 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	close_file
	.loc 2 2111 11
	jmp	.L352
.L348:
	.loc 2 2097 15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -12(%rbp)
	.loc 2 2097 9
	cmpl	$10, -12(%rbp)
	jne	.L353
	.loc 2 2114 1
	nop
.L352:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	read_rest_of_line, .-read_rest_of_line
	.type	skip_read, @function
skip_read:
.LFB83:
	.loc 2 2127 1
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
	.loc 2 2129 9
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2131 8
	movb	$0, -25(%rbp)
	.loc 2 2135 12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -24(%rbp)
	.loc 2 2135 6
	cmpl	$12, -24(%rbp)
	jne	.L355
	.loc 2 2135 34 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	57(%rax), %eax
	.loc 2 2135 30 discriminator 1
	testb	%al, %al
	je	.L355
	.loc 2 2138 14
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -24(%rbp)
	.loc 2 2138 8
	cmpl	$10, -24(%rbp)
	jne	.L355
	.loc 2 2139 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -24(%rbp)
.L355:
	.loc 2 2141 24
	movq	-40(%rbp), %rax
	movb	$0, 57(%rax)
	.loc 2 2145 6
	cmpl	$12, -24(%rbp)
	jne	.L356
	.loc 2 2146 15
	movb	$1, -25(%rbp)
.L356:
	.loc 2 2150 7
	movzbl	last_line(%rip), %eax
	.loc 2 2150 6
	testb	%al, %al
	je	.L358
	.loc 2 2151 26
	movq	-40(%rbp), %rax
	movb	$1, 57(%rax)
	.loc 2 2153 9
	jmp	.L358
.L367:
	.loc 2 2155 10
	cmpl	$12, -24(%rbp)
	jne	.L359
	.loc 2 2159 15
	movzbl	last_line(%rip), %eax
	.loc 2 2159 14
	testb	%al, %al
	je	.L360
	.loc 2 2161 19
	movzbl	parallel_files(%rip), %eax
	xorl	$1, %eax
	.loc 2 2161 18
	testb	%al, %al
	je	.L361
	.loc 2 2162 24
	movq	column_vector(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 2 2162 43
	movl	columns(%rip), %eax
	movl	%eax, -20(%rbp)
	.loc 2 2162 17
	jmp	.L362
.L363:
	.loc 2 2163 40 discriminator 3
	movq	-16(%rbp), %rax
	movb	$0, 57(%rax)
	.loc 2 2162 57 discriminator 3
	addq	$64, -16(%rbp)
	.loc 2 2162 62 discriminator 3
	subl	$1, -20(%rbp)
.L362:
	.loc 2 2162 17 discriminator 1
	cmpl	$0, -20(%rbp)
	jne	.L363
	jmp	.L360
.L361:
	.loc 2 2165 38
	movq	-40(%rbp), %rax
	movb	$0, 57(%rax)
.L360:
	.loc 2 2168 20
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -24(%rbp)
	.loc 2 2168 14
	cmpl	$10, -24(%rbp)
	je	.L364
	.loc 2 2169 13
	movq	-8(%rbp), %rdx
	movl	-24(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
.L364:
	.loc 2 2170 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	hold_file
	.loc 2 2171 11
	jmp	.L365
.L359:
	.loc 2 2173 15
	cmpl	$-1, -24(%rbp)
	jne	.L366
	.loc 2 2175 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	close_file
	.loc 2 2176 11
	jmp	.L365
.L366:
	.loc 2 2178 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -24(%rbp)
.L358:
	.loc 2 2153 9
	cmpl	$10, -24(%rbp)
	jne	.L367
.L365:
	.loc 2 2181 7
	movzbl	skip_count(%rip), %eax
	.loc 2 2181 6
	testb	%al, %al
	je	.L370
	.loc 2 2182 10
	movzbl	parallel_files(%rip), %eax
	xorl	$1, %eax
	.loc 2 2182 8
	testb	%al, %al
	jne	.L369
	.loc 2 2182 26 discriminator 2
	cmpl	$1, -44(%rbp)
	jne	.L370
.L369:
	.loc 2 2182 52 discriminator 3
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
	.loc 2 2182 49 discriminator 3
	testb	%al, %al
	je	.L370
	.loc 2 2183 7
	movl	line_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, line_count(%rip)
.L370:
	.loc 2 2184 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	skip_read, .-skip_read
	.type	print_white_space, @function
print_white_space:
.LFB84:
	.loc 2 2194 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 2196 7
	movl	output_position(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 2 2197 20
	movl	spaces_not_printed(%rip), %edx
	.loc 2 2197 7
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	.loc 2 2199 9
	jmp	.L372
.L374:
	.loc 2 2202 7
	movzbl	output_tab_char(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 2203 13
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
.L372:
	.loc 2 2199 15
	movl	-8(%rbp), %eax
	subl	-12(%rbp), %eax
	.loc 2 2199 9
	cmpl	$1, %eax
	jle	.L375
	.loc 2 2200 22
	movl	chars_per_output_tab(%rip), %ecx
	movl	chars_per_output_tab(%rip), %esi
	movl	-12(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 2 2200 20
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 2 2200 10
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L374
	.loc 2 2205 9
	jmp	.L375
.L376:
	.loc 2 2206 5
	movl	$32, %edi
	call	putchar_unlocked@PLT
.L375:
	.loc 2 2205 9
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L376
	.loc 2 2208 19
	movl	-8(%rbp), %eax
	movl	%eax, output_position(%rip)
	.loc 2 2209 22
	movl	$0, spaces_not_printed(%rip)
	.loc 2 2210 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	print_white_space, .-print_white_space
	.type	print_sep_string, @function
print_sep_string:
.LFB85:
	.loc 2 2219 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 2220 15
	movq	col_sep_string(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2221 7
	movl	col_sep_length(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 2 2223 30
	movl	separators_not_printed(%rip), %eax
	.loc 2 2223 6
	testl	%eax, %eax
	jg	.L380
	.loc 2 2226 30
	movl	spaces_not_printed(%rip), %eax
	.loc 2 2226 10
	testl	%eax, %eax
	jle	.L387
	.loc 2 2227 9
	call	print_white_space
	.loc 2 2257 1
	jmp	.L387
.L384:
	.loc 2 2237 19
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2237 18
	cmpb	$32, %al
	jne	.L382
	.loc 2 2241 20
	addq	$1, -8(%rbp)
	.loc 2 2242 19
	movl	spaces_not_printed(%rip), %eax
	addl	$1, %eax
	movl	%eax, spaces_not_printed(%rip)
	jmp	.L381
.L382:
	.loc 2 2246 42
	movl	spaces_not_printed(%rip), %eax
	.loc 2 2246 22
	testl	%eax, %eax
	jle	.L383
	.loc 2 2247 21
	call	print_white_space
.L383:
	.loc 2 2248 19
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 2249 19
	movl	output_position(%rip), %eax
	addl	$1, %eax
	movl	%eax, output_position(%rip)
.L381:
	.loc 2 2233 19
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	.loc 2 2233 17
	testl	%eax, %eax
	jg	.L384
	.loc 2 2253 34
	movl	spaces_not_printed(%rip), %eax
	.loc 2 2253 14
	testl	%eax, %eax
	jle	.L385
	.loc 2 2254 13
	call	print_white_space
.L385:
	.loc 2 2231 42
	movl	separators_not_printed(%rip), %eax
	subl	$1, %eax
	movl	%eax, separators_not_printed(%rip)
.L380:
	.loc 2 2231 37 discriminator 1
	movl	separators_not_printed(%rip), %eax
	.loc 2 2231 7 discriminator 1
	testl	%eax, %eax
	jg	.L381
.L387:
	.loc 2 2257 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	print_sep_string, .-print_sep_string
	.type	print_clump, @function
print_clump:
.LFB86:
	.loc 2 2264 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 2265 9
	jmp	.L389
.L390:
	.loc 2 2266 7
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 2266 27
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	.loc 2 2266 21
	movzbl	(%rax), %eax
	.loc 2 2266 7
	movsbl	%al, %eax
	movl	%eax, %edi
	call	*%rdx
.LVL5:
.L389:
	.loc 2 2265 11
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	.loc 2 2265 9
	testl	%eax, %eax
	jne	.L390
	.loc 2 2267 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	print_clump, .-print_clump
	.type	print_char, @function
print_char:
.LFB87:
	.loc 2 2280 1
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
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 2 2281 7
	movzbl	tabify_output(%rip), %eax
	.loc 2 2281 6
	testb	%al, %al
	je	.L392
	.loc 2 2283 10
	cmpb	$32, -20(%rbp)
	jne	.L393
	.loc 2 2285 11
	movl	spaces_not_printed(%rip), %eax
	addl	$1, %eax
	movl	%eax, spaces_not_printed(%rip)
	.loc 2 2286 11
	jmp	.L391
.L393:
	.loc 2 2288 35
	movl	spaces_not_printed(%rip), %eax
	.loc 2 2288 15
	testl	%eax, %eax
	jle	.L395
	.loc 2 2289 9
	call	print_white_space
.L395:
	.loc 2 2292 13
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movsbl	-20(%rbp), %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 2292 10
	testl	%eax, %eax
	jne	.L396
	.loc 2 2294 14
	cmpb	$8, -20(%rbp)
	jne	.L392
	.loc 2 2295 13
	movl	output_position(%rip), %eax
	subl	$1, %eax
	movl	%eax, output_position(%rip)
	jmp	.L392
.L396:
	.loc 2 2298 9
	movl	output_position(%rip), %eax
	addl	$1, %eax
	movl	%eax, output_position(%rip)
.L392:
	.loc 2 2300 3
	movsbl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L391:
	.loc 2 2301 1
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	print_char, .-print_char
	.section	.rodata
	.align 8
.LC75:
	.string	"starting page number %lu exceeds page count %lu"
	.text
	.type	skip_to_page, @function
skip_to_page:
.LFB88:
	.loc 2 2308 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
.LBB25:
	.loc 2 2309 18
	movq	$1, -16(%rbp)
	.loc 2 2309 3
	jmp	.L398
.L413:
.LBB26:
.LBB27:
	.loc 2 2314 16
	movl	$1, -20(%rbp)
	.loc 2 2314 7
	jmp	.L399
.L403:
	.loc 2 2316 18
	movl	$1, -24(%rbp)
	.loc 2 2316 25
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2316 11
	jmp	.L400
.L402:
	.loc 2 2317 18
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 2317 16
	testl	%eax, %eax
	jne	.L401
	.loc 2 2318 15
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	skip_read
.L401:
	.loc 2 2316 56 discriminator 2
	addl	$1, -24(%rbp)
	.loc 2 2316 61 discriminator 2
	addq	$64, -8(%rbp)
.L400:
	.loc 2 2316 44 discriminator 1
	movl	columns(%rip), %eax
	.loc 2 2316 11 discriminator 1
	cmpl	%eax, -24(%rbp)
	jle	.L402
	.loc 2 2314 43 discriminator 2
	addl	$1, -20(%rbp)
.L399:
	.loc 2 2314 25 discriminator 1
	movl	lines_per_body(%rip), %eax
	.loc 2 2314 7 discriminator 1
	cmpl	%eax, -20(%rbp)
	jl	.L403
.LBE27:
	.loc 2 2320 17
	movb	$1, last_line(%rip)
	.loc 2 2321 14
	movl	$1, -24(%rbp)
	.loc 2 2321 21
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2321 7
	jmp	.L404
.L406:
	.loc 2 2322 14
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 2322 12
	testl	%eax, %eax
	jne	.L405
	.loc 2 2323 11
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	skip_read
.L405:
	.loc 2 2321 52 discriminator 2
	addl	$1, -24(%rbp)
	.loc 2 2321 57 discriminator 2
	addq	$64, -8(%rbp)
.L404:
	.loc 2 2321 40 discriminator 1
	movl	columns(%rip), %eax
	.loc 2 2321 7 discriminator 1
	cmpl	%eax, -24(%rbp)
	jle	.L406
	.loc 2 2325 11
	movzbl	storing_columns(%rip), %eax
	.loc 2 2325 10
	testb	%al, %al
	je	.L407
	.loc 2 2326 16
	movl	$1, -24(%rbp)
	.loc 2 2326 23
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2326 9
	jmp	.L408
.L410:
	.loc 2 2327 16
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 2327 14
	cmpl	$3, %eax
	je	.L409
	.loc 2 2328 23
	movq	-8(%rbp), %rax
	movl	$2, 16(%rax)
.L409:
	.loc 2 2326 54 discriminator 2
	addl	$1, -24(%rbp)
	.loc 2 2326 59 discriminator 2
	addq	$64, -8(%rbp)
.L408:
	.loc 2 2326 42 discriminator 1
	movl	columns(%rip), %eax
	.loc 2 2326 9 discriminator 1
	cmpl	%eax, -24(%rbp)
	jle	.L410
.L407:
	.loc 2 2330 7
	call	reset_status
	.loc 2 2331 17
	movb	$0, last_line(%rip)
	.loc 2 2333 31
	movl	files_ready_to_read(%rip), %eax
	.loc 2 2333 10
	testl	%eax, %eax
	jg	.L411
	.loc 2 2338 18
	leaq	.LC75(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 2337 11
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 2341 11
	jmp	.L412
.L411:
.LBE26:
	.loc 2 2309 35 discriminator 2
	addq	$1, -16(%rbp)
.L398:
	.loc 2 2309 3 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L413
.L412:
.LBE25:
	.loc 2 2344 30
	movl	files_ready_to_read(%rip), %eax
	testl	%eax, %eax
	setg	%al
	.loc 2 2345 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	skip_to_page, .-skip_to_page
	.section	.rodata
.LC76:
	.string	"page number overflow"
.LC77:
	.string	"Page %lu"
.LC78:
	.string	"\n\n%*s%s%*s%s%*s%s\n\n\n"
	.text
	.type	print_header, @function
print_header:
.LFB89:
	.loc 2 2354 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	.loc 2 2354 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 2360 19
	movl	$0, output_position(%rip)
	.loc 2 2361 3
	movl	chars_per_margin(%rip), %eax
	movl	%eax, %edi
	call	pad_across_to
	.loc 2 2362 3
	call	print_white_space
	.loc 2 2364 19
	movq	page_number(%rip), %rax
	.loc 2 2364 6
	testq	%rax, %rax
	jne	.L416
.LBB28:
	.loc 2 2365 5
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L416:
.LBE28:
	.loc 2 2370 3
	movq	page_number(%rip), %rbx
	.loc 2 2370 23
	leaq	.LC77(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 2 2370 3
	leaq	-304(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 2371 44
	movl	header_width_available(%rip), %ebx
	.loc 2 2371 46
	leaq	-304(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	.loc 2 2371 19
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -316(%rbp)
	.loc 2 2372 19
	movl	$0, %eax
	cmpl	$0, -316(%rbp)
	cmovns	-316(%rbp), %eax
	movl	%eax, -316(%rbp)
	.loc 2 2373 14
	movl	-316(%rbp), %eax
	sarl	%eax
	movl	%eax, -312(%rbp)
	.loc 2 2374 14
	movl	-316(%rbp), %eax
	subl	-312(%rbp), %eax
	movl	%eax, -308(%rbp)
	.loc 2 2376 3
	movq	file_text(%rip), %rcx
	movq	date_text(%rip), %rdx
	movl	chars_per_margin(%rip), %eax
	movl	-312(%rbp), %edi
	leaq	-304(%rbp), %rsi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	movl	-308(%rbp), %esi
	pushq	%rsi
	pushq	%rcx
	leaq	.LC20(%rip), %r9
	movl	%edi, %r8d
	movq	%rdx, %rcx
	leaq	.LC18(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC78(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$32, %rsp
	.loc 2 2381 18
	movb	$0, print_a_header(%rip)
	.loc 2 2382 19
	movl	$0, output_position(%rip)
	.loc 2 2383 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L417
	call	__stack_chk_fail@PLT
.L417:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	print_header, .-print_header
	.type	read_line, @function
read_line:
.LFB90:
	.loc 2 2408 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 2410 7
	movl	$0, -24(%rbp)
	.loc 2 2416 7
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -28(%rbp)
	.loc 2 2418 23
	movl	input_position(%rip), %eax
	movl	%eax, -16(%rbp)
	.loc 2 2420 6
	cmpl	$12, -28(%rbp)
	jne	.L419
	.loc 2 2420 21 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	57(%rax), %eax
	.loc 2 2420 17 discriminator 1
	testb	%al, %al
	je	.L419
	.loc 2 2421 14
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -28(%rbp)
	.loc 2 2421 8
	cmpl	$10, -28(%rbp)
	jne	.L419
	.loc 2 2422 11
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -28(%rbp)
.L419:
	.loc 2 2423 24
	movq	-40(%rbp), %rax
	movb	$0, 57(%rax)
	.loc 2 2425 3
	cmpl	$12, -28(%rbp)
	je	.L420
	cmpl	$12, -28(%rbp)
	jg	.L421
	cmpl	$-1, -28(%rbp)
	je	.L422
	cmpl	$10, -28(%rbp)
	je	.L447
	jmp	.L421
.L420:
	.loc 2 2428 16
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -28(%rbp)
	.loc 2 2428 10
	cmpl	$10, -28(%rbp)
	je	.L424
	.loc 2 2429 9
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
.L424:
	.loc 2 2430 15
	movb	$1, FF_only(%rip)
	.loc 2 2431 11
	movzbl	print_a_header(%rip), %eax
	.loc 2 2431 10
	testb	%al, %al
	je	.L425
	.loc 2 2431 29 discriminator 1
	movzbl	storing_columns(%rip), %eax
	xorl	$1, %eax
	.loc 2 2431 26 discriminator 1
	testb	%al, %al
	je	.L425
	.loc 2 2433 26
	movb	$1, pad_vertically(%rip)
	.loc 2 2434 11
	call	print_header
	jmp	.L426
.L425:
	.loc 2 2436 16
	movzbl	keep_FF(%rip), %eax
	.loc 2 2436 15
	testb	%al, %al
	je	.L426
	.loc 2 2437 20
	movb	$1, print_a_FF(%rip)
.L426:
	.loc 2 2438 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	hold_file
	.loc 2 2439 14
	movl	$1, %eax
	jmp	.L427
.L422:
	.loc 2 2441 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	close_file
	.loc 2 2442 14
	movl	$1, %eax
	jmp	.L427
.L421:
	.loc 2 2446 15
	movl	-28(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	char_to_clump
	movl	%eax, -24(%rbp)
	jmp	.L428
.L447:
	.loc 2 2444 7
	nop
.L428:
	.loc 2 2449 7
	movzbl	truncate_lines(%rip), %eax
	.loc 2 2449 6
	testb	%al, %al
	je	.L429
	.loc 2 2449 40 discriminator 1
	movl	input_position(%rip), %edx
	movl	chars_per_column(%rip), %eax
	.loc 2 2449 22 discriminator 1
	cmpl	%eax, %edx
	jle	.L429
	.loc 2 2451 22
	movl	-16(%rbp), %eax
	movl	%eax, input_position(%rip)
	.loc 2 2452 14
	movl	$0, %eax
	jmp	.L427
.L429:
	.loc 2 2455 8
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 2455 6
	leaq	store_char(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L430
	.loc 2 2457 22
	movb	$1, pad_vertically(%rip)
	.loc 2 2459 11
	movzbl	print_a_header(%rip), %eax
	.loc 2 2459 10
	testb	%al, %al
	je	.L431
	.loc 2 2459 29 discriminator 1
	movzbl	storing_columns(%rip), %eax
	xorl	$1, %eax
	.loc 2 2459 26 discriminator 1
	testb	%al, %al
	je	.L431
	.loc 2 2460 9
	call	print_header
.L431:
	.loc 2 2462 11
	movzbl	parallel_files(%rip), %eax
	.loc 2 2462 10
	testb	%al, %al
	je	.L432
	.loc 2 2462 26 discriminator 1
	movzbl	align_empty_cols(%rip), %eax
	testb	%al, %al
	je	.L432
	.loc 2 2465 13
	movl	separators_not_printed(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 2 2466 34
	movl	$0, separators_not_printed(%rip)
	.loc 2 2467 18
	movl	$1, -20(%rbp)
	.loc 2 2467 25
	movq	column_vector(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2467 11
	jmp	.L433
.L434:
	.loc 2 2469 15 discriminator 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	align_column
	.loc 2 2470 38 discriminator 3
	movl	separators_not_printed(%rip), %eax
	addl	$1, %eax
	movl	%eax, separators_not_printed(%rip)
	.loc 2 2467 50 discriminator 3
	addl	$1, -20(%rbp)
	.loc 2 2467 55 discriminator 3
	addq	$64, -8(%rbp)
.L433:
	.loc 2 2467 11 discriminator 1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L434
	.loc 2 2472 34
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	.loc 2 2472 31
	movl	%eax, padding_not_printed(%rip)
	.loc 2 2473 15
	movzbl	truncate_lines(%rip), %eax
	.loc 2 2473 14
	testb	%al, %al
	je	.L435
	.loc 2 2474 32
	movl	chars_per_column(%rip), %eax
	movl	%eax, spaces_not_printed(%rip)
	jmp	.L436
.L435:
	.loc 2 2476 32
	movl	$0, spaces_not_printed(%rip)
.L436:
	.loc 2 2477 28
	movb	$0, align_empty_cols(%rip)
.L432:
	.loc 2 2480 26
	movl	col_sep_length(%rip), %edx
	movl	padding_not_printed(%rip), %eax
	.loc 2 2480 10
	cmpl	%eax, %edx
	jge	.L437
	.loc 2 2482 11
	movl	padding_not_printed(%rip), %edx
	movl	col_sep_length(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edi
	call	pad_across_to
	.loc 2 2483 31
	movl	$0, padding_not_printed(%rip)
.L437:
	.loc 2 2486 11
	movzbl	use_col_separator(%rip), %eax
	.loc 2 2486 10
	testb	%al, %al
	je	.L430
	.loc 2 2487 9
	call	print_sep_string
.L430:
	.loc 2 2490 8
	movq	-40(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 2 2490 6
	testb	%al, %al
	je	.L438
	.loc 2 2491 5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	add_line_number
.L438:
	.loc 2 2493 14
	movb	$0, empty_line(%rip)
	.loc 2 2494 6
	cmpl	$10, -28(%rbp)
	jne	.L439
	.loc 2 2495 12
	movl	$1, %eax
	jmp	.L427
.L439:
	.loc 2 2497 3
	movq	clump_buff(%rip), %rdx
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_clump
.L446:
	.loc 2 2501 11
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -28(%rbp)
	.loc 2 2503 7
	cmpl	$12, -28(%rbp)
	je	.L440
	cmpl	$12, -28(%rbp)
	jg	.L441
	cmpl	$-1, -28(%rbp)
	je	.L442
	cmpl	$10, -28(%rbp)
	jne	.L441
	.loc 2 2506 18
	movl	$1, %eax
	jmp	.L427
.L440:
	.loc 2 2508 20
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -28(%rbp)
	.loc 2 2508 14
	cmpl	$10, -28(%rbp)
	je	.L443
	.loc 2 2509 13
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
.L443:
	.loc 2 2510 15
	movzbl	keep_FF(%rip), %eax
	.loc 2 2510 14
	testb	%al, %al
	je	.L444
	.loc 2 2511 24
	movb	$1, print_a_FF(%rip)
.L444:
	.loc 2 2512 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	hold_file
	.loc 2 2513 18
	movl	$1, %eax
	jmp	.L427
.L442:
	.loc 2 2515 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	close_file
	.loc 2 2516 18
	movl	$1, %eax
	jmp	.L427
.L441:
	.loc 2 2519 27
	movl	input_position(%rip), %eax
	movl	%eax, -16(%rbp)
	.loc 2 2520 15
	movl	-28(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	char_to_clump
	movl	%eax, -24(%rbp)
	.loc 2 2521 11
	movzbl	truncate_lines(%rip), %eax
	.loc 2 2521 10
	testb	%al, %al
	je	.L445
	.loc 2 2521 44 discriminator 1
	movl	input_position(%rip), %edx
	movl	chars_per_column(%rip), %eax
	.loc 2 2521 26 discriminator 1
	cmpl	%eax, %edx
	jle	.L445
	.loc 2 2523 26
	movl	-16(%rbp), %eax
	movl	%eax, input_position(%rip)
	.loc 2 2524 18
	movl	$0, %eax
	jmp	.L427
.L445:
	.loc 2 2527 7
	movq	clump_buff(%rip), %rdx
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_clump
	.loc 2 2501 9
	jmp	.L446
.L427:
	.loc 2 2529 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	read_line, .-read_line
	.type	print_stored, @function
print_stored:
.LFB91:
	.loc 2 2547 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 2550 15
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	.loc 2 2550 29
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, 40(%rdx)
	.loc 2 2550 7
	movl	%eax, -28(%rbp)
	.loc 2 2551 17
	movq	buff(%rip), %rdx
	.loc 2 2551 34
	movq	line_vector(%rip), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	.loc 2 2551 9
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 2563 16
	movq	buff(%rip), %rdx
	.loc 2 2563 33
	movq	line_vector(%rip), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	.loc 2 2563 9
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 2565 18
	movb	$1, pad_vertically(%rip)
	.loc 2 2567 7
	movzbl	print_a_header(%rip), %eax
	.loc 2 2567 6
	testb	%al, %al
	je	.L449
	.loc 2 2568 5
	call	print_header
.L449:
	.loc 2 2570 8
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 2570 6
	cmpl	$1, %eax
	jne	.L450
.LBB29:
	.loc 2 2573 14
	movl	$1, -32(%rbp)
	.loc 2 2573 21
	movq	column_vector(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 2573 7
	jmp	.L451
.L452:
	.loc 2 2574 19 discriminator 3
	movq	-24(%rbp), %rax
	movl	$2, 16(%rax)
	.loc 2 2573 52 discriminator 3
	addl	$1, -32(%rbp)
	.loc 2 2573 57 discriminator 3
	addq	$64, -24(%rbp)
.L451:
	.loc 2 2573 40 discriminator 1
	movl	columns(%rip), %eax
	.loc 2 2573 7 discriminator 1
	cmpl	%eax, -32(%rbp)
	jle	.L452
	.loc 2 2575 24
	movq	column_vector(%rip), %rax
	movl	48(%rax), %eax
	.loc 2 2575 10
	testl	%eax, %eax
	jg	.L450
	.loc 2 2577 15
	movzbl	extremities(%rip), %eax
	xorl	$1, %eax
	.loc 2 2577 14
	testb	%al, %al
	je	.L453
	.loc 2 2578 28
	movb	$0, pad_vertically(%rip)
.L453:
	.loc 2 2579 18
	movl	$1, %eax
	jmp	.L454
.L450:
.LBE29:
	.loc 2 2583 22
	movl	col_sep_length(%rip), %edx
	movl	padding_not_printed(%rip), %eax
	.loc 2 2583 6
	cmpl	%eax, %edx
	jge	.L455
	.loc 2 2585 7
	movl	padding_not_printed(%rip), %edx
	movl	col_sep_length(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edi
	call	pad_across_to
	.loc 2 2586 27
	movl	$0, padding_not_printed(%rip)
.L455:
	.loc 2 2589 7
	movzbl	use_col_separator(%rip), %eax
	.loc 2 2589 6
	testb	%al, %al
	je	.L457
	.loc 2 2590 5
	call	print_sep_string
	.loc 2 2592 9
	jmp	.L457
.L458:
	.loc 2 2593 23
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 2593 17
	movzbl	(%rax), %eax
	.loc 2 2593 5
	movsbl	%al, %eax
	movl	%eax, %edi
	call	print_char
.L457:
	.loc 2 2592 9
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L458
	.loc 2 2595 26
	movl	spaces_not_printed(%rip), %eax
	.loc 2 2595 6
	testl	%eax, %eax
	jne	.L459
	.loc 2 2597 26
	movq	-40(%rbp), %rax
	movl	52(%rax), %edx
	.loc 2 2597 55
	movq	end_vector(%rip), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	.loc 2 2597 43
	addl	%edx, %eax
	.loc 2 2597 23
	movl	%eax, output_position(%rip)
	.loc 2 2598 12
	movq	-40(%rbp), %rax
	movl	52(%rax), %edx
	.loc 2 2598 29
	movl	col_sep_length(%rip), %eax
	subl	%eax, %edx
	.loc 2 2598 46
	movl	chars_per_margin(%rip), %eax
	.loc 2 2598 10
	cmpl	%eax, %edx
	jne	.L459
	.loc 2 2599 25
	movl	output_position(%rip), %edx
	movl	col_sep_length(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, output_position(%rip)
.L459:
	.loc 2 2602 10
	movl	$1, %eax
.L454:
	.loc 2 2603 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	print_stored, .-print_stored
	.section	.rodata
.LC79:
	.string	"%03o"
	.text
	.type	char_to_clump, @function
char_to_clump:
.LFB92:
	.loc 2 2619 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movb	%al, -52(%rbp)
	.loc 2 2619 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 2620 17
	movzbl	-52(%rbp), %eax
	movb	%al, -41(%rbp)
	.loc 2 2621 9
	movq	clump_buff(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 2626 7
	movl	$8, -28(%rbp)
	.loc 2 2628 9
	movzbl	input_tab_char(%rip), %eax
	.loc 2 2628 6
	cmpb	%al, -52(%rbp)
	jne	.L461
	.loc 2 2629 17
	movl	chars_per_input_tab(%rip), %eax
	movl	%eax, -28(%rbp)
.L461:
	.loc 2 2631 9
	movzbl	input_tab_char(%rip), %eax
	.loc 2 2631 6
	cmpb	%al, -52(%rbp)
	je	.L462
	.loc 2 2631 27 discriminator 1
	cmpb	$9, -52(%rbp)
	jne	.L463
.L462:
	.loc 2 2633 15
	movl	input_position(%rip), %eax
	cltd
	idivl	-28(%rbp)
	.loc 2 2633 13
	movl	-28(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -36(%rbp)
	.loc 2 2635 11
	movzbl	untabify_input(%rip), %eax
	.loc 2 2635 10
	testb	%al, %al
	je	.L464
	.loc 2 2637 18
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	.loc 2 2637 11
	jmp	.L465
.L466:
	.loc 2 2638 15 discriminator 3
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 2638 18 discriminator 3
	movb	$32, (%rax)
	.loc 2 2637 30 discriminator 3
	subl	$1, -40(%rbp)
.L465:
	.loc 2 2637 11 discriminator 1
	cmpl	$0, -40(%rbp)
	jne	.L466
	.loc 2 2639 17
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 2 2635 10
	jmp	.L468
.L464:
	.loc 2 2643 14
	movq	-24(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 2644 17
	movl	$1, -32(%rbp)
	.loc 2 2635 10
	jmp	.L468
.L463:
	.loc 2 2648 14
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-41(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 2648 11
	testl	%eax, %eax
	jne	.L469
	.loc 2 2650 11
	movzbl	use_esc_sequence(%rip), %eax
	.loc 2 2650 10
	testb	%al, %al
	je	.L470
	.loc 2 2652 17
	movl	$4, -36(%rbp)
	.loc 2 2653 17
	movl	$4, -32(%rbp)
	.loc 2 2654 13
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 2654 16
	movb	$92, (%rax)
	.loc 2 2655 11
	movzbl	-41(%rbp), %edx
	leaq	-12(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 2656 18
	movl	$0, -40(%rbp)
	.loc 2 2656 11
	jmp	.L471
.L472:
	.loc 2 2657 15 discriminator 3
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 2657 28 discriminator 3
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	-12(%rbp,%rdx), %edx
	.loc 2 2657 18 discriminator 3
	movb	%dl, (%rax)
	.loc 2 2656 31 discriminator 3
	addl	$1, -40(%rbp)
.L471:
	.loc 2 2656 11 discriminator 1
	cmpl	$2, -40(%rbp)
	jle	.L472
	jmp	.L468
.L470:
	.loc 2 2659 16
	movzbl	use_cntrl_prefix(%rip), %eax
	.loc 2 2659 15
	testb	%al, %al
	je	.L473
	.loc 2 2661 18
	movzbl	-41(%rbp), %eax
	.loc 2 2661 14
	testb	%al, %al
	js	.L474
	.loc 2 2663 21
	movl	$2, -36(%rbp)
	.loc 2 2664 21
	movl	$2, -32(%rbp)
	.loc 2 2665 17
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 2665 20
	movb	$94, (%rax)
	.loc 2 2666 18
	movzbl	-52(%rbp), %eax
	xorl	$64, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L468
.L474:
	.loc 2 2670 21
	movl	$4, -36(%rbp)
	.loc 2 2671 21
	movl	$4, -32(%rbp)
	.loc 2 2672 17
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 2672 20
	movb	$92, (%rax)
	.loc 2 2673 15
	movzbl	-41(%rbp), %edx
	leaq	-12(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 2674 22
	movl	$0, -40(%rbp)
	.loc 2 2674 15
	jmp	.L475
.L476:
	.loc 2 2675 19 discriminator 3
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 2675 32 discriminator 3
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	-12(%rbp,%rdx), %edx
	.loc 2 2675 22 discriminator 3
	movb	%dl, (%rax)
	.loc 2 2674 35 discriminator 3
	addl	$1, -40(%rbp)
.L475:
	.loc 2 2674 15 discriminator 1
	cmpl	$2, -40(%rbp)
	jle	.L476
	jmp	.L468
.L473:
	.loc 2 2678 15
	cmpb	$8, -52(%rbp)
	jne	.L477
	.loc 2 2680 17
	movl	$-1, -36(%rbp)
	.loc 2 2681 17
	movl	$1, -32(%rbp)
	.loc 2 2682 14
	movq	-24(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L468
.L477:
	.loc 2 2686 17
	movl	$0, -36(%rbp)
	.loc 2 2687 17
	movl	$1, -32(%rbp)
	.loc 2 2688 14
	movq	-24(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L468
.L469:
	.loc 2 2693 13
	movl	$1, -36(%rbp)
	.loc 2 2694 13
	movl	$1, -32(%rbp)
	.loc 2 2695 10
	movq	-24(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, (%rax)
.L468:
	.loc 2 2699 6
	cmpl	$0, -36(%rbp)
	jns	.L478
	.loc 2 2699 35 discriminator 1
	movl	input_position(%rip), %eax
	.loc 2 2699 17 discriminator 1
	testl	%eax, %eax
	jne	.L478
	.loc 2 2701 13
	movl	$0, -32(%rbp)
	.loc 2 2702 22
	movl	$0, input_position(%rip)
	jmp	.L479
.L478:
	.loc 2 2704 11
	cmpl	$0, -36(%rbp)
	jns	.L480
	.loc 2 2704 43 discriminator 1
	movl	-36(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 2704 40 discriminator 1
	movl	input_position(%rip), %eax
	.loc 2 2704 22 discriminator 1
	cmpl	%eax, %edx
	jl	.L480
	.loc 2 2705 20
	movl	$0, input_position(%rip)
	jmp	.L479
.L480:
	.loc 2 2707 20
	movl	input_position(%rip), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, input_position(%rip)
.L479:
	.loc 2 2709 10
	movl	-32(%rbp), %eax
	.loc 2 2710 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L482
	call	__stack_chk_fail@PLT
.L482:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	char_to_clump, .-char_to_clump
	.type	cleanup, @function
cleanup:
.LFB93:
	.loc 2 2719 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 2720 3
	movq	number_buff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2721 3
	movq	clump_buff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2722 3
	movq	column_vector(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2723 3
	movq	line_vector(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2724 3
	movq	end_vector(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2725 3
	movq	buff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2726 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	cleanup, .-cleanup
	.section	.rodata
	.align 8
.LC80:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC81:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC82:
	.string	"Paginate or columnate FILE(s) for printing.\n"
	.align 8
.LC83:
	.ascii	"  +FIRST_PAGE[:LAST_PAGE], --pages=FIRST_PAGE[:LAST_PAGE]\n "
	.ascii	"                  "
	.string	" begin [stop] printing with page FIRST_[LAST_]PAGE\n  -COLUMN, --columns=COLUMN\n                    output COLUMN columns and print columns down,\n                    unless -a is used. Balance number of lines in the\n                    columns on each page\n"
	.align 8
.LC84:
	.ascii	"  -a, --acros"
	.string	"s      print columns across rather than down, used together\n                    with -COLUMN\n  -c, --show-control-chars\n                    use hat notation (^G) and octal backslash notation\n  -d, --double-space\n                    double space the output\n"
	.align 8
.LC85:
	.ascii	"  -D, --date-format=FORMAT\n                    use FORMAT f"
	.ascii	"or the header date\n  -e[CHAR[WIDTH]], --expand-tabs[=CHAR[W"
	.ascii	"IDTH]]\n                  "
	.string	"  expand input CHARs (TABs) to tab WIDTH (8)\n  -F, -f, --form-feed\n                    use form feeds instead of newlines to separate pages\n                    (by a 3-line page header with -F or a 5-line header\n                    and trailer without -F)\n"
	.align 8
.LC86:
	.ascii	"  -h, --header=HEADER\n                    use a centered HE"
	.ascii	"ADER instead of filename in page header,\n                  "
	.ascii	"  -h \"\" prints a blank line, don't use -h\"\"\n  -i[CHA"
	.string	"R[WIDTH]], --output-tabs[=CHAR[WIDTH]]\n                    replace spaces with CHARs (TABs) to tab WIDTH (8)\n  -J, --join-lines  merge full lines, turns off -W line truncation, no column\n                    alignment, --sep-string[=STRING] sets separators\n"
	.align 8
.LC87:
	.string	"  -l, --length=PAGE_LENGTH\n                    set the page length to PAGE_LENGTH (66) lines\n                    (default number of lines of text 56, and with -F 63).\n                    implies -t if PAGE_LENGTH <= 10\n"
	.align 8
.LC88:
	.string	"  -m, --merge       print all files in parallel, one in each column,\n                    truncate lines, but join lines of full length with -J\n"
	.align 8
.LC89:
	.ascii	"  -n[SEP[DIGITS]], --number-lines[=SEP[DIGITS]]\n           "
	.ascii	"         number lines, use DIG"
	.string	"ITS (5) digits, then SEP (TAB),\n                    default counting starts with 1st line of input file\n  -N, --first-line-number=NUMBER\n                    start counting with NUMBER at 1st line of first\n                    page printed (see +FIRST_PAGE)\n"
	.align 8
.LC90:
	.string	"  -o, --indent=MARGIN\n                    offset each line with MARGIN (zero) spaces, do not\n                    affect -w or -W, MARGIN will be added to PAGE_WIDTH\n  -r, --no-file-warnings\n                    omit warning when a file cannot be opened\n"
	.align 8
.LC91:
	.ascii	"  -s[CHAR], --separator[=CHAR]\n                    separate"
	.ascii	" columns b"
	.string	"y a single character, default for CHAR\n                    is the <TAB> character without -w and 'no char' with -w.\n                    -s[CHAR] turns off line truncation of all 3 column\n                    options (-COLUMN|-a -COLUMN|-m) except -w is set\n"
	.align 8
.LC92:
	.string	"  -S[STRING], --sep-string[=STRING]\n                    separate columns by STRING,\n                    without -S: Default separator <TAB> with -J and <space>\n                    otherwise (same as -S\" \"), no effect on column options\n"
	.align 8
.LC93:
	.string	"  -t, --omit-header  omit page headers and trailers;\n                     implied if PAGE_LENGTH <= 10\n"
	.align 8
.LC94:
	.ascii	"  -T, --omit-pagination\n                    omit page heade"
	.ascii	"rs and trailers, eliminate any pagination\n                 "
	.ascii	"   by form feeds set in in"
	.string	"put files\n  -v, --show-nonprinting\n                    use octal backslash notation\n  -w, --width=PAGE_WIDTH\n                    set page width to PAGE_WIDTH (72) characters for\n                    multiple text-column output only, -s[char] turns off (72)\n"
	.align 8
.LC95:
	.string	"  -W, --page-width=PAGE_WIDTH\n                    set page width to PAGE_WIDTH (72) characters always,\n                    truncate lines, except -J option is set, no interference\n                    with -S or -s\n"
	.align 8
.LC96:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC97:
	.string	"      --version  output version information and exit\n"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB94:
	.loc 2 2732 1
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
	.loc 2 2733 6
	cmpl	$0, -20(%rbp)
	je	.L485
	.loc 2 2734 5
	movq	program_name(%rip), %rbx
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L486
.L485:
	.loc 2 2737 7
	movq	program_name(%rip), %rbx
	.loc 2 2737 15
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	.loc 2 2737 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 2742 7
	movq	stdout(%rip), %rbx
	leaq	.LC82(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2746 7
	call	emit_stdin_note
	.loc 2 2747 7
	call	emit_mandatory_arg_note
	.loc 2 2749 7
	movq	stdout(%rip), %rbx
	leaq	.LC83(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2757 7
	movq	stdout(%rip), %rbx
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2765 7
	movq	stdout(%rip), %rbx
	leaq	.LC85(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2775 7
	movq	stdout(%rip), %rbx
	leaq	.LC86(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2784 7
	movq	stdout(%rip), %rbx
	leaq	.LC87(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2790 7
	movq	stdout(%rip), %rbx
	leaq	.LC88(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2794 7
	movq	stdout(%rip), %rbx
	leaq	.LC89(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2802 7
	movq	stdout(%rip), %rbx
	leaq	.LC90(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2809 7
	movq	stdout(%rip), %rbx
	leaq	.LC91(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2817 7
	movq	stdout(%rip), %rbx
	leaq	.LC92(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2823 7
	movq	stdout(%rip), %rbx
	leaq	.LC93(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2827 7
	movq	stdout(%rip), %rbx
	leaq	.LC94(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2837 7
	movq	stdout(%rip), %rbx
	leaq	.LC95(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2843 7
	movq	stdout(%rip), %rbx
	leaq	.LC96(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2844 7
	movq	stdout(%rip), %rbx
	leaq	.LC97(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2845 7
	leaq	.LC60(%rip), %rdi
	call	emit_ancillary_info
.L486:
	.loc 2 2847 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE94:
	.size	usage, .-usage
	.local	timespec.6729
	.comm	timespec.6729,16,16
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 9 "./lib/sys/select.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 11 "/usr/include/time.h"
	.file 12 "./lib/time.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 14 "/usr/include/signal.h"
	.file 15 "/usr/include/unistd.h"
	.file 16 "/usr/include/errno.h"
	.file 17 "src/version.h"
	.file 18 "./lib/exitfail.h"
	.file 19 "/usr/include/stdint.h"
	.file 20 "./lib/timespec.h"
	.file 21 "/usr/include/ctype.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 24 "/usr/include/stdio.h"
	.file 25 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 26 "./lib/version-etc.h"
	.file 27 "./lib/progname.h"
	.file 28 "./lib/quotearg.h"
	.file 29 "./lib/error.h"
	.file 30 "./lib/fadvise.h"
	.file 31 "./lib/quote.h"
	.file 32 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2321
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF380
	.byte	0xc
	.long	.LASF381
	.long	.LASF382
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
	.long	.LASF31
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
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
	.long	.LASF15
	.byte	0x5
	.byte	0x48
	.byte	0x12
	.long	0xfd
	.uleb128 0xb
	.long	.LASF16
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0xe8
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0xe8
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0xe1
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0xe1
	.uleb128 0xb
	.long	.LASF20
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0xe8
	.uleb128 0xb
	.long	.LASF21
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0xe1
	.uleb128 0xb
	.long	.LASF22
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0xe8
	.uleb128 0xb
	.long	.LASF23
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0xfd
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0xfd
	.uleb128 0xb
	.long	.LASF25
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0xfd
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xb
	.long	.LASF26
	.byte	0x5
	.byte	0xae
	.byte	0x1d
	.long	0xfd
	.uleb128 0xb
	.long	.LASF27
	.byte	0x5
	.byte	0xb3
	.byte	0x1c
	.long	0xfd
	.uleb128 0xb
	.long	.LASF28
	.byte	0x5
	.byte	0xc4
	.byte	0x21
	.long	0xfd
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.byte	0x7
	.byte	0x12
	.long	0x17c
	.uleb128 0xb
	.long	.LASF30
	.byte	0x7
	.byte	0xd1
	.byte	0x17
	.long	0xe8
	.uleb128 0x8
	.long	.LASF32
	.byte	0x10
	.byte	0x8
	.byte	0xa
	.byte	0x8
	.long	0x1ee
	.uleb128 0x9
	.long	.LASF33
	.byte	0x8
	.byte	0xc
	.byte	0xc
	.long	0x17c
	.byte	0
	.uleb128 0x9
	.long	.LASF34
	.byte	0x8
	.byte	0x10
	.byte	0x15
	.long	0x1a2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF35
	.byte	0x9
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF36
	.uleb128 0xe
	.long	0x3f
	.long	0x212
	.uleb128 0xf
	.long	0xe8
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF37
	.uleb128 0x10
	.string	"tm"
	.byte	0x38
	.byte	0xa
	.byte	0x7
	.byte	0x8
	.long	0x2b5
	.uleb128 0x9
	.long	.LASF38
	.byte	0xa
	.byte	0x9
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF39
	.byte	0xa
	.byte	0xa
	.byte	0x7
	.long	0x57
	.byte	0x4
	.uleb128 0x9
	.long	.LASF40
	.byte	0xa
	.byte	0xb
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0x9
	.long	.LASF41
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.long	0x57
	.byte	0xc
	.uleb128 0x9
	.long	.LASF42
	.byte	0xa
	.byte	0xd
	.byte	0x7
	.long	0x57
	.byte	0x10
	.uleb128 0x9
	.long	.LASF43
	.byte	0xa
	.byte	0xe
	.byte	0x7
	.long	0x57
	.byte	0x14
	.uleb128 0x9
	.long	.LASF44
	.byte	0xa
	.byte	0xf
	.byte	0x7
	.long	0x57
	.byte	0x18
	.uleb128 0x9
	.long	.LASF45
	.byte	0xa
	.byte	0x10
	.byte	0x7
	.long	0x57
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF46
	.byte	0xa
	.byte	0x11
	.byte	0x7
	.long	0x57
	.byte	0x20
	.uleb128 0x9
	.long	.LASF47
	.byte	0xa
	.byte	0x14
	.byte	0xc
	.long	0xfd
	.byte	0x28
	.uleb128 0x9
	.long	.LASF48
	.byte	0xa
	.byte	0x15
	.byte	0xf
	.long	0xc2
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	0x39
	.long	0x2c5
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0xb
	.byte	0x9f
	.byte	0xe
	.long	0x2b5
	.uleb128 0x2
	.long	.LASF50
	.byte	0xb
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF51
	.byte	0xb
	.byte	0xa1
	.byte	0x11
	.long	0xfd
	.uleb128 0x2
	.long	.LASF52
	.byte	0xb
	.byte	0xa6
	.byte	0xe
	.long	0x2b5
	.uleb128 0x2
	.long	.LASF53
	.byte	0xb
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF54
	.byte	0xb
	.byte	0xaf
	.byte	0x11
	.long	0xfd
	.uleb128 0xd
	.long	.LASF55
	.byte	0xb
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF56
	.uleb128 0x11
	.long	.LASF57
	.byte	0xc
	.value	0x32c
	.byte	0x19
	.long	0x32e
	.uleb128 0x3
	.byte	0x8
	.long	0x334
	.uleb128 0x12
	.long	.LASF48
	.uleb128 0x8
	.long	.LASF58
	.byte	0x90
	.byte	0xd
	.byte	0x2e
	.byte	0x8
	.long	0x40a
	.uleb128 0x9
	.long	.LASF59
	.byte	0xd
	.byte	0x30
	.byte	0xd
	.long	0x11c
	.byte	0
	.uleb128 0x9
	.long	.LASF60
	.byte	0xd
	.byte	0x35
	.byte	0xd
	.long	0x140
	.byte	0x8
	.uleb128 0x9
	.long	.LASF61
	.byte	0xd
	.byte	0x3d
	.byte	0xf
	.long	0x158
	.byte	0x10
	.uleb128 0x9
	.long	.LASF62
	.byte	0xd
	.byte	0x3e
	.byte	0xe
	.long	0x14c
	.byte	0x18
	.uleb128 0x9
	.long	.LASF63
	.byte	0xd
	.byte	0x40
	.byte	0xd
	.long	0x128
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF64
	.byte	0xd
	.byte	0x41
	.byte	0xd
	.long	0x134
	.byte	0x20
	.uleb128 0x9
	.long	.LASF65
	.byte	0xd
	.byte	0x43
	.byte	0x9
	.long	0x57
	.byte	0x24
	.uleb128 0x9
	.long	.LASF66
	.byte	0xd
	.byte	0x45
	.byte	0xd
	.long	0x11c
	.byte	0x28
	.uleb128 0x9
	.long	.LASF67
	.byte	0xd
	.byte	0x4a
	.byte	0xd
	.long	0x164
	.byte	0x30
	.uleb128 0x9
	.long	.LASF68
	.byte	0xd
	.byte	0x4e
	.byte	0x11
	.long	0x18a
	.byte	0x38
	.uleb128 0x9
	.long	.LASF69
	.byte	0xd
	.byte	0x50
	.byte	0x10
	.long	0x196
	.byte	0x40
	.uleb128 0x9
	.long	.LASF70
	.byte	0xd
	.byte	0x5b
	.byte	0x15
	.long	0x1c6
	.byte	0x48
	.uleb128 0x9
	.long	.LASF71
	.byte	0xd
	.byte	0x5c
	.byte	0x15
	.long	0x1c6
	.byte	0x58
	.uleb128 0x9
	.long	.LASF72
	.byte	0xd
	.byte	0x5d
	.byte	0x15
	.long	0x1c6
	.byte	0x68
	.uleb128 0x9
	.long	.LASF73
	.byte	0xd
	.byte	0x6a
	.byte	0x17
	.long	0x40a
	.byte	0x78
	.byte	0
	.uleb128 0xe
	.long	0x1a2
	.long	0x41a
	.uleb128 0xf
	.long	0xe8
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x3
	.byte	0x8
	.long	0x41a
	.uleb128 0xe
	.long	0xc8
	.long	0x431
	.uleb128 0xf
	.long	0xe8
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x421
	.uleb128 0xd
	.long	.LASF74
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x431
	.uleb128 0xd
	.long	.LASF75
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x431
	.uleb128 0xd
	.long	.LASF76
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x45d
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0xd
	.long	.LASF77
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x45d
	.uleb128 0x2
	.long	.LASF78
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF79
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF80
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF81
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xb
	.long	.LASF82
	.byte	0x13
	.byte	0x65
	.byte	0x15
	.long	0x104
	.uleb128 0xb
	.long	.LASF83
	.byte	0x13
	.byte	0x66
	.byte	0x16
	.long	0x110
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x14
	.byte	0x29
	.byte	0x6
	.long	0x4d0
	.uleb128 0x15
	.long	.LASF84
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x4e5
	.uleb128 0x16
	.long	.LASF85
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x15
	.byte	0x2f
	.byte	0x1
	.long	0x544
	.uleb128 0x17
	.long	.LASF86
	.value	0x100
	.uleb128 0x17
	.long	.LASF87
	.value	0x200
	.uleb128 0x17
	.long	.LASF88
	.value	0x400
	.uleb128 0x17
	.long	.LASF89
	.value	0x800
	.uleb128 0x17
	.long	.LASF90
	.value	0x1000
	.uleb128 0x17
	.long	.LASF91
	.value	0x2000
	.uleb128 0x17
	.long	.LASF92
	.value	0x4000
	.uleb128 0x17
	.long	.LASF93
	.value	0x8000
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.uleb128 0x16
	.long	.LASF95
	.byte	0x2
	.uleb128 0x16
	.long	.LASF96
	.byte	0x4
	.uleb128 0x16
	.long	.LASF97
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF98
	.byte	0xd8
	.byte	0x16
	.byte	0x31
	.byte	0x8
	.long	0x6cb
	.uleb128 0x9
	.long	.LASF99
	.byte	0x16
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF100
	.byte	0x16
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF101
	.byte	0x16
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF102
	.byte	0x16
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF103
	.byte	0x16
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF104
	.byte	0x16
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF105
	.byte	0x16
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF106
	.byte	0x16
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF107
	.byte	0x16
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF108
	.byte	0x16
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF109
	.byte	0x16
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF110
	.byte	0x16
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF111
	.byte	0x16
	.byte	0x44
	.byte	0x16
	.long	0x6e4
	.byte	0x60
	.uleb128 0x9
	.long	.LASF112
	.byte	0x16
	.byte	0x46
	.byte	0x14
	.long	0x6ea
	.byte	0x68
	.uleb128 0x9
	.long	.LASF113
	.byte	0x16
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF114
	.byte	0x16
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF115
	.byte	0x16
	.byte	0x4a
	.byte	0xb
	.long	0x164
	.byte	0x78
	.uleb128 0x9
	.long	.LASF116
	.byte	0x16
	.byte	0x4d
	.byte	0x12
	.long	0xda
	.byte	0x80
	.uleb128 0x9
	.long	.LASF117
	.byte	0x16
	.byte	0x4e
	.byte	0xf
	.long	0xef
	.byte	0x82
	.uleb128 0x9
	.long	.LASF118
	.byte	0x16
	.byte	0x4f
	.byte	0x8
	.long	0x6f0
	.byte	0x83
	.uleb128 0x9
	.long	.LASF119
	.byte	0x16
	.byte	0x51
	.byte	0xf
	.long	0x700
	.byte	0x88
	.uleb128 0x9
	.long	.LASF120
	.byte	0x16
	.byte	0x59
	.byte	0xd
	.long	0x170
	.byte	0x90
	.uleb128 0x9
	.long	.LASF121
	.byte	0x16
	.byte	0x5b
	.byte	0x17
	.long	0x70b
	.byte	0x98
	.uleb128 0x9
	.long	.LASF122
	.byte	0x16
	.byte	0x5c
	.byte	0x19
	.long	0x716
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF123
	.byte	0x16
	.byte	0x5d
	.byte	0x14
	.long	0x6ea
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF124
	.byte	0x16
	.byte	0x5e
	.byte	0x9
	.long	0x188
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF125
	.byte	0x16
	.byte	0x5f
	.byte	0xa
	.long	0x1ba
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF126
	.byte	0x16
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF127
	.byte	0x16
	.byte	0x62
	.byte	0x8
	.long	0x71c
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF128
	.byte	0x17
	.byte	0x7
	.byte	0x19
	.long	0x544
	.uleb128 0x18
	.long	.LASF383
	.byte	0x16
	.byte	0x2b
	.byte	0xe
	.uleb128 0x12
	.long	.LASF129
	.uleb128 0x3
	.byte	0x8
	.long	0x6df
	.uleb128 0x3
	.byte	0x8
	.long	0x544
	.uleb128 0xe
	.long	0x3f
	.long	0x700
	.uleb128 0xf
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x6d7
	.uleb128 0x12
	.long	.LASF130
	.uleb128 0x3
	.byte	0x8
	.long	0x706
	.uleb128 0x12
	.long	.LASF131
	.uleb128 0x3
	.byte	0x8
	.long	0x711
	.uleb128 0xe
	.long	0x3f
	.long	0x72c
	.uleb128 0xf
	.long	0xe8
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF132
	.byte	0x18
	.byte	0x89
	.byte	0xe
	.long	0x738
	.uleb128 0x3
	.byte	0x8
	.long	0x6cb
	.uleb128 0x2
	.long	.LASF133
	.byte	0x18
	.byte	0x8a
	.byte	0xe
	.long	0x738
	.uleb128 0x2
	.long	.LASF134
	.byte	0x18
	.byte	0x8b
	.byte	0xe
	.long	0x738
	.uleb128 0x2
	.long	.LASF135
	.byte	0x19
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	0xc8
	.long	0x76d
	.uleb128 0x19
	.byte	0
	.uleb128 0x5
	.long	0x762
	.uleb128 0x2
	.long	.LASF136
	.byte	0x19
	.byte	0x1b
	.byte	0x1a
	.long	0x76d
	.uleb128 0x2
	.long	.LASF137
	.byte	0x19
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF138
	.byte	0x19
	.byte	0x1f
	.byte	0x1a
	.long	0x76d
	.uleb128 0x1a
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x7b4
	.uleb128 0x1b
	.long	.LASF139
	.sleb128 -130
	.uleb128 0x1b
	.long	.LASF140
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0x46
	.long	0x7bf
	.uleb128 0x19
	.byte	0
	.uleb128 0x5
	.long	0x7b4
	.uleb128 0x2
	.long	.LASF141
	.byte	0x1a
	.byte	0x19
	.byte	0x13
	.long	0x7bf
	.uleb128 0x2
	.long	.LASF142
	.byte	0x1b
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x1c
	.long	.LASF167
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x1c
	.byte	0x20
	.byte	0x6
	.long	0x831
	.uleb128 0x16
	.long	.LASF143
	.byte	0
	.uleb128 0x16
	.long	.LASF144
	.byte	0x1
	.uleb128 0x16
	.long	.LASF145
	.byte	0x2
	.uleb128 0x16
	.long	.LASF146
	.byte	0x3
	.uleb128 0x16
	.long	.LASF147
	.byte	0x4
	.uleb128 0x16
	.long	.LASF148
	.byte	0x5
	.uleb128 0x16
	.long	.LASF149
	.byte	0x6
	.uleb128 0x16
	.long	.LASF150
	.byte	0x7
	.uleb128 0x16
	.long	.LASF151
	.byte	0x8
	.uleb128 0x16
	.long	.LASF152
	.byte	0x9
	.uleb128 0x16
	.long	.LASF153
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x7dc
	.uleb128 0xd
	.long	.LASF154
	.byte	0x1c
	.value	0x10b
	.byte	0x1a
	.long	0x76d
	.uleb128 0xe
	.long	0x831
	.long	0x84e
	.uleb128 0x19
	.byte	0
	.uleb128 0x5
	.long	0x843
	.uleb128 0xd
	.long	.LASF155
	.byte	0x1c
	.value	0x10c
	.byte	0x21
	.long	0x84e
	.uleb128 0x2
	.long	.LASF156
	.byte	0x1d
	.byte	0x32
	.byte	0xf
	.long	0x41b
	.uleb128 0x2
	.long	.LASF157
	.byte	0x1d
	.byte	0x35
	.byte	0x15
	.long	0xe1
	.uleb128 0x2
	.long	.LASF158
	.byte	0x1d
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x1e
	.byte	0x2d
	.byte	0xe
	.long	0x8b7
	.uleb128 0x16
	.long	.LASF159
	.byte	0
	.uleb128 0x16
	.long	.LASF160
	.byte	0x2
	.uleb128 0x16
	.long	.LASF161
	.byte	0x5
	.uleb128 0x16
	.long	.LASF162
	.byte	0x4
	.uleb128 0x16
	.long	.LASF163
	.byte	0x3
	.uleb128 0x16
	.long	.LASF164
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF165
	.uleb128 0x2
	.long	.LASF166
	.byte	0x1f
	.byte	0x19
	.byte	0x1f
	.long	0x8b7
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x20
	.byte	0x19
	.byte	0x6
	.long	0x8f9
	.uleb128 0x16
	.long	.LASF169
	.byte	0
	.uleb128 0x16
	.long	.LASF170
	.byte	0x1
	.uleb128 0x16
	.long	.LASF171
	.byte	0x2
	.uleb128 0x16
	.long	.LASF172
	.byte	0x3
	.uleb128 0x16
	.long	.LASF173
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF168
	.byte	0x20
	.byte	0x26
	.byte	0x1b
	.long	0x8c8
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.value	0x186
	.byte	0x7
	.long	0x92d
	.uleb128 0x16
	.long	.LASF174
	.byte	0
	.uleb128 0x16
	.long	.LASF175
	.byte	0x1
	.uleb128 0x16
	.long	.LASF176
	.byte	0x2
	.uleb128 0x16
	.long	.LASF177
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.long	.LASF178
	.byte	0x40
	.byte	0x2
	.value	0x181
	.byte	0x8
	.long	0x9d5
	.uleb128 0x1e
	.string	"fp"
	.byte	0x2
	.value	0x183
	.byte	0xb
	.long	0x738
	.byte	0
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x2
	.value	0x184
	.byte	0x11
	.long	0xc2
	.byte	0x8
	.uleb128 0x1f
	.long	.LASF179
	.byte	0x2
	.value	0x18d
	.byte	0x5
	.long	0x905
	.byte	0x10
	.uleb128 0x1f
	.long	.LASF180
	.byte	0x2
	.value	0x190
	.byte	0xc
	.long	0x9f1
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF181
	.byte	0x2
	.value	0x193
	.byte	0xc
	.long	0xa02
	.byte	0x20
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x2
	.value	0x195
	.byte	0x9
	.long	0x57
	.byte	0x28
	.uleb128 0x1f
	.long	.LASF183
	.byte	0x2
	.value	0x196
	.byte	0x9
	.long	0x57
	.byte	0x2c
	.uleb128 0x1f
	.long	.LASF184
	.byte	0x2
	.value	0x197
	.byte	0x9
	.long	0x57
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x2
	.value	0x198
	.byte	0x9
	.long	0x57
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF186
	.byte	0x2
	.value	0x199
	.byte	0xa
	.long	0x9e4
	.byte	0x38
	.uleb128 0x1f
	.long	.LASF187
	.byte	0x2
	.value	0x19a
	.byte	0xa
	.long	0x9e4
	.byte	0x39
	.byte	0
	.uleb128 0x20
	.long	0x9e4
	.long	0x9e4
	.uleb128 0x21
	.long	0x9eb
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF188
	.uleb128 0x3
	.byte	0x8
	.long	0x92d
	.uleb128 0x3
	.byte	0x8
	.long	0x9d5
	.uleb128 0x22
	.long	0xa02
	.uleb128 0x21
	.long	0x3f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x9f7
	.uleb128 0x11
	.long	.LASF178
	.byte	0x2
	.value	0x1a2
	.byte	0x17
	.long	0x92d
	.uleb128 0x23
	.long	.LASF189
	.byte	0x2
	.value	0x1c3
	.byte	0x10
	.long	0xa2c
	.uleb128 0x9
	.byte	0x3
	.quad	column_vector
	.uleb128 0x3
	.byte	0x8
	.long	0xa08
	.uleb128 0x23
	.long	.LASF190
	.byte	0x2
	.value	0x1c9
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	buff
	.uleb128 0x23
	.long	.LASF191
	.byte	0x2
	.value	0x1cd
	.byte	0x15
	.long	0xe1
	.uleb128 0x9
	.byte	0x3
	.quad	buff_current
	.uleb128 0x23
	.long	.LASF192
	.byte	0x2
	.value	0x1d1
	.byte	0xf
	.long	0x1ba
	.uleb128 0x9
	.byte	0x3
	.quad	buff_allocated
	.uleb128 0x23
	.long	.LASF193
	.byte	0x2
	.value	0x1d7
	.byte	0xd
	.long	0xcd
	.uleb128 0x9
	.byte	0x3
	.quad	line_vector
	.uleb128 0x23
	.long	.LASF194
	.byte	0x2
	.value	0x1de
	.byte	0xd
	.long	0xcd
	.uleb128 0x9
	.byte	0x3
	.quad	end_vector
	.uleb128 0x23
	.long	.LASF195
	.byte	0x2
	.value	0x1e1
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	parallel_files
	.uleb128 0x23
	.long	.LASF196
	.byte	0x2
	.value	0x1e5
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	align_empty_cols
	.uleb128 0x23
	.long	.LASF197
	.byte	0x2
	.value	0x1e9
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	empty_line
	.uleb128 0x23
	.long	.LASF198
	.byte	0x2
	.value	0x1f0
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	FF_only
	.uleb128 0x23
	.long	.LASF199
	.byte	0x2
	.value	0x1f5
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	explicit_columns
	.uleb128 0x23
	.long	.LASF200
	.byte	0x2
	.value	0x1f8
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	extremities
	.uleb128 0x23
	.long	.LASF201
	.byte	0x2
	.value	0x1fc
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	keep_FF
	.uleb128 0x23
	.long	.LASF202
	.byte	0x2
	.value	0x1fd
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	print_a_FF
	.uleb128 0x23
	.long	.LASF203
	.byte	0x2
	.value	0x201
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	print_a_header
	.uleb128 0x23
	.long	.LASF204
	.byte	0x2
	.value	0x204
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	use_form_feed
	.uleb128 0x23
	.long	.LASF205
	.byte	0x2
	.value	0x207
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x23
	.long	.LASF206
	.byte	0x2
	.value	0x20a
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	print_across_flag
	.uleb128 0x23
	.long	.LASF207
	.byte	0x2
	.value	0x20d
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	storing_columns
	.uleb128 0x23
	.long	.LASF208
	.byte	0x2
	.value	0x213
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	balance_columns
	.uleb128 0x23
	.long	.LASF209
	.byte	0x2
	.value	0x216
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	lines_per_page
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.value	0x21a
	.byte	0x6
	.long	0xc14
	.uleb128 0x16
	.long	.LASF210
	.byte	0x5
	.byte	0
	.uleb128 0x23
	.long	.LASF211
	.byte	0x2
	.value	0x21b
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	lines_per_body
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.value	0x21c
	.byte	0x6
	.long	0xc41
	.uleb128 0x16
	.long	.LASF212
	.byte	0x5
	.byte	0
	.uleb128 0x23
	.long	.LASF213
	.byte	0x2
	.value	0x220
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	chars_per_line
	.uleb128 0x23
	.long	.LASF214
	.byte	0x2
	.value	0x223
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	truncate_lines
	.uleb128 0x23
	.long	.LASF215
	.byte	0x2
	.value	0x227
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	join_lines
	.uleb128 0x23
	.long	.LASF216
	.byte	0x2
	.value	0x22b
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	chars_per_column
	.uleb128 0x23
	.long	.LASF217
	.byte	0x2
	.value	0x22e
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	untabify_input
	.uleb128 0x23
	.long	.LASF218
	.byte	0x2
	.value	0x231
	.byte	0xd
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	input_tab_char
	.uleb128 0x23
	.long	.LASF219
	.byte	0x2
	.value	0x235
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	chars_per_input_tab
	.uleb128 0x23
	.long	.LASF220
	.byte	0x2
	.value	0x238
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	tabify_output
	.uleb128 0x23
	.long	.LASF221
	.byte	0x2
	.value	0x23b
	.byte	0xd
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	output_tab_char
	.uleb128 0x23
	.long	.LASF222
	.byte	0x2
	.value	0x23e
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	chars_per_output_tab
	.uleb128 0x23
	.long	.LASF223
	.byte	0x2
	.value	0x243
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	spaces_not_printed
	.uleb128 0x23
	.long	.LASF224
	.byte	0x2
	.value	0x246
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	chars_per_margin
	.uleb128 0x23
	.long	.LASF225
	.byte	0x2
	.value	0x24c
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	output_position
	.uleb128 0x23
	.long	.LASF226
	.byte	0x2
	.value	0x252
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	input_position
	.uleb128 0x23
	.long	.LASF227
	.byte	0x2
	.value	0x256
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	failed_opens
	.uleb128 0x23
	.long	.LASF228
	.byte	0x2
	.value	0x261
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	columns
	.uleb128 0x23
	.long	.LASF229
	.byte	0x2
	.value	0x265
	.byte	0x12
	.long	0x4ac
	.uleb128 0x9
	.byte	0x3
	.quad	first_page_number
	.uleb128 0x23
	.long	.LASF230
	.byte	0x2
	.value	0x266
	.byte	0x12
	.long	0x4ac
	.uleb128 0x9
	.byte	0x3
	.quad	last_page_number
	.uleb128 0x23
	.long	.LASF231
	.byte	0x2
	.value	0x269
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	files_ready_to_read
	.uleb128 0x23
	.long	.LASF232
	.byte	0x2
	.value	0x26c
	.byte	0x12
	.long	0x4ac
	.uleb128 0x9
	.byte	0x3
	.quad	page_number
	.uleb128 0x23
	.long	.LASF233
	.byte	0x2
	.value	0x27b
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	line_number
	.uleb128 0x23
	.long	.LASF234
	.byte	0x2
	.value	0x27e
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	numbered_lines
	.uleb128 0x23
	.long	.LASF235
	.byte	0x2
	.value	0x281
	.byte	0xd
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	number_separator
	.uleb128 0x23
	.long	.LASF236
	.byte	0x2
	.value	0x285
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	line_count
	.uleb128 0x23
	.long	.LASF237
	.byte	0x2
	.value	0x28a
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	skip_count
	.uleb128 0x23
	.long	.LASF238
	.byte	0x2
	.value	0x28e
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	start_line_num
	.uleb128 0x23
	.long	.LASF239
	.byte	0x2
	.value	0x291
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	chars_per_number
	.uleb128 0x23
	.long	.LASF240
	.byte	0x2
	.value	0x296
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	number_width
	.uleb128 0x23
	.long	.LASF241
	.byte	0x2
	.value	0x299
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	number_buff
	.uleb128 0x23
	.long	.LASF242
	.byte	0x2
	.value	0x29d
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	use_esc_sequence
	.uleb128 0x23
	.long	.LASF243
	.byte	0x2
	.value	0x2a1
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	use_cntrl_prefix
	.uleb128 0x23
	.long	.LASF244
	.byte	0x2
	.value	0x2a4
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	double_space
	.uleb128 0x23
	.long	.LASF245
	.byte	0x2
	.value	0x2a8
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	total_files
	.uleb128 0x23
	.long	.LASF246
	.byte	0x2
	.value	0x2ab
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_failed_opens
	.uleb128 0x23
	.long	.LASF247
	.byte	0x2
	.value	0x2af
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	use_col_separator
	.uleb128 0x23
	.long	.LASF248
	.byte	0x2
	.value	0x2b4
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	col_sep_string
	.uleb128 0x23
	.long	.LASF249
	.byte	0x2
	.value	0x2b5
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	col_sep_length
	.uleb128 0x23
	.long	.LASF250
	.byte	0x2
	.value	0x2b6
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	column_separator
	.uleb128 0x23
	.long	.LASF251
	.byte	0x2
	.value	0x2b7
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	line_separator
	.uleb128 0x23
	.long	.LASF252
	.byte	0x2
	.value	0x2bb
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	separators_not_printed
	.uleb128 0x23
	.long	.LASF253
	.byte	0x2
	.value	0x2bf
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	padding_not_printed
	.uleb128 0x23
	.long	.LASF254
	.byte	0x2
	.value	0x2c3
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	pad_vertically
	.uleb128 0x23
	.long	.LASF255
	.byte	0x2
	.value	0x2c6
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	custom_header
	.uleb128 0x23
	.long	.LASF256
	.byte	0x2
	.value	0x2c9
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	date_format
	.uleb128 0x23
	.long	.LASF257
	.byte	0x2
	.value	0x2cc
	.byte	0x13
	.long	0x321
	.uleb128 0x9
	.byte	0x3
	.quad	localtz
	.uleb128 0x23
	.long	.LASF258
	.byte	0x2
	.value	0x2cf
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	date_text
	.uleb128 0x23
	.long	.LASF259
	.byte	0x2
	.value	0x2d0
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	file_text
	.uleb128 0x23
	.long	.LASF260
	.byte	0x2
	.value	0x2d3
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	header_width_available
	.uleb128 0x23
	.long	.LASF261
	.byte	0x2
	.value	0x2d5
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	clump_buff
	.uleb128 0x23
	.long	.LASF262
	.byte	0x2
	.value	0x2db
	.byte	0xd
	.long	0x9e4
	.uleb128 0x9
	.byte	0x3
	.quad	last_line
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.value	0x2e0
	.byte	0x1
	.long	0x10db
	.uleb128 0x16
	.long	.LASF263
	.byte	0x80
	.uleb128 0x16
	.long	.LASF264
	.byte	0x81
	.byte	0
	.uleb128 0xe
	.long	0x46
	.long	0x10eb
	.uleb128 0xf
	.long	0xe8
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.long	0x10db
	.uleb128 0x23
	.long	.LASF265
	.byte	0x2
	.value	0x2e5
	.byte	0x13
	.long	0x10eb
	.uleb128 0x9
	.byte	0x3
	.quad	short_options
	.uleb128 0xe
	.long	0xbd
	.long	0x1117
	.uleb128 0xf
	.long	0xe8
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.long	0x1107
	.uleb128 0x23
	.long	.LASF266
	.byte	0x2
	.value	0x2e8
	.byte	0x1c
	.long	0x1117
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x24
	.long	.LASF349
	.byte	0x2
	.value	0xaab
	.byte	0x1
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x1163
	.uleb128 0x25
	.long	.LASF179
	.byte	0x2
	.value	0xaab
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.long	.LASF368
	.byte	0x2
	.value	0xa9e
	.byte	0x1
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF271
	.byte	0x2
	.value	0xa3a
	.byte	0x1
	.long	0x57
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x121c
	.uleb128 0x28
	.string	"c"
	.byte	0x2
	.value	0xa3a
	.byte	0x15
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"uc"
	.byte	0x2
	.value	0xa3c
	.byte	0x11
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x29
	.string	"s"
	.byte	0x2
	.value	0xa3d
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0xa3e
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF267
	.byte	0x2
	.value	0xa3f
	.byte	0x8
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF268
	.byte	0x2
	.value	0xa40
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0xa41
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF270
	.byte	0x2
	.value	0xa42
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x27
	.long	.LASF272
	.byte	0x2
	.value	0x9f2
	.byte	0x1
	.long	0x9e4
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ac
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x9f2
	.byte	0x17
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"q"
	.byte	0x2
	.value	0x9f4
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF273
	.byte	0x2
	.value	0x9f6
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF274
	.byte	0x2
	.value	0x9f7
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF275
	.byte	0x2
	.value	0xa03
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0xa0c
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF276
	.byte	0x2
	.value	0x967
	.byte	0x1
	.long	0x9e4
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x1336
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x967
	.byte	0x14
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"c"
	.byte	0x2
	.value	0x969
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.value	0x96a
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF277
	.byte	0x2
	.value	0x96b
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"j"
	.byte	0x2
	.value	0x96c
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"k"
	.byte	0x2
	.value	0x96c
	.byte	0xa
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"q"
	.byte	0x2
	.value	0x96d
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF284
	.byte	0x2
	.value	0x931
	.byte	0x1
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x13ab
	.uleb128 0x23
	.long	.LASF278
	.byte	0x2
	.value	0x933
	.byte	0x8
	.long	0x13ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x23
	.long	.LASF279
	.byte	0x2
	.value	0x934
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x23
	.long	.LASF280
	.byte	0x2
	.value	0x935
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x23
	.long	.LASF281
	.byte	0x2
	.value	0x936
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x2c
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0
	.uleb128 0xe
	.long	0x3f
	.long	0x13bc
	.uleb128 0x2d
	.long	0xe8
	.value	0x113
	.byte	0
	.uleb128 0x27
	.long	.LASF282
	.byte	0x2
	.value	0x903
	.byte	0x1
	.long	0x9e4
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x145e
	.uleb128 0x25
	.long	.LASF283
	.byte	0x2
	.value	0x903
	.byte	0x19
	.long	0x4ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x29
	.string	"n"
	.byte	0x2
	.value	0x905
	.byte	0x12
	.long	0x4ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x907
	.byte	0xf
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"j"
	.byte	0x2
	.value	0x908
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x90a
	.byte	0x10
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF285
	.byte	0x2
	.value	0x8e7
	.byte	0x1
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x148c
	.uleb128 0x28
	.string	"c"
	.byte	0x2
	.value	0x8e7
	.byte	0x12
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.long	.LASF286
	.byte	0x2
	.value	0x8d7
	.byte	0x1
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x14d8
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x8d7
	.byte	0x16
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"n"
	.byte	0x2
	.value	0x8d7
	.byte	0x1d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.long	.LASF287
	.byte	0x2
	.value	0x8d7
	.byte	0x26
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.long	.LASF288
	.byte	0x2
	.value	0x8aa
	.byte	0x1
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x1514
	.uleb128 0x29
	.string	"s"
	.byte	0x2
	.value	0x8ac
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"l"
	.byte	0x2
	.value	0x8ad
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.long	.LASF289
	.byte	0x2
	.value	0x891
	.byte	0x1
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x1564
	.uleb128 0x23
	.long	.LASF290
	.byte	0x2
	.value	0x893
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.long	.LASF291
	.byte	0x2
	.value	0x894
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF292
	.byte	0x2
	.value	0x895
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF293
	.byte	0x2
	.value	0x84e
	.byte	0x1
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x15ea
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x84e
	.byte	0x14
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF294
	.byte	0x2
	.value	0x84e
	.byte	0x1b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"c"
	.byte	0x2
	.value	0x850
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"f"
	.byte	0x2
	.value	0x851
	.byte	0x9
	.long	0x738
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x852
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF295
	.byte	0x2
	.value	0x853
	.byte	0x8
	.long	0x9e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x29
	.string	"q"
	.byte	0x2
	.value	0x854
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF296
	.byte	0x2
	.value	0x82c
	.byte	0x1
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x1634
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x82c
	.byte	0x1c
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"c"
	.byte	0x2
	.value	0x82e
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"f"
	.byte	0x2
	.value	0x82f
	.byte	0x9
	.long	0x738
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF297
	.byte	0x2
	.value	0x81c
	.byte	0x1
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1684
	.uleb128 0x25
	.long	.LASF298
	.byte	0x2
	.value	0x81c
	.byte	0x18
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x821
	.byte	0x17
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF299
	.byte	0x2
	.value	0x808
	.byte	0x1
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x16c2
	.uleb128 0x25
	.long	.LASF300
	.byte	0x2
	.value	0x808
	.byte	0x14
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"h"
	.byte	0x2
	.value	0x80a
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF301
	.byte	0x2
	.value	0x7d9
	.byte	0x1
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x171c
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x7d9
	.byte	0x1a
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x7db
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"s"
	.byte	0x2
	.value	0x7dc
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF302
	.byte	0x2
	.value	0x7dd
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.long	.LASF303
	.byte	0x2
	.value	0x7ce
	.byte	0x1
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x175b
	.uleb128 0x28
	.string	"c"
	.byte	0x2
	.value	0x7ce
	.byte	0x12
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0
	.uleb128 0x2e
	.long	.LASF304
	.byte	0x2
	.value	0x7b8
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x17c7
	.uleb128 0x25
	.long	.LASF305
	.byte	0x2
	.value	0x7b8
	.byte	0xe
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x7ba
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x7bb
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF298
	.byte	0x2
	.value	0x7bb
	.byte	0xa
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF306
	.byte	0x2
	.value	0x7bc
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.long	.LASF307
	.byte	0x2
	.value	0x785
	.byte	0x1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x1841
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x787
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"j"
	.byte	0x2
	.value	0x787
	.byte	0xa
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF273
	.byte	0x2
	.value	0x788
	.byte	0x10
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF308
	.byte	0x2
	.value	0x789
	.byte	0x10
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF309
	.byte	0x2
	.value	0x78a
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x78b
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF310
	.byte	0x2
	.value	0x761
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x18a1
	.uleb128 0x23
	.long	.LASF311
	.byte	0x2
	.value	0x763
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF312
	.byte	0x2
	.value	0x763
	.byte	0x14
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF313
	.byte	0x2
	.value	0x763
	.byte	0x23
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF314
	.byte	0x2
	.value	0x763
	.byte	0x37
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.long	.LASF315
	.byte	0x2
	.value	0x6d9
	.byte	0x1
	.long	0x9e4
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x1900
	.uleb128 0x29
	.string	"j"
	.byte	0x2
	.value	0x6db
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF316
	.byte	0x2
	.value	0x6dc
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x6dd
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"pv"
	.byte	0x2
	.value	0x6e6
	.byte	0x8
	.long	0x9e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x2b
	.long	.LASF317
	.byte	0x2
	.value	0x6bd
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x192e
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x6bd
	.byte	0x17
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x2
	.value	0x690
	.byte	0x1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x196a
	.uleb128 0x29
	.string	"j"
	.byte	0x2
	.value	0x692
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x693
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF319
	.byte	0x2
	.value	0x659
	.byte	0x1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a72
	.uleb128 0x25
	.long	.LASF320
	.byte	0x2
	.value	0x659
	.byte	0x1a
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x25
	.long	.LASF321
	.byte	0x2
	.value	0x659
	.byte	0x28
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x29
	.string	"buf"
	.byte	0x2
	.value	0x65b
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x29
	.string	"st"
	.byte	0x2
	.value	0x65c
	.byte	0xf
	.long	0x339
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x29
	.string	"t"
	.byte	0x2
	.value	0x65d
	.byte	0x13
	.long	0x1c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x29
	.string	"ns"
	.byte	0x2
	.value	0x65e
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x29
	.string	"tm"
	.byte	0x2
	.value	0x65f
	.byte	0xd
	.long	0x219
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2f
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1a28
	.uleb128 0x23
	.long	.LASF32
	.byte	0x2
	.value	0x668
	.byte	0x1e
	.long	0x1c6
	.uleb128 0x9
	.byte	0x3
	.quad	timespec.6729
	.byte	0
	.uleb128 0x2f
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1a4f
	.uleb128 0x23
	.long	.LASF322
	.byte	0x2
	.value	0x671
	.byte	0xe
	.long	0x1ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x2a
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x23
	.long	.LASF323
	.byte	0x2
	.value	0x678
	.byte	0xc
	.long	0x1a72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x3f
	.long	0x1a82
	.uleb128 0xf
	.long	0xe8
	.byte	0x14
	.byte	0
	.uleb128 0x2b
	.long	.LASF324
	.byte	0x2
	.value	0x63b
	.byte	0x1
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac1
	.uleb128 0x25
	.long	.LASF325
	.byte	0x2
	.value	0x63b
	.byte	0x12
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"av"
	.byte	0x2
	.value	0x63b
	.byte	0x2a
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.long	.LASF326
	.byte	0x2
	.value	0x61b
	.byte	0x1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x1afd
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x61d
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x61e
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF327
	.byte	0x2
	.value	0x603
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b47
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x603
	.byte	0x14
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"q"
	.byte	0x2
	.value	0x605
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x606
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.long	.LASF328
	.byte	0x2
	.value	0x5dc
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb3
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x5dc
	.byte	0x15
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"q"
	.byte	0x2
	.value	0x5de
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x5df
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2c
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.byte	0
	.uleb128 0x27
	.long	.LASF329
	.byte	0x2
	.value	0x5bb
	.byte	0x1
	.long	0x9e4
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bf5
	.uleb128 0x25
	.long	.LASF5
	.byte	0x2
	.value	0x5bb
	.byte	0x12
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x5bb
	.byte	0x20
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.long	.LASF330
	.byte	0x2
	.value	0x565
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c4f
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x567
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"h"
	.byte	0x2
	.value	0x567
	.byte	0xa
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF331
	.byte	0x2
	.value	0x567
	.byte	0xd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x568
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF332
	.byte	0x2
	.value	0x520
	.byte	0x1
	.long	0x9e4
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d06
	.uleb128 0x25
	.long	.LASF325
	.byte	0x2
	.value	0x520
	.byte	0xf
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"av"
	.byte	0x2
	.value	0x520
	.byte	0x27
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x522
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1cc5
	.uleb128 0x23
	.long	.LASF333
	.byte	0x2
	.value	0x52b
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x23
	.long	.LASF334
	.byte	0x2
	.value	0x54e
	.byte	0x13
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF335
	.byte	0x2
	.value	0x54f
	.byte	0xd
	.long	0x738
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x550
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF336
	.byte	0x2
	.value	0x4a7
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d9d
	.uleb128 0x25
	.long	.LASF325
	.byte	0x2
	.value	0x4a7
	.byte	0x16
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF337
	.byte	0x2
	.value	0x4a9
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF338
	.byte	0x2
	.value	0x4f9
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF339
	.byte	0x2
	.value	0x4f9
	.byte	0x12
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1d8b
	.uleb128 0x23
	.long	.LASF340
	.byte	0x2
	.value	0x4e3
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.byte	0
	.uleb128 0x2b
	.long	.LASF341
	.byte	0x2
	.value	0x491
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e23
	.uleb128 0x28
	.string	"arg"
	.byte	0x2
	.value	0x491
	.byte	0x12
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF342
	.byte	0x2
	.value	0x491
	.byte	0x1c
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.long	.LASF343
	.byte	0x2
	.value	0x491
	.byte	0x2f
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF344
	.byte	0x2
	.value	0x491
	.byte	0x3f
	.long	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x23
	.long	.LASF345
	.byte	0x2
	.value	0x497
	.byte	0x10
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF346
	.byte	0x2
	.value	0x484
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e93
	.uleb128 0x25
	.long	.LASF347
	.byte	0x2
	.value	0x484
	.byte	0x18
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"min"
	.byte	0x2
	.value	0x484
	.byte	0x23
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"num"
	.byte	0x2
	.value	0x484
	.byte	0x2d
	.long	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"err"
	.byte	0x2
	.value	0x484
	.byte	0x3e
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF348
	.byte	0x2
	.value	0x486
	.byte	0xc
	.long	0x4a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF350
	.byte	0x2
	.value	0x35a
	.byte	0x1
	.long	0x57
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x2035
	.uleb128 0x25
	.long	.LASF351
	.byte	0x2
	.value	0x35a
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.long	.LASF352
	.byte	0x2
	.value	0x35a
	.byte	0x18
	.long	0x45d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF353
	.byte	0x2
	.value	0x35c
	.byte	0x10
	.long	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.long	.LASF354
	.byte	0x2
	.value	0x35d
	.byte	0x8
	.long	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -95
	.uleb128 0x23
	.long	.LASF355
	.byte	0x2
	.value	0x35e
	.byte	0x8
	.long	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -94
	.uleb128 0x23
	.long	.LASF356
	.byte	0x2
	.value	0x35f
	.byte	0x8
	.long	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x23
	.long	.LASF357
	.byte	0x2
	.value	0x360
	.byte	0xa
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF358
	.byte	0x2
	.value	0x363
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF359
	.byte	0x2
	.value	0x364
	.byte	0xa
	.long	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF360
	.byte	0x2
	.value	0x365
	.byte	0xa
	.long	0x1ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.Ldebug_ranges0+0
	.long	0x1fdc
	.uleb128 0x29
	.string	"oi"
	.byte	0x2
	.value	0x376
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.string	"c"
	.byte	0x2
	.value	0x377
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2c
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2a
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x23
	.long	.LASF361
	.byte	0x2
	.value	0x409
	.byte	0x11
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2c
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2f
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x2023
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x474
	.byte	0x1d
	.long	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2c
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0
	.uleb128 0x2b
	.long	.LASF362
	.byte	0x2
	.value	0x350
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x2075
	.uleb128 0x25
	.long	.LASF363
	.byte	0x2
	.value	0x350
	.byte	0x1f
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"len"
	.byte	0x2
	.value	0x352
	.byte	0xa
	.long	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF364
	.byte	0x2
	.value	0x347
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x20a3
	.uleb128 0x28
	.string	"s"
	.byte	0x2
	.value	0x347
	.byte	0x21
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF365
	.byte	0x2
	.value	0x324
	.byte	0x1
	.long	0x9e4
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x2156
	.uleb128 0x28
	.string	"oi"
	.byte	0x2
	.value	0x324
	.byte	0x16
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"c"
	.byte	0x2
	.value	0x324
	.byte	0x1f
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF366
	.byte	0x2
	.value	0x324
	.byte	0x2e
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x326
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF274
	.byte	0x2
	.value	0x327
	.byte	0xd
	.long	0x4ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF275
	.byte	0x2
	.value	0x328
	.byte	0xd
	.long	0x4ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"err"
	.byte	0x2
	.value	0x329
	.byte	0x10
	.long	0x8f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x29
	.string	"p1"
	.byte	0x2
	.value	0x332
	.byte	0x13
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF367
	.byte	0x2
	.value	0x311
	.byte	0x1
	.long	0xe1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x21a4
	.uleb128 0x29
	.string	"q"
	.byte	0x2
	.value	0x313
	.byte	0xb
	.long	0xa2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x314
	.byte	0x10
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"n"
	.byte	0x2
	.value	0x315
	.byte	0x10
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF369
	.byte	0x2
	.value	0x308
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF370
	.byte	0x1
	.value	0x2b2
	.byte	0x1
	.long	0x39
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x2201
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.value	0x2b2
	.byte	0x13
	.long	0x1ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x2b2
	.byte	0x1c
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF371
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a6
	.uleb128 0x25
	.long	.LASF372
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1d
	.long	.LASF373
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x225c
	.uleb128 0x1f
	.long	.LASF372
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x1f
	.long	.LASF374
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x2231
	.uleb128 0x23
	.long	.LASF373
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x22b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	.LASF374
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	.LASF375
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x22bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.long	.LASF376
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0x225c
	.long	0x22b6
	.uleb128 0xf
	.long	0xe8
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x22a6
	.uleb128 0x3
	.byte	0x8
	.long	0x225c
	.uleb128 0x26
	.long	.LASF377
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF378
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF379
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0xd3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x3f
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0x25
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x34
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF246:
	.string	"ignore_failed_opens"
.LASF73:
	.string	"__glibc_reserved"
.LASF362:
	.string	"separator_string"
.LASF72:
	.string	"st_ctim"
.LASF30:
	.string	"size_t"
.LASF40:
	.string	"tm_hour"
.LASF259:
	.string	"file_text"
.LASF139:
	.string	"GETOPT_HELP_CHAR"
.LASF93:
	.string	"_ISgraph"
.LASF337:
	.string	"chars_used_by_number"
.LASF68:
	.string	"st_blksize"
.LASF69:
	.string	"st_blocks"
.LASF313:
	.string	"chars_per_column_1"
.LASF278:
	.string	"page_text"
.LASF207:
	.string	"storing_columns"
.LASF130:
	.string	"_IO_codecvt"
.LASF216:
	.string	"chars_per_column"
.LASF317:
	.string	"align_column"
.LASF268:
	.string	"width"
.LASF348:
	.string	"tnum"
.LASF110:
	.string	"_IO_save_end"
.LASF380:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF19:
	.string	"__gid_t"
.LASF257:
	.string	"localtz"
.LASF74:
	.string	"_sys_siglist"
.LASF71:
	.string	"st_mtim"
.LASF29:
	.string	"time_t"
.LASF285:
	.string	"print_char"
.LASF276:
	.string	"read_line"
.LASF103:
	.string	"_IO_write_base"
.LASF299:
	.string	"pad_across_to"
.LASF158:
	.string	"error_one_per_line"
.LASF244:
	.string	"double_space"
.LASF119:
	.string	"_lock"
.LASF256:
	.string	"date_format"
.LASF250:
	.string	"column_separator"
.LASF304:
	.string	"balance"
.LASF171:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF58:
	.string	"stat"
.LASF49:
	.string	"__tzname"
.LASF334:
	.string	"firstname"
.LASF108:
	.string	"_IO_save_base"
.LASF296:
	.string	"read_rest_of_line"
.LASF191:
	.string	"buff_current"
.LASF193:
	.string	"line_vector"
.LASF322:
	.string	"bufsize"
.LASF112:
	.string	"_chain"
.LASF264:
	.string	"PAGES_OPTION"
.LASF116:
	.string	"_cur_column"
.LASF135:
	.string	"sys_nerr"
.LASF235:
	.string	"number_separator"
.LASF220:
	.string	"tabify_output"
.LASF323:
	.string	"secbuf"
.LASF261:
	.string	"clump_buff"
.LASF17:
	.string	"__dev_t"
.LASF175:
	.string	"FF_FOUND"
.LASF340:
	.string	"chars_per_default_tab"
.LASF137:
	.string	"_sys_nerr"
.LASF76:
	.string	"__environ"
.LASF236:
	.string	"line_count"
.LASF295:
	.string	"single_ff"
.LASF14:
	.string	"long int"
.LASF333:
	.string	"files_left"
.LASF310:
	.string	"init_store_cols"
.LASF294:
	.string	"column_number"
.LASF217:
	.string	"untabify_input"
.LASF6:
	.string	"has_arg"
.LASF302:
	.string	"num_width"
.LASF242:
	.string	"use_esc_sequence"
.LASF129:
	.string	"_IO_marker"
.LASF350:
	.string	"main"
.LASF183:
	.string	"lines_stored"
.LASF92:
	.string	"_ISprint"
.LASF176:
	.string	"ON_HOLD"
.LASF269:
	.string	"chars"
.LASF239:
	.string	"chars_per_number"
.LASF57:
	.string	"timezone_t"
.LASF164:
	.string	"FADVISE_RANDOM"
.LASF12:
	.string	"signed char"
.LASF26:
	.string	"__blksize_t"
.LASF214:
	.string	"truncate_lines"
.LASF378:
	.string	"emit_stdin_note"
.LASF98:
	.string	"_IO_FILE"
.LASF51:
	.string	"__timezone"
.LASF131:
	.string	"_IO_wide_data"
.LASF63:
	.string	"st_uid"
.LASF272:
	.string	"print_stored"
.LASF154:
	.string	"quoting_style_args"
.LASF319:
	.string	"init_header"
.LASF77:
	.string	"environ"
.LASF8:
	.string	"unsigned char"
.LASF211:
	.string	"lines_per_body"
.LASF123:
	.string	"_freeres_list"
.LASF307:
	.string	"store_columns"
.LASF66:
	.string	"st_rdev"
.LASF205:
	.string	"have_read_stdin"
.LASF314:
	.string	"chars_if_truncate"
.LASF197:
	.string	"empty_line"
.LASF168:
	.string	"strtol_error"
.LASF240:
	.string	"number_width"
.LASF186:
	.string	"numbered"
.LASF371:
	.string	"emit_ancillary_info"
.LASF361:
	.string	"tmp_cpl"
.LASF325:
	.string	"number_of_files"
.LASF157:
	.string	"error_message_count"
.LASF356:
	.string	"old_s"
.LASF203:
	.string	"print_a_header"
.LASF28:
	.string	"__syscall_slong_t"
.LASF188:
	.string	"_Bool"
.LASF160:
	.string	"FADVISE_SEQUENTIAL"
.LASF2:
	.string	"char"
.LASF357:
	.string	"file_names"
.LASF219:
	.string	"chars_per_input_tab"
.LASF248:
	.string	"col_sep_string"
.LASF329:
	.string	"open_file"
.LASF181:
	.string	"char_func"
.LASF286:
	.string	"print_clump"
.LASF232:
	.string	"page_number"
.LASF383:
	.string	"_IO_lock_t"
.LASF206:
	.string	"print_across_flag"
.LASF241:
	.string	"number_buff"
.LASF320:
	.string	"filename"
.LASF298:
	.string	"lines"
.LASF54:
	.string	"timezone"
.LASF147:
	.string	"shell_escape_always_quoting_style"
.LASF21:
	.string	"__mode_t"
.LASF39:
	.string	"tm_min"
.LASF293:
	.string	"skip_read"
.LASF100:
	.string	"_IO_read_ptr"
.LASF228:
	.string	"columns"
.LASF132:
	.string	"stdin"
.LASF136:
	.string	"sys_errlist"
.LASF335:
	.string	"firstfp"
.LASF202:
	.string	"print_a_FF"
.LASF328:
	.string	"close_file"
.LASF111:
	.string	"_markers"
.LASF142:
	.string	"program_name"
.LASF96:
	.string	"_ISpunct"
.LASF41:
	.string	"tm_mday"
.LASF366:
	.string	"pages"
.LASF224:
	.string	"chars_per_margin"
.LASF204:
	.string	"use_form_feed"
.LASF369:
	.string	"integer_overflow"
.LASF149:
	.string	"c_maybe_quoting_style"
.LASF78:
	.string	"program_invocation_name"
.LASF172:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF374:
	.string	"node"
.LASF280:
	.string	"lhs_spaces"
.LASF161:
	.string	"FADVISE_NOREUSE"
.LASF252:
	.string	"separators_not_printed"
.LASF38:
	.string	"tm_sec"
.LASF46:
	.string	"tm_isdst"
.LASF266:
	.string	"long_options"
.LASF174:
	.string	"OPEN"
.LASF64:
	.string	"st_gid"
.LASF370:
	.string	"timetostr"
.LASF170:
	.string	"LONGINT_OVERFLOW"
.LASF255:
	.string	"custom_header"
.LASF1:
	.string	"optind"
.LASF291:
	.string	"h_old"
.LASF364:
	.string	"parse_column_count"
.LASF152:
	.string	"clocale_quoting_style"
.LASF316:
	.string	"lines_left_on_page"
.LASF315:
	.string	"print_page"
.LASF156:
	.string	"error_print_progname"
.LASF11:
	.string	"long unsigned int"
.LASF249:
	.string	"col_sep_length"
.LASF179:
	.string	"status"
.LASF114:
	.string	"_flags2"
.LASF67:
	.string	"st_size"
.LASF102:
	.string	"_IO_read_base"
.LASF273:
	.string	"line"
.LASF31:
	.string	"option"
.LASF127:
	.string	"_unused2"
.LASF247:
	.string	"use_col_separator"
.LASF339:
	.string	"useful_chars"
.LASF245:
	.string	"total_files"
.LASF303:
	.string	"store_char"
.LASF263:
	.string	"COLUMNS_OPTION"
.LASF90:
	.string	"_ISxdigit"
.LASF351:
	.string	"argc"
.LASF312:
	.string	"total_lines_1"
.LASF115:
	.string	"_old_offset"
.LASF353:
	.string	"n_files"
.LASF373:
	.string	"infomap"
.LASF352:
	.string	"argv"
.LASF27:
	.string	"__blkcnt_t"
.LASF330:
	.string	"init_funcs"
.LASF326:
	.string	"reset_status"
.LASF144:
	.string	"shell_quoting_style"
.LASF309:
	.string	"last_col"
.LASF20:
	.string	"__ino_t"
.LASF182:
	.string	"current_line"
.LASF218:
	.string	"input_tab_char"
.LASF318:
	.string	"init_page"
.LASF37:
	.string	"long long int"
.LASF355:
	.string	"old_w"
.LASF327:
	.string	"hold_file"
.LASF372:
	.string	"program"
.LASF80:
	.string	"Version"
.LASF225:
	.string	"output_position"
.LASF81:
	.string	"exit_failure"
.LASF35:
	.string	"_gl_cxxalias_dummy"
.LASF42:
	.string	"tm_mon"
.LASF86:
	.string	"_ISupper"
.LASF148:
	.string	"c_quoting_style"
.LASF162:
	.string	"FADVISE_DONTNEED"
.LASF95:
	.string	"_IScntrl"
.LASF338:
	.string	"sep_chars"
.LASF184:
	.string	"lines_to_print"
.LASF105:
	.string	"_IO_write_end"
.LASF324:
	.string	"print_files"
.LASF83:
	.string	"uintmax_t"
.LASF345:
	.string	"tmp_long"
.LASF173:
	.string	"LONGINT_INVALID"
.LASF238:
	.string	"start_line_num"
.LASF190:
	.string	"buff"
.LASF75:
	.string	"sys_siglist"
.LASF347:
	.string	"n_str"
.LASF15:
	.string	"__intmax_t"
.LASF140:
	.string	"GETOPT_VERSION_CHAR"
.LASF106:
	.string	"_IO_buf_base"
.LASF368:
	.string	"cleanup"
.LASF178:
	.string	"COLUMN"
.LASF10:
	.string	"unsigned int"
.LASF221:
	.string	"output_tab_char"
.LASF195:
	.string	"parallel_files"
.LASF141:
	.string	"version_etc_copyright"
.LASF209:
	.string	"lines_per_page"
.LASF155:
	.string	"quoting_style_vals"
.LASF300:
	.string	"position"
.LASF143:
	.string	"literal_quoting_style"
.LASF331:
	.string	"h_next"
.LASF65:
	.string	"__pad0"
.LASF52:
	.string	"tzname"
.LASF185:
	.string	"start_position"
.LASF125:
	.string	"__pad5"
.LASF7:
	.string	"flag"
.LASF284:
	.string	"print_header"
.LASF227:
	.string	"failed_opens"
.LASF189:
	.string	"column_vector"
.LASF165:
	.string	"quoting_options"
.LASF358:
	.string	"column_count_string"
.LASF367:
	.string	"cols_ready_to_print"
.LASF99:
	.string	"_flags"
.LASF376:
	.string	"lc_messages"
.LASF166:
	.string	"quote_quoting_options"
.LASF199:
	.string	"explicit_columns"
.LASF274:
	.string	"first"
.LASF126:
	.string	"_mode"
.LASF210:
	.string	"lines_per_header"
.LASF283:
	.string	"page"
.LASF229:
	.string	"first_page_number"
.LASF159:
	.string	"FADVISE_NORMAL"
.LASF121:
	.string	"_codecvt"
.LASF180:
	.string	"print_func"
.LASF85:
	.string	"LOG10_TIMESPEC_HZ"
.LASF61:
	.string	"st_nlink"
.LASF208:
	.string	"balance_columns"
.LASF222:
	.string	"chars_per_output_tab"
.LASF254:
	.string	"pad_vertically"
.LASF163:
	.string	"FADVISE_WILLNEED"
.LASF297:
	.string	"pad_down"
.LASF82:
	.string	"intmax_t"
.LASF56:
	.string	"long double"
.LASF253:
	.string	"padding_not_printed"
.LASF128:
	.string	"FILE"
.LASF59:
	.string	"st_dev"
.LASF169:
	.string	"LONGINT_OK"
.LASF32:
	.string	"timespec"
.LASF120:
	.string	"_offset"
.LASF88:
	.string	"_ISalpha"
.LASF4:
	.string	"optopt"
.LASF196:
	.string	"align_empty_cols"
.LASF151:
	.string	"locale_quoting_style"
.LASF36:
	.string	"long long unsigned int"
.LASF237:
	.string	"skip_count"
.LASF292:
	.string	"goal"
.LASF360:
	.string	"n_alloc"
.LASF94:
	.string	"_ISblank"
.LASF23:
	.string	"__off_t"
.LASF167:
	.string	"quoting_style"
.LASF97:
	.string	"_ISalnum"
.LASF200:
	.string	"extremities"
.LASF79:
	.string	"program_invocation_short_name"
.LASF308:
	.string	"buff_start"
.LASF377:
	.string	"emit_mandatory_arg_note"
.LASF124:
	.string	"_freeres_buf"
.LASF44:
	.string	"tm_wday"
.LASF91:
	.string	"_ISspace"
.LASF187:
	.string	"full_page_printed"
.LASF45:
	.string	"tm_yday"
.LASF3:
	.string	"opterr"
.LASF213:
	.string	"chars_per_line"
.LASF332:
	.string	"init_fps"
.LASF382:
	.string	"/root/coreutils"
.LASF25:
	.string	"__time_t"
.LASF288:
	.string	"print_sep_string"
.LASF109:
	.string	"_IO_backup_base"
.LASF118:
	.string	"_shortbuf"
.LASF321:
	.string	"desc"
.LASF226:
	.string	"input_position"
.LASF379:
	.string	"to_uchar"
.LASF145:
	.string	"shell_always_quoting_style"
.LASF305:
	.string	"total_stored"
.LASF24:
	.string	"__off64_t"
.LASF344:
	.string	"number"
.LASF234:
	.string	"numbered_lines"
.LASF282:
	.string	"skip_to_page"
.LASF150:
	.string	"escape_quoting_style"
.LASF107:
	.string	"_IO_buf_end"
.LASF5:
	.string	"name"
.LASF381:
	.string	"src/pr.c"
.LASF270:
	.string	"chars_per_c"
.LASF212:
	.string	"lines_per_footer"
.LASF87:
	.string	"_ISlower"
.LASF375:
	.string	"map_prog"
.LASF47:
	.string	"tm_gmtoff"
.LASF134:
	.string	"stderr"
.LASF13:
	.string	"short int"
.LASF233:
	.string	"line_number"
.LASF34:
	.string	"tv_nsec"
.LASF349:
	.string	"usage"
.LASF146:
	.string	"shell_escape_quoting_style"
.LASF117:
	.string	"_vtable_offset"
.LASF277:
	.string	"last_input_position"
.LASF138:
	.string	"_sys_errlist"
.LASF16:
	.string	"__uintmax_t"
.LASF279:
	.string	"available_width"
.LASF346:
	.string	"getoptnum"
.LASF354:
	.string	"old_options"
.LASF231:
	.string	"files_ready_to_read"
.LASF84:
	.string	"TIMESPEC_HZ"
.LASF342:
	.string	"switch_char"
.LASF223:
	.string	"spaces_not_printed"
.LASF177:
	.string	"CLOSED"
.LASF50:
	.string	"__daylight"
.LASF48:
	.string	"tm_zone"
.LASF192:
	.string	"buff_allocated"
.LASF230:
	.string	"last_page_number"
.LASF258:
	.string	"date_text"
.LASF62:
	.string	"st_mode"
.LASF18:
	.string	"__uid_t"
.LASF262:
	.string	"last_line"
.LASF101:
	.string	"_IO_read_end"
.LASF363:
	.string	"optarg_S"
.LASF198:
	.string	"FF_only"
.LASF55:
	.string	"getdate_err"
.LASF341:
	.string	"getoptarg"
.LASF113:
	.string	"_fileno"
.LASF267:
	.string	"esc_buff"
.LASF289:
	.string	"print_white_space"
.LASF122:
	.string	"_wide_data"
.LASF0:
	.string	"optarg"
.LASF311:
	.string	"total_lines"
.LASF359:
	.string	"n_digits"
.LASF89:
	.string	"_ISdigit"
.LASF43:
	.string	"tm_year"
.LASF9:
	.string	"short unsigned int"
.LASF133:
	.string	"stdout"
.LASF301:
	.string	"add_line_number"
.LASF243:
	.string	"use_cntrl_prefix"
.LASF271:
	.string	"char_to_clump"
.LASF194:
	.string	"end_vector"
.LASF104:
	.string	"_IO_write_ptr"
.LASF365:
	.string	"first_last_page"
.LASF53:
	.string	"daylight"
.LASF251:
	.string	"line_separator"
.LASF60:
	.string	"st_ino"
.LASF336:
	.string	"init_parameters"
.LASF343:
	.string	"character"
.LASF22:
	.string	"__nlink_t"
.LASF215:
	.string	"join_lines"
.LASF281:
	.string	"rhs_spaces"
.LASF265:
	.string	"short_options"
.LASF33:
	.string	"tv_sec"
.LASF290:
	.string	"h_new"
.LASF201:
	.string	"keep_FF"
.LASF153:
	.string	"custom_quoting_style"
.LASF306:
	.string	"first_line"
.LASF275:
	.string	"last"
.LASF70:
	.string	"st_atim"
.LASF287:
	.string	"clump"
.LASF260:
	.string	"header_width_available"
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
