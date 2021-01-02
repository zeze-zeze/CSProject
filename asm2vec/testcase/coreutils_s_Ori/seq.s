	.file	"seq.c"
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
	.local	locale_ok
	.comm	locale_ok,1,1
	.local	equal_width
	.comm	equal_width,1,1
	.local	separator
	.comm	separator,8,8
	.section	.rodata
	.type	terminator, @object
	.size	terminator, 2
terminator:
	.string	"\n"
.LC19:
	.string	"equal-width"
.LC20:
	.string	"format"
.LC21:
	.string	"separator"
.LC22:
	.string	"help"
.LC23:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 192
long_options:
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	115
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
	.align 8
.LC24:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC25:
	.string	"Usage: %s [OPTION]... LAST\n  or:  %s [OPTION]... FIRST LAST\n  or:  %s [OPTION]... FIRST INCREMENT LAST\n"
	.align 8
.LC26:
	.string	"Print numbers from FIRST to LAST, in steps of INCREMENT.\n"
	.align 8
.LC27:
	.string	"  -f, --format=FORMAT      use printf style floating-point FORMAT\n  -s, --separator=STRING   use STRING to separate numbers (default: \\n)\n  -w, --equal-width        equalize width by padding with leading zeroes\n"
	.align 8
.LC28:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC29:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC30:
	.ascii	"\nIf FIRST or INCREMENT is omitted, it defaults to 1.  That "
	.ascii	"is, an\nomitted INCREMENT defaults to 1 even when LAST is sm"
	.ascii	"aller than FIRST.\nThe sequence of numbers ends when the sum"
	.ascii	" of the current number and\nINCREMENT would become greater t"
	.ascii	"han LAST.\nFIRST, INC"
	.string	"REMENT, and LAST are interpreted as floating point values.\nINCREMENT is usually positive if FIRST is smaller than LAST, and\nINCREMENT is usually negative if FIRST is greater than LAST.\nINCREMENT must not be 0; none of FIRST, INCREMENT and LAST may be NaN.\n"
	.align 8
.LC31:
	.string	"FORMAT must be suitable for printing one argument of type 'double';\nit defaults to %.PRECf if FIRST, INCREMENT, and LAST are all fixed point\ndecimal numbers with maximum precision PREC, and to %g otherwise.\n"
