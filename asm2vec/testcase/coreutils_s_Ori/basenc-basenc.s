	.file	"basenc.c"
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
	.section	.rodata
.LC20:
	.string	"decode"
.LC21:
	.string	"wrap"
.LC22:
	.string	"ignore-garbage"
.LC23:
	.string	"base64"
.LC24:
	.string	"base64url"
.LC25:
	.string	"base32"
.LC26:
	.string	"base32hex"
.LC27:
	.string	"base16"
.LC28:
	.string	"base2msbf"
.LC29:
	.string	"base2lsbf"
.LC30:
	.string	"z85"
.LC31:
	.string	"help"
.LC32:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 448
long_options:
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	133
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	134
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	135
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC32
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
.LC33:
	.string	"Try '%s --help' for more information.\n"
.LC34:
	.string	"Usage: %s [OPTION]... [FILE]\n"
	.align 8
.LC35:
	.string	"basenc encode or decode FILE, or standard input, to standard output.\n"
	.align 8
.LC36:
	.string	"      --base64          same as 'base64' program (RFC4648 section 4)\n"
	.align 8
.LC37:
	.string	"      --base64url       file- and url-safe base64 (RFC4648 section 5)\n"
	.align 8
.LC38:
	.string	"      --base32          same as 'base32' program (RFC4648 section 6)\n"
	.align 8
.LC39:
	.string	"      --base32hex       extended hex alphabet base32 (RFC4648 section 7)\n"
	.align 8
.LC40:
	.string	"      --base16          hex encoding (RFC4648 section 8)\n"
	.align 8
.LC41:
	.string	"      --base2msbf       bit string with most significant bit (msb) first\n"
	.align 8
.LC42:
	.string	"      --base2lsbf       bit string with least significant bit (lsb) first\n"
	.align 8
.LC43:
	.string	"  -d, --decode          decode data\n  -i, --ignore-garbage  when decoding, ignore non-alphabet characters\n  -w, --wrap=COLS       wrap encoded lines after COLS character (default 76).\n                          Use 0 to disable line wrapping\n"
	.align 8
.LC44:
	.string	"      --z85             ascii85-like encoding (ZeroMQ spec:32/Z85);\n                        when encoding, input length must be a multiple of 4;\n                        when decoding, input length must be a multiple of 5\n"
	.align 8
.LC45:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC46:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC47:
	.string	"\nWhen decoding, the input may contain newlines in addition to the bytes of\nthe formal alphabet.  Use --ignore-garbage to attempt to recover\nfrom any other non-alphabet bytes in the encoded stream.\n"
