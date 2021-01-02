	.file	"mkfifo.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.text
	.type	emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
.LFB36:
	.file 1 "src/system.h"
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
	.type	smack_set_label_for_self, @function
smack_set_label_for_self:
.LFB48:
	.file 2 "./lib/smack.h"
	.loc 2 33 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 34 10
	movl	$-1, %eax
	.loc 2 35 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	smack_set_label_for_self, .-smack_set_label_for_self
	.type	is_smack_enabled, @function
is_smack_enabled:
.LFB49:
	.loc 2 40 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 44 10
	movl	$0, %eax
	.loc 2 46 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	is_smack_enabled, .-is_smack_enabled
	.section	.rodata
.LC19:
	.string	"context"
.LC20:
	.string	"mode"
.LC21:
	.string	"help"
.LC22:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 160
longopts:
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.long	90
	.zero	4
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	109
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
	.align 8
.LC23:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC24:
	.string	"Usage: %s [OPTION]... NAME...\n"
	.align 8
.LC25:
	.string	"Create named pipes (FIFOs) with the given NAMEs.\n"
	.align 8
.LC26:
	.string	"  -m, --mode=MODE    set file permission bits to MODE, not a=rw - umask\n"
	.align 8
.LC27:
	.string	"  -Z                   set the SELinux security context to default type\n      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\n                         or SMACK security context to CTX\n"
	.align 8
.LC28:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC29:
	.string	"      --version  output version information and exit\n"
