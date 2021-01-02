	.file	"head.c"
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
	je	.L13
	.loc 1 707 36 discriminator 2
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31 discriminator 2
	cmpl	$40960, %eax
	jne	.L14
.L13:
	.loc 1 708 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L15
.L14:
	.loc 1 708 31 discriminator 4
	movl	$0, %eax
.L15:
	.loc 1 708 31 discriminator 6
	andl	$1, %eax
	.loc 1 709 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	usable_st_size, .-usable_st_size
	.local	presume_input_pipe
	.comm	presume_input_pipe,1,1
	.local	print_headers
	.comm	print_headers,1,1
	.local	line_end
	.comm	line_end,1,1
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.section	.rodata
.LC20:
	.string	"bytes"
.LC21:
	.string	"lines"
.LC22:
	.string	"-presume-input-pipe"
.LC23:
	.string	"quiet"
.LC24:
	.string	"silent"
.LC25:
	.string	"verbose"
.LC26:
	.string	"zero-terminated"
.LC27:
	.string	"help"
.LC28:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 320
long_options:
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC28
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
.LC29:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC30:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC31:
	.string	"Print the first %d lines of each FILE to standard output.\nWith more than one FILE, precede each with a header giving the file name.\n"
	.align 8
.LC32:
	.ascii	"  -c, --bytes=[-]NUM       print the first NUM bytes of each"
	.ascii	" file;\n                             with the leading '-', p"
	.ascii	"rint all but the last\n"
	.string	"                             NUM bytes of each file\n  -n, --lines=[-]NUM       print the first NUM lines instead of the first %d;\n                             with the leading '-', print all but the last\n                             NUM lines of each file\n"
	.align 8
.LC33:
	.string	"  -q, --quiet, --silent    never print headers giving file names\n  -v, --verbose            always print headers giving file names\n"
	.align 8
.LC34:
	.string	"  -z, --zero-terminated    line delimiter is NUL, not newline\n"
	.align 8
.LC35:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC36:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC37:
	.string	"\nNUM may have a multiplier suffix:\nb 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024,\nGB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y.\nBinary prefixes can be used, too: KiB=K, MiB=M, and so on.\n"
