	.file	"sync.c"
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
	.section	.rodata
.LC18:
	.string	"data"
.LC19:
	.string	"file-system"
.LC20:
	.string	"help"
.LC21:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 160
long_options:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	102
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
.LC23:
	.string	"Usage: %s [OPTION] [FILE]...\n"
	.align 8
.LC24:
	.string	"Synchronize cached writes to persistent storage\n\nIf one or more files are specified, sync only them,\nor their containing file systems.\n\n"
	.align 8
.LC25:
	.string	"  -d, --data             sync only file data, no unneeded metadata\n"
	.align 8
.LC26:
	.string	"  -f, --file-system      sync the file systems that contain the files\n"
	.align 8
.LC27:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC28:
	.string	"      --version  output version information and exit\n"
.LC29:
	.string	"sync"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/sync.c"
	.loc 2 59 1 is_stmt 1
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
	.loc 2 60 6
	cmpl	$0, -20(%rbp)
	je	.L11
	.loc 2 61 5
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
	jmp	.L12
.L11:
	.loc 2 64 7
	movq	program_name(%rip), %rbx
	.loc 2 64 15
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	.loc 2 64 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 65 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 73 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 76 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 80 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 81 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 82 7
	leaq	.LC29(%rip), %rdi
	call	emit_ancillary_info
.L12:
	.loc 2 84 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC30:
	.string	"error opening %s"
	.align 8
.LC31:
	.string	"couldn't reset non-blocking mode %s"
.LC32:
	.string	"error syncing %s"
.LC33:
	.string	"failed to close %s"
	.text
	.type	sync_arg, @function
