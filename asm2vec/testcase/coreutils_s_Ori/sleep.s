	.file	"sleep.c"
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
	.align 8
.LC18:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC19:
	.ascii	"Usage: %s NUMBER[SUFFIX]...\n  or:  %s O"
	.string	"PTION\nPause for NUMBER seconds.  SUFFIX may be 's' for seconds (the default),\n'm' for minutes, 'h' for hours or 'd' for days.  NUMBER need not be an\ninteger.  Given two or more arguments, pause for the amount of time\nspecified by the sum of their values.\n\n"
	.align 8
.LC20:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC21:
	.string	"      --version  output version information and exit\n"
.LC22:
	.string	"sleep"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/sleep.c"
	.loc 2 39 1 is_stmt 1
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
	.loc 2 40 6
	cmpl	$0, -20(%rbp)
	je	.L11
	.loc 2 41 5
	movq	program_name(%rip), %rbx
	leaq	.LC18(%rip), %rdi
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
	.loc 2 44 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 44 15
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	.loc 2 44 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 54 7
	movq	stdout(%rip), %rbx
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 55 7
	movq	stdout(%rip), %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 56 7
	leaq	.LC22(%rip), %rdi
	call	emit_ancillary_info
.L12:
	.loc 2 58 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	apply_suffix, @function
apply_suffix:
.LFB47:
	.loc 2 69 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	.loc 2 72 3
	movsbl	-28(%rbp), %eax
	cmpl	$115, %eax
	je	.L14
	cmpl	$115, %eax
	jg	.L15
	cmpl	$109, %eax
	je	.L16
	cmpl	$109, %eax
	jg	.L15
	cmpl	$104, %eax
	je	.L17
	cmpl	$104, %eax
	jg	.L15
	testl	%eax, %eax
	je	.L14
	cmpl	$100, %eax
	je	.L18
	jmp	.L15
.L14:
	.loc 2 76 18
	movl	$1, -4(%rbp)
	.loc 2 77 7
	jmp	.L19
.L16:
	.loc 2 79 18
	movl	$60, -4(%rbp)
	.loc 2 80 7
	jmp	.L19
.L17:
	.loc 2 82 18
	movl	$3600, -4(%rbp)
	.loc 2 83 7
	jmp	.L19
.L18:
	.loc 2 85 18
	movl	$86400, -4(%rbp)
	.loc 2 86 7
	jmp	.L19
.L15:
	.loc 2 88 14
	movl	$0, %eax
	jmp	.L20
