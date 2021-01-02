	.file	"rm.c"
	.text
.Ltext0:
	.type	select_plural, @function
select_plural:
.LFB17:
	.file 1 "src/system.h"
	.loc 1 184 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 188 30
	movq	-8(%rbp), %rax
	.loc 1 189 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	select_plural, .-select_plural
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
	je	.L8
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L8
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L8:
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
	jne	.L9
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L10
.L9:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L10:
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
	.section	.rodata
.LC18:
	.string	"force"
.LC19:
	.string	"interactive"
.LC20:
	.string	"one-file-system"
.LC21:
	.string	"no-preserve-root"
.LC22:
	.string	"preserve-root"
.LC23:
	.string	"-presume-input-tty"
.LC24:
	.string	"recursive"
.LC25:
	.string	"dir"
.LC26:
	.string	"verbose"
.LC27:
	.string	"help"
.LC28:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_opts, @object
	.size	long_opts, 384
long_opts:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC22
	.long	2
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC28
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
.LC29:
	.string	"never"
.LC30:
	.string	"no"
.LC31:
	.string	"none"
.LC32:
	.string	"once"
.LC33:
	.string	"always"
.LC34:
	.string	"yes"
	.section	.data.rel.ro.local
	.align 32
	.type	interactive_args, @object
	.size	interactive_args, 56
interactive_args:
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	0
	.section	.rodata
	.align 16
	.type	interactive_types, @object
	.size	interactive_types, 24
interactive_types:
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	2
	.align 8
.LC35:
	.string	"Try '%s ./%s' to remove the file %s.\n"
	.text
	.type	diagnose_leading_hyphen, @function
diagnose_leading_hyphen:
.LFB48:
	.file 2 "src/rm.c"
	.loc 2 105 1 is_stmt 1
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
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	.loc 2 105 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
.LBB2:
	.loc 2 109 12
	movl	$1, -204(%rbp)
	.loc 2 109 3
	jmp	.L13
