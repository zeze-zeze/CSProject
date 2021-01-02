	.file	"tee.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"["
.LC1:
	.string	"test invocation"
.LC2:
	.string	"coreutils"
.LC3:
	.string	"Multi-call invocation"
.LC4:
	.string	"sha224sum"
.LC5:
	.string	"sha2 utilities"
.LC6:
	.string	"sha256sum"
.LC7:
	.string	"sha384sum"
.LC8:
	.string	"sha512sum"
.LC9:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC10:
	.string	"https://www.gnu.org/software/coreutils/"
.LC11:
	.string	"GNU coreutils"
.LC12:
	.string	"en_"
	.align 8
.LC13:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC14:
	.string	"Full documentation <%s%s>\n"
.LC15:
	.string	" invocation"
.LC16:
	.string	""
	.align 8
.LC17:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.type	emit_ancillary_info, @function
emit_ancillary_info:
.LFB40:
	.file 1 "src/system.h"
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
	leaq	.LC0(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC5(%rip), %rax
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
	jmp	.L2
.L4:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L2:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L3
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L4
.L3:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L5
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L5:
	.loc 1 655 11
	leaq	.LC9(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rsi
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
	je	.L6
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L6
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L6:
	.loc 1 669 11
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L7
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L8
.L7:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L8:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC17(%rip), %rdi
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
	je	.L9
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L9:
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
	.local	append
	.comm	append,1,1
	.local	ignore_interrupts
	.comm	ignore_interrupts,1,1
	.local	output_error
	.comm	output_error,4,4
	.section	.rodata
.LC18:
	.string	"append"
.LC19:
	.string	"ignore-interrupts"
.LC20:
	.string	"output-error"
.LC21:
	.string	"help"
.LC22:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 192
long_options:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC20
	.long	2
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC22
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
.LC23:
	.string	"warn"
.LC24:
	.string	"warn-nopipe"
.LC25:
	.string	"exit"
.LC26:
	.string	"exit-nopipe"
	.section	.data.rel.ro.local
	.align 32
	.type	output_error_args, @object
	.size	output_error_args, 40
output_error_args:
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	0
	.section	.rodata
	.align 16
	.type	output_error_types, @object
	.size	output_error_types, 16
output_error_types:
	.long	1
	.long	2
	.long	3
	.long	4
	.align 8
.LC27:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC28:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC29:
	.string	"Copy standard input to each FILE, and also to standard output.\n\n  -a, --append              append to the given FILEs, do not overwrite\n  -i, --ignore-interrupts   ignore interrupt signals\n"
	.align 8
.LC30:
	.string	"  -p                        diagnose errors writing to non pipes\n      --output-error[=MODE]   set behavior on write error.  See MODE below\n"
	.align 8
.LC31:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC32:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC33:
	.ascii	"\nMODE determines behavior with write errors on the outputs:"
	.ascii	"\n  'warn'         diagnose errors writing to any output\n  "
	.ascii	"'warn-nopipe'  diagnose errors writing to any output not a p"
	.ascii	"ipe\n  'exit'         exit on error writing to any output\n "
	.ascii	" 'exit-nopipe'  exit"
	.string	" on error writing to any output not a pipe\nThe default MODE for the -p option is 'warn-nopipe'.\nThe default operation when --output-error is not specified, is to\nexit immediately on error writing to a pipe, and diagnose errors\nwriting to non pipe outputs.\n"
.LC34:
	.string	"tee"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.file 2 "src/tee.c"
	.loc 2 82 1
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
	.loc 2 83 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 84 5
	movq	program_name(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L14
.L13:
	.loc 2 87 7
	movq	program_name(%rip), %rbx
	.loc 2 87 15
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	.loc 2 87 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 88 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 94 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 98 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 99 7
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 100 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 112 7
	leaq	.LC34(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 114 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.section	.rodata
.LC35:
	.string	"/usr/local/share/locale"
.LC36:
	.string	"--output-error"
.LC37:
	.string	"Richard M. Stallman"
.LC38:
	.string	"Mike Parker"
.LC39:
	.string	"David MacKenzie"
.LC40:
	.string	"aip"
.LC41:
	.string	"standard input"
.LC42:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 2 119 1
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
	.loc 2 124 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 125 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 126 3
	leaq	.LC35(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 127 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 129 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 131 10
	movb	$0, append(%rip)
	.loc 2 132 21
	movb	$0, ignore_interrupts(%rip)
	.loc 2 134 9
	jmp	.L16
.L25:
	.loc 2 136 7
	cmpl	$112, -20(%rbp)
	je	.L17
	cmpl	$112, -20(%rbp)
	jg	.L18
	cmpl	$105, -20(%rbp)
	je	.L19
	cmpl	$105, -20(%rbp)
	jg	.L18
	cmpl	$97, -20(%rbp)
	je	.L20
	cmpl	$97, -20(%rbp)
	jg	.L18
	cmpl	$-131, -20(%rbp)
	je	.L21
	cmpl	$-130, -20(%rbp)
	je	.L22
	jmp	.L18
.L20:
	.loc 2 139 18
	movb	$1, append(%rip)
	.loc 2 140 11
	jmp	.L16
.L19:
	.loc 2 143 29
	movb	$1, ignore_interrupts(%rip)
	.loc 2 144 11
	jmp	.L16
.L17:
	.loc 2 147 15
	movq	optarg(%rip), %rax
	.loc 2 147 14
	testq	%rax, %rax
	je	.L23
	.loc 2 148 28
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	output_error_types(%rip), %rcx
	leaq	output_error_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	output_error_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 148 26
	movl	%eax, output_error(%rip)
	jmp	.L16
.L23:
	.loc 2 151 26
	movl	$2, output_error(%rip)
	.loc 2 152 11
	jmp	.L16
.L22:
	.loc 2 154 9
	movl	$0, %edi
	call	usage
.L21:
	.loc 2 156 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	leaq	.LC39(%rip), %rcx
	pushq	%rcx
	leaq	.LC37(%rip), %r9
	leaq	.LC38(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L18:
	.loc 2 159 11
	movl	$1, %edi
	call	usage
.L16:
	.loc 2 134 18
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -20(%rbp)
	.loc 2 134 9
	cmpl	$-1, -20(%rbp)
	jne	.L25
	.loc 2 163 7
	movzbl	ignore_interrupts(%rip), %eax
	.loc 2 163 6
	testb	%al, %al
	je	.L26
	.loc 2 164 5
	movl	$1, %esi
	movl	$2, %edi
	call	signal@PLT
.L26:
	.loc 2 166 20
	movl	output_error(%rip), %eax
	.loc 2 166 6
	testl	%eax, %eax
	je	.L27
	.loc 2 167 5
	movl	$1, %esi
	movl	$13, %edi
	call	signal@PLT
.L27:
	.loc 2 172 39
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 172 8
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	optind(%rip), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	tee_files
	movb	%al, -21(%rbp)
	.loc 2 173 7
	movl	$0, %edi
	call	close@PLT
	.loc 2 173 6
	testl	%eax, %eax
	je	.L28
.LBB2:
	.loc 2 174 5
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC42(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L28:
.LBE2:
	.loc 2 176 28
	movzbl	-21(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 177 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	main, .-main
	.section	.rodata
.LC43:
	.string	"a"
.LC44:
	.string	"w"
.LC45:
	.string	"standard output"
.LC46:
	.string	"read error"
	.text
	.type	tee_files, @function
tee_files:
.LFB52:
	.loc 2 185 1
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
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -8276(%rbp)
	movq	%rsi, -8288(%rbp)
	.loc 2 185 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 186 10
	movq	$0, -8256(%rbp)
	.loc 2 189 11
	movq	$0, -8248(%rbp)
	.loc 2 191 8
	movb	$1, -8266(%rbp)
	.loc 2 195 16
	movzbl	append(%rip), %eax
	.loc 2 195 6
	testb	%al, %al
	je	.L31
	.loc 2 195 6 is_stmt 0 discriminator 1
	leaq	.LC43(%rip), %rax
	jmp	.L32
.L31:
	.loc 2 195 6 discriminator 2
	leaq	.LC44(%rip), %rax
.L32:
	.loc 2 192 15 is_stmt 1
	movq	%rax, -8240(%rbp)
	.loc 2 197 3
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	.loc 2 198 3
	movl	$0, %esi
	movl	$1, %edi
	call	xset_binary_mode@PLT
	.loc 2 199 3
	movq	stdin(%rip), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 204 34
	movl	-8276(%rbp), %eax
	addl	$1, %eax
	.loc 2 204 17
	cltq
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -8232(%rbp)
	.loc 2 205 8
	subq	$8, -8288(%rbp)
	.loc 2 206 18
	movq	stdout(%rip), %rdx
	movq	-8232(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 207 24
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	.loc 2 207 14
	movq	%rax, %rdi
	call	bad_cast
	.loc 2 207 12
	movq	-8288(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 2 208 3
	movq	stdout(%rip), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setvbuf@PLT
	.loc 2 209 12
	addq	$1, -8256(%rbp)
	.loc 2 211 10
	movl	$1, -8264(%rbp)
	.loc 2 211 3
	jmp	.L33
.L39:
	.loc 2 214 36
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8288(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 214 24
	movq	(%rax), %rax
	.loc 2 214 18
	movl	-8264(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-8232(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	.loc 2 214 24
	movq	-8240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen_safer@PLT
	.loc 2 214 22
	movq	%rax, (%rbx)
	.loc 2 215 22
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8232(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 215 10
	testq	%rax, %rax
	jne	.L34
	.loc 2 219 31
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8288(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 217 11
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 219 18
	call	__errno_location@PLT
	.loc 2 217 11
	movl	(%rax), %eax
	.loc 2 217 31
	movl	output_error(%rip), %edx
	.loc 2 217 11
	cmpl	$3, %edx
	je	.L35
	.loc 2 218 34 discriminator 2
	movl	output_error(%rip), %edx
	.loc 2 217 11 discriminator 2
	cmpl	$4, %edx
	jne	.L36
.L35:
	.loc 2 217 11 is_stmt 0 discriminator 3
	movl	$1, %edi
	jmp	.L37
.L36:
	.loc 2 217 11 discriminator 4
	movl	$0, %edi
.L37:
	.loc 2 217 11 discriminator 6
	movq	%rbx, %rcx
	leaq	.LC42(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %eax
	call	error@PLT
	.loc 2 220 14 is_stmt 1 discriminator 6
	movb	$0, -8266(%rbp)
	jmp	.L38
.L34:
	.loc 2 224 31
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 224 11
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setvbuf@PLT
	.loc 2 225 20
	addq	$1, -8256(%rbp)
.L38:
	.loc 2 211 29 discriminator 2
	addl	$1, -8264(%rbp)
.L33:
	.loc 2 211 3 discriminator 1
	movl	-8264(%rbp), %eax
	cmpl	-8276(%rbp), %eax
	jle	.L39
	.loc 2 229 9
	jmp	.L40
.L56:
	.loc 2 231 20
	leaq	-8224(%rbp), %rax
	movl	$8192, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	read@PLT
	movq	%rax, -8248(%rbp)
	.loc 2 232 10
	cmpq	$0, -8248(%rbp)
	jns	.L41
	.loc 2 232 29 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 232 26 discriminator 1
	cmpl	$4, %eax
	jne	.L41
	.loc 2 233 9
	jmp	.L40
.L41:
	.loc 2 234 10
	cmpq	$0, -8248(%rbp)
	jle	.L63
	.loc 2 239 14
	movl	$0, -8264(%rbp)
	.loc 2 239 7
	jmp	.L44
.L55:
	.loc 2 240 24
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8232(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 240 12
	testq	%rax, %rax
	je	.L45
	.loc 2 241 16
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8232(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8248(%rbp), %rsi
	leaq	-8224(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 241 13
	cmpq	$1, %rax
	je	.L45
.LBB3:
	.loc 2 243 27
	call	__errno_location@PLT
	.loc 2 243 17
	movl	(%rax), %eax
	movl	%eax, -8260(%rbp)
	.loc 2 244 25
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 244 40
	cmpl	$32, %eax
	jne	.L46
	.loc 2 244 57 discriminator 2
	movl	output_error(%rip), %eax
	.loc 2 244 40 discriminator 2
	cmpl	$3, %eax
	je	.L46
	.loc 2 245 59
	movl	output_error(%rip), %eax
	.loc 2 245 43
	cmpl	$1, %eax
	jne	.L47
.L46:
	.loc 2 244 40 discriminator 3
	movl	$1, %eax
	jmp	.L48
.L47:
	.loc 2 244 40 is_stmt 0 discriminator 5
	movl	$0, %eax
.L48:
	.loc 2 244 18 is_stmt 1 discriminator 4
	movb	%al, -8265(%rbp)
	andb	$1, -8265(%rbp)
	.loc 2 246 28 discriminator 4
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8232(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	.loc 2 246 32 discriminator 4
	movq	stdout(%rip), %rax
	.loc 2 246 16 discriminator 4
	cmpq	%rax, %rdx
	jne	.L49
	.loc 2 247 15
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
.L49:
	.loc 2 248 16
	cmpb	$0, -8265(%rbp)
	je	.L50
	.loc 2 252 39
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8288(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 250 17
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rdx
	.loc 2 250 37
	movl	output_error(%rip), %eax
	.loc 2 250 17
	cmpl	$3, %eax
	je	.L51
	.loc 2 251 40 discriminator 2
	movl	output_error(%rip), %eax
	.loc 2 250 17 discriminator 2
	cmpl	$4, %eax
	jne	.L52
.L51:
	.loc 2 250 17 is_stmt 0 discriminator 3
	movl	$1, %edi
	jmp	.L53
.L52:
	.loc 2 250 17 discriminator 4
	movl	$0, %edi
.L53:
	.loc 2 250 17 discriminator 6
	movl	-8260(%rbp), %eax
	movq	%rdx, %rcx
	leaq	.LC42(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %eax
	call	error@PLT
.L50:
	.loc 2 254 24 is_stmt 1
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 254 28
	movq	$0, (%rax)
	.loc 2 255 16
	cmpb	$0, -8265(%rbp)
	je	.L54
	.loc 2 256 18
	movb	$0, -8266(%rbp)
.L54:
	.loc 2 257 22
	subq	$1, -8256(%rbp)
.L45:
.LBE3:
	.loc 2 239 33 discriminator 2
	addl	$1, -8264(%rbp)
.L44:
	.loc 2 239 7 discriminator 1
	movl	-8264(%rbp), %eax
	cmpl	-8276(%rbp), %eax
	jle	.L55
.L40:
	.loc 2 229 9
	cmpq	$0, -8256(%rbp)
	jne	.L56
	jmp	.L43
.L63:
	.loc 2 235 9
	nop
.L43:
	.loc 2 261 6
	cmpq	$-1, -8248(%rbp)
	jne	.L57
	.loc 2 263 24
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 263 17
	call	__errno_location@PLT
	.loc 2 263 7
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 264 10
	movb	$0, -8266(%rbp)
.L57:
	.loc 2 268 10
	movl	$1, -8264(%rbp)
	.loc 2 268 3
	jmp	.L58
.L60:
	.loc 2 269 20
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8232(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 269 8
	testq	%rax, %rax
	je	.L59
	.loc 2 269 46 discriminator 1
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8232(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 269 27 discriminator 1
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 269 24 discriminator 1
	testl	%eax, %eax
	je	.L59
	.loc 2 271 32
	movl	-8264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8288(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 271 9
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 271 19
	call	__errno_location@PLT
	.loc 2 271 9
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC42(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 272 12
	movb	$0, -8266(%rbp)
.L59:
	.loc 2 268 29 discriminator 2
	addl	$1, -8264(%rbp)
.L58:
	.loc 2 268 3 discriminator 1
	movl	-8264(%rbp), %eax
	cmpl	-8276(%rbp), %eax
	jle	.L60
	.loc 2 275 3
	movq	-8232(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 277 10
	movzbl	-8266(%rbp), %eax
	.loc 2 278 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L62
	call	__stack_chk_fail@PLT
.L62:
	addq	$8280, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	tee_files, .-tee_files
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "/usr/include/signal.h"
	.file 8 "./lib/sys/select.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 11 "/usr/include/time.h"
	.file 12 "/usr/include/unistd.h"
	.file 13 "/usr/include/errno.h"
	.file 14 "src/version.h"
	.file 15 "./lib/exitfail.h"
	.file 16 "./lib/timespec.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/quote.h"
	.file 25 "./lib/argmatch.h"
	.file 26 "./lib/error.h"
	.file 27 "./lib/fadvise.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9dd
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF151
	.byte	0xc
	.long	.LASF152
	.long	.LASF153
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF7
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0xc1
	.byte	0x1b
	.long	0x63
	.uleb128 0x7
	.byte	0x8
	.long	0xa2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.long	0xa2
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0x6c
	.byte	0x13
	.long	0x90
	.uleb128 0x5
	.long	.LASF13
	.byte	0x5
	.byte	0x7
	.byte	0x12
	.long	0x82
	.uleb128 0x5
	.long	.LASF14
	.byte	0x6
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF18
	.byte	0x8
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x5
	.long	.LASF17
	.byte	0x7
	.byte	0x48
	.byte	0x10
	.long	0xf9
	.uleb128 0x7
	.byte	0x8
	.long	0xff
	.uleb128 0xa
	.long	0x10a
	.uleb128 0xb
	.long	0x57
	.byte	0
	.uleb128 0xc
	.uleb128 0x7
	.byte	0x8
	.long	0x10a
	.uleb128 0xd
	.long	0x12c
	.long	0x121
	.uleb128 0xe
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x111
	.uleb128 0x7
	.byte	0x8
	.long	0xa9
	.uleb128 0x8
	.long	0x126
	.uleb128 0x9
	.long	.LASF19
	.byte	0x7
	.value	0x11e
	.byte	0x1a
	.long	0x121
	.uleb128 0x9
	.long	.LASF20
	.byte	0x7
	.value	0x11f
	.byte	0x1a
	.long	0x121
	.uleb128 0xf
	.long	.LASF21
	.byte	0x9
	.byte	0x24
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF22
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF23
	.byte	0x9
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF24
	.byte	0x9
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF44
	.byte	0x20
	.byte	0xa
	.byte	0x32
	.byte	0x8
	.long	0x1bd
	.uleb128 0x11
	.long	.LASF25
	.byte	0xa
	.byte	0x34
	.byte	0xf
	.long	0x126
	.byte	0
	.uleb128 0x11
	.long	.LASF26
	.byte	0xa
	.byte	0x37
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0x11
	.long	.LASF27
	.byte	0xa
	.byte	0x38
	.byte	0x8
	.long	0x1c2
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.byte	0x39
	.byte	0x7
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x17b
	.uleb128 0x7
	.byte	0x8
	.long	0x57
	.uleb128 0xd
	.long	0x9c
	.long	0x1d8
	.uleb128 0xe
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF28
	.byte	0xb
	.byte	0x9f
	.byte	0xe
	.long	0x1c8
	.uleb128 0xf
	.long	.LASF29
	.byte	0xb
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF30
	.byte	0xb
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xf
	.long	.LASF31
	.byte	0xb
	.byte	0xa6
	.byte	0xe
	.long	0x1c8
	.uleb128 0xf
	.long	.LASF32
	.byte	0xb
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF33
	.byte	0xb
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0x9
	.long	.LASF34
	.byte	0xb
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF35
	.uleb128 0x9
	.long	.LASF36
	.byte	0xc
	.value	0x21f
	.byte	0xf
	.long	0x241
	.uleb128 0x7
	.byte	0x8
	.long	0x9c
	.uleb128 0x9
	.long	.LASF37
	.byte	0xc
	.value	0x221
	.byte	0xf
	.long	0x241
	.uleb128 0xf
	.long	.LASF38
	.byte	0xd
	.byte	0x2d
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF39
	.byte	0xd
	.byte	0x2e
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF40
	.byte	0xe
	.byte	0x1
	.byte	0x14
	.long	0x126
	.uleb128 0xf
	.long	.LASF41
	.byte	0xf
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x10
	.byte	0x29
	.byte	0x6
	.long	0x29c
	.uleb128 0x14
	.long	.LASF42
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x10
	.byte	0x2a
	.byte	0x6
	.long	0x2b1
	.uleb128 0x15
	.long	.LASF43
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.long	.LASF45
	.byte	0xd8
	.byte	0x11
	.byte	0x31
	.byte	0x8
	.long	0x438
	.uleb128 0x11
	.long	.LASF46
	.byte	0x11
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x11
	.long	.LASF47
	.byte	0x11
	.byte	0x36
	.byte	0x9
	.long	0x9c
	.byte	0x8
	.uleb128 0x11
	.long	.LASF48
	.byte	0x11
	.byte	0x37
	.byte	0x9
	.long	0x9c
	.byte	0x10
	.uleb128 0x11
	.long	.LASF49
	.byte	0x11
	.byte	0x38
	.byte	0x9
	.long	0x9c
	.byte	0x18
	.uleb128 0x11
	.long	.LASF50
	.byte	0x11
	.byte	0x39
	.byte	0x9
	.long	0x9c
	.byte	0x20
	.uleb128 0x11
	.long	.LASF51
	.byte	0x11
	.byte	0x3a
	.byte	0x9
	.long	0x9c
	.byte	0x28
	.uleb128 0x11
	.long	.LASF52
	.byte	0x11
	.byte	0x3b
	.byte	0x9
	.long	0x9c
	.byte	0x30
	.uleb128 0x11
	.long	.LASF53
	.byte	0x11
	.byte	0x3c
	.byte	0x9
	.long	0x9c
	.byte	0x38
	.uleb128 0x11
	.long	.LASF54
	.byte	0x11
	.byte	0x3d
	.byte	0x9
	.long	0x9c
	.byte	0x40
	.uleb128 0x11
	.long	.LASF55
	.byte	0x11
	.byte	0x40
	.byte	0x9
	.long	0x9c
	.byte	0x48
	.uleb128 0x11
	.long	.LASF56
	.byte	0x11
	.byte	0x41
	.byte	0x9
	.long	0x9c
	.byte	0x50
	.uleb128 0x11
	.long	.LASF57
	.byte	0x11
	.byte	0x42
	.byte	0x9
	.long	0x9c
	.byte	0x58
	.uleb128 0x11
	.long	.LASF58
	.byte	0x11
	.byte	0x44
	.byte	0x16
	.long	0x451
	.byte	0x60
	.uleb128 0x11
	.long	.LASF59
	.byte	0x11
	.byte	0x46
	.byte	0x14
	.long	0x457
	.byte	0x68
	.uleb128 0x11
	.long	.LASF60
	.byte	0x11
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x11
	.long	.LASF61
	.byte	0x11
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x11
	.long	.LASF62
	.byte	0x11
	.byte	0x4a
	.byte	0xb
	.long	0x6a
	.byte	0x78
	.uleb128 0x11
	.long	.LASF63
	.byte	0x11
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0x11
	.long	.LASF64
	.byte	0x11
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0x11
	.long	.LASF65
	.byte	0x11
	.byte	0x4f
	.byte	0x8
	.long	0x45d
	.byte	0x83
	.uleb128 0x11
	.long	.LASF66
	.byte	0x11
	.byte	0x51
	.byte	0xf
	.long	0x46d
	.byte	0x88
	.uleb128 0x11
	.long	.LASF67
	.byte	0x11
	.byte	0x59
	.byte	0xd
	.long	0x76
	.byte	0x90
	.uleb128 0x11
	.long	.LASF68
	.byte	0x11
	.byte	0x5b
	.byte	0x17
	.long	0x478
	.byte	0x98
	.uleb128 0x11
	.long	.LASF69
	.byte	0x11
	.byte	0x5c
	.byte	0x19
	.long	0x483
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF70
	.byte	0x11
	.byte	0x5d
	.byte	0x14
	.long	0x457
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF71
	.byte	0x11
	.byte	0x5e
	.byte	0x9
	.long	0x8e
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF72
	.byte	0x11
	.byte	0x5f
	.byte	0xa
	.long	0xc6
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF73
	.byte	0x11
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF74
	.byte	0x11
	.byte	0x62
	.byte	0x8
	.long	0x489
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF75
	.byte	0x12
	.byte	0x7
	.byte	0x19
	.long	0x2b1
	.uleb128 0x16
	.long	.LASF154
	.byte	0x11
	.byte	0x2b
	.byte	0xe
	.uleb128 0x17
	.long	.LASF76
	.uleb128 0x7
	.byte	0x8
	.long	0x44c
	.uleb128 0x7
	.byte	0x8
	.long	0x2b1
	.uleb128 0xd
	.long	0xa2
	.long	0x46d
	.uleb128 0xe
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x444
	.uleb128 0x17
	.long	.LASF77
	.uleb128 0x7
	.byte	0x8
	.long	0x473
	.uleb128 0x17
	.long	.LASF78
	.uleb128 0x7
	.byte	0x8
	.long	0x47e
	.uleb128 0xd
	.long	0xa2
	.long	0x499
	.uleb128 0xe
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF79
	.byte	0x13
	.byte	0x89
	.byte	0xe
	.long	0x4a5
	.uleb128 0x7
	.byte	0x8
	.long	0x438
	.uleb128 0xf
	.long	.LASF80
	.byte	0x13
	.byte	0x8a
	.byte	0xe
	.long	0x4a5
	.uleb128 0xf
	.long	.LASF81
	.byte	0x13
	.byte	0x8b
	.byte	0xe
	.long	0x4a5
	.uleb128 0xf
	.long	.LASF82
	.byte	0x14
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	0x12c
	.long	0x4da
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.long	0x4cf
	.uleb128 0xf
	.long	.LASF83
	.byte	0x14
	.byte	0x1b
	.byte	0x1a
	.long	0x4da
	.uleb128 0xf
	.long	.LASF84
	.byte	0x14
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF85
	.byte	0x14
	.byte	0x1f
	.byte	0x1a
	.long	0x4da
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x521
	.uleb128 0x1a
	.long	.LASF86
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF87
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xa9
	.long	0x52c
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.long	0x521
	.uleb128 0xf
	.long	.LASF88
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x52c
	.uleb128 0xf
	.long	.LASF89
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x126
	.uleb128 0x1b
	.long	.LASF119
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x59e
	.uleb128 0x15
	.long	.LASF90
	.byte	0
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.uleb128 0x15
	.long	.LASF92
	.byte	0x2
	.uleb128 0x15
	.long	.LASF93
	.byte	0x3
	.uleb128 0x15
	.long	.LASF94
	.byte	0x4
	.uleb128 0x15
	.long	.LASF95
	.byte	0x5
	.uleb128 0x15
	.long	.LASF96
	.byte	0x6
	.uleb128 0x15
	.long	.LASF97
	.byte	0x7
	.uleb128 0x15
	.long	.LASF98
	.byte	0x8
	.uleb128 0x15
	.long	.LASF99
	.byte	0x9
	.uleb128 0x15
	.long	.LASF100
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x549
	.uleb128 0x9
	.long	.LASF101
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x4da
	.uleb128 0xd
	.long	0x59e
	.long	0x5bb
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.long	0x5b0
	.uleb128 0x9
	.long	.LASF102
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x5bb
	.uleb128 0x17
	.long	.LASF103
	.uleb128 0xf
	.long	.LASF104
	.byte	0x18
	.byte	0x19
	.byte	0x1f
	.long	0x5cd
	.uleb128 0x5
	.long	.LASF105
	.byte	0x19
	.byte	0x3d
	.byte	0x10
	.long	0x10b
	.uleb128 0xf
	.long	.LASF106
	.byte	0x19
	.byte	0x3e
	.byte	0x19
	.long	0x5de
	.uleb128 0xf
	.long	.LASF107
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x10b
	.uleb128 0xf
	.long	.LASF108
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0xf
	.long	.LASF109
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1b
	.byte	0x2d
	.byte	0xe
	.long	0x64d
	.uleb128 0x15
	.long	.LASF110
	.byte	0
	.uleb128 0x15
	.long	.LASF111
	.byte	0x2
	.uleb128 0x15
	.long	.LASF112
	.byte	0x5
	.uleb128 0x15
	.long	.LASF113
	.byte	0x4
	.uleb128 0x15
	.long	.LASF114
	.byte	0x3
	.uleb128 0x15
	.long	.LASF115
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x2
	.byte	0x2b
	.byte	0xd
	.long	0x663
	.uleb128 0x9
	.byte	0x3
	.quad	append
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF116
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x2
	.byte	0x2e
	.byte	0xd
	.long	0x663
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_interrupts
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2
	.byte	0x30
	.byte	0x6
	.long	0x6b1
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
	.byte	0
	.uleb128 0x8
	.long	0x680
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x2
	.byte	0x39
	.byte	0x1a
	.long	0x680
	.uleb128 0x9
	.byte	0x3
	.quad	output_error
	.uleb128 0xd
	.long	0x1bd
	.long	0x6dc
	.uleb128 0xe
	.long	0x42
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x6cc
	.uleb128 0x1c
	.long	.LASF126
	.byte	0x2
	.byte	0x3b
	.byte	0x1c
	.long	0x6dc
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0xd
	.long	0x12c
	.long	0x707
	.uleb128 0xe
	.long	0x42
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x6f7
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x2
	.byte	0x45
	.byte	0x1a
	.long	0x707
	.uleb128 0x9
	.byte	0x3
	.quad	output_error_args
	.uleb128 0xd
	.long	0x6b1
	.long	0x732
	.uleb128 0xe
	.long	0x42
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x722
	.uleb128 0x1c
	.long	.LASF128
	.byte	0x2
	.byte	0x49
	.byte	0x20
	.long	0x732
	.uleb128 0x9
	.byte	0x3
	.quad	output_error_types
	.uleb128 0x1d
	.long	.LASF144
	.byte	0x2
	.byte	0xb8
	.byte	0x1
	.long	0x663
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x83a
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x2
	.byte	0xb8
	.byte	0x10
	.long	0x57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8292
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x2
	.byte	0xb8
	.byte	0x1f
	.long	0x241
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8304
	.uleb128 0x1c
	.long	.LASF131
	.byte	0x2
	.byte	0xba
	.byte	0xa
	.long	0xc6
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8272
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x2
	.byte	0xbb
	.byte	0xa
	.long	0x83a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8248
	.uleb128 0x1c
	.long	.LASF133
	.byte	0x2
	.byte	0xbc
	.byte	0x8
	.long	0x840
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x2
	.byte	0xbd
	.byte	0xb
	.long	0xae
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8264
	.uleb128 0x1f
	.string	"i"
	.byte	0x2
	.byte	0xbe
	.byte	0x7
	.long	0x57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8280
	.uleb128 0x1f
	.string	"ok"
	.byte	0x2
	.byte	0xbf
	.byte	0x8
	.long	0x663
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8282
	.uleb128 0x1c
	.long	.LASF135
	.byte	0x2
	.byte	0xc0
	.byte	0xf
	.long	0x126
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8256
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x2
	.byte	0xf3
	.byte	0x11
	.long	0x57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8276
	.uleb128 0x1c
	.long	.LASF137
	.byte	0x2
	.byte	0xf4
	.byte	0x12
	.long	0x663
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8281
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x4a5
	.uleb128 0xd
	.long	0xa2
	.long	0x851
	.uleb128 0x21
	.long	0x42
	.value	0x1fff
	.byte	0
	.uleb128 0x22
	.long	.LASF141
	.byte	0x2
	.byte	0x76
	.byte	0x1
	.long	0x57
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c0
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x2
	.byte	0x76
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x2
	.byte	0x76
	.byte	0x18
	.long	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"ok"
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.long	0x663
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1c
	.long	.LASF140
	.byte	0x2
	.byte	0x79
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.byte	0
	.uleb128 0x24
	.long	.LASF142
	.byte	0x2
	.byte	0x51
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ee
	.uleb128 0x1e
	.long	.LASF143
	.byte	0x2
	.byte	0x51
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF145
	.byte	0x1
	.value	0x2ba
	.byte	0x1
	.long	0x9c
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x920
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x2ba
	.byte	0x17
	.long	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF155
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c5
	.uleb128 0x28
	.long	.LASF146
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x29
	.long	.LASF147
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x97b
	.uleb128 0x2a
	.long	.LASF146
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x126
	.byte	0
	.uleb128 0x2a
	.long	.LASF148
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x126
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x950
	.uleb128 0x2b
	.long	.LASF147
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x9d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF148
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.long	.LASF149
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x9da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.long	.LASF150
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x97b
	.long	0x9d5
	.uleb128 0xe
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x9c5
	.uleb128 0x7
	.byte	0x8
	.long	0x97b
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x11
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
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x25
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
	.uleb128 0x26
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
.LASF41:
	.string	"exit_failure"
.LASF7:
	.string	"__off_t"
.LASF111:
	.string	"FADVISE_SEQUENTIAL"
.LASF98:
	.string	"locale_quoting_style"
.LASF59:
	.string	"_chain"
.LASF87:
	.string	"GETOPT_VERSION_CHAR"
.LASF119:
	.string	"quoting_style"
.LASF14:
	.string	"size_t"
.LASF43:
	.string	"LOG10_TIMESPEC_HZ"
.LASF65:
	.string	"_shortbuf"
.LASF12:
	.string	"ssize_t"
.LASF91:
	.string	"shell_quoting_style"
.LASF86:
	.string	"GETOPT_HELP_CHAR"
.LASF53:
	.string	"_IO_buf_base"
.LASF17:
	.string	"__sighandler_t"
.LASF15:
	.string	"long long unsigned int"
.LASF56:
	.string	"_IO_backup_base"
.LASF68:
	.string	"_codecvt"
.LASF30:
	.string	"__timezone"
.LASF128:
	.string	"output_error_types"
.LASF16:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF102:
	.string	"quoting_style_vals"
.LASF146:
	.string	"program"
.LASF97:
	.string	"escape_quoting_style"
.LASF90:
	.string	"literal_quoting_style"
.LASF60:
	.string	"_fileno"
.LASF48:
	.string	"_IO_read_end"
.LASF20:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF18:
	.string	"_gl_cxxalias_dummy"
.LASF126:
	.string	"long_options"
.LASF46:
	.string	"_flags"
.LASF134:
	.string	"bytes_read"
.LASF10:
	.string	"__ssize_t"
.LASF54:
	.string	"_IO_buf_end"
.LASF63:
	.string	"_cur_column"
.LASF39:
	.string	"program_invocation_short_name"
.LASF95:
	.string	"c_quoting_style"
.LASF77:
	.string	"_IO_codecvt"
.LASF85:
	.string	"_sys_errlist"
.LASF38:
	.string	"program_invocation_name"
.LASF62:
	.string	"_old_offset"
.LASF67:
	.string	"_offset"
.LASF121:
	.string	"output_error_sigpipe"
.LASF42:
	.string	"TIMESPEC_HZ"
.LASF94:
	.string	"shell_escape_always_quoting_style"
.LASF33:
	.string	"timezone"
.LASF89:
	.string	"program_name"
.LASF76:
	.string	"_IO_marker"
.LASF79:
	.string	"stdin"
.LASF132:
	.string	"descriptors"
.LASF2:
	.string	"unsigned int"
.LASF71:
	.string	"_freeres_buf"
.LASF3:
	.string	"long unsigned int"
.LASF92:
	.string	"shell_always_quoting_style"
.LASF51:
	.string	"_IO_write_ptr"
.LASF112:
	.string	"FADVISE_NOREUSE"
.LASF25:
	.string	"name"
.LASF82:
	.string	"sys_nerr"
.LASF151:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF140:
	.string	"optc"
.LASF1:
	.string	"short unsigned int"
.LASF109:
	.string	"error_one_per_line"
.LASF40:
	.string	"Version"
.LASF55:
	.string	"_IO_save_base"
.LASF37:
	.string	"environ"
.LASF118:
	.string	"ignore_interrupts"
.LASF66:
	.string	"_lock"
.LASF61:
	.string	"_flags2"
.LASF73:
	.string	"_mode"
.LASF80:
	.string	"stdout"
.LASF127:
	.string	"output_error_args"
.LASF117:
	.string	"append"
.LASF88:
	.string	"version_etc_copyright"
.LASF69:
	.string	"_wide_data"
.LASF142:
	.string	"usage"
.LASF21:
	.string	"optarg"
.LASF34:
	.string	"getdate_err"
.LASF22:
	.string	"optind"
.LASF47:
	.string	"_IO_read_ptr"
.LASF122:
	.string	"output_error_warn"
.LASF8:
	.string	"__off64_t"
.LASF154:
	.string	"_IO_lock_t"
.LASF45:
	.string	"_IO_FILE"
.LASF107:
	.string	"error_print_progname"
.LASF149:
	.string	"map_prog"
.LASF36:
	.string	"__environ"
.LASF144:
	.string	"tee_files"
.LASF83:
	.string	"sys_errlist"
.LASF58:
	.string	"_markers"
.LASF152:
	.string	"src/tee.c"
.LASF129:
	.string	"nfiles"
.LASF131:
	.string	"n_outputs"
.LASF13:
	.string	"time_t"
.LASF106:
	.string	"argmatch_die"
.LASF96:
	.string	"c_maybe_quoting_style"
.LASF116:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF148:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF44:
	.string	"option"
.LASF104:
	.string	"quote_quoting_options"
.LASF27:
	.string	"flag"
.LASF84:
	.string	"_sys_nerr"
.LASF123:
	.string	"output_error_warn_nopipe"
.LASF31:
	.string	"tzname"
.LASF75:
	.string	"FILE"
.LASF115:
	.string	"FADVISE_RANDOM"
.LASF93:
	.string	"shell_escape_quoting_style"
.LASF125:
	.string	"output_error_exit_nopipe"
.LASF101:
	.string	"quoting_style_args"
.LASF24:
	.string	"optopt"
.LASF32:
	.string	"daylight"
.LASF137:
	.string	"fail"
.LASF35:
	.string	"long double"
.LASF120:
	.string	"output_error"
.LASF11:
	.string	"char"
.LASF113:
	.string	"FADVISE_DONTNEED"
.LASF135:
	.string	"mode_string"
.LASF9:
	.string	"__time_t"
.LASF105:
	.string	"argmatch_exit_fn"
.LASF99:
	.string	"clocale_quoting_style"
.LASF133:
	.string	"buffer"
.LASF23:
	.string	"opterr"
.LASF110:
	.string	"FADVISE_NORMAL"
.LASF103:
	.string	"quoting_options"
.LASF49:
	.string	"_IO_read_base"
.LASF57:
	.string	"_IO_save_end"
.LASF19:
	.string	"_sys_siglist"
.LASF147:
	.string	"infomap"
.LASF26:
	.string	"has_arg"
.LASF136:
	.string	"w_errno"
.LASF72:
	.string	"__pad5"
.LASF52:
	.string	"_IO_write_end"
.LASF74:
	.string	"_unused2"
.LASF81:
	.string	"stderr"
.LASF139:
	.string	"argv"
.LASF29:
	.string	"__daylight"
.LASF143:
	.string	"status"
.LASF153:
	.string	"/root/coreutils"
.LASF100:
	.string	"custom_quoting_style"
.LASF124:
	.string	"output_error_exit"
.LASF108:
	.string	"error_message_count"
.LASF150:
	.string	"lc_messages"
.LASF64:
	.string	"_vtable_offset"
.LASF138:
	.string	"argc"
.LASF70:
	.string	"_freeres_list"
.LASF78:
	.string	"_IO_wide_data"
.LASF114:
	.string	"FADVISE_WILLNEED"
.LASF28:
	.string	"__tzname"
.LASF141:
	.string	"main"
.LASF50:
	.string	"_IO_write_base"
.LASF155:
	.string	"emit_ancillary_info"
.LASF145:
	.string	"bad_cast"
.LASF130:
	.string	"files"
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
