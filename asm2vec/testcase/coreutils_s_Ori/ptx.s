	.file	"ptx.c"
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
	.data
	.type	gnu_extensions, @object
	.size	gnu_extensions, 1
gnu_extensions:
	.byte	1
	.local	auto_reference
	.comm	auto_reference,1,1
	.local	input_reference
	.comm	input_reference,1,1
	.local	right_reference
	.comm	right_reference,1,1
	.align 8
	.type	line_width, @object
	.size	line_width, 8
line_width:
	.quad	72
	.align 8
	.type	gap_size, @object
	.size	gap_size, 8
gap_size:
	.quad	3
	.section	.rodata
.LC20:
	.string	"/"
	.section	.data.rel.local,"aw"
	.align 8
	.type	truncation_string, @object
	.size	truncation_string, 8
truncation_string:
	.quad	.LC20
	.section	.rodata
.LC21:
	.string	"xx"
	.section	.data.rel.local
	.align 8
	.type	macro_name, @object
	.size	macro_name, 8
macro_name:
	.quad	.LC21
	.local	output_format
	.comm	output_format,4,4
	.local	ignore_case
	.comm	ignore_case,1,1
	.local	break_file
	.comm	break_file,8,8
	.local	only_file
	.comm	only_file,8,8
	.local	ignore_file
	.comm	ignore_file,8,8
	.local	context_regex
	.comm	context_regex,328,32
	.local	word_regex
	.comm	word_regex,328,32
	.local	folded_chars
	.comm	folded_chars,256,32
	.local	context_regs
	.comm	context_regs,24,16
	.local	word_regs
	.comm	word_regs,24,16
	.local	word_fastmap
	.comm	word_fastmap,256,32
	.local	maximum_word_length
	.comm	maximum_word_length,8,8
	.local	reference_max_width
	.comm	reference_max_width,8,8
	.local	ignore_table
	.comm	ignore_table,24,16
	.local	only_table
	.comm	only_table,24,16
	.local	number_input_files
	.comm	number_input_files,4,4
	.local	total_line_count
	.comm	total_line_count,8,8
	.local	input_file_name
	.comm	input_file_name,8,8
	.local	file_line_count
	.comm	file_line_count,8,8
	.local	text_buffers
	.comm	text_buffers,8,8
	.local	occurs_table
	.comm	occurs_table,8,8
	.local	occurs_alloc
	.comm	occurs_alloc,8,8
	.local	number_of_occurs
	.comm	number_of_occurs,8,8
	.local	edited_flag
	.comm	edited_flag,256,32
	.local	half_line_width
	.comm	half_line_width,8,8
	.local	before_max_width
	.comm	before_max_width,8,8
	.local	keyafter_max_width
	.comm	keyafter_max_width,8,8
	.local	truncation_string_length
	.comm	truncation_string_length,8,8
	.local	tail
	.comm	tail,16,16
	.local	tail_truncation
	.comm	tail_truncation,1,1
	.local	before
	.comm	before,16,16
	.local	before_truncation
	.comm	before_truncation,1,1
	.local	keyafter
	.comm	keyafter,16,16
	.local	keyafter_truncation
	.comm	keyafter_truncation,1,1
	.local	head
	.comm	head,16,16
	.local	head_truncation
	.comm	head_truncation,1,1
	.local	reference
	.comm	reference,16,16
	.section	.rodata
	.align 8
.LC22:
	.string	"error in regular expression matcher"
	.text
	.type	matcher_error, @function
matcher_error:
.LFB46:
	.file 2 "src/ptx.c"
	.loc 2 288 1 is_stmt 1
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
	.loc 2 289 3
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
	.cfi_endproc
.LFE46:
	.size	matcher_error, .-matcher_error
	.type	copy_unescaped_string, @function
copy_unescaped_string:
.LFB47:
	.loc 2 300 1
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
	.loc 2 306 21
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 306 12
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 307 10
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 309 9
	jmp	.L16
