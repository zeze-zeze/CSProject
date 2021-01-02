	.file	"ln.c"
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
	.local	backup_type
	.comm	backup_type,4,4
	.local	symbolic_link
	.comm	symbolic_link,1,1
	.local	relative
	.comm	relative,1,1
	.local	logical
	.comm	logical,1,1
	.local	interactive
	.comm	interactive,1,1
	.local	remove_existing_files
	.comm	remove_existing_files,1,1
	.local	verbose
	.comm	verbose,1,1
	.local	hard_dir_link
	.comm	hard_dir_link,1,1
	.local	beware_hard_dir_link
	.comm	beware_hard_dir_link,1,1
	.data
	.type	dereference_dest_dir_symlinks, @object
	.size	dereference_dest_dir_symlinks, 1
dereference_dest_dir_symlinks:
	.byte	1
	.local	dest_set
	.comm	dest_set,8,8
	.section	.rodata
.LC21:
	.string	"backup"
.LC22:
	.string	"directory"
.LC23:
	.string	"no-dereference"
.LC24:
	.string	"no-target-directory"
.LC25:
	.string	"force"
.LC26:
	.string	"interactive"
.LC27:
	.string	"suffix"
.LC28:
	.string	"target-directory"
.LC29:
	.string	"logical"
.LC30:
	.string	"physical"
.LC31:
	.string	"relative"
.LC32:
	.string	"symbolic"
.LC33:
	.string	"verbose"
.LC34:
	.string	"help"
.LC35:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 512
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
	.long	70
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC27
	.long	1
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC28
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	76
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	80
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC35
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
	.type	errnoize, @function
errnoize:
.LFB48:
	.file 2 "src/ln.c"
	.loc 2 124 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 2 125 29
	cmpl	$0, -4(%rbp)
	jns	.L13
	.loc 2 125 23 discriminator 1
	call	__errno_location@PLT
	.loc 2 125 29 discriminator 1
	movl	(%rax), %eax
	jmp	.L15
.L13:
	.loc 2 125 29 is_stmt 0 discriminator 2
	movl	$0, %eax
.L15:
	.loc 2 126 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	errnoize, .-errnoize
	.type	convert_abs_rel, @function
convert_abs_rel:
.LFB49:
	.loc 2 133 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 136 21
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	dir_name@PLT
	movq	%rax, -24(%rbp)
	.loc 2 138 20
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	canonicalize_filename_mode@PLT
	movq	%rax, -16(%rbp)
	.loc 2 139 20
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	canonicalize_filename_mode@PLT
	movq	%rax, -8(%rbp)
	.loc 2 141 9
	movq	$0, -32(%rbp)
	.loc 2 142 6
	cmpq	$0, -16(%rbp)
	je	.L17
	.loc 2 142 16 discriminator 1
	cmpq	$0, -8(%rbp)
	je	.L17
	.loc 2 145 23
	movl	$4096, %edi
	call	xmalloc@PLT
	movq	%rax, -32(%rbp)
	.loc 2 147 12
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$4096, %ecx
	movq	%rax, %rdi
	call	relpath@PLT
	.loc 2 147 11
	xorl	$1, %eax
	.loc 2 147 10
	testb	%al, %al
	je	.L17
	.loc 2 149 11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 150 25
	movq	$0, -32(%rbp)
.L17:
	.loc 2 154 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 155 3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 156 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 158 40
	cmpq	$0, -32(%rbp)
	jne	.L18
	.loc 2 158 42 discriminator 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 2 158 40 discriminator 1
	jmp	.L20
.L18:
	.loc 2 158 40 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax
.L20:
	.loc 2 159 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	convert_abs_rel, .-convert_abs_rel
	.type	atomic_link, @function
atomic_link:
.LFB50:
	.loc 2 169 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 171 11
	movzbl	symbolic_link(%rip), %eax
	.loc 2 173 11
	testb	%al, %al
	je	.L22
	.loc 2 171 23
	movzbl	relative(%rip), %eax
	.loc 2 172 14
	testb	%al, %al
	jne	.L23
	.loc 2 172 16 discriminator 1
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	symlinkat@PLT
	movl	%eax, %edi
	call	errnoize
	.loc 2 173 11 discriminator 1
	jmp	.L30
.L23:
	.loc 2 172 14 discriminator 2
	movl	$-1, %eax
	.loc 2 173 11 discriminator 2
	jmp	.L30
.L22:
	.loc 2 173 34 discriminator 1
	movzbl	beware_hard_dir_link(%rip), %eax
	.loc 2 174 11 discriminator 1
	testb	%al, %al
	jne	.L26
	.loc 2 175 39 discriminator 1
	movzbl	logical(%rip), %eax
	.loc 2 174 13 discriminator 1
	testb	%al, %al
	je	.L27
	.loc 2 174 13 is_stmt 0 discriminator 3
	movl	$1024, %esi
	jmp	.L28
.L27:
	.loc 2 174 13 discriminator 4
	movl	$0, %esi
.L28:
	.loc 2 174 13 discriminator 6
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$-100, %edi
	call	linkat@PLT
	movl	%eax, %edi
	call	errnoize
	.loc 2 173 11 is_stmt 1 discriminator 6
	jmp	.L30
.L26:
	.loc 2 174 11 discriminator 2
	movl	$-1, %eax
.L30:
	.loc 2 176 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	atomic_link, .-atomic_link
	.section	.rodata
.LC36:
	.string	"failed to access %s"
	.align 8
.LC37:
	.string	"%s: hard link not allowed for directory"
	.align 8
.LC38:
	.string	"%s: cannot overwrite directory"
	.align 8
.LC39:
	.string	"will not overwrite just-created %s with %s"
.LC40:
	.string	"%s and %s are the same file"
.LC41:
	.string	"%s: replace %s? "
.LC42:
	.string	"cannot backup %s"
.LC43:
	.string	" ~ "
.LC44:
	.string	"%s%s%s %c> %s\n"
	.align 8
.LC45:
	.string	"failed to create symbolic link %s"
	.align 8
.LC46:
	.string	"failed to create symbolic link %s -> %s"
	.align 8
.LC47:
	.string	"failed to create hard link to %.0s%s"
.LC48:
	.string	"failed to create hard link %s"
	.align 8
.LC49:
	.string	"failed to create hard link %s => %s"
.LC50:
	.string	"cannot un-backup %s"
	.text
	.type	do_link, @function
do_link:
.LFB51:
	.loc 2 188 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$416, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -408(%rbp)
	movl	%esi, -412(%rbp)
	movq	%rdx, -424(%rbp)
	movq	%rcx, -432(%rbp)
	movl	%r8d, -416(%rbp)
	.loc 2 188 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 190 7
	movl	$1, -388(%rbp)
	.loc 2 191 9
	movq	$0, -376(%rbp)
	.loc 2 192 9
	movq	$0, -368(%rbp)
	.loc 2 193 31
	movzbl	logical(%rip), %eax
	.loc 2 193 35
	testb	%al, %al
	je	.L32
	.loc 2 193 35 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L33
.L32:
	.loc 2 193 35 discriminator 2
	movl	$256, %eax
