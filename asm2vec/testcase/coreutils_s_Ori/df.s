	.file	"df.c"
	.text
.Ltext0:
	.type	to_uchar, @function
to_uchar:
.LFB26:
	.file 1 "src/system.h"
	.loc 1 156 48
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 156 57
	movzbl	-4(%rbp), %eax
	.loc 1 156 61
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	to_uchar, .-to_uchar
	.section	.rodata
	.align 8
.LC0:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.text
	.type	emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
.LFB51:
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
.LFE51:
	.size	emit_mandatory_arg_note, .-emit_mandatory_arg_note
	.section	.rodata
	.align 8
.LC1:
	.string	"\nThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\nUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\nBinary prefixes can be used, too: KiB=K, MiB=M, and so on.\n"
	.text
	.type	emit_size_note, @function
emit_size_note:
.LFB52:
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
.LFE52:
	.size	emit_size_note, .-emit_size_note
	.section	.rodata
	.align 8
.LC2:
	.string	"\nDisplay values are in units of the first available SIZE from --block-size,\nand the %s_BLOCK_SIZE, BLOCK_SIZE and BLOCKSIZE environment variables.\nOtherwise, units default to 1024 bytes (or 512 if POSIXLY_CORRECT is set).\n"
	.text
	.type	emit_blocksize_note, @function
emit_blocksize_note:
.LFB53:
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
.LFE53:
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
.LFB55:
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
	jmp	.L7
.L9:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L7:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L8
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L9
.L8:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L10
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L10:
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
	je	.L11
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L11
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L11:
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
	jne	.L12
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC18(%rip), %rbx
	jmp	.L13
.L12:
	.loc 1 671 3 discriminator 2
	leaq	.LC19(%rip), %rbx
.L13:
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
	je	.L14
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L14:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	devlist_table
	.comm	devlist_table,8,8
	.local	show_all_fs
	.comm	show_all_fs,1,1
	.local	show_local_fs
	.comm	show_local_fs,1,1
	.local	show_listed_fs
	.comm	show_listed_fs,1,1
	.local	human_output_opts
	.comm	human_output_opts,4,4
	.local	output_block_size
	.comm	output_block_size,8,8
	.local	file_systems_processed
	.comm	file_systems_processed,1,1
	.local	require_sync
	.comm	require_sync,1,1
	.local	exit_status
	.comm	exit_status,4,4
	.local	fs_select_list
	.comm	fs_select_list,8,8
	.local	fs_exclude_list
	.comm	fs_exclude_list,8,8
	.local	mount_list
	.comm	mount_list,8,8
	.local	print_type
	.comm	print_type,1,1
	.local	print_grand_total
	.comm	print_grand_total,1,1
	.local	grand_fsu
	.comm	grand_fsu,56,32
	.local	header_mode
	.comm	header_mode,4,4
	.section	.rodata
.LC21:
	.string	"source"
.LC22:
	.string	"Filesystem"
.LC23:
	.string	"fstype"
.LC24:
	.string	"Type"
.LC25:
	.string	"size"
.LC26:
	.string	"blocks"
.LC27:
	.string	"used"
.LC28:
	.string	"Used"
.LC29:
	.string	"avail"
.LC30:
	.string	"Available"
.LC31:
	.string	"pcent"
.LC32:
	.string	"Use%"
.LC33:
	.string	"itotal"
.LC34:
	.string	"Inodes"
.LC35:
	.string	"iused"
.LC36:
	.string	"IUsed"
.LC37:
	.string	"iavail"
.LC38:
	.string	"IFree"
.LC39:
	.string	"ipcent"
.LC40:
	.string	"IUse%"
.LC41:
	.string	"target"
.LC42:
	.string	"Mounted on"
.LC43:
	.string	"file"
.LC44:
	.string	"File"
	.section	.data.rel.local,"aw"
	.align 32
	.type	field_data, @object
	.size	field_data, 576
field_data:
	.long	0
	.zero	4
	.quad	.LC21
	.long	2
	.zero	4
	.quad	.LC22
	.quad	14
	.long	0
	.byte	0
	.zero	3
	.long	1
	.zero	4
	.quad	.LC23
	.long	2
	.zero	4
	.quad	.LC24
	.quad	4
	.long	0
	.byte	0
	.zero	3
	.long	2
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	.LC26
	.quad	5
	.long	1
	.byte	0
	.zero	3
	.long	3
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	.LC28
	.quad	5
	.long	1
	.byte	0
	.zero	3
	.long	4
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	.LC30
	.quad	5
	.long	1
	.byte	0
	.zero	3
	.long	5
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	.LC32
	.quad	4
	.long	1
	.byte	0
	.zero	3
	.long	6
	.zero	4
	.quad	.LC33
	.long	1
	.zero	4
	.quad	.LC34
	.quad	5
	.long	1
	.byte	0
	.zero	3
	.long	7
	.zero	4
	.quad	.LC35
	.long	1
	.zero	4
	.quad	.LC36
	.quad	5
	.long	1
	.byte	0
	.zero	3
	.long	8
	.zero	4
	.quad	.LC37
	.long	1
	.zero	4
	.quad	.LC38
	.quad	5
	.long	1
	.byte	0
	.zero	3
	.long	9
	.zero	4
	.quad	.LC39
	.long	1
	.zero	4
	.quad	.LC40
	.quad	4
	.long	1
	.byte	0
	.zero	3
	.long	10
	.zero	4
	.quad	.LC41
	.long	2
	.zero	4
	.quad	.LC42
	.quad	0
	.long	0
	.byte	0
	.zero	3
	.long	11
	.zero	4
	.quad	.LC43
	.long	2
	.zero	4
	.quad	.LC44
	.quad	0
	.long	0
	.byte	0
	.zero	3
	.section	.rodata
	.align 8
.LC45:
	.string	"source,fstype,itotal,iused,iavail,ipcent,size,used,avail,pcent,file,target"
	.section	.data.rel.local
	.align 8
	.type	all_args_string, @object
	.size	all_args_string, 8
all_args_string:
	.quad	.LC45
	.local	columns
	.comm	columns,8,8
	.local	ncolumns
	.comm	ncolumns,8,8
	.local	table
	.comm	table,8,8
	.local	nrows
	.comm	nrows,8,8
	.section	.rodata
.LC46:
	.string	"all"
.LC47:
	.string	"block-size"
.LC48:
	.string	"inodes"
.LC49:
	.string	"human-readable"
.LC50:
	.string	"si"
.LC51:
	.string	"local"
.LC52:
	.string	"output"
.LC53:
	.string	"portability"
.LC54:
	.string	"print-type"
.LC55:
	.string	"sync"
.LC56:
	.string	"no-sync"
.LC57:
	.string	"total"
.LC58:
	.string	"type"
.LC59:
	.string	"exclude-type"
.LC60:
	.string	"help"
.LC61:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 544
long_options:
	.quad	.LC46
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC47
	.long	1
	.zero	4
	.quad	0
	.long	66
	.zero	4
	.quad	.LC48
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC49
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC50
	.long	0
	.zero	4
	.quad	0
	.long	72
	.zero	4
	.quad	.LC51
	.long	0
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC52
	.long	2
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC53
	.long	0
	.zero	4
	.quad	0
	.long	80
	.zero	4
	.quad	.LC54
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC55
	.long	0
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC56
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC57
	.long	0
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC58
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC59
	.long	1
	.zero	4
	.quad	0
	.long	120
	.zero	4
	.quad	.LC60
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC61
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
	.type	replace_control_chars, @function
replace_control_chars:
.LFB61:
	.file 2 "src/df.c"
	.loc 2 284 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 285 9
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 286 9
	jmp	.L16
.L18:
	.loc 2 288 32
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 288 22
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	.loc 2 288 11
	movzbl	%al, %eax
	movl	%eax, %edi
	call	c_iscntrl@PLT
	.loc 2 288 10
	testb	%al, %al
	je	.L17
	.loc 2 289 12
	movq	-8(%rbp), %rax
	movb	$63, (%rax)
.L17:
	.loc 2 290 8
	addq	$1, -8(%rbp)
.L16:
	.loc 2 286 10
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 286 9
	testb	%al, %al
	jne	.L18
	.loc 2 292 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	replace_control_chars, .-replace_control_chars
	.type	replace_invalid_chars, @function