.L46:
	.loc 2 311 11
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 311 10
	cmpb	$92, %al
	jne	.L17
	.loc 2 313 17
	addq	$1, -56(%rbp)
	.loc 2 314 19
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 314 11
	testl	%eax, %eax
	je	.L48
	testl	%eax, %eax
	js	.L19
	cmpl	$120, %eax
	jg	.L19
	cmpl	$48, %eax
	jl	.L19
	subl	$48, %eax
	cmpl	$72, %eax
	ja	.L19
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L21(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L21(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L21:
	.long	.L30-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L29-.L21
	.long	.L28-.L21
	.long	.L44-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L26-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L25-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L19-.L21
	.long	.L24-.L21
	.long	.L19-.L21
	.long	.L23-.L21
	.long	.L19-.L21
	.long	.L22-.L21
	.long	.L19-.L21
	.long	.L20-.L21
	.text
.L20:
	.loc 2 317 21
	movl	$0, -40(%rbp)
	.loc 2 318 27
	movl	$0, -36(%rbp)
	.loc 2 318 38
	addq	$1, -56(%rbp)
	.loc 2 318 15
	jmp	.L31
.L37:
	.loc 2 321 31
	movl	-40(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	.loc 2 321 38
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L32
	.loc 2 321 38 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	jg	.L32
	.loc 2 321 38 discriminator 3
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$87, %eax
	jmp	.L33
.L32:
	.loc 2 321 38 discriminator 4
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L34
	.loc 2 321 38 discriminator 6
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	jg	.L34
	.loc 2 321 38 discriminator 8
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$55, %eax
	jmp	.L33
.L34:
	.loc 2 321 38 discriminator 9
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
.L33:
	.loc 2 321 23 is_stmt 1 discriminator 12
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	.loc 2 320 26 discriminator 12
	addl	$1, -36(%rbp)
	.loc 2 320 36 discriminator 12
	addq	$1, -56(%rbp)
.L31:
	.loc 2 318 15 discriminator 1
	cmpl	$2, -36(%rbp)
	jg	.L36
	.loc 2 319 34
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	.loc 2 319 31
	testl	%eax, %eax
	jne	.L37
.L36:
	.loc 2 322 18
	cmpl	$0, -36(%rbp)
	jne	.L38
	.loc 2 324 26
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 324 29
	movb	$92, (%rax)
	.loc 2 325 26
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 325 29
	movb	$120, (%rax)
	.loc 2 329 15
	jmp	.L16
.L38:
	.loc 2 328 24
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 328 27
	movl	-40(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 329 15
	jmp	.L16
.L30:
	.loc 2 332 21
	movl	$0, -40(%rbp)
	.loc 2 333 27
	movl	$0, -36(%rbp)
	.loc 2 333 38
	addq	$1, -56(%rbp)
	.loc 2 333 15
	jmp	.L41
.L43:
	.loc 2 336 31
	movl	-40(%rbp), %eax
	leal	0(,%rax,8), %edx
	.loc 2 336 37
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 336 23
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	.loc 2 335 26
	addl	$1, -36(%rbp)
	.loc 2 335 36
	addq	$1, -56(%rbp)
.L41:
	.loc 2 333 15 discriminator 1
	cmpl	$2, -36(%rbp)
	jg	.L42
	.loc 2 334 34
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 334 31
	cmpb	$47, %al
	jle	.L42
	.loc 2 334 34 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$55, %al
	jle	.L43
.L42:
	.loc 2 337 22
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 337 25
	movl	-40(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 338 15
	jmp	.L16
.L29:
	.loc 2 342 22
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 342 25
	movb	$7, (%rax)
	.loc 2 346 21
	addq	$1, -56(%rbp)
	.loc 2 347 15
	jmp	.L16
.L28:
	.loc 2 350 22
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 350 25
	movb	$8, (%rax)
	.loc 2 351 21
	addq	$1, -56(%rbp)
	.loc 2 352 15
	jmp	.L16
.L45:
	.loc 2 356 23
	addq	$1, -56(%rbp)
.L44:
	.loc 2 355 22
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 355 21
	testb	%al, %al
	jne	.L45
	.loc 2 357 15
	jmp	.L16
.L26:
	.loc 2 360 22
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 360 25
	movb	$12, (%rax)
	.loc 2 361 21
	addq	$1, -56(%rbp)
	.loc 2 362 15
	jmp	.L16
.L25:
	.loc 2 365 22
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 365 25
	movb	$10, (%rax)
	.loc 2 366 21
	addq	$1, -56(%rbp)
	.loc 2 367 15
	jmp	.L16
.L24:
	.loc 2 370 22
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 370 25
	movb	$13, (%rax)
	.loc 2 371 21
	addq	$1, -56(%rbp)
	.loc 2 372 15
	jmp	.L16
.L23:
	.loc 2 375 22
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 375 25
	movb	$9, (%rax)
	.loc 2 376 21
	addq	$1, -56(%rbp)
	.loc 2 377 15
	jmp	.L16
.L22:
	.loc 2 381 22
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 381 25
	movb	$11, (%rax)
	.loc 2 385 21
	addq	$1, -56(%rbp)
	.loc 2 386 15
	jmp	.L16
.L19:
	.loc 2 393 22
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 393 25
	movb	$92, (%rax)
	.loc 2 394 34
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	.loc 2 394 22
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	.loc 2 394 27
	movzbl	(%rdx), %edx
	.loc 2 394 25
	movb	%dl, (%rax)
	.loc 2 395 15
	jmp	.L16
.L48:
	.loc 2 390 15
	nop
	jmp	.L16
.L17:
	.loc 2 399 28
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	.loc 2 399 16
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	.loc 2 399 21
	movzbl	(%rdx), %edx
	.loc 2 399 19
	movb	%dl, (%rax)
.L16:
	.loc 2 309 10
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 309 9
	testb	%al, %al
	jne	.L46
	.loc 2 402 11
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 403 10
	movq	-24(%rbp), %rax
	.loc 2 404 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	copy_unescaped_string, .-copy_unescaped_string
	.section	.rodata
.LC23:
	.string	"%s (for regexp %s)"
	.text
	.type	compile_regex, @function
compile_regex:
.LFB48:
	.loc 2 412 1
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
	.loc 2 413 29
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	.loc 2 414 15
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 417 19
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 418 22
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 419 22
	movq	-56(%rbp), %rax
	leaq	72(%rax), %rdx
	.loc 2 419 20
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 2 420 36
	movzbl	ignore_case(%rip), %eax
	.loc 2 420 51
	testb	%al, %al
	je	.L50
	.loc 2 420 51 is_stmt 0 discriminator 1
	leaq	folded_chars(%rip), %rdx
	jmp	.L51
.L50:
	.loc 2 420 51 discriminator 2
	movl	$0, %edx
.L51:
	.loc 2 420 22 is_stmt 1 discriminator 4
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 2 422 13 discriminator 4
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_re_compile_pattern@PLT
	movq	%rax, -24(%rbp)
	.loc 2 423 6 discriminator 4
	cmpq	$0, -24(%rbp)
	je	.L52
.LBB2:
	.loc 2 424 5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L52:
.LBE2:
	.loc 2 430 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_re_compile_fastmap@PLT
	.loc 2 431 1
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	compile_regex, .-compile_regex
	.section	.rodata
	.align 8
.LC24:
	.string	"[.?!][]\"')}]*\\($\\|\t\\|  \\)[ \t\n]*"
.LC25:
	.string	"\n"
	.text
	.type	initialize_regex, @function
initialize_regex:
.LFB49:
	.loc 2 440 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 445 7
	movzbl	ignore_case(%rip), %eax
	.loc 2 445 6
	testb	%al, %al
	je	.L54
	.loc 2 446 20
	movl	$0, -4(%rbp)
	.loc 2 446 5
	jmp	.L55
.L56:
	.loc 2 447 33 discriminator 3
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	toupper@PLT
	.loc 2 447 31 discriminator 3
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	folded_chars(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 2 446 61 discriminator 3
	addl	$1, -4(%rbp)
.L55:
	.loc 2 446 5 discriminator 1
	cmpl	$255, -4(%rbp)
	jle	.L56
.L54:
	.loc 2 456 20
	movq	context_regex(%rip), %rax
	.loc 2 456 6
	testq	%rax, %rax
	je	.L57
	.loc 2 458 26
	movq	context_regex(%rip), %rax
	.loc 2 458 12
	movzbl	(%rax), %eax
	.loc 2 458 10
	testb	%al, %al
	jne	.L58
	.loc 2 459 30
	movq	$0, context_regex(%rip)
	jmp	.L58
.L57:
	.loc 2 461 12
	movzbl	gnu_extensions(%rip), %eax
	.loc 2 461 11
	testb	%al, %al
	je	.L59
	.loc 2 461 30 discriminator 1
	movzbl	input_reference(%rip), %eax
	xorl	$1, %eax
	.loc 2 461 27 discriminator 1
	testb	%al, %al
	je	.L59
	.loc 2 462 26
	leaq	.LC24(%rip), %rax
	movq	%rax, context_regex(%rip)
	jmp	.L58
.L59:
	.loc 2 464 26
	leaq	.LC25(%rip), %rax
	movq	%rax, context_regex(%rip)
.L58:
	.loc 2 466 20
	movq	context_regex(%rip), %rax
	.loc 2 466 6
	testq	%rax, %rax
	je	.L60
	.loc 2 467 5
	leaq	context_regex(%rip), %rdi
	call	compile_regex
.L60:
	.loc 2 477 17
	movq	word_regex(%rip), %rax
	.loc 2 477 6
	testq	%rax, %rax
	je	.L61
	.loc 2 478 5
	leaq	word_regex(%rip), %rdi
	call	compile_regex
	.loc 2 500 1
	jmp	.L66
.L61:
	.loc 2 479 12
	movq	break_file(%rip), %rax
	.loc 2 479 11
	testq	%rax, %rax
	jne	.L66
	.loc 2 481 11
	movzbl	gnu_extensions(%rip), %eax
	.loc 2 481 10
	testb	%al, %al
	je	.L63
	.loc 2 486 26
	movl	$0, -4(%rbp)
	.loc 2 486 11
	jmp	.L64
.L65:
	.loc 2 487 42 discriminator 3
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	.loc 2 487 39 discriminator 3
	testl	%eax, %eax
	setne	%al
	movl	%eax, %ecx
	.loc 2 487 37 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 2 486 67 discriminator 3
	addl	$1, -4(%rbp)
.L64:
	.loc 2 486 11 discriminator 1
	cmpl	$255, -4(%rbp)
	jle	.L65
	.loc 2 500 1
	jmp	.L66
.L63:
	.loc 2 494 11
	movl	$256, %edx
	movl	$1, %esi
	leaq	word_fastmap(%rip), %rdi
	call	memset@PLT
	.loc 2 495 29
	movb	$0, 32+word_fastmap(%rip)
	.loc 2 496 30
	movb	$0, 9+word_fastmap(%rip)
	.loc 2 497 30
	movb	$0, 10+word_fastmap(%rip)
.L66:
	.loc 2 500 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	initialize_regex, .-initialize_regex
	.section	.rodata
.LC26:
	.string	"-"
.LC27:
	.string	"%s"
	.text
	.type	swallow_file_in_memory, @function
swallow_file_in_memory:
.LFB50:
	.loc 2 515 1
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
	.loc 2 515 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 521 48
	cmpq	$0, -56(%rbp)
	je	.L68
	.loc 2 521 37 discriminator 2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 521 33 discriminator 2
	testb	%al, %al
	je	.L68
	.loc 2 521 51 discriminator 4
	movq	-56(%rbp), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 521 48 discriminator 4
	testl	%eax, %eax
	jne	.L69
.L68:
	.loc 2 521 48 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L70
.L69:
	.loc 2 521 48 discriminator 6
	movl	$0, %eax
.L70:
	.loc 2 521 8 is_stmt 1 discriminator 8
	movb	%al, -33(%rbp)
	andb	$1, -33(%rbp)
	.loc 2 522 6 discriminator 8
	cmpb	$0, -33(%rbp)
	je	.L71
	.loc 2 523 20
	movq	stdin(%rip), %rax
	leaq	-32(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fread_file@PLT
	.loc 2 523 18
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L72
.L71:
	.loc 2 525 20
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	read_file@PLT
	.loc 2 525 18
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
.L72:
	.loc 2 527 13
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 527 6
	testq	%rax, %rax
	jne	.L73
.LBB3:
	.loc 2 528 5
	cmpb	$0, -33(%rbp)
	je	.L74
	.loc 2 528 5 is_stmt 0 discriminator 1
	leaq	.LC26(%rip), %rax
	jmp	.L75
.L74:
	.loc 2 528 5 discriminator 2
	movq	-56(%rbp), %rax
.L75:
	.loc 2 528 5 discriminator 4
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC27(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L73:
.LBE3:
	.loc 2 530 21 is_stmt 1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 530 29
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 530 14
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 531 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L76
	call	__stack_chk_fail@PLT
.L76:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	swallow_file_in_memory, .-swallow_file_in_memory
	.type	compare_words, @function
compare_words:
.LFB51:
	.loc 2 545 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	.loc 2 552 32
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 552 17
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 552 10
	cmpq	%rax, %rdx
	cmovle	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 554 7
	movzbl	ignore_case(%rip), %eax
	.loc 2 554 6
	testb	%al, %al
	je	.L78
	.loc 2 556 20
	movq	$0, -24(%rbp)
	.loc 2 556 7
	jmp	.L79
.L82:
	.loc 2 558 49
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 558 56
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 558 34
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 558 33
	cltq
	leaq	folded_chars(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %ebx
	.loc 2 559 52
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 559 59
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 559 36
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 559 35
	cltq
	leaq	folded_chars(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	.loc 2 558 17
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -28(%rbp)
	.loc 2 560 14
	cmpl	$0, -28(%rbp)
	je	.L80
	.loc 2 561 20
	movl	-28(%rbp), %eax
	jmp	.L81
.L80:
	.loc 2 556 50 discriminator 2
	addq	$1, -24(%rbp)
.L79:
	.loc 2 556 7 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.L82
	jmp	.L83
.L78:
	.loc 2 566 20
	movq	$0, -24(%rbp)
	.loc 2 566 7
	jmp	.L84
.L86:
	.loc 2 568 35
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 568 42
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 568 20
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %ebx
	.loc 2 569 38
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 569 45
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 569 22
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 568 17
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -28(%rbp)
	.loc 2 570 14
	cmpl	$0, -28(%rbp)
	je	.L85
	.loc 2 571 20
	movl	-28(%rbp), %eax
	jmp	.L81
.L85:
	.loc 2 566 50 discriminator 2
	addq	$1, -24(%rbp)
.L84:
	.loc 2 566 7 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.L86
.L83:
	.loc 2 575 15
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 575 30
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 575 42
	cmpq	%rax, %rdx
	jl	.L87
	.loc 2 575 49 discriminator 1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 575 64 discriminator 1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 575 56 discriminator 1
	cmpq	%rax, %rdx
	setg	%al
	.loc 2 575 42 discriminator 1
	movzbl	%al, %eax
	jmp	.L81
.L87:
	.loc 2 575 42 is_stmt 0 discriminator 2
	movl	$-1, %eax
.L81:
	.loc 2 578 1 is_stmt 1
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	compare_words, .-compare_words
	.type	compare_occurs, @function
compare_occurs:
.LFB52:
	.loc 2 588 1
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
	.loc 2 593 39
	movq	-32(%rbp), %rdx
	.loc 2 593 26
	movq	-24(%rbp), %rax
	.loc 2 593 11
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare_words
	movl	%eax, -4(%rbp)
	.loc 2 595 11
	cmpl	$0, -4(%rbp)
	jne	.L90
	.loc 2 595 23 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 595 43 discriminator 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 596 11 discriminator 1
	cmpq	%rax, %rdx
	jb	.L91
	.loc 2 596 23 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 596 43 discriminator 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 596 30 discriminator 1
	cmpq	%rax, %rdx
	seta	%al
	.loc 2 596 11 discriminator 1
	movzbl	%al, %eax
	.loc 2 595 11 discriminator 1
	jmp	.L94
.L91:
	.loc 2 596 11 discriminator 2
	movl	$-1, %eax
	.loc 2 595 11 discriminator 2
	jmp	.L94
.L90:
	movl	-4(%rbp), %eax
.L94:
	.loc 2 599 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	compare_occurs, .-compare_occurs
	.type	search_table, @function
search_table:
.LFB53:
	.loc 2 605 1
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
	.loc 2 611 10
	movq	$0, -24(%rbp)
	.loc 2 612 18
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 612 11
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	.loc 2 613 9
	jmp	.L96
.L100:
	.loc 2 615 24
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 615 14
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
	.loc 2 616 41
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 616 49
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	.loc 2 616 15
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare_words
	movl	%eax, -28(%rbp)
	.loc 2 617 10
	cmpl	$0, -28(%rbp)
	jns	.L97
	.loc 2 618 17
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.L96
.L97:
	.loc 2 619 15
	cmpl	$0, -28(%rbp)
	jle	.L98
	.loc 2 620 16
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L96
.L98:
	.loc 2 622 16
	movl	$1, %eax
	jmp	.L99
.L96:
	.loc 2 613 9
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.L100
	.loc 2 624 10
	movl	$0, %eax
.L99:
	.loc 2 625 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	search_table, .-search_table
	.type	sort_found_occurs, @function
sort_found_occurs:
.LFB54:
	.loc 2 635 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 638 23
	movq	number_of_occurs(%rip), %rax
	.loc 2 638 6
	testq	%rax, %rax
	je	.L103
	.loc 2 639 45
	movq	number_of_occurs(%rip), %rax
	.loc 2 639 5
	movq	%rax, %rsi
	.loc 2 639 24
	movq	occurs_table(%rip), %rax
	.loc 2 639 5
	leaq	compare_occurs(%rip), %rcx
	movl	$48, %edx
	movq	%rax, %rdi
	call	qsort@PLT
.L103:
	.loc 2 641 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	sort_found_occurs, .-sort_found_occurs
	.type	digest_break_file, @function
digest_break_file:
.LFB55:
	.loc 2 653 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 2 653 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 657 3
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	swallow_file_in_memory
	.loc 2 661 3
	movl	$256, %edx
	movl	$1, %esi
	leaq	word_fastmap(%rip), %rdi
	call	memset@PLT
	.loc 2 662 15
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 662 3
	jmp	.L105
.L106:
	.loc 2 663 28 discriminator 3
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 663 18 discriminator 3
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 663 38 discriminator 3
	cltq
	leaq	word_fastmap(%rip), %rdx
	movb	$0, (%rax,%rdx)
	.loc 2 662 72 discriminator 3
	addq	$1, -40(%rbp)
.L105:
	.loc 2 662 60 discriminator 1
	movq	-24(%rbp), %rax
	.loc 2 662 3 discriminator 1
	cmpq	%rax, -40(%rbp)
	jb	.L106
	.loc 2 665 7
	movzbl	gnu_extensions(%rip), %eax
	xorl	$1, %eax
	.loc 2 665 6
	testb	%al, %al
	je	.L107
	.loc 2 674 25
	movb	$0, 32+word_fastmap(%rip)
	.loc 2 675 26
	movb	$0, 9+word_fastmap(%rip)
	.loc 2 676 26
	movb	$0, 10+word_fastmap(%rip)
.L107:
	.loc 2 681 22
	movq	-32(%rbp), %rax
	.loc 2 681 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 682 1
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
.LFE55:
	.size	digest_break_file, .-digest_break_file
	.type	digest_word_file, @function
digest_word_file:
.LFB56:
	.loc 2 693 1
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
	.loc 2 693 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 698 3
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	swallow_file_in_memory
	.loc 2 700 16
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 701 16
	movq	-64(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 702 17
	movq	-64(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 706 10
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 707 9
	jmp	.L110
.L116:
	.loc 2 712 18
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 713 13
	jmp	.L111
.L113:
	.loc 2 714 15
	addq	$1, -48(%rbp)
.L111:
	.loc 2 713 36
	movq	-24(%rbp), %rax
	.loc 2 713 13
	cmpq	%rax, -48(%rbp)
	jnb	.L112
	.loc 2 713 44 discriminator 1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 713 41 discriminator 1
	cmpb	$10, %al
	jne	.L113
.L112:
	.loc 2 718 10
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.L114
	.loc 2 720 20
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 720 37
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 720 14
	cmpq	%rax, %rdx
	jne	.L115
	.loc 2 721 28
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	.loc 2 721 45
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 721 28
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 721 26
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
.L115:
	.loc 2 723 16
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 723 29
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 723 23
	salq	$4, %rax
	addq	%rax, %rdx
	.loc 2 723 45
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 724 16
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 724 29
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 724 23
	salq	$4, %rax
	addq	%rax, %rdx
	.loc 2 724 53
	movq	-48(%rbp), %rax
	subq	-40(%rbp), %rax
	.loc 2 724 44
	movq	%rax, 8(%rdx)
	.loc 2 725 16
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 725 24
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 16(%rax)
.L114:
	.loc 2 730 33
	movq	-24(%rbp), %rax
	.loc 2 730 10
	cmpq	%rax, -48(%rbp)
	jnb	.L110
	.loc 2 731 15
	addq	$1, -48(%rbp)
.L110:
	.loc 2 707 32
	movq	-24(%rbp), %rax
	.loc 2 707 9
	cmpq	%rax, -48(%rbp)
	jb	.L116
	.loc 2 736 29
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 736 3
	movq	%rax, %rsi
	.loc 2 736 15
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 736 3
	leaq	compare_words(%rip), %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	.loc 2 737 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L117
	call	__stack_chk_fail@PLT
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	digest_word_file, .-digest_word_file
	.section	.rodata
	.align 8
.LC28:
	.string	"error: regular expression has a match of length zero: %s"
	.text
	.type	find_occurs_in_text, @function
find_occurs_in_text:
.LFB57:
	.loc 2 747 1
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
	movl	%edi, -164(%rbp)
	.loc 2 747 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 762 30
	movq	text_buffers(%rip), %rax
	.loc 2 762 43
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	.loc 2 762 16
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 2 768 20
	movq	$0, -120(%rbp)
	.loc 2 779 14
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	.loc 2 780 13
	movq	-136(%rbp), %rax
	movq	%rax, -128(%rbp)
	.loc 2 781 7
	movzbl	input_reference(%rip), %eax
	.loc 2 781 6
	testb	%al, %al
	je	.L119
	.loc 2 783 7
	jmp	.L120
.L122:
	.loc 2 783 7 is_stmt 0 discriminator 3
	addq	$1, -128(%rbp)
.L120:
	.loc 2 783 7 discriminator 1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -128(%rbp)
	jnb	.L121
	.loc 2 783 7 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-128(%rbp), %rax
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
	testl	%eax, %eax
	je	.L122
.L121:
	.loc 2 784 24 is_stmt 1
	movq	-128(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc 2 785 7
	jmp	.L123
.L124:
	.loc 2 785 7 is_stmt 0 discriminator 3
	addq	$1, -128(%rbp)
.L123:
	.loc 2 785 7 discriminator 1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -128(%rbp)
	jnb	.L119
	.loc 2 785 7 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-128(%rbp), %rax
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
	testl	%eax, %eax
	jne	.L124
.L119:
	.loc 2 790 15 is_stmt 1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	.loc 2 790 3
	jmp	.L125
.L173:
	.loc 2 799 21
	movq	-152(%rbp), %rax
	movq	%rax, -112(%rbp)
	.loc 2 809 26
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	.loc 2 810 24
	movq	context_regex(%rip), %rax
	.loc 2 810 10
	testq	%rax, %rax
	je	.L175
	.loc 2 813 42
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 811 17
	subq	-152(%rbp), %rax
	movq	%rax, %rcx
	.loc 2 812 39
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 811 17
	subq	-152(%rbp), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	leaq	context_regs(%rip), %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	leaq	8+context_regex(%rip), %rdi
	call	rpl_re_search@PLT
	.loc 2 811 9
	testq	%rax, %rax
	je	.L127
	testq	%rax, %rax
	jg	.L128
	cmpq	$-2, %rax
	je	.L129
	cmpq	$-1, %rax
	je	.L176
	jmp	.L128
.L129:
.LBB4:
	.loc 2 816 13
	call	matcher_error
.L127:
	.loc 2 822 13
	movq	context_regex(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L128:
	.loc 2 827 55
	movq	16+context_regs(%rip), %rax
	.loc 2 827 59
	movq	(%rax), %rax
	movq	%rax, %rdx
	.loc 2 827 32
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	.loc 2 828 13
	jmp	.L126
.L175:
.LBE4:
	.loc 2 835 7
	nop
	jmp	.L126
.L176:
.LBB5:
	.loc 2 819 13
	nop
.L126:
.LBE5:
	.loc 2 835 19
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 2 836 7
	jmp	.L131
.L133:
	.loc 2 836 7 is_stmt 0 discriminator 3
	subq	$1, -104(%rbp)
.L131:
	.loc 2 836 7 discriminator 1
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jbe	.L172
	.loc 2 836 7 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-104(%rbp), %rax
	subq	$1, %rax
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
	testl	%eax, %eax
	jne	.L133
.L172:
	.loc 2 843 25 is_stmt 1
	movq	word_regex(%rip), %rax
	.loc 2 843 14
	testq	%rax, %rax
	je	.L134
.LBB6:
	.loc 2 850 28
	movq	-104(%rbp), %rax
	subq	-152(%rbp), %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	subq	-152(%rbp), %rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	leaq	word_regs(%rip), %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	leaq	8+word_regex(%rip), %rdi
	call	rpl_re_search@PLT
	movq	%rax, -64(%rbp)
	.loc 2 853 18
	cmpq	$-2, -64(%rbp)
	jne	.L135
	.loc 2 854 17
	call	matcher_error
.L135:
	.loc 2 855 18
	cmpq	$-1, -64(%rbp)
	je	.L177
	.loc 2 857 46
	movq	8+word_regs(%rip), %rax
	.loc 2 857 52
	movq	(%rax), %rax
	movq	%rax, %rdx
	.loc 2 857 26
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	.loc 2 858 44
	movq	16+word_regs(%rip), %rax
	.loc 2 858 48
	movq	(%rax), %rax
	movq	%rax, %rdx
	.loc 2 858 24
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
.LBE6:
	jmp	.L138
.L134:
	.loc 2 867 20
	movq	-152(%rbp), %rax
	movq	%rax, -144(%rbp)
	.loc 2 868 21
	jmp	.L139
.L141:
	.loc 2 870 21
	addq	$1, -144(%rbp)
.L139:
	.loc 2 868 21
	movq	-144(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jnb	.L140
	.loc 2 869 49
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 869 39
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 869 38
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 869 22
	testb	%al, %al
	je	.L141
.L140:
	.loc 2 872 18
	movq	-144(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L178
	.loc 2 875 26
	movq	-144(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 2 877 21
	jmp	.L143
.L145:
	.loc 2 879 21
	addq	$1, -144(%rbp)
.L143:
	.loc 2 877 21
	movq	-144(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jnb	.L144
	.loc 2 878 48
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 878 38
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 878 37
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 878 22
	testb	%al, %al
	jne	.L145
.L144:
	.loc 2 881 24
	movq	-144(%rbp), %rax
	movq	%rax, -88(%rbp)
.L138:
	.loc 2 886 18
	movq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)
	.loc 2 891 14
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.L146
	.loc 2 893 21
	addq	$1, -152(%rbp)
	.loc 2 894 15
	jmp	.L147
.L146:
	.loc 2 904 30
	movq	-152(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 905 40
	movq	-88(%rbp), %rax
	subq	-96(%rbp), %rax
	.loc 2 905 29
	movq	%rax, -40(%rbp)
	.loc 2 906 33
	movq	-40(%rbp), %rax
	.loc 2 906 18
	addq	%rax, -152(%rbp)
	.loc 2 908 27
	movq	-40(%rbp), %rdx
	.loc 2 908 33
	movq	maximum_word_length(%rip), %rax
	.loc 2 908 14
	cmpq	%rax, %rdx
	jle	.L148
	.loc 2 909 47
	movq	-40(%rbp), %rax
	.loc 2 909 33
	movq	%rax, maximum_word_length(%rip)
.L148:
	.loc 2 916 15
	movzbl	input_reference(%rip), %eax
	.loc 2 916 14
	testb	%al, %al
	je	.L149
	.loc 2 918 21
	jmp	.L150
.L155:
	.loc 2 919 21
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 919 20
	cmpb	$10, %al
	jne	.L151
	.loc 2 921 37
	movq	total_line_count(%rip), %rax
	addq	$1, %rax
	movq	%rax, total_line_count(%rip)
	.loc 2 922 30
	addq	$1, -128(%rbp)
	.loc 2 923 32
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	.loc 2 924 21
	jmp	.L152
.L154:
	.loc 2 924 21 is_stmt 0 discriminator 3
	addq	$1, -128(%rbp)
.L152:
	.loc 2 924 21 discriminator 1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -128(%rbp)
	jnb	.L153
	.loc 2 924 21 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-128(%rbp), %rax
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
	testl	%eax, %eax
	je	.L154
.L153:
	.loc 2 925 38 is_stmt 1
	movq	-128(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.L150
.L151:
	.loc 2 928 28
	addq	$1, -128(%rbp)
.L150:
	.loc 2 918 46
	movq	-48(%rbp), %rax
	.loc 2 918 21
	cmpq	%rax, -128(%rbp)
	jb	.L155
	.loc 2 929 43
	movq	-48(%rbp), %rax
	.loc 2 929 18
	cmpq	%rax, -128(%rbp)
	ja	.L179
.L149:
	.loc 2 943 15
	movq	ignore_file(%rip), %rax
	.loc 2 943 14
	testq	%rax, %rax
	je	.L156
	.loc 2 943 30 discriminator 1
	leaq	-48(%rbp), %rax
	leaq	ignore_table(%rip), %rsi
	movq	%rax, %rdi
	call	search_table
	.loc 2 943 27 discriminator 1
	testb	%al, %al
	jne	.L180
.L156:
	.loc 2 945 15
	movq	only_file(%rip), %rax
	.loc 2 945 14
	testq	%rax, %rax
	je	.L157
	.loc 2 945 29 discriminator 1
	leaq	-48(%rbp), %rax
	leaq	only_table(%rip), %rsi
	movq	%rax, %rdi
	call	search_table
	.loc 2 945 28 discriminator 1
	xorl	$1, %eax
	.loc 2 945 25 discriminator 1
	testb	%al, %al
	jne	.L181
.L157:
	.loc 2 952 31
	movq	number_of_occurs(%rip), %rax
	.loc 2 952 50
	movq	occurs_alloc(%rip), %rdx
	.loc 2 952 14
	cmpq	%rdx, %rax
	jne	.L158
	.loc 2 953 55
	movq	occurs_table(%rip), %rax
	.loc 2 953 31
	movl	$48, %edx
	leaq	occurs_alloc(%rip), %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 953 29
	movq	%rax, occurs_table(%rip)
.L158:
	.loc 2 956 39
	movq	occurs_table(%rip), %rdx
	.loc 2 956 61
	movq	number_of_occurs(%rip), %rax
	movq	%rax, %rcx
	.loc 2 956 43
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	.loc 2 956 25
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 2 960 15
	movzbl	auto_reference(%rip), %eax
	.loc 2 960 14
	testb	%al, %al
	je	.L159
	.loc 2 969 21
	jmp	.L160
.L164:
	.loc 2 970 21
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 970 20
	cmpb	$10, %al
	jne	.L161
	.loc 2 972 37
	movq	total_line_count(%rip), %rax
	addq	$1, %rax
	movq	%rax, total_line_count(%rip)
	.loc 2 973 30
	addq	$1, -128(%rbp)
	.loc 2 974 32
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	.loc 2 975 21
	jmp	.L162
.L163:
	.loc 2 975 21 is_stmt 0 discriminator 3
	addq	$1, -128(%rbp)
.L162:
	.loc 2 975 21 discriminator 1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -128(%rbp)
	jnb	.L160
	.loc 2 975 21 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-128(%rbp), %rax
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
	testl	%eax, %eax
	je	.L163
	jmp	.L160
.L161:
	.loc 2 978 28 is_stmt 1
	addq	$1, -128(%rbp)
.L160:
	.loc 2 969 46
	movq	-48(%rbp), %rax
	.loc 2 969 21
	cmpq	%rax, -128(%rbp)
	jb	.L164
	.loc 2 980 40
	movq	total_line_count(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L165
.L159:
	.loc 2 982 20
	movzbl	input_reference(%rip), %eax
	.loc 2 982 19
	testb	%al, %al
	je	.L165
	.loc 2 990 67
	movq	-48(%rbp), %rax
	.loc 2 990 53
	movq	-136(%rbp), %rdx
	subq	%rax, %rdx
	.loc 2 990 40
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 2 991 36
	movq	reference_max_width(%rip), %rax
	.loc 2 991 18
	cmpq	%rax, -120(%rbp)
	jle	.L165
	.loc 2 992 37
	movq	-120(%rbp), %rax
	movq	%rax, reference_max_width(%rip)
.L165:
	.loc 2 997 15
	movzbl	input_reference(%rip), %eax
	.loc 2 997 14
	testb	%al, %al
	je	.L166
	.loc 2 997 31 discriminator 1
	movq	-136(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.L166
	.loc 2 999 15
	jmp	.L167
.L169:
	.loc 2 999 15 is_stmt 0 discriminator 3
	addq	$1, -112(%rbp)
.L167:
	.loc 2 999 15 discriminator 1
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jnb	.L170
	.loc 2 999 15 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-112(%rbp), %rax
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
	testl	%eax, %eax
	je	.L169
	.loc 2 1000 15 is_stmt 1
	jmp	.L170
.L171:
	.loc 2 1000 15 is_stmt 0 discriminator 3
	addq	$1, -112(%rbp)
.L170:
	.loc 2 1000 15 discriminator 1
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jnb	.L166
	.loc 2 1000 15 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-112(%rbp), %rax
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
	testl	%eax, %eax
	jne	.L171
.L166:
	.loc 2 1005 30 is_stmt 1
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	.loc 2 1006 61
	movq	-48(%rbp), %rax
	.loc 2 1006 47
	movq	-112(%rbp), %rdx
	subq	%rax, %rdx
	.loc 2 1006 31
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 1007 60
	movq	-48(%rbp), %rax
	.loc 2 1007 46
	movq	-104(%rbp), %rdx
	subq	%rax, %rdx
	.loc 2 1007 32
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 1008 37
	movq	-56(%rbp), %rax
	movl	-164(%rbp), %edx
	movl	%edx, 40(%rax)
	.loc 2 1010 27
	movq	number_of_occurs(%rip), %rax
	.loc 2 1010 30
	addq	$1, %rax
	movq	%rax, number_of_occurs(%rip)
	jmp	.L172
.L179:
	.loc 2 930 17
	nop
	jmp	.L172
.L180:
	.loc 2 944 13
	nop
	jmp	.L172
.L181:
	.loc 2 946 13
	nop
.L147:
	.loc 2 843 14
	jmp	.L172
.L177:
.LBB7:
	.loc 2 856 17
	nop
	jmp	.L137
.L178:
.LBE7:
	.loc 2 873 17
	nop
.L137:
	.loc 2 792 15
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)
.L125:
	.loc 2 791 28 discriminator 1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 790 3 discriminator 1
	cmpq	%rax, -152(%rbp)
	jb	.L173
	.loc 2 1013 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L174
	call	__stack_chk_fail@PLT
.L174:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	find_occurs_in_text, .-find_occurs_in_text
	.type	print_spaces, @function
print_spaces:
.LFB58:
	.loc 2 1023 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.LBB8:
	.loc 2 1024 18
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1024 3
	jmp	.L183
.L184:
	.loc 2 1025 5 discriminator 3
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 2 1024 56 discriminator 3
	subq	$1, -8(%rbp)
.L183:
	.loc 2 1024 3 discriminator 1
	cmpq	$0, -8(%rbp)
	jg	.L184
.LBE8:
	.loc 2 1026 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	print_spaces, .-print_spaces
	.section	.rodata
.LC29:
	.string	"\\oe{}"
.LC30:
	.string	"\\OE{}"
.LC31:
	.string	"\\ae{}"
.LC32:
	.string	"\\AE{}"
.LC33:
	.string	"\\"
.LC34:
	.string	"\\'%s%c"
.LC35:
	.string	"\\^%s%c"
.LC36:
	.string	"\\\"%s%c"
.LC37:
	.string	"\\~%s%c"
.LC38:
	.string	"\\c{%c}"
.LC39:
	.string	"\\aa{}"
.LC40:
	.string	"\\AA{}"
.LC41:
	.string	"\\o{}"
.LC42:
	.string	"\\O{}"
.LC43:
	.string	"$\\%c$"
.LC44:
	.string	"\\backslash{}"
	.text
	.type	print_field, @function
print_field:
.LFB59:
	.loc 2 1034 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 2 1042 15
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1042 3
	jmp	.L186
.L229:
.LBB9:
	.loc 2 1044 33
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1044 21
	movb	%al, -17(%rbp)
	.loc 2 1045 22
	movzbl	-17(%rbp), %eax
	cltq
	leaq	edited_flag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1045 10
	testb	%al, %al
	je	.L187
	.loc 2 1053 23
	movzbl	-17(%rbp), %eax
	cltq
	leaq	diacrit_diac(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1053 21
	movsbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 2 1054 14
	cmpl	$0, -16(%rbp)
	je	.L188
	.loc 2 1054 47 discriminator 1
	movl	output_format(%rip), %eax
	.loc 2 1054 30 discriminator 1
	cmpl	$3, %eax
	jne	.L188
	.loc 2 1056 22
	movzbl	-17(%rbp), %eax
	cltq
	leaq	diacrit_base(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1056 20
	movsbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$9, -16(%rbp)
	ja	.L230
	movl	-16(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L191(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L191(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L191:
	.long	.L230-.L191
	.long	.L199-.L191
	.long	.L198-.L191
	.long	.L197-.L191
	.long	.L196-.L191
	.long	.L195-.L191
	.long	.L194-.L191
	.long	.L193-.L191
	.long	.L192-.L191
	.long	.L190-.L191
	.text
.L199:
	cmpl	$111, -12(%rbp)
	je	.L200
	cmpl	$111, -12(%rbp)
	jg	.L201
	cmpl	$97, -12(%rbp)
	je	.L202
	cmpl	$97, -12(%rbp)
	jg	.L201
	cmpl	$65, -12(%rbp)
	je	.L203
	cmpl	$79, -12(%rbp)
	je	.L204
	jmp	.L201
.L200:
	.loc 2 1064 23
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC29(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1065 23
	jmp	.L205
.L204:
	.loc 2 1068 23
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC30(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1069 23
	jmp	.L205
.L202:
	.loc 2 1072 23
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC31(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1073 23
	jmp	.L205
.L203:
	.loc 2 1076 23
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC32(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1077 23
	jmp	.L205
.L201:
	.loc 2 1080 23
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 2 1082 19
	jmp	.L189
.L205:
	jmp	.L189
.L198:
	.loc 2 1085 19
	cmpl	$105, -12(%rbp)
	jne	.L206
	.loc 2 1085 19 is_stmt 0 discriminator 1
	leaq	.LC33(%rip), %rax
	jmp	.L207
.L206:
	.loc 2 1085 19 discriminator 2
	leaq	.LC18(%rip), %rax
.L207:
	.loc 2 1085 19 discriminator 4
	movl	-12(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1086 19 is_stmt 1 discriminator 4
	jmp	.L189
.L197:
	.loc 2 1089 19
	cmpl	$105, -12(%rbp)
	jne	.L208
	.loc 2 1089 19 is_stmt 0 discriminator 1
	leaq	.LC33(%rip), %rax
	jmp	.L209
.L208:
	.loc 2 1089 19 discriminator 2
	leaq	.LC18(%rip), %rax
.L209:
	.loc 2 1089 19 discriminator 4
	movl	-12(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1090 19 is_stmt 1 discriminator 4
	jmp	.L189
.L196:
	.loc 2 1093 19
	cmpl	$105, -12(%rbp)
	jne	.L210
	.loc 2 1093 19 is_stmt 0 discriminator 1
	leaq	.LC33(%rip), %rax
	jmp	.L211
.L210:
	.loc 2 1093 19 discriminator 2
	leaq	.LC18(%rip), %rax
.L211:
	.loc 2 1093 19 discriminator 4
	movl	-12(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1094 19 is_stmt 1 discriminator 4
	jmp	.L189
.L195:
	.loc 2 1097 19
	cmpl	$105, -12(%rbp)
	jne	.L212
	.loc 2 1097 19 is_stmt 0 discriminator 1
	leaq	.LC33(%rip), %rax
	jmp	.L213
.L212:
	.loc 2 1097 19 discriminator 2
	leaq	.LC18(%rip), %rax
.L213:
	.loc 2 1097 19 discriminator 4
	movl	-12(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1098 19 is_stmt 1 discriminator 4
	jmp	.L189
.L194:
	.loc 2 1101 19
	cmpl	$105, -12(%rbp)
	jne	.L214
	.loc 2 1101 19 is_stmt 0 discriminator 1
	leaq	.LC33(%rip), %rax
	jmp	.L215
.L214:
	.loc 2 1101 19 discriminator 2
	leaq	.LC18(%rip), %rax
.L215:
	.loc 2 1101 19 discriminator 4
	movl	-12(%rbp), %edx
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1102 19 is_stmt 1 discriminator 4
	jmp	.L189
.L193:
	.loc 2 1105 19
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC38(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1106 19
	jmp	.L189
.L192:
	cmpl	$65, -12(%rbp)
	je	.L216
	cmpl	$97, -12(%rbp)
	jne	.L217
	.loc 2 1112 23
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC39(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1113 23
	jmp	.L218
.L216:
	.loc 2 1116 23
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC40(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1117 23
	jmp	.L218
.L217:
	.loc 2 1120 23
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 2 1122 19
	jmp	.L189
.L218:
	jmp	.L189
.L190:
	cmpl	$79, -12(%rbp)
	je	.L219
	cmpl	$111, -12(%rbp)
	jne	.L220
	.loc 2 1128 23
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC41(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1129 23
	jmp	.L221
.L219:
	.loc 2 1132 23
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC42(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1133 23
	jmp	.L221
.L220:
	.loc 2 1136 23
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 2 1138 19
	jmp	.L231
.L221:
.L231:
	nop
.L189:
	.loc 2 1057 15
	jmp	.L230
.L188:
	.loc 2 1147 13
	movzbl	-17(%rbp), %eax
	cmpl	$125, %eax
	je	.L223
	cmpl	$125, %eax
	jg	.L224
	cmpl	$123, %eax
	je	.L223
	cmpl	$123, %eax
	jg	.L224
	cmpl	$95, %eax
	je	.L225
	cmpl	$95, %eax
	jg	.L224
	cmpl	$92, %eax
	je	.L226
	cmpl	$92, %eax
	jg	.L224
	cmpl	$34, %eax
	je	.L227
	cmpl	$34, %eax
	jl	.L224
	subl	$35, %eax
	cmpl	$3, %eax
	ja	.L224
	jmp	.L225
.L227:
	.loc 2 1151 17
	movl	$34, %edi
	call	putchar_unlocked@PLT
	.loc 2 1152 17
	movl	$34, %edi
	call	putchar_unlocked@PLT
	.loc 2 1153 17
	jmp	.L228
.L225:
	.loc 2 1161 17
	movl	$92, %edi
	call	putchar_unlocked@PLT
	.loc 2 1162 17
	movzbl	-17(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 1163 17
	jmp	.L228
.L223:
	.loc 2 1169 17
	movzbl	-17(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1170 17
	jmp	.L228
.L226:
	.loc 2 1174 17
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$12, %edx
	movl	$1, %esi
	leaq	.LC44(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1175 17
	jmp	.L228
.L224:
	.loc 2 1179 17
	movl	$32, %edi
	call	putchar_unlocked@PLT
	jmp	.L228
.L187:
	.loc 2 1183 9
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	jmp	.L228
.L230:
	.loc 2 1057 15
	nop
.L228:
.LBE9:
	.loc 2 1042 56 discriminator 2
	addq	$1, -8(%rbp)
.L186:
	.loc 2 1042 44 discriminator 1
	movq	-40(%rbp), %rax
	.loc 2 1042 3 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L229
	.loc 2 1185 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	print_field, .-print_field
	.section	.rodata
.LC45:
	.string	"%ld"
.LC46:
	.string	"$%&#_{}\\"
	.text
	.type	fix_output_parameters, @function
fix_output_parameters:
.LFB60:
	.loc 2 1196 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.loc 2 1196 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1207 7
	movzbl	auto_reference(%rip), %eax
	.loc 2 1207 6
	testb	%al, %al
	je	.L233
	.loc 2 1209 27
	movq	$0, reference_max_width(%rip)
	.loc 2 1210 23
	movq	$0, -64(%rbp)
	.loc 2 1210 7
	jmp	.L234
.L238:
.LBB10:
	.loc 2 1212 41
	movq	file_line_count(%rip), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1212 24
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	.loc 2 1213 14
	cmpq	$0, -64(%rbp)
	je	.L235
	.loc 2 1214 44
	movq	file_line_count(%rip), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1214 26
	subq	%rax, -56(%rbp)
.L235:
	.loc 2 1216 29
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 1216 27
	cltq
	movq	%rax, -48(%rbp)
	.loc 2 1217 30
	movq	input_file_name(%rip), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1217 14
	testq	%rax, %rax
	je	.L236
	.loc 2 1218 55
	movq	input_file_name(%rip), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 1218 32
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 1218 29
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
.L236:
	.loc 2 1219 31
	movq	reference_max_width(%rip), %rax
	.loc 2 1219 14
	cmpq	%rax, -48(%rbp)
	jle	.L237
	.loc 2 1220 33
	movq	-48(%rbp), %rax
	movq	%rax, reference_max_width(%rip)
.L237:
.LBE10:
	.loc 2 1210 71 discriminator 2
	addq	$1, -64(%rbp)
.L234:
	.loc 2 1210 39 discriminator 1
	movl	number_input_files(%rip), %eax
	cltq
	.loc 2 1210 7 discriminator 1
	cmpq	%rax, -64(%rbp)
	jb	.L238
	.loc 2 1222 26
	movq	reference_max_width(%rip), %rax
	addq	$1, %rax
	movq	%rax, reference_max_width(%rip)
	.loc 2 1223 54
	movq	reference_max_width(%rip), %rax
	addq	$1, %rax
	.loc 2 1223 25
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 1223 23
	movq	%rax, reference(%rip)
.L233:
	.loc 2 1229 8
	movzbl	auto_reference(%rip), %eax
	.loc 2 1229 6
	testb	%al, %al
	jne	.L239
	.loc 2 1229 23 discriminator 2
	movzbl	input_reference(%rip), %eax
	testb	%al, %al
	je	.L240
.L239:
	.loc 2 1229 46 discriminator 3
	movzbl	right_reference(%rip), %eax
	xorl	$1, %eax
	.loc 2 1229 43 discriminator 3
	testb	%al, %al
	je	.L240
	.loc 2 1230 16
	movq	line_width(%rip), %rax
	.loc 2 1230 39
	movq	reference_max_width(%rip), %rcx
	movq	gap_size(%rip), %rdx
	addq	%rcx, %rdx
	.loc 2 1230 16
	subq	%rdx, %rax
	movq	%rax, line_width(%rip)
.L240:
	.loc 2 1231 18
	movq	line_width(%rip), %rax
	.loc 2 1231 6
	testq	%rax, %rax
	jns	.L241
	.loc 2 1232 16
	movq	$0, line_width(%rip)
.L241:
	.loc 2 1246 32
	movq	line_width(%rip), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	.loc 2 1246 19
	movq	%rax, half_line_width(%rip)
	.loc 2 1247 38
	movq	half_line_width(%rip), %rdx
	movq	gap_size(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1247 20
	movq	%rax, before_max_width(%rip)
	.loc 2 1248 22
	movq	half_line_width(%rip), %rax
	movq	%rax, keyafter_max_width(%rip)
	.loc 2 1254 7
	movq	truncation_string(%rip), %rax
	.loc 2 1254 6
	testq	%rax, %rax
	je	.L242
	.loc 2 1254 28 discriminator 1
	movq	truncation_string(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 1254 25 discriminator 1
	testb	%al, %al
	je	.L242
	.loc 2 1255 32
	movq	truncation_string(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 1255 30
	movq	%rax, truncation_string_length(%rip)
	jmp	.L243
.L242:
	.loc 2 1257 23
	movq	$0, truncation_string(%rip)
.L243:
	.loc 2 1259 7
	movzbl	gnu_extensions(%rip), %eax
	.loc 2 1259 6
	testb	%al, %al
	je	.L244
	.loc 2 1284 24
	movq	before_max_width(%rip), %rax
	.loc 2 1284 29
	movq	truncation_string_length(%rip), %rdx
	addq	%rdx, %rdx
	.loc 2 1284 24
	subq	%rdx, %rax
	movq	%rax, before_max_width(%rip)
	.loc 2 1285 28
	movq	before_max_width(%rip), %rax
	.loc 2 1285 10
	testq	%rax, %rax
	jns	.L245
	.loc 2 1286 26
	movq	$0, before_max_width(%rip)
.L245:
	.loc 2 1287 26
	movq	keyafter_max_width(%rip), %rax
	.loc 2 1287 31
	movq	truncation_string_length(%rip), %rdx
	addq	%rdx, %rdx
	.loc 2 1287 26
	subq	%rdx, %rax
	movq	%rax, keyafter_max_width(%rip)
	jmp	.L246
.L244:
	.loc 2 1298 26
	movq	keyafter_max_width(%rip), %rax
	.loc 2 1298 31
	movq	truncation_string_length(%rip), %rdx
	addq	%rdx, %rdx
	.loc 2 1298 58
	addq	$1, %rdx
	.loc 2 1298 26
	subq	%rdx, %rax
	movq	%rax, keyafter_max_width(%rip)
.L246:
	.loc 2 1305 18
	movl	$0, -68(%rbp)
	.loc 2 1305 3
	jmp	.L247
.L248:
	.loc 2 1306 33 discriminator 3
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	.loc 2 1306 30 discriminator 3
	testl	%eax, %eax
	setne	%al
	movl	%eax, %ecx
	.loc 2 1306 28 discriminator 3
	movl	-68(%rbp), %eax
	cltq
	leaq	edited_flag(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 2 1305 59 discriminator 3
	addl	$1, -68(%rbp)
.L247:
	.loc 2 1305 3 discriminator 1
	cmpl	$255, -68(%rbp)
	jle	.L248
	.loc 2 1307 21
	movb	$1, 12+edited_flag(%rip)
	.loc 2 1312 3
	movl	output_format(%rip), %eax
	cmpl	$3, %eax
	je	.L249
	cmpl	$3, %eax
	ja	.L258
	cmpl	$1, %eax
	jbe	.L259
	cmpl	$2, %eax
	je	.L252
	.loc 2 1341 1
	jmp	.L258
.L252:
	.loc 2 1324 24
	movb	$1, 34+edited_flag(%rip)
	.loc 2 1325 7
	jmp	.L250
.L249:
	.loc 2 1331 19
	leaq	.LC46(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1331 7
	jmp	.L253
.L254:
	.loc 2 1332 31 discriminator 3
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1332 21 discriminator 3
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1332 41 discriminator 3
	cltq
	leaq	edited_flag(%rip), %rdx
	movb	$1, (%rax,%rdx)
	.loc 2 1331 49 discriminator 3
	addq	$1, -40(%rbp)
.L253:
	.loc 2 1331 34 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1331 7 discriminator 1
	testb	%al, %al
	jne	.L254
	.loc 2 1337 22
	movl	$128, -68(%rbp)
	.loc 2 1337 7
	jmp	.L255
.L256:
	.loc 2 1338 34 discriminator 3
	movl	-68(%rbp), %eax
	movzbl	%al, %eax
	cltq
	leaq	diacrit_diac(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1338 53 discriminator 3
	testb	%al, %al
	setne	%al
	movl	%eax, %ecx
	.loc 2 1338 32 discriminator 3
	movl	-68(%rbp), %eax
	cltq
	leaq	edited_flag(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 2 1337 66 discriminator 3
	addl	$1, -68(%rbp)
.L255:
	.loc 2 1337 7 discriminator 1
	cmpl	$255, -68(%rbp)
	jle	.L256
	.loc 2 1339 7
	jmp	.L250
.L259:
	.loc 2 1318 7
	nop
.L250:
.L258:
	.loc 2 1341 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L257
	call	__stack_chk_fail@PLT
.L257:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	fix_output_parameters, .-fix_output_parameters
	.section	.rodata
.LC47:
	.string	":%ld"
	.text
	.type	define_all_fields, @function
define_all_fields:
.LFB61:
	.loc 2 1350 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	.loc 2 1368 31
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1368 18
	movq	%rax, keyafter(%rip)
	.loc 2 1369 26
	movq	keyafter(%rip), %rdx
	.loc 2 1369 46
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1369 33
	addq	%rdx, %rax
	.loc 2 1369 16
	movq	%rax, 8+keyafter(%rip)
	.loc 2 1370 32
	movq	keyafter(%rip), %rdx
	.loc 2 1370 47
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1370 22
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	.loc 2 1371 31
	movq	keyafter(%rip), %rdx
	.loc 2 1371 46
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1371 21
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	.loc 2 1373 30
	movq	text_buffers(%rip), %rdx
	.loc 2 1373 37
	movq	-152(%rbp), %rax
	movl	40(%rax), %eax
	cltq
	.loc 2 1373 30
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 2 1373 16
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	.loc 2 1374 28
	movq	text_buffers(%rip), %rdx
	.loc 2 1374 35
	movq	-152(%rbp), %rax
	movl	40(%rax), %eax
	cltq
	.loc 2 1374 28
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 2 1374 14
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	.loc 2 1376 10
	movq	8+keyafter(%rip), %rax
	movq	%rax, -144(%rbp)
	.loc 2 1377 9
	jmp	.L261
.L270:
	.loc 2 1380 20
	movq	-144(%rbp), %rax
	movq	%rax, 8+keyafter(%rip)
	.loc 2 1381 7
	movq	word_regex(%rip), %rax
	testq	%rax, %rax
	je	.L262
.LBB11:
	.loc 2 1381 7 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax
	subq	-144(%rbp), %rax
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	leaq	8+word_regex(%rip), %rdi
	call	rpl_re_match@PLT
	movq	%rax, -80(%rbp)
	cmpq	$-2, -80(%rbp)
	jne	.L263
	.loc 2 1381 7 discriminator 3
	call	matcher_error
.L263:
	.loc 2 1381 7 discriminator 4
	cmpq	$-1, -80(%rbp)
	je	.L264
	.loc 2 1381 7 discriminator 5
	movq	-80(%rbp), %rax
	jmp	.L265
.L264:
	.loc 2 1381 7 discriminator 6
	movl	$1, %eax
.L265:
	.loc 2 1381 7 discriminator 8
	addq	%rax, -144(%rbp)
.LBE11:
	jmp	.L261
.L262:
	.loc 2 1381 7 discriminator 2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	je	.L266
	.loc 2 1381 7
	jmp	.L267
.L268:
	.loc 2 1381 7 discriminator 12
	addq	$1, -144(%rbp)
.L267:
	.loc 2 1381 7 discriminator 10
	movq	-144(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jnb	.L261
	.loc 2 1381 7 discriminator 11
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	jne	.L268
	jmp	.L261
.L266:
	.loc 2 1381 7 discriminator 9
	addq	$1, -144(%rbp)
.L261:
	.loc 2 1377 9 is_stmt 1
	movq	-144(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jnb	.L269
	.loc 2 1378 31
	movq	keyafter(%rip), %rax
	.loc 2 1378 38
	movq	keyafter_max_width(%rip), %rdx
	addq	%rdx, %rax
	.loc 2 1378 10
	cmpq	%rax, -144(%rbp)
	jbe	.L270
.L269:
	.loc 2 1383 25
	movq	keyafter(%rip), %rax
	.loc 2 1383 32
	movq	keyafter_max_width(%rip), %rdx
	addq	%rdx, %rax
	.loc 2 1383 6
	cmpq	%rax, -144(%rbp)
	ja	.L271
	.loc 2 1384 18
	movq	-144(%rbp), %rax
	movq	%rax, 8+keyafter(%rip)
.L271:
	.loc 2 1386 25
	movq	truncation_string(%rip), %rax
	.loc 2 1386 43
	testq	%rax, %rax
	je	.L272
	.loc 2 1386 54 discriminator 1
	movq	8+keyafter(%rip), %rax
	.loc 2 1386 43 discriminator 1
	cmpq	%rax, -104(%rbp)
	jbe	.L272
	.loc 2 1386 43 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L273
.L272:
	.loc 2 1386 43 discriminator 4
	movl	$0, %eax
.L273:
	.loc 2 1386 43 discriminator 6
	andl	$1, %eax
	.loc 2 1386 23 is_stmt 1 discriminator 6
	movb	%al, keyafter_truncation(%rip)
	.loc 2 1388 3 discriminator 6
	jmp	.L274
.L276:
	.loc 2 1388 3 is_stmt 0 discriminator 3
	movq	8+keyafter(%rip), %rax
	subq	$1, %rax
	movq	%rax, 8+keyafter(%rip)
.L274:
	.loc 2 1388 3 discriminator 1
	movq	8+keyafter(%rip), %rdx
	movq	keyafter(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L275
	.loc 2 1388 3 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	8+keyafter(%rip), %rax
	subq	$1, %rax
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
	testl	%eax, %eax
	jne	.L276
.L275:
	.loc 2 1402 14 is_stmt 1
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1402 7
	negq	%rax
	movq	%rax, %rcx
	.loc 2 1402 39
	movq	half_line_width(%rip), %rdx
	movq	maximum_word_length(%rip), %rax
	addq	%rdx, %rax
	.loc 2 1402 6
	cmpq	%rax, %rcx
	jle	.L277
	.loc 2 1405 19
	movq	keyafter(%rip), %rax
	.loc 2 1405 45
	movq	half_line_width(%rip), %rcx
	movq	maximum_word_length(%rip), %rdx
	addq	%rcx, %rdx
	.loc 2 1405 26
	negq	%rdx
	.loc 2 1405 9
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	.loc 2 1406 7
	movq	word_regex(%rip), %rax
	testq	%rax, %rax
	je	.L278
.LBB12:
	.loc 2 1406 7 is_stmt 0 discriminator 1
	movq	keyafter(%rip), %rax
	subq	-136(%rbp), %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	leaq	8+word_regex(%rip), %rdi
	call	rpl_re_match@PLT
	movq	%rax, -72(%rbp)
	cmpq	$-2, -72(%rbp)
	jne	.L279
	.loc 2 1406 7 discriminator 3
	call	matcher_error
.L279:
	.loc 2 1406 7 discriminator 4
	cmpq	$-1, -72(%rbp)
	je	.L280
	.loc 2 1406 7 discriminator 5
	movq	-72(%rbp), %rax
	jmp	.L281
.L280:
	.loc 2 1406 7 discriminator 6
	movl	$1, %eax
.L281:
	.loc 2 1406 7 discriminator 8
	addq	%rax, -136(%rbp)
.LBE12:
	jmp	.L282
.L278:
	.loc 2 1406 7 discriminator 2
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	je	.L283
	.loc 2 1406 7
	jmp	.L284
.L285:
	.loc 2 1406 7 discriminator 12
	addq	$1, -136(%rbp)
.L284:
	.loc 2 1406 7 discriminator 10
	movq	keyafter(%rip), %rax
	cmpq	%rax, -136(%rbp)
	jnb	.L282
	.loc 2 1406 7 discriminator 11
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	jne	.L285
	jmp	.L282
.L283:
	.loc 2 1406 7 discriminator 9
	addq	$1, -136(%rbp)
	jmp	.L282
.L277:
	.loc 2 1409 32 is_stmt 1
	movq	keyafter(%rip), %rdx
	.loc 2 1409 47
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1409 22
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
.L282:
	.loc 2 1417 16
	movq	-136(%rbp), %rax
	movq	%rax, before(%rip)
	.loc 2 1418 24
	movq	keyafter(%rip), %rax
	.loc 2 1418 14
	movq	%rax, 8+before(%rip)
	.loc 2 1419 3
	jmp	.L286
.L288:
	.loc 2 1419 3 is_stmt 0 discriminator 3
	movq	8+before(%rip), %rax
	subq	$1, %rax
	movq	%rax, 8+before(%rip)
.L286:
	.loc 2 1419 3 discriminator 1
	movq	8+before(%rip), %rdx
	movq	before(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L289
	.loc 2 1419 3 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	8+before(%rip), %rax
	subq	$1, %rax
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
	testl	%eax, %eax
	jne	.L288
	.loc 2 1421 9 is_stmt 1
	jmp	.L289
.L297:
	.loc 2 1422 5
	movq	word_regex(%rip), %rax
	testq	%rax, %rax
	je	.L290
.LBB13:
	.loc 2 1422 5 is_stmt 0 discriminator 1
	movq	8+before(%rip), %rdx
	movq	before(%rip), %rax
	subq	%rax, %rdx
	movq	before(%rip), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	leaq	8+word_regex(%rip), %rdi
	call	rpl_re_match@PLT
	movq	%rax, -24(%rbp)
	cmpq	$-2, -24(%rbp)
	jne	.L291
	.loc 2 1422 5 discriminator 3
	call	matcher_error
.L291:
	.loc 2 1422 5 discriminator 4
	movq	before(%rip), %rdx
	cmpq	$-1, -24(%rbp)
	je	.L292
	.loc 2 1422 5 discriminator 5
	movq	-24(%rbp), %rax
	jmp	.L293
.L292:
	.loc 2 1422 5 discriminator 6
	movl	$1, %eax
.L293:
	.loc 2 1422 5 discriminator 8
	addq	%rdx, %rax
	movq	%rax, before(%rip)
.LBE13:
	jmp	.L289
.L290:
	.loc 2 1422 5 discriminator 2
	movq	before(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	je	.L294
	.loc 2 1422 5
	jmp	.L295
.L296:
	.loc 2 1422 5 discriminator 12
	movq	before(%rip), %rax
	addq	$1, %rax
	movq	%rax, before(%rip)
.L295:
	.loc 2 1422 5 discriminator 10
	movq	before(%rip), %rdx
	movq	8+before(%rip), %rax
	cmpq	%rax, %rdx
	jnb	.L289
	.loc 2 1422 5 discriminator 11
	movq	before(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	jne	.L296
	jmp	.L289
.L294:
	.loc 2 1422 5 discriminator 9
	movq	before(%rip), %rax
	addq	$1, %rax
	movq	%rax, before(%rip)
.L289:
	.loc 2 1421 16 is_stmt 1
	movq	before(%rip), %rax
	.loc 2 1421 23
	movq	before_max_width(%rip), %rdx
	addq	%rax, %rdx
	.loc 2 1421 50
	movq	8+before(%rip), %rax
	.loc 2 1421 9
	cmpq	%rax, %rdx
	jb	.L297
	.loc 2 1424 7
	movq	truncation_string(%rip), %rax
	.loc 2 1424 6
	testq	%rax, %rax
	je	.L298
	.loc 2 1426 14
	movq	before(%rip), %rax
	movq	%rax, -144(%rbp)
	.loc 2 1427 7
	jmp	.L299
.L301:
	.loc 2 1427 7 is_stmt 0 discriminator 3
	subq	$1, -144(%rbp)
.L299:
	.loc 2 1427 7 discriminator 1
	movq	-144(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jbe	.L300
	.loc 2 1427 7 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-144(%rbp), %rax
	subq	$1, %rax
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
	testl	%eax, %eax
	jne	.L301
.L300:
	.loc 2 1428 34 is_stmt 1
	movq	-144(%rbp), %rax
	cmpq	-112(%rbp), %rax
	seta	%al
	.loc 2 1428 25
	movb	%al, before_truncation(%rip)
	jmp	.L303
.L298:
	.loc 2 1431 23
	movb	$0, before_truncation(%rip)
	.loc 2 1433 3
	jmp	.L303
.L305:
	.loc 2 1433 3 is_stmt 0 discriminator 3
	movq	before(%rip), %rax
	addq	$1, %rax
	movq	%rax, before(%rip)
.L303:
	.loc 2 1433 3 discriminator 1
	movq	before(%rip), %rax
	cmpq	%rax, -88(%rbp)
	jbe	.L304
	.loc 2 1433 3 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	before(%rip), %rax
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
	testl	%eax, %eax
	jne	.L305
.L304:
	.loc 2 1443 24 is_stmt 1
	movq	before_max_width(%rip), %rax
	.loc 2 1443 33
	movq	8+before(%rip), %rcx
	.loc 2 1443 46
	movq	before(%rip), %rdx
	.loc 2 1443 38
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	.loc 2 1443 24
	subq	%rdx, %rax
	movq	%rax, %rdx
	.loc 2 1443 54
	movq	gap_size(%rip), %rax
	.loc 2 1443 5
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 2 1445 6
	cmpq	$0, -64(%rbp)
	jle	.L306
	.loc 2 1447 28
	movq	8+keyafter(%rip), %rax
	.loc 2 1447 18
	movq	%rax, tail(%rip)
	.loc 2 1448 7
	jmp	.L307
.L309:
	.loc 2 1448 7 is_stmt 0 discriminator 3
	movq	tail(%rip), %rax
	addq	$1, %rax
	movq	%rax, tail(%rip)
.L307:
	.loc 2 1448 7 discriminator 1
	movq	tail(%rip), %rax
	cmpq	%rax, -88(%rbp)
	jbe	.L308
	.loc 2 1448 7 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	tail(%rip), %rax
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
	testl	%eax, %eax
	jne	.L309
.L308:
	.loc 2 1450 22 is_stmt 1
	movq	tail(%rip), %rax
	.loc 2 1450 16
	movq	%rax, 8+tail(%rip)
	.loc 2 1451 14
	movq	8+tail(%rip), %rax
	movq	%rax, -144(%rbp)
	.loc 2 1452 13
	jmp	.L310
.L319:
	.loc 2 1455 20
	movq	-144(%rbp), %rax
	movq	%rax, 8+tail(%rip)
	.loc 2 1456 11
	movq	word_regex(%rip), %rax
	testq	%rax, %rax
	je	.L311
.LBB14:
	.loc 2 1456 11 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax
	subq	-144(%rbp), %rax
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	leaq	8+word_regex(%rip), %rdi
	call	rpl_re_match@PLT
	movq	%rax, -56(%rbp)
	cmpq	$-2, -56(%rbp)
	jne	.L312
	.loc 2 1456 11 discriminator 3
	call	matcher_error
.L312:
	.loc 2 1456 11 discriminator 4
	cmpq	$-1, -56(%rbp)
	je	.L313
	.loc 2 1456 11 discriminator 5
	movq	-56(%rbp), %rax
	jmp	.L314
.L313:
	.loc 2 1456 11 discriminator 6
	movl	$1, %eax
.L314:
	.loc 2 1456 11 discriminator 8
	addq	%rax, -144(%rbp)
.LBE14:
	jmp	.L310
.L311:
	.loc 2 1456 11 discriminator 2
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	je	.L315
	.loc 2 1456 11
	jmp	.L316
.L317:
	.loc 2 1456 11 discriminator 12
	addq	$1, -144(%rbp)
.L316:
	.loc 2 1456 11 discriminator 10
	movq	-144(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jnb	.L310
	.loc 2 1456 11 discriminator 11
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	jne	.L317
	jmp	.L310
.L315:
	.loc 2 1456 11 discriminator 9
	addq	$1, -144(%rbp)
.L310:
	.loc 2 1452 13 is_stmt 1
	movq	-144(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jnb	.L318
	.loc 2 1453 30
	movq	tail(%rip), %rdx
	.loc 2 1453 37
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1453 14
	cmpq	%rax, -144(%rbp)
	jb	.L319
.L318:
	.loc 2 1459 24
	movq	tail(%rip), %rdx
	.loc 2 1459 31
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1459 10
	cmpq	%rax, -144(%rbp)
	jnb	.L320
	.loc 2 1460 18
	movq	-144(%rbp), %rax
	movq	%rax, 8+tail(%rip)
.L320:
	.loc 2 1462 15
	movq	8+tail(%rip), %rdx
	.loc 2 1462 26
	movq	tail(%rip), %rax
	.loc 2 1462 10
	cmpq	%rax, %rdx
	jbe	.L321
	.loc 2 1464 31
	movb	$0, keyafter_truncation(%rip)
	.loc 2 1465 29
	movq	truncation_string(%rip), %rax
	.loc 2 1465 47
	testq	%rax, %rax
	je	.L322
	.loc 2 1465 54 discriminator 1
	movq	8+tail(%rip), %rax
	.loc 2 1465 47 discriminator 1
	cmpq	%rax, -104(%rbp)
	jbe	.L322
	.loc 2 1465 47 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L323
.L322:
	.loc 2 1465 47 discriminator 4
	movl	$0, %eax
.L323:
	.loc 2 1465 47 discriminator 6
	andl	$1, %eax
	.loc 2 1465 27 is_stmt 1 discriminator 6
	movb	%al, tail_truncation(%rip)
	jmp	.L325
.L321:
	.loc 2 1468 25
	movb	$0, tail_truncation(%rip)
	.loc 2 1470 7
	jmp	.L325
.L327:
	.loc 2 1470 7 is_stmt 0 discriminator 3
	movq	8+tail(%rip), %rax
	subq	$1, %rax
	movq	%rax, 8+tail(%rip)
.L325:
	.loc 2 1470 7 discriminator 1
	movq	8+tail(%rip), %rdx
	movq	tail(%rip), %rax
	cmpq	%rax, %rdx
	jbe	.L326
	.loc 2 1470 7 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	8+tail(%rip), %rax
	subq	$1, %rax
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
	testl	%eax, %eax
	jne	.L327
	jmp	.L326
.L306:
	.loc 2 1477 18 is_stmt 1
	movq	$0, tail(%rip)
	.loc 2 1478 16
	movq	$0, 8+tail(%rip)
	.loc 2 1479 23
	movb	$0, tail_truncation(%rip)
.L326:
	.loc 2 1489 26
	movq	keyafter_max_width(%rip), %rax
	.loc 2 1489 37
	movq	8+keyafter(%rip), %rcx
	.loc 2 1489 52
	movq	keyafter(%rip), %rdx
	.loc 2 1489 42
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	.loc 2 1489 26
	subq	%rdx, %rax
	movq	%rax, %rdx
	.loc 2 1489 60
	movq	gap_size(%rip), %rax
	.loc 2 1489 5
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 1491 6
	cmpq	$0, -48(%rbp)
	jle	.L328
	.loc 2 1493 24
	movq	before(%rip), %rax
	.loc 2 1493 16
	movq	%rax, 8+head(%rip)
	.loc 2 1494 7
	jmp	.L329
.L331:
	.loc 2 1494 7 is_stmt 0 discriminator 3
	movq	8+head(%rip), %rax
	subq	$1, %rax
	movq	%rax, 8+head(%rip)
.L329:
	.loc 2 1494 7 discriminator 1
	movq	8+head(%rip), %rax
	cmpq	%rax, -96(%rbp)
	jnb	.L330
	.loc 2 1494 7 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	8+head(%rip), %rax
	subq	$1, %rax
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
	testl	%eax, %eax
	jne	.L331
.L330:
	.loc 2 1496 18 is_stmt 1
	movq	-136(%rbp), %rax
	movq	%rax, head(%rip)
	.loc 2 1497 13
	jmp	.L332
.L340:
	.loc 2 1498 9
	movq	word_regex(%rip), %rax
	testq	%rax, %rax
	je	.L333
.LBB15:
	.loc 2 1498 9 is_stmt 0 discriminator 1
	movq	8+head(%rip), %rdx
	movq	head(%rip), %rax
	subq	%rax, %rdx
	movq	head(%rip), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	leaq	8+word_regex(%rip), %rdi
	call	rpl_re_match@PLT
	movq	%rax, -40(%rbp)
	cmpq	$-2, -40(%rbp)
	jne	.L334
	.loc 2 1498 9 discriminator 3
	call	matcher_error
.L334:
	.loc 2 1498 9 discriminator 4
	movq	head(%rip), %rdx
	cmpq	$-1, -40(%rbp)
	je	.L335
	.loc 2 1498 9 discriminator 5
	movq	-40(%rbp), %rax
	jmp	.L336
.L335:
	.loc 2 1498 9 discriminator 6
	movl	$1, %eax
.L336:
	.loc 2 1498 9 discriminator 8
	addq	%rdx, %rax
	movq	%rax, head(%rip)
.LBE15:
	jmp	.L332
.L333:
	.loc 2 1498 9 discriminator 2
	movq	head(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	je	.L337
	.loc 2 1498 9
	jmp	.L338
.L339:
	.loc 2 1498 9 discriminator 12
	movq	head(%rip), %rax
	addq	$1, %rax
	movq	%rax, head(%rip)
.L338:
	.loc 2 1498 9 discriminator 10
	movq	head(%rip), %rdx
	movq	8+head(%rip), %rax
	cmpq	%rax, %rdx
	jnb	.L332
	.loc 2 1498 9 discriminator 11
	movq	head(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	jne	.L339
	jmp	.L332
.L337:
	.loc 2 1498 9 discriminator 9
	movq	head(%rip), %rax
	addq	$1, %rax
	movq	%rax, head(%rip)
.L332:
	.loc 2 1497 18 is_stmt 1
	movq	head(%rip), %rdx
	.loc 2 1497 25
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 1497 48
	movq	8+head(%rip), %rax
	.loc 2 1497 13
	cmpq	%rax, %rdx
	jb	.L340
	.loc 2 1500 15
	movq	8+head(%rip), %rdx
	.loc 2 1500 26
	movq	head(%rip), %rax
	.loc 2 1500 10
	cmpq	%rax, %rdx
	jbe	.L341
	.loc 2 1502 29
	movb	$0, before_truncation(%rip)
	.loc 2 1503 30
	movq	truncation_string(%rip), %rax
	.loc 2 1504 30
	testq	%rax, %rax
	je	.L342
	.loc 2 1504 37 discriminator 1
	movq	head(%rip), %rax
	.loc 2 1504 30 discriminator 1
	cmpq	%rax, -112(%rbp)
	jnb	.L342
	.loc 2 1504 30 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L343
.L342:
	.loc 2 1504 30 discriminator 4
	movl	$0, %eax
.L343:
	.loc 2 1504 30 discriminator 6
	andl	$1, %eax
	.loc 2 1503 27 is_stmt 1 discriminator 6
	movb	%al, head_truncation(%rip)
	jmp	.L345
.L341:
	.loc 2 1507 25
	movb	$0, head_truncation(%rip)
	.loc 2 1509 7
	jmp	.L345
.L347:
	.loc 2 1509 7 is_stmt 0 discriminator 3
	movq	head(%rip), %rax
	addq	$1, %rax
	movq	%rax, head(%rip)
.L345:
	.loc 2 1509 7 discriminator 1
	movq	head(%rip), %rdx
	movq	8+head(%rip), %rax
	cmpq	%rax, %rdx
	jnb	.L346
	.loc 2 1509 7 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	head(%rip), %rax
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
	testl	%eax, %eax
	jne	.L347
	jmp	.L346
.L328:
	.loc 2 1516 18 is_stmt 1
	movq	$0, head(%rip)
	.loc 2 1517 16
	movq	$0, 8+head(%rip)
	.loc 2 1518 23
	movb	$0, head_truncation(%rip)
.L346:
	.loc 2 1521 7
	movzbl	auto_reference(%rip), %eax
	.loc 2 1521 6
	testb	%al, %al
	je	.L348
.LBB16:
	.loc 2 1528 34
	movq	input_file_name(%rip), %rdx
	.loc 2 1528 41
	movq	-152(%rbp), %rax
	movl	40(%rax), %eax
	cltq
	.loc 2 1528 34
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 2 1528 17
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	.loc 2 1529 10
	cmpq	$0, -128(%rbp)
	jne	.L349
	.loc 2 1530 19
	leaq	.LC18(%rip), %rax
	movq	%rax, -128(%rbp)
.L349:
	.loc 2 1532 28
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1532 20
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	.loc 2 1533 17
	movq	-152(%rbp), %rax
	movl	40(%rax), %eax
	.loc 2 1533 10
	testl	%eax, %eax
	jle	.L350
	.loc 2 1534 40
	movq	file_line_count(%rip), %rdx
	.loc 2 1534 47
	movq	-152(%rbp), %rax
	movl	40(%rax), %eax
	cltq
	.loc 2 1534 40
	salq	$3, %rax
	subq	$8, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1534 22
	subq	%rax, -120(%rbp)
.L350:
	.loc 2 1536 24
	movq	reference(%rip), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rax, -32(%rbp)
	.loc 2 1537 34
	movq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movslq	%eax, %rdx
	.loc 2 1537 32
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1537 21
	movq	%rax, 8+reference(%rip)
.LBE16:
	.loc 2 1549 1
	jmp	.L354
.L348:
	.loc 2 1539 12
	movzbl	input_reference(%rip), %eax
	.loc 2 1539 11
	testb	%al, %al
	je	.L354
	.loc 2 1545 33
	movq	keyafter(%rip), %rdx
	.loc 2 1545 48
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1545 40
	addq	%rdx, %rax
	.loc 2 1545 23
	movq	%rax, reference(%rip)
	.loc 2 1546 32
	movq	reference(%rip), %rax
	.loc 2 1546 21
	movq	%rax, 8+reference(%rip)
	.loc 2 1547 7
	jmp	.L352
.L353:
	.loc 2 1547 7 is_stmt 0 discriminator 3
	movq	8+reference(%rip), %rax
	addq	$1, %rax
	movq	%rax, 8+reference(%rip)
.L352:
	.loc 2 1547 7 discriminator 1
	movq	8+reference(%rip), %rax
	cmpq	%rax, -104(%rbp)
	jbe	.L354
	.loc 2 1547 7 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	8+reference(%rip), %rax
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
	testl	%eax, %eax
	je	.L353
.L354:
	.loc 2 1549 1 is_stmt 1
	nop
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	define_all_fields, .-define_all_fields
	.section	.rodata
.LC48:
	.string	".%s \""
.LC49:
	.string	" \""
	.text
	.type	output_one_roff_line, @function
output_one_roff_line:
.LFB62:
	.loc 2 1559 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 1562 3
	movq	macro_name(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC48(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1563 3
	movq	tail(%rip), %rdx
	movq	8+tail(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1564 7
	movzbl	tail_truncation(%rip), %eax
	.loc 2 1564 6
	testb	%al, %al
	je	.L356
	.loc 2 1565 5
	movq	stdout(%rip), %rdx
	movq	truncation_string(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L356:
	.loc 2 1566 3
	movl	$34, %edi
	call	putchar_unlocked@PLT
	.loc 2 1570 3
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC49(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1571 7
	movzbl	before_truncation(%rip), %eax
	.loc 2 1571 6
	testb	%al, %al
	je	.L357
	.loc 2 1572 5
	movq	stdout(%rip), %rdx
	movq	truncation_string(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L357:
	.loc 2 1573 3
	movq	before(%rip), %rdx
	movq	8+before(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1574 3
	movl	$34, %edi
	call	putchar_unlocked@PLT
	.loc 2 1578 3
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC49(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1579 3
	movq	keyafter(%rip), %rdx
	movq	8+keyafter(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1580 7
	movzbl	keyafter_truncation(%rip), %eax
	.loc 2 1580 6
	testb	%al, %al
	je	.L358
	.loc 2 1581 5
	movq	stdout(%rip), %rdx
	movq	truncation_string(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L358:
	.loc 2 1582 3
	movl	$34, %edi
	call	putchar_unlocked@PLT
	.loc 2 1586 3
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC49(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1587 7
	movzbl	head_truncation(%rip), %eax
	.loc 2 1587 6
	testb	%al, %al
	je	.L359
	.loc 2 1588 5
	movq	stdout(%rip), %rdx
	movq	truncation_string(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L359:
	.loc 2 1589 3
	movq	head(%rip), %rdx
	movq	8+head(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1590 3
	movl	$34, %edi
	call	putchar_unlocked@PLT
	.loc 2 1594 7
	movzbl	auto_reference(%rip), %eax
	.loc 2 1594 6
	testb	%al, %al
	jne	.L360
	.loc 2 1594 22 discriminator 1
	movzbl	input_reference(%rip), %eax
	testb	%al, %al
	je	.L361
.L360:
	.loc 2 1596 7
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC49(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1597 7
	movq	reference(%rip), %rdx
	movq	8+reference(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1598 7
	movl	$34, %edi
	call	putchar_unlocked@PLT
.L361:
	.loc 2 1601 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 1602 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	output_one_roff_line, .-output_one_roff_line
	.section	.rodata
.LC50:
	.string	"\\%s "
.LC51:
	.string	"}{"
	.text
	.type	output_one_tex_line, @function
output_one_tex_line:
.LFB63:
	.loc 2 1610 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 1615 3
	movq	macro_name(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1616 3
	movl	$123, %edi
	call	putchar_unlocked@PLT
	.loc 2 1617 3
	movq	tail(%rip), %rdx
	movq	8+tail(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1618 3
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC51(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1619 3
	movq	before(%rip), %rdx
	movq	8+before(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1620 3
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC51(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1621 23
	movq	keyafter(%rip), %rax
	.loc 2 1621 13
	movq	%rax, -32(%rbp)
	.loc 2 1622 23
	movq	8+keyafter(%rip), %rax
	.loc 2 1622 13
	movq	%rax, -8(%rbp)
	.loc 2 1623 10
	movq	keyafter(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 1624 3
	movq	word_regex(%rip), %rax
	testq	%rax, %rax
	je	.L363
.LBB17:
	.loc 2 1624 3 is_stmt 0 discriminator 1
	movq	8+keyafter(%rip), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	leaq	8+word_regex(%rip), %rdi
	call	rpl_re_match@PLT
	movq	%rax, -40(%rbp)
	cmpq	$-2, -40(%rbp)
	jne	.L364
	.loc 2 1624 3 discriminator 3
	call	matcher_error
.L364:
	.loc 2 1624 3 discriminator 4
	cmpq	$-1, -40(%rbp)
	je	.L365
	.loc 2 1624 3 discriminator 5
	movq	-40(%rbp), %rax
	jmp	.L366
.L365:
	.loc 2 1624 3 discriminator 6
	movl	$1, %eax
.L366:
	.loc 2 1624 3 discriminator 8
	addq	%rax, -48(%rbp)
.LBE17:
	jmp	.L367
.L363:
	.loc 2 1624 3 discriminator 2
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	je	.L368
	.loc 2 1624 3
	jmp	.L369
.L370:
	.loc 2 1624 3 discriminator 12
	addq	$1, -48(%rbp)
.L369:
	.loc 2 1624 3 discriminator 10
	movq	8+keyafter(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L367
	.loc 2 1624 3 discriminator 11
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	cltq
	leaq	word_fastmap(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	jne	.L370
	jmp	.L367
.L368:
	.loc 2 1624 3 discriminator 9
	addq	$1, -48(%rbp)
.L367:
	.loc 2 1625 11 is_stmt 1
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1626 15
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1627 3
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1628 3
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC51(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1629 3
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1630 3
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC51(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1631 3
	movq	head(%rip), %rdx
	movq	8+head(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1632 3
	movl	$125, %edi
	call	putchar_unlocked@PLT
	.loc 2 1633 7
	movzbl	auto_reference(%rip), %eax
	.loc 2 1633 6
	testb	%al, %al
	jne	.L371
	.loc 2 1633 22 discriminator 1
	movzbl	input_reference(%rip), %eax
	testb	%al, %al
	je	.L372
.L371:
	.loc 2 1635 7
	movl	$123, %edi
	call	putchar_unlocked@PLT
	.loc 2 1636 7
	movq	reference(%rip), %rdx
	movq	8+reference(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1637 7
	movl	$125, %edi
	call	putchar_unlocked@PLT
.L372:
	.loc 2 1639 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 1640 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	output_one_tex_line, .-output_one_tex_line
	.type	output_one_dumb_line, @function
output_one_dumb_line:
.LFB64:
	.loc 2 1648 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 1649 7
	movzbl	right_reference(%rip), %eax
	xorl	$1, %eax
	.loc 2 1649 6
	testb	%al, %al
	je	.L374
	.loc 2 1651 11
	movzbl	auto_reference(%rip), %eax
	.loc 2 1651 10
	testb	%al, %al
	je	.L375
	.loc 2 1658 11
	movq	reference(%rip), %rdx
	movq	8+reference(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1659 11
	movl	$58, %edi
	call	putchar_unlocked@PLT
	.loc 2 1661 25
	movq	reference_max_width(%rip), %rdx
	movq	gap_size(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 1662 37
	movq	8+reference(%rip), %rdx
	.loc 2 1662 53
	movq	reference(%rip), %rax
	.loc 2 1662 42
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1662 25
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 1660 11
	subq	$1, %rax
	movq	%rax, %rdi
	call	print_spaces
	jmp	.L374
.L375:
	.loc 2 1670 11
	movq	reference(%rip), %rdx
	movq	8+reference(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1672 25
	movq	reference_max_width(%rip), %rdx
	movq	gap_size(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 1673 37
	movq	8+reference(%rip), %rdx
	.loc 2 1673 53
	movq	reference(%rip), %rax
	.loc 2 1673 42
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1671 11
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, %rdi
	call	print_spaces
.L374:
	.loc 2 1677 11
	movq	tail(%rip), %rdx
	.loc 2 1677 24
	movq	8+tail(%rip), %rax
	.loc 2 1677 6
	cmpq	%rax, %rdx
	jnb	.L376
	.loc 2 1681 7
	movq	tail(%rip), %rdx
	movq	8+tail(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1682 11
	movzbl	tail_truncation(%rip), %eax
	.loc 2 1682 10
	testb	%al, %al
	je	.L377
	.loc 2 1683 9
	movq	stdout(%rip), %rdx
	movq	truncation_string(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L377:
	.loc 2 1685 37
	movq	half_line_width(%rip), %rdx
	movq	gap_size(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	.loc 2 1686 30
	movq	8+before(%rip), %rdx
	.loc 2 1686 43
	movq	before(%rip), %rax
	.loc 2 1686 35
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1686 21
	subq	%rax, %rcx
	movq	%rcx, %rdx
	.loc 2 1687 42
	movzbl	before_truncation(%rip), %eax
	.loc 2 1687 69
	testb	%al, %al
	je	.L378
	.loc 2 1687 69 is_stmt 0 discriminator 1
	movq	truncation_string_length(%rip), %rax
	jmp	.L379
.L378:
	.loc 2 1687 69 discriminator 2
	movl	$0, %eax
.L379:
	.loc 2 1687 21 is_stmt 1 discriminator 4
	movq	%rdx, %rcx
	subq	%rax, %rcx
	.loc 2 1688 28 discriminator 4
	movq	8+tail(%rip), %rdx
	.loc 2 1688 39 discriminator 4
	movq	tail(%rip), %rax
	.loc 2 1688 33 discriminator 4
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1688 21 discriminator 4
	subq	%rax, %rcx
	movq	%rcx, %rdx
	.loc 2 1689 40 discriminator 4
	movzbl	tail_truncation(%rip), %eax
	.loc 2 1689 67 discriminator 4
	testb	%al, %al
	je	.L380
	.loc 2 1689 67 is_stmt 0 discriminator 1
	movq	truncation_string_length(%rip), %rax
	jmp	.L381
.L380:
	.loc 2 1689 67 discriminator 2
	movl	$0, %eax
.L381:
	.loc 2 1685 7 is_stmt 1
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	call	print_spaces
	jmp	.L382
.L376:
	.loc 2 1692 35
	movq	half_line_width(%rip), %rdx
	movq	gap_size(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	.loc 2 1693 28
	movq	8+before(%rip), %rdx
	.loc 2 1693 41
	movq	before(%rip), %rax
	.loc 2 1693 33
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1693 19
	subq	%rax, %rcx
	movq	%rcx, %rdx
	.loc 2 1694 40
	movzbl	before_truncation(%rip), %eax
	.loc 2 1694 67
	testb	%al, %al
	je	.L383
	.loc 2 1694 67 is_stmt 0 discriminator 1
	movq	truncation_string_length(%rip), %rax
	jmp	.L384
.L383:
	.loc 2 1694 67 discriminator 2
	movl	$0, %eax
.L384:
	.loc 2 1692 5 is_stmt 1
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	call	print_spaces
.L382:
	.loc 2 1698 7
	movzbl	before_truncation(%rip), %eax
	.loc 2 1698 6
	testb	%al, %al
	je	.L385
	.loc 2 1699 5
	movq	stdout(%rip), %rdx
	movq	truncation_string(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L385:
	.loc 2 1700 3
	movq	before(%rip), %rdx
	movq	8+before(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1702 3
	movq	gap_size(%rip), %rax
	movq	%rax, %rdi
	call	print_spaces
	.loc 2 1706 3
	movq	keyafter(%rip), %rdx
	movq	8+keyafter(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	.loc 2 1707 7
	movzbl	keyafter_truncation(%rip), %eax
	.loc 2 1707 6
	testb	%al, %al
	je	.L386
	.loc 2 1708 5
	movq	stdout(%rip), %rdx
	movq	truncation_string(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L386:
	.loc 2 1710 11
	movq	head(%rip), %rdx
	.loc 2 1710 24
	movq	8+head(%rip), %rax
	.loc 2 1710 6
	cmpq	%rax, %rdx
	jnb	.L387
	.loc 2 1715 21
	movq	half_line_width(%rip), %rax
	.loc 2 1715 32
	movq	8+keyafter(%rip), %rcx
	.loc 2 1715 47
	movq	keyafter(%rip), %rdx
	.loc 2 1715 37
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	.loc 2 1715 21
	subq	%rdx, %rax
	movq	%rax, %rdx
	.loc 2 1716 44
	movzbl	keyafter_truncation(%rip), %eax
	.loc 2 1716 71
	testb	%al, %al
	je	.L388
	.loc 2 1716 71 is_stmt 0 discriminator 1
	movq	truncation_string_length(%rip), %rax
	jmp	.L389
.L388:
	.loc 2 1716 71 discriminator 2
	movl	$0, %eax
.L389:
	.loc 2 1716 21 is_stmt 1 discriminator 4
	movq	%rdx, %rcx
	subq	%rax, %rcx
	.loc 2 1717 28 discriminator 4
	movq	8+head(%rip), %rdx
	.loc 2 1717 39 discriminator 4
	movq	head(%rip), %rax
	.loc 2 1717 33 discriminator 4
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1717 21 discriminator 4
	subq	%rax, %rcx
	movq	%rcx, %rdx
	.loc 2 1718 40 discriminator 4
	movzbl	head_truncation(%rip), %eax
	.loc 2 1718 67 discriminator 4
	testb	%al, %al
	je	.L390
	.loc 2 1718 67 is_stmt 0 discriminator 1
	movq	truncation_string_length(%rip), %rax
	jmp	.L391
.L390:
	.loc 2 1718 67 discriminator 2
	movl	$0, %eax
.L391:
	.loc 2 1714 7 is_stmt 1
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	call	print_spaces
	.loc 2 1719 11
	movzbl	head_truncation(%rip), %eax
	.loc 2 1719 10
	testb	%al, %al
	je	.L392
	.loc 2 1720 9
	movq	stdout(%rip), %rdx
	movq	truncation_string(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L392:
	.loc 2 1721 7
	movq	head(%rip), %rdx
	movq	8+head(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
	jmp	.L393
.L387:
	.loc 2 1725 10
	movzbl	auto_reference(%rip), %eax
	.loc 2 1725 8
	testb	%al, %al
	jne	.L394
	.loc 2 1725 25 discriminator 2
	movzbl	input_reference(%rip), %eax
	testb	%al, %al
	je	.L393
.L394:
	.loc 2 1725 45 discriminator 3
	movzbl	right_reference(%rip), %eax
	testb	%al, %al
	je	.L393
	.loc 2 1727 21
	movq	half_line_width(%rip), %rax
	.loc 2 1727 32
	movq	8+keyafter(%rip), %rcx
	.loc 2 1727 47
	movq	keyafter(%rip), %rdx
	.loc 2 1727 37
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	.loc 2 1727 21
	subq	%rdx, %rax
	movq	%rax, %rdx
	.loc 2 1728 44
	movzbl	keyafter_truncation(%rip), %eax
	.loc 2 1728 71
	testb	%al, %al
	je	.L395
	.loc 2 1728 71 is_stmt 0 discriminator 1
	movq	truncation_string_length(%rip), %rax
	jmp	.L396
.L395:
	.loc 2 1728 71 discriminator 2
	movl	$0, %eax
.L396:
	.loc 2 1726 7 is_stmt 1
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	call	print_spaces
.L393:
	.loc 2 1730 8
	movzbl	auto_reference(%rip), %eax
	.loc 2 1730 6
	testb	%al, %al
	jne	.L397
	.loc 2 1730 23 discriminator 2
	movzbl	input_reference(%rip), %eax
	testb	%al, %al
	je	.L398
.L397:
	.loc 2 1730 43 discriminator 3
	movzbl	right_reference(%rip), %eax
	testb	%al, %al
	je	.L398
	.loc 2 1734 7
	movq	gap_size(%rip), %rax
	movq	%rax, %rdi
	call	print_spaces
	.loc 2 1735 7
	movq	reference(%rip), %rdx
	movq	8+reference(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	print_field
.L398:
	.loc 2 1738 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 1739 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	output_one_dumb_line, .-output_one_dumb_line
	.type	generate_all_output, @function
generate_all_output:
.LFB65:
	.loc 2 1748 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 1756 14
	movq	$0, tail(%rip)
	.loc 2 1757 12
	movq	$0, 8+tail(%rip)
	.loc 2 1758 19
	movb	$0, tail_truncation(%rip)
	.loc 2 1760 14
	movq	$0, head(%rip)
	.loc 2 1761 12
	movq	$0, 8+head(%rip)
	.loc 2 1762 19
	movb	$0, head_truncation(%rip)
	.loc 2 1766 17
	movq	occurs_table(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1768 21
	movq	$0, -16(%rbp)
	.loc 2 1768 3
	jmp	.L400
.L405:
	.loc 2 1773 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	define_all_fields
	.loc 2 1777 7
	movl	output_format(%rip), %eax
	cmpl	$3, %eax
	je	.L401
	cmpl	$3, %eax
	ja	.L402
	cmpl	$1, %eax
	jbe	.L403
	cmpl	$2, %eax
	je	.L404
	jmp	.L402
.L403:
	.loc 2 1783 11
	call	output_one_dumb_line
	.loc 2 1784 11
	jmp	.L402
.L404:
	.loc 2 1787 11
	call	output_one_roff_line
	.loc 2 1788 11
	jmp	.L402
.L401:
	.loc 2 1791 11
	call	output_one_tex_line
	.loc 2 1792 11
	nop
.L402:
	.loc 2 1797 20 discriminator 2
	addq	$48, -8(%rbp)
	.loc 2 1768 74 discriminator 2
	addq	$1, -16(%rbp)
.L400:
	.loc 2 1768 57 discriminator 1
	movq	number_of_occurs(%rip), %rax
	.loc 2 1768 3 discriminator 1
	cmpq	%rax, -16(%rbp)
	jl	.L405
	.loc 2 1799 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	generate_all_output, .-generate_all_output
	.section	.rodata
	.align 8
.LC52:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC53:
	.string	"Usage: %s [OPTION]... [INPUT]...   (without -G)\n  or:  %s -G [OPTION]... [INPUT [OUTPUT]]\n"
	.align 8
.LC54:
	.string	"Output a permuted index, including context, of the words in the input files.\n"
	.align 8
.LC55:
	.string	"  -A, --auto-reference           output automatically generated references\n  -G, --traditional              behave more like System V 'ptx'\n"
	.align 8
.LC56:
	.string	"  -F, --flag-truncation=STRING   use STRING for flagging line truncations.\n                                 The default is '/'\n"
	.align 8
.LC57:
	.ascii	"  -M, --macro-name=STRING        macro name to use instead o"
	.ascii	"f 'xx'\n  -O, --format=roff      "
	.string	"        generate output as roff directives\n  -R, --right-side-refs          put references at right, not counted in -w\n  -S, --sentence-regexp=REGEXP   for end of lines or end of sentences\n  -T, --format=tex               generate output as TeX directives\n"
	.align 8
.LC58:
	.ascii	"  -W, --word-regexp=REGEXP       use REGEXP to match each ke"
	.ascii	"yword\n  -b, --break-file=FILE          word break character"
	.ascii	"s in this FILE\n  -f, --ignore-case        "
	.string	"      fold lower case to upper case for sorting\n  -g, --gap-size=NUMBER          gap size in columns between output fields\n  -i, --ignore-file=FILE         read ignore word list from FILE\n  -o, --only-file=FILE           read only word list from this FILE\n"
	.align 8
.LC59:
	.string	"  -r, --references               first field of each line is a reference\n  -t, --typeset-mode               - not implemented -\n  -w, --width=NUMBER             output width in columns, reference excluded\n"
	.align 8
.LC60:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC61:
	.string	"      --version  output version information and exit\n"
.LC62:
	.string	"ptx"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB66:
	.loc 2 1809 1
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
	.loc 2 1810 6
	cmpl	$0, -20(%rbp)
	je	.L407
	.loc 2 1811 5
	movq	program_name(%rip), %rbx
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L408
.L407:
	.loc 2 1814 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 1814 15
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	.loc 2 1814 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1818 7
	movq	stdout(%rip), %rbx
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1822 7
	call	emit_stdin_note
	.loc 2 1823 7
	call	emit_mandatory_arg_note
	.loc 2 1825 7
	movq	stdout(%rip), %rbx
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1829 7
	movq	stdout(%rip), %rbx
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1833 7
	movq	stdout(%rip), %rbx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1840 7
	movq	stdout(%rip), %rbx
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1848 7
	movq	stdout(%rip), %rbx
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1853 7
	movq	stdout(%rip), %rbx
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1854 7
	movq	stdout(%rip), %rbx
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1855 7
	leaq	.LC62(%rip), %rdi
	call	emit_ancillary_info
.L408:
	.loc 2 1857 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE66:
	.size	usage, .-usage
	.section	.rodata
.LC63:
	.string	"auto-reference"
.LC64:
	.string	"break-file"
.LC65:
	.string	"flag-truncation"
.LC66:
	.string	"ignore-case"
.LC67:
	.string	"gap-size"
.LC68:
	.string	"ignore-file"
.LC69:
	.string	"macro-name"
.LC70:
	.string	"only-file"
.LC71:
	.string	"references"
.LC72:
	.string	"right-side-refs"
.LC73:
	.string	"format"
.LC74:
	.string	"sentence-regexp"
.LC75:
	.string	"traditional"
.LC76:
	.string	"typeset-mode"
.LC77:
	.string	"width"
.LC78:
	.string	"word-regexp"
.LC79:
	.string	"help"
.LC80:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 608
long_options:
	.quad	.LC63
	.long	0
	.zero	4
	.quad	0
	.long	65
	.zero	4
	.quad	.LC64
	.long	1
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC65
	.long	1
	.zero	4
	.quad	0
	.long	70
	.zero	4
	.quad	.LC66
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC67
	.long	1
	.zero	4
	.quad	0
	.long	103
	.zero	4
	.quad	.LC68
	.long	1
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC69
	.long	1
	.zero	4
	.quad	0
	.long	77
	.zero	4
	.quad	.LC70
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC71
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC72
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	.LC73
	.long	1
	.zero	4
	.quad	0
	.long	10
	.zero	4
	.quad	.LC74
	.long	1
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC75
	.long	0
	.zero	4
	.quad	0
	.long	71
	.zero	4
	.quad	.LC76
	.long	0
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC77
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC78
	.long	1
	.zero	4
	.quad	0
	.long	87
	.zero	4
	.quad	.LC79
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC80
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
.LC81:
	.string	"roff"
.LC82:
	.string	"tex"
	.section	.data.rel.ro.local
	.align 16
	.type	format_args, @object
	.size	format_args, 24
format_args:
	.quad	.LC81
	.quad	.LC82
	.quad	0
	.section	.rodata
	.align 8
	.type	format_vals, @object
	.size	format_vals, 8
format_vals:
	.long	2
	.long	3
.LC83:
	.string	"/usr/local/share/locale"
.LC84:
	.string	"invalid gap width: %s"
.LC85:
	.string	"invalid line width: %s"
.LC86:
	.string	"--format"
.LC87:
	.string	"Fran\303\247ois Pinard"
.LC88:
	.string	"F. Pinard"
.LC89:
	.string	"AF:GM:ORS:TW:b:i:fg:o:trw:"
.LC90:
	.string	"w"
.LC91:
	.string	"extra operand %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB67:
	.loc 2 1901 1
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
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 1901 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1908 3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 1909 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 1910 3
	leaq	.LC83(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 1911 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 1913 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 1919 9
	jmp	.L410
.L439:
	.loc 2 1923 7
	cmpl	$119, -44(%rbp)
	jg	.L411
	cmpl	$10, -44(%rbp)
	jge	.L412
	cmpl	$-131, -44(%rbp)
	je	.L413
	cmpl	$-130, -44(%rbp)
	je	.L414
	jmp	.L411
.L412:
	movl	-44(%rbp), %eax
	subl	$10, %eax
	cmpl	$109, %eax
	ja	.L411
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L416(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L416(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L416:
	.long	.L433-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L432-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L431-.L416
	.long	.L430-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L429-.L416
	.long	.L411-.L416
	.long	.L428-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L427-.L416
	.long	.L426-.L416
	.long	.L425-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L424-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L423-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L422-.L416
	.long	.L421-.L416
	.long	.L411-.L416
	.long	.L420-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L419-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L418-.L416
	.long	.L411-.L416
	.long	.L410-.L416
	.long	.L411-.L416
	.long	.L411-.L416
	.long	.L415-.L416
	.text
.L411:
	.loc 2 1926 11
	movl	$1, %edi
	call	usage
.L430:
	.loc 2 1929 26
	movb	$0, gnu_extensions(%rip)
	.loc 2 1930 11
	jmp	.L410
.L423:
	.loc 2 1933 22
	movq	optarg(%rip), %rax
	movq	%rax, break_file(%rip)
	.loc 2 1934 11
	jmp	.L410
.L422:
	.loc 2 1937 23
	movb	$1, ignore_case(%rip)
	.loc 2 1938 11
	jmp	.L410
.L421:
.LBB18:
	.loc 2 1943 20
	movq	optarg(%rip), %rax
	leaq	-40(%rbp), %rdx
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoimax@PLT
	.loc 2 1943 16
	testl	%eax, %eax
	jne	.L434
	.loc 2 1944 25
	movq	-40(%rbp), %rax
	.loc 2 1944 20
	testq	%rax, %rax
	jg	.L435
.L434:
.LBB19:
	.loc 2 1945 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L435:
.LBE19:
	.loc 2 1947 22
	movq	-40(%rbp), %rax
	movq	%rax, gap_size(%rip)
	.loc 2 1948 13
	nop
	jmp	.L410
.L420:
.LBE18:
	.loc 2 1952 23
	movq	optarg(%rip), %rax
	movq	%rax, ignore_file(%rip)
	.loc 2 1953 11
	jmp	.L410
.L419:
	.loc 2 1956 21
	movq	optarg(%rip), %rax
	movq	%rax, only_file(%rip)
	.loc 2 1957 11
	jmp	.L410
.L418:
	.loc 2 1960 27
	movb	$1, input_reference(%rip)
	.loc 2 1961 11
	jmp	.L410
.L415:
.LBB20:
	.loc 2 1970 20
	movq	optarg(%rip), %rax
	leaq	-40(%rbp), %rdx
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoimax@PLT
	.loc 2 1970 16
	testl	%eax, %eax
	jne	.L436
	.loc 2 1971 25
	movq	-40(%rbp), %rax
	.loc 2 1971 20
	testq	%rax, %rax
	jg	.L437
.L436:
.LBB21:
	.loc 2 1972 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC85(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L437:
.LBE21:
	.loc 2 1974 24
	movq	-40(%rbp), %rax
	movq	%rax, line_width(%rip)
	.loc 2 1975 13
	nop
	jmp	.L410
.L432:
.LBE20:
	.loc 2 1979 26
	movb	$1, auto_reference(%rip)
	.loc 2 1980 11
	jmp	.L410
.L431:
	.loc 2 1983 31
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	copy_unescaped_string
	.loc 2 1983 29
	movq	%rax, truncation_string(%rip)
	.loc 2 1984 11
	jmp	.L410
.L429:
	.loc 2 1987 22
	movq	optarg(%rip), %rax
	movq	%rax, macro_name(%rip)
	.loc 2 1988 11
	jmp	.L410
.L428:
	.loc 2 1991 25
	movl	$2, output_format(%rip)
	.loc 2 1992 11
	jmp	.L410
.L427:
	.loc 2 1995 27
	movb	$1, right_reference(%rip)
	.loc 2 1996 11
	jmp	.L410
.L426:
	.loc 2 1999 34
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	copy_unescaped_string
	.loc 2 1999 32
	movq	%rax, context_regex(%rip)
	.loc 2 2000 11
	jmp	.L410
.L425:
	.loc 2 2003 25
	movl	$3, output_format(%rip)
	.loc 2 2004 11
	jmp	.L410
.L424:
	.loc 2 2007 31
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	copy_unescaped_string
	.loc 2 2007 29
	movq	%rax, word_regex(%rip)
	.loc 2 2008 27
	movq	word_regex(%rip), %rax
	.loc 2 2008 16
	movzbl	(%rax), %eax
	.loc 2 2008 14
	testb	%al, %al
	jne	.L410
	.loc 2 2009 31
	movq	$0, word_regex(%rip)
	.loc 2 2010 11
	jmp	.L410
.L433:
	.loc 2 2013 27
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	format_vals(%rip), %rcx
	leaq	format_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC86(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	format_vals(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 2013 25
	movl	%eax, output_format(%rip)
	.loc 2 2015 11
	jmp	.L410
.L414:
	.loc 2 2017 9
	movl	$0, %edi
	call	usage
.L413:
	.loc 2 2019 9
	leaq	.LC87(%rip), %rsi
	leaq	.LC88(%rip), %rdi
	call	proper_name_utf8@PLT
	movq	%rax, %rcx
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L410:
	.loc 2 1919 20
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC89(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -44(%rbp)
	.loc 2 1919 9
	cmpl	$-1, -44(%rbp)
	jne	.L439
	.loc 2 2027 14
	movl	optind(%rip), %eax
	.loc 2 2027 6
	cmpl	%eax, -52(%rbp)
	jne	.L440
	.loc 2 2032 25
	movl	$8, %edi
	call	xmalloc@PLT
	.loc 2 2032 23
	movq	%rax, input_file_name(%rip)
	.loc 2 2033 25
	movl	$8, %edi
	call	xmalloc@PLT
	.loc 2 2033 23
	movq	%rax, file_line_count(%rip)
	.loc 2 2034 25
	movl	$16, %edi
	call	xmalloc@PLT
	.loc 2 2034 20
	movq	%rax, text_buffers(%rip)
	.loc 2 2035 26
	movl	$1, number_input_files(%rip)
	.loc 2 2036 22
	movq	input_file_name(%rip), %rax
	.loc 2 2036 26
	movq	$0, (%rax)
	jmp	.L441
.L440:
	.loc 2 2038 12
	movzbl	gnu_extensions(%rip), %eax
	.loc 2 2038 11
	testb	%al, %al
	je	.L442
	.loc 2 2040 33
	movl	optind(%rip), %eax
	movl	-52(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 2040 26
	movl	%eax, number_input_files(%rip)
	.loc 2 2041 25
	movl	number_input_files(%rip), %eax
	cltq
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	.loc 2 2041 23
	movq	%rax, input_file_name(%rip)
	.loc 2 2042 25
	movl	number_input_files(%rip), %eax
	cltq
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	.loc 2 2042 23
	movq	%rax, file_line_count(%rip)
	.loc 2 2043 25
	movl	number_input_files(%rip), %eax
	cltq
	movl	$16, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	.loc 2 2043 23
	movq	%rax, text_buffers(%rip)
	.loc 2 2045 23
	movl	$0, -48(%rbp)
	.loc 2 2045 7
	jmp	.L443
.L447:
	.loc 2 2047 21
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 2047 16
	movzbl	(%rax), %eax
	.loc 2 2047 14
	testb	%al, %al
	je	.L444
	.loc 2 2047 33 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 2047 30 discriminator 1
	testl	%eax, %eax
	jne	.L445
.L444:
	.loc 2 2048 28
	movq	input_file_name(%rip), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 2048 41
	movq	$0, (%rax)
	jmp	.L446
.L445:
	.loc 2 2050 47
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2050 28
	movq	input_file_name(%rip), %rdx
	movl	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	.loc 2 2050 47
	movq	(%rax), %rax
	.loc 2 2050 41
	movq	%rax, (%rdx)
.L446:
	.loc 2 2051 17 discriminator 2
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
	.loc 2 2045 71 discriminator 2
	addl	$1, -48(%rbp)
.L443:
	.loc 2 2045 39 discriminator 1
	movl	number_input_files(%rip), %eax
	.loc 2 2045 7 discriminator 1
	cmpl	%eax, -48(%rbp)
	jl	.L447
	jmp	.L441
.L442:
	.loc 2 2059 26
	movl	$1, number_input_files(%rip)
	.loc 2 2060 25
	movl	$8, %edi
	call	xmalloc@PLT
	.loc 2 2060 23
	movq	%rax, input_file_name(%rip)
	.loc 2 2061 25
	movl	$8, %edi
	call	xmalloc@PLT
	.loc 2 2061 23
	movq	%rax, file_line_count(%rip)
	.loc 2 2062 25
	movl	$16, %edi
	call	xmalloc@PLT
	.loc 2 2062 23
	movq	%rax, text_buffers(%rip)
	.loc 2 2063 17
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 2063 12
	movzbl	(%rax), %eax
	.loc 2 2063 10
	testb	%al, %al
	je	.L448
	.loc 2 2063 29 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 2063 26 discriminator 1
	testl	%eax, %eax
	jne	.L449
.L448:
	.loc 2 2064 24
	movq	input_file_name(%rip), %rax
	.loc 2 2064 28
	movq	$0, (%rax)
	jmp	.L450
.L449:
	.loc 2 2066 34
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 2066 24
	movq	input_file_name(%rip), %rax
	.loc 2 2066 34
	movq	(%rdx), %rdx
	.loc 2 2066 28
	movq	%rdx, (%rax)
.L450:
	.loc 2 2067 13
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
	.loc 2 2071 18
	movl	optind(%rip), %eax
	.loc 2 2071 10
	cmpl	%eax, -52(%rbp)
	jle	.L451
	.loc 2 2073 17
	movq	stdout(%rip), %rdx
	.loc 2 2073 30
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 2073 17
	movq	(%rax), %rax
	leaq	.LC90(%rip), %rsi
	movq	%rax, %rdi
	call	freopen_safer@PLT
	.loc 2 2073 14
	testq	%rax, %rax
	jne	.L452
.LBB22:
	.loc 2 2074 13
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC27(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L452:
.LBE22:
	.loc 2 2075 17
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L451:
	.loc 2 2080 18
	movl	optind(%rip), %eax
	.loc 2 2080 10
	cmpl	%eax, -52(%rbp)
	jle	.L441
	.loc 2 2082 58
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2082 11
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 2082 24
	leaq	.LC91(%rip), %rdi
	call	gettext@PLT
	.loc 2 2082 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 2083 11
	movl	$1, %edi
	call	usage
.L441:
	.loc 2 2090 21
	movl	output_format(%rip), %eax
	.loc 2 2090 6
	testl	%eax, %eax
	jne	.L453
	.loc 2 2091 36
	movzbl	gnu_extensions(%rip), %eax
	.loc 2 2091 50
	testb	%al, %al
	je	.L454
	.loc 2 2091 50 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L455
.L454:
	.loc 2 2091 50 discriminator 2
	movl	$2, %eax
.L455:
	.loc 2 2091 19 is_stmt 1 discriminator 4
	movl	%eax, output_format(%rip)
.L453:
	.loc 2 2095 3
	call	initialize_regex
	.loc 2 2099 7
	movq	break_file(%rip), %rax
	.loc 2 2099 6
	testq	%rax, %rax
	je	.L456
	.loc 2 2100 5
	movq	break_file(%rip), %rax
	movq	%rax, %rdi
	call	digest_break_file
.L456:
	.loc 2 2106 7
	movq	ignore_file(%rip), %rax
	.loc 2 2106 6
	testq	%rax, %rax
	je	.L457
	.loc 2 2108 7
	movq	ignore_file(%rip), %rax
	leaq	ignore_table(%rip), %rsi
	movq	%rax, %rdi
	call	digest_word_file
	.loc 2 2109 23
	movq	16+ignore_table(%rip), %rax
	.loc 2 2109 10
	testq	%rax, %rax
	jne	.L457
	.loc 2 2110 21
	movq	$0, ignore_file(%rip)
.L457:
	.loc 2 2113 7
	movq	only_file(%rip), %rax
	.loc 2 2113 6
	testq	%rax, %rax
	je	.L458
	.loc 2 2115 7
	movq	only_file(%rip), %rax
	leaq	only_table(%rip), %rsi
	movq	%rax, %rdi
	call	digest_word_file
	.loc 2 2116 21
	movq	16+only_table(%rip), %rax
	.loc 2 2116 10
	testq	%rax, %rax
	jne	.L458
	.loc 2 2117 19
	movq	$0, only_file(%rip)
.L458:
	.loc 2 2122 23
	movq	$0, number_of_occurs(%rip)
	.loc 2 2123 20
	movq	$0, total_line_count(%rip)
	.loc 2 2124 23
	movq	$0, maximum_word_length(%rip)
	.loc 2 2125 23
	movq	$0, reference_max_width(%rip)
	.loc 2 2127 19
	movl	$0, -48(%rbp)
	.loc 2 2127 3
	jmp	.L459
.L460:
.LBB23:
	.loc 2 2129 41 discriminator 3
	movq	text_buffers(%rip), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	.loc 2 2129 14 discriminator 3
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 2133 46 discriminator 3
	movq	input_file_name(%rip), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 2133 7 discriminator 3
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	swallow_file_in_memory
	.loc 2 2134 7 discriminator 3
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	find_occurs_in_text
	.loc 2 2140 23 discriminator 3
	movq	total_line_count(%rip), %rax
	addq	$1, %rax
	movq	%rax, total_line_count(%rip)
	.loc 2 2141 22 discriminator 3
	movq	file_line_count(%rip), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	.loc 2 2141 35 discriminator 3
	movq	total_line_count(%rip), %rax
	movq	%rax, (%rdx)
.LBE23:
	.loc 2 2127 67 discriminator 3
	addl	$1, -48(%rbp)
.L459:
	.loc 2 2127 35 discriminator 1
	movl	number_input_files(%rip), %eax
	.loc 2 2127 3 discriminator 1
	cmpl	%eax, -48(%rbp)
	jl	.L460
	.loc 2 2146 3
	call	sort_found_occurs
	.loc 2 2147 3
	call	fix_output_parameters
	.loc 2 2148 3
	call	generate_all_output
	.loc 2 2152 10
	movl	$0, %eax
	.loc 2 2153 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L462
	call	__stack_chk_fail@PLT
.L462:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 9 "./lib/sys/select.h"
	.file 10 "/usr/include/time.h"
	.file 11 "/usr/include/signal.h"
	.file 12 "/usr/include/unistd.h"
	.file 13 "/usr/include/errno.h"
	.file 14 "src/version.h"
	.file 15 "./lib/exitfail.h"
	.file 16 "/usr/include/stdint.h"
	.file 17 "./lib/timespec.h"
	.file 18 "/usr/include/ctype.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 21 "/usr/include/stdio.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 23 "./lib/version-etc.h"
	.file 24 "./lib/progname.h"
	.file 25 "./lib/quotearg.h"
	.file 26 "./lib/error.h"
	.file 27 "./lib/regex.h"
	.file 28 "./lib/quote.h"
	.file 29 "./lib/argmatch.h"
	.file 30 "./lib/diacrit.h"
	.file 31 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1a0a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF308
	.byte	0xc
	.long	.LASF309
	.long	.LASF310
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
	.long	.LASF58
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
	.byte	0x98
	.byte	0x19
	.long	0xfd
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0xfd
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0xfd
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5
	.byte	0xc1
	.byte	0x1b
	.long	0xfd
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.byte	0x6c
	.byte	0x13
	.long	0x136
	.uleb128 0xb
	.long	.LASF21
	.byte	0x7
	.byte	0x7
	.byte	0x12
	.long	0x128
	.uleb128 0xb
	.long	.LASF22
	.byte	0x8
	.byte	0xd1
	.byte	0x17
	.long	0xe8
	.uleb128 0xd
	.long	.LASF23
	.byte	0x9
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF24
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF25
	.uleb128 0xe
	.long	0x39
	.long	0x191
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF26
	.byte	0xa
	.byte	0x9f
	.byte	0xe
	.long	0x181
	.uleb128 0x2
	.long	.LASF27
	.byte	0xa
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF28
	.byte	0xa
	.byte	0xa1
	.byte	0x11
	.long	0xfd
	.uleb128 0x2
	.long	.LASF29
	.byte	0xa
	.byte	0xa6
	.byte	0xe
	.long	0x181
	.uleb128 0x2
	.long	.LASF30
	.byte	0xa
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF31
	.byte	0xa
	.byte	0xaf
	.byte	0x11
	.long	0xfd
	.uleb128 0xd
	.long	.LASF32
	.byte	0xa
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	.LASF33
	.byte	0x8
	.byte	0x8f
	.byte	0x1a
	.long	0xfd
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF34
	.uleb128 0x10
	.uleb128 0x3
	.byte	0x8
	.long	0x1f9
	.uleb128 0xe
	.long	0xc8
	.long	0x210
	.uleb128 0xf
	.long	0xe8
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x200
	.uleb128 0xd
	.long	.LASF35
	.byte	0xb
	.value	0x11e
	.byte	0x1a
	.long	0x210
	.uleb128 0xd
	.long	.LASF36
	.byte	0xb
	.value	0x11f
	.byte	0x1a
	.long	0x210
	.uleb128 0xd
	.long	.LASF37
	.byte	0xc
	.value	0x21f
	.byte	0xf
	.long	0x23c
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0xd
	.long	.LASF38
	.byte	0xc
	.value	0x221
	.byte	0xf
	.long	0x23c
	.uleb128 0x2
	.long	.LASF39
	.byte	0xd
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF40
	.byte	0xd
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.long	0x26d
	.uleb128 0x11
	.uleb128 0x2
	.long	.LASF41
	.byte	0xe
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF42
	.byte	0xf
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xe
	.long	0x3f
	.long	0x296
	.uleb128 0xf
	.long	0xe8
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	.LASF43
	.byte	0x10
	.byte	0x65
	.byte	0x15
	.long	0x104
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x11
	.byte	0x29
	.byte	0x6
	.long	0x2ba
	.uleb128 0x13
	.long	.LASF44
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x11
	.byte	0x2a
	.byte	0x6
	.long	0x2cf
	.uleb128 0x14
	.long	.LASF45
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x12
	.byte	0x2f
	.byte	0x1
	.long	0x32e
	.uleb128 0x15
	.long	.LASF46
	.value	0x100
	.uleb128 0x15
	.long	.LASF47
	.value	0x200
	.uleb128 0x15
	.long	.LASF48
	.value	0x400
	.uleb128 0x15
	.long	.LASF49
	.value	0x800
	.uleb128 0x15
	.long	.LASF50
	.value	0x1000
	.uleb128 0x15
	.long	.LASF51
	.value	0x2000
	.uleb128 0x15
	.long	.LASF52
	.value	0x4000
	.uleb128 0x15
	.long	.LASF53
	.value	0x8000
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.uleb128 0x14
	.long	.LASF55
	.byte	0x2
	.uleb128 0x14
	.long	.LASF56
	.byte	0x4
	.uleb128 0x14
	.long	.LASF57
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0xd8
	.byte	0x13
	.byte	0x31
	.byte	0x8
	.long	0x4b5
	.uleb128 0x9
	.long	.LASF60
	.byte	0x13
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF61
	.byte	0x13
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF62
	.byte	0x13
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF63
	.byte	0x13
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF64
	.byte	0x13
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF65
	.byte	0x13
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF66
	.byte	0x13
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF67
	.byte	0x13
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF68
	.byte	0x13
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF69
	.byte	0x13
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF70
	.byte	0x13
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF71
	.byte	0x13
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF72
	.byte	0x13
	.byte	0x44
	.byte	0x16
	.long	0x4ce
	.byte	0x60
	.uleb128 0x9
	.long	.LASF73
	.byte	0x13
	.byte	0x46
	.byte	0x14
	.long	0x4d4
	.byte	0x68
	.uleb128 0x9
	.long	.LASF74
	.byte	0x13
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF75
	.byte	0x13
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF76
	.byte	0x13
	.byte	0x4a
	.byte	0xb
	.long	0x110
	.byte	0x78
	.uleb128 0x9
	.long	.LASF77
	.byte	0x13
	.byte	0x4d
	.byte	0x12
	.long	0xda
	.byte	0x80
	.uleb128 0x9
	.long	.LASF78
	.byte	0x13
	.byte	0x4e
	.byte	0xf
	.long	0xef
	.byte	0x82
	.uleb128 0x9
	.long	.LASF79
	.byte	0x13
	.byte	0x4f
	.byte	0x8
	.long	0x4da
	.byte	0x83
	.uleb128 0x9
	.long	.LASF80
	.byte	0x13
	.byte	0x51
	.byte	0xf
	.long	0x4ea
	.byte	0x88
	.uleb128 0x9
	.long	.LASF81
	.byte	0x13
	.byte	0x59
	.byte	0xd
	.long	0x11c
	.byte	0x90
	.uleb128 0x9
	.long	.LASF82
	.byte	0x13
	.byte	0x5b
	.byte	0x17
	.long	0x4f5
	.byte	0x98
	.uleb128 0x9
	.long	.LASF83
	.byte	0x13
	.byte	0x5c
	.byte	0x19
	.long	0x500
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF84
	.byte	0x13
	.byte	0x5d
	.byte	0x14
	.long	0x4d4
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF85
	.byte	0x13
	.byte	0x5e
	.byte	0x9
	.long	0x134
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF86
	.byte	0x13
	.byte	0x5f
	.byte	0xa
	.long	0x15a
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF87
	.byte	0x13
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF88
	.byte	0x13
	.byte	0x62
	.byte	0x8
	.long	0x506
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF89
	.byte	0x14
	.byte	0x7
	.byte	0x19
	.long	0x32e
	.uleb128 0x16
	.long	.LASF311
	.byte	0x13
	.byte	0x2b
	.byte	0xe
	.uleb128 0x17
	.long	.LASF90
	.uleb128 0x3
	.byte	0x8
	.long	0x4c9
	.uleb128 0x3
	.byte	0x8
	.long	0x32e
	.uleb128 0xe
	.long	0x3f
	.long	0x4ea
	.uleb128 0xf
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4c1
	.uleb128 0x17
	.long	.LASF91
	.uleb128 0x3
	.byte	0x8
	.long	0x4f0
	.uleb128 0x17
	.long	.LASF92
	.uleb128 0x3
	.byte	0x8
	.long	0x4fb
	.uleb128 0xe
	.long	0x3f
	.long	0x516
	.uleb128 0xf
	.long	0xe8
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x15
	.byte	0x89
	.byte	0xe
	.long	0x522
	.uleb128 0x3
	.byte	0x8
	.long	0x4b5
	.uleb128 0x2
	.long	.LASF94
	.byte	0x15
	.byte	0x8a
	.byte	0xe
	.long	0x522
	.uleb128 0x2
	.long	.LASF95
	.byte	0x15
	.byte	0x8b
	.byte	0xe
	.long	0x522
	.uleb128 0x2
	.long	.LASF96
	.byte	0x16
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	0xc8
	.long	0x557
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.long	0x54c
	.uleb128 0x2
	.long	.LASF97
	.byte	0x16
	.byte	0x1b
	.byte	0x1a
	.long	0x557
	.uleb128 0x2
	.long	.LASF98
	.byte	0x16
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF99
	.byte	0x16
	.byte	0x1f
	.byte	0x1a
	.long	0x557
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x59e
	.uleb128 0x1a
	.long	.LASF100
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF101
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0x46
	.long	0x5a9
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.long	0x59e
	.uleb128 0x2
	.long	.LASF102
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x5a9
	.uleb128 0x2
	.long	.LASF103
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x1b
	.long	.LASF150
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x61b
	.uleb128 0x14
	.long	.LASF104
	.byte	0
	.uleb128 0x14
	.long	.LASF105
	.byte	0x1
	.uleb128 0x14
	.long	.LASF106
	.byte	0x2
	.uleb128 0x14
	.long	.LASF107
	.byte	0x3
	.uleb128 0x14
	.long	.LASF108
	.byte	0x4
	.uleb128 0x14
	.long	.LASF109
	.byte	0x5
	.uleb128 0x14
	.long	.LASF110
	.byte	0x6
	.uleb128 0x14
	.long	.LASF111
	.byte	0x7
	.uleb128 0x14
	.long	.LASF112
	.byte	0x8
	.uleb128 0x14
	.long	.LASF113
	.byte	0x9
	.uleb128 0x14
	.long	.LASF114
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x5c6
	.uleb128 0xd
	.long	.LASF115
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x557
	.uleb128 0xe
	.long	0x61b
	.long	0x638
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.long	0x62d
	.uleb128 0xd
	.long	.LASF116
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x638
	.uleb128 0x2
	.long	.LASF117
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x1fa
	.uleb128 0x2
	.long	.LASF118
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0xe1
	.uleb128 0x2
	.long	.LASF119
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	.LASF120
	.byte	0x1b
	.byte	0x2d
	.byte	0x10
	.long	0x15a
	.uleb128 0xb
	.long	.LASF121
	.byte	0x1b
	.byte	0x31
	.byte	0x10
	.long	0x15a
	.uleb128 0xb
	.long	.LASF122
	.byte	0x1b
	.byte	0x48
	.byte	0x1b
	.long	0xe8
	.uleb128 0x2
	.long	.LASF123
	.byte	0x1b
	.byte	0xd3
	.byte	0x15
	.long	0x686
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x40
	.byte	0x1b
	.value	0x19d
	.byte	0x8
	.long	0x786
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x1b
	.value	0x1a1
	.byte	0x14
	.long	0x78b
	.byte	0
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x1b
	.value	0x1a4
	.byte	0x14
	.long	0x67a
	.byte	0x8
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x1b
	.value	0x1a7
	.byte	0x14
	.long	0x67a
	.byte	0x10
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x1b
	.value	0x1aa
	.byte	0x10
	.long	0x686
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x1b
	.value	0x1af
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x1d
	.long	.LASF130
	.byte	0x1b
	.value	0x1b5
	.byte	0x17
	.long	0x791
	.byte	0x28
	.uleb128 0x1d
	.long	.LASF131
	.byte	0x1b
	.value	0x1b8
	.byte	0xa
	.long	0x15a
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF132
	.byte	0x1b
	.value	0x1be
	.byte	0xc
	.long	0xe1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x38
	.uleb128 0x1e
	.long	.LASF133
	.byte	0x1b
	.value	0x1c9
	.byte	0xc
	.long	0xe1
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0x38
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x1b
	.value	0x1cd
	.byte	0xc
	.long	0xe1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x38
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x1b
	.value	0x1d1
	.byte	0xc
	.long	0xe1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x38
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x1b
	.value	0x1d5
	.byte	0xc
	.long	0xe1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x38
	.uleb128 0x1e
	.long	.LASF137
	.byte	0x1b
	.value	0x1d8
	.byte	0xc
	.long	0xe1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x38
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x1b
	.value	0x1db
	.byte	0xc
	.long	0xe1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x38
	.byte	0
	.uleb128 0x17
	.long	.LASF139
	.uleb128 0x3
	.byte	0x8
	.long	0x786
	.uleb128 0x3
	.byte	0x8
	.long	0xd3
	.uleb128 0x1f
	.long	.LASF140
	.byte	0x1b
	.value	0x1e6
	.byte	0x11
	.long	0x142
	.uleb128 0x1c
	.long	.LASF141
	.byte	0x18
	.byte	0x1b
	.value	0x1f1
	.byte	0x8
	.long	0x7dd
	.uleb128 0x1d
	.long	.LASF142
	.byte	0x1b
	.value	0x1f3
	.byte	0xf
	.long	0x66e
	.byte	0
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1b
	.value	0x1f4
	.byte	0xd
	.long	0x7dd
	.byte	0x8
	.uleb128 0x20
	.string	"end"
	.byte	0x1b
	.value	0x1f5
	.byte	0xd
	.long	0x7dd
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x797
	.uleb128 0x17
	.long	.LASF144
	.uleb128 0x2
	.long	.LASF145
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x7e3
	.uleb128 0xb
	.long	.LASF146
	.byte	0x1d
	.byte	0x3d
	.byte	0x10
	.long	0x1fa
	.uleb128 0x2
	.long	.LASF147
	.byte	0x1d
	.byte	0x3e
	.byte	0x19
	.long	0x7f4
	.uleb128 0x2
	.long	.LASF148
	.byte	0x1e
	.byte	0x14
	.byte	0x13
	.long	0x5a9
	.uleb128 0x2
	.long	.LASF149
	.byte	0x1e
	.byte	0x15
	.byte	0x13
	.long	0x5a9
	.uleb128 0x1b
	.long	.LASF151
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x1f
	.byte	0x19
	.byte	0x6
	.long	0x855
	.uleb128 0x14
	.long	.LASF152
	.byte	0
	.uleb128 0x14
	.long	.LASF153
	.byte	0x1
	.uleb128 0x14
	.long	.LASF154
	.byte	0x2
	.uleb128 0x14
	.long	.LASF155
	.byte	0x3
	.uleb128 0x14
	.long	.LASF156
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.long	.LASF157
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.byte	0x44
	.byte	0x6
	.long	0x880
	.uleb128 0x14
	.long	.LASF158
	.byte	0
	.uleb128 0x14
	.long	.LASF159
	.byte	0x1
	.uleb128 0x14
	.long	.LASF160
	.byte	0x2
	.uleb128 0x14
	.long	.LASF161
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x855
	.uleb128 0x21
	.long	.LASF163
	.byte	0x2
	.byte	0x4c
	.byte	0xd
	.long	0x89b
	.uleb128 0x9
	.byte	0x3
	.quad	gnu_extensions
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF162
	.uleb128 0x21
	.long	.LASF164
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.long	0x89b
	.uleb128 0x9
	.byte	0x3
	.quad	auto_reference
	.uleb128 0x21
	.long	.LASF165
	.byte	0x2
	.byte	0x4e
	.byte	0xd
	.long	0x89b
	.uleb128 0x9
	.byte	0x3
	.quad	input_reference
	.uleb128 0x21
	.long	.LASF166
	.byte	0x2
	.byte	0x4f
	.byte	0xd
	.long	0x89b
	.uleb128 0x9
	.byte	0x3
	.quad	right_reference
	.uleb128 0x21
	.long	.LASF167
	.byte	0x2
	.byte	0x50
	.byte	0x12
	.long	0x1e6
	.uleb128 0x9
	.byte	0x3
	.quad	line_width
	.uleb128 0x21
	.long	.LASF168
	.byte	0x2
	.byte	0x51
	.byte	0x12
	.long	0x1e6
	.uleb128 0x9
	.byte	0x3
	.quad	gap_size
	.uleb128 0x21
	.long	.LASF169
	.byte	0x2
	.byte	0x52
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	truncation_string
	.uleb128 0x21
	.long	.LASF170
	.byte	0x2
	.byte	0x54
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	macro_name
	.uleb128 0x21
	.long	.LASF171
	.byte	0x2
	.byte	0x55
	.byte	0x14
	.long	0x855
	.uleb128 0x9
	.byte	0x3
	.quad	output_format
	.uleb128 0x21
	.long	.LASF172
	.byte	0x2
	.byte	0x58
	.byte	0xd
	.long	0x89b
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_case
	.uleb128 0x21
	.long	.LASF173
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	break_file
	.uleb128 0x21
	.long	.LASF174
	.byte	0x2
	.byte	0x5a
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	only_file
	.uleb128 0x21
	.long	.LASF175
	.byte	0x2
	.byte	0x5b
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_file
	.uleb128 0x22
	.long	.LASF176
	.value	0x148
	.byte	0x2
	.byte	0x5e
	.byte	0x8
	.long	0x9e0
	.uleb128 0x9
	.long	.LASF177
	.byte	0x2
	.byte	0x61
	.byte	0xf
	.long	0xc2
	.byte	0
	.uleb128 0x9
	.long	.LASF178
	.byte	0x2
	.byte	0x64
	.byte	0x1c
	.long	0x69e
	.byte	0x8
	.uleb128 0x9
	.long	.LASF129
	.byte	0x2
	.byte	0x65
	.byte	0x8
	.long	0x286
	.byte	0x48
	.byte	0
	.uleb128 0x21
	.long	.LASF179
	.byte	0x2
	.byte	0x68
	.byte	0x1a
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	context_regex
	.uleb128 0x21
	.long	.LASF180
	.byte	0x2
	.byte	0x69
	.byte	0x1a
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	word_regex
	.uleb128 0x23
	.byte	0x10
	.byte	0x2
	.byte	0x6f
	.byte	0x9
	.long	0xa30
	.uleb128 0x9
	.long	.LASF143
	.byte	0x2
	.byte	0x71
	.byte	0xb
	.long	0x39
	.byte	0
	.uleb128 0xa
	.string	"end"
	.byte	0x2
	.byte	0x72
	.byte	0xb
	.long	0x39
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF181
	.byte	0x2
	.byte	0x74
	.byte	0x1
	.long	0xa0c
	.uleb128 0x5
	.long	0xa30
	.uleb128 0x23
	.byte	0x10
	.byte	0x2
	.byte	0x76
	.byte	0x9
	.long	0xa65
	.uleb128 0x9
	.long	.LASF143
	.byte	0x2
	.byte	0x78
	.byte	0xb
	.long	0x39
	.byte	0
	.uleb128 0x9
	.long	.LASF182
	.byte	0x2
	.byte	0x79
	.byte	0xf
	.long	0x1e6
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF183
	.byte	0x2
	.byte	0x7b
	.byte	0x1
	.long	0xa41
	.uleb128 0x23
	.byte	0x18
	.byte	0x2
	.byte	0x7d
	.byte	0x9
	.long	0xaa2
	.uleb128 0x9
	.long	.LASF143
	.byte	0x2
	.byte	0x7f
	.byte	0xb
	.long	0xaa2
	.byte	0
	.uleb128 0x9
	.long	.LASF184
	.byte	0x2
	.byte	0x80
	.byte	0xc
	.long	0x15a
	.byte	0x8
	.uleb128 0x9
	.long	.LASF185
	.byte	0x2
	.byte	0x81
	.byte	0xf
	.long	0x1e6
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa65
	.uleb128 0xb
	.long	.LASF186
	.byte	0x2
	.byte	0x83
	.byte	0x1
	.long	0xa71
	.uleb128 0xe
	.long	0xd3
	.long	0xac4
	.uleb128 0xf
	.long	0xe8
	.byte	0xff
	.byte	0
	.uleb128 0x21
	.long	.LASF187
	.byte	0x2
	.byte	0x88
	.byte	0x16
	.long	0xab4
	.uleb128 0x9
	.byte	0x3
	.quad	folded_chars
	.uleb128 0x21
	.long	.LASF188
	.byte	0x2
	.byte	0x8b
	.byte	0x1c
	.long	0x7a4
	.uleb128 0x9
	.byte	0x3
	.quad	context_regs
	.uleb128 0x21
	.long	.LASF189
	.byte	0x2
	.byte	0x8e
	.byte	0x1c
	.long	0x7a4
	.uleb128 0x9
	.byte	0x3
	.quad	word_regs
	.uleb128 0x21
	.long	.LASF190
	.byte	0x2
	.byte	0x95
	.byte	0xd
	.long	0x286
	.uleb128 0x9
	.byte	0x3
	.quad	word_fastmap
	.uleb128 0x21
	.long	.LASF191
	.byte	0x2
	.byte	0x98
	.byte	0x12
	.long	0x1e6
	.uleb128 0x9
	.byte	0x3
	.quad	maximum_word_length
	.uleb128 0x21
	.long	.LASF192
	.byte	0x2
	.byte	0x9b
	.byte	0x12
	.long	0x1e6
	.uleb128 0x9
	.byte	0x3
	.quad	reference_max_width
	.uleb128 0x21
	.long	.LASF193
	.byte	0x2
	.byte	0x9f
	.byte	0x13
	.long	0xaa8
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_table
	.uleb128 0x21
	.long	.LASF194
	.byte	0x2
	.byte	0xa0
	.byte	0x13
	.long	0xaa8
	.uleb128 0x9
	.byte	0x3
	.quad	only_table
	.uleb128 0x21
	.long	.LASF195
	.byte	0x2
	.byte	0xa4
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	number_input_files
	.uleb128 0x21
	.long	.LASF196
	.byte	0x2
	.byte	0xa5
	.byte	0x11
	.long	0x296
	.uleb128 0x9
	.byte	0x3
	.quad	total_line_count
	.uleb128 0x21
	.long	.LASF197
	.byte	0x2
	.byte	0xa6
	.byte	0x15
	.long	0xbb6
	.uleb128 0x9
	.byte	0x3
	.quad	input_file_name
	.uleb128 0x3
	.byte	0x8
	.long	0xc2
	.uleb128 0x21
	.long	.LASF198
	.byte	0x2
	.byte	0xa7
	.byte	0x12
	.long	0xbd2
	.uleb128 0x9
	.byte	0x3
	.quad	file_line_count
	.uleb128 0x3
	.byte	0x8
	.long	0x296
	.uleb128 0x21
	.long	.LASF199
	.byte	0x2
	.byte	0xa9
	.byte	0xf
	.long	0xbee
	.uleb128 0x9
	.byte	0x3
	.quad	text_buffers
	.uleb128 0x3
	.byte	0x8
	.long	0xa30
	.uleb128 0x23
	.byte	0x30
	.byte	0x2
	.byte	0xe3
	.byte	0x9
	.long	0xc3f
	.uleb128 0xa
	.string	"key"
	.byte	0x2
	.byte	0xe5
	.byte	0xa
	.long	0xa65
	.byte	0
	.uleb128 0x9
	.long	.LASF200
	.byte	0x2
	.byte	0xe6
	.byte	0xf
	.long	0x1e6
	.byte	0x10
	.uleb128 0x9
	.long	.LASF201
	.byte	0x2
	.byte	0xe7
	.byte	0xf
	.long	0x1e6
	.byte	0x18
	.uleb128 0x9
	.long	.LASF202
	.byte	0x2
	.byte	0xe8
	.byte	0xe
	.long	0x296
	.byte	0x20
	.uleb128 0x9
	.long	.LASF203
	.byte	0x2
	.byte	0xe9
	.byte	0x9
	.long	0x57
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.long	.LASF204
	.byte	0x2
	.byte	0xeb
	.byte	0x1
	.long	0xbf4
	.uleb128 0xe
	.long	0xc5b
	.long	0xc5b
	.uleb128 0xf
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc3f
	.uleb128 0x21
	.long	.LASF205
	.byte	0x2
	.byte	0xf0
	.byte	0x10
	.long	0xc4b
	.uleb128 0x9
	.byte	0x3
	.quad	occurs_table
	.uleb128 0xe
	.long	0x15a
	.long	0xc87
	.uleb128 0xf
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.byte	0xf1
	.byte	0xf
	.long	0xc77
	.uleb128 0x9
	.byte	0x3
	.quad	occurs_alloc
	.uleb128 0xe
	.long	0x1e6
	.long	0xcad
	.uleb128 0xf
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF207
	.byte	0x2
	.byte	0xf2
	.byte	0x12
	.long	0xc9d
	.uleb128 0x9
	.byte	0x3
	.quad	number_of_occurs
	.uleb128 0x21
	.long	.LASF208
	.byte	0x2
	.byte	0xf8
	.byte	0xd
	.long	0x286
	.uleb128 0x9
	.byte	0x3
	.quad	edited_flag
	.uleb128 0x21
	.long	.LASF209
	.byte	0x2
	.byte	0xfb
	.byte	0x12
	.long	0x1e6
	.uleb128 0x9
	.byte	0x3
	.quad	half_line_width
	.uleb128 0x21
	.long	.LASF210
	.byte	0x2
	.byte	0xfe
	.byte	0x12
	.long	0x1e6
	.uleb128 0x9
	.byte	0x3
	.quad	before_max_width
	.uleb128 0x24
	.long	.LASF211
	.byte	0x2
	.value	0x101
	.byte	0x12
	.long	0x1e6
	.uleb128 0x9
	.byte	0x3
	.quad	keyafter_max_width
	.uleb128 0x24
	.long	.LASF212
	.byte	0x2
	.value	0x104
	.byte	0x12
	.long	0x1e6
	.uleb128 0x9
	.byte	0x3
	.quad	truncation_string_length
	.uleb128 0x24
	.long	.LASF213
	.byte	0x2
	.value	0x10c
	.byte	0xe
	.long	0xa30
	.uleb128 0x9
	.byte	0x3
	.quad	tail
	.uleb128 0x24
	.long	.LASF214
	.byte	0x2
	.value	0x10d
	.byte	0xd
	.long	0x89b
	.uleb128 0x9
	.byte	0x3
	.quad	tail_truncation
	.uleb128 0x24
	.long	.LASF215
	.byte	0x2
	.value	0x10f
	.byte	0xe
	.long	0xa30
	.uleb128 0x9
	.byte	0x3
	.quad	before
	.uleb128 0x24
	.long	.LASF216
	.byte	0x2
	.value	0x110
	.byte	0xd
	.long	0x89b
	.uleb128 0x9
	.byte	0x3
	.quad	before_truncation
	.uleb128 0x24
	.long	.LASF217
	.byte	0x2
	.value	0x112
	.byte	0xe
	.long	0xa30
	.uleb128 0x9
	.byte	0x3
	.quad	keyafter
	.uleb128 0x24
	.long	.LASF218
	.byte	0x2
	.value	0x113
	.byte	0xd
	.long	0x89b
	.uleb128 0x9
	.byte	0x3
	.quad	keyafter_truncation
	.uleb128 0x24
	.long	.LASF219
	.byte	0x2
	.value	0x115
	.byte	0xe
	.long	0xa30
	.uleb128 0x9
	.byte	0x3
	.quad	head
	.uleb128 0x24
	.long	.LASF220
	.byte	0x2
	.value	0x116
	.byte	0xd
	.long	0x89b
	.uleb128 0x9
	.byte	0x3
	.quad	head_truncation
	.uleb128 0x24
	.long	.LASF202
	.byte	0x2
	.value	0x118
	.byte	0xe
	.long	0xa30
	.uleb128 0x9
	.byte	0x3
	.quad	reference
	.uleb128 0xe
	.long	0xbd
	.long	0xe12
	.uleb128 0xf
	.long	0xe8
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	0xe02
	.uleb128 0x24
	.long	.LASF221
	.byte	0x2
	.value	0x74a
	.byte	0x1c
	.long	0xe12
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0xe
	.long	0xc8
	.long	0xe3e
	.uleb128 0xf
	.long	0xe8
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	0xe2e
	.uleb128 0x24
	.long	.LASF222
	.byte	0x2
	.value	0x761
	.byte	0x1a
	.long	0xe3e
	.uleb128 0x9
	.byte	0x3
	.quad	format_args
	.uleb128 0xe
	.long	0x880
	.long	0xe6a
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0xe5a
	.uleb128 0x24
	.long	.LASF223
	.byte	0x2
	.value	0x766
	.byte	0x1a
	.long	0xe6a
	.uleb128 0x9
	.byte	0x3
	.quad	format_vals
	.uleb128 0x25
	.long	.LASF228
	.byte	0x2
	.value	0x76c
	.byte	0x1
	.long	0x57
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0xf8d
	.uleb128 0x26
	.long	.LASF224
	.byte	0x2
	.value	0x76c
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF225
	.byte	0x2
	.value	0x76c
	.byte	0x18
	.long	0x23c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF226
	.byte	0x2
	.value	0x76e
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF203
	.byte	0x2
	.value	0x76f
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0xf22
	.uleb128 0x28
	.string	"tmp"
	.byte	0x2
	.value	0x796
	.byte	0x16
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.byte	0
	.uleb128 0x27
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0xf59
	.uleb128 0x28
	.string	"tmp"
	.byte	0x2
	.value	0x7b1
	.byte	0x16
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2a
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x24
	.long	.LASF227
	.byte	0x2
	.value	0x851
	.byte	0xe
	.long	0xbee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF229
	.byte	0x2
	.value	0x710
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0xfbd
	.uleb128 0x26
	.long	.LASF230
	.byte	0x2
	.value	0x710
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2c
	.long	.LASF233
	.byte	0x2
	.value	0x6d3
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0xffd
	.uleb128 0x24
	.long	.LASF231
	.byte	0x2
	.value	0x6d5
	.byte	0xd
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF232
	.byte	0x2
	.value	0x6d6
	.byte	0xb
	.long	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF238
	.byte	0x2
	.value	0x66f
	.byte	0x1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF234
	.byte	0x2
	.value	0x649
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x108a
	.uleb128 0x28
	.string	"key"
	.byte	0x2
	.value	0x64b
	.byte	0x9
	.long	0xa30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF235
	.byte	0x2
	.value	0x64c
	.byte	0x9
	.long	0xa30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF236
	.byte	0x2
	.value	0x64d
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x24
	.long	.LASF237
	.byte	0x2
	.value	0x658
	.byte	0x3
	.long	0x797
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF239
	.byte	0x2
	.value	0x616
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF240
	.byte	0x2
	.value	0x545
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1262
	.uleb128 0x26
	.long	.LASF241
	.byte	0x2
	.value	0x545
	.byte	0x1c
	.long	0xc5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.long	.LASF242
	.byte	0x2
	.value	0x547
	.byte	0xd
	.long	0x1e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF243
	.byte	0x2
	.value	0x548
	.byte	0xd
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF236
	.byte	0x2
	.value	0x549
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.long	.LASF244
	.byte	0x2
	.value	0x54a
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.long	.LASF245
	.byte	0x2
	.value	0x54b
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF246
	.byte	0x2
	.value	0x54c
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x24
	.long	.LASF247
	.byte	0x2
	.value	0x54d
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.long	.LASF248
	.byte	0x2
	.value	0x54e
	.byte	0xc
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.long	.LASF249
	.byte	0x2
	.value	0x54f
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF250
	.byte	0x2
	.value	0x550
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x11a5
	.uleb128 0x24
	.long	.LASF237
	.byte	0x2
	.value	0x565
	.byte	0x7
	.long	0x797
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x11cc
	.uleb128 0x24
	.long	.LASF237
	.byte	0x2
	.value	0x57e
	.byte	0x7
	.long	0x797
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x11f2
	.uleb128 0x24
	.long	.LASF237
	.byte	0x2
	.value	0x58e
	.byte	0x5
	.long	0x797
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1219
	.uleb128 0x24
	.long	.LASF237
	.byte	0x2
	.value	0x5b0
	.byte	0xb
	.long	0x797
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x123f
	.uleb128 0x24
	.long	.LASF237
	.byte	0x2
	.value	0x5da
	.byte	0x9
	.long	0x797
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2a
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x24
	.long	.LASF251
	.byte	0x2
	.value	0x600
	.byte	0xd
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF252
	.byte	0x2
	.value	0x4ab
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x12f7
	.uleb128 0x24
	.long	.LASF203
	.byte	0x2
	.value	0x4ad
	.byte	0xa
	.long	0x15a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF248
	.byte	0x2
	.value	0x4ae
	.byte	0xc
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF253
	.byte	0x2
	.value	0x4af
	.byte	0xd
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF254
	.byte	0x2
	.value	0x4b0
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.long	.LASF236
	.byte	0x2
	.value	0x4b1
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x24
	.long	.LASF255
	.byte	0x2
	.value	0x4bf
	.byte	0x10
	.long	0x12f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x3f
	.long	0x1307
	.uleb128 0xf
	.long	0xe8
	.byte	0x14
	.byte	0
	.uleb128 0x2c
	.long	.LASF256
	.byte	0x2
	.value	0x409
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1389
	.uleb128 0x26
	.long	.LASF257
	.byte	0x2
	.value	0x409
	.byte	0x14
	.long	0xa30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF236
	.byte	0x2
	.value	0x40b
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF258
	.byte	0x2
	.value	0x40c
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF259
	.byte	0x2
	.value	0x40d
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x24
	.long	.LASF254
	.byte	0x2
	.value	0x414
	.byte	0x15
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF260
	.byte	0x2
	.value	0x3fe
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x13db
	.uleb128 0x26
	.long	.LASF261
	.byte	0x2
	.value	0x3fe
	.byte	0x19
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x24
	.long	.LASF262
	.byte	0x2
	.value	0x400
	.byte	0x12
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF263
	.byte	0x2
	.value	0x2ea
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1502
	.uleb128 0x26
	.long	.LASF203
	.byte	0x2
	.value	0x2ea
	.byte	0x1a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x24
	.long	.LASF236
	.byte	0x2
	.value	0x2ec
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.long	.LASF264
	.byte	0x2
	.value	0x2ed
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.long	.LASF265
	.byte	0x2
	.value	0x2ee
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x24
	.long	.LASF266
	.byte	0x2
	.value	0x2ef
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.long	.LASF267
	.byte	0x2
	.value	0x2f0
	.byte	0xd
	.long	0x1e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.long	.LASF268
	.byte	0x2
	.value	0x2f1
	.byte	0x8
	.long	0xa65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF232
	.byte	0x2
	.value	0x2f2
	.byte	0xb
	.long	0xc5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF269
	.byte	0x2
	.value	0x2f4
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.long	.LASF270
	.byte	0x2
	.value	0x2f5
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF271
	.byte	0x2
	.value	0x2f6
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF272
	.byte	0x2
	.value	0x2f7
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF273
	.byte	0x2
	.value	0x2f8
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF227
	.byte	0x2
	.value	0x2fa
	.byte	0x10
	.long	0x1502
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x28
	.string	"r"
	.byte	0x2
	.value	0x352
	.byte	0x18
	.long	0x797
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa3c
	.uleb128 0x2c
	.long	.LASF274
	.byte	0x2
	.value	0x2b4
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x157a
	.uleb128 0x26
	.long	.LASF247
	.byte	0x2
	.value	0x2b4
	.byte	0x1f
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF275
	.byte	0x2
	.value	0x2b4
	.byte	0x36
	.long	0x157a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF276
	.byte	0x2
	.value	0x2b6
	.byte	0x9
	.long	0xa30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF236
	.byte	0x2
	.value	0x2b7
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF271
	.byte	0x2
	.value	0x2b8
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xaa8
	.uleb128 0x2c
	.long	.LASF277
	.byte	0x2
	.value	0x28c
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d1
	.uleb128 0x26
	.long	.LASF247
	.byte	0x2
	.value	0x28c
	.byte	0x20
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF276
	.byte	0x2
	.value	0x28e
	.byte	0x9
	.long	0xa30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF236
	.byte	0x2
	.value	0x28f
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2d
	.long	.LASF278
	.byte	0x2
	.value	0x27a
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF284
	.byte	0x2
	.value	0x25c
	.byte	0x1
	.long	0x89b
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1670
	.uleb128 0x26
	.long	.LASF279
	.byte	0x2
	.value	0x25c
	.byte	0x15
	.long	0xaa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF275
	.byte	0x2
	.value	0x25c
	.byte	0x27
	.long	0x157a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF280
	.byte	0x2
	.value	0x25e
	.byte	0xd
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF281
	.byte	0x2
	.value	0x25f
	.byte	0xd
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF282
	.byte	0x2
	.value	0x260
	.byte	0xd
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF283
	.byte	0x2
	.value	0x261
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x30
	.long	.LASF285
	.byte	0x2
	.value	0x24b
	.byte	0x1
	.long	0x57
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x16c4
	.uleb128 0x26
	.long	.LASF286
	.byte	0x2
	.value	0x24b
	.byte	0x1d
	.long	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF287
	.byte	0x2
	.value	0x24b
	.byte	0x35
	.long	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF283
	.byte	0x2
	.value	0x24f
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF288
	.byte	0x2
	.value	0x220
	.byte	0x1
	.long	0x57
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x1739
	.uleb128 0x26
	.long	.LASF286
	.byte	0x2
	.value	0x220
	.byte	0x1c
	.long	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF287
	.byte	0x2
	.value	0x220
	.byte	0x34
	.long	0x267
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.value	0x224
	.byte	0xd
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF262
	.byte	0x2
	.value	0x225
	.byte	0xd
	.long	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF283
	.byte	0x2
	.value	0x226
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2c
	.long	.LASF289
	.byte	0x2
	.value	0x202
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x17ac
	.uleb128 0x26
	.long	.LASF247
	.byte	0x2
	.value	0x202
	.byte	0x25
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF290
	.byte	0x2
	.value	0x202
	.byte	0x37
	.long	0xbee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF291
	.byte	0x2
	.value	0x204
	.byte	0xa
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF292
	.byte	0x2
	.value	0x209
	.byte	0x8
	.long	0x89b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.uleb128 0x2c
	.long	.LASF293
	.byte	0x2
	.value	0x1b7
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x17dc
	.uleb128 0x24
	.long	.LASF254
	.byte	0x2
	.value	0x1b9
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF294
	.byte	0x2
	.value	0x19b
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x184e
	.uleb128 0x26
	.long	.LASF295
	.byte	0x2
	.value	0x19b
	.byte	0x23
	.long	0x184e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF178
	.byte	0x2
	.value	0x19d
	.byte	0x1d
	.long	0x1854
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF177
	.byte	0x2
	.value	0x19e
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF296
	.byte	0x2
	.value	0x19f
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x9aa
	.uleb128 0x3
	.byte	0x8
	.long	0x69e
	.uleb128 0x30
	.long	.LASF297
	.byte	0x2
	.value	0x12b
	.byte	0x1
	.long	0x39
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x18cf
	.uleb128 0x26
	.long	.LASF177
	.byte	0x2
	.value	0x12b
	.byte	0x24
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF298
	.byte	0x2
	.value	0x12d
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF236
	.byte	0x2
	.value	0x12e
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF283
	.byte	0x2
	.value	0x12f
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.value	0x130
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x31
	.long	.LASF312
	.byte	0x2
	.value	0x11f
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF299
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x198f
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1c
	.long	.LASF301
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1945
	.uleb128 0x1d
	.long	.LASF300
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x1d
	.long	.LASF302
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x191a
	.uleb128 0x24
	.long	.LASF301
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x199f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.long	.LASF302
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x24
	.long	.LASF303
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x19a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF304
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0x1945
	.long	0x199f
	.uleb128 0xf
	.long	0xe8
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x198f
	.uleb128 0x3
	.byte	0x8
	.long	0x1945
	.uleb128 0x2d
	.long	.LASF305
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF306
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF307
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0xd3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0
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
	.uleb128 0xb
	.byte	0
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x33
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
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF171:
	.string	"output_format"
.LASF22:
	.string	"size_t"
.LASF220:
	.string	"head_truncation"
.LASF143:
	.string	"start"
.LASF100:
	.string	"GETOPT_HELP_CHAR"
.LASF53:
	.string	"_ISgraph"
.LASF127:
	.string	"used"
.LASF213:
	.string	"tail"
.LASF19:
	.string	"__ssize_t"
.LASF91:
	.string	"_IO_codecvt"
.LASF189:
	.string	"word_regs"
.LASF256:
	.string	"print_field"
.LASF130:
	.string	"translate"
.LASF71:
	.string	"_IO_save_end"
.LASF120:
	.string	"__re_size_t"
.LASF308:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF121:
	.string	"__re_long_size_t"
.LASF35:
	.string	"_sys_siglist"
.LASF21:
	.string	"time_t"
.LASF64:
	.string	"_IO_write_base"
.LASF234:
	.string	"output_one_tex_line"
.LASF215:
	.string	"before"
.LASF119:
	.string	"error_one_per_line"
.LASF80:
	.string	"_lock"
.LASF133:
	.string	"regs_allocated"
.LASF294:
	.string	"compile_regex"
.LASF226:
	.string	"optchar"
.LASF154:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF290:
	.string	"block"
.LASF186:
	.string	"WORD_TABLE"
.LASF69:
	.string	"_IO_save_base"
.LASF266:
	.string	"line_scan"
.LASF147:
	.string	"argmatch_die"
.LASF174:
	.string	"only_file"
.LASF191:
	.string	"maximum_word_length"
.LASF192:
	.string	"reference_max_width"
.LASF73:
	.string	"_chain"
.LASF20:
	.string	"ssize_t"
.LASF240:
	.string	"define_all_fields"
.LASF148:
	.string	"diacrit_base"
.LASF77:
	.string	"_cur_column"
.LASF96:
	.string	"sys_nerr"
.LASF159:
	.string	"DUMB_FORMAT"
.LASF298:
	.string	"result"
.LASF271:
	.string	"word_start"
.LASF158:
	.string	"UNKNOWN_FORMAT"
.LASF98:
	.string	"_sys_nerr"
.LASF149:
	.string	"diacrit_diac"
.LASF37:
	.string	"__environ"
.LASF14:
	.string	"long int"
.LASF194:
	.string	"only_table"
.LASF197:
	.string	"input_file_name"
.LASF6:
	.string	"has_arg"
.LASF246:
	.string	"left_field_start"
.LASF90:
	.string	"_IO_marker"
.LASF131:
	.string	"re_nsub"
.LASF52:
	.string	"_ISprint"
.LASF219:
	.string	"head"
.LASF166:
	.string	"right_reference"
.LASF175:
	.string	"ignore_file"
.LASF12:
	.string	"signed char"
.LASF306:
	.string	"emit_stdin_note"
.LASF59:
	.string	"_IO_FILE"
.LASF123:
	.string	"rpl_re_syntax_options"
.LASF28:
	.string	"__timezone"
.LASF92:
	.string	"_IO_wide_data"
.LASF212:
	.string	"truncation_string_length"
.LASF115:
	.string	"quoting_style_args"
.LASF38:
	.string	"environ"
.LASF8:
	.string	"unsigned char"
.LASF210:
	.string	"before_max_width"
.LASF84:
	.string	"_freeres_list"
.LASF208:
	.string	"edited_flag"
.LASF262:
	.string	"counter"
.LASF151:
	.string	"strtol_error"
.LASF299:
	.string	"emit_ancillary_info"
.LASF118:
	.string	"error_message_count"
.LASF207:
	.string	"number_of_occurs"
.LASF137:
	.string	"not_eol"
.LASF26:
	.string	"__tzname"
.LASF162:
	.string	"_Bool"
.LASF275:
	.string	"table"
.LASF283:
	.string	"value"
.LASF214:
	.string	"tail_truncation"
.LASF250:
	.string	"buffer_end"
.LASF280:
	.string	"lowest"
.LASF2:
	.string	"char"
.LASF286:
	.string	"void_first"
.LASF231:
	.string	"occurs_index"
.LASF311:
	.string	"_IO_lock_t"
.LASF232:
	.string	"occurs_cursor"
.LASF265:
	.string	"line_start"
.LASF31:
	.string	"timezone"
.LASF108:
	.string	"shell_escape_always_quoting_style"
.LASF172:
	.string	"ignore_case"
.LASF122:
	.string	"reg_syntax_t"
.LASF61:
	.string	"_IO_read_ptr"
.LASF238:
	.string	"output_one_dumb_line"
.LASF33:
	.string	"ptrdiff_t"
.LASF93:
	.string	"stdin"
.LASF268:
	.string	"possible_key"
.LASF97:
	.string	"sys_errlist"
.LASF139:
	.string	"re_dfa_t"
.LASF72:
	.string	"_markers"
.LASF103:
	.string	"program_name"
.LASF242:
	.string	"tail_max_width"
.LASF56:
	.string	"_ISpunct"
.LASF227:
	.string	"text_buffer"
.LASF110:
	.string	"c_maybe_quoting_style"
.LASF170:
	.string	"macro_name"
.LASF125:
	.string	"buffer"
.LASF190:
	.string	"word_fastmap"
.LASF155:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF252:
	.string	"fix_output_parameters"
.LASF244:
	.string	"left_context_start"
.LASF200:
	.string	"left"
.LASF295:
	.string	"regex"
.LASF39:
	.string	"program_invocation_name"
.LASF124:
	.string	"re_pattern_buffer"
.LASF81:
	.string	"_offset"
.LASF241:
	.string	"occurs"
.LASF221:
	.string	"long_options"
.LASF198:
	.string	"file_line_count"
.LASF153:
	.string	"LONGINT_OVERFLOW"
.LASF1:
	.string	"optind"
.LASF302:
	.string	"node"
.LASF276:
	.string	"file_contents"
.LASF113:
	.string	"clocale_quoting_style"
.LASF117:
	.string	"error_print_progname"
.LASF11:
	.string	"long unsigned int"
.LASF202:
	.string	"reference"
.LASF230:
	.string	"status"
.LASF75:
	.string	"_flags2"
.LASF243:
	.string	"head_max_width"
.LASF312:
	.string	"matcher_error"
.LASF63:
	.string	"_IO_read_base"
.LASF58:
	.string	"option"
.LASF165:
	.string	"input_reference"
.LASF88:
	.string	"_unused2"
.LASF126:
	.string	"allocated"
.LASF206:
	.string	"occurs_alloc"
.LASF269:
	.string	"context_start"
.LASF50:
	.string	"_ISxdigit"
.LASF224:
	.string	"argc"
.LASF76:
	.string	"_old_offset"
.LASF301:
	.string	"infomap"
.LASF193:
	.string	"ignore_table"
.LASF225:
	.string	"argv"
.LASF251:
	.string	"file_end"
.LASF284:
	.string	"search_table"
.LASF157:
	.string	"Format"
.LASF105:
	.string	"shell_quoting_style"
.LASF211:
	.string	"keyafter_max_width"
.LASF179:
	.string	"context_regex"
.LASF259:
	.string	"diacritic"
.LASF180:
	.string	"word_regex"
.LASF201:
	.string	"right"
.LASF25:
	.string	"long long int"
.LASF309:
	.string	"src/ptx.c"
.LASF300:
	.string	"program"
.LASF41:
	.string	"Version"
.LASF42:
	.string	"exit_failure"
.LASF23:
	.string	"_gl_cxxalias_dummy"
.LASF163:
	.string	"gnu_extensions"
.LASF46:
	.string	"_ISupper"
.LASF287:
	.string	"void_second"
.LASF109:
	.string	"c_quoting_style"
.LASF55:
	.string	"_IScntrl"
.LASF66:
	.string	"_IO_write_end"
.LASF156:
	.string	"LONGINT_INVALID"
.LASF129:
	.string	"fastmap"
.LASF140:
	.string	"regoff_t"
.LASF160:
	.string	"ROFF_FORMAT"
.LASF36:
	.string	"sys_siglist"
.LASF216:
	.string	"before_truncation"
.LASF237:
	.string	"count"
.LASF263:
	.string	"find_occurs_in_text"
.LASF270:
	.string	"context_end"
.LASF184:
	.string	"alloc"
.LASF15:
	.string	"__intmax_t"
.LASF101:
	.string	"GETOPT_VERSION_CHAR"
.LASF67:
	.string	"_IO_buf_base"
.LASF177:
	.string	"string"
.LASF10:
	.string	"unsigned int"
.LASF128:
	.string	"syntax"
.LASF102:
	.string	"version_etc_copyright"
.LASF116:
	.string	"quoting_style_vals"
.LASF104:
	.string	"literal_quoting_style"
.LASF135:
	.string	"no_sub"
.LASF248:
	.string	"line_ordinal"
.LASF29:
	.string	"tzname"
.LASF86:
	.string	"__pad5"
.LASF7:
	.string	"flag"
.LASF233:
	.string	"generate_all_output"
.LASF278:
	.string	"sort_found_occurs"
.LASF132:
	.string	"can_be_null"
.LASF253:
	.string	"reference_width"
.LASF222:
	.string	"format_args"
.LASF144:
	.string	"quoting_options"
.LASF60:
	.string	"_flags"
.LASF176:
	.string	"regex_data"
.LASF304:
	.string	"lc_messages"
.LASF145:
	.string	"quote_quoting_options"
.LASF87:
	.string	"_mode"
.LASF277:
	.string	"digest_break_file"
.LASF82:
	.string	"_codecvt"
.LASF45:
	.string	"LOG10_TIMESPEC_HZ"
.LASF196:
	.string	"total_line_count"
.LASF141:
	.string	"re_registers"
.LASF169:
	.string	"truncation_string"
.LASF195:
	.string	"number_input_files"
.LASF43:
	.string	"intmax_t"
.LASF34:
	.string	"long double"
.LASF217:
	.string	"keyafter"
.LASF136:
	.string	"not_bol"
.LASF218:
	.string	"keyafter_truncation"
.LASF183:
	.string	"WORD"
.LASF279:
	.string	"word"
.LASF89:
	.string	"FILE"
.LASF264:
	.string	"scan"
.LASF152:
	.string	"LONGINT_OK"
.LASF48:
	.string	"_ISalpha"
.LASF292:
	.string	"using_stdin"
.LASF4:
	.string	"optopt"
.LASF112:
	.string	"locale_quoting_style"
.LASF249:
	.string	"buffer_start"
.LASF182:
	.string	"size"
.LASF24:
	.string	"long long unsigned int"
.LASF185:
	.string	"length"
.LASF54:
	.string	"_ISblank"
.LASF16:
	.string	"__off_t"
.LASF199:
	.string	"text_buffers"
.LASF239:
	.string	"output_one_roff_line"
.LASF150:
	.string	"quoting_style"
.LASF57:
	.string	"_ISalnum"
.LASF40:
	.string	"program_invocation_short_name"
.LASF305:
	.string	"emit_mandatory_arg_note"
.LASF85:
	.string	"_freeres_buf"
.LASF204:
	.string	"OCCURS"
.LASF51:
	.string	"_ISspace"
.LASF229:
	.string	"usage"
.LASF142:
	.string	"num_regs"
.LASF3:
	.string	"opterr"
.LASF272:
	.string	"word_end"
.LASF310:
	.string	"/root/coreutils"
.LASF18:
	.string	"__time_t"
.LASF134:
	.string	"fastmap_accurate"
.LASF138:
	.string	"newline_anchor"
.LASF70:
	.string	"_IO_backup_base"
.LASF260:
	.string	"print_spaces"
.LASF79:
	.string	"_shortbuf"
.LASF257:
	.string	"field"
.LASF307:
	.string	"to_uchar"
.LASF297:
	.string	"copy_unescaped_string"
.LASF106:
	.string	"shell_always_quoting_style"
.LASF17:
	.string	"__off64_t"
.LASF261:
	.string	"number"
.LASF245:
	.string	"right_context_end"
.LASF282:
	.string	"middle"
.LASF167:
	.string	"line_width"
.LASF291:
	.string	"used_length"
.LASF111:
	.string	"escape_quoting_style"
.LASF68:
	.string	"_IO_buf_end"
.LASF161:
	.string	"TEX_FORMAT"
.LASF203:
	.string	"file_index"
.LASF5:
	.string	"name"
.LASF47:
	.string	"_ISlower"
.LASF303:
	.string	"map_prog"
.LASF247:
	.string	"file_name"
.LASF235:
	.string	"after"
.LASF95:
	.string	"stderr"
.LASF13:
	.string	"short int"
.LASF209:
	.string	"half_line_width"
.LASF178:
	.string	"pattern"
.LASF205:
	.string	"occurs_table"
.LASF107:
	.string	"shell_escape_quoting_style"
.LASF78:
	.string	"_vtable_offset"
.LASF99:
	.string	"_sys_errlist"
.LASF168:
	.string	"gap_size"
.LASF187:
	.string	"folded_chars"
.LASF44:
	.string	"TIMESPEC_HZ"
.LASF27:
	.string	"__daylight"
.LASF228:
	.string	"main"
.LASF289:
	.string	"swallow_file_in_memory"
.LASF62:
	.string	"_IO_read_end"
.LASF181:
	.string	"BLOCK"
.LASF32:
	.string	"getdate_err"
.LASF255:
	.string	"ordinal_string"
.LASF74:
	.string	"_fileno"
.LASF288:
	.string	"compare_words"
.LASF83:
	.string	"_wide_data"
.LASF0:
	.string	"optarg"
.LASF274:
	.string	"digest_word_file"
.LASF49:
	.string	"_ISdigit"
.LASF285:
	.string	"compare_occurs"
.LASF9:
	.string	"short unsigned int"
.LASF94:
	.string	"stdout"
.LASF258:
	.string	"base"
.LASF296:
	.string	"message"
.LASF273:
	.string	"next_context_start"
.LASF293:
	.string	"initialize_regex"
.LASF164:
	.string	"auto_reference"
.LASF65:
	.string	"_IO_write_ptr"
.LASF223:
	.string	"format_vals"
.LASF236:
	.string	"cursor"
.LASF188:
	.string	"context_regs"
.LASF173:
	.string	"break_file"
.LASF30:
	.string	"daylight"
.LASF254:
	.string	"character"
.LASF267:
	.string	"reference_length"
.LASF281:
	.string	"highest"
.LASF146:
	.string	"argmatch_exit_fn"
.LASF114:
	.string	"custom_quoting_style"
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
