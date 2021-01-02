	.file	"numfmt.c"
	.text
.Ltext0:
	.type	to_uchar, @function
to_uchar:
.LFB30:
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
.LFE30:
	.size	to_uchar, .-to_uchar
	.type	field_sep, @function
field_sep:
.LFB31:
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
	jne	.L4
	.loc 1 162 23 is_stmt 0 discriminator 2
	cmpb	$10, -4(%rbp)
	jne	.L5
.L4:
	.loc 1 162 23 discriminator 3
	movl	$1, %eax
	jmp	.L6
.L5:
	.loc 1 162 23 discriminator 4
	movl	$0, %eax
.L6:
	.loc 1 162 23 discriminator 6
	andl	$1, %eax
	.loc 1 163 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	field_sep, .-field_sep
	.section	.rodata
	.align 8
.LC0:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.text
	.type	emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
.LFB51:
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
.LFE51:
	.size	emit_mandatory_arg_note, .-emit_mandatory_arg_note
	.section	.rodata
.LC1:
	.string	"["
.LC2:
	.string	"test invocation"
.LC3:
	.string	"coreutils"
.LC4:
	.string	"Multi-call invocation"
.LC5:
	.string	"sha224sum"
.LC6:
	.string	"sha2 utilities"
.LC7:
	.string	"sha256sum"
.LC8:
	.string	"sha384sum"
.LC9:
	.string	"sha512sum"
.LC10:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC11:
	.string	"https://www.gnu.org/software/coreutils/"
.LC12:
	.string	"GNU coreutils"
.LC13:
	.string	"en_"
	.align 8
.LC14:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC15:
	.string	"Full documentation <%s%s>\n"
.LC16:
	.string	" invocation"
.LC17:
	.string	""
	.align 8
