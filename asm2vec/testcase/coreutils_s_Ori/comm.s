	.file	"comm.c"
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
	.local	hard_LC_COLLATE
	.comm	hard_LC_COLLATE,1,1
	.local	only_file_1
	.comm	only_file_1,1,1
	.local	only_file_2
	.comm	only_file_2,1,1
	.local	both
	.comm	both,1,1
	.local	seen_unpairable
	.comm	seen_unpairable,1,1
	.local	issued_disorder_warning
	.comm	issued_disorder_warning,2,1
	.data
	.type	delim, @object
	.size	delim, 1
delim:
	.byte	10
	.local	total_option
	.comm	total_option,1,1
	.local	check_input_order
	.comm	check_input_order,4,4
	.section	.rodata
.LC18:
	.string	"\t"
	.section	.data.rel.local,"aw"
	.align 8
	.type	col_sep, @object
	.size	col_sep, 8
col_sep:
	.quad	.LC18
	.local	col_sep_len
	.comm	col_sep_len,8,8
	.section	.rodata
.LC19:
	.string	"check-order"
.LC20:
	.string	"nocheck-order"
.LC21:
	.string	"output-delimiter"
.LC22:
	.string	"total"
.LC23:
	.string	"zero-terminated"
.LC24:
	.string	"help"
.LC25:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 256
long_options:
	.quad	.LC19
	.long	0
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
	.long	1
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC25
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
.LC26:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC27:
	.string	"Usage: %s [OPTION]... FILE1 FILE2\n"
	.align 8
.LC28:
	.string	"Compare sorted files FILE1 and FILE2 line by line.\n"
	.align 8
.LC29:
	.string	"\nWhen FILE1 or FILE2 (not both) is -, read standard input.\n"
	.align 8
.LC30:
	.string	"\nWith no options, produce three-column output.  Column one contains\nlines unique to FILE1, column two contains lines unique to FILE2,\nand column three contains lines common to both files.\n"
	.align 8
.LC31:
	.string	"\n  -1              suppress column 1 (lines unique to FILE1)\n  -2              suppress column 2 (lines unique to FILE2)\n  -3              suppress column 3 (lines that appear in both files)\n"
	.align 8
.LC32:
	.string	"\n  --check-order     check that the input is correctly sorted, even\n                      if all input lines are pairable\n  --nocheck-order   do not check that the input is correctly sorted\n"
	.align 8
.LC33:
	.string	"  --output-delimiter=STR  separate columns with STR\n"
	.align 8
.LC34:
	.string	"  --total           output a summary\n"
	.align 8
.LC35:
	.string	"  -z, --zero-terminated    line delimiter is NUL, not newline\n"
	.align 8
.LC36:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC37:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC38:
	.string	"\nNote, comparisons honor the rules specified by 'LC_COLLATE'.\n"
	.align 8
.LC39:
	.string	"\nExamples:\n  %s -12 file1 file2  Print only lines present in both file1 and file2.\n  %s -3 file1 file2  Print lines in file1 not in file2, and vice versa.\n"
.LC40:
	.string	"comm"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/comm.c"
	.loc 2 107 1 is_stmt 1
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
	.loc 2 108 6
	cmpl	$0, -20(%rbp)
	je	.L11
	.loc 2 109 5
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
	jmp	.L12
.L11:
	.loc 2 112 7
	movq	program_name(%rip), %rbx
	.loc 2 112 15
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	.loc 2 112 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 116 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 119 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 123 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 129 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 135 7
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 141 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 144 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 147 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 150 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 151 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 152 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 156 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 156 15
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	.loc 2 156 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 163 7
	leaq	.LC40(%rip), %rdi
	call	emit_ancillary_info
.L12:
	.loc 2 165 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	writeline, @function
writeline:
.LFB47:
	.loc 2 175 1
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
	movl	%edx, -20(%rbp)
	.loc 2 176 3
	cmpl	$3, -20(%rbp)
	je	.L14
	cmpl	$3, -20(%rbp)
	jg	.L15
	cmpl	$1, -20(%rbp)
	je	.L16
	cmpl	$2, -20(%rbp)
	je	.L17
	jmp	.L15
.L16:
	.loc 2 179 11
	movzbl	only_file_1(%rip), %eax
	xorl	$1, %eax
	.loc 2 179 10
	testb	%al, %al
	je	.L25
	.loc 2 180 9
	jmp	.L13
