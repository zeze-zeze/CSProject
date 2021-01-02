	.file	"users.c"
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
	.type	userid_compare, @function
userid_compare:
.LFB46:
	.file 2 "src/users.c"
	.loc 2 40 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 41 10
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 42 10
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 43 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 44 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	userid_compare, .-userid_compare
	.type	list_entries_users, @function
list_entries_users:
.LFB47:
	.loc 2 48 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 49 14
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -16(%rbp)
	.loc 2 51 10
	movq	$0, -24(%rbp)
	.loc 2 53 9
	jmp	.L13
.L15:
	.loc 2 55 11
	movq	-64(%rbp), %rax
	movzbl	44(%rax), %eax
	.loc 2 55 10
	testb	%al, %al
	je	.L14
	.loc 2 55 11 discriminator 1
	movq	-64(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$7, %ax
	jne	.L14
.LBB2:
	.loc 2 59 26
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	extract_trimmed_name@PLT
	movq	%rax, -8(%rbp)
	.loc 2 61 12
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 61 24
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 62 11
	addq	$1, -24(%rbp)
.L14:
.LBE2:
	.loc 2 64 11
	addq	$384, -64(%rbp)
.L13:
	.loc 2 53 11
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 53 9
	testq	%rax, %rax
	jne	.L15
	.loc 2 67 3
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	leaq	userid_compare(%rip), %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	.loc 2 69 10
	movq	$0, -32(%rbp)
	.loc 2 69 3
	jmp	.L16
.L19:
.LBB3:
	.loc 2 71 31
	movq	-24(%rbp), %rax
	subq	$1, %rax
	.loc 2 71 12
	cmpq	%rax, -32(%rbp)
	jnb	.L17
	.loc 2 71 12 is_stmt 0 discriminator 1
	movl	$32, %eax
	jmp	.L18
.L17:
	.loc 2 71 12 discriminator 2
	movl	$10, %eax
.L18:
	.loc 2 71 12 discriminator 4
	movb	%al, -33(%rbp)
	.loc 2 72 7 is_stmt 1 discriminator 4
	movq	stdout(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 73 7 discriminator 4
	movsbl	-33(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.LBE3:
	.loc 2 69 31 discriminator 4
	addq	$1, -32(%rbp)
.L16:
	.loc 2 69 3 discriminator 2
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L19
	.loc 2 76 10
	movq	$0, -32(%rbp)
	.loc 2 76 3
	jmp	.L20
.L21:
	.loc 2 77 12 discriminator 3
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 77 5 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 76 31 discriminator 3
	addq	$1, -32(%rbp)
.L20:
	.loc 2 76 3 discriminator 1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L21
	.loc 2 78 3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 79 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	list_entries_users, .-list_entries_users
	.section	.rodata
.LC18:
	.string	"%s"
	.text
	.type	users, @function
users:
.LFB48:
	.loc 2 86 1
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
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	.loc 2 86 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 90 7
	movl	-60(%rbp), %ecx
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	read_utmp@PLT
	.loc 2 90 6
	testl	%eax, %eax
	je	.L23
.LBB4:
	.loc 2 91 5
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC18(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L23:
.LBE4:
	.loc 2 93 3
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_entries_users
	.loc 2 95 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 96 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	users, .-users
	.section	.rodata
	.align 8
.LC19:
	.string	"Try '%s --help' for more information.\n"
.LC20:
	.string	"Usage: %s [OPTION]... [FILE]\n"
	.align 8
.LC21:
	.string	"Output who is currently logged in according to FILE.\nIf FILE is not specified, use %s.  %s as FILE is common.\n\n"
.LC22:
	.string	"/var/log/wtmp"
.LC23:
	.string	"/var/run/utmp"
	.align 8
.LC24:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC25:
	.string	"      --version  output version information and exit\n"
.LC26:
	.string	"users"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB49:
	.loc 2 100 1
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
	.loc 2 101 6
	cmpl	$0, -20(%rbp)
	je	.L26
	.loc 2 102 5
	movq	program_name(%rip), %rbx
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L27
.L26:
	.loc 2 105 7
	movq	program_name(%rip), %rbx
	.loc 2 105 15
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	.loc 2 105 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 106 15
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	.loc 2 106 7
	leaq	.LC22(%rip), %rdx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 112 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 113 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 114 7
	leaq	.LC26(%rip), %rdi
	call	emit_ancillary_info
.L27:
	.loc 2 116 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE49:
	.size	usage, .-usage
	.section	.rodata
.LC27:
	.string	"/usr/local/share/locale"
.LC28:
	.string	"David MacKenzie"
.LC29:
	.string	"Joseph Arceneaux"
.LC30:
	.string	"extra operand %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB50:
	.loc 2 121 1
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
	movq	%rsi, -32(%rbp)
	.loc 2 123 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 124 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 125 3
	leaq	.LC27(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 126 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 128 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 130 3
	movq	Version(%rip), %rcx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	pushq	$0
	leaq	.LC28(%rip), %rdx
	pushq	%rdx
	leaq	.LC29(%rip), %rdx
	pushq	%rdx
	leaq	usage(%rip), %rdx
	pushq	%rdx
	movl	$1, %r9d
	movq	%rcx, %r8
	leaq	.LC11(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	parse_gnu_standard_options_only@PLT
	addq	$32, %rsp
	.loc 2 134 16
	movl	optind(%rip), %eax
	movl	-20(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 134 3
	testl	%eax, %eax
	je	.L29
	cmpl	$1, %eax
	je	.L30
	jmp	.L34
.L29:
	.loc 2 137 7
	movl	$1, %esi
	leaq	.LC23(%rip), %rdi
	call	users
	.loc 2 138 7
	jmp	.L32
.L30:
	.loc 2 141 18
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 141 7
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	users
	.loc 2 142 7
	jmp	.L32
.L34:
	.loc 2 145 54
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 145 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 145 20
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	.loc 2 145 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 146 7
	movl	$1, %edi
	call	usage
.L32:
	.loc 2 149 10
	movl	$0, %eax
	.loc 2 150 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
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
	.file 22 "/usr/include/x86_64-linux-gnu/bits/utmpx.h"
	.file 23 "./lib/readutmp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x942
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF137
	.byte	0xc
	.long	.LASF138
	.long	.LASF139
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
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0x29
	.byte	0x14
	.long	0x71
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	0x71
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x7d
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x7d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x9a
	.byte	0x19
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
	.long	0xae
	.long	0xca
	.uleb128 0xa
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF96
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x251
	.uleb128 0xc
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x71
	.byte	0
	.uleb128 0xc
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xa8
	.byte	0x8
	.uleb128 0xc
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xa8
	.byte	0x10
	.uleb128 0xc
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xa8
	.byte	0x18
	.uleb128 0xc
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xa8
	.byte	0x20
	.uleb128 0xc
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xa8
	.byte	0x28
	.uleb128 0xc
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xa8
	.byte	0x30
	.uleb128 0xc
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xa8
	.byte	0x38
	.uleb128 0xc
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xa8
	.byte	0x40
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xa8
	.byte	0x48
	.uleb128 0xc
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xa8
	.byte	0x50
	.uleb128 0xc
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xa8
	.byte	0x58
	.uleb128 0xc
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x26a
	.byte	0x60
	.uleb128 0xc
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x270
	.byte	0x68
	.uleb128 0xc
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x71
	.byte	0x70
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x71
	.byte	0x74
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xc
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xc
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xc
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x276
	.byte	0x83
	.uleb128 0xc
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x286
	.byte	0x88
	.uleb128 0xc
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xc
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x291
	.byte	0x98
	.uleb128 0xc
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x29c
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x270
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x71
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2a2
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xca
	.uleb128 0xd
	.long	.LASF140
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x265
	.uleb128 0x7
	.byte	0x8
	.long	0xca
	.uleb128 0x9
	.long	0xae
	.long	0x286
	.uleb128 0xa
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x25d
	.uleb128 0xe
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x28c
	.uleb128 0xe
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x297
	.uleb128 0x9
	.long	0xae
	.long	0x2b2
	.uleb128 0xa
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb5
	.uleb128 0x8
	.long	0x2b2
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2c9
	.uleb128 0x7
	.byte	0x8
	.long	0x251
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2c9
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2c9
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x71
	.uleb128 0x9
	.long	0x2b8
	.long	0x2fe
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2f3
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2fe
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2fe
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF54
	.uleb128 0x11
	.long	.LASF55
	.byte	0x9
	.value	0x30c
	.byte	0x1
	.long	0x71
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF56
	.uleb128 0x9
	.long	0xae
	.long	0x359
	.uleb128 0xa
	.long	0x39
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.long	0xa8
	.long	0x369
	.uleb128 0xa
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF57
	.byte	0xa
	.byte	0x9f
	.byte	0xe
	.long	0x359
	.uleb128 0xf
	.long	.LASF58
	.byte	0xa
	.byte	0xa0
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF59
	.byte	0xa
	.byte	0xa1
	.byte	0x11
	.long	0x7d
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa
	.byte	0xa6
	.byte	0xe
	.long	0x359
	.uleb128 0xf
	.long	.LASF61
	.byte	0xa
	.byte	0xae
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF62
	.byte	0xa
	.byte	0xaf
	.byte	0x11
	.long	0x7d
	.uleb128 0x11
	.long	.LASF63
	.byte	0xa
	.value	0x112
	.byte	0xc
	.long	0x71
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x3be
	.uleb128 0x9
	.long	0x2b8
	.long	0x3d5
	.uleb128 0xa
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x3c5
	.uleb128 0x11
	.long	.LASF64
	.byte	0xb
	.value	0x11e
	.byte	0x1a
	.long	0x3d5
	.uleb128 0x11
	.long	.LASF65
	.byte	0xb
	.value	0x11f
	.byte	0x1a
	.long	0x3d5
	.uleb128 0x11
	.long	.LASF66
	.byte	0xc
	.value	0x21f
	.byte	0xf
	.long	0x401
	.uleb128 0x7
	.byte	0x8
	.long	0xa8
	.uleb128 0x11
	.long	.LASF67
	.byte	0xc
	.value	0x221
	.byte	0xf
	.long	0x401
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF72
	.byte	0xe
	.byte	0x2d
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF73
	.byte	0xe
	.byte	0x2e
	.byte	0xe
	.long	0xa8
	.uleb128 0x7
	.byte	0x8
	.long	0x462
	.uleb128 0x13
	.uleb128 0xf
	.long	.LASF74
	.byte	0xf
	.byte	0x1
	.byte	0x14
	.long	0x2b2
	.uleb128 0xf
	.long	.LASF75
	.byte	0x10
	.byte	0x12
	.byte	0x15
	.long	0x78
	.uleb128 0x9
	.long	0xae
	.long	0x48b
	.uleb128 0xa
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x9
	.long	0xb5
	.long	0x496
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x48b
	.uleb128 0xf
	.long	.LASF76
	.byte	0x11
	.byte	0x19
	.byte	0x13
	.long	0x496
	.uleb128 0xf
	.long	.LASF77
	.byte	0x12
	.byte	0x20
	.byte	0x14
	.long	0x2b2
	.uleb128 0x14
	.long	.LASF141
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x20
	.byte	0x6
	.long	0x508
	.uleb128 0x15
	.long	.LASF78
	.byte	0
	.uleb128 0x15
	.long	.LASF79
	.byte	0x1
	.uleb128 0x15
	.long	.LASF80
	.byte	0x2
	.uleb128 0x15
	.long	.LASF81
	.byte	0x3
	.uleb128 0x15
	.long	.LASF82
	.byte	0x4
	.uleb128 0x15
	.long	.LASF83
	.byte	0x5
	.uleb128 0x15
	.long	.LASF84
	.byte	0x6
	.uleb128 0x15
	.long	.LASF85
	.byte	0x7
	.uleb128 0x15
	.long	.LASF86
	.byte	0x8
	.uleb128 0x15
	.long	.LASF87
	.byte	0x9
	.uleb128 0x15
	.long	.LASF88
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x4b3
	.uleb128 0x11
	.long	.LASF89
	.byte	0x13
	.value	0x10b
	.byte	0x1a
	.long	0x2fe
	.uleb128 0x9
	.long	0x508
	.long	0x525
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x51a
	.uleb128 0x11
	.long	.LASF90
	.byte	0x13
	.value	0x10c
	.byte	0x21
	.long	0x525
	.uleb128 0xf
	.long	.LASF91
	.byte	0x14
	.byte	0x32
	.byte	0xf
	.long	0x3bf
	.uleb128 0xf
	.long	.LASF92
	.byte	0x14
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF93
	.byte	0x14
	.byte	0x39
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF94
	.uleb128 0xf
	.long	.LASF95
	.byte	0x15
	.byte	0x19
	.byte	0x1f
	.long	0x55b
	.uleb128 0xb
	.long	.LASF97
	.byte	0x4
	.byte	0x16
	.byte	0x2a
	.byte	0x8
	.long	0x594
	.uleb128 0xc
	.long	.LASF98
	.byte	0x16
	.byte	0x2d
	.byte	0xf
	.long	0x5e
	.byte	0
	.uleb128 0xc
	.long	.LASF99
	.byte	0x16
	.byte	0x2e
	.byte	0xf
	.long	0x5e
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.byte	0x8
	.byte	0x16
	.byte	0x4b
	.byte	0x3
	.long	0x5b8
	.uleb128 0xc
	.long	.LASF100
	.byte	0x16
	.byte	0x4d
	.byte	0xf
	.long	0x65
	.byte	0
	.uleb128 0xc
	.long	.LASF101
	.byte	0x16
	.byte	0x4e
	.byte	0xf
	.long	0x65
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	.LASF102
	.value	0x180
	.byte	0x16
	.byte	0x37
	.byte	0x8
	.long	0x65b
	.uleb128 0xc
	.long	.LASF103
	.byte	0x16
	.byte	0x39
	.byte	0xd
	.long	0x5e
	.byte	0
	.uleb128 0xc
	.long	.LASF104
	.byte	0x16
	.byte	0x3a
	.byte	0xb
	.long	0x9c
	.byte	0x4
	.uleb128 0xc
	.long	.LASF105
	.byte	0x16
	.byte	0x3b
	.byte	0x8
	.long	0x349
	.byte	0x8
	.uleb128 0xc
	.long	.LASF106
	.byte	0x16
	.byte	0x3d
	.byte	0x8
	.long	0xba
	.byte	0x28
	.uleb128 0xc
	.long	.LASF107
	.byte	0x16
	.byte	0x3f
	.byte	0x8
	.long	0x349
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF108
	.byte	0x16
	.byte	0x41
	.byte	0x8
	.long	0x47b
	.byte	0x4c
	.uleb128 0x18
	.long	.LASF109
	.byte	0x16
	.byte	0x43
	.byte	0x18
	.long	0x56c
	.value	0x14c
	.uleb128 0x18
	.long	.LASF110
	.byte	0x16
	.byte	0x4a
	.byte	0xd
	.long	0x65
	.value	0x150
	.uleb128 0x18
	.long	.LASF111
	.byte	0x16
	.byte	0x4f
	.byte	0x5
	.long	0x594
	.value	0x154
	.uleb128 0x18
	.long	.LASF112
	.byte	0x16
	.byte	0x54
	.byte	0xd
	.long	0x65b
	.value	0x15c
	.uleb128 0x18
	.long	.LASF113
	.byte	0x16
	.byte	0x55
	.byte	0x8
	.long	0x2a2
	.value	0x16c
	.byte	0
	.uleb128 0x9
	.long	0x65
	.long	0x66b
	.uleb128 0xa
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF114
	.byte	0x17
	.byte	0x92
	.byte	0x21
	.long	0x5b8
	.uleb128 0x8
	.long	0x66b
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0xd1
	.byte	0x3
	.long	0x697
	.uleb128 0x15
	.long	.LASF115
	.byte	0x1
	.uleb128 0x15
	.long	.LASF116
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	0x71
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d8
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x2
	.byte	0x78
	.byte	0xb
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF118
	.byte	0x2
	.byte	0x78
	.byte	0x18
	.long	0x401
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x2
	.byte	0x63
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x706
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x2
	.byte	0x63
	.byte	0xc
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x774
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x2
	.byte	0x55
	.byte	0x14
	.long	0x2b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF123
	.byte	0x2
	.byte	0x55
	.byte	0x22
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x2
	.byte	0x57
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x2
	.byte	0x58
	.byte	0x10
	.long	0x774
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x66b
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x2
	.byte	0x2f
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x824
	.uleb128 0x20
	.string	"n"
	.byte	0x2
	.byte	0x2f
	.byte	0x1c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x2
	.byte	0x2f
	.byte	0x32
	.long	0x824
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"u"
	.byte	0x2
	.byte	0x31
	.byte	0xa
	.long	0x401
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"i"
	.byte	0x2
	.byte	0x32
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x2
	.byte	0x33
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x804
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x2
	.byte	0x39
	.byte	0x11
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.string	"c"
	.byte	0x2
	.byte	0x47
	.byte	0xc
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x677
	.uleb128 0x24
	.long	.LASF142
	.byte	0x2
	.byte	0x27
	.byte	0x1
	.long	0x71
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x885
	.uleb128 0x20
	.string	"v_a"
	.byte	0x2
	.byte	0x27
	.byte	0x1d
	.long	0x45c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"v_b"
	.byte	0x2
	.byte	0x27
	.byte	0x2e
	.long	0x45c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"a"
	.byte	0x2
	.byte	0x29
	.byte	0xa
	.long	0x401
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"b"
	.byte	0x2
	.byte	0x2a
	.byte	0xa
	.long	0x401
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF131
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x92a
	.uleb128 0x26
	.long	.LASF132
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.long	.LASF133
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x8e0
	.uleb128 0x28
	.long	.LASF132
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2b2
	.byte	0
	.uleb128 0x28
	.long	.LASF134
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2b2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x8b5
	.uleb128 0x29
	.long	.LASF133
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x93a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.long	.LASF134
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x29
	.long	.LASF135
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x93f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.long	.LASF136
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x9
	.long	0x8e0
	.long	0x93a
	.uleb128 0xa
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x92a
	.uleb128 0x7
	.byte	0x8
	.long	0x8e0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x13
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
.LASF75:
	.string	"exit_failure"
.LASF9:
	.string	"__off_t"
.LASF5:
	.string	"short int"
.LASF14:
	.string	"_IO_read_ptr"
.LASF86:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF99:
	.string	"e_exit"
.LASF141:
	.string	"quoting_style"
.LASF6:
	.string	"size_t"
.LASF107:
	.string	"ut_user"
.LASF32:
	.string	"_shortbuf"
.LASF124:
	.string	"n_users"
.LASF79:
	.string	"shell_quoting_style"
.LASF20:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF138:
	.string	"src/users.c"
.LASF98:
	.string	"e_termination"
.LASF125:
	.string	"utmp_buf"
.LASF35:
	.string	"_codecvt"
.LASF59:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF90:
	.string	"quoting_style_vals"
.LASF132:
	.string	"program"
.LASF85:
	.string	"escape_quoting_style"
.LASF78:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF112:
	.string	"ut_addr_v6"
.LASF65:
	.string	"sys_siglist"
.LASF8:
	.string	"long int"
.LASF55:
	.string	"_gl_cxxalias_dummy"
.LASF13:
	.string	"_flags"
.LASF36:
	.string	"_wide_data"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF73:
	.string	"program_invocation_short_name"
.LASF83:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF72:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF128:
	.string	"this"
.LASF142:
	.string	"userid_compare"
.LASF82:
	.string	"shell_escape_always_quoting_style"
.LASF62:
	.string	"timezone"
.LASF77:
	.string	"program_name"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF114:
	.string	"STRUCT_UTMP"
.LASF1:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF71:
	.string	"optopt"
.LASF0:
	.string	"long unsigned int"
.LASF106:
	.string	"ut_id"
.LASF18:
	.string	"_IO_write_ptr"
.LASF49:
	.string	"sys_nerr"
.LASF137:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF88:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF93:
	.string	"error_one_per_line"
.LASF74:
	.string	"Version"
.LASF22:
	.string	"_IO_save_base"
.LASF109:
	.string	"ut_exit"
.LASF67:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"stdout"
.LASF76:
	.string	"version_etc_copyright"
.LASF103:
	.string	"ut_type"
.LASF116:
	.string	"READ_UTMP_USER_PROCESS"
.LASF68:
	.string	"optarg"
.LASF108:
	.string	"ut_host"
.LASF63:
	.string	"getdate_err"
.LASF122:
	.string	"filename"
.LASF69:
	.string	"optind"
.LASF19:
	.string	"_IO_write_end"
.LASF140:
	.string	"_IO_lock_t"
.LASF96:
	.string	"_IO_FILE"
.LASF91:
	.string	"error_print_progname"
.LASF110:
	.string	"ut_session"
.LASF127:
	.string	"list_entries_users"
.LASF135:
	.string	"map_prog"
.LASF66:
	.string	"__environ"
.LASF58:
	.string	"__daylight"
.LASF126:
	.string	"users"
.LASF50:
	.string	"sys_errlist"
.LASF25:
	.string	"_markers"
.LASF113:
	.string	"__glibc_reserved"
.LASF84:
	.string	"c_maybe_quoting_style"
.LASF2:
	.string	"unsigned char"
.LASF134:
	.string	"node"
.LASF11:
	.string	"__pid_t"
.LASF95:
	.string	"quote_quoting_options"
.LASF100:
	.string	"tv_sec"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF42:
	.string	"FILE"
.LASF97:
	.string	"__exit_status"
.LASF81:
	.string	"shell_escape_quoting_style"
.LASF89:
	.string	"quoting_style_args"
.LASF101:
	.string	"tv_usec"
.LASF61:
	.string	"daylight"
.LASF54:
	.string	"long double"
.LASF104:
	.string	"ut_pid"
.LASF12:
	.string	"char"
.LASF80:
	.string	"shell_always_quoting_style"
.LASF87:
	.string	"clocale_quoting_style"
.LASF102:
	.string	"utmpx"
.LASF7:
	.string	"__int32_t"
.LASF70:
	.string	"opterr"
.LASF10:
	.string	"__off64_t"
.LASF94:
	.string	"quoting_options"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF64:
	.string	"_sys_siglist"
.LASF133:
	.string	"infomap"
.LASF111:
	.string	"ut_tv"
.LASF120:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF118:
	.string	"argv"
.LASF121:
	.string	"status"
.LASF139:
	.string	"/root/coreutils"
.LASF129:
	.string	"n_entries"
.LASF23:
	.string	"_IO_backup_base"
.LASF130:
	.string	"trimmed_name"
.LASF92:
	.string	"error_message_count"
.LASF136:
	.string	"lc_messages"
.LASF123:
	.string	"options"
.LASF117:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF115:
	.string	"READ_UTMP_CHECK_PIDS"
.LASF57:
	.string	"__tzname"
.LASF119:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF131:
	.string	"emit_ancillary_info"
.LASF60:
	.string	"tzname"
.LASF105:
	.string	"ut_line"
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