.L19:
	.loc 2 91 6
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1
	cvtsi2sdl	-4(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	.loc 2 93 10
	movl	$1, %eax
.L20:
	.loc 2 94 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	apply_suffix, .-apply_suffix
	.section	.rodata
.LC24:
	.string	"/usr/local/share/locale"
.LC25:
	.string	"Paul Eggert"
.LC26:
	.string	"Jim Meyering"
.LC27:
	.string	"missing operand"
.LC28:
	.string	"invalid time interval %s"
.LC29:
	.string	"cannot read realtime clock"
	.text
	.globl	main
	.type	main, @function
main:
.LFB48:
	.loc 2 98 1
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
	.loc 2 98 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 99 10
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	.loc 2 100 8
	movb	$1, -53(%rbp)
	.loc 2 103 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 104 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 105 3
	leaq	.LC24(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 106 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 108 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 110 3
	movq	Version(%rip), %rcx
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	pushq	$0
	leaq	.LC25(%rip), %rdx
	pushq	%rdx
	leaq	.LC26(%rip), %rdx
	pushq	%rdx
	leaq	usage(%rip), %rdx
	pushq	%rdx
	movl	$1, %r9d
	movq	%rcx, %r8
	leaq	.LC11(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	parse_gnu_standard_options_only@PLT
	addq	$32, %rsp
	.loc 2 114 6
	cmpl	$1, -68(%rbp)
	jne	.L22
	.loc 2 116 20
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	.loc 2 116 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 117 7
	movl	$1, %edi
	call	usage
.L22:
.LBB2:
	.loc 2 120 12
	movl	optind(%rip), %eax
	movl	%eax, -52(%rbp)
	.loc 2 120 3
	jmp	.L23
.L28:
.LBB3:
	.loc 2 124 27
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 124 14
	movq	(%rax), %rax
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	cl_strtod@GOTPCREL(%rip), %rcx
	movq	%rax, %rdi
	call	xstrtod@PLT
	xorl	$1, %eax
	.loc 2 124 10
	testb	%al, %al
	je	.L24
	.loc 2 124 54 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 124 11 discriminator 1
	cmpl	$34, %eax
	jne	.L25
.L24:
	.loc 2 126 19
	movsd	-48(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	setnb	%al
	.loc 2 126 14
	xorl	$1, %eax
	.loc 2 126 11
	testb	%al, %al
	jne	.L25
	.loc 2 128 15
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 128 11
	testb	%al, %al
	je	.L26
	.loc 2 128 24 discriminator 1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 2 128 21 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 128 18 discriminator 1
	testb	%al, %al
	jne	.L25
.L26:
	.loc 2 130 34
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 130 16
	movsbl	%al, %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apply_suffix
	.loc 2 130 14
	xorl	$1, %eax
	.loc 2 130 11
	testb	%al, %al
	je	.L27
.L25:
	.loc 2 132 66
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 132 11
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 132 24
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	.loc 2 132 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 133 14
	movb	$0, -53(%rbp)
.L27:
	.loc 2 136 15 discriminator 2
	movsd	-48(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBE3:
	.loc 2 120 35 discriminator 2
	addl	$1, -52(%rbp)
.L23:
	.loc 2 120 3 discriminator 1
	movl	-52(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L28
.LBE2:
	.loc 2 139 7
	movzbl	-53(%rbp), %eax
	xorl	$1, %eax
	.loc 2 139 6
	testb	%al, %al
	je	.L29
	.loc 2 140 5
	movl	$1, %edi
	call	usage
.L29:
	.loc 2 142 7
	movq	-32(%rbp), %rax
	movq	%rax, %xmm0
	call	xnanosleep@PLT
	.loc 2 142 6
	testl	%eax, %eax
	je	.L30
.LBB4:
	.loc 2 143 5
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
.L30:
.LBE4:
	.loc 2 145 10
	movl	$0, %eax
	.loc 2 146 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "./lib/sys/select.h"
	.file 10 "/usr/include/time.h"
	.file 11 "/usr/include/signal.h"
	.file 12 "/usr/include/unistd.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/errno.h"
	.file 15 "src/version.h"
	.file 16 "./lib/exitfail.h"
	.file 17 "./lib/version-etc.h"
	.file 18 "./lib/progname.h"
	.file 19 "./lib/quotearg.h"
	.file 20 "./lib/error.h"
	.file 21 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x72c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF110
	.byte	0xc
	.long	.LASF111
	.long	.LASF112
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
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x96
	.uleb128 0x9
	.long	.LASF105
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x229
	.uleb128 0xa
	.long	.LASF11
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x90
	.byte	0x58
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x242
	.byte	0x60
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x248
	.byte	0x68
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x78
	.byte	0x78
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x24e
	.byte	0x83
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x25e
	.byte	0x88
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x84
	.byte	0x90
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x269
	.byte	0x98
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x274
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x248
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x27a
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xa2
	.uleb128 0xb
	.long	.LASF113
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF41
	.uleb128 0x7
	.byte	0x8
	.long	0x23d
	.uleb128 0x7
	.byte	0x8
	.long	0xa2
	.uleb128 0xd
	.long	0x96
	.long	0x25e
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x235
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x7
	.byte	0x8
	.long	0x264
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x26f
	.uleb128 0xd
	.long	0x96
	.long	0x28a
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x9d
	.uleb128 0x8
	.long	0x28a
	.uleb128 0xf
	.long	.LASF44
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2a1
	.uleb128 0x7
	.byte	0x8
	.long	0x229
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF47
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x290
	.long	0x2d6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2cb
	.uleb128 0xf
	.long	.LASF48
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2d6
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2d6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF51
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF52
	.uleb128 0x11
	.long	.LASF53
	.byte	0x9
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0xd
	.long	0x90
	.long	0x331
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF55
	.byte	0xa
	.byte	0x9f
	.byte	0xe
	.long	0x321
	.uleb128 0xf
	.long	.LASF56
	.byte	0xa
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF57
	.byte	0xa
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF58
	.byte	0xa
	.byte	0xa6
	.byte	0xe
	.long	0x321
	.uleb128 0xf
	.long	.LASF59
	.byte	0xa
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF61
	.byte	0xa
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x386
	.uleb128 0xd
	.long	0x290
	.long	0x39d
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x38d
	.uleb128 0x11
	.long	.LASF62
	.byte	0xb
	.value	0x11e
	.byte	0x1a
	.long	0x39d
	.uleb128 0x11
	.long	.LASF63
	.byte	0xb
	.value	0x11f
	.byte	0x1a
	.long	0x39d
	.uleb128 0x11
	.long	.LASF64
	.byte	0xc
	.value	0x21f
	.byte	0xf
	.long	0x3c9
	.uleb128 0x7
	.byte	0x8
	.long	0x90
	.uleb128 0x11
	.long	.LASF65
	.byte	0xc
	.value	0x221
	.byte	0xf
	.long	0x3c9
	.uleb128 0xf
	.long	.LASF66
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF67
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF70
	.byte	0xe
	.byte	0x2d
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF71
	.byte	0xe
	.byte	0x2e
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF72
	.byte	0xf
	.byte	0x1
	.byte	0x14
	.long	0x28a
	.uleb128 0xf
	.long	.LASF73
	.byte	0x10
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0xd
	.long	0x9d
	.long	0x447
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x43c
	.uleb128 0xf
	.long	.LASF74
	.byte	0x11
	.byte	0x19
	.byte	0x13
	.long	0x447
	.uleb128 0xf
	.long	.LASF75
	.byte	0x12
	.byte	0x20
	.byte	0x14
	.long	0x28a
	.uleb128 0x13
	.long	.LASF114
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x20
	.byte	0x6
	.long	0x4b9
	.uleb128 0x14
	.long	.LASF76
	.byte	0
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.uleb128 0x14
	.long	.LASF78
	.byte	0x2
	.uleb128 0x14
	.long	.LASF79
	.byte	0x3
	.uleb128 0x14
	.long	.LASF80
	.byte	0x4
	.uleb128 0x14
	.long	.LASF81
	.byte	0x5
	.uleb128 0x14
	.long	.LASF82
	.byte	0x6
	.uleb128 0x14
	.long	.LASF83
	.byte	0x7
	.uleb128 0x14
	.long	.LASF84
	.byte	0x8
	.uleb128 0x14
	.long	.LASF85
	.byte	0x9
	.uleb128 0x14
	.long	.LASF86
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x464
	.uleb128 0x11
	.long	.LASF87
	.byte	0x13
	.value	0x10b
	.byte	0x1a
	.long	0x2d6
	.uleb128 0xd
	.long	0x4b9
	.long	0x4d6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x4cb
	.uleb128 0x11
	.long	.LASF88
	.byte	0x13
	.value	0x10c
	.byte	0x21
	.long	0x4d6
	.uleb128 0xf
	.long	.LASF89
	.byte	0x14
	.byte	0x32
	.byte	0xf
	.long	0x387
	.uleb128 0xf
	.long	.LASF90
	.byte	0x14
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF91
	.byte	0x14
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF92
	.uleb128 0xf
	.long	.LASF93
	.byte	0x15
	.byte	0x19
	.byte	0x1f
	.long	0x50c
	.uleb128 0x15
	.long	.LASF101
	.byte	0x2
	.byte	0x61
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x5df
	.uleb128 0x16
	.long	.LASF94
	.byte	0x2
	.byte	0x61
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x16
	.long	.LASF95
	.byte	0x2
	.byte	0x61
	.byte	0x18
	.long	0x3c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.long	.LASF96
	.byte	0x2
	.byte	0x63
	.byte	0xa
	.long	0x5df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"ok"
	.byte	0x2
	.byte	0x64
	.byte	0x8
	.long	0x5e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x19
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x5cd
	.uleb128 0x18
	.string	"i"
	.byte	0x2
	.byte	0x78
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x18
	.string	"s"
	.byte	0x2
	.byte	0x7a
	.byte	0xe
	.long	0x5df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"p"
	.byte	0x2
	.byte	0x7b
	.byte	0x13
	.long	0x28a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF97
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF98
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.long	0x5e6
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x63b
	.uleb128 0x1d
	.string	"x"
	.byte	0x2
	.byte	0x44
	.byte	0x17
	.long	0x63b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF99
	.byte	0x2
	.byte	0x44
	.byte	0x1f
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.long	.LASF100
	.byte	0x2
	.byte	0x46
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5df
	.uleb128 0x1e
	.long	.LASF102
	.byte	0x2
	.byte	0x26
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x66f
	.uleb128 0x16
	.long	.LASF103
	.byte	0x2
	.byte	0x26
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1f
	.long	.LASF116
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x714
	.uleb128 0x20
	.long	.LASF104
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x21
	.long	.LASF106
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x6ca
	.uleb128 0x22
	.long	.LASF104
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x28a
	.byte	0
	.uleb128 0x22
	.long	.LASF107
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x28a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x69f
	.uleb128 0x23
	.long	.LASF106
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x724
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	.LASF107
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	.LASF108
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x729
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.long	.LASF109
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x6ca
	.long	0x724
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x714
	.uleb128 0x7
	.byte	0x8
	.long	0x6ca
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.string	"shell_escape_always_quoting_style"
.LASF66:
	.string	"optarg"
.LASF27:
	.string	"_old_offset"
.LASF75:
	.string	"program_name"
.LASF102:
	.string	"usage"
.LASF88:
	.string	"quoting_style_vals"
.LASF100:
	.string	"multiplier"
.LASF47:
	.string	"sys_nerr"
.LASF22:
	.string	"_IO_save_end"
.LASF17:
	.string	"_IO_write_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF113:
	.string	"_IO_lock_t"
.LASF32:
	.string	"_offset"
.LASF55:
	.string	"__tzname"
.LASF16:
	.string	"_IO_write_ptr"
.LASF101:
	.string	"main"
.LASF115:
	.string	"apply_suffix"
.LASF99:
	.string	"suffix_char"
.LASF36:
	.string	"_freeres_buf"
.LASF64:
	.string	"__environ"
.LASF23:
	.string	"_markers"
.LASF63:
	.string	"sys_siglist"
.LASF60:
	.string	"timezone"
.LASF79:
	.string	"shell_escape_quoting_style"
.LASF59:
	.string	"daylight"
.LASF104:
	.string	"program"
.LASF50:
	.string	"_sys_errlist"
.LASF87:
	.string	"quoting_style_args"
.LASF46:
	.string	"stderr"
.LASF69:
	.string	"optopt"
.LASF51:
	.string	"long long int"
.LASF109:
	.string	"lc_messages"
.LASF112:
	.string	"/root/coreutils"
.LASF92:
	.string	"quoting_options"
.LASF57:
	.string	"__timezone"
.LASF31:
	.string	"_lock"
.LASF56:
	.string	"__daylight"
.LASF6:
	.string	"long int"
.LASF61:
	.string	"getdate_err"
.LASF83:
	.string	"escape_quoting_style"
.LASF28:
	.string	"_cur_column"
.LASF90:
	.string	"error_message_count"
.LASF107:
	.string	"node"
.LASF49:
	.string	"_sys_nerr"
.LASF95:
	.string	"argv"
.LASF85:
	.string	"clocale_quoting_style"
.LASF105:
	.string	"_IO_FILE"
.LASF52:
	.string	"long double"
.LASF70:
	.string	"program_invocation_name"
.LASF2:
	.string	"unsigned char"
.LASF77:
	.string	"shell_quoting_style"
.LASF18:
	.string	"_IO_buf_base"
.LASF94:
	.string	"argc"
.LASF93:
	.string	"quote_quoting_options"
.LASF4:
	.string	"signed char"
.LASF89:
	.string	"error_print_progname"
.LASF54:
	.string	"long long unsigned int"
.LASF65:
	.string	"environ"
.LASF41:
	.string	"_IO_marker"
.LASF30:
	.string	"_shortbuf"
.LASF13:
	.string	"_IO_read_end"
.LASF114:
	.string	"quoting_style"
.LASF15:
	.string	"_IO_write_base"
.LASF39:
	.string	"_unused2"
.LASF74:
	.string	"version_etc_copyright"
.LASF12:
	.string	"_IO_read_ptr"
.LASF25:
	.string	"_fileno"
.LASF62:
	.string	"_sys_siglist"
.LASF19:
	.string	"_IO_buf_end"
.LASF103:
	.string	"status"
.LASF96:
	.string	"seconds"
.LASF81:
	.string	"c_quoting_style"
.LASF10:
	.string	"char"
.LASF67:
	.string	"optind"
.LASF91:
	.string	"error_one_per_line"
.LASF78:
	.string	"shell_always_quoting_style"
.LASF34:
	.string	"_wide_data"
.LASF35:
	.string	"_freeres_list"
.LASF108:
	.string	"map_prog"
.LASF72:
	.string	"Version"
.LASF98:
	.string	"_Bool"
.LASF37:
	.string	"__pad5"
.LASF3:
	.string	"short unsigned int"
.LASF71:
	.string	"program_invocation_short_name"
.LASF0:
	.string	"long unsigned int"
.LASF97:
	.string	"double"
.LASF9:
	.string	"__off64_t"
.LASF76:
	.string	"literal_quoting_style"
.LASF8:
	.string	"__off_t"
.LASF58:
	.string	"tzname"
.LASF24:
	.string	"_chain"
.LASF84:
	.string	"locale_quoting_style"
.LASF43:
	.string	"_IO_wide_data"
.LASF110:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF116:
	.string	"emit_ancillary_info"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF29:
	.string	"_vtable_offset"
.LASF33:
	.string	"_codecvt"
.LASF20:
	.string	"_IO_save_base"
.LASF48:
	.string	"sys_errlist"
.LASF53:
	.string	"_gl_cxxalias_dummy"
.LASF68:
	.string	"opterr"
.LASF73:
	.string	"exit_failure"
.LASF40:
	.string	"FILE"
.LASF1:
	.string	"unsigned int"
.LASF82:
	.string	"c_maybe_quoting_style"
.LASF11:
	.string	"_flags"
.LASF86:
	.string	"custom_quoting_style"
.LASF45:
	.string	"stdout"
.LASF42:
	.string	"_IO_codecvt"
.LASF106:
	.string	"infomap"
.LASF111:
	.string	"src/sleep.c"
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