.LC38:
	.string	"head"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.file 2 "src/head.c"
	.loc 2 105 1
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
	.loc 2 106 6
	cmpl	$0, -20(%rbp)
	je	.L18
	.loc 2 107 5
	movq	program_name(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L19
.L18:
	.loc 2 110 7
	movq	program_name(%rip), %rbx
	.loc 2 110 15
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	.loc 2 110 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 114 15
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 114 7
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 119 7
	call	emit_stdin_note
	.loc 2 120 7
	call	emit_mandatory_arg_note
	.loc 2 122 15
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 122 7
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 130 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 134 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 137 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 138 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 139 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 146 7
	leaq	.LC38(%rip), %rdi
	call	emit_ancillary_info
.L19:
	.loc 2 148 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.section	.rodata
.LC39:
	.string	"error reading %s"
.LC40:
	.string	"%s: file has shrunk too much"
	.text
	.type	diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
.LFB51:
	.loc 2 153 1
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
	movq	%rsi, -32(%rbp)
	.loc 2 154 3
	cmpl	$1, -20(%rbp)
	je	.L21
	cmpl	$2, -20(%rbp)
	je	.L22
	jmp	.L25
.L21:
	.loc 2 157 7
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 157 24
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 157 17
	call	__errno_location@PLT
	.loc 2 157 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 158 7
	jmp	.L24
.L22:
	.loc 2 160 7
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 160 24
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 160 17
	call	__errno_location@PLT
	.loc 2 160 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 161 7
	jmp	.L24
.L25:
	.loc 2 163 7
	call	abort@PLT
.L24:
	.loc 2 165 1
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	diagnose_copy_fd_failure, .-diagnose_copy_fd_failure
	.section	.rodata
.LC41:
	.string	"\n"
.LC42:
	.string	"%s==> %s <==\n"
	.text
	.type	write_header, @function
write_header:
.LFB52:
	.loc 2 169 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 172 41
	movzbl	first_file.6303(%rip), %eax
	.loc 2 172 3
	testb	%al, %al
	je	.L27
	.loc 2 172 3 is_stmt 0 discriminator 1
	leaq	.LC18(%rip), %rax
	jmp	.L28
.L27:
	.loc 2 172 3 discriminator 2
	leaq	.LC41(%rip), %rax
.L28:
	.loc 2 172 3 discriminator 4
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 173 14 is_stmt 1 discriminator 4
	movb	$0, first_file.6303(%rip)
	.loc 2 174 1 discriminator 4
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	write_header, .-write_header
	.section	.rodata
.LC43:
	.string	"standard output"
.LC44:
	.string	"error writing %s"
	.text
	.type	xwrite_stdout, @function
xwrite_stdout:
.LFB53:
	.loc 2 181 1
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
	.loc 2 182 6
	cmpq	$0, -32(%rbp)
	je	.L31
	.loc 2 182 22 discriminator 1
	movq	stdout(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 182 19 discriminator 1
	cmpq	%rax, -32(%rbp)
	jbe	.L31
.LBB2:
	.loc 2 184 7
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	.loc 2 185 7
	leaq	.LC43(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L31:
.LBE2:
	.loc 2 188 1
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	xwrite_stdout, .-xwrite_stdout
	.type	copy_fd, @function
copy_fd:
.LFB54:
	.loc 2 195 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$64, %rsp
	movl	%edi, -8244(%rbp)
	movq	%rsi, -8256(%rbp)
	.loc 2 195 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 197 16
	movq	$8192, -8232(%rbp)
	.loc 2 200 9
	jmp	.L33
.L37:
.LBB3:
	.loc 2 202 14
	movq	-8232(%rbp), %rax
	cmpq	%rax, -8256(%rbp)
	cmovbe	-8256(%rbp), %rax
	movq	%rax, -8224(%rbp)
	.loc 2 203 23
	movq	-8224(%rbp), %rdx
	leaq	-8208(%rbp), %rcx
	movl	-8244(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8216(%rbp)
	.loc 2 204 10
	cmpq	$-1, -8216(%rbp)
	jne	.L34
	.loc 2 205 16
	movl	$1, %eax
	jmp	.L38
.L34:
	.loc 2 207 15
	movq	-8216(%rbp), %rax
	subq	%rax, -8256(%rbp)
	.loc 2 209 10
	cmpq	$0, -8216(%rbp)
	jne	.L36
	.loc 2 209 23 discriminator 1
	cmpq	$0, -8256(%rbp)
	je	.L36
	.loc 2 210 16
	movl	$2, %eax
	jmp	.L38
.L36:
	.loc 2 212 7
	movq	-8216(%rbp), %rdx
	leaq	-8208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
.L33:
.LBE3:
	.loc 2 200 9
	cmpq	$0, -8256(%rbp)
	jne	.L37
	.loc 2 215 10
	movl	$0, %eax
.L38:
	.loc 2 216 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L39
	.loc 2 216 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	copy_fd, .-copy_fd
	.section	.rodata
.LC45:
	.string	"%s: cannot seek to offset %s"
	.align 8
.LC46:
	.string	"%s: cannot seek to relative offset %s"
	.text
	.type	elseek, @function
elseek:
.LFB55:
	.loc 2 225 1 is_stmt 1
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
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -88(%rbp)
	movq	%rcx, -104(%rbp)
	.loc 2 225 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 2 226 22
	movl	-88(%rbp), %edx
	movq	-96(%rbp), %rcx
	movl	-84(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -72(%rbp)
	.loc 2 229 6
	cmpq	$0, -72(%rbp)
	jns	.L41
	.loc 2 230 5
	leaq	-64(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	offtostr@PLT
	movq	%rax, %r13
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 231 12
	cmpl	$0, -88(%rbp)
	jne	.L42
	.loc 2 231 12 is_stmt 0 discriminator 1
	leaq	.LC45(%rip), %rax
	jmp	.L43
.L42:
	.loc 2 231 12 discriminator 2
	leaq	.LC46(%rip), %rax
.L43:
	.loc 2 231 12 discriminator 4
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 230 15 is_stmt 1 discriminator 4
	call	__errno_location@PLT
	.loc 2 230 5 discriminator 4
	movl	(%rax), %eax
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L41:
	.loc 2 237 10
	movq	-72(%rbp), %rax
	.loc 2 238 1
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	elseek, .-elseek
	.type	elide_tail_bytes_pipe, @function
elide_tail_bytes_pipe:
.LFB56:
	.loc 2 250 1
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
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	.loc 2 250 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 251 10
	movq	-232(%rbp), %rax
	movq	%rax, -136(%rbp)
	.loc 2 252 13
	movq	-240(%rbp), %rax
	movq	%rax, -200(%rbp)
	.loc 2 253 8
	movb	$1, -206(%rbp)
	.loc 2 290 6
	cmpq	$1048576, -136(%rbp)
	ja	.L47
.LBB4:
	.loc 2 292 12
	movb	$1, -205(%rbp)
	.loc 2 293 12
	movb	$0, -204(%rbp)
	.loc 2 294 14
	movq	-136(%rbp), %rax
	addq	$8192, %rax
	movq	%rax, -80(%rbp)
	.loc 2 297 14
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	xnmalloc@PLT
	.loc 2 297 12
	movq	%rax, -64(%rbp)
	.loc 2 298 15
	movq	-64(%rbp), %rdx
	.loc 2 298 19
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 298 12
	movq	%rax, -56(%rbp)
	.loc 2 300 14
	movb	$0, -203(%rbp)
	.loc 2 300 7
	jmp	.L48
.L55:
.LBB5:
	.loc 2 302 27
	movzbl	-203(%rbp), %eax
	.loc 2 302 43
	cltq
	movq	-64(%rbp,%rax,8), %rcx
	.loc 2 302 27
	movq	-80(%rbp), %rdx
	movl	-220(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	full_read@PLT
	movq	%rax, -72(%rbp)
	.loc 2 303 18
	movq	$0, -192(%rbp)
	.loc 2 304 14
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L49
	.loc 2 306 19
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 306 18
	testl	%eax, %eax
	je	.L50
	.loc 2 308 19
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 308 36
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 308 29
	call	__errno_location@PLT
	.loc 2 308 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 309 22
	movb	$0, -206(%rbp)
	.loc 2 310 19
	jmp	.L51
.L50:
	.loc 2 314 18
	movq	-72(%rbp), %rax
	cmpq	-136(%rbp), %rax
	ja	.L52
	.loc 2 316 22
	cmpb	$0, -205(%rbp)
	jne	.L52
	.loc 2 324 29
	movq	-136(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)
.L52:
	.loc 2 327 19
	movb	$1, -204(%rbp)
.L49:
	.loc 2 332 15
	movzbl	-205(%rbp), %eax
	xorl	$1, %eax
	.loc 2 332 14
	testb	%al, %al
	je	.L53
	.loc 2 334 38
	movq	-136(%rbp), %rax
	subq	-192(%rbp), %rax
	.loc 2 334 27
	addq	%rax, -200(%rbp)
	.loc 2 335 15
	movq	-136(%rbp), %rax
	subq	-192(%rbp), %rax
	.loc 2 335 32
	movzbl	-203(%rbp), %edx
	xorl	$1, %edx
	movzbl	%dl, %edx
	.loc 2 335 31
	movslq	%edx, %rdx
	movq	-64(%rbp,%rdx,8), %rdx
	.loc 2 335 36
	addq	$8192, %rdx
	.loc 2 335 15
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xwrite_stdout
.L53:
	.loc 2 337 17
	movb	$0, -205(%rbp)
	.loc 2 339 14
	movq	-136(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L54
	.loc 2 341 37
	movq	-72(%rbp), %rax
	subq	-136(%rbp), %rax
	.loc 2 341 27
	addq	%rax, -200(%rbp)
	.loc 2 342 15
	movq	-72(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, %rdx
	movzbl	-203(%rbp), %eax
	.loc 2 342 31
	cltq
	movq	-64(%rbp,%rax,8), %rax
	.loc 2 342 15
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
.L54:
.LBE5:
	.loc 2 300 7 discriminator 2
	movzbl	-203(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 300 33 discriminator 2
	movb	%al, -203(%rbp)
	andb	$1, -203(%rbp)
.L48:
	.loc 2 300 23 discriminator 1
	movzbl	-204(%rbp), %eax
	xorl	$1, %eax
	.loc 2 300 7 discriminator 1
	testb	%al, %al
	jne	.L55
.L51:
	.loc 2 346 14
	movq	-64(%rbp), %rax
	.loc 2 346 7
	movq	%rax, %rdi
	call	free@PLT
.LBE4:
	jmp	.L56
.L47:
.LBB6:
	.loc 2 353 12
	movb	$0, -202(%rbp)
	.loc 2 357 14
	movq	$0, -160(%rbp)
	.loc 2 359 44
	movq	-136(%rbp), %rax
	andl	$8191, %eax
	.loc 2 359 14
	movl	$8192, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -128(%rbp)
	.loc 2 360 14
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	.loc 2 361 37
	movq	-120(%rbp), %rax
	shrq	$13, %rax
	.loc 2 361 14
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	.loc 2 362 14
	movq	$0, -152(%rbp)
	.loc 2 363 14
	movq	$0, -144(%rbp)
	.loc 2 365 23
	movb	$0, -201(%rbp)
	.loc 2 366 14
	movq	$0, -176(%rbp)
	.loc 2 366 26
	movq	$1, -168(%rbp)
	.loc 2 366 7
	jmp	.L57
.L68:
	.loc 2 368 14
	movq	-144(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jne	.L58
	.loc 2 371 18
	cmpq	$0, -144(%rbp)
	jne	.L59
	.loc 2 372 31
	movl	$16, %eax
	cmpq	$16, -112(%rbp)
	cmovbe	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.L60
.L59:
	.loc 2 373 48
	movq	-112(%rbp), %rax
	shrq	%rax
	.loc 2 373 23
	cmpq	%rax, -144(%rbp)
	ja	.L61
	.loc 2 374 31
	salq	-144(%rbp)
	jmp	.L60
.L61:
	.loc 2 376 31
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
.L60:
	.loc 2 377 19
	movq	-144(%rbp), %rcx
	movq	-160(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xnrealloc@PLT
	movq	%rax, -160(%rbp)
.L58:
	.loc 2 380 15
	movzbl	-201(%rbp), %eax
	xorl	$1, %eax
	.loc 2 380 14
	testb	%al, %al
	je	.L62
	.loc 2 382 16
	movq	-176(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 2 382 22
	movl	$8192, %edi
	call	xmalloc@PLT
	.loc 2 382 20
	movq	%rax, (%rbx)
	.loc 2 383 23
	movq	-176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
.L62:
	.loc 2 385 36
	movq	-176(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 385 20
	movq	(%rax), %rcx
	movl	-220(%rbp), %eax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	full_read@PLT
	movq	%rax, -184(%rbp)
	.loc 2 386 14
	cmpq	$8191, -184(%rbp)
	ja	.L63
	.loc 2 388 19
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 388 18
	testl	%eax, %eax
	je	.L64
	.loc 2 390 19
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 390 36
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 390 29
	call	__errno_location@PLT
	.loc 2 390 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 391 22
	movb	$0, -206(%rbp)
	.loc 2 392 19
	jmp	.L65
.L64:
	.loc 2 394 19
	movb	$1, -202(%rbp)
.L63:
	.loc 2 397 17
	movq	-176(%rbp), %rax
	addq	$1, %rax
	.loc 2 397 14
	cmpq	%rax, -112(%rbp)
	jne	.L66
	.loc 2 398 29
	movb	$1, -201(%rbp)
.L66:
	.loc 2 400 14
	cmpb	$0, -201(%rbp)
	je	.L67
	.loc 2 402 27
	movq	-184(%rbp), %rax
	addq	%rax, -200(%rbp)
	.loc 2 403 31
	movq	-168(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 403 15
	movq	(%rax), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
.L67:
	.loc 2 366 39 discriminator 2
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	.loc 2 366 66 discriminator 2
	movq	-168(%rbp), %rax
	addq	$1, %rax
	.loc 2 366 56 discriminator 2
	movl	$0, %edx
	divq	-112(%rbp)
	movq	%rdx, -168(%rbp)
.L57:
	.loc 2 366 31 discriminator 1
	movzbl	-202(%rbp), %eax
	xorl	$1, %eax
	.loc 2 366 7 discriminator 1
	testb	%al, %al
	jne	.L68
	.loc 2 408 10
	cmpq	$0, -128(%rbp)
	je	.L76
	.loc 2 410 14
	cmpb	$0, -201(%rbp)
	je	.L69
.LBB7:
	.loc 2 412 22
	movl	$8192, %eax
	subq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 2 413 27
	movq	-128(%rbp), %rax
	addq	%rax, -200(%rbp)
	.loc 2 414 18
	movq	-128(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L70
	.loc 2 416 35
	movq	-176(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	.loc 2 416 39
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 416 19
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xwrite_stdout
	jmp	.L65
.L70:
	.loc 2 420 35
	movq	-176(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	.loc 2 420 39
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 420 19
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xwrite_stdout
	.loc 2 421 19
	movq	-128(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 421 35
	movq	-168(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-160(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 421 19
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	jmp	.L65
.L69:
.LBE7:
	.loc 2 424 22
	movq	-176(%rbp), %rax
	addq	$1, %rax
	.loc 2 424 19
	cmpq	%rax, -112(%rbp)
	jne	.L76
.LBB8:
	.loc 2 438 22
	movl	$8192, %eax
	subq	-128(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 2 439 22
	movq	-184(%rbp), %rax
	subq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 2 440 27
	movq	-96(%rbp), %rax
	addq	%rax, -200(%rbp)
	.loc 2 441 31
	movq	-168(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 441 15
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	jmp	.L65
.L76:
.LBE8:
	.loc 2 445 5
	nop
.L65:
	.loc 2 446 14
	movq	$0, -176(%rbp)
	.loc 2 446 7
	jmp	.L71
.L72:
	.loc 2 447 16 discriminator 3
	movq	-176(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 447 9 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 446 33 discriminator 3
	addq	$1, -176(%rbp)
.L71:
	.loc 2 446 7 discriminator 1
	movq	-176(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jb	.L72
	.loc 2 448 7
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L56:
.LBE6:
	.loc 2 451 6
	cmpq	$0, -240(%rbp)
	js	.L73
	.loc 2 451 27 discriminator 1
	movq	-200(%rbp), %rsi
	movq	-216(%rbp), %rdx
	movl	-220(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	elseek
	.loc 2 451 24 discriminator 1
	testq	%rax, %rax
	jns	.L73
	.loc 2 452 8
	movb	$0, -206(%rbp)
.L73:
	.loc 2 453 10
	movzbl	-206(%rbp), %eax
	.loc 2 454 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L75
	call	__stack_chk_fail@PLT
.L75:
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	elide_tail_bytes_pipe, .-elide_tail_bytes_pipe
	.type	elide_tail_bytes_file, @function
elide_tail_bytes_file:
.LFB57:
	.loc 2 467 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	.loc 2 468 9
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 469 7
	movzbl	presume_input_pipe(%rip), %eax
	.loc 2 469 6
	testb	%al, %al
	jne	.L78
	.loc 2 469 26 discriminator 1
	cmpq	$0, -72(%rbp)
	js	.L78
	.loc 2 469 56 discriminator 2
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jle	.L79
	.loc 2 469 56 is_stmt 0 discriminator 3
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L79
	.loc 2 469 56 discriminator 5
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	jmp	.L80
.L79:
	.loc 2 469 56 discriminator 6
	movl	$512, %eax
.L80:
	.loc 2 469 45 is_stmt 1 discriminator 8
	cmpq	-24(%rbp), %rax
	jl	.L81
.L78:
	.loc 2 470 12
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	elide_tail_bytes_pipe
	jmp	.L82
.L81:
.LBB9:
	.loc 2 475 13
	movq	-24(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 476 13
	movl	$0, %eax
	cmpq	$0, -16(%rbp)
	cmovns	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 478 27
	movq	-8(%rbp), %rax
	.loc 2 478 10
	cmpq	%rax, -56(%rbp)
	jb	.L83
	.loc 2 479 16
	movl	$1, %eax
	jmp	.L82
.L83:
	.loc 2 481 33
	movq	-8(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	copy_fd
	movl	%eax, -28(%rbp)
	.loc 2 482 10
	cmpl	$0, -28(%rbp)
	jne	.L84
	.loc 2 483 16
	movl	$1, %eax
	jmp	.L82
.L84:
	.loc 2 485 7
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	diagnose_copy_fd_failure
	.loc 2 486 14
	movl	$0, %eax
.L82:
.LBE9:
	.loc 2 488 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	elide_tail_bytes_file, .-elide_tail_bytes_file
	.type	elide_tail_lines_pipe, @function
elide_tail_lines_pipe:
.LFB58:
	.loc 2 500 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	.loc 2 508 13
	movq	-144(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 2 511 10
	movq	$0, -72(%rbp)
	.loc 2 512 8
	movb	$1, -105(%rbp)
	.loc 2 515 18
	movl	$8216, %edi
	call	xmalloc@PLT
	movq	%rax, -88(%rbp)
	.loc 2 515 9
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 2 516 33
	movq	-96(%rbp), %rax
	movq	$0, 8200(%rax)
	.loc 2 516 24
	movq	-96(%rbp), %rax
	movq	8200(%rax), %rdx
	.loc 2 516 17
	movq	-96(%rbp), %rax
	movq	%rdx, 8192(%rax)
	.loc 2 517 15
	movq	-96(%rbp), %rax
	movq	$0, 8208(%rax)
	.loc 2 518 9
	movl	$8216, %edi
	call	xmalloc@PLT
	movq	%rax, -80(%rbp)
.L93:
	.loc 2 525 34
	movq	-80(%rbp), %rcx
	.loc 2 525 16
	movl	-124(%rbp), %eax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -40(%rbp)
	.loc 2 526 10
	cmpq	$0, -40(%rbp)
	je	.L86
	.loc 2 526 23 discriminator 1
	cmpq	$-1, -40(%rbp)
	je	.L86
	.loc 2 529 10
	cmpq	$0, -136(%rbp)
	jne	.L87
	.loc 2 531 23
	movq	-40(%rbp), %rax
	addq	%rax, -104(%rbp)
	.loc 2 532 29
	movq	-80(%rbp), %rax
	.loc 2 532 11
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	.loc 2 533 11
	jmp	.L88
.L87:
	.loc 2 536 19
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8192(%rax)
	.loc 2 537 19
	movq	-80(%rbp), %rax
	movq	$0, 8200(%rax)
	.loc 2 538 17
	movq	-80(%rbp), %rax
	movq	$0, 8208(%rax)
.LBB10:
	.loc 2 542 34
	movq	-80(%rbp), %rdx
	.loc 2 542 21
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 543 21
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 2 544 15
	jmp	.L89
.L90:
	.loc 2 546 13
	addq	$1, -64(%rbp)
	.loc 2 547 18
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 2 547 13
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8200(%rax)
.L89:
	.loc 2 544 53
	movq	-32(%rbp), %rax
	subq	-64(%rbp), %rax
	.loc 2 544 21
	movq	%rax, %rdx
	movzbl	line_end(%rip), %eax
	movsbl	%al, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -64(%rbp)
	.loc 2 544 15
	cmpq	$0, -64(%rbp)
	jne	.L90
.LBE10:
	.loc 2 550 25
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 2 550 19
	addq	%rax, -72(%rbp)
	.loc 2 555 14
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 2 555 29
	movq	-88(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 2 555 23
	addq	%rdx, %rax
	.loc 2 555 10
	cmpq	$8191, %rax
	ja	.L91
	.loc 2 557 11
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 2 557 51
	movq	-80(%rbp), %rax
	.loc 2 557 37
	movq	-88(%rbp), %rcx
	movq	8192(%rcx), %rsi
	.loc 2 557 19
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 2 557 11
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 2 558 24
	movq	-88(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 2 558 30
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 2 558 24
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8192(%rax)
	.loc 2 559 24
	movq	-88(%rbp), %rax
	movq	8200(%rax), %rdx
	.loc 2 559 30
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 2 559 24
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8200(%rax)
	jmp	.L93
.L91:
	.loc 2 568 29
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8208(%rax)
	.loc 2 568 16
	movq	-88(%rbp), %rax
	movq	8208(%rax), %rax
	movq	%rax, -88(%rbp)
	.loc 2 569 44
	movq	-96(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 2 569 37
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 569 14
	cmpq	%rax, -136(%rbp)
	jnb	.L92
	.loc 2 571 35
	movq	-96(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 2 571 27
	addq	%rax, -104(%rbp)
	.loc 2 572 15
	movq	-96(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 2 572 35
	movq	-96(%rbp), %rax
	.loc 2 572 15
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	.loc 2 573 19
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 2 574 35
	movq	-96(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 2 574 27
	subq	%rax, -72(%rbp)
	.loc 2 575 21
	movq	-96(%rbp), %rax
	movq	8208(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.L93
.L92:
	.loc 2 578 19
	movl	$8216, %edi
	call	xmalloc@PLT
	movq	%rax, -80(%rbp)
.L88:
	.loc 2 525 14
	jmp	.L93
.L86:
	.loc 2 582 3
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 584 6
	cmpq	$-1, -40(%rbp)
	jne	.L94
	.loc 2 586 7
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 586 24
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 586 17
	call	__errno_location@PLT
	.loc 2 586 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 587 10
	movb	$0, -105(%rbp)
	.loc 2 588 7
	jmp	.L95
.L94:
	.loc 2 593 11
	movq	-88(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 2 593 6
	testq	%rax, %rax
	je	.L96
	.loc 2 593 40 discriminator 1
	movq	-88(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 2 593 49 discriminator 1
	leaq	-1(%rax), %rdx
	.loc 2 593 35 discriminator 1
	movq	-88(%rbp), %rax
	movzbl	(%rax,%rdx), %edx
	.loc 2 593 54 discriminator 1
	movzbl	line_end(%rip), %eax
	.loc 2 593 20 discriminator 1
	cmpb	%al, %dl
	je	.L96
	.loc 2 595 13
	movq	-88(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 2 595 7
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8200(%rax)
	.loc 2 596 7
	addq	$1, -72(%rbp)
.L96:
	.loc 2 599 12
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 2 599 3
	jmp	.L97
.L98:
	.loc 2 601 25 discriminator 3
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 2 601 19 discriminator 3
	addq	%rax, -104(%rbp)
	.loc 2 602 7 discriminator 3
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 2 602 25 discriminator 3
	movq	-80(%rbp), %rax
	.loc 2 602 7 discriminator 3
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	.loc 2 603 25 discriminator 3
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 2 603 19 discriminator 3
	subq	%rax, -72(%rbp)
	.loc 2 599 62 discriminator 3
	movq	-80(%rbp), %rax
	movq	8208(%rax), %rax
	movq	%rax, -80(%rbp)
.L97:
	.loc 2 599 48 discriminator 1
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 2 599 43 discriminator 1
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 599 3 discriminator 1
	cmpq	%rax, -136(%rbp)
	jb	.L98
	.loc 2 607 6
	movq	-136(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L106
.LBB11:
	.loc 2 609 14
	movq	-72(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 2 610 32
	movq	-80(%rbp), %rdx
	.loc 2 610 49
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 2 610 19
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 611 19
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 612 13
	jmp	.L99
.L101:
	.loc 2 614 11
	addq	$1, -48(%rbp)
	.loc 2 615 16
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 2 615 11
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8200(%rax)
	.loc 2 616 11
	subq	$1, -56(%rbp)
.L99:
	.loc 2 612 13
	cmpq	$0, -56(%rbp)
	je	.L100
	.loc 2 612 56 discriminator 1
	movq	-24(%rbp), %rax
	subq	-48(%rbp), %rax
	.loc 2 612 24 discriminator 1
	movq	%rax, %rdx
	movzbl	line_end(%rip), %eax
	movsbl	%al, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -48(%rbp)
	.loc 2 612 16 discriminator 1
	cmpq	$0, -48(%rbp)
	jne	.L101
.L100:
	.loc 2 618 24
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 618 19
	addq	%rax, -104(%rbp)
	.loc 2 619 37
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 619 7
	movq	%rax, %rdx
	.loc 2 619 25
	movq	-80(%rbp), %rax
	.loc 2 619 7
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	jmp	.L102
.L106:
.LBE11:
	.loc 2 622 1
	nop
.L95:
	.loc 2 623 9
	jmp	.L102
.L103:
	.loc 2 625 11
	movq	-96(%rbp), %rax
	movq	8208(%rax), %rax
	movq	%rax, -80(%rbp)
	.loc 2 626 7
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 627 13
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
.L102:
	.loc 2 623 9
	cmpq	$0, -96(%rbp)
	jne	.L103
	.loc 2 630 6
	cmpq	$0, -144(%rbp)
	js	.L104
	.loc 2 630 27 discriminator 1
	movq	-104(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movl	-124(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	elseek
	.loc 2 630 24 discriminator 1
	testq	%rax, %rax
	jns	.L104
	.loc 2 631 8
	movb	$0, -105(%rbp)
.L104:
	.loc 2 632 10
	movzbl	-105(%rbp), %eax
	.loc 2 633 1
	subq	$-128, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	elide_tail_lines_pipe, .-elide_tail_lines_pipe
	.type	elide_tail_lines_seekable, @function
elide_tail_lines_seekable:
.LFB59:
	.loc 2 650 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -8280(%rbp)
	movl	%esi, -8284(%rbp)
	movq	%rdx, -8296(%rbp)
	movq	%rcx, -8304(%rbp)
	movq	%r8, -8312(%rbp)
	.loc 2 650 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 653 9
	movq	-8312(%rbp), %rax
	movq	%rax, -8248(%rbp)
	.loc 2 657 21
	movq	-8248(%rbp), %rax
	subq	-8304(%rbp), %rax
	.loc 2 657 34
	cqto
	shrq	$51, %rdx
	addq	%rdx, %rax
	andl	$8191, %eax
	subq	%rdx, %rax
	.loc 2 657 14
	movq	%rax, -8256(%rbp)
	.loc 2 658 6
	cmpq	$0, -8256(%rbp)
	jne	.L108
	.loc 2 659 16
	movq	$8192, -8256(%rbp)
.L108:
	.loc 2 662 7
	movq	-8248(%rbp), %rax
	subq	-8256(%rbp), %rax
	movq	%rax, -8248(%rbp)
	.loc 2 663 7
	movq	-8280(%rbp), %rdx
	movq	-8248(%rbp), %rsi
	movl	-8284(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	elseek
	.loc 2 663 6
	testq	%rax, %rax
	jns	.L109
	.loc 2 664 12
	movl	$0, %eax
	jmp	.L126
.L109:
	.loc 2 665 16
	movq	-8256(%rbp), %rdx
	leaq	-8224(%rbp), %rcx
	movl	-8284(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8256(%rbp)
	.loc 2 666 6
	cmpq	$-1, -8256(%rbp)
	jne	.L111
	.loc 2 668 7
	movq	-8280(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 668 24
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 668 17
	call	__errno_location@PLT
	.loc 2 668 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 669 14
	movl	$0, %eax
	jmp	.L126
.L111:
	.loc 2 673 14
	cmpq	$0, -8296(%rbp)
	sete	%al
	movb	%al, -8261(%rbp)
	.loc 2 676 6
	cmpq	$0, -8296(%rbp)
	je	.L125
	.loc 2 676 15 discriminator 1
	cmpq	$0, -8256(%rbp)
	je	.L125
	.loc 2 676 50 discriminator 2
	movq	-8256(%rbp), %rax
	subq	$1, %rax
	.loc 2 676 38 discriminator 2
	movzbl	-8224(%rbp,%rax), %edx
	.loc 2 676 55 discriminator 2
	movzbl	line_end(%rip), %eax
	.loc 2 676 29 discriminator 2
	cmpb	%al, %dl
	je	.L125
	.loc 2 677 5
	subq	$1, -8296(%rbp)
.L125:
.LBB12:
	.loc 2 683 14
	movq	-8256(%rbp), %rax
	movq	%rax, -8240(%rbp)
	.loc 2 684 13
	jmp	.L113
.L120:
	.loc 2 686 14
	cmpb	$0, -8261(%rbp)
	je	.L114
	.loc 2 687 15
	subq	$1, -8240(%rbp)
	jmp	.L115
.L114:
.LBB13:
	.loc 2 691 20
	movzbl	line_end(%rip), %eax
	movsbl	%al, %ecx
	movq	-8240(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memrchr@PLT
	movq	%rax, -8232(%rbp)
	.loc 2 692 18
	cmpq	$0, -8232(%rbp)
	je	.L128
	.loc 2 694 22
	leaq	-8224(%rbp), %rax
	movq	-8232(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 694 17
	movq	%rax, -8240(%rbp)
.L115:
.LBE13:
	.loc 2 696 22
	movq	-8296(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8296(%rbp)
	.loc 2 696 14
	testq	%rax, %rax
	jne	.L113
	.loc 2 701 18
	movq	-8304(%rbp), %rax
	cmpq	-8248(%rbp), %rax
	jge	.L118
.LBB14:
	.loc 2 704 23
	movq	-8280(%rbp), %rdx
	movq	-8304(%rbp), %rsi
	movl	-8284(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	elseek
	.loc 2 704 22
	testq	%rax, %rax
	jns	.L119
	.loc 2 705 28
	movl	$0, %eax
	jmp	.L126
.L119:
	.loc 2 707 42
	movq	-8248(%rbp), %rax
	subq	-8304(%rbp), %rax
	.loc 2 707 25
	movq	%rax, %rdx
	movl	-8284(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	copy_fd
	movl	%eax, -8260(%rbp)
	.loc 2 708 22
	cmpl	$0, -8260(%rbp)
	je	.L118
	.loc 2 710 23
	movq	-8280(%rbp), %rdx
	movl	-8260(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	diagnose_copy_fd_failure
	.loc 2 711 30
	movl	$0, %eax
	jmp	.L126
.L118:
.LBE14:
	.loc 2 717 15
	movq	-8240(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-8224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	.loc 2 720 43
	movq	-8248(%rbp), %rdx
	movq	-8240(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 720 47
	addq	$1, %rax
	.loc 2 720 27
	movq	%rax, %rsi
	movq	-8280(%rbp), %rdx
	movl	-8284(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	elseek
	.loc 2 720 24
	notq	%rax
	shrq	$63, %rax
	jmp	.L126
.L113:
	.loc 2 684 13
	cmpq	$0, -8240(%rbp)
	jne	.L120
	jmp	.L117
.L128:
.LBB15:
	.loc 2 693 17
	nop
.L117:
.LBE15:
	.loc 2 725 10
	movq	-8248(%rbp), %rax
	cmpq	-8304(%rbp), %rax
	jne	.L121
	.loc 2 728 18
	movl	$1, %eax
	jmp	.L126
.L121:
	.loc 2 730 11
	subq	$8192, -8248(%rbp)
	.loc 2 731 11
	movq	-8280(%rbp), %rdx
	movq	-8248(%rbp), %rsi
	movl	-8284(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	elseek
	.loc 2 731 10
	testq	%rax, %rax
	jns	.L122
	.loc 2 732 16
	movl	$0, %eax
	jmp	.L126
.L122:
	.loc 2 734 20
	leaq	-8224(%rbp), %rcx
	movl	-8284(%rbp), %eax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8256(%rbp)
	.loc 2 735 10
	cmpq	$-1, -8256(%rbp)
	jne	.L123
	.loc 2 737 11
	movq	-8280(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 737 28
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 737 21
	call	__errno_location@PLT
	.loc 2 737 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 738 18
	movl	$0, %eax
	jmp	.L126
.L123:
	.loc 2 743 10
	cmpq	$0, -8256(%rbp)
	jne	.L125
	.loc 2 744 16
	movl	$1, %eax
.L126:
.LBE12:
	.loc 2 746 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L127
	.loc 2 746 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L127:
	addq	$8304, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	elide_tail_lines_seekable, .-elide_tail_lines_seekable
	.type	elide_tail_lines_file, @function
elide_tail_lines_file:
.LFB60:
	.loc 2 756 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	.loc 2 757 9
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 758 7
	movzbl	presume_input_pipe(%rip), %eax
	.loc 2 758 6
	testb	%al, %al
	jne	.L130
	.loc 2 758 26 discriminator 1
	cmpq	$0, -56(%rbp)
	js	.L130
	.loc 2 758 56 discriminator 2
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jle	.L131
	.loc 2 758 56 is_stmt 0 discriminator 3
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L131
	.loc 2 758 56 discriminator 5
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	jmp	.L132
.L131:
	.loc 2 758 56 discriminator 6
	movl	$512, %eax
.L132:
	.loc 2 758 45 is_stmt 1 discriminator 8
	cmpq	-8(%rbp), %rax
	jl	.L133
.L130:
	.loc 2 759 12
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	elide_tail_lines_pipe
	jmp	.L134
.L133:
	.loc 2 768 15
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.L135
	.loc 2 768 18 discriminator 2
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	elide_tail_lines_seekable
	.loc 2 768 15 discriminator 2
	testb	%al, %al
	je	.L136
.L135:
	.loc 2 768 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L137
.L136:
	.loc 2 768 15 discriminator 4
	movl	$0, %eax
.L137:
	.loc 2 768 15 discriminator 6
	andl	$1, %eax
.L134:
	.loc 2 771 1 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	elide_tail_lines_file, .-elide_tail_lines_file
	.type	head_bytes, @function
head_bytes:
.LFB61:
	.loc 2 775 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -8248(%rbp)
	movl	%esi, -8252(%rbp)
	movq	%rdx, -8264(%rbp)
	.loc 2 775 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 777 10
	movq	$8192, -8240(%rbp)
	.loc 2 779 9
	jmp	.L139
.L145:
.LBB16:
	.loc 2 782 10
	movq	-8264(%rbp), %rax
	cmpq	-8240(%rbp), %rax
	jnb	.L140
	.loc 2 783 23
	movq	-8264(%rbp), %rax
	movq	%rax, -8240(%rbp)
.L140:
	.loc 2 784 20
	movq	-8240(%rbp), %rdx
	leaq	-8224(%rbp), %rcx
	movl	-8252(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8232(%rbp)
	.loc 2 785 10
	cmpq	$-1, -8232(%rbp)
	jne	.L141
	.loc 2 787 11
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 787 28
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 787 21
	call	__errno_location@PLT
	.loc 2 787 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 788 18
	movl	$0, %eax
	jmp	.L146
.L141:
	.loc 2 790 10
	cmpq	$0, -8232(%rbp)
	je	.L148
	.loc 2 792 7
	movq	-8232(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	.loc 2 793 22
	movq	-8232(%rbp), %rax
	subq	%rax, -8264(%rbp)
.L139:
.LBE16:
	.loc 2 779 9
	cmpq	$0, -8264(%rbp)
	jne	.L145
	jmp	.L144
.L148:
.LBB17:
	.loc 2 791 9
	nop
.L144:
.LBE17:
	.loc 2 795 10
	movl	$1, %eax
.L146:
	.loc 2 796 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L147
	.loc 2 796 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L147:
	addq	$8256, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	head_bytes, .-head_bytes
	.type	head_lines, @function
head_lines:
.LFB62:
	.loc 2 800 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$224, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -8408(%rbp)
	movl	%esi, -8412(%rbp)
	movq	%rdx, -8424(%rbp)
	.loc 2 800 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 803 9
	jmp	.L150
.L161:
.LBB18:
	.loc 2 805 27
	leaq	-8224(%rbp), %rcx
	movl	-8412(%rbp), %eax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8384(%rbp)
	.loc 2 806 14
	movq	$0, -8392(%rbp)
	.loc 2 808 10
	cmpq	$-1, -8384(%rbp)
	jne	.L151
	.loc 2 810 11
	movq	-8408(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 810 28
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 810 21
	call	__errno_location@PLT
	.loc 2 810 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 811 18
	movl	$0, %eax
	jmp	.L162
.L151:
	.loc 2 813 10
	cmpq	$0, -8384(%rbp)
	je	.L164
	.loc 2 815 13
	jmp	.L155
.L160:
	.loc 2 816 34
	movq	-8392(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8392(%rbp)
	.loc 2 816 19
	movzbl	-8224(%rbp,%rax), %edx
	.loc 2 816 38
	movzbl	line_end(%rip), %eax
	.loc 2 816 12
	cmpb	%al, %dl
	jne	.L155
	.loc 2 816 50 discriminator 1
	subq	$1, -8424(%rbp)
	cmpq	$0, -8424(%rbp)
	jne	.L155
.LBB19:
	.loc 2 818 49
	movq	-8384(%rbp), %rax
	subq	-8392(%rbp), %rax
	.loc 2 818 19
	movq	%rax, -8376(%rbp)
	.loc 2 822 17
	movq	-8376(%rbp), %rax
	negq	%rax
	movq	%rax, %rcx
	movl	-8412(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 2 822 16
	testq	%rax, %rax
	jns	.L165
.LBB20:
	.loc 2 825 21
	leaq	-8368(%rbp), %rdx
	movl	-8412(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 2 825 20
	testl	%eax, %eax
	jne	.L157
	.loc 2 825 45 discriminator 1
	movl	-8344(%rbp), %eax
	andl	$61440, %eax
	.loc 2 825 42 discriminator 1
	cmpl	$32768, %eax
	jne	.L165
.L157:
	.loc 2 826 19
	movq	-8376(%rbp), %rax
	negq	%rax
	movq	%rax, %rsi
	movq	-8408(%rbp), %rdx
	movl	-8412(%rbp), %eax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	%eax, %edi
	call	elseek
.LBE20:
	.loc 2 828 13
	jmp	.L165
.L155:
.LBE19:
	.loc 2 815 13
	movq	-8392(%rbp), %rax
	cmpq	-8384(%rbp), %rax
	jb	.L160
	jmp	.L159
.L165:
.LBB21:
	.loc 2 828 13
	nop
.L159:
.LBE21:
	.loc 2 830 7
	movq	-8392(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
.L150:
.LBE18:
	.loc 2 803 9
	cmpq	$0, -8424(%rbp)
	jne	.L161
	jmp	.L154
.L164:
.LBB22:
	.loc 2 814 9
	nop
.L154:
.LBE22:
	.loc 2 832 10
	movl	$1, %eax
.L162:
	.loc 2 833 1 discriminator 2
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L163
	.loc 2 833 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L163:
	addq	$8416, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	head_lines, .-head_lines
	.section	.rodata
.LC47:
	.string	"cannot fstat %s"
	.text
	.type	head, @function
head:
.LFB63:
	.loc 2 838 1 is_stmt 1
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
	movq	%rdi, -200(%rbp)
	movl	%esi, -204(%rbp)
	movq	%rdx, -216(%rbp)
	movl	%ecx, %eax
	movl	%r8d, %edx
	movb	%al, -208(%rbp)
	movl	%edx, %eax
	movb	%al, -220(%rbp)
	.loc 2 838 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 839 7
	movzbl	print_headers(%rip), %eax
	.loc 2 839 6
	testb	%al, %al
	je	.L167
	.loc 2 840 5
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	write_header
.L167:
	.loc 2 842 6
	cmpb	$0, -220(%rbp)
	je	.L168
.LBB23:
	.loc 2 844 13
	movq	$-1, -184(%rbp)
	.loc 2 846 11
	leaq	-176(%rbp), %rdx
	movl	-204(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 2 846 10
	testl	%eax, %eax
	je	.L169
	.loc 2 848 11
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 848 28
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 848 21
	call	__errno_location@PLT
	.loc 2 848 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 850 18
	movl	$0, %eax
	jmp	.L173
.L169:
	.loc 2 852 11
	movzbl	presume_input_pipe(%rip), %eax
	xorl	$1, %eax
	.loc 2 852 10
	testb	%al, %al
	je	.L171
	.loc 2 852 35 discriminator 1
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	usable_st_size
	.loc 2 852 32 discriminator 1
	testb	%al, %al
	je	.L171
	.loc 2 854 25
	movq	-200(%rbp), %rdx
	movl	-204(%rbp), %eax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	elseek
	movq	%rax, -184(%rbp)
	.loc 2 855 14
	cmpq	$0, -184(%rbp)
	jns	.L171
	.loc 2 856 20
	movl	$0, %eax
	jmp	.L173
.L171:
	.loc 2 858 10
	cmpb	$0, -208(%rbp)
	je	.L172
	.loc 2 859 16
	movq	-184(%rbp), %rdi
	leaq	-176(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movl	-204(%rbp), %esi
	movq	-200(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	elide_tail_lines_file
	jmp	.L173
.L172:
	.loc 2 861 16
	movq	-184(%rbp), %rdi
	leaq	-176(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movl	-204(%rbp), %esi
	movq	-200(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	elide_tail_bytes_file
	jmp	.L173
.L168:
.LBE23:
	.loc 2 863 6
	cmpb	$0, -208(%rbp)
	je	.L174
	.loc 2 864 12
	movq	-216(%rbp), %rdx
	movl	-204(%rbp), %ecx
	movq	-200(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	head_lines
	jmp	.L173
.L174:
	.loc 2 866 12
	movq	-216(%rbp), %rdx
	movl	-204(%rbp), %ecx
	movq	-200(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	head_bytes
.L173:
	.loc 2 867 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L175
	.loc 2 867 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L175:
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	head, .-head
	.section	.rodata
.LC48:
	.string	"-"
.LC49:
	.string	"standard input"
.LC50:
	.string	"cannot open %s for reading"
.LC51:
	.string	"failed to close %s"
	.text
	.type	head_file, @function
head_file:
.LFB64:
	.loc 2 872 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%ecx, %eax
	movb	%dl, -52(%rbp)
	movb	%al, -56(%rbp)
	.loc 2 875 19
	movq	-40(%rbp), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 875 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -22(%rbp)
	.loc 2 877 6
	cmpb	$0, -22(%rbp)
	je	.L177
	.loc 2 879 23
	movb	$1, have_read_stdin(%rip)
	.loc 2 880 10
	movl	$0, -20(%rbp)
	.loc 2 881 18
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, -40(%rbp)
	.loc 2 882 7
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	jmp	.L178
.L177:
	.loc 2 886 12
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -20(%rbp)
	.loc 2 887 10
	cmpl	$0, -20(%rbp)
	jns	.L178
	.loc 2 889 11
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 889 28
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 889 21
	call	__errno_location@PLT
	.loc 2 889 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 890 18
	movl	$0, %eax
	jmp	.L179
.L178:
	.loc 2 894 8
	movzbl	-56(%rbp), %edi
	movzbl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	head
	movb	%al, -21(%rbp)
	.loc 2 895 7
	movzbl	-22(%rbp), %eax
	xorl	$1, %eax
	.loc 2 895 6
	testb	%al, %al
	je	.L180
	.loc 2 895 20 discriminator 1
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 895 17 discriminator 1
	testl	%eax, %eax
	je	.L180
	.loc 2 897 7
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 897 24
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 897 17
	call	__errno_location@PLT
	.loc 2 897 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 898 14
	movl	$0, %eax
	jmp	.L179
.L180:
	.loc 2 900 10
	movzbl	-21(%rbp), %eax
.L179:
	.loc 2 901 1
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	head_file, .-head_file
	.section	.rodata
.LC52:
	.string	"invalid number of lines"
.LC53:
	.string	"invalid number of bytes"
.LC54:
	.string	"bkKmMGTPEZY0"
	.text
	.type	string_to_integer, @function
string_to_integer:
.LFB65:
	.loc 2 911 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movb	%al, -4(%rbp)
	.loc 2 912 10
	cmpb	$0, -4(%rbp)
	je	.L182
	.loc 2 913 36
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	jmp	.L183
.L182:
	.loc 2 914 36
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
.L183:
	.loc 2 912 10
	movq	-16(%rbp), %rdi
	movl	$0, %r9d
	movq	%rax, %r8
	leaq	.LC54(%rip), %rcx
	movq	$-1, %rdx
	movl	$0, %esi
	call	xdectoumax@PLT
	.loc 2 915 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	string_to_integer, .-string_to_integer
	.section	.rodata
.LC55:
	.string	"/usr/local/share/locale"
.LC56:
	.string	"invalid trailing option -- %c"
.LC57:
	.string	"Jim Meyering"
.LC58:
	.string	"David MacKenzie"
.LC59:
	.string	"c:n:qvz0123456789"
.LC60:
	.string	"%s: %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB66:
	.loc 2 919 1
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
	.loc 2 919 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 920 20
	movl	$0, -104(%rbp)
	.loc 2 921 8
	movb	$1, -108(%rbp)
	.loc 2 926 13
	movq	$10, -88(%rbp)
	.loc 2 930 8
	movb	$1, -107(%rbp)
	.loc 2 934 8
	movb	$0, -106(%rbp)
	.loc 2 942 3
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 943 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 944 3
	leaq	.LC55(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 945 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 947 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 949 19
	movb	$0, have_read_stdin(%rip)
	.loc 2 951 17
	movb	$0, print_headers(%rip)
	.loc 2 953 12
	movb	$10, line_end(%rip)
	.loc 2 955 6
	cmpl	$1, -116(%rbp)
	jle	.L200
	.loc 2 955 23 discriminator 1
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	.loc 2 955 26 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 955 16 discriminator 1
	cmpb	$45, %al
	jne	.L200
	.loc 2 955 40 discriminator 2
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 955 37 discriminator 2
	cmpl	$9, %eax
	ja	.L200
.LBB24:
	.loc 2 957 13
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	.loc 2 958 13
	addq	$1, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 2 960 12
	movb	$0, -105(%rbp)
.L187:
	.loc 2 964 10 discriminator 1
	addq	$1, -80(%rbp)
	.loc 2 965 14 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 965 7 discriminator 1
	cmpl	$9, %eax
	jbe	.L187
	.loc 2 968 20
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 2 971 7
	jmp	.L188
.L198:
	.loc 2 973 19
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$98, %eax
	cmpl	$24, %eax
	ja	.L189
	movl	%eax, %eax
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
	.long	.L194-.L191
	.long	.L196-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L194-.L191
	.long	.L195-.L191
	.long	.L194-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L193-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L192-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L189-.L191
	.long	.L190-.L191
	.text
.L196:
	.loc 2 976 27
	movb	$0, -107(%rbp)
	.loc 2 977 31
	movb	$0, -105(%rbp)
	.loc 2 978 15
	jmp	.L197
.L194:
	.loc 2 983 27
	movb	$0, -107(%rbp)
	.loc 2 984 31
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -105(%rbp)
	.loc 2 985 15
	jmp	.L197
.L195:
	.loc 2 988 27
	movb	$1, -107(%rbp)
	.loc 2 989 15
	jmp	.L197
.L193:
	.loc 2 992 27
	movl	$2, -104(%rbp)
	.loc 2 993 15
	jmp	.L197
.L192:
	.loc 2 996 27
	movl	$1, -104(%rbp)
	.loc 2 997 15
	jmp	.L197
.L190:
	.loc 2 1000 24
	movb	$0, line_end(%rip)
	.loc 2 1001 15
	jmp	.L197
.L189:
	.loc 2 1004 64
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1004 15
	movsbl	%al, %ebx
	.loc 2 1004 28
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	.loc 2 1004 15
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1005 15
	movl	$1, %edi
	call	usage
.L197:
	.loc 2 971 19
	addq	$1, -80(%rbp)
.L188:
	.loc 2 971 14 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 971 7 discriminator 1
	testb	%al, %al
	jne	.L198
	.loc 2 1011 21
	movq	-64(%rbp), %rax
	movzbl	-105(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 1012 10
	cmpb	$0, -105(%rbp)
	je	.L199
	.loc 2 1013 27
	addq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
.L199:
	.loc 2 1015 17
	movzbl	-107(%rbp), %eax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	string_to_integer
	movq	%rax, -88(%rbp)
	.loc 2 1018 11
	movq	-128(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 2 1018 21
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1018 15
	movq	%rax, (%rdx)
	.loc 2 1019 11
	addq	$8, -128(%rbp)
	.loc 2 1020 11
	subl	$1, -116(%rbp)
.LBE24:
	.loc 2 1023 9
	jmp	.L200
.L215:
	.loc 2 1026 7
	cmpl	$128, -100(%rbp)
	jg	.L201
	cmpl	$99, -100(%rbp)
	jge	.L202
	cmpl	$-131, -100(%rbp)
	je	.L203
	cmpl	$-130, -100(%rbp)
	je	.L204
	jmp	.L201
.L202:
	movl	-100(%rbp), %eax
	subl	$99, %eax
	cmpl	$29, %eax
	ja	.L201
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L206(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L206(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L206:
	.long	.L211-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L210-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L209-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L208-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L207-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L201-.L206
	.long	.L205-.L206
	.text
.L205:
	.loc 2 1029 30
	movb	$1, presume_input_pipe(%rip)
	.loc 2 1030 11
	jmp	.L200
.L211:
	.loc 2 1033 23
	movb	$0, -107(%rbp)
	.loc 2 1034 29
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 1034 26
	cmpb	$45, %al
	sete	%al
	movb	%al, -106(%rbp)
	.loc 2 1035 14
	cmpb	$0, -106(%rbp)
	je	.L212
	.loc 2 1036 13
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
.L212:
	.loc 2 1037 21
	movq	optarg(%rip), %rdx
	movzbl	-107(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	string_to_integer
	movq	%rax, -88(%rbp)
	.loc 2 1038 11
	jmp	.L200
.L210:
	.loc 2 1041 23
	movb	$1, -107(%rbp)
	.loc 2 1042 29
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 1042 26
	cmpb	$45, %al
	sete	%al
	movb	%al, -106(%rbp)
	.loc 2 1043 14
	cmpb	$0, -106(%rbp)
	je	.L213
	.loc 2 1044 13
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
.L213:
	.loc 2 1045 21
	movq	optarg(%rip), %rdx
	movzbl	-107(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	string_to_integer
	movq	%rax, -88(%rbp)
	.loc 2 1046 11
	jmp	.L200
.L209:
	.loc 2 1049 23
	movl	$2, -104(%rbp)
	.loc 2 1050 11
	jmp	.L200
.L208:
	.loc 2 1053 23
	movl	$1, -104(%rbp)
	.loc 2 1054 11
	jmp	.L200
.L207:
	.loc 2 1057 20
	movb	$0, line_end(%rip)
	.loc 2 1058 11
	jmp	.L200
.L204:
	.loc 2 1060 9
	movl	$0, %edi
	call	usage
.L203:
	.loc 2 1062 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC57(%rip), %r9
	leaq	.LC58(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L201:
	.loc 2 1065 15
	movl	-100(%rbp), %eax
	subl	$48, %eax
	.loc 2 1065 14
	cmpl	$9, %eax
	ja	.L214
	.loc 2 1066 26
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1066 13
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L214:
	.loc 2 1067 11
	movl	$1, %edi
	call	usage
.L200:
	.loc 2 1023 15
	movq	-128(%rbp), %rsi
	movl	-116(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -100(%rbp)
	.loc 2 1023 9
	cmpl	$-1, -100(%rbp)
	jne	.L215
	.loc 2 1071 6
	cmpl	$1, -104(%rbp)
	je	.L216
	.loc 2 1072 7
	cmpl	$0, -104(%rbp)
	jne	.L217
	.loc 2 1072 58 discriminator 1
	movl	-116(%rbp), %eax
	leal	-1(%rax), %edx
	.loc 2 1072 51 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 1072 41 discriminator 1
	cmpl	%eax, %edx
	jle	.L217
.L216:
	.loc 2 1073 19
	movb	$1, print_headers(%rip)
.L217:
	.loc 2 1075 8
	movzbl	-107(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1075 6
	testb	%al, %al
	je	.L218
	.loc 2 1075 22 discriminator 1
	cmpb	$0, -106(%rbp)
	je	.L218
	.loc 2 1075 53 discriminator 2
	movq	-88(%rbp), %rax
	.loc 2 1075 40 discriminator 2
	testq	%rax, %rax
	jns	.L218
.LBB25:
	.loc 2 1078 7
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %r8
	movq	%rax, %rcx
	leaq	.LC60(%rip), %rdx
	movl	$75, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L218:
.LBE25:
	.loc 2 1082 23
	movl	optind(%rip), %eax
	.loc 2 1084 16
	cmpl	%eax, -116(%rbp)
	jle	.L219
	.loc 2 1083 45 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 1084 16 discriminator 1
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L220
.L219:
	.loc 2 1084 16 is_stmt 0 discriminator 2
	leaq	default_file_list.6509(%rip), %rax
.L220:
	.loc 2 1082 13 is_stmt 1
	movq	%rax, -56(%rbp)
	.loc 2 1086 3
	movl	$0, %esi
	movl	$1, %edi
	call	xset_binary_mode@PLT
	.loc 2 1088 10
	movq	$0, -96(%rbp)
	.loc 2 1088 3
	jmp	.L221
.L222:
	.loc 2 1089 11 discriminator 3
	movzbl	-106(%rbp), %ecx
	movzbl	-107(%rbp), %edx
	.loc 2 1089 31 discriminator 3
	movq	-96(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-56(%rbp), %rax
	addq	%rsi, %rax
	.loc 2 1089 11 discriminator 3
	movq	(%rax), %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	call	head_file
	.loc 2 1089 8 discriminator 3
	movzbl	-108(%rbp), %edx
	.loc 2 1089 11 discriminator 3
	movzbl	%al, %eax
	.loc 2 1089 8 discriminator 3
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -108(%rbp)
	.loc 2 1088 29 discriminator 3
	addq	$1, -96(%rbp)
.L221:
	.loc 2 1088 24 discriminator 1
	movq	-96(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1088 3 discriminator 1
	testq	%rax, %rax
	jne	.L222
	.loc 2 1091 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 1091 6
	testb	%al, %al
	je	.L223
	.loc 2 1091 26 discriminator 1
	movl	$0, %edi
	call	close@PLT
	.loc 2 1091 23 discriminator 1
	testl	%eax, %eax
	jns	.L223
.LBB26:
	.loc 2 1092 5
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC48(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L223:
.LBE26:
	.loc 2 1094 28
	movzbl	-108(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1095 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L225
	call	__stack_chk_fail@PLT
.L225:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	main, .-main
	.data
	.type	first_file.6303, @object
	.size	first_file.6303, 1
first_file.6303:
	.byte	1
	.section	.data.rel.ro.local
	.align 16
	.type	default_file_list.6509, @object
	.size	default_file_list.6509, 16
default_file_list.6509:
	.quad	.LC48
	.quad	0
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
	.file 23 "./lib/version-etc.h"
	.file 24 "./lib/progname.h"
	.file 25 "./lib/quotearg.h"
	.file 26 "./lib/error.h"
	.file 27 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x16dc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF237
	.byte	0xc
	.long	.LASF238
	.long	.LASF239
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x3e
	.uleb128 0x3
	.long	0x2d
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x6a
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x49
	.byte	0x1b
	.long	0x3e
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x91
	.byte	0x19
	.long	0x3e
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
	.long	0x3e
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
	.long	0x3e
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x76
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x76
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x76
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x76
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x76
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x76
	.uleb128 0x8
	.byte	0x8
	.long	0x11f
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x3
	.long	0x11f
	.uleb128 0x9
	.long	.LASF66
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x2b2
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x6a
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x119
	.byte	0x8
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x119
	.byte	0x10
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x119
	.byte	0x18
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x119
	.byte	0x20
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x119
	.byte	0x28
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x119
	.byte	0x30
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x119
	.byte	0x38
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x119
	.byte	0x40
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x119
	.byte	0x48
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x119
	.byte	0x50
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x119
	.byte	0x58
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2cb
	.byte	0x60
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2d1
	.byte	0x68
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x6a
	.byte	0x70
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x6a
	.byte	0x74
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xd1
	.byte	0x78
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x55
	.byte	0x80
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x5c
	.byte	0x82
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2d7
	.byte	0x83
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2e7
	.byte	0x88
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xdd
	.byte	0x90
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2f2
	.byte	0x98
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2fd
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2d1
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x4c
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x6a
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x303
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x12b
	.uleb128 0xb
	.long	.LASF240
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x8
	.byte	0x8
	.long	0x2c6
	.uleb128 0x8
	.byte	0x8
	.long	0x12b
	.uleb128 0xd
	.long	0x11f
	.long	0x2e7
	.uleb128 0xe
	.long	0x3e
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2be
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x8
	.byte	0x8
	.long	0x2ed
	.uleb128 0xc
	.long	.LASF54
	.uleb128 0x8
	.byte	0x8
	.long	0x2f8
	.uleb128 0xd
	.long	0x11f
	.long	0x313
	.uleb128 0xe
	.long	0x3e
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x126
	.uleb128 0x3
	.long	0x313
	.uleb128 0x2
	.long	.LASF55
	.byte	0x7
	.byte	0x3f
	.byte	0x11
	.long	0xd1
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x336
	.uleb128 0x8
	.byte	0x8
	.long	0x2b2
	.uleb128 0xf
	.long	.LASF57
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x336
	.uleb128 0xf
	.long	.LASF58
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x336
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x6a
	.uleb128 0xd
	.long	0x319
	.long	0x36b
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.long	0x360
	.uleb128 0xf
	.long	.LASF60
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x36b
	.uleb128 0xf
	.long	.LASF61
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF62
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x36b
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF63
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF64
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0xe9
	.uleb128 0x9
	.long	.LASF67
	.byte	0x10
	.byte	0xa
	.byte	0xa
	.byte	0x8
	.long	0x3d6
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0xc
	.byte	0xc
	.long	0xe9
	.byte	0
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x10
	.byte	0x15
	.long	0x10d
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF70
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x6a
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF71
	.uleb128 0xf
	.long	.LASF72
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x119
	.uleb128 0xf
	.long	.LASF73
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF74
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF75
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x6a
	.uleb128 0x9
	.long	.LASF76
	.byte	0x20
	.byte	0xd
	.byte	0x32
	.byte	0x8
	.long	0x45c
	.uleb128 0xa
	.long	.LASF77
	.byte	0xd
	.byte	0x34
	.byte	0xf
	.long	0x313
	.byte	0
	.uleb128 0xa
	.long	.LASF78
	.byte	0xd
	.byte	0x37
	.byte	0x7
	.long	0x6a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF79
	.byte	0xd
	.byte	0x38
	.byte	0x8
	.long	0x461
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xd
	.byte	0x39
	.byte	0x7
	.long	0x6a
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	0x41a
	.uleb128 0x8
	.byte	0x8
	.long	0x6a
	.uleb128 0xd
	.long	0x119
	.long	0x477
	.uleb128 0xe
	.long	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF80
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x467
	.uleb128 0xf
	.long	.LASF81
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF82
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x76
	.uleb128 0xf
	.long	.LASF83
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x467
	.uleb128 0xf
	.long	.LASF84
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF85
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x76
	.uleb128 0x11
	.long	.LASF86
	.byte	0xe
	.value	0x112
	.byte	0xc
	.long	0x6a
	.uleb128 0x9
	.long	.LASF87
	.byte	0x90
	.byte	0xf
	.byte	0x2e
	.byte	0x8
	.long	0x59d
	.uleb128 0xa
	.long	.LASF88
	.byte	0xf
	.byte	0x30
	.byte	0xd
	.long	0x89
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0xf
	.byte	0x35
	.byte	0xd
	.long	0xad
	.byte	0x8
	.uleb128 0xa
	.long	.LASF90
	.byte	0xf
	.byte	0x3d
	.byte	0xf
	.long	0xc5
	.byte	0x10
	.uleb128 0xa
	.long	.LASF91
	.byte	0xf
	.byte	0x3e
	.byte	0xe
	.long	0xb9
	.byte	0x18
	.uleb128 0xa
	.long	.LASF92
	.byte	0xf
	.byte	0x40
	.byte	0xd
	.long	0x95
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF93
	.byte	0xf
	.byte	0x41
	.byte	0xd
	.long	0xa1
	.byte	0x20
	.uleb128 0xa
	.long	.LASF94
	.byte	0xf
	.byte	0x43
	.byte	0x9
	.long	0x6a
	.byte	0x24
	.uleb128 0xa
	.long	.LASF95
	.byte	0xf
	.byte	0x45
	.byte	0xd
	.long	0x89
	.byte	0x28
	.uleb128 0xa
	.long	.LASF96
	.byte	0xf
	.byte	0x4a
	.byte	0xd
	.long	0xd1
	.byte	0x30
	.uleb128 0xa
	.long	.LASF97
	.byte	0xf
	.byte	0x4e
	.byte	0x11
	.long	0xf5
	.byte	0x38
	.uleb128 0xa
	.long	.LASF98
	.byte	0xf
	.byte	0x50
	.byte	0x10
	.long	0x101
	.byte	0x40
	.uleb128 0xa
	.long	.LASF99
	.byte	0xf
	.byte	0x5b
	.byte	0x15
	.long	0x3ae
	.byte	0x48
	.uleb128 0xa
	.long	.LASF100
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x3ae
	.byte	0x58
	.uleb128 0xa
	.long	.LASF101
	.byte	0xf
	.byte	0x5d
	.byte	0x15
	.long	0x3ae
	.byte	0x68
	.uleb128 0xa
	.long	.LASF102
	.byte	0xf
	.byte	0x6a
	.byte	0x17
	.long	0x5a2
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.long	0x4cc
	.uleb128 0xd
	.long	0x10d
	.long	0x5b2
	.uleb128 0xe
	.long	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x8
	.byte	0x8
	.long	0x5b2
	.uleb128 0xd
	.long	0x319
	.long	0x5c9
	.uleb128 0xe
	.long	0x3e
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.long	0x5b9
	.uleb128 0x11
	.long	.LASF103
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x5c9
	.uleb128 0x11
	.long	.LASF104
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x5c9
	.uleb128 0x11
	.long	.LASF105
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x5f5
	.uleb128 0x8
	.byte	0x8
	.long	0x119
	.uleb128 0x11
	.long	.LASF106
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x5f5
	.uleb128 0xf
	.long	.LASF107
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x119
	.uleb128 0xf
	.long	.LASF108
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x119
	.uleb128 0xf
	.long	.LASF109
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x313
	.uleb128 0xf
	.long	.LASF110
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x71
	.uleb128 0x2
	.long	.LASF111
	.byte	0x15
	.byte	0x66
	.byte	0x16
	.long	0x7d
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x65c
	.uleb128 0x15
	.long	.LASF112
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x671
	.uleb128 0x16
	.long	.LASF113
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x6a
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x68f
	.uleb128 0x18
	.long	.LASF114
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF115
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x126
	.long	0x69a
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.long	0x68f
	.uleb128 0xf
	.long	.LASF116
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x69a
	.uleb128 0xf
	.long	.LASF117
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0x313
	.uleb128 0x19
	.long	.LASF140
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x70c
	.uleb128 0x16
	.long	.LASF118
	.byte	0
	.uleb128 0x16
	.long	.LASF119
	.byte	0x1
	.uleb128 0x16
	.long	.LASF120
	.byte	0x2
	.uleb128 0x16
	.long	.LASF121
	.byte	0x3
	.uleb128 0x16
	.long	.LASF122
	.byte	0x4
	.uleb128 0x16
	.long	.LASF123
	.byte	0x5
	.uleb128 0x16
	.long	.LASF124
	.byte	0x6
	.uleb128 0x16
	.long	.LASF125
	.byte	0x7
	.uleb128 0x16
	.long	.LASF126
	.byte	0x8
	.uleb128 0x16
	.long	.LASF127
	.byte	0x9
	.uleb128 0x16
	.long	.LASF128
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.long	0x6b7
	.uleb128 0x11
	.long	.LASF129
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x36b
	.uleb128 0xd
	.long	0x70c
	.long	0x729
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.long	0x71e
	.uleb128 0x11
	.long	.LASF130
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x729
	.uleb128 0xf
	.long	.LASF131
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x5b3
	.uleb128 0xf
	.long	.LASF132
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0x45
	.uleb128 0xf
	.long	.LASF133
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x6a
	.uleb128 0xc
	.long	.LASF134
	.uleb128 0xf
	.long	.LASF135
	.byte	0x1b
	.byte	0x19
	.byte	0x1f
	.long	0x75f
	.uleb128 0x1a
	.long	.LASF137
	.byte	0x2
	.byte	0x39
	.byte	0xd
	.long	0x786
	.uleb128 0x9
	.byte	0x3
	.quad	presume_input_pipe
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF136
	.uleb128 0x3
	.long	0x786
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x2
	.byte	0x3c
	.byte	0xd
	.long	0x786
	.uleb128 0x9
	.byte	0x3
	.quad	print_headers
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x2
	.byte	0x3f
	.byte	0xd
	.long	0x11f
	.uleb128 0x9
	.byte	0x3
	.quad	line_end
	.uleb128 0x19
	.long	.LASF141
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x2
	.byte	0x42
	.byte	0x6
	.long	0x7e3
	.uleb128 0x16
	.long	.LASF142
	.byte	0
	.uleb128 0x16
	.long	.LASF143
	.byte	0x1
	.uleb128 0x16
	.long	.LASF144
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x2
	.byte	0x48
	.byte	0xd
	.long	0x786
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x19
	.long	.LASF146
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x2
	.byte	0x4a
	.byte	0x6
	.long	0x81e
	.uleb128 0x16
	.long	.LASF147
	.byte	0
	.uleb128 0x16
	.long	.LASF148
	.byte	0x1
	.uleb128 0x16
	.long	.LASF149
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x45
	.byte	0x2
	.byte	0x54
	.byte	0x1
	.long	0x833
	.uleb128 0x16
	.long	.LASF150
	.byte	0x80
	.byte	0
	.uleb128 0xd
	.long	0x45c
	.long	0x843
	.uleb128 0xe
	.long	0x3e
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.long	0x833
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x2
	.byte	0x58
	.byte	0x1c
	.long	0x843
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1b
	.long	.LASF225
	.byte	0x2
	.value	0x396
	.byte	0x1
	.long	0x6a
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x9cd
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x2
	.value	0x396
	.byte	0xb
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x2
	.value	0x396
	.byte	0x18
	.long	0x5f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1d
	.long	.LASF141
	.byte	0x2
	.value	0x398
	.byte	0x14
	.long	0x7be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.value	0x399
	.byte	0x8
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.value	0x39a
	.byte	0x7
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1e
	.string	"i"
	.byte	0x2
	.value	0x39b
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1d
	.long	.LASF154
	.byte	0x2
	.value	0x39e
	.byte	0xd
	.long	0x638
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.long	.LASF155
	.byte	0x2
	.value	0x3a2
	.byte	0x8
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -123
	.uleb128 0x1d
	.long	.LASF156
	.byte	0x2
	.value	0x3a6
	.byte	0x8
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -122
	.uleb128 0x1d
	.long	.LASF157
	.byte	0x2
	.value	0x3aa
	.byte	0x1c
	.long	0x9dd
	.uleb128 0x9
	.byte	0x3
	.quad	default_file_list.6509
	.uleb128 0x1d
	.long	.LASF158
	.byte	0x2
	.value	0x3ab
	.byte	0x16
	.long	0x9e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x995
	.uleb128 0x1e
	.string	"a"
	.byte	0x2
	.value	0x3bd
	.byte	0xd
	.long	0x119
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF159
	.byte	0x2
	.value	0x3be
	.byte	0xd
	.long	0x119
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.long	.LASF160
	.byte	0x2
	.value	0x3bf
	.byte	0xd
	.long	0x119
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF161
	.byte	0x2
	.value	0x3c0
	.byte	0xc
	.long	0x11f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.byte	0
	.uleb128 0x1f
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x9bb
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x2
	.value	0x435
	.byte	0xc
	.long	0x9e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x20
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0
	.uleb128 0xd
	.long	0x319
	.long	0x9dd
	.uleb128 0xe
	.long	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	0x9cd
	.uleb128 0x8
	.byte	0x8
	.long	0x319
	.uleb128 0xd
	.long	0x11f
	.long	0x9f8
	.uleb128 0xe
	.long	0x3e
	.byte	0x14
	.byte	0
	.uleb128 0x21
	.long	.LASF163
	.byte	0x2
	.value	0x38e
	.byte	0x1
	.long	0x638
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0xa3c
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x2
	.value	0x38e
	.byte	0x19
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x2
	.value	0x38e
	.byte	0x32
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF164
	.byte	0x2
	.value	0x366
	.byte	0x1
	.long	0x786
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0xad0
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x2
	.value	0x366
	.byte	0x18
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x2
	.value	0x366
	.byte	0x2c
	.long	0x638
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x2
	.value	0x366
	.byte	0x3a
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.value	0x367
	.byte	0x11
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"fd"
	.byte	0x2
	.value	0x369
	.byte	0x7
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.value	0x36a
	.byte	0x8
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1d
	.long	.LASF166
	.byte	0x2
	.value	0x36b
	.byte	0x8
	.long	0x786
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0x21
	.long	.LASF167
	.byte	0x2
	.value	0x344
	.byte	0x1
	.long	0x786
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0xb7b
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x2
	.value	0x344
	.byte	0x13
	.long	0x313
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x22
	.string	"fd"
	.byte	0x2
	.value	0x344
	.byte	0x21
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x2
	.value	0x344
	.byte	0x2f
	.long	0x638
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x2
	.value	0x344
	.byte	0x3d
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.value	0x345
	.byte	0xc
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x23
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x1d
	.long	.LASF168
	.byte	0x2
	.value	0x34c
	.byte	0xd
	.long	0x31e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1e
	.string	"st"
	.byte	0x2
	.value	0x34d
	.byte	0x13
	.long	0x4cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF169
	.byte	0x2
	.value	0x31f
	.byte	0x1
	.long	0x786
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0xc4b
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x2
	.value	0x31f
	.byte	0x19
	.long	0x313
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8424
	.uleb128 0x22
	.string	"fd"
	.byte	0x2
	.value	0x31f
	.byte	0x27
	.long	0x6a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8428
	.uleb128 0x1c
	.long	.LASF170
	.byte	0x2
	.value	0x31f
	.byte	0x35
	.long	0x638
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8440
	.uleb128 0x1d
	.long	.LASF171
	.byte	0x2
	.value	0x321
	.byte	0x8
	.long	0xc4b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1d
	.long	.LASF172
	.byte	0x2
	.value	0x325
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8400
	.uleb128 0x1d
	.long	.LASF173
	.byte	0x2
	.value	0x326
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8408
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x2
	.value	0x332
	.byte	0x13
	.long	0x31e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8392
	.uleb128 0x23
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x1e
	.string	"st"
	.byte	0x2
	.value	0x338
	.byte	0x1d
	.long	0x4cc
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8384
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x11f
	.long	0xc5c
	.uleb128 0x25
	.long	0x3e
	.value	0x1fff
	.byte	0
	.uleb128 0x21
	.long	.LASF175
	.byte	0x2
	.value	0x306
	.byte	0x1
	.long	0x786
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf1
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x2
	.value	0x306
	.byte	0x19
	.long	0x313
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8264
	.uleb128 0x22
	.string	"fd"
	.byte	0x2
	.value	0x306
	.byte	0x27
	.long	0x6a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8268
	.uleb128 0x1c
	.long	.LASF173
	.byte	0x2
	.value	0x306
	.byte	0x35
	.long	0x638
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8280
	.uleb128 0x1d
	.long	.LASF171
	.byte	0x2
	.value	0x308
	.byte	0x8
	.long	0xc4b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x1d
	.long	.LASF176
	.byte	0x2
	.value	0x309
	.byte	0xa
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8256
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1d
	.long	.LASF172
	.byte	0x2
	.value	0x30d
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8248
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF177
	.byte	0x2
	.value	0x2f2
	.byte	0x1
	.long	0x786
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0xd74
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x2
	.value	0x2f2
	.byte	0x24
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"fd"
	.byte	0x2
	.value	0x2f2
	.byte	0x32
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x2
	.value	0x2f2
	.byte	0x40
	.long	0x638
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"st"
	.byte	0x2
	.value	0x2f3
	.byte	0x2b
	.long	0xd74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x2
	.value	0x2f3
	.byte	0x35
	.long	0x31e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF179
	.byte	0x2
	.value	0x2f5
	.byte	0x9
	.long	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x59d
	.uleb128 0x21
	.long	.LASF180
	.byte	0x2
	.value	0x287
	.byte	0x1
	.long	0x786
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0xea0
	.uleb128 0x1c
	.long	.LASF181
	.byte	0x2
	.value	0x287
	.byte	0x28
	.long	0x313
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8296
	.uleb128 0x22
	.string	"fd"
	.byte	0x2
	.value	0x287
	.byte	0x3d
	.long	0x6a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8300
	.uleb128 0x1c
	.long	.LASF182
	.byte	0x2
	.value	0x288
	.byte	0x26
	.long	0x638
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8312
	.uleb128 0x1c
	.long	.LASF183
	.byte	0x2
	.value	0x289
	.byte	0x22
	.long	0x31e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8320
	.uleb128 0x1c
	.long	.LASF179
	.byte	0x2
	.value	0x289
	.byte	0x33
	.long	0x31e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8328
	.uleb128 0x1d
	.long	.LASF171
	.byte	0x2
	.value	0x28b
	.byte	0x8
	.long	0xc4b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x1d
	.long	.LASF172
	.byte	0x2
	.value	0x28c
	.byte	0xa
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8272
	.uleb128 0x1e
	.string	"pos"
	.byte	0x2
	.value	0x28d
	.byte	0x9
	.long	0x31e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8264
	.uleb128 0x1d
	.long	.LASF184
	.byte	0x2
	.value	0x2a1
	.byte	0xe
	.long	0x78d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8277
	.uleb128 0x23
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1e
	.string	"n"
	.byte	0x2
	.value	0x2ab
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8256
	.uleb128 0x26
	.long	.Ldebug_ranges0+0
	.long	0xe7a
	.uleb128 0x1e
	.string	"nl"
	.byte	0x2
	.value	0x2b2
	.byte	0x1b
	.long	0x313
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8248
	.byte	0
	.uleb128 0x23
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x1e
	.string	"err"
	.byte	0x2
	.value	0x2bf
	.byte	0x27
	.long	0x7f9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8276
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF185
	.byte	0x2
	.value	0x1f2
	.byte	0x1
	.long	0x786
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x105f
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x2
	.value	0x1f2
	.byte	0x24
	.long	0x313
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.string	"fd"
	.byte	0x2
	.value	0x1f2
	.byte	0x32
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x2
	.value	0x1f2
	.byte	0x40
	.long	0x638
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x2
	.value	0x1f3
	.byte	0x1e
	.long	0x31e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF186
	.value	0x2018
	.byte	0x2
	.value	0x1f5
	.byte	0xa
	.long	0xf51
	.uleb128 0x28
	.long	.LASF171
	.byte	0x2
	.value	0x1f7
	.byte	0xa
	.long	0xc4b
	.byte	0
	.uleb128 0x29
	.long	.LASF187
	.byte	0x2
	.value	0x1f8
	.byte	0xc
	.long	0x2d
	.value	0x2000
	.uleb128 0x29
	.long	.LASF188
	.byte	0x2
	.value	0x1f9
	.byte	0xc
	.long	0x2d
	.value	0x2008
	.uleb128 0x29
	.long	.LASF189
	.byte	0x2
	.value	0x1fa
	.byte	0x18
	.long	0x105f
	.value	0x2010
	.byte	0
	.uleb128 0x1d
	.long	.LASF190
	.byte	0x2
	.value	0x1fc
	.byte	0xd
	.long	0x638
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF191
	.byte	0x2
	.value	0x1fd
	.byte	0x1d
	.long	0xf06
	.uleb128 0x1d
	.long	.LASF192
	.byte	0x2
	.value	0x1fe
	.byte	0xc
	.long	0xf80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x8
	.byte	0x8
	.long	0xf62
	.uleb128 0x1d
	.long	.LASF193
	.byte	0x2
	.value	0x1fe
	.byte	0x14
	.long	0xf80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.string	"tmp"
	.byte	0x2
	.value	0x1fe
	.byte	0x1b
	.long	0xf80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF194
	.byte	0x2
	.value	0x1ff
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.value	0x200
	.byte	0x8
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x1d
	.long	.LASF195
	.byte	0x2
	.value	0x201
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF202
	.byte	0x2
	.value	0x26e
	.byte	0x1
	.quad	.L95
	.uleb128 0x1f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x101f
	.uleb128 0x1d
	.long	.LASF196
	.byte	0x2
	.value	0x21e
	.byte	0x15
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"p"
	.byte	0x2
	.value	0x21f
	.byte	0x15
	.long	0x313
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x23
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1e
	.string	"n"
	.byte	0x2
	.value	0x261
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF196
	.byte	0x2
	.value	0x262
	.byte	0x13
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"p"
	.byte	0x2
	.value	0x263
	.byte	0x13
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xf06
	.uleb128 0x21
	.long	.LASF197
	.byte	0x2
	.value	0x1d1
	.byte	0x1
	.long	0x786
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x112c
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x2
	.value	0x1d1
	.byte	0x24
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"fd"
	.byte	0x2
	.value	0x1d1
	.byte	0x32
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x2
	.value	0x1d1
	.byte	0x40
	.long	0x638
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"st"
	.byte	0x2
	.value	0x1d2
	.byte	0x2b
	.long	0xd74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x2
	.value	0x1d2
	.byte	0x35
	.long	0x31e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.long	.LASF179
	.byte	0x2
	.value	0x1d4
	.byte	0x9
	.long	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1d
	.long	.LASF198
	.byte	0x2
	.value	0x1db
	.byte	0xd
	.long	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF199
	.byte	0x2
	.value	0x1dc
	.byte	0xd
	.long	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"err"
	.byte	0x2
	.value	0x1e1
	.byte	0x1b
	.long	0x7f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF200
	.byte	0x2
	.byte	0xf8
	.byte	0x1
	.long	0x786
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x139c
	.uleb128 0x2d
	.long	.LASF165
	.byte	0x2
	.byte	0xf8
	.byte	0x24
	.long	0x313
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2e
	.string	"fd"
	.byte	0x2
	.byte	0xf8
	.byte	0x32
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2d
	.long	.LASF201
	.byte	0x2
	.byte	0xf8
	.byte	0x40
	.long	0x638
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2d
	.long	.LASF168
	.byte	0x2
	.byte	0xf9
	.byte	0x1e
	.long	0x31e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1a
	.long	.LASF178
	.byte	0x2
	.byte	0xfb
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1a
	.long	.LASF190
	.byte	0x2
	.byte	0xfc
	.byte	0xd
	.long	0x638
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2f
	.string	"ok"
	.byte	0x2
	.byte	0xfd
	.byte	0x8
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -222
	.uleb128 0x2b
	.long	.LASF203
	.byte	0x2
	.value	0x1bd
	.byte	0x5
	.quad	.L65
	.uleb128 0x30
	.long	0x11e0
	.uleb128 0x31
	.long	.LASF162
	.byte	0x2
	.value	0x112
	.byte	0xc
	.long	0x9e8
	.byte	0
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x127b
	.uleb128 0x1d
	.long	.LASF192
	.byte	0x2
	.value	0x124
	.byte	0xc
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -221
	.uleb128 0x1e
	.string	"eof"
	.byte	0x2
	.value	0x125
	.byte	0xc
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x1d
	.long	.LASF204
	.byte	0x2
	.value	0x126
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.string	"i"
	.byte	0x2
	.value	0x127
	.byte	0xc
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -219
	.uleb128 0x1e
	.string	"b"
	.byte	0x2
	.value	0x128
	.byte	0xd
	.long	0x467
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1d
	.long	.LASF195
	.byte	0x2
	.value	0x12e
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.long	.LASF205
	.byte	0x2
	.value	0x12f
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1e
	.string	"eof"
	.byte	0x2
	.value	0x161
	.byte	0xc
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -218
	.uleb128 0x1d
	.long	.LASF195
	.byte	0x2
	.value	0x162
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1d
	.long	.LASF206
	.byte	0x2
	.value	0x163
	.byte	0xc
	.long	0x786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -217
	.uleb128 0x1e
	.string	"i"
	.byte	0x2
	.value	0x164
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1d
	.long	.LASF207
	.byte	0x2
	.value	0x164
	.byte	0x11
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.string	"b"
	.byte	0x2
	.value	0x165
	.byte	0xe
	.long	0x5f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.string	"rem"
	.byte	0x2
	.value	0x167
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1d
	.long	.LASF208
	.byte	0x2
	.value	0x168
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1d
	.long	.LASF209
	.byte	0x2
	.value	0x169
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1d
	.long	.LASF210
	.byte	0x2
	.value	0x16a
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1d
	.long	.LASF211
	.byte	0x2
	.value	0x16b
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x136a
	.uleb128 0x1d
	.long	.LASF212
	.byte	0x2
	.value	0x19c
	.byte	0x16
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x23
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1e
	.string	"y"
	.byte	0x2
	.value	0x1b6
	.byte	0x16
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.string	"x"
	.byte	0x2
	.value	0x1b7
	.byte	0x16
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF213
	.byte	0x2
	.byte	0xe0
	.byte	0x1
	.long	0x31e
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x141e
	.uleb128 0x2e
	.string	"fd"
	.byte	0x2
	.byte	0xe0
	.byte	0xd
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.long	.LASF214
	.byte	0x2
	.byte	0xe0
	.byte	0x17
	.long	0x31e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF215
	.byte	0x2
	.byte	0xe0
	.byte	0x23
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF165
	.byte	0x2
	.byte	0xe0
	.byte	0x37
	.long	0x313
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.long	.LASF216
	.byte	0x2
	.byte	0xe2
	.byte	0x9
	.long	0x31e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.string	"buf"
	.byte	0x2
	.byte	0xe3
	.byte	0x8
	.long	0x9e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2c
	.long	.LASF217
	.byte	0x2
	.byte	0xc2
	.byte	0x1
	.long	0x7f9
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b9
	.uleb128 0x2d
	.long	.LASF218
	.byte	0x2
	.byte	0xc2
	.byte	0xe
	.long	0x6a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8260
	.uleb128 0x2d
	.long	.LASF219
	.byte	0x2
	.byte	0xc2
	.byte	0x20
	.long	0x638
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8272
	.uleb128 0x2f
	.string	"buf"
	.byte	0x2
	.byte	0xc4
	.byte	0x8
	.long	0xc4b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8224
	.uleb128 0x1a
	.long	.LASF220
	.byte	0x2
	.byte	0xc5
	.byte	0x10
	.long	0x39
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8248
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1a
	.long	.LASF204
	.byte	0x2
	.byte	0xca
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x2
	.byte	0xcb
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8232
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF221
	.byte	0x2
	.byte	0xb4
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1507
	.uleb128 0x2d
	.long	.LASF171
	.byte	0x2
	.byte	0xb4
	.byte	0x1c
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF219
	.byte	0x2
	.byte	0xb4
	.byte	0x2b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.byte	0
	.uleb128 0x32
	.long	.LASF222
	.byte	0x2
	.byte	0xa8
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x154b
	.uleb128 0x2d
	.long	.LASF165
	.byte	0x2
	.byte	0xa8
	.byte	0x1b
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF223
	.byte	0x2
	.byte	0xaa
	.byte	0xf
	.long	0x786
	.uleb128 0x9
	.byte	0x3
	.quad	first_file.6303
	.byte	0
	.uleb128 0x32
	.long	.LASF224
	.byte	0x2
	.byte	0x98
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x1588
	.uleb128 0x2e
	.string	"err"
	.byte	0x2
	.byte	0x98
	.byte	0x2f
	.long	0x7f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF165
	.byte	0x2
	.byte	0x98
	.byte	0x40
	.long	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.long	.LASF226
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x15b6
	.uleb128 0x2d
	.long	.LASF227
	.byte	0x2
	.byte	0x68
	.byte	0xc
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x34
	.long	.LASF228
	.byte	0x1
	.value	0x2c1
	.byte	0x1
	.long	0x786
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x15e9
	.uleb128 0x22
	.string	"sb"
	.byte	0x1
	.value	0x2c1
	.byte	0x24
	.long	0xd74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF229
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x168e
	.uleb128 0x1c
	.long	.LASF230
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x313
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x36
	.long	.LASF231
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1644
	.uleb128 0x28
	.long	.LASF230
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x313
	.byte	0
	.uleb128 0x28
	.long	.LASF232
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x313
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x1619
	.uleb128 0x1d
	.long	.LASF231
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x169e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1d
	.long	.LASF232
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x313
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1d
	.long	.LASF233
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x16a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1d
	.long	.LASF234
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x313
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x1644
	.long	0x169e
	.uleb128 0xe
	.long	0x3e
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	0x168e
	.uleb128 0x8
	.byte	0x8
	.long	0x1644
	.uleb128 0x37
	.long	.LASF235
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF236
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.byte	0
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF221:
	.string	"xwrite_stdout"
.LASF102:
	.string	"__glibc_reserved"
.LASF101:
	.string	"st_ctim"
.LASF218:
	.string	"src_fd"
.LASF7:
	.string	"size_t"
.LASF142:
	.string	"multiple_files"
.LASF208:
	.string	"n_elide_round"
.LASF114:
	.string	"GETOPT_HELP_CHAR"
.LASF97:
	.string	"st_blksize"
.LASF183:
	.string	"start_pos"
.LASF98:
	.string	"st_blocks"
.LASF53:
	.string	"_IO_codecvt"
.LASF150:
	.string	"PRESUME_INPUT_PIPE_OPTION"
.LASF33:
	.string	"_IO_save_end"
.LASF175:
	.string	"head_bytes"
.LASF237:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF11:
	.string	"__gid_t"
.LASF143:
	.string	"always"
.LASF103:
	.string	"_sys_siglist"
.LASF100:
	.string	"st_mtim"
.LASF65:
	.string	"time_t"
.LASF26:
	.string	"_IO_write_base"
.LASF133:
	.string	"error_one_per_line"
.LASF147:
	.string	"COPY_FD_OK"
.LASF42:
	.string	"_lock"
.LASF163:
	.string	"string_to_integer"
.LASF187:
	.string	"nbytes"
.LASF87:
	.string	"stat"
.LASF80:
	.string	"__tzname"
.LASF31:
	.string	"_IO_save_base"
.LASF157:
	.string	"default_file_list"
.LASF211:
	.string	"n_array_alloc"
.LASF35:
	.string	"_chain"
.LASF178:
	.string	"n_elide"
.LASF39:
	.string	"_cur_column"
.LASF59:
	.string	"sys_nerr"
.LASF9:
	.string	"__dev_t"
.LASF198:
	.string	"diff"
.LASF61:
	.string	"_sys_nerr"
.LASF105:
	.string	"__environ"
.LASF6:
	.string	"long int"
.LASF238:
	.string	"src/head.c"
.LASF78:
	.string	"has_arg"
.LASF149:
	.string	"COPY_FD_UNEXPECTED_EOF"
.LASF52:
	.string	"_IO_marker"
.LASF161:
	.string	"multiplier_char"
.LASF225:
	.string	"main"
.LASF204:
	.string	"n_to_read"
.LASF154:
	.string	"n_units"
.LASF167:
	.string	"head"
.LASF137:
	.string	"presume_input_pipe"
.LASF207:
	.string	"i_next"
.LASF141:
	.string	"header_mode"
.LASF169:
	.string	"head_lines"
.LASF4:
	.string	"signed char"
.LASF18:
	.string	"__blksize_t"
.LASF236:
	.string	"emit_stdin_note"
.LASF66:
	.string	"_IO_FILE"
.LASF82:
	.string	"__timezone"
.LASF54:
	.string	"_IO_wide_data"
.LASF92:
	.string	"st_uid"
.LASF228:
	.string	"usable_st_size"
.LASF201:
	.string	"n_elide_0"
.LASF129:
	.string	"quoting_style_args"
.LASF106:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF46:
	.string	"_freeres_list"
.LASF95:
	.string	"st_rdev"
.LASF145:
	.string	"have_read_stdin"
.LASF199:
	.string	"bytes_remaining"
.LASF229:
	.string	"emit_ancillary_info"
.LASF132:
	.string	"error_message_count"
.LASF20:
	.string	"__syscall_slong_t"
.LASF136:
	.string	"_Bool"
.LASF196:
	.string	"buffer_end"
.LASF21:
	.string	"char"
.LASF200:
	.string	"elide_tail_bytes_pipe"
.LASF215:
	.string	"whence"
.LASF240:
	.string	"_IO_lock_t"
.LASF213:
	.string	"elseek"
.LASF203:
	.string	"free_mem"
.LASF177:
	.string	"elide_tail_lines_file"
.LASF165:
	.string	"filename"
.LASF85:
	.string	"timezone"
.LASF122:
	.string	"shell_escape_always_quoting_style"
.LASF13:
	.string	"__mode_t"
.LASF23:
	.string	"_IO_read_ptr"
.LASF160:
	.string	"end_n_string"
.LASF56:
	.string	"stdin"
.LASF60:
	.string	"sys_errlist"
.LASF216:
	.string	"new_offset"
.LASF34:
	.string	"_markers"
.LASF117:
	.string	"program_name"
.LASF124:
	.string	"c_maybe_quoting_style"
.LASF171:
	.string	"buffer"
.LASF146:
	.string	"Copy_fd_status"
.LASF232:
	.string	"node"
.LASF107:
	.string	"program_invocation_name"
.LASF43:
	.string	"_offset"
.LASF138:
	.string	"print_headers"
.LASF151:
	.string	"long_options"
.LASF93:
	.string	"st_gid"
.LASF73:
	.string	"optind"
.LASF219:
	.string	"n_bytes"
.LASF127:
	.string	"clocale_quoting_style"
.LASF131:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF184:
	.string	"all_lines"
.LASF220:
	.string	"buf_size"
.LASF227:
	.string	"status"
.LASF37:
	.string	"_flags2"
.LASF222:
	.string	"write_header"
.LASF159:
	.string	"n_string"
.LASF96:
	.string	"st_size"
.LASF25:
	.string	"_IO_read_base"
.LASF180:
	.string	"elide_tail_lines_seekable"
.LASF209:
	.string	"n_bufs"
.LASF76:
	.string	"option"
.LASF50:
	.string	"_unused2"
.LASF173:
	.string	"bytes_to_write"
.LASF152:
	.string	"argc"
.LASF38:
	.string	"_old_offset"
.LASF231:
	.string	"infomap"
.LASF185:
	.string	"elide_tail_lines_pipe"
.LASF153:
	.string	"argv"
.LASF19:
	.string	"__blkcnt_t"
.LASF119:
	.string	"shell_quoting_style"
.LASF12:
	.string	"__ino_t"
.LASF156:
	.string	"elide_from_end"
.LASF63:
	.string	"long long int"
.LASF230:
	.string	"program"
.LASF109:
	.string	"Version"
.LASF110:
	.string	"exit_failure"
.LASF70:
	.string	"_gl_cxxalias_dummy"
.LASF190:
	.string	"desired_pos"
.LASF123:
	.string	"c_quoting_style"
.LASF217:
	.string	"copy_fd"
.LASF28:
	.string	"_IO_write_end"
.LASF206:
	.string	"buffered_enough"
.LASF111:
	.string	"uintmax_t"
.LASF104:
	.string	"sys_siglist"
.LASF115:
	.string	"GETOPT_VERSION_CHAR"
.LASF29:
	.string	"_IO_buf_base"
.LASF1:
	.string	"unsigned int"
.LASF182:
	.string	"n_lines"
.LASF116:
	.string	"version_etc_copyright"
.LASF188:
	.string	"nlines"
.LASF130:
	.string	"quoting_style_vals"
.LASF118:
	.string	"literal_quoting_style"
.LASF94:
	.string	"__pad0"
.LASF83:
	.string	"tzname"
.LASF48:
	.string	"__pad5"
.LASF224:
	.string	"diagnose_copy_fd_failure"
.LASF79:
	.string	"flag"
.LASF134:
	.string	"quoting_options"
.LASF22:
	.string	"_flags"
.LASF214:
	.string	"offset"
.LASF234:
	.string	"lc_messages"
.LASF135:
	.string	"quote_quoting_options"
.LASF192:
	.string	"first"
.LASF49:
	.string	"_mode"
.LASF158:
	.string	"file_list"
.LASF44:
	.string	"_codecvt"
.LASF113:
	.string	"LOG10_TIMESPEC_HZ"
.LASF90:
	.string	"st_nlink"
.LASF55:
	.string	"off_t"
.LASF170:
	.string	"lines_to_write"
.LASF64:
	.string	"long double"
.LASF51:
	.string	"FILE"
.LASF186:
	.string	"linebuffer"
.LASF212:
	.string	"n_bytes_left_in_b_i"
.LASF88:
	.string	"st_dev"
.LASF67:
	.string	"timespec"
.LASF75:
	.string	"optopt"
.LASF172:
	.string	"bytes_read"
.LASF126:
	.string	"locale_quoting_style"
.LASF179:
	.string	"size"
.LASF71:
	.string	"long long unsigned int"
.LASF148:
	.string	"COPY_FD_READ_ERROR"
.LASF144:
	.string	"never"
.LASF210:
	.string	"n_alloc"
.LASF15:
	.string	"__off_t"
.LASF140:
	.string	"quoting_style"
.LASF108:
	.string	"program_invocation_short_name"
.LASF205:
	.string	"delta"
.LASF235:
	.string	"emit_mandatory_arg_note"
.LASF47:
	.string	"_freeres_buf"
.LASF74:
	.string	"opterr"
.LASF239:
	.string	"/root/coreutils"
.LASF17:
	.string	"__time_t"
.LASF32:
	.string	"_IO_backup_base"
.LASF41:
	.string	"_shortbuf"
.LASF164:
	.string	"head_file"
.LASF120:
	.string	"shell_always_quoting_style"
.LASF16:
	.string	"__off64_t"
.LASF125:
	.string	"escape_quoting_style"
.LASF30:
	.string	"_IO_buf_end"
.LASF77:
	.string	"name"
.LASF162:
	.string	"umax_buf"
.LASF233:
	.string	"map_prog"
.LASF58:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF69:
	.string	"tv_nsec"
.LASF226:
	.string	"usage"
.LASF121:
	.string	"shell_escape_quoting_style"
.LASF40:
	.string	"_vtable_offset"
.LASF62:
	.string	"_sys_errlist"
.LASF8:
	.string	"__uintmax_t"
.LASF139:
	.string	"line_end"
.LASF195:
	.string	"n_read"
.LASF112:
	.string	"TIMESPEC_HZ"
.LASF155:
	.string	"count_lines"
.LASF81:
	.string	"__daylight"
.LASF191:
	.string	"LBUFFER"
.LASF91:
	.string	"st_mode"
.LASF10:
	.string	"__uid_t"
.LASF24:
	.string	"_IO_read_end"
.LASF168:
	.string	"current_pos"
.LASF223:
	.string	"first_file"
.LASF86:
	.string	"getdate_err"
.LASF197:
	.string	"elide_tail_bytes_file"
.LASF36:
	.string	"_fileno"
.LASF45:
	.string	"_wide_data"
.LASF72:
	.string	"optarg"
.LASF194:
	.string	"total_lines"
.LASF3:
	.string	"short unsigned int"
.LASF57:
	.string	"stdout"
.LASF174:
	.string	"n_bytes_past_EOL"
.LASF27:
	.string	"_IO_write_ptr"
.LASF176:
	.string	"bytes_to_read"
.LASF84:
	.string	"daylight"
.LASF89:
	.string	"st_ino"
.LASF14:
	.string	"__nlink_t"
.LASF202:
	.string	"free_lbuffers"
.LASF181:
	.string	"pretty_filename"
.LASF189:
	.string	"next"
.LASF166:
	.string	"is_stdin"
.LASF68:
	.string	"tv_sec"
.LASF128:
	.string	"custom_quoting_style"
.LASF193:
	.string	"last"
.LASF99:
	.string	"st_atim"
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
