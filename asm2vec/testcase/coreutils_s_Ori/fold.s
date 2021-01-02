	.file	"fold.c"
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
	.local	break_spaces
	.comm	break_spaces,1,1
	.local	count_bytes
	.comm	count_bytes,1,1
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.section	.rodata
	.align 32
	.type	shortopts, @object
	.size	shortopts, 35
shortopts:
	.string	"bsw:0::1::2::3::4::5::6::7::8::9::"
.LC20:
	.string	"bytes"
.LC21:
	.string	"spaces"
.LC22:
	.string	"width"
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
	.long	98
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	119
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
	.section	.rodata
	.align 8
.LC25:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC26:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC27:
	.string	"Wrap input lines in each FILE, writing to standard output.\n"
	.align 8
.LC28:
	.string	"  -b, --bytes         count bytes rather than columns\n  -s, --spaces        break at spaces\n  -w, --width=WIDTH   use WIDTH columns instead of 80\n"
	.align 8
.LC29:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC30:
	.string	"      --version  output version information and exit\n"
.LC31:
	.string	"fold"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/fold.c"
	.loc 2 61 1 is_stmt 1
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
	.loc 2 62 6
	cmpl	$0, -20(%rbp)
	je	.L15
	.loc 2 63 5
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
	jmp	.L16
.L15:
	.loc 2 66 7
	movq	program_name(%rip), %rbx
	.loc 2 66 15
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	.loc 2 66 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 70 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 74 7
	call	emit_stdin_note
	.loc 2 75 7
	call	emit_mandatory_arg_note
	.loc 2 77 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 82 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 83 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 84 7
	leaq	.LC31(%rip), %rdi
	call	emit_ancillary_info
.L16:
	.loc 2 86 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	adjust_column, @function
adjust_column:
.LFB47:
	.loc 2 95 1
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
	.loc 2 96 7
	movzbl	count_bytes(%rip), %eax
	xorl	$1, %eax
	.loc 2 96 6
	testb	%al, %al
	je	.L18
	.loc 2 98 10
	cmpb	$8, -12(%rbp)
	jne	.L19
	.loc 2 100 14
	cmpq	$0, -8(%rbp)
	je	.L20
	.loc 2 101 19
	subq	$1, -8(%rbp)
	jmp	.L20
.L19:
	.loc 2 103 15
	cmpb	$13, -12(%rbp)
	jne	.L21
	.loc 2 104 16
	movq	$0, -8(%rbp)
	jmp	.L20
.L21:
	.loc 2 105 15
	cmpb	$9, -12(%rbp)
	jne	.L22
	.loc 2 106 16
	movq	-8(%rbp), %rax
	andq	$-8, %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	jmp	.L20
.L22:
	.loc 2 108 15
	addq	$1, -8(%rbp)
	jmp	.L20
.L18:
	.loc 2 111 11
	addq	$1, -8(%rbp)
.L20:
	.loc 2 112 10
	movq	-8(%rbp), %rax
	.loc 2 113 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	adjust_column, .-adjust_column
	.section	.rodata
.LC32:
	.string	"-"
.LC33:
	.string	"r"
.LC34:
	.string	"%s"
	.text
	.type	fold_file, @function