.L17:
	.loc 2 184 11
	movzbl	only_file_2(%rip), %eax
	xorl	$1, %eax
	.loc 2 184 10
	testb	%al, %al
	jne	.L26
	.loc 2 186 11
	movzbl	only_file_1(%rip), %eax
	.loc 2 186 10
	testb	%al, %al
	je	.L27
	.loc 2 187 9
	movq	col_sep_len(%rip), %rdx
	movq	col_sep(%rip), %rax
	movq	-16(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 188 7
	jmp	.L27
.L14:
	.loc 2 191 11
	movzbl	both(%rip), %eax
	xorl	$1, %eax
	.loc 2 191 10
	testb	%al, %al
	jne	.L28
	.loc 2 193 11
	movzbl	only_file_1(%rip), %eax
	.loc 2 193 10
	testb	%al, %al
	je	.L23
	.loc 2 194 9
	movq	col_sep_len(%rip), %rdx
	movq	col_sep(%rip), %rax
	movq	-16(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
.L23:
	.loc 2 195 11
	movzbl	only_file_2(%rip), %eax
	.loc 2 195 10
	testb	%al, %al
	je	.L29
	.loc 2 196 9
	movq	col_sep_len(%rip), %rdx
	movq	col_sep(%rip), %rax
	movq	-16(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 197 7
	jmp	.L29
.L25:
	.loc 2 181 7
	nop
	jmp	.L15
.L27:
	.loc 2 188 7
	nop
	jmp	.L15
.L29:
	.loc 2 197 7
	nop
.L15:
	.loc 2 200 3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	jmp	.L13
.L26:
	.loc 2 185 9
	nop
	jmp	.L13
.L28:
	.loc 2 192 9
	nop
.L13:
	.loc 2 201 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	writeline, .-writeline
	.section	.rodata
	.align 8
.LC41:
	.string	"file %d is not in sorted order"
	.text
	.type	check_order, @function
check_order:
.LFB48:
	.loc 2 218 1
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
	movl	%edx, -36(%rbp)
	.loc 2 220 25
	movl	check_input_order(%rip), %eax
	.loc 2 220 6
	cmpl	$2, %eax
	je	.L35
	.loc 2 221 30
	movl	check_input_order(%rip), %eax
	.loc 2 221 7
	cmpl	$1, %eax
	je	.L32
	.loc 2 221 54 discriminator 1
	movzbl	seen_unpairable(%rip), %eax
	testb	%al, %al
	je	.L35
.L32:
	.loc 2 223 45
	movl	-36(%rbp), %eax
	subl	$1, %eax
	.loc 2 223 35
	cltq
	leaq	issued_disorder_warning(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 223 11
	xorl	$1, %eax
	.loc 2 223 10
	testb	%al, %al
	je	.L35
.LBB2:
	.loc 2 227 15
	movzbl	hard_LC_COLLATE(%rip), %eax
	.loc 2 227 14
	testb	%al, %al
	je	.L33
	.loc 2 229 55
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 228 21
	leaq	-1(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 228 49
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 228 21
	leaq	-1(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	xmemcoll@PLT
	movl	%eax, -4(%rbp)
	jmp	.L34
.L33:
	.loc 2 232 54
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 231 21
	leaq	-1(%rax), %rcx
	.loc 2 232 37
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 231 48
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 231 21
	leaq	-1(%rax), %rsi
	.loc 2 231 34
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 231 21
	movq	%rax, %rdi
	call	memcmp2@PLT
	movl	%eax, -4(%rbp)
.L34:
	.loc 2 234 14
	cmpl	$0, -4(%rbp)
	jle	.L35
	.loc 2 238 25
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 236 15
	movl	check_input_order(%rip), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	-36(%rbp), %edx
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 242 48
	movl	-36(%rbp), %eax
	subl	$1, %eax
	.loc 2 242 53
	cltq
	leaq	issued_disorder_warning(%rip), %rdx
	movb	$1, (%rax,%rdx)
.L35:
.LBE2:
	.loc 2 246 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	check_order, .-check_order
	.section	.rodata
.LC42:
	.string	"-"
.LC43:
	.string	"r"
.LC44:
	.string	"%s"
.LC45:
	.string	"%s%s%s%s%s%s%s%c"
	.text
	.type	compare_files, @function
compare_files:
.LFB49:
	.loc 2 255 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -536(%rbp)
	.loc 2 255 1
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	.loc 2 275 13
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$0, -416(%rbp)
	.loc 2 280 10
	movl	$0, -524(%rbp)
	.loc 2 280 3
	jmp	.L37
.L44:
	.loc 2 282 14
	movl	$0, -520(%rbp)
	.loc 2 282 7
	jmp	.L38
.L39:
	.loc 2 284 11 discriminator 3
	leaq	-336(%rbp), %rsi
	movl	-520(%rbp), %eax
	cltq
	movq	%rax, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	movq	%rax, %rdx
	movl	-524(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movq	%rax, %rdi
	call	initbuffer@PLT
	.loc 2 285 28 discriminator 3
	leaq	-336(%rbp), %rsi
	movl	-520(%rbp), %eax
	cltq
	movq	%rax, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	movq	%rax, %rdx
	movl	-524(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%rdx, %rax
	leaq	(%rsi,%rax), %rdx
	.loc 2 285 26 discriminator 3
	movl	-520(%rbp), %eax
	cltq
	movl	-524(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movq	%rdx, -400(%rbp,%rax,8)
	.loc 2 282 27 discriminator 3
	addl	$1, -520(%rbp)
.L38:
	.loc 2 282 7 discriminator 1
	cmpl	$3, -520(%rbp)
	jle	.L39
	.loc 2 287 17
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$416, %rax
	movl	$0, (%rax)
	.loc 2 288 17
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$412, %rax
	movl	$0, (%rax)
	.loc 2 289 17
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$408, %rax
	movl	$0, (%rax)
	.loc 2 290 21
	movl	-524(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-536(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 290 53
	testl	%eax, %eax
	je	.L40
	.loc 2 290 69 discriminator 1
	movl	-524(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-536(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 290 55 discriminator 1
	movq	(%rax), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	fopen_safer@PLT
	jmp	.L41
.L40:
	.loc 2 290 53 discriminator 2
	movq	stdin(%rip), %rax
.L41:
	.loc 2 290 18 discriminator 4
	movl	-524(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -480(%rbp,%rdx,8)
	.loc 2 291 19 discriminator 4
	movl	-524(%rbp), %eax
	cltq
	movq	-480(%rbp,%rax,8), %rax
	.loc 2 291 10 discriminator 4
	testq	%rax, %rax
	jne	.L42
.LBB3:
	.loc 2 292 9
	movl	-524(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-536(%rbp), %rax
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
	leaq	.LC44(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L42:
.LBE3:
	.loc 2 294 7
	movl	-524(%rbp), %eax
	cltq
	movq	-480(%rbp,%rax,8), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 296 21
	movzbl	delim(%rip), %eax
	movsbl	%al, %esi
	movl	-524(%rbp), %eax
	cltq
	movq	-480(%rbp,%rax,8), %rcx
	.loc 2 296 61
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$416, %rax
	movl	(%rax), %eax
	.loc 2 296 21
	cltq
	movl	-524(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	-400(%rbp,%rax,8), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readlinebuffer_delim@PLT
	.loc 2 296 19
	movl	-524(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -496(%rbp,%rdx,8)
	.loc 2 298 11
	movl	-524(%rbp), %eax
	cltq
	movq	-480(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 298 10
	testl	%eax, %eax
	je	.L43
.LBB4:
	.loc 2 299 9
	movl	-524(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-536(%rbp), %rax
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
	leaq	.LC44(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L43:
.LBE4:
	.loc 2 280 23 discriminator 2
	addl	$1, -524(%rbp)
.L37:
	.loc 2 280 3 discriminator 1
	cmpl	$1, -524(%rbp)
	jle	.L44
	.loc 2 302 9
	jmp	.L45
.L63:
.LBB5:
	.loc 2 305 12
	movb	$0, -498(%rbp)
	movb	$0, -497(%rbp)
	.loc 2 309 20
	movq	-496(%rbp), %rax
	.loc 2 309 10
	testq	%rax, %rax
	jne	.L46
	.loc 2 310 15
	movl	$1, -516(%rbp)
	jmp	.L47
.L46:
	.loc 2 311 25
	movq	-488(%rbp), %rax
	.loc 2 311 15
	testq	%rax, %rax
	jne	.L48
	.loc 2 312 15
	movl	$-1, -516(%rbp)
	jmp	.L47
.L48:
	.loc 2 315 15
	movzbl	hard_LC_COLLATE(%rip), %eax
	.loc 2 315 14
	testb	%al, %al
	je	.L49
	.loc 2 317 60
	movq	-488(%rbp), %rax
	.loc 2 317 63
	movq	8(%rax), %rax
	.loc 2 316 21
	leaq	-1(%rax), %rcx
	.loc 2 317 39
	movq	-488(%rbp), %rax
	.loc 2 316 21
	movq	16(%rax), %rdx
	.loc 2 316 60
	movq	-496(%rbp), %rax
	.loc 2 316 63
	movq	8(%rax), %rax
	.loc 2 316 21
	leaq	-1(%rax), %rsi
	.loc 2 316 39
	movq	-496(%rbp), %rax
	.loc 2 316 21
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	xmemcoll@PLT
	movl	%eax, -516(%rbp)
	jmp	.L47
.L49:
.LBB6:
	.loc 2 320 28
	movq	-488(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-496(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	.loc 2 320 22
	subq	$1, %rax
	movq	%rax, -512(%rbp)
	.loc 2 321 60
	movq	-488(%rbp), %rax
	.loc 2 321 63
	movq	16(%rax), %rcx
	.loc 2 321 39
	movq	-496(%rbp), %rax
	.loc 2 321 42
	movq	16(%rax), %rax
	.loc 2 321 23
	movq	-512(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -516(%rbp)
	.loc 2 322 18
	cmpl	$0, -516(%rbp)
	jne	.L47
	.loc 2 323 34
	movq	-496(%rbp), %rax
	.loc 2 323 37
	movq	8(%rax), %rdx
	.loc 2 323 56
	movq	-488(%rbp), %rax
	.loc 2 323 59
	movq	8(%rax), %rax
	.loc 2 325 26
	cmpq	%rax, %rdx
	jb	.L50
	.loc 2 325 36 discriminator 1
	movq	-496(%rbp), %rax
	.loc 2 325 39 discriminator 1
	movq	8(%rax), %rdx
	.loc 2 325 59 discriminator 1
	movq	-488(%rbp), %rax
	.loc 2 325 62 discriminator 1
	movq	8(%rax), %rax
	.loc 2 325 48 discriminator 1
	cmpq	%rax, %rdx
	setne	%al
	.loc 2 325 26 discriminator 1
	movzbl	%al, %eax
	jmp	.L51
.L50:
	.loc 2 325 26 is_stmt 0 discriminator 2
	movl	$-1, %eax
.L51:
	.loc 2 323 23 is_stmt 1
	movl	%eax, -516(%rbp)
.L47:
.LBE6:
	.loc 2 330 10
	cmpl	$0, -516(%rbp)
	jne	.L52
	.loc 2 333 16
	movq	-416(%rbp), %rax
	.loc 2 333 19
	addq	$1, %rax
	movq	%rax, -416(%rbp)
	.loc 2 334 11
	movq	stdout(%rip), %rcx
	.loc 2 334 30
	movq	-488(%rbp), %rax
	.loc 2 334 11
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	writeline
	jmp	.L53
.L52:
	.loc 2 338 27
	movb	$1, seen_unpairable(%rip)
	.loc 2 339 14
	cmpl	$0, -516(%rbp)
	jg	.L54
	.loc 2 342 20
	movq	-432(%rbp), %rax
	.loc 2 342 23
	addq	$1, %rax
	movq	%rax, -432(%rbp)
	.loc 2 343 15
	movq	stdout(%rip), %rcx
	.loc 2 343 34
	movq	-496(%rbp), %rax
	.loc 2 343 15
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	writeline
	jmp	.L53
.L54:
	.loc 2 348 20
	movq	-424(%rbp), %rax
	.loc 2 348 23
	addq	$1, %rax
	movq	%rax, -424(%rbp)
	.loc 2 349 15
	movq	stdout(%rip), %rcx
	.loc 2 349 34
	movq	-488(%rbp), %rax
	.loc 2 349 15
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	writeline
.L53:
	.loc 2 355 10
	cmpl	$0, -516(%rbp)
	js	.L55
	.loc 2 356 20
	movb	$1, -497(%rbp)
.L55:
	.loc 2 357 10
	cmpl	$0, -516(%rbp)
	jg	.L56
	.loc 2 358 20
	movb	$1, -498(%rbp)
.L56:
	.loc 2 360 14
	movl	$0, -524(%rbp)
	.loc 2 360 7
	jmp	.L57
.L62:
	.loc 2 361 20
	movl	-524(%rbp), %eax
	cltq
	movzbl	-498(%rbp,%rax), %eax
	.loc 2 361 12
	testb	%al, %al
	je	.L58
	.loc 2 364 31
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$412, %rax
	movl	(%rax), %ecx
	.loc 2 364 23
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$408, %rax
	movl	%ecx, (%rax)
	.loc 2 365 31
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$416, %rax
	movl	(%rax), %ecx
	.loc 2 365 23
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$412, %rax
	movl	%ecx, (%rax)
	.loc 2 366 32
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$416, %rax
	movl	(%rax), %eax
	.loc 2 366 36
	addl	$1, %eax
	.loc 2 366 41
	andl	$3, %eax
	movl	%eax, %ecx
	.loc 2 366 23
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$416, %rax
	movl	%ecx, (%rax)
	.loc 2 368 27
	movzbl	delim(%rip), %eax
	movsbl	%al, %esi
	movl	-524(%rbp), %eax
	cltq
	movq	-480(%rbp,%rax,8), %rcx
	.loc 2 368 67
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rdi
	addq	%rdi, %rax
	subq	$416, %rax
	movl	(%rax), %eax
	.loc 2 368 27
	cltq
	movl	-524(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	-400(%rbp,%rax,8), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readlinebuffer_delim@PLT
	.loc 2 368 25
	movl	-524(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -496(%rbp,%rdx,8)
	.loc 2 371 25
	movl	-524(%rbp), %eax
	cltq
	movq	-496(%rbp,%rax,8), %rax
	.loc 2 371 16
	testq	%rax, %rax
	je	.L59
	.loc 2 372 15
	movl	-524(%rbp), %eax
	leal	1(%rax), %esi
	.loc 2 372 60
	movl	-524(%rbp), %eax
	cltq
	movq	-496(%rbp,%rax,8), %rcx
	.loc 2 372 46
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$412, %rax
	movl	(%rax), %eax
	.loc 2 372 39
	cltq
	movl	-524(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	-400(%rbp,%rax,8), %rax
	.loc 2 372 15
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_order
	jmp	.L60
.L59:
	.loc 2 377 40
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rdi
	addq	%rdi, %rax
	subq	$408, %rax
	movl	(%rax), %eax
	.loc 2 377 33
	cltq
	movl	-524(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	-400(%rbp,%rax,8), %rax
	.loc 2 377 44
	movq	16(%rax), %rax
	.loc 2 377 21
	testq	%rax, %rax
	je	.L60
	.loc 2 378 15
	movl	-524(%rbp), %eax
	leal	1(%rax), %esi
	.loc 2 379 46
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rbx
	addq	%rbx, %rax
	subq	$412, %rax
	movl	(%rax), %eax
	.loc 2 379 39
	cltq
	movl	-524(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	-400(%rbp,%rax,8), %rcx
	.loc 2 378 46
	movl	-524(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-48(%rbp), %rdi
	addq	%rdi, %rax
	subq	$408, %rax
	movl	(%rax), %eax
	.loc 2 378 39
	cltq
	movl	-524(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	-400(%rbp,%rax,8), %rax
	.loc 2 378 15
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_order
.L60:
	.loc 2 381 17
	movl	-524(%rbp), %eax
	cltq
	movq	-480(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 381 16
	testl	%eax, %eax
	je	.L61
.LBB7:
	.loc 2 382 15
	movl	-524(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-536(%rbp), %rax
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
	leaq	.LC44(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L61:
.LBE7:
	.loc 2 384 24
	movl	-524(%rbp), %eax
	cltq
	movb	$0, -498(%rbp,%rax)
.L58:
	.loc 2 360 27 discriminator 2
	addl	$1, -524(%rbp)
.L57:
	.loc 2 360 7 discriminator 1
	cmpl	$1, -524(%rbp)
	jle	.L62
.L45:
.LBE5:
	.loc 2 302 18
	movq	-496(%rbp), %rax
	.loc 2 302 9
	testq	%rax, %rax
	jne	.L63
	.loc 2 302 33 discriminator 1
	movq	-488(%rbp), %rax
	.loc 2 302 22 discriminator 1
	testq	%rax, %rax
	jne	.L63
	.loc 2 388 10
	movl	$0, -524(%rbp)
	.loc 2 388 3
	jmp	.L64
.L66:
	.loc 2 389 9
	movl	-524(%rbp), %eax
	cltq
	movq	-480(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 389 8
	testl	%eax, %eax
	je	.L65
.LBB8:
	.loc 2 390 7
	movl	-524(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-536(%rbp), %rax
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
	leaq	.LC44(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L65:
.LBE8:
	.loc 2 388 23 discriminator 2
	addl	$1, -524(%rbp)
.L64:
	.loc 2 388 3 discriminator 1
	cmpl	$1, -524(%rbp)
	jle	.L66
	.loc 2 392 7
	movzbl	total_option(%rip), %eax
	.loc 2 392 6
	testb	%al, %al
	je	.L69
.LBB9:
	.loc 2 398 7
	movzbl	delim(%rip), %eax
	movzbl	%al, %r14d
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %r12
	movq	col_sep(%rip), %r13
	movq	-416(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, -544(%rbp)
	movq	col_sep(%rip), %rbx
	movq	%rbx, -552(%rbp)
	movq	-424(%rbp), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %r15
	movq	col_sep(%rip), %rbx
	movq	-432(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	subq	$8, %rsp
	pushq	%r14
	pushq	%r12
	pushq	%r13
	movq	-544(%rbp), %r9
	movq	-552(%rbp), %r8
	movq	%r15, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$32, %rsp
.L69:
.LBE9:
	.loc 2 404 1
	nop
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L68
	call	__stack_chk_fail@PLT
.L68:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	compare_files, .-compare_files
	.section	.rodata
.LC46:
	.string	"/usr/local/share/locale"
	.align 8
.LC47:
	.string	"multiple output delimiters specified"
.LC48:
	.string	"David MacKenzie"
.LC49:
	.string	"Richard M. Stallman"
.LC50:
	.string	"123z"
.LC51:
	.string	"missing operand"
.LC52:
	.string	"missing operand after %s"
.LC53:
	.string	"extra operand %s"
.LC54:
	.string	"input is not in sorted order"
	.text
	.globl	main
	.type	main, @function
main:
.LFB50:
	.loc 2 408 1
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
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 412 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 413 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 414 3
	leaq	.LC46(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 415 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 416 21
	movl	$3, %edi
	call	hard_locale@PLT
	.loc 2 416 19
	movb	%al, hard_LC_COLLATE(%rip)
	.loc 2 418 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 420 15
	movb	$1, only_file_1(%rip)
	.loc 2 421 15
	movb	$1, only_file_2(%rip)
	.loc 2 422 8
	movb	$1, both(%rip)
	.loc 2 424 19
	movb	$0, seen_unpairable(%rip)
	.loc 2 425 59
	movb	$0, 1+issued_disorder_warning(%rip)
	.loc 2 425 55
	movzbl	1+issued_disorder_warning(%rip), %eax
	.loc 2 425 30
	movb	%al, issued_disorder_warning(%rip)
	.loc 2 426 21
	movl	$0, check_input_order(%rip)
	.loc 2 427 16
	movb	$0, total_option(%rip)
	.loc 2 429 9
	jmp	.L71
.L88:
	.loc 2 430 5
	cmpl	$131, -20(%rbp)
	jg	.L72
	cmpl	$122, -20(%rbp)
	jge	.L73
	cmpl	$51, -20(%rbp)
	je	.L74
	cmpl	$51, -20(%rbp)
	jg	.L72
	cmpl	$50, -20(%rbp)
	je	.L75
	cmpl	$50, -20(%rbp)
	jg	.L72
	cmpl	$49, -20(%rbp)
	je	.L76
	cmpl	$49, -20(%rbp)
	jg	.L72
	cmpl	$-131, -20(%rbp)
	je	.L77
	cmpl	$-130, -20(%rbp)
	je	.L78
	jmp	.L72
.L73:
	movl	-20(%rbp), %eax
	subl	$122, %eax
	cmpl	$9, %eax
	ja	.L72
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L80(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L80(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L80:
	.long	.L84-.L80
	.long	.L72-.L80
	.long	.L72-.L80
	.long	.L72-.L80
	.long	.L72-.L80
	.long	.L72-.L80
	.long	.L83-.L80
	.long	.L82-.L80
	.long	.L81-.L80
	.long	.L79-.L80
	.text
.L76:
	.loc 2 433 21
	movb	$0, only_file_1(%rip)
	.loc 2 434 9
	jmp	.L71
.L75:
	.loc 2 437 21
	movb	$0, only_file_2(%rip)
	.loc 2 438 9
	jmp	.L71
.L74:
	.loc 2 441 14
	movb	$0, both(%rip)
	.loc 2 442 9
	jmp	.L71
.L84:
	.loc 2 445 15
	movb	$0, delim(%rip)
	.loc 2 446 9
	jmp	.L71
.L82:
	.loc 2 449 27
	movl	$2, check_input_order(%rip)
	.loc 2 450 9
	jmp	.L71
.L83:
	.loc 2 453 27
	movl	$1, check_input_order(%rip)
	.loc 2 454 9
	jmp	.L71
.L81:
	.loc 2 457 13
	movq	col_sep_len(%rip), %rax
	.loc 2 457 12
	testq	%rax, %rax
	je	.L85
	.loc 2 457 29 discriminator 1
	movq	optarg(%rip), %rdx
	movq	col_sep(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 457 25 discriminator 1
	testl	%eax, %eax
	je	.L85
.LBB10:
	.loc 2 458 11
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L85:
.LBE10:
	.loc 2 459 17
	movq	optarg(%rip), %rax
	movq	%rax, col_sep(%rip)
	.loc 2 460 23
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 460 49
	testb	%al, %al
	je	.L86
	.loc 2 460 33 discriminator 1
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L87
.L86:
	.loc 2 460 49 discriminator 2
	movl	$1, %eax
.L87:
	.loc 2 460 21 discriminator 4
	movq	%rax, col_sep_len(%rip)
	.loc 2 461 9 discriminator 4
	jmp	.L71
.L79:
	.loc 2 464 22
	movb	$1, total_option(%rip)
	.loc 2 465 9
	jmp	.L71
.L78:
	.loc 2 467 7
	movl	$0, %edi
	call	usage
.L77:
	.loc 2 469 7
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC48(%rip), %r9
	leaq	.LC49(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L72:
	.loc 2 472 9
	movl	$1, %edi
	call	usage
.L71:
	.loc 2 429 15
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -20(%rbp)
	.loc 2 429 9
	cmpl	$-1, -20(%rbp)
	jne	.L88
	.loc 2 475 7
	movq	col_sep_len(%rip), %rax
	.loc 2 475 6
	testq	%rax, %rax
	jne	.L89
	.loc 2 476 17
	movq	$1, col_sep_len(%rip)
.L89:
	.loc 2 478 12
	movl	optind(%rip), %eax
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 478 6
	cmpl	$1, %eax
	jg	.L90
	.loc 2 480 16
	movl	optind(%rip), %eax
	.loc 2 480 10
	cmpl	%eax, -36(%rbp)
	jg	.L91
	.loc 2 481 22
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	.loc 2 481 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L92
.L91:
	.loc 2 483 64
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 483 9
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 483 22
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	.loc 2 483 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L92:
	.loc 2 484 7
	movl	$1, %edi
	call	usage
.L90:
	.loc 2 487 16
	movl	optind(%rip), %eax
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 487 6
	cmpl	$2, %eax
	jle	.L93
	.loc 2 489 54
	movl	optind(%rip), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 489 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 489 20
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	.loc 2 489 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 490 7
	movl	$1, %edi
	call	usage
.L93:
	.loc 2 493 23
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 493 3
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	compare_files
	.loc 2 495 30
	movzbl	issued_disorder_warning(%rip), %eax
	.loc 2 495 6
	testb	%al, %al
	jne	.L94
	.loc 2 495 60 discriminator 1
	movzbl	1+issued_disorder_warning(%rip), %eax
	.loc 2 495 34 discriminator 1
	testb	%al, %al
	je	.L95
.L94:
.LBB11:
	.loc 2 496 5
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L95:
.LBE11:
	.loc 2 498 12
	movl	$0, %eax
	.loc 2 499 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 8 "./lib/sys/select.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/signal.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/errno.h"
	.file 13 "src/version.h"
	.file 14 "./lib/exitfail.h"
	.file 15 "/usr/include/stdint.h"
	.file 16 "./lib/timespec.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/linebuffer.h"
	.file 25 "./lib/error.h"
	.file 26 "./lib/fadvise.h"
	.file 27 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc0f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF167
	.byte	0xc
	.long	.LASF168
	.long	.LASF169
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
	.long	.LASF43
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
	.byte	0x49
	.byte	0x1b
	.long	0xe8
	.uleb128 0xb
	.long	.LASF16
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0xfd
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0xfd
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0xfd
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.byte	0x7
	.byte	0x12
	.long	0x128
	.uleb128 0xb
	.long	.LASF20
	.byte	0x7
	.byte	0xd1
	.byte	0x17
	.long	0xe8
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF22
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF23
	.uleb128 0xe
	.long	0x39
	.long	0x179
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF24
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x169
	.uleb128 0x2
	.long	.LASF25
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF26
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0xfd
	.uleb128 0x2
	.long	.LASF27
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x169
	.uleb128 0x2
	.long	.LASF28
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF29
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0xfd
	.uleb128 0xd
	.long	.LASF30
	.byte	0x9
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF31
	.uleb128 0x10
	.uleb128 0x3
	.byte	0x8
	.long	0x1d5
	.uleb128 0xe
	.long	0xc8
	.long	0x1ec
	.uleb128 0xf
	.long	0xe8
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x1dc
	.uleb128 0xd
	.long	.LASF32
	.byte	0xa
	.value	0x11e
	.byte	0x1a
	.long	0x1ec
	.uleb128 0xd
	.long	.LASF33
	.byte	0xa
	.value	0x11f
	.byte	0x1a
	.long	0x1ec
	.uleb128 0xd
	.long	.LASF34
	.byte	0xb
	.value	0x21f
	.byte	0xf
	.long	0x218
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0xd
	.long	.LASF35
	.byte	0xb
	.value	0x221
	.byte	0xf
	.long	0x218
	.uleb128 0x2
	.long	.LASF36
	.byte	0xc
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF37
	.byte	0xc
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF38
	.byte	0xd
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF39
	.byte	0xe
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xb
	.long	.LASF40
	.byte	0xf
	.byte	0x66
	.byte	0x16
	.long	0x104
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x10
	.byte	0x29
	.byte	0x6
	.long	0x27f
	.uleb128 0x12
	.long	.LASF41
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x10
	.byte	0x2a
	.byte	0x6
	.long	0x294
	.uleb128 0x13
	.long	.LASF42
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0xd8
	.byte	0x11
	.byte	0x31
	.byte	0x8
	.long	0x41b
	.uleb128 0x9
	.long	.LASF45
	.byte	0x11
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x11
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF47
	.byte	0x11
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF48
	.byte	0x11
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF49
	.byte	0x11
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF50
	.byte	0x11
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF51
	.byte	0x11
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF52
	.byte	0x11
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF53
	.byte	0x11
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF54
	.byte	0x11
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF55
	.byte	0x11
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF56
	.byte	0x11
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF57
	.byte	0x11
	.byte	0x44
	.byte	0x16
	.long	0x434
	.byte	0x60
	.uleb128 0x9
	.long	.LASF58
	.byte	0x11
	.byte	0x46
	.byte	0x14
	.long	0x43a
	.byte	0x68
	.uleb128 0x9
	.long	.LASF59
	.byte	0x11
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF60
	.byte	0x11
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF61
	.byte	0x11
	.byte	0x4a
	.byte	0xb
	.long	0x110
	.byte	0x78
	.uleb128 0x9
	.long	.LASF62
	.byte	0x11
	.byte	0x4d
	.byte	0x12
	.long	0xda
	.byte	0x80
	.uleb128 0x9
	.long	.LASF63
	.byte	0x11
	.byte	0x4e
	.byte	0xf
	.long	0xef
	.byte	0x82
	.uleb128 0x9
	.long	.LASF64
	.byte	0x11
	.byte	0x4f
	.byte	0x8
	.long	0x440
	.byte	0x83
	.uleb128 0x9
	.long	.LASF65
	.byte	0x11
	.byte	0x51
	.byte	0xf
	.long	0x450
	.byte	0x88
	.uleb128 0x9
	.long	.LASF66
	.byte	0x11
	.byte	0x59
	.byte	0xd
	.long	0x11c
	.byte	0x90
	.uleb128 0x9
	.long	.LASF67
	.byte	0x11
	.byte	0x5b
	.byte	0x17
	.long	0x45b
	.byte	0x98
	.uleb128 0x9
	.long	.LASF68
	.byte	0x11
	.byte	0x5c
	.byte	0x19
	.long	0x466
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x11
	.byte	0x5d
	.byte	0x14
	.long	0x43a
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF70
	.byte	0x11
	.byte	0x5e
	.byte	0x9
	.long	0x134
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF71
	.byte	0x11
	.byte	0x5f
	.byte	0xa
	.long	0x142
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF72
	.byte	0x11
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF73
	.byte	0x11
	.byte	0x62
	.byte	0x8
	.long	0x46c
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF74
	.byte	0x12
	.byte	0x7
	.byte	0x19
	.long	0x294
	.uleb128 0x14
	.long	.LASF170
	.byte	0x11
	.byte	0x2b
	.byte	0xe
	.uleb128 0x15
	.long	.LASF75
	.uleb128 0x3
	.byte	0x8
	.long	0x42f
	.uleb128 0x3
	.byte	0x8
	.long	0x294
	.uleb128 0xe
	.long	0x3f
	.long	0x450
	.uleb128 0xf
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x427
	.uleb128 0x15
	.long	.LASF76
	.uleb128 0x3
	.byte	0x8
	.long	0x456
	.uleb128 0x15
	.long	.LASF77
	.uleb128 0x3
	.byte	0x8
	.long	0x461
	.uleb128 0xe
	.long	0x3f
	.long	0x47c
	.uleb128 0xf
	.long	0xe8
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x13
	.byte	0x89
	.byte	0xe
	.long	0x488
	.uleb128 0x3
	.byte	0x8
	.long	0x41b
	.uleb128 0x2
	.long	.LASF79
	.byte	0x13
	.byte	0x8a
	.byte	0xe
	.long	0x488
	.uleb128 0x2
	.long	.LASF80
	.byte	0x13
	.byte	0x8b
	.byte	0xe
	.long	0x488
	.uleb128 0x2
	.long	.LASF81
	.byte	0x14
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	0xc8
	.long	0x4bd
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.long	0x4b2
	.uleb128 0x2
	.long	.LASF82
	.byte	0x14
	.byte	0x1b
	.byte	0x1a
	.long	0x4bd
	.uleb128 0x2
	.long	.LASF83
	.byte	0x14
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF84
	.byte	0x14
	.byte	0x1f
	.byte	0x1a
	.long	0x4bd
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x504
	.uleb128 0x18
	.long	.LASF85
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF86
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0x46
	.long	0x50f
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.long	0x504
	.uleb128 0x2
	.long	.LASF87
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x50f
	.uleb128 0x2
	.long	.LASF88
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x19
	.long	.LASF171
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x581
	.uleb128 0x13
	.long	.LASF89
	.byte	0
	.uleb128 0x13
	.long	.LASF90
	.byte	0x1
	.uleb128 0x13
	.long	.LASF91
	.byte	0x2
	.uleb128 0x13
	.long	.LASF92
	.byte	0x3
	.uleb128 0x13
	.long	.LASF93
	.byte	0x4
	.uleb128 0x13
	.long	.LASF94
	.byte	0x5
	.uleb128 0x13
	.long	.LASF95
	.byte	0x6
	.uleb128 0x13
	.long	.LASF96
	.byte	0x7
	.uleb128 0x13
	.long	.LASF97
	.byte	0x8
	.uleb128 0x13
	.long	.LASF98
	.byte	0x9
	.uleb128 0x13
	.long	.LASF99
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x52c
	.uleb128 0xd
	.long	.LASF100
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x4bd
	.uleb128 0xe
	.long	0x581
	.long	0x59e
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.long	0x593
	.uleb128 0xd
	.long	.LASF101
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x59e
	.uleb128 0x8
	.long	.LASF102
	.byte	0x18
	.byte	0x18
	.byte	0x1a
	.byte	0x8
	.long	0x5e5
	.uleb128 0x9
	.long	.LASF103
	.byte	0x18
	.byte	0x1c
	.byte	0xa
	.long	0x142
	.byte	0
	.uleb128 0x9
	.long	.LASF104
	.byte	0x18
	.byte	0x1d
	.byte	0xa
	.long	0x142
	.byte	0x8
	.uleb128 0x9
	.long	.LASF105
	.byte	0x18
	.byte	0x1e
	.byte	0x9
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x5b0
	.uleb128 0x2
	.long	.LASF106
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x1d6
	.uleb128 0x2
	.long	.LASF107
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0xe1
	.uleb128 0x2
	.long	.LASF108
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x1a
	.byte	0x2d
	.byte	0xe
	.long	0x641
	.uleb128 0x13
	.long	.LASF109
	.byte	0
	.uleb128 0x13
	.long	.LASF110
	.byte	0x2
	.uleb128 0x13
	.long	.LASF111
	.byte	0x5
	.uleb128 0x13
	.long	.LASF112
	.byte	0x4
	.uleb128 0x13
	.long	.LASF113
	.byte	0x3
	.uleb128 0x13
	.long	.LASF114
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	.LASF115
	.uleb128 0x2
	.long	.LASF116
	.byte	0x1b
	.byte	0x19
	.byte	0x1f
	.long	0x641
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x2
	.byte	0x2e
	.byte	0xd
	.long	0x668
	.uleb128 0x9
	.byte	0x3
	.quad	hard_LC_COLLATE
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF117
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x2
	.byte	0x31
	.byte	0xd
	.long	0x668
	.uleb128 0x9
	.byte	0x3
	.quad	only_file_1
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x2
	.byte	0x34
	.byte	0xd
	.long	0x668
	.uleb128 0x9
	.byte	0x3
	.quad	only_file_2
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x2
	.byte	0x37
	.byte	0xd
	.long	0x668
	.uleb128 0x9
	.byte	0x3
	.quad	both
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x2
	.byte	0x3a
	.byte	0xd
	.long	0x668
	.uleb128 0x9
	.byte	0x3
	.quad	seen_unpairable
	.uleb128 0xe
	.long	0x668
	.long	0x6d7
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x2
	.byte	0x3d
	.byte	0xd
	.long	0x6c7
	.uleb128 0x9
	.byte	0x3
	.quad	issued_disorder_warning
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x2
	.byte	0x40
	.byte	0x16
	.long	0xd3
	.uleb128 0x9
	.byte	0x3
	.quad	delim
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x2
	.byte	0x43
	.byte	0xd
	.long	0x668
	.uleb128 0x9
	.byte	0x3
	.quad	total_option
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.byte	0x47
	.byte	0x3
	.long	0x73a
	.uleb128 0x13
	.long	.LASF126
	.byte	0
	.uleb128 0x13
	.long	.LASF127
	.byte	0x1
	.uleb128 0x13
	.long	.LASF128
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x2
	.byte	0x4b
	.byte	0x5
	.long	0x719
	.uleb128 0x9
	.byte	0x3
	.quad	check_input_order
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x2
	.byte	0x4f
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	col_sep
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x2
	.byte	0x50
	.byte	0xf
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	col_sep_len
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0x7a3
	.uleb128 0x13
	.long	.LASF132
	.byte	0x80
	.uleb128 0x13
	.long	.LASF133
	.byte	0x81
	.uleb128 0x13
	.long	.LASF134
	.byte	0x82
	.uleb128 0x13
	.long	.LASF135
	.byte	0x83
	.byte	0
	.uleb128 0xe
	.long	0xbd
	.long	0x7b3
	.uleb128 0xf
	.long	0xe8
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x7a3
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x2
	.byte	0x5c
	.byte	0x1c
	.long	0x7b3
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1b
	.long	.LASF158
	.byte	0x2
	.value	0x197
	.byte	0x1
	.long	0x57
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x842
	.uleb128 0x1c
	.long	.LASF137
	.byte	0x2
	.value	0x197
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x2
	.value	0x197
	.byte	0x18
	.long	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"c"
	.byte	0x2
	.value	0x199
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.byte	0
	.uleb128 0x1f
	.long	.LASF149
	.byte	0x2
	.byte	0xfe
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x9dd
	.uleb128 0x20
	.long	.LASF139
	.byte	0x2
	.byte	0xfe
	.byte	0x17
	.long	0x218
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x1d
	.string	"lba"
	.byte	0x2
	.value	0x101
	.byte	0x15
	.long	0x9dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x21
	.long	.LASF140
	.byte	0x2
	.value	0x105
	.byte	0x16
	.long	0x9f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x21
	.long	.LASF141
	.byte	0x2
	.value	0x10a
	.byte	0x16
	.long	0xa09
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x1d
	.string	"alt"
	.byte	0x2
	.value	0x10d
	.byte	0x7
	.long	0xa1f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x21
	.long	.LASF142
	.byte	0x2
	.value	0x110
	.byte	0x9
	.long	0xa35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x21
	.long	.LASF143
	.byte	0x2
	.value	0x113
	.byte	0xd
	.long	0xa45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x1d
	.string	"i"
	.byte	0x2
	.value	0x115
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0x1d
	.string	"j"
	.byte	0x2
	.value	0x115
	.byte	0xa
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x1e
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x986
	.uleb128 0x21
	.long	.LASF144
	.byte	0x2
	.value	0x130
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x21
	.long	.LASF145
	.byte	0x2
	.value	0x131
	.byte	0xc
	.long	0x6c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -514
	.uleb128 0x22
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x974
	.uleb128 0x1d
	.string	"len"
	.byte	0x2
	.value	0x140
	.byte	0x16
	.long	0x142
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.byte	0
	.uleb128 0x1e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.uleb128 0x1e
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x23
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x21
	.long	.LASF146
	.byte	0x2
	.value	0x18b
	.byte	0xc
	.long	0xa55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF147
	.byte	0x2
	.value	0x18c
	.byte	0xc
	.long	0xa55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF148
	.byte	0x2
	.value	0x18d
	.byte	0xc
	.long	0xa55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x5b0
	.long	0x9f3
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.uleb128 0xf
	.long	0xe8
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	0xa03
	.long	0xa03
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x5b0
	.uleb128 0xe
	.long	0xa03
	.long	0xa1f
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.uleb128 0xf
	.long	0xe8
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	0x57
	.long	0xa35
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.uleb128 0xf
	.long	0xe8
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x488
	.long	0xa45
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	0x25b
	.long	0xa55
	.uleb128 0xf
	.long	0xe8
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x3f
	.long	0xa65
	.uleb128 0xf
	.long	0xe8
	.byte	0x14
	.byte	0
	.uleb128 0x1f
	.long	.LASF150
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xad2
	.uleb128 0x20
	.long	.LASF151
	.byte	0x2
	.byte	0xd7
	.byte	0x27
	.long	0xad2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF152
	.byte	0x2
	.byte	0xd8
	.byte	0x27
	.long	0xad2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF153
	.byte	0x2
	.byte	0xd9
	.byte	0x12
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x2
	.byte	0xe1
	.byte	0xf
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x5e5
	.uleb128 0x1f
	.long	.LASF154
	.byte	0x2
	.byte	0xae
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xb24
	.uleb128 0x20
	.long	.LASF155
	.byte	0x2
	.byte	0xae
	.byte	0x25
	.long	0xad2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF156
	.byte	0x2
	.byte	0xae
	.byte	0x31
	.long	0x488
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF157
	.byte	0x2
	.byte	0xae
	.byte	0x3d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF159
	.byte	0x2
	.byte	0x6a
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xb52
	.uleb128 0x20
	.long	.LASF160
	.byte	0x2
	.byte	0x6a
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF161
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf7
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF163
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xbad
	.uleb128 0x27
	.long	.LASF162
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x27
	.long	.LASF164
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xb82
	.uleb128 0x21
	.long	.LASF163
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xc07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF164
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF165
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xc0c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF166
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0xbad
	.long	0xc07
	.uleb128 0xf
	.long	0xe8
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0xbf7
	.uleb128 0x3
	.byte	0x8
	.long	0xbad
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x27
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"exit_failure"
.LASF16:
	.string	"__off_t"
.LASF120:
	.string	"only_file_2"
.LASF110:
	.string	"FADVISE_SEQUENTIAL"
.LASF97:
	.string	"locale_quoting_style"
.LASF58:
	.string	"_chain"
.LASF86:
	.string	"GETOPT_VERSION_CHAR"
.LASF171:
	.string	"quoting_style"
.LASF20:
	.string	"size_t"
.LASF42:
	.string	"LOG10_TIMESPEC_HZ"
.LASF64:
	.string	"_shortbuf"
.LASF146:
	.string	"buf1"
.LASF147:
	.string	"buf2"
.LASF148:
	.string	"buf3"
.LASF151:
	.string	"prev"
.LASF91:
	.string	"shell_always_quoting_style"
.LASF135:
	.string	"TOTAL_OPTION"
.LASF90:
	.string	"shell_quoting_style"
.LASF85:
	.string	"GETOPT_HELP_CHAR"
.LASF52:
	.string	"_IO_buf_base"
.LASF121:
	.string	"both"
.LASF22:
	.string	"long long unsigned int"
.LASF144:
	.string	"order"
.LASF67:
	.string	"_codecvt"
.LASF26:
	.string	"__timezone"
.LASF23:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF101:
	.string	"quoting_style_vals"
.LASF40:
	.string	"uintmax_t"
.LASF162:
	.string	"program"
.LASF96:
	.string	"escape_quoting_style"
.LASF142:
	.string	"streams"
.LASF89:
	.string	"literal_quoting_style"
.LASF59:
	.string	"_fileno"
.LASF88:
	.string	"program_name"
.LASF47:
	.string	"_IO_read_end"
.LASF156:
	.string	"stream"
.LASF33:
	.string	"sys_siglist"
.LASF14:
	.string	"long int"
.LASF21:
	.string	"_gl_cxxalias_dummy"
.LASF136:
	.string	"long_options"
.LASF139:
	.string	"infiles"
.LASF45:
	.string	"_flags"
.LASF134:
	.string	"OUTPUT_DELIMITER_OPTION"
.LASF68:
	.string	"_wide_data"
.LASF53:
	.string	"_IO_buf_end"
.LASF62:
	.string	"_cur_column"
.LASF37:
	.string	"program_invocation_short_name"
.LASF94:
	.string	"c_quoting_style"
.LASF76:
	.string	"_IO_codecvt"
.LASF133:
	.string	"NOCHECK_ORDER_OPTION"
.LASF132:
	.string	"CHECK_ORDER_OPTION"
.LASF84:
	.string	"_sys_errlist"
.LASF36:
	.string	"program_invocation_name"
.LASF61:
	.string	"_old_offset"
.LASF66:
	.string	"_offset"
.LASF155:
	.string	"line"
.LASF41:
	.string	"TIMESPEC_HZ"
.LASF93:
	.string	"shell_escape_always_quoting_style"
.LASF29:
	.string	"timezone"
.LASF149:
	.string	"compare_files"
.LASF92:
	.string	"shell_escape_quoting_style"
.LASF75:
	.string	"_IO_marker"
.LASF78:
	.string	"stdin"
.LASF10:
	.string	"unsigned int"
.LASF70:
	.string	"_freeres_buf"
.LASF145:
	.string	"fill_up"
.LASF11:
	.string	"long unsigned int"
.LASF50:
	.string	"_IO_write_ptr"
.LASF5:
	.string	"name"
.LASF81:
	.string	"sys_nerr"
.LASF167:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF103:
	.string	"size"
.LASF9:
	.string	"short unsigned int"
.LASF108:
	.string	"error_one_per_line"
.LASF38:
	.string	"Version"
.LASF168:
	.string	"src/comm.c"
.LASF54:
	.string	"_IO_save_base"
.LASF140:
	.string	"thisline"
.LASF35:
	.string	"environ"
.LASF128:
	.string	"CHECK_ORDER_DISABLED"
.LASF65:
	.string	"_lock"
.LASF60:
	.string	"_flags2"
.LASF143:
	.string	"total"
.LASF79:
	.string	"stdout"
.LASF87:
	.string	"version_etc_copyright"
.LASF0:
	.string	"optarg"
.LASF30:
	.string	"getdate_err"
.LASF123:
	.string	"issued_disorder_warning"
.LASF1:
	.string	"optind"
.LASF102:
	.string	"linebuffer"
.LASF46:
	.string	"_IO_read_ptr"
.LASF17:
	.string	"__off64_t"
.LASF170:
	.string	"_IO_lock_t"
.LASF44:
	.string	"_IO_FILE"
.LASF106:
	.string	"error_print_progname"
.LASF165:
	.string	"map_prog"
.LASF34:
	.string	"__environ"
.LASF19:
	.string	"time_t"
.LASF72:
	.string	"_mode"
.LASF82:
	.string	"sys_errlist"
.LASF157:
	.string	"class"
.LASF57:
	.string	"_markers"
.LASF150:
	.string	"check_order"
.LASF131:
	.string	"col_sep_len"
.LASF129:
	.string	"check_input_order"
.LASF95:
	.string	"c_maybe_quoting_style"
.LASF117:
	.string	"_Bool"
.LASF8:
	.string	"unsigned char"
.LASF164:
	.string	"node"
.LASF13:
	.string	"short int"
.LASF43:
	.string	"option"
.LASF124:
	.string	"delim"
.LASF116:
	.string	"quote_quoting_options"
.LASF7:
	.string	"flag"
.LASF83:
	.string	"_sys_nerr"
.LASF63:
	.string	"_vtable_offset"
.LASF27:
	.string	"tzname"
.LASF74:
	.string	"FILE"
.LASF141:
	.string	"all_line"
.LASF114:
	.string	"FADVISE_RANDOM"
.LASF152:
	.string	"current"
.LASF111:
	.string	"FADVISE_NOREUSE"
.LASF100:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF28:
	.string	"daylight"
.LASF127:
	.string	"CHECK_ORDER_ENABLED"
.LASF31:
	.string	"long double"
.LASF104:
	.string	"length"
.LASF2:
	.string	"char"
.LASF112:
	.string	"FADVISE_DONTNEED"
.LASF118:
	.string	"hard_LC_COLLATE"
.LASF18:
	.string	"__time_t"
.LASF98:
	.string	"clocale_quoting_style"
.LASF105:
	.string	"buffer"
.LASF3:
	.string	"opterr"
.LASF126:
	.string	"CHECK_ORDER_DEFAULT"
.LASF15:
	.string	"__uintmax_t"
.LASF109:
	.string	"FADVISE_NORMAL"
.LASF115:
	.string	"quoting_options"
.LASF48:
	.string	"_IO_read_base"
.LASF56:
	.string	"_IO_save_end"
.LASF119:
	.string	"only_file_1"
.LASF32:
	.string	"_sys_siglist"
.LASF163:
	.string	"infomap"
.LASF125:
	.string	"total_option"
.LASF130:
	.string	"col_sep"
.LASF6:
	.string	"has_arg"
.LASF159:
	.string	"usage"
.LASF71:
	.string	"__pad5"
.LASF51:
	.string	"_IO_write_end"
.LASF73:
	.string	"_unused2"
.LASF80:
	.string	"stderr"
.LASF138:
	.string	"argv"
.LASF122:
	.string	"seen_unpairable"
.LASF25:
	.string	"__daylight"
.LASF154:
	.string	"writeline"
.LASF160:
	.string	"status"
.LASF169:
	.string	"/root/coreutils"
.LASF99:
	.string	"custom_quoting_style"
.LASF55:
	.string	"_IO_backup_base"
.LASF107:
	.string	"error_message_count"
.LASF166:
	.string	"lc_messages"
.LASF137:
	.string	"argc"
.LASF69:
	.string	"_freeres_list"
.LASF77:
	.string	"_IO_wide_data"
.LASF153:
	.string	"whatfile"
.LASF113:
	.string	"FADVISE_WILLNEED"
.LASF24:
	.string	"__tzname"
.LASF158:
	.string	"main"
.LASF49:
	.string	"_IO_write_base"
.LASF161:
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
