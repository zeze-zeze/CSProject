	.file	"realpath.c"
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
	.data
	.type	verbose, @object
	.size	verbose, 1
verbose:
	.byte	1
	.local	logical
	.comm	logical,1,1
	.local	use_nuls
	.comm	use_nuls,1,1
	.local	can_relative_to
	.comm	can_relative_to,8,8
	.local	can_relative_base
	.comm	can_relative_base,8,8
	.section	.rodata
.LC18:
	.string	"canonicalize-existing"
.LC19:
	.string	"canonicalize-missing"
.LC20:
	.string	"relative-to"
.LC21:
	.string	"relative-base"
.LC22:
	.string	"quiet"
.LC23:
	.string	"strip"
.LC24:
	.string	"no-symlinks"
.LC25:
	.string	"zero"
.LC26:
	.string	"logical"
.LC27:
	.string	"physical"
.LC28:
	.string	"help"
.LC29:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 416
longopts:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	101
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	109
	.zero	4
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	76
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	80
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC29
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
.LC30:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC31:
	.string	"Usage: %s [OPTION]... FILE...\n"
	.align 8
.LC32:
	.string	"Print the resolved absolute file name;\nall but the last component must exist\n\n"
	.align 8
.LC33:
	.ascii	"  -e, --canonicalize-existing  all components of the path mu"
	.ascii	"st exist\n  -m, --canonicalize-missing   no path components "
	.ascii	"need exist or be a directory\n  -L, --logical               "
	.ascii	" resolve '..' components before symlinks\n  -P, --physical  "
	.ascii	"             resolve symlinks as encountered (default)\n  -q"
	.ascii	", --quiet                  suppress most error messages\n   "
	.ascii	"   --relative-"
	.string	"to=DIR        print the resolved path relative to DIR\n      --relative-base=DIR      print absolute paths unless paths below DIR\n  -s, --strip, --no-symlinks   don't expand symlinks\n  -z, --zero                   end each output line with NUL, not newline\n"
	.align 8
.LC34:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC35:
	.string	"      --version  output version information and exit\n"
