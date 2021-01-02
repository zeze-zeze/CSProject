	.file	"split.c"
	.text
.Ltext0:
	.type	to_uchar, @function
to_uchar:
.LFB11:
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
.LFE11:
	.size	to_uchar, .-to_uchar
	.type	ptr_align, @function
ptr_align:
.LFB33:
	.loc 1 502 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 503 15
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 504 35
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	.loc 1 504 15
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 505 25
	movq	-8(%rbp), %rax
	.loc 1 505 37
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, %rax
	.loc 1 505 23
	negq	%rax
	movq	%rax, %rdx
	.loc 1 505 10
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 506 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ptr_align, .-ptr_align
	.section	.rodata
	.align 8
.LC0:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.text
	.type	emit_stdin_note, @function
emit_stdin_note:
.LFB35:
	.loc 1 582 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 583 3
	movq	stdout(%rip), %rbx
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 586 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	emit_stdin_note, .-emit_stdin_note
	.section	.rodata
	.align 8
.LC1:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.text
	.type	emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
.LFB36:
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
	leaq	.LC1(%rip), %rdi
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
.LC2:
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
	leaq	.LC2(%rip), %rdi
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
	jmp	.L9
.L11:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L9:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L10
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L11
.L10:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L12
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L12:
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
	je	.L13
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L13
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L13:
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
	jne	.L14
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC18(%rip), %rbx
	jmp	.L15
.L14:
	.loc 1 671 3 discriminator 2
	leaq	.LC19(%rip), %rbx
.L15:
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
	je	.L16
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L16:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.type	bad_cast, @function
bad_cast:
.LFB42:
	.loc 1 699 1 is_stmt 1
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
	.type	usable_st_size, @function
usable_st_size:
.LFB43:
	.loc 1 706 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 707 11
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31
	cmpl	$32768, %eax
	je	.L20
	.loc 1 707 36 discriminator 2
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31 discriminator 2
	cmpl	$40960, %eax
	jne	.L21
.L20:
	.loc 1 708 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L22
.L21:
	.loc 1 708 31 discriminator 4
	movl	$0, %eax
.L22:
	.loc 1 708 31 discriminator 6
	andl	$1, %eax
	.loc 1 709 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	usable_st_size, .-usable_st_size
	.type	io_blksize, @function