.L33:
	.loc 2 193 7 is_stmt 1 discriminator 4
	movl	%eax, -384(%rbp)
	.loc 2 194 6 discriminator 4
	cmpl	$0, -416(%rbp)
	jns	.L34
	.loc 2 195 18
	movq	-424(%rbp), %rdx
	movl	-412(%rbp), %ecx
	movq	-408(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	atomic_link
	movl	%eax, -416(%rbp)
.L34:
	.loc 2 199 6
	cmpl	$0, -416(%rbp)
	jne	.L35
	.loc 2 199 19 discriminator 2
	movq	dest_set(%rip), %rax
	testq	%rax, %rax
	je	.L36
.L35:
	.loc 2 199 35 discriminator 3
	movzbl	symbolic_link(%rip), %eax
	xorl	$1, %eax
	.loc 2 199 32 discriminator 3
	testb	%al, %al
	je	.L36
	.loc 2 201 23
	movl	-384(%rbp), %ecx
	leaq	-320(%rbp), %rdx
	movq	-408(%rbp), %rax
	movq	%rax, %rsi
	movl	$-100, %edi
	call	fstatat@PLT
	movl	%eax, -388(%rbp)
	.loc 2 202 10
	cmpl	$0, -388(%rbp)
	je	.L36
	.loc 2 204 11
	movq	-408(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 204 28
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 204 21
	call	__errno_location@PLT
	.loc 2 204 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 205 18
	movl	$0, %eax
	jmp	.L79
.L36:
	.loc 2 209 6
	cmpl	$0, -416(%rbp)
	je	.L38
.LBB2:
	.loc 2 211 11
	movzbl	symbolic_link(%rip), %eax
	xorl	$1, %eax
	.loc 2 211 10
	testb	%al, %al
	je	.L39
	.loc 2 211 29 discriminator 1
	movzbl	hard_dir_link(%rip), %eax
	xorl	$1, %eax
	.loc 2 211 26 discriminator 1
	testb	%al, %al
	je	.L39
	.loc 2 211 47 discriminator 2
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	.loc 2 211 44 discriminator 2
	cmpl	$16384, %eax
	jne	.L39
	.loc 2 213 11
	movq	-408(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 213 24
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 213 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 215 18
	movl	$0, %eax
	jmp	.L79
.L39:
	.loc 2 218 11
	movzbl	relative(%rip), %eax
	.loc 2 218 10
	testb	%al, %al
	je	.L40
	.loc 2 219 31
	movq	-432(%rbp), %rdx
	movq	-408(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	convert_abs_rel
	movq	%rax, -368(%rbp)
	.loc 2 219 16
	movq	-368(%rbp), %rax
	movq	%rax, -408(%rbp)
.L40:
	.loc 2 221 21
	movzbl	remove_existing_files(%rip), %eax
	.loc 2 222 21
	testb	%al, %al
	jne	.L41
	.loc 2 221 43
	movzbl	interactive(%rip), %eax
	testb	%al, %al
	jne	.L41
	.loc 2 222 36 discriminator 2
	movl	backup_type(%rip), %eax
	.loc 2 222 21 discriminator 2
	testl	%eax, %eax
	je	.L42
.L41:
	.loc 2 222 21 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L43
.L42:
	.loc 2 222 21 discriminator 3
	movl	$0, %eax
.L43:
	.loc 2 221 12 is_stmt 1
	movb	%al, -389(%rbp)
	andb	$1, -389(%rbp)
	.loc 2 223 10
	cmpb	$0, -389(%rbp)
	je	.L44
.LBB3:
	.loc 2 226 15
	leaq	-176(%rbp), %rdx
	movq	-424(%rbp), %rsi
	movl	-412(%rbp), %eax
	movl	$256, %ecx
	movl	%eax, %edi
	call	fstatat@PLT
	.loc 2 226 14
	testl	%eax, %eax
	je	.L45
	.loc 2 229 19
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 229 18
	cmpl	$2, %eax
	je	.L46
	.loc 2 231 19
	movq	-432(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 231 36
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 231 29
	call	__errno_location@PLT
	.loc 2 231 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 232 26
	movl	$0, %eax
	jmp	.L79
.L46:
	.loc 2 234 21
	movb	$0, -389(%rbp)
	jmp	.L44
.L45:
	.loc 2 236 20
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 236 19
	cmpl	$16384, %eax
	jne	.L49
	.loc 2 238 15
	movq	-432(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 238 28
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	.loc 2 238 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 239 22
	movl	$0, %eax
	jmp	.L79
.L49:
	.loc 2 241 20
	movq	dest_set(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	-432(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	seen_file@PLT
	.loc 2 241 19
	testb	%al, %al
	je	.L50
	.loc 2 245 15
	movq	-408(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-432(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 2 246 22
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	.loc 2 245 15
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 248 22
	movl	$0, %eax
	jmp	.L79
.L50:
	.loc 2 259 31
	movl	backup_type(%rip), %eax
	.loc 2 259 19
	testl	%eax, %eax
	je	.L51
	.loc 2 260 21 discriminator 1
	movzbl	symbolic_link(%rip), %eax
	.loc 2 259 19 discriminator 1
	xorl	$1, %eax
	jmp	.L52
.L51:
	.loc 2 259 19 is_stmt 0 discriminator 2
	movzbl	remove_existing_files(%rip), %eax
.L52:
	.loc 2 259 18 is_stmt 1 discriminator 4
	testb	%al, %al
	je	.L53
	.loc 2 267 22
	cmpl	$0, -388(%rbp)
	je	.L54
	.loc 2 268 37
	leaq	-320(%rbp), %rdx
	movq	-408(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	movl	%eax, -388(%rbp)
.L54:
	.loc 2 269 22
	cmpl	$0, -388(%rbp)
	jne	.L53
	.loc 2 270 26
	movq	-312(%rbp), %rdx
	movq	-168(%rbp), %rax
	.loc 2 270 23
	cmpq	%rax, %rdx
	jne	.L53
	.loc 2 270 26 discriminator 1
	movq	-320(%rbp), %rdx
	movq	-176(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L53
	.loc 2 271 39
	movq	-304(%rbp), %rax
	.loc 2 271 23
	cmpq	$1, %rax
	je	.L55
	.loc 2 272 30
	movq	-424(%rbp), %rcx
	movl	-412(%rbp), %edx
	movq	-408(%rbp), %rax
	movq	%rax, %rsi
	movl	$-100, %edi
	call	same_nameat@PLT
	.loc 2 272 27
	testb	%al, %al
	je	.L53
.L55:
	.loc 2 275 23
	movq	-432(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-408(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 2 275 36
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 2 275 23
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 277 30
	movl	$0, %eax
	jmp	.L79
.L53:
	.loc 2 281 18
	cmpl	$0, -416(%rbp)
	js	.L56
	.loc 2 281 34 discriminator 1
	cmpl	$17, -416(%rbp)
	jne	.L44
.L56:
	.loc 2 283 23
	movzbl	interactive(%rip), %eax
	.loc 2 283 22
	testb	%al, %al
	je	.L57
	.loc 2 285 23
	movq	-432(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	movq	program_name(%rip), %rbx
	.loc 2 285 40
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 285 23
	movq	stderr(%rip), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 287 28
	call	yesno@PLT
	.loc 2 287 27
	xorl	$1, %eax
	.loc 2 287 26
	testb	%al, %al
	je	.L57
	.loc 2 288 32
	movl	$1, %eax
	jmp	.L79
.L57:
	.loc 2 291 35
	movl	backup_type(%rip), %eax
	.loc 2 291 22
	testl	%eax, %eax
	je	.L44
	.loc 2 293 37
	movl	backup_type(%rip), %edx
	movq	-424(%rbp), %rcx
	movl	-412(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	find_backup_file_name@PLT
	movq	%rax, -376(%rbp)
	.loc 2 296 27
	movq	-376(%rbp), %rcx
	movl	-412(%rbp), %edx
	movq	-424(%rbp), %rsi
	movl	-412(%rbp), %eax
	movl	%eax, %edi
	call	renameat@PLT
	.loc 2 296 26
	testl	%eax, %eax
	je	.L44
.LBB4:
	.loc 2 300 46
	call	__errno_location@PLT
	.loc 2 300 31
	movl	(%rax), %eax
	movl	%eax, -380(%rbp)
	.loc 2 301 27
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 302 39
	movq	$0, -376(%rbp)
	.loc 2 303 30
	cmpl	$2, -380(%rbp)
	je	.L58
	.loc 2 305 31
	movq	-432(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 305 55
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 305 31
	movl	-380(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 307 38
	movl	$0, %eax
	jmp	.L79
.L58:
	.loc 2 309 33
	movb	$0, -389(%rbp)
.L44:
.LBE4:
.LBE3:
	.loc 2 334 12
	movzbl	symbolic_link(%rip), %eax
	.loc 2 336 12
	testb	%al, %al
	je	.L59
	.loc 2 334 14
	movzbl	-389(%rbp), %ecx
	movl	-416(%rbp), %edi
	movq	-424(%rbp), %rdx
	movl	-412(%rbp), %esi
	movq	-408(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	force_symlinkat@PLT
	jmp	.L60
.L59:
	.loc 2 336 14 discriminator 1
	movzbl	-389(%rbp), %edi
	.loc 2 337 36 discriminator 1
	movzbl	logical(%rip), %eax
	.loc 2 336 14 discriminator 1
	testb	%al, %al
	je	.L61
	.loc 2 336 14 is_stmt 0 discriminator 2
	movl	$1024, %r8d
	jmp	.L62
.L61:
	.loc 2 336 14 discriminator 3
	movl	$0, %r8d
.L62:
	.loc 2 336 14 discriminator 5
	movq	-424(%rbp), %rcx
	movl	-412(%rbp), %edx
	movq	-408(%rbp), %rax
	subq	$8, %rsp
	movl	-416(%rbp), %esi
	pushq	%rsi
	movl	%edi, %r9d
	movq	%rax, %rsi
	movl	$-100, %edi
	call	force_linkat@PLT
	addq	$16, %rsp
.L60:
	.loc 2 333 9 is_stmt 1
	movl	%eax, -416(%rbp)
.L38:
.LBE2:
	.loc 2 344 6
	cmpl	$0, -416(%rbp)
	jg	.L63
	.loc 2 348 11
	movzbl	symbolic_link(%rip), %eax
	xorl	$1, %eax
	.loc 2 348 10
	testb	%al, %al
	je	.L64
	.loc 2 349 9
	movq	dest_set(%rip), %rax
	leaq	-320(%rbp), %rdx
	movq	-432(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	record_file@PLT
.L64:
	.loc 2 351 11
	movzbl	verbose(%rip), %eax
	.loc 2 351 10
	testb	%al, %al
	je	.L65
.LBB5:
	.loc 2 353 23
	leaq	.LC19(%rip), %rax
	movq	%rax, -360(%rbp)
	.loc 2 354 23
	leaq	.LC19(%rip), %rax
	movq	%rax, -352(%rbp)
	.loc 2 355 14
	cmpq	$0, -376(%rbp)
	je	.L66
.LBB6:
	.loc 2 357 21
	movq	-376(%rbp), %rax
	movq	%rax, -344(%rbp)
	.loc 2 358 21
	movq	$0, -336(%rbp)
	.loc 2 359 25
	movq	-424(%rbp), %rax
	subq	-432(%rbp), %rax
	movq	%rax, -328(%rbp)
	.loc 2 360 18
	cmpq	$0, -328(%rbp)
	jle	.L67
	.loc 2 362 49
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 362 47
	movq	-328(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 362 27
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -336(%rbp)
	.loc 2 363 28
	movq	-328(%rbp), %rdx
	movq	-432(%rbp), %rcx
	movq	-336(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	%rax, -344(%rbp)
	.loc 2 364 19
	movq	-328(%rbp), %rdx
	movq	-344(%rbp), %rax
	addq	%rax, %rdx
	movq	-376(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
.L67:
	.loc 2 366 31
	movq	-344(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$2, %edi
	call	quotearg_n_style@PLT
	movq	%rax, -360(%rbp)
	.loc 2 367 26
	leaq	.LC43(%rip), %rax
	movq	%rax, -352(%rbp)
	.loc 2 368 15
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L66:
.LBE6:
	.loc 2 370 11
	movq	-408(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 2 371 54
	movzbl	symbolic_link(%rip), %eax
	.loc 2 370 11
	testb	%al, %al
	je	.L68
	.loc 2 370 11 is_stmt 0 discriminator 1
	movl	$45, %r12d
	jmp	.L69
.L68:
	.loc 2 370 11 discriminator 2
	movl	$61, %r12d
.L69:
	.loc 2 370 11 discriminator 4
	movq	-432(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rcx
	movq	-352(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rbx, %r9
	movl	%r12d, %r8d
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L65
.L63:
.LBE5:
	.loc 2 377 7 is_stmt 1
	movq	-408(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-432(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 2 379 15
	movzbl	symbolic_link(%rip), %eax
	.loc 2 377 7
	testb	%al, %al
	je	.L70
	.loc 2 377 7 is_stmt 0 discriminator 1
	cmpl	$36, -416(%rbp)
	je	.L71
	.loc 2 379 48 is_stmt 1
	movq	-408(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 379 45
	testb	%al, %al
	je	.L71
	.loc 2 380 20
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	.loc 2 377 7
	jmp	.L73
.L71:
	.loc 2 381 20
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	jmp	.L73
.L70:
	.loc 2 377 7 discriminator 2
	cmpl	$31, -416(%rbp)
	jne	.L74
	.loc 2 383 20
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	jmp	.L73
.L74:
	.loc 2 377 7 discriminator 4
	cmpl	$122, -416(%rbp)
	je	.L76
	.loc 2 384 42
	cmpl	$17, -416(%rbp)
	je	.L76
	.loc 2 385 21
	cmpl	$28, -416(%rbp)
	je	.L76
	.loc 2 385 45 discriminator 1
	cmpl	$30, -416(%rbp)
	jne	.L77
.L76:
	.loc 2 386 20
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	.loc 2 377 7
	jmp	.L73
.L77:
	.loc 2 387 20
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
.L73:
	.loc 2 377 7 discriminator 6
	movl	-416(%rbp), %esi
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 390 10 discriminator 6
	cmpq	$0, -376(%rbp)
	je	.L65
	.loc 2 392 15
	movq	-424(%rbp), %rcx
	movl	-412(%rbp), %edx
	movq	-376(%rbp), %rsi
	movl	-412(%rbp), %eax
	movl	%eax, %edi
	call	renameat@PLT
	.loc 2 392 14
	testl	%eax, %eax
	je	.L65
	.loc 2 393 13
	movq	-432(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 393 30
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 393 23
	call	__errno_location@PLT
	.loc 2 393 13
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L65:
	.loc 2 397 3
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 398 3
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 399 21
	cmpl	$0, -416(%rbp)
	setle	%al
.L79:
	.loc 2 400 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L80
	.loc 2 400 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L80:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	do_link, .-do_link
	.section	.rodata
	.align 8
.LC51:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC52:
	.string	"Usage: %s [OPTION]... [-T] TARGET LINK_NAME\n  or:  %s [OPTION]... TARGET\n  or:  %s [OPTION]... TARGET... DIRECTORY\n  or:  %s [OPTION]... -t DIRECTORY TARGET...\n"
	.align 8
.LC53:
	.ascii	"In the 1st form, create a link to TARGET with the name LINK_"
	.ascii	"NAME.\nIn the 2nd form, create a link to TARGET in the curre"
	.ascii	"nt directory.\nIn the 3rd and 4th forms, create links to eac"
	.ascii	"h TARGET in DIRECTORY.\nCreate hard links by default, symbol"
	.ascii	"ic links with --symbol"
	.string	"ic.\nBy default, each destination (name of new link) should not already exist.\nWhen creating hard links, each TARGET must exist.  Symbolic links\ncan hold arbitrary text; if later resolved, a relative link is\ninterpreted in relation to its parent directory.\n"
	.align 8
.LC54:
	.ascii	"      --backup[=CONTROL]      make a backup of each existing"
	.ascii	" destination file\n  -b                          like --back"
	.ascii	"up but does not accept an argument\n  -d, -F, --directory   "
	.ascii	"      allow "
	.string	"the superuser to attempt to hard link\n                                directories (note: will probably fail due to\n                                system restrictions, even for the superuser)\n  -f, --force                 remove existing destination files\n"
	.align 8
.LC55:
	.ascii	"  -i, --interactive           prompt whether to remove desti"
	.ascii	"nations\n  -L, --logical               dereference TARGETs t"
	.ascii	"hat are symbolic links\n  -n, --no-dereference        treat "
	.ascii	"LINK_NAME as a normal file if\n                             "
	.ascii	"   it i"
	.string	"s a symbolic link to a directory\n  -P, --physical              make hard links directly to symbolic links\n  -r, --relative              create symbolic links relative to link location\n  -s, --symbolic              make symbolic links instead of hard links\n"
	.align 8
.LC56:
	.ascii	"  -S, --suffix=SUFFIX         override the usual backup s"
	.string	"uffix\n  -t, --target-directory=DIRECTORY  specify the DIRECTORY in which to create\n                                the links\n  -T, --no-target-directory   treat LINK_NAME as a normal file always\n  -v, --verbose               print name of each linked file\n"
	.align 8
.LC57:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC58:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC59:
	.string	"\nUsing -s ignores -L and -P.  Otherwise, the last option specified controls\nbehavior when a TARGET is a symbolic link, defaulting to %s.\n"
.LC60:
	.string	"-P"
.LC61:
	.string	"ln"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB52:
	.loc 2 404 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -36(%rbp)
	.loc 2 405 6
	cmpl	$0, -36(%rbp)
	je	.L82
	.loc 2 406 5
	movq	program_name(%rip), %rbx
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L83
.L82:
	.loc 2 409 7
	movq	program_name(%rip), %r14
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 409 15
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	.loc 2 409 7
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 416 7
	movq	stdout(%rip), %rbx
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 427 7
	call	emit_mandatory_arg_note
	.loc 2 429 7
	movq	stdout(%rip), %rbx
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 437 7
	movq	stdout(%rip), %rbx
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 446 7
	movq	stdout(%rip), %rbx
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 453 7
	movq	stdout(%rip), %rbx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 454 7
	movq	stdout(%rip), %rbx
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 455 7
	call	emit_backup_suffix_note
	.loc 2 456 15
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	.loc 2 456 7
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 461 7
	leaq	.LC61(%rip), %rdi
	call	emit_ancillary_info
.L83:
	.loc 2 463 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE52:
	.size	usage, .-usage
	.section	.rodata
.LC62:
	.string	"/usr/local/share/locale"
	.align 8
.LC63:
	.string	"multiple target directories specified"
.LC64:
	.string	"target %s is not a directory"
.LC65:
	.string	"David MacKenzie"
.LC66:
	.string	"Mike Parker"
.LC67:
	.string	"bdfinrst:vFLPS:T"
.LC68:
	.string	"missing file operand"
	.align 8
.LC69:
	.string	"cannot do --relative without --symbolic"
	.align 8
.LC70:
	.string	"cannot combine --target-directory and --no-target-directory"
	.align 8
.LC71:
	.string	"missing destination file operand after %s"
.LC72:
	.string	"extra operand %s"
.LC73:
	.string	"."
.LC74:
	.string	"target %s"
.LC75:
	.string	"backup type"
	.text
	.globl	main
	.type	main, @function
main:
.LFB53:
	.loc 2 468 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$272, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -276(%rbp)
	movq	%rsi, -288(%rbp)
	.loc 2 468 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 471 8
	movb	$0, -263(%rbp)
	.loc 2 472 15
	movq	$0, -224(%rbp)
	.loc 2 473 9
	movq	$0, -216(%rbp)
	.loc 2 474 15
	movq	$0, -208(%rbp)
	.loc 2 476 8
	movb	$0, -261(%rbp)
	.loc 2 479 7
	movl	$-1, -252(%rbp)
	.loc 2 482 3
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 483 3
	leaq	.LC19(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 484 3
	leaq	.LC62(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 485 3
	leaq	.LC5(%rip), %rdi
	call	textdomain@PLT
	.loc 2 487 3
	movq	close_stdin@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 490 21
	movb	$0, hard_dir_link(%rip)
	.loc 2 490 5
	movzbl	hard_dir_link(%rip), %eax
	movb	%al, verbose(%rip)
	.loc 2 489 55
	movzbl	verbose(%rip), %eax
	movb	%al, interactive(%rip)
	.loc 2 489 41
	movzbl	interactive(%rip), %eax
	movb	%al, remove_existing_files(%rip)
	.loc 2 489 17
	movzbl	remove_existing_files(%rip), %eax
	movb	%al, symbolic_link(%rip)
	.loc 2 492 9
	jmp	.L85
.L108:
	.loc 2 495 7
	cmpl	$118, -244(%rbp)
	jg	.L86
	cmpl	$70, -244(%rbp)
	jge	.L87
	cmpl	$-131, -244(%rbp)
	je	.L88
	cmpl	$-130, -244(%rbp)
	je	.L89
	jmp	.L86
.L87:
	movl	-244(%rbp), %eax
	subl	$70, %eax
	cmpl	$48, %eax
	ja	.L86
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L91(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L91(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L91:
	.long	.L98-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L103-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L102-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L101-.L91
	.long	.L100-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L99-.L91
	.long	.L86-.L91
	.long	.L98-.L91
	.long	.L86-.L91
	.long	.L97-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L96-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L95-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L86-.L91
	.long	.L94-.L91
	.long	.L93-.L91
	.long	.L92-.L91
	.long	.L86-.L91
	.long	.L90-.L91
	.text
.L99:
	.loc 2 498 24
	movb	$1, -263(%rbp)
	.loc 2 499 15
	movq	optarg(%rip), %rax
	.loc 2 499 14
	testq	%rax, %rax
	je	.L85
	.loc 2 500 36
	movq	optarg(%rip), %rax
	movq	%rax, -216(%rbp)
	.loc 2 501 11
	jmp	.L85
.L98:
	.loc 2 504 25
	movb	$1, hard_dir_link(%rip)
	.loc 2 505 11
	jmp	.L85
.L97:
	.loc 2 507 33
	movb	$1, remove_existing_files(%rip)
	.loc 2 508 23
	movb	$0, interactive(%rip)
	.loc 2 509 11
	jmp	.L85
.L96:
	.loc 2 511 33
	movb	$0, remove_existing_files(%rip)
	.loc 2 512 23
	movb	$1, interactive(%rip)
	.loc 2 513 11
	jmp	.L85
.L103:
	.loc 2 515 19
	movb	$1, logical(%rip)
	.loc 2 516 11
	jmp	.L85
.L95:
	.loc 2 518 41
	movb	$0, dereference_dest_dir_symlinks(%rip)
	.loc 2 519 11
	jmp	.L85
.L102:
	.loc 2 521 19
	movb	$0, logical(%rip)
	.loc 2 522 11
	jmp	.L85
.L94:
	.loc 2 524 20
	movb	$1, relative(%rip)
	.loc 2 525 11
	jmp	.L85
.L93:
	.loc 2 527 25
	movb	$1, symbolic_link(%rip)
	.loc 2 528 11
	jmp	.L85
.L92:
	.loc 2 530 14
	cmpq	$0, -208(%rbp)
	je	.L105
.LBB7:
	.loc 2 531 13
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L105:
.LBE7:
.LBB8:
	.loc 2 535 19
	movq	optarg(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 535 18
	testl	%eax, %eax
	je	.L106
.LBB9:
	.loc 2 536 17
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
.L106:
.LBE9:
	.loc 2 538 21
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 538 18
	cmpl	$16384, %eax
	je	.L107
.LBB10:
	.loc 2 539 17
	movq	optarg(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L107:
.LBE10:
.LBE8:
	.loc 2 542 28
	movq	optarg(%rip), %rax
	movq	%rax, -208(%rbp)
	.loc 2 543 11
	jmp	.L85
.L100:
	.loc 2 545 31
	movb	$1, -261(%rbp)
	.loc 2 546 11
	jmp	.L85
.L90:
	.loc 2 548 19
	movb	$1, verbose(%rip)
	.loc 2 549 11
	jmp	.L85
.L101:
	.loc 2 551 24
	movb	$1, -263(%rbp)
	.loc 2 552 25
	movq	optarg(%rip), %rax
	movq	%rax, -224(%rbp)
	.loc 2 553 11
	jmp	.L85
.L89:
	.loc 2 554 9
	movl	$0, %edi
	call	usage
.L88:
	.loc 2 555 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC65(%rip), %r9
	leaq	.LC66(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L86:
	.loc 2 557 11
	movl	$1, %edi
	call	usage
.L85:
	.loc 2 492 15
	movq	-288(%rbp), %rsi
	movl	-276(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -244(%rbp)
	.loc 2 492 9
	cmpl	$-1, -244(%rbp)
	jne	.L108
	.loc 2 562 18
	movl	optind(%rip), %eax
	.loc 2 562 11
	movl	-276(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -256(%rbp)
	.loc 2 563 15
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 563 8
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	.loc 2 565 6
	cmpl	$0, -256(%rbp)
	jg	.L109
	.loc 2 567 20
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	.loc 2 567 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 568 7
	movl	$1, %edi
	call	usage
.L109:
	.loc 2 571 7
	movzbl	relative(%rip), %eax
	.loc 2 571 6
	testb	%al, %al
	je	.L110
	.loc 2 571 19 discriminator 1
	movzbl	symbolic_link(%rip), %eax
	xorl	$1, %eax
	.loc 2 571 16 discriminator 1
	testb	%al, %al
	je	.L110
.LBB11:
	.loc 2 572 5
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L110:
.LBE11:
	.loc 2 574 7
	movzbl	hard_dir_link(%rip), %eax
	xorl	$1, %eax
	.loc 2 574 6
	testb	%al, %al
	je	.L111
	.loc 2 576 7
	call	priv_set_remove_linkdir@PLT
	.loc 2 577 28
	movb	$0, beware_hard_dir_link(%rip)
.L111:
	.loc 2 580 6
	cmpb	$0, -261(%rbp)
	je	.L112
	.loc 2 582 10
	cmpq	$0, -208(%rbp)
	je	.L113
.LBB12:
	.loc 2 583 9
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L113:
.LBE12:
	.loc 2 586 10
	cmpl	$2, -256(%rbp)
	je	.L114
	.loc 2 588 14
	cmpl	$1, -256(%rbp)
	jg	.L115
	.loc 2 589 13
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 590 20
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	.loc 2 589 13
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L116
.L115:
	.loc 2 593 49
	movq	-200(%rbp), %rax
	addq	$16, %rax
	.loc 2 593 13
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 593 26
	leaq	.LC72(%rip), %rdi
	call	gettext@PLT
	.loc 2 593 13
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L116:
	.loc 2 594 11
	movl	$1, %edi
	call	usage
.L112:
	.loc 2 597 11
	cmpl	$1, -256(%rbp)
	jg	.L117
	.loc 2 597 24 discriminator 1
	cmpq	$0, -208(%rbp)
	jne	.L117
	.loc 2 599 24
	leaq	.LC73(%rip), %rax
	movq	%rax, -208(%rbp)
	.loc 2 600 18
	movl	$-100, -260(%rbp)
	jmp	.L114
.L117:
	.loc 2 604 10
	cmpl	$2, -256(%rbp)
	jne	.L118
	.loc 2 604 24 discriminator 1
	cmpq	$0, -208(%rbp)
	jne	.L118
	.loc 2 605 58
	movq	-200(%rbp), %rax
	addq	$8, %rax
	.loc 2 605 22
	movq	(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	$-100, %esi
	movq	%rax, %rdi
	call	atomic_link
	movl	%eax, -252(%rbp)
.L118:
	.loc 2 606 10
	cmpl	$0, -252(%rbp)
	js	.L119
	.loc 2 606 26 discriminator 1
	cmpl	$17, -252(%rbp)
	je	.L119
	.loc 2 606 50 discriminator 2
	cmpl	$20, -252(%rbp)
	je	.L119
	.loc 2 607 11
	cmpl	$22, -252(%rbp)
	jne	.L114
.L119:
.LBB13:
	.loc 2 610 51
	cmpq	$0, -208(%rbp)
	jne	.L120
	.loc 2 610 57 discriminator 1
	movl	-256(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 610 51 discriminator 1
	movq	(%rax), %rax
	jmp	.L121
.L120:
	.loc 2 610 51 is_stmt 0 discriminator 2
	movq	-208(%rbp), %rax
.L121:
	.loc 2 609 23 is_stmt 1
	movq	%rax, -192(%rbp)
	.loc 2 612 57
	movzbl	dereference_dest_dir_symlinks(%rip), %eax
	.loc 2 612 24
	testb	%al, %al
	je	.L122
	.loc 2 612 24 is_stmt 0 discriminator 1
	movl	$2162688, %eax
	jmp	.L123
.L122:
	.loc 2 612 24 discriminator 2
	movl	$2293760, %eax
.L123:
	.loc 2 611 15 is_stmt 1
	movl	%eax, -240(%rbp)
	.loc 2 613 24
	movl	-240(%rbp), %edx
	movq	-192(%rbp), %rax
	movq	%rax, %rsi
	movl	$-100, %edi
	movl	$0, %eax
	call	openat_safer@PLT
	movl	%eax, -260(%rbp)
	.loc 2 614 21
	call	__errno_location@PLT
	.loc 2 614 15
	movl	(%rax), %eax
	movl	%eax, -236(%rbp)
	.loc 2 626 14
	cmpl	$0, -260(%rbp)
	js	.L124
	.loc 2 628 26
	cmpq	$0, -208(%rbp)
	sete	%al
	movzbl	%al, %eax
	.loc 2 628 23
	subl	%eax, -256(%rbp)
	.loc 2 629 32
	movq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	jmp	.L114
.L124:
	.loc 2 631 19
	cmpl	$2, -256(%rbp)
	jne	.L125
	.loc 2 631 20 discriminator 1
	cmpq	$0, -208(%rbp)
	je	.L114
.L125:
.LBB14:
	.loc 2 632 13
	movq	-192(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	-236(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L114:
.LBE14:
.LBE13:
	.loc 2 638 18
	cmpb	$0, -263(%rbp)
	je	.L126
	.loc 2 637 34
	leaq	.LC75(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 637 20
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xget_version@PLT
	jmp	.L127
.L126:
	.loc 2 638 18 discriminator 1
	movl	$0, %eax
.L127:
	.loc 2 636 15
	movl	%eax, backup_type(%rip)
	.loc 2 639 3
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	set_simple_backup_suffix@PLT
	.loc 2 642 6
	cmpq	$0, -208(%rbp)
	je	.L128
	.loc 2 647 10
	cmpl	$1, -256(%rbp)
	jle	.L129
	.loc 2 648 11
	movzbl	remove_existing_files(%rip), %eax
	testb	%al, %al
	je	.L129
	.loc 2 651 14
	movzbl	symbolic_link(%rip), %eax
	xorl	$1, %eax
	.loc 2 651 11
	testb	%al, %al
	je	.L129
	.loc 2 654 26
	movl	backup_type(%rip), %eax
	.loc 2 654 11
	cmpl	$3, %eax
	je	.L129
	.loc 2 656 22
	movq	triple_free@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	triple_compare@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	triple_hash@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$61, %edi
	call	hash_initialize@PLT
	.loc 2 656 20
	movq	%rax, dest_set(%rip)
	.loc 2 661 24
	movq	dest_set(%rip), %rax
	.loc 2 661 14
	testq	%rax, %rax
	jne	.L129
	.loc 2 662 13
	call	xalloc_die@PLT
.L129:
	.loc 2 665 10
	movb	$1, -262(%rbp)
.LBB15:
	.loc 2 666 16
	movl	$0, -248(%rbp)
	.loc 2 666 7
	jmp	.L130
.L131:
.LBB16:
	.loc 2 670 62 discriminator 3
	movl	-248(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 670 42 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, %rcx
	.loc 2 669 24 discriminator 3
	leaq	-232(%rbp), %rdx
	movq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -184(%rbp)
	.loc 2 672 11 discriminator 3
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	strip_trailing_slashes@PLT
	.loc 2 673 17 discriminator 3
	movq	-232(%rbp), %rdx
	.loc 2 673 30 discriminator 3
	movl	-248(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-200(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 673 17 discriminator 3
	movq	(%rax), %rax
	movq	-184(%rbp), %rcx
	movl	-260(%rbp), %esi
	movl	$-1, %r8d
	movq	%rax, %rdi
	call	do_link
	.loc 2 673 14 discriminator 3
	movzbl	-262(%rbp), %edx
	.loc 2 673 17 discriminator 3
	movzbl	%al, %eax
	.loc 2 673 14 discriminator 3
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -262(%rbp)
	.loc 2 674 11 discriminator 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE16:
	.loc 2 666 36 discriminator 3
	addl	$1, -248(%rbp)
.L130:
	.loc 2 666 7 discriminator 1
	movl	-248(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L131
	jmp	.L132
.L128:
.LBE15:
	.loc 2 678 51
	movq	-200(%rbp), %rax
	addq	$8, %rax
	.loc 2 678 10
	movq	(%rax), %rcx
	.loc 2 678 42
	movq	-200(%rbp), %rax
	addq	$8, %rax
	.loc 2 678 10
	movq	(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	-252(%rbp), %esi
	movl	%esi, %r8d
	movl	$-100, %esi
	movq	%rax, %rdi
	call	do_link
	movb	%al, -262(%rbp)
.L132:
	.loc 2 680 28
	movzbl	-262(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 681 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L134
	call	__stack_chk_fail@PLT
.L134:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 11 "./lib/sys/select.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 14 "/usr/include/time.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 16 "/usr/include/signal.h"
	.file 17 "/usr/include/unistd.h"
	.file 18 "/usr/include/errno.h"
	.file 19 "src/version.h"
	.file 20 "./lib/exitfail.h"
	.file 21 "./lib/timespec.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/backupfile.h"
	.file 26 "./lib/error.h"
	.file 27 "./lib/hash.h"
	.file 28 "./lib/canonicalize.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf0f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF209
	.byte	0xc
	.long	.LASF210
	.long	.LASF211
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
	.long	.LASF65
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
	.long	.LASF212
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
	.byte	0x7
	.byte	0x12
	.long	0xd8
	.uleb128 0x9
	.long	.LASF66
	.byte	0x10
	.byte	0xa
	.byte	0xa
	.byte	0x8
	.long	0x3c5
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0xc
	.byte	0xc
	.long	0xd8
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x10
	.byte	0x15
	.long	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF69
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF70
	.uleb128 0xf
	.long	.LASF71
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF72
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF74
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF75
	.byte	0x20
	.byte	0xd
	.byte	0x32
	.byte	0x8
	.long	0x44b
	.uleb128 0xa
	.long	.LASF76
	.byte	0xd
	.byte	0x34
	.byte	0xf
	.long	0x302
	.byte	0
	.uleb128 0xa
	.long	.LASF77
	.byte	0xd
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF78
	.byte	0xd
	.byte	0x38
	.byte	0x8
	.long	0x450
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xd
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x409
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0x108
	.long	0x466
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF79
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x456
	.uleb128 0xf
	.long	.LASF80
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF81
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF82
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x456
	.uleb128 0xf
	.long	.LASF83
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF84
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF85
	.byte	0xe
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF86
	.byte	0x90
	.byte	0xf
	.byte	0x2e
	.byte	0x8
	.long	0x58c
	.uleb128 0xa
	.long	.LASF87
	.byte	0xf
	.byte	0x30
	.byte	0xd
	.long	0x78
	.byte	0
	.uleb128 0xa
	.long	.LASF88
	.byte	0xf
	.byte	0x35
	.byte	0xd
	.long	0x9c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF89
	.byte	0xf
	.byte	0x3d
	.byte	0xf
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF90
	.byte	0xf
	.byte	0x3e
	.byte	0xe
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF91
	.byte	0xf
	.byte	0x40
	.byte	0xd
	.long	0x84
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF92
	.byte	0xf
	.byte	0x41
	.byte	0xd
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF93
	.byte	0xf
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF94
	.byte	0xf
	.byte	0x45
	.byte	0xd
	.long	0x78
	.byte	0x28
	.uleb128 0xa
	.long	.LASF95
	.byte	0xf
	.byte	0x4a
	.byte	0xd
	.long	0xc0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF96
	.byte	0xf
	.byte	0x4e
	.byte	0x11
	.long	0xe4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF97
	.byte	0xf
	.byte	0x50
	.byte	0x10
	.long	0xf0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF98
	.byte	0xf
	.byte	0x5b
	.byte	0x15
	.long	0x39d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF99
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x39d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF100
	.byte	0xf
	.byte	0x5d
	.byte	0x15
	.long	0x39d
	.byte	0x68
	.uleb128 0xa
	.long	.LASF101
	.byte	0xf
	.byte	0x6a
	.byte	0x17
	.long	0x58c
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0xfc
	.long	0x59c
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x59c
	.uleb128 0xd
	.long	0x308
	.long	0x5b3
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5a3
	.uleb128 0x11
	.long	.LASF102
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x5b3
	.uleb128 0x11
	.long	.LASF103
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x5b3
	.uleb128 0x11
	.long	.LASF104
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x5df
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0x11
	.long	.LASF105
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x5df
	.uleb128 0xf
	.long	.LASF106
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF107
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF108
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x302
	.uleb128 0xf
	.long	.LASF109
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
	.long	0x63a
	.uleb128 0x15
	.long	.LASF110
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x64f
	.uleb128 0x16
	.long	.LASF111
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x66d
	.uleb128 0x18
	.long	.LASF112
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF113
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x115
	.long	0x678
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x66d
	.uleb128 0xf
	.long	.LASF114
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x678
	.uleb128 0xf
	.long	.LASF115
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x302
	.uleb128 0x19
	.long	.LASF129
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x6ea
	.uleb128 0x16
	.long	.LASF116
	.byte	0
	.uleb128 0x16
	.long	.LASF117
	.byte	0x1
	.uleb128 0x16
	.long	.LASF118
	.byte	0x2
	.uleb128 0x16
	.long	.LASF119
	.byte	0x3
	.uleb128 0x16
	.long	.LASF120
	.byte	0x4
	.uleb128 0x16
	.long	.LASF121
	.byte	0x5
	.uleb128 0x16
	.long	.LASF122
	.byte	0x6
	.uleb128 0x16
	.long	.LASF123
	.byte	0x7
	.uleb128 0x16
	.long	.LASF124
	.byte	0x8
	.uleb128 0x16
	.long	.LASF125
	.byte	0x9
	.uleb128 0x16
	.long	.LASF126
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x695
	.uleb128 0x11
	.long	.LASF127
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x34e
	.uleb128 0xd
	.long	0x6ea
	.long	0x707
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x6fc
	.uleb128 0x11
	.long	.LASF128
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x707
	.uleb128 0x19
	.long	.LASF130
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x1e
	.byte	0x6
	.long	0x744
	.uleb128 0x16
	.long	.LASF131
	.byte	0
	.uleb128 0x16
	.long	.LASF132
	.byte	0x1
	.uleb128 0x16
	.long	.LASF133
	.byte	0x2
	.uleb128 0x16
	.long	.LASF134
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF135
	.byte	0x19
	.byte	0x31
	.byte	0x14
	.long	0x302
	.uleb128 0xf
	.long	.LASF136
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x59d
	.uleb128 0xf
	.long	.LASF137
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF138
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF139
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF140
	.uleb128 0x2
	.long	.LASF141
	.byte	0x1b
	.byte	0x32
	.byte	0x1b
	.long	0x78e
	.uleb128 0xc
	.long	.LASF142
	.uleb128 0x19
	.long	.LASF143
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x1c
	.byte	0x6
	.long	0x7be
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
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x2a
	.byte	0x6
	.long	0x7d6
	.uleb128 0x15
	.long	.LASF148
	.long	0x200000
	.byte	0
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x2
	.byte	0x37
	.byte	0x19
	.long	0x719
	.uleb128 0x9
	.byte	0x3
	.quad	backup_type
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x2
	.byte	0x3a
	.byte	0xd
	.long	0x77b
	.uleb128 0x9
	.byte	0x3
	.quad	symbolic_link
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x2
	.byte	0x3d
	.byte	0xd
	.long	0x77b
	.uleb128 0x9
	.byte	0x3
	.quad	relative
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x2
	.byte	0x40
	.byte	0xd
	.long	0x77b
	.uleb128 0x9
	.byte	0x3
	.quad	logical
	.uleb128 0x1a
	.long	.LASF152
	.byte	0x2
	.byte	0x43
	.byte	0xd
	.long	0x77b
	.uleb128 0x9
	.byte	0x3
	.quad	interactive
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x2
	.byte	0x46
	.byte	0xd
	.long	0x77b
	.uleb128 0x9
	.byte	0x3
	.quad	remove_existing_files
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x2
	.byte	0x49
	.byte	0xd
	.long	0x77b
	.uleb128 0x9
	.byte	0x3
	.quad	verbose
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x2
	.byte	0x4f
	.byte	0xd
	.long	0x77b
	.uleb128 0x9
	.byte	0x3
	.quad	hard_dir_link
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x2
	.byte	0x52
	.byte	0xd
	.long	0x77b
	.uleb128 0x9
	.byte	0x3
	.quad	beware_hard_dir_link
	.uleb128 0x1a
	.long	.LASF157
	.byte	0x2
	.byte	0x58
	.byte	0xd
	.long	0x77b
	.uleb128 0x9
	.byte	0x3
	.quad	dereference_dest_dir_symlinks
	.uleb128 0x1a
	.long	.LASF158
	.byte	0x2
	.byte	0x5e
	.byte	0x14
	.long	0x8c8
	.uleb128 0x9
	.byte	0x3
	.quad	dest_set
	.uleb128 0x7
	.byte	0x8
	.long	0x782
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x61
	.byte	0x6
	.long	0x8e3
	.uleb128 0x16
	.long	.LASF159
	.byte	0x3d
	.byte	0
	.uleb128 0xd
	.long	0x44b
	.long	0x8f3
	.uleb128 0xe
	.long	0x39
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.long	0x8e3
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x2
	.byte	0x63
	.byte	0x1c
	.long	0x8f3
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1b
	.long	.LASF175
	.byte	0x2
	.value	0x1d3
	.byte	0x1
	.long	0x65
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xb46
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x2
	.value	0x1d3
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x2
	.value	0x1d3
	.byte	0x18
	.long	0x5df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1d
	.string	"c"
	.byte	0x2
	.value	0x1d5
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x1d
	.string	"ok"
	.byte	0x2
	.value	0x1d6
	.byte	0x8
	.long	0x77b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -278
	.uleb128 0x1e
	.long	.LASF163
	.byte	0x2
	.value	0x1d7
	.byte	0x8
	.long	0x77b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -279
	.uleb128 0x1e
	.long	.LASF164
	.byte	0x2
	.value	0x1d8
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x2
	.value	0x1d9
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1e
	.long	.LASF166
	.byte	0x2
	.value	0x1da
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x2
	.value	0x1db
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1e
	.long	.LASF168
	.byte	0x2
	.value	0x1dc
	.byte	0x8
	.long	0x77b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -277
	.uleb128 0x1e
	.long	.LASF169
	.byte	0x2
	.value	0x1dd
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1e
	.long	.LASF170
	.byte	0x2
	.value	0x1de
	.byte	0xa
	.long	0x5df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1e
	.long	.LASF171
	.byte	0x2
	.value	0x1df
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x20
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xa64
	.uleb128 0x1d
	.string	"st"
	.byte	0x2
	.value	0x216
	.byte	0x1b
	.long	0x4bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.uleb128 0x1f
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1f
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x20
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0xaf0
	.uleb128 0x1d
	.string	"d"
	.byte	0x2
	.value	0x261
	.byte	0x17
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x2
	.value	0x263
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1d
	.string	"err"
	.byte	0x2
	.value	0x266
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x21
	.long	0xade
	.uleb128 0x22
	.string	"st"
	.byte	0x2
	.value	0x269
	.byte	0x1b
	.long	0x4bb
	.byte	0
	.uleb128 0x1f
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0
	.uleb128 0x23
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x1d
	.string	"i"
	.byte	0x2
	.value	0x29a
	.byte	0x10
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x23
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x2
	.value	0x29c
	.byte	0x11
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x2
	.value	0x29d
	.byte	0x11
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF176
	.byte	0x2
	.value	0x193
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xb76
	.uleb128 0x1c
	.long	.LASF177
	.byte	0x2
	.value	0x193
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.long	.LASF192
	.byte	0x2
	.byte	0xba
	.byte	0x1
	.long	0x77b
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1d
	.uleb128 0x26
	.long	.LASF178
	.byte	0x2
	.byte	0xba
	.byte	0x16
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x26
	.long	.LASF167
	.byte	0x2
	.byte	0xba
	.byte	0x22
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x26
	.long	.LASF173
	.byte	0x2
	.byte	0xba
	.byte	0x3a
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x26
	.long	.LASF174
	.byte	0x2
	.byte	0xbb
	.byte	0x16
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x26
	.long	.LASF171
	.byte	0x2
	.byte	0xbb
	.byte	0x20
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1a
	.long	.LASF179
	.byte	0x2
	.byte	0xbd
	.byte	0xf
	.long	0x4bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x2
	.byte	0xbe
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x1a
	.long	.LASF181
	.byte	0x2
	.byte	0xbf
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1a
	.long	.LASF182
	.byte	0x2
	.byte	0xc0
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x1a
	.long	.LASF183
	.byte	0x2
	.byte	0xc1
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xca3
	.uleb128 0x1a
	.long	.LASF184
	.byte	0x2
	.byte	0xdd
	.byte	0xc
	.long	0x77b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -405
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1a
	.long	.LASF185
	.byte	0x2
	.byte	0xe1
	.byte	0x17
	.long	0x4bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1e
	.long	.LASF186
	.byte	0x2
	.value	0x12c
	.byte	0x1f
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1e
	.long	.LASF187
	.byte	0x2
	.value	0x161
	.byte	0x17
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x1e
	.long	.LASF188
	.byte	0x2
	.value	0x162
	.byte	0x17
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x23
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1e
	.long	.LASF189
	.byte	0x2
	.value	0x165
	.byte	0x15
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1e
	.long	.LASF190
	.byte	0x2
	.value	0x166
	.byte	0x15
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1e
	.long	.LASF191
	.byte	0x2
	.value	0x167
	.byte	0x19
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF193
	.byte	0x2
	.byte	0xa8
	.byte	0x1
	.long	0x65
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xd6d
	.uleb128 0x26
	.long	.LASF178
	.byte	0x2
	.byte	0xa8
	.byte	0x1a
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF167
	.byte	0x2
	.byte	0xa8
	.byte	0x26
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF173
	.byte	0x2
	.byte	0xa8
	.byte	0x3e
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF194
	.byte	0x2
	.byte	0x84
	.byte	0x1
	.long	0x108
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xdea
	.uleb128 0x26
	.long	.LASF195
	.byte	0x2
	.byte	0x84
	.byte	0x1e
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF196
	.byte	0x2
	.byte	0x84
	.byte	0x30
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x2
	.byte	0x88
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF198
	.byte	0x2
	.byte	0x8a
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF199
	.byte	0x2
	.byte	0x8b
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF200
	.byte	0x2
	.byte	0x8d
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF201
	.byte	0x2
	.byte	0x7b
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xe1c
	.uleb128 0x26
	.long	.LASF177
	.byte	0x2
	.byte	0x7b
	.byte	0xf
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF213
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xec1
	.uleb128 0x1c
	.long	.LASF202
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.long	.LASF203
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xe77
	.uleb128 0x29
	.long	.LASF202
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x302
	.byte	0
	.uleb128 0x29
	.long	.LASF204
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x302
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xe4c
	.uleb128 0x1e
	.long	.LASF203
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xed1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF204
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xed6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xe77
	.long	0xed1
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xec1
	.uleb128 0x7
	.byte	0x8
	.long	0xe77
	.uleb128 0x2a
	.long	.LASF207
	.byte	0x1
	.value	0x268
	.byte	0x1
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF208
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
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
.LASF14:
	.string	"__off_t"
.LASF10:
	.string	"__gid_t"
.LASF142:
	.string	"hash_table"
.LASF22:
	.string	"_IO_read_ptr"
.LASF124:
	.string	"locale_quoting_style"
.LASF34:
	.string	"_chain"
.LASF100:
	.string	"st_ctim"
.LASF113:
	.string	"GETOPT_VERSION_CHAR"
.LASF129:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF111:
	.string	"LOG10_TIMESPEC_HZ"
.LASF40:
	.string	"_shortbuf"
.LASF131:
	.string	"no_backups"
.LASF179:
	.string	"source_stats"
.LASF171:
	.string	"link_errno"
.LASF117:
	.string	"shell_quoting_style"
.LASF112:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF70:
	.string	"long long unsigned int"
.LASF149:
	.string	"symbolic_link"
.LASF55:
	.string	"stdout"
.LASF130:
	.string	"backup_type"
.LASF201:
	.string	"errnoize"
.LASF43:
	.string	"_codecvt"
.LASF86:
	.string	"stat"
.LASF62:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF128:
	.string	"quoting_style_vals"
.LASF202:
	.string	"program"
.LASF123:
	.string	"escape_quoting_style"
.LASF12:
	.string	"__mode_t"
.LASF193:
	.string	"atomic_link"
.LASF116:
	.string	"literal_quoting_style"
.LASF35:
	.string	"_fileno"
.LASF168:
	.string	"no_target_directory"
.LASF81:
	.string	"__timezone"
.LASF18:
	.string	"__blkcnt_t"
.LASF103:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF69:
	.string	"_gl_cxxalias_dummy"
.LASF160:
	.string	"long_options"
.LASF21:
	.string	"_flags"
.LASF44:
	.string	"_wide_data"
.LASF29:
	.string	"_IO_buf_end"
.LASF38:
	.string	"_cur_column"
.LASF107:
	.string	"program_invocation_short_name"
.LASF121:
	.string	"c_quoting_style"
.LASF52:
	.string	"_IO_codecvt"
.LASF197:
	.string	"targetdir"
.LASF60:
	.string	"_sys_errlist"
.LASF106:
	.string	"program_invocation_name"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF173:
	.string	"dest_base"
.LASF152:
	.string	"interactive"
.LASF110:
	.string	"TIMESPEC_HZ"
.LASF93:
	.string	"__pad0"
.LASF120:
	.string	"shell_escape_always_quoting_style"
.LASF84:
	.string	"timezone"
.LASF97:
	.string	"st_blocks"
.LASF115:
	.string	"program_name"
.LASF91:
	.string	"st_uid"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF158:
	.string	"dest_set"
.LASF46:
	.string	"_freeres_buf"
.LASF144:
	.string	"CAN_EXISTING"
.LASF66:
	.string	"timespec"
.LASF0:
	.string	"long unsigned int"
.LASF182:
	.string	"rel_source"
.LASF118:
	.string	"shell_always_quoting_style"
.LASF165:
	.string	"version_control_string"
.LASF75:
	.string	"option"
.LASF26:
	.string	"_IO_write_ptr"
.LASF76:
	.string	"name"
.LASF199:
	.string	"realfrom"
.LASF57:
	.string	"sys_nerr"
.LASF200:
	.string	"relative_from"
.LASF209:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF126:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF71:
	.string	"optarg"
.LASF138:
	.string	"error_one_per_line"
.LASF185:
	.string	"dest_stats"
.LASF108:
	.string	"Version"
.LASF30:
	.string	"_IO_save_base"
.LASF13:
	.string	"__nlink_t"
.LASF105:
	.string	"environ"
.LASF196:
	.string	"target"
.LASF41:
	.string	"_lock"
.LASF210:
	.string	"src/ln.c"
.LASF36:
	.string	"_flags2"
.LASF132:
	.string	"simple_backups"
.LASF207:
	.string	"emit_backup_suffix_note"
.LASF195:
	.string	"from"
.LASF95:
	.string	"st_size"
.LASF61:
	.string	"ptrdiff_t"
.LASF114:
	.string	"version_etc_copyright"
.LASF90:
	.string	"st_mode"
.LASF198:
	.string	"realdest"
.LASF167:
	.string	"destdir_fd"
.LASF23:
	.string	"_IO_read_end"
.LASF178:
	.string	"source"
.LASF68:
	.string	"tv_nsec"
.LASF85:
	.string	"getdate_err"
.LASF145:
	.string	"CAN_ALL_BUT_LAST"
.LASF8:
	.string	"__dev_t"
.LASF72:
	.string	"optind"
.LASF19:
	.string	"__syscall_slong_t"
.LASF146:
	.string	"CAN_MISSING"
.LASF27:
	.string	"_IO_write_end"
.LASF155:
	.string	"hard_dir_link"
.LASF135:
	.string	"simple_backup_suffix"
.LASF212:
	.string	"_IO_lock_t"
.LASF157:
	.string	"dereference_dest_dir_symlinks"
.LASF65:
	.string	"_IO_FILE"
.LASF136:
	.string	"error_print_progname"
.LASF174:
	.string	"dest"
.LASF17:
	.string	"__blksize_t"
.LASF205:
	.string	"map_prog"
.LASF104:
	.string	"__environ"
.LASF64:
	.string	"time_t"
.LASF48:
	.string	"_mode"
.LASF139:
	.string	"float"
.LASF188:
	.string	"backup_sep"
.LASF58:
	.string	"sys_errlist"
.LASF134:
	.string	"numbered_backups"
.LASF33:
	.string	"_markers"
.LASF164:
	.string	"backup_suffix"
.LASF101:
	.string	"__glibc_reserved"
.LASF89:
	.string	"st_nlink"
.LASF122:
	.string	"c_maybe_quoting_style"
.LASF140:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF204:
	.string	"node"
.LASF88:
	.string	"st_ino"
.LASF5:
	.string	"short int"
.LASF170:
	.string	"file"
.LASF96:
	.string	"st_blksize"
.LASF78:
	.string	"flag"
.LASF59:
	.string	"_sys_nerr"
.LASF153:
	.string	"remove_existing_files"
.LASF133:
	.string	"numbered_existing_backups"
.LASF39:
	.string	"_vtable_offset"
.LASF150:
	.string	"relative"
.LASF50:
	.string	"FILE"
.LASF109:
	.string	"exit_failure"
.LASF163:
	.string	"make_backups"
.LASF180:
	.string	"source_status"
.LASF119:
	.string	"shell_escape_quoting_style"
.LASF11:
	.string	"__ino_t"
.LASF127:
	.string	"quoting_style_args"
.LASF74:
	.string	"optopt"
.LASF192:
	.string	"do_link"
.LASF83:
	.string	"daylight"
.LASF148:
	.string	"O_PATHSEARCH"
.LASF169:
	.string	"n_files"
.LASF187:
	.string	"quoted_backup"
.LASF94:
	.string	"st_rdev"
.LASF189:
	.string	"backup"
.LASF63:
	.string	"long double"
.LASF20:
	.string	"char"
.LASF162:
	.string	"argv"
.LASF67:
	.string	"tv_sec"
.LASF1:
	.string	"unsigned int"
.LASF154:
	.string	"verbose"
.LASF191:
	.string	"destdirlen"
.LASF125:
	.string	"clocale_quoting_style"
.LASF141:
	.string	"Hash_table"
.LASF73:
	.string	"opterr"
.LASF190:
	.string	"alloc"
.LASF9:
	.string	"__uid_t"
.LASF147:
	.string	"CAN_NOLINKS"
.LASF15:
	.string	"__off64_t"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF183:
	.string	"nofollow_flag"
.LASF102:
	.string	"_sys_siglist"
.LASF203:
	.string	"infomap"
.LASF181:
	.string	"backup_base"
.LASF92:
	.string	"st_gid"
.LASF77:
	.string	"has_arg"
.LASF176:
	.string	"usage"
.LASF47:
	.string	"__pad5"
.LASF16:
	.string	"__time_t"
.LASF49:
	.string	"_unused2"
.LASF56:
	.string	"stderr"
.LASF98:
	.string	"st_atim"
.LASF143:
	.string	"canonicalize_mode_t"
.LASF186:
	.string	"rename_errno"
.LASF80:
	.string	"__daylight"
.LASF177:
	.string	"status"
.LASF211:
	.string	"/root/coreutils"
.LASF151:
	.string	"logical"
.LASF87:
	.string	"st_dev"
.LASF159:
	.string	"DEST_INFO_INITIAL_CAPACITY"
.LASF156:
	.string	"beware_hard_dir_link"
.LASF31:
	.string	"_IO_backup_base"
.LASF166:
	.string	"target_directory"
.LASF172:
	.string	"flags"
.LASF99:
	.string	"st_mtim"
.LASF194:
	.string	"convert_abs_rel"
.LASF137:
	.string	"error_message_count"
.LASF206:
	.string	"lc_messages"
.LASF161:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF53:
	.string	"_IO_wide_data"
.LASF184:
	.string	"force"
.LASF208:
	.string	"emit_mandatory_arg_note"
.LASF79:
	.string	"__tzname"
.LASF175:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF213:
	.string	"emit_ancillary_info"
.LASF82:
	.string	"tzname"
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
