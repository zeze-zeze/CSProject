	.file	"md5sum.c"
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
	je	.L11
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L11
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L11:
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
	jne	.L12
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L13
.L12:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L13:
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
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.local	min_digest_line_length
	.comm	min_digest_line_length,8,8
	.local	digest_hex_bytes
	.comm	digest_hex_bytes,8,8
	.local	status_only
	.comm	status_only,1,1
	.local	warn
	.comm	warn,1,1
	.local	ignore_missing
	.comm	ignore_missing,1,1
	.local	quiet
	.comm	quiet,1,1
	.local	strict
	.comm	strict,1,1
	.data
	.align 4
	.type	bsd_reversed, @object
	.size	bsd_reversed, 4
bsd_reversed:
	.long	-1
	.type	delim, @object
	.size	delim, 1
delim:
	.byte	10
	.section	.rodata
.LC19:
	.string	"blake2b"
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	algorithm_in_string, @object
	.size	algorithm_in_string, 16
algorithm_in_string:
	.quad	.LC19
	.quad	0
	.section	.rodata
.LC20:
	.string	"BLAKE2b"
	.section	.data.rel.ro.local
	.align 16
	.type	algorithm_out_string, @object
	.size	algorithm_out_string, 16
algorithm_out_string:
	.quad	.LC20
	.quad	0
	.local	b2_algorithm
	.comm	b2_algorithm,4,4
	.local	b2_length
	.comm	b2_length,8,8
	.section	.data.rel,"aw"
	.align 8
	.type	blake2fns, @object
	.size	blake2fns, 8
blake2fns:
	.quad	blake2b_stream
	.data
	.align 8
	.type	blake2_max_len, @object
	.size	blake2_max_len, 8
blake2_max_len:
	.quad	64
	.section	.rodata
.LC21:
	.string	"length"
.LC22:
	.string	"binary"
.LC23:
	.string	"check"
.LC24:
	.string	"ignore-missing"
.LC25:
	.string	"quiet"
.LC26:
	.string	"status"
.LC27:
	.string	"text"
.LC28:
	.string	"warn"
.LC29:
	.string	"strict"
.LC30:
	.string	"tag"
.LC31:
	.string	"zero"
.LC32:
	.string	"help"
.LC33:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	long_options, @object
	.size	long_options, 448
long_options:
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC33
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
.LC34:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC35:
	.string	"Usage: %s [OPTION]... [FILE]...\nPrint or check %s (%d-bit) checksums.\n"
.LC36:
	.string	"BLAKE2"
	.align 8
.LC37:
	.string	"\n  -b, --binary         read in binary mode\n"
	.align 8
.LC38:
	.string	"  -c, --check          read %s sums from the FILEs and check them\n"
	.align 8
.LC39:
	.string	"  -l, --length         digest length in bits; must not exceed the maximum for\n                       the blake2 algorithm and must be a multiple of 8\n"
	.align 8
.LC40:
	.string	"      --tag            create a BSD-style checksum\n"
	.align 8
.LC41:
	.string	"  -t, --text           read in text mode (default)\n"
	.align 8
.LC42:
	.string	"  -z, --zero           end each output line with NUL, not newline,\n                       and disable file name escaping\n"
	.align 8
.LC43:
	.ascii	"\nThe following five options are useful only when verifying "
	.ascii	"checksums:\n      --ignore-missing  don't fail or report sta"
	.ascii	"tus for missing files\n      --quiet          don't print OK"
	.ascii	" "
	.string	"for each successfully verified file\n      --status         don't output anything, status code shows success\n      --strict         exit non-zero for improperly formatted checksum lines\n  -w, --warn           warn about improperly formatted checksum lines\n\n"
	.align 8
.LC44:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC45:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC46:
	.ascii	"\nThe sums are computed as described in %s.  When checking, "
	.ascii	"the input\nshould be a former output of this program.  The d"
	.ascii	"ef"
	.string	"ault mode is to print a\nline with checksum, a space, a character indicating input mode ('*' for binary,\n' ' for text or where binary is insignificant), and name for each FILE.\n\nNote: There is no difference between binary mode and text mode on GNU systems.\n"
.LC47:
	.string	"RFC 7693"