.LC32:
	.string	"seq"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/seq.c"
	.loc 2 75 1 is_stmt 1
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
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -36(%rbp)
	.loc 2 76 6
	cmpl	$0, -36(%rbp)
	je	.L14
	.loc 2 77 5
	movq	program_name(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L15
.L14:
	.loc 2 80 7
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 80 15
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	.loc 2 80 7
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 85 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 89 7
	call	emit_mandatory_arg_note
	.loc 2 91 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 96 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 97 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 98 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 109 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 114 7
	leaq	.LC32(%rip), %rdi
	call	emit_ancillary_info
.L15:
	.loc 2 116 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
	.align 8
.LC33:
	.string	"invalid floating point argument: %s"
.LC34:
	.string	"not-a-number"
.LC35:
	.string	"invalid %s argument: %s"
.LC36:
	.string	"xX"
.LC38:
	.string	"eE"
	.text
	.type	scan_arg, @function
scan_arg:
.LFB47:
	.loc 2 150 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 2 150 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 153 9
	leaq	-64(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	cl_strtold@GOTPCREL(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtold@PLT
	.loc 2 153 7
	xorl	$1, %eax
	.loc 2 153 6
	testb	%al, %al
	je	.L17
	.loc 2 155 7
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 155 20
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	.loc 2 155 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 156 7
	movl	$1, %edi
	call	usage
.L17:
	.loc 2 159 7
	fldt	-64(%rbp)
	fldt	-64(%rbp)
	.loc 2 159 6
	fucomi	%st(1), %st
	jp	.L47
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L46
	jmp	.L44
.L47:
	fstp	%st(0)
	fstp	%st(0)
.L44:
	.loc 2 161 7
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r12
	leaq	.LC34(%rip), %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %rbx
	.loc 2 161 20
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	.loc 2 161 7
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 163 7
	movl	$1, %edi
	call	usage
.L46:
	.loc 2 167 9
	jmp	.L20
.L21:
	.loc 2 168 8
	addq	$1, -112(%rbp)
.L20:
	.loc 2 167 10
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	.loc 2 167 9
	testl	%eax, %eax
	jne	.L21
	.loc 2 167 39 discriminator 1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 167 36 discriminator 1
	cmpb	$43, %al
	je	.L21
	.loc 2 171 13
	movq	$0, -48(%rbp)
	.loc 2 172 17
	movl	$2147483647, -40(%rbp)
	.loc 2 175 31
	movq	-112(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -72(%rbp)
	.loc 2 176 6
	cmpq	$0, -72(%rbp)
	jne	.L22
	.loc 2 176 28 discriminator 1
	movq	-112(%rbp), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 176 23 discriminator 1
	testq	%rax, %rax
	jne	.L22
	.loc 2 177 19
	movl	$0, -40(%rbp)
.L22:
	.loc 2 180 13
	movq	-112(%rbp), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	.loc 2 180 12
	movq	-112(%rbp), %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 180 6
	testb	%al, %al
	jne	.L23
	.loc 2 180 37 discriminator 1
	fldt	-64(%rbp)
	fldz
	fmulp	%st, %st(1)
	.loc 2 180 34 discriminator 1
	fldz
	fucomip	%st(1), %st
	jp	.L48
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L23
.LBB2:
	.loc 2 182 14
	movq	$0, -96(%rbp)
	.loc 2 183 19
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 183 17
	movq	%rax, -48(%rbp)
	.loc 2 185 10
	cmpq	$0, -72(%rbp)
	je	.L25
	.loc 2 187 26
	movq	-72(%rbp), %rax
	addq	$1, %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	movq	%rax, -96(%rbp)
	.loc 2 188 14
	movl	$2147483648, %eax
	cmpq	%rax, -96(%rbp)
	jnb	.L26
	.loc 2 189 27
	movq	-96(%rbp), %rax
	movl	%eax, -40(%rbp)
.L26:
	.loc 2 190 21
	movq	-48(%rbp), %rdx
	.loc 2 192 25
	cmpq	$0, -96(%rbp)
	je	.L27
	.loc 2 193 28
	movq	-72(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L28
	.loc 2 193 33 discriminator 2
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 193 28 discriminator 2
	cmpl	$9, %eax
	jbe	.L29
.L28:
	.loc 2 193 28 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L30
.L29:
	.loc 2 193 28 discriminator 4
	movl	$0, %eax
.L30:
	.loc 2 192 25 is_stmt 1
	cltq
	jmp	.L31
.L27:
	.loc 2 192 25 is_stmt 0 discriminator 1
	movq	$-1, %rax
.L31:
	.loc 2 190 21 is_stmt 1
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
.L25:
	.loc 2 195 23
	movq	-112(%rbp), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -88(%rbp)
	.loc 2 196 10
	cmpq	$0, -88(%rbp)
	jne	.L32
	.loc 2 197 13
	movq	-112(%rbp), %rax
	movl	$69, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -88(%rbp)
.L32:
	.loc 2 198 10
	cmpq	$0, -88(%rbp)
	je	.L23
.LBB3:
	.loc 2 200 27
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movabsq	$-9223372036854775806, %rdx
	cmpq	%rdx, %rax
	jl	.L33
	.loc 2 200 27 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	jmp	.L34
.L33:
	.loc 2 200 27 discriminator 2
	movabsq	$-9223372036854775807, %rax
.L34:
	.loc 2 200 16 is_stmt 1 discriminator 4
	movq	%rax, -80(%rbp)
	.loc 2 201 25 discriminator 4
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	cmpq	$0, -80(%rbp)
	jns	.L35
	.loc 2 201 25 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax
	negl	%eax
	jmp	.L36
.L35:
	.loc 2 202 45 is_stmt 1 discriminator 2
	movl	-40(%rbp), %eax
	cltq
	cmpq	%rax, -80(%rbp)
	cmovle	-80(%rbp), %rax
	.loc 2 201 25 discriminator 2
	negl	%eax
.L36:
	.loc 2 201 25 is_stmt 0 discriminator 4
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	.loc 2 204 21 is_stmt 1 discriminator 4
	movq	-48(%rbp), %rbx
	.loc 2 204 42 discriminator 4
	movq	-88(%rbp), %rax
	subq	-112(%rbp), %rax
	movq	%rax, %r12
	.loc 2 204 24 discriminator 4
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 204 21 discriminator 4
	subq	%rax, %r12
	movq	%r12, %rax
	addq	%rbx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 206 14 discriminator 4
	cmpq	$0, -80(%rbp)
	jns	.L37
	.loc 2 208 18
	cmpq	$0, -72(%rbp)
	je	.L38
	.loc 2 210 42
	movq	-72(%rbp), %rax
	addq	$1, %rax
	.loc 2 210 22
	cmpq	%rax, -88(%rbp)
	jne	.L39
	.loc 2 211 24
	movq	-48(%rbp), %rax
	.loc 2 211 30
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.L39
.L38:
	.loc 2 214 20
	movq	-48(%rbp), %rax
	.loc 2 214 26
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.L39:
	.loc 2 215 24
	negq	-80(%rbp)
	jmp	.L40
.L37:
	.loc 2 219 18
	cmpq	$0, -72(%rbp)
	je	.L41
	.loc 2 219 39 discriminator 1
	movl	-40(%rbp), %eax
	.loc 2 219 33 discriminator 1
	testl	%eax, %eax
	jne	.L41
	.loc 2 219 55 discriminator 2
	cmpq	$0, -96(%rbp)
	je	.L41
	.loc 2 220 20
	movq	-48(%rbp), %rax
	.loc 2 220 26
	subq	$1, %rax
	movq	%rax, -48(%rbp)
.L41:
	.loc 2 221 24
	movq	-80(%rbp), %rdx
	.loc 2 221 27
	movq	-80(%rbp), %rax
	cmpq	%rax, -96(%rbp)
	cmovbe	-96(%rbp), %rax
	.loc 2 221 24
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -80(%rbp)
.L40:
	.loc 2 223 21
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.L23
.L48:
	fstp	%st(0)
.L23:
.LBE3:
.LBE2:
	.loc 2 227 10
	movq	-104(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 2 228 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L43
	call	__stack_chk_fail@PLT
.L43:
	movq	-104(%rbp), %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	scan_arg, .-scan_arg
	.section	.rodata
.LC40:
	.string	"format %s has no %% directive"
.LC41:
	.string	"-+#0 '"
.LC42:
	.string	"0123456789"
.LC43:
	.string	"format %s ends in %%"
.LC44:
	.string	"efgaEFGA"
	.align 8
.LC45:
	.string	"format %s has unknown %%%c directive"
	.align 8
.LC46:
	.string	"format %s has too many %% directives"
	.text
	.type	long_double_format, @function
long_double_format:
.LFB48:
	.loc 2 237 1
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
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 2 239 10
	movq	$0, -56(%rbp)
	.loc 2 240 10
	movq	$0, -48(%rbp)
	.loc 2 244 10
	movq	$0, -64(%rbp)
	.loc 2 244 3
	jmp	.L50
.L54:
	.loc 2 246 15
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 246 10
	testb	%al, %al
	jne	.L51
.LBB4:
	.loc 2 247 9
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L51:
.LBE4:
	.loc 2 249 17
	addq	$1, -56(%rbp)
	.loc 2 244 64
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 244 76
	cmpb	$37, %al
	jne	.L52
	.loc 2 244 76 is_stmt 0 discriminator 2
	movl	$2, %eax
	jmp	.L53
.L52:
	.loc 2 244 76 discriminator 3
	movl	$1, %eax
.L53:
	.loc 2 244 57 is_stmt 1 discriminator 5
	addq	%rax, -64(%rbp)
.L50:
	.loc 2 244 21 discriminator 6
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 244 3 discriminator 6
	cmpb	$37, %al
	jne	.L54
	.loc 2 244 38 discriminator 7
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 244 15 discriminator 7
	cmpb	$37, %al
	je	.L54
	.loc 2 252 4
	addq	$1, -64(%rbp)
	.loc 2 253 8
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	.loc 2 253 5
	addq	%rax, -64(%rbp)
	.loc 2 254 8
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	.loc 2 254 5
	addq	%rax, -64(%rbp)
	.loc 2 255 10
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 255 6
	cmpb	$46, %al
	jne	.L55
	.loc 2 257 8
	addq	$1, -64(%rbp)
	.loc 2 258 12
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	.loc 2 258 9
	addq	%rax, -64(%rbp)
.L55:
	.loc 2 261 26
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 262 15
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 262 9
	cmpb	$76, %al
	sete	%al
	movb	%al, -65(%rbp)
	.loc 2 263 5
	movzbl	-65(%rbp), %eax
	addq	%rax, -64(%rbp)
	.loc 2 264 10
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 264 6
	testb	%al, %al
	jne	.L56
.LBB5:
	.loc 2 265 5
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L56:
.LBE5:
	.loc 2 266 32
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 266 9
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC44(%rip), %rdi
	call	strchr@PLT
	.loc 2 266 6
	testq	%rax, %rax
	jne	.L57
.LBB6:
	.loc 2 267 5
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %r12d
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movl	%r12d, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L57:
.LBE6:
	.loc 2 270 9
	addq	$1, -64(%rbp)
.L64:
	.loc 2 271 12
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 271 8
	cmpb	$37, %al
	jne	.L58
	.loc 2 271 29 discriminator 1
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 271 23 discriminator 1
	cmpb	$37, %al
	je	.L58
.LBB7:
	.loc 2 272 7
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L58:
.LBE7:
	.loc 2 274 17
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 274 13
	testb	%al, %al
	je	.L59
	.loc 2 275 17
	addq	$1, -48(%rbp)
	.loc 2 270 24
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 270 36
	cmpb	$37, %al
	jne	.L62
	jmp	.L65
.L59:
.LBB8:
	.loc 2 278 16
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	.loc 2 279 23
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 280 9
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 281 14
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 281 39
	movb	$76, (%rax)
	.loc 2 283 46
	movzbl	-65(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 282 9
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 282 48
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	.loc 2 282 9
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 2 284 28
	movq	-96(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 285 28
	movq	-96(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 286 16
	movq	-24(%rbp), %rax
	jmp	.L66
.L65:
.LBE8:
	.loc 2 270 36 discriminator 1
	movl	$2, %eax
	jmp	.L63
.L62:
	.loc 2 270 36 is_stmt 0 discriminator 2
	movl	$1, %eax
.L63:
	.loc 2 270 17 is_stmt 1 discriminator 4
	addq	%rax, -64(%rbp)
	.loc 2 271 8 discriminator 4
	jmp	.L64
.L66:
	.loc 2 288 1 discriminator 1
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	long_double_format, .-long_double_format
	.section	.rodata
.LC47:
	.string	"write error"
	.text
	.type	io_error, @function
io_error:
.LFB49:
	.loc 2 292 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 2 294 3
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	.loc 2 295 3
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
	.cfi_endproc
.LFE49:
	.size	io_error, .-io_error
	.section	.rodata
.LC49:
	.string	"C"
	.text
	.type	print_numbers, @function
print_numbers:
.LFB50:
	.loc 2 304 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	.loc 2 304 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 305 48
	fldt	32(%rbp)
	fldz
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L93
	.loc 2 305 48 is_stmt 0 discriminator 1
	fldt	16(%rbp)
	fldt	48(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	jmp	.L71
.L93:
	.loc 2 305 48 discriminator 2
	fldt	48(%rbp)
	fldt	16(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	seta	%al
.L71:
	.loc 2 305 8 is_stmt 1 discriminator 4
	movb	%al, -106(%rbp)
	.loc 2 307 7 discriminator 4
	movzbl	-106(%rbp), %eax
	xorl	$1, %eax
	.loc 2 307 6 discriminator 4
	testb	%al, %al
	je	.L95
.LBB9:
	.loc 2 309 19
	fldt	16(%rbp)
	fstpt	-64(%rbp)
	.loc 2 312 14
	fld1
	fstpt	-48(%rbp)
.L88:
.LBB10:
	.loc 2 314 23
	fldt	-64(%rbp)
	fstpt	-32(%rbp)
	.loc 2 315 15
	movq	-120(%rbp), %rax
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	.loc 2 315 14
	testl	%eax, %eax
	jns	.L73
	.loc 2 316 13
	call	io_error
.L73:
	.loc 2 317 14
	cmpb	$0, -106(%rbp)
	jne	.L96
	.loc 2 319 25
	fldt	-48(%rbp)
	fldt	32(%rbp)
	fmulp	%st, %st(1)
	.loc 2 319 13
	fldt	16(%rbp)
	faddp	%st, %st(1)
	fstpt	-64(%rbp)
	.loc 2 320 47
	fldt	32(%rbp)
	fldz
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L94
	.loc 2 320 47 is_stmt 0 discriminator 1
	fldt	-64(%rbp)
	fldt	48(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	seta	%al
	jmp	.L78
.L94:
	.loc 2 320 47 discriminator 2
	fldt	48(%rbp)
	fldt	-64(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	seta	%al
.L78:
	.loc 2 320 24 is_stmt 1 discriminator 4
	movb	%al, -106(%rbp)
	.loc 2 322 14 discriminator 4
	cmpb	$0, -106(%rbp)
	je	.L79
.LBB11:
	.loc 2 331 20
	movb	$0, -105(%rbp)
	.loc 2 335 19
	movzbl	locale_ok(%rip), %eax
	.loc 2 335 18
	testb	%al, %al
	je	.L80
	.loc 2 336 17
	leaq	.LC49(%rip), %rsi
	movl	$1, %edi
	call	setlocale@PLT
.L80:
	.loc 2 337 26
	movq	-120(%rbp), %rdx
	leaq	-96(%rbp), %rax
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	addq	$16, %rsp
	movl	%eax, -104(%rbp)
	.loc 2 338 19
	movzbl	locale_ok(%rip), %eax
	.loc 2 338 18
	testb	%al, %al
	je	.L81
	.loc 2 339 17
	leaq	.LC17(%rip), %rsi
	movl	$1, %edi
	call	setlocale@PLT
.L81:
	.loc 2 340 18
	cmpl	$0, -104(%rbp)
	jns	.L82
	.loc 2 341 17
	call	xalloc_die@PLT
.L82:
	.loc 2 342 20
	movq	-96(%rbp), %rax
	.loc 2 342 30
	movl	-104(%rbp), %edx
	movslq	%edx, %rcx
	.loc 2 342 38
	movq	-136(%rbp), %rdx
	.loc 2 342 30
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	.loc 2 342 20
	addq	%rdx, %rax
	.loc 2 342 51
	movb	$0, (%rax)
	.loc 2 344 19
	movq	-96(%rbp), %rdx
	.loc 2 344 43
	movq	-144(%rbp), %rax
	.loc 2 344 35
	leaq	(%rdx,%rax), %rdi
	.loc 2 344 19
	leaq	-80(%rbp), %rax
	movq	cl_strtold@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	xstrtold@PLT
	.loc 2 344 18
	testb	%al, %al
	je	.L83
	.loc 2 345 28
	fldt	-80(%rbp)
	.loc 2 345 19
	fldt	48(%rbp)
	fucomip	%st(1), %st
	jp	.L98
	fldt	48(%rbp)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L83
.LBB12:
	.loc 2 347 25
	movq	$0, -88(%rbp)
	.loc 2 348 35
	movq	-120(%rbp), %rdx
	leaq	-88(%rbp), %rax
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	addq	$16, %rsp
	movl	%eax, -100(%rbp)
	.loc 2 349 22
	cmpl	$0, -100(%rbp)
	jns	.L85
	.loc 2 350 21
	call	xalloc_die@PLT
.L85:
	.loc 2 351 25
	movq	-88(%rbp), %rax
	.loc 2 351 36
	movl	-100(%rbp), %edx
	movslq	%edx, %rcx
	.loc 2 351 44
	movq	-136(%rbp), %rdx
	.loc 2 351 36
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	.loc 2 351 25
	addq	%rdx, %rax
	.loc 2 351 57
	movb	$0, (%rax)
	.loc 2 352 41
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 352 38
	testl	%eax, %eax
	setne	%al
	movb	%al, -105(%rbp)
	.loc 2 353 19
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L83
.L98:
	fstp	%st(0)
.L83:
.LBE12:
	.loc 2 356 15
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 357 19
	movzbl	-105(%rbp), %eax
	xorl	$1, %eax
	.loc 2 357 18
	testb	%al, %al
	jne	.L97
.L79:
.LBE11:
	.loc 2 361 15
	movq	stdout(%rip), %rdx
	movq	separator(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 361 14
	cmpl	$-1, %eax
	jne	.L87
	.loc 2 362 13
	call	io_error
.L87:
.LBE10:
	.loc 2 312 22
	fldt	-48(%rbp)
	fld1
	faddp	%st, %st(1)
	fstpt	-48(%rbp)
	.loc 2 313 9
	jmp	.L88
.L96:
.LBB14:
	.loc 2 318 13
	nop
	jmp	.L75
.L97:
.LBB13:
	.loc 2 358 17
	nop
.L75:
.LBE13:
.LBE14:
	.loc 2 365 11
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	leaq	terminator(%rip), %rdi
	call	fputs_unlocked@PLT
	.loc 2 365 10
	cmpl	$-1, %eax
	jne	.L95
	.loc 2 366 9
	call	io_error
.L95:
.LBE9:
	.loc 2 368 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L89
	call	__stack_chk_fail@PLT
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	print_numbers, .-print_numbers
	.section	.rodata
.LC50:
	.string	"%%0%d.%dLf"
.LC51:
	.string	"%%.%dLf"
.LC52:
	.string	"%Lg"
	.text
	.type	get_default_format, @function
get_default_format:
.LFB51:
	.loc 2 373 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 2 376 14
	movl	72(%rbp), %edx
	movl	40(%rbp), %eax
	.loc 2 376 7
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -32(%rbp)
	.loc 2 378 6
	cmpl	$2147483647, -32(%rbp)
	je	.L100
	.loc 2 378 30 discriminator 1
	movl	104(%rbp), %eax
	.loc 2 378 23 discriminator 1
	cmpl	$2147483647, %eax
	je	.L100
	.loc 2 380 11
	movzbl	equal_width(%rip), %eax
	.loc 2 380 10
	testb	%al, %al
	je	.L101
.LBB15:
	.loc 2 383 37
	movq	32(%rbp), %rdx
	.loc 2 383 59
	movl	40(%rbp), %eax
	.loc 2 383 52
	movl	-32(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	.loc 2 383 18
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 385 35
	movq	96(%rbp), %rdx
	.loc 2 385 56
	movl	104(%rbp), %eax
	.loc 2 385 50
	movl	-32(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	.loc 2 385 18
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 386 19
	movl	104(%rbp), %eax
	.loc 2 386 14
	testl	%eax, %eax
	je	.L102
	.loc 2 386 30 discriminator 1
	cmpl	$0, -32(%rbp)
	jne	.L102
	.loc 2 387 23
	subq	$1, -16(%rbp)
.L102:
	.loc 2 388 19
	movl	104(%rbp), %eax
	.loc 2 388 14
	testl	%eax, %eax
	jne	.L103
	.loc 2 388 35 discriminator 1
	cmpl	$0, -32(%rbp)
	je	.L103
	.loc 2 389 23
	addq	$1, -16(%rbp)
.L103:
	.loc 2 390 20
	movl	40(%rbp), %eax
	.loc 2 390 14
	testl	%eax, %eax
	jne	.L104
	.loc 2 390 36 discriminator 1
	cmpl	$0, -32(%rbp)
	je	.L104
	.loc 2 391 24
	addq	$1, -24(%rbp)
.L104:
	.loc 2 392 18
	movq	-24(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	cmovnb	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 393 14
	movl	$2147483648, %eax
	cmpq	%rax, -8(%rbp)
	jnb	.L100
.LBB16:
	.loc 2 395 19
	movq	-8(%rbp), %rax
	movl	%eax, -28(%rbp)
	.loc 2 396 15
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	.LC50(%rip), %rsi
	leaq	format_buf.6320(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 397 22
	leaq	format_buf.6320(%rip), %rax
	jmp	.L105
.L101:
.LBE16:
.LBE15:
	.loc 2 402 11
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC51(%rip), %rsi
	leaq	format_buf.6320(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 403 18
	leaq	format_buf.6320(%rip), %rax
	jmp	.L105
.L100:
	.loc 2 407 10
	leaq	.LC52(%rip), %rax
.L105:
	.loc 2 408 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	get_default_format, .-get_default_format
	.type	incr, @function
incr:
.LFB52:
	.loc 2 415 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 416 9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 417 20
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 417 27
	leaq	-1(%rax), %rdx
	.loc 2 417 9
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
.L109:
	.loc 2 421 12
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 421 18
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, %ecx
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
	.loc 2 421 10
	cmpb	$56, %al
	jle	.L110
	.loc 2 423 12
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 423 15
	movb	$48, (%rax)
	.loc 2 425 3
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L109
	.loc 2 426 7
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 426 4
	leaq	-1(%rax), %rdx
	.loc 2 426 12
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 426 7
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 426 12
	movb	$49, (%rax)
	.loc 2 427 5
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 427 3
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L106
.L110:
	.loc 2 422 9
	nop
.L106:
	.loc 2 428 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	incr, .-incr
	.type	cmp, @function
cmp:
.LFB53:
	.loc 2 434 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	.loc 2 435 6
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L112
	.loc 2 436 12
	movl	$-1, %eax
	jmp	.L113
.L112:
	.loc 2 437 6
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L114
	.loc 2 438 12
	movl	$1, %eax
	jmp	.L113
.L114:
	.loc 2 439 11
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
.L113:
	.loc 2 440 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	cmp, .-cmp
	.type	trim_leading_zeros, @function
trim_leading_zeros:
.LFB54:
	.loc 2 446 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 447 15
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 448 9
	jmp	.L116
.L117:
	.loc 2 449 5
	addq	$1, -24(%rbp)
.L116:
	.loc 2 448 10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 448 9
	cmpb	$48, %al
	je	.L117
	.loc 2 452 8
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 452 6
	testb	%al, %al
	jne	.L118
	.loc 2 452 11 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L118
	.loc 2 453 5
	subq	$1, -24(%rbp)
.L118:
	.loc 2 454 10
	movq	-24(%rbp), %rax
	.loc 2 455 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	trim_leading_zeros, .-trim_leading_zeros
	.section	.rodata
.LC53:
	.string	"inf"
	.text
	.type	seq_fast, @function
seq_fast:
.LFB55:
	.loc 2 462 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	.loc 2 462 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 463 14
	movq	-144(%rbp), %rax
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 463 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -114(%rbp)
	.loc 2 467 7
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	trim_leading_zeros
	movq	%rax, -136(%rbp)
	.loc 2 468 7
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	trim_leading_zeros
	movq	%rax, -144(%rbp)
	.loc 2 470 18
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 470 10
	movq	%rax, -112(%rbp)
	.loc 2 471 26
	cmpb	$0, -114(%rbp)
	je	.L121
	.loc 2 471 26 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L122
.L121:
	.loc 2 471 28 is_stmt 1 discriminator 2
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
.L122:
	.loc 2 471 10 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 2 476 21 discriminator 4
	movq	-112(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -24(%rbp)
	cmovnb	-24(%rbp), %rax
	.loc 2 476 10 discriminator 4
	movl	$31, %edx
	cmpq	$31, %rax
	cmovb	%rdx, %rax
	movq	%rax, -96(%rbp)
	.loc 2 481 14 discriminator 4
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -88(%rbp)
	.loc 2 482 13 discriminator 4
	movq	-112(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 2 482 35 discriminator 4
	movq	-112(%rbp), %rax
	movq	-96(%rbp), %rcx
	subq	%rax, %rcx
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 482 13 discriminator 4
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 2 482 9 discriminator 4
	movq	%rax, -104(%rbp)
	.loc 2 485 7 discriminator 4
	movzbl	-114(%rbp), %eax
	xorl	$1, %eax
	.loc 2 485 6 discriminator 4
	testb	%al, %al
	je	.L123
	.loc 2 487 12
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -72(%rbp)
	.loc 2 488 11
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 2 488 33
	movq	-96(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 488 11
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rax, -80(%rbp)
	jmp	.L124
.L123:
	.loc 2 491 12
	movq	$0, -72(%rbp)
	.loc 2 491 7
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.L124:
	.loc 2 493 17
	cmpb	$0, -114(%rbp)
	jne	.L125
	.loc 2 493 20 discriminator 2
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	call	cmp
	.loc 2 493 17 discriminator 2
	testl	%eax, %eax
	jg	.L126
.L125:
	.loc 2 493 17 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L127
.L126:
	.loc 2 493 17 discriminator 4
	movl	$0, %eax
.L127:
	.loc 2 493 8 is_stmt 1 discriminator 6
	movb	%al, -113(%rbp)
	andb	$1, -113(%rbp)
	.loc 2 494 6 discriminator 6
	cmpb	$0, -113(%rbp)
	je	.L128
.LBB17:
	.loc 2 499 25
	movq	-96(%rbp), %rax
	addq	$1, %rax
	addq	%rax, %rax
	.loc 2 499 14
	movl	$8192, %edx
	cmpq	$8192, %rax
	cmovb	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 2 500 19
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -56(%rbp)
	.loc 2 501 19
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 503 13
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 506 14
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy@PLT
	movq	%rax, -40(%rbp)
.L136:
.LBB18:
	.loc 2 511 26
	movq	-152(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 511 11
	jmp	.L129
.L130:
	.loc 2 512 13 discriminator 3
	leaq	-112(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	incr
	.loc 2 511 55 discriminator 3
	subq	$1, -32(%rbp)
.L129:
	.loc 2 511 11 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L130
.LBE18:
	.loc 2 514 15
	movzbl	-114(%rbp), %eax
	xorl	$1, %eax
	.loc 2 514 14
	testb	%al, %al
	je	.L131
	.loc 2 514 28 discriminator 1
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	call	cmp
	.loc 2 514 21 discriminator 1
	testl	%eax, %eax
	jg	.L141
.L131:
	.loc 2 517 21
	movq	separator(%rip), %rdx
	.loc 2 517 16
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	.loc 2 517 21
	movzbl	(%rdx), %edx
	.loc 2 517 19
	movb	%dl, (%rax)
	.loc 2 520 21
	movq	-112(%rbp), %rax
	.loc 2 520 14
	cmpq	%rax, -96(%rbp)
	jne	.L133
	.loc 2 522 24
	salq	-96(%rbp)
	.loc 2 523 20
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	movq	%rax, -88(%rbp)
	.loc 2 524 19
	movq	-112(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-112(%rbp), %rcx
	.loc 2 524 31
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 524 19
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	.loc 2 524 17
	movq	%rax, -104(%rbp)
	.loc 2 526 40
	movq	-96(%rbp), %rax
	addq	$1, %rax
	.loc 2 526 45
	addq	%rax, %rax
	.loc 2 526 18
	cmpq	%rax, -64(%rbp)
	jnb	.L133
.LBB19:
	.loc 2 528 44
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	.loc 2 528 26
	movq	%rax, -16(%rbp)
	.loc 2 529 40
	movq	-96(%rbp), %rax
	addq	$1, %rax
	.loc 2 529 28
	addq	%rax, %rax
	movq	%rax, -64(%rbp)
	.loc 2 530 25
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	movq	%rax, -56(%rbp)
	.loc 2 531 27
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 532 24
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L133:
.LBE19:
	.loc 2 536 18
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy@PLT
	movq	%rax, -40(%rbp)
	.loc 2 539 23
	movq	-112(%rbp), %rax
	notq	%rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 539 14
	cmpq	%rax, -40(%rbp)
	jbe	.L136
	.loc 2 541 19
	movq	stdout(%rip), %rdx
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 541 18
	cmpq	$1, %rax
	je	.L135
	.loc 2 542 17
	call	io_error
.L135:
	.loc 2 543 20
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 511 11
	jmp	.L136
.L141:
	.loc 2 515 13
	nop
	.loc 2 548 12
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 548 15
	movl	$10, %edx
	movb	%dl, (%rax)
	.loc 2 549 11
	movq	stdout(%rip), %rdx
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 549 10
	cmpq	$1, %rax
	je	.L137
	.loc 2 550 9
	call	io_error
.L137:
	.loc 2 552 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L128:
.LBE17:
	.loc 2 555 3
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 556 3
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 557 10
	movzbl	-113(%rbp), %eax
	.loc 2 558 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L139
	call	__stack_chk_fail@PLT
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	seq_fast, .-seq_fast
	.type	all_digits_p, @function
all_digits_p:
.LFB56:
	.loc 2 563 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 564 14
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	.loc 2 565 10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 565 25
	cmpl	$9, %eax
	ja	.L143
	.loc 2 565 33 discriminator 1
	movq	-24(%rbp), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	.loc 2 565 25 discriminator 1
	cmpq	%rax, -8(%rbp)
	jne	.L143
	.loc 2 565 25 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L144
.L143:
	.loc 2 565 25 discriminator 4
	movl	$0, %eax
.L144:
	.loc 2 565 25 discriminator 6
	andl	$1, %eax
	.loc 2 566 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	all_digits_p, .-all_digits_p
	.section	.rodata
.LC54:
	.string	"/usr/local/share/locale"
.LC55:
	.string	"\n"
.LC56:
	.string	"+f:s:w"
.LC57:
	.string	"Ulrich Drepper"
.LC58:
	.string	"missing operand"
.LC59:
	.string	"extra operand %s"
	.align 8
.LC60:
	.string	"format string may not be specified when printing equal width strings"
.LC62:
	.string	"1"
	.align 8
.LC64:
	.string	"invalid Zero increment value: %s"
.LC65:
	.string	"%0.Lf"
	.text
	.globl	main
	.type	main, @function
main:
.LFB57:
	.loc 2 570 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	.loc 2 570 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 572 11
	fld1
	fstpt	-128(%rbp)
	movq	$1, -112(%rbp)
	movl	$0, -104(%rbp)
	.loc 2 573 11
	fld1
	fstpt	-96(%rbp)
	movq	$1, -80(%rbp)
	movl	$0, -72(%rbp)
	.loc 2 575 17
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	.loc 2 578 15
	movq	$0, -168(%rbp)
	.loc 2 581 3
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 582 17
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 582 15
	testq	%rax, %rax
	setne	%al
	.loc 2 582 13
	movb	%al, locale_ok(%rip)
	.loc 2 583 3
	leaq	.LC54(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 584 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 586 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 588 15
	movb	$0, equal_width(%rip)
	.loc 2 589 13
	leaq	.LC55(%rip), %rax
	movq	%rax, separator(%rip)
	.loc 2 594 9
	jmp	.L147
.L157:
	.loc 2 596 15
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 596 23
	movzbl	(%rax), %eax
	.loc 2 596 10
	cmpb	$45, %al
	jne	.L148
	.loc 2 597 27
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 597 35
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 597 21
	movsbl	%al, %eax
	movl	%eax, -192(%rbp)
	.loc 2 597 11
	cmpl	$46, -192(%rbp)
	je	.L149
	.loc 2 597 50 discriminator 1
	movl	-192(%rbp), %eax
	subl	$48, %eax
	.loc 2 597 47 discriminator 1
	cmpl	$9, %eax
	jbe	.L149
.L148:
	.loc 2 603 14
	movq	-224(%rbp), %rsi
	movl	-212(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -192(%rbp)
	.loc 2 604 10
	cmpl	$-1, -192(%rbp)
	je	.L202
	.loc 2 607 7
	cmpl	$119, -192(%rbp)
	je	.L151
	cmpl	$119, -192(%rbp)
	jg	.L152
	cmpl	$115, -192(%rbp)
	je	.L153
	cmpl	$115, -192(%rbp)
	jg	.L152
	cmpl	$102, -192(%rbp)
	je	.L154
	cmpl	$102, -192(%rbp)
	jg	.L152
	cmpl	$-131, -192(%rbp)
	je	.L155
	cmpl	$-130, -192(%rbp)
	je	.L156
	jmp	.L152
.L154:
	.loc 2 610 22
	movq	optarg(%rip), %rax
	movq	%rax, -168(%rbp)
	.loc 2 611 11
	jmp	.L147
.L153:
	.loc 2 614 21
	movq	optarg(%rip), %rax
	movq	%rax, separator(%rip)
	.loc 2 615 11
	jmp	.L147
.L151:
	.loc 2 618 23
	movb	$1, equal_width(%rip)
	.loc 2 619 11
	jmp	.L147
.L156:
	.loc 2 621 9
	movl	$0, %edi
	call	usage
.L155:
	.loc 2 623 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC57(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L152:
	.loc 2 626 11
	movl	$1, %edi
	call	usage
.L147:
	.loc 2 594 17
	movl	optind(%rip), %eax
	.loc 2 594 9
	cmpl	%eax, -212(%rbp)
	jg	.L157
	jmp	.L149
.L202:
	.loc 2 605 9
	nop
.L149:
	.loc 2 630 30
	movl	optind(%rip), %eax
	movl	-212(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 630 16
	movl	%eax, -188(%rbp)
	.loc 2 631 6
	cmpl	$0, -188(%rbp)
	jne	.L158
	.loc 2 633 20
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	.loc 2 633 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 634 7
	movl	$1, %edi
	call	usage
.L158:
	.loc 2 637 6
	cmpl	$3, -188(%rbp)
	jbe	.L159
	.loc 2 639 54
	movl	optind(%rip), %eax
	cltq
	addq	$3, %rax
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 639 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 639 20
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	.loc 2 639 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 640 7
	movl	$1, %edi
	call	usage
.L159:
	.loc 2 643 6
	cmpq	$0, -168(%rbp)
	je	.L160
	.loc 2 644 18
	leaq	-144(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	long_double_format
	movq	%rax, -168(%rbp)
.L160:
	.loc 2 646 6
	cmpq	$0, -168(%rbp)
	je	.L161
	.loc 2 646 26 discriminator 1
	movzbl	equal_width(%rip), %eax
	testb	%al, %al
	je	.L161
	.loc 2 648 20
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	.loc 2 648 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 650 7
	movl	$1, %edi
	call	usage
.L161:
	.loc 2 660 8
	movb	$0, -193(%rbp)
	.loc 2 661 6
	cmpl	$3, -188(%rbp)
	jne	.L162
	.loc 2 662 29
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 662 11
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	all_digits_p
	.loc 2 662 7
	testb	%al, %al
	je	.L163
	.loc 2 663 28
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 663 14
	movq	(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	cl_strtold@GOTPCREL(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtold@PLT
	.loc 2 663 11
	testb	%al, %al
	je	.L163
	.loc 2 664 11
	fldz
	.loc 2 664 22
	fldt	-96(%rbp)
	.loc 2 664 11
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L163
	.loc 2 664 36 discriminator 1
	fldt	-96(%rbp)
	.loc 2 664 29 discriminator 1
	fldt	.LC61(%rip)
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	.L163
.L162:
	.loc 2 665 18
	movb	$1, -193(%rbp)
.L163:
	.loc 2 667 25
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 667 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	all_digits_p
	.loc 2 667 6
	testb	%al, %al
	je	.L166
	.loc 2 668 7
	cmpl	$1, -188(%rbp)
	je	.L167
	.loc 2 668 44 discriminator 1
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 668 26 discriminator 1
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	all_digits_p
	.loc 2 668 23 discriminator 1
	testb	%al, %al
	je	.L166
.L167:
	.loc 2 669 7
	cmpl	$2, -188(%rbp)
	jbe	.L168
	.loc 2 669 22 discriminator 1
	cmpb	$0, -193(%rbp)
	je	.L166
	.loc 2 670 47
	movl	optind(%rip), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 670 29
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	all_digits_p
	.loc 2 670 26
	testb	%al, %al
	je	.L166
.L168:
	.loc 2 671 10
	movzbl	equal_width(%rip), %eax
	xorl	$1, %eax
	.loc 2 671 7
	testb	%al, %al
	je	.L166
	.loc 2 671 23 discriminator 1
	cmpq	$0, -168(%rbp)
	jne	.L166
	.loc 2 671 41 discriminator 2
	movq	separator(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 671 38 discriminator 2
	cmpq	$1, %rax
	jne	.L166
.LBB20:
	.loc 2 673 42
	cmpl	$1, -188(%rbp)
	je	.L169
	.loc 2 673 48 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 673 42 discriminator 1
	movq	(%rax), %rax
	jmp	.L170
.L169:
	.loc 2 673 42 is_stmt 0 discriminator 2
	leaq	.LC62(%rip), %rax
.L170:
	.loc 2 673 19 is_stmt 1 discriminator 4
	movq	%rax, -160(%rbp)
	.loc 2 674 36 discriminator 4
	movl	optind(%rip), %eax
	movl	%eax, %edx
	movl	-188(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	.loc 2 674 28 discriminator 4
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 674 19 discriminator 4
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	.loc 2 675 11 discriminator 4
	fldt	.LC63(%rip)
	.loc 2 675 33 discriminator 4
	fldt	-96(%rbp)
	.loc 2 675 11 discriminator 4
	fcomi	%st(1), %st
	fstp	%st(1)
	jnb	.L171
	fnstcw	-214(%rbp)
	movzwl	-214(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -216(%rbp)
	fldcw	-216(%rbp)
	fistpq	-264(%rbp)
	fldcw	-214(%rbp)
	movq	-264(%rbp), %rdx
	jmp	.L172
.L171:
	fldt	.LC63(%rip)
	fsubrp	%st, %st(1)
	fnstcw	-214(%rbp)
	movzwl	-214(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -216(%rbp)
	fldcw	-216(%rbp)
	fistpq	-264(%rbp)
	fldcw	-214(%rbp)
	movq	-264(%rbp), %rdx
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, %rdx
.L172:
	movq	-152(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	seq_fast
	.loc 2 675 10 discriminator 4
	testb	%al, %al
	je	.L166
	.loc 2 676 16
	movl	$0, %eax
	jmp	.L191
.L166:
.LBE20:
	.loc 2 681 31
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 681 24
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 681 10
	movq	(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	scan_arg
	.loc 2 683 14
	movl	optind(%rip), %eax
	.loc 2 683 6
	cmpl	%eax, -212(%rbp)
	jle	.L174
	.loc 2 685 13
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	.loc 2 686 35
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 686 28
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 686 14
	movq	(%rax), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	scan_arg
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 2 688 18
	movl	optind(%rip), %eax
	.loc 2 688 10
	cmpl	%eax, -212(%rbp)
	jle	.L174
	.loc 2 690 16
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 691 19
	fldt	-96(%rbp)
	.loc 2 691 14
	fldz
	fucomip	%st(1), %st
	jp	.L204
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L175
	.loc 2 694 33
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 693 15
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 693 28
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	.loc 2 693 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 695 15
	movl	$1, %edi
	call	usage
.L204:
	fstp	%st(0)
.L175:
	.loc 2 698 39
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 698 32
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 698 18
	movq	(%rax), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	scan_arg
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
.L174:
	.loc 2 704 12
	movl	-104(%rbp), %eax
	.loc 2 704 6
	testl	%eax, %eax
	jne	.L177
	.loc 2 704 35 discriminator 1
	movl	-72(%rbp), %eax
	.loc 2 704 28 discriminator 1
	testl	%eax, %eax
	jne	.L177
	.loc 2 704 58 discriminator 2
	movl	-40(%rbp), %eax
	.loc 2 704 51 discriminator 2
	testl	%eax, %eax
	jne	.L177
	.loc 2 705 10
	fldt	-128(%rbp)
	fldz
	fmulp	%st, %st(1)
	.loc 2 705 7
	fldz
	fucomip	%st(1), %st
	jp	.L205
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L177
	.loc 2 705 33 discriminator 1
	fldz
	.loc 2 705 46 discriminator 1
	fldt	-128(%rbp)
	.loc 2 705 33 discriminator 1
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	.L177
	.loc 2 705 53 discriminator 2
	fldz
	.loc 2 705 65 discriminator 2
	fldt	-64(%rbp)
	.loc 2 705 53 discriminator 2
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	.L177
	.loc 2 706 7
	fldz
	.loc 2 706 18
	fldt	-96(%rbp)
	.loc 2 706 7
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L177
	.loc 2 706 32 discriminator 1
	fldt	-96(%rbp)
	.loc 2 706 25 discriminator 1
	fldt	.LC61(%rip)
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	.L177
	.loc 2 707 10
	movzbl	equal_width(%rip), %eax
	xorl	$1, %eax
	.loc 2 707 7
	testb	%al, %al
	je	.L177
	.loc 2 707 23 discriminator 1
	cmpq	$0, -168(%rbp)
	jne	.L177
	.loc 2 707 41 discriminator 2
	movq	separator(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 707 38 discriminator 2
	cmpq	$1, %rax
	jne	.L177
.LBB21:
	.loc 2 711 11
	fldt	-128(%rbp)
	leaq	-184(%rbp), %rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	addq	$16, %rsp
	.loc 2 711 10
	testl	%eax, %eax
	jns	.L183
	.loc 2 712 9
	call	xalloc_die@PLT
.L183:
	.loc 2 713 13
	fldt	-64(%rbp)
	fldz
	fmulp	%st, %st(1)
	.loc 2 713 10
	fldz
	fucomip	%st(1), %st
	jp	.L206
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L201
	jmp	.L200
.L206:
	fstp	%st(0)
.L200:
	.loc 2 714 14
	leaq	.LC53(%rip), %rdi
	call	xstrdup@PLT
	.loc 2 714 12
	movq	%rax, -176(%rbp)
	jmp	.L186
.L201:
	.loc 2 715 16
	fldt	-64(%rbp)
	leaq	-176(%rbp), %rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	addq	$16, %rsp
	.loc 2 715 15
	testl	%eax, %eax
	jns	.L186
	.loc 2 716 9
	call	xalloc_die@PLT
.L186:
	.loc 2 718 11
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 718 10
	cmpb	$45, %al
	je	.L187
	.loc 2 718 25 discriminator 1
	movq	-176(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 718 22 discriminator 1
	cmpb	$45, %al
	je	.L187
	.loc 2 718 39 discriminator 2
	fldt	.LC63(%rip)
	.loc 2 718 61 discriminator 2
	fldt	-96(%rbp)
	.loc 2 718 39 discriminator 2
	fcomi	%st(1), %st
	fstp	%st(1)
	jnb	.L188
	fnstcw	-214(%rbp)
	movzwl	-214(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -216(%rbp)
	fldcw	-216(%rbp)
	fistpq	-264(%rbp)
	fldcw	-214(%rbp)
	movq	-264(%rbp), %rdx
	jmp	.L189
.L188:
	fldt	.LC63(%rip)
	fsubrp	%st, %st(1)
	fnstcw	-214(%rbp)
	movzwl	-214(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -216(%rbp)
	fldcw	-216(%rbp)
	fistpq	-264(%rbp)
	fldcw	-214(%rbp)
	movq	-264(%rbp), %rdx
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, %rdx
.L189:
	movq	-176(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	seq_fast
	.loc 2 718 36 discriminator 2
	testb	%al, %al
	je	.L187
	.loc 2 720 11
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 721 11
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 722 18
	movl	$0, %eax
	jmp	.L191
.L187:
	.loc 2 725 7
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 726 7
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L177
.L205:
	fstp	%st(0)
.L177:
.LBE21:
	.loc 2 730 6
	cmpq	$0, -168(%rbp)
	jne	.L190
	.loc 2 731 18
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	pushq	-104(%rbp)
	pushq	-112(%rbp)
	pushq	-120(%rbp)
	pushq	-128(%rbp)
	call	get_default_format
	addq	$96, %rsp
	movq	%rax, -168(%rbp)
.L190:
	.loc 2 733 3
	fldt	-64(%rbp)
	fldt	-96(%rbp)
	fldt	-128(%rbp)
	fxch	%st(2)
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-168(%rbp), %rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_numbers
	addq	$48, %rsp
	.loc 2 735 10
	movl	$0, %eax
.L191:
	.loc 2 736 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L203
	.loc 2 736 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L203:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	main, .-main
	.local	format_buf.6320
	.comm	format_buf.6320,28,16
	.section	.rodata
	.align 16
.LC61:
	.long	0
	.long	3355443200
	.long	16390
	.long	0
	.align 16
.LC63:
	.long	0
	.long	2147483648
	.long	16446
	.long	0
	.text
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
	.file 19 "/usr/include/stdint.h"
	.file 20 "./lib/timespec.h"
	.file 21 "/usr/include/ctype.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/error.h"
	.file 26 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1076
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF189
	.byte	0xc
	.long	.LASF190
	.long	.LASF191
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
	.long	.LASF20
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
	.byte	0x49
	.byte	0x1b
	.long	0xdf
	.uleb128 0xb
	.long	.LASF17
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x10b
	.uleb128 0xb
	.long	.LASF18
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x10b
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x10b
	.uleb128 0x8
	.long	.LASF21
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x2c9
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x2e2
	.byte	0x60
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x2e8
	.byte	0x68
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x11e
	.byte	0x78
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0xf6
	.byte	0x80
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0xfd
	.byte	0x82
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x2ee
	.byte	0x83
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x2fe
	.byte	0x88
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x12a
	.byte	0x90
	.uleb128 0x9
	.long	.LASF44
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x309
	.byte	0x98
	.uleb128 0x9
	.long	.LASF45
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x314
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x2e8
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xed
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xd3
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF50
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x31a
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF51
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x142
	.uleb128 0xd
	.long	.LASF192
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF52
	.uleb128 0x3
	.byte	0x8
	.long	0x2dd
	.uleb128 0x3
	.byte	0x8
	.long	0x142
	.uleb128 0xf
	.long	0x3f
	.long	0x2fe
	.uleb128 0x10
	.long	0xdf
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d5
	.uleb128 0xe
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.long	0x304
	.uleb128 0xe
	.long	.LASF54
	.uleb128 0x3
	.byte	0x8
	.long	0x30f
	.uleb128 0xf
	.long	0x3f
	.long	0x32a
	.uleb128 0x10
	.long	0xdf
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x336
	.uleb128 0x3
	.byte	0x8
	.long	0x2c9
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x336
	.uleb128 0x2
	.long	.LASF57
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x336
	.uleb128 0x2
	.long	.LASF58
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xc8
	.long	0x36b
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x360
	.uleb128 0x2
	.long	.LASF59
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x36b
	.uleb128 0x2
	.long	.LASF60
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF61
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x36b
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF62
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF63
	.uleb128 0xb
	.long	.LASF64
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x136
	.uleb128 0x12
	.long	.LASF65
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF66
	.uleb128 0xf
	.long	0x39
	.long	0x3d2
	.uleb128 0x10
	.long	0xdf
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF67
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3c2
	.uleb128 0x2
	.long	.LASF68
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF69
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x10b
	.uleb128 0x2
	.long	.LASF70
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3c2
	.uleb128 0x2
	.long	.LASF71
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF72
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x10b
	.uleb128 0x12
	.long	.LASF73
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.uleb128 0x3
	.byte	0x8
	.long	0x427
	.uleb128 0xf
	.long	0xc8
	.long	0x43e
	.uleb128 0x10
	.long	0xdf
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x42e
	.uleb128 0x12
	.long	.LASF74
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x43e
	.uleb128 0x12
	.long	.LASF75
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x43e
	.uleb128 0x12
	.long	.LASF76
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x46a
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x12
	.long	.LASF77
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x46a
	.uleb128 0x2
	.long	.LASF78
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF79
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF80
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF81
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xb
	.long	.LASF82
	.byte	0x13
	.byte	0x66
	.byte	0x16
	.long	0x112
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe6
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
	.long	0xe6
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x4e6
	.uleb128 0x16
	.long	.LASF84
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x15
	.byte	0x2f
	.byte	0x1
	.long	0x545
	.uleb128 0x17
	.long	.LASF85
	.value	0x100
	.uleb128 0x17
	.long	.LASF86
	.value	0x200
	.uleb128 0x17
	.long	.LASF87
	.value	0x400
	.uleb128 0x17
	.long	.LASF88
	.value	0x800
	.uleb128 0x17
	.long	.LASF89
	.value	0x1000
	.uleb128 0x17
	.long	.LASF90
	.value	0x2000
	.uleb128 0x17
	.long	.LASF91
	.value	0x4000
	.uleb128 0x17
	.long	.LASF92
	.value	0x8000
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.uleb128 0x16
	.long	.LASF94
	.byte	0x2
	.uleb128 0x16
	.long	.LASF95
	.byte	0x4
	.uleb128 0x16
	.long	.LASF96
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x563
	.uleb128 0x19
	.long	.LASF97
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF98
	.sleb128 -131
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0x56e
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x563
	.uleb128 0x2
	.long	.LASF99
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x56e
	.uleb128 0x2
	.long	.LASF100
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x1a
	.long	.LASF193
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x5e0
	.uleb128 0x16
	.long	.LASF101
	.byte	0
	.uleb128 0x16
	.long	.LASF102
	.byte	0x1
	.uleb128 0x16
	.long	.LASF103
	.byte	0x2
	.uleb128 0x16
	.long	.LASF104
	.byte	0x3
	.uleb128 0x16
	.long	.LASF105
	.byte	0x4
	.uleb128 0x16
	.long	.LASF106
	.byte	0x5
	.uleb128 0x16
	.long	.LASF107
	.byte	0x6
	.uleb128 0x16
	.long	.LASF108
	.byte	0x7
	.uleb128 0x16
	.long	.LASF109
	.byte	0x8
	.uleb128 0x16
	.long	.LASF110
	.byte	0x9
	.uleb128 0x16
	.long	.LASF111
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x58b
	.uleb128 0x12
	.long	.LASF112
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x36b
	.uleb128 0xf
	.long	0x5e0
	.long	0x5fd
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x5f2
	.uleb128 0x12
	.long	.LASF113
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x5fd
	.uleb128 0x2
	.long	.LASF114
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x428
	.uleb128 0x2
	.long	.LASF115
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0xe6
	.uleb128 0x2
	.long	.LASF116
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF117
	.uleb128 0x2
	.long	.LASF118
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x633
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x2
	.byte	0x33
	.byte	0xd
	.long	0x65a
	.uleb128 0x9
	.byte	0x3
	.quad	locale_ok
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF119
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x2
	.byte	0x36
	.byte	0xd
	.long	0x65a
	.uleb128 0x9
	.byte	0x3
	.quad	equal_width
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x2
	.byte	0x39
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	separator
	.uleb128 0xf
	.long	0x46
	.long	0x69d
	.uleb128 0x10
	.long	0xdf
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x68d
	.uleb128 0x1b
	.long	.LASF123
	.byte	0x2
	.byte	0x3d
	.byte	0x13
	.long	0x69d
	.uleb128 0x9
	.byte	0x3
	.quad	terminator
	.uleb128 0xf
	.long	0xbd
	.long	0x6c8
	.uleb128 0x10
	.long	0xdf
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x6b8
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x2
	.byte	0x3f
	.byte	0x1c
	.long	0x6c8
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x8
	.long	.LASF125
	.byte	0x20
	.byte	0x2
	.byte	0x78
	.byte	0x8
	.long	0x718
	.uleb128 0x9
	.long	.LASF126
	.byte	0x2
	.byte	0x7b
	.byte	0xf
	.long	0x39b
	.byte	0
	.uleb128 0x9
	.long	.LASF127
	.byte	0x2
	.byte	0x81
	.byte	0xa
	.long	0xd3
	.byte	0x10
	.uleb128 0x9
	.long	.LASF128
	.byte	0x2
	.byte	0x85
	.byte	0x7
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF125
	.byte	0x2
	.byte	0x87
	.byte	0x18
	.long	0x6e3
	.uleb128 0x8
	.long	.LASF129
	.byte	0x10
	.byte	0x2
	.byte	0x8a
	.byte	0x8
	.long	0x74c
	.uleb128 0x9
	.long	.LASF130
	.byte	0x2
	.byte	0x8d
	.byte	0xa
	.long	0xd3
	.byte	0
	.uleb128 0x9
	.long	.LASF131
	.byte	0x2
	.byte	0x8e
	.byte	0xa
	.long	0xd3
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	.LASF179
	.byte	0x2
	.value	0x239
	.byte	0x1
	.long	0x57
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x882
	.uleb128 0x1d
	.long	.LASF132
	.byte	0x2
	.value	0x239
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x1d
	.long	.LASF133
	.byte	0x2
	.value	0x239
	.byte	0x18
	.long	0x46a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x2
	.value	0x23b
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x2
	.value	0x23c
	.byte	0xb
	.long	0x718
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x2
	.value	0x23d
	.byte	0xb
	.long	0x718
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.long	.LASF137
	.byte	0x2
	.value	0x23e
	.byte	0xb
	.long	0x718
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x2
	.value	0x23f
	.byte	0x11
	.long	0x724
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x2
	.value	0x242
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x2
	.value	0x276
	.byte	0x10
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x1e
	.long	.LASF140
	.byte	0x2
	.value	0x294
	.byte	0x8
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -209
	.uleb128 0x1f
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x84f
	.uleb128 0x20
	.string	"s1"
	.byte	0x2
	.value	0x2a1
	.byte	0x13
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.string	"s2"
	.byte	0x2
	.value	0x2a2
	.byte	0x13
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x21
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x20
	.string	"s1"
	.byte	0x2
	.value	0x2c5
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x20
	.string	"s2"
	.byte	0x2
	.value	0x2c6
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF141
	.byte	0x2
	.value	0x232
	.byte	0x1
	.long	0x65a
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c2
	.uleb128 0x23
	.string	"s"
	.byte	0x2
	.value	0x232
	.byte	0x1b
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"n"
	.byte	0x2
	.value	0x234
	.byte	0xa
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF142
	.byte	0x2
	.value	0x1cd
	.byte	0x1
	.long	0x65a
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xa42
	.uleb128 0x23
	.string	"a"
	.byte	0x2
	.value	0x1cd
	.byte	0x17
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.string	"b"
	.byte	0x2
	.value	0x1cd
	.byte	0x26
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1d
	.long	.LASF136
	.byte	0x2
	.value	0x1cd
	.byte	0x33
	.long	0x4ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x20
	.string	"inf"
	.byte	0x2
	.value	0x1cf
	.byte	0x8
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -130
	.uleb128 0x1e
	.long	.LASF143
	.byte	0x2
	.value	0x1d6
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x2
	.value	0x1d7
	.byte	0xa
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF145
	.byte	0x2
	.value	0x1dc
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.string	"p0"
	.byte	0x2
	.value	0x1e1
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.string	"p"
	.byte	0x2
	.value	0x1e2
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.string	"q"
	.byte	0x2
	.value	0x1e3
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.string	"q0"
	.byte	0x2
	.value	0x1e4
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.string	"ok"
	.byte	0x2
	.value	0x1ed
	.byte	0x8
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.uleb128 0x21
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x2
	.value	0x1f3
	.byte	0xe
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"buf"
	.byte	0x2
	.value	0x1f4
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x2
	.value	0x1f5
	.byte	0x13
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF148
	.byte	0x2
	.value	0x1f7
	.byte	0xd
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0xa1e
	.uleb128 0x1e
	.long	.LASF149
	.byte	0x2
	.value	0x1ff
	.byte	0x1a
	.long	0x4ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x21
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x2
	.value	0x210
	.byte	0x1a
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF151
	.byte	0x2
	.value	0x1bd
	.byte	0x1
	.long	0xc2
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xa82
	.uleb128 0x23
	.string	"s"
	.byte	0x2
	.value	0x1bd
	.byte	0x21
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"p"
	.byte	0x2
	.value	0x1bf
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.string	"cmp"
	.byte	0x2
	.value	0x1b1
	.byte	0x1
	.long	0x57
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xae2
	.uleb128 0x23
	.string	"a"
	.byte	0x2
	.value	0x1b1
	.byte	0x12
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF152
	.byte	0x2
	.value	0x1b1
	.byte	0x1c
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"b"
	.byte	0x2
	.value	0x1b1
	.byte	0x2f
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF153
	.byte	0x2
	.value	0x1b1
	.byte	0x39
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.long	.LASF161
	.byte	0x2
	.value	0x19e
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xb3f
	.uleb128 0x23
	.string	"s0"
	.byte	0x2
	.value	0x19e
	.byte	0xe
	.long	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF154
	.byte	0x2
	.value	0x19e
	.byte	0x1a
	.long	0xb3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"s"
	.byte	0x2
	.value	0x1a0
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x2
	.value	0x1a1
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd3
	.uleb128 0x22
	.long	.LASF156
	.byte	0x2
	.value	0x174
	.byte	0x1
	.long	0xc2
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xc23
	.uleb128 0x1d
	.long	.LASF135
	.byte	0x2
	.value	0x174
	.byte	0x1d
	.long	0x718
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF136
	.byte	0x2
	.value	0x174
	.byte	0x2c
	.long	0x718
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1d
	.long	.LASF137
	.byte	0x2
	.value	0x174
	.byte	0x3a
	.long	0x718
	.uleb128 0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x1e
	.long	.LASF157
	.byte	0x2
	.value	0x176
	.byte	0xf
	.long	0xc23
	.uleb128 0x9
	.byte	0x3
	.quad	format_buf.6320
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x2
	.value	0x178
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x2
	.value	0x17f
	.byte	0x12
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x2
	.value	0x181
	.byte	0x12
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x2
	.value	0x188
	.byte	0x12
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x20
	.string	"w"
	.byte	0x2
	.value	0x18b
	.byte	0x13
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x3f
	.long	0xc33
	.uleb128 0x10
	.long	0xdf
	.byte	0x1b
	.byte	0
	.uleb128 0x27
	.long	.LASF162
	.byte	0x2
	.value	0x12e
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xd78
	.uleb128 0x23
	.string	"fmt"
	.byte	0x2
	.value	0x12e
	.byte	0x1c
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x2
	.value	0x12e
	.byte	0x2f
	.long	0x724
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1d
	.long	.LASF135
	.byte	0x2
	.value	0x12f
	.byte	0x1c
	.long	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF136
	.byte	0x2
	.value	0x12f
	.byte	0x2f
	.long	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1d
	.long	.LASF137
	.byte	0x2
	.value	0x12f
	.byte	0x41
	.long	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1e
	.long	.LASF163
	.byte	0x2
	.value	0x131
	.byte	0x8
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -122
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x20
	.string	"x"
	.byte	0x2
	.value	0x135
	.byte	0x13
	.long	0x39b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"i"
	.byte	0x2
	.value	0x136
	.byte	0x13
	.long	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.Ldebug_ranges0+0
	.uleb128 0x20
	.string	"x0"
	.byte	0x2
	.value	0x13a
	.byte	0x17
	.long	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1e
	.long	.LASF164
	.byte	0x2
	.value	0x14b
	.byte	0x14
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x2
	.value	0x14c
	.byte	0x1b
	.long	0x39b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF166
	.byte	0x2
	.value	0x14d
	.byte	0x15
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x2
	.value	0x14e
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1e
	.long	.LASF168
	.byte	0x2
	.value	0x15b
	.byte	0x19
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.long	.LASF169
	.byte	0x2
	.value	0x15c
	.byte	0x17
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF194
	.byte	0x2
	.value	0x123
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF170
	.byte	0x2
	.byte	0xec
	.byte	0x1
	.long	0xc2
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xe98
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x2
	.byte	0xec
	.byte	0x21
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF129
	.byte	0x2
	.byte	0xec
	.byte	0x35
	.long	0xe98
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.string	"i"
	.byte	0x2
	.byte	0xee
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x2
	.byte	0xef
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x2
	.byte	0xf0
	.byte	0xa
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF171
	.byte	0x2
	.byte	0xf1
	.byte	0xa
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF172
	.byte	0x2
	.byte	0xf2
	.byte	0x8
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x2e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x2
	.value	0x116
	.byte	0x10
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x2
	.value	0x117
	.byte	0xf
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x724
	.uleb128 0x2a
	.long	.LASF175
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.long	0x718
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xf43
	.uleb128 0x2b
	.string	"arg"
	.byte	0x2
	.byte	0x95
	.byte	0x17
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.string	"ret"
	.byte	0x2
	.byte	0x97
	.byte	0xb
	.long	0x718
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF176
	.byte	0x2
	.byte	0xaf
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x2
	.byte	0xb6
	.byte	0xe
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.string	"e"
	.byte	0x2
	.byte	0xc3
	.byte	0x13
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1b
	.long	.LASF178
	.byte	0x2
	.byte	0xc8
	.byte	0x10
	.long	0x10b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF180
	.byte	0x2
	.byte	0x4a
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xf71
	.uleb128 0x2c
	.long	.LASF181
	.byte	0x2
	.byte	0x4a
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x27
	.long	.LASF182
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1016
	.uleb128 0x1d
	.long	.LASF183
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x30
	.long	.LASF184
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xfcc
	.uleb128 0x31
	.long	.LASF183
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x31
	.long	.LASF185
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xfa1
	.uleb128 0x1e
	.long	.LASF184
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x1026
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF185
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF186
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x102b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF187
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xf
	.long	0xfcc
	.long	0x1026
	.uleb128 0x10
	.long	0xdf
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x1016
	.uleb128 0x3
	.byte	0x8
	.long	0xfcc
	.uleb128 0x32
	.long	.LASF195
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF188
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0xef
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x3f
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
	.uleb128 0x23
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x26
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"__off_t"
.LASF13:
	.string	"short int"
.LASF92:
	.string	"_ISgraph"
.LASF20:
	.string	"option"
.LASF158:
	.string	"prec"
.LASF98:
	.string	"GETOPT_VERSION_CHAR"
.LASF193:
	.string	"quoting_style"
.LASF15:
	.string	"size_t"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF41:
	.string	"_shortbuf"
.LASF121:
	.string	"equal_width"
.LASF123:
	.string	"terminator"
.LASF90:
	.string	"_ISspace"
.LASF169:
	.string	"x0_strlen"
.LASF102:
	.string	"shell_quoting_style"
.LASF171:
	.string	"length_modifier_offset"
.LASF97:
	.string	"GETOPT_HELP_CHAR"
.LASF29:
	.string	"_IO_buf_base"
.LASF66:
	.string	"long long unsigned int"
.LASF30:
	.string	"_IO_buf_end"
.LASF150:
	.string	"buf_offset"
.LASF180:
	.string	"usage"
.LASF87:
	.string	"_ISalpha"
.LASF88:
	.string	"_ISdigit"
.LASF140:
	.string	"fast_step_ok"
.LASF62:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF113:
	.string	"quoting_style_vals"
.LASF82:
	.string	"uintmax_t"
.LASF183:
	.string	"program"
.LASF108:
	.string	"escape_quoting_style"
.LASF101:
	.string	"literal_quoting_style"
.LASF36:
	.string	"_fileno"
.LASF148:
	.string	"bufp"
.LASF100:
	.string	"program_name"
.LASF24:
	.string	"_IO_read_end"
.LASF69:
	.string	"__timezone"
.LASF75:
	.string	"sys_siglist"
.LASF14:
	.string	"long int"
.LASF65:
	.string	"_gl_cxxalias_dummy"
.LASF124:
	.string	"long_options"
.LASF160:
	.string	"last_width"
.LASF22:
	.string	"_flags"
.LASF51:
	.string	"FILE"
.LASF45:
	.string	"_wide_data"
.LASF96:
	.string	"_ISalnum"
.LASF39:
	.string	"_cur_column"
.LASF79:
	.string	"program_invocation_short_name"
.LASF106:
	.string	"c_quoting_style"
.LASF53:
	.string	"_IO_codecvt"
.LASF194:
	.string	"io_error"
.LASF156:
	.string	"get_default_format"
.LASF27:
	.string	"_IO_write_ptr"
.LASF78:
	.string	"program_invocation_name"
.LASF38:
	.string	"_old_offset"
.LASF43:
	.string	"_offset"
.LASF93:
	.string	"_ISblank"
.LASF83:
	.string	"TIMESPEC_HZ"
.LASF161:
	.string	"incr"
.LASF105:
	.string	"shell_escape_always_quoting_style"
.LASF72:
	.string	"timezone"
.LASF149:
	.string	"n_incr"
.LASF95:
	.string	"_ISpunct"
.LASF168:
	.string	"x0_str"
.LASF126:
	.string	"value"
.LASF52:
	.string	"_IO_marker"
.LASF55:
	.string	"stdin"
.LASF170:
	.string	"long_double_format"
.LASF130:
	.string	"prefix_len"
.LASF47:
	.string	"_freeres_buf"
.LASF61:
	.string	"_sys_errlist"
.LASF8:
	.string	"long unsigned int"
.LASF178:
	.string	"exponent"
.LASF165:
	.string	"x_val"
.LASF177:
	.string	"fraction_len"
.LASF143:
	.string	"p_len"
.LASF5:
	.string	"name"
.LASF58:
	.string	"sys_nerr"
.LASF127:
	.string	"width"
.LASF73:
	.string	"getdate_err"
.LASF189:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF111:
	.string	"custom_quoting_style"
.LASF11:
	.string	"short unsigned int"
.LASF116:
	.string	"error_one_per_line"
.LASF80:
	.string	"Version"
.LASF137:
	.string	"last"
.LASF31:
	.string	"_IO_save_base"
.LASF173:
	.string	"format_size"
.LASF166:
	.string	"x_str"
.LASF77:
	.string	"environ"
.LASF42:
	.string	"_lock"
.LASF120:
	.string	"locale_ok"
.LASF37:
	.string	"_flags2"
.LASF49:
	.string	"_mode"
.LASF174:
	.string	"ldfmt"
.LASF56:
	.string	"stdout"
.LASF134:
	.string	"optc"
.LASF99:
	.string	"version_etc_copyright"
.LASF44:
	.string	"_codecvt"
.LASF131:
	.string	"suffix_len"
.LASF145:
	.string	"inc_size"
.LASF0:
	.string	"optarg"
.LASF141:
	.string	"all_digits_p"
.LASF146:
	.string	"buf_size"
.LASF1:
	.string	"optind"
.LASF175:
	.string	"scan_arg"
.LASF23:
	.string	"_IO_read_ptr"
.LASF74:
	.string	"_sys_siglist"
.LASF154:
	.string	"s_len"
.LASF192:
	.string	"_IO_lock_t"
.LASF21:
	.string	"_IO_FILE"
.LASF114:
	.string	"error_print_progname"
.LASF153:
	.string	"b_len"
.LASF186:
	.string	"map_prog"
.LASF76:
	.string	"__environ"
.LASF64:
	.string	"time_t"
.LASF162:
	.string	"print_numbers"
.LASF59:
	.string	"sys_errlist"
.LASF34:
	.string	"_markers"
.LASF188:
	.string	"to_uchar"
.LASF107:
	.string	"c_maybe_quoting_style"
.LASF119:
	.string	"_Bool"
.LASF10:
	.string	"unsigned char"
.LASF185:
	.string	"node"
.LASF136:
	.string	"step"
.LASF109:
	.string	"locale_quoting_style"
.LASF35:
	.string	"_chain"
.LASF118:
	.string	"quote_quoting_options"
.LASF122:
	.string	"separator"
.LASF7:
	.string	"flag"
.LASF60:
	.string	"_sys_nerr"
.LASF40:
	.string	"_vtable_offset"
.LASF70:
	.string	"tzname"
.LASF81:
	.string	"exit_failure"
.LASF104:
	.string	"shell_escape_quoting_style"
.LASF151:
	.string	"trim_leading_zeros"
.LASF112:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF71:
	.string	"daylight"
.LASF138:
	.string	"format_str"
.LASF129:
	.string	"layout"
.LASF135:
	.string	"first"
.LASF63:
	.string	"long double"
.LASF2:
	.string	"char"
.LASF103:
	.string	"shell_always_quoting_style"
.LASF9:
	.string	"unsigned int"
.LASF94:
	.string	"_IScntrl"
.LASF19:
	.string	"__time_t"
.LASF128:
	.string	"precision"
.LASF89:
	.string	"_ISxdigit"
.LASF110:
	.string	"clocale_quoting_style"
.LASF86:
	.string	"_ISlower"
.LASF3:
	.string	"opterr"
.LASF172:
	.string	"has_L"
.LASF16:
	.string	"__uintmax_t"
.LASF18:
	.string	"__off64_t"
.LASF117:
	.string	"quoting_options"
.LASF25:
	.string	"_IO_read_base"
.LASF147:
	.string	"buf_end"
.LASF33:
	.string	"_IO_save_end"
.LASF190:
	.string	"src/seq.c"
.LASF184:
	.string	"infomap"
.LASF125:
	.string	"operand"
.LASF6:
	.string	"has_arg"
.LASF155:
	.string	"endp"
.LASF48:
	.string	"__pad5"
.LASF28:
	.string	"_IO_write_end"
.LASF50:
	.string	"_unused2"
.LASF57:
	.string	"stderr"
.LASF133:
	.string	"argv"
.LASF68:
	.string	"__daylight"
.LASF181:
	.string	"status"
.LASF191:
	.string	"/root/coreutils"
.LASF85:
	.string	"_ISupper"
.LASF159:
	.string	"first_width"
.LASF32:
	.string	"_IO_backup_base"
.LASF164:
	.string	"print_extra_number"
.LASF163:
	.string	"out_of_range"
.LASF157:
	.string	"format_buf"
.LASF115:
	.string	"error_message_count"
.LASF187:
	.string	"lc_messages"
.LASF132:
	.string	"argc"
.LASF152:
	.string	"a_len"
.LASF46:
	.string	"_freeres_list"
.LASF54:
	.string	"_IO_wide_data"
.LASF167:
	.string	"x_strlen"
.LASF142:
	.string	"seq_fast"
.LASF195:
	.string	"emit_mandatory_arg_note"
.LASF67:
	.string	"__tzname"
.LASF179:
	.string	"main"
.LASF26:
	.string	"_IO_write_base"
.LASF182:
	.string	"emit_ancillary_info"
.LASF139:
	.string	"n_args"
.LASF91:
	.string	"_ISprint"
.LASF176:
	.string	"decimal_point"
.LASF144:
	.string	"q_len"
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
