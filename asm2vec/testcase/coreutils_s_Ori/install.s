	.file	"install.c"
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
	.type	ignorable_ctx_err, @function
ignorable_ctx_err:
.LFB48:
	.file 2 "src/selinux.h"
	.loc 2 28 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 29 25
	cmpl	$95, -4(%rbp)
	je	.L13
	.loc 2 29 25 is_stmt 0 discriminator 2
	cmpl	$61, -4(%rbp)
	jne	.L14
.L13:
	.loc 2 29 25 discriminator 3
	movl	$1, %eax
	jmp	.L15
.L14:
	.loc 2 29 25 discriminator 4
	movl	$0, %eax
.L15:
	.loc 2 29 25 discriminator 6
	andl	$1, %eax
	.loc 2 30 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	ignorable_ctx_err, .-ignorable_ctx_err
	.local	selinux_enabled
	.comm	selinux_enabled,4,4
	.data
	.type	use_default_selinux_context, @object
	.size	use_default_selinux_context, 1
use_default_selinux_context:
	.byte	1
	.local	owner_name
	.comm	owner_name,8,8
	.local	owner_id
	.comm	owner_id,4,4
	.local	group_name
	.comm	group_name,8,8
	.local	group_id
	.comm	group_id,4,4
	.align 4
	.type	mode, @object
	.size	mode, 4
mode:
	.long	493
	.align 4
	.type	dir_mode, @object
	.size	dir_mode, 4
dir_mode:
	.long	493
	.align 4
	.type	dir_mode_bits, @object
	.size	dir_mode_bits, 4
dir_mode_bits:
	.long	4095
	.local	copy_only_if_needed
	.comm	copy_only_if_needed,1,1
	.local	strip_files
	.comm	strip_files,1,1
	.local	dir_arg
	.comm	dir_arg,1,1
	.section	.rodata
.LC21:
	.string	"strip"
	.section	.data.rel.local,"aw"
	.align 8
	.type	strip_program, @object
	.size	strip_program, 8
strip_program:
	.quad	.LC21
	.section	.rodata
.LC22:
	.string	"backup"
.LC23:
	.string	"compare"
.LC24:
	.string	"context"
.LC25:
	.string	"directory"
.LC26:
	.string	"group"
.LC27:
	.string	"mode"
.LC28:
	.string	"no-target-directory"
.LC29:
	.string	"owner"
.LC30:
	.string	"preserve-timestamps"
.LC31:
	.string	"preserve-context"
.LC32:
	.string	"strip-program"
.LC33:
	.string	"suffix"
.LC34:
	.string	"target-directory"
.LC35:
	.string	"verbose"
.LC36:
	.string	"help"
.LC37:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 576
long_options:
	.quad	.LC22
	.long	2
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	67
	.zero	4
	.quad	.LC24
	.long	2
	.zero	4
	.quad	0
	.long	90
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC26
	.long	1
	.zero	4
	.quad	0
	.long	103
	.zero	4
	.quad	.LC27
	.long	1
	.zero	4
	.quad	0
	.long	109
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC29
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC32
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC33
	.long	1
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC34
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC35
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC36
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC37
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
	.type	have_same_content, @function
have_same_content:
.LFB59:
	.file 3 "src/install.c"
	.loc 3 143 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	.loc 3 149 9
	jmp	.L18
.L21:
	.loc 3 150 17
	movl	-24(%rbp), %eax
	movl	$4096, %edx
	leaq	b_buff.7311(%rip), %rsi
	movl	%eax, %edi
	call	full_read@PLT
	.loc 3 150 8
	cmpq	%rax, -8(%rbp)
	je	.L19
	.loc 3 151 14
	movl	$0, %eax
	jmp	.L20
.L19:
	.loc 3 153 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	b_buff.7311(%rip), %rsi
	leaq	a_buff.7310(%rip), %rdi
	call	memcmp@PLT
	.loc 3 153 8
	testl	%eax, %eax
	je	.L18
	.loc 3 154 14
	movl	$0, %eax
	jmp	.L20
.L18:
	.loc 3 149 22
	movl	-20(%rbp), %eax
	movl	$4096, %edx
	leaq	a_buff.7310(%rip), %rsi
	movl	%eax, %edi
	call	full_read@PLT
	movq	%rax, -8(%rbp)
	.loc 3 149 9
	cmpq	$0, -8(%rbp)
	jne	.L21
	.loc 3 157 15
	cmpq	$0, -8(%rbp)
	sete	%al
.L20:
	.loc 3 158 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	have_same_content, .-have_same_content
	.type	extra_mode, @function
extra_mode:
.LFB60:
	.loc 3 163 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 3 164 10
	movl	$61951, -4(%rbp)
	.loc 3 165 22
	movl	-4(%rbp), %eax
	notl	%eax
	.loc 3 165 20
	andl	-20(%rbp), %eax
	.loc 3 165 10
	testl	%eax, %eax
	setne	%al
	.loc 3 166 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	extra_mode, .-extra_mode
	.type	need_copy, @function
need_copy:
.LFB61:
	.loc 3 172 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	.loc 3 172 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 177 7
	movl	mode(%rip), %eax
	movl	%eax, %edi
	call	extra_mode
	.loc 3 177 6
	testb	%al, %al
	je	.L25
	.loc 3 178 12
	movl	$1, %eax
	jmp	.L48
