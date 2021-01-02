	.file	"mknod.c"
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
	.string	"Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]\n"
	.align 8
.LC25:
	.string	"Create the special file NAME of the given TYPE.\n"
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
	.align 8
.LC30:
	.ascii	"\nBot"
	.string	"h MAJOR and MINOR must be specified when TYPE is b, c, or u, and they\nmust be omitted when TYPE is p.  If MAJOR or MINOR begins with 0x or 0X,\nit is interpreted as hexadecimal; otherwise, if it begins with 0, as octal;\notherwise, as decimal.  TYPE may be:\n"
	.align 8
.LC31:
	.string	"\n  b      create a block (buffered) special file\n  c, u   create a character (unbuffered) special file\n  p      create a FIFO\n"
	.align 8
.LC32:
	.string	"\nNOTE: your shell may have its own version of %s, which usually supersedes\nthe version described here.  Please refer to your shell's documentation\nfor details about the options it supports.\n"
.LC33:
	.string	"mknod"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.file 3 "src/mknod.c"
	.loc 3 50 1
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
	.loc 3 51 6
	cmpl	$0, -20(%rbp)
	je	.L16
	.loc 3 52 5
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
	.loc 3 55 7
	movq	program_name(%rip), %rbx
	.loc 3 55 15
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	.loc 3 55 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 57 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 61 7
	call	emit_mandatory_arg_note
	.loc 3 63 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 66 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 71 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 72 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 73 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 80 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 86 15
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 3 86 7
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 87 7
	leaq	.LC33(%rip), %rdi
	call	emit_ancillary_info
.L17:
	.loc 3 89 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.section	.rodata
.LC34:
	.string	"/usr/local/share/locale"
.LC35:
	.string	"warning: ignoring --context"
	.align 8
.LC36:
	.string	"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel"
.LC37:
	.string	"David MacKenzie"
.LC38:
	.string	"m:Z"
.LC39:
	.string	"invalid mode"
	.align 8
.LC40:
	.string	"mode must specify only file permission bits"
.LC41:
	.string	"missing operand"
.LC42:
	.string	"missing operand after %s"
	.align 8
.LC43:
	.string	"Special files require major and minor device numbers."
.LC44:
	.string	"%s\n"
.LC45:
	.string	"extra operand %s"
	.align 8
.LC46:
	.string	"Fifos do not have major and minor device numbers."
	.align 8
.LC47:
	.string	"failed to set default file creation context to %s"
	.align 8
.LC48:
	.string	"invalid major device number %s"
	.align 8
.LC49:
	.string	"invalid minor device number %s"
.LC50:
	.string	"invalid device %s %s"
.LC51:
	.string	"%s"
.LC52:
	.string	"invalid device type %s"