io_blksize:
.LFB46:
	.file 2 "src/ioblksize.h"
	.loc 2 76 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 77 10
	movq	72(%rbp), %rax
	testq	%rax, %rax
	jle	.L25
	.loc 2 77 10 is_stmt 0 discriminator 1
	movq	72(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L25
	.loc 2 77 10 discriminator 3
	movq	72(%rbp), %rax
	cmpq	$131071, %rax
	jle	.L25
	.loc 2 77 10 discriminator 5
	movq	72(%rbp), %rax
	testq	%rax, %rax
	jle	.L26
	.loc 2 77 10 discriminator 7
	movq	72(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L26
	.loc 2 77 10 discriminator 9
	movq	72(%rbp), %rax
	jmp	.L29
.L26:
	.loc 2 77 10 discriminator 10
	movl	$512, %eax
	jmp	.L29
.L25:
	.loc 2 77 10 discriminator 6
	movl	$131072, %eax
.L29:
	.loc 2 78 1 is_stmt 1 discriminator 15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	io_blksize, .-io_blksize
	.local	filter_command
	.comm	filter_command,8,8
	.local	filter_pid
	.comm	filter_pid,4,4
	.local	open_pipes
	.comm	open_pipes,8,8
	.local	open_pipes_alloc
	.comm	open_pipes_alloc,8,8
	.local	n_open_pipes
	.comm	n_open_pipes,8,8
	.local	oldblocked
	.comm	oldblocked,128,32
	.local	newblocked
	.comm	newblocked,128,32
	.local	outbase
	.comm	outbase,8,8
	.local	outfile
	.comm	outfile,8,8
	.local	outfile_mid
	.comm	outfile_mid,8,8
	.data
	.type	suffix_auto, @object
	.size	suffix_auto, 1
suffix_auto:
	.byte	1
	.local	suffix_length
	.comm	suffix_length,8,8
	.section	.rodata
.LC21:
	.string	"abcdefghijklmnopqrstuvwxyz"
	.section	.data.rel.local,"aw"
	.align 8
	.type	suffix_alphabet, @object
	.size	suffix_alphabet, 8
suffix_alphabet:
	.quad	.LC21
	.local	numeric_suffix_start
	.comm	numeric_suffix_start,8,8
	.local	additional_suffix
	.comm	additional_suffix,8,8
	.local	infile
	.comm	infile,8,8
	.local	in_stat_buf
	.comm	in_stat_buf,144,32
	.data
	.align 4
	.type	output_desc, @object
	.size	output_desc, 4
output_desc:
	.long	-1
	.local	verbose
	.comm	verbose,1,1
	.local	elide_empty_files
	.comm	elide_empty_files,1,1
	.local	unbuffered
	.comm	unbuffered,1,1
	.align 4
	.type	eolchar, @object
	.size	eolchar, 4
eolchar:
	.long	-1
	.section	.rodata
.LC22:
	.string	"bytes"
.LC23:
	.string	"lines"
.LC24:
	.string	"line-bytes"
.LC25:
	.string	"number"
.LC26:
	.string	"elide-empty-files"
.LC27:
	.string	"unbuffered"
.LC28:
	.string	"suffix-length"
.LC29:
	.string	"additional-suffix"
.LC30:
	.string	"numeric-suffixes"
.LC31:
	.string	"hex-suffixes"
.LC32:
	.string	"filter"
.LC33:
	.string	"verbose"
.LC34:
	.string	"separator"
.LC35:
	.string	"-io-blksize"
.LC36:
	.string	"help"
.LC37:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 544
longopts:
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC23
	.long	1
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC24
	.long	1
	.zero	4
	.quad	0
	.long	67
	.zero	4
	.quad	.LC25
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	101
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC28
	.long	1
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC29
	.long	1
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC30
	.long	2
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC31
	.long	2
	.zero	4
	.quad	0
	.long	120
	.zero	4
	.quad	.LC32
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC34
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC35
	.long	1
	.zero	4
	.quad	0
	.long	130
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
	.type	ignorable, @function
ignorable:
.LFB51:
	.file 3 "src/split.c"
	.loc 3 158 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 3 159 10
	movq	filter_command(%rip), %rax
	.loc 3 159 25
	testq	%rax, %rax
	je	.L31
	.loc 3 159 25 is_stmt 0 discriminator 1
	cmpl	$32, -4(%rbp)
	jne	.L31
	.loc 3 159 25 discriminator 3
	movl	$1, %eax
	jmp	.L32
.L31:
	.loc 3 159 25 discriminator 4
	movl	$0, %eax
.L32:
	.loc 3 159 25 discriminator 6
	andl	$1, %eax
	.loc 3 160 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	ignorable, .-ignorable
	.section	.rodata
	.align 8
.LC38:
	.string	"the suffix length needs to be at least %lu"
	.text
	.type	set_suffix_length, @function
set_suffix_length:
.LFB52:
	.loc 3 164 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	.loc 3 164 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 167 13
	movq	$0, -32(%rbp)
	.loc 3 172 7
	movq	numeric_suffix_start(%rip), %rax
	.loc 3 172 6
	testq	%rax, %rax
	je	.L35
	.loc 3 173 17
	movb	$0, suffix_auto(%rip)
.L35:
	.loc 3 176 6
	cmpl	$5, -60(%rbp)
	je	.L36
	.loc 3 176 38 discriminator 1
	cmpl	$6, -60(%rbp)
	je	.L36
	.loc 3 177 7
	cmpl	$7, -60(%rbp)
	jne	.L37
.L36:
.LBB2:
	.loc 3 179 17
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	.loc 3 180 11
	movq	numeric_suffix_start(%rip), %rax
	.loc 3 180 10
	testq	%rax, %rax
	je	.L38
.LBB3:
	.loc 3 183 28
	movq	numeric_suffix_start(%rip), %rax
	leaq	-40(%rbp), %rdx
	leaq	.LC19(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -44(%rbp)
	.loc 3 185 14
	cmpl	$0, -44(%rbp)
	jne	.L38
	.loc 3 185 57 discriminator 1
	movq	-56(%rbp), %rax
	notq	%rax
	movq	%rax, %rdx
	.loc 3 185 42 discriminator 1
	movq	-40(%rbp), %rax
	.loc 3 185 31 discriminator 1
	cmpq	%rax, %rdx
	jb	.L38
	.loc 3 191 27
	movq	-40(%rbp), %rax
	.loc 3 191 18
	cmpq	%rax, -56(%rbp)
	jbe	.L38
	.loc 3 192 29
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
.L38:
.LBE3:
	.loc 3 196 29
	movq	suffix_alphabet(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
.L40:
	.loc 3 198 29 discriminator 1
	addq	$1, -32(%rbp)
	.loc 3 199 26 discriminator 1
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rax, -24(%rbp)
	.loc 3 199 7 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L40
	.loc 3 201 19
	movb	$0, suffix_auto(%rip)
.L37:
.LBE2:
	.loc 3 204 7
	movq	suffix_length(%rip), %rax
	.loc 3 204 6
	testq	%rax, %rax
	je	.L41
	.loc 3 206 25
	movq	suffix_length(%rip), %rax
	.loc 3 206 10
	cmpq	%rax, -32(%rbp)
	jbe	.L42
.LBB4:
	.loc 3 208 11
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L42:
.LBE4:
	.loc 3 212 19
	movb	$0, suffix_auto(%rip)
	.loc 3 213 7
	jmp	.L34
.L41:
	.loc 3 216 21
	movl	$2, %eax
	cmpq	$2, -32(%rbp)
	cmovnb	-32(%rbp), %rax
	.loc 3 216 19
	movq	%rax, suffix_length(%rip)
.L34:
	.loc 3 217 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	set_suffix_length, .-set_suffix_length
	.section	.rodata
	.align 8
.LC39:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC40:
	.string	"Usage: %s [OPTION]... [FILE [PREFIX]]\n"
	.align 8
.LC41:
	.string	"Output pieces of FILE to PREFIXaa, PREFIXab, ...;\ndefault size is 1000 lines, and default PREFIX is 'x'.\n"
	.align 8
.LC42:
	.ascii	"  -a, --suffix-length=N   generate suffixes of length N (def"
	.ascii	"ault %d)\n      --additional-suffix=SUFFIX  append an additi"
	.ascii	"onal SUFFIX to file names\n  -b, --bytes=SIZE        put SIZ"
	.ascii	"E bytes per output file\n  -C, --line-bytes=SIZE   put at mo"
	.ascii	"st SIZE bytes of records per output file\n  -d              "
	.ascii	"        use numeric suffixes starting at 0, not alphabetic\n"
	.ascii	"      --numeric-suffixes[=FROM]  same as -d, but allow setti"
	.ascii	"ng the start value\n  -x                      use hex suffix"
	.ascii	"es starting at 0, not alphabetic\n      --hex-suffixes[=FROM"
	.ascii	"]  same as -x, but allow setting the start value\n  -e, --el"
	.ascii	"ide-empty-files  do not generate empty output files with '-n"
	.ascii	"'\n      --filter=COMMAND    write to shell COMMAND; file na"
	.ascii	"me is $FILE\n  -l, --lines=NUMBER      put NUMBER lines/reco"
	.ascii	"rds per output file\n  -n, --number=CHUNKS     generate CHUN"
	.ascii	"KS o"
	.string	"utput files; see explanation below\n  -t, --separator=SEP     use SEP instead of newline as the record separator;\n                            '\\0' (zero) specifies the NUL character\n  -u, --unbuffered        immediately copy input to output with '-n r/...'\n"
	.align 8
.LC43:
	.string	"      --verbose           print a diagnostic just before each\n                            output file is opened\n"
	.align 8
.LC44:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC45:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC46:
	.ascii	"\nCHUNKS may be:\n  N       split into N files based on size"
	.ascii	" of input\n  K/N     outpu"
	.string	"t Kth of N to stdout\n  l/N     split into N files without splitting lines/records\n  l/K/N   output Kth of N to stdout without splitting lines/records\n  r/N     like 'l' but use round robin distribution\n  r/K/N   likewise but only output Kth of N to stdout\n"
.LC47:
	.string	"split"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB53:
	.loc 3 221 1
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
	.loc 3 222 6
	cmpl	$0, -20(%rbp)
	je	.L46
	.loc 3 223 5
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
	jmp	.L47
.L46:
	.loc 3 226 7
	movq	program_name(%rip), %rbx
	.loc 3 226 15
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 3 226 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 230 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 235 7
	call	emit_stdin_note
	.loc 3 236 7
	call	emit_mandatory_arg_note
	.loc 3 238 24
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 3 238 7
	movq	stdout(%rip), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 3 256 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 260 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 261 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 262 7
	call	emit_size_note
	.loc 3 263 7
	movq	stdout(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 272 7
	leaq	.LC47(%rip), %rdi
	call	emit_ancillary_info
.L47:
	.loc 3 274 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE53:
	.size	usage, .-usage
	.type	input_file_size, @function
input_file_size:
.LFB54:
	.loc 3 284 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	.loc 3 285 15
	movl	-36(%rbp), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -16(%rbp)
	.loc 3 286 6
	cmpq	$0, -16(%rbp)
	jns	.L49
	.loc 3 288 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 288 10
	cmpl	$29, %eax
	jne	.L50
	.loc 3 289 9
	call	__errno_location@PLT
	.loc 3 289 15
	movl	$0, (%rax)
.L50:
	.loc 3 290 14
	movq	$-1, %rax
	jmp	.L51
.L49:
	.loc 3 293 9
	movq	$0, -32(%rbp)
.L54:
.LBB5:
	.loc 3 296 23
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
	subq	%rax, %rdx
	movq	-32(%rbp), %rcx
	.loc 3 296 42
	movq	-56(%rbp), %rax
	addq	%rax, %rcx
	.loc 3 296 23
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8(%rbp)
	.loc 3 297 10
	cmpq	$0, -8(%rbp)
	jne	.L52
	.loc 3 298 16
	movq	-32(%rbp), %rax
	jmp	.L51
.L52:
	.loc 3 299 10
	cmpq	$-1, -8(%rbp)
	jne	.L53
	.loc 3 300 16
	movq	$-1, %rax
	jmp	.L51
.L53:
	.loc 3 301 12
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.LBE5:
	.loc 3 303 15
	movq	-32(%rbp), %rax
	.loc 3 303 3
	cmpq	%rax, -64(%rbp)
	ja	.L54
	.loc 3 308 9
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	.loc 3 308 6
	testq	%rax, %rax
	jne	.L55
	.loc 3 313 7
	call	__errno_location@PLT
	.loc 3 313 13
	movl	$75, (%rax)
	.loc 3 314 14
	movq	$-1, %rax
	jmp	.L51
.L55:
	.loc 3 317 7
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
	.loc 3 319 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	usable_st_size
	.loc 3 319 6
	testb	%al, %al
	je	.L56
	.loc 3 319 39 discriminator 1
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	.loc 3 319 27 discriminator 1
	cmpq	%rax, -16(%rbp)
	jg	.L56
	.loc 3 320 9
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L57
.L56:
	.loc 3 323 13
	movl	-36(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -24(%rbp)
	.loc 3 324 10
	cmpq	$0, -24(%rbp)
	jns	.L58
	.loc 3 325 16
	movq	$-1, %rax
	jmp	.L51
.L58:
	.loc 3 326 10
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L57
	.loc 3 328 15
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 3 328 14
	testq	%rax, %rax
	jns	.L59
	.loc 3 329 20
	movq	$-1, %rax
	jmp	.L51
.L59:
	.loc 3 330 14
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.L57
	.loc 3 331 17
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L57:
	.loc 3 335 15
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 3 335 8
	addq	%rax, -32(%rbp)
	.loc 3 336 6
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, -32(%rbp)
	jne	.L60
	.loc 3 339 7
	call	__errno_location@PLT
	.loc 3 339 13
	movl	$75, (%rax)
	.loc 3 340 14
	movq	$-1, %rax
	jmp	.L51
.L60:
	.loc 3 343 10
	movq	-32(%rbp), %rax
.L51:
	.loc 3 344 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	input_file_size, .-input_file_size
	.section	.rodata
.LC48:
	.string	"src/split.c"
.LC49:
	.string	"! widen"
	.align 8
.LC50:
	.string	"output file suffixes exhausted"
	.text
	.type	next_file_name, @function
next_file_name:
.LFB55:
	.loc 3 351 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 3 358 7
	movq	outfile(%rip), %rax
	.loc 3 358 6
	testq	%rax, %rax
	jne	.L62
.LBB6:
	.loc 3 362 1
	nop
	jmp	.L63
.L80:
.LBE6:
.LBB8:
	.loc 3 443 13
	nop
.L63:
.LBE8:
.LBB9:
	.loc 3 363 15
	movq	outfile_length.6451(%rip), %rax
	.loc 3 363 13
	testq	%rax, %rax
	setne	%al
	movb	%al, -25(%rbp)
	.loc 3 365 11
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
	.loc 3 365 10
	testb	%al, %al
	je	.L64
	.loc 3 369 28
	movq	outbase(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 3 369 26
	movq	%rax, outbase_length.6450(%rip)
	.loc 3 370 45
	movq	additional_suffix(%rip), %rax
	.loc 3 370 74
	testq	%rax, %rax
	je	.L65
	.loc 3 370 47 discriminator 1
	movq	additional_suffix(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L66
.L65:
	.loc 3 370 74 discriminator 2
	movl	$0, %eax
.L66:
	.loc 3 370 25 discriminator 4
	movq	%rax, addsuf_length.6452(%rip)
	.loc 3 371 43 discriminator 4
	movq	outbase_length.6450(%rip), %rdx
	movq	suffix_length(%rip), %rax
	addq	%rax, %rdx
	.loc 3 371 59 discriminator 4
	movq	addsuf_length.6452(%rip), %rax
	addq	%rdx, %rax
	.loc 3 371 26 discriminator 4
	movq	%rax, outfile_length.6451(%rip)
	jmp	.L67
.L64:
	.loc 3 380 26
	movq	outfile_length.6451(%rip), %rax
	addq	$2, %rax
	movq	%rax, outfile_length.6451(%rip)
	.loc 3 381 24
	movq	suffix_length(%rip), %rax
	addq	$1, %rax
	movq	%rax, suffix_length(%rip)
.L67:
	.loc 3 384 26
	movq	outfile_length.6451(%rip), %rax
	leaq	1(%rax), %rdx
	.loc 3 384 30
	movq	outbase_length.6450(%rip), %rax
	.loc 3 384 10
	cmpq	%rax, %rdx
	jnb	.L68
	.loc 3 385 9
	call	xalloc_die@PLT
.L68:
	.loc 3 386 17
	movq	outfile_length.6451(%rip), %rax
	leaq	1(%rax), %rdx
	movq	outfile(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	.loc 3 386 15
	movq	%rax, outfile(%rip)
	.loc 3 388 11
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
	.loc 3 388 10
	testb	%al, %al
	je	.L69
	.loc 3 389 9
	movq	outbase_length.6450(%rip), %rdx
	movq	outbase(%rip), %rcx
	movq	outfile(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L70
.L69:
	.loc 3 393 52
	movq	suffix_alphabet(%rip), %rdx
	.loc 3 393 61
	movq	sufindex.6449(%rip), %rax
	movq	(%rax), %rax
	.loc 3 393 52
	addq	%rdx, %rax
	.loc 3 393 18
	movq	outfile(%rip), %rcx
	movq	outbase_length.6450(%rip), %rdx
	addq	%rcx, %rdx
	.loc 3 393 52
	movzbl	(%rax), %eax
	.loc 3 393 35
	movb	%al, (%rdx)
	.loc 3 394 25
	movq	outbase_length.6450(%rip), %rax
	addq	$1, %rax
	movq	%rax, outbase_length.6450(%rip)
.L70:
	.loc 3 397 29
	movq	outfile(%rip), %rdx
	movq	outbase_length.6450(%rip), %rax
	addq	%rdx, %rax
	.loc 3 397 19
	movq	%rax, outfile_mid(%rip)
	.loc 3 398 7
	movq	suffix_length(%rip), %rdx
	.loc 3 398 43
	movq	suffix_alphabet(%rip), %rax
	movzbl	(%rax), %eax
	.loc 3 398 7
	movsbl	%al, %ecx
	movq	outfile_mid(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 3 399 11
	movq	additional_suffix(%rip), %rax
	.loc 3 399 10
	testq	%rax, %rax
	je	.L71
	.loc 3 400 9
	movq	addsuf_length.6452(%rip), %rdx
	movq	additional_suffix(%rip), %rax
	movq	outfile_mid(%rip), %rsi
	movq	suffix_length(%rip), %rcx
	.loc 3 400 29
	addq	%rsi, %rcx
	.loc 3 400 9
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L71:
	.loc 3 401 14
	movq	outfile(%rip), %rdx
	movq	outfile_length.6451(%rip), %rax
	addq	%rdx, %rax
	.loc 3 401 31
	movb	$0, (%rax)
	.loc 3 403 7
	movq	sufindex.6449(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 404 18
	movq	suffix_length(%rip), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	xcalloc@PLT
	.loc 3 404 16
	movq	%rax, sufindex.6449(%rip)
	.loc 3 406 11
	movq	numeric_suffix_start(%rip), %rax
	.loc 3 406 10
	testq	%rax, %rax
	je	.L61
.LBB7:
	.loc 3 408 11
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L73
	.loc 3 408 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6455(%rip), %rcx
	movl	$408, %edx
	leaq	.LC48(%rip), %rsi
	leaq	.LC49(%rip), %rdi
	call	__assert_fail@PLT
.L73:
	.loc 3 411 22 is_stmt 1
	movq	numeric_suffix_start(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	.loc 3 412 11
	movq	numeric_suffix_start(%rip), %rax
	movq	outfile_mid(%rip), %rcx
	.loc 3 412 47
	movq	suffix_length(%rip), %rdx
	subq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	.loc 3 412 11
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 3 415 43
	movq	sufindex.6449(%rip), %rax
	movq	suffix_length(%rip), %rdx
	salq	$3, %rdx
	.loc 3 415 19
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 3 416 17
	jmp	.L74
.L75:
	.loc 3 417 51
	movq	numeric_suffix_start(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 3 417 55
	subl	$48, %eax
	.loc 3 417 29
	subq	$8, -16(%rbp)
	.loc 3 417 55
	movslq	%eax, %rdx
	.loc 3 417 29
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L74:
	.loc 3 416 19
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 3 416 17
	testq	%rax, %rax
	jne	.L75
	jmp	.L61
.L62:
.LBE7:
.LBE9:
.LBB10:
	.loc 3 438 14
	movq	suffix_length(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 3 439 13
	jmp	.L76
.L79:
	.loc 3 441 19
	movq	sufindex.6449(%rip), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	.loc 3 441 22
	addq	$1, %rdx
	movq	%rdx, (%rax)
	.loc 3 442 15
	movzbl	suffix_auto(%rip), %eax
	.loc 3 442 14
	testb	%al, %al
	je	.L77
	.loc 3 442 27 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L77
	.loc 3 442 57 discriminator 2
	movq	suffix_alphabet(%rip), %rdx
	.loc 3 442 66 discriminator 2
	movq	sufindex.6449(%rip), %rax
	movq	(%rax), %rax
	.loc 3 442 57 discriminator 2
	addq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 3 442 37 discriminator 2
	testb	%al, %al
	je	.L80
.L77:
	.loc 3 444 43
	movq	suffix_alphabet(%rip), %rdx
	.loc 3 444 52
	movq	sufindex.6449(%rip), %rax
	movq	-8(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	.loc 3 444 43
	addq	%rdx, %rax
	.loc 3 444 22
	movq	outfile_mid(%rip), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 3 444 43
	movzbl	(%rax), %eax
	.loc 3 444 26
	movb	%al, (%rdx)
	.loc 3 445 26
	movq	outfile_mid(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 3 445 14
	testb	%al, %al
	jne	.L81
	.loc 3 447 19
	movq	sufindex.6449(%rip), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 3 447 23
	movq	$0, (%rax)
	.loc 3 448 43
	movq	suffix_alphabet(%rip), %rdx
	.loc 3 448 52
	movq	sufindex.6449(%rip), %rax
	movq	-8(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	.loc 3 448 43
	addq	%rdx, %rax
	.loc 3 448 22
	movq	outfile_mid(%rip), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 3 448 43
	movzbl	(%rax), %eax
	.loc 3 448 26
	movb	%al, (%rdx)
.L76:
	.loc 3 439 15
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 3 439 13
	testq	%rax, %rax
	jne	.L79
	.loc 3 450 7
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L81:
	.loc 3 446 13
	nop
.L61:
.LBE10:
	.loc 3 452 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	next_file_name, .-next_file_name
	.section	.rodata
.LC51:
	.string	"creating file %s\n"
.LC52:
	.string	"failed to stat %s"
	.align 8
.LC53:
	.string	"%s would overwrite input; aborting"
.LC54:
	.string	"%s: error truncating"
.LC55:
	.string	"SHELL"
.LC56:
	.string	"/bin/sh"
.LC57:
	.string	"FILE"
	.align 8
.LC58:
	.string	"failed to set FILE environment variable"
.LC59:
	.string	"executing with FILE=%s\n"
.LC60:
	.string	"failed to create pipe"
.LC61:
	.string	"closing prior pipe"
.LC62:
	.string	"closing output pipe"
.LC63:
	.string	"moving input pipe"
.LC64:
	.string	"closing input pipe"
.LC65:
	.string	"-c"
	.align 8
.LC66:
	.string	"failed to run command: \"%s -c %s\""
.LC67:
	.string	"fork system call failed"
.LC68:
	.string	"failed to close input pipe"
	.text
	.type	create, @function
create:
.LFB56:
	.loc 3 458 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -216(%rbp)
	.loc 3 458 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 459 7
	movq	filter_command(%rip), %rax
	.loc 3 459 6
	testq	%rax, %rax
	jne	.L83
.LBB11:
	.loc 3 461 11
	movzbl	verbose(%rip), %eax
	.loc 3 461 10
	testb	%al, %al
	je	.L84
	.loc 3 462 9
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 462 26
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 3 462 9
	movq	stdout(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L84:
	.loc 3 464 16
	movq	-216(%rbp), %rax
	movl	$438, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	movl	%eax, -188(%rbp)
	.loc 3 465 10
	cmpl	$0, -188(%rbp)
	jns	.L85
	.loc 3 466 16
	movl	-188(%rbp), %eax
	jmp	.L90
.L85:
	.loc 3 468 11
	leaq	-176(%rbp), %rdx
	movl	-188(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 3 468 10
	testl	%eax, %eax
	je	.L87
.LBB12:
	.loc 3 469 9
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC52(%rip), %rdi
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
.L87:
.LBE12:
	.loc 3 470 11
	movq	8+in_stat_buf(%rip), %rdx
	movq	-168(%rbp), %rax
	.loc 3 470 10
	cmpq	%rax, %rdx
	jne	.L88
	.loc 3 470 11 discriminator 1
	movq	in_stat_buf(%rip), %rdx
	movq	-176(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L88
.LBB13:
	.loc 3 471 9
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L88:
.LBE13:
	.loc 3 473 11
	movl	-188(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	ftruncate@PLT
	.loc 3 473 10
	testl	%eax, %eax
	je	.L89
	.loc 3 474 15
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 474 11
	cmpl	$32768, %eax
	jne	.L89
.LBB14:
	.loc 3 475 9
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	leaq	.LC54(%rip), %rdi
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
.L89:
.LBE14:
	.loc 3 477 14
	movl	-188(%rbp), %eax
	jmp	.L90
.L83:
.LBE11:
.LBB15:
	.loc 3 483 32
	leaq	.LC55(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -184(%rbp)
	.loc 3 484 10
	cmpq	$0, -184(%rbp)
	jne	.L91
	.loc 3 485 20
	leaq	.LC56(%rip), %rax
	movq	%rax, -184(%rbp)
.L91:
	.loc 3 486 11
	movq	-216(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	leaq	.LC57(%rip), %rdi
	call	setenv@PLT
	.loc 3 486 10
	testl	%eax, %eax
	je	.L92
.LBB16:
	.loc 3 487 9
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L92:
.LBE16:
	.loc 3 489 11
	movzbl	verbose(%rip), %eax
	.loc 3 489 10
	testb	%al, %al
	je	.L93
	.loc 3 490 9
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 490 26
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 3 490 9
	movq	stdout(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L93:
	.loc 3 491 11
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	pipe@PLT
	.loc 3 491 10
	testl	%eax, %eax
	je	.L94
.LBB17:
	.loc 3 492 9
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L94:
.LBE17:
	.loc 3 493 19
	call	fork@PLT
	movl	%eax, -192(%rbp)
	.loc 3 494 10
	cmpl	$0, -192(%rbp)
	jne	.L95
.LBB18:
	.loc 3 504 18
	movl	$0, -196(%rbp)
	.loc 3 504 11
	jmp	.L96
.L98:
	.loc 3 505 34
	movq	open_pipes(%rip), %rax
	movl	-196(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 3 505 17
	movl	(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 505 16
	testl	%eax, %eax
	je	.L97
.LBB19:
	.loc 3 506 15
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L97:
.LBE19:
	.loc 3 504 41 discriminator 2
	addl	$1, -196(%rbp)
.L96:
	.loc 3 504 25 discriminator 1
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	n_open_pipes(%rip), %rax
	.loc 3 504 11 discriminator 1
	cmpq	%rax, %rdx
	jb	.L98
	.loc 3 507 15
	movl	-172(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 507 14
	testl	%eax, %eax
	je	.L99
.LBB20:
	.loc 3 508 13
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L99:
.LBE20:
	.loc 3 509 22
	movl	-176(%rbp), %eax
	.loc 3 509 14
	testl	%eax, %eax
	je	.L100
	.loc 3 511 19
	movl	-176(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	dup2@PLT
	.loc 3 511 18
	testl	%eax, %eax
	je	.L101
.LBB21:
	.loc 3 512 17
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L101:
.LBE21:
	.loc 3 513 19
	movl	-176(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 513 18
	testl	%eax, %eax
	je	.L100
.LBB22:
	.loc 3 514 17
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L100:
.LBE22:
	.loc 3 516 11
	movl	$0, %edx
	leaq	oldblocked(%rip), %rsi
	movl	$2, %edi
	call	sigprocmask@PLT
	.loc 3 517 11
	movq	filter_command(%rip), %rbx
	.loc 3 517 30
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, %rsi
	.loc 3 517 11
	movq	-184(%rbp), %rax
	movl	$0, %r8d
	movq	%rbx, %rcx
	leaq	.LC65(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	execl@PLT
	.loc 3 519 11
	movq	filter_command(%rip), %r12
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	-184(%rbp), %rdx
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L95:
.LBE18:
	.loc 3 522 10
	cmpl	$-1, -192(%rbp)
	jne	.L102
.LBB23:
	.loc 3 523 9
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L102:
.LBE23:
	.loc 3 524 11
	movl	-176(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 524 10
	testl	%eax, %eax
	je	.L103
.LBB24:
	.loc 3 525 9
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L103:
.LBE24:
	.loc 3 526 18
	movl	-192(%rbp), %eax
	movl	%eax, filter_pid(%rip)
	.loc 3 527 24
	movq	n_open_pipes(%rip), %rdx
	movq	open_pipes_alloc(%rip), %rax
	.loc 3 527 10
	cmpq	%rax, %rdx
	jne	.L104
	.loc 3 528 22
	movq	open_pipes(%rip), %rax
	movl	$4, %edx
	leaq	open_pipes_alloc(%rip), %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 3 528 20
	movq	%rax, open_pipes(%rip)
.L104:
	.loc 3 530 17
	movq	open_pipes(%rip), %rcx
	.loc 3 530 30
	movq	n_open_pipes(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, n_open_pipes(%rip)
	.loc 3 530 17
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	.loc 3 530 43
	movl	-172(%rbp), %eax
	.loc 3 530 34
	movl	%eax, (%rdx)
	.loc 3 531 21
	movl	-172(%rbp), %eax
.L90:
.LBE15:
	.loc 3 533 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L105
	.loc 3 533 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L105:
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	create, .-create
	.section	.rodata
.LC69:
	.string	"%s"
.LC70:
	.string	"waiting for child process"
.LC71:
	.string	"%d"
	.align 8
.LC72:
	.string	"with FILE=%s, signal %s from command: %s"
	.align 8
.LC73:
	.string	"with FILE=%s, exit %d from command: %s"
	.align 8
.LC74:
	.string	"unknown status from command (0x%X)"
	.text
	.type	closeout, @function
closeout:
.LFB57:
	.loc 3 540 1 is_stmt 1
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
	movq	%rcx, -88(%rbp)
	.loc 3 540 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 541 6
	cmpq	$0, -72(%rbp)
	je	.L107
	.loc 3 541 21 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 3 541 18 discriminator 1
	testl	%eax, %eax
	je	.L107
	.loc 3 541 54 discriminator 2
	call	__errno_location@PLT
	.loc 3 541 43 discriminator 2
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable
	.loc 3 541 41 discriminator 2
	xorl	$1, %eax
	.loc 3 541 38 discriminator 2
	testb	%al, %al
	je	.L107
.LBB25:
	.loc 3 542 5
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L107:
.LBE25:
	.loc 3 543 6
	cmpl	$0, -76(%rbp)
	js	.L108
.LBB26:
	.loc 3 545 10
	cmpq	$0, -72(%rbp)
	jne	.L109
	.loc 3 545 25 discriminator 1
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 545 22 discriminator 1
	testl	%eax, %eax
	jns	.L109
.LBB27:
	.loc 3 546 9
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L109:
.LBE27:
	.loc 3 548 14
	movl	$0, -60(%rbp)
	.loc 3 548 7
	jmp	.L110
.L112:
	.loc 3 550 25
	movq	open_pipes(%rip), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 3 550 14
	cmpl	%eax, -76(%rbp)
	jne	.L111
	.loc 3 552 41
	movq	open_pipes(%rip), %rax
	.loc 3 552 42
	movq	n_open_pipes(%rip), %rdx
	subq	$1, %rdx
	.loc 3 552 29
	movq	%rdx, n_open_pipes(%rip)
	.loc 3 552 42
	movq	n_open_pipes(%rip), %rdx
	.loc 3 552 41
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 3 552 25
	movq	open_pipes(%rip), %rdx
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	.loc 3 552 41
	movl	(%rax), %eax
	.loc 3 552 29
	movl	%eax, (%rdx)
	.loc 3 553 15
	jmp	.L108
.L111:
	.loc 3 548 37 discriminator 2
	addl	$1, -60(%rbp)
.L110:
	.loc 3 548 21 discriminator 1
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	n_open_pipes(%rip), %rax
	.loc 3 548 7 discriminator 1
	cmpq	%rax, %rdx
	jb	.L112
.L108:
.LBE26:
	.loc 3 557 6
	cmpl	$0, -80(%rbp)
	jle	.L120
.LBB28:
	.loc 3 559 11
	movl	$0, -64(%rbp)
	.loc 3 560 11
	leaq	-64(%rbp), %rcx
	movl	-80(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	waitpid@PLT
	.loc 3 560 10
	cmpl	$-1, %eax
	jne	.L114
	.loc 3 560 47 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 560 44 discriminator 1
	cmpl	$10, %eax
	je	.L114
.LBB29:
	.loc 3 561 9
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L114:
.LBE29:
	.loc 3 562 11
	movl	-64(%rbp), %eax
	andl	$127, %eax
	addl	$1, %eax
	sarb	%al
	.loc 3 562 10
	testb	%al, %al
	jle	.L115
.LBB30:
	.loc 3 564 21
	movl	-64(%rbp), %eax
	.loc 3 564 15
	andl	$127, %eax
	movl	%eax, -52(%rbp)
	.loc 3 565 14
	cmpl	$13, -52(%rbp)
	je	.L120
.LBB31:
	.loc 3 568 19
	leaq	-48(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sig2str@PLT
	.loc 3 568 18
	testl	%eax, %eax
	je	.L117
	.loc 3 569 17
	movl	-52(%rbp), %edx
	leaq	-48(%rbp), %rax
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L117:
	.loc 3 570 15
	movq	filter_command(%rip), %r12
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 571 22
	leaq	.LC72(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 570 15
	movl	-52(%rbp), %eax
	subl	$-128, %eax
	leaq	-48(%rbp), %rcx
	movq	%r12, %r9
	movq	%rcx, %r8
	movq	%rbx, %rcx
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
.LBE31:
.LBE30:
.LBE28:
	.loc 3 589 1
	jmp	.L120
.L115:
.LBB34:
	.loc 3 575 16
	movl	-64(%rbp), %eax
	andl	$127, %eax
	.loc 3 575 15
	testl	%eax, %eax
	jne	.L118
.LBB32:
	.loc 3 577 20
	movl	-64(%rbp), %eax
	sarl	$8, %eax
	.loc 3 577 15
	andl	$255, %eax
	movl	%eax, -56(%rbp)
	.loc 3 578 14
	cmpl	$0, -56(%rbp)
	je	.L120
	.loc 3 579 13
	movq	filter_command(%rip), %r12
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 579 27
	leaq	.LC73(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 579 13
	movl	-56(%rbp), %ecx
	movl	-56(%rbp), %eax
	movq	%r12, %r9
	movl	%ecx, %r8d
	movq	%rbx, %rcx
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
.LBE32:
.LBE34:
	.loc 3 589 1
	jmp	.L120
.L118:
.LBB35:
.LBB33:
	.loc 3 585 11
	movl	-64(%rbp), %eax
	movl	%eax, %ebx
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L120:
.LBE33:
.LBE35:
	.loc 3 589 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L119
	call	__stack_chk_fail@PLT
.L119:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	closeout, .-closeout
	.type	cwrite, @function
cwrite:
.LFB58:
	.loc 3 598 1
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
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	%al, -20(%rbp)
	.loc 3 599 6
	cmpb	$0, -20(%rbp)
	je	.L122
	.loc 3 601 10
	cmpq	$0, -32(%rbp)
	jne	.L123
	.loc 3 601 15 discriminator 1
	cmpq	$0, -40(%rbp)
	jne	.L123
	.loc 3 601 29 discriminator 2
	movzbl	elide_empty_files(%rip), %eax
	testb	%al, %al
	je	.L123
	.loc 3 602 16
	movl	$1, %eax
	jmp	.L124
.L123:
	.loc 3 603 7
	movq	outfile(%rip), %rcx
	movl	filter_pid(%rip), %edx
	movl	output_desc(%rip), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	closeout
	.loc 3 604 7
	call	next_file_name
	.loc 3 605 21
	movq	outfile(%rip), %rax
	movq	%rax, %rdi
	call	create
	.loc 3 605 19
	movl	%eax, output_desc(%rip)
	.loc 3 606 23
	movl	output_desc(%rip), %eax
	.loc 3 606 10
	testl	%eax, %eax
	jns	.L122
.LBB36:
	.loc 3 607 9
	movq	outfile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L122:
.LBE36:
	.loc 3 610 7
	movl	output_desc(%rip), %eax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	full_write@PLT
	.loc 3 610 6
	cmpq	%rax, -40(%rbp)
	jne	.L125
	.loc 3 611 12
	movl	$1, %eax
	jmp	.L124
.L125:
	.loc 3 614 24
	call	__errno_location@PLT
	.loc 3 614 13
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable
	.loc 3 614 11
	xorl	$1, %eax
	.loc 3 614 10
	testb	%al, %al
	je	.L126
.LBB37:
	.loc 3 615 9
	movq	outfile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L126:
.LBE37:
	.loc 3 616 14
	movl	$0, %eax
.L124:
	.loc 3 618 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	cwrite, .-cwrite
	.type	bytes_split, @function
bytes_split:
.LFB59:
	.loc 3 627 1
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
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	.loc 3 629 8
	movb	$1, -51(%rbp)
	.loc 3 630 8
	movb	$1, -50(%rbp)
	.loc 3 631 13
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 3 632 13
	movq	$0, -32(%rbp)
.L146:
.LBB38:
	.loc 3 637 10
	cmpq	$-1, -96(%rbp)
	je	.L128
	.loc 3 639 18
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 3 640 24
	movq	$-1, -96(%rbp)
	.loc 3 641 15
	movq	-48(%rbp), %rax
	cmpq	-88(%rbp), %rax
	setb	%al
	movb	%al, -49(%rbp)
	jmp	.L129
.L128:
	.loc 3 645 15
	movzbl	-50(%rbp), %eax
	xorl	$1, %eax
	.loc 3 645 14
	testb	%al, %al
	je	.L130
	.loc 3 646 18
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	lseek@PLT
	.loc 3 646 15
	cmpq	$-1, %rax
	je	.L130
	.loc 3 648 24
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 3 649 29
	movb	$1, -51(%rbp)
.L130:
	.loc 3 652 20
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	safe_read@PLT
	movq	%rax, -48(%rbp)
	.loc 3 653 14
	cmpq	$-1, -48(%rbp)
	jne	.L131
.LBB39:
	.loc 3 654 13
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L131:
.LBE39:
	.loc 3 655 15
	cmpq	$0, -48(%rbp)
	sete	%al
	movb	%al, -49(%rbp)
.L129:
	.loc 3 657 13
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 3 658 13
	jmp	.L132
.L140:
	.loc 3 660 14
	cmpb	$0, -50(%rbp)
	jne	.L133
	.loc 3 660 25 discriminator 1
	cmpb	$0, -51(%rbp)
	je	.L134
.L133:
	.loc 3 661 25
	movzbl	-51(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cwrite
	movb	%al, -50(%rbp)
.L134:
	.loc 3 662 18
	movzbl	-51(%rbp), %eax
	addq	%rax, -32(%rbp)
	.loc 3 663 38
	cmpq	$0, -104(%rbp)
	je	.L135
	.loc 3 663 38 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jnb	.L136
.L135:
	.loc 3 663 38 discriminator 3
	movl	$1, %eax
	jmp	.L137
.L136:
	.loc 3 663 38 discriminator 4
	movl	$0, %eax
.L137:
	.loc 3 663 25 is_stmt 1 discriminator 6
	movb	%al, -51(%rbp)
	andb	$1, -51(%rbp)
	.loc 3 664 15 discriminator 6
	movzbl	-50(%rbp), %eax
	xorl	$1, %eax
	.loc 3 664 14 discriminator 6
	testb	%al, %al
	je	.L138
	.loc 3 664 30 discriminator 1
	movzbl	-51(%rbp), %eax
	xorl	$1, %eax
	.loc 3 664 27 discriminator 1
	testb	%al, %al
	je	.L138
	.loc 3 667 22
	movq	$0, -48(%rbp)
	.loc 3 668 19
	movb	$1, -49(%rbp)
	.loc 3 669 15
	jmp	.L139
.L138:
	.loc 3 671 18
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	.loc 3 672 18
	movq	-40(%rbp), %rax
	subq	%rax, -48(%rbp)
	.loc 3 673 20
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
.L132:
	.loc 3 658 13
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jbe	.L140
.L139:
	.loc 3 675 10
	cmpq	$0, -48(%rbp)
	je	.L141
	.loc 3 677 14
	cmpb	$0, -50(%rbp)
	jne	.L142
	.loc 3 677 25 discriminator 1
	cmpb	$0, -51(%rbp)
	je	.L143
.L142:
	.loc 3 678 25
	movzbl	-51(%rbp), %eax
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cwrite
	movb	%al, -50(%rbp)
.L143:
	.loc 3 679 18
	movzbl	-51(%rbp), %eax
	addq	%rax, -32(%rbp)
	.loc 3 680 25
	movb	$0, -51(%rbp)
	.loc 3 681 15
	movzbl	-50(%rbp), %eax
	xorl	$1, %eax
	.loc 3 681 14
	testb	%al, %al
	je	.L144
	.loc 3 681 27 discriminator 1
	movq	-32(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L149
.L144:
	.loc 3 686 20
	movq	-48(%rbp), %rax
	subq	%rax, -40(%rbp)
.L141:
.LBE38:
	.loc 3 689 10
	movzbl	-49(%rbp), %eax
	xorl	$1, %eax
	.loc 3 689 3
	testb	%al, %al
	jne	.L146
	jmp	.L147
.L149:
.LBB40:
	.loc 3 684 15
	nop
.LBE40:
	.loc 3 694 9
	jmp	.L147
.L148:
	.loc 3 695 5
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	cwrite
.L147:
	.loc 3 694 16
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 3 694 9
	cmpq	%rax, -104(%rbp)
	ja	.L148
	.loc 3 696 1
	nop
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	bytes_split, .-bytes_split
	.type	lines_split, @function
lines_split:
.LFB60:
	.loc 3 703 1
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
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	.loc 3 706 8
	movb	$1, -65(%rbp)
	.loc 3 707 13
	movq	$0, -48(%rbp)
.L157:
	.loc 3 711 16
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	safe_read@PLT
	movq	%rax, -40(%rbp)
	.loc 3 712 10
	cmpq	$-1, -40(%rbp)
	jne	.L151
.LBB41:
	.loc 3 713 9
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L151:
.LBE41:
	.loc 3 714 19
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 3 714 10
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 3 715 11
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 3 716 12
	movl	eolchar(%rip), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
.L156:
	.loc 3 719 41
	movq	-32(%rbp), %rax
	subq	-64(%rbp), %rax
	.loc 3 719 46
	addq	$1, %rax
	.loc 3 719 16
	movq	%rax, %rdx
	movl	eolchar(%rip), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -64(%rbp)
	.loc 3 720 14
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L152
	.loc 3 722 18
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L158
.LBB42:
	.loc 3 724 36
	movq	-32(%rbp), %rax
	subq	-56(%rbp), %rax
	.loc 3 724 26
	movq	%rax, -24(%rbp)
	.loc 3 725 19
	movzbl	-65(%rbp), %eax
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cwrite
	.loc 3 726 33
	movb	$0, -65(%rbp)
.LBE42:
	.loc 3 728 15
	jmp	.L158
.L152:
	.loc 3 731 11
	addq	$1, -64(%rbp)
	.loc 3 732 14
	addq	$1, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L156
	.loc 3 734 49
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	.loc 3 734 15
	movq	%rax, %rdx
	movzbl	-65(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cwrite
	.loc 3 735 22
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 3 736 29
	movb	$1, -65(%rbp)
	.loc 3 737 17
	movq	$0, -48(%rbp)
	.loc 3 719 14
	jmp	.L156
.L158:
	.loc 3 728 15
	nop
	.loc 3 741 3
	cmpq	$0, -40(%rbp)
	jne	.L157
	.loc 3 742 1
	nop
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	lines_split, .-lines_split
	.type	line_bytes_split, @function
line_bytes_split:
.LFB61:
	.loc 3 750 1
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
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	.loc 3 752 13
	movq	$0, -120(%rbp)
	.loc 3 753 10
	movq	$0, -112(%rbp)
	.loc 3 754 9
	movq	$0, -104(%rbp)
	.loc 3 755 10
	movq	$0, -96(%rbp)
	.loc 3 756 8
	movb	$0, -121(%rbp)
.L180:
.LBB43:
	.loc 3 760 16
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	safe_read@PLT
	movq	%rax, -48(%rbp)
	.loc 3 761 10
	cmpq	$-1, -48(%rbp)
	jne	.L160
.LBB44:
	.loc 3 762 9
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L160:
.LBE44:
	.loc 3 763 14
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 3 764 13
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 3 765 13
	jmp	.L161
.L179:
.LBB45:
	.loc 3 767 18
	movq	$0, -72(%rbp)
	.loc 3 768 17
	movq	$0, -64(%rbp)
	.loc 3 773 23
	movq	-136(%rbp), %rax
	subq	-120(%rbp), %rax
	.loc 3 773 31
	subq	-112(%rbp), %rax
	.loc 3 773 14
	cmpq	%rax, -88(%rbp)
	jb	.L162
	.loc 3 776 36
	movq	-136(%rbp), %rax
	subq	-120(%rbp), %rax
	.loc 3 776 26
	subq	-112(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 3 777 38
	movq	-72(%rbp), %rax
	leaq	-1(%rax), %rdx
	.loc 3 777 19
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 3 778 21
	movl	eolchar(%rip), %ecx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memrchr@PLT
	movq	%rax, -56(%rbp)
	jmp	.L163
.L162:
	.loc 3 781 19
	movl	eolchar(%rip), %ecx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memrchr@PLT
	movq	%rax, -56(%rbp)
.L163:
	.loc 3 784 14
	cmpq	$0, -112(%rbp)
	je	.L164
	.loc 3 784 22 discriminator 1
	cmpq	$0, -56(%rbp)
	jne	.L165
	.loc 3 784 25 discriminator 2
	cmpq	$0, -120(%rbp)
	jne	.L164
.L165:
	.loc 3 786 15
	cmpq	$0, -120(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cwrite
	.loc 3 787 21
	movq	-112(%rbp), %rax
	addq	%rax, -120(%rbp)
	.loc 3 788 18
	movq	-112(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jbe	.L166
	.loc 3 789 24
	movq	-152(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	movq	%rax, -104(%rbp)
.L166:
	.loc 3 790 22
	movq	$0, -112(%rbp)
	.loc 3 791 25
	movq	-152(%rbp), %rax
	movq	%rax, -96(%rbp)
.L164:
	.loc 3 795 14
	cmpq	$0, -56(%rbp)
	je	.L167
.LBB46:
	.loc 3 797 26
	movb	$1, -121(%rbp)
	.loc 3 798 36
	movq	-56(%rbp), %rax
	subq	-80(%rbp), %rax
	.loc 3 798 42
	addq	$1, %rax
	.loc 3 798 22
	movq	%rax, -40(%rbp)
	.loc 3 799 15
	cmpq	$0, -120(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cwrite
	.loc 3 800 21
	movq	-40(%rbp), %rax
	addq	%rax, -120(%rbp)
	.loc 3 801 22
	movq	-40(%rbp), %rax
	subq	%rax, -88(%rbp)
	.loc 3 802 19
	movq	-40(%rbp), %rax
	addq	%rax, -80(%rbp)
	.loc 3 803 18
	cmpq	$0, -64(%rbp)
	je	.L167
	.loc 3 804 28
	movq	-40(%rbp), %rax
	subq	%rax, -72(%rbp)
.L167:
.LBE46:
	.loc 3 808 14
	cmpq	$0, -88(%rbp)
	je	.L168
	.loc 3 808 25 discriminator 1
	movzbl	-121(%rbp), %eax
	xorl	$1, %eax
	.loc 3 808 22 discriminator 1
	testb	%al, %al
	je	.L168
.LBB47:
	.loc 3 810 49
	cmpq	$0, -64(%rbp)
	je	.L169
	.loc 3 810 49 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax
	jmp	.L170
.L169:
	.loc 3 810 49 discriminator 2
	movq	-88(%rbp), %rax
.L170:
	.loc 3 810 22 is_stmt 1 discriminator 4
	movq	%rax, -32(%rbp)
	.loc 3 811 15 discriminator 4
	cmpq	$0, -120(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cwrite
	.loc 3 812 21 discriminator 4
	movq	-32(%rbp), %rax
	addq	%rax, -120(%rbp)
	.loc 3 813 22 discriminator 4
	movq	-32(%rbp), %rax
	subq	%rax, -88(%rbp)
	.loc 3 814 19 discriminator 4
	movq	-32(%rbp), %rax
	addq	%rax, -80(%rbp)
	.loc 3 815 18 discriminator 4
	cmpq	$0, -64(%rbp)
	je	.L168
	.loc 3 816 28
	movq	-32(%rbp), %rax
	subq	%rax, -72(%rbp)
.L168:
.LBE47:
	.loc 3 820 14
	cmpq	$0, -64(%rbp)
	je	.L171
	.loc 3 820 20 discriminator 1
	cmpq	$0, -72(%rbp)
	jne	.L172
.L171:
	.loc 3 820 35 discriminator 3
	cmpq	$0, -64(%rbp)
	jne	.L173
	.loc 3 820 44 discriminator 4
	cmpq	$0, -88(%rbp)
	je	.L173
.L172:
.LBB48:
	.loc 3 822 47
	cmpq	$0, -64(%rbp)
	je	.L174
	.loc 3 822 47 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax
	jmp	.L175
.L174:
	.loc 3 822 47 discriminator 2
	movq	-88(%rbp), %rax
.L175:
	.loc 3 822 22 is_stmt 1 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 3 823 29 discriminator 4
	movq	-96(%rbp), %rax
	subq	-112(%rbp), %rax
	.loc 3 823 18 discriminator 4
	cmpq	%rax, -24(%rbp)
	jbe	.L176
	.loc 3 825 45
	movq	-152(%rbp), %rax
	notq	%rax
	.loc 3 825 22
	cmpq	%rax, -96(%rbp)
	ja	.L177
	.loc 3 826 31
	movq	-152(%rbp), %rax
	addq	%rax, -96(%rbp)
	.loc 3 829 26
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	movq	%rax, -104(%rbp)
	jmp	.L176
.L177:
	.loc 3 828 21
	call	xalloc_die@PLT
.L176:
	.loc 3 831 28
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 3 831 15
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 3 832 22
	movq	-24(%rbp), %rax
	addq	%rax, -112(%rbp)
	.loc 3 833 22
	movq	-24(%rbp), %rax
	subq	%rax, -88(%rbp)
	.loc 3 834 19
	movq	-24(%rbp), %rax
	addq	%rax, -80(%rbp)
.L173:
.LBE48:
	.loc 3 838 14
	cmpq	$0, -64(%rbp)
	je	.L161
	.loc 3 840 21
	movq	$0, -120(%rbp)
	.loc 3 841 26
	movb	$0, -121(%rbp)
.L161:
.LBE45:
	.loc 3 765 13
	cmpq	$0, -88(%rbp)
	jne	.L179
.LBE43:
	.loc 3 845 3
	cmpq	$0, -48(%rbp)
	jne	.L180
	.loc 3 848 6
	cmpq	$0, -112(%rbp)
	je	.L181
	.loc 3 849 5
	cmpq	$0, -120(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cwrite
.L181:
	.loc 3 851 3
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 852 1
	nop
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	line_bytes_split, .-line_bytes_split
	.section	.rodata
.LC75:
	.string	"n && k <= n && n <= file_size"
.LC76:
	.string	"write error"
	.text
	.type	lines_chunk_split, @function
lines_chunk_split:
.LFB62:
	.loc 3 865 1
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
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	.loc 3 866 3
	cmpq	$0, -128(%rbp)
	je	.L183
	.loc 3 866 3 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax
	cmpq	-128(%rbp), %rax
	ja	.L183
	.loc 3 866 3 discriminator 3
	movq	-160(%rbp), %rax
	cmpq	%rax, -128(%rbp)
	jbe	.L212
.L183:
	.loc 3 866 3 discriminator 5
	leaq	__PRETTY_FUNCTION__.6610(%rip), %rcx
	movl	$866, %edx
	leaq	.LC48(%rip), %rsi
	leaq	.LC75(%rip), %rdi
	call	__assert_fail@PLT
.L212:
	.loc 3 868 38 is_stmt 1
	movq	-160(%rbp), %rax
	movl	$0, %edx
	divq	-128(%rbp)
	.loc 3 868 15
	movq	%rax, -56(%rbp)
	.loc 3 869 13
	movq	$1, -104(%rbp)
	.loc 3 870 9
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	.loc 3 871 9
	movq	$0, -88(%rbp)
	.loc 3 872 8
	movb	$1, -107(%rbp)
	.loc 3 873 8
	movb	$0, -106(%rbp)
	.loc 3 875 6
	cmpq	$1, -120(%rbp)
	jbe	.L189
.LBB49:
	.loc 3 878 24
	movq	-120(%rbp), %rax
	leaq	-1(%rax), %rdx
	.loc 3 878 29
	movq	-56(%rbp), %rax
	imulq	%rdx, %rax
	.loc 3 878 42
	subq	$1, %rax
	.loc 3 878 13
	movq	%rax, -48(%rbp)
	.loc 3 879 17
	movq	-48(%rbp), %rax
	.loc 3 879 10
	cmpq	%rax, -152(%rbp)
	jbe	.L186
	.loc 3 881 11
	movq	-48(%rbp), %rax
	movq	-152(%rbp), %rdx
	subq	%rax, %rdx
	movq	-48(%rbp), %rcx
	.loc 3 881 29
	movq	-136(%rbp), %rax
	addq	%rax, %rcx
	.loc 3 881 11
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	.loc 3 882 24
	movq	-48(%rbp), %rax
	subq	%rax, -152(%rbp)
	jmp	.L187
.L186:
	.loc 3 886 42
	movq	-48(%rbp), %rax
	subq	-152(%rbp), %rax
	.loc 3 886 15
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	lseek@PLT
	.loc 3 886 14
	testq	%rax, %rax
	jns	.L188
.LBB50:
	.loc 3 887 13
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L188:
.LBE50:
	.loc 3 888 24
	movq	$-1, -152(%rbp)
.L187:
	.loc 3 890 17
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 3 891 16
	movq	-120(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -104(%rbp)
	.loc 3 892 28
	movq	-56(%rbp), %rax
	imulq	-104(%rbp), %rax
	.loc 3 892 41
	subq	$1, %rax
	.loc 3 892 17
	movq	%rax, -96(%rbp)
.LBE49:
	.loc 3 895 9
	jmp	.L189
.L208:
.LBB51:
	.loc 3 897 13
	movq	-136(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 3 899 10
	cmpq	$-1, -152(%rbp)
	je	.L190
	.loc 3 901 18
	movq	-152(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 3 902 24
	movq	$-1, -152(%rbp)
	jmp	.L191
.L190:
	.loc 3 906 20
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	safe_read@PLT
	movq	%rax, -72(%rbp)
	.loc 3 907 14
	cmpq	$-1, -72(%rbp)
	jne	.L191
.LBB52:
	.loc 3 908 13
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L191:
.LBE52:
	.loc 3 910 10
	cmpq	$0, -72(%rbp)
	je	.L213
	.loc 3 912 16
	movq	-160(%rbp), %rax
	subq	-88(%rbp), %rax
	.loc 3 912 14
	cmpq	%rax, -72(%rbp)
	cmovbe	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 3 913 23
	movb	$0, -106(%rbp)
	.loc 3 914 11
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 3 916 13
	jmp	.L194
.L207:
.LBB53:
	.loc 3 919 16
	movb	$0, -105(%rbp)
	.loc 3 922 24
	movq	-96(%rbp), %rax
	subq	-88(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cmpq	%rax, -72(%rbp)
	cmovbe	-72(%rbp), %rax
	.loc 3 922 17
	movq	%rax, -32(%rbp)
	.loc 3 923 26
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movl	eolchar(%rip), %eax
	movq	-32(%rbp), %rsi
	.loc 3 923 37
	movq	-80(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 3 923 26
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memchr@PLT
	movq	%rax, -64(%rbp)
	.loc 3 924 21
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	.loc 3 924 14
	testq	%rax, %rax
	je	.L195
	.loc 3 925 18
	movb	$1, -105(%rbp)
	jmp	.L196
.L195:
	.loc 3 927 20
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
.L196:
	.loc 3 928 29
	movq	-64(%rbp), %rax
	subq	-80(%rbp), %rax
	.loc 3 928 20
	movq	%rax, -24(%rbp)
	.loc 3 930 14
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.L197
	.loc 3 935 19
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	full_write@PLT
	.loc 3 935 18
	cmpq	%rax, -24(%rbp)
	je	.L198
.LBB54:
	.loc 3 936 17
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L197:
.LBE54:
	.loc 3 938 19
	cmpq	$0, -120(%rbp)
	jne	.L198
	.loc 3 939 13
	movzbl	-107(%rbp), %eax
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cwrite
.L198:
	.loc 3 940 21
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	.loc 3 941 14
	movq	-24(%rbp), %rax
	addq	%rax, -80(%rbp)
	.loc 3 942 18
	movq	-24(%rbp), %rax
	subq	%rax, -72(%rbp)
	.loc 3 943 25
	movzbl	-105(%rbp), %eax
	movb	%al, -107(%rbp)
	.loc 3 947 17
	jmp	.L199
.L206:
	.loc 3 949 19
	movzbl	-105(%rbp), %eax
	xorl	$1, %eax
	.loc 3 949 18
	testb	%al, %al
	je	.L200
	.loc 3 949 25 discriminator 1
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L200
	.loc 3 952 35
	movb	$1, -106(%rbp)
	.loc 3 953 19
	jmp	.L194
.L200:
	.loc 3 955 23
	addq	$1, -104(%rbp)
	.loc 3 956 18
	cmpq	$0, -120(%rbp)
	je	.L201
	.loc 3 956 21 discriminator 1
	movq	-104(%rbp), %rax
	cmpq	-120(%rbp), %rax
	ja	.L214
.L201:
	.loc 3 958 18
	movq	-104(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jne	.L203
	.loc 3 959 27
	movq	-160(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.L204
.L203:
	.loc 3 961 27
	movq	-56(%rbp), %rax
	addq	%rax, -96(%rbp)
.L204:
	.loc 3 962 18
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jle	.L205
	.loc 3 964 22
	cmpq	$0, -120(%rbp)
	jne	.L199
	.loc 3 965 21
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	cwrite
	jmp	.L199
.L205:
	.loc 3 968 22
	movb	$0, -105(%rbp)
.L199:
	.loc 3 947 17
	cmpb	$0, -105(%rbp)
	jne	.L206
	.loc 3 947 23 discriminator 1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jg	.L206
.L194:
.LBE53:
	.loc 3 916 13
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L207
.L189:
.LBE51:
	.loc 3 895 9
	movq	-88(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jl	.L208
	jmp	.L193
.L213:
.LBB56:
	.loc 3 911 9
	nop
.L193:
.LBE56:
	.loc 3 973 6
	cmpb	$0, -106(%rbp)
	je	.L210
	.loc 3 974 13
	addq	$1, -104(%rbp)
	.loc 3 979 9
	jmp	.L210
.L211:
	.loc 3 980 5
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	cwrite
.L210:
	.loc 3 979 9
	cmpq	$0, -120(%rbp)
	jne	.L182
	.loc 3 979 24 discriminator 1
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	.loc 3 979 13 discriminator 1
	cmpq	%rax, -128(%rbp)
	jnb	.L211
	jmp	.L182
.L214:
.LBB57:
.LBB55:
	.loc 3 957 17
	nop
.L182:
.LBE55:
.LBE57:
	.loc 3 981 1
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	lines_chunk_split, .-lines_chunk_split
	.section	.rodata
	.align 8
.LC77:
	.string	"k && n && k <= n && n <= file_size"
.LC78:
	.string	"-"
	.text
	.type	bytes_chunk_extract, @function
bytes_chunk_extract:
.LFB63:
	.loc 3 988 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	.loc 3 992 3
	cmpq	$0, -56(%rbp)
	je	.L216
	.loc 3 992 3 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)
	je	.L216
	.loc 3 992 3 discriminator 3
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	ja	.L216
	.loc 3 992 3 discriminator 5
	movq	-96(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jbe	.L230
.L216:
	.loc 3 992 3 discriminator 7
	leaq	__PRETTY_FUNCTION__.6653(%rip), %rcx
	movl	$992, %edx
	leaq	.LC48(%rip), %rsi
	leaq	.LC77(%rip), %rdi
	call	__assert_fail@PLT
.L230:
	.loc 3 994 14 is_stmt 1
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rcx
	.loc 3 994 32
	movq	-96(%rbp), %rax
	movl	$0, %edx
	divq	-64(%rbp)
	.loc 3 994 19
	imulq	%rcx, %rax
	.loc 3 994 9
	movq	%rax, -40(%rbp)
	.loc 3 995 30
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.L218
	.loc 3 995 47 discriminator 1
	movq	-96(%rbp), %rax
	movl	$0, %edx
	divq	-64(%rbp)
	.loc 3 995 34 discriminator 1
	imulq	-56(%rbp), %rax
	jmp	.L219
.L218:
	.loc 3 995 30 discriminator 2
	movq	-96(%rbp), %rax
.L219:
	.loc 3 995 7 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 3 997 13 discriminator 4
	movq	-40(%rbp), %rax
	.loc 3 997 6 discriminator 4
	cmpq	%rax, -88(%rbp)
	jbe	.L220
	.loc 3 999 7
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rdx
	subq	%rax, %rdx
	movq	-40(%rbp), %rcx
	.loc 3 999 25
	movq	-72(%rbp), %rax
	addq	%rax, %rcx
	.loc 3 999 7
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	.loc 3 1000 20
	movq	-40(%rbp), %rax
	subq	%rax, -88(%rbp)
	jmp	.L223
.L220:
	.loc 3 1004 11
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	lseek@PLT
	.loc 3 1004 10
	testq	%rax, %rax
	jns	.L222
.LBB58:
	.loc 3 1005 9
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L222:
.LBE58:
	.loc 3 1006 20
	movq	$-1, -88(%rbp)
	.loc 3 1009 9
	jmp	.L223
.L229:
.LBB59:
	.loc 3 1012 10
	cmpq	$-1, -88(%rbp)
	je	.L224
	.loc 3 1014 18
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 3 1015 24
	movq	$-1, -88(%rbp)
	jmp	.L225
.L224:
	.loc 3 1019 20
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	safe_read@PLT
	movq	%rax, -32(%rbp)
	.loc 3 1020 14
	cmpq	$-1, -32(%rbp)
	jne	.L225
.LBB60:
	.loc 3 1021 13
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L225:
.LBE60:
	.loc 3 1023 10
	cmpq	$0, -32(%rbp)
	je	.L231
	.loc 3 1025 16
	movq	-24(%rbp), %rax
	subq	-40(%rbp), %rax
	.loc 3 1025 14
	cmpq	%rax, -32(%rbp)
	cmovbe	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 3 1026 11
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	full_write@PLT
	.loc 3 1026 10
	cmpq	%rax, -32(%rbp)
	je	.L228
	.loc 3 1027 27
	call	__errno_location@PLT
	.loc 3 1027 16
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable
	.loc 3 1027 14
	xorl	$1, %eax
	.loc 3 1027 11
	testb	%al, %al
	je	.L228
.LBB61:
	.loc 3 1028 9
	leaq	.LC78(%rip), %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L228:
.LBE61:
	.loc 3 1029 13
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L223:
.LBE59:
	.loc 3 1009 9
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.L229
	.loc 3 1031 1
	jmp	.L232
.L231:
.LBB62:
	.loc 3 1024 9
	nop
.L232:
.LBE62:
	.loc 3 1031 1
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	bytes_chunk_extract, .-bytes_chunk_extract
	.section	.rodata
.LC79:
	.string	"a"
	.text
	.type	ofile_open, @function
ofile_open:
.LFB64:
	.loc 3 1054 1
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
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 3 1055 8
	movb	$0, -29(%rbp)
	.loc 3 1057 12
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1057 21
	movl	8(%rax), %eax
	.loc 3 1057 6
	testl	%eax, %eax
	jns	.L234
.LBB63:
	.loc 3 1060 47
	cmpq	$0, -48(%rbp)
	je	.L235
	.loc 3 1060 47 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	subq	$1, %rax
	jmp	.L236
.L235:
	.loc 3 1060 47 discriminator 2
	movq	-56(%rbp), %rax
	subq	$1, %rax
.L236:
	.loc 3 1060 14 is_stmt 1 discriminator 4
	movq	%rax, -24(%rbp)
.L247:
	.loc 3 1067 20
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1067 29
	movl	8(%rax), %eax
	.loc 3 1067 14
	cmpl	$-1, %eax
	jne	.L237
	.loc 3 1068 31
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1068 40
	movq	(%rax), %rax
	.loc 3 1068 18
	movq	%rax, %rdi
	call	create
	movl	%eax, -28(%rbp)
	jmp	.L238
.L237:
	.loc 3 1085 31
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1085 40
	movq	(%rax), %rax
	.loc 3 1085 20
	movl	$3073, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	movl	%eax, -28(%rbp)
.L238:
	.loc 3 1089 14
	cmpl	$0, -28(%rbp)
	jns	.L251
	.loc 3 1092 17
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1092 14
	cmpl	$24, %eax
	je	.L241
	.loc 3 1092 36 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1092 15 discriminator 1
	cmpl	$23, %eax
	je	.L241
.LBB64:
	.loc 3 1093 13
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L241:
.LBE64:
	.loc 3 1095 22
	movb	$1, -29(%rbp)
	.loc 3 1098 17
	jmp	.L242
.L245:
	.loc 3 1100 50
	cmpq	$0, -24(%rbp)
	je	.L243
	.loc 3 1100 50 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	jmp	.L244
.L243:
	.loc 3 1100 50 discriminator 2
	movq	-56(%rbp), %rax
	subq	$1, %rax
.L244:
	.loc 3 1100 24 is_stmt 1 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 3 1102 18 discriminator 4
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L242
.LBB65:
	.loc 3 1103 17
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L242:
.LBE65:
	.loc 3 1098 23
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1098 33
	movl	8(%rax), %eax
	.loc 3 1098 17
	testl	%eax, %eax
	js	.L245
	.loc 3 1107 28
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1107 15
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 3 1107 14
	testl	%eax, %eax
	je	.L246
.LBB66:
	.loc 3 1108 13
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L246:
.LBE66:
	.loc 3 1109 16
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1109 33
	movq	$0, 16(%rax)
	.loc 3 1110 16
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1110 31
	movl	$-2, 8(%rax)
	.loc 3 1067 14
	jmp	.L247
.L251:
	.loc 3 1090 13
	nop
	.loc 3 1113 12
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 1113 26
	movl	-28(%rbp), %eax
	movl	%eax, 8(%rdx)
	.loc 3 1114 18
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 3 1114 36
	movl	-28(%rbp), %eax
	leaq	.LC79(%rip), %rsi
	movl	%eax, %edi
	call	fdopen@PLT
	.loc 3 1114 34
	movq	%rax, 16(%rbx)
	.loc 3 1114 27
	movq	16(%rbx), %rax
	.loc 3 1114 10
	testq	%rax, %rax
	jne	.L248
.LBB67:
	.loc 3 1115 9
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L248:
.LBE67:
	.loc 3 1116 12
	movq	-48(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 1116 27
	movl	filter_pid(%rip), %eax
	movl	%eax, 24(%rdx)
	.loc 3 1117 18
	movl	$0, filter_pid(%rip)
.L234:
.LBE63:
	.loc 3 1120 10
	movzbl	-29(%rbp), %eax
	.loc 3 1121 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	ofile_open, .-ofile_open
	.type	lines_rr, @function
lines_rr:
.LFB65:
	.loc 3 1130 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	.loc 3 1131 8
	movb	$0, -88(%rbp)
	.loc 3 1132 8
	movb	$0, -87(%rbp)
	.loc 3 1135 9
	movq	$0, -72(%rbp)
	.loc 3 1138 6
	cmpq	$0, -104(%rbp)
	je	.L253
	.loc 3 1139 13
	movq	$1, -64(%rbp)
	jmp	.L277
.L253:
	.loc 3 1144 15
	movq	-112(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -72(%rbp)
	.loc 3 1147 19
	movq	$0, -80(%rbp)
	.loc 3 1147 7
	jmp	.L255
.L256:
	.loc 3 1149 11 discriminator 3
	call	next_file_name
	.loc 3 1150 35 discriminator 3
	movq	outfile(%rip), %rax
	.loc 3 1150 16 discriminator 3
	movq	-80(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-72(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	.loc 3 1150 35 discriminator 3
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 3 1150 33 discriminator 3
	movq	%rax, (%rbx)
	.loc 3 1151 16 discriminator 3
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1151 29 discriminator 3
	movl	$-1, 8(%rax)
	.loc 3 1152 16 discriminator 3
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1152 31 discriminator 3
	movq	$0, 16(%rax)
	.loc 3 1153 16 discriminator 3
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1153 30 discriminator 3
	movl	$0, 24(%rax)
	.loc 3 1147 42 discriminator 3
	addq	$1, -80(%rbp)
.L255:
	.loc 3 1147 7 discriminator 1
	movq	-80(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L256
	.loc 3 1155 14
	movq	$0, -80(%rbp)
	.loc 3 1156 18
	movb	$0, -86(%rbp)
.L277:
.LBB68:
	.loc 3 1161 13
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 3 1162 23
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	safe_read@PLT
	movq	%rax, -40(%rbp)
	.loc 3 1163 10
	cmpq	$-1, -40(%rbp)
	jne	.L257
.LBB69:
	.loc 3 1164 9
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L257:
.LBE69:
	.loc 3 1165 15
	cmpq	$0, -40(%rbp)
	je	.L285
	.loc 3 1167 11
	movq	-120(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 3 1169 13
	jmp	.L260
.L276:
.LBB70:
	.loc 3 1172 16
	movb	$0, -85(%rbp)
	.loc 3 1175 51
	movq	-32(%rbp), %rax
	subq	-56(%rbp), %rax
	.loc 3 1175 26
	movq	%rax, %rdx
	movl	eolchar(%rip), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -48(%rbp)
	.loc 3 1176 14
	cmpq	$0, -48(%rbp)
	je	.L261
	.loc 3 1178 21
	addq	$1, -48(%rbp)
	.loc 3 1179 20
	movb	$1, -85(%rbp)
	jmp	.L262
.L261:
	.loc 3 1182 20
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.L262:
	.loc 3 1183 29
	movq	-48(%rbp), %rax
	subq	-56(%rbp), %rax
	.loc 3 1183 20
	movq	%rax, -24(%rbp)
	.loc 3 1185 14
	cmpq	$0, -104(%rbp)
	je	.L263
	.loc 3 1187 18
	movq	-64(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.L264
	.loc 3 1187 32 discriminator 1
	movzbl	unbuffered(%rip), %eax
	testb	%al, %al
	je	.L264
	.loc 3 1189 23
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	full_write@PLT
	.loc 3 1189 22
	cmpq	%rax, -24(%rbp)
	je	.L266
.LBB71:
	.loc 3 1190 21
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L264:
.LBE71:
	.loc 3 1192 23
	movq	-64(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.L266
	.loc 3 1192 40 discriminator 1
	movq	stdout(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 3 1192 37 discriminator 1
	cmpq	$1, %rax
	je	.L266
.LBB72:
	.loc 3 1194 19
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	.loc 3 1195 19
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L266:
.LBE72:
	.loc 3 1197 18
	cmpb	$0, -85(%rbp)
	je	.L267
	.loc 3 1198 46
	movq	-64(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.L268
	.loc 3 1198 46 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	jmp	.L269
.L268:
	.loc 3 1198 46 discriminator 2
	movl	$1, %eax
.L269:
	.loc 3 1198 25 is_stmt 1 discriminator 4
	movq	%rax, -64(%rbp)
	jmp	.L267
.L263:
	.loc 3 1203 29
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ofile_open
	.loc 3 1203 26
	orb	-86(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -86(%rbp)
	.loc 3 1204 19
	movzbl	unbuffered(%rip), %eax
	.loc 3 1204 18
	testb	%al, %al
	je	.L270
	.loc 3 1208 40
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1208 23
	movl	8(%rax), %eax
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	full_write@PLT
	.loc 3 1208 22
	cmpq	%rax, -24(%rbp)
	je	.L271
	.loc 3 1209 39
	call	__errno_location@PLT
	.loc 3 1209 28
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable
	.loc 3 1209 26
	xorl	$1, %eax
	.loc 3 1209 23
	testb	%al, %al
	je	.L271
.LBB73:
	.loc 3 1211 23
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L270:
.LBE73:
	.loc 3 1215 24
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 3 1215 23
	cmpq	$1, %rax
	je	.L271
	.loc 3 1216 40
	call	__errno_location@PLT
	.loc 3 1216 29
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable
	.loc 3 1216 27
	xorl	$1, %eax
	.loc 3 1216 24
	testb	%al, %al
	je	.L271
.LBB74:
	.loc 3 1218 19
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L271:
.LBE74:
	.loc 3 1222 32
	call	__errno_location@PLT
	.loc 3 1222 21
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable
	.loc 3 1222 19
	xorl	$1, %eax
	.loc 3 1222 18
	testb	%al, %al
	je	.L272
	.loc 3 1223 23
	movb	$1, -87(%rbp)
.L272:
	.loc 3 1225 18
	cmpb	$0, -86(%rbp)
	je	.L273
	.loc 3 1227 36
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1227 23
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 3 1227 22
	testl	%eax, %eax
	je	.L274
.LBB75:
	.loc 3 1229 23
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L274:
.LBE75:
	.loc 3 1232 24
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1232 39
	movq	$0, 16(%rax)
	.loc 3 1233 24
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1233 37
	movl	$-2, 8(%rax)
.L273:
	.loc 3 1235 18
	cmpb	$0, -85(%rbp)
	je	.L267
	.loc 3 1235 24 discriminator 1
	addq	$1, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.L267
	.loc 3 1237 27
	movb	$1, -88(%rbp)
	.loc 3 1239 23
	movzbl	-87(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1239 22
	testb	%al, %al
	jne	.L286
	.loc 3 1241 25
	movb	$0, -87(%rbp)
	.loc 3 1242 26
	movq	$0, -80(%rbp)
.L267:
	.loc 3 1246 14
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.L260:
.LBE70:
	.loc 3 1169 13
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L276
.LBE68:
	.loc 3 1160 5
	jmp	.L277
.L285:
.LBB77:
	.loc 3 1166 9
	nop
	jmp	.L259
.L286:
.LBB76:
	.loc 3 1240 21
	nop
.L259:
.LBE76:
.LBE77:
	.loc 3 1255 6
	cmpq	$0, -104(%rbp)
	jne	.L278
.LBB78:
	.loc 3 1257 11
	cmpb	$0, -88(%rbp)
	je	.L279
	.loc 3 1257 11 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax
	jmp	.L280
.L279:
	.loc 3 1257 11 discriminator 2
	movq	-80(%rbp), %rax
.L280:
	.loc 3 1257 11 discriminator 4
	movl	%eax, -84(%rbp)
	.loc 3 1258 19 is_stmt 1 discriminator 4
	movq	$0, -80(%rbp)
	.loc 3 1258 7 discriminator 4
	jmp	.L281
.L284:
	.loc 3 1260 22
	movl	-84(%rbp), %eax
	cltq
	.loc 3 1260 14
	cmpq	%rax, -80(%rbp)
	jb	.L282
	.loc 3 1260 36 discriminator 1
	movzbl	elide_empty_files(%rip), %eax
	xorl	$1, %eax
	.loc 3 1260 33 discriminator 1
	testb	%al, %al
	je	.L282
	.loc 3 1261 27
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ofile_open
	.loc 3 1261 24
	orb	-86(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -86(%rbp)
.L282:
	.loc 3 1262 20
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1262 28
	movl	8(%rax), %eax
	.loc 3 1262 14
	testl	%eax, %eax
	js	.L283
	.loc 3 1264 48
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1264 56
	movq	(%rax), %rcx
	.loc 3 1264 28
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1263 13
	movl	24(%rax), %edx
	.loc 3 1263 49
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	.loc 3 1263 13
	movl	8(%rax), %esi
	.loc 3 1263 28
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdi
	movq	-72(%rbp), %rax
	addq	%rdi, %rax
	.loc 3 1263 13
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	closeout
.L283:
	.loc 3 1265 16 discriminator 2
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1265 29 discriminator 2
	movl	$-2, 8(%rax)
	.loc 3 1258 42 discriminator 2
	addq	$1, -80(%rbp)
.L281:
	.loc 3 1258 7 discriminator 1
	movq	-80(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L284
.L278:
.LBE78:
	.loc 3 1268 3
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 1269 1
	nop
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	lines_rr, .-lines_rr
	.section	.rodata
.LC80:
	.string	"invalid number of chunks"
.LC81:
	.string	"invalid chunk number"
	.text
	.type	parse_chunk, @function
parse_chunk:
.LFB66:
	.loc 3 1284 1
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
	.loc 3 1286 26
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1285 32
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 3 1285 14
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC19(%rip), %rcx
	movq	$-1, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 3 1285 12
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 3 1287 13
	movq	optarg(%rip), %rax
	.loc 3 1287 6
	cmpq	%rax, -24(%rbp)
	je	.L289
	.loc 3 1289 14
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	.loc 3 1291 30
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 3 1290 18
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	leaq	.LC19(%rip), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 3 1290 16
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L289:
	.loc 3 1293 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	parse_chunk, .-parse_chunk
	.section	.rodata
.LC82:
	.string	"/usr/local/share/locale"
.LC83:
	.string	"x"
.LC84:
	.string	"0123456789C:a:b:del:n:t:ux"
.LC85:
	.string	"invalid suffix length"
	.align 8
.LC86:
	.string	"invalid suffix %s, contains directory separator"
	.align 8
.LC87:
	.string	"cannot split in more than one way"
.LC88:
	.string	"invalid number of bytes"
.LC89:
	.string	"invalid number of lines"
.LC90:
	.string	"r/"
.LC91:
	.string	"l/"
.LC92:
	.string	"empty record separator"
.LC93:
	.string	"\\0"
.LC94:
	.string	"multi-character separator %s"
	.align 8
.LC95:
	.string	"multiple separator characters specified"
	.align 8
.LC96:
	.string	"line count option -%s%c... is too large"
.LC97:
	.string	"0123456789"
.LC98:
	.string	"0123456789abcdef"
	.align 8
.LC99:
	.string	"%s: invalid start value for numerical suffix"
	.align 8
.LC100:
	.string	"%s: invalid start value for hexadecimal suffix"
.LC101:
	.string	"invalid IO block size"
.LC102:
	.string	"Richard M. Stallman"
.LC103:
	.string	"Torbjorn Granlund"
	.align 8
.LC104:
	.string	"--filter does not process a chunk extracted to stdout"
.LC105:
	.string	"0"
.LC106:
	.string	"%s: %s"
.LC107:
	.string	"extra operand %s"
	.align 8
.LC108:
	.string	"numerical suffix start value is too large for the suffix length"
.LC109:
	.string	"cannot open %s for reading"
	.align 8
.LC110:
	.string	"%s: cannot determine file size"
	.text
	.globl	main
	.type	main, @function
main:
.LFB67:
	.loc 3 1298 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$304, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -308(%rbp)
	movq	%rsi, -320(%rbp)
	.loc 3 1298 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 1299 19
	movl	$0, -296(%rbp)
	.loc 3 1300 10
	movq	$0, -264(%rbp)
	.loc 3 1301 22
	call	getpagesize@PLT
	.loc 3 1301 10
	cltq
	movq	%rax, -240(%rbp)
	.loc 3 1302 13
	movq	$0, -280(%rbp)
	.loc 3 1303 13
	movq	$0, -272(%rbp)
	.loc 3 1307 7
	movl	$0, -292(%rbp)
	.loc 3 1308 9
	movabsq	$9223372036854775807, %rax
	movq	%rax, -256(%rbp)
	.loc 3 1311 3
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 3 1312 3
	leaq	.LC19(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 3 1313 3
	leaq	.LC82(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 3 1314 3
	leaq	.LC5(%rip), %rdi
	call	textdomain@PLT
	.loc 3 1316 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 3 1320 12
	leaq	.LC78(%rip), %rdi
	call	bad_cast
	.loc 3 1320 10
	movq	%rax, infile(%rip)
	.loc 3 1321 13
	leaq	.LC83(%rip), %rdi
	call	bad_cast
	.loc 3 1321 11
	movq	%rax, outbase(%rip)
.L346:
.LBB79:
	.loc 3 1326 32
	movl	optind(%rip), %eax
	.loc 3 1326 41
	testl	%eax, %eax
	je	.L291
	.loc 3 1326 41 is_stmt 0 discriminator 1
	movl	optind(%rip), %eax
	jmp	.L292
.L291:
	.loc 3 1326 41 discriminator 2
	movl	$1, %eax
.L292:
	.loc 3 1326 11 is_stmt 1 discriminator 4
	movl	%eax, -288(%rbp)
	.loc 3 1329 11 discriminator 4
	movq	-320(%rbp), %rsi
	movl	-308(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC84(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -284(%rbp)
	.loc 3 1331 10 discriminator 4
	cmpl	$-1, -284(%rbp)
	je	.L379
	.loc 3 1334 7
	cmpl	$131, -284(%rbp)
	jg	.L295
	cmpl	$48, -284(%rbp)
	jge	.L296
	cmpl	$-131, -284(%rbp)
	je	.L297
	cmpl	$-130, -284(%rbp)
	je	.L298
	jmp	.L295
.L296:
	movl	-284(%rbp), %eax
	subl	$48, %eax
	cmpl	$83, %eax
	ja	.L295
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L300(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L300(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L300:
	.long	.L313-.L300
	.long	.L313-.L300
	.long	.L313-.L300
	.long	.L313-.L300
	.long	.L313-.L300
	.long	.L313-.L300
	.long	.L313-.L300
	.long	.L313-.L300
	.long	.L313-.L300
	.long	.L313-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L312-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L311-.L300
	.long	.L310-.L300
	.long	.L295-.L300
	.long	.L304-.L300
	.long	.L309-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L308-.L300
	.long	.L295-.L300
	.long	.L307-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L306-.L300
	.long	.L305-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L304-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L295-.L300
	.long	.L303-.L300
	.long	.L302-.L300
	.long	.L301-.L300
	.long	.L299-.L300
	.text
.L311:
	.loc 3 1338 43
	leaq	.LC85(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1337 27
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC19(%rip), %rcx
	movabsq	$2305843009213693951, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 3 1337 25
	movq	%rax, suffix_length(%rip)
	.loc 3 1339 11
	jmp	.L314
.L299:
	.loc 3 1342 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	.loc 3 1342 39
	movq	optarg(%rip), %rdx
	.loc 3 1342 14
	cmpq	%rdx, %rax
	je	.L315
	.loc 3 1344 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 3 1345 22
	leaq	.LC86(%rip), %rdi
	call	gettext@PLT
	.loc 3 1344 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1347 15
	movl	$1, %edi
	call	usage
.L315:
	.loc 3 1349 29
	movq	optarg(%rip), %rax
	movq	%rax, additional_suffix(%rip)
	.loc 3 1350 11
	jmp	.L314
.L310:
	.loc 3 1353 14
	cmpl	$0, -296(%rbp)
	je	.L316
	.loc 3 1354 13
	leaq	.LC87(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L316:
	.loc 3 1355 22
	movl	$1, -296(%rbp)
	.loc 3 1360 33
	leaq	.LC88(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1359 21
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	multipliers.6751(%rip), %rcx
	movabsq	$9223372036854775807, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 3 1359 19
	movq	%rax, -272(%rbp)
	.loc 3 1361 11
	jmp	.L314
.L308:
	.loc 3 1364 14
	cmpl	$0, -296(%rbp)
	je	.L317
	.loc 3 1365 13
	leaq	.LC87(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L317:
	.loc 3 1366 22
	movl	$3, -296(%rbp)
	.loc 3 1368 33
	leaq	.LC89(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1367 21
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC19(%rip), %rcx
	movq	$-1, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 3 1367 19
	movq	%rax, -272(%rbp)
	.loc 3 1369 11
	jmp	.L314
.L312:
	.loc 3 1372 14
	cmpl	$0, -296(%rbp)
	je	.L318
	.loc 3 1373 13
	leaq	.LC87(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L318:
	.loc 3 1374 22
	movl	$2, -296(%rbp)
	.loc 3 1376 46
	leaq	.LC88(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1375 21
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	multipliers.6751(%rip), %rcx
	movabsq	$9223372036854775807, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 3 1375 19
	movq	%rax, -272(%rbp)
	.loc 3 1377 11
	jmp	.L314
.L307:
	.loc 3 1380 14
	cmpl	$0, -296(%rbp)
	je	.L320
	.loc 3 1381 13
	leaq	.LC87(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L321:
	.loc 3 1384 19
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
.L320:
	.loc 3 1383 18
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	.loc 3 1383 17
	testl	%eax, %eax
	jne	.L321
	.loc 3 1385 15
	movq	optarg(%rip), %rax
	movl	$2, %edx
	leaq	.LC90(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 3 1385 14
	testl	%eax, %eax
	jne	.L322
	.loc 3 1387 26
	movl	$7, -296(%rbp)
	.loc 3 1388 22
	movq	optarg(%rip), %rax
	addq	$2, %rax
	movq	%rax, optarg(%rip)
	jmp	.L323
.L322:
	.loc 3 1390 20
	movq	optarg(%rip), %rax
	movl	$2, %edx
	leaq	.LC91(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 3 1390 19
	testl	%eax, %eax
	jne	.L324
	.loc 3 1392 26
	movl	$6, -296(%rbp)
	.loc 3 1393 22
	movq	optarg(%rip), %rax
	addq	$2, %rax
	movq	%rax, optarg(%rip)
	jmp	.L323
.L324:
	.loc 3 1396 24
	movl	$5, -296(%rbp)
.L323:
	.loc 3 1397 24
	movq	optarg(%rip), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -232(%rbp)
	.loc 3 1397 14
	cmpq	$0, -232(%rbp)
	je	.L325
	.loc 3 1398 13
	movq	-232(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	leaq	-280(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_chunk
	.loc 3 1402 11
	jmp	.L314
.L325:
	.loc 3 1401 35
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1400 23
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC19(%rip), %rcx
	movq	$-1, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 3 1400 21
	movq	%rax, -272(%rbp)
	.loc 3 1402 11
	jmp	.L314
.L305:
	.loc 3 1405 22
	movb	$1, unbuffered(%rip)
	.loc 3 1406 11
	jmp	.L314
.L306:
.LBB80:
	.loc 3 1410 33
	movq	optarg(%rip), %rax
	.loc 3 1410 18
	movzbl	(%rax), %eax
	movb	%al, -298(%rbp)
	.loc 3 1411 16
	cmpb	$0, -298(%rbp)
	jne	.L327
.LBB81:
	.loc 3 1412 15
	leaq	.LC92(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L327:
.LBE81:
	.loc 3 1413 23
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 3 1413 16
	testb	%al, %al
	je	.L328
	.loc 3 1415 21
	movq	optarg(%rip), %rax
	leaq	.LC93(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 1415 20
	testl	%eax, %eax
	jne	.L329
	.loc 3 1416 26
	movb	$0, -298(%rbp)
	jmp	.L328
.L329:
.LBB82:
	.loc 3 1423 21
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC94(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L328:
.LBE82:
	.loc 3 1428 19
	movl	eolchar(%rip), %eax
	.loc 3 1428 16
	testl	%eax, %eax
	js	.L330
	.loc 3 1428 40 discriminator 1
	movsbl	-298(%rbp), %edx
	movl	eolchar(%rip), %eax
	.loc 3 1428 30 discriminator 1
	cmpl	%eax, %edx
	je	.L330
.LBB83:
	.loc 3 1430 17
	leaq	.LC95(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L330:
.LBE83:
	.loc 3 1434 21
	movsbl	-298(%rbp), %eax
	movl	%eax, eolchar(%rip)
.LBE80:
	.loc 3 1436 11
	jmp	.L314
.L313:
	.loc 3 1448 14
	cmpl	$0, -296(%rbp)
	jne	.L331
	.loc 3 1450 26
	movl	$4, -296(%rbp)
	.loc 3 1451 23
	movq	$0, -272(%rbp)
.L331:
	.loc 3 1453 14
	cmpl	$0, -296(%rbp)
	je	.L332
	.loc 3 1453 40 discriminator 1
	cmpl	$4, -296(%rbp)
	je	.L332
	.loc 3 1454 13
	leaq	.LC87(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L332:
	.loc 3 1455 14
	cmpl	$0, -292(%rbp)
	je	.L333
	.loc 3 1455 34 discriminator 1
	movl	-292(%rbp), %eax
	cmpl	-288(%rbp), %eax
	je	.L333
	.loc 3 1456 21
	movq	$0, -272(%rbp)
.L333:
	.loc 3 1457 25
	movl	-288(%rbp), %eax
	movl	%eax, -292(%rbp)
.LBB84:
	.loc 3 1458 16
	movq	-272(%rbp), %rax
	.loc 3 1458 15
	movabsq	$1844674407370955161, %rdx
	cmpq	%rdx, %rax
	ja	.L334
	.loc 3 1458 16 discriminator 1
	movq	-272(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-284(%rbp), %eax
	subl	$48, %eax
	cltq
	addq	%rax, %rdx
	movq	-272(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L334
	.loc 3 1458 16 is_stmt 0 discriminator 3
	movq	-272(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-284(%rbp), %eax
	subl	$48, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	.loc 3 1458 15 is_stmt 1 discriminator 3
	movl	$0, %eax
	jmp	.L335
.L334:
	.loc 3 1458 15 is_stmt 0 discriminator 4
	movl	$1, %eax
.L335:
	.loc 3 1458 14 is_stmt 1 discriminator 6
	testb	%al, %al
	je	.L380
.LBB85:
	.loc 3 1461 15
	movq	-272(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rbx
	leaq	.LC96(%rip), %rdi
	call	gettext@PLT
	movl	-284(%rbp), %edx
	movl	%edx, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L304:
.LBE85:
.LBE84:
	.loc 3 1469 14
	cmpl	$100, -284(%rbp)
	jne	.L337
	.loc 3 1470 29
	leaq	.LC97(%rip), %rax
	movq	%rax, suffix_alphabet(%rip)
	jmp	.L338
.L337:
	.loc 3 1472 29
	leaq	.LC98(%rip), %rax
	movq	%rax, suffix_alphabet(%rip)
.L338:
	.loc 3 1473 15
	movq	optarg(%rip), %rax
	.loc 3 1473 14
	testq	%rax, %rax
	je	.L381
	.loc 3 1475 19
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 3 1475 38
	movq	suffix_alphabet(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	.loc 3 1475 18
	cmpq	%rax, %rbx
	je	.L343
	.loc 3 1477 19
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	cmpl	$100, -284(%rbp)
	jne	.L341
	.loc 3 1479 28
	leaq	.LC99(%rip), %rdi
	call	gettext@PLT
	jmp	.L342
.L341:
	.loc 3 1480 28
	leaq	.LC100(%rip), %rdi
	call	gettext@PLT
.L342:
	.loc 3 1477 19
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1482 19
	movl	$1, %edi
	call	usage
.L345:
	.loc 3 1488 27
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
.L343:
	.loc 3 1487 26
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 3 1487 25
	cmpb	$48, %al
	jne	.L344
	.loc 3 1487 53 discriminator 1
	movq	optarg(%rip), %rax
	addq	$1, %rax
	.loc 3 1487 44 discriminator 1
	movzbl	(%rax), %eax
	.loc 3 1487 41 discriminator 1
	testb	%al, %al
	jne	.L345
.L344:
	.loc 3 1489 40
	movq	optarg(%rip), %rax
	movq	%rax, numeric_suffix_start(%rip)
	.loc 3 1492 11
	jmp	.L381
.L309:
	.loc 3 1495 29
	movb	$1, elide_empty_files(%rip)
	.loc 3 1496 11
	jmp	.L314
.L302:
	.loc 3 1499 26
	movq	optarg(%rip), %rax
	movq	%rax, filter_command(%rip)
	.loc 3 1500 11
	jmp	.L314
.L301:
	.loc 3 1504 50
	leaq	.LC101(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 3 1503 25
	movq	-240(%rbp), %rax
	notq	%rax
	movq	%rax, %rdx
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	leaq	multipliers.6751(%rip), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	movq	%rax, -264(%rbp)
	.loc 3 1505 11
	jmp	.L314
.L303:
	.loc 3 1508 19
	movb	$1, verbose(%rip)
	.loc 3 1509 11
	jmp	.L314
.L298:
	.loc 3 1511 9
	movl	$0, %edi
	call	usage
.L297:
	.loc 3 1513 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC102(%rip), %r9
	leaq	.LC103(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L295:
	.loc 3 1516 11
	movl	$1, %edi
	call	usage
.L380:
	.loc 3 1465 11
	nop
	jmp	.L346
.L381:
	.loc 3 1492 11
	nop
.L314:
.LBE79:
	.loc 3 1324 5
	jmp	.L346
.L379:
.LBB86:
	.loc 3 1332 9
	nop
.LBE86:
	.loc 3 1520 15
	movq	-280(%rbp), %rax
	.loc 3 1520 6
	testq	%rax, %rax
	je	.L347
	.loc 3 1520 20 discriminator 1
	movq	filter_command(%rip), %rax
	testq	%rax, %rax
	je	.L347
	.loc 3 1522 20
	leaq	.LC104(%rip), %rdi
	call	gettext@PLT
	.loc 3 1522 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1523 7
	movl	$1, %edi
	call	usage
.L347:
	.loc 3 1527 6
	cmpl	$0, -296(%rbp)
	jne	.L348
	.loc 3 1529 18
	movl	$3, -296(%rbp)
	.loc 3 1530 15
	movq	$1000, -272(%rbp)
.L348:
	.loc 3 1533 15
	movq	-272(%rbp), %rax
	.loc 3 1533 6
	testq	%rax, %rax
	jne	.L349
	.loc 3 1535 7
	leaq	.LC105(%rip), %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC89(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %r8
	movq	%rax, %rcx
	leaq	.LC106(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1536 7
	movl	$1, %edi
	call	usage
.L349:
	.loc 3 1539 15
	movl	eolchar(%rip), %eax
	.loc 3 1539 6
	testl	%eax, %eax
	jns	.L350
	.loc 3 1540 13
	movl	$10, eolchar(%rip)
.L350:
	.loc 3 1542 3
	movq	-272(%rbp), %rax
	movl	-296(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_suffix_length
	.loc 3 1546 14
	movl	optind(%rip), %eax
	.loc 3 1546 6
	cmpl	%eax, -308(%rbp)
	jle	.L351
	.loc 3 1547 25
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 3 1547 18
	leaq	0(,%rax,8), %rdx
	movq	-320(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 3 1547 12
	movq	%rax, infile(%rip)
.L351:
	.loc 3 1549 14
	movl	optind(%rip), %eax
	.loc 3 1549 6
	cmpl	%eax, -308(%rbp)
	jle	.L352
	.loc 3 1550 26
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 3 1550 19
	leaq	0(,%rax,8), %rdx
	movq	-320(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 3 1550 13
	movq	%rax, outbase(%rip)
.L352:
	.loc 3 1552 14
	movl	optind(%rip), %eax
	.loc 3 1552 6
	cmpl	%eax, -308(%rbp)
	jle	.L353
	.loc 3 1554 54
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-320(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1554 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 3 1554 20
	leaq	.LC107(%rip), %rdi
	call	gettext@PLT
	.loc 3 1554 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1555 7
	movl	$1, %edi
	call	usage
.L353:
	.loc 3 1560 7
	movq	numeric_suffix_start(%rip), %rax
	.loc 3 1560 6
	testq	%rax, %rax
	je	.L354
	.loc 3 1560 31 discriminator 1
	movq	numeric_suffix_start(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 3 1560 61 discriminator 1
	movq	suffix_length(%rip), %rdx
	.loc 3 1560 28 discriminator 1
	cmpq	%rdx, %rax
	jbe	.L354
	.loc 3 1562 20
	leaq	.LC108(%rip), %rdi
	call	gettext@PLT
	.loc 3 1562 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1564 7
	movl	$1, %edi
	call	usage
.L354:
	.loc 3 1568 9
	movq	infile(%rip), %rax
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 1568 6
	testl	%eax, %eax
	je	.L355
	.loc 3 1569 10
	movq	infile(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	fd_reopen@PLT
	.loc 3 1569 7
	testl	%eax, %eax
	jns	.L355
.LBB87:
	.loc 3 1570 5
	movq	infile(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC109(%rip), %rdi
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
.L355:
.LBE87:
	.loc 3 1574 3
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	.loc 3 1578 7
	leaq	in_stat_buf(%rip), %rsi
	movl	$0, %edi
	call	fstat@PLT
	.loc 3 1578 6
	testl	%eax, %eax
	je	.L356
.LBB88:
	.loc 3 1579 5
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L356:
.LBE88:
	.loc 3 1581 8
	cmpq	$0, -264(%rbp)
	setne	%al
	movb	%al, -297(%rbp)
	.loc 3 1582 7
	movzbl	-297(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1582 6
	testb	%al, %al
	je	.L357
	.loc 3 1583 19
	pushq	136+in_stat_buf(%rip)
	pushq	128+in_stat_buf(%rip)
	pushq	120+in_stat_buf(%rip)
	pushq	112+in_stat_buf(%rip)
	pushq	104+in_stat_buf(%rip)
	pushq	96+in_stat_buf(%rip)
	pushq	88+in_stat_buf(%rip)
	pushq	80+in_stat_buf(%rip)
	pushq	72+in_stat_buf(%rip)
	pushq	64+in_stat_buf(%rip)
	pushq	56+in_stat_buf(%rip)
	pushq	48+in_stat_buf(%rip)
	pushq	40+in_stat_buf(%rip)
	pushq	32+in_stat_buf(%rip)
	pushq	24+in_stat_buf(%rip)
	pushq	16+in_stat_buf(%rip)
	pushq	8+in_stat_buf(%rip)
	pushq	in_stat_buf(%rip)
	call	io_blksize
	addq	$144, %rsp
	movq	%rax, -264(%rbp)
.L357:
	.loc 3 1585 13
	movq	-264(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -224(%rbp)
	.loc 3 1586 15
	movq	-240(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ptr_align
	movq	%rax, -216(%rbp)
	.loc 3 1587 10
	movq	$-1, -248(%rbp)
	.loc 3 1589 6
	cmpl	$5, -296(%rbp)
	je	.L358
	.loc 3 1589 38 discriminator 1
	cmpl	$6, -296(%rbp)
	jne	.L359
.L358:
	.loc 3 1591 19
	movq	-264(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	in_stat_buf(%rip), %rsi
	movl	$0, %edi
	call	input_file_size
	movq	%rax, -256(%rbp)
	.loc 3 1593 10
	cmpq	$0, -256(%rbp)
	jns	.L360
.LBB89:
	.loc 3 1594 9
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	leaq	.LC110(%rip), %rdi
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
.L360:
.LBE89:
	.loc 3 1596 22
	movq	-256(%rbp), %rax
	.loc 3 1596 20
	cmpq	%rax, -264(%rbp)
	cmovbe	-264(%rbp), %rax
	movq	%rax, -248(%rbp)
	.loc 3 1598 21
	movq	-272(%rbp), %rax
	.loc 3 1598 10
	testq	%rax, %rax
	jns	.L361
.LBB90:
	.loc 3 1601 11
	movq	-272(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %r8
	movq	%rax, %rcx
	leaq	.LC106(%rip), %rdx
	movl	$75, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L361:
.LBE90:
	.loc 3 1607 19
	movq	-272(%rbp), %rdx
	movq	-256(%rbp), %rax
	cmpq	%rax, %rdx
	cmovnb	%rdx, %rax
	.loc 3 1607 17
	movq	%rax, -256(%rbp)
.L359:
	.loc 3 1612 7
	movq	filter_command(%rip), %rax
	.loc 3 1612 6
	testq	%rax, %rax
	je	.L362
.LBB91:
	.loc 3 1615 7
	leaq	newblocked(%rip), %rdi
	call	sigemptyset@PLT
	.loc 3 1616 7
	leaq	-208(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$13, %edi
	call	sigaction@PLT
	.loc 3 1617 15
	movq	-208(%rbp), %rax
	.loc 3 1617 10
	cmpq	$1, %rax
	je	.L363
	.loc 3 1618 9
	movl	$13, %esi
	leaq	newblocked(%rip), %rdi
	call	sigaddset@PLT
.L363:
	.loc 3 1619 7
	leaq	oldblocked(%rip), %rdx
	leaq	newblocked(%rip), %rsi
	movl	$0, %edi
	call	sigprocmask@PLT
.L362:
	cmpl	$7, -296(%rbp)
	ja	.L364
	movl	-296(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L366(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L366(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L366:
	.long	.L364-.L366
	.long	.L371-.L366
	.long	.L370-.L366
	.long	.L369-.L366
	.long	.L369-.L366
	.long	.L368-.L366
	.long	.L367-.L366
	.long	.L365-.L366
	.text
.L369:
.LBE91:
	.loc 3 1626 7
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lines_split
	.loc 3 1627 7
	jmp	.L372
.L371:
	.loc 3 1630 7
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movl	$0, %r8d
	movq	$-1, %rcx
	movq	%rax, %rdi
	call	bytes_split
	.loc 3 1631 7
	jmp	.L372
.L370:
	.loc 3 1634 7
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	line_bytes_split
	.loc 3 1635 7
	jmp	.L372
.L368:
	.loc 3 1638 19
	movq	-280(%rbp), %rax
	.loc 3 1638 10
	testq	%rax, %rax
	jne	.L373
	.loc 3 1639 9
	movq	-272(%rbp), %rsi
	movq	-256(%rbp), %rax
	movq	-272(%rbp), %rbx
	movl	$0, %edx
	divq	%rbx
	movq	%rax, %rdi
	movq	-248(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	bytes_split
	.loc 3 1644 7
	jmp	.L372
.L373:
	.loc 3 1642 9
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	-256(%rbp), %r8
	movq	-248(%rbp), %rdi
	movq	-264(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bytes_chunk_extract
	.loc 3 1644 7
	jmp	.L372
.L367:
	.loc 3 1647 7
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	-256(%rbp), %r8
	movq	-248(%rbp), %rdi
	movq	-264(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	lines_chunk_split
	.loc 3 1649 7
	jmp	.L372
.L365:
	.loc 3 1654 7
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	%rax, %rdi
	call	lines_rr
	.loc 3 1655 7
	jmp	.L372
.L364:
	.loc 3 1658 7
	call	abort@PLT
.L372:
	.loc 3 1661 3
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 1663 7
	movl	$0, %edi
	call	close@PLT
	.loc 3 1663 6
	testl	%eax, %eax
	je	.L375
.LBB92:
	.loc 3 1664 5
	movq	infile(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L375:
.LBE92:
	.loc 3 1665 3
	movq	outfile(%rip), %rcx
	movl	filter_pid(%rip), %edx
	movl	output_desc(%rip), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	closeout
	.loc 3 1667 10
	movl	$0, %eax
	.loc 3 1668 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L377
	call	__stack_chk_fail@PLT
.L377:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	main, .-main
	.local	outfile_length.6451
	.comm	outfile_length.6451,8,8
	.local	outbase_length.6450
	.comm	outbase_length.6450,8,8
	.local	addsuf_length.6452
	.comm	addsuf_length.6452,8,8
	.local	sufindex.6449
	.comm	sufindex.6449,8,8
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6455, @object
	.size	__PRETTY_FUNCTION__.6455, 15
__PRETTY_FUNCTION__.6455:
	.string	"next_file_name"
	.align 16
	.type	__PRETTY_FUNCTION__.6610, @object
	.size	__PRETTY_FUNCTION__.6610, 18
__PRETTY_FUNCTION__.6610:
	.string	"lines_chunk_split"
	.align 16
	.type	__PRETTY_FUNCTION__.6653, @object
	.size	__PRETTY_FUNCTION__.6653, 20
__PRETTY_FUNCTION__.6653:
	.string	"bytes_chunk_extract"
	.align 8
	.type	multipliers.6751, @object
	.size	multipliers.6751, 13
multipliers.6751:
	.string	"bEGKkMmPTYZ0"
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 15 "./lib/sys/select.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h"
	.file 20 "/usr/include/signal.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/sigaction.h"
	.file 22 "/usr/include/time.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 24 "/usr/include/unistd.h"
	.file 25 "/usr/include/errno.h"
	.file 26 "src/version.h"
	.file 27 "./lib/exitfail.h"
	.file 28 "/usr/include/stdint.h"
	.file 29 "./lib/timespec.h"
	.file 30 "/usr/include/ctype.h"
	.file 31 "./lib/version-etc.h"
	.file 32 "./lib/progname.h"
	.file 33 "./lib/quotearg.h"
	.file 34 "./lib/error.h"
	.file 35 "./lib/quote.h"
	.file 36 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2398
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF357
	.byte	0xc
	.long	.LASF358
	.long	.LASF359
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
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
	.uleb128 0x2
	.long	.LASF7
	.byte	0x5
	.byte	0x2a
	.byte	0x16
	.long	0x40
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF14
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF15
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF16
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x7d
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x7d
	.uleb128 0x2
	.long	.LASF18
	.byte	0x5
	.byte	0x9a
	.byte	0x19
	.long	0x65
	.uleb128 0x7
	.long	0x65
	.long	0x10c
	.uleb128 0x8
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.byte	0x9c
	.byte	0x1b
	.long	0x7d
	.uleb128 0x2
	.long	.LASF20
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x7d
	.uleb128 0x2
	.long	.LASF21
	.byte	0x5
	.byte	0xae
	.byte	0x1d
	.long	0x7d
	.uleb128 0x2
	.long	.LASF22
	.byte	0x5
	.byte	0xb3
	.byte	0x1c
	.long	0x7d
	.uleb128 0x2
	.long	.LASF23
	.byte	0x5
	.byte	0xc4
	.byte	0x21
	.long	0x7d
	.uleb128 0x9
	.byte	0x8
	.long	0x14e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF24
	.uleb128 0xa
	.long	0x14e
	.uleb128 0xb
	.long	.LASF73
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x2e1
	.uleb128 0xc
	.long	.LASF25
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xc
	.long	.LASF26
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x148
	.byte	0x8
	.uleb128 0xc
	.long	.LASF27
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x148
	.byte	0x10
	.uleb128 0xc
	.long	.LASF28
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x148
	.byte	0x18
	.uleb128 0xc
	.long	.LASF29
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x148
	.byte	0x20
	.uleb128 0xc
	.long	.LASF30
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x148
	.byte	0x28
	.uleb128 0xc
	.long	.LASF31
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x148
	.byte	0x30
	.uleb128 0xc
	.long	.LASF32
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x148
	.byte	0x38
	.uleb128 0xc
	.long	.LASF33
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x148
	.byte	0x40
	.uleb128 0xc
	.long	.LASF34
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x148
	.byte	0x48
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x148
	.byte	0x50
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x148
	.byte	0x58
	.uleb128 0xc
	.long	.LASF37
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x2fa
	.byte	0x60
	.uleb128 0xc
	.long	.LASF38
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x300
	.byte	0x68
	.uleb128 0xc
	.long	.LASF39
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0xd8
	.byte	0x78
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xc
	.long	.LASF43
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xc
	.long	.LASF44
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x306
	.byte	0x83
	.uleb128 0xc
	.long	.LASF45
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x316
	.byte	0x88
	.uleb128 0xc
	.long	.LASF46
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xe4
	.byte	0x90
	.uleb128 0xc
	.long	.LASF47
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x321
	.byte	0x98
	.uleb128 0xc
	.long	.LASF48
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x32c
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF49
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x300
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF50
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF52
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x332
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x15a
	.uleb128 0xd
	.long	.LASF360
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF55
	.uleb128 0x9
	.byte	0x8
	.long	0x2f5
	.uleb128 0x9
	.byte	0x8
	.long	0x15a
	.uleb128 0x7
	.long	0x14e
	.long	0x316
	.uleb128 0x8
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x2ed
	.uleb128 0xe
	.long	.LASF56
	.uleb128 0x9
	.byte	0x8
	.long	0x31c
	.uleb128 0xe
	.long	.LASF57
	.uleb128 0x9
	.byte	0x8
	.long	0x327
	.uleb128 0x7
	.long	0x14e
	.long	0x342
	.uleb128 0x8
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x155
	.uleb128 0xa
	.long	0x342
	.uleb128 0x2
	.long	.LASF58
	.byte	0x8
	.byte	0x3f
	.byte	0x11
	.long	0xd8
	.uleb128 0xa
	.long	0x34d
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x36a
	.uleb128 0x9
	.byte	0x8
	.long	0x2e1
	.uleb128 0xf
	.long	.LASF60
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x36a
	.uleb128 0xf
	.long	.LASF61
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x36a
	.uleb128 0xf
	.long	.LASF62
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0x7
	.long	0x348
	.long	0x39f
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.long	0x394
	.uleb128 0xf
	.long	.LASF63
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x39f
	.uleb128 0xf
	.long	.LASF64
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF65
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x39f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF66
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF67
	.uleb128 0x2
	.long	.LASF68
	.byte	0xa
	.byte	0x61
	.byte	0x11
	.long	0xf0
	.uleb128 0x2
	.long	.LASF69
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x118
	.uleb128 0x11
	.byte	0x80
	.byte	0xc
	.byte	0x5
	.byte	0x9
	.long	0x405
	.uleb128 0xc
	.long	.LASF70
	.byte	0xc
	.byte	0x7
	.byte	0x15
	.long	0x405
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x39
	.long	0x415
	.uleb128 0x8
	.long	0x39
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.long	.LASF71
	.byte	0xc
	.byte	0x8
	.byte	0x3
	.long	0x3ee
	.uleb128 0x2
	.long	.LASF72
	.byte	0xd
	.byte	0x7
	.byte	0x14
	.long	0x415
	.uleb128 0xb
	.long	.LASF74
	.byte	0x10
	.byte	0xe
	.byte	0xa
	.byte	0x8
	.long	0x455
	.uleb128 0xc
	.long	.LASF75
	.byte	0xe
	.byte	0xc
	.byte	0xc
	.long	0x118
	.byte	0
	.uleb128 0xc
	.long	.LASF76
	.byte	0xe
	.byte	0x10
	.byte	0x15
	.long	0x13c
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF77
	.byte	0xf
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF78
	.uleb128 0xf
	.long	.LASF79
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.long	0x148
	.uleb128 0xf
	.long	.LASF80
	.byte	0x10
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF81
	.byte	0x10
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF82
	.byte	0x10
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xb
	.long	.LASF83
	.byte	0x20
	.byte	0x11
	.byte	0x32
	.byte	0x8
	.long	0x4db
	.uleb128 0xc
	.long	.LASF84
	.byte	0x11
	.byte	0x34
	.byte	0xf
	.long	0x342
	.byte	0
	.uleb128 0xc
	.long	.LASF85
	.byte	0x11
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xc
	.long	.LASF86
	.byte	0x11
	.byte	0x38
	.byte	0x8
	.long	0x4e0
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0x11
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.long	0x499
	.uleb128 0x9
	.byte	0x8
	.long	0x65
	.uleb128 0x14
	.long	.LASF361
	.byte	0x8
	.byte	0x12
	.byte	0x18
	.byte	0x7
	.long	0x50c
	.uleb128 0x15
	.long	.LASF87
	.byte	0x12
	.byte	0x1a
	.byte	0x7
	.long	0x65
	.uleb128 0x15
	.long	.LASF88
	.byte	0x12
	.byte	0x1b
	.byte	0x9
	.long	0x47
	.byte	0
	.uleb128 0x2
	.long	.LASF89
	.byte	0x12
	.byte	0x1e
	.byte	0x16
	.long	0x4e6
	.uleb128 0x11
	.byte	0x8
	.byte	0x13
	.byte	0x38
	.byte	0x2
	.long	0x53c
	.uleb128 0xc
	.long	.LASF90
	.byte	0x13
	.byte	0x3a
	.byte	0xe
	.long	0xf0
	.byte	0
	.uleb128 0xc
	.long	.LASF91
	.byte	0x13
	.byte	0x3b
	.byte	0xe
	.long	0x9c
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x13
	.byte	0x3f
	.byte	0x2
	.long	0x56d
	.uleb128 0xc
	.long	.LASF92
	.byte	0x13
	.byte	0x41
	.byte	0xa
	.long	0x65
	.byte	0
	.uleb128 0xc
	.long	.LASF93
	.byte	0x13
	.byte	0x42
	.byte	0xa
	.long	0x65
	.byte	0x4
	.uleb128 0xc
	.long	.LASF94
	.byte	0x13
	.byte	0x43
	.byte	0x11
	.long	0x50c
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x13
	.byte	0x47
	.byte	0x2
	.long	0x59e
	.uleb128 0xc
	.long	.LASF90
	.byte	0x13
	.byte	0x49
	.byte	0xe
	.long	0xf0
	.byte	0
	.uleb128 0xc
	.long	.LASF91
	.byte	0x13
	.byte	0x4a
	.byte	0xe
	.long	0x9c
	.byte	0x4
	.uleb128 0xc
	.long	.LASF94
	.byte	0x13
	.byte	0x4b
	.byte	0x11
	.long	0x50c
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x20
	.byte	0x13
	.byte	0x4f
	.byte	0x2
	.long	0x5e9
	.uleb128 0xc
	.long	.LASF90
	.byte	0x13
	.byte	0x51
	.byte	0xe
	.long	0xf0
	.byte	0
	.uleb128 0xc
	.long	.LASF91
	.byte	0x13
	.byte	0x52
	.byte	0xe
	.long	0x9c
	.byte	0x4
	.uleb128 0xc
	.long	.LASF95
	.byte	0x13
	.byte	0x53
	.byte	0xa
	.long	0x65
	.byte	0x8
	.uleb128 0xc
	.long	.LASF96
	.byte	0x13
	.byte	0x54
	.byte	0x13
	.long	0x10c
	.byte	0x10
	.uleb128 0xc
	.long	.LASF97
	.byte	0x13
	.byte	0x55
	.byte	0x13
	.long	0x10c
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x13
	.byte	0x61
	.byte	0x3
	.long	0x60d
	.uleb128 0xc
	.long	.LASF98
	.byte	0x13
	.byte	0x63
	.byte	0xd
	.long	0x47
	.byte	0
	.uleb128 0xc
	.long	.LASF99
	.byte	0x13
	.byte	0x64
	.byte	0xd
	.long	0x47
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.byte	0x10
	.byte	0x13
	.byte	0x5e
	.byte	0x6
	.long	0x62f
	.uleb128 0x15
	.long	.LASF100
	.byte	0x13
	.byte	0x65
	.byte	0x7
	.long	0x5e9
	.uleb128 0x15
	.long	.LASF101
	.byte	0x13
	.byte	0x67
	.byte	0xe
	.long	0x71
	.byte	0
	.uleb128 0x11
	.byte	0x20
	.byte	0x13
	.byte	0x59
	.byte	0x2
	.long	0x660
	.uleb128 0xc
	.long	.LASF102
	.byte	0x13
	.byte	0x5b
	.byte	0xc
	.long	0x47
	.byte	0
	.uleb128 0xc
	.long	.LASF103
	.byte	0x13
	.byte	0x5d
	.byte	0x10
	.long	0x5e
	.byte	0x8
	.uleb128 0xc
	.long	.LASF104
	.byte	0x13
	.byte	0x68
	.byte	0xa
	.long	0x60d
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x13
	.byte	0x6c
	.byte	0x2
	.long	0x684
	.uleb128 0xc
	.long	.LASF105
	.byte	0x13
	.byte	0x6e
	.byte	0x15
	.long	0x7d
	.byte	0
	.uleb128 0xc
	.long	.LASF106
	.byte	0x13
	.byte	0x6f
	.byte	0xa
	.long	0x65
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x13
	.byte	0x74
	.byte	0x2
	.long	0x6b5
	.uleb128 0xc
	.long	.LASF107
	.byte	0x13
	.byte	0x76
	.byte	0xc
	.long	0x47
	.byte	0
	.uleb128 0xc
	.long	.LASF108
	.byte	0x13
	.byte	0x77
	.byte	0xa
	.long	0x65
	.byte	0x8
	.uleb128 0xc
	.long	.LASF109
	.byte	0x13
	.byte	0x78
	.byte	0x13
	.long	0x40
	.byte	0xc
	.byte	0
	.uleb128 0x16
	.byte	0x70
	.byte	0x13
	.byte	0x33
	.byte	0x5
	.long	0x71f
	.uleb128 0x15
	.long	.LASF110
	.byte	0x13
	.byte	0x35
	.byte	0x6
	.long	0x71f
	.uleb128 0x15
	.long	.LASF111
	.byte	0x13
	.byte	0x3c
	.byte	0x6
	.long	0x518
	.uleb128 0x15
	.long	.LASF112
	.byte	0x13
	.byte	0x44
	.byte	0x6
	.long	0x53c
	.uleb128 0x17
	.string	"_rt"
	.byte	0x13
	.byte	0x4c
	.byte	0x6
	.long	0x56d
	.uleb128 0x15
	.long	.LASF113
	.byte	0x13
	.byte	0x56
	.byte	0x6
	.long	0x59e
	.uleb128 0x15
	.long	.LASF114
	.byte	0x13
	.byte	0x69
	.byte	0x6
	.long	0x62f
	.uleb128 0x15
	.long	.LASF115
	.byte	0x13
	.byte	0x70
	.byte	0x6
	.long	0x660
	.uleb128 0x15
	.long	.LASF116
	.byte	0x13
	.byte	0x79
	.byte	0x6
	.long	0x684
	.byte	0
	.uleb128 0x7
	.long	0x65
	.long	0x72f
	.uleb128 0x8
	.long	0x39
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.byte	0x80
	.byte	0x13
	.byte	0x24
	.byte	0x9
	.long	0x77a
	.uleb128 0xc
	.long	.LASF117
	.byte	0x13
	.byte	0x26
	.byte	0x9
	.long	0x65
	.byte	0
	.uleb128 0xc
	.long	.LASF118
	.byte	0x13
	.byte	0x28
	.byte	0x9
	.long	0x65
	.byte	0x4
	.uleb128 0xc
	.long	.LASF119
	.byte	0x13
	.byte	0x2a
	.byte	0x9
	.long	0x65
	.byte	0x8
	.uleb128 0xc
	.long	.LASF120
	.byte	0x13
	.byte	0x30
	.byte	0x9
	.long	0x65
	.byte	0xc
	.uleb128 0xc
	.long	.LASF121
	.byte	0x13
	.byte	0x7b
	.byte	0x9
	.long	0x6b5
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF122
	.byte	0x13
	.byte	0x7c
	.byte	0x5
	.long	0x72f
	.uleb128 0x2
	.long	.LASF123
	.byte	0x14
	.byte	0x48
	.byte	0x10
	.long	0x792
	.uleb128 0x9
	.byte	0x8
	.long	0x798
	.uleb128 0x18
	.long	0x7a3
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x16
	.byte	0x8
	.byte	0x15
	.byte	0x1f
	.byte	0x5
	.long	0x7c5
	.uleb128 0x15
	.long	.LASF124
	.byte	0x15
	.byte	0x22
	.byte	0x11
	.long	0x786
	.uleb128 0x15
	.long	.LASF125
	.byte	0x15
	.byte	0x24
	.byte	0x9
	.long	0x7e0
	.byte	0
	.uleb128 0x18
	.long	0x7da
	.uleb128 0x19
	.long	0x65
	.uleb128 0x19
	.long	0x7da
	.uleb128 0x19
	.long	0x47
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x77a
	.uleb128 0x9
	.byte	0x8
	.long	0x7c5
	.uleb128 0xb
	.long	.LASF126
	.byte	0x98
	.byte	0x15
	.byte	0x1b
	.byte	0x8
	.long	0x828
	.uleb128 0xc
	.long	.LASF127
	.byte	0x15
	.byte	0x26
	.byte	0x5
	.long	0x7a3
	.byte	0
	.uleb128 0xc
	.long	.LASF128
	.byte	0x15
	.byte	0x2e
	.byte	0x10
	.long	0x415
	.byte	0x8
	.uleb128 0xc
	.long	.LASF129
	.byte	0x15
	.byte	0x31
	.byte	0x9
	.long	0x65
	.byte	0x88
	.uleb128 0xc
	.long	.LASF130
	.byte	0x15
	.byte	0x34
	.byte	0xc
	.long	0x829
	.byte	0x90
	.byte	0
	.uleb128 0x1a
	.uleb128 0x9
	.byte	0x8
	.long	0x828
	.uleb128 0x7
	.long	0x348
	.long	0x83f
	.uleb128 0x8
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0xa
	.long	0x82f
	.uleb128 0x12
	.long	.LASF131
	.byte	0x14
	.value	0x11e
	.byte	0x1a
	.long	0x83f
	.uleb128 0x12
	.long	.LASF132
	.byte	0x14
	.value	0x11f
	.byte	0x1a
	.long	0x83f
	.uleb128 0x7
	.long	0x148
	.long	0x86e
	.uleb128 0x8
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF133
	.byte	0x16
	.byte	0x9f
	.byte	0xe
	.long	0x85e
	.uleb128 0xf
	.long	.LASF134
	.byte	0x16
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF135
	.byte	0x16
	.byte	0xa1
	.byte	0x11
	.long	0x7d
	.uleb128 0xf
	.long	.LASF136
	.byte	0x16
	.byte	0xa6
	.byte	0xe
	.long	0x85e
	.uleb128 0xf
	.long	.LASF137
	.byte	0x16
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF138
	.byte	0x16
	.byte	0xaf
	.byte	0x11
	.long	0x7d
	.uleb128 0x12
	.long	.LASF139
	.byte	0x16
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0xb
	.long	.LASF140
	.byte	0x90
	.byte	0x17
	.byte	0x2e
	.byte	0x8
	.long	0x994
	.uleb128 0xc
	.long	.LASF141
	.byte	0x17
	.byte	0x30
	.byte	0xd
	.long	0x90
	.byte	0
	.uleb128 0xc
	.long	.LASF142
	.byte	0x17
	.byte	0x35
	.byte	0xd
	.long	0xb4
	.byte	0x8
	.uleb128 0xc
	.long	.LASF143
	.byte	0x17
	.byte	0x3d
	.byte	0xf
	.long	0xcc
	.byte	0x10
	.uleb128 0xc
	.long	.LASF144
	.byte	0x17
	.byte	0x3e
	.byte	0xe
	.long	0xc0
	.byte	0x18
	.uleb128 0xc
	.long	.LASF145
	.byte	0x17
	.byte	0x40
	.byte	0xd
	.long	0x9c
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF146
	.byte	0x17
	.byte	0x41
	.byte	0xd
	.long	0xa8
	.byte	0x20
	.uleb128 0xc
	.long	.LASF120
	.byte	0x17
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xc
	.long	.LASF147
	.byte	0x17
	.byte	0x45
	.byte	0xd
	.long	0x90
	.byte	0x28
	.uleb128 0xc
	.long	.LASF148
	.byte	0x17
	.byte	0x4a
	.byte	0xd
	.long	0xd8
	.byte	0x30
	.uleb128 0xc
	.long	.LASF149
	.byte	0x17
	.byte	0x4e
	.byte	0x11
	.long	0x124
	.byte	0x38
	.uleb128 0xc
	.long	.LASF150
	.byte	0x17
	.byte	0x50
	.byte	0x10
	.long	0x130
	.byte	0x40
	.uleb128 0xc
	.long	.LASF151
	.byte	0x17
	.byte	0x5b
	.byte	0x15
	.long	0x42d
	.byte	0x48
	.uleb128 0xc
	.long	.LASF152
	.byte	0x17
	.byte	0x5c
	.byte	0x15
	.long	0x42d
	.byte	0x58
	.uleb128 0xc
	.long	.LASF153
	.byte	0x17
	.byte	0x5d
	.byte	0x15
	.long	0x42d
	.byte	0x68
	.uleb128 0xc
	.long	.LASF154
	.byte	0x17
	.byte	0x6a
	.byte	0x17
	.long	0x999
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.long	0x8c3
	.uleb128 0x7
	.long	0x13c
	.long	0x9a9
	.uleb128 0x8
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF155
	.byte	0x18
	.value	0x21f
	.byte	0xf
	.long	0x9b6
	.uleb128 0x9
	.byte	0x8
	.long	0x148
	.uleb128 0x12
	.long	.LASF156
	.byte	0x18
	.value	0x221
	.byte	0xf
	.long	0x9b6
	.uleb128 0xf
	.long	.LASF157
	.byte	0x19
	.byte	0x2d
	.byte	0xe
	.long	0x148
	.uleb128 0xf
	.long	.LASF158
	.byte	0x19
	.byte	0x2e
	.byte	0xe
	.long	0x148
	.uleb128 0x9
	.byte	0x8
	.long	0x9e7
	.uleb128 0x1b
	.uleb128 0xf
	.long	.LASF159
	.byte	0x1a
	.byte	0x1
	.byte	0x14
	.long	0x342
	.uleb128 0xf
	.long	.LASF160
	.byte	0x1b
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF161
	.byte	0x1c
	.byte	0x66
	.byte	0x16
	.long	0x84
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1d
	.byte	0x29
	.byte	0x6
	.long	0xa24
	.uleb128 0x1d
	.long	.LASF162
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1d
	.byte	0x2a
	.byte	0x6
	.long	0xa39
	.uleb128 0x1e
	.long	.LASF163
	.byte	0x9
	.byte	0
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1e
	.byte	0x2f
	.byte	0x1
	.long	0xa98
	.uleb128 0x1f
	.long	.LASF164
	.value	0x100
	.uleb128 0x1f
	.long	.LASF165
	.value	0x200
	.uleb128 0x1f
	.long	.LASF166
	.value	0x400
	.uleb128 0x1f
	.long	.LASF167
	.value	0x800
	.uleb128 0x1f
	.long	.LASF168
	.value	0x1000
	.uleb128 0x1f
	.long	.LASF169
	.value	0x2000
	.uleb128 0x1f
	.long	.LASF170
	.value	0x4000
	.uleb128 0x1f
	.long	.LASF171
	.value	0x8000
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x2
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x4
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x8
	.byte	0
	.uleb128 0x20
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0xab6
	.uleb128 0x21
	.long	.LASF176
	.sleb128 -130
	.uleb128 0x21
	.long	.LASF177
	.sleb128 -131
	.byte	0
	.uleb128 0x7
	.long	0x155
	.long	0xac1
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.long	0xab6
	.uleb128 0xf
	.long	.LASF178
	.byte	0x1f
	.byte	0x19
	.byte	0x13
	.long	0xac1
	.uleb128 0xf
	.long	.LASF179
	.byte	0x20
	.byte	0x20
	.byte	0x14
	.long	0x342
	.uleb128 0x22
	.long	.LASF199
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x21
	.byte	0x20
	.byte	0x6
	.long	0xb33
	.uleb128 0x1e
	.long	.LASF180
	.byte	0
	.uleb128 0x1e
	.long	.LASF181
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF182
	.byte	0x2
	.uleb128 0x1e
	.long	.LASF183
	.byte	0x3
	.uleb128 0x1e
	.long	.LASF184
	.byte	0x4
	.uleb128 0x1e
	.long	.LASF185
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF186
	.byte	0x6
	.uleb128 0x1e
	.long	.LASF187
	.byte	0x7
	.uleb128 0x1e
	.long	.LASF188
	.byte	0x8
	.uleb128 0x1e
	.long	.LASF189
	.byte	0x9
	.uleb128 0x1e
	.long	.LASF190
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.long	0xade
	.uleb128 0x12
	.long	.LASF191
	.byte	0x21
	.value	0x10b
	.byte	0x1a
	.long	0x39f
	.uleb128 0x7
	.long	0xb33
	.long	0xb50
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.long	0xb45
	.uleb128 0x12
	.long	.LASF192
	.byte	0x21
	.value	0x10c
	.byte	0x21
	.long	0xb50
	.uleb128 0xf
	.long	.LASF193
	.byte	0x22
	.byte	0x32
	.byte	0xf
	.long	0x829
	.uleb128 0xf
	.long	.LASF194
	.byte	0x22
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF195
	.byte	0x22
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x49
	.byte	0x6
	.long	0xb9e
	.uleb128 0x1d
	.long	.LASF196
	.long	0x20000
	.byte	0
	.uleb128 0xe
	.long	.LASF197
	.uleb128 0xf
	.long	.LASF198
	.byte	0x23
	.byte	0x19
	.byte	0x1f
	.long	0xb9e
	.uleb128 0x22
	.long	.LASF200
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x24
	.byte	0x19
	.byte	0x6
	.long	0xbe0
	.uleb128 0x1e
	.long	.LASF201
	.byte	0
	.uleb128 0x1e
	.long	.LASF202
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF203
	.byte	0x2
	.uleb128 0x1e
	.long	.LASF204
	.byte	0x3
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF200
	.byte	0x24
	.byte	0x26
	.byte	0x1b
	.long	0xbaf
	.uleb128 0x23
	.long	.LASF206
	.byte	0x3
	.byte	0x35
	.byte	0x14
	.long	0x342
	.uleb128 0x9
	.byte	0x3
	.quad	filter_command
	.uleb128 0x23
	.long	.LASF207
	.byte	0x3
	.byte	0x38
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	filter_pid
	.uleb128 0x23
	.long	.LASF208
	.byte	0x3
	.byte	0x3b
	.byte	0xd
	.long	0x4e0
	.uleb128 0x9
	.byte	0x3
	.quad	open_pipes
	.uleb128 0x23
	.long	.LASF209
	.byte	0x3
	.byte	0x3c
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	open_pipes_alloc
	.uleb128 0x23
	.long	.LASF210
	.byte	0x3
	.byte	0x3d
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	n_open_pipes
	.uleb128 0x23
	.long	.LASF211
	.byte	0x3
	.byte	0x40
	.byte	0x11
	.long	0x421
	.uleb128 0x9
	.byte	0x3
	.quad	oldblocked
	.uleb128 0x23
	.long	.LASF212
	.byte	0x3
	.byte	0x41
	.byte	0x11
	.long	0x421
	.uleb128 0x9
	.byte	0x3
	.quad	newblocked
	.uleb128 0x23
	.long	.LASF213
	.byte	0x3
	.byte	0x44
	.byte	0x14
	.long	0x342
	.uleb128 0x9
	.byte	0x3
	.quad	outbase
	.uleb128 0x23
	.long	.LASF214
	.byte	0x3
	.byte	0x47
	.byte	0xe
	.long	0x148
	.uleb128 0x9
	.byte	0x3
	.quad	outfile
	.uleb128 0x23
	.long	.LASF215
	.byte	0x3
	.byte	0x4b
	.byte	0xe
	.long	0x148
	.uleb128 0x9
	.byte	0x3
	.quad	outfile_mid
	.uleb128 0x23
	.long	.LASF216
	.byte	0x3
	.byte	0x4e
	.byte	0xd
	.long	0xcde
	.uleb128 0x9
	.byte	0x3
	.quad	suffix_auto
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF217
	.uleb128 0x23
	.long	.LASF218
	.byte	0x3
	.byte	0x51
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	suffix_length
	.uleb128 0x23
	.long	.LASF219
	.byte	0x3
	.byte	0x54
	.byte	0x14
	.long	0x342
	.uleb128 0x9
	.byte	0x3
	.quad	suffix_alphabet
	.uleb128 0x23
	.long	.LASF220
	.byte	0x3
	.byte	0x57
	.byte	0x14
	.long	0x342
	.uleb128 0x9
	.byte	0x3
	.quad	numeric_suffix_start
	.uleb128 0x23
	.long	.LASF221
	.byte	0x3
	.byte	0x5a
	.byte	0x14
	.long	0x342
	.uleb128 0x9
	.byte	0x3
	.quad	additional_suffix
	.uleb128 0x23
	.long	.LASF222
	.byte	0x3
	.byte	0x5d
	.byte	0xe
	.long	0x148
	.uleb128 0x9
	.byte	0x3
	.quad	infile
	.uleb128 0x23
	.long	.LASF223
	.byte	0x3
	.byte	0x60
	.byte	0x14
	.long	0x8c3
	.uleb128 0x9
	.byte	0x3
	.quad	in_stat_buf
	.uleb128 0x23
	.long	.LASF224
	.byte	0x3
	.byte	0x63
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	output_desc
	.uleb128 0x23
	.long	.LASF225
	.byte	0x3
	.byte	0x67
	.byte	0xd
	.long	0xcde
	.uleb128 0x9
	.byte	0x3
	.quad	verbose
	.uleb128 0x23
	.long	.LASF226
	.byte	0x3
	.byte	0x6a
	.byte	0xd
	.long	0xcde
	.uleb128 0x9
	.byte	0x3
	.quad	elide_empty_files
	.uleb128 0x23
	.long	.LASF227
	.byte	0x3
	.byte	0x6e
	.byte	0xd
	.long	0xcde
	.uleb128 0x9
	.byte	0x3
	.quad	unbuffered
	.uleb128 0x23
	.long	.LASF228
	.byte	0x3
	.byte	0x71
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	eolchar
	.uleb128 0x22
	.long	.LASF229
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x3
	.byte	0x74
	.byte	0x6
	.long	0xe1a
	.uleb128 0x1e
	.long	.LASF230
	.byte	0
	.uleb128 0x1e
	.long	.LASF231
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF232
	.byte	0x2
	.uleb128 0x1e
	.long	.LASF233
	.byte	0x3
	.uleb128 0x1e
	.long	.LASF234
	.byte	0x4
	.uleb128 0x1e
	.long	.LASF235
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF236
	.byte	0x6
	.uleb128 0x1e
	.long	.LASF237
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x3
	.byte	0x7d
	.byte	0x1
	.long	0xe41
	.uleb128 0x1e
	.long	.LASF238
	.byte	0x80
	.uleb128 0x1e
	.long	.LASF239
	.byte	0x81
	.uleb128 0x1e
	.long	.LASF240
	.byte	0x82
	.uleb128 0x1e
	.long	.LASF241
	.byte	0x83
	.byte	0
	.uleb128 0x7
	.long	0x4db
	.long	0xe51
	.uleb128 0x8
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0xe41
	.uleb128 0x23
	.long	.LASF242
	.byte	0x3
	.byte	0x84
	.byte	0x1c
	.long	0xe51
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x24
	.long	.LASF243
	.byte	0x20
	.byte	0x3
	.value	0x409
	.byte	0x10
	.long	0xeb3
	.uleb128 0x25
	.long	.LASF244
	.byte	0x3
	.value	0x40b
	.byte	0x9
	.long	0x148
	.byte	0
	.uleb128 0x26
	.string	"ofd"
	.byte	0x3
	.value	0x40c
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0x25
	.long	.LASF245
	.byte	0x3
	.value	0x40d
	.byte	0x9
	.long	0x36a
	.byte	0x10
	.uleb128 0x25
	.long	.LASF246
	.byte	0x3
	.value	0x40e
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x27
	.long	.LASF247
	.byte	0x3
	.value	0x40f
	.byte	0x3
	.long	0xe6c
	.uleb128 0x20
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x3
	.value	0x412
	.byte	0x1
	.long	0xedc
	.uleb128 0x21
	.long	.LASF248
	.sleb128 -1
	.uleb128 0x21
	.long	.LASF249
	.sleb128 -2
	.byte	0
	.uleb128 0x28
	.long	.LASF333
	.byte	0x3
	.value	0x511
	.byte	0x1
	.long	0x65
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x114c
	.uleb128 0x29
	.long	.LASF250
	.byte	0x3
	.value	0x511
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x29
	.long	.LASF251
	.byte	0x3
	.value	0x511
	.byte	0x18
	.long	0x9b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2a
	.long	.LASF252
	.byte	0x3
	.value	0x513
	.byte	0x13
	.long	0xdd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2a
	.long	.LASF253
	.byte	0x3
	.value	0x514
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2a
	.long	.LASF254
	.byte	0x3
	.value	0x515
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2a
	.long	.LASF255
	.byte	0x3
	.value	0x516
	.byte	0xd
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2a
	.long	.LASF256
	.byte	0x3
	.value	0x517
	.byte	0xd
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2a
	.long	.LASF257
	.byte	0x3
	.value	0x519
	.byte	0x15
	.long	0x115c
	.uleb128 0x9
	.byte	0x3
	.quad	multipliers.6751
	.uleb128 0x2b
	.string	"c"
	.byte	0x3
	.value	0x51a
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x2a
	.long	.LASF258
	.byte	0x3
	.value	0x51b
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x2a
	.long	.LASF259
	.byte	0x3
	.value	0x51c
	.byte	0x9
	.long	0x34d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2a
	.long	.LASF260
	.byte	0x3
	.value	0x62d
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -313
	.uleb128 0x2b
	.string	"b"
	.byte	0x3
	.value	0x631
	.byte	0x9
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2b
	.string	"buf"
	.byte	0x3
	.value	0x632
	.byte	0x9
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2a
	.long	.LASF261
	.byte	0x3
	.value	0x633
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x1d0
	.long	0x10ba
	.uleb128 0x2a
	.long	.LASF262
	.byte	0x3
	.value	0x52e
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2a
	.long	.LASF263
	.byte	0x3
	.value	0x52f
	.byte	0xd
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2d
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.long	0x1085
	.uleb128 0x2a
	.long	.LASF264
	.byte	0x3
	.value	0x582
	.byte	0x12
	.long	0x14e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -314
	.uleb128 0x2e
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x2e
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x2e
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.byte	0
	.uleb128 0x2f
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.uleb128 0x2f
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.uleb128 0x2a
	.long	.LASF265
	.byte	0x3
	.value	0x5b4
	.byte	0x14
	.long	0x1161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x2e
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x2e
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x2d
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.long	0x1113
	.uleb128 0x2a
	.long	.LASF265
	.byte	0x3
	.value	0x640
	.byte	0x10
	.long	0x1161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2d
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.long	0x113a
	.uleb128 0x2b
	.string	"act"
	.byte	0x3
	.value	0x64e
	.byte	0x18
	.long	0x7e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x2e
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.byte	0
	.uleb128 0x7
	.long	0x155
	.long	0x115c
	.uleb128 0x8
	.long	0x39
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.long	0x114c
	.uleb128 0x7
	.long	0x14e
	.long	0x1171
	.uleb128 0x8
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x30
	.long	.LASF266
	.byte	0x3
	.value	0x503
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x11c1
	.uleb128 0x29
	.long	.LASF255
	.byte	0x3
	.value	0x503
	.byte	0x19
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF256
	.byte	0x3
	.value	0x503
	.byte	0x2d
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF263
	.byte	0x3
	.value	0x503
	.byte	0x3c
	.long	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xa00
	.uleb128 0x30
	.long	.LASF267
	.byte	0x3
	.value	0x469
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1398
	.uleb128 0x31
	.string	"k"
	.byte	0x3
	.value	0x469
	.byte	0x15
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.string	"n"
	.byte	0x3
	.value	0x469
	.byte	0x22
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x31
	.string	"buf"
	.byte	0x3
	.value	0x469
	.byte	0x2b
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.long	.LASF268
	.byte	0x3
	.value	0x469
	.byte	0x37
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2a
	.long	.LASF269
	.byte	0x3
	.value	0x46b
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF270
	.byte	0x3
	.value	0x46c
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -103
	.uleb128 0x2a
	.long	.LASF271
	.byte	0x3
	.value	0x46d
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -102
	.uleb128 0x2a
	.long	.LASF272
	.byte	0x3
	.value	0x46e
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF273
	.byte	0x3
	.value	0x46f
	.byte	0x9
	.long	0x1398
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF274
	.byte	0x3
	.value	0x470
	.byte	0xd
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.long	.LASF327
	.byte	0x3
	.value	0x4e2
	.byte	0x1
	.quad	.L259
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x170
	.long	0x1374
	.uleb128 0x2b
	.string	"bp"
	.byte	0x3
	.value	0x489
	.byte	0xd
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"eob"
	.byte	0x3
	.value	0x489
	.byte	0x18
	.long	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x3
	.value	0x48a
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x2a
	.long	.LASF276
	.byte	0x3
	.value	0x493
	.byte	0x12
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF277
	.byte	0x3
	.value	0x494
	.byte	0x10
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x2a
	.long	.LASF278
	.byte	0x3
	.value	0x497
	.byte	0x11
	.long	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0x2e
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x2e
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x2e
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x2e
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x2a
	.long	.LASF279
	.byte	0x3
	.value	0x4e9
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xeb3
	.uleb128 0x34
	.long	.LASF311
	.byte	0x3
	.value	0x41d
	.byte	0x1
	.long	0xcde
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x1478
	.uleb128 0x29
	.long	.LASF273
	.byte	0x3
	.value	0x41d
	.byte	0x13
	.long	0x1398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF280
	.byte	0x3
	.value	0x41d
	.byte	0x21
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF281
	.byte	0x3
	.value	0x41d
	.byte	0x31
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF271
	.byte	0x3
	.value	0x41f
	.byte	0x8
	.long	0xcde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x2f
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x2b
	.string	"fd"
	.byte	0x3
	.value	0x423
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF282
	.byte	0x3
	.value	0x424
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x2e
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x2e
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x2e
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF283
	.byte	0x3
	.value	0x3da
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1576
	.uleb128 0x31
	.string	"k"
	.byte	0x3
	.value	0x3da
	.byte	0x20
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"n"
	.byte	0x3
	.value	0x3da
	.byte	0x2d
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"buf"
	.byte	0x3
	.value	0x3da
	.byte	0x36
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF268
	.byte	0x3
	.value	0x3da
	.byte	0x42
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF261
	.byte	0x3
	.value	0x3db
	.byte	0x1d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF259
	.byte	0x3
	.value	0x3db
	.byte	0x31
	.long	0x34d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF284
	.byte	0x3
	.value	0x3dd
	.byte	0x9
	.long	0x34d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"end"
	.byte	0x3
	.value	0x3de
	.byte	0x9
	.long	0x34d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF286
	.long	0x1586
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6653
	.uleb128 0x2e
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x3
	.value	0x3f3
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x2e
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x155
	.long	0x1586
	.uleb128 0x8
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	0x1576
	.uleb128 0x30
	.long	.LASF285
	.byte	0x3
	.value	0x35f
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x175e
	.uleb128 0x31
	.string	"k"
	.byte	0x3
	.value	0x35f
	.byte	0x1e
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.string	"n"
	.byte	0x3
	.value	0x35f
	.byte	0x2b
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.string	"buf"
	.byte	0x3
	.value	0x35f
	.byte	0x34
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x29
	.long	.LASF268
	.byte	0x3
	.value	0x35f
	.byte	0x40
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.long	.LASF261
	.byte	0x3
	.value	0x360
	.byte	0x1b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x29
	.long	.LASF259
	.byte	0x3
	.value	0x360
	.byte	0x2f
	.long	0x34d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x35
	.long	.LASF286
	.long	0x176e
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6610
	.uleb128 0x2a
	.long	.LASF287
	.byte	0x3
	.value	0x364
	.byte	0xf
	.long	0x359
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF288
	.byte	0x3
	.value	0x365
	.byte	0xd
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF289
	.byte	0x3
	.value	0x366
	.byte	0x9
	.long	0x34d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF290
	.byte	0x3
	.value	0x367
	.byte	0x9
	.long	0x34d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF291
	.byte	0x3
	.value	0x368
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -123
	.uleb128 0x2a
	.long	.LASF292
	.byte	0x3
	.value	0x369
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -122
	.uleb128 0x2d
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x16bc
	.uleb128 0x2a
	.long	.LASF284
	.byte	0x3
	.value	0x36e
	.byte	0xd
	.long	0x34d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.byte	0
	.uleb128 0x33
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x2b
	.string	"bp"
	.byte	0x3
	.value	0x381
	.byte	0xd
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"eob"
	.byte	0x3
	.value	0x381
	.byte	0x18
	.long	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x3
	.value	0x382
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x2a
	.long	.LASF276
	.byte	0x3
	.value	0x396
	.byte	0x12
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF277
	.byte	0x3
	.value	0x397
	.byte	0x10
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x2a
	.long	.LASF293
	.byte	0x3
	.value	0x39a
	.byte	0x11
	.long	0x34d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF278
	.byte	0x3
	.value	0x39b
	.byte	0x11
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x155
	.long	0x176e
	.uleb128 0x8
	.long	0x39
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.long	0x175e
	.uleb128 0x30
	.long	.LASF294
	.byte	0x3
	.value	0x2ed
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1923
	.uleb128 0x29
	.long	.LASF295
	.byte	0x3
	.value	0x2ed
	.byte	0x1d
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.string	"buf"
	.byte	0x3
	.value	0x2ed
	.byte	0x2c
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.long	.LASF268
	.byte	0x3
	.value	0x2ed
	.byte	0x38
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x3
	.value	0x2ef
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF296
	.byte	0x3
	.value	0x2f0
	.byte	0xd
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF297
	.byte	0x3
	.value	0x2f1
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF298
	.byte	0x3
	.value	0x2f2
	.byte	0x9
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF299
	.byte	0x3
	.value	0x2f3
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF300
	.byte	0x3
	.value	0x2f4
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.uleb128 0x2f
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x2a
	.long	.LASF301
	.byte	0x3
	.value	0x2fb
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"sob"
	.byte	0x3
	.value	0x2fc
	.byte	0xd
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2f
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2a
	.long	.LASF302
	.byte	0x3
	.value	0x2ff
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"eoc"
	.byte	0x3
	.value	0x300
	.byte	0x11
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"eol"
	.byte	0x3
	.value	0x301
	.byte	0x11
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x18d8
	.uleb128 0x2a
	.long	.LASF303
	.byte	0x3
	.value	0x31e
	.byte	0x16
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2d
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x18fe
	.uleb128 0x2a
	.long	.LASF303
	.byte	0x3
	.value	0x32a
	.byte	0x16
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2f
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2a
	.long	.LASF304
	.byte	0x3
	.value	0x336
	.byte	0x16
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF305
	.byte	0x3
	.value	0x2be
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a09
	.uleb128 0x29
	.long	.LASF306
	.byte	0x3
	.value	0x2be
	.byte	0x18
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.string	"buf"
	.byte	0x3
	.value	0x2be
	.byte	0x27
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.long	.LASF268
	.byte	0x3
	.value	0x2be
	.byte	0x33
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x3
	.value	0x2c0
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"bp"
	.byte	0x3
	.value	0x2c1
	.byte	0x9
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF278
	.byte	0x3
	.value	0x2c1
	.byte	0xe
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"eob"
	.byte	0x3
	.value	0x2c1
	.byte	0x17
	.long	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF291
	.byte	0x3
	.value	0x2c2
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x2b
	.string	"n"
	.byte	0x3
	.value	0x2c3
	.byte	0xd
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2f
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2b
	.string	"len"
	.byte	0x3
	.value	0x2d4
	.byte	0x1a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF307
	.byte	0x3
	.value	0x271
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b08
	.uleb128 0x29
	.long	.LASF295
	.byte	0x3
	.value	0x271
	.byte	0x18
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"buf"
	.byte	0x3
	.value	0x271
	.byte	0x27
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF268
	.byte	0x3
	.value	0x271
	.byte	0x33
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF261
	.byte	0x3
	.value	0x271
	.byte	0x43
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.long	.LASF308
	.byte	0x3
	.value	0x272
	.byte	0x18
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x3
	.value	0x274
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF291
	.byte	0x3
	.value	0x275
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -67
	.uleb128 0x2a
	.long	.LASF309
	.byte	0x3
	.value	0x276
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x2a
	.long	.LASF276
	.byte	0x3
	.value	0x277
	.byte	0xd
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF310
	.byte	0x3
	.value	0x278
	.byte	0xd
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"eof"
	.byte	0x3
	.value	0x279
	.byte	0x8
	.long	0xcde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x33
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x2a
	.long	.LASF278
	.byte	0x3
	.value	0x291
	.byte	0xd
	.long	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF312
	.byte	0x3
	.value	0x255
	.byte	0x1
	.long	0xcde
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b7d
	.uleb128 0x29
	.long	.LASF291
	.byte	0x3
	.value	0x255
	.byte	0xe
	.long	0xcde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"bp"
	.byte	0x3
	.value	0x255
	.byte	0x29
	.long	0x342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF313
	.byte	0x3
	.value	0x255
	.byte	0x34
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2e
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.byte	0
	.uleb128 0x30
	.long	.LASF314
	.byte	0x3
	.value	0x21b
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cce
	.uleb128 0x31
	.string	"fp"
	.byte	0x3
	.value	0x21b
	.byte	0x11
	.long	0x36a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"fd"
	.byte	0x3
	.value	0x21b
	.byte	0x19
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"pid"
	.byte	0x3
	.value	0x21b
	.byte	0x23
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF84
	.byte	0x3
	.value	0x21b
	.byte	0x34
	.long	0x342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2d
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x1c25
	.uleb128 0x2b
	.string	"j"
	.byte	0x3
	.value	0x223
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.byte	0
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x2a
	.long	.LASF315
	.byte	0x3
	.value	0x22f
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2d
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x1c95
	.uleb128 0x2b
	.string	"sig"
	.byte	0x3
	.value	0x234
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2a
	.long	.LASF316
	.byte	0x3
	.value	0x237
	.byte	0x14
	.long	0x1cce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x1cbb
	.uleb128 0x2b
	.string	"ex"
	.byte	0x3
	.value	0x241
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2e
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x14e
	.long	0x1cde
	.uleb128 0x8
	.long	0x39
	.byte	0x12
	.byte	0
	.uleb128 0x34
	.long	.LASF317
	.byte	0x3
	.value	0x1c9
	.byte	0x1
	.long	0x65
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e6f
	.uleb128 0x29
	.long	.LASF84
	.byte	0x3
	.value	0x1c9
	.byte	0x15
	.long	0x342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2d
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x1d7c
	.uleb128 0x2b
	.string	"fd"
	.byte	0x3
	.value	0x1d0
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2a
	.long	.LASF318
	.byte	0x3
	.value	0x1d3
	.byte	0x13
	.long	0x8c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2e
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2e
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2e
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0
	.uleb128 0x2f
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2a
	.long	.LASF319
	.byte	0x3
	.value	0x1e1
	.byte	0xb
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2a
	.long	.LASF320
	.byte	0x3
	.value	0x1e2
	.byte	0xd
	.long	0x3d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2a
	.long	.LASF321
	.byte	0x3
	.value	0x1e3
	.byte	0x13
	.long	0x342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2e
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2d
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x1e4b
	.uleb128 0x2b
	.string	"j"
	.byte	0x3
	.value	0x1f3
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2e
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2e
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2e
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2e
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0
	.uleb128 0x2e
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2e
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF322
	.byte	0x3
	.value	0x15e
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f6d
	.uleb128 0x2a
	.long	.LASF323
	.byte	0x3
	.value	0x161
	.byte	0x12
	.long	0x1f6d
	.uleb128 0x9
	.byte	0x3
	.quad	sufindex.6449
	.uleb128 0x2a
	.long	.LASF324
	.byte	0x3
	.value	0x162
	.byte	0x11
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	outbase_length.6450
	.uleb128 0x2a
	.long	.LASF325
	.byte	0x3
	.value	0x163
	.byte	0x11
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	outfile_length.6451
	.uleb128 0x2a
	.long	.LASF326
	.byte	0x3
	.value	0x164
	.byte	0x11
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	addsuf_length.6452
	.uleb128 0x32
	.long	.LASF328
	.byte	0x3
	.value	0x16a
	.byte	0x1
	.quad	.L63
	.uleb128 0x35
	.long	.LASF286
	.long	0x1f83
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6455
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0
	.long	0x1f58
	.uleb128 0x2a
	.long	.LASF329
	.byte	0x3
	.value	0x168
	.byte	0xc
	.long	0xcde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2b
	.string	"i"
	.byte	0x3
	.value	0x19b
	.byte	0x12
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF330
	.byte	0x3
	.value	0x19f
	.byte	0x13
	.long	0x1f6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2b
	.string	"i"
	.byte	0x3
	.value	0x1b6
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x2d
	.uleb128 0x7
	.long	0x155
	.long	0x1f83
	.uleb128 0x8
	.long	0x39
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.long	0x1f73
	.uleb128 0x34
	.long	.LASF331
	.byte	0x3
	.value	0x11b
	.byte	0x1
	.long	0x34d
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x203e
	.uleb128 0x31
	.string	"fd"
	.byte	0x3
	.value	0x11b
	.byte	0x16
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"st"
	.byte	0x3
	.value	0x11b
	.byte	0x2d
	.long	0x203e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"buf"
	.byte	0x3
	.value	0x11b
	.byte	0x37
	.long	0x148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF268
	.byte	0x3
	.value	0x11b
	.byte	0x43
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"cur"
	.byte	0x3
	.value	0x11d
	.byte	0x9
	.long	0x34d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF332
	.byte	0x3
	.value	0x125
	.byte	0x9
	.long	0x34d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"end"
	.byte	0x3
	.value	0x13e
	.byte	0x9
	.long	0x34d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x3
	.value	0x128
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x994
	.uleb128 0x36
	.long	.LASF334
	.byte	0x3
	.byte	0xdc
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x2072
	.uleb128 0x37
	.long	.LASF335
	.byte	0x3
	.byte	0xdc
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x38
	.long	.LASF336
	.byte	0x3
	.byte	0xa3
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x2133
	.uleb128 0x37
	.long	.LASF256
	.byte	0x3
	.byte	0xa3
	.byte	0x1e
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.long	.LASF252
	.byte	0x3
	.byte	0xa3
	.byte	0x37
	.long	0xdd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.long	.LASF337
	.byte	0x3
	.byte	0xa7
	.byte	0xd
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x2121
	.uleb128 0x23
	.long	.LASF338
	.byte	0x3
	.byte	0xb3
	.byte	0x11
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF339
	.byte	0x3
	.byte	0xc4
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x23
	.long	.LASF340
	.byte	0x3
	.byte	0xb6
	.byte	0x15
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x39
	.string	"e"
	.byte	0x3
	.byte	0xb7
	.byte	0x18
	.long	0xbe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x3a
	.long	.LASF341
	.byte	0x3
	.byte	0x9d
	.byte	0x1
	.long	0xcde
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x2165
	.uleb128 0x3b
	.string	"err"
	.byte	0x3
	.byte	0x9d
	.byte	0x10
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3a
	.long	.LASF342
	.byte	0x2
	.byte	0x4b
	.byte	0x1
	.long	0x2d
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2196
	.uleb128 0x3b
	.string	"sb"
	.byte	0x2
	.byte	0x4b
	.byte	0x19
	.long	0x8c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.long	.LASF343
	.byte	0x1
	.value	0x2c1
	.byte	0x1
	.long	0xcde
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x21c9
	.uleb128 0x31
	.string	"sb"
	.byte	0x1
	.value	0x2c1
	.byte	0x24
	.long	0x203e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	.LASF344
	.byte	0x1
	.value	0x2ba
	.byte	0x1
	.long	0x148
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x21fb
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x2ba
	.byte	0x17
	.long	0x342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF345
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a0
	.uleb128 0x29
	.long	.LASF346
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.long	.LASF347
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x2256
	.uleb128 0x25
	.long	.LASF346
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x342
	.byte	0
	.uleb128 0x25
	.long	.LASF348
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x342
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x222b
	.uleb128 0x2a
	.long	.LASF347
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x22b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF348
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2a
	.long	.LASF349
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x22b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF350
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x7
	.long	0x2256
	.long	0x22b0
	.uleb128 0x8
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.long	0x22a0
	.uleb128 0x9
	.byte	0x8
	.long	0x2256
	.uleb128 0x3d
	.long	.LASF351
	.byte	0x1
	.value	0x254
	.byte	0x1
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.long	.LASF352
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.long	.LASF353
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF354
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.long	0x47
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x236e
	.uleb128 0x31
	.string	"ptr"
	.byte	0x1
	.value	0x1f5
	.byte	0x18
	.long	0x9e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF355
	.byte	0x1
	.value	0x1f5
	.byte	0x24
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"p0"
	.byte	0x1
	.value	0x1f7
	.byte	0xf
	.long	0x342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"p1"
	.byte	0x1
	.value	0x1f8
	.byte	0xf
	.long	0x342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3e
	.long	.LASF356
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x49
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x14e
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x14
	.uleb128 0x17
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	.LBB77-.Ltext0
	.quad	.LBE77-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	.LBB76-.Ltext0
	.quad	.LBE76-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB79-.Ltext0
	.quad	.LBE79-.Ltext0
	.quad	.LBB86-.Ltext0
	.quad	.LBE86-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF263:
	.string	"slash"
.LASF227:
	.string	"unbuffered"
.LASF154:
	.string	"__glibc_reserved"
.LASF153:
	.string	"st_ctim"
.LASF6:
	.string	"size_t"
.LASF329:
	.string	"widen"
.LASF284:
	.string	"start"
.LASF248:
	.string	"OFD_NEW"
.LASF176:
	.string	"GETOPT_HELP_CHAR"
.LASF171:
	.string	"_ISgraph"
.LASF149:
	.string	"st_blksize"
.LASF150:
	.string	"st_blocks"
.LASF56:
	.string	"_IO_codecvt"
.LASF355:
	.string	"alignment"
.LASF322:
	.string	"next_file_name"
.LASF36:
	.string	"_IO_save_end"
.LASF342:
	.string	"io_blksize"
.LASF315:
	.string	"wstatus"
.LASF357:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF326:
	.string	"addsuf_length"
.LASF12:
	.string	"__gid_t"
.LASF330:
	.string	"sufindex_end"
.LASF131:
	.string	"_sys_siglist"
.LASF152:
	.string	"st_mtim"
.LASF69:
	.string	"time_t"
.LASF29:
	.string	"_IO_write_base"
.LASF241:
	.string	"ADDITIONAL_SUFFIX_OPTION"
.LASF195:
	.string	"error_one_per_line"
.LASF45:
	.string	"_lock"
.LASF119:
	.string	"si_code"
.LASF105:
	.string	"si_band"
.LASF203:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF140:
	.string	"stat"
.LASF281:
	.string	"nfiles"
.LASF133:
	.string	"__tzname"
.LASF34:
	.string	"_IO_save_base"
.LASF328:
	.string	"new_name"
.LASF282:
	.string	"i_reopen"
.LASF266:
	.string	"parse_chunk"
.LASF268:
	.string	"bufsize"
.LASF38:
	.string	"_chain"
.LASF130:
	.string	"sa_restorer"
.LASF42:
	.string	"_cur_column"
.LASF62:
	.string	"sys_nerr"
.LASF261:
	.string	"initial_read"
.LASF323:
	.string	"sufindex"
.LASF109:
	.string	"_arch"
.LASF10:
	.string	"__dev_t"
.LASF64:
	.string	"_sys_nerr"
.LASF327:
	.string	"no_filters"
.LASF336:
	.string	"set_suffix_length"
.LASF155:
	.string	"__environ"
.LASF8:
	.string	"long int"
.LASF234:
	.string	"type_digits"
.LASF304:
	.string	"n_buf"
.LASF85:
	.string	"has_arg"
.LASF260:
	.string	"specified_buf_size"
.LASF55:
	.string	"_IO_marker"
.LASF333:
	.string	"main"
.LASF351:
	.string	"emit_size_note"
.LASF240:
	.string	"IO_BLKSIZE_OPTION"
.LASF256:
	.string	"n_units"
.LASF170:
	.string	"_ISprint"
.LASF289:
	.string	"chunk_end"
.LASF246:
	.string	"opid"
.LASF209:
	.string	"open_pipes_alloc"
.LASF208:
	.string	"open_pipes"
.LASF4:
	.string	"signed char"
.LASF21:
	.string	"__blksize_t"
.LASF73:
	.string	"_IO_FILE"
.LASF135:
	.string	"__timezone"
.LASF57:
	.string	"_IO_wide_data"
.LASF145:
	.string	"st_uid"
.LASF117:
	.string	"si_signo"
.LASF286:
	.string	"__PRETTY_FUNCTION__"
.LASF218:
	.string	"suffix_length"
.LASF237:
	.string	"type_rr"
.LASF231:
	.string	"type_bytes"
.LASF104:
	.string	"_bounds"
.LASF191:
	.string	"quoting_style_args"
.LASF156:
	.string	"environ"
.LASF122:
	.string	"siginfo_t"
.LASF2:
	.string	"unsigned char"
.LASF49:
	.string	"_freeres_list"
.LASF222:
	.string	"infile"
.LASF147:
	.string	"st_rdev"
.LASF264:
	.string	"neweol"
.LASF292:
	.string	"chunk_truncated"
.LASF128:
	.string	"sa_mask"
.LASF269:
	.string	"wrapped"
.LASF200:
	.string	"strtol_error"
.LASF252:
	.string	"split_type"
.LASF345:
	.string	"emit_ancillary_info"
.LASF194:
	.string	"error_message_count"
.LASF258:
	.string	"digits_optind"
.LASF247:
	.string	"of_t"
.LASF23:
	.string	"__syscall_slong_t"
.LASF217:
	.string	"_Bool"
.LASF99:
	.string	"_upper"
.LASF313:
	.string	"bytes"
.LASF224:
	.string	"output_desc"
.LASF270:
	.string	"wrote"
.LASF294:
	.string	"line_bytes_split"
.LASF24:
	.string	"char"
.LASF112:
	.string	"_timer"
.LASF360:
	.string	"_IO_lock_t"
.LASF232:
	.string	"type_byteslines"
.LASF254:
	.string	"page_size"
.LASF279:
	.string	"ceiling"
.LASF272:
	.string	"i_file"
.LASF214:
	.string	"outfile"
.LASF219:
	.string	"suffix_alphabet"
.LASF138:
	.string	"timezone"
.LASF184:
	.string	"shell_escape_always_quoting_style"
.LASF14:
	.string	"__mode_t"
.LASF97:
	.string	"si_stime"
.LASF302:
	.string	"split_rest"
.LASF26:
	.string	"_IO_read_ptr"
.LASF297:
	.string	"n_hold"
.LASF118:
	.string	"si_errno"
.LASF59:
	.string	"stdin"
.LASF63:
	.string	"sys_errlist"
.LASF216:
	.string	"suffix_auto"
.LASF107:
	.string	"_call_addr"
.LASF37:
	.string	"_markers"
.LASF179:
	.string	"program_name"
.LASF174:
	.string	"_ISpunct"
.LASF299:
	.string	"hold_size"
.LASF239:
	.string	"FILTER_OPTION"
.LASF235:
	.string	"type_chunk_bytes"
.LASF186:
	.string	"c_maybe_quoting_style"
.LASF318:
	.string	"out_stat_buf"
.LASF265:
	.string	"buffer"
.LASF204:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF101:
	.string	"_pkey"
.LASF331:
	.string	"input_file_size"
.LASF259:
	.string	"file_size"
.LASF157:
	.string	"program_invocation_name"
.LASF233:
	.string	"type_lines"
.LASF46:
	.string	"_offset"
.LASF88:
	.string	"sival_ptr"
.LASF287:
	.string	"chunk_size"
.LASF146:
	.string	"st_gid"
.LASF202:
	.string	"LONGINT_OVERFLOW"
.LASF80:
	.string	"optind"
.LASF348:
	.string	"node"
.LASF295:
	.string	"n_bytes"
.LASF341:
	.string	"ignorable"
.LASF189:
	.string	"clocale_quoting_style"
.LASF193:
	.string	"error_print_progname"
.LASF317:
	.string	"create"
.LASF0:
	.string	"long unsigned int"
.LASF309:
	.string	"filter_ok"
.LASF335:
	.string	"status"
.LASF40:
	.string	"_flags2"
.LASF148:
	.string	"st_size"
.LASF28:
	.string	"_IO_read_base"
.LASF257:
	.string	"multipliers"
.LASF83:
	.string	"option"
.LASF53:
	.string	"_unused2"
.LASF253:
	.string	"in_blk_size"
.LASF103:
	.string	"si_addr_lsb"
.LASF168:
	.string	"_ISxdigit"
.LASF250:
	.string	"argc"
.LASF114:
	.string	"_sigfault"
.LASF41:
	.string	"_old_offset"
.LASF347:
	.string	"infomap"
.LASF251:
	.string	"argv"
.LASF22:
	.string	"__blkcnt_t"
.LASF181:
	.string	"shell_quoting_style"
.LASF339:
	.string	"alphabet_len"
.LASF13:
	.string	"__ino_t"
.LASF127:
	.string	"__sigaction_handler"
.LASF288:
	.string	"chunk_no"
.LASF211:
	.string	"oldblocked"
.LASF230:
	.string	"type_undef"
.LASF7:
	.string	"__uint32_t"
.LASF225:
	.string	"verbose"
.LASF66:
	.string	"long long int"
.LASF346:
	.string	"program"
.LASF159:
	.string	"Version"
.LASF160:
	.string	"exit_failure"
.LASF77:
	.string	"_gl_cxxalias_dummy"
.LASF223:
	.string	"in_stat_buf"
.LASF164:
	.string	"_ISupper"
.LASF95:
	.string	"si_status"
.LASF236:
	.string	"type_chunk_lines"
.LASF185:
	.string	"c_quoting_style"
.LASF173:
	.string	"_IScntrl"
.LASF31:
	.string	"_IO_write_end"
.LASF161:
	.string	"uintmax_t"
.LASF274:
	.string	"line_no"
.LASF205:
	.string	"LONGINT_INVALID"
.LASF310:
	.string	"opened"
.LASF293:
	.string	"skip"
.LASF132:
	.string	"sys_siglist"
.LASF100:
	.string	"_addr_bnd"
.LASF177:
	.string	"GETOPT_VERSION_CHAR"
.LASF32:
	.string	"_IO_buf_base"
.LASF98:
	.string	"_lower"
.LASF298:
	.string	"hold"
.LASF1:
	.string	"unsigned int"
.LASF306:
	.string	"n_lines"
.LASF178:
	.string	"version_etc_copyright"
.LASF343:
	.string	"usable_st_size"
.LASF206:
	.string	"filter_command"
.LASF121:
	.string	"_sifields"
.LASF192:
	.string	"quoting_style_vals"
.LASF180:
	.string	"literal_quoting_style"
.LASF120:
	.string	"__pad0"
.LASF136:
	.string	"tzname"
.LASF115:
	.string	"_sigpoll"
.LASF51:
	.string	"__pad5"
.LASF215:
	.string	"outfile_mid"
.LASF68:
	.string	"pid_t"
.LASF86:
	.string	"flag"
.LASF285:
	.string	"lines_chunk_split"
.LASF305:
	.string	"lines_split"
.LASF255:
	.string	"k_units"
.LASF113:
	.string	"_sigchld"
.LASF197:
	.string	"quoting_options"
.LASF25:
	.string	"_flags"
.LASF324:
	.string	"outbase_length"
.LASF350:
	.string	"lc_messages"
.LASF198:
	.string	"quote_quoting_options"
.LASF19:
	.string	"__clock_t"
.LASF52:
	.string	"_mode"
.LASF243:
	.string	"of_info"
.LASF307:
	.string	"bytes_split"
.LASF47:
	.string	"_codecvt"
.LASF163:
	.string	"LOG10_TIMESPEC_HZ"
.LASF143:
	.string	"st_nlink"
.LASF58:
	.string	"off_t"
.LASF319:
	.string	"fd_pair"
.LASF277:
	.string	"next"
.LASF67:
	.string	"long double"
.LASF245:
	.string	"ofile"
.LASF106:
	.string	"si_fd"
.LASF210:
	.string	"n_open_pipes"
.LASF54:
	.string	"FILE"
.LASF18:
	.string	"__pid_t"
.LASF111:
	.string	"_kill"
.LASF242:
	.string	"longopts"
.LASF141:
	.string	"st_dev"
.LASF201:
	.string	"LONGINT_OK"
.LASF74:
	.string	"timespec"
.LASF166:
	.string	"_ISalpha"
.LASF82:
	.string	"optopt"
.LASF188:
	.string	"locale_quoting_style"
.LASF332:
	.string	"size"
.LASF78:
	.string	"long long unsigned int"
.LASF172:
	.string	"_ISblank"
.LASF16:
	.string	"__off_t"
.LASF199:
	.string	"quoting_style"
.LASF175:
	.string	"_ISalnum"
.LASF158:
	.string	"program_invocation_short_name"
.LASF94:
	.string	"si_sigval"
.LASF221:
	.string	"additional_suffix"
.LASF358:
	.string	"src/split.c"
.LASF92:
	.string	"si_tid"
.LASF352:
	.string	"emit_mandatory_arg_note"
.LASF50:
	.string	"_freeres_buf"
.LASF72:
	.string	"sigset_t"
.LASF169:
	.string	"_ISspace"
.LASF124:
	.string	"sa_handler"
.LASF354:
	.string	"ptr_align"
.LASF81:
	.string	"opterr"
.LASF359:
	.string	"/root/coreutils"
.LASF20:
	.string	"__time_t"
.LASF126:
	.string	"sigaction"
.LASF244:
	.string	"of_name"
.LASF35:
	.string	"_IO_backup_base"
.LASF44:
	.string	"_shortbuf"
.LASF271:
	.string	"file_limit"
.LASF129:
	.string	"sa_flags"
.LASF356:
	.string	"to_uchar"
.LASF311:
	.string	"ofile_open"
.LASF196:
	.string	"IO_BUFSIZE"
.LASF182:
	.string	"shell_always_quoting_style"
.LASF17:
	.string	"__off64_t"
.LASF93:
	.string	"si_overrun"
.LASF296:
	.string	"n_out"
.LASF87:
	.string	"sival_int"
.LASF207:
	.string	"filter_pid"
.LASF226:
	.string	"elide_empty_files"
.LASF249:
	.string	"OFD_APPEND"
.LASF187:
	.string	"escape_quoting_style"
.LASF33:
	.string	"_IO_buf_end"
.LASF91:
	.string	"si_uid"
.LASF283:
	.string	"bytes_chunk_extract"
.LASF108:
	.string	"_syscall"
.LASF84:
	.string	"name"
.LASF338:
	.string	"n_units_end"
.LASF321:
	.string	"shell_prog"
.LASF165:
	.string	"_ISlower"
.LASF349:
	.string	"map_prog"
.LASF61:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF312:
	.string	"cwrite"
.LASF76:
	.string	"tv_nsec"
.LASF334:
	.string	"usage"
.LASF183:
	.string	"shell_escape_quoting_style"
.LASF43:
	.string	"_vtable_offset"
.LASF340:
	.string	"n_start"
.LASF276:
	.string	"to_write"
.LASF65:
	.string	"_sys_errlist"
.LASF9:
	.string	"__uintmax_t"
.LASF123:
	.string	"__sighandler_t"
.LASF275:
	.string	"n_read"
.LASF110:
	.string	"_pad"
.LASF325:
	.string	"outfile_length"
.LASF70:
	.string	"__val"
.LASF162:
	.string	"TIMESPEC_HZ"
.LASF320:
	.string	"child_pid"
.LASF212:
	.string	"newblocked"
.LASF353:
	.string	"emit_stdin_note"
.LASF238:
	.string	"VERBOSE_OPTION"
.LASF102:
	.string	"si_addr"
.LASF116:
	.string	"_sigsys"
.LASF134:
	.string	"__daylight"
.LASF220:
	.string	"numeric_suffix_start"
.LASF337:
	.string	"suffix_length_needed"
.LASF308:
	.string	"max_files"
.LASF316:
	.string	"signame"
.LASF89:
	.string	"__sigval_t"
.LASF267:
	.string	"lines_rr"
.LASF303:
	.string	"n_write"
.LASF144:
	.string	"st_mode"
.LASF11:
	.string	"__uid_t"
.LASF125:
	.string	"sa_sigaction"
.LASF27:
	.string	"_IO_read_end"
.LASF228:
	.string	"eolchar"
.LASF262:
	.string	"this_optind"
.LASF213:
	.string	"outbase"
.LASF291:
	.string	"new_file_flag"
.LASF139:
	.string	"getdate_err"
.LASF361:
	.string	"sigval"
.LASF39:
	.string	"_fileno"
.LASF90:
	.string	"si_pid"
.LASF300:
	.string	"split_line"
.LASF48:
	.string	"_wide_data"
.LASF79:
	.string	"optarg"
.LASF167:
	.string	"_ISdigit"
.LASF3:
	.string	"short unsigned int"
.LASF60:
	.string	"stdout"
.LASF278:
	.string	"bp_out"
.LASF273:
	.string	"files"
.LASF30:
	.string	"_IO_write_ptr"
.LASF344:
	.string	"bad_cast"
.LASF137:
	.string	"daylight"
.LASF142:
	.string	"st_ino"
.LASF15:
	.string	"__nlink_t"
.LASF71:
	.string	"__sigset_t"
.LASF229:
	.string	"Split_type"
.LASF75:
	.string	"tv_sec"
.LASF190:
	.string	"custom_quoting_style"
.LASF301:
	.string	"n_left"
.LASF96:
	.string	"si_utime"
.LASF280:
	.string	"i_check"
.LASF151:
	.string	"st_atim"
.LASF290:
	.string	"n_written"
.LASF314:
	.string	"closeout"
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