.LC36:
	.string	"realpath"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/realpath.c"
	.loc 2 66 1 is_stmt 1
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
	.loc 2 67 6
	cmpl	$0, -20(%rbp)
	je	.L11
	.loc 2 68 5
	movq	program_name(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L12
.L11:
	.loc 2 71 7
	movq	program_name(%rip), %rbx
	.loc 2 71 15
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 71 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 72 7
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 77 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 89 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 90 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 91 7
	leaq	.LC36(%rip), %rdi
	call	emit_ancillary_info
.L12:
	.loc 2 93 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	realpath_canon, @function
realpath_canon:
.LFB47:
	.loc 2 100 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 2 101 21
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	canonicalize_filename_mode@PLT
	movq	%rax, -16(%rbp)
	.loc 2 102 7
	movzbl	logical(%rip), %eax
	.loc 2 102 6
	testb	%al, %al
	je	.L14
	.loc 2 102 15 discriminator 1
	cmpq	$0, -16(%rbp)
	je	.L14
.LBB2:
	.loc 2 104 16
	andl	$-5, -28(%rbp)
	.loc 2 105 26
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	canonicalize_filename_mode@PLT
	movq	%rax, -8(%rbp)
	.loc 2 106 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 107 14
	movq	-8(%rbp), %rax
	jmp	.L15
.L14:
.LBE2:
	.loc 2 109 10
	movq	-16(%rbp), %rax
.L15:
	.loc 2 110 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	realpath_canon, .-realpath_canon
	.type	path_prefix, @function
path_prefix:
.LFB48:
	.loc 2 115 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 117 9
	addq	$1, -8(%rbp)
	.loc 2 118 7
	addq	$1, -16(%rbp)
	.loc 2 122 8
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 122 6
	testb	%al, %al
	jne	.L17
	.loc 2 123 12
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 123 18
	cmpb	$47, %al
	setne	%al
	jmp	.L18
.L17:
	.loc 2 126 7
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 126 6
	cmpb	$47, %al
	jne	.L20
	.loc 2 126 32 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 126 22 discriminator 1
	testb	%al, %al
	jne	.L20
	.loc 2 127 12
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 127 18
	cmpb	$47, %al
	sete	%al
	jmp	.L18
.L23:
	.loc 2 132 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 2 132 22
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 132 10
	cmpb	%al, %dl
	jne	.L27
	.loc 2 134 13
	addq	$1, -8(%rbp)
	.loc 2 135 11
	addq	$1, -16(%rbp)
.L20:
	.loc 2 130 10
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 130 9
	testb	%al, %al
	je	.L22
	.loc 2 130 21 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 130 18 discriminator 1
	testb	%al, %al
	jne	.L23
	jmp	.L22
.L27:
	.loc 2 133 9
	nop
.L22:
	.loc 2 137 12
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 137 20
	testb	%al, %al
	jne	.L24
	.loc 2 137 24 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 137 20 discriminator 1
	cmpb	$47, %al
	je	.L25
	.loc 2 137 41 discriminator 4
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 137 37 discriminator 4
	testb	%al, %al
	jne	.L24
.L25:
	.loc 2 137 20 discriminator 5
	movl	$1, %eax
	jmp	.L26
.L24:
	.loc 2 137 20 is_stmt 0 discriminator 6
	movl	$0, %eax
.L26:
	.loc 2 137 20 discriminator 8
	andl	$1, %eax
.L18:
	.loc 2 138 1 is_stmt 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	path_prefix, .-path_prefix
	.section	.rodata
.LC37:
	.string	"cannot stat %s"
	.text
	.type	isdir, @function
isdir:
.LFB49:
	.loc 2 142 1
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
	movq	%rdi, -184(%rbp)
	.loc 2 142 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 144 7
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 144 6
	testl	%eax, %eax
	je	.L29
.LBB3:
	.loc 2 145 5
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC37(%rip), %rdi
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
.L29:
.LBE3:
	.loc 2 146 10
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	sete	%al
	.loc 2 147 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	isdir, .-isdir
	.section	.rodata
.LC38:
	.string	"%s"
	.text
	.type	process_path, @function
process_path:
.LFB50:
	.loc 2 151 1
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
	movl	%esi, -44(%rbp)
	.loc 2 152 21
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	realpath_canon
	movq	%rax, -24(%rbp)
	.loc 2 153 6
	cmpq	$0, -24(%rbp)
	jne	.L33
	.loc 2 155 11
	movzbl	verbose(%rip), %eax
	.loc 2 155 10
	testb	%al, %al
	je	.L34
	.loc 2 156 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 156 19
	call	__errno_location@PLT
	.loc 2 156 9
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC38(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L34:
	.loc 2 157 14
	movl	$0, %eax
	jmp	.L35
.L33:
	.loc 2 160 7
	movq	can_relative_to(%rip), %rax
	.loc 2 160 6
	testq	%rax, %rax
	je	.L36
	.loc 2 161 11
	movq	can_relative_base(%rip), %rax
	.loc 2 161 7
	testq	%rax, %rax
	je	.L37
	.loc 2 161 33 discriminator 1
	movq	can_relative_base(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	path_prefix
	.loc 2 161 32 discriminator 1
	xorl	$1, %eax
	.loc 2 161 29 discriminator 1
	testb	%al, %al
	jne	.L36
.L37:
	.loc 2 162 11
	movq	can_relative_to(%rip), %rax
	.loc 2 162 7
	testq	%rax, %rax
	je	.L38
	.loc 2 162 31 discriminator 1
	movq	can_relative_to(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	relpath@PLT
	.loc 2 162 30 discriminator 1
	xorl	$1, %eax
	.loc 2 162 27 discriminator 1
	testb	%al, %al
	je	.L38
.L36:
	.loc 2 163 5
	movq	stdout(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L38:
	.loc 2 165 3
	movzbl	use_nuls(%rip), %eax
	testb	%al, %al
	je	.L39
	.loc 2 165 3 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L40
.L39:
	.loc 2 165 3 discriminator 2
	movl	$10, %eax
.L40:
	.loc 2 165 3 discriminator 4
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 167 3 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 169 10 discriminator 4
	movl	$1, %eax
.L35:
	.loc 2 170 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	process_path, .-process_path
	.section	.rodata
.LC39:
	.string	"/usr/local/share/locale"
.LC40:
	.string	"eLmPqsz"
.LC41:
	.string	"Padraig Brady"
.LC42:
	.string	"missing operand"
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 2 174 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 175 8
	movb	$1, -50(%rbp)
	.loc 2 176 7
	movl	$1, -48(%rbp)
	.loc 2 177 15
	movq	$0, -40(%rbp)
	.loc 2 178 15
	movq	$0, -32(%rbp)
	.loc 2 181 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 182 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 183 3
	leaq	.LC39(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 184 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 186 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
.L59:
.LBB4:
	.loc 2 190 15
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -44(%rbp)
	.loc 2 191 10
	cmpl	$-1, -44(%rbp)
	je	.L73
	.loc 2 193 7
	cmpl	$129, -44(%rbp)
	jg	.L44
	cmpl	$76, -44(%rbp)
	jge	.L45
	cmpl	$-131, -44(%rbp)
	je	.L46
	cmpl	$-130, -44(%rbp)
	je	.L47
	jmp	.L44
.L45:
	movl	-44(%rbp), %eax
	subl	$76, %eax
	cmpl	$53, %eax
	ja	.L44
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L49(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L49(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L49:
	.long	.L57-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L56-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L55-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L54-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L53-.L49
	.long	.L44-.L49
	.long	.L52-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L51-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L44-.L49
	.long	.L50-.L49
	.long	.L48-.L49
	.text
.L55:
	.loc 2 196 20
	andl	$-4, -48(%rbp)
	.loc 2 198 11
	jmp	.L58
.L54:
	.loc 2 200 20
	andl	$-4, -48(%rbp)
	.loc 2 201 20
	orl	$2, -48(%rbp)
	.loc 2 202 11
	jmp	.L58
.L57:
	.loc 2 204 20
	orl	$4, -48(%rbp)
	.loc 2 205 19
	movb	$1, logical(%rip)
	.loc 2 206 11
	jmp	.L58
.L52:
	.loc 2 208 20
	orl	$4, -48(%rbp)
	.loc 2 209 19
	movb	$0, logical(%rip)
	.loc 2 210 11
	jmp	.L58
.L56:
	.loc 2 212 20
	andl	$-5, -48(%rbp)
	.loc 2 213 19
	movb	$0, logical(%rip)
	.loc 2 214 11
	jmp	.L58
.L53:
	.loc 2 216 19
	movb	$0, verbose(%rip)
	.loc 2 217 11
	jmp	.L58
.L51:
	.loc 2 219 20
	movb	$1, use_nuls(%rip)
	.loc 2 220 11
	jmp	.L58
.L50:
	.loc 2 222 23
	movq	optarg(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 223 11
	jmp	.L58
.L48:
	.loc 2 225 25
	movq	optarg(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 226 11
	jmp	.L58
.L47:
	.loc 2 227 9
	movl	$0, %edi
	call	usage
.L46:
	.loc 2 228 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC41(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L44:
	.loc 2 230 11
	movl	$1, %edi
	call	usage
.L58:
.LBE4:
	.loc 2 189 5
	jmp	.L59
.L73:
.LBB5:
	.loc 2 192 9
	nop
.LBE5:
	.loc 2 234 14
	movl	optind(%rip), %eax
	.loc 2 234 6
	cmpl	%eax, -68(%rbp)
	jg	.L60
	.loc 2 236 20
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	.loc 2 236 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 237 7
	movl	$1, %edi
	call	usage
.L60:
	.loc 2 240 6
	cmpq	$0, -32(%rbp)
	je	.L61
	.loc 2 240 21 discriminator 1
	cmpq	$0, -40(%rbp)
	jne	.L61
	.loc 2 241 17
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.L61:
	.loc 2 243 29
	movl	-48(%rbp), %eax
	andl	$3, %eax
	.loc 2 243 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -49(%rbp)
	.loc 2 244 6
	cmpq	$0, -40(%rbp)
	je	.L62
	.loc 2 246 25
	movl	-48(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	realpath_canon
	.loc 2 246 23
	movq	%rax, can_relative_to(%rip)
	.loc 2 247 11
	movq	can_relative_to(%rip), %rax
	.loc 2 247 10
	testq	%rax, %rax
	jne	.L63
.LBB6:
	.loc 2 248 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC38(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L63:
.LBE6:
	.loc 2 249 10
	cmpb	$0, -49(%rbp)
	je	.L62
	.loc 2 249 24 discriminator 1
	movq	can_relative_to(%rip), %rax
	movq	%rax, %rdi
	call	isdir
	.loc 2 249 23 discriminator 1
	xorl	$1, %eax
	.loc 2 249 20 discriminator 1
	testb	%al, %al
	je	.L62
.LBB7:
	.loc 2 250 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rcx
	leaq	.LC38(%rip), %rdx
	movl	$20, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L62:
.LBE7:
	.loc 2 252 6
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L64
	.loc 2 253 23
	movq	can_relative_to(%rip), %rax
	movq	%rax, can_relative_base(%rip)
	jmp	.L69
.L64:
	.loc 2 254 11
	cmpq	$0, -32(%rbp)
	je	.L69
.LBB8:
	.loc 2 256 20
	movl	-48(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	realpath_canon
	movq	%rax, -24(%rbp)
	.loc 2 257 10
	cmpq	$0, -24(%rbp)
	jne	.L66
.LBB9:
	.loc 2 258 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC38(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L66:
.LBE9:
	.loc 2 259 10
	cmpb	$0, -49(%rbp)
	je	.L67
	.loc 2 259 24 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	isdir
	.loc 2 259 23 discriminator 1
	xorl	$1, %eax
	.loc 2 259 20 discriminator 1
	testb	%al, %al
	je	.L67
.LBB10:
	.loc 2 260 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rcx
	leaq	.LC38(%rip), %rdx
	movl	$20, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L67:
.LBE10:
	.loc 2 263 11
	movq	can_relative_to(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	path_prefix
	.loc 2 263 10
	testb	%al, %al
	je	.L68
	.loc 2 264 27
	movq	-24(%rbp), %rax
	movq	%rax, can_relative_base(%rip)
	jmp	.L69
.L68:
	.loc 2 267 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 268 29
	movq	can_relative_to(%rip), %rax
	movq	%rax, can_relative_base(%rip)
	.loc 2 269 27
	movq	$0, can_relative_to(%rip)
.LBE8:
	.loc 2 273 3
	jmp	.L69
.L70:
	.loc 2 274 29 discriminator 2
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 274 11 discriminator 2
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	process_path
	.loc 2 274 8 discriminator 2
	movzbl	-50(%rbp), %edx
	.loc 2 274 11 discriminator 2
	movzbl	%al, %eax
	.loc 2 274 8 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -50(%rbp)
	.loc 2 273 25 discriminator 2
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L69:
	.loc 2 273 17 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 273 3 discriminator 1
	cmpl	%eax, -68(%rbp)
	jg	.L70
	.loc 2 276 28
	movzbl	-50(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 277 1
	addq	$72, %rsp
	popq	%rbx
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
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 13 "./lib/sys/select.h"
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
	.file 25 "./lib/canonicalize.h"
	.file 26 "./lib/error.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb63
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF170
	.byte	0xc
	.long	.LASF171
	.long	.LASF172
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
	.long	.LASF28
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
	.byte	0x91
	.byte	0x19
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
	.byte	0x94
	.byte	0x19
	.long	0xdf
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.byte	0x96
	.byte	0x1a
	.long	0xe6
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.byte	0x97
	.byte	0x1b
	.long	0xdf
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x10b
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x10b
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x10b
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.byte	0xae
	.byte	0x1d
	.long	0x10b
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.byte	0xb3
	.byte	0x1c
	.long	0x10b
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.byte	0xc4
	.byte	0x21
	.long	0x10b
	.uleb128 0x8
	.long	.LASF29
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x329
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x342
	.byte	0x60
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x348
	.byte	0x68
	.uleb128 0x9
	.long	.LASF44
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF45
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x15a
	.byte	0x78
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0xf6
	.byte	0x80
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0xfd
	.byte	0x82
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x34e
	.byte	0x83
	.uleb128 0x9
	.long	.LASF50
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x35e
	.byte	0x88
	.uleb128 0x9
	.long	.LASF51
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x166
	.byte	0x90
	.uleb128 0x9
	.long	.LASF52
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x369
	.byte	0x98
	.uleb128 0x9
	.long	.LASF53
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x374
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF54
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x348
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF55
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xed
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xd3
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF57
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x37a
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF59
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x1a2
	.uleb128 0xd
	.long	.LASF173
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF60
	.uleb128 0x3
	.byte	0x8
	.long	0x33d
	.uleb128 0x3
	.byte	0x8
	.long	0x1a2
	.uleb128 0xf
	.long	0x3f
	.long	0x35e
	.uleb128 0x10
	.long	0xdf
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x335
	.uleb128 0xe
	.long	.LASF61
	.uleb128 0x3
	.byte	0x8
	.long	0x364
	.uleb128 0xe
	.long	.LASF62
	.uleb128 0x3
	.byte	0x8
	.long	0x36f
	.uleb128 0xf
	.long	0x3f
	.long	0x38a
	.uleb128 0x10
	.long	0xdf
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x396
	.uleb128 0x3
	.byte	0x8
	.long	0x329
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x396
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x396
	.uleb128 0x2
	.long	.LASF66
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xc8
	.long	0x3cb
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x3c0
	.uleb128 0x2
	.long	.LASF67
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x3cb
	.uleb128 0x2
	.long	.LASF68
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF69
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x3cb
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF70
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF71
	.uleb128 0xb
	.long	.LASF72
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x172
	.uleb128 0x8
	.long	.LASF73
	.byte	0x10
	.byte	0xc
	.byte	0xa
	.byte	0x8
	.long	0x436
	.uleb128 0x9
	.long	.LASF74
	.byte	0xc
	.byte	0xc
	.byte	0xc
	.long	0x172
	.byte	0
	.uleb128 0x9
	.long	.LASF75
	.byte	0xc
	.byte	0x10
	.byte	0x15
	.long	0x196
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF76
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF77
	.uleb128 0xf
	.long	0x39
	.long	0x45a
	.uleb128 0x10
	.long	0xdf
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x44a
	.uleb128 0x2
	.long	.LASF79
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF80
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x10b
	.uleb128 0x2
	.long	.LASF81
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x44a
	.uleb128 0x2
	.long	.LASF82
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF83
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x10b
	.uleb128 0x12
	.long	.LASF84
	.byte	0xe
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x8
	.long	.LASF85
	.byte	0x90
	.byte	0xf
	.byte	0x2e
	.byte	0x8
	.long	0x580
	.uleb128 0x9
	.long	.LASF86
	.byte	0xf
	.byte	0x30
	.byte	0xd
	.long	0x112
	.byte	0
	.uleb128 0x9
	.long	.LASF87
	.byte	0xf
	.byte	0x35
	.byte	0xd
	.long	0x136
	.byte	0x8
	.uleb128 0x9
	.long	.LASF88
	.byte	0xf
	.byte	0x3d
	.byte	0xf
	.long	0x14e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF89
	.byte	0xf
	.byte	0x3e
	.byte	0xe
	.long	0x142
	.byte	0x18
	.uleb128 0x9
	.long	.LASF90
	.byte	0xf
	.byte	0x40
	.byte	0xd
	.long	0x11e
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF91
	.byte	0xf
	.byte	0x41
	.byte	0xd
	.long	0x12a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF92
	.byte	0xf
	.byte	0x43
	.byte	0x9
	.long	0x57
	.byte	0x24
	.uleb128 0x9
	.long	.LASF93
	.byte	0xf
	.byte	0x45
	.byte	0xd
	.long	0x112
	.byte	0x28
	.uleb128 0x9
	.long	.LASF94
	.byte	0xf
	.byte	0x4a
	.byte	0xd
	.long	0x15a
	.byte	0x30
	.uleb128 0x9
	.long	.LASF95
	.byte	0xf
	.byte	0x4e
	.byte	0x11
	.long	0x17e
	.byte	0x38
	.uleb128 0x9
	.long	.LASF96
	.byte	0xf
	.byte	0x50
	.byte	0x10
	.long	0x18a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF97
	.byte	0xf
	.byte	0x5b
	.byte	0x15
	.long	0x40e
	.byte	0x48
	.uleb128 0x9
	.long	.LASF98
	.byte	0xf
	.byte	0x5c
	.byte	0x15
	.long	0x40e
	.byte	0x58
	.uleb128 0x9
	.long	.LASF99
	.byte	0xf
	.byte	0x5d
	.byte	0x15
	.long	0x40e
	.byte	0x68
	.uleb128 0x9
	.long	.LASF100
	.byte	0xf
	.byte	0x6a
	.byte	0x17
	.long	0x580
	.byte	0x78
	.byte	0
	.uleb128 0xf
	.long	0x196
	.long	0x590
	.uleb128 0x10
	.long	0xdf
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x3
	.byte	0x8
	.long	0x590
	.uleb128 0xf
	.long	0xc8
	.long	0x5a7
	.uleb128 0x10
	.long	0xdf
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x597
	.uleb128 0x12
	.long	.LASF101
	.byte	0x10
	.value	0x11e
	.byte	0x1a
	.long	0x5a7
	.uleb128 0x12
	.long	.LASF102
	.byte	0x10
	.value	0x11f
	.byte	0x1a
	.long	0x5a7
	.uleb128 0x12
	.long	.LASF103
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x5d3
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x12
	.long	.LASF104
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x5d3
	.uleb128 0x2
	.long	.LASF105
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF106
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF107
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF108
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x15
	.byte	0x29
	.byte	0x6
	.long	0x62e
	.uleb128 0x15
	.long	.LASF109
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x643
	.uleb128 0x16
	.long	.LASF110
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x661
	.uleb128 0x18
	.long	.LASF111
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF112
	.sleb128 -131
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0x66c
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x661
	.uleb128 0x2
	.long	.LASF113
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x66c
	.uleb128 0x2
	.long	.LASF114
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x19
	.long	.LASF128
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x6de
	.uleb128 0x16
	.long	.LASF115
	.byte	0
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.uleb128 0x16
	.long	.LASF117
	.byte	0x2
	.uleb128 0x16
	.long	.LASF118
	.byte	0x3
	.uleb128 0x16
	.long	.LASF119
	.byte	0x4
	.uleb128 0x16
	.long	.LASF120
	.byte	0x5
	.uleb128 0x16
	.long	.LASF121
	.byte	0x6
	.uleb128 0x16
	.long	.LASF122
	.byte	0x7
	.uleb128 0x16
	.long	.LASF123
	.byte	0x8
	.uleb128 0x16
	.long	.LASF124
	.byte	0x9
	.uleb128 0x16
	.long	.LASF125
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x689
	.uleb128 0x12
	.long	.LASF126
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x3cb
	.uleb128 0xf
	.long	0x6de
	.long	0x6fb
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x6f0
	.uleb128 0x12
	.long	.LASF127
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x6fb
	.uleb128 0x19
	.long	.LASF129
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x19
	.byte	0x1c
	.byte	0x6
	.long	0x738
	.uleb128 0x16
	.long	.LASF130
	.byte	0
	.uleb128 0x16
	.long	.LASF131
	.byte	0x1
	.uleb128 0x16
	.long	.LASF132
	.byte	0x2
	.uleb128 0x16
	.long	.LASF133
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF134
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x591
	.uleb128 0x2
	.long	.LASF135
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0xe6
	.uleb128 0x2
	.long	.LASF136
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0x24
	.byte	0x1
	.long	0x777
	.uleb128 0x16
	.long	.LASF137
	.byte	0x80
	.uleb128 0x16
	.long	.LASF138
	.byte	0x81
	.byte	0
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x2
	.byte	0x29
	.byte	0xd
	.long	0x78d
	.uleb128 0x9
	.byte	0x3
	.quad	verbose
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF139
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x2
	.byte	0x2a
	.byte	0xd
	.long	0x78d
	.uleb128 0x9
	.byte	0x3
	.quad	logical
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x2
	.byte	0x2b
	.byte	0xd
	.long	0x78d
	.uleb128 0x9
	.byte	0x3
	.quad	use_nuls
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	can_relative_to
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x2
	.byte	0x2d
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	can_relative_base
	.uleb128 0xf
	.long	0xbd
	.long	0x7fc
	.uleb128 0x10
	.long	0xdf
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.long	0x7ec
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x2
	.byte	0x2f
	.byte	0x1c
	.long	0x7fc
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1b
	.long	.LASF162
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.long	0x57
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x923
	.uleb128 0x1c
	.long	.LASF146
	.byte	0x2
	.byte	0xad
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x2
	.byte	0xad
	.byte	0x18
	.long	0x5d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.string	"ok"
	.byte	0x2
	.byte	0xaf
	.byte	0x8
	.long	0x78d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x1a
	.long	.LASF148
	.byte	0x2
	.byte	0xb0
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x2
	.byte	0xb1
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x2
	.byte	0xb2
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x2
	.byte	0xf3
	.byte	0x8
	.long	0x78d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0
	.long	0x8bc
	.uleb128 0x1d
	.string	"c"
	.byte	0x2
	.byte	0xbe
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x20
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x21
	.long	.LASF152
	.byte	0x2
	.value	0x100
	.byte	0xd
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF155
	.byte	0x2
	.byte	0x96
	.byte	0x1
	.long	0x78d
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x973
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x2
	.byte	0x96
	.byte	0x1b
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF148
	.byte	0x2
	.byte	0x96
	.byte	0x26
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x2
	.byte	0x98
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF156
	.byte	0x2
	.byte	0x8d
	.byte	0x1
	.long	0x78d
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c6
	.uleb128 0x1c
	.long	.LASF157
	.byte	0x2
	.byte	0x8d
	.byte	0x14
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1d
	.string	"sb"
	.byte	0x2
	.byte	0x8f
	.byte	0xf
	.long	0x4af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.uleb128 0x23
	.long	.LASF158
	.byte	0x2
	.byte	0x72
	.byte	0x1
	.long	0x78d
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xa07
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x2
	.byte	0x72
	.byte	0x1a
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF157
	.byte	0x2
	.byte	0x72
	.byte	0x2e
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF160
	.byte	0x2
	.byte	0x63
	.byte	0x1
	.long	0x39
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xa78
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x2
	.byte	0x63
	.byte	0x1d
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF148
	.byte	0x2
	.byte	0x63
	.byte	0x28
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x2
	.byte	0x65
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x2
	.byte	0x69
	.byte	0xd
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF163
	.byte	0x2
	.byte	0x41
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa6
	.uleb128 0x1c
	.long	.LASF164
	.byte	0x2
	.byte	0x41
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF174
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xb4b
	.uleb128 0x26
	.long	.LASF165
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.long	.LASF166
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xb01
	.uleb128 0x28
	.long	.LASF165
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x28
	.long	.LASF167
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xad6
	.uleb128 0x21
	.long	.LASF166
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xb5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF167
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF168
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xb60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF169
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xf
	.long	0xb01
	.long	0xb5b
	.uleb128 0x10
	.long	0xdf
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0xb4b
	.uleb128 0x3
	.byte	0x8
	.long	0xb01
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF108:
	.string	"exit_failure"
.LASF22:
	.string	"__off_t"
.LASF18:
	.string	"__gid_t"
.LASF31:
	.string	"_IO_read_ptr"
.LASF123:
	.string	"locale_quoting_style"
.LASF43:
	.string	"_chain"
.LASF99:
	.string	"st_ctim"
.LASF112:
	.string	"GETOPT_VERSION_CHAR"
.LASF145:
	.string	"longopts"
.LASF128:
	.string	"quoting_style"
.LASF15:
	.string	"size_t"
.LASF110:
	.string	"LOG10_TIMESPEC_HZ"
.LASF49:
	.string	"_shortbuf"
.LASF117:
	.string	"shell_always_quoting_style"
.LASF116:
	.string	"shell_quoting_style"
.LASF111:
	.string	"GETOPT_HELP_CHAR"
.LASF157:
	.string	"path"
.LASF37:
	.string	"_IO_buf_base"
.LASF77:
	.string	"long long unsigned int"
.LASF143:
	.string	"can_relative_to"
.LASF64:
	.string	"stdout"
.LASF52:
	.string	"_codecvt"
.LASF85:
	.string	"stat"
.LASF70:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF127:
	.string	"quoting_style_vals"
.LASF87:
	.string	"st_ino"
.LASF165:
	.string	"program"
.LASF122:
	.string	"escape_quoting_style"
.LASF20:
	.string	"__mode_t"
.LASF131:
	.string	"CAN_ALL_BUT_LAST"
.LASF115:
	.string	"literal_quoting_style"
.LASF160:
	.string	"realpath_canon"
.LASF148:
	.string	"can_mode"
.LASF32:
	.string	"_IO_read_end"
.LASF80:
	.string	"__timezone"
.LASF26:
	.string	"__blkcnt_t"
.LASF102:
	.string	"sys_siglist"
.LASF14:
	.string	"long int"
.LASF76:
	.string	"_gl_cxxalias_dummy"
.LASF44:
	.string	"_fileno"
.LASF30:
	.string	"_flags"
.LASF53:
	.string	"_wide_data"
.LASF38:
	.string	"_IO_buf_end"
.LASF47:
	.string	"_cur_column"
.LASF106:
	.string	"program_invocation_short_name"
.LASF120:
	.string	"c_quoting_style"
.LASF61:
	.string	"_IO_codecvt"
.LASF69:
	.string	"_sys_errlist"
.LASF35:
	.string	"_IO_write_ptr"
.LASF105:
	.string	"program_invocation_name"
.LASF46:
	.string	"_old_offset"
.LASF51:
	.string	"_offset"
.LASF149:
	.string	"relative_to"
.LASF109:
	.string	"TIMESPEC_HZ"
.LASF92:
	.string	"__pad0"
.LASF119:
	.string	"shell_escape_always_quoting_style"
.LASF83:
	.string	"timezone"
.LASF96:
	.string	"st_blocks"
.LASF114:
	.string	"program_name"
.LASF90:
	.string	"st_uid"
.LASF60:
	.string	"_IO_marker"
.LASF63:
	.string	"stdin"
.LASF9:
	.string	"unsigned int"
.LASF55:
	.string	"_freeres_buf"
.LASF130:
	.string	"CAN_EXISTING"
.LASF154:
	.string	"can_fname"
.LASF8:
	.string	"long unsigned int"
.LASF137:
	.string	"RELATIVE_TO_OPTION"
.LASF5:
	.string	"name"
.LASF66:
	.string	"sys_nerr"
.LASF170:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF125:
	.string	"custom_quoting_style"
.LASF11:
	.string	"short unsigned int"
.LASF107:
	.string	"Version"
.LASF136:
	.string	"error_one_per_line"
.LASF150:
	.string	"relative_base"
.LASF39:
	.string	"_IO_save_base"
.LASF138:
	.string	"RELATIVE_BASE_OPTION"
.LASF21:
	.string	"__nlink_t"
.LASF104:
	.string	"environ"
.LASF50:
	.string	"_lock"
.LASF45:
	.string	"_flags2"
.LASF57:
	.string	"_mode"
.LASF153:
	.string	"fname"
.LASF94:
	.string	"st_size"
.LASF113:
	.string	"version_etc_copyright"
.LASF159:
	.string	"prefix"
.LASF89:
	.string	"st_mode"
.LASF0:
	.string	"optarg"
.LASF75:
	.string	"tv_nsec"
.LASF84:
	.string	"getdate_err"
.LASF16:
	.string	"__dev_t"
.LASF1:
	.string	"optind"
.LASF27:
	.string	"__syscall_slong_t"
.LASF132:
	.string	"CAN_MISSING"
.LASF36:
	.string	"_IO_write_end"
.LASF144:
	.string	"can_relative_base"
.LASF161:
	.string	"can_fname2"
.LASF173:
	.string	"_IO_lock_t"
.LASF29:
	.string	"_IO_FILE"
.LASF134:
	.string	"error_print_progname"
.LASF158:
	.string	"path_prefix"
.LASF25:
	.string	"__blksize_t"
.LASF168:
	.string	"map_prog"
.LASF103:
	.string	"__environ"
.LASF72:
	.string	"time_t"
.LASF65:
	.string	"stderr"
.LASF67:
	.string	"sys_errlist"
.LASF42:
	.string	"_markers"
.LASF100:
	.string	"__glibc_reserved"
.LASF152:
	.string	"base"
.LASF88:
	.string	"st_nlink"
.LASF121:
	.string	"c_maybe_quoting_style"
.LASF139:
	.string	"_Bool"
.LASF10:
	.string	"unsigned char"
.LASF155:
	.string	"process_path"
.LASF167:
	.string	"node"
.LASF171:
	.string	"src/realpath.c"
.LASF13:
	.string	"short int"
.LASF28:
	.string	"option"
.LASF95:
	.string	"st_blksize"
.LASF7:
	.string	"flag"
.LASF68:
	.string	"_sys_nerr"
.LASF73:
	.string	"timespec"
.LASF48:
	.string	"_vtable_offset"
.LASF81:
	.string	"tzname"
.LASF59:
	.string	"FILE"
.LASF118:
	.string	"shell_escape_quoting_style"
.LASF19:
	.string	"__ino_t"
.LASF126:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF82:
	.string	"daylight"
.LASF156:
	.string	"isdir"
.LASF93:
	.string	"st_rdev"
.LASF71:
	.string	"long double"
.LASF2:
	.string	"char"
.LASF147:
	.string	"argv"
.LASF74:
	.string	"tv_sec"
.LASF140:
	.string	"verbose"
.LASF142:
	.string	"use_nuls"
.LASF124:
	.string	"clocale_quoting_style"
.LASF3:
	.string	"opterr"
.LASF17:
	.string	"__uid_t"
.LASF133:
	.string	"CAN_NOLINKS"
.LASF23:
	.string	"__off64_t"
.LASF33:
	.string	"_IO_read_base"
.LASF41:
	.string	"_IO_save_end"
.LASF101:
	.string	"_sys_siglist"
.LASF166:
	.string	"infomap"
.LASF91:
	.string	"st_gid"
.LASF6:
	.string	"has_arg"
.LASF163:
	.string	"usage"
.LASF56:
	.string	"__pad5"
.LASF24:
	.string	"__time_t"
.LASF58:
	.string	"_unused2"
.LASF151:
	.string	"need_dir"
.LASF97:
	.string	"st_atim"
.LASF129:
	.string	"canonicalize_mode_t"
.LASF79:
	.string	"__daylight"
.LASF164:
	.string	"status"
.LASF172:
	.string	"/root/coreutils"
.LASF141:
	.string	"logical"
.LASF86:
	.string	"st_dev"
.LASF40:
	.string	"_IO_backup_base"
.LASF98:
	.string	"st_mtim"
.LASF135:
	.string	"error_message_count"
.LASF169:
	.string	"lc_messages"
.LASF146:
	.string	"argc"
.LASF54:
	.string	"_freeres_list"
.LASF62:
	.string	"_IO_wide_data"
.LASF78:
	.string	"__tzname"
.LASF162:
	.string	"main"
.LASF34:
	.string	"_IO_write_base"
.LASF174:
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
