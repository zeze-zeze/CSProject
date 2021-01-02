	.file	"paste.c"
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
	.type	bad_cast, @function
bad_cast:
.LFB42:
	.loc 1 699 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 700 10
	movq	-8(%rbp), %rax
	.loc 1 701 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	bad_cast, .-bad_cast
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.local	serial_merge
	.comm	serial_merge,1,1
	.local	delims
	.comm	delims,8,8
	.local	delim_end
	.comm	delim_end,8,8
	.data
	.type	line_delim, @object
	.size	line_delim, 1
line_delim:
	.byte	10
	.section	.rodata
.LC20:
	.string	"serial"
.LC21:
	.string	"delimiters"
.LC22:
	.string	"zero-terminated"
.LC23:
	.string	"help"
.LC24:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 192
longopts:
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	122
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
	.text
	.type	collapse_escapes, @function
collapse_escapes:
.LFB46:
	.file 2 "src/paste.c"
	.loc 2 93 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 94 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -8(%rbp)
	.loc 2 95 8
	movb	$0, -9(%rbp)
	.loc 2 97 10
	movq	-8(%rbp), %rax
	movq	%rax, delims(%rip)
	.loc 2 99 9
	jmp	.L15
.L31:
	.loc 2 101 11
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 101 10
	cmpb	$92, %al
	je	.L16
	.loc 2 102 28
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	.loc 2 102 16
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	.loc 2 102 21
	movzbl	(%rdx), %edx
	.loc 2 102 19
	movb	%dl, (%rax)
	jmp	.L15
.L16:
	.loc 2 105 11
	addq	$1, -24(%rbp)
	.loc 2 105 19
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 105 11
	cmpl	$118, %eax
	jg	.L17
	cmpl	$92, %eax
	jge	.L18
	testl	%eax, %eax
	je	.L19
	cmpl	$48, %eax
	je	.L20
	jmp	.L17
