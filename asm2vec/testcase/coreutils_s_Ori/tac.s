	.file	"tac.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.text
	.type	emit_stdin_note, @function
emit_stdin_note:
.LFB35:
	.file 1 "src/system.h"
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
.LC2:
	.string	"["
.LC3:
	.string	"test invocation"
.LC4:
	.string	"coreutils"
.LC5:
	.string	"Multi-call invocation"
.LC6:
	.string	"sha224sum"
.LC7:
	.string	"sha2 utilities"
.LC8:
	.string	"sha256sum"
.LC9:
	.string	"sha384sum"
.LC10:
	.string	"sha512sum"
.LC11:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC12:
	.string	"https://www.gnu.org/software/coreutils/"
.LC13:
	.string	"GNU coreutils"
.LC14:
	.string	"en_"
	.align 8
.LC15:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC16:
	.string	"Full documentation <%s%s>\n"
.LC17:
	.string	" invocation"
.LC18:
	.string	""
	.align 8
.LC19:
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
	leaq	.LC2(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC7(%rip), %rax
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
	leaq	.LC11(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC12(%rip), %rdx
	leaq	.LC13(%rip), %rsi
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
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L8
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L8:
	.loc 1 669 11
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L9
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC17(%rip), %rbx
	jmp	.L10
.L9:
	.loc 1 671 3 discriminator 2
	leaq	.LC18(%rip), %rbx
.L10:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC19(%rip), %rdi
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
	.local	separator
	.comm	separator,8,8
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.local	separator_ends_record
	.comm	separator_ends_record,1,1
	.local	sentinel_length
	.comm	sentinel_length,8,8
	.local	match_length
	.comm	match_length,8,8
	.local	G_buffer
	.comm	G_buffer,8,8
	.local	read_size
	.comm	read_size,8,8
	.local	G_buffer_size
	.comm	G_buffer_size,8,8
	.local	compiled_separator
	.comm	compiled_separator,64,32
	.local	compiled_separator_fastmap
	.comm	compiled_separator_fastmap,256,32
	.local	regs
	.comm	regs,24,16
	.section	.rodata
.LC20:
	.string	"before"
.LC21:
	.string	"regex"
.LC22:
	.string	"separator"
.LC23:
	.string	"help"
.LC24:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 192
longopts:
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC24
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
.LC25:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC26:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC27:
	.string	"Write each FILE to standard output, last line first.\n"
	.align 8
.LC28:
	.string	"  -b, --before             attach the separator before instead of after\n  -r, --regex              interpret the separator as a regular expression\n  -s, --separator=STRING   use STRING as the separator instead of newline\n"
	.align 8
.LC29:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC30:
	.string	"      --version  output version information and exit\n"
.LC31:
	.string	"tac"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.file 2 "src/tac.c"
	.loc 2 127 1 is_stmt 1
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
	.loc 2 128 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 129 5
	movq	program_name(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L14
.L13:
	.loc 2 132 7
	movq	program_name(%rip), %rbx
	.loc 2 132 15
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	.loc 2 132 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 136 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 140 7
	call	emit_stdin_note
	.loc 2 141 7
	call	emit_mandatory_arg_note
	.loc 2 143 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 148 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 149 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 150 7
	leaq	.LC31(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 152 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.type	output, @function
output:
.LFB51:
	.loc 2 160 1
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
	.loc 2 163 34
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 2 163 10
	movq	%rax, -16(%rbp)
	.loc 2 164 38
	movq	bytes_in_buffer.6376(%rip), %rax
	.loc 2 164 10
	movl	$8192, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 166 6
	cmpq	$0, -24(%rbp)
	jne	.L18
	.loc 2 168 7
	movq	stdout(%rip), %rdx
	movq	bytes_in_buffer.6376(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	leaq	buffer.6375(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 169 23
	movq	$0, bytes_in_buffer.6376(%rip)
	.loc 2 170 7
	jmp	.L15
.L19:
	.loc 2 176 7
	movq	bytes_in_buffer.6376(%rip), %rax
	leaq	buffer.6375(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 2 177 20
	movq	-8(%rbp), %rax
	subq	%rax, -16(%rbp)
	.loc 2 178 13
	movq	-8(%rbp), %rax
	addq	%rax, -24(%rbp)
	.loc 2 179 7
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$8192, %edx
	movl	$1, %esi
	leaq	buffer.6375(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 180 23
	movq	$0, bytes_in_buffer.6376(%rip)
	.loc 2 181 23
	movq	$8192, -8(%rbp)
.L18:
	.loc 2 174 9
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L19
	.loc 2 184 3
	movq	bytes_in_buffer.6376(%rip), %rax
	leaq	buffer.6375(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 2 185 19
	movq	bytes_in_buffer.6376(%rip), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, bytes_in_buffer.6376(%rip)
.L15:
	.loc 2 186 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	output, .-output
	.section	.rodata
.LC32:
	.string	"%s: seek failed"
.LC33:
	.string	"%s: read error"
.LC34:
	.string	"record too large"
	.align 8
.LC35:
	.string	"error in regular expression search"
	.text
	.type	tac_seekable, @function
tac_seekable:
.LFB52:
	.loc 2 194 1
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
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	.loc 2 208 8
	movb	$1, -146(%rbp)
	.loc 2 209 21
	movq	separator(%rip), %rax
	.loc 2 209 8
	movzbl	(%rax), %eax
	movb	%al, -145(%rbp)
	.loc 2 210 38
	movq	separator(%rip), %rax
	.loc 2 210 15
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	.loc 2 211 39
	movq	match_length(%rip), %rax
	.loc 2 211 10
	subq	$1, %rax
	movq	%rax, -112(%rbp)
	.loc 2 218 31
	movq	-184(%rbp), %rax
	movq	read_size(%rip), %rcx
	.loc 2 218 10
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -104(%rbp)
	.loc 2 219 6
	cmpq	$0, -104(%rbp)
	je	.L22
	.loc 2 221 16
	movq	-184(%rbp), %rax
	subq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 2 222 11
	movq	-184(%rbp), %rcx
	movl	-164(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 2 222 10
	testq	%rax, %rax
	jns	.L22
	.loc 2 223 9
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 223 26
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 223 19
	call	__errno_location@PLT
	.loc 2 223 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 228 9
	jmp	.L22
.L25:
.LBB2:
	.loc 2 231 13
	movq	read_size(%rip), %rax
	movq	%rax, -96(%rbp)
	.loc 2 232 11
	movq	-96(%rbp), %rax
	negq	%rax
	movq	%rax, %rcx
	movl	-164(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 2 232 10
	testq	%rax, %rax
	jns	.L23
	.loc 2 233 9
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 233 26
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 233 19
	call	__errno_location@PLT
	.loc 2 233 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L23:
	.loc 2 234 16
	movq	-184(%rbp), %rdx
	movq	read_size(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -184(%rbp)
.L22:
.LBE2:
	.loc 2 228 31
	movq	read_size(%rip), %rdx
	movq	G_buffer(%rip), %rcx
	movl	-164(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -128(%rbp)
	.loc 2 228 9
	cmpq	$0, -128(%rbp)
	jne	.L26
	.loc 2 229 10
	cmpq	$0, -184(%rbp)
	jne	.L25
	.loc 2 238 9
	jmp	.L26
.L30:
.LBB3:
	.loc 2 240 22
	movq	read_size(%rip), %rdx
	movq	G_buffer(%rip), %rcx
	movl	-164(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -88(%rbp)
	.loc 2 241 10
	cmpq	$0, -88(%rbp)
	je	.L59
	.loc 2 243 25
	movq	-88(%rbp), %rax
	movq	%rax, -128(%rbp)
	.loc 2 244 10
	cmpq	$-1, -128(%rbp)
	je	.L60
	.loc 2 246 16
	movq	-184(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
.L26:
.LBE3:
	.loc 2 238 28
	movq	read_size(%rip), %rax
	.loc 2 238 9
	cmpq	%rax, -128(%rbp)
	je	.L30
	jmp	.L28
.L59:
.LBB4:
	.loc 2 242 9
	nop
	jmp	.L28
.L60:
	.loc 2 245 9
	nop
.L28:
.LBE4:
	.loc 2 249 6
	cmpq	$-1, -128(%rbp)
	jne	.L31
	.loc 2 251 7
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 251 24
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 251 17
	call	__errno_location@PLT
	.loc 2 251 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 252 14
	movl	$0, %eax
	jmp	.L32
.L31:
	.loc 2 255 37
	movq	G_buffer(%rip), %rdx
	.loc 2 255 26
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	.loc 2 255 15
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	.loc 2 257 7
	movq	sentinel_length(%rip), %rax
	.loc 2 257 6
	testq	%rax, %rax
	je	.L58
	.loc 2 258 17
	movq	-112(%rbp), %rax
	negq	%rax
	addq	%rax, -144(%rbp)
.L58:
	.loc 2 268 27
	movq	sentinel_length(%rip), %rax
	.loc 2 268 10
	testq	%rax, %rax
	jne	.L41
.LBB5:
	.loc 2 270 34
	movq	G_buffer(%rip), %rax
	movq	-144(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 270 18
	movq	%rax, -80(%rbp)
	.loc 2 271 20
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 2 272 20
	movl	$1, %eax
	subq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 2 275 14
	cmpq	$1, -64(%rbp)
	jle	.L35
.LBB6:
	.loc 2 276 13
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L35:
.LBE6:
	.loc 2 278 14
	cmpq	$1, -64(%rbp)
	je	.L36
	.loc 2 280 42
	movq	-80(%rbp), %rax
	subq	$1, %rax
	.loc 2 279 26
	movq	%rax, %rsi
	movq	-80(%rbp), %rdx
	movq	G_buffer(%rip), %rax
	movq	-64(%rbp), %rcx
	leaq	regs(%rip), %r9
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movq	%rax, %rsi
	leaq	compiled_separator(%rip), %rdi
	call	rpl_re_search@PLT
	movq	%rax, -56(%rbp)
	.loc 2 279 15
	cmpq	$-1, -56(%rbp)
	jne	.L37
.L36:
	.loc 2 282 36
	movq	G_buffer(%rip), %rax
	.loc 2 282 25
	subq	$1, %rax
	movq	%rax, -144(%rbp)
	jmp	.L40
.L37:
	.loc 2 283 19
	cmpq	$-2, -56(%rbp)
	jne	.L39
.LBB7:
	.loc 2 285 15
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L39:
.LBE7:
	.loc 2 290 38
	movq	G_buffer(%rip), %rdx
	.loc 2 290 44
	movq	8+regs(%rip), %rax
	.loc 2 290 50
	movq	(%rax), %rax
	.loc 2 290 27
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	.loc 2 291 34
	movq	16+regs(%rip), %rax
	.loc 2 291 38
	movq	(%rax), %rdx
	.loc 2 291 48
	movq	8+regs(%rip), %rax
	.loc 2 291 54
	movq	(%rax), %rax
	.loc 2 291 42
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 291 28
	movq	%rax, match_length(%rip)
	jmp	.L40
.L41:
.LBE5:
	.loc 2 297 17 discriminator 1
	subq	$1, -144(%rbp)
	.loc 2 297 18 discriminator 1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 297 17 discriminator 1
	cmpb	%al, -145(%rbp)
	jne	.L41
	.loc 2 298 18
	cmpq	$0, -112(%rbp)
	je	.L40
	.loc 2 298 40 discriminator 1
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp@PLT
	.loc 2 298 36 discriminator 1
	testl	%eax, %eax
	jne	.L41
.L40:
	.loc 2 305 23
	movq	G_buffer(%rip), %rax
	.loc 2 305 10
	cmpq	%rax, -144(%rbp)
	jnb	.L42
	.loc 2 307 14
	cmpq	$0, -184(%rbp)
	jne	.L43
	.loc 2 310 15
	movq	G_buffer(%rip), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	output
	.loc 2 311 22
	movl	$1, %eax
	jmp	.L32
.L43:
	.loc 2 314 40
	movq	G_buffer(%rip), %rax
	movq	-136(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 314 29
	movq	%rax, -128(%rbp)
	.loc 2 315 33
	movq	read_size(%rip), %rax
	.loc 2 315 14
	cmpq	%rax, -128(%rbp)
	jbe	.L44
.LBB8:
	.loc 2 322 47
	movq	sentinel_length(%rip), %rax
	.loc 2 322 65
	testq	%rax, %rax
	je	.L45
	.loc 2 322 65 is_stmt 0 discriminator 1
	movq	sentinel_length(%rip), %rax
	jmp	.L46
.L45:
	.loc 2 322 65 discriminator 2
	movl	$1, %eax
.L46:
	.loc 2 322 22 is_stmt 1 discriminator 4
	movq	%rax, -40(%rbp)
	.loc 2 323 22 discriminator 4
	movq	G_buffer_size(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 325 25 discriminator 4
	movq	read_size(%rip), %rax
	addq	%rax, %rax
	movq	%rax, read_size(%rip)
	.loc 2 326 41 discriminator 4
	movq	read_size(%rip), %rax
	leaq	(%rax,%rax), %rdx
	.loc 2 326 45 discriminator 4
	movq	sentinel_length(%rip), %rax
	addq	%rdx, %rax
	.loc 2 326 63 discriminator 4
	addq	$2, %rax
	.loc 2 326 29 discriminator 4
	movq	%rax, G_buffer_size(%rip)
	.loc 2 327 33 discriminator 4
	movq	G_buffer_size(%rip), %rax
	.loc 2 327 18 discriminator 4
	cmpq	%rax, -32(%rbp)
	jbe	.L47
	.loc 2 328 17
	call	xalloc_die@PLT
.L47:
	.loc 2 329 27
	movq	G_buffer_size(%rip), %rax
	movq	G_buffer(%rip), %rdx
	.loc 2 329 46
	movq	-40(%rbp), %rcx
	negq	%rcx
	addq	%rcx, %rdx
	.loc 2 329 27
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xrealloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 330 25
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	.loc 2 331 24
	movq	-24(%rbp), %rax
	movq	%rax, G_buffer(%rip)
.L44:
.LBE8:
	.loc 2 335 24
	movq	-184(%rbp), %rdx
	movq	read_size(%rip), %rax
	.loc 2 335 14
	cmpq	%rax, %rdx
	jb	.L48
	.loc 2 336 22
	movq	-184(%rbp), %rdx
	movq	read_size(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -184(%rbp)
	jmp	.L49
.L48:
	.loc 2 339 25
	movq	-184(%rbp), %rax
	movq	%rax, read_size(%rip)
	.loc 2 340 24
	movq	$0, -184(%rbp)
.L49:
	.loc 2 342 15
	movq	-184(%rbp), %rcx
	movl	-164(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 2 342 14
	testq	%rax, %rax
	jns	.L50
	.loc 2 343 13
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 343 30
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 343 23
	call	__errno_location@PLT
	.loc 2 343 13
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L50:
	.loc 2 347 11
	movq	G_buffer(%rip), %rax
	movq	G_buffer(%rip), %rcx
	movq	read_size(%rip), %rdx
	.loc 2 347 29
	addq	%rdx, %rcx
	.loc 2 347 11
	movq	-128(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	.loc 2 348 43
	movq	G_buffer(%rip), %rax
	movq	read_size(%rip), %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 348 20
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	.loc 2 350 15
	movq	sentinel_length(%rip), %rax
	.loc 2 350 14
	testq	%rax, %rax
	je	.L51
	.loc 2 351 36
	movq	G_buffer(%rip), %rdx
	movq	read_size(%rip), %rax
	.loc 2 351 25
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	jmp	.L52
.L51:
	.loc 2 353 25
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
.L52:
	.loc 2 355 15
	movq	read_size(%rip), %rdx
	movq	G_buffer(%rip), %rcx
	movl	-164(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	.loc 2 355 57
	movq	read_size(%rip), %rdx
	.loc 2 355 14
	cmpq	%rdx, %rax
	je	.L58
	.loc 2 357 15
	movq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 357 32
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 357 25
	call	__errno_location@PLT
	.loc 2 357 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 358 22
	movl	$0, %eax
	jmp	.L32
.L42:
	.loc 2 364 15
	movzbl	separator_ends_record(%rip), %eax
	.loc 2 364 14
	testb	%al, %al
	je	.L54
.LBB9:
	.loc 2 366 45
	movq	match_length(%rip), %rdx
	.loc 2 366 21
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 370 19
	movzbl	-146(%rbp), %eax
	xorl	$1, %eax
	.loc 2 370 18
	testb	%al, %al
	jne	.L55
	.loc 2 370 31 discriminator 1
	movq	-48(%rbp), %rax
	cmpq	-136(%rbp), %rax
	je	.L56
.L55:
	.loc 2 371 17
	movq	-136(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	output
.L56:
	.loc 2 372 24
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	.loc 2 373 26
	movb	$0, -146(%rbp)
.LBE9:
	jmp	.L57
.L54:
	.loc 2 377 15
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	output
	.loc 2 378 24
	movq	-144(%rbp), %rax
	movq	%rax, -136(%rbp)
.L57:
	.loc 2 382 31
	movq	sentinel_length(%rip), %rax
	.loc 2 382 14
	testq	%rax, %rax
	je	.L58
	.loc 2 383 25
	movq	match_length(%rip), %rax
	movl	$1, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, -144(%rbp)
	.loc 2 268 10
	jmp	.L58
.L32:
	.loc 2 386 1
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	tac_seekable, .-tac_seekable
	.type	record_or_unlink_tempfile, @function
record_or_unlink_tempfile:
.LFB53:
	.loc 2 421 1
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
	.loc 2 422 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	.loc 2 423 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	record_or_unlink_tempfile, .-record_or_unlink_tempfile
	.section	.rodata
.LC36:
	.string	"TMPDIR"
.LC37:
	.string	"/tmp"
.LC38:
	.string	"tacXXXXXX"
.LC39:
	.string	"memory exhausted"
	.align 8
.LC40:
	.string	"failed to create temporary file in %s"
.LC41:
	.string	"w+"
.LC42:
	.string	"failed to open %s for writing"
	.align 8
.LC43:
	.string	"failed to rewind stream for %s"
	.text
	.type	temp_stream, @function
temp_stream:
.LFB54:
	.loc 2 432 1
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
	movq	%rsi, -64(%rbp)
	.loc 2 435 16
	movq	tempfile.6427(%rip), %rax
	.loc 2 435 6
	testq	%rax, %rax
	jne	.L63
.LBB10:
	.loc 2 437 23
	leaq	.LC36(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -32(%rbp)
	.loc 2 438 35
	cmpq	$0, -32(%rbp)
	je	.L64
	.loc 2 438 35 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	jmp	.L65
.L64:
	.loc 2 438 35 discriminator 2
	leaq	.LC37(%rip), %rax
.L65:
	.loc 2 438 19 is_stmt 1 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 2 439 18 discriminator 4
	movq	-24(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	mfile_name_concat@PLT
	.loc 2 439 16 discriminator 4
	movq	%rax, tempfile.6427(%rip)
	.loc 2 440 10 discriminator 4
	cmpq	$0, -24(%rbp)
	jne	.L66
	.loc 2 442 24
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	.loc 2 442 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 443 18
	movl	$0, %eax
	jmp	.L67
.L66:
	.loc 2 455 16
	movq	tempfile.6427(%rip), %rax
	movq	%rax, %rdi
	call	mkstemp_safer@PLT
	movl	%eax, -36(%rbp)
	.loc 2 456 10
	cmpl	$0, -36(%rbp)
	jns	.L68
	.loc 2 458 11
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 458 28
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 458 21
	call	__errno_location@PLT
	.loc 2 458 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 460 11
	jmp	.L69
.L68:
	.loc 2 463 16
	movl	-36(%rbp), %eax
	leaq	.LC41(%rip), %rsi
	movl	%eax, %edi
	call	fdopen@PLT
	.loc 2 463 14
	movq	%rax, tmp_fp.6428(%rip)
	.loc 2 464 11
	movq	tmp_fp.6428(%rip), %rax
	.loc 2 464 10
	testq	%rax, %rax
	jne	.L70
	.loc 2 466 11
	movq	tempfile.6427(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 466 28
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 466 21
	call	__errno_location@PLT
	.loc 2 466 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 468 11
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 469 11
	movq	tempfile.6427(%rip), %rax
	movq	%rax, %rdi
	call	unlink@PLT
.L69:
	.loc 2 471 11
	movq	tempfile.6427(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 472 20
	movq	$0, tempfile.6427(%rip)
	.loc 2 473 18
	movl	$0, %eax
	jmp	.L67
.L70:
	.loc 2 476 7
	movq	tmp_fp.6428(%rip), %rdx
	movq	tempfile.6427(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	record_or_unlink_tempfile
.LBE10:
	jmp	.L71
.L63:
	.loc 2 480 7
	movq	tmp_fp.6428(%rip), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	.loc 2 481 11
	movq	tmp_fp.6428(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	rpl_fseeko@PLT
	.loc 2 481 10
	testl	%eax, %eax
	js	.L72
	.loc 2 482 14
	movq	tmp_fp.6428(%rip), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	$0, %esi
	movl	%eax, %edi
	call	ftruncate@PLT
	.loc 2 482 11
	testl	%eax, %eax
	jns	.L71
.L72:
	.loc 2 484 11
	movq	tempfile.6427(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 484 28
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 484 21
	call	__errno_location@PLT
	.loc 2 484 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 486 18
	movl	$0, %eax
	jmp	.L67
.L71:
	.loc 2 490 7
	movq	tmp_fp.6428(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 491 14
	movq	tempfile.6427(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 492 10
	movl	$1, %eax
.L67:
	.loc 2 493 1
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	temp_stream, .-temp_stream
	.section	.rodata
.LC44:
	.string	"%s: write error"
	.text
	.type	copy_to_temp, @function
copy_to_temp:
.LFB55:
	.loc 2 501 1
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
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	.loc 2 501 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 504 13
	movq	$0, -40(%rbp)
	.loc 2 505 8
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	temp_stream
	.loc 2 505 7
	xorl	$1, %eax
	.loc 2 505 6
	testb	%al, %al
	je	.L74
	.loc 2 506 12
	movq	$-1, %rax
	jmp	.L81
.L74:
.LBB11:
	.loc 2 510 27
	movq	read_size(%rip), %rdx
	movq	G_buffer(%rip), %rcx
	movl	-84(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -32(%rbp)
	.loc 2 511 10
	cmpq	$0, -32(%rbp)
	je	.L84
	.loc 2 513 10
	cmpq	$-1, -32(%rbp)
	jne	.L78
	.loc 2 515 11
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 515 28
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 515 21
	call	__errno_location@PLT
	.loc 2 515 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 516 18
	movq	$-1, %rax
	jmp	.L81
.L78:
	.loc 2 519 11
	movq	-56(%rbp), %rcx
	movq	G_buffer(%rip), %rax
	movq	-32(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 519 10
	cmpq	%rax, -32(%rbp)
	je	.L79
	.loc 2 521 11
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 521 28
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 521 21
	call	__errno_location@PLT
	.loc 2 521 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 522 18
	movq	$-1, %rax
	jmp	.L81
.L79:
	.loc 2 528 20
	movq	-32(%rbp), %rax
	addq	%rax, -40(%rbp)
.LBE11:
	.loc 2 509 5
	jmp	.L74
.L84:
.LBB12:
	.loc 2 512 9
	nop
.LBE12:
	.loc 2 531 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fflush_unlocked@PLT
	.loc 2 531 6
	testl	%eax, %eax
	je	.L80
	.loc 2 533 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 533 24
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 533 17
	call	__errno_location@PLT
	.loc 2 533 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 534 14
	movq	$-1, %rax
	jmp	.L81
.L80:
	.loc 2 537 10
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 538 15
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 539 10
	movq	-40(%rbp), %rax
.L81:
	.loc 2 540 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L82
	.loc 2 540 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L82:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	copy_to_temp, .-copy_to_temp
	.type	tac_nonseekable, @function
tac_nonseekable:
.LFB56:
	.loc 2 547 1 is_stmt 1
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
	.loc 2 547 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 550 24
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %edx
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	copy_to_temp
	movq	%rax, -32(%rbp)
	.loc 2 551 6
	cmpq	$0, -32(%rbp)
	jns	.L86
	.loc 2 552 12
	movl	$0, %eax
	jmp	.L88
.L86:
	.loc 2 554 13
	movq	-40(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movl	%ecx, %edi
	call	tac_seekable
	movb	%al, -49(%rbp)
	.loc 2 555 10
	movzbl	-49(%rbp), %eax
.L88:
	.loc 2 556 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L89
	.loc 2 556 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L89:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	tac_nonseekable, .-tac_nonseekable
	.section	.rodata
.LC45:
	.string	"-"
.LC46:
	.string	"standard input"
.LC47:
	.string	"failed to open %s for reading"
	.text
	.type	tac_file, @function
tac_file:
.LFB57:
	.loc 2 564 1 is_stmt 1
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
	.loc 2 568 19
	movq	-40(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 568 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -29(%rbp)
	.loc 2 570 6
	cmpb	$0, -29(%rbp)
	je	.L91
	.loc 2 572 23
	movb	$1, have_read_stdin(%rip)
	.loc 2 573 10
	movl	$0, -28(%rbp)
	.loc 2 574 18
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, -40(%rbp)
	.loc 2 575 7
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	jmp	.L92
.L91:
	.loc 2 579 12
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -28(%rbp)
	.loc 2 580 10
	cmpl	$0, -28(%rbp)
	jns	.L92
	.loc 2 582 11
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 582 28
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 582 21
	call	__errno_location@PLT
	.loc 2 582 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 584 18
	movl	$0, %eax
	jmp	.L93
.L92:
	.loc 2 588 15
	movl	-28(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -24(%rbp)
	.loc 2 592 9
	cmpq	$0, -24(%rbp)
	js	.L94
	.loc 2 590 26
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	isatty@PLT
	.loc 2 590 23
	testl	%eax, %eax
	je	.L95
.L94:
	.loc 2 591 11 discriminator 1
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	tac_nonseekable
	movzbl	%al, %eax
	.loc 2 592 9 discriminator 1
	testl	%eax, %eax
	setne	%al
	jmp	.L96
.L95:
	.loc 2 592 11
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	tac_seekable
	movzbl	%al, %eax
	.loc 2 592 9
	testl	%eax, %eax
	setne	%al
.L96:
	.loc 2 590 6
	movb	%al, -30(%rbp)
	.loc 2 594 7
	movzbl	-29(%rbp), %eax
	xorl	$1, %eax
	.loc 2 594 6
	testb	%al, %al
	je	.L97
	.loc 2 594 20 discriminator 1
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 594 17 discriminator 1
	testl	%eax, %eax
	je	.L97
	.loc 2 596 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 596 24
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 596 17
	call	__errno_location@PLT
	.loc 2 596 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 597 10
	movb	$0, -30(%rbp)
.L97:
	.loc 2 599 10
	movzbl	-30(%rbp), %eax
.L93:
	.loc 2 600 1
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	tac_file, .-tac_file
	.section	.rodata
.LC48:
	.string	"/usr/local/share/locale"
.LC49:
	.string	"\n"
.LC50:
	.string	"David MacKenzie"
.LC51:
	.string	"Jay Lepreau"
.LC52:
	.string	"brs:"
.LC53:
	.string	"separator cannot be empty"
.LC54:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB58:
	.loc 2 604 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 616 3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 617 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 618 3
	leaq	.LC48(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 619 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 621 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 623 13
	leaq	.LC49(%rip), %rax
	movq	%rax, separator(%rip)
	.loc 2 624 19
	movq	$1, sentinel_length(%rip)
	.loc 2 625 25
	movb	$1, separator_ends_record(%rip)
	.loc 2 627 9
	jmp	.L99
.L106:
	.loc 2 629 7
	cmpl	$115, -44(%rbp)
	je	.L100
	cmpl	$115, -44(%rbp)
	jg	.L101
	cmpl	$114, -44(%rbp)
	je	.L102
	cmpl	$114, -44(%rbp)
	jg	.L101
	cmpl	$98, -44(%rbp)
	je	.L103
	cmpl	$98, -44(%rbp)
	jg	.L101
	cmpl	$-131, -44(%rbp)
	je	.L104
	cmpl	$-130, -44(%rbp)
	je	.L105
	jmp	.L101
.L103:
	.loc 2 632 33
	movb	$0, separator_ends_record(%rip)
	.loc 2 633 11
	jmp	.L99
.L102:
	.loc 2 635 27
	movq	$0, sentinel_length(%rip)
	.loc 2 636 11
	jmp	.L99
.L100:
	.loc 2 638 21
	movq	optarg(%rip), %rax
	movq	%rax, separator(%rip)
	.loc 2 639 11
	jmp	.L99
.L105:
	.loc 2 640 9
	movl	$0, %edi
	call	usage
.L104:
	.loc 2 641 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC50(%rip), %r9
	leaq	.LC51(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L101:
	.loc 2 643 11
	movl	$1, %edi
	call	usage
.L99:
	.loc 2 627 18
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -44(%rbp)
	.loc 2 627 9
	cmpl	$-1, -44(%rbp)
	jne	.L106
	.loc 2 647 23
	movq	sentinel_length(%rip), %rax
	.loc 2 647 6
	testq	%rax, %rax
	jne	.L107
	.loc 2 649 11
	movq	separator(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 649 10
	testb	%al, %al
	jne	.L108
.LBB13:
	.loc 2 650 9
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L108:
.LBE13:
	.loc 2 652 33
	movq	$0, compiled_separator(%rip)
	.loc 2 653 36
	movq	$0, 8+compiled_separator(%rip)
	.loc 2 654 34
	leaq	compiled_separator_fastmap(%rip), %rax
	movq	%rax, 32+compiled_separator(%rip)
	.loc 2 655 36
	movq	$0, 40+compiled_separator(%rip)
	.loc 2 656 23
	movq	separator(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	separator(%rip), %rax
	leaq	compiled_separator(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_re_compile_pattern@PLT
	movq	%rax, -32(%rbp)
	.loc 2 658 10
	cmpq	$0, -32(%rbp)
	je	.L109
.LBB14:
	.loc 2 659 9
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC54(%rip), %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L107:
.LBE14:
	.loc 2 662 38
	movq	separator(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 662 70
	testb	%al, %al
	je	.L110
	.loc 2 662 51 discriminator 1
	movq	separator(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L111
.L110:
	.loc 2 662 70 discriminator 2
	movl	$1, %eax
.L111:
	.loc 2 662 36 discriminator 4
	movq	%rax, sentinel_length(%rip)
	.loc 2 662 18 discriminator 4
	movq	sentinel_length(%rip), %rax
	movq	%rax, match_length(%rip)
.L109:
	.loc 2 664 13
	movq	$8192, read_size(%rip)
	.loc 2 665 9
	jmp	.L112
.L114:
	.loc 2 667 24
	movq	read_size(%rip), %rax
	.loc 2 667 10
	testq	%rax, %rax
	jns	.L113
	.loc 2 668 9
	call	xalloc_die@PLT
.L113:
	.loc 2 669 17
	movq	read_size(%rip), %rax
	addq	%rax, %rax
	movq	%rax, read_size(%rip)
.L112:
	.loc 2 665 39
	movq	read_size(%rip), %rax
	shrq	%rax
	movq	%rax, %rdx
	.loc 2 665 26
	movq	sentinel_length(%rip), %rax
	.loc 2 665 9
	cmpq	%rax, %rdx
	jbe	.L114
	.loc 2 671 32
	movq	read_size(%rip), %rdx
	movq	sentinel_length(%rip), %rax
	addq	%rdx, %rax
	.loc 2 671 20
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	.loc 2 672 21
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	.loc 2 672 17
	movq	%rax, G_buffer_size(%rip)
	.loc 2 673 20
	movq	read_size(%rip), %rax
	.loc 2 673 6
	cmpq	%rax, -24(%rbp)
	jbe	.L115
	.loc 2 673 59 discriminator 1
	movq	G_buffer_size(%rip), %rax
	.loc 2 673 7 discriminator 1
	cmpq	%rax, -24(%rbp)
	jb	.L116
.L115:
	.loc 2 674 5
	call	xalloc_die@PLT
.L116:
	.loc 2 675 14
	movq	G_buffer_size(%rip), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 675 12
	movq	%rax, G_buffer(%rip)
	.loc 2 676 7
	movq	sentinel_length(%rip), %rax
	.loc 2 676 6
	testq	%rax, %rax
	je	.L117
	.loc 2 678 7
	movq	sentinel_length(%rip), %rax
	leaq	1(%rax), %rdx
	movq	separator(%rip), %rcx
	movq	G_buffer(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 679 16
	movq	G_buffer(%rip), %rdx
	movq	sentinel_length(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, G_buffer(%rip)
	jmp	.L118
.L117:
	.loc 2 683 7
	movq	G_buffer(%rip), %rax
	addq	$1, %rax
	movq	%rax, G_buffer(%rip)
.L118:
	.loc 2 686 18
	movl	optind(%rip), %eax
	.loc 2 688 11
	cmpl	%eax, -52(%rbp)
	jle	.L119
	.loc 2 687 40 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 688 11 discriminator 1
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L120
.L119:
	.loc 2 688 11 is_stmt 0 discriminator 2
	leaq	default_file_list.6468(%rip), %rax
.L120:
	.loc 2 686 8 is_stmt 1
	movq	%rax, -16(%rbp)
	.loc 2 690 3
	movl	$0, %esi
	movl	$1, %edi
	call	xset_binary_mode@PLT
	.loc 2 693 8
	movb	$1, -45(%rbp)
.LBB15:
	.loc 2 694 17
	movq	$0, -40(%rbp)
	.loc 2 694 5
	jmp	.L121
.L122:
	.loc 2 695 27 discriminator 3
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 695 13 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	tac_file
	.loc 2 695 10 discriminator 3
	movzbl	-45(%rbp), %edx
	.loc 2 695 13 discriminator 3
	movzbl	%al, %eax
	.loc 2 695 10 discriminator 3
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -45(%rbp)
	.loc 2 694 33 discriminator 3
	addq	$1, -40(%rbp)
.L121:
	.loc 2 694 28 discriminator 1
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 694 5 discriminator 1
	testq	%rax, %rax
	jne	.L122
.LBE15:
	.loc 2 699 3
	movl	$0, %esi
	movl	$0, %edi
	call	output
	.loc 2 701 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 701 6
	testb	%al, %al
	je	.L123
	.loc 2 701 26 discriminator 1
	movl	$0, %edi
	call	close@PLT
	.loc 2 701 23 discriminator 1
	testl	%eax, %eax
	jns	.L123
	.loc 2 703 17
	call	__errno_location@PLT
	.loc 2 703 7
	movl	(%rax), %eax
	leaq	.LC45(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 704 10
	movb	$0, -45(%rbp)
.L123:
	.loc 2 708 35
	movq	sentinel_length(%rip), %rax
	.loc 2 708 53
	testq	%rax, %rax
	je	.L124
	.loc 2 708 53 is_stmt 0 discriminator 1
	movq	sentinel_length(%rip), %rax
	jmp	.L125
.L124:
	.loc 2 708 53 discriminator 2
	movl	$1, %eax
.L125:
	.loc 2 708 10 is_stmt 1 discriminator 4
	movq	%rax, -8(%rbp)
	.loc 2 709 3 discriminator 4
	movq	G_buffer(%rip), %rax
	.loc 2 709 18 discriminator 4
	movq	-8(%rbp), %rdx
	negq	%rdx
	addq	%rdx, %rax
	.loc 2 709 3 discriminator 4
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 712 28 discriminator 4
	movzbl	-45(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 713 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	main, .-main
	.local	bytes_in_buffer.6376
	.comm	bytes_in_buffer.6376,8,8
	.local	buffer.6375
	.comm	buffer.6375,8192,32
	.local	tempfile.6427
	.comm	tempfile.6427,8,8
	.local	tmp_fp.6428
	.comm	tmp_fp.6428,8,8
	.section	.data.rel.ro.local
	.align 16
	.type	default_file_list.6468, @object
	.size	default_file_list.6468, 16
default_file_list.6468:
	.quad	.LC45
	.quad	0
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 13 "/usr/include/time.h"
	.file 14 "/usr/include/signal.h"
	.file 15 "/usr/include/unistd.h"
	.file 16 "/usr/include/errno.h"
	.file 17 "src/version.h"
	.file 18 "./lib/exitfail.h"
	.file 19 "/usr/include/stdint.h"
	.file 20 "./lib/timespec.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/regex.h"
	.file 25 "./lib/error.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1014
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF203
	.byte	0xc
	.long	.LASF204
	.long	.LASF205
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
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0xc1
	.byte	0x1b
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x8
	.long	0xba
	.uleb128 0x9
	.long	.LASF65
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x24d
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xb4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xb4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xb4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xb4
	.byte	0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xb4
	.byte	0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xb4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x266
	.byte	0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x26c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x272
	.byte	0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x282
	.byte	0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x28d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x298
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x26c
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x29e
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xc6
	.uleb128 0xb
	.long	.LASF206
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x261
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0xd
	.long	0xba
	.long	0x282
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x259
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x288
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x293
	.uleb128 0xd
	.long	0xba
	.long	0x2ae
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xc1
	.uleb128 0x8
	.long	0x2ae
	.uleb128 0x2
	.long	.LASF47
	.byte	0x7
	.byte	0x3f
	.byte	0x11
	.long	0x84
	.uleb128 0x2
	.long	.LASF48
	.byte	0x7
	.byte	0x4d
	.byte	0x13
	.long	0xa8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2dd
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2dd
	.uleb128 0xf
	.long	.LASF51
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2dd
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2b4
	.long	0x312
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x307
	.uleb128 0xf
	.long	.LASF53
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x312
	.uleb128 0xf
	.long	.LASF54
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF55
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x312
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF56
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF57
	.uleb128 0x2
	.long	.LASF58
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0x9c
	.uleb128 0x11
	.long	.LASF59
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF60
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF62
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF63
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF64
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF66
	.byte	0x20
	.byte	0xc
	.byte	0x32
	.byte	0x8
	.long	0x3db
	.uleb128 0xa
	.long	.LASF67
	.byte	0xc
	.byte	0x34
	.byte	0xf
	.long	0x2ae
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF69
	.byte	0xc
	.byte	0x38
	.byte	0x8
	.long	0x3e0
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xc
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x399
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0xb4
	.long	0x3f6
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3e6
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF73
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3e6
	.uleb128 0xf
	.long	.LASF74
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF75
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF76
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x44b
	.uleb128 0xd
	.long	0x2b4
	.long	0x462
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x452
	.uleb128 0x11
	.long	.LASF77
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x462
	.uleb128 0x11
	.long	.LASF78
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x462
	.uleb128 0x11
	.long	.LASF79
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x48e
	.uleb128 0x7
	.byte	0x8
	.long	0xb4
	.uleb128 0x11
	.long	.LASF80
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x48e
	.uleb128 0xf
	.long	.LASF81
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF82
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF83
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2ae
	.uleb128 0xf
	.long	.LASF84
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0xd
	.long	0xba
	.long	0x4e1
	.uleb128 0xe
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x13
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x29
	.byte	0x6
	.long	0x505
	.uleb128 0x15
	.long	.LASF86
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x51a
	.uleb128 0x16
	.long	.LASF87
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x538
	.uleb128 0x18
	.long	.LASF88
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF89
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xc1
	.long	0x543
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x538
	.uleb128 0xf
	.long	.LASF90
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x543
	.uleb128 0xf
	.long	.LASF91
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x2ae
	.uleb128 0x19
	.long	.LASF207
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x5b5
	.uleb128 0x16
	.long	.LASF92
	.byte	0
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.uleb128 0x16
	.long	.LASF94
	.byte	0x2
	.uleb128 0x16
	.long	.LASF95
	.byte	0x3
	.uleb128 0x16
	.long	.LASF96
	.byte	0x4
	.uleb128 0x16
	.long	.LASF97
	.byte	0x5
	.uleb128 0x16
	.long	.LASF98
	.byte	0x6
	.uleb128 0x16
	.long	.LASF99
	.byte	0x7
	.uleb128 0x16
	.long	.LASF100
	.byte	0x8
	.uleb128 0x16
	.long	.LASF101
	.byte	0x9
	.uleb128 0x16
	.long	.LASF102
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x560
	.uleb128 0x11
	.long	.LASF103
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x312
	.uleb128 0xd
	.long	0x5b5
	.long	0x5d2
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5c7
	.uleb128 0x11
	.long	.LASF104
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x5d2
	.uleb128 0x2
	.long	.LASF105
	.byte	0x18
	.byte	0x2d
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.long	.LASF106
	.byte	0x18
	.byte	0x31
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.long	.LASF107
	.byte	0x18
	.byte	0x48
	.byte	0x1b
	.long	0x39
	.uleb128 0xf
	.long	.LASF108
	.byte	0x18
	.byte	0xd3
	.byte	0x15
	.long	0x5fc
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x40
	.byte	0x18
	.value	0x19d
	.byte	0x8
	.long	0x6fc
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x18
	.value	0x1a1
	.byte	0x14
	.long	0x701
	.byte	0
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x18
	.value	0x1a4
	.byte	0x14
	.long	0x5f0
	.byte	0x8
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x18
	.value	0x1a7
	.byte	0x14
	.long	0x5f0
	.byte	0x10
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x18
	.value	0x1aa
	.byte	0x10
	.long	0x5fc
	.byte	0x18
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x18
	.value	0x1af
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x18
	.value	0x1b5
	.byte	0x17
	.long	0x707
	.byte	0x28
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x18
	.value	0x1b8
	.byte	0xa
	.long	0x2d
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x18
	.value	0x1be
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x18
	.value	0x1c9
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x18
	.value	0x1cd
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x18
	.value	0x1d1
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x18
	.value	0x1d5
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x18
	.value	0x1d8
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x18
	.value	0x1db
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.long	.LASF124
	.uleb128 0x7
	.byte	0x8
	.long	0x6fc
	.uleb128 0x7
	.byte	0x8
	.long	0x49
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x18
	.value	0x1e6
	.byte	0x11
	.long	0x2c5
	.uleb128 0x1a
	.long	.LASF126
	.byte	0x18
	.byte	0x18
	.value	0x1f1
	.byte	0x8
	.long	0x753
	.uleb128 0x1b
	.long	.LASF127
	.byte	0x18
	.value	0x1f3
	.byte	0xf
	.long	0x5e4
	.byte	0
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x18
	.value	0x1f4
	.byte	0xd
	.long	0x753
	.byte	0x8
	.uleb128 0x1e
	.string	"end"
	.byte	0x18
	.value	0x1f5
	.byte	0xd
	.long	0x753
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x70d
	.uleb128 0xf
	.long	.LASF129
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x44c
	.uleb128 0xf
	.long	.LASF130
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF131
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x1f
	.long	.LASF132
	.byte	0x2
	.byte	0x50
	.byte	0x14
	.long	0x2ae
	.uleb128 0x9
	.byte	0x3
	.quad	separator
	.uleb128 0x1f
	.long	.LASF133
	.byte	0x2
	.byte	0x53
	.byte	0xd
	.long	0x7a9
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF134
	.uleb128 0x1f
	.long	.LASF135
	.byte	0x2
	.byte	0x57
	.byte	0xd
	.long	0x7a9
	.uleb128 0x9
	.byte	0x3
	.quad	separator_ends_record
	.uleb128 0x1f
	.long	.LASF136
	.byte	0x2
	.byte	0x5c
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	sentinel_length
	.uleb128 0x1f
	.long	.LASF137
	.byte	0x2
	.byte	0x61
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	match_length
	.uleb128 0x1f
	.long	.LASF138
	.byte	0x2
	.byte	0x64
	.byte	0xe
	.long	0xb4
	.uleb128 0x9
	.byte	0x3
	.quad	G_buffer
	.uleb128 0x1f
	.long	.LASF139
	.byte	0x2
	.byte	0x67
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	read_size
	.uleb128 0x1f
	.long	.LASF140
	.byte	0x2
	.byte	0x6c
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	G_buffer_size
	.uleb128 0x1f
	.long	.LASF141
	.byte	0x2
	.byte	0x6f
	.byte	0x21
	.long	0x614
	.uleb128 0x9
	.byte	0x3
	.quad	compiled_separator
	.uleb128 0x1f
	.long	.LASF142
	.byte	0x2
	.byte	0x70
	.byte	0xd
	.long	0x4d1
	.uleb128 0x9
	.byte	0x3
	.quad	compiled_separator_fastmap
	.uleb128 0x1f
	.long	.LASF143
	.byte	0x2
	.byte	0x71
	.byte	0x1c
	.long	0x71a
	.uleb128 0x9
	.byte	0x3
	.quad	regs
	.uleb128 0xd
	.long	0x3db
	.long	0x886
	.uleb128 0xe
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x876
	.uleb128 0x1f
	.long	.LASF144
	.byte	0x2
	.byte	0x73
	.byte	0x1c
	.long	0x886
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x20
	.long	.LASF192
	.byte	0x2
	.value	0x25b
	.byte	0x1
	.long	0x65
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x99f
	.uleb128 0x21
	.long	.LASF145
	.byte	0x2
	.value	0x25b
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.long	.LASF146
	.byte	0x2
	.value	0x25b
	.byte	0x18
	.long	0x48e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF147
	.byte	0x2
	.value	0x25d
	.byte	0xf
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF148
	.byte	0x2
	.value	0x25e
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"ok"
	.byte	0x2
	.value	0x25f
	.byte	0x8
	.long	0x7a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x22
	.long	.LASF149
	.byte	0x2
	.value	0x260
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF150
	.byte	0x2
	.value	0x264
	.byte	0x1c
	.long	0x9af
	.uleb128 0x9
	.byte	0x3
	.quad	default_file_list.6468
	.uleb128 0x22
	.long	.LASF151
	.byte	0x2
	.value	0x265
	.byte	0x16
	.long	0x9b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF152
	.byte	0x2
	.value	0x2c4
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x24
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x2b6
	.byte	0x11
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x2b4
	.long	0x9af
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	0x99f
	.uleb128 0x7
	.byte	0x8
	.long	0x2b4
	.uleb128 0x26
	.long	.LASF156
	.byte	0x2
	.value	0x233
	.byte	0x1
	.long	0x7a9
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2c
	.uleb128 0x21
	.long	.LASF153
	.byte	0x2
	.value	0x233
	.byte	0x17
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"ok"
	.byte	0x2
	.value	0x235
	.byte	0x8
	.long	0x7a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x22
	.long	.LASF154
	.byte	0x2
	.value	0x236
	.byte	0x9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"fd"
	.byte	0x2
	.value	0x237
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF155
	.byte	0x2
	.value	0x238
	.byte	0x8
	.long	0x7a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.byte	0
	.uleb128 0x26
	.long	.LASF157
	.byte	0x2
	.value	0x222
	.byte	0x1
	.long	0x7a9
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xab2
	.uleb128 0x21
	.long	.LASF158
	.byte	0x2
	.value	0x222
	.byte	0x16
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.long	.LASF151
	.byte	0x2
	.value	0x222
	.byte	0x2c
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF159
	.byte	0x2
	.value	0x224
	.byte	0x9
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF160
	.byte	0x2
	.value	0x225
	.byte	0x9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF161
	.byte	0x2
	.value	0x226
	.byte	0x9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"ok"
	.byte	0x2
	.value	0x22a
	.byte	0x8
	.long	0x7a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.byte	0
	.uleb128 0x26
	.long	.LASF162
	.byte	0x2
	.value	0x1f4
	.byte	0x1
	.long	0x2b9
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xb60
	.uleb128 0x21
	.long	.LASF163
	.byte	0x2
	.value	0x1f4
	.byte	0x16
	.long	0xb60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.long	.LASF164
	.byte	0x2
	.value	0x1f4
	.byte	0x24
	.long	0x48e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF158
	.byte	0x2
	.value	0x1f4
	.byte	0x34
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x21
	.long	.LASF151
	.byte	0x2
	.value	0x1f4
	.byte	0x4a
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.string	"fp"
	.byte	0x2
	.value	0x1f6
	.byte	0x9
	.long	0x2dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF165
	.byte	0x2
	.value	0x1f7
	.byte	0x9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF161
	.byte	0x2
	.value	0x1f8
	.byte	0xd
	.long	0x4e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x22
	.long	.LASF166
	.byte	0x2
	.value	0x1fe
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2dd
	.uleb128 0x26
	.long	.LASF167
	.byte	0x2
	.value	0x1af
	.byte	0x1
	.long	0x7a9
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xc29
	.uleb128 0x28
	.string	"fp"
	.byte	0x2
	.value	0x1af
	.byte	0x15
	.long	0xb60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF165
	.byte	0x2
	.value	0x1af
	.byte	0x20
	.long	0x48e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF168
	.byte	0x2
	.value	0x1b1
	.byte	0x10
	.long	0xb4
	.uleb128 0x9
	.byte	0x3
	.quad	tempfile.6427
	.uleb128 0x22
	.long	.LASF169
	.byte	0x2
	.value	0x1b2
	.byte	0x10
	.long	0x2dd
	.uleb128 0x9
	.byte	0x3
	.quad	tmp_fp.6428
	.uleb128 0x29
	.long	.LASF208
	.byte	0x2
	.value	0x1d6
	.byte	0x9
	.quad	.L69
	.uleb128 0x25
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x23
	.string	"t"
	.byte	0x2
	.value	0x1b5
	.byte	0x13
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF170
	.byte	0x2
	.value	0x1b6
	.byte	0x13
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"fd"
	.byte	0x2
	.value	0x1c7
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF187
	.byte	0x2
	.value	0x1a4
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xc67
	.uleb128 0x28
	.string	"fn"
	.byte	0x2
	.value	0x1a4
	.byte	0x28
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"fp"
	.byte	0x2
	.value	0x1a4
	.byte	0x32
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF171
	.byte	0x2
	.byte	0xc1
	.byte	0x1
	.long	0x7a9
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xe5b
	.uleb128 0x2c
	.long	.LASF158
	.byte	0x2
	.byte	0xc1
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2c
	.long	.LASF151
	.byte	0x2
	.byte	0xc1
	.byte	0x29
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2c
	.long	.LASF172
	.byte	0x2
	.byte	0xc1
	.byte	0x35
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1f
	.long	.LASF173
	.byte	0x2
	.byte	0xc5
	.byte	0x9
	.long	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF174
	.byte	0x2
	.byte	0xc9
	.byte	0x9
	.long	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1f
	.long	.LASF175
	.byte	0x2
	.byte	0xcc
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1f
	.long	.LASF176
	.byte	0x2
	.byte	0xd0
	.byte	0x8
	.long	0x7a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -162
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x2
	.byte	0xd1
	.byte	0x8
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -161
	.uleb128 0x1f
	.long	.LASF178
	.byte	0x2
	.byte	0xd2
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1f
	.long	.LASF179
	.byte	0x2
	.byte	0xd3
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1f
	.long	.LASF180
	.byte	0x2
	.byte	0xda
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xd5f
	.uleb128 0x1f
	.long	.LASF181
	.byte	0x2
	.byte	0xe7
	.byte	0xd
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.long	0xd79
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x2
	.byte	0xf0
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2d
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xdf2
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x10e
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"ri"
	.byte	0x2
	.value	0x10f
	.byte	0x14
	.long	0x70d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF183
	.byte	0x2
	.value	0x110
	.byte	0x14
	.long	0x70d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"ret"
	.byte	0x2
	.value	0x111
	.byte	0x14
	.long	0x70d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x24
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.uleb128 0x2d
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xe38
	.uleb128 0x22
	.long	.LASF184
	.byte	0x2
	.value	0x141
	.byte	0x15
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF152
	.byte	0x2
	.value	0x142
	.byte	0x16
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF185
	.byte	0x2
	.value	0x143
	.byte	0x16
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x22
	.long	.LASF186
	.byte	0x2
	.value	0x16e
	.byte	0x15
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF188
	.byte	0x2
	.byte	0x9f
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xee2
	.uleb128 0x2c
	.long	.LASF128
	.byte	0x2
	.byte	0x9f
	.byte	0x15
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF174
	.byte	0x2
	.byte	0x9f
	.byte	0x28
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF110
	.byte	0x2
	.byte	0xa1
	.byte	0xf
	.long	0xee2
	.uleb128 0x9
	.byte	0x3
	.quad	buffer.6375
	.uleb128 0x1f
	.long	.LASF189
	.byte	0x2
	.byte	0xa2
	.byte	0x11
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	bytes_in_buffer.6376
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x2
	.byte	0xa3
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF191
	.byte	0x2
	.byte	0xa4
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	0xba
	.long	0xef3
	.uleb128 0x30
	.long	0x39
	.value	0x1fff
	.byte	0
	.uleb128 0x31
	.long	.LASF193
	.byte	0x2
	.byte	0x7e
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xf21
	.uleb128 0x2c
	.long	.LASF194
	.byte	0x2
	.byte	0x7e
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF195
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc6
	.uleb128 0x21
	.long	.LASF196
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xf7c
	.uleb128 0x1b
	.long	.LASF196
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2ae
	.byte	0
	.uleb128 0x1b
	.long	.LASF198
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2ae
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xf51
	.uleb128 0x22
	.long	.LASF197
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xfd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF198
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	.LASF199
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xfdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	.LASF200
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xf7c
	.long	0xfd6
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xfc6
	.uleb128 0x7
	.byte	0x8
	.long	0xf7c
	.uleb128 0x32
	.long	.LASF201
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF202
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"exit_failure"
.LASF9:
	.string	"__off_t"
.LASF180:
	.string	"remainder"
.LASF115:
	.string	"translate"
.LASF100:
	.string	"locale_quoting_style"
.LASF27:
	.string	"_chain"
.LASF181:
	.string	"rsize"
.LASF89:
	.string	"GETOPT_VERSION_CHAR"
.LASF144:
	.string	"longopts"
.LASF207:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF179:
	.string	"match_length1"
.LASF33:
	.string	"_shortbuf"
.LASF177:
	.string	"first_char"
.LASF48:
	.string	"ssize_t"
.LASF93:
	.string	"shell_quoting_style"
.LASF88:
	.string	"GETOPT_HELP_CHAR"
.LASF21:
	.string	"_IO_buf_base"
.LASF187:
	.string	"record_or_unlink_tempfile"
.LASF60:
	.string	"long long unsigned int"
.LASF167:
	.string	"temp_stream"
.LASF149:
	.string	"half_buffer_size"
.LASF36:
	.string	"_codecvt"
.LASF208:
	.string	"Reset"
.LASF72:
	.string	"__timezone"
.LASF82:
	.string	"program_invocation_short_name"
.LASF56:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF104:
	.string	"quoting_style_vals"
.LASF85:
	.string	"uintmax_t"
.LASF196:
	.string	"program"
.LASF99:
	.string	"escape_quoting_style"
.LASF123:
	.string	"newline_anchor"
.LASF132:
	.string	"separator"
.LASF168:
	.string	"tempfile"
.LASF147:
	.string	"error_message"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF120:
	.string	"no_sub"
.LASF78:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF59:
	.string	"_gl_cxxalias_dummy"
.LASF136:
	.string	"sentinel_length"
.LASF14:
	.string	"_flags"
.LASF108:
	.string	"rpl_re_syntax_options"
.LASF202:
	.string	"emit_stdin_note"
.LASF12:
	.string	"__ssize_t"
.LASF121:
	.string	"not_bol"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF191:
	.string	"bytes_available"
.LASF97:
	.string	"c_quoting_style"
.LASF45:
	.string	"_IO_codecvt"
.LASF55:
	.string	"_sys_errlist"
.LASF171:
	.string	"tac_seekable"
.LASF81:
	.string	"program_invocation_name"
.LASF35:
	.string	"_offset"
.LASF192:
	.string	"main"
.LASF166:
	.string	"bytes_read"
.LASF3:
	.string	"short unsigned int"
.LASF159:
	.string	"tmp_stream"
.LASF160:
	.string	"tmp_file"
.LASF157:
	.string	"tac_nonseekable"
.LASF57:
	.string	"long double"
.LASF140:
	.string	"G_buffer_size"
.LASF86:
	.string	"TIMESPEC_HZ"
.LASF142:
	.string	"compiled_separator_fastmap"
.LASF96:
	.string	"shell_escape_always_quoting_style"
.LASF75:
	.string	"timezone"
.LASF105:
	.string	"__re_size_t"
.LASF127:
	.string	"num_regs"
.LASF91:
	.string	"program_name"
.LASF165:
	.string	"file_name"
.LASF44:
	.string	"_IO_marker"
.LASF49:
	.string	"stdin"
.LASF163:
	.string	"g_tmp"
.LASF1:
	.string	"unsigned int"
.LASF39:
	.string	"_freeres_buf"
.LASF188:
	.string	"output"
.LASF94:
	.string	"shell_always_quoting_style"
.LASF155:
	.string	"is_stdin"
.LASF66:
	.string	"option"
.LASF19:
	.string	"_IO_write_ptr"
.LASF185:
	.string	"old_G_buffer_size"
.LASF141:
	.string	"compiled_separator"
.LASF67:
	.string	"name"
.LASF52:
	.string	"sys_nerr"
.LASF76:
	.string	"getdate_err"
.LASF203:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF102:
	.string	"custom_quoting_style"
.LASF137:
	.string	"match_length"
.LASF131:
	.string	"error_one_per_line"
.LASF83:
	.string	"Version"
.LASF23:
	.string	"_IO_save_base"
.LASF107:
	.string	"reg_syntax_t"
.LASF175:
	.string	"saved_record_size"
.LASF204:
	.string	"src/tac.c"
.LASF80:
	.string	"environ"
.LASF34:
	.string	"_lock"
.LASF161:
	.string	"bytes_copied"
.LASF135:
	.string	"separator_ends_record"
.LASF41:
	.string	"_mode"
.LASF50:
	.string	"stdout"
.LASF47:
	.string	"off_t"
.LASF148:
	.string	"optc"
.LASF169:
	.string	"tmp_fp"
.LASF90:
	.string	"version_etc_copyright"
.LASF37:
	.string	"_wide_data"
.LASF113:
	.string	"syntax"
.LASF138:
	.string	"G_buffer"
.LASF61:
	.string	"optarg"
.LASF111:
	.string	"allocated"
.LASF153:
	.string	"filename"
.LASF62:
	.string	"optind"
.LASF189:
	.string	"bytes_in_buffer"
.LASF173:
	.string	"match_start"
.LASF206:
	.string	"_IO_lock_t"
.LASF118:
	.string	"regs_allocated"
.LASF65:
	.string	"_IO_FILE"
.LASF129:
	.string	"error_print_progname"
.LASF199:
	.string	"map_prog"
.LASF79:
	.string	"__environ"
.LASF58:
	.string	"time_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF183:
	.string	"range"
.LASF112:
	.string	"used"
.LASF30:
	.string	"_old_offset"
.LASF53:
	.string	"sys_errlist"
.LASF26:
	.string	"_markers"
.LASF151:
	.string	"file"
.LASF119:
	.string	"fastmap_accurate"
.LASF162:
	.string	"copy_to_temp"
.LASF174:
	.string	"past_end"
.LASF98:
	.string	"c_maybe_quoting_style"
.LASF87:
	.string	"LOG10_TIMESPEC_HZ"
.LASF134:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF198:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF125:
	.string	"regoff_t"
.LASF122:
	.string	"not_eol"
.LASF29:
	.string	"_flags2"
.LASF92:
	.string	"literal_quoting_style"
.LASF69:
	.string	"flag"
.LASF54:
	.string	"_sys_nerr"
.LASF126:
	.string	"re_registers"
.LASF32:
	.string	"_vtable_offset"
.LASF73:
	.string	"tzname"
.LASF11:
	.string	"__time_t"
.LASF43:
	.string	"FILE"
.LASF176:
	.string	"first_time"
.LASF95:
	.string	"shell_escape_quoting_style"
.LASF103:
	.string	"quoting_style_args"
.LASF64:
	.string	"optopt"
.LASF74:
	.string	"daylight"
.LASF182:
	.string	"nread"
.LASF164:
	.string	"g_tempfile"
.LASF143:
	.string	"regs"
.LASF172:
	.string	"file_pos"
.LASF0:
	.string	"long unsigned int"
.LASF13:
	.string	"char"
.LASF158:
	.string	"input_fd"
.LASF184:
	.string	"newbuffer"
.LASF170:
	.string	"tempdir"
.LASF124:
	.string	"re_dfa_t"
.LASF178:
	.string	"separator1"
.LASF101:
	.string	"clocale_quoting_style"
.LASF109:
	.string	"re_pattern_buffer"
.LASF110:
	.string	"buffer"
.LASF63:
	.string	"opterr"
.LASF8:
	.string	"__uintmax_t"
.LASF10:
	.string	"__off64_t"
.LASF152:
	.string	"offset"
.LASF17:
	.string	"_IO_read_base"
.LASF190:
	.string	"bytes_to_add"
.LASF25:
	.string	"_IO_save_end"
.LASF77:
	.string	"_sys_siglist"
.LASF133:
	.string	"have_read_stdin"
.LASF197:
	.string	"infomap"
.LASF68:
	.string	"has_arg"
.LASF193:
	.string	"usage"
.LASF40:
	.string	"__pad5"
.LASF20:
	.string	"_IO_write_end"
.LASF42:
	.string	"_unused2"
.LASF51:
	.string	"stderr"
.LASF71:
	.string	"__daylight"
.LASF194:
	.string	"status"
.LASF205:
	.string	"/root/coreutils"
.LASF117:
	.string	"can_be_null"
.LASF24:
	.string	"_IO_backup_base"
.LASF186:
	.string	"match_end"
.LASF106:
	.string	"__re_long_size_t"
.LASF139:
	.string	"read_size"
.LASF130:
	.string	"error_message_count"
.LASF200:
	.string	"lc_messages"
.LASF150:
	.string	"default_file_list"
.LASF145:
	.string	"argc"
.LASF38:
	.string	"_freeres_list"
.LASF46:
	.string	"_IO_wide_data"
.LASF128:
	.string	"start"
.LASF114:
	.string	"fastmap"
.LASF201:
	.string	"emit_mandatory_arg_note"
.LASF70:
	.string	"__tzname"
.LASF146:
	.string	"argv"
.LASF18:
	.string	"_IO_write_base"
.LASF195:
	.string	"emit_ancillary_info"
.LASF116:
	.string	"re_nsub"
.LASF156:
	.string	"tac_file"
.LASF154:
	.string	"file_size"
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
