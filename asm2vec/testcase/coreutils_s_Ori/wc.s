	.file	"wc.c"
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
.LC1:
	.string	"["
.LC2:
	.string	"test invocation"
.LC3:
	.string	"coreutils"
.LC4:
	.string	"Multi-call invocation"
.LC5:
	.string	"sha224sum"
.LC6:
	.string	"sha2 utilities"
.LC7:
	.string	"sha256sum"
.LC8:
	.string	"sha384sum"
.LC9:
	.string	"sha512sum"
.LC10:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC11:
	.string	"https://www.gnu.org/software/coreutils/"
.LC12:
	.string	"GNU coreutils"
.LC13:
	.string	"en_"
	.align 8
.LC14:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC15:
	.string	"Full documentation <%s%s>\n"
.LC16:
	.string	" invocation"
.LC17:
	.string	""
	.align 8
.LC18:
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
	leaq	.LC1(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC6(%rip), %rax
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
	leaq	.LC10(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC11(%rip), %rdx
	leaq	.LC12(%rip), %rsi
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
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L9
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L9:
	.loc 1 669 11
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L10
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L11
.L10:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L11:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC18(%rip), %rdi
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
	.type	usable_st_size, @function
usable_st_size:
.LFB43:
	.loc 1 706 1 is_stmt 1
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
	je	.L14
	.loc 1 707 36 discriminator 2
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31 discriminator 2
	cmpl	$40960, %eax
	jne	.L15
.L14:
	.loc 1 708 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L16
.L15:
	.loc 1 708 31 discriminator 4
	movl	$0, %eax
.L16:
	.loc 1 708 31 discriminator 6
	andl	$1, %eax
	.loc 1 709 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	usable_st_size, .-usable_st_size
	.local	total_lines
	.comm	total_lines,8,8
	.local	total_words
	.comm	total_words,8,8
	.local	total_chars
	.comm	total_chars,8,8
	.local	total_bytes
	.comm	total_bytes,8,8
	.local	max_line_length
	.comm	max_line_length,8,8
	.local	print_lines
	.comm	print_lines,1,1
	.local	print_words
	.comm	print_words,1,1
	.local	print_chars
	.comm	print_chars,1,1
	.local	print_bytes
	.comm	print_bytes,1,1
	.local	print_linelength
	.comm	print_linelength,1,1
	.local	number_width
	.comm	number_width,4,4
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.local	page_size
	.comm	page_size,8,8
	.local	posixly_correct
	.comm	posixly_correct,1,1
	.section	.rodata
.LC19:
	.string	"bytes"
.LC20:
	.string	"chars"
.LC21:
	.string	"lines"
.LC22:
	.string	"words"
.LC23:
	.string	"files0-from"
.LC24:
	.string	"max-line-length"
.LC25:
	.string	"help"
.LC26:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 288
longopts:
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	109
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC23
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	76
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC26
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
.LC27:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC28:
	.string	"Usage: %s [OPTION]... [FILE]...\n  or:  %s [OPTION]... --files0-from=F\n"
	.align 8
.LC29:
	.string	"Print newline, word, and byte counts for each FILE, and a total line if\nmore than one FILE is specified.  A word is a non-zero-length sequence of\ncharacters delimited by white space.\n"
	.align 8
.LC30:
	.ascii	"\nThe options below may be used to select whi"
	.string	"ch counts are printed, always in\nthe following order: newline, word, character, byte, maximum line length.\n  -c, --bytes            print the byte counts\n  -m, --chars            print the character counts\n  -l, --lines            print the newline counts\n"
	.align 8
.LC31:
	.ascii	"      --files0-from=F    read input from the"
	.string	" files specified by\n                           NUL-terminated names in file F;\n                           If F is - then read names from standard input\n  -L, --max-line-length  print the maximum display width\n  -w, --words            print the word counts\n"
	.align 8
.LC32:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC33:
	.string	"      --version  output version information and exit\n"
.LC34:
	.string	"wc"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB53:
	.file 2 "src/wc.c"
	.loc 2 113 1
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
	.loc 2 114 6
	cmpl	$0, -20(%rbp)
	je	.L19
	.loc 2 115 5
	movq	program_name(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L20
.L19:
	.loc 2 118 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 118 15
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	.loc 2 118 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 123 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 129 7
	call	emit_stdin_note
	.loc 2 131 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 139 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 146 7
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 147 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 148 7
	leaq	.LC34(%rip), %rdi
	call	emit_ancillary_info
.L20:
	.loc 2 150 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE53:
	.size	usage, .-usage
	.type	iswnbspace, @function
iswnbspace:
.LFB54:
	.loc 2 156 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 157 10
	movzbl	posixly_correct(%rip), %eax
	xorl	$1, %eax
	.loc 2 158 10
	testb	%al, %al
	je	.L22
	.loc 2 158 10 is_stmt 0 discriminator 1
	cmpl	$160, -4(%rbp)
	je	.L23
	.loc 2 158 27 is_stmt 1 discriminator 4
	cmpl	$8199, -4(%rbp)
	je	.L23
	.loc 2 159 14
	cmpl	$8239, -4(%rbp)
	je	.L23
	.loc 2 159 30 discriminator 1
	cmpl	$8288, -4(%rbp)
	jne	.L22
.L23:
	.loc 2 158 10 discriminator 5
	movl	$1, %eax
	jmp	.L25
.L22:
	.loc 2 158 10 is_stmt 0 discriminator 2
	movl	$0, %eax
.L25:
	.loc 2 160 1 is_stmt 1 discriminator 8
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	iswnbspace, .-iswnbspace
	.type	isnbspace, @function
isnbspace:
.LFB55:
	.loc 2 164 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 2 165 10
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	btowc@PLT
	movl	%eax, %edi
	call	iswnbspace
	.loc 2 166 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	isnbspace, .-isnbspace
	.section	.rodata
.LC35:
	.string	" %s"
	.text
	.type	write_counts, @function
write_counts:
.LFB56:
	.loc 2 177 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	.loc 2 177 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 179 15
	leaq	1+format_sp_int.6995(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 182 7
	movzbl	print_lines(%rip), %eax
	.loc 2 182 6
	testb	%al, %al
	je	.L29
	.loc 2 184 7
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdx
	movl	number_width(%rip), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 185 18
	leaq	format_sp_int.6995(%rip), %rax
	movq	%rax, -40(%rbp)
.L29:
	.loc 2 187 7
	movzbl	print_words(%rip), %eax
	.loc 2 187 6
	testb	%al, %al
	je	.L30
	.loc 2 189 7
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdx
	movl	number_width(%rip), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 190 18
	leaq	format_sp_int.6995(%rip), %rax
	movq	%rax, -40(%rbp)
.L30:
	.loc 2 192 7
	movzbl	print_chars(%rip), %eax
	.loc 2 192 6
	testb	%al, %al
	je	.L31
	.loc 2 194 7
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdx
	movl	number_width(%rip), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 195 18
	leaq	format_sp_int.6995(%rip), %rax
	movq	%rax, -40(%rbp)
.L31:
	.loc 2 197 7
	movzbl	print_bytes(%rip), %eax
	.loc 2 197 6
	testb	%al, %al
	je	.L32
	.loc 2 199 7
	leaq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdx
	movl	number_width(%rip), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 200 18
	leaq	format_sp_int.6995(%rip), %rax
	movq	%rax, -40(%rbp)
.L32:
	.loc 2 202 7
	movzbl	print_linelength(%rip), %eax
	.loc 2 202 6
	testb	%al, %al
	je	.L33
	.loc 2 204 7
	leaq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdx
	movl	number_width(%rip), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L33:
	.loc 2 206 6
	cmpq	$0, -96(%rbp)
	je	.L34
	.loc 2 207 20
	movq	-96(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 207 5
	testq	%rax, %rax
	je	.L35
	.loc 2 207 42 discriminator 1
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	jmp	.L36
.L35:
	.loc 2 207 5 discriminator 2
	movq	-96(%rbp), %rax
.L36:
	.loc 2 207 5 is_stmt 0 discriminator 4
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L34:
	.loc 2 208 3 is_stmt 1
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 209 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	write_counts, .-write_counts
	.section	.rodata
.LC36:
	.string	"standard input"
.LC37:
	.string	"%s"
	.text
	.type	wc, @function
wc:
.LFB57:
	.loc 2 217 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	leaq	-16384(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$248, %rsp
	.cfi_offset 3, -24
	movl	%edi, -16612(%rbp)
	movq	%rsi, -16624(%rbp)
	movq	%rdx, -16632(%rbp)
	movq	%rcx, -16640(%rbp)
	.loc 2 217 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 218 8
	movb	$1, -16594(%rbp)
	.loc 2 223 38
	cmpq	$0, -16624(%rbp)
	jne	.L39
	.loc 2 223 40 discriminator 1
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	jmp	.L40
.L39:
	.loc 2 223 38 discriminator 2
	movq	-16624(%rbp), %rax
.L40:
	.loc 2 223 15 discriminator 4
	movq	%rax, -16472(%rbp)
	.loc 2 225 46 discriminator 4
	movq	$0, -16536(%rbp)
	.loc 2 225 33 discriminator 4
	movq	-16536(%rbp), %rax
	movq	%rax, -16544(%rbp)
	.loc 2 225 25 discriminator 4
	movq	-16544(%rbp), %rax
	movq	%rax, -16552(%rbp)
	.loc 2 225 17 discriminator 4
	movq	-16552(%rbp), %rax
	movq	%rax, -16560(%rbp)
	.loc 2 225 9 discriminator 4
	movq	-16560(%rbp), %rax
	movq	%rax, -16568(%rbp)
	.loc 2 230 7 discriminator 4
	call	__ctype_get_mb_cur_max@PLT
	.loc 2 230 6 discriminator 4
	cmpq	$1, %rax
	jbe	.L41
	.loc 2 232 19
	movzbl	print_bytes(%rip), %eax
	movb	%al, -16593(%rbp)
	.loc 2 233 19
	movzbl	print_chars(%rip), %eax
	movb	%al, -16592(%rbp)
	jmp	.L42
.L41:
	.loc 2 238 21
	movzbl	print_bytes(%rip), %eax
	.loc 2 238 33
	testb	%al, %al
	jne	.L43
	.loc 2 238 33 is_stmt 0 discriminator 2
	movzbl	print_chars(%rip), %eax
	testb	%al, %al
	je	.L44
.L43:
	.loc 2 238 33 discriminator 3
	movl	$1, %eax
	jmp	.L45
.L44:
	.loc 2 238 33 discriminator 4
	movl	$0, %eax
.L45:
	.loc 2 238 19 is_stmt 1 discriminator 6
	movb	%al, -16593(%rbp)
	andb	$1, -16593(%rbp)
	.loc 2 239 19 discriminator 6
	movb	$0, -16592(%rbp)
.L42:
	.loc 2 241 23
	movzbl	print_words(%rip), %eax
	.loc 2 241 35
	testb	%al, %al
	jne	.L46
	.loc 2 241 35 is_stmt 0 discriminator 2
	movzbl	print_linelength(%rip), %eax
	testb	%al, %al
	je	.L47
.L46:
	.loc 2 241 35 discriminator 3
	movl	$1, %eax
	jmp	.L48
.L47:
	.loc 2 241 35 discriminator 4
	movl	$0, %eax
.L48:
	.loc 2 241 21 is_stmt 1 discriminator 6
	movb	%al, -16585(%rbp)
	andb	$1, -16585(%rbp)
	.loc 2 244 7 discriminator 6
	movzbl	-16593(%rbp), %eax
	xorl	$1, %eax
	.loc 2 244 6 discriminator 6
	testb	%al, %al
	jne	.L49
	.loc 2 244 20 discriminator 1
	cmpb	$0, -16592(%rbp)
	jne	.L49
	.loc 2 244 35 discriminator 2
	movzbl	print_lines(%rip), %eax
	testb	%al, %al
	jne	.L49
	.loc 2 244 50 discriminator 3
	cmpb	$0, -16585(%rbp)
	je	.L50
.L49:
	.loc 2 245 5
	movl	-16612(%rbp), %eax
	movl	$2, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	fdadvise@PLT
.L50:
	.loc 2 257 6
	cmpb	$0, -16593(%rbp)
	je	.L51
	.loc 2 257 22 discriminator 1
	movzbl	-16592(%rbp), %eax
	xorl	$1, %eax
	.loc 2 257 19 discriminator 1
	testb	%al, %al
	je	.L51
	.loc 2 257 38 discriminator 2
	movzbl	print_lines(%rip), %eax
	xorl	$1, %eax
	.loc 2 257 35 discriminator 2
	testb	%al, %al
	je	.L51
	.loc 2 257 54 discriminator 3
	movzbl	-16585(%rbp), %eax
	xorl	$1, %eax
	.loc 2 257 51 discriminator 3
	testb	%al, %al
	je	.L51
.LBB2:
	.loc 2 259 12
	movb	$0, -16591(%rbp)
	.loc 2 261 22
	movq	-16632(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 261 10
	testl	%eax, %eax
	jle	.L52
	.loc 2 262 27
	movq	-16632(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-16612(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 2 262 25
	movq	-16632(%rbp), %rdx
	movl	%eax, (%rdx)
.L52:
	.loc 2 267 20
	movq	-16632(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 267 10
	testl	%eax, %eax
	jne	.L53
	.loc 2 267 48 discriminator 1
	movq	-16632(%rbp), %rax
	addq	$8, %rax
	.loc 2 267 32 discriminator 1
	movq	%rax, %rdi
	call	usable_st_size
	.loc 2 267 29 discriminator 1
	testb	%al, %al
	je	.L53
	.loc 2 268 30
	movq	-16632(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 268 11
	testq	%rax, %rax
	js	.L53
.LBB3:
	.loc 2 270 39
	movq	-16632(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 270 18
	movq	%rax, -16464(%rbp)
	.loc 2 271 14
	cmpq	$0, -16640(%rbp)
	jns	.L54
	.loc 2 272 27
	movl	-16612(%rbp), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -16640(%rbp)
.L54:
	.loc 2 274 23
	movq	page_size(%rip), %rcx
	movq	-16464(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	.loc 2 274 14
	testq	%rax, %rax
	je	.L55
	.loc 2 284 31
	movq	-16640(%rbp), %rax
	.loc 2 284 49
	cmpq	%rax, -16464(%rbp)
	jb	.L56
	.loc 2 284 59 discriminator 1
	movq	-16640(%rbp), %rax
	.loc 2 284 49 discriminator 1
	movq	-16464(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L57
.L56:
	.loc 2 284 49 is_stmt 0 discriminator 2
	movl	$0, %eax
.L57:
	.loc 2 284 21 is_stmt 1 discriminator 4
	movq	%rax, -16544(%rbp)
	.loc 2 285 25 discriminator 4
	movb	$1, -16591(%rbp)
	jmp	.L53
.L55:
.LBB4:
	.loc 2 289 51
	movq	-16632(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 289 76
	testq	%rax, %rax
	jle	.L58
	.loc 2 289 51 discriminator 1
	movq	-16632(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L58
	.loc 2 289 51 is_stmt 0 discriminator 3
	movq	-16632(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 289 76 is_stmt 1 discriminator 3
	addq	$1, %rax
	movq	%rax, %rcx
	jmp	.L59
.L58:
	.loc 2 289 76 is_stmt 0 discriminator 4
	movl	$513, %ecx
.L59:
	.loc 2 289 48 is_stmt 1 discriminator 6
	movq	-16464(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	.loc 2 289 38 discriminator 6
	movq	-16464(%rbp), %rax
	subq	%rdx, %rax
	.loc 2 289 21 discriminator 6
	movq	%rax, -16456(%rbp)
	.loc 2 290 18 discriminator 6
	cmpq	$0, -16640(%rbp)
	js	.L53
	.loc 2 290 36 discriminator 1
	movq	-16640(%rbp), %rax
	cmpq	-16456(%rbp), %rax
	jge	.L53
	.loc 2 291 27
	movq	-16456(%rbp), %rcx
	movl	-16612(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 2 291 19
	testq	%rax, %rax
	js	.L53
	.loc 2 292 32
	movq	-16456(%rbp), %rax
	subq	-16640(%rbp), %rax
	.loc 2 292 23
	movq	%rax, -16544(%rbp)
.L53:
.LBE4:
.LBE3:
	.loc 2 296 11
	movzbl	-16591(%rbp), %eax
	xorl	$1, %eax
	.loc 2 296 10
	testb	%al, %al
	je	.L130
	.loc 2 298 11
	movl	-16612(%rbp), %eax
	movl	$2, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	fdadvise@PLT
	.loc 2 299 17
	jmp	.L61
.L63:
	.loc 2 301 18
	cmpq	$-1, -16576(%rbp)
	jne	.L62
	.loc 2 303 19
	movq	-16472(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 303 29
	call	__errno_location@PLT
	.loc 2 303 19
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 304 22
	movb	$0, -16594(%rbp)
	.loc 2 305 19
	nop
.LBE2:
	.loc 2 258 5
	jmp	.L130
.L62:
.LBB5:
	.loc 2 307 21
	movq	-16576(%rbp), %rax
	addq	%rax, -16544(%rbp)
.L61:
	.loc 2 299 32
	leaq	-16416(%rbp), %rcx
	movl	-16612(%rbp), %eax
	movl	$16384, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -16576(%rbp)
	.loc 2 299 17
	cmpq	$0, -16576(%rbp)
	jne	.L63
.LBE5:
	.loc 2 258 5
	jmp	.L130
.L51:
	.loc 2 311 12
	movzbl	-16592(%rbp), %eax
	xorl	$1, %eax
	.loc 2 311 11
	testb	%al, %al
	je	.L65
	.loc 2 311 28 discriminator 1
	movzbl	-16585(%rbp), %eax
	xorl	$1, %eax
	.loc 2 311 25 discriminator 1
	testb	%al, %al
	je	.L65
.LBB6:
	.loc 2 315 12
	movb	$0, -16590(%rbp)
	.loc 2 316 13
	jmp	.L66
.L76:
.LBB7:
	.loc 2 318 14
	cmpq	$-1, -16576(%rbp)
	jne	.L67
	.loc 2 320 15
	movq	-16472(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 320 25
	call	__errno_location@PLT
	.loc 2 320 15
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 321 18
	movb	$0, -16594(%rbp)
	.loc 2 322 15
	nop
.LBE7:
.LBE6:
	.loc 2 312 5
	jmp	.L64
.L67:
.LBB9:
.LBB8:
	.loc 2 325 17
	movq	-16576(%rbp), %rax
	addq	%rax, -16544(%rbp)
	.loc 2 327 17
	leaq	-16416(%rbp), %rax
	movq	%rax, -16528(%rbp)
	.loc 2 328 17
	movq	-16528(%rbp), %rdx
	movq	-16576(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16448(%rbp)
	.loc 2 329 21
	movq	-16568(%rbp), %rax
	movq	%rax, -16440(%rbp)
	.loc 2 331 15
	movzbl	-16590(%rbp), %eax
	xorl	$1, %eax
	.loc 2 331 14
	testb	%al, %al
	je	.L73
	.loc 2 334 21
	jmp	.L70
.L71:
	.loc 2 335 28
	movq	-16528(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16528(%rbp)
	.loc 2 335 26
	movzbl	(%rax), %eax
	.loc 2 335 31
	cmpb	$10, %al
	sete	%al
	movzbl	%al, %eax
	cltq
	.loc 2 335 23
	addq	%rax, -16568(%rbp)
.L70:
	.loc 2 334 21
	movq	-16528(%rbp), %rax
	cmpq	-16448(%rbp), %rax
	jne	.L71
	jmp	.L72
.L74:
	.loc 2 342 19
	addq	$1, -16528(%rbp)
	.loc 2 343 19
	addq	$1, -16568(%rbp)
.L73:
	.loc 2 340 48
	movq	-16448(%rbp), %rax
	subq	-16528(%rbp), %rax
	.loc 2 340 27
	movq	%rax, %rdx
	movq	-16528(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -16528(%rbp)
	.loc 2 340 21
	cmpq	$0, -16528(%rbp)
	jne	.L74
.L72:
	.loc 2 353 21
	movq	-16568(%rbp), %rax
	subq	-16440(%rbp), %rax
	movq	%rax, %rcx
	.loc 2 353 44
	movq	-16576(%rbp), %rax
	movabsq	$-8608480567731124087, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	.loc 2 353 14
	cmpq	%rax, %rcx
	ja	.L75
	.loc 2 354 24
	movb	$1, -16590(%rbp)
	jmp	.L66
.L75:
	.loc 2 356 24
	movb	$0, -16590(%rbp)
.L66:
.LBE8:
	.loc 2 316 28
	leaq	-16416(%rbp), %rcx
	movl	-16612(%rbp), %eax
	movl	$16384, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -16576(%rbp)
	.loc 2 316 13
	cmpq	$0, -16576(%rbp)
	jne	.L76
.LBE9:
	.loc 2 312 5
	jmp	.L64
.L65:
	.loc 2 361 12
	call	__ctype_get_mb_cur_max@PLT
	.loc 2 361 11
	cmpq	$1, %rax
	jbe	.L77
.LBB10:
	.loc 2 363 12
	movb	$0, -16589(%rbp)
	.loc 2 364 17
	movq	$0, -16520(%rbp)
	.loc 2 365 17
	movq	$0, -16432(%rbp)
	.loc 2 366 12
	movb	$0, -16588(%rbp)
	.loc 2 375 14
	movq	$0, -16512(%rbp)
	.loc 2 380 13
	jmp	.L78
.L106:
.LBB11:
	.loc 2 386 14
	cmpq	$-1, -16576(%rbp)
	jne	.L79
	.loc 2 388 15
	movq	-16472(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 388 25
	call	__errno_location@PLT
	.loc 2 388 15
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 389 18
	movb	$0, -16594(%rbp)
	jmp	.L80
.L79:
	.loc 2 393 17
	movq	-16576(%rbp), %rax
	addq	%rax, -16544(%rbp)
	.loc 2 394 13
	leaq	-16416(%rbp), %rax
	movq	%rax, -16504(%rbp)
	.loc 2 395 22
	movq	-16512(%rbp), %rax
	addq	%rax, -16576(%rbp)
.L103:
.LBB12:
	.loc 2 400 20
	movb	$1, -16587(%rbp)
	.loc 2 402 19
	movzbl	-16588(%rbp), %eax
	xorl	$1, %eax
	.loc 2 402 18
	testb	%al, %al
	je	.L81
	.loc 2 402 42 discriminator 1
	movq	-16504(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 402 32 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	is_basic@PLT
	.loc 2 402 29 discriminator 1
	testb	%al, %al
	je	.L81
	.loc 2 406 21
	movq	$1, -16496(%rbp)
	.loc 2 407 31
	movq	-16504(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 407 29
	movl	%eax, -16584(%rbp)
	.loc 2 408 24
	movb	$0, -16587(%rbp)
	jmp	.L82
.L81:
	.loc 2 412 28
	movb	$1, -16588(%rbp)
	.loc 2 414 32
	movq	-16432(%rbp), %rax
	movq	%rax, -16424(%rbp)
	.loc 2 416 23
	leaq	-16432(%rbp), %rcx
	movq	-16576(%rbp), %rdx
	movq	-16504(%rbp), %rsi
	leaq	-16584(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_mbrtowc@PLT
	movq	%rax, -16496(%rbp)
	.loc 2 417 22
	cmpq	$-2, -16496(%rbp)
	jne	.L83
	.loc 2 420 29
	movq	-16424(%rbp), %rax
	movq	%rax, -16432(%rbp)
	jmp	.L84
.L83:
	.loc 2 424 22
	cmpq	$-1, -16496(%rbp)
	jne	.L85
	.loc 2 430 24
	addq	$1, -16504(%rbp)
	.loc 2 431 33
	subq	$1, -16576(%rbp)
	jmp	.L86
.L85:
	.loc 2 434 23
	leaq	-16432(%rbp), %rax
	movq	%rax, %rdi
	call	mbsinit@PLT
	.loc 2 434 22
	testl	%eax, %eax
	je	.L87
	.loc 2 435 30
	movb	$0, -16588(%rbp)
.L87:
	.loc 2 436 22
	cmpq	$0, -16496(%rbp)
	jne	.L82
	.loc 2 438 33
	movl	$0, -16584(%rbp)
	.loc 2 439 25
	movq	$1, -16496(%rbp)
.L82:
	.loc 2 443 15
	movl	-16584(%rbp), %eax
	subl	$9, %eax
	cmpl	$23, %eax
	ja	.L88
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L90(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L90(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L90:
	.long	.L94-.L90
	.long	.L93-.L90
	.long	.L92-.L90
	.long	.L91-.L90
	.long	.L91-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L89-.L90
	.text
.L93:
	.loc 2 446 24
	addq	$1, -16568(%rbp)
.L91:
	.loc 2 450 22
	movq	-16520(%rbp), %rax
	cmpq	-16536(%rbp), %rax
	jbe	.L95
	.loc 2 451 32
	movq	-16520(%rbp), %rax
	movq	%rax, -16536(%rbp)
.L95:
	.loc 2 452 27
	movq	$0, -16520(%rbp)
	.loc 2 453 19
	jmp	.L92
.L94:
	.loc 2 455 27
	movq	-16520(%rbp), %rax
	andq	$-8, %rax
	addq	$8, %rax
	movq	%rax, -16520(%rbp)
	.loc 2 456 19
	jmp	.L92
.L89:
	.loc 2 458 26
	addq	$1, -16520(%rbp)
	jmp	.L92
.L131:
	.loc 2 477 25
	nop
	jmp	.L92
.L133:
	.loc 2 484 25
	nop
.L92:
	.loc 2 462 25
	movzbl	-16589(%rbp), %eax
	addq	%rax, -16560(%rbp)
	.loc 2 463 27
	movb	$0, -16589(%rbp)
	.loc 2 464 19
	jmp	.L96
.L88:
	.loc 2 466 22
	cmpb	$0, -16587(%rbp)
	je	.L97
	.loc 2 466 31 discriminator 1
	movl	-16584(%rbp), %eax
	movl	%eax, %edi
	call	iswprint@PLT
	.loc 2 466 28 discriminator 1
	testl	%eax, %eax
	je	.L97
	.loc 2 470 27
	movzbl	print_linelength(%rip), %eax
	.loc 2 470 26
	testb	%al, %al
	je	.L98
.LBB13:
	.loc 2 472 39
	movl	-16584(%rbp), %eax
	movl	%eax, %edi
	call	wcwidth@PLT
	movl	%eax, -16580(%rbp)
	.loc 2 473 30
	cmpl	$0, -16580(%rbp)
	jle	.L98
	.loc 2 474 37
	movl	-16580(%rbp), %eax
	cltq
	addq	%rax, -16520(%rbp)
.L98:
.LBE13:
	.loc 2 476 27
	movl	-16584(%rbp), %eax
	movl	%eax, %edi
	call	iswspace@PLT
	.loc 2 476 26
	testl	%eax, %eax
	jne	.L131
	.loc 2 476 51 discriminator 1
	movl	-16584(%rbp), %eax
	movl	%eax, %edi
	call	iswnbspace
	.loc 2 476 48 discriminator 1
	testl	%eax, %eax
	jne	.L131
	.loc 2 478 31
	movb	$1, -16589(%rbp)
	.loc 2 487 19
	jmp	.L132
.L97:
	.loc 2 480 28
	movzbl	-16587(%rbp), %eax
	xorl	$1, %eax
	.loc 2 480 27
	testb	%al, %al
	je	.L132
	.loc 2 480 37 discriminator 1
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-16504(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 480 34 discriminator 1
	testl	%eax, %eax
	je	.L132
	.loc 2 482 30
	addq	$1, -16520(%rbp)
	.loc 2 483 27
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-16504(%rbp), %rax
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
	.loc 2 483 26
	testl	%eax, %eax
	jne	.L133
	.loc 2 485 31
	movb	$1, -16589(%rbp)
.L132:
	.loc 2 487 19
	nop
.L96:
	.loc 2 490 17 discriminator 1
	movq	-16496(%rbp), %rax
	addq	%rax, -16504(%rbp)
	.loc 2 491 26 discriminator 1
	movq	-16496(%rbp), %rax
	subq	%rax, -16576(%rbp)
	.loc 2 492 20 discriminator 1
	addq	$1, -16552(%rbp)
.L86:
.LBE12:
	.loc 2 494 11
	cmpq	$0, -16576(%rbp)
	jne	.L103
.L84:
	.loc 2 497 14
	cmpq	$0, -16576(%rbp)
	je	.L104
	.loc 2 499 18
	cmpq	$16384, -16576(%rbp)
	jne	.L105
	.loc 2 502 20
	addq	$1, -16504(%rbp)
	.loc 2 503 29
	subq	$1, -16576(%rbp)
.L105:
	.loc 2 505 15
	movq	-16576(%rbp), %rdx
	movq	-16504(%rbp), %rcx
	leaq	-16416(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L104:
	.loc 2 507 16
	movq	-16576(%rbp), %rax
	movq	%rax, -16512(%rbp)
.L78:
.LBE11:
	.loc 2 380 28
	movl	$16384, %eax
	subq	-16512(%rbp), %rax
	movq	%rax, %rdx
	leaq	-16416(%rbp), %rcx
	movq	-16512(%rbp), %rax
	addq	%rax, %rcx
	movl	-16612(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -16576(%rbp)
	.loc 2 380 13
	cmpq	$0, -16576(%rbp)
	jne	.L106
.L80:
	.loc 2 510 10
	movq	-16520(%rbp), %rax
	cmpq	-16536(%rbp), %rax
	jbe	.L107
	.loc 2 511 20
	movq	-16520(%rbp), %rax
	movq	%rax, -16536(%rbp)
.L107:
	.loc 2 512 13
	movzbl	-16589(%rbp), %eax
	addq	%rax, -16560(%rbp)
.LBE10:
	jmp	.L64
.L77:
.LBB14:
	.loc 2 517 12
	movb	$0, -16586(%rbp)
	.loc 2 518 17
	movq	$0, -16488(%rbp)
	.loc 2 520 13
	jmp	.L108
.L124:
.LBB15:
	.loc 2 522 23
	leaq	-16416(%rbp), %rax
	movq	%rax, -16480(%rbp)
	.loc 2 523 14
	cmpq	$-1, -16576(%rbp)
	jne	.L109
	.loc 2 525 15
	movq	-16472(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 525 25
	call	__errno_location@PLT
	.loc 2 525 15
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 526 18
	movb	$0, -16594(%rbp)
	.loc 2 527 15
	jmp	.L110
.L109:
	.loc 2 530 17
	movq	-16576(%rbp), %rax
	addq	%rax, -16544(%rbp)
.L123:
	.loc 2 533 25
	movq	-16480(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16480(%rbp)
	.loc 2 533 23
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$9, %eax
	cmpl	$23, %eax
	ja	.L111
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L113(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L113(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L113:
	.long	.L117-.L113
	.long	.L116-.L113
	.long	.L115-.L113
	.long	.L114-.L113
	.long	.L114-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L111-.L113
	.long	.L112-.L113
	.text
.L116:
	.loc 2 536 24
	addq	$1, -16568(%rbp)
.L114:
	.loc 2 540 22
	movq	-16488(%rbp), %rax
	cmpq	-16536(%rbp), %rax
	jbe	.L118
	.loc 2 541 32
	movq	-16488(%rbp), %rax
	movq	%rax, -16536(%rbp)
.L118:
	.loc 2 542 27
	movq	$0, -16488(%rbp)
	.loc 2 543 19
	jmp	.L115
.L117:
	.loc 2 545 27
	movq	-16488(%rbp), %rax
	andq	$-8, %rax
	addq	$8, %rax
	movq	%rax, -16488(%rbp)
	.loc 2 546 19
	jmp	.L115
.L112:
	.loc 2 548 26
	addq	$1, -16488(%rbp)
	jmp	.L115
.L135:
	.loc 2 561 25
	nop
.L115:
	.loc 2 552 25
	movzbl	-16586(%rbp), %eax
	addq	%rax, -16560(%rbp)
	.loc 2 553 27
	movb	$0, -16586(%rbp)
	.loc 2 554 19
	jmp	.L119
.L111:
	.loc 2 556 23
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-16480(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 556 22
	testl	%eax, %eax
	je	.L134
	.loc 2 558 30
	addq	$1, -16488(%rbp)
	.loc 2 559 27
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-16480(%rbp), %rax
	subq	$1, %rax
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
	.loc 2 559 26
	testl	%eax, %eax
	jne	.L135
	.loc 2 560 52
	movq	-16480(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 560 41
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	.loc 2 560 30
	movzbl	%al, %eax
	movl	%eax, %edi
	call	isnbspace
	.loc 2 560 27
	testl	%eax, %eax
	jne	.L135
	.loc 2 562 31
	movb	$1, -16586(%rbp)
.L134:
	.loc 2 564 19
	nop
.L119:
	.loc 2 567 11
	subq	$1, -16576(%rbp)
	cmpq	$0, -16576(%rbp)
	jne	.L123
.L108:
.LBE15:
	.loc 2 520 28
	leaq	-16416(%rbp), %rcx
	movl	-16612(%rbp), %eax
	movl	$16384, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -16576(%rbp)
	.loc 2 520 13
	cmpq	$0, -16576(%rbp)
	jne	.L124
.L110:
	.loc 2 569 10
	movq	-16488(%rbp), %rax
	cmpq	-16536(%rbp), %rax
	jbe	.L125
	.loc 2 570 20
	movq	-16488(%rbp), %rax
	movq	%rax, -16536(%rbp)
.L125:
	.loc 2 571 13
	movzbl	-16586(%rbp), %eax
	addq	%rax, -16560(%rbp)
	jmp	.L64
.L130:
.LBE14:
	.loc 2 258 5
	nop
.L64:
	.loc 2 574 19
	movzbl	print_chars(%rip), %eax
	.loc 2 574 6
	cmpb	%al, -16592(%rbp)
	jnb	.L126
	.loc 2 575 11
	movq	-16544(%rbp), %rax
	movq	%rax, -16552(%rbp)
.L126:
	.loc 2 577 3
	movq	-16624(%rbp), %r8
	movq	-16536(%rbp), %rdi
	movq	-16544(%rbp), %rcx
	movq	-16552(%rbp), %rdx
	movq	-16560(%rbp), %rsi
	movq	-16568(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	write_counts
	.loc 2 578 15
	movq	total_lines(%rip), %rdx
	movq	-16568(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, total_lines(%rip)
	.loc 2 579 15
	movq	total_words(%rip), %rdx
	movq	-16560(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, total_words(%rip)
	.loc 2 580 15
	movq	total_chars(%rip), %rdx
	movq	-16552(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, total_chars(%rip)
	.loc 2 581 15
	movq	total_bytes(%rip), %rdx
	movq	-16544(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, total_bytes(%rip)
	.loc 2 582 18
	movq	max_line_length(%rip), %rax
	.loc 2 582 6
	cmpq	%rax, -16536(%rbp)
	jbe	.L127
	.loc 2 583 21
	movq	-16536(%rbp), %rax
	movq	%rax, max_line_length(%rip)
.L127:
	.loc 2 585 10
	movzbl	-16594(%rbp), %eax
	.loc 2 586 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L129
	call	__stack_chk_fail@PLT
.L129:
	addq	$16632, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	wc, .-wc
	.section	.rodata
.LC38:
	.string	"-"
	.text
	.type	wc_file, @function
wc_file:
.LFB58:
	.loc 2 590 1
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
	.loc 2 591 6
	cmpq	$0, -40(%rbp)
	je	.L137
	.loc 2 591 17 discriminator 1
	movq	-40(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 591 14 discriminator 1
	testl	%eax, %eax
	jne	.L138
.L137:
	.loc 2 593 23
	movb	$1, have_read_stdin(%rip)
	.loc 2 594 7
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	.loc 2 595 14
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	call	wc
	jmp	.L139
.L138:
.LBB16:
	.loc 2 599 16
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -20(%rbp)
	.loc 2 600 10
	cmpl	$-1, -20(%rbp)
	jne	.L140
	.loc 2 602 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 602 21
	call	__errno_location@PLT
	.loc 2 602 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 603 18
	movl	$0, %eax
	jmp	.L139
.L140:
.LBB17:
	.loc 2 607 21
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	wc
	movb	%al, -21(%rbp)
	.loc 2 608 15
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 608 14
	testl	%eax, %eax
	je	.L141
	.loc 2 610 15
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 610 25
	call	__errno_location@PLT
	.loc 2 610 15
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 611 22
	movl	$0, %eax
	jmp	.L139
.L141:
	.loc 2 613 18
	movzbl	-21(%rbp), %eax
.L139:
.LBE17:
.LBE16:
	.loc 2 616 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	wc_file, .-wc_file
	.type	get_input_fstatus, @function
get_input_fstatus:
.LFB59:
	.loc 2 626 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 627 29
	cmpq	$0, -24(%rbp)
	je	.L143
	.loc 2 627 29 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	jmp	.L144
.L143:
	.loc 2 627 29 discriminator 2
	movl	$1, %eax
.L144:
	.loc 2 627 29 discriminator 4
	movl	$152, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 629 6 is_stmt 1 discriminator 4
	cmpq	$0, -24(%rbp)
	je	.L145
	.loc 2 630 7
	cmpq	$1, -24(%rbp)
	jne	.L146
	.loc 2 631 28
	movzbl	print_lines(%rip), %eax
	movzbl	%al, %edx
	movzbl	print_words(%rip), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	.loc 2 631 42
	movzbl	print_chars(%rip), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	.loc 2 632 16
	movzbl	print_bytes(%rip), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	.loc 2 632 30
	movzbl	print_linelength(%rip), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	.loc 2 631 11
	cmpl	$1, %eax
	jne	.L146
.L145:
	.loc 2 634 23
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L147
.L146:
.LBB18:
	.loc 2 637 19
	movq	$0, -16(%rbp)
	.loc 2 637 7
	jmp	.L148
.L152:
	.loc 2 638 36
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 640 30
	testq	%rax, %rax
	je	.L149
	.loc 2 638 43
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 638 40
	testl	%eax, %eax
	jne	.L150
.L149:
	.loc 2 639 61
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 639 32
	addq	$8, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	fstat@PLT
	movl	%eax, %ecx
	.loc 2 640 30
	jmp	.L151
.L150:
	.loc 2 640 55
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 640 32
	leaq	8(%rax), %rdx
	.loc 2 640 42
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 640 32
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	movl	%eax, %ecx
.L151:
	.loc 2 638 16 discriminator 2
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 638 27 discriminator 2
	movl	%ecx, (%rax)
	.loc 2 637 39 discriminator 2
	addq	$1, -16(%rbp)
.L148:
	.loc 2 637 7 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L152
.L147:
.LBE18:
	.loc 2 643 10
	movq	-8(%rbp), %rax
	.loc 2 644 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	get_input_fstatus, .-get_input_fstatus
	.type	compute_number_width, @function
compute_number_width:
.LFB60:
	.loc 2 652 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 653 7
	movl	$1, -24(%rbp)
	.loc 2 655 6
	cmpq	$0, -40(%rbp)
	je	.L155
	.loc 2 655 31 discriminator 1
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 655 18 discriminator 1
	testl	%eax, %eax
	jg	.L155
.LBB19:
	.loc 2 657 11
	movl	$1, -20(%rbp)
	.loc 2 658 17
	movq	$0, -16(%rbp)
.LBB20:
	.loc 2 660 19
	movq	$0, -8(%rbp)
	.loc 2 660 7
	jmp	.L156
.L159:
	.loc 2 661 22
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 661 25
	movl	(%rax), %eax
	.loc 2 661 12
	testl	%eax, %eax
	jne	.L157
	.loc 2 663 17
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %eax
	andl	$61440, %eax
	.loc 2 663 16
	cmpl	$32768, %eax
	jne	.L158
	.loc 2 664 39
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 664 45
	movq	56(%rax), %rax
	.loc 2 664 29
	addq	%rax, -16(%rbp)
	jmp	.L157
.L158:
	.loc 2 666 29
	movl	$7, -20(%rbp)
.L157:
	.loc 2 660 39 discriminator 2
	addq	$1, -8(%rbp)
.L156:
	.loc 2 660 7 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L159
.LBE20:
	.loc 2 669 7
	jmp	.L160
.L161:
	.loc 2 670 14 discriminator 2
	addl	$1, -24(%rbp)
	.loc 2 669 49 discriminator 2
	movq	-16(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -16(%rbp)
.L160:
	.loc 2 669 7 discriminator 1
	cmpq	$9, -16(%rbp)
	ja	.L161
	.loc 2 671 10
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L155
	.loc 2 672 15
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.L155:
.LBE19:
	.loc 2 675 10
	movl	-24(%rbp), %eax
	.loc 2 676 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	compute_number_width, .-compute_number_width
	.section	.rodata
.LC39:
	.string	"/usr/local/share/locale"
.LC40:
	.string	"POSIXLY_CORRECT"
.LC41:
	.string	"David MacKenzie"
.LC42:
	.string	"Paul Rubin"
.LC43:
	.string	"clLmw"
.LC44:
	.string	"extra operand %s"
	.align 8
.LC45:
	.string	"file operands cannot be combined with --files0-from"
.LC46:
	.string	"%s\n"
.LC47:
	.string	"r"
.LC48:
	.string	"cannot open %s for reading"
	.align 8
.LC51:
	.string	"cannot read file names from %s"
.LC52:
	.string	"%s: read error"
.LC53:
	.string	"src/wc.c"
	.align 8
.LC54:
	.string	"!\"unexpected error code from argv_iter\""
	.align 8
.LC55:
	.string	"when reading file names from stdin, no file name of %s allowed"
.LC56:
	.string	"invalid zero-length file name"
.LC57:
	.string	"%s:%lu: %s"
.LC58:
	.string	"total"
	.text
	.globl	main
	.type	main, @function
main:
.LFB61:
	.loc 2 681 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$560, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -548(%rbp)
	movq	%rsi, -560(%rbp)
	.loc 2 681 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 686 9
	movq	$0, -512(%rbp)
	.loc 2 691 3
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 692 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 693 3
	leaq	.LC39(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 694 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 696 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 698 15
	call	getpagesize@PLT
	cltq
	.loc 2 698 13
	movq	%rax, page_size(%rip)
	.loc 2 701 3
	movq	stdout(%rip), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setvbuf@PLT
	.loc 2 703 22
	leaq	.LC40(%rip), %rdi
	call	getenv@PLT
	.loc 2 703 49
	testq	%rax, %rax
	setne	%al
	.loc 2 703 19
	movb	%al, posixly_correct(%rip)
	.loc 2 705 57
	movb	$0, print_bytes(%rip)
	.loc 2 705 43
	movzbl	print_bytes(%rip), %eax
	movb	%al, print_chars(%rip)
	.loc 2 705 29
	movzbl	print_chars(%rip), %eax
	movb	%al, print_words(%rip)
	.loc 2 705 15
	movzbl	print_words(%rip), %eax
	movb	%al, print_lines(%rip)
	.loc 2 706 20
	movb	$0, print_linelength(%rip)
	.loc 2 707 75
	movq	$0, max_line_length(%rip)
	.loc 2 707 57
	movq	max_line_length(%rip), %rax
	movq	%rax, total_bytes(%rip)
	.loc 2 707 43
	movq	total_bytes(%rip), %rax
	movq	%rax, total_chars(%rip)
	.loc 2 707 29
	movq	total_chars(%rip), %rax
	movq	%rax, total_words(%rip)
	.loc 2 707 15
	movq	total_words(%rip), %rax
	movq	%rax, total_lines(%rip)
	.loc 2 709 9
	jmp	.L164
.L176:
	.loc 2 710 5
	cmpl	$128, -532(%rbp)
	jg	.L165
	cmpl	$99, -532(%rbp)
	jge	.L166
	cmpl	$76, -532(%rbp)
	je	.L167
	cmpl	$76, -532(%rbp)
	jg	.L165
	cmpl	$-131, -532(%rbp)
	je	.L168
	cmpl	$-130, -532(%rbp)
	je	.L169
	jmp	.L165
.L166:
	movl	-532(%rbp), %eax
	subl	$99, %eax
	cmpl	$29, %eax
	ja	.L165
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L171(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L171(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L171:
	.long	.L175-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L174-.L171
	.long	.L173-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L172-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L165-.L171
	.long	.L170-.L171
	.text
.L175:
	.loc 2 713 21
	movb	$1, print_bytes(%rip)
	.loc 2 714 9
	jmp	.L164
.L173:
	.loc 2 717 21
	movb	$1, print_chars(%rip)
	.loc 2 718 9
	jmp	.L164
.L174:
	.loc 2 721 21
	movb	$1, print_lines(%rip)
	.loc 2 722 9
	jmp	.L164
.L172:
	.loc 2 725 21
	movb	$1, print_words(%rip)
	.loc 2 726 9
	jmp	.L164
.L167:
	.loc 2 729 26
	movb	$1, print_linelength(%rip)
	.loc 2 730 9
	jmp	.L164
.L170:
	.loc 2 733 20
	movq	optarg(%rip), %rax
	movq	%rax, -512(%rbp)
	.loc 2 734 9
	jmp	.L164
.L169:
	.loc 2 736 7
	movl	$0, %edi
	call	usage
.L168:
	.loc 2 738 7
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC41(%rip), %r9
	leaq	.LC42(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L165:
	.loc 2 741 9
	movl	$1, %edi
	call	usage
.L164:
	.loc 2 709 18
	movq	-560(%rbp), %rsi
	movl	-548(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -532(%rbp)
	.loc 2 709 9
	cmpl	$-1, -532(%rbp)
	jne	.L176
	.loc 2 744 10
	movzbl	print_lines(%rip), %eax
	xorl	$1, %eax
	.loc 2 744 6
	testb	%al, %al
	je	.L177
	.loc 2 744 22 discriminator 1
	movzbl	print_words(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L177
	.loc 2 744 37 discriminator 2
	movzbl	print_chars(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L177
	.loc 2 744 52 discriminator 3
	movzbl	print_bytes(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L177
	.loc 2 745 10 discriminator 4
	movzbl	print_linelength(%rip), %eax
	xorl	$1, %eax
	.loc 2 744 7 discriminator 4
	testb	%al, %al
	je	.L177
	.loc 2 746 45
	movb	$1, print_bytes(%rip)
	.loc 2 746 31
	movzbl	print_bytes(%rip), %eax
	movb	%al, print_words(%rip)
	.loc 2 746 17
	movzbl	print_words(%rip), %eax
	movb	%al, print_lines(%rip)
.L177:
	.loc 2 748 8
	movb	$0, -542(%rbp)
	.loc 2 750 6
	cmpq	$0, -512(%rbp)
	je	.L178
.LBB21:
	.loc 2 756 18
	movl	optind(%rip), %eax
	.loc 2 756 10
	cmpl	%eax, -548(%rbp)
	jle	.L179
	.loc 2 758 47
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 758 11
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 758 24
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	.loc 2 758 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 759 11
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 761 11
	movl	$1, %edi
	call	usage
.L179:
	.loc 2 764 11
	movq	-512(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 764 10
	testl	%eax, %eax
	jne	.L180
	.loc 2 765 16
	movq	stdin(%rip), %rax
	movq	%rax, -496(%rbp)
	jmp	.L181
.L180:
	.loc 2 768 20
	movq	-512(%rbp), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -496(%rbp)
	.loc 2 769 14
	cmpq	$0, -496(%rbp)
	jne	.L181
.LBB22:
	.loc 2 770 13
	movq	-512(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC48(%rip), %rdi
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
.L181:
.LBE22:
	.loc 2 777 11
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %edx
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	fstat@PLT
	.loc 2 777 10
	testl	%eax, %eax
	jne	.L182
	.loc 2 778 14
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 778 11
	cmpl	$32768, %eax
	jne	.L182
	.loc 2 779 16
	movq	-128(%rbp), %rax
	.loc 2 779 25
	cvtsi2sdq	%rax, %xmm2
	movsd	%xmm2, -568(%rbp)
	.loc 2 779 28
	call	physmem_available@PLT
	movsd	.LC49(%rip), %xmm1
	divsd	%xmm1, %xmm0
	comisd	.LC50(%rip), %xmm0
	jbe	.L221
	.loc 2 779 28 is_stmt 0 discriminator 1
	movsd	.LC50(%rip), %xmm0
	jmp	.L185
.L221:
	.loc 2 779 28 discriminator 2
	call	physmem_available@PLT
	movsd	.LC49(%rip), %xmm1
	divsd	%xmm1, %xmm0
.L185:
	.loc 2 779 11 is_stmt 1 discriminator 4
	comisd	-568(%rbp), %xmm0
	jb	.L182
	.loc 2 781 23
	movb	$1, -542(%rbp)
	.loc 2 782 11
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	readtokens0_init@PLT
	.loc 2 783 17
	leaq	-464(%rbp), %rdx
	movq	-496(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	readtokens0@PLT
	.loc 2 783 15
	xorl	$1, %eax
	.loc 2 783 14
	testb	%al, %al
	jne	.L187
	.loc 2 783 47 discriminator 1
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 783 44 discriminator 1
	testl	%eax, %eax
	je	.L188
.L187:
.LBB23:
	.loc 2 784 13
	movq	-512(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L188:
.LBE23:
	.loc 2 786 17
	movq	-456(%rbp), %rax
	movq	%rax, -520(%rbp)
	.loc 2 787 18
	movq	-464(%rbp), %rax
	movq	%rax, -528(%rbp)
	.loc 2 788 16
	movq	-520(%rbp), %rax
	movq	%rax, %rdi
	call	argv_iter_init_argv@PLT
	movq	%rax, -504(%rbp)
	.loc 2 788 14
	jmp	.L190
.L182:
	.loc 2 792 17
	movq	$0, -520(%rbp)
	.loc 2 793 18
	movq	$0, -528(%rbp)
	.loc 2 794 16
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	argv_iter_init_stream@PLT
	movq	%rax, -504(%rbp)
	jmp	.L190
.L178:
.LBE21:
.LBB24:
	.loc 2 800 23
	movl	optind(%rip), %eax
	.loc 2 800 46
	cmpl	%eax, -548(%rbp)
	jle	.L191
	.loc 2 800 37 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 800 46 discriminator 1
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L192
.L191:
	.loc 2 800 46 is_stmt 0 discriminator 2
	leaq	stdin_only.7139(%rip), %rax
.L192:
	.loc 2 800 13 is_stmt 1 discriminator 4
	movq	%rax, -520(%rbp)
	.loc 2 801 24 discriminator 4
	movl	optind(%rip), %eax
	.loc 2 801 47 discriminator 4
	cmpl	%eax, -548(%rbp)
	jle	.L193
	.loc 2 801 38 discriminator 1
	movl	optind(%rip), %eax
	movl	-548(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 801 47 discriminator 1
	cltq
	jmp	.L194
.L193:
	.loc 2 801 47 is_stmt 0 discriminator 2
	movl	$1, %eax
.L194:
	.loc 2 801 14 is_stmt 1 discriminator 4
	movq	%rax, -528(%rbp)
	.loc 2 802 12 discriminator 4
	movq	-520(%rbp), %rax
	movq	%rax, %rdi
	call	argv_iter_init_argv@PLT
	movq	%rax, -504(%rbp)
.L190:
.LBE24:
	.loc 2 805 6
	cmpq	$0, -504(%rbp)
	jne	.L195
	.loc 2 806 5
	call	xalloc_die@PLT
.L195:
	.loc 2 808 13
	movq	-520(%rbp), %rdx
	movq	-528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_input_fstatus
	movq	%rax, -488(%rbp)
	.loc 2 809 18
	movq	-488(%rbp), %rdx
	movq	-528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compute_number_width
	.loc 2 809 16
	movl	%eax, number_width(%rip)
	.loc 2 811 6
	movb	$1, -543(%rbp)
.LBB25:
	.loc 2 812 12
	movl	$0, -536(%rbp)
.L211:
.LBB26:
	.loc 2 814 12
	movb	$0, -541(%rbp)
	.loc 2 816 25
	leaq	-540(%rbp), %rdx
	movq	-504(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	argv_iter@PLT
	movq	%rax, -480(%rbp)
	.loc 2 817 10
	cmpq	$0, -480(%rbp)
	jne	.L196
	.loc 2 819 11
	movl	-540(%rbp), %eax
	cmpl	$4, %eax
	je	.L197
	cmpl	$4, %eax
	ja	.L198
	cmpl	$2, %eax
	je	.L222
	cmpl	$3, %eax
	je	.L200
	jmp	.L198
.L197:
	.loc 2 824 15
	movq	-512(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 824 32
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 824 25
	call	__errno_location@PLT
	.loc 2 824 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 826 18
	movb	$0, -543(%rbp)
	.loc 2 827 15
	jmp	.L212
.L200:
	.loc 2 829 15
	call	xalloc_die@PLT
.L198:
	.loc 2 831 15 discriminator 1
	leaq	__PRETTY_FUNCTION__.7149(%rip), %rcx
	movl	$831, %edx
	leaq	.LC53(%rip), %rsi
	leaq	.LC54(%rip), %rdi
	call	__assert_fail@PLT
.L196:
	.loc 2 834 10
	cmpq	$0, -512(%rbp)
	je	.L202
	.loc 2 834 25 discriminator 1
	movq	-512(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 834 22 discriminator 1
	testl	%eax, %eax
	jne	.L202
	.loc 2 834 52 discriminator 2
	movq	-480(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 834 49 discriminator 2
	testl	%eax, %eax
	jne	.L202
	.loc 2 838 11
	movq	-480(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 838 24
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	.loc 2 838 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 841 21
	movb	$1, -541(%rbp)
.L202:
	.loc 2 844 21
	movq	-480(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 844 10
	testb	%al, %al
	jne	.L203
	.loc 2 850 14
	cmpq	$0, -512(%rbp)
	jne	.L204
	.loc 2 851 13
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	leaq	.LC37(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L205
.L204:
.LBB27:
	.loc 2 857 47
	movq	-504(%rbp), %rax
	movq	%rax, %rdi
	call	argv_iter_n_args@PLT
	movq	%rax, -472(%rbp)
	.loc 2 858 15
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	movq	-512(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	-472(%rbp), %rdx
	movq	%rbx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	leaq	.LC57(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L205:
.LBE27:
	.loc 2 861 21
	movb	$1, -541(%rbp)
.L203:
	.loc 2 864 10
	cmpb	$0, -541(%rbp)
	je	.L206
	.loc 2 865 12
	movb	$0, -543(%rbp)
	jmp	.L207
.L206:
	.loc 2 867 43
	cmpq	$0, -528(%rbp)
	je	.L208
	.loc 2 867 55 discriminator 1
	movl	-536(%rbp), %eax
	movslq	%eax, %rdx
	.loc 2 867 43 discriminator 1
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	jmp	.L209
.L208:
	.loc 2 867 43 is_stmt 0 discriminator 2
	movl	$0, %edx
.L209:
	.loc 2 867 15 is_stmt 1 discriminator 4
	movq	-488(%rbp), %rax
	addq	%rax, %rdx
	movq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	wc_file
	.loc 2 867 12 discriminator 4
	movzbl	-543(%rbp), %edx
	.loc 2 867 15 discriminator 4
	movzbl	%al, %eax
	.loc 2 867 12 discriminator 4
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -543(%rbp)
.L207:
	.loc 2 869 10
	cmpq	$0, -528(%rbp)
	jne	.L210
	.loc 2 870 27
	movq	-488(%rbp), %rax
	movl	$1, (%rax)
.L210:
.LBE26:
	.loc 2 812 27
	addl	$1, -536(%rbp)
	.loc 2 813 5
	jmp	.L211
.L222:
.LBB28:
	.loc 2 822 15
	nop
.L212:
.LBE28:
.LBE25:
	.loc 2 877 6
	cmpb	$0, -543(%rbp)
	je	.L213
	.loc 2 877 10 discriminator 1
	cmpq	$0, -512(%rbp)
	jne	.L213
	.loc 2 877 28 discriminator 2
	movq	-504(%rbp), %rax
	movq	%rax, %rdi
	call	argv_iter_n_args@PLT
	.loc 2 877 25 discriminator 2
	testq	%rax, %rax
	jne	.L213
	.loc 2 878 11
	movq	-488(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	wc_file
	.loc 2 878 8
	movzbl	-543(%rbp), %edx
	.loc 2 878 11
	movzbl	%al, %eax
	.loc 2 878 8
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -543(%rbp)
.L213:
	.loc 2 880 6
	cmpb	$0, -542(%rbp)
	je	.L214
	.loc 2 881 5
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	readtokens0_free@PLT
.L214:
	.loc 2 883 11
	movq	-504(%rbp), %rax
	movq	%rax, %rdi
	call	argv_iter_n_args@PLT
	.loc 2 883 6
	cmpq	$1, %rax
	jbe	.L215
	.loc 2 885 36
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdi
	.loc 2 884 5
	movq	max_line_length(%rip), %r8
	movq	total_bytes(%rip), %rcx
	movq	total_chars(%rip), %rdx
	movq	total_words(%rip), %rsi
	movq	total_lines(%rip), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	write_counts
.L215:
	.loc 2 887 3
	movq	-504(%rbp), %rax
	movq	%rax, %rdi
	call	argv_iter_free@PLT
	.loc 2 889 3
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 891 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 891 6
	testb	%al, %al
	je	.L216
	.loc 2 891 26 discriminator 1
	movl	$0, %edi
	call	close@PLT
	.loc 2 891 23 discriminator 1
	testl	%eax, %eax
	je	.L216
.LBB29:
	.loc 2 892 5
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC38(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L216:
.LBE29:
	.loc 2 894 28
	movzbl	-543(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 895 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L218
	call	__stack_chk_fail@PLT
.L218:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	main, .-main
	.section	.rodata
	.type	format_sp_int.6995, @object
	.size	format_sp_int.6995, 5
format_sp_int.6995:
	.string	" %*s"
	.local	stdin_only.7139
	.comm	stdin_only.7139,8,8
	.type	__PRETTY_FUNCTION__.7149, @object
	.size	__PRETTY_FUNCTION__.7149, 5
__PRETTY_FUNCTION__.7149:
	.string	"main"
	.align 8
.LC49:
	.long	0
	.long	1073741824
	.align 8
.LC50:
	.long	0
	.long	1097072640
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
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
	.file 26 "/usr/include/ctype.h"
	.file 27 "./lib/version-etc.h"
	.file 28 "./lib/progname.h"
	.file 29 "./lib/quotearg.h"
	.file 30 "./lib/argv-iter.h"
	.file 31 "./lib/error.h"
	.file 32 "./lib/fadvise.h"
	.file 33 "./lib/mbchar.h"
	.file 34 "./lib/obstack.h"
	.file 35 "./lib/readtokens0.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x16c2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF277
	.byte	0xc
	.long	.LASF278
	.long	.LASF279
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
	.long	0x40
	.uleb128 0x5
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
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x6a
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
	.long	0x76
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x76
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x76
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x76
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x76
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x76
	.uleb128 0x8
	.byte	0x8
	.long	0x124
	.uleb128 0x4
	.long	0x119
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x4
	.long	0x124
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x3
	.long	0x152
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
	.long	0x152
	.byte	0
	.uleb128 0xb
	.long	0x124
	.long	0x162
	.uleb128 0xc
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.byte	0xd
	.byte	0x9
	.long	0x186
	.uleb128 0xe
	.long	.LASF24
	.byte	0x5
	.byte	0xf
	.byte	0x7
	.long	0x6a
	.byte	0
	.uleb128 0xe
	.long	.LASF25
	.byte	0x5
	.byte	0x14
	.byte	0x5
	.long	0x130
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF26
	.byte	0x5
	.byte	0x15
	.byte	0x3
	.long	0x162
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x319
	.uleb128 0xe
	.long	.LASF27
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x6a
	.byte	0
	.uleb128 0xe
	.long	.LASF28
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x119
	.byte	0x8
	.uleb128 0xe
	.long	.LASF29
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x119
	.byte	0x10
	.uleb128 0xe
	.long	.LASF30
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x119
	.byte	0x18
	.uleb128 0xe
	.long	.LASF31
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x119
	.byte	0x20
	.uleb128 0xe
	.long	.LASF32
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x119
	.byte	0x28
	.uleb128 0xe
	.long	.LASF33
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x119
	.byte	0x30
	.uleb128 0xe
	.long	.LASF34
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x119
	.byte	0x38
	.uleb128 0xe
	.long	.LASF35
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x119
	.byte	0x40
	.uleb128 0xe
	.long	.LASF36
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x119
	.byte	0x48
	.uleb128 0xe
	.long	.LASF37
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x119
	.byte	0x50
	.uleb128 0xe
	.long	.LASF38
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x119
	.byte	0x58
	.uleb128 0xe
	.long	.LASF39
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x332
	.byte	0x60
	.uleb128 0xe
	.long	.LASF40
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x338
	.byte	0x68
	.uleb128 0xe
	.long	.LASF41
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x6a
	.byte	0x70
	.uleb128 0xe
	.long	.LASF42
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x6a
	.byte	0x74
	.uleb128 0xe
	.long	.LASF43
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0xd1
	.byte	0x78
	.uleb128 0xe
	.long	.LASF44
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x55
	.byte	0x80
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x5c
	.byte	0x82
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x33e
	.byte	0x83
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x34e
	.byte	0x88
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xdd
	.byte	0x90
	.uleb128 0xe
	.long	.LASF49
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x359
	.byte	0x98
	.uleb128 0xe
	.long	.LASF50
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x364
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x338
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF52
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x4c
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
	.long	0x6a
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF55
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x36a
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x192
	.uleb128 0x10
	.long	.LASF280
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF57
	.uleb128 0x8
	.byte	0x8
	.long	0x32d
	.uleb128 0x8
	.byte	0x8
	.long	0x192
	.uleb128 0xb
	.long	0x124
	.long	0x34e
	.uleb128 0xc
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x325
	.uleb128 0x11
	.long	.LASF58
	.uleb128 0x8
	.byte	0x8
	.long	0x354
	.uleb128 0x11
	.long	.LASF59
	.uleb128 0x8
	.byte	0x8
	.long	0x35f
	.uleb128 0xb
	.long	0x124
	.long	0x37a
	.uleb128 0xc
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x12b
	.uleb128 0x4
	.long	0x37a
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0x3f
	.byte	0x11
	.long	0xd1
	.uleb128 0x12
	.long	.LASF61
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x39d
	.uleb128 0x8
	.byte	0x8
	.long	0x319
	.uleb128 0x12
	.long	.LASF62
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x39d
	.uleb128 0x12
	.long	.LASF63
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x39d
	.uleb128 0x12
	.long	.LASF64
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x6a
	.uleb128 0xb
	.long	0x380
	.long	0x3d2
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.long	0x3c7
	.uleb128 0x12
	.long	.LASF65
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x3d2
	.uleb128 0x12
	.long	.LASF66
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF67
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x3d2
	.uleb128 0x14
	.long	.LASF68
	.byte	0x3
	.value	0x141
	.byte	0x18
	.long	0x6a
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF69
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF70
	.uleb128 0x2
	.long	.LASF71
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xe9
	.uleb128 0xf
	.long	.LASF73
	.byte	0x10
	.byte	0xb
	.byte	0xa
	.byte	0x8
	.long	0x44a
	.uleb128 0xe
	.long	.LASF74
	.byte	0xb
	.byte	0xc
	.byte	0xc
	.long	0xe9
	.byte	0
	.uleb128 0xe
	.long	.LASF75
	.byte	0xb
	.byte	0x10
	.byte	0x15
	.long	0x10d
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.long	.LASF76
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x6a
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF77
	.uleb128 0x12
	.long	.LASF78
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0x119
	.uleb128 0x12
	.long	.LASF79
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF80
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF81
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF82
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x4d0
	.uleb128 0xe
	.long	.LASF83
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x37a
	.byte	0
	.uleb128 0xe
	.long	.LASF84
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x6a
	.byte	0x8
	.uleb128 0xe
	.long	.LASF85
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x4d5
	.byte	0x10
	.uleb128 0x16
	.string	"val"
	.byte	0xe
	.byte	0x39
	.byte	0x7
	.long	0x6a
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	0x48e
	.uleb128 0x8
	.byte	0x8
	.long	0x6a
	.uleb128 0x2
	.long	.LASF86
	.byte	0xf
	.byte	0x14
	.byte	0x17
	.long	0x40
	.uleb128 0x2
	.long	.LASF87
	.byte	0x10
	.byte	0x6
	.byte	0x15
	.long	0x186
	.uleb128 0xb
	.long	0x119
	.long	0x503
	.uleb128 0xc
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF88
	.byte	0x11
	.byte	0x9f
	.byte	0xe
	.long	0x4f3
	.uleb128 0x12
	.long	.LASF89
	.byte	0x11
	.byte	0xa0
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF90
	.byte	0x11
	.byte	0xa1
	.byte	0x11
	.long	0x76
	.uleb128 0x12
	.long	.LASF91
	.byte	0x11
	.byte	0xa6
	.byte	0xe
	.long	0x4f3
	.uleb128 0x12
	.long	.LASF92
	.byte	0x11
	.byte	0xae
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF93
	.byte	0x11
	.byte	0xaf
	.byte	0x11
	.long	0x76
	.uleb128 0x15
	.long	.LASF94
	.byte	0x11
	.value	0x112
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF95
	.byte	0x90
	.byte	0x12
	.byte	0x2e
	.byte	0x8
	.long	0x629
	.uleb128 0xe
	.long	.LASF96
	.byte	0x12
	.byte	0x30
	.byte	0xd
	.long	0x89
	.byte	0
	.uleb128 0xe
	.long	.LASF97
	.byte	0x12
	.byte	0x35
	.byte	0xd
	.long	0xad
	.byte	0x8
	.uleb128 0xe
	.long	.LASF98
	.byte	0x12
	.byte	0x3d
	.byte	0xf
	.long	0xc5
	.byte	0x10
	.uleb128 0xe
	.long	.LASF99
	.byte	0x12
	.byte	0x3e
	.byte	0xe
	.long	0xb9
	.byte	0x18
	.uleb128 0xe
	.long	.LASF100
	.byte	0x12
	.byte	0x40
	.byte	0xd
	.long	0x95
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF101
	.byte	0x12
	.byte	0x41
	.byte	0xd
	.long	0xa1
	.byte	0x20
	.uleb128 0xe
	.long	.LASF102
	.byte	0x12
	.byte	0x43
	.byte	0x9
	.long	0x6a
	.byte	0x24
	.uleb128 0xe
	.long	.LASF103
	.byte	0x12
	.byte	0x45
	.byte	0xd
	.long	0x89
	.byte	0x28
	.uleb128 0xe
	.long	.LASF104
	.byte	0x12
	.byte	0x4a
	.byte	0xd
	.long	0xd1
	.byte	0x30
	.uleb128 0xe
	.long	.LASF105
	.byte	0x12
	.byte	0x4e
	.byte	0x11
	.long	0xf5
	.byte	0x38
	.uleb128 0xe
	.long	.LASF106
	.byte	0x12
	.byte	0x50
	.byte	0x10
	.long	0x101
	.byte	0x40
	.uleb128 0xe
	.long	.LASF107
	.byte	0x12
	.byte	0x5b
	.byte	0x15
	.long	0x422
	.byte	0x48
	.uleb128 0xe
	.long	.LASF108
	.byte	0x12
	.byte	0x5c
	.byte	0x15
	.long	0x422
	.byte	0x58
	.uleb128 0xe
	.long	.LASF109
	.byte	0x12
	.byte	0x5d
	.byte	0x15
	.long	0x422
	.byte	0x68
	.uleb128 0xe
	.long	.LASF110
	.byte	0x12
	.byte	0x6a
	.byte	0x17
	.long	0x62e
	.byte	0x78
	.byte	0
	.uleb128 0x4
	.long	0x558
	.uleb128 0xb
	.long	0x10d
	.long	0x63e
	.uleb128 0xc
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.uleb128 0x7
	.long	0x63e
	.uleb128 0x8
	.byte	0x8
	.long	0x63e
	.uleb128 0xb
	.long	0x380
	.long	0x65a
	.uleb128 0xc
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.long	0x64a
	.uleb128 0x15
	.long	.LASF111
	.byte	0x13
	.value	0x11e
	.byte	0x1a
	.long	0x65a
	.uleb128 0x15
	.long	.LASF112
	.byte	0x13
	.value	0x11f
	.byte	0x1a
	.long	0x65a
	.uleb128 0x15
	.long	.LASF113
	.byte	0x14
	.value	0x21f
	.byte	0xf
	.long	0x686
	.uleb128 0x8
	.byte	0x8
	.long	0x119
	.uleb128 0x15
	.long	.LASF114
	.byte	0x14
	.value	0x221
	.byte	0xf
	.long	0x686
	.uleb128 0x12
	.long	.LASF115
	.byte	0x15
	.byte	0x2d
	.byte	0xe
	.long	0x119
	.uleb128 0x12
	.long	.LASF116
	.byte	0x15
	.byte	0x2e
	.byte	0xe
	.long	0x119
	.uleb128 0x12
	.long	.LASF117
	.byte	0x16
	.byte	0x1
	.byte	0x14
	.long	0x37a
	.uleb128 0x12
	.long	.LASF118
	.byte	0x17
	.byte	0x12
	.byte	0x15
	.long	0x71
	.uleb128 0x2
	.long	.LASF119
	.byte	0x18
	.byte	0x66
	.byte	0x16
	.long	0x7d
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x29
	.byte	0x6
	.long	0x6ed
	.uleb128 0x19
	.long	.LASF120
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x2a
	.byte	0x6
	.long	0x702
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x2f
	.byte	0x1
	.long	0x761
	.uleb128 0x1b
	.long	.LASF122
	.value	0x100
	.uleb128 0x1b
	.long	.LASF123
	.value	0x200
	.uleb128 0x1b
	.long	.LASF124
	.value	0x400
	.uleb128 0x1b
	.long	.LASF125
	.value	0x800
	.uleb128 0x1b
	.long	.LASF126
	.value	0x1000
	.uleb128 0x1b
	.long	.LASF127
	.value	0x2000
	.uleb128 0x1b
	.long	.LASF128
	.value	0x4000
	.uleb128 0x1b
	.long	.LASF129
	.value	0x8000
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.byte	0x5
	.byte	0x4
	.long	0x6a
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x77f
	.uleb128 0x1d
	.long	.LASF134
	.sleb128 -130
	.uleb128 0x1d
	.long	.LASF135
	.sleb128 -131
	.byte	0
	.uleb128 0xb
	.long	0x12b
	.long	0x78a
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.long	0x77f
	.uleb128 0x12
	.long	.LASF136
	.byte	0x1b
	.byte	0x19
	.byte	0x13
	.long	0x78a
	.uleb128 0x12
	.long	.LASF137
	.byte	0x1c
	.byte	0x20
	.byte	0x14
	.long	0x37a
	.uleb128 0x1e
	.long	.LASF151
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1d
	.byte	0x20
	.byte	0x6
	.long	0x7fc
	.uleb128 0x1a
	.long	.LASF138
	.byte	0
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x6
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x7
	.uleb128 0x1a
	.long	.LASF146
	.byte	0x8
	.uleb128 0x1a
	.long	.LASF147
	.byte	0x9
	.uleb128 0x1a
	.long	.LASF148
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x7a7
	.uleb128 0x15
	.long	.LASF149
	.byte	0x1d
	.value	0x10b
	.byte	0x1a
	.long	0x3d2
	.uleb128 0xb
	.long	0x7fc
	.long	0x819
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.long	0x80e
	.uleb128 0x15
	.long	.LASF150
	.byte	0x1d
	.value	0x10c
	.byte	0x21
	.long	0x819
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1e
	.byte	0x19
	.byte	0x6
	.long	0x856
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF157
	.byte	0x1f
	.byte	0x32
	.byte	0xf
	.long	0x644
	.uleb128 0x12
	.long	.LASF158
	.byte	0x1f
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0x12
	.long	.LASF159
	.byte	0x1f
	.byte	0x39
	.byte	0xc
	.long	0x6a
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x20
	.byte	0x2d
	.byte	0xe
	.long	0x8ad
	.uleb128 0x1a
	.long	.LASF160
	.byte	0
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF162
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF163
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF164
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF165
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF166
	.uleb128 0xb
	.long	0x47
	.long	0x8bf
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.long	0x8b4
	.uleb128 0x15
	.long	.LASF167
	.byte	0x21
	.value	0x139
	.byte	0x1b
	.long	0x8bf
	.uleb128 0xf
	.long	.LASF168
	.byte	0x10
	.byte	0x22
	.byte	0xa7
	.byte	0x8
	.long	0x906
	.uleb128 0xe
	.long	.LASF169
	.byte	0x22
	.byte	0xa9
	.byte	0x9
	.long	0x119
	.byte	0
	.uleb128 0xe
	.long	.LASF170
	.byte	0x22
	.byte	0xaa
	.byte	0x1a
	.long	0x906
	.byte	0x8
	.uleb128 0xe
	.long	.LASF171
	.byte	0x22
	.byte	0xab
	.byte	0x8
	.long	0x90c
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x8d1
	.uleb128 0xb
	.long	0x124
	.long	0x91b
	.uleb128 0x1f
	.long	0x39
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x22
	.byte	0xb5
	.byte	0x3
	.long	0x939
	.uleb128 0x20
	.string	"i"
	.byte	0x22
	.byte	0xb7
	.byte	0x15
	.long	0x2d
	.uleb128 0x20
	.string	"p"
	.byte	0x22
	.byte	0xb8
	.byte	0xb
	.long	0x4c
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x22
	.byte	0xbd
	.byte	0x3
	.long	0x95b
	.uleb128 0xa
	.long	.LASF172
	.byte	0x22
	.byte	0xbf
	.byte	0xd
	.long	0x96a
	.uleb128 0xa
	.long	.LASF173
	.byte	0x22
	.byte	0xc0
	.byte	0xd
	.long	0x984
	.byte	0
	.uleb128 0x21
	.long	0x4c
	.long	0x96a
	.uleb128 0x22
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x95b
	.uleb128 0x21
	.long	0x4c
	.long	0x984
	.uleb128 0x22
	.long	0x4c
	.uleb128 0x22
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x970
	.uleb128 0x9
	.byte	0x8
	.byte	0x22
	.byte	0xc2
	.byte	0x3
	.long	0x9ac
	.uleb128 0xa
	.long	.LASF172
	.byte	0x22
	.byte	0xc4
	.byte	0xc
	.long	0x9b7
	.uleb128 0xa
	.long	.LASF173
	.byte	0x22
	.byte	0xc5
	.byte	0xc
	.long	0x9cd
	.byte	0
	.uleb128 0x23
	.long	0x9b7
	.uleb128 0x22
	.long	0x4c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9ac
	.uleb128 0x23
	.long	0x9cd
	.uleb128 0x22
	.long	0x4c
	.uleb128 0x22
	.long	0x4c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9bd
	.uleb128 0xf
	.long	.LASF174
	.byte	0x58
	.byte	0x22
	.byte	0xae
	.byte	0x8
	.long	0xa93
	.uleb128 0xe
	.long	.LASF175
	.byte	0x22
	.byte	0xb0
	.byte	0x11
	.long	0x2d
	.byte	0
	.uleb128 0xe
	.long	.LASF176
	.byte	0x22
	.byte	0xb1
	.byte	0x1a
	.long	0x906
	.byte	0x8
	.uleb128 0xe
	.long	.LASF177
	.byte	0x22
	.byte	0xb2
	.byte	0x9
	.long	0x119
	.byte	0x10
	.uleb128 0xe
	.long	.LASF178
	.byte	0x22
	.byte	0xb3
	.byte	0x9
	.long	0x119
	.byte	0x18
	.uleb128 0xe
	.long	.LASF179
	.byte	0x22
	.byte	0xb4
	.byte	0x9
	.long	0x119
	.byte	0x20
	.uleb128 0xe
	.long	.LASF180
	.byte	0x22
	.byte	0xb9
	.byte	0x5
	.long	0x91b
	.byte	0x28
	.uleb128 0xe
	.long	.LASF181
	.byte	0x22
	.byte	0xba
	.byte	0x13
	.long	0x2d
	.byte	0x30
	.uleb128 0xe
	.long	.LASF182
	.byte	0x22
	.byte	0xc1
	.byte	0x5
	.long	0x939
	.byte	0x38
	.uleb128 0xe
	.long	.LASF183
	.byte	0x22
	.byte	0xc6
	.byte	0x5
	.long	0x98a
	.byte	0x40
	.uleb128 0xe
	.long	.LASF184
	.byte	0x22
	.byte	0xc8
	.byte	0x9
	.long	0x4c
	.byte	0x48
	.uleb128 0x24
	.long	.LASF185
	.byte	0x22
	.byte	0xc9
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x24
	.long	.LASF186
	.byte	0x22
	.byte	0xca
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x24
	.long	.LASF187
	.byte	0x22
	.byte	0xce
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.long	.LASF188
	.byte	0x22
	.byte	0xe6
	.byte	0x26
	.long	0xa9f
	.uleb128 0x8
	.byte	0x8
	.long	0x63f
	.uleb128 0x12
	.long	.LASF189
	.byte	0x22
	.byte	0xe9
	.byte	0xc
	.long	0x6a
	.uleb128 0x25
	.long	.LASF190
	.value	0x120
	.byte	0x23
	.byte	0x1c
	.byte	0x8
	.long	0xb0e
	.uleb128 0xe
	.long	.LASF191
	.byte	0x23
	.byte	0x1e
	.byte	0xa
	.long	0x2d
	.byte	0
	.uleb128 0x16
	.string	"tok"
	.byte	0x23
	.byte	0x1f
	.byte	0xa
	.long	0x686
	.byte	0x8
	.uleb128 0xe
	.long	.LASF192
	.byte	0x23
	.byte	0x20
	.byte	0xb
	.long	0xb0e
	.byte	0x10
	.uleb128 0xe
	.long	.LASF193
	.byte	0x23
	.byte	0x21
	.byte	0x12
	.long	0x9d3
	.byte	0x18
	.uleb128 0xe
	.long	.LASF194
	.byte	0x23
	.byte	0x22
	.byte	0x12
	.long	0x9d3
	.byte	0x70
	.uleb128 0xe
	.long	.LASF195
	.byte	0x23
	.byte	0x23
	.byte	0x12
	.long	0x9d3
	.byte	0xc8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2d
	.uleb128 0x26
	.long	.LASF196
	.byte	0x2
	.byte	0x3a
	.byte	0x12
	.long	0x6c9
	.uleb128 0x9
	.byte	0x3
	.quad	total_lines
	.uleb128 0x26
	.long	.LASF197
	.byte	0x2
	.byte	0x3b
	.byte	0x12
	.long	0x6c9
	.uleb128 0x9
	.byte	0x3
	.quad	total_words
	.uleb128 0x26
	.long	.LASF198
	.byte	0x2
	.byte	0x3c
	.byte	0x12
	.long	0x6c9
	.uleb128 0x9
	.byte	0x3
	.quad	total_chars
	.uleb128 0x26
	.long	.LASF199
	.byte	0x2
	.byte	0x3d
	.byte	0x12
	.long	0x6c9
	.uleb128 0x9
	.byte	0x3
	.quad	total_bytes
	.uleb128 0x26
	.long	.LASF200
	.byte	0x2
	.byte	0x3e
	.byte	0x12
	.long	0x6c9
	.uleb128 0x9
	.byte	0x3
	.quad	max_line_length
	.uleb128 0x26
	.long	.LASF201
	.byte	0x2
	.byte	0x41
	.byte	0xd
	.long	0x8ad
	.uleb128 0x9
	.byte	0x3
	.quad	print_lines
	.uleb128 0x26
	.long	.LASF202
	.byte	0x2
	.byte	0x41
	.byte	0x1a
	.long	0x8ad
	.uleb128 0x9
	.byte	0x3
	.quad	print_words
	.uleb128 0x26
	.long	.LASF203
	.byte	0x2
	.byte	0x41
	.byte	0x27
	.long	0x8ad
	.uleb128 0x9
	.byte	0x3
	.quad	print_chars
	.uleb128 0x26
	.long	.LASF204
	.byte	0x2
	.byte	0x41
	.byte	0x34
	.long	0x8ad
	.uleb128 0x9
	.byte	0x3
	.quad	print_bytes
	.uleb128 0x26
	.long	.LASF205
	.byte	0x2
	.byte	0x42
	.byte	0xd
	.long	0x8ad
	.uleb128 0x9
	.byte	0x3
	.quad	print_linelength
	.uleb128 0x26
	.long	.LASF206
	.byte	0x2
	.byte	0x45
	.byte	0xc
	.long	0x6a
	.uleb128 0x9
	.byte	0x3
	.quad	number_width
	.uleb128 0x26
	.long	.LASF207
	.byte	0x2
	.byte	0x48
	.byte	0xd
	.long	0x8ad
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x26
	.long	.LASF208
	.byte	0x2
	.byte	0x4b
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	page_size
	.uleb128 0x26
	.long	.LASF209
	.byte	0x2
	.byte	0x4e
	.byte	0xd
	.long	0x8ad
	.uleb128 0x9
	.byte	0x3
	.quad	posixly_correct
	.uleb128 0xf
	.long	.LASF210
	.byte	0x98
	.byte	0x2
	.byte	0x51
	.byte	0x8
	.long	0xc6f
	.uleb128 0xe
	.long	.LASF211
	.byte	0x2
	.byte	0x55
	.byte	0x7
	.long	0x6a
	.byte	0
	.uleb128 0x16
	.string	"st"
	.byte	0x2
	.byte	0x58
	.byte	0xf
	.long	0x558
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0xc48
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x5e
	.byte	0x1
	.long	0xc89
	.uleb128 0x1a
	.long	.LASF212
	.byte	0x80
	.byte	0
	.uleb128 0xb
	.long	0x4d0
	.long	0xc99
	.uleb128 0xc
	.long	0x39
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0xc89
	.uleb128 0x26
	.long	.LASF213
	.byte	0x2
	.byte	0x62
	.byte	0x1c
	.long	0xc99
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x27
	.long	.LASF265
	.byte	0x2
	.value	0x2a8
	.byte	0x1
	.long	0x6a
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0xecd
	.uleb128 0x28
	.long	.LASF214
	.byte	0x2
	.value	0x2a8
	.byte	0xb
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x28
	.long	.LASF215
	.byte	0x2
	.value	0x2a8
	.byte	0x18
	.long	0x686
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x29
	.string	"ok"
	.byte	0x2
	.value	0x2aa
	.byte	0x8
	.long	0x8ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -559
	.uleb128 0x2a
	.long	.LASF216
	.byte	0x2
	.value	0x2ab
	.byte	0x7
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x2a
	.long	.LASF217
	.byte	0x2
	.value	0x2ac
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x2a
	.long	.LASF218
	.byte	0x2
	.value	0x2ad
	.byte	0xa
	.long	0x686
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x2a
	.long	.LASF219
	.byte	0x2
	.value	0x2ae
	.byte	0x9
	.long	0x119
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x2a
	.long	.LASF210
	.byte	0x2
	.value	0x2af
	.byte	0x13
	.long	0xecd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x29
	.string	"tok"
	.byte	0x2
	.value	0x2b0
	.byte	0x11
	.long	0xab1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x2a
	.long	.LASF220
	.byte	0x2
	.value	0x2ec
	.byte	0x8
	.long	0x8ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -558
	.uleb128 0x29
	.string	"ai"
	.byte	0x2
	.value	0x2ed
	.byte	0x19
	.long	0xed8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2b
	.long	.LASF246
	.byte	0x2
	.value	0x368
	.byte	0x2
	.quad	.L212
	.uleb128 0x2c
	.long	.LASF281
	.long	0xeee
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7149
	.uleb128 0x2d
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0xe0d
	.uleb128 0x2a
	.long	.LASF221
	.byte	0x2
	.value	0x2f0
	.byte	0xd
	.long	0x39d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x29
	.string	"st"
	.byte	0x2
	.value	0x308
	.byte	0x13
	.long	0x558
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2e
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2e
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0
	.uleb128 0x2d
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0xe3a
	.uleb128 0x2a
	.long	.LASF222
	.byte	0x2
	.value	0x31f
	.byte	0x14
	.long	0xef3
	.uleb128 0x9
	.byte	0x3
	.quad	stdin_only.7139
	.byte	0
	.uleb128 0x2d
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0xebb
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x32c
	.byte	0xc
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x2a
	.long	.LASF223
	.byte	0x2
	.value	0x32e
	.byte	0xc
	.long	0x8ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -557
	.uleb128 0x2a
	.long	.LASF224
	.byte	0x2
	.value	0x32f
	.byte	0x1a
	.long	0x82b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x2a
	.long	.LASF225
	.byte	0x2
	.value	0x330
	.byte	0xd
	.long	0x119
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x30
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2a
	.long	.LASF226
	.byte	0x2
	.value	0x359
	.byte	0x21
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc48
	.uleb128 0x11
	.long	.LASF227
	.uleb128 0x8
	.byte	0x8
	.long	0xed3
	.uleb128 0xb
	.long	0x12b
	.long	0xeee
	.uleb128 0xc
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	0xede
	.uleb128 0xb
	.long	0x119
	.long	0xf03
	.uleb128 0xc
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF231
	.byte	0x2
	.value	0x28b
	.byte	0x1
	.long	0x6a
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0xfa9
	.uleb128 0x28
	.long	.LASF217
	.byte	0x2
	.value	0x28b
	.byte	0x1e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF210
	.byte	0x2
	.value	0x28b
	.byte	0x3c
	.long	0xfa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF228
	.byte	0x2
	.value	0x28d
	.byte	0x7
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2a
	.long	.LASF229
	.byte	0x2
	.value	0x291
	.byte	0xb
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF230
	.byte	0x2
	.value	0x292
	.byte	0x11
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x294
	.byte	0x13
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc6f
	.uleb128 0x32
	.long	.LASF232
	.byte	0x2
	.value	0x271
	.byte	0x1
	.long	0xecd
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1023
	.uleb128 0x28
	.long	.LASF217
	.byte	0x2
	.value	0x271
	.byte	0x1b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF233
	.byte	0x2
	.value	0x271
	.byte	0x30
	.long	0x1023
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF210
	.byte	0x2
	.value	0x273
	.byte	0x13
	.long	0xecd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.value	0x27d
	.byte	0x13
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x11f
	.uleb128 0x32
	.long	.LASF234
	.byte	0x2
	.value	0x24d
	.byte	0x1
	.long	0x8ad
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x10af
	.uleb128 0x28
	.long	.LASF233
	.byte	0x2
	.value	0x24d
	.byte	0x16
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF210
	.byte	0x2
	.value	0x24d
	.byte	0x2c
	.long	0xecd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x29
	.string	"fd"
	.byte	0x2
	.value	0x257
	.byte	0xb
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x29
	.string	"ok"
	.byte	0x2
	.value	0x25f
	.byte	0x10
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.string	"wc"
	.byte	0x2
	.byte	0xd8
	.byte	0x1
	.long	0x8ad
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1421
	.uleb128 0x34
	.string	"fd"
	.byte	0x2
	.byte	0xd8
	.byte	0x9
	.long	0x6a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16628
	.uleb128 0x35
	.long	.LASF235
	.byte	0x2
	.byte	0xd8
	.byte	0x19
	.long	0x37a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16640
	.uleb128 0x35
	.long	.LASF210
	.byte	0x2
	.byte	0xd8
	.byte	0x31
	.long	0xecd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16648
	.uleb128 0x35
	.long	.LASF236
	.byte	0x2
	.byte	0xd8
	.byte	0x40
	.long	0x385
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16656
	.uleb128 0x36
	.string	"ok"
	.byte	0x2
	.byte	0xda
	.byte	0x8
	.long	0x8ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16610
	.uleb128 0x36
	.string	"buf"
	.byte	0x2
	.byte	0xdb
	.byte	0x8
	.long	0x1421
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0x26
	.long	.LASF237
	.byte	0x2
	.byte	0xdc
	.byte	0xa
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16592
	.uleb128 0x26
	.long	.LASF238
	.byte	0x2
	.byte	0xdd
	.byte	0xd
	.long	0x6c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16584
	.uleb128 0x26
	.long	.LASF239
	.byte	0x2
	.byte	0xdd
	.byte	0x14
	.long	0x6c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16576
	.uleb128 0x26
	.long	.LASF240
	.byte	0x2
	.byte	0xdd
	.byte	0x1b
	.long	0x6c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16568
	.uleb128 0x26
	.long	.LASF241
	.byte	0x2
	.byte	0xdd
	.byte	0x22
	.long	0x6c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16560
	.uleb128 0x26
	.long	.LASF242
	.byte	0x2
	.byte	0xdd
	.byte	0x29
	.long	0x6c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16552
	.uleb128 0x26
	.long	.LASF243
	.byte	0x2
	.byte	0xde
	.byte	0x8
	.long	0x8ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16609
	.uleb128 0x26
	.long	.LASF244
	.byte	0x2
	.byte	0xde
	.byte	0x15
	.long	0x8ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16608
	.uleb128 0x26
	.long	.LASF245
	.byte	0x2
	.byte	0xde
	.byte	0x22
	.long	0x8ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16601
	.uleb128 0x26
	.long	.LASF233
	.byte	0x2
	.byte	0xdf
	.byte	0xf
	.long	0x37a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16488
	.uleb128 0x2b
	.long	.LASF247
	.byte	0x2
	.value	0x1cd
	.byte	0x11
	.quad	.L92
	.uleb128 0x2b
	.long	.LASF248
	.byte	0x2
	.value	0x227
	.byte	0x11
	.quad	.L115
	.uleb128 0x37
	.long	.Ldebug_ranges0+0
	.long	0x1264
	.uleb128 0x2a
	.long	.LASF249
	.byte	0x2
	.value	0x103
	.byte	0xc
	.long	0x8ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16607
	.uleb128 0x30
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2a
	.long	.LASF250
	.byte	0x2
	.value	0x10e
	.byte	0x12
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16480
	.uleb128 0x30
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2a
	.long	.LASF251
	.byte	0x2
	.value	0x121
	.byte	0x15
	.long	0x385
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16472
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x30
	.long	0x12ba
	.uleb128 0x2a
	.long	.LASF252
	.byte	0x2
	.value	0x13b
	.byte	0xc
	.long	0x8ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16606
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x147
	.byte	0x11
	.long	0x119
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16544
	.uleb128 0x29
	.string	"end"
	.byte	0x2
	.value	0x148
	.byte	0x11
	.long	0x119
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16464
	.uleb128 0x2a
	.long	.LASF253
	.byte	0x2
	.value	0x149
	.byte	0x15
	.long	0x6c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16456
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x13c8
	.uleb128 0x2a
	.long	.LASF254
	.byte	0x2
	.value	0x16b
	.byte	0xc
	.long	0x8ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16605
	.uleb128 0x2a
	.long	.LASF255
	.byte	0x2
	.value	0x16c
	.byte	0x11
	.long	0x6c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16536
	.uleb128 0x2a
	.long	.LASF256
	.byte	0x2
	.value	0x16d
	.byte	0x11
	.long	0x4e7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.uleb128 0x2a
	.long	.LASF257
	.byte	0x2
	.value	0x16e
	.byte	0xc
	.long	0x8ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16604
	.uleb128 0x2a
	.long	.LASF170
	.byte	0x2
	.value	0x177
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16528
	.uleb128 0x30
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x17e
	.byte	0x17
	.long	0x37a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16520
	.uleb128 0x2a
	.long	.LASF258
	.byte	0x2
	.value	0x180
	.byte	0x15
	.long	0x4e7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16440
	.uleb128 0x30
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2a
	.long	.LASF259
	.byte	0x2
	.value	0x18e
	.byte	0x17
	.long	0x3fb
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16600
	.uleb128 0x29
	.string	"n"
	.byte	0x2
	.value	0x18f
	.byte	0x16
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16512
	.uleb128 0x2a
	.long	.LASF260
	.byte	0x2
	.value	0x190
	.byte	0x14
	.long	0x8ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16603
	.uleb128 0x30
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2a
	.long	.LASF228
	.byte	0x2
	.value	0x1d8
	.byte	0x1f
	.long	0x6a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16596
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2a
	.long	.LASF254
	.byte	0x2
	.value	0x205
	.byte	0xc
	.long	0x8ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16602
	.uleb128 0x2a
	.long	.LASF255
	.byte	0x2
	.value	0x206
	.byte	0x11
	.long	0x6c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16504
	.uleb128 0x30
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x29
	.string	"p"
	.byte	0x2
	.value	0x20a
	.byte	0x17
	.long	0x37a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16496
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x124
	.long	0x1432
	.uleb128 0x38
	.long	0x39
	.value	0x4000
	.byte	0
	.uleb128 0x39
	.long	.LASF269
	.byte	0x2
	.byte	0xab
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e5
	.uleb128 0x35
	.long	.LASF238
	.byte	0x2
	.byte	0xab
	.byte	0x19
	.long	0x6c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF239
	.byte	0x2
	.byte	0xac
	.byte	0x19
	.long	0x6c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF240
	.byte	0x2
	.byte	0xad
	.byte	0x19
	.long	0x6c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.long	.LASF241
	.byte	0x2
	.byte	0xae
	.byte	0x19
	.long	0x6c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF242
	.byte	0x2
	.byte	0xaf
	.byte	0x19
	.long	0x6c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF233
	.byte	0x2
	.byte	0xb0
	.byte	0x1b
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF261
	.byte	0x2
	.byte	0xb2
	.byte	0x15
	.long	0xeee
	.uleb128 0x9
	.byte	0x3
	.quad	format_sp_int.6995
	.uleb128 0x26
	.long	.LASF262
	.byte	0x2
	.byte	0xb3
	.byte	0xf
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.string	"buf"
	.byte	0x2
	.byte	0xb4
	.byte	0x8
	.long	0x14e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	0x124
	.long	0x14f5
	.uleb128 0xc
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x3a
	.long	.LASF263
	.byte	0x2
	.byte	0xa3
	.byte	0x1
	.long	0x6a
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x1525
	.uleb128 0x34
	.string	"c"
	.byte	0x2
	.byte	0xa3
	.byte	0x10
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3b
	.long	.LASF264
	.byte	0x2
	.byte	0x9b
	.byte	0x1
	.long	0x6a
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x1556
	.uleb128 0x34
	.string	"wc"
	.byte	0x2
	.byte	0x9b
	.byte	0x14
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3c
	.long	.LASF266
	.byte	0x2
	.byte	0x70
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1584
	.uleb128 0x35
	.long	.LASF267
	.byte	0x2
	.byte	0x70
	.byte	0xc
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x31
	.long	.LASF268
	.byte	0x1
	.value	0x2c1
	.byte	0x1
	.long	0x8ad
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x15b7
	.uleb128 0x3d
	.string	"sb"
	.byte	0x1
	.value	0x2c1
	.byte	0x24
	.long	0x15b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x629
	.uleb128 0x3e
	.long	.LASF270
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1662
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x3f
	.long	.LASF272
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1618
	.uleb128 0x40
	.long	.LASF271
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x37a
	.byte	0
	.uleb128 0x40
	.long	.LASF273
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x37a
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x15ed
	.uleb128 0x2a
	.long	.LASF272
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x1672
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF273
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2a
	.long	.LASF274
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1677
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xb
	.long	0x1618
	.long	0x1672
	.uleb128 0xc
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	0x1662
	.uleb128 0x8
	.byte	0x8
	.long	0x1618
	.uleb128 0x41
	.long	.LASF282
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x42
	.long	.LASF276
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x4e
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x124
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF110:
	.string	"__glibc_reserved"
.LASF109:
	.string	"st_ctim"
.LASF231:
	.string	"compute_number_width"
.LASF7:
	.string	"size_t"
.LASF25:
	.string	"__value"
.LASF134:
	.string	"GETOPT_HELP_CHAR"
.LASF129:
	.string	"_ISgraph"
.LASF176:
	.string	"chunk"
.LASF105:
	.string	"st_blksize"
.LASF106:
	.string	"st_blocks"
.LASF58:
	.string	"_IO_codecvt"
.LASF219:
	.string	"files_from"
.LASF228:
	.string	"width"
.LASF38:
	.string	"_IO_save_end"
.LASF277:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF11:
	.string	"__gid_t"
.LASF111:
	.string	"_sys_siglist"
.LASF108:
	.string	"st_mtim"
.LASF168:
	.string	"_obstack_chunk"
.LASF71:
	.string	"time_t"
.LASF248:
	.string	"word_separator"
.LASF31:
	.string	"_IO_write_base"
.LASF256:
	.string	"state"
.LASF159:
	.string	"error_one_per_line"
.LASF47:
	.string	"_lock"
.LASF184:
	.string	"extra_arg"
.LASF230:
	.string	"regular_total"
.LASF95:
	.string	"stat"
.LASF217:
	.string	"nfiles"
.LASF88:
	.string	"__tzname"
.LASF36:
	.string	"_IO_save_base"
.LASF40:
	.string	"_chain"
.LASF240:
	.string	"chars"
.LASF44:
	.string	"_cur_column"
.LASF64:
	.string	"sys_nerr"
.LASF22:
	.string	"__wch"
.LASF9:
	.string	"__dev_t"
.LASF182:
	.string	"chunkfun"
.LASF66:
	.string	"_sys_nerr"
.LASF171:
	.string	"contents"
.LASF113:
	.string	"__environ"
.LASF212:
	.string	"FILES0_FROM_OPTION"
.LASF6:
	.string	"long int"
.LASF205:
	.string	"print_linelength"
.LASF84:
	.string	"has_arg"
.LASF57:
	.string	"_IO_marker"
.LASF265:
	.string	"main"
.LASF181:
	.string	"alignment_mask"
.LASF128:
	.string	"_ISprint"
.LASF87:
	.string	"mbstate_t"
.LASF165:
	.string	"FADVISE_RANDOM"
.LASF4:
	.string	"signed char"
.LASF18:
	.string	"__blksize_t"
.LASF282:
	.string	"emit_stdin_note"
.LASF72:
	.string	"_IO_FILE"
.LASF90:
	.string	"__timezone"
.LASF59:
	.string	"_IO_wide_data"
.LASF100:
	.string	"st_uid"
.LASF154:
	.string	"AI_ERR_EOF"
.LASF281:
	.string	"__PRETTY_FUNCTION__"
.LASF149:
	.string	"quoting_style_args"
.LASF114:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF51:
	.string	"_freeres_list"
.LASF103:
	.string	"st_rdev"
.LASF207:
	.string	"have_read_stdin"
.LASF206:
	.string	"number_width"
.LASF262:
	.string	"format_int"
.LASF270:
	.string	"emit_ancillary_info"
.LASF158:
	.string	"error_message_count"
.LASF20:
	.string	"__syscall_slong_t"
.LASF166:
	.string	"_Bool"
.LASF241:
	.string	"bytes"
.LASF161:
	.string	"FADVISE_SEQUENTIAL"
.LASF21:
	.string	"char"
.LASF167:
	.string	"is_basic_table"
.LASF280:
	.string	"_IO_lock_t"
.LASF238:
	.string	"lines"
.LASF189:
	.string	"obstack_exit_failure"
.LASF93:
	.string	"timezone"
.LASF142:
	.string	"shell_escape_always_quoting_style"
.LASF13:
	.string	"__mode_t"
.LASF249:
	.string	"skip_read"
.LASF28:
	.string	"_IO_read_ptr"
.LASF247:
	.string	"mb_word_separator"
.LASF229:
	.string	"minimum_width"
.LASF278:
	.string	"src/wc.c"
.LASF61:
	.string	"stdin"
.LASF261:
	.string	"format_sp_int"
.LASF221:
	.string	"stream"
.LASF65:
	.string	"sys_errlist"
.LASF39:
	.string	"_markers"
.LASF137:
	.string	"program_name"
.LASF233:
	.string	"file"
.LASF132:
	.string	"_ISpunct"
.LASF169:
	.string	"limit"
.LASF246:
	.string	"argv_iter_done"
.LASF144:
	.string	"c_maybe_quoting_style"
.LASF273:
	.string	"node"
.LASF251:
	.string	"hi_pos"
.LASF162:
	.string	"FADVISE_NOREUSE"
.LASF115:
	.string	"program_invocation_name"
.LASF200:
	.string	"max_line_length"
.LASF48:
	.string	"_offset"
.LASF175:
	.string	"chunk_size"
.LASF101:
	.string	"st_gid"
.LASF203:
	.string	"print_chars"
.LASF79:
	.string	"optind"
.LASF147:
	.string	"clocale_quoting_style"
.LASF157:
	.string	"error_print_progname"
.LASF223:
	.string	"skip_file"
.LASF0:
	.string	"long unsigned int"
.LASF267:
	.string	"status"
.LASF186:
	.string	"maybe_empty_object"
.LASF42:
	.string	"_flags2"
.LASF104:
	.string	"st_size"
.LASF30:
	.string	"_IO_read_base"
.LASF194:
	.string	"o_tok"
.LASF177:
	.string	"object_base"
.LASF82:
	.string	"option"
.LASF252:
	.string	"long_lines"
.LASF55:
	.string	"_unused2"
.LASF183:
	.string	"freefun"
.LASF126:
	.string	"_ISxdigit"
.LASF214:
	.string	"argc"
.LASF43:
	.string	"_old_offset"
.LASF272:
	.string	"infomap"
.LASF215:
	.string	"argv"
.LASF19:
	.string	"__blkcnt_t"
.LASF139:
	.string	"shell_quoting_style"
.LASF187:
	.string	"alloc_failed"
.LASF12:
	.string	"__ino_t"
.LASF195:
	.string	"o_tok_len"
.LASF69:
	.string	"long long int"
.LASF26:
	.string	"__mbstate_t"
.LASF271:
	.string	"program"
.LASF117:
	.string	"Version"
.LASF118:
	.string	"exit_failure"
.LASF76:
	.string	"_gl_cxxalias_dummy"
.LASF155:
	.string	"AI_ERR_MEM"
.LASF222:
	.string	"stdin_only"
.LASF122:
	.string	"_ISupper"
.LASF143:
	.string	"c_quoting_style"
.LASF163:
	.string	"FADVISE_DONTNEED"
.LASF234:
	.string	"wc_file"
.LASF131:
	.string	"_IScntrl"
.LASF264:
	.string	"iswnbspace"
.LASF33:
	.string	"_IO_write_end"
.LASF119:
	.string	"uintmax_t"
.LASF193:
	.string	"o_data"
.LASF112:
	.string	"sys_siglist"
.LASF204:
	.string	"print_bytes"
.LASF210:
	.string	"fstatus"
.LASF254:
	.string	"in_word"
.LASF135:
	.string	"GETOPT_VERSION_CHAR"
.LASF34:
	.string	"_IO_buf_base"
.LASF216:
	.string	"optc"
.LASF1:
	.string	"unsigned int"
.LASF244:
	.string	"count_chars"
.LASF250:
	.string	"end_pos"
.LASF174:
	.string	"obstack"
.LASF136:
	.string	"version_etc_copyright"
.LASF268:
	.string	"usable_st_size"
.LASF150:
	.string	"quoting_style_vals"
.LASF152:
	.string	"argv_iter_err"
.LASF138:
	.string	"literal_quoting_style"
.LASF102:
	.string	"__pad0"
.LASF91:
	.string	"tzname"
.LASF53:
	.string	"__pad5"
.LASF257:
	.string	"in_shift"
.LASF85:
	.string	"flag"
.LASF258:
	.string	"backup_state"
.LASF191:
	.string	"n_tok"
.LASF209:
	.string	"posixly_correct"
.LASF192:
	.string	"tok_len"
.LASF27:
	.string	"_flags"
.LASF275:
	.string	"lc_messages"
.LASF208:
	.string	"page_size"
.LASF178:
	.string	"next_free"
.LASF54:
	.string	"_mode"
.LASF198:
	.string	"total_chars"
.LASF160:
	.string	"FADVISE_NORMAL"
.LASF49:
	.string	"_codecvt"
.LASF24:
	.string	"__count"
.LASF121:
	.string	"LOG10_TIMESPEC_HZ"
.LASF98:
	.string	"st_nlink"
.LASF60:
	.string	"off_t"
.LASF227:
	.string	"argv_iterator"
.LASF164:
	.string	"FADVISE_WILLNEED"
.LASF245:
	.string	"count_complicated"
.LASF259:
	.string	"wide_char"
.LASF235:
	.string	"file_x"
.LASF70:
	.string	"long double"
.LASF56:
	.string	"FILE"
.LASF213:
	.string	"longopts"
.LASF96:
	.string	"st_dev"
.LASF73:
	.string	"timespec"
.LASF23:
	.string	"__wchb"
.LASF190:
	.string	"Tokens"
.LASF124:
	.string	"_ISalpha"
.LASF81:
	.string	"optopt"
.LASF237:
	.string	"bytes_read"
.LASF146:
	.string	"locale_quoting_style"
.LASF77:
	.string	"long long unsigned int"
.LASF201:
	.string	"print_lines"
.LASF130:
	.string	"_ISblank"
.LASF15:
	.string	"__off_t"
.LASF173:
	.string	"extra"
.LASF151:
	.string	"quoting_style"
.LASF133:
	.string	"_ISalnum"
.LASF116:
	.string	"program_invocation_short_name"
.LASF243:
	.string	"count_bytes"
.LASF52:
	.string	"_freeres_buf"
.LASF127:
	.string	"_ISspace"
.LASF220:
	.string	"read_tokens"
.LASF80:
	.string	"opterr"
.LASF279:
	.string	"/root/coreutils"
.LASF17:
	.string	"__time_t"
.LASF197:
	.string	"total_words"
.LASF37:
	.string	"_IO_backup_base"
.LASF46:
	.string	"_shortbuf"
.LASF276:
	.string	"to_uchar"
.LASF86:
	.string	"wint_t"
.LASF199:
	.string	"total_bytes"
.LASF269:
	.string	"write_counts"
.LASF140:
	.string	"shell_always_quoting_style"
.LASF16:
	.string	"__off64_t"
.LASF185:
	.string	"use_extra_arg"
.LASF179:
	.string	"chunk_limit"
.LASF145:
	.string	"escape_quoting_style"
.LASF35:
	.string	"_IO_buf_end"
.LASF253:
	.string	"plines"
.LASF202:
	.string	"print_words"
.LASF83:
	.string	"name"
.LASF123:
	.string	"_ISlower"
.LASF274:
	.string	"map_prog"
.LASF225:
	.string	"file_name"
.LASF63:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF172:
	.string	"plain"
.LASF75:
	.string	"tv_nsec"
.LASF266:
	.string	"usage"
.LASF141:
	.string	"shell_escape_quoting_style"
.LASF239:
	.string	"words"
.LASF45:
	.string	"_vtable_offset"
.LASF67:
	.string	"_sys_errlist"
.LASF8:
	.string	"__uintmax_t"
.LASF153:
	.string	"AI_ERR_OK"
.LASF156:
	.string	"AI_ERR_READ"
.LASF120:
	.string	"TIMESPEC_HZ"
.LASF226:
	.string	"file_number"
.LASF89:
	.string	"__daylight"
.LASF232:
	.string	"get_input_fstatus"
.LASF99:
	.string	"st_mode"
.LASF10:
	.string	"__uid_t"
.LASF29:
	.string	"_IO_read_end"
.LASF236:
	.string	"current_pos"
.LASF94:
	.string	"getdate_err"
.LASF41:
	.string	"_fileno"
.LASF50:
	.string	"_wide_data"
.LASF78:
	.string	"optarg"
.LASF196:
	.string	"total_lines"
.LASF125:
	.string	"_ISdigit"
.LASF3:
	.string	"short unsigned int"
.LASF62:
	.string	"stdout"
.LASF218:
	.string	"files"
.LASF32:
	.string	"_IO_write_ptr"
.LASF92:
	.string	"daylight"
.LASF97:
	.string	"st_ino"
.LASF211:
	.string	"failed"
.LASF180:
	.string	"temp"
.LASF14:
	.string	"__nlink_t"
.LASF224:
	.string	"ai_err"
.LASF170:
	.string	"prev"
.LASF74:
	.string	"tv_sec"
.LASF260:
	.string	"wide"
.LASF188:
	.string	"obstack_alloc_failed_handler"
.LASF68:
	.string	"wchar_t"
.LASF148:
	.string	"custom_quoting_style"
.LASF255:
	.string	"linepos"
.LASF263:
	.string	"isnbspace"
.LASF107:
	.string	"st_atim"
.LASF242:
	.string	"linelength"
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
