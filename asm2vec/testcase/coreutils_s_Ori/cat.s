	.file	"cat.c"
	.text
.Ltext0:
	.type	ptr_align, @function
ptr_align:
.LFB33:
	.file 1 "src/system.h"
	.loc 1 502 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 503 15
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 504 35
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	.loc 1 504 15
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 505 25
	movq	-8(%rbp), %rax
	.loc 1 505 37
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, %rax
	.loc 1 505 23
	negq	%rax
	movq	%rax, %rdx
	.loc 1 505 10
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 506 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ptr_align, .-ptr_align
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
	jmp	.L5
.L7:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L5:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L6
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L7
.L6:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L8
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L8:
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
	je	.L9
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L9
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L9:
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
	jne	.L10
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L11
.L10:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L11:
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
	je	.L12
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L12:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.type	io_blksize, @function
io_blksize:
.LFB46:
	.file 2 "src/ioblksize.h"
	.loc 2 76 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 77 10
	movq	72(%rbp), %rax
	testq	%rax, %rax
	jle	.L14
	.loc 2 77 10 is_stmt 0 discriminator 1
	movq	72(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L14
	.loc 2 77 10 discriminator 3
	movq	72(%rbp), %rax
	cmpq	$131071, %rax
	jle	.L14
	.loc 2 77 10 discriminator 5
	movq	72(%rbp), %rax
	testq	%rax, %rax
	jle	.L15
	.loc 2 77 10 discriminator 7
	movq	72(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L15
	.loc 2 77 10 discriminator 9
	movq	72(%rbp), %rax
	jmp	.L18
.L15:
	.loc 2 77 10 discriminator 10
	movl	$512, %eax
	jmp	.L18
.L14:
	.loc 2 77 10 discriminator 6
	movl	$131072, %eax
.L18:
	.loc 2 78 1 is_stmt 1 discriminator 15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	io_blksize, .-io_blksize
	.local	infile
	.comm	infile,8,8
	.local	input_desc
	.comm	input_desc,4,4
	.data
	.align 16
	.type	line_buf, @object
	.size	line_buf, 20
line_buf:
	.string	"                 0\t"
	.section	.data.rel.local,"aw"
	.align 8
	.type	line_num_print, @object
	.size	line_num_print, 8
line_num_print:
	.quad	line_buf+12
	.align 8
	.type	line_num_start, @object
	.size	line_num_start, 8
line_num_start:
	.quad	line_buf+17
	.align 8
	.type	line_num_end, @object
	.size	line_num_end, 8
line_num_end:
	.quad	line_buf+17
	.local	newlines2
	.comm	newlines2,4,4
	.section	.rodata
	.align 8
.LC19:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC20:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC21:
	.string	"Concatenate FILE(s) to standard output.\n"
	.align 8
.LC22:
	.ascii	"\n  -A, --show-all           equivalent to -vET\n  -b, --num"
	.ascii	"ber-nonblank    numb"
	.string	"er nonempty output lines, overrides -n\n  -e                       equivalent to -vE\n  -E, --show-ends          display $ at end of each line\n  -n, --number             number all output lines\n  -s, --squeeze-blank      suppress repeated empty output lines\n"
	.align 8
.LC23:
	.string	"  -t                       equivalent to -vT\n  -T, --show-tabs          display TAB characters as ^I\n  -u                       (ignored)\n  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB\n"
	.align 8
.LC24:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC25:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC26:
	.string	"\nExamples:\n  %s f - g  Output f's contents, then standard input, then g's contents.\n  %s        Copy standard input to standard output.\n"
.LC27:
	.string	"cat"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB51:
	.file 3 "src/cat.c"
	.loc 3 83 1
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
	.loc 3 84 6
	cmpl	$0, -20(%rbp)
	je	.L20
	.loc 3 85 5
	movq	program_name(%rip), %rbx
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L21
.L20:
	.loc 3 88 7
	movq	program_name(%rip), %rbx
	.loc 3 88 15
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	.loc 3 88 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 92 7
	movq	stdout(%rip), %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 96 7
	call	emit_stdin_note
	.loc 3 98 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 107 7
	movq	stdout(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 113 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 114 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 115 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 3 115 15
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	.loc 3 115 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 122 7
	leaq	.LC27(%rip), %rdi
	call	emit_ancillary_info
.L21:
	.loc 3 124 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE51:
	.size	usage, .-usage
	.type	next_line_num, @function
next_line_num:
.LFB52:
	.loc 3 131 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 132 9
	movq	line_num_end(%rip), %rax
	movq	%rax, -8(%rbp)
.L25:
	.loc 3 135 12
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 135 18
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, %ecx
	movq	-8(%rbp), %rdx
	movb	%cl, (%rdx)
	.loc 3 135 10
	cmpb	$56, %al
	jle	.L28
	.loc 3 137 12
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 3 137 15
	movb	$48, (%rax)
	.loc 3 139 15
	movq	line_num_start(%rip), %rax
	.loc 3 139 3
	cmpq	%rax, -8(%rbp)
	jnb	.L25
	.loc 3 140 22
	movq	line_num_start(%rip), %rax
	.loc 3 140 6
	leaq	line_buf(%rip), %rdx
	cmpq	%rdx, %rax
	jbe	.L26
	.loc 3 141 6
	movq	line_num_start(%rip), %rax
	subq	$1, %rax
	.loc 3 141 23
	movq	%rax, line_num_start(%rip)
	.loc 3 141 6
	movq	line_num_start(%rip), %rax
	.loc 3 141 23
	movb	$49, (%rax)
	jmp	.L27
.L26:
	.loc 3 143 15
	movb	$62, line_buf(%rip)
.L27:
	.loc 3 144 22
	movq	line_num_start(%rip), %rdx
	movq	line_num_print(%rip), %rax
	.loc 3 144 6
	cmpq	%rax, %rdx
	jnb	.L22
	.loc 3 145 19
	movq	line_num_print(%rip), %rax
	subq	$1, %rax
	movq	%rax, line_num_print(%rip)
	jmp	.L22
.L28:
	.loc 3 136 9
	nop
.L22:
	.loc 3 146 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	next_line_num, .-next_line_num
	.section	.rodata
.LC28:
	.string	"%s"
.LC29:
	.string	"write error"
	.text
	.type	simple_cat, @function
simple_cat:
.LFB53:
	.loc 3 159 1
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
.L34:
	.loc 3 169 16
	movl	input_desc(%rip), %eax
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -32(%rbp)
	.loc 3 170 10
	cmpq	$-1, -32(%rbp)
	jne	.L30
	.loc 3 172 11
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 172 21
	call	__errno_location@PLT
	.loc 3 172 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 173 18
	movl	$0, %eax
	jmp	.L31
.L30:
	.loc 3 178 10
	cmpq	$0, -32(%rbp)
	jne	.L32
	.loc 3 179 16
	movl	$1, %eax
	jmp	.L31
.L32:
.LBB2:
	.loc 3 185 16
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 3 186 13
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	full_write@PLT
	.loc 3 186 12
	cmpq	%rax, -24(%rbp)
	je	.L34
.LBB3:
	.loc 3 187 11
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L31:
.LBE3:
.LBE2:
	.loc 3 190 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	simple_cat, .-simple_cat
	.type	write_pending, @function
write_pending:
.LFB54:
	.loc 3 198 1
	.cfi_startproc
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
	.loc 3 199 20
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 199 27
	subq	-40(%rbp), %rax
	.loc 3 199 10
	movq	%rax, -24(%rbp)
	.loc 3 200 6
	cmpq	$0, -24(%rbp)
	je	.L38
	.loc 3 202 11
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	full_write@PLT
	.loc 3 202 10
	cmpq	%rax, -24(%rbp)
	je	.L37
.LBB4:
	.loc 3 203 9
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L37:
.LBE4:
	.loc 3 204 14
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
.L38:
	.loc 3 206 1
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	write_pending, .-write_pending
	.section	.rodata
.LC30:
	.string	"cannot do ioctl on %s"
	.text
	.type	cat, @function
cat:
.LFB55:
	.loc 3 236 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	%r8d, %edi
	movl	%r9d, %r8d
	movl	16(%rbp), %esi
	movl	24(%rbp), %ecx
	movl	32(%rbp), %edx
	movl	40(%rbp), %eax
	movb	%dil, -132(%rbp)
	movl	%r8d, %edi
	movb	%dil, -136(%rbp)
	movb	%sil, -140(%rbp)
	movb	%cl, -144(%rbp)
	movb	%dl, -148(%rbp)
	movb	%al, -152(%rbp)
	.loc 3 236 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 258 7
	movl	newlines2(%rip), %eax
	movl	%eax, -76(%rbp)
	.loc 3 263 8
	movb	$1, -82(%rbp)
	.loc 3 269 7
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 3 270 8
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	.loc 3 272 9
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
.L58:
	.loc 3 280 22
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 280 32
	movq	-72(%rbp), %rax
	.loc 3 280 14
	cmpq	%rax, %rdx
	ja	.L40
.LBB5:
	.loc 3 282 21
	movq	-120(%rbp), %rax
	movq	%rax, -48(%rbp)
.L42:
	.loc 3 286 23
	movq	-128(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	full_write@PLT
	.loc 3 286 22
	cmpq	%rax, -128(%rbp)
	je	.L41
.LBB6:
	.loc 3 287 21
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L41:
.LBE6:
	.loc 3 288 22
	movq	-128(%rbp), %rax
	addq	%rax, -48(%rbp)
	.loc 3 289 43
	movq	-72(%rbp), %rax
	subq	-48(%rbp), %rax
	.loc 3 289 35
	movq	%rax, -40(%rbp)
	.loc 3 291 15
	movq	-128(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.L42
	.loc 3 296 15
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	.loc 3 297 30
	movq	-120(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 297 21
	movq	%rax, -72(%rbp)
.L40:
.LBE5:
	.loc 3 302 14
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.L43
.LBB7:
	.loc 3 304 20
	movb	$0, -81(%rbp)
	.loc 3 306 19
	movl	$0, -80(%rbp)
	.loc 3 312 18
	cmpb	$0, -82(%rbp)
	je	.L44
	.loc 3 313 22
	movl	input_desc(%rip), %eax
	leaq	-80(%rbp), %rdx
	movl	$21531, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ioctl@PLT
	.loc 3 313 19
	testl	%eax, %eax
	jns	.L44
	.loc 3 321 23
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 321 22
	cmpl	$95, %eax
	je	.L45
	.loc 3 321 46 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 321 43 discriminator 1
	cmpl	$25, %eax
	je	.L45
	.loc 3 322 26
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 322 23
	cmpl	$22, %eax
	je	.L45
	.loc 3 322 45 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 322 42 discriminator 1
	cmpl	$19, %eax
	je	.L45
	.loc 3 323 26
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 323 23
	cmpl	$38, %eax
	jne	.L46
.L45:
	.loc 3 324 34
	movb	$0, -82(%rbp)
	jmp	.L44
.L46:
	.loc 3 327 23
	movq	infile(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 327 40
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 327 33
	call	__errno_location@PLT
	.loc 3 327 23
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 329 33
	movl	-76(%rbp), %eax
	movl	%eax, newlines2(%rip)
	.loc 3 330 30
	movl	$0, %eax
	jmp	.L53
.L44:
	.loc 3 333 29
	movl	-80(%rbp), %eax
	.loc 3 333 18
	testl	%eax, %eax
	je	.L48
	.loc 3 334 31
	movb	$1, -81(%rbp)
.L48:
	.loc 3 337 19
	movzbl	-81(%rbp), %eax
	xorl	$1, %eax
	.loc 3 337 18
	testb	%al, %al
	je	.L49
	.loc 3 338 17
	leaq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_pending
.L49:
	.loc 3 342 24
	movl	input_desc(%rip), %eax
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -32(%rbp)
	.loc 3 343 18
	cmpq	$-1, -32(%rbp)
	jne	.L50
	.loc 3 345 19
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 345 29
	call	__errno_location@PLT
	.loc 3 345 19
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 346 19
	leaq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_pending
	.loc 3 347 29
	movl	-76(%rbp), %eax
	movl	%eax, newlines2(%rip)
	.loc 3 348 26
	movl	$0, %eax
	jmp	.L53
.L50:
	.loc 3 350 18
	cmpq	$0, -32(%rbp)
	jne	.L51
	.loc 3 352 19
	leaq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_pending
	.loc 3 353 29
	movl	-76(%rbp), %eax
	movl	%eax, newlines2(%rip)
	.loc 3 354 26
	movl	$1, %eax
	jmp	.L53
.L51:
	.loc 3 360 20
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 3 361 19
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 3 362 20
	movq	-56(%rbp), %rax
	movb	$10, (%rax)
.LBE7:
	jmp	.L52
.L43:
	.loc 3 371 18
	addl	$1, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jle	.L54
	.loc 3 373 22
	cmpl	$1, -76(%rbp)
	jle	.L55
	.loc 3 378 32
	movl	$2, -76(%rbp)
	.loc 3 383 26
	cmpb	$0, -152(%rbp)
	je	.L55
	.loc 3 385 37
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	.loc 3 385 32
	movzbl	(%rax), %eax
	.loc 3 385 30
	movb	%al, -83(%rbp)
	.loc 3 386 27
	jmp	.L56
.L55:
	.loc 3 392 22
	cmpb	$0, -140(%rbp)
	je	.L54
	.loc 3 392 33 discriminator 1
	movzbl	-144(%rbp), %eax
	xorl	$1, %eax
	.loc 3 392 30 discriminator 1
	testb	%al, %al
	je	.L54
	.loc 3 394 23
	call	next_line_num
	.loc 3 395 31
	movq	line_num_print(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	.loc 3 395 29
	movq	%rax, -72(%rbp)
.L54:
	.loc 3 401 18
	cmpb	$0, -148(%rbp)
	je	.L57
	.loc 3 402 23
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 402 26
	movb	$36, (%rax)
.L57:
	.loc 3 406 21
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 406 24
	movb	$10, (%rax)
.L52:
	.loc 3 408 21
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	.loc 3 408 16
	movzbl	(%rax), %eax
	.loc 3 408 14
	movb	%al, -83(%rbp)
.L56:
	.loc 3 410 7
	cmpb	$10, -83(%rbp)
	je	.L58
	.loc 3 414 10
	cmpl	$0, -76(%rbp)
	js	.L59
	.loc 3 414 25 discriminator 1
	cmpb	$0, -140(%rbp)
	je	.L59
	.loc 3 416 11
	call	next_line_num
	.loc 3 417 19
	movq	line_num_print(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	.loc 3 417 17
	movq	%rax, -72(%rbp)
.L59:
	.loc 3 428 10
	cmpb	$0, -132(%rbp)
	je	.L60
.L70:
	.loc 3 432 18
	cmpb	$31, -83(%rbp)
	jbe	.L61
	.loc 3 434 22
	cmpb	$126, -83(%rbp)
	ja	.L62
	.loc 3 435 27
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 435 30
	movzbl	-83(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L63
.L62:
	.loc 3 436 27
	cmpb	$127, -83(%rbp)
	jne	.L64
	.loc 3 438 29
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 438 32
	movb	$94, (%rax)
	.loc 3 439 29
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 439 32
	movb	$63, (%rax)
	jmp	.L63
.L64:
	.loc 3 443 29
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 443 32
	movb	$77, (%rax)
	.loc 3 444 29
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 444 32
	movb	$45, (%rax)
	.loc 3 445 26
	cmpb	$-97, -83(%rbp)
	jbe	.L65
	.loc 3 447 30
	cmpb	$-1, -83(%rbp)
	je	.L66
	.loc 3 448 43
	movzbl	-83(%rbp), %eax
	leal	-128(%rax), %ecx
	.loc 3 448 35
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 448 43
	movl	%ecx, %edx
	.loc 3 448 38
	movb	%dl, (%rax)
	jmp	.L63
.L66:
	.loc 3 451 37
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 451 40
	movb	$94, (%rax)
	.loc 3 452 37
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 452 40
	movb	$63, (%rax)
	jmp	.L63
.L65:
	.loc 3 457 33
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 457 36
	movb	$94, (%rax)
	.loc 3 458 47
	movzbl	-83(%rbp), %eax
	leal	-64(%rax), %ecx
	.loc 3 458 33
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 458 47
	movl	%ecx, %edx
	.loc 3 458 36
	movb	%dl, (%rax)
	jmp	.L63
.L61:
	.loc 3 462 23
	cmpb	$9, -83(%rbp)
	jne	.L67
	.loc 3 462 38 discriminator 1
	movzbl	-136(%rbp), %eax
	xorl	$1, %eax
	.loc 3 462 35 discriminator 1
	testb	%al, %al
	je	.L67
	.loc 3 463 23
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 463 26
	movb	$9, (%rax)
	jmp	.L63
.L67:
	.loc 3 464 23
	cmpb	$10, -83(%rbp)
	jne	.L68
	.loc 3 466 28
	movl	$-1, -76(%rbp)
	.loc 3 467 19
	jmp	.L71
.L68:
	.loc 3 471 25
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 471 28
	movb	$94, (%rax)
	.loc 3 472 33
	movzbl	-83(%rbp), %eax
	leal	64(%rax), %ecx
	.loc 3 472 25
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 472 33
	movl	%ecx, %edx
	.loc 3 472 28
	movb	%dl, (%rax)
.L63:
	.loc 3 475 25
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	.loc 3 475 20
	movzbl	(%rax), %eax
	.loc 3 475 18
	movb	%al, -83(%rbp)
	.loc 3 432 18
	jmp	.L70
.L60:
	.loc 3 483 18
	cmpb	$9, -83(%rbp)
	jne	.L72
	.loc 3 483 30 discriminator 1
	cmpb	$0, -136(%rbp)
	je	.L72
	.loc 3 485 25
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 485 28
	movb	$94, (%rax)
	.loc 3 486 33
	movzbl	-83(%rbp), %eax
	leal	64(%rax), %ecx
	.loc 3 486 25
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 486 33
	movl	%ecx, %edx
	.loc 3 486 28
	movb	%dl, (%rax)
	jmp	.L73
.L72:
	.loc 3 488 23
	cmpb	$10, -83(%rbp)
	je	.L74
	.loc 3 489 23
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 3 489 26
	movzbl	-83(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L73
.L74:
	.loc 3 492 28
	movl	$-1, -76(%rbp)
	.loc 3 493 19
	jmp	.L71
.L73:
	.loc 3 496 25
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	.loc 3 496 20
	movzbl	(%rax), %eax
	.loc 3 496 18
	movb	%al, -83(%rbp)
	.loc 3 483 18
	jmp	.L60
.L71:
	.loc 3 274 9 discriminator 3
	jmp	.L58
.L53:
	.loc 3 500 1 discriminator 4
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L75
	.loc 3 500 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L75:
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	cat, .-cat
	.section	.rodata
.LC31:
	.string	"/usr/local/share/locale"
.LC32:
	.string	"Richard M. Stallman"
.LC33:
	.string	"Torbjorn Granlund"
.LC34:
	.string	"benstuvAET"
.LC35:
	.string	"standard output"
.LC36:
	.string	"-"
.LC37:
	.string	"%s: input file is output file"
.LC38:
	.string	"closing standard input"
	.text
	.globl	main
	.type	main, @function
main:
.LFB56:
	.loc 3 504 1 is_stmt 1
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
	subq	$280, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -292(%rbp)
	movq	%rsi, -304(%rbp)
	.loc 3 504 1
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	.loc 3 511 22
	call	getpagesize@PLT
	.loc 3 511 10
	cltq
	movq	%rax, -256(%rbp)
	.loc 3 519 8
	movb	$1, -285(%rbp)
	.loc 3 535 8
	movb	$0, -284(%rbp)
	.loc 3 540 8
	movb	$0, -283(%rbp)
	.loc 3 541 8
	movb	$0, -282(%rbp)
	.loc 3 542 8
	movb	$0, -281(%rbp)
	.loc 3 543 8
	movb	$0, -280(%rbp)
	.loc 3 544 8
	movb	$0, -279(%rbp)
	.loc 3 545 8
	movb	$0, -278(%rbp)
	.loc 3 546 7
	movl	$0, -272(%rbp)
	.loc 3 563 3
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 3 564 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 3 565 3
	leaq	.LC31(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 3 566 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 3 572 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 3 576 9
	jmp	.L77
.L93:
	.loc 3 579 7
	cmpl	$118, -268(%rbp)
	jg	.L78
	cmpl	$65, -268(%rbp)
	jge	.L79
	cmpl	$-131, -268(%rbp)
	je	.L80
	cmpl	$-130, -268(%rbp)
	je	.L81
	jmp	.L78
.L79:
	movl	-268(%rbp), %eax
	subl	$65, %eax
	cmpl	$53, %eax
	ja	.L78
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L83(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L83(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L83:
	.long	.L92-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L91-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L90-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L89-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L88-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L87-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L86-.L83
	.long	.L85-.L83
	.long	.L77-.L83
	.long	.L82-.L83
	.text
.L89:
	.loc 3 582 18
	movb	$1, -283(%rbp)
	.loc 3 583 27
	movb	$1, -282(%rbp)
	.loc 3 584 11
	jmp	.L77
.L88:
	.loc 3 587 21
	movb	$1, -280(%rbp)
	.loc 3 588 28
	movb	$1, -279(%rbp)
	.loc 3 589 11
	jmp	.L77
.L87:
	.loc 3 592 18
	movb	$1, -283(%rbp)
	.loc 3 593 11
	jmp	.L77
.L86:
	.loc 3 596 25
	movb	$1, -281(%rbp)
	.loc 3 597 11
	jmp	.L77
.L85:
	.loc 3 600 21
	movb	$1, -278(%rbp)
	.loc 3 601 28
	movb	$1, -279(%rbp)
	.loc 3 602 11
	jmp	.L77
.L82:
	.loc 3 609 28
	movb	$1, -279(%rbp)
	.loc 3 610 11
	jmp	.L77
.L92:
	.loc 3 613 28
	movb	$1, -279(%rbp)
	.loc 3 614 21
	movb	$1, -280(%rbp)
	.loc 3 615 21
	movb	$1, -278(%rbp)
	.loc 3 616 11
	jmp	.L77
.L91:
	.loc 3 619 21
	movb	$1, -280(%rbp)
	.loc 3 620 11
	jmp	.L77
.L90:
	.loc 3 623 21
	movb	$1, -278(%rbp)
	.loc 3 624 11
	jmp	.L77
.L81:
	.loc 3 626 9
	movl	$0, %edi
	call	usage
.L80:
	.loc 3 628 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC32(%rip), %r9
	leaq	.LC33(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L78:
	.loc 3 631 11
	movl	$1, %edi
	call	usage
.L77:
	.loc 3 576 15
	movq	-304(%rbp), %rsi
	movl	-292(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options.6358(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -268(%rbp)
	.loc 3 576 9
	cmpl	$-1, -268(%rbp)
	jne	.L93
	.loc 3 637 7
	leaq	-208(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	fstat@PLT
	.loc 3 637 6
	testl	%eax, %eax
	jns	.L94
.LBB8:
	.loc 3 638 5
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L94:
.LBE8:
	.loc 3 640 13
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	pushq	-104(%rbp)
	pushq	-112(%rbp)
	pushq	-120(%rbp)
	pushq	-128(%rbp)
	pushq	-136(%rbp)
	pushq	-144(%rbp)
	pushq	-152(%rbp)
	pushq	-160(%rbp)
	pushq	-168(%rbp)
	pushq	-176(%rbp)
	pushq	-184(%rbp)
	pushq	-192(%rbp)
	pushq	-200(%rbp)
	pushq	-208(%rbp)
	call	io_blksize
	addq	$144, %rsp
	movq	%rax, -248(%rbp)
	.loc 3 641 11
	movq	-208(%rbp), %rax
	movq	%rax, -240(%rbp)
	.loc 3 642 11
	movq	-200(%rbp), %rax
	movq	%rax, -232(%rbp)
	.loc 3 643 15
	movl	-184(%rbp), %eax
	andl	$61440, %eax
	.loc 3 643 13
	cmpl	$32768, %eax
	sete	%al
	movb	%al, -277(%rbp)
	.loc 3 645 10
	movzbl	-283(%rbp), %eax
	xorl	$1, %eax
	.loc 3 645 6
	testb	%al, %al
	je	.L95
	.loc 3 645 17 discriminator 1
	movzbl	-280(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L95
	.loc 3 645 30 discriminator 2
	movzbl	-281(%rbp), %eax
	xorl	$1, %eax
	.loc 3 645 7 discriminator 2
	testb	%al, %al
	je	.L95
	.loc 3 648 7
	movl	$0, %esi
	movl	$1, %edi
	call	xset_binary_mode@PLT
.L95:
	.loc 3 655 10
	leaq	.LC36(%rip), %rax
	movq	%rax, infile(%rip)
	.loc 3 656 10
	movl	optind(%rip), %eax
	movl	%eax, -276(%rbp)
.L105:
	.loc 3 660 10
	movl	-276(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.L96
	.loc 3 661 22
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 3 661 16
	movq	%rax, infile(%rip)
.L96:
	.loc 3 663 11
	movq	infile(%rip), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 663 10
	testl	%eax, %eax
	jne	.L97
	.loc 3 665 27
	movb	$1, -284(%rbp)
	.loc 3 666 22
	movl	$0, input_desc(%rip)
	jmp	.L98
.L97:
	.loc 3 672 24
	movq	infile(%rip), %rax
	movl	-272(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	.loc 3 672 22
	movl	%eax, input_desc(%rip)
	.loc 3 673 26
	movl	input_desc(%rip), %eax
	.loc 3 673 14
	testl	%eax, %eax
	jns	.L98
	.loc 3 675 15
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 675 25
	call	__errno_location@PLT
	.loc 3 675 15
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 676 18
	movb	$0, -285(%rbp)
	.loc 3 677 15
	jmp	.L99
.L98:
	.loc 3 681 11
	movl	input_desc(%rip), %eax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 3 681 10
	testl	%eax, %eax
	jns	.L100
	.loc 3 683 11
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 683 21
	call	__errno_location@PLT
	.loc 3 683 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 684 14
	movb	$0, -285(%rbp)
	.loc 3 685 11
	jmp	.L101
.L100:
	.loc 3 687 16
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	pushq	-104(%rbp)
	pushq	-112(%rbp)
	pushq	-120(%rbp)
	pushq	-128(%rbp)
	pushq	-136(%rbp)
	pushq	-144(%rbp)
	pushq	-152(%rbp)
	pushq	-160(%rbp)
	pushq	-168(%rbp)
	pushq	-176(%rbp)
	pushq	-184(%rbp)
	pushq	-192(%rbp)
	pushq	-200(%rbp)
	pushq	-208(%rbp)
	call	io_blksize
	addq	$144, %rsp
	movq	%rax, -224(%rbp)
	.loc 3 689 7
	movl	input_desc(%rip), %eax
	movl	$2, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	fdadvise@PLT
	.loc 3 695 10
	cmpb	$0, -277(%rbp)
	je	.L102
	.loc 3 696 22
	movq	-208(%rbp), %rax
	.loc 3 696 11
	cmpq	%rax, -240(%rbp)
	jne	.L102
	.loc 3 696 52 discriminator 1
	movq	-200(%rbp), %rax
	.loc 3 696 41 discriminator 1
	cmpq	%rax, -232(%rbp)
	jne	.L102
	.loc 3 697 14
	movl	input_desc(%rip), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 3 697 56
	movq	-160(%rbp), %rdx
	.loc 3 697 11
	cmpq	%rdx, %rax
	jge	.L102
	.loc 3 699 11
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 699 24
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 3 699 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 700 14
	movb	$0, -285(%rbp)
	.loc 3 701 11
	jmp	.L101
.L102:
	.loc 3 707 14
	movzbl	-283(%rbp), %eax
	xorl	$1, %eax
	.loc 3 707 10
	testb	%al, %al
	je	.L103
	.loc 3 707 21 discriminator 1
	movzbl	-280(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L103
	.loc 3 707 34 discriminator 2
	movzbl	-279(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L103
	.loc 3 708 14
	movzbl	-278(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L103
	.loc 3 708 27 discriminator 1
	movzbl	-281(%rbp), %eax
	xorl	$1, %eax
	.loc 3 707 11 discriminator 1
	testb	%al, %al
	je	.L103
	.loc 3 710 18
	movq	-224(%rbp), %rax
	cmpq	%rax, -248(%rbp)
	cmovnb	-248(%rbp), %rax
	movq	%rax, -224(%rbp)
	.loc 3 711 35
	movq	-224(%rbp), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 711 19
	subq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -264(%rbp)
	.loc 3 713 29
	movq	-256(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ptr_align
	movq	%rax, %rdx
	.loc 3 713 17
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	simple_cat
	.loc 3 713 14
	movzbl	-285(%rbp), %edx
	.loc 3 713 17
	movzbl	%al, %eax
	.loc 3 713 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -285(%rbp)
	.loc 3 713 11
	jmp	.L104
.L103:
	.loc 3 717 19
	movq	-224(%rbp), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -264(%rbp)
	.loc 3 741 50
	movq	-224(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	.loc 3 741 41
	movq	-248(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 742 29
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 741 20
	addq	$18, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -216(%rbp)
	.loc 3 744 17
	movzbl	-281(%rbp), %r14d
	movzbl	-280(%rbp), %r13d
	movzbl	-282(%rbp), %r12d
	movzbl	-283(%rbp), %ebx
	movzbl	-278(%rbp), %eax
	movl	%eax, -296(%rbp)
	movzbl	-279(%rbp), %ecx
	movl	%ecx, -308(%rbp)
	.loc 3 745 22
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ptr_align
	movq	%rax, %r15
	.loc 3 744 22
	movq	-256(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ptr_align
	movq	%rax, %rdi
	.loc 3 744 17
	movq	-248(%rbp), %rdx
	movq	-224(%rbp), %rax
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movl	-296(%rbp), %r9d
	movl	-308(%rbp), %r8d
	movq	%rdx, %rcx
	movq	%r15, %rdx
	movq	%rax, %rsi
	call	cat
	addq	$32, %rsp
	.loc 3 744 14
	movzbl	-285(%rbp), %edx
	.loc 3 744 17
	movzbl	%al, %eax
	.loc 3 744 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -285(%rbp)
	.loc 3 749 11
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L104:
	.loc 3 752 7
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L101:
	.loc 3 755 12
	movq	infile(%rip), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 755 10
	testl	%eax, %eax
	je	.L99
	.loc 3 755 35 discriminator 1
	movl	input_desc(%rip), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 755 32 discriminator 1
	testl	%eax, %eax
	jns	.L99
	.loc 3 757 11
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 757 21
	call	__errno_location@PLT
	.loc 3 757 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 758 14
	movb	$0, -285(%rbp)
.L99:
	.loc 3 761 3
	addl	$1, -276(%rbp)
	movl	-276(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jl	.L105
	.loc 3 763 6
	cmpb	$0, -284(%rbp)
	je	.L106
	.loc 3 763 26 discriminator 1
	movl	$0, %edi
	call	close@PLT
	.loc 3 763 23 discriminator 1
	testl	%eax, %eax
	jns	.L106
.LBB9:
	.loc 3 764 5
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
.L106:
.LBE9:
	.loc 3 766 28
	movzbl	-285(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 3 767 1
	movq	-56(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
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
.LFE56:
	.size	main, .-main
	.section	.rodata
.LC39:
	.string	"number-nonblank"
.LC40:
	.string	"number"
.LC41:
	.string	"squeeze-blank"
.LC42:
	.string	"show-nonprinting"
.LC43:
	.string	"show-ends"
.LC44:
	.string	"show-tabs"
.LC45:
	.string	"show-all"
.LC46:
	.string	"help"
.LC47:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options.6358, @object
	.size	long_options.6358, 320
long_options.6358:
	.quad	.LC39
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC40
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC41
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC42
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC43
	.long	0
	.zero	4
	.quad	0
	.long	69
	.zero	4
	.quad	.LC44
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC45
	.long	0
	.zero	4
	.quad	0
	.long	65
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
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 13 "./lib/sys/select.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 18 "/usr/include/signal.h"
	.file 19 "/usr/include/unistd.h"
	.file 20 "/usr/include/errno.h"
	.file 21 "src/version.h"
	.file 22 "./lib/exitfail.h"
	.file 23 "./lib/timespec.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/fadvise.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe7f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF195
	.byte	0xc
	.long	.LASF196
	.long	.LASF197
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
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
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF14
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF15
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0xae
	.byte	0x1d
	.long	0x71
	.uleb128 0x2
	.long	.LASF18
	.byte	0x5
	.byte	0xb3
	.byte	0x1c
	.long	0x71
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.byte	0xc4
	.byte	0x21
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x10e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x8
	.long	0x10e
	.uleb128 0x9
	.long	.LASF66
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x2a1
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x108
	.byte	0x8
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x108
	.byte	0x10
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x108
	.byte	0x18
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x108
	.byte	0x20
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x108
	.byte	0x28
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x108
	.byte	0x30
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x108
	.byte	0x38
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x108
	.byte	0x40
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x108
	.byte	0x48
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x108
	.byte	0x50
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x108
	.byte	0x58
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x2ba
	.byte	0x60
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x2c0
	.byte	0x68
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0xc0
	.byte	0x78
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x2c6
	.byte	0x83
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x2d6
	.byte	0x88
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xcc
	.byte	0x90
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x2e1
	.byte	0x98
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x2ec
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x2c0
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x2f2
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x11a
	.uleb128 0xb
	.long	.LASF198
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF51
	.uleb128 0x7
	.byte	0x8
	.long	0x2b5
	.uleb128 0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0xd
	.long	0x10e
	.long	0x2d6
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2ad
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x7
	.byte	0x8
	.long	0x2dc
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2e7
	.uleb128 0xd
	.long	0x10e
	.long	0x302
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x115
	.uleb128 0x8
	.long	0x302
	.uleb128 0xf
	.long	.LASF54
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x319
	.uleb128 0x7
	.byte	0x8
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF55
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x319
	.uleb128 0xf
	.long	.LASF56
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x319
	.uleb128 0xf
	.long	.LASF57
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x308
	.long	0x34e
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x343
	.uleb128 0xf
	.long	.LASF58
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x34e
	.uleb128 0xf
	.long	.LASF59
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x34e
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF62
	.uleb128 0x2
	.long	.LASF63
	.byte	0xa
	.byte	0x2f
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.long	.LASF64
	.byte	0xa
	.byte	0x3b
	.byte	0x11
	.long	0x78
	.uleb128 0x2
	.long	.LASF65
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0xd8
	.uleb128 0x9
	.long	.LASF67
	.byte	0x10
	.byte	0xc
	.byte	0xa
	.byte	0x8
	.long	0x3d1
	.uleb128 0xa
	.long	.LASF68
	.byte	0xc
	.byte	0xc
	.byte	0xc
	.long	0xd8
	.byte	0
	.uleb128 0xa
	.long	.LASF69
	.byte	0xc
	.byte	0x10
	.byte	0x15
	.long	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF70
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF71
	.uleb128 0xf
	.long	.LASF72
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF73
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF74
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF75
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF76
	.byte	0x20
	.byte	0xf
	.byte	0x32
	.byte	0x8
	.long	0x457
	.uleb128 0xa
	.long	.LASF77
	.byte	0xf
	.byte	0x34
	.byte	0xf
	.long	0x302
	.byte	0
	.uleb128 0xa
	.long	.LASF78
	.byte	0xf
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF79
	.byte	0xf
	.byte	0x38
	.byte	0x8
	.long	0x45c
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xf
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x415
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0x108
	.long	0x472
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x462
	.uleb128 0xf
	.long	.LASF81
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF82
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF83
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x462
	.uleb128 0xf
	.long	.LASF84
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF85
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF86
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF87
	.byte	0x90
	.byte	0x11
	.byte	0x2e
	.byte	0x8
	.long	0x598
	.uleb128 0xa
	.long	.LASF88
	.byte	0x11
	.byte	0x30
	.byte	0xd
	.long	0x78
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x11
	.byte	0x35
	.byte	0xd
	.long	0x9c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF90
	.byte	0x11
	.byte	0x3d
	.byte	0xf
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF91
	.byte	0x11
	.byte	0x3e
	.byte	0xe
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF92
	.byte	0x11
	.byte	0x40
	.byte	0xd
	.long	0x84
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF93
	.byte	0x11
	.byte	0x41
	.byte	0xd
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF94
	.byte	0x11
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF95
	.byte	0x11
	.byte	0x45
	.byte	0xd
	.long	0x78
	.byte	0x28
	.uleb128 0xa
	.long	.LASF96
	.byte	0x11
	.byte	0x4a
	.byte	0xd
	.long	0xc0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF97
	.byte	0x11
	.byte	0x4e
	.byte	0x11
	.long	0xe4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF98
	.byte	0x11
	.byte	0x50
	.byte	0x10
	.long	0xf0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF99
	.byte	0x11
	.byte	0x5b
	.byte	0x15
	.long	0x3a9
	.byte	0x48
	.uleb128 0xa
	.long	.LASF100
	.byte	0x11
	.byte	0x5c
	.byte	0x15
	.long	0x3a9
	.byte	0x58
	.uleb128 0xa
	.long	.LASF101
	.byte	0x11
	.byte	0x5d
	.byte	0x15
	.long	0x3a9
	.byte	0x68
	.uleb128 0xa
	.long	.LASF102
	.byte	0x11
	.byte	0x6a
	.byte	0x17
	.long	0x598
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0xfc
	.long	0x5a8
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x5a8
	.uleb128 0xd
	.long	0x308
	.long	0x5bf
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5af
	.uleb128 0x11
	.long	.LASF103
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x5bf
	.uleb128 0x11
	.long	.LASF104
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x5bf
	.uleb128 0x11
	.long	.LASF105
	.byte	0x13
	.value	0x21f
	.byte	0xf
	.long	0x5eb
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0x11
	.long	.LASF106
	.byte	0x13
	.value	0x221
	.byte	0xf
	.long	0x5eb
	.uleb128 0xf
	.long	.LASF107
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF108
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0x108
	.uleb128 0x7
	.byte	0x8
	.long	0x61c
	.uleb128 0x14
	.uleb128 0xf
	.long	.LASF109
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0x302
	.uleb128 0xf
	.long	.LASF110
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x29
	.byte	0x6
	.long	0x64d
	.uleb128 0x16
	.long	.LASF111
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x2a
	.byte	0x6
	.long	0x662
	.uleb128 0x17
	.long	.LASF112
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x680
	.uleb128 0x19
	.long	.LASF113
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF114
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x115
	.long	0x68b
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x680
	.uleb128 0xf
	.long	.LASF115
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x68b
	.uleb128 0xf
	.long	.LASF116
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0x302
	.uleb128 0x1a
	.long	.LASF199
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x6fd
	.uleb128 0x17
	.long	.LASF117
	.byte	0
	.uleb128 0x17
	.long	.LASF118
	.byte	0x1
	.uleb128 0x17
	.long	.LASF119
	.byte	0x2
	.uleb128 0x17
	.long	.LASF120
	.byte	0x3
	.uleb128 0x17
	.long	.LASF121
	.byte	0x4
	.uleb128 0x17
	.long	.LASF122
	.byte	0x5
	.uleb128 0x17
	.long	.LASF123
	.byte	0x6
	.uleb128 0x17
	.long	.LASF124
	.byte	0x7
	.uleb128 0x17
	.long	.LASF125
	.byte	0x8
	.uleb128 0x17
	.long	.LASF126
	.byte	0x9
	.uleb128 0x17
	.long	.LASF127
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x6a8
	.uleb128 0x11
	.long	.LASF128
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x34e
	.uleb128 0xd
	.long	0x6fd
	.long	0x71a
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x70f
	.uleb128 0x11
	.long	.LASF129
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x71a
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x49
	.byte	0x6
	.long	0x744
	.uleb128 0x16
	.long	.LASF130
	.long	0x20000
	.byte	0
	.uleb128 0xf
	.long	.LASF131
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x5a9
	.uleb128 0xf
	.long	.LASF132
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF133
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x2d
	.byte	0xe
	.long	0x79b
	.uleb128 0x17
	.long	.LASF134
	.byte	0
	.uleb128 0x17
	.long	.LASF135
	.byte	0x2
	.uleb128 0x17
	.long	.LASF136
	.byte	0x5
	.uleb128 0x17
	.long	.LASF137
	.byte	0x4
	.uleb128 0x17
	.long	.LASF138
	.byte	0x3
	.uleb128 0x17
	.long	.LASF139
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.long	.LASF140
	.byte	0x3
	.byte	0x34
	.byte	0x14
	.long	0x302
	.uleb128 0x9
	.byte	0x3
	.quad	infile
	.uleb128 0x1b
	.long	.LASF141
	.byte	0x3
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	input_desc
	.uleb128 0x1b
	.long	.LASF142
	.byte	0x3
	.byte	0x3d
	.byte	0xd
	.long	0x2f2
	.uleb128 0x9
	.byte	0x3
	.quad	line_buf
	.uleb128 0x1b
	.long	.LASF143
	.byte	0x3
	.byte	0x46
	.byte	0xe
	.long	0x108
	.uleb128 0x9
	.byte	0x3
	.quad	line_num_print
	.uleb128 0x1b
	.long	.LASF144
	.byte	0x3
	.byte	0x49
	.byte	0xe
	.long	0x108
	.uleb128 0x9
	.byte	0x3
	.quad	line_num_start
	.uleb128 0x1b
	.long	.LASF145
	.byte	0x3
	.byte	0x4c
	.byte	0xe
	.long	0x108
	.uleb128 0x9
	.byte	0x3
	.quad	line_num_end
	.uleb128 0x1b
	.long	.LASF146
	.byte	0x3
	.byte	0x4f
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	newlines2
	.uleb128 0x1c
	.long	.LASF183
	.byte	0x3
	.value	0x1f7
	.byte	0x1
	.long	0x65
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xa16
	.uleb128 0x1d
	.long	.LASF147
	.byte	0x3
	.value	0x1f7
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x1d
	.long	.LASF148
	.byte	0x3
	.value	0x1f7
	.byte	0x18
	.long	0x5eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1e
	.long	.LASF149
	.byte	0x3
	.value	0x1fa
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x3
	.value	0x1fd
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1e
	.long	.LASF151
	.byte	0x3
	.value	0x1ff
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x3
	.value	0x202
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1e
	.long	.LASF153
	.byte	0x3
	.value	0x205
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1f
	.string	"ok"
	.byte	0x3
	.value	0x207
	.byte	0x8
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -301
	.uleb128 0x1f
	.string	"c"
	.byte	0x3
	.value	0x208
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x1e
	.long	.LASF154
	.byte	0x3
	.value	0x20b
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x3
	.value	0x20e
	.byte	0x9
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1e
	.long	.LASF156
	.byte	0x3
	.value	0x211
	.byte	0x9
	.long	0x385
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x1e
	.long	.LASF157
	.byte	0x3
	.value	0x214
	.byte	0x8
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -293
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x3
	.value	0x217
	.byte	0x8
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x3
	.value	0x219
	.byte	0xf
	.long	0x4c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x3
	.value	0x21c
	.byte	0x8
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -299
	.uleb128 0x1e
	.long	.LASF161
	.byte	0x3
	.value	0x21d
	.byte	0x8
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -298
	.uleb128 0x1e
	.long	.LASF162
	.byte	0x3
	.value	0x21e
	.byte	0x8
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -297
	.uleb128 0x1e
	.long	.LASF163
	.byte	0x3
	.value	0x21f
	.byte	0x8
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1e
	.long	.LASF164
	.byte	0x3
	.value	0x220
	.byte	0x8
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -295
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x3
	.value	0x221
	.byte	0x8
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -294
	.uleb128 0x1e
	.long	.LASF166
	.byte	0x3
	.value	0x222
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x3
	.value	0x224
	.byte	0x1e
	.long	0xa2d
	.uleb128 0x9
	.byte	0x3
	.quad	long_options.6358
	.uleb128 0x20
	.long	.LASF200
	.byte	0x3
	.value	0x2f2
	.byte	0x5
	.quad	.L101
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF168
	.uleb128 0xd
	.long	0x457
	.long	0xa2d
	.uleb128 0xe
	.long	0x39
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.long	0xa1d
	.uleb128 0x22
	.string	"cat"
	.byte	0x3
	.byte	0xd8
	.byte	0x1
	.long	0xa16
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xbdf
	.uleb128 0x23
	.long	.LASF152
	.byte	0x3
	.byte	0xda
	.byte	0xc
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.long	.LASF150
	.byte	0x3
	.byte	0xdd
	.byte	0xd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.long	.LASF153
	.byte	0x3
	.byte	0xe0
	.byte	0xc
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.long	.LASF149
	.byte	0x3
	.byte	0xe3
	.byte	0xd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.long	.LASF164
	.byte	0x3
	.byte	0xe6
	.byte	0xb
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x23
	.long	.LASF165
	.byte	0x3
	.byte	0xe7
	.byte	0xb
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.long	.LASF160
	.byte	0x3
	.byte	0xe8
	.byte	0xb
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x23
	.long	.LASF161
	.byte	0x3
	.byte	0xe9
	.byte	0xb
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	.LASF163
	.byte	0x3
	.byte	0xea
	.byte	0xb
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x23
	.long	.LASF162
	.byte	0x3
	.byte	0xeb
	.byte	0xb
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.string	"ch"
	.byte	0x3
	.byte	0xee
	.byte	0x11
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -99
	.uleb128 0x1b
	.long	.LASF169
	.byte	0x3
	.byte	0xf1
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"eob"
	.byte	0x3
	.byte	0xf5
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF170
	.byte	0x3
	.byte	0xf8
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF171
	.byte	0x3
	.byte	0xfb
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x3
	.value	0x102
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x3
	.value	0x107
	.byte	0x8
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xbaa
	.uleb128 0x1f
	.string	"wp"
	.byte	0x3
	.value	0x11a
	.byte	0x15
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x3
	.value	0x11b
	.byte	0x16
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0x26
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x3
	.value	0x130
	.byte	0x14
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x1e
	.long	.LASF176
	.byte	0x3
	.value	0x132
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF180
	.byte	0x3
	.byte	0xc5
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xc3c
	.uleb128 0x23
	.long	.LASF153
	.byte	0x3
	.byte	0xc5
	.byte	0x16
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF170
	.byte	0x3
	.byte	0xc5
	.byte	0x25
	.long	0x5eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x3
	.byte	0xc7
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x28
	.long	.LASF178
	.byte	0x3
	.byte	0x98
	.byte	0x1
	.long	0xa16
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xcbc
	.uleb128 0x29
	.string	"buf"
	.byte	0x3
	.byte	0x9a
	.byte	0xc
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF179
	.byte	0x3
	.byte	0x9e
	.byte	0xd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF171
	.byte	0x3
	.byte	0xa1
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x24
	.string	"n"
	.byte	0x3
	.byte	0xb9
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF181
	.byte	0x3
	.byte	0x82
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xcea
	.uleb128 0x1b
	.long	.LASF182
	.byte	0x3
	.byte	0x84
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF184
	.byte	0x3
	.byte	0x52
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xd18
	.uleb128 0x23
	.long	.LASF185
	.byte	0x3
	.byte	0x52
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2c
	.long	.LASF186
	.byte	0x2
	.byte	0x4b
	.byte	0x1
	.long	0x2d
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xd49
	.uleb128 0x29
	.string	"sb"
	.byte	0x2
	.byte	0x4b
	.byte	0x19
	.long	0x4c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LASF187
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xdee
	.uleb128 0x1d
	.long	.LASF188
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.long	.LASF189
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xda4
	.uleb128 0x2f
	.long	.LASF188
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x302
	.byte	0
	.uleb128 0x2f
	.long	.LASF190
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x302
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xd79
	.uleb128 0x1e
	.long	.LASF189
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xdfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF190
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF191
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xe03
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF192
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xda4
	.long	0xdfe
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xdee
	.uleb128 0x7
	.byte	0x8
	.long	0xda4
	.uleb128 0x30
	.long	.LASF201
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF193
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.long	0x47
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.value	0x1f5
	.byte	0x18
	.long	0x616
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF194
	.byte	0x1
	.value	0x1f5
	.byte	0x24
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"p0"
	.byte	0x1
	.value	0x1f7
	.byte	0xf
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"p1"
	.byte	0x1
	.value	0x1f8
	.byte	0xf
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x8
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
	.uleb128 0x24
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2a
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x5
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF110:
	.string	"exit_failure"
.LASF176:
	.string	"n_to_read"
.LASF10:
	.string	"__gid_t"
.LASF135:
	.string	"FADVISE_SEQUENTIAL"
.LASF125:
	.string	"locale_quoting_style"
.LASF34:
	.string	"_chain"
.LASF101:
	.string	"st_ctim"
.LASF124:
	.string	"escape_quoting_style"
.LASF114:
	.string	"GETOPT_VERSION_CHAR"
.LASF173:
	.string	"use_fionread"
.LASF199:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF149:
	.string	"outsize"
.LASF112:
	.string	"LOG10_TIMESPEC_HZ"
.LASF40:
	.string	"_shortbuf"
.LASF162:
	.string	"squeeze_blank"
.LASF119:
	.string	"shell_always_quoting_style"
.LASF118:
	.string	"shell_quoting_style"
.LASF141:
	.string	"input_desc"
.LASF113:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF71:
	.string	"long long unsigned int"
.LASF26:
	.string	"_IO_write_ptr"
.LASF184:
	.string	"usage"
.LASF171:
	.string	"n_read"
.LASF87:
	.string	"stat"
.LASF61:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF129:
	.string	"quoting_style_vals"
.LASF14:
	.string	"__off_t"
.LASF188:
	.string	"program"
.LASF18:
	.string	"__blkcnt_t"
.LASF12:
	.string	"__mode_t"
.LASF181:
	.string	"next_line_num"
.LASF172:
	.string	"newlines"
.LASF117:
	.string	"literal_quoting_style"
.LASF35:
	.string	"_fileno"
.LASF23:
	.string	"_IO_read_end"
.LASF82:
	.string	"__timezone"
.LASF186:
	.string	"io_blksize"
.LASF104:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF70:
	.string	"_gl_cxxalias_dummy"
.LASF167:
	.string	"long_options"
.LASF140:
	.string	"infile"
.LASF201:
	.string	"emit_stdin_note"
.LASF44:
	.string	"_wide_data"
.LASF152:
	.string	"inbuf"
.LASF29:
	.string	"_IO_buf_end"
.LASF38:
	.string	"_cur_column"
.LASF108:
	.string	"program_invocation_short_name"
.LASF122:
	.string	"c_quoting_style"
.LASF144:
	.string	"line_num_start"
.LASF52:
	.string	"_IO_codecvt"
.LASF60:
	.string	"_sys_errlist"
.LASF179:
	.string	"bufsize"
.LASF107:
	.string	"program_invocation_name"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF66:
	.string	"_IO_FILE"
.LASF200:
	.string	"contin"
.LASF175:
	.string	"input_pending"
.LASF170:
	.string	"bpout"
.LASF111:
	.string	"TIMESPEC_HZ"
.LASF94:
	.string	"__pad0"
.LASF121:
	.string	"shell_escape_always_quoting_style"
.LASF85:
	.string	"timezone"
.LASF98:
	.string	"st_blocks"
.LASF116:
	.string	"program_name"
.LASF92:
	.string	"st_uid"
.LASF130:
	.string	"IO_BUFSIZE"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF46:
	.string	"_freeres_buf"
.LASF174:
	.string	"remaining_bytes"
.LASF0:
	.string	"long unsigned int"
.LASF146:
	.string	"newlines2"
.LASF77:
	.string	"name"
.LASF57:
	.string	"sys_nerr"
.LASF195:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF127:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF133:
	.string	"error_one_per_line"
.LASF109:
	.string	"Version"
.LASF155:
	.string	"out_dev"
.LASF30:
	.string	"_IO_save_base"
.LASF180:
	.string	"write_pending"
.LASF13:
	.string	"__nlink_t"
.LASF160:
	.string	"number"
.LASF106:
	.string	"environ"
.LASF166:
	.string	"file_open_mode"
.LASF41:
	.string	"_lock"
.LASF36:
	.string	"_flags2"
.LASF48:
	.string	"_mode"
.LASF55:
	.string	"stdout"
.LASF156:
	.string	"out_ino"
.LASF169:
	.string	"bpin"
.LASF115:
	.string	"version_etc_copyright"
.LASF165:
	.string	"show_tabs"
.LASF91:
	.string	"st_mode"
.LASF43:
	.string	"_codecvt"
.LASF72:
	.string	"optarg"
.LASF69:
	.string	"tv_nsec"
.LASF191:
	.string	"map_prog"
.LASF86:
	.string	"getdate_err"
.LASF27:
	.string	"_IO_write_end"
.LASF8:
	.string	"__dev_t"
.LASF73:
	.string	"optind"
.LASF19:
	.string	"__syscall_slong_t"
.LASF22:
	.string	"_IO_read_ptr"
.LASF164:
	.string	"show_nonprinting"
.LASF15:
	.string	"__off64_t"
.LASF198:
	.string	"_IO_lock_t"
.LASF159:
	.string	"stat_buf"
.LASF163:
	.string	"show_ends"
.LASF131:
	.string	"error_print_progname"
.LASF17:
	.string	"__blksize_t"
.LASF64:
	.string	"dev_t"
.LASF105:
	.string	"__environ"
.LASF65:
	.string	"time_t"
.LASF151:
	.string	"page_size"
.LASF58:
	.string	"sys_errlist"
.LASF194:
	.string	"alignment"
.LASF33:
	.string	"_markers"
.LASF150:
	.string	"insize"
.LASF102:
	.string	"__glibc_reserved"
.LASF90:
	.string	"st_nlink"
.LASF123:
	.string	"c_maybe_quoting_style"
.LASF168:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF190:
	.string	"node"
.LASF89:
	.string	"st_ino"
.LASF196:
	.string	"src/cat.c"
.LASF5:
	.string	"short int"
.LASF161:
	.string	"number_nonblank"
.LASF76:
	.string	"option"
.LASF97:
	.string	"st_blksize"
.LASF79:
	.string	"flag"
.LASF59:
	.string	"_sys_nerr"
.LASF67:
	.string	"timespec"
.LASF39:
	.string	"_vtable_offset"
.LASF83:
	.string	"tzname"
.LASF50:
	.string	"FILE"
.LASF139:
	.string	"FADVISE_RANDOM"
.LASF120:
	.string	"shell_escape_quoting_style"
.LASF11:
	.string	"__ino_t"
.LASF136:
	.string	"FADVISE_NOREUSE"
.LASF128:
	.string	"quoting_style_args"
.LASF75:
	.string	"optopt"
.LASF84:
	.string	"daylight"
.LASF193:
	.string	"ptr_align"
.LASF95:
	.string	"st_rdev"
.LASF62:
	.string	"long double"
.LASF20:
	.string	"char"
.LASF137:
	.string	"FADVISE_DONTNEED"
.LASF68:
	.string	"tv_sec"
.LASF142:
	.string	"line_buf"
.LASF16:
	.string	"__time_t"
.LASF126:
	.string	"clocale_quoting_style"
.LASF74:
	.string	"opterr"
.LASF9:
	.string	"__uid_t"
.LASF134:
	.string	"FADVISE_NORMAL"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF103:
	.string	"_sys_siglist"
.LASF158:
	.string	"have_read_stdin"
.LASF189:
	.string	"infomap"
.LASF93:
	.string	"st_gid"
.LASF78:
	.string	"has_arg"
.LASF182:
	.string	"endp"
.LASF47:
	.string	"__pad5"
.LASF153:
	.string	"outbuf"
.LASF178:
	.string	"simple_cat"
.LASF49:
	.string	"_unused2"
.LASF56:
	.string	"stderr"
.LASF99:
	.string	"st_atim"
.LASF148:
	.string	"argv"
.LASF81:
	.string	"__daylight"
.LASF185:
	.string	"status"
.LASF197:
	.string	"/root/coreutils"
.LASF88:
	.string	"st_dev"
.LASF145:
	.string	"line_num_end"
.LASF21:
	.string	"_flags"
.LASF31:
	.string	"_IO_backup_base"
.LASF96:
	.string	"st_size"
.LASF100:
	.string	"st_mtim"
.LASF132:
	.string	"error_message_count"
.LASF192:
	.string	"lc_messages"
.LASF177:
	.string	"n_write"
.LASF143:
	.string	"line_num_print"
.LASF147:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF53:
	.string	"_IO_wide_data"
.LASF138:
	.string	"FADVISE_WILLNEED"
.LASF80:
	.string	"__tzname"
.LASF183:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF187:
	.string	"emit_ancillary_info"
.LASF154:
	.string	"argind"
.LASF63:
	.string	"ino_t"
.LASF157:
	.string	"out_isreg"
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