replace_invalid_chars:
.LFB62:
	.loc 2 298 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	.loc 2 298 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 299 25
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 299 9
	movq	-72(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 300 9
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 2 301 13
	movq	$0, -16(%rbp)
.LBB2:
	.loc 2 304 14
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 304 3
	jmp	.L20
.L25:
.LBB3:
	.loc 2 307 32
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	.loc 2 307 14
	movq	%rax, -24(%rbp)
	.loc 2 308 11
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	leaq	-60(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_mbrtowc@PLT
	movq	%rax, -48(%rbp)
	.loc 2 309 12
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setbe	%al
	movb	%al, -61(%rbp)
	.loc 2 311 10
	cmpb	$0, -61(%rbp)
	je	.L21
	.loc 2 312 15
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	iswcntrl@PLT
	.loc 2 312 12
	testl	%eax, %eax
	sete	%al
	movb	%al, -61(%rbp)
	jmp	.L22
.L21:
	.loc 2 314 11
	movq	$1, -48(%rbp)
.L22:
	.loc 2 316 10
	cmpb	$0, -61(%rbp)
	je	.L23
	.loc 2 318 11
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	.loc 2 319 15
	movq	-48(%rbp), %rax
	addq	%rax, -56(%rbp)
	jmp	.L24
.L23:
	.loc 2 323 15
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 323 18
	movb	$63, (%rax)
	.loc 2 324 11
	leaq	-16(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L24:
.LBE3:
	.loc 2 304 45 discriminator 2
	movq	-48(%rbp), %rax
	addq	%rax, -40(%rbp)
.L20:
	.loc 2 304 3 discriminator 1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L25
.LBE2:
	.loc 2 328 8
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 329 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	replace_invalid_chars, .-replace_invalid_chars
	.type	replace_problematic_chars, @function
replace_problematic_chars:
.LFB63:
	.loc 2 333 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 335 15
	movl	tty_out.7845(%rip), %eax
	.loc 2 335 6
	testl	%eax, %eax
	jns	.L28
	.loc 2 336 15
	movl	$1, %edi
	call	isatty@PLT
	.loc 2 336 13
	movl	%eax, tty_out.7845(%rip)
.L28:
	.loc 2 338 12
	movl	tty_out.7845(%rip), %eax
	.loc 2 338 36
	testl	%eax, %eax
	je	.L29
	.loc 2 338 36 is_stmt 0 discriminator 1
	leaq	replace_invalid_chars(%rip), %rax
	jmp	.L30
.L29:
	.loc 2 338 36 discriminator 2
	leaq	replace_control_chars(%rip), %rax
.L30:
	.loc 2 338 36 discriminator 4
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.LVL0:
	.loc 2 339 1 is_stmt 1 discriminator 4
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	replace_problematic_chars, .-replace_problematic_chars
	.type	alloc_table_row, @function
alloc_table_row:
.LFB64:
	.loc 2 347 1
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
	.loc 2 348 8
	movq	nrows(%rip), %rax
	addq	$1, %rax
	movq	%rax, nrows(%rip)
	.loc 2 349 11
	movq	nrows(%rip), %rcx
	movq	table(%rip), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xnrealloc@PLT
	.loc 2 349 9
	movq	%rax, table(%rip)
	.loc 2 350 22
	movq	ncolumns(%rip), %rax
	.loc 2 350 8
	movq	table(%rip), %rdx
	movq	nrows(%rip), %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	leaq	(%rdx,%rcx), %rbx
	.loc 2 350 22
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	.loc 2 350 20
	movq	%rax, (%rbx)
	.loc 2 351 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	alloc_table_row, .-alloc_table_row
	.type	print_table, @function
print_table:
.LFB65:
	.loc 2 358 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 358 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 361 12
	movq	$0, -32(%rbp)
	.loc 2 361 3
	jmp	.L33
.L40:
.LBB4:
	.loc 2 364 16
	movq	$0, -24(%rbp)
	.loc 2 364 7
	jmp	.L34
.L39:
.LBB5:
	.loc 2 366 29
	movq	table(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 366 34
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 366 17
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 372 14
	cmpq	$0, -24(%rbp)
	je	.L35
	.loc 2 373 13
	movl	$32, %edi
	call	putchar_unlocked@PLT
.L35:
	.loc 2 375 15
	movl	$0, -44(%rbp)
	.loc 2 376 31
	movq	ncolumns(%rip), %rax
	subq	$1, %rax
	.loc 2 376 14
	cmpq	%rax, -24(%rbp)
	jne	.L36
	.loc 2 377 19
	movl	$8, -44(%rbp)
.L36:
	.loc 2 379 33
	movq	columns(%rip), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 379 38
	movq	32(%rax), %rax
	.loc 2 379 18
	movq	%rax, -40(%rbp)
	.loc 2 380 50
	movq	columns(%rip), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 380 18
	movl	40(%rax), %edx
	movl	-44(%rbp), %ecx
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ambsalign@PLT
	movq	%rax, -16(%rbp)
	.loc 2 382 11
	movq	stdout(%rip), %rdx
	cmpq	$0, -16(%rbp)
	jne	.L37
	.loc 2 382 11 is_stmt 0 discriminator 1
	movq	table(%rip), %rax
	movq	-32(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	jmp	.L38
.L37:
	.loc 2 382 11 discriminator 2
	movq	-16(%rbp), %rax
.L38:
	.loc 2 382 11 discriminator 4
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 383 11 is_stmt 1 discriminator 4
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 385 11 discriminator 4
	movq	table(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE5:
	.loc 2 364 40 discriminator 4
	addq	$1, -24(%rbp)
.L34:
	.loc 2 364 25 discriminator 2
	movq	ncolumns(%rip), %rax
	.loc 2 364 7 discriminator 2
	cmpq	%rax, -24(%rbp)
	jb	.L39
	.loc 2 387 7 discriminator 2
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 388 7 discriminator 2
	movq	table(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE4:
	.loc 2 361 33 discriminator 2
	addq	$1, -32(%rbp)
.L33:
	.loc 2 361 21 discriminator 1
	movq	nrows(%rip), %rax
	.loc 2 361 3 discriminator 1
	cmpq	%rax, -32(%rbp)
	jb	.L40
	.loc 2 391 3
	movq	table(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 392 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L41
	call	__stack_chk_fail@PLT
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	print_table, .-print_table
	.section	.rodata
.LC62:
	.string	"src/df.c"
.LC63:
	.string	"!\"field used\""
	.text
	.type	alloc_field, @function
alloc_field:
.LFB66:
	.loc 2 399 1
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
	.loc 2 400 11
	movq	ncolumns(%rip), %rax
	addq	$1, %rax
	movq	%rax, ncolumns(%rip)
	.loc 2 401 13
	movq	ncolumns(%rip), %rcx
	movq	columns(%rip), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xnrealloc@PLT
	.loc 2 401 11
	movq	%rax, columns(%rip)
	.loc 2 402 10
	movq	columns(%rip), %rax
	movq	ncolumns(%rip), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	leaq	(%rax,%rdx), %rcx
	.loc 2 402 27
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	field_data(%rip), %rdx
	addq	%rdx, %rax
	.loc 2 402 25
	movq	%rax, (%rcx)
	.loc 2 403 6
	cmpq	$0, -16(%rbp)
	je	.L43
	.loc 2 404 12
	movq	columns(%rip), %rax
	movq	ncolumns(%rip), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 404 36
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L43:
	.loc 2 406 20
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	44+field_data(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 406 6
	testb	%al, %al
	je	.L44
	.loc 2 407 5 discriminator 1
	leaq	__PRETTY_FUNCTION__.7867(%rip), %rcx
	movl	$407, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC63(%rip), %rdi
	call	__assert_fail@PLT
.L44:
	.loc 2 410 22
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	44+field_data(%rip), %rax
	movb	$1, (%rdx,%rax)
	.loc 2 411 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	alloc_field, .-alloc_field
	.section	.rodata
	.align 8
.LC64:
	.string	"option --output: field %s unknown"
	.align 8
.LC65:
	.string	"option --output: field %s used more than once"
.LC66:
	.string	"Size"
.LC67:
	.string	"Avail"
.LC68:
	.string	"!\"invalid field\""
	.text
	.type	decode_output_arg, @function
decode_output_arg:
.LFB67:
	.loc 2 418 1
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
	.loc 2 419 24
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -24(%rbp)
	.loc 2 420 9
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.L59:
.LBB6:
	.loc 2 424 21
	movq	-40(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	.loc 2 427 10
	cmpq	$0, -32(%rbp)
	je	.L46
	.loc 2 428 15
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 428 18
	movb	$0, (%rax)
.L46:
	.loc 2 431 23
	movl	$12, -48(%rbp)
.LBB7:
	.loc 2 432 25
	movl	$0, -44(%rbp)
	.loc 2 432 7
	jmp	.L47
.L50:
	.loc 2 434 15
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+field_data(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 434 14
	testl	%eax, %eax
	jne	.L48
	.loc 2 436 21
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	.loc 2 437 15
	jmp	.L49
.L48:
	.loc 2 432 69 discriminator 2
	addl	$1, -44(%rbp)
.L47:
	.loc 2 432 7 discriminator 1
	cmpl	$11, -44(%rbp)
	jbe	.L50
.L49:
.LBE7:
	.loc 2 440 10
	cmpl	$12, -48(%rbp)
	jne	.L51
	.loc 2 442 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 442 24
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	.loc 2 442 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 443 11
	movl	$1, %edi
	call	usage
.L51:
	.loc 2 446 28
	movl	-48(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	44+field_data(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 446 10
	testb	%al, %al
	je	.L52
	.loc 2 449 11
	movl	-48(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+field_data(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 449 24
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	.loc 2 449 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 451 11
	movl	$1, %edi
	call	usage
.L52:
	cmpl	$11, -48(%rbp)
	ja	.L60
	movl	-48(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L55(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L55(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L55:
	.long	.L54-.L55
	.long	.L54-.L55
	.long	.L57-.L55
	.long	.L54-.L55
	.long	.L56-.L55
	.long	.L54-.L55
	.long	.L54-.L55
	.long	.L54-.L55
	.long	.L54-.L55
	.long	.L54-.L55
	.long	.L54-.L55
	.long	.L54-.L55
	.text
.L54:
	.loc 2 466 11
	movl	-48(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	alloc_field
	.loc 2 467 11
	jmp	.L58
.L57:
	.loc 2 470 11
	movl	-48(%rbp), %eax
	leaq	.LC66(%rip), %rsi
	movl	%eax, %edi
	call	alloc_field
	.loc 2 471 11
	jmp	.L58
.L56:
	.loc 2 474 11
	movl	-48(%rbp), %eax
	leaq	.LC67(%rip), %rsi
	movl	%eax, %edi
	call	alloc_field
	.loc 2 475 11
	jmp	.L58
.L60:
	.loc 2 478 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.7893(%rip), %rcx
	movl	$478, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC68(%rip), %rdi
	call	__assert_fail@PLT
.L58:
	.loc 2 480 9
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBE6:
	.loc 2 482 3
	cmpq	$0, -40(%rbp)
	jne	.L59
	.loc 2 484 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 485 1
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	decode_output_arg, .-decode_output_arg
	.section	.rodata
.LC69:
	.string	"Capacity"
.LC70:
	.string	"!\"invalid header_mode\""
	.text
	.type	get_field_list, @function
get_field_list:
.LFB68:
	.loc 2 490 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 491 3
	movl	header_mode(%rip), %eax
	cmpl	$4, %eax
	ja	.L75
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L64(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L64(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L64:
	.long	.L68-.L64
	.long	.L67-.L64
	.long	.L66-.L64
	.long	.L65-.L64
	.long	.L63-.L64
	.text
.L68:
	.loc 2 494 7
	movl	$0, %esi
	movl	$0, %edi
	call	alloc_field
	.loc 2 495 11
	movzbl	print_type(%rip), %eax
	.loc 2 495 10
	testb	%al, %al
	je	.L69
	.loc 2 496 9
	movl	$0, %esi
	movl	$1, %edi
	call	alloc_field
.L69:
	.loc 2 497 7
	movl	$0, %esi
	movl	$2, %edi
	call	alloc_field
	.loc 2 498 7
	movl	$0, %esi
	movl	$3, %edi
	call	alloc_field
	.loc 2 499 7
	movl	$0, %esi
	movl	$4, %edi
	call	alloc_field
	.loc 2 500 7
	movl	$0, %esi
	movl	$5, %edi
	call	alloc_field
	.loc 2 501 7
	movl	$0, %esi
	movl	$10, %edi
	call	alloc_field
	.loc 2 502 7
	jmp	.L70
.L66:
	.loc 2 505 7
	movl	$0, %esi
	movl	$0, %edi
	call	alloc_field
	.loc 2 506 11
	movzbl	print_type(%rip), %eax
	.loc 2 506 10
	testb	%al, %al
	je	.L71
	.loc 2 507 9
	movl	$0, %esi
	movl	$1, %edi
	call	alloc_field
.L71:
	.loc 2 509 7
	leaq	.LC66(%rip), %rsi
	movl	$2, %edi
	call	alloc_field
	.loc 2 510 7
	movl	$0, %esi
	movl	$3, %edi
	call	alloc_field
	.loc 2 511 7
	leaq	.LC67(%rip), %rsi
	movl	$4, %edi
	call	alloc_field
	.loc 2 512 7
	movl	$0, %esi
	movl	$5, %edi
	call	alloc_field
	.loc 2 513 7
	movl	$0, %esi
	movl	$10, %edi
	call	alloc_field
	.loc 2 514 7
	jmp	.L70
.L67:
	.loc 2 517 7
	movl	$0, %esi
	movl	$0, %edi
	call	alloc_field
	.loc 2 518 11
	movzbl	print_type(%rip), %eax
	.loc 2 518 10
	testb	%al, %al
	je	.L72
	.loc 2 519 9
	movl	$0, %esi
	movl	$1, %edi
	call	alloc_field
.L72:
	.loc 2 520 7
	movl	$0, %esi
	movl	$6, %edi
	call	alloc_field
	.loc 2 521 7
	movl	$0, %esi
	movl	$7, %edi
	call	alloc_field
	.loc 2 522 7
	movl	$0, %esi
	movl	$8, %edi
	call	alloc_field
	.loc 2 523 7
	movl	$0, %esi
	movl	$9, %edi
	call	alloc_field
	.loc 2 524 7
	movl	$0, %esi
	movl	$10, %edi
	call	alloc_field
	.loc 2 525 7
	jmp	.L70
.L65:
	.loc 2 528 7
	movl	$0, %esi
	movl	$0, %edi
	call	alloc_field
	.loc 2 529 11
	movzbl	print_type(%rip), %eax
	.loc 2 529 10
	testb	%al, %al
	je	.L73
	.loc 2 530 9
	movl	$0, %esi
	movl	$1, %edi
	call	alloc_field
.L73:
	.loc 2 531 7
	movl	$0, %esi
	movl	$2, %edi
	call	alloc_field
	.loc 2 532 7
	movl	$0, %esi
	movl	$3, %edi
	call	alloc_field
	.loc 2 533 7
	movl	$0, %esi
	movl	$4, %edi
	call	alloc_field
	.loc 2 534 7
	leaq	.LC69(%rip), %rsi
	movl	$5, %edi
	call	alloc_field
	.loc 2 535 7
	movl	$0, %esi
	movl	$10, %edi
	call	alloc_field
	.loc 2 536 7
	jmp	.L70
.L63:
	.loc 2 539 11
	movq	ncolumns(%rip), %rax
	.loc 2 539 10
	testq	%rax, %rax
	jne	.L76
	.loc 2 542 11
	movq	all_args_string(%rip), %rax
	movq	%rax, %rdi
	call	decode_output_arg
	.loc 2 544 7
	jmp	.L76
.L75:
	.loc 2 547 7 discriminator 1
	leaq	__PRETTY_FUNCTION__.7906(%rip), %rcx
	movl	$547, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC70(%rip), %rdi
	call	__assert_fail@PLT
.L76:
	.loc 2 544 7
	nop
.L70:
	.loc 2 549 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	get_field_list, .-get_field_list
	.section	.rodata
.LC71:
	.string	"%s-%s"
	.text
	.type	get_header, @function
get_header:
.LFB69:
	.loc 2 555 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$752, %rsp
	.loc 2 555 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 558 3
	call	alloc_table_row
	.loc 2 560 12
	movq	$0, -728(%rbp)
	.loc 2 560 3
	jmp	.L78
.L90:
.LBB8:
	.loc 2 562 13
	movq	$0, -736(%rbp)
	.loc 2 563 28
	movq	columns(%rip), %rax
	movq	-728(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, -704(%rbp)
	.loc 2 565 18
	movq	columns(%rip), %rax
	movq	-728(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 565 23
	movl	(%rax), %eax
	.loc 2 565 10
	cmpl	$2, %eax
	jne	.L79
	.loc 2 566 27
	movl	header_mode(%rip), %eax
	.loc 2 566 11
	testl	%eax, %eax
	je	.L80
	.loc 2 567 31
	movl	header_mode(%rip), %eax
	.loc 2 567 15
	cmpl	$4, %eax
	jne	.L79
	.loc 2 568 42
	movl	human_output_opts(%rip), %eax
	andl	$16, %eax
	.loc 2 568 19
	testl	%eax, %eax
	jne	.L79
.L80:
.LBB9:
	.loc 2 575 26
	movl	human_output_opts(%rip), %eax
	andl	$292, %eax
	.loc 2 572 15
	orb	$-104, %al
	movl	%eax, -740(%rbp)
	.loc 2 580 21
	movq	output_block_size(%rip), %rax
	movq	%rax, -720(%rbp)
	.loc 2 581 21
	movq	output_block_size(%rip), %rax
	movq	%rax, -712(%rbp)
.L81:
	.loc 2 587 41 discriminator 1
	movq	-720(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	imulq	$1000, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 587 33 discriminator 1
	testq	%rax, %rax
	sete	%al
	movb	%al, -742(%rbp)
	.loc 2 587 61 discriminator 1
	movq	-720(%rbp), %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, -720(%rbp)
	.loc 2 588 41 discriminator 1
	movq	-712(%rbp), %rax
	andl	$1023, %eax
	.loc 2 588 33 discriminator 1
	testq	%rax, %rax
	sete	%al
	movb	%al, -741(%rbp)
	.loc 2 588 61 discriminator 1
	movq	-712(%rbp), %rax
	shrq	$10, %rax
	movq	%rax, -712(%rbp)
	.loc 2 590 36 discriminator 1
	movzbl	-742(%rbp), %edx
	movzbl	-741(%rbp), %eax
	andl	%edx, %eax
	.loc 2 590 11 discriminator 1
	testl	%eax, %eax
	jne	.L81
	.loc 2 592 14
	movzbl	-742(%rbp), %eax
	cmpb	-741(%rbp), %al
	jnb	.L82
	.loc 2 593 18
	orl	$32, -740(%rbp)
.L82:
	.loc 2 594 14
	movzbl	-741(%rbp), %eax
	cmpb	-742(%rbp), %al
	jnb	.L83
	.loc 2 595 18
	andl	$-33, -740(%rbp)
.L83:
	.loc 2 596 23
	movl	-740(%rbp), %eax
	andl	$32, %eax
	.loc 2 596 14
	testl	%eax, %eax
	jne	.L84
	.loc 2 597 18
	orl	$256, -740(%rbp)
.L84:
	.loc 2 599 23
	movq	output_block_size(%rip), %rax
	movl	-740(%rbp), %edx
	leaq	-672(%rbp), %rsi
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, -696(%rbp)
	.loc 2 602 20
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rax, -704(%rbp)
	.loc 2 605 32
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 605 15
	movq	-704(%rbp), %rcx
	movq	-696(%rbp), %rdx
	leaq	-736(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	.loc 2 605 14
	cmpl	$-1, %eax
	jne	.L92
	.loc 2 606 18
	movq	$0, -736(%rbp)
.LBE9:
	.loc 2 569 9
	jmp	.L92
.L79:
	.loc 2 608 28
	movl	header_mode(%rip), %eax
	.loc 2 608 15
	cmpl	$3, %eax
	jne	.L87
	.loc 2 608 52 discriminator 1
	movq	columns(%rip), %rax
	movq	-728(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 608 57 discriminator 1
	movl	(%rax), %eax
	.loc 2 608 42 discriminator 1
	cmpl	$2, %eax
	jne	.L87
.LBB10:
	.loc 2 611 23
	movq	output_block_size(%rip), %rax
	leaq	-672(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, -688(%rbp)
	.loc 2 614 32
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 614 15
	movq	-704(%rbp), %rcx
	movq	-688(%rbp), %rdx
	leaq	-736(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	.loc 2 614 14
	cmpl	$-1, %eax
	jne	.L93
	.loc 2 615 18
	movq	$0, -736(%rbp)
.LBE10:
	.loc 2 609 9
	jmp	.L93
.L87:
	.loc 2 618 16
	movq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	.loc 2 618 14
	movq	%rax, -736(%rbp)
	jmp	.L86
.L92:
	.loc 2 569 9
	nop
	jmp	.L86
.L93:
	.loc 2 609 9
	nop
.L86:
	.loc 2 620 11
	movq	-736(%rbp), %rax
	.loc 2 620 10
	testq	%rax, %rax
	jne	.L89
	.loc 2 621 9
	call	xalloc_die@PLT
.L89:
	.loc 2 623 7 discriminator 2
	movq	-736(%rbp), %rax
	movq	%rax, %rdi
	call	replace_problematic_chars
	.loc 2 625 12 discriminator 2
	movq	table(%rip), %rax
	movq	nrows(%rip), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 625 23 discriminator 2
	movq	-728(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	.loc 2 625 29 discriminator 2
	movq	-736(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 627 27 discriminator 2
	movq	-736(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	.loc 2 627 14 discriminator 2
	cltq
	movq	%rax, -680(%rbp)
	.loc 2 628 29 discriminator 2
	movq	columns(%rip), %rax
	movq	-728(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	.loc 2 628 14 discriminator 2
	movq	columns(%rip), %rdx
	movq	-728(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	.loc 2 628 29 discriminator 2
	cmpq	%rax, -680(%rbp)
	cmovnb	-680(%rbp), %rax
	.loc 2 628 27 discriminator 2
	movq	%rax, 32(%rdx)
.LBE8:
	.loc 2 560 36 discriminator 2
	addq	$1, -728(%rbp)
.L78:
	.loc 2 560 21 discriminator 1
	movq	ncolumns(%rip), %rax
	.loc 2 560 3 discriminator 1
	cmpq	%rax, -728(%rbp)
	jb	.L90
	.loc 2 630 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L91
	call	__stack_chk_fail@PLT
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	get_header, .-get_header
	.type	selected_fstype, @function
selected_fstype:
.LFB70:
	.loc 2 636 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 639 22
	movq	fs_select_list(%rip), %rax
	.loc 2 639 6
	testq	%rax, %rax
	je	.L95
	.loc 2 639 30 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L96
.L95:
	.loc 2 640 12
	movl	$1, %eax
	jmp	.L97
.L96:
	.loc 2 641 12
	movq	fs_select_list(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 641 3
	jmp	.L98
.L100:
	.loc 2 642 9
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 642 8
	testl	%eax, %eax
	jne	.L99
	.loc 2 643 14
	movl	$1, %eax
	jmp	.L97
.L99:
	.loc 2 641 39 discriminator 2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L98:
	.loc 2 641 3 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L100
	.loc 2 644 10
	movl	$0, %eax
.L97:
	.loc 2 645 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	selected_fstype, .-selected_fstype
	.type	excluded_fstype, @function
excluded_fstype:
.LFB71:
	.loc 2 651 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 654 23
	movq	fs_exclude_list(%rip), %rax
	.loc 2 654 6
	testq	%rax, %rax
	je	.L102
	.loc 2 654 31 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L103
.L102:
	.loc 2 655 12
	movl	$0, %eax
	jmp	.L104
.L103:
	.loc 2 656 12
	movq	fs_exclude_list(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 656 3
	jmp	.L105
.L107:
	.loc 2 657 9
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 657 8
	testl	%eax, %eax
	jne	.L106
	.loc 2 658 14
	movl	$1, %eax
	jmp	.L104
.L106:
	.loc 2 656 40 discriminator 2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L105:
	.loc 2 656 3 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L107
	.loc 2 659 10
	movl	$0, %eax
.L104:
	.loc 2 660 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	excluded_fstype, .-excluded_fstype
	.type	devlist_hash, @function
devlist_hash:
.LFB72:
	.loc 2 664 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 665 25
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 666 23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 666 33
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, %rax
	.loc 2 667 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	devlist_hash, .-devlist_hash
	.type	devlist_compare, @function
devlist_compare:
.LFB73:
	.loc 2 671 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 672 25
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 673 25
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 674 11
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 674 25
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 674 21
	cmpq	%rax, %rdx
	sete	%al
	.loc 2 675 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	devlist_compare, .-devlist_compare
	.type	devlist_for_dev, @function
devlist_for_dev:
.LFB74:
	.loc 2 679 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 679 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 680 21
	movq	devlist_table(%rip), %rax
	.loc 2 680 6
	testq	%rax, %rax
	jne	.L113
	.loc 2 681 12
	movl	$0, %eax
	jmp	.L115
.L113:
	.loc 2 683 21
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 684 10
	movq	devlist_table(%rip), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_lookup@PLT
.L115:
	.loc 2 685 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L116
	.loc 2 685 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	devlist_for_dev, .-devlist_for_dev
	.type	devlist_free, @function
devlist_free:
.LFB75:
	.loc 2 689 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 690 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 691 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	devlist_free, .-devlist_free
	.type	filter_mount_list, @function
filter_mount_list:
.LFB76:
	.loc 2 702 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movb	%al, -228(%rbp)
	.loc 2 702 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 706 19
	movq	$0, -208(%rbp)
	.loc 2 707 7
	movl	$0, -220(%rbp)
	.loc 2 709 11
	movq	mount_list(%rip), %rax
	movq	%rax, -216(%rbp)
	.loc 2 709 3
	jmp	.L119
.L120:
	.loc 2 710 20 discriminator 3
	addl	$1, -220(%rbp)
	.loc 2 709 32 discriminator 3
	movq	-216(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -216(%rbp)
.L119:
	.loc 2 709 3 discriminator 1
	cmpq	$0, -216(%rbp)
	jne	.L120
	.loc 2 712 19
	movl	-220(%rbp), %eax
	cltq
	leaq	devlist_free(%rip), %r8
	leaq	devlist_compare(%rip), %rcx
	leaq	devlist_hash(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	hash_initialize@PLT
	.loc 2 712 17
	movq	%rax, devlist_table(%rip)
	.loc 2 716 21
	movq	devlist_table(%rip), %rax
	.loc 2 716 6
	testq	%rax, %rax
	jne	.L121
	.loc 2 717 5
	call	xalloc_die@PLT
.L121:
	.loc 2 720 11
	movq	mount_list(%rip), %rax
	movq	%rax, -216(%rbp)
	.loc 2 720 3
	jmp	.L122
.L138:
.LBB11:
	.loc 2 723 27
	movq	$0, -200(%rbp)
	.loc 2 728 12
	movq	-216(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$2, %eax
	.loc 2 728 10
	testb	%al, %al
	je	.L123
	.loc 2 728 26 discriminator 1
	movzbl	show_local_fs(%rip), %eax
	testb	%al, %al
	jne	.L124
.L123:
	.loc 2 729 15
	movq	-216(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	.loc 2 729 11
	testb	%al, %al
	je	.L125
	.loc 2 729 31 discriminator 1
	movzbl	show_all_fs(%rip), %eax
	xorl	$1, %eax
	.loc 2 729 28 discriminator 1
	testb	%al, %al
	je	.L125
	.loc 2 729 47 discriminator 2
	movzbl	show_listed_fs(%rip), %eax
	xorl	$1, %eax
	.loc 2 729 44 discriminator 2
	testb	%al, %al
	jne	.L124
.L125:
	.loc 2 730 35
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 730 16
	movq	%rax, %rdi
	call	selected_fstype
	.loc 2 730 15
	xorl	$1, %eax
	.loc 2 730 11
	testb	%al, %al
	jne	.L124
	.loc 2 730 68 discriminator 1
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 730 49 discriminator 1
	movq	%rax, %rdi
	call	excluded_fstype
	.loc 2 730 46 discriminator 1
	testb	%al, %al
	jne	.L124
	.loc 2 731 28
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 731 20
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 731 11
	cmpl	$-1, %eax
	jne	.L126
.L124:
	.loc 2 736 26
	movq	-216(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 736 22
	movq	%rax, -176(%rbp)
	jmp	.L127
.L126:
.LBB12:
	.loc 2 741 38
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	devlist_for_dev
	movq	%rax, -192(%rbp)
	.loc 2 743 14
	cmpq	$0, -192(%rbp)
	je	.L127
.LBB13:
	.loc 2 745 57
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 745 61
	movq	8(%rax), %rax
	.loc 2 745 41
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 746 53
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 746 43
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 745 20
	cmpq	%rax, %rbx
	seta	%al
	movb	%al, -222(%rbp)
	.loc 2 748 48
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 748 52
	movq	16(%rax), %rax
	.loc 2 750 40
	testq	%rax, %rax
	je	.L128
	.loc 2 749 45
	movq	-216(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 749 40
	testq	%rax, %rax
	je	.L128
	.loc 2 750 60 discriminator 3
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 750 64 discriminator 3
	movq	16(%rax), %rax
	.loc 2 750 44 discriminator 3
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 751 56 discriminator 3
	movq	-216(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 751 46 discriminator 3
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 750 40 discriminator 3
	cmpq	%rax, %rbx
	jnb	.L128
	.loc 2 750 40 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L129
.L128:
	.loc 2 750 40 discriminator 1
	movl	$0, %eax
.L129:
	.loc 2 748 20 is_stmt 1
	movb	%al, -221(%rbp)
	andb	$1, -221(%rbp)
	.loc 2 752 19
	movzbl	print_grand_total(%rip), %eax
	xorl	$1, %eax
	.loc 2 752 18
	testb	%al, %al
	je	.L130
	.loc 2 753 19
	movq	-216(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L130
	.loc 2 753 47 discriminator 1
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 753 36 discriminator 1
	movzbl	40(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L130
	.loc 2 754 24
	movq	-216(%rbp), %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 754 19
	testl	%eax, %eax
	jne	.L127
.L130:
	.loc 2 761 35
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 761 25
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 761 23
	testq	%rax, %rax
	je	.L131
	.loc 2 763 46
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 763 50
	movq	(%rax), %rax
	.loc 2 763 30
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 763 25
	testq	%rax, %rax
	je	.L132
.L131:
	.loc 2 765 24
	cmpb	$0, -222(%rbp)
	je	.L133
	.loc 2 765 50 discriminator 1
	movzbl	-221(%rbp), %eax
	xorl	$1, %eax
	.loc 2 765 47 discriminator 1
	testb	%al, %al
	jne	.L132
.L133:
	.loc 2 767 30
	movq	-216(%rbp), %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 767 24
	testl	%eax, %eax
	je	.L134
	.loc 2 772 31
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 772 28
	testl	%eax, %eax
	jne	.L134
.L132:
	.loc 2 776 30
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)
	.loc 2 777 32
	movq	-192(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L127
.L134:
	.loc 2 782 30
	movq	-216(%rbp), %rax
	movq	%rax, -200(%rbp)
.L127:
.LBE13:
.LBE12:
	.loc 2 788 10
	cmpq	$0, -200(%rbp)
	je	.L135
	.loc 2 790 14
	movq	-216(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -216(%rbp)
	.loc 2 791 15
	movzbl	-228(%rbp), %eax
	xorl	$1, %eax
	.loc 2 791 14
	testb	%al, %al
	je	.L122
	.loc 2 792 13
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	free_mount_entry@PLT
	jmp	.L122
.L135:
.LBB14:
	.loc 2 797 37
	movl	$24, %edi
	call	xmalloc@PLT
	movq	%rax, -184(%rbp)
	.loc 2 798 23
	movq	-184(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 799 33
	movq	-176(%rbp), %rdx
	.loc 2 799 28
	movq	-184(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 800 25
	movq	-184(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 801 23
	movq	-184(%rbp), %rax
	movq	%rax, -208(%rbp)
	.loc 2 802 15
	movq	devlist_table(%rip), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_insert@PLT
	.loc 2 802 14
	testq	%rax, %rax
	jne	.L137
	.loc 2 803 13
	call	xalloc_die@PLT
.L137:
	.loc 2 805 14
	movq	-216(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -216(%rbp)
.L122:
.LBE14:
.LBE11:
	.loc 2 720 3 discriminator 1
	cmpq	$0, -216(%rbp)
	jne	.L138
	.loc 2 810 7
	movzbl	-228(%rbp), %eax
	xorl	$1, %eax
	.loc 2 810 6
	testb	%al, %al
	je	.L143
	.loc 2 811 16
	movq	$0, mount_list(%rip)
	.loc 2 812 11
	jmp	.L140
.L141:
	.loc 2 815 12
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
	.loc 2 816 21
	movq	mount_list(%rip), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, 48(%rax)
	.loc 2 817 20
	movq	-216(%rbp), %rax
	movq	%rax, mount_list(%rip)
	.loc 2 818 21
	movq	-208(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
.L140:
	.loc 2 812 11
	cmpq	$0, -208(%rbp)
	jne	.L141
	.loc 2 821 7
	movq	devlist_table(%rip), %rax
	movq	%rax, %rdi
	call	hash_free@PLT
	.loc 2 822 21
	movq	$0, devlist_table(%rip)
.L143:
	.loc 2 824 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L142
	call	__stack_chk_fail@PLT
.L142:
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	filter_mount_list, .-filter_mount_list
	.type	me_for_dev, @function
me_for_dev:
.LFB77:
	.loc 2 832 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 833 24
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	devlist_for_dev
	movq	%rax, -8(%rbp)
	.loc 2 834 6
	cmpq	$0, -8(%rbp)
	je	.L145
	.loc 2 835 18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L146
.L145:
	.loc 2 837 10
	movl	$0, %eax
.L146:
	.loc 2 838 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	me_for_dev, .-me_for_dev
	.type	known_value, @function
known_value:
.LFB78:
	.loc 2 846 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 847 12
	cmpq	$-3, -8(%rbp)
	setbe	%al
	.loc 2 848 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	known_value, .-known_value
	.section	.rodata
.LC72:
	.string	"-"
	.text
	.type	df_readable, @function
df_readable:
.LFB79:
	.loc 2 860 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movb	%al, -20(%rbp)
	.loc 2 861 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 861 7
	xorl	$1, %eax
	.loc 2 861 6
	testb	%al, %al
	je	.L150
	.loc 2 861 28 discriminator 1
	movzbl	-20(%rbp), %eax
	xorl	$1, %eax
	.loc 2 861 25 discriminator 1
	testb	%al, %al
	je	.L150
	.loc 2 862 12
	leaq	.LC72(%rip), %rax
	jmp	.L151
.L150:
.LBB15:
	.loc 2 865 17
	movl	human_output_opts(%rip), %edx
	movzbl	-20(%rbp), %ecx
	movq	-40(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	cmpb	$0, -20(%rbp)
	je	.L152
	.loc 2 865 17 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	negq	%rax
	jmp	.L153
.L152:
	.loc 2 865 17 discriminator 2
	movq	-32(%rbp), %rax
.L153:
	.loc 2 865 17 discriminator 4
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, -8(%rbp)
	.loc 2 867 10 is_stmt 1 discriminator 4
	cmpb	$0, -20(%rbp)
	je	.L154
	.loc 2 868 14
	subq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$45, (%rax)
.L154:
	.loc 2 869 14
	movq	-8(%rbp), %rax
.L151:
.LBE15:
	.loc 2 871 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	df_readable, .-df_readable
	.type	add_uint_with_neg_flag, @function
add_uint_with_neg_flag:
.LFB80:
	.loc 2 883 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, %eax
	movb	%al, -28(%rbp)
	.loc 2 884 7
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	xorb	-28(%rbp), %al
	.loc 2 884 6
	testb	%al, %al
	je	.L156
	.loc 2 886 13
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 887 7
	jmp	.L155
.L156:
	.loc 2 890 7
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 890 6
	testb	%al, %al
	je	.L158
	.loc 2 891 14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 891 13
	negq	%rax
	movq	%rax, %rdx
	.loc 2 891 11
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L158:
	.loc 2 893 6
	cmpb	$0, -28(%rbp)
	je	.L159
	.loc 2 894 9
	negq	-24(%rbp)
.L159:
	.loc 2 896 13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 896 6
	cmpq	%rax, -24(%rbp)
	jnb	.L160
	.loc 2 897 11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L161
.L160:
	.loc 2 900 21
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 900 19
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	.loc 2 900 13
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 901 17
	movq	-16(%rbp), %rax
	movzbl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L161:
	.loc 2 904 7
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 904 6
	testb	%al, %al
	je	.L155
	.loc 2 905 14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 905 13
	negq	%rax
	movq	%rax, %rdx
	.loc 2 905 11
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L155:
	.loc 2 906 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	add_uint_with_neg_flag, .-add_uint_with_neg_flag
	.section	.rodata
.LC73:
	.string	"-0123456789abcdefABCDEF"
	.text
	.type	has_uuid_suffix, @function
has_uuid_suffix:
.LFB81:
	.loc 2 913 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 914 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	.loc 2 916 11
	cmpq	$36, -8(%rbp)
	jbe	.L163
	.loc 2 916 30 discriminator 1
	movq	-8(%rbp), %rax
	leaq	-36(%rax), %rdx
	.loc 2 916 14 discriminator 1
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	.loc 2 916 11 discriminator 1
	cmpq	$36, %rax
	jne	.L163
	.loc 2 916 11 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L164
.L163:
	.loc 2 916 11 discriminator 4
	movl	$0, %eax
.L164:
	.loc 2 916 11 discriminator 6
	andl	$1, %eax
	.loc 2 917 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	has_uuid_suffix, .-has_uuid_suffix
	.type	get_field_values, @function
get_field_values:
.LFB82:
	.loc 2 925 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 927 38
	movq	-16(%rbp), %rax
	movq	$1, 8(%rax)
	.loc 2 927 23
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 927 19
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 928 18
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 928 13
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 929 46
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 929 41
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 2 929 21
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 2 929 17
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 930 24
	movq	-16(%rbp), %rax
	movb	$0, 32(%rax)
	.loc 2 932 12
	movq	-16(%rbp), %rax
	movq	$-1, 48(%rax)
	.loc 2 933 19
	movq	-16(%rbp), %rax
	movb	$0, 56(%rax)
	.loc 2 934 7
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 934 6
	testb	%al, %al
	je	.L167
	.loc 2 934 34 discriminator 1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 934 31 discriminator 1
	testb	%al, %al
	je	.L167
	.loc 2 936 20
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 936 32
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 936 28
	subq	%rax, %rdx
	.loc 2 936 16
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	.loc 2 937 28
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 937 40
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 937 36
	cmpq	%rax, %rdx
	setb	%dl
	.loc 2 937 23
	movq	-16(%rbp), %rax
	movb	%dl, 56(%rax)
.L167:
	.loc 2 941 24
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 941 19
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 942 20
	movq	output_block_size(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 943 18
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 943 13
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 944 22
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 944 17
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 945 30
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 945 25
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 2 946 30
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 2 947 26
	testb	%al, %al
	je	.L168
	.loc 2 947 29 discriminator 1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 947 26 discriminator 1
	testb	%al, %al
	je	.L168
	.loc 2 947 26 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L169
.L168:
	.loc 2 947 26 discriminator 4
	movl	$0, %eax
.L169:
	.loc 2 947 26 discriminator 6
	andl	$1, %eax
	.loc 2 946 24 is_stmt 1 discriminator 6
	movq	-8(%rbp), %rdx
	movb	%al, 32(%rdx)
	.loc 2 949 12 discriminator 6
	movq	-8(%rbp), %rax
	movq	$-1, 48(%rax)
	.loc 2 950 19 discriminator 6
	movq	-8(%rbp), %rax
	movb	$0, 56(%rax)
	.loc 2 951 7 discriminator 6
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 951 6 discriminator 6
	testb	%al, %al
	je	.L171
	.loc 2 951 34 discriminator 1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 951 31 discriminator 1
	testb	%al, %al
	je	.L171
	.loc 2 953 20
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 953 32
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 953 28
	subq	%rax, %rdx
	.loc 2 953 16
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	.loc 2 954 28
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 954 40
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 954 36
	cmpq	%rax, %rdx
	setb	%dl
	.loc 2 954 23
	movq	-8(%rbp), %rax
	movb	%dl, 56(%rax)
.L171:
	.loc 2 956 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	get_field_values, .-get_field_values
	.type	add_to_grand_total, @function
add_to_grand_total:
.LFB83:
	.loc 2 961 1
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
	.loc 2 962 7
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 962 6
	testb	%al, %al
	je	.L173
	.loc 2 963 25
	movq	40+grand_fsu(%rip), %rdx
	.loc 2 963 30
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 963 25
	addq	%rdx, %rax
	movq	%rax, 40+grand_fsu(%rip)
.L173:
	.loc 2 964 7
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 964 6
	testb	%al, %al
	je	.L174
	.loc 2 965 25
	movq	48+grand_fsu(%rip), %rdx
	.loc 2 965 30
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 965 25
	addq	%rdx, %rax
	movq	%rax, 48+grand_fsu(%rip)
.L174:
	.loc 2 967 7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 967 6
	testb	%al, %al
	je	.L175
	.loc 2 968 26
	movq	8+grand_fsu(%rip), %rdx
	.loc 2 968 31
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 968 49
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 968 45
	imulq	%rcx, %rax
	.loc 2 968 26
	addq	%rdx, %rax
	movq	%rax, 8+grand_fsu(%rip)
.L175:
	.loc 2 969 7
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 969 6
	testb	%al, %al
	je	.L176
	.loc 2 970 25
	movq	16+grand_fsu(%rip), %rdx
	.loc 2 970 30
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 970 48
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 970 44
	imulq	%rcx, %rax
	.loc 2 970 25
	addq	%rdx, %rax
	movq	%rax, 16+grand_fsu(%rip)
.L176:
	.loc 2 971 7
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 971 6
	testb	%al, %al
	je	.L178
	.loc 2 975 31
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 2 972 5
	movzbl	%al, %edx
	.loc 2 974 31
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 974 49
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 972 5
	imulq	%rcx, %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	leaq	32+grand_fsu(%rip), %rsi
	leaq	24+grand_fsu(%rip), %rdi
	call	add_uint_with_neg_flag
.L178:
	.loc 2 976 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	add_to_grand_total, .-add_to_grand_total
	.section	.rodata
.LC74:
	.string	"%s"
.LC75:
	.string	"!\"bad field_type\""
.LC81:
	.string	"%.0f%%"
.LC82:
	.string	"!\"unhandled field\""
.LC83:
	.string	"!\"empty cell\""
	.text
	.type	get_dev, @function
get_dev:
.LFB84:
	.loc 2 999 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1208, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1160(%rbp)
	movq	%rsi, -1168(%rbp)
	movq	%rdx, -1176(%rbp)
	movq	%rcx, -1184(%rbp)
	movq	%r8, -1192(%rbp)
	movl	%r9d, %ecx
	movl	16(%rbp), %eax
	movl	32(%rbp), %edx
	movb	%cl, -1196(%rbp)
	movb	%al, -1200(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -1208(%rbp)
	movl	%edx, %eax
	movb	%al, -1212(%rbp)
	.loc 2 999 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1000 6
	cmpb	$0, -1200(%rbp)
	je	.L180
	.loc 2 1000 17 discriminator 1
	movzbl	show_local_fs(%rip), %eax
	testb	%al, %al
	jne	.L259
.L180:
	.loc 2 1003 6
	cmpb	$0, -1196(%rbp)
	je	.L182
	.loc 2 1003 19 discriminator 1
	movzbl	show_all_fs(%rip), %eax
	xorl	$1, %eax
	.loc 2 1003 16 discriminator 1
	testb	%al, %al
	je	.L182
	.loc 2 1003 35 discriminator 2
	movzbl	show_listed_fs(%rip), %eax
	xorl	$1, %eax
	.loc 2 1003 32 discriminator 2
	testb	%al, %al
	jne	.L260
.L182:
	.loc 2 1006 8
	movq	-1192(%rbp), %rax
	movq	%rax, %rdi
	call	selected_fstype
	.loc 2 1006 7
	xorl	$1, %eax
	.loc 2 1006 6
	testb	%al, %al
	jne	.L261
	.loc 2 1006 36 discriminator 1
	movq	-1192(%rbp), %rax
	movq	%rax, %rdi
	call	excluded_fstype
	.loc 2 1006 33 discriminator 1
	testb	%al, %al
	jne	.L261
	.loc 2 1011 6
	cmpq	$0, -1208(%rbp)
	jne	.L185
	.loc 2 1011 18 discriminator 1
	cmpq	$0, -1168(%rbp)
	je	.L185
	.loc 2 1011 38 discriminator 2
	movq	-1168(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1011 33 discriminator 2
	cmpb	$47, %al
	jne	.L262
.L185:
	.loc 2 1018 6
	cmpq	$0, -1184(%rbp)
	jne	.L186
	.loc 2 1019 43
	cmpq	$0, -1168(%rbp)
	je	.L187
	.loc 2 1019 43 is_stmt 0 discriminator 1
	movq	-1168(%rbp), %rax
	jmp	.L188
.L187:
	.loc 2 1019 43 discriminator 2
	movq	-1160(%rbp), %rax
.L188:
	.loc 2 1019 15 is_stmt 1 discriminator 4
	movq	%rax, -1184(%rbp)
.L186:
	.loc 2 1022 6
	cmpq	$0, -1208(%rbp)
	je	.L189
	.loc 2 1023 9
	movq	-1208(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -1024(%rbp)
	movq	%rbx, -1016(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -1008(%rbp)
	movq	%rbx, -1000(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -992(%rbp)
	movq	%rbx, -984(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -976(%rbp)
	jmp	.L190
.L189:
	.loc 2 1024 12
	leaq	-1024(%rbp), %rdx
	movq	-1160(%rbp), %rcx
	movq	-1184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_fs_usage@PLT
	.loc 2 1024 11
	testl	%eax, %eax
	je	.L191
	.loc 2 1029 10
	cmpb	$0, -1212(%rbp)
	je	.L192
	.loc 2 1029 27 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1029 23 discriminator 1
	cmpl	$13, %eax
	je	.L193
	.loc 2 1029 46 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1029 43 discriminator 2
	cmpl	$2, %eax
	jne	.L192
.L193:
	.loc 2 1031 15
	movzbl	show_all_fs(%rip), %eax
	xorl	$1, %eax
	.loc 2 1031 14
	testb	%al, %al
	jne	.L263
	.loc 2 1034 18
	leaq	.LC72(%rip), %rax
	movq	%rax, -1192(%rbp)
	.loc 2 1035 38
	movb	$0, -992(%rbp)
	.loc 2 1037 58
	movq	$-1, -976(%rbp)
	.loc 2 1037 47
	movq	-976(%rbp), %rax
	.loc 2 1037 42
	movq	%rax, -984(%rbp)
	.loc 2 1037 31
	movq	-984(%rbp), %rax
	.loc 2 1037 26
	movq	%rax, -1000(%rbp)
	.loc 2 1037 14
	movq	-1000(%rbp), %rax
	.loc 2 1036 62
	movq	%rax, -1008(%rbp)
	.loc 2 1036 51
	movq	-1008(%rbp), %rax
	.loc 2 1036 46
	movq	%rax, -1016(%rbp)
	.loc 2 1036 34
	movq	-1016(%rbp), %rax
	.loc 2 1036 29
	movq	%rax, -1024(%rbp)
	jmp	.L190
.L192:
	.loc 2 1041 11
	movq	-1184(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 1041 21
	call	__errno_location@PLT
	.loc 2 1041 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC74(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1042 23
	movl	$1, exit_status(%rip)
	.loc 2 1043 11
	jmp	.L179
.L191:
	.loc 2 1046 11
	cmpb	$0, -1212(%rbp)
	je	.L190
	.loc 2 1046 24 discriminator 1
	movzbl	show_all_fs(%rip), %eax
	testb	%al, %al
	je	.L190
.LBB16:
	.loc 2 1053 11
	leaq	-832(%rbp), %rdx
	movq	-1184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 1053 10
	testl	%eax, %eax
	jne	.L190
.LBB17:
	.loc 2 1055 47
	movq	-832(%rbp), %rax
	movq	%rax, %rdi
	call	me_for_dev
	movq	%rax, -1104(%rbp)
	.loc 2 1056 14
	cmpq	$0, -1104(%rbp)
	je	.L190
	.loc 2 1056 27 discriminator 1
	movq	-1104(%rbp), %rax
	movq	(%rax), %rax
	movq	-1160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1056 22 discriminator 1
	testl	%eax, %eax
	je	.L190
	.loc 2 1057 19
	movq	-1104(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$2, %eax
	.loc 2 1057 15
	testb	%al, %al
	je	.L196
	.loc 2 1057 42 discriminator 1
	movzbl	-1200(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1057 39 discriminator 1
	testb	%al, %al
	je	.L190
.L196:
	.loc 2 1059 22
	leaq	.LC72(%rip), %rax
	movq	%rax, -1192(%rbp)
	.loc 2 1060 42
	movb	$0, -992(%rbp)
	.loc 2 1062 62
	movq	$-1, -976(%rbp)
	.loc 2 1062 51
	movq	-976(%rbp), %rax
	.loc 2 1062 46
	movq	%rax, -984(%rbp)
	.loc 2 1062 35
	movq	-984(%rbp), %rax
	.loc 2 1062 30
	movq	%rax, -1000(%rbp)
	.loc 2 1062 18
	movq	-1000(%rbp), %rax
	.loc 2 1061 66
	movq	%rax, -1008(%rbp)
	.loc 2 1061 55
	movq	-1008(%rbp), %rax
	.loc 2 1061 50
	movq	%rax, -1016(%rbp)
	.loc 2 1061 38
	movq	-1016(%rbp), %rax
	.loc 2 1061 33
	movq	%rax, -1024(%rbp)
.L190:
.LBE17:
.LBE16:
	.loc 2 1067 10
	movq	-1016(%rbp), %rax
	.loc 2 1067 6
	testq	%rax, %rax
	jne	.L197
	.loc 2 1067 30 discriminator 1
	movzbl	show_all_fs(%rip), %eax
	xorl	$1, %eax
	.loc 2 1067 27 discriminator 1
	testb	%al, %al
	je	.L197
	.loc 2 1067 46 discriminator 2
	movzbl	show_listed_fs(%rip), %eax
	xorl	$1, %eax
	.loc 2 1067 43 discriminator 2
	testb	%al, %al
	jne	.L264
.L197:
	.loc 2 1070 6
	cmpq	$0, -1208(%rbp)
	jne	.L198
	.loc 2 1071 28
	movb	$1, file_systems_processed(%rip)
.L198:
	.loc 2 1073 3
	call	alloc_table_row
	.loc 2 1075 6
	cmpq	$0, -1160(%rbp)
	jne	.L199
	.loc 2 1076 10
	leaq	.LC72(%rip), %rax
	movq	%rax, -1160(%rbp)
.L199:
	.loc 2 1078 6
	cmpq	$0, -1176(%rbp)
	jne	.L200
	.loc 2 1079 10
	leaq	.LC72(%rip), %rax
	movq	%rax, -1176(%rbp)
.L200:
	.loc 2 1081 20
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -1136(%rbp)
	.loc 2 1090 6
	cmpb	$0, -1212(%rbp)
	je	.L201
	.loc 2 1091 10
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	has_uuid_suffix
	.loc 2 1091 7
	testb	%al, %al
	je	.L201
	.loc 2 1092 26
	movq	-1136(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	canonicalize_filename_mode@PLT
	movq	%rax, -1096(%rbp)
	.loc 2 1092 7
	cmpq	$0, -1096(%rbp)
	je	.L201
	.loc 2 1094 7
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1095 16
	movq	-1096(%rbp), %rax
	movq	%rax, -1136(%rbp)
.L201:
	.loc 2 1098 6
	cmpq	$0, -1192(%rbp)
	jne	.L202
	.loc 2 1099 12
	leaq	.LC72(%rip), %rax
	movq	%rax, -1192(%rbp)
.L202:
	.loc 2 1103 3
	leaq	-1024(%rbp), %rdx
	leaq	-896(%rbp), %rcx
	leaq	-960(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_field_values
	.loc 2 1106 7
	movzbl	print_grand_total(%rip), %eax
	.loc 2 1106 6
	testb	%al, %al
	je	.L203
	.loc 2 1106 25 discriminator 1
	cmpq	$0, -1208(%rbp)
	jne	.L203
	.loc 2 1107 5
	leaq	-896(%rbp), %rdx
	leaq	-960(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_to_grand_total
.L203:
	.loc 2 1110 12
	movq	$0, -1128(%rbp)
	.loc 2 1110 3
	jmp	.L204
.L248:
.LBB18:
	.loc 2 1116 22
	movq	columns(%rip), %rax
	movq	-1128(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1116 27
	movl	16(%rax), %eax
	.loc 2 1116 7
	cmpl	$2, %eax
	je	.L205
	cmpl	$2, %eax
	ja	.L206
	testl	%eax, %eax
	je	.L207
	cmpl	$1, %eax
	je	.L208
	jmp	.L206
.L207:
	.loc 2 1119 13
	leaq	-960(%rbp), %rax
	movq	%rax, -1120(%rbp)
	.loc 2 1120 11
	jmp	.L209
.L208:
	.loc 2 1122 13
	leaq	-896(%rbp), %rax
	movq	%rax, -1120(%rbp)
	.loc 2 1123 11
	jmp	.L209
.L205:
	.loc 2 1125 13
	movq	$0, -1120(%rbp)
	.loc 2 1126 11
	jmp	.L209
.L206:
	.loc 2 1128 13
	movq	$0, -1120(%rbp)
	.loc 2 1129 11
	leaq	__PRETTY_FUNCTION__.8042(%rip), %rcx
	movl	$1129, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC75(%rip), %rdi
	call	__assert_fail@PLT
.L209:
	.loc 2 1132 22
	movq	columns(%rip), %rax
	movq	-1128(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1132 27
	movl	(%rax), %eax
	cmpl	$11, %eax
	ja	.L251
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L212(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L212(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L212:
	.long	.L219-.L212
	.long	.L218-.L212
	.long	.L217-.L212
	.long	.L216-.L212
	.long	.L215-.L212
	.long	.L214-.L212
	.long	.L217-.L212
	.long	.L216-.L212
	.long	.L215-.L212
	.long	.L214-.L212
	.long	.L213-.L212
	.long	.L211-.L212
	.text
.L219:
	.loc 2 1135 18
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 2 1135 16
	movq	%rax, -1144(%rbp)
	.loc 2 1136 11
	jmp	.L220
.L218:
	.loc 2 1139 18
	movq	-1192(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 2 1139 16
	movq	%rax, -1144(%rbp)
	.loc 2 1140 11
	jmp	.L220
.L217:
	.loc 2 1144 18
	movq	-1120(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-1120(%rbp), %rax
	movq	(%rax), %rcx
	movq	-1120(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-688(%rbp), %rdx
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	df_readable
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 2 1144 16
	movq	%rax, -1144(%rbp)
	.loc 2 1146 11
	jmp	.L220
.L216:
	.loc 2 1150 18
	movq	-1120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-1120(%rbp), %rax
	movq	(%rax), %rcx
	movq	-1120(%rbp), %rax
	movq	48(%rax), %rsi
	.loc 2 1150 41
	movq	-1120(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 2 1150 18
	movzbl	%al, %eax
	leaq	-688(%rbp), %rdx
	movq	%rdi, %r8
	movl	%eax, %edi
	call	df_readable
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 2 1150 16
	movq	%rax, -1144(%rbp)
	.loc 2 1152 11
	jmp	.L220
.L215:
	.loc 2 1156 18
	movq	-1120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-1120(%rbp), %rax
	movq	(%rax), %rcx
	movq	-1120(%rbp), %rax
	movq	24(%rax), %rsi
	.loc 2 1156 41
	movq	-1120(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 2 1156 18
	movzbl	%al, %eax
	leaq	-688(%rbp), %rdx
	movq	%rdi, %r8
	movl	%eax, %edi
	call	df_readable
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 2 1156 16
	movq	%rax, -1144(%rbp)
	.loc 2 1158 11
	jmp	.L220
.L214:
.LBB19:
	.loc 2 1163 20
	movsd	.LC76(%rip), %xmm0
	movsd	%xmm0, -1112(%rbp)
	.loc 2 1164 19
	movq	-1120(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 1164 17
	xorl	$1, %eax
	.loc 2 1164 16
	testb	%al, %al
	jne	.L221
	.loc 2 1164 46 discriminator 1
	movq	-1120(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	known_value
	.loc 2 1164 44 discriminator 1
	xorl	$1, %eax
	.loc 2 1164 41 discriminator 1
	testb	%al, %al
	jne	.L221
	.loc 2 1166 24
	movq	-1120(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 2 1166 22
	xorl	$1, %eax
	.loc 2 1166 21
	testb	%al, %al
	je	.L222
	.loc 2 1167 26
	movq	-1120(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 1167 22
	movabsq	$184467440737095516, %rdx
	cmpq	%rdx, %rax
	ja	.L222
	.loc 2 1168 26
	movq	-1120(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 1168 36
	movq	-1120(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1168 33
	addq	%rdx, %rax
	.loc 2 1168 22
	testq	%rax, %rax
	je	.L222
	.loc 2 1169 27
	movq	-1120(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 1169 37
	movq	-1120(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1169 34
	addq	%rax, %rdx
	.loc 2 1169 52
	movq	-1120(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 1169 49
	cmpq	%rax, %rdx
	setb	%al
	movzbl	%al, %edx
	.loc 2 1170 26
	movq	-1120(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	%al, %eax
	.loc 2 1169 22
	cmpl	%eax, %edx
	jne	.L222
.LBB20:
	.loc 2 1172 35
	movq	-1120(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 1172 27
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, -1088(%rbp)
	.loc 2 1173 44
	movq	-1120(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 1173 54
	movq	-1120(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1173 27
	addq	%rdx, %rax
	movq	%rax, -1080(%rbp)
	.loc 2 1174 28
	movq	-1088(%rbp), %rax
	movl	$0, %edx
	divq	-1080(%rbp)
	movq	%rax, %rcx
	.loc 2 1174 52
	movq	-1088(%rbp), %rax
	movl	$0, %edx
	divq	-1080(%rbp)
	movq	%rdx, %rax
	.loc 2 1174 68
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	.loc 2 1174 44
	addq	%rcx, %rax
	.loc 2 1174 21
	testq	%rax, %rax
	js	.L223
	cvtsi2sdq	%rax, %xmm0
	jmp	.L224
.L223:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L224:
	movsd	%xmm0, -1112(%rbp)
.LBE20:
	.loc 2 1171 15
	jmp	.L221
.L222:
.LBB21:
	.loc 2 1183 29
	movq	-1120(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 2 1183 66
	testb	%al, %al
	je	.L225
	.loc 2 1183 59 discriminator 1
	movq	-1120(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 1183 56 discriminator 1
	negq	%rax
	.loc 2 1183 47 discriminator 1
	testq	%rax, %rax
	js	.L226
	cvtsi2sdq	%rax, %xmm0
	jmp	.L227
.L226:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L227:
	.loc 2 1183 66 discriminator 1
	movq	.LC77(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	jmp	.L228
.L225:
	.loc 2 1183 69 discriminator 2
	movq	-1120(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 1183 66 discriminator 2
	testq	%rax, %rax
	js	.L229
	cvtsi2sdq	%rax, %xmm0
	jmp	.L228
.L229:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L228:
	.loc 2 1183 24 discriminator 4
	movsd	%xmm0, -1072(%rbp)
	.loc 2 1184 29 discriminator 4
	movq	-1120(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 2 1185 56 discriminator 4
	testb	%al, %al
	je	.L231
	.loc 2 1185 44 discriminator 1
	movq	-1120(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1185 41 discriminator 1
	negq	%rax
	.loc 2 1185 32 discriminator 1
	testq	%rax, %rax
	js	.L232
	cvtsi2sdq	%rax, %xmm0
	jmp	.L233
.L232:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L233:
	.loc 2 1185 56 discriminator 1
	movq	.LC77(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	jmp	.L234
.L231:
	.loc 2 1185 59 discriminator 2
	movq	-1120(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1185 56 discriminator 2
	testq	%rax, %rax
	js	.L235
	cvtsi2sdq	%rax, %xmm0
	jmp	.L234
.L235:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L234:
	.loc 2 1184 24
	movsd	%xmm0, -1064(%rbp)
	.loc 2 1186 24
	movsd	-1072(%rbp), %xmm0
	addsd	-1064(%rbp), %xmm0
	movsd	%xmm0, -1056(%rbp)
	.loc 2 1187 20
	pxor	%xmm0, %xmm0
	ucomisd	-1056(%rbp), %xmm0
	jp	.L252
	pxor	%xmm0, %xmm0
	ucomisd	-1056(%rbp), %xmm0
	je	.L221
.L252:
.LBB22:
	.loc 2 1189 46
	movsd	-1072(%rbp), %xmm1
	movsd	.LC79(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	.loc 2 1189 42
	divsd	-1056(%rbp), %xmm0
	movsd	%xmm0, -1112(%rbp)
	.loc 2 1189 30
	movsd	-1112(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -1048(%rbp)
	.loc 2 1190 28
	cvtsi2sdq	-1048(%rbp), %xmm0
	movsd	%xmm0, -1040(%rbp)
	.loc 2 1194 30
	movsd	-1040(%rbp), %xmm0
	movsd	.LC80(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	.loc 2 1194 24
	movsd	-1112(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L221
	.loc 2 1194 55 discriminator 1
	movsd	-1040(%rbp), %xmm1
	movsd	.LC80(%rip), %xmm0
	addsd	%xmm1, %xmm0
	.loc 2 1194 40 discriminator 1
	comisd	-1112(%rbp), %xmm0
	jb	.L221
	.loc 2 1195 34
	movsd	-1112(%rbp), %xmm0
	comisd	-1040(%rbp), %xmm0
	jbe	.L257
	.loc 2 1195 34 is_stmt 0 discriminator 1
	movsd	.LC80(%rip), %xmm0
	jmp	.L242
.L257:
	.loc 2 1195 34 discriminator 2
	pxor	%xmm0, %xmm0
.L242:
	.loc 2 1195 27 is_stmt 1 discriminator 4
	addsd	-1040(%rbp), %xmm0
	movsd	%xmm0, -1112(%rbp)
.L221:
.LBE22:
.LBE21:
	.loc 2 1199 16
	movsd	-1112(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L258
	.loc 2 1201 21
	movq	-1112(%rbp), %rdx
	leaq	-1144(%rbp), %rax
	movq	%rdx, %xmm0
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	rpl_asprintf@PLT
	.loc 2 1201 20
	cmpl	$-1, %eax
	jne	.L245
	.loc 2 1202 24
	movq	$0, -1144(%rbp)
	jmp	.L245
.L258:
	.loc 2 1205 22
	leaq	.LC72(%rip), %rdi
	call	strdup@PLT
	.loc 2 1205 20
	movq	%rax, -1144(%rbp)
.L245:
	.loc 2 1207 17
	movq	-1144(%rbp), %rax
	.loc 2 1207 16
	testq	%rax, %rax
	jne	.L265
	.loc 2 1208 15
	call	xalloc_die@PLT
.L211:
.LBE19:
	.loc 2 1214 18
	movq	-1176(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 2 1214 16
	movq	%rax, -1144(%rbp)
	.loc 2 1215 11
	jmp	.L220
.L213:
	.loc 2 1227 18
	movq	-1168(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 2 1227 16
	movq	%rax, -1144(%rbp)
	.loc 2 1228 11
	jmp	.L220
.L251:
	.loc 2 1231 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.8042(%rip), %rcx
	movl	$1231, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC82(%rip), %rdi
	call	__assert_fail@PLT
.L265:
.LBB23:
	.loc 2 1210 13
	nop
.L220:
.LBE23:
	.loc 2 1234 11
	movq	-1144(%rbp), %rax
	.loc 2 1234 10
	testq	%rax, %rax
	jne	.L247
	.loc 2 1235 9 discriminator 1
	leaq	__PRETTY_FUNCTION__.8042(%rip), %rcx
	movl	$1235, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC83(%rip), %rdi
	call	__assert_fail@PLT
.L247:
	.loc 2 1237 7 discriminator 2
	movq	-1144(%rbp), %rax
	movq	%rax, %rdi
	call	replace_problematic_chars
	.loc 2 1238 27 discriminator 2
	movq	-1144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	.loc 2 1238 14 discriminator 2
	cltq
	movq	%rax, -1032(%rbp)
	.loc 2 1239 29 discriminator 2
	movq	columns(%rip), %rax
	movq	-1128(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	.loc 2 1239 14 discriminator 2
	movq	columns(%rip), %rdx
	movq	-1128(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	.loc 2 1239 29 discriminator 2
	cmpq	%rax, -1032(%rbp)
	cmovnb	-1032(%rbp), %rax
	.loc 2 1239 27 discriminator 2
	movq	%rax, 32(%rdx)
	.loc 2 1240 12 discriminator 2
	movq	table(%rip), %rax
	movq	nrows(%rip), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1240 23 discriminator 2
	movq	-1128(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	.loc 2 1240 29 discriminator 2
	movq	-1144(%rbp), %rax
	movq	%rax, (%rdx)
.LBE18:
	.loc 2 1110 36 discriminator 2
	addq	$1, -1128(%rbp)
.L204:
	.loc 2 1110 21 discriminator 1
	movq	ncolumns(%rip), %rax
	.loc 2 1110 3 discriminator 1
	cmpq	%rax, -1128(%rbp)
	jb	.L248
	.loc 2 1242 3
	movq	-1136(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L179
.L259:
	.loc 2 1001 5
	nop
	jmp	.L179
.L260:
	.loc 2 1004 5
	nop
	jmp	.L179
.L261:
	.loc 2 1007 5
	nop
	jmp	.L179
.L262:
	.loc 2 1012 5
	nop
	jmp	.L179
.L263:
	.loc 2 1032 13
	nop
	jmp	.L179
.L264:
	.loc 2 1068 5
	nop
.L179:
	.loc 2 1243 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L250
	call	__stack_chk_fail@PLT
.L250:
	addq	$1208, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	get_dev, .-get_dev
	.type	last_device_for_mount, @function
last_device_for_mount:
.LFB85:
	.loc 2 1249 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 1251 29
	movq	$0, -24(%rbp)
	.loc 2 1253 11
	movq	mount_list(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1253 3
	jmp	.L267
.L269:
	.loc 2 1255 11
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1255 10
	testl	%eax, %eax
	jne	.L268
	.loc 2 1256 12
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.L268:
	.loc 2 1253 32 discriminator 2
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
.L267:
	.loc 2 1253 3 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L269
	.loc 2 1259 6
	cmpq	$0, -24(%rbp)
	je	.L270
.LBB24:
	.loc 2 1261 13
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1262 25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	canonicalize_file_name@PLT
	movq	%rax, -8(%rbp)
	.loc 2 1263 10
	cmpq	$0, -8(%rbp)
	je	.L271
	.loc 2 1263 24 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1263 21 discriminator 1
	cmpb	$47, %al
	jne	.L271
	.loc 2 1264 16
	movq	-8(%rbp), %rax
	jmp	.L272
.L271:
	.loc 2 1265 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1266 25
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1266 14
	movq	%rax, %rdi
	call	xstrdup@PLT
	jmp	.L272
.L270:
.LBE24:
	.loc 2 1269 12
	movl	$0, %eax
.L272:
	.loc 2 1270 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	last_device_for_mount, .-last_device_for_mount
	.section	.rodata
	.align 8
.LC84:
	.string	"cannot access %s: over-mounted by another device"
	.text
	.type	get_disk, @function
get_disk:
.LFB86:
	.loc 2 1276 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -264(%rbp)
	.loc 2 1276 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1278 29
	movq	$0, -240(%rbp)
	.loc 2 1279 8
	movb	$0, -251(%rbp)
	.loc 2 1280 8
	movb	$0, -250(%rbp)
	.loc 2 1281 15
	movq	-264(%rbp), %rax
	movq	%rax, -216(%rbp)
	.loc 2 1283 20
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	canonicalize_file_name@PLT
	movq	%rax, -208(%rbp)
	.loc 2 1284 6
	cmpq	$0, -208(%rbp)
	je	.L274
	.loc 2 1284 19 discriminator 1
	movq	-208(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1284 16 discriminator 1
	cmpb	$47, %al
	jne	.L274
	.loc 2 1285 10
	movq	-208(%rbp), %rax
	movq	%rax, -264(%rbp)
.L274:
	.loc 2 1287 10
	movq	$-1, -232(%rbp)
	.loc 2 1288 11
	movq	mount_list(%rip), %rax
	movq	%rax, -248(%rbp)
	.loc 2 1288 3
	jmp	.L275
.L287:
.LBB25:
	.loc 2 1291 13
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	.loc 2 1292 51
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1292 25
	movq	%rax, %rdi
	call	canonicalize_file_name@PLT
	movq	%rax, -200(%rbp)
	.loc 2 1293 10
	cmpq	$0, -200(%rbp)
	je	.L276
	.loc 2 1293 24 discriminator 1
	movq	-200(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1293 21 discriminator 1
	cmpb	$47, %al
	jne	.L276
	.loc 2 1294 17
	movq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
.L276:
	.loc 2 1296 11
	movq	-224(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1296 10
	testl	%eax, %eax
	jne	.L277
.LBB26:
	.loc 2 1298 56
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1298 31
	movq	%rax, %rdi
	call	last_device_for_mount
	movq	%rax, -192(%rbp)
	.loc 2 1299 41
	cmpq	$0, -192(%rbp)
	je	.L278
	.loc 2 1299 46 discriminator 1
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1299 41 discriminator 1
	testl	%eax, %eax
	je	.L278
	.loc 2 1299 41 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L279
.L278:
	.loc 2 1299 41 discriminator 4
	movl	$0, %eax
.L279:
	.loc 2 1299 27 is_stmt 1 discriminator 6
	movb	%al, -250(%rbp)
	andb	$1, -250(%rbp)
	.loc 2 1300 34 discriminator 6
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1300 24 discriminator 6
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -184(%rbp)
	.loc 2 1302 15 discriminator 6
	movzbl	-250(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1302 14 discriminator 6
	testb	%al, %al
	je	.L280
	.loc 2 1303 19
	movzbl	-251(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1303 15
	testb	%al, %al
	jne	.L281
	.loc 2 1303 43 discriminator 1
	movq	-184(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jnb	.L280
.L281:
.LBB27:
	.loc 2 1306 20
	movb	$0, -249(%rbp)
	.loc 2 1308 27
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1308 19
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 1308 18
	testl	%eax, %eax
	jne	.L282
	.loc 2 1309 63
	movb	$1, -249(%rbp)
	.loc 2 1309 39
	movzbl	-249(%rbp), %eax
	movb	%al, -251(%rbp)
.L282:
	.loc 2 1311 18
	cmpb	$0, -249(%rbp)
	jne	.L283
	.loc 2 1312 23
	movzbl	-251(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1312 19
	testb	%al, %al
	je	.L280
	.loc 2 1312 47 discriminator 1
	movq	-184(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jnb	.L280
.L283:
	.loc 2 1314 30
	movq	-248(%rbp), %rax
	movq	%rax, -240(%rbp)
	.loc 2 1315 22
	cmpq	$1, -184(%rbp)
	jne	.L285
	.loc 2 1317 23
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1318 23
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L286
.L285:
	.loc 2 1322 36
	movq	-184(%rbp), %rax
	movq	%rax, -232(%rbp)
.L280:
.LBE27:
	.loc 2 1326 11
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L277:
.LBE26:
	.loc 2 1329 7 discriminator 2
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE25:
	.loc 2 1288 32 discriminator 2
	movq	-248(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -248(%rbp)
.L275:
	.loc 2 1288 3 discriminator 1
	cmpq	$0, -248(%rbp)
	jne	.L287
.L286:
	.loc 2 1332 3
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1334 6
	cmpq	$0, -240(%rbp)
	je	.L288
	.loc 2 1338 26
	movq	-240(%rbp), %rax
	movzbl	40(%rax), %eax
	.loc 2 1336 7
	andl	$2, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %ecx
	.loc 2 1337 47
	movq	-240(%rbp), %rax
	movzbl	40(%rax), %eax
	.loc 2 1336 7
	andl	$1, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %r8d
	.loc 2 1337 26
	movq	-240(%rbp), %rax
	movq	24(%rax), %rdi
	.loc 2 1336 50
	movq	-240(%rbp), %rax
	movq	8(%rax), %rsi
	.loc 2 1336 26
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1336 7
	movq	-216(%rbp), %rdx
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	get_dev
	addq	$32, %rsp
	.loc 2 1339 14
	movl	$1, %eax
	jmp	.L289
.L288:
	.loc 2 1341 11
	cmpb	$0, -250(%rbp)
	je	.L290
	.loc 2 1343 7
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 1343 20
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	.loc 2 1343 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1345 19
	movl	$1, exit_status(%rip)
	.loc 2 1346 14
	movl	$1, %eax
	jmp	.L289
.L290:
	.loc 2 1349 10
	movl	$0, %eax
.L289:
	.loc 2 1350 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L291
	call	__stack_chk_fail@PLT
.L291:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	get_disk, .-get_disk
	.section	.rodata
.LC85:
	.string	"lofs"
	.text
	.type	get_point, @function
get_point:
.LFB87:
	.loc 2 1357 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	.loc 2 1357 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1360 29
	movq	$0, -224(%rbp)
	.loc 2 1365 20
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	canonicalize_file_name@PLT
	movq	%rax, -208(%rbp)
	.loc 2 1366 6
	cmpq	$0, -208(%rbp)
	je	.L293
	.loc 2 1366 27 discriminator 1
	movq	-208(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1366 16 discriminator 1
	cmpb	$47, %al
	jne	.L293
.LBB28:
	.loc 2 1368 29
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -200(%rbp)
	.loc 2 1369 14
	movq	$0, -216(%rbp)
	.loc 2 1371 15
	movq	mount_list(%rip), %rax
	movq	%rax, -232(%rbp)
	.loc 2 1371 7
	jmp	.L294
.L299:
	.loc 2 1373 16
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC85(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1373 14
	testl	%eax, %eax
	je	.L295
	.loc 2 1374 15
	cmpq	$0, -224(%rbp)
	je	.L296
	.loc 2 1374 31 discriminator 1
	movq	-224(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L296
	.loc 2 1374 58 discriminator 2
	movq	-232(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	.loc 2 1374 55 discriminator 2
	testb	%al, %al
	jne	.L295
.L296:
.LBB29:
	.loc 2 1376 38
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1376 28
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -192(%rbp)
	.loc 2 1377 18
	movq	-216(%rbp), %rax
	cmpq	-192(%rbp), %rax
	ja	.L295
	.loc 2 1377 41 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-200(%rbp), %rax
	ja	.L295
	.loc 2 1378 19
	cmpq	$1, -192(%rbp)
	je	.L297
	.loc 2 1379 23
	movq	-192(%rbp), %rax
	cmpq	-200(%rbp), %rax
	je	.L298
	.loc 2 1379 59 discriminator 1
	movq	-208(%rbp), %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1379 48 discriminator 1
	cmpb	$47, %al
	jne	.L295
.L298:
	.loc 2 1380 30
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	-192(%rbp), %rdx
	movq	-208(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 2 1380 27
	testl	%eax, %eax
	jne	.L295
.L297:
	.loc 2 1382 30
	movq	-232(%rbp), %rax
	movq	%rax, -224(%rbp)
	.loc 2 1383 34
	movq	-192(%rbp), %rax
	movq	%rax, -216(%rbp)
.L295:
.LBE29:
	.loc 2 1371 36 discriminator 2
	movq	-232(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -232(%rbp)
.L294:
	.loc 2 1371 7 discriminator 1
	cmpq	$0, -232(%rbp)
	jne	.L299
.L293:
.LBE28:
	.loc 2 1388 3
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1389 6
	cmpq	$0, -224(%rbp)
	je	.L300
	.loc 2 1390 27
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1390 11
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 1390 7
	testl	%eax, %eax
	jne	.L301
	.loc 2 1391 24
	movq	-176(%rbp), %rdx
	.loc 2 1391 40
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1391 11
	cmpq	%rax, %rdx
	je	.L300
.L301:
	.loc 2 1392 16
	movq	$0, -224(%rbp)
.L300:
	.loc 2 1394 6
	cmpq	$0, -224(%rbp)
	jne	.L302
	.loc 2 1395 13
	movq	mount_list(%rip), %rax
	movq	%rax, -232(%rbp)
	.loc 2 1395 5
	jmp	.L303
.L311:
	.loc 2 1397 15
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1397 12
	cmpq	$-1, %rax
	jne	.L304
	.loc 2 1399 25
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1399 17
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 1399 16
	testl	%eax, %eax
	jne	.L305
	.loc 2 1400 38
	movq	-176(%rbp), %rdx
	.loc 2 1400 26
	movq	-232(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L304
.L305:
	.loc 2 1406 21
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1406 20
	cmpl	$5, %eax
	jne	.L306
	.loc 2 1408 44
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1408 21
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 1408 31
	call	__errno_location@PLT
	.loc 2 1408 21
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC74(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1409 33
	movl	$1, exit_status(%rip)
.L306:
	.loc 2 1413 28
	movq	-232(%rbp), %rax
	movq	$-2, 32(%rax)
.L304:
	.loc 2 1417 18
	movq	-256(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 1417 32
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1417 12
	cmpq	%rax, %rdx
	jne	.L307
	.loc 2 1418 17
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC85(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1418 13
	testl	%eax, %eax
	je	.L307
	.loc 2 1419 13
	cmpq	$0, -224(%rbp)
	je	.L308
	.loc 2 1419 29 discriminator 1
	movq	-224(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L308
	.loc 2 1419 56 discriminator 2
	movq	-232(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	.loc 2 1419 53 discriminator 2
	testb	%al, %al
	jne	.L307
.L308:
	.loc 2 1422 25
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 1422 17
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 1422 16
	testl	%eax, %eax
	jne	.L309
	.loc 2 1423 30
	movq	-176(%rbp), %rdx
	.loc 2 1423 43
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1423 17
	cmpq	%rax, %rdx
	je	.L310
.L309:
	.loc 2 1424 26
	movq	-232(%rbp), %rax
	movq	$-2, 32(%rax)
	jmp	.L307
.L310:
	.loc 2 1426 26
	movq	-232(%rbp), %rax
	movq	%rax, -224(%rbp)
.L307:
	.loc 2 1395 34 discriminator 2
	movq	-232(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -232(%rbp)
.L303:
	.loc 2 1395 5 discriminator 1
	cmpq	$0, -232(%rbp)
	jne	.L311
.L302:
	.loc 2 1430 6
	cmpq	$0, -224(%rbp)
	je	.L312
	.loc 2 1432 67
	movq	-224(%rbp), %rax
	movzbl	40(%rax), %eax
	.loc 2 1431 5
	andl	$2, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %edi
	.loc 2 1432 45
	movq	-224(%rbp), %rax
	movzbl	40(%rax), %eax
	.loc 2 1431 5
	andl	$1, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %r9d
	.loc 2 1432 24
	movq	-224(%rbp), %rax
	movq	24(%rax), %r8
	.loc 2 1431 48
	movq	-224(%rbp), %rax
	movq	8(%rax), %rsi
	.loc 2 1431 24
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1431 5
	movq	-248(%rbp), %rcx
	movq	-248(%rbp), %rdx
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	%rdi
	movq	%rax, %rdi
	call	get_dev
	addq	$32, %rsp
	.loc 2 1448 1
	jmp	.L315
.L312:
.LBB30:
	.loc 2 1441 18
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_mount_point@PLT
	movq	%rax, -184(%rbp)
	.loc 2 1442 10
	cmpq	$0, -184(%rbp)
	je	.L315
	.loc 2 1444 11
	movq	-248(%rbp), %rdx
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	get_dev
	addq	$32, %rsp
	.loc 2 1445 11
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L315:
.LBE30:
	.loc 2 1448 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L314
	call	__stack_chk_fail@PLT
.L314:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	get_point, .-get_point
	.type	get_entry, @function
get_entry:
.LFB88:
	.loc 2 1455 1
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
	.loc 2 1456 8
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 2 1456 6
	cmpl	$24576, %eax
	je	.L317
	.loc 2 1456 36 discriminator 1
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 2 1456 33 discriminator 1
	cmpl	$8192, %eax
	jne	.L318
.L317:
	.loc 2 1457 10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_disk
	.loc 2 1457 7
	testb	%al, %al
	jne	.L320
.L318:
	.loc 2 1460 3
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_point
	jmp	.L316
.L320:
	.loc 2 1458 5
	nop
.L316:
	.loc 2 1461 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	get_entry, .-get_entry
	.type	get_all_entries, @function
get_all_entries:
.LFB89:
	.loc 2 1468 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 1471 3
	movzbl	show_all_fs(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	filter_mount_list
	.loc 2 1473 11
	movq	mount_list(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1473 3
	jmp	.L322
.L323:
	.loc 2 1475 30 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	40(%rax), %eax
	.loc 2 1474 5 discriminator 3
	andl	$2, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %edx
	.loc 2 1475 16 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	40(%rax), %eax
	.loc 2 1474 5 discriminator 3
	andl	$1, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %edi
	.loc 2 1474 61 discriminator 3
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	.loc 2 1474 32 discriminator 3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	.loc 2 1474 16 discriminator 3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1474 5 discriminator 3
	subq	$8, %rsp
	pushq	$1
	pushq	$0
	pushq	%rdx
	movl	%edi, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	get_dev
	addq	$32, %rsp
	.loc 2 1473 32 discriminator 3
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.L322:
	.loc 2 1473 3 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L323
	.loc 2 1476 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	get_all_entries, .-get_all_entries
	.type	add_fs_type, @function
add_fs_type:
.LFB90:
	.loc 2 1482 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 1485 9
	movl	$16, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 1486 16
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 1487 16
	movq	fs_select_list(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1488 18
	movq	-8(%rbp), %rax
	movq	%rax, fs_select_list(%rip)
	.loc 2 1489 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	add_fs_type, .-add_fs_type
	.type	add_excluded_fs_type, @function
add_excluded_fs_type:
.LFB91:
	.loc 2 1495 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 1498 9
	movl	$16, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 1499 16
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 1500 16
	movq	fs_exclude_list(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1501 19
	movq	-8(%rbp), %rax
	movq	%rax, fs_exclude_list(%rip)
	.loc 2 1502 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	add_excluded_fs_type, .-add_excluded_fs_type
	.section	.rodata
	.align 8
.LC86:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC87:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC88:
	.string	"Show information about the file system on which each FILE resides,\nor all file systems by default.\n"
	.align 8
.LC89:
	.ascii	"  -a, --all             include pseudo, duplicate, inaccessi"
	.ascii	"ble file systems\n  -B, --block-size=SIZE  scale sizes by SI"
	.ascii	"ZE before printing them; e.g.,\n   "
	.string	"                        '-BM' prints sizes in units of 1,048,576 bytes;\n                           see SIZE format below\n  -h, --human-readable  print sizes in powers of 1024 (e.g., 1023M)\n  -H, --si              print sizes in powers of 1000 (e.g., 1.1G)\n"
	.align 8
.LC90:
	.string	"  -i, --inodes          list inode information instead of block usage\n  -k                    like --block-size=1K\n  -l, --local           limit listing to local file systems\n      --no-sync         do not invoke sync before getting usage info (default)\n"
	.align 8
.LC91:
	.ascii	"      --o"
	.string	"utput[=FIELD_LIST]  use the output format defined by FIELD_LIST,\n                               or print all fields if FIELD_LIST is omitted.\n  -P, --portability     use the POSIX output format\n      --sync            invoke sync before getting usage info\n"
	.align 8
.LC92:
	.string	"      --total           elide all entries insignificant to available space,\n                          and produce a grand total\n"
	.align 8
.LC93:
	.string	"  -t, --type=TYPE       limit listing to file systems of type TYPE\n  -T, --print-type      print file system type\n  -x, --exclude-type=TYPE   limit listing to file systems not of type TYPE\n  -v                    (ignored)\n"
	.align 8
.LC94:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC95:
	.string	"      --version  output version information and exit\n"
.LC96:
	.string	"DF"
	.align 8
.LC97:
	.string	"\nFIELD_LIST is a comma-separated list of columns to be included.  Valid\nfield names are: 'source', 'fstype', 'itotal', 'iused', 'iavail', 'ipcent',\n'size', 'used', 'avail', 'pcent', 'file' and 'target' (see info page).\n"
.LC98:
	.string	"df"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB92:
	.loc 2 1506 1
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
	.loc 2 1507 6
	cmpl	$0, -20(%rbp)
	je	.L327
	.loc 2 1508 5
	movq	program_name(%rip), %rbx
	leaq	.LC86(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L328
.L327:
	.loc 2 1511 7
	movq	program_name(%rip), %rbx
	.loc 2 1511 15
	leaq	.LC87(%rip), %rdi
	call	gettext@PLT
	.loc 2 1511 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1512 7
	movq	stdout(%rip), %rbx
	leaq	.LC88(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1517 7
	call	emit_mandatory_arg_note
	.loc 2 1521 7
	movq	stdout(%rip), %rbx
	leaq	.LC89(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1529 7
	movq	stdout(%rip), %rbx
	leaq	.LC90(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1536 7
	movq	stdout(%rip), %rbx
	leaq	.LC91(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1542 7
	movq	stdout(%rip), %rbx
	leaq	.LC92(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1546 7
	movq	stdout(%rip), %rbx
	leaq	.LC93(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1552 7
	movq	stdout(%rip), %rbx
	leaq	.LC94(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1553 7
	movq	stdout(%rip), %rbx
	leaq	.LC95(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1554 7
	leaq	.LC96(%rip), %rdi
	call	emit_blocksize_note
	.loc 2 1555 7
	call	emit_size_note
	.loc 2 1556 7
	movq	stdout(%rip), %rbx
	leaq	.LC97(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1561 7
	leaq	.LC98(%rip), %rdi
	call	emit_ancillary_info
.L328:
	.loc 2 1563 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE92:
	.size	usage, .-usage
	.section	.rodata
.LC99:
	.string	"/usr/local/share/locale"
	.align 8
.LC100:
	.string	"options %s and %s are mutually exclusive"
.LC101:
	.string	"aB:iF:hHklmPTt:vx:"
.LC102:
	.string	"--output"
.LC103:
	.string	"-i"
.LC104:
	.string	"-T"
.LC105:
	.string	"-P"
.LC106:
	.string	"David MacKenzie"
.LC107:
	.string	"Torbjorn Granlund"
.LC108:
	.string	"Paul Eggert"
.LC109:
	.string	"POSIXLY_CORRECT"
.LC110:
	.string	"DF_BLOCK_SIZE"
	.align 8
.LC111:
	.string	"file system type %s both selected and excluded"
.LC112:
	.string	"Warning: "
	.align 8
.LC113:
	.string	"cannot read table of mounted file systems"
.LC114:
	.string	"%s%s"
.LC115:
	.string	"no file systems processed"
	.text
	.globl	main
	.type	main, @function
main:
.LFB93:
	.loc 2 1568 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 2 1568 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1569 16
	movq	$0, -64(%rbp)
	.loc 2 1572 3
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 1573 3
	leaq	.LC19(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 1574 3
	leaq	.LC99(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 1575 3
	leaq	.LC5(%rip), %rdi
	call	textdomain@PLT
	.loc 2 1577 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 1579 18
	movq	$0, fs_select_list(%rip)
	.loc 2 1580 19
	movq	$0, fs_exclude_list(%rip)
	.loc 2 1581 15
	movb	$0, show_all_fs(%rip)
	.loc 2 1582 18
	movb	$0, show_listed_fs(%rip)
	.loc 2 1583 21
	movl	$-1, human_output_opts(%rip)
	.loc 2 1584 14
	movb	$0, print_type(%rip)
	.loc 2 1585 26
	movb	$0, file_systems_processed(%rip)
	.loc 2 1586 15
	movl	$0, exit_status(%rip)
	.loc 2 1587 21
	movb	$0, print_grand_total(%rip)
	.loc 2 1588 27
	movq	$1, grand_fsu(%rip)
	.loc 2 1591 8
	movb	$0, -94(%rbp)
	.loc 2 1593 30
	leaq	.LC100(%rip), %rdi
	call	gettext@PLT
	movq	%rax, -40(%rbp)
.L364:
.LBB31:
	.loc 2 1597 11
	movl	$-1, -92(%rbp)
	.loc 2 1598 15
	leaq	-92(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movl	-100(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -76(%rbp)
	.loc 2 1600 10
	cmpl	$-1, -76(%rbp)
	jne	.L330
.LBE31:
	.loc 2 1712 25
	movl	human_output_opts(%rip), %eax
	.loc 2 1712 6
	cmpl	$-1, %eax
	je	.L331
	jmp	.L332
.L330:
.LBB33:
	.loc 2 1603 7
	cmpl	$131, -76(%rbp)
	jg	.L333
	cmpl	$66, -76(%rbp)
	jge	.L334
	cmpl	$-131, -76(%rbp)
	je	.L335
	cmpl	$-130, -76(%rbp)
	je	.L336
	jmp	.L333
.L334:
	movl	-76(%rbp), %eax
	subl	$66, %eax
	cmpl	$65, %eax
	ja	.L333
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L338(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L338(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L338:
	.long	.L354-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L344-.L338
	.long	.L333-.L338
	.long	.L353-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L352-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L351-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L350-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L349-.L338
	.long	.L348-.L338
	.long	.L333-.L338
	.long	.L347-.L338
	.long	.L346-.L338
	.long	.L345-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L344-.L338
	.long	.L333-.L338
	.long	.L404-.L338
	.long	.L333-.L338
	.long	.L342-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L333-.L338
	.long	.L341-.L338
	.long	.L340-.L338
	.long	.L339-.L338
	.long	.L337-.L338
	.text
.L350:
	.loc 2 1606 23
	movb	$1, show_all_fs(%rip)
	.loc 2 1607 11
	jmp	.L355
.L354:
.LBB32:
	.loc 2 1610 35
	movq	optarg(%rip), %rax
	leaq	output_block_size(%rip), %rdx
	leaq	human_output_opts(%rip), %rsi
	movq	%rax, %rdi
	call	human_options@PLT
	movl	%eax, -72(%rbp)
	.loc 2 1612 16
	cmpl	$0, -72(%rbp)
	je	.L405
	.loc 2 1613 15
	movq	optarg(%rip), %rcx
	movl	-76(%rbp), %eax
	movsbl	%al, %edx
	movl	-92(%rbp), %esi
	movl	-72(%rbp), %eax
	movq	%rcx, %r8
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L348:
.LBE32:
	.loc 2 1617 27
	movl	header_mode(%rip), %eax
	.loc 2 1617 14
	cmpl	$4, %eax
	jne	.L357
	.loc 2 1619 15
	movq	-40(%rbp), %rax
	leaq	.LC102(%rip), %r8
	leaq	.LC103(%rip), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1620 15
	movl	$1, %edi
	call	usage
.L357:
	.loc 2 1622 23
	movl	$1, header_mode(%rip)
	.loc 2 1623 11
	jmp	.L355
.L349:
	.loc 2 1625 29
	movl	$176, human_output_opts(%rip)
	.loc 2 1626 29
	movq	$1, output_block_size(%rip)
	.loc 2 1627 11
	jmp	.L355
.L353:
	.loc 2 1629 29
	movl	$144, human_output_opts(%rip)
	.loc 2 1630 29
	movq	$1, output_block_size(%rip)
	.loc 2 1631 11
	jmp	.L355
.L347:
	.loc 2 1633 29
	movl	$0, human_output_opts(%rip)
	.loc 2 1634 29
	movq	$1024, output_block_size(%rip)
	.loc 2 1635 11
	jmp	.L355
.L346:
	.loc 2 1637 25
	movb	$1, show_local_fs(%rip)
	.loc 2 1638 11
	jmp	.L355
.L345:
	.loc 2 1640 29
	movl	$0, human_output_opts(%rip)
	.loc 2 1641 29
	movq	$1048576, output_block_size(%rip)
	.loc 2 1642 11
	jmp	.L355
.L351:
	.loc 2 1644 27
	movl	header_mode(%rip), %eax
	.loc 2 1644 14
	cmpl	$4, %eax
	jne	.L358
	.loc 2 1646 15
	movq	-40(%rbp), %rax
	leaq	.LC102(%rip), %r8
	leaq	.LC104(%rip), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1647 15
	movl	$1, %edi
	call	usage
.L358:
	.loc 2 1649 22
	movb	$1, print_type(%rip)
	.loc 2 1650 11
	jmp	.L355
.L352:
	.loc 2 1652 27
	movl	header_mode(%rip), %eax
	.loc 2 1652 14
	cmpl	$4, %eax
	jne	.L359
	.loc 2 1654 15
	movq	-40(%rbp), %rax
	leaq	.LC102(%rip), %r8
	leaq	.LC105(%rip), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1655 15
	movl	$1, %edi
	call	usage
.L359:
	.loc 2 1657 24
	movb	$1, -94(%rbp)
	.loc 2 1658 11
	jmp	.L355
.L340:
	.loc 2 1660 24
	movb	$1, require_sync(%rip)
	.loc 2 1661 11
	jmp	.L355
.L341:
	.loc 2 1663 24
	movb	$0, require_sync(%rip)
	.loc 2 1664 11
	jmp	.L355
.L344:
	.loc 2 1669 11
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	add_fs_type
	.loc 2 1670 11
	jmp	.L355
.L342:
	.loc 2 1676 11
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	add_excluded_fs_type
	.loc 2 1677 11
	jmp	.L355
.L337:
	.loc 2 1680 27
	movl	header_mode(%rip), %eax
	.loc 2 1680 14
	cmpl	$1, %eax
	jne	.L360
	.loc 2 1682 15
	movq	-40(%rbp), %rax
	leaq	.LC102(%rip), %r8
	leaq	.LC103(%rip), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1683 15
	movl	$1, %edi
	call	usage
.L360:
	.loc 2 1685 14
	cmpb	$0, -94(%rbp)
	je	.L361
	.loc 2 1685 43 discriminator 1
	movl	header_mode(%rip), %eax
	.loc 2 1685 28 discriminator 1
	testl	%eax, %eax
	jne	.L361
	.loc 2 1687 15
	movq	-40(%rbp), %rax
	leaq	.LC102(%rip), %r8
	leaq	.LC105(%rip), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1688 15
	movl	$1, %edi
	call	usage
.L361:
	.loc 2 1690 15
	movzbl	print_type(%rip), %eax
	.loc 2 1690 14
	testb	%al, %al
	je	.L362
	.loc 2 1692 15
	movq	-40(%rbp), %rax
	leaq	.LC102(%rip), %r8
	leaq	.LC104(%rip), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1693 15
	movl	$1, %edi
	call	usage
.L362:
	.loc 2 1695 23
	movl	$4, header_mode(%rip)
	.loc 2 1696 15
	movq	optarg(%rip), %rax
	.loc 2 1696 14
	testq	%rax, %rax
	je	.L406
	.loc 2 1697 13
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	decode_output_arg
	.loc 2 1698 11
	jmp	.L406
.L339:
	.loc 2 1701 29
	movb	$1, print_grand_total(%rip)
	.loc 2 1702 11
	jmp	.L355
.L336:
	.loc 2 1704 9
	movl	$0, %edi
	call	usage
.L335:
	.loc 2 1705 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	leaq	.LC108(%rip), %rcx
	pushq	%rcx
	leaq	.LC106(%rip), %r9
	leaq	.LC107(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC98(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L333:
	.loc 2 1708 11
	movl	$1, %edi
	call	usage
.L404:
	.loc 2 1674 11
	nop
	jmp	.L364
.L405:
	.loc 2 1615 11
	nop
	jmp	.L364
.L406:
	.loc 2 1698 11
	nop
.L355:
.LBE33:
	.loc 2 1596 5 discriminator 1
	jmp	.L364
.L331:
	.loc 2 1714 10
	cmpb	$0, -94(%rbp)
	je	.L365
	.loc 2 1716 29
	movl	$0, human_output_opts(%rip)
	.loc 2 1717 32
	leaq	.LC109(%rip), %rdi
	call	getenv@PLT
	.loc 2 1717 65
	testq	%rax, %rax
	je	.L366
	.loc 2 1717 65 is_stmt 0 discriminator 1
	movl	$512, %eax
	jmp	.L367
.L366:
	.loc 2 1717 65 discriminator 2
	movl	$1024, %eax
.L367:
	.loc 2 1717 29 is_stmt 1 discriminator 4
	movq	%rax, output_block_size(%rip)
	jmp	.L332
.L365:
	.loc 2 1720 24
	leaq	.LC110(%rip), %rdi
	call	getenv@PLT
	.loc 2 1720 9
	leaq	output_block_size(%rip), %rdx
	leaq	human_output_opts(%rip), %rsi
	movq	%rax, %rdi
	call	human_options@PLT
.L332:
	.loc 2 1724 19
	movl	header_mode(%rip), %eax
	.loc 2 1724 6
	cmpl	$1, %eax
	je	.L368
	.loc 2 1724 49 discriminator 1
	movl	header_mode(%rip), %eax
	.loc 2 1724 34 discriminator 1
	cmpl	$4, %eax
	je	.L368
	.loc 2 1726 30
	movl	human_output_opts(%rip), %eax
	andl	$16, %eax
	.loc 2 1726 11
	testl	%eax, %eax
	je	.L369
	.loc 2 1727 17
	movl	$2, header_mode(%rip)
	jmp	.L368
.L369:
	.loc 2 1728 11
	cmpb	$0, -94(%rbp)
	je	.L368
	.loc 2 1729 17
	movl	$3, header_mode(%rip)
.L368:
.LBB34:
	.loc 2 1733 10
	movb	$0, -93(%rbp)
	.loc 2 1735 18
	movq	fs_select_list(%rip), %rax
	movq	%rax, -56(%rbp)
	.loc 2 1735 5
	jmp	.L370
.L375:
.LBB35:
	.loc 2 1738 22
	movq	fs_exclude_list(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 2 1738 9
	jmp	.L371
.L374:
	.loc 2 1740 17
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1740 16
	testl	%eax, %eax
	jne	.L372
	.loc 2 1744 38
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1742 17
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1743 24
	leaq	.LC111(%rip), %rdi
	call	gettext@PLT
	.loc 2 1742 17
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1745 23
	movb	$1, -93(%rbp)
	.loc 2 1746 17
	jmp	.L373
.L372:
	.loc 2 1738 58 discriminator 2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.L371:
	.loc 2 1738 9 discriminator 1
	cmpq	$0, -48(%rbp)
	jne	.L374
.L373:
.LBE35:
	.loc 2 1735 53 discriminator 2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.L370:
	.loc 2 1735 5 discriminator 1
	cmpq	$0, -56(%rbp)
	jne	.L375
	.loc 2 1750 8
	cmpb	$0, -93(%rbp)
	je	.L376
	.loc 2 1751 14
	movl	$1, %eax
	jmp	.L377
.L376:
.LBE34:
	.loc 2 1754 3
	movl	optind(%rip), %eax
	testl	%eax, %eax
	.loc 2 1756 14
	movl	optind(%rip), %eax
	.loc 2 1756 6
	cmpl	%eax, -100(%rbp)
	jle	.L379
	.loc 2 1761 30
	movl	optind(%rip), %eax
	movl	-100(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 1761 15
	cltq
	movl	$144, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -64(%rbp)
.LBB36:
	.loc 2 1762 16
	movl	optind(%rip), %eax
	movl	%eax, -88(%rbp)
	.loc 2 1762 7
	jmp	.L380
.L383:
	.loc 2 1764 39
	movl	optind(%rip), %eax
	movl	-88(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movslq	%eax, %rdx
	.loc 2 1764 36
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	.loc 2 1764 15
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 1764 25
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 1764 15
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 1764 14
	testl	%eax, %eax
	je	.L381
	.loc 2 1766 38
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1766 15
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 1766 25
	call	__errno_location@PLT
	.loc 2 1766 15
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC74(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1767 27
	movl	$1, exit_status(%rip)
	.loc 2 1768 19
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1768 23
	movq	$0, (%rax)
	jmp	.L382
.L381:
	.loc 2 1770 22
	movl	optind(%rip), %eax
	movl	-88(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 2 1770 19
	cmpl	$4096, %eax
	je	.L382
.LBB37:
	.loc 2 1773 34
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1773 24
	movq	(%rax), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -68(%rbp)
	.loc 2 1774 18
	cmpl	$0, -68(%rbp)
	js	.L382
	.loc 2 1775 17
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L382:
.LBE37:
	.loc 2 1762 38 discriminator 2
	addl	$1, -88(%rbp)
.L380:
	.loc 2 1762 7 discriminator 1
	movl	-88(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L383
.L379:
.LBE36:
	.loc 2 1781 44
	movq	fs_select_list(%rip), %rax
	.loc 2 1785 29
	testq	%rax, %rax
	jne	.L384
	.loc 2 1782 48
	movq	fs_exclude_list(%rip), %rax
	.loc 2 1782 29
	testq	%rax, %rax
	jne	.L384
	.loc 2 1783 29
	movzbl	print_type(%rip), %eax
	testb	%al, %al
	jne	.L384
	.loc 2 1784 56
	movzbl	92+field_data(%rip), %eax
	.loc 2 1784 29
	testb	%al, %al
	jne	.L384
	.loc 2 1785 29 discriminator 2
	movzbl	show_local_fs(%rip), %eax
	testb	%al, %al
	je	.L385
.L384:
	.loc 2 1785 29 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L386
.L385:
	.loc 2 1785 29 discriminator 3
	movl	$0, %eax
.L386:
	.loc 2 1785 29 discriminator 5
	andl	$1, %eax
	.loc 2 1781 5 is_stmt 1 discriminator 5
	movzbl	%al, %eax
	movl	%eax, %edi
	call	read_file_system_list@PLT
	.loc 2 1780 14 discriminator 5
	movq	%rax, mount_list(%rip)
	.loc 2 1787 18 discriminator 5
	movq	mount_list(%rip), %rax
	.loc 2 1787 6 discriminator 5
	testq	%rax, %rax
	jne	.L387
.LBB38:
	.loc 2 1793 11
	movl	$0, -84(%rbp)
	.loc 2 1794 12
	movl	optind(%rip), %eax
	.loc 2 1794 10
	cmpl	%eax, -100(%rbp)
	jle	.L388
	.loc 2 1795 16
	movzbl	show_all_fs(%rip), %eax
	.loc 2 1795 12
	testb	%al, %al
	jne	.L388
	.loc 2 1796 16
	movzbl	show_local_fs(%rip), %eax
	testb	%al, %al
	jne	.L388
	.loc 2 1797 34
	movq	fs_select_list(%rip), %rax
	.loc 2 1797 16
	testq	%rax, %rax
	jne	.L388
	.loc 2 1798 35
	movq	fs_exclude_list(%rip), %rax
	.loc 2 1798 16
	testq	%rax, %rax
	je	.L389
.L388:
	.loc 2 1800 18
	movl	$1, -84(%rbp)
.L389:
	.loc 2 1802 59
	cmpl	$0, -84(%rbp)
	jne	.L390
	.loc 2 1802 44 discriminator 1
	leaq	.LC112(%rip), %rdi
	call	gettext@PLT
	jmp	.L391
.L390:
	.loc 2 1802 59 discriminator 2
	leaq	.LC19(%rip), %rax
.L391:
	.loc 2 1802 19 discriminator 4
	movq	%rax, -32(%rbp)
	.loc 2 1803 7 discriminator 4
	leaq	.LC113(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 1803 22 discriminator 4
	call	__errno_location@PLT
	.loc 2 1803 7 discriminator 4
	movl	(%rax), %esi
	movq	-32(%rbp), %rdx
	movl	-84(%rbp), %eax
	movq	%rbx, %r8
	movq	%rdx, %rcx
	leaq	.LC114(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
.L387:
.LBE38:
	.loc 2 1807 7
	movzbl	require_sync(%rip), %eax
	.loc 2 1807 6
	testb	%al, %al
	je	.L392
	.loc 2 1808 5
	call	sync@PLT
.L392:
	.loc 2 1810 3
	call	get_field_list
	.loc 2 1811 3
	call	get_header
	.loc 2 1813 14
	movl	optind(%rip), %eax
	.loc 2 1813 6
	cmpl	%eax, -100(%rbp)
	jle	.L393
	.loc 2 1816 22
	movb	$1, show_listed_fs(%rip)
.LBB39:
	.loc 2 1818 16
	movl	optind(%rip), %eax
	movl	%eax, -80(%rbp)
	.loc 2 1818 7
	jmp	.L394
.L396:
	.loc 2 1819 17
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1819 12
	testq	%rax, %rax
	je	.L395
	.loc 2 1820 40
	movl	optind(%rip), %eax
	movl	-80(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movslq	%eax, %rdx
	.loc 2 1820 37
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	.loc 2 1820 31
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 1820 26
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 1820 11
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_entry
.L395:
	.loc 2 1818 38 discriminator 2
	addl	$1, -80(%rbp)
.L394:
	.loc 2 1818 7 discriminator 1
	movl	-80(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L396
.LBE39:
	.loc 2 1822 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L397
.L393:
	.loc 2 1825 5
	call	get_all_entries
.L397:
	.loc 2 1827 7
	movzbl	file_systems_processed(%rip), %eax
	.loc 2 1827 6
	testb	%al, %al
	je	.L398
	.loc 2 1829 11
	movzbl	print_grand_total(%rip), %eax
	.loc 2 1829 10
	testb	%al, %al
	je	.L399
	.loc 2 1831 43
	movzbl	44+field_data(%rip), %eax
	.loc 2 1830 9
	testb	%al, %al
	je	.L400
	.loc 2 1830 9 is_stmt 0 discriminator 1
	leaq	.LC72(%rip), %rax
	jmp	.L401
.L400:
	.loc 2 1830 9 discriminator 2
	leaq	.LC57(%rip), %rax
.L401:
	.loc 2 1830 9 discriminator 4
	subq	$8, %rsp
	pushq	$0
	leaq	grand_fsu(%rip), %rdx
	pushq	%rdx
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	.LC57(%rip), %rdi
	call	get_dev
	addq	$32, %rsp
.L399:
	.loc 2 1834 7 is_stmt 1
	call	print_table
	jmp	.L402
.L398:
	.loc 2 1840 23
	movl	exit_status(%rip), %eax
	.loc 2 1840 10
	testl	%eax, %eax
	jne	.L402
.LBB40:
	.loc 2 1841 9
	leaq	.LC115(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L402:
.LBE40:
	.loc 2 1844 3
	movq	columns(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 1846 10
	movl	exit_status(%rip), %eax
.L377:
	.loc 2 1847 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L403
	call	__stack_chk_fail@PLT
.L403:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	main, .-main
	.data
	.align 4
	.type	tty_out.7845, @object
	.size	tty_out.7845, 4
tty_out.7845:
	.long	-1
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.7867, @object
	.size	__PRETTY_FUNCTION__.7867, 12
__PRETTY_FUNCTION__.7867:
	.string	"alloc_field"
	.align 16
	.type	__PRETTY_FUNCTION__.7893, @object
	.size	__PRETTY_FUNCTION__.7893, 18
__PRETTY_FUNCTION__.7893:
	.string	"decode_output_arg"
	.align 8
	.type	__PRETTY_FUNCTION__.7906, @object
	.size	__PRETTY_FUNCTION__.7906, 15
__PRETTY_FUNCTION__.7906:
	.string	"get_field_list"
	.align 8
	.type	__PRETTY_FUNCTION__.8042, @object
	.size	__PRETTY_FUNCTION__.8042, 8
__PRETTY_FUNCTION__.8042:
	.string	"get_dev"
	.align 8
.LC76:
	.long	0
	.long	-1074790400
	.align 16
.LC77:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC79:
	.long	0
	.long	1079574528
	.align 8
.LC80:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
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
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 17 "/usr/include/time.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 19 "/usr/include/signal.h"
	.file 20 "/usr/include/unistd.h"
	.file 21 "/usr/include/errno.h"
	.file 22 "src/version.h"
	.file 23 "./lib/exitfail.h"
	.file 24 "/usr/include/stdint.h"
	.file 25 "./lib/timespec.h"
	.file 26 "./lib/version-etc.h"
	.file 27 "./lib/progname.h"
	.file 28 "./lib/quotearg.h"
	.file 29 "./lib/canonicalize.h"
	.file 30 "./lib/error.h"
	.file 31 "./lib/fsusage.h"
	.file 32 "./lib/xstrtol.h"
	.file 33 "./lib/human.h"
	.file 34 "./lib/mbsalign.h"
	.file 35 "./lib/mountlist.h"
	.file 36 "./lib/quote.h"
	.file 37 "./lib/hash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2248
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF379
	.byte	0xc
	.long	.LASF380
	.long	.LASF381
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
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x3
	.long	0x148
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x12
	.byte	0x13
	.long	0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x13
	.byte	0xa
	.long	0x148
	.byte	0
	.uleb128 0xb
	.long	0x11a
	.long	0x158
	.uleb128 0xc
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.byte	0xd
	.byte	0x9
	.long	0x17c
	.uleb128 0xe
	.long	.LASF24
	.byte	0x5
	.byte	0xf
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xe
	.long	.LASF25
	.byte	0x5
	.byte	0x14
	.byte	0x5
	.long	0x126
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF26
	.byte	0x5
	.byte	0x15
	.byte	0x3
	.long	0x158
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x30f
	.uleb128 0xe
	.long	.LASF27
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xe
	.long	.LASF28
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x114
	.byte	0x8
	.uleb128 0xe
	.long	.LASF29
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x114
	.byte	0x10
	.uleb128 0xe
	.long	.LASF30
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0xe
	.long	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x114
	.byte	0x20
	.uleb128 0xe
	.long	.LASF32
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x114
	.byte	0x28
	.uleb128 0xe
	.long	.LASF33
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x114
	.byte	0x30
	.uleb128 0xe
	.long	.LASF34
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x114
	.byte	0x38
	.uleb128 0xe
	.long	.LASF35
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x114
	.byte	0x40
	.uleb128 0xe
	.long	.LASF36
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x114
	.byte	0x48
	.uleb128 0xe
	.long	.LASF37
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x114
	.byte	0x50
	.uleb128 0xe
	.long	.LASF38
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x114
	.byte	0x58
	.uleb128 0xe
	.long	.LASF39
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x328
	.byte	0x60
	.uleb128 0xe
	.long	.LASF40
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x32e
	.byte	0x68
	.uleb128 0xe
	.long	.LASF41
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xe
	.long	.LASF42
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xe
	.long	.LASF43
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0xcc
	.byte	0x78
	.uleb128 0xe
	.long	.LASF44
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x334
	.byte	0x83
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x344
	.byte	0x88
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xd8
	.byte	0x90
	.uleb128 0xe
	.long	.LASF49
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x34f
	.byte	0x98
	.uleb128 0xe
	.long	.LASF50
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x35a
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x32e
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF52
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF53
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xe
	.long	.LASF54
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF55
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x360
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x188
	.uleb128 0x10
	.long	.LASF382
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF57
	.uleb128 0x7
	.byte	0x8
	.long	0x323
	.uleb128 0x7
	.byte	0x8
	.long	0x188
	.uleb128 0xb
	.long	0x11a
	.long	0x344
	.uleb128 0xc
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x31b
	.uleb128 0x11
	.long	.LASF58
	.uleb128 0x7
	.byte	0x8
	.long	0x34a
	.uleb128 0x11
	.long	.LASF59
	.uleb128 0x7
	.byte	0x8
	.long	0x355
	.uleb128 0xb
	.long	0x11a
	.long	0x370
	.uleb128 0xc
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x121
	.uleb128 0x8
	.long	0x370
	.uleb128 0x12
	.long	.LASF60
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x387
	.uleb128 0x7
	.byte	0x8
	.long	0x30f
	.uleb128 0x12
	.long	.LASF61
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x387
	.uleb128 0x12
	.long	.LASF62
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x387
	.uleb128 0x12
	.long	.LASF63
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xb
	.long	0x376
	.long	0x3bc
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.long	0x3b1
	.uleb128 0x12
	.long	.LASF64
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x3bc
	.uleb128 0x12
	.long	.LASF65
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF66
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x3bc
	.uleb128 0x14
	.long	.LASF67
	.byte	0x3
	.value	0x141
	.byte	0x18
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF68
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF69
	.uleb128 0x2
	.long	.LASF70
	.byte	0xa
	.byte	0x3b
	.byte	0x11
	.long	0x84
	.uleb128 0x2
	.long	.LASF71
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0xe4
	.uleb128 0xf
	.long	.LASF73
	.byte	0x10
	.byte	0xc
	.byte	0xa
	.byte	0x8
	.long	0x440
	.uleb128 0xe
	.long	.LASF74
	.byte	0xc
	.byte	0xc
	.byte	0xc
	.long	0xe4
	.byte	0
	.uleb128 0xe
	.long	.LASF75
	.byte	0xc
	.byte	0x10
	.byte	0x15
	.long	0x108
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.long	.LASF76
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF77
	.uleb128 0x12
	.long	.LASF78
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0x114
	.uleb128 0x12
	.long	.LASF79
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF80
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF81
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF82
	.byte	0x20
	.byte	0xf
	.byte	0x32
	.byte	0x8
	.long	0x4c6
	.uleb128 0xe
	.long	.LASF83
	.byte	0xf
	.byte	0x34
	.byte	0xf
	.long	0x370
	.byte	0
	.uleb128 0xe
	.long	.LASF84
	.byte	0xf
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xe
	.long	.LASF85
	.byte	0xf
	.byte	0x38
	.byte	0x8
	.long	0x4cb
	.byte	0x10
	.uleb128 0x16
	.string	"val"
	.byte	0xf
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x484
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x2
	.long	.LASF86
	.byte	0x10
	.byte	0x6
	.byte	0x15
	.long	0x17c
	.uleb128 0xb
	.long	0x114
	.long	0x4ed
	.uleb128 0xc
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF87
	.byte	0x11
	.byte	0x9f
	.byte	0xe
	.long	0x4dd
	.uleb128 0x12
	.long	.LASF88
	.byte	0x11
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF89
	.byte	0x11
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0x12
	.long	.LASF90
	.byte	0x11
	.byte	0xa6
	.byte	0xe
	.long	0x4dd
	.uleb128 0x12
	.long	.LASF91
	.byte	0x11
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF92
	.byte	0x11
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x15
	.long	.LASF93
	.byte	0x11
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF94
	.byte	0x90
	.byte	0x12
	.byte	0x2e
	.byte	0x8
	.long	0x613
	.uleb128 0xe
	.long	.LASF95
	.byte	0x12
	.byte	0x30
	.byte	0xd
	.long	0x84
	.byte	0
	.uleb128 0xe
	.long	.LASF96
	.byte	0x12
	.byte	0x35
	.byte	0xd
	.long	0xa8
	.byte	0x8
	.uleb128 0xe
	.long	.LASF97
	.byte	0x12
	.byte	0x3d
	.byte	0xf
	.long	0xc0
	.byte	0x10
	.uleb128 0xe
	.long	.LASF98
	.byte	0x12
	.byte	0x3e
	.byte	0xe
	.long	0xb4
	.byte	0x18
	.uleb128 0xe
	.long	.LASF99
	.byte	0x12
	.byte	0x40
	.byte	0xd
	.long	0x90
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF100
	.byte	0x12
	.byte	0x41
	.byte	0xd
	.long	0x9c
	.byte	0x20
	.uleb128 0xe
	.long	.LASF101
	.byte	0x12
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xe
	.long	.LASF102
	.byte	0x12
	.byte	0x45
	.byte	0xd
	.long	0x84
	.byte	0x28
	.uleb128 0xe
	.long	.LASF103
	.byte	0x12
	.byte	0x4a
	.byte	0xd
	.long	0xcc
	.byte	0x30
	.uleb128 0xe
	.long	.LASF104
	.byte	0x12
	.byte	0x4e
	.byte	0x11
	.long	0xf0
	.byte	0x38
	.uleb128 0xe
	.long	.LASF105
	.byte	0x12
	.byte	0x50
	.byte	0x10
	.long	0xfc
	.byte	0x40
	.uleb128 0xe
	.long	.LASF106
	.byte	0x12
	.byte	0x5b
	.byte	0x15
	.long	0x418
	.byte	0x48
	.uleb128 0xe
	.long	.LASF107
	.byte	0x12
	.byte	0x5c
	.byte	0x15
	.long	0x418
	.byte	0x58
	.uleb128 0xe
	.long	.LASF108
	.byte	0x12
	.byte	0x5d
	.byte	0x15
	.long	0x418
	.byte	0x68
	.uleb128 0xe
	.long	.LASF109
	.byte	0x12
	.byte	0x6a
	.byte	0x17
	.long	0x618
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x542
	.uleb128 0xb
	.long	0x108
	.long	0x628
	.uleb128 0xc
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.uleb128 0x7
	.byte	0x8
	.long	0x628
	.uleb128 0xb
	.long	0x376
	.long	0x63f
	.uleb128 0xc
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x62f
	.uleb128 0x15
	.long	.LASF110
	.byte	0x13
	.value	0x11e
	.byte	0x1a
	.long	0x63f
	.uleb128 0x15
	.long	.LASF111
	.byte	0x13
	.value	0x11f
	.byte	0x1a
	.long	0x63f
	.uleb128 0x15
	.long	.LASF112
	.byte	0x14
	.value	0x21f
	.byte	0xf
	.long	0x66b
	.uleb128 0x7
	.byte	0x8
	.long	0x114
	.uleb128 0x15
	.long	.LASF113
	.byte	0x14
	.value	0x221
	.byte	0xf
	.long	0x66b
	.uleb128 0x12
	.long	.LASF114
	.byte	0x15
	.byte	0x2d
	.byte	0xe
	.long	0x114
	.uleb128 0x12
	.long	.LASF115
	.byte	0x15
	.byte	0x2e
	.byte	0xe
	.long	0x114
	.uleb128 0x7
	.byte	0x8
	.long	0x69c
	.uleb128 0x18
	.uleb128 0x12
	.long	.LASF116
	.byte	0x16
	.byte	0x1
	.byte	0x14
	.long	0x370
	.uleb128 0x12
	.long	.LASF117
	.byte	0x17
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF118
	.byte	0x18
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x29
	.byte	0x6
	.long	0x6d9
	.uleb128 0x1a
	.long	.LASF119
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x2a
	.byte	0x6
	.long	0x6ee
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x9
	.byte	0
	.uleb128 0x1c
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x70c
	.uleb128 0x1d
	.long	.LASF121
	.sleb128 -130
	.uleb128 0x1d
	.long	.LASF122
	.sleb128 -131
	.byte	0
	.uleb128 0xb
	.long	0x121
	.long	0x717
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.long	0x70c
	.uleb128 0x12
	.long	.LASF123
	.byte	0x1a
	.byte	0x19
	.byte	0x13
	.long	0x717
	.uleb128 0x12
	.long	.LASF124
	.byte	0x1b
	.byte	0x20
	.byte	0x14
	.long	0x370
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x20
	.byte	0x6
	.long	0x789
	.uleb128 0x1b
	.long	.LASF125
	.byte	0
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF127
	.byte	0x2
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x4
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x6
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x7
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x8
	.uleb128 0x1b
	.long	.LASF134
	.byte	0x9
	.uleb128 0x1b
	.long	.LASF135
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x734
	.uleb128 0x15
	.long	.LASF136
	.byte	0x1c
	.value	0x10b
	.byte	0x1a
	.long	0x3bc
	.uleb128 0xb
	.long	0x789
	.long	0x7a6
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.long	0x79b
	.uleb128 0x15
	.long	.LASF137
	.byte	0x1c
	.value	0x10c
	.byte	0x21
	.long	0x7a6
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1d
	.byte	0x1c
	.byte	0x6
	.long	0x7e3
	.uleb128 0x1b
	.long	.LASF140
	.byte	0
	.uleb128 0x1b
	.long	.LASF141
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF142
	.byte	0x2
	.uleb128 0x1b
	.long	.LASF143
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF144
	.byte	0x1e
	.byte	0x32
	.byte	0xf
	.long	0x629
	.uleb128 0x12
	.long	.LASF145
	.byte	0x1e
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0x12
	.long	.LASF146
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF147
	.byte	0x38
	.byte	0x1f
	.byte	0x1b
	.byte	0x8
	.long	0x870
	.uleb128 0xe
	.long	.LASF148
	.byte	0x1f
	.byte	0x1d
	.byte	0xd
	.long	0x6b5
	.byte	0
	.uleb128 0xe
	.long	.LASF149
	.byte	0x1f
	.byte	0x1e
	.byte	0xd
	.long	0x6b5
	.byte	0x8
	.uleb128 0xe
	.long	.LASF150
	.byte	0x1f
	.byte	0x1f
	.byte	0xd
	.long	0x6b5
	.byte	0x10
	.uleb128 0xe
	.long	.LASF151
	.byte	0x1f
	.byte	0x20
	.byte	0xd
	.long	0x6b5
	.byte	0x18
	.uleb128 0xe
	.long	.LASF152
	.byte	0x1f
	.byte	0x21
	.byte	0x8
	.long	0x875
	.byte	0x20
	.uleb128 0xe
	.long	.LASF153
	.byte	0x1f
	.byte	0x22
	.byte	0xd
	.long	0x6b5
	.byte	0x28
	.uleb128 0xe
	.long	.LASF154
	.byte	0x1f
	.byte	0x23
	.byte	0xd
	.long	0x6b5
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	0x807
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF155
	.uleb128 0x1e
	.long	.LASF156
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x20
	.byte	0x19
	.byte	0x6
	.long	0x8ad
	.uleb128 0x1b
	.long	.LASF157
	.byte	0
	.uleb128 0x1b
	.long	.LASF158
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF159
	.byte	0x2
	.uleb128 0x1b
	.long	.LASF160
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF161
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x21
	.byte	0x2c
	.byte	0x1
	.long	0x8f9
	.uleb128 0x1b
	.long	.LASF162
	.byte	0
	.uleb128 0x1b
	.long	.LASF163
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF164
	.byte	0x2
	.uleb128 0x1b
	.long	.LASF165
	.byte	0x4
	.uleb128 0x1b
	.long	.LASF166
	.byte	0x8
	.uleb128 0x1b
	.long	.LASF167
	.byte	0x10
	.uleb128 0x1b
	.long	.LASF168
	.byte	0x20
	.uleb128 0x1b
	.long	.LASF169
	.byte	0x40
	.uleb128 0x1b
	.long	.LASF170
	.byte	0x80
	.uleb128 0x1f
	.long	.LASF171
	.value	0x100
	.byte	0
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x22
	.byte	0x13
	.byte	0xe
	.long	0x91a
	.uleb128 0x1b
	.long	.LASF172
	.byte	0
	.uleb128 0x1b
	.long	.LASF173
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF174
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF175
	.byte	0x22
	.byte	0x13
	.byte	0x44
	.long	0x8f9
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x22
	.byte	0x15
	.byte	0x6
	.long	0x94d
	.uleb128 0x1b
	.long	.LASF176
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x2
	.uleb128 0x1b
	.long	.LASF178
	.byte	0x4
	.uleb128 0x1b
	.long	.LASF179
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF180
	.byte	0x38
	.byte	0x23
	.byte	0x1a
	.byte	0x8
	.long	0x9d9
	.uleb128 0xe
	.long	.LASF181
	.byte	0x23
	.byte	0x1c
	.byte	0x9
	.long	0x114
	.byte	0
	.uleb128 0xe
	.long	.LASF182
	.byte	0x23
	.byte	0x1d
	.byte	0x9
	.long	0x114
	.byte	0x8
	.uleb128 0xe
	.long	.LASF183
	.byte	0x23
	.byte	0x1e
	.byte	0x9
	.long	0x114
	.byte	0x10
	.uleb128 0xe
	.long	.LASF184
	.byte	0x23
	.byte	0x20
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0xe
	.long	.LASF185
	.byte	0x23
	.byte	0x21
	.byte	0x9
	.long	0x400
	.byte	0x20
	.uleb128 0x20
	.long	.LASF186
	.byte	0x23
	.byte	0x22
	.byte	0x10
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x28
	.uleb128 0x20
	.long	.LASF187
	.byte	0x23
	.byte	0x23
	.byte	0x10
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x28
	.uleb128 0x20
	.long	.LASF188
	.byte	0x23
	.byte	0x24
	.byte	0x10
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x28
	.uleb128 0xe
	.long	.LASF189
	.byte	0x23
	.byte	0x25
	.byte	0x17
	.long	0x9de
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	0x94d
	.uleb128 0x7
	.byte	0x8
	.long	0x94d
	.uleb128 0x11
	.long	.LASF190
	.uleb128 0x12
	.long	.LASF191
	.byte	0x24
	.byte	0x19
	.byte	0x1f
	.long	0x9e4
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF192
	.uleb128 0x2
	.long	.LASF193
	.byte	0x25
	.byte	0x32
	.byte	0x1b
	.long	0xa08
	.uleb128 0x11
	.long	.LASF194
	.uleb128 0xf
	.long	.LASF195
	.byte	0x18
	.byte	0x2
	.byte	0x34
	.byte	0x8
	.long	0xa41
	.uleb128 0xe
	.long	.LASF196
	.byte	0x2
	.byte	0x36
	.byte	0x9
	.long	0x400
	.byte	0
	.uleb128 0x16
	.string	"me"
	.byte	0x2
	.byte	0x37
	.byte	0x17
	.long	0x9de
	.byte	0x8
	.uleb128 0xe
	.long	.LASF197
	.byte	0x2
	.byte	0x38
	.byte	0x13
	.long	0xa46
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0xa0d
	.uleb128 0x7
	.byte	0x8
	.long	0xa0d
	.uleb128 0x21
	.long	.LASF198
	.byte	0x2
	.byte	0x3d
	.byte	0x14
	.long	0xa62
	.uleb128 0x9
	.byte	0x3
	.quad	devlist_table
	.uleb128 0x7
	.byte	0x8
	.long	0x9fc
	.uleb128 0x21
	.long	.LASF199
	.byte	0x2
	.byte	0x41
	.byte	0xd
	.long	0x875
	.uleb128 0x9
	.byte	0x3
	.quad	show_all_fs
	.uleb128 0x21
	.long	.LASF200
	.byte	0x2
	.byte	0x44
	.byte	0xd
	.long	0x875
	.uleb128 0x9
	.byte	0x3
	.quad	show_local_fs
	.uleb128 0x21
	.long	.LASF201
	.byte	0x2
	.byte	0x48
	.byte	0xd
	.long	0x875
	.uleb128 0x9
	.byte	0x3
	.quad	show_listed_fs
	.uleb128 0x21
	.long	.LASF202
	.byte	0x2
	.byte	0x4b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	human_output_opts
	.uleb128 0x21
	.long	.LASF203
	.byte	0x2
	.byte	0x4e
	.byte	0x12
	.long	0x6b5
	.uleb128 0x9
	.byte	0x3
	.quad	output_block_size
	.uleb128 0x21
	.long	.LASF204
	.byte	0x2
	.byte	0x51
	.byte	0xd
	.long	0x875
	.uleb128 0x9
	.byte	0x3
	.quad	file_systems_processed
	.uleb128 0x21
	.long	.LASF205
	.byte	0x2
	.byte	0x57
	.byte	0xd
	.long	0x875
	.uleb128 0x9
	.byte	0x3
	.quad	require_sync
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	exit_status
	.uleb128 0xf
	.long	.LASF207
	.byte	0x10
	.byte	0x2
	.byte	0x5e
	.byte	0x8
	.long	0xb40
	.uleb128 0xe
	.long	.LASF208
	.byte	0x2
	.byte	0x60
	.byte	0x9
	.long	0x114
	.byte	0
	.uleb128 0xe
	.long	.LASF209
	.byte	0x2
	.byte	0x61
	.byte	0x18
	.long	0xb45
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xb18
	.uleb128 0x7
	.byte	0x8
	.long	0xb18
	.uleb128 0x21
	.long	.LASF210
	.byte	0x2
	.byte	0x6f
	.byte	0x1d
	.long	0xb45
	.uleb128 0x9
	.byte	0x3
	.quad	fs_select_list
	.uleb128 0x21
	.long	.LASF211
	.byte	0x2
	.byte	0x74
	.byte	0x1d
	.long	0xb45
	.uleb128 0x9
	.byte	0x3
	.quad	fs_exclude_list
	.uleb128 0x21
	.long	.LASF212
	.byte	0x2
	.byte	0x77
	.byte	0x1c
	.long	0x9de
	.uleb128 0x9
	.byte	0x3
	.quad	mount_list
	.uleb128 0x21
	.long	.LASF213
	.byte	0x2
	.byte	0x7a
	.byte	0xd
	.long	0x875
	.uleb128 0x9
	.byte	0x3
	.quad	print_type
	.uleb128 0x21
	.long	.LASF214
	.byte	0x2
	.byte	0x7d
	.byte	0xd
	.long	0x875
	.uleb128 0x9
	.byte	0x3
	.quad	print_grand_total
	.uleb128 0x21
	.long	.LASF215
	.byte	0x2
	.byte	0x80
	.byte	0x18
	.long	0x807
	.uleb128 0x9
	.byte	0x3
	.quad	grand_fsu
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x84
	.byte	0x1
	.long	0xbfc
	.uleb128 0x1b
	.long	.LASF216
	.byte	0
	.uleb128 0x1b
	.long	.LASF217
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF218
	.byte	0x2
	.uleb128 0x1b
	.long	.LASF219
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF220
	.byte	0x4
	.byte	0
	.uleb128 0x21
	.long	.LASF221
	.byte	0x2
	.byte	0x8b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	header_mode
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x8f
	.byte	0x1
	.long	0xc6f
	.uleb128 0x1b
	.long	.LASF222
	.byte	0
	.uleb128 0x1b
	.long	.LASF223
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF224
	.byte	0x2
	.uleb128 0x1b
	.long	.LASF225
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF226
	.byte	0x4
	.uleb128 0x1b
	.long	.LASF227
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF228
	.byte	0x6
	.uleb128 0x1b
	.long	.LASF229
	.byte	0x7
	.uleb128 0x1b
	.long	.LASF230
	.byte	0x8
	.uleb128 0x1b
	.long	.LASF231
	.byte	0x9
	.uleb128 0x1b
	.long	.LASF232
	.byte	0xa
	.uleb128 0x1b
	.long	.LASF233
	.byte	0xb
	.uleb128 0x1b
	.long	.LASF234
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF235
	.byte	0x2
	.byte	0x9d
	.byte	0x3
	.long	0xc12
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0xa1
	.byte	0x1
	.long	0xc9c
	.uleb128 0x1b
	.long	.LASF236
	.byte	0
	.uleb128 0x1b
	.long	.LASF237
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF238
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF239
	.byte	0x2
	.byte	0xa5
	.byte	0x3
	.long	0xc7b
	.uleb128 0xf
	.long	.LASF240
	.byte	0x30
	.byte	0x2
	.byte	0xa8
	.byte	0x8
	.long	0xd11
	.uleb128 0xe
	.long	.LASF241
	.byte	0x2
	.byte	0xaa
	.byte	0x13
	.long	0xc6f
	.byte	0
	.uleb128 0x16
	.string	"arg"
	.byte	0x2
	.byte	0xab
	.byte	0xf
	.long	0x370
	.byte	0x8
	.uleb128 0xe
	.long	.LASF242
	.byte	0x2
	.byte	0xac
	.byte	0x10
	.long	0xc9c
	.byte	0x10
	.uleb128 0xe
	.long	.LASF243
	.byte	0x2
	.byte	0xad
	.byte	0xf
	.long	0x370
	.byte	0x18
	.uleb128 0xe
	.long	.LASF244
	.byte	0x2
	.byte	0xae
	.byte	0xa
	.long	0x2d
	.byte	0x20
	.uleb128 0xe
	.long	.LASF245
	.byte	0x2
	.byte	0xaf
	.byte	0xf
	.long	0x91a
	.byte	0x28
	.uleb128 0xe
	.long	.LASF246
	.byte	0x2
	.byte	0xb0
	.byte	0x8
	.long	0x875
	.byte	0x2c
	.byte	0
	.uleb128 0xb
	.long	0xca8
	.long	0xd21
	.uleb128 0xc
	.long	0x39
	.byte	0xb
	.byte	0
	.uleb128 0x21
	.long	.LASF247
	.byte	0x2
	.byte	0xb4
	.byte	0x1c
	.long	0xd11
	.uleb128 0x9
	.byte	0x3
	.quad	field_data
	.uleb128 0x21
	.long	.LASF248
	.byte	0x2
	.byte	0xda
	.byte	0x14
	.long	0x370
	.uleb128 0x9
	.byte	0x3
	.quad	all_args_string
	.uleb128 0x21
	.long	.LASF249
	.byte	0x2
	.byte	0xdf
	.byte	0x1e
	.long	0xd63
	.uleb128 0x9
	.byte	0x3
	.quad	columns
	.uleb128 0x7
	.byte	0x8
	.long	0xd69
	.uleb128 0x7
	.byte	0x8
	.long	0xca8
	.uleb128 0x21
	.long	.LASF250
	.byte	0x2
	.byte	0xe2
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	ncolumns
	.uleb128 0xf
	.long	.LASF251
	.byte	0x40
	.byte	0x2
	.byte	0xe5
	.byte	0x8
	.long	0xdfb
	.uleb128 0xe
	.long	.LASF252
	.byte	0x2
	.byte	0xe7
	.byte	0xd
	.long	0x6b5
	.byte	0
	.uleb128 0xe
	.long	.LASF253
	.byte	0x2
	.byte	0xe8
	.byte	0xd
	.long	0x6b5
	.byte	0x8
	.uleb128 0xe
	.long	.LASF254
	.byte	0x2
	.byte	0xe9
	.byte	0xd
	.long	0x6b5
	.byte	0x10
	.uleb128 0xe
	.long	.LASF255
	.byte	0x2
	.byte	0xea
	.byte	0xd
	.long	0x6b5
	.byte	0x18
	.uleb128 0xe
	.long	.LASF256
	.byte	0x2
	.byte	0xeb
	.byte	0x8
	.long	0x875
	.byte	0x20
	.uleb128 0xe
	.long	.LASF257
	.byte	0x2
	.byte	0xec
	.byte	0xd
	.long	0x6b5
	.byte	0x28
	.uleb128 0xe
	.long	.LASF246
	.byte	0x2
	.byte	0xed
	.byte	0xd
	.long	0x6b5
	.byte	0x30
	.uleb128 0xe
	.long	.LASF258
	.byte	0x2
	.byte	0xee
	.byte	0x8
	.long	0x875
	.byte	0x38
	.byte	0
	.uleb128 0x21
	.long	.LASF259
	.byte	0x2
	.byte	0xf2
	.byte	0x10
	.long	0xe11
	.uleb128 0x9
	.byte	0x3
	.quad	table
	.uleb128 0x7
	.byte	0x8
	.long	0x66b
	.uleb128 0x21
	.long	.LASF260
	.byte	0x2
	.byte	0xf5
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	nrows
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0xfa
	.byte	0x1
	.long	0xe54
	.uleb128 0x1b
	.long	.LASF261
	.byte	0x80
	.uleb128 0x1b
	.long	.LASF262
	.byte	0x81
	.uleb128 0x1b
	.long	.LASF263
	.byte	0x82
	.uleb128 0x1b
	.long	.LASF264
	.byte	0x83
	.byte	0
	.uleb128 0xb
	.long	0x4c6
	.long	0xe64
	.uleb128 0xc
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0xe54
	.uleb128 0x22
	.long	.LASF265
	.byte	0x2
	.value	0x101
	.byte	0x1c
	.long	0xe64
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x23
	.long	.LASF276
	.byte	0x2
	.value	0x61f
	.byte	0x1
	.long	0x65
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x1050
	.uleb128 0x24
	.long	.LASF266
	.byte	0x2
	.value	0x61f
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x24
	.long	.LASF267
	.byte	0x2
	.value	0x61f
	.byte	0x18
	.long	0x66b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.long	.LASF268
	.byte	0x2
	.value	0x621
	.byte	0x10
	.long	0x1050
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF269
	.byte	0x2
	.value	0x637
	.byte	0x8
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x22
	.long	.LASF270
	.byte	0x2
	.value	0x639
	.byte	0xf
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x30
	.long	0xf41
	.uleb128 0x26
	.string	"oi"
	.byte	0x2
	.value	0x63d
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.string	"c"
	.byte	0x2
	.value	0x63e
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x26
	.string	"e"
	.byte	0x2
	.value	0x64a
	.byte	0x1f
	.long	0x87c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0xf9b
	.uleb128 0x22
	.long	.LASF271
	.byte	0x2
	.value	0x6c5
	.byte	0xa
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x22
	.long	.LASF272
	.byte	0x2
	.value	0x6c6
	.byte	0x1a
	.long	0xb45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x22
	.long	.LASF273
	.byte	0x2
	.value	0x6c9
	.byte	0x1e
	.long	0xb45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0xfe2
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x6e2
	.byte	0x10
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x26
	.string	"fd"
	.byte	0x2
	.value	0x6ed
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x1019
	.uleb128 0x22
	.long	.LASF274
	.byte	0x2
	.value	0x701
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x22
	.long	.LASF275
	.byte	0x2
	.value	0x70a
	.byte	0x13
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x103e
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x71a
	.byte	0x10
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x29
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x542
	.uleb128 0x2a
	.long	.LASF277
	.byte	0x2
	.value	0x5e1
	.byte	0x1
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x1086
	.uleb128 0x24
	.long	.LASF274
	.byte	0x2
	.value	0x5e1
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.long	.LASF279
	.byte	0x2
	.value	0x5d6
	.byte	0x1
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x10c6
	.uleb128 0x24
	.long	.LASF278
	.byte	0x2
	.value	0x5d6
	.byte	0x23
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"fsp"
	.byte	0x2
	.value	0x5d8
	.byte	0x18
	.long	0xb45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF280
	.byte	0x2
	.value	0x5c9
	.byte	0x1
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x1106
	.uleb128 0x24
	.long	.LASF278
	.byte	0x2
	.value	0x5c9
	.byte	0x1a
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"fsp"
	.byte	0x2
	.value	0x5cb
	.byte	0x18
	.long	0xb45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF281
	.byte	0x2
	.value	0x5bb
	.byte	0x1
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x1135
	.uleb128 0x26
	.string	"me"
	.byte	0x2
	.value	0x5bd
	.byte	0x17
	.long	0x9de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF282
	.byte	0x2
	.value	0x5ae
	.byte	0x1
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x1175
	.uleb128 0x24
	.long	.LASF83
	.byte	0x2
	.value	0x5ae
	.byte	0x18
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF283
	.byte	0x2
	.value	0x5ae
	.byte	0x31
	.long	0x1175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x613
	.uleb128 0x2b
	.long	.LASF284
	.byte	0x2
	.value	0x54c
	.byte	0x1
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x127d
	.uleb128 0x24
	.long	.LASF285
	.byte	0x2
	.value	0x54c
	.byte	0x18
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x24
	.long	.LASF283
	.byte	0x2
	.value	0x54c
	.byte	0x32
	.long	0x1175
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x22
	.long	.LASF286
	.byte	0x2
	.value	0x54e
	.byte	0xf
	.long	0x542
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.string	"me"
	.byte	0x2
	.value	0x54f
	.byte	0x17
	.long	0x9de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x22
	.long	.LASF287
	.byte	0x2
	.value	0x550
	.byte	0x1d
	.long	0x127d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x22
	.long	.LASF288
	.byte	0x2
	.value	0x555
	.byte	0x9
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x125a
	.uleb128 0x22
	.long	.LASF289
	.byte	0x2
	.value	0x558
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x22
	.long	.LASF290
	.byte	0x2
	.value	0x559
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x27
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x26
	.string	"len"
	.byte	0x2
	.value	0x560
	.byte	0x16
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x26
	.string	"mp"
	.byte	0x2
	.value	0x5a1
	.byte	0xd
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x9d9
	.uleb128 0x2c
	.long	.LASF299
	.byte	0x2
	.value	0x4fb
	.byte	0x1
	.long	0x875
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x13ca
	.uleb128 0x24
	.long	.LASF291
	.byte	0x2
	.value	0x4fb
	.byte	0x17
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x26
	.string	"me"
	.byte	0x2
	.value	0x4fd
	.byte	0x1d
	.long	0x127d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x22
	.long	.LASF287
	.byte	0x2
	.value	0x4fe
	.byte	0x1d
	.long	0x127d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x22
	.long	.LASF292
	.byte	0x2
	.value	0x4ff
	.byte	0x8
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -267
	.uleb128 0x22
	.long	.LASF293
	.byte	0x2
	.value	0x500
	.byte	0x8
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -266
	.uleb128 0x22
	.long	.LASF294
	.byte	0x2
	.value	0x501
	.byte	0xf
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x22
	.long	.LASF288
	.byte	0x2
	.value	0x503
	.byte	0x9
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x22
	.long	.LASF290
	.byte	0x2
	.value	0x507
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x27
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x22
	.long	.LASF295
	.byte	0x2
	.value	0x50b
	.byte	0xd
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x22
	.long	.LASF296
	.byte	0x2
	.value	0x50c
	.byte	0xd
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x27
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x22
	.long	.LASF297
	.byte	0x2
	.value	0x512
	.byte	0x11
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.string	"len"
	.byte	0x2
	.value	0x514
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x22
	.long	.LASF286
	.byte	0x2
	.value	0x519
	.byte	0x1b
	.long	0x542
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x22
	.long	.LASF298
	.byte	0x2
	.value	0x51a
	.byte	0x14
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -265
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF300
	.byte	0x2
	.value	0x4e0
	.byte	0x1
	.long	0x114
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x144e
	.uleb128 0x24
	.long	.LASF301
	.byte	0x2
	.value	0x4e0
	.byte	0x24
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"me"
	.byte	0x2
	.value	0x4e2
	.byte	0x1d
	.long	0x127d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"le"
	.byte	0x2
	.value	0x4e3
	.byte	0x1d
	.long	0x127d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x22
	.long	.LASF295
	.byte	0x2
	.value	0x4ed
	.byte	0xd
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF296
	.byte	0x2
	.value	0x4ee
	.byte	0xd
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF302
	.byte	0x2
	.value	0x3e2
	.byte	0x1
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x16e1
	.uleb128 0x24
	.long	.LASF291
	.byte	0x2
	.value	0x3e2
	.byte	0x16
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.uleb128 0x24
	.long	.LASF303
	.byte	0x2
	.value	0x3e2
	.byte	0x28
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x24
	.long	.LASF294
	.byte	0x2
	.value	0x3e2
	.byte	0x41
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x24
	.long	.LASF304
	.byte	0x2
	.value	0x3e3
	.byte	0x16
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1200
	.uleb128 0x24
	.long	.LASF278
	.byte	0x2
	.value	0x3e3
	.byte	0x2d
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1208
	.uleb128 0x24
	.long	.LASF186
	.byte	0x2
	.value	0x3e4
	.byte	0xf
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1212
	.uleb128 0x24
	.long	.LASF187
	.byte	0x2
	.value	0x3e4
	.byte	0x1e
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x24
	.long	.LASF305
	.byte	0x2
	.value	0x3e5
	.byte	0x21
	.long	0x16e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.uleb128 0x24
	.long	.LASF306
	.byte	0x2
	.value	0x3e6
	.byte	0xf
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1228
	.uleb128 0x26
	.string	"fsu"
	.byte	0x2
	.value	0x3fd
	.byte	0x13
	.long	0x807
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x22
	.long	.LASF307
	.byte	0x2
	.value	0x439
	.byte	0x9
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x22
	.long	.LASF308
	.byte	0x2
	.value	0x43a
	.byte	0x9
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x22
	.long	.LASF309
	.byte	0x2
	.value	0x44d
	.byte	0x19
	.long	0xd85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.uleb128 0x22
	.long	.LASF310
	.byte	0x2
	.value	0x44e
	.byte	0x19
	.long	0xd85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.uleb128 0x26
	.string	"col"
	.byte	0x2
	.value	0x455
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x2d
	.long	.LASF354
	.long	0x16f7
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.8042
	.uleb128 0x28
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x15c8
	.uleb128 0x26
	.string	"sb"
	.byte	0x2
	.value	0x41c
	.byte	0x13
	.long	0x542
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x27
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x22
	.long	.LASF311
	.byte	0x2
	.value	0x41f
	.byte	0x26
	.long	0x127d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x26
	.string	"buf"
	.byte	0x2
	.value	0x458
	.byte	0xc
	.long	0x16fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x22
	.long	.LASF312
	.byte	0x2
	.value	0x459
	.byte	0xd
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.uleb128 0x26
	.string	"v"
	.byte	0x2
	.value	0x45b
	.byte	0x1e
	.long	0x170d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x22
	.long	.LASF313
	.byte	0x2
	.value	0x4d6
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.uleb128 0x26
	.string	"pct"
	.byte	0x2
	.value	0x48b
	.byte	0x14
	.long	0x1713
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x28
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1669
	.uleb128 0x22
	.long	.LASF314
	.byte	0x2
	.value	0x494
	.byte	0x1b
	.long	0x6b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x22
	.long	.LASF315
	.byte	0x2
	.value	0x495
	.byte	0x1b
	.long	0x6b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.byte	0
	.uleb128 0x27
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x26
	.string	"u"
	.byte	0x2
	.value	0x49f
	.byte	0x18
	.long	0x1713
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x26
	.string	"a"
	.byte	0x2
	.value	0x4a0
	.byte	0x18
	.long	0x1713
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x22
	.long	.LASF315
	.byte	0x2
	.value	0x4a2
	.byte	0x18
	.long	0x1713
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x27
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x22
	.long	.LASF316
	.byte	0x2
	.value	0x4a5
	.byte	0x1e
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x22
	.long	.LASF317
	.byte	0x2
	.value	0x4a6
	.byte	0x1c
	.long	0x1713
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x870
	.uleb128 0xb
	.long	0x121
	.long	0x16f7
	.uleb128 0xc
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x16e7
	.uleb128 0xb
	.long	0x11a
	.long	0x170d
	.uleb128 0x2f
	.long	0x39
	.value	0x28c
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xd85
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF318
	.uleb128 0x2b
	.long	.LASF319
	.byte	0x2
	.value	0x3c0
	.byte	0x1
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x1758
	.uleb128 0x30
	.string	"bv"
	.byte	0x2
	.value	0x3c0
	.byte	0x2c
	.long	0x170d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"iv"
	.byte	0x2
	.value	0x3c0
	.byte	0x47
	.long	0x170d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF320
	.byte	0x2
	.value	0x39a
	.byte	0x1
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x17a6
	.uleb128 0x30
	.string	"bv"
	.byte	0x2
	.value	0x39a
	.byte	0x2a
	.long	0x170d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"iv"
	.byte	0x2
	.value	0x39b
	.byte	0x2a
	.long	0x170d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"fsu"
	.byte	0x2
	.value	0x39c
	.byte	0x2a
	.long	0x16e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2c
	.long	.LASF321
	.byte	0x2
	.value	0x390
	.byte	0x1
	.long	0x875
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x17e8
	.uleb128 0x30
	.string	"s"
	.byte	0x2
	.value	0x390
	.byte	0x1e
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"len"
	.byte	0x2
	.value	0x392
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF322
	.byte	0x2
	.value	0x371
	.byte	0x1
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x1848
	.uleb128 0x24
	.long	.LASF323
	.byte	0x2
	.value	0x371
	.byte	0x24
	.long	0x1848
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF324
	.byte	0x2
	.value	0x371
	.byte	0x30
	.long	0x184e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"src"
	.byte	0x2
	.value	0x372
	.byte	0x23
	.long	0x6b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF325
	.byte	0x2
	.value	0x372
	.byte	0x2d
	.long	0x875
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x6b5
	.uleb128 0x7
	.byte	0x8
	.long	0x875
	.uleb128 0x2c
	.long	.LASF326
	.byte	0x2
	.value	0x35a
	.byte	0x1
	.long	0x370
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x18e7
	.uleb128 0x24
	.long	.LASF327
	.byte	0x2
	.value	0x35a
	.byte	0x13
	.long	0x875
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"n"
	.byte	0x2
	.value	0x35a
	.byte	0x27
	.long	0x6b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"buf"
	.byte	0x2
	.value	0x35a
	.byte	0x30
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF252
	.byte	0x2
	.value	0x35b
	.byte	0x18
	.long	0x6b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF253
	.byte	0x2
	.value	0x35b
	.byte	0x2f
	.long	0x6b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x26
	.string	"p"
	.byte	0x2
	.value	0x361
	.byte	0xd
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF328
	.byte	0x2
	.value	0x34d
	.byte	0x1
	.long	0x875
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x1919
	.uleb128 0x30
	.string	"n"
	.byte	0x2
	.value	0x34d
	.byte	0x18
	.long	0x6b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF329
	.byte	0x2
	.value	0x33f
	.byte	0x1
	.long	0x127d
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x195c
	.uleb128 0x30
	.string	"dev"
	.byte	0x2
	.value	0x33f
	.byte	0x13
	.long	0x400
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"dl"
	.byte	0x2
	.value	0x341
	.byte	0x13
	.long	0xa46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF330
	.byte	0x2
	.value	0x2bd
	.byte	0x1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a71
	.uleb128 0x24
	.long	.LASF331
	.byte	0x2
	.value	0x2bd
	.byte	0x19
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x26
	.string	"me"
	.byte	0x2
	.value	0x2bf
	.byte	0x17
	.long	0x9de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x22
	.long	.LASF332
	.byte	0x2
	.value	0x2c2
	.byte	0x13
	.long	0xa46
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x22
	.long	.LASF333
	.byte	0x2
	.value	0x2c3
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x26
	.string	"buf"
	.byte	0x2
	.value	0x2d2
	.byte	0x13
	.long	0x542
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x22
	.long	.LASF334
	.byte	0x2
	.value	0x2d3
	.byte	0x1b
	.long	0x9de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x28
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1a4c
	.uleb128 0x22
	.long	.LASF335
	.byte	0x2
	.value	0x2e5
	.byte	0x1b
	.long	0xa46
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x22
	.long	.LASF336
	.byte	0x2
	.value	0x2e9
	.byte	0x14
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -238
	.uleb128 0x22
	.long	.LASF337
	.byte	0x2
	.value	0x2ec
	.byte	0x14
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -237
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x22
	.long	.LASF195
	.byte	0x2
	.value	0x31d
	.byte	0x1b
	.long	0xa46
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF338
	.byte	0x2
	.value	0x2b0
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a9f
	.uleb128 0x30
	.string	"p"
	.byte	0x2
	.value	0x2b0
	.byte	0x15
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF339
	.byte	0x2
	.value	0x2a6
	.byte	0x1
	.long	0xa46
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ae3
	.uleb128 0x30
	.string	"dev"
	.byte	0x2
	.value	0x2a6
	.byte	0x18
	.long	0x400
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF340
	.byte	0x2
	.value	0x2aa
	.byte	0x12
	.long	0xa0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x32
	.long	.LASF341
	.byte	0x2
	.value	0x29e
	.byte	0x1
	.long	0x875
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b3f
	.uleb128 0x30
	.string	"x"
	.byte	0x2
	.value	0x29e
	.byte	0x1e
	.long	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"y"
	.byte	0x2
	.value	0x29e
	.byte	0x2d
	.long	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"a"
	.byte	0x2
	.value	0x2a0
	.byte	0x19
	.long	0x1b3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"b"
	.byte	0x2
	.value	0x2a1
	.byte	0x19
	.long	0x1b3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa41
	.uleb128 0x32
	.long	.LASF342
	.byte	0x2
	.value	0x297
	.byte	0x1
	.long	0x2d
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b95
	.uleb128 0x30
	.string	"x"
	.byte	0x2
	.value	0x297
	.byte	0x1b
	.long	0x696
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF343
	.byte	0x2
	.value	0x297
	.byte	0x25
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"p"
	.byte	0x2
	.value	0x299
	.byte	0x19
	.long	0x1b3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF344
	.byte	0x2
	.value	0x28a
	.byte	0x1
	.long	0x875
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bd9
	.uleb128 0x24
	.long	.LASF278
	.byte	0x2
	.value	0x28a
	.byte	0x1e
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"fsp"
	.byte	0x2
	.value	0x28c
	.byte	0x1e
	.long	0x1bd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb40
	.uleb128 0x2c
	.long	.LASF345
	.byte	0x2
	.value	0x27b
	.byte	0x1
	.long	0x875
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c23
	.uleb128 0x24
	.long	.LASF278
	.byte	0x2
	.value	0x27b
	.byte	0x1e
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"fsp"
	.byte	0x2
	.value	0x27d
	.byte	0x1e
	.long	0x1bd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF346
	.byte	0x2
	.value	0x22a
	.byte	0x1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d5a
	.uleb128 0x26
	.string	"col"
	.byte	0x2
	.value	0x22c
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x27
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x22
	.long	.LASF312
	.byte	0x2
	.value	0x232
	.byte	0xd
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x22
	.long	.LASF347
	.byte	0x2
	.value	0x233
	.byte	0x13
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x22
	.long	.LASF313
	.byte	0x2
	.value	0x273
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x28
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1d24
	.uleb128 0x26
	.string	"buf"
	.byte	0x2
	.value	0x23a
	.byte	0x10
	.long	0x1d5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x22
	.long	.LASF348
	.byte	0x2
	.value	0x23c
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x22
	.long	.LASF349
	.byte	0x2
	.value	0x244
	.byte	0x15
	.long	0x6b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x22
	.long	.LASF350
	.byte	0x2
	.value	0x245
	.byte	0x15
	.long	0x6b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x22
	.long	.LASF351
	.byte	0x2
	.value	0x246
	.byte	0x10
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -758
	.uleb128 0x22
	.long	.LASF352
	.byte	0x2
	.value	0x247
	.byte	0x10
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -757
	.uleb128 0x26
	.string	"num"
	.byte	0x2
	.value	0x257
	.byte	0x11
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.byte	0
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x26
	.string	"buf"
	.byte	0x2
	.value	0x262
	.byte	0x10
	.long	0x1d6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x26
	.string	"num"
	.byte	0x2
	.value	0x263
	.byte	0x11
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x11a
	.long	0x1d6b
	.uleb128 0x2f
	.long	0x39
	.value	0x28b
	.byte	0
	.uleb128 0xb
	.long	0x11a
	.long	0x1d7b
	.uleb128 0xc
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x2b
	.long	.LASF353
	.byte	0x2
	.value	0x1e9
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dae
	.uleb128 0x2d
	.long	.LASF354
	.long	0x1dbe
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7906
	.byte	0
	.uleb128 0xb
	.long	0x121
	.long	0x1dbe
	.uleb128 0xc
	.long	0x39
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.long	0x1dae
	.uleb128 0x2b
	.long	.LASF355
	.byte	0x2
	.value	0x1a1
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e77
	.uleb128 0x30
	.string	"arg"
	.byte	0x2
	.value	0x1a1
	.byte	0x20
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF356
	.byte	0x2
	.value	0x1a3
	.byte	0x9
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"s"
	.byte	0x2
	.value	0x1a4
	.byte	0x9
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF354
	.long	0x1e87
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7893
	.uleb128 0x27
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x22
	.long	.LASF357
	.byte	0x2
	.value	0x1a8
	.byte	0xd
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF241
	.byte	0x2
	.value	0x1af
	.byte	0x17
	.long	0xc6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x1b0
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x121
	.long	0x1e87
	.uleb128 0xc
	.long	0x39
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.long	0x1e77
	.uleb128 0x2b
	.long	.LASF358
	.byte	0x2
	.value	0x18e
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1edb
	.uleb128 0x30
	.string	"f"
	.byte	0x2
	.value	0x18e
	.byte	0x12
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x18e
	.byte	0x21
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF354
	.long	0x1eeb
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7867
	.byte	0
	.uleb128 0xb
	.long	0x121
	.long	0x1eeb
	.uleb128 0xc
	.long	0x39
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.long	0x1edb
	.uleb128 0x2b
	.long	.LASF359
	.byte	0x2
	.value	0x165
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f84
	.uleb128 0x26
	.string	"row"
	.byte	0x2
	.value	0x167
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x26
	.string	"col"
	.byte	0x2
	.value	0x16b
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x22
	.long	.LASF312
	.byte	0x2
	.value	0x16e
	.byte	0x11
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF360
	.byte	0x2
	.value	0x177
	.byte	0xf
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.long	.LASF244
	.byte	0x2
	.value	0x17b
	.byte	0x12
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF375
	.byte	0x2
	.value	0x15a
	.byte	0x1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF361
	.byte	0x2
	.value	0x14c
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fe6
	.uleb128 0x24
	.long	.LASF312
	.byte	0x2
	.value	0x14c
	.byte	0x22
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF362
	.byte	0x2
	.value	0x14e
	.byte	0xe
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	tty_out.7845
	.byte	0
	.uleb128 0x2b
	.long	.LASF363
	.byte	0x2
	.value	0x129
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x20ba
	.uleb128 0x24
	.long	.LASF312
	.byte	0x2
	.value	0x129
	.byte	0x1e
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF364
	.byte	0x2
	.value	0x12b
	.byte	0x9
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"dst"
	.byte	0x2
	.value	0x12c
	.byte	0x9
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF365
	.byte	0x2
	.value	0x12d
	.byte	0xd
	.long	0x4d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"n"
	.byte	0x2
	.value	0x12e
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x26
	.string	"src"
	.byte	0x2
	.value	0x130
	.byte	0xe
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x26
	.string	"wc"
	.byte	0x2
	.value	0x132
	.byte	0xf
	.long	0x3e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x22
	.long	.LASF366
	.byte	0x2
	.value	0x133
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"ok"
	.byte	0x2
	.value	0x135
	.byte	0xc
	.long	0x875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF367
	.byte	0x2
	.value	0x11b
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x20f8
	.uleb128 0x24
	.long	.LASF312
	.byte	0x2
	.value	0x11b
	.byte	0x1e
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"p"
	.byte	0x2
	.value	0x11d
	.byte	0x9
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF368
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x219d
	.uleb128 0x24
	.long	.LASF369
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x34
	.long	.LASF370
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x2153
	.uleb128 0x35
	.long	.LASF369
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x370
	.byte	0
	.uleb128 0x35
	.long	.LASF371
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x370
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x2128
	.uleb128 0x22
	.long	.LASF370
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x21ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF371
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	.LASF372
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x21b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	.LASF373
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xb
	.long	0x2153
	.long	0x21ad
	.uleb128 0xc
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x219d
	.uleb128 0x7
	.byte	0x8
	.long	0x2153
	.uleb128 0x2b
	.long	.LASF374
	.byte	0x1
	.value	0x25e
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x21e8
	.uleb128 0x24
	.long	.LASF369
	.byte	0x1
	.value	0x25e
	.byte	0x22
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF376
	.byte	0x1
	.value	0x254
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF377
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.long	.LASF378
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x49
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x37
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
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF109:
	.string	"__glibc_reserved"
.LASF196:
	.string	"dev_num"
.LASF108:
	.string	"st_ctim"
.LASF7:
	.string	"size_t"
.LASF25:
	.string	"__value"
.LASF121:
	.string	"GETOPT_HELP_CHAR"
.LASF211:
	.string	"fs_exclude_list"
.LASF228:
	.string	"ITOTAL_FIELD"
.LASF312:
	.string	"cell"
.LASF104:
	.string	"st_blksize"
.LASF246:
	.string	"used"
.LASF105:
	.string	"st_blocks"
.LASF206:
	.string	"exit_status"
.LASF335:
	.string	"seen_dev"
.LASF58:
	.string	"_IO_codecvt"
.LASF273:
	.string	"fs_excl"
.LASF244:
	.string	"width"
.LASF38:
	.string	"_IO_save_end"
.LASF272:
	.string	"fs_incl"
.LASF379:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF70:
	.string	"dev_t"
.LASF11:
	.string	"__gid_t"
.LASF110:
	.string	"_sys_siglist"
.LASF107:
	.string	"st_mtim"
.LASF71:
	.string	"time_t"
.LASF31:
	.string	"_IO_write_base"
.LASF239:
	.string	"field_type_t"
.LASF198:
	.string	"devlist_table"
.LASF264:
	.string	"OUTPUT_OPTION"
.LASF146:
	.string	"error_one_per_line"
.LASF47:
	.string	"_lock"
.LASF283:
	.string	"statp"
.LASF349:
	.string	"q1000"
.LASF268:
	.string	"stats"
.LASF256:
	.string	"negate_available"
.LASF168:
	.string	"human_base_1024"
.LASF224:
	.string	"SIZE_FIELD"
.LASF159:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF94:
	.string	"stat"
.LASF87:
	.string	"__tzname"
.LASF36:
	.string	"_IO_save_base"
.LASF201:
	.string	"show_listed_fs"
.LASF232:
	.string	"TARGET_FIELD"
.LASF365:
	.string	"mbstate"
.LASF40:
	.string	"_chain"
.LASF285:
	.string	"point"
.LASF44:
	.string	"_cur_column"
.LASF63:
	.string	"sys_nerr"
.LASF22:
	.string	"__wch"
.LASF9:
	.string	"__dev_t"
.LASF180:
	.string	"mount_entry"
.LASF315:
	.string	"nonroot_total"
.LASF269:
	.string	"posix_format"
.LASF65:
	.string	"_sys_nerr"
.LASF363:
	.string	"replace_invalid_chars"
.LASF194:
	.string	"hash_table"
.LASF112:
	.string	"__environ"
.LASF177:
	.string	"MBA_UNIBYTE_ONLY"
.LASF350:
	.string	"q1024"
.LASF6:
	.string	"long int"
.LASF324:
	.string	"dest_neg"
.LASF84:
	.string	"has_arg"
.LASF289:
	.string	"resolved_len"
.LASF332:
	.string	"device_list"
.LASF57:
	.string	"_IO_marker"
.LASF162:
	.string	"human_ceiling"
.LASF183:
	.string	"me_mntroot"
.LASF376:
	.string	"emit_size_note"
.LASF142:
	.string	"CAN_MISSING"
.LASF182:
	.string	"me_mountdir"
.LASF86:
	.string	"mbstate_t"
.LASF221:
	.string	"header_mode"
.LASF334:
	.string	"discard_me"
.LASF248:
	.string	"all_args_string"
.LASF233:
	.string	"FILE_FIELD"
.LASF351:
	.string	"divisible_by_1000"
.LASF4:
	.string	"signed char"
.LASF18:
	.string	"__blksize_t"
.LASF72:
	.string	"_IO_FILE"
.LASF89:
	.string	"__timezone"
.LASF240:
	.string	"field_data_t"
.LASF59:
	.string	"_IO_wide_data"
.LASF99:
	.string	"st_uid"
.LASF236:
	.string	"BLOCK_FLD"
.LASF354:
	.string	"__PRETTY_FUNCTION__"
.LASF359:
	.string	"print_table"
.LASF238:
	.string	"OTHER_FLD"
.LASF136:
	.string	"quoting_style_args"
.LASF222:
	.string	"SOURCE_FIELD"
.LASF113:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF51:
	.string	"_freeres_list"
.LASF102:
	.string	"st_rdev"
.LASF336:
	.string	"target_nearer_root"
.LASF169:
	.string	"human_space_before_unit"
.LASF188:
	.string	"me_type_malloced"
.LASF156:
	.string	"strtol_error"
.LASF368:
	.string	"emit_ancillary_info"
.LASF275:
	.string	"warning"
.LASF145:
	.string	"error_message_count"
.LASF347:
	.string	"header"
.LASF20:
	.string	"__syscall_slong_t"
.LASF155:
	.string	"_Bool"
.LASF259:
	.string	"table"
.LASF358:
	.string	"alloc_field"
.LASF327:
	.string	"negative"
.LASF231:
	.string	"IPCENT_FIELD"
.LASF21:
	.string	"char"
.LASF352:
	.string	"divisible_by_1024"
.LASF262:
	.string	"SYNC_OPTION"
.LASF208:
	.string	"fs_name"
.LASF175:
	.string	"mbs_align_t"
.LASF293:
	.string	"eclipsed_device"
.LASF153:
	.string	"fsu_files"
.LASF326:
	.string	"df_readable"
.LASF329:
	.string	"me_for_dev"
.LASF167:
	.string	"human_autoscale"
.LASF382:
	.string	"_IO_lock_t"
.LASF92:
	.string	"timezone"
.LASF129:
	.string	"shell_escape_always_quoting_style"
.LASF13:
	.string	"__mode_t"
.LASF360:
	.string	"flags"
.LASF28:
	.string	"_IO_read_ptr"
.LASF164:
	.string	"human_floor"
.LASF249:
	.string	"columns"
.LASF166:
	.string	"human_suppress_point_zero"
.LASF60:
	.string	"stdin"
.LASF152:
	.string	"fsu_bavail_top_bit_set"
.LASF380:
	.string	"src/df.c"
.LASF64:
	.string	"sys_errlist"
.LASF178:
	.string	"MBA_NO_LEFT_PAD"
.LASF171:
	.string	"human_B"
.LASF39:
	.string	"_markers"
.LASF124:
	.string	"program_name"
.LASF374:
	.string	"emit_blocksize_note"
.LASF294:
	.string	"file"
.LASF341:
	.string	"devlist_compare"
.LASF131:
	.string	"c_maybe_quoting_style"
.LASF271:
	.string	"match"
.LASF306:
	.string	"process_all"
.LASF160:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF371:
	.string	"node"
.LASF170:
	.string	"human_SI"
.LASF340:
	.string	"dev_entry"
.LASF114:
	.string	"program_invocation_name"
.LASF172:
	.string	"MBS_ALIGN_LEFT"
.LASF48:
	.string	"_offset"
.LASF265:
	.string	"long_options"
.LASF284:
	.string	"get_point"
.LASF100:
	.string	"st_gid"
.LASF158:
	.string	"LONGINT_OVERFLOW"
.LASF375:
	.string	"alloc_table_row"
.LASF79:
	.string	"optind"
.LASF331:
	.string	"devices_only"
.LASF250:
	.string	"ncolumns"
.LASF134:
	.string	"clocale_quoting_style"
.LASF346:
	.string	"get_header"
.LASF144:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF274:
	.string	"status"
.LASF42:
	.string	"_flags2"
.LASF103:
	.string	"st_size"
.LASF30:
	.string	"_IO_read_base"
.LASF82:
	.string	"option"
.LASF353:
	.string	"get_field_list"
.LASF55:
	.string	"_unused2"
.LASF260:
	.string	"nrows"
.LASF255:
	.string	"available"
.LASF209:
	.string	"fs_next"
.LASF139:
	.string	"canonicalize_mode_t"
.LASF333:
	.string	"mount_list_size"
.LASF266:
	.string	"argc"
.LASF258:
	.string	"negate_used"
.LASF43:
	.string	"_old_offset"
.LASF223:
	.string	"FSTYPE_FIELD"
.LASF370:
	.string	"infomap"
.LASF267:
	.string	"argv"
.LASF19:
	.string	"__blkcnt_t"
.LASF126:
	.string	"shell_quoting_style"
.LASF364:
	.string	"srcend"
.LASF12:
	.string	"__ino_t"
.LASF229:
	.string	"IUSED_FIELD"
.LASF321:
	.string	"has_uuid_suffix"
.LASF300:
	.string	"last_device_for_mount"
.LASF68:
	.string	"long long int"
.LASF26:
	.string	"__mbstate_t"
.LASF369:
	.string	"program"
.LASF243:
	.string	"caption"
.LASF116:
	.string	"Version"
.LASF117:
	.string	"exit_failure"
.LASF76:
	.string	"_gl_cxxalias_dummy"
.LASF237:
	.string	"INODE_FLD"
.LASF130:
	.string	"c_quoting_style"
.LASF318:
	.string	"double"
.LASF263:
	.string	"TOTAL_OPTION"
.LASF33:
	.string	"_IO_write_end"
.LASF205:
	.string	"require_sync"
.LASF118:
	.string	"uintmax_t"
.LASF161:
	.string	"LONGINT_INVALID"
.LASF245:
	.string	"align"
.LASF292:
	.string	"best_match_accessible"
.LASF111:
	.string	"sys_siglist"
.LASF192:
	.string	"float"
.LASF320:
	.string	"get_field_values"
.LASF308:
	.string	"resolved_dev"
.LASF122:
	.string	"GETOPT_VERSION_CHAR"
.LASF34:
	.string	"_IO_buf_base"
.LASF257:
	.string	"available_to_root"
.LASF225:
	.string	"USED_FIELD"
.LASF251:
	.string	"field_values_t"
.LASF1:
	.string	"unsigned int"
.LASF220:
	.string	"OUTPUT_MODE"
.LASF291:
	.string	"disk"
.LASF148:
	.string	"fsu_blocksize"
.LASF123:
	.string	"version_etc_copyright"
.LASF212:
	.string	"mount_list"
.LASF213:
	.string	"print_type"
.LASF348:
	.string	"opts"
.LASF137:
	.string	"quoting_style_vals"
.LASF125:
	.string	"literal_quoting_style"
.LASF101:
	.string	"__pad0"
.LASF90:
	.string	"tzname"
.LASF53:
	.string	"__pad5"
.LASF147:
	.string	"fs_usage"
.LASF85:
	.string	"flag"
.LASF242:
	.string	"field_type"
.LASF150:
	.string	"fsu_bfree"
.LASF190:
	.string	"quoting_options"
.LASF254:
	.string	"total"
.LASF27:
	.string	"_flags"
.LASF373:
	.string	"lc_messages"
.LASF191:
	.string	"quote_quoting_options"
.LASF186:
	.string	"me_dummy"
.LASF54:
	.string	"_mode"
.LASF49:
	.string	"_codecvt"
.LASF24:
	.string	"__count"
.LASF120:
	.string	"LOG10_TIMESPEC_HZ"
.LASF97:
	.string	"st_nlink"
.LASF361:
	.string	"replace_problematic_chars"
.LASF143:
	.string	"CAN_NOLINKS"
.LASF173:
	.string	"MBS_ALIGN_RIGHT"
.LASF281:
	.string	"get_all_entries"
.LASF227:
	.string	"PCENT_FIELD"
.LASF280:
	.string	"add_fs_type"
.LASF214:
	.string	"print_grand_total"
.LASF69:
	.string	"long double"
.LASF185:
	.string	"me_dev"
.LASF303:
	.string	"mount_point"
.LASF230:
	.string	"IAVAIL_FIELD"
.LASF56:
	.string	"FILE"
.LASF234:
	.string	"INVALID_FIELD"
.LASF181:
	.string	"me_devname"
.LASF288:
	.string	"resolved"
.LASF95:
	.string	"st_dev"
.LASF366:
	.string	"srcbytes"
.LASF157:
	.string	"LONGINT_OK"
.LASF73:
	.string	"timespec"
.LASF23:
	.string	"__wchb"
.LASF189:
	.string	"me_next"
.LASF184:
	.string	"me_type"
.LASF310:
	.string	"inode_values"
.LASF81:
	.string	"optopt"
.LASF133:
	.string	"locale_quoting_style"
.LASF77:
	.string	"long long unsigned int"
.LASF295:
	.string	"devname"
.LASF204:
	.string	"file_systems_processed"
.LASF200:
	.string	"show_local_fs"
.LASF15:
	.string	"__off_t"
.LASF138:
	.string	"quoting_style"
.LASF115:
	.string	"program_invocation_short_name"
.LASF344:
	.string	"excluded_fstype"
.LASF278:
	.string	"fstype"
.LASF377:
	.string	"emit_mandatory_arg_note"
.LASF362:
	.string	"tty_out"
.LASF174:
	.string	"MBS_ALIGN_CENTER"
.LASF52:
	.string	"_freeres_buf"
.LASF367:
	.string	"replace_control_chars"
.LASF305:
	.string	"force_fsu"
.LASF80:
	.string	"opterr"
.LASF296:
	.string	"canon_dev"
.LASF355:
	.string	"decode_output_arg"
.LASF203:
	.string	"output_block_size"
.LASF151:
	.string	"fsu_bavail"
.LASF381:
	.string	"/root/coreutils"
.LASF17:
	.string	"__time_t"
.LASF356:
	.string	"arg_writable"
.LASF218:
	.string	"HUMAN_MODE"
.LASF37:
	.string	"_IO_backup_base"
.LASF46:
	.string	"_shortbuf"
.LASF316:
	.string	"lipct"
.LASF241:
	.string	"field"
.LASF378:
	.string	"to_uchar"
.LASF193:
	.string	"Hash_table"
.LASF187:
	.string	"me_remote"
.LASF165:
	.string	"human_group_digits"
.LASF210:
	.string	"fs_select_list"
.LASF323:
	.string	"dest"
.LASF140:
	.string	"CAN_EXISTING"
.LASF127:
	.string	"shell_always_quoting_style"
.LASF279:
	.string	"add_excluded_fs_type"
.LASF16:
	.string	"__off64_t"
.LASF287:
	.string	"best_match"
.LASF319:
	.string	"add_to_grand_total"
.LASF226:
	.string	"AVAIL_FIELD"
.LASF219:
	.string	"POSIX_MODE"
.LASF132:
	.string	"escape_quoting_style"
.LASF298:
	.string	"this_match_accessible"
.LASF325:
	.string	"src_neg"
.LASF35:
	.string	"_IO_buf_end"
.LASF247:
	.string	"field_data"
.LASF307:
	.string	"dev_name"
.LASF83:
	.string	"name"
.LASF328:
	.string	"known_value"
.LASF297:
	.string	"last_device"
.LASF235:
	.string	"display_field_t"
.LASF372:
	.string	"map_prog"
.LASF207:
	.string	"fs_type_list"
.LASF62:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF141:
	.string	"CAN_ALL_BUT_LAST"
.LASF75:
	.string	"tv_nsec"
.LASF277:
	.string	"usage"
.LASF128:
	.string	"shell_escape_quoting_style"
.LASF45:
	.string	"_vtable_offset"
.LASF216:
	.string	"DEFAULT_MODE"
.LASF66:
	.string	"_sys_errlist"
.LASF8:
	.string	"__uintmax_t"
.LASF304:
	.string	"stat_file"
.LASF199:
	.string	"show_all_fs"
.LASF119:
	.string	"TIMESPEC_HZ"
.LASF252:
	.string	"input_units"
.LASF163:
	.string	"human_round_to_nearest"
.LASF179:
	.string	"MBA_NO_RIGHT_PAD"
.LASF338:
	.string	"devlist_free"
.LASF88:
	.string	"__daylight"
.LASF276:
	.string	"main"
.LASF290:
	.string	"best_match_len"
.LASF270:
	.string	"msg_mut_excl"
.LASF98:
	.string	"st_mode"
.LASF10:
	.string	"__uid_t"
.LASF217:
	.string	"INODES_MODE"
.LASF345:
	.string	"selected_fstype"
.LASF29:
	.string	"_IO_read_end"
.LASF357:
	.string	"comma"
.LASF93:
	.string	"getdate_err"
.LASF215:
	.string	"grand_fsu"
.LASF41:
	.string	"_fileno"
.LASF342:
	.string	"devlist_hash"
.LASF299:
	.string	"get_disk"
.LASF339:
	.string	"devlist_for_dev"
.LASF50:
	.string	"_wide_data"
.LASF313:
	.string	"cell_width"
.LASF78:
	.string	"optarg"
.LASF302:
	.string	"get_dev"
.LASF286:
	.string	"disk_stats"
.LASF3:
	.string	"short unsigned int"
.LASF61:
	.string	"stdout"
.LASF337:
	.string	"source_below_root"
.LASF309:
	.string	"block_values"
.LASF282:
	.string	"get_entry"
.LASF261:
	.string	"NO_SYNC_OPTION"
.LASF32:
	.string	"_IO_write_ptr"
.LASF330:
	.string	"filter_mount_list"
.LASF343:
	.string	"table_size"
.LASF314:
	.string	"u100"
.LASF91:
	.string	"daylight"
.LASF253:
	.string	"output_units"
.LASF96:
	.string	"st_ino"
.LASF154:
	.string	"fsu_ffree"
.LASF149:
	.string	"fsu_blocks"
.LASF14:
	.string	"__nlink_t"
.LASF322:
	.string	"add_uint_with_neg_flag"
.LASF197:
	.string	"next"
.LASF202:
	.string	"human_output_opts"
.LASF317:
	.string	"ipct"
.LASF176:
	.string	"MBA_UNIBYTE_FALLBACK"
.LASF74:
	.string	"tv_sec"
.LASF67:
	.string	"wchar_t"
.LASF135:
	.string	"custom_quoting_style"
.LASF106:
	.string	"st_atim"
.LASF301:
	.string	"mount"
.LASF195:
	.string	"devlist"
.LASF311:
	.string	"dev_me"
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