sync_arg:
.LFB47:
	.loc 2 92 1
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
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 93 8
	movb	$1, -37(%rbp)
	.loc 2 94 7
	movl	$2048, -28(%rbp)
	.loc 2 105 8
	movl	-28(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -36(%rbp)
	.loc 2 106 6
	cmpl	$0, -36(%rbp)
	jns	.L14
.LBB2:
	.loc 2 110 22
	call	__errno_location@PLT
	.loc 2 110 11
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 111 10
	cmpl	$2049, -28(%rbp)
	je	.L15
	.loc 2 112 14
	movq	-64(%rbp), %rax
	movl	$2049, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -36(%rbp)
.L15:
	.loc 2 113 10
	cmpl	$0, -36(%rbp)
	jns	.L14
	.loc 2 115 11
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 115 31
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 115 11
	movl	-24(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 116 18
	movl	$0, %eax
	jmp	.L16
.L14:
.LBE2:
	.loc 2 122 17
	movl	-36(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	movl	%eax, -20(%rbp)
	.loc 2 123 6
	cmpl	$-1, -20(%rbp)
	je	.L17
	.loc 2 124 10
	movl	-20(%rbp), %eax
	andb	$-9, %ah
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	.loc 2 124 7
	testl	%eax, %eax
	jns	.L18
.L17:
	.loc 2 126 7
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 126 24
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 126 17
	call	__errno_location@PLT
	.loc 2 126 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 128 11
	movb	$0, -37(%rbp)
.L18:
	.loc 2 131 6
	cmpb	$0, -37(%rbp)
	je	.L19
.LBB3:
	.loc 2 133 11
	movl	$-1, -32(%rbp)
	.loc 2 135 7
	cmpl	$2, -52(%rbp)
	je	.L20
	cmpl	$2, -52(%rbp)
	ja	.L21
	cmpl	$0, -52(%rbp)
	je	.L22
	cmpl	$1, -52(%rbp)
	jne	.L21
	.loc 2 138 25
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fdatasync@PLT
	movl	%eax, -32(%rbp)
	.loc 2 139 11
	jmp	.L21
.L22:
	.loc 2 142 25
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fsync@PLT
	movl	%eax, -32(%rbp)
	.loc 2 143 11
	jmp	.L21
.L20:
	.loc 2 147 25
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	syncfs@PLT
	movl	%eax, -32(%rbp)
	.loc 2 148 11
	nop
.L21:
	.loc 2 155 10
	cmpl	$0, -32(%rbp)
	jns	.L19
	.loc 2 157 11
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 157 28
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 157 21
	call	__errno_location@PLT
	.loc 2 157 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 158 15
	movb	$0, -37(%rbp)
.L19:
.LBE3:
	.loc 2 162 7
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 162 6
	testl	%eax, %eax
	jns	.L23
	.loc 2 164 7
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 164 24
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 164 17
	call	__errno_location@PLT
	.loc 2 164 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 165 11
	movb	$0, -37(%rbp)
.L23:
	.loc 2 168 10
	movzbl	-37(%rbp), %eax
.L16:
	.loc 2 169 1
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	sync_arg, .-sync_arg
	.section	.rodata
.LC34:
	.string	"/usr/local/share/locale"
.LC35:
	.string	"Giuseppe Scrivano"
.LC36:
	.string	"Jim Meyering"
.LC37:
	.string	"df"
	.align 8
.LC38:
	.string	"cannot specify both --data and --file-system"
	.align 8
.LC39:
	.string	"--data needs at least one argument"
	.text
	.globl	main
	.type	main, @function
main:
.LFB48:
	.loc 2 173 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 176 8
	movb	$0, -12(%rbp)
	.loc 2 176 26
	movb	$0, -11(%rbp)
	.loc 2 178 8
	movb	$1, -10(%rbp)
	.loc 2 181 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 182 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 183 3
	leaq	.LC34(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 184 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 186 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 188 9
	jmp	.L25
.L31:
	.loc 2 191 7
	cmpl	$102, -4(%rbp)
	je	.L26
	cmpl	$102, -4(%rbp)
	jg	.L27
	cmpl	$100, -4(%rbp)
	je	.L28
	cmpl	$100, -4(%rbp)
	jg	.L27
	cmpl	$-131, -4(%rbp)
	je	.L29
	cmpl	$-130, -4(%rbp)
	je	.L30
	jmp	.L27
.L28:
	.loc 2 194 20
	movb	$1, -12(%rbp)
	.loc 2 195 11
	jmp	.L25
.L26:
	.loc 2 198 27
	movb	$1, -11(%rbp)
	.loc 2 199 11
	jmp	.L25
.L30:
	.loc 2 201 9
	movl	$0, %edi
	call	usage
.L29:
	.loc 2 203 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC35(%rip), %r9
	leaq	.LC36(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L27:
	.loc 2 206 11
	movl	$1, %edi
	call	usage
.L25:
	.loc 2 188 15
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -4(%rbp)
	.loc 2 188 9
	cmpl	$-1, -4(%rbp)
	jne	.L31
	.loc 2 210 27
	movl	optind(%rip), %eax
	.loc 2 210 18
	cmpl	%eax, -20(%rbp)
	setg	%al
	movb	%al, -9(%rbp)
	.loc 2 212 6
	cmpb	$0, -12(%rbp)
	je	.L32
	.loc 2 212 16 discriminator 1
	cmpb	$0, -11(%rbp)
	je	.L32
.LBB4:
	.loc 2 214 7
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L32:
.LBE4:
	.loc 2 218 7
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	.loc 2 218 6
	testb	%al, %al
	je	.L33
	.loc 2 218 23 discriminator 1
	cmpb	$0, -12(%rbp)
	je	.L33
.LBB5:
	.loc 2 219 5
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L33:
.LBE5:
	.loc 2 221 7
	movzbl	-9(%rbp), %eax
	xorl	$1, %eax
	.loc 2 221 6
	testb	%al, %al
	je	.L34
	.loc 2 222 10
	movl	$3, -8(%rbp)
	jmp	.L35
.L34:
	.loc 2 223 11
	cmpb	$0, -11(%rbp)
	je	.L36
	.loc 2 224 10
	movl	$2, -8(%rbp)
	jmp	.L35
.L36:
	.loc 2 225 12
	movzbl	-12(%rbp), %eax
	xorl	$1, %eax
	.loc 2 225 11
	testb	%al, %al
	je	.L37
	.loc 2 226 10
	movl	$0, -8(%rbp)
	jmp	.L35
.L37:
	.loc 2 228 10
	movl	$1, -8(%rbp)
.L35:
	.loc 2 230 6
	cmpl	$3, -8(%rbp)
	jne	.L40
	.loc 2 231 5
	call	sync@PLT
	jmp	.L39
.L41:
	.loc 2 235 35 discriminator 2
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 235 15 discriminator 2
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sync_arg
	.loc 2 235 12 discriminator 2
	movzbl	-10(%rbp), %edx
	.loc 2 235 15 discriminator 2
	movzbl	%al, %eax
	.loc 2 235 12 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -10(%rbp)
	.loc 2 234 35 discriminator 2
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L40:
	.loc 2 234 21 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 234 7 discriminator 1
	cmpl	%eax, -20(%rbp)
	jg	.L41
.L39:
	.loc 2 238 28
	movzbl	-10(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 239 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	main, .-main
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
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8a0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF130
	.byte	0xc
	.long	.LASF131
	.long	.LASF132
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
	.long	.LASF19
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
	.byte	0x98
	.byte	0x19
	.long	0x10b
	.uleb128 0xb
	.long	.LASF17
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x10b
	.uleb128 0xb
	.long	.LASF18
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x10b
	.uleb128 0x8
	.long	.LASF20
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x2bd
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x2d6
	.byte	0x60
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x2dc
	.byte	0x68
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x112
	.byte	0x78
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0xf6
	.byte	0x80
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0xfd
	.byte	0x82
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x2e2
	.byte	0x83
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x2f2
	.byte	0x88
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x11e
	.byte	0x90
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x2fd
	.byte	0x98
	.uleb128 0x9
	.long	.LASF44
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x308
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x2dc
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xed
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xd3
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x30e
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x136
	.uleb128 0xd
	.long	.LASF133
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF51
	.uleb128 0x3
	.byte	0x8
	.long	0x2d1
	.uleb128 0x3
	.byte	0x8
	.long	0x136
	.uleb128 0xf
	.long	0x3f
	.long	0x2f2
	.uleb128 0x10
	.long	0xdf
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c9
	.uleb128 0xe
	.long	.LASF52
	.uleb128 0x3
	.byte	0x8
	.long	0x2f8
	.uleb128 0xe
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.long	0x303
	.uleb128 0xf
	.long	0x3f
	.long	0x31e
	.uleb128 0x10
	.long	0xdf
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x32a
	.uleb128 0x3
	.byte	0x8
	.long	0x2bd
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x32a
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x32a
	.uleb128 0x2
	.long	.LASF57
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xc8
	.long	0x35f
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x354
	.uleb128 0x2
	.long	.LASF58
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x35f
	.uleb128 0x2
	.long	.LASF59
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF60
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x35f
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF62
	.uleb128 0xb
	.long	.LASF63
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x12a
	.uleb128 0x12
	.long	.LASF64
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF65
	.uleb128 0xf
	.long	0x39
	.long	0x3c6
	.uleb128 0x10
	.long	0xdf
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3b6
	.uleb128 0x2
	.long	.LASF67
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF68
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x10b
	.uleb128 0x2
	.long	.LASF69
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3b6
	.uleb128 0x2
	.long	.LASF70
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF71
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x10b
	.uleb128 0x12
	.long	.LASF72
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.uleb128 0x3
	.byte	0x8
	.long	0x41b
	.uleb128 0xf
	.long	0xc8
	.long	0x432
	.uleb128 0x10
	.long	0xdf
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x422
	.uleb128 0x12
	.long	.LASF73
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x432
	.uleb128 0x12
	.long	.LASF74
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x432
	.uleb128 0x12
	.long	.LASF75
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x45e
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x12
	.long	.LASF76
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x45e
	.uleb128 0x2
	.long	.LASF77
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF78
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF79
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF80
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe6
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
	.long	0xe6
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
	.long	0x57
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
	.uleb128 0xf
	.long	0x46
	.long	0x4f7
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x4ec
	.uleb128 0x2
	.long	.LASF85
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x4f7
	.uleb128 0x2
	.long	.LASF86
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x19
	.long	.LASF103
	.byte	0x7
	.byte	0x4
	.long	0xe6
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
	.uleb128 0x5
	.long	0x514
	.uleb128 0x12
	.long	.LASF98
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x35f
	.uleb128 0xf
	.long	0x569
	.long	0x586
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x57b
	.uleb128 0x12
	.long	.LASF99
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x586
	.uleb128 0x2
	.long	.LASF100
	.byte	0x17
	.byte	0x32
	.byte	0xf
	.long	0x41c
	.uleb128 0x2
	.long	.LASF101
	.byte	0x17
	.byte	0x35
	.byte	0x15
	.long	0xe6
	.uleb128 0x2
	.long	.LASF102
	.byte	0x17
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x19
	.long	.LASF104
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0x28
	.byte	0x6
	.long	0x5e7
	.uleb128 0x16
	.long	.LASF105
	.byte	0
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.uleb128 0x16
	.long	.LASF107
	.byte	0x2
	.uleb128 0x16
	.long	.LASF108
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	0xbd
	.long	0x5f7
	.uleb128 0x10
	.long	0xdf
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x5e7
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.long	0x5f7
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x2
	.byte	0xac
	.byte	0x1
	.long	0x57
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cc
	.uleb128 0x1c
	.long	.LASF109
	.byte	0x2
	.byte	0xac
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x2
	.byte	0xac
	.byte	0x18
	.long	0x45e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"c"
	.byte	0x2
	.byte	0xae
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x2
	.byte	0xaf
	.byte	0x8
	.long	0x6cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x2
	.byte	0xb0
	.byte	0x8
	.long	0x6cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x2
	.byte	0xb0
	.byte	0x1a
	.long	0x6cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x2
	.byte	0xb1
	.byte	0x12
	.long	0x5bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"ok"
	.byte	0x2
	.byte	0xb2
	.byte	0x8
	.long	0x6cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF116
	.uleb128 0x1f
	.long	.LASF134
	.byte	0x2
	.byte	0x5b
	.byte	0x1
	.long	0x6cc
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a0
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x2
	.byte	0x5b
	.byte	0x1a
	.long	0x5bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x2
	.byte	0x5b
	.byte	0x2c
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"ret"
	.byte	0x2
	.byte	0x5d
	.byte	0x8
	.long	0x6cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x2
	.byte	0x5e
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"fd"
	.byte	0x2
	.byte	0x5f
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x2
	.byte	0x7a
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF135
	.long	0x7b0
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x77e
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x2
	.byte	0x6e
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x2
	.byte	0x85
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0x7b0
	.uleb128 0x10
	.long	0xdf
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x7a0
	.uleb128 0x23
	.long	.LASF123
	.byte	0x2
	.byte	0x3a
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e3
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x2
	.byte	0x3a
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF136
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x888
	.uleb128 0x25
	.long	.LASF125
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF126
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x83e
	.uleb128 0x27
	.long	.LASF125
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x27
	.long	.LASF127
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x813
	.uleb128 0x28
	.long	.LASF126
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x898
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.long	.LASF127
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.long	.LASF128
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x89d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.long	.LASF129
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xf
	.long	0x83e
	.long	0x898
	.uleb128 0x10
	.long	0xdf
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x888
	.uleb128 0x3
	.byte	0x8
	.long	0x83e
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
.LASF80:
	.string	"exit_failure"
.LASF16:
	.string	"__off_t"
.LASF22:
	.string	"_IO_read_ptr"
.LASF95:
	.string	"locale_quoting_style"
.LASF34:
	.string	"_chain"
.LASF19:
	.string	"option"
.LASF84:
	.string	"GETOPT_VERSION_CHAR"
.LASF134:
	.string	"sync_arg"
.LASF15:
	.string	"size_t"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF40:
	.string	"_shortbuf"
.LASF88:
	.string	"shell_quoting_style"
.LASF83:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF65:
	.string	"long long unsigned int"
.LASF43:
	.string	"_codecvt"
.LASF68:
	.string	"__timezone"
.LASF61:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF99:
	.string	"quoting_style_vals"
.LASF135:
	.string	"__PRETTY_FUNCTION__"
.LASF125:
	.string	"program"
.LASF94:
	.string	"escape_quoting_style"
.LASF104:
	.string	"sync_mode"
.LASF87:
	.string	"literal_quoting_style"
.LASF35:
	.string	"_fileno"
.LASF23:
	.string	"_IO_read_end"
.LASF74:
	.string	"sys_siglist"
.LASF14:
	.string	"long int"
.LASF64:
	.string	"_gl_cxxalias_dummy"
.LASF111:
	.string	"long_options"
.LASF21:
	.string	"_flags"
.LASF44:
	.string	"_wide_data"
.LASF29:
	.string	"_IO_buf_end"
.LASF38:
	.string	"_cur_column"
.LASF78:
	.string	"program_invocation_short_name"
.LASF92:
	.string	"c_quoting_style"
.LASF52:
	.string	"_IO_codecvt"
.LASF60:
	.string	"_sys_errlist"
.LASF77:
	.string	"program_invocation_name"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF81:
	.string	"TIMESPEC_HZ"
.LASF91:
	.string	"shell_escape_always_quoting_style"
.LASF71:
	.string	"timezone"
.LASF86:
	.string	"program_name"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF9:
	.string	"unsigned int"
.LASF46:
	.string	"_freeres_buf"
.LASF103:
	.string	"quoting_style"
.LASF8:
	.string	"long unsigned int"
.LASF26:
	.string	"_IO_write_ptr"
.LASF5:
	.string	"name"
.LASF57:
	.string	"sys_nerr"
.LASF130:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF97:
	.string	"custom_quoting_style"
.LASF11:
	.string	"short unsigned int"
.LASF102:
	.string	"error_one_per_line"
.LASF79:
	.string	"Version"
.LASF30:
	.string	"_IO_save_base"
.LASF121:
	.string	"sync_status"
.LASF76:
	.string	"environ"
.LASF106:
	.string	"MODE_DATA"
.LASF41:
	.string	"_lock"
.LASF107:
	.string	"MODE_FILE_SYSTEM"
.LASF36:
	.string	"_flags2"
.LASF48:
	.string	"_mode"
.LASF55:
	.string	"stdout"
.LASF119:
	.string	"fdflags"
.LASF120:
	.string	"rd_errno"
.LASF85:
	.string	"version_etc_copyright"
.LASF0:
	.string	"optarg"
.LASF72:
	.string	"getdate_err"
.LASF1:
	.string	"optind"
.LASF118:
	.string	"open_flags"
.LASF27:
	.string	"_IO_write_end"
.LASF133:
	.string	"_IO_lock_t"
.LASF20:
	.string	"_IO_FILE"
.LASF100:
	.string	"error_print_progname"
.LASF128:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF63:
	.string	"time_t"
.LASF58:
	.string	"sys_errlist"
.LASF33:
	.string	"_markers"
.LASF93:
	.string	"c_maybe_quoting_style"
.LASF116:
	.string	"_Bool"
.LASF10:
	.string	"unsigned char"
.LASF127:
	.string	"node"
.LASF108:
	.string	"MODE_SYNC"
.LASF13:
	.string	"short int"
.LASF117:
	.string	"file"
.LASF7:
	.string	"flag"
.LASF59:
	.string	"_sys_nerr"
.LASF113:
	.string	"arg_data"
.LASF39:
	.string	"_vtable_offset"
.LASF69:
	.string	"tzname"
.LASF50:
	.string	"FILE"
.LASF90:
	.string	"shell_escape_quoting_style"
.LASF105:
	.string	"MODE_FILE"
.LASF98:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF70:
	.string	"daylight"
.LASF62:
	.string	"long double"
.LASF112:
	.string	"args_specified"
.LASF2:
	.string	"char"
.LASF89:
	.string	"shell_always_quoting_style"
.LASF115:
	.string	"mode"
.LASF96:
	.string	"clocale_quoting_style"
.LASF114:
	.string	"arg_file_system"
.LASF3:
	.string	"opterr"
.LASF17:
	.string	"__off64_t"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF126:
	.string	"infomap"
.LASF6:
	.string	"has_arg"
.LASF123:
	.string	"usage"
.LASF47:
	.string	"__pad5"
.LASF18:
	.string	"__time_t"
.LASF49:
	.string	"_unused2"
.LASF56:
	.string	"stderr"
.LASF110:
	.string	"argv"
.LASF67:
	.string	"__daylight"
.LASF124:
	.string	"status"
.LASF132:
	.string	"/root/coreutils"
.LASF131:
	.string	"src/sync.c"
.LASF31:
	.string	"_IO_backup_base"
.LASF101:
	.string	"error_message_count"
.LASF129:
	.string	"lc_messages"
.LASF109:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF53:
	.string	"_IO_wide_data"
.LASF66:
	.string	"__tzname"
.LASF122:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF136:
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