.L25:
	.loc 3 181 7
	leaq	-304(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 3 181 6
	testl	%eax, %eax
	je	.L27
	.loc 3 182 12
	movl	$1, %eax
	jmp	.L48
.L27:
	.loc 3 184 7
	leaq	-160(%rbp), %rdx
	movq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 3 184 6
	testl	%eax, %eax
	je	.L28
	.loc 3 185 12
	movl	$1, %eax
	jmp	.L48
.L28:
	.loc 3 187 8
	movl	-280(%rbp), %eax
	andl	$61440, %eax
	.loc 3 187 6
	cmpl	$32768, %eax
	jne	.L29
	.loc 3 187 37 discriminator 1
	movl	-136(%rbp), %eax
	andl	$61440, %eax
	.loc 3 187 33 discriminator 1
	cmpl	$32768, %eax
	jne	.L29
	.loc 3 188 10
	movl	-280(%rbp), %eax
	movl	%eax, %edi
	call	extra_mode
	.loc 3 188 7
	testb	%al, %al
	jne	.L29
	.loc 3 188 41 discriminator 1
	movl	-136(%rbp), %eax
	movl	%eax, %edi
	call	extra_mode
	.loc 3 188 38 discriminator 1
	testb	%al, %al
	je	.L30
.L29:
	.loc 3 189 12
	movl	$1, %eax
	jmp	.L48
.L30:
	.loc 3 191 13
	movq	-256(%rbp), %rdx
	.loc 3 191 32
	movq	-112(%rbp), %rax
	.loc 3 191 6
	cmpq	%rax, %rdx
	jne	.L31
	.loc 3 192 18
	movl	-136(%rbp), %eax
	.loc 3 192 27
	andl	$4095, %eax
	movl	%eax, %edx
	.loc 3 192 46
	movl	mode(%rip), %eax
	.loc 3 192 7
	cmpl	%eax, %edx
	je	.L32
.L31:
	.loc 3 193 12
	movl	$1, %eax
	jmp	.L48
.L32:
	.loc 3 195 16
	movl	owner_id(%rip), %eax
	.loc 3 195 6
	cmpl	$-1, %eax
	jne	.L33
.LBB2:
	.loc 3 197 7
	call	__errno_location@PLT
	.loc 3 197 13
	movl	$0, (%rax)
	.loc 3 198 20
	call	getuid@PLT
	movl	%eax, -336(%rbp)
	.loc 3 199 10
	cmpl	$-1, -336(%rbp)
	jne	.L34
	.loc 3 199 34 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 199 31 discriminator 1
	testl	%eax, %eax
	jne	.L35
.L34:
	.loc 3 199 51 discriminator 3
	movl	-132(%rbp), %eax
	.loc 3 199 41 discriminator 3
	cmpl	%eax, -336(%rbp)
	je	.L36
.L35:
	.loc 3 200 16
	movl	$1, %eax
	jmp	.L48
.L33:
.LBE2:
	.loc 3 202 19
	movl	-132(%rbp), %edx
	.loc 3 202 27
	movl	owner_id(%rip), %eax
	.loc 3 202 11
	cmpl	%eax, %edx
	je	.L36
	.loc 3 203 12
	movl	$1, %eax
	jmp	.L48
.L36:
	.loc 3 205 16
	movl	group_id(%rip), %eax
	.loc 3 205 6
	cmpl	$-1, %eax
	jne	.L37
.LBB3:
	.loc 3 207 7
	call	__errno_location@PLT
	.loc 3 207 13
	movl	$0, (%rax)
	.loc 3 208 20
	call	getgid@PLT
	movl	%eax, -332(%rbp)
	.loc 3 209 10
	cmpl	$-1, -332(%rbp)
	jne	.L38
	.loc 3 209 34 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 209 31 discriminator 1
	testl	%eax, %eax
	jne	.L39
.L38:
	.loc 3 209 51 discriminator 3
	movl	-128(%rbp), %eax
	.loc 3 209 41 discriminator 3
	cmpl	%eax, -332(%rbp)
	je	.L40
.L39:
	.loc 3 210 16
	movl	$1, %eax
	jmp	.L48
.L37:
.LBE3:
	.loc 3 212 19
	movl	-128(%rbp), %edx
	.loc 3 212 27
	movl	group_id(%rip), %eax
	.loc 3 212 11
	cmpl	%eax, %edx
	je	.L40
	.loc 3 213 12
	movl	$1, %eax
	jmp	.L48
.L40:
	.loc 3 216 7
	movl	selinux_enabled(%rip), %eax
	.loc 3 216 6
	testl	%eax, %eax
	je	.L41
	.loc 3 216 27 discriminator 1
	movq	-376(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 3 216 23 discriminator 1
	testb	%al, %al
	je	.L41
.LBB4:
	.loc 3 218 13
	movq	$0, -320(%rbp)
	.loc 3 219 13
	movq	$0, -312(%rbp)
	.loc 3 222 11
	leaq	-320(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_getfilecon@PLT
	.loc 3 222 10
	cmpl	$-1, %eax
	jne	.L42
	.loc 3 223 16
	movl	$1, %eax
	jmp	.L48
.L42:
	.loc 3 225 11
	leaq	-312(%rbp), %rdx
	movq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_getfilecon@PLT
	.loc 3 225 10
	cmpl	$-1, %eax
	jne	.L44
	.loc 3 227 11
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 3 228 18
	movl	$1, %eax
	jmp	.L48
.L44:
	.loc 3 231 24
	movq	-312(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 231 22
	testl	%eax, %eax
	sete	%al
	movb	%al, -338(%rbp)
	.loc 3 233 7
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 3 234 7
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 3 235 11
	movzbl	-338(%rbp), %eax
	xorl	$1, %eax
	.loc 3 235 10
	testb	%al, %al
	je	.L41
	.loc 3 236 16
	movl	$1, %eax
	jmp	.L48
.L41:
.LBE4:
	.loc 3 240 12
	movq	-360(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -328(%rbp)
	.loc 3 241 6
	cmpl	$0, -328(%rbp)
	jns	.L46
	.loc 3 242 12
	movl	$1, %eax
	jmp	.L48
.L46:
	.loc 3 244 13
	movq	-368(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -324(%rbp)
	.loc 3 245 6
	cmpl	$0, -324(%rbp)
	jns	.L47
	.loc 3 247 7
	movl	-328(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 248 14
	movl	$1, %eax
	jmp	.L48
.L47:
	.loc 3 251 19
	movl	-324(%rbp), %edx
	movl	-328(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	have_same_content
	movb	%al, -337(%rbp)
	.loc 3 253 3
	movl	-328(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 254 3
	movl	-324(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 255 3
	movzbl	-337(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 3 255 10
	andl	$1, %eax
.L48:
	.loc 3 256 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L49
	.loc 3 256 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	need_copy, .-need_copy
	.type	cp_option_init, @function
cp_option_init:
.LFB62:
	.loc 3 260 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 3 261 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cp_options_default@PLT
	.loc 3 262 22
	movq	-8(%rbp), %rax
	movb	$1, 20(%rax)
	.loc 3 263 19
	movq	-8(%rbp), %rax
	movl	$1, 68(%rax)
	.loc 3 264 18
	movq	-8(%rbp), %rax
	movl	$4, 4(%rax)
	.loc 3 265 33
	movq	-8(%rbp), %rax
	movb	$1, 21(%rax)
	.loc 3 266 36
	movq	-8(%rbp), %rax
	movb	$0, 22(%rax)
	.loc 3 267 16
	movq	-8(%rbp), %rax
	movb	$0, 23(%rax)
	.loc 3 268 18
	movq	-8(%rbp), %rax
	movl	$4, 8(%rax)
	.loc 3 269 16
	movq	-8(%rbp), %rax
	movb	$0, 24(%rax)
	.loc 3 270 19
	movq	-8(%rbp), %rax
	movb	$1, 25(%rax)
	.loc 3 271 22
	movq	-8(%rbp), %rax
	movb	$0, 28(%rax)
	.loc 3 272 25
	movq	-8(%rbp), %rax
	movb	$0, 29(%rax)
	.loc 3 273 21
	movq	-8(%rbp), %rax
	movb	$0, 48(%rax)
	.loc 3 274 20
	movq	-8(%rbp), %rax
	movb	$0, 30(%rax)
	.loc 3 275 26
	movq	-8(%rbp), %rax
	movb	$0, 31(%rax)
	.loc 3 276 32
	movq	-8(%rbp), %rax
	movb	$0, 32(%rax)
	.loc 3 277 24
	movq	-8(%rbp), %rax
	movb	$0, 55(%rax)
	.loc 3 278 25
	movq	-8(%rbp), %rax
	movb	$1, 49(%rax)
	.loc 3 279 23
	movq	-8(%rbp), %rax
	movb	$0, 50(%rax)
	.loc 3 280 29
	movq	-8(%rbp), %rax
	movb	$0, 54(%rax)
	.loc 3 281 16
	movq	-8(%rbp), %rax
	movb	$0, 56(%rax)
	.loc 3 282 18
	movq	-8(%rbp), %rax
	movl	$2, 12(%rax)
	.loc 3 283 20
	movq	-8(%rbp), %rax
	movb	$0, 58(%rax)
	.loc 3 284 18
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	.loc 3 289 15
	movq	-8(%rbp), %rax
	movb	$1, 57(%rax)
	.loc 3 290 11
	movq	-8(%rbp), %rax
	movl	$384, 16(%rax)
	.loc 3 291 16
	movq	-8(%rbp), %rax
	movb	$0, 61(%rax)
	.loc 3 293 33
	movq	-8(%rbp), %rax
	movb	$0, 62(%rax)
	.loc 3 294 13
	movq	-8(%rbp), %rax
	movb	$0, 59(%rax)
	.loc 3 295 31
	movq	-8(%rbp), %rax
	movb	$0, 52(%rax)
	.loc 3 296 32
	movq	-8(%rbp), %rax
	movb	$0, 51(%rax)
	.loc 3 297 27
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 3 298 21
	movq	-8(%rbp), %rax
	movb	$0, 53(%rax)
	.loc 3 299 14
	movq	-8(%rbp), %rax
	movb	$0, 60(%rax)
	.loc 3 300 16
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	.loc 3 301 15
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	.loc 3 302 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	cp_option_init, .-cp_option_init
	.section	.rodata
	.align 8
.LC38:
	.string	"warning: security labeling handle failed"
	.text
	.type	get_labeling_handle, @function
get_labeling_handle:
.LFB63:
	.loc 3 306 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 3 309 7
	movzbl	initialized.7341(%rip), %eax
	xorl	$1, %eax
	.loc 3 309 6
	testb	%al, %al
	je	.L52
	.loc 3 311 19
	movb	$1, initialized.7341(%rip)
	.loc 3 312 13
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	selabel_open@PLT
	.loc 3 312 11
	movq	%rax, hnd.7342(%rip)
	.loc 3 313 11
	movq	hnd.7342(%rip), %rax
	.loc 3 313 10
	testq	%rax, %rax
	jne	.L52
	.loc 3 314 26
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 314 19
	call	__errno_location@PLT
	.loc 3 314 9
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L52:
	.loc 3 316 10
	movq	hnd.7342(%rip), %rax
	.loc 3 317 1
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	get_labeling_handle, .-get_labeling_handle
	.section	.rodata
	.align 8
.LC39:
	.string	"warning: %s: context lookup failed"
	.align 8
.LC40:
	.string	"warning: %s: failed to change context to %s"
	.text
	.type	setdefaultfilecon, @function
setdefaultfilecon:
.LFB64:
	.loc 3 325 1
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
	subq	$200, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -216(%rbp)
	.loc 3 325 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 3 327 9
	movq	$0, -208(%rbp)
	.loc 3 329 23
	movl	selinux_enabled(%rip), %eax
	.loc 3 329 6
	cmpl	$1, %eax
	jne	.L64
	.loc 3 334 7
	leaq	-192(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 3 334 6
	testl	%eax, %eax
	jne	.L65
	.loc 3 337 32
	call	get_labeling_handle
	movq	%rax, -200(%rbp)
	.loc 3 338 6
	cmpq	$0, -200(%rbp)
	je	.L66
	.loc 3 340 47
	movl	-168(%rbp), %eax
	.loc 3 340 7
	movl	%eax, %ecx
	movq	-216(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	selabel_lookup@PLT
	.loc 3 340 6
	testl	%eax, %eax
	je	.L59
	.loc 3 342 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 342 10
	cmpl	$2, %eax
	je	.L67
	.loc 3 342 51 discriminator 1
	call	__errno_location@PLT
	.loc 3 342 32 discriminator 1
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable_ctx_err
	.loc 3 342 30 discriminator 1
	xorl	$1, %eax
	.loc 3 342 27 discriminator 1
	testb	%al, %al
	je	.L67
	.loc 3 343 9
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 3 343 26
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 343 19
	call	__errno_location@PLT
	.loc 3 343 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 345 7
	jmp	.L67
.L59:
	.loc 3 348 7
	movq	-208(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lsetfilecon@PLT
	.loc 3 348 6
	testl	%eax, %eax
	jns	.L61
	.loc 3 348 43 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 348 40 discriminator 1
	cmpl	$95, %eax
	je	.L61
	.loc 3 349 5
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r13
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 3 350 12
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 349 15
	call	__errno_location@PLT
	.loc 3 349 5
	movl	(%rax), %eax
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L61:
	.loc 3 353 3
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	jmp	.L54
.L64:
	.loc 3 332 7
	nop
	jmp	.L54
.L65:
	.loc 3 335 5
	nop
	jmp	.L54
.L66:
	.loc 3 339 5
	nop
	jmp	.L54
.L67:
	.loc 3 345 7
	nop
.L54:
	.loc 3 354 1
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	setdefaultfilecon, .-setdefaultfilecon
	.section	.rodata
.LC41:
	.string	"failed to access %s"
.LC42:
	.string	"target %s is not a directory"
	.text
	.type	target_directory_operand, @function
target_directory_operand:
.LFB65:
	.loc 3 363 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	.loc 3 363 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 364 19
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, -192(%rbp)
	.loc 3 365 17
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -184(%rbp)
	.loc 3 366 38
	cmpq	$0, -184(%rbp)
	je	.L69
	.loc 3 366 41 discriminator 2
	movq	-184(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 3 366 38 discriminator 2
	cmpb	$47, %al
	jne	.L70
.L69:
	.loc 3 366 38 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L71
.L70:
	.loc 3 366 38 discriminator 4
	movl	$0, %eax
.L71:
	.loc 3 366 8 is_stmt 1 discriminator 6
	movb	%al, -198(%rbp)
	andb	$1, -198(%rbp)
	.loc 3 368 14 discriminator 6
	leaq	-176(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 3 368 40 discriminator 6
	testl	%eax, %eax
	je	.L72
	.loc 3 368 42 discriminator 1
	call	__errno_location@PLT
	.loc 3 368 40 discriminator 1
	movl	(%rax), %eax
	jmp	.L73
.L72:
	.loc 3 368 40 is_stmt 0 discriminator 2
	movl	$0, %eax
.L73:
	.loc 3 368 7 is_stmt 1 discriminator 4
	movl	%eax, -196(%rbp)
	.loc 3 369 24 discriminator 4
	cmpl	$0, -196(%rbp)
	jne	.L74
	.loc 3 369 27 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 369 24 discriminator 1
	cmpl	$16384, %eax
	jne	.L74
	.loc 3 369 24 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L75
.L74:
	.loc 3 369 24 discriminator 4
	movl	$0, %eax
.L75:
	.loc 3 369 8 is_stmt 1 discriminator 6
	movb	%al, -197(%rbp)
	andb	$1, -197(%rbp)
	.loc 3 370 6 discriminator 6
	cmpl	$0, -196(%rbp)
	je	.L76
	.loc 3 370 11 discriminator 1
	cmpl	$2, -196(%rbp)
	je	.L76
.LBB5:
	.loc 3 371 5
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	-196(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L76:
.LBE5:
	.loc 3 372 6
	movzbl	-197(%rbp), %eax
	cmpb	-198(%rbp), %al
	jnb	.L77
.LBB6:
	.loc 3 373 5
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	-196(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L77:
.LBE6:
	.loc 3 375 10
	movzbl	-197(%rbp), %eax
	.loc 3 376 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L79
	call	__stack_chk_fail@PLT
.L79:
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	target_directory_operand, .-target_directory_operand
	.section	.rodata
.LC43:
	.string	"creating directory %s"
	.text
	.type	announce_mkdir, @function
announce_mkdir:
.LFB66:
	.loc 3 381 1
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
	movq	%rsi, -48(%rbp)
	.loc 3 382 28
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 3 383 8
	movq	-24(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 3 383 6
	testb	%al, %al
	je	.L82
	.loc 3 384 5
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 384 27
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 3 384 5
	movq	stdout(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	prog_fprintf@PLT
.L82:
	.loc 3 385 1
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	announce_mkdir, .-announce_mkdir
	.section	.rodata
	.align 8
.LC44:
	.string	"failed to set default creation context for %s"
	.text
	.type	make_ancestor, @function
make_ancestor:
.LFB67:
	.loc 3 392 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 3 393 28
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 3 394 8
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	.loc 3 394 6
	testq	%rax, %rax
	je	.L84
	.loc 3 395 10
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	$16384, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	defaultcon@PLT
	.loc 3 395 7
	testl	%eax, %eax
	jns	.L84
	.loc 3 396 31
	call	__errno_location@PLT
	.loc 3 396 12
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable_ctx_err
	.loc 3 396 10
	xorl	$1, %eax
	.loc 3 396 7
	testb	%al, %al
	je	.L84
	.loc 3 397 5
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 397 22
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 397 15
	call	__errno_location@PLT
	.loc 3 397 5
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L84:
	.loc 3 400 11
	movq	-48(%rbp), %rax
	movl	$493, %esi
	movq	%rax, %rdi
	call	mkdir@PLT
	movl	%eax, -28(%rbp)
	.loc 3 401 6
	cmpl	$0, -28(%rbp)
	jne	.L85
	.loc 3 402 5
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	announce_mkdir
.L85:
	.loc 3 403 10
	movl	-28(%rbp), %eax
	.loc 3 404 1
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	make_ancestor, .-make_ancestor
	.section	.rodata
	.align 8
.LC45:
	.string	"failed to restore context for %s"
	.text
	.type	process_dir, @function
process_dir:
.LFB68:
	.loc 3 409 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 3 410 28
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 3 412 14
	movl	group_id(%rip), %r8d
	movl	owner_id(%rip), %edi
	movl	dir_mode_bits(%rip), %ecx
	movl	dir_mode(%rip), %r10d
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	$0
	pushq	%r8
	pushq	%rdi
	pushq	%rcx
	leaq	announce_mkdir(%rip), %r9
	movl	%r10d, %r8d
	movq	%rdx, %rcx
	leaq	make_ancestor(%rip), %rdx
	movq	%rax, %rdi
	call	make_dir_parents@PLT
	addq	$32, %rsp
	.loc 3 416 11
	xorl	$1, %eax
	.loc 3 412 7
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	.loc 3 423 6
	cmpl	$0, -28(%rbp)
	jne	.L88
	.loc 3 423 31 discriminator 1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	.loc 3 423 27 discriminator 1
	testq	%rax, %rax
	je	.L88
	.loc 3 425 50
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, %rcx
	.loc 3 425 13
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	restorecon@PLT
	.loc 3 425 11
	xorl	$1, %eax
	.loc 3 425 10
	testb	%al, %al
	je	.L88
	.loc 3 426 35
	call	__errno_location@PLT
	.loc 3 426 16
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable_ctx_err
	.loc 3 426 14
	xorl	$1, %eax
	.loc 3 426 11
	testb	%al, %al
	je	.L88
	.loc 3 427 9
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 427 26
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 427 19
	call	__errno_location@PLT
	.loc 3 427 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L88:
	.loc 3 431 10
	movl	-28(%rbp), %eax
	.loc 3 432 1
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	process_dir, .-process_dir
	.type	copy_file, @function
copy_file:
.LFB69:
	.loc 3 439 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 3 439 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 442 7
	movzbl	copy_only_if_needed(%rip), %eax
	.loc 3 442 6
	testb	%al, %al
	je	.L91
	.loc 3 442 31 discriminator 1
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	need_copy
	.loc 3 442 30 discriminator 1
	xorl	$1, %eax
	.loc 3 442 27 discriminator 1
	testb	%al, %al
	je	.L91
	.loc 3 443 12
	movl	$1, %eax
	jmp	.L93
.L91:
	.loc 3 451 10
	leaq	-9(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	copy@PLT
.L93:
	.loc 3 452 1 discriminator 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L94
	.loc 3 452 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	copy_file, .-copy_file
	.section	.rodata
.LC46:
	.string	"cannot change ownership of %s"
	.align 8
.LC47:
	.string	"cannot change permissions of %s"
	.text
	.type	change_attributes, @function
change_attributes:
.LFB70:
	.loc 3 459 1 is_stmt 1
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
	.loc 3 460 8
	movb	$0, -17(%rbp)
	.loc 3 473 19
	movl	owner_id(%rip), %eax
	.loc 3 473 6
	cmpl	$-1, %eax
	jne	.L96
	.loc 3 473 45 discriminator 1
	movl	group_id(%rip), %eax
	.loc 3 473 7 discriminator 1
	cmpl	$-1, %eax
	je	.L97
.L96:
	.loc 3 474 10
	movl	group_id(%rip), %edx
	movl	owner_id(%rip), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	lchown@PLT
	.loc 3 474 7
	testl	%eax, %eax
	je	.L97
	.loc 3 475 5
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 475 22
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 475 15
	call	__errno_location@PLT
	.loc 3 475 5
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L98
.L97:
	.loc 3 476 12
	movl	mode(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	chmod@PLT
	.loc 3 476 11
	testl	%eax, %eax
	je	.L99
	.loc 3 477 5
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 477 22
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 477 15
	call	__errno_location@PLT
	.loc 3 477 5
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L98
.L99:
	.loc 3 479 8
	movb	$1, -17(%rbp)
.L98:
	.loc 3 481 7
	movzbl	use_default_selinux_context(%rip), %eax
	.loc 3 481 6
	testb	%al, %al
	je	.L100
	.loc 3 482 5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	setdefaultfilecon
.L100:
	.loc 3 484 10
	movzbl	-17(%rbp), %eax
	.loc 3 485 1
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	change_attributes, .-change_attributes
	.section	.rodata
.LC48:
	.string	"cannot set timestamps for %s"
	.text
	.type	change_timestamps, @function
change_timestamps:
.LFB71:
	.loc 3 492 1
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
	.loc 3 492 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 494 17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 3 495 17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 3 497 7
	leaq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	utimens@PLT
	.loc 3 497 6
	testl	%eax, %eax
	je	.L103
	.loc 3 499 7
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 499 24
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 499 17
	call	__errno_location@PLT
	.loc 3 499 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 500 14
	movl	$0, %eax
	jmp	.L105
.L103:
	.loc 3 502 10
	movl	$1, %eax
.L105:
	.loc 3 503 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L106
	.loc 3 503 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L106:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	change_timestamps, .-change_timestamps
	.section	.rodata
.LC49:
	.string	"fork system call failed"
.LC50:
	.string	"cannot run %s"
.LC51:
	.string	"waiting for strip"
	.align 8
.LC52:
	.string	"strip process terminated abnormally"
	.text
	.type	strip, @function
strip:
.LFB72:
	.loc 3 513 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	.loc 3 513 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 515 8
	movb	$0, -33(%rbp)
	.loc 3 516 15
	call	fork@PLT
	movl	%eax, -28(%rbp)
	.loc 3 518 3
	cmpl	$-1, -28(%rbp)
	je	.L108
	cmpl	$0, -28(%rbp)
	je	.L109
	jmp	.L118
.L108:
.LBB7:
	.loc 3 521 24
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 521 17
	call	__errno_location@PLT
	.loc 3 521 7
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 522 7
	jmp	.L111
.L109:
	.loc 3 524 7
	movq	strip_program(%rip), %rsi
	movq	strip_program(%rip), %rax
	movq	-56(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	execlp@PLT
	.loc 3 525 7
	movq	strip_program(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC50(%rip), %rdi
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
.L118:
	.loc 3 527 11
	leaq	-32(%rbp), %rcx
	movl	-28(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	waitpid@PLT
	.loc 3 527 10
	testl	%eax, %eax
	jns	.L112
	.loc 3 528 26
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 528 19
	call	__errno_location@PLT
	.loc 3 528 9
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 533 7
	jmp	.L119
.L112:
	.loc 3 529 18
	movl	-32(%rbp), %eax
	andl	$127, %eax
	.loc 3 529 15
	testl	%eax, %eax
	jne	.L114
	.loc 3 529 40 discriminator 1
	movl	-32(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %eax
	.loc 3 529 37 discriminator 1
	testl	%eax, %eax
	je	.L115
.L114:
	.loc 3 530 22
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	.loc 3 530 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 533 7
	jmp	.L119
.L115:
	.loc 3 532 12
	movb	$1, -33(%rbp)
.L119:
	.loc 3 533 7
	nop
.L111:
.LBE7:
	.loc 3 535 10
	movzbl	-33(%rbp), %eax
	.loc 3 536 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L117
	call	__stack_chk_fail@PLT
.L117:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	strip, .-strip
	.section	.rodata
.LC53:
	.string	"invalid user %s"
.LC54:
	.string	"invalid group %s"
	.text
	.type	get_ids, @function
get_ids:
.LFB73:
	.loc 3 542 1
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
	.loc 3 542 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 546 7
	movq	owner_name(%rip), %rax
	.loc 3 546 6
	testq	%rax, %rax
	je	.L121
	.loc 3 548 12
	movq	owner_name(%rip), %rax
	movq	%rax, %rdi
	call	getpwnam@PLT
	movq	%rax, -40(%rbp)
	.loc 3 549 10
	cmpq	$0, -40(%rbp)
	jne	.L122
.LBB8:
	.loc 3 552 15
	movq	owner_name(%rip), %rax
	leaq	-48(%rbp), %rdx
	leaq	.LC19(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 3 552 14
	testl	%eax, %eax
	jne	.L123
	.loc 3 553 28
	movq	-48(%rbp), %rax
	.loc 3 553 15
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jbe	.L124
.L123:
.LBB9:
	.loc 3 554 13
	movq	owner_name(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L124:
.LBE9:
	.loc 3 556 20
	movq	-48(%rbp), %rax
	movl	%eax, owner_id(%rip)
.LBE8:
	jmp	.L125
.L122:
	.loc 3 559 22
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	.loc 3 559 18
	movl	%eax, owner_id(%rip)
.L125:
	.loc 3 560 7
	call	endpwent@PLT
	jmp	.L126
.L121:
	.loc 3 563 14
	movl	$-1, owner_id(%rip)
.L126:
	.loc 3 565 7
	movq	group_name(%rip), %rax
	.loc 3 565 6
	testq	%rax, %rax
	je	.L127
	.loc 3 567 12
	movq	group_name(%rip), %rax
	movq	%rax, %rdi
	call	getgrnam@PLT
	movq	%rax, -32(%rbp)
	.loc 3 568 10
	cmpq	$0, -32(%rbp)
	jne	.L128
.LBB10:
	.loc 3 571 15
	movq	group_name(%rip), %rax
	leaq	-48(%rbp), %rdx
	leaq	.LC19(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 3 571 14
	testl	%eax, %eax
	jne	.L129
	.loc 3 572 28
	movq	-48(%rbp), %rax
	.loc 3 572 15
	movl	$4294967295, %edx
	cmpq	%rdx, %rax
	jbe	.L130
.L129:
.LBB11:
	.loc 3 573 13
	movq	group_name(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L130:
.LBE11:
	.loc 3 575 20
	movq	-48(%rbp), %rax
	movl	%eax, group_id(%rip)
.LBE10:
	jmp	.L131
.L128:
	.loc 3 578 22
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	.loc 3 578 18
	movl	%eax, group_id(%rip)
.L131:
	.loc 3 579 7
	call	endgrent@PLT
	.loc 3 583 1
	jmp	.L134
.L127:
	.loc 3 582 14
	movl	$-1, group_id(%rip)
.L134:
	.loc 3 583 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L133
	call	__stack_chk_fail@PLT
.L133:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	get_ids, .-get_ids
	.section	.rodata
	.align 8
.LC55:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC56:
	.string	"Usage: %s [OPTION]... [-T] SOURCE DEST\n  or:  %s [OPTION]... SOURCE... DIRECTORY\n  or:  %s [OPTION]... -t DIRECTORY SOURCE...\n  or:  %s [OPTION]... -d DIRECTORY...\n"
	.align 8
.LC57:
	.ascii	"\nThis install program copies files (often just compiled) in"
	.ascii	"to destination\nlocations you choose.  If you want to downlo"
	.ascii	"ad and install a ready-to-use\npackage on a GNU/Linux system"
	.ascii	", you should instead be using a"
	.string	" package manager\nlike yum(1) or apt-get(1).\n\nIn the first three forms, copy SOURCE to DEST or multiple SOURCE(s) to\nthe existing DIRECTORY, while setting permission modes and owner/group.\nIn the 4th form, create all components of the given DIRECTORY(ies).\n"
	.align 8
.LC58:
	.ascii	"      --backup[=CONTROL]  make a backup of each existing des"
	.ascii	"tination file\n  -b                  like --backup but does "
	.ascii	"not accept an argument\n  -c                  (ignored)\n  -"
	.ascii	"C, --compare       compare each"
	.string	" pair of source and destination files, and\n                        in some cases, do not modify the destination at all\n  -d, --directory     treat all arguments as directory names; create all\n                        components of the specified directories\n"
	.align 8
.LC59:
	.ascii	"  -D                  create all leading components of DEST "
	.ascii	"except the last,\n                        or all components "
	.ascii	"of --target-directory,\n  "
	.string	"                      then copy SOURCE to DEST\n  -g, --group=GROUP   set group ownership, instead of process' current group\n  -m, --mode=MODE     set permission mode (as in chmod), instead of rwxr-xr-x\n  -o, --owner=OWNER   set ownership (super-user only)\n"
	.align 8
.LC60:
	.ascii	"  -p, --preserve-timestamps   apply access/modification time"
	.ascii	"s of SOURCE files\n                        to corresponding "
	.ascii	"destination files\n  -s, --strip         strip symbol tables"
	.ascii	"\n      --strip-program=PROGRAM  program used to strip binar"
	.ascii	"ies\n  -S, "
	.string	"--suffix=SUFFIX  override the usual backup suffix\n  -t, --target-directory=DIRECTORY  copy all SOURCE arguments into DIRECTORY\n  -T, --no-target-directory  treat DEST as a normal file\n  -v, --verbose       print the name of each directory as it is created\n"
	.align 8
.LC61:
	.ascii	"      --preserve-context  preserve SELinux security context\n"
	.ascii	"  -Z                      set "
	.string	"SELinux security context of destination\n                            file and each created directory to default type\n      --context[=CTX]     like -Z, or if CTX is specified then set the\n                            SELinux or SMACK security context to CTX\n"
	.align 8
.LC62:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC63:
	.string	"      --version  output version information and exit\n"
.LC64:
	.string	"install"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB74:
	.loc 3 587 1
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
	.loc 3 588 6
	cmpl	$0, -36(%rbp)
	je	.L136
	.loc 3 589 5
	movq	program_name(%rip), %rbx
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L137
.L136:
	.loc 3 592 7
	movq	program_name(%rip), %r14
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 3 592 15
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	.loc 3 592 7
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 599 7
	movq	stdout(%rip), %rbx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 611 7
	call	emit_mandatory_arg_note
	.loc 3 613 7
	movq	stdout(%rip), %rbx
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 622 7
	movq	stdout(%rip), %rbx
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 630 7
	movq	stdout(%rip), %rbx
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 640 7
	movq	stdout(%rip), %rbx
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 648 7
	movq	stdout(%rip), %rbx
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 649 7
	movq	stdout(%rip), %rbx
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 650 7
	call	emit_backup_suffix_note
	.loc 3 651 7
	leaq	.LC64(%rip), %rdi
	call	emit_ancillary_info
.L137:
	.loc 3 653 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE74:
	.size	usage, .-usage
	.section	.rodata
.LC65:
	.string	"cannot stat %s"
.LC66:
	.string	"cannot unlink %s"
	.text
	.type	install_file_in_file, @function
install_file_in_file:
.LFB75:
	.loc 3 663 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	.loc 3 663 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 665 8
	movq	-200(%rbp), %rax
	movzbl	31(%rax), %eax
	.loc 3 665 6
	testb	%al, %al
	je	.L139
	.loc 3 665 33 discriminator 1
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 3 665 30 discriminator 1
	testl	%eax, %eax
	je	.L139
	.loc 3 667 7
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 667 24
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 667 17
	call	__errno_location@PLT
	.loc 3 667 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 668 14
	movl	$0, %eax
	jmp	.L146
.L139:
	.loc 3 670 9
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_file
	.loc 3 670 7
	xorl	$1, %eax
	.loc 3 670 6
	testb	%al, %al
	je	.L141
	.loc 3 671 12
	movl	$0, %eax
	jmp	.L146
.L141:
	.loc 3 672 7
	movzbl	strip_files(%rip), %eax
	.loc 3 672 6
	testb	%al, %al
	je	.L142
	.loc 3 673 11
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	strip
	.loc 3 673 9
	xorl	$1, %eax
	.loc 3 673 8
	testb	%al, %al
	je	.L142
	.loc 3 675 13
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	.loc 3 675 12
	testl	%eax, %eax
	je	.L143
.LBB12:
	.loc 3 676 11
	movq	-192(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC66(%rip), %rdi
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
.L143:
.LBE12:
	.loc 3 677 16
	movl	$0, %eax
	jmp	.L146
.L142:
	.loc 3 679 8
	movq	-200(%rbp), %rax
	movzbl	31(%rax), %eax
	.loc 3 679 6
	testb	%al, %al
	je	.L144
	.loc 3 679 34 discriminator 1
	movzbl	strip_files(%rip), %eax
	.loc 3 679 30 discriminator 1
	testb	%al, %al
	jne	.L145
	.loc 3 679 51 discriminator 2
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 679 46 discriminator 2
	cmpl	$32768, %eax
	je	.L144
.L145:
	.loc 3 680 12
	movq	-192(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	change_timestamps
	.loc 3 680 10
	xorl	$1, %eax
	.loc 3 680 7
	testb	%al, %al
	je	.L144
	.loc 3 681 12
	movl	$0, %eax
	jmp	.L146
.L144:
	.loc 3 682 10
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	change_attributes
.L146:
	.loc 3 683 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L147
	.loc 3 683 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L147:
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	install_file_in_file, .-install_file_in_file
	.section	.rodata
.LC67:
	.string	"cannot create directory %s"
	.text
	.type	mkancesdirs_safe_wd, @function
mkancesdirs_safe_wd:
.LFB76:
	.loc 3 692 1 is_stmt 1
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, %eax
	movb	%al, -76(%rbp)
	.loc 3 692 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 695 5
	cmpb	$0, -76(%rbp)
	jne	.L149
	.loc 3 695 11 discriminator 2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 695 5 discriminator 2
	cmpb	$47, %al
	jne	.L149
	.loc 3 695 43 discriminator 4
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 695 8 discriminator 4
	cmpb	$47, %al
	je	.L150
.L149:
	.loc 3 695 5 discriminator 5
	movl	$1, %eax
	jmp	.L151
.L150:
	.loc 3 695 5 is_stmt 0 discriminator 6
	movl	$0, %eax
.L151:
	.loc 3 693 8 is_stmt 1
	movb	%al, -45(%rbp)
	andb	$1, -45(%rbp)
	.loc 3 696 7
	movl	$0, -44(%rbp)
	.loc 3 699 3
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	savewd_init@PLT
	.loc 3 700 7
	movzbl	-45(%rbp), %eax
	xorl	$1, %eax
	.loc 3 700 6
	testb	%al, %al
	je	.L152
	.loc 3 701 5
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	savewd_finish@PLT
.L152:
	.loc 3 703 7
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	leaq	make_ancestor(%rip), %rdx
	movq	%rax, %rdi
	call	mkancesdirs@PLT
	.loc 3 703 6
	cmpq	$-1, %rax
	jne	.L153
	.loc 3 705 7
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 705 24
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 705 17
	call	__errno_location@PLT
	.loc 3 705 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 706 14
	movl	$1, -44(%rbp)
.L153:
	.loc 3 709 6
	cmpb	$0, -45(%rbp)
	je	.L154
.LBB13:
	.loc 3 711 28
	movl	-44(%rbp), %edx
	leaq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	savewd_restore@PLT
	movl	%eax, -40(%rbp)
	.loc 3 712 27
	call	__errno_location@PLT
	.loc 3 712 11
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 3 713 7
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	savewd_finish@PLT
	.loc 3 714 10
	cmpl	$0, -40(%rbp)
	jle	.L155
	.loc 3 715 16
	movl	$0, %eax
	jmp	.L157
.L155:
	.loc 3 716 10
	cmpl	$0, -40(%rbp)
	jns	.L154
	.loc 3 716 30 discriminator 1
	cmpl	$0, -44(%rbp)
	jne	.L154
	.loc 3 718 11
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 718 36
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 718 11
	movl	-36(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 720 18
	movl	$0, %eax
	jmp	.L157
.L154:
.LBE13:
	.loc 3 723 17
	cmpl	$0, -44(%rbp)
	sete	%al
.L157:
	.loc 3 724 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L158
	.loc 3 724 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L158:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	mkancesdirs_safe_wd, .-mkancesdirs_safe_wd
	.type	install_file_in_file_parents, @function
install_file_in_file_parents:
.LFB77:
	.loc 3 732 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 3 733 11
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mkancesdirs_safe_wd
	.loc 3 734 11
	testb	%al, %al
	je	.L160
	.loc 3 734 14 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	install_file_in_file
	.loc 3 734 11 discriminator 1
	testb	%al, %al
	je	.L160
	.loc 3 734 11 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L161
.L160:
	.loc 3 734 11 discriminator 4
	movl	$0, %eax
.L161:
	.loc 3 734 11 discriminator 6
	andl	$1, %eax
	.loc 3 735 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	install_file_in_file_parents, .-install_file_in_file_parents
	.type	install_file_in_dir, @function
install_file_in_dir:
.LFB78:
	.loc 3 744 1
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
	movq	%rdx, -56(%rbp)
	movl	%ecx, %eax
	movb	%al, -60(%rbp)
	.loc 3 745 27
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, -16(%rbp)
	.loc 3 746 14
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -8(%rbp)
	.loc 3 747 8
	movb	$1, -17(%rbp)
	.loc 3 749 6
	cmpb	$0, -60(%rbp)
	je	.L164
	.loc 3 750 11
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	mkancesdirs_safe_wd
	movb	%al, -17(%rbp)
.L164:
	.loc 3 752 13
	cmpb	$0, -17(%rbp)
	je	.L165
	.loc 3 752 16 discriminator 1
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	install_file_in_file
	.loc 3 752 13 discriminator 1
	testb	%al, %al
	je	.L165
	.loc 3 752 13 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L166
.L165:
	.loc 3 752 13 discriminator 4
	movl	$0, %eax
.L166:
	.loc 3 752 7 is_stmt 1 discriminator 6
	movb	%al, -17(%rbp)
	andb	$1, -17(%rbp)
	.loc 3 753 3 discriminator 6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 754 10 discriminator 6
	movzbl	-17(%rbp), %eax
	.loc 3 755 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	install_file_in_dir, .-install_file_in_dir
	.section	.rodata
.LC68:
	.string	"/usr/local/share/locale"
	.align 8
.LC69:
	.string	"multiple target directories specified"
	.align 8
.LC70:
	.string	"WARNING: ignoring --preserve-context; this kernel is not SELinux-enabled"
	.align 8
.LC71:
	.string	"warning: ignoring --context; it requires an SELinux-enabled kernel"
.LC72:
	.string	"David MacKenzie"
.LC73:
	.string	"bcCsDdg:m:o:pt:TvS:Z"
	.align 8
.LC74:
	.string	"the strip option may not be used when installing a directory"
	.align 8
.LC75:
	.string	"target directory not allowed when installing a directory"
.LC76:
	.string	"backup type"
	.align 8
.LC77:
	.string	"cannot set target context and preserve it"
	.align 8
.LC78:
	.string	"failed to set default file creation context to %s"
.LC79:
	.string	"missing file operand"
	.align 8
.LC80:
	.string	"missing destination file operand after %s"
	.align 8
.LC81:
	.string	"cannot combine --target-directory (-t) and --no-target-directory (-T)"
.LC82:
	.string	"extra operand %s"
.LC83:
	.string	"invalid mode %s"
	.align 8
.LC84:
	.string	"WARNING: ignoring --strip-program option as -s option was not specified"
	.align 8
.LC85:
	.string	"options --compare (-C) and --preserve-timestamps are mutually exclusive"
	.align 8
.LC86:
	.string	"options --compare (-C) and --strip are mutually exclusive"
	.align 8
.LC87:
	.string	"the --compare (-C) option is ignored when you specify a mode with non-permission bits"
	.text
	.globl	main
	.type	main, @function
main:
.LFB79:
	.loc 3 759 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$352, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -356(%rbp)
	movq	%rsi, -368(%rbp)
	.loc 3 759 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 761 7
	movl	$0, -344(%rbp)
	.loc 3 762 15
	movq	$0, -328(%rbp)
	.loc 3 763 8
	movb	$0, -349(%rbp)
	.loc 3 764 15
	movq	$0, -320(%rbp)
	.loc 3 765 9
	movq	$0, -312(%rbp)
	.loc 3 766 8
	movb	$0, -348(%rbp)
	.loc 3 768 15
	movq	$0, -304(%rbp)
	.loc 3 769 8
	movb	$0, -347(%rbp)
	.loc 3 772 8
	movb	$0, -346(%rbp)
	.loc 3 773 15
	movq	$0, -296(%rbp)
	.loc 3 775 26
	call	is_selinux_enabled@PLT
	.loc 3 775 24
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	.loc 3 775 19
	movl	%eax, selinux_enabled(%rip)
	.loc 3 778 3
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 3 779 3
	leaq	.LC19(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 3 780 3
	leaq	.LC68(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 3 781 3
	leaq	.LC5(%rip), %rdi
	call	textdomain@PLT
	.loc 3 783 3
	movq	close_stdin@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 3 785 3
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	cp_option_init
	.loc 3 787 14
	movq	$0, owner_name(%rip)
	.loc 3 788 14
	movq	$0, group_name(%rip)
	.loc 3 789 15
	movb	$0, strip_files(%rip)
	.loc 3 790 11
	movb	$0, dir_arg(%rip)
	.loc 3 791 3
	movl	$0, %edi
	call	umask@PLT
	.loc 3 793 9
	jmp	.L169
.L198:
	.loc 3 796 7
	cmpl	$129, -332(%rbp)
	jg	.L170
	cmpl	$67, -332(%rbp)
	jge	.L171
	cmpl	$-131, -332(%rbp)
	je	.L172
	cmpl	$-130, -332(%rbp)
	je	.L173
	jmp	.L170
.L171:
	movl	-332(%rbp), %eax
	subl	$67, %eax
	cmpl	$62, %eax
	ja	.L170
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L175(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L175(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L175:
	.long	.L191-.L175
	.long	.L190-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L189-.L175
	.long	.L188-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L187-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L186-.L175
	.long	.L169-.L175
	.long	.L184-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L183-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L182-.L175
	.long	.L170-.L175
	.long	.L181-.L175
	.long	.L180-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L179-.L175
	.long	.L178-.L175
	.long	.L170-.L175
	.long	.L177-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L170-.L175
	.long	.L176-.L175
	.long	.L174-.L175
	.text
.L186:
	.loc 3 799 24
	movb	$1, -349(%rbp)
	.loc 3 800 15
	movq	optarg(%rip), %rax
	.loc 3 800 14
	testq	%rax, %rax
	je	.L169
	.loc 3 801 36
	movq	optarg(%rip), %rax
	movq	%rax, -312(%rbp)
	.loc 3 802 11
	jmp	.L169
.L191:
	.loc 3 806 31
	movb	$1, copy_only_if_needed(%rip)
	.loc 3 807 11
	jmp	.L169
.L179:
	.loc 3 809 23
	movb	$1, strip_files(%rip)
	.loc 3 812 11
	movl	$0, %esi
	movl	$17, %edi
	call	signal@PLT
	.loc 3 814 11
	jmp	.L169
.L174:
	.loc 3 816 27
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 3 816 25
	movq	%rax, strip_program(%rip)
	.loc 3 817 35
	movb	$1, -346(%rbp)
	.loc 3 818 11
	jmp	.L169
.L184:
	.loc 3 820 19
	movb	$1, dir_arg(%rip)
	.loc 3 821 11
	jmp	.L169
.L190:
	.loc 3 823 29
	movb	$1, -348(%rbp)
	.loc 3 824 11
	jmp	.L169
.L177:
	.loc 3 826 21
	movb	$1, -212(%rbp)
	.loc 3 827 11
	jmp	.L169
.L183:
	.loc 3 829 22
	movq	optarg(%rip), %rax
	movq	%rax, group_name(%rip)
	.loc 3 830 11
	jmp	.L169
.L182:
	.loc 3 832 26
	movq	optarg(%rip), %rax
	movq	%rax, -328(%rbp)
	.loc 3 833 11
	jmp	.L169
.L181:
	.loc 3 835 22
	movq	optarg(%rip), %rax
	movq	%rax, owner_name(%rip)
	.loc 3 836 11
	jmp	.L169
.L180:
	.loc 3 838 33
	movb	$1, -241(%rbp)
	.loc 3 839 11
	jmp	.L169
.L189:
	.loc 3 841 24
	movb	$1, -349(%rbp)
	.loc 3 842 25
	movq	optarg(%rip), %rax
	movq	%rax, -320(%rbp)
	.loc 3 843 11
	jmp	.L169
.L178:
	.loc 3 845 14
	cmpq	$0, -304(%rbp)
	je	.L193
.LBB14:
	.loc 3 846 13
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L193:
.LBE14:
	.loc 3 848 28
	movq	optarg(%rip), %rax
	movq	%rax, -304(%rbp)
	.loc 3 849 11
	jmp	.L169
.L188:
	.loc 3 851 31
	movb	$1, -347(%rbp)
	.loc 3 852 11
	jmp	.L169
.L176:
	.loc 3 855 15
	movl	selinux_enabled(%rip), %eax
	.loc 3 855 14
	testl	%eax, %eax
	jne	.L194
	.loc 3 857 28
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	.loc 3 857 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 859 15
	jmp	.L169
.L194:
	.loc 3 861 39
	movb	$1, -221(%rbp)
	.loc 3 862 39
	movb	$0, use_default_selinux_context(%rip)
	.loc 3 863 11
	jmp	.L169
.L187:
	.loc 3 865 15
	movl	selinux_enabled(%rip), %eax
	.loc 3 865 14
	testl	%eax, %eax
	je	.L195
	.loc 3 873 43
	movb	$0, use_default_selinux_context(%rip)
	.loc 3 875 19
	movq	optarg(%rip), %rax
	.loc 3 875 18
	testq	%rax, %rax
	je	.L196
	.loc 3 876 26
	movq	optarg(%rip), %rax
	movq	%rax, -296(%rbp)
	jmp	.L169
.L196:
	.loc 3 878 42
	call	get_labeling_handle
	.loc 3 878 40
	movq	%rax, -232(%rbp)
	jmp	.L169
.L195:
	.loc 3 880 20
	movq	optarg(%rip), %rax
	.loc 3 880 19
	testq	%rax, %rax
	je	.L169
	.loc 3 883 22
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	.loc 3 882 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 886 11
	jmp	.L169
.L173:
	.loc 3 887 9
	movl	$0, %edi
	call	usage
.L172:
	.loc 3 888 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC72(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L170:
	.loc 3 890 11
	movl	$1, %edi
	call	usage
.L169:
	.loc 3 793 18
	movq	-368(%rbp), %rsi
	movl	-356(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -332(%rbp)
	.loc 3 793 9
	cmpl	$-1, -332(%rbp)
	jne	.L198
	.loc 3 895 7
	movzbl	dir_arg(%rip), %eax
	.loc 3 895 6
	testb	%al, %al
	je	.L199
	.loc 3 895 15 discriminator 1
	movzbl	strip_files(%rip), %eax
	testb	%al, %al
	je	.L199
.LBB15:
	.loc 3 896 5
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L199:
.LBE15:
	.loc 3 898 7
	movzbl	dir_arg(%rip), %eax
	.loc 3 898 6
	testb	%al, %al
	je	.L200
	.loc 3 898 15 discriminator 1
	cmpq	$0, -304(%rbp)
	je	.L200
.LBB16:
	.loc 3 899 5
	leaq	.LC75(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L200:
.LBE16:
	.loc 3 902 6
	cmpq	$0, -304(%rbp)
	je	.L201
.LBB17:
	.loc 3 905 27
	leaq	-176(%rbp), %rdx
	movq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 3 905 12
	testl	%eax, %eax
	sete	%al
	movb	%al, -345(%rbp)
	.loc 3 906 11
	movzbl	-348(%rbp), %eax
	xorl	$1, %eax
	.loc 3 906 10
	testb	%al, %al
	je	.L202
	.loc 3 906 34 discriminator 1
	movzbl	-345(%rbp), %eax
	xorl	$1, %eax
	.loc 3 906 31 discriminator 1
	testb	%al, %al
	je	.L202
.LBB18:
	.loc 3 907 9
	movq	-304(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC41(%rip), %rdi
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
.L202:
.LBE18:
	.loc 3 909 10
	cmpb	$0, -345(%rbp)
	je	.L201
	.loc 3 909 29 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 909 24 discriminator 1
	cmpl	$16384, %eax
	je	.L201
.LBB19:
	.loc 3 910 9
	movq	-304(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L201:
.LBE19:
.LBE17:
	.loc 3 917 20
	cmpb	$0, -349(%rbp)
	je	.L204
	.loc 3 915 36
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 915 22
	movq	-312(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xget_version@PLT
	jmp	.L205
.L204:
	.loc 3 917 20 discriminator 1
	movl	$0, %eax
.L205:
	.loc 3 914 17
	movl	%eax, -272(%rbp)
	.loc 3 918 3
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	set_simple_backup_suffix@PLT
	.loc 3 920 8
	movzbl	-221(%rbp), %eax
	.loc 3 920 6
	testb	%al, %al
	je	.L206
	.loc 3 920 40 discriminator 1
	movq	-232(%rbp), %rax
	.loc 3 920 35 discriminator 1
	testq	%rax, %rax
	jne	.L207
	.loc 3 920 62 discriminator 2
	cmpq	$0, -296(%rbp)
	je	.L206
.L207:
.LBB20:
	.loc 3 921 5
	leaq	.LC77(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L206:
.LBE20:
	.loc 3 924 6
	cmpq	$0, -296(%rbp)
	je	.L208
	.loc 3 924 19 discriminator 1
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	setfscreatecon@PLT
	.loc 3 924 16 discriminator 1
	testl	%eax, %eax
	jns	.L208
.LBB21:
	.loc 3 925 5
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC78(%rip), %rdi
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
.L208:
.LBE21:
	.loc 3 929 18
	movl	optind(%rip), %eax
	.loc 3 929 11
	movl	-356(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -340(%rbp)
	.loc 3 930 15
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 3 930 8
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -288(%rbp)
	.loc 3 932 21
	movzbl	dir_arg(%rip), %eax
	xorl	$1, %eax
	.loc 3 932 18
	testb	%al, %al
	je	.L209
	.loc 3 932 18 is_stmt 0 discriminator 1
	cmpq	$0, -304(%rbp)
	jne	.L209
	.loc 3 932 18 discriminator 3
	movl	$1, %eax
	jmp	.L210
.L209:
	.loc 3 932 18 discriminator 4
	movl	$0, %eax
.L210:
	.loc 3 932 6 is_stmt 1 discriminator 6
	cmpl	-340(%rbp), %eax
	jl	.L211
	.loc 3 934 10
	cmpl	$0, -340(%rbp)
	jg	.L212
	.loc 3 935 22
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	.loc 3 935 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L213
.L212:
	.loc 3 937 9
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 937 22
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	.loc 3 937 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L213:
	.loc 3 939 7
	movl	$1, %edi
	call	usage
.L211:
	.loc 3 942 6
	cmpb	$0, -347(%rbp)
	je	.L214
	.loc 3 944 10
	cmpq	$0, -304(%rbp)
	je	.L215
.LBB22:
	.loc 3 945 9
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L215:
.LBE22:
	.loc 3 948 10
	cmpl	$2, -340(%rbp)
	jle	.L216
	.loc 3 950 47
	movq	-288(%rbp), %rax
	addq	$16, %rax
	.loc 3 950 11
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 950 24
	leaq	.LC82(%rip), %rdi
	call	gettext@PLT
	.loc 3 950 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 951 11
	movl	$1, %edi
	call	usage
.L214:
	.loc 3 954 15
	movzbl	dir_arg(%rip), %eax
	xorl	$1, %eax
	.loc 3 954 11
	testb	%al, %al
	je	.L216
	.loc 3 954 12 discriminator 1
	cmpq	$0, -304(%rbp)
	jne	.L216
	.loc 3 956 10
	cmpl	$1, -340(%rbp)
	jle	.L217
	.loc 3 956 57 discriminator 1
	movl	-340(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 956 27 discriminator 1
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	target_directory_operand
	.loc 3 956 24 discriminator 1
	testb	%al, %al
	je	.L217
	.loc 3 957 26
	subl	$1, -340(%rbp)
	.loc 3 957 33
	movl	-340(%rbp), %eax
	cltq
	.loc 3 957 32
	leaq	0(,%rax,8), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 957 26
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	jmp	.L216
.L217:
	.loc 3 958 15
	cmpl	$2, -340(%rbp)
	jle	.L216
.LBB23:
	.loc 3 959 9
	movl	-340(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L216:
.LBE23:
	.loc 3 963 6
	cmpq	$0, -328(%rbp)
	je	.L218
.LBB24:
	.loc 3 965 36
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	mode_compile@PLT
	movq	%rax, -280(%rbp)
	.loc 3 966 10
	cmpq	$0, -280(%rbp)
	jne	.L219
.LBB25:
	.loc 3 967 9
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC83(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L219:
.LBE25:
	.loc 3 968 14
	movq	-280(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	mode_adjust@PLT
	.loc 3 968 12
	movl	%eax, mode(%rip)
	.loc 3 969 18
	movq	-280(%rbp), %rax
	leaq	dir_mode_bits(%rip), %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	mode_adjust@PLT
	.loc 3 969 16
	movl	%eax, dir_mode(%rip)
	.loc 3 970 7
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L218:
.LBE24:
	.loc 3 973 6
	cmpb	$0, -346(%rbp)
	je	.L220
	.loc 3 973 34 discriminator 1
	movzbl	strip_files(%rip), %eax
	xorl	$1, %eax
	.loc 3 973 31 discriminator 1
	testb	%al, %al
	je	.L220
	.loc 3 974 18
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	.loc 3 974 5
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L220:
	.loc 3 977 7
	movzbl	copy_only_if_needed(%rip), %eax
	.loc 3 977 6
	testb	%al, %al
	je	.L221
	.loc 3 977 31 discriminator 1
	movzbl	-241(%rbp), %eax
	.loc 3 977 27 discriminator 1
	testb	%al, %al
	je	.L221
	.loc 3 979 20
	leaq	.LC85(%rip), %rdi
	call	gettext@PLT
	.loc 3 979 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 981 7
	movl	$1, %edi
	call	usage
.L221:
	.loc 3 984 7
	movzbl	copy_only_if_needed(%rip), %eax
	.loc 3 984 6
	testb	%al, %al
	je	.L222
	.loc 3 984 27 discriminator 1
	movzbl	strip_files(%rip), %eax
	testb	%al, %al
	je	.L222
	.loc 3 986 20
	leaq	.LC86(%rip), %rdi
	call	gettext@PLT
	.loc 3 986 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 988 7
	movl	$1, %edi
	call	usage
.L222:
	.loc 3 991 7
	movzbl	copy_only_if_needed(%rip), %eax
	.loc 3 991 6
	testb	%al, %al
	je	.L223
	.loc 3 991 30 discriminator 1
	movl	mode(%rip), %eax
	movl	%eax, %edi
	call	extra_mode
	.loc 3 991 27 discriminator 1
	testb	%al, %al
	je	.L223
	.loc 3 992 18
	leaq	.LC87(%rip), %rdi
	call	gettext@PLT
	.loc 3 992 5
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L223:
	.loc 3 995 3
	call	get_ids
	.loc 3 997 7
	movzbl	dir_arg(%rip), %eax
	.loc 3 997 6
	testb	%al, %al
	je	.L224
	.loc 3 998 19
	leaq	-272(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movl	-340(%rbp), %eax
	movq	%rdx, %rcx
	leaq	process_dir(%rip), %rdx
	movl	%eax, %edi
	call	savewd_process_files@PLT
	movl	%eax, -344(%rbp)
	jmp	.L225
.L224:
	.loc 3 1003 7
	call	hash_init@PLT
	.loc 3 1005 10
	cmpq	$0, -304(%rbp)
	jne	.L226
	.loc 3 1007 15
	cmpb	$0, -348(%rbp)
	je	.L227
	.loc 3 1008 63 discriminator 1
	movq	-288(%rbp), %rax
	addq	$8, %rax
	.loc 3 1008 20 discriminator 1
	movq	(%rax), %rcx
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	leaq	-272(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	install_file_in_file_parents
	.loc 3 1007 15 discriminator 1
	xorl	$1, %eax
	jmp	.L228
.L227:
	.loc 3 1009 55 discriminator 2
	movq	-288(%rbp), %rax
	addq	$8, %rax
	.loc 3 1009 20 discriminator 2
	movq	(%rax), %rcx
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	leaq	-272(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	install_file_in_file
	.loc 3 1007 15 discriminator 2
	xorl	$1, %eax
.L228:
	.loc 3 1007 14 discriminator 4
	testb	%al, %al
	je	.L225
	.loc 3 1010 25
	movl	$1, -344(%rbp)
	jmp	.L225
.L226:
.LBB26:
	.loc 3 1015 11
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	dest_info_init@PLT
	.loc 3 1016 18
	movl	$0, -336(%rbp)
	.loc 3 1016 11
	jmp	.L229
.L233:
	.loc 3 1018 47
	cmpl	$0, -336(%rbp)
	jne	.L230
	.loc 3 1018 47 is_stmt 0 discriminator 1
	cmpb	$0, -348(%rbp)
	je	.L230
	.loc 3 1018 47 discriminator 3
	movl	$1, %eax
	jmp	.L231
.L230:
	.loc 3 1018 47 discriminator 4
	movl	$0, %eax
.L231:
	.loc 3 1018 47 discriminator 6
	andl	$1, %eax
	.loc 3 1017 19 is_stmt 1 discriminator 6
	movzbl	%al, %ecx
	.loc 3 1017 44 discriminator 6
	movl	-336(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1017 19 discriminator 6
	movq	(%rax), %rax
	leaq	-272(%rbp), %rdx
	movq	-304(%rbp), %rsi
	movq	%rax, %rdi
	call	install_file_in_dir
	.loc 3 1017 17 discriminator 6
	xorl	$1, %eax
	.loc 3 1017 16 discriminator 6
	testb	%al, %al
	je	.L232
	.loc 3 1019 27
	movl	$1, -344(%rbp)
.L232:
	.loc 3 1016 37 discriminator 2
	addl	$1, -336(%rbp)
.L229:
	.loc 3 1016 11 discriminator 1
	movl	-336(%rbp), %eax
	cmpl	-340(%rbp), %eax
	jl	.L233
.L225:
.LBE26:
	.loc 3 1023 10
	movl	-344(%rbp), %eax
	.loc 3 1024 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L235
	call	__stack_chk_fail@PLT
.L235:
	addq	$352, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	main, .-main
	.local	b_buff.7311
	.comm	b_buff.7311,4096,32
	.local	a_buff.7310
	.comm	a_buff.7310,4096,32
	.local	initialized.7341
	.comm	initialized.7341,1,1
	.local	hnd.7342
	.comm	hnd.7342,8,8
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 13 "./lib/sys/select.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 16 "/usr/include/signal.h"
	.file 17 "/usr/include/pwd.h"
	.file 18 "/usr/include/grp.h"
	.file 19 "/usr/include/stdint.h"
	.file 20 "/usr/include/time.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 22 "/usr/include/unistd.h"
	.file 23 "/usr/include/errno.h"
	.file 24 "src/version.h"
	.file 25 "./lib/exitfail.h"
	.file 26 "./lib/timespec.h"
	.file 27 "./lib/version-etc.h"
	.file 28 "./lib/progname.h"
	.file 29 "./lib/quotearg.h"
	.file 30 "./lib/backupfile.h"
	.file 31 "./lib/error.h"
	.file 32 "./lib/hash.h"
	.file 33 "src/copy.h"
	.file 34 "./lib/quote.h"
	.file 35 "./lib/savewd.h"
	.file 36 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1aa8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF340
	.byte	0xc
	.long	.LASF341
	.long	.LASF342
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
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF14
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF15
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x9a
	.byte	0x19
	.long	0x65
	.uleb128 0x2
	.long	.LASF18
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.byte	0xae
	.byte	0x1d
	.long	0x71
	.uleb128 0x2
	.long	.LASF20
	.byte	0x5
	.byte	0xb3
	.byte	0x1c
	.long	0x71
	.uleb128 0x2
	.long	.LASF21
	.byte	0x5
	.byte	0xc4
	.byte	0x21
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x126
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF22
	.uleb128 0x8
	.long	0x126
	.uleb128 0x9
	.long	.LASF70
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x2b9
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x120
	.byte	0x8
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x120
	.byte	0x10
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x120
	.byte	0x18
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x120
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x120
	.byte	0x28
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x120
	.byte	0x30
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x120
	.byte	0x38
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x120
	.byte	0x40
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x120
	.byte	0x48
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x120
	.byte	0x50
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x120
	.byte	0x58
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x2d2
	.byte	0x60
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x2d8
	.byte	0x68
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0xcc
	.byte	0x78
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x2de
	.byte	0x83
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x2ee
	.byte	0x88
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xd8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x2f9
	.byte	0x98
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x304
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x2d8
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF50
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF51
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x30a
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x132
	.uleb128 0xb
	.long	.LASF343
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2cd
	.uleb128 0x7
	.byte	0x8
	.long	0x132
	.uleb128 0xd
	.long	0x126
	.long	0x2ee
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2c5
	.uleb128 0xc
	.long	.LASF54
	.uleb128 0x7
	.byte	0x8
	.long	0x2f4
	.uleb128 0xc
	.long	.LASF55
	.uleb128 0x7
	.byte	0x8
	.long	0x2ff
	.uleb128 0xd
	.long	0x126
	.long	0x31a
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x12d
	.uleb128 0x8
	.long	0x31a
	.uleb128 0xf
	.long	.LASF56
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x331
	.uleb128 0x7
	.byte	0x8
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF57
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x331
	.uleb128 0xf
	.long	.LASF58
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x331
	.uleb128 0xf
	.long	.LASF59
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x320
	.long	0x366
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x35b
	.uleb128 0xf
	.long	.LASF60
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x366
	.uleb128 0xf
	.long	.LASF61
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF62
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x366
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF63
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF64
	.uleb128 0x2
	.long	.LASF65
	.byte	0xa
	.byte	0x40
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.long	.LASF66
	.byte	0xa
	.byte	0x45
	.byte	0x12
	.long	0xb4
	.uleb128 0x2
	.long	.LASF67
	.byte	0xa
	.byte	0x4f
	.byte	0x11
	.long	0x90
	.uleb128 0x2
	.long	.LASF68
	.byte	0xa
	.byte	0x61
	.byte	0x11
	.long	0xe4
	.uleb128 0x2
	.long	.LASF69
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0xf0
	.uleb128 0x9
	.long	.LASF71
	.byte	0x10
	.byte	0xc
	.byte	0xa
	.byte	0x8
	.long	0x401
	.uleb128 0xa
	.long	.LASF72
	.byte	0xc
	.byte	0xc
	.byte	0xc
	.long	0xf0
	.byte	0
	.uleb128 0xa
	.long	.LASF73
	.byte	0xc
	.byte	0x10
	.byte	0x15
	.long	0x114
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF74
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF75
	.uleb128 0xf
	.long	.LASF76
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0x120
	.uleb128 0xf
	.long	.LASF77
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF78
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF79
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF80
	.byte	0x20
	.byte	0xf
	.byte	0x32
	.byte	0x8
	.long	0x487
	.uleb128 0xa
	.long	.LASF81
	.byte	0xf
	.byte	0x34
	.byte	0xf
	.long	0x31a
	.byte	0
	.uleb128 0xa
	.long	.LASF82
	.byte	0xf
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF83
	.byte	0xf
	.byte	0x38
	.byte	0x8
	.long	0x48c
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xf
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x445
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x2
	.long	.LASF84
	.byte	0x10
	.byte	0x48
	.byte	0x10
	.long	0x49e
	.uleb128 0x7
	.byte	0x8
	.long	0x4a4
	.uleb128 0x13
	.long	0x4af
	.uleb128 0x14
	.long	0x65
	.byte	0
	.uleb128 0x15
	.uleb128 0x7
	.byte	0x8
	.long	0x4af
	.uleb128 0xd
	.long	0x320
	.long	0x4c6
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x4b6
	.uleb128 0x11
	.long	.LASF85
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x4c6
	.uleb128 0x11
	.long	.LASF86
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x4c6
	.uleb128 0x9
	.long	.LASF87
	.byte	0x30
	.byte	0x11
	.byte	0x31
	.byte	0x8
	.long	0x54e
	.uleb128 0xa
	.long	.LASF88
	.byte	0x11
	.byte	0x33
	.byte	0x9
	.long	0x120
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x11
	.byte	0x34
	.byte	0x9
	.long	0x120
	.byte	0x8
	.uleb128 0xa
	.long	.LASF90
	.byte	0x11
	.byte	0x36
	.byte	0xb
	.long	0x90
	.byte	0x10
	.uleb128 0xa
	.long	.LASF91
	.byte	0x11
	.byte	0x37
	.byte	0xb
	.long	0x9c
	.byte	0x14
	.uleb128 0xa
	.long	.LASF92
	.byte	0x11
	.byte	0x38
	.byte	0x9
	.long	0x120
	.byte	0x18
	.uleb128 0xa
	.long	.LASF93
	.byte	0x11
	.byte	0x39
	.byte	0x9
	.long	0x120
	.byte	0x20
	.uleb128 0xa
	.long	.LASF94
	.byte	0x11
	.byte	0x3a
	.byte	0x9
	.long	0x120
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.long	.LASF95
	.byte	0x20
	.byte	0x12
	.byte	0x2a
	.byte	0x8
	.long	0x590
	.uleb128 0xa
	.long	.LASF96
	.byte	0x12
	.byte	0x2c
	.byte	0xb
	.long	0x120
	.byte	0
	.uleb128 0xa
	.long	.LASF97
	.byte	0x12
	.byte	0x2d
	.byte	0xb
	.long	0x120
	.byte	0x8
	.uleb128 0xa
	.long	.LASF98
	.byte	0x12
	.byte	0x2e
	.byte	0xd
	.long	0x9c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF99
	.byte	0x12
	.byte	0x2f
	.byte	0xc
	.long	0x590
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x120
	.uleb128 0x2
	.long	.LASF100
	.byte	0x13
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0xd
	.long	0x120
	.long	0x5b2
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF101
	.byte	0x14
	.byte	0x9f
	.byte	0xe
	.long	0x5a2
	.uleb128 0xf
	.long	.LASF102
	.byte	0x14
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF103
	.byte	0x14
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF104
	.byte	0x14
	.byte	0xa6
	.byte	0xe
	.long	0x5a2
	.uleb128 0xf
	.long	.LASF105
	.byte	0x14
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF106
	.byte	0x14
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF107
	.byte	0x14
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF108
	.byte	0x90
	.byte	0x15
	.byte	0x2e
	.byte	0x8
	.long	0x6d8
	.uleb128 0xa
	.long	.LASF109
	.byte	0x15
	.byte	0x30
	.byte	0xd
	.long	0x84
	.byte	0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x15
	.byte	0x35
	.byte	0xd
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF111
	.byte	0x15
	.byte	0x3d
	.byte	0xf
	.long	0xc0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF112
	.byte	0x15
	.byte	0x3e
	.byte	0xe
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF113
	.byte	0x15
	.byte	0x40
	.byte	0xd
	.long	0x90
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF114
	.byte	0x15
	.byte	0x41
	.byte	0xd
	.long	0x9c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF115
	.byte	0x15
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF116
	.byte	0x15
	.byte	0x45
	.byte	0xd
	.long	0x84
	.byte	0x28
	.uleb128 0xa
	.long	.LASF117
	.byte	0x15
	.byte	0x4a
	.byte	0xd
	.long	0xcc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF118
	.byte	0x15
	.byte	0x4e
	.byte	0x11
	.long	0xfc
	.byte	0x38
	.uleb128 0xa
	.long	.LASF119
	.byte	0x15
	.byte	0x50
	.byte	0x10
	.long	0x108
	.byte	0x40
	.uleb128 0xa
	.long	.LASF120
	.byte	0x15
	.byte	0x5b
	.byte	0x15
	.long	0x3d9
	.byte	0x48
	.uleb128 0xa
	.long	.LASF121
	.byte	0x15
	.byte	0x5c
	.byte	0x15
	.long	0x3d9
	.byte	0x58
	.uleb128 0xa
	.long	.LASF122
	.byte	0x15
	.byte	0x5d
	.byte	0x15
	.long	0x3d9
	.byte	0x68
	.uleb128 0xa
	.long	.LASF123
	.byte	0x15
	.byte	0x6a
	.byte	0x17
	.long	0x6dd
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x607
	.uleb128 0xd
	.long	0x114
	.long	0x6ed
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.long	.LASF124
	.byte	0x16
	.value	0x21f
	.byte	0xf
	.long	0x590
	.uleb128 0x11
	.long	.LASF125
	.byte	0x16
	.value	0x221
	.byte	0xf
	.long	0x590
	.uleb128 0xf
	.long	.LASF126
	.byte	0x17
	.byte	0x2d
	.byte	0xe
	.long	0x120
	.uleb128 0xf
	.long	.LASF127
	.byte	0x17
	.byte	0x2e
	.byte	0xe
	.long	0x120
	.uleb128 0xf
	.long	.LASF128
	.byte	0x18
	.byte	0x1
	.byte	0x14
	.long	0x31a
	.uleb128 0xf
	.long	.LASF129
	.byte	0x19
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x29
	.byte	0x6
	.long	0x74f
	.uleb128 0x17
	.long	.LASF130
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x2a
	.byte	0x6
	.long	0x764
	.uleb128 0x18
	.long	.LASF131
	.byte	0x9
	.byte	0
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x782
	.uleb128 0x1a
	.long	.LASF132
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF133
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x12d
	.long	0x78d
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x782
	.uleb128 0xf
	.long	.LASF134
	.byte	0x1b
	.byte	0x19
	.byte	0x13
	.long	0x78d
	.uleb128 0xf
	.long	.LASF135
	.byte	0x1c
	.byte	0x20
	.byte	0x14
	.long	0x31a
	.uleb128 0x1b
	.long	.LASF149
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1d
	.byte	0x20
	.byte	0x6
	.long	0x7ff
	.uleb128 0x18
	.long	.LASF136
	.byte	0
	.uleb128 0x18
	.long	.LASF137
	.byte	0x1
	.uleb128 0x18
	.long	.LASF138
	.byte	0x2
	.uleb128 0x18
	.long	.LASF139
	.byte	0x3
	.uleb128 0x18
	.long	.LASF140
	.byte	0x4
	.uleb128 0x18
	.long	.LASF141
	.byte	0x5
	.uleb128 0x18
	.long	.LASF142
	.byte	0x6
	.uleb128 0x18
	.long	.LASF143
	.byte	0x7
	.uleb128 0x18
	.long	.LASF144
	.byte	0x8
	.uleb128 0x18
	.long	.LASF145
	.byte	0x9
	.uleb128 0x18
	.long	.LASF146
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x7aa
	.uleb128 0x11
	.long	.LASF147
	.byte	0x1d
	.value	0x10b
	.byte	0x1a
	.long	0x366
	.uleb128 0xd
	.long	0x7ff
	.long	0x81c
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x811
	.uleb128 0x11
	.long	.LASF148
	.byte	0x1d
	.value	0x10c
	.byte	0x21
	.long	0x81c
	.uleb128 0x1b
	.long	.LASF150
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1e
	.byte	0x1e
	.byte	0x6
	.long	0x859
	.uleb128 0x18
	.long	.LASF151
	.byte	0
	.uleb128 0x18
	.long	.LASF152
	.byte	0x1
	.uleb128 0x18
	.long	.LASF153
	.byte	0x2
	.uleb128 0x18
	.long	.LASF154
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF155
	.byte	0x1e
	.byte	0x31
	.byte	0x14
	.long	0x31a
	.uleb128 0xf
	.long	.LASF156
	.byte	0x1f
	.byte	0x32
	.byte	0xf
	.long	0x4b0
	.uleb128 0xf
	.long	.LASF157
	.byte	0x1f
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF158
	.byte	0x1f
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF159
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF160
	.uleb128 0x2
	.long	.LASF161
	.byte	0x20
	.byte	0x32
	.byte	0x1b
	.long	0x8a3
	.uleb128 0xc
	.long	.LASF162
	.uleb128 0x1b
	.long	.LASF163
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x21
	.byte	0x1c
	.byte	0x6
	.long	0x8d3
	.uleb128 0x18
	.long	.LASF164
	.byte	0
	.uleb128 0x18
	.long	.LASF165
	.byte	0x1
	.uleb128 0x18
	.long	.LASF166
	.byte	0x2
	.uleb128 0x18
	.long	.LASF167
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.long	.LASF168
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x21
	.byte	0x31
	.byte	0x6
	.long	0x8f8
	.uleb128 0x18
	.long	.LASF169
	.byte	0
	.uleb128 0x18
	.long	.LASF170
	.byte	0x1
	.uleb128 0x18
	.long	.LASF171
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.long	.LASF172
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x21
	.byte	0x3e
	.byte	0x6
	.long	0x923
	.uleb128 0x18
	.long	.LASF173
	.byte	0x1
	.uleb128 0x18
	.long	.LASF174
	.byte	0x2
	.uleb128 0x18
	.long	.LASF175
	.byte	0x3
	.uleb128 0x18
	.long	.LASF176
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x21
	.byte	0x47
	.byte	0x6
	.long	0x94e
	.uleb128 0x18
	.long	.LASF178
	.byte	0x1
	.uleb128 0x18
	.long	.LASF179
	.byte	0x2
	.uleb128 0x18
	.long	.LASF180
	.byte	0x3
	.uleb128 0x18
	.long	.LASF181
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF182
	.byte	0x58
	.byte	0x21
	.byte	0x64
	.byte	0x8
	.long	0xb5c
	.uleb128 0xa
	.long	.LASF150
	.byte	0x21
	.byte	0x66
	.byte	0x14
	.long	0x82e
	.byte	0
	.uleb128 0xa
	.long	.LASF183
	.byte	0x21
	.byte	0x69
	.byte	0x1c
	.long	0x923
	.byte	0x4
	.uleb128 0xa
	.long	.LASF184
	.byte	0x21
	.byte	0x6e
	.byte	0x14
	.long	0x8f8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF185
	.byte	0x21
	.byte	0x71
	.byte	0x14
	.long	0x8a8
	.byte	0xc
	.uleb128 0xa
	.long	.LASF186
	.byte	0x21
	.byte	0x75
	.byte	0xa
	.long	0x3a9
	.byte	0x10
	.uleb128 0xa
	.long	.LASF187
	.byte	0x21
	.byte	0x79
	.byte	0x8
	.long	0x890
	.byte	0x14
	.uleb128 0xa
	.long	.LASF188
	.byte	0x21
	.byte	0x7d
	.byte	0x8
	.long	0x890
	.byte	0x15
	.uleb128 0xa
	.long	.LASF189
	.byte	0x21
	.byte	0x84
	.byte	0x8
	.long	0x890
	.byte	0x16
	.uleb128 0xa
	.long	.LASF190
	.byte	0x21
	.byte	0x88
	.byte	0x8
	.long	0x890
	.byte	0x17
	.uleb128 0xa
	.long	.LASF191
	.byte	0x21
	.byte	0x8c
	.byte	0x8
	.long	0x890
	.byte	0x18
	.uleb128 0xa
	.long	.LASF192
	.byte	0x21
	.byte	0x8f
	.byte	0x8
	.long	0x890
	.byte	0x19
	.uleb128 0xa
	.long	.LASF193
	.byte	0x21
	.byte	0x93
	.byte	0x8
	.long	0x890
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF194
	.byte	0x21
	.byte	0x9a
	.byte	0x8
	.long	0x890
	.byte	0x1b
	.uleb128 0xa
	.long	.LASF195
	.byte	0x21
	.byte	0x9e
	.byte	0x8
	.long	0x890
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF196
	.byte	0x21
	.byte	0xa2
	.byte	0x8
	.long	0x890
	.byte	0x1d
	.uleb128 0xa
	.long	.LASF197
	.byte	0x21
	.byte	0xa3
	.byte	0x8
	.long	0x890
	.byte	0x1e
	.uleb128 0xa
	.long	.LASF198
	.byte	0x21
	.byte	0xa4
	.byte	0x8
	.long	0x890
	.byte	0x1f
	.uleb128 0xa
	.long	.LASF199
	.byte	0x21
	.byte	0xa5
	.byte	0x8
	.long	0x890
	.byte	0x20
	.uleb128 0xa
	.long	.LASF200
	.byte	0x21
	.byte	0xa8
	.byte	0x1a
	.long	0xb66
	.byte	0x28
	.uleb128 0xa
	.long	.LASF201
	.byte	0x21
	.byte	0xb4
	.byte	0x8
	.long	0x890
	.byte	0x30
	.uleb128 0xa
	.long	.LASF202
	.byte	0x21
	.byte	0xb8
	.byte	0x8
	.long	0x890
	.byte	0x31
	.uleb128 0xa
	.long	.LASF203
	.byte	0x21
	.byte	0xbe
	.byte	0x8
	.long	0x890
	.byte	0x32
	.uleb128 0xa
	.long	.LASF204
	.byte	0x21
	.byte	0xc2
	.byte	0x8
	.long	0x890
	.byte	0x33
	.uleb128 0xa
	.long	.LASF205
	.byte	0x21
	.byte	0xcb
	.byte	0x8
	.long	0x890
	.byte	0x34
	.uleb128 0xa
	.long	.LASF206
	.byte	0x21
	.byte	0xcf
	.byte	0x8
	.long	0x890
	.byte	0x35
	.uleb128 0xa
	.long	.LASF207
	.byte	0x21
	.byte	0xd8
	.byte	0x8
	.long	0x890
	.byte	0x36
	.uleb128 0xa
	.long	.LASF208
	.byte	0x21
	.byte	0xe1
	.byte	0x8
	.long	0x890
	.byte	0x37
	.uleb128 0xa
	.long	.LASF209
	.byte	0x21
	.byte	0xe5
	.byte	0x8
	.long	0x890
	.byte	0x38
	.uleb128 0xa
	.long	.LASF210
	.byte	0x21
	.byte	0xe9
	.byte	0x8
	.long	0x890
	.byte	0x39
	.uleb128 0xa
	.long	.LASF211
	.byte	0x21
	.byte	0xed
	.byte	0x8
	.long	0x890
	.byte	0x3a
	.uleb128 0xa
	.long	.LASF212
	.byte	0x21
	.byte	0xf1
	.byte	0x8
	.long	0x890
	.byte	0x3b
	.uleb128 0xa
	.long	.LASF213
	.byte	0x21
	.byte	0xf4
	.byte	0x8
	.long	0x890
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF214
	.byte	0x21
	.byte	0xf7
	.byte	0x8
	.long	0x890
	.byte	0x3d
	.uleb128 0xa
	.long	.LASF215
	.byte	0x21
	.byte	0xfc
	.byte	0x8
	.long	0x890
	.byte	0x3e
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x21
	.value	0x100
	.byte	0x8
	.long	0x890
	.byte	0x3f
	.uleb128 0x1c
	.long	.LASF217
	.byte	0x21
	.value	0x105
	.byte	0x7
	.long	0x65
	.byte	0x40
	.uleb128 0x1c
	.long	.LASF218
	.byte	0x21
	.value	0x108
	.byte	0x15
	.long	0x8d3
	.byte	0x44
	.uleb128 0x1c
	.long	.LASF219
	.byte	0x21
	.value	0x113
	.byte	0xf
	.long	0xb6c
	.byte	0x48
	.uleb128 0x1c
	.long	.LASF220
	.byte	0x21
	.value	0x116
	.byte	0xf
	.long	0xb6c
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x94e
	.uleb128 0xc
	.long	.LASF221
	.uleb128 0x7
	.byte	0x8
	.long	0xb61
	.uleb128 0x7
	.byte	0x8
	.long	0x897
	.uleb128 0xc
	.long	.LASF222
	.uleb128 0xf
	.long	.LASF223
	.byte	0x22
	.byte	0x19
	.byte	0x1f
	.long	0xb72
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x23
	.byte	0x28
	.byte	0x5
	.long	0xbb6
	.uleb128 0x18
	.long	.LASF224
	.byte	0
	.uleb128 0x18
	.long	.LASF225
	.byte	0x1
	.uleb128 0x18
	.long	.LASF226
	.byte	0x2
	.uleb128 0x18
	.long	.LASF227
	.byte	0x3
	.uleb128 0x18
	.long	.LASF228
	.byte	0x4
	.uleb128 0x18
	.long	.LASF229
	.byte	0x5
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.byte	0x23
	.byte	0x45
	.byte	0x3
	.long	0xbe3
	.uleb128 0x1e
	.string	"fd"
	.byte	0x23
	.byte	0x47
	.byte	0x9
	.long	0x65
	.uleb128 0x1f
	.long	.LASF230
	.byte	0x23
	.byte	0x48
	.byte	0x9
	.long	0x65
	.uleb128 0x1f
	.long	.LASF231
	.byte	0x23
	.byte	0x49
	.byte	0xb
	.long	0x3c1
	.byte	0
	.uleb128 0x9
	.long	.LASF232
	.byte	0x8
	.byte	0x23
	.byte	0x24
	.byte	0x8
	.long	0xc0b
	.uleb128 0xa
	.long	.LASF233
	.byte	0x23
	.byte	0x42
	.byte	0x7
	.long	0xb83
	.byte	0
	.uleb128 0x12
	.string	"val"
	.byte	0x23
	.byte	0x4a
	.byte	0x5
	.long	0xbb6
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.long	.LASF234
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x24
	.byte	0x19
	.byte	0x6
	.long	0xc3c
	.uleb128 0x18
	.long	.LASF235
	.byte	0
	.uleb128 0x18
	.long	.LASF236
	.byte	0x1
	.uleb128 0x18
	.long	.LASF237
	.byte	0x2
	.uleb128 0x18
	.long	.LASF238
	.byte	0x3
	.uleb128 0x18
	.long	.LASF239
	.byte	0x4
	.byte	0
	.uleb128 0x20
	.long	.LASF240
	.byte	0x3
	.byte	0x35
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	selinux_enabled
	.uleb128 0x20
	.long	.LASF241
	.byte	0x3
	.byte	0x36
	.byte	0xd
	.long	0x890
	.uleb128 0x9
	.byte	0x3
	.quad	use_default_selinux_context
	.uleb128 0x20
	.long	.LASF242
	.byte	0x3
	.byte	0x46
	.byte	0xe
	.long	0x120
	.uleb128 0x9
	.byte	0x3
	.quad	owner_name
	.uleb128 0x20
	.long	.LASF243
	.byte	0x3
	.byte	0x49
	.byte	0xe
	.long	0x3b5
	.uleb128 0x9
	.byte	0x3
	.quad	owner_id
	.uleb128 0x20
	.long	.LASF244
	.byte	0x3
	.byte	0x4d
	.byte	0xe
	.long	0x120
	.uleb128 0x9
	.byte	0x3
	.quad	group_name
	.uleb128 0x20
	.long	.LASF245
	.byte	0x3
	.byte	0x50
	.byte	0xe
	.long	0x39d
	.uleb128 0x9
	.byte	0x3
	.quad	group_id
	.uleb128 0x20
	.long	.LASF186
	.byte	0x3
	.byte	0x56
	.byte	0xf
	.long	0x3a9
	.uleb128 0x9
	.byte	0x3
	.quad	mode
	.uleb128 0x20
	.long	.LASF246
	.byte	0x3
	.byte	0x59
	.byte	0xf
	.long	0x3a9
	.uleb128 0x9
	.byte	0x3
	.quad	dir_mode
	.uleb128 0x20
	.long	.LASF247
	.byte	0x3
	.byte	0x5f
	.byte	0xf
	.long	0x3a9
	.uleb128 0x9
	.byte	0x3
	.quad	dir_mode_bits
	.uleb128 0x20
	.long	.LASF248
	.byte	0x3
	.byte	0x62
	.byte	0xd
	.long	0x890
	.uleb128 0x9
	.byte	0x3
	.quad	copy_only_if_needed
	.uleb128 0x20
	.long	.LASF249
	.byte	0x3
	.byte	0x65
	.byte	0xd
	.long	0x890
	.uleb128 0x9
	.byte	0x3
	.quad	strip_files
	.uleb128 0x20
	.long	.LASF250
	.byte	0x3
	.byte	0x68
	.byte	0xd
	.long	0x890
	.uleb128 0x9
	.byte	0x3
	.quad	dir_arg
	.uleb128 0x20
	.long	.LASF251
	.byte	0x3
	.byte	0x6b
	.byte	0x14
	.long	0x31a
	.uleb128 0x9
	.byte	0x3
	.quad	strip_program
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x3
	.byte	0x70
	.byte	0x1
	.long	0xd75
	.uleb128 0x18
	.long	.LASF252
	.byte	0x80
	.uleb128 0x18
	.long	.LASF253
	.byte	0x81
	.byte	0
	.uleb128 0xd
	.long	0x487
	.long	0xd85
	.uleb128 0xe
	.long	0x39
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.long	0xd75
	.uleb128 0x20
	.long	.LASF254
	.byte	0x3
	.byte	0x75
	.byte	0x1c
	.long	0xd85
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x21
	.long	.LASF286
	.byte	0x3
	.value	0x2f6
	.byte	0x1
	.long	0x65
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0xffb
	.uleb128 0x22
	.long	.LASF255
	.byte	0x3
	.value	0x2f6
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x22
	.long	.LASF256
	.byte	0x3
	.value	0x2f6
	.byte	0x18
	.long	0x590
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x23
	.long	.LASF257
	.byte	0x3
	.value	0x2f8
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x23
	.long	.LASF258
	.byte	0x3
	.value	0x2f9
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x23
	.long	.LASF259
	.byte	0x3
	.value	0x2fa
	.byte	0xf
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x23
	.long	.LASF260
	.byte	0x3
	.value	0x2fb
	.byte	0x8
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -365
	.uleb128 0x23
	.long	.LASF261
	.byte	0x3
	.value	0x2fc
	.byte	0xf
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x23
	.long	.LASF262
	.byte	0x3
	.value	0x2fd
	.byte	0x9
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x23
	.long	.LASF263
	.byte	0x3
	.value	0x2fe
	.byte	0x8
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x2ff
	.byte	0x15
	.long	0x94e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x23
	.long	.LASF264
	.byte	0x3
	.value	0x300
	.byte	0xf
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x23
	.long	.LASF265
	.byte	0x3
	.value	0x301
	.byte	0x8
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -363
	.uleb128 0x23
	.long	.LASF266
	.byte	0x3
	.value	0x302
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x23
	.long	.LASF267
	.byte	0x3
	.value	0x303
	.byte	0xa
	.long	0x590
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x23
	.long	.LASF268
	.byte	0x3
	.value	0x304
	.byte	0x8
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -362
	.uleb128 0x23
	.long	.LASF269
	.byte	0x3
	.value	0x305
	.byte	0xf
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x25
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x25
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x26
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0xf5d
	.uleb128 0x24
	.string	"st"
	.byte	0x3
	.value	0x388
	.byte	0x13
	.long	0x607
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.long	.LASF270
	.byte	0x3
	.value	0x389
	.byte	0xc
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -361
	.uleb128 0x25
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x25
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.byte	0
	.uleb128 0x25
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x25
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x25
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x25
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x26
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0xfd9
	.uleb128 0x23
	.long	.LASF271
	.byte	0x3
	.value	0x3c5
	.byte	0x1b
	.long	0x1000
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x25
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0
	.uleb128 0x27
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x24
	.string	"i"
	.byte	0x3
	.value	0x3f6
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF272
	.uleb128 0x7
	.byte	0x8
	.long	0xffb
	.uleb128 0x28
	.long	.LASF276
	.byte	0x3
	.value	0x2e6
	.byte	0x1
	.long	0x890
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x1099
	.uleb128 0x22
	.long	.LASF273
	.byte	0x3
	.value	0x2e6
	.byte	0x22
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF274
	.byte	0x3
	.value	0x2e6
	.byte	0x34
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"x"
	.byte	0x3
	.value	0x2e7
	.byte	0x2f
	.long	0x1099
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF263
	.byte	0x3
	.value	0x2e7
	.byte	0x37
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.long	.LASF275
	.byte	0x3
	.value	0x2e9
	.byte	0xf
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"to"
	.byte	0x3
	.value	0x2ea
	.byte	0x9
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"ret"
	.byte	0x3
	.value	0x2eb
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb5c
	.uleb128 0x28
	.long	.LASF277
	.byte	0x3
	.value	0x2da
	.byte	0x1
	.long	0x890
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f0
	.uleb128 0x22
	.long	.LASF273
	.byte	0x3
	.value	0x2da
	.byte	0x2b
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"to"
	.byte	0x3
	.value	0x2da
	.byte	0x37
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"x"
	.byte	0x3
	.value	0x2db
	.byte	0x38
	.long	0x1099
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF278
	.byte	0x3
	.value	0x2b2
	.byte	0x1
	.long	0x890
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x11b6
	.uleb128 0x22
	.long	.LASF273
	.byte	0x3
	.value	0x2b2
	.byte	0x22
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"to"
	.byte	0x3
	.value	0x2b2
	.byte	0x2e
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"x"
	.byte	0x3
	.value	0x2b2
	.byte	0x45
	.long	0x11b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF279
	.byte	0x3
	.value	0x2b3
	.byte	0x1b
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x23
	.long	.LASF280
	.byte	0x3
	.value	0x2b5
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x23
	.long	.LASF281
	.byte	0x3
	.value	0x2b8
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"wd"
	.byte	0x3
	.value	0x2ba
	.byte	0x11
	.long	0xbe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x23
	.long	.LASF282
	.byte	0x3
	.value	0x2c7
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF283
	.byte	0x3
	.value	0x2c8
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x94e
	.uleb128 0x28
	.long	.LASF284
	.byte	0x3
	.value	0x295
	.byte	0x1
	.long	0x890
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x1232
	.uleb128 0x22
	.long	.LASF273
	.byte	0x3
	.value	0x295
	.byte	0x23
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x29
	.string	"to"
	.byte	0x3
	.value	0x295
	.byte	0x35
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x29
	.string	"x"
	.byte	0x3
	.value	0x296
	.byte	0x30
	.long	0x1099
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x23
	.long	.LASF285
	.byte	0x3
	.value	0x298
	.byte	0xf
	.long	0x607
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0
	.uleb128 0x2a
	.long	.LASF287
	.byte	0x3
	.value	0x24a
	.byte	0x1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x1262
	.uleb128 0x22
	.long	.LASF281
	.byte	0x3
	.value	0x24a
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2b
	.long	.LASF299
	.byte	0x3
	.value	0x21d
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x130a
	.uleb128 0x24
	.string	"pw"
	.byte	0x3
	.value	0x21f
	.byte	0x12
	.long	0x130a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"gr"
	.byte	0x3
	.value	0x220
	.byte	0x11
	.long	0x1310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x12d6
	.uleb128 0x24
	.string	"tmp"
	.byte	0x3
	.value	0x227
	.byte	0x15
	.long	0x596
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.byte	0
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x24
	.string	"tmp"
	.byte	0x3
	.value	0x23a
	.byte	0x15
	.long	0x596
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x4e5
	.uleb128 0x7
	.byte	0x8
	.long	0x54e
	.uleb128 0x28
	.long	.LASF288
	.byte	0x3
	.value	0x200
	.byte	0x1
	.long	0x890
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x138b
	.uleb128 0x22
	.long	.LASF81
	.byte	0x3
	.value	0x200
	.byte	0x14
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF281
	.byte	0x3
	.value	0x202
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"ok"
	.byte	0x3
	.value	0x203
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x24
	.string	"pid"
	.byte	0x3
	.value	0x204
	.byte	0x9
	.long	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.uleb128 0x28
	.long	.LASF289
	.byte	0x3
	.value	0x1eb
	.byte	0x1
	.long	0x890
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x13e2
	.uleb128 0x22
	.long	.LASF290
	.byte	0x3
	.value	0x1eb
	.byte	0x27
	.long	0x13e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF291
	.byte	0x3
	.value	0x1eb
	.byte	0x3b
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF71
	.byte	0x3
	.value	0x1ed
	.byte	0x13
	.long	0x13e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x6d8
	.uleb128 0xd
	.long	0x3d9
	.long	0x13f8
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.long	.LASF292
	.byte	0x3
	.value	0x1ca
	.byte	0x1
	.long	0x890
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x143b
	.uleb128 0x22
	.long	.LASF81
	.byte	0x3
	.value	0x1ca
	.byte	0x20
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"ok"
	.byte	0x3
	.value	0x1cc
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x28
	.long	.LASF293
	.byte	0x3
	.value	0x1b6
	.byte	0x1
	.long	0x890
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x149c
	.uleb128 0x22
	.long	.LASF273
	.byte	0x3
	.value	0x1b6
	.byte	0x18
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"to"
	.byte	0x3
	.value	0x1b6
	.byte	0x2a
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"x"
	.byte	0x3
	.value	0x1b6
	.byte	0x47
	.long	0x1099
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF294
	.byte	0x3
	.value	0x1b8
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x28
	.long	.LASF295
	.byte	0x3
	.value	0x198
	.byte	0x1
	.long	0x65
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x150e
	.uleb128 0x29
	.string	"dir"
	.byte	0x3
	.value	0x198
	.byte	0x14
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"wd"
	.byte	0x3
	.value	0x198
	.byte	0x28
	.long	0x150e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF296
	.byte	0x3
	.value	0x198
	.byte	0x32
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x19a
	.byte	0x1c
	.long	0x1099
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"ret"
	.byte	0x3
	.value	0x19c
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xbe3
	.uleb128 0x28
	.long	.LASF297
	.byte	0x3
	.value	0x187
	.byte	0x1
	.long	0x65
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1585
	.uleb128 0x29
	.string	"dir"
	.byte	0x3
	.value	0x187
	.byte	0x1c
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF298
	.byte	0x3
	.value	0x187
	.byte	0x2d
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF296
	.byte	0x3
	.value	0x187
	.byte	0x3e
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x189
	.byte	0x1c
	.long	0x1099
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"r"
	.byte	0x3
	.value	0x190
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2b
	.long	.LASF300
	.byte	0x3
	.value	0x17c
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d3
	.uleb128 0x29
	.string	"dir"
	.byte	0x3
	.value	0x17c
	.byte	0x1d
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF296
	.byte	0x3
	.value	0x17c
	.byte	0x28
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"x"
	.byte	0x3
	.value	0x17e
	.byte	0x1c
	.long	0x1099
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF301
	.byte	0x3
	.value	0x16a
	.byte	0x1
	.long	0x890
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x168d
	.uleb128 0x22
	.long	.LASF267
	.byte	0x3
	.value	0x16a
	.byte	0x27
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x24
	.string	"b"
	.byte	0x3
	.value	0x16c
	.byte	0xf
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x23
	.long	.LASF302
	.byte	0x3
	.value	0x16d
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x23
	.long	.LASF303
	.byte	0x3
	.value	0x16e
	.byte	0x8
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -214
	.uleb128 0x24
	.string	"st"
	.byte	0x3
	.value	0x16f
	.byte	0xf
	.long	0x607
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.string	"err"
	.byte	0x3
	.value	0x170
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x23
	.long	.LASF304
	.byte	0x3
	.value	0x171
	.byte	0x8
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -213
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x25
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0x2b
	.long	.LASF305
	.byte	0x3
	.value	0x144
	.byte	0x1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x16f0
	.uleb128 0x22
	.long	.LASF267
	.byte	0x3
	.value	0x144
	.byte	0x20
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x24
	.string	"st"
	.byte	0x3
	.value	0x146
	.byte	0xf
	.long	0x607
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x23
	.long	.LASF269
	.byte	0x3
	.value	0x147
	.byte	0x9
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x24
	.string	"hnd"
	.byte	0x3
	.value	0x151
	.byte	0x1a
	.long	0xb66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x28
	.long	.LASF306
	.byte	0x3
	.value	0x131
	.byte	0x1
	.long	0xb66
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1742
	.uleb128 0x23
	.long	.LASF307
	.byte	0x3
	.value	0x133
	.byte	0xf
	.long	0x890
	.uleb128 0x9
	.byte	0x3
	.quad	initialized.7341
	.uleb128 0x24
	.string	"hnd"
	.byte	0x3
	.value	0x134
	.byte	0x21
	.long	0xb66
	.uleb128 0x9
	.byte	0x3
	.quad	hnd.7342
	.byte	0
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x3
	.value	0x103
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1770
	.uleb128 0x29
	.string	"x"
	.byte	0x3
	.value	0x103
	.byte	0x24
	.long	0x11b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF309
	.byte	0x3
	.byte	0xaa
	.byte	0x1
	.long	0x890
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x189f
	.uleb128 0x2d
	.long	.LASF310
	.byte	0x3
	.byte	0xaa
	.byte	0x18
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2d
	.long	.LASF311
	.byte	0x3
	.byte	0xaa
	.byte	0x2e
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2e
	.string	"x"
	.byte	0x3
	.byte	0xab
	.byte	0x25
	.long	0x1099
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x20
	.long	.LASF290
	.byte	0x3
	.byte	0xad
	.byte	0xf
	.long	0x607
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x20
	.long	.LASF312
	.byte	0x3
	.byte	0xad
	.byte	0x17
	.long	0x607
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.long	.LASF313
	.byte	0x3
	.byte	0xae
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x20
	.long	.LASF314
	.byte	0x3
	.byte	0xae
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x20
	.long	.LASF315
	.byte	0x3
	.byte	0xaf
	.byte	0x8
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -353
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1836
	.uleb128 0x20
	.long	.LASF316
	.byte	0x3
	.byte	0xc6
	.byte	0xd
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.byte	0
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x185c
	.uleb128 0x20
	.long	.LASF317
	.byte	0x3
	.byte	0xd0
	.byte	0xd
	.long	0x39d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.byte	0
	.uleb128 0x27
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x20
	.long	.LASF318
	.byte	0x3
	.byte	0xda
	.byte	0xd
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x20
	.long	.LASF319
	.byte	0x3
	.byte	0xdb
	.byte	0xd
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x20
	.long	.LASF320
	.byte	0x3
	.byte	0xdc
	.byte	0xc
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -354
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF321
	.byte	0x3
	.byte	0xa2
	.byte	0x1
	.long	0x890
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x18e0
	.uleb128 0x2d
	.long	.LASF322
	.byte	0x3
	.byte	0xa2
	.byte	0x14
	.long	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF323
	.byte	0x3
	.byte	0xa4
	.byte	0xa
	.long	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF324
	.byte	0x3
	.byte	0x8e
	.byte	0x1
	.long	0x890
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1972
	.uleb128 0x2d
	.long	.LASF325
	.byte	0x3
	.byte	0x8e
	.byte	0x18
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF326
	.byte	0x3
	.byte	0x8e
	.byte	0x22
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x3
	.byte	0x90
	.byte	0x8
	.long	0x1936
	.uleb128 0x30
	.long	.LASF327
	.value	0x1000
	.byte	0
	.uleb128 0x20
	.long	.LASF328
	.byte	0x3
	.byte	0x91
	.byte	0xf
	.long	0x1972
	.uleb128 0x9
	.byte	0x3
	.quad	a_buff.7310
	.uleb128 0x20
	.long	.LASF329
	.byte	0x3
	.byte	0x92
	.byte	0xf
	.long	0x1972
	.uleb128 0x9
	.byte	0x3
	.quad	b_buff.7311
	.uleb128 0x20
	.long	.LASF330
	.byte	0x3
	.byte	0x94
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	0x126
	.long	0x1983
	.uleb128 0x31
	.long	0x39
	.value	0xfff
	.byte	0
	.uleb128 0x2f
	.long	.LASF331
	.byte	0x2
	.byte	0x1b
	.byte	0x1
	.long	0x890
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x19b5
	.uleb128 0x2e
	.string	"err"
	.byte	0x2
	.byte	0x1b
	.byte	0x18
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF332
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a5a
	.uleb128 0x22
	.long	.LASF333
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x32
	.long	.LASF334
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1a10
	.uleb128 0x1c
	.long	.LASF333
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x31a
	.byte	0
	.uleb128 0x1c
	.long	.LASF335
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x31a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x19e5
	.uleb128 0x23
	.long	.LASF334
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x1a6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	.LASF335
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	.LASF336
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1a6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.long	.LASF337
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x31a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x1a10
	.long	0x1a6a
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x1a5a
	.uleb128 0x7
	.byte	0x8
	.long	0x1a10
	.uleb128 0x33
	.long	.LASF338
	.byte	0x1
	.value	0x268
	.byte	0x1
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF339
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
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
.LASF176:
	.string	"I_UNSPECIFIED"
.LASF260:
	.string	"make_backups"
.LASF123:
	.string	"__glibc_reserved"
.LASF303:
	.string	"looks_like_a_dir"
.LASF301:
	.string	"target_directory_operand"
.LASF122:
	.string	"st_ctim"
.LASF313:
	.string	"src_fd"
.LASF7:
	.string	"size_t"
.LASF98:
	.string	"gr_gid"
.LASF132:
	.string	"GETOPT_HELP_CHAR"
.LASF118:
	.string	"st_blksize"
.LASF119:
	.string	"st_blocks"
.LASF311:
	.string	"dest_name"
.LASF258:
	.string	"exit_status"
.LASF54:
	.string	"_IO_codecvt"
.LASF192:
	.string	"install_mode"
.LASF152:
	.string	"simple_backups"
.LASF34:
	.string	"_IO_save_end"
.LASF340:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF226:
	.string	"FD_POST_CHDIR_STATE"
.LASF11:
	.string	"__gid_t"
.LASF251:
	.string	"strip_program"
.LASF200:
	.string	"set_security_context"
.LASF85:
	.string	"_sys_siglist"
.LASF121:
	.string	"st_mtim"
.LASF69:
	.string	"time_t"
.LASF202:
	.string	"data_copy_required"
.LASF262:
	.string	"version_control_string"
.LASF27:
	.string	"_IO_write_base"
.LASF273:
	.string	"from"
.LASF233:
	.string	"state"
.LASF289:
	.string	"change_timestamps"
.LASF158:
	.string	"error_one_per_line"
.LASF153:
	.string	"numbered_existing_backups"
.LASF43:
	.string	"_lock"
.LASF294:
	.string	"copy_into_self"
.LASF228:
	.string	"ERROR_STATE"
.LASF240:
	.string	"selinux_enabled"
.LASF197:
	.string	"preserve_mode"
.LASF237:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF252:
	.string	"PRESERVE_CONTEXT_OPTION"
.LASF108:
	.string	"stat"
.LASF101:
	.string	"__tzname"
.LASF32:
	.string	"_IO_save_base"
.LASF99:
	.string	"gr_mem"
.LASF315:
	.string	"content_match"
.LASF171:
	.string	"REFLINK_ALWAYS"
.LASF326:
	.string	"b_fd"
.LASF341:
	.string	"src/install.c"
.LASF209:
	.string	"recursive"
.LASF177:
	.string	"Dereference_symlink"
.LASF36:
	.string	"_chain"
.LASF40:
	.string	"_cur_column"
.LASF59:
	.string	"sys_nerr"
.LASF309:
	.string	"need_copy"
.LASF150:
	.string	"backup_type"
.LASF9:
	.string	"__dev_t"
.LASF67:
	.string	"uid_t"
.LASF288:
	.string	"strip"
.LASF225:
	.string	"FD_STATE"
.LASF319:
	.string	"to_scontext"
.LASF61:
	.string	"_sys_nerr"
.LASF271:
	.string	"change"
.LASF174:
	.string	"I_ALWAYS_NO"
.LASF162:
	.string	"hash_table"
.LASF124:
	.string	"__environ"
.LASF166:
	.string	"SPARSE_AUTO"
.LASF87:
	.string	"passwd"
.LASF324:
	.string	"have_same_content"
.LASF6:
	.string	"long int"
.LASF307:
	.string	"initialized"
.LASF205:
	.string	"require_preserve_context"
.LASF93:
	.string	"pw_dir"
.LASF82:
	.string	"has_arg"
.LASF190:
	.string	"hard_link"
.LASF154:
	.string	"numbered_backups"
.LASF53:
	.string	"_IO_marker"
.LASF286:
	.string	"main"
.LASF180:
	.string	"DEREF_COMMAND_LINE_ARGUMENTS"
.LASF196:
	.string	"preserve_ownership"
.LASF274:
	.string	"to_dir"
.LASF193:
	.string	"chown_privileges"
.LASF230:
	.string	"errnum"
.LASF206:
	.string	"preserve_xattr"
.LASF94:
	.string	"pw_shell"
.LASF224:
	.string	"INITIAL_STATE"
.LASF4:
	.string	"signed char"
.LASF19:
	.string	"__blksize_t"
.LASF70:
	.string	"_IO_FILE"
.LASF103:
	.string	"__timezone"
.LASF55:
	.string	"_IO_wide_data"
.LASF113:
	.string	"st_uid"
.LASF234:
	.string	"strtol_error"
.LASF317:
	.string	"rgid"
.LASF147:
	.string	"quoting_style_args"
.LASF125:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF165:
	.string	"SPARSE_NEVER"
.LASF47:
	.string	"_freeres_list"
.LASF246:
	.string	"dir_mode"
.LASF116:
	.string	"st_rdev"
.LASF297:
	.string	"make_ancestor"
.LASF316:
	.string	"ruid"
.LASF92:
	.string	"pw_gecos"
.LASF178:
	.string	"DEREF_UNDEFINED"
.LASF212:
	.string	"update"
.LASF203:
	.string	"require_preserve"
.LASF332:
	.string	"emit_ancillary_info"
.LASF244:
	.string	"group_name"
.LASF157:
	.string	"error_message_count"
.LASF184:
	.string	"interactive"
.LASF21:
	.string	"__syscall_slong_t"
.LASF160:
	.string	"_Bool"
.LASF204:
	.string	"preserve_security_context"
.LASF253:
	.string	"STRIP_PROGRAM_OPTION"
.LASF22:
	.string	"char"
.LASF163:
	.string	"Sparse_type"
.LASF248:
	.string	"copy_only_if_needed"
.LASF343:
	.string	"_IO_lock_t"
.LASF218:
	.string	"reflink_mode"
.LASF179:
	.string	"DEREF_NEVER"
.LASF106:
	.string	"timezone"
.LASF140:
	.string	"shell_escape_always_quoting_style"
.LASF13:
	.string	"__mode_t"
.LASF24:
	.string	"_IO_read_ptr"
.LASF276:
	.string	"install_file_in_dir"
.LASF56:
	.string	"stdin"
.LASF321:
	.string	"extra_mode"
.LASF243:
	.string	"owner_id"
.LASF60:
	.string	"sys_errlist"
.LASF320:
	.string	"scontext_match"
.LASF322:
	.string	"input"
.LASF35:
	.string	"_markers"
.LASF135:
	.string	"program_name"
.LASF283:
	.string	"restore_errno"
.LASF267:
	.string	"file"
.LASF189:
	.string	"unlink_dest_after_failed_open"
.LASF295:
	.string	"process_dir"
.LASF304:
	.string	"is_a_dir"
.LASF191:
	.string	"move_mode"
.LASF280:
	.string	"save_working_directory"
.LASF97:
	.string	"gr_passwd"
.LASF142:
	.string	"c_maybe_quoting_style"
.LASF217:
	.string	"rename_errno"
.LASF238:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF335:
	.string	"node"
.LASF151:
	.string	"no_backups"
.LASF221:
	.string	"selabel_handle"
.LASF207:
	.string	"require_preserve_xattr"
.LASF126:
	.string	"program_invocation_name"
.LASF44:
	.string	"_offset"
.LASF104:
	.string	"tzname"
.LASF242:
	.string	"owner_name"
.LASF254:
	.string	"long_options"
.LASF114:
	.string	"st_gid"
.LASF236:
	.string	"LONGINT_OVERFLOW"
.LASF77:
	.string	"optind"
.LASF164:
	.string	"SPARSE_UNUSED"
.LASF145:
	.string	"clocale_quoting_style"
.LASF156:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF249:
	.string	"strip_files"
.LASF338:
	.string	"emit_backup_suffix_note"
.LASF281:
	.string	"status"
.LASF38:
	.string	"_flags2"
.LASF117:
	.string	"st_size"
.LASF26:
	.string	"_IO_read_base"
.LASF175:
	.string	"I_ASK_USER"
.LASF290:
	.string	"src_sb"
.LASF80:
	.string	"option"
.LASF51:
	.string	"_unused2"
.LASF275:
	.string	"from_base"
.LASF210:
	.string	"set_mode"
.LASF229:
	.string	"FINAL_STATE"
.LASF95:
	.string	"group"
.LASF255:
	.string	"argc"
.LASF208:
	.string	"reduce_diagnostics"
.LASF285:
	.string	"from_sb"
.LASF39:
	.string	"_old_offset"
.LASF266:
	.string	"n_files"
.LASF279:
	.string	"save_always"
.LASF334:
	.string	"infomap"
.LASF155:
	.string	"simple_backup_suffix"
.LASF256:
	.string	"argv"
.LASF282:
	.string	"restore_result"
.LASF20:
	.string	"__blkcnt_t"
.LASF137:
	.string	"shell_quoting_style"
.LASF182:
	.string	"cp_options"
.LASF306:
	.string	"get_labeling_handle"
.LASF12:
	.string	"__ino_t"
.LASF327:
	.string	"CMP_BLOCK_SIZE"
.LASF269:
	.string	"scontext"
.LASF213:
	.string	"verbose"
.LASF63:
	.string	"long long int"
.LASF333:
	.string	"program"
.LASF128:
	.string	"Version"
.LASF129:
	.string	"exit_failure"
.LASF74:
	.string	"_gl_cxxalias_dummy"
.LASF167:
	.string	"SPARSE_ALWAYS"
.LASF173:
	.string	"I_ALWAYS_YES"
.LASF141:
	.string	"c_quoting_style"
.LASF231:
	.string	"child"
.LASF29:
	.string	"_IO_write_end"
.LASF323:
	.string	"mask"
.LASF100:
	.string	"uintmax_t"
.LASF270:
	.string	"stat_success"
.LASF239:
	.string	"LONGINT_INVALID"
.LASF86:
	.string	"sys_siglist"
.LASF159:
	.string	"float"
.LASF133:
	.string	"GETOPT_VERSION_CHAR"
.LASF30:
	.string	"_IO_buf_base"
.LASF314:
	.string	"dest_fd"
.LASF263:
	.string	"mkdir_and_install"
.LASF257:
	.string	"optc"
.LASF1:
	.string	"unsigned int"
.LASF134:
	.string	"version_etc_copyright"
.LASF148:
	.string	"quoting_style_vals"
.LASF136:
	.string	"literal_quoting_style"
.LASF115:
	.string	"__pad0"
.LASF90:
	.string	"pw_uid"
.LASF49:
	.string	"__pad5"
.LASF68:
	.string	"pid_t"
.LASF83:
	.string	"flag"
.LASF201:
	.string	"preserve_links"
.LASF222:
	.string	"quoting_options"
.LASF325:
	.string	"a_fd"
.LASF23:
	.string	"_flags"
.LASF293:
	.string	"copy_file"
.LASF198:
	.string	"preserve_timestamps"
.LASF337:
	.string	"lc_messages"
.LASF300:
	.string	"announce_mkdir"
.LASF223:
	.string	"quote_quoting_options"
.LASF50:
	.string	"_mode"
.LASF45:
	.string	"_codecvt"
.LASF131:
	.string	"LOG10_TIMESPEC_HZ"
.LASF111:
	.string	"st_nlink"
.LASF66:
	.string	"mode_t"
.LASF215:
	.string	"open_dangling_dest_symlink"
.LASF277:
	.string	"install_file_in_file_parents"
.LASF64:
	.string	"long double"
.LASF52:
	.string	"FILE"
.LASF17:
	.string	"__pid_t"
.LASF109:
	.string	"st_dev"
.LASF172:
	.string	"Interactive"
.LASF235:
	.string	"LONGINT_OK"
.LASF71:
	.string	"timespec"
.LASF168:
	.string	"Reflink_type"
.LASF265:
	.string	"no_target_directory"
.LASF79:
	.string	"optopt"
.LASF169:
	.string	"REFLINK_NEVER"
.LASF144:
	.string	"locale_quoting_style"
.LASF330:
	.string	"size"
.LASF250:
	.string	"dir_arg"
.LASF75:
	.string	"long long unsigned int"
.LASF302:
	.string	"blen"
.LASF308:
	.string	"cp_option_init"
.LASF15:
	.string	"__off_t"
.LASF149:
	.string	"quoting_style"
.LASF96:
	.string	"gr_name"
.LASF127:
	.string	"program_invocation_short_name"
.LASF232:
	.string	"savewd"
.LASF339:
	.string	"emit_mandatory_arg_note"
.LASF48:
	.string	"_freeres_buf"
.LASF211:
	.string	"symbolic_link"
.LASF78:
	.string	"opterr"
.LASF268:
	.string	"strip_program_specified"
.LASF342:
	.string	"/root/coreutils"
.LASF18:
	.string	"__time_t"
.LASF33:
	.string	"_IO_backup_base"
.LASF42:
	.string	"_shortbuf"
.LASF91:
	.string	"pw_gid"
.LASF161:
	.string	"Hash_table"
.LASF291:
	.string	"dest"
.LASF138:
	.string	"shell_always_quoting_style"
.LASF16:
	.string	"__off64_t"
.LASF298:
	.string	"component"
.LASF245:
	.string	"group_id"
.LASF216:
	.string	"last_file"
.LASF143:
	.string	"escape_quoting_style"
.LASF31:
	.string	"_IO_buf_end"
.LASF329:
	.string	"b_buff"
.LASF81:
	.string	"name"
.LASF195:
	.string	"one_file_system"
.LASF336:
	.string	"map_prog"
.LASF227:
	.string	"FORKING_STATE"
.LASF58:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF194:
	.string	"owner_privileges"
.LASF247:
	.string	"dir_mode_bits"
.LASF292:
	.string	"change_attributes"
.LASF186:
	.string	"mode"
.LASF305:
	.string	"setdefaultfilecon"
.LASF73:
	.string	"tv_nsec"
.LASF287:
	.string	"usage"
.LASF139:
	.string	"shell_escape_quoting_style"
.LASF241:
	.string	"use_default_selinux_context"
.LASF41:
	.string	"_vtable_offset"
.LASF62:
	.string	"_sys_errlist"
.LASF89:
	.string	"pw_passwd"
.LASF8:
	.string	"__uintmax_t"
.LASF261:
	.string	"backup_suffix"
.LASF84:
	.string	"__sighandler_t"
.LASF181:
	.string	"DEREF_ALWAYS"
.LASF130:
	.string	"TIMESPEC_HZ"
.LASF328:
	.string	"a_buff"
.LASF199:
	.string	"explicit_no_preserve_mode"
.LASF220:
	.string	"src_info"
.LASF102:
	.string	"__daylight"
.LASF278:
	.string	"mkancesdirs_safe_wd"
.LASF272:
	.string	"mode_change"
.LASF183:
	.string	"dereference"
.LASF88:
	.string	"pw_name"
.LASF112:
	.string	"st_mode"
.LASF10:
	.string	"__uid_t"
.LASF214:
	.string	"stdin_tty"
.LASF259:
	.string	"specified_mode"
.LASF25:
	.string	"_IO_read_end"
.LASF284:
	.string	"install_file_in_file"
.LASF219:
	.string	"dest_info"
.LASF107:
	.string	"getdate_err"
.LASF299:
	.string	"get_ids"
.LASF37:
	.string	"_fileno"
.LASF185:
	.string	"sparse_mode"
.LASF46:
	.string	"_wide_data"
.LASF76:
	.string	"optarg"
.LASF264:
	.string	"target_directory"
.LASF3:
	.string	"short unsigned int"
.LASF57:
	.string	"stdout"
.LASF28:
	.string	"_IO_write_ptr"
.LASF296:
	.string	"options"
.LASF318:
	.string	"file_scontext"
.LASF105:
	.string	"daylight"
.LASF187:
	.string	"copy_as_regular"
.LASF170:
	.string	"REFLINK_AUTO"
.LASF110:
	.string	"st_ino"
.LASF14:
	.string	"__nlink_t"
.LASF331:
	.string	"ignorable_ctx_err"
.LASF65:
	.string	"gid_t"
.LASF312:
	.string	"dest_sb"
.LASF72:
	.string	"tv_sec"
.LASF146:
	.string	"custom_quoting_style"
.LASF120:
	.string	"st_atim"
.LASF188:
	.string	"unlink_dest_before_opening"
.LASF310:
	.string	"src_name"
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
