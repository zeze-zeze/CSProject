	.file	"id.c"
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
	.type	smack_new_label_from_self, @function
smack_new_label_from_self:
.LFB46:
	.file 2 "./lib/smack.h"
	.loc 2 27 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 28 10
	movq	$-1, %rax
	.loc 2 29 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	smack_new_label_from_self, .-smack_new_label_from_self
	.type	is_smack_enabled, @function
is_smack_enabled:
.LFB48:
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
.LFE48:
	.size	is_smack_enabled, .-is_smack_enabled
	.local	just_context
	.comm	just_context,1,1
	.local	opt_zero
	.comm	opt_zero,1,1
	.local	just_group_list
	.comm	just_group_list,1,1
	.local	just_group
	.comm	just_group,1,1
	.local	use_real
	.comm	use_real,1,1
	.local	just_user
	.comm	just_user,1,1
	.data
	.type	ok, @object
	.size	ok, 1
ok:
	.byte	1
	.local	multiple_users
	.comm	multiple_users,1,1
	.local	use_name
	.comm	use_name,1,1
	.local	ruid
	.comm	ruid,4,4
	.local	euid
	.comm	euid,4,4
	.local	rgid
	.comm	rgid,4,4
	.local	egid
	.comm	egid,4,4
	.local	context
	.comm	context,8,8
	.section	.rodata
.LC18:
	.string	"context"
.LC19:
	.string	"group"
.LC20:
	.string	"groups"
.LC21:
	.string	"name"
.LC22:
	.string	"real"
.LC23:
	.string	"user"
.LC24:
	.string	"zero"
.LC25:
	.string	"help"
.LC26:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 320
longopts:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	90
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	103
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	71
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC26
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
.LC27:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC28:
	.string	"Usage: %s [OPTION]... [USER]...\n"
	.align 8
.LC29:
	.string	"Print user and group information for each specified USER,\nor (when USER omitted) for the current user.\n\n"
	.align 8
.LC30:
	.ascii	"  -a             ignore, for compatibility with other versio"
	.ascii	"ns\n  -Z, --context  print only the security context of the "
	.ascii	"process\n  -g, --group    print only the effective group ID\n"
	.ascii	"  -G, --groups   print all group IDs\n  -n, --name     print"
	.ascii	" a name instead of a number"
	.string	", for -ugG\n  -r, --real     print the real ID instead of the effective ID, with -ugG\n  -u, --user     print only the effective user ID\n  -z, --zero     delimit entries with NUL characters, not whitespace;\n                   not permitted in default format\n"
	.align 8
.LC31:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC32:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC33:
	.string	"\nWithout any OPTION, print some useful set of identified information.\n"
.LC34:
	.string	"id"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB49:
	.file 3 "src/id.c"
	.loc 3 91 1
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
	.loc 3 92 6
	cmpl	$0, -20(%rbp)
	je	.L15
	.loc 3 93 5
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
	jmp	.L16
.L15:
	.loc 3 96 7
	movq	program_name(%rip), %rbx
	.loc 3 96 15
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	.loc 3 96 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 97 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 102 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 113 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 114 7
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 115 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 119 7
	leaq	.LC34(%rip), %rdi
	call	emit_ancillary_info
.L16:
	.loc 3 121 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE49:
	.size	usage, .-usage
	.section	.rodata
.LC35:
	.string	"/usr/local/share/locale"
	.align 8
.LC36:
	.string	"--context (-Z) works only on an SELinux-enabled kernel"
.LC37:
	.string	"David MacKenzie"
.LC38:
	.string	"Arnold Robbins"
.LC39:
	.string	"agnruzGZ"
	.align 8
.LC40:
	.string	"cannot print security context when user specified"
	.align 8
.LC41:
	.string	"cannot print \"only\" of more than one choice"
	.align 8
.LC42:
	.string	"cannot print only names or real IDs in default format"
	.align 8
.LC43:
	.string	"option --zero not permitted in default format"
.LC44:
	.string	"POSIXLY_CORRECT"
.LC45:
	.string	"can't get process context"
.LC46:
	.string	"%s: no such user"
.LC47:
	.string	"cannot get effective UID"
.LC48:
	.string	"cannot get real UID"
.LC49:
	.string	"cannot get effective GID"
.LC50:
	.string	"cannot get real GID"
	.text
	.globl	main
	.type	main, @function
