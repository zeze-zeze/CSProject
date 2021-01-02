	.file	"chcon.c"
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
	.local	affect_symlink_referent
	.comm	affect_symlink_referent,1,1
	.local	recurse
	.comm	recurse,1,1
	.local	verbose
	.comm	verbose,1,1
	.local	root_dev_ino
	.comm	root_dev_ino,8,8
	.local	specified_context
	.comm	specified_context,8,8
	.local	specified_user
	.comm	specified_user,8,8
	.local	specified_role
	.comm	specified_role,8,8
	.local	specified_range
	.comm	specified_range,8,8
	.local	specified_type
	.comm	specified_type,8,8
	.section	.rodata
.LC19:
	.string	"recursive"
.LC20:
	.string	"dereference"
.LC21:
	.string	"no-dereference"
.LC22:
	.string	"no-preserve-root"
.LC23:
	.string	"preserve-root"
.LC24:
	.string	"reference"
.LC25:
	.string	"user"
.LC26:
	.string	"role"
.LC27:
	.string	"type"
.LC28:
	.string	"range"
.LC29:
	.string	"verbose"
.LC30:
	.string	"help"
.LC31:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 448
long_options:
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC24
	.long	1
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC25
	.long	1
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC26
	.long	1
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC27
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC28
	.long	1
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC31
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
.LC32:
	.string	"failed to create security context: %s"
	.align 8
.LC33:
	.string	"failed to set %s security context component to %s"
	.text
	.type	compute_context_from_mask, @function
compute_context_from_mask:
.LFB46:
	.file 2 "src/chcon.c"
	.loc 2 96 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 97 8
	movb	$1, -29(%rbp)
	.loc 2 98 27
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	context_new@PLT
	movq	%rax, -24(%rbp)
	.loc 2 99 6
	cmpq	$0, -24(%rbp)
	jne	.L12
	.loc 2 101 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 2 101 24
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 101 17
	call	__errno_location@PLT
	.loc 2 101 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 103 14
	movl	$1, %eax
	jmp	.L13
