	.file	"mv.c"
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
	.align 8
.LC1:
	.string	"\nThe backup suffix is '~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.\nThe version control method may be selected via the --backup option or through\nthe VERSION_CONTROL environment variable.  Here are the values:\n\n"
	.align 8
.LC2:
	.string	"  none, off       never make backups (even if --backup is given)\n  numbered, t     make numbered backups\n  existing, nil   numbered if numbered backups exist, simple otherwise\n  simple, never   always make simple backups\n"
	.text
	.type	emit_backup_suffix_note, @function
emit_backup_suffix_note:
.LFB39:
	.loc 1 617 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 618 3
	movq	stdout(%rip), %rbx
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 625 3
	movq	stdout(%rip), %rbx
	leaq	.LC2(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 631 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	emit_backup_suffix_note, .-emit_backup_suffix_note
	.section	.rodata
.LC3:
	.string	"["
.LC4:
	.string	"test invocation"
.LC5:
	.string	"coreutils"
.LC6:
	.string	"Multi-call invocation"
.LC7:
	.string	"sha224sum"
.LC8:
	.string	"sha2 utilities"
.LC9:
	.string	"sha256sum"
.LC10:
	.string	"sha384sum"
.LC11:
	.string	"sha512sum"
.LC12:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC13:
	.string	"https://www.gnu.org/software/coreutils/"
.LC14:
	.string	"GNU coreutils"
.LC15:
	.string	"en_"
	.align 8
.LC16:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC17:
	.string	"Full documentation <%s%s>\n"
.LC18:
	.string	" invocation"
.LC19:
	.string	""
	.align 8
.LC20:
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
	leaq	.LC3(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC8(%rip), %rax
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
	jmp	.L4
.L6:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L4:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L5
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L6
.L5:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L7
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L7:
	.loc 1 655 11
	leaq	.LC12(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC13(%rip), %rdx
	leaq	.LC14(%rip), %rsi
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
	je	.L8
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L8
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L8:
	.loc 1 669 11
	leaq	.LC17(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L9
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC18(%rip), %rbx
	jmp	.L10
.L9:
	.loc 1 671 3 discriminator 2
	leaq	.LC19(%rip), %rbx
.L10:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC20(%rip), %rdi
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
	je	.L11
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L11:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	remove_trailing_slashes
	.comm	remove_trailing_slashes,1,1
	.section	.rodata
.LC21:
	.string	"backup"
.LC22:
	.string	"context"
.LC23:
	.string	"force"
.LC24:
	.string	"interactive"
.LC25:
	.string	"no-clobber"
.LC26:
	.string	"no-target-directory"
.LC27:
	.string	"strip-trailing-slashes"
.LC28:
	.string	"suffix"
.LC29:
	.string	"target-directory"
.LC30:
	.string	"update"
.LC31:
	.string	"verbose"
.LC32:
	.string	"help"
.LC33:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 448
long_options:
	.quad	.LC21
	.long	2
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	90
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC28
	.long	1
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC29
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC33
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
.LC34:
	.string	"/"
	.align 8
.LC35:
	.string	"failed to get attributes of %s"
	.text
	.type	rm_option_init, @function
rm_option_init:
.LFB48:
	.file 2 "src/mv.c"
	.loc 2 76 1 is_stmt 1
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
	movq	%rdi, -24(%rbp)
	.loc 2 77 27
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 78 31
	movq	-24(%rbp), %rax
	movb	$1, 10(%rax)
	.loc 2 79 16
	movq	-24(%rbp), %rax
	movb	$1, 9(%rax)
	.loc 2 80 22
	movq	-24(%rbp), %rax
	movb	$0, 8(%rax)
	.loc 2 84 18
	movq	-24(%rbp), %rax
	movl	$5, 4(%rax)
	.loc 2 85 16
	movq	-24(%rbp), %rax
	movb	$0, 25(%rax)
	.loc 2 87 14
	movq	-24(%rbp), %rax
	movb	$0, 26(%rax)
	.loc 2 93 26
	movq	-24(%rbp), %rax
	movb	$1, 27(%rax)
.LBB2:
	.loc 2 97 23
	leaq	dev_ino_buf.7024(%rip), %rdi
	call	get_root_dev_ino@PLT
	.loc 2 97 21
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	.loc 2 98 10
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 98 8
	testq	%rax, %rax
	jne	.L13
.LBB3:
	.loc 2 99 7
	leaq	.LC34(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC35(%rip), %rdi
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
.L13:
.LBE3:
.LBE2:
	.loc 2 103 24
	movq	-24(%rbp), %rax
	movb	$0, 24(%rax)
	.loc 2 104 1
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	rm_option_init, .-rm_option_init
	.type	cp_option_init, @function
cp_option_init:
.LFB49:
	.loc 2 108 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 109 31
	call	is_selinux_enabled@PLT
	.loc 2 109 8
	testl	%eax, %eax
	setg	%al
	movb	%al, -1(%rbp)
	.loc 2 111 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cp_options_default@PLT
	.loc 2 112 22
	movq	-24(%rbp), %rax
	movb	$0, 20(%rax)
	.loc 2 113 19
	movq	-24(%rbp), %rax
	movl	$1, 68(%rax)
	.loc 2 114 18
	movq	-24(%rbp), %rax
	movl	$2, 4(%rax)
	.loc 2 115 33
	movq	-24(%rbp), %rax
	movb	$0, 21(%rax)
	.loc 2 116 36
	movq	-24(%rbp), %rax
	movb	$0, 22(%rax)
	.loc 2 117 16
	movq	-24(%rbp), %rax
	movb	$0, 23(%rax)
	.loc 2 118 18
	movq	-24(%rbp), %rax
	movl	$4, 8(%rax)
	.loc 2 119 16
	movq	-24(%rbp), %rax
	movb	$1, 24(%rax)
	.loc 2 120 19
	movq	-24(%rbp), %rax
	movb	$0, 25(%rax)
	.loc 2 121 22
	movq	-24(%rbp), %rax
	movb	$0, 28(%rax)
	.loc 2 122 25
	movq	-24(%rbp), %rax
	movb	$1, 29(%rax)
	.loc 2 123 21
	movq	-24(%rbp), %rax
	movb	$1, 48(%rax)
	.loc 2 124 20
	movq	-24(%rbp), %rax
	movb	$1, 30(%rax)
	.loc 2 125 26
	movq	-24(%rbp), %rax
	movb	$1, 31(%rax)
	.loc 2 126 31
	movq	-24(%rbp), %rax
	movb	$0, 32(%rax)
	.loc 2 127 32
	movq	-24(%rbp), %rax
	movzbl	-1(%rbp), %edx
	movb	%dl, 51(%rax)
	.loc 2 128 27
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 2 129 25
	movq	-24(%rbp), %rax
	movb	$0, 55(%rax)
	.loc 2 130 25
	movq	-24(%rbp), %rax
	movb	$1, 49(%rax)
	.loc 2 131 23
	movq	-24(%rbp), %rax
	movb	$0, 50(%rax)
	.loc 2 132 31
	movq	-24(%rbp), %rax
	movb	$0, 52(%rax)
	.loc 2 133 21
	movq	-24(%rbp), %rax
	movb	$1, 53(%rax)
	.loc 2 134 29
	movq	-24(%rbp), %rax
	movb	$0, 54(%rax)
	.loc 2 135 16
	movq	-24(%rbp), %rax
	movb	$1, 56(%rax)
	.loc 2 136 18
	movq	-24(%rbp), %rax
	movl	$2, 12(%rax)
	.loc 2 137 20
	movq	-24(%rbp), %rax
	movb	$0, 58(%rax)
	.loc 2 138 15
	movq	-24(%rbp), %rax
	movb	$0, 57(%rax)
	.loc 2 139 11
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 2 140 18
	movl	$0, %edi
	call	isatty@PLT
	testl	%eax, %eax
	setne	%dl
	.loc 2 140 16
	movq	-24(%rbp), %rax
	movb	%dl, 61(%rax)
	.loc 2 142 33
	movq	-24(%rbp), %rax
	movb	$0, 62(%rax)
	.loc 2 143 13
	movq	-24(%rbp), %rax
	movb	$0, 59(%rax)
	.loc 2 144 14
	movq	-24(%rbp), %rax
	movb	$0, 60(%rax)
	.loc 2 145 16
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
	.loc 2 146 15
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
	.loc 2 147 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	cp_option_init, .-cp_option_init
	.section	.rodata
.LC36:
	.string	"failed to access %s"
	.text
	.type	target_directory_operand, @function
target_directory_operand:
.LFB50:
	.loc 2 155 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	.loc 2 155 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 157 14
	leaq	-176(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 157 40
	testl	%eax, %eax
	je	.L16
	.loc 2 157 42 discriminator 1
	call	__errno_location@PLT
	.loc 2 157 40 discriminator 1
	movl	(%rax), %eax
	jmp	.L17
.L16:
	.loc 2 157 40 is_stmt 0 discriminator 2
	movl	$0, %eax
.L17:
	.loc 2 157 7 is_stmt 1 discriminator 4
	movl	%eax, -180(%rbp)
	.loc 2 158 24 discriminator 4
	cmpl	$0, -180(%rbp)
	jne	.L18
	.loc 2 158 27 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 158 24 discriminator 1
	cmpl	$16384, %eax
	jne	.L18
	.loc 2 158 24 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L19
.L18:
	.loc 2 158 24 discriminator 4
	movl	$0, %eax
.L19:
	.loc 2 158 8 is_stmt 1 discriminator 6
	movb	%al, -181(%rbp)
	andb	$1, -181(%rbp)
	.loc 2 159 6 discriminator 6
	cmpl	$0, -180(%rbp)
	je	.L20
	.loc 2 159 11 discriminator 1
	cmpl	$2, -180(%rbp)
	je	.L20
.LBB4:
	.loc 2 160 5
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	-180(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L20:
.LBE4:
	.loc 2 161 10
	movzbl	-181(%rbp), %eax
	.loc 2 162 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	target_directory_operand, .-target_directory_operand
	.section	.rodata
.LC37:
	.string	"src/mv.c"
.LC38:
	.string	"VALID_STATUS (status)"
	.text
	.type	do_move, @function
do_move:
.LFB51:
	.loc 2 170 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	.loc 2 170 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 173 13
	leaq	-78(%rbp), %rdi
	leaq	-79(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	copy@PLT
	movb	%al, -77(%rbp)
	.loc 2 175 6
	cmpb	$0, -77(%rbp)
	je	.L24
.LBB5:
	.loc 2 178 11
	movzbl	-79(%rbp), %eax
	.loc 2 178 10
	testb	%al, %al
	je	.L25
	.loc 2 191 25
	movq	$0, -72(%rbp)
	.loc 2 192 14
	movb	$0, -77(%rbp)
	jmp	.L26
.L25:
	.loc 2 194 16
	movzbl	-78(%rbp), %eax
	.loc 2 194 15
	testb	%al, %al
	je	.L27
	.loc 2 198 25
	movq	$0, -72(%rbp)
	jmp	.L26
.L27:
	.loc 2 224 25
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
.L26:
	.loc 2 227 10
	cmpq	$0, -72(%rbp)
	je	.L24
.LBB6:
	.loc 2 233 11
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	rm_option_init
	.loc 2 234 33
	movq	-104(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 2 234 30
	movb	%al, -38(%rbp)
	.loc 2 235 18
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 236 18
	movq	$0, -24(%rbp)
	.loc 2 238 20
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rm@PLT
	movl	%eax, -76(%rbp)
	.loc 2 239 11
	cmpl	$2, -76(%rbp)
	je	.L28
	.loc 2 239 11 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)
	je	.L28
	.loc 2 239 11 discriminator 2
	cmpl	$4, -76(%rbp)
	je	.L28
	.loc 2 239 11 discriminator 3
	leaq	__PRETTY_FUNCTION__.7051(%rip), %rcx
	movl	$239, %edx
	leaq	.LC37(%rip), %rsi
	leaq	.LC38(%rip), %rdi
	call	__assert_fail@PLT
.L28:
	.loc 2 240 14 is_stmt 1
	cmpl	$4, -76(%rbp)
	jne	.L24
	.loc 2 241 16
	movb	$0, -77(%rbp)
.L24:
.LBE6:
.LBE5:
	.loc 2 245 10
	movzbl	-77(%rbp), %eax
	.loc 2 246 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	do_move, .-do_move
	.type	movefile, @function
movefile:
.LFB52:
	.loc 2 255 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movq	%rcx, -64(%rbp)
	movb	%al, -52(%rbp)
	.loc 2 265 7
	movzbl	remove_trailing_slashes(%rip), %eax
	.loc 2 265 6
	testb	%al, %al
	je	.L33
	.loc 2 266 5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strip_trailing_slashes@PLT
.L33:
	.loc 2 268 6
	cmpb	$0, -52(%rbp)
	je	.L34
.LBB7:
	.loc 2 271 34
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, -16(%rbp)
	.loc 2 272 24
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -8(%rbp)
	.loc 2 273 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strip_trailing_slashes@PLT
	.loc 2 274 12
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_move
	movb	%al, -17(%rbp)
	.loc 2 275 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE7:
	jmp	.L35
.L34:
	.loc 2 279 12
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_move
	movb	%al, -17(%rbp)
.L35:
	.loc 2 282 10
	movzbl	-17(%rbp), %eax
	.loc 2 283 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	movefile, .-movefile
	.section	.rodata
	.align 8
.LC39:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC40:
	.string	"Usage: %s [OPTION]... [-T] SOURCE DEST\n  or:  %s [OPTION]... SOURCE... DIRECTORY\n  or:  %s [OPTION]... -t DIRECTORY SOURCE...\n"
	.align 8
.LC41:
	.string	"Rename SOURCE to DEST, or move SOURCE(s) to DIRECTORY.\n"
	.align 8
.LC42:
	.ascii	"      --backup[=CONTROL]       make a backup of each existin"
	.ascii	"g destination file\n  -b                           like --ba"
	.ascii	"ckup but does not accept an argument\n  -f,"
	.string	" --force                  do not prompt before overwriting\n  -i, --interactive            prompt before overwrite\n  -n, --no-clobber             do not overwrite an existing file\nIf you specify more than one of -i, -f, -n, only the final one takes effect.\n"
	.align 8
.LC43:
	.string	"      --strip-trailing-slashes  remove any trailing slashes from each SOURCE\n                                 argument\n  -S, --suffix=SUFFIX          override the usual backup suffix\n"
	.align 8
.LC44:
	.ascii	"  -t, --target-directory=DIRECTORY  move all SOURCE argument"
	.ascii	"s into DIRECTORY\n  -T, --no-target-directory    treat DEST "
	.ascii	"as a normal file\n  -u, --update                 move only w"
	.ascii	"hen the SOURCE file is newer\n                              "
	.ascii	"   than the destination file or w"
	.string	"hen the\n                                 destination file is missing\n  -v, --verbose                explain what is being done\n  -Z, --context                set SELinux security context of destination\n                                 file to default type\n"
	.align 8
.LC45:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC46:
	.string	"      --version  output version information and exit\n"
.LC47:
	.string	"mv"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB53:
	.loc 2 287 1
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
	.loc 2 288 6
	cmpl	$0, -36(%rbp)
	je	.L38
	.loc 2 289 5
	movq	program_name(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L39
.L38:
	.loc 2 292 7
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 292 15
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 2 292 7
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 298 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 302 7
	call	emit_mandatory_arg_note
	.loc 2 304 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 313 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 318 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 328 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 329 7
	movq	stdout(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 330 7
	call	emit_backup_suffix_note
	.loc 2 331 7
	leaq	.LC47(%rip), %rdi
	call	emit_ancillary_info
.L39:
	.loc 2 333 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE53:
	.size	usage, .-usage
	.section	.rodata
.LC48:
	.string	"/usr/local/share/locale"
	.align 8
.LC49:
	.string	"multiple target directories specified"
.LC50:
	.string	"target %s is not a directory"
.LC51:
	.string	"warning: ignoring --context"
.LC52:
	.string	"David MacKenzie"
.LC53:
	.string	"Mike Parker"
.LC54:
	.string	"Jim Meyering"
.LC55:
	.string	"bfint:uvS:TZ"
.LC56:
	.string	"missing file operand"
	.align 8
.LC57:
	.string	"missing destination file operand after %s"
	.align 8
.LC58:
	.string	"cannot combine --target-directory (-t) and --no-target-directory (-T)"
.LC59:
	.string	"extra operand %s"
.LC60:
	.string	"2 <= n_files"
	.align 8
.LC61:
	.string	"options --backup and --no-clobber are mutually exclusive"
.LC62:
	.string	"backup type"
	.text
	.globl	main
	.type	main, @function
main:
.LFB54:
	.loc 2 338 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$320, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -324(%rbp)
	movq	%rsi, -336(%rbp)
	.loc 2 338 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 341 8
	movb	$0, -319(%rbp)
	.loc 2 342 15
	movq	$0, -304(%rbp)
	.loc 2 343 9
	movq	$0, -296(%rbp)
	.loc 2 345 9
	movq	$0, -288(%rbp)
	.loc 2 346 8
	movb	$0, -318(%rbp)
	.loc 2 349 31
	call	is_selinux_enabled@PLT
	.loc 2 349 8
	testl	%eax, %eax
	setg	%al
	movb	%al, -317(%rbp)
	.loc 2 352 3
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 353 3
	leaq	.LC19(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 354 3
	leaq	.LC48(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 355 3
	leaq	.LC5(%rip), %rdi
	call	textdomain@PLT
	.loc 2 357 3
	movq	close_stdin@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 359 3
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	cp_option_init
	.loc 2 362 3
	call	priv_set_remove_linkdir@PLT
	.loc 2 364 9
	jmp	.L41
.L63:
	.loc 2 367 7
	cmpl	$128, -308(%rbp)
	jg	.L42
	cmpl	$83, -308(%rbp)
	jge	.L43
	cmpl	$-131, -308(%rbp)
	je	.L44
	cmpl	$-130, -308(%rbp)
	je	.L45
	jmp	.L42
.L43:
	movl	-308(%rbp), %eax
	subl	$83, %eax
	cmpl	$45, %eax
	ja	.L42
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L47(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L47(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L47:
	.long	.L57-.L47
	.long	.L56-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L55-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L54-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L53-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L52-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L51-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L50-.L47
	.long	.L49-.L47
	.long	.L48-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L42-.L47
	.long	.L46-.L47
	.text
.L54:
	.loc 2 370 24
	movb	$1, -319(%rbp)
	.loc 2 371 15
	movq	optarg(%rip), %rax
	.loc 2 371 14
	testq	%rax, %rax
	je	.L41
	.loc 2 372 36
	movq	optarg(%rip), %rax
	movq	%rax, -296(%rbp)
	.loc 2 373 11
	jmp	.L41
.L53:
	.loc 2 375 25
	movl	$1, -264(%rbp)
	.loc 2 376 11
	jmp	.L41
.L52:
	.loc 2 378 25
	movl	$3, -264(%rbp)
	.loc 2 379 11
	jmp	.L41
.L51:
	.loc 2 381 25
	movl	$2, -264(%rbp)
	.loc 2 382 11
	jmp	.L41
.L46:
	.loc 2 384 35
	movb	$1, remove_trailing_slashes(%rip)
	.loc 2 385 11
	jmp	.L41
.L50:
	.loc 2 387 14
	cmpq	$0, -288(%rbp)
	je	.L59
.LBB8:
	.loc 2 388 13
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L59:
.LBE8:
.LBB9:
	.loc 2 392 19
	movq	optarg(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 392 18
	testl	%eax, %eax
	je	.L60
.LBB10:
	.loc 2 393 17
	movq	optarg(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC36(%rip), %rdi
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
.L60:
.LBE10:
	.loc 2 395 21
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 395 18
	cmpl	$16384, %eax
	je	.L61
.LBB11:
	.loc 2 396 17
	movq	optarg(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L61:
.LBE11:
.LBE9:
	.loc 2 399 28
	movq	optarg(%rip), %rax
	movq	%rax, -288(%rbp)
	.loc 2 400 11
	jmp	.L41
.L56:
	.loc 2 402 31
	movb	$1, -318(%rbp)
	.loc 2 403 11
	jmp	.L41
.L49:
	.loc 2 405 20
	movb	$1, -213(%rbp)
	.loc 2 406 11
	jmp	.L41
.L48:
	.loc 2 408 21
	movb	$1, -212(%rbp)
	.loc 2 409 11
	jmp	.L41
.L57:
	.loc 2 411 24
	movb	$1, -319(%rbp)
	.loc 2 412 25
	movq	optarg(%rip), %rax
	movq	%rax, -304(%rbp)
	.loc 2 413 11
	jmp	.L41
.L55:
	.loc 2 417 14
	cmpb	$0, -317(%rbp)
	je	.L41
	.loc 2 419 43
	movb	$0, -221(%rbp)
	.loc 2 420 40
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	selabel_open@PLT
	.loc 2 420 38
	movq	%rax, -232(%rbp)
	.loc 2 421 22
	movq	-232(%rbp), %rax
	.loc 2 421 18
	testq	%rax, %rax
	jne	.L41
	.loc 2 422 34
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 422 27
	call	__errno_location@PLT
	.loc 2 422 17
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 424 11
	jmp	.L41
.L45:
	.loc 2 425 9
	movl	$0, %edi
	call	usage
.L44:
	.loc 2 426 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	leaq	.LC54(%rip), %rcx
	pushq	%rcx
	leaq	.LC52(%rip), %r9
	leaq	.LC53(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L42:
	.loc 2 428 11
	movl	$1, %edi
	call	usage
.L41:
	.loc 2 364 15
	movq	-336(%rbp), %rsi
	movl	-324(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -308(%rbp)
	.loc 2 364 9
	cmpl	$-1, -308(%rbp)
	jne	.L63
	.loc 2 432 18
	movl	optind(%rip), %eax
	.loc 2 432 11
	movl	-324(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -316(%rbp)
	.loc 2 433 15
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 433 8
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -280(%rbp)
	.loc 2 435 18
	cmpq	$0, -288(%rbp)
	sete	%al
	movzbl	%al, %eax
	.loc 2 435 6
	cmpl	%eax, -316(%rbp)
	jg	.L64
	.loc 2 437 10
	cmpl	$0, -316(%rbp)
	jg	.L65
	.loc 2 438 22
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	.loc 2 438 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L66
.L65:
	.loc 2 440 9
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 440 22
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	.loc 2 440 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L66:
	.loc 2 442 7
	movl	$1, %edi
	call	usage
.L64:
	.loc 2 445 6
	cmpb	$0, -318(%rbp)
	je	.L67
	.loc 2 447 10
	cmpq	$0, -288(%rbp)
	je	.L68
.LBB12:
	.loc 2 448 9
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L68:
.LBE12:
	.loc 2 451 10
	cmpl	$2, -316(%rbp)
	jle	.L69
	.loc 2 453 47
	movq	-280(%rbp), %rax
	addq	$16, %rax
	.loc 2 453 11
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 453 24
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	.loc 2 453 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 454 11
	movl	$1, %edi
	call	usage
.L67:
	.loc 2 457 11
	cmpq	$0, -288(%rbp)
	jne	.L69
	.loc 2 459 7
	cmpl	$1, -316(%rbp)
	jg	.L70
	.loc 2 459 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7106(%rip), %rcx
	movl	$459, %edx
	leaq	.LC37(%rip), %rsi
	leaq	.LC60(%rip), %rdi
	call	__assert_fail@PLT
.L70:
	.loc 2 460 10 is_stmt 1
	cmpl	$2, -316(%rbp)
	jne	.L71
	.loc 2 461 71
	movq	-280(%rbp), %rax
	addq	$8, %rax
	.loc 2 461 27
	movq	(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$-100, %edx
	movq	%rax, %rsi
	movl	$-100, %edi
	call	renameatu@PLT
	.loc 2 463 35
	testl	%eax, %eax
	je	.L72
	.loc 2 463 29 discriminator 1
	call	__errno_location@PLT
	.loc 2 463 35 discriminator 1
	movl	(%rax), %eax
	jmp	.L73
.L72:
	.loc 2 463 35 is_stmt 0 discriminator 2
	movl	$0, %eax
.L73:
	.loc 2 461 24 is_stmt 1
	movl	%eax, -208(%rbp)
.L71:
	.loc 2 464 12
	movl	-208(%rbp), %eax
	.loc 2 464 10
	testl	%eax, %eax
	je	.L74
	.loc 2 464 64 discriminator 1
	movl	-316(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 464 34 discriminator 1
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	target_directory_operand
	.loc 2 464 31 discriminator 1
	testb	%al, %al
	je	.L74
	.loc 2 466 26
	movl	$-1, -208(%rbp)
	.loc 2 467 28
	subl	$1, -316(%rbp)
	.loc 2 467 35
	movl	-316(%rbp), %eax
	cltq
	.loc 2 467 34
	leaq	0(,%rax,8), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 467 28
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	jmp	.L69
.L74:
	.loc 2 469 15
	cmpl	$2, -316(%rbp)
	jle	.L69
.LBB13:
	.loc 2 470 9
	movl	-316(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L69:
.LBE13:
	.loc 2 474 8
	movl	-264(%rbp), %eax
	.loc 2 474 6
	cmpl	$2, %eax
	jne	.L75
	.loc 2 475 14
	movb	$0, -213(%rbp)
.L75:
	.loc 2 477 6
	cmpb	$0, -319(%rbp)
	je	.L76
	.loc 2 477 24 discriminator 1
	movl	-264(%rbp), %eax
	.loc 2 477 20 discriminator 1
	cmpl	$2, %eax
	jne	.L76
	.loc 2 480 14
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	.loc 2 479 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 481 7
	movl	$1, %edi
	call	usage
.L76:
	.loc 2 487 20
	cmpb	$0, -319(%rbp)
	je	.L77
	.loc 2 485 36
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 485 22
	movq	-296(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xget_version@PLT
	jmp	.L78
.L77:
	.loc 2 487 20 discriminator 1
	movl	$0, %eax
.L78:
	.loc 2 484 17
	movl	%eax, -272(%rbp)
	.loc 2 488 3
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	set_simple_backup_suffix@PLT
	.loc 2 490 3
	call	hash_init@PLT
	.loc 2 492 6
	cmpq	$0, -288(%rbp)
	je	.L79
	.loc 2 497 10
	cmpl	$1, -316(%rbp)
	jle	.L80
	.loc 2 498 9
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	dest_info_init@PLT
.L80:
	.loc 2 500 10
	movb	$1, -320(%rbp)
.LBB14:
	.loc 2 501 16
	movl	$0, -312(%rbp)
	.loc 2 501 7
	jmp	.L81
.L82:
	.loc 2 503 27 discriminator 3
	movl	-312(%rbp), %eax
	addl	$1, %eax
	.loc 2 503 31 discriminator 3
	cmpl	%eax, -316(%rbp)
	sete	%al
	.loc 2 503 23 discriminator 3
	movb	%al, -209(%rbp)
	.loc 2 504 31 discriminator 3
	movl	-312(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 504 17 discriminator 3
	movq	(%rax), %rax
	leaq	-272(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	movefile
	.loc 2 504 14 discriminator 3
	movzbl	-320(%rbp), %edx
	.loc 2 504 17 discriminator 3
	movzbl	%al, %eax
	.loc 2 504 14 discriminator 3
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -320(%rbp)
	.loc 2 501 36 discriminator 3
	addl	$1, -312(%rbp)
.L81:
	.loc 2 501 7 discriminator 1
	movl	-312(%rbp), %eax
	cmpl	-316(%rbp), %eax
	jl	.L82
	jmp	.L83
.L79:
.LBE14:
	.loc 2 509 19
	movb	$1, -209(%rbp)
	.loc 2 510 35
	movq	-280(%rbp), %rax
	addq	$8, %rax
	.loc 2 510 12
	movq	(%rax), %rsi
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	-272(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	movefile
	movb	%al, -320(%rbp)
.L83:
	.loc 2 513 28
	movzbl	-320(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 514 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L85
	call	__stack_chk_fail@PLT
.L85:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	main, .-main
	.local	dev_ino_buf.7024
	.comm	dev_ino_buf.7024,16,16
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.7051, @object
	.size	__PRETTY_FUNCTION__.7051, 8
__PRETTY_FUNCTION__.7051:
	.string	"do_move"
	.type	__PRETTY_FUNCTION__.7106, @object
	.size	__PRETTY_FUNCTION__.7106, 5
__PRETTY_FUNCTION__.7106:
	.string	"main"
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
	.file 26 "./lib/backupfile.h"
	.file 27 "./lib/hash.h"
	.file 28 "src/copy.h"
	.file 29 "./lib/error.h"
	.file 30 "./lib/dev-ino.h"
	.file 31 "src/remove.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x119c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF260
	.byte	0xc
	.long	.LASF261
	.long	.LASF262
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
	.long	.LASF263
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF62
	.uleb128 0x2
	.long	.LASF63
	.byte	0x9
	.byte	0x2f
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x3b
	.byte	0x11
	.long	0x78
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x45
	.byte	0x12
	.long	0xa8
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
	.long	0x5aa
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0xfc
	.long	0x5ba
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x5ba
	.uleb128 0xd
	.long	0x308
	.long	0x5d1
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5c1
	.uleb128 0x11
	.long	.LASF104
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x5d1
	.uleb128 0x11
	.long	.LASF105
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x5d1
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
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x652
	.uleb128 0x15
	.long	.LASF112
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x667
	.uleb128 0x16
	.long	.LASF113
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x685
	.uleb128 0x18
	.long	.LASF114
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF115
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x115
	.long	0x690
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x685
	.uleb128 0xf
	.long	.LASF116
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x690
	.uleb128 0xf
	.long	.LASF117
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0x302
	.uleb128 0x19
	.long	.LASF131
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x702
	.uleb128 0x16
	.long	.LASF118
	.byte	0
	.uleb128 0x16
	.long	.LASF119
	.byte	0x1
	.uleb128 0x16
	.long	.LASF120
	.byte	0x2
	.uleb128 0x16
	.long	.LASF121
	.byte	0x3
	.uleb128 0x16
	.long	.LASF122
	.byte	0x4
	.uleb128 0x16
	.long	.LASF123
	.byte	0x5
	.uleb128 0x16
	.long	.LASF124
	.byte	0x6
	.uleb128 0x16
	.long	.LASF125
	.byte	0x7
	.uleb128 0x16
	.long	.LASF126
	.byte	0x8
	.uleb128 0x16
	.long	.LASF127
	.byte	0x9
	.uleb128 0x16
	.long	.LASF128
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x6ad
	.uleb128 0x11
	.long	.LASF129
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x34e
	.uleb128 0xd
	.long	0x702
	.long	0x71f
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x714
	.uleb128 0x11
	.long	.LASF130
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x71f
	.uleb128 0x19
	.long	.LASF132
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x1e
	.byte	0x6
	.long	0x75c
	.uleb128 0x16
	.long	.LASF133
	.byte	0
	.uleb128 0x16
	.long	.LASF134
	.byte	0x1
	.uleb128 0x16
	.long	.LASF135
	.byte	0x2
	.uleb128 0x16
	.long	.LASF136
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF137
	.byte	0x1a
	.byte	0x31
	.byte	0x14
	.long	0x302
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF138
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF139
	.uleb128 0x2
	.long	.LASF140
	.byte	0x1b
	.byte	0x32
	.byte	0x1b
	.long	0x782
	.uleb128 0xc
	.long	.LASF141
	.uleb128 0x19
	.long	.LASF142
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x1c
	.byte	0x6
	.long	0x7b2
	.uleb128 0x16
	.long	.LASF143
	.byte	0
	.uleb128 0x16
	.long	.LASF144
	.byte	0x1
	.uleb128 0x16
	.long	.LASF145
	.byte	0x2
	.uleb128 0x16
	.long	.LASF146
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.long	.LASF147
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x31
	.byte	0x6
	.long	0x7d7
	.uleb128 0x16
	.long	.LASF148
	.byte	0
	.uleb128 0x16
	.long	.LASF149
	.byte	0x1
	.uleb128 0x16
	.long	.LASF150
	.byte	0x2
	.byte	0
	.uleb128 0x19
	.long	.LASF151
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x3e
	.byte	0x6
	.long	0x802
	.uleb128 0x16
	.long	.LASF152
	.byte	0x1
	.uleb128 0x16
	.long	.LASF153
	.byte	0x2
	.uleb128 0x16
	.long	.LASF154
	.byte	0x3
	.uleb128 0x16
	.long	.LASF155
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.long	.LASF156
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x47
	.byte	0x6
	.long	0x82d
	.uleb128 0x16
	.long	.LASF157
	.byte	0x1
	.uleb128 0x16
	.long	.LASF158
	.byte	0x2
	.uleb128 0x16
	.long	.LASF159
	.byte	0x3
	.uleb128 0x16
	.long	.LASF160
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF161
	.byte	0x58
	.byte	0x1c
	.byte	0x64
	.byte	0x8
	.long	0xa3b
	.uleb128 0xa
	.long	.LASF132
	.byte	0x1c
	.byte	0x66
	.byte	0x14
	.long	0x731
	.byte	0
	.uleb128 0xa
	.long	.LASF162
	.byte	0x1c
	.byte	0x69
	.byte	0x1c
	.long	0x802
	.byte	0x4
	.uleb128 0xa
	.long	.LASF163
	.byte	0x1c
	.byte	0x6e
	.byte	0x14
	.long	0x7d7
	.byte	0x8
	.uleb128 0xa
	.long	.LASF164
	.byte	0x1c
	.byte	0x71
	.byte	0x14
	.long	0x787
	.byte	0xc
	.uleb128 0xa
	.long	.LASF165
	.byte	0x1c
	.byte	0x75
	.byte	0xa
	.long	0x39d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF166
	.byte	0x1c
	.byte	0x79
	.byte	0x8
	.long	0x76f
	.byte	0x14
	.uleb128 0xa
	.long	.LASF167
	.byte	0x1c
	.byte	0x7d
	.byte	0x8
	.long	0x76f
	.byte	0x15
	.uleb128 0xa
	.long	.LASF168
	.byte	0x1c
	.byte	0x84
	.byte	0x8
	.long	0x76f
	.byte	0x16
	.uleb128 0xa
	.long	.LASF169
	.byte	0x1c
	.byte	0x88
	.byte	0x8
	.long	0x76f
	.byte	0x17
	.uleb128 0xa
	.long	.LASF170
	.byte	0x1c
	.byte	0x8c
	.byte	0x8
	.long	0x76f
	.byte	0x18
	.uleb128 0xa
	.long	.LASF171
	.byte	0x1c
	.byte	0x8f
	.byte	0x8
	.long	0x76f
	.byte	0x19
	.uleb128 0xa
	.long	.LASF172
	.byte	0x1c
	.byte	0x93
	.byte	0x8
	.long	0x76f
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF173
	.byte	0x1c
	.byte	0x9a
	.byte	0x8
	.long	0x76f
	.byte	0x1b
	.uleb128 0xa
	.long	.LASF174
	.byte	0x1c
	.byte	0x9e
	.byte	0x8
	.long	0x76f
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF175
	.byte	0x1c
	.byte	0xa2
	.byte	0x8
	.long	0x76f
	.byte	0x1d
	.uleb128 0xa
	.long	.LASF176
	.byte	0x1c
	.byte	0xa3
	.byte	0x8
	.long	0x76f
	.byte	0x1e
	.uleb128 0xa
	.long	.LASF177
	.byte	0x1c
	.byte	0xa4
	.byte	0x8
	.long	0x76f
	.byte	0x1f
	.uleb128 0xa
	.long	.LASF178
	.byte	0x1c
	.byte	0xa5
	.byte	0x8
	.long	0x76f
	.byte	0x20
	.uleb128 0xa
	.long	.LASF179
	.byte	0x1c
	.byte	0xa8
	.byte	0x1a
	.long	0xa45
	.byte	0x28
	.uleb128 0xa
	.long	.LASF180
	.byte	0x1c
	.byte	0xb4
	.byte	0x8
	.long	0x76f
	.byte	0x30
	.uleb128 0xa
	.long	.LASF181
	.byte	0x1c
	.byte	0xb8
	.byte	0x8
	.long	0x76f
	.byte	0x31
	.uleb128 0xa
	.long	.LASF182
	.byte	0x1c
	.byte	0xbe
	.byte	0x8
	.long	0x76f
	.byte	0x32
	.uleb128 0xa
	.long	.LASF183
	.byte	0x1c
	.byte	0xc2
	.byte	0x8
	.long	0x76f
	.byte	0x33
	.uleb128 0xa
	.long	.LASF184
	.byte	0x1c
	.byte	0xcb
	.byte	0x8
	.long	0x76f
	.byte	0x34
	.uleb128 0xa
	.long	.LASF185
	.byte	0x1c
	.byte	0xcf
	.byte	0x8
	.long	0x76f
	.byte	0x35
	.uleb128 0xa
	.long	.LASF186
	.byte	0x1c
	.byte	0xd8
	.byte	0x8
	.long	0x76f
	.byte	0x36
	.uleb128 0xa
	.long	.LASF187
	.byte	0x1c
	.byte	0xe1
	.byte	0x8
	.long	0x76f
	.byte	0x37
	.uleb128 0xa
	.long	.LASF188
	.byte	0x1c
	.byte	0xe5
	.byte	0x8
	.long	0x76f
	.byte	0x38
	.uleb128 0xa
	.long	.LASF189
	.byte	0x1c
	.byte	0xe9
	.byte	0x8
	.long	0x76f
	.byte	0x39
	.uleb128 0xa
	.long	.LASF190
	.byte	0x1c
	.byte	0xed
	.byte	0x8
	.long	0x76f
	.byte	0x3a
	.uleb128 0xa
	.long	.LASF191
	.byte	0x1c
	.byte	0xf1
	.byte	0x8
	.long	0x76f
	.byte	0x3b
	.uleb128 0xa
	.long	.LASF192
	.byte	0x1c
	.byte	0xf4
	.byte	0x8
	.long	0x76f
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF193
	.byte	0x1c
	.byte	0xf7
	.byte	0x8
	.long	0x76f
	.byte	0x3d
	.uleb128 0xa
	.long	.LASF194
	.byte	0x1c
	.byte	0xfc
	.byte	0x8
	.long	0x76f
	.byte	0x3e
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x1c
	.value	0x100
	.byte	0x8
	.long	0x76f
	.byte	0x3f
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x1c
	.value	0x105
	.byte	0x7
	.long	0x65
	.byte	0x40
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x1c
	.value	0x108
	.byte	0x15
	.long	0x7b2
	.byte	0x44
	.uleb128 0x1a
	.long	.LASF198
	.byte	0x1c
	.value	0x113
	.byte	0xf
	.long	0xa4b
	.byte	0x48
	.uleb128 0x1a
	.long	.LASF199
	.byte	0x1c
	.value	0x116
	.byte	0xf
	.long	0xa4b
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x82d
	.uleb128 0xc
	.long	.LASF200
	.uleb128 0x7
	.byte	0x8
	.long	0xa40
	.uleb128 0x7
	.byte	0x8
	.long	0x776
	.uleb128 0xf
	.long	.LASF201
	.byte	0x1d
	.byte	0x32
	.byte	0xf
	.long	0x5bb
	.uleb128 0xf
	.long	.LASF202
	.byte	0x1d
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF203
	.byte	0x1d
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF204
	.byte	0x10
	.byte	0x1e
	.byte	0x19
	.byte	0x8
	.long	0xa9d
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1e
	.byte	0x1b
	.byte	0x9
	.long	0x385
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x1e
	.byte	0x1c
	.byte	0x9
	.long	0x391
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF205
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1f
	.byte	0x17
	.byte	0x6
	.long	0xac2
	.uleb128 0x16
	.long	.LASF206
	.byte	0x3
	.uleb128 0x16
	.long	.LASF207
	.byte	0x4
	.uleb128 0x16
	.long	.LASF208
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	.LASF209
	.byte	0x20
	.byte	0x1f
	.byte	0x20
	.byte	0x8
	.long	0xb52
	.uleb128 0xa
	.long	.LASF210
	.byte	0x1f
	.byte	0x23
	.byte	0x8
	.long	0x76f
	.byte	0
	.uleb128 0xa
	.long	.LASF163
	.byte	0x1f
	.byte	0x26
	.byte	0x17
	.long	0xa9d
	.byte	0x4
	.uleb128 0xa
	.long	.LASF174
	.byte	0x1f
	.byte	0x2f
	.byte	0x8
	.long	0x76f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF188
	.byte	0x1f
	.byte	0x32
	.byte	0x8
	.long	0x76f
	.byte	0x9
	.uleb128 0xa
	.long	.LASF211
	.byte	0x1f
	.byte	0x35
	.byte	0x8
	.long	0x76f
	.byte	0xa
	.uleb128 0xa
	.long	.LASF212
	.byte	0x1f
	.byte	0x39
	.byte	0x13
	.long	0xb52
	.byte	0x10
	.uleb128 0xa
	.long	.LASF213
	.byte	0x1f
	.byte	0x3d
	.byte	0x8
	.long	0x76f
	.byte	0x18
	.uleb128 0xa
	.long	.LASF193
	.byte	0x1f
	.byte	0x40
	.byte	0x8
	.long	0x76f
	.byte	0x19
	.uleb128 0xa
	.long	.LASF192
	.byte	0x1f
	.byte	0x43
	.byte	0x8
	.long	0x76f
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF214
	.byte	0x1f
	.byte	0x4b
	.byte	0x8
	.long	0x76f
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa75
	.uleb128 0x19
	.long	.LASF215
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1f
	.byte	0x4e
	.byte	0x6
	.long	0xb83
	.uleb128 0x16
	.long	.LASF216
	.byte	0x2
	.uleb128 0x16
	.long	.LASF217
	.byte	0x3
	.uleb128 0x16
	.long	.LASF218
	.byte	0x4
	.uleb128 0x16
	.long	.LASF219
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x31
	.byte	0x1
	.long	0xb98
	.uleb128 0x16
	.long	.LASF220
	.byte	0x80
	.byte	0
	.uleb128 0x1b
	.long	.LASF221
	.byte	0x2
	.byte	0x36
	.byte	0xd
	.long	0x76f
	.uleb128 0x9
	.byte	0x3
	.quad	remove_trailing_slashes
	.uleb128 0xd
	.long	0x463
	.long	0xbbe
	.uleb128 0xe
	.long	0x39
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.long	0xbae
	.uleb128 0x1b
	.long	.LASF222
	.byte	0x2
	.byte	0x38
	.byte	0x1c
	.long	0xbbe
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1c
	.long	.LASF233
	.byte	0x2
	.value	0x151
	.byte	0x1
	.long	0x65
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xd84
	.uleb128 0x1d
	.long	.LASF223
	.byte	0x2
	.value	0x151
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x1d
	.long	.LASF224
	.byte	0x2
	.value	0x151
	.byte	0x18
	.long	0x46e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.value	0x153
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.value	0x154
	.byte	0x8
	.long	0x76f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1f
	.long	.LASF225
	.byte	0x2
	.value	0x155
	.byte	0x8
	.long	0x76f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -335
	.uleb128 0x1f
	.long	.LASF226
	.byte	0x2
	.value	0x156
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1f
	.long	.LASF227
	.byte	0x2
	.value	0x157
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x1e
	.string	"x"
	.byte	0x2
	.value	0x158
	.byte	0x15
	.long	0x82d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1f
	.long	.LASF228
	.byte	0x2
	.value	0x159
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1f
	.long	.LASF229
	.byte	0x2
	.value	0x15a
	.byte	0x8
	.long	0x76f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -334
	.uleb128 0x1f
	.long	.LASF230
	.byte	0x2
	.value	0x15b
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x1f
	.long	.LASF231
	.byte	0x2
	.value	0x15c
	.byte	0xa
	.long	0x46e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1f
	.long	.LASF232
	.byte	0x2
	.value	0x15d
	.byte	0x8
	.long	0x76f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -333
	.uleb128 0x20
	.long	.LASF245
	.long	0xd94
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7106
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x22
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xd40
	.uleb128 0x1e
	.string	"st"
	.byte	0x2
	.value	0x187
	.byte	0x1b
	.long	0x4d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x21
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.byte	0
	.uleb128 0x21
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x21
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x23
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x1e
	.string	"i"
	.byte	0x2
	.value	0x1f5
	.byte	0x10
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x115
	.long	0xd94
	.uleb128 0xe
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0xd84
	.uleb128 0x24
	.long	.LASF234
	.byte	0x2
	.value	0x11e
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc9
	.uleb128 0x1d
	.long	.LASF235
	.byte	0x2
	.value	0x11e
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.long	.LASF241
	.byte	0x2
	.byte	0xfd
	.byte	0x1
	.long	0x76f
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xe69
	.uleb128 0x26
	.long	.LASF236
	.byte	0x2
	.byte	0xfd
	.byte	0x11
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF237
	.byte	0x2
	.byte	0xfd
	.byte	0x1f
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF238
	.byte	0x2
	.byte	0xfd
	.byte	0x2a
	.long	0x76f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"x"
	.byte	0x2
	.byte	0xfe
	.byte	0x24
	.long	0xe69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.value	0x100
	.byte	0x8
	.long	0x76f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x23
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1f
	.long	.LASF239
	.byte	0x2
	.value	0x10f
	.byte	0x13
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF240
	.byte	0x2
	.value	0x110
	.byte	0xd
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa3b
	.uleb128 0x25
	.long	.LASF242
	.byte	0x2
	.byte	0xa9
	.byte	0x1
	.long	0x76f
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xf65
	.uleb128 0x26
	.long	.LASF236
	.byte	0x2
	.byte	0xa9
	.byte	0x16
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF237
	.byte	0x2
	.byte	0xa9
	.byte	0x2a
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"x"
	.byte	0x2
	.byte	0xa9
	.byte	0x49
	.long	0xe69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1b
	.long	.LASF243
	.byte	0x2
	.byte	0xab
	.byte	0x8
	.long	0x76f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -95
	.uleb128 0x1b
	.long	.LASF244
	.byte	0x2
	.byte	0xac
	.byte	0x8
	.long	0x76f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -94
	.uleb128 0x28
	.string	"ok"
	.byte	0x2
	.byte	0xad
	.byte	0x8
	.long	0x76f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x20
	.long	.LASF245
	.long	0xf75
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7051
	.uleb128 0x23
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1b
	.long	.LASF246
	.byte	0x2
	.byte	0xb1
	.byte	0x13
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1b
	.long	.LASF209
	.byte	0x2
	.byte	0xe5
	.byte	0x1d
	.long	0xac2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF235
	.byte	0x2
	.byte	0xe6
	.byte	0x1a
	.long	0xb58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.string	"dir"
	.byte	0x2
	.byte	0xe7
	.byte	0x17
	.long	0xf7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x115
	.long	0xf75
	.uleb128 0xe
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0xf65
	.uleb128 0xd
	.long	0x302
	.long	0xf8a
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.long	.LASF247
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.long	0x76f
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xffd
	.uleb128 0x26
	.long	.LASF231
	.byte	0x2
	.byte	0x9a
	.byte	0x27
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x28
	.string	"st"
	.byte	0x2
	.byte	0x9c
	.byte	0xf
	.long	0x4d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.string	"err"
	.byte	0x2
	.byte	0x9d
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x1b
	.long	.LASF248
	.byte	0x2
	.byte	0x9e
	.byte	0x8
	.long	0x76f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -197
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x29
	.long	.LASF249
	.byte	0x2
	.byte	0x6b
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x1038
	.uleb128 0x27
	.string	"x"
	.byte	0x2
	.byte	0x6b
	.byte	0x24
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF232
	.byte	0x2
	.byte	0x6d
	.byte	0x8
	.long	0x76f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x82d
	.uleb128 0x29
	.long	.LASF250
	.byte	0x2
	.byte	0x4b
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x10a3
	.uleb128 0x27
	.string	"x"
	.byte	0x2
	.byte	0x4b
	.byte	0x24
	.long	0x10a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1b
	.long	.LASF251
	.byte	0x2
	.byte	0x60
	.byte	0x1b
	.long	0xa75
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_buf.7024
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xac2
	.uleb128 0x2a
	.long	.LASF252
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x114e
	.uleb128 0x1d
	.long	.LASF253
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.long	.LASF254
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1104
	.uleb128 0x1a
	.long	.LASF253
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x302
	.byte	0
	.uleb128 0x1a
	.long	.LASF255
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x302
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x10d9
	.uleb128 0x1f
	.long	.LASF254
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x115e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF255
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1f
	.long	.LASF256
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1163
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	.LASF257
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x1104
	.long	0x115e
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x114e
	.uleb128 0x7
	.byte	0x8
	.long	0x1104
	.uleb128 0x2c
	.long	.LASF258
	.byte	0x1
	.value	0x268
	.byte	0x1
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF259
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF155:
	.string	"I_UNSPECIFIED"
.LASF225:
	.string	"make_backups"
.LASF103:
	.string	"__glibc_reserved"
.LASF247:
	.string	"target_directory_operand"
.LASF102:
	.string	"st_ctim"
.LASF7:
	.string	"size_t"
.LASF114:
	.string	"GETOPT_HELP_CHAR"
.LASF98:
	.string	"st_blksize"
.LASF99:
	.string	"st_blocks"
.LASF52:
	.string	"_IO_codecvt"
.LASF171:
	.string	"install_mode"
.LASF134:
	.string	"simple_backups"
.LASF32:
	.string	"_IO_save_end"
.LASF260:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF64:
	.string	"dev_t"
.LASF10:
	.string	"__gid_t"
.LASF179:
	.string	"set_security_context"
.LASF104:
	.string	"_sys_siglist"
.LASF101:
	.string	"st_mtim"
.LASF66:
	.string	"time_t"
.LASF181:
	.string	"data_copy_required"
.LASF227:
	.string	"version_control_string"
.LASF25:
	.string	"_IO_write_base"
.LASF246:
	.string	"dir_to_remove"
.LASF203:
	.string	"error_one_per_line"
.LASF135:
	.string	"numbered_existing_backups"
.LASF41:
	.string	"_lock"
.LASF201:
	.string	"error_print_progname"
.LASF232:
	.string	"selinux_enabled"
.LASF176:
	.string	"preserve_mode"
.LASF230:
	.string	"n_files"
.LASF88:
	.string	"stat"
.LASF81:
	.string	"__tzname"
.LASF261:
	.string	"src/mv.c"
.LASF150:
	.string	"REFLINK_ALWAYS"
.LASF188:
	.string	"recursive"
.LASF156:
	.string	"Dereference_symlink"
.LASF34:
	.string	"_chain"
.LASF38:
	.string	"_cur_column"
.LASF57:
	.string	"sys_nerr"
.LASF132:
	.string	"backup_type"
.LASF8:
	.string	"__dev_t"
.LASF59:
	.string	"_sys_nerr"
.LASF153:
	.string	"I_ALWAYS_NO"
.LASF215:
	.string	"RM_status"
.LASF141:
	.string	"hash_table"
.LASF106:
	.string	"__environ"
.LASF145:
	.string	"SPARSE_AUTO"
.LASF6:
	.string	"long int"
.LASF184:
	.string	"require_preserve_context"
.LASF79:
	.string	"has_arg"
.LASF169:
	.string	"hard_link"
.LASF221:
	.string	"remove_trailing_slashes"
.LASF136:
	.string	"numbered_backups"
.LASF51:
	.string	"_IO_marker"
.LASF233:
	.string	"main"
.LASF244:
	.string	"rename_succeeded"
.LASF159:
	.string	"DEREF_COMMAND_LINE_ARGUMENTS"
.LASF175:
	.string	"preserve_ownership"
.LASF172:
	.string	"chown_privileges"
.LASF185:
	.string	"preserve_xattr"
.LASF4:
	.string	"signed char"
.LASF17:
	.string	"__blksize_t"
.LASF67:
	.string	"_IO_FILE"
.LASF211:
	.string	"remove_empty_directories"
.LASF83:
	.string	"__timezone"
.LASF53:
	.string	"_IO_wide_data"
.LASF93:
	.string	"st_uid"
.LASF245:
	.string	"__PRETTY_FUNCTION__"
.LASF205:
	.string	"rm_interactive"
.LASF129:
	.string	"quoting_style_args"
.LASF107:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF144:
	.string	"SPARSE_NEVER"
.LASF45:
	.string	"_freeres_list"
.LASF96:
	.string	"st_rdev"
.LASF157:
	.string	"DEREF_UNDEFINED"
.LASF191:
	.string	"update"
.LASF182:
	.string	"require_preserve"
.LASF252:
	.string	"emit_ancillary_info"
.LASF208:
	.string	"RMI_NEVER"
.LASF202:
	.string	"error_message_count"
.LASF163:
	.string	"interactive"
.LASF19:
	.string	"__syscall_slong_t"
.LASF139:
	.string	"_Bool"
.LASF183:
	.string	"preserve_security_context"
.LASF20:
	.string	"char"
.LASF142:
	.string	"Sparse_type"
.LASF263:
	.string	"_IO_lock_t"
.LASF197:
	.string	"reflink_mode"
.LASF218:
	.string	"RM_ERROR"
.LASF158:
	.string	"DEREF_NEVER"
.LASF236:
	.string	"source"
.LASF86:
	.string	"timezone"
.LASF122:
	.string	"shell_escape_always_quoting_style"
.LASF12:
	.string	"__mode_t"
.LASF22:
	.string	"_IO_read_ptr"
.LASF54:
	.string	"stdin"
.LASF58:
	.string	"sys_errlist"
.LASF33:
	.string	"_markers"
.LASF117:
	.string	"program_name"
.LASF231:
	.string	"file"
.LASF168:
	.string	"unlink_dest_after_failed_open"
.LASF243:
	.string	"copy_into_self"
.LASF248:
	.string	"is_a_dir"
.LASF170:
	.string	"move_mode"
.LASF124:
	.string	"c_maybe_quoting_style"
.LASF196:
	.string	"rename_errno"
.LASF255:
	.string	"node"
.LASF133:
	.string	"no_backups"
.LASF186:
	.string	"require_preserve_xattr"
.LASF108:
	.string	"program_invocation_name"
.LASF42:
	.string	"_offset"
.LASF222:
	.string	"long_options"
.LASF94:
	.string	"st_gid"
.LASF74:
	.string	"optind"
.LASF238:
	.string	"dest_is_dir"
.LASF143:
	.string	"SPARSE_UNUSED"
.LASF63:
	.string	"ino_t"
.LASF127:
	.string	"clocale_quoting_style"
.LASF200:
	.string	"selabel_handle"
.LASF0:
	.string	"long unsigned int"
.LASF258:
	.string	"emit_backup_suffix_note"
.LASF235:
	.string	"status"
.LASF36:
	.string	"_flags2"
.LASF30:
	.string	"_IO_save_base"
.LASF97:
	.string	"st_size"
.LASF24:
	.string	"_IO_read_base"
.LASF154:
	.string	"I_ASK_USER"
.LASF77:
	.string	"option"
.LASF49:
	.string	"_unused2"
.LASF189:
	.string	"set_mode"
.LASF223:
	.string	"argc"
.LASF187:
	.string	"reduce_diagnostics"
.LASF37:
	.string	"_old_offset"
.LASF254:
	.string	"infomap"
.LASF137:
	.string	"simple_backup_suffix"
.LASF224:
	.string	"argv"
.LASF18:
	.string	"__blkcnt_t"
.LASF119:
	.string	"shell_quoting_style"
.LASF161:
	.string	"cp_options"
.LASF11:
	.string	"__ino_t"
.LASF192:
	.string	"verbose"
.LASF61:
	.string	"long long int"
.LASF253:
	.string	"program"
.LASF110:
	.string	"Version"
.LASF111:
	.string	"exit_failure"
.LASF71:
	.string	"_gl_cxxalias_dummy"
.LASF146:
	.string	"SPARSE_ALWAYS"
.LASF152:
	.string	"I_ALWAYS_YES"
.LASF123:
	.string	"c_quoting_style"
.LASF27:
	.string	"_IO_write_end"
.LASF217:
	.string	"RM_USER_DECLINED"
.LASF216:
	.string	"RM_OK"
.LASF105:
	.string	"sys_siglist"
.LASF138:
	.string	"float"
.LASF115:
	.string	"GETOPT_VERSION_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF1:
	.string	"unsigned int"
.LASF116:
	.string	"version_etc_copyright"
.LASF130:
	.string	"quoting_style_vals"
.LASF118:
	.string	"literal_quoting_style"
.LASF95:
	.string	"__pad0"
.LASF84:
	.string	"tzname"
.LASF47:
	.string	"__pad5"
.LASF80:
	.string	"flag"
.LASF180:
	.string	"preserve_links"
.LASF21:
	.string	"_flags"
.LASF177:
	.string	"preserve_timestamps"
.LASF257:
	.string	"lc_messages"
.LASF48:
	.string	"_mode"
.LASF239:
	.string	"src_basename"
.LASF43:
	.string	"_codecvt"
.LASF113:
	.string	"LOG10_TIMESPEC_HZ"
.LASF91:
	.string	"st_nlink"
.LASF65:
	.string	"mode_t"
.LASF194:
	.string	"open_dangling_dest_symlink"
.LASF207:
	.string	"RMI_SOMETIMES"
.LASF62:
	.string	"long double"
.LASF50:
	.string	"FILE"
.LASF89:
	.string	"st_dev"
.LASF151:
	.string	"Interactive"
.LASF213:
	.string	"preserve_all_root"
.LASF68:
	.string	"timespec"
.LASF147:
	.string	"Reflink_type"
.LASF229:
	.string	"no_target_directory"
.LASF76:
	.string	"optopt"
.LASF148:
	.string	"REFLINK_NEVER"
.LASF126:
	.string	"locale_quoting_style"
.LASF72:
	.string	"long long unsigned int"
.LASF206:
	.string	"RMI_ALWAYS"
.LASF240:
	.string	"new_dest"
.LASF14:
	.string	"__off_t"
.LASF210:
	.string	"ignore_missing_files"
.LASF131:
	.string	"quoting_style"
.LASF109:
	.string	"program_invocation_short_name"
.LASF214:
	.string	"require_restore_cwd"
.LASF259:
	.string	"emit_mandatory_arg_note"
.LASF46:
	.string	"_freeres_buf"
.LASF190:
	.string	"symbolic_link"
.LASF219:
	.string	"RM_NONEMPTY_DIR"
.LASF250:
	.string	"rm_option_init"
.LASF75:
	.string	"opterr"
.LASF262:
	.string	"/root/coreutils"
.LASF16:
	.string	"__time_t"
.LASF31:
	.string	"_IO_backup_base"
.LASF40:
	.string	"_shortbuf"
.LASF140:
	.string	"Hash_table"
.LASF237:
	.string	"dest"
.LASF220:
	.string	"STRIP_TRAILING_SLASHES_OPTION"
.LASF120:
	.string	"shell_always_quoting_style"
.LASF204:
	.string	"dev_ino"
.LASF15:
	.string	"__off64_t"
.LASF195:
	.string	"last_file"
.LASF125:
	.string	"escape_quoting_style"
.LASF209:
	.string	"rm_options"
.LASF29:
	.string	"_IO_buf_end"
.LASF78:
	.string	"name"
.LASF174:
	.string	"one_file_system"
.LASF256:
	.string	"map_prog"
.LASF56:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF173:
	.string	"owner_privileges"
.LASF165:
	.string	"mode"
.LASF70:
	.string	"tv_nsec"
.LASF234:
	.string	"usage"
.LASF121:
	.string	"shell_escape_quoting_style"
.LASF212:
	.string	"root_dev_ino"
.LASF39:
	.string	"_vtable_offset"
.LASF60:
	.string	"_sys_errlist"
.LASF226:
	.string	"backup_suffix"
.LASF160:
	.string	"DEREF_ALWAYS"
.LASF112:
	.string	"TIMESPEC_HZ"
.LASF178:
	.string	"explicit_no_preserve_mode"
.LASF199:
	.string	"src_info"
.LASF82:
	.string	"__daylight"
.LASF162:
	.string	"dereference"
.LASF92:
	.string	"st_mode"
.LASF9:
	.string	"__uid_t"
.LASF193:
	.string	"stdin_tty"
.LASF23:
	.string	"_IO_read_end"
.LASF251:
	.string	"dev_ino_buf"
.LASF198:
	.string	"dest_info"
.LASF87:
	.string	"getdate_err"
.LASF249:
	.string	"cp_option_init"
.LASF35:
	.string	"_fileno"
.LASF164:
	.string	"sparse_mode"
.LASF44:
	.string	"_wide_data"
.LASF73:
	.string	"optarg"
.LASF228:
	.string	"target_directory"
.LASF3:
	.string	"short unsigned int"
.LASF55:
	.string	"stdout"
.LASF26:
	.string	"_IO_write_ptr"
.LASF241:
	.string	"movefile"
.LASF85:
	.string	"daylight"
.LASF166:
	.string	"copy_as_regular"
.LASF149:
	.string	"REFLINK_AUTO"
.LASF90:
	.string	"st_ino"
.LASF13:
	.string	"__nlink_t"
.LASF69:
	.string	"tv_sec"
.LASF128:
	.string	"custom_quoting_style"
.LASF100:
	.string	"st_atim"
.LASF167:
	.string	"unlink_dest_before_opening"
.LASF242:
	.string	"do_move"
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
