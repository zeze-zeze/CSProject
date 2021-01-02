	.file	"getlimits.c"
	.text
.Ltext0:
	.type	initialize_exit_failure, @function
initialize_exit_failure:
.LFB6:
	.file 1 "src/system.h"
	.loc 1 100 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 101 6
	cmpl	$1, -4(%rbp)
	je	.L3
	.loc 1 102 18
	movl	-4(%rbp), %eax
	movl	%eax, exit_failure(%rip)
.L3:
	.loc 1 103 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	initialize_exit_failure, .-initialize_exit_failure
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
	je	.L9
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L9
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L9:
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
	jne	.L10
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L11
.L10:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L11:
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
	.section	.rodata
	.align 8
.LC18:
	.string	"Try '%s --help' for more information.\n"
.LC19:
	.string	"Usage: %s\n"
	.align 8
.LC20:
	.string	"Output platform dependent limits in a format useful for shell scripts.\n\n"
	.align 8
.LC21:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC22:
	.string	"      --version  output version information and exit\n"
.LC23:
	.string	"getlimits"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/getlimits.c"
	.loc 2 61 1 is_stmt 1
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
	.loc 2 62 6
	cmpl	$0, -20(%rbp)
	je	.L14
	.loc 2 63 5
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
	jmp	.L15
.L14:
	.loc 2 66 7
	movq	program_name(%rip), %rbx
	.loc 2 66 15
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	.loc 2 66 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 70 7
	movq	stdout(%rip), %rbx
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 74 7
	movq	stdout(%rip), %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 75 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 76 7
	leaq	.LC23(%rip), %rdi
	call	emit_ancillary_info
.L15:
	.loc 2 78 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	decimal_absval_add_one, @function
decimal_absval_add_one:
.LFB47:
	.loc 2 87 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 88 23
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 88 8
	cmpb	$45, %al
	sete	%al
	movb	%al, -25(%rbp)
	.loc 2 89 26
	movzbl	-25(%rbp), %eax
	leaq	1(%rax), %rdx
	.loc 2 89 9
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 90 22
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 90 9
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 91 9
	movq	-8(%rbp), %rax
	subq	$1, %rax
	.loc 2 91 14
	movb	$48, (%rax)
	.loc 2 92 9
	jmp	.L17
.L18:
	.loc 2 93 8
	movq	-24(%rbp), %rax
	movb	$48, (%rax)
