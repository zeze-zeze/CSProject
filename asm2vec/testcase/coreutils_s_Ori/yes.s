	.file	"yes.c"
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
	.section	.rodata
	.align 8
.LC18:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC19:
	.string	"Usage: %s [STRING]...\n  or:  %s OPTION\n"
	.align 8
.LC20:
	.string	"Repeatedly output a line with all specified STRING(s), or 'y'.\n\n"
	.align 8
.LC21:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC22:
	.string	"      --version  output version information and exit\n"
.LC23:
	.string	"yes"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/yes.c"
	.loc 2 36 1
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
	.loc 2 37 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 38 5
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
	jmp	.L14
.L13:
	.loc 2 41 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 41 15
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	.loc 2 41 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 47 7
	movq	stdout(%rip), %rbx
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 51 7
	movq	stdout(%rip), %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 52 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 53 7
	leaq	.LC23(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 55 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC24:
	.string	"/usr/local/share/locale"
.LC25:
	.string	"David MacKenzie"
.LC26:
	.string	"y"
.LC27:
	.string	"standard output"
	.text
	.globl	main
	.type	main, @function
main:
.LFB47:
	.loc 2 60 1
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
	.loc 2 62 3
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 63 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 64 3
	leaq	.LC24(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 65 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 67 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 69 3
	movq	Version(%rip), %rcx
	movq	-128(%rbp), %rsi
	movl	-116(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC25(%rip), %rdx
	pushq	%rdx
	leaq	usage(%rip), %rdx
	pushq	%rdx
	movl	$1, %r9d
	movq	%rcx, %r8
	leaq	.LC11(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	parse_gnu_standard_options_only@PLT
	addq	$32, %rsp
	.loc 2 73 26
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 73 10
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 2 74 29
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 74 10
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	.loc 2 75 14
	movl	optind(%rip), %eax
	.loc 2 75 6
	cmpl	%eax, -116(%rbp)
	jne	.L16
	.loc 2 76 17
	movq	-96(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -96(%rbp)
	.loc 2 76 22
	leaq	.LC26(%rip), %rdi
	call	bad_cast
	.loc 2 76 20
	movq	%rax, (%rbx)
.L16:
	.loc 2 80 10
	movq	$0, -88(%rbp)
	.loc 2 81 8
	movb	$1, -97(%rbp)
	.loc 2 82 10
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
.L18:
.LBB2:
	.loc 2 85 28
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -48(%rbp)
	.loc 2 86 16
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	.loc 2 87 20
	movq	-80(%rbp), %rax
	addq	$8, %rax
	.loc 2 87 10
	cmpq	%rax, -96(%rbp)
	jbe	.L17
	.loc 2 88 14
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 88 38
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	addq	%rax, %rdx
	.loc 2 88 53
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	.loc 2 88 11
	cmpq	%rax, %rdx
	je	.L17
	.loc 2 89 31
	movb	$0, -97(%rbp)
.L17:
.LBE2:
	.loc 2 91 3
	addq	$8, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L18
	.loc 2 94 6
	cmpq	$4096, -88(%rbp)
	ja	.L19
	.loc 2 96 16
	movq	$8192, -88(%rbp)
	.loc 2 97 29
	movb	$0, -97(%rbp)
.L19:
	.loc 2 102 49
	cmpb	$0, -97(%rbp)
	je	.L20
	.loc 2 102 49 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L21
.L20:
	.loc 2 102 51 is_stmt 1 discriminator 2
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
.L21:
	.loc 2 102 9 discriminator 4
	movq	%rax, -40(%rbp)
	.loc 2 103 10 discriminator 4
	movq	$0, -72(%rbp)
	.loc 2 104 12 discriminator 4
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
.L23:
.LBB3:
	.loc 2 107 28
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	.loc 2 108 11
	movzbl	-97(%rbp), %eax
	xorl	$1, %eax
	.loc 2 108 10
	testb	%al, %al
	je	.L22
	.loc 2 109 9
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 109 21
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx
	addq	%rdx, %rcx
	.loc 2 109 9
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L22:
	.loc 2 110 15
	movq	-32(%rbp), %rax
	addq	%rax, -72(%rbp)
	.loc 2 111 18
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 2 111 10
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 111 22
	movb	$32, (%rax)
.LBE3:
	.loc 2 113 3
	addq	$8, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L23
	.loc 2 114 6
	movq	-72(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 114 20
	movb	$10, (%rax)
	.loc 2 118 10
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB4:
	.loc 2 119 15
	movq	-88(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, -64(%rbp)
	.loc 2 119 3
	jmp	.L24
.L25:
	.loc 2 121 19
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 121 7
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 2 122 15
	movq	-24(%rbp), %rax
	addq	%rax, -72(%rbp)
.L24:
	.loc 2 119 3 discriminator 1
	subq	$1, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L25
.LBE4:
	.loc 2 126 9
	jmp	.L26
.L27:
	.loc 2 127 5
	nop
.L26:
	.loc 2 126 10
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	full_write@PLT
	.loc 2 126 9
	cmpq	%rax, -72(%rbp)
	je	.L27
	.loc 2 128 20
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 128 13
	call	__errno_location@PLT
	.loc 2 128 3
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 129 10
	movl	$1, %eax
	.loc 2 130 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
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
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x75d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF113
	.byte	0xc
	.long	.LASF114
	.long	.LASF115
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
	.long	.LASF108
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
	.long	.LASF116
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
	.long	.LASF117
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
	.uleb128 0x15
	.long	.LASF104
	.byte	0x2
	.byte	0x3b
	.byte	0x1
	.long	0x65
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x639
	.uleb128 0x16
	.long	.LASF92
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x16
	.long	.LASF93
	.byte	0x2
	.byte	0x3b
	.byte	0x18
	.long	0x3c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x17
	.long	.LASF94
	.byte	0x2
	.byte	0x49
	.byte	0xa
	.long	0x3c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.long	.LASF95
	.byte	0x2
	.byte	0x4a
	.byte	0xa
	.long	0x3c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.long	.LASF96
	.byte	0x2
	.byte	0x50
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.long	.LASF97
	.byte	0x2
	.byte	0x51
	.byte	0x8
	.long	0x639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x17
	.long	.LASF98
	.byte	0x2
	.byte	0x52
	.byte	0xa
	.long	0x3c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.string	"buf"
	.byte	0x2
	.byte	0x66
	.byte	0x9
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF99
	.byte	0x2
	.byte	0x67
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.long	.LASF100
	.byte	0x2
	.byte	0x76
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x5f1
	.uleb128 0x17
	.long	.LASF101
	.byte	0x2
	.byte	0x55
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x616
	.uleb128 0x17
	.long	.LASF101
	.byte	0x2
	.byte	0x6b
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x17
	.long	.LASF102
	.byte	0x2
	.byte	0x77
	.byte	0xf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF103
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x2
	.byte	0x23
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x66e
	.uleb128 0x16
	.long	.LASF106
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x1
	.value	0x2ba
	.byte	0x1
	.long	0x90
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a0
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x2ba
	.byte	0x17
	.long	0x28a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF119
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x745
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x20
	.long	.LASF109
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x6fb
	.uleb128 0x21
	.long	.LASF107
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x28a
	.byte	0
	.uleb128 0x21
	.long	.LASF110
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x28a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x6d0
	.uleb128 0x22
	.long	.LASF109
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x755
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF110
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	.LASF111
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x75a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	.LASF112
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x6fb
	.long	0x755
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x745
	.uleb128 0x7
	.byte	0x8
	.long	0x6fb
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
.LASF65:
	.string	"environ"
.LASF75:
	.string	"program_name"
.LASF105:
	.string	"usage"
.LASF88:
	.string	"quoting_style_vals"
.LASF47:
	.string	"sys_nerr"
.LASF22:
	.string	"_IO_save_end"
.LASF3:
	.string	"short unsigned int"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF116:
	.string	"_IO_lock_t"
.LASF32:
	.string	"_offset"
.LASF55:
	.string	"__tzname"
.LASF16:
	.string	"_IO_write_ptr"
.LASF104:
	.string	"main"
.LASF18:
	.string	"_IO_buf_base"
.LASF101:
	.string	"operand_len"
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
.LASF59:
	.string	"daylight"
.LASF95:
	.string	"operand_lim"
.LASF107:
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
.LASF112:
	.string	"lc_messages"
.LASF115:
	.string	"/root/coreutils"
.LASF57:
	.string	"__timezone"
.LASF31:
	.string	"_lock"
.LASF102:
	.string	"copies"
.LASF6:
	.string	"long int"
.LASF61:
	.string	"getdate_err"
.LASF76:
	.string	"literal_quoting_style"
.LASF83:
	.string	"escape_quoting_style"
.LASF28:
	.string	"_cur_column"
.LASF90:
	.string	"error_message_count"
.LASF98:
	.string	"operandp"
.LASF110:
	.string	"node"
.LASF49:
	.string	"_sys_nerr"
.LASF93:
	.string	"argv"
.LASF85:
	.string	"clocale_quoting_style"
.LASF108:
	.string	"_IO_FILE"
.LASF52:
	.string	"long double"
.LASF70:
	.string	"program_invocation_name"
.LASF2:
	.string	"unsigned char"
.LASF77:
	.string	"shell_quoting_style"
.LASF45:
	.string	"stdout"
.LASF92:
	.string	"argc"
.LASF4:
	.string	"signed char"
.LASF89:
	.string	"error_print_progname"
.LASF54:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned int"
.LASF41:
	.string	"_IO_marker"
.LASF30:
	.string	"_shortbuf"
.LASF13:
	.string	"_IO_read_end"
.LASF117:
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
.LASF114:
	.string	"src/yes.c"
.LASF19:
	.string	"_IO_buf_end"
.LASF106:
	.string	"status"
.LASF79:
	.string	"shell_escape_quoting_style"
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
.LASF111:
	.string	"map_prog"
.LASF72:
	.string	"Version"
.LASF103:
	.string	"_Bool"
.LASF37:
	.string	"__pad5"
.LASF100:
	.string	"copysize"
.LASF118:
	.string	"bad_cast"
.LASF56:
	.string	"__daylight"
.LASF97:
	.string	"reuse_operand_strings"
.LASF71:
	.string	"program_invocation_short_name"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF94:
	.string	"operands"
.LASF99:
	.string	"bufused"
.LASF58:
	.string	"tzname"
.LASF24:
	.string	"_chain"
.LASF84:
	.string	"locale_quoting_style"
.LASF43:
	.string	"_IO_wide_data"
.LASF113:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF8:
	.string	"__off_t"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF119:
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
.LASF82:
	.string	"c_maybe_quoting_style"
.LASF11:
	.string	"_flags"
.LASF96:
	.string	"bufalloc"
.LASF42:
	.string	"_IO_codecvt"
.LASF109:
	.string	"infomap"
.LASF86:
	.string	"custom_quoting_style"
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
