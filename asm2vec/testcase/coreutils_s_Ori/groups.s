	.file	"groups.c"
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
	.string	"help"
.LC19:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 96
longopts:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC19
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
.LC20:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC21:
	.string	"Usage: %s [OPTION]... [USERNAME]...\n"
	.align 8
.LC22:
	.string	"Print group memberships for each USERNAME or, if no USERNAME is specified, for\nthe current process (which may differ if the groups database has changed).\n"
	.align 8
.LC23:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC24:
	.string	"      --version  output version information and exit\n"
.LC25:
	.string	"groups"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/groups.c"
	.loc 2 49 1 is_stmt 1
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
	.loc 2 50 6
	cmpl	$0, -20(%rbp)
	je	.L11
	.loc 2 51 5
	movq	program_name(%rip), %rbx
	leaq	.LC20(%rip), %rdi
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
	.loc 2 54 7
	movq	program_name(%rip), %rbx
	.loc 2 54 15
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	.loc 2 54 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 55 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 60 7
	movq	stdout(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 61 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 62 7
	leaq	.LC25(%rip), %rdi
	call	emit_ancillary_info
.L12:
	.loc 2 64 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC26:
	.string	"/usr/local/share/locale"
.LC27:
	.string	"James Youngman"
.LC28:
	.string	"David MacKenzie"
.LC29:
	.string	"cannot get real UID"
.LC30:
	.string	"cannot get effective GID"
.LC31:
	.string	"cannot get real GID"
.LC32:
	.string	"%s: no such user"
.LC33:
	.string	"%s : "
	.text
	.globl	main
	.type	main, @function
main:
.LFB47:
	.loc 2 69 1
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
	.loc 2 71 8
	movb	$1, -49(%rbp)
	.loc 2 76 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 77 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 78 3
	leaq	.LC26(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 79 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 81 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 86 9
	nop
	.loc 2 86 18
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -48(%rbp)
	.loc 2 86 9
	cmpl	$-1, -48(%rbp)
	je	.L30
	.loc 2 88 7
	cmpl	$-131, -48(%rbp)
	je	.L15
	cmpl	$-130, -48(%rbp)
	jne	.L16
	.loc 2 90 9
	movl	$0, %edi
	call	usage
.L15:
	.loc 2 91 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC27(%rip), %r9
	leaq	.LC28(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L16:
	.loc 2 93 11
	movl	$1, %edi
	call	usage
.L30:
	.loc 2 97 14
	movl	optind(%rip), %eax
	.loc 2 97 6
	cmpl	%eax, -68(%rbp)
	jne	.L24
.LBB2:
	.loc 2 100 13
	movl	$-1, -32(%rbp)
	.loc 2 101 13
	movl	$-1, -28(%rbp)
	.loc 2 103 7
	call	__errno_location@PLT
	.loc 2 103 13
	movl	$0, (%rax)
	.loc 2 104 14
	call	getuid@PLT
	movl	%eax, -44(%rbp)
	.loc 2 105 10
	movl	-44(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L19
	.loc 2 105 29 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 105 26 discriminator 1
	testl	%eax, %eax
	je	.L19
.LBB3:
	.loc 2 106 9
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
.L19:
.LBE3:
	.loc 2 108 7
	call	__errno_location@PLT
	.loc 2 108 13
	movl	$0, (%rax)
	.loc 2 109 14
	call	getegid@PLT
	movl	%eax, -40(%rbp)
	.loc 2 110 10
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L20
	.loc 2 110 29 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 110 26 discriminator 1
	testl	%eax, %eax
	je	.L20
.LBB4:
	.loc 2 111 9
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L20:
.LBE4:
	.loc 2 113 7
	call	__errno_location@PLT
	.loc 2 113 13
	movl	$0, (%rax)
	.loc 2 114 14
	call	getgid@PLT
	movl	%eax, -36(%rbp)
	.loc 2 115 10
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L21
	.loc 2 115 29 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 115 26 discriminator 1
	testl	%eax, %eax
	je	.L21
.LBB5:
	.loc 2 116 9
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L21:
.LBE5:
	.loc 2 118 12
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %eax
	movl	$32, %r9d
	movl	$1, %r8d
	movl	%eax, %esi
	movl	$0, %edi
	call	print_group_list@PLT
	.loc 2 118 11
	xorl	$1, %eax
	.loc 2 118 10
	testb	%al, %al
	je	.L22
	.loc 2 119 12
	movb	$0, -49(%rbp)
.L22:
	.loc 2 120 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
.LBE2:
	jmp	.L23
.L28:
.LBB6:
	.loc 2 127 46
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 127 32
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	getpwnam@PLT
	movq	%rax, -24(%rbp)
	.loc 2 128 14
	cmpq	$0, -24(%rbp)
	jne	.L25
	.loc 2 130 62
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 130 15
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 130 28
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 130 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 131 18
	movb	$0, -49(%rbp)
	.loc 2 132 15
	jmp	.L26
.L25:
	.loc 2 134 16
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 2 135 23
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 2 135 16
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	.loc 2 137 32
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 137 11
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 138 38
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 138 16
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %esi
	movl	$32, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	print_group_list@PLT
	.loc 2 138 15
	xorl	$1, %eax
	.loc 2 138 14
	testb	%al, %al
	je	.L27
	.loc 2 139 16
	movb	$0, -49(%rbp)
.L27:
	.loc 2 140 11
	movl	$10, %edi
	call	putchar_unlocked@PLT
.L26:
.LBE6:
	.loc 2 125 36
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L24:
	.loc 2 125 22 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 125 7 discriminator 1
	cmpl	%eax, -68(%rbp)
	jg	.L28
.L23:
	.loc 2 144 28
	movzbl	-49(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 145 1
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
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 11 "./lib/sys/select.h"
	.file 12 "/usr/include/pwd.h"
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
	.long	0x89f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF135
	.byte	0xc
	.long	.LASF136
	.long	.LASF137
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
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x8
	.long	0xba
	.uleb128 0x9
	.long	.LASF61
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x24d
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xb4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xb4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xb4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xb4
	.byte	0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xb4
	.byte	0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xb4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x266
	.byte	0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x26c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x90
	.byte	0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x272
	.byte	0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x282
	.byte	0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x9c
	.byte	0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x28d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x298
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x26c
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x29e
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xc6
	.uleb128 0xb
	.long	.LASF138
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x261
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0xd
	.long	0xba
	.long	0x282
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x259
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x288
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x293
	.uleb128 0xd
	.long	0xba
	.long	0x2ae
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xc1
	.uleb128 0x8
	.long	0x2ae
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2c5
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2c5
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2c5
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2b4
	.long	0x2fa
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2ef
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2fa
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF53
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2fa
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
	.byte	0x40
	.byte	0x11
	.long	0x84
	.uleb128 0x2
	.long	.LASF57
	.byte	0x9
	.byte	0x4f
	.byte	0x11
	.long	0x78
	.uleb128 0x2
	.long	.LASF58
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xa8
	.uleb128 0x11
	.long	.LASF59
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF60
	.uleb128 0x9
	.long	.LASF62
	.byte	0x30
	.byte	0xc
	.byte	0x31
	.byte	0x8
	.long	0x3d2
	.uleb128 0xa
	.long	.LASF63
	.byte	0xc
	.byte	0x33
	.byte	0x9
	.long	0xb4
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0xc
	.byte	0x34
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x36
	.byte	0xb
	.long	0x78
	.byte	0x10
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x37
	.byte	0xb
	.long	0x84
	.byte	0x14
	.uleb128 0xa
	.long	.LASF67
	.byte	0xc
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF68
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF69
	.byte	0xc
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb4
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF74
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x44a
	.uleb128 0xa
	.long	.LASF75
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x2ae
	.byte	0
	.uleb128 0xa
	.long	.LASF76
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF77
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x44f
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
	.long	0x408
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0xb4
	.long	0x465
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF78
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x455
	.uleb128 0xf
	.long	.LASF79
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF80
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF81
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x455
	.uleb128 0xf
	.long	.LASF82
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF83
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF84
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x4ba
	.uleb128 0xd
	.long	0x2b4
	.long	0x4d1
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x4c1
	.uleb128 0x11
	.long	.LASF85
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x4d1
	.uleb128 0x11
	.long	.LASF86
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x4d1
	.uleb128 0x11
	.long	.LASF87
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x3d2
	.uleb128 0x11
	.long	.LASF88
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x3d2
	.uleb128 0xf
	.long	.LASF89
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF90
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF91
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x2ae
	.uleb128 0xf
	.long	.LASF92
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
	.long	0x552
	.uleb128 0x15
	.long	.LASF93
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x567
	.uleb128 0x16
	.long	.LASF94
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x585
	.uleb128 0x18
	.long	.LASF95
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF96
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xc1
	.long	0x590
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x585
	.uleb128 0xf
	.long	.LASF97
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x590
	.uleb128 0xf
	.long	.LASF98
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x2ae
	.uleb128 0x19
	.long	.LASF139
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x602
	.uleb128 0x16
	.long	.LASF99
	.byte	0
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.uleb128 0x16
	.long	.LASF101
	.byte	0x2
	.uleb128 0x16
	.long	.LASF102
	.byte	0x3
	.uleb128 0x16
	.long	.LASF103
	.byte	0x4
	.uleb128 0x16
	.long	.LASF104
	.byte	0x5
	.uleb128 0x16
	.long	.LASF105
	.byte	0x6
	.uleb128 0x16
	.long	.LASF106
	.byte	0x7
	.uleb128 0x16
	.long	.LASF107
	.byte	0x8
	.uleb128 0x16
	.long	.LASF108
	.byte	0x9
	.uleb128 0x16
	.long	.LASF109
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x5ad
	.uleb128 0x11
	.long	.LASF110
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x2fa
	.uleb128 0xd
	.long	0x602
	.long	0x61f
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x614
	.uleb128 0x11
	.long	.LASF111
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x61f
	.uleb128 0xf
	.long	.LASF112
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x4bb
	.uleb128 0xf
	.long	.LASF113
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF114
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF115
	.uleb128 0xf
	.long	.LASF116
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x655
	.uleb128 0xd
	.long	0x44a
	.long	0x676
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x666
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.long	0x676
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1b
	.long	.LASF127
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.long	0x65
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a7
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x2
	.byte	0x44
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x2
	.byte	0x44
	.byte	0x18
	.long	0x3d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x2
	.byte	0x46
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"ok"
	.byte	0x2
	.byte	0x47
	.byte	0x8
	.long	0x7a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x2
	.byte	0x48
	.byte	0x9
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x2
	.byte	0x48
	.byte	0xf
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x2
	.byte	0x49
	.byte	0x9
	.long	0x33d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x785
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x2
	.byte	0x64
	.byte	0xd
	.long	0x33d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x2
	.byte	0x65
	.byte	0xd
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1d
	.string	"pwd"
	.byte	0x2
	.byte	0x7f
	.byte	0x1a
	.long	0x7ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF126
	.uleb128 0x7
	.byte	0x8
	.long	0x369
	.uleb128 0x21
	.long	.LASF128
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e2
	.uleb128 0x1c
	.long	.LASF129
	.byte	0x2
	.byte	0x30
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF140
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x887
	.uleb128 0x23
	.long	.LASF130
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.long	.LASF131
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x83d
	.uleb128 0x25
	.long	.LASF130
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2ae
	.byte	0
	.uleb128 0x25
	.long	.LASF132
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2ae
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x812
	.uleb128 0x26
	.long	.LASF131
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x897
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF132
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF133
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x89c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.long	.LASF134
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x83d
	.long	0x897
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x887
	.uleb128 0x7
	.byte	0x8
	.long	0x83d
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
.LASF92:
	.string	"exit_failure"
.LASF10:
	.string	"__off_t"
.LASF9:
	.string	"__gid_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF107:
	.string	"locale_quoting_style"
.LASF27:
	.string	"_chain"
.LASF96:
	.string	"GETOPT_VERSION_CHAR"
.LASF119:
	.string	"longopts"
.LASF139:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF94:
	.string	"LOG10_TIMESPEC_HZ"
.LASF33:
	.string	"_shortbuf"
.LASF66:
	.string	"pw_gid"
.LASF100:
	.string	"shell_quoting_style"
.LASF95:
	.string	"GETOPT_HELP_CHAR"
.LASF21:
	.string	"_IO_buf_base"
.LASF123:
	.string	"ruid"
.LASF60:
	.string	"long long unsigned int"
.LASF36:
	.string	"_codecvt"
.LASF69:
	.string	"pw_shell"
.LASF80:
	.string	"__timezone"
.LASF54:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF111:
	.string	"quoting_style_vals"
.LASF130:
	.string	"program"
.LASF106:
	.string	"escape_quoting_style"
.LASF99:
	.string	"literal_quoting_style"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF86:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF59:
	.string	"_gl_cxxalias_dummy"
.LASF14:
	.string	"_flags"
.LASF37:
	.string	"_wide_data"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF90:
	.string	"program_invocation_short_name"
.LASF104:
	.string	"c_quoting_style"
.LASF45:
	.string	"_IO_codecvt"
.LASF53:
	.string	"_sys_errlist"
.LASF89:
	.string	"program_invocation_name"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF93:
	.string	"TIMESPEC_HZ"
.LASF103:
	.string	"shell_escape_always_quoting_style"
.LASF83:
	.string	"timezone"
.LASF98:
	.string	"program_name"
.LASF44:
	.string	"_IO_marker"
.LASF47:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF39:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF75:
	.string	"name"
.LASF50:
	.string	"sys_nerr"
.LASF57:
	.string	"uid_t"
.LASF135:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF109:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF114:
	.string	"error_one_per_line"
.LASF91:
	.string	"Version"
.LASF23:
	.string	"_IO_save_base"
.LASF124:
	.string	"NO_UID"
.LASF88:
	.string	"environ"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF48:
	.string	"stdout"
.LASF120:
	.string	"optc"
.LASF64:
	.string	"pw_passwd"
.LASF97:
	.string	"version_etc_copyright"
.LASF70:
	.string	"optarg"
.LASF84:
	.string	"getdate_err"
.LASF71:
	.string	"optind"
.LASF65:
	.string	"pw_uid"
.LASF20:
	.string	"_IO_write_end"
.LASF138:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF112:
	.string	"error_print_progname"
.LASF133:
	.string	"map_prog"
.LASF87:
	.string	"__environ"
.LASF58:
	.string	"time_t"
.LASF51:
	.string	"sys_errlist"
.LASF26:
	.string	"_markers"
.LASF121:
	.string	"rgid"
.LASF68:
	.string	"pw_dir"
.LASF105:
	.string	"c_maybe_quoting_style"
.LASF126:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF132:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF74:
	.string	"option"
.LASF116:
	.string	"quote_quoting_options"
.LASF136:
	.string	"src/groups.c"
.LASF77:
	.string	"flag"
.LASF52:
	.string	"_sys_nerr"
.LASF32:
	.string	"_vtable_offset"
.LASF81:
	.string	"tzname"
.LASF62:
	.string	"passwd"
.LASF43:
	.string	"FILE"
.LASF125:
	.string	"NO_GID"
.LASF102:
	.string	"shell_escape_quoting_style"
.LASF110:
	.string	"quoting_style_args"
.LASF73:
	.string	"optopt"
.LASF82:
	.string	"daylight"
.LASF122:
	.string	"egid"
.LASF55:
	.string	"long double"
.LASF13:
	.string	"char"
.LASF101:
	.string	"shell_always_quoting_style"
.LASF67:
	.string	"pw_gecos"
.LASF108:
	.string	"clocale_quoting_style"
.LASF72:
	.string	"opterr"
.LASF8:
	.string	"__uid_t"
.LASF11:
	.string	"__off64_t"
.LASF115:
	.string	"quoting_options"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF85:
	.string	"_sys_siglist"
.LASF131:
	.string	"infomap"
.LASF76:
	.string	"has_arg"
.LASF128:
	.string	"usage"
.LASF40:
	.string	"__pad5"
.LASF12:
	.string	"__time_t"
.LASF42:
	.string	"_unused2"
.LASF49:
	.string	"stderr"
.LASF118:
	.string	"argv"
.LASF79:
	.string	"__daylight"
.LASF63:
	.string	"pw_name"
.LASF129:
	.string	"status"
.LASF137:
	.string	"/root/coreutils"
.LASF24:
	.string	"_IO_backup_base"
.LASF56:
	.string	"gid_t"
.LASF113:
	.string	"error_message_count"
.LASF134:
	.string	"lc_messages"
.LASF117:
	.string	"argc"
.LASF38:
	.string	"_freeres_list"
.LASF46:
	.string	"_IO_wide_data"
.LASF78:
	.string	"__tzname"
.LASF127:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
.LASF140:
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
