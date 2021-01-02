	.file	"chroot.c"
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
	.type	to_uchar, @function
to_uchar:
.LFB11:
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
	jmp	.L7
.L9:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L7:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L8
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L9
.L8:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L10
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L10:
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
	je	.L11
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L11
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L11:
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
	jne	.L12
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L13
.L12:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L13:
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
	je	.L14
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L14:
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
	.type	uid_unset, @function
uid_unset:
.LFB46:
	.file 2 "src/chroot.c"
	.loc 2 45 42
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 45 55
	cmpl	$-1, -4(%rbp)
	sete	%al
	.loc 2 45 70
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	uid_unset, .-uid_unset
	.type	gid_unset, @function
gid_unset:
.LFB47:
	.loc 2 46 42
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 46 55
	cmpl	$-1, -4(%rbp)
	sete	%al
	.loc 2 46 70
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	gid_unset, .-gid_unset
	.section	.rodata
.LC18:
	.string	"groups"
.LC19:
	.string	"userspec"
.LC20:
	.string	"skip-chdir"
.LC21:
	.string	"help"
.LC22:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_opts, @object
	.size	long_opts, 192
long_opts:
	.quad	.LC18
	.long	1
	.zero	4
	.quad	0
	.long	256
	.zero	4
	.quad	.LC19
	.long	1
	.zero	4
	.quad	0
	.long	257
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	258
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
.LC23:
	.string	","
.LC24:
	.string	"invalid group %s"
.LC25:
	.string	"invalid group list %s"
	.text
	.type	parse_additional_groups, @function
parse_additional_groups:
.LFB48:
	.loc 2 98 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, %eax
	movb	%al, -124(%rbp)
	.loc 2 98 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 99 16
	movq	$0, -64(%rbp)
	.loc 2 100 10
	movq	$0, -80(%rbp)
	.loc 2 101 10
	movq	$0, -56(%rbp)
	.loc 2 102 18
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -32(%rbp)
	.loc 2 104 7
	movl	$0, -84(%rbp)
	.loc 2 106 14
	movq	-32(%rbp), %rax
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -48(%rbp)
	.loc 2 106 3
	jmp	.L22