.LC48:
	.string	"basenc"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB65:
	.file 2 "src/basenc.c"
	.loc 2 96 1 is_stmt 1
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
	.loc 2 97 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 98 5
	movq	program_name(%rip), %rbx
	leaq	.LC33(%rip), %rdi
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
	.loc 2 101 7
	movq	program_name(%rip), %rbx
	.loc 2 101 15
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	.loc 2 101 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 106 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 115 7
	call	emit_stdin_note
	.loc 2 116 7
	call	emit_mandatory_arg_note
	.loc 2 118 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 121 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 124 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 127 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 130 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 133 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 136 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 140 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 147 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 153 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 154 7
	movq	stdout(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 156 7
	movq	stdout(%rip), %rbx
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 171 7
	leaq	.LC48(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 174 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE65:
	.size	usage, .-usage
	.local	base_length
	.comm	base_length,8,8
	.local	isbase
	.comm	isbase,8,8
	.local	base_encode
	.comm	base_encode,8,8
	.local	base_decode_ctx_init
	.comm	base_decode_ctx_init,8,8
	.local	base_decode_ctx
	.comm	base_decode_ctx,8,8
	.type	base64_length_wrapper, @function
base64_length_wrapper:
.LFB66:
	.loc 2 266 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 267 10
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	.loc 2 268 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	base64_length_wrapper, .-base64_length_wrapper
	.type	base64_decode_ctx_init_wrapper, @function
base64_decode_ctx_init_wrapper:
.LFB67:
	.loc 2 272 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 273 3
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	base64_decode_ctx_init@PLT
	.loc 2 274 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	base64_decode_ctx_init_wrapper, .-base64_decode_ctx_init_wrapper
	.type	base64_decode_ctx_wrapper, @function
base64_decode_ctx_wrapper:
.LFB68:
	.loc 2 280 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	.loc 2 281 12
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	base64_decode_ctx@PLT
	movb	%al, -1(%rbp)
	.loc 2 282 27
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 2 282 10
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 283 10
	movzbl	-1(%rbp), %eax
	.loc 2 284 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	base64_decode_ctx_wrapper, .-base64_decode_ctx_wrapper
	.type	init_inbuf, @function
init_inbuf:
.LFB69:
	.loc 2 288 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 289 16
	movq	-8(%rbp), %rax
	movq	$5120, 24(%rax)
	.loc 2 290 16
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	xcharalloc@PLT
	movq	%rax, %rdx
	.loc 2 290 14
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 291 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	init_inbuf, .-init_inbuf
	.type	prepare_inbuf, @function
prepare_inbuf:
.LFB70:
	.loc 2 295 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 296 10
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 296 6
	cmpq	%rax, -16(%rbp)
	jbe	.L23
	.loc 2 298 28
	movq	-16(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	.loc 2 298 20
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 299 20
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	.loc 2 299 34
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 299 20
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xnrealloc@PLT
	.loc 2 299 18
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L23:
	.loc 2 301 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	prepare_inbuf, .-prepare_inbuf
	.type	base64url_encode, @function
base64url_encode:
.LFB71:
	.loc 2 307 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 2 308 3
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	base64_encode@PLT
	.loc 2 310 9
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 311 9
	jmp	.L25
.L28:
	.loc 2 313 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 313 10
	cmpb	$43, %al
	jne	.L26
	.loc 2 314 12
	movq	-8(%rbp), %rax
	movb	$45, (%rax)
	jmp	.L27
.L26:
	.loc 2 315 16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 315 15
	cmpb	$47, %al
	jne	.L27
	.loc 2 316 12
	movq	-8(%rbp), %rax
	movb	$95, (%rax)
.L27:
	.loc 2 317 7
	addq	$1, -8(%rbp)
.L25:
	.loc 2 311 16
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 311 9
	testq	%rax, %rax
	jne	.L28
	.loc 2 319 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	base64url_encode, .-base64url_encode
	.type	isbase64url, @function
isbase64url:
.LFB72:
	.loc 2 323 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 325 11
	cmpb	$45, -4(%rbp)
	je	.L30
	.loc 2 324 21
	cmpb	$95, -4(%rbp)
	je	.L30
	.loc 2 325 11
	cmpb	$43, -4(%rbp)
	je	.L31
	.loc 2 325 25 discriminator 2
	cmpb	$47, -4(%rbp)
	je	.L31
	.loc 2 325 41 discriminator 4
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	isbase64@PLT
	.loc 2 325 38 discriminator 4
	testb	%al, %al
	je	.L31
.L30:
	.loc 2 325 11 discriminator 6
	movl	$1, %eax
	jmp	.L32
.L31:
	.loc 2 325 11 is_stmt 0 discriminator 7
	movl	$0, %eax
.L32:
	.loc 2 325 11 discriminator 9
	andl	$1, %eax
	.loc 2 326 1 is_stmt 1 discriminator 9
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	isbase64url, .-isbase64url
	.type	base64url_decode_ctx_init_wrapper, @function
base64url_decode_ctx_init_wrapper:
.LFB73:
	.loc 2 330 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 331 3
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	base64_decode_ctx_init@PLT
	.loc 2 332 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_inbuf
	.loc 2 333 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	base64url_decode_ctx_init_wrapper, .-base64url_decode_ctx_init_wrapper
	.type	base64url_decode_ctx_wrapper, @function
base64url_decode_ctx_wrapper:
.LFB74:
	.loc 2 340 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	.loc 2 341 3
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prepare_inbuf
	.loc 2 342 14
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 342 3
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 345 10
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 346 9
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 347 9
	jmp	.L36
.L42:
	.loc 2 349 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 349 10
	cmpb	$43, %al
	je	.L37
	.loc 2 349 24 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 349 21 discriminator 1
	cmpb	$47, %al
	jne	.L38
.L37:
	.loc 2 351 19
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 352 18
	movl	$0, %eax
	jmp	.L39
.L38:
	.loc 2 354 16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 354 15
	cmpb	$45, %al
	jne	.L40
	.loc 2 355 12
	movq	-8(%rbp), %rax
	movb	$43, (%rax)
	jmp	.L41
.L40:
	.loc 2 356 16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 356 15
	cmpb	$95, %al
	jne	.L41
	.loc 2 357 12
	movq	-8(%rbp), %rax
	movb	$47, (%rax)
.L41:
	.loc 2 358 7
	addq	$1, -8(%rbp)
.L36:
	.loc 2 347 11
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 347 9
	testq	%rax, %rax
	jne	.L42
	.loc 2 361 52
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 361 12
	movq	-40(%rbp), %rdx
	leaq	4(%rdx), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	base64_decode_ctx@PLT
	movb	%al, -17(%rbp)
	.loc 2 363 27
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 2 363 10
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 365 10
	movzbl	-17(%rbp), %eax
.L39:
	.loc 2 366 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	base64url_decode_ctx_wrapper, .-base64url_decode_ctx_wrapper
	.type	base32_length_wrapper, @function
base32_length_wrapper:
.LFB75:
	.loc 2 372 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 373 10
	movl	-4(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	%edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	.loc 2 374 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	base32_length_wrapper, .-base32_length_wrapper
	.type	base32_decode_ctx_init_wrapper, @function
base32_decode_ctx_init_wrapper:
.LFB76:
	.loc 2 378 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 379 3
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	base32_decode_ctx_init@PLT
	.loc 2 380 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	base32_decode_ctx_init_wrapper, .-base32_decode_ctx_init_wrapper
	.type	base32_decode_ctx_wrapper, @function
base32_decode_ctx_wrapper:
.LFB77:
	.loc 2 386 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	.loc 2 387 12
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	base32_decode_ctx@PLT
	movb	%al, -1(%rbp)
	.loc 2 388 27
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 2 388 10
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 389 10
	movzbl	-1(%rbp), %eax
	.loc 2 390 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	base32_decode_ctx_wrapper, .-base32_decode_ctx_wrapper
	.section	.rodata
	.align 32
	.type	base32_norm_to_hex, @object
	.size	base32_norm_to_hex, 41
base32_norm_to_hex:
	.ascii	"QRSTUV89:;<=>?@0123456789ABCDEFGHIJKLMNOP"
	.align 32
	.type	base32_hex_to_norm, @object
	.size	base32_hex_to_norm, 41
base32_hex_to_norm:
	.string	"ABCDEFGHIJ:;<=>?@KLMNOPQRSTUVWXYZ234567"
	.zero	1
	.text
	.type	isbase32hex, @function
isbase32hex:
.LFB78:
	.loc 2 436 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 437 35
	cmpb	$47, -4(%rbp)
	jle	.L49
	.loc 2 437 21 discriminator 1
	cmpb	$57, -4(%rbp)
	jle	.L50
.L49:
	.loc 2 437 35 discriminator 4
	cmpb	$64, -4(%rbp)
	jle	.L51
	.loc 2 437 49 discriminator 5
	cmpb	$86, -4(%rbp)
	jg	.L51
.L50:
	.loc 2 437 35 discriminator 7
	movl	$1, %eax
	jmp	.L52
.L51:
	.loc 2 437 35 is_stmt 0 discriminator 8
	movl	$0, %eax
.L52:
	.loc 2 437 35 discriminator 10
	andl	$1, %eax
	.loc 2 438 1 is_stmt 1 discriminator 10
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	isbase32hex, .-isbase32hex
	.section	.rodata
.LC49:
	.string	"src/basenc.c"
.LC50:
	.string	"0x32 <= *p && *p <= 0x5a"
	.text
	.type	base32hex_encode, @function
base32hex_encode:
.LFB79:
	.loc 2 444 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 2 445 3
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	base32_encode@PLT
.LBB2:
	.loc 2 447 14
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 447 3
	jmp	.L55
.L58:
	.loc 2 449 7
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$49, %al
	jle	.L56
	.loc 2 449 7 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$90, %al
	jle	.L59
.L56:
	.loc 2 449 7 discriminator 3
	leaq	__PRETTY_FUNCTION__.7217(%rip), %rcx
	movl	$449, %edx
	leaq	.LC49(%rip), %rsi
	leaq	.LC50(%rip), %rdi
	call	__assert_fail@PLT
.L59:
	.loc 2 450 31 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 450 34 discriminator 2
	subl	$50, %eax
	.loc 2 450 30 discriminator 2
	cltq
	leaq	base32_norm_to_hex(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	.loc 2 450 10 discriminator 2
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 447 34 discriminator 2
	addq	$1, -8(%rbp)
.L55:
	.loc 2 447 29 discriminator 1
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 447 3 discriminator 1
	testq	%rax, %rax
	jne	.L58
.LBE2:
	.loc 2 452 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	base32hex_encode, .-base32hex_encode
	.type	base32hex_decode_ctx_init_wrapper, @function
base32hex_decode_ctx_init_wrapper:
.LFB80:
	.loc 2 457 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 458 3
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	base32_decode_ctx_init@PLT
	.loc 2 459 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_inbuf
	.loc 2 460 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	base32hex_decode_ctx_init_wrapper, .-base32hex_decode_ctx_init_wrapper
	.type	base32hex_decode_ctx_wrapper, @function
base32hex_decode_ctx_wrapper:
.LFB81:
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
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	.loc 2 468 3
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prepare_inbuf
	.loc 2 470 10
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 471 9
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 472 9
	jmp	.L62
.L65:
	.loc 2 474 24
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 474 11
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isbase32hex
	.loc 2 474 10
	testb	%al, %al
	je	.L63
	.loc 2 475 39
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 475 34
	movsbl	%al, %eax
	.loc 2 475 43
	subl	$48, %eax
	.loc 2 475 32
	cltq
	leaq	base32_hex_to_norm(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	.loc 2 475 12
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L64
.L63:
	.loc 2 477 14
	movq	-48(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 2 477 12
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.L64:
	.loc 2 478 7
	addq	$1, -8(%rbp)
	.loc 2 479 7
	addq	$1, -48(%rbp)
.L62:
	.loc 2 472 11
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 472 9
	testq	%rax, %rax
	jne	.L65
	.loc 2 482 52
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 482 12
	movq	-40(%rbp), %rdx
	leaq	4(%rdx), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	base32_decode_ctx@PLT
	movb	%al, -17(%rbp)
	.loc 2 484 27
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 2 484 10
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 486 10
	movzbl	-17(%rbp), %eax
	.loc 2 487 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	base32hex_decode_ctx_wrapper, .-base32hex_decode_ctx_wrapper
	.type	isbase16, @function
isbase16:
.LFB82:
	.loc 2 492 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 493 35
	cmpb	$47, -4(%rbp)
	jle	.L68
	.loc 2 493 21 discriminator 1
	cmpb	$57, -4(%rbp)
	jle	.L69
.L68:
	.loc 2 493 35 discriminator 4
	cmpb	$64, -4(%rbp)
	jle	.L70
	.loc 2 493 49 discriminator 5
	cmpb	$70, -4(%rbp)
	jg	.L70
.L69:
	.loc 2 493 35 discriminator 7
	movl	$1, %eax
	jmp	.L71
.L70:
	.loc 2 493 35 is_stmt 0 discriminator 8
	movl	$0, %eax
.L71:
	.loc 2 493 35 discriminator 10
	andl	$1, %eax
	.loc 2 494 1 is_stmt 1 discriminator 10
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	isbase16, .-isbase16
	.type	base16_length, @function
base16_length:
.LFB83:
	.loc 2 498 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 499 14
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	.loc 2 500 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	base16_length, .-base16_length
	.section	.rodata
	.align 16
	.type	base16, @object
	.size	base16, 16
base16:
	.ascii	"0123456789ABCDEF"
	.text
	.type	base16_encode, @function
base16_encode:
.LFB84:
	.loc 2 507 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 2 508 9
	jmp	.L76
.L77:
.LBB3:
	.loc 2 510 25
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 510 21
	movb	%al, -1(%rbp)
	.loc 2 511 25
	movzbl	-1(%rbp), %eax
	shrb	$4, %al
	movzbl	%al, %ecx
	.loc 2 511 11
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 511 22
	movslq	%ecx, %rdx
	leaq	base16(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	.loc 2 511 14
	movb	%dl, (%rax)
	.loc 2 512 25
	movzbl	-1(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	.loc 2 512 11
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 512 22
	movslq	%ecx, %rdx
	leaq	base16(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	.loc 2 512 14
	movb	%dl, (%rax)
	.loc 2 513 7
	addq	$1, -24(%rbp)
.L76:
.LBE3:
	.loc 2 508 15
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 508 9
	testq	%rax, %rax
	jne	.L77
	.loc 2 515 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	base16_encode, .-base16_encode
	.type	base16_decode_ctx_init, @function
base16_decode_ctx_init:
.LFB85:
	.loc 2 520 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 521 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_inbuf
	.loc 2 522 31
	movq	-8(%rbp), %rax
	movb	$0, 5(%rax)
	.loc 2 523 10
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	.loc 2 524 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	base16_decode_ctx_init, .-base16_decode_ctx_init
	.type	base16_decode_ctx, @function
base16_decode_ctx:
.LFB86:
	.loc 2 531 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	.loc 2 532 8
	movb	$1, -5(%rbp)
	.loc 2 535 11
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 540 6
	cmpq	$0, -40(%rbp)
	jne	.L82
	.loc 2 541 28
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	movzbl	%al, %eax
	.loc 2 541 5
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 541 12
	andl	$1, %eax
	jmp	.L81
.L89:
	.loc 2 545 10
	cmpb	$0, -5(%rbp)
	je	.L83
	.loc 2 545 27 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 545 24 discriminator 1
	cmpb	$10, %al
	jne	.L83
	.loc 2 547 11
	addq	$1, -32(%rbp)
	.loc 2 548 11
	jmp	.L82
.L83:
	.loc 2 551 11
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 551 10
	cmpb	$64, %al
	jle	.L84
	.loc 2 551 25 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 551 22 discriminator 1
	cmpb	$70, %al
	jg	.L84
	.loc 2 552 16
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 552 23
	subl	$55, %eax
	.loc 2 552 13
	movl	%eax, -4(%rbp)
	jmp	.L85
.L84:
	.loc 2 553 16
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 553 15
	cmpb	$47, %al
	jle	.L86
	.loc 2 553 30 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 553 27 discriminator 1
	cmpb	$57, %al
	jg	.L86
	.loc 2 554 16
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 554 19
	subl	$48, %eax
	.loc 2 554 13
	movl	%eax, -4(%rbp)
	jmp	.L85
.L86:
	.loc 2 556 16
	movl	$0, %eax
	jmp	.L81
.L85:
	.loc 2 558 7
	addq	$1, -32(%rbp)
	.loc 2 560 26
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	.loc 2 560 10
	testb	%al, %al
	je	.L87
	.loc 2 563 36
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %eax
	.loc 2 563 44
	sall	$4, %eax
	.loc 2 563 50
	movl	-4(%rbp), %edx
	leal	(%rax,%rdx), %ecx
	.loc 2 563 15
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 563 50
	movl	%ecx, %edx
	.loc 2 563 18
	movb	%dl, (%rax)
	.loc 2 564 14
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 564 11
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L88
.L87:
	.loc 2 569 34
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 4(%rax)
.L88:
	.loc 2 571 53
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	movzbl	%al, %eax
	.loc 2 571 7
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 571 37
	andl	$1, %eax
	.loc 2 571 35
	movq	-24(%rbp), %rdx
	movb	%al, 5(%rdx)
.L82:
	.loc 2 543 15
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 543 9
	testq	%rax, %rax
	jne	.L89
	.loc 2 573 10
	movl	$1, %eax
.L81:
	.loc 2 574 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	base16_decode_ctx, .-base16_decode_ctx
	.type	z85_length, @function
z85_length:
.LFB87:
	.loc 2 581 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 2 583 20
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	.loc 2 583 7
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -4(%rbp)
	.loc 2 584 10
	movl	-4(%rbp), %eax
	.loc 2 585 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	z85_length, .-z85_length
	.section	.rodata
.LC51:
	.string	".-:+=^!/*?&<>()[]{}@%$#"
	.text
	.type	isz85, @function
isz85:
.LFB88:
	.loc 2 589 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 590 10
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	c_isalnum@PLT
	.loc 2 590 25
	testb	%al, %al
	jne	.L93
	.loc 2 590 29 discriminator 2
	movsbl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC51(%rip), %rdi
	call	strchr@PLT
	.loc 2 590 25 discriminator 2
	testq	%rax, %rax
	je	.L94
.L93:
	.loc 2 590 25 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L95
.L94:
	.loc 2 590 25 discriminator 4
	movl	$0, %eax
.L95:
	.loc 2 590 25 discriminator 6
	andl	$1, %eax
	.loc 2 591 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	isz85, .-isz85
	.section	.rodata
	.align 32
	.type	z85_encoding, @object
	.size	z85_encoding, 85
z85_encoding:
	.ascii	"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWX"
	.ascii	"YZ.-:+=^!/*?&<>()[]{}@%$#"
	.align 8
.LC52:
	.string	"invalid input (length must be multiple of 4 characters)"
	.text
	.type	z85_encode, @function
z85_encode:
.LFB89:
	.loc 2 602 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 2 602 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 603 7
	movl	$0, -36(%rbp)
	.loc 2 606 10
	movq	$0, -24(%rbp)
.L105:
	.loc 2 610 10
	cmpq	$0, -64(%rbp)
	jne	.L98
.LBB4:
	.loc 2 613 14
	cmpl	$0, -36(%rbp)
	je	.L108
	.loc 2 617 11
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L98:
.LBE4:
	.loc 2 622 26
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 622 23
	movzbl	(%rax), %ecx
	.loc 2 622 17
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	.loc 2 622 23
	movl	%ecx, %edx
	.loc 2 622 21
	cltq
	movb	%dl, -12(%rbp,%rax)
	.loc 2 623 11
	subq	$1, -64(%rbp)
	.loc 2 627 10
	cmpl	$4, -36(%rbp)
	jne	.L105
	.loc 2 629 33
	movzbl	-12(%rbp), %eax
	.loc 2 629 18
	movzbl	%al, %eax
	.loc 2 629 37
	sall	$24, %eax
	movl	%eax, %edx
	.loc 2 630 35
	movzbl	-11(%rbp), %eax
	.loc 2 630 20
	movzbl	%al, %eax
	.loc 2 630 39
	sall	$16, %eax
	.loc 2 630 17
	addl	%eax, %edx
	.loc 2 631 35
	movzbl	-10(%rbp), %eax
	.loc 2 631 20
	movzbl	%al, %eax
	.loc 2 631 39
	sall	$8, %eax
	.loc 2 631 17
	addl	%eax, %edx
	.loc 2 632 23
	movzbl	-9(%rbp), %eax
	movzbl	%al, %eax
	.loc 2 629 15
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
.LBB5:
	.loc 2 634 20
	movl	$4, -28(%rbp)
	.loc 2 634 11
	jmp	.L102
.L104:
.LBB6:
	.loc 2 636 36
	movl	-32(%rbp), %edx
	movl	%edx, %ecx
	movl	$3233857729, %eax
	imulq	%rcx, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$85, %eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 636 29
	movb	%al, -37(%rbp)
	.loc 2 637 19
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	movl	$3233857729, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	movl	%eax, -32(%rbp)
	.loc 2 643 26
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 643 18
	cmpq	%rax, -80(%rbp)
	jbe	.L103
	.loc 2 644 38
	movzbl	-37(%rbp), %eax
	.loc 2 644 20
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 644 38
	cltq
	leaq	z85_encoding(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	.loc 2 644 24
	movb	%al, (%rdx)
.L103:
.LBE6:
	.loc 2 634 33 discriminator 2
	subl	$1, -28(%rbp)
.L102:
	.loc 2 634 11 discriminator 1
	cmpl	$0, -28(%rbp)
	jns	.L104
.LBE5:
	.loc 2 646 15
	addq	$5, -72(%rbp)
	.loc 2 647 18
	addq	$5, -24(%rbp)
	.loc 2 648 13
	movl	$0, -36(%rbp)
	.loc 2 610 10
	jmp	.L105
.L108:
.LBB7:
	.loc 2 614 13
	nop
.LBE7:
	.loc 2 651 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L106
	call	__stack_chk_fail@PLT
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	z85_encode, .-z85_encode
	.type	z85_decode_ctx_init, @function
z85_decode_ctx_init:
.LFB90:
	.loc 2 655 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 656 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_inbuf
	.loc 2 657 18
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	.loc 2 658 10
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	.loc 2 659 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	z85_decode_ctx_init, .-z85_decode_ctx_init
	.data
	.align 32
	.type	z85_decoding, @object
	.size	z85_decoding, 93
z85_decoding:
	.string	"D\377TSRH\377KLFA\377?>E"
	.ascii	"\001\002\003\004\005\006\007\b\t@\377IBJGQ$%&'()*+,-./012345"
	.ascii	"6789:;<=M\377NC\377\377\n\013\f\r\016\017\020\021\022\023\024"
	.ascii	"\025\026\027\030\031\032\033\034\035\036\037 !\"#O\377P"
	.text
	.type	z85_decode_ctx, @function
z85_decode_ctx:
.LFB91:
	.loc 2 702 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	.loc 2 703 8
	movb	$1, -6(%rbp)
	.loc 2 705 11
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 710 6
	cmpq	$0, -40(%rbp)
	jne	.L114
	.loc 2 712 23
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 712 10
	testl	%eax, %eax
	jle	.L112
	.loc 2 716 18
	movl	$0, %eax
	jmp	.L113
.L112:
	.loc 2 718 14
	movl	$1, %eax
	jmp	.L113
.L121:
.LBB8:
	.loc 2 723 10
	cmpb	$0, -6(%rbp)
	je	.L115
	.loc 2 723 27 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 723 24 discriminator 1
	cmpb	$10, %al
	jne	.L115
	.loc 2 725 11
	addq	$1, -32(%rbp)
	.loc 2 726 11
	jmp	.L114
.L115:
	.loc 2 730 25
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 730 21
	movb	%al, -5(%rbp)
	.loc 2 732 10
	cmpb	$32, -5(%rbp)
	jbe	.L116
	.loc 2 732 19 discriminator 1
	cmpb	$125, -5(%rbp)
	ja	.L116
	.loc 2 734 29
	movzbl	-5(%rbp), %eax
	subl	$33, %eax
	.loc 2 734 13
	cltq
	leaq	z85_decoding(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movb	%al, -5(%rbp)
	.loc 2 735 14
	cmpb	$-1, -5(%rbp)
	jne	.L118
	.loc 2 736 20
	movl	$0, %eax
	jmp	.L113
.L116:
	.loc 2 739 16
	movl	$0, %eax
	jmp	.L113
.L118:
	.loc 2 741 7
	addq	$1, -32(%rbp)
	.loc 2 743 39
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 743 41
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	.loc 2 743 45
	movq	-24(%rbp), %rdx
	cltq
	movzbl	-5(%rbp), %ecx
	movb	%cl, 8(%rdx,%rax)
	.loc 2 744 23
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 744 10
	cmpl	$5, %eax
	jne	.L114
.LBB9:
	.loc 2 747 30
	movq	-24(%rbp), %rax
	movzbl	9(%rax), %eax
	movzbl	%al, %eax
	imull	$614125, %eax, %edx
	movq	-24(%rbp), %rax
	movzbl	10(%rax), %eax
	movzbl	%al, %eax
	imull	$7225, %eax, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	11(%rax), %eax
	movzbl	%al, %eax
	imull	$85, %eax, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	.loc 2 747 24
	movl	%eax, -4(%rbp)
	.loc 2 760 34
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	.loc 2 760 14
	cmpb	$84, %al
	je	.L119
	.loc 2 760 66 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	.loc 2 760 44 discriminator 1
	cmpb	$83, %al
	je	.L119
	.loc 2 761 38
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	.loc 2 761 15
	cmpb	$82, %al
	jne	.L120
	.loc 2 762 19
	cmpl	$14516045, -4(%rbp)
	jbe	.L120
.L119:
	.loc 2 763 20
	movl	$0, %eax
	jmp	.L113
.L120:
	.loc 2 766 18
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	imull	$52200625, %eax, %eax
	.loc 2 766 15
	addl	%eax, -4(%rbp)
	.loc 2 768 32
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	.loc 2 768 15
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 768 18
	movl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 2 769 25
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	.loc 2 769 15
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 769 18
	movl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 2 770 25
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	.loc 2 770 15
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 770 18
	movl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 2 771 15
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 771 18
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 773 19
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 775 26
	movq	-24(%rbp), %rax
	movl	$0, 4(%rax)
.L114:
.LBE9:
.LBE8:
	.loc 2 721 15
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 721 9
	testq	%rax, %rax
	jne	.L121
	.loc 2 778 24
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	.loc 2 778 10
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 779 10
	movl	$1, %eax
.L113:
	.loc 2 780 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	z85_decode_ctx, .-z85_decode_ctx
	.type	isbase2, @function
isbase2:
.LFB92:
	.loc 2 785 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 786 20
	cmpb	$48, -4(%rbp)
	je	.L123
	.loc 2 786 20 is_stmt 0 discriminator 2
	cmpb	$49, -4(%rbp)
	jne	.L124
.L123:
	.loc 2 786 20 discriminator 3
	movl	$1, %eax
	jmp	.L125
.L124:
	.loc 2 786 20 discriminator 4
	movl	$0, %eax
.L125:
	.loc 2 786 20 discriminator 6
	andl	$1, %eax
	.loc 2 787 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	isbase2, .-isbase2
	.type	base2_length, @function
base2_length:
.LFB93:
	.loc 2 791 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 792 14
	movl	-4(%rbp), %eax
	sall	$3, %eax
	.loc 2 793 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	base2_length, .-base2_length
	.type	base2msbf_encode, @function
base2msbf_encode:
.LFB94:
	.loc 2 799 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 2 800 9
	jmp	.L130
.L135:
.LBB10:
	.loc 2 802 25
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 802 21
	movb	%al, -5(%rbp)
.LBB11:
	.loc 2 803 16
	movl	$0, -4(%rbp)
	.loc 2 803 7
	jmp	.L131
.L134:
	.loc 2 805 29
	movzbl	-5(%rbp), %eax
	.loc 2 805 18
	testb	%al, %al
	jns	.L132
	.loc 2 805 18 is_stmt 0 discriminator 1
	movl	$49, %ecx
	jmp	.L133
.L132:
	.loc 2 805 18 discriminator 2
	movl	$48, %ecx
.L133:
	.loc 2 805 15 is_stmt 1 discriminator 4
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 805 18 discriminator 4
	movb	%cl, (%rax)
	.loc 2 806 13 discriminator 4
	salb	-5(%rbp)
	.loc 2 803 31 discriminator 4
	addl	$1, -4(%rbp)
.L131:
	.loc 2 803 7 discriminator 2
	cmpl	$7, -4(%rbp)
	jle	.L134
.LBE11:
	.loc 2 808 14
	subq	$8, -48(%rbp)
	.loc 2 809 7
	addq	$1, -24(%rbp)
.L130:
.LBE10:
	.loc 2 800 15
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 800 9
	testq	%rax, %rax
	jne	.L135
	.loc 2 811 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	base2msbf_encode, .-base2msbf_encode
	.type	base2lsbf_encode, @function
base2lsbf_encode:
.LFB95:
	.loc 2 816 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 2 817 9
	jmp	.L137
.L142:
.LBB12:
	.loc 2 819 25
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 819 21
	movb	%al, -5(%rbp)
.LBB13:
	.loc 2 820 16
	movl	$0, -4(%rbp)
	.loc 2 820 7
	jmp	.L138
.L141:
	.loc 2 822 22
	movzbl	-5(%rbp), %eax
	andl	$1, %eax
	.loc 2 822 18
	testl	%eax, %eax
	je	.L139
	.loc 2 822 18 is_stmt 0 discriminator 1
	movl	$49, %ecx
	jmp	.L140
.L139:
	.loc 2 822 18 discriminator 2
	movl	$48, %ecx
.L140:
	.loc 2 822 15 is_stmt 1 discriminator 4
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 822 18 discriminator 4
	movb	%cl, (%rax)
	.loc 2 823 13 discriminator 4
	shrb	-5(%rbp)
	.loc 2 820 31 discriminator 4
	addl	$1, -4(%rbp)
.L138:
	.loc 2 820 7 discriminator 2
	cmpl	$7, -4(%rbp)
	jle	.L141
.LBE13:
	.loc 2 825 14
	subq	$8, -48(%rbp)
	.loc 2 826 7
	addq	$1, -24(%rbp)
.L137:
.LBE12:
	.loc 2 817 15
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 817 9
	testq	%rax, %rax
	jne	.L142
	.loc 2 828 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	base2lsbf_encode, .-base2lsbf_encode
	.type	base2_decode_ctx_init, @function
base2_decode_ctx_init:
.LFB96:
	.loc 2 833 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 834 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_inbuf
	.loc 2 835 24
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	.loc 2 836 10
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 837 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	base2_decode_ctx_init, .-base2_decode_ctx_init
	.type	base2lsbf_decode_ctx, @function
base2lsbf_decode_ctx:
.LFB97:
	.loc 2 844 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	.loc 2 845 8
	movb	$1, -2(%rbp)
	.loc 2 847 11
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 852 6
	cmpq	$0, -40(%rbp)
	jne	.L147
	.loc 2 853 15
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 853 19
	testl	%eax, %eax
	sete	%al
	jmp	.L146
.L151:
.LBB14:
	.loc 2 857 10
	cmpb	$0, -2(%rbp)
	je	.L148
	.loc 2 857 27 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 857 24 discriminator 1
	cmpb	$10, %al
	jne	.L148
	.loc 2 859 11
	addq	$1, -32(%rbp)
	.loc 2 860 11
	jmp	.L147
.L148:
	.loc 2 863 21
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 863 12
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isbase2
	.loc 2 863 11
	xorl	$1, %eax
	.loc 2 863 10
	testb	%al, %al
	je	.L149
	.loc 2 864 16
	movl	$0, %eax
	jmp	.L146
.L149:
	.loc 2 866 19
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 866 12
	cmpb	$49, %al
	sete	%al
	movb	%al, -1(%rbp)
	.loc 2 867 28
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	.loc 2 867 35
	movzbl	-1(%rbp), %esi
	.loc 2 867 41
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 867 35
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	.loc 2 867 28
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 2 868 12
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 868 7
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 870 14
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 870 10
	cmpl	$8, %eax
	jne	.L150
	.loc 2 872 34
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	.loc 2 872 15
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 872 18
	movl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 2 873 32
	movq	-24(%rbp), %rax
	movl	$0, 4(%rax)
	.loc 2 874 13
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 874 11
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 875 18
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L150:
	.loc 2 878 7
	addq	$1, -32(%rbp)
.L147:
.LBE14:
	.loc 2 855 15
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 855 9
	testq	%rax, %rax
	jne	.L151
	.loc 2 881 10
	movl	$1, %eax
.L146:
	.loc 2 882 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	base2lsbf_decode_ctx, .-base2lsbf_decode_ctx
	.type	base2msbf_decode_ctx, @function
base2msbf_decode_ctx:
.LFB98:
	.loc 2 888 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	.loc 2 889 8
	movb	$1, -2(%rbp)
	.loc 2 891 11
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 896 6
	cmpq	$0, -40(%rbp)
	jne	.L155
	.loc 2 897 15
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 897 19
	testl	%eax, %eax
	sete	%al
	jmp	.L154
.L160:
.LBB15:
	.loc 2 901 10
	cmpb	$0, -2(%rbp)
	je	.L156
	.loc 2 901 27 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 901 24 discriminator 1
	cmpb	$10, %al
	jne	.L156
	.loc 2 903 11
	addq	$1, -32(%rbp)
	.loc 2 904 11
	jmp	.L155
.L156:
	.loc 2 907 21
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 907 12
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isbase2
	.loc 2 907 11
	xorl	$1, %eax
	.loc 2 907 10
	testb	%al, %al
	je	.L157
	.loc 2 908 16
	movl	$0, %eax
	jmp	.L154
.L157:
	.loc 2 910 19
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 910 12
	cmpb	$49, %al
	sete	%al
	movb	%al, -1(%rbp)
	.loc 2 911 14
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 911 10
	testl	%eax, %eax
	jne	.L158
	.loc 2 912 16
	movq	-24(%rbp), %rax
	movl	$8, (%rax)
.L158:
	.loc 2 913 12
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 913 7
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 914 28
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	.loc 2 914 35
	movzbl	-1(%rbp), %esi
	.loc 2 914 41
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 914 35
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	.loc 2 914 28
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 2 916 14
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 916 10
	testl	%eax, %eax
	jne	.L159
	.loc 2 918 34
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	.loc 2 918 15
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 918 18
	movl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 2 919 32
	movq	-24(%rbp), %rax
	movl	$0, 4(%rax)
	.loc 2 920 13
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 920 11
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 921 18
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L159:
	.loc 2 924 7
	addq	$1, -32(%rbp)
.L155:
.LBE15:
	.loc 2 899 15
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 899 9
	testq	%rax, %rax
	jne	.L160
	.loc 2 927 10
	movl	$1, %eax
.L154:
	.loc 2 928 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	base2msbf_decode_ctx, .-base2msbf_decode_ctx
	.section	.rodata
.LC53:
	.string	"write error"
	.text
	.type	wrap_write, @function
wrap_write:
.LFB99:
	.loc 2 937 1
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	.loc 2 940 6
	cmpq	$0, -72(%rbp)
	jne	.L162
	.loc 2 943 11
	movq	stdout(%rip), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 943 10
	cmpq	%rax, -64(%rbp)
	jbe	.L169
.LBB16:
	.loc 2 944 9
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L162:
.LBE16:
	.loc 2 947 18
	movq	$0, -40(%rbp)
	.loc 2 947 5
	jmp	.L164
.L168:
.LBB17:
	.loc 2 949 50
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 949 19
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 950 16
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 951 20
	movq	-64(%rbp), %rax
	subq	-40(%rbp), %rax
	.loc 2 951 18
	cmpq	%rax, -24(%rbp)
	cmovbe	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 953 12
	cmpq	$0, -24(%rbp)
	jne	.L165
	.loc 2 955 17
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc_unlocked@PLT
	.loc 2 955 16
	cmpl	$-1, %eax
	jne	.L166
.LBB18:
	.loc 2 956 15
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L166:
.LBE18:
	.loc 2 957 29
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L164
.L165:
	.loc 2 961 17
	movq	stdout(%rip), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fwrite_unlocked@PLT
	.loc 2 961 16
	cmpq	%rax, -24(%rbp)
	jbe	.L167
.LBB19:
	.loc 2 962 15
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L167:
.LBE19:
	.loc 2 963 29
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 964 21
	movq	-24(%rbp), %rax
	addq	%rax, -40(%rbp)
.L164:
.LBE17:
	.loc 2 947 5 discriminator 1
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L168
.L169:
	.loc 2 967 1
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	wrap_write, .-wrap_write
	.section	.rodata
.LC54:
	.string	"read error"
	.text
	.type	do_encode, @function
do_encode:
.LFB100:
	.loc 2 971 1
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
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 2 971 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 972 10
	movq	$0, -64(%rbp)
	.loc 2 976 11
	movl	$30720, %edi
	call	xmalloc@PLT
	movq	%rax, -48(%rbp)
	.loc 2 977 21
	movq	base_length(%rip), %rax
	movl	$30720, %edi
	call	*%rax
.LVL0:
	.loc 2 977 12
	cltq
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -40(%rbp)
.L175:
.LBB20:
	.loc 2 983 11
	movq	$0, -56(%rbp)
.L172:
	.loc 2 986 15 discriminator 3
	movl	$30720, %eax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	-72(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fread_unlocked@PLT
	movq	%rax, -32(%rbp)
	.loc 2 987 15 discriminator 3
	movq	-32(%rbp), %rax
	addq	%rax, -56(%rbp)
	.loc 2 989 15 discriminator 3
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 989 7 discriminator 3
	testl	%eax, %eax
	jne	.L171
	.loc 2 989 29 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 989 25 discriminator 1
	testl	%eax, %eax
	jne	.L171
	.loc 2 989 41 discriminator 2
	cmpq	$30719, -56(%rbp)
	jbe	.L172
.L171:
	.loc 2 991 10
	cmpq	$0, -56(%rbp)
	je	.L173
	.loc 2 995 11
	movq	base_encode(%rip), %rbx
	.loc 2 995 44
	movq	base_length(%rip), %rax
	movq	-56(%rbp), %rdx
	movl	%edx, %edi
	call	*%rax
.LVL1:
	.loc 2 995 11
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rbx
.LVL2:
	.loc 2 997 31
	movq	base_length(%rip), %rax
	movq	-56(%rbp), %rdx
	movl	%edx, %edi
	call	*%rax
.LVL3:
	.loc 2 997 11
	movslq	%eax, %rsi
	movq	-80(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	wrap_write
.L173:
.LBE20:
	.loc 2 1001 11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1001 3
	testl	%eax, %eax
	jne	.L174
	.loc 2 1001 25 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1001 21 discriminator 1
	testl	%eax, %eax
	jne	.L174
	.loc 2 1001 37 discriminator 2
	cmpq	$30720, -56(%rbp)
	je	.L175
.L174:
	.loc 2 1004 6
	cmpq	$0, -88(%rbp)
	je	.L176
	.loc 2 1004 37 discriminator 1
	movq	-64(%rbp), %rax
	.loc 2 1004 19 discriminator 1
	testq	%rax, %rax
	je	.L176
	.loc 2 1004 44 discriminator 2
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc_unlocked@PLT
	.loc 2 1004 41 discriminator 2
	cmpl	$-1, %eax
	jne	.L176
.LBB21:
	.loc 2 1005 5
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L176:
.LBE21:
	.loc 2 1007 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1007 6
	testl	%eax, %eax
	je	.L177
.LBB22:
	.loc 2 1008 5
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L177:
.LBE22:
	.loc 2 1010 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1011 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1012 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L178
	call	__stack_chk_fail@PLT
.L178:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	do_encode, .-do_encode
	.section	.rodata
.LC55:
	.string	"invalid input"
	.text
	.type	do_decode, @function
do_decode:
.LFB101:
	.loc 2 1016 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, %eax
	movb	%al, -132(%rbp)
	.loc 2 1016 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1021 20
	movq	base_length(%rip), %rax
	movl	$5120, %edi
	call	*%rax
.LVL4:
	.loc 2 1021 11
	cltq
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -80(%rbp)
	.loc 2 1022 12
	movl	$5120, %edi
	call	xmalloc@PLT
	movq	%rax, -72(%rbp)
	.loc 2 1025 13
	movq	$0, -48(%rbp)
	.loc 2 1027 3
	movq	base_decode_ctx_init(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.LVL5:
.L198:
.LBB23:
	.loc 2 1035 11
	movq	$0, -96(%rbp)
.L187:
	.loc 2 1038 15
	movq	base_length(%rip), %rax
	movl	$5120, %edi
	call	*%rax
.LVL6:
	cltq
	subq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	-120(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fread_unlocked@PLT
	.loc 2 1038 13
	movq	%rax, -104(%rbp)
	.loc 2 1040 14
	cmpb	$0, -132(%rbp)
	je	.L180
.LBB24:
	.loc 2 1042 27
	movq	$0, -88(%rbp)
	.loc 2 1042 15
	jmp	.L181
.L184:
	.loc 2 1044 23
	movq	isbase(%rip), %rdx
	.loc 2 1044 41
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 1044 36
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 2 1044 23
	movsbl	%al, %eax
	movl	%eax, %edi
	call	*%rdx
.LVL7:
	.loc 2 1044 22
	testb	%al, %al
	jne	.L182
	.loc 2 1044 60 discriminator 1
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 1044 55 discriminator 1
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1044 47 discriminator 1
	cmpb	$61, %al
	jne	.L183
.L182:
	.loc 2 1045 22
	addq	$1, -88(%rbp)
	jmp	.L181
.L183:
	.loc 2 1047 68
	movq	-104(%rbp), %rax
	subq	$1, %rax
	.loc 2 1047 21
	movq	%rax, -104(%rbp)
	.loc 2 1047 68
	movq	-104(%rbp), %rax
	.loc 2 1047 21
	subq	-88(%rbp), %rax
	.loc 2 1047 59
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 1047 63
	leaq	1(%rdx), %rcx
	movq	-80(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	.loc 2 1047 42
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-80(%rbp), %rdx
	addq	%rdx, %rcx
	.loc 2 1047 21
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memmove@PLT
.L181:
	.loc 2 1042 36 discriminator 1
	movq	-104(%rbp), %rax
	.loc 2 1042 15 discriminator 1
	testq	%rax, %rax
	je	.L180
	.loc 2 1042 45 discriminator 2
	movq	-104(%rbp), %rax
	.loc 2 1042 40 discriminator 2
	cmpq	%rax, -88(%rbp)
	jb	.L184
.L180:
.LBE24:
	.loc 2 1051 15
	movq	-104(%rbp), %rax
	addq	%rax, -96(%rbp)
	.loc 2 1053 15
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1053 14
	testl	%eax, %eax
	je	.L185
.LBB25:
	.loc 2 1054 13
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L185:
.LBE25:
	.loc 2 1056 20
	movq	base_length(%rip), %rax
	movl	$5120, %edi
	call	*%rax
.LVL8:
	cltq
	.loc 2 1056 7
	cmpq	%rax, -96(%rbp)
	jnb	.L186
	.loc 2 1056 52 discriminator 1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1056 48 discriminator 1
	testl	%eax, %eax
	je	.L187
.L186:
	.loc 2 1062 14
	movl	$0, -108(%rbp)
	.loc 2 1062 7
	jmp	.L188
.L197:
	.loc 2 1064 14
	cmpl	$1, -108(%rbp)
	jne	.L189
	.loc 2 1064 28 discriminator 1
	movl	-64(%rbp), %eax
	.loc 2 1064 22 discriminator 1
	testl	%eax, %eax
	je	.L200
.L189:
	.loc 2 1066 13
	movq	$5120, -104(%rbp)
	.loc 2 1067 16
	movq	base_decode_ctx(%rip), %r9
	cmpl	$0, -108(%rbp)
	jne	.L191
	.loc 2 1067 16 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax
	jmp	.L192
.L191:
	.loc 2 1067 16 discriminator 2
	movl	$0, %eax
.L192:
	.loc 2 1067 16 discriminator 4
	leaq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	*%r9
.LVL9:
	movb	%al, -109(%rbp)
	.loc 2 1069 15 is_stmt 1 discriminator 4
	movq	-104(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1069 42 discriminator 4
	movq	-104(%rbp), %rdx
	.loc 2 1069 14 discriminator 4
	cmpq	%rdx, %rax
	jnb	.L193
.LBB26:
	.loc 2 1070 13
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L193:
.LBE26:
	.loc 2 1072 15
	movzbl	-109(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1072 14
	testb	%al, %al
	je	.L194
.LBB27:
	.loc 2 1073 13
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L194:
.LBE27:
	.loc 2 1062 41 discriminator 2
	addl	$1, -108(%rbp)
.L188:
	.loc 2 1062 29 discriminator 1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1062 25 discriminator 1
	testl	%eax, %eax
	je	.L195
	.loc 2 1062 25 is_stmt 0 discriminator 3
	movl	$2, %eax
	jmp	.L196
.L195:
	.loc 2 1062 25 discriminator 4
	movl	$1, %eax
.L196:
	.loc 2 1062 7 is_stmt 1 discriminator 6
	cmpl	-108(%rbp), %eax
	ja	.L197
	jmp	.L190
.L200:
	.loc 2 1065 13
	nop
.L190:
.LBE23:
	.loc 2 1076 11 discriminator 1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 1076 3 discriminator 1
	testl	%eax, %eax
	je	.L198
	.loc 2 1079 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1081 3
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1082 3
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1083 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L199
	call	__stack_chk_fail@PLT
.L199:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	do_decode, .-do_decode
	.section	.rodata
.LC56:
	.string	"/usr/local/share/locale"
.LC57:
	.string	"invalid wrap size"
.LC58:
	.string	"Assaf Gordon"
.LC59:
	.string	"Simon Josefsson"
.LC60:
	.string	"diw:"
.LC61:
	.string	"missing encoding type"
.LC62:
	.string	"extra operand %s"
.LC63:
	.string	"-"
.LC64:
	.string	"rb"
.LC65:
	.string	"%s"
.LC66:
	.string	"closing standard input"
	.text
	.globl	main
	.type	main, @function
main:
.LFB102:
	.loc 2 1087 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 1093 8
	movb	$0, -50(%rbp)
	.loc 2 1095 8
	movb	$0, -49(%rbp)
	.loc 2 1097 13
	movq	$76, -24(%rbp)
	.loc 2 1100 7
	movl	$0, -48(%rbp)
	.loc 2 1104 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 1105 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 1106 3
	leaq	.LC56(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 1107 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 1109 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 1111 9
	jmp	.L202
.L210:
	.loc 2 1112 5
	cmpl	$135, -44(%rbp)
	jg	.L203
	cmpl	$128, -44(%rbp)
	jge	.L204
	cmpl	$119, -44(%rbp)
	je	.L205
	cmpl	$119, -44(%rbp)
	jg	.L203
	cmpl	$105, -44(%rbp)
	je	.L206
	cmpl	$105, -44(%rbp)
	jg	.L203
	cmpl	$100, -44(%rbp)
	je	.L207
	cmpl	$100, -44(%rbp)
	jg	.L203
	cmpl	$-131, -44(%rbp)
	je	.L208
	cmpl	$-130, -44(%rbp)
	je	.L209
	jmp	.L203
.L207:
	.loc 2 1115 16
	movb	$1, -50(%rbp)
	.loc 2 1116 9
	jmp	.L202
.L205:
	.loc 2 1120 35
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1119 23
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movq	$-1, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	movq	%rax, -24(%rbp)
	.loc 2 1121 9
	jmp	.L202
.L206:
	.loc 2 1124 24
	movb	$1, -49(%rbp)
	.loc 2 1125 9
	jmp	.L202
.L204:
	.loc 2 1136 19
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	.loc 2 1137 9
	jmp	.L202
.L209:
	.loc 2 1140 7
	movl	$0, %edi
	call	usage
.L208:
	.loc 2 1142 7
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC58(%rip), %r9
	leaq	.LC59(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L203:
	.loc 2 1145 9
	movl	$1, %edi
	call	usage
.L202:
	.loc 2 1111 17
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -44(%rbp)
	.loc 2 1111 9
	cmpl	$-1, -44(%rbp)
	jne	.L210
	movl	-48(%rbp), %eax
	addl	$-128, %eax
	cmpl	$7, %eax
	ja	.L211
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L213(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L213(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L213:
	.long	.L220-.L213
	.long	.L219-.L213
	.long	.L218-.L213
	.long	.L217-.L213
	.long	.L216-.L213
	.long	.L215-.L213
	.long	.L214-.L213
	.long	.L212-.L213
	.text
.L220:
	.loc 2 1153 19
	leaq	base64_length_wrapper(%rip), %rax
	movq	%rax, base_length(%rip)
	.loc 2 1154 14
	movq	isbase64@GOTPCREL(%rip), %rax
	movq	%rax, isbase(%rip)
	.loc 2 1155 19
	movq	base64_encode@GOTPCREL(%rip), %rax
	movq	%rax, base_encode(%rip)
	.loc 2 1156 28
	leaq	base64_decode_ctx_init_wrapper(%rip), %rax
	movq	%rax, base_decode_ctx_init(%rip)
	.loc 2 1157 23
	leaq	base64_decode_ctx_wrapper(%rip), %rax
	movq	%rax, base_decode_ctx(%rip)
	.loc 2 1158 7
	jmp	.L221
.L219:
	.loc 2 1161 19
	leaq	base64_length_wrapper(%rip), %rax
	movq	%rax, base_length(%rip)
	.loc 2 1162 14
	leaq	isbase64url(%rip), %rax
	movq	%rax, isbase(%rip)
	.loc 2 1163 19
	leaq	base64url_encode(%rip), %rax
	movq	%rax, base_encode(%rip)
	.loc 2 1164 28
	leaq	base64url_decode_ctx_init_wrapper(%rip), %rax
	movq	%rax, base_decode_ctx_init(%rip)
	.loc 2 1165 23
	leaq	base64url_decode_ctx_wrapper(%rip), %rax
	movq	%rax, base_decode_ctx(%rip)
	.loc 2 1166 7
	jmp	.L221
.L218:
	.loc 2 1169 19
	leaq	base32_length_wrapper(%rip), %rax
	movq	%rax, base_length(%rip)
	.loc 2 1170 14
	movq	isbase32@GOTPCREL(%rip), %rax
	movq	%rax, isbase(%rip)
	.loc 2 1171 19
	movq	base32_encode@GOTPCREL(%rip), %rax
	movq	%rax, base_encode(%rip)
	.loc 2 1172 28
	leaq	base32_decode_ctx_init_wrapper(%rip), %rax
	movq	%rax, base_decode_ctx_init(%rip)
	.loc 2 1173 23
	leaq	base32_decode_ctx_wrapper(%rip), %rax
	movq	%rax, base_decode_ctx(%rip)
	.loc 2 1174 7
	jmp	.L221
.L217:
	.loc 2 1177 19
	leaq	base32_length_wrapper(%rip), %rax
	movq	%rax, base_length(%rip)
	.loc 2 1178 14
	leaq	isbase32hex(%rip), %rax
	movq	%rax, isbase(%rip)
	.loc 2 1179 19
	leaq	base32hex_encode(%rip), %rax
	movq	%rax, base_encode(%rip)
	.loc 2 1180 28
	leaq	base32hex_decode_ctx_init_wrapper(%rip), %rax
	movq	%rax, base_decode_ctx_init(%rip)
	.loc 2 1181 23
	leaq	base32hex_decode_ctx_wrapper(%rip), %rax
	movq	%rax, base_decode_ctx(%rip)
	.loc 2 1182 7
	jmp	.L221
.L216:
	.loc 2 1185 19
	leaq	base16_length(%rip), %rax
	movq	%rax, base_length(%rip)
	.loc 2 1186 14
	leaq	isbase16(%rip), %rax
	movq	%rax, isbase(%rip)
	.loc 2 1187 19
	leaq	base16_encode(%rip), %rax
	movq	%rax, base_encode(%rip)
	.loc 2 1188 28
	leaq	base16_decode_ctx_init(%rip), %rax
	movq	%rax, base_decode_ctx_init(%rip)
	.loc 2 1189 23
	leaq	base16_decode_ctx(%rip), %rax
	movq	%rax, base_decode_ctx(%rip)
	.loc 2 1190 7
	jmp	.L221
.L215:
	.loc 2 1193 19
	leaq	base2_length(%rip), %rax
	movq	%rax, base_length(%rip)
	.loc 2 1194 14
	leaq	isbase2(%rip), %rax
	movq	%rax, isbase(%rip)
	.loc 2 1195 19
	leaq	base2msbf_encode(%rip), %rax
	movq	%rax, base_encode(%rip)
	.loc 2 1196 28
	leaq	base2_decode_ctx_init(%rip), %rax
	movq	%rax, base_decode_ctx_init(%rip)
	.loc 2 1197 23
	leaq	base2msbf_decode_ctx(%rip), %rax
	movq	%rax, base_decode_ctx(%rip)
	.loc 2 1198 7
	jmp	.L221
.L214:
	.loc 2 1201 19
	leaq	base2_length(%rip), %rax
	movq	%rax, base_length(%rip)
	.loc 2 1202 14
	leaq	isbase2(%rip), %rax
	movq	%rax, isbase(%rip)
	.loc 2 1203 19
	leaq	base2lsbf_encode(%rip), %rax
	movq	%rax, base_encode(%rip)
	.loc 2 1204 28
	leaq	base2_decode_ctx_init(%rip), %rax
	movq	%rax, base_decode_ctx_init(%rip)
	.loc 2 1205 23
	leaq	base2lsbf_decode_ctx(%rip), %rax
	movq	%rax, base_decode_ctx(%rip)
	.loc 2 1206 7
	jmp	.L221
.L212:
	.loc 2 1209 19
	leaq	z85_length(%rip), %rax
	movq	%rax, base_length(%rip)
	.loc 2 1210 14
	leaq	isz85(%rip), %rax
	movq	%rax, isbase(%rip)
	.loc 2 1211 19
	leaq	z85_encode(%rip), %rax
	movq	%rax, base_encode(%rip)
	.loc 2 1212 28
	leaq	z85_decode_ctx_init(%rip), %rax
	movq	%rax, base_decode_ctx_init(%rip)
	.loc 2 1213 23
	leaq	z85_decode_ctx(%rip), %rax
	movq	%rax, base_decode_ctx(%rip)
	.loc 2 1214 7
	jmp	.L221
.L211:
	.loc 2 1217 20
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	.loc 2 1217 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1218 7
	movl	$1, %edi
	call	usage
.L221:
	.loc 2 1222 12
	movl	optind(%rip), %eax
	movl	-68(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 1222 6
	cmpl	$1, %eax
	jle	.L222
	.loc 2 1224 54
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1224 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1224 20
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	.loc 2 1224 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1225 7
	movl	$1, %edi
	call	usage
.L222:
	.loc 2 1228 14
	movl	optind(%rip), %eax
	.loc 2 1228 6
	cmpl	%eax, -68(%rbp)
	jle	.L223
	.loc 2 1229 18
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1229 12
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L224
.L223:
	.loc 2 1231 12
	leaq	.LC63(%rip), %rax
	movq	%rax, -32(%rbp)
.L224:
	.loc 2 1233 7
	movq	-32(%rbp), %rax
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1233 6
	testl	%eax, %eax
	jne	.L225
	.loc 2 1235 7
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	.loc 2 1236 16
	movq	stdin(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L226
.L225:
	.loc 2 1240 18
	movq	-32(%rbp), %rax
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -40(%rbp)
	.loc 2 1241 10
	cmpq	$0, -40(%rbp)
	jne	.L226
.LBB28:
	.loc 2 1242 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC65(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L226:
.LBE28:
	.loc 2 1245 3
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 1247 6
	cmpb	$0, -50(%rbp)
	je	.L227
	.loc 2 1248 5
	movzbl	-49(%rbp), %edx
	movq	stdout(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_decode
	jmp	.L228
.L227:
	.loc 2 1250 5
	movq	stdout(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_encode
.L228:
	.loc 2 1252 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1252 6
	cmpl	$-1, %eax
	jne	.L229
	.loc 2 1254 11
	movq	-32(%rbp), %rax
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1254 10
	testl	%eax, %eax
	jne	.L230
.LBB29:
	.loc 2 1255 9
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L230:
.LBE29:
.LBB30:
	.loc 2 1257 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC65(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L229:
.LBE30:
	.loc 2 1260 10
	movl	$0, %eax
	.loc 2 1261 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.7217, @object
	.size	__PRETTY_FUNCTION__.7217, 17
__PRETTY_FUNCTION__.7217:
	.string	"base32hex_encode"
	.text
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
	.file 19 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 20 "/usr/include/stdint.h"
	.file 21 "./lib/timespec.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/error.h"
	.file 26 "./lib/fadvise.h"
	.file 27 "./lib/quote.h"
	.file 28 "./lib/base32.h"
	.file 29 "./lib/base64.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1b58
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF216
	.byte	0xc
	.long	.LASF217
	.long	.LASF218
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
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
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0x2a
	.byte	0x16
	.long	0x40
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x7d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x7d
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x7d
	.uleb128 0x7
	.byte	0x8
	.long	0xbf
	.uleb128 0x8
	.long	0xb4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x9
	.long	0xbf
	.uleb128 0xa
	.long	0xbf
	.long	0xdb
	.uleb128 0xb
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF63
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x262
	.uleb128 0xd
	.long	.LASF14
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xd
	.long	.LASF15
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0xd
	.long	.LASF16
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.uleb128 0xd
	.long	.LASF17
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0xd
	.long	.LASF18
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0xd
	.long	.LASF19
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.uleb128 0xd
	.long	.LASF20
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xb4
	.byte	0x30
	.uleb128 0xd
	.long	.LASF21
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xb4
	.byte	0x38
	.uleb128 0xd
	.long	.LASF22
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xb4
	.byte	0x40
	.uleb128 0xd
	.long	.LASF23
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xb4
	.byte	0x48
	.uleb128 0xd
	.long	.LASF24
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xb4
	.byte	0x50
	.uleb128 0xd
	.long	.LASF25
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xb4
	.byte	0x58
	.uleb128 0xd
	.long	.LASF26
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x27b
	.byte	0x60
	.uleb128 0xd
	.long	.LASF27
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x281
	.byte	0x68
	.uleb128 0xd
	.long	.LASF28
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xd
	.long	.LASF29
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xd
	.long	.LASF30
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x90
	.byte	0x78
	.uleb128 0xd
	.long	.LASF31
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xd
	.long	.LASF32
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xd
	.long	.LASF33
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x287
	.byte	0x83
	.uleb128 0xd
	.long	.LASF34
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x297
	.byte	0x88
	.uleb128 0xd
	.long	.LASF35
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x9c
	.byte	0x90
	.uleb128 0xd
	.long	.LASF36
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2a2
	.byte	0x98
	.uleb128 0xd
	.long	.LASF37
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2ad
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF38
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x281
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF39
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2b3
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xdb
	.uleb128 0xe
	.long	.LASF219
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x276
	.uleb128 0x7
	.byte	0x8
	.long	0xdb
	.uleb128 0xa
	.long	0xbf
	.long	0x297
	.uleb128 0xb
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x26e
	.uleb128 0xf
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x29d
	.uleb128 0xf
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x2a8
	.uleb128 0xa
	.long	0xbf
	.long	0x2c3
	.uleb128 0xb
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0x9
	.long	0x2c3
	.uleb128 0x8
	.long	0x2c3
	.uleb128 0x10
	.long	.LASF47
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2df
	.uleb128 0x7
	.byte	0x8
	.long	0x262
	.uleb128 0x10
	.long	.LASF48
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2df
	.uleb128 0x10
	.long	.LASF49
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2df
	.uleb128 0x10
	.long	.LASF50
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xa
	.long	0x2c9
	.long	0x314
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x309
	.uleb128 0x10
	.long	.LASF51
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x314
	.uleb128 0x10
	.long	.LASF52
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0x10
	.long	.LASF53
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x314
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0xa8
	.uleb128 0x12
	.long	.LASF57
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF58
	.uleb128 0xa
	.long	0xbf
	.long	0x37b
	.uleb128 0xb
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	.LASF59
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0xb4
	.uleb128 0x10
	.long	.LASF60
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0x10
	.long	.LASF61
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0x10
	.long	.LASF62
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF64
	.byte	0x20
	.byte	0xc
	.byte	0x32
	.byte	0x8
	.long	0x3ed
	.uleb128 0xd
	.long	.LASF65
	.byte	0xc
	.byte	0x34
	.byte	0xf
	.long	0x2c3
	.byte	0
	.uleb128 0xd
	.long	.LASF66
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xd
	.long	.LASF67
	.byte	0xc
	.byte	0x38
	.byte	0x8
	.long	0x3f2
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0xc
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.long	0x3ab
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xa
	.long	0xb4
	.long	0x408
	.uleb128 0xb
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF68
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3f8
	.uleb128 0x10
	.long	.LASF69
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0x10
	.long	.LASF70
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x7d
	.uleb128 0x10
	.long	.LASF71
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3f8
	.uleb128 0x10
	.long	.LASF72
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0x10
	.long	.LASF73
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x7d
	.uleb128 0x12
	.long	.LASF74
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x8
	.long	0x45d
	.uleb128 0xa
	.long	0x2c9
	.long	0x474
	.uleb128 0xb
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.long	0x464
	.uleb128 0x12
	.long	.LASF75
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x474
	.uleb128 0x12
	.long	.LASF76
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x474
	.uleb128 0x12
	.long	.LASF77
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x4a0
	.uleb128 0x7
	.byte	0x8
	.long	0xb4
	.uleb128 0x12
	.long	.LASF78
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x4a0
	.uleb128 0x10
	.long	.LASF79
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xb4
	.uleb128 0x10
	.long	.LASF80
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xb4
	.uleb128 0x10
	.long	.LASF81
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2c3
	.uleb128 0x10
	.long	.LASF82
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF83
	.byte	0x13
	.byte	0x1a
	.byte	0x14
	.long	0x71
	.uleb128 0x2
	.long	.LASF84
	.byte	0x14
	.byte	0x66
	.byte	0x16
	.long	0x84
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
	.byte	0x29
	.byte	0x6
	.long	0x513
	.uleb128 0x16
	.long	.LASF85
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x528
	.uleb128 0x17
	.long	.LASF86
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x546
	.uleb128 0x19
	.long	.LASF87
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF88
	.sleb128 -131
	.byte	0
	.uleb128 0xa
	.long	0xc6
	.long	0x551
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x546
	.uleb128 0x10
	.long	.LASF89
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x551
	.uleb128 0x10
	.long	.LASF90
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x2c3
	.uleb128 0x1a
	.long	.LASF220
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x5c3
	.uleb128 0x17
	.long	.LASF91
	.byte	0
	.uleb128 0x17
	.long	.LASF92
	.byte	0x1
	.uleb128 0x17
	.long	.LASF93
	.byte	0x2
	.uleb128 0x17
	.long	.LASF94
	.byte	0x3
	.uleb128 0x17
	.long	.LASF95
	.byte	0x4
	.uleb128 0x17
	.long	.LASF96
	.byte	0x5
	.uleb128 0x17
	.long	.LASF97
	.byte	0x6
	.uleb128 0x17
	.long	.LASF98
	.byte	0x7
	.uleb128 0x17
	.long	.LASF99
	.byte	0x8
	.uleb128 0x17
	.long	.LASF100
	.byte	0x9
	.uleb128 0x17
	.long	.LASF101
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.long	0x56e
	.uleb128 0x12
	.long	.LASF102
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x314
	.uleb128 0xa
	.long	0x5c3
	.long	0x5e0
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x5d5
	.uleb128 0x12
	.long	.LASF103
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x5e0
	.uleb128 0x10
	.long	.LASF104
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x45e
	.uleb128 0x10
	.long	.LASF105
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0x10
	.long	.LASF106
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x2d
	.byte	0xe
	.long	0x649
	.uleb128 0x17
	.long	.LASF107
	.byte	0
	.uleb128 0x17
	.long	.LASF108
	.byte	0x2
	.uleb128 0x17
	.long	.LASF109
	.byte	0x5
	.uleb128 0x17
	.long	.LASF110
	.byte	0x4
	.uleb128 0x17
	.long	.LASF111
	.byte	0x3
	.uleb128 0x17
	.long	.LASF112
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF113
	.uleb128 0x10
	.long	.LASF114
	.byte	0x1b
	.byte	0x19
	.byte	0x1f
	.long	0x649
	.uleb128 0xc
	.long	.LASF115
	.byte	0xc
	.byte	0x1c
	.byte	0x1f
	.byte	0x8
	.long	0x680
	.uleb128 0x13
	.string	"i"
	.byte	0x1c
	.byte	0x21
	.byte	0x10
	.long	0x40
	.byte	0
	.uleb128 0x13
	.string	"buf"
	.byte	0x1c
	.byte	0x22
	.byte	0x8
	.long	0x36b
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF116
	.byte	0x8
	.byte	0x1d
	.byte	0x23
	.byte	0x8
	.long	0x6a6
	.uleb128 0x13
	.string	"i"
	.byte	0x1d
	.byte	0x25
	.byte	0x10
	.long	0x40
	.byte	0
	.uleb128 0x13
	.string	"buf"
	.byte	0x1d
	.byte	0x26
	.byte	0x8
	.long	0xcb
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x3e
	.byte	0x1
	.long	0x6e5
	.uleb128 0x17
	.long	.LASF117
	.byte	0x80
	.uleb128 0x17
	.long	.LASF118
	.byte	0x81
	.uleb128 0x17
	.long	.LASF119
	.byte	0x82
	.uleb128 0x17
	.long	.LASF120
	.byte	0x83
	.uleb128 0x17
	.long	.LASF121
	.byte	0x84
	.uleb128 0x17
	.long	.LASF122
	.byte	0x85
	.uleb128 0x17
	.long	.LASF123
	.byte	0x86
	.uleb128 0x17
	.long	.LASF124
	.byte	0x87
	.byte	0
	.uleb128 0xa
	.long	0x3ed
	.long	0x6f5
	.uleb128 0xb
	.long	0x39
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.long	0x6e5
	.uleb128 0x1b
	.long	.LASF125
	.byte	0x2
	.byte	0x4a
	.byte	0x1c
	.long	0x6f5
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1c
	.long	0x65
	.long	0x71f
	.uleb128 0x1d
	.long	0x65
	.byte	0
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x2
	.byte	0xda
	.byte	0xe
	.long	0x735
	.uleb128 0x9
	.byte	0x3
	.quad	base_length
	.uleb128 0x7
	.byte	0x8
	.long	0x710
	.uleb128 0x1c
	.long	0x74a
	.long	0x74a
	.uleb128 0x1d
	.long	0xbf
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF127
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x2
	.byte	0xdb
	.byte	0xf
	.long	0x767
	.uleb128 0x9
	.byte	0x3
	.quad	isbase
	.uleb128 0x7
	.byte	0x8
	.long	0x73b
	.uleb128 0x1e
	.long	0x787
	.uleb128 0x1d
	.long	0x2ce
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0xba
	.uleb128 0x1d
	.long	0x2d
	.byte	0
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x2
	.byte	0xdc
	.byte	0xf
	.long	0x79d
	.uleb128 0x9
	.byte	0x3
	.quad	base_encode
	.uleb128 0x7
	.byte	0x8
	.long	0x76d
	.uleb128 0xc
	.long	.LASF130
	.byte	0x2
	.byte	0x2
	.byte	0xdf
	.byte	0x8
	.long	0x7cb
	.uleb128 0xd
	.long	.LASF131
	.byte	0x2
	.byte	0xe1
	.byte	0x8
	.long	0xbf
	.byte	0
	.uleb128 0xd
	.long	.LASF132
	.byte	0x2
	.byte	0xe2
	.byte	0x8
	.long	0x74a
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF133
	.byte	0xc
	.byte	0x2
	.byte	0xe5
	.byte	0x8
	.long	0x7f1
	.uleb128 0x13
	.string	"i"
	.byte	0x2
	.byte	0xe7
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xd
	.long	.LASF134
	.byte	0x2
	.byte	0xe8
	.byte	0x11
	.long	0x7f1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	0x49
	.long	0x801
	.uleb128 0xb
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF135
	.byte	0x4
	.byte	0x2
	.byte	0xeb
	.byte	0x8
	.long	0x81c
	.uleb128 0xd
	.long	.LASF136
	.byte	0x2
	.byte	0xed
	.byte	0xc
	.long	0x40
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0xc
	.byte	0x2
	.byte	0xf3
	.byte	0x3
	.long	0x862
	.uleb128 0x20
	.long	.LASF137
	.byte	0x2
	.byte	0xf4
	.byte	0x22
	.long	0x680
	.uleb128 0x20
	.long	.LASF138
	.byte	0x2
	.byte	0xf5
	.byte	0x22
	.long	0x65a
	.uleb128 0x20
	.long	.LASF139
	.byte	0x2
	.byte	0xf6
	.byte	0x22
	.long	0x7a3
	.uleb128 0x20
	.long	.LASF140
	.byte	0x2
	.byte	0xf7
	.byte	0x21
	.long	0x801
	.uleb128 0x21
	.string	"z85"
	.byte	0x2
	.byte	0xf8
	.byte	0x1f
	.long	0x7cb
	.byte	0
	.uleb128 0xc
	.long	.LASF141
	.byte	0x20
	.byte	0x2
	.byte	0xf0
	.byte	0x8
	.long	0x8a2
	.uleb128 0x13
	.string	"i"
	.byte	0x2
	.byte	0xf2
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0x13
	.string	"ctx"
	.byte	0x2
	.byte	0xf9
	.byte	0x5
	.long	0x81c
	.byte	0x4
	.uleb128 0xd
	.long	.LASF142
	.byte	0x2
	.byte	0xfa
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.uleb128 0xd
	.long	.LASF143
	.byte	0x2
	.byte	0xfb
	.byte	0xa
	.long	0x2d
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.long	0x8ad
	.uleb128 0x1d
	.long	0x8ad
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x862
	.uleb128 0x1b
	.long	.LASF144
	.byte	0x2
	.byte	0xfd
	.byte	0xf
	.long	0x8c9
	.uleb128 0x9
	.byte	0x3
	.quad	base_decode_ctx_init
	.uleb128 0x7
	.byte	0x8
	.long	0x8a2
	.uleb128 0x1c
	.long	0x74a
	.long	0x8f2
	.uleb128 0x1d
	.long	0x8ad
	.uleb128 0x1d
	.long	0x2ce
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0xba
	.uleb128 0x1d
	.long	0x8f2
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2d
	.uleb128 0x1b
	.long	.LASF145
	.byte	0x2
	.byte	0xfe
	.byte	0xf
	.long	0x90e
	.uleb128 0x9
	.byte	0x3
	.quad	base_decode_ctx
	.uleb128 0x7
	.byte	0x8
	.long	0x8cf
	.uleb128 0xa
	.long	0xc6
	.long	0x924
	.uleb128 0xb
	.long	0x39
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.long	0x914
	.uleb128 0x22
	.long	.LASF146
	.byte	0x2
	.value	0x18b
	.byte	0x13
	.long	0x924
	.uleb128 0x9
	.byte	0x3
	.quad	base32_norm_to_hex
	.uleb128 0x22
	.long	.LASF147
	.byte	0x2
	.value	0x1a1
	.byte	0x13
	.long	0x924
	.uleb128 0x9
	.byte	0x3
	.quad	base32_hex_to_norm
	.uleb128 0xa
	.long	0xc6
	.long	0x967
	.uleb128 0xb
	.long	0x39
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.long	0x957
	.uleb128 0x22
	.long	.LASF139
	.byte	0x2
	.value	0x1f6
	.byte	0x13
	.long	0x967
	.uleb128 0x9
	.byte	0x3
	.quad	base16
	.uleb128 0xa
	.long	0xc6
	.long	0x993
	.uleb128 0xb
	.long	0x39
	.byte	0x54
	.byte	0
	.uleb128 0x9
	.long	0x983
	.uleb128 0x22
	.long	.LASF148
	.byte	0x2
	.value	0x251
	.byte	0x13
	.long	0x993
	.uleb128 0x9
	.byte	0x3
	.quad	z85_encoding
	.uleb128 0xa
	.long	0x49
	.long	0x9bf
	.uleb128 0xb
	.long	0x39
	.byte	0x5c
	.byte	0
	.uleb128 0x22
	.long	.LASF149
	.byte	0x2
	.value	0x2ab
	.byte	0x16
	.long	0x9af
	.uleb128 0x9
	.byte	0x3
	.quad	z85_decoding
	.uleb128 0x23
	.long	.LASF205
	.byte	0x2
	.value	0x43e
	.byte	0x1
	.long	0x65
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0xac1
	.uleb128 0x24
	.long	.LASF150
	.byte	0x2
	.value	0x43e
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.long	.LASF151
	.byte	0x2
	.value	0x43e
	.byte	0x18
	.long	0x4a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"opt"
	.byte	0x2
	.value	0x440
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.long	.LASF152
	.byte	0x2
	.value	0x441
	.byte	0x9
	.long	0x2df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF153
	.byte	0x2
	.value	0x442
	.byte	0xf
	.long	0x2c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF154
	.byte	0x2
	.value	0x445
	.byte	0x8
	.long	0x74a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x22
	.long	.LASF155
	.byte	0x2
	.value	0x447
	.byte	0x8
	.long	0x74a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x22
	.long	.LASF156
	.byte	0x2
	.value	0x449
	.byte	0xd
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF157
	.byte	0x2
	.value	0x44c
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x26
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x26
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0
	.uleb128 0x27
	.long	.LASF159
	.byte	0x2
	.value	0x3f7
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0xbef
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x3f7
	.byte	0x12
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x3f7
	.byte	0x1c
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.long	.LASF155
	.byte	0x2
	.value	0x3f7
	.byte	0x26
	.long	0x74a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x22
	.long	.LASF142
	.byte	0x2
	.value	0x3f9
	.byte	0x9
	.long	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF158
	.byte	0x2
	.value	0x3f9
	.byte	0x11
	.long	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"sum"
	.byte	0x2
	.value	0x3fa
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.string	"ctx"
	.byte	0x2
	.value	0x3fb
	.byte	0x1e
	.long	0x862
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x25
	.string	"ok"
	.byte	0x2
	.value	0x407
	.byte	0xc
	.long	0x74a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -125
	.uleb128 0x25
	.string	"n"
	.byte	0x2
	.value	0x408
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.string	"k"
	.byte	0x2
	.value	0x409
	.byte	0x14
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2a
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0xbba
	.uleb128 0x25
	.string	"i"
	.byte	0x2
	.value	0x412
	.byte	0x1b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x26
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x26
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x26
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF160
	.byte	0x2
	.value	0x3ca
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc9
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x3ca
	.byte	0x12
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x3ca
	.byte	0x1c
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF156
	.byte	0x2
	.value	0x3ca
	.byte	0x2b
	.long	0x4ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF161
	.byte	0x2
	.value	0x3cc
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF142
	.byte	0x2
	.value	0x3cd
	.byte	0x9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF158
	.byte	0x2
	.value	0x3cd
	.byte	0x11
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"sum"
	.byte	0x2
	.value	0x3ce
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0xca6
	.uleb128 0x25
	.string	"n"
	.byte	0x2
	.value	0x3d5
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x26
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0
	.uleb128 0x27
	.long	.LASF162
	.byte	0x2
	.value	0x3a7
	.byte	0x1
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0xdb3
	.uleb128 0x24
	.long	.LASF163
	.byte	0x2
	.value	0x3a7
	.byte	0x19
	.long	0x2c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"len"
	.byte	0x2
	.value	0x3a7
	.byte	0x28
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF156
	.byte	0x2
	.value	0x3a8
	.byte	0x17
	.long	0x4ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF161
	.byte	0x2
	.value	0x3a8
	.byte	0x2c
	.long	0x8f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x3a8
	.byte	0x42
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF164
	.byte	0x2
	.value	0x3aa
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x22
	.long	.LASF165
	.byte	0x2
	.value	0x3b5
	.byte	0x13
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF166
	.byte	0x2
	.value	0x3b6
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x26
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF170
	.byte	0x2
	.value	0x375
	.byte	0x1
	.long	0x74a
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0xe59
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x375
	.byte	0x33
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x376
	.byte	0x2c
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x376
	.byte	0x37
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x377
	.byte	0x26
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x377
	.byte	0x33
	.long	0x8f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF169
	.byte	0x2
	.value	0x379
	.byte	0x8
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x25
	.string	"bit"
	.byte	0x2
	.value	0x38e
	.byte	0xc
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF171
	.byte	0x2
	.value	0x349
	.byte	0x1
	.long	0x74a
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0xeff
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x349
	.byte	0x33
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x34a
	.byte	0x2c
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x34a
	.byte	0x37
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x34b
	.byte	0x26
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x34b
	.byte	0x33
	.long	0x8f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF169
	.byte	0x2
	.value	0x34d
	.byte	0x8
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x25
	.string	"bit"
	.byte	0x2
	.value	0x362
	.byte	0xc
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF172
	.byte	0x2
	.value	0x340
	.byte	0x1
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0xf2f
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x340
	.byte	0x34
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF173
	.byte	0x2
	.value	0x32e
	.byte	0x1
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0xfce
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x32e
	.byte	0x28
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x32e
	.byte	0x33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x32f
	.byte	0x22
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x32f
	.byte	0x2e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x25
	.string	"c"
	.byte	0x2
	.value	0x333
	.byte	0x15
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x25
	.string	"i"
	.byte	0x2
	.value	0x334
	.byte	0x10
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF174
	.byte	0x2
	.value	0x31d
	.byte	0x1
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x106d
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x31d
	.byte	0x28
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x31d
	.byte	0x33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x31e
	.byte	0x22
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x31e
	.byte	0x2e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x25
	.string	"c"
	.byte	0x2
	.value	0x322
	.byte	0x15
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x29
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x25
	.string	"i"
	.byte	0x2
	.value	0x323
	.byte	0x10
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF175
	.byte	0x2
	.value	0x316
	.byte	0x1
	.long	0x65
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x10a1
	.uleb128 0x28
	.string	"len"
	.byte	0x2
	.value	0x316
	.byte	0x13
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF176
	.byte	0x2
	.value	0x310
	.byte	0x1
	.long	0x74a
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x10d4
	.uleb128 0x28
	.string	"ch"
	.byte	0x2
	.value	0x310
	.byte	0xf
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF177
	.byte	0x2
	.value	0x2bb
	.byte	0x1
	.long	0x74a
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x119a
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x2bb
	.byte	0x2d
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x2bc
	.byte	0x26
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x2bc
	.byte	0x31
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x2bd
	.byte	0x20
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x2bd
	.byte	0x2d
	.long	0x8f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF169
	.byte	0x2
	.value	0x2bf
	.byte	0x8
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x25
	.string	"c"
	.byte	0x2
	.value	0x2da
	.byte	0x15
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x25
	.string	"val"
	.byte	0x2
	.value	0x2eb
	.byte	0x18
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF178
	.byte	0x2
	.value	0x28e
	.byte	0x1
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ca
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x28e
	.byte	0x32
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF179
	.byte	0x2
	.value	0x258
	.byte	0x1
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x12b0
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x258
	.byte	0x22
	.long	0x2ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x258
	.byte	0x2d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x259
	.byte	0x1c
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x259
	.byte	0x28
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"i"
	.byte	0x2
	.value	0x25b
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.long	.LASF180
	.byte	0x2
	.value	0x25c
	.byte	0x11
	.long	0x12b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"val"
	.byte	0x2
	.value	0x25d
	.byte	0x10
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF181
	.byte	0x2
	.value	0x25e
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.uleb128 0x29
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x25
	.string	"j"
	.byte	0x2
	.value	0x27a
	.byte	0x14
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x25
	.string	"c"
	.byte	0x2
	.value	0x27c
	.byte	0x1d
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x49
	.long	0x12c0
	.uleb128 0xb
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.long	.LASF182
	.byte	0x2
	.value	0x24c
	.byte	0x1
	.long	0x74a
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x12f3
	.uleb128 0x28
	.string	"ch"
	.byte	0x2
	.value	0x24c
	.byte	0xd
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF183
	.byte	0x2
	.value	0x244
	.byte	0x1
	.long	0x65
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x1337
	.uleb128 0x28
	.string	"len"
	.byte	0x2
	.value	0x244
	.byte	0x11
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF168
	.byte	0x2
	.value	0x247
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF184
	.byte	0x2
	.value	0x210
	.byte	0x1
	.long	0x74a
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x13cb
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x210
	.byte	0x30
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x211
	.byte	0x29
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x211
	.byte	0x34
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x212
	.byte	0x23
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x212
	.byte	0x30
	.long	0x8f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF169
	.byte	0x2
	.value	0x214
	.byte	0x8
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x25
	.string	"nib"
	.byte	0x2
	.value	0x215
	.byte	0x10
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF185
	.byte	0x2
	.value	0x207
	.byte	0x1
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x13fb
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x207
	.byte	0x35
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF186
	.byte	0x2
	.value	0x1f9
	.byte	0x1
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x147a
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x1f9
	.byte	0x25
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x1f9
	.byte	0x30
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x1fa
	.byte	0x1f
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x1fa
	.byte	0x2b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x25
	.string	"c"
	.byte	0x2
	.value	0x1fe
	.byte	0x15
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF187
	.byte	0x2
	.value	0x1f1
	.byte	0x1
	.long	0x65
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x14ae
	.uleb128 0x28
	.string	"len"
	.byte	0x2
	.value	0x1f1
	.byte	0x14
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF188
	.byte	0x2
	.value	0x1eb
	.byte	0x1
	.long	0x74a
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e1
	.uleb128 0x28
	.string	"ch"
	.byte	0x2
	.value	0x1eb
	.byte	0x10
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF189
	.byte	0x2
	.value	0x1d0
	.byte	0x1
	.long	0x74a
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1581
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x1d0
	.byte	0x3b
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x1d1
	.byte	0x34
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x1d1
	.byte	0x3f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x1d2
	.byte	0x2e
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x1d2
	.byte	0x3b
	.long	0x8f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"i"
	.byte	0x2
	.value	0x1d6
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.value	0x1d7
	.byte	0x9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"b"
	.byte	0x2
	.value	0x1e2
	.byte	0x8
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x27
	.long	.LASF190
	.byte	0x2
	.value	0x1c8
	.byte	0x1
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x15b1
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x1c8
	.byte	0x40
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF191
	.byte	0x2
	.value	0x1ba
	.byte	0x1
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x1643
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x1ba
	.byte	0x28
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x1ba
	.byte	0x33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x1bb
	.byte	0x22
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x1bb
	.byte	0x2e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF221
	.long	0x1653
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7217
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.value	0x1bf
	.byte	0xe
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xc6
	.long	0x1653
	.uleb128 0xb
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	0x1643
	.uleb128 0x2d
	.long	.LASF192
	.byte	0x2
	.value	0x1b3
	.byte	0x1
	.long	0x74a
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x168b
	.uleb128 0x28
	.string	"ch"
	.byte	0x2
	.value	0x1b3
	.byte	0x13
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF193
	.byte	0x2
	.value	0x17f
	.byte	0x1
	.long	0x74a
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x170d
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x17f
	.byte	0x38
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x180
	.byte	0x31
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x180
	.byte	0x3c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x181
	.byte	0x2b
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x181
	.byte	0x38
	.long	0x8f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"b"
	.byte	0x2
	.value	0x183
	.byte	0x8
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x27
	.long	.LASF194
	.byte	0x2
	.value	0x179
	.byte	0x1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x173d
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x179
	.byte	0x3d
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF195
	.byte	0x2
	.value	0x173
	.byte	0x1
	.long	0x65
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x1771
	.uleb128 0x28
	.string	"len"
	.byte	0x2
	.value	0x173
	.byte	0x1c
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF196
	.byte	0x2
	.value	0x151
	.byte	0x1
	.long	0x74a
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x1811
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x151
	.byte	0x3b
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x152
	.byte	0x34
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x152
	.byte	0x3f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x153
	.byte	0x2e
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x153
	.byte	0x3b
	.long	0x8f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"i"
	.byte	0x2
	.value	0x159
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.value	0x15a
	.byte	0x9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"b"
	.byte	0x2
	.value	0x169
	.byte	0x8
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x27
	.long	.LASF197
	.byte	0x2
	.value	0x149
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1841
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x149
	.byte	0x40
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF198
	.byte	0x2
	.value	0x142
	.byte	0x1
	.long	0x74a
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1874
	.uleb128 0x28
	.string	"ch"
	.byte	0x2
	.value	0x142
	.byte	0x13
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF199
	.byte	0x2
	.value	0x131
	.byte	0x1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x18e1
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x131
	.byte	0x28
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x131
	.byte	0x33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x132
	.byte	0x22
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x132
	.byte	0x2e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"p"
	.byte	0x2
	.value	0x136
	.byte	0x9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF200
	.byte	0x2
	.value	0x126
	.byte	0x1
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x1921
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x126
	.byte	0x2c
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x126
	.byte	0x38
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF201
	.byte	0x2
	.value	0x11f
	.byte	0x1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x1951
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x11f
	.byte	0x29
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF202
	.byte	0x2
	.value	0x115
	.byte	0x1
	.long	0x74a
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x19d3
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x115
	.byte	0x38
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"in"
	.byte	0x2
	.value	0x116
	.byte	0x31
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.value	0x116
	.byte	0x3c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"out"
	.byte	0x2
	.value	0x117
	.byte	0x2b
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.value	0x117
	.byte	0x38
	.long	0x8f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"b"
	.byte	0x2
	.value	0x119
	.byte	0x8
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x27
	.long	.LASF203
	.byte	0x2
	.value	0x10f
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a03
	.uleb128 0x28
	.string	"ctx"
	.byte	0x2
	.value	0x10f
	.byte	0x3d
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF204
	.byte	0x2
	.value	0x109
	.byte	0x1
	.long	0x65
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a37
	.uleb128 0x28
	.string	"len"
	.byte	0x2
	.value	0x109
	.byte	0x1c
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF206
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a65
	.uleb128 0x31
	.long	.LASF207
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.LASF208
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b0a
	.uleb128 0x24
	.long	.LASF209
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x32
	.long	.LASF210
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1ac0
	.uleb128 0x33
	.long	.LASF209
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2c3
	.byte	0
	.uleb128 0x33
	.long	.LASF211
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2c3
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x1a95
	.uleb128 0x22
	.long	.LASF210
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x1b1a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF211
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	.LASF212
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1b1f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	.LASF213
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xa
	.long	0x1ac0
	.long	0x1b1a
	.uleb128 0xb
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x1b0a
	.uleb128 0x7
	.byte	0x8
	.long	0x1ac0
	.uleb128 0x34
	.long	.LASF214
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF215
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x17
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
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF82:
	.string	"exit_failure"
.LASF10:
	.string	"__off_t"
.LASF5:
	.string	"short int"
.LASF139:
	.string	"base16"
.LASF99:
	.string	"locale_quoting_style"
.LASF27:
	.string	"_chain"
.LASF98:
	.string	"escape_quoting_style"
.LASF33:
	.string	"_shortbuf"
.LASF88:
	.string	"GETOPT_VERSION_CHAR"
.LASF220:
	.string	"quoting_style"
.LASF6:
	.string	"size_t"
.LASF193:
	.string	"base32_decode_ctx_wrapper"
.LASF110:
	.string	"FADVISE_DONTNEED"
.LASF146:
	.string	"base32_norm_to_hex"
.LASF119:
	.string	"BASE32_OPTION"
.LASF162:
	.string	"wrap_write"
.LASF92:
	.string	"shell_quoting_style"
.LASF87:
	.string	"GETOPT_HELP_CHAR"
.LASF21:
	.string	"_IO_buf_base"
.LASF58:
	.string	"long long unsigned int"
.LASF141:
	.string	"base_decode_context"
.LASF192:
	.string	"isbase32hex"
.LASF157:
	.string	"base_type"
.LASF152:
	.string	"input_fh"
.LASF155:
	.string	"ignore_garbage"
.LASF36:
	.string	"_codecvt"
.LASF70:
	.string	"__timezone"
.LASF54:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF165:
	.string	"cols_remaining"
.LASF221:
	.string	"__PRETTY_FUNCTION__"
.LASF209:
	.string	"program"
.LASF128:
	.string	"isbase"
.LASF170:
	.string	"base2msbf_decode_ctx"
.LASF91:
	.string	"literal_quoting_style"
.LASF28:
	.string	"_fileno"
.LASF166:
	.string	"to_write"
.LASF16:
	.string	"_IO_read_end"
.LASF120:
	.string	"BASE32HEX_OPTION"
.LASF76:
	.string	"sys_siglist"
.LASF8:
	.string	"long int"
.LASF118:
	.string	"BASE64URL_OPTION"
.LASF125:
	.string	"long_options"
.LASF182:
	.string	"isz85"
.LASF186:
	.string	"base16_encode"
.LASF153:
	.string	"infile"
.LASF190:
	.string	"base32hex_decode_ctx_init_wrapper"
.LASF215:
	.string	"emit_stdin_note"
.LASF37:
	.string	"_wide_data"
.LASF142:
	.string	"inbuf"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF80:
	.string	"program_invocation_short_name"
.LASF96:
	.string	"c_quoting_style"
.LASF45:
	.string	"_IO_codecvt"
.LASF196:
	.string	"base64url_decode_ctx_wrapper"
.LASF175:
	.string	"base2_length"
.LASF53:
	.string	"_sys_errlist"
.LASF143:
	.string	"bufsize"
.LASF115:
	.string	"base32_decode_context"
.LASF79:
	.string	"program_invocation_name"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF172:
	.string	"base2_decode_ctx_init"
.LASF138:
	.string	"base32"
.LASF167:
	.string	"inlen"
.LASF85:
	.string	"TIMESPEC_HZ"
.LASF7:
	.string	"__uint32_t"
.LASF95:
	.string	"shell_escape_always_quoting_style"
.LASF11:
	.string	"__off64_t"
.LASF73:
	.string	"timezone"
.LASF179:
	.string	"z85_encode"
.LASF90:
	.string	"program_name"
.LASF44:
	.string	"_IO_marker"
.LASF47:
	.string	"stdin"
.LASF123:
	.string	"BASE2LSBF_OPTION"
.LASF1:
	.string	"unsigned int"
.LASF204:
	.string	"base64_length_wrapper"
.LASF187:
	.string	"base16_length"
.LASF93:
	.string	"shell_always_quoting_style"
.LASF84:
	.string	"uintmax_t"
.LASF19:
	.string	"_IO_write_ptr"
.LASF57:
	.string	"_gl_cxxalias_dummy"
.LASF185:
	.string	"base16_decode_ctx_init"
.LASF72:
	.string	"daylight"
.LASF50:
	.string	"sys_nerr"
.LASF65:
	.string	"name"
.LASF74:
	.string	"getdate_err"
.LASF216:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF181:
	.string	"outidx"
.LASF3:
	.string	"short unsigned int"
.LASF176:
	.string	"isbase2"
.LASF106:
	.string	"error_one_per_line"
.LASF171:
	.string	"base2lsbf_decode_ctx"
.LASF81:
	.string	"Version"
.LASF160:
	.string	"do_encode"
.LASF148:
	.string	"z85_encoding"
.LASF23:
	.string	"_IO_save_base"
.LASF180:
	.string	"quad"
.LASF78:
	.string	"environ"
.LASF149:
	.string	"z85_decoding"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF48:
	.string	"stdout"
.LASF108:
	.string	"FADVISE_SEQUENTIAL"
.LASF147:
	.string	"base32_hex_to_norm"
.LASF156:
	.string	"wrap_column"
.LASF89:
	.string	"version_etc_copyright"
.LASF177:
	.string	"z85_decode_ctx"
.LASF195:
	.string	"base32_length_wrapper"
.LASF188:
	.string	"isbase16"
.LASF59:
	.string	"optarg"
.LASF184:
	.string	"base16_decode_ctx"
.LASF203:
	.string	"base64_decode_ctx_init_wrapper"
.LASF55:
	.string	"long double"
.LASF20:
	.string	"_IO_write_end"
.LASF60:
	.string	"optind"
.LASF154:
	.string	"decode"
.LASF202:
	.string	"base64_decode_ctx_wrapper"
.LASF15:
	.string	"_IO_read_ptr"
.LASF121:
	.string	"BASE16_OPTION"
.LASF219:
	.string	"_IO_lock_t"
.LASF63:
	.string	"_IO_FILE"
.LASF104:
	.string	"error_print_progname"
.LASF212:
	.string	"map_prog"
.LASF77:
	.string	"__environ"
.LASF56:
	.string	"time_t"
.LASF183:
	.string	"z85_length"
.LASF133:
	.string	"z85_decode_context"
.LASF174:
	.string	"base2msbf_encode"
.LASF197:
	.string	"base64url_decode_ctx_init_wrapper"
.LASF26:
	.string	"_markers"
.LASF161:
	.string	"current_column"
.LASF159:
	.string	"do_decode"
.LASF189:
	.string	"base32hex_decode_ctx_wrapper"
.LASF97:
	.string	"c_maybe_quoting_style"
.LASF86:
	.string	"LOG10_TIMESPEC_HZ"
.LASF127:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF211:
	.string	"node"
.LASF191:
	.string	"base32hex_encode"
.LASF137:
	.string	"base64"
.LASF199:
	.string	"base64url_encode"
.LASF64:
	.string	"option"
.LASF129:
	.string	"base_encode"
.LASF217:
	.string	"src/basenc.c"
.LASF67:
	.string	"flag"
.LASF52:
	.string	"_sys_nerr"
.LASF32:
	.string	"_vtable_offset"
.LASF71:
	.string	"tzname"
.LASF43:
	.string	"FILE"
.LASF135:
	.string	"base2_decode_context"
.LASF112:
	.string	"FADVISE_RANDOM"
.LASF94:
	.string	"shell_escape_quoting_style"
.LASF164:
	.string	"written"
.LASF109:
	.string	"FADVISE_NOREUSE"
.LASF102:
	.string	"quoting_style_args"
.LASF62:
	.string	"optopt"
.LASF83:
	.string	"uint32_t"
.LASF0:
	.string	"long unsigned int"
.LASF13:
	.string	"char"
.LASF151:
	.string	"argv"
.LASF103:
	.string	"quoting_style_vals"
.LASF122:
	.string	"BASE2MSBF_OPTION"
.LASF12:
	.string	"__time_t"
.LASF100:
	.string	"clocale_quoting_style"
.LASF132:
	.string	"have_nibble"
.LASF150:
	.string	"argc"
.LASF163:
	.string	"buffer"
.LASF61:
	.string	"opterr"
.LASF144:
	.string	"base_decode_ctx_init"
.LASF9:
	.string	"__uintmax_t"
.LASF107:
	.string	"FADVISE_NORMAL"
.LASF113:
	.string	"quoting_options"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF126:
	.string	"base_length"
.LASF75:
	.string	"_sys_siglist"
.LASF124:
	.string	"Z85_OPTION"
.LASF210:
	.string	"infomap"
.LASF66:
	.string	"has_arg"
.LASF206:
	.string	"usage"
.LASF40:
	.string	"__pad5"
.LASF173:
	.string	"base2lsbf_encode"
.LASF158:
	.string	"outbuf"
.LASF42:
	.string	"_unused2"
.LASF49:
	.string	"stderr"
.LASF136:
	.string	"octet"
.LASF200:
	.string	"prepare_inbuf"
.LASF145:
	.string	"base_decode_ctx"
.LASF69:
	.string	"__daylight"
.LASF207:
	.string	"status"
.LASF218:
	.string	"/root/coreutils"
.LASF51:
	.string	"sys_errlist"
.LASF198:
	.string	"isbase64url"
.LASF134:
	.string	"octets"
.LASF39:
	.string	"_freeres_buf"
.LASF14:
	.string	"_flags"
.LASF169:
	.string	"ignore_lines"
.LASF117:
	.string	"BASE64_OPTION"
.LASF24:
	.string	"_IO_backup_base"
.LASF101:
	.string	"custom_quoting_style"
.LASF105:
	.string	"error_message_count"
.LASF213:
	.string	"lc_messages"
.LASF194:
	.string	"base32_decode_ctx_init_wrapper"
.LASF178:
	.string	"z85_decode_ctx_init"
.LASF38:
	.string	"_freeres_list"
.LASF46:
	.string	"_IO_wide_data"
.LASF111:
	.string	"FADVISE_WILLNEED"
.LASF168:
	.string	"outlen"
.LASF114:
	.string	"quote_quoting_options"
.LASF140:
	.string	"base2"
.LASF214:
	.string	"emit_mandatory_arg_note"
.LASF68:
	.string	"__tzname"
.LASF205:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
.LASF208:
	.string	"emit_ancillary_info"
.LASF131:
	.string	"nibble"
.LASF130:
	.string	"base16_decode_context"
.LASF116:
	.string	"base64_decode_context"
.LASF201:
	.string	"init_inbuf"
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
