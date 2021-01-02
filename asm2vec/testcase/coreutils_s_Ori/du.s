	.file	"du.c"
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
	.string	"\nThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\nUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\nBinary prefixes can be used, too: KiB=K, MiB=M, and so on.\n"
	.text
	.type	emit_size_note, @function
emit_size_note:
.LFB37:
	.loc 1 597 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 598 3
	movq	stdout(%rip), %rbx
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 603 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	emit_size_note, .-emit_size_note
	.section	.rodata
	.align 8
.LC2:
	.string	"\nDisplay values are in units of the first available SIZE from --block-size,\nand the %s_BLOCK_SIZE, BLOCK_SIZE and BLOCKSIZE environment variables.\nOtherwise, units default to 1024 bytes (or 512 if POSIXLY_CORRECT is set).\n"
	.text
	.type	emit_blocksize_note, @function
emit_blocksize_note:
.LFB38:
	.loc 1 607 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 608 11
	leaq	.LC2(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 1 608 3
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 613 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	emit_blocksize_note, .-emit_blocksize_note
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
	jmp	.L5
.L7:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L5:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L6
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L7
.L6:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L8
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L8:
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
	je	.L9
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L9
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L9:
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
	jne	.L10
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC18(%rip), %rbx
	jmp	.L11
.L10:
	.loc 1 671 3 discriminator 2
	leaq	.LC19(%rip), %rbx
.L11:
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
	je	.L12
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L12:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.type	timetostr, @function
timetostr:
.LFB41:
	.loc 1 691 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 694 11
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	imaxtostr@PLT
	.loc 1 695 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	timetostr, .-timetostr
	.type	bad_cast, @function
bad_cast:
.LFB42:
	.loc 1 699 1
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
	.local	di_files
	.comm	di_files,8,8
	.local	di_mnt
	.comm	di_mnt,8,8
	.local	prev_level
	.comm	prev_level,8,8
	.type	duinfo_init, @function
duinfo_init:
.LFB55:
	.file 2 "src/du.c"
	.loc 2 93 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 94 11
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 95 13
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 96 18
	movq	-8(%rbp), %rax
	movabsq	$-9223372036854775808, %rdx
	movq	%rdx, 16(%rax)
	.loc 2 97 19
	movq	-8(%rbp), %rax
	movq	$-1, 24(%rax)
	.loc 2 98 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	duinfo_init, .-duinfo_init
	.type	duinfo_set, @function
duinfo_set:
.LFB56:
	.loc 2 103 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	.loc 2 104 11
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 105 13
	movq	-8(%rbp), %rax
	movq	$1, 8(%rax)
	.loc 2 106 11
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	.loc 2 107 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	duinfo_set, .-duinfo_set
	.type	duinfo_add, @function
duinfo_add:
.LFB57:
	.loc 2 112 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 113 20
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 113 30
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 113 13
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 114 14
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 114 34
	cmpq	%rax, -8(%rbp)
	jb	.L20
	.loc 2 114 34 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	jmp	.L21
.L20:
	.loc 2 114 34 discriminator 2
	movq	$-1, %rax
.L21:
	.loc 2 114 11 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 2 115 16 discriminator 4
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 115 28 discriminator 4
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 115 25 discriminator 4
	addq	%rax, %rdx
	.loc 2 115 13 discriminator 4
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 116 7 discriminator 4
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	24(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	timespec_cmp@PLT
	.loc 2 116 6 discriminator 4
	testl	%eax, %eax
	jns	.L23
	.loc 2 117 13
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	16(%rax), %rax
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L23:
	.loc 2 118 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	duinfo_add, .-duinfo_add
	.local	opt_all
	.comm	opt_all,1,1
	.local	apparent_size
	.comm	apparent_size,1,1
	.local	opt_count_all
	.comm	opt_count_all,1,1
	.local	hash_all
	.comm	hash_all,1,1
	.local	opt_nul_terminate_output
	.comm	opt_nul_terminate_output,1,1
	.local	print_grand_total
	.comm	print_grand_total,1,1
	.local	opt_separate_dirs
	.comm	opt_separate_dirs,1,1
	.data
	.align 8
	.type	max_depth, @object
	.size	max_depth, 8
max_depth:
	.quad	-1
	.local	opt_threshold
	.comm	opt_threshold,8,8
	.local	human_output_opts
	.comm	human_output_opts,4,4
	.local	opt_inodes
	.comm	opt_inodes,1,1
	.local	opt_time
	.comm	opt_time,1,1
	.local	time_type
	.comm	time_type,4,4
	.local	time_style
	.comm	time_style,8,8
	.local	time_format
	.comm	time_format,8,8
	.local	localtz
	.comm	localtz,8,8
	.local	output_block_size
	.comm	output_block_size,8,8
	.local	exclude
	.comm	exclude,8,8
	.local	tot_dui
	.comm	tot_dui,32,32
	.section	.rodata
.LC21:
	.string	"all"
.LC22:
	.string	"apparent-size"
.LC23:
	.string	"block-size"
.LC24:
	.string	"bytes"
.LC25:
	.string	"count-links"
.LC26:
	.string	"dereference"
.LC27:
	.string	"dereference-args"
.LC28:
	.string	"exclude"
.LC29:
	.string	"exclude-from"
.LC30:
	.string	"files0-from"
.LC31:
	.string	"human-readable"
.LC32:
	.string	"inodes"
.LC33:
	.string	"si"
.LC34:
	.string	"max-depth"
.LC35:
	.string	"null"
.LC36:
	.string	"no-dereference"
.LC37:
	.string	"one-file-system"
.LC38:
	.string	"separate-dirs"
.LC39:
	.string	"summarize"
.LC40:
	.string	"total"
.LC41:
	.string	"threshold"
.LC42:
	.string	"time"
.LC43:
	.string	"time-style"
.LC44:
	.string	"help"
.LC45:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 832
long_options:
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC23
	.long	1
	.zero	4
	.quad	0
	.long	66
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	108
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
	.long	68
	.zero	4
	.quad	.LC28
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC29
	.long	1
	.zero	4
	.quad	0
	.long	88
	.zero	4
	.quad	.LC30
	.long	1
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	135
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC34
	.long	1
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC35
	.long	0
	.zero	4
	.quad	0
	.long	48
	.zero	4
	.quad	.LC36
	.long	0
	.zero	4
	.quad	0
	.long	80
	.zero	4
	.quad	.LC37
	.long	0
	.zero	4
	.quad	0
	.long	120
	.zero	4
	.quad	.LC38
	.long	0
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC39
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC40
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC41
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC42
	.long	2
	.zero	4
	.quad	0
	.long	133
	.zero	4
	.quad	.LC43
	.long	1
	.zero	4
	.quad	0
	.long	134
	.zero	4
	.quad	.LC44
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC45
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
.LC46:
	.string	"atime"
.LC47:
	.string	"access"
.LC48:
	.string	"use"
.LC49:
	.string	"ctime"
.LC50:
	.string	"status"
	.section	.data.rel.ro.local
	.align 32
	.type	time_args, @object
	.size	time_args, 48
time_args:
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	0
	.section	.rodata
	.align 16
	.type	time_types, @object
	.size	time_types, 20
time_types:
	.long	2
	.long	2
	.long	2
	.long	1
	.long	1
.LC51:
	.string	"full-iso"
.LC52:
	.string	"long-iso"
.LC53:
	.string	"iso"
	.section	.data.rel.ro.local
	.align 32
	.type	time_style_args, @object
	.size	time_style_args, 32
time_style_args:
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.quad	0
	.section	.rodata
	.align 8
	.type	time_style_types, @object
	.size	time_style_types, 12
time_style_types:
	.long	0
	.long	1
	.long	2
	.align 8
.LC54:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC55:
	.string	"Usage: %s [OPTION]... [FILE]...\n  or:  %s [OPTION]... --files0-from=F\n"
	.align 8
.LC56:
	.string	"Summarize disk usage of the set of FILEs, recursively for directories.\n"
	.align 8
.LC57:
	.ascii	"  -0, --null            end each output line with NUL, not n"
	.ascii	"ewline\n  -a, --all             write counts for all files, "
	.ascii	"not just directories\n      --apparent-size   print apparent"
	.ascii	" sizes"
	.string	", rather than disk usage; although\n                          the apparent size is usually smaller, it may be\n                          larger due to holes in ('sparse') files, internal\n                          fragmentation, indirect blocks, and the like\n"
	.align 8
.LC58:
	.ascii	"  -B, --block-size=SIZE  scale sizes by SIZE before printing"
	.ascii	" them; e.g.,\n                           '-BM' prints sizes "
	.ascii	"in units of 1,048,576 bytes;\n                           see"
	.ascii	" SIZE format below\n  -b, --bytes           equivalent to '-"
	.ascii	"-apparent-size --block-size=1'\n  -c, --total           prod"
	.ascii	"uce a grand total\n  -D, --dereference-args  dereference onl"
	.ascii	"y symlinks that are listed on the\n                         "
	.ascii	" command line\n  -d, -"
	.string	"-max-depth=N     print the total for a directory (or file, with --all)\n                          only if it is N or fewer levels below the command\n                          line argument;  --max-depth=0 is the same as\n                          --summarize\n"
	.align 8
.LC59:
	.ascii	"      --files0-from=F   summarize disk usage of the\n       "
	.ascii	"                   NUL-terminated file names specified in fi"
	.ascii	"le F;\n                          if F is -"
	.string	", then read names from standard input\n  -H                    equivalent to --dereference-args (-D)\n  -h, --human-readable  print sizes in human readable format (e.g., 1K 234M 2G)\n      --inodes          list inode usage information instead of block usage\n"
	.align 8
.LC60:
	.string	"  -k                    like --block-size=1K\n  -L, --dereference     dereference all symbolic links\n  -l, --count-links     count sizes many times if hard linked\n  -m                    like --block-size=1M\n"
	.align 8
.LC61:
	.ascii	"  -P, --no-dereference  don'"
	.string	"t follow any symbolic links (this is the default)\n  -S, --separate-dirs   for directories do not include size of subdirectories\n      --si              like -h, but use powers of 1000 not 1024\n  -s, --summarize       display only a total for each argument\n"
	.align 8
.LC62:
	.ascii	"  -t, --threshold=SIZE  exclude entries smaller than SIZE if"
	.ascii	" positive,\n                          or entries greater tha"
	.ascii	"n SIZE if negative\n      --time            show time of the"
	.ascii	" last modification of any file in the\n                     "
	.ascii	"     directory, or any of its subdirectories\n      --time=W"
	.ascii	"ORD       show time as WORD instead of modification time:\n"
	.string	"                          atime, access, use, ctime or status\n      --time-style=STYLE  show times using STYLE, which can be:\n                            full-iso, long-iso, iso, or +FORMAT;\n                            FORMAT is interpreted like in 'date'\n"
	.align 8
.LC63:
	.string	"  -X, --exclude-from=FILE  exclude files that match any pattern in FILE\n      --exclude=PATTERN    exclude files that match PATTERN\n  -x, --one-file-system    skip directories on different file systems\n"
	.align 8
.LC64:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC65:
	.string	"      --version  output version information and exit\n"
.LC66:
	.string	"DU"
.LC67:
	.string	"du"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB58:
	.loc 2 280 1
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
	.loc 2 281 6
	cmpl	$0, -20(%rbp)
	je	.L25
	.loc 2 282 5
	movq	program_name(%rip), %rbx
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L26
.L25:
	.loc 2 285 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 285 15
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	.loc 2 285 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 289 7
	movq	stdout(%rip), %rbx
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 293 7
	call	emit_mandatory_arg_note
	.loc 2 295 7
	movq	stdout(%rip), %rbx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 304 7
	movq	stdout(%rip), %rbx
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 317 7
	movq	stdout(%rip), %rbx
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 326 7
	movq	stdout(%rip), %rbx
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 332 7
	movq	stdout(%rip), %rbx
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 338 7
	movq	stdout(%rip), %rbx
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 349 7
	movq	stdout(%rip), %rbx
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 354 7
	movq	stdout(%rip), %rbx
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 355 7
	movq	stdout(%rip), %rbx
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 356 7
	leaq	.LC66(%rip), %rdi
	call	emit_blocksize_note
	.loc 2 357 7
	call	emit_size_note
	.loc 2 358 7
	leaq	.LC67(%rip), %rdi
	call	emit_ancillary_info
.L26:
	.loc 2 360 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE58:
	.size	usage, .-usage
	.type	hash_ins, @function
hash_ins:
.LFB59:
	.loc 2 368 1
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
	.loc 2 369 18
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	di_set_insert@PLT
	movl	%eax, -4(%rbp)
	.loc 2 370 6
	cmpl	$0, -4(%rbp)
	jns	.L28
	.loc 2 371 5
	call	xalloc_die@PLT
.L28:
	.loc 2 372 10
	cmpl	$0, -4(%rbp)
	setne	%al
	.loc 2 373 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	hash_ins, .-hash_ins
	.section	.rodata
.LC68:
	.string	"time %s is out of range"
	.text
	.type	show_date, @function
show_date:
.LFB60:
	.loc 2 381 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -144(%rbp)
	.loc 2 381 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 383 7
	leaq	-112(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	localtime_rz@PLT
	.loc 2 383 6
	testq	%rax, %rax
	je	.L31
	.loc 2 384 47
	movq	-152(%rbp), %rax
	.loc 2 384 5
	movl	%eax, %edi
	movq	stdout(%rip), %rax
	movq	-144(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	fprintftime@PLT
	.loc 2 392 1
	jmp	.L34
.L31:
.LBB2:
	.loc 2 388 24
	movq	-160(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	timetostr
	movq	%rax, -120(%rbp)
	.loc 2 389 7
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 389 20
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	.loc 2 389 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 390 7
	movq	stdout(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L34:
.LBE2:
	.loc 2 392 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	show_date, .-show_date
	.section	.rodata
.LC69:
	.string	"Infinity"
	.text
	.type	print_only_size, @function
print_only_size:
.LFB61:
	.loc 2 398 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$696, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -696(%rbp)
	.loc 2 398 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 400 3
	movq	stdout(%rip), %rbx
	cmpq	$-1, -696(%rbp)
	jne	.L36
	.loc 2 400 3 is_stmt 0 discriminator 1
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	jmp	.L37
.L36:
	.loc 2 400 3 discriminator 2
	movq	output_block_size(%rip), %rcx
	movl	human_output_opts(%rip), %edx
	leaq	-688(%rbp), %rsi
	movq	-696(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	human_readable@PLT
.L37:
	.loc 2 400 3 discriminator 4
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 405 1 is_stmt 1 discriminator 4
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L38
	.loc 2 405 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L38:
	addq	$696, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	print_only_size, .-print_only_size
	.section	.rodata
.LC70:
	.string	"\t%s%c"
	.text
	.type	print_size, @function
print_size:
.LFB62:
	.loc 2 411 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 413 20
	movzbl	opt_inodes(%rip), %eax
	.loc 2 412 3
	testb	%al, %al
	je	.L40
	.loc 2 412 3 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L41
.L40:
	.loc 2 412 3 discriminator 2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L41:
	.loc 2 412 3 discriminator 4
	movq	%rax, %rdi
	call	print_only_size
	.loc 2 416 7 is_stmt 1 discriminator 4
	movzbl	opt_time(%rip), %eax
	.loc 2 416 6 discriminator 4
	testb	%al, %al
	je	.L42
	.loc 2 418 7
	movl	$9, %edi
	call	putchar_unlocked@PLT
	.loc 2 419 7
	movq	localtz(%rip), %rcx
	movq	time_format(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	call	show_date
.L42:
	.loc 2 421 54
	movzbl	opt_nul_terminate_output(%rip), %eax
	.loc 2 421 3
	testb	%al, %al
	je	.L43
	.loc 2 421 3 is_stmt 0 discriminator 1
	movl	$0, %edx
	jmp	.L44
.L43:
	.loc 2 421 3 discriminator 2
	movl	$10, %edx
.L44:
	.loc 2 421 3 discriminator 4
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC70(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 422 3 is_stmt 1 discriminator 4
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush_unlocked@PLT
	.loc 2 423 1 discriminator 4
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	print_size, .-print_size
	.type	fill_mount_table, @function
fill_mount_table:
.LFB63:
	.loc 2 429 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	.loc 2 429 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 430 33
	movl	$0, %edi
	call	read_file_system_list@PLT
	movq	%rax, -176(%rbp)
	.loc 2 431 9
	jmp	.L46
.L49:
.LBB3:
	.loc 2 434 11
	movq	-176(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$2, %eax
	.loc 2 434 10
	testb	%al, %al
	jne	.L47
	.loc 2 434 34 discriminator 1
	movq	-176(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	.loc 2 434 31 discriminator 1
	testb	%al, %al
	jne	.L47
.LBB4:
	.loc 2 437 29
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 437 16
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 437 14
	testl	%eax, %eax
	jne	.L47
	.loc 2 438 13
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	di_mnt(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	hash_ins
.L47:
.LBE4:
	.loc 2 446 16
	movq	-176(%rbp), %rax
	movq	%rax, -168(%rbp)
	.loc 2 447 15
	movq	-176(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -176(%rbp)
	.loc 2 448 7
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	free_mount_entry@PLT
.L46:
.LBE3:
	.loc 2 431 9
	cmpq	$0, -176(%rbp)
	jne	.L49
	.loc 2 450 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	fill_mount_table, .-fill_mount_table
	.type	mount_point_in_fts_cycle, @function
mount_point_in_fts_cycle:
.LFB64:
	.loc 2 457 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 458 17
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 460 7
	movq	di_mnt(%rip), %rax
	.loc 2 460 6
	testq	%rax, %rax
	jne	.L54
	.loc 2 463 16
	call	di_set_alloc@PLT
	.loc 2 463 14
	movq	%rax, di_mnt(%rip)
	.loc 2 464 11
	movq	di_mnt(%rip), %rax
	.loc 2 464 10
	testq	%rax, %rax
	jne	.L53
	.loc 2 465 9
	call	xalloc_die@PLT
.L53:
	.loc 2 467 7
	call	fill_mount_table
	.loc 2 470 9
	jmp	.L54
.L58:
	.loc 2 472 11
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rcx
	movq	di_mnt(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	di_set_lookup@PLT
	.loc 2 472 10
	testl	%eax, %eax
	jle	.L55
	.loc 2 475 18
	movl	$1, %eax
	jmp	.L56
.L55:
	.loc 2 477 11
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L54:
	.loc 2 470 9
	cmpq	$0, -24(%rbp)
	je	.L57
	.loc 2 470 14 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L58
.L57:
	.loc 2 480 10
	movl	$0, %eax
.L56:
	.loc 2 481 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	mount_point_in_fts_cycle, .-mount_point_in_fts_cycle
	.section	.rodata
.LC71:
	.string	"cannot read directory %s"
.LC72:
	.string	"src/du.c"
.LC73:
	.string	"e == ent"
.LC74:
	.string	"cannot access %s"
.LC75:
	.string	"%s"
	.align 8
.LC76:
	.string	"WARNING: Circular directory structure.\nThis almost certainly means that you have a corrupted file system.\nNOTIFY YOUR SYSTEM MANAGER.\nThe following directory is part of the cycle:\n  %s\n"
.LC77:
	.string	"level == prev_level - 1"
	.text
	.type	process_file, @function
process_file:
.LFB65:
	.loc 2 490 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	.loc 2 490 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 491 8
	movb	$1, -158(%rbp)
	.loc 2 506 15
	movq	-176(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -144(%rbp)
	.loc 2 507 22
	movq	-176(%rbp), %rax
	addq	$112, %rax
	movq	%rax, -136(%rbp)
	.loc 2 508 17
	movq	-176(%rbp), %rax
	movzwl	104(%rax), %eax
	.loc 2 508 7
	movzwl	%ax, %eax
	movl	%eax, -156(%rbp)
	.loc 2 510 6
	cmpl	$4, -156(%rbp)
	jne	.L60
	.loc 2 513 7
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 513 33
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 513 7
	movq	-176(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 514 10
	movb	$0, -158(%rbp)
	jmp	.L61
.L60:
	.loc 2 516 11
	cmpl	$6, -156(%rbp)
	je	.L102
.LBB5:
	.loc 2 518 23
	movq	exclude(%rip), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	excluded_file_name@PLT
	movb	%al, -157(%rbp)
	.loc 2 519 11
	movzbl	-157(%rbp), %eax
	xorl	$1, %eax
	.loc 2 519 10
	testb	%al, %al
	je	.L62
	.loc 2 523 14
	cmpl	$11, -156(%rbp)
	jne	.L63
.LBB6:
	.loc 2 525 15
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
	.loc 2 526 33
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -128(%rbp)
	.loc 2 527 15
	movq	-128(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.L64
	.loc 2 527 15 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6672(%rip), %rcx
	movl	$527, %edx
	leaq	.LC72(%rip), %rsi
	leaq	.LC73(%rip), %rdi
	call	__assert_fail@PLT
.L64:
	.loc 2 528 25 is_stmt 1
	movq	-176(%rbp), %rax
	movzwl	104(%rax), %eax
	.loc 2 528 20
	movzwl	%ax, %eax
	movl	%eax, -156(%rbp)
.L63:
.LBE6:
	.loc 2 531 14
	cmpl	$10, -156(%rbp)
	je	.L65
	.loc 2 531 30 discriminator 1
	cmpl	$13, -156(%rbp)
	jne	.L66
.L65:
	.loc 2 533 15
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 533 41
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 533 15
	movq	-176(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 534 22
	movl	$0, %eax
	jmp	.L100
.L66:
	.loc 2 542 18
	movq	-168(%rbp), %rax
	movl	72(%rax), %eax
	.loc 2 542 32
	andl	$64, %eax
	.loc 2 542 14
	testl	%eax, %eax
	je	.L62
	.loc 2 543 37
	movq	-176(%rbp), %rax
	movq	88(%rax), %rax
	.loc 2 543 15
	testq	%rax, %rax
	jle	.L62
	.loc 2 544 21
	movq	-168(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 544 36
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 544 15
	cmpq	%rax, %rdx
	je	.L62
	.loc 2 545 22
	movb	$1, -157(%rbp)
.L62:
	.loc 2 548 10
	cmpb	$0, -157(%rbp)
	jne	.L68
	.loc 2 549 15
	movzbl	opt_count_all(%rip), %eax
	xorl	$1, %eax
	.loc 2 549 11
	testb	%al, %al
	je	.L69
	.loc 2 550 19
	movzbl	hash_all(%rip), %eax
	.loc 2 550 15
	testb	%al, %al
	jne	.L70
	.loc 2 550 34 discriminator 1
	movq	-136(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 2 550 28 discriminator 1
	cmpl	$16384, %eax
	je	.L69
	.loc 2 550 65 discriminator 2
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 550 56 discriminator 2
	cmpq	$1, %rax
	jbe	.L69
.L70:
	.loc 2 551 20
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rcx
	movq	di_files(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	hash_ins
	.loc 2 551 18
	xorl	$1, %eax
	.loc 2 551 15
	testb	%al, %al
	je	.L69
.L68:
	.loc 2 556 14
	cmpl	$1, -156(%rbp)
	jne	.L71
.LBB7:
	.loc 2 558 15
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
	.loc 2 559 33
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -120(%rbp)
	.loc 2 560 15
	movq	-120(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.L71
	.loc 2 560 15 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6672(%rip), %rcx
	movl	$560, %edx
	leaq	.LC72(%rip), %rsi
	leaq	.LC73(%rip), %rdi
	call	__assert_fail@PLT
.L71:
.LBE7:
	.loc 2 563 18 is_stmt 1
	movl	$1, %eax
	jmp	.L100
.L69:
	.loc 2 566 7
	cmpl	$7, -156(%rbp)
	je	.L72
	cmpl	$7, -156(%rbp)
	jg	.L61
	cmpl	$1, -156(%rbp)
	je	.L73
	cmpl	$2, -156(%rbp)
	je	.L74
	jmp	.L61
.L73:
	.loc 2 569 18
	movl	$1, %eax
	jmp	.L100
.L72:
	.loc 2 573 11
	movq	-144(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rdx, %rcx
	leaq	.LC75(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 574 14
	movb	$0, -158(%rbp)
	.loc 2 575 11
	jmp	.L61
.L74:
	.loc 2 579 15
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cycle_warning_required@PLT
	.loc 2 579 14
	testb	%al, %al
	je	.L75
	.loc 2 580 20
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	mount_point_in_fts_cycle
	.loc 2 580 18
	xorl	$1, %eax
	.loc 2 580 15
	testb	%al, %al
	je	.L75
	.loc 2 582 15
	movq	-144(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 583 22
	movl	$0, %eax
	jmp	.L100
.L75:
	.loc 2 585 18
	movl	$1, %eax
	jmp	.L100
.L102:
	.loc 2 587 5
	nop
.L61:
.LBE5:
	.loc 2 593 26
	movl	time_type(%rip), %eax
	.loc 2 589 3
	testl	%eax, %eax
	jne	.L76
	.loc 2 593 42
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	jmp	.L77
.L76:
	.loc 2 594 28 discriminator 1
	movl	time_type(%rip), %eax
	.loc 2 589 3 discriminator 1
	cmpl	$2, %eax
	jne	.L78
	.loc 2 594 44
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	jmp	.L77
.L78:
	.loc 2 595 18
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_ctime@PLT
.L77:
	.loc 2 591 16
	movzbl	apparent_size(%rip), %ecx
	.loc 2 589 3
	testb	%cl, %cl
	je	.L79
	.loc 2 591 18 discriminator 2
	movq	-136(%rbp), %rcx
	movq	48(%rcx), %rcx
	movl	$0, %esi
	testq	%rcx, %rcx
	cmovs	%rsi, %rcx
	.loc 2 589 3 discriminator 2
	movq	%rcx, %rsi
	jmp	.L80
.L79:
	.loc 2 592 30 discriminator 3
	movq	-136(%rbp), %rcx
	movq	64(%rcx), %rcx
	.loc 2 589 3 discriminator 3
	movq	%rcx, %rsi
	salq	$9, %rsi
.L80:
	.loc 2 589 3 is_stmt 0 discriminator 5
	leaq	-96(%rbp), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	duinfo_set
	.loc 2 597 14 is_stmt 1 discriminator 5
	movq	-176(%rbp), %rax
	movq	88(%rax), %rax
	.loc 2 597 9 discriminator 5
	movq	%rax, -112(%rbp)
	.loc 2 598 16 discriminator 5
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 2 600 15 discriminator 5
	movq	n_alloc.6665(%rip), %rax
	.loc 2 600 6 discriminator 5
	testq	%rax, %rax
	jne	.L81
	.loc 2 602 23
	movq	-112(%rbp), %rax
	addq	$10, %rax
	.loc 2 602 15
	movq	%rax, n_alloc.6665(%rip)
	.loc 2 603 15
	movq	n_alloc.6665(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	xcalloc@PLT
	.loc 2 603 13
	movq	%rax, dulvl.6666(%rip)
	jmp	.L82
.L81:
	.loc 2 607 17
	movq	prev_level(%rip), %rax
	.loc 2 607 10
	cmpq	%rax, -112(%rbp)
	je	.L82
	.loc 2 611 22
	movq	prev_level(%rip), %rax
	.loc 2 611 15
	cmpq	%rax, -112(%rbp)
	jbe	.L83
	.loc 2 618 23
	movq	n_alloc.6665(%rip), %rax
	.loc 2 618 14
	cmpq	%rax, -112(%rbp)
	jb	.L84
	.loc 2 620 23
	movq	dulvl.6666(%rip), %rax
	movq	-112(%rbp), %rcx
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xnrealloc@PLT
	.loc 2 620 21
	movq	%rax, dulvl.6666(%rip)
	.loc 2 621 31
	movq	-112(%rbp), %rax
	addq	%rax, %rax
	.loc 2 621 23
	movq	%rax, n_alloc.6665(%rip)
.L84:
.LBB8:
	.loc 2 624 38
	movq	prev_level(%rip), %rax
	.loc 2 624 23
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	.loc 2 624 11
	jmp	.L85
.L86:
	.loc 2 626 34 discriminator 3
	movq	dulvl.6666(%rip), %rax
	movq	-152(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	.loc 2 626 15 discriminator 3
	movq	%rax, %rdi
	call	duinfo_init
	.loc 2 627 34 discriminator 3
	movq	dulvl.6666(%rip), %rax
	movq	-152(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	.loc 2 627 15 discriminator 3
	addq	$32, %rax
	movq	%rax, %rdi
	call	duinfo_init
	.loc 2 624 56 discriminator 3
	addq	$1, -152(%rbp)
.L85:
	.loc 2 624 11 discriminator 1
	movq	-152(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jbe	.L86
	jmp	.L82
.L83:
.LBE8:
	.loc 2 638 11
	movq	prev_level(%rip), %rax
	subq	$1, %rax
	cmpq	%rax, -112(%rbp)
	je	.L87
	.loc 2 638 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6672(%rip), %rcx
	movl	$638, %edx
	leaq	.LC72(%rip), %rsi
	leaq	.LC77(%rip), %rdi
	call	__assert_fail@PLT
.L87:
	.loc 2 639 44 is_stmt 1
	movq	dulvl.6666(%rip), %rax
	movq	prev_level(%rip), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	.loc 2 639 38
	movq	%rax, %rdx
	.loc 2 639 11
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	duinfo_add
	.loc 2 640 15
	movzbl	opt_separate_dirs(%rip), %eax
	xorl	$1, %eax
	.loc 2 640 14
	testb	%al, %al
	je	.L88
	.loc 2 641 46
	movq	dulvl.6666(%rip), %rax
	movq	prev_level(%rip), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	.loc 2 641 40
	leaq	32(%rax), %rdx
	.loc 2 641 13
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	duinfo_add
.L88:
	.loc 2 642 51
	movq	dulvl.6666(%rip), %rax
	movq	prev_level(%rip), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	.loc 2 642 45
	movq	%rax, %rcx
	.loc 2 642 29
	movq	dulvl.6666(%rip), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	.loc 2 642 11
	addq	$32, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	duinfo_add
	.loc 2 643 51
	movq	dulvl.6666(%rip), %rax
	movq	prev_level(%rip), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	.loc 2 643 45
	leaq	32(%rax), %rdx
	.loc 2 643 29
	movq	dulvl.6666(%rip), %rax
	movq	-112(%rbp), %rcx
	salq	$6, %rcx
	addq	%rcx, %rax
	.loc 2 643 11
	addq	$32, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	duinfo_add
.L82:
	.loc 2 647 14
	movq	-112(%rbp), %rax
	movq	%rax, prev_level(%rip)
	.loc 2 651 10
	movzbl	opt_separate_dirs(%rip), %eax
	xorl	$1, %eax
	.loc 2 651 6
	testb	%al, %al
	jne	.L89
	.loc 2 651 7 discriminator 1
	cmpl	$6, -156(%rbp)
	je	.L90
	.loc 2 651 31 discriminator 2
	cmpl	$4, -156(%rbp)
	je	.L90
.L89:
	.loc 2 652 23
	movq	dulvl.6666(%rip), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	.loc 2 652 5
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	duinfo_add
.L90:
	.loc 2 656 3
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	tot_dui(%rip), %rdi
	call	duinfo_add
	.loc 2 658 6
	cmpl	$6, -156(%rbp)
	je	.L91
	.loc 2 658 8 discriminator 2
	cmpl	$4, -156(%rbp)
	jne	.L92
.L91:
	.loc 2 658 36 discriminator 3
	movq	max_depth(%rip), %rax
	.loc 2 658 27 discriminator 3
	cmpq	%rax, -112(%rbp)
	jbe	.L93
.L92:
	.loc 2 659 11
	movzbl	opt_all(%rip), %eax
	.loc 2 659 7
	testb	%al, %al
	je	.L94
	.loc 2 659 28 discriminator 1
	movq	max_depth(%rip), %rax
	.loc 2 659 19 discriminator 1
	cmpq	%rax, -112(%rbp)
	jbe	.L93
.L94:
	.loc 2 660 7
	cmpq	$0, -112(%rbp)
	jne	.L95
.L93:
.LBB9:
	.loc 2 663 32
	movzbl	opt_inodes(%rip), %eax
	.loc 2 663 54
	testb	%al, %al
	je	.L96
	.loc 2 663 54 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	jmp	.L97
.L96:
	.loc 2 663 54 discriminator 2
	movq	-64(%rbp), %rax
.L97:
	.loc 2 663 17 is_stmt 1 discriminator 4
	movq	%rax, -104(%rbp)
	.loc 2 664 25 discriminator 4
	movq	opt_threshold(%rip), %rax
	.loc 2 664 11 discriminator 4
	testq	%rax, %rax
	jns	.L98
	.loc 2 665 18 discriminator 1
	movq	opt_threshold(%rip), %rax
	negq	%rax
	.loc 2 664 11 discriminator 1
	cmpq	%rax, -104(%rbp)
	setbe	%al
	jmp	.L99
.L98:
	.loc 2 666 15 discriminator 2
	movq	opt_threshold(%rip), %rax
	.loc 2 664 11 discriminator 2
	cmpq	%rax, -104(%rbp)
	setnb	%al
.L99:
	.loc 2 664 10 discriminator 4
	testb	%al, %al
	je	.L95
	.loc 2 667 9
	movq	-144(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_size
.L95:
.LBE9:
	.loc 2 670 10
	movzbl	-158(%rbp), %eax
.L100:
	.loc 2 671 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L101
	.loc 2 671 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L101:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	process_file, .-process_file
	.section	.rodata
.LC78:
	.string	"fts_read failed: %s"
.LC79:
	.string	"fts_close failed"
	.text
	.type	du_files, @function
du_files:
.LFB66:
	.loc 2 680 1 is_stmt 1
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
	movl	%esi, -60(%rbp)
	.loc 2 681 8
	movb	$1, -33(%rbp)
	.loc 2 683 7
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 683 6
	testq	%rax, %rax
	je	.L104
.LBB10:
	.loc 2 685 18
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	xfts_open@PLT
	movq	%rax, -32(%rbp)
.L108:
.LBB11:
	.loc 2 691 17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -24(%rbp)
	.loc 2 692 14
	cmpq	$0, -24(%rbp)
	jne	.L105
	.loc 2 694 19
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 694 18
	testl	%eax, %eax
	je	.L106
	.loc 2 697 26
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 696 19
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 696 36
	leaq	.LC78(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 696 29
	call	__errno_location@PLT
	.loc 2 696 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 698 22
	movb	$0, -33(%rbp)
.L106:
	.loc 2 704 26
	movq	$0, prev_level(%rip)
	.loc 2 705 15
	nop
.LBE11:
	.loc 2 712 11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_close@PLT
	.loc 2 712 10
	testl	%eax, %eax
	je	.L104
	jmp	.L110
.L105:
.LBB12:
	.loc 2 709 17
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_file
	.loc 2 709 14
	movzbl	-33(%rbp), %edx
	.loc 2 709 17
	movzbl	%al, %eax
	.loc 2 709 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -33(%rbp)
.LBE12:
	.loc 2 688 9
	jmp	.L108
.L110:
	.loc 2 714 28
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 714 21
	call	__errno_location@PLT
	.loc 2 714 11
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 715 14
	movb	$0, -33(%rbp)
.L104:
.LBE10:
	.loc 2 719 10
	movzbl	-33(%rbp), %eax
	.loc 2 720 1
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	du_files, .-du_files
	.section	.rodata
.LC80:
	.string	"."
.LC81:
	.string	"/usr/local/share/locale"
.LC82:
	.string	"DU_BLOCK_SIZE"
.LC83:
	.string	"0abd:chHklmst:xB:DLPSX:"
.LC84:
	.string	"invalid maximum depth %s"
.LC85:
	.string	"kKmMGTPEZY0"
	.align 8
.LC86:
	.string	"invalid --threshold argument '-0'"
.LC87:
	.string	"--time"
.LC88:
	.string	"TZ"
.LC89:
	.string	"David MacKenzie"
.LC90:
	.string	"Torbjorn Granlund"
.LC91:
	.string	"Jim Meyering"
.LC92:
	.string	"Paul Eggert"
	.align 8
.LC93:
	.string	"cannot both summarize and show all entries"
	.align 8
.LC94:
	.string	"warning: summarizing is the same as using --max-depth=0"
	.align 8
.LC95:
	.string	"warning: summarizing conflicts with --max-depth=%lu"
	.align 8
.LC96:
	.string	"warning: options --apparent-size and -b are ineffective with --inodes"
.LC97:
	.string	"TIME_STYLE"
.LC98:
	.string	"locale"
.LC99:
	.string	"time style"
.LC100:
	.string	"%Y-%m-%d %H:%M:%S.%N %z"
.LC101:
	.string	"%Y-%m-%d %H:%M"
.LC102:
	.string	"%Y-%m-%d"
.LC103:
	.string	"extra operand %s"
	.align 8
.LC104:
	.string	"file operands cannot be combined with --files0-from"
.LC105:
	.string	"%s\n"
.LC106:
	.string	"-"
.LC107:
	.string	"r"
.LC108:
	.string	"cannot open %s for reading"
.LC109:
	.string	"%s: read error"
	.align 8
.LC110:
	.string	"!\"unexpected error code from argv_iter\""
	.align 8
.LC111:
	.string	"when reading file names from stdin, no file name of %s allowed"
.LC112:
	.string	"invalid zero-length file name"
.LC113:
	.string	"%s:%lu: %s"
.LC114:
	.string	"error reading %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB67:
	.loc 2 724 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -148(%rbp)
	movq	%rsi, -160(%rbp)
	.loc 2 724 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 726 8
	movb	$0, -140(%rbp)
	.loc 2 727 8
	movb	$1, -139(%rbp)
	.loc 2 728 9
	movq	$0, -104(%rbp)
	.loc 2 731 7
	movl	$8, -132(%rbp)
	.loc 2 735 7
	movl	$16, -128(%rbp)
	.loc 2 738 8
	movb	$0, -138(%rbp)
	.loc 2 740 17
	leaq	.LC80(%rip), %rdi
	call	bad_cast
	.loc 2 740 15
	movq	%rax, -48(%rbp)
	.loc 2 741 15
	movq	$0, -40(%rbp)
	.loc 2 744 3
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 745 3
	leaq	.LC19(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 746 3
	leaq	.LC81(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 747 3
	leaq	.LC5(%rip), %rdi
	call	textdomain@PLT
	.loc 2 749 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 751 13
	call	new_exclude@PLT
	.loc 2 751 11
	movq	%rax, exclude(%rip)
	.loc 2 753 18
	leaq	.LC82(%rip), %rdi
	call	getenv@PLT
	.loc 2 753 3
	leaq	output_block_size(%rip), %rdx
	leaq	human_output_opts(%rip), %rsi
	movq	%rax, %rdi
	call	human_options@PLT
.L154:
.LBB13:
	.loc 2 758 11
	movl	$-1, -136(%rbp)
	.loc 2 759 15
	leaq	-136(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movl	-148(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options(%rip), %rcx
	leaq	.LC83(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -124(%rbp)
	.loc 2 761 10
	cmpl	$-1, -124(%rbp)
	jne	.L112
.LBE13:
	.loc 2 927 7
	movzbl	-139(%rbp), %eax
	xorl	$1, %eax
	.loc 2 927 6
	testb	%al, %al
	jne	.L113
	jmp	.L205
.L112:
.LBB19:
	.loc 2 764 7
	cmpl	$135, -124(%rbp)
	jg	.L115
	cmpl	$48, -124(%rbp)
	jge	.L116
	cmpl	$-131, -124(%rbp)
	je	.L117
	cmpl	$-130, -124(%rbp)
	je	.L118
	jmp	.L115
.L116:
	movl	-124(%rbp), %eax
	subl	$48, %eax
	cmpl	$87, %eax
	ja	.L115
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L120(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L120(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L120:
	.long	.L144-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L143-.L120
	.long	.L115-.L120
	.long	.L142-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L142-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L141-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L140-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L139-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L138-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L137-.L120
	.long	.L136-.L120
	.long	.L135-.L120
	.long	.L134-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L133-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L132-.L120
	.long	.L131-.L120
	.long	.L130-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L129-.L120
	.long	.L128-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L127-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L115-.L120
	.long	.L126-.L120
	.long	.L125-.L120
	.long	.L124-.L120
	.long	.L123-.L120
	.long	.L115-.L120
	.long	.L122-.L120
	.long	.L121-.L120
	.long	.L119-.L120
	.text
.L144:
	.loc 2 773 36
	movb	$1, opt_nul_terminate_output(%rip)
	.loc 2 774 11
	jmp	.L145
.L137:
	.loc 2 777 19
	movb	$1, opt_all(%rip)
	.loc 2 778 11
	jmp	.L145
.L126:
	.loc 2 781 25
	movb	$1, apparent_size(%rip)
	.loc 2 782 11
	jmp	.L145
.L136:
	.loc 2 785 25
	movb	$1, apparent_size(%rip)
	.loc 2 786 29
	movl	$0, human_output_opts(%rip)
	.loc 2 787 29
	movq	$1, output_block_size(%rip)
	.loc 2 788 11
	jmp	.L145
.L135:
	.loc 2 791 29
	movb	$1, print_grand_total(%rip)
	.loc 2 792 11
	jmp	.L145
.L133:
	.loc 2 795 29
	movl	$176, human_output_opts(%rip)
	.loc 2 796 29
	movq	$1, output_block_size(%rip)
	.loc 2 797 11
	jmp	.L145
.L123:
	.loc 2 800 29
	movl	$144, human_output_opts(%rip)
	.loc 2 801 29
	movq	$1, output_block_size(%rip)
	.loc 2 802 11
	jmp	.L145
.L132:
	.loc 2 805 29
	movl	$0, human_output_opts(%rip)
	.loc 2 806 29
	movq	$1024, output_block_size(%rip)
	.loc 2 807 11
	jmp	.L145
.L134:
.LBB14:
	.loc 2 812 17
	movq	optarg(%rip), %rax
	leaq	-112(%rbp), %rdx
	leaq	.LC19(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 2 812 16
	testl	%eax, %eax
	jne	.L146
	.loc 2 815 37
	movb	$1, -140(%rbp)
	.loc 2 816 27
	movq	-112(%rbp), %rax
	movq	%rax, max_depth(%rip)
.LBE14:
	.loc 2 825 11
	jmp	.L145
.L146:
.LBB15:
	.loc 2 820 17
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 820 30
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	.loc 2 820 17
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 822 20
	movb	$0, -139(%rbp)
.LBE15:
	.loc 2 825 11
	jmp	.L145
.L130:
	.loc 2 828 29
	movl	$0, human_output_opts(%rip)
	.loc 2 829 29
	movq	$1048576, output_block_size(%rip)
	.loc 2 830 11
	jmp	.L145
.L131:
	.loc 2 833 25
	movb	$1, opt_count_all(%rip)
	.loc 2 834 11
	jmp	.L145
.L129:
	.loc 2 837 30
	movb	$1, -138(%rbp)
	.loc 2 838 11
	jmp	.L145
.L128:
.LBB16:
	.loc 2 843 17
	movq	optarg(%rip), %rax
	leaq	.LC85(%rip), %r8
	leaq	opt_threshold(%rip), %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoimax@PLT
	movl	%eax, -120(%rbp)
	.loc 2 844 16
	cmpl	$0, -120(%rbp)
	je	.L148
	.loc 2 845 15
	movq	optarg(%rip), %rcx
	movl	-124(%rbp), %eax
	movsbl	%al, %edx
	movl	-136(%rbp), %esi
	movl	-120(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L148:
	.loc 2 846 31
	movq	opt_threshold(%rip), %rax
	.loc 2 846 16
	testq	%rax, %rax
	jne	.L206
	.loc 2 846 39 discriminator 1
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 846 36 discriminator 1
	cmpb	$45, %al
	jne	.L206
.LBB17:
	.loc 2 849 17
	leaq	.LC86(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L127:
.LBE17:
.LBE16:
	.loc 2 855 21
	orl	$64, -132(%rbp)
	.loc 2 856 11
	jmp	.L145
.L143:
.LBB18:
	.loc 2 860 35
	movq	optarg(%rip), %rax
	leaq	output_block_size(%rip), %rdx
	leaq	human_output_opts(%rip), %rsi
	movq	%rax, %rdi
	call	human_options@PLT
	movl	%eax, -116(%rbp)
	.loc 2 862 16
	cmpl	$0, -116(%rbp)
	je	.L207
	.loc 2 863 15
	movq	optarg(%rip), %rcx
	movl	-124(%rbp), %eax
	movsbl	%al, %edx
	movl	-136(%rbp), %esi
	movl	-116(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L142:
.LBE18:
	.loc 2 869 30
	movl	$17, -128(%rbp)
	.loc 2 870 11
	jmp	.L145
.L141:
	.loc 2 873 30
	movl	$2, -128(%rbp)
	.loc 2 874 11
	jmp	.L145
.L140:
	.loc 2 877 30
	movl	$16, -128(%rbp)
	.loc 2 878 11
	jmp	.L145
.L139:
	.loc 2 881 29
	movb	$1, opt_separate_dirs(%rip)
	.loc 2 882 11
	jmp	.L145
.L138:
	.loc 2 885 15
	movq	optarg(%rip), %rdx
	movq	exclude(%rip), %rax
	movl	$10, %r8d
	movl	$268435456, %ecx
	movq	%rax, %rsi
	movq	add_exclude@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	add_exclude_file@PLT
	.loc 2 885 14
	testl	%eax, %eax
	je	.L208
	.loc 2 888 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 888 25
	call	__errno_location@PLT
	.loc 2 888 15
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC75(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 889 18
	movb	$0, -139(%rbp)
	.loc 2 891 11
	jmp	.L208
.L124:
	.loc 2 894 22
	movq	optarg(%rip), %rax
	movq	%rax, -104(%rbp)
	.loc 2 895 11
	jmp	.L145
.L125:
	.loc 2 898 11
	movq	optarg(%rip), %rcx
	movq	exclude(%rip), %rax
	movl	$268435456, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_exclude@PLT
	.loc 2 899 11
	jmp	.L145
.L119:
	.loc 2 902 22
	movb	$1, opt_inodes(%rip)
	.loc 2 903 11
	jmp	.L145
.L122:
	.loc 2 906 20
	movb	$1, opt_time(%rip)
	.loc 2 909 14
	movq	optarg(%rip), %rax
	.loc 2 910 14
	testq	%rax, %rax
	je	.L152
	.loc 2 909 16 discriminator 1
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	time_types(%rip), %rcx
	leaq	time_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC87(%rip), %rdi
	call	__xargmatch_internal@PLT
	.loc 2 910 14 discriminator 1
	leaq	0(,%rax,4), %rdx
	leaq	time_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L153
.L152:
	.loc 2 910 14 is_stmt 0 discriminator 2
	movl	$0, %eax
.L153:
	.loc 2 907 21 is_stmt 1
	movl	%eax, time_type(%rip)
	.loc 2 911 30
	leaq	.LC88(%rip), %rdi
	call	getenv@PLT
	.loc 2 911 21
	movq	%rax, %rdi
	call	tzalloc@PLT
	.loc 2 911 19
	movq	%rax, localtz(%rip)
	.loc 2 912 11
	jmp	.L145
.L121:
	.loc 2 915 22
	movq	optarg(%rip), %rax
	movq	%rax, time_style(%rip)
	.loc 2 916 11
	jmp	.L145
.L118:
	.loc 2 918 9
	movl	$0, %edi
	call	usage
.L117:
	.loc 2 920 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC91(%rip), %rcx
	pushq	%rcx
	leaq	.LC92(%rip), %rcx
	pushq	%rcx
	leaq	.LC89(%rip), %r9
	leaq	.LC90(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC67(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$32, %rsp
	movl	$0, %edi
	call	exit@PLT
.L115:
	.loc 2 923 14
	movb	$0, -139(%rbp)
	jmp	.L154
.L206:
	.loc 2 852 11
	nop
	jmp	.L154
.L207:
	.loc 2 865 11
	nop
	jmp	.L154
.L208:
	.loc 2 891 11
	nop
.L145:
.LBE19:
	.loc 2 757 5 discriminator 1
	jmp	.L154
.L113:
	.loc 2 928 5
	movl	$1, %edi
	call	usage
.L205:
	.loc 2 930 7
	movzbl	opt_all(%rip), %eax
	.loc 2 930 6
	testb	%al, %al
	je	.L155
	.loc 2 930 15 discriminator 1
	cmpb	$0, -138(%rbp)
	je	.L155
	.loc 2 932 20
	leaq	.LC93(%rip), %rdi
	call	gettext@PLT
	.loc 2 932 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 933 7
	movl	$1, %edi
	call	usage
.L155:
	.loc 2 936 6
	cmpb	$0, -138(%rbp)
	je	.L156
	.loc 2 936 26 discriminator 1
	cmpb	$0, -140(%rbp)
	je	.L156
	.loc 2 936 62 discriminator 2
	movq	max_depth(%rip), %rax
	.loc 2 936 49 discriminator 2
	testq	%rax, %rax
	jne	.L156
	.loc 2 939 14
	leaq	.LC94(%rip), %rdi
	call	gettext@PLT
	.loc 2 938 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L156:
	.loc 2 942 6
	cmpb	$0, -138(%rbp)
	je	.L157
	.loc 2 942 26 discriminator 1
	cmpb	$0, -140(%rbp)
	je	.L157
	.loc 2 942 62 discriminator 2
	movq	max_depth(%rip), %rax
	.loc 2 942 49 discriminator 2
	testq	%rax, %rax
	je	.L157
.LBB20:
	.loc 2 944 25
	movq	max_depth(%rip), %rax
	movq	%rax, -88(%rbp)
	.loc 2 945 20
	leaq	.LC95(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 945 7
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 946 7
	movl	$1, %edi
	call	usage
.L157:
.LBE20:
	.loc 2 949 6
	cmpb	$0, -138(%rbp)
	je	.L158
	.loc 2 950 15
	movq	$0, max_depth(%rip)
.L158:
	.loc 2 952 7
	movzbl	opt_inodes(%rip), %eax
	.loc 2 952 6
	testb	%al, %al
	je	.L159
	.loc 2 954 11
	movzbl	apparent_size(%rip), %eax
	.loc 2 954 10
	testb	%al, %al
	je	.L160
	.loc 2 956 24
	leaq	.LC96(%rip), %rdi
	call	gettext@PLT
	.loc 2 956 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L160:
	.loc 2 959 25
	movq	$1, output_block_size(%rip)
.L159:
	.loc 2 963 7
	movzbl	opt_time(%rip), %eax
	.loc 2 963 6
	testb	%al, %al
	je	.L209
	.loc 2 965 11
	movq	time_style(%rip), %rax
	.loc 2 965 10
	testq	%rax, %rax
	jne	.L162
	.loc 2 967 24
	leaq	.LC97(%rip), %rdi
	call	getenv@PLT
	.loc 2 967 22
	movq	%rax, time_style(%rip)
	.loc 2 970 15
	movq	time_style(%rip), %rax
	.loc 2 970 14
	testq	%rax, %rax
	je	.L163
	.loc 2 970 31 discriminator 1
	movq	time_style(%rip), %rax
	leaq	.LC98(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 970 28 discriminator 1
	testl	%eax, %eax
	jne	.L164
.L163:
	.loc 2 971 24
	leaq	.LC52(%rip), %rax
	movq	%rax, time_style(%rip)
	jmp	.L162
.L164:
	.loc 2 972 20
	movq	time_style(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 972 19
	cmpb	$43, %al
	jne	.L166
.LBB21:
	.loc 2 976 25
	movq	time_style(%rip), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -80(%rbp)
	.loc 2 977 18
	cmpq	$0, -80(%rbp)
	je	.L162
	.loc 2 978 20
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L162
.L167:
.LBE21:
.LBB22:
	.loc 2 986 28
	movq	time_style(%rip), %rdx
	movq	prefix_len.6745(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, time_style(%rip)
.L166:
	.loc 2 985 22
	movq	prefix_len.6745(%rip), %rdx
	movq	time_style(%rip), %rax
	leaq	posix_prefix.6744(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 2 985 21
	testl	%eax, %eax
	je	.L167
.L162:
.LBE22:
	.loc 2 990 11
	movq	time_style(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 990 10
	cmpb	$43, %al
	jne	.L168
	.loc 2 991 34
	movq	time_style(%rip), %rax
	addq	$1, %rax
	.loc 2 991 21
	movq	%rax, time_format(%rip)
	jmp	.L161
.L168:
	.loc 2 994 19
	movq	argmatch_die(%rip), %rdx
	movq	time_style(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	time_style_types(%rip), %rcx
	leaq	time_style_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC99(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	time_style_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 994 11
	cmpl	$2, %eax
	je	.L169
	cmpl	$2, %eax
	ja	.L161
	testl	%eax, %eax
	je	.L170
	cmpl	$1, %eax
	je	.L171
	jmp	.L161
.L170:
	.loc 2 998 27
	leaq	.LC100(%rip), %rax
	movq	%rax, time_format(%rip)
	.loc 2 999 15
	jmp	.L161
.L171:
	.loc 2 1002 27
	leaq	.LC101(%rip), %rax
	movq	%rax, time_format(%rip)
	.loc 2 1003 15
	jmp	.L161
.L169:
	.loc 2 1006 27
	leaq	.LC102(%rip), %rax
	movq	%rax, time_format(%rip)
	.loc 2 1007 15
	jmp	.L161
.L209:
	.loc 2 1009 9
	nop
.L161:
	.loc 2 1013 6
	cmpq	$0, -104(%rbp)
	je	.L172
	.loc 2 1017 18
	movl	optind(%rip), %eax
	.loc 2 1017 10
	cmpl	%eax, -148(%rbp)
	jle	.L173
	.loc 2 1019 58
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1019 11
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1019 24
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	.loc 2 1019 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1020 11
	leaq	.LC104(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC105(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 1022 11
	movl	$1, %edi
	call	usage
.L173:
	.loc 2 1025 14
	movq	-104(%rbp), %rax
	leaq	.LC106(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1025 10
	testl	%eax, %eax
	je	.L174
	.loc 2 1025 41 discriminator 1
	movq	stdin(%rip), %rdx
	movq	-104(%rbp), %rax
	leaq	.LC107(%rip), %rsi
	movq	%rax, %rdi
	call	freopen_safer@PLT
	.loc 2 1025 11 discriminator 1
	testq	%rax, %rax
	jne	.L174
.LBB23:
	.loc 2 1026 9
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC108(%rip), %rdi
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
.L174:
.LBE23:
	.loc 2 1029 12
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	argv_iter_init_stream@PLT
	movq	%rax, -96(%rbp)
	.loc 2 1033 16
	movb	$1, hash_all(%rip)
	jmp	.L175
.L172:
.LBB24:
	.loc 2 1037 30
	movl	optind(%rip), %eax
	.loc 2 1037 53
	cmpl	%eax, -148(%rbp)
	jle	.L176
	.loc 2 1037 44 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 1037 53 discriminator 1
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L177
.L176:
	.loc 2 1037 53 is_stmt 0 discriminator 2
	leaq	-48(%rbp), %rax
.L177:
	.loc 2 1037 14 is_stmt 1 discriminator 4
	movq	%rax, -72(%rbp)
	.loc 2 1038 12 discriminator 4
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	argv_iter_init_argv@PLT
	movq	%rax, -96(%rbp)
	.loc 2 1043 26 discriminator 4
	movl	optind(%rip), %eax
	addl	$1, %eax
	.loc 2 1043 37 discriminator 4
	cmpl	%eax, -148(%rbp)
	jg	.L178
	.loc 2 1043 37 is_stmt 0 discriminator 2
	cmpl	$2, -128(%rbp)
	jne	.L179
.L178:
	.loc 2 1043 37 discriminator 3
	movl	$1, %eax
	jmp	.L180
.L179:
	.loc 2 1043 37 discriminator 4
	movl	$0, %eax
.L180:
	.loc 2 1043 37 discriminator 6
	andl	$1, %eax
	.loc 2 1043 16 is_stmt 1 discriminator 6
	movb	%al, hash_all(%rip)
.L175:
.LBE24:
	.loc 2 1046 6
	cmpq	$0, -96(%rbp)
	jne	.L181
	.loc 2 1047 5
	call	xalloc_die@PLT
.L181:
	.loc 2 1050 14
	call	di_set_alloc@PLT
	.loc 2 1050 12
	movq	%rax, di_files(%rip)
	.loc 2 1051 7
	movq	di_files(%rip), %rax
	.loc 2 1051 6
	testq	%rax, %rax
	jne	.L182
	.loc 2 1052 5
	call	xalloc_die@PLT
.L182:
	.loc 2 1056 7
	movzbl	opt_count_all(%rip), %eax
	.loc 2 1056 6
	testb	%al, %al
	jne	.L183
	.loc 2 1056 24 discriminator 1
	movzbl	hash_all(%rip), %eax
	xorl	$1, %eax
	.loc 2 1056 21 discriminator 1
	testb	%al, %al
	je	.L184
.L183:
	.loc 2 1057 15
	orl	$256, -132(%rbp)
.L184:
	.loc 2 1059 13
	movl	-128(%rbp), %eax
	orl	%eax, -132(%rbp)
.L197:
.LBB25:
	.loc 2 1064 12
	movb	$0, -137(%rbp)
	.loc 2 1066 25
	leaq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	argv_iter@PLT
	movq	%rax, -64(%rbp)
	.loc 2 1067 10
	cmpq	$0, -64(%rbp)
	jne	.L185
	.loc 2 1069 11
	movl	-112(%rbp), %eax
	cmpl	$4, %eax
	je	.L186
	cmpl	$4, %eax
	ja	.L187
	cmpl	$2, %eax
	je	.L210
	cmpl	$3, %eax
	je	.L189
	jmp	.L187
.L186:
	.loc 2 1074 15
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 1074 32
	leaq	.LC109(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 1074 25
	call	__errno_location@PLT
	.loc 2 1074 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1076 18
	movb	$0, -139(%rbp)
	.loc 2 1077 15
	jmp	.L198
.L189:
	.loc 2 1079 15
	call	xalloc_die@PLT
.L187:
	.loc 2 1081 15 discriminator 1
	leaq	__PRETTY_FUNCTION__.6766(%rip), %rcx
	movl	$1081, %edx
	leaq	.LC72(%rip), %rsi
	leaq	.LC110(%rip), %rdi
	call	__assert_fail@PLT
.L185:
	.loc 2 1084 10
	cmpq	$0, -104(%rbp)
	je	.L191
	.loc 2 1084 25 discriminator 1
	movq	-104(%rbp), %rax
	leaq	.LC106(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1084 22 discriminator 1
	testl	%eax, %eax
	jne	.L191
	.loc 2 1084 52 discriminator 2
	movq	-64(%rbp), %rax
	leaq	.LC106(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1084 49 discriminator 2
	testl	%eax, %eax
	jne	.L191
	.loc 2 1088 11
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 1088 24
	leaq	.LC111(%rip), %rdi
	call	gettext@PLT
	.loc 2 1088 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1091 21
	movb	$1, -137(%rbp)
.L191:
	.loc 2 1098 21
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1098 10
	testb	%al, %al
	jne	.L192
	.loc 2 1104 14
	cmpq	$0, -104(%rbp)
	jne	.L193
	.loc 2 1105 13
	leaq	.LC112(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	leaq	.LC75(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L194
.L193:
.LBB26:
	.loc 2 1111 47
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	argv_iter_n_args@PLT
	movq	%rax, -56(%rbp)
	.loc 2 1112 15
	leaq	.LC112(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	-56(%rbp), %rdx
	movq	%rbx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	leaq	.LC113(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L194:
.LBE26:
	.loc 2 1115 21
	movb	$1, -137(%rbp)
.L192:
	.loc 2 1118 10
	cmpb	$0, -137(%rbp)
	je	.L195
	.loc 2 1119 12
	movb	$0, -139(%rbp)
	jmp	.L197
.L195:
	.loc 2 1122 24
	movq	-64(%rbp), %rax
	movq	%rax, temp_argv.6757(%rip)
	.loc 2 1123 17
	movl	-132(%rbp), %eax
	movl	%eax, %esi
	leaq	temp_argv.6757(%rip), %rdi
	call	du_files
	.loc 2 1123 14
	movzbl	-139(%rbp), %edx
	.loc 2 1123 17
	movzbl	%al, %eax
	.loc 2 1123 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -139(%rbp)
.LBE25:
	.loc 2 1063 5
	jmp	.L197
.L210:
.LBB27:
	.loc 2 1072 15
	nop
.L198:
.LBE27:
	.loc 2 1128 3
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	argv_iter_free@PLT
	.loc 2 1129 3
	movq	di_files(%rip), %rax
	movq	%rax, %rdi
	call	di_set_free@PLT
	.loc 2 1130 7
	movq	di_mnt(%rip), %rax
	.loc 2 1130 6
	testq	%rax, %rax
	je	.L199
	.loc 2 1131 5
	movq	di_mnt(%rip), %rax
	movq	%rax, %rdi
	call	di_set_free@PLT
.L199:
	.loc 2 1133 6
	cmpq	$0, -104(%rbp)
	je	.L200
	.loc 2 1133 22 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1133 18 discriminator 1
	testl	%eax, %eax
	jne	.L201
	.loc 2 1133 40 discriminator 3
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1133 37 discriminator 3
	testl	%eax, %eax
	je	.L200
.L201:
	.loc 2 1133 61 discriminator 4
	cmpb	$0, -139(%rbp)
	je	.L200
.LBB28:
	.loc 2 1134 5
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC114(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L200:
.LBE28:
	.loc 2 1136 7
	movzbl	print_grand_total(%rip), %eax
	.loc 2 1136 6
	testb	%al, %al
	je	.L202
	.loc 2 1137 27
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 2 1137 5
	movq	%rax, %rsi
	leaq	tot_dui(%rip), %rdi
	call	print_size
.L202:
	.loc 2 1139 28
	movzbl	-139(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1140 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L204
	call	__stack_chk_fail@PLT
.L204:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6672, @object
	.size	__PRETTY_FUNCTION__.6672, 13
__PRETTY_FUNCTION__.6672:
	.string	"process_file"
	.local	n_alloc.6665
	.comm	n_alloc.6665,8,8
	.local	dulvl.6666
	.comm	dulvl.6666,8,8
	.align 8
	.type	prefix_len.6745, @object
	.size	prefix_len.6745, 8
prefix_len.6745:
	.quad	6
	.type	posix_prefix.6744, @object
	.size	posix_prefix.6744, 7
posix_prefix.6744:
	.string	"posix-"
	.type	__PRETTY_FUNCTION__.6766, @object
	.size	__PRETTY_FUNCTION__.6766, 5
__PRETTY_FUNCTION__.6766:
	.string	"main"
	.local	temp_argv.6757
	.comm	temp_argv.6757,16,16
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 12 "/usr/include/time.h"
	.file 13 "./lib/time.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 15 "/usr/include/signal.h"
	.file 16 "/usr/include/unistd.h"
	.file 17 "/usr/include/errno.h"
	.file 18 "src/version.h"
	.file 19 "./lib/exitfail.h"
	.file 20 "/usr/include/stdint.h"
	.file 21 "./lib/timespec.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 24 "/usr/include/stdio.h"
	.file 25 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 26 "./lib/version-etc.h"
	.file 27 "./lib/progname.h"
	.file 28 "./lib/quotearg.h"
	.file 29 "./lib/quote.h"
	.file 30 "./lib/argmatch.h"
	.file 31 "./lib/argv-iter.h"
	.file 32 "./lib/error.h"
	.file 33 "./lib/xstrtol.h"
	.file 34 "./lib/human.h"
	.file 35 "./lib/mountlist.h"
	.file 36 "./lib/i-ring.h"
	.file 37 "./lib/fts_.h"
	.file 38 "/usr/include/dirent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1aee
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF339
	.byte	0xc
	.long	.LASF340
	.long	.LASF341
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
	.long	.LASF33
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
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
	.long	.LASF15
	.byte	0x5
	.byte	0x48
	.byte	0x12
	.long	0xfd
	.uleb128 0xb
	.long	.LASF16
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0xe8
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0xe8
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0xe1
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0xe1
	.uleb128 0xb
	.long	.LASF20
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0xe8
	.uleb128 0xb
	.long	.LASF21
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0xe1
	.uleb128 0xb
	.long	.LASF22
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0xe8
	.uleb128 0xb
	.long	.LASF23
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0xfd
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0xfd
	.uleb128 0xb
	.long	.LASF25
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0xfd
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xb
	.long	.LASF26
	.byte	0x5
	.byte	0xae
	.byte	0x1d
	.long	0xfd
	.uleb128 0xb
	.long	.LASF27
	.byte	0x5
	.byte	0xb3
	.byte	0x1c
	.long	0xfd
	.uleb128 0xb
	.long	.LASF28
	.byte	0x5
	.byte	0xc4
	.byte	0x21
	.long	0xfd
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.byte	0x2f
	.byte	0x11
	.long	0x140
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.byte	0x3b
	.byte	0x11
	.long	0x11c
	.uleb128 0xb
	.long	.LASF31
	.byte	0x7
	.byte	0x7
	.byte	0x12
	.long	0x17c
	.uleb128 0xb
	.long	.LASF32
	.byte	0x8
	.byte	0xd1
	.byte	0x17
	.long	0xe8
	.uleb128 0x5
	.long	0x1d2
	.uleb128 0x8
	.long	.LASF34
	.byte	0x10
	.byte	0x9
	.byte	0xa
	.byte	0x8
	.long	0x20b
	.uleb128 0x9
	.long	.LASF35
	.byte	0x9
	.byte	0xc
	.byte	0xc
	.long	0x17c
	.byte	0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x9
	.byte	0x10
	.byte	0x15
	.long	0x1a2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF37
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF38
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF39
	.uleb128 0xe
	.string	"tm"
	.byte	0x38
	.byte	0xb
	.byte	0x7
	.byte	0x8
	.long	0x2c2
	.uleb128 0x9
	.long	.LASF40
	.byte	0xb
	.byte	0x9
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF41
	.byte	0xb
	.byte	0xa
	.byte	0x7
	.long	0x57
	.byte	0x4
	.uleb128 0x9
	.long	.LASF42
	.byte	0xb
	.byte	0xb
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0x9
	.long	.LASF43
	.byte	0xb
	.byte	0xc
	.byte	0x7
	.long	0x57
	.byte	0xc
	.uleb128 0x9
	.long	.LASF44
	.byte	0xb
	.byte	0xd
	.byte	0x7
	.long	0x57
	.byte	0x10
	.uleb128 0x9
	.long	.LASF45
	.byte	0xb
	.byte	0xe
	.byte	0x7
	.long	0x57
	.byte	0x14
	.uleb128 0x9
	.long	.LASF46
	.byte	0xb
	.byte	0xf
	.byte	0x7
	.long	0x57
	.byte	0x18
	.uleb128 0x9
	.long	.LASF47
	.byte	0xb
	.byte	0x10
	.byte	0x7
	.long	0x57
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF48
	.byte	0xb
	.byte	0x11
	.byte	0x7
	.long	0x57
	.byte	0x20
	.uleb128 0x9
	.long	.LASF49
	.byte	0xb
	.byte	0x14
	.byte	0xc
	.long	0xfd
	.byte	0x28
	.uleb128 0x9
	.long	.LASF50
	.byte	0xb
	.byte	0x15
	.byte	0xf
	.long	0xc2
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	0x39
	.long	0x2d2
	.uleb128 0x10
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x2c2
	.uleb128 0x2
	.long	.LASF52
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF53
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0xfd
	.uleb128 0x2
	.long	.LASF54
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x2c2
	.uleb128 0x2
	.long	.LASF55
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF56
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0xfd
	.uleb128 0xd
	.long	.LASF57
	.byte	0xc
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	.LASF58
	.byte	0x8
	.byte	0x8f
	.byte	0x1a
	.long	0xfd
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF59
	.uleb128 0x11
	.long	.LASF60
	.byte	0xd
	.value	0x32c
	.byte	0x19
	.long	0x347
	.uleb128 0x3
	.byte	0x8
	.long	0x34d
	.uleb128 0x12
	.long	.LASF50
	.uleb128 0x8
	.long	.LASF61
	.byte	0x90
	.byte	0xe
	.byte	0x2e
	.byte	0x8
	.long	0x423
	.uleb128 0x9
	.long	.LASF62
	.byte	0xe
	.byte	0x30
	.byte	0xd
	.long	0x11c
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0xe
	.byte	0x35
	.byte	0xd
	.long	0x140
	.byte	0x8
	.uleb128 0x9
	.long	.LASF64
	.byte	0xe
	.byte	0x3d
	.byte	0xf
	.long	0x158
	.byte	0x10
	.uleb128 0x9
	.long	.LASF65
	.byte	0xe
	.byte	0x3e
	.byte	0xe
	.long	0x14c
	.byte	0x18
	.uleb128 0x9
	.long	.LASF66
	.byte	0xe
	.byte	0x40
	.byte	0xd
	.long	0x128
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF67
	.byte	0xe
	.byte	0x41
	.byte	0xd
	.long	0x134
	.byte	0x20
	.uleb128 0x9
	.long	.LASF68
	.byte	0xe
	.byte	0x43
	.byte	0x9
	.long	0x57
	.byte	0x24
	.uleb128 0x9
	.long	.LASF69
	.byte	0xe
	.byte	0x45
	.byte	0xd
	.long	0x11c
	.byte	0x28
	.uleb128 0x9
	.long	.LASF70
	.byte	0xe
	.byte	0x4a
	.byte	0xd
	.long	0x164
	.byte	0x30
	.uleb128 0x9
	.long	.LASF71
	.byte	0xe
	.byte	0x4e
	.byte	0x11
	.long	0x18a
	.byte	0x38
	.uleb128 0x9
	.long	.LASF72
	.byte	0xe
	.byte	0x50
	.byte	0x10
	.long	0x196
	.byte	0x40
	.uleb128 0x9
	.long	.LASF73
	.byte	0xe
	.byte	0x5b
	.byte	0x15
	.long	0x1e3
	.byte	0x48
	.uleb128 0x9
	.long	.LASF74
	.byte	0xe
	.byte	0x5c
	.byte	0x15
	.long	0x1e3
	.byte	0x58
	.uleb128 0x9
	.long	.LASF75
	.byte	0xe
	.byte	0x5d
	.byte	0x15
	.long	0x1e3
	.byte	0x68
	.uleb128 0x9
	.long	.LASF76
	.byte	0xe
	.byte	0x6a
	.byte	0x17
	.long	0x428
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.long	0x352
	.uleb128 0xf
	.long	0x1a2
	.long	0x438
	.uleb128 0x10
	.long	0xe8
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x3
	.byte	0x8
	.long	0x438
	.uleb128 0xf
	.long	0xc8
	.long	0x44f
	.uleb128 0x10
	.long	0xe8
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x43f
	.uleb128 0xd
	.long	.LASF77
	.byte	0xf
	.value	0x11e
	.byte	0x1a
	.long	0x44f
	.uleb128 0xd
	.long	.LASF78
	.byte	0xf
	.value	0x11f
	.byte	0x1a
	.long	0x44f
	.uleb128 0xd
	.long	.LASF79
	.byte	0x10
	.value	0x21f
	.byte	0xf
	.long	0x47b
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0xd
	.long	.LASF80
	.byte	0x10
	.value	0x221
	.byte	0xf
	.long	0x47b
	.uleb128 0x2
	.long	.LASF81
	.byte	0x11
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF82
	.byte	0x11
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF83
	.byte	0x12
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF84
	.byte	0x13
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x14
	.string	"DIR"
	.byte	0x26
	.byte	0x7f
	.byte	0x1c
	.long	0x4ca
	.uleb128 0x12
	.long	.LASF85
	.uleb128 0xb
	.long	.LASF86
	.byte	0x14
	.byte	0x65
	.byte	0x15
	.long	0x104
	.uleb128 0xb
	.long	.LASF87
	.byte	0x14
	.byte	0x66
	.byte	0x16
	.long	0x110
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x15
	.byte	0x29
	.byte	0x6
	.long	0x4ff
	.uleb128 0x16
	.long	.LASF88
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x514
	.uleb128 0x17
	.long	.LASF89
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0xd8
	.byte	0x16
	.byte	0x31
	.byte	0x8
	.long	0x69b
	.uleb128 0x9
	.long	.LASF91
	.byte	0x16
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF92
	.byte	0x16
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF93
	.byte	0x16
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF94
	.byte	0x16
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF95
	.byte	0x16
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF96
	.byte	0x16
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF97
	.byte	0x16
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF98
	.byte	0x16
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF99
	.byte	0x16
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF100
	.byte	0x16
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF101
	.byte	0x16
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF102
	.byte	0x16
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF103
	.byte	0x16
	.byte	0x44
	.byte	0x16
	.long	0x6b4
	.byte	0x60
	.uleb128 0x9
	.long	.LASF104
	.byte	0x16
	.byte	0x46
	.byte	0x14
	.long	0x6ba
	.byte	0x68
	.uleb128 0x9
	.long	.LASF105
	.byte	0x16
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF106
	.byte	0x16
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF107
	.byte	0x16
	.byte	0x4a
	.byte	0xb
	.long	0x164
	.byte	0x78
	.uleb128 0x9
	.long	.LASF108
	.byte	0x16
	.byte	0x4d
	.byte	0x12
	.long	0xda
	.byte	0x80
	.uleb128 0x9
	.long	.LASF109
	.byte	0x16
	.byte	0x4e
	.byte	0xf
	.long	0xef
	.byte	0x82
	.uleb128 0x9
	.long	.LASF110
	.byte	0x16
	.byte	0x4f
	.byte	0x8
	.long	0x6c0
	.byte	0x83
	.uleb128 0x9
	.long	.LASF111
	.byte	0x16
	.byte	0x51
	.byte	0xf
	.long	0x6d0
	.byte	0x88
	.uleb128 0x9
	.long	.LASF112
	.byte	0x16
	.byte	0x59
	.byte	0xd
	.long	0x170
	.byte	0x90
	.uleb128 0x9
	.long	.LASF113
	.byte	0x16
	.byte	0x5b
	.byte	0x17
	.long	0x6db
	.byte	0x98
	.uleb128 0x9
	.long	.LASF114
	.byte	0x16
	.byte	0x5c
	.byte	0x19
	.long	0x6e6
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF115
	.byte	0x16
	.byte	0x5d
	.byte	0x14
	.long	0x6ba
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF116
	.byte	0x16
	.byte	0x5e
	.byte	0x9
	.long	0x188
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF117
	.byte	0x16
	.byte	0x5f
	.byte	0xa
	.long	0x1d2
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF118
	.byte	0x16
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF119
	.byte	0x16
	.byte	0x62
	.byte	0x8
	.long	0x6ec
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF120
	.byte	0x17
	.byte	0x7
	.byte	0x19
	.long	0x514
	.uleb128 0x18
	.long	.LASF342
	.byte	0x16
	.byte	0x2b
	.byte	0xe
	.uleb128 0x12
	.long	.LASF121
	.uleb128 0x3
	.byte	0x8
	.long	0x6af
	.uleb128 0x3
	.byte	0x8
	.long	0x514
	.uleb128 0xf
	.long	0x3f
	.long	0x6d0
	.uleb128 0x10
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x6a7
	.uleb128 0x12
	.long	.LASF122
	.uleb128 0x3
	.byte	0x8
	.long	0x6d6
	.uleb128 0x12
	.long	.LASF123
	.uleb128 0x3
	.byte	0x8
	.long	0x6e1
	.uleb128 0xf
	.long	0x3f
	.long	0x6fc
	.uleb128 0x10
	.long	0xe8
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF124
	.byte	0x18
	.byte	0x89
	.byte	0xe
	.long	0x708
	.uleb128 0x3
	.byte	0x8
	.long	0x69b
	.uleb128 0x2
	.long	.LASF125
	.byte	0x18
	.byte	0x8a
	.byte	0xe
	.long	0x708
	.uleb128 0x2
	.long	.LASF126
	.byte	0x18
	.byte	0x8b
	.byte	0xe
	.long	0x708
	.uleb128 0x2
	.long	.LASF127
	.byte	0x19
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xc8
	.long	0x73d
	.uleb128 0x19
	.byte	0
	.uleb128 0x5
	.long	0x732
	.uleb128 0x2
	.long	.LASF128
	.byte	0x19
	.byte	0x1b
	.byte	0x1a
	.long	0x73d
	.uleb128 0x2
	.long	.LASF129
	.byte	0x19
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF130
	.byte	0x19
	.byte	0x1f
	.byte	0x1a
	.long	0x73d
	.uleb128 0x1a
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x784
	.uleb128 0x1b
	.long	.LASF131
	.sleb128 -130
	.uleb128 0x1b
	.long	.LASF132
	.sleb128 -131
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0x78f
	.uleb128 0x19
	.byte	0
	.uleb128 0x5
	.long	0x784
	.uleb128 0x2
	.long	.LASF133
	.byte	0x1a
	.byte	0x19
	.byte	0x13
	.long	0x78f
	.uleb128 0x2
	.long	.LASF134
	.byte	0x1b
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x1c
	.byte	0x20
	.byte	0x6
	.long	0x801
	.uleb128 0x17
	.long	.LASF135
	.byte	0
	.uleb128 0x17
	.long	.LASF136
	.byte	0x1
	.uleb128 0x17
	.long	.LASF137
	.byte	0x2
	.uleb128 0x17
	.long	.LASF138
	.byte	0x3
	.uleb128 0x17
	.long	.LASF139
	.byte	0x4
	.uleb128 0x17
	.long	.LASF140
	.byte	0x5
	.uleb128 0x17
	.long	.LASF141
	.byte	0x6
	.uleb128 0x17
	.long	.LASF142
	.byte	0x7
	.uleb128 0x17
	.long	.LASF143
	.byte	0x8
	.uleb128 0x17
	.long	.LASF144
	.byte	0x9
	.uleb128 0x17
	.long	.LASF145
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x7ac
	.uleb128 0xd
	.long	.LASF146
	.byte	0x1c
	.value	0x10b
	.byte	0x1a
	.long	0x73d
	.uleb128 0xf
	.long	0x801
	.long	0x81e
	.uleb128 0x19
	.byte	0
	.uleb128 0x5
	.long	0x813
	.uleb128 0xd
	.long	.LASF147
	.byte	0x1c
	.value	0x10c
	.byte	0x21
	.long	0x81e
	.uleb128 0x12
	.long	.LASF148
	.uleb128 0x2
	.long	.LASF149
	.byte	0x1d
	.byte	0x19
	.byte	0x1f
	.long	0x830
	.uleb128 0xb
	.long	.LASF150
	.byte	0x1e
	.byte	0x3d
	.byte	0x10
	.long	0x439
	.uleb128 0x2
	.long	.LASF151
	.byte	0x1e
	.byte	0x3e
	.byte	0x19
	.long	0x841
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x1f
	.byte	0x19
	.byte	0x6
	.long	0x884
	.uleb128 0x17
	.long	.LASF154
	.byte	0x1
	.uleb128 0x17
	.long	.LASF155
	.byte	0x2
	.uleb128 0x17
	.long	.LASF156
	.byte	0x3
	.uleb128 0x17
	.long	.LASF157
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF158
	.byte	0x20
	.byte	0x32
	.byte	0xf
	.long	0x439
	.uleb128 0x2
	.long	.LASF159
	.byte	0x20
	.byte	0x35
	.byte	0x15
	.long	0xe1
	.uleb128 0x2
	.long	.LASF160
	.byte	0x20
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x21
	.byte	0x19
	.byte	0x6
	.long	0x8d9
	.uleb128 0x17
	.long	.LASF162
	.byte	0
	.uleb128 0x17
	.long	.LASF163
	.byte	0x1
	.uleb128 0x17
	.long	.LASF164
	.byte	0x2
	.uleb128 0x17
	.long	.LASF165
	.byte	0x3
	.uleb128 0x17
	.long	.LASF166
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x22
	.byte	0x2c
	.byte	0x1
	.long	0x925
	.uleb128 0x17
	.long	.LASF167
	.byte	0
	.uleb128 0x17
	.long	.LASF168
	.byte	0x1
	.uleb128 0x17
	.long	.LASF169
	.byte	0x2
	.uleb128 0x17
	.long	.LASF170
	.byte	0x4
	.uleb128 0x17
	.long	.LASF171
	.byte	0x8
	.uleb128 0x17
	.long	.LASF172
	.byte	0x10
	.uleb128 0x17
	.long	.LASF173
	.byte	0x20
	.uleb128 0x17
	.long	.LASF174
	.byte	0x40
	.uleb128 0x17
	.long	.LASF175
	.byte	0x80
	.uleb128 0x1d
	.long	.LASF176
	.value	0x100
	.byte	0
	.uleb128 0x8
	.long	.LASF177
	.byte	0x38
	.byte	0x23
	.byte	0x1a
	.byte	0x8
	.long	0x9b1
	.uleb128 0x9
	.long	.LASF178
	.byte	0x23
	.byte	0x1c
	.byte	0x9
	.long	0x39
	.byte	0
	.uleb128 0x9
	.long	.LASF179
	.byte	0x23
	.byte	0x1d
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF180
	.byte	0x23
	.byte	0x1e
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF181
	.byte	0x23
	.byte	0x20
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF182
	.byte	0x23
	.byte	0x21
	.byte	0x9
	.long	0x1ba
	.byte	0x20
	.uleb128 0x1e
	.long	.LASF183
	.byte	0x23
	.byte	0x22
	.byte	0x10
	.long	0xe1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x28
	.uleb128 0x1e
	.long	.LASF184
	.byte	0x23
	.byte	0x23
	.byte	0x10
	.long	0xe1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x28
	.uleb128 0x1e
	.long	.LASF185
	.byte	0x23
	.byte	0x24
	.byte	0x10
	.long	0xe1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x28
	.uleb128 0x9
	.long	.LASF186
	.byte	0x23
	.byte	0x25
	.byte	0x17
	.long	0x9b1
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x925
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x24
	.byte	0x14
	.byte	0x6
	.long	0x9cc
	.uleb128 0x17
	.long	.LASF187
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF188
	.byte	0x20
	.byte	0x24
	.byte	0x1f
	.byte	0x8
	.long	0xa1b
	.uleb128 0x9
	.long	.LASF189
	.byte	0x24
	.byte	0x21
	.byte	0x7
	.long	0xa1b
	.byte	0
	.uleb128 0x9
	.long	.LASF190
	.byte	0x24
	.byte	0x22
	.byte	0x7
	.long	0x57
	.byte	0x10
	.uleb128 0x9
	.long	.LASF191
	.byte	0x24
	.byte	0x23
	.byte	0x10
	.long	0xe1
	.byte	0x14
	.uleb128 0x9
	.long	.LASF192
	.byte	0x24
	.byte	0x24
	.byte	0x10
	.long	0xe1
	.byte	0x18
	.uleb128 0x9
	.long	.LASF193
	.byte	0x24
	.byte	0x25
	.byte	0x8
	.long	0xa2b
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.long	0x57
	.long	0xa2b
	.uleb128 0x10
	.long	0xe8
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF194
	.uleb128 0xb
	.long	.LASF188
	.byte	0x24
	.byte	0x27
	.byte	0x17
	.long	0x9cc
	.uleb128 0x1f
	.byte	0x8
	.byte	0x25
	.byte	0xab
	.byte	0x9
	.long	0xa5f
	.uleb128 0x20
	.string	"ht"
	.byte	0x25
	.byte	0xb8
	.byte	0x24
	.long	0xa64
	.uleb128 0x21
	.long	.LASF195
	.byte	0x25
	.byte	0xbe
	.byte	0x2b
	.long	0xa6f
	.byte	0
	.uleb128 0x12
	.long	.LASF196
	.uleb128 0x3
	.byte	0x8
	.long	0xa5f
	.uleb128 0x12
	.long	.LASF197
	.uleb128 0x3
	.byte	0x8
	.long	0xa6a
	.uleb128 0x22
	.byte	0x80
	.byte	0x25
	.byte	0x50
	.byte	0x9
	.long	0xb35
	.uleb128 0x9
	.long	.LASF198
	.byte	0x25
	.byte	0x51
	.byte	0x19
	.long	0xc41
	.byte	0
	.uleb128 0x9
	.long	.LASF199
	.byte	0x25
	.byte	0x52
	.byte	0x19
	.long	0xc41
	.byte	0x8
	.uleb128 0x9
	.long	.LASF200
	.byte	0x25
	.byte	0x53
	.byte	0x1a
	.long	0xc47
	.byte	0x10
	.uleb128 0x9
	.long	.LASF201
	.byte	0x25
	.byte	0x54
	.byte	0xf
	.long	0x1ba
	.byte	0x18
	.uleb128 0x9
	.long	.LASF202
	.byte	0x25
	.byte	0x55
	.byte	0xf
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF203
	.byte	0x25
	.byte	0x56
	.byte	0xd
	.long	0x57
	.byte	0x28
	.uleb128 0x9
	.long	.LASF204
	.byte	0x25
	.byte	0x57
	.byte	0xd
	.long	0x57
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF205
	.byte	0x25
	.byte	0x59
	.byte	0x10
	.long	0x1d2
	.byte	0x30
	.uleb128 0x9
	.long	.LASF206
	.byte	0x25
	.byte	0x5a
	.byte	0x10
	.long	0x1d2
	.byte	0x38
	.uleb128 0x9
	.long	.LASF207
	.byte	0x25
	.byte	0x5b
	.byte	0xf
	.long	0xc6d
	.byte	0x40
	.uleb128 0x9
	.long	.LASF208
	.byte	0x25
	.byte	0xa0
	.byte	0xd
	.long	0x57
	.byte	0x48
	.uleb128 0x9
	.long	.LASF209
	.byte	0x25
	.byte	0xa9
	.byte	0x1c
	.long	0xa64
	.byte	0x50
	.uleb128 0x9
	.long	.LASF210
	.byte	0x25
	.byte	0xbf
	.byte	0xb
	.long	0xa3e
	.byte	0x58
	.uleb128 0x9
	.long	.LASF211
	.byte	0x25
	.byte	0xc4
	.byte	0x10
	.long	0xa32
	.byte	0x60
	.byte	0
	.uleb128 0x23
	.long	.LASF212
	.value	0x100
	.byte	0x25
	.byte	0xc7
	.byte	0x10
	.long	0xc3c
	.uleb128 0x9
	.long	.LASF210
	.byte	0x25
	.byte	0xc8
	.byte	0x19
	.long	0xc41
	.byte	0
	.uleb128 0x9
	.long	.LASF213
	.byte	0x25
	.byte	0xc9
	.byte	0x19
	.long	0xc41
	.byte	0x8
	.uleb128 0x9
	.long	.LASF214
	.byte	0x25
	.byte	0xca
	.byte	0x19
	.long	0xc41
	.byte	0x10
	.uleb128 0x9
	.long	.LASF215
	.byte	0x25
	.byte	0xcb
	.byte	0xe
	.long	0xc7f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF216
	.byte	0x25
	.byte	0xce
	.byte	0xe
	.long	0xfd
	.byte	0x20
	.uleb128 0x9
	.long	.LASF217
	.byte	0x25
	.byte	0xcf
	.byte	0xf
	.long	0x188
	.byte	0x28
	.uleb128 0x9
	.long	.LASF218
	.byte	0x25
	.byte	0xd0
	.byte	0xf
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF202
	.byte	0x25
	.byte	0xd1
	.byte	0xf
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF219
	.byte	0x25
	.byte	0xd2
	.byte	0xd
	.long	0x57
	.byte	0x40
	.uleb128 0x9
	.long	.LASF220
	.byte	0x25
	.byte	0xd3
	.byte	0xd
	.long	0x57
	.byte	0x44
	.uleb128 0x9
	.long	.LASF205
	.byte	0x25
	.byte	0xd4
	.byte	0x10
	.long	0x1d2
	.byte	0x48
	.uleb128 0x9
	.long	.LASF221
	.byte	0x25
	.byte	0xd6
	.byte	0xe
	.long	0xc85
	.byte	0x50
	.uleb128 0x9
	.long	.LASF222
	.byte	0x25
	.byte	0xda
	.byte	0x13
	.long	0x327
	.byte	0x58
	.uleb128 0x9
	.long	.LASF223
	.byte	0x25
	.byte	0xdc
	.byte	0x10
	.long	0x1d2
	.byte	0x60
	.uleb128 0x9
	.long	.LASF224
	.byte	0x25
	.byte	0xec
	.byte	0x1c
	.long	0xda
	.byte	0x68
	.uleb128 0x9
	.long	.LASF225
	.byte	0x25
	.byte	0xf0
	.byte	0x1c
	.long	0xda
	.byte	0x6a
	.uleb128 0x9
	.long	.LASF226
	.byte	0x25
	.byte	0xf6
	.byte	0x1c
	.long	0xda
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF227
	.byte	0x25
	.byte	0xf8
	.byte	0x15
	.long	0xc8b
	.byte	0x70
	.uleb128 0x24
	.long	.LASF228
	.byte	0x25
	.byte	0xf9
	.byte	0xe
	.long	0xc9b
	.value	0x100
	.byte	0
	.uleb128 0x5
	.long	0xb35
	.uleb128 0x3
	.byte	0x8
	.long	0xb35
	.uleb128 0x3
	.byte	0x8
	.long	0xc41
	.uleb128 0x25
	.long	0x57
	.long	0xc61
	.uleb128 0x26
	.long	0xc61
	.uleb128 0x26
	.long	0xc61
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc67
	.uleb128 0x3
	.byte	0x8
	.long	0xc3c
	.uleb128 0x3
	.byte	0x8
	.long	0xc4d
	.uleb128 0x14
	.string	"FTS"
	.byte	0x25
	.byte	0xc5
	.byte	0x3
	.long	0xa75
	.uleb128 0x3
	.byte	0x8
	.long	0x4be
	.uleb128 0x3
	.byte	0x8
	.long	0xc73
	.uleb128 0xf
	.long	0x352
	.long	0xc9b
	.uleb128 0x10
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x3f
	.long	0xcaa
	.uleb128 0x27
	.long	0xe8
	.byte	0
	.uleb128 0xb
	.long	.LASF229
	.byte	0x25
	.byte	0xfa
	.byte	0x3
	.long	0xb35
	.uleb128 0x5
	.long	0xcaa
	.uleb128 0x2
	.long	.LASF230
	.byte	0x2
	.byte	0x30
	.byte	0xd
	.long	0xa2b
	.uleb128 0x12
	.long	.LASF231
	.uleb128 0x28
	.long	.LASF232
	.byte	0x2
	.byte	0x43
	.byte	0x17
	.long	0xce2
	.uleb128 0x9
	.byte	0x3
	.quad	di_files
	.uleb128 0x3
	.byte	0x8
	.long	0xcc7
	.uleb128 0x28
	.long	.LASF233
	.byte	0x2
	.byte	0x46
	.byte	0x17
	.long	0xce2
	.uleb128 0x9
	.byte	0x3
	.quad	di_mnt
	.uleb128 0x28
	.long	.LASF234
	.byte	0x2
	.byte	0x4a
	.byte	0xf
	.long	0x1d2
	.uleb128 0x9
	.byte	0x3
	.quad	prev_level
	.uleb128 0x8
	.long	.LASF235
	.byte	0x20
	.byte	0x2
	.byte	0x4d
	.byte	0x8
	.long	0xd49
	.uleb128 0x9
	.long	.LASF236
	.byte	0x2
	.byte	0x50
	.byte	0xd
	.long	0x4db
	.byte	0
	.uleb128 0x9
	.long	.LASF237
	.byte	0x2
	.byte	0x53
	.byte	0xd
	.long	0x4db
	.byte	0x8
	.uleb128 0x9
	.long	.LASF238
	.byte	0x2
	.byte	0x57
	.byte	0x13
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0xd14
	.uleb128 0x8
	.long	.LASF239
	.byte	0x40
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.long	0xd76
	.uleb128 0xa
	.string	"ent"
	.byte	0x2
	.byte	0x7c
	.byte	0x11
	.long	0xd14
	.byte	0
	.uleb128 0x9
	.long	.LASF240
	.byte	0x2
	.byte	0x7f
	.byte	0x11
	.long	0xd14
	.byte	0x20
	.byte	0
	.uleb128 0x28
	.long	.LASF241
	.byte	0x2
	.byte	0x83
	.byte	0xd
	.long	0xa2b
	.uleb128 0x9
	.byte	0x3
	.quad	opt_all
	.uleb128 0x28
	.long	.LASF242
	.byte	0x2
	.byte	0x87
	.byte	0xd
	.long	0xa2b
	.uleb128 0x9
	.byte	0x3
	.quad	apparent_size
	.uleb128 0x28
	.long	.LASF243
	.byte	0x2
	.byte	0x8a
	.byte	0xd
	.long	0xa2b
	.uleb128 0x9
	.byte	0x3
	.quad	opt_count_all
	.uleb128 0x28
	.long	.LASF244
	.byte	0x2
	.byte	0x8d
	.byte	0xd
	.long	0xa2b
	.uleb128 0x9
	.byte	0x3
	.quad	hash_all
	.uleb128 0x28
	.long	.LASF245
	.byte	0x2
	.byte	0x90
	.byte	0xd
	.long	0xa2b
	.uleb128 0x9
	.byte	0x3
	.quad	opt_nul_terminate_output
	.uleb128 0x28
	.long	.LASF246
	.byte	0x2
	.byte	0x93
	.byte	0xd
	.long	0xa2b
	.uleb128 0x9
	.byte	0x3
	.quad	print_grand_total
	.uleb128 0x28
	.long	.LASF247
	.byte	0x2
	.byte	0x96
	.byte	0xd
	.long	0xa2b
	.uleb128 0x9
	.byte	0x3
	.quad	opt_separate_dirs
	.uleb128 0x28
	.long	.LASF248
	.byte	0x2
	.byte	0x9b
	.byte	0xf
	.long	0x1d2
	.uleb128 0x9
	.byte	0x3
	.quad	max_depth
	.uleb128 0x28
	.long	.LASF249
	.byte	0x2
	.byte	0x9f
	.byte	0x11
	.long	0x4cf
	.uleb128 0x9
	.byte	0x3
	.quad	opt_threshold
	.uleb128 0x28
	.long	.LASF250
	.byte	0x2
	.byte	0xa2
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	human_output_opts
	.uleb128 0x28
	.long	.LASF251
	.byte	0x2
	.byte	0xa5
	.byte	0xd
	.long	0xa2b
	.uleb128 0x9
	.byte	0x3
	.quad	opt_inodes
	.uleb128 0x28
	.long	.LASF252
	.byte	0x2
	.byte	0xa8
	.byte	0xd
	.long	0xa2b
	.uleb128 0x9
	.byte	0x3
	.quad	opt_time
	.uleb128 0x1c
	.long	.LASF253
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.byte	0xac
	.byte	0x6
	.long	0xea3
	.uleb128 0x17
	.long	.LASF254
	.byte	0
	.uleb128 0x17
	.long	.LASF255
	.byte	0x1
	.uleb128 0x17
	.long	.LASF256
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	0xe7e
	.uleb128 0x28
	.long	.LASF253
	.byte	0x2
	.byte	0xb3
	.byte	0x17
	.long	0xe7e
	.uleb128 0x9
	.byte	0x3
	.quad	time_type
	.uleb128 0x28
	.long	.LASF257
	.byte	0x2
	.byte	0xb6
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	time_style
	.uleb128 0x28
	.long	.LASF258
	.byte	0x2
	.byte	0xb9
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	time_format
	.uleb128 0x28
	.long	.LASF259
	.byte	0x2
	.byte	0xbc
	.byte	0x13
	.long	0x33a
	.uleb128 0x9
	.byte	0x3
	.quad	localtz
	.uleb128 0x28
	.long	.LASF260
	.byte	0x2
	.byte	0xbf
	.byte	0x12
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	output_block_size
	.uleb128 0x12
	.long	.LASF261
	.uleb128 0x28
	.long	.LASF261
	.byte	0x2
	.byte	0xc2
	.byte	0x18
	.long	0xf31
	.uleb128 0x9
	.byte	0x3
	.quad	exclude
	.uleb128 0x3
	.byte	0x8
	.long	0xf16
	.uleb128 0x28
	.long	.LASF262
	.byte	0x2
	.byte	0xc5
	.byte	0x16
	.long	0xd14
	.uleb128 0x9
	.byte	0x3
	.quad	tot_dui
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.byte	0xce
	.byte	0x1
	.long	0xf8c
	.uleb128 0x17
	.long	.LASF263
	.byte	0x80
	.uleb128 0x17
	.long	.LASF264
	.byte	0x81
	.uleb128 0x17
	.long	.LASF265
	.byte	0x82
	.uleb128 0x17
	.long	.LASF266
	.byte	0x83
	.uleb128 0x17
	.long	.LASF267
	.byte	0x84
	.uleb128 0x17
	.long	.LASF268
	.byte	0x85
	.uleb128 0x17
	.long	.LASF269
	.byte	0x86
	.uleb128 0x17
	.long	.LASF270
	.byte	0x87
	.byte	0
	.uleb128 0xf
	.long	0xbd
	.long	0xf9c
	.uleb128 0x10
	.long	0xe8
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.long	0xf8c
	.uleb128 0x28
	.long	.LASF271
	.byte	0x2
	.byte	0xd9
	.byte	0x1c
	.long	0xf9c
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0xf
	.long	0xc8
	.long	0xfc7
	.uleb128 0x10
	.long	0xe8
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0xfb7
	.uleb128 0x28
	.long	.LASF272
	.byte	0x2
	.byte	0xf8
	.byte	0x1a
	.long	0xfc7
	.uleb128 0x9
	.byte	0x3
	.quad	time_args
	.uleb128 0xf
	.long	0xea3
	.long	0xff2
	.uleb128 0x10
	.long	0xe8
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0xfe2
	.uleb128 0x28
	.long	.LASF273
	.byte	0x2
	.byte	0xfc
	.byte	0x1d
	.long	0xff2
	.uleb128 0x9
	.byte	0x3
	.quad	time_types
	.uleb128 0x29
	.long	.LASF257
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.value	0x105
	.byte	0x6
	.long	0x1033
	.uleb128 0x17
	.long	.LASF274
	.byte	0
	.uleb128 0x17
	.long	.LASF275
	.byte	0x1
	.uleb128 0x17
	.long	.LASF276
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	0x100d
	.uleb128 0xf
	.long	0xc8
	.long	0x1048
	.uleb128 0x10
	.long	0xe8
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x1038
	.uleb128 0x2a
	.long	.LASF277
	.byte	0x2
	.value	0x10c
	.byte	0x1a
	.long	0x1048
	.uleb128 0x9
	.byte	0x3
	.quad	time_style_args
	.uleb128 0xf
	.long	0x1033
	.long	0x1074
	.uleb128 0x10
	.long	0xe8
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	0x1064
	.uleb128 0x2a
	.long	.LASF278
	.byte	0x2
	.value	0x110
	.byte	0x1e
	.long	0x1074
	.uleb128 0x9
	.byte	0x3
	.quad	time_style_types
	.uleb128 0x2b
	.long	.LASF322
	.byte	0x2
	.value	0x2d3
	.byte	0x1
	.long	0x57
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1368
	.uleb128 0x2c
	.long	.LASF279
	.byte	0x2
	.value	0x2d3
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2c
	.long	.LASF280
	.byte	0x2
	.value	0x2d3
	.byte	0x18
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF281
	.byte	0x2
	.value	0x2d5
	.byte	0x9
	.long	0x2c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF282
	.byte	0x2
	.value	0x2d6
	.byte	0x8
	.long	0xa2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2d
	.string	"ok"
	.byte	0x2
	.value	0x2d7
	.byte	0x8
	.long	0xa2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -155
	.uleb128 0x2a
	.long	.LASF283
	.byte	0x2
	.value	0x2d8
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF284
	.byte	0x2
	.value	0x2db
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2a
	.long	.LASF285
	.byte	0x2
	.value	0x2df
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2a
	.long	.LASF286
	.byte	0x2
	.value	0x2e2
	.byte	0x8
	.long	0xa2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -154
	.uleb128 0x2d
	.string	"ai"
	.byte	0x2
	.value	0x3f4
	.byte	0x19
	.long	0x136d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF287
	.byte	0x2
	.value	0x424
	.byte	0x10
	.long	0x2c2
	.uleb128 0x9
	.byte	0x3
	.quad	temp_argv.6757
	.uleb128 0x2e
	.long	.LASF343
	.byte	0x2
	.value	0x466
	.byte	0x2
	.quad	.L198
	.uleb128 0x2f
	.long	.LASF304
	.long	0x1383
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6766
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x30
	.long	0x1230
	.uleb128 0x2d
	.string	"oi"
	.byte	0x2
	.value	0x2f6
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.string	"c"
	.byte	0x2
	.value	0x2f7
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x60
	.long	0x11d8
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x2
	.value	0x32b
	.byte	0x17
	.long	0x4db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x31
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x120e
	.uleb128 0x2d
	.string	"e"
	.byte	0x2
	.value	0x34a
	.byte	0x1f
	.long	0x8a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x32
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.byte	0
	.uleb128 0x33
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2d
	.string	"e"
	.byte	0x2
	.value	0x35c
	.byte	0x1f
	.long	0x8a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1255
	.uleb128 0x2d
	.string	"d"
	.byte	0x2
	.value	0x3b0
	.byte	0x19
	.long	0xe8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x31
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x127a
	.uleb128 0x2d
	.string	"p"
	.byte	0x2
	.value	0x3d0
	.byte	0x15
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x31
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x12be
	.uleb128 0x2a
	.long	.LASF288
	.byte	0x2
	.value	0x3d7
	.byte	0x21
	.long	0x1398
	.uleb128 0x9
	.byte	0x3
	.quad	posix_prefix.6744
	.uleb128 0x2a
	.long	.LASF289
	.byte	0x2
	.value	0x3d8
	.byte	0x23
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	prefix_len.6745
	.byte	0
	.uleb128 0x32
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x31
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x12f6
	.uleb128 0x2a
	.long	.LASF290
	.byte	0x2
	.value	0x40d
	.byte	0xe
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x90
	.long	0x1356
	.uleb128 0x2a
	.long	.LASF291
	.byte	0x2
	.value	0x428
	.byte	0xc
	.long	0xa2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -153
	.uleb128 0x2a
	.long	.LASF292
	.byte	0x2
	.value	0x429
	.byte	0x1a
	.long	0x859
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF293
	.byte	0x2
	.value	0x42a
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2a
	.long	.LASF294
	.byte	0x2
	.value	0x457
	.byte	0x21
	.long	0xe8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0
	.uleb128 0x12
	.long	.LASF295
	.uleb128 0x3
	.byte	0x8
	.long	0x1368
	.uleb128 0xf
	.long	0x46
	.long	0x1383
	.uleb128 0x10
	.long	0xe8
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x1373
	.uleb128 0xf
	.long	0x46
	.long	0x1398
	.uleb128 0x10
	.long	0xe8
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x1388
	.uleb128 0x34
	.long	.LASF296
	.byte	0x2
	.value	0x2a7
	.byte	0x1
	.long	0xa2b
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x142a
	.uleb128 0x2c
	.long	.LASF290
	.byte	0x2
	.value	0x2a7
	.byte	0x12
	.long	0x47b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF284
	.byte	0x2
	.value	0x2a7
	.byte	0x1d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"ok"
	.byte	0x2
	.value	0x2a9
	.byte	0x8
	.long	0xa2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x33
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2d
	.string	"fts"
	.byte	0x2
	.value	0x2ad
	.byte	0xc
	.long	0xc85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.Ldebug_ranges0+0
	.uleb128 0x2d
	.string	"ent"
	.byte	0x2
	.value	0x2b1
	.byte	0x13
	.long	0x142a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xcaa
	.uleb128 0x34
	.long	.LASF297
	.byte	0x2
	.value	0x1e9
	.byte	0x1
	.long	0xa2b
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x15df
	.uleb128 0x36
	.string	"fts"
	.byte	0x2
	.value	0x1e9
	.byte	0x14
	.long	0xc85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x36
	.string	"ent"
	.byte	0x2
	.value	0x1e9
	.byte	0x21
	.long	0x142a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2d
	.string	"ok"
	.byte	0x2
	.value	0x1eb
	.byte	0x8
	.long	0xa2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -174
	.uleb128 0x2d
	.string	"dui"
	.byte	0x2
	.value	0x1ec
	.byte	0x11
	.long	0xd14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF298
	.byte	0x2
	.value	0x1ed
	.byte	0x11
	.long	0xd14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF299
	.byte	0x2
	.value	0x1ee
	.byte	0xa
	.long	0x1d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF300
	.byte	0x2
	.value	0x1ef
	.byte	0x11
	.long	0x1d2
	.uleb128 0x9
	.byte	0x3
	.quad	n_alloc.6665
	.uleb128 0x2a
	.long	.LASF301
	.byte	0x2
	.value	0x1f8
	.byte	0x1a
	.long	0x15df
	.uleb128 0x9
	.byte	0x3
	.quad	dulvl.6666
	.uleb128 0x2a
	.long	.LASF302
	.byte	0x2
	.value	0x1fa
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.string	"sb"
	.byte	0x2
	.value	0x1fb
	.byte	0x16
	.long	0x15e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF303
	.byte	0x2
	.value	0x1fc
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2f
	.long	.LASF304
	.long	0x15fb
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6672
	.uleb128 0x31
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1598
	.uleb128 0x2a
	.long	.LASF305
	.byte	0x2
	.value	0x206
	.byte	0xc
	.long	0xa2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -173
	.uleb128 0x31
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1576
	.uleb128 0x2d
	.string	"e"
	.byte	0x2
	.value	0x20e
	.byte	0x1d
	.long	0x1600
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x33
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2d
	.string	"e"
	.byte	0x2
	.value	0x22f
	.byte	0x1d
	.long	0x1600
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x15bd
	.uleb128 0x2d
	.string	"i"
	.byte	0x2
	.value	0x270
	.byte	0x17
	.long	0x1d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x33
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2d
	.string	"v"
	.byte	0x2
	.value	0x297
	.byte	0x11
	.long	0x4db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd4e
	.uleb128 0x3
	.byte	0x8
	.long	0x423
	.uleb128 0xf
	.long	0x46
	.long	0x15fb
	.uleb128 0x10
	.long	0xe8
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.long	0x15eb
	.uleb128 0x3
	.byte	0x8
	.long	0xcb6
	.uleb128 0x34
	.long	.LASF306
	.byte	0x2
	.value	0x1c8
	.byte	0x1
	.long	0xa2b
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x164a
	.uleb128 0x36
	.string	"ent"
	.byte	0x2
	.value	0x1c8
	.byte	0x29
	.long	0x1600
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF307
	.byte	0x2
	.value	0x1ca
	.byte	0x11
	.long	0x1600
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF310
	.byte	0x2
	.value	0x1ac
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x16c1
	.uleb128 0x2a
	.long	.LASF308
	.byte	0x2
	.value	0x1ae
	.byte	0x17
	.long	0x9b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2a
	.long	.LASF309
	.byte	0x2
	.value	0x1b1
	.byte	0x1b
	.long	0x9b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x33
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2d
	.string	"buf"
	.byte	0x2
	.value	0x1b4
	.byte	0x17
	.long	0x352
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF311
	.byte	0x2
	.value	0x19a
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1701
	.uleb128 0x2c
	.long	.LASF312
	.byte	0x2
	.value	0x19a
	.byte	0x22
	.long	0x1701
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF313
	.byte	0x2
	.value	0x19a
	.byte	0x34
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd49
	.uleb128 0x37
	.long	.LASF314
	.byte	0x2
	.value	0x18d
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1749
	.uleb128 0x2c
	.long	.LASF315
	.byte	0x2
	.value	0x18d
	.byte	0x1c
	.long	0x4db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x2d
	.string	"buf"
	.byte	0x2
	.value	0x18f
	.byte	0x8
	.long	0x1749
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.uleb128 0xf
	.long	0x3f
	.long	0x175a
	.uleb128 0x38
	.long	0xe8
	.value	0x28b
	.byte	0
	.uleb128 0x37
	.long	.LASF316
	.byte	0x2
	.value	0x17c
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x17ef
	.uleb128 0x2c
	.long	.LASF317
	.byte	0x2
	.value	0x17c
	.byte	0x18
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.long	.LASF318
	.byte	0x2
	.value	0x17c
	.byte	0x30
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.string	"tz"
	.byte	0x2
	.value	0x17c
	.byte	0x41
	.long	0x33a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.string	"tm"
	.byte	0x2
	.value	0x17e
	.byte	0xd
	.long	0x226
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2d
	.string	"buf"
	.byte	0x2
	.value	0x183
	.byte	0xc
	.long	0x17ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF319
	.byte	0x2
	.value	0x184
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x3f
	.long	0x17ff
	.uleb128 0x10
	.long	0xe8
	.byte	0x14
	.byte	0
	.uleb128 0x34
	.long	.LASF320
	.byte	0x2
	.value	0x16f
	.byte	0x1
	.long	0xa2b
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1863
	.uleb128 0x2c
	.long	.LASF231
	.byte	0x2
	.value	0x16f
	.byte	0x1a
	.long	0xce2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.string	"ino"
	.byte	0x2
	.value	0x16f
	.byte	0x28
	.long	0x1ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.string	"dev"
	.byte	0x2
	.value	0x16f
	.byte	0x33
	.long	0x1ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF321
	.byte	0x2
	.value	0x171
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.long	.LASF323
	.byte	0x2
	.value	0x117
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x1893
	.uleb128 0x2c
	.long	.LASF324
	.byte	0x2
	.value	0x117
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3a
	.long	.LASF325
	.byte	0x2
	.byte	0x6f
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x18db
	.uleb128 0x3b
	.string	"a"
	.byte	0x2
	.byte	0x6f
	.byte	0x1c
	.long	0x18db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x2
	.byte	0x6f
	.byte	0x34
	.long	0x1701
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.string	"sum"
	.byte	0x2
	.byte	0x71
	.byte	0xd
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd14
	.uleb128 0x3d
	.long	.LASF326
	.byte	0x2
	.byte	0x66
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x192b
	.uleb128 0x3b
	.string	"a"
	.byte	0x2
	.byte	0x66
	.byte	0x1c
	.long	0x18db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3e
	.long	.LASF236
	.byte	0x2
	.byte	0x66
	.byte	0x29
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3e
	.long	.LASF238
	.byte	0x2
	.byte	0x66
	.byte	0x3f
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3d
	.long	.LASF327
	.byte	0x2
	.byte	0x5c
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x1957
	.uleb128 0x3b
	.string	"a"
	.byte	0x2
	.byte	0x5c
	.byte	0x1d
	.long	0x18db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3f
	.long	.LASF328
	.byte	0x1
	.value	0x2ba
	.byte	0x1
	.long	0x39
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x1989
	.uleb128 0x36
	.string	"s"
	.byte	0x1
	.value	0x2ba
	.byte	0x17
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF329
	.byte	0x1
	.value	0x2b2
	.byte	0x1
	.long	0x39
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x19cb
	.uleb128 0x36
	.string	"t"
	.byte	0x1
	.value	0x2b2
	.byte	0x13
	.long	0x1c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.string	"buf"
	.byte	0x1
	.value	0x2b2
	.byte	0x1c
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF330
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a70
	.uleb128 0x2c
	.long	.LASF331
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x40
	.long	.LASF332
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1a26
	.uleb128 0x41
	.long	.LASF331
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x41
	.long	.LASF333
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x19fb
	.uleb128 0x2a
	.long	.LASF332
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x1a80
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF333
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2a
	.long	.LASF334
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1a85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF335
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xf
	.long	0x1a26
	.long	0x1a80
	.uleb128 0x10
	.long	0xe8
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x1a70
	.uleb128 0x3
	.byte	0x8
	.long	0x1a26
	.uleb128 0x37
	.long	.LASF336
	.byte	0x1
	.value	0x25e
	.byte	0x1
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1abb
	.uleb128 0x2c
	.long	.LASF331
	.byte	0x1
	.value	0x25e
	.byte	0x22
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x42
	.long	.LASF337
	.byte	0x1
	.value	0x254
	.byte	0x1
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x42
	.long	.LASF338
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF76:
	.string	"__glibc_reserved"
.LASF282:
	.string	"max_depth_specified"
.LASF75:
	.string	"st_ctim"
.LASF32:
	.string	"size_t"
.LASF241:
	.string	"opt_all"
.LASF42:
	.string	"tm_hour"
.LASF131:
	.string	"GETOPT_HELP_CHAR"
.LASF219:
	.string	"fts_errno"
.LASF284:
	.string	"bit_flags"
.LASF71:
	.string	"st_blksize"
.LASF72:
	.string	"st_blocks"
.LASF122:
	.string	"_IO_codecvt"
.LASF283:
	.string	"files_from"
.LASF276:
	.string	"iso_time_style"
.LASF102:
	.string	"_IO_save_end"
.LASF339:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF30:
	.string	"dev_t"
.LASF19:
	.string	"__gid_t"
.LASF261:
	.string	"exclude"
.LASF206:
	.string	"fts_nitems"
.LASF77:
	.string	"_sys_siglist"
.LASF74:
	.string	"st_mtim"
.LASF31:
	.string	"time_t"
.LASF156:
	.string	"AI_ERR_MEM"
.LASF95:
	.string	"_IO_write_base"
.LASF195:
	.string	"state"
.LASF160:
	.string	"error_one_per_line"
.LASF111:
	.string	"_lock"
.LASF288:
	.string	"posix_prefix"
.LASF252:
	.string	"opt_time"
.LASF164:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF61:
	.string	"stat"
.LASF51:
	.string	"__tzname"
.LASF289:
	.string	"prefix_len"
.LASF100:
	.string	"_IO_save_base"
.LASF151:
	.string	"argmatch_die"
.LASF286:
	.string	"opt_summarize_only"
.LASF104:
	.string	"_chain"
.LASF249:
	.string	"opt_threshold"
.LASF108:
	.string	"_cur_column"
.LASF298:
	.string	"dui_to_print"
.LASF127:
	.string	"sys_nerr"
.LASF256:
	.string	"time_atime"
.LASF17:
	.string	"__dev_t"
.LASF177:
	.string	"mount_entry"
.LASF129:
	.string	"_sys_nerr"
.LASF211:
	.string	"fts_fd_ring"
.LASF239:
	.string	"dulevel"
.LASF196:
	.string	"hash_table"
.LASF79:
	.string	"__environ"
.LASF265:
	.string	"FILES0_FROM_OPTION"
.LASF14:
	.string	"long int"
.LASF326:
	.string	"duinfo_set"
.LASF240:
	.string	"subdir"
.LASF6:
	.string	"has_arg"
.LASF311:
	.string	"print_size"
.LASF121:
	.string	"_IO_marker"
.LASF285:
	.string	"symlink_deref_bits"
.LASF167:
	.string	"human_ceiling"
.LASF180:
	.string	"me_mntroot"
.LASF337:
	.string	"emit_size_note"
.LASF225:
	.string	"fts_flags"
.LASF179:
	.string	"me_mountdir"
.LASF238:
	.string	"tmax"
.LASF309:
	.string	"mnt_free"
.LASF208:
	.string	"fts_options"
.LASF60:
	.string	"timezone_t"
.LASF12:
	.string	"signed char"
.LASF26:
	.string	"__blksize_t"
.LASF259:
	.string	"localtz"
.LASF198:
	.string	"fts_cur"
.LASF90:
	.string	"_IO_FILE"
.LASF53:
	.string	"__timezone"
.LASF123:
	.string	"_IO_wide_data"
.LASF66:
	.string	"st_uid"
.LASF202:
	.string	"fts_path"
.LASF155:
	.string	"AI_ERR_EOF"
.LASF304:
	.string	"__PRETTY_FUNCTION__"
.LASF200:
	.string	"fts_array"
.LASF146:
	.string	"quoting_style_args"
.LASF80:
	.string	"environ"
.LASF8:
	.string	"unsigned char"
.LASF115:
	.string	"_freeres_list"
.LASF69:
	.string	"st_rdev"
.LASF308:
	.string	"mnt_ent"
.LASF174:
	.string	"human_space_before_unit"
.LASF209:
	.string	"fts_leaf_optimization_works_ht"
.LASF185:
	.string	"me_type_malloced"
.LASF161:
	.string	"strtol_error"
.LASF330:
	.string	"emit_ancillary_info"
.LASF263:
	.string	"APPARENT_SIZE_OPTION"
.LASF159:
	.string	"error_message_count"
.LASF314:
	.string	"print_only_size"
.LASF28:
	.string	"__syscall_slong_t"
.LASF194:
	.string	"_Bool"
.LASF254:
	.string	"time_mtime"
.LASF278:
	.string	"time_style_types"
.LASF2:
	.string	"char"
.LASF243:
	.string	"opt_count_all"
.LASF172:
	.string	"human_autoscale"
.LASF342:
	.string	"_IO_lock_t"
.LASF204:
	.string	"fts_cwd_fd"
.LASF277:
	.string	"time_style_args"
.LASF56:
	.string	"timezone"
.LASF139:
	.string	"shell_escape_always_quoting_style"
.LASF21:
	.string	"__mode_t"
.LASF41:
	.string	"tm_min"
.LASF92:
	.string	"_IO_read_ptr"
.LASF301:
	.string	"dulvl"
.LASF169:
	.string	"human_floor"
.LASF58:
	.string	"ptrdiff_t"
.LASF171:
	.string	"human_suppress_point_zero"
.LASF124:
	.string	"stdin"
.LASF191:
	.string	"ir_front"
.LASF128:
	.string	"sys_errlist"
.LASF176:
	.string	"human_B"
.LASF103:
	.string	"_markers"
.LASF134:
	.string	"program_name"
.LASF336:
	.string	"emit_blocksize_note"
.LASF302:
	.string	"file"
.LASF43:
	.string	"tm_mday"
.LASF340:
	.string	"src/du.c"
.LASF207:
	.string	"fts_compar"
.LASF343:
	.string	"argv_iter_done"
.LASF193:
	.string	"ir_empty"
.LASF141:
	.string	"c_maybe_quoting_style"
.LASF81:
	.string	"program_invocation_name"
.LASF165:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF333:
	.string	"node"
.LASF175:
	.string	"human_SI"
.LASF251:
	.string	"opt_inodes"
.LASF40:
	.string	"tm_sec"
.LASF48:
	.string	"tm_isdst"
.LASF271:
	.string	"long_options"
.LASF67:
	.string	"st_gid"
.LASF199:
	.string	"fts_child"
.LASF274:
	.string	"full_iso_time_style"
.LASF329:
	.string	"timetostr"
.LASF163:
	.string	"LONGINT_OVERFLOW"
.LASF1:
	.string	"optind"
.LASF316:
	.string	"show_date"
.LASF315:
	.string	"n_bytes"
.LASF85:
	.string	"__dirstream"
.LASF29:
	.string	"ino_t"
.LASF144:
	.string	"clocale_quoting_style"
.LASF158:
	.string	"error_print_progname"
.LASF291:
	.string	"skip_file"
.LASF11:
	.string	"long unsigned int"
.LASF317:
	.string	"format"
.LASF192:
	.string	"ir_back"
.LASF324:
	.string	"status"
.LASF106:
	.string	"_flags2"
.LASF70:
	.string	"st_size"
.LASF94:
	.string	"_IO_read_base"
.LASF275:
	.string	"long_iso_time_style"
.LASF33:
	.string	"option"
.LASF119:
	.string	"_unused2"
.LASF248:
	.string	"max_depth"
.LASF281:
	.string	"cwd_only"
.LASF279:
	.string	"argc"
.LASF107:
	.string	"_old_offset"
.LASF332:
	.string	"infomap"
.LASF280:
	.string	"argv"
.LASF27:
	.string	"__blkcnt_t"
.LASF136:
	.string	"shell_quoting_style"
.LASF325:
	.string	"duinfo_add"
.LASF20:
	.string	"__ino_t"
.LASF264:
	.string	"EXCLUDE_OPTION"
.LASF39:
	.string	"long long int"
.LASF220:
	.string	"fts_symfd"
.LASF331:
	.string	"program"
.LASF83:
	.string	"Version"
.LASF84:
	.string	"exit_failure"
.LASF37:
	.string	"_gl_cxxalias_dummy"
.LASF44:
	.string	"tm_mon"
.LASF295:
	.string	"argv_iterator"
.LASF269:
	.string	"TIME_STYLE_OPTION"
.LASF140:
	.string	"c_quoting_style"
.LASF296:
	.string	"du_files"
.LASF97:
	.string	"_IO_write_end"
.LASF257:
	.string	"time_style"
.LASF87:
	.string	"uintmax_t"
.LASF166:
	.string	"LONGINT_INVALID"
.LASF229:
	.string	"FTSENT"
.LASF319:
	.string	"when_str"
.LASF231:
	.string	"di_set"
.LASF78:
	.string	"sys_siglist"
.LASF197:
	.string	"cycle_check_state"
.LASF237:
	.string	"inodes"
.LASF213:
	.string	"fts_parent"
.LASF15:
	.string	"__intmax_t"
.LASF132:
	.string	"GETOPT_VERSION_CHAR"
.LASF98:
	.string	"_IO_buf_base"
.LASF313:
	.string	"string"
.LASF10:
	.string	"unsigned int"
.LASF133:
	.string	"version_etc_copyright"
.LASF147:
	.string	"quoting_style_vals"
.LASF153:
	.string	"argv_iter_err"
.LASF135:
	.string	"literal_quoting_style"
.LASF322:
	.string	"main"
.LASF68:
	.string	"__pad0"
.LASF54:
	.string	"tzname"
.LASF117:
	.string	"__pad5"
.LASF7:
	.string	"flag"
.LASF187:
	.string	"I_RING_SIZE"
.LASF148:
	.string	"quoting_options"
.LASF91:
	.string	"_flags"
.LASF242:
	.string	"apparent_size"
.LASF335:
	.string	"lc_messages"
.LASF149:
	.string	"quote_quoting_options"
.LASF230:
	.string	"fts_debug"
.LASF214:
	.string	"fts_link"
.LASF183:
	.string	"me_dummy"
.LASF118:
	.string	"_mode"
.LASF113:
	.string	"_codecvt"
.LASF233:
	.string	"di_mnt"
.LASF89:
	.string	"LOG10_TIMESPEC_HZ"
.LASF64:
	.string	"st_nlink"
.LASF272:
	.string	"time_args"
.LASF227:
	.string	"fts_statp"
.LASF297:
	.string	"process_file"
.LASF246:
	.string	"print_grand_total"
.LASF86:
	.string	"intmax_t"
.LASF59:
	.string	"long double"
.LASF182:
	.string	"me_dev"
.LASF320:
	.string	"hash_ins"
.LASF120:
	.string	"FILE"
.LASF247:
	.string	"opt_separate_dirs"
.LASF310:
	.string	"fill_mount_table"
.LASF178:
	.string	"me_devname"
.LASF62:
	.string	"st_dev"
.LASF162:
	.string	"LONGINT_OK"
.LASF34:
	.string	"timespec"
.LASF112:
	.string	"_offset"
.LASF303:
	.string	"info"
.LASF186:
	.string	"me_next"
.LASF181:
	.string	"me_type"
.LASF312:
	.string	"pdui"
.LASF4:
	.string	"optopt"
.LASF143:
	.string	"locale_quoting_style"
.LASF236:
	.string	"size"
.LASF38:
	.string	"long long unsigned int"
.LASF300:
	.string	"n_alloc"
.LASF23:
	.string	"__off_t"
.LASF215:
	.string	"fts_dirp"
.LASF327:
	.string	"duinfo_init"
.LASF152:
	.string	"quoting_style"
.LASF82:
	.string	"program_invocation_short_name"
.LASF306:
	.string	"mount_point_in_fts_cycle"
.LASF338:
	.string	"emit_mandatory_arg_note"
.LASF116:
	.string	"_freeres_buf"
.LASF46:
	.string	"tm_wday"
.LASF299:
	.string	"level"
.LASF47:
	.string	"tm_yday"
.LASF3:
	.string	"opterr"
.LASF260:
	.string	"output_block_size"
.LASF341:
	.string	"/root/coreutils"
.LASF25:
	.string	"__time_t"
.LASF212:
	.string	"_ftsent"
.LASF188:
	.string	"I_ring"
.LASF101:
	.string	"_IO_backup_base"
.LASF110:
	.string	"_shortbuf"
.LASF235:
	.string	"duinfo"
.LASF255:
	.string	"time_ctime"
.LASF184:
	.string	"me_remote"
.LASF170:
	.string	"human_group_digits"
.LASF137:
	.string	"shell_always_quoting_style"
.LASF24:
	.string	"__off64_t"
.LASF210:
	.string	"fts_cycle"
.LASF221:
	.string	"fts_fts"
.LASF226:
	.string	"fts_instr"
.LASF142:
	.string	"escape_quoting_style"
.LASF99:
	.string	"_IO_buf_end"
.LASF216:
	.string	"fts_number"
.LASF205:
	.string	"fts_pathlen"
.LASF5:
	.string	"name"
.LASF334:
	.string	"map_prog"
.LASF293:
	.string	"file_name"
.LASF49:
	.string	"tm_gmtoff"
.LASF126:
	.string	"stderr"
.LASF13:
	.string	"short int"
.LASF318:
	.string	"when"
.LASF307:
	.string	"cycle_ent"
.LASF287:
	.string	"temp_argv"
.LASF36:
	.string	"tv_nsec"
.LASF323:
	.string	"usage"
.LASF138:
	.string	"shell_escape_quoting_style"
.LASF268:
	.string	"TIME_OPTION"
.LASF109:
	.string	"_vtable_offset"
.LASF224:
	.string	"fts_info"
.LASF130:
	.string	"_sys_errlist"
.LASF16:
	.string	"__uintmax_t"
.LASF154:
	.string	"AI_ERR_OK"
.LASF157:
	.string	"AI_ERR_READ"
.LASF88:
	.string	"TIMESPEC_HZ"
.LASF273:
	.string	"time_types"
.LASF294:
	.string	"file_number"
.LASF168:
	.string	"human_round_to_nearest"
.LASF52:
	.string	"__daylight"
.LASF50:
	.string	"tm_zone"
.LASF244:
	.string	"hash_all"
.LASF258:
	.string	"time_format"
.LASF266:
	.string	"HUMAN_SI_OPTION"
.LASF222:
	.string	"fts_level"
.LASF321:
	.string	"inserted"
.LASF65:
	.string	"st_mode"
.LASF18:
	.string	"__uid_t"
.LASF201:
	.string	"fts_dev"
.LASF93:
	.string	"_IO_read_end"
.LASF57:
	.string	"getdate_err"
.LASF218:
	.string	"fts_accpath"
.LASF105:
	.string	"_fileno"
.LASF267:
	.string	"FTS_DEBUG"
.LASF203:
	.string	"fts_rfd"
.LASF114:
	.string	"_wide_data"
.LASF0:
	.string	"optarg"
.LASF232:
	.string	"di_files"
.LASF253:
	.string	"time_type"
.LASF305:
	.string	"excluded"
.LASF45:
	.string	"tm_year"
.LASF9:
	.string	"short unsigned int"
.LASF125:
	.string	"stdout"
.LASF262:
	.string	"tot_dui"
.LASF290:
	.string	"files"
.LASF245:
	.string	"opt_nul_terminate_output"
.LASF96:
	.string	"_IO_write_ptr"
.LASF223:
	.string	"fts_namelen"
.LASF270:
	.string	"INODES_OPTION"
.LASF328:
	.string	"bad_cast"
.LASF55:
	.string	"daylight"
.LASF63:
	.string	"st_ino"
.LASF22:
	.string	"__nlink_t"
.LASF292:
	.string	"ai_err"
.LASF228:
	.string	"fts_name"
.LASF250:
	.string	"human_output_opts"
.LASF217:
	.string	"fts_pointer"
.LASF189:
	.string	"ir_data"
.LASF35:
	.string	"tv_sec"
.LASF150:
	.string	"argmatch_exit_fn"
.LASF173:
	.string	"human_base_1024"
.LASF145:
	.string	"custom_quoting_style"
.LASF234:
	.string	"prev_level"
.LASF73:
	.string	"st_atim"
.LASF190:
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
