	.file	"rmdir.c"
	.text
.Ltext0:
	.type	dot_or_dotdot, @function
dot_or_dotdot:
.LFB28:
	.file 1 "src/system.h"
	.loc 1 266 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 267 16
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 267 6
	cmpb	$46, %al
	jne	.L2
.LBB2:
	.loc 1 269 38
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 269 27
	cmpb	$46, %al
	jne	.L3
	.loc 1 269 27 is_stmt 0 discriminator 1
	movl	$2, %edx
	jmp	.L4
.L3:
	.loc 1 269 27 discriminator 2
	movl	$1, %edx
.L4:
	.loc 1 269 27 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 269 12 is_stmt 1 discriminator 4
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	.loc 1 270 21 discriminator 4
	cmpb	$0, -1(%rbp)
	je	.L5
	.loc 1 270 21 is_stmt 0 discriminator 2
	cmpb	$47, -1(%rbp)
	jne	.L6
.L5:
	.loc 1 270 21 discriminator 3
	movl	$1, %eax
	jmp	.L7
.L6:
	.loc 1 270 21 discriminator 4
	movl	$0, %eax
.L7:
	.loc 1 270 21 discriminator 6
	andl	$1, %eax
	jmp	.L8
.L2:
.LBE2:
	.loc 1 273 12 is_stmt 1
	movl	$0, %eax
.L8:
	.loc 1 274 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	dot_or_dotdot, .-dot_or_dotdot
	.type	readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
.LFB29:
	.loc 1 279 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L13:
.LBB3:
	.loc 1 282 33
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -8(%rbp)
	.loc 1 283 10
	cmpq	$0, -8(%rbp)
	je	.L10
	.loc 1 283 44 discriminator 1
	movq	-8(%rbp), %rax
	addq	$19, %rax
	.loc 1 283 27 discriminator 1
	movq	%rax, %rdi
	call	dot_or_dotdot
	.loc 1 283 25 discriminator 1
	xorl	$1, %eax
	.loc 1 283 22 discriminator 1
	testb	%al, %al
	je	.L13
.L10:
	.loc 1 284 16
	movq	-8(%rbp), %rax
.LBE3:
	.loc 1 286 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	readdir_ignoring_dot_and_dotdot, .-readdir_ignoring_dot_and_dotdot
	.type	is_empty_dir, @function
is_empty_dir:
.LFB30:
	.loc 1 293 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 297 12
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	$198912, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	openat@PLT
	movl	%eax, -24(%rbp)
	.loc 1 301 6
	cmpl	$0, -24(%rbp)
	jns	.L16
	.loc 1 302 12
	movl	$0, %eax
	jmp	.L17
.L16:
	.loc 1 304 10
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	fdopendir@PLT
	movq	%rax, -16(%rbp)
	.loc 1 305 6
	cmpq	$0, -16(%rbp)
	jne	.L18
	.loc 1 307 7
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 1 308 14
	movl	$0, %eax
	jmp	.L17
.L18:
	.loc 1 311 3
	call	__errno_location@PLT
	.loc 1 311 9
	movl	$0, (%rax)
	.loc 1 312 8
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	readdir_ignoring_dot_and_dotdot
	movq	%rax, -8(%rbp)
	.loc 1 313 17
	call	__errno_location@PLT
	.loc 1 313 15
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 314 3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	.loc 1 315 3
	call	__errno_location@PLT
	.loc 1 315 9
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 316 6
	cmpq	$0, -8(%rbp)
	je	.L19
	.loc 1 317 12
	movl	$0, %eax
	jmp	.L17
.L19:
	.loc 1 318 34
	cmpl	$0, -20(%rbp)
	sete	%al
.L17:
	.loc 1 319 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	is_empty_dir, .-is_empty_dir
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
	jmp	.L21
.L23:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L21:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L22
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L23
.L22:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L24
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L24:
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
	je	.L25
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L25
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L25:
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
	jne	.L26
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L27
.L26:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L27:
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
	je	.L28
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L28:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	remove_empty_parents
	.comm	remove_empty_parents,1,1
	.local	ignore_fail_on_non_empty
	.comm	ignore_fail_on_non_empty,1,1
	.local	verbose
	.comm	verbose,1,1
	.section	.rodata
