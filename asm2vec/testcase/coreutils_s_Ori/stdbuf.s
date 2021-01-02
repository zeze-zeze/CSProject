	.file	"stdbuf.c"
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
	.section	.rodata
	.align 8
.LC0:
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
.LFE36:
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
	je	.L10
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L10
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L10:
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
	jne	.L11
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L12
.L11:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L12:
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
	.local	program_path
	.comm	program_path,8,8
	.local	stdbuf
	.comm	stdbuf,72,32
	.section	.rodata
.LC19:
	.string	"input"
.LC20:
	.string	"output"
.LC21:
	.string	"error"
.LC22:
	.string	"help"
.LC23:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 192
longopts:
	.quad	.LC19
	.long	1
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	101
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC23
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
.LC24:
	.string	"EGkKMPTYZ0"
	.text
	.type	parse_size, @function
parse_size:
.LFB61:
	.file 2 "src/stdbuf.c"
	.loc 2 67 1 is_stmt 1
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
	.loc 2 67 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 69 25
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC24(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -36(%rbp)
	.loc 2 73 6
	cmpl	$0, -36(%rbp)
	jne	.L15
	.loc 2 75 7
	call	__errno_location@PLT
	.loc 2 75 13
	movl	$0, (%rax)
	.loc 2 76 13
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 77 14
	movl	$0, %eax
	jmp	.L19
.L15:
	.loc 2 80 46
	cmpl	$1, -36(%rbp)
	je	.L17
	.loc 2 80 48 discriminator 1
	call	__errno_location@PLT
	.loc 2 80 46 discriminator 1
	movl	(%rax), %ebx
	jmp	.L18
.L17:
	.loc 2 80 46 is_stmt 0 discriminator 2
	movl	$75, %ebx
.L18:
	.loc 2 80 3 is_stmt 1 discriminator 4
	call	__errno_location@PLT
	.loc 2 80 9 discriminator 4
	movl	%ebx, (%rax)
	.loc 2 81 10 discriminator 4
	movl	$-1, %eax
.L19:
	.loc 2 82 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L20
	.loc 2 82 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L20:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	parse_size, .-parse_size
	.section	.rodata
	.align 8
.LC25:
	.string	"Try '%s --help' for more information.\n"
.LC26:
	.string	"Usage: %s OPTION... COMMAND\n"
	.align 8
.LC27:
	.string	"Run COMMAND, with modified buffering operations for its standard streams.\n"
	.align 8
.LC28:
	.string	"  -i, --input=MODE   adjust standard input stream buffering\n  -o, --output=MODE  adjust standard output stream buffering\n  -e, --error=MODE   adjust standard error stream buffering\n"
	.align 8
.LC29:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC30:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC31:
	.string	"\nIf MODE is 'L' the corresponding stream will be line buffered.\nThis option is invalid with standard input.\n"
	.align 8
.LC32:
	.string	"\nIf MODE is '0' the corresponding stream will be unbuffered.\n"
	.align 8
.LC33:
	.ascii	"\nOtherwise MODE is a number which may be followed by on"
	.string	"e of the following:\nKB 1000, K 1024, MB 1000*1000, M 1024*1024, and so on for G, T, P, E, Z, Y.\nBinary prefixes can be used, too: KiB=K, MiB=M, and so on.\nIn this case the corresponding stream will be fully buffered with the buffer\nsize set to MODE bytes.\n"
	.align 8
.LC34:
	.ascii	"\nNOTE: If "
	.string	"COMMAND adjusts the buffering of its standard streams ('tee' does\nfor example) then that will override corresponding changes by 'stdbuf'.\nAlso some filters (like 'dd' and 'cat' etc.) don't use streams for I/O,\nand are thus unaffected by 'stdbuf' settings.\n"
.LC35:
	.string	"stdbuf"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB62:
	.loc 2 86 1 is_stmt 1
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
	.loc 2 87 6
	cmpl	$0, -20(%rbp)
	je	.L22
	.loc 2 88 5
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
	jmp	.L23
.L22:
	.loc 2 91 7
	movq	program_name(%rip), %rbx
	.loc 2 91 15
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	.loc 2 91 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 92 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 96 7
	call	emit_mandatory_arg_note
	.loc 2 98 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 103 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 104 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 105 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 108 7
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 111 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 118 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 124 7
	leaq	.LC35(%rip), %rdi
	call	emit_ancillary_info
.L23:
	.loc 2 126 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE62:
	.size	usage, .-usage
	.section	.rodata
.LC36:
	.string	"/proc/self/exe"
.LC37:
	.string	"PATH"
.LC38:
	.string	":"
	.text
	.type	set_program_path, @function
set_program_path:
.LFB63:
	.loc 2 137 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 138 7
	movq	-40(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 138 6
	testq	%rax, %rax
	je	.L25
	.loc 2 140 22
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dir_name@PLT
	.loc 2 140 20
	movq	%rax, program_path(%rip)
	.loc 2 165 1
	jmp	.L32
.L25:
.LBB2:
	.loc 2 144 20
	leaq	.LC36(%rip), %rdi
	call	xreadlink@PLT
	movq	%rax, -24(%rbp)
	.loc 2 145 10
	cmpq	$0, -24(%rbp)
	je	.L27
	.loc 2 146 24
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dir_name@PLT
	.loc 2 146 22
	movq	%rax, program_path(%rip)
	jmp	.L28
.L27:
	.loc 2 147 24
	leaq	.LC37(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -24(%rbp)
	.loc 2 147 15
	cmpq	$0, -24(%rbp)
	je	.L28
.LBB3:
	.loc 2 150 18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -24(%rbp)
	.loc 2 151 22
	movq	-24(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -16(%rbp)
	.loc 2 151 11
	jmp	.L29
.L31:
.LBB4:
	.loc 2 153 33
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -8(%rbp)
	.loc 2 154 19
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	access@PLT
	.loc 2 154 18
	testl	%eax, %eax
	jne	.L30
	.loc 2 156 34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dir_name@PLT
	.loc 2 156 32
	movq	%rax, program_path(%rip)
	.loc 2 157 19
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 158 19
	jmp	.L28
.L30:
	.loc 2 160 15 discriminator 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE4:
	.loc 2 151 61 discriminator 2
	leaq	.LC38(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -16(%rbp)
.L29:
	.loc 2 151 11 discriminator 1
	cmpq	$0, -16(%rbp)
	jne	.L31
.L28:
.LBE3:
	.loc 2 163 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L32:
.LBE2:
	.loc 2 165 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	set_program_path, .-set_program_path
	.type	optc_to_fileno, @function
optc_to_fileno:
.LFB64:
	.loc 2 169 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 2 170 7
	movl	$-1, -4(%rbp)
	.loc 2 172 3
	cmpl	$111, -20(%rbp)
	je	.L34
	cmpl	$111, -20(%rbp)
	jg	.L35
	cmpl	$101, -20(%rbp)
	je	.L36
	cmpl	$105, -20(%rbp)
	je	.L37
	jmp	.L35
.L36:
	.loc 2 175 11
	movl	$2, -4(%rbp)
	.loc 2 176 7
	jmp	.L35
.L37:
	.loc 2 178 11
	movl	$0, -4(%rbp)
	.loc 2 179 7
	jmp	.L35
.L34:
	.loc 2 181 11
	movl	$1, -4(%rbp)
	.loc 2 182 7
	nop
.L35:
	.loc 2 185 10
	movl	-4(%rbp), %eax
	.loc 2 186 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	optc_to_fileno, .-optc_to_fileno
	.section	.rodata
.LC39:
	.string	"LD_PRELOAD"
.LC40:
	.string	"/usr/local/libexec/coreutils"
.LC41:
	.string	"libstdbuf.so"
.LC42:
	.string	"%s/%s"
.LC43:
	.string	"failed to find %s"
.LC44:
	.string	"%s=%s:%s"
.LC45:
	.string	"%s=%s"
	.align 8
.LC46:
	.string	"failed to update the environment with %s"
	.text
	.type	set_LD_PRELOAD, @function
set_LD_PRELOAD:
.LFB65:
	.loc 2 190 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$240, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 2 190 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 195 15
	leaq	.LC39(%rip), %rax
	movq	%rax, -224(%rbp)
	.loc 2 197 20
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -216(%rbp)
	.loc 2 216 21
	movq	program_path(%rip), %rax
	movq	%rax, -208(%rbp)
	leaq	.LC40(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	$0, -192(%rbp)
	.loc 2 222 22
	leaq	-208(%rbp), %rax
	movq	%rax, -232(%rbp)
.L45:
.LBB5:
	.loc 2 229 13
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 229 12
	movzbl	(%rax), %eax
	.loc 2 229 10
	testb	%al, %al
	jne	.L40
	.loc 2 231 23
	leaq	.LC41(%rip), %rdi
	call	xstrdup@PLT
	.loc 2 231 21
	movq	%rax, -240(%rbp)
	.loc 2 232 11
	jmp	.L41
.L40:
	.loc 2 234 13
	movq	-232(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-240(%rbp), %rax
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	movl	%eax, -252(%rbp)
	.loc 2 235 10
	cmpl	$0, -252(%rbp)
	jns	.L42
	.loc 2 236 9
	call	xalloc_die@PLT
.L42:
	.loc 2 237 11
	movq	-240(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 237 10
	testl	%eax, %eax
	je	.L51
	.loc 2 239 7
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 241 7
	addq	$8, -232(%rbp)
	.loc 2 242 14
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 242 10
	testq	%rax, %rax
	jne	.L45
.LBB6:
	.loc 2 243 9
	leaq	.LC41(%rip), %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L51:
.LBE6:
	.loc 2 238 9
	nop
.L41:
.LBE5:
	.loc 2 248 6
	cmpq	$0, -216(%rbp)
	je	.L46
	.loc 2 249 11
	movq	-240(%rbp), %rsi
	movq	-216(%rbp), %rcx
	movq	-224(%rbp), %rdx
	leaq	-248(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	movl	%eax, -252(%rbp)
	jmp	.L47
.L46:
	.loc 2 251 11
	movq	-240(%rbp), %rcx
	movq	-224(%rbp), %rdx
	leaq	-248(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	movl	%eax, -252(%rbp)
.L47:
	.loc 2 253 6
	cmpl	$0, -252(%rbp)
	jns	.L48
	.loc 2 254 5
	call	xalloc_die@PLT
.L48:
	.loc 2 256 3
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 258 9
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	putenv@PLT
	movl	%eax, -252(%rbp)
	.loc 2 264 6
	cmpl	$0, -252(%rbp)
	je	.L52
.LBB7:
	.loc 2 266 7
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L52:
.LBE7:
	.loc 2 270 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	addq	$240, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	set_LD_PRELOAD, .-set_LD_PRELOAD
	.section	.rodata
.LC47:
	.string	"_STDBUF_"
.LC48:
	.string	"%s%c=L"
.LC49:
	.string	"%s%c=%lu"
	.text
	.type	set_libstdbuf_options, @function
set_libstdbuf_options:
.LFB66:
	.loc 2 277 1
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
	.loc 2 277 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 278 8
	movb	$0, -45(%rbp)
.LBB8:
	.loc 2 280 15
	movq	$0, -32(%rbp)
	.loc 2 280 3
	jmp	.L54
.L60:
	.loc 2 282 20
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+stdbuf(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 282 10
	testq	%rax, %rax
	je	.L55
.LBB9:
	.loc 2 287 25
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+stdbuf(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 287 15
	movzbl	(%rax), %eax
	.loc 2 287 14
	cmpb	$76, %al
	jne	.L56
	.loc 2 288 19
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+stdbuf(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	toupper@PLT
	movl	%eax, %edx
	leaq	-40(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC47(%rip), %rdx
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	movl	%eax, -44(%rbp)
	jmp	.L57
.L56:
	.loc 2 293 50
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	stdbuf(%rip), %rax
	movq	(%rdx,%rax), %rbx
	.loc 2 291 19
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+stdbuf(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	toupper@PLT
	movl	%eax, %edx
	leaq	-40(%rbp), %rax
	movq	%rbx, %r8
	movl	%edx, %ecx
	leaq	.LC47(%rip), %rdx
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	movl	%eax, -44(%rbp)
.L57:
	.loc 2 294 14
	cmpl	$0, -44(%rbp)
	jns	.L58
	.loc 2 295 13
	call	xalloc_die@PLT
.L58:
	.loc 2 297 15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	putenv@PLT
	.loc 2 297 14
	testl	%eax, %eax
	je	.L59
.LBB10:
	.loc 2 299 15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L59:
.LBE10:
	.loc 2 304 19
	movb	$1, -45(%rbp)
.L55:
.LBE9:
	.loc 2 280 55 discriminator 2
	addq	$1, -32(%rbp)
.L54:
	.loc 2 280 3 discriminator 1
	cmpq	$2, -32(%rbp)
	jbe	.L60
.LBE8:
	.loc 2 308 10
	movzbl	-45(%rbp), %eax
	.loc 2 309 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L62
	call	__stack_chk_fail@PLT
.L62:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	set_libstdbuf_options, .-set_libstdbuf_options
	.section	.rodata
.LC50:
	.string	"/usr/local/share/locale"
.LC51:
	.string	"src/stdbuf.c"
	.align 8
.LC52:
	.string	"0 <= opt_fileno && opt_fileno < ARRAY_CARDINALITY (stdbuf)"
	.align 8
.LC53:
	.string	"line buffering stdin is meaningless"
.LC54:
	.string	"L"
.LC55:
	.string	"invalid mode %s"
.LC56:
	.string	"Padraig Brady"
.LC57:
	.string	"+i:o:e:"
.LC58:
	.string	"missing operand"
	.align 8
.LC59:
	.string	"you must specify a buffering mode option"
.LC60:
	.string	"/usr/local/lib/coreutils"
.LC61:
	.string	"failed to run command %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB67:
	.loc 2 313 1
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
	movq	%rsi, -48(%rbp)
	.loc 2 317 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 318 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 319 3
	leaq	.LC50(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 320 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 322 3
	movl	$125, %edi
	call	initialize_exit_failure
	.loc 2 323 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 325 9
	jmp	.L64
.L75:
.LBB11:
	.loc 2 329 7
	cmpl	$111, -28(%rbp)
	jg	.L65
	cmpl	$101, -28(%rbp)
	jge	.L66
	cmpl	$-131, -28(%rbp)
	je	.L67
	cmpl	$-130, -28(%rbp)
	je	.L68
	jmp	.L65
.L66:
	movl	-28(%rbp), %eax
	subl	$101, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1041, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L65
	.loc 2 335 24
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	optc_to_fileno
	movl	%eax, -20(%rbp)
	.loc 2 336 11
	cmpl	$0, -20(%rbp)
	js	.L69
	.loc 2 336 11 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L82
.L69:
	.loc 2 336 11 discriminator 3
	leaq	__PRETTY_FUNCTION__.7056(%rip), %rcx
	movl	$336, %edx
	leaq	.LC51(%rip), %rsi
	leaq	.LC52(%rip), %rdi
	call	__assert_fail@PLT
.L82:
	.loc 2 337 35 is_stmt 1
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	8+stdbuf(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	.loc 2 338 17
	jmp	.L71
.L72:
	.loc 2 339 19
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
.L71:
	.loc 2 338 29
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 338 18
	movsbl	%al, %eax
	movl	%eax, %edi
	call	c_isspace@PLT
	.loc 2 338 17
	testb	%al, %al
	jne	.L72
	.loc 2 340 37
	movq	optarg(%rip), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+stdbuf(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	.loc 2 341 14
	cmpl	$105, -28(%rbp)
	jne	.L73
	.loc 2 341 27 discriminator 1
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 341 24 discriminator 1
	cmpb	$76, %al
	jne	.L73
	.loc 2 346 28
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	.loc 2 346 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 347 15
	movl	$125, %edi
	call	usage
.L73:
	.loc 2 350 16
	movq	optarg(%rip), %rax
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 350 14
	testl	%eax, %eax
	je	.L64
	.loc 2 351 18
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	stdbuf(%rip), %rdx
	addq	%rax, %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_size
	.loc 2 351 15
	cmpl	$-1, %eax
	jne	.L64
.LBB12:
	.loc 2 352 13
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L68:
.LBE12:
	.loc 2 356 9
	movl	$0, %edi
	call	usage
.L67:
	.loc 2 358 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC56(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L65:
	.loc 2 361 11
	movl	$125, %edi
	call	usage
.L64:
.LBE11:
	.loc 2 325 15
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -28(%rbp)
	.loc 2 325 9
	cmpl	$-1, -28(%rbp)
	jne	.L75
	.loc 2 365 8
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -48(%rbp)
	.loc 2 366 8
	movl	optind(%rip), %eax
	subl	%eax, -36(%rbp)
	.loc 2 369 6
	cmpl	$0, -36(%rbp)
	jg	.L76
	.loc 2 371 20
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	.loc 2 371 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 372 7
	movl	$125, %edi
	call	usage
.L76:
	.loc 2 375 9
	call	set_libstdbuf_options
	.loc 2 375 7
	xorl	$1, %eax
	.loc 2 375 6
	testb	%al, %al
	je	.L77
	.loc 2 377 20
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	.loc 2 377 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 378 7
	movl	$125, %edi
	call	usage
.L77:
	.loc 2 383 3
	movq	program_name(%rip), %rax
	movq	%rax, %rdi
	call	set_program_path
	.loc 2 384 7
	movq	program_path(%rip), %rax
	.loc 2 384 6
	testq	%rax, %rax
	jne	.L78
	.loc 2 385 20
	leaq	.LC60(%rip), %rdi
	call	xstrdup@PLT
	.loc 2 385 18
	movq	%rax, program_path(%rip)
.L78:
	.loc 2 386 3
	call	set_LD_PRELOAD
	.loc 2 387 3
	movq	program_path(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 389 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execvp@PLT
	.loc 2 391 21
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 391 51
	cmpl	$2, %eax
	jne	.L79
	.loc 2 391 51 is_stmt 0 discriminator 1
	movl	$127, %eax
	jmp	.L80
.L79:
	.loc 2 391 51 discriminator 2
	movl	$126, %eax
.L80:
	.loc 2 391 7 is_stmt 1 discriminator 4
	movl	%eax, -24(%rbp)
	.loc 2 392 3 discriminator 4
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 2 392 20 discriminator 4
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 392 13 discriminator 4
	call	__errno_location@PLT
	.loc 2 392 3 discriminator 4
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 393 10 discriminator 4
	movl	-24(%rbp), %eax
	.loc 2 394 1 discriminator 4
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.7056, @object
	.size	__PRETTY_FUNCTION__.7056, 5
__PRETTY_FUNCTION__.7056:
	.string	"main"
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
	.file 28 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcfb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF179
	.byte	0xc
	.long	.LASF180
	.long	.LASF181
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
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x71
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x71
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x8
	.long	0x11a
	.uleb128 0x9
	.long	.LASF65
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x2ad
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x114
	.byte	0x8
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x114
	.byte	0x10
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x114
	.byte	0x20
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x114
	.byte	0x28
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x114
	.byte	0x30
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x114
	.byte	0x38
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x114
	.byte	0x40
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x114
	.byte	0x48
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x114
	.byte	0x50
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x114
	.byte	0x58
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2c6
	.byte	0x60
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2cc
	.byte	0x68
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xcc
	.byte	0x78
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2d2
	.byte	0x83
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2e2
	.byte	0x88
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xd8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2ed
	.byte	0x98
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2f8
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2cc
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
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
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2fe
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x126
	.uleb128 0xb
	.long	.LASF182
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x7
	.byte	0x8
	.long	0x2c1
	.uleb128 0x7
	.byte	0x8
	.long	0x126
	.uleb128 0xd
	.long	0x11a
	.long	0x2e2
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2b9
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2e8
	.uleb128 0xc
	.long	.LASF54
	.uleb128 0x7
	.byte	0x8
	.long	0x2f3
	.uleb128 0xd
	.long	0x11a
	.long	0x30e
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x121
	.uleb128 0x8
	.long	0x30e
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x325
	.uleb128 0x7
	.byte	0x8
	.long	0x2ad
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x325
	.uleb128 0xf
	.long	.LASF57
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x325
	.uleb128 0xf
	.long	.LASF58
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x314
	.long	0x35a
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x34f
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x35a
	.uleb128 0xf
	.long	.LASF60
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x35a
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF62
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF63
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0xe4
	.uleb128 0x9
	.long	.LASF66
	.byte	0x10
	.byte	0xa
	.byte	0xa
	.byte	0x8
	.long	0x3c5
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0xc
	.byte	0xc
	.long	0xe4
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x10
	.byte	0x15
	.long	0x108
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF69
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF70
	.uleb128 0xf
	.long	.LASF71
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF72
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF74
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF75
	.byte	0x20
	.byte	0xd
	.byte	0x32
	.byte	0x8
	.long	0x44b
	.uleb128 0xa
	.long	.LASF76
	.byte	0xd
	.byte	0x34
	.byte	0xf
	.long	0x30e
	.byte	0
	.uleb128 0xa
	.long	.LASF77
	.byte	0xd
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF78
	.byte	0xd
	.byte	0x38
	.byte	0x8
	.long	0x450
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xd
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x409
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0x114
	.long	0x466
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF79
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x456
	.uleb128 0xf
	.long	.LASF80
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF81
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF82
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x456
	.uleb128 0xf
	.long	.LASF83
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF84
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF85
	.byte	0xe
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF86
	.byte	0x90
	.byte	0xf
	.byte	0x2e
	.byte	0x8
	.long	0x58c
	.uleb128 0xa
	.long	.LASF87
	.byte	0xf
	.byte	0x30
	.byte	0xd
	.long	0x84
	.byte	0
	.uleb128 0xa
	.long	.LASF88
	.byte	0xf
	.byte	0x35
	.byte	0xd
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF89
	.byte	0xf
	.byte	0x3d
	.byte	0xf
	.long	0xc0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF90
	.byte	0xf
	.byte	0x3e
	.byte	0xe
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF91
	.byte	0xf
	.byte	0x40
	.byte	0xd
	.long	0x90
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF92
	.byte	0xf
	.byte	0x41
	.byte	0xd
	.long	0x9c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF93
	.byte	0xf
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF94
	.byte	0xf
	.byte	0x45
	.byte	0xd
	.long	0x84
	.byte	0x28
	.uleb128 0xa
	.long	.LASF95
	.byte	0xf
	.byte	0x4a
	.byte	0xd
	.long	0xcc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF96
	.byte	0xf
	.byte	0x4e
	.byte	0x11
	.long	0xf0
	.byte	0x38
	.uleb128 0xa
	.long	.LASF97
	.byte	0xf
	.byte	0x50
	.byte	0x10
	.long	0xfc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF98
	.byte	0xf
	.byte	0x5b
	.byte	0x15
	.long	0x39d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF99
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x39d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF100
	.byte	0xf
	.byte	0x5d
	.byte	0x15
	.long	0x39d
	.byte	0x68
	.uleb128 0xa
	.long	.LASF101
	.byte	0xf
	.byte	0x6a
	.byte	0x17
	.long	0x58c
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0x108
	.long	0x59c
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x59c
	.uleb128 0xd
	.long	0x314
	.long	0x5b3
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5a3
	.uleb128 0x11
	.long	.LASF102
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x5b3
	.uleb128 0x11
	.long	.LASF103
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x5b3
	.uleb128 0x11
	.long	.LASF104
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x5df
	.uleb128 0x7
	.byte	0x8
	.long	0x114
	.uleb128 0x11
	.long	.LASF105
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x5df
	.uleb128 0xf
	.long	.LASF106
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF107
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF108
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x30e
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x63d
	.uleb128 0x15
	.long	.LASF109
	.byte	0x7c
	.uleb128 0x15
	.long	.LASF110
	.byte	0x7d
	.uleb128 0x15
	.long	.LASF111
	.byte	0x7e
	.uleb128 0x15
	.long	.LASF112
	.byte	0x7f
	.byte	0
	.uleb128 0xf
	.long	.LASF113
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF114
	.byte	0x15
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x66d
	.uleb128 0x16
	.long	.LASF115
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x682
	.uleb128 0x15
	.long	.LASF116
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x6a0
	.uleb128 0x18
	.long	.LASF117
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF118
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x121
	.long	0x6ab
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x6a0
	.uleb128 0xf
	.long	.LASF119
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x6ab
	.uleb128 0xf
	.long	.LASF120
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0x30e
	.uleb128 0x19
	.long	.LASF139
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x71d
	.uleb128 0x15
	.long	.LASF121
	.byte	0
	.uleb128 0x15
	.long	.LASF122
	.byte	0x1
	.uleb128 0x15
	.long	.LASF123
	.byte	0x2
	.uleb128 0x15
	.long	.LASF124
	.byte	0x3
	.uleb128 0x15
	.long	.LASF125
	.byte	0x4
	.uleb128 0x15
	.long	.LASF126
	.byte	0x5
	.uleb128 0x15
	.long	.LASF127
	.byte	0x6
	.uleb128 0x15
	.long	.LASF128
	.byte	0x7
	.uleb128 0x15
	.long	.LASF129
	.byte	0x8
	.uleb128 0x15
	.long	.LASF130
	.byte	0x9
	.uleb128 0x15
	.long	.LASF131
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x6c8
	.uleb128 0x11
	.long	.LASF132
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x35a
	.uleb128 0xd
	.long	0x71d
	.long	0x73a
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x72f
	.uleb128 0x11
	.long	.LASF133
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x73a
	.uleb128 0xf
	.long	.LASF134
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x59d
	.uleb128 0xf
	.long	.LASF135
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF136
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF137
	.uleb128 0xf
	.long	.LASF138
	.byte	0x1b
	.byte	0x19
	.byte	0x1f
	.long	0x770
	.uleb128 0x19
	.long	.LASF140
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x19
	.byte	0x6
	.long	0x7b2
	.uleb128 0x15
	.long	.LASF141
	.byte	0
	.uleb128 0x15
	.long	.LASF142
	.byte	0x1
	.uleb128 0x15
	.long	.LASF143
	.byte	0x2
	.uleb128 0x15
	.long	.LASF144
	.byte	0x3
	.uleb128 0x15
	.long	.LASF145
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.long	.LASF148
	.byte	0x2
	.byte	0x28
	.byte	0xe
	.long	0x114
	.uleb128 0x9
	.byte	0x3
	.quad	program_path
	.uleb128 0x1b
	.byte	0x18
	.byte	0x2
	.byte	0x2a
	.byte	0x8
	.long	0x7f9
	.uleb128 0xa
	.long	.LASF146
	.byte	0x2
	.byte	0x2c
	.byte	0xa
	.long	0x2d
	.byte	0
	.uleb128 0xa
	.long	.LASF147
	.byte	0x2
	.byte	0x2d
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF71
	.byte	0x2
	.byte	0x2e
	.byte	0x9
	.long	0x114
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	0x7c8
	.long	0x809
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x2
	.byte	0x2f
	.byte	0x3
	.long	0x7f9
	.uleb128 0x9
	.byte	0x3
	.quad	stdbuf
	.uleb128 0xd
	.long	0x44b
	.long	0x82f
	.uleb128 0xe
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x81f
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.long	0x82f
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x2
	.value	0x138
	.byte	0x1
	.long	0x65
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f2
	.uleb128 0x1d
	.long	.LASF151
	.byte	0x2
	.value	0x138
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	.LASF152
	.byte	0x2
	.value	0x138
	.byte	0x18
	.long	0x5df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.value	0x13a
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.long	.LASF183
	.long	0x902
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7056
	.uleb128 0x20
	.long	.LASF153
	.byte	0x2
	.value	0x187
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x20
	.long	.LASF154
	.byte	0x2
	.value	0x147
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x121
	.long	0x902
	.uleb128 0xe
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x8f2
	.uleb128 0x23
	.long	.LASF163
	.byte	0x2
	.value	0x114
	.byte	0x1
	.long	0x99e
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x99e
	.uleb128 0x20
	.long	.LASF155
	.byte	0x2
	.value	0x116
	.byte	0x8
	.long	0x99e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1e
	.string	"i"
	.byte	0x2
	.value	0x118
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1e
	.string	"var"
	.byte	0x2
	.value	0x11c
	.byte	0x11
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"ret"
	.byte	0x2
	.value	0x11d
	.byte	0xf
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF156
	.uleb128 0x24
	.long	.LASF165
	.byte	0x2
	.byte	0xbd
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7b
	.uleb128 0x25
	.string	"ret"
	.byte	0x2
	.byte	0xbf
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x1a
	.long	.LASF157
	.byte	0x2
	.byte	0xc3
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1a
	.long	.LASF158
	.byte	0x2
	.byte	0xc5
	.byte	0x9
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1a
	.long	.LASF159
	.byte	0x2
	.byte	0xc6
	.byte	0x9
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x2
	.byte	0xd8
	.byte	0x15
	.long	0xa8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x2
	.byte	0xde
	.byte	0x16
	.long	0xa90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x1a
	.long	.LASF162
	.byte	0x2
	.byte	0xdf
	.byte	0x9
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xa69
	.uleb128 0x25
	.string	"sb"
	.byte	0x2
	.byte	0xe3
	.byte	0x13
	.long	0x4bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x22
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.uleb128 0xd
	.long	0x314
	.long	0xa8b
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0xa7b
	.uleb128 0x7
	.byte	0x8
	.long	0x314
	.uleb128 0x27
	.long	.LASF164
	.byte	0x2
	.byte	0xa8
	.byte	0x1
	.long	0x65
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0xad5
	.uleb128 0x28
	.string	"c"
	.byte	0x2
	.byte	0xa8
	.byte	0x15
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"ret"
	.byte	0x2
	.byte	0xaa
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF166
	.byte	0x2
	.byte	0x88
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0xb66
	.uleb128 0x28
	.string	"arg"
	.byte	0x2
	.byte	0x88
	.byte	0x1f
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x2
	.byte	0x90
	.byte	0xd
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x25
	.string	"dir"
	.byte	0x2
	.byte	0x95
	.byte	0x11
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1a
	.long	.LASF167
	.byte	0x2
	.byte	0x99
	.byte	0x15
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF169
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0xb94
	.uleb128 0x2a
	.long	.LASF170
	.byte	0x2
	.byte	0x55
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.long	.LASF171
	.byte	0x2
	.byte	0x42
	.byte	0x1
	.long	0x65
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf3
	.uleb128 0x28
	.string	"str"
	.byte	0x2
	.byte	0x42
	.byte	0x19
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF146
	.byte	0x2
	.byte	0x42
	.byte	0x26
	.long	0xbf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF172
	.byte	0x2
	.byte	0x44
	.byte	0xd
	.long	0x649
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"e"
	.byte	0x2
	.byte	0x45
	.byte	0x15
	.long	0x781
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2d
	.uleb128 0x2c
	.long	.LASF173
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xc9e
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.long	.LASF175
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xc54
	.uleb128 0x2e
	.long	.LASF174
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x30e
	.byte	0
	.uleb128 0x2e
	.long	.LASF176
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x30e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xc29
	.uleb128 0x20
	.long	.LASF175
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xcae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF176
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF177
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xcb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.long	.LASF178
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xc54
	.long	0xcae
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xc9e
	.uleb128 0x7
	.byte	0x8
	.long	0xc54
	.uleb128 0x2f
	.long	.LASF184
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF185
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF170
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.long	0x65
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
	.uleb128 0xb
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0
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
	.uleb128 0x24
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
.LASF113:
	.string	"exit_failure"
.LASF15:
	.string	"__off_t"
.LASF11:
	.string	"__gid_t"
.LASF23:
	.string	"_IO_read_ptr"
.LASF129:
	.string	"locale_quoting_style"
.LASF35:
	.string	"_chain"
.LASF100:
	.string	"st_ctim"
.LASF163:
	.string	"set_libstdbuf_options"
.LASF150:
	.string	"longopts"
.LASF139:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF155:
	.string	"env_set"
.LASF41:
	.string	"_shortbuf"
.LASF122:
	.string	"shell_quoting_style"
.LASF165:
	.string	"set_LD_PRELOAD"
.LASF117:
	.string	"GETOPT_HELP_CHAR"
.LASF161:
	.string	"path"
.LASF29:
	.string	"_IO_buf_base"
.LASF70:
	.string	"long long unsigned int"
.LASF142:
	.string	"LONGINT_OVERFLOW"
.LASF154:
	.string	"opt_fileno"
.LASF56:
	.string	"stdout"
.LASF162:
	.string	"libstdbuf"
.LASF143:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF86:
	.string	"stat"
.LASF10:
	.string	"__uid_t"
.LASF62:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF133:
	.string	"quoting_style_vals"
.LASF183:
	.string	"__PRETTY_FUNCTION__"
.LASF174:
	.string	"program"
.LASF128:
	.string	"escape_quoting_style"
.LASF13:
	.string	"__mode_t"
.LASF146:
	.string	"size"
.LASF159:
	.string	"LD_PRELOAD"
.LASF167:
	.string	"candidate"
.LASF121:
	.string	"literal_quoting_style"
.LASF36:
	.string	"_fileno"
.LASF24:
	.string	"_IO_read_end"
.LASF81:
	.string	"__timezone"
.LASF19:
	.string	"__blkcnt_t"
.LASF103:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF69:
	.string	"_gl_cxxalias_dummy"
.LASF22:
	.string	"_flags"
.LASF45:
	.string	"_wide_data"
.LASF30:
	.string	"_IO_buf_end"
.LASF39:
	.string	"_cur_column"
.LASF107:
	.string	"program_invocation_short_name"
.LASF126:
	.string	"c_quoting_style"
.LASF53:
	.string	"_IO_codecvt"
.LASF61:
	.string	"_sys_errlist"
.LASF106:
	.string	"program_invocation_name"
.LASF38:
	.string	"_old_offset"
.LASF43:
	.string	"_offset"
.LASF109:
	.string	"EXIT_TIMEDOUT"
.LASF148:
	.string	"program_path"
.LASF111:
	.string	"EXIT_CANNOT_INVOKE"
.LASF115:
	.string	"TIMESPEC_HZ"
.LASF93:
	.string	"__pad0"
.LASF125:
	.string	"shell_escape_always_quoting_style"
.LASF84:
	.string	"timezone"
.LASF97:
	.string	"st_blocks"
.LASF120:
	.string	"program_name"
.LASF91:
	.string	"st_uid"
.LASF160:
	.string	"search_path"
.LASF52:
	.string	"_IO_marker"
.LASF55:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF47:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF114:
	.string	"uintmax_t"
.LASF27:
	.string	"_IO_write_ptr"
.LASF76:
	.string	"name"
.LASF58:
	.string	"sys_nerr"
.LASF179:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF147:
	.string	"optc"
.LASF3:
	.string	"short unsigned int"
.LASF136:
	.string	"error_one_per_line"
.LASF108:
	.string	"Version"
.LASF31:
	.string	"_IO_save_base"
.LASF14:
	.string	"__nlink_t"
.LASF105:
	.string	"environ"
.LASF42:
	.string	"_lock"
.LASF37:
	.string	"_flags2"
.LASF49:
	.string	"_mode"
.LASF140:
	.string	"strtol_error"
.LASF95:
	.string	"st_size"
.LASF119:
	.string	"version_etc_copyright"
.LASF90:
	.string	"st_mode"
.LASF44:
	.string	"_codecvt"
.LASF71:
	.string	"optarg"
.LASF68:
	.string	"tv_nsec"
.LASF85:
	.string	"getdate_err"
.LASF9:
	.string	"__dev_t"
.LASF72:
	.string	"optind"
.LASF20:
	.string	"__syscall_slong_t"
.LASF110:
	.string	"EXIT_CANCELED"
.LASF28:
	.string	"_IO_write_end"
.LASF182:
	.string	"_IO_lock_t"
.LASF65:
	.string	"_IO_FILE"
.LASF134:
	.string	"error_print_progname"
.LASF18:
	.string	"__blksize_t"
.LASF177:
	.string	"map_prog"
.LASF104:
	.string	"__environ"
.LASF64:
	.string	"time_t"
.LASF59:
	.string	"sys_errlist"
.LASF118:
	.string	"GETOPT_VERSION_CHAR"
.LASF34:
	.string	"_markers"
.LASF141:
	.string	"LONGINT_OK"
.LASF101:
	.string	"__glibc_reserved"
.LASF89:
	.string	"st_nlink"
.LASF127:
	.string	"c_maybe_quoting_style"
.LASF116:
	.string	"LOG10_TIMESPEC_HZ"
.LASF156:
	.string	"_Bool"
.LASF158:
	.string	"old_libs"
.LASF153:
	.string	"exit_status"
.LASF185:
	.string	"initialize_exit_failure"
.LASF176:
	.string	"node"
.LASF88:
	.string	"st_ino"
.LASF5:
	.string	"short int"
.LASF75:
	.string	"option"
.LASF96:
	.string	"st_blksize"
.LASF138:
	.string	"quote_quoting_options"
.LASF172:
	.string	"tmp_size"
.LASF78:
	.string	"flag"
.LASF60:
	.string	"_sys_nerr"
.LASF66:
	.string	"timespec"
.LASF40:
	.string	"_vtable_offset"
.LASF82:
	.string	"tzname"
.LASF124:
	.string	"shell_escape_quoting_style"
.LASF112:
	.string	"EXIT_ENOENT"
.LASF12:
	.string	"__ino_t"
.LASF132:
	.string	"quoting_style_args"
.LASF74:
	.string	"optopt"
.LASF171:
	.string	"parse_size"
.LASF83:
	.string	"daylight"
.LASF94:
	.string	"st_rdev"
.LASF63:
	.string	"long double"
.LASF21:
	.string	"char"
.LASF123:
	.string	"shell_always_quoting_style"
.LASF67:
	.string	"tv_sec"
.LASF157:
	.string	"preload_env"
.LASF149:
	.string	"stdbuf"
.LASF130:
	.string	"clocale_quoting_style"
.LASF73:
	.string	"opterr"
.LASF166:
	.string	"set_program_path"
.LASF8:
	.string	"__uintmax_t"
.LASF16:
	.string	"__off64_t"
.LASF137:
	.string	"quoting_options"
.LASF25:
	.string	"_IO_read_base"
.LASF33:
	.string	"_IO_save_end"
.LASF102:
	.string	"_sys_siglist"
.LASF2:
	.string	"unsigned char"
.LASF164:
	.string	"optc_to_fileno"
.LASF175:
	.string	"infomap"
.LASF92:
	.string	"st_gid"
.LASF77:
	.string	"has_arg"
.LASF169:
	.string	"usage"
.LASF48:
	.string	"__pad5"
.LASF17:
	.string	"__time_t"
.LASF50:
	.string	"_unused2"
.LASF57:
	.string	"stderr"
.LASF98:
	.string	"st_atim"
.LASF152:
	.string	"argv"
.LASF80:
	.string	"__daylight"
.LASF170:
	.string	"status"
.LASF181:
	.string	"/root/coreutils"
.LASF87:
	.string	"st_dev"
.LASF131:
	.string	"custom_quoting_style"
.LASF144:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF32:
	.string	"_IO_backup_base"
.LASF99:
	.string	"st_mtim"
.LASF135:
	.string	"error_message_count"
.LASF178:
	.string	"lc_messages"
.LASF151:
	.string	"argc"
.LASF46:
	.string	"_freeres_list"
.LASF54:
	.string	"_IO_wide_data"
.LASF51:
	.string	"FILE"
.LASF145:
	.string	"LONGINT_INVALID"
.LASF184:
	.string	"emit_mandatory_arg_note"
.LASF79:
	.string	"__tzname"
.LASF168:
	.string	"main"
.LASF26:
	.string	"_IO_write_base"
.LASF173:
	.string	"emit_ancillary_info"
.LASF180:
	.string	"src/stdbuf.c"
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