main:
.LFB50:
	.loc 3 126 1
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
	.loc 3 128 26
	call	is_selinux_enabled@PLT
	.loc 3 128 48
	testl	%eax, %eax
	setg	%al
	.loc 3 128 7
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	.loc 3 129 24
	call	is_smack_enabled
	movb	%al, -66(%rbp)
	.loc 3 130 9
	movq	$0, -40(%rbp)
	.loc 3 133 3
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 3 134 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 3 135 3
	leaq	.LC35(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 3 136 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 3 138 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 3 140 9
	jmp	.L18
.L33:
	.loc 3 142 7
	cmpl	$122, -60(%rbp)
	jg	.L19
	cmpl	$71, -60(%rbp)
	jge	.L20
	cmpl	$-131, -60(%rbp)
	je	.L21
	cmpl	$-130, -60(%rbp)
	je	.L22
	jmp	.L19
.L20:
	movl	-60(%rbp), %eax
	subl	$71, %eax
	cmpl	$51, %eax
	ja	.L19
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L24(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L24(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L24:
	.long	.L31-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L30-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L18-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L28-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L27-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L26-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L25-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L19-.L24
	.long	.L23-.L24
	.text
.L30:
	.loc 3 156 14
	cmpl	$0, -64(%rbp)
	jne	.L32
.LBB2:
	.loc 3 157 13
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L32:
.LBE2:
	.loc 3 160 24
	movb	$1, just_context(%rip)
	.loc 3 161 11
	jmp	.L18
.L28:
	.loc 3 164 22
	movb	$1, just_group(%rip)
	.loc 3 165 11
	jmp	.L18
.L27:
	.loc 3 167 20
	movb	$1, use_name(%rip)
	.loc 3 168 11
	jmp	.L18
.L26:
	.loc 3 170 20
	movb	$1, use_real(%rip)
	.loc 3 171 11
	jmp	.L18
.L25:
	.loc 3 173 21
	movb	$1, just_user(%rip)
	.loc 3 174 11
	jmp	.L18
.L23:
	.loc 3 176 20
	movb	$1, opt_zero(%rip)
	.loc 3 177 11
	jmp	.L18
.L31:
	.loc 3 179 27
	movb	$1, just_group_list(%rip)
	.loc 3 180 11
	jmp	.L18
.L22:
	.loc 3 181 9
	movl	$0, %edi
	call	usage
.L21:
	.loc 3 182 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC37(%rip), %r9
	leaq	.LC38(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L19:
	.loc 3 184 11
	movl	$1, %edi
	call	usage
.L18:
	.loc 3 140 18
	movq	-96(%rbp), %rsi
	movl	-84(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -60(%rbp)
	.loc 3 140 9
	cmpl	$-1, -60(%rbp)
	jne	.L33
	.loc 3 188 23
	movl	optind(%rip), %eax
	movl	-84(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 3 188 10
	cltq
	movq	%rax, -32(%rbp)
	.loc 3 190 6
	cmpq	$0, -32(%rbp)
	je	.L34
	.loc 3 190 13 discriminator 1
	movzbl	just_context(%rip), %eax
	testb	%al, %al
	je	.L34
.LBB3:
	.loc 3 191 5
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L34:
.LBE3:
	.loc 3 194 17
	movzbl	just_user(%rip), %eax
	movzbl	%al, %edx
	movzbl	just_group(%rip), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	.loc 3 194 30
	movzbl	just_group_list(%rip), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	.loc 3 194 48
	movzbl	just_context(%rip), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	.loc 3 194 6
	cmpl	$1, %eax
	jle	.L35
.LBB4:
	.loc 3 195 5
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L35:
.LBE4:
	.loc 3 197 28
	movzbl	just_user(%rip), %eax
	xorl	$1, %eax
	.loc 3 197 25
	testb	%al, %al
	je	.L36
	.loc 3 198 28
	movzbl	just_group(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L36
	.loc 3 199 28
	movzbl	just_group_list(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L36
	.loc 3 200 28 discriminator 3
	movzbl	just_context(%rip), %eax
	xorl	$1, %eax
	.loc 3 197 25 discriminator 3
	testb	%al, %al
	je	.L36
	.loc 3 197 25 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L37
.L36:
	.loc 3 197 25 discriminator 1
	movl	$0, %eax
.L37:
	.loc 3 197 8 is_stmt 1 discriminator 5
	movb	%al, -65(%rbp)
	andb	$1, -65(%rbp)
	.loc 3 202 6 discriminator 5
	cmpb	$0, -65(%rbp)
	je	.L38
	.loc 3 202 26 discriminator 1
	movzbl	use_real(%rip), %eax
	.loc 3 202 22 discriminator 1
	testb	%al, %al
	jne	.L39
	.loc 3 202 35 discriminator 2
	movzbl	use_name(%rip), %eax
	testb	%al, %al
	je	.L38
.L39:
.LBB5:
	.loc 3 203 5
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L38:
.LBE5:
	.loc 3 206 6
	cmpb	$0, -65(%rbp)
	je	.L40
	.loc 3 206 22 discriminator 1
	movzbl	opt_zero(%rip), %eax
	testb	%al, %al
	je	.L40
.LBB6:
	.loc 3 207 5
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L40:
.LBE6:
	.loc 3 215 6
	cmpq	$0, -32(%rbp)
	jne	.L41
	.loc 3 216 11
	movzbl	just_context(%rip), %eax
	.loc 3 216 7
	testb	%al, %al
	jne	.L42
	.loc 3 217 11
	cmpb	$0, -65(%rbp)
	je	.L41
	.loc 3 217 35 discriminator 1
	leaq	.LC44(%rip), %rdi
	call	getenv@PLT
	.loc 3 217 30 discriminator 1
	testq	%rax, %rax
	jne	.L41
.L42:
	.loc 3 220 10
	cmpl	$0, -64(%rbp)
	je	.L43
	.loc 3 220 31 discriminator 1
	leaq	context(%rip), %rdi
	call	getcon@PLT
	.loc 3 220 28 discriminator 1
	testl	%eax, %eax
	je	.L43
	.loc 3 220 49 discriminator 2
	movzbl	just_context(%rip), %eax
	testb	%al, %al
	jne	.L44
.L43:
	.loc 3 221 11
	cmpb	$0, -66(%rbp)
	je	.L41
	.loc 3 222 18
	leaq	context(%rip), %rdi
	call	smack_new_label_from_self
	.loc 3 222 15
	testq	%rax, %rax
	jns	.L41
	.loc 3 223 15
	movzbl	just_context(%rip), %eax
	testb	%al, %al
	je	.L41
.L44:
.LBB7:
	.loc 3 224 9
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L41:
.LBE7:
	.loc 3 227 6
	cmpq	$0, -32(%rbp)
	je	.L45
	.loc 3 229 41
	cmpq	$1, -32(%rbp)
	seta	%al
	.loc 3 229 22
	movb	%al, multiple_users(%rip)
	.loc 3 234 13
	movl	optind(%rip), %eax
	cltq
	addq	%rax, -32(%rbp)
	.loc 3 236 7
	jmp	.L46
.L50:
.LBB8:
	.loc 3 238 26
	movq	$0, -48(%rbp)
	.loc 3 239 34
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 239 23
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 3 243 15
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 243 14
	testb	%al, %al
	je	.L47
	.loc 3 245 19
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	leaq	euid(%rip), %rsi
	movq	%rax, %rdi
	call	parse_user_spec@PLT
	.loc 3 245 18
	testq	%rax, %rax
	jne	.L47
	.loc 3 250 25
	movl	euid(%rip), %eax
	movl	%eax, %edi
	call	getpwuid@PLT
	movq	%rax, -48(%rbp)
.L47:
	.loc 3 253 14
	cmpq	$0, -48(%rbp)
	jne	.L48
	.loc 3 255 66
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 255 15
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 3 255 32
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 255 25
	call	__errno_location@PLT
	.loc 3 255 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 256 18
	movb	$0, ok(%rip)
	.loc 3 257 15
	jmp	.L49
.L48:
	.loc 3 259 33
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 259 21
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -40(%rbp)
	.loc 3 260 28
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	.loc 3 260 23
	movl	%eax, euid(%rip)
	.loc 3 260 16
	movl	euid(%rip), %eax
	movl	%eax, ruid(%rip)
	.loc 3 261 28
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	.loc 3 261 23
	movl	%eax, egid(%rip)
	.loc 3 261 16
	movl	egid(%rip), %eax
	movl	%eax, rgid(%rip)
	.loc 3 262 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	print_stuff
	.loc 3 263 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L49:
.LBE8:
	.loc 3 236 36
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L46:
	.loc 3 236 21 discriminator 1
	movl	optind(%rip), %eax
	cltq
	.loc 3 236 7 discriminator 1
	cmpq	%rax, -32(%rbp)
	ja	.L50
	jmp	.L51
.L45:
.LBB9:
	.loc 3 271 13
	movl	$-1, -56(%rbp)
	.loc 3 272 13
	movl	$-1, -52(%rbp)
	.loc 3 274 21
	movzbl	just_user(%rip), %eax
	.loc 3 274 11
	testb	%al, %al
	je	.L52
	.loc 3 274 23 discriminator 1
	movzbl	use_real(%rip), %eax
	.loc 3 274 11 discriminator 1
	xorl	$1, %eax
	jmp	.L53
.L52:
	.loc 3 275 13
	movzbl	just_group(%rip), %eax
	xorl	$1, %eax
	.loc 3 275 45
	testb	%al, %al
	je	.L54
	.loc 3 275 28 discriminator 1
	movzbl	just_group_list(%rip), %eax
	xorl	$1, %eax
	.loc 3 275 25 discriminator 1
	testb	%al, %al
	je	.L54
	.loc 3 275 48 discriminator 3
	movzbl	just_context(%rip), %eax
	xorl	$1, %eax
	.loc 3 275 45 discriminator 3
	testb	%al, %al
	je	.L54
	.loc 3 275 45 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L55
.L54:
	.loc 3 275 45 discriminator 6
	movl	$0, %eax
.L55:
	.loc 3 274 11 is_stmt 1 discriminator 3
	andl	$1, %eax
.L53:
	.loc 3 274 10 discriminator 2
	testb	%al, %al
	je	.L56
	.loc 3 277 11
	call	__errno_location@PLT
	.loc 3 277 17
	movl	$0, (%rax)
	.loc 3 278 18
	call	geteuid@PLT
	.loc 3 278 16
	movl	%eax, euid(%rip)
	.loc 3 279 20
	movl	euid(%rip), %eax
	.loc 3 279 14
	cmpl	%eax, -56(%rbp)
	jne	.L56
	.loc 3 279 33 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 279 30 discriminator 1
	testl	%eax, %eax
	je	.L56
.LBB10:
	.loc 3 280 13
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
.L56:
.LBE10:
	.loc 3 283 21
	movzbl	just_user(%rip), %eax
	.loc 3 283 11
	testb	%al, %al
	je	.L57
	.loc 3 283 11 is_stmt 0 discriminator 1
	movzbl	use_real(%rip), %eax
	jmp	.L58
.L57:
	.loc 3 284 13 is_stmt 1
	movzbl	just_group(%rip), %eax
	xorl	$1, %eax
	.loc 3 284 25
	testb	%al, %al
	je	.L59
	.loc 3 284 29 discriminator 1
	movzbl	just_group_list(%rip), %eax
	.loc 3 284 25 discriminator 1
	testb	%al, %al
	jne	.L60
	.loc 3 284 48 discriminator 4
	movzbl	just_context(%rip), %eax
	xorl	$1, %eax
	.loc 3 284 45 discriminator 4
	testb	%al, %al
	je	.L59
.L60:
	.loc 3 284 25 discriminator 5
	movl	$1, %eax
	jmp	.L61
.L59:
	.loc 3 284 25 is_stmt 0 discriminator 6
	movl	$0, %eax
.L61:
	.loc 3 283 11 is_stmt 1 discriminator 3
	andl	$1, %eax
.L58:
	.loc 3 283 10 discriminator 2
	testb	%al, %al
	je	.L62
	.loc 3 286 11
	call	__errno_location@PLT
	.loc 3 286 17
	movl	$0, (%rax)
	.loc 3 287 18
	call	getuid@PLT
	.loc 3 287 16
	movl	%eax, ruid(%rip)
	.loc 3 288 20
	movl	ruid(%rip), %eax
	.loc 3 288 14
	cmpl	%eax, -56(%rbp)
	jne	.L62
	.loc 3 288 33 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 288 30 discriminator 1
	testl	%eax, %eax
	je	.L62
.LBB11:
	.loc 3 289 13
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L62:
.LBE11:
	.loc 3 292 11
	movzbl	just_user(%rip), %eax
	xorl	$1, %eax
	.loc 3 292 10
	testb	%al, %al
	je	.L63
	.loc 3 292 26 discriminator 1
	movzbl	just_group(%rip), %eax
	.loc 3 292 22 discriminator 1
	testb	%al, %al
	jne	.L64
	.loc 3 292 37 discriminator 2
	movzbl	just_group_list(%rip), %eax
	testb	%al, %al
	jne	.L64
	.loc 3 292 59 discriminator 3
	movzbl	just_context(%rip), %eax
	xorl	$1, %eax
	.loc 3 292 56 discriminator 3
	testb	%al, %al
	je	.L63
.L64:
	.loc 3 294 11
	call	__errno_location@PLT
	.loc 3 294 17
	movl	$0, (%rax)
	.loc 3 295 18
	call	getegid@PLT
	.loc 3 295 16
	movl	%eax, egid(%rip)
	.loc 3 296 20
	movl	egid(%rip), %eax
	.loc 3 296 14
	cmpl	%eax, -52(%rbp)
	jne	.L65
	.loc 3 296 33 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 296 30 discriminator 1
	testl	%eax, %eax
	je	.L65
.LBB12:
	.loc 3 297 13
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L65:
.LBE12:
	.loc 3 299 11
	call	__errno_location@PLT
	.loc 3 299 17
	movl	$0, (%rax)
	.loc 3 300 18
	call	getgid@PLT
	.loc 3 300 16
	movl	%eax, rgid(%rip)
	.loc 3 301 20
	movl	rgid(%rip), %eax
	.loc 3 301 14
	cmpl	%eax, -52(%rbp)
	jne	.L63
	.loc 3 301 33 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 301 30 discriminator 1
	testl	%eax, %eax
	je	.L63
.LBB13:
	.loc 3 302 13
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L63:
.LBE13:
	.loc 3 304 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	print_stuff
.L51:
.LBE9:
	.loc 3 307 28
	movzbl	ok(%rip), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 3 308 1
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.type	gidtostr_ptr, @function
gidtostr_ptr:
.LFB51:
	.loc 3 315 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 3 317 21
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 3 317 10
	movl	%eax, %eax
	leaq	buf.6915(%rip), %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	.loc 3 318 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	gidtostr_ptr, .-gidtostr_ptr
	.type	uidtostr_ptr, @function
uidtostr_ptr:
.LFB52:
	.loc 3 326 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 3 328 21
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 3 328 10
	movl	%eax, %eax
	leaq	buf.6919(%rip), %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	.loc 3 329 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	uidtostr_ptr, .-uidtostr_ptr
	.section	.rodata
	.align 8
.LC51:
	.string	"cannot find name for user ID %s"
	.text
	.type	print_user, @function
print_user:
.LFB53:
	.loc 3 336 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	.loc 3 337 18
	movq	$0, -32(%rbp)
	.loc 3 339 7
	movzbl	use_name(%rip), %eax
	.loc 3 339 6
	testb	%al, %al
	je	.L72
	.loc 3 341 13
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	getpwuid@PLT
	movq	%rax, -32(%rbp)
	.loc 3 342 10
	cmpq	$0, -32(%rbp)
	jne	.L72
	.loc 3 344 11
	leaq	-36(%rbp), %rax
	movq	%rax, %rdi
	call	uidtostr_ptr
	movq	%rax, %rbx
	.loc 3 344 24
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	.loc 3 344 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 346 14
	movb	$0, ok(%rip)
.L72:
	.loc 3 350 32
	cmpq	$0, -32(%rbp)
	je	.L73
	.loc 3 350 32 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L74
.L73:
	.loc 3 350 34 is_stmt 1 discriminator 2
	leaq	-36(%rbp), %rax
	movq	%rax, %rdi
	call	uidtostr_ptr
.L74:
	.loc 3 350 9 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 3 351 3 discriminator 4
	movq	stdout(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 352 1 discriminator 4
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	print_user, .-print_user
	.section	.rodata
.LC52:
	.string	"uid=%s"
.LC53:
	.string	"(%s)"
.LC54:
	.string	" gid=%s"
.LC55:
	.string	" euid=%s"
.LC56:
	.string	" egid=%s"
	.align 8
.LC57:
	.string	"failed to get groups for user %s"
	.align 8
.LC58:
	.string	"failed to get groups for the current process"
.LC59:
	.string	" groups="
.LC60:
	.string	" context=%s"
	.text
	.type	print_full_info, @function
print_full_info:
.LFB54:
	.loc 3 358 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	.loc 3 358 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 362 3
	leaq	ruid(%rip), %rdi
	call	uidtostr_ptr
	movq	%rax, %rbx
	.loc 3 362 11
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	.loc 3 362 3
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 363 9
	movl	ruid(%rip), %eax
	movl	%eax, %edi
	call	getpwuid@PLT
	movq	%rax, -40(%rbp)
	.loc 3 364 6
	cmpq	$0, -40(%rbp)
	je	.L76
	.loc 3 365 5
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L76:
	.loc 3 367 3
	leaq	rgid(%rip), %rdi
	call	gidtostr_ptr
	movq	%rax, %rbx
	.loc 3 367 11
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	.loc 3 367 3
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 368 9
	movl	rgid(%rip), %eax
	movl	%eax, %edi
	call	getgrgid@PLT
	movq	%rax, -32(%rbp)
	.loc 3 369 6
	cmpq	$0, -32(%rbp)
	je	.L77
	.loc 3 370 5
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L77:
	.loc 3 372 12
	movl	euid(%rip), %edx
	movl	ruid(%rip), %eax
	.loc 3 372 6
	cmpl	%eax, %edx
	je	.L78
	.loc 3 374 7
	leaq	euid(%rip), %rdi
	call	uidtostr_ptr
	movq	%rax, %rbx
	.loc 3 374 15
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	.loc 3 374 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 375 13
	movl	euid(%rip), %eax
	movl	%eax, %edi
	call	getpwuid@PLT
	movq	%rax, -40(%rbp)
	.loc 3 376 10
	cmpq	$0, -40(%rbp)
	je	.L78
	.loc 3 377 9
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L78:
	.loc 3 380 12
	movl	egid(%rip), %edx
	movl	rgid(%rip), %eax
	.loc 3 380 6
	cmpl	%eax, %edx
	je	.L79
	.loc 3 382 7
	leaq	egid(%rip), %rdi
	call	gidtostr_ptr
	movq	%rax, %rbx
	.loc 3 382 15
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	.loc 3 382 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 383 13
	movl	egid(%rip), %eax
	movl	%eax, %edi
	call	getgrgid@PLT
	movq	%rax, -32(%rbp)
	.loc 3 384 10
	cmpq	$0, -32(%rbp)
	je	.L79
	.loc 3 385 9
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L79:
.LBB14:
	.loc 3 392 8
	cmpq	$0, -72(%rbp)
	je	.L80
	.loc 3 393 41
	cmpq	$0, -40(%rbp)
	je	.L81
	.loc 3 393 41 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	jmp	.L82
.L81:
	.loc 3 393 41 discriminator 2
	movl	$-1, %eax
.L82:
	.loc 3 393 21 is_stmt 1 discriminator 4
	movl	%eax, -60(%rbp)
	jmp	.L83
.L80:
	.loc 3 395 21
	movl	egid(%rip), %eax
	movl	%eax, -60(%rbp)
.L83:
	.loc 3 397 20
	leaq	-48(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	xgetgroups@PLT
	movl	%eax, -52(%rbp)
	.loc 3 398 8
	cmpl	$0, -52(%rbp)
	jns	.L84
	.loc 3 400 12
	cmpq	$0, -72(%rbp)
	je	.L85
	.loc 3 401 11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 3 401 28
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 401 21
	call	__errno_location@PLT
	.loc 3 401 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L86
.L85:
	.loc 3 404 28
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 404 21
	call	__errno_location@PLT
	.loc 3 404 11
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L86:
	.loc 3 405 12
	movb	$0, ok(%rip)
	jmp	.L75
.L84:
	.loc 3 409 8
	cmpl	$0, -52(%rbp)
	jle	.L88
	.loc 3 410 7
	movq	stdout(%rip), %rbx
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L88:
.LBB15:
	.loc 3 411 14
	movl	$0, -56(%rbp)
	.loc 3 411 5
	jmp	.L89
.L92:
	.loc 3 413 12
	cmpl	$0, -56(%rbp)
	jle	.L90
	.loc 3 414 11
	movl	$44, %edi
	call	putchar_unlocked@PLT
.L90:
	.loc 3 415 9
	movq	stdout(%rip), %rbx
	movq	-48(%rbp), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	gidtostr_ptr
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 416 31
	movq	-48(%rbp), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 3 416 15
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getgrgid@PLT
	movq	%rax, -32(%rbp)
	.loc 3 417 12
	cmpq	$0, -32(%rbp)
	je	.L91
	.loc 3 418 11
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L91:
	.loc 3 411 36 discriminator 2
	addl	$1, -56(%rbp)
.L89:
	.loc 3 411 5 discriminator 1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L92
.LBE15:
	.loc 3 420 5
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE14:
	.loc 3 425 7
	movq	context(%rip), %rax
	.loc 3 425 6
	testq	%rax, %rax
	je	.L75
	.loc 3 426 5
	movq	context(%rip), %rbx
	.loc 3 426 13
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	.loc 3 426 5
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L75:
	.loc 3 427 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	print_full_info, .-print_full_info
	.type	print_stuff, @function
print_stuff:
.LFB55:
	.loc 3 433 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 3 434 7
	movzbl	just_user(%rip), %eax
	.loc 3 434 6
	testb	%al, %al
	je	.L95
	.loc 3 435 28
	movzbl	use_real(%rip), %eax
	.loc 3 435 7
	testb	%al, %al
	je	.L96
	.loc 3 435 7 is_stmt 0 discriminator 1
	movl	ruid(%rip), %eax
	jmp	.L97
.L96:
	.loc 3 435 7 discriminator 2
	movl	euid(%rip), %eax
.L97:
	.loc 3 435 7 discriminator 4
	movl	%eax, %edi
	call	print_user
	jmp	.L98
.L95:
	.loc 3 442 12 is_stmt 1
	movzbl	just_group(%rip), %eax
	.loc 3 442 11
	testb	%al, %al
	je	.L99
	.loc 3 443 11
	movzbl	use_name(%rip), %eax
	movzbl	%al, %edx
	.loc 3 443 33
	movzbl	use_real(%rip), %eax
	.loc 3 443 11
	testb	%al, %al
	je	.L100
	.loc 3 443 11 is_stmt 0 discriminator 1
	movl	rgid(%rip), %eax
	jmp	.L101
.L100:
	.loc 3 443 11 discriminator 2
	movl	egid(%rip), %eax
.L101:
	.loc 3 443 11 discriminator 4
	movl	%edx, %esi
	movl	%eax, %edi
	call	print_group@PLT
	.loc 3 443 8 is_stmt 1 discriminator 4
	movzbl	ok(%rip), %edx
	movzbl	%dl, %edx
	.loc 3 443 11 discriminator 4
	movzbl	%al, %eax
	.loc 3 443 8 discriminator 4
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, ok(%rip)
	jmp	.L98
.L99:
	.loc 3 444 12
	movzbl	just_group_list(%rip), %eax
	.loc 3 444 11
	testb	%al, %al
	je	.L102
	.loc 3 446 48
	movzbl	opt_zero(%rip), %eax
	.loc 3 445 11
	testb	%al, %al
	je	.L103
	.loc 3 445 11 is_stmt 0 discriminator 1
	movl	$0, %r8d
	jmp	.L104
.L103:
	.loc 3 445 11 discriminator 2
	movl	$32, %r8d
.L104:
	.loc 3 445 11 discriminator 4
	movzbl	use_name(%rip), %eax
	movzbl	%al, %edi
	movl	egid(%rip), %ecx
	movl	rgid(%rip), %edx
	movl	ruid(%rip), %esi
	movq	-8(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	print_group_list@PLT
	.loc 3 445 8 is_stmt 1 discriminator 4
	movzbl	ok(%rip), %edx
	movzbl	%dl, %edx
	.loc 3 445 11 discriminator 4
	movzbl	%al, %eax
	.loc 3 445 8 discriminator 4
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, ok(%rip)
	jmp	.L98
.L102:
	.loc 3 447 12
	movzbl	just_context(%rip), %eax
	.loc 3 447 11
	testb	%al, %al
	je	.L105
	.loc 3 448 5
	movq	stdout(%rip), %rdx
	movq	context(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	jmp	.L98
.L105:
	.loc 3 450 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	print_full_info
.L98:
	.loc 3 455 7
	movzbl	opt_zero(%rip), %eax
	.loc 3 455 6
	testb	%al, %al
	je	.L106
	.loc 3 455 16 discriminator 1
	movzbl	just_group_list(%rip), %eax
	testb	%al, %al
	je	.L106
	.loc 3 455 35 discriminator 2
	movzbl	multiple_users(%rip), %eax
	testb	%al, %al
	je	.L106
	.loc 3 457 7
	movl	$0, %edi
	call	putchar_unlocked@PLT
	.loc 3 458 7
	movl	$0, %edi
	call	putchar_unlocked@PLT
	jmp	.L107
.L106:
	.loc 3 462 7
	movzbl	opt_zero(%rip), %eax
	testb	%al, %al
	je	.L108
	.loc 3 462 7 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L109
.L108:
	.loc 3 462 7 discriminator 2
	movl	$10, %eax
.L109:
	.loc 3 462 7 discriminator 4
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 3 464 1 is_stmt 1 discriminator 4
	nop
.L107:
	.loc 3 464 1 is_stmt 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	print_stuff, .-print_stuff
	.local	buf.6915
	.comm	buf.6915,21,16
	.local	buf.6919
	.comm	buf.6919,21,16
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
	.file 13 "/usr/include/pwd.h"
	.file 14 "/usr/include/grp.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 17 "/usr/include/time.h"
	.file 18 "/usr/include/signal.h"
	.file 19 "/usr/include/unistd.h"
	.file 20 "/usr/include/errno.h"
	.file 21 "src/version.h"
	.file 22 "./lib/exitfail.h"
	.file 23 "/usr/include/stdint.h"
	.file 24 "./lib/timespec.h"
	.file 25 "./lib/version-etc.h"
	.file 26 "./lib/progname.h"
	.file 27 "./lib/quotearg.h"
	.file 28 "./lib/error.h"
	.file 29 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd2d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF171
	.byte	0xc
	.long	.LASF172
	.long	.LASF173
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
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x93
	.byte	0x19
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
	.uleb128 0x2
	.long	.LASF14
	.byte	0x5
	.byte	0xc1
	.byte	0x1b
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xd2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x8
	.long	0xd2
	.uleb128 0x9
	.long	.LASF64
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x265
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0xcc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0xcc
	.byte	0x10
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0xcc
	.byte	0x18
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0xcc
	.byte	0x20
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0xcc
	.byte	0x28
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0xcc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0xcc
	.byte	0x38
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0xcc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0xcc
	.byte	0x48
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0xcc
	.byte	0x50
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0xcc
	.byte	0x58
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x27e
	.byte	0x60
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x284
	.byte	0x68
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x9c
	.byte	0x78
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x28a
	.byte	0x83
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x29a
	.byte	0x88
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xa8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x2a5
	.byte	0x98
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x2b0
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x284
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x2b6
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF45
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xde
	.uleb128 0xb
	.long	.LASF174
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x279
	.uleb128 0x7
	.byte	0x8
	.long	0xde
	.uleb128 0xd
	.long	0xd2
	.long	0x29a
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x271
	.uleb128 0xc
	.long	.LASF47
	.uleb128 0x7
	.byte	0x8
	.long	0x2a0
	.uleb128 0xc
	.long	.LASF48
	.uleb128 0x7
	.byte	0x8
	.long	0x2ab
	.uleb128 0xd
	.long	0xd2
	.long	0x2c6
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xd9
	.uleb128 0x8
	.long	0x2c6
	.uleb128 0x2
	.long	.LASF49
	.byte	0x8
	.byte	0x4d
	.byte	0x13
	.long	0xc0
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x2e9
	.uleb128 0x7
	.byte	0x8
	.long	0x265
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x2e9
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x2e9
	.uleb128 0xf
	.long	.LASF53
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2cc
	.long	0x31e
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x313
	.uleb128 0xf
	.long	.LASF54
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x31e
	.uleb128 0xf
	.long	.LASF55
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF56
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x31e
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF57
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF58
	.uleb128 0x2
	.long	.LASF59
	.byte	0xa
	.byte	0x40
	.byte	0x11
	.long	0x90
	.uleb128 0x8
	.long	0x355
	.uleb128 0x2
	.long	.LASF60
	.byte	0xa
	.byte	0x4f
	.byte	0x11
	.long	0x84
	.uleb128 0x8
	.long	0x366
	.uleb128 0x2
	.long	.LASF61
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0xb4
	.uleb128 0x11
	.long	.LASF62
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF63
	.uleb128 0x9
	.long	.LASF65
	.byte	0x30
	.byte	0xd
	.byte	0x31
	.byte	0x8
	.long	0x400
	.uleb128 0xa
	.long	.LASF66
	.byte	0xd
	.byte	0x33
	.byte	0x9
	.long	0xcc
	.byte	0
	.uleb128 0xa
	.long	.LASF67
	.byte	0xd
	.byte	0x34
	.byte	0x9
	.long	0xcc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF68
	.byte	0xd
	.byte	0x36
	.byte	0xb
	.long	0x84
	.byte	0x10
	.uleb128 0xa
	.long	.LASF69
	.byte	0xd
	.byte	0x37
	.byte	0xb
	.long	0x90
	.byte	0x14
	.uleb128 0xa
	.long	.LASF70
	.byte	0xd
	.byte	0x38
	.byte	0x9
	.long	0xcc
	.byte	0x18
	.uleb128 0xa
	.long	.LASF71
	.byte	0xd
	.byte	0x39
	.byte	0x9
	.long	0xcc
	.byte	0x20
	.uleb128 0xa
	.long	.LASF72
	.byte	0xd
	.byte	0x3a
	.byte	0x9
	.long	0xcc
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.long	.LASF73
	.byte	0x20
	.byte	0xe
	.byte	0x2a
	.byte	0x8
	.long	0x442
	.uleb128 0xa
	.long	.LASF74
	.byte	0xe
	.byte	0x2c
	.byte	0xb
	.long	0xcc
	.byte	0
	.uleb128 0xa
	.long	.LASF75
	.byte	0xe
	.byte	0x2d
	.byte	0xb
	.long	0xcc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF76
	.byte	0xe
	.byte	0x2e
	.byte	0xd
	.long	0x90
	.byte	0x10
	.uleb128 0xa
	.long	.LASF77
	.byte	0xe
	.byte	0x2f
	.byte	0xc
	.long	0x442
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xcc
	.uleb128 0xf
	.long	.LASF78
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0xcc
	.uleb128 0xf
	.long	.LASF79
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF80
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF81
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF82
	.byte	0x20
	.byte	0x10
	.byte	0x32
	.byte	0x8
	.long	0x4ba
	.uleb128 0xa
	.long	.LASF83
	.byte	0x10
	.byte	0x34
	.byte	0xf
	.long	0x2c6
	.byte	0
	.uleb128 0xa
	.long	.LASF84
	.byte	0x10
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF85
	.byte	0x10
	.byte	0x38
	.byte	0x8
	.long	0x4bf
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0x10
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x478
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0xcc
	.long	0x4d5
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF86
	.byte	0x11
	.byte	0x9f
	.byte	0xe
	.long	0x4c5
	.uleb128 0xf
	.long	.LASF87
	.byte	0x11
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF88
	.byte	0x11
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF89
	.byte	0x11
	.byte	0xa6
	.byte	0xe
	.long	0x4c5
	.uleb128 0xf
	.long	.LASF90
	.byte	0x11
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF91
	.byte	0x11
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF92
	.byte	0x11
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x52a
	.uleb128 0xd
	.long	0x2cc
	.long	0x541
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x531
	.uleb128 0x11
	.long	.LASF93
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x541
	.uleb128 0x11
	.long	.LASF94
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x541
	.uleb128 0x11
	.long	.LASF95
	.byte	0x13
	.value	0x21f
	.byte	0xf
	.long	0x442
	.uleb128 0x11
	.long	.LASF96
	.byte	0x13
	.value	0x221
	.byte	0xf
	.long	0x442
	.uleb128 0xf
	.long	.LASF97
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0xcc
	.uleb128 0xf
	.long	.LASF98
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0xcc
	.uleb128 0xf
	.long	.LASF99
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0x2c6
	.uleb128 0xf
	.long	.LASF100
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF101
	.byte	0x17
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x5ce
	.uleb128 0x15
	.long	.LASF102
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x5e3
	.uleb128 0x16
	.long	.LASF103
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x601
	.uleb128 0x18
	.long	.LASF104
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF105
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xd9
	.long	0x60c
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x601
	.uleb128 0xf
	.long	.LASF106
	.byte	0x19
	.byte	0x19
	.byte	0x13
	.long	0x60c
	.uleb128 0xf
	.long	.LASF107
	.byte	0x1a
	.byte	0x20
	.byte	0x14
	.long	0x2c6
	.uleb128 0x19
	.long	.LASF175
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1b
	.byte	0x20
	.byte	0x6
	.long	0x67e
	.uleb128 0x16
	.long	.LASF108
	.byte	0
	.uleb128 0x16
	.long	.LASF109
	.byte	0x1
	.uleb128 0x16
	.long	.LASF110
	.byte	0x2
	.uleb128 0x16
	.long	.LASF111
	.byte	0x3
	.uleb128 0x16
	.long	.LASF112
	.byte	0x4
	.uleb128 0x16
	.long	.LASF113
	.byte	0x5
	.uleb128 0x16
	.long	.LASF114
	.byte	0x6
	.uleb128 0x16
	.long	.LASF115
	.byte	0x7
	.uleb128 0x16
	.long	.LASF116
	.byte	0x8
	.uleb128 0x16
	.long	.LASF117
	.byte	0x9
	.uleb128 0x16
	.long	.LASF118
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x629
	.uleb128 0x11
	.long	.LASF119
	.byte	0x1b
	.value	0x10b
	.byte	0x1a
	.long	0x31e
	.uleb128 0xd
	.long	0x67e
	.long	0x69b
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x690
	.uleb128 0x11
	.long	.LASF120
	.byte	0x1b
	.value	0x10c
	.byte	0x21
	.long	0x69b
	.uleb128 0xf
	.long	.LASF121
	.byte	0x1c
	.byte	0x32
	.byte	0xf
	.long	0x52b
	.uleb128 0xf
	.long	.LASF122
	.byte	0x1c
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF123
	.byte	0x1c
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF124
	.uleb128 0xf
	.long	.LASF125
	.byte	0x1d
	.byte	0x19
	.byte	0x1f
	.long	0x6d1
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x3
	.byte	0x2d
	.byte	0xd
	.long	0x6f8
	.uleb128 0x9
	.byte	0x3
	.quad	just_context
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF126
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x3
	.byte	0x2f
	.byte	0xd
	.long	0x6f8
	.uleb128 0x9
	.byte	0x3
	.quad	opt_zero
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x3
	.byte	0x31
	.byte	0xd
	.long	0x6f8
	.uleb128 0x9
	.byte	0x3
	.quad	just_group_list
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x3
	.byte	0x33
	.byte	0xd
	.long	0x6f8
	.uleb128 0x9
	.byte	0x3
	.quad	just_group
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x3
	.byte	0x35
	.byte	0xd
	.long	0x6f8
	.uleb128 0x9
	.byte	0x3
	.quad	use_real
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x3
	.byte	0x37
	.byte	0xd
	.long	0x6f8
	.uleb128 0x9
	.byte	0x3
	.quad	just_user
	.uleb128 0x1b
	.string	"ok"
	.byte	0x3
	.byte	0x39
	.byte	0xd
	.long	0x6f8
	.uleb128 0x9
	.byte	0x3
	.quad	ok
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x3
	.byte	0x3b
	.byte	0xd
	.long	0x6f8
	.uleb128 0x9
	.byte	0x3
	.quad	multiple_users
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x3
	.byte	0x3d
	.byte	0xd
	.long	0x6f8
	.uleb128 0x9
	.byte	0x3
	.quad	use_name
	.uleb128 0x1a
	.long	.LASF135
	.byte	0x3
	.byte	0x40
	.byte	0xe
	.long	0x366
	.uleb128 0x9
	.byte	0x3
	.quad	ruid
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x3
	.byte	0x40
	.byte	0x14
	.long	0x366
	.uleb128 0x9
	.byte	0x3
	.quad	euid
	.uleb128 0x1a
	.long	.LASF137
	.byte	0x3
	.byte	0x41
	.byte	0xe
	.long	0x355
	.uleb128 0x9
	.byte	0x3
	.quad	rgid
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x3
	.byte	0x41
	.byte	0x14
	.long	0x355
	.uleb128 0x9
	.byte	0x3
	.quad	egid
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x3
	.byte	0x45
	.byte	0xe
	.long	0xcc
	.uleb128 0x9
	.byte	0x3
	.quad	context
	.uleb128 0xd
	.long	0x4ba
	.long	0x82c
	.uleb128 0xe
	.long	0x39
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.long	0x81c
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x3
	.byte	0x4b
	.byte	0x1c
	.long	0x82c
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF141
	.byte	0x3
	.value	0x1b0
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x877
	.uleb128 0x1d
	.long	.LASF66
	.byte	0x3
	.value	0x1b0
	.byte	0x1a
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF142
	.byte	0x3
	.value	0x165
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x92d
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x3
	.value	0x165
	.byte	0x1e
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.string	"pwd"
	.byte	0x3
	.value	0x167
	.byte	0x12
	.long	0x92d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"grp"
	.byte	0x3
	.value	0x168
	.byte	0x11
	.long	0x933
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x20
	.long	.LASF144
	.byte	0x3
	.value	0x185
	.byte	0xc
	.long	0x939
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF145
	.byte	0x3
	.value	0x187
	.byte	0xb
	.long	0x355
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x20
	.long	.LASF146
	.byte	0x3
	.value	0x18d
	.byte	0x9
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1f
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x1e
	.string	"i"
	.byte	0x3
	.value	0x19b
	.byte	0xe
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x397
	.uleb128 0x7
	.byte	0x8
	.long	0x400
	.uleb128 0x7
	.byte	0x8
	.long	0x355
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x3
	.value	0x14f
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x98d
	.uleb128 0x21
	.string	"uid"
	.byte	0x3
	.value	0x14f
	.byte	0x13
	.long	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.string	"pwd"
	.byte	0x3
	.value	0x151
	.byte	0x12
	.long	0x92d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"s"
	.byte	0x3
	.value	0x15e
	.byte	0x9
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF148
	.byte	0x3
	.value	0x145
	.byte	0x1
	.long	0xcc
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d8
	.uleb128 0x21
	.string	"uid"
	.byte	0x3
	.value	0x145
	.byte	0x1c
	.long	0x9d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"buf"
	.byte	0x3
	.value	0x147
	.byte	0xf
	.long	0x9de
	.uleb128 0x9
	.byte	0x3
	.quad	buf.6919
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x372
	.uleb128 0xd
	.long	0xd2
	.long	0x9ee
	.uleb128 0xe
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x22
	.long	.LASF149
	.byte	0x3
	.value	0x13a
	.byte	0x1
	.long	0xcc
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xa39
	.uleb128 0x21
	.string	"gid"
	.byte	0x3
	.value	0x13a
	.byte	0x1c
	.long	0xa39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"buf"
	.byte	0x3
	.value	0x13c
	.byte	0xf
	.long	0x9de
	.uleb128 0x9
	.byte	0x3
	.quad	buf.6915
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x361
	.uleb128 0x23
	.long	.LASF160
	.byte	0x3
	.byte	0x7d
	.byte	0x1
	.long	0x65
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf2
	.uleb128 0x24
	.long	.LASF150
	.byte	0x3
	.byte	0x7d
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.long	.LASF151
	.byte	0x3
	.byte	0x7d
	.byte	0x18
	.long	0x442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF152
	.byte	0x3
	.byte	0x7f
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x3
	.byte	0x80
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x3
	.byte	0x81
	.byte	0x8
	.long	0x6f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x1a
	.long	.LASF66
	.byte	0x3
	.byte	0x82
	.byte	0x9
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x3
	.byte	0xbc
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x3
	.byte	0xc5
	.byte	0x8
	.long	0x6f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x25
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x26
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xb79
	.uleb128 0x1b
	.string	"pwd"
	.byte	0x3
	.byte	0xee
	.byte	0x1a
	.long	0x92d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF157
	.byte	0x3
	.byte	0xef
	.byte	0x17
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x20
	.long	.LASF158
	.byte	0x3
	.value	0x10f
	.byte	0xd
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF159
	.byte	0x3
	.value	0x110
	.byte	0xd
	.long	0x355
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x25
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x25
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x25
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF161
	.byte	0x3
	.byte	0x5a
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xc20
	.uleb128 0x24
	.long	.LASF162
	.byte	0x3
	.byte	0x5a
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x28
	.long	.LASF176
	.byte	0x2
	.byte	0x27
	.byte	0x1
	.long	0x6f8
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF163
	.byte	0x2
	.byte	0x1a
	.byte	0x1
	.long	0x2d1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xc70
	.uleb128 0x24
	.long	.LASF164
	.byte	0x2
	.byte	0x1a
	.byte	0x23
	.long	0x442
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xd15
	.uleb128 0x1d
	.long	.LASF166
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.long	.LASF167
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xccb
	.uleb128 0x2b
	.long	.LASF166
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2c6
	.byte	0
	.uleb128 0x2b
	.long	.LASF168
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2c6
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xca0
	.uleb128 0x20
	.long	.LASF167
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xd25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF168
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF169
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xd2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.long	.LASF170
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xccb
	.long	0xd25
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xd15
	.uleb128 0x7
	.byte	0x8
	.long	0xccb
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
.LASF100:
	.string	"exit_failure"
.LASF11:
	.string	"__off_t"
.LASF17:
	.string	"_IO_read_ptr"
.LASF116:
	.string	"locale_quoting_style"
.LASF29:
	.string	"_chain"
.LASF105:
	.string	"GETOPT_VERSION_CHAR"
.LASF140:
	.string	"longopts"
.LASF175:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF35:
	.string	"_shortbuf"
.LASF69:
	.string	"pw_gid"
.LASF49:
	.string	"ssize_t"
.LASF109:
	.string	"shell_quoting_style"
.LASF104:
	.string	"GETOPT_HELP_CHAR"
.LASF23:
	.string	"_IO_buf_base"
.LASF135:
	.string	"ruid"
.LASF63:
	.string	"long long unsigned int"
.LASF163:
	.string	"smack_new_label_from_self"
.LASF156:
	.string	"default_format"
.LASF38:
	.string	"_codecvt"
.LASF10:
	.string	"__gid_t"
.LASF72:
	.string	"pw_shell"
.LASF88:
	.string	"__timezone"
.LASF57:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF120:
	.string	"quoting_style_vals"
.LASF101:
	.string	"uintmax_t"
.LASF166:
	.string	"program"
.LASF115:
	.string	"escape_quoting_style"
.LASF108:
	.string	"literal_quoting_style"
.LASF30:
	.string	"_fileno"
.LASF18:
	.string	"_IO_read_end"
.LASF73:
	.string	"group"
.LASF94:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF62:
	.string	"_gl_cxxalias_dummy"
.LASF145:
	.string	"primary_group"
.LASF16:
	.string	"_flags"
.LASF14:
	.string	"__ssize_t"
.LASF136:
	.string	"euid"
.LASF33:
	.string	"_cur_column"
.LASF98:
	.string	"program_invocation_short_name"
.LASF113:
	.string	"c_quoting_style"
.LASF47:
	.string	"_IO_codecvt"
.LASF56:
	.string	"_sys_errlist"
.LASF141:
	.string	"print_stuff"
.LASF97:
	.string	"program_invocation_name"
.LASF32:
	.string	"_old_offset"
.LASF37:
	.string	"_offset"
.LASF3:
	.string	"short unsigned int"
.LASF153:
	.string	"selinux_enabled"
.LASF102:
	.string	"TIMESPEC_HZ"
.LASF112:
	.string	"shell_escape_always_quoting_style"
.LASF91:
	.string	"timezone"
.LASF130:
	.string	"just_group"
.LASF107:
	.string	"program_name"
.LASF129:
	.string	"just_group_list"
.LASF77:
	.string	"gr_mem"
.LASF50:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF41:
	.string	"_freeres_buf"
.LASF75:
	.string	"gr_passwd"
.LASF0:
	.string	"long unsigned int"
.LASF157:
	.string	"spec"
.LASF138:
	.string	"egid"
.LASF21:
	.string	"_IO_write_ptr"
.LASF83:
	.string	"name"
.LASF90:
	.string	"daylight"
.LASF53:
	.string	"sys_nerr"
.LASF60:
	.string	"uid_t"
.LASF171:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF118:
	.string	"custom_quoting_style"
.LASF147:
	.string	"print_user"
.LASF123:
	.string	"error_one_per_line"
.LASF99:
	.string	"Version"
.LASF25:
	.string	"_IO_save_base"
.LASF158:
	.string	"NO_UID"
.LASF172:
	.string	"src/id.c"
.LASF96:
	.string	"environ"
.LASF164:
	.string	"label"
.LASF36:
	.string	"_lock"
.LASF31:
	.string	"_flags2"
.LASF143:
	.string	"username"
.LASF51:
	.string	"stdout"
.LASF152:
	.string	"optc"
.LASF67:
	.string	"pw_passwd"
.LASF106:
	.string	"version_etc_copyright"
.LASF39:
	.string	"_wide_data"
.LASF78:
	.string	"optarg"
.LASF134:
	.string	"use_name"
.LASF92:
	.string	"getdate_err"
.LASF79:
	.string	"optind"
.LASF68:
	.string	"pw_uid"
.LASF155:
	.string	"n_ids"
.LASF22:
	.string	"_IO_write_end"
.LASF66:
	.string	"pw_name"
.LASF174:
	.string	"_IO_lock_t"
.LASF142:
	.string	"print_full_info"
.LASF64:
	.string	"_IO_FILE"
.LASF121:
	.string	"error_print_progname"
.LASF144:
	.string	"groups"
.LASF169:
	.string	"map_prog"
.LASF95:
	.string	"__environ"
.LASF61:
	.string	"time_t"
.LASF154:
	.string	"smack_enabled"
.LASF46:
	.string	"_IO_marker"
.LASF54:
	.string	"sys_errlist"
.LASF28:
	.string	"_markers"
.LASF137:
	.string	"rgid"
.LASF71:
	.string	"pw_dir"
.LASF114:
	.string	"c_maybe_quoting_style"
.LASF103:
	.string	"LOG10_TIMESPEC_HZ"
.LASF126:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF149:
	.string	"gidtostr_ptr"
.LASF168:
	.string	"node"
.LASF24:
	.string	"_IO_buf_end"
.LASF74:
	.string	"gr_name"
.LASF5:
	.string	"short int"
.LASF82:
	.string	"option"
.LASF125:
	.string	"quote_quoting_options"
.LASF85:
	.string	"flag"
.LASF55:
	.string	"_sys_nerr"
.LASF89:
	.string	"tzname"
.LASF65:
	.string	"passwd"
.LASF45:
	.string	"FILE"
.LASF159:
	.string	"NO_GID"
.LASF111:
	.string	"shell_escape_quoting_style"
.LASF128:
	.string	"opt_zero"
.LASF119:
	.string	"quoting_style_args"
.LASF81:
	.string	"optopt"
.LASF43:
	.string	"_mode"
.LASF132:
	.string	"just_user"
.LASF58:
	.string	"long double"
.LASF146:
	.string	"n_groups"
.LASF15:
	.string	"char"
.LASF110:
	.string	"shell_always_quoting_style"
.LASF70:
	.string	"pw_gecos"
.LASF131:
	.string	"use_real"
.LASF117:
	.string	"clocale_quoting_style"
.LASF80:
	.string	"opterr"
.LASF9:
	.string	"__uid_t"
.LASF8:
	.string	"__uintmax_t"
.LASF12:
	.string	"__off64_t"
.LASF124:
	.string	"quoting_options"
.LASF19:
	.string	"_IO_read_base"
.LASF27:
	.string	"_IO_save_end"
.LASF93:
	.string	"_sys_siglist"
.LASF167:
	.string	"infomap"
.LASF84:
	.string	"has_arg"
.LASF161:
	.string	"usage"
.LASF42:
	.string	"__pad5"
.LASF13:
	.string	"__time_t"
.LASF148:
	.string	"uidtostr_ptr"
.LASF44:
	.string	"_unused2"
.LASF52:
	.string	"stderr"
.LASF151:
	.string	"argv"
.LASF87:
	.string	"__daylight"
.LASF176:
	.string	"is_smack_enabled"
.LASF162:
	.string	"status"
.LASF173:
	.string	"/root/coreutils"
.LASF133:
	.string	"multiple_users"
.LASF26:
	.string	"_IO_backup_base"
.LASF76:
	.string	"gr_gid"
.LASF59:
	.string	"gid_t"
.LASF122:
	.string	"error_message_count"
.LASF170:
	.string	"lc_messages"
.LASF34:
	.string	"_vtable_offset"
.LASF150:
	.string	"argc"
.LASF40:
	.string	"_freeres_list"
.LASF139:
	.string	"context"
.LASF48:
	.string	"_IO_wide_data"
.LASF127:
	.string	"just_context"
.LASF86:
	.string	"__tzname"
.LASF160:
	.string	"main"
.LASF20:
	.string	"_IO_write_base"
.LASF165:
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