.LC18:
	.string	"ignore-fail-on-non-empty"
.LC19:
	.string	"path"
.LC20:
	.string	"parents"
.LC21:
	.string	"verbose"
.LC22:
	.string	"help"
.LC23:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 224
longopts:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	118
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
	.text
	.type	errno_rmdir_non_empty, @function
errno_rmdir_non_empty:
.LFB46:
	.file 2 "src/rmdir.c"
	.loc 2 75 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 76 36
	cmpl	$39, -4(%rbp)
	je	.L30
	.loc 2 76 36 is_stmt 0 discriminator 2
	cmpl	$17, -4(%rbp)
	jne	.L31
.L30:
	.loc 2 76 36 discriminator 3
	movl	$1, %eax
	jmp	.L32
.L31:
	.loc 2 76 36 discriminator 4
	movl	$0, %eax
.L32:
	.loc 2 76 36 discriminator 6
	andl	$1, %eax
	.loc 2 77 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	errno_rmdir_non_empty, .-errno_rmdir_non_empty
	.type	errno_may_be_non_empty, @function
errno_may_be_non_empty:
.LFB47:
	.loc 2 83 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$30, %eax
	seta	%dl
	testb	%dl, %dl
	jne	.L35
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1073815554, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L35
	.loc 2 90 14
	movl	$1, %eax
	jmp	.L36
.L35:
	.loc 2 92 14
	movl	$0, %eax
.L36:
	.loc 2 94 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	errno_may_be_non_empty, .-errno_may_be_non_empty
	.type	ignorable_failure, @function
ignorable_failure:
.LFB48:
	.loc 2 100 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 101 11
	movzbl	ignore_fail_on_non_empty(%rip), %eax
	.loc 2 102 11
	testb	%al, %al
	je	.L38
	.loc 2 102 15 discriminator 1
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	errno_rmdir_non_empty
	.loc 2 102 11 discriminator 1
	testb	%al, %al
	jne	.L39
	.loc 2 103 19
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	errno_may_be_non_empty
	.loc 2 103 15
	testb	%al, %al
	je	.L38
	.loc 2 104 24
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$-100, %edi
	call	is_empty_dir
	.loc 2 104 22
	xorl	$1, %eax
	.loc 2 104 19
	testb	%al, %al
	je	.L38
	.loc 2 105 22
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 105 19
	testl	%eax, %eax
	jne	.L38
.L39:
	.loc 2 102 11 discriminator 3
	movl	$1, %eax
	jmp	.L40
.L38:
	.loc 2 102 11 is_stmt 0 discriminator 2
	movl	$0, %eax
.L40:
	.loc 2 102 11 discriminator 5
	andl	$1, %eax
	.loc 2 106 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	ignorable_failure, .-ignorable_failure
	.section	.rodata
.LC24:
	.string	"removing directory, %s"
.LC25:
	.string	"failed to remove directory %s"
	.text
	.type	remove_parents, @function
remove_parents:
.LFB49:
	.loc 2 115 1
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
	movq	%rdi, -40(%rbp)
	.loc 2 117 8
	movb	$1, -29(%rbp)
	.loc 2 119 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strip_trailing_slashes@PLT
