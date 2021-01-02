	.file	"chmod.c"
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
	.local	change
	.comm	change,8,8
	.local	umask_value
	.comm	umask_value,4,4
	.local	recurse
	.comm	recurse,1,1
	.local	force_silent
	.comm	force_silent,1,1
	.local	diagnose_surprises
	.comm	diagnose_surprises,1,1
	.data
	.align 4
	.type	verbosity, @object
	.size	verbosity, 4
verbosity:
	.long	2
	.local	root_dev_ino
	.comm	root_dev_ino,8,8
	.section	.rodata
.LC18:
	.string	"changes"
.LC19:
	.string	"recursive"
.LC20:
	.string	"no-preserve-root"
.LC21:
	.string	"preserve-root"
.LC22:
	.string	"quiet"
.LC23:
	.string	"reference"
.LC24:
	.string	"silent"
.LC25:
	.string	"verbose"
.LC26:
	.string	"help"
.LC27:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 352
long_options:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
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
	.long	129
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC23
	.long	1
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC27
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
.LC28:
	.string	"getting new attributes of %s"
	.text
	.type	mode_changed, @function
mode_changed:
.LFB46:
	.file 2 "src/chmod.c"
	.loc 2 116 1 is_stmt 1
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
	movl	%edi, -180(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	%ecx, -184(%rbp)
	movl	%r8d, -204(%rbp)
	.loc 2 116 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 117 16
	movl	-204(%rbp), %eax
	andl	$3584, %eax
	.loc 2 117 6
	testl	%eax, %eax
	je	.L11
.LBB2:
	.loc 2 124 11
	leaq	-176(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movl	-180(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	fstatat@PLT
	.loc 2 124 10
	testl	%eax, %eax
	je	.L12
	.loc 2 126 15
	movzbl	force_silent(%rip), %eax
	xorl	$1, %eax
	.loc 2 126 14
	testb	%al, %al
	je	.L13
	.loc 2 127 13
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 127 30
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 127 23
	call	__errno_location@PLT
	.loc 2 127 13
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L13:
	.loc 2 129 18
	movl	$0, %eax
	jmp	.L14
.L12:
	.loc 2 132 16
	movl	-152(%rbp), %eax
	movl	%eax, -204(%rbp)
.L11:
.LBE2:
	.loc 2 135 21
	movl	-184(%rbp), %eax
	xorl	-204(%rbp), %eax
	.loc 2 135 33
	andl	$4095, %eax
	.loc 2 135 52
	testl	%eax, %eax
	setne	%al
.L14:
	.loc 2 136 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	mode_changed, .-mode_changed
	.section	.rodata
	.align 8
.LC29:
	.string	"neither symbolic link %s nor referent has been changed\n"
	.align 8
.LC30:
	.string	"mode of %s changed from %04lo (%s) to %04lo (%s)\n"
	.align 8
.LC31:
	.string	"failed to change mode of %s from %04lo (%s) to %04lo (%s)\n"
	.align 8
.LC32:
	.string	"mode of %s retained as %04lo (%s)\n"
	.text
	.type	describe_change, @function
describe_change:
.LFB47:
	.loc 2 144 1
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
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movl	%ecx, -84(%rbp)
	.loc 2 144 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 149 6
	cmpl	$0, -84(%rbp)
	jne	.L17
	.loc 2 151 7
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 151 15
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	.loc 2 151 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 153 7
	jmp	.L16
.L17:
	.loc 2 156 3
	leaq	-48(%rbp), %rdx
	movl	-80(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	strmode@PLT
	.loc 2 157 13
	movb	$0, -38(%rbp)
	.loc 2 159 3
	leaq	-36(%rbp), %rdx
	movl	-76(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	strmode@PLT
	.loc 2 160 17
	movb	$0, -26(%rbp)
	.loc 2 162 3
	cmpl	$3, -84(%rbp)
	je	.L19
	cmpl	$3, -84(%rbp)
	ja	.L20
	cmpl	$1, -84(%rbp)
	je	.L21
	cmpl	$2, -84(%rbp)
	je	.L22
	jmp	.L20
.L21:
	.loc 2 165 13
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rax, -56(%rbp)
	.loc 2 166 7
	jmp	.L23
.L22:
	.loc 2 168 13
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, -56(%rbp)
	.loc 2 169 7
	jmp	.L23
.L19:
	.loc 2 171 13
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, -56(%rbp)
	.loc 2 173 41
	movl	-80(%rbp), %eax
	.loc 2 172 7
	andl	$4095, %eax
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rsi
	leaq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 174 7
	jmp	.L16
.L20:
	.loc 2 176 7
	call	abort@PLT
.L23:
	.loc 2 180 37
	movl	-80(%rbp), %eax
	.loc 2 178 3
	andl	$4095, %eax
	movq	%rax, %r12
	.loc 2 179 41
	movl	-76(%rbp), %eax
	.loc 2 178 3
	andl	$4095, %eax
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rsi
	leaq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	-36(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L16:
	.loc 2 181 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	describe_change, .-describe_change
	.section	.rodata
.LC33:
	.string	"cannot access %s"
.LC34:
	.string	"%s"
.LC35:
	.string	"cannot read directory %s"
	.align 8
.LC36:
	.string	"cannot operate on dangling symlink %s"
	.align 8
.LC37:
	.string	"WARNING: Circular directory structure.\nThis almost certainly means that you have a corrupted file system.\nNOTIFY YOUR SYSTEM MANAGER.\nThe following directory is part of the cycle:\n  %s\n"
.LC38:
	.string	"/"
	.align 8
.LC39:
	.string	"it is dangerous to operate recursively on %s"
	.align 8
.LC40:
	.string	"it is dangerous to operate recursively on %s (same as %s)"
	.align 8
.LC41:
	.string	"use --no-preserve-root to override this failsafe"
.LC42:
	.string	"changing permissions of %s"
	.align 8
.LC43:
	.string	"%s: new permissions are %s, not %s"
	.text
	.type	process_file, @function
process_file:
.LFB48:
	.loc 2 189 1
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
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	.loc 2 189 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 2 190 15
	movq	-144(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -96(%rbp)
	.loc 2 191 15
	movq	-144(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -88(%rbp)
	.loc 2 192 22
	movq	-144(%rbp), %rax
	addq	$112, %rax
	movq	%rax, -80(%rbp)
	.loc 2 193 10
	movl	$0, -112(%rbp)
	.loc 2 194 10
	movl	$0, -108(%rbp)
	.loc 2 195 8
	movb	$1, -115(%rbp)
	.loc 2 196 8
	movb	$0, -114(%rbp)
	.loc 2 198 14
	movq	-144(%rbp), %rax
	movzwl	104(%rax), %eax
	movzwl	%ax, %eax
	cmpl	$13, %eax
	ja	.L62
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L29(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L29(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L29:
	.long	.L62-.L29
	.long	.L62-.L29
	.long	.L34-.L29
	.long	.L62-.L29
	.long	.L33-.L29
	.long	.L62-.L29
	.long	.L32-.L29
	.long	.L31-.L29
	.long	.L62-.L29
	.long	.L62-.L29
	.long	.L30-.L29
	.long	.L62-.L29
	.long	.L62-.L29
	.long	.L28-.L29
	.text
.L32:
	.loc 2 201 14
	movl	$1, %eax
	jmp	.L35
.L30:
	.loc 2 211 14
	movq	-144(%rbp), %rax
	movq	88(%rax), %rax
	.loc 2 211 10
	testq	%rax, %rax
	jne	.L36
	.loc 2 211 37 discriminator 1
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 211 31 discriminator 1
	testq	%rax, %rax
	jne	.L36
	.loc 2 213 27
	movq	-144(%rbp), %rax
	movq	$1, 32(%rax)
	.loc 2 214 11
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
	.loc 2 215 18
	movl	$1, %eax
	jmp	.L35
.L36:
	.loc 2 217 11
	movzbl	force_silent(%rip), %eax
	xorl	$1, %eax
	.loc 2 217 10
	testb	%al, %al
	je	.L37
	.loc 2 218 9
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 218 35
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 218 9
	movq	-144(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L37:
	.loc 2 220 10
	movb	$0, -115(%rbp)
	.loc 2 221 7
	jmp	.L38
.L31:
	.loc 2 224 11
	movzbl	force_silent(%rip), %eax
	xorl	$1, %eax
	.loc 2 224 10
	testb	%al, %al
	je	.L39
	.loc 2 225 9
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rdx, %rcx
	leaq	.LC34(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L39:
	.loc 2 226 10
	movb	$0, -115(%rbp)
	.loc 2 227 7
	jmp	.L38
.L33:
	.loc 2 230 11
	movzbl	force_silent(%rip), %eax
	xorl	$1, %eax
	.loc 2 230 10
	testb	%al, %al
	je	.L40
	.loc 2 231 9
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 231 35
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 231 9
	movq	-144(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L40:
	.loc 2 233 10
	movb	$0, -115(%rbp)
	.loc 2 234 7
	jmp	.L38
.L28:
	.loc 2 237 11
	movzbl	force_silent(%rip), %eax
	xorl	$1, %eax
	.loc 2 237 10
	testb	%al, %al
	je	.L41
	.loc 2 238 9
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 238 22
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 2 238 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L41:
	.loc 2 240 10
	movb	$0, -115(%rbp)
	.loc 2 241 7
	jmp	.L38
.L34:
	.loc 2 244 11
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cycle_warning_required@PLT
	.loc 2 244 10
	testb	%al, %al
	je	.L63
	.loc 2 246 11
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 247 18
	movl	$0, %eax
	jmp	.L35
.L62:
	.loc 2 252 7
	nop
	jmp	.L38
.L63:
	.loc 2 249 7
	nop
.L38:
	.loc 2 255 6
	cmpb	$0, -115(%rbp)
	je	.L43
	.loc 2 255 13 discriminator 1
	movq	root_dev_ino(%rip), %rax
	.loc 2 255 10 discriminator 1
	testq	%rax, %rax
	je	.L43
	.loc 2 255 13 discriminator 2
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	root_dev_ino(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L43
	.loc 2 255 13 is_stmt 0 discriminator 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	root_dev_ino(%rip), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L43
	.loc 2 257 7 is_stmt 1
	movq	-96(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L44
	.loc 2 257 7 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L45
.L44:
	.loc 2 257 7 discriminator 2
	leaq	.LC38(%rip), %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L45:
	.loc 2 257 7 discriminator 4
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 259 7 is_stmt 1 discriminator 4
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
.LBB3:
	.loc 2 261 7 discriminator 4
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -72(%rbp)
.LBE3:
	.loc 2 262 14 discriminator 4
	movl	$0, %eax
	jmp	.L35
.L43:
	.loc 2 265 6
	cmpb	$0, -115(%rbp)
	je	.L46
	.loc 2 267 16
	movq	-80(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -112(%rbp)
	.loc 2 268 18
	movq	change(%rip), %rcx
	movl	umask_value(%rip), %edx
	.loc 2 268 41
	movl	-112(%rbp), %eax
	andl	$61440, %eax
	.loc 2 268 18
	cmpl	$16384, %eax
	sete	%al
	movzbl	%al, %esi
	movl	-112(%rbp), %eax
	movl	$0, %r8d
	movl	%eax, %edi
	call	mode_adjust@PLT
	movl	%eax, -108(%rbp)
	.loc 2 271 13
	movl	-112(%rbp), %eax
	andl	$61440, %eax
	.loc 2 271 10
	cmpl	$40960, %eax
	je	.L46
	.loc 2 273 15
	movq	-136(%rbp), %rax
	movl	44(%rax), %eax
	movl	-108(%rbp), %edx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	chmodat@PLT
	.loc 2 273 14
	testl	%eax, %eax
	jne	.L47
	.loc 2 274 29
	movb	$1, -114(%rbp)
	jmp	.L46
.L47:
	.loc 2 277 19
	movzbl	force_silent(%rip), %eax
	xorl	$1, %eax
	.loc 2 277 18
	testb	%al, %al
	je	.L48
	.loc 2 278 17
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 278 34
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 278 27
	call	__errno_location@PLT
	.loc 2 278 17
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L48:
	.loc 2 280 18
	movb	$0, -115(%rbp)
.L46:
	.loc 2 285 17
	movl	verbosity(%rip), %eax
	.loc 2 285 6
	cmpl	$2, %eax
	je	.L49
.LBB4:
	.loc 2 288 23
	cmpb	$0, -114(%rbp)
	je	.L50
	.loc 2 288 26 discriminator 1
	movq	-136(%rbp), %rax
	movl	44(%rax), %eax
	movl	-108(%rbp), %edi
	movl	-112(%rbp), %ecx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movl	%edi, %r8d
	movl	%eax, %edi
	call	mode_changed
	.loc 2 288 23 discriminator 1
	testb	%al, %al
	je	.L50
	.loc 2 288 23 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L51
.L50:
	.loc 2 288 23 discriminator 4
	movl	$0, %eax
.L51:
	.loc 2 287 12 is_stmt 1
	movb	%al, -113(%rbp)
	andb	$1, -113(%rbp)
	.loc 2 291 10
	cmpb	$0, -113(%rbp)
	jne	.L52
	.loc 2 291 32 discriminator 1
	movl	verbosity(%rip), %eax
	.loc 2 291 19 discriminator 1
	testl	%eax, %eax
	jne	.L49
.L52:
.LBB5:
	.loc 2 294 14
	movzbl	-115(%rbp), %eax
	xorl	$1, %eax
	.loc 2 295 14
	testb	%al, %al
	je	.L53
	.loc 2 295 14 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L54
.L53:
	.loc 2 295 16 is_stmt 1 discriminator 2
	movzbl	-114(%rbp), %eax
	xorl	$1, %eax
	.loc 2 295 14 discriminator 2
	testb	%al, %al
	je	.L55
	.loc 2 295 14 is_stmt 0 discriminator 3
	movl	$0, %eax
	jmp	.L54
.L55:
	.loc 2 296 16 is_stmt 1 discriminator 4
	movzbl	-113(%rbp), %eax
	xorl	$1, %eax
	.loc 2 295 14 discriminator 4
	testb	%al, %al
	je	.L57
	.loc 2 295 14 is_stmt 0 discriminator 6
	movl	$3, %eax
	jmp	.L54
.L57:
	.loc 2 295 14 discriminator 7
	movl	$1, %eax
.L54:
	.loc 2 293 30 is_stmt 1
	movl	%eax, -104(%rbp)
	.loc 2 298 11
	movl	-104(%rbp), %ecx
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %esi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	describe_change
.L49:
.LBE5:
.LBE4:
	.loc 2 302 6
	cmpb	$0, -114(%rbp)
	je	.L59
	.loc 2 302 23 discriminator 1
	movzbl	diagnose_surprises(%rip), %eax
	testb	%al, %al
	je	.L59
.LBB6:
	.loc 2 305 9
	movq	change(%rip), %rdx
	.loc 2 305 32
	movl	-112(%rbp), %eax
	andl	$61440, %eax
	.loc 2 305 9
	cmpl	$16384, %eax
	sete	%al
	movzbl	%al, %esi
	movl	-112(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	mode_adjust@PLT
	movl	%eax, -100(%rbp)
	.loc 2 306 22
	movl	-100(%rbp), %eax
	notl	%eax
	.loc 2 306 20
	andl	-108(%rbp), %eax
	.loc 2 306 10
	testl	%eax, %eax
	je	.L59
.LBB7:
	.loc 2 310 11
	leaq	-64(%rbp), %rdx
	movl	-108(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	strmode@PLT
	.loc 2 311 11
	leaq	-52(%rbp), %rdx
	movl	-100(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	strmode@PLT
	.loc 2 312 54
	movb	$0, -42(%rbp)
	.loc 2 312 49
	movzbl	-42(%rbp), %eax
	.loc 2 312 25
	movb	%al, -54(%rbp)
	.loc 2 313 11
	leaq	-52(%rbp), %r12
	addq	$1, %r12
	leaq	-64(%rbp), %rbx
	addq	$1, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r13
	.loc 2 314 18
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	.loc 2 313 11
	movq	%r12, %r9
	movq	%rbx, %r8
	movq	%r13, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 317 14
	movb	$0, -115(%rbp)
.L59:
.LBE7:
.LBE6:
	.loc 2 321 8
	movzbl	recurse(%rip), %eax
	xorl	$1, %eax
	.loc 2 321 6
	testb	%al, %al
	je	.L60
	.loc 2 322 5
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
.L60:
	.loc 2 324 10
	movzbl	-115(%rbp), %eax
.L35:
	.loc 2 325 1
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L61
	call	__stack_chk_fail@PLT
.L61:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	process_file, .-process_file
	.section	.rodata
.LC44:
	.string	"fts_read failed"
.LC45:
	.string	"fts_close failed"
	.text
	.type	process_files, @function
process_files:
.LFB49:
	.loc 2 333 1
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
	.loc 2 334 8
	movb	$1, -33(%rbp)
	.loc 2 336 14
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	xfts_open@PLT
	movq	%rax, -32(%rbp)
.L69:
.LBB8:
	.loc 2 342 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -24(%rbp)
	.loc 2 343 10
	cmpq	$0, -24(%rbp)
	jne	.L65
	.loc 2 345 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 345 14
	testl	%eax, %eax
	je	.L72
	.loc 2 348 19
	movzbl	force_silent(%rip), %eax
	xorl	$1, %eax
	.loc 2 348 18
	testb	%al, %al
	je	.L67
	.loc 2 349 34
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 349 27
	call	__errno_location@PLT
	.loc 2 349 17
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L67:
	.loc 2 350 18
	movb	$0, -33(%rbp)
	.loc 2 352 11
	jmp	.L72
.L65:
	.loc 2 355 13
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_file
	.loc 2 355 10
	movzbl	-33(%rbp), %edx
	.loc 2 355 13
	movzbl	%al, %eax
	.loc 2 355 10
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -33(%rbp)
.LBE8:
	.loc 2 339 5
	jmp	.L69
.L72:
.LBB9:
	.loc 2 352 11
	nop
.LBE9:
	.loc 2 358 7
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_close@PLT
	.loc 2 358 6
	testl	%eax, %eax
	je	.L70
	.loc 2 360 24
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 360 17
	call	__errno_location@PLT
	.loc 2 360 7
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 361 10
	movb	$0, -33(%rbp)
.L70:
	.loc 2 364 10
	movzbl	-33(%rbp), %eax
	.loc 2 365 1
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
.LC46:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC47:
	.string	"Usage: %s [OPTION]... MODE[,MODE]... FILE...\n  or:  %s [OPTION]... OCTAL-MODE FILE...\n  or:  %s [OPTION]... --reference=RFILE FILE...\n"
	.align 8
.LC48:
	.string	"Change the mode of each FILE to MODE.\nWith --reference, change the mode of each FILE to that of RFILE.\n\n"
	.align 8
.LC49:
	.string	"  -c, --changes          like verbose but report only when a change is made\n  -f, --silent, --quiet  suppress most error messages\n  -v, --verbose          output a diagnostic for every file processed\n"
	.align 8
.LC50:
	.string	"      --no-preserve-root  do not treat '/' specially (the default)\n      --preserve-root    fail to operate recursively on '/'\n"
	.align 8
.LC51:
	.string	"      --reference=RFILE  use RFILE's mode instead of MODE values\n"
	.align 8
.LC52:
	.string	"  -R, --recursive        change files and directories recursively\n"
	.align 8
.LC53:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC54:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC55:
	.string	"\nEach MODE is of the form '[ugoa]*([-+=]([rwxXst]*|[ugo]))+|[-+=][0-7]+'.\n"
.LC56:
	.string	"chmod"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.loc 2 369 1
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
	.loc 2 370 6
	cmpl	$0, -36(%rbp)
	je	.L74
	.loc 2 371 5
	movq	program_name(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L75
.L74:
	.loc 2 374 7
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 374 15
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	.loc 2 374 7
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 380 7
	movq	stdout(%rip), %rbx
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 385 7
	movq	stdout(%rip), %rbx
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 390 7
	movq	stdout(%rip), %rbx
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 394 7
	movq	stdout(%rip), %rbx
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 397 7
	movq	stdout(%rip), %rbx
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 400 7
	movq	stdout(%rip), %rbx
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 401 7
	movq	stdout(%rip), %rbx
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 402 7
	movq	stdout(%rip), %rbx
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 406 7
	leaq	.LC56(%rip), %rdi
	call	emit_ancillary_info
.L75:
	.loc 2 408 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.section	.rodata
.LC57:
	.string	"/usr/local/share/locale"
.LC58:
	.string	"Jim Meyering"
.LC59:
	.string	"David MacKenzie"
	.align 8
.LC60:
	.string	"Rcfvr::w::x::X::s::t::u::g::o::a::,::+::=::0::1::2::3::4::5::6::7::"
	.align 8
.LC61:
	.string	"cannot combine mode and --reference options"
.LC62:
	.string	"missing operand"
.LC63:
	.string	"missing operand after %s"
	.align 8
.LC64:
	.string	"failed to get attributes of %s"
.LC65:
	.string	"invalid mode: %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 2 416 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 2 416 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 417 9
	movq	$0, -80(%rbp)
	.loc 2 418 10
	movq	$0, -72(%rbp)
	.loc 2 419 10
	movq	$0, -88(%rbp)
	.loc 2 421 8
	movb	$0, -94(%rbp)
	.loc 2 422 15
	movq	$0, -64(%rbp)
	.loc 2 426 3
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 427 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 428 3
	leaq	.LC57(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 429 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 431 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 433 47
	movb	$0, diagnose_surprises(%rip)
	.loc 2 433 26
	movzbl	diagnose_surprises(%rip), %eax
	movb	%al, force_silent(%rip)
	.loc 2 433 11
	movzbl	force_silent(%rip), %eax
	movb	%al, recurse(%rip)
	.loc 2 435 9
	jmp	.L77
.L92:
	.loc 2 441 7
	cmpl	$130, -92(%rbp)
	jg	.L78
	cmpl	$43, -92(%rbp)
	jge	.L79
	cmpl	$-131, -92(%rbp)
	je	.L80
	cmpl	$-130, -92(%rbp)
	je	.L81
	jmp	.L78
.L79:
	movl	-92(%rbp), %eax
	subl	$43, %eax
	cmpl	$87, %eax
	ja	.L78
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L83(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L83(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L83:
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L86-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L90-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L86-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L86-.L83
	.long	.L78-.L83
	.long	.L89-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L88-.L83
	.long	.L86-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L86-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L87-.L83
	.long	.L86-.L83
	.long	.L86-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L78-.L83
	.long	.L85-.L83
	.long	.L84-.L83
	.long	.L82-.L83
	.text
.L86:
.LBB10:
	.loc 2 468 35
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 468 25
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 2 469 30
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -48(%rbp)
	.loc 2 470 48
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %edx
	.loc 2 470 20
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 2 471 20
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 472 28
	movq	-88(%rbp), %rax
	.loc 2 472 16
	cmpq	%rax, -32(%rbp)
	jb	.L91
.LBB11:
	.loc 2 474 43
	movq	-32(%rbp), %rax
	addq	$1, %rax
	.loc 2 474 28
	movq	%rax, -88(%rbp)
	.loc 2 475 24
	leaq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x2realloc@PLT
	movq	%rax, -80(%rbp)
.L91:
.LBE11:
	.loc 2 477 17
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 477 28
	movb	$44, (%rax)
	.loc 2 478 13
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 2 478 26
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 478 13
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 2 479 22
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 2 481 32
	movb	$1, diagnose_surprises(%rip)
.LBE10:
	.loc 2 483 11
	jmp	.L77
.L85:
	.loc 2 485 25
	movb	$0, -94(%rbp)
	.loc 2 486 11
	jmp	.L77
.L84:
	.loc 2 488 25
	movb	$1, -94(%rbp)
	.loc 2 489 11
	jmp	.L77
.L82:
	.loc 2 491 26
	movq	optarg(%rip), %rax
	movq	%rax, -64(%rbp)
	.loc 2 492 11
	jmp	.L77
.L90:
	.loc 2 494 19
	movb	$1, recurse(%rip)
	.loc 2 495 11
	jmp	.L77
.L89:
	.loc 2 497 21
	movl	$1, verbosity(%rip)
	.loc 2 498 11
	jmp	.L77
.L88:
	.loc 2 500 24
	movb	$1, force_silent(%rip)
	.loc 2 501 11
	jmp	.L77
.L87:
	.loc 2 503 21
	movl	$0, verbosity(%rip)
	.loc 2 504 11
	jmp	.L77
.L81:
	.loc 2 505 9
	movl	$0, %edi
	call	usage
.L80:
	.loc 2 506 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC58(%rip), %r9
	leaq	.LC59(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L78:
	.loc 2 508 11
	movl	$1, %edi
	call	usage
.L77:
	.loc 2 435 15
	movq	-112(%rbp), %rsi
	movl	-100(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -92(%rbp)
	.loc 2 435 9
	cmpl	$-1, -92(%rbp)
	jne	.L92
	.loc 2 512 6
	cmpq	$0, -64(%rbp)
	je	.L93
	.loc 2 514 10
	cmpq	$0, -80(%rbp)
	je	.L94
	.loc 2 516 24
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	.loc 2 516 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 517 11
	movl	$1, %edi
	call	usage
.L93:
	.loc 2 522 10
	cmpq	$0, -80(%rbp)
	jne	.L94
	.loc 2 523 27
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 523 20
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 523 14
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.L94:
	.loc 2 526 14
	movl	optind(%rip), %eax
	.loc 2 526 6
	cmpl	%eax, -100(%rbp)
	jg	.L95
	.loc 2 528 10
	cmpq	$0, -80(%rbp)
	je	.L96
	.loc 2 528 32 discriminator 1
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 528 17 discriminator 1
	cmpq	%rax, -80(%rbp)
	je	.L97
.L96:
	.loc 2 529 22
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	.loc 2 529 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L98
.L97:
	.loc 2 531 64
	movl	-100(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 531 9
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 531 22
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	.loc 2 531 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L98:
	.loc 2 532 7
	movl	$1, %edi
	call	usage
.L95:
	.loc 2 535 6
	cmpq	$0, -64(%rbp)
	je	.L99
	.loc 2 537 16
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	mode_create_from_ref@PLT
	.loc 2 537 14
	movq	%rax, change(%rip)
	.loc 2 538 11
	movq	change(%rip), %rax
	.loc 2 538 10
	testq	%rax, %rax
	jne	.L100
.LBB12:
	.loc 2 539 9
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC64(%rip), %rdi
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
.L99:
.LBE12:
	.loc 2 544 16
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	mode_compile@PLT
	.loc 2 544 14
	movq	%rax, change(%rip)
	.loc 2 545 11
	movq	change(%rip), %rax
	.loc 2 545 10
	testq	%rax, %rax
	jne	.L101
	.loc 2 547 11
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 547 24
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	.loc 2 547 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 548 11
	movl	$1, %edi
	call	usage
.L101:
	.loc 2 550 21
	movl	$0, %edi
	call	umask@PLT
	.loc 2 550 19
	movl	%eax, umask_value(%rip)
.L100:
	.loc 2 553 7
	movzbl	recurse(%rip), %eax
	.loc 2 553 6
	testb	%al, %al
	je	.L102
	.loc 2 553 15 discriminator 1
	cmpb	$0, -94(%rbp)
	je	.L102
.LBB13:
	.loc 2 556 22
	leaq	dev_ino_buf.6466(%rip), %rdi
	call	get_root_dev_ino@PLT
	.loc 2 556 20
	movq	%rax, root_dev_ino(%rip)
	.loc 2 557 24
	movq	root_dev_ino(%rip), %rax
	.loc 2 557 10
	testq	%rax, %rax
	jne	.L107
.LBB14:
	.loc 2 558 9
	leaq	.LC38(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC64(%rip), %rdi
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
.L102:
.LBE14:
.LBE13:
	.loc 2 563 20
	movq	$0, root_dev_ino(%rip)
	jmp	.L104
.L107:
	.loc 2 554 5
	nop
.L104:
	.loc 2 566 28
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 566 8
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	$1041, %esi
	movq	%rax, %rdi
	call	process_files
	movb	%al, -93(%rbp)
	.loc 2 569 3
	movq	change(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 571 28
	movzbl	-93(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 572 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L106
	call	__stack_chk_fail@PLT
.L106:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	main, .-main
	.local	dev_ino_buf.6466
	.comm	dev_ino_buf.6466,16,16
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
	.file 29 "./lib/i-ring.h"
	.file 30 "./lib/fts_.h"
	.file 31 "/usr/include/dirent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1183
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF245
	.byte	0xc
	.long	.LASF246
	.long	.LASF247
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
	.long	.LASF68
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
	.long	.LASF248
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
	.byte	0x9
	.byte	0x45
	.byte	0x12
	.long	0xa8
	.uleb128 0x2
	.long	.LASF67
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xd8
	.uleb128 0x9
	.long	.LASF69
	.byte	0x10
	.byte	0xb
	.byte	0xa
	.byte	0x8
	.long	0x3e9
	.uleb128 0xa
	.long	.LASF70
	.byte	0xb
	.byte	0xc
	.byte	0xc
	.long	0xd8
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0xb
	.byte	0x10
	.byte	0x15
	.long	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF72
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF73
	.uleb128 0xf
	.long	.LASF74
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF75
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF76
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF77
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF78
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x46f
	.uleb128 0xa
	.long	.LASF79
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x302
	.byte	0
	.uleb128 0xa
	.long	.LASF80
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF81
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x474
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
	.long	0x42d
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0x108
	.long	0x48a
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF82
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x47a
	.uleb128 0xf
	.long	.LASF83
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF84
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF85
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x47a
	.uleb128 0xf
	.long	.LASF86
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF87
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF88
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF89
	.byte	0x90
	.byte	0x10
	.byte	0x2e
	.byte	0x8
	.long	0x5b0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x10
	.byte	0x30
	.byte	0xd
	.long	0x78
	.byte	0
	.uleb128 0xa
	.long	.LASF91
	.byte	0x10
	.byte	0x35
	.byte	0xd
	.long	0x9c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF92
	.byte	0x10
	.byte	0x3d
	.byte	0xf
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF93
	.byte	0x10
	.byte	0x3e
	.byte	0xe
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF94
	.byte	0x10
	.byte	0x40
	.byte	0xd
	.long	0x84
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF95
	.byte	0x10
	.byte	0x41
	.byte	0xd
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF96
	.byte	0x10
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF97
	.byte	0x10
	.byte	0x45
	.byte	0xd
	.long	0x78
	.byte	0x28
	.uleb128 0xa
	.long	.LASF98
	.byte	0x10
	.byte	0x4a
	.byte	0xd
	.long	0xc0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF99
	.byte	0x10
	.byte	0x4e
	.byte	0x11
	.long	0xe4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF100
	.byte	0x10
	.byte	0x50
	.byte	0x10
	.long	0xf0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF101
	.byte	0x10
	.byte	0x5b
	.byte	0x15
	.long	0x3c1
	.byte	0x48
	.uleb128 0xa
	.long	.LASF102
	.byte	0x10
	.byte	0x5c
	.byte	0x15
	.long	0x3c1
	.byte	0x58
	.uleb128 0xa
	.long	.LASF103
	.byte	0x10
	.byte	0x5d
	.byte	0x15
	.long	0x3c1
	.byte	0x68
	.uleb128 0xa
	.long	.LASF104
	.byte	0x10
	.byte	0x6a
	.byte	0x17
	.long	0x5b5
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x4df
	.uleb128 0xd
	.long	0xfc
	.long	0x5c5
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x5c5
	.uleb128 0xd
	.long	0x308
	.long	0x5dc
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5cc
	.uleb128 0x11
	.long	.LASF105
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x5dc
	.uleb128 0x11
	.long	.LASF106
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x5dc
	.uleb128 0x11
	.long	.LASF107
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x608
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0x11
	.long	.LASF108
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x608
	.uleb128 0xf
	.long	.LASF109
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF110
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF111
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0x302
	.uleb128 0xf
	.long	.LASF112
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x14
	.string	"DIR"
	.byte	0x1f
	.byte	0x7f
	.byte	0x1c
	.long	0x657
	.uleb128 0xc
	.long	.LASF113
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x674
	.uleb128 0x16
	.long	.LASF114
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x689
	.uleb128 0x17
	.long	.LASF115
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x6a7
	.uleb128 0x19
	.long	.LASF116
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF117
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x115
	.long	0x6b2
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x6a7
	.uleb128 0xf
	.long	.LASF118
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x6b2
	.uleb128 0xf
	.long	.LASF119
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0x302
	.uleb128 0x1a
	.long	.LASF182
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x724
	.uleb128 0x17
	.long	.LASF120
	.byte	0
	.uleb128 0x17
	.long	.LASF121
	.byte	0x1
	.uleb128 0x17
	.long	.LASF122
	.byte	0x2
	.uleb128 0x17
	.long	.LASF123
	.byte	0x3
	.uleb128 0x17
	.long	.LASF124
	.byte	0x4
	.uleb128 0x17
	.long	.LASF125
	.byte	0x5
	.uleb128 0x17
	.long	.LASF126
	.byte	0x6
	.uleb128 0x17
	.long	.LASF127
	.byte	0x7
	.uleb128 0x17
	.long	.LASF128
	.byte	0x8
	.uleb128 0x17
	.long	.LASF129
	.byte	0x9
	.uleb128 0x17
	.long	.LASF130
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x6cf
	.uleb128 0x11
	.long	.LASF131
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x34e
	.uleb128 0xd
	.long	0x724
	.long	0x741
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x736
	.uleb128 0x11
	.long	.LASF132
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x741
	.uleb128 0x9
	.long	.LASF133
	.byte	0x10
	.byte	0x1a
	.byte	0x19
	.byte	0x8
	.long	0x77b
	.uleb128 0xa
	.long	.LASF91
	.byte	0x1a
	.byte	0x1b
	.byte	0x9
	.long	0x391
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1a
	.byte	0x1c
	.byte	0x9
	.long	0x39d
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF134
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x5c6
	.uleb128 0xf
	.long	.LASF135
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF136
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF137
	.uleb128 0xf
	.long	.LASF138
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x79f
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1d
	.byte	0x14
	.byte	0x6
	.long	0x7c5
	.uleb128 0x17
	.long	.LASF139
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF140
	.byte	0x20
	.byte	0x1d
	.byte	0x1f
	.byte	0x8
	.long	0x814
	.uleb128 0xa
	.long	.LASF141
	.byte	0x1d
	.byte	0x21
	.byte	0x7
	.long	0x814
	.byte	0
	.uleb128 0xa
	.long	.LASF142
	.byte	0x1d
	.byte	0x22
	.byte	0x7
	.long	0x65
	.byte	0x10
	.uleb128 0xa
	.long	.LASF143
	.byte	0x1d
	.byte	0x23
	.byte	0x10
	.long	0x40
	.byte	0x14
	.uleb128 0xa
	.long	.LASF144
	.byte	0x1d
	.byte	0x24
	.byte	0x10
	.long	0x40
	.byte	0x18
	.uleb128 0xa
	.long	.LASF145
	.byte	0x1d
	.byte	0x25
	.byte	0x8
	.long	0x824
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.long	0x65
	.long	0x824
	.uleb128 0xe
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF146
	.uleb128 0x2
	.long	.LASF140
	.byte	0x1d
	.byte	0x27
	.byte	0x17
	.long	0x7c5
	.uleb128 0x1b
	.byte	0x8
	.byte	0x1e
	.byte	0xab
	.byte	0x9
	.long	0x858
	.uleb128 0x1c
	.string	"ht"
	.byte	0x1e
	.byte	0xb8
	.byte	0x24
	.long	0x85d
	.uleb128 0x1d
	.long	.LASF147
	.byte	0x1e
	.byte	0xbe
	.byte	0x2b
	.long	0x868
	.byte	0
	.uleb128 0xc
	.long	.LASF148
	.uleb128 0x7
	.byte	0x8
	.long	0x858
	.uleb128 0xc
	.long	.LASF149
	.uleb128 0x7
	.byte	0x8
	.long	0x863
	.uleb128 0x1e
	.byte	0x80
	.byte	0x1e
	.byte	0x50
	.byte	0x9
	.long	0x92e
	.uleb128 0xa
	.long	.LASF150
	.byte	0x1e
	.byte	0x51
	.byte	0x19
	.long	0xa3a
	.byte	0
	.uleb128 0xa
	.long	.LASF151
	.byte	0x1e
	.byte	0x52
	.byte	0x19
	.long	0xa3a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1e
	.byte	0x53
	.byte	0x1a
	.long	0xa40
	.byte	0x10
	.uleb128 0xa
	.long	.LASF153
	.byte	0x1e
	.byte	0x54
	.byte	0xf
	.long	0x39d
	.byte	0x18
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1e
	.byte	0x55
	.byte	0xf
	.long	0x108
	.byte	0x20
	.uleb128 0xa
	.long	.LASF155
	.byte	0x1e
	.byte	0x56
	.byte	0xd
	.long	0x65
	.byte	0x28
	.uleb128 0xa
	.long	.LASF156
	.byte	0x1e
	.byte	0x57
	.byte	0xd
	.long	0x65
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF157
	.byte	0x1e
	.byte	0x59
	.byte	0x10
	.long	0x2d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF158
	.byte	0x1e
	.byte	0x5a
	.byte	0x10
	.long	0x2d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF159
	.byte	0x1e
	.byte	0x5b
	.byte	0xf
	.long	0xa66
	.byte	0x40
	.uleb128 0xa
	.long	.LASF160
	.byte	0x1e
	.byte	0xa0
	.byte	0xd
	.long	0x65
	.byte	0x48
	.uleb128 0xa
	.long	.LASF161
	.byte	0x1e
	.byte	0xa9
	.byte	0x1c
	.long	0x85d
	.byte	0x50
	.uleb128 0xa
	.long	.LASF162
	.byte	0x1e
	.byte	0xbf
	.byte	0xb
	.long	0x837
	.byte	0x58
	.uleb128 0xa
	.long	.LASF163
	.byte	0x1e
	.byte	0xc4
	.byte	0x10
	.long	0x82b
	.byte	0x60
	.byte	0
	.uleb128 0x1f
	.long	.LASF164
	.value	0x100
	.byte	0x1e
	.byte	0xc7
	.byte	0x10
	.long	0xa35
	.uleb128 0xa
	.long	.LASF162
	.byte	0x1e
	.byte	0xc8
	.byte	0x19
	.long	0xa3a
	.byte	0
	.uleb128 0xa
	.long	.LASF165
	.byte	0x1e
	.byte	0xc9
	.byte	0x19
	.long	0xa3a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF166
	.byte	0x1e
	.byte	0xca
	.byte	0x19
	.long	0xa3a
	.byte	0x10
	.uleb128 0xa
	.long	.LASF167
	.byte	0x1e
	.byte	0xcb
	.byte	0xe
	.long	0xa78
	.byte	0x18
	.uleb128 0xa
	.long	.LASF168
	.byte	0x1e
	.byte	0xce
	.byte	0xe
	.long	0x71
	.byte	0x20
	.uleb128 0xa
	.long	.LASF169
	.byte	0x1e
	.byte	0xcf
	.byte	0xf
	.long	0x47
	.byte	0x28
	.uleb128 0xa
	.long	.LASF170
	.byte	0x1e
	.byte	0xd0
	.byte	0xf
	.long	0x108
	.byte	0x30
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1e
	.byte	0xd1
	.byte	0xf
	.long	0x108
	.byte	0x38
	.uleb128 0xa
	.long	.LASF171
	.byte	0x1e
	.byte	0xd2
	.byte	0xd
	.long	0x65
	.byte	0x40
	.uleb128 0xa
	.long	.LASF172
	.byte	0x1e
	.byte	0xd3
	.byte	0xd
	.long	0x65
	.byte	0x44
	.uleb128 0xa
	.long	.LASF157
	.byte	0x1e
	.byte	0xd4
	.byte	0x10
	.long	0x2d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF173
	.byte	0x1e
	.byte	0xd6
	.byte	0xe
	.long	0xa7e
	.byte	0x50
	.uleb128 0xa
	.long	.LASF174
	.byte	0x1e
	.byte	0xda
	.byte	0x13
	.long	0x377
	.byte	0x58
	.uleb128 0xa
	.long	.LASF175
	.byte	0x1e
	.byte	0xdc
	.byte	0x10
	.long	0x2d
	.byte	0x60
	.uleb128 0xa
	.long	.LASF176
	.byte	0x1e
	.byte	0xec
	.byte	0x1c
	.long	0x50
	.byte	0x68
	.uleb128 0xa
	.long	.LASF177
	.byte	0x1e
	.byte	0xf0
	.byte	0x1c
	.long	0x50
	.byte	0x6a
	.uleb128 0xa
	.long	.LASF178
	.byte	0x1e
	.byte	0xf6
	.byte	0x1c
	.long	0x50
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF179
	.byte	0x1e
	.byte	0xf8
	.byte	0x15
	.long	0xa84
	.byte	0x70
	.uleb128 0x20
	.long	.LASF180
	.byte	0x1e
	.byte	0xf9
	.byte	0xe
	.long	0xa94
	.value	0x100
	.byte	0
	.uleb128 0x8
	.long	0x92e
	.uleb128 0x7
	.byte	0x8
	.long	0x92e
	.uleb128 0x7
	.byte	0x8
	.long	0xa3a
	.uleb128 0x21
	.long	0x65
	.long	0xa5a
	.uleb128 0x22
	.long	0xa5a
	.uleb128 0x22
	.long	0xa5a
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa60
	.uleb128 0x7
	.byte	0x8
	.long	0xa35
	.uleb128 0x7
	.byte	0x8
	.long	0xa46
	.uleb128 0x14
	.string	"FTS"
	.byte	0x1e
	.byte	0xc5
	.byte	0x3
	.long	0x86e
	.uleb128 0x7
	.byte	0x8
	.long	0x64b
	.uleb128 0x7
	.byte	0x8
	.long	0xa6c
	.uleb128 0xd
	.long	0x4df
	.long	0xa94
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x10e
	.long	0xaa3
	.uleb128 0x23
	.long	0x39
	.byte	0
	.uleb128 0x2
	.long	.LASF181
	.byte	0x1e
	.byte	0xfa
	.byte	0x3
	.long	0x92e
	.uleb128 0x1a
	.long	.LASF183
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x2a
	.byte	0x6
	.long	0xada
	.uleb128 0x17
	.long	.LASF184
	.byte	0
	.uleb128 0x17
	.long	.LASF185
	.byte	0x1
	.uleb128 0x17
	.long	.LASF186
	.byte	0x2
	.uleb128 0x17
	.long	.LASF187
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	.LASF188
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x32
	.byte	0x6
	.long	0xaff
	.uleb128 0x17
	.long	.LASF189
	.byte	0
	.uleb128 0x17
	.long	.LASF190
	.byte	0x1
	.uleb128 0x17
	.long	.LASF191
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	.LASF192
	.uleb128 0x24
	.long	.LASF193
	.byte	0x2
	.byte	0x3f
	.byte	0x1c
	.long	0xb1a
	.uleb128 0x9
	.byte	0x3
	.quad	change
	.uleb128 0x7
	.byte	0x8
	.long	0xaff
	.uleb128 0x24
	.long	.LASF194
	.byte	0x2
	.byte	0x42
	.byte	0xf
	.long	0x3a9
	.uleb128 0x9
	.byte	0x3
	.quad	umask_value
	.uleb128 0x24
	.long	.LASF195
	.byte	0x2
	.byte	0x45
	.byte	0xd
	.long	0x824
	.uleb128 0x9
	.byte	0x3
	.quad	recurse
	.uleb128 0x24
	.long	.LASF196
	.byte	0x2
	.byte	0x48
	.byte	0xd
	.long	0x824
	.uleb128 0x9
	.byte	0x3
	.quad	force_silent
	.uleb128 0x24
	.long	.LASF197
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.long	0x824
	.uleb128 0x9
	.byte	0x3
	.quad	diagnose_surprises
	.uleb128 0x24
	.long	.LASF198
	.byte	0x2
	.byte	0x50
	.byte	0x17
	.long	0xada
	.uleb128 0x9
	.byte	0x3
	.quad	verbosity
	.uleb128 0x24
	.long	.LASF199
	.byte	0x2
	.byte	0x54
	.byte	0x18
	.long	0xba4
	.uleb128 0x9
	.byte	0x3
	.quad	root_dev_ino
	.uleb128 0x7
	.byte	0x8
	.long	0x753
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x59
	.byte	0x1
	.long	0xbcb
	.uleb128 0x17
	.long	.LASF200
	.byte	0x80
	.uleb128 0x17
	.long	.LASF201
	.byte	0x81
	.uleb128 0x17
	.long	.LASF202
	.byte	0x82
	.byte	0
	.uleb128 0xd
	.long	0x46f
	.long	0xbdb
	.uleb128 0xe
	.long	0x39
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0xbcb
	.uleb128 0x24
	.long	.LASF203
	.byte	0x2
	.byte	0x5f
	.byte	0x1c
	.long	0xbdb
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x25
	.long	.LASF215
	.byte	0x2
	.value	0x19f
	.byte	0x1
	.long	0x65
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xd63
	.uleb128 0x26
	.long	.LASF204
	.byte	0x2
	.value	0x19f
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x26
	.long	.LASF205
	.byte	0x2
	.value	0x19f
	.byte	0x18
	.long	0x608
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.long	.LASF206
	.byte	0x2
	.value	0x1a1
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF207
	.byte	0x2
	.value	0x1a2
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF208
	.byte	0x2
	.value	0x1a3
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"ok"
	.byte	0x2
	.value	0x1a4
	.byte	0x8
	.long	0x824
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x27
	.long	.LASF209
	.byte	0x2
	.value	0x1a5
	.byte	0x8
	.long	0x824
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x27
	.long	.LASF210
	.byte	0x2
	.value	0x1a6
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"c"
	.byte	0x2
	.value	0x1a7
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xd17
	.uleb128 0x28
	.string	"arg"
	.byte	0x2
	.value	0x1d4
	.byte	0x19
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF211
	.byte	0x2
	.value	0x1d5
	.byte	0x14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF212
	.byte	0x2
	.value	0x1d6
	.byte	0x14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF213
	.byte	0x2
	.value	0x1d7
	.byte	0x14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.byte	0
	.uleb128 0x2a
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x27
	.long	.LASF214
	.byte	0x2
	.value	0x22b
	.byte	0x1d
	.long	0x753
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_buf.6466
	.uleb128 0x2a
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF216
	.byte	0x2
	.value	0x170
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xd93
	.uleb128 0x26
	.long	.LASF217
	.byte	0x2
	.value	0x170
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2d
	.long	.LASF220
	.byte	0x2
	.value	0x14c
	.byte	0x1
	.long	0x824
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0e
	.uleb128 0x26
	.long	.LASF218
	.byte	0x2
	.value	0x14c
	.byte	0x17
	.long	0x608
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF219
	.byte	0x2
	.value	0x14c
	.byte	0x22
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.string	"ok"
	.byte	0x2
	.value	0x14e
	.byte	0x8
	.long	0x824
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x28
	.string	"fts"
	.byte	0x2
	.value	0x150
	.byte	0x8
	.long	0xa7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.uleb128 0x28
	.string	"ent"
	.byte	0x2
	.value	0x154
	.byte	0xf
	.long	0xe0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xaa3
	.uleb128 0x2f
	.long	.LASF221
	.byte	0x2
	.byte	0xbc
	.byte	0x1
	.long	0x824
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xf8e
	.uleb128 0x30
	.string	"fts"
	.byte	0x2
	.byte	0xbc
	.byte	0x14
	.long	0xa7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.string	"ent"
	.byte	0x2
	.byte	0xbc
	.byte	0x21
	.long	0xe0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.long	.LASF222
	.byte	0x2
	.byte	0xbe
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF223
	.byte	0x2
	.byte	0xbf
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF224
	.byte	0x2
	.byte	0xc0
	.byte	0x16
	.long	0xf8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF225
	.byte	0x2
	.byte	0xc1
	.byte	0xa
	.long	0x3a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.long	.LASF226
	.byte	0x2
	.byte	0xc2
	.byte	0xa
	.long	0x3a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x31
	.string	"ok"
	.byte	0x2
	.byte	0xc3
	.byte	0x8
	.long	0x824
	.uleb128 0x3
	.byte	0x91
	.sleb128 -131
	.uleb128 0x24
	.long	.LASF227
	.byte	0x2
	.byte	0xc4
	.byte	0x8
	.long	0x824
	.uleb128 0x3
	.byte	0x91
	.sleb128 -130
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xeec
	.uleb128 0x28
	.string	"__x"
	.byte	0x2
	.value	0x105
	.byte	0x7
	.long	0xe0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xf36
	.uleb128 0x27
	.long	.LASF228
	.byte	0x2
	.value	0x11f
	.byte	0xc
	.long	0x824
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.uleb128 0x2b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x27
	.long	.LASF229
	.byte	0x2
	.value	0x125
	.byte	0x1e
	.long	0xaaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x27
	.long	.LASF230
	.byte	0x2
	.value	0x130
	.byte	0xe
	.long	0x3a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x27
	.long	.LASF231
	.byte	0x2
	.value	0x134
	.byte	0x10
	.long	0xf94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF232
	.byte	0x2
	.value	0x135
	.byte	0x10
	.long	0xf94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5b0
	.uleb128 0xd
	.long	0x10e
	.long	0xfa4
	.uleb128 0xe
	.long	0x39
	.byte	0xb
	.byte	0
	.uleb128 0x32
	.long	.LASF238
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x1031
	.uleb128 0x33
	.long	.LASF223
	.byte	0x2
	.byte	0x8e
	.byte	0x1e
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.long	.LASF225
	.byte	0x2
	.byte	0x8e
	.byte	0x2b
	.long	0x3a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x33
	.long	.LASF206
	.byte	0x2
	.byte	0x8e
	.byte	0x3c
	.long	0x3a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.long	.LASF228
	.byte	0x2
	.byte	0x8f
	.byte	0x25
	.long	0xaaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.long	.LASF233
	.byte	0x2
	.byte	0x91
	.byte	0x8
	.long	0xf94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF234
	.byte	0x2
	.byte	0x92
	.byte	0x8
	.long	0xf94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"fmt"
	.byte	0x2
	.byte	0x93
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2f
	.long	.LASF235
	.byte	0x2
	.byte	0x72
	.byte	0x1
	.long	0x824
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x10c6
	.uleb128 0x33
	.long	.LASF236
	.byte	0x2
	.byte	0x72
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x33
	.long	.LASF223
	.byte	0x2
	.byte	0x72
	.byte	0x27
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x33
	.long	.LASF222
	.byte	0x2
	.byte	0x72
	.byte	0x39
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x33
	.long	.LASF225
	.byte	0x2
	.byte	0x73
	.byte	0x16
	.long	0x3a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x33
	.long	.LASF226
	.byte	0x2
	.byte	0x73
	.byte	0x27
	.long	0x3a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x24
	.long	.LASF237
	.byte	0x2
	.byte	0x7a
	.byte	0x13
	.long	0x4df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF239
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x116b
	.uleb128 0x26
	.long	.LASF240
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x35
	.long	.LASF241
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1121
	.uleb128 0x36
	.long	.LASF240
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x302
	.byte	0
	.uleb128 0x36
	.long	.LASF242
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x302
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x10f6
	.uleb128 0x27
	.long	.LASF241
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x117b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF242
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.long	.LASF243
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1180
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x27
	.long	.LASF244
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x1121
	.long	0x117b
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x116b
	.uleb128 0x7
	.byte	0x8
	.long	0x1121
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF191:
	.string	"V_off"
.LASF104:
	.string	"__glibc_reserved"
.LASF103:
	.string	"st_ctim"
.LASF7:
	.string	"size_t"
.LASF228:
	.string	"changed"
.LASF116:
	.string	"GETOPT_HELP_CHAR"
.LASF171:
	.string	"fts_errno"
.LASF219:
	.string	"bit_flags"
.LASF99:
	.string	"st_blksize"
.LASF100:
	.string	"st_blocks"
.LASF52:
	.string	"_IO_codecvt"
.LASF32:
	.string	"_IO_save_end"
.LASF245:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF65:
	.string	"dev_t"
.LASF10:
	.string	"__gid_t"
.LASF229:
	.string	"ch_status"
.LASF158:
	.string	"fts_nitems"
.LASF105:
	.string	"_sys_siglist"
.LASF102:
	.string	"st_mtim"
.LASF67:
	.string	"time_t"
.LASF169:
	.string	"fts_pointer"
.LASF25:
	.string	"_IO_write_base"
.LASF147:
	.string	"state"
.LASF214:
	.string	"dev_ino_buf"
.LASF136:
	.string	"error_one_per_line"
.LASF41:
	.string	"_lock"
.LASF89:
	.string	"stat"
.LASF82:
	.string	"__tzname"
.LASF30:
	.string	"_IO_save_base"
.LASF207:
	.string	"mode_len"
.LASF34:
	.string	"_chain"
.LASF38:
	.string	"_cur_column"
.LASF57:
	.string	"sys_nerr"
.LASF226:
	.string	"new_mode"
.LASF8:
	.string	"__dev_t"
.LASF236:
	.string	"dir_fd"
.LASF59:
	.string	"_sys_nerr"
.LASF193:
	.string	"change"
.LASF163:
	.string	"fts_fd_ring"
.LASF148:
	.string	"hash_table"
.LASF107:
	.string	"__environ"
.LASF6:
	.string	"long int"
.LASF80:
	.string	"has_arg"
.LASF51:
	.string	"_IO_marker"
.LASF224:
	.string	"file_stats"
.LASF215:
	.string	"main"
.LASF177:
	.string	"fts_flags"
.LASF160:
	.string	"fts_options"
.LASF186:
	.string	"CH_FAILED"
.LASF4:
	.string	"signed char"
.LASF17:
	.string	"__blksize_t"
.LASF150:
	.string	"fts_cur"
.LASF68:
	.string	"_IO_FILE"
.LASF84:
	.string	"__timezone"
.LASF53:
	.string	"_IO_wide_data"
.LASF94:
	.string	"st_uid"
.LASF154:
	.string	"fts_path"
.LASF152:
	.string	"fts_array"
.LASF234:
	.string	"old_perms"
.LASF131:
	.string	"quoting_style_args"
.LASF108:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF45:
	.string	"_freeres_list"
.LASF97:
	.string	"st_rdev"
.LASF235:
	.string	"mode_changed"
.LASF239:
	.string	"emit_ancillary_info"
.LASF135:
	.string	"error_message_count"
.LASF19:
	.string	"__syscall_slong_t"
.LASF146:
	.string	"_Bool"
.LASF20:
	.string	"char"
.LASF248:
	.string	"_IO_lock_t"
.LASF156:
	.string	"fts_cwd_fd"
.LASF87:
	.string	"timezone"
.LASF124:
	.string	"shell_escape_always_quoting_style"
.LASF12:
	.string	"__mode_t"
.LASF22:
	.string	"_IO_read_ptr"
.LASF183:
	.string	"Change_status"
.LASF61:
	.string	"ptrdiff_t"
.LASF184:
	.string	"CH_NOT_APPLIED"
.LASF54:
	.string	"stdin"
.LASF143:
	.string	"ir_front"
.LASF58:
	.string	"sys_errlist"
.LASF33:
	.string	"_markers"
.LASF119:
	.string	"program_name"
.LASF223:
	.string	"file"
.LASF187:
	.string	"CH_NO_CHANGE_REQUESTED"
.LASF246:
	.string	"src/chmod.c"
.LASF159:
	.string	"fts_compar"
.LASF145:
	.string	"ir_empty"
.LASF126:
	.string	"c_maybe_quoting_style"
.LASF242:
	.string	"node"
.LASF109:
	.string	"program_invocation_name"
.LASF42:
	.string	"_offset"
.LASF203:
	.string	"long_options"
.LASF95:
	.string	"st_gid"
.LASF151:
	.string	"fts_child"
.LASF75:
	.string	"optind"
.LASF113:
	.string	"__dirstream"
.LASF64:
	.string	"ino_t"
.LASF129:
	.string	"clocale_quoting_style"
.LASF134:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF144:
	.string	"ir_back"
.LASF217:
	.string	"status"
.LASF36:
	.string	"_flags2"
.LASF98:
	.string	"st_size"
.LASF24:
	.string	"_IO_read_base"
.LASF78:
	.string	"option"
.LASF49:
	.string	"_unused2"
.LASF238:
	.string	"describe_change"
.LASF204:
	.string	"argc"
.LASF37:
	.string	"_old_offset"
.LASF241:
	.string	"infomap"
.LASF205:
	.string	"argv"
.LASF18:
	.string	"__blkcnt_t"
.LASF121:
	.string	"shell_quoting_style"
.LASF11:
	.string	"__ino_t"
.LASF62:
	.string	"long long int"
.LASF172:
	.string	"fts_symfd"
.LASF240:
	.string	"program"
.LASF111:
	.string	"Version"
.LASF112:
	.string	"exit_failure"
.LASF72:
	.string	"_gl_cxxalias_dummy"
.LASF125:
	.string	"c_quoting_style"
.LASF27:
	.string	"_IO_write_end"
.LASF181:
	.string	"FTSENT"
.LASF220:
	.string	"process_files"
.LASF106:
	.string	"sys_siglist"
.LASF149:
	.string	"cycle_check_state"
.LASF211:
	.string	"arg_len"
.LASF165:
	.string	"fts_parent"
.LASF117:
	.string	"GETOPT_VERSION_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF1:
	.string	"unsigned int"
.LASF118:
	.string	"version_etc_copyright"
.LASF202:
	.string	"REFERENCE_FILE_OPTION"
.LASF132:
	.string	"quoting_style_vals"
.LASF232:
	.string	"naively_expected_perms"
.LASF120:
	.string	"literal_quoting_style"
.LASF96:
	.string	"__pad0"
.LASF85:
	.string	"tzname"
.LASF47:
	.string	"__pad5"
.LASF81:
	.string	"flag"
.LASF196:
	.string	"force_silent"
.LASF139:
	.string	"I_RING_SIZE"
.LASF137:
	.string	"quoting_options"
.LASF21:
	.string	"_flags"
.LASF244:
	.string	"lc_messages"
.LASF138:
	.string	"quote_quoting_options"
.LASF166:
	.string	"fts_link"
.LASF208:
	.string	"mode_alloc"
.LASF48:
	.string	"_mode"
.LASF227:
	.string	"chmod_succeeded"
.LASF43:
	.string	"_codecvt"
.LASF115:
	.string	"LOG10_TIMESPEC_HZ"
.LASF92:
	.string	"st_nlink"
.LASF66:
	.string	"mode_t"
.LASF179:
	.string	"fts_statp"
.LASF194:
	.string	"umask_value"
.LASF221:
	.string	"process_file"
.LASF63:
	.string	"long double"
.LASF50:
	.string	"FILE"
.LASF90:
	.string	"st_dev"
.LASF69:
	.string	"timespec"
.LASF77:
	.string	"optopt"
.LASF128:
	.string	"locale_quoting_style"
.LASF213:
	.string	"new_mode_len"
.LASF73:
	.string	"long long unsigned int"
.LASF14:
	.string	"__off_t"
.LASF167:
	.string	"fts_dirp"
.LASF182:
	.string	"quoting_style"
.LASF110:
	.string	"program_invocation_short_name"
.LASF201:
	.string	"PRESERVE_ROOT"
.LASF46:
	.string	"_freeres_buf"
.LASF155:
	.string	"fts_rfd"
.LASF76:
	.string	"opterr"
.LASF237:
	.string	"new_stats"
.LASF247:
	.string	"/root/coreutils"
.LASF16:
	.string	"__time_t"
.LASF164:
	.string	"_ftsent"
.LASF140:
	.string	"I_ring"
.LASF185:
	.string	"CH_SUCCEEDED"
.LASF31:
	.string	"_IO_backup_base"
.LASF40:
	.string	"_shortbuf"
.LASF188:
	.string	"Verbosity"
.LASF189:
	.string	"V_high"
.LASF122:
	.string	"shell_always_quoting_style"
.LASF133:
	.string	"dev_ino"
.LASF15:
	.string	"__off64_t"
.LASF162:
	.string	"fts_cycle"
.LASF173:
	.string	"fts_fts"
.LASF178:
	.string	"fts_instr"
.LASF127:
	.string	"escape_quoting_style"
.LASF225:
	.string	"old_mode"
.LASF29:
	.string	"_IO_buf_end"
.LASF168:
	.string	"fts_number"
.LASF157:
	.string	"fts_pathlen"
.LASF79:
	.string	"name"
.LASF243:
	.string	"map_prog"
.LASF56:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF197:
	.string	"diagnose_surprises"
.LASF195:
	.string	"recurse"
.LASF206:
	.string	"mode"
.LASF71:
	.string	"tv_nsec"
.LASF216:
	.string	"usage"
.LASF198:
	.string	"verbosity"
.LASF123:
	.string	"shell_escape_quoting_style"
.LASF199:
	.string	"root_dev_ino"
.LASF39:
	.string	"_vtable_offset"
.LASF176:
	.string	"fts_info"
.LASF233:
	.string	"perms"
.LASF60:
	.string	"_sys_errlist"
.LASF161:
	.string	"fts_leaf_optimization_works_ht"
.LASF114:
	.string	"TIMESPEC_HZ"
.LASF230:
	.string	"naively_expected_mode"
.LASF83:
	.string	"__daylight"
.LASF192:
	.string	"mode_change"
.LASF174:
	.string	"fts_level"
.LASF93:
	.string	"st_mode"
.LASF9:
	.string	"__uid_t"
.LASF153:
	.string	"fts_dev"
.LASF23:
	.string	"_IO_read_end"
.LASF200:
	.string	"NO_PRESERVE_ROOT"
.LASF88:
	.string	"getdate_err"
.LASF222:
	.string	"file_full_name"
.LASF170:
	.string	"fts_accpath"
.LASF35:
	.string	"_fileno"
.LASF44:
	.string	"_wide_data"
.LASF74:
	.string	"optarg"
.LASF3:
	.string	"short unsigned int"
.LASF55:
	.string	"stdout"
.LASF218:
	.string	"files"
.LASF26:
	.string	"_IO_write_ptr"
.LASF175:
	.string	"fts_namelen"
.LASF190:
	.string	"V_changes_only"
.LASF86:
	.string	"daylight"
.LASF91:
	.string	"st_ino"
.LASF231:
	.string	"new_perms"
.LASF13:
	.string	"__nlink_t"
.LASF180:
	.string	"fts_name"
.LASF209:
	.string	"preserve_root"
.LASF141:
	.string	"ir_data"
.LASF70:
	.string	"tv_sec"
.LASF210:
	.string	"reference_file"
.LASF130:
	.string	"custom_quoting_style"
.LASF101:
	.string	"st_atim"
.LASF212:
	.string	"mode_comma_len"
.LASF142:
	.string	"ir_default_val"
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