.L12:
	.loc 2 120 3
	movq	specified_user(%rip), %rax
	testq	%rax, %rax
	je	.L14
	.loc 2 120 3 is_stmt 0 discriminator 1
	movq	specified_user(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	context_user_set@PLT
	testl	%eax, %eax
	je	.L14
	.loc 2 120 3 discriminator 2
	movq	specified_user(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %r8
	leaq	.LC25(%rip), %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movb	$0, -29(%rbp)
.L14:
	.loc 2 121 3 is_stmt 1
	movq	specified_range(%rip), %rax
	testq	%rax, %rax
	je	.L15
	.loc 2 121 3 is_stmt 0 discriminator 1
	movq	specified_range(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	context_range_set@PLT
	testl	%eax, %eax
	je	.L15
	.loc 2 121 3 discriminator 2
	movq	specified_range(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %r8
	leaq	.LC28(%rip), %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movb	$0, -29(%rbp)
.L15:
	.loc 2 122 3 is_stmt 1
	movq	specified_role(%rip), %rax
	testq	%rax, %rax
	je	.L16
	.loc 2 122 3 is_stmt 0 discriminator 1
	movq	specified_role(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	context_role_set@PLT
	testl	%eax, %eax
	je	.L16
	.loc 2 122 3 discriminator 2
	movq	specified_role(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %r8
	leaq	.LC26(%rip), %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movb	$0, -29(%rbp)
.L16:
	.loc 2 123 3 is_stmt 1
	movq	specified_type(%rip), %rax
	testq	%rax, %rax
	je	.L17
	.loc 2 123 3 is_stmt 0 discriminator 1
	movq	specified_type(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	context_type_set@PLT
	testl	%eax, %eax
	je	.L17
	.loc 2 123 3 discriminator 2
	movq	specified_type(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %r8
	leaq	.LC27(%rip), %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movb	$0, -29(%rbp)
.L17:
	.loc 2 125 7 is_stmt 1
	movzbl	-29(%rbp), %eax
	xorl	$1, %eax
	.loc 2 125 6
	testb	%al, %al
	je	.L18
.LBB2:
	.loc 2 127 25
	call	__errno_location@PLT
	.loc 2 127 11
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 128 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	context_free@PLT
	.loc 2 129 7
	call	__errno_location@PLT
	.loc 2 129 13
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 130 14
	movl	$1, %eax
	jmp	.L13
.L18:
.LBE2:
	.loc 2 133 8
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 134 10
	movl	$0, %eax
.L13:
	.loc 2 135 1
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	compute_context_from_mask, .-compute_context_from_mask
	.section	.rodata
	.align 8
.LC34:
	.string	"failed to get security context of %s"
	.align 8
.LC35:
	.string	"can't apply partial context to unlabeled file %s"
	.align 8
.LC36:
	.string	"failed to change context of %s to %s"
	.text
	.type	change_file_context, @function
change_file_context:
.LFB47:
	.loc 2 143 1
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
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 2 143 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 2 144 9
	movq	$0, -64(%rbp)
	.loc 2 145 13
	movq	$0, -56(%rbp)
	.loc 2 147 7
	movl	$0, -76(%rbp)
	.loc 2 149 25
	movq	specified_context(%rip), %rax
	.loc 2 149 6
	testq	%rax, %rax
	jne	.L20
.LBB3:
	.loc 2 152 21
	movzbl	affect_symlink_referent(%rip), %eax
	.loc 2 153 21
	testb	%al, %al
	je	.L21
	.loc 2 152 23
	leaq	-64(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movl	-84(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getfileconat@PLT
	jmp	.L22
.L21:
	.loc 2 153 23 discriminator 1
	leaq	-64(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movl	-84(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lgetfileconat@PLT
.L22:
	.loc 2 151 11
	movl	%eax, -72(%rbp)
	.loc 2 155 10
	cmpl	$0, -72(%rbp)
	jns	.L23
	.loc 2 155 25 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 155 22 discriminator 1
	cmpl	$61, %eax
	je	.L23
	.loc 2 157 11
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 157 28
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 157 21
	call	__errno_location@PLT
	.loc 2 157 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 159 18
	movl	$1, %eax
	jmp	.L33
.L23:
	.loc 2 165 24
	movq	-64(%rbp), %rax
	.loc 2 165 10
	testq	%rax, %rax
	jne	.L25
	.loc 2 167 11
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 167 24
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	.loc 2 167 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 169 18
	movl	$1, %eax
	jmp	.L33
.L25:
	.loc 2 172 11
	movq	-64(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compute_context_from_mask
	.loc 2 172 10
	testl	%eax, %eax
	je	.L26
	.loc 2 173 16
	movl	$1, %eax
	jmp	.L33
.L26:
	.loc 2 175 24
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	context_str@PLT
	movq	%rax, -48(%rbp)
.LBE3:
	jmp	.L27
.L20:
	.loc 2 179 22
	movq	specified_context(%rip), %rax
	movq	%rax, -48(%rbp)
.L27:
	.loc 2 182 20
	movq	-64(%rbp), %rax
	.loc 2 182 6
	testq	%rax, %rax
	je	.L28
	.loc 2 182 33 discriminator 1
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 182 28 discriminator 1
	testl	%eax, %eax
	je	.L29
.L28:
.LBB4:
	.loc 2 185 19
	movzbl	affect_symlink_referent(%rip), %eax
	.loc 2 186 19
	testb	%al, %al
	je	.L30
	.loc 2 185 22
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movl	-84(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	setfileconat@PLT
	jmp	.L31
.L30:
	.loc 2 186 21 discriminator 1
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movl	-84(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lsetfileconat@PLT
.L31:
	.loc 2 184 11
	movl	%eax, -68(%rbp)
	.loc 2 188 10
	cmpl	$0, -68(%rbp)
	je	.L29
	.loc 2 190 18
	movl	$1, -76(%rbp)
	.loc 2 191 11
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r13
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	.loc 2 191 28
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 191 21
	call	__errno_location@PLT
	.loc 2 191 11
	movl	(%rax), %eax
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L29:
.LBE4:
	.loc 2 196 25
	movq	specified_context(%rip), %rax
	.loc 2 196 6
	testq	%rax, %rax
	jne	.L32
	.loc 2 198 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	context_free@PLT
	.loc 2 199 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
.L32:
	.loc 2 202 10
	movl	-76(%rbp), %eax
.L33:
	.loc 2 203 1 discriminator 1
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L34
	.loc 2 203 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L34:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	change_file_context, .-change_file_context
	.section	.rodata
.LC37:
	.string	"/"
	.align 8
.LC38:
	.string	"it is dangerous to operate recursively on %s"
	.align 8
.LC39:
	.string	"it is dangerous to operate recursively on %s (same as %s)"
	.align 8
.LC40:
	.string	"use --no-preserve-root to override this failsafe"
.LC41:
	.string	"cannot access %s"
.LC42:
	.string	"%s"
.LC43:
	.string	"cannot read directory %s"
	.align 8
.LC44:
	.string	"WARNING: Circular directory structure.\nThis almost certainly means that you have a corrupted file system.\nNOTIFY YOUR SYSTEM MANAGER.\nThe following directory is part of the cycle:\n  %s\n"
	.align 8
.LC45:
	.string	"changing security context of %s\n"
	.text
	.type	process_file, @function
process_file:
.LFB48:
	.loc 2 211 1 is_stmt 1
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
	movq	%rsi, -80(%rbp)
	.loc 2 212 15
	movq	-80(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 2 213 15
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 214 22
	movq	-80(%rbp), %rax
	addq	$112, %rax
	movq	%rax, -32(%rbp)
	.loc 2 215 8
	movb	$1, -49(%rbp)
	.loc 2 217 14
	movq	-80(%rbp), %rax
	movzwl	104(%rax), %eax
	movzwl	%ax, %eax
	cmpl	$10, %eax
	ja	.L59
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L38(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L38(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L38:
	.long	.L59-.L38
	.long	.L43-.L38
	.long	.L42-.L38
	.long	.L59-.L38
	.long	.L41-.L38
	.long	.L59-.L38
	.long	.L40-.L38
	.long	.L39-.L38
	.long	.L59-.L38
	.long	.L59-.L38
	.long	.L37-.L38
	.text
.L43:
	.loc 2 220 11
	movzbl	recurse(%rip), %eax
	.loc 2 220 10
	testb	%al, %al
	je	.L60
	.loc 2 222 15
	movq	root_dev_ino(%rip), %rax
	.loc 2 222 14
	testq	%rax, %rax
	je	.L45
	.loc 2 222 15 discriminator 1
	movq	-80(%rbp), %rax
	movq	120(%rax), %rdx
	movq	root_dev_ino(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L45
	.loc 2 222 15 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax
	movq	112(%rax), %rdx
	movq	root_dev_ino(%rip), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L45
	.loc 2 226 15 is_stmt 1
	movq	-48(%rbp), %rax
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L46
	.loc 2 226 15 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L47
.L46:
	.loc 2 226 15 discriminator 2
	leaq	.LC37(%rip), %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L47:
	.loc 2 226 15 discriminator 4
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 228 15 is_stmt 1 discriminator 4
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
.LBB5:
	.loc 2 230 15 discriminator 4
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -24(%rbp)
.LBE5:
	.loc 2 231 22 discriminator 4
	movl	$0, %eax
	jmp	.L48
.L45:
	.loc 2 233 18
	movl	$1, %eax
	jmp	.L48
.L40:
	.loc 2 238 11
	movzbl	recurse(%rip), %eax
	xorl	$1, %eax
	.loc 2 238 10
	testb	%al, %al
	je	.L61
	.loc 2 239 16
	movl	$1, %eax
	jmp	.L48
.L37:
	.loc 2 250 14
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	.loc 2 250 10
	testq	%rax, %rax
	jne	.L51
	.loc 2 250 37 discriminator 1
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 250 31 discriminator 1
	testq	%rax, %rax
	jne	.L51
	.loc 2 252 27
	movq	-80(%rbp), %rax
	movq	$1, 32(%rax)
	.loc 2 253 11
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
	.loc 2 254 18
	movl	$1, %eax
	jmp	.L48
.L51:
	.loc 2 256 7
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 256 33
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 256 7
	movq	-80(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 258 10
	movb	$0, -49(%rbp)
	.loc 2 259 7
	jmp	.L49
.L39:
	.loc 2 262 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rdx, %rcx
	leaq	.LC42(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 263 10
	movb	$0, -49(%rbp)
	.loc 2 264 7
	jmp	.L49
.L41:
	.loc 2 267 7
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 267 33
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 267 7
	movq	-80(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 269 10
	movb	$0, -49(%rbp)
	.loc 2 270 7
	jmp	.L49
.L42:
	.loc 2 273 11
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cycle_warning_required@PLT
	.loc 2 273 10
	testb	%al, %al
	je	.L62
	.loc 2 275 11
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 276 18
	movl	$0, %eax
	jmp	.L48
.L59:
	.loc 2 281 7
	nop
	jmp	.L49
.L60:
	.loc 2 235 7
	nop
	jmp	.L49
.L61:
	.loc 2 240 7
	nop
	jmp	.L49
.L62:
	.loc 2 278 7
	nop
.L49:
	.loc 2 284 10
	movq	-80(%rbp), %rax
	movzwl	104(%rax), %eax
	.loc 2 284 6
	cmpw	$6, %ax
	jne	.L53
	.loc 2 285 7
	cmpb	$0, -49(%rbp)
	je	.L53
	.loc 2 285 16 discriminator 1
	movq	root_dev_ino(%rip), %rax
	.loc 2 285 13 discriminator 1
	testq	%rax, %rax
	je	.L53
	.loc 2 285 16 discriminator 2
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	root_dev_ino(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L53
	.loc 2 285 16 is_stmt 0 discriminator 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	root_dev_ino(%rip), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L53
	.loc 2 287 7 is_stmt 1
	movq	-48(%rbp), %rax
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L54
	.loc 2 287 7 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L55
.L54:
	.loc 2 287 7 discriminator 2
	leaq	.LC37(%rip), %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L55:
	.loc 2 287 7 discriminator 4
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 288 10 is_stmt 1 discriminator 4
	movb	$0, -49(%rbp)
.L53:
	.loc 2 291 6
	cmpb	$0, -49(%rbp)
	je	.L56
	.loc 2 293 11
	movzbl	verbose(%rip), %eax
	.loc 2 293 10
	testb	%al, %al
	je	.L57
	.loc 2 294 9
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 294 17
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	.loc 2 294 9
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L57:
	.loc 2 297 11
	movq	-72(%rbp), %rax
	movl	44(%rax), %eax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	change_file_context
	.loc 2 297 10
	testl	%eax, %eax
	je	.L56
	.loc 2 298 12
	movb	$0, -49(%rbp)
.L56:
	.loc 2 301 8
	movzbl	recurse(%rip), %eax
	xorl	$1, %eax
	.loc 2 301 6
	testb	%al, %al
	je	.L58
	.loc 2 302 5
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
.L58:
	.loc 2 304 10
	movzbl	-49(%rbp), %eax
.L48:
	.loc 2 305 1
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	process_file, .-process_file
	.section	.rodata
.LC46:
	.string	"fts_read failed"
.LC47:
	.string	"fts_close failed"
	.text
	.type	process_files, @function
process_files:
.LFB49:
	.loc 2 313 1
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
	.loc 2 314 8
	movb	$1, -33(%rbp)
	.loc 2 316 14
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	xfts_open@PLT
	movq	%rax, -32(%rbp)
.L67:
.LBB6:
	.loc 2 322 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -24(%rbp)
	.loc 2 323 10
	cmpq	$0, -24(%rbp)
	jne	.L64
	.loc 2 325 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 325 14
	testl	%eax, %eax
	je	.L70
	.loc 2 328 32
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 328 25
	call	__errno_location@PLT
	.loc 2 328 15
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 329 18
	movb	$0, -33(%rbp)
	.loc 2 331 11
	jmp	.L70
.L64:
	.loc 2 334 13
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_file
	.loc 2 334 10
	movzbl	-33(%rbp), %edx
	.loc 2 334 13
	movzbl	%al, %eax
	.loc 2 334 10
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -33(%rbp)
.LBE6:
	.loc 2 319 5
	jmp	.L67
.L70:
.LBB7:
	.loc 2 331 11
	nop
.LBE7:
	.loc 2 337 7
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_close@PLT
	.loc 2 337 6
	testl	%eax, %eax
	je	.L68
	.loc 2 339 24
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 339 17
	call	__errno_location@PLT
	.loc 2 339 7
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 340 10
	movb	$0, -33(%rbp)
.L68:
	.loc 2 343 10
	movzbl	-33(%rbp), %eax
	.loc 2 344 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	process_files, .-process_files
	.section	.rodata
	.align 8
.LC48:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC49:
	.string	"Usage: %s [OPTION]... CONTEXT FILE...\n  or:  %s [OPTION]... [-u USER] [-r ROLE] [-l RANGE] [-t TYPE] FILE...\n  or:  %s [OPTION]... --reference=RFILE FILE...\n"
	.align 8
.LC50:
	.string	"Change the SELinux security context of each FILE to CONTEXT.\nWith --reference, change the security context of each FILE to that of RFILE.\n"
	.align 8
.LC51:
	.string	"      --dereference      affect the referent of each symbolic link (this is\n                         the default), rather than the symbolic link itself\n  -h, --no-dereference   affect symbolic links instead of any referenced file\n"
	.align 8
.LC52:
	.ascii	"  -u, --user=USER        s"
	.string	"et user USER in the target security context\n  -r, --role=ROLE        set role ROLE in the target security context\n  -t, --type=TYPE        set type TYPE in the target security context\n  -l, --range=RANGE      set range RANGE in the target security context\n"
	.align 8
.LC53:
	.string	"      --no-preserve-root  do not treat '/' specially (the default)\n      --preserve-root    fail to operate recursively on '/'\n"
	.align 8
.LC54:
	.string	"      --reference=RFILE  use RFILE's security context rather than specifying\n                         a CONTEXT value\n"
	.align 8
.LC55:
	.string	"  -R, --recursive        operate on files and directories recursively\n"
	.align 8
.LC56:
	.string	"  -v, --verbose          output a diagnostic for every file processed\n"
	.align 8
.LC57:
	.ascii	"\nThe following options modify how a hierarchy is traversed "
	.ascii	"when the -R\noption is also specified.  If more than one is "
	.ascii	"specified, only the final\none takes effect.\n\n  -H        "
	.ascii	"             if a command line ar"
	.string	"gument is a symbolic link\n                         to a directory, traverse it\n  -L                     traverse every symbolic link to a directory\n                         encountered\n  -P                     do not traverse any symbolic links (default)\n\n"
	.align 8
.LC58:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC59:
	.string	"      --version  output version information and exit\n"
.LC60:
	.string	"chcon"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.loc 2 348 1
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
	.loc 2 349 6
	cmpl	$0, -36(%rbp)
	je	.L72
	.loc 2 350 5
	movq	program_name(%rip), %rbx
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L73
.L72:
	.loc 2 353 7
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 353 15
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	.loc 2 353 7
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 359 7
	movq	stdout(%rip), %rbx
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 364 7
	call	emit_mandatory_arg_note
	.loc 2 366 7
	movq	stdout(%rip), %rbx
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 371 7
	movq	stdout(%rip), %rbx
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 377 7
	movq	stdout(%rip), %rbx
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 381 7
	movq	stdout(%rip), %rbx
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 385 7
	movq	stdout(%rip), %rbx
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 388 7
	movq	stdout(%rip), %rbx
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 391 7
	movq	stdout(%rip), %rbx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 404 7
	movq	stdout(%rip), %rbx
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 405 7
	movq	stdout(%rip), %rbx
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 406 7
	leaq	.LC60(%rip), %rdi
	call	emit_ancillary_info
.L73:
	.loc 2 408 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.section	.rodata
.LC61:
	.string	"/usr/local/share/locale"
.LC62:
	.string	"Jim Meyering"
.LC63:
	.string	"Russell Coker"
.LC64:
	.string	"HLPRhvu:r:t:l:"
	.align 8
.LC65:
	.string	"-R --dereference requires either -H or -L"
.LC66:
	.string	"-R -h requires -P"
.LC67:
	.string	"missing operand"
.LC68:
	.string	"missing operand after %s"
.LC69:
	.string	"invalid context: %s"
	.align 8
.LC70:
	.string	"conflicting security context specifiers given"
	.align 8
.LC71:
	.string	"failed to get attributes of %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 2 413 1
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
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 413 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 415 7
	movl	$16, -52(%rbp)
	.loc 2 419 7
	movl	$-1, -48(%rbp)
	.loc 2 422 8
	movb	$0, -55(%rbp)
	.loc 2 423 8
	movb	$0, -54(%rbp)
	.loc 2 424 9
	movq	$0, -32(%rbp)
	.loc 2 428 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 429 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 430 3
	leaq	.LC61(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 431 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 433 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 435 9
	jmp	.L75
.L96:
	.loc 2 438 7
	cmpl	$131, -44(%rbp)
	jg	.L76
	cmpl	$72, -44(%rbp)
	jge	.L77
	cmpl	$-131, -44(%rbp)
	je	.L78
	cmpl	$-130, -44(%rbp)
	je	.L79
	jmp	.L76
.L77:
	movl	-44(%rbp), %eax
	subl	$72, %eax
	cmpl	$59, %eax
	ja	.L76
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L81(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L81(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L81:
	.long	.L95-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L94-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L93-.L81
	.long	.L76-.L81
	.long	.L92-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L75-.L81
	.long	.L76-.L81
	.long	.L90-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L89-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L88-.L81
	.long	.L76-.L81
	.long	.L87-.L81
	.long	.L86-.L81
	.long	.L85-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L76-.L81
	.long	.L84-.L81
	.long	.L83-.L81
	.long	.L82-.L81
	.long	.L80-.L81
	.text
.L95:
	.loc 2 441 21
	movl	$17, -52(%rbp)
	.loc 2 442 11
	jmp	.L75
.L94:
	.loc 2 445 21
	movl	$2, -52(%rbp)
	.loc 2 446 11
	jmp	.L75
.L93:
	.loc 2 449 21
	movl	$16, -52(%rbp)
	.loc 2 450 11
	jmp	.L75
.L90:
	.loc 2 453 23
	movl	$0, -48(%rbp)
	.loc 2 454 11
	jmp	.L75
.L84:
	.loc 2 458 23
	movl	$1, -48(%rbp)
	.loc 2 459 11
	jmp	.L75
.L83:
	.loc 2 462 25
	movb	$0, -55(%rbp)
	.loc 2 463 11
	jmp	.L75
.L82:
	.loc 2 466 25
	movb	$1, -55(%rbp)
	.loc 2 467 11
	jmp	.L75
.L80:
	.loc 2 470 26
	movq	optarg(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 471 11
	jmp	.L75
.L92:
	.loc 2 474 19
	movb	$1, recurse(%rip)
	.loc 2 475 11
	jmp	.L75
.L85:
	.loc 2 482 19
	movb	$1, verbose(%rip)
	.loc 2 483 11
	jmp	.L75
.L86:
	.loc 2 486 26
	movq	optarg(%rip), %rax
	movq	%rax, specified_user(%rip)
	.loc 2 487 31
	movb	$1, -54(%rbp)
	.loc 2 488 11
	jmp	.L75
.L88:
	.loc 2 491 26
	movq	optarg(%rip), %rax
	movq	%rax, specified_role(%rip)
	.loc 2 492 31
	movb	$1, -54(%rbp)
	.loc 2 493 11
	jmp	.L75
.L87:
	.loc 2 496 26
	movq	optarg(%rip), %rax
	movq	%rax, specified_type(%rip)
	.loc 2 497 31
	movb	$1, -54(%rbp)
	.loc 2 498 11
	jmp	.L75
.L89:
	.loc 2 501 27
	movq	optarg(%rip), %rax
	movq	%rax, specified_range(%rip)
	.loc 2 502 31
	movb	$1, -54(%rbp)
	.loc 2 503 11
	jmp	.L75
.L79:
	.loc 2 505 9
	movl	$0, %edi
	call	usage
.L78:
	.loc 2 506 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC62(%rip), %r9
	leaq	.LC63(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L76:
	.loc 2 508 11
	movl	$1, %edi
	call	usage
.L75:
	.loc 2 435 18
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -44(%rbp)
	.loc 2 435 9
	cmpl	$-1, -44(%rbp)
	jne	.L96
	.loc 2 512 7
	movzbl	recurse(%rip), %eax
	.loc 2 512 6
	testb	%al, %al
	je	.L97
	.loc 2 514 10
	cmpl	$16, -52(%rbp)
	jne	.L98
	.loc 2 516 14
	cmpl	$1, -48(%rbp)
	jne	.L99
.LBB8:
	.loc 2 517 13
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L99:
.LBE8:
	.loc 2 519 35
	movb	$0, affect_symlink_referent(%rip)
	jmp	.L100
.L98:
	.loc 2 523 14
	cmpl	$0, -48(%rbp)
	jne	.L101
.LBB9:
	.loc 2 524 13
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L101:
.LBE9:
	.loc 2 525 35
	movb	$1, affect_symlink_referent(%rip)
	jmp	.L100
.L97:
	.loc 2 530 17
	movl	$16, -52(%rbp)
	.loc 2 531 46
	cmpl	$0, -48(%rbp)
	setne	%al
	.loc 2 531 31
	movb	%al, affect_symlink_referent(%rip)
.L100:
	.loc 2 534 12
	movl	optind(%rip), %eax
	movl	-68(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 534 66
	cmpq	$0, -32(%rbp)
	jne	.L102
	.loc 2 534 39 discriminator 2
	cmpb	$0, -54(%rbp)
	je	.L103
.L102:
	.loc 2 534 66 discriminator 3
	movl	$1, %edx
	jmp	.L104
.L103:
	.loc 2 534 66 is_stmt 0 discriminator 4
	movl	$2, %edx
.L104:
	.loc 2 534 6 is_stmt 1 discriminator 6
	cmpl	%eax, %edx
	jle	.L105
	.loc 2 536 16
	movl	optind(%rip), %eax
	.loc 2 536 10
	cmpl	%eax, -68(%rbp)
	jg	.L106
	.loc 2 537 22
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	.loc 2 537 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L107
.L106:
	.loc 2 539 64
	movl	-68(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 539 9
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 539 22
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	.loc 2 539 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L107:
	.loc 2 540 7
	movl	$1, %edi
	call	usage
.L105:
	.loc 2 543 6
	cmpq	$0, -32(%rbp)
	je	.L108
.LBB10:
	.loc 2 545 13
	movq	$0, -40(%rbp)
	.loc 2 547 11
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_getfilecon@PLT
	.loc 2 547 10
	testl	%eax, %eax
	jns	.L109
.LBB11:
	.loc 2 548 9
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC34(%rip), %rdi
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
.L109:
.LBE11:
	.loc 2 551 25
	movq	-40(%rbp), %rax
	movq	%rax, specified_context(%rip)
.LBE10:
	jmp	.L110
.L108:
	.loc 2 553 11
	cmpb	$0, -54(%rbp)
	je	.L111
	.loc 2 556 25
	movq	$0, specified_context(%rip)
	jmp	.L110
.L111:
	.loc 2 560 38
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 560 31
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 560 25
	movq	%rax, specified_context(%rip)
	.loc 2 561 15
	call	is_selinux_enabled@PLT
	.loc 2 561 10
	testl	%eax, %eax
	jle	.L110
	.loc 2 562 14
	movq	specified_context(%rip), %rax
	movq	%rax, %rdi
	call	security_check_context@PLT
	.loc 2 562 11
	testl	%eax, %eax
	jns	.L110
.LBB12:
	.loc 2 563 9
	movq	specified_context(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC69(%rip), %rdi
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
.L110:
.LBE12:
	.loc 2 567 6
	cmpq	$0, -32(%rbp)
	je	.L112
	.loc 2 567 22 discriminator 1
	cmpb	$0, -54(%rbp)
	je	.L112
	.loc 2 569 20
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	.loc 2 569 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 570 7
	movl	$1, %edi
	call	usage
.L112:
	.loc 2 573 7
	movzbl	recurse(%rip), %eax
	.loc 2 573 6
	testb	%al, %al
	je	.L113
	.loc 2 573 15 discriminator 1
	cmpb	$0, -55(%rbp)
	je	.L113
.LBB13:
	.loc 2 576 22
	leaq	dev_ino_buf.6942(%rip), %rdi
	call	get_root_dev_ino@PLT
	.loc 2 576 20
	movq	%rax, root_dev_ino(%rip)
	.loc 2 577 24
	movq	root_dev_ino(%rip), %rax
	.loc 2 577 10
	testq	%rax, %rax
	jne	.L118
.LBB14:
	.loc 2 578 9
	leaq	.LC37(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC71(%rip), %rdi
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
.L113:
.LBE14:
.LBE13:
	.loc 2 583 20
	movq	$0, root_dev_ino(%rip)
	jmp	.L115
.L118:
	.loc 2 574 5
	nop
.L115:
	.loc 2 586 8
	movl	-52(%rbp), %eax
	orl	$8, %eax
	movl	%eax, %edx
	.loc 2 586 28
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	.loc 2 586 8
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	process_files
	movb	%al, -53(%rbp)
	.loc 2 588 28
	movzbl	-53(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 589 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L117
	call	__stack_chk_fail@PLT
.L117:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	main, .-main
	.local	dev_ino_buf.6942
	.comm	dev_ino_buf.6942,16,16
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 15 "/usr/include/time.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 17 "/usr/include/signal.h"
	.file 18 "/usr/include/unistd.h"
	.file 19 "/usr/include/errno.h"
	.file 20 "src/version.h"
	.file 21 "./lib/exitfail.h"
	.file 22 "./lib/timespec.h"
	.file 23 "./lib/version-etc.h"
	.file 24 "./lib/progname.h"
	.file 25 "./lib/quotearg.h"
	.file 26 "./lib/dev-ino.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/quote.h"
	.file 29 "/usr/include/selinux/context.h"
	.file 30 "./lib/i-ring.h"
	.file 31 "./lib/fts_.h"
	.file 32 "/usr/include/dirent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10d0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF230
	.byte	0xc
	.long	.LASF231
	.long	.LASF232
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
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x71
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x71
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x10e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x8
	.long	0x10e
	.uleb128 0x9
	.long	.LASF67
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x2a1
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x108
	.byte	0x8
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x108
	.byte	0x10
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x108
	.byte	0x18
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x108
	.byte	0x20
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x108
	.byte	0x28
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x108
	.byte	0x30
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x108
	.byte	0x38
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x108
	.byte	0x40
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x108
	.byte	0x48
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x108
	.byte	0x50
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x108
	.byte	0x58
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2ba
	.byte	0x60
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2c0
	.byte	0x68
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xc0
	.byte	0x78
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2c6
	.byte	0x83
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2d6
	.byte	0x88
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xcc
	.byte	0x90
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2e1
	.byte	0x98
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2ec
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2c0
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2f2
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x11a
	.uleb128 0xb
	.long	.LASF233
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF51
	.uleb128 0x7
	.byte	0x8
	.long	0x2b5
	.uleb128 0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0xd
	.long	0x10e
	.long	0x2d6
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2ad
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x7
	.byte	0x8
	.long	0x2dc
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2e7
	.uleb128 0xd
	.long	0x10e
	.long	0x302
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x115
	.uleb128 0x8
	.long	0x302
	.uleb128 0xf
	.long	.LASF54
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x319
	.uleb128 0x7
	.byte	0x8
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x319
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x319
	.uleb128 0xf
	.long	.LASF57
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x308
	.long	0x34e
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x343
	.uleb128 0xf
	.long	.LASF58
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x34e
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x34e
	.uleb128 0x2
	.long	.LASF61
	.byte	0x3
	.byte	0x8f
	.byte	0x1a
	.long	0x71
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF62
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF63
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x2f
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x3b
	.byte	0x11
	.long	0x78
	.uleb128 0x2
	.long	.LASF66
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xd8
	.uleb128 0x9
	.long	.LASF68
	.byte	0x10
	.byte	0xb
	.byte	0xa
	.byte	0x8
	.long	0x3dd
	.uleb128 0xa
	.long	.LASF69
	.byte	0xb
	.byte	0xc
	.byte	0xc
	.long	0xd8
	.byte	0
	.uleb128 0xa
	.long	.LASF70
	.byte	0xb
	.byte	0x10
	.byte	0x15
	.long	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF71
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF72
	.uleb128 0xf
	.long	.LASF73
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF74
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF75
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF76
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF77
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x463
	.uleb128 0xa
	.long	.LASF78
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x302
	.byte	0
	.uleb128 0xa
	.long	.LASF79
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF80
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x468
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
	.long	0x421
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0xd
	.long	0x108
	.long	0x484
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF81
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x474
	.uleb128 0xf
	.long	.LASF82
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF83
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF84
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x474
	.uleb128 0xf
	.long	.LASF85
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF86
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF87
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF88
	.byte	0x90
	.byte	0x10
	.byte	0x2e
	.byte	0x8
	.long	0x5aa
	.uleb128 0xa
	.long	.LASF89
	.byte	0x10
	.byte	0x30
	.byte	0xd
	.long	0x78
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x10
	.byte	0x35
	.byte	0xd
	.long	0x9c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF91
	.byte	0x10
	.byte	0x3d
	.byte	0xf
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF92
	.byte	0x10
	.byte	0x3e
	.byte	0xe
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF93
	.byte	0x10
	.byte	0x40
	.byte	0xd
	.long	0x84
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF94
	.byte	0x10
	.byte	0x41
	.byte	0xd
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF95
	.byte	0x10
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF96
	.byte	0x10
	.byte	0x45
	.byte	0xd
	.long	0x78
	.byte	0x28
	.uleb128 0xa
	.long	.LASF97
	.byte	0x10
	.byte	0x4a
	.byte	0xd
	.long	0xc0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF98
	.byte	0x10
	.byte	0x4e
	.byte	0x11
	.long	0xe4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF99
	.byte	0x10
	.byte	0x50
	.byte	0x10
	.long	0xf0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF100
	.byte	0x10
	.byte	0x5b
	.byte	0x15
	.long	0x3b5
	.byte	0x48
	.uleb128 0xa
	.long	.LASF101
	.byte	0x10
	.byte	0x5c
	.byte	0x15
	.long	0x3b5
	.byte	0x58
	.uleb128 0xa
	.long	.LASF102
	.byte	0x10
	.byte	0x5d
	.byte	0x15
	.long	0x3b5
	.byte	0x68
	.uleb128 0xa
	.long	.LASF103
	.byte	0x10
	.byte	0x6a
	.byte	0x17
	.long	0x5af
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x4d9
	.uleb128 0xd
	.long	0xfc
	.long	0x5bf
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x5bf
	.uleb128 0xd
	.long	0x308
	.long	0x5d6
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5c6
	.uleb128 0x11
	.long	.LASF104
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x5d6
	.uleb128 0x11
	.long	.LASF105
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x5d6
	.uleb128 0x11
	.long	.LASF106
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x46e
	.uleb128 0x11
	.long	.LASF107
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x46e
	.uleb128 0xf
	.long	.LASF108
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF109
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF110
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0x302
	.uleb128 0xf
	.long	.LASF111
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x14
	.string	"DIR"
	.byte	0x20
	.byte	0x7f
	.byte	0x1c
	.long	0x64b
	.uleb128 0xc
	.long	.LASF112
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x668
	.uleb128 0x16
	.long	.LASF113
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x67d
	.uleb128 0x17
	.long	.LASF114
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x69b
	.uleb128 0x19
	.long	.LASF115
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF116
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x115
	.long	0x6a6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x69b
	.uleb128 0xf
	.long	.LASF117
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x6a6
	.uleb128 0xf
	.long	.LASF118
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0x302
	.uleb128 0x1a
	.long	.LASF234
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x718
	.uleb128 0x17
	.long	.LASF119
	.byte	0
	.uleb128 0x17
	.long	.LASF120
	.byte	0x1
	.uleb128 0x17
	.long	.LASF121
	.byte	0x2
	.uleb128 0x17
	.long	.LASF122
	.byte	0x3
	.uleb128 0x17
	.long	.LASF123
	.byte	0x4
	.uleb128 0x17
	.long	.LASF124
	.byte	0x5
	.uleb128 0x17
	.long	.LASF125
	.byte	0x6
	.uleb128 0x17
	.long	.LASF126
	.byte	0x7
	.uleb128 0x17
	.long	.LASF127
	.byte	0x8
	.uleb128 0x17
	.long	.LASF128
	.byte	0x9
	.uleb128 0x17
	.long	.LASF129
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x6c3
	.uleb128 0x11
	.long	.LASF130
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x34e
	.uleb128 0xd
	.long	0x718
	.long	0x735
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x72a
	.uleb128 0x11
	.long	.LASF131
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x735
	.uleb128 0x9
	.long	.LASF132
	.byte	0x10
	.byte	0x1a
	.byte	0x19
	.byte	0x8
	.long	0x76f
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1a
	.byte	0x1b
	.byte	0x9
	.long	0x391
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x1a
	.byte	0x1c
	.byte	0x9
	.long	0x39d
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF133
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x5c0
	.uleb128 0xf
	.long	.LASF134
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF135
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF136
	.uleb128 0xf
	.long	.LASF137
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x793
	.uleb128 0x1b
	.byte	0x8
	.byte	0x1d
	.byte	0xc
	.byte	0xa
	.long	0x7bb
	.uleb128 0x12
	.string	"ptr"
	.byte	0x1d
	.byte	0xd
	.byte	0x9
	.long	0x47
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF138
	.byte	0x1d
	.byte	0xe
	.byte	0x4
	.long	0x7a4
	.uleb128 0x2
	.long	.LASF139
	.byte	0x1d
	.byte	0x10
	.byte	0x17
	.long	0x7d3
	.uleb128 0x7
	.byte	0x8
	.long	0x7bb
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1e
	.byte	0x14
	.byte	0x6
	.long	0x7ee
	.uleb128 0x17
	.long	.LASF140
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF141
	.byte	0x20
	.byte	0x1e
	.byte	0x1f
	.byte	0x8
	.long	0x83d
	.uleb128 0xa
	.long	.LASF142
	.byte	0x1e
	.byte	0x21
	.byte	0x7
	.long	0x83d
	.byte	0
	.uleb128 0xa
	.long	.LASF143
	.byte	0x1e
	.byte	0x22
	.byte	0x7
	.long	0x65
	.byte	0x10
	.uleb128 0xa
	.long	.LASF144
	.byte	0x1e
	.byte	0x23
	.byte	0x10
	.long	0x40
	.byte	0x14
	.uleb128 0xa
	.long	.LASF145
	.byte	0x1e
	.byte	0x24
	.byte	0x10
	.long	0x40
	.byte	0x18
	.uleb128 0xa
	.long	.LASF146
	.byte	0x1e
	.byte	0x25
	.byte	0x8
	.long	0x84d
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.long	0x65
	.long	0x84d
	.uleb128 0xe
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF147
	.uleb128 0x2
	.long	.LASF141
	.byte	0x1e
	.byte	0x27
	.byte	0x17
	.long	0x7ee
	.uleb128 0x1c
	.byte	0x8
	.byte	0x1f
	.byte	0xab
	.byte	0x9
	.long	0x881
	.uleb128 0x1d
	.string	"ht"
	.byte	0x1f
	.byte	0xb8
	.byte	0x24
	.long	0x886
	.uleb128 0x1e
	.long	.LASF148
	.byte	0x1f
	.byte	0xbe
	.byte	0x2b
	.long	0x891
	.byte	0
	.uleb128 0xc
	.long	.LASF149
	.uleb128 0x7
	.byte	0x8
	.long	0x881
	.uleb128 0xc
	.long	.LASF150
	.uleb128 0x7
	.byte	0x8
	.long	0x88c
	.uleb128 0x1b
	.byte	0x80
	.byte	0x1f
	.byte	0x50
	.byte	0x9
	.long	0x957
	.uleb128 0xa
	.long	.LASF151
	.byte	0x1f
	.byte	0x51
	.byte	0x19
	.long	0xa63
	.byte	0
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1f
	.byte	0x52
	.byte	0x19
	.long	0xa63
	.byte	0x8
	.uleb128 0xa
	.long	.LASF153
	.byte	0x1f
	.byte	0x53
	.byte	0x1a
	.long	0xa69
	.byte	0x10
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1f
	.byte	0x54
	.byte	0xf
	.long	0x39d
	.byte	0x18
	.uleb128 0xa
	.long	.LASF155
	.byte	0x1f
	.byte	0x55
	.byte	0xf
	.long	0x108
	.byte	0x20
	.uleb128 0xa
	.long	.LASF156
	.byte	0x1f
	.byte	0x56
	.byte	0xd
	.long	0x65
	.byte	0x28
	.uleb128 0xa
	.long	.LASF157
	.byte	0x1f
	.byte	0x57
	.byte	0xd
	.long	0x65
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF158
	.byte	0x1f
	.byte	0x59
	.byte	0x10
	.long	0x2d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF159
	.byte	0x1f
	.byte	0x5a
	.byte	0x10
	.long	0x2d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF160
	.byte	0x1f
	.byte	0x5b
	.byte	0xf
	.long	0xa8f
	.byte	0x40
	.uleb128 0xa
	.long	.LASF161
	.byte	0x1f
	.byte	0xa0
	.byte	0xd
	.long	0x65
	.byte	0x48
	.uleb128 0xa
	.long	.LASF162
	.byte	0x1f
	.byte	0xa9
	.byte	0x1c
	.long	0x886
	.byte	0x50
	.uleb128 0xa
	.long	.LASF163
	.byte	0x1f
	.byte	0xbf
	.byte	0xb
	.long	0x860
	.byte	0x58
	.uleb128 0xa
	.long	.LASF164
	.byte	0x1f
	.byte	0xc4
	.byte	0x10
	.long	0x854
	.byte	0x60
	.byte	0
	.uleb128 0x1f
	.long	.LASF165
	.value	0x100
	.byte	0x1f
	.byte	0xc7
	.byte	0x10
	.long	0xa5e
	.uleb128 0xa
	.long	.LASF163
	.byte	0x1f
	.byte	0xc8
	.byte	0x19
	.long	0xa63
	.byte	0
	.uleb128 0xa
	.long	.LASF166
	.byte	0x1f
	.byte	0xc9
	.byte	0x19
	.long	0xa63
	.byte	0x8
	.uleb128 0xa
	.long	.LASF167
	.byte	0x1f
	.byte	0xca
	.byte	0x19
	.long	0xa63
	.byte	0x10
	.uleb128 0xa
	.long	.LASF168
	.byte	0x1f
	.byte	0xcb
	.byte	0xe
	.long	0xaa1
	.byte	0x18
	.uleb128 0xa
	.long	.LASF169
	.byte	0x1f
	.byte	0xce
	.byte	0xe
	.long	0x71
	.byte	0x20
	.uleb128 0xa
	.long	.LASF170
	.byte	0x1f
	.byte	0xcf
	.byte	0xf
	.long	0x47
	.byte	0x28
	.uleb128 0xa
	.long	.LASF171
	.byte	0x1f
	.byte	0xd0
	.byte	0xf
	.long	0x108
	.byte	0x30
	.uleb128 0xa
	.long	.LASF155
	.byte	0x1f
	.byte	0xd1
	.byte	0xf
	.long	0x108
	.byte	0x38
	.uleb128 0xa
	.long	.LASF172
	.byte	0x1f
	.byte	0xd2
	.byte	0xd
	.long	0x65
	.byte	0x40
	.uleb128 0xa
	.long	.LASF173
	.byte	0x1f
	.byte	0xd3
	.byte	0xd
	.long	0x65
	.byte	0x44
	.uleb128 0xa
	.long	.LASF158
	.byte	0x1f
	.byte	0xd4
	.byte	0x10
	.long	0x2d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF174
	.byte	0x1f
	.byte	0xd6
	.byte	0xe
	.long	0xaa7
	.byte	0x50
	.uleb128 0xa
	.long	.LASF175
	.byte	0x1f
	.byte	0xda
	.byte	0x13
	.long	0x377
	.byte	0x58
	.uleb128 0xa
	.long	.LASF176
	.byte	0x1f
	.byte	0xdc
	.byte	0x10
	.long	0x2d
	.byte	0x60
	.uleb128 0xa
	.long	.LASF177
	.byte	0x1f
	.byte	0xec
	.byte	0x1c
	.long	0x50
	.byte	0x68
	.uleb128 0xa
	.long	.LASF178
	.byte	0x1f
	.byte	0xf0
	.byte	0x1c
	.long	0x50
	.byte	0x6a
	.uleb128 0xa
	.long	.LASF179
	.byte	0x1f
	.byte	0xf6
	.byte	0x1c
	.long	0x50
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF180
	.byte	0x1f
	.byte	0xf8
	.byte	0x15
	.long	0xaad
	.byte	0x70
	.uleb128 0x20
	.long	.LASF181
	.byte	0x1f
	.byte	0xf9
	.byte	0xe
	.long	0xabd
	.value	0x100
	.byte	0
	.uleb128 0x8
	.long	0x957
	.uleb128 0x7
	.byte	0x8
	.long	0x957
	.uleb128 0x7
	.byte	0x8
	.long	0xa63
	.uleb128 0x21
	.long	0x65
	.long	0xa83
	.uleb128 0x22
	.long	0xa83
	.uleb128 0x22
	.long	0xa83
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa89
	.uleb128 0x7
	.byte	0x8
	.long	0xa5e
	.uleb128 0x7
	.byte	0x8
	.long	0xa6f
	.uleb128 0x14
	.string	"FTS"
	.byte	0x1f
	.byte	0xc5
	.byte	0x3
	.long	0x897
	.uleb128 0x7
	.byte	0x8
	.long	0x63f
	.uleb128 0x7
	.byte	0x8
	.long	0xa95
	.uleb128 0xd
	.long	0x4d9
	.long	0xabd
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x10e
	.long	0xacc
	.uleb128 0x23
	.long	0x39
	.byte	0
	.uleb128 0x2
	.long	.LASF182
	.byte	0x1f
	.byte	0xfa
	.byte	0x3
	.long	0x957
	.uleb128 0x24
	.long	.LASF183
	.byte	0x2
	.byte	0x2a
	.byte	0xd
	.long	0x84d
	.uleb128 0x9
	.byte	0x3
	.quad	affect_symlink_referent
	.uleb128 0x24
	.long	.LASF184
	.byte	0x2
	.byte	0x2d
	.byte	0xd
	.long	0x84d
	.uleb128 0x9
	.byte	0x3
	.quad	recurse
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.byte	0x30
	.byte	0xd
	.long	0x84d
	.uleb128 0x9
	.byte	0x3
	.quad	verbose
	.uleb128 0x24
	.long	.LASF186
	.byte	0x2
	.byte	0x34
	.byte	0x18
	.long	0xb30
	.uleb128 0x9
	.byte	0x3
	.quad	root_dev_ino
	.uleb128 0x7
	.byte	0x8
	.long	0x747
	.uleb128 0x24
	.long	.LASF187
	.byte	0x2
	.byte	0x37
	.byte	0x14
	.long	0x302
	.uleb128 0x9
	.byte	0x3
	.quad	specified_context
	.uleb128 0x24
	.long	.LASF188
	.byte	0x2
	.byte	0x3a
	.byte	0x14
	.long	0x302
	.uleb128 0x9
	.byte	0x3
	.quad	specified_user
	.uleb128 0x24
	.long	.LASF189
	.byte	0x2
	.byte	0x3b
	.byte	0x14
	.long	0x302
	.uleb128 0x9
	.byte	0x3
	.quad	specified_role
	.uleb128 0x24
	.long	.LASF190
	.byte	0x2
	.byte	0x3c
	.byte	0x14
	.long	0x302
	.uleb128 0x9
	.byte	0x3
	.quad	specified_range
	.uleb128 0x24
	.long	.LASF191
	.byte	0x2
	.byte	0x3d
	.byte	0x14
	.long	0x302
	.uleb128 0x9
	.byte	0x3
	.quad	specified_type
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x42
	.byte	0x1
	.long	0xbcb
	.uleb128 0x17
	.long	.LASF192
	.byte	0x80
	.uleb128 0x17
	.long	.LASF193
	.byte	0x81
	.uleb128 0x17
	.long	.LASF194
	.byte	0x82
	.uleb128 0x17
	.long	.LASF195
	.byte	0x83
	.byte	0
	.uleb128 0xd
	.long	0x463
	.long	0xbdb
	.uleb128 0xe
	.long	0x39
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.long	0xbcb
	.uleb128 0x24
	.long	.LASF196
	.byte	0x2
	.byte	0x49
	.byte	0x1c
	.long	0xbdb
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x25
	.long	.LASF207
	.byte	0x2
	.value	0x19c
	.byte	0x1
	.long	0x65
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xd53
	.uleb128 0x26
	.long	.LASF197
	.byte	0x2
	.value	0x19c
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.long	.LASF198
	.byte	0x2
	.value	0x19c
	.byte	0x18
	.long	0x46e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF199
	.byte	0x2
	.value	0x19f
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF200
	.byte	0x2
	.value	0x1a3
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"ok"
	.byte	0x2
	.value	0x1a5
	.byte	0x8
	.long	0x84d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x27
	.long	.LASF201
	.byte	0x2
	.value	0x1a6
	.byte	0x8
	.long	0x84d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -71
	.uleb128 0x27
	.long	.LASF202
	.byte	0x2
	.value	0x1a7
	.byte	0x8
	.long	0x84d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x27
	.long	.LASF203
	.byte	0x2
	.value	0x1a8
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF204
	.byte	0x2
	.value	0x1a9
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2a
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xd07
	.uleb128 0x27
	.long	.LASF205
	.byte	0x2
	.value	0x221
	.byte	0xd
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.byte	0
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x27
	.long	.LASF206
	.byte	0x2
	.value	0x23f
	.byte	0x1d
	.long	0x747
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_buf.6942
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF208
	.byte	0x2
	.value	0x15b
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xd83
	.uleb128 0x26
	.long	.LASF209
	.byte	0x2
	.value	0x15b
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2d
	.long	.LASF211
	.byte	0x2
	.value	0x138
	.byte	0x1
	.long	0x84d
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xdfe
	.uleb128 0x26
	.long	.LASF210
	.byte	0x2
	.value	0x138
	.byte	0x17
	.long	0x46e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF199
	.byte	0x2
	.value	0x138
	.byte	0x22
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.string	"ok"
	.byte	0x2
	.value	0x13a
	.byte	0x8
	.long	0x84d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x28
	.string	"fts"
	.byte	0x2
	.value	0x13c
	.byte	0x8
	.long	0xaa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.uleb128 0x28
	.string	"ent"
	.byte	0x2
	.value	0x140
	.byte	0xf
	.long	0xdfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xacc
	.uleb128 0x2f
	.long	.LASF212
	.byte	0x2
	.byte	0xd2
	.byte	0x1
	.long	0x84d
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xea4
	.uleb128 0x30
	.string	"fts"
	.byte	0x2
	.byte	0xd2
	.byte	0x14
	.long	0xaa7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"ent"
	.byte	0x2
	.byte	0xd2
	.byte	0x21
	.long	0xdfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF213
	.byte	0x2
	.byte	0xd4
	.byte	0xf
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF214
	.byte	0x2
	.byte	0xd5
	.byte	0xf
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF215
	.byte	0x2
	.byte	0xd6
	.byte	0x16
	.long	0xea4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"ok"
	.byte	0x2
	.byte	0xd7
	.byte	0x8
	.long	0x84d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x2b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x31
	.string	"__x"
	.byte	0x2
	.byte	0xe6
	.byte	0xf
	.long	0xdfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5aa
	.uleb128 0x2f
	.long	.LASF216
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.long	0x65
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xf73
	.uleb128 0x30
	.string	"fd"
	.byte	0x2
	.byte	0x8e
	.byte	0x1a
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.long	.LASF214
	.byte	0x2
	.byte	0x8e
	.byte	0x2a
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF217
	.byte	0x2
	.byte	0x90
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF218
	.byte	0x2
	.byte	0x91
	.byte	0xd
	.long	0x7c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF219
	.byte	0x2
	.byte	0x92
	.byte	0x10
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF220
	.byte	0x2
	.byte	0x93
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xf50
	.uleb128 0x24
	.long	.LASF209
	.byte	0x2
	.byte	0x97
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x24
	.long	.LASF221
	.byte	0x2
	.byte	0xb8
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF222
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.long	0x65
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xff2
	.uleb128 0x32
	.long	.LASF218
	.byte	0x2
	.byte	0x5f
	.byte	0x28
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"ret"
	.byte	0x2
	.byte	0x5f
	.byte	0x3c
	.long	0xff2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"ok"
	.byte	0x2
	.byte	0x61
	.byte	0x8
	.long	0x84d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x24
	.long	.LASF223
	.byte	0x2
	.byte	0x62
	.byte	0xd
	.long	0x7c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x24
	.long	.LASF224
	.byte	0x2
	.byte	0x7f
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x7c7
	.uleb128 0x33
	.long	.LASF235
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x109d
	.uleb128 0x26
	.long	.LASF225
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x34
	.long	.LASF226
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1053
	.uleb128 0x35
	.long	.LASF225
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x302
	.byte	0
	.uleb128 0x35
	.long	.LASF227
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x302
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x1028
	.uleb128 0x27
	.long	.LASF226
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x10ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF227
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.long	.LASF228
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x10b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x27
	.long	.LASF229
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x1053
	.long	0x10ad
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x109d
	.uleb128 0x7
	.byte	0x8
	.long	0x1053
	.uleb128 0x36
	.long	.LASF236
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
	.uleb128 0x16
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF151:
	.string	"fts_cur"
.LASF14:
	.string	"__off_t"
.LASF10:
	.string	"__gid_t"
.LASF149:
	.string	"hash_table"
.LASF183:
	.string	"affect_symlink_referent"
.LASF22:
	.string	"_IO_read_ptr"
.LASF127:
	.string	"locale_quoting_style"
.LASF34:
	.string	"_chain"
.LASF102:
	.string	"st_ctim"
.LASF82:
	.string	"__daylight"
.LASF126:
	.string	"escape_quoting_style"
.LASF40:
	.string	"_shortbuf"
.LASF116:
	.string	"GETOPT_VERSION_CHAR"
.LASF113:
	.string	"TIMESPEC_HZ"
.LASF234:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF153:
	.string	"fts_array"
.LASF194:
	.string	"PRESERVE_ROOT"
.LASF217:
	.string	"file_context"
.LASF133:
	.string	"error_print_progname"
.LASF120:
	.string	"shell_quoting_style"
.LASF150:
	.string	"cycle_check_state"
.LASF145:
	.string	"ir_back"
.LASF115:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF211:
	.string	"process_files"
.LASF167:
	.string	"fts_link"
.LASF72:
	.string	"long long unsigned int"
.LASF173:
	.string	"fts_symfd"
.LASF191:
	.string	"specified_type"
.LASF146:
	.string	"ir_empty"
.LASF139:
	.string	"context_t"
.LASF132:
	.string	"dev_ino"
.LASF43:
	.string	"_codecvt"
.LASF170:
	.string	"fts_pointer"
.LASF88:
	.string	"stat"
.LASF62:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF131:
	.string	"quoting_style_vals"
.LASF159:
	.string	"fts_nitems"
.LASF225:
	.string	"program"
.LASF18:
	.string	"__blkcnt_t"
.LASF12:
	.string	"__mode_t"
.LASF181:
	.string	"fts_name"
.LASF119:
	.string	"literal_quoting_style"
.LASF35:
	.string	"_fileno"
.LASF23:
	.string	"_IO_read_end"
.LASF83:
	.string	"__timezone"
.LASF148:
	.string	"state"
.LASF105:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF71:
	.string	"_gl_cxxalias_dummy"
.LASF196:
	.string	"long_options"
.LASF21:
	.string	"_flags"
.LASF184:
	.string	"recurse"
.LASF29:
	.string	"_IO_buf_end"
.LASF38:
	.string	"_cur_column"
.LASF109:
	.string	"program_invocation_short_name"
.LASF124:
	.string	"c_quoting_style"
.LASF52:
	.string	"_IO_codecvt"
.LASF193:
	.string	"NO_PRESERVE_ROOT"
.LASF158:
	.string	"fts_pathlen"
.LASF60:
	.string	"_sys_errlist"
.LASF172:
	.string	"fts_errno"
.LASF108:
	.string	"program_invocation_name"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF188:
	.string	"specified_user"
.LASF224:
	.string	"saved_errno"
.LASF95:
	.string	"__pad0"
.LASF123:
	.string	"shell_escape_always_quoting_style"
.LASF156:
	.string	"fts_rfd"
.LASF86:
	.string	"timezone"
.LASF161:
	.string	"fts_options"
.LASF157:
	.string	"fts_cwd_fd"
.LASF99:
	.string	"st_blocks"
.LASF118:
	.string	"program_name"
.LASF93:
	.string	"st_uid"
.LASF163:
	.string	"fts_cycle"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF165:
	.string	"_ftsent"
.LASF46:
	.string	"_freeres_buf"
.LASF212:
	.string	"process_file"
.LASF220:
	.string	"errors"
.LASF0:
	.string	"long unsigned int"
.LASF77:
	.string	"option"
.LASF138:
	.string	"context_s_t"
.LASF26:
	.string	"_IO_write_ptr"
.LASF78:
	.string	"name"
.LASF57:
	.string	"sys_nerr"
.LASF87:
	.string	"getdate_err"
.LASF230:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF204:
	.string	"optc"
.LASF3:
	.string	"short unsigned int"
.LASF135:
	.string	"error_one_per_line"
.LASF110:
	.string	"Version"
.LASF202:
	.string	"component_specified"
.LASF30:
	.string	"_IO_save_base"
.LASF231:
	.string	"src/chcon.c"
.LASF152:
	.string	"fts_child"
.LASF107:
	.string	"environ"
.LASF228:
	.string	"map_prog"
.LASF41:
	.string	"_lock"
.LASF215:
	.string	"file_stats"
.LASF36:
	.string	"_flags2"
.LASF48:
	.string	"_mode"
.LASF210:
	.string	"files"
.LASF55:
	.string	"stdout"
.LASF97:
	.string	"st_size"
.LASF177:
	.string	"fts_info"
.LASF61:
	.string	"ptrdiff_t"
.LASF117:
	.string	"version_etc_copyright"
.LASF44:
	.string	"_wide_data"
.LASF92:
	.string	"st_mode"
.LASF73:
	.string	"optarg"
.LASF70:
	.string	"tv_nsec"
.LASF168:
	.string	"fts_dirp"
.LASF63:
	.string	"long double"
.LASF8:
	.string	"__dev_t"
.LASF74:
	.string	"optind"
.LASF19:
	.string	"__syscall_slong_t"
.LASF223:
	.string	"new_context"
.LASF27:
	.string	"_IO_write_end"
.LASF187:
	.string	"specified_context"
.LASF142:
	.string	"ir_data"
.LASF13:
	.string	"__nlink_t"
.LASF213:
	.string	"file_full_name"
.LASF190:
	.string	"specified_range"
.LASF233:
	.string	"_IO_lock_t"
.LASF67:
	.string	"_IO_FILE"
.LASF130:
	.string	"quoting_style_args"
.LASF17:
	.string	"__blksize_t"
.LASF144:
	.string	"ir_front"
.LASF160:
	.string	"fts_compar"
.LASF65:
	.string	"dev_t"
.LASF106:
	.string	"__environ"
.LASF66:
	.string	"time_t"
.LASF58:
	.string	"sys_errlist"
.LASF189:
	.string	"specified_role"
.LASF33:
	.string	"_markers"
.LASF199:
	.string	"bit_flags"
.LASF103:
	.string	"__glibc_reserved"
.LASF91:
	.string	"st_nlink"
.LASF125:
	.string	"c_maybe_quoting_style"
.LASF114:
	.string	"LOG10_TIMESPEC_HZ"
.LASF147:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF222:
	.string	"compute_context_from_mask"
.LASF216:
	.string	"change_file_context"
.LASF90:
	.string	"st_ino"
.LASF227:
	.string	"node"
.LASF154:
	.string	"fts_dev"
.LASF206:
	.string	"dev_ino_buf"
.LASF5:
	.string	"short int"
.LASF214:
	.string	"file"
.LASF98:
	.string	"st_blksize"
.LASF49:
	.string	"_unused2"
.LASF180:
	.string	"fts_statp"
.LASF178:
	.string	"fts_flags"
.LASF59:
	.string	"_sys_nerr"
.LASF68:
	.string	"timespec"
.LASF39:
	.string	"_vtable_offset"
.LASF84:
	.string	"tzname"
.LASF50:
	.string	"FILE"
.LASF111:
	.string	"exit_failure"
.LASF201:
	.string	"preserve_root"
.LASF122:
	.string	"shell_escape_quoting_style"
.LASF166:
	.string	"fts_parent"
.LASF11:
	.string	"__ino_t"
.LASF205:
	.string	"ref_context"
.LASF76:
	.string	"optopt"
.LASF85:
	.string	"daylight"
.LASF221:
	.string	"fail"
.LASF80:
	.string	"flag"
.LASF96:
	.string	"st_rdev"
.LASF195:
	.string	"REFERENCE_FILE_OPTION"
.LASF20:
	.string	"char"
.LASF121:
	.string	"shell_always_quoting_style"
.LASF192:
	.string	"DEREFERENCE_OPTION"
.LASF69:
	.string	"tv_sec"
.LASF140:
	.string	"I_RING_SIZE"
.LASF185:
	.string	"verbose"
.LASF200:
	.string	"dereference"
.LASF128:
	.string	"clocale_quoting_style"
.LASF75:
	.string	"opterr"
.LASF141:
	.string	"I_ring"
.LASF9:
	.string	"__uid_t"
.LASF179:
	.string	"fts_instr"
.LASF15:
	.string	"__off64_t"
.LASF136:
	.string	"quoting_options"
.LASF24:
	.string	"_IO_read_base"
.LASF143:
	.string	"ir_default_val"
.LASF32:
	.string	"_IO_save_end"
.LASF104:
	.string	"_sys_siglist"
.LASF176:
	.string	"fts_namelen"
.LASF226:
	.string	"infomap"
.LASF171:
	.string	"fts_accpath"
.LASF94:
	.string	"st_gid"
.LASF79:
	.string	"has_arg"
.LASF208:
	.string	"usage"
.LASF47:
	.string	"__pad5"
.LASF16:
	.string	"__time_t"
.LASF164:
	.string	"fts_fd_ring"
.LASF56:
	.string	"stderr"
.LASF100:
	.string	"st_atim"
.LASF198:
	.string	"argv"
.LASF162:
	.string	"fts_leaf_optimization_works_ht"
.LASF155:
	.string	"fts_path"
.LASF209:
	.string	"status"
.LASF232:
	.string	"/root/coreutils"
.LASF182:
	.string	"FTSENT"
.LASF112:
	.string	"__dirstream"
.LASF89:
	.string	"st_dev"
.LASF129:
	.string	"custom_quoting_style"
.LASF31:
	.string	"_IO_backup_base"
.LASF101:
	.string	"st_mtim"
.LASF134:
	.string	"error_message_count"
.LASF229:
	.string	"lc_messages"
.LASF175:
	.string	"fts_level"
.LASF197:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF218:
	.string	"context"
.LASF53:
	.string	"_IO_wide_data"
.LASF186:
	.string	"root_dev_ino"
.LASF169:
	.string	"fts_number"
.LASF137:
	.string	"quote_quoting_options"
.LASF203:
	.string	"reference_file"
.LASF236:
	.string	"emit_mandatory_arg_note"
.LASF81:
	.string	"__tzname"
.LASF207:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF235:
	.string	"emit_ancillary_info"
.LASF219:
	.string	"context_string"
.LASF174:
	.string	"fts_fts"
.LASF64:
	.string	"ino_t"
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