fold_file:
.LFB48:
	.loc 2 121 1
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
	.loc 2 124 10
	movq	$0, -48(%rbp)
	.loc 2 125 10
	movq	$0, -40(%rbp)
	.loc 2 130 7
	movq	-88(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 130 6
	testl	%eax, %eax
	jne	.L25
	.loc 2 132 15
	movq	stdin(%rip), %rax
	movq	%rax, -56(%rbp)
	.loc 2 133 23
	movb	$1, have_read_stdin(%rip)
	jmp	.L26
.L25:
	.loc 2 136 15
	movq	-88(%rbp), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -56(%rbp)
.L26:
	.loc 2 138 6
	cmpq	$0, -56(%rbp)
	jne	.L27
	.loc 2 140 7
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 140 17
	call	__errno_location@PLT
	.loc 2 140 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC34(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 141 14
	movl	$0, %eax
	jmp	.L28
.L27:
	.loc 2 144 3
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 146 9
	jmp	.L29
.L40:
	.loc 2 148 22
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 2 148 26
	movq	allocated_out.6275(%rip), %rax
	.loc 2 148 10
	cmpq	%rax, %rdx
	jb	.L30
.LBB2:
	.loc 2 149 20
	movq	line_out.6274(%rip), %rax
	leaq	allocated_out.6275(%rip), %rsi
	movq	%rax, %rdi
	call	x2realloc@PLT
	.loc 2 149 18
	movq	%rax, line_out.6274(%rip)
.L30:
.LBE2:
	.loc 2 151 10
	cmpl	$10, -64(%rbp)
	jne	.L45
	.loc 2 153 19
	movq	line_out.6274(%rip), %rcx
	.loc 2 153 30
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 153 19
	addq	%rcx, %rax
	.loc 2 153 34
	movl	-64(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 154 11
	movq	stdout(%rip), %rcx
	movq	line_out.6274(%rip), %rax
	movq	-40(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 155 31
	movq	$0, -40(%rbp)
	.loc 2 155 18
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 156 11
	jmp	.L29
.L45:
	.loc 2 159 5
	nop
.L31:
	.loc 2 160 16
	movl	-64(%rbp), %eax
	movsbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	adjust_column
	movq	%rax, -48(%rbp)
	.loc 2 162 10
	movq	-48(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jbe	.L32
	.loc 2 167 15
	movzbl	break_spaces(%rip), %eax
	.loc 2 167 14
	testb	%al, %al
	je	.L33
.LBB3:
	.loc 2 169 20
	movb	$0, -65(%rbp)
	.loc 2 170 22
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 173 21
	jmp	.L34
.L36:
	.loc 2 175 19
	subq	$1, -32(%rbp)
	.loc 2 176 23
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	line_out.6274(%rip), %rdx
	movq	-32(%rbp), %rax
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
	.loc 2 176 22
	testl	%eax, %eax
	je	.L34
	.loc 2 178 35
	movb	$1, -65(%rbp)
	.loc 2 179 23
	jmp	.L35
.L34:
	.loc 2 173 21
	cmpq	$0, -32(%rbp)
	jne	.L36
.L35:
	.loc 2 183 18
	cmpb	$0, -65(%rbp)
	je	.L33
.LBB4:
	.loc 2 188 30
	addq	$1, -32(%rbp)
	.loc 2 189 19
	movq	stdout(%rip), %rcx
	movq	line_out.6274(%rip), %rax
	movq	-32(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 191 19
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 194 19
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	line_out.6274(%rip), %rcx
	.loc 2 194 47
	movq	-32(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 194 19
	movq	line_out.6274(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	.loc 2 196 30
	movq	-32(%rbp), %rax
	subq	%rax, -40(%rbp)
	.loc 2 197 35
	movq	$0, -24(%rbp)
	.loc 2 197 31
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 197 19
	jmp	.L37
.L38:
	.loc 2 198 61 discriminator 3
	movq	line_out.6274(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 198 30 discriminator 3
	movsbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	adjust_column
	movq	%rax, -48(%rbp)
	.loc 2 197 57 discriminator 3
	addq	$1, -24(%rbp)
.L37:
	.loc 2 197 19 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L38
	.loc 2 199 19
	jmp	.L31
.L33:
.LBE4:
.LBE3:
	.loc 2 203 14
	cmpq	$0, -40(%rbp)
	jne	.L39
	.loc 2 205 23
	movq	line_out.6274(%rip), %rcx
	.loc 2 205 34
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 205 23
	addq	%rcx, %rax
	.loc 2 205 38
	movl	-64(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 206 15
	jmp	.L29
.L39:
	.loc 2 209 19
	movq	line_out.6274(%rip), %rcx
	.loc 2 209 30
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 209 19
	addq	%rcx, %rax
	.loc 2 209 34
	movb	$10, (%rax)
	.loc 2 210 11
	movq	stdout(%rip), %rcx
	movq	line_out.6274(%rip), %rax
	movq	-40(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 211 31
	movq	$0, -40(%rbp)
	.loc 2 211 18
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 212 11
	jmp	.L31
.L32:
	.loc 2 215 15
	movq	line_out.6274(%rip), %rcx
	.loc 2 215 26
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 215 15
	addq	%rcx, %rax
	.loc 2 215 30
	movl	-64(%rbp), %edx
	movb	%dl, (%rax)
.L29:
	.loc 2 146 15
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -64(%rbp)
	.loc 2 146 9
	cmpl	$-1, -64(%rbp)
	jne	.L40
	.loc 2 218 17
	call	__errno_location@PLT
	.loc 2 218 15
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	.loc 2 220 6
	cmpq	$0, -40(%rbp)
	je	.L41
	.loc 2 221 5
	movq	stdout(%rip), %rcx
	movq	line_out.6274(%rip), %rax
	movq	-40(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
.L41:
	.loc 2 223 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 223 6
	testl	%eax, %eax
	je	.L42
	.loc 2 225 7
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rdx
	movl	-60(%rbp), %eax
	movq	%rdx, %rcx
	leaq	.LC34(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 226 12
	movq	-88(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 226 10
	testl	%eax, %eax
	je	.L43
	.loc 2 227 9
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
.L43:
	.loc 2 228 14
	movl	$0, %eax
	jmp	.L28
.L42:
	.loc 2 230 8
	movq	-88(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 230 6
	testl	%eax, %eax
	je	.L44
	.loc 2 230 33 discriminator 1
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 230 30 discriminator 1
	cmpl	$-1, %eax
	jne	.L44
	.loc 2 232 7
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 232 17
	call	__errno_location@PLT
	.loc 2 232 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC34(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 233 14
	movl	$0, %eax
	jmp	.L28
.L44:
	.loc 2 236 10
	movl	$1, %eax
.L28:
	.loc 2 237 1
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	fold_file, .-fold_file
	.section	.rodata
.LC35:
	.string	"/usr/local/share/locale"
.LC36:
	.string	"invalid number of columns"
.LC37:
	.string	"David MacKenzie"
	.text
	.globl	main
	.type	main, @function
main:
.LFB49:
	.loc 2 241 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 241 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 242 10
	movq	$80, -24(%rbp)
	.loc 2 248 3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 249 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 250 3
	leaq	.LC35(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 251 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 253 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 255 48
	movb	$0, have_read_stdin(%rip)
	.loc 2 255 30
	movzbl	have_read_stdin(%rip), %eax
	movb	%al, count_bytes(%rip)
	.loc 2 255 16
	movzbl	count_bytes(%rip), %eax
	movb	%al, break_spaces(%rip)
	.loc 2 257 9
	jmp	.L47
.L57:
.LBB5:
	.loc 2 261 7
	cmpl	$119, -28(%rbp)
	je	.L48
	cmpl	$119, -28(%rbp)
	jg	.L49
	cmpl	$115, -28(%rbp)
	je	.L50
	cmpl	$115, -28(%rbp)
	jg	.L49
	cmpl	$98, -28(%rbp)
	je	.L51
	cmpl	$98, -28(%rbp)
	jg	.L49
	cmpl	$57, -28(%rbp)
	jg	.L49
	cmpl	$48, -28(%rbp)
	jge	.L52
	cmpl	$-131, -28(%rbp)
	je	.L53
	cmpl	$-130, -28(%rbp)
	je	.L54
	jmp	.L49
.L51:
	.loc 2 264 23
	movb	$1, count_bytes(%rip)
	.loc 2 265 11
	jmp	.L47
.L50:
	.loc 2 268 24
	movb	$1, break_spaces(%rip)
	.loc 2 269 11
	jmp	.L47
.L52:
	.loc 2 273 15
	movq	optarg(%rip), %rax
	.loc 2 273 14
	testq	%rax, %rax
	je	.L56
	.loc 2 274 19
	movq	optarg(%rip), %rax
	subq	$1, %rax
	movq	%rax, optarg(%rip)
	jmp	.L48
.L56:
	.loc 2 277 28
	movl	-28(%rbp), %eax
	movb	%al, -10(%rbp)
	.loc 2 278 28
	movb	$0, -9(%rbp)
	.loc 2 279 22
	leaq	-10(%rbp), %rax
	movq	%rax, optarg(%rip)
.L48:
	.loc 2 284 31
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 283 19
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movq	$-10, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	movq	%rax, -24(%rbp)
	.loc 2 285 11
	jmp	.L47
.L54:
	.loc 2 287 9
	movl	$0, %edi
	call	usage
.L53:
	.loc 2 289 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC37(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L49:
	.loc 2 292 11
	movl	$1, %edi
	call	usage
.L47:
.LBE5:
	.loc 2 257 18
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	shortopts(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -28(%rbp)
	.loc 2 257 9
	cmpl	$-1, -28(%rbp)
	jne	.L57
	.loc 2 296 12
	movl	optind(%rip), %eax
	.loc 2 296 6
	cmpl	%eax, -52(%rbp)
	jne	.L58
	.loc 2 297 10
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rdi
	call	fold_file
	movb	%al, -33(%rbp)
	jmp	.L59
.L58:
	.loc 2 300 10
	movb	$1, -33(%rbp)
	.loc 2 301 14
	movl	optind(%rip), %eax
	movl	%eax, -32(%rbp)
	.loc 2 301 7
	jmp	.L60
.L61:
	.loc 2 302 30 discriminator 3
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 302 15 discriminator 3
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fold_file
	.loc 2 302 12 discriminator 3
	movzbl	-33(%rbp), %edx
	.loc 2 302 15 discriminator 3
	movzbl	%al, %eax
	.loc 2 302 12 discriminator 3
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -33(%rbp)
	.loc 2 301 35 discriminator 3
	addl	$1, -32(%rbp)
.L60:
	.loc 2 301 7 discriminator 1
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L61
.L59:
	.loc 2 305 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 305 6
	testb	%al, %al
	je	.L62
	.loc 2 305 26 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 305 23 discriminator 1
	cmpl	$-1, %eax
	jne	.L62
.LBB6:
	.loc 2 306 5
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC32(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L62:
.LBE6:
	.loc 2 308 28
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 309 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	main, .-main
	.local	allocated_out.6275
	.comm	allocated_out.6275,8,8
	.local	line_out.6274
	.comm	line_out.6274,8,8
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
	.long	0xa69
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF155
	.byte	0xc
	.long	.LASF156
	.long	.LASF157
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
	.long	.LASF158
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
	.long	.LASF159
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
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x2
	.byte	0x27
	.byte	0xd
	.long	0x664
	.uleb128 0x9
	.byte	0x3
	.quad	break_spaces
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF121
	.uleb128 0x1b
	.long	.LASF123
	.byte	0x2
	.byte	0x2a
	.byte	0xd
	.long	0x664
	.uleb128 0x9
	.byte	0x3
	.quad	count_bytes
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x2
	.byte	0x2d
	.byte	0xd
	.long	0x664
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0xd
	.long	0xa9
	.long	0x6a7
	.uleb128 0xe
	.long	0x39
	.byte	0x22
	.byte	0
	.uleb128 0x8
	.long	0x697
	.uleb128 0x1b
	.long	.LASF125
	.byte	0x2
	.byte	0x2f
	.byte	0x13
	.long	0x6a7
	.uleb128 0x9
	.byte	0x3
	.quad	shortopts
	.uleb128 0xd
	.long	0x3ab
	.long	0x6d2
	.uleb128 0xe
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x6c2
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.long	0x6d2
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF143
	.byte	0x2
	.byte	0xf0
	.byte	0x1
	.long	0x65
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a0
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x2
	.byte	0xf0
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x2
	.byte	0xf0
	.byte	0x18
	.long	0x45e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x2
	.byte	0xf2
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"i"
	.byte	0x2
	.byte	0xf3
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x2
	.byte	0xf4
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.byte	0xf5
	.byte	0x8
	.long	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x78e
	.uleb128 0x20
	.long	.LASF131
	.byte	0x2
	.value	0x103
	.byte	0xc
	.long	0x7a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0xd
	.long	0xa2
	.long	0x7b0
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.long	.LASF141
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x664
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x8dc
	.uleb128 0x1d
	.long	.LASF132
	.byte	0x2
	.byte	0x78
	.byte	0x18
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x2
	.byte	0x78
	.byte	0x29
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x2
	.byte	0x7a
	.byte	0x9
	.long	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.byte	0x7b
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF134
	.byte	0x2
	.byte	0x7c
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x2
	.byte	0x7d
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF136
	.byte	0x2
	.byte	0x7e
	.byte	0x10
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	line_out.6274
	.uleb128 0x1b
	.long	.LASF137
	.byte	0x2
	.byte	0x7f
	.byte	0x11
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	allocated_out.6275
	.uleb128 0x1b
	.long	.LASF138
	.byte	0x2
	.byte	0x80
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.long	.LASF160
	.byte	0x2
	.byte	0x9f
	.byte	0x5
	.quad	.L31
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x24
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1b
	.long	.LASF139
	.byte	0x2
	.byte	0xa9
	.byte	0x14
	.long	0x664
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x1b
	.long	.LASF140
	.byte	0x2
	.byte	0xaa
	.byte	0x16
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1e
	.string	"i"
	.byte	0x2
	.byte	0xb9
	.byte	0x1a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF142
	.byte	0x2
	.byte	0x5e
	.byte	0x1
	.long	0x2d
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x91b
	.uleb128 0x1d
	.long	.LASF134
	.byte	0x2
	.byte	0x5e
	.byte	0x17
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"c"
	.byte	0x2
	.byte	0x5e
	.byte	0x24
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x27
	.long	.LASF144
	.byte	0x2
	.byte	0x3c
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x949
	.uleb128 0x1d
	.long	.LASF145
	.byte	0x2
	.byte	0x3c
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x28
	.long	.LASF153
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ee
	.uleb128 0x29
	.long	.LASF146
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.long	.LASF147
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x9a4
	.uleb128 0x2b
	.long	.LASF146
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x296
	.byte	0
	.uleb128 0x2b
	.long	.LASF148
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x296
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x979
	.uleb128 0x20
	.long	.LASF147
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x9fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF148
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF149
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xa03
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
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
	.long	0x9a4
	.long	0x9fe
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x9ee
	.uleb128 0x7
	.byte	0x8
	.long	0x9a4
	.uleb128 0x2c
	.long	.LASF151
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF152
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF154
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x49
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0xa2
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"exit_failure"
.LASF8:
	.string	"__off_t"
.LASF90:
	.string	"_ISgraph"
.LASF107:
	.string	"locale_quoting_style"
.LASF25:
	.string	"_chain"
.LASF96:
	.string	"GETOPT_VERSION_CHAR"
.LASF126:
	.string	"longopts"
.LASF159:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF131:
	.string	"optargbuf"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF31:
	.string	"_shortbuf"
.LASF88:
	.string	"_ISspace"
.LASF101:
	.string	"shell_always_quoting_style"
.LASF100:
	.string	"shell_quoting_style"
.LASF95:
	.string	"GETOPT_HELP_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF85:
	.string	"_ISalpha"
.LASF34:
	.string	"_codecvt"
.LASF86:
	.string	"_ISdigit"
.LASF68:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF111:
	.string	"quoting_style_vals"
.LASF146:
	.string	"program"
.LASF106:
	.string	"escape_quoting_style"
.LASF99:
	.string	"literal_quoting_style"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
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
.LASF94:
	.string	"_ISalnum"
.LASF29:
	.string	"_cur_column"
.LASF78:
	.string	"program_invocation_short_name"
.LASF104:
	.string	"c_quoting_style"
.LASF43:
	.string	"_IO_codecvt"
.LASF51:
	.string	"_sys_errlist"
.LASF77:
	.string	"program_invocation_name"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF91:
	.string	"_ISblank"
.LASF138:
	.string	"saved_errno"
.LASF103:
	.string	"shell_escape_always_quoting_style"
.LASF71:
	.string	"timezone"
.LASF142:
	.string	"adjust_column"
.LASF93:
	.string	"_ISpunct"
.LASF98:
	.string	"program_name"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF37:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF63:
	.string	"name"
.LASF48:
	.string	"sys_nerr"
.LASF129:
	.string	"width"
.LASF155:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF140:
	.string	"logical_end"
.LASF3:
	.string	"short unsigned int"
.LASF114:
	.string	"error_one_per_line"
.LASF79:
	.string	"Version"
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
.LASF136:
	.string	"line_out"
.LASF46:
	.string	"stdout"
.LASF116:
	.string	"FADVISE_SEQUENTIAL"
.LASF130:
	.string	"optc"
.LASF97:
	.string	"version_etc_copyright"
.LASF135:
	.string	"offset_out"
.LASF125:
	.string	"shortopts"
.LASF57:
	.string	"optarg"
.LASF72:
	.string	"getdate_err"
.LASF132:
	.string	"filename"
.LASF58:
	.string	"optind"
.LASF13:
	.string	"_IO_read_ptr"
.LASF9:
	.string	"__off64_t"
.LASF158:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF112:
	.string	"error_print_progname"
.LASF123:
	.string	"count_bytes"
.LASF137:
	.string	"allocated_out"
.LASF149:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF54:
	.string	"time_t"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF154:
	.string	"to_uchar"
.LASF105:
	.string	"c_maybe_quoting_style"
.LASF121:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF148:
	.string	"node"
.LASF20:
	.string	"_IO_buf_end"
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
.LASF10:
	.string	"__time_t"
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
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF118:
	.string	"FADVISE_DONTNEED"
.LASF92:
	.string	"_IScntrl"
.LASF81:
	.string	"TIMESPEC_HZ"
.LASF160:
	.string	"rescan"
.LASF87:
	.string	"_ISxdigit"
.LASF108:
	.string	"clocale_quoting_style"
.LASF84:
	.string	"_ISlower"
.LASF59:
	.string	"opterr"
.LASF115:
	.string	"FADVISE_NORMAL"
.LASF15:
	.string	"_IO_read_base"
.LASF134:
	.string	"column"
.LASF23:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF124:
	.string	"have_read_stdin"
.LASF147:
	.string	"infomap"
.LASF64:
	.string	"has_arg"
.LASF144:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF156:
	.string	"src/fold.c"
.LASF18:
	.string	"_IO_write_end"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF128:
	.string	"argv"
.LASF122:
	.string	"break_spaces"
.LASF67:
	.string	"__daylight"
.LASF145:
	.string	"status"
.LASF157:
	.string	"/root/coreutils"
.LASF83:
	.string	"_ISupper"
.LASF109:
	.string	"custom_quoting_style"
.LASF22:
	.string	"_IO_backup_base"
.LASF113:
	.string	"error_message_count"
.LASF150:
	.string	"lc_messages"
.LASF127:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF141:
	.string	"fold_file"
.LASF119:
	.string	"FADVISE_WILLNEED"
.LASF133:
	.string	"istream"
.LASF139:
	.string	"found_blank"
.LASF151:
	.string	"emit_mandatory_arg_note"
.LASF66:
	.string	"__tzname"
.LASF143:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF153:
	.string	"emit_ancillary_info"
.LASF89:
	.string	"_ISprint"
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