.LC53:
	.string	"cannot set permissions of %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 3 94 1
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
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	.loc 3 94 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 96 15
	movq	$0, -88(%rbp)
	.loc 3 100 15
	movq	$0, -80(%rbp)
	.loc 3 101 26
	movq	$0, -72(%rbp)
	.loc 3 104 3
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 3 105 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 3 106 3
	leaq	.LC34(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 3 107 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 3 109 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 3 111 9
	jmp	.L19
.L29:
	.loc 3 113 7
	cmpl	$109, -112(%rbp)
	je	.L20
	cmpl	$109, -112(%rbp)
	jg	.L21
	cmpl	$90, -112(%rbp)
	je	.L22
	cmpl	$90, -112(%rbp)
	jg	.L21
	cmpl	$-131, -112(%rbp)
	je	.L23
	cmpl	$-130, -112(%rbp)
	je	.L24
	jmp	.L21
.L20:
	.loc 3 116 26
	movq	optarg(%rip), %rax
	movq	%rax, -88(%rbp)
	.loc 3 117 11
	jmp	.L19
.L22:
	.loc 3 119 15
	call	is_smack_enabled
	.loc 3 119 14
	testb	%al, %al
	je	.L25
	.loc 3 122 24
	movq	optarg(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L19
.L25:
	.loc 3 124 20
	call	is_selinux_enabled@PLT
	.loc 3 124 19
	testl	%eax, %eax
	jle	.L27
	.loc 3 126 19
	movq	optarg(%rip), %rax
	.loc 3 126 18
	testq	%rax, %rax
	je	.L28
	.loc 3 127 26
	movq	optarg(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L19
.L28:
	.loc 3 130 42
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	selabel_open@PLT
	movq	%rax, -72(%rbp)
	.loc 3 132 22
	cmpq	$0, -72(%rbp)
	jne	.L19
	.loc 3 133 38
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 133 31
	call	__errno_location@PLT
	.loc 3 133 21
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L19
.L27:
	.loc 3 136 20
	movq	optarg(%rip), %rax
	.loc 3 136 19
	testq	%rax, %rax
	je	.L19
	.loc 3 139 22
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 3 138 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 142 11
	jmp	.L19
.L24:
	.loc 3 143 9
	movl	$0, %edi
	call	usage
.L23:
	.loc 3 144 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC37(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L21:
	.loc 3 146 11
	movl	$1, %edi
	call	usage
.L19:
	.loc 3 111 18
	movq	-144(%rbp), %rsi
	movl	-132(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -112(%rbp)
	.loc 3 111 9
	cmpl	$-1, -112(%rbp)
	jne	.L29
	.loc 3 150 11
	movl	$438, -124(%rbp)
	.loc 3 151 6
	cmpq	$0, -88(%rbp)
	je	.L30
.LBB2:
	.loc 3 154 36
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	mode_compile@PLT
	movq	%rax, -64(%rbp)
	.loc 3 155 10
	cmpq	$0, -64(%rbp)
	jne	.L31
.LBB3:
	.loc 3 156 9
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L31:
.LBE3:
	.loc 3 157 21
	movl	$0, %edi
	call	umask@PLT
	movl	%eax, -108(%rbp)
	.loc 3 158 7
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	umask@PLT
	.loc 3 159 17
	movq	-64(%rbp), %rcx
	movl	-108(%rbp), %edx
	movl	-124(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %esi
	movl	%eax, %edi
	call	mode_adjust@PLT
	movl	%eax, -124(%rbp)
	.loc 3 160 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 161 19
	movl	-124(%rbp), %eax
	andl	$-512, %eax
	.loc 3 161 10
	testl	%eax, %eax
	je	.L30
.LBB4:
	.loc 3 162 9
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L30:
.LBE4:
.LBE2:
	.loc 3 169 29
	movl	optind(%rip), %eax
	.loc 3 171 28
	cmpl	%eax, -132(%rbp)
	jle	.L32
	.loc 3 170 35
	movl	optind(%rip), %eax
	addl	$1, %eax
	.loc 3 170 24
	cmpl	%eax, -132(%rbp)
	jle	.L33
	.loc 3 170 53 discriminator 1
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 3 170 65 discriminator 1
	movzbl	(%rax), %eax
	.loc 3 170 46 discriminator 1
	cmpb	$112, %al
	jne	.L33
.L32:
	.loc 3 171 28 discriminator 1
	movl	$2, %eax
	jmp	.L34
.L33:
	.loc 3 171 28 is_stmt 0
	movl	$4, %eax
.L34:
	.loc 3 169 21 is_stmt 1
	movq	%rax, -56(%rbp)
	.loc 3 173 12
	movl	optind(%rip), %eax
	movl	-132(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	.loc 3 173 6
	cmpq	%rax, -56(%rbp)
	jbe	.L35
	.loc 3 175 16
	movl	optind(%rip), %eax
	.loc 3 175 10
	cmpl	%eax, -132(%rbp)
	jg	.L36
	.loc 3 176 22
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	.loc 3 176 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L37
.L36:
	.loc 3 178 64
	movl	-132(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 178 9
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 3 178 22
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	.loc 3 178 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L37:
	.loc 3 179 10
	cmpq	$4, -56(%rbp)
	jne	.L38
	.loc 3 179 42 discriminator 1
	movl	optind(%rip), %eax
	movl	-132(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 3 179 34 discriminator 1
	cmpl	$2, %eax
	jne	.L38
	.loc 3 180 9
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L38:
	.loc 3 182 7
	movl	$1, %edi
	call	usage
.L35:
	.loc 3 185 32
	movl	optind(%rip), %eax
	movl	-132(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	.loc 3 185 6
	cmpq	%rax, -56(%rbp)
	jnb	.L39
	.loc 3 188 33
	movl	optind(%rip), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 188 25
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 187 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 3 187 20
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	.loc 3 187 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 189 10
	cmpq	$2, -56(%rbp)
	jne	.L40
	.loc 3 189 42 discriminator 1
	movl	optind(%rip), %eax
	movl	-132(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 3 189 34 discriminator 1
	cmpl	$4, %eax
	jne	.L40
	.loc 3 190 9
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L40:
	.loc 3 192 7
	movl	$1, %edi
	call	usage
.L39:
	.loc 3 195 6
	cmpq	$0, -80(%rbp)
	je	.L41
.LBB5:
	.loc 3 197 11
	movl	$0, -116(%rbp)
	.loc 3 198 11
	call	is_smack_enabled
	.loc 3 198 10
	testb	%al, %al
	je	.L42
	.loc 3 199 15
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	smack_set_label_for_self
	movl	%eax, -116(%rbp)
	jmp	.L43
.L42:
	.loc 3 201 15
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	setfscreatecon@PLT
	movl	%eax, -116(%rbp)
.L43:
	.loc 3 203 10
	cmpl	$0, -116(%rbp)
	jns	.L41
.LBB6:
	.loc 3 204 9
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC47(%rip), %rdi
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
.L41:
.LBE6:
.LBE5:
	.loc 3 212 15
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 3 212 27
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 3 212 3
	cmpl	$117, %eax
	je	.L44
	cmpl	$117, %eax
	jg	.L45
	cmpl	$112, %eax
	je	.L46
	cmpl	$112, %eax
	jg	.L45
	cmpl	$98, %eax
	je	.L47
	cmpl	$99, %eax
	je	.L44
	jmp	.L45
.L47:
	.loc 3 218 17
	movl	$24576, -120(%rbp)
	.loc 3 220 7
	jmp	.L48
.L44:
	.loc 3 227 17
	movl	$8192, -120(%rbp)
	.loc 3 229 7
	nop
.L48:
.LBB7:
	.loc 3 233 35
	movl	optind(%rip), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 233 21
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 3 234 35
	movl	optind(%rip), %eax
	cltq
	addq	$3, %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 234 21
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 3 238 13
	leaq	-104(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC17(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 3 238 12
	testl	%eax, %eax
	jne	.L49
	.loc 3 239 27
	movq	-104(%rbp), %rax
	movl	%eax, %edx
	.loc 3 239 24
	movq	-104(%rbp), %rax
	.loc 3 239 13
	cmpq	%rax, %rdx
	je	.L50
.L49:
.LBB8:
	.loc 3 240 11
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L50:
.LBE8:
	.loc 3 243 13
	leaq	-96(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC17(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 3 243 12
	testl	%eax, %eax
	jne	.L51
	.loc 3 244 27
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	.loc 3 244 24
	movq	-96(%rbp), %rax
	.loc 3 244 13
	cmpq	%rax, %rdx
	je	.L52
.L51:
.LBB9:
	.loc 3 245 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L52:
.LBE9:
	.loc 3 248 18
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gnu_dev_makedev@PLT
	movq	%rax, -32(%rbp)
	.loc 3 250 12
	cmpq	$-1, -32(%rbp)
	jne	.L53
.LBB10:
	.loc 3 251 11
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L53:
.LBE10:
	.loc 3 255 12
	cmpq	$0, -72(%rbp)
	je	.L54
	.loc 3 256 49
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 256 11
	movq	(%rax), %rcx
	movl	-120(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	defaultcon@PLT
.L54:
	.loc 3 258 13
	movl	-124(%rbp), %eax
	orl	-120(%rbp), %eax
	movl	%eax, %ecx
	.loc 3 258 24
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 258 13
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	rpl_mknod@PLT
	.loc 3 258 12
	testl	%eax, %eax
	je	.L62
.LBB11:
	.loc 3 259 11
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
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
	leaq	.LC51(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L46:
.LBE11:
.LBE7:
	.loc 3 264 10
	cmpq	$0, -72(%rbp)
	je	.L57
	.loc 3 265 47
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 265 9
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	defaultcon@PLT
.L57:
	.loc 3 266 23
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 266 11
	movq	(%rax), %rax
	movl	-124(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mkfifo@PLT
	.loc 3 266 10
	testl	%eax, %eax
	je	.L63
.LBB12:
	.loc 3 267 9
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
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
	leaq	.LC51(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L45:
.LBE12:
	.loc 3 271 60
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 271 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 3 271 20
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	.loc 3 271 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 272 7
	movl	$1, %edi
	call	usage
.L62:
	.loc 3 261 7
	nop
	jmp	.L56
.L63:
	.loc 3 268 7
	nop
.L56:
	.loc 3 275 6
	cmpq	$0, -88(%rbp)
	je	.L59
	.loc 3 275 37 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 275 25 discriminator 1
	movq	(%rax), %rax
	movl	-124(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lchmod@PLT
	.loc 3 275 22 discriminator 1
	testl	%eax, %eax
	je	.L59
.LBB13:
	.loc 3 276 5
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC53(%rip), %rdi
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
.L59:
.LBE13:
	.loc 3 279 10
	movl	$0, %eax
	.loc 3 280 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L61
	call	__stack_chk_fail@PLT
.L61:
	subq	$-128, %rsp
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
	.file 15 "/usr/include/stdint.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/signal.h"
	.file 18 "/usr/include/unistd.h"
	.file 19 "/usr/include/errno.h"
	.file 20 "src/version.h"
	.file 21 "./lib/exitfail.h"
	.file 22 "./lib/timespec.h"
	.file 23 "./lib/version-etc.h"
	.file 24 "./lib/progname.h"
	.file 25 "./lib/quotearg.h"
	.file 26 "./lib/error.h"
	.file 27 "./lib/quote.h"
	.file 28 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9ff
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF147
	.byte	0xc
	.long	.LASF148
	.long	.LASF149
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
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x8
	.long	0xc6
	.uleb128 0x9
	.long	.LASF66
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x259
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0xc0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0xc0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0xc0
	.byte	0x18
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0xc0
	.byte	0x20
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0xc0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0xc0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0xc0
	.byte	0x38
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0xc0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0xc0
	.byte	0x48
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0xc0
	.byte	0x50
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0xc0
	.byte	0x58
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x272
	.byte	0x60
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x278
	.byte	0x68
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x9c
	.byte	0x78
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x27e
	.byte	0x83
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x28e
	.byte	0x88
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xa8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x299
	.byte	0x98
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x2a4
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x278
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x2aa
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xd2
	.uleb128 0xb
	.long	.LASF150
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x26d
	.uleb128 0x7
	.byte	0x8
	.long	0xd2
	.uleb128 0xd
	.long	0xc6
	.long	0x28e
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x265
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x294
	.uleb128 0xc
	.long	.LASF47
	.uleb128 0x7
	.byte	0x8
	.long	0x29f
	.uleb128 0xd
	.long	0xc6
	.long	0x2ba
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xcd
	.uleb128 0x8
	.long	0x2ba
	.uleb128 0xf
	.long	.LASF48
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x2d1
	.uleb128 0x7
	.byte	0x8
	.long	0x259
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x2d1
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x2d1
	.uleb128 0xf
	.long	.LASF51
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2c0
	.long	0x306
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2fb
	.uleb128 0xf
	.long	.LASF52
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x306
	.uleb128 0xf
	.long	.LASF53
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF54
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x306
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF56
	.uleb128 0x2
	.long	.LASF57
	.byte	0xa
	.byte	0x3b
	.byte	0x11
	.long	0x84
	.uleb128 0x2
	.long	.LASF58
	.byte	0xa
	.byte	0x45
	.byte	0x12
	.long	0x90
	.uleb128 0x2
	.long	.LASF59
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0xb4
	.uleb128 0x11
	.long	.LASF60
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF61
	.uleb128 0xf
	.long	.LASF62
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0xc0
	.uleb128 0xf
	.long	.LASF63
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF64
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF65
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF67
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x3e7
	.uleb128 0xa
	.long	.LASF68
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x2ba
	.byte	0
	.uleb128 0xa
	.long	.LASF69
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF70
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x3ec
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
	.long	0x3a5
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x2
	.long	.LASF71
	.byte	0xf
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x7
	.byte	0x8
	.long	0xc0
	.uleb128 0xd
	.long	0xc0
	.long	0x414
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF72
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x404
	.uleb128 0xf
	.long	.LASF73
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF74
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF75
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x404
	.uleb128 0xf
	.long	.LASF76
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF77
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF78
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x469
	.uleb128 0xd
	.long	0x2c0
	.long	0x480
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x470
	.uleb128 0x11
	.long	.LASF79
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x480
	.uleb128 0x11
	.long	.LASF80
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x480
	.uleb128 0x11
	.long	.LASF81
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x3fe
	.uleb128 0x11
	.long	.LASF82
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x3fe
	.uleb128 0xf
	.long	.LASF83
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0xc0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0xc0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0x2ba
	.uleb128 0xf
	.long	.LASF86
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x501
	.uleb128 0x15
	.long	.LASF87
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x516
	.uleb128 0x16
	.long	.LASF88
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x534
	.uleb128 0x18
	.long	.LASF89
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF90
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xcd
	.long	0x53f
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x534
	.uleb128 0xf
	.long	.LASF91
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x53f
	.uleb128 0xf
	.long	.LASF92
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0x2ba
	.uleb128 0x19
	.long	.LASF111
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x5b1
	.uleb128 0x16
	.long	.LASF93
	.byte	0
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.uleb128 0x16
	.long	.LASF95
	.byte	0x2
	.uleb128 0x16
	.long	.LASF96
	.byte	0x3
	.uleb128 0x16
	.long	.LASF97
	.byte	0x4
	.uleb128 0x16
	.long	.LASF98
	.byte	0x5
	.uleb128 0x16
	.long	.LASF99
	.byte	0x6
	.uleb128 0x16
	.long	.LASF100
	.byte	0x7
	.uleb128 0x16
	.long	.LASF101
	.byte	0x8
	.uleb128 0x16
	.long	.LASF102
	.byte	0x9
	.uleb128 0x16
	.long	.LASF103
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x55c
	.uleb128 0x11
	.long	.LASF104
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x306
	.uleb128 0xd
	.long	0x5b1
	.long	0x5ce
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5c3
	.uleb128 0x11
	.long	.LASF105
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x5ce
	.uleb128 0xf
	.long	.LASF106
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x46a
	.uleb128 0xf
	.long	.LASF107
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF108
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF109
	.uleb128 0xf
	.long	.LASF110
	.byte	0x1b
	.byte	0x19
	.byte	0x1f
	.long	0x604
	.uleb128 0x19
	.long	.LASF112
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x19
	.byte	0x6
	.long	0x646
	.uleb128 0x16
	.long	.LASF113
	.byte	0
	.uleb128 0x16
	.long	.LASF114
	.byte	0x1
	.uleb128 0x16
	.long	.LASF115
	.byte	0x2
	.uleb128 0x16
	.long	.LASF116
	.byte	0x3
	.uleb128 0x16
	.long	.LASF117
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	0x3e7
	.long	0x656
	.uleb128 0xe
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x646
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x3
	.byte	0x27
	.byte	0x1c
	.long	0x656
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1b
	.long	.LASF137
	.byte	0x3
	.byte	0x5d
	.byte	0x1
	.long	0x65
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x88c
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x3
	.byte	0x5d
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x3
	.byte	0x5d
	.byte	0x18
	.long	0x3fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x3
	.byte	0x5f
	.byte	0xa
	.long	0x349
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x3
	.byte	0x60
	.byte	0xf
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x3
	.byte	0x61
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x3
	.byte	0x62
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x3
	.byte	0x63
	.byte	0xa
	.long	0x349
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1a
	.long	.LASF126
	.byte	0x3
	.byte	0x64
	.byte	0xf
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x3
	.byte	0x65
	.byte	0x1a
	.long	0x891
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.long	.LASF151
	.byte	0x3
	.byte	0xe7
	.byte	0x5
	.quad	.L48
	.uleb128 0x1e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x78b
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x3
	.byte	0x99
	.byte	0xe
	.long	0x349
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x3
	.byte	0x9a
	.byte	0x1b
	.long	0x89c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x1e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x7c2
	.uleb128 0x20
	.string	"ret"
	.byte	0x3
	.byte	0xc5
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0x1e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x869
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x3
	.byte	0xe9
	.byte	0x15
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x3
	.byte	0xea
	.byte	0x15
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x3
	.byte	0xeb
	.byte	0x13
	.long	0x3f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x3
	.byte	0xeb
	.byte	0x1c
	.long	0x3f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x3
	.byte	0xec
	.byte	0xf
	.long	0x33d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1f
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.byte	0
	.uleb128 0x1f
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1f
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.byte	0
	.uleb128 0xc
	.long	.LASF135
	.uleb128 0x7
	.byte	0x8
	.long	0x88c
	.uleb128 0xc
	.long	.LASF136
	.uleb128 0x7
	.byte	0x8
	.long	0x897
	.uleb128 0x21
	.long	.LASF138
	.byte	0x3
	.byte	0x31
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d0
	.uleb128 0x1c
	.long	.LASF139
	.byte	0x3
	.byte	0x31
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF152
	.byte	0x2
	.byte	0x27
	.byte	0x1
	.long	0x8ee
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF140
	.uleb128 0x23
	.long	.LASF153
	.byte	0x2
	.byte	0x20
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x927
	.uleb128 0x1c
	.long	.LASF141
	.byte	0x2
	.byte	0x20
	.byte	0x27
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF154
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x9cc
	.uleb128 0x25
	.long	.LASF142
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF143
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x982
	.uleb128 0x27
	.long	.LASF142
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2ba
	.byte	0
	.uleb128 0x27
	.long	.LASF144
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2ba
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x957
	.uleb128 0x28
	.long	.LASF143
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x9dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.long	.LASF144
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.long	.LASF145
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x9e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.long	.LASF146
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x982
	.long	0x9dc
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x9cc
	.uleb128 0x7
	.byte	0x8
	.long	0x982
	.uleb128 0x29
	.long	.LASF155
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
	.uleb128 0x1e
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
.LASF86:
	.string	"exit_failure"
.LASF11:
	.string	"__off_t"
.LASF16:
	.string	"_IO_read_ptr"
.LASF101:
	.string	"locale_quoting_style"
.LASF28:
	.string	"_chain"
.LASF90:
	.string	"GETOPT_VERSION_CHAR"
.LASF120:
	.string	"longopts"
.LASF111:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF88:
	.string	"LOG10_TIMESPEC_HZ"
.LASF153:
	.string	"smack_set_label_for_self"
.LASF34:
	.string	"_shortbuf"
.LASF94:
	.string	"shell_quoting_style"
.LASF89:
	.string	"GETOPT_HELP_CHAR"
.LASF22:
	.string	"_IO_buf_base"
.LASF129:
	.string	"change"
.LASF61:
	.string	"long long unsigned int"
.LASF114:
	.string	"LONGINT_OVERFLOW"
.LASF49:
	.string	"stdout"
.LASF115:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF74:
	.string	"__timezone"
.LASF84:
	.string	"program_invocation_short_name"
.LASF55:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF105:
	.string	"quoting_style_vals"
.LASF71:
	.string	"uintmax_t"
.LASF142:
	.string	"program"
.LASF100:
	.string	"escape_quoting_style"
.LASF10:
	.string	"__mode_t"
.LASF93:
	.string	"literal_quoting_style"
.LASF29:
	.string	"_fileno"
.LASF17:
	.string	"_IO_read_end"
.LASF80:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF60:
	.string	"_gl_cxxalias_dummy"
.LASF15:
	.string	"_flags"
.LASF38:
	.string	"_wide_data"
.LASF23:
	.string	"_IO_buf_end"
.LASF32:
	.string	"_cur_column"
.LASF126:
	.string	"scontext"
.LASF98:
	.string	"c_quoting_style"
.LASF46:
	.string	"_IO_codecvt"
.LASF54:
	.string	"_sys_errlist"
.LASF83:
	.string	"program_invocation_name"
.LASF125:
	.string	"node_type"
.LASF36:
	.string	"_offset"
.LASF3:
	.string	"short unsigned int"
.LASF130:
	.string	"s_major"
.LASF87:
	.string	"TIMESPEC_HZ"
.LASF97:
	.string	"shell_escape_always_quoting_style"
.LASF77:
	.string	"timezone"
.LASF122:
	.string	"specified_mode"
.LASF128:
	.string	"umask_value"
.LASF9:
	.string	"__dev_t"
.LASF92:
	.string	"program_name"
.LASF45:
	.string	"_IO_marker"
.LASF48:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF40:
	.string	"_freeres_buf"
.LASF135:
	.string	"selabel_handle"
.LASF0:
	.string	"long unsigned int"
.LASF20:
	.string	"_IO_write_ptr"
.LASF68:
	.string	"name"
.LASF51:
	.string	"sys_nerr"
.LASF143:
	.string	"infomap"
.LASF147:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF103:
	.string	"custom_quoting_style"
.LASF134:
	.string	"device"
.LASF108:
	.string	"error_one_per_line"
.LASF85:
	.string	"Version"
.LASF151:
	.string	"block_or_character"
.LASF24:
	.string	"_IO_save_base"
.LASF82:
	.string	"environ"
.LASF141:
	.string	"label"
.LASF35:
	.string	"_lock"
.LASF30:
	.string	"_flags2"
.LASF42:
	.string	"_mode"
.LASF112:
	.string	"strtol_error"
.LASF124:
	.string	"expected_operands"
.LASF123:
	.string	"optc"
.LASF91:
	.string	"version_etc_copyright"
.LASF37:
	.string	"_codecvt"
.LASF62:
	.string	"optarg"
.LASF136:
	.string	"mode_change"
.LASF145:
	.string	"map_prog"
.LASF78:
	.string	"getdate_err"
.LASF63:
	.string	"optind"
.LASF21:
	.string	"_IO_write_end"
.LASF127:
	.string	"set_security_context"
.LASF150:
	.string	"_IO_lock_t"
.LASF66:
	.string	"_IO_FILE"
.LASF106:
	.string	"error_print_progname"
.LASF57:
	.string	"dev_t"
.LASF81:
	.string	"__environ"
.LASF59:
	.string	"time_t"
.LASF31:
	.string	"_old_offset"
.LASF133:
	.string	"i_minor"
.LASF146:
	.string	"lc_messages"
.LASF27:
	.string	"_markers"
.LASF121:
	.string	"newmode"
.LASF99:
	.string	"c_maybe_quoting_style"
.LASF140:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF144:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF131:
	.string	"s_minor"
.LASF67:
	.string	"option"
.LASF110:
	.string	"quote_quoting_options"
.LASF113:
	.string	"LONGINT_OK"
.LASF70:
	.string	"flag"
.LASF53:
	.string	"_sys_nerr"
.LASF33:
	.string	"_vtable_offset"
.LASF75:
	.string	"tzname"
.LASF44:
	.string	"FILE"
.LASF96:
	.string	"shell_escape_quoting_style"
.LASF104:
	.string	"quoting_style_args"
.LASF65:
	.string	"optopt"
.LASF76:
	.string	"daylight"
.LASF56:
	.string	"long double"
.LASF14:
	.string	"char"
.LASF95:
	.string	"shell_always_quoting_style"
.LASF102:
	.string	"clocale_quoting_style"
.LASF64:
	.string	"opterr"
.LASF148:
	.string	"src/mknod.c"
.LASF8:
	.string	"__uintmax_t"
.LASF12:
	.string	"__off64_t"
.LASF109:
	.string	"quoting_options"
.LASF18:
	.string	"_IO_read_base"
.LASF26:
	.string	"_IO_save_end"
.LASF79:
	.string	"_sys_siglist"
.LASF132:
	.string	"i_major"
.LASF69:
	.string	"has_arg"
.LASF138:
	.string	"usage"
.LASF41:
	.string	"__pad5"
.LASF13:
	.string	"__time_t"
.LASF43:
	.string	"_unused2"
.LASF50:
	.string	"stderr"
.LASF119:
	.string	"argv"
.LASF73:
	.string	"__daylight"
.LASF152:
	.string	"is_smack_enabled"
.LASF139:
	.string	"status"
.LASF149:
	.string	"/root/coreutils"
.LASF58:
	.string	"mode_t"
.LASF116:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF25:
	.string	"_IO_backup_base"
.LASF107:
	.string	"error_message_count"
.LASF52:
	.string	"sys_errlist"
.LASF118:
	.string	"argc"
.LASF39:
	.string	"_freeres_list"
.LASF47:
	.string	"_IO_wide_data"
.LASF117:
	.string	"LONGINT_INVALID"
.LASF155:
	.string	"emit_mandatory_arg_note"
.LASF72:
	.string	"__tzname"
.LASF137:
	.string	"main"
.LASF19:
	.string	"_IO_write_base"
.LASF154:
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