.L16:
.LBB3:
	.loc 2 111 29
	movl	-204(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 111 19
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	.loc 2 114 14
	movq	-200(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 114 10
	cmpb	$45, %al
	jne	.L14
	.loc 2 114 31 discriminator 1
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 114 25 discriminator 1
	testb	%al, %al
	je	.L14
	.loc 2 114 38 discriminator 2
	leaq	-192(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 2 114 35 discriminator 2
	testl	%eax, %eax
	jne	.L14
	.loc 2 116 11
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r13
	movq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-224(%rbp), %rax
	movq	(%rax), %rbx
	.loc 2 117 20
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 116 11
	movq	stderr(%rip), %rax
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.LBE3:
.LBE2:
	.loc 2 124 1
	jmp	.L18
.L14:
.LBB4:
	.loc 2 109 30
	addl	$1, -204(%rbp)
.L13:
	.loc 2 109 3 discriminator 1
	movl	-204(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jl	.L16
.L18:
.LBE4:
	.loc 2 124 1
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	diagnose_leading_hyphen, .-diagnose_leading_hyphen
	.section	.rodata
	.align 8
.LC36:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC37:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC38:
	.string	"Remove (unlink) the FILE(s).\n\n  -f, --force           ignore nonexistent files and arguments, never prompt\n  -i                    prompt before every removal\n"
	.align 8
.LC39:
	.ascii	"  -I                    prompt once before removing more tha"
	.ascii	"n three files, or\n                          when removing r"
	.string	"ecursively; less intrusive than -i,\n                          while still giving protection against most mistakes\n      --interactive[=WHEN]  prompt according to WHEN: never, once (-I), or\n                          always (-i); without WHEN, prompt always\n"
	.align 8
.LC40:
	.string	"      --one-file-system  when removing a hierarchy recursively, skip any\n                          directory that is on a file system different from\n                          that of the corresponding command line argument\n"
	.align 8
.LC41:
	.string	"      --no-preserve-root  do not treat '/' specially\n      --preserve-root[=all]  do not remove '/' (default);\n                              with 'all', reject any command line argument\n                              on a separate device from its parent\n"
	.align 8
.LC42:
	.string	"  -r, -R, --recursive   remove directories and their contents recursively\n  -d, --dir             remove empty directories\n  -v, --verbose         explain what is being done\n"
	.align 8
.LC43:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC44:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC45:
	.string	"\nBy default, rm does not remove directories.  Use the --recursive (-r or -R)\noption to remove each listed directory, too, along with all of its contents.\n"
	.align 8
.LC46:
	.string	"\nTo remove a file whose name starts with a '-', for example '-foo',\nuse one of these commands:\n  %s -- -foo\n\n  %s ./-foo\n"
	.align 8
.LC47:
	.string	"\nNote that if you use rm to remove a file, it might be possible to recover\nsome of its contents, given sufficient expertise and/or time.  For greater\nassurance that the contents are truly unrecoverable, consider using shred(1).\n"
.LC48:
	.string	"rm"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB49:
	.loc 2 128 1
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
	.loc 2 129 6
	cmpl	$0, -20(%rbp)
	je	.L20
	.loc 2 130 5
	movq	program_name(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L21
.L20:
	.loc 2 133 7
	movq	program_name(%rip), %rbx
	.loc 2 133 15
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 133 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 134 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 140 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 147 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 152 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 158 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 163 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 164 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 165 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 170 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 170 15
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	.loc 2 170 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 179 7
	movq	stdout(%rip), %rbx
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 185 7
	leaq	.LC48(%rip), %rdi
	call	emit_ancillary_info
.L21:
	.loc 2 187 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE49:
	.size	usage, .-usage
	.type	rm_option_init, @function
rm_option_init:
.LFB50:
	.loc 2 192 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 193 27
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 194 18
	movq	-8(%rbp), %rax
	movl	$4, 4(%rax)
	.loc 2 195 22
	movq	-8(%rbp), %rax
	movb	$0, 8(%rax)
	.loc 2 196 31
	movq	-8(%rbp), %rax
	movb	$0, 10(%rax)
	.loc 2 197 16
	movq	-8(%rbp), %rax
	movb	$0, 9(%rax)
	.loc 2 198 19
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 199 24
	movq	-8(%rbp), %rax
	movb	$0, 24(%rax)
	.loc 2 200 18
	movl	$0, %edi
	call	isatty@PLT
	testl	%eax, %eax
	setne	%dl
	.loc 2 200 16
	movq	-8(%rbp), %rax
	movb	%dl, 25(%rax)
	.loc 2 201 14
	movq	-8(%rbp), %rax
	movb	$0, 26(%rax)
	.loc 2 205 26
	movq	-8(%rbp), %rax
	movb	$0, 27(%rax)
	.loc 2 206 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	rm_option_init, .-rm_option_init
	.section	.rodata
.LC49:
	.string	"/usr/local/share/locale"
.LC50:
	.string	"--interactive"
.LC51:
	.string	"--no-preserve-root"
	.align 8
.LC52:
	.string	"you may not abbreviate the --no-preserve-root option"
.LC53:
	.string	"all"
	.align 8
.LC54:
	.string	"unrecognized --preserve-root argument: %s"
.LC55:
	.string	"David MacKenzie"
.LC56:
	.string	"Paul Rubin"
.LC57:
	.string	"Jim Meyering"
.LC58:
	.string	"Richard M. Stallman"
.LC59:
	.string	"dfirvIR"
.LC60:
	.string	"missing operand"
.LC61:
	.string	"/"
	.align 8
.LC62:
	.string	"failed to get attributes of %s"
	.align 8
.LC63:
	.string	"%s: remove %lu arguments recursively? "
	.align 8
.LC64:
	.string	"%s: remove %lu argument recursively? "
.LC65:
	.string	"%s: remove %lu arguments? "
.LC66:
	.string	"%s: remove %lu argument? "
.LC67:
	.string	"src/rm.c"
.LC68:
	.string	"VALID_STATUS (status)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 2 210 1
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
	.loc 2 210 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 211 8
	movb	$1, -94(%rbp)
	.loc 2 213 8
	movb	$0, -93(%rbp)
	.loc 2 217 3
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 218 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 219 3
	leaq	.LC49(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 220 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 222 3
	movq	close_stdin@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 224 3
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	rm_option_init
	.loc 2 227 3
	call	priv_set_remove_linkdir@PLT
	.loc 2 229 9
	jmp	.L24
.L50:
	.loc 2 231 7
	cmpl	$132, -88(%rbp)
	jg	.L25
	cmpl	$73, -88(%rbp)
	jge	.L26
	cmpl	$-131, -88(%rbp)
	je	.L27
	cmpl	$-130, -88(%rbp)
	je	.L28
	jmp	.L25
.L26:
	movl	-88(%rbp), %eax
	subl	$73, %eax
	cmpl	$59, %eax
	ja	.L25
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L30(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L30(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L30:
	.long	.L40-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L36-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L39-.L30
	.long	.L25-.L30
	.long	.L38-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L37-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L36-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L35-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L25-.L30
	.long	.L34-.L30
	.long	.L33-.L30
	.long	.L32-.L30
	.long	.L31-.L30
	.long	.L29-.L30
	.text
.L39:
	.loc 2 234 38
	movb	$1, -54(%rbp)
	.loc 2 235 11
	jmp	.L24
.L38:
	.loc 2 238 25
	movl	$5, -60(%rbp)
	.loc 2 239 34
	movb	$1, -64(%rbp)
	.loc 2 240 23
	movb	$0, -93(%rbp)
	.loc 2 241 11
	jmp	.L24
.L37:
	.loc 2 244 25
	movl	$3, -60(%rbp)
	.loc 2 245 34
	movb	$0, -64(%rbp)
	.loc 2 246 23
	movb	$0, -93(%rbp)
	.loc 2 247 11
	jmp	.L24
.L40:
	.loc 2 250 25
	movl	$4, -60(%rbp)
	.loc 2 251 34
	movb	$0, -64(%rbp)
	.loc 2 252 23
	movb	$1, -93(%rbp)
	.loc 2 253 11
	jmp	.L24
.L36:
	.loc 2 257 23
	movb	$1, -55(%rbp)
	.loc 2 258 11
	jmp	.L24
.L34:
.LBB5:
	.loc 2 263 17
	movq	optarg(%rip), %rax
	.loc 2 263 16
	testq	%rax, %rax
	je	.L41
	.loc 2 264 19
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	interactive_types(%rip), %rcx
	leaq	interactive_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC50(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	interactive_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 264 17
	movl	%eax, -92(%rbp)
	jmp	.L42
.L41:
	.loc 2 267 17
	movl	$2, -92(%rbp)
.L42:
	cmpl	$2, -92(%rbp)
	je	.L43
	cmpl	$2, -92(%rbp)
	jg	.L24
	cmpl	$0, -92(%rbp)
	je	.L45
	cmpl	$1, -92(%rbp)
	je	.L46
	jmp	.L24
.L45:
	.loc 2 271 31
	movl	$5, -60(%rbp)
	.loc 2 272 29
	movb	$0, -93(%rbp)
	.loc 2 273 17
	jmp	.L44
.L46:
	.loc 2 276 31
	movl	$4, -60(%rbp)
	.loc 2 277 40
	movb	$0, -64(%rbp)
	.loc 2 278 29
	movb	$1, -93(%rbp)
	.loc 2 279 17
	jmp	.L44
.L43:
	.loc 2 282 31
	movl	$3, -60(%rbp)
	.loc 2 283 40
	movb	$0, -64(%rbp)
	.loc 2 284 29
	movb	$0, -93(%rbp)
	.loc 2 285 17
	nop
.L44:
	.loc 2 287 13
	jmp	.L24
.L33:
.LBE5:
	.loc 2 291 29
	movb	$1, -56(%rbp)
	.loc 2 292 11
	jmp	.L24
.L32:
	.loc 2 295 17
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 295 14
	testl	%eax, %eax
	je	.L47
.LBB6:
	.loc 2 296 13
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L47:
.LBE6:
	.loc 2 298 25
	movb	$0, -94(%rbp)
	.loc 2 299 11
	jmp	.L24
.L31:
	.loc 2 302 15
	movq	optarg(%rip), %rax
	.loc 2 302 14
	testq	%rax, %rax
	je	.L48
	.loc 2 304 18
	movq	optarg(%rip), %rax
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L49
	.loc 2 305 37
	movb	$1, -40(%rbp)
	jmp	.L48
.L49:
.LBB7:
	.loc 2 308 19
	movq	optarg(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L48:
.LBE7:
	.loc 2 313 25
	movb	$1, -94(%rbp)
	.loc 2 314 11
	jmp	.L24
.L29:
	.loc 2 317 23
	movb	$1, -39(%rbp)
	.loc 2 318 11
	jmp	.L24
.L35:
	.loc 2 321 21
	movb	$1, -38(%rbp)
	.loc 2 322 11
	jmp	.L24
.L28:
	.loc 2 324 9
	movl	$0, %edi
	call	usage
.L27:
	.loc 2 325 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC57(%rip), %rcx
	pushq	%rcx
	leaq	.LC58(%rip), %rcx
	pushq	%rcx
	leaq	.LC55(%rip), %r9
	leaq	.LC56(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$32, %rsp
	movl	$0, %edi
	call	exit@PLT
.L25:
	.loc 2 327 11
	movq	-112(%rbp), %rdx
	movl	-100(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	diagnose_leading_hyphen
	.loc 2 328 11
	movl	$1, %edi
	call	usage
.L24:
	.loc 2 229 15
	movq	-112(%rbp), %rsi
	movl	-100(%rbp), %eax
	movl	$0, %r8d
	leaq	long_opts(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -88(%rbp)
	.loc 2 229 9
	cmpl	$-1, -88(%rbp)
	jne	.L50
	.loc 2 332 12
	movl	optind(%rip), %eax
	.loc 2 332 6
	cmpl	%eax, -100(%rbp)
	jg	.L51
	.loc 2 334 12
	movzbl	-64(%rbp), %eax
	.loc 2 334 10
	testb	%al, %al
	je	.L52
	.loc 2 335 16
	movl	$0, %eax
	jmp	.L60
.L52:
	.loc 2 338 24
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	.loc 2 338 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 339 11
	movl	$1, %edi
	call	usage
.L51:
	.loc 2 343 8
	movzbl	-55(%rbp), %eax
	.loc 2 343 6
	testb	%al, %al
	je	.L54
	.loc 2 343 19 discriminator 1
	cmpb	$0, -94(%rbp)
	je	.L54
.LBB8:
	.loc 2 346 24
	leaq	dev_ino_buf.6364(%rip), %rdi
	call	get_root_dev_ino@PLT
	.loc 2 346 22
	movq	%rax, -48(%rbp)
	.loc 2 347 12
	movq	-48(%rbp), %rax
	.loc 2 347 10
	testq	%rax, %rax
	jne	.L54
.LBB9:
	.loc 2 348 9
	leaq	.LC61(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC62(%rip), %rdi
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
.L54:
.LBE9:
.LBE8:
	.loc 2 352 28
	movl	optind(%rip), %eax
	movl	-100(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 352 13
	cltq
	movq	%rax, -80(%rbp)
	.loc 2 353 23
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 353 10
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 2 355 6
	cmpb	$0, -93(%rbp)
	je	.L55
	.loc 2 355 24 discriminator 1
	movzbl	-55(%rbp), %eax
	.loc 2 355 19 discriminator 1
	testb	%al, %al
	jne	.L56
	.loc 2 355 35 discriminator 2
	cmpq	$3, -80(%rbp)
	jbe	.L55
.L56:
	.loc 2 357 7
	movq	program_name(%rip), %rbx
	.loc 2 358 18
	movzbl	-55(%rbp), %eax
	.loc 2 357 7
	testb	%al, %al
	je	.L57
	.loc 2 359 19
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC63(%rip), %rsi
	leaq	.LC64(%rip), %rdi
	call	ngettext@PLT
	jmp	.L58
.L57:
	.loc 2 362 19
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rsi
	leaq	.LC66(%rip), %rdi
	call	ngettext@PLT
.L58:
	.loc 2 357 7
	movq	stderr(%rip), %rdi
	movq	-80(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 366 12
	call	yesno@PLT
	.loc 2 366 11
	xorl	$1, %eax
	.loc 2 366 10
	testb	%al, %al
	je	.L55
	.loc 2 367 16
	movl	$0, %eax
	jmp	.L60
.L55:
	.loc 2 370 27
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rm@PLT
	movl	%eax, -84(%rbp)
	.loc 2 371 3
	cmpl	$2, -84(%rbp)
	je	.L59
	.loc 2 371 3 is_stmt 0 discriminator 1
	cmpl	$3, -84(%rbp)
	je	.L59
	.loc 2 371 3 discriminator 2
	cmpl	$4, -84(%rbp)
	je	.L59
	.loc 2 371 3 discriminator 3
	leaq	__PRETTY_FUNCTION__.6370(%rip), %rcx
	movl	$371, %edx
	leaq	.LC67(%rip), %rsi
	leaq	.LC68(%rip), %rdi
	call	__assert_fail@PLT
.L59:
	.loc 2 372 44 is_stmt 1
	cmpl	$4, -84(%rbp)
	sete	%al
	movzbl	%al, %eax
.L60:
	.loc 2 373 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L61
	.loc 2 373 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L61:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	main, .-main
	.local	dev_ino_buf.6364
	.comm	dev_ino_buf.6364,16,16
	.section	.rodata
	.type	__PRETTY_FUNCTION__.6370, @object
	.size	__PRETTY_FUNCTION__.6370, 5
__PRETTY_FUNCTION__.6370:
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
	.file 22 "/usr/include/stdint.h"
	.file 23 "./lib/timespec.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/quote.h"
	.file 28 "./lib/argmatch.h"
	.file 29 "./lib/error.h"
	.file 30 "./lib/dev-ino.h"
	.file 31 "src/remove.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcb3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF194
	.byte	0xc
	.long	.LASF195
	.long	.LASF196
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
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x91
	.byte	0x19
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
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x71
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x71
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x8
	.long	0x11a
	.uleb128 0x9
	.long	.LASF67
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x2ad
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x114
	.byte	0x8
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x114
	.byte	0x10
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x114
	.byte	0x20
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x114
	.byte	0x28
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x114
	.byte	0x30
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x114
	.byte	0x38
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x114
	.byte	0x40
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x114
	.byte	0x48
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x114
	.byte	0x50
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x114
	.byte	0x58
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2c6
	.byte	0x60
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2cc
	.byte	0x68
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xcc
	.byte	0x78
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2d2
	.byte	0x83
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2e2
	.byte	0x88
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xd8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2ed
	.byte	0x98
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2f8
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2cc
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2fe
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x126
	.uleb128 0xb
	.long	.LASF197
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x7
	.byte	0x8
	.long	0x2c1
	.uleb128 0x7
	.byte	0x8
	.long	0x126
	.uleb128 0xd
	.long	0x11a
	.long	0x2e2
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2b9
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2e8
	.uleb128 0xc
	.long	.LASF54
	.uleb128 0x7
	.byte	0x8
	.long	0x2f3
	.uleb128 0xd
	.long	0x11a
	.long	0x30e
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x121
	.uleb128 0x8
	.long	0x30e
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x325
	.uleb128 0x7
	.byte	0x8
	.long	0x2ad
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x325
	.uleb128 0xf
	.long	.LASF57
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x325
	.uleb128 0xf
	.long	.LASF58
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x314
	.long	0x35a
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x34f
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x35a
	.uleb128 0xf
	.long	.LASF60
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x35a
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
	.long	0xa8
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x3b
	.byte	0x11
	.long	0x84
	.uleb128 0x2
	.long	.LASF66
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xe4
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
	.long	0xe4
	.byte	0
	.uleb128 0xa
	.long	.LASF70
	.byte	0xb
	.byte	0x10
	.byte	0x15
	.long	0x108
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
	.long	0x114
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
	.long	0x30e
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
	.uleb128 0xd
	.long	0x114
	.long	0x47e
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF81
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x46e
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
	.long	0x46e
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
	.long	0x5a4
	.uleb128 0xa
	.long	.LASF89
	.byte	0x10
	.byte	0x30
	.byte	0xd
	.long	0x84
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x10
	.byte	0x35
	.byte	0xd
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF91
	.byte	0x10
	.byte	0x3d
	.byte	0xf
	.long	0xc0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF92
	.byte	0x10
	.byte	0x3e
	.byte	0xe
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF93
	.byte	0x10
	.byte	0x40
	.byte	0xd
	.long	0x90
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF94
	.byte	0x10
	.byte	0x41
	.byte	0xd
	.long	0x9c
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
	.long	0x84
	.byte	0x28
	.uleb128 0xa
	.long	.LASF97
	.byte	0x10
	.byte	0x4a
	.byte	0xd
	.long	0xcc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF98
	.byte	0x10
	.byte	0x4e
	.byte	0x11
	.long	0xf0
	.byte	0x38
	.uleb128 0xa
	.long	.LASF99
	.byte	0x10
	.byte	0x50
	.byte	0x10
	.long	0xfc
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
	.long	0x5a4
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0x108
	.long	0x5b4
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x5b4
	.uleb128 0xd
	.long	0x314
	.long	0x5cb
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5bb
	.uleb128 0x11
	.long	.LASF104
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x5cb
	.uleb128 0x11
	.long	.LASF105
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x5cb
	.uleb128 0x11
	.long	.LASF106
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x5f7
	.uleb128 0x7
	.byte	0x8
	.long	0x114
	.uleb128 0x11
	.long	.LASF107
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x5f7
	.uleb128 0xf
	.long	.LASF108
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF109
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF110
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0x30e
	.uleb128 0xf
	.long	.LASF111
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF112
	.byte	0x16
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x29
	.byte	0x6
	.long	0x65e
	.uleb128 0x15
	.long	.LASF113
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x2a
	.byte	0x6
	.long	0x673
	.uleb128 0x16
	.long	.LASF114
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x691
	.uleb128 0x18
	.long	.LASF115
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF116
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x121
	.long	0x69c
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x691
	.uleb128 0xf
	.long	.LASF117
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x69c
	.uleb128 0xf
	.long	.LASF118
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0x30e
	.uleb128 0x19
	.long	.LASF140
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x70e
	.uleb128 0x16
	.long	.LASF119
	.byte	0
	.uleb128 0x16
	.long	.LASF120
	.byte	0x1
	.uleb128 0x16
	.long	.LASF121
	.byte	0x2
	.uleb128 0x16
	.long	.LASF122
	.byte	0x3
	.uleb128 0x16
	.long	.LASF123
	.byte	0x4
	.uleb128 0x16
	.long	.LASF124
	.byte	0x5
	.uleb128 0x16
	.long	.LASF125
	.byte	0x6
	.uleb128 0x16
	.long	.LASF126
	.byte	0x7
	.uleb128 0x16
	.long	.LASF127
	.byte	0x8
	.uleb128 0x16
	.long	.LASF128
	.byte	0x9
	.uleb128 0x16
	.long	.LASF129
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x6b9
	.uleb128 0x11
	.long	.LASF130
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x35a
	.uleb128 0xd
	.long	0x70e
	.long	0x72b
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x720
	.uleb128 0x11
	.long	.LASF131
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x72b
	.uleb128 0xc
	.long	.LASF132
	.uleb128 0xf
	.long	.LASF133
	.byte	0x1b
	.byte	0x19
	.byte	0x1f
	.long	0x73d
	.uleb128 0x2
	.long	.LASF134
	.byte	0x1c
	.byte	0x3d
	.byte	0x10
	.long	0x5b5
	.uleb128 0xf
	.long	.LASF135
	.byte	0x1c
	.byte	0x3e
	.byte	0x19
	.long	0x74e
	.uleb128 0xf
	.long	.LASF136
	.byte	0x1d
	.byte	0x32
	.byte	0xf
	.long	0x5b5
	.uleb128 0xf
	.long	.LASF137
	.byte	0x1d
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF138
	.byte	0x1d
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF139
	.byte	0x10
	.byte	0x1e
	.byte	0x19
	.byte	0x8
	.long	0x7b2
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1e
	.byte	0x1b
	.byte	0x9
	.long	0x391
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x1e
	.byte	0x1c
	.byte	0x9
	.long	0x39d
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF141
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1f
	.byte	0x17
	.byte	0x6
	.long	0x7d7
	.uleb128 0x16
	.long	.LASF142
	.byte	0x3
	.uleb128 0x16
	.long	.LASF143
	.byte	0x4
	.uleb128 0x16
	.long	.LASF144
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	.LASF145
	.byte	0x20
	.byte	0x1f
	.byte	0x20
	.byte	0x8
	.long	0x867
	.uleb128 0xa
	.long	.LASF146
	.byte	0x1f
	.byte	0x23
	.byte	0x8
	.long	0x867
	.byte	0
	.uleb128 0xa
	.long	.LASF147
	.byte	0x1f
	.byte	0x26
	.byte	0x17
	.long	0x7b2
	.byte	0x4
	.uleb128 0xa
	.long	.LASF148
	.byte	0x1f
	.byte	0x2f
	.byte	0x8
	.long	0x867
	.byte	0x8
	.uleb128 0xa
	.long	.LASF149
	.byte	0x1f
	.byte	0x32
	.byte	0x8
	.long	0x867
	.byte	0x9
	.uleb128 0xa
	.long	.LASF150
	.byte	0x1f
	.byte	0x35
	.byte	0x8
	.long	0x867
	.byte	0xa
	.uleb128 0xa
	.long	.LASF151
	.byte	0x1f
	.byte	0x39
	.byte	0x13
	.long	0x86e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1f
	.byte	0x3d
	.byte	0x8
	.long	0x867
	.byte	0x18
	.uleb128 0xa
	.long	.LASF153
	.byte	0x1f
	.byte	0x40
	.byte	0x8
	.long	0x867
	.byte	0x19
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1f
	.byte	0x43
	.byte	0x8
	.long	0x867
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF155
	.byte	0x1f
	.byte	0x4b
	.byte	0x8
	.long	0x867
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF156
	.uleb128 0x7
	.byte	0x8
	.long	0x78a
	.uleb128 0x19
	.long	.LASF157
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1f
	.byte	0x4e
	.byte	0x6
	.long	0x89f
	.uleb128 0x16
	.long	.LASF158
	.byte	0x2
	.uleb128 0x16
	.long	.LASF159
	.byte	0x3
	.uleb128 0x16
	.long	.LASF160
	.byte	0x4
	.uleb128 0x16
	.long	.LASF161
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x8cc
	.uleb128 0x16
	.long	.LASF162
	.byte	0x80
	.uleb128 0x16
	.long	.LASF163
	.byte	0x81
	.uleb128 0x16
	.long	.LASF164
	.byte	0x82
	.uleb128 0x16
	.long	.LASF165
	.byte	0x83
	.uleb128 0x16
	.long	.LASF166
	.byte	0x84
	.byte	0
	.uleb128 0x19
	.long	.LASF167
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x38
	.byte	0x6
	.long	0x8f1
	.uleb128 0x16
	.long	.LASF168
	.byte	0
	.uleb128 0x16
	.long	.LASF169
	.byte	0x1
	.uleb128 0x16
	.long	.LASF170
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x8cc
	.uleb128 0xd
	.long	0x463
	.long	0x906
	.uleb128 0xe
	.long	0x39
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.long	0x8f6
	.uleb128 0x1a
	.long	.LASF171
	.byte	0x2
	.byte	0x3f
	.byte	0x1c
	.long	0x906
	.uleb128 0x9
	.byte	0x3
	.quad	long_opts
	.uleb128 0xd
	.long	0x314
	.long	0x931
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x921
	.uleb128 0x1a
	.long	.LASF172
	.byte	0x2
	.byte	0x56
	.byte	0x1a
	.long	0x931
	.uleb128 0x9
	.byte	0x3
	.quad	interactive_args
	.uleb128 0xd
	.long	0x8f1
	.long	0x95c
	.uleb128 0xe
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x94c
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x2
	.byte	0x5c
	.byte	0x24
	.long	0x95c
	.uleb128 0x9
	.byte	0x3
	.quad	interactive_types
	.uleb128 0x1b
	.long	.LASF182
	.byte	0x2
	.byte	0xd1
	.byte	0x1
	.long	0x65
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xabd
	.uleb128 0x1c
	.long	.LASF174
	.byte	0x2
	.byte	0xd1
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1c
	.long	.LASF175
	.byte	0x2
	.byte	0xd1
	.byte	0x18
	.long	0x5f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1a
	.long	.LASF176
	.byte	0x2
	.byte	0xd3
	.byte	0x8
	.long	0x867
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x1d
	.string	"x"
	.byte	0x2
	.byte	0xd4
	.byte	0x15
	.long	0x7d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF177
	.byte	0x2
	.byte	0xd5
	.byte	0x8
	.long	0x867
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x1d
	.string	"c"
	.byte	0x2
	.byte	0xd6
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.long	.LASF178
	.byte	0x2
	.value	0x160
	.byte	0xd
	.long	0x63a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF179
	.byte	0x2
	.value	0x161
	.byte	0xa
	.long	0x5f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF180
	.byte	0x2
	.value	0x172
	.byte	0x12
	.long	0x874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1f
	.long	.LASF198
	.long	0xacd
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6370
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xa60
	.uleb128 0x21
	.string	"i"
	.byte	0x2
	.value	0x106
	.byte	0x11
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x22
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x23
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1e
	.long	.LASF181
	.byte	0x2
	.value	0x159
	.byte	0x1d
	.long	0x78a
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_buf.6364
	.uleb128 0x22
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x121
	.long	0xacd
	.uleb128 0xe
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0xabd
	.uleb128 0x24
	.long	.LASF184
	.byte	0x2
	.byte	0xbf
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xafe
	.uleb128 0x25
	.string	"x"
	.byte	0x2
	.byte	0xbf
	.byte	0x24
	.long	0xafe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x7d7
	.uleb128 0x26
	.long	.LASF183
	.byte	0x2
	.byte	0x7f
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xb32
	.uleb128 0x1c
	.long	.LASF180
	.byte	0x2
	.byte	0x7f
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb6
	.uleb128 0x1c
	.long	.LASF174
	.byte	0x2
	.byte	0x68
	.byte	0x1e
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x1c
	.long	.LASF175
	.byte	0x2
	.byte	0x68
	.byte	0x2b
	.long	0x5f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x27
	.long	.Ldebug_ranges0+0
	.uleb128 0x1d
	.string	"i"
	.byte	0x2
	.byte	0x6d
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1d
	.string	"arg"
	.byte	0x2
	.byte	0x6f
	.byte	0x13
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1d
	.string	"st"
	.byte	0x2
	.byte	0x70
	.byte	0x13
	.long	0x4d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF186
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xc5b
	.uleb128 0x29
	.long	.LASF187
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.long	.LASF188
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xc11
	.uleb128 0x2b
	.long	.LASF187
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x30e
	.byte	0
	.uleb128 0x2b
	.long	.LASF189
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x30e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xbe6
	.uleb128 0x1e
	.long	.LASF188
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xc6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF189
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF190
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xc70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF191
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xc11
	.long	0xc6b
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xc5b
	.uleb128 0x7
	.byte	0x8
	.long	0xc11
	.uleb128 0x2c
	.long	.LASF192
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	0x39
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.string	"n"
	.byte	0x1
	.byte	0xb7
	.byte	0x1a
	.long	0x63a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1
	.byte	0xbb
	.byte	0x8
	.uleb128 0x15
	.long	.LASF193
	.long	0xf4240
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
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
.LASF111:
	.string	"exit_failure"
.LASF15:
	.string	"__off_t"
.LASF11:
	.string	"__gid_t"
.LASF23:
	.string	"_IO_read_ptr"
.LASF127:
	.string	"locale_quoting_style"
.LASF102:
	.string	"st_ctim"
.LASF82:
	.string	"__daylight"
.LASF41:
	.string	"_shortbuf"
.LASF116:
	.string	"GETOPT_VERSION_CHAR"
.LASF176:
	.string	"preserve_root"
.LASF140:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF114:
	.string	"LOG10_TIMESPEC_HZ"
.LASF165:
	.string	"PRESERVE_ROOT"
.LASF155:
	.string	"require_restore_cwd"
.LASF136:
	.string	"error_print_progname"
.LASF120:
	.string	"shell_quoting_style"
.LASF115:
	.string	"GETOPT_HELP_CHAR"
.LASF29:
	.string	"_IO_buf_base"
.LASF72:
	.string	"long long unsigned int"
.LASF13:
	.string	"__mode_t"
.LASF44:
	.string	"_codecvt"
.LASF88:
	.string	"stat"
.LASF10:
	.string	"__uid_t"
.LASF62:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF131:
	.string	"quoting_style_vals"
.LASF198:
	.string	"__PRETTY_FUNCTION__"
.LASF187:
	.string	"program"
.LASF126:
	.string	"escape_quoting_style"
.LASF141:
	.string	"rm_interactive"
.LASF119:
	.string	"literal_quoting_style"
.LASF36:
	.string	"_fileno"
.LASF24:
	.string	"_IO_read_end"
.LASF83:
	.string	"__timezone"
.LASF19:
	.string	"__blkcnt_t"
.LASF105:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF71:
	.string	"_gl_cxxalias_dummy"
.LASF22:
	.string	"_flags"
.LASF45:
	.string	"_wide_data"
.LASF30:
	.string	"_IO_buf_end"
.LASF39:
	.string	"_cur_column"
.LASF109:
	.string	"program_invocation_short_name"
.LASF173:
	.string	"interactive_types"
.LASF53:
	.string	"_IO_codecvt"
.LASF164:
	.string	"NO_PRESERVE_ROOT"
.LASF61:
	.string	"_sys_errlist"
.LASF27:
	.string	"_IO_write_ptr"
.LASF108:
	.string	"program_invocation_name"
.LASF38:
	.string	"_old_offset"
.LASF43:
	.string	"_offset"
.LASF169:
	.string	"interactive_once"
.LASF147:
	.string	"interactive"
.LASF113:
	.string	"TIMESPEC_HZ"
.LASF95:
	.string	"__pad0"
.LASF123:
	.string	"shell_escape_always_quoting_style"
.LASF86:
	.string	"timezone"
.LASF99:
	.string	"st_blocks"
.LASF118:
	.string	"program_name"
.LASF93:
	.string	"st_uid"
.LASF52:
	.string	"_IO_marker"
.LASF55:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF47:
	.string	"_freeres_buf"
.LASF143:
	.string	"RMI_SOMETIMES"
.LASF148:
	.string	"one_file_system"
.LASF0:
	.string	"long unsigned int"
.LASF77:
	.string	"option"
.LASF157:
	.string	"RM_status"
.LASF171:
	.string	"long_opts"
.LASF85:
	.string	"daylight"
.LASF58:
	.string	"sys_nerr"
.LASF78:
	.string	"name"
.LASF194:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF129:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF138:
	.string	"error_one_per_line"
.LASF110:
	.string	"Version"
.LASF185:
	.string	"diagnose_leading_hyphen"
.LASF31:
	.string	"_IO_save_base"
.LASF144:
	.string	"RMI_NEVER"
.LASF14:
	.string	"__nlink_t"
.LASF163:
	.string	"ONE_FILE_SYSTEM"
.LASF107:
	.string	"environ"
.LASF112:
	.string	"uintmax_t"
.LASF190:
	.string	"map_prog"
.LASF167:
	.string	"interactive_type"
.LASF42:
	.string	"_lock"
.LASF37:
	.string	"_flags2"
.LASF49:
	.string	"_mode"
.LASF56:
	.string	"stdout"
.LASF97:
	.string	"st_size"
.LASF117:
	.string	"version_etc_copyright"
.LASF152:
	.string	"preserve_all_root"
.LASF92:
	.string	"st_mode"
.LASF196:
	.string	"/root/coreutils"
.LASF73:
	.string	"optarg"
.LASF70:
	.string	"tv_nsec"
.LASF139:
	.string	"dev_ino"
.LASF87:
	.string	"getdate_err"
.LASF9:
	.string	"__dev_t"
.LASF74:
	.string	"optind"
.LASF20:
	.string	"__syscall_slong_t"
.LASF161:
	.string	"RM_NONEMPTY_DIR"
.LASF145:
	.string	"rm_options"
.LASF28:
	.string	"_IO_write_end"
.LASF134:
	.string	"argmatch_exit_fn"
.LASF197:
	.string	"_IO_lock_t"
.LASF67:
	.string	"_IO_FILE"
.LASF168:
	.string	"interactive_never"
.LASF18:
	.string	"__blksize_t"
.LASF65:
	.string	"dev_t"
.LASF106:
	.string	"__environ"
.LASF66:
	.string	"time_t"
.LASF177:
	.string	"prompt_once"
.LASF59:
	.string	"sys_errlist"
.LASF184:
	.string	"rm_option_init"
.LASF34:
	.string	"_markers"
.LASF179:
	.string	"file"
.LASF103:
	.string	"__glibc_reserved"
.LASF172:
	.string	"interactive_args"
.LASF135:
	.string	"argmatch_die"
.LASF125:
	.string	"c_maybe_quoting_style"
.LASF156:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF189:
	.string	"node"
.LASF90:
	.string	"st_ino"
.LASF181:
	.string	"dev_ino_buf"
.LASF5:
	.string	"short int"
.LASF35:
	.string	"_chain"
.LASF98:
	.string	"st_blksize"
.LASF50:
	.string	"_unused2"
.LASF80:
	.string	"flag"
.LASF60:
	.string	"_sys_nerr"
.LASF68:
	.string	"timespec"
.LASF40:
	.string	"_vtable_offset"
.LASF84:
	.string	"tzname"
.LASF122:
	.string	"shell_escape_quoting_style"
.LASF12:
	.string	"__ino_t"
.LASF130:
	.string	"quoting_style_args"
.LASF76:
	.string	"optopt"
.LASF91:
	.string	"st_nlink"
.LASF178:
	.string	"n_files"
.LASF96:
	.string	"st_rdev"
.LASF63:
	.string	"long double"
.LASF21:
	.string	"char"
.LASF121:
	.string	"shell_always_quoting_style"
.LASF69:
	.string	"tv_sec"
.LASF153:
	.string	"stdin_tty"
.LASF154:
	.string	"verbose"
.LASF128:
	.string	"clocale_quoting_style"
.LASF166:
	.string	"PRESUME_INPUT_TTY_OPTION"
.LASF75:
	.string	"opterr"
.LASF142:
	.string	"RMI_ALWAYS"
.LASF150:
	.string	"remove_empty_directories"
.LASF8:
	.string	"__uintmax_t"
.LASF16:
	.string	"__off64_t"
.LASF132:
	.string	"quoting_options"
.LASF170:
	.string	"interactive_always"
.LASF25:
	.string	"_IO_read_base"
.LASF33:
	.string	"_IO_save_end"
.LASF124:
	.string	"c_quoting_style"
.LASF104:
	.string	"_sys_siglist"
.LASF188:
	.string	"infomap"
.LASF94:
	.string	"st_gid"
.LASF160:
	.string	"RM_ERROR"
.LASF79:
	.string	"has_arg"
.LASF183:
	.string	"usage"
.LASF48:
	.string	"__pad5"
.LASF17:
	.string	"__time_t"
.LASF192:
	.string	"select_plural"
.LASF57:
	.string	"stderr"
.LASF100:
	.string	"st_atim"
.LASF175:
	.string	"argv"
.LASF158:
	.string	"RM_OK"
.LASF180:
	.string	"status"
.LASF146:
	.string	"ignore_missing_files"
.LASF193:
	.string	"PLURAL_REDUCER"
.LASF89:
	.string	"st_dev"
.LASF32:
	.string	"_IO_backup_base"
.LASF101:
	.string	"st_mtim"
.LASF137:
	.string	"error_message_count"
.LASF191:
	.string	"lc_messages"
.LASF174:
	.string	"argc"
.LASF46:
	.string	"_freeres_list"
.LASF149:
	.string	"recursive"
.LASF54:
	.string	"_IO_wide_data"
.LASF151:
	.string	"root_dev_ino"
.LASF51:
	.string	"FILE"
.LASF133:
	.string	"quote_quoting_options"
.LASF195:
	.string	"src/rm.c"
.LASF81:
	.string	"__tzname"
.LASF182:
	.string	"main"
.LASF26:
	.string	"_IO_write_base"
.LASF186:
	.string	"emit_ancillary_info"
.LASF162:
	.string	"INTERACTIVE_OPTION"
.LASF159:
	.string	"RM_USER_DECLINED"
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