.L18:
	subl	$92, %eax
	cmpl	$26, %eax
	ja	.L17
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L22(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L22(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L22:
	.long	.L28-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L27-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L26-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L25-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L17-.L22
	.long	.L24-.L22
	.long	.L17-.L22
	.long	.L23-.L22
	.long	.L17-.L22
	.long	.L21-.L22
	.text
.L20:
	.loc 2 108 22
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 108 25
	movb	$0, (%rax)
	.loc 2 109 15
	jmp	.L29
.L27:
	.loc 2 112 22
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 112 25
	movb	$8, (%rax)
	.loc 2 113 15
	jmp	.L29
.L26:
	.loc 2 116 22
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 116 25
	movb	$12, (%rax)
	.loc 2 117 15
	jmp	.L29
.L25:
	.loc 2 120 22
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 120 25
	movb	$10, (%rax)
	.loc 2 121 15
	jmp	.L29
.L24:
	.loc 2 124 22
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 124 25
	movb	$13, (%rax)
	.loc 2 125 15
	jmp	.L29
.L23:
	.loc 2 128 22
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 128 25
	movb	$9, (%rax)
	.loc 2 129 15
	jmp	.L29
.L21:
	.loc 2 132 22
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 132 25
	movb	$11, (%rax)
	.loc 2 133 15
	jmp	.L29
.L28:
	.loc 2 136 22
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 136 25
	movb	$92, (%rax)
	.loc 2 137 15
	jmp	.L29
.L19:
	.loc 2 140 32
	movb	$1, -9(%rbp)
	.loc 2 141 15
	jmp	.L30
.L17:
	.loc 2 144 22
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 144 27
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	.loc 2 144 25
	movb	%dl, (%rax)
	.loc 2 145 15
	nop
.L29:
	.loc 2 147 17
	addq	$1, -24(%rbp)
.L15:
	.loc 2 99 10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 99 9
	testb	%al, %al
	jne	.L31
	.loc 2 151 2
	nop
.L30:
	.loc 2 153 13
	movq	-8(%rbp), %rax
	movq	%rax, delim_end(%rip)
	.loc 2 154 31
	movzbl	-9(%rbp), %eax
	movzbl	%al, %eax
	.loc 2 155 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	collapse_escapes, .-collapse_escapes
	.section	.rodata
.LC25:
	.string	"write error"
	.text
	.type	write_error, @function
write_error:
.LFB47:
	.loc 2 162 1
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
	.loc 2 163 3
	leaq	.LC25(%rip), %rdi
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
.LFE47:
	.size	write_error, .-write_error
	.type	xputchar, @function
xputchar:
.LFB48:
	.loc 2 170 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 171 7
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 171 6
	testl	%eax, %eax
	jns	.L36
	.loc 2 172 5
	call	write_error
.L36:
	.loc 2 173 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	xputchar, .-xputchar
	.section	.rodata
.LC26:
	.string	"-"
.LC27:
	.string	"r"
.LC28:
	.string	"%s"
.LC29:
	.string	"standard input is closed"
	.text
	.type	paste_parallel, @function
paste_parallel:
.LFB49:
	.loc 2 181 1
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
	movq	%rsi, -96(%rbp)
	.loc 2 182 8
	movb	$1, -77(%rbp)
	.loc 2 187 18
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -32(%rbp)
	.loc 2 191 20
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 197 8
	movb	$0, -76(%rbp)
	.loc 2 203 19
	movq	$0, -64(%rbp)
	.loc 2 203 3
	jmp	.L38
.L43:
	.loc 2 205 11
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 205 10
	testl	%eax, %eax
	jne	.L39
	.loc 2 207 27
	movb	$1, have_read_stdin(%rip)
	.loc 2 208 18
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 208 31
	movq	stdin(%rip), %rax
	movq	%rax, (%rdx)
	jmp	.L40
.L39:
	.loc 2 212 47
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 212 33
	movq	(%rax), %rax
	.loc 2 212 18
	movq	-64(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	.loc 2 212 33
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	.loc 2 212 31
	movq	%rax, (%rbx)
	.loc 2 213 22
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 213 14
	testq	%rax, %rax
	jne	.L41
.LBB2:
	.loc 2 214 13
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
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
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L41:
.LBE2:
	.loc 2 215 35
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 215 20
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	.loc 2 215 19
	testl	%eax, %eax
	jne	.L42
	.loc 2 216 26
	movb	$1, -76(%rbp)
.L42:
	.loc 2 217 27
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 217 11
	movq	(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
.L40:
	.loc 2 203 45 discriminator 2
	addq	$1, -64(%rbp)
.L38:
	.loc 2 203 3 discriminator 1
	movq	-64(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L43
	.loc 2 221 6
	cmpb	$0, -76(%rbp)
	je	.L45
	.loc 2 221 20 discriminator 1
	movzbl	have_read_stdin(%rip), %eax
	testb	%al, %al
	je	.L45
.LBB3:
	.loc 2 222 5
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L70:
.LBE3:
.LBB4:
	.loc 2 231 12
	movb	$0, -75(%rbp)
	.loc 2 232 19
	movq	delims(%rip), %rax
	movq	%rax, -56(%rbp)
	.loc 2 233 14
	movq	$0, -48(%rbp)
.LBB5:
	.loc 2 235 19
	movq	$0, -40(%rbp)
	.loc 2 235 7
	jmp	.L46
.L69:
.LBB6:
	.loc 2 237 15
	movl	$0, -72(%rbp)
	.loc 2 238 15
	movl	$0, -68(%rbp)
	.loc 2 239 16
	movb	$0, -74(%rbp)
	.loc 2 241 22
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 241 14
	testq	%rax, %rax
	je	.L47
	.loc 2 243 21
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -72(%rbp)
	.loc 2 244 21
	call	__errno_location@PLT
	.loc 2 244 19
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	.loc 2 245 18
	cmpl	$-1, -72(%rbp)
	je	.L50
	.loc 2 245 30 discriminator 1
	cmpq	$0, -48(%rbp)
	je	.L50
	.loc 2 247 23
	movq	stdout(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 247 22
	cmpq	%rax, -48(%rbp)
	je	.L49
	.loc 2 248 21
	call	write_error
.L49:
	.loc 2 249 32
	movq	$0, -48(%rbp)
	.loc 2 252 21
	jmp	.L50
.L52:
	.loc 2 254 28
	movb	$1, -74(%rbp)
	.loc 2 255 27
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 255 22
	cmpl	%eax, -72(%rbp)
	je	.L72
	.loc 2 257 19
	movl	-72(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	xputchar
	.loc 2 258 25
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -72(%rbp)
	.loc 2 259 25
	call	__errno_location@PLT
	.loc 2 259 23
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
.L50:
	.loc 2 252 21
	cmpl	$-1, -72(%rbp)
	jne	.L52
	jmp	.L47
.L72:
	.loc 2 256 21
	nop
.L47:
	.loc 2 263 15
	movzbl	-74(%rbp), %eax
	xorl	$1, %eax
	.loc 2 263 14
	testb	%al, %al
	je	.L53
	.loc 2 267 26
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 267 18
	testq	%rax, %rax
	je	.L54
	.loc 2 269 23
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 269 22
	testl	%eax, %eax
	je	.L55
	.loc 2 271 44
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 271 23
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, %rcx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 272 26
	movb	$0, -77(%rbp)
.L55:
	.loc 2 274 30
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	.loc 2 274 34
	movq	stdin(%rip), %rax
	.loc 2 274 22
	cmpq	%rax, %rdx
	jne	.L56
	.loc 2 275 21
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	jmp	.L57
.L56:
	.loc 2 276 43
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 276 28
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 276 27
	cmpl	$-1, %eax
	jne	.L57
	.loc 2 278 46
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 278 23
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 278 33
	call	__errno_location@PLT
	.loc 2 278 23
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 279 26
	movb	$0, -77(%rbp)
.L57:
	.loc 2 282 26
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 282 30
	movq	$0, (%rax)
	.loc 2 283 29
	subq	$1, -64(%rbp)
.L54:
	.loc 2 286 21
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 2 286 18
	cmpq	%rax, -88(%rbp)
	jne	.L58
	.loc 2 290 22
	cmpb	$0, -75(%rbp)
	je	.L73
	.loc 2 293 26
	cmpq	$0, -48(%rbp)
	je	.L60
	.loc 2 295 31
	movq	stdout(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 295 30
	cmpq	%rax, -48(%rbp)
	je	.L61
	.loc 2 297 29
	call	write_error
.L61:
	.loc 2 298 40
	movq	$0, -48(%rbp)
.L60:
	.loc 2 300 23
	movzbl	line_delim(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	xputchar
	.loc 2 302 19
	jmp	.L73
.L58:
	.loc 2 307 23
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 307 22
	testb	%al, %al
	je	.L63
	.loc 2 308 40
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 308 27
	movq	-32(%rbp), %rdx
	addq	%rax, %rdx
	.loc 2 308 46
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 308 44
	movb	%al, (%rdx)
.L63:
	.loc 2 309 22
	addq	$1, -56(%rbp)
	.loc 2 309 34
	movq	delim_end(%rip), %rax
	.loc 2 309 22
	cmpq	%rax, -56(%rbp)
	jne	.L62
	.loc 2 310 30
	movq	delims(%rip), %rax
	movq	%rax, -56(%rbp)
	jmp	.L62
.L53:
	.loc 2 316 24
	movb	$1, -75(%rbp)
	.loc 2 319 21
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 2 319 18
	cmpq	%rax, -88(%rbp)
	je	.L64
	.loc 2 321 27
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 321 22
	cmpl	%eax, -72(%rbp)
	je	.L65
	.loc 2 321 41 discriminator 1
	cmpl	$-1, -72(%rbp)
	je	.L65
	.loc 2 322 21
	movl	-72(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	xputchar
.L65:
	.loc 2 323 23
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 323 22
	testb	%al, %al
	je	.L66
	.loc 2 324 31
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 324 21
	movsbl	%al, %eax
	movl	%eax, %edi
	call	xputchar
.L66:
	.loc 2 325 22
	addq	$1, -56(%rbp)
	.loc 2 325 34
	movq	delim_end(%rip), %rax
	.loc 2 325 22
	cmpq	%rax, -56(%rbp)
	jne	.L62
	.loc 2 326 30
	movq	delims(%rip), %rax
	movq	%rax, -56(%rbp)
	jmp	.L62
.L64:
.LBB7:
	.loc 2 332 24
	cmpl	$-1, -72(%rbp)
	je	.L67
	.loc 2 332 24 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax
	jmp	.L68
.L67:
	.loc 2 332 24 discriminator 2
	movzbl	line_delim(%rip), %eax
.L68:
	.loc 2 332 24 discriminator 4
	movb	%al, -73(%rbp)
	.loc 2 333 19 is_stmt 1 discriminator 4
	movsbl	-73(%rbp), %eax
	movl	%eax, %edi
	call	xputchar
	jmp	.L62
.L73:
.LBE7:
	.loc 2 302 19
	nop
.L62:
.LBE6:
	.loc 2 235 53 discriminator 2
	addq	$1, -40(%rbp)
.L46:
	.loc 2 235 7 discriminator 1
	movq	-40(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L45
	.loc 2 235 37 discriminator 3
	cmpq	$0, -64(%rbp)
	jne	.L69
.L45:
.LBE5:
.LBE4:
	.loc 2 228 9
	cmpq	$0, -64(%rbp)
	jne	.L70
	.loc 2 338 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 339 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 340 10
	movzbl	-77(%rbp), %eax
	.loc 2 341 1
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	paste_parallel, .-paste_parallel
	.type	paste_serial, @function
paste_serial:
.LFB50:
	.loc 2 349 1
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
	.loc 2 350 8
	movb	$1, -46(%rbp)
	.loc 2 355 3
	jmp	.L75
.L89:
.LBB8:
	.loc 2 358 23
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 358 12
	testl	%eax, %eax
	sete	%al
	movb	%al, -45(%rbp)
	.loc 2 359 10
	cmpb	$0, -45(%rbp)
	je	.L76
	.loc 2 361 27
	movb	$1, have_read_stdin(%rip)
	.loc 2 362 19
	movq	stdin(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L77
.L76:
	.loc 2 366 21
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	.loc 2 367 14
	cmpq	$0, -24(%rbp)
	jne	.L78
	.loc 2 369 15
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 369 25
	call	__errno_location@PLT
	.loc 2 369 15
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 370 18
	movb	$0, -46(%rbp)
	.loc 2 371 15
	jmp	.L79
.L78:
	.loc 2 373 11
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
.L77:
	.loc 2 376 16
	movq	delims(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 378 17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -44(%rbp)
	.loc 2 379 21
	call	__errno_location@PLT
	.loc 2 379 19
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 2 380 10
	cmpl	$-1, -44(%rbp)
	je	.L80
	.loc 2 388 17
	jmp	.L81
.L85:
	.loc 2 391 27
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 391 18
	cmpl	%eax, -44(%rbp)
	jne	.L82
	.loc 2 393 23
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 393 22
	testb	%al, %al
	je	.L83
	.loc 2 394 31
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 394 21
	movsbl	%al, %eax
	movl	%eax, %edi
	call	xputchar
.L83:
	.loc 2 396 22
	addq	$1, -32(%rbp)
	.loc 2 396 34
	movq	delim_end(%rip), %rax
	.loc 2 396 22
	cmpq	%rax, -32(%rbp)
	jne	.L84
	.loc 2 397 30
	movq	delims(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L84
.L82:
	.loc 2 400 17
	movl	-44(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	xputchar
.L84:
	.loc 2 402 23
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
.L81:
	.loc 2 388 29
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -36(%rbp)
	.loc 2 388 17
	cmpl	$-1, -36(%rbp)
	jne	.L85
	.loc 2 404 25
	call	__errno_location@PLT
	.loc 2 404 23
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 2 407 11
	movl	-44(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	xputchar
.L80:
	.loc 2 410 19
	movzbl	line_delim(%rip), %eax
	movzbl	%al, %eax
	.loc 2 410 10
	cmpl	%eax, -44(%rbp)
	je	.L86
	.loc 2 411 9
	movzbl	line_delim(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	xputchar
.L86:
	.loc 2 413 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 413 10
	testl	%eax, %eax
	je	.L87
	.loc 2 415 11
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rdx
	movl	-40(%rbp), %eax
	movq	%rdx, %rcx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 416 14
	movb	$0, -46(%rbp)
.L87:
	.loc 2 418 10
	cmpb	$0, -45(%rbp)
	je	.L88
	.loc 2 419 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	jmp	.L79
.L88:
	.loc 2 420 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 420 15
	cmpl	$-1, %eax
	jne	.L79
	.loc 2 422 11
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 422 21
	call	__errno_location@PLT
	.loc 2 422 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 423 14
	movb	$0, -46(%rbp)
.L79:
.LBE8:
	.loc 2 355 24
	subq	$1, -56(%rbp)
	.loc 2 355 35
	addq	$8, -64(%rbp)
.L75:
	.loc 2 355 3 discriminator 1
	cmpq	$0, -56(%rbp)
	jne	.L89
	.loc 2 426 10
	movzbl	-46(%rbp), %eax
	.loc 2 427 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	paste_serial, .-paste_serial
	.section	.rodata
	.align 8
.LC30:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC31:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC32:
	.string	"Write lines consisting of the sequentially corresponding lines from\neach FILE, separated by TABs, to standard output.\n"
	.align 8
.LC33:
	.string	"  -d, --delimiters=LIST   reuse characters from LIST instead of TABs\n  -s, --serial            paste one file at a time instead of in parallel\n"
	.align 8
.LC34:
	.string	"  -z, --zero-terminated    line delimiter is NUL, not newline\n"
	.align 8
.LC35:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC36:
	.string	"      --version  output version information and exit\n"
.LC37:
	.string	"paste"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB51:
	.loc 2 431 1
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
	.loc 2 432 6
	cmpl	$0, -20(%rbp)
	je	.L92
	.loc 2 433 5
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
	jmp	.L93
.L92:
	.loc 2 436 7
	movq	program_name(%rip), %rbx
	.loc 2 436 15
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 436 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 440 7
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 445 7
	call	emit_stdin_note
	.loc 2 446 7
	call	emit_mandatory_arg_note
	.loc 2 448 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 452 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 455 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 456 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 458 7
	leaq	.LC37(%rip), %rdi
	call	emit_ancillary_info
.L93:
	.loc 2 460 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE51:
	.size	usage, .-usage
	.section	.rodata
.LC38:
	.string	"\t"
.LC39:
	.string	"/usr/local/share/locale"
.LC40:
	.string	"\\0"
.LC41:
	.string	"David MacKenzie"
.LC42:
	.string	"David M. Ihnat"
.LC43:
	.string	"d:sz"
	.align 8
.LC44:
	.string	"delimiter list ends with an unescaped backslash: %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB52:
	.loc 2 465 1
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
	.loc 2 467 15
	leaq	.LC38(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 470 3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 471 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 472 3
	leaq	.LC39(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 473 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 475 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 477 19
	movb	$0, have_read_stdin(%rip)
	.loc 2 478 16
	movb	$0, serial_merge(%rip)
	.loc 2 480 9
	jmp	.L95
.L104:
	.loc 2 482 7
	cmpl	$122, -28(%rbp)
	je	.L96
	cmpl	$122, -28(%rbp)
	jg	.L97
	cmpl	$115, -28(%rbp)
	je	.L98
	cmpl	$115, -28(%rbp)
	jg	.L97
	cmpl	$100, -28(%rbp)
	je	.L99
	cmpl	$100, -28(%rbp)
	jg	.L97
	cmpl	$-131, -28(%rbp)
	je	.L100
	cmpl	$-130, -28(%rbp)
	je	.L101
	jmp	.L97
.L99:
	.loc 2 486 30
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 486 50
	testb	%al, %al
	je	.L102
	.loc 2 486 50 is_stmt 0 discriminator 1
	movq	optarg(%rip), %rax
	jmp	.L103
.L102:
	.loc 2 486 50 discriminator 2
	leaq	.LC40(%rip), %rax
.L103:
	.loc 2 486 21 is_stmt 1 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 2 487 11 discriminator 4
	jmp	.L95
.L98:
	.loc 2 490 24
	movb	$1, serial_merge(%rip)
	.loc 2 491 11
	jmp	.L95
.L96:
	.loc 2 494 22
	movb	$0, line_delim(%rip)
	.loc 2 495 11
	jmp	.L95
.L101:
	.loc 2 497 9
	movl	$0, %edi
	call	usage
.L100:
	.loc 2 499 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC41(%rip), %r9
	leaq	.LC42(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L97:
	.loc 2 502 11
	movl	$1, %edi
	call	usage
.L95:
	.loc 2 480 18
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -28(%rbp)
	.loc 2 480 9
	cmpl	$-1, -28(%rbp)
	jne	.L104
	.loc 2 506 21
	movl	optind(%rip), %eax
	.loc 2 506 7
	movl	-52(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -32(%rbp)
	.loc 2 507 6
	cmpl	$0, -32(%rbp)
	jne	.L105
	.loc 2 509 11
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 2 509 22
	leaq	.LC26(%rip), %rdi
	call	bad_cast
	.loc 2 509 20
	movq	%rax, (%rbx)
	.loc 2 510 13
	addl	$1, -32(%rbp)
.L105:
	.loc 2 513 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	collapse_escapes
	.loc 2 513 6
	testl	%eax, %eax
	je	.L106
.LBB9:
	.loc 2 517 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L106:
.LBE9:
	.loc 2 522 28
	movzbl	serial_merge(%rip), %eax
	.loc 2 522 43
	testb	%al, %al
	je	.L107
	.loc 2 522 43 is_stmt 0 discriminator 1
	leaq	paste_serial(%rip), %rax
	jmp	.L108
.L107:
	.loc 2 522 43 discriminator 2
	leaq	paste_parallel(%rip), %rax
.L108:
	.loc 2 523 28 is_stmt 1
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	.loc 2 522 43
	movq	-64(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.LVL0:
	movb	%al, -33(%rbp)
	.loc 2 525 3
	movq	delims(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 527 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 527 6
	testb	%al, %al
	je	.L109
	.loc 2 527 26 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 527 23 discriminator 1
	cmpl	$-1, %eax
	jne	.L109
.LBB10:
	.loc 2 528 5
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC26(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L109:
.LBE10:
	.loc 2 529 28
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 530 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	main, .-main
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
	.file 20 "./lib/version-etc.h"
	.file 21 "./lib/progname.h"
	.file 22 "./lib/quotearg.h"
	.file 23 "./lib/error.h"
	.file 24 "./lib/fadvise.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb73
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF153
	.byte	0xc
	.long	.LASF154
	.long	.LASF155
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
	.long	.LASF156
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
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x4ec
	.uleb128 0x18
	.long	.LASF83
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF84
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xa9
	.long	0x4f7
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x4ec
	.uleb128 0xf
	.long	.LASF85
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x4f7
	.uleb128 0xf
	.long	.LASF86
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x296
	.uleb128 0x19
	.long	.LASF157
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x569
	.uleb128 0x16
	.long	.LASF87
	.byte	0
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.uleb128 0x16
	.long	.LASF89
	.byte	0x2
	.uleb128 0x16
	.long	.LASF90
	.byte	0x3
	.uleb128 0x16
	.long	.LASF91
	.byte	0x4
	.uleb128 0x16
	.long	.LASF92
	.byte	0x5
	.uleb128 0x16
	.long	.LASF93
	.byte	0x6
	.uleb128 0x16
	.long	.LASF94
	.byte	0x7
	.uleb128 0x16
	.long	.LASF95
	.byte	0x8
	.uleb128 0x16
	.long	.LASF96
	.byte	0x9
	.uleb128 0x16
	.long	.LASF97
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x514
	.uleb128 0x11
	.long	.LASF98
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x2e2
	.uleb128 0xd
	.long	0x569
	.long	0x586
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x57b
	.uleb128 0x11
	.long	.LASF99
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x586
	.uleb128 0xf
	.long	.LASF100
	.byte	0x17
	.byte	0x32
	.byte	0xf
	.long	0x41c
	.uleb128 0xf
	.long	.LASF101
	.byte	0x17
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF102
	.byte	0x17
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x2d
	.byte	0xe
	.long	0x5ef
	.uleb128 0x16
	.long	.LASF103
	.byte	0
	.uleb128 0x16
	.long	.LASF104
	.byte	0x2
	.uleb128 0x16
	.long	.LASF105
	.byte	0x5
	.uleb128 0x16
	.long	.LASF106
	.byte	0x4
	.uleb128 0x16
	.long	.LASF107
	.byte	0x3
	.uleb128 0x16
	.long	.LASF108
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x2
	.byte	0x3b
	.byte	0xd
	.long	0x605
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF109
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x2
	.byte	0x3f
	.byte	0xd
	.long	0x605
	.uleb128 0x9
	.byte	0x3
	.quad	serial_merge
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x2
	.byte	0x42
	.byte	0xe
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	delims
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x2
	.byte	0x45
	.byte	0x14
	.long	0x296
	.uleb128 0x9
	.byte	0x3
	.quad	delim_end
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x2
	.byte	0x47
	.byte	0x16
	.long	0x49
	.uleb128 0x9
	.byte	0x3
	.quad	line_delim
	.uleb128 0xd
	.long	0x3ab
	.long	0x674
	.uleb128 0xe
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x664
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x2
	.byte	0x49
	.byte	0x1c
	.long	0x674
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x2
	.value	0x1d0
	.byte	0x1
	.long	0x65
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x736
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x2
	.value	0x1d0
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x2
	.value	0x1d0
	.byte	0x18
	.long	0x45e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF118
	.byte	0x2
	.value	0x1d2
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.long	.LASF119
	.byte	0x2
	.value	0x1d3
	.byte	0xf
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x2
	.value	0x1fa
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.value	0x20a
	.byte	0x8
	.long	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.uleb128 0x20
	.long	.LASF122
	.byte	0x2
	.value	0x1ae
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x766
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x2
	.value	0x1ae
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x21
	.long	.LASF131
	.byte	0x2
	.value	0x15c
	.byte	0x1
	.long	0x605
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x82d
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x2
	.value	0x15c
	.byte	0x16
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x2
	.value	0x15c
	.byte	0x25
	.long	0x45e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.value	0x15e
	.byte	0x8
	.long	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x2
	.value	0x15f
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x2
	.value	0x15f
	.byte	0x10
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x2
	.value	0x160
	.byte	0xf
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x2
	.value	0x161
	.byte	0x9
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x2
	.value	0x165
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF130
	.byte	0x2
	.value	0x166
	.byte	0xc
	.long	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF132
	.byte	0x2
	.byte	0xb4
	.byte	0x1
	.long	0x605
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a2
	.uleb128 0x24
	.long	.LASF120
	.byte	0x2
	.byte	0xb4
	.byte	0x18
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF124
	.byte	0x2
	.byte	0xb4
	.byte	0x27
	.long	0x45e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.string	"ok"
	.byte	0x2
	.byte	0xb6
	.byte	0x8
	.long	0x605
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x2
	.byte	0xbb
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x2
	.byte	0xbf
	.byte	0xa
	.long	0x9a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x2
	.byte	0xc2
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF135
	.byte	0x2
	.byte	0xc5
	.byte	0x8
	.long	0x605
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x2
	.byte	0xe7
	.byte	0xc
	.long	0x605
	.uleb128 0x3
	.byte	0x91
	.sleb128 -91
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x2
	.byte	0xe8
	.byte	0x13
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF137
	.byte	0x2
	.byte	0xe9
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x25
	.string	"i"
	.byte	0x2
	.byte	0xeb
	.byte	0x13
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x25
	.string	"chr"
	.byte	0x2
	.byte	0xed
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"err"
	.byte	0x2
	.byte	0xee
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x2
	.byte	0xef
	.byte	0x10
	.long	0x605
	.uleb128 0x3
	.byte	0x91
	.sleb128 -90
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.value	0x14c
	.byte	0x18
	.long	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2ad
	.uleb128 0x26
	.long	.LASF144
	.byte	0x2
	.byte	0xa9
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d4
	.uleb128 0x27
	.string	"c"
	.byte	0x2
	.byte	0xa9
	.byte	0x10
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF158
	.byte	0x2
	.byte	0xa1
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF139
	.byte	0x2
	.byte	0x5c
	.byte	0x1
	.long	0x65
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4e
	.uleb128 0x24
	.long	.LASF140
	.byte	0x2
	.byte	0x5c
	.byte	0x1f
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x2
	.byte	0x5e
	.byte	0x9
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x2
	.byte	0x5f
	.byte	0x8
	.long	0x605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x29
	.long	.LASF159
	.byte	0x2
	.byte	0x97
	.byte	0x2
	.quad	.L30
	.byte	0
	.uleb128 0x2a
	.long	.LASF143
	.byte	0x1
	.value	0x2ba
	.byte	0x1
	.long	0x9c
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0xa80
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x2ba
	.byte	0x17
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF145
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xb25
	.uleb128 0x1c
	.long	.LASF146
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.long	.LASF147
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xadb
	.uleb128 0x2e
	.long	.LASF146
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x296
	.byte	0
	.uleb128 0x2e
	.long	.LASF148
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x296
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xab0
	.uleb128 0x1d
	.long	.LASF147
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xb35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1d
	.long	.LASF148
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1d
	.long	.LASF149
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xb3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1d
	.long	.LASF150
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xadb
	.long	0xb35
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xb25
	.uleb128 0x7
	.byte	0x8
	.long	0xadb
	.uleb128 0x2f
	.long	.LASF151
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF152
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x2b
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
.LASF8:
	.string	"__off_t"
.LASF104:
	.string	"FADVISE_SEQUENTIAL"
.LASF95:
	.string	"locale_quoting_style"
.LASF25:
	.string	"_chain"
.LASF84:
	.string	"GETOPT_VERSION_CHAR"
.LASF115:
	.string	"longopts"
.LASF157:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF31:
	.string	"_shortbuf"
.LASF89:
	.string	"shell_always_quoting_style"
.LASF88:
	.string	"shell_quoting_style"
.LASF159:
	.string	"done"
.LASF83:
	.string	"GETOPT_HELP_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF119:
	.string	"delim_arg"
.LASF136:
	.string	"somedone"
.LASF133:
	.string	"delbuf"
.LASF34:
	.string	"_codecvt"
.LASF142:
	.string	"backslash_at_end"
.LASF68:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF99:
	.string	"quoting_style_vals"
.LASF146:
	.string	"program"
.LASF94:
	.string	"escape_quoting_style"
.LASF87:
	.string	"literal_quoting_style"
.LASF135:
	.string	"opened_stdin"
.LASF14:
	.string	"_IO_read_end"
.LASF26:
	.string	"_fileno"
.LASF74:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"_gl_cxxalias_dummy"
.LASF12:
	.string	"_flags"
.LASF152:
	.string	"emit_stdin_note"
.LASF35:
	.string	"_wide_data"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF78:
	.string	"program_invocation_short_name"
.LASF92:
	.string	"c_quoting_style"
.LASF43:
	.string	"_IO_codecvt"
.LASF137:
	.string	"delims_saved"
.LASF77:
	.string	"program_invocation_name"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF129:
	.string	"saved_errno"
.LASF91:
	.string	"shell_escape_always_quoting_style"
.LASF71:
	.string	"timezone"
.LASF125:
	.string	"charnew"
.LASF86:
	.string	"program_name"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF124:
	.string	"fnamptr"
.LASF131:
	.string	"paste_serial"
.LASF37:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF130:
	.string	"is_stdin"
.LASF132:
	.string	"paste_parallel"
.LASF17:
	.string	"_IO_write_ptr"
.LASF63:
	.string	"name"
.LASF48:
	.string	"sys_nerr"
.LASF153:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF97:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF102:
	.string	"error_one_per_line"
.LASF79:
	.string	"Version"
.LASF144:
	.string	"xputchar"
.LASF21:
	.string	"_IO_save_base"
.LASF76:
	.string	"environ"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF46:
	.string	"stdout"
.LASF114:
	.string	"line_delim"
.LASF118:
	.string	"optc"
.LASF85:
	.string	"version_etc_copyright"
.LASF57:
	.string	"optarg"
.LASF139:
	.string	"collapse_escapes"
.LASF72:
	.string	"getdate_err"
.LASF58:
	.string	"optind"
.LASF13:
	.string	"_IO_read_ptr"
.LASF9:
	.string	"__off64_t"
.LASF156:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF100:
	.string	"error_print_progname"
.LASF149:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF54:
	.string	"time_t"
.LASF111:
	.string	"serial_merge"
.LASF140:
	.string	"strptr"
.LASF49:
	.string	"sys_errlist"
.LASF158:
	.string	"write_error"
.LASF120:
	.string	"nfiles"
.LASF154:
	.string	"src/paste.c"
.LASF93:
	.string	"c_maybe_quoting_style"
.LASF109:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF148:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF62:
	.string	"option"
.LASF65:
	.string	"flag"
.LASF50:
	.string	"_sys_nerr"
.LASF30:
	.string	"_vtable_offset"
.LASF69:
	.string	"tzname"
.LASF41:
	.string	"FILE"
.LASF80:
	.string	"exit_failure"
.LASF24:
	.string	"_markers"
.LASF108:
	.string	"FADVISE_RANDOM"
.LASF90:
	.string	"shell_escape_quoting_style"
.LASF105:
	.string	"FADVISE_NOREUSE"
.LASF98:
	.string	"quoting_style_args"
.LASF60:
	.string	"optopt"
.LASF70:
	.string	"daylight"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF106:
	.string	"FADVISE_DONTNEED"
.LASF1:
	.string	"unsigned int"
.LASF81:
	.string	"TIMESPEC_HZ"
.LASF10:
	.string	"__time_t"
.LASF96:
	.string	"clocale_quoting_style"
.LASF138:
	.string	"sometodo"
.LASF51:
	.string	"_sys_errlist"
.LASF59:
	.string	"opterr"
.LASF103:
	.string	"FADVISE_NORMAL"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF110:
	.string	"have_read_stdin"
.LASF147:
	.string	"infomap"
.LASF112:
	.string	"delims"
.LASF134:
	.string	"files_open"
.LASF113:
	.string	"delim_end"
.LASF64:
	.string	"has_arg"
.LASF122:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF18:
	.string	"_IO_write_end"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF117:
	.string	"argv"
.LASF67:
	.string	"__daylight"
.LASF123:
	.string	"status"
.LASF155:
	.string	"/root/coreutils"
.LASF22:
	.string	"_IO_backup_base"
.LASF128:
	.string	"fileptr"
.LASF141:
	.string	"strout"
.LASF101:
	.string	"error_message_count"
.LASF150:
	.string	"lc_messages"
.LASF127:
	.string	"delimptr"
.LASF116:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF107:
	.string	"FADVISE_WILLNEED"
.LASF151:
	.string	"emit_mandatory_arg_note"
.LASF66:
	.string	"__tzname"
.LASF121:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF145:
	.string	"emit_ancillary_info"
.LASF143:
	.string	"bad_cast"
.LASF126:
	.string	"charold"
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