.L52:
.LBB4:
	.loc 2 122 15
	movq	-40(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 123 10
	cmpq	$0, -24(%rbp)
	je	.L54
	.loc 2 127 13
	jmp	.L45
.L47:
	.loc 2 128 9
	subq	$1, -24(%rbp)
.L45:
	.loc 2 127 13
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.L46
	.loc 2 127 29 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 127 26 discriminator 1
	cmpb	$47, %al
	je	.L47
.L46:
	.loc 2 129 12
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 2 129 16
	movb	$0, (%rax)
	.loc 2 132 11
	movzbl	verbose(%rip), %eax
	.loc 2 132 10
	testb	%al, %al
	je	.L48
	.loc 2 133 9
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 133 31
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 2 133 9
	movq	stdout(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	prog_fprintf@PLT
.L48:
	.loc 2 135 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	rmdir@PLT
	.loc 2 135 10
	testl	%eax, %eax
	sete	%al
	movb	%al, -29(%rbp)
	.loc 2 136 25
	call	__errno_location@PLT
	.loc 2 136 11
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 138 11
	movzbl	-29(%rbp), %eax
	xorl	$1, %eax
	.loc 2 138 10
	testb	%al, %al
	je	.L52
	.loc 2 141 15
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ignorable_failure
	.loc 2 141 14
	testb	%al, %al
	je	.L50
	.loc 2 143 18
	movb	$1, -29(%rbp)
	.loc 2 151 11
	jmp	.L44
.L50:
	.loc 2 148 15
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 148 38
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 148 15
	movl	-28(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 151 11
	jmp	.L44
.L54:
	.loc 2 124 9
	nop
.L44:
.LBE4:
	.loc 2 154 10
	movzbl	-29(%rbp), %eax
	.loc 2 155 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	remove_parents, .-remove_parents
	.section	.rodata
	.align 8
.LC26:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC27:
	.string	"Usage: %s [OPTION]... DIRECTORY...\n"
	.align 8
.LC28:
	.string	"Remove the DIRECTORY(ies), if they are empty.\n\n      --ignore-fail-on-non-empty\n                  ignore each failure that is solely because a directory\n                    is non-empty\n"
	.align 8
.LC29:
	.string	"  -p, --parents   remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is\n                    similar to 'rmdir a/b/c a/b a'\n  -v, --verbose   output a diagnostic for every directory processed\n"
	.align 8
.LC30:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC31:
	.string	"      --version  output version information and exit\n"
.LC32:
	.string	"rmdir"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.loc 2 159 1
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
	.loc 2 160 6
	cmpl	$0, -20(%rbp)
	je	.L56
	.loc 2 161 5
	movq	program_name(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L57
.L56:
	.loc 2 164 7
	movq	program_name(%rip), %rbx
	.loc 2 164 15
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	.loc 2 164 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 165 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 172 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 178 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 179 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 180 7
	leaq	.LC32(%rip), %rdi
	call	emit_ancillary_info
.L57:
	.loc 2 182 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.section	.rodata
.LC33:
	.string	"/usr/local/share/locale"
.LC34:
	.string	"David MacKenzie"
.LC35:
	.string	"pv"
.LC36:
	.string	"missing operand"
.LC37:
	.string	"failed to remove %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 2 187 1
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
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 188 8
	movb	$1, -33(%rbp)
	.loc 2 192 3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 193 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 194 3
	leaq	.LC33(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 195 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 197 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 199 24
	movb	$0, remove_empty_parents(%rip)
	.loc 2 201 9
	jmp	.L59
.L66:
	.loc 2 203 7
	cmpl	$128, -32(%rbp)
	je	.L60
	cmpl	$128, -32(%rbp)
	jg	.L61
	cmpl	$118, -32(%rbp)
	je	.L62
	cmpl	$118, -32(%rbp)
	jg	.L61
	cmpl	$112, -32(%rbp)
	je	.L63
	cmpl	$112, -32(%rbp)
	jg	.L61
	cmpl	$-131, -32(%rbp)
	je	.L64
	cmpl	$-130, -32(%rbp)
	je	.L65
	jmp	.L61
.L63:
	.loc 2 206 32
	movb	$1, remove_empty_parents(%rip)
	.loc 2 207 11
	jmp	.L59
.L60:
	.loc 2 209 36
	movb	$1, ignore_fail_on_non_empty(%rip)
	.loc 2 210 11
	jmp	.L59
.L62:
	.loc 2 212 19
	movb	$1, verbose(%rip)
	.loc 2 213 11
	jmp	.L59
.L65:
	.loc 2 214 9
	movl	$0, %edi
	call	usage
.L64:
	.loc 2 215 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC34(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L61:
	.loc 2 217 11
	movl	$1, %edi
	call	usage
.L59:
	.loc 2 201 18
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -32(%rbp)
	.loc 2 201 9
	cmpl	$-1, -32(%rbp)
	jne	.L66
	.loc 2 221 14
	movl	optind(%rip), %eax
	.loc 2 221 6
	cmpl	%eax, -52(%rbp)
	jne	.L68
	.loc 2 223 20
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 2 223 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 224 7
	movl	$1, %edi
	call	usage
.L73:
.LBB5:
	.loc 2 229 23
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 229 13
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 232 11
	movzbl	verbose(%rip), %eax
	.loc 2 232 10
	testb	%al, %al
	je	.L69
	.loc 2 233 9
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 233 31
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 2 233 9
	movq	stdout(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	prog_fprintf@PLT
.L69:
	.loc 2 235 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rmdir@PLT
	.loc 2 235 10
	testl	%eax, %eax
	je	.L70
.LBB6:
	.loc 2 237 29
	call	__errno_location@PLT
	.loc 2 237 15
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 2 238 15
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ignorable_failure
	.loc 2 238 14
	testb	%al, %al
	jne	.L75
	.loc 2 243 11
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 243 34
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 243 11
	movl	-28(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 244 14
	movb	$0, -33(%rbp)
.LBE6:
	jmp	.L72
.L70:
	.loc 2 246 16
	movzbl	remove_empty_parents(%rip), %eax
	.loc 2 246 15
	testb	%al, %al
	je	.L72
	.loc 2 248 17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	remove_parents
	.loc 2 248 14
	movzbl	-33(%rbp), %edx
	.loc 2 248 17
	movzbl	%al, %eax
	.loc 2 248 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -33(%rbp)
	jmp	.L72
.L75:
.LBB7:
	.loc 2 239 13
	nop
.L72:
.LBE7:
.LBE5:
	.loc 2 227 25
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L68:
	.loc 2 227 17 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 227 3 discriminator 1
	cmpl	%eax, -52(%rbp)
	jg	.L73
	.loc 2 252 28
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 253 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	main, .-main
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
	.file 19 "/usr/include/x86_64-linux-gnu/bits/dirent.h"
	.file 20 "./lib/timespec.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "/usr/include/dirent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa92
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF143
	.byte	0xc
	.long	.LASF144
	.long	.LASF145
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
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
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
	.long	.LASF62
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x241
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xa8
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xa8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xa8
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xa8
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xa8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xa8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xa8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xa8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xa8
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x25a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x260
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x266
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x276
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x281
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x28c
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x260
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x292
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xba
	.uleb128 0xb
	.long	.LASF146
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x255
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0xd
	.long	0xae
	.long	0x276
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x27c
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x287
	.uleb128 0xd
	.long	0xae
	.long	0x2a2
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb5
	.uleb128 0x8
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2b9
	.uleb128 0x7
	.byte	0x8
	.long	0x241
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2a8
	.long	0x2ee
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2e3
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2ee
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0x9c
	.uleb128 0x11
	.long	.LASF56
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0xf
	.long	.LASF58
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF59
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF63
	.byte	0x20
	.byte	0xc
	.byte	0x32
	.byte	0x8
	.long	0x3b7
	.uleb128 0xa
	.long	.LASF64
	.byte	0xc
	.byte	0x34
	.byte	0xf
	.long	0x2a2
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x38
	.byte	0x8
	.long	0x3bc
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xc
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x375
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0xa8
	.long	0x3d2
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF67
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3c2
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3c2
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF73
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x427
	.uleb128 0xd
	.long	0x2a8
	.long	0x43e
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x42e
	.uleb128 0x11
	.long	.LASF74
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x43e
	.uleb128 0x11
	.long	.LASF75
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x43e
	.uleb128 0x11
	.long	.LASF76
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x46a
	.uleb128 0x7
	.byte	0x8
	.long	0xa8
	.uleb128 0x11
	.long	.LASF77
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x46a
	.uleb128 0xf
	.long	.LASF78
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF79
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF80
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF81
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x14
	.long	.LASF82
	.value	0x118
	.byte	0x13
	.byte	0x16
	.byte	0x8
	.long	0x4fd
	.uleb128 0xa
	.long	.LASF83
	.byte	0x13
	.byte	0x19
	.byte	0xd
	.long	0x78
	.byte	0
	.uleb128 0xa
	.long	.LASF84
	.byte	0x13
	.byte	0x1a
	.byte	0xd
	.long	0x84
	.byte	0x8
	.uleb128 0xa
	.long	.LASF85
	.byte	0x13
	.byte	0x1f
	.byte	0x18
	.long	0x50
	.byte	0x10
	.uleb128 0xa
	.long	.LASF86
	.byte	0x13
	.byte	0x20
	.byte	0x13
	.long	0x49
	.byte	0x12
	.uleb128 0xa
	.long	.LASF87
	.byte	0x13
	.byte	0x21
	.byte	0xa
	.long	0x502
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	0x4ad
	.uleb128 0xd
	.long	0xae
	.long	0x512
	.uleb128 0xe
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.string	"DIR"
	.byte	0x19
	.byte	0x7f
	.byte	0x1c
	.long	0x51e
	.uleb128 0xc
	.long	.LASF88
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x29
	.byte	0x6
	.long	0x53b
	.uleb128 0x17
	.long	.LASF89
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x550
	.uleb128 0x18
	.long	.LASF90
	.byte	0x9
	.byte	0
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x56e
	.uleb128 0x1a
	.long	.LASF91
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF92
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xb5
	.long	0x579
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x56e
	.uleb128 0xf
	.long	.LASF93
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x579
	.uleb128 0xf
	.long	.LASF94
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x2a2
	.uleb128 0x1b
	.long	.LASF147
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x5eb
	.uleb128 0x18
	.long	.LASF95
	.byte	0
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.uleb128 0x18
	.long	.LASF97
	.byte	0x2
	.uleb128 0x18
	.long	.LASF98
	.byte	0x3
	.uleb128 0x18
	.long	.LASF99
	.byte	0x4
	.uleb128 0x18
	.long	.LASF100
	.byte	0x5
	.uleb128 0x18
	.long	.LASF101
	.byte	0x6
	.uleb128 0x18
	.long	.LASF102
	.byte	0x7
	.uleb128 0x18
	.long	.LASF103
	.byte	0x8
	.uleb128 0x18
	.long	.LASF104
	.byte	0x9
	.uleb128 0x18
	.long	.LASF105
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x596
	.uleb128 0x11
	.long	.LASF106
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xd
	.long	0x5eb
	.long	0x608
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5fd
	.uleb128 0x11
	.long	.LASF107
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x608
	.uleb128 0xf
	.long	.LASF108
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x428
	.uleb128 0xf
	.long	.LASF109
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF110
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x2
	.byte	0x28
	.byte	0xd
	.long	0x654
	.uleb128 0x9
	.byte	0x3
	.quad	remove_empty_parents
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF111
	.uleb128 0x1c
	.long	.LASF113
	.byte	0x2
	.byte	0x2c
	.byte	0xd
	.long	0x654
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_fail_on_non_empty
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x2
	.byte	0x2f
	.byte	0xd
	.long	0x654
	.uleb128 0x9
	.byte	0x3
	.quad	verbose
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x34
	.byte	0x1
	.long	0x69c
	.uleb128 0x18
	.long	.LASF115
	.byte	0x80
	.byte	0
	.uleb128 0xd
	.long	0x3b7
	.long	0x6ac
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x69c
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x2
	.byte	0x38
	.byte	0x1c
	.long	0x6ac
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1d
	.long	.LASF121
	.byte	0x2
	.byte	0xba
	.byte	0x1
	.long	0x65
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x75d
	.uleb128 0x1e
	.long	.LASF117
	.byte	0x2
	.byte	0xba
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x2
	.byte	0xba
	.byte	0x18
	.long	0x46a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"ok"
	.byte	0x2
	.byte	0xbc
	.byte	0x8
	.long	0x654
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x2
	.byte	0xbd
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1f
	.string	"dir"
	.byte	0x2
	.byte	0xe5
	.byte	0xd
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.Ldebug_ranges0+0
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x2
	.byte	0xed
	.byte	0xf
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF122
	.byte	0x2
	.byte	0x9e
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x78b
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x2
	.byte	0x9e
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x23
	.long	.LASF125
	.byte	0x2
	.byte	0x72
	.byte	0x1
	.long	0x654
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x7fb
	.uleb128 0x24
	.string	"dir"
	.byte	0x2
	.byte	0x72
	.byte	0x17
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x2
	.byte	0x74
	.byte	0x9
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"ok"
	.byte	0x2
	.byte	0x75
	.byte	0x8
	.long	0x654
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x2
	.byte	0x88
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF126
	.byte	0x2
	.byte	0x63
	.byte	0x1
	.long	0x654
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x83c
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x2
	.byte	0x63
	.byte	0x18
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.string	"dir"
	.byte	0x2
	.byte	0x63
	.byte	0x32
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF128
	.byte	0x2
	.byte	0x52
	.byte	0x1
	.long	0x654
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x86e
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x2
	.byte	0x52
	.byte	0x1d
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	.LASF129
	.byte	0x2
	.byte	0x4a
	.byte	0x1
	.long	0x654
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a0
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x2
	.byte	0x4a
	.byte	0x1c
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF140
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x945
	.uleb128 0x27
	.long	.LASF130
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.long	.LASF131
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x8fb
	.uleb128 0x29
	.long	.LASF130
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2a2
	.byte	0
	.uleb128 0x29
	.long	.LASF132
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2a2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x8d0
	.uleb128 0x2a
	.long	.LASF131
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x955
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF132
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2a
	.long	.LASF133
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x95a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF134
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x8fb
	.long	0x955
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x945
	.uleb128 0x7
	.byte	0x8
	.long	0x8fb
	.uleb128 0x2b
	.long	.LASF135
	.byte	0x1
	.value	0x124
	.byte	0x1
	.long	0x654
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e2
	.uleb128 0x27
	.long	.LASF136
	.byte	0x1
	.value	0x124
	.byte	0x13
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.string	"dir"
	.byte	0x1
	.value	0x124
	.byte	0x27
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF137
	.byte	0x1
	.value	0x126
	.byte	0x8
	.long	0x9e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"dp"
	.byte	0x1
	.value	0x127
	.byte	0x18
	.long	0x9e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF138
	.byte	0x1
	.value	0x128
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"fd"
	.byte	0x1
	.value	0x129
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x512
	.uleb128 0x7
	.byte	0x8
	.long	0x4fd
	.uleb128 0x2b
	.long	.LASF139
	.byte	0x1
	.value	0x116
	.byte	0x1
	.long	0x9e8
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xa43
	.uleb128 0x27
	.long	.LASF137
	.byte	0x1
	.value	0x116
	.byte	0x27
	.long	0x9e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2d
	.string	"dp"
	.byte	0x1
	.value	0x11a
	.byte	0x1c
	.long	0x9e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF141
	.byte	0x1
	.value	0x109
	.byte	0x1
	.long	0x654
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF142
	.byte	0x1
	.value	0x109
	.byte	0x1c
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2d
	.string	"sep"
	.byte	0x1
	.value	0x10d
	.byte	0xc
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2117
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
.LASF81:
	.string	"exit_failure"
.LASF9:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF103:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF92:
	.string	"GETOPT_VERSION_CHAR"
.LASF116:
	.string	"longopts"
.LASF147:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF97:
	.string	"shell_always_quoting_style"
.LASF96:
	.string	"shell_quoting_style"
.LASF91:
	.string	"GETOPT_HELP_CHAR"
.LASF20:
	.string	"_IO_buf_base"
.LASF57:
	.string	"long long unsigned int"
.LASF35:
	.string	"_codecvt"
.LASF69:
	.string	"__timezone"
.LASF115:
	.string	"IGNORE_FAIL_ON_NON_EMPTY_OPTION"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF107:
	.string	"quoting_style_vals"
.LASF130:
	.string	"program"
.LASF102:
	.string	"escape_quoting_style"
.LASF95:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF120:
	.string	"rmdir_errno"
.LASF75:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF13:
	.string	"_flags"
.LASF36:
	.string	"_wide_data"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF79:
	.string	"program_invocation_short_name"
.LASF100:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF78:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF87:
	.string	"d_name"
.LASF141:
	.string	"dot_or_dotdot"
.LASF138:
	.string	"saved_errno"
.LASF99:
	.string	"shell_escape_always_quoting_style"
.LASF139:
	.string	"readdir_ignoring_dot_and_dotdot"
.LASF72:
	.string	"timezone"
.LASF94:
	.string	"program_name"
.LASF142:
	.string	"file_name"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF64:
	.string	"name"
.LASF49:
	.string	"sys_nerr"
.LASF143:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF105:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF110:
	.string	"error_one_per_line"
.LASF84:
	.string	"d_off"
.LASF80:
	.string	"Version"
.LASF22:
	.string	"_IO_save_base"
.LASF88:
	.string	"__dirstream"
.LASF77:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"stdout"
.LASF119:
	.string	"optc"
.LASF93:
	.string	"version_etc_copyright"
.LASF58:
	.string	"optarg"
.LASF73:
	.string	"getdate_err"
.LASF59:
	.string	"optind"
.LASF112:
	.string	"remove_empty_parents"
.LASF19:
	.string	"_IO_write_end"
.LASF82:
	.string	"dirent"
.LASF136:
	.string	"fd_cwd"
.LASF146:
	.string	"_IO_lock_t"
.LASF62:
	.string	"_IO_FILE"
.LASF108:
	.string	"error_print_progname"
.LASF133:
	.string	"map_prog"
.LASF76:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF50:
	.string	"sys_errlist"
.LASF134:
	.string	"lc_messages"
.LASF25:
	.string	"_markers"
.LASF128:
	.string	"errno_may_be_non_empty"
.LASF126:
	.string	"ignorable_failure"
.LASF101:
	.string	"c_maybe_quoting_style"
.LASF90:
	.string	"LOG10_TIMESPEC_HZ"
.LASF111:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF132:
	.string	"node"
.LASF86:
	.string	"d_type"
.LASF5:
	.string	"short int"
.LASF63:
	.string	"option"
.LASF66:
	.string	"flag"
.LASF51:
	.string	"_sys_nerr"
.LASF135:
	.string	"is_empty_dir"
.LASF31:
	.string	"_vtable_offset"
.LASF70:
	.string	"tzname"
.LASF129:
	.string	"errno_rmdir_non_empty"
.LASF137:
	.string	"dirp"
.LASF98:
	.string	"shell_escape_quoting_style"
.LASF8:
	.string	"__ino_t"
.LASF106:
	.string	"quoting_style_args"
.LASF61:
	.string	"optopt"
.LASF71:
	.string	"daylight"
.LASF54:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF144:
	.string	"src/rmdir.c"
.LASF89:
	.string	"TIMESPEC_HZ"
.LASF114:
	.string	"verbose"
.LASF104:
	.string	"clocale_quoting_style"
.LASF60:
	.string	"opterr"
.LASF10:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF83:
	.string	"d_ino"
.LASF74:
	.string	"_sys_siglist"
.LASF131:
	.string	"infomap"
.LASF65:
	.string	"has_arg"
.LASF122:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF85:
	.string	"d_reclen"
.LASF11:
	.string	"__time_t"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF118:
	.string	"argv"
.LASF68:
	.string	"__daylight"
.LASF123:
	.string	"status"
.LASF145:
	.string	"/root/coreutils"
.LASF23:
	.string	"_IO_backup_base"
.LASF109:
	.string	"error_message_count"
.LASF127:
	.string	"error_number"
.LASF113:
	.string	"ignore_fail_on_non_empty"
.LASF117:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF124:
	.string	"slash"
.LASF45:
	.string	"_IO_wide_data"
.LASF42:
	.string	"FILE"
.LASF67:
	.string	"__tzname"
.LASF121:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF140:
	.string	"emit_ancillary_info"
.LASF125:
	.string	"remove_parents"
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
