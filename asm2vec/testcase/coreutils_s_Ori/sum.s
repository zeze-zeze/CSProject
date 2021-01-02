	.file	"sum.c"
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
	jmp	.L3
.L5:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L3:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L4
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L5
.L4:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L6
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L6:
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
	je	.L7
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L7
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L7:
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
	jne	.L8
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L9
.L8:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L9:
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
	je	.L10
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L10:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.section	.rodata
.LC19:
	.string	"sysv"
.LC20:
	.string	"help"
.LC21:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 128
longopts:
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC21
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
.LC22:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC23:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC24:
	.string	"Print checksum and block counts for each FILE.\n"
	.align 8
.LC25:
	.string	"\n  -r              use BSD sum algorithm, use 1K blocks\n  -s, --sysv      use System V sum algorithm, use 512 bytes blocks\n"
	.align 8
.LC26:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC27:
	.string	"      --version  output version information and exit\n"
.LC28:
	.string	"sum"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.file 2 "src/sum.c"
	.loc 2 54 1 is_stmt 1
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
	.loc 2 55 6
	cmpl	$0, -20(%rbp)
	je	.L12
	.loc 2 56 5
	movq	program_name(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L13
.L12:
	.loc 2 59 7
	movq	program_name(%rip), %rbx
	.loc 2 59 15
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	.loc 2 59 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 63 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 67 7
	call	emit_stdin_note
	.loc 2 69 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 74 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 75 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 76 7
	leaq	.LC28(%rip), %rdi
	call	emit_ancillary_info
.L13:
	.loc 2 78 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.section	.rodata
.LC29:
	.string	"-"
.LC30:
	.string	"r"
.LC31:
	.string	"%s"
.LC32:
	.string	"%05d %5s"
.LC33:
	.string	" %s"
	.text
	.type	bsd_sum_file, @function
bsd_sum_file:
.LFB51:
	.loc 2 89 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$728, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -728(%rbp)
	movl	%esi, -732(%rbp)
	.loc 2 89 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 91 7
	movl	$0, -712(%rbp)
	.loc 2 92 13
	movq	$0, -696(%rbp)
	.loc 2 95 19
	movq	-728(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 95 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -713(%rbp)
	.loc 2 97 6
	cmpb	$0, -713(%rbp)
	je	.L15
	.loc 2 99 10
	movq	stdin(%rip), %rax
	movq	%rax, -704(%rbp)
	.loc 2 100 23
	movb	$1, have_read_stdin(%rip)
	.loc 2 101 7
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	jmp	.L16
.L15:
	.loc 2 105 12
	movq	-728(%rbp), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -704(%rbp)
	.loc 2 106 10
	cmpq	$0, -704(%rbp)
	jne	.L16
	.loc 2 108 11
	movq	-728(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 108 21
	call	__errno_location@PLT
	.loc 2 108 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC31(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 109 18
	movl	$0, %eax
	jmp	.L24
.L16:
	.loc 2 113 3
	movq	-704(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 115 9
	jmp	.L18
.L19:
	.loc 2 117 18
	addq	$1, -696(%rbp)
	.loc 2 118 28
	movl	-712(%rbp), %eax
	sarl	%eax
	movl	%eax, %edx
	.loc 2 118 52
	movl	-712(%rbp), %eax
	sall	$15, %eax
	movzwl	%ax, %eax
	.loc 2 118 16
	addl	%edx, %eax
	movl	%eax, -712(%rbp)
	.loc 2 119 16
	movl	-708(%rbp), %eax
	addl	%eax, -712(%rbp)
	.loc 2 120 16
	andl	$65535, -712(%rbp)
.L18:
	.loc 2 115 16
	movq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -708(%rbp)
	.loc 2 115 9
	cmpl	$-1, -708(%rbp)
	jne	.L19
	.loc 2 123 7
	movq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 123 6
	testl	%eax, %eax
	je	.L20
	.loc 2 125 7
	movq	-728(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 125 17
	call	__errno_location@PLT
	.loc 2 125 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC31(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 126 11
	movzbl	-713(%rbp), %eax
	xorl	$1, %eax
	.loc 2 126 10
	testb	%al, %al
	je	.L21
	.loc 2 127 9
	movq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
.L21:
	.loc 2 128 14
	movl	$0, %eax
	jmp	.L24
.L20:
	.loc 2 131 7
	movzbl	-713(%rbp), %eax
	xorl	$1, %eax
	.loc 2 131 6
	testb	%al, %al
	je	.L22
	.loc 2 131 20 discriminator 1
	movq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 131 17 discriminator 1
	testl	%eax, %eax
	je	.L22
	.loc 2 133 7
	movq	-728(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 133 17
	call	__errno_location@PLT
	.loc 2 133 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC31(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 134 14
	movl	$0, %eax
	jmp	.L24
.L22:
	.loc 2 137 3
	leaq	-688(%rbp), %rsi
	movq	-696(%rbp), %rax
	movl	$1024, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, %rdx
	movl	-712(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 139 6
	cmpl	$1, -732(%rbp)
	jle	.L23
	.loc 2 140 5
	movq	-728(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L23:
	.loc 2 141 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 143 10
	movl	$1, %eax
.L24:
	.loc 2 144 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L25
	.loc 2 144 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L25:
	addq	$728, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	bsd_sum_file, .-bsd_sum_file
	.section	.rodata
.LC34:
	.string	"%d %s"
	.text
	.type	sysv_sum_file, @function
sysv_sum_file:
.LFB52:
	.loc 2 153 1 is_stmt 1
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
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$744, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -8936(%rbp)
	movl	%esi, -8940(%rbp)
	.loc 2 153 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 156 13
	movq	$0, -8904(%rbp)
	.loc 2 162 16
	movl	$0, -8916(%rbp)
	.loc 2 164 19
	movq	-8936(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 164 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -8921(%rbp)
	.loc 2 166 6
	cmpb	$0, -8921(%rbp)
	je	.L27
	.loc 2 168 10
	movl	$0, -8920(%rbp)
	.loc 2 169 23
	movb	$1, have_read_stdin(%rip)
	.loc 2 170 7
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	jmp	.L36
.L27:
	.loc 2 174 12
	movq	-8936(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -8920(%rbp)
	.loc 2 175 10
	cmpl	$-1, -8920(%rbp)
	jne	.L36
	.loc 2 177 11
	movq	-8936(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 177 21
	call	__errno_location@PLT
	.loc 2 177 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC31(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 178 18
	movl	$0, %eax
	jmp	.L39
.L36:
.LBB2:
	.loc 2 184 27
	leaq	-8224(%rbp), %rcx
	movl	-8920(%rbp), %eax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8888(%rbp)
	.loc 2 186 10
	cmpq	$0, -8888(%rbp)
	je	.L42
	.loc 2 189 10
	cmpq	$-1, -8888(%rbp)
	jne	.L32
	.loc 2 191 11
	movq	-8936(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 191 21
	call	__errno_location@PLT
	.loc 2 191 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC31(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 192 15
	movzbl	-8921(%rbp), %eax
	xorl	$1, %eax
	.loc 2 192 14
	testb	%al, %al
	je	.L33
	.loc 2 193 13
	movl	-8920(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L33:
	.loc 2 194 18
	movl	$0, %eax
	jmp	.L39
.L32:
.LBB3:
	.loc 2 197 19
	movq	$0, -8896(%rbp)
	.loc 2 197 7
	jmp	.L34
.L35:
	.loc 2 198 17 discriminator 3
	leaq	-8224(%rbp), %rdx
	movq	-8896(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 2 198 11 discriminator 3
	addl	%eax, -8916(%rbp)
	.loc 2 197 43 discriminator 3
	addq	$1, -8896(%rbp)
.L34:
	.loc 2 197 7 discriminator 1
	movq	-8896(%rbp), %rax
	cmpq	-8888(%rbp), %rax
	jb	.L35
.LBE3:
	.loc 2 199 19
	movq	-8888(%rbp), %rax
	addq	%rax, -8904(%rbp)
.LBE2:
	.loc 2 183 5
	jmp	.L36
.L42:
.LBB4:
	.loc 2 187 9
	nop
.LBE4:
	.loc 2 202 7
	movzbl	-8921(%rbp), %eax
	xorl	$1, %eax
	.loc 2 202 6
	testb	%al, %al
	je	.L37
	.loc 2 202 20 discriminator 1
	movl	-8920(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 202 17 discriminator 1
	testl	%eax, %eax
	je	.L37
	.loc 2 204 7
	movq	-8936(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 204 17
	call	__errno_location@PLT
	.loc 2 204 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC31(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 205 14
	movl	$0, %eax
	jmp	.L39
.L37:
	.loc 2 208 10
	movl	-8916(%rbp), %eax
	movzwl	%ax, %eax
	.loc 2 208 40
	movl	-8916(%rbp), %edx
	shrl	$16, %edx
	.loc 2 208 20
	addl	%edx, %eax
	.loc 2 208 5
	movl	%eax, -8912(%rbp)
	.loc 2 209 17
	movl	-8912(%rbp), %eax
	movzwl	%ax, %eax
	.loc 2 209 32
	movl	-8912(%rbp), %edx
	sarl	$16, %edx
	.loc 2 209 12
	addl	%edx, %eax
	movl	%eax, -8908(%rbp)
	.loc 2 211 3
	leaq	-8880(%rbp), %rsi
	movq	-8904(%rbp), %rax
	movl	$512, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, %rdx
	movl	-8908(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 213 6
	cmpl	$0, -8940(%rbp)
	je	.L38
	.loc 2 214 5
	movq	-8936(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L38:
	.loc 2 215 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 217 10
	movl	$1, %eax
.L39:
	.loc 2 218 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L40
	.loc 2 218 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L40:
	addq	$8936, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	sysv_sum_file, .-sysv_sum_file
	.section	.rodata
.LC35:
	.string	"/usr/local/share/locale"
.LC36:
	.string	"David MacKenzie"
.LC37:
	.string	"Kayvan Aghaiepour"
.LC38:
	.string	"rs"
	.text
	.globl	main
	.type	main, @function
main:
.LFB53:
	.loc 2 222 1 is_stmt 1
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
	.loc 2 226 10
	leaq	bsd_sum_file(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 229 3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 230 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 231 3
	leaq	.LC35(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 232 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 234 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 238 3
	movq	stdout(%rip), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setvbuf@PLT
	.loc 2 240 19
	movb	$0, have_read_stdin(%rip)
	.loc 2 242 9
	jmp	.L44
.L50:
	.loc 2 244 7
	cmpl	$115, -32(%rbp)
	je	.L45
	cmpl	$115, -32(%rbp)
	jg	.L46
	cmpl	$114, -32(%rbp)
	je	.L47
	cmpl	$114, -32(%rbp)
	jg	.L46
	cmpl	$-131, -32(%rbp)
	je	.L48
	cmpl	$-130, -32(%rbp)
	je	.L49
	jmp	.L46
.L47:
	.loc 2 247 20
	leaq	bsd_sum_file(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 248 11
	jmp	.L44
.L45:
	.loc 2 251 20
	leaq	sysv_sum_file(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 252 11
	jmp	.L44
.L49:
	.loc 2 254 9
	movl	$0, %edi
	call	usage
.L48:
	.loc 2 256 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC36(%rip), %r9
	leaq	.LC37(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L46:
	.loc 2 259 11
	movl	$1, %edi
	call	usage
.L44:
	.loc 2 242 18
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -32(%rbp)
	.loc 2 242 9
	cmpl	$-1, -32(%rbp)
	jne	.L50
	.loc 2 263 22
	movl	optind(%rip), %eax
	.loc 2 263 15
	movl	-52(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	.loc 2 264 6
	cmpl	$0, -28(%rbp)
	jg	.L51
	.loc 2 265 10
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC29(%rip), %rdi
	call	*%rdx
.LVL0:
	movb	%al, -33(%rbp)
	jmp	.L52
.L51:
	.loc 2 267 13
	movb	$1, -33(%rbp)
	.loc 2 267 5
	jmp	.L53
.L54:
	.loc 2 268 27 discriminator 3
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 268 13 discriminator 3
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
.LVL1:
	.loc 2 268 10 discriminator 3
	movzbl	-33(%rbp), %edx
	.loc 2 268 13 discriminator 3
	movzbl	%al, %eax
	.loc 2 268 10 discriminator 3
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -33(%rbp)
	.loc 2 267 42 discriminator 3
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L53:
	.loc 2 267 28 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 267 5 discriminator 1
	cmpl	%eax, -52(%rbp)
	jg	.L54
.L52:
	.loc 2 270 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 270 6
	testb	%al, %al
	je	.L55
	.loc 2 270 26 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 270 23 discriminator 1
	cmpl	$-1, %eax
	jne	.L55
.LBB5:
	.loc 2 271 5
	leaq	.LC29(%rip), %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC31(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L55:
.LBE5:
	.loc 2 272 28
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 273 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
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
	.file 19 "/usr/include/stdint.h"
	.file 20 "./lib/timespec.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/fadvise.h"
	.file 26 "./lib/human.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa0d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF146
	.byte	0xc
	.long	.LASF147
	.long	.LASF148
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
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xae
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	0xae
	.uleb128 0x9
	.long	.LASF62
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x241
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xa8
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xa8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xa8
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xa8
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xa8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xa8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xa8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xa8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xa8
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x25a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x260
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x266
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x276
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x281
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x28c
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x260
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x292
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xba
	.uleb128 0xb
	.long	.LASF149
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x255
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0xd
	.long	0xae
	.long	0x276
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x27c
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x287
	.uleb128 0xd
	.long	0xae
	.long	0x2a2
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb5
	.uleb128 0x8
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2b9
	.uleb128 0x7
	.byte	0x8
	.long	0x241
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2a8
	.long	0x2ee
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2e3
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2ee
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0x9c
	.uleb128 0x11
	.long	.LASF56
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0xf
	.long	.LASF58
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF59
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF63
	.byte	0x20
	.byte	0xc
	.byte	0x32
	.byte	0x8
	.long	0x3b7
	.uleb128 0xa
	.long	.LASF64
	.byte	0xc
	.byte	0x34
	.byte	0xf
	.long	0x2a2
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x38
	.byte	0x8
	.long	0x3bc
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
	.long	0x375
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0xa8
	.long	0x3d2
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF67
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3c2
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3c2
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF73
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x427
	.uleb128 0xd
	.long	0x2a8
	.long	0x43e
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x42e
	.uleb128 0x11
	.long	.LASF74
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x43e
	.uleb128 0x11
	.long	.LASF75
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x43e
	.uleb128 0x11
	.long	.LASF76
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x46a
	.uleb128 0x7
	.byte	0x8
	.long	0xa8
	.uleb128 0x11
	.long	.LASF77
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x46a
	.uleb128 0xf
	.long	.LASF78
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF79
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF80
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF81
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF82
	.byte	0x13
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x29
	.byte	0x6
	.long	0x4d1
	.uleb128 0x15
	.long	.LASF83
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x4e6
	.uleb128 0x16
	.long	.LASF84
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x504
	.uleb128 0x18
	.long	.LASF85
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF86
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xb5
	.long	0x50f
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x504
	.uleb128 0xf
	.long	.LASF87
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x50f
	.uleb128 0xf
	.long	.LASF88
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x2a2
	.uleb128 0x19
	.long	.LASF150
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x581
	.uleb128 0x16
	.long	.LASF89
	.byte	0
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.uleb128 0x16
	.long	.LASF91
	.byte	0x2
	.uleb128 0x16
	.long	.LASF92
	.byte	0x3
	.uleb128 0x16
	.long	.LASF93
	.byte	0x4
	.uleb128 0x16
	.long	.LASF94
	.byte	0x5
	.uleb128 0x16
	.long	.LASF95
	.byte	0x6
	.uleb128 0x16
	.long	.LASF96
	.byte	0x7
	.uleb128 0x16
	.long	.LASF97
	.byte	0x8
	.uleb128 0x16
	.long	.LASF98
	.byte	0x9
	.uleb128 0x16
	.long	.LASF99
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x52c
	.uleb128 0x11
	.long	.LASF100
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xd
	.long	0x581
	.long	0x59e
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x593
	.uleb128 0x11
	.long	.LASF101
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x59e
	.uleb128 0xf
	.long	.LASF102
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x428
	.uleb128 0xf
	.long	.LASF103
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF104
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
	.long	0x607
	.uleb128 0x16
	.long	.LASF105
	.byte	0
	.uleb128 0x16
	.long	.LASF106
	.byte	0x2
	.uleb128 0x16
	.long	.LASF107
	.byte	0x5
	.uleb128 0x16
	.long	.LASF108
	.byte	0x4
	.uleb128 0x16
	.long	.LASF109
	.byte	0x3
	.uleb128 0x16
	.long	.LASF110
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x2c
	.byte	0x1
	.long	0x653
	.uleb128 0x16
	.long	.LASF111
	.byte	0
	.uleb128 0x16
	.long	.LASF112
	.byte	0x1
	.uleb128 0x16
	.long	.LASF113
	.byte	0x2
	.uleb128 0x16
	.long	.LASF114
	.byte	0x4
	.uleb128 0x16
	.long	.LASF115
	.byte	0x8
	.uleb128 0x16
	.long	.LASF116
	.byte	0x10
	.uleb128 0x16
	.long	.LASF117
	.byte	0x20
	.uleb128 0x16
	.long	.LASF118
	.byte	0x40
	.uleb128 0x16
	.long	.LASF119
	.byte	0x80
	.uleb128 0x1a
	.long	.LASF120
	.value	0x100
	.byte	0
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x2
	.byte	0x2a
	.byte	0xd
	.long	0x669
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF121
	.uleb128 0xd
	.long	0x3b7
	.long	0x680
	.uleb128 0xe
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x670
	.uleb128 0x1b
	.long	.LASF123
	.byte	0x2
	.byte	0x2c
	.byte	0x1c
	.long	0x680
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x2
	.byte	0xdd
	.byte	0x1
	.long	0x65
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x72a
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x2
	.byte	0xdd
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x2
	.byte	0xdd
	.byte	0x18
	.long	0x46a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.byte	0xdf
	.byte	0x8
	.long	0x669
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x2
	.byte	0xe0
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF127
	.byte	0x2
	.byte	0xe1
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x2
	.byte	0xe2
	.byte	0xa
	.long	0x73e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0x20
	.long	0x669
	.long	0x73e
	.uleb128 0x21
	.long	0x2a2
	.uleb128 0x21
	.long	0x65
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x72a
	.uleb128 0x22
	.long	.LASF136
	.byte	0x2
	.byte	0x98
	.byte	0x1
	.long	0x669
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x844
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x2
	.byte	0x98
	.byte	0x1c
	.long	0x2a2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8952
	.uleb128 0x1d
	.long	.LASF130
	.byte	0x2
	.byte	0x98
	.byte	0x26
	.long	0x65
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8956
	.uleb128 0x1e
	.string	"fd"
	.byte	0x2
	.byte	0x9a
	.byte	0x7
	.long	0x65
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8936
	.uleb128 0x1e
	.string	"buf"
	.byte	0x2
	.byte	0x9b
	.byte	0x11
	.long	0x844
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x2
	.byte	0x9c
	.byte	0xd
	.long	0x4ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8920
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x2
	.byte	0x9d
	.byte	0x8
	.long	0x855
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8896
	.uleb128 0x1e
	.string	"r"
	.byte	0x2
	.byte	0x9e
	.byte	0x7
	.long	0x65
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8928
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x2
	.byte	0x9f
	.byte	0x7
	.long	0x65
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8924
	.uleb128 0x1e
	.string	"s"
	.byte	0x2
	.byte	0xa2
	.byte	0x10
	.long	0x40
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8932
	.uleb128 0x1b
	.long	.LASF134
	.byte	0x2
	.byte	0xa4
	.byte	0x8
	.long	0x669
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8937
	.uleb128 0x23
	.long	.Ldebug_ranges0+0
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x2
	.byte	0xb8
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8904
	.uleb128 0x24
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1e
	.string	"i"
	.byte	0x2
	.byte	0xc5
	.byte	0x13
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8912
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x855
	.uleb128 0x25
	.long	0x39
	.value	0x1fff
	.byte	0
	.uleb128 0xd
	.long	0xae
	.long	0x866
	.uleb128 0x25
	.long	0x39
	.value	0x28b
	.byte	0
	.uleb128 0x22
	.long	.LASF137
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.long	0x669
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x907
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x2
	.byte	0x58
	.byte	0x1b
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x1d
	.long	.LASF130
	.byte	0x2
	.byte	0x58
	.byte	0x25
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -748
	.uleb128 0x1e
	.string	"fp"
	.byte	0x2
	.byte	0x5a
	.byte	0x9
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x2
	.byte	0x5b
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x2
	.byte	0x5c
	.byte	0xd
	.long	0x4ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x1e
	.string	"ch"
	.byte	0x2
	.byte	0x5d
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -724
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x2
	.byte	0x5e
	.byte	0x8
	.long	0x855
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x1b
	.long	.LASF134
	.byte	0x2
	.byte	0x5f
	.byte	0x8
	.long	0x669
	.uleb128 0x3
	.byte	0x91
	.sleb128 -729
	.byte	0
	.uleb128 0x26
	.long	.LASF139
	.byte	0x2
	.byte	0x35
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x935
	.uleb128 0x1d
	.long	.LASF140
	.byte	0x2
	.byte	0x35
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.LASF151
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x9da
	.uleb128 0x28
	.long	.LASF141
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x29
	.long	.LASF142
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x990
	.uleb128 0x2a
	.long	.LASF141
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2a2
	.byte	0
	.uleb128 0x2a
	.long	.LASF143
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2a2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x965
	.uleb128 0x2b
	.long	.LASF142
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x9ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF143
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.long	.LASF144
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x9ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.long	.LASF145
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x990
	.long	0x9ea
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x9da
	.uleb128 0x7
	.byte	0x8
	.long	0x990
	.uleb128 0x2c
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"exit_failure"
.LASF5:
	.string	"short int"
.LASF106:
	.string	"FADVISE_SEQUENTIAL"
.LASF97:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF63:
	.string	"option"
.LASF86:
	.string	"GETOPT_VERSION_CHAR"
.LASF123:
	.string	"longopts"
.LASF150:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF133:
	.string	"checksum"
.LASF32:
	.string	"_shortbuf"
.LASF91:
	.string	"shell_always_quoting_style"
.LASF90:
	.string	"shell_quoting_style"
.LASF85:
	.string	"GETOPT_HELP_CHAR"
.LASF20:
	.string	"_IO_buf_base"
.LASF57:
	.string	"long long unsigned int"
.LASF23:
	.string	"_IO_backup_base"
.LASF114:
	.string	"human_group_digits"
.LASF35:
	.string	"_codecvt"
.LASF69:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF101:
	.string	"quoting_style_vals"
.LASF82:
	.string	"uintmax_t"
.LASF141:
	.string	"program"
.LASF96:
	.string	"escape_quoting_style"
.LASF89:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF120:
	.string	"human_B"
.LASF75:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF13:
	.string	"_flags"
.LASF137:
	.string	"bsd_sum_file"
.LASF152:
	.string	"emit_stdin_note"
.LASF36:
	.string	"_wide_data"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF79:
	.string	"program_invocation_short_name"
.LASF94:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF78:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF135:
	.string	"bytes_read"
.LASF118:
	.string	"human_space_before_unit"
.LASF83:
	.string	"TIMESPEC_HZ"
.LASF93:
	.string	"shell_escape_always_quoting_style"
.LASF72:
	.string	"timezone"
.LASF88:
	.string	"program_name"
.LASF131:
	.string	"total_bytes"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF115:
	.string	"human_suppress_point_zero"
.LASF0:
	.string	"long unsigned int"
.LASF134:
	.string	"is_stdin"
.LASF18:
	.string	"_IO_write_ptr"
.LASF64:
	.string	"name"
.LASF49:
	.string	"sys_nerr"
.LASF146:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF99:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF104:
	.string	"error_one_per_line"
.LASF80:
	.string	"Version"
.LASF22:
	.string	"_IO_save_base"
.LASF128:
	.string	"sum_func"
.LASF77:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF130:
	.string	"print_name"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"stdout"
.LASF116:
	.string	"human_autoscale"
.LASF126:
	.string	"optc"
.LASF87:
	.string	"version_etc_copyright"
.LASF15:
	.string	"_IO_read_end"
.LASF58:
	.string	"optarg"
.LASF144:
	.string	"map_prog"
.LASF73:
	.string	"getdate_err"
.LASF59:
	.string	"optind"
.LASF14:
	.string	"_IO_read_ptr"
.LASF10:
	.string	"__off64_t"
.LASF149:
	.string	"_IO_lock_t"
.LASF62:
	.string	"_IO_FILE"
.LASF102:
	.string	"error_print_progname"
.LASF9:
	.string	"__off_t"
.LASF76:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF50:
	.string	"sys_errlist"
.LASF25:
	.string	"_markers"
.LASF95:
	.string	"c_maybe_quoting_style"
.LASF121:
	.string	"_Bool"
.LASF117:
	.string	"human_base_1024"
.LASF2:
	.string	"unsigned char"
.LASF143:
	.string	"node"
.LASF136:
	.string	"sysv_sum_file"
.LASF129:
	.string	"file"
.LASF66:
	.string	"flag"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF70:
	.string	"tzname"
.LASF42:
	.string	"FILE"
.LASF110:
	.string	"FADVISE_RANDOM"
.LASF92:
	.string	"shell_escape_quoting_style"
.LASF107:
	.string	"FADVISE_NOREUSE"
.LASF100:
	.string	"quoting_style_args"
.LASF61:
	.string	"optopt"
.LASF71:
	.string	"daylight"
.LASF54:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF108:
	.string	"FADVISE_DONTNEED"
.LASF11:
	.string	"__time_t"
.LASF98:
	.string	"clocale_quoting_style"
.LASF147:
	.string	"src/sum.c"
.LASF124:
	.string	"argc"
.LASF60:
	.string	"opterr"
.LASF8:
	.string	"__uintmax_t"
.LASF105:
	.string	"FADVISE_NORMAL"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"_sys_siglist"
.LASF122:
	.string	"have_read_stdin"
.LASF142:
	.string	"infomap"
.LASF127:
	.string	"files_given"
.LASF65:
	.string	"has_arg"
.LASF139:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF125:
	.string	"argv"
.LASF68:
	.string	"__daylight"
.LASF140:
	.string	"status"
.LASF148:
	.string	"/root/coreutils"
.LASF119:
	.string	"human_SI"
.LASF113:
	.string	"human_floor"
.LASF132:
	.string	"hbuf"
.LASF103:
	.string	"error_message_count"
.LASF145:
	.string	"lc_messages"
.LASF112:
	.string	"human_round_to_nearest"
.LASF111:
	.string	"human_ceiling"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF109:
	.string	"FADVISE_WILLNEED"
.LASF67:
	.string	"__tzname"
.LASF138:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF151:
	.string	"emit_ancillary_info"
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