.L33:
.LBB2:
	.loc 2 111 11
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC16(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 2 111 10
	testl	%eax, %eax
	jne	.L23
	.loc 2 112 20
	movq	-72(%rbp), %rax
	.loc 2 112 11
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	ja	.L23
	.loc 2 114 17
	jmp	.L24
.L25:
	.loc 2 115 16
	addq	$1, -48(%rbp)
.L24:
	.loc 2 114 18
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-48(%rbp), %rax
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
	.loc 2 114 17
	testl	%eax, %eax
	jne	.L25
	.loc 2 116 15
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 116 14
	cmpb	$43, %al
	je	.L26
	.loc 2 119 19
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getgrnam@PLT
	movq	%rax, -40(%rbp)
	.loc 2 120 18
	cmpq	$0, -40(%rbp)
	je	.L26
	.loc 2 121 26
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %eax
	.loc 2 121 23
	movq	%rax, -72(%rbp)
.L26:
	.loc 2 124 13
	movq	$1, -40(%rbp)
	jmp	.L27
.L23:
	.loc 2 128 15
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getgrnam@PLT
	movq	%rax, -40(%rbp)
	.loc 2 129 14
	cmpq	$0, -40(%rbp)
	je	.L27
	.loc 2 130 22
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %eax
	.loc 2 130 19
	movq	%rax, -72(%rbp)
.L27:
	.loc 2 133 10
	cmpq	$0, -40(%rbp)
	jne	.L28
	.loc 2 135 15
	movl	$-1, -84(%rbp)
	.loc 2 137 14
	cmpb	$0, -124(%rbp)
	je	.L39
	.loc 2 139 15
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 2 139 32
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 139 25
	call	__errno_location@PLT
	.loc 2 139 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L30
.L28:
	.loc 2 146 18
	movq	-80(%rbp), %rax
	.loc 2 146 10
	cmpq	%rax, -56(%rbp)
	jne	.L32
.LBB3:
	.loc 2 147 16
	leaq	-80(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	movq	%rax, -64(%rbp)
.L32:
.LBE3:
	.loc 2 148 22
	movq	-72(%rbp), %rcx
	.loc 2 148 18
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 148 11
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 148 22
	movl	%ecx, %edx
	movl	%edx, (%rax)
.L30:
.LBE2:
	.loc 2 106 47 discriminator 2
	leaq	.LC23(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -48(%rbp)
.L22:
	.loc 2 106 3 discriminator 1
	cmpq	$0, -48(%rbp)
	jne	.L33
	jmp	.L31
.L39:
.LBB4:
	.loc 2 143 11
	nop
.L31:
.LBE4:
	.loc 2 151 6
	cmpl	$0, -84(%rbp)
	jne	.L34
	.loc 2 151 16 discriminator 1
	cmpq	$0, -56(%rbp)
	jne	.L34
	.loc 2 153 10
	cmpb	$0, -124(%rbp)
	je	.L35
	.loc 2 154 9
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 154 22
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	.loc 2 154 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L35:
	.loc 2 155 11
	movl	$-1, -84(%rbp)
.L34:
	.loc 2 158 10
	movq	-112(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 160 6
	cmpl	$0, -84(%rbp)
	jne	.L36
	.loc 2 161 14
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
.L36:
	.loc 2 163 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 164 10
	movl	-84(%rbp), %eax
	.loc 2 165 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	parse_additional_groups, .-parse_additional_groups
	.section	.rodata
.LC26:
	.string	"/"
	.text
	.type	is_root, @function
is_root:
.LFB49:
	.loc 2 173 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 174 20
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	canonicalize_file_name@PLT
	movq	%rax, -8(%rbp)
	.loc 2 175 31
	cmpq	$0, -8(%rbp)
	je	.L41
	.loc 2 175 34 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rdi
	call	strcmp@PLT
	.loc 2 175 31 discriminator 1
	testl	%eax, %eax
	jne	.L41
	.loc 2 175 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L42
.L41:
	.loc 2 175 31 discriminator 4
	movl	$0, %eax
.L42:
	.loc 2 175 8 is_stmt 1 discriminator 6
	movb	%al, -9(%rbp)
	andb	$1, -9(%rbp)
	.loc 2 176 3 discriminator 6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 177 10 discriminator 6
	movzbl	-9(%rbp), %eax
	.loc 2 178 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	is_root, .-is_root
	.section	.rodata
	.align 8
.LC27:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC28:
	.string	"Usage: %s [OPTION] NEWROOT [COMMAND [ARG]...]\n  or:  %s OPTION\n"
	.align 8
.LC29:
	.string	"Run COMMAND with root directory set to NEWROOT.\n\n"
	.align 8
.LC30:
	.string	"  --groups=G_LIST        specify supplementary groups as g1,g2,..,gN\n"
	.align 8
.LC31:
	.string	"  --userspec=USER:GROUP  specify user and group (ID or name) to use\n"
	.align 8
.LC32:
	.string	"  --skip-chdir           do not change working directory to %s\n"
	.align 8
.LC33:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC34:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC35:
	.string	"\nIf no command is given, run '\"$SHELL\" -i' (default: '/bin/sh -i').\n"
.LC36:
	.string	"chroot"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.loc 2 182 1
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
	.loc 2 183 6
	cmpl	$0, -20(%rbp)
	je	.L45
	.loc 2 184 5
	movq	program_name(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L46
.L45:
	.loc 2 187 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 187 15
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	.loc 2 187 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 192 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 197 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 200 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 203 7
	leaq	.LC26(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 203 15
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 203 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 207 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 208 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 209 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 213 7
	leaq	.LC36(%rip), %rdi
	call	emit_ancillary_info
.L46:
	.loc 2 215 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.section	.rodata
.LC37:
	.string	"/usr/local/share/locale"
.LC38:
	.string	"Roland McGrath"
.LC39:
	.string	"+"
.LC40:
	.string	"missing operand"
	.align 8
.LC41:
	.string	"option --skip-chdir only permitted if NEWROOT is old %s"
	.align 8
.LC42:
	.string	"cannot change root directory to %s"
	.align 8
.LC43:
	.string	"cannot chdir to root directory"
.LC44:
	.string	"SHELL"
.LC45:
	.string	"/bin/sh"
.LC46:
	.string	"-i"
.LC47:
	.string	"%s"
	.align 8
.LC48:
	.string	"no group specified for unknown uid: %d"
	.align 8
.LC49:
	.string	"failed to get supplemental groups"
	.align 8
.LC50:
	.string	"failed to set supplemental groups"
.LC51:
	.string	"failed to set group-ID"
.LC52:
	.string	"failed to set user-ID"
.LC53:
	.string	"failed to run command %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 2 220 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -180(%rbp)
	movq	%rsi, -192(%rbp)
	.loc 2 220 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 224 9
	movq	$0, -112(%rbp)
	.loc 2 225 15
	movq	$0, -104(%rbp)
	.loc 2 226 15
	movq	$0, -96(%rbp)
	.loc 2 227 8
	movb	$0, -166(%rbp)
	.loc 2 230 9
	movl	$-1, -164(%rbp)
	.loc 2 231 9
	movl	$-1, -160(%rbp)
	.loc 2 232 16
	movq	$0, -136(%rbp)
	.loc 2 233 10
	movq	$0, -128(%rbp)
	.loc 2 236 3
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 237 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 238 3
	leaq	.LC37(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 239 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 241 3
	movl	$125, %edi
	call	initialize_exit_failure
	.loc 2 242 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 244 9
	jmp	.L48
.L56:
	.loc 2 246 7
	cmpl	$258, -156(%rbp)
	je	.L49
	cmpl	$258, -156(%rbp)
	jg	.L50
	cmpl	$257, -156(%rbp)
	je	.L51
	cmpl	$257, -156(%rbp)
	jg	.L50
	cmpl	$256, -156(%rbp)
	je	.L52
	cmpl	$256, -156(%rbp)
	jg	.L50
	cmpl	$-131, -156(%rbp)
	je	.L53
	cmpl	$-130, -156(%rbp)
	je	.L54
	jmp	.L50
.L51:
.LBB5:
	.loc 2 250 22
	movq	optarg(%rip), %rax
	movq	%rax, -112(%rbp)
	.loc 2 254 30
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	.loc 2 255 16
	cmpq	$0, -32(%rbp)
	je	.L48
	.loc 2 255 36 discriminator 1
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 255 25 discriminator 1
	cmpb	$58, %al
	jne	.L48
	.loc 2 256 23
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 256 37
	movb	$0, (%rax)
	.loc 2 257 13
	jmp	.L48
.L52:
.LBE5:
	.loc 2 261 18
	movq	optarg(%rip), %rax
	movq	%rax, -96(%rbp)
	.loc 2 262 11
	jmp	.L48
.L49:
	.loc 2 265 22
	movb	$1, -166(%rbp)
	.loc 2 266 11
	jmp	.L48
.L54:
	.loc 2 268 9
	movl	$0, %edi
	call	usage
.L53:
	.loc 2 270 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC38(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L50:
	.loc 2 273 11
	movl	$125, %edi
	call	usage
.L48:
	.loc 2 244 15
	movq	-192(%rbp), %rsi
	movl	-180(%rbp), %eax
	movl	$0, %r8d
	leaq	long_opts(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -156(%rbp)
	.loc 2 244 9
	cmpl	$-1, -156(%rbp)
	jne	.L56
	.loc 2 277 12
	movl	optind(%rip), %eax
	.loc 2 277 6
	cmpl	%eax, -180(%rbp)
	jg	.L57
	.loc 2 279 20
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 2 279 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 280 7
	movl	$125, %edi
	call	usage
.L57:
	.loc 2 283 29
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 283 15
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	.loc 2 284 21
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	is_root
	movb	%al, -165(%rbp)
	.loc 2 286 7
	movzbl	-165(%rbp), %eax
	xorl	$1, %eax
	.loc 2 286 6
	testb	%al, %al
	je	.L58
	.loc 2 286 20 discriminator 1
	cmpb	$0, -166(%rbp)
	je	.L58
	.loc 2 288 7
	leaq	.LC26(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 288 20
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	.loc 2 288 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 290 7
	movl	$125, %edi
	call	usage
.L58:
	.loc 2 293 7
	movzbl	-165(%rbp), %eax
	xorl	$1, %eax
	.loc 2 293 6
	testb	%al, %al
	je	.L59
	.loc 2 301 10
	cmpq	$0, -112(%rbp)
	je	.L60
.LBB6:
	.loc 2 302 9
	leaq	-160(%rbp), %rdx
	leaq	-164(%rbp), %rsi
	movq	-112(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	parse_user_spec@PLT
	movq	%rax, -64(%rbp)
.L60:
.LBE6:
	.loc 2 306 11
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	uid_unset
	xorl	$1, %eax
	.loc 2 306 10
	testb	%al, %al
	je	.L61
	.loc 2 306 25 discriminator 1
	cmpq	$0, -96(%rbp)
	je	.L62
	.loc 2 306 41 discriminator 2
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	gid_unset
	.loc 2 306 38 discriminator 2
	testb	%al, %al
	je	.L61
.L62:
.LBB7:
	.loc 2 309 22
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	getpwuid@PLT
	movq	%rax, -56(%rbp)
	.loc 2 309 14
	cmpq	$0, -56(%rbp)
	je	.L61
	.loc 2 311 19
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	gid_unset
	.loc 2 311 18
	testb	%al, %al
	je	.L63
	.loc 2 312 26
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	.loc 2 312 21
	movl	%eax, -160(%rbp)
.L63:
	.loc 2 313 24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
.L61:
.LBE7:
	.loc 2 317 10
	cmpq	$0, -96(%rbp)
	je	.L64
	.loc 2 317 21 discriminator 1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 317 18 discriminator 1
	testb	%al, %al
	je	.L64
.LBB8:
	.loc 2 318 9
	leaq	-128(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	parse_additional_groups
	movl	%eax, -152(%rbp)
.LBE8:
	jmp	.L59
.L64:
	.loc 2 321 15
	cmpq	$0, -96(%rbp)
	jne	.L59
	.loc 2 321 28 discriminator 1
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	gid_unset
	xorl	$1, %eax
	.loc 2 321 25 discriminator 1
	testb	%al, %al
	je	.L59
	.loc 2 321 42 discriminator 2
	cmpq	$0, -104(%rbp)
	je	.L59
.LBB9:
	.loc 2 323 25
	movl	-160(%rbp), %ecx
	leaq	-136(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	xgetgroups@PLT
	movl	%eax, -148(%rbp)
	.loc 2 324 14
	cmpl	$0, -148(%rbp)
	jle	.L59
	.loc 2 325 20
	movl	-148(%rbp), %eax
	cltq
	movq	%rax, -128(%rbp)
.L59:
.LBE9:
	.loc 2 330 7
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	chroot@PLT
	.loc 2 330 6
	testl	%eax, %eax
	je	.L65
.LBB10:
	.loc 2 331 5
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L65:
.LBE10:
	.loc 2 334 7
	movzbl	-166(%rbp), %eax
	xorl	$1, %eax
	.loc 2 334 6
	testb	%al, %al
	je	.L66
	.loc 2 334 23 discriminator 1
	leaq	.LC26(%rip), %rdi
	call	chdir@PLT
	.loc 2 334 20 discriminator 1
	testl	%eax, %eax
	je	.L66
.LBB11:
	.loc 2 335 5
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L66:
.LBE11:
	.loc 2 337 22
	movl	optind(%rip), %eax
	addl	$1, %eax
	.loc 2 337 6
	cmpl	%eax, -180(%rbp)
	jne	.L67
.LBB12:
	.loc 2 340 21
	leaq	.LC44(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -88(%rbp)
	.loc 2 341 10
	cmpq	$0, -88(%rbp)
	jne	.L68
	.loc 2 342 17
	leaq	.LC45(%rip), %rdi
	call	bad_cast
	movq	%rax, -88(%rbp)
.L68:
	.loc 2 343 15
	movq	-192(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 344 11
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rbx
	.loc 2 344 17
	leaq	.LC46(%rip), %rdi
	call	bad_cast
	.loc 2 344 15
	movq	%rax, (%rbx)
	.loc 2 345 11
	movq	-192(%rbp), %rax
	addq	$16, %rax
	.loc 2 345 15
	movq	$0, (%rax)
.LBE12:
	jmp	.L69
.L67:
	.loc 2 350 12
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	salq	$3, %rax
	addq	%rax, -192(%rbp)
.L69:
	.loc 2 355 6
	cmpq	$0, -112(%rbp)
	je	.L70
.LBB13:
	.loc 2 357 25
	leaq	-160(%rbp), %rdx
	leaq	-164(%rbp), %rsi
	movq	-112(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	parse_user_spec@PLT
	movq	%rax, -48(%rbp)
	.loc 2 359 10
	cmpq	$0, -48(%rbp)
	je	.L70
	.loc 2 359 18 discriminator 1
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	uid_unset
	.loc 2 359 15 discriminator 1
	testb	%al, %al
	je	.L70
	.loc 2 359 37 discriminator 2
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	gid_unset
	.loc 2 359 34 discriminator 2
	testb	%al, %al
	je	.L70
.LBB14:
	.loc 2 360 9
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rcx
	leaq	.LC47(%rip), %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L70:
.LBE14:
.LBE13:
	.loc 2 365 7
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	uid_unset
	xorl	$1, %eax
	.loc 2 365 6
	testb	%al, %al
	je	.L71
	.loc 2 365 21 discriminator 1
	cmpq	$0, -96(%rbp)
	je	.L72
	.loc 2 365 37 discriminator 2
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	gid_unset
	.loc 2 365 34 discriminator 2
	testb	%al, %al
	je	.L71
.L72:
.LBB15:
	.loc 2 368 18
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	getpwuid@PLT
	movq	%rax, -40(%rbp)
	.loc 2 368 10
	cmpq	$0, -40(%rbp)
	je	.L73
	.loc 2 370 15
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	gid_unset
	.loc 2 370 14
	testb	%al, %al
	je	.L74
	.loc 2 371 22
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	.loc 2 371 17
	movl	%eax, -160(%rbp)
.L74:
	.loc 2 372 20
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.L71
.L73:
	.loc 2 374 16
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	gid_unset
	.loc 2 374 15
	testb	%al, %al
	je	.L71
.LBB16:
	.loc 2 376 11
	movl	-164(%rbp), %eax
	movl	%eax, %r12d
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%r12d, %ecx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L71:
.LBE16:
.LBE15:
	.loc 2 381 16
	movq	-136(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 2 382 16
	movq	$0, -120(%rbp)
	.loc 2 383 6
	cmpq	$0, -96(%rbp)
	je	.L75
	.loc 2 383 17 discriminator 1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 383 14 discriminator 1
	testb	%al, %al
	je	.L75
	.loc 2 385 11
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %ecx
	leaq	-128(%rbp), %rdx
	leaq	-120(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	parse_additional_groups
	.loc 2 385 10
	testl	%eax, %eax
	je	.L76
	.loc 2 387 15
	movq	-128(%rbp), %rax
	.loc 2 387 14
	testq	%rax, %rax
	jne	.L89
	.loc 2 388 20
	movl	$125, %eax
	jmp	.L87
.L76:
	.loc 2 392 14
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 2 385 10
	jmp	.L89
.L75:
	.loc 2 395 11
	cmpq	$0, -96(%rbp)
	jne	.L79
	.loc 2 395 24 discriminator 1
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	gid_unset
	xorl	$1, %eax
	.loc 2 395 21 discriminator 1
	testb	%al, %al
	je	.L79
	.loc 2 395 38 discriminator 2
	cmpq	$0, -104(%rbp)
	je	.L79
.LBB17:
	.loc 2 397 21
	movl	-160(%rbp), %ecx
	leaq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	xgetgroups@PLT
	movl	%eax, -144(%rbp)
	.loc 2 398 10
	cmpl	$0, -144(%rbp)
	jg	.L80
	.loc 2 400 15
	movq	-128(%rbp), %rax
	.loc 2 400 14
	testq	%rax, %rax
	jne	.L79
.LBB18:
	.loc 2 401 13
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L80:
.LBE18:
	.loc 2 407 18
	movl	-144(%rbp), %eax
	cltq
	movq	%rax, -128(%rbp)
	.loc 2 408 16
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.L79
.L89:
.LBE17:
	.loc 2 385 10
	nop
.L79:
	.loc 2 413 8
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	uid_unset
	xorl	$1, %eax
	.loc 2 413 6
	testb	%al, %al
	jne	.L81
	.loc 2 413 22 discriminator 2
	cmpq	$0, -96(%rbp)
	je	.L82
.L81:
	.loc 2 413 36 discriminator 3
	movq	-128(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setgroups@PLT
	.loc 2 413 33 discriminator 3
	testl	%eax, %eax
	je	.L82
.LBB19:
	.loc 2 414 5
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L82:
.LBE19:
	.loc 2 416 3
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 417 3
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 419 7
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	gid_unset
	xorl	$1, %eax
	.loc 2 419 6
	testb	%al, %al
	je	.L83
	.loc 2 419 24 discriminator 1
	movl	-160(%rbp), %eax
	movl	%eax, %edi
	call	setgid@PLT
	.loc 2 419 21 discriminator 1
	testl	%eax, %eax
	je	.L83
.LBB20:
	.loc 2 420 5
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L83:
.LBE20:
	.loc 2 422 7
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	uid_unset
	xorl	$1, %eax
	.loc 2 422 6
	testb	%al, %al
	je	.L84
	.loc 2 422 24 discriminator 1
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	setuid@PLT
	.loc 2 422 21 discriminator 1
	testl	%eax, %eax
	je	.L84
.LBB21:
	.loc 2 423 5
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L84:
.LBE21:
	.loc 2 426 3
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execvp@PLT
	.loc 2 428 21
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 428 51
	cmpl	$2, %eax
	jne	.L85
	.loc 2 428 51 is_stmt 0 discriminator 1
	movl	$127, %eax
	jmp	.L86
.L85:
	.loc 2 428 51 discriminator 2
	movl	$126, %eax
.L86:
	.loc 2 428 7 is_stmt 1 discriminator 4
	movl	%eax, -140(%rbp)
	.loc 2 429 3 discriminator 4
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 2 429 20 discriminator 4
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 429 13 discriminator 4
	call	__errno_location@PLT
	.loc 2 429 3 discriminator 4
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 430 10 discriminator 4
	movl	-140(%rbp), %eax
.L87:
	.loc 2 431 1 discriminator 2
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L88
	.loc 2 431 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L88:
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
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
	.file 11 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 13 "./lib/sys/select.h"
	.file 14 "/usr/include/pwd.h"
	.file 15 "/usr/include/grp.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/signal.h"
	.file 18 "/usr/include/unistd.h"
	.file 19 "/usr/include/errno.h"
	.file 20 "src/version.h"
	.file 21 "./lib/exitfail.h"
	.file 22 "/usr/include/stdint.h"
	.file 23 "./lib/timespec.h"
	.file 24 "/usr/include/ctype.h"
	.file 25 "./lib/version-etc.h"
	.file 26 "./lib/progname.h"
	.file 27 "./lib/quotearg.h"
	.file 28 "./lib/error.h"
	.file 29 "./lib/quote.h"
	.file 30 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe33
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF192
	.byte	0xc
	.long	.LASF193
	.long	.LASF194
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
	.long	.LASF23
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
	.byte	0x92
	.byte	0x19
	.long	0xe6
	.uleb128 0xb
	.long	.LASF18
	.byte	0x6
	.byte	0x93
	.byte	0x19
	.long	0xe6
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x10b
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x10b
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x10b
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.byte	0xce
	.byte	0x19
	.long	0x10b
	.uleb128 0x8
	.long	.LASF24
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x2ed
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x306
	.byte	0x60
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x30c
	.byte	0x68
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x136
	.byte	0x78
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0xf6
	.byte	0x80
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0xfd
	.byte	0x82
	.uleb128 0x9
	.long	.LASF44
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x312
	.byte	0x83
	.uleb128 0x9
	.long	.LASF45
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x322
	.byte	0x88
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x142
	.byte	0x90
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x32d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x338
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x30c
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF50
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xed
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xd3
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF52
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF53
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x33e
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF54
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x166
	.uleb128 0xd
	.long	.LASF195
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF55
	.uleb128 0x3
	.byte	0x8
	.long	0x301
	.uleb128 0x3
	.byte	0x8
	.long	0x166
	.uleb128 0xf
	.long	0x3f
	.long	0x322
	.uleb128 0x10
	.long	0xdf
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2f9
	.uleb128 0xe
	.long	.LASF56
	.uleb128 0x3
	.byte	0x8
	.long	0x328
	.uleb128 0xe
	.long	.LASF57
	.uleb128 0x3
	.byte	0x8
	.long	0x333
	.uleb128 0xf
	.long	0x3f
	.long	0x34e
	.uleb128 0x10
	.long	0xdf
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x35a
	.uleb128 0x3
	.byte	0x8
	.long	0x2ed
	.uleb128 0x2
	.long	.LASF59
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x35a
	.uleb128 0x2
	.long	.LASF60
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x35a
	.uleb128 0x2
	.long	.LASF61
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xc8
	.long	0x38f
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x384
	.uleb128 0x2
	.long	.LASF62
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x38f
	.uleb128 0x2
	.long	.LASF63
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF64
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x38f
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF65
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF66
	.uleb128 0xb
	.long	.LASF67
	.byte	0xb
	.byte	0x40
	.byte	0x11
	.long	0x12a
	.uleb128 0xb
	.long	.LASF68
	.byte	0xb
	.byte	0x4f
	.byte	0x11
	.long	0x11e
	.uleb128 0xb
	.long	.LASF69
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0x14e
	.uleb128 0x12
	.long	.LASF70
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF71
	.uleb128 0x8
	.long	.LASF72
	.byte	0x30
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0x467
	.uleb128 0x9
	.long	.LASF73
	.byte	0xe
	.byte	0x33
	.byte	0x9
	.long	0x39
	.byte	0
	.uleb128 0x9
	.long	.LASF74
	.byte	0xe
	.byte	0x34
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF75
	.byte	0xe
	.byte	0x36
	.byte	0xb
	.long	0x11e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF76
	.byte	0xe
	.byte	0x37
	.byte	0xb
	.long	0x12a
	.byte	0x14
	.uleb128 0x9
	.long	.LASF77
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF78
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF79
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	0x3fe
	.uleb128 0x8
	.long	.LASF80
	.byte	0x20
	.byte	0xf
	.byte	0x2a
	.byte	0x8
	.long	0x4ae
	.uleb128 0x9
	.long	.LASF81
	.byte	0xf
	.byte	0x2c
	.byte	0xb
	.long	0x39
	.byte	0
	.uleb128 0x9
	.long	.LASF82
	.byte	0xf
	.byte	0x2d
	.byte	0xb
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF83
	.byte	0xf
	.byte	0x2e
	.byte	0xd
	.long	0x12a
	.byte	0x10
	.uleb128 0x9
	.long	.LASF84
	.byte	0xf
	.byte	0x2f
	.byte	0xc
	.long	0x4ae
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0xf
	.long	0x39
	.long	0x4c4
	.uleb128 0x10
	.long	0xdf
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x4b4
	.uleb128 0x2
	.long	.LASF86
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF87
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x10b
	.uleb128 0x2
	.long	.LASF88
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x4b4
	.uleb128 0x2
	.long	.LASF89
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF90
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x10b
	.uleb128 0x12
	.long	.LASF91
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.uleb128 0x3
	.byte	0x8
	.long	0x519
	.uleb128 0xf
	.long	0xc8
	.long	0x530
	.uleb128 0x10
	.long	0xdf
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x520
	.uleb128 0x12
	.long	.LASF92
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x530
	.uleb128 0x12
	.long	.LASF93
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x530
	.uleb128 0x14
	.long	.LASF94
	.byte	0x12
	.value	0x10b
	.byte	0x14
	.long	0x15a
	.uleb128 0x12
	.long	.LASF95
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x4ae
	.uleb128 0x12
	.long	.LASF96
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x4ae
	.uleb128 0x2
	.long	.LASF97
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF98
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF99
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x5c1
	.uleb128 0x16
	.long	.LASF100
	.byte	0x7c
	.uleb128 0x16
	.long	.LASF101
	.byte	0x7d
	.uleb128 0x16
	.long	.LASF102
	.byte	0x7e
	.uleb128 0x16
	.long	.LASF103
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.long	.LASF104
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xb
	.long	.LASF105
	.byte	0x16
	.byte	0x66
	.byte	0x16
	.long	0x112
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x17
	.byte	0x29
	.byte	0x6
	.long	0x5f1
	.uleb128 0x17
	.long	.LASF106
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x17
	.byte	0x2a
	.byte	0x6
	.long	0x606
	.uleb128 0x16
	.long	.LASF107
	.byte	0x9
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x18
	.byte	0x2f
	.byte	0x1
	.long	0x665
	.uleb128 0x18
	.long	.LASF108
	.value	0x100
	.uleb128 0x18
	.long	.LASF109
	.value	0x200
	.uleb128 0x18
	.long	.LASF110
	.value	0x400
	.uleb128 0x18
	.long	.LASF111
	.value	0x800
	.uleb128 0x18
	.long	.LASF112
	.value	0x1000
	.uleb128 0x18
	.long	.LASF113
	.value	0x2000
	.uleb128 0x18
	.long	.LASF114
	.value	0x4000
	.uleb128 0x18
	.long	.LASF115
	.value	0x8000
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.uleb128 0x16
	.long	.LASF117
	.byte	0x2
	.uleb128 0x16
	.long	.LASF118
	.byte	0x4
	.uleb128 0x16
	.long	.LASF119
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x683
	.uleb128 0x1a
	.long	.LASF120
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF121
	.sleb128 -131
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0x68e
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x683
	.uleb128 0x2
	.long	.LASF122
	.byte	0x19
	.byte	0x19
	.byte	0x13
	.long	0x68e
	.uleb128 0x2
	.long	.LASF123
	.byte	0x1a
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x1b
	.long	.LASF142
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1b
	.byte	0x20
	.byte	0x6
	.long	0x700
	.uleb128 0x16
	.long	.LASF124
	.byte	0
	.uleb128 0x16
	.long	.LASF125
	.byte	0x1
	.uleb128 0x16
	.long	.LASF126
	.byte	0x2
	.uleb128 0x16
	.long	.LASF127
	.byte	0x3
	.uleb128 0x16
	.long	.LASF128
	.byte	0x4
	.uleb128 0x16
	.long	.LASF129
	.byte	0x5
	.uleb128 0x16
	.long	.LASF130
	.byte	0x6
	.uleb128 0x16
	.long	.LASF131
	.byte	0x7
	.uleb128 0x16
	.long	.LASF132
	.byte	0x8
	.uleb128 0x16
	.long	.LASF133
	.byte	0x9
	.uleb128 0x16
	.long	.LASF134
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x6ab
	.uleb128 0x12
	.long	.LASF135
	.byte	0x1b
	.value	0x10b
	.byte	0x1a
	.long	0x38f
	.uleb128 0xf
	.long	0x700
	.long	0x71d
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x712
	.uleb128 0x12
	.long	.LASF136
	.byte	0x1b
	.value	0x10c
	.byte	0x21
	.long	0x71d
	.uleb128 0x2
	.long	.LASF137
	.byte	0x1c
	.byte	0x32
	.byte	0xf
	.long	0x51a
	.uleb128 0x2
	.long	.LASF138
	.byte	0x1c
	.byte	0x35
	.byte	0x15
	.long	0xe6
	.uleb128 0x2
	.long	.LASF139
	.byte	0x1c
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF140
	.uleb128 0x2
	.long	.LASF141
	.byte	0x1d
	.byte	0x19
	.byte	0x1f
	.long	0x753
	.uleb128 0x1b
	.long	.LASF143
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1e
	.byte	0x19
	.byte	0x6
	.long	0x795
	.uleb128 0x16
	.long	.LASF144
	.byte	0
	.uleb128 0x16
	.long	.LASF145
	.byte	0x1
	.uleb128 0x16
	.long	.LASF146
	.byte	0x2
	.uleb128 0x16
	.long	.LASF147
	.byte	0x3
	.uleb128 0x16
	.long	.LASF148
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0x33
	.byte	0x1
	.long	0x7b9
	.uleb128 0x18
	.long	.LASF149
	.value	0x100
	.uleb128 0x18
	.long	.LASF150
	.value	0x101
	.uleb128 0x18
	.long	.LASF151
	.value	0x102
	.byte	0
	.uleb128 0xf
	.long	0xbd
	.long	0x7c9
	.uleb128 0x10
	.long	0xdf
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x7b9
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.long	0x7c9
	.uleb128 0x9
	.byte	0x3
	.quad	long_opts
	.uleb128 0x1d
	.long	.LASF170
	.byte	0x2
	.byte	0xdb
	.byte	0x1
	.long	0x57
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xaed
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x2
	.byte	0xdb
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x1e
	.long	.LASF153
	.byte	0x2
	.byte	0xdb
	.byte	0x18
	.long	0x4ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1f
	.string	"c"
	.byte	0x2
	.byte	0xdd
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x2
	.byte	0xe0
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0xe1
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1c
	.long	.LASF157
	.byte	0x2
	.byte	0xe2
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.long	.LASF158
	.byte	0x2
	.byte	0xe3
	.byte	0x8
	.long	0xaed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -182
	.uleb128 0x1f
	.string	"uid"
	.byte	0x2
	.byte	0xe6
	.byte	0x9
	.long	0x3d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x1f
	.string	"gid"
	.byte	0x2
	.byte	0xe7
	.byte	0x9
	.long	0x3c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x2
	.byte	0xe8
	.byte	0x10
	.long	0xaf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2
	.byte	0xe9
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x20
	.long	.LASF161
	.byte	0x2
	.value	0x11b
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF162
	.byte	0x2
	.value	0x11c
	.byte	0x8
	.long	0xaed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -181
	.uleb128 0x20
	.long	.LASF163
	.byte	0x2
	.value	0x17d
	.byte	0x10
	.long	0xaf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF164
	.byte	0x2
	.value	0x17e
	.byte	0x10
	.long	0xaf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x20
	.long	.LASF165
	.byte	0x2
	.value	0x1ac
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x92e
	.uleb128 0x1c
	.long	.LASF166
	.byte	0x2
	.byte	0xfe
	.byte	0x14
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x955
	.uleb128 0x22
	.string	"__x"
	.byte	0x2
	.value	0x12e
	.byte	0x9
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x21
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x97c
	.uleb128 0x22
	.string	"pwd"
	.byte	0x2
	.value	0x134
	.byte	0x20
	.long	0xafa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x9a3
	.uleb128 0x22
	.string	"__x"
	.byte	0x2
	.value	0x13e
	.byte	0x9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x9ca
	.uleb128 0x20
	.long	.LASF167
	.byte	0x2
	.value	0x143
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x23
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x23
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x21
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0xa13
	.uleb128 0x20
	.long	.LASF168
	.byte	0x2
	.value	0x154
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x21
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0xa4a
	.uleb128 0x22
	.string	"err"
	.byte	0x2
	.value	0x165
	.byte	0x13
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0
	.uleb128 0x21
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0xa81
	.uleb128 0x22
	.string	"pwd"
	.byte	0x2
	.value	0x16f
	.byte	0x1c
	.long	0xafa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0
	.uleb128 0x21
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0xab9
	.uleb128 0x20
	.long	.LASF167
	.byte	0x2
	.value	0x18d
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0
	.uleb128 0x23
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x23
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x23
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF169
	.uleb128 0x3
	.byte	0x8
	.long	0x3c6
	.uleb128 0x3
	.byte	0x8
	.long	0x467
	.uleb128 0x24
	.long	.LASF171
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xb2e
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x2
	.byte	0xb5
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF175
	.byte	0x2
	.byte	0xac
	.byte	0x1
	.long	0xaed
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xb7e
	.uleb128 0x26
	.string	"dir"
	.byte	0x2
	.byte	0xac
	.byte	0x16
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF173
	.byte	0x2
	.byte	0xae
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF174
	.byte	0x2
	.byte	0xaf
	.byte	0x8
	.long	0xaed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x25
	.long	.LASF176
	.byte	0x2
	.byte	0x60
	.byte	0x1
	.long	0x57
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xc73
	.uleb128 0x1e
	.long	.LASF157
	.byte	0x2
	.byte	0x60
	.byte	0x26
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.long	.LASF177
	.byte	0x2
	.byte	0x60
	.byte	0x3c
	.long	0xc73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1e
	.long	.LASF178
	.byte	0x2
	.byte	0x61
	.byte	0x22
	.long	0xc79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x2
	.byte	0x61
	.byte	0x30
	.long	0xaed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1c
	.long	.LASF163
	.byte	0x2
	.byte	0x63
	.byte	0x10
	.long	0xaf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.long	.LASF180
	.byte	0x2
	.byte	0x64
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2
	.byte	0x65
	.byte	0xa
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF181
	.byte	0x2
	.byte	0x66
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x2
	.byte	0x67
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"ret"
	.byte	0x2
	.byte	0x68
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.long	.Ldebug_ranges0+0
	.uleb128 0x1f
	.string	"g"
	.byte	0x2
	.byte	0x6c
	.byte	0x15
	.long	0xc7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF182
	.byte	0x2
	.byte	0x6d
	.byte	0x11
	.long	0x5cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xaf4
	.uleb128 0x3
	.byte	0x8
	.long	0xd3
	.uleb128 0x3
	.byte	0x8
	.long	0x46c
	.uleb128 0x28
	.long	.LASF183
	.byte	0x2
	.byte	0x2e
	.byte	0x14
	.long	0xaed
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xcb7
	.uleb128 0x26
	.string	"gid"
	.byte	0x2
	.byte	0x2e
	.byte	0x25
	.long	0x3c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF184
	.byte	0x2
	.byte	0x2d
	.byte	0x14
	.long	0xaed
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xce9
	.uleb128 0x26
	.string	"uid"
	.byte	0x2
	.byte	0x2d
	.byte	0x25
	.long	0x3d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF185
	.byte	0x1
	.value	0x2ba
	.byte	0x1
	.long	0x39
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1b
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x2ba
	.byte	0x17
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF196
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc0
	.uleb128 0x2c
	.long	.LASF186
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.long	.LASF187
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xd76
	.uleb128 0x2e
	.long	.LASF186
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x2e
	.long	.LASF188
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xd4b
	.uleb128 0x20
	.long	.LASF187
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xdd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF188
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF189
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xdd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.long	.LASF190
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xf
	.long	0xd76
	.long	0xdd0
	.uleb128 0x10
	.long	0xdf
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0xdc0
	.uleb128 0x3
	.byte	0x8
	.long	0xd76
	.uleb128 0x28
	.long	.LASF191
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0xef
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0c
	.uleb128 0x26
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF197
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.long	0x57
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
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"__off_t"
.LASF115:
	.string	"_ISgraph"
.LASF132:
	.string	"locale_quoting_style"
.LASF38:
	.string	"_chain"
.LASF103:
	.string	"EXIT_ENOENT"
.LASF121:
	.string	"GETOPT_VERSION_CHAR"
.LASF167:
	.string	"ngroups"
.LASF142:
	.string	"quoting_style"
.LASF15:
	.string	"size_t"
.LASF107:
	.string	"LOG10_TIMESPEC_HZ"
.LASF178:
	.string	"pn_gids"
.LASF44:
	.string	"_shortbuf"
.LASF113:
	.string	"_ISspace"
.LASF125:
	.string	"shell_quoting_style"
.LASF120:
	.string	"GETOPT_HELP_CHAR"
.LASF32:
	.string	"_IO_buf_base"
.LASF71:
	.string	"long long unsigned int"
.LASF35:
	.string	"_IO_backup_base"
.LASF145:
	.string	"LONGINT_OVERFLOW"
.LASF59:
	.string	"stdout"
.LASF110:
	.string	"_ISalpha"
.LASF146:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF18:
	.string	"__gid_t"
.LASF79:
	.string	"pw_shell"
.LASF87:
	.string	"__timezone"
.LASF65:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF136:
	.string	"quoting_style_vals"
.LASF105:
	.string	"uintmax_t"
.LASF186:
	.string	"program"
.LASF131:
	.string	"escape_quoting_style"
.LASF148:
	.string	"LONGINT_INVALID"
.LASF43:
	.string	"_vtable_offset"
.LASF124:
	.string	"literal_quoting_style"
.LASF39:
	.string	"_fileno"
.LASF27:
	.string	"_IO_read_end"
.LASF80:
	.string	"group"
.LASF93:
	.string	"sys_siglist"
.LASF14:
	.string	"long int"
.LASF70:
	.string	"_gl_cxxalias_dummy"
.LASF151:
	.string	"SKIP_CHDIR"
.LASF25:
	.string	"_flags"
.LASF48:
	.string	"_wide_data"
.LASF119:
	.string	"_ISalnum"
.LASF42:
	.string	"_cur_column"
.LASF98:
	.string	"program_invocation_short_name"
.LASF129:
	.string	"c_quoting_style"
.LASF56:
	.string	"_IO_codecvt"
.LASF64:
	.string	"_sys_errlist"
.LASF97:
	.string	"program_invocation_name"
.LASF41:
	.string	"_old_offset"
.LASF46:
	.string	"_offset"
.LASF100:
	.string	"EXIT_TIMEDOUT"
.LASF193:
	.string	"src/chroot.c"
.LASF116:
	.string	"_ISblank"
.LASF174:
	.string	"is_res_root"
.LASF102:
	.string	"EXIT_CANNOT_INVOKE"
.LASF106:
	.string	"TIMESPEC_HZ"
.LASF128:
	.string	"shell_escape_always_quoting_style"
.LASF90:
	.string	"timezone"
.LASF118:
	.string	"_ISpunct"
.LASF123:
	.string	"program_name"
.LASF182:
	.string	"value"
.LASF84:
	.string	"gr_mem"
.LASF58:
	.string	"stdin"
.LASF9:
	.string	"unsigned int"
.LASF50:
	.string	"_freeres_buf"
.LASF82:
	.string	"gr_passwd"
.LASF8:
	.string	"long unsigned int"
.LASF30:
	.string	"_IO_write_ptr"
.LASF154:
	.string	"long_opts"
.LASF61:
	.string	"sys_nerr"
.LASF68:
	.string	"uid_t"
.LASF91:
	.string	"getdate_err"
.LASF192:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF134:
	.string	"custom_quoting_style"
.LASF11:
	.string	"short unsigned int"
.LASF0:
	.string	"optarg"
.LASF139:
	.string	"error_one_per_line"
.LASF99:
	.string	"Version"
.LASF5:
	.string	"name"
.LASF34:
	.string	"_IO_save_base"
.LASF96:
	.string	"environ"
.LASF164:
	.string	"in_gids"
.LASF94:
	.string	"intptr_t"
.LASF45:
	.string	"_lock"
.LASF40:
	.string	"_flags2"
.LASF156:
	.string	"username"
.LASF143:
	.string	"strtol_error"
.LASF74:
	.string	"pw_passwd"
.LASF122:
	.string	"version_etc_copyright"
.LASF47:
	.string	"_codecvt"
.LASF22:
	.string	"__intptr_t"
.LASF76:
	.string	"pw_gid"
.LASF159:
	.string	"out_gids"
.LASF150:
	.string	"USERSPEC"
.LASF1:
	.string	"optind"
.LASF101:
	.string	"EXIT_CANCELED"
.LASF75:
	.string	"pw_uid"
.LASF183:
	.string	"gid_unset"
.LASF26:
	.string	"_IO_read_ptr"
.LASF163:
	.string	"gids"
.LASF173:
	.string	"resolved"
.LASF161:
	.string	"newroot"
.LASF160:
	.string	"n_gids"
.LASF195:
	.string	"_IO_lock_t"
.LASF24:
	.string	"_IO_FILE"
.LASF137:
	.string	"error_print_progname"
.LASF157:
	.string	"groups"
.LASF189:
	.string	"map_prog"
.LASF95:
	.string	"__environ"
.LASF69:
	.string	"time_t"
.LASF52:
	.string	"_mode"
.LASF55:
	.string	"_IO_marker"
.LASF62:
	.string	"sys_errlist"
.LASF190:
	.string	"lc_messages"
.LASF37:
	.string	"_markers"
.LASF184:
	.string	"uid_unset"
.LASF78:
	.string	"pw_dir"
.LASF191:
	.string	"to_uchar"
.LASF130:
	.string	"c_maybe_quoting_style"
.LASF169:
	.string	"_Bool"
.LASF10:
	.string	"unsigned char"
.LASF165:
	.string	"exit_status"
.LASF197:
	.string	"initialize_exit_failure"
.LASF188:
	.string	"node"
.LASF33:
	.string	"_IO_buf_end"
.LASF81:
	.string	"gr_name"
.LASF13:
	.string	"short int"
.LASF23:
	.string	"option"
.LASF141:
	.string	"quote_quoting_options"
.LASF144:
	.string	"LONGINT_OK"
.LASF162:
	.string	"is_oldroot"
.LASF63:
	.string	"_sys_nerr"
.LASF88:
	.string	"tzname"
.LASF72:
	.string	"passwd"
.LASF54:
	.string	"FILE"
.LASF104:
	.string	"exit_failure"
.LASF127:
	.string	"shell_escape_quoting_style"
.LASF135:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF89:
	.string	"daylight"
.LASF7:
	.string	"flag"
.LASF168:
	.string	"shell"
.LASF66:
	.string	"long double"
.LASF2:
	.string	"char"
.LASF126:
	.string	"shell_always_quoting_style"
.LASF77:
	.string	"pw_gecos"
.LASF117:
	.string	"_IScntrl"
.LASF21:
	.string	"__time_t"
.LASF112:
	.string	"_ISxdigit"
.LASF133:
	.string	"clocale_quoting_style"
.LASF176:
	.string	"parse_additional_groups"
.LASF109:
	.string	"_ISlower"
.LASF181:
	.string	"buffer"
.LASF3:
	.string	"opterr"
.LASF175:
	.string	"is_root"
.LASF17:
	.string	"__uid_t"
.LASF16:
	.string	"__uintmax_t"
.LASF20:
	.string	"__off64_t"
.LASF140:
	.string	"quoting_options"
.LASF28:
	.string	"_IO_read_base"
.LASF36:
	.string	"_IO_save_end"
.LASF92:
	.string	"_sys_siglist"
.LASF111:
	.string	"_ISdigit"
.LASF187:
	.string	"infomap"
.LASF6:
	.string	"has_arg"
.LASF171:
	.string	"usage"
.LASF51:
	.string	"__pad5"
.LASF31:
	.string	"_IO_write_end"
.LASF53:
	.string	"_unused2"
.LASF60:
	.string	"stderr"
.LASF153:
	.string	"argv"
.LASF86:
	.string	"__daylight"
.LASF73:
	.string	"pw_name"
.LASF172:
	.string	"status"
.LASF194:
	.string	"/root/coreutils"
.LASF108:
	.string	"_ISupper"
.LASF158:
	.string	"skip_chdir"
.LASF147:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF155:
	.string	"userspec"
.LASF177:
	.string	"pgids"
.LASF83:
	.string	"gr_gid"
.LASF67:
	.string	"gid_t"
.LASF179:
	.string	"show_errors"
.LASF138:
	.string	"error_message_count"
.LASF149:
	.string	"GROUPS"
.LASF180:
	.string	"n_gids_allocated"
.LASF152:
	.string	"argc"
.LASF49:
	.string	"_freeres_list"
.LASF57:
	.string	"_IO_wide_data"
.LASF166:
	.string	"userlen"
.LASF85:
	.string	"__tzname"
.LASF170:
	.string	"main"
.LASF29:
	.string	"_IO_write_base"
.LASF196:
	.string	"emit_ancillary_info"
.LASF114:
	.string	"_ISprint"
.LASF185:
	.string	"bad_cast"
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