.L17:
	.loc 2 92 9
	subq	$1, -24(%rbp)
	.loc 2 92 10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 92 9
	cmpb	$57, %al
	je	.L18
	.loc 2 94 5
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 94 3
	addl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 95 9
	movq	-8(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	cmovbe	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 96 6
	cmpb	$0, -25(%rbp)
	je	.L19
	.loc 2 97 15
	subq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$45, (%rax)
.L19:
	.loc 2 98 10
	movq	-16(%rbp), %rax
	.loc 2 99 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	decimal_absval_add_one, .-decimal_absval_add_one
	.type	print_FLT, @function
print_FLT:
.LFB48:
	.loc 2 110 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movss	%xmm0, -52(%rbp)
	.loc 2 110 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-52(%rbp), %edx
	leaq	-48(%rbp), %rax
	movd	%edx, %xmm0
	movl	$0, %ecx
	movl	$1, %edx
	movl	$31, %esi
	movq	%rax, %rdi
	call	ftoastr@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	print_FLT, .-print_FLT
	.type	print_DBL, @function
print_DBL:
.LFB49:
	.loc 2 111 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movsd	%xmm0, -56(%rbp)
	.loc 2 111 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %xmm0
	movl	$0, %ecx
	movl	$1, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	dtoastr@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	print_DBL, .-print_DBL
	.type	print_LDBL, @function
print_LDBL:
.LFB50:
	.loc 2 112 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.loc 2 112 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	$0, %ecx
	movl	$1, %edx
	movl	$45, %esi
	movq	%rax, %rdi
	call	ldtoastr@PLT
	addq	$16, %rsp
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	print_LDBL, .-print_LDBL
	.section	.rodata
.LC24:
	.string	"/usr/local/share/locale"
.LC25:
	.string	"8.32.87-e361b"
.LC26:
	.string	"Padraig Brady"
.LC27:
	.string	"%lu"
.LC28:
	.string	"CHAR_MAX=%s\n"
.LC29:
	.string	"CHAR_OFLOW=%s\n"
.LC30:
	.string	"%ld"
.LC31:
	.string	"CHAR_MIN=%s\n"
.LC32:
	.string	"CHAR_UFLOW=%s\n"
.LC33:
	.string	"SCHAR_MAX=%s\n"
.LC34:
	.string	"SCHAR_OFLOW=%s\n"
.LC35:
	.string	"SCHAR_MIN=%s\n"
.LC36:
	.string	"SCHAR_UFLOW=%s\n"
.LC37:
	.string	"UCHAR_MAX=%s\n"
.LC38:
	.string	"UCHAR_OFLOW=%s\n"
.LC39:
	.string	"SHRT_MAX=%s\n"
.LC40:
	.string	"SHRT_OFLOW=%s\n"
.LC41:
	.string	"SHRT_MIN=%s\n"
.LC42:
	.string	"SHRT_UFLOW=%s\n"
.LC43:
	.string	"INT_MAX=%s\n"
.LC44:
	.string	"INT_OFLOW=%s\n"
.LC45:
	.string	"INT_MIN=%s\n"
.LC46:
	.string	"INT_UFLOW=%s\n"
.LC47:
	.string	"UINT_MAX=%s\n"
.LC48:
	.string	"UINT_OFLOW=%s\n"
.LC49:
	.string	"LONG_MAX=%s\n"
.LC50:
	.string	"LONG_OFLOW=%s\n"
.LC51:
	.string	"LONG_MIN=%s\n"
.LC52:
	.string	"LONG_UFLOW=%s\n"
.LC53:
	.string	"ULONG_MAX=%s\n"
.LC54:
	.string	"ULONG_OFLOW=%s\n"
.LC55:
	.string	"SIZE_MAX=%s\n"
.LC56:
	.string	"SIZE_OFLOW=%s\n"
.LC57:
	.string	"SSIZE_MAX=%s\n"
.LC58:
	.string	"SSIZE_OFLOW=%s\n"
.LC59:
	.string	"SSIZE_MIN=%s\n"
.LC60:
	.string	"SSIZE_UFLOW=%s\n"
.LC61:
	.string	"TIME_T_MAX=%s\n"
.LC62:
	.string	"TIME_T_OFLOW=%s\n"
.LC63:
	.string	"TIME_T_MIN=%s\n"
.LC64:
	.string	"TIME_T_UFLOW=%s\n"
.LC65:
	.string	"UID_T_MAX=%s\n"
.LC66:
	.string	"UID_T_OFLOW=%s\n"
.LC67:
	.string	"GID_T_MAX=%s\n"
.LC68:
	.string	"GID_T_OFLOW=%s\n"
.LC69:
	.string	"PID_T_MAX=%s\n"
.LC70:
	.string	"PID_T_OFLOW=%s\n"
.LC71:
	.string	"PID_T_MIN=%s\n"
.LC72:
	.string	"PID_T_UFLOW=%s\n"
.LC73:
	.string	"OFF_T_MAX=%s\n"
.LC74:
	.string	"OFF_T_OFLOW=%s\n"
.LC75:
	.string	"OFF_T_MIN=%s\n"
.LC76:
	.string	"OFF_T_UFLOW=%s\n"
.LC77:
	.string	"INTMAX_MAX=%s\n"
.LC78:
	.string	"INTMAX_OFLOW=%s\n"
.LC79:
	.string	"INTMAX_MIN=%s\n"
.LC80:
	.string	"INTMAX_UFLOW=%s\n"
.LC81:
	.string	"UINTMAX_MAX=%s\n"
.LC82:
	.string	"UINTMAX_OFLOW=%s\n"
.LC83:
	.string	"FLT_MIN="
.LC85:
	.string	"FLT_MAX="
.LC87:
	.string	"DBL_MIN="
.LC89:
	.string	"DBL_MAX="
.LC91:
	.string	"LDBL_MIN="
.LC93:
	.string	"LDBL_MAX="
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 2 116 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 116 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 121 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 122 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 123 3
	leaq	.LC24(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 124 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 126 3
	movl	$1, %edi
	call	initialize_exit_failure
	.loc 2 127 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 129 3
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	pushq	$0
	leaq	.LC26(%rip), %rdx
	pushq	%rdx
	leaq	usage(%rip), %r9
	leaq	.LC25(%rip), %r8
	leaq	.LC11(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	parse_long_options@PLT
	addq	$16, %rsp
	.loc 2 148 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$127, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	$-128, %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 149 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$127, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	$-128, %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 150 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$255, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC38(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 151 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$32767, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC39(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC40(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	$-32768, %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 152 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$2147483647, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	$-2147483648, %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 153 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$4294967295, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC47(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC48(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 154 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movabsq	$9223372036854775807, %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movabsq	$-9223372036854775808, %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC51(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC52(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 155 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	$-1, %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC54(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 156 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	$-1, %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC55(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC56(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 157 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movabsq	$9223372036854775807, %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC57(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC58(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movabsq	$-9223372036854775808, %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC59(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC60(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 158 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movabsq	$9223372036854775807, %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC61(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movabsq	$-9223372036854775808, %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC63(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC64(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 159 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$4294967295, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC66(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 160 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$4294967295, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC67(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC68(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 161 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$2147483647, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC69(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC70(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	$-2147483648, %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC71(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC72(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 162 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movabsq	$9223372036854775807, %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC73(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC74(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movabsq	$-9223372036854775808, %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC75(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC76(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 163 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movabsq	$9223372036854775807, %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC77(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC78(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movabsq	$-9223372036854775808, %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC79(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC80(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 164 3
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	$-1, %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC81(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	decimal_absval_add_one
	movq	%rax, %rsi
	leaq	.LC82(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 167 3
	leaq	.LC83(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	.LC84(%rip), %xmm0
	call	print_FLT
	leaq	.LC85(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	.LC86(%rip), %xmm0
	call	print_FLT
	.loc 2 168 3
	leaq	.LC87(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	.LC88(%rip), %rax
	movq	%rax, %xmm0
	call	print_DBL
	leaq	.LC89(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	.LC90(%rip), %rax
	movq	%rax, %xmm0
	call	print_DBL
	.loc 2 169 3
	leaq	.LC91(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	fldt	.LC92(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	print_LDBL
	addq	$16, %rsp
	leaq	.LC93(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	fldt	.LC94(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	print_LDBL
	addq	$16, %rsp
	.loc 2 171 10
	movl	$0, %eax
	.loc 2 172 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC84:
	.long	8388608
	.align 4
.LC86:
	.long	2139095039
	.align 8
.LC88:
	.long	0
	.long	1048576
	.align 8
.LC90:
	.long	4294967295
	.long	2146435071
	.align 16
.LC92:
	.long	0
	.long	2147483648
	.long	1
	.long	0
	.align 16
.LC94:
	.long	4294967295
	.long	4294967295
	.long	32766
	.long	0
	.text
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
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/signal.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 16 "/usr/include/errno.h"
	.file 17 "src/version.h"
	.file 18 "./lib/exitfail.h"
	.file 19 "/usr/include/stdint.h"
	.file 20 "./lib/version-etc.h"
	.file 21 "./lib/progname.h"
	.file 22 "./lib/quotearg.h"
	.file 23 "./lib/ftoastr.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x89c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF131
	.byte	0xc
	.long	.LASF132
	.long	.LASF133
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
	.byte	0x48
	.byte	0x12
	.long	0x71
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x9a
	.byte	0x19
	.long	0x65
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0xc1
	.byte	0x1b
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xea
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x8
	.long	0xea
	.uleb128 0x9
	.long	.LASF126
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x27d
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xe4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xe4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xe4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xe4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xe4
	.byte	0x28
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xe4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xe4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xe4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xe4
	.byte	0x48
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xe4
	.byte	0x50
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xe4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x296
	.byte	0x60
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x29c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xa8
	.byte	0x78
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2a2
	.byte	0x83
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2b2
	.byte	0x88
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xb4
	.byte	0x90
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2bd
	.byte	0x98
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2c8
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x29c
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2ce
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xf6
	.uleb128 0xb
	.long	.LASF134
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF48
	.uleb128 0x7
	.byte	0x8
	.long	0x291
	.uleb128 0x7
	.byte	0x8
	.long	0xf6
	.uleb128 0xd
	.long	0xea
	.long	0x2b2
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x289
	.uleb128 0xc
	.long	.LASF49
	.uleb128 0x7
	.byte	0x8
	.long	0x2b8
	.uleb128 0xc
	.long	.LASF50
	.uleb128 0x7
	.byte	0x8
	.long	0x2c3
	.uleb128 0xd
	.long	0xea
	.long	0x2de
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xf1
	.uleb128 0x8
	.long	0x2de
	.uleb128 0x2
	.long	.LASF51
	.byte	0x7
	.byte	0x3f
	.byte	0x11
	.long	0xa8
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x4d
	.byte	0x13
	.long	0xd8
	.uleb128 0xf
	.long	.LASF53
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x30d
	.uleb128 0x7
	.byte	0x8
	.long	0x27d
	.uleb128 0xf
	.long	.LASF54
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x30d
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x30d
	.uleb128 0xf
	.long	.LASF56
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2e4
	.long	0x342
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x337
	.uleb128 0xf
	.long	.LASF57
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x342
	.uleb128 0xf
	.long	.LASF58
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x342
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF60
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF61
	.uleb128 0x2
	.long	.LASF62
	.byte	0x9
	.byte	0x40
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.long	.LASF63
	.byte	0x9
	.byte	0x4f
	.byte	0x11
	.long	0x90
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x61
	.byte	0x11
	.long	0xc0
	.uleb128 0x2
	.long	.LASF65
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xcc
	.uleb128 0x11
	.long	.LASF66
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF67
	.uleb128 0xd
	.long	0xea
	.long	0x3cd
	.uleb128 0xe
	.long	0x39
	.byte	0x27
	.byte	0
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x3c
	.byte	0x3
	.long	0x3fa
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.uleb128 0x13
	.long	.LASF69
	.byte	0x2
	.uleb128 0x13
	.long	.LASF70
	.byte	0x4
	.uleb128 0x13
	.long	.LASF71
	.byte	0x8
	.uleb128 0x13
	.long	.LASF72
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	0xe4
	.long	0x40a
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF73
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x3fa
	.uleb128 0xf
	.long	.LASF74
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF75
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF76
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x3fa
	.uleb128 0xf
	.long	.LASF77
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF78
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF79
	.byte	0xc
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2e4
	.long	0x46f
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x45f
	.uleb128 0x11
	.long	.LASF80
	.byte	0xd
	.value	0x11e
	.byte	0x1a
	.long	0x46f
	.uleb128 0x11
	.long	.LASF81
	.byte	0xd
	.value	0x11f
	.byte	0x1a
	.long	0x46f
	.uleb128 0x11
	.long	.LASF82
	.byte	0xe
	.value	0x21f
	.byte	0xf
	.long	0x49b
	.uleb128 0x7
	.byte	0x8
	.long	0xe4
	.uleb128 0x11
	.long	.LASF83
	.byte	0xe
	.value	0x221
	.byte	0xf
	.long	0x49b
	.uleb128 0xf
	.long	.LASF84
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0xe4
	.uleb128 0xf
	.long	.LASF85
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF86
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF87
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF88
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xe4
	.uleb128 0xf
	.long	.LASF89
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xe4
	.uleb128 0xf
	.long	.LASF90
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2de
	.uleb128 0xf
	.long	.LASF91
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF92
	.byte	0x13
	.byte	0x65
	.byte	0x15
	.long	0x78
	.uleb128 0x2
	.long	.LASF93
	.byte	0x13
	.byte	0x66
	.byte	0x16
	.long	0x84
	.uleb128 0xd
	.long	0xf1
	.long	0x531
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x526
	.uleb128 0xf
	.long	.LASF94
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x531
	.uleb128 0xf
	.long	.LASF95
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x2de
	.uleb128 0x14
	.long	.LASF135
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x5a3
	.uleb128 0x13
	.long	.LASF96
	.byte	0
	.uleb128 0x13
	.long	.LASF97
	.byte	0x1
	.uleb128 0x13
	.long	.LASF98
	.byte	0x2
	.uleb128 0x13
	.long	.LASF99
	.byte	0x3
	.uleb128 0x13
	.long	.LASF100
	.byte	0x4
	.uleb128 0x13
	.long	.LASF101
	.byte	0x5
	.uleb128 0x13
	.long	.LASF102
	.byte	0x6
	.uleb128 0x13
	.long	.LASF103
	.byte	0x7
	.uleb128 0x13
	.long	.LASF104
	.byte	0x8
	.uleb128 0x13
	.long	.LASF105
	.byte	0x9
	.uleb128 0x13
	.long	.LASF106
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x54e
	.uleb128 0x11
	.long	.LASF107
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x342
	.uleb128 0xd
	.long	0x5a3
	.long	0x5c0
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5b5
	.uleb128 0x11
	.long	.LASF108
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x5c0
	.uleb128 0x15
	.long	.LASF121
	.byte	0x2
	.byte	0x73
	.byte	0x1
	.long	0x65
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x622
	.uleb128 0x16
	.long	.LASF109
	.byte	0x2
	.byte	0x73
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.long	.LASF110
	.byte	0x2
	.byte	0x73
	.byte	0x18
	.long	0x49b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	.LASF111
	.byte	0x2
	.byte	0x75
	.byte	0x8
	.long	0x622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.long	0xea
	.long	0x632
	.uleb128 0xe
	.long	0x39
	.byte	0x15
	.byte	0
	.uleb128 0x18
	.long	.LASF112
	.byte	0x2
	.byte	0x70
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x66e
	.uleb128 0x19
	.string	"x"
	.byte	0x2
	.byte	0x70
	.byte	0x1
	.long	0x372
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"buf"
	.byte	0x2
	.byte	0x70
	.byte	0x1
	.long	0x66e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xd
	.long	0xea
	.long	0x67e
	.uleb128 0xe
	.long	0x39
	.byte	0x2c
	.byte	0
	.uleb128 0x18
	.long	.LASF113
	.byte	0x2
	.byte	0x6f
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ba
	.uleb128 0x19
	.string	"x"
	.byte	0x2
	.byte	0x6f
	.byte	0x1
	.long	0x6ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.string	"buf"
	.byte	0x2
	.byte	0x6f
	.byte	0x1
	.long	0x3bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF114
	.uleb128 0x18
	.long	.LASF115
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fd
	.uleb128 0x19
	.string	"x"
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.long	0x6fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.string	"buf"
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.long	0x704
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF116
	.uleb128 0xd
	.long	0xea
	.long	0x714
	.uleb128 0xe
	.long	0x39
	.byte	0x1e
	.byte	0
	.uleb128 0x1b
	.long	.LASF136
	.byte	0x2
	.byte	0x56
	.byte	0x1
	.long	0x2de
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x780
	.uleb128 0x19
	.string	"buf"
	.byte	0x2
	.byte	0x56
	.byte	0x1f
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF117
	.byte	0x2
	.byte	0x58
	.byte	0x8
	.long	0x780
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x17
	.long	.LASF118
	.byte	0x2
	.byte	0x59
	.byte	0x9
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"p"
	.byte	0x2
	.byte	0x5a
	.byte	0x9
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF119
	.byte	0x2
	.byte	0x5f
	.byte	0x9
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF120
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x2
	.byte	0x3c
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b5
	.uleb128 0x16
	.long	.LASF123
	.byte	0x2
	.byte	0x3c
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x85a
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1f
	.long	.LASF127
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x810
	.uleb128 0x20
	.long	.LASF125
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2de
	.byte	0
	.uleb128 0x20
	.long	.LASF128
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2de
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x7e5
	.uleb128 0x21
	.long	.LASF127
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x86a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF128
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF129
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x86f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF130
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x810
	.long	0x86a
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x85a
	.uleb128 0x7
	.byte	0x8
	.long	0x810
	.uleb128 0x22
	.long	.LASF137
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF123
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.long	0x65
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF91:
	.string	"exit_failure"
.LASF12:
	.string	"__off_t"
.LASF11:
	.string	"__gid_t"
.LASF19:
	.string	"_IO_read_ptr"
.LASF104:
	.string	"locale_quoting_style"
.LASF71:
	.string	"FTOASTR_ZERO_PAD"
.LASF135:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF37:
	.string	"_shortbuf"
.LASF52:
	.string	"ssize_t"
.LASF97:
	.string	"shell_quoting_style"
.LASF25:
	.string	"_IO_buf_base"
.LASF70:
	.string	"FTOASTR_SPACE_POSITIVE"
.LASF67:
	.string	"long long unsigned int"
.LASF111:
	.string	"limit"
.LASF40:
	.string	"_codecvt"
.LASF75:
	.string	"__timezone"
.LASF60:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF108:
	.string	"quoting_style_vals"
.LASF93:
	.string	"uintmax_t"
.LASF125:
	.string	"program"
.LASF103:
	.string	"escape_quoting_style"
.LASF115:
	.string	"print_FLT"
.LASF32:
	.string	"_fileno"
.LASF20:
	.string	"_IO_read_end"
.LASF81:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF66:
	.string	"_gl_cxxalias_dummy"
.LASF113:
	.string	"print_DBL"
.LASF18:
	.string	"_flags"
.LASF16:
	.string	"__ssize_t"
.LASF26:
	.string	"_IO_buf_end"
.LASF35:
	.string	"_cur_column"
.LASF89:
	.string	"program_invocation_short_name"
.LASF101:
	.string	"c_quoting_style"
.LASF49:
	.string	"_IO_codecvt"
.LASF114:
	.string	"double"
.LASF88:
	.string	"program_invocation_name"
.LASF34:
	.string	"_old_offset"
.LASF39:
	.string	"_offset"
.LASF51:
	.string	"off_t"
.LASF62:
	.string	"gid_t"
.LASF100:
	.string	"shell_escape_always_quoting_style"
.LASF78:
	.string	"timezone"
.LASF72:
	.string	"FTOASTR_UPPER_E"
.LASF95:
	.string	"program_name"
.LASF48:
	.string	"_IO_marker"
.LASF53:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF43:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF23:
	.string	"_IO_write_ptr"
.LASF56:
	.string	"sys_nerr"
.LASF63:
	.string	"uid_t"
.LASF131:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF106:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF90:
	.string	"Version"
.LASF8:
	.string	"__intmax_t"
.LASF27:
	.string	"_IO_save_base"
.LASF83:
	.string	"environ"
.LASF38:
	.string	"_lock"
.LASF33:
	.string	"_flags2"
.LASF45:
	.string	"_mode"
.LASF54:
	.string	"stdout"
.LASF94:
	.string	"version_etc_copyright"
.LASF41:
	.string	"_wide_data"
.LASF84:
	.string	"optarg"
.LASF79:
	.string	"getdate_err"
.LASF85:
	.string	"optind"
.LASF24:
	.string	"_IO_write_end"
.LASF92:
	.string	"intmax_t"
.LASF134:
	.string	"_IO_lock_t"
.LASF126:
	.string	"_IO_FILE"
.LASF129:
	.string	"map_prog"
.LASF82:
	.string	"__environ"
.LASF65:
	.string	"time_t"
.LASF116:
	.string	"float"
.LASF57:
	.string	"sys_errlist"
.LASF30:
	.string	"_markers"
.LASF102:
	.string	"c_maybe_quoting_style"
.LASF120:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF118:
	.string	"absnum"
.LASF137:
	.string	"initialize_exit_failure"
.LASF128:
	.string	"node"
.LASF14:
	.string	"__pid_t"
.LASF5:
	.string	"short int"
.LASF31:
	.string	"_chain"
.LASF96:
	.string	"literal_quoting_style"
.LASF68:
	.string	"FTOASTR_LEFT_JUSTIFY"
.LASF58:
	.string	"_sys_nerr"
.LASF117:
	.string	"negative"
.LASF36:
	.string	"_vtable_offset"
.LASF76:
	.string	"tzname"
.LASF47:
	.string	"FILE"
.LASF112:
	.string	"print_LDBL"
.LASF99:
	.string	"shell_escape_quoting_style"
.LASF107:
	.string	"quoting_style_args"
.LASF132:
	.string	"src/getlimits.c"
.LASF87:
	.string	"optopt"
.LASF77:
	.string	"daylight"
.LASF61:
	.string	"long double"
.LASF17:
	.string	"char"
.LASF98:
	.string	"shell_always_quoting_style"
.LASF105:
	.string	"clocale_quoting_style"
.LASF59:
	.string	"_sys_errlist"
.LASF86:
	.string	"opterr"
.LASF10:
	.string	"__uid_t"
.LASF9:
	.string	"__uintmax_t"
.LASF13:
	.string	"__off64_t"
.LASF21:
	.string	"_IO_read_base"
.LASF69:
	.string	"FTOASTR_ALWAYS_SIGNED"
.LASF29:
	.string	"_IO_save_end"
.LASF80:
	.string	"_sys_siglist"
.LASF127:
	.string	"infomap"
.LASF122:
	.string	"usage"
.LASF44:
	.string	"__pad5"
.LASF15:
	.string	"__time_t"
.LASF46:
	.string	"_unused2"
.LASF55:
	.string	"stderr"
.LASF110:
	.string	"argv"
.LASF74:
	.string	"__daylight"
.LASF123:
	.string	"status"
.LASF133:
	.string	"/root/coreutils"
.LASF28:
	.string	"_IO_backup_base"
.LASF130:
	.string	"lc_messages"
.LASF109:
	.string	"argc"
.LASF64:
	.string	"pid_t"
.LASF42:
	.string	"_freeres_list"
.LASF50:
	.string	"_IO_wide_data"
.LASF73:
	.string	"__tzname"
.LASF121:
	.string	"main"
.LASF22:
	.string	"_IO_write_base"
.LASF124:
	.string	"emit_ancillary_info"
.LASF119:
	.string	"result"
.LASF136:
	.string	"decimal_absval_add_one"
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