.LC30:
	.string	"mkfifo"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.file 3 "src/mkfifo.c"
	.loc 3 49 1
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
	.loc 3 50 6
	cmpl	$0, -20(%rbp)
	je	.L16
	.loc 3 51 5
	movq	program_name(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L17
.L16:
	.loc 3 54 7
	movq	program_name(%rip), %rbx
	.loc 3 54 15
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	.loc 3 54 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 55 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 59 7
	call	emit_mandatory_arg_note
	.loc 3 61 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 64 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 69 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 70 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 71 7
	leaq	.LC30(%rip), %rdi
	call	emit_ancillary_info
.L17:
	.loc 3 73 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.section	.rodata
.LC31:
	.string	"/usr/local/share/locale"
.LC32:
	.string	"warning: ignoring --context"
	.align 8
.LC33:
	.string	"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel"
.LC34:
	.string	"David MacKenzie"
.LC35:
	.string	"m:Z"
.LC36:
	.string	"missing operand"
	.align 8
.LC37:
	.string	"failed to set default file creation context to %s"
.LC38:
	.string	"invalid mode"
	.align 8
.LC39:
	.string	"mode must specify only file permission bits"
.LC40:
	.string	"cannot create fifo %s"
.LC41:
	.string	"cannot set permissions of %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 3 78 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 3 80 15
	movq	$0, -48(%rbp)
	.loc 3 81 7
	movl	$0, -64(%rbp)
	.loc 3 83 15
	movq	$0, -40(%rbp)
	.loc 3 84 26
	movq	$0, -32(%rbp)
	.loc 3 87 3
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 3 88 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 3 89 3
	leaq	.LC31(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 3 90 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 3 92 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 3 94 9
	jmp	.L19
.L29:
	.loc 3 96 7
	cmpl	$109, -56(%rbp)
	je	.L20
	cmpl	$109, -56(%rbp)
	jg	.L21
	cmpl	$90, -56(%rbp)
	je	.L22
	cmpl	$90, -56(%rbp)
	jg	.L21
	cmpl	$-131, -56(%rbp)
	je	.L23
	cmpl	$-130, -56(%rbp)
	je	.L24
	jmp	.L21
.L20:
	.loc 3 99 26
	movq	optarg(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 3 100 11
	jmp	.L19
.L22:
	.loc 3 102 15
	call	is_smack_enabled
	.loc 3 102 14
	testb	%al, %al
	je	.L25
	.loc 3 105 24
	movq	optarg(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L19
.L25:
	.loc 3 107 20
	call	is_selinux_enabled@PLT
	.loc 3 107 19
	testl	%eax, %eax
	jle	.L27
	.loc 3 109 19
	movq	optarg(%rip), %rax
	.loc 3 109 18
	testq	%rax, %rax
	je	.L28
	.loc 3 110 26
	movq	optarg(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L19
.L28:
	.loc 3 113 42
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	selabel_open@PLT
	movq	%rax, -32(%rbp)
	.loc 3 115 22
	cmpq	$0, -32(%rbp)
	jne	.L19
	.loc 3 116 38
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 116 31
	call	__errno_location@PLT
	.loc 3 116 21
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L19
.L27:
	.loc 3 119 20
	movq	optarg(%rip), %rax
	.loc 3 119 19
	testq	%rax, %rax
	je	.L19
	.loc 3 122 22
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	.loc 3 121 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 125 11
	jmp	.L19
.L24:
	.loc 3 126 9
	movl	$0, %edi
	call	usage
.L23:
	.loc 3 127 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC34(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L21:
	.loc 3 129 11
	movl	$1, %edi
	call	usage
.L19:
	.loc 3 94 18
	movq	-96(%rbp), %rsi
	movl	-84(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -56(%rbp)
	.loc 3 94 9
	cmpl	$-1, -56(%rbp)
	jne	.L29
	.loc 3 133 14
	movl	optind(%rip), %eax
	.loc 3 133 6
	cmpl	%eax, -84(%rbp)
	jne	.L30
	.loc 3 135 20
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 3 135 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 136 7
	movl	$1, %edi
	call	usage
.L30:
	.loc 3 139 6
	cmpq	$0, -40(%rbp)
	je	.L31
.LBB2:
	.loc 3 141 11
	movl	$0, -60(%rbp)
	.loc 3 142 11
	call	is_smack_enabled
	.loc 3 142 10
	testb	%al, %al
	je	.L32
	.loc 3 143 15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	smack_set_label_for_self
	movl	%eax, -60(%rbp)
	jmp	.L33
.L32:
	.loc 3 145 15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	setfscreatecon@PLT
	movl	%eax, -60(%rbp)
.L33:
	.loc 3 147 10
	cmpl	$0, -60(%rbp)
	jns	.L31
.LBB3:
	.loc 3 148 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC37(%rip), %rdi
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
.LBE3:
.LBE2:
	.loc 3 153 11
	movl	$438, -68(%rbp)
	.loc 3 154 6
	cmpq	$0, -48(%rbp)
	je	.L36
.LBB4:
	.loc 3 157 36
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	mode_compile@PLT
	movq	%rax, -24(%rbp)
	.loc 3 158 10
	cmpq	$0, -24(%rbp)
	jne	.L35
.LBB5:
	.loc 3 159 9
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L35:
.LBE5:
	.loc 3 160 21
	movl	$0, %edi
	call	umask@PLT
	movl	%eax, -52(%rbp)
	.loc 3 161 7
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	umask@PLT
	.loc 3 162 17
	movq	-24(%rbp), %rcx
	movl	-52(%rbp), %edx
	movl	-68(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %esi
	movl	%eax, %edi
	call	mode_adjust@PLT
	movl	%eax, -68(%rbp)
	.loc 3 163 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 164 19
	movl	-68(%rbp), %eax
	andl	$-512, %eax
	.loc 3 164 10
	testl	%eax, %eax
	je	.L36
.LBB6:
	.loc 3 165 9
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L40:
.LBE6:
.LBE4:
	.loc 3 171 10
	cmpq	$0, -32(%rbp)
	je	.L37
	.loc 3 172 47
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 172 9
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	defaultcon@PLT
.L37:
	.loc 3 173 23
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 173 11
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mkfifo@PLT
	.loc 3 173 10
	testl	%eax, %eax
	je	.L38
	.loc 3 175 56
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 175 11
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 175 28
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 175 21
	call	__errno_location@PLT
	.loc 3 175 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 176 23
	movl	$1, -64(%rbp)
	jmp	.L39
.L38:
	.loc 3 178 15
	cmpq	$0, -48(%rbp)
	je	.L39
	.loc 3 178 46 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 178 34 discriminator 1
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lchmod@PLT
	.loc 3 178 31 discriminator 1
	testl	%eax, %eax
	je	.L39
	.loc 3 181 18
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 180 11
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 180 28
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 180 21
	call	__errno_location@PLT
	.loc 3 180 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 182 23
	movl	$1, -64(%rbp)
.L39:
	.loc 3 169 25
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L36:
	.loc 3 169 17 discriminator 1
	movl	optind(%rip), %eax
	.loc 3 169 3 discriminator 1
	cmpl	%eax, -84(%rbp)
	jg	.L40
	.loc 3 186 10
	movl	-64(%rbp), %eax
	.loc 3 187 1
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	main, .-main
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 15 "/usr/include/time.h"
	.file 16 "/usr/include/signal.h"
	.file 17 "/usr/include/unistd.h"
	.file 18 "/usr/include/errno.h"
	.file 19 "src/version.h"
	.file 20 "./lib/exitfail.h"
	.file 21 "./lib/timespec.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/error.h"
	.file 26 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8ad
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
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
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
	.long	.LASF63
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x241
	.uleb128 0xa
	.long	.LASF13
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0xa8
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0xa8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0xa8
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0xa8
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0xa8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0xa8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0xa8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0xa8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0xa8
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x25a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x260
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x266
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x276
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x281
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x28c
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x260
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x292
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xba
	.uleb128 0xb
	.long	.LASF133
	.byte	0x6
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
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x2b9
	.uleb128 0x7
	.byte	0x8
	.long	0x241
	.uleb128 0xf
	.long	.LASF47
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF48
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
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
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xf
	.long	.LASF51
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF52
	.byte	0x9
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
	.byte	0xa
	.byte	0x45
	.byte	0x12
	.long	0x78
	.uleb128 0x2
	.long	.LASF56
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x9c
	.uleb128 0x11
	.long	.LASF57
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF58
	.uleb128 0xf
	.long	.LASF59
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF60
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF62
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF64
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x3c3
	.uleb128 0xa
	.long	.LASF65
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x2a2
	.byte	0
	.uleb128 0xa
	.long	.LASF66
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF67
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x3c8
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xe
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x381
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x7
	.byte	0x8
	.long	0xa8
	.uleb128 0xd
	.long	0xa8
	.long	0x3e4
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF68
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x3d4
	.uleb128 0xf
	.long	.LASF69
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF70
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF71
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x3d4
	.uleb128 0xf
	.long	.LASF72
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF74
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x439
	.uleb128 0xd
	.long	0x2a8
	.long	0x450
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x440
	.uleb128 0x11
	.long	.LASF75
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x450
	.uleb128 0x11
	.long	.LASF76
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x450
	.uleb128 0x11
	.long	.LASF77
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x3ce
	.uleb128 0x11
	.long	.LASF78
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x3ce
	.uleb128 0xf
	.long	.LASF79
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF80
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF81
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF82
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x50f
	.uleb128 0xf
	.long	.LASF88
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x2a2
	.uleb128 0x19
	.long	.LASF134
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
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
	.byte	0x18
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
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x59e
	.uleb128 0xf
	.long	.LASF102
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x43a
	.uleb128 0xf
	.long	.LASF103
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF104
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF105
	.uleb128 0xf
	.long	.LASF106
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x5d4
	.uleb128 0xd
	.long	0x3c3
	.long	0x5f5
	.uleb128 0xe
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x5e5
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x3
	.byte	0x26
	.byte	0x1c
	.long	0x5f5
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x3
	.byte	0x4d
	.byte	0x1
	.long	0x65
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x73a
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x3
	.byte	0x4d
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1c
	.long	.LASF108
	.byte	0x3
	.byte	0x4d
	.byte	0x18
	.long	0x3ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x3
	.byte	0x4f
	.byte	0xa
	.long	0x325
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x3
	.byte	0x50
	.byte	0xf
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x3
	.byte	0x51
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x3
	.byte	0x52
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x3
	.byte	0x53
	.byte	0xf
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x3
	.byte	0x54
	.byte	0x1a
	.long	0x73f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x6e6
	.uleb128 0x1e
	.string	"ret"
	.byte	0x3
	.byte	0x8d
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x3
	.byte	0x9c
	.byte	0xe
	.long	0x325
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x3
	.byte	0x9d
	.byte	0x1b
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF118
	.uleb128 0x7
	.byte	0x8
	.long	0x73a
	.uleb128 0xc
	.long	.LASF119
	.uleb128 0x7
	.byte	0x8
	.long	0x745
	.uleb128 0x21
	.long	.LASF121
	.byte	0x3
	.byte	0x30
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x77e
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x3
	.byte	0x30
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF135
	.byte	0x2
	.byte	0x27
	.byte	0x1
	.long	0x79c
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF123
	.uleb128 0x23
	.long	.LASF136
	.byte	0x2
	.byte	0x20
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d5
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x2
	.byte	0x20
	.byte	0x27
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF137
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x87a
	.uleb128 0x25
	.long	.LASF125
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF126
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x830
	.uleb128 0x27
	.long	.LASF125
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2a2
	.byte	0
	.uleb128 0x27
	.long	.LASF127
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2a2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x805
	.uleb128 0x28
	.long	.LASF126
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x88a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.long	.LASF127
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.long	.LASF128
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x88f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.long	.LASF129
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x830
	.long	0x88a
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x87a
	.uleb128 0x7
	.byte	0x8
	.long	0x830
	.uleb128 0x29
	.long	.LASF138
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x2117
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
	.uleb128 0x29
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
.LASF82:
	.string	"exit_failure"
.LASF9:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF97:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF86:
	.string	"GETOPT_VERSION_CHAR"
.LASF109:
	.string	"longopts"
.LASF134:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF136:
	.string	"smack_set_label_for_self"
.LASF32:
	.string	"_shortbuf"
.LASF90:
	.string	"shell_quoting_style"
.LASF85:
	.string	"GETOPT_HELP_CHAR"
.LASF20:
	.string	"_IO_buf_base"
.LASF117:
	.string	"change"
.LASF58:
	.string	"long long unsigned int"
.LASF111:
	.string	"specified_mode"
.LASF35:
	.string	"_codecvt"
.LASF70:
	.string	"__timezone"
.LASF80:
	.string	"program_invocation_short_name"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF101:
	.string	"quoting_style_vals"
.LASF125:
	.string	"program"
.LASF96:
	.string	"escape_quoting_style"
.LASF8:
	.string	"__mode_t"
.LASF89:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF76:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF57:
	.string	"_gl_cxxalias_dummy"
.LASF13:
	.string	"_flags"
.LASF36:
	.string	"_wide_data"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF114:
	.string	"scontext"
.LASF94:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF79:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF83:
	.string	"TIMESPEC_HZ"
.LASF93:
	.string	"shell_escape_always_quoting_style"
.LASF73:
	.string	"timezone"
.LASF116:
	.string	"umask_value"
.LASF88:
	.string	"program_name"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF118:
	.string	"selabel_handle"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF65:
	.string	"name"
.LASF49:
	.string	"sys_nerr"
.LASF130:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF99:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF104:
	.string	"error_one_per_line"
.LASF81:
	.string	"Version"
.LASF22:
	.string	"_IO_save_base"
.LASF78:
	.string	"environ"
.LASF124:
	.string	"label"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"stdout"
.LASF113:
	.string	"optc"
.LASF87:
	.string	"version_etc_copyright"
.LASF59:
	.string	"optarg"
.LASF119:
	.string	"mode_change"
.LASF74:
	.string	"getdate_err"
.LASF60:
	.string	"optind"
.LASF19:
	.string	"_IO_write_end"
.LASF131:
	.string	"src/mkfifo.c"
.LASF115:
	.string	"set_security_context"
.LASF133:
	.string	"_IO_lock_t"
.LASF63:
	.string	"_IO_FILE"
.LASF102:
	.string	"error_print_progname"
.LASF128:
	.string	"map_prog"
.LASF77:
	.string	"__environ"
.LASF56:
	.string	"time_t"
.LASF50:
	.string	"sys_errlist"
.LASF25:
	.string	"_markers"
.LASF110:
	.string	"newmode"
.LASF95:
	.string	"c_maybe_quoting_style"
.LASF123:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF112:
	.string	"exit_status"
.LASF127:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF64:
	.string	"option"
.LASF106:
	.string	"quote_quoting_options"
.LASF67:
	.string	"flag"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF71:
	.string	"tzname"
.LASF42:
	.string	"FILE"
.LASF92:
	.string	"shell_escape_quoting_style"
.LASF100:
	.string	"quoting_style_args"
.LASF62:
	.string	"optopt"
.LASF72:
	.string	"daylight"
.LASF54:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF91:
	.string	"shell_always_quoting_style"
.LASF98:
	.string	"clocale_quoting_style"
.LASF61:
	.string	"opterr"
.LASF10:
	.string	"__off64_t"
.LASF105:
	.string	"quoting_options"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF75:
	.string	"_sys_siglist"
.LASF126:
	.string	"infomap"
.LASF66:
	.string	"has_arg"
.LASF121:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF11:
	.string	"__time_t"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF108:
	.string	"argv"
.LASF69:
	.string	"__daylight"
.LASF135:
	.string	"is_smack_enabled"
.LASF122:
	.string	"status"
.LASF132:
	.string	"/root/coreutils"
.LASF55:
	.string	"mode_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF103:
	.string	"error_message_count"
.LASF129:
	.string	"lc_messages"
.LASF107:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF138:
	.string	"emit_mandatory_arg_note"
.LASF68:
	.string	"__tzname"
.LASF120:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF137:
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