.LC48:
	.string	"b2sum"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.file 2 "src/md5sum.c"
	.loc 2 224 1
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
	.loc 2 225 6
	cmpl	$0, -20(%rbp)
	je	.L18
	.loc 2 226 5
	movq	program_name(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L19
.L18:
	.loc 2 229 7
	movq	program_name(%rip), %rbx
	.loc 2 229 15
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	.loc 2 229 7
	movl	$512, %ecx
	leaq	.LC36(%rip), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 237 7
	call	emit_stdin_note
	.loc 2 244 9
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 249 15
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	.loc 2 249 7
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 253 9
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 258 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 266 9
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 269 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 273 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 283 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 284 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 285 15
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	.loc 2 285 7
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 295 7
	leaq	.LC48(%rip), %rdi
	call	emit_ancillary_info
.L19:
	.loc 2 298 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.type	filename_unescape, @function
filename_unescape:
.LFB51:
	.loc 2 313 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 314 9
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB2:
	.loc 2 316 15
	movq	$0, -8(%rbp)
	.loc 2 316 3
	jmp	.L21
.L30:
	.loc 2 318 16
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 318 7
	testl	%eax, %eax
	je	.L22
	cmpl	$92, %eax
	jne	.L23
	.loc 2 321 26
	movq	-32(%rbp), %rax
	subq	$1, %rax
	.loc 2 321 14
	cmpq	%rax, -8(%rbp)
	jne	.L24
	.loc 2 324 22
	movl	$0, %eax
	jmp	.L25
.L24:
	.loc 2 326 11
	addq	$1, -8(%rbp)
	.loc 2 327 20
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$92, %eax
	je	.L26
	cmpl	$110, %eax
	jne	.L27
	.loc 2 330 19
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 330 22
	movb	$10, (%rax)
	.loc 2 331 15
	jmp	.L28
.L26:
	.loc 2 333 19
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 333 22
	movb	$92, (%rax)
	.loc 2 334 15
	jmp	.L28
.L27:
	.loc 2 337 22
	movl	$0, %eax
	jmp	.L25
.L28:
	.loc 2 339 11
	jmp	.L29
.L22:
	.loc 2 343 18
	movl	$0, %eax
	jmp	.L25
.L23:
	.loc 2 346 21
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 346 15
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 346 21
	movzbl	(%rcx), %edx
	.loc 2 346 18
	movb	%dl, (%rax)
	.loc 2 347 11
	nop
.L29:
	.loc 2 316 34 discriminator 2
	addq	$1, -8(%rbp)
.L21:
	.loc 2 316 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L30
.LBE2:
	.loc 2 350 15
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 350 6
	cmpq	%rax, -16(%rbp)
	jnb	.L31
	.loc 2 351 10
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
.L31:
	.loc 2 353 10
	movq	-24(%rbp), %rax
.L25:
	.loc 2 354 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	filename_unescape, .-filename_unescape
	.type	hex_digits, @function
hex_digits:
.LFB52:
	.loc 2 360 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.LBB3:
	.loc 2 361 21
	movl	$0, -4(%rbp)
	.loc 2 361 3
	jmp	.L33
.L36:
	.loc 2 363 12
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	.loc 2 363 10
	testl	%eax, %eax
	jne	.L34
	.loc 2 364 16
	movl	$0, %eax
	jmp	.L35
.L34:
	.loc 2 365 7 discriminator 2
	addq	$1, -24(%rbp)
	.loc 2 361 51 discriminator 2
	addl	$1, -4(%rbp)
.L33:
	.loc 2 361 30 discriminator 1
	movl	-4(%rbp), %edx
	movq	digest_hex_bytes(%rip), %rax
	.loc 2 361 3 discriminator 1
	cmpq	%rax, %rdx
	jb	.L36
.LBE3:
	.loc 2 367 10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 367 13
	testb	%al, %al
	sete	%al
.L35:
	.loc 2 368 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	hex_digits, .-hex_digits
	.type	bsd_split_3, @function
bsd_split_3:
.LFB53:
	.loc 2 377 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, %eax
	movb	%al, -52(%rbp)
	.loc 2 380 6
	cmpq	$0, -32(%rbp)
	jne	.L38
	.loc 2 381 12
	movl	$0, %eax
	jmp	.L39
.L38:
	.loc 2 384 5
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc 2 385 9
	jmp	.L40
.L42:
	.loc 2 386 6
	subq	$1, -8(%rbp)
.L40:
	.loc 2 385 9
	cmpq	$0, -8(%rbp)
	je	.L41
	.loc 2 385 16 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 385 12 discriminator 1
	cmpb	$41, %al
	jne	.L42
.L41:
	.loc 2 388 8
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 388 6
	cmpb	$41, %al
	je	.L43
	.loc 2 389 12
	movl	$0, %eax
	jmp	.L39
.L43:
	.loc 2 391 14
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 393 6
	cmpb	$0, -52(%rbp)
	je	.L44
	.loc 2 393 27 discriminator 1
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	filename_unescape
	.loc 2 393 24 discriminator 1
	testq	%rax, %rax
	jne	.L44
	.loc 2 394 12
	movl	$0, %eax
	jmp	.L39
.L44:
	.loc 2 396 6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 396 4
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 396 10
	movb	$0, (%rax)
	.loc 2 398 9
	jmp	.L45
.L46:
	.loc 2 399 6
	addq	$1, -8(%rbp)
.L45:
	.loc 2 398 10
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 398 9
	cmpb	$32, %al
	je	.L46
	.loc 2 398 10 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L46
	.loc 2 401 8
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 401 6
	cmpb	$61, %al
	je	.L47
	.loc 2 402 12
	movl	$0, %eax
	jmp	.L39
.L47:
	.loc 2 404 4
	addq	$1, -8(%rbp)
	.loc 2 406 9
	jmp	.L48
.L49:
	.loc 2 407 6
	addq	$1, -8(%rbp)
.L48:
	.loc 2 406 10
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 406 9
	cmpb	$32, %al
	je	.L49
	.loc 2 406 10 discriminator 1
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L49
	.loc 2 409 35
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 409 15
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 411 10
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	hex_digits
.L39:
	.loc 2 412 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	bsd_split_3, .-bsd_split_3
	.type	split_3, @function
split_3:
.LFB54:
	.loc 2 421 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	.loc 2 421 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 422 8
	movb	$0, -67(%rbp)
	.loc 2 425 10
	movq	$0, -48(%rbp)
	.loc 2 426 9
	jmp	.L51
.L52:
	.loc 2 427 5
	addq	$1, -48(%rbp)
.L51:
	.loc 2 426 10
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 426 9
	cmpb	$32, %al
	je	.L52
	.loc 2 426 10 discriminator 1
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L52
	.loc 2 429 8
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 429 6
	cmpb	$92, %al
	jne	.L53
	.loc 2 431 7
	addq	$1, -48(%rbp)
	.loc 2 432 24
	movb	$1, -67(%rbp)
.L53:
	.loc 2 437 17
	movq	$6, -32(%rbp)
	.loc 2 438 7
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC36(%rip), %rsi
	movq	%rcx, %rdi
	call	strncmp@PLT
	.loc 2 438 6
	testl	%eax, %eax
	jne	.L54
.LBB4:
	.loc 2 440 9
	movq	-32(%rbp), %rax
	addq	%rax, -48(%rbp)
	.loc 2 443 36
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 443 19
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 445 13
	jmp	.L55
.L57:
	.loc 2 446 9
	addq	$1, -48(%rbp)
.L55:
	.loc 2 445 15
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 445 13
	testb	%al, %al
	je	.L56
	.loc 2 445 24 discriminator 1
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 445 19 discriminator 1
	cmpb	$32, %al
	je	.L56
	.loc 2 445 24 discriminator 2
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 445 22 discriminator 2
	cmpb	$9, %al
	je	.L56
	.loc 2 445 43 discriminator 3
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 445 39 discriminator 3
	cmpb	$45, %al
	je	.L56
	.loc 2 445 58 discriminator 4
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 445 54 discriminator 4
	cmpb	$40, %al
	jne	.L57
.L56:
	.loc 2 447 32
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 447 12
	cmpb	$45, %al
	sete	%al
	movb	%al, -66(%rbp)
	.loc 2 448 30
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 448 12
	cmpb	$40, %al
	sete	%al
	movb	%al, -65(%rbp)
	.loc 2 449 10
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 449 8
	movq	-88(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 449 14
	movb	$0, (%rax)
	.loc 2 450 24
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	leaq	algorithm_out_string(%rip), %rsi
	movq	%rax, %rdi
	call	argmatch@PLT
	movq	%rax, -16(%rbp)
	.loc 2 451 10
	cmpq	$0, -16(%rbp)
	jns	.L58
	.loc 2 452 16
	movl	$0, %eax
	jmp	.L59
.L58:
	.loc 2 453 20
	movq	-16(%rbp), %rax
	movl	%eax, b2_algorithm(%rip)
	.loc 2 454 10
	cmpb	$0, -65(%rbp)
	je	.L60
	.loc 2 455 16
	subq	$1, -48(%rbp)
	.loc 2 455 10
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 455 16
	movb	$40, (%rax)
.L60:
	.loc 2 457 33
	movl	b2_algorithm(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	blake2_max_len(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 457 48
	salq	$3, %rax
	.loc 2 457 17
	movq	%rax, b2_length(%rip)
	.loc 2 458 10
	cmpb	$0, -66(%rbp)
	je	.L61
.LBB5:
	.loc 2 462 32
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	.loc 2 462 18
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	call	xstrtoumax@PLT
	.loc 2 462 14
	testl	%eax, %eax
	jne	.L62
	.loc 2 463 23
	movq	-64(%rbp), %rax
	.loc 2 463 18
	testq	%rax, %rax
	je	.L62
	.loc 2 463 42 discriminator 1
	movq	-64(%rbp), %rdx
	movq	b2_length(%rip), %rax
	.loc 2 463 32 discriminator 1
	cmpq	%rax, %rdx
	ja	.L62
	.loc 2 464 28
	movq	-64(%rbp), %rax
	andl	$7, %eax
	.loc 2 462 15
	testq	%rax, %rax
	je	.L63
.L62:
	.loc 2 465 20
	movl	$0, %eax
	jmp	.L59
.L63:
	.loc 2 467 21
	movq	-56(%rbp), %rax
	subq	-88(%rbp), %rax
	.loc 2 467 13
	movq	%rax, -48(%rbp)
	.loc 2 468 21
	movq	-64(%rbp), %rax
	movq	%rax, b2_length(%rip)
.L61:
.LBE5:
	.loc 2 471 36
	movq	b2_length(%rip), %rax
	shrq	$2, %rax
	.loc 2 471 24
	movq	%rax, digest_hex_bytes(%rip)
	.loc 2 473 12
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 473 10
	cmpb	$32, %al
	jne	.L64
	.loc 2 474 9
	addq	$1, -48(%rbp)
.L64:
	.loc 2 475 12
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 475 10
	cmpb	$40, %al
	jne	.L65
	.loc 2 477 11
	addq	$1, -48(%rbp)
	.loc 2 478 19
	movq	-112(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 479 18
	movzbl	-67(%rbp), %esi
	movq	-96(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	bsd_split_3
	jmp	.L59
.L65:
	.loc 2 482 14
	movl	$0, %eax
	jmp	.L59
.L54:
.LBE4:
	.loc 2 489 13
	movq	-96(%rbp), %rax
	subq	-48(%rbp), %rax
	.loc 2 489 46
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	.loc 2 489 50
	cmpb	$92, %dl
	sete	%dl
	movzbl	%dl, %ecx
	.loc 2 489 42
	movq	min_digest_line_length(%rip), %rdx
	addq	%rcx, %rdx
	.loc 2 489 6
	cmpq	%rdx, %rax
	jnb	.L66
	.loc 2 490 12
	movl	$0, %eax
	jmp	.L59
.L66:
	.loc 2 492 35
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 492 15
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 496 24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 497 20
	movq	$0, digest_hex_bytes(%rip)
	.loc 2 498 9
	jmp	.L67
.L68:
	.loc 2 499 21
	movq	digest_hex_bytes(%rip), %rax
	addq	$1, %rax
	movq	%rax, digest_hex_bytes(%rip)
.L67:
	.loc 2 498 10
	call	__ctype_b_loc@PLT
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	.loc 2 498 9
	testl	%eax, %eax
	jne	.L68
	.loc 2 500 24
	movq	digest_hex_bytes(%rip), %rax
	.loc 2 500 6
	cmpq	$1, %rax
	jbe	.L69
	.loc 2 500 48 discriminator 1
	movq	digest_hex_bytes(%rip), %rax
	andl	$1, %eax
	.loc 2 500 28 discriminator 1
	testq	%rax, %rax
	jne	.L69
	.loc 2 501 24
	movl	b2_algorithm(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	blake2_max_len(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 501 39
	leaq	(%rax,%rax), %rdx
	.loc 2 501 43
	movq	digest_hex_bytes(%rip), %rax
	.loc 2 501 7
	cmpq	%rax, %rdx
	jnb	.L70
.L69:
	.loc 2 502 12
	movl	$0, %eax
	jmp	.L59
.L70:
	.loc 2 503 32
	movq	digest_hex_bytes(%rip), %rax
	salq	$2, %rax
	.loc 2 503 13
	movq	%rax, b2_length(%rip)
	.loc 2 509 5
	movq	digest_hex_bytes(%rip), %rax
	addq	%rax, -48(%rbp)
	.loc 2 510 8
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 510 6
	cmpb	$32, %al
	je	.L71
	.loc 2 510 8 discriminator 1
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 510 7 discriminator 1
	cmpb	$9, %al
	je	.L71
	.loc 2 511 12
	movl	$0, %eax
	jmp	.L59
.L71:
	.loc 2 513 6
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 513 4
	movq	-88(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 513 10
	movb	$0, (%rax)
	.loc 2 515 9
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	hex_digits
	.loc 2 515 7
	xorl	$1, %eax
	.loc 2 515 6
	testb	%al, %al
	je	.L72
	.loc 2 516 12
	movl	$0, %eax
	jmp	.L59
.L72:
	.loc 2 519 14
	movq	-96(%rbp), %rax
	subq	-48(%rbp), %rax
	.loc 2 519 6
	cmpq	$1, %rax
	je	.L73
	.loc 2 519 29 discriminator 1
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 519 24 discriminator 1
	cmpb	$32, %al
	je	.L74
	.loc 2 519 44 discriminator 2
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 519 40 discriminator 2
	cmpb	$42, %al
	je	.L74
.L73:
	.loc 2 527 24
	movl	bsd_reversed(%rip), %eax
	.loc 2 527 10
	testl	%eax, %eax
	jne	.L75
	.loc 2 528 16
	movl	$0, %eax
	jmp	.L59
.L75:
	.loc 2 529 20
	movl	$1, bsd_reversed(%rip)
	jmp	.L76
.L74:
	.loc 2 531 25
	movl	bsd_reversed(%rip), %eax
	.loc 2 531 11
	cmpl	$1, %eax
	je	.L76
	.loc 2 533 20
	movl	$0, bsd_reversed(%rip)
	.loc 2 534 21
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 534 19
	movq	-88(%rbp), %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 534 25
	cmpb	$42, %al
	sete	%al
	movzbl	%al, %edx
	.loc 2 534 15
	movq	-112(%rbp), %rax
	movl	%edx, (%rax)
.L76:
	.loc 2 539 16
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 539 14
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 541 6
	cmpb	$0, -67(%rbp)
	je	.L77
	.loc 2 542 12
	movq	-96(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	filename_unescape
	.loc 2 542 49
	testq	%rax, %rax
	setne	%al
	jmp	.L59
.L77:
	.loc 2 544 10
	movl	$1, %eax
.L59:
	.loc 2 545 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L78
	call	__stack_chk_fail@PLT
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	split_3, .-split_3
	.section	.rodata
.LC49:
	.string	"\\n"
.LC50:
	.string	"\\\\"
	.text
	.type	print_filename, @function
print_filename:
.LFB55:
	.loc 2 551 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	.loc 2 552 7
	movzbl	-12(%rbp), %eax
	xorl	$1, %eax
	.loc 2 552 6
	testb	%al, %al
	je	.L82
	.loc 2 554 7
	movq	stdout(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 555 7
	jmp	.L79
.L87:
	.loc 2 560 15
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 560 7
	cmpl	$10, %eax
	je	.L83
	cmpl	$92, %eax
	je	.L84
	jmp	.L88
.L83:
	.loc 2 563 11
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC49(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 564 11
	jmp	.L86
.L84:
	.loc 2 567 11
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC50(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 568 11
	jmp	.L86
.L88:
	.loc 2 571 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 572 11
	nop
.L86:
	.loc 2 574 11
	addq	$1, -8(%rbp)
.L82:
	.loc 2 558 10
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 558 9
	testb	%al, %al
	jne	.L87
.L79:
	.loc 2 576 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	print_filename, .-print_filename
	.section	.rodata
.LC51:
	.string	"-"
.LC52:
	.string	"r"
.LC53:
	.string	"%s"
	.text
	.type	digest_file, @function
digest_file:
.LFB56:
	.loc 2 593 1
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
	movq	%rcx, -64(%rbp)
	.loc 2 596 19
	movq	-40(%rbp), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 596 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -29(%rbp)
	.loc 2 598 12
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 600 6
	cmpb	$0, -29(%rbp)
	je	.L90
	.loc 2 602 23
	movb	$1, have_read_stdin(%rip)
	.loc 2 603 10
	movq	stdin(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L91
.L90:
	.loc 2 614 12
	movq	-40(%rbp), %rax
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	fopen_safer@PLT
	movq	%rax, -24(%rbp)
	.loc 2 615 10
	cmpq	$0, -24(%rbp)
	jne	.L91
	.loc 2 617 15
	movzbl	ignore_missing(%rip), %eax
	.loc 2 617 14
	testb	%al, %al
	je	.L92
	.loc 2 617 33 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 617 30 discriminator 1
	cmpl	$2, %eax
	jne	.L92
	.loc 2 619 24
	movq	-64(%rbp), %rax
	movb	$1, (%rax)
	.loc 2 620 22
	movl	$1, %eax
	jmp	.L93
.L92:
	.loc 2 622 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 622 21
	call	__errno_location@PLT
	.loc 2 622 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC53(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 623 18
	movl	$0, %eax
	jmp	.L93
.L91:
	.loc 2 627 3
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 630 9
	movl	b2_algorithm(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	blake2fns(%rip), %rax
	movq	(%rdx,%rax), %r8
	movq	b2_length(%rip), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.LVL0:
	movl	%eax, -28(%rbp)
	.loc 2 634 6
	cmpl	$0, -28(%rbp)
	je	.L94
	.loc 2 636 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 636 17
	call	__errno_location@PLT
	.loc 2 636 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC53(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 637 14
	movq	stdin(%rip), %rax
	.loc 2 637 10
	cmpq	%rax, -24(%rbp)
	je	.L95
	.loc 2 638 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
.L95:
	.loc 2 639 14
	movl	$0, %eax
	jmp	.L93
.L94:
	.loc 2 642 7
	movzbl	-29(%rbp), %eax
	xorl	$1, %eax
	.loc 2 642 6
	testb	%al, %al
	je	.L96
	.loc 2 642 20 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 642 17 discriminator 1
	testl	%eax, %eax
	je	.L96
	.loc 2 644 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 644 17
	call	__errno_location@PLT
	.loc 2 644 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC53(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 645 14
	movl	$0, %eax
	jmp	.L93
.L96:
	.loc 2 648 10
	movl	$1, %eax
.L93:
	.loc 2 649 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	digest_file, .-digest_file
	.section	.rodata
.LC54:
	.string	"standard input"
.LC55:
	.string	"%s: too many checksum lines"
	.align 8
.LC56:
	.string	"%s: %lu: improperly formatted %s checksum line"
.LC57:
	.string	"FAILED open or read"
.LC58:
	.string	": %s\n"
.LC59:
	.string	"FAILED"
.LC60:
	.string	"OK"
.LC61:
	.string	"%s: read error"
	.align 8
.LC62:
	.string	"%s: no properly formatted %s checksum lines found"
	.align 8
.LC63:
	.string	"WARNING: %lu lines are improperly formatted"
	.align 8
.LC64:
	.string	"WARNING: %lu line is improperly formatted"
	.align 8
.LC65:
	.string	"WARNING: %lu listed files could not be read"
	.align 8
.LC66:
	.string	"WARNING: %lu listed file could not be read"
	.align 8
.LC67:
	.string	"WARNING: %lu computed checksums did NOT match"
	.align 8
.LC68:
	.string	"WARNING: %lu computed checksum did NOT match"
.LC69:
	.string	"%s: no file was verified"
	.text
	.type	digest_check, @function
digest_check:
.LFB57:
	.loc 2 653 1
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
	movq	%rdi, -232(%rbp)
	.loc 2 653 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 655 13
	movq	$0, -168(%rbp)
	.loc 2 656 13
	movq	$0, -160(%rbp)
	.loc 2 657 13
	movq	$0, -152(%rbp)
	.loc 2 658 13
	movq	$0, -144(%rbp)
	.loc 2 659 8
	movb	$0, -217(%rbp)
	.loc 2 660 8
	movb	$0, -216(%rbp)
	.loc 2 663 31
	leaq	-96(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ptr_align
	movq	%rax, -112(%rbp)
	.loc 2 667 19
	movq	-232(%rbp), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 667 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -215(%rbp)
	.loc 2 669 6
	cmpb	$0, -215(%rbp)
	je	.L98
	.loc 2 671 23
	movb	$1, have_read_stdin(%rip)
	.loc 2 672 24
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, -232(%rbp)
	.loc 2 673 24
	movq	stdin(%rip), %rax
	movq	%rax, -176(%rbp)
	jmp	.L99
.L98:
	.loc 2 677 26
	movq	-232(%rbp), %rax
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	fopen_safer@PLT
	movq	%rax, -176(%rbp)
	.loc 2 678 10
	cmpq	$0, -176(%rbp)
	jne	.L99
	.loc 2 680 11
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 680 21
	call	__errno_location@PLT
	.loc 2 680 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC53(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 681 18
	movl	$0, %eax
	jmp	.L137
.L99:
	.loc 2 685 15
	movq	$0, -136(%rbp)
	.loc 2 686 8
	movq	$0, -208(%rbp)
	.loc 2 687 24
	movq	$0, -200(%rbp)
.L126:
.LBB6:
	.loc 2 690 13
	movq	$0, -192(%rbp)
	.loc 2 692 22
	movq	$0, -184(%rbp)
	.loc 2 695 7
	addq	$1, -136(%rbp)
	.loc 2 696 10
	cmpq	$0, -136(%rbp)
	jne	.L101
.LBB7:
	.loc 2 697 9
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L101:
.LBE7:
	.loc 2 700 21
	movq	-176(%rbp), %rdx
	leaq	-200(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -128(%rbp)
	.loc 2 701 10
	cmpq	$0, -128(%rbp)
	jle	.L139
	.loc 2 705 15
	movq	-208(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 705 10
	cmpb	$35, %al
	je	.L140
	.loc 2 709 15
	movq	-208(%rbp), %rax
	movq	-128(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 709 10
	cmpb	$10, %al
	jne	.L106
	.loc 2 710 13
	movq	-208(%rbp), %rdx
	.loc 2 710 29
	subq	$1, -128(%rbp)
	.loc 2 710 14
	movq	-128(%rbp), %rax
	.loc 2 710 13
	addq	%rdx, %rax
	.loc 2 710 29
	movb	$0, (%rax)
.L106:
	.loc 2 712 14
	movq	-128(%rbp), %rsi
	movq	-208(%rbp), %rax
	leaq	-192(%rbp), %rdi
	leaq	-212(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	split_3
	xorl	$1, %eax
	.loc 2 712 10
	testb	%al, %al
	jne	.L107
	.loc 2 712 11 discriminator 1
	cmpb	$0, -215(%rbp)
	je	.L108
	.loc 2 713 32
	movq	-192(%rbp), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 713 17
	testl	%eax, %eax
	jne	.L108
.L107:
	.loc 2 715 11
	addq	$1, -168(%rbp)
	.loc 2 717 15
	movzbl	warn(%rip), %eax
	.loc 2 717 14
	testb	%al, %al
	je	.L109
	.loc 2 719 15
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 720 22
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	.loc 2 719 15
	movq	-136(%rbp), %rdx
	leaq	.LC36(%rip), %r9
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L109:
	.loc 2 726 11
	addq	$1, -160(%rbp)
	jmp	.L105
.L108:
.LBB8:
	.loc 2 738 31
	movzbl	status_only(%rip), %eax
	xorl	$1, %eax
	.loc 2 738 45
	testb	%al, %al
	je	.L111
	.loc 2 738 48 discriminator 1
	movq	-192(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 738 45 discriminator 1
	testq	%rax, %rax
	je	.L111
	.loc 2 738 45 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L112
.L111:
	.loc 2 738 45 discriminator 4
	movl	$0, %eax
.L112:
	.loc 2 738 16 is_stmt 1 discriminator 6
	movb	%al, -214(%rbp)
	andb	$1, -214(%rbp)
	.loc 2 740 36 discriminator 6
	movb	$1, -217(%rbp)
	.loc 2 742 16 discriminator 6
	movq	-192(%rbp), %rax
	leaq	-218(%rbp), %rcx
	movq	-112(%rbp), %rdx
	leaq	-212(%rbp), %rsi
	movq	%rax, %rdi
	call	digest_file
	movb	%al, -213(%rbp)
	.loc 2 744 15 discriminator 6
	movzbl	-213(%rbp), %eax
	xorl	$1, %eax
	.loc 2 744 14 discriminator 6
	testb	%al, %al
	je	.L113
	.loc 2 746 15
	addq	$1, -144(%rbp)
	.loc 2 747 19
	movzbl	status_only(%rip), %eax
	xorl	$1, %eax
	.loc 2 747 18
	testb	%al, %al
	je	.L105
	.loc 2 749 22
	cmpb	$0, -214(%rbp)
	je	.L115
	.loc 2 750 21
	movl	$92, %edi
	call	putchar_unlocked@PLT
.L115:
	.loc 2 751 19
	movzbl	-214(%rbp), %edx
	movq	-192(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	print_filename
	.loc 2 752 19
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC58(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L105
.L113:
	.loc 2 755 20
	movzbl	ignore_missing(%rip), %eax
	.loc 2 755 19
	testb	%al, %al
	je	.L116
	.loc 2 755 35 discriminator 1
	movzbl	-218(%rbp), %eax
	testb	%al, %al
	jne	.L105
.L116:
.LBB9:
	.loc 2 762 58
	movq	digest_hex_bytes(%rip), %rax
	.loc 2 762 22
	shrq	%rax
	movq	%rax, -104(%rbp)
	.loc 2 767 24
	movq	$0, -120(%rbp)
	.loc 2 767 15
	jmp	.L117
.L119:
	.loc 2 769 42
	movq	-184(%rbp), %rax
	.loc 2 769 45
	movq	-120(%rbp), %rdx
	addq	%rdx, %rdx
	.loc 2 769 42
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 769 23
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	.loc 2 770 44
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	.loc 2 770 50
	shrb	$4, %dl
	movzbl	%dl, %edx
	.loc 2 770 33
	movslq	%edx, %rdx
	leaq	bin2hex.6507(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movsbl	%dl, %edx
	.loc 2 769 22
	cmpl	%edx, %eax
	jne	.L118
	.loc 2 771 46
	movq	-184(%rbp), %rax
	.loc 2 771 49
	movq	-120(%rbp), %rdx
	addq	%rdx, %rdx
	.loc 2 771 46
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 771 27
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	.loc 2 772 49
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	.loc 2 772 55
	movzbl	%dl, %edx
	andl	$15, %edx
	.loc 2 772 38
	movslq	%edx, %rdx
	leaq	bin2hex.6507(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movsbl	%dl, %edx
	.loc 2 771 23
	cmpl	%edx, %eax
	jne	.L118
	.loc 2 767 53 discriminator 2
	addq	$1, -120(%rbp)
.L117:
	.loc 2 767 15 discriminator 1
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L119
.L118:
	.loc 2 775 18
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L120
	.loc 2 776 17
	addq	$1, -152(%rbp)
	jmp	.L121
.L120:
	.loc 2 778 35
	movb	$1, -216(%rbp)
.L121:
	.loc 2 780 19
	movzbl	status_only(%rip), %eax
	xorl	$1, %eax
	.loc 2 780 18
	testb	%al, %al
	je	.L105
	.loc 2 782 22
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.L122
	.loc 2 782 50 discriminator 1
	movzbl	quiet(%rip), %eax
	xorl	$1, %eax
	.loc 2 782 47 discriminator 1
	testb	%al, %al
	je	.L123
.L122:
	.loc 2 784 26
	cmpb	$0, -214(%rbp)
	je	.L124
	.loc 2 785 25
	movl	$92, %edi
	call	putchar_unlocked@PLT
.L124:
	.loc 2 786 23
	movzbl	-214(%rbp), %edx
	movq	-192(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	print_filename
.L123:
	.loc 2 789 22
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L125
	.loc 2 790 21
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC58(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L105
.L125:
	.loc 2 791 28
	movzbl	quiet(%rip), %eax
	xorl	$1, %eax
	.loc 2 791 27
	testb	%al, %al
	je	.L105
	.loc 2 792 21
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC58(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L105
.L140:
.LBE9:
.LBE8:
	.loc 2 706 9
	nop
.L105:
.LBE6:
	.loc 2 797 11
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 797 3
	testl	%eax, %eax
	jne	.L103
	.loc 2 797 39 discriminator 1
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 797 35 discriminator 1
	testl	%eax, %eax
	je	.L126
	jmp	.L103
.L139:
.LBB10:
	.loc 2 702 9
	nop
.L103:
.LBE10:
	.loc 2 799 3
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 801 7
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 801 6
	testl	%eax, %eax
	je	.L127
	.loc 2 803 7
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 803 20
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	.loc 2 803 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 804 14
	movl	$0, %eax
	jmp	.L137
.L127:
	.loc 2 807 7
	movzbl	-215(%rbp), %eax
	xorl	$1, %eax
	.loc 2 807 6
	testb	%al, %al
	je	.L128
	.loc 2 807 20 discriminator 1
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 807 17 discriminator 1
	testl	%eax, %eax
	je	.L128
	.loc 2 809 7
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 809 17
	call	__errno_location@PLT
	.loc 2 809 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC53(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 810 14
	movl	$0, %eax
	jmp	.L137
.L128:
	.loc 2 813 7
	movzbl	-217(%rbp), %eax
	xorl	$1, %eax
	.loc 2 813 6
	testb	%al, %al
	je	.L129
	.loc 2 816 7
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 816 20
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	.loc 2 816 7
	leaq	.LC36(%rip), %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L130
.L129:
	.loc 2 821 11
	movzbl	status_only(%rip), %eax
	xorl	$1, %eax
	.loc 2 821 10
	testb	%al, %al
	je	.L130
	.loc 2 823 14
	cmpq	$0, -168(%rbp)
	je	.L131
	.loc 2 825 21
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC63(%rip), %rsi
	leaq	.LC64(%rip), %rdi
	call	ngettext@PLT
	movq	%rax, %rdx
	.loc 2 824 13
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L131:
	.loc 2 831 14
	cmpq	$0, -144(%rbp)
	je	.L132
	.loc 2 833 21
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC65(%rip), %rsi
	leaq	.LC66(%rip), %rdi
	call	ngettext@PLT
	movq	%rax, %rdx
	.loc 2 832 13
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L132:
	.loc 2 839 14
	cmpq	$0, -152(%rbp)
	je	.L133
	.loc 2 841 21
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC67(%rip), %rsi
	leaq	.LC68(%rip), %rdi
	call	ngettext@PLT
	movq	%rax, %rdx
	.loc 2 840 13
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L133:
	.loc 2 847 15
	movzbl	ignore_missing(%rip), %eax
	.loc 2 847 14
	testb	%al, %al
	je	.L130
	.loc 2 847 33 discriminator 1
	movzbl	-216(%rbp), %eax
	xorl	$1, %eax
	.loc 2 847 30 discriminator 1
	testb	%al, %al
	je	.L130
	.loc 2 848 13
	movq	-232(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 848 26
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	.loc 2 848 13
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L130:
	.loc 2 857 11
	cmpb	$0, -217(%rbp)
	je	.L134
	.loc 2 854 11
	cmpb	$0, -216(%rbp)
	je	.L134
	.loc 2 855 11
	cmpq	$0, -152(%rbp)
	jne	.L134
	.loc 2 856 11
	cmpq	$0, -144(%rbp)
	jne	.L134
	.loc 2 857 15
	movzbl	strict(%rip), %eax
	xorl	$1, %eax
	.loc 2 857 11
	testb	%al, %al
	jne	.L135
	.loc 2 857 23 discriminator 3
	cmpq	$0, -160(%rbp)
	jne	.L134
.L135:
	.loc 2 857 11 discriminator 4
	movl	$1, %eax
	jmp	.L136
.L134:
	.loc 2 857 11 is_stmt 0 discriminator 5
	movl	$0, %eax
.L136:
	.loc 2 857 11 discriminator 7
	andl	$1, %eax
.L137:
	.loc 2 858 1 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L138
	.loc 2 858 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L138:
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	digest_check, .-digest_check
	.section	.rodata
.LC70:
	.string	"/usr/local/share/locale"
.LC71:
	.string	"l:bctwz"
.LC72:
	.string	"invalid length"
.LC73:
	.string	"invalid length: %s"
.LC74:
	.string	"length is not a multiple of 8"
.LC75:
	.string	"Samuel Neves"
.LC76:
	.string	"Padraig Brady"
	.align 8
.LC77:
	.string	"maximum digest length for %s is %lu bits"
	.align 8
.LC78:
	.string	"--tag does not support --text mode"
	.align 8
.LC79:
	.string	"the --zero option is not supported when verifying checksums"
	.align 8
.LC80:
	.string	"the --tag option is meaningless when verifying checksums"
	.align 8
.LC81:
	.string	"the --binary and --text options are meaningless when verifying checksums"
	.align 8
.LC82:
	.string	"the --ignore-missing option is meaningful only when verifying checksums"
	.align 8
.LC83:
	.string	"the --status option is meaningful only when verifying checksums"
	.align 8
.LC84:
	.string	"the --warn option is meaningful only when verifying checksums"
	.align 8
.LC85:
	.string	"the --quiet option is meaningful only when verifying checksums"
	.align 8
.LC86:
	.string	"the --strict option is meaningful only when verifying checksums"
.LC87:
	.string	"-%lu"
.LC88:
	.string	" ("
.LC89:
	.string	") = "
.LC90:
	.string	"%02x"
	.text
	.globl	main
	.type	main, @function
main:
.LFB58:
	.loc 2 862 1 is_stmt 1
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
	movl	%edi, -180(%rbp)
	movq	%rsi, -192(%rbp)
	.loc 2 862 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 865 31
	leaq	-96(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ptr_align
	movq	%rax, -120(%rbp)
	.loc 2 866 8
	movb	$0, -168(%rbp)
	.loc 2 868 8
	movb	$1, -167(%rbp)
	.loc 2 869 7
	movl	$-1, -160(%rbp)
	.loc 2 870 8
	movb	$0, -166(%rbp)
	.loc 2 874 3
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 875 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 876 3
	leaq	.LC70(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 877 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 879 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 883 3
	movq	stdout(%rip), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setvbuf@PLT
	.loc 2 886 15
	leaq	.LC71(%rip), %rax
	movq	%rax, -112(%rbp)
	.loc 2 887 15
	leaq	.LC17(%rip), %rax
	movq	%rax, -152(%rbp)
	.loc 2 892 9
	jmp	.L142
.L160:
	.loc 2 893 5
	cmpl	$132, -156(%rbp)
	jg	.L143
	cmpl	$98, -156(%rbp)
	jge	.L144
	cmpl	$-131, -156(%rbp)
	je	.L145
	cmpl	$-130, -156(%rbp)
	je	.L146
	jmp	.L143
.L144:
	movl	-156(%rbp), %eax
	subl	$98, %eax
	cmpl	$34, %eax
	ja	.L143
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L148(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L148(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L148:
	.long	.L158-.L148
	.long	.L157-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L156-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L155-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L154-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L153-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L143-.L148
	.long	.L152-.L148
	.long	.L151-.L148
	.long	.L150-.L148
	.long	.L149-.L148
	.long	.L147-.L148
	.text
.L156:
	.loc 2 898 33
	leaq	.LC72(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 897 21
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC17(%rip), %rcx
	movq	$-1, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 2 897 19
	movq	%rax, b2_length(%rip)
	.loc 2 899 23
	movq	optarg(%rip), %rax
	movq	%rax, -152(%rbp)
	.loc 2 900 23
	movq	b2_length(%rip), %rax
	andl	$7, %eax
	.loc 2 900 12
	testq	%rax, %rax
	je	.L142
.LBB11:
	.loc 2 902 13
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 902 26
	leaq	.LC73(%rip), %rdi
	call	gettext@PLT
	.loc 2 902 13
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 903 13
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L158:
.LBE11:
	.loc 2 908 16
	movl	$1, -160(%rbp)
	.loc 2 909 9
	jmp	.L142
.L157:
	.loc 2 911 18
	movb	$1, -168(%rbp)
	.loc 2 912 9
	jmp	.L142
.L151:
	.loc 2 914 21
	movb	$1, status_only(%rip)
	.loc 2 915 14
	movb	$0, warn(%rip)
	.loc 2 916 15
	movb	$0, quiet(%rip)
	.loc 2 917 9
	jmp	.L142
.L155:
	.loc 2 919 16
	movl	$0, -160(%rbp)
	.loc 2 920 9
	jmp	.L142
.L154:
	.loc 2 922 21
	movb	$0, status_only(%rip)
	.loc 2 923 14
	movb	$1, warn(%rip)
	.loc 2 924 15
	movb	$0, quiet(%rip)
	.loc 2 925 9
	jmp	.L142
.L152:
	.loc 2 927 24
	movb	$1, ignore_missing(%rip)
	.loc 2 928 9
	jmp	.L142
.L150:
	.loc 2 930 21
	movb	$0, status_only(%rip)
	.loc 2 931 14
	movb	$0, warn(%rip)
	.loc 2 932 15
	movb	$1, quiet(%rip)
	.loc 2 933 9
	jmp	.L142
.L149:
	.loc 2 935 16
	movb	$1, strict(%rip)
	.loc 2 936 9
	jmp	.L142
.L147:
	.loc 2 938 20
	movb	$1, -166(%rbp)
	.loc 2 939 16
	movl	$1, -160(%rbp)
	.loc 2 940 9
	jmp	.L142
.L153:
	.loc 2 942 15
	movb	$0, delim(%rip)
	.loc 2 943 9
	jmp	.L142
.L146:
	.loc 2 944 7
	movl	$0, %edi
	call	usage
.L145:
	.loc 2 945 7
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC75(%rip), %r9
	leaq	.LC76(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L143:
	.loc 2 947 9
	movl	$1, %edi
	call	usage
.L142:
	.loc 2 892 17
	movq	-112(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movl	-180(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -156(%rbp)
	.loc 2 892 9
	cmpl	$-1, -156(%rbp)
	jne	.L160
	.loc 2 950 26
	movq	$3, min_digest_line_length(%rip)
	.loc 2 952 33
	movl	b2_algorithm(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	blake2_max_len(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 952 48
	leaq	0(,%rax,8), %rdx
	.loc 2 952 17
	movq	b2_length(%rip), %rax
	.loc 2 952 6
	cmpq	%rax, %rdx
	jnb	.L161
.LBB12:
	.loc 2 954 7
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 954 20
	leaq	.LC73(%rip), %rdi
	call	gettext@PLT
	.loc 2 954 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 955 7
	movl	b2_algorithm(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	blake2_max_len(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	0(,%rax,8), %r12
	movl	b2_algorithm(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	algorithm_in_string(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC77(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L161:
.LBE12:
	.loc 2 960 17
	movq	b2_length(%rip), %rax
	.loc 2 960 6
	testq	%rax, %rax
	jne	.L162
	.loc 2 960 25 discriminator 1
	movzbl	-168(%rbp), %eax
	xorl	$1, %eax
	.loc 2 960 22 discriminator 1
	testb	%al, %al
	je	.L162
	.loc 2 961 31
	movl	b2_algorithm(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	blake2_max_len(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 961 46
	salq	$3, %rax
	.loc 2 961 15
	movq	%rax, b2_length(%rip)
.L162:
	.loc 2 962 32
	movq	b2_length(%rip), %rax
	shrq	$2, %rax
	.loc 2 962 20
	movq	%rax, digest_hex_bytes(%rip)
	.loc 2 967 6
	cmpb	$0, -166(%rbp)
	je	.L163
	.loc 2 967 18 discriminator 1
	cmpl	$0, -160(%rbp)
	jne	.L163
	.loc 2 974 19
	leaq	.LC78(%rip), %rdi
	call	gettext@PLT
	.loc 2 974 6
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 975 6
	movl	$1, %edi
	call	usage
.L163:
	.loc 2 978 13
	movzbl	delim(%rip), %eax
	.loc 2 978 6
	cmpb	$10, %al
	je	.L164
	.loc 2 978 21 discriminator 1
	cmpb	$0, -168(%rbp)
	je	.L164
	.loc 2 980 20
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	.loc 2 980 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 982 7
	movl	$1, %edi
	call	usage
.L164:
	.loc 2 985 6
	cmpb	$0, -166(%rbp)
	je	.L165
	.loc 2 985 18 discriminator 1
	cmpb	$0, -168(%rbp)
	je	.L165
	.loc 2 987 20
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	.loc 2 987 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 989 7
	movl	$1, %edi
	call	usage
.L165:
	.loc 2 992 6
	cmpl	$0, -160(%rbp)
	js	.L166
	.loc 2 992 19 discriminator 1
	cmpb	$0, -168(%rbp)
	je	.L166
	.loc 2 994 20
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	.loc 2 994 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 996 7
	movl	$1, %edi
	call	usage
.L166:
	.loc 2 999 7
	movzbl	ignore_missing(%rip), %eax
	.loc 2 999 6
	testb	%al, %al
	je	.L167
	.loc 2 999 25 discriminator 1
	movzbl	-168(%rbp), %eax
	xorl	$1, %eax
	.loc 2 999 22 discriminator 1
	testb	%al, %al
	je	.L167
	.loc 2 1002 14
	leaq	.LC82(%rip), %rdi
	call	gettext@PLT
	.loc 2 1001 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1004 7
	movl	$1, %edi
	call	usage
.L167:
	.loc 2 1007 7
	movzbl	status_only(%rip), %eax
	.loc 2 1007 6
	testb	%al, %al
	je	.L168
	.loc 2 1007 22 discriminator 1
	movzbl	-168(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1007 19 discriminator 1
	testb	%al, %al
	je	.L168
	.loc 2 1010 8
	leaq	.LC83(%rip), %rdi
	call	gettext@PLT
	.loc 2 1009 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1011 7
	movl	$1, %edi
	call	usage
.L168:
	.loc 2 1014 7
	movzbl	warn(%rip), %eax
	.loc 2 1014 6
	testb	%al, %al
	je	.L169
	.loc 2 1014 15 discriminator 1
	movzbl	-168(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1014 12 discriminator 1
	testb	%al, %al
	je	.L169
	.loc 2 1017 8
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	.loc 2 1016 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1018 7
	movl	$1, %edi
	call	usage
.L169:
	.loc 2 1021 7
	movzbl	quiet(%rip), %eax
	.loc 2 1021 6
	testb	%al, %al
	je	.L170
	.loc 2 1021 16 discriminator 1
	movzbl	-168(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1021 13 discriminator 1
	testb	%al, %al
	je	.L170
	.loc 2 1024 8
	leaq	.LC85(%rip), %rdi
	call	gettext@PLT
	.loc 2 1023 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1025 7
	movl	$1, %edi
	call	usage
.L170:
	.loc 2 1028 14
	movzbl	strict(%rip), %eax
	movzbl	%al, %edx
	.loc 2 1028 16
	movzbl	-168(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1028 14
	andl	%edx, %eax
	.loc 2 1028 6
	testl	%eax, %eax
	je	.L171
	.loc 2 1031 9
	leaq	.LC86(%rip), %rdi
	call	gettext@PLT
	.loc 2 1030 6
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1032 6
	movl	$1, %edi
	call	usage
.L171:
	.loc 2 1035 6
	cmpl	$0, -160(%rbp)
	jns	.L172
	.loc 2 1036 12
	movl	$0, -160(%rbp)
.L172:
	.loc 2 1038 29
	movl	-180(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 1038 10
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	.loc 2 1039 14
	movl	optind(%rip), %eax
	.loc 2 1039 6
	cmpl	%eax, -180(%rbp)
	jne	.L173
	.loc 2 1040 17
	movq	-144(%rbp), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -144(%rbp)
	.loc 2 1040 22
	leaq	.LC51(%rip), %rdi
	call	bad_cast
	.loc 2 1040 20
	movq	%rax, (%rbx)
.L173:
.LBB13:
	.loc 2 1042 31
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 1042 15
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	.loc 2 1042 3
	jmp	.L174
.L191:
.LBB14:
	.loc 2 1044 13
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	.loc 2 1046 10
	cmpb	$0, -168(%rbp)
	je	.L175
	.loc 2 1047 15
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	digest_check
	.loc 2 1047 12
	movzbl	-167(%rbp), %edx
	.loc 2 1047 15
	movzbl	%al, %eax
	.loc 2 1047 12
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -167(%rbp)
	jmp	.L176
.L175:
.LBB15:
	.loc 2 1050 15
	movl	-160(%rbp), %eax
	movl	%eax, -164(%rbp)
	.loc 2 1053 17
	leaq	-169(%rbp), %rcx
	movq	-120(%rbp), %rdx
	leaq	-164(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	digest_file
	.loc 2 1053 15
	xorl	$1, %eax
	.loc 2 1053 14
	testb	%al, %al
	je	.L177
	.loc 2 1054 16
	movb	$0, -167(%rbp)
	jmp	.L176
.L177:
.LBB16:
	.loc 2 1064 36
	movq	-104(%rbp), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 1065 35
	testq	%rax, %rax
	jne	.L179
	.loc 2 1064 59
	movq	-104(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 1064 56
	testq	%rax, %rax
	je	.L180
.L179:
	.loc 2 1065 44 discriminator 1
	movzbl	delim(%rip), %eax
	.loc 2 1065 35 discriminator 1
	cmpb	$10, %al
	jne	.L180
	.loc 2 1065 35 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L181
.L180:
	.loc 2 1065 35 discriminator 3
	movl	$0, %eax
.L181:
	.loc 2 1064 20 is_stmt 1
	movb	%al, -165(%rbp)
	andb	$1, -165(%rbp)
	.loc 2 1067 18
	cmpb	$0, -166(%rbp)
	je	.L182
	.loc 2 1069 22
	cmpb	$0, -165(%rbp)
	je	.L183
	.loc 2 1070 21
	movl	$92, %edi
	call	putchar_unlocked@PLT
.L183:
	.loc 2 1073 19
	movq	stdout(%rip), %rdx
	movl	b2_algorithm(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rcx
	leaq	algorithm_out_string(%rip), %rax
	movq	(%rcx,%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1074 49
	movl	b2_algorithm(%rip), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	blake2_max_len(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 1074 64
	leaq	0(,%rax,8), %rdx
	.loc 2 1074 33
	movq	b2_length(%rip), %rax
	.loc 2 1074 22
	cmpq	%rax, %rdx
	jbe	.L184
	.loc 2 1075 21
	movq	b2_length(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC87(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L184:
	.loc 2 1079 19
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC88(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1080 19
	movzbl	-165(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	print_filename
	.loc 2 1081 19
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC89(%rip), %rdi
	call	fwrite_unlocked@PLT
.L182:
	.loc 2 1086 19
	movzbl	-166(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1086 18
	testb	%al, %al
	je	.L185
	.loc 2 1086 31 discriminator 1
	cmpb	$0, -165(%rbp)
	je	.L185
	.loc 2 1087 17
	movl	$92, %edi
	call	putchar_unlocked@PLT
.L185:
.LBB17:
	.loc 2 1089 27
	movq	$0, -128(%rbp)
	.loc 2 1089 15
	jmp	.L186
.L187:
	.loc 2 1090 43 discriminator 3
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1090 17 discriminator 3
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC90(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1089 62 discriminator 3
	addq	$1, -128(%rbp)
.L186:
	.loc 2 1089 56 discriminator 1
	movq	digest_hex_bytes(%rip), %rax
	shrq	%rax
	.loc 2 1089 15 discriminator 1
	cmpq	%rax, -128(%rbp)
	jb	.L187
.LBE17:
	.loc 2 1092 19
	movzbl	-166(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1092 18
	testb	%al, %al
	je	.L188
	.loc 2 1094 19
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 2 1096 19
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	je	.L189
	.loc 2 1096 19 is_stmt 0 discriminator 1
	movl	$42, %eax
	jmp	.L190
.L189:
	.loc 2 1096 19 discriminator 2
	movl	$32, %eax
.L190:
	.loc 2 1096 19 discriminator 4
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 1098 19 is_stmt 1 discriminator 4
	movzbl	-165(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	print_filename
.L188:
	.loc 2 1101 15
	movzbl	delim(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L176:
.LBE16:
.LBE15:
.LBE14:
	.loc 2 1042 73 discriminator 2
	addq	$8, -136(%rbp)
.L174:
	.loc 2 1042 3 discriminator 1
	movq	-136(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jb	.L191
.LBE13:
	.loc 2 1106 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 1106 6
	testb	%al, %al
	je	.L192
	.loc 2 1106 26 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1106 23 discriminator 1
	cmpl	$-1, %eax
	jne	.L192
.LBB18:
	.loc 2 1107 5
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L192:
.LBE18:
	.loc 2 1109 28
	movzbl	-167(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1110 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L194
	call	__stack_chk_fail@PLT
.L194:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	bin2hex.6507, @object
	.size	bin2hex.6507, 16
bin2hex.6507:
	.ascii	"0123456789abcdef"
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 9 "./lib/sys/select.h"
	.file 10 "/usr/include/time.h"
	.file 11 "/usr/include/signal.h"
	.file 12 "/usr/include/unistd.h"
	.file 13 "/usr/include/errno.h"
	.file 14 "src/version.h"
	.file 15 "./lib/exitfail.h"
	.file 16 "/usr/include/stdint.h"
	.file 17 "./lib/timespec.h"
	.file 18 "/usr/include/ctype.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 21 "/usr/include/stdio.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 23 "./lib/version-etc.h"
	.file 24 "./lib/progname.h"
	.file 25 "./lib/quotearg.h"
	.file 26 "./lib/quote.h"
	.file 27 "./lib/argmatch.h"
	.file 28 "./lib/xstrtol.h"
	.file 29 "src/blake2/b2sum.h"
	.file 30 "./lib/error.h"
	.file 31 "./lib/fadvise.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1276
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF228
	.byte	0xc
	.long	.LASF229
	.long	.LASF230
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
	.long	.LASF58
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
	.uleb128 0x5
	.long	0xd3
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
	.long	0xed
	.uleb128 0xb
	.long	.LASF16
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x102
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x102
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x102
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5
	.byte	0xc1
	.byte	0x1b
	.long	0x102
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.byte	0x6c
	.byte	0x13
	.long	0x13b
	.uleb128 0xb
	.long	.LASF21
	.byte	0x7
	.byte	0x7
	.byte	0x12
	.long	0x12d
	.uleb128 0xb
	.long	.LASF22
	.byte	0x8
	.byte	0xd1
	.byte	0x17
	.long	0xed
	.uleb128 0xd
	.long	.LASF23
	.byte	0x9
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF24
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF25
	.uleb128 0xe
	.long	0x39
	.long	0x196
	.uleb128 0xf
	.long	0xed
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF26
	.byte	0xa
	.byte	0x9f
	.byte	0xe
	.long	0x186
	.uleb128 0x2
	.long	.LASF27
	.byte	0xa
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF28
	.byte	0xa
	.byte	0xa1
	.byte	0x11
	.long	0x102
	.uleb128 0x2
	.long	.LASF29
	.byte	0xa
	.byte	0xa6
	.byte	0xe
	.long	0x186
	.uleb128 0x2
	.long	.LASF30
	.byte	0xa
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF31
	.byte	0xa
	.byte	0xaf
	.byte	0x11
	.long	0x102
	.uleb128 0xd
	.long	.LASF32
	.byte	0xa
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	.LASF33
	.byte	0x8
	.byte	0x8f
	.byte	0x1a
	.long	0x102
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF34
	.uleb128 0x10
	.uleb128 0x3
	.byte	0x8
	.long	0x1fe
	.uleb128 0xe
	.long	0xc8
	.long	0x215
	.uleb128 0xf
	.long	0xed
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x205
	.uleb128 0xd
	.long	.LASF35
	.byte	0xb
	.value	0x11e
	.byte	0x1a
	.long	0x215
	.uleb128 0xd
	.long	.LASF36
	.byte	0xb
	.value	0x11f
	.byte	0x1a
	.long	0x215
	.uleb128 0xd
	.long	.LASF37
	.byte	0xc
	.value	0x21f
	.byte	0xf
	.long	0x241
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0xd
	.long	.LASF38
	.byte	0xc
	.value	0x221
	.byte	0xf
	.long	0x241
	.uleb128 0x2
	.long	.LASF39
	.byte	0xd
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF40
	.byte	0xd
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.long	0x272
	.uleb128 0x11
	.uleb128 0x2
	.long	.LASF41
	.byte	0xe
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF42
	.byte	0xf
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xb
	.long	.LASF43
	.byte	0x10
	.byte	0x66
	.byte	0x16
	.long	0x109
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x11
	.byte	0x29
	.byte	0x6
	.long	0x2af
	.uleb128 0x13
	.long	.LASF44
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x11
	.byte	0x2a
	.byte	0x6
	.long	0x2c4
	.uleb128 0x14
	.long	.LASF45
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x12
	.byte	0x2f
	.byte	0x1
	.long	0x323
	.uleb128 0x15
	.long	.LASF46
	.value	0x100
	.uleb128 0x15
	.long	.LASF47
	.value	0x200
	.uleb128 0x15
	.long	.LASF48
	.value	0x400
	.uleb128 0x15
	.long	.LASF49
	.value	0x800
	.uleb128 0x15
	.long	.LASF50
	.value	0x1000
	.uleb128 0x15
	.long	.LASF51
	.value	0x2000
	.uleb128 0x15
	.long	.LASF52
	.value	0x4000
	.uleb128 0x15
	.long	.LASF53
	.value	0x8000
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.uleb128 0x14
	.long	.LASF55
	.byte	0x2
	.uleb128 0x14
	.long	.LASF56
	.byte	0x4
	.uleb128 0x14
	.long	.LASF57
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0xd8
	.byte	0x13
	.byte	0x31
	.byte	0x8
	.long	0x4aa
	.uleb128 0x9
	.long	.LASF60
	.byte	0x13
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF61
	.byte	0x13
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF62
	.byte	0x13
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF63
	.byte	0x13
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF64
	.byte	0x13
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF65
	.byte	0x13
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF66
	.byte	0x13
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF67
	.byte	0x13
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF68
	.byte	0x13
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF69
	.byte	0x13
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF70
	.byte	0x13
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF71
	.byte	0x13
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF72
	.byte	0x13
	.byte	0x44
	.byte	0x16
	.long	0x4c3
	.byte	0x60
	.uleb128 0x9
	.long	.LASF73
	.byte	0x13
	.byte	0x46
	.byte	0x14
	.long	0x4c9
	.byte	0x68
	.uleb128 0x9
	.long	.LASF74
	.byte	0x13
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF75
	.byte	0x13
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF76
	.byte	0x13
	.byte	0x4a
	.byte	0xb
	.long	0x115
	.byte	0x78
	.uleb128 0x9
	.long	.LASF77
	.byte	0x13
	.byte	0x4d
	.byte	0x12
	.long	0xdf
	.byte	0x80
	.uleb128 0x9
	.long	.LASF78
	.byte	0x13
	.byte	0x4e
	.byte	0xf
	.long	0xf4
	.byte	0x82
	.uleb128 0x9
	.long	.LASF79
	.byte	0x13
	.byte	0x4f
	.byte	0x8
	.long	0x4cf
	.byte	0x83
	.uleb128 0x9
	.long	.LASF80
	.byte	0x13
	.byte	0x51
	.byte	0xf
	.long	0x4df
	.byte	0x88
	.uleb128 0x9
	.long	.LASF81
	.byte	0x13
	.byte	0x59
	.byte	0xd
	.long	0x121
	.byte	0x90
	.uleb128 0x9
	.long	.LASF82
	.byte	0x13
	.byte	0x5b
	.byte	0x17
	.long	0x4ea
	.byte	0x98
	.uleb128 0x9
	.long	.LASF83
	.byte	0x13
	.byte	0x5c
	.byte	0x19
	.long	0x4f5
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF84
	.byte	0x13
	.byte	0x5d
	.byte	0x14
	.long	0x4c9
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF85
	.byte	0x13
	.byte	0x5e
	.byte	0x9
	.long	0x139
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF86
	.byte	0x13
	.byte	0x5f
	.byte	0xa
	.long	0x15f
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF87
	.byte	0x13
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF88
	.byte	0x13
	.byte	0x62
	.byte	0x8
	.long	0x4fb
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF89
	.byte	0x14
	.byte	0x7
	.byte	0x19
	.long	0x323
	.uleb128 0x16
	.long	.LASF231
	.byte	0x13
	.byte	0x2b
	.byte	0xe
	.uleb128 0x17
	.long	.LASF90
	.uleb128 0x3
	.byte	0x8
	.long	0x4be
	.uleb128 0x3
	.byte	0x8
	.long	0x323
	.uleb128 0xe
	.long	0x3f
	.long	0x4df
	.uleb128 0xf
	.long	0xed
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4b6
	.uleb128 0x17
	.long	.LASF91
	.uleb128 0x3
	.byte	0x8
	.long	0x4e5
	.uleb128 0x17
	.long	.LASF92
	.uleb128 0x3
	.byte	0x8
	.long	0x4f0
	.uleb128 0xe
	.long	0x3f
	.long	0x50b
	.uleb128 0xf
	.long	0xed
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x15
	.byte	0x89
	.byte	0xe
	.long	0x517
	.uleb128 0x3
	.byte	0x8
	.long	0x4aa
	.uleb128 0x2
	.long	.LASF94
	.byte	0x15
	.byte	0x8a
	.byte	0xe
	.long	0x517
	.uleb128 0x2
	.long	.LASF95
	.byte	0x15
	.byte	0x8b
	.byte	0xe
	.long	0x517
	.uleb128 0x2
	.long	.LASF96
	.byte	0x16
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	0xc8
	.long	0x54c
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.long	0x541
	.uleb128 0x2
	.long	.LASF97
	.byte	0x16
	.byte	0x1b
	.byte	0x1a
	.long	0x54c
	.uleb128 0x2
	.long	.LASF98
	.byte	0x16
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF99
	.byte	0x16
	.byte	0x1f
	.byte	0x1a
	.long	0x54c
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x593
	.uleb128 0x1a
	.long	.LASF100
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF101
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0x46
	.long	0x59e
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.long	0x593
	.uleb128 0x2
	.long	.LASF102
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x59e
	.uleb128 0x2
	.long	.LASF103
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x610
	.uleb128 0x14
	.long	.LASF104
	.byte	0
	.uleb128 0x14
	.long	.LASF105
	.byte	0x1
	.uleb128 0x14
	.long	.LASF106
	.byte	0x2
	.uleb128 0x14
	.long	.LASF107
	.byte	0x3
	.uleb128 0x14
	.long	.LASF108
	.byte	0x4
	.uleb128 0x14
	.long	.LASF109
	.byte	0x5
	.uleb128 0x14
	.long	.LASF110
	.byte	0x6
	.uleb128 0x14
	.long	.LASF111
	.byte	0x7
	.uleb128 0x14
	.long	.LASF112
	.byte	0x8
	.uleb128 0x14
	.long	.LASF113
	.byte	0x9
	.uleb128 0x14
	.long	.LASF114
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x5bb
	.uleb128 0xd
	.long	.LASF115
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x54c
	.uleb128 0xe
	.long	0x610
	.long	0x62d
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.long	0x622
	.uleb128 0xd
	.long	.LASF116
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x62d
	.uleb128 0x17
	.long	.LASF117
	.uleb128 0x2
	.long	.LASF118
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x63f
	.uleb128 0xb
	.long	.LASF119
	.byte	0x1b
	.byte	0x3d
	.byte	0x10
	.long	0x1ff
	.uleb128 0x2
	.long	.LASF120
	.byte	0x1b
	.byte	0x3e
	.byte	0x19
	.long	0x650
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1c
	.byte	0x19
	.byte	0x6
	.long	0x699
	.uleb128 0x14
	.long	.LASF123
	.byte	0
	.uleb128 0x14
	.long	.LASF124
	.byte	0x1
	.uleb128 0x14
	.long	.LASF125
	.byte	0x2
	.uleb128 0x14
	.long	.LASF126
	.byte	0x3
	.uleb128 0x14
	.long	.LASF127
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF128
	.byte	0x1d
	.byte	0x11
	.byte	0x10
	.long	0x6a5
	.uleb128 0x3
	.byte	0x8
	.long	0x6ab
	.uleb128 0x1c
	.long	0x57
	.long	0x6c4
	.uleb128 0x1d
	.long	0x517
	.uleb128 0x1d
	.long	0x139
	.uleb128 0x1d
	.long	0x15f
	.byte	0
	.uleb128 0x2
	.long	.LASF129
	.byte	0x1e
	.byte	0x32
	.byte	0xf
	.long	0x1ff
	.uleb128 0x2
	.long	.LASF130
	.byte	0x1e
	.byte	0x35
	.byte	0x15
	.long	0xe6
	.uleb128 0x2
	.long	.LASF131
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1f
	.byte	0x2d
	.byte	0xe
	.long	0x71b
	.uleb128 0x14
	.long	.LASF132
	.byte	0
	.uleb128 0x14
	.long	.LASF133
	.byte	0x2
	.uleb128 0x14
	.long	.LASF134
	.byte	0x5
	.uleb128 0x14
	.long	.LASF135
	.byte	0x4
	.uleb128 0x14
	.long	.LASF136
	.byte	0x3
	.uleb128 0x14
	.long	.LASF137
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x2
	.byte	0x83
	.byte	0xd
	.long	0x731
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF138
	.uleb128 0x1e
	.long	.LASF140
	.byte	0x2
	.byte	0x86
	.byte	0xf
	.long	0x15f
	.uleb128 0x9
	.byte	0x3
	.quad	min_digest_line_length
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x2
	.byte	0x89
	.byte	0xf
	.long	0x15f
	.uleb128 0x9
	.byte	0x3
	.quad	digest_hex_bytes
	.uleb128 0x1e
	.long	.LASF142
	.byte	0x2
	.byte	0x8d
	.byte	0xd
	.long	0x731
	.uleb128 0x9
	.byte	0x3
	.quad	status_only
	.uleb128 0x1e
	.long	.LASF143
	.byte	0x2
	.byte	0x91
	.byte	0xd
	.long	0x731
	.uleb128 0x9
	.byte	0x3
	.quad	warn
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x2
	.byte	0x94
	.byte	0xd
	.long	0x731
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_missing
	.uleb128 0x1e
	.long	.LASF145
	.byte	0x2
	.byte	0x97
	.byte	0xd
	.long	0x731
	.uleb128 0x9
	.byte	0x3
	.quad	quiet
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x2
	.byte	0x9b
	.byte	0xd
	.long	0x731
	.uleb128 0x9
	.byte	0x3
	.quad	strict
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x2
	.byte	0x9e
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	bsd_reversed
	.uleb128 0x1e
	.long	.LASF148
	.byte	0x2
	.byte	0xa1
	.byte	0x16
	.long	0xd3
	.uleb128 0x9
	.byte	0x3
	.quad	delim
	.uleb128 0xe
	.long	0xc8
	.long	0x80e
	.uleb128 0xf
	.long	0xed
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x7fe
	.uleb128 0x1e
	.long	.LASF149
	.byte	0x2
	.byte	0xa4
	.byte	0x1a
	.long	0x80e
	.uleb128 0x9
	.byte	0x3
	.quad	algorithm_in_string
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x2
	.byte	0xa8
	.byte	0x1a
	.long	0x80e
	.uleb128 0x9
	.byte	0x3
	.quad	algorithm_out_string
	.uleb128 0x1b
	.long	.LASF151
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0xac
	.byte	0x6
	.long	0x858
	.uleb128 0x14
	.long	.LASF152
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF153
	.byte	0x2
	.byte	0xb3
	.byte	0x17
	.long	0x83f
	.uleb128 0x9
	.byte	0x3
	.quad	b2_algorithm
	.uleb128 0x1e
	.long	.LASF154
	.byte	0x2
	.byte	0xb4
	.byte	0x12
	.long	0x28b
	.uleb128 0x9
	.byte	0x3
	.quad	b2_length
	.uleb128 0xe
	.long	0x699
	.long	0x894
	.uleb128 0xf
	.long	0xed
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x2
	.byte	0xb5
	.byte	0x11
	.long	0x884
	.uleb128 0x9
	.byte	0x3
	.quad	blake2fns
	.uleb128 0xe
	.long	0x28b
	.long	0x8ba
	.uleb128 0xf
	.long	0xed
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF156
	.byte	0x2
	.byte	0xb9
	.byte	0x12
	.long	0x8aa
	.uleb128 0x9
	.byte	0x3
	.quad	blake2_max_len
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0xc2
	.byte	0x1
	.long	0x8fd
	.uleb128 0x14
	.long	.LASF157
	.byte	0x80
	.uleb128 0x14
	.long	.LASF158
	.byte	0x81
	.uleb128 0x14
	.long	.LASF159
	.byte	0x82
	.uleb128 0x14
	.long	.LASF160
	.byte	0x83
	.uleb128 0x14
	.long	.LASF161
	.byte	0x84
	.byte	0
	.uleb128 0xe
	.long	0xbd
	.long	0x90d
	.uleb128 0xf
	.long	0xed
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.long	0x8fd
	.uleb128 0x1e
	.long	.LASF162
	.byte	0x2
	.byte	0xca
	.byte	0x1c
	.long	0x90d
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1f
	.long	.LASF213
	.byte	0x2
	.value	0x35d
	.byte	0x1
	.long	0x57
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0xb0c
	.uleb128 0x20
	.long	.LASF163
	.byte	0x2
	.value	0x35d
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x20
	.long	.LASF164
	.byte	0x2
	.value	0x35d
	.byte	0x18
	.long	0x241
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x21
	.long	.LASF165
	.byte	0x2
	.value	0x35f
	.byte	0x11
	.long	0xb0c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF166
	.byte	0x2
	.value	0x361
	.byte	0x12
	.long	0xb1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.long	.LASF167
	.byte	0x2
	.value	0x362
	.byte	0x8
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.string	"opt"
	.byte	0x2
	.value	0x363
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x22
	.string	"ok"
	.byte	0x2
	.value	0x364
	.byte	0x8
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -183
	.uleb128 0x21
	.long	.LASF168
	.byte	0x2
	.value	0x365
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF169
	.byte	0x2
	.value	0x366
	.byte	0x8
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -182
	.uleb128 0x21
	.long	.LASF170
	.byte	0x2
	.value	0x376
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF171
	.byte	0x2
	.value	0x377
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x21
	.long	.LASF172
	.byte	0x2
	.value	0x40e
	.byte	0xa
	.long	0x241
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x23
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x24
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0xafa
	.uleb128 0x21
	.long	.LASF173
	.byte	0x2
	.value	0x412
	.byte	0xf
	.long	0x241
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x25
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x21
	.long	.LASF174
	.byte	0x2
	.value	0x414
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x21
	.long	.LASF175
	.byte	0x2
	.value	0x41a
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x21
	.long	.LASF176
	.byte	0x2
	.value	0x41b
	.byte	0x10
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -185
	.uleb128 0x25
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x21
	.long	.LASF177
	.byte	0x2
	.value	0x428
	.byte	0x14
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -181
	.uleb128 0x25
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x441
	.byte	0x1b
	.long	0x15f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0
	.uleb128 0xe
	.long	0xd3
	.long	0xb1c
	.uleb128 0xf
	.long	0xed
	.byte	0x47
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd3
	.uleb128 0x26
	.long	.LASF195
	.byte	0x2
	.value	0x28c
	.byte	0x1
	.long	0x731
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1e
	.uleb128 0x20
	.long	.LASF178
	.byte	0x2
	.value	0x28c
	.byte	0x1b
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x21
	.long	.LASF179
	.byte	0x2
	.value	0x28e
	.byte	0x9
	.long	0x517
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.long	.LASF180
	.byte	0x2
	.value	0x28f
	.byte	0xd
	.long	0x28b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF181
	.byte	0x2
	.value	0x290
	.byte	0xd
	.long	0x28b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF182
	.byte	0x2
	.value	0x291
	.byte	0xd
	.long	0x28b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x21
	.long	.LASF183
	.byte	0x2
	.value	0x292
	.byte	0xd
	.long	0x28b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF184
	.byte	0x2
	.value	0x293
	.byte	0x8
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -233
	.uleb128 0x21
	.long	.LASF185
	.byte	0x2
	.value	0x294
	.byte	0x8
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x21
	.long	.LASF165
	.byte	0x2
	.value	0x295
	.byte	0x11
	.long	0xb0c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF166
	.byte	0x2
	.value	0x297
	.byte	0x12
	.long	0xb1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF186
	.byte	0x2
	.value	0x298
	.byte	0xd
	.long	0x28b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x21
	.long	.LASF187
	.byte	0x2
	.value	0x299
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x21
	.long	.LASF188
	.byte	0x2
	.value	0x29a
	.byte	0xa
	.long	0x15f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x21
	.long	.LASF189
	.byte	0x2
	.value	0x29b
	.byte	0x8
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -231
	.uleb128 0x27
	.long	.Ldebug_ranges0+0
	.uleb128 0x21
	.long	.LASF190
	.byte	0x2
	.value	0x2b2
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x21
	.long	.LASF168
	.byte	0x2
	.value	0x2b3
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x21
	.long	.LASF191
	.byte	0x2
	.value	0x2b4
	.byte	0x16
	.long	0xb1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x21
	.long	.LASF192
	.byte	0x2
	.value	0x2b5
	.byte	0xf
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x25
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x21
	.long	.LASF193
	.byte	0x2
	.value	0x2da
	.byte	0x1d
	.long	0xd2e
	.uleb128 0x9
	.byte	0x3
	.quad	bin2hex.6507
	.uleb128 0x22
	.string	"ok"
	.byte	0x2
	.value	0x2de
	.byte	0x10
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -229
	.uleb128 0x21
	.long	.LASF176
	.byte	0x2
	.value	0x2df
	.byte	0x10
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -234
	.uleb128 0x21
	.long	.LASF177
	.byte	0x2
	.value	0x2e2
	.byte	0x10
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -230
	.uleb128 0x25
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x21
	.long	.LASF194
	.byte	0x2
	.value	0x2fa
	.byte	0x16
	.long	0x15f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.string	"cnt"
	.byte	0x2
	.value	0x2fb
	.byte	0x16
	.long	0x15f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x46
	.long	0xd2e
	.uleb128 0xf
	.long	0xed
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0xd1e
	.uleb128 0x26
	.long	.LASF196
	.byte	0x2
	.value	0x24f
	.byte	0x1
	.long	0x731
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc8
	.uleb128 0x20
	.long	.LASF190
	.byte	0x2
	.value	0x24f
	.byte	0x1a
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF168
	.byte	0x2
	.value	0x24f
	.byte	0x29
	.long	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF197
	.byte	0x2
	.value	0x24f
	.byte	0x40
	.long	0xb1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF176
	.byte	0x2
	.value	0x250
	.byte	0x14
	.long	0xdc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"fp"
	.byte	0x2
	.value	0x252
	.byte	0x9
	.long	0x517
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"err"
	.byte	0x2
	.value	0x253
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.long	.LASF189
	.byte	0x2
	.value	0x254
	.byte	0x8
	.long	0x731
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x731
	.uleb128 0x28
	.long	.LASF217
	.byte	0x2
	.value	0x226
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0e
	.uleb128 0x20
	.long	.LASF174
	.byte	0x2
	.value	0x226
	.byte	0x1d
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF198
	.byte	0x2
	.value	0x226
	.byte	0x28
	.long	0x731
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF199
	.byte	0x2
	.value	0x1a3
	.byte	0x1
	.long	0x731
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xf4b
	.uleb128 0x29
	.string	"s"
	.byte	0x2
	.value	0x1a3
	.byte	0x10
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF200
	.byte	0x2
	.value	0x1a3
	.byte	0x1a
	.long	0x15f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF191
	.byte	0x2
	.value	0x1a4
	.byte	0x1a
	.long	0xf4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.long	.LASF168
	.byte	0x2
	.value	0x1a4
	.byte	0x2b
	.long	0xcd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x20
	.long	.LASF201
	.byte	0x2
	.value	0x1a4
	.byte	0x3a
	.long	0x241
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.long	.LASF202
	.byte	0x2
	.value	0x1a6
	.byte	0x8
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -83
	.uleb128 0x21
	.long	.LASF203
	.byte	0x2
	.value	0x1a7
	.byte	0xa
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x1a9
	.byte	0xa
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"hp"
	.byte	0x2
	.value	0x1f0
	.byte	0x18
	.long	0xf51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x21
	.long	.LASF204
	.byte	0x2
	.value	0x1bb
	.byte	0x13
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF205
	.byte	0x2
	.value	0x1bf
	.byte	0xc
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.value	0x1c0
	.byte	0xc
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x21
	.long	.LASF207
	.byte	0x2
	.value	0x1c2
	.byte	0x11
	.long	0x1eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x21
	.long	.LASF208
	.byte	0x2
	.value	0x1cc
	.byte	0x15
	.long	0x28b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF209
	.byte	0x2
	.value	0x1cd
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xb1c
	.uleb128 0x3
	.byte	0x8
	.long	0xda
	.uleb128 0x26
	.long	.LASF210
	.byte	0x2
	.value	0x177
	.byte	0x1
	.long	0x731
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xfd8
	.uleb128 0x29
	.string	"s"
	.byte	0x2
	.value	0x177
	.byte	0x14
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF200
	.byte	0x2
	.value	0x177
	.byte	0x1e
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF191
	.byte	0x2
	.value	0x177
	.byte	0x35
	.long	0xf4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF201
	.byte	0x2
	.value	0x178
	.byte	0x15
	.long	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF202
	.byte	0x2
	.value	0x178
	.byte	0x25
	.long	0x731
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x17a
	.byte	0xa
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF211
	.byte	0x2
	.value	0x167
	.byte	0x1
	.long	0x731
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x102a
	.uleb128 0x29
	.string	"s"
	.byte	0x2
	.value	0x167
	.byte	0x22
	.long	0xf51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x169
	.byte	0x15
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF212
	.byte	0x2
	.value	0x138
	.byte	0x1
	.long	0x39
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x109c
	.uleb128 0x29
	.string	"s"
	.byte	0x2
	.value	0x138
	.byte	0x1a
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF200
	.byte	0x2
	.value	0x138
	.byte	0x24
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"dst"
	.byte	0x2
	.value	0x13a
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x13c
	.byte	0xf
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF214
	.byte	0x2
	.byte	0xdf
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x10ca
	.uleb128 0x2c
	.long	.LASF215
	.byte	0x2
	.byte	0xdf
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF216
	.byte	0x1
	.value	0x2ba
	.byte	0x1
	.long	0x39
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x10fc
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x2ba
	.byte	0x17
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF218
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x11a1
	.uleb128 0x20
	.long	.LASF219
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.long	.LASF220
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1157
	.uleb128 0x2e
	.long	.LASF219
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x2e
	.long	.LASF221
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x112c
	.uleb128 0x21
	.long	.LASF220
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x11b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF221
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF222
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x11b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF223
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0x1157
	.long	0x11b1
	.uleb128 0xf
	.long	0xed
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x11a1
	.uleb128 0x3
	.byte	0x8
	.long	0x1157
	.uleb128 0x2f
	.long	.LASF232
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF224
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.long	0x139
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1239
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.value	0x1f5
	.byte	0x18
	.long	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF225
	.byte	0x1
	.value	0x1f5
	.byte	0x24
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"p0"
	.byte	0x1
	.value	0x1f7
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"p1"
	.byte	0x1
	.value	0x1f8
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF226
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	0xed
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.byte	0xb7
	.byte	0x1a
	.long	0x28b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1
	.byte	0xbb
	.byte	0x8
	.uleb128 0x13
	.long	.LASF227
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"__off_t"
.LASF53:
	.string	"_ISgraph"
.LASF112:
	.string	"locale_quoting_style"
.LASF73:
	.string	"_chain"
.LASF58:
	.string	"option"
.LASF142:
	.string	"status_only"
.LASF101:
	.string	"GETOPT_VERSION_CHAR"
.LASF161:
	.string	"TAG_OPTION"
.LASF121:
	.string	"quoting_style"
.LASF22:
	.string	"size_t"
.LASF45:
	.string	"LOG10_TIMESPEC_HZ"
.LASF207:
	.string	"algo"
.LASF79:
	.string	"_shortbuf"
.LASF202:
	.string	"escaped_filename"
.LASF144:
	.string	"ignore_missing"
.LASF51:
	.string	"_ISspace"
.LASF20:
	.string	"ssize_t"
.LASF105:
	.string	"shell_quoting_style"
.LASF157:
	.string	"IGNORE_MISSING_OPTION"
.LASF158:
	.string	"STATUS_OPTION"
.LASF100:
	.string	"GETOPT_HELP_CHAR"
.LASF128:
	.string	"blake2fn"
.LASF67:
	.string	"_IO_buf_base"
.LASF155:
	.string	"blake2fns"
.LASF24:
	.string	"long long unsigned int"
.LASF124:
	.string	"LONGINT_OVERFLOW"
.LASF94:
	.string	"stdout"
.LASF48:
	.string	"_ISalpha"
.LASF176:
	.string	"missing"
.LASF151:
	.string	"Algorithm"
.LASF140:
	.string	"min_digest_line_length"
.LASF125:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF49:
	.string	"_ISdigit"
.LASF194:
	.string	"digest_bin_bytes"
.LASF28:
	.string	"__timezone"
.LASF168:
	.string	"binary"
.LASF25:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF172:
	.string	"operand_lim"
.LASF196:
	.string	"digest_file"
.LASF43:
	.string	"uintmax_t"
.LASF219:
	.string	"program"
.LASF111:
	.string	"escape_quoting_style"
.LASF127:
	.string	"LONGINT_INVALID"
.LASF104:
	.string	"literal_quoting_style"
.LASF74:
	.string	"_fileno"
.LASF148:
	.string	"delim"
.LASF166:
	.string	"bin_buffer"
.LASF36:
	.string	"sys_siglist"
.LASF14:
	.string	"long int"
.LASF23:
	.string	"_gl_cxxalias_dummy"
.LASF162:
	.string	"long_options"
.LASF193:
	.string	"bin2hex"
.LASF60:
	.string	"_flags"
.LASF232:
	.string	"emit_stdin_note"
.LASF19:
	.string	"__ssize_t"
.LASF57:
	.string	"_ISalnum"
.LASF178:
	.string	"checkfile_name"
.LASF40:
	.string	"program_invocation_short_name"
.LASF109:
	.string	"c_quoting_style"
.LASF91:
	.string	"_IO_codecvt"
.LASF99:
	.string	"_sys_errlist"
.LASF165:
	.string	"bin_buffer_unaligned"
.LASF119:
	.string	"argmatch_exit_fn"
.LASF39:
	.string	"program_invocation_name"
.LASF76:
	.string	"_old_offset"
.LASF81:
	.string	"_offset"
.LASF184:
	.string	"properly_formatted_lines"
.LASF192:
	.string	"line_length"
.LASF54:
	.string	"_ISblank"
.LASF187:
	.string	"line"
.LASF44:
	.string	"TIMESPEC_HZ"
.LASF217:
	.string	"print_filename"
.LASF108:
	.string	"shell_escape_always_quoting_style"
.LASF31:
	.string	"timezone"
.LASF56:
	.string	"_ISpunct"
.LASF103:
	.string	"program_name"
.LASF199:
	.string	"split_3"
.LASF201:
	.string	"file_name"
.LASF93:
	.string	"stdin"
.LASF10:
	.string	"unsigned int"
.LASF85:
	.string	"_freeres_buf"
.LASF173:
	.string	"operandp"
.LASF169:
	.string	"prefix_tag"
.LASF11:
	.string	"long unsigned int"
.LASF106:
	.string	"shell_always_quoting_style"
.LASF143:
	.string	"warn"
.LASF65:
	.string	"_IO_write_ptr"
.LASF5:
	.string	"name"
.LASF197:
	.string	"bin_result"
.LASF96:
	.string	"sys_nerr"
.LASF183:
	.string	"n_open_or_read_failures"
.LASF228:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF114:
	.string	"custom_quoting_style"
.LASF9:
	.string	"short unsigned int"
.LASF131:
	.string	"error_one_per_line"
.LASF152:
	.string	"BLAKE2b"
.LASF41:
	.string	"Version"
.LASF156:
	.string	"blake2_max_len"
.LASF69:
	.string	"_IO_save_base"
.LASF229:
	.string	"src/md5sum.c"
.LASF38:
	.string	"environ"
.LASF160:
	.string	"STRICT_OPTION"
.LASF145:
	.string	"quiet"
.LASF80:
	.string	"_lock"
.LASF150:
	.string	"algorithm_out_string"
.LASF75:
	.string	"_flags2"
.LASF87:
	.string	"_mode"
.LASF122:
	.string	"strtol_error"
.LASF133:
	.string	"FADVISE_SEQUENTIAL"
.LASF175:
	.string	"file_is_binary"
.LASF33:
	.string	"ptrdiff_t"
.LASF102:
	.string	"version_etc_copyright"
.LASF83:
	.string	"_wide_data"
.LASF171:
	.string	"b2_length_str"
.LASF82:
	.string	"_codecvt"
.LASF204:
	.string	"algo_name"
.LASF181:
	.string	"n_improperly_formatted_lines"
.LASF62:
	.string	"_IO_read_end"
.LASF0:
	.string	"optarg"
.LASF191:
	.string	"hex_digest"
.LASF32:
	.string	"getdate_err"
.LASF224:
	.string	"ptr_align"
.LASF190:
	.string	"filename"
.LASF1:
	.string	"optind"
.LASF61:
	.string	"_IO_read_ptr"
.LASF17:
	.string	"__off64_t"
.LASF154:
	.string	"b2_length"
.LASF200:
	.string	"s_len"
.LASF231:
	.string	"_IO_lock_t"
.LASF59:
	.string	"_IO_FILE"
.LASF129:
	.string	"error_print_progname"
.LASF195:
	.string	"digest_check"
.LASF222:
	.string	"map_prog"
.LASF37:
	.string	"__environ"
.LASF21:
	.string	"time_t"
.LASF95:
	.string	"stderr"
.LASF141:
	.string	"digest_hex_bytes"
.LASF206:
	.string	"openssl_format"
.LASF153:
	.string	"b2_algorithm"
.LASF90:
	.string	"_IO_marker"
.LASF97:
	.string	"sys_errlist"
.LASF225:
	.string	"alignment"
.LASF72:
	.string	"_markers"
.LASF123:
	.string	"LONGINT_OK"
.LASF177:
	.string	"needs_escape"
.LASF146:
	.string	"strict"
.LASF170:
	.string	"short_opts"
.LASF120:
	.string	"argmatch_die"
.LASF110:
	.string	"c_maybe_quoting_style"
.LASF138:
	.string	"_Bool"
.LASF8:
	.string	"unsigned char"
.LASF203:
	.string	"algo_name_len"
.LASF163:
	.string	"argc"
.LASF221:
	.string	"node"
.LASF68:
	.string	"_IO_buf_end"
.LASF13:
	.string	"short int"
.LASF174:
	.string	"file"
.LASF88:
	.string	"_unused2"
.LASF7:
	.string	"flag"
.LASF98:
	.string	"_sys_nerr"
.LASF78:
	.string	"_vtable_offset"
.LASF29:
	.string	"tzname"
.LASF179:
	.string	"checkfile_stream"
.LASF89:
	.string	"FILE"
.LASF42:
	.string	"exit_failure"
.LASF137:
	.string	"FADVISE_RANDOM"
.LASF107:
	.string	"shell_escape_quoting_style"
.LASF134:
	.string	"FADVISE_NOREUSE"
.LASF115:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF30:
	.string	"daylight"
.LASF189:
	.string	"is_stdin"
.LASF34:
	.string	"long double"
.LASF180:
	.string	"n_misformatted_lines"
.LASF2:
	.string	"char"
.LASF135:
	.string	"FADVISE_DONTNEED"
.LASF116:
	.string	"quoting_style_vals"
.LASF55:
	.string	"_IScntrl"
.LASF18:
	.string	"__time_t"
.LASF50:
	.string	"_ISxdigit"
.LASF113:
	.string	"clocale_quoting_style"
.LASF185:
	.string	"matched_checksums"
.LASF167:
	.string	"do_check"
.LASF3:
	.string	"opterr"
.LASF212:
	.string	"filename_unescape"
.LASF15:
	.string	"__uintmax_t"
.LASF132:
	.string	"FADVISE_NORMAL"
.LASF117:
	.string	"quoting_options"
.LASF77:
	.string	"_cur_column"
.LASF63:
	.string	"_IO_read_base"
.LASF71:
	.string	"_IO_save_end"
.LASF35:
	.string	"_sys_siglist"
.LASF139:
	.string	"have_read_stdin"
.LASF220:
	.string	"infomap"
.LASF208:
	.string	"length"
.LASF6:
	.string	"has_arg"
.LASF214:
	.string	"usage"
.LASF86:
	.string	"__pad5"
.LASF182:
	.string	"n_mismatched_checksums"
.LASF66:
	.string	"_IO_write_end"
.LASF186:
	.string	"line_number"
.LASF149:
	.string	"algorithm_in_string"
.LASF226:
	.string	"select_plural"
.LASF198:
	.string	"escape"
.LASF164:
	.string	"argv"
.LASF27:
	.string	"__daylight"
.LASF215:
	.string	"status"
.LASF230:
	.string	"/root/coreutils"
.LASF227:
	.string	"PLURAL_REDUCER"
.LASF209:
	.string	"siend"
.LASF46:
	.string	"_ISupper"
.LASF126:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF70:
	.string	"_IO_backup_base"
.LASF211:
	.string	"hex_digits"
.LASF130:
	.string	"error_message_count"
.LASF223:
	.string	"lc_messages"
.LASF188:
	.string	"line_chars_allocated"
.LASF47:
	.string	"_ISlower"
.LASF84:
	.string	"_freeres_list"
.LASF92:
	.string	"_IO_wide_data"
.LASF205:
	.string	"length_specified"
.LASF136:
	.string	"FADVISE_WILLNEED"
.LASF118:
	.string	"quote_quoting_options"
.LASF26:
	.string	"__tzname"
.LASF213:
	.string	"main"
.LASF64:
	.string	"_IO_write_base"
.LASF218:
	.string	"emit_ancillary_info"
.LASF147:
	.string	"bsd_reversed"
.LASF52:
	.string	"_ISprint"
.LASF210:
	.string	"bsd_split_3"
.LASF216:
	.string	"bad_cast"
.LASF159:
	.string	"QUIET_OPTION"
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