.LC18:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.type	emit_ancillary_info, @function
emit_ancillary_info:
.LFB55:
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
	leaq	.LC1(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC6(%rip), %rax
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
	jmp	.L10
.L12:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L10:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L11
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L12
.L11:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L13
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L13:
	.loc 1 655 11
	leaq	.LC10(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC11(%rip), %rdx
	leaq	.LC12(%rip), %rsi
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
	je	.L14
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L14
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L14:
	.loc 1 669 11
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L15
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L16
.L15:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L16:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC18(%rip), %rdi
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
	je	.L17
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L17:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.section	.rodata
.LC19:
	.string	"none"
.LC20:
	.string	"auto"
.LC21:
	.string	"si"
.LC22:
	.string	"iec"
.LC23:
	.string	"iec-i"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	scale_from_args, @object
	.size	scale_from_args, 48
scale_from_args:
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	0
	.section	.rodata
	.align 16
	.type	scale_from_types, @object
	.size	scale_from_types, 20
scale_from_types:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.section	.data.rel.ro.local
	.align 32
	.type	scale_to_args, @object
	.size	scale_to_args, 40
scale_to_args:
	.quad	.LC19
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	0
	.section	.rodata
	.align 16
	.type	scale_to_types, @object
	.size	scale_to_types, 16
scale_to_types:
	.long	0
	.long	2
	.long	3
	.long	4
.LC24:
	.string	"up"
.LC25:
	.string	"down"
.LC26:
	.string	"from-zero"
.LC27:
	.string	"towards-zero"
.LC28:
	.string	"nearest"
	.section	.data.rel.ro.local
	.align 32
	.type	round_args, @object
	.size	round_args, 48
round_args:
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	0
	.section	.rodata
	.align 16
	.type	round_types, @object
	.size	round_types, 20
round_types:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
.LC29:
	.string	"abort"
.LC30:
	.string	"fail"
.LC31:
	.string	"warn"
.LC32:
	.string	"ignore"
	.section	.data.rel.ro.local
	.align 32
	.type	inval_args, @object
	.size	inval_args, 40
inval_args:
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	0
	.section	.rodata
	.align 16
	.type	inval_types, @object
	.size	inval_types, 16
inval_types:
	.long	0
	.long	1
	.long	2
	.long	3
.LC33:
	.string	"from"
.LC34:
	.string	"from-unit"
.LC35:
	.string	"to"
.LC36:
	.string	"to-unit"
.LC37:
	.string	"round"
.LC38:
	.string	"padding"
.LC39:
	.string	"suffix"
.LC40:
	.string	"grouping"
.LC41:
	.string	"delimiter"
.LC42:
	.string	"field"
.LC43:
	.string	"debug"
.LC44:
	.string	"-debug"
.LC45:
	.string	"header"
.LC46:
	.string	"format"
.LC47:
	.string	"invalid"
.LC48:
	.string	"zero-terminated"
.LC49:
	.string	"help"
.LC50:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	longopts, @object
	.size	longopts, 608
longopts:
	.quad	.LC33
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC34
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC35
	.long	1
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC36
	.long	1
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC37
	.long	1
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	.LC38
	.long	1
	.zero	4
	.quad	0
	.long	135
	.zero	4
	.quad	.LC39
	.long	1
	.zero	4
	.quad	0
	.long	133
	.zero	4
	.quad	.LC40
	.long	0
	.zero	4
	.quad	0
	.long	134
	.zero	4
	.quad	.LC41
	.long	1
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC42
	.long	1
	.zero	4
	.quad	0
	.long	136
	.zero	4
	.quad	.LC43
	.long	0
	.zero	4
	.quad	0
	.long	137
	.zero	4
	.quad	.LC44
	.long	0
	.zero	4
	.quad	0
	.long	138
	.zero	4
	.quad	.LC45
	.long	2
	.zero	4
	.quad	0
	.long	139
	.zero	4
	.quad	.LC46
	.long	1
	.zero	4
	.quad	0
	.long	140
	.zero	4
	.quad	.LC47
	.long	1
	.zero	4
	.quad	0
	.long	141
	.zero	4
	.quad	.LC48
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC49
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC50
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
	.local	scale_from
	.comm	scale_from,4,4
	.local	scale_to
	.comm	scale_to,4,4
	.data
	.align 4
	.type	round_style, @object
	.size	round_style, 4
round_style:
	.long	2
	.local	inval_style
	.comm	inval_style,4,4
	.local	suffix
	.comm	suffix,8,8
	.align 8
	.type	from_unit_size, @object
	.size	from_unit_size, 8
from_unit_size:
	.quad	1
	.align 8
	.type	to_unit_size, @object
	.size	to_unit_size, 8
to_unit_size:
	.quad	1
	.local	grouping
	.comm	grouping,4,4
	.local	padding_buffer
	.comm	padding_buffer,8,8
	.local	padding_buffer_size
	.comm	padding_buffer_size,8,8
	.local	padding_width
	.comm	padding_width,8,8
	.local	zero_padding_width
	.comm	zero_padding_width,8,8
	.align 8
	.type	user_precision, @object
	.size	user_precision, 8
user_precision:
	.quad	-1
	.local	format_str
	.comm	format_str,8,8
	.local	format_str_prefix
	.comm	format_str_prefix,8,8
	.local	format_str_suffix
	.comm	format_str_suffix,8,8
	.align 4
	.type	conv_exit_code, @object
	.size	conv_exit_code, 4
conv_exit_code:
	.long	2
	.local	auto_padding
	.comm	auto_padding,4,4
	.align 4
	.type	padding_alignment, @object
	.size	padding_alignment, 4
padding_alignment:
	.long	1
	.align 4
	.type	delimiter, @object
	.size	delimiter, 4
delimiter:
	.long	128
	.type	line_delim, @object
	.size	line_delim, 1
line_delim:
	.byte	10
	.local	header
	.comm	header,8,8
	.local	debug
	.comm	debug,1,1
	.local	decimal_point
	.comm	decimal_point,8,8
	.local	decimal_point_length
	.comm	decimal_point_length,4,4
	.local	dev_debug
	.comm	dev_debug,1,1
	.text
	.type	default_scale_base, @function
default_scale_base:
.LFB61:
	.file 2 "src/numfmt.c"
	.loc 2 218 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	$3, %eax
	.loc 2 219 3
	cmpl	$1, %eax
	ja	.L19
	.loc 2 223 14
	movl	$1024, %eax
	jmp	.L20
.L19:
	.loc 2 229 14
	movl	$1000, %eax
.L20:
	.loc 2 231 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	default_scale_base, .-default_scale_base
	.type	valid_suffix, @function
valid_suffix:
.LFB62:
	.loc 2 235 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 237 11
	movsbl	-4(%rbp), %edx
	movq	valid_suffixes.7518(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 237 40
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	.loc 2 238 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	valid_suffix, .-valid_suffix
	.type	suffix_power, @function
suffix_power:
.LFB63:
	.loc 2 242 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 243 3
	movsbl	-4(%rbp), %eax
	subl	$69, %eax
	cmpl	$21, %eax
	ja	.L24
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L26(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L26(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L26:
	.long	.L33-.L26
	.long	.L24-.L26
	.long	.L32-.L26
	.long	.L24-.L26
	.long	.L24-.L26
	.long	.L24-.L26
	.long	.L31-.L26
	.long	.L24-.L26
	.long	.L30-.L26
	.long	.L24-.L26
	.long	.L24-.L26
	.long	.L29-.L26
	.long	.L24-.L26
	.long	.L24-.L26
	.long	.L24-.L26
	.long	.L28-.L26
	.long	.L24-.L26
	.long	.L24-.L26
	.long	.L24-.L26
	.long	.L24-.L26
	.long	.L27-.L26
	.long	.L25-.L26
	.text
.L31:
	.loc 2 246 14
	movl	$1, %eax
	jmp	.L34
.L30:
	.loc 2 249 14
	movl	$2, %eax
	jmp	.L34
.L32:
	.loc 2 252 14
	movl	$3, %eax
	jmp	.L34
.L28:
	.loc 2 255 14
	movl	$4, %eax
	jmp	.L34
.L29:
	.loc 2 258 14
	movl	$5, %eax
	jmp	.L34
.L33:
	.loc 2 261 14
	movl	$6, %eax
	jmp	.L34
.L25:
	.loc 2 264 14
	movl	$7, %eax
	jmp	.L34
.L27:
	.loc 2 267 14
	movl	$8, %eax
	jmp	.L34
.L24:
	.loc 2 270 14
	movl	$0, %eax
.L34:
	.loc 2 272 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	suffix_power, .-suffix_power
	.section	.rodata
.LC51:
	.string	"K"
.LC52:
	.string	"M"
.LC53:
	.string	"G"
.LC54:
	.string	"T"
.LC55:
	.string	"P"
.LC56:
	.string	"E"
.LC57:
	.string	"Z"
.LC58:
	.string	"Y"
.LC59:
	.string	"(error)"
	.text
	.type	suffix_power_char, @function
suffix_power_char:
.LFB64:
	.loc 2 276 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$8, -4(%rbp)
	ja	.L36
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L38(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L38(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L38:
	.long	.L46-.L38
	.long	.L45-.L38
	.long	.L44-.L38
	.long	.L43-.L38
	.long	.L42-.L38
	.long	.L41-.L38
	.long	.L40-.L38
	.long	.L39-.L38
	.long	.L37-.L38
	.text
.L46:
	.loc 2 280 14
	leaq	.LC17(%rip), %rax
	jmp	.L47
.L45:
	.loc 2 283 14
	leaq	.LC51(%rip), %rax
	jmp	.L47
.L44:
	.loc 2 286 14
	leaq	.LC52(%rip), %rax
	jmp	.L47
.L43:
	.loc 2 289 14
	leaq	.LC53(%rip), %rax
	jmp	.L47
.L42:
	.loc 2 292 14
	leaq	.LC54(%rip), %rax
	jmp	.L47
.L41:
	.loc 2 295 14
	leaq	.LC55(%rip), %rax
	jmp	.L47
.L40:
	.loc 2 298 14
	leaq	.LC56(%rip), %rax
	jmp	.L47
.L39:
	.loc 2 301 14
	leaq	.LC57(%rip), %rax
	jmp	.L47
.L37:
	.loc 2 304 14
	leaq	.LC58(%rip), %rax
	jmp	.L47
.L36:
	.loc 2 307 14
	leaq	.LC59(%rip), %rax
.L47:
	.loc 2 309 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	suffix_power_char, .-suffix_power_char
	.type	powerld, @function
powerld:
.LFB65:
	.loc 2 314 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 2 315 15
	fldt	16(%rbp)
	fstpt	-16(%rbp)
	.loc 2 316 6
	cmpl	$0, -20(%rbp)
	jne	.L51
	.loc 2 317 12
	fld1
	jmp	.L50
.L52:
	.loc 2 323 12
	fldt	-16(%rbp)
	fldt	16(%rbp)
	fmulp	%st, %st(1)
	fstpt	-16(%rbp)
.L51:
	.loc 2 322 9
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L52
	.loc 2 324 10
	fldt	-16(%rbp)
.L50:
	.loc 2 325 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	powerld, .-powerld
	.type	absld, @function
absld:
.LFB66:
	.loc 2 330 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 331 25
	fldt	16(%rbp)
	fldz
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L59
	.loc 2 331 25 is_stmt 0 discriminator 1
	fldt	16(%rbp)
	fchs
	jmp	.L57
.L59:
	.loc 2 331 25 discriminator 2
	fldt	16(%rbp)
.L57:
	.loc 2 332 1 is_stmt 1 discriminator 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	absld, .-absld
	.type	expld, @function
expld:
.LFB67:
	.loc 2 340 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 341 16
	movl	$0, -4(%rbp)
	.loc 2 343 6
	fldt	.LC63(%rip)
	fldt	16(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	.L61
	.loc 2 343 24 discriminator 1
	fldt	16(%rbp)
	fldt	.LC64(%rip)
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	.L61
	.loc 2 345 13
	jmp	.L64
.L65:
	.loc 2 347 11
	addl	$1, -4(%rbp)
	.loc 2 348 15
	movl	-20(%rbp), %eax
	movq	%rax, -40(%rbp)
	fildq	-40(%rbp)
	fldt	16(%rbp)
	fdivp	%st, %st(1)
	fstpt	16(%rbp)
.L64:
	.loc 2 345 14
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	absld
	addq	$16, %rsp
	.loc 2 345 26
	movl	-20(%rbp), %eax
	movq	%rax, -40(%rbp)
	fildq	-40(%rbp)
	fxch	%st(1)
	.loc 2 345 13
	fcomip	%st(1), %st
	fstp	%st(0)
	jnb	.L65
.L61:
	.loc 2 351 6
	cmpq	$0, -32(%rbp)
	je	.L66
	.loc 2 352 8
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
.L66:
	.loc 2 353 10
	fldt	16(%rbp)
	.loc 2 354 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	expld, .-expld
	.type	simple_round_ceiling, @function
simple_round_ceiling:
.LFB68:
	.loc 2 360 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 361 12
	fldt	16(%rbp)
	fnstcw	-18(%rbp)
	movzwl	-18(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -20(%rbp)
	fldcw	-20(%rbp)
	fistpq	-8(%rbp)
	fldcw	-18(%rbp)
	.loc 2 362 14
	fildq	-8(%rbp)
	.loc 2 362 6
	fldt	16(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L71
	.loc 2 363 11
	addq	$1, -8(%rbp)
.L71:
	.loc 2 364 10
	movq	-8(%rbp), %rax
	.loc 2 365 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	simple_round_ceiling, .-simple_round_ceiling
	.type	simple_round_floor, @function
simple_round_floor:
.LFB69:
	.loc 2 371 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 372 11
	fldt	16(%rbp)
	fchs
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	simple_round_ceiling
	addq	$16, %rsp
	.loc 2 372 10
	negq	%rax
	.loc 2 373 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	simple_round_floor, .-simple_round_floor
	.type	simple_round_from_zero, @function
simple_round_from_zero:
.LFB70:
	.loc 2 379 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 380 45
	fldt	16(%rbp)
	fldz
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L83
	.loc 2 380 20 discriminator 1
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	simple_round_floor
	addq	$16, %rsp
	.loc 2 380 45 discriminator 1
	jmp	.L81
.L83:
	.loc 2 380 47 discriminator 2
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	simple_round_ceiling
	addq	$16, %rsp
.L81:
	.loc 2 381 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	simple_round_from_zero, .-simple_round_from_zero
	.type	simple_round_to_zero, @function
simple_round_to_zero:
.LFB71:
	.loc 2 387 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 388 10
	fldt	16(%rbp)
	fnstcw	-2(%rbp)
	movzwl	-2(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -4(%rbp)
	fldcw	-4(%rbp)
	fistpq	-16(%rbp)
	fldcw	-2(%rbp)
	movq	-16(%rbp), %rax
	.loc 2 389 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	simple_round_to_zero, .-simple_round_to_zero
	.type	simple_round_nearest, @function
simple_round_nearest:
.LFB72:
	.loc 2 395 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 396 30
	fldt	16(%rbp)
	fldz
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L92
	.loc 2 396 24 discriminator 1
	fldt	16(%rbp)
	fldt	.LC65(%rip)
	fsubrp	%st, %st(1)
	.loc 2 396 30 discriminator 1
	fnstcw	-2(%rbp)
	movzwl	-2(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -4(%rbp)
	fldcw	-4(%rbp)
	fistpq	-16(%rbp)
	fldcw	-2(%rbp)
	jmp	.L90
.L92:
	.loc 2 396 36 discriminator 2
	fldt	16(%rbp)
	fldt	.LC65(%rip)
	faddp	%st, %st(1)
	.loc 2 396 30 discriminator 2
	fnstcw	-2(%rbp)
	movzwl	-2(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -4(%rbp)
	fldcw	-4(%rbp)
	fistpq	-16(%rbp)
	fldcw	-2(%rbp)
.L90:
	.loc 2 396 30 is_stmt 0 discriminator 5
	movq	-16(%rbp), %rax
	.loc 2 397 1 is_stmt 1 discriminator 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	simple_round_nearest, .-simple_round_nearest
	.type	simple_round, @function
simple_round:
.LFB73:
	.loc 2 401 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 2 403 29
	fldt	16(%rbp)
	fldt	.LC66(%rip)
	fdivrp	%st, %st(1)
	.loc 2 403 12
	fnstcw	-22(%rbp)
	movzwl	-22(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -24(%rbp)
	fldcw	-24(%rbp)
	fistpq	-8(%rbp)
	fldcw	-22(%rbp)
	.loc 2 404 35
	fildq	-8(%rbp)
	fldt	.LC66(%rip)
	fmulp	%st, %st(1)
	.loc 2 404 7
	fldt	16(%rbp)
	fsubp	%st, %st(1)
	fstpt	16(%rbp)
	cmpl	$4, -20(%rbp)
	ja	.L94
	movl	-20(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L96(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L96(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L96:
	.long	.L100-.L96
	.long	.L99-.L96
	.long	.L98-.L96
	.long	.L97-.L96
	.long	.L95-.L96
	.text
.L100:
	.loc 2 409 14
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	simple_round_ceiling
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	.loc 2 410 7
	jmp	.L101
.L99:
	.loc 2 413 14
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	simple_round_floor
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	.loc 2 414 7
	jmp	.L101
.L98:
	.loc 2 417 14
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	simple_round_from_zero
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	.loc 2 418 7
	jmp	.L101
.L97:
	.loc 2 421 14
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	simple_round_to_zero
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	.loc 2 422 7
	jmp	.L101
.L95:
	.loc 2 425 14
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	simple_round_nearest
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	.loc 2 426 7
	jmp	.L101
.L94:
	.loc 2 430 14
	fldz
	jmp	.L102
.L101:
	.loc 2 433 35
	fildq	-8(%rbp)
	fldt	.LC66(%rip)
	fmulp	%st, %st(1)
	.loc 2 433 48
	fildq	-16(%rbp)
	faddp	%st, %st(1)
.L102:
	.loc 2 434 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	simple_round, .-simple_round
	.type	simple_strtod_int, @function
simple_strtod_int:
.LFB74:
	.loc 2 468 1
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
	.loc 2 469 28
	movl	$0, -28(%rbp)
	.loc 2 471 15
	fldz
	fstpt	-16(%rbp)
	.loc 2 472 16
	movl	$0, -24(%rbp)
	.loc 2 473 8
	movb	$0, -29(%rbp)
	.loc 2 475 7
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 475 6
	cmpb	$45, %al
	jne	.L104
	.loc 2 477 16
	addq	$1, -40(%rbp)
	.loc 2 478 17
	movq	-64(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L105
.L104:
	.loc 2 481 15
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
.L105:
	.loc 2 483 11
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 484 9
	jmp	.L106
.L113:
.LBB2:
	.loc 2 486 21
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 486 20
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 486 11
	subl	$48, %eax
	movl	%eax, -20(%rbp)
	.loc 2 488 19
	movb	$1, -29(%rbp)
	.loc 2 490 10
	fldt	-16(%rbp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L107
	fldt	-16(%rbp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L107
	.loc 2 490 15 discriminator 1
	cmpl	$0, -20(%rbp)
	je	.L108
.L107:
	.loc 2 491 15
	addl	$1, -24(%rbp)
.L108:
	.loc 2 493 10
	cmpl	$18, -24(%rbp)
	jbe	.L109
	.loc 2 494 11
	movl	$1, -28(%rbp)
.L109:
	.loc 2 496 10
	cmpl	$27, -24(%rbp)
	jbe	.L110
	.loc 2 497 16
	movl	$2, %eax
	jmp	.L111
.L110:
	.loc 2 499 11
	fldt	-16(%rbp)
	fldt	.LC67(%rip)
	fmulp	%st, %st(1)
	fstpt	-16(%rbp)
	.loc 2 500 11
	fildl	-20(%rbp)
	fldt	-16(%rbp)
	faddp	%st, %st(1)
	fstpt	-16(%rbp)
	.loc 2 502 10
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 502 7
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L106:
.LBE2:
	.loc 2 484 10
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 484 9
	testq	%rax, %rax
	je	.L112
	.loc 2 484 33 discriminator 1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 484 32 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 484 21 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	c_isdigit@PLT
	.loc 2 484 18 discriminator 1
	testb	%al, %al
	jne	.L113
.L112:
	.loc 2 504 7
	movzbl	-29(%rbp), %eax
	xorl	$1, %eax
	.loc 2 504 6
	testb	%al, %al
	je	.L114
	.loc 2 505 12
	movl	decimal_point_length(%rip), %eax
	movslq	%eax, %rdx
	movq	decimal_point(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 2 505 7
	testl	%eax, %eax
	je	.L114
	.loc 2 506 12
	movl	$3, %eax
	jmp	.L111
.L114:
	.loc 2 507 7
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 507 6
	testb	%al, %al
	je	.L115
	.loc 2 508 9
	fldt	-16(%rbp)
	fchs
	fstpt	-16(%rbp)
.L115:
	.loc 2 510 6
	cmpq	$0, -56(%rbp)
	je	.L116
	.loc 2 511 12
	movq	-56(%rbp), %rax
	fldt	-16(%rbp)
	fstpt	(%rax)
.L116:
	.loc 2 513 10
	movl	-28(%rbp), %eax
.L111:
	.loc 2 514 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	simple_strtod_int, .-simple_strtod_int
	.type	simple_strtod_float, @function
simple_strtod_float:
.LFB75:
	.loc 2 535 1
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
	.loc 2 535 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 537 28
	movl	$0, -56(%rbp)
	.loc 2 539 6
	cmpq	$0, -96(%rbp)
	je	.L118
	.loc 2 540 16
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
.L118:
	.loc 2 543 7
	leaq	-58(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	simple_strtod_int
	movl	%eax, -56(%rbp)
	.loc 2 544 6
	cmpl	$0, -56(%rbp)
	je	.L119
	.loc 2 544 19 discriminator 1
	cmpl	$1, -56(%rbp)
	je	.L119
	.loc 2 545 12
	movl	-56(%rbp), %eax
	jmp	.L129
.L119:
	.loc 2 548 7
	movl	decimal_point_length(%rip), %eax
	movslq	%eax, %rdx
	movq	decimal_point(%rip), %rcx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 2 548 6
	testl	%eax, %eax
	jne	.L121
.LBB3:
	.loc 2 551 19
	fldz
	fstpt	-32(%rbp)
	.loc 2 554 17
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movl	decimal_point_length(%rip), %eax
	cltq
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 556 9
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	-57(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	simple_strtod_int
	movl	%eax, -52(%rbp)
	.loc 2 557 10
	cmpl	$0, -52(%rbp)
	je	.L122
	.loc 2 557 24 discriminator 1
	cmpl	$1, -52(%rbp)
	je	.L122
	.loc 2 558 16
	movl	-52(%rbp), %eax
	jmp	.L129
.L122:
	.loc 2 559 10
	cmpl	$1, -52(%rbp)
	jne	.L124
	.loc 2 560 11
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
.L124:
	.loc 2 561 11
	movzbl	-57(%rbp), %eax
	.loc 2 561 10
	testb	%al, %al
	je	.L125
	.loc 2 562 16
	movl	$3, %eax
	jmp	.L129
.L125:
	.loc 2 565 30
	movq	-48(%rbp), %rdx
	.loc 2 565 32
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 565 30
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 565 14
	movq	%rax, -40(%rbp)
	.loc 2 567 43
	fldt	-32(%rbp)
	fstpt	-112(%rbp)
	.loc 2 567 45
	movq	-40(%rbp), %rax
	fldt	.LC67(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	movl	%eax, %edi
	call	powerld
	addq	$16, %rsp
	.loc 2 567 43
	fldt	-112(%rbp)
	fdivp	%st, %st(1)
	.loc 2 567 16
	fstpt	-32(%rbp)
	.loc 2 571 10
	cmpq	$0, -88(%rbp)
	je	.L126
	.loc 2 573 15
	movzbl	-58(%rbp), %eax
	.loc 2 573 14
	testb	%al, %al
	je	.L127
	.loc 2 574 20
	movq	-88(%rbp), %rax
	fldt	(%rax)
	fldt	-32(%rbp)
	fsubrp	%st, %st(1)
	movq	-88(%rbp), %rax
	fstpt	(%rax)
	jmp	.L126
.L127:
	.loc 2 576 20
	movq	-88(%rbp), %rax
	fldt	(%rax)
	fldt	-32(%rbp)
	faddp	%st, %st(1)
	movq	-88(%rbp), %rax
	fstpt	(%rax)
.L126:
	.loc 2 579 10
	cmpq	$0, -96(%rbp)
	je	.L128
	.loc 2 580 20
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
.L128:
	.loc 2 582 15
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
.L121:
.LBE3:
	.loc 2 584 10
	movl	-56(%rbp), %eax
.L129:
	.loc 2 585 1 discriminator 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L130
	.loc 2 585 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	simple_strtod_float, .-simple_strtod_float
	.section	.rodata
	.align 8
.LC68:
	.string	"simple_strtod_human:\n  input string: %s\n  locale decimal-point: %s\n  MAX_UNSCALED_DIGITS: %d\n"
	.align 8
.LC69:
	.string	"  parsed numeric value: %Lf\n  input precision = %d\n"
	.align 8
.LC70:
	.string	"  Auto-scaling, found 'i', switching to base %d\n"
.LC71:
	.string	"  suffix power=%d^%d = %Lf\n"
.LC72:
	.string	"  returning value: %Lf (%LG)\n"
	.text
	.type	simple_strtod_human, @function
simple_strtod_human:
.LFB76:
	.loc 2 610 1 is_stmt 1
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
	movl	%r8d, -84(%rbp)
	.loc 2 611 7
	movl	$0, -44(%rbp)
	.loc 2 613 20
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	default_scale_base
	movl	%eax, -40(%rbp)
	.loc 2 615 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L132
	.loc 2 615 3 is_stmt 0 discriminator 1
	movq	decimal_point(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	$18, %r8d
	movq	%rbx, %rcx
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L132:
	.loc 2 623 5 is_stmt 1
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	simple_strtod_float
	movl	%eax, -36(%rbp)
	.loc 2 624 6
	cmpl	$0, -36(%rbp)
	je	.L133
	.loc 2 624 19 discriminator 1
	cmpl	$1, -36(%rbp)
	je	.L133
	.loc 2 625 12
	movl	-36(%rbp), %eax
	jmp	.L134
.L133:
	.loc 2 627 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L135
	.loc 2 627 3 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	fldt	(%rax)
	movq	stderr(%rip), %rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L135:
	.loc 2 630 8 is_stmt 1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 630 7
	movzbl	(%rax), %eax
	.loc 2 630 6
	testb	%al, %al
	je	.L136
	.loc 2 635 13
	jmp	.L137
.L138:
	.loc 2 636 10
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 636 18
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L137:
	.loc 2 635 14
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
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
	.loc 2 635 13
	testl	%eax, %eax
	jne	.L138
	.loc 2 638 27
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 638 26
	movzbl	(%rax), %eax
	.loc 2 638 12
	movsbl	%al, %eax
	movl	%eax, %edi
	call	valid_suffix
	.loc 2 638 10
	testl	%eax, %eax
	jne	.L139
	.loc 2 639 16
	movl	$5, %eax
	jmp	.L134
.L139:
	.loc 2 641 10
	cmpl	$0, -84(%rbp)
	jne	.L140
	.loc 2 642 16
	movl	$4, %eax
	jmp	.L134
.L140:
	.loc 2 644 30
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 644 29
	movzbl	(%rax), %eax
	.loc 2 644 15
	movsbl	%al, %eax
	movl	%eax, %edi
	call	suffix_power
	movl	%eax, -44(%rbp)
	.loc 2 645 8
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 645 16
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 647 10
	cmpl	$1, -84(%rbp)
	jne	.L141
	.loc 2 647 45 discriminator 1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 647 44 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 647 41 discriminator 1
	cmpb	$105, %al
	jne	.L141
	.loc 2 651 22
	movl	$1024, -40(%rbp)
	.loc 2 652 12
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 652 20
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 653 11
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L141
	.loc 2 653 11 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movl	-40(%rbp), %edx
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L141:
	.loc 2 657 18 is_stmt 1
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
.L136:
	.loc 2 660 6
	cmpl	$4, -84(%rbp)
	jne	.L142
	.loc 2 662 12
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 662 11
	movzbl	(%rax), %eax
	.loc 2 662 10
	cmpb	$105, %al
	jne	.L143
	.loc 2 663 10
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 663 18
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L142
.L143:
	.loc 2 665 16
	movl	$6, %eax
	jmp	.L134
.L142:
	.loc 2 668 28
	movl	-44(%rbp), %eax
	fildl	-40(%rbp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	movl	%eax, %edi
	call	powerld
	addq	$16, %rsp
	fstpt	-32(%rbp)
	.loc 2 670 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L144
	.loc 2 670 3 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %ecx
	movl	-40(%rbp), %edx
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L144:
	.loc 2 673 15 is_stmt 1
	movq	-72(%rbp), %rax
	fldt	(%rax)
	.loc 2 673 23
	fldt	-32(%rbp)
	fmulp	%st, %st(1)
	.loc 2 673 12
	movq	-72(%rbp), %rax
	fstpt	(%rax)
	.loc 2 675 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L145
	.loc 2 675 3 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax
	fldt	(%rax)
	movq	-72(%rbp), %rax
	fldt	(%rax)
	fxch	%st(1)
	movq	stderr(%rip), %rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$32, %rsp
.L145:
	.loc 2 677 10 is_stmt 1
	movl	-36(%rbp), %eax
.L134:
	.loc 2 678 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	simple_strtod_human, .-simple_strtod_human
	.section	.rodata
	.align 8
.LC73:
	.string	"value too large to be converted: %s"
.LC74:
	.string	"invalid number: %s"
	.align 8
.LC75:
	.string	"rejecting suffix in input: %s (consider using --from)"
.LC76:
	.string	"invalid suffix in input: %s"
	.align 8
.LC77:
	.string	"missing 'i' suffix in input: %s (e.g Ki/Mi/Gi)"
	.text
	.type	simple_strtod_fatal, @function
simple_strtod_fatal:
.LFB77:
	.loc 2 683 1
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
	movq	%rsi, -48(%rbp)
	.loc 2 684 15
	movq	$0, -24(%rbp)
	cmpl	$6, -36(%rbp)
	ja	.L147
	movl	-36(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L149(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L149(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L149:
	.long	.L154-.L149
	.long	.L154-.L149
	.long	.L153-.L149
	.long	.L152-.L149
	.long	.L151-.L149
	.long	.L150-.L149
	.long	.L148-.L149
	.text
.L154:
	.loc 2 691 7
	call	abort@PLT
.L153:
	.loc 2 694 13
	leaq	.LC73(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 695 7
	jmp	.L147
.L152:
	.loc 2 698 13
	leaq	.LC74(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 699 7
	jmp	.L147
.L151:
	.loc 2 702 13
	leaq	.LC75(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 703 7
	jmp	.L147
.L150:
	.loc 2 706 13
	leaq	.LC76(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 707 7
	jmp	.L147
.L148:
	.loc 2 710 13
	leaq	.LC77(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 711 7
	nop
.L147:
	.loc 2 715 19
	movl	inval_style(%rip), %eax
	.loc 2 715 6
	cmpl	$3, %eax
	je	.L156
	.loc 2 716 5
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 716 31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 716 5
	movl	conv_exit_code(%rip), %eax
	movq	%rbx, %rcx
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
.L156:
	.loc 2 717 1
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	simple_strtod_fatal, .-simple_strtod_fatal
	.section	.rodata
.LC78:
	.string	"0%ld"
.LC79:
	.string	"double_to_human:\n"
	.align 8
.LC80:
	.string	"  no scaling, returning (grouped) value: %'.*Lf\n"
	.align 8
.LC81:
	.string	"  no scaling, returning value: %.*Lf\n"
	.align 8
.LC82:
	.string	"failed to prepare value '%Lf' for printing"
	.align 8
.LC83:
	.string	"  scaled value to %Lf * %0.f ^ %u\n"
	.align 8
.LC84:
	.string	"  after rounding, value=%Lf * %0.f ^ %u\n"
.LC85:
	.string	"i"
.LC86:
	.string	"  returning value: %s\n"
	.text
	.type	double_to_human, @function
double_to_human:
.LFB78:
	.loc 2 724 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movl	%ecx, -136(%rbp)
	movl	%r8d, -156(%rbp)
	movl	%r9d, -160(%rbp)
	.loc 2 724 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 731 9
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 2 732 8
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	.loc 2 732 11
	movb	$37, (%rax)
	.loc 2 734 6
	cmpl	$0, -156(%rbp)
	je	.L158
	.loc 2 735 10
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	.loc 2 735 13
	movb	$39, (%rax)
.L158:
	.loc 2 737 7
	movq	zero_padding_width(%rip), %rax
	.loc 2 737 6
	testq	%rax, %rax
	je	.L159
	.loc 2 738 13
	movq	zero_padding_width(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC78(%rip), %rdx
	movl	$62, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	cltq
	.loc 2 738 10
	addq	%rax, -96(%rbp)
.L159:
	.loc 2 740 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L160
	.loc 2 740 3 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	movl	$1, %esi
	leaq	.LC79(%rip), %rdi
	call	fwrite@PLT
.L160:
	.loc 2 742 6 is_stmt 1
	cmpl	$0, -136(%rbp)
	jne	.L161
	.loc 2 744 14
	movl	-132(%rbp), %eax
	fldt	.LC67(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	movl	%eax, %edi
	call	powerld
	addq	$16, %rsp
	.loc 2 744 11
	fldt	16(%rbp)
	fmulp	%st, %st(1)
	fstpt	16(%rbp)
	.loc 2 745 13
	movl	-160(%rbp), %eax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	%eax, %edi
	call	simple_round
	addq	$16, %rsp
	fstpt	16(%rbp)
	.loc 2 746 14
	movl	-132(%rbp), %eax
	fldt	.LC67(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	movl	%eax, %edi
	call	powerld
	addq	$16, %rsp
	.loc 2 746 11
	fldt	16(%rbp)
	fdivp	%st, %st(1)
	fstpt	16(%rbp)
	.loc 2 748 7
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L162
	.loc 2 748 7 is_stmt 0 discriminator 1
	cmpl	$0, -156(%rbp)
	je	.L163
	.loc 2 748 7 discriminator 2
	leaq	.LC80(%rip), %rax
	jmp	.L164
.L163:
	.loc 2 748 7 discriminator 3
	leaq	.LC81(%rip), %rax
.L164:
	.loc 2 748 7 discriminator 5
	movq	stderr(%rip), %rcx
	movl	-132(%rbp), %edx
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L162:
	.loc 2 752 7 is_stmt 1
	movq	-96(%rbp), %rax
	movl	$1716267566, (%rax)
	movb	$0, 4(%rax)
	.loc 2 754 18
	movl	-132(%rbp), %ecx
	leaq	-80(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-144(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	addq	$16, %rsp
	movl	%eax, -100(%rbp)
	.loc 2 755 10
	cmpl	$0, -100(%rbp)
	js	.L165
	.loc 2 755 39 discriminator 1
	movq	-152(%rbp), %rax
	.loc 2 755 24 discriminator 1
	cmpl	%eax, -100(%rbp)
	jl	.L191
.L165:
.LBB4:
	.loc 2 756 9
	leaq	.LC82(%rip), %rdi
	call	gettext@PLT
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$16, %rsp
.L161:
.LBE4:
	.loc 2 762 23
	movl	-136(%rbp), %eax
	movl	%eax, %edi
	call	default_scale_base
	.loc 2 762 10
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -88(%rbp)
	.loc 2 765 16
	movl	$0, -116(%rbp)
	.loc 2 766 9
	movsd	-88(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, %edx
	leaq	-116(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rsi
	movl	%edx, %edi
	call	expld
	addq	$16, %rsp
	fstpt	16(%rbp)
	.loc 2 767 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L168
	.loc 2 767 3 is_stmt 0 discriminator 1
	movl	-116(%rbp), %edx
	movq	stderr(%rip), %rax
	movq	-88(%rbp), %rcx
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rcx, %xmm0
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L168:
	.loc 2 770 16 is_stmt 1
	movl	$0, -112(%rbp)
	.loc 2 771 22
	movq	user_precision(%rip), %rax
	.loc 2 771 6
	cmpq	$-1, %rax
	je	.L169
	.loc 2 772 20
	movl	-116(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	user_precision(%rip), %rax
	cmpq	%rax, %rdx
	cmovle	%rdx, %rax
	.loc 2 772 18
	movl	%eax, -112(%rbp)
	jmp	.L170
.L169:
	.loc 2 773 12
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	absld
	addq	$16, %rsp
	.loc 2 773 11
	fldt	.LC67(%rip)
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L170
	.loc 2 777 20
	movl	$1, -112(%rbp)
.L170:
	.loc 2 780 10
	movl	-112(%rbp), %eax
	fldt	.LC67(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	movl	%eax, %edi
	call	powerld
	addq	$16, %rsp
	.loc 2 780 7
	fldt	16(%rbp)
	fmulp	%st, %st(1)
	fstpt	16(%rbp)
	.loc 2 781 9
	movl	-160(%rbp), %eax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	%eax, %edi
	call	simple_round
	addq	$16, %rsp
	fstpt	16(%rbp)
	.loc 2 782 10
	movl	-112(%rbp), %eax
	fldt	.LC67(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	movl	%eax, %edi
	call	powerld
	addq	$16, %rsp
	.loc 2 782 7
	fldt	16(%rbp)
	fdivp	%st, %st(1)
	fstpt	16(%rbp)
	.loc 2 787 7
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	absld
	addq	$16, %rsp
	.loc 2 787 19
	fldl	-88(%rbp)
	fxch	%st(1)
	.loc 2 787 6
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	.L172
	.loc 2 789 11
	fldl	-88(%rbp)
	fldt	16(%rbp)
	fdivp	%st, %st(1)
	fstpt	16(%rbp)
	.loc 2 790 12
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
.L172:
	.loc 2 795 61
	fldt	16(%rbp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	.L189
	fldt	16(%rbp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L174
.L189:
	.loc 2 795 43 discriminator 1
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	absld
	addq	$16, %rsp
	.loc 2 795 39 discriminator 1
	fldt	.LC67(%rip)
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L174
	.loc 2 795 71 discriminator 3
	movl	-116(%rbp), %eax
	.loc 2 795 61 discriminator 3
	testl	%eax, %eax
	je	.L174
	.loc 2 795 61 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L177
.L174:
	.loc 2 795 61 discriminator 6
	movl	$0, %eax
.L177:
	.loc 2 795 7 is_stmt 1 discriminator 8
	movl	%eax, -108(%rbp)
	.loc 2 798 3 discriminator 8
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L178
	.loc 2 798 3 is_stmt 0 discriminator 1
	movl	-116(%rbp), %edx
	movq	stderr(%rip), %rax
	movq	-88(%rbp), %rcx
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rcx, %xmm0
	leaq	.LC84(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L178:
	.loc 2 800 3 is_stmt 1
	movq	-96(%rbp), %rax
	movl	$1716267566, (%rax)
	movw	$29477, 4(%rax)
	movb	$0, 6(%rax)
	.loc 2 802 29
	movq	user_precision(%rip), %rax
	.loc 2 802 7
	cmpq	$-1, %rax
	je	.L179
	.loc 2 802 7 is_stmt 0 discriminator 1
	movq	user_precision(%rip), %rax
	jmp	.L180
.L179:
	.loc 2 802 7 discriminator 2
	movl	-108(%rbp), %eax
.L180:
	.loc 2 802 7 discriminator 4
	movl	%eax, -104(%rbp)
	.loc 2 805 14 is_stmt 1 discriminator 4
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	suffix_power_char
	movq	%rax, %rdi
	movq	-152(%rbp), %rax
	leaq	-1(%rax), %rsi
	movl	-104(%rbp), %ecx
	leaq	-80(%rbp), %rdx
	movq	-144(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	addq	$16, %rsp
	movl	%eax, -100(%rbp)
	.loc 2 807 6 discriminator 4
	cmpl	$0, -100(%rbp)
	js	.L181
	.loc 2 807 35 discriminator 1
	movq	-152(%rbp), %rax
	.loc 2 807 50 discriminator 1
	subl	$1, %eax
	.loc 2 807 20 discriminator 1
	cmpl	%eax, -100(%rbp)
	jl	.L182
.L181:
.LBB5:
	.loc 2 808 5
	leaq	.LC82(%rip), %rdi
	call	gettext@PLT
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$16, %rsp
.L182:
.LBE5:
	.loc 2 811 6
	cmpl	$4, -136(%rbp)
	jne	.L183
	.loc 2 811 37 discriminator 1
	movl	-116(%rbp), %eax
	.loc 2 811 28 discriminator 1
	testl	%eax, %eax
	je	.L183
	.loc 2 812 33
	movl	-100(%rbp), %eax
	cltq
	movq	-152(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 812 5
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	leaq	.LC85(%rip), %rsi
	movq	%rax, %rdi
	call	strncat@PLT
.L183:
	.loc 2 814 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L192
	.loc 2 814 3 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC86(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 816 3 is_stmt 1 discriminator 1
	jmp	.L192
.L191:
	.loc 2 758 7
	nop
	jmp	.L157
.L192:
	.loc 2 816 3
	nop
.L157:
	.loc 2 817 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L186
	call	__stack_chk_fail@PLT
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	double_to_human, .-double_to_human
	.section	.rodata
.LC87:
	.string	"KMGTPEZY"
.LC88:
	.string	"KMGTPEZY0"
.LC89:
	.string	"invalid unit size: %s"
	.text
	.type	unit_to_umax, @function
unit_to_umax:
.LFB79:
	.loc 2 825 1
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
	movq	%rdi, -88(%rbp)
	.loc 2 825 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 827 15
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 2 828 9
	movq	$0, -48(%rbp)
	.loc 2 829 18
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	.loc 2 830 9
	movq	$0, -72(%rbp)
	.loc 2 832 15
	leaq	.LC87(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 835 6
	cmpq	$0, -32(%rbp)
	je	.L194
	.loc 2 835 37 discriminator 1
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 835 18 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	c_isdigit@PLT
	.loc 2 835 16 discriminator 1
	xorl	$1, %eax
	.loc 2 835 13 discriminator 1
	testb	%al, %al
	je	.L194
	.loc 2 837 18
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -48(%rbp)
	.loc 2 838 30
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 838 11
	movq	%rax, -72(%rbp)
	.loc 2 839 7
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 841 11
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 841 10
	cmpb	$105, %al
	jne	.L195
	.loc 2 841 23 discriminator 1
	cmpq	$1, -32(%rbp)
	jbe	.L195
	.loc 2 841 59 discriminator 2
	movq	-72(%rbp), %rax
	subq	$1, %rax
	.loc 2 841 53 discriminator 2
	movzbl	(%rax), %eax
	.loc 2 841 42 discriminator 2
	movsbl	%al, %eax
	movl	%eax, %edi
	call	c_isdigit@PLT
	.loc 2 841 40 discriminator 2
	xorl	$1, %eax
	.loc 2 841 37 discriminator 2
	testb	%al, %al
	je	.L195
	.loc 2 842 9
	movq	-72(%rbp), %rax
	.loc 2 842 14
	movb	$0, (%rax)
	jmp	.L196
.L195:
	.loc 2 845 12
	movq	-72(%rbp), %rax
	addq	$1, %rax
	.loc 2 845 18
	movq	%rax, -72(%rbp)
	.loc 2 845 12
	movq	-72(%rbp), %rax
	.loc 2 845 18
	movb	$66, (%rax)
	.loc 2 846 12
	movq	-72(%rbp), %rax
	addq	$1, %rax
	.loc 2 846 18
	movq	%rax, -72(%rbp)
	.loc 2 846 12
	movq	-72(%rbp), %rax
	.loc 2 846 18
	movb	$0, (%rax)
	.loc 2 847 20
	leaq	.LC88(%rip), %rax
	movq	%rax, -40(%rbp)
.L196:
	.loc 2 850 16
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.L194:
	.loc 2 853 11
	movq	-40(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -76(%rbp)
	.loc 2 855 6
	cmpl	$0, -76(%rbp)
	jne	.L197
	.loc 2 855 30 discriminator 1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 855 27 discriminator 1
	testb	%al, %al
	jne	.L197
	.loc 2 855 40 discriminator 2
	movq	-64(%rbp), %rax
	.loc 2 855 35 discriminator 2
	testq	%rax, %rax
	jne	.L198
.L197:
.LBB6:
	.loc 2 857 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 858 7
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC89(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L198:
.LBE6:
	.loc 2 861 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 863 10
	movq	-64(%rbp), %rax
	.loc 2 864 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L200
	call	__stack_chk_fail@PLT
.L200:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	unit_to_umax, .-unit_to_umax
	.type	setup_padding_buffer, @function
setup_padding_buffer:
.LFB80:
	.loc 2 869 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 870 27
	movq	padding_buffer_size(%rip), %rax
	.loc 2 870 6
	cmpq	%rax, -8(%rbp)
	jb	.L204
	.loc 2 873 34
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 873 23
	movq	%rax, padding_buffer_size(%rip)
	.loc 2 874 20
	movq	padding_buffer_size(%rip), %rdx
	movq	padding_buffer(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	.loc 2 874 18
	movq	%rax, padding_buffer(%rip)
	jmp	.L201
.L204:
	.loc 2 871 5
	nop
.L201:
	.loc 2 875 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	setup_padding_buffer, .-setup_padding_buffer
	.section	.rodata
	.align 8
.LC90:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC91:
	.string	"Usage: %s [OPTION]... [NUMBER]...\n"
	.align 8
.LC92:
	.string	"Reformat NUMBER(s), or the numbers from standard input if none are specified.\n"
	.align 8
.LC93:
	.string	"      --debug          print warnings about invalid input\n"
	.align 8
.LC94:
	.string	"  -d, --delimiter=X    use X instead of whitespace for field delimiter\n"
	.align 8
.LC95:
	.string	"      --field=FIELDS   replace the numbers in these input fields (default=1);\n                         see FIELDS below\n"
	.align 8
.LC96:
	.string	"      --format=FORMAT  use printf style floating-point FORMAT;\n                         see FORMAT below for details\n"
	.align 8
.LC97:
	.string	"      --from=UNIT      auto-scale input numbers to UNITs; default is 'none';\n                         see UNIT below\n"
	.align 8
.LC98:
	.string	"      --from-unit=N    specify the input unit size (instead of the default 1)\n"
	.align 8
.LC99:
	.string	"      --grouping       use locale-defined grouping of digits, e.g. 1,000,000\n                         (which means it has no effect in the C/POSIX locale)\n"
	.align 8
.LC100:
	.string	"      --header[=N]     print (without converting) the first N header lines;\n                         N defaults to 1 if not specified\n"
	.align 8
.LC101:
	.string	"      --invalid=MODE   failure mode for invalid numbers: MODE can be:\n                         abort (default), fail, warn, ignore\n"
	.align 8
.LC102:
	.ascii	"      --padding=N      pad the output to N characters; posit"
	.ascii	"ive N w"
	.string	"ill\n                         right-align; negative N will left-align;\n                         padding is ignored if the output is wider than N;\n                         the default is to automatically pad if a whitespace\n                         is found\n"
	.align 8
.LC103:
	.string	"      --round=METHOD   use METHOD for rounding when scaling; METHOD can be:\n                         up, down, from-zero (default), towards-zero, nearest\n"
	.align 8
.LC104:
	.string	"      --suffix=SUFFIX  add SUFFIX to output numbers, and accept optional\n                         SUFFIX in input numbers\n"
	.align 8
.LC105:
	.string	"      --to=UNIT        auto-scale output numbers to UNITs; see UNIT below\n"
	.align 8
.LC106:
	.string	"      --to-unit=N      the output unit size (instead of the default 1)\n"
	.align 8
.LC107:
	.string	"  -z, --zero-terminated    line delimiter is NUL, not newline\n"
	.align 8
.LC108:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC109:
	.string	"      --version  output version information and exit\n"
.LC110:
	.string	"\nUNIT options:\n"
	.align 8
.LC111:
	.string	"  none       no auto-scaling is done; suffixes will trigger an error\n"
	.align 8
.LC112:
	.string	"  auto       accept optional single/two letter suffix:\n               1K = 1000,\n               1Ki = 1024,\n               1M = 1000000,\n               1Mi = 1048576,\n"
	.align 8
.LC113:
	.string	"  si         accept optional single letter suffix:\n               1K = 1000,\n               1M = 1000000,\n               ...\n"
	.align 8
.LC114:
	.string	"  iec        accept optional single letter suffix:\n               1K = 1024,\n               1M = 1048576,\n               ...\n"
	.align 8
.LC115:
	.string	"  iec-i      accept optional two-letter suffix:\n               1Ki = 1024,\n               1Mi = 1048576,\n               ...\n"
	.align 8
.LC116:
	.ascii	"\nFIELDS supports c"
	.string	"ut(1) style field ranges:\n  N    N'th field, counted from 1\n  N-   from N'th field, to end of line\n  N-M  from N'th to M'th field (inclusive)\n  -M   from first to M'th field (inclusive)\n  -    all fields\nMultiple fields/ranges can be separated with commas\n"
	.align 8
.LC117:
	.ascii	"\nFORMAT must be suitable for printing one floating-point ar"
	.ascii	"gument '%f'.\nOptional quote (%'f) will enable --grouping"
	.string	" (if supported by current locale).\nOptional width value (%10f) will pad output. Optional zero (%010f) width\nwill zero pad the number. Optional negative values (%-10f) will left align.\nOptional precision (%.1f) will override the input determined precision.\n"
	.align 8
.LC118:
	.ascii	"\nExit status is 0 if all input numbers were successfully co"
	.ascii	"nverted.\nBy default, %s will stop at the first conversion e"
	.ascii	"rror with exit status 2.\nWith --inva"
	.string	"lid='fail' a warning is printed for each conversion error\nand the exit status is 2.  With --invalid='warn' each conversion error is\ndiagnosed, but the exit status is 0.  With --invalid='ignore' conversion\nerrors are not diagnosed and the exit status is 0.\n"
	.align 8
.LC119:
	.ascii	"\nExamples:\n  $ %s --to=si 1000\n            -> \"1.0K\"\n "
	.ascii	" $ %s --to=iec 2048\n           -> \"2.0K\"\n  $ %s --to=iec"
	.ascii	"-i 4096\n           -> \"4.0Ki\"\n  $ echo 1K | %s --from=si"
	.ascii	"\n           -> \"1000\"\n  "
	.string	"$ echo 1K | %s --from=iec\n           -> \"1024\"\n  $ df -B1 | %s --header --field 2-4 --to=si\n  $ ls -l  | %s --header --field 5 --to=iec\n  $ ls -lh | %s --header --field 5 --from=iec --padding=10\n  $ ls -lh | %s --header --field 5 --from=iec --format %%10f\n"
.LC120:
	.string	"numfmt"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB81:
	.loc 2 879 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -52(%rbp)
	.loc 2 880 6
	cmpl	$0, -52(%rbp)
	je	.L206
	.loc 2 881 5
	movq	program_name(%rip), %rbx
	leaq	.LC90(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L207
.L206:
	.loc 2 884 7
	movq	program_name(%rip), %rbx
	.loc 2 884 15
	leaq	.LC91(%rip), %rdi
	call	gettext@PLT
	.loc 2 884 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 887 7
	movq	stdout(%rip), %rbx
	leaq	.LC92(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 890 7
	call	emit_mandatory_arg_note
	.loc 2 891 7
	movq	stdout(%rip), %rbx
	leaq	.LC93(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 894 7
	movq	stdout(%rip), %rbx
	leaq	.LC94(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 897 7
	movq	stdout(%rip), %rbx
	leaq	.LC95(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 901 7
	movq	stdout(%rip), %rbx
	leaq	.LC96(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 905 7
	movq	stdout(%rip), %rbx
	leaq	.LC97(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 909 7
	movq	stdout(%rip), %rbx
	leaq	.LC98(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 912 7
	movq	stdout(%rip), %rbx
	leaq	.LC99(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 916 7
	movq	stdout(%rip), %rbx
	leaq	.LC100(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 920 7
	movq	stdout(%rip), %rbx
	leaq	.LC101(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 924 7
	movq	stdout(%rip), %rbx
	leaq	.LC102(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 931 7
	movq	stdout(%rip), %rbx
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 935 7
	movq	stdout(%rip), %rbx
	leaq	.LC104(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 939 7
	movq	stdout(%rip), %rbx
	leaq	.LC105(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 942 7
	movq	stdout(%rip), %rbx
	leaq	.LC106(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 945 7
	movq	stdout(%rip), %rbx
	leaq	.LC107(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 948 7
	movq	stdout(%rip), %rbx
	leaq	.LC108(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 949 7
	movq	stdout(%rip), %rbx
	leaq	.LC109(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 951 7
	movq	stdout(%rip), %rbx
	leaq	.LC110(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 954 7
	movq	stdout(%rip), %rbx
	leaq	.LC111(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 957 7
	movq	stdout(%rip), %rbx
	leaq	.LC112(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 963 7
	movq	stdout(%rip), %rbx
	leaq	.LC113(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 968 7
	movq	stdout(%rip), %rbx
	leaq	.LC114(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 973 7
	movq	stdout(%rip), %rbx
	leaq	.LC115(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 979 7
	movq	stdout(%rip), %rbx
	leaq	.LC116(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 989 7
	movq	stdout(%rip), %rbx
	leaq	.LC117(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 997 7
	movq	program_name(%rip), %rbx
	.loc 2 997 15
	leaq	.LC118(%rip), %rdi
	call	gettext@PLT
	.loc 2 997 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1006 7
	movq	program_name(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	program_name(%rip), %rdx
	movq	%rdx, -72(%rbp)
	movq	program_name(%rip), %r15
	movq	program_name(%rip), %r14
	movq	program_name(%rip), %rcx
	movq	%rcx, -80(%rbp)
	movq	program_name(%rip), %rsi
	movq	%rsi, -88(%rbp)
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 1006 15
	leaq	.LC119(%rip), %rdi
	call	gettext@PLT
	.loc 2 1006 7
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	%r15
	pushq	%r14
	movq	-80(%rbp), %r9
	movq	-88(%rbp), %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$32, %rsp
	.loc 2 1025 7
	leaq	.LC120(%rip), %rdi
	call	emit_ancillary_info
.L207:
	.loc 2 1027 3
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE81:
	.size	usage, .-usage
	.section	.rodata
.LC121:
	.string	"format %s has no %% directive"
.LC122:
	.string	" "
	.align 8
.LC123:
	.string	"invalid format %s (width overflow)"
	.align 8
.LC124:
	.string	"--format padding overriding --padding"
.LC125:
	.string	"format %s ends in %%"
	.align 8
.LC126:
	.string	"invalid precision in format %s"
	.align 8
.LC127:
	.string	"invalid format %s, directive must be %%[0]['][-][N][.][N]f"
	.align 8
.LC128:
	.string	"format %s has too many %% directives"
.LC129:
	.string	"Left"
.LC130:
	.string	"Right"
.LC131:
	.string	"yes"
.LC132:
	.string	"no"
	.align 8
.LC133:
	.string	"format String:\n  input: %s\n  grouping: %s\n  padding width: %ld\n  alignment: %s\n  prefix: %s\n  suffix: %s\n"
	.text
	.type	parse_format_string, @function
parse_format_string:
.LFB82:
	.loc 2 1047 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -120(%rbp)
	.loc 2 1047 1
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	.loc 2 1049 10
	movq	$0, -88(%rbp)
	.loc 2 1051 12
	movq	$0, -80(%rbp)
	.loc 2 1052 9
	movq	$0, -104(%rbp)
	.loc 2 1053 8
	movb	$0, -105(%rbp)
	.loc 2 1055 10
	movq	$0, -96(%rbp)
	.loc 2 1055 3
	jmp	.L209
.L213:
	.loc 2 1057 15
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1057 10
	testb	%al, %al
	jne	.L210
.LBB7:
	.loc 2 1058 9
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC121(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L210:
.LBE7:
	.loc 2 1060 17
	addq	$1, -88(%rbp)
	.loc 2 1055 63
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1055 75
	cmpb	$37, %al
	jne	.L211
	.loc 2 1055 75 is_stmt 0 discriminator 2
	movl	$2, %eax
	jmp	.L212
.L211:
	.loc 2 1055 75 discriminator 3
	movl	$1, %eax
.L212:
	.loc 2 1055 56 is_stmt 1 discriminator 5
	addq	%rax, -96(%rbp)
.L209:
	.loc 2 1055 20 discriminator 6
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1055 3 discriminator 6
	cmpb	$37, %al
	jne	.L213
	.loc 2 1055 37 discriminator 7
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1055 15 discriminator 7
	cmpb	$37, %al
	je	.L213
	.loc 2 1063 4
	addq	$1, -96(%rbp)
.L218:
.LBB8:
	.loc 2 1066 21
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC122(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	movq	%rax, -72(%rbp)
	.loc 2 1067 9
	movq	-72(%rbp), %rax
	addq	%rax, -96(%rbp)
	.loc 2 1068 14
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1068 10
	cmpb	$39, %al
	jne	.L214
	.loc 2 1070 20
	movl	$1, grouping(%rip)
	.loc 2 1071 12
	addq	$1, -96(%rbp)
	jmp	.L218
.L214:
	.loc 2 1073 19
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1073 15
	cmpb	$48, %al
	jne	.L216
	.loc 2 1075 24
	movb	$1, -105(%rbp)
	.loc 2 1076 12
	addq	$1, -96(%rbp)
	jmp	.L218
.L216:
	.loc 2 1078 15
	cmpq	$0, -72(%rbp)
	je	.L249
.LBE8:
	.loc 2 1065 5
	jmp	.L218
.L249:
.LBB9:
	.loc 2 1079 9
	nop
.LBE9:
	.loc 2 1082 3
	call	__errno_location@PLT
	.loc 2 1082 9
	movl	$0, (%rax)
	.loc 2 1083 9
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-104(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strtol@PLT
	movq	%rax, -80(%rbp)
	.loc 2 1084 7
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1084 6
	cmpl	$34, %eax
	je	.L219
	.loc 2 1084 23 discriminator 1
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, -80(%rbp)
	jne	.L220
.L219:
.LBB10:
	.loc 2 1085 5
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC123(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L220:
.LBE10:
	.loc 2 1088 22
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 1088 14
	movq	-104(%rbp), %rax
	.loc 2 1088 6
	cmpq	%rax, %rdx
	je	.L221
	.loc 2 1088 27 discriminator 1
	cmpq	$0, -80(%rbp)
	je	.L221
	.loc 2 1090 11
	movzbl	debug(%rip), %eax
	.loc 2 1090 10
	testb	%al, %al
	je	.L222
	.loc 2 1090 17 discriminator 1
	movq	padding_width(%rip), %rax
	testq	%rax, %rax
	je	.L222
	.loc 2 1090 39 discriminator 2
	movzbl	-105(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1090 34 discriminator 2
	testb	%al, %al
	jne	.L223
	.loc 2 1090 37 discriminator 3
	cmpq	$0, -80(%rbp)
	jg	.L222
.L223:
	.loc 2 1091 22
	leaq	.LC124(%rip), %rdi
	call	gettext@PLT
	.loc 2 1091 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L222:
	.loc 2 1093 10
	cmpq	$0, -80(%rbp)
	jns	.L224
	.loc 2 1095 29
	movl	$0, padding_alignment(%rip)
	.loc 2 1096 27
	movq	-80(%rbp), %rax
	negq	%rax
	.loc 2 1096 25
	movq	%rax, padding_width(%rip)
	jmp	.L221
.L224:
	.loc 2 1100 14
	cmpb	$0, -105(%rbp)
	je	.L225
	.loc 2 1101 32
	movq	-80(%rbp), %rax
	movq	%rax, zero_padding_width(%rip)
	jmp	.L221
.L225:
	.loc 2 1103 27
	movq	-80(%rbp), %rax
	movq	%rax, padding_width(%rip)
.L221:
	.loc 2 1107 14
	movq	-104(%rbp), %rax
	subq	-120(%rbp), %rax
	.loc 2 1107 5
	movq	%rax, -96(%rbp)
	.loc 2 1109 10
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1109 6
	testb	%al, %al
	jne	.L226
.LBB11:
	.loc 2 1110 5
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC125(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L226:
.LBE11:
	.loc 2 1112 10
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1112 6
	cmpb	$46, %al
	jne	.L227
	.loc 2 1114 8
	addq	$1, -96(%rbp)
	.loc 2 1115 7
	call	__errno_location@PLT
	.loc 2 1115 13
	movl	$0, (%rax)
	.loc 2 1116 24
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-104(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strtol@PLT
	.loc 2 1116 22
	movq	%rax, user_precision(%rip)
	.loc 2 1117 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1117 10
	cmpl	$34, %eax
	je	.L228
	.loc 2 1117 45 discriminator 1
	movq	user_precision(%rip), %rax
	.loc 2 1117 49 discriminator 1
	testq	%rax, %rax
	js	.L228
	.loc 2 1118 14
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-120(%rbp), %rcx
	movq	-96(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	.loc 2 1118 11
	testl	%eax, %eax
	jne	.L228
	.loc 2 1118 37 discriminator 1
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1118 31 discriminator 1
	cmpb	$43, %al
	jne	.L229
.L228:
.LBB12:
	.loc 2 1125 11
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC126(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L229:
.LBE12:
	.loc 2 1128 18
	movq	-104(%rbp), %rax
	subq	-120(%rbp), %rax
	.loc 2 1128 9
	movq	%rax, -96(%rbp)
.L227:
	.loc 2 1131 10
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1131 6
	cmpb	$102, %al
	je	.L230
.LBB13:
	.loc 2 1132 5
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC127(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L230:
.LBE13:
	.loc 2 1135 4
	addq	$1, -96(%rbp)
	.loc 2 1136 14
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 2 1138 3
	jmp	.L231
.L235:
	.loc 2 1139 12
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1139 8
	cmpb	$37, %al
	jne	.L232
	.loc 2 1139 29 discriminator 1
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1139 23 discriminator 1
	cmpb	$37, %al
	je	.L232
.LBB14:
	.loc 2 1140 7
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC128(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L232:
.LBE14:
	.loc 2 1138 35
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1138 47
	cmpb	$37, %al
	jne	.L233
	.loc 2 1138 47 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L234
.L233:
	.loc 2 1138 47 discriminator 2
	movl	$1, %eax
.L234:
	.loc 2 1138 28 is_stmt 1 discriminator 4
	addq	%rax, -96(%rbp)
.L231:
	.loc 2 1138 13 discriminator 5
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1138 3 discriminator 5
	testb	%al, %al
	jne	.L235
	.loc 2 1143 6
	cmpq	$0, -88(%rbp)
	je	.L236
	.loc 2 1144 25
	movq	-88(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xstrndup@PLT
	.loc 2 1144 23
	movq	%rax, format_str_prefix(%rip)
.L236:
	.loc 2 1145 10
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1145 6
	testb	%al, %al
	je	.L237
	.loc 2 1146 25
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 2 1146 23
	movq	%rax, format_str_suffix(%rip)
.L237:
	.loc 2 1148 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L250
	.loc 2 1148 3 is_stmt 0 discriminator 1
	movq	format_str_suffix(%rip), %rax
	testq	%rax, %rax
	je	.L239
	.loc 2 1148 3 discriminator 2
	movq	format_str_suffix(%rip), %rax
	jmp	.L240
.L239:
	.loc 2 1148 3 discriminator 3
	leaq	.LC17(%rip), %rax
.L240:
	.loc 2 1148 3 discriminator 5
	movq	%rax, %rsi
	movl	$2, %edi
	call	quote_n@PLT
	movq	%rax, %r14
	movq	format_str_prefix(%rip), %rax
	testq	%rax, %rax
	je	.L241
	.loc 2 1148 3 discriminator 6
	movq	format_str_prefix(%rip), %rax
	jmp	.L242
.L241:
	.loc 2 1148 3 discriminator 7
	leaq	.LC17(%rip), %rax
.L242:
	.loc 2 1148 3 discriminator 9
	movq	%rax, %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r13
	movl	padding_alignment(%rip), %eax
	testl	%eax, %eax
	jne	.L243
	.loc 2 1148 3 discriminator 10
	leaq	.LC129(%rip), %r12
	jmp	.L244
.L243:
	.loc 2 1148 3 discriminator 11
	leaq	.LC130(%rip), %r12
.L244:
	.loc 2 1148 3 discriminator 13
	movq	padding_width(%rip), %r15
	movl	grouping(%rip), %eax
	testl	%eax, %eax
	je	.L245
	.loc 2 1148 3 discriminator 14
	leaq	.LC131(%rip), %rbx
	jmp	.L246
.L245:
	.loc 2 1148 3 discriminator 15
	leaq	.LC132(%rip), %rbx
.L246:
	.loc 2 1148 3 discriminator 17
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	pushq	%r14
	pushq	%r13
	movq	%r12, %r9
	movq	%r15, %r8
	movq	%rbx, %rcx
	leaq	.LC133(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L250:
	.loc 2 1156 1 is_stmt 1
	nop
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L247
	call	__stack_chk_fail@PLT
.L247:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	parse_format_string, .-parse_format_string
	.section	.rodata
	.align 8
.LC134:
	.string	"invalid suffix in input %s: %s"
	.text
	.type	parse_human_number, @function
parse_human_number:
.LFB83:
	.loc 2 1169 1
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
	.loc 2 1169 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1170 9
	movq	$0, -32(%rbp)
	.loc 2 1173 5
	movl	scale_from(%rip), %edi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	simple_strtod_human
	movl	%eax, -36(%rbp)
	.loc 2 1174 6
	cmpl	$0, -36(%rbp)
	je	.L252
	.loc 2 1174 19 discriminator 1
	cmpl	$1, -36(%rbp)
	je	.L252
	.loc 2 1176 7
	movq	-56(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	simple_strtod_fatal
	.loc 2 1177 14
	movl	-36(%rbp), %eax
	jmp	.L256
.L252:
	.loc 2 1180 7
	movq	-32(%rbp), %rax
	.loc 2 1180 6
	testq	%rax, %rax
	je	.L254
	.loc 2 1180 14 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1180 11 discriminator 1
	testb	%al, %al
	je	.L254
	.loc 2 1182 23
	movl	inval_style(%rip), %eax
	.loc 2 1182 10
	cmpl	$3, %eax
	je	.L255
	.loc 2 1183 9
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %rbx
	.loc 2 1183 35
	leaq	.LC134(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1183 9
	movl	conv_exit_code(%rip), %eax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
.L255:
	.loc 2 1185 9
	movl	$5, -36(%rbp)
.L254:
	.loc 2 1187 10
	movl	-36(%rbp), %eax
.L256:
	.loc 2 1188 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L257
	.loc 2 1188 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L257:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	parse_human_number, .-parse_human_number
	.section	.rodata
	.align 8
.LC135:
	.string	"value/precision too large to be printed: '%Lg/%lu' (consider using --to)"
	.align 8
.LC136:
	.string	"value too large to be printed: '%Lg' (consider using --to)"
	.align 8
.LC137:
	.string	"value too large to be printed: '%Lg' (cannot handle values > 999Y)"
	.align 8
.LC138:
	.string	"formatting output:\n  value: %Lf\n  humanized: %s\n"
.LC139:
	.string	"  After padding: %s\n"
	.text
	.type	prepare_padded_number, @function
prepare_padded_number:
.LFB84:
	.loc 2 1195 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	.loc 2 1195 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1199 42
	movq	user_precision(%rip), %rax
	.loc 2 1199 60
	cmpq	$-1, %rax
	jne	.L259
	.loc 2 1199 60 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax
	jmp	.L260
.L259:
	.loc 2 1199 60 discriminator 2
	movq	user_precision(%rip), %rax
.L260:
	.loc 2 1199 10 is_stmt 1 discriminator 4
	movq	%rax, -152(%rbp)
	.loc 2 1203 3 discriminator 4
	leaq	-164(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rsi
	movl	$10, %edi
	call	expld
	fstp	%st(0)
	addq	$16, %rsp
	.loc 2 1205 16 discriminator 4
	movl	scale_to(%rip), %eax
	.loc 2 1205 6 discriminator 4
	testl	%eax, %eax
	jne	.L261
	.loc 2 1206 12
	movl	-164(%rbp), %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1206 7
	cmpq	$18, %rax
	jbe	.L261
	.loc 2 1208 23
	movl	inval_style(%rip), %eax
	.loc 2 1208 10
	cmpl	$3, %eax
	je	.L262
	.loc 2 1210 14
	cmpq	$0, -152(%rbp)
	je	.L263
	.loc 2 1212 20
	leaq	.LC135(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 1211 13
	movl	conv_exit_code(%rip), %eax
	movq	-152(%rbp), %rdx
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$16, %rsp
	jmp	.L262
.L263:
	.loc 2 1216 20
	leaq	.LC136(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1215 13
	movl	conv_exit_code(%rip), %eax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$16, %rsp
.L262:
	.loc 2 1219 14
	movl	$0, %eax
	jmp	.L272
.L261:
	.loc 2 1222 9
	movl	-164(%rbp), %eax
	.loc 2 1222 6
	cmpl	$26, %eax
	jbe	.L265
	.loc 2 1224 23
	movl	inval_style(%rip), %eax
	.loc 2 1224 10
	cmpl	$3, %eax
	je	.L266
	.loc 2 1225 35
	leaq	.LC137(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1225 9
	movl	conv_exit_code(%rip), %eax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$16, %rsp
.L266:
	.loc 2 1227 14
	movl	$0, %eax
	jmp	.L272
.L265:
	.loc 2 1230 3
	movl	round_style(%rip), %esi
	movl	grouping(%rip), %ecx
	movl	scale_to(%rip), %edx
	movq	-152(%rbp), %rax
	movl	%eax, %edi
	leaq	-144(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$128, %edx
	movq	%rax, %rsi
	call	double_to_human
	addq	$16, %rsp
	.loc 2 1232 7
	movq	suffix(%rip), %rax
	.loc 2 1232 6
	testq	%rax, %rax
	je	.L267
	.loc 2 1233 42
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 1233 5
	movl	$127, %edx
	subq	%rax, %rdx
	movq	suffix(%rip), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat@PLT
.L267:
	.loc 2 1235 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L268
	.loc 2 1235 3 is_stmt 0 discriminator 1
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	leaq	.LC138(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L268:
	.loc 2 1238 7 is_stmt 1
	movq	padding_width(%rip), %rax
	.loc 2 1238 6
	testq	%rax, %rax
	je	.L269
	.loc 2 1238 24 discriminator 1
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 1238 37 discriminator 1
	movq	padding_width(%rip), %rdx
	.loc 2 1238 21 discriminator 1
	cmpq	%rdx, %rax
	jnb	.L269
.LBB15:
	.loc 2 1240 14
	movq	padding_width(%rip), %rax
	movq	%rax, -160(%rbp)
	.loc 2 1241 7
	movl	padding_alignment(%rip), %edi
	movq	padding_buffer_size(%rip), %rdx
	movq	padding_buffer(%rip), %rsi
	leaq	-160(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movl	$2, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	mbsalign@PLT
	.loc 2 1244 7
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L274
	.loc 2 1244 7 is_stmt 0 discriminator 1
	movq	padding_buffer(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC139(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.LBE15:
	.loc 2 1239 5 is_stmt 1 discriminator 1
	jmp	.L274
.L269:
	.loc 2 1248 29
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 1248 7
	addq	$1, %rax
	movq	%rax, %rdi
	call	setup_padding_buffer
	.loc 2 1249 7
	movq	padding_buffer(%rip), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L271
.L274:
	.loc 2 1239 5
	nop
.L271:
	.loc 2 1252 10
	movl	$1, %eax
.L272:
	.loc 2 1253 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L273
	.loc 2 1253 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L273:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	prepare_padded_number, .-prepare_padded_number
	.type	print_padded_number, @function
print_padded_number:
.LFB85:
	.loc 2 1257 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 1258 7
	movq	format_str_prefix(%rip), %rax
	.loc 2 1258 6
	testq	%rax, %rax
	je	.L276
	.loc 2 1259 5
	movq	stdout(%rip), %rdx
	movq	format_str_prefix(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L276:
	.loc 2 1261 3
	movq	stdout(%rip), %rdx
	movq	padding_buffer(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1263 7
	movq	format_str_suffix(%rip), %rax
	.loc 2 1263 6
	testq	%rax, %rax
	je	.L278
	.loc 2 1264 5
	movq	stdout(%rip), %rdx
	movq	format_str_suffix(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L278:
	.loc 2 1265 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	print_padded_number, .-print_padded_number
	.section	.rodata
.LC140:
	.string	"trimming suffix %s\n"
.LC141:
	.string	"no valid suffix found\n"
	.align 8
.LC142:
	.string	"setting Auto-Padding to %ld characters\n"
	.align 8
.LC143:
	.string	"large input value %s: possible precision loss"
	.text
	.type	process_suffixed_number, @function
process_suffixed_number:
.LFB86:
	.loc 2 1272 1
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
	.loc 2 1272 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1273 7
	movq	suffix(%rip), %rax
	.loc 2 1273 6
	testq	%rax, %rax
	je	.L280
	.loc 2 1273 17 discriminator 1
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 1273 33 discriminator 1
	movq	suffix(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 1273 14 discriminator 1
	cmpq	%rax, %rbx
	jbe	.L280
.LBB16:
	.loc 2 1275 38
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 1275 54
	movq	suffix(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 1275 52
	subq	%rax, %rbx
	movq	%rbx, %rdx
	.loc 2 1275 13
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 2 1277 11
	movq	suffix(%rip), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1277 10
	testl	%eax, %eax
	jne	.L281
	.loc 2 1280 28
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 1281 11
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L280
	.loc 2 1281 11 is_stmt 0 discriminator 1
	movq	suffix(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC140(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L280
.L281:
	.loc 2 1284 9 is_stmt 1
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L280
	.loc 2 1284 9 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	movl	$1, %esi
	leaq	.LC141(%rip), %rdi
	call	fwrite@PLT
.L280:
.LBE16:
	.loc 2 1288 9 is_stmt 1
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 2 1289 9
	jmp	.L282
.L284:
	.loc 2 1290 5
	addq	$1, -64(%rbp)
.L282:
	.loc 2 1289 10
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1289 9
	testb	%al, %al
	je	.L283
	.loc 2 1289 16 discriminator 1
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
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
	.loc 2 1289 13 discriminator 1
	testl	%eax, %eax
	jne	.L284
.L283:
	.loc 2 1291 40
	movq	-88(%rbp), %rax
	subq	-64(%rbp), %rax
	.loc 2 1291 22
	movl	%eax, -72(%rbp)
	.loc 2 1294 7
	movl	auto_padding(%rip), %eax
	.loc 2 1294 6
	testl	%eax, %eax
	je	.L285
	.loc 2 1296 10
	cmpl	$0, -72(%rbp)
	jne	.L286
	.loc 2 1296 26 discriminator 1
	cmpq	$1, -112(%rbp)
	jle	.L287
.L286:
	.loc 2 1298 27
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 1298 25
	movq	%rax, padding_width(%rip)
	.loc 2 1299 11
	movq	padding_width(%rip), %rax
	movq	%rax, %rdi
	call	setup_padding_buffer
	jmp	.L288
.L287:
	.loc 2 1303 25
	movq	$0, padding_width(%rip)
.L288:
	.loc 2 1305 6
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L285
	.loc 2 1305 6 is_stmt 0 discriminator 1
	movq	padding_width(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC142(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L285:
	.loc 2 1308 15 is_stmt 1
	fldz
	fstpt	-48(%rbp)
	.loc 2 1309 32
	movq	-104(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_human_number
	movl	%eax, -68(%rbp)
	.loc 2 1310 6
	cmpl	$1, -68(%rbp)
	jne	.L289
	.loc 2 1310 34 discriminator 1
	movzbl	debug(%rip), %eax
	testb	%al, %al
	je	.L289
	.loc 2 1311 5
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1311 18
	leaq	.LC143(%rip), %rdi
	call	gettext@PLT
	.loc 2 1311 5
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L289:
	.loc 2 1314 22
	movq	from_unit_size(%rip), %rax
	.loc 2 1314 6
	cmpq	$1, %rax
	jne	.L290
	.loc 2 1314 43 discriminator 1
	movq	to_unit_size(%rip), %rax
	.loc 2 1314 27 discriminator 1
	cmpq	$1, %rax
	je	.L291
.L290:
	.loc 2 1315 16
	movq	from_unit_size(%rip), %rax
	movq	%rax, -120(%rbp)
	fildq	-120(%rbp)
	testq	%rax, %rax
	jns	.L292
	fldt	.LC144(%rip)
	faddp	%st, %st(1)
.L292:
	fldt	-48(%rbp)
	fmulp	%st, %st(1)
	.loc 2 1315 34
	movq	to_unit_size(%rip), %rax
	movq	%rax, -120(%rbp)
	fildq	-120(%rbp)
	testq	%rax, %rax
	jns	.L293
	fldt	.LC144(%rip)
	faddp	%st, %st(1)
.L293:
	fdivrp	%st, %st(1)
	.loc 2 1315 9
	fstpt	-48(%rbp)
.L291:
	.loc 2 1317 11
	fldt	-48(%rbp)
	movq	-96(%rbp), %rax
	fstpt	(%rax)
	.loc 2 1319 23
	cmpl	$0, -68(%rbp)
	je	.L294
	.loc 2 1319 23 is_stmt 0 discriminator 2
	cmpl	$1, -68(%rbp)
	jne	.L295
.L294:
	.loc 2 1319 23 discriminator 3
	movl	$1, %eax
	jmp	.L297
.L295:
	.loc 2 1319 23 discriminator 4
	movl	$0, %eax
.L297:
	.loc 2 1320 1 is_stmt 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L298
	call	__stack_chk_fail@PLT
.L298:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	process_suffixed_number, .-process_suffixed_number
	.type	next_field, @function
next_field:
.LFB87:
	.loc 2 1326 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 1327 9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1328 9
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1330 17
	movl	delimiter(%rip), %eax
	.loc 2 1330 6
	cmpl	$128, %eax
	je	.L304
	.loc 2 1332 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	.loc 2 1332 24
	movl	delimiter(%rip), %eax
	.loc 2 1332 10
	cmpl	%eax, %edx
	je	.L301
	.loc 2 1334 17
	jmp	.L302
.L303:
	.loc 2 1335 13
	addq	$1, -16(%rbp)
.L302:
	.loc 2 1334 18
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1334 17
	testb	%al, %al
	je	.L301
	.loc 2 1334 32 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	.loc 2 1334 43 discriminator 1
	movl	delimiter(%rip), %eax
	.loc 2 1334 29 discriminator 1
	cmpl	%eax, %edx
	jne	.L303
	jmp	.L301
.L306:
	.loc 2 1343 9
	addq	$1, -16(%rbp)
.L304:
	.loc 2 1342 14
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1342 13
	testb	%al, %al
	je	.L307
	.loc 2 1342 39 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1342 28 discriminator 1
	movzbl	%al, %eax
	movl	%eax, %edi
	call	field_sep
	.loc 2 1342 25 discriminator 1
	testb	%al, %al
	jne	.L306
	.loc 2 1345 13
	jmp	.L307
.L308:
	.loc 2 1346 9
	addq	$1, -16(%rbp)
.L307:
	.loc 2 1345 14
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1345 13
	testb	%al, %al
	je	.L301
	.loc 2 1345 41 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1345 30 discriminator 1
	movzbl	%al, %eax
	movl	%eax, %edi
	call	field_sep
	.loc 2 1345 28 discriminator 1
	xorl	$1, %eax
	.loc 2 1345 25 discriminator 1
	testb	%al, %al
	jne	.L308
.L301:
	.loc 2 1349 9
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 1350 10
	movq	-8(%rbp), %rax
	.loc 2 1351 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	next_field, .-next_field
	.type	include_field, @function
include_field:
.LFB88:
	.loc 2 1355 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 1356 28
	movq	frp(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1357 6
	cmpq	$0, -8(%rbp)
	jne	.L313
	.loc 2 1358 18
	cmpq	$1, -24(%rbp)
	sete	%al
	jmp	.L312
.L315:
	.loc 2 1362 12
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1362 10
	cmpq	%rax, -24(%rbp)
	jb	.L314
	.loc 2 1362 30 discriminator 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1362 26 discriminator 1
	cmpq	%rax, -24(%rbp)
	ja	.L314
	.loc 2 1363 16
	movl	$1, %eax
	jmp	.L312
.L314:
	.loc 2 1364 7
	addq	$16, -8(%rbp)
.L313:
	.loc 2 1360 11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1360 9
	cmpq	$-1, %rax
	jne	.L315
	.loc 2 1366 10
	movl	$0, %eax
.L312:
	.loc 2 1367 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	include_field, .-include_field
	.type	process_field, @function
process_field:
.LFB89:
	.loc 2 1373 1
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
	.loc 2 1373 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1374 15
	fldz
	fstpt	-32(%rbp)
	.loc 2 1375 10
	movq	$0, -40(%rbp)
	.loc 2 1376 8
	movb	$1, -41(%rbp)
	.loc 2 1378 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	include_field
	.loc 2 1378 6
	testb	%al, %al
	je	.L317
	.loc 2 1381 9
	movq	-64(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	process_suffixed_number
	.loc 2 1380 20
	testl	%eax, %eax
	setne	%al
	movb	%al, -41(%rbp)
	.loc 2 1383 10
	cmpb	$0, -41(%rbp)
	je	.L318
	.loc 2 1384 24
	movq	-40(%rbp), %rax
	fldt	-32(%rbp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	movq	%rax, %rdi
	call	prepare_padded_number
	addq	$16, %rsp
	.loc 2 1384 22
	testl	%eax, %eax
	setne	%al
	movb	%al, -41(%rbp)
.L318:
	.loc 2 1386 10
	cmpb	$0, -41(%rbp)
	je	.L319
	.loc 2 1387 9
	call	print_padded_number
	jmp	.L320
.L319:
	.loc 2 1389 9
	movq	stdout(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	jmp	.L320
.L317:
	.loc 2 1392 5
	movq	stdout(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L320:
	.loc 2 1394 10
	movzbl	-41(%rbp), %eax
	.loc 2 1395 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L322
	call	__stack_chk_fail@PLT
.L322:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	process_field, .-process_field
	.type	process_line, @function
process_line:
.LFB90:
	.loc 2 1401 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movb	%al, -44(%rbp)
	.loc 2 1403 13
	movq	$0, -16(%rbp)
	.loc 2 1404 8
	movb	$1, -17(%rbp)
.L331:
	.loc 2 1407 5
	addq	$1, -16(%rbp)
	.loc 2 1408 12
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	next_field
	movq	%rax, -8(%rbp)
	.loc 2 1410 9
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1410 8
	testb	%al, %al
	je	.L324
	.loc 2 1413 9
	movq	-40(%rbp), %rax
	.loc 2 1413 15
	movb	$0, (%rax)
	.loc 2 1415 15
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_field
	.loc 2 1415 13
	xorl	$1, %eax
	.loc 2 1415 12
	testb	%al, %al
	je	.L325
	.loc 2 1416 24
	movb	$0, -17(%rbp)
.L325:
	.loc 2 1418 9
	movq	stdout(%rip), %rdx
	movl	delimiter(%rip), %eax
	cmpl	$128, %eax
	je	.L326
	.loc 2 1418 9 is_stmt 0 discriminator 1
	movl	delimiter(%rip), %eax
	jmp	.L327
.L326:
	.loc 2 1418 9 discriminator 2
	movl	$32, %eax
.L327:
	.loc 2 1418 9 discriminator 4
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc_unlocked@PLT
	.loc 2 1420 9 is_stmt 1 discriminator 4
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.L331
.L324:
	.loc 2 1425 15
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_field
	.loc 2 1425 13
	xorl	$1, %eax
	.loc 2 1425 12
	testb	%al, %al
	je	.L335
	.loc 2 1426 24
	movb	$0, -17(%rbp)
.L335:
	.loc 2 1428 9
	nop
	.loc 2 1432 6
	cmpb	$0, -44(%rbp)
	je	.L332
	.loc 2 1433 5
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L332:
	.loc 2 1435 10
	movzbl	-17(%rbp), %eax
	.loc 2 1436 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	process_line, .-process_line
	.section	.rodata
.LC145:
	.string	"/usr/local/share/locale"
.LC146:
	.string	"."
.LC147:
	.string	"d:z"
.LC148:
	.string	"--from"
.LC149:
	.string	"--to"
.LC150:
	.string	"--round"
.LC151:
	.string	"invalid padding value %s"
.LC152:
	.string	"multiple field specifications"
	.align 8
.LC153:
	.string	"the delimiter must be a single character"
.LC154:
	.string	"invalid header value %s"
.LC155:
	.string	"--invalid"
.LC156:
	.string	"Assaf Gordon"
	.align 8
.LC157:
	.string	"--grouping cannot be combined with --format"
.LC158:
	.string	"failed to set locale"
	.align 8
.LC159:
	.string	"no conversion option specified"
	.align 8
.LC160:
	.string	"grouping cannot be combined with --to"
	.align 8
.LC161:
	.string	"grouping has no effect in this locale"
	.align 8
.LC162:
	.string	"--header ignored with command-line input"
.LC163:
	.string	"error reading input"
	.align 8
.LC164:
	.string	"failed to convert some of the input numbers"
	.text
	.globl	main
	.type	main, @function
main:
.LFB91:
	.loc 2 1440 1
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
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 1440 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1441 7
	movl	$1, -60(%rbp)
	.loc 2 1445 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 1446 17
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 1446 13
	testq	%rax, %rax
	setne	%al
	movb	%al, -62(%rbp)
	.loc 2 1447 3
	leaq	.LC145(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 1448 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 1455 19
	movl	$65536, %edi
	call	nl_langinfo@PLT
	.loc 2 1455 17
	movq	%rax, decimal_point(%rip)
	.loc 2 1456 21
	movq	decimal_point(%rip), %rax
	.loc 2 1456 6
	testq	%rax, %rax
	je	.L337
	.loc 2 1456 55 discriminator 1
	movq	decimal_point(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 1456 29 discriminator 1
	testb	%al, %al
	jne	.L338
.L337:
	.loc 2 1457 19
	leaq	.LC146(%rip), %rax
	movq	%rax, decimal_point(%rip)
.L338:
	.loc 2 1458 26
	movq	decimal_point(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 1458 24
	movl	%eax, decimal_point_length(%rip)
	.loc 2 1460 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
.L371:
.LBB17:
	.loc 2 1464 15
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC147(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -52(%rbp)
	.loc 2 1466 10
	cmpl	$-1, -52(%rbp)
	je	.L398
	.loc 2 1469 7
	cmpl	$141, -52(%rbp)
	jg	.L341
	cmpl	$100, -52(%rbp)
	jge	.L342
	cmpl	$-131, -52(%rbp)
	je	.L343
	cmpl	$-130, -52(%rbp)
	je	.L344
	jmp	.L341
.L342:
	movl	-52(%rbp), %eax
	subl	$100, %eax
	cmpl	$41, %eax
	ja	.L341
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
	.long	.L361-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L360-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L341-.L346
	.long	.L359-.L346
	.long	.L358-.L346
	.long	.L357-.L346
	.long	.L356-.L346
	.long	.L355-.L346
	.long	.L354-.L346
	.long	.L353-.L346
	.long	.L352-.L346
	.long	.L351-.L346
	.long	.L350-.L346
	.long	.L349-.L346
	.long	.L348-.L346
	.long	.L347-.L346
	.long	.L345-.L346
	.text
.L359:
	.loc 2 1472 24
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	scale_from_types(%rip), %rcx
	leaq	scale_from_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC148(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	scale_from_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 1472 22
	movl	%eax, scale_from(%rip)
	.loc 2 1474 11
	jmp	.L362
.L358:
	.loc 2 1477 28
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	unit_to_umax
	.loc 2 1477 26
	movq	%rax, from_unit_size(%rip)
	.loc 2 1478 11
	jmp	.L362
.L357:
	.loc 2 1482 13
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	scale_to_types(%rip), %rcx
	leaq	scale_to_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC149(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	scale_to_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 1481 20
	movl	%eax, scale_to(%rip)
	.loc 2 1483 11
	jmp	.L362
.L356:
	.loc 2 1486 26
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	unit_to_umax
	.loc 2 1486 24
	movq	%rax, to_unit_size(%rip)
	.loc 2 1487 11
	jmp	.L362
.L355:
	.loc 2 1490 25
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	round_types(%rip), %rcx
	leaq	round_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC150(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	round_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 1490 23
	movl	%eax, round_style(%rip)
	.loc 2 1491 11
	jmp	.L362
.L353:
	.loc 2 1494 20
	movl	$1, grouping(%rip)
	.loc 2 1495 11
	jmp	.L362
.L352:
	.loc 2 1498 15
	movq	optarg(%rip), %rax
	leaq	.LC17(%rip), %r8
	leaq	padding_width(%rip), %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtol@PLT
	.loc 2 1498 14
	testl	%eax, %eax
	jne	.L363
	.loc 2 1499 32
	movq	padding_width(%rip), %rax
	.loc 2 1499 15
	testq	%rax, %rax
	je	.L363
	.loc 2 1499 54 discriminator 1
	movq	padding_width(%rip), %rax
	.loc 2 1499 37 discriminator 1
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	jne	.L364
.L363:
.LBB18:
	.loc 2 1500 13
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC151(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L364:
.LBE18:
	.loc 2 1502 29
	movq	padding_width(%rip), %rax
	.loc 2 1502 14
	testq	%rax, %rax
	jns	.L399
	.loc 2 1504 33
	movl	$0, padding_alignment(%rip)
	.loc 2 1505 31
	movq	padding_width(%rip), %rax
	negq	%rax
	.loc 2 1505 29
	movq	%rax, padding_width(%rip)
	.loc 2 1509 11
	jmp	.L399
.L351:
	.loc 2 1512 15
	movq	n_frp(%rip), %rax
	.loc 2 1512 14
	testq	%rax, %rax
	je	.L366
.LBB19:
	.loc 2 1513 13
	leaq	.LC152(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L366:
.LBE19:
	.loc 2 1514 11
	movq	optarg(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_fields@PLT
	.loc 2 1515 11
	jmp	.L362
.L361:
	.loc 2 1519 21
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 1519 14
	testb	%al, %al
	je	.L367
	.loc 2 1519 42 discriminator 1
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1519 33 discriminator 1
	testb	%al, %al
	je	.L367
.LBB20:
	.loc 2 1520 13
	leaq	.LC153(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L367:
.LBE20:
	.loc 2 1522 29
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 1522 21
	movl	%eax, delimiter(%rip)
	.loc 2 1523 11
	jmp	.L362
.L360:
	.loc 2 1526 22
	movb	$0, line_delim(%rip)
	.loc 2 1527 11
	jmp	.L362
.L354:
	.loc 2 1530 18
	movq	optarg(%rip), %rax
	movq	%rax, suffix(%rip)
	.loc 2 1531 11
	jmp	.L362
.L350:
	.loc 2 1534 17
	movb	$1, debug(%rip)
	.loc 2 1535 11
	jmp	.L362
.L349:
	.loc 2 1538 21
	movb	$1, dev_debug(%rip)
	.loc 2 1539 17
	movb	$1, debug(%rip)
	.loc 2 1540 11
	jmp	.L362
.L348:
	.loc 2 1543 15
	movq	optarg(%rip), %rax
	.loc 2 1543 14
	testq	%rax, %rax
	je	.L368
	.loc 2 1545 19
	movq	optarg(%rip), %rax
	leaq	.LC17(%rip), %r8
	leaq	header(%rip), %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 2 1545 18
	testl	%eax, %eax
	jne	.L369
	.loc 2 1546 29
	movq	header(%rip), %rax
	.loc 2 1546 19
	testq	%rax, %rax
	jne	.L400
.L369:
.LBB21:
	.loc 2 1547 17
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC154(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L368:
.LBE21:
	.loc 2 1552 22
	movq	$1, header(%rip)
	.loc 2 1554 11
	jmp	.L400
.L347:
	.loc 2 1557 22
	movq	optarg(%rip), %rax
	movq	%rax, format_str(%rip)
	.loc 2 1558 11
	jmp	.L362
.L345:
	.loc 2 1561 25
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	inval_types(%rip), %rcx
	leaq	inval_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC155(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	inval_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 1561 23
	movl	%eax, inval_style(%rip)
	.loc 2 1563 11
	jmp	.L362
.L344:
	.loc 2 1565 11
	movl	$0, %edi
	call	usage
.L343:
	.loc 2 1566 11
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC156(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC120(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L341:
	.loc 2 1569 11
	movl	$1, %edi
	call	usage
.L399:
	.loc 2 1509 11
	nop
	jmp	.L371
.L400:
	.loc 2 1554 11
	nop
.L362:
.LBE17:
	.loc 2 1463 5
	jmp	.L371
.L398:
.LBB22:
	.loc 2 1467 9
	nop
.LBE22:
	.loc 2 1573 18
	movq	format_str(%rip), %rax
	.loc 2 1573 6
	testq	%rax, %rax
	je	.L372
	.loc 2 1573 26 discriminator 1
	movl	grouping(%rip), %eax
	testl	%eax, %eax
	je	.L372
.LBB23:
	.loc 2 1574 5
	leaq	.LC157(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L372:
.LBE23:
	.loc 2 1576 7
	movzbl	debug(%rip), %eax
	.loc 2 1576 6
	testb	%al, %al
	je	.L373
	.loc 2 1576 16 discriminator 1
	movzbl	-62(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1576 13 discriminator 1
	testb	%al, %al
	je	.L373
	.loc 2 1577 18
	leaq	.LC158(%rip), %rdi
	call	gettext@PLT
	.loc 2 1577 5
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L373:
	.loc 2 1580 7
	movzbl	debug(%rip), %eax
	.loc 2 1580 6
	testb	%al, %al
	je	.L374
	.loc 2 1580 27 discriminator 1
	movl	scale_from(%rip), %eax
	.loc 2 1580 13 discriminator 1
	testl	%eax, %eax
	jne	.L374
	.loc 2 1580 53 discriminator 2
	movl	scale_to(%rip), %eax
	.loc 2 1580 41 discriminator 2
	testl	%eax, %eax
	jne	.L374
	.loc 2 1581 10
	movl	grouping(%rip), %eax
	.loc 2 1581 7
	testl	%eax, %eax
	jne	.L374
	.loc 2 1581 38 discriminator 1
	movq	padding_width(%rip), %rax
	.loc 2 1581 20 discriminator 1
	testq	%rax, %rax
	jne	.L374
	.loc 2 1581 59 discriminator 2
	movq	format_str(%rip), %rax
	.loc 2 1581 44 discriminator 2
	testq	%rax, %rax
	jne	.L374
	.loc 2 1582 18
	leaq	.LC159(%rip), %rdi
	call	gettext@PLT
	.loc 2 1582 5
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L374:
	.loc 2 1584 7
	movq	format_str(%rip), %rax
	.loc 2 1584 6
	testq	%rax, %rax
	je	.L375
	.loc 2 1585 5
	movq	format_str(%rip), %rax
	movq	%rax, %rdi
	call	parse_format_string
.L375:
	.loc 2 1587 7
	movl	grouping(%rip), %eax
	.loc 2 1587 6
	testl	%eax, %eax
	je	.L376
	.loc 2 1589 20
	movl	scale_to(%rip), %eax
	.loc 2 1589 10
	testl	%eax, %eax
	je	.L377
.LBB24:
	.loc 2 1590 9
	leaq	.LC160(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L377:
.LBE24:
	.loc 2 1591 11
	movzbl	debug(%rip), %eax
	.loc 2 1591 10
	testb	%al, %al
	je	.L376
	.loc 2 1591 29 discriminator 1
	movl	$65537, %edi
	call	nl_langinfo@PLT
	.loc 2 1591 52 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 1591 17 discriminator 1
	testb	%al, %al
	jne	.L376
	.loc 2 1592 22
	leaq	.LC161(%rip), %rdi
	call	gettext@PLT
	.loc 2 1592 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L376:
	.loc 2 1596 3
	movq	padding_width(%rip), %rax
	movq	%rax, %rdi
	call	setup_padding_buffer
	.loc 2 1597 33
	movq	padding_width(%rip), %rax
	.loc 2 1597 38
	testq	%rax, %rax
	jne	.L378
	.loc 2 1597 51 discriminator 1
	movl	delimiter(%rip), %eax
	.loc 2 1597 38 discriminator 1
	cmpl	$128, %eax
	jne	.L378
	.loc 2 1597 38 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L379
.L378:
	.loc 2 1597 38 discriminator 4
	movl	$0, %eax
.L379:
	.loc 2 1597 16 is_stmt 1 discriminator 6
	movl	%eax, auto_padding(%rip)
	.loc 2 1599 19 discriminator 6
	movl	inval_style(%rip), %eax
	.loc 2 1599 6 discriminator 6
	testl	%eax, %eax
	je	.L380
	.loc 2 1600 20
	movl	$0, conv_exit_code(%rip)
.L380:
	.loc 2 1602 12
	movl	optind(%rip), %eax
	.loc 2 1602 6
	cmpl	%eax, -68(%rbp)
	jle	.L381
	.loc 2 1604 11
	movzbl	debug(%rip), %eax
	.loc 2 1604 10
	testb	%al, %al
	je	.L383
	.loc 2 1604 17 discriminator 1
	movq	header(%rip), %rax
	testq	%rax, %rax
	je	.L383
	.loc 2 1605 22
	leaq	.LC162(%rip), %rdi
	call	gettext@PLT
	.loc 2 1605 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1607 7
	jmp	.L383
.L384:
	.loc 2 1608 44 discriminator 2
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1608 26 discriminator 2
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	process_line
	.loc 2 1608 23 discriminator 2
	andl	%eax, -60(%rbp)
	.loc 2 1607 35 discriminator 2
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L383:
	.loc 2 1607 21 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 1607 7 discriminator 1
	cmpl	%eax, -68(%rbp)
	jg	.L384
	jmp	.L385
.L381:
.LBB25:
	.loc 2 1612 13
	movq	$0, -48(%rbp)
	.loc 2 1613 14
	movq	$0, -40(%rbp)
	.loc 2 1616 13
	jmp	.L386
.L388:
	.loc 2 1618 9
	movq	stdout(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L386:
	.loc 2 1616 20
	movq	header(%rip), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, header(%rip)
	.loc 2 1616 13
	testq	%rax, %rax
	je	.L389
	.loc 2 1616 26 discriminator 1
	movq	stdin(%rip), %rcx
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %edx
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getdelim@PLT
	.loc 2 1616 23 discriminator 1
	testq	%rax, %rax
	jg	.L388
	.loc 2 1620 13
	jmp	.L389
.L391:
.LBB26:
	.loc 2 1623 30
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	.loc 2 1623 40
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 1623 16
	cmpl	%eax, %edx
	sete	%al
	movb	%al, -61(%rbp)
	.loc 2 1624 14
	cmpb	$0, -61(%rbp)
	je	.L390
	.loc 2 1625 17
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	.loc 2 1625 27
	movb	$0, (%rax)
.L390:
	.loc 2 1626 28
	movzbl	-61(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	process_line
	.loc 2 1626 25
	andl	%eax, -60(%rbp)
.L389:
.LBE26:
	.loc 2 1620 21
	movq	stdin(%rip), %rcx
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %edx
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getdelim@PLT
	movq	%rax, -32(%rbp)
	.loc 2 1620 13
	cmpq	$0, -32(%rbp)
	jg	.L391
	.loc 2 1629 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1631 11
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1631 10
	testl	%eax, %eax
	je	.L385
	.loc 2 1632 26
	leaq	.LC163(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 1632 19
	call	__errno_location@PLT
	.loc 2 1632 9
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L385:
.LBE25:
	.loc 2 1636 3
	movq	padding_buffer(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1637 3
	movq	format_str_prefix(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1638 3
	movq	format_str_suffix(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1639 3
	call	reset_fields@PLT
	.loc 2 1642 7
	movzbl	debug(%rip), %eax
	.loc 2 1642 6
	testb	%al, %al
	je	.L393
	.loc 2 1642 13 discriminator 1
	cmpl	$0, -60(%rbp)
	jne	.L393
	.loc 2 1643 18
	leaq	.LC164(%rip), %rdi
	call	gettext@PLT
	.loc 2 1643 5
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L393:
	.loc 2 1645 7
	movl	$0, -56(%rbp)
	.loc 2 1646 6
	cmpl	$0, -60(%rbp)
	jne	.L394
	.loc 2 1647 22
	movl	inval_style(%rip), %eax
	.loc 2 1647 7
	cmpl	$2, %eax
	je	.L394
	.loc 2 1647 51 discriminator 1
	movl	inval_style(%rip), %eax
	.loc 2 1647 36 discriminator 1
	cmpl	$3, %eax
	je	.L394
	.loc 2 1648 17
	movl	$2, -56(%rbp)
.L394:
	.loc 2 1650 10
	movl	-56(%rbp), %eax
	.loc 2 1651 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L396
	call	__stack_chk_fail@PLT
.L396:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	main, .-main
	.section	.data.rel.local,"aw"
	.align 8
	.type	valid_suffixes.7518, @object
	.size	valid_suffixes.7518, 8
valid_suffixes.7518:
	.quad	.LC87
	.section	.rodata
	.align 16
.LC63:
	.long	4294967295
	.long	4294967295
	.long	65534
	.long	0
	.align 16
.LC64:
	.long	4294967295
	.long	4294967295
	.long	32766
	.long	0
	.align 16
.LC65:
	.long	0
	.long	2147483648
	.long	16382
	.long	0
	.align 16
.LC66:
	.long	4294967294
	.long	4294967295
	.long	16445
	.long	0
	.align 16
.LC67:
	.long	0
	.long	2684354560
	.long	16386
	.long	0
	.align 16
.LC144:
	.long	0
	.long	2147483648
	.long	16447
	.long	0
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/langinfo.h"
	.file 14 "./lib/mbsalign.h"
	.file 15 "./lib/quote.h"
	.file 16 "./lib/argmatch.h"
	.file 17 "./lib/error.h"
	.file 18 "/usr/include/time.h"
	.file 19 "/usr/include/signal.h"
	.file 20 "/usr/include/unistd.h"
	.file 21 "/usr/include/errno.h"
	.file 22 "src/version.h"
	.file 23 "./lib/exitfail.h"
	.file 24 "/usr/include/stdint.h"
	.file 25 "./lib/timespec.h"
	.file 26 "/usr/include/ctype.h"
	.file 27 "./lib/version-etc.h"
	.file 28 "./lib/progname.h"
	.file 29 "./lib/quotearg.h"
	.file 30 "./lib/xstrtol.h"
	.file 31 "src/set-fields.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x28df
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF708
	.byte	0xc
	.long	.LASF709
	.long	.LASF710
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
	.long	.LASF22
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
	.uleb128 0xb
	.long	.LASF15
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0xdf
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.long	0xe6
	.uleb128 0xc
	.byte	0x8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x4
	.byte	0x2
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
	.long	.LASF16
	.byte	0x6
	.byte	0x48
	.byte	0x12
	.long	0x110
	.uleb128 0xb
	.long	.LASF17
	.byte	0x6
	.byte	0x49
	.byte	0x1b
	.long	0xdf
	.uleb128 0xb
	.long	.LASF18
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x110
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x110
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x110
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.byte	0xc1
	.byte	0x1b
	.long	0x110
	.uleb128 0x8
	.long	.LASF23
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x2e6
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x2ff
	.byte	0x60
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x305
	.byte	0x68
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x12f
	.byte	0x78
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0xfb
	.byte	0x80
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x102
	.byte	0x82
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x30b
	.byte	0x83
	.uleb128 0x9
	.long	.LASF44
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x31b
	.byte	0x88
	.uleb128 0x9
	.long	.LASF45
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x13b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x326
	.byte	0x98
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x331
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x305
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xf2
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF50
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xd3
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF51
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF52
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x337
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x15f
	.uleb128 0xd
	.long	.LASF711
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF54
	.uleb128 0x3
	.byte	0x8
	.long	0x2fa
	.uleb128 0x3
	.byte	0x8
	.long	0x15f
	.uleb128 0xf
	.long	0x3f
	.long	0x31b
	.uleb128 0x10
	.long	0xdf
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2f2
	.uleb128 0xe
	.long	.LASF55
	.uleb128 0x3
	.byte	0x8
	.long	0x321
	.uleb128 0xe
	.long	.LASF56
	.uleb128 0x3
	.byte	0x8
	.long	0x32c
	.uleb128 0xf
	.long	0x3f
	.long	0x347
	.uleb128 0x10
	.long	0xdf
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.long	.LASF57
	.byte	0x9
	.byte	0x4d
	.byte	0x13
	.long	0x153
	.uleb128 0x2
	.long	.LASF58
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x35f
	.uleb128 0x3
	.byte	0x8
	.long	0x2e6
	.uleb128 0x2
	.long	.LASF59
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x35f
	.uleb128 0x2
	.long	.LASF60
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x35f
	.uleb128 0x2
	.long	.LASF61
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xc8
	.long	0x394
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x389
	.uleb128 0x2
	.long	.LASF62
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x394
	.uleb128 0x2
	.long	.LASF63
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF64
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x394
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF65
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF66
	.uleb128 0x5
	.long	0x3c4
	.uleb128 0xb
	.long	.LASF67
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x147
	.uleb128 0x12
	.long	.LASF68
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF69
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0xd
	.byte	0x2a
	.byte	0x1
	.long	0x106e
	.uleb128 0x14
	.long	.LASF70
	.long	0x20000
	.uleb128 0x14
	.long	.LASF71
	.long	0x20001
	.uleb128 0x14
	.long	.LASF72
	.long	0x20002
	.uleb128 0x14
	.long	.LASF73
	.long	0x20003
	.uleb128 0x14
	.long	.LASF74
	.long	0x20004
	.uleb128 0x14
	.long	.LASF75
	.long	0x20005
	.uleb128 0x14
	.long	.LASF76
	.long	0x20006
	.uleb128 0x14
	.long	.LASF77
	.long	0x20007
	.uleb128 0x14
	.long	.LASF78
	.long	0x20008
	.uleb128 0x14
	.long	.LASF79
	.long	0x20009
	.uleb128 0x14
	.long	.LASF80
	.long	0x2000a
	.uleb128 0x14
	.long	.LASF81
	.long	0x2000b
	.uleb128 0x14
	.long	.LASF82
	.long	0x2000c
	.uleb128 0x14
	.long	.LASF83
	.long	0x2000d
	.uleb128 0x14
	.long	.LASF84
	.long	0x2000e
	.uleb128 0x14
	.long	.LASF85
	.long	0x2000f
	.uleb128 0x14
	.long	.LASF86
	.long	0x20010
	.uleb128 0x14
	.long	.LASF87
	.long	0x20011
	.uleb128 0x14
	.long	.LASF88
	.long	0x20012
	.uleb128 0x14
	.long	.LASF89
	.long	0x20013
	.uleb128 0x14
	.long	.LASF90
	.long	0x20014
	.uleb128 0x14
	.long	.LASF91
	.long	0x20015
	.uleb128 0x14
	.long	.LASF92
	.long	0x20016
	.uleb128 0x14
	.long	.LASF93
	.long	0x20017
	.uleb128 0x14
	.long	.LASF94
	.long	0x20018
	.uleb128 0x14
	.long	.LASF95
	.long	0x20019
	.uleb128 0x14
	.long	.LASF96
	.long	0x2001a
	.uleb128 0x14
	.long	.LASF97
	.long	0x2001b
	.uleb128 0x14
	.long	.LASF98
	.long	0x2001c
	.uleb128 0x14
	.long	.LASF99
	.long	0x2001d
	.uleb128 0x14
	.long	.LASF100
	.long	0x2001e
	.uleb128 0x14
	.long	.LASF101
	.long	0x2001f
	.uleb128 0x14
	.long	.LASF102
	.long	0x20020
	.uleb128 0x14
	.long	.LASF103
	.long	0x20021
	.uleb128 0x14
	.long	.LASF104
	.long	0x20022
	.uleb128 0x14
	.long	.LASF105
	.long	0x20023
	.uleb128 0x14
	.long	.LASF106
	.long	0x20024
	.uleb128 0x14
	.long	.LASF107
	.long	0x20025
	.uleb128 0x14
	.long	.LASF108
	.long	0x20026
	.uleb128 0x14
	.long	.LASF109
	.long	0x20027
	.uleb128 0x14
	.long	.LASF110
	.long	0x20028
	.uleb128 0x14
	.long	.LASF111
	.long	0x20029
	.uleb128 0x14
	.long	.LASF112
	.long	0x2002a
	.uleb128 0x14
	.long	.LASF113
	.long	0x2002b
	.uleb128 0x15
	.string	"ERA"
	.long	0x2002c
	.uleb128 0x14
	.long	.LASF114
	.long	0x2002d
	.uleb128 0x14
	.long	.LASF115
	.long	0x2002e
	.uleb128 0x14
	.long	.LASF116
	.long	0x2002f
	.uleb128 0x14
	.long	.LASF117
	.long	0x20030
	.uleb128 0x14
	.long	.LASF118
	.long	0x20031
	.uleb128 0x14
	.long	.LASF119
	.long	0x20032
	.uleb128 0x14
	.long	.LASF120
	.long	0x20033
	.uleb128 0x14
	.long	.LASF121
	.long	0x20034
	.uleb128 0x14
	.long	.LASF122
	.long	0x20035
	.uleb128 0x14
	.long	.LASF123
	.long	0x20036
	.uleb128 0x14
	.long	.LASF124
	.long	0x20037
	.uleb128 0x14
	.long	.LASF125
	.long	0x20038
	.uleb128 0x14
	.long	.LASF126
	.long	0x20039
	.uleb128 0x14
	.long	.LASF127
	.long	0x2003a
	.uleb128 0x14
	.long	.LASF128
	.long	0x2003b
	.uleb128 0x14
	.long	.LASF129
	.long	0x2003c
	.uleb128 0x14
	.long	.LASF130
	.long	0x2003d
	.uleb128 0x14
	.long	.LASF131
	.long	0x2003e
	.uleb128 0x14
	.long	.LASF132
	.long	0x2003f
	.uleb128 0x14
	.long	.LASF133
	.long	0x20040
	.uleb128 0x14
	.long	.LASF134
	.long	0x20041
	.uleb128 0x14
	.long	.LASF135
	.long	0x20042
	.uleb128 0x14
	.long	.LASF136
	.long	0x20043
	.uleb128 0x14
	.long	.LASF137
	.long	0x20044
	.uleb128 0x14
	.long	.LASF138
	.long	0x20045
	.uleb128 0x14
	.long	.LASF139
	.long	0x20046
	.uleb128 0x14
	.long	.LASF140
	.long	0x20047
	.uleb128 0x14
	.long	.LASF141
	.long	0x20048
	.uleb128 0x14
	.long	.LASF142
	.long	0x20049
	.uleb128 0x14
	.long	.LASF143
	.long	0x2004a
	.uleb128 0x14
	.long	.LASF144
	.long	0x2004b
	.uleb128 0x14
	.long	.LASF145
	.long	0x2004c
	.uleb128 0x14
	.long	.LASF146
	.long	0x2004d
	.uleb128 0x14
	.long	.LASF147
	.long	0x2004e
	.uleb128 0x14
	.long	.LASF148
	.long	0x2004f
	.uleb128 0x14
	.long	.LASF149
	.long	0x20050
	.uleb128 0x14
	.long	.LASF150
	.long	0x20051
	.uleb128 0x14
	.long	.LASF151
	.long	0x20052
	.uleb128 0x14
	.long	.LASF152
	.long	0x20053
	.uleb128 0x14
	.long	.LASF153
	.long	0x20054
	.uleb128 0x14
	.long	.LASF154
	.long	0x20055
	.uleb128 0x14
	.long	.LASF155
	.long	0x20056
	.uleb128 0x14
	.long	.LASF156
	.long	0x20057
	.uleb128 0x14
	.long	.LASF157
	.long	0x20058
	.uleb128 0x14
	.long	.LASF158
	.long	0x20059
	.uleb128 0x14
	.long	.LASF159
	.long	0x2005a
	.uleb128 0x14
	.long	.LASF160
	.long	0x2005b
	.uleb128 0x14
	.long	.LASF161
	.long	0x2005c
	.uleb128 0x14
	.long	.LASF162
	.long	0x2005d
	.uleb128 0x14
	.long	.LASF163
	.long	0x2005e
	.uleb128 0x14
	.long	.LASF164
	.long	0x2005f
	.uleb128 0x14
	.long	.LASF165
	.long	0x20060
	.uleb128 0x14
	.long	.LASF166
	.long	0x20061
	.uleb128 0x14
	.long	.LASF167
	.long	0x20062
	.uleb128 0x14
	.long	.LASF168
	.long	0x20063
	.uleb128 0x14
	.long	.LASF169
	.long	0x20064
	.uleb128 0x14
	.long	.LASF170
	.long	0x20065
	.uleb128 0x14
	.long	.LASF171
	.long	0x20066
	.uleb128 0x14
	.long	.LASF172
	.long	0x20067
	.uleb128 0x14
	.long	.LASF173
	.long	0x20068
	.uleb128 0x14
	.long	.LASF174
	.long	0x20069
	.uleb128 0x14
	.long	.LASF175
	.long	0x2006a
	.uleb128 0x14
	.long	.LASF176
	.long	0x2006b
	.uleb128 0x14
	.long	.LASF177
	.long	0x2006c
	.uleb128 0x14
	.long	.LASF178
	.long	0x2006d
	.uleb128 0x14
	.long	.LASF179
	.long	0x2006e
	.uleb128 0x14
	.long	.LASF180
	.long	0x2006f
	.uleb128 0x14
	.long	.LASF181
	.long	0x20070
	.uleb128 0x14
	.long	.LASF182
	.long	0x20071
	.uleb128 0x14
	.long	.LASF183
	.long	0x20072
	.uleb128 0x14
	.long	.LASF184
	.long	0x20073
	.uleb128 0x14
	.long	.LASF185
	.long	0x20074
	.uleb128 0x14
	.long	.LASF186
	.long	0x20075
	.uleb128 0x14
	.long	.LASF187
	.long	0x20076
	.uleb128 0x14
	.long	.LASF188
	.long	0x20077
	.uleb128 0x14
	.long	.LASF189
	.long	0x20078
	.uleb128 0x14
	.long	.LASF190
	.long	0x20079
	.uleb128 0x14
	.long	.LASF191
	.long	0x2007a
	.uleb128 0x14
	.long	.LASF192
	.long	0x2007b
	.uleb128 0x14
	.long	.LASF193
	.long	0x2007c
	.uleb128 0x14
	.long	.LASF194
	.long	0x2007d
	.uleb128 0x14
	.long	.LASF195
	.long	0x2007e
	.uleb128 0x14
	.long	.LASF196
	.long	0x2007f
	.uleb128 0x14
	.long	.LASF197
	.long	0x20080
	.uleb128 0x14
	.long	.LASF198
	.long	0x20081
	.uleb128 0x14
	.long	.LASF199
	.long	0x20082
	.uleb128 0x14
	.long	.LASF200
	.long	0x20083
	.uleb128 0x14
	.long	.LASF201
	.long	0x20084
	.uleb128 0x14
	.long	.LASF202
	.long	0x20085
	.uleb128 0x14
	.long	.LASF203
	.long	0x20086
	.uleb128 0x14
	.long	.LASF204
	.long	0x20087
	.uleb128 0x14
	.long	.LASF205
	.long	0x20088
	.uleb128 0x14
	.long	.LASF206
	.long	0x20089
	.uleb128 0x14
	.long	.LASF207
	.long	0x2008a
	.uleb128 0x14
	.long	.LASF208
	.long	0x2008b
	.uleb128 0x14
	.long	.LASF209
	.long	0x2008c
	.uleb128 0x14
	.long	.LASF210
	.long	0x2008d
	.uleb128 0x14
	.long	.LASF211
	.long	0x2008e
	.uleb128 0x14
	.long	.LASF212
	.long	0x2008f
	.uleb128 0x14
	.long	.LASF213
	.long	0x20090
	.uleb128 0x14
	.long	.LASF214
	.long	0x20091
	.uleb128 0x14
	.long	.LASF215
	.long	0x20092
	.uleb128 0x14
	.long	.LASF216
	.long	0x20093
	.uleb128 0x14
	.long	.LASF217
	.long	0x20094
	.uleb128 0x14
	.long	.LASF218
	.long	0x20095
	.uleb128 0x14
	.long	.LASF219
	.long	0x20096
	.uleb128 0x14
	.long	.LASF220
	.long	0x20097
	.uleb128 0x14
	.long	.LASF221
	.long	0x20098
	.uleb128 0x14
	.long	.LASF222
	.long	0x20099
	.uleb128 0x14
	.long	.LASF223
	.long	0x2009a
	.uleb128 0x14
	.long	.LASF224
	.long	0x2009b
	.uleb128 0x14
	.long	.LASF225
	.long	0x2009c
	.uleb128 0x14
	.long	.LASF226
	.long	0x2009d
	.uleb128 0x14
	.long	.LASF227
	.long	0x2009e
	.uleb128 0x14
	.long	.LASF228
	.long	0x2009f
	.uleb128 0x14
	.long	.LASF229
	.long	0x30000
	.uleb128 0x14
	.long	.LASF230
	.long	0x30001
	.uleb128 0x14
	.long	.LASF231
	.long	0x30002
	.uleb128 0x14
	.long	.LASF232
	.long	0x30003
	.uleb128 0x14
	.long	.LASF233
	.long	0x30004
	.uleb128 0x14
	.long	.LASF234
	.long	0x30005
	.uleb128 0x14
	.long	.LASF235
	.long	0x30006
	.uleb128 0x14
	.long	.LASF236
	.long	0x30007
	.uleb128 0x14
	.long	.LASF237
	.long	0x30008
	.uleb128 0x14
	.long	.LASF238
	.long	0x30009
	.uleb128 0x14
	.long	.LASF239
	.long	0x3000a
	.uleb128 0x14
	.long	.LASF240
	.long	0x3000b
	.uleb128 0x14
	.long	.LASF241
	.long	0x3000c
	.uleb128 0x14
	.long	.LASF242
	.long	0x3000d
	.uleb128 0x14
	.long	.LASF243
	.long	0x3000e
	.uleb128 0x14
	.long	.LASF244
	.long	0x3000f
	.uleb128 0x14
	.long	.LASF245
	.long	0x30010
	.uleb128 0x14
	.long	.LASF246
	.long	0x30011
	.uleb128 0x14
	.long	.LASF247
	.long	0x30012
	.uleb128 0x14
	.long	.LASF248
	.long	0x30013
	.uleb128 0x16
	.long	.LASF249
	.byte	0
	.uleb128 0x16
	.long	.LASF250
	.byte	0x1
	.uleb128 0x16
	.long	.LASF251
	.byte	0x2
	.uleb128 0x16
	.long	.LASF252
	.byte	0x3
	.uleb128 0x16
	.long	.LASF253
	.byte	0x4
	.uleb128 0x16
	.long	.LASF254
	.byte	0x5
	.uleb128 0x16
	.long	.LASF255
	.byte	0x6
	.uleb128 0x16
	.long	.LASF256
	.byte	0x7
	.uleb128 0x16
	.long	.LASF257
	.byte	0x8
	.uleb128 0x16
	.long	.LASF258
	.byte	0x9
	.uleb128 0x16
	.long	.LASF259
	.byte	0xa
	.uleb128 0x16
	.long	.LASF260
	.byte	0xb
	.uleb128 0x16
	.long	.LASF261
	.byte	0xc
	.uleb128 0x16
	.long	.LASF262
	.byte	0xd
	.uleb128 0x16
	.long	.LASF263
	.byte	0xe
	.uleb128 0x16
	.long	.LASF264
	.byte	0xe
	.uleb128 0x16
	.long	.LASF265
	.byte	0xf
	.uleb128 0x16
	.long	.LASF266
	.byte	0x10
	.uleb128 0x16
	.long	.LASF267
	.byte	0x11
	.uleb128 0x16
	.long	.LASF268
	.byte	0x12
	.uleb128 0x16
	.long	.LASF269
	.byte	0x13
	.uleb128 0x16
	.long	.LASF270
	.byte	0x14
	.uleb128 0x16
	.long	.LASF271
	.byte	0x15
	.uleb128 0x16
	.long	.LASF272
	.byte	0x16
	.uleb128 0x16
	.long	.LASF273
	.byte	0x17
	.uleb128 0x16
	.long	.LASF274
	.byte	0x18
	.uleb128 0x16
	.long	.LASF275
	.byte	0x19
	.uleb128 0x16
	.long	.LASF276
	.byte	0x1a
	.uleb128 0x16
	.long	.LASF277
	.byte	0x1b
	.uleb128 0x16
	.long	.LASF278
	.byte	0x1c
	.uleb128 0x16
	.long	.LASF279
	.byte	0x1d
	.uleb128 0x16
	.long	.LASF280
	.byte	0x1e
	.uleb128 0x16
	.long	.LASF281
	.byte	0x1f
	.uleb128 0x16
	.long	.LASF282
	.byte	0x20
	.uleb128 0x16
	.long	.LASF283
	.byte	0x21
	.uleb128 0x16
	.long	.LASF284
	.byte	0x22
	.uleb128 0x16
	.long	.LASF285
	.byte	0x23
	.uleb128 0x16
	.long	.LASF286
	.byte	0x24
	.uleb128 0x16
	.long	.LASF287
	.byte	0x25
	.uleb128 0x16
	.long	.LASF288
	.byte	0x26
	.uleb128 0x16
	.long	.LASF289
	.byte	0x27
	.uleb128 0x16
	.long	.LASF290
	.byte	0x28
	.uleb128 0x16
	.long	.LASF291
	.byte	0x29
	.uleb128 0x16
	.long	.LASF292
	.byte	0x2a
	.uleb128 0x16
	.long	.LASF293
	.byte	0x2b
	.uleb128 0x16
	.long	.LASF294
	.byte	0x2c
	.uleb128 0x16
	.long	.LASF295
	.byte	0x2d
	.uleb128 0x16
	.long	.LASF296
	.byte	0x2e
	.uleb128 0x16
	.long	.LASF297
	.byte	0x2f
	.uleb128 0x16
	.long	.LASF298
	.byte	0x30
	.uleb128 0x16
	.long	.LASF299
	.byte	0x31
	.uleb128 0x16
	.long	.LASF300
	.byte	0x32
	.uleb128 0x16
	.long	.LASF301
	.byte	0x33
	.uleb128 0x16
	.long	.LASF302
	.byte	0x34
	.uleb128 0x16
	.long	.LASF303
	.byte	0x35
	.uleb128 0x16
	.long	.LASF304
	.byte	0x36
	.uleb128 0x16
	.long	.LASF305
	.byte	0x37
	.uleb128 0x16
	.long	.LASF306
	.byte	0x38
	.uleb128 0x16
	.long	.LASF307
	.byte	0x39
	.uleb128 0x16
	.long	.LASF308
	.byte	0x3a
	.uleb128 0x16
	.long	.LASF309
	.byte	0x3b
	.uleb128 0x16
	.long	.LASF310
	.byte	0x3c
	.uleb128 0x16
	.long	.LASF311
	.byte	0x3d
	.uleb128 0x16
	.long	.LASF312
	.byte	0x3e
	.uleb128 0x16
	.long	.LASF313
	.byte	0x3f
	.uleb128 0x16
	.long	.LASF314
	.byte	0x40
	.uleb128 0x16
	.long	.LASF315
	.byte	0x41
	.uleb128 0x16
	.long	.LASF316
	.byte	0x42
	.uleb128 0x16
	.long	.LASF317
	.byte	0x43
	.uleb128 0x16
	.long	.LASF318
	.byte	0x44
	.uleb128 0x16
	.long	.LASF319
	.byte	0x45
	.uleb128 0x16
	.long	.LASF320
	.byte	0x46
	.uleb128 0x16
	.long	.LASF321
	.byte	0x47
	.uleb128 0x16
	.long	.LASF322
	.byte	0x48
	.uleb128 0x16
	.long	.LASF323
	.byte	0x49
	.uleb128 0x16
	.long	.LASF324
	.byte	0x4a
	.uleb128 0x16
	.long	.LASF325
	.byte	0x4b
	.uleb128 0x16
	.long	.LASF326
	.byte	0x4c
	.uleb128 0x16
	.long	.LASF327
	.byte	0x4d
	.uleb128 0x16
	.long	.LASF328
	.byte	0x4e
	.uleb128 0x16
	.long	.LASF329
	.byte	0x4f
	.uleb128 0x16
	.long	.LASF330
	.byte	0x50
	.uleb128 0x16
	.long	.LASF331
	.byte	0x51
	.uleb128 0x16
	.long	.LASF332
	.byte	0x52
	.uleb128 0x16
	.long	.LASF333
	.byte	0x53
	.uleb128 0x16
	.long	.LASF334
	.byte	0x54
	.uleb128 0x16
	.long	.LASF335
	.byte	0x55
	.uleb128 0x16
	.long	.LASF336
	.byte	0x56
	.uleb128 0x14
	.long	.LASF337
	.long	0x40000
	.uleb128 0x14
	.long	.LASF338
	.long	0x40001
	.uleb128 0x14
	.long	.LASF339
	.long	0x40002
	.uleb128 0x14
	.long	.LASF340
	.long	0x40003
	.uleb128 0x14
	.long	.LASF341
	.long	0x40004
	.uleb128 0x14
	.long	.LASF342
	.long	0x40005
	.uleb128 0x14
	.long	.LASF343
	.long	0x40006
	.uleb128 0x14
	.long	.LASF344
	.long	0x40007
	.uleb128 0x14
	.long	.LASF345
	.long	0x40008
	.uleb128 0x14
	.long	.LASF346
	.long	0x40009
	.uleb128 0x14
	.long	.LASF347
	.long	0x4000a
	.uleb128 0x14
	.long	.LASF348
	.long	0x4000b
	.uleb128 0x14
	.long	.LASF349
	.long	0x4000c
	.uleb128 0x14
	.long	.LASF350
	.long	0x4000d
	.uleb128 0x14
	.long	.LASF351
	.long	0x4000e
	.uleb128 0x14
	.long	.LASF352
	.long	0x4000f
	.uleb128 0x14
	.long	.LASF353
	.long	0x40010
	.uleb128 0x14
	.long	.LASF354
	.long	0x40011
	.uleb128 0x14
	.long	.LASF355
	.long	0x40012
	.uleb128 0x14
	.long	.LASF356
	.long	0x40013
	.uleb128 0x14
	.long	.LASF357
	.long	0x40014
	.uleb128 0x14
	.long	.LASF358
	.long	0x40015
	.uleb128 0x14
	.long	.LASF359
	.long	0x40016
	.uleb128 0x14
	.long	.LASF360
	.long	0x40017
	.uleb128 0x14
	.long	.LASF361
	.long	0x40018
	.uleb128 0x14
	.long	.LASF362
	.long	0x40019
	.uleb128 0x14
	.long	.LASF363
	.long	0x4001a
	.uleb128 0x14
	.long	.LASF364
	.long	0x4001b
	.uleb128 0x14
	.long	.LASF365
	.long	0x4001c
	.uleb128 0x14
	.long	.LASF366
	.long	0x4001d
	.uleb128 0x14
	.long	.LASF367
	.long	0x4001e
	.uleb128 0x14
	.long	.LASF368
	.long	0x4001f
	.uleb128 0x14
	.long	.LASF369
	.long	0x40020
	.uleb128 0x14
	.long	.LASF370
	.long	0x40021
	.uleb128 0x14
	.long	.LASF371
	.long	0x40022
	.uleb128 0x14
	.long	.LASF372
	.long	0x40023
	.uleb128 0x14
	.long	.LASF373
	.long	0x40024
	.uleb128 0x14
	.long	.LASF374
	.long	0x40025
	.uleb128 0x14
	.long	.LASF375
	.long	0x40026
	.uleb128 0x14
	.long	.LASF376
	.long	0x40027
	.uleb128 0x14
	.long	.LASF377
	.long	0x40028
	.uleb128 0x14
	.long	.LASF378
	.long	0x40029
	.uleb128 0x14
	.long	.LASF379
	.long	0x4002a
	.uleb128 0x14
	.long	.LASF380
	.long	0x4002b
	.uleb128 0x14
	.long	.LASF381
	.long	0x4002c
	.uleb128 0x14
	.long	.LASF382
	.long	0x4002d
	.uleb128 0x14
	.long	.LASF383
	.long	0x4002e
	.uleb128 0x14
	.long	.LASF384
	.long	0x10000
	.uleb128 0x14
	.long	.LASF385
	.long	0x10000
	.uleb128 0x14
	.long	.LASF386
	.long	0x10001
	.uleb128 0x14
	.long	.LASF387
	.long	0x10001
	.uleb128 0x14
	.long	.LASF388
	.long	0x10002
	.uleb128 0x14
	.long	.LASF389
	.long	0x10003
	.uleb128 0x14
	.long	.LASF390
	.long	0x10004
	.uleb128 0x14
	.long	.LASF391
	.long	0x10005
	.uleb128 0x14
	.long	.LASF392
	.long	0x10006
	.uleb128 0x14
	.long	.LASF393
	.long	0x50000
	.uleb128 0x14
	.long	.LASF394
	.long	0x50001
	.uleb128 0x14
	.long	.LASF395
	.long	0x50002
	.uleb128 0x14
	.long	.LASF396
	.long	0x50003
	.uleb128 0x14
	.long	.LASF397
	.long	0x50004
	.uleb128 0x14
	.long	.LASF398
	.long	0x50005
	.uleb128 0x14
	.long	.LASF399
	.long	0x70000
	.uleb128 0x14
	.long	.LASF400
	.long	0x70001
	.uleb128 0x14
	.long	.LASF401
	.long	0x70002
	.uleb128 0x14
	.long	.LASF402
	.long	0x70003
	.uleb128 0x14
	.long	.LASF403
	.long	0x80000
	.uleb128 0x14
	.long	.LASF404
	.long	0x80001
	.uleb128 0x14
	.long	.LASF405
	.long	0x80002
	.uleb128 0x14
	.long	.LASF406
	.long	0x80003
	.uleb128 0x14
	.long	.LASF407
	.long	0x80004
	.uleb128 0x14
	.long	.LASF408
	.long	0x80005
	.uleb128 0x14
	.long	.LASF409
	.long	0x80006
	.uleb128 0x14
	.long	.LASF410
	.long	0x80007
	.uleb128 0x14
	.long	.LASF411
	.long	0x90000
	.uleb128 0x14
	.long	.LASF412
	.long	0x90001
	.uleb128 0x14
	.long	.LASF413
	.long	0x90002
	.uleb128 0x14
	.long	.LASF414
	.long	0x90003
	.uleb128 0x14
	.long	.LASF415
	.long	0x90004
	.uleb128 0x14
	.long	.LASF416
	.long	0x90005
	.uleb128 0x14
	.long	.LASF417
	.long	0x90006
	.uleb128 0x14
	.long	.LASF418
	.long	0x90007
	.uleb128 0x14
	.long	.LASF419
	.long	0x90008
	.uleb128 0x14
	.long	.LASF420
	.long	0x90009
	.uleb128 0x14
	.long	.LASF421
	.long	0x9000a
	.uleb128 0x14
	.long	.LASF422
	.long	0x9000b
	.uleb128 0x14
	.long	.LASF423
	.long	0x9000c
	.uleb128 0x14
	.long	.LASF424
	.long	0x9000d
	.uleb128 0x14
	.long	.LASF425
	.long	0xa0000
	.uleb128 0x14
	.long	.LASF426
	.long	0xa0001
	.uleb128 0x14
	.long	.LASF427
	.long	0xa0002
	.uleb128 0x14
	.long	.LASF428
	.long	0xa0003
	.uleb128 0x14
	.long	.LASF429
	.long	0xa0004
	.uleb128 0x14
	.long	.LASF430
	.long	0xa0005
	.uleb128 0x14
	.long	.LASF431
	.long	0xb0000
	.uleb128 0x14
	.long	.LASF432
	.long	0xb0001
	.uleb128 0x14
	.long	.LASF433
	.long	0xb0002
	.uleb128 0x14
	.long	.LASF434
	.long	0xc0000
	.uleb128 0x14
	.long	.LASF435
	.long	0xc0001
	.uleb128 0x14
	.long	.LASF436
	.long	0xc0002
	.uleb128 0x14
	.long	.LASF437
	.long	0xc0003
	.uleb128 0x14
	.long	.LASF438
	.long	0xc0004
	.uleb128 0x14
	.long	.LASF439
	.long	0xc0005
	.uleb128 0x14
	.long	.LASF440
	.long	0xc0006
	.uleb128 0x14
	.long	.LASF441
	.long	0xc0007
	.uleb128 0x14
	.long	.LASF442
	.long	0xc0008
	.uleb128 0x14
	.long	.LASF443
	.long	0xc0009
	.uleb128 0x14
	.long	.LASF444
	.long	0xc000a
	.uleb128 0x14
	.long	.LASF445
	.long	0xc000b
	.uleb128 0x14
	.long	.LASF446
	.long	0xc000c
	.uleb128 0x14
	.long	.LASF447
	.long	0xc000d
	.uleb128 0x14
	.long	.LASF448
	.long	0xc000e
	.uleb128 0x14
	.long	.LASF449
	.long	0xc000f
	.uleb128 0x14
	.long	.LASF450
	.long	0xc0010
	.uleb128 0x14
	.long	.LASF451
	.long	0xc0011
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0xe
	.byte	0x13
	.byte	0xe
	.long	0x108f
	.uleb128 0x16
	.long	.LASF452
	.byte	0
	.uleb128 0x16
	.long	.LASF453
	.byte	0x1
	.uleb128 0x16
	.long	.LASF454
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.long	.LASF455
	.byte	0xe
	.byte	0x13
	.byte	0x44
	.long	0x106e
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0xe
	.byte	0x15
	.byte	0x6
	.long	0x10c2
	.uleb128 0x16
	.long	.LASF456
	.byte	0x1
	.uleb128 0x16
	.long	.LASF457
	.byte	0x2
	.uleb128 0x16
	.long	.LASF458
	.byte	0x4
	.uleb128 0x16
	.long	.LASF459
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	.LASF460
	.uleb128 0x2
	.long	.LASF461
	.byte	0xf
	.byte	0x19
	.byte	0x1f
	.long	0x10c2
	.uleb128 0xb
	.long	.LASF462
	.byte	0x10
	.byte	0x3d
	.byte	0x10
	.long	0x10df
	.uleb128 0x3
	.byte	0x8
	.long	0x10e5
	.uleb128 0x17
	.uleb128 0x2
	.long	.LASF463
	.byte	0x10
	.byte	0x3e
	.byte	0x19
	.long	0x10d3
	.uleb128 0x2
	.long	.LASF464
	.byte	0x11
	.byte	0x32
	.byte	0xf
	.long	0x10df
	.uleb128 0x2
	.long	.LASF465
	.byte	0x11
	.byte	0x35
	.byte	0x15
	.long	0xe6
	.uleb128 0x2
	.long	.LASF466
	.byte	0x11
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0x39
	.long	0x1126
	.uleb128 0x10
	.long	0xdf
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF467
	.byte	0x12
	.byte	0x9f
	.byte	0xe
	.long	0x1116
	.uleb128 0x2
	.long	.LASF468
	.byte	0x12
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF469
	.byte	0x12
	.byte	0xa1
	.byte	0x11
	.long	0x110
	.uleb128 0x2
	.long	.LASF470
	.byte	0x12
	.byte	0xa6
	.byte	0xe
	.long	0x1116
	.uleb128 0x2
	.long	.LASF471
	.byte	0x12
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF472
	.byte	0x12
	.byte	0xaf
	.byte	0x11
	.long	0x110
	.uleb128 0x12
	.long	.LASF473
	.byte	0x12
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xc8
	.long	0x118b
	.uleb128 0x10
	.long	0xdf
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x117b
	.uleb128 0x12
	.long	.LASF474
	.byte	0x13
	.value	0x11e
	.byte	0x1a
	.long	0x118b
	.uleb128 0x12
	.long	.LASF475
	.byte	0x13
	.value	0x11f
	.byte	0x1a
	.long	0x118b
	.uleb128 0x12
	.long	.LASF476
	.byte	0x14
	.value	0x21f
	.byte	0xf
	.long	0x11b7
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x12
	.long	.LASF477
	.byte	0x14
	.value	0x221
	.byte	0xf
	.long	0x11b7
	.uleb128 0x2
	.long	.LASF478
	.byte	0x15
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF479
	.byte	0x15
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF480
	.byte	0x16
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF481
	.byte	0x17
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xb
	.long	.LASF482
	.byte	0x18
	.byte	0x65
	.byte	0x15
	.long	0x117
	.uleb128 0xb
	.long	.LASF483
	.byte	0x18
	.byte	0x66
	.byte	0x16
	.long	0x123
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x19
	.byte	0x29
	.byte	0x6
	.long	0x122a
	.uleb128 0x14
	.long	.LASF484
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x19
	.byte	0x2a
	.byte	0x6
	.long	0x123f
	.uleb128 0x16
	.long	.LASF485
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1a
	.byte	0x2f
	.byte	0x1
	.long	0x129e
	.uleb128 0x18
	.long	.LASF486
	.value	0x100
	.uleb128 0x18
	.long	.LASF487
	.value	0x200
	.uleb128 0x18
	.long	.LASF488
	.value	0x400
	.uleb128 0x18
	.long	.LASF489
	.value	0x800
	.uleb128 0x18
	.long	.LASF490
	.value	0x1000
	.uleb128 0x18
	.long	.LASF491
	.value	0x2000
	.uleb128 0x18
	.long	.LASF492
	.value	0x4000
	.uleb128 0x18
	.long	.LASF493
	.value	0x8000
	.uleb128 0x16
	.long	.LASF494
	.byte	0x1
	.uleb128 0x16
	.long	.LASF495
	.byte	0x2
	.uleb128 0x16
	.long	.LASF496
	.byte	0x4
	.uleb128 0x16
	.long	.LASF497
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x12bc
	.uleb128 0x1a
	.long	.LASF498
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF499
	.sleb128 -131
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0x12c7
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x12bc
	.uleb128 0x2
	.long	.LASF500
	.byte	0x1b
	.byte	0x19
	.byte	0x13
	.long	0x12c7
	.uleb128 0x2
	.long	.LASF501
	.byte	0x1c
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x1b
	.long	.LASF515
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1d
	.byte	0x20
	.byte	0x6
	.long	0x1339
	.uleb128 0x16
	.long	.LASF502
	.byte	0
	.uleb128 0x16
	.long	.LASF503
	.byte	0x1
	.uleb128 0x16
	.long	.LASF504
	.byte	0x2
	.uleb128 0x16
	.long	.LASF505
	.byte	0x3
	.uleb128 0x16
	.long	.LASF506
	.byte	0x4
	.uleb128 0x16
	.long	.LASF507
	.byte	0x5
	.uleb128 0x16
	.long	.LASF508
	.byte	0x6
	.uleb128 0x16
	.long	.LASF509
	.byte	0x7
	.uleb128 0x16
	.long	.LASF510
	.byte	0x8
	.uleb128 0x16
	.long	.LASF511
	.byte	0x9
	.uleb128 0x16
	.long	.LASF512
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x12e4
	.uleb128 0x12
	.long	.LASF513
	.byte	0x1d
	.value	0x10b
	.byte	0x1a
	.long	0x394
	.uleb128 0xf
	.long	0x1339
	.long	0x1356
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x134b
	.uleb128 0x12
	.long	.LASF514
	.byte	0x1d
	.value	0x10c
	.byte	0x21
	.long	0x1356
	.uleb128 0x1b
	.long	.LASF516
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1e
	.byte	0x19
	.byte	0x6
	.long	0x1399
	.uleb128 0x16
	.long	.LASF517
	.byte	0
	.uleb128 0x16
	.long	.LASF518
	.byte	0x1
	.uleb128 0x16
	.long	.LASF519
	.byte	0x2
	.uleb128 0x16
	.long	.LASF520
	.byte	0x3
	.uleb128 0x16
	.long	.LASF521
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF516
	.byte	0x1e
	.byte	0x26
	.byte	0x1b
	.long	0x1368
	.uleb128 0x8
	.long	.LASF522
	.byte	0x10
	.byte	0x1f
	.byte	0x14
	.byte	0x8
	.long	0x13cb
	.uleb128 0xa
	.string	"lo"
	.byte	0x1f
	.byte	0x16
	.byte	0xf
	.long	0x1206
	.byte	0
	.uleb128 0xa
	.string	"hi"
	.byte	0x1f
	.byte	0x17
	.byte	0xf
	.long	0x1206
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.string	"frp"
	.byte	0x1f
	.byte	0x1b
	.byte	0x21
	.long	0x13d7
	.uleb128 0x3
	.byte	0x8
	.long	0x13a5
	.uleb128 0x2
	.long	.LASF523
	.byte	0x1f
	.byte	0x1e
	.byte	0xf
	.long	0xd3
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1f
	.byte	0x22
	.byte	0x1
	.long	0x140a
	.uleb128 0x16
	.long	.LASF524
	.byte	0x1
	.uleb128 0x16
	.long	.LASF525
	.byte	0x2
	.uleb128 0x16
	.long	.LASF526
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0x2e
	.byte	0x6
	.long	0x141f
	.uleb128 0x16
	.long	.LASF527
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0x31
	.byte	0x1
	.long	0x1482
	.uleb128 0x16
	.long	.LASF528
	.byte	0x80
	.uleb128 0x16
	.long	.LASF529
	.byte	0x81
	.uleb128 0x16
	.long	.LASF530
	.byte	0x82
	.uleb128 0x16
	.long	.LASF531
	.byte	0x83
	.uleb128 0x16
	.long	.LASF532
	.byte	0x84
	.uleb128 0x16
	.long	.LASF533
	.byte	0x85
	.uleb128 0x16
	.long	.LASF534
	.byte	0x86
	.uleb128 0x16
	.long	.LASF535
	.byte	0x87
	.uleb128 0x16
	.long	.LASF536
	.byte	0x88
	.uleb128 0x16
	.long	.LASF537
	.byte	0x89
	.uleb128 0x16
	.long	.LASF538
	.byte	0x8a
	.uleb128 0x16
	.long	.LASF539
	.byte	0x8b
	.uleb128 0x16
	.long	.LASF540
	.byte	0x8c
	.uleb128 0x16
	.long	.LASF541
	.byte	0x8d
	.byte	0
	.uleb128 0x1b
	.long	.LASF542
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0x42
	.byte	0x6
	.long	0x14b3
	.uleb128 0x16
	.long	.LASF543
	.byte	0
	.uleb128 0x16
	.long	.LASF544
	.byte	0x1
	.uleb128 0x16
	.long	.LASF545
	.byte	0x2
	.uleb128 0x16
	.long	.LASF546
	.byte	0x3
	.uleb128 0x16
	.long	.LASF547
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x1482
	.uleb128 0xf
	.long	0xc8
	.long	0x14c8
	.uleb128 0x10
	.long	0xdf
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x14b8
	.uleb128 0x1d
	.long	.LASF548
	.byte	0x2
	.byte	0x4b
	.byte	0x1a
	.long	0x14c8
	.uleb128 0x9
	.byte	0x3
	.quad	scale_from_args
	.uleb128 0xf
	.long	0x14b3
	.long	0x14f3
	.uleb128 0x10
	.long	0xdf
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x14e3
	.uleb128 0x1d
	.long	.LASF549
	.byte	0x2
	.byte	0x50
	.byte	0x1e
	.long	0x14f3
	.uleb128 0x9
	.byte	0x3
	.quad	scale_from_types
	.uleb128 0xf
	.long	0xc8
	.long	0x151e
	.uleb128 0x10
	.long	0xdf
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x150e
	.uleb128 0x1d
	.long	.LASF550
	.byte	0x2
	.byte	0x55
	.byte	0x1a
	.long	0x151e
	.uleb128 0x9
	.byte	0x3
	.quad	scale_to_args
	.uleb128 0xf
	.long	0x14b3
	.long	0x1549
	.uleb128 0x10
	.long	0xdf
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x1539
	.uleb128 0x1d
	.long	.LASF551
	.byte	0x2
	.byte	0x5a
	.byte	0x1e
	.long	0x1549
	.uleb128 0x9
	.byte	0x3
	.quad	scale_to_types
	.uleb128 0x1b
	.long	.LASF552
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0x60
	.byte	0x6
	.long	0x1595
	.uleb128 0x16
	.long	.LASF553
	.byte	0
	.uleb128 0x16
	.long	.LASF554
	.byte	0x1
	.uleb128 0x16
	.long	.LASF555
	.byte	0x2
	.uleb128 0x16
	.long	.LASF556
	.byte	0x3
	.uleb128 0x16
	.long	.LASF557
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x1564
	.uleb128 0x1d
	.long	.LASF558
	.byte	0x2
	.byte	0x69
	.byte	0x1a
	.long	0x14c8
	.uleb128 0x9
	.byte	0x3
	.quad	round_args
	.uleb128 0xf
	.long	0x1595
	.long	0x15c0
	.uleb128 0x10
	.long	0xdf
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x15b0
	.uleb128 0x1d
	.long	.LASF559
	.byte	0x2
	.byte	0x6e
	.byte	0x1e
	.long	0x15c0
	.uleb128 0x9
	.byte	0x3
	.quad	round_types
	.uleb128 0x1b
	.long	.LASF560
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0x74
	.byte	0x6
	.long	0x1606
	.uleb128 0x16
	.long	.LASF561
	.byte	0
	.uleb128 0x16
	.long	.LASF562
	.byte	0x1
	.uleb128 0x16
	.long	.LASF563
	.byte	0x2
	.uleb128 0x16
	.long	.LASF564
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x15db
	.uleb128 0x1d
	.long	.LASF565
	.byte	0x2
	.byte	0x7c
	.byte	0x1a
	.long	0x151e
	.uleb128 0x9
	.byte	0x3
	.quad	inval_args
	.uleb128 0xf
	.long	0x1606
	.long	0x1631
	.uleb128 0x10
	.long	0xdf
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x1621
	.uleb128 0x1d
	.long	.LASF566
	.byte	0x2
	.byte	0x81
	.byte	0x1e
	.long	0x1631
	.uleb128 0x9
	.byte	0x3
	.quad	inval_types
	.uleb128 0xf
	.long	0xbd
	.long	0x165c
	.uleb128 0x10
	.long	0xdf
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	0x164c
	.uleb128 0x1d
	.long	.LASF567
	.byte	0x2
	.byte	0x86
	.byte	0x1c
	.long	0x165c
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0x9e
	.byte	0x6
	.long	0x168c
	.uleb128 0x16
	.long	.LASF568
	.byte	0x80
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0xa2
	.byte	0x6
	.long	0x16a1
	.uleb128 0x16
	.long	.LASF569
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0xa8
	.byte	0x6
	.long	0x16b6
	.uleb128 0x16
	.long	.LASF570
	.byte	0x1b
	.byte	0
	.uleb128 0x1d
	.long	.LASF571
	.byte	0x2
	.byte	0xaa
	.byte	0x18
	.long	0x1482
	.uleb128 0x9
	.byte	0x3
	.quad	scale_from
	.uleb128 0x1d
	.long	.LASF572
	.byte	0x2
	.byte	0xab
	.byte	0x18
	.long	0x1482
	.uleb128 0x9
	.byte	0x3
	.quad	scale_to
	.uleb128 0x1d
	.long	.LASF573
	.byte	0x2
	.byte	0xac
	.byte	0x18
	.long	0x1564
	.uleb128 0x9
	.byte	0x3
	.quad	round_style
	.uleb128 0x1d
	.long	.LASF574
	.byte	0x2
	.byte	0xad
	.byte	0x18
	.long	0x15db
	.uleb128 0x9
	.byte	0x3
	.quad	inval_style
	.uleb128 0x1d
	.long	.LASF575
	.byte	0x2
	.byte	0xae
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	suffix
	.uleb128 0x1d
	.long	.LASF576
	.byte	0x2
	.byte	0xaf
	.byte	0x12
	.long	0x1206
	.uleb128 0x9
	.byte	0x3
	.quad	from_unit_size
	.uleb128 0x1d
	.long	.LASF577
	.byte	0x2
	.byte	0xb0
	.byte	0x12
	.long	0x1206
	.uleb128 0x9
	.byte	0x3
	.quad	to_unit_size
	.uleb128 0x1d
	.long	.LASF578
	.byte	0x2
	.byte	0xb1
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	grouping
	.uleb128 0x1d
	.long	.LASF579
	.byte	0x2
	.byte	0xb2
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	padding_buffer
	.uleb128 0x1d
	.long	.LASF580
	.byte	0x2
	.byte	0xb3
	.byte	0xf
	.long	0xd3
	.uleb128 0x9
	.byte	0x3
	.quad	padding_buffer_size
	.uleb128 0x1d
	.long	.LASF581
	.byte	0x2
	.byte	0xb4
	.byte	0x11
	.long	0x110
	.uleb128 0x9
	.byte	0x3
	.quad	padding_width
	.uleb128 0x1d
	.long	.LASF582
	.byte	0x2
	.byte	0xb5
	.byte	0x11
	.long	0x110
	.uleb128 0x9
	.byte	0x3
	.quad	zero_padding_width
	.uleb128 0x1d
	.long	.LASF583
	.byte	0x2
	.byte	0xb6
	.byte	0x11
	.long	0x110
	.uleb128 0x9
	.byte	0x3
	.quad	user_precision
	.uleb128 0x1d
	.long	.LASF584
	.byte	0x2
	.byte	0xb7
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	format_str
	.uleb128 0x1d
	.long	.LASF585
	.byte	0x2
	.byte	0xb8
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	format_str_prefix
	.uleb128 0x1d
	.long	.LASF586
	.byte	0x2
	.byte	0xb9
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	format_str_suffix
	.uleb128 0x1d
	.long	.LASF587
	.byte	0x2
	.byte	0xbc
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	conv_exit_code
	.uleb128 0x1d
	.long	.LASF588
	.byte	0x2
	.byte	0xc0
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	auto_padding
	.uleb128 0x1d
	.long	.LASF589
	.byte	0x2
	.byte	0xc1
	.byte	0x14
	.long	0x108f
	.uleb128 0x9
	.byte	0x3
	.quad	padding_alignment
	.uleb128 0x1d
	.long	.LASF590
	.byte	0x2
	.byte	0xc4
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	delimiter
	.uleb128 0x1d
	.long	.LASF591
	.byte	0x2
	.byte	0xc7
	.byte	0x16
	.long	0xf4
	.uleb128 0x9
	.byte	0x3
	.quad	line_delim
	.uleb128 0x1d
	.long	.LASF592
	.byte	0x2
	.byte	0xca
	.byte	0x12
	.long	0x1206
	.uleb128 0x9
	.byte	0x3
	.quad	header
	.uleb128 0x1d
	.long	.LASF593
	.byte	0x2
	.byte	0xce
	.byte	0xd
	.long	0x18b0
	.uleb128 0x9
	.byte	0x3
	.quad	debug
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF594
	.uleb128 0x1d
	.long	.LASF595
	.byte	0x2
	.byte	0xd1
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	decimal_point
	.uleb128 0x1d
	.long	.LASF596
	.byte	0x2
	.byte	0xd2
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	decimal_point_length
	.uleb128 0x1d
	.long	.LASF597
	.byte	0x2
	.byte	0xd5
	.byte	0xd
	.long	0x18b0
	.uleb128 0x9
	.byte	0x3
	.quad	dev_debug
	.uleb128 0x1e
	.long	.LASF598
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.value	0x1b4
	.byte	0x6
	.long	0x1937
	.uleb128 0x16
	.long	.LASF599
	.byte	0
	.uleb128 0x16
	.long	.LASF600
	.byte	0x1
	.uleb128 0x16
	.long	.LASF601
	.byte	0x2
	.uleb128 0x16
	.long	.LASF602
	.byte	0x3
	.uleb128 0x16
	.long	.LASF603
	.byte	0x4
	.uleb128 0x16
	.long	.LASF604
	.byte	0x5
	.uleb128 0x16
	.long	.LASF605
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.long	.LASF638
	.byte	0x2
	.value	0x59f
	.byte	0x1
	.long	0x57
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a94
	.uleb128 0x20
	.long	.LASF606
	.byte	0x2
	.value	0x59f
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.long	.LASF607
	.byte	0x2
	.value	0x59f
	.byte	0x18
	.long	0x11b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF608
	.byte	0x2
	.value	0x5a1
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.long	.LASF609
	.byte	0x2
	.value	0x5a2
	.byte	0x8
	.long	0x18b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x21
	.long	.LASF610
	.byte	0x2
	.value	0x66d
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x30
	.long	0x1a0c
	.uleb128 0x23
	.string	"c"
	.byte	0x2
	.value	0x5b8
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x24
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x24
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x24
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0
	.uleb128 0x24
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x24
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x25
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x21
	.long	.LASF611
	.byte	0x2
	.value	0x64c
	.byte	0xd
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF612
	.byte	0x2
	.value	0x64d
	.byte	0xe
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"len"
	.byte	0x2
	.value	0x64e
	.byte	0xf
	.long	0x347
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x21
	.long	.LASF613
	.byte	0x2
	.value	0x657
	.byte	0x10
	.long	0x18b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF617
	.byte	0x2
	.value	0x578
	.byte	0x1
	.long	0x57
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b08
	.uleb128 0x20
	.long	.LASF611
	.byte	0x2
	.value	0x578
	.byte	0x15
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF613
	.byte	0x2
	.value	0x578
	.byte	0x20
	.long	0x18b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF614
	.byte	0x2
	.value	0x57a
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF615
	.byte	0x2
	.value	0x57b
	.byte	0xd
	.long	0x1206
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF616
	.byte	0x2
	.value	0x57c
	.byte	0x8
	.long	0x18b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x26
	.long	.LASF618
	.byte	0x2
	.value	0x55c
	.byte	0x1
	.long	0x18b0
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b7e
	.uleb128 0x20
	.long	.LASF619
	.byte	0x2
	.value	0x55c
	.byte	0x16
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF615
	.byte	0x2
	.value	0x55c
	.byte	0x26
	.long	0x1206
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"val"
	.byte	0x2
	.value	0x55e
	.byte	0xf
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF620
	.byte	0x2
	.value	0x55f
	.byte	0xa
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF616
	.byte	0x2
	.value	0x560
	.byte	0x8
	.long	0x18b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.byte	0
	.uleb128 0x27
	.long	.LASF621
	.byte	0x2
	.value	0x54a
	.byte	0x1
	.long	0x18b0
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bc0
	.uleb128 0x20
	.long	.LASF615
	.byte	0x2
	.value	0x54a
	.byte	0x1a
	.long	0x1206
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.value	0x54c
	.byte	0x1c
	.long	0x13d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF622
	.byte	0x2
	.value	0x52d
	.byte	0x1
	.long	0x39
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c14
	.uleb128 0x20
	.long	.LASF611
	.byte	0x2
	.value	0x52d
	.byte	0x14
	.long	0x11b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF623
	.byte	0x2
	.value	0x52f
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF624
	.byte	0x2
	.value	0x530
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x26
	.long	.LASF625
	.byte	0x2
	.value	0x4f6
	.byte	0x1
	.long	0x57
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cde
	.uleb128 0x20
	.long	.LASF619
	.byte	0x2
	.value	0x4f6
	.byte	0x20
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF626
	.byte	0x2
	.value	0x4f6
	.byte	0x33
	.long	0x1cde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF620
	.byte	0x2
	.value	0x4f7
	.byte	0x22
	.long	0x1ce4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.long	.LASF615
	.byte	0x2
	.value	0x4f7
	.byte	0x36
	.long	0x110
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.value	0x508
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF627
	.byte	0x2
	.value	0x50b
	.byte	0x16
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"val"
	.byte	0x2
	.value	0x51c
	.byte	0xf
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"e"
	.byte	0x2
	.value	0x51d
	.byte	0x1c
	.long	0x18f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x21
	.long	.LASF628
	.byte	0x2
	.value	0x4fb
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3c4
	.uleb128 0x3
	.byte	0x8
	.long	0xd3
	.uleb128 0x28
	.long	.LASF704
	.byte	0x2
	.value	0x4e8
	.byte	0x1
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF629
	.byte	0x2
	.value	0x4aa
	.byte	0x1
	.long	0x57
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d9c
	.uleb128 0x29
	.string	"val"
	.byte	0x2
	.value	0x4aa
	.byte	0x2a
	.long	0x3cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF620
	.byte	0x2
	.value	0x4aa
	.byte	0x36
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x23
	.string	"buf"
	.byte	0x2
	.value	0x4ad
	.byte	0x8
	.long	0x1d9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF630
	.byte	0x2
	.value	0x4af
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x23
	.string	"x"
	.byte	0x2
	.value	0x4b2
	.byte	0x10
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x23
	.string	"w"
	.byte	0x2
	.value	0x4d8
	.byte	0xe
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x3f
	.long	0x1dac
	.uleb128 0x10
	.long	0xdf
	.byte	0x7f
	.byte	0
	.uleb128 0x26
	.long	.LASF631
	.byte	0x2
	.value	0x48f
	.byte	0x1
	.long	0x18f9
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e21
	.uleb128 0x29
	.string	"str"
	.byte	0x2
	.value	0x48f
	.byte	0x21
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF632
	.byte	0x2
	.value	0x48f
	.byte	0x3f
	.long	0x1cde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF620
	.byte	0x2
	.value	0x490
	.byte	0x1d
	.long	0x1ce4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"ptr"
	.byte	0x2
	.value	0x492
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"e"
	.byte	0x2
	.value	0x494
	.byte	0x1c
	.long	0x18f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2a
	.long	.LASF641
	.byte	0x2
	.value	0x416
	.byte	0x1
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f37
	.uleb128 0x29
	.string	"fmt"
	.byte	0x2
	.value	0x416
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x418
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF633
	.byte	0x2
	.value	0x419
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF634
	.byte	0x2
	.value	0x41a
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"pad"
	.byte	0x2
	.value	0x41b
	.byte	0xc
	.long	0x110
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF635
	.byte	0x2
	.value	0x41c
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.long	.LASF636
	.byte	0x2
	.value	0x41d
	.byte	0x8
	.long	0x18b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x24
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x22
	.long	.Ldebug_ranges0+0
	.long	0x1ee1
	.uleb128 0x21
	.long	.LASF637
	.byte	0x2
	.value	0x42a
	.byte	0xe
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x24
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x24
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x24
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x24
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x24
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0
	.uleb128 0x2b
	.long	.LASF639
	.byte	0x2
	.value	0x36e
	.byte	0x1
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f68
	.uleb128 0x20
	.long	.LASF640
	.byte	0x2
	.value	0x36e
	.byte	0xc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2a
	.long	.LASF642
	.byte	0x2
	.value	0x364
	.byte	0x1
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f98
	.uleb128 0x20
	.long	.LASF643
	.byte	0x2
	.value	0x364
	.byte	0x1e
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF644
	.byte	0x2
	.value	0x338
	.byte	0x1
	.long	0x1206
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x2050
	.uleb128 0x20
	.long	.LASF645
	.byte	0x2
	.value	0x338
	.byte	0x1b
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF646
	.byte	0x2
	.value	0x33a
	.byte	0x10
	.long	0x1399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.long	.LASF647
	.byte	0x2
	.value	0x33b
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF648
	.byte	0x2
	.value	0x33c
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF649
	.byte	0x2
	.value	0x33d
	.byte	0xa
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"end"
	.byte	0x2
	.value	0x33e
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"n"
	.byte	0x2
	.value	0x33f
	.byte	0xd
	.long	0x1206
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF650
	.byte	0x2
	.value	0x340
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0x2a
	.long	.LASF651
	.byte	0x2
	.value	0x2d1
	.byte	0x1
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x2190
	.uleb128 0x29
	.string	"val"
	.byte	0x2
	.value	0x2d1
	.byte	0x1e
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF620
	.byte	0x2
	.value	0x2d1
	.byte	0x27
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x29
	.string	"buf"
	.byte	0x2
	.value	0x2d2
	.byte	0x18
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF652
	.byte	0x2
	.value	0x2d2
	.byte	0x24
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x20
	.long	.LASF653
	.byte	0x2
	.value	0x2d3
	.byte	0x22
	.long	0x1482
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x20
	.long	.LASF654
	.byte	0x2
	.value	0x2d3
	.byte	0x2d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x20
	.long	.LASF655
	.byte	0x2
	.value	0x2d3
	.byte	0x44
	.long	0x1564
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF656
	.byte	0x2
	.value	0x2d5
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x23
	.string	"fmt"
	.byte	0x2
	.value	0x2d6
	.byte	0x8
	.long	0x2190
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF657
	.byte	0x2
	.value	0x2db
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF658
	.byte	0x2
	.value	0x2fa
	.byte	0xa
	.long	0x21a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF659
	.byte	0x2
	.value	0x2fd
	.byte	0x10
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x21
	.long	.LASF660
	.byte	0x2
	.value	0x302
	.byte	0x10
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF661
	.byte	0x2
	.value	0x31b
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x21
	.long	.LASF662
	.byte	0x2
	.value	0x322
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x24
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0xf
	.long	0x3f
	.long	0x21a0
	.uleb128 0x10
	.long	0xdf
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF663
	.uleb128 0x2a
	.long	.LASF664
	.byte	0x2
	.value	0x2aa
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x21f7
	.uleb128 0x29
	.string	"err"
	.byte	0x2
	.value	0x2aa
	.byte	0x2f
	.long	0x18f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.long	.LASF665
	.byte	0x2
	.value	0x2aa
	.byte	0x40
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF666
	.byte	0x2
	.value	0x2ac
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x26
	.long	.LASF667
	.byte	0x2
	.value	0x25f
	.byte	0x1
	.long	0x18f9
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x22ae
	.uleb128 0x20
	.long	.LASF665
	.byte	0x2
	.value	0x25f
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF635
	.byte	0x2
	.value	0x260
	.byte	0x1d
	.long	0x11b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF632
	.byte	0x2
	.value	0x260
	.byte	0x32
	.long	0x1cde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF620
	.byte	0x2
	.value	0x260
	.byte	0x41
	.long	0x1ce4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF668
	.byte	0x2
	.value	0x261
	.byte	0x26
	.long	0x1482
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x21
	.long	.LASF659
	.byte	0x2
	.value	0x263
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF658
	.byte	0x2
	.value	0x265
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"e"
	.byte	0x2
	.value	0x26e
	.byte	0x1c
	.long	0x18f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	.LASF669
	.byte	0x2
	.value	0x29c
	.byte	0xf
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.long	.LASF670
	.byte	0x2
	.value	0x213
	.byte	0x1
	.long	0x18f9
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x2399
	.uleb128 0x20
	.long	.LASF665
	.byte	0x2
	.value	0x213
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF635
	.byte	0x2
	.value	0x214
	.byte	0x1d
	.long	0x11b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF632
	.byte	0x2
	.value	0x215
	.byte	0x23
	.long	0x1cde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF620
	.byte	0x2
	.value	0x216
	.byte	0x1e
	.long	0x1ce4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF671
	.byte	0x2
	.value	0x218
	.byte	0x8
	.long	0x18b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x23
	.string	"e"
	.byte	0x2
	.value	0x219
	.byte	0x1c
	.long	0x18f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.long	.LASF672
	.byte	0x2
	.value	0x226
	.byte	0xd
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF673
	.byte	0x2
	.value	0x227
	.byte	0x13
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF674
	.byte	0x2
	.value	0x228
	.byte	0xc
	.long	0x18b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x23
	.string	"e2"
	.byte	0x2
	.value	0x22b
	.byte	0x20
	.long	0x18f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.long	.LASF675
	.byte	0x2
	.value	0x235
	.byte	0xe
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF676
	.byte	0x2
	.value	0x1d2
	.byte	0x1
	.long	0x18f9
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x245f
	.uleb128 0x20
	.long	.LASF665
	.byte	0x2
	.value	0x1d2
	.byte	0x20
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF635
	.byte	0x2
	.value	0x1d3
	.byte	0x1b
	.long	0x11b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF632
	.byte	0x2
	.value	0x1d3
	.byte	0x30
	.long	0x1cde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF671
	.byte	0x2
	.value	0x1d3
	.byte	0x3d
	.long	0x245f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"e"
	.byte	0x2
	.value	0x1d5
	.byte	0x1c
	.long	0x18f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"val"
	.byte	0x2
	.value	0x1d7
	.byte	0xf
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF677
	.byte	0x2
	.value	0x1d8
	.byte	0x10
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF678
	.byte	0x2
	.value	0x1d9
	.byte	0x8
	.long	0x18b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.long	.LASF679
	.byte	0x2
	.value	0x1e6
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18b0
	.uleb128 0x26
	.long	.LASF680
	.byte	0x2
	.value	0x190
	.byte	0x1
	.long	0x3c4
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x24c7
	.uleb128 0x29
	.string	"val"
	.byte	0x2
	.value	0x190
	.byte	0x1b
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"t"
	.byte	0x2
	.value	0x190
	.byte	0x30
	.long	0x1564
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF681
	.byte	0x2
	.value	0x192
	.byte	0xc
	.long	0x11fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF682
	.byte	0x2
	.value	0x193
	.byte	0xc
	.long	0x11fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF683
	.byte	0x2
	.value	0x18a
	.byte	0x1
	.long	0x11fa
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x24fb
	.uleb128 0x29
	.string	"val"
	.byte	0x2
	.value	0x18a
	.byte	0x23
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.long	.LASF684
	.byte	0x2
	.value	0x182
	.byte	0x1
	.long	0x11fa
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x252f
	.uleb128 0x29
	.string	"val"
	.byte	0x2
	.value	0x182
	.byte	0x23
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.long	.LASF685
	.byte	0x2
	.value	0x17a
	.byte	0x1
	.long	0x11fa
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x2563
	.uleb128 0x29
	.string	"val"
	.byte	0x2
	.value	0x17a
	.byte	0x25
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.long	.LASF686
	.byte	0x2
	.value	0x172
	.byte	0x1
	.long	0x11fa
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x2597
	.uleb128 0x29
	.string	"val"
	.byte	0x2
	.value	0x172
	.byte	0x21
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.long	.LASF687
	.byte	0x2
	.value	0x167
	.byte	0x1
	.long	0x11fa
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x25db
	.uleb128 0x29
	.string	"val"
	.byte	0x2
	.value	0x167
	.byte	0x23
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF688
	.byte	0x2
	.value	0x169
	.byte	0xc
	.long	0x11fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF689
	.byte	0x2
	.value	0x153
	.byte	0x1
	.long	0x3c4
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x263d
	.uleb128 0x29
	.string	"val"
	.byte	0x2
	.value	0x153
	.byte	0x14
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF690
	.byte	0x2
	.value	0x153
	.byte	0x26
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"x"
	.byte	0x2
	.value	0x153
	.byte	0x46
	.long	0x263d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF659
	.byte	0x2
	.value	0x155
	.byte	0x10
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe6
	.uleb128 0x27
	.long	.LASF691
	.byte	0x2
	.value	0x149
	.byte	0x1
	.long	0x3c4
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x2677
	.uleb128 0x29
	.string	"val"
	.byte	0x2
	.value	0x149
	.byte	0x14
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.long	.LASF692
	.byte	0x2
	.value	0x139
	.byte	0x1
	.long	0x3c4
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x26c9
	.uleb128 0x20
	.long	.LASF690
	.byte	0x2
	.value	0x139
	.byte	0x16
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"x"
	.byte	0x2
	.value	0x139
	.byte	0x29
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF626
	.byte	0x2
	.value	0x13b
	.byte	0xf
	.long	0x3c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF693
	.byte	0x2
	.value	0x113
	.byte	0x1
	.long	0xc2
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x26fd
	.uleb128 0x20
	.long	.LASF659
	.byte	0x2
	.value	0x113
	.byte	0x21
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF694
	.byte	0x2
	.byte	0xf1
	.byte	0x1
	.long	0x57
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x272f
	.uleb128 0x2d
	.string	"suf"
	.byte	0x2
	.byte	0xf1
	.byte	0x1a
	.long	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF695
	.byte	0x2
	.byte	0xea
	.byte	0x1
	.long	0x57
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x2777
	.uleb128 0x2d
	.string	"suf"
	.byte	0x2
	.byte	0xea
	.byte	0x1a
	.long	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.long	.LASF696
	.byte	0x2
	.byte	0xec
	.byte	0x16
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	valid_suffixes.7518
	.byte	0
	.uleb128 0x2c
	.long	.LASF697
	.byte	0x2
	.byte	0xd9
	.byte	0x1
	.long	0x57
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a9
	.uleb128 0x2f
	.long	.LASF653
	.byte	0x2
	.byte	0xd9
	.byte	0x25
	.long	0x1482
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF698
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x284e
	.uleb128 0x20
	.long	.LASF699
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x30
	.long	.LASF700
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x2804
	.uleb128 0x31
	.long	.LASF699
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x31
	.long	.LASF701
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x27d9
	.uleb128 0x21
	.long	.LASF700
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x285e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF701
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF702
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x2863
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF703
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xf
	.long	0x2804
	.long	0x285e
	.uleb128 0x10
	.long	0xdf
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x284e
	.uleb128 0x3
	.byte	0x8
	.long	0x2804
	.uleb128 0x28
	.long	.LASF705
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF706
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.long	0x18b0
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b5
	.uleb128 0x2d
	.string	"ch"
	.byte	0x1
	.byte	0xa0
	.byte	0x1a
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF707
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0xf4
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF682:
	.string	"intmax_mul"
.LASF609:
	.string	"locale_ok"
.LASF310:
	.string	"_NL_CTYPE_OUTDIGIT9_WC"
.LASF600:
	.string	"SSE_OK_PRECISION_LOSS"
.LASF115:
	.string	"ERA_D_FMT"
.LASF64:
	.string	"_sys_errlist"
.LASF52:
	.string	"_unused2"
.LASF175:
	.string	"_NL_TIME_CAL_DIRECTION"
.LASF580:
	.string	"padding_buffer_size"
.LASF38:
	.string	"_fileno"
.LASF548:
	.string	"scale_from_args"
.LASF204:
	.string	"_NL_ABALTMON_1"
.LASF205:
	.string	"_NL_ABALTMON_2"
.LASF206:
	.string	"_NL_ABALTMON_3"
.LASF207:
	.string	"_NL_ABALTMON_4"
.LASF208:
	.string	"_NL_ABALTMON_5"
.LASF209:
	.string	"_NL_ABALTMON_6"
.LASF210:
	.string	"_NL_ABALTMON_7"
.LASF211:
	.string	"_NL_ABALTMON_8"
.LASF212:
	.string	"_NL_ABALTMON_9"
.LASF118:
	.string	"ERA_T_FMT"
.LASF452:
	.string	"MBS_ALIGN_LEFT"
.LASF135:
	.string	"_NL_WABMON_1"
.LASF136:
	.string	"_NL_WABMON_2"
.LASF137:
	.string	"_NL_WABMON_3"
.LASF138:
	.string	"_NL_WABMON_4"
.LASF139:
	.string	"_NL_WABMON_5"
.LASF140:
	.string	"_NL_WABMON_6"
.LASF141:
	.string	"_NL_WABMON_7"
.LASF142:
	.string	"_NL_WABMON_8"
.LASF143:
	.string	"_NL_WABMON_9"
.LASF524:
	.string	"SETFLD_ALLOW_DASH"
.LASF156:
	.string	"_NL_WMON_10"
.LASF157:
	.string	"_NL_WMON_11"
.LASF158:
	.string	"_NL_WMON_12"
.LASF144:
	.string	"_NL_WABMON_10"
.LASF145:
	.string	"_NL_WABMON_11"
.LASF146:
	.string	"_NL_WABMON_12"
.LASF438:
	.string	"_NL_IDENTIFICATION_EMAIL"
.LASF631:
	.string	"parse_human_number"
.LASF271:
	.string	"_NL_CTYPE_INDIGITS1_MB"
.LASF594:
	.string	"_Bool"
.LASF111:
	.string	"D_FMT"
.LASF565:
	.string	"inval_args"
.LASF513:
	.string	"quoting_style_args"
.LASF171:
	.string	"_NL_TIME_WEEK_1STDAY"
.LASF308:
	.string	"_NL_CTYPE_OUTDIGIT7_WC"
.LASF533:
	.string	"SUFFIX_OPTION"
.LASF625:
	.string	"process_suffixed_number"
.LASF704:
	.string	"print_padded_number"
.LASF112:
	.string	"T_FMT"
.LASF43:
	.string	"_shortbuf"
.LASF177:
	.string	"_DATE_FMT"
.LASF496:
	.string	"_ISpunct"
.LASF290:
	.string	"_NL_CTYPE_INDIGITS9_WC"
.LASF247:
	.string	"_NL_COLLATE_CODESET"
.LASF476:
	.string	"__environ"
.LASF530:
	.string	"TO_OPTION"
.LASF67:
	.string	"time_t"
.LASF706:
	.string	"field_sep"
.LASF24:
	.string	"_flags"
.LASF614:
	.string	"next"
.LASF643:
	.string	"min_size"
.LASF387:
	.string	"THOUSEP"
.LASF306:
	.string	"_NL_CTYPE_OUTDIGIT5_WC"
.LASF432:
	.string	"_NL_MEASUREMENT_CODESET"
.LASF545:
	.string	"scale_SI"
.LASF671:
	.string	"negative"
.LASF18:
	.string	"__off_t"
.LASF425:
	.string	"_NL_TELEPHONE_TEL_INT_FMT"
.LASF675:
	.string	"exponent"
.LASF461:
	.string	"quote_quoting_options"
.LASF388:
	.string	"__GROUPING"
.LASF617:
	.string	"process_line"
.LASF288:
	.string	"_NL_CTYPE_INDIGITS7_WC"
.LASF578:
	.string	"grouping"
.LASF44:
	.string	"_lock"
.LASF409:
	.string	"_NL_NAME_CODESET"
.LASF577:
	.string	"to_unit_size"
.LASF239:
	.string	"_NL_COLLATE_WEIGHTWC"
.LASF73:
	.string	"ABDAY_4"
.LASF349:
	.string	"__N_SEP_BY_SPACE"
.LASF422:
	.string	"_NL_ADDRESS_LANG_LIB"
.LASF6:
	.string	"has_arg"
.LASF389:
	.string	"_NL_NUMERIC_DECIMAL_POINT_WC"
.LASF616:
	.string	"valid_number"
.LASF647:
	.string	"c_string"
.LASF304:
	.string	"_NL_CTYPE_OUTDIGIT3_WC"
.LASF618:
	.string	"process_field"
.LASF484:
	.string	"TIMESPEC_HZ"
.LASF68:
	.string	"_gl_cxxalias_dummy"
.LASF482:
	.string	"intmax_t"
.LASF238:
	.string	"_NL_COLLATE_TABLEWC"
.LASF286:
	.string	"_NL_CTYPE_INDIGITS5_WC"
.LASF354:
	.string	"__INT_P_SEP_BY_SPACE"
.LASF483:
	.string	"uintmax_t"
.LASF436:
	.string	"_NL_IDENTIFICATION_ADDRESS"
.LASF546:
	.string	"scale_IEC"
.LASF571:
	.string	"scale_from"
.LASF339:
	.string	"__MON_DECIMAL_POINT"
.LASF412:
	.string	"_NL_ADDRESS_COUNTRY_NAME"
.LASF113:
	.string	"T_FMT_AMPM"
.LASF599:
	.string	"SSE_OK"
.LASF406:
	.string	"_NL_NAME_NAME_MRS"
.LASF627:
	.string	"skip_count"
.LASF368:
	.string	"_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE"
.LASF30:
	.string	"_IO_write_end"
.LASF424:
	.string	"_NL_NUM_LC_ADDRESS"
.LASF302:
	.string	"_NL_CTYPE_OUTDIGIT1_WC"
.LASF520:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF500:
	.string	"version_etc_copyright"
.LASF234:
	.string	"_NL_COLLATE_INDIRECTMB"
.LASF323:
	.string	"_NL_CTYPE_EXTRA_MAP_2"
.LASF444:
	.string	"_NL_IDENTIFICATION_APPLICATION"
.LASF352:
	.string	"_NL_MONETARY_CRNCYSTR"
.LASF557:
	.string	"round_nearest"
.LASF699:
	.string	"program"
.LASF242:
	.string	"_NL_COLLATE_SYMB_HASH_SIZEMB"
.LASF284:
	.string	"_NL_CTYPE_INDIGITS3_WC"
.LASF162:
	.string	"_NL_WD_FMT"
.LASF540:
	.string	"FORMAT_OPTION"
.LASF467:
	.string	"__tzname"
.LASF629:
	.string	"prepare_padded_number"
.LASF635:
	.string	"endptr"
.LASF163:
	.string	"_NL_WT_FMT"
.LASF350:
	.string	"__P_SIGN_POSN"
.LASF666:
	.string	"msgid"
.LASF705:
	.string	"emit_mandatory_arg_note"
.LASF563:
	.string	"inval_warn"
.LASF641:
	.string	"parse_format_string"
.LASF591:
	.string	"line_delim"
.LASF576:
	.string	"from_unit_size"
.LASF17:
	.string	"__uintmax_t"
.LASF376:
	.string	"_NL_MONETARY_UNO_VALID_TO"
.LASF0:
	.string	"optarg"
.LASF96:
	.string	"MON_1"
.LASF97:
	.string	"MON_2"
.LASF98:
	.string	"MON_3"
.LASF99:
	.string	"MON_4"
.LASF100:
	.string	"MON_5"
.LASF101:
	.string	"MON_6"
.LASF102:
	.string	"MON_7"
.LASF103:
	.string	"MON_8"
.LASF104:
	.string	"MON_9"
.LASF680:
	.string	"simple_round"
.LASF262:
	.string	"_NL_CTYPE_MB_CUR_MAX"
.LASF423:
	.string	"_NL_ADDRESS_CODESET"
.LASF321:
	.string	"_NL_CTYPE_NONASCII_CASE"
.LASF62:
	.string	"sys_errlist"
.LASF259:
	.string	"_NL_CTYPE_CLASS_NAMES"
.LASF471:
	.string	"daylight"
.LASF381:
	.string	"_NL_MONETARY_THOUSANDS_SEP_WC"
.LASF282:
	.string	"_NL_CTYPE_INDIGITS1_WC"
.LASF446:
	.string	"_NL_IDENTIFICATION_REVISION"
.LASF372:
	.string	"_NL_MONETARY_DUO_N_SIGN_POSN"
.LASF84:
	.string	"ABMON_1"
.LASF85:
	.string	"ABMON_2"
.LASF86:
	.string	"ABMON_3"
.LASF87:
	.string	"ABMON_4"
.LASF88:
	.string	"ABMON_5"
.LASF89:
	.string	"ABMON_6"
.LASF90:
	.string	"ABMON_7"
.LASF91:
	.string	"ABMON_8"
.LASF92:
	.string	"ABMON_9"
.LASF623:
	.string	"field_start"
.LASF110:
	.string	"D_T_FMT"
.LASF573:
	.string	"round_style"
.LASF250:
	.string	"_NL_CTYPE_TOUPPER"
.LASF551:
	.string	"scale_to_types"
.LASF674:
	.string	"neg_frac"
.LASF266:
	.string	"_NL_CTYPE_TOLOWER32"
.LASF395:
	.string	"__YESSTR"
.LASF645:
	.string	"n_string"
.LASF346:
	.string	"__P_CS_PRECEDES"
.LASF37:
	.string	"_chain"
.LASF189:
	.string	"__ALTMON_10"
.LASF190:
	.string	"__ALTMON_11"
.LASF191:
	.string	"__ALTMON_12"
.LASF477:
	.string	"environ"
.LASF337:
	.string	"__INT_CURR_SYMBOL"
.LASF494:
	.string	"_ISblank"
.LASF10:
	.string	"unsigned char"
.LASF504:
	.string	"shell_always_quoting_style"
.LASF445:
	.string	"_NL_IDENTIFICATION_ABBREVIATION"
.LASF537:
	.string	"DEBUG_OPTION"
.LASF711:
	.string	"_IO_lock_t"
.LASF664:
	.string	"simple_strtod_fatal"
.LASF637:
	.string	"skip"
.LASF521:
	.string	"LONGINT_INVALID"
.LASF541:
	.string	"INVALID_OPTION"
.LASF615:
	.string	"field"
.LASF649:
	.string	"n_len"
.LASF676:
	.string	"simple_strtod_int"
.LASF480:
	.string	"Version"
.LASF518:
	.string	"LONGINT_OVERFLOW"
.LASF466:
	.string	"error_one_per_line"
.LASF426:
	.string	"_NL_TELEPHONE_TEL_DOM_FMT"
.LASF488:
	.string	"_ISalpha"
.LASF379:
	.string	"_NL_MONETARY_CONVERSION_RATE"
.LASF668:
	.string	"allowed_scaling"
.LASF419:
	.string	"_NL_ADDRESS_LANG_NAME"
.LASF249:
	.string	"_NL_CTYPE_CLASS"
.LASF20:
	.string	"__time_t"
.LASF244:
	.string	"_NL_COLLATE_SYMB_EXTRAMB"
.LASF418:
	.string	"_NL_ADDRESS_COUNTRY_ISBN"
.LASF553:
	.string	"round_ceiling"
.LASF492:
	.string	"_ISprint"
.LASF529:
	.string	"FROM_UNIT_OPTION"
.LASF497:
	.string	"_ISalnum"
.LASF59:
	.string	"stdout"
.LASF373:
	.string	"_NL_MONETARY_DUO_INT_P_SIGN_POSN"
.LASF701:
	.string	"node"
.LASF29:
	.string	"_IO_write_ptr"
.LASF416:
	.string	"_NL_ADDRESS_COUNTRY_CAR"
.LASF241:
	.string	"_NL_COLLATE_INDIRECTWC"
.LASF587:
	.string	"conv_exit_code"
.LASF491:
	.string	"_ISspace"
.LASF593:
	.string	"debug"
.LASF453:
	.string	"MBS_ALIGN_RIGHT"
.LASF601:
	.string	"SSE_OVERFLOW"
.LASF147:
	.string	"_NL_WMON_1"
.LASF148:
	.string	"_NL_WMON_2"
.LASF149:
	.string	"_NL_WMON_3"
.LASF150:
	.string	"_NL_WMON_4"
.LASF151:
	.string	"_NL_WMON_5"
.LASF152:
	.string	"_NL_WMON_6"
.LASF153:
	.string	"_NL_WMON_7"
.LASF154:
	.string	"_NL_WMON_8"
.LASF155:
	.string	"_NL_WMON_9"
.LASF611:
	.string	"line"
.LASF109:
	.string	"PM_STR"
.LASF172:
	.string	"_NL_TIME_WEEK_1STWEEK"
.LASF192:
	.string	"_NL_WALTMON_1"
.LASF193:
	.string	"_NL_WALTMON_2"
.LASF194:
	.string	"_NL_WALTMON_3"
.LASF195:
	.string	"_NL_WALTMON_4"
.LASF196:
	.string	"_NL_WALTMON_5"
.LASF197:
	.string	"_NL_WALTMON_6"
.LASF198:
	.string	"_NL_WALTMON_7"
.LASF199:
	.string	"_NL_WALTMON_8"
.LASF200:
	.string	"_NL_WALTMON_9"
.LASF260:
	.string	"_NL_CTYPE_MAP_NAMES"
.LASF697:
	.string	"default_scale_base"
.LASF53:
	.string	"FILE"
.LASF407:
	.string	"_NL_NAME_NAME_MISS"
.LASF404:
	.string	"_NL_NAME_NAME_GEN"
.LASF490:
	.string	"_ISxdigit"
.LASF613:
	.string	"newline"
.LASF123:
	.string	"_NL_WABDAY_3"
.LASF15:
	.string	"size_t"
.LASF451:
	.string	"_NL_NUM"
.LASF673:
	.string	"val_frac"
.LASF473:
	.string	"getdate_err"
.LASF512:
	.string	"custom_quoting_style"
.LASF299:
	.string	"_NL_CTYPE_OUTDIGIT8_MB"
.LASF589:
	.string	"padding_alignment"
.LASF108:
	.string	"AM_STR"
.LASF648:
	.string	"t_string"
.LASF114:
	.string	"__ERA_YEAR"
.LASF265:
	.string	"_NL_CTYPE_TOUPPER32"
.LASF672:
	.string	"ptr2"
.LASF554:
	.string	"round_floor"
.LASF402:
	.string	"_NL_NUM_LC_PAPER"
.LASF33:
	.string	"_IO_save_base"
.LASF501:
	.string	"program_name"
.LASF516:
	.string	"strtol_error"
.LASF678:
	.string	"found_digit"
.LASF403:
	.string	"_NL_NAME_NAME_FMT"
.LASF263:
	.string	"_NL_CTYPE_CODESET_NAME"
.LASF570:
	.string	"MAX_ACCEPTABLE_DIGITS"
.LASF414:
	.string	"_NL_ADDRESS_COUNTRY_AB2"
.LASF415:
	.string	"_NL_ADDRESS_COUNTRY_AB3"
.LASF538:
	.string	"DEV_DEBUG_OPTION"
.LASF297:
	.string	"_NL_CTYPE_OUTDIGIT6_MB"
.LASF428:
	.string	"_NL_TELEPHONE_INT_PREFIX"
.LASF619:
	.string	"text"
.LASF517:
	.string	"LONGINT_OK"
.LASF47:
	.string	"_wide_data"
.LASF586:
	.string	"format_str_suffix"
.LASF230:
	.string	"_NL_COLLATE_RULESETS"
.LASF269:
	.string	"_NL_CTYPE_INDIGITS_MB_LEN"
.LASF278:
	.string	"_NL_CTYPE_INDIGITS8_MB"
.LASF700:
	.string	"infomap"
.LASF503:
	.string	"shell_quoting_style"
.LASF338:
	.string	"__CURRENCY_SYMBOL"
.LASF160:
	.string	"_NL_WPM_STR"
.LASF320:
	.string	"_NL_CTYPE_MAP_TO_NONASCII"
.LASF366:
	.string	"_NL_MONETARY_DUO_N_SEP_BY_SPACE"
.LASF495:
	.string	"_IScntrl"
.LASF173:
	.string	"_NL_TIME_FIRST_WEEKDAY"
.LASF691:
	.string	"absld"
.LASF295:
	.string	"_NL_CTYPE_OUTDIGIT4_MB"
.LASF486:
	.string	"_ISupper"
.LASF632:
	.string	"value"
.LASF251:
	.string	"_NL_CTYPE_GAP1"
.LASF253:
	.string	"_NL_CTYPE_GAP2"
.LASF255:
	.string	"_NL_CTYPE_GAP3"
.LASF256:
	.string	"_NL_CTYPE_GAP4"
.LASF257:
	.string	"_NL_CTYPE_GAP5"
.LASF258:
	.string	"_NL_CTYPE_GAP6"
.LASF358:
	.string	"__INT_N_SIGN_POSN"
.LASF385:
	.string	"RADIXCHAR"
.LASF487:
	.string	"_ISlower"
.LASF595:
	.string	"decimal_point"
.LASF380:
	.string	"_NL_MONETARY_DECIMAL_POINT_WC"
.LASF159:
	.string	"_NL_WAM_STR"
.LASF608:
	.string	"valid_numbers"
.LASF276:
	.string	"_NL_CTYPE_INDIGITS6_MB"
.LASF708:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF21:
	.string	"__ssize_t"
.LASF161:
	.string	"_NL_WD_T_FMT"
.LASF441:
	.string	"_NL_IDENTIFICATION_LANGUAGE"
.LASF519:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF293:
	.string	"_NL_CTYPE_OUTDIGIT2_MB"
.LASF383:
	.string	"_NL_NUM_LC_MONETARY"
.LASF499:
	.string	"GETOPT_VERSION_CHAR"
.LASF469:
	.string	"__timezone"
.LASF525:
	.string	"SETFLD_COMPLEMENT"
.LASF566:
	.string	"inval_types"
.LASF555:
	.string	"round_from_zero"
.LASF440:
	.string	"_NL_IDENTIFICATION_FAX"
.LASF274:
	.string	"_NL_CTYPE_INDIGITS4_MB"
.LASF692:
	.string	"powerld"
.LASF650:
	.string	"suffixes"
.LASF401:
	.string	"_NL_PAPER_CODESET"
.LASF605:
	.string	"SSE_MISSING_I_SUFFIX"
.LASF567:
	.string	"longopts"
.LASF448:
	.string	"_NL_IDENTIFICATION_CATEGORY"
.LASF456:
	.string	"MBA_UNIBYTE_FALLBACK"
.LASF698:
	.string	"emit_ancillary_info"
.LASF176:
	.string	"_NL_TIME_TIMEZONE"
.LASF240:
	.string	"_NL_COLLATE_EXTRAWC"
.LASF642:
	.string	"setup_padding_buffer"
.LASF60:
	.string	"stderr"
.LASF291:
	.string	"_NL_CTYPE_OUTDIGIT0_MB"
.LASF626:
	.string	"result"
.LASF5:
	.string	"name"
.LASF644:
	.string	"unit_to_umax"
.LASF479:
	.string	"program_invocation_short_name"
.LASF639:
	.string	"usage"
.LASF549:
	.string	"scale_from_types"
.LASF35:
	.string	"_IO_save_end"
.LASF696:
	.string	"valid_suffixes"
.LASF345:
	.string	"__FRAC_DIGITS"
.LASF121:
	.string	"_NL_WABDAY_1"
.LASF122:
	.string	"_NL_WABDAY_2"
.LASF7:
	.string	"flag"
.LASF124:
	.string	"_NL_WABDAY_4"
.LASF125:
	.string	"_NL_WABDAY_5"
.LASF126:
	.string	"_NL_WABDAY_6"
.LASF127:
	.string	"_NL_WABDAY_7"
.LASF272:
	.string	"_NL_CTYPE_INDIGITS2_MB"
.LASF568:
	.string	"DELIMITER_DEFAULT"
.LASF596:
	.string	"decimal_point_length"
.LASF544:
	.string	"scale_auto"
.LASF336:
	.string	"_NL_NUM_LC_CTYPE"
.LASF709:
	.string	"src/numfmt.c"
.LASF386:
	.string	"__THOUSANDS_SEP"
.LASF509:
	.string	"escape_quoting_style"
.LASF4:
	.string	"optopt"
.LASF309:
	.string	"_NL_CTYPE_OUTDIGIT8_WC"
.LASF602:
	.string	"SSE_INVALID_NUMBER"
.LASF430:
	.string	"_NL_NUM_LC_TELEPHONE"
.LASF369:
	.string	"_NL_MONETARY_DUO_INT_N_CS_PRECEDES"
.LASF458:
	.string	"MBA_NO_LEFT_PAD"
.LASF344:
	.string	"__INT_FRAC_DIGITS"
.LASF688:
	.string	"intval"
.LASF371:
	.string	"_NL_MONETARY_DUO_P_SIGN_POSN"
.LASF679:
	.string	"digit"
.LASF450:
	.string	"_NL_NUM_LC_IDENTIFICATION"
.LASF610:
	.string	"exit_status"
.LASF367:
	.string	"_NL_MONETARY_DUO_INT_P_CS_PRECEDES"
.LASF11:
	.string	"short unsigned int"
.LASF560:
	.string	"inval_type"
.LASF375:
	.string	"_NL_MONETARY_UNO_VALID_FROM"
.LASF12:
	.string	"signed char"
.LASF590:
	.string	"delimiter"
.LASF561:
	.string	"inval_abort"
.LASF667:
	.string	"simple_strtod_human"
.LASF370:
	.string	"_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE"
.LASF270:
	.string	"_NL_CTYPE_INDIGITS0_MB"
.LASF640:
	.string	"status"
.LASF120:
	.string	"_NL_TIME_ERA_ENTRIES"
.LASF579:
	.string	"padding_buffer"
.LASF307:
	.string	"_NL_CTYPE_OUTDIGIT6_WC"
.LASF413:
	.string	"_NL_ADDRESS_COUNTRY_POST"
.LASF556:
	.string	"round_to_zero"
.LASF19:
	.string	"__off64_t"
.LASF457:
	.string	"MBA_UNIBYTE_ONLY"
.LASF527:
	.string	"EXIT_CONVERSION_WARNINGS"
.LASF686:
	.string	"simple_round_floor"
.LASF27:
	.string	"_IO_read_base"
.LASF45:
	.string	"_offset"
.LASF289:
	.string	"_NL_CTYPE_INDIGITS8_WC"
.LASF508:
	.string	"c_maybe_quoting_style"
.LASF32:
	.string	"_IO_buf_end"
.LASF166:
	.string	"_NL_WERA_D_FMT"
.LASF364:
	.string	"_NL_MONETARY_DUO_P_SEP_BY_SPACE"
.LASF542:
	.string	"scale_type"
.LASF535:
	.string	"PADDING_OPTION"
.LASF3:
	.string	"opterr"
.LASF702:
	.string	"map_prog"
.LASF169:
	.string	"_NL_WERA_T_FMT"
.LASF233:
	.string	"_NL_COLLATE_EXTRAMB"
.LASF51:
	.string	"_mode"
.LASF585:
	.string	"format_str_prefix"
.LASF28:
	.string	"_IO_write_base"
.LASF437:
	.string	"_NL_IDENTIFICATION_CONTACT"
.LASF305:
	.string	"_NL_CTYPE_OUTDIGIT4_WC"
.LASF624:
	.string	"field_end"
.LASF252:
	.string	"_NL_CTYPE_TOLOWER"
.LASF225:
	.string	"_NL_WABALTMON_10"
.LASF226:
	.string	"_NL_WABALTMON_11"
.LASF227:
	.string	"_NL_WABALTMON_12"
.LASF531:
	.string	"TO_UNIT_OPTION"
.LASF514:
	.string	"quoting_style_vals"
.LASF315:
	.string	"_NL_CTYPE_TRANSLIT_TO_TBL"
.LASF621:
	.string	"include_field"
.LASF588:
	.string	"auto_padding"
.LASF287:
	.string	"_NL_CTYPE_INDIGITS6_WC"
.LASF243:
	.string	"_NL_COLLATE_SYMB_TABLEMB"
.LASF636:
	.string	"zero_padding"
.LASF14:
	.string	"long int"
.LASF178:
	.string	"_NL_W_DATE_FMT"
.LASF377:
	.string	"_NL_MONETARY_DUO_VALID_FROM"
.LASF382:
	.string	"_NL_MONETARY_CODESET"
.LASF393:
	.string	"__YESEXPR"
.LASF245:
	.string	"_NL_COLLATE_COLLSEQMB"
.LASF569:
	.string	"MAX_UNSCALED_DIGITS"
.LASF54:
	.string	"_IO_marker"
.LASF528:
	.string	"FROM_OPTION"
.LASF396:
	.string	"__NOSTR"
.LASF658:
	.string	"scale_base"
.LASF572:
	.string	"scale_to"
.LASF515:
	.string	"quoting_style"
.LASF264:
	.string	"CODESET"
.LASF303:
	.string	"_NL_CTYPE_OUTDIGIT2_WC"
.LASF454:
	.string	"MBS_ALIGN_CENTER"
.LASF552:
	.string	"round_type"
.LASF693:
	.string	"suffix_power_char"
.LASF687:
	.string	"simple_round_ceiling"
.LASF661:
	.string	"show_decimal_point"
.LASF365:
	.string	"_NL_MONETARY_DUO_N_CS_PRECEDES"
.LASF285:
	.string	"_NL_CTYPE_INDIGITS4_WC"
.LASF361:
	.string	"_NL_MONETARY_DUO_INT_FRAC_DIGITS"
.LASF55:
	.string	"_IO_codecvt"
.LASF558:
	.string	"round_args"
.LASF421:
	.string	"_NL_ADDRESS_LANG_TERM"
.LASF502:
	.string	"literal_quoting_style"
.LASF707:
	.string	"to_uchar"
.LASF66:
	.string	"long double"
.LASF363:
	.string	"_NL_MONETARY_DUO_P_CS_PRECEDES"
.LASF231:
	.string	"_NL_COLLATE_TABLEMB"
.LASF267:
	.string	"_NL_CTYPE_CLASS_OFFSET"
.LASF164:
	.string	"_NL_WT_FMT_AMPM"
.LASF582:
	.string	"zero_padding_width"
.LASF8:
	.string	"long unsigned int"
.LASF301:
	.string	"_NL_CTYPE_OUTDIGIT0_WC"
.LASF174:
	.string	"_NL_TIME_FIRST_WORKDAY"
.LASF311:
	.string	"_NL_CTYPE_TRANSLIT_TAB_SIZE"
.LASF656:
	.string	"num_size"
.LASF229:
	.string	"_NL_COLLATE_NRULES"
.LASF659:
	.string	"power"
.LASF283:
	.string	"_NL_CTYPE_INDIGITS2_WC"
.LASF2:
	.string	"char"
.LASF543:
	.string	"scale_none"
.LASF434:
	.string	"_NL_IDENTIFICATION_TITLE"
.LASF655:
	.string	"round"
.LASF58:
	.string	"stdin"
.LASF77:
	.string	"DAY_1"
.LASF78:
	.string	"DAY_2"
.LASF79:
	.string	"DAY_3"
.LASF80:
	.string	"DAY_4"
.LASF81:
	.string	"DAY_5"
.LASF82:
	.string	"DAY_6"
.LASF83:
	.string	"DAY_7"
.LASF31:
	.string	"_IO_buf_base"
.LASF356:
	.string	"__INT_N_SEP_BY_SPACE"
.LASF620:
	.string	"precision"
.LASF347:
	.string	"__P_SEP_BY_SPACE"
.LASF455:
	.string	"mbs_align_t"
.LASF507:
	.string	"c_quoting_style"
.LASF16:
	.string	"__intmax_t"
.LASF26:
	.string	"_IO_read_end"
.LASF681:
	.string	"rval"
.LASF433:
	.string	"_NL_NUM_LC_MEASUREMENT"
.LASF70:
	.string	"ABDAY_1"
.LASF71:
	.string	"ABDAY_2"
.LASF72:
	.string	"ABDAY_3"
.LASF23:
	.string	"_IO_FILE"
.LASF74:
	.string	"ABDAY_5"
.LASF75:
	.string	"ABDAY_6"
.LASF76:
	.string	"ABDAY_7"
.LASF56:
	.string	"_IO_wide_data"
.LASF281:
	.string	"_NL_CTYPE_INDIGITS0_WC"
.LASF179:
	.string	"_NL_TIME_CODESET"
.LASF470:
	.string	"tzname"
.LASF597:
	.string	"dev_debug"
.LASF510:
	.string	"locale_quoting_style"
.LASF119:
	.string	"_NL_TIME_ERA_NUM_ENTRIES"
.LASF485:
	.string	"LOG10_TIMESPEC_HZ"
.LASF710:
	.string	"/root/coreutils"
.LASF216:
	.string	"_NL_WABALTMON_1"
.LASF217:
	.string	"_NL_WABALTMON_2"
.LASF218:
	.string	"_NL_WABALTMON_3"
.LASF219:
	.string	"_NL_WABALTMON_4"
.LASF220:
	.string	"_NL_WABALTMON_5"
.LASF221:
	.string	"_NL_WABALTMON_6"
.LASF222:
	.string	"_NL_WABALTMON_7"
.LASF223:
	.string	"_NL_WABALTMON_8"
.LASF224:
	.string	"_NL_WABALTMON_9"
.LASF660:
	.string	"power_adjust"
.LASF398:
	.string	"_NL_NUM_LC_MESSAGES"
.LASF391:
	.string	"_NL_NUMERIC_CODESET"
.LASF575:
	.string	"suffix"
.LASF116:
	.string	"ALT_DIGITS"
.LASF300:
	.string	"_NL_CTYPE_OUTDIGIT9_MB"
.LASF574:
	.string	"inval_style"
.LASF584:
	.string	"format_str"
.LASF493:
	.string	"_ISgraph"
.LASF378:
	.string	"_NL_MONETARY_DUO_VALID_TO"
.LASF511:
	.string	"clocale_quoting_style"
.LASF342:
	.string	"__POSITIVE_SIGN"
.LASF506:
	.string	"shell_escape_always_quoting_style"
.LASF50:
	.string	"__pad5"
.LASF447:
	.string	"_NL_IDENTIFICATION_DATE"
.LASF429:
	.string	"_NL_TELEPHONE_CODESET"
.LASF201:
	.string	"_NL_WALTMON_10"
.LASF202:
	.string	"_NL_WALTMON_11"
.LASF203:
	.string	"_NL_WALTMON_12"
.LASF652:
	.string	"buf_size"
.LASF622:
	.string	"next_field"
.LASF36:
	.string	"_markers"
.LASF357:
	.string	"__INT_P_SIGN_POSN"
.LASF628:
	.string	"possible_suffix"
.LASF505:
	.string	"shell_escape_quoting_style"
.LASF420:
	.string	"_NL_ADDRESS_LANG_AB"
.LASF316:
	.string	"_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN"
.LASF46:
	.string	"_codecvt"
.LASF663:
	.string	"double"
.LASF213:
	.string	"_NL_ABALTMON_10"
.LASF214:
	.string	"_NL_ABALTMON_11"
.LASF215:
	.string	"_NL_ABALTMON_12"
.LASF459:
	.string	"MBA_NO_RIGHT_PAD"
.LASF670:
	.string	"simple_strtod_float"
.LASF318:
	.string	"_NL_CTYPE_TRANSLIT_IGNORE_LEN"
.LASF399:
	.string	"_NL_PAPER_HEIGHT"
.LASF606:
	.string	"argc"
.LASF57:
	.string	"ssize_t"
.LASF435:
	.string	"_NL_IDENTIFICATION_SOURCE"
.LASF607:
	.string	"argv"
.LASF246:
	.string	"_NL_COLLATE_COLLSEQWC"
.LASF547:
	.string	"scale_IEC_I"
.LASF654:
	.string	"group"
.LASF653:
	.string	"scale"
.LASF603:
	.string	"SSE_VALID_BUT_FORBIDDEN_SUFFIX"
.LASF359:
	.string	"_NL_MONETARY_DUO_INT_CURR_SYMBOL"
.LASF468:
	.string	"__daylight"
.LASF343:
	.string	"__NEGATIVE_SIGN"
.LASF694:
	.string	"suffix_power"
.LASF319:
	.string	"_NL_CTYPE_TRANSLIT_IGNORE"
.LASF474:
	.string	"_sys_siglist"
.LASF646:
	.string	"s_err"
.LASF460:
	.string	"quoting_options"
.LASF180:
	.string	"__ALTMON_1"
.LASF181:
	.string	"__ALTMON_2"
.LASF182:
	.string	"__ALTMON_3"
.LASF183:
	.string	"__ALTMON_4"
.LASF184:
	.string	"__ALTMON_5"
.LASF185:
	.string	"__ALTMON_6"
.LASF186:
	.string	"__ALTMON_7"
.LASF187:
	.string	"__ALTMON_8"
.LASF188:
	.string	"__ALTMON_9"
.LASF465:
	.string	"error_message_count"
.LASF690:
	.string	"base"
.LASF167:
	.string	"_NL_WALT_DIGITS"
.LASF384:
	.string	"__DECIMAL_POINT"
.LASF128:
	.string	"_NL_WDAY_1"
.LASF129:
	.string	"_NL_WDAY_2"
.LASF130:
	.string	"_NL_WDAY_3"
.LASF131:
	.string	"_NL_WDAY_4"
.LASF132:
	.string	"_NL_WDAY_5"
.LASF133:
	.string	"_NL_WDAY_6"
.LASF134:
	.string	"_NL_WDAY_7"
.LASF341:
	.string	"__MON_GROUPING"
.LASF353:
	.string	"__INT_P_CS_PRECEDES"
.LASF478:
	.string	"program_invocation_name"
.LASF550:
	.string	"scale_to_args"
.LASF431:
	.string	"_NL_MEASUREMENT_MEASUREMENT"
.LASF522:
	.string	"field_range_pair"
.LASF562:
	.string	"inval_fail"
.LASF49:
	.string	"_freeres_buf"
.LASF665:
	.string	"input_str"
.LASF340:
	.string	"__MON_THOUSANDS_SEP"
.LASF685:
	.string	"simple_round_from_zero"
.LASF165:
	.string	"_NL_WERA_YEAR"
.LASF69:
	.string	"long long unsigned int"
.LASF261:
	.string	"_NL_CTYPE_WIDTH"
.LASF41:
	.string	"_cur_column"
.LASF410:
	.string	"_NL_NUM_LC_NAME"
.LASF348:
	.string	"__N_CS_PRECEDES"
.LASF400:
	.string	"_NL_PAPER_WIDTH"
.LASF351:
	.string	"__N_SIGN_POSN"
.LASF314:
	.string	"_NL_CTYPE_TRANSLIT_TO_IDX"
.LASF703:
	.string	"lc_messages"
.LASF34:
	.string	"_IO_backup_base"
.LASF268:
	.string	"_NL_CTYPE_MAP_OFFSET"
.LASF25:
	.string	"_IO_read_ptr"
.LASF362:
	.string	"_NL_MONETARY_DUO_FRAC_DIGITS"
.LASF355:
	.string	"__INT_N_CS_PRECEDES"
.LASF598:
	.string	"simple_strtod_error"
.LASF394:
	.string	"__NOEXPR"
.LASF298:
	.string	"_NL_CTYPE_OUTDIGIT7_MB"
.LASF48:
	.string	"_freeres_list"
.LASF168:
	.string	"_NL_WERA_D_T_FMT"
.LASF390:
	.string	"_NL_NUMERIC_THOUSANDS_SEP_WC"
.LASF677:
	.string	"digits"
.LASF63:
	.string	"_sys_nerr"
.LASF683:
	.string	"simple_round_nearest"
.LASF472:
	.string	"timezone"
.LASF280:
	.string	"_NL_CTYPE_INDIGITS_WC_LEN"
.LASF279:
	.string	"_NL_CTYPE_INDIGITS9_MB"
.LASF592:
	.string	"header"
.LASF312:
	.string	"_NL_CTYPE_TRANSLIT_FROM_IDX"
.LASF40:
	.string	"_old_offset"
.LASF439:
	.string	"_NL_IDENTIFICATION_TEL"
.LASF427:
	.string	"_NL_TELEPHONE_INT_SELECT"
.LASF523:
	.string	"n_frp"
.LASF1:
	.string	"optind"
.LASF65:
	.string	"long long int"
.LASF39:
	.string	"_flags2"
.LASF296:
	.string	"_NL_CTYPE_OUTDIGIT5_MB"
.LASF536:
	.string	"FIELD_OPTION"
.LASF93:
	.string	"ABMON_10"
.LASF94:
	.string	"ABMON_11"
.LASF95:
	.string	"ABMON_12"
.LASF583:
	.string	"user_precision"
.LASF462:
	.string	"argmatch_exit_fn"
.LASF526:
	.string	"SETFLD_ERRMSG_USE_POS"
.LASF22:
	.string	"option"
.LASF313:
	.string	"_NL_CTYPE_TRANSLIT_FROM_TBL"
.LASF464:
	.string	"error_print_progname"
.LASF662:
	.string	"prec"
.LASF489:
	.string	"_ISdigit"
.LASF277:
	.string	"_NL_CTYPE_INDIGITS7_MB"
.LASF228:
	.string	"_NL_NUM_LC_TIME"
.LASF170:
	.string	"_NL_TIME_WEEK_NDAYS"
.LASF534:
	.string	"GROUPING_OPTION"
.LASF669:
	.string	"multiplier"
.LASF411:
	.string	"_NL_ADDRESS_POSTAL_FMT"
.LASF61:
	.string	"sys_nerr"
.LASF634:
	.string	"suffix_pos"
.LASF392:
	.string	"_NL_NUM_LC_NUMERIC"
.LASF232:
	.string	"_NL_COLLATE_WEIGHTMB"
.LASF254:
	.string	"_NL_CTYPE_CLASS32"
.LASF105:
	.string	"MON_10"
.LASF106:
	.string	"MON_11"
.LASF107:
	.string	"MON_12"
.LASF294:
	.string	"_NL_CTYPE_OUTDIGIT3_MB"
.LASF481:
	.string	"exit_failure"
.LASF331:
	.string	"_NL_CTYPE_EXTRA_MAP_10"
.LASF332:
	.string	"_NL_CTYPE_EXTRA_MAP_11"
.LASF333:
	.string	"_NL_CTYPE_EXTRA_MAP_12"
.LASF334:
	.string	"_NL_CTYPE_EXTRA_MAP_13"
.LASF335:
	.string	"_NL_CTYPE_EXTRA_MAP_14"
.LASF539:
	.string	"HEADER_OPTION"
.LASF463:
	.string	"argmatch_die"
.LASF612:
	.string	"line_allocated"
.LASF657:
	.string	"pfmt"
.LASF638:
	.string	"main"
.LASF360:
	.string	"_NL_MONETARY_DUO_CURRENCY_SYMBOL"
.LASF275:
	.string	"_NL_CTYPE_INDIGITS5_MB"
.LASF248:
	.string	"_NL_NUM_LC_COLLATE"
.LASF581:
	.string	"padding_width"
.LASF559:
	.string	"round_types"
.LASF604:
	.string	"SSE_INVALID_SUFFIX"
.LASF417:
	.string	"_NL_ADDRESS_COUNTRY_NUM"
.LASF651:
	.string	"double_to_human"
.LASF322:
	.string	"_NL_CTYPE_EXTRA_MAP_1"
.LASF9:
	.string	"unsigned int"
.LASF324:
	.string	"_NL_CTYPE_EXTRA_MAP_3"
.LASF325:
	.string	"_NL_CTYPE_EXTRA_MAP_4"
.LASF326:
	.string	"_NL_CTYPE_EXTRA_MAP_5"
.LASF327:
	.string	"_NL_CTYPE_EXTRA_MAP_6"
.LASF328:
	.string	"_NL_CTYPE_EXTRA_MAP_7"
.LASF329:
	.string	"_NL_CTYPE_EXTRA_MAP_8"
.LASF330:
	.string	"_NL_CTYPE_EXTRA_MAP_9"
.LASF633:
	.string	"prefix_len"
.LASF443:
	.string	"_NL_IDENTIFICATION_AUDIENCE"
.LASF532:
	.string	"ROUND_OPTION"
.LASF235:
	.string	"_NL_COLLATE_GAP1"
.LASF236:
	.string	"_NL_COLLATE_GAP2"
.LASF237:
	.string	"_NL_COLLATE_GAP3"
.LASF684:
	.string	"simple_round_to_zero"
.LASF13:
	.string	"short int"
.LASF292:
	.string	"_NL_CTYPE_OUTDIGIT1_MB"
.LASF317:
	.string	"_NL_CTYPE_TRANSLIT_DEFAULT_MISSING"
.LASF42:
	.string	"_vtable_offset"
.LASF117:
	.string	"ERA_D_T_FMT"
.LASF374:
	.string	"_NL_MONETARY_DUO_INT_N_SIGN_POSN"
.LASF397:
	.string	"_NL_MESSAGES_CODESET"
.LASF630:
	.string	"precision_used"
.LASF695:
	.string	"valid_suffix"
.LASF442:
	.string	"_NL_IDENTIFICATION_TERRITORY"
.LASF498:
	.string	"GETOPT_HELP_CHAR"
.LASF273:
	.string	"_NL_CTYPE_INDIGITS3_MB"
.LASF564:
	.string	"inval_ignore"
.LASF475:
	.string	"sys_siglist"
.LASF449:
	.string	"_NL_IDENTIFICATION_CODESET"
.LASF689:
	.string	"expld"
.LASF405:
	.string	"_NL_NAME_NAME_MR"
.LASF408:
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
