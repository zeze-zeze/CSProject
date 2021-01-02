	.file	"expand.c"
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
	.section	.rodata
	.align 32
	.type	shortopts, @object
	.size	shortopts, 34
shortopts:
	.string	"it:0::1::2::3::4::5::6::7::8::9::"
.LC20:
	.string	"tabs"
.LC21:
	.string	"initial"
.LC22:
	.string	"help"
.LC23:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 160
longopts:
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC23
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
.LC24:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC25:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC26:
	.string	"Convert tabs in each FILE to spaces, writing to standard output.\n"
	.align 8
.LC27:
	.string	"  -i, --initial    do not convert tabs after non blanks\n  -t, --tabs=N     have tabs N characters apart, not 8\n"
	.align 8
.LC28:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC29:
	.string	"      --version  output version information and exit\n"
.LC30:
	.string	"expand"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/expand.c"
	.loc 2 64 1 is_stmt 1
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
	.loc 2 65 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 66 5
	movq	program_name(%rip), %rbx
	leaq	.LC24(%rip), %rdi
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
	.loc 2 69 7
	movq	program_name(%rip), %rbx
	.loc 2 69 15
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	.loc 2 69 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 73 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 77 7
	call	emit_stdin_note
	.loc 2 78 7
	call	emit_mandatory_arg_note
	.loc 2 80 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 84 7
	call	emit_tab_list_info@PLT
	.loc 2 85 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 86 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 87 7
	leaq	.LC30(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 89 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC31:
	.string	"input line is too long"
.LC32:
	.string	"write error"
	.text
	.type	expand, @function
expand:
.LFB47:
	.loc 2 98 1
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
	.loc 2 98 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 100 14
	movl	$0, %edi
	call	next_file@PLT
	movq	%rax, -48(%rbp)
	.loc 2 102 6
	cmpq	$0, -48(%rbp)
	je	.L36
.L16:
.LBB2:
	.loc 2 111 12
	movb	$1, -61(%rbp)
	.loc 2 118 17
	movq	$0, -40(%rbp)
	.loc 2 121 14
	movq	$0, -56(%rbp)
	.loc 2 128 17
	jmp	.L18
.L20:
	.loc 2 129 13
	nop
.L18:
	.loc 2 128 23
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -60(%rbp)
	.loc 2 128 17
	cmpl	$0, -60(%rbp)
	jns	.L19
	.loc 2 128 47 discriminator 1
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	next_file@PLT
	movq	%rax, -48(%rbp)
	.loc 2 128 38 discriminator 1
	cmpq	$0, -48(%rbp)
	jne	.L20
.L19:
	.loc 2 131 14
	cmpb	$0, -61(%rbp)
	je	.L21
	.loc 2 133 18
	cmpl	$9, -60(%rbp)
	jne	.L22
.LBB3:
	.loc 2 137 24
	movb	$0, -62(%rbp)
	.loc 2 139 37
	leaq	-62(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_next_tab_column@PLT
	movq	%rax, -32(%rbp)
	.loc 2 142 23
	movzbl	-62(%rbp), %eax
	.loc 2 142 22
	testb	%al, %al
	je	.L23
	.loc 2 143 37
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.L23:
	.loc 2 145 22
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L25
.LBB4:
	.loc 2 146 21
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L26:
.LBE4:
	.loc 2 149 25
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 2 149 24
	testl	%eax, %eax
	jns	.L25
.LBB5:
	.loc 2 150 23
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L25:
.LBE5:
	.loc 2 148 25
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L26
	.loc 2 152 21
	movl	$32, -60(%rbp)
.LBE3:
	jmp	.L27
.L22:
	.loc 2 154 23
	cmpl	$8, -60(%rbp)
	jne	.L28
	.loc 2 158 29
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 2 158 26
	subq	%rax, -40(%rbp)
	.loc 2 159 29
	movq	-56(%rbp), %rdx
	.loc 2 159 32
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	.loc 2 159 29
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -56(%rbp)
	jmp	.L27
.L28:
	.loc 2 163 25
	addq	$1, -40(%rbp)
	.loc 2 164 22
	cmpq	$0, -40(%rbp)
	jne	.L27
.LBB6:
	.loc 2 165 21
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L27:
.LBE6:
	.loc 2 168 23
	movzbl	-61(%rbp), %ebx
	.loc 2 168 26
	movzbl	convert_entire_line(%rip), %eax
	.loc 2 168 46
	testb	%al, %al
	jne	.L29
	.loc 2 168 52 discriminator 2
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	.loc 2 168 46 discriminator 2
	testl	%eax, %eax
	je	.L30
.L29:
	.loc 2 168 46 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L31
.L30:
	.loc 2 168 46 discriminator 4
	movl	$0, %eax
.L31:
	.loc 2 168 23 is_stmt 1 discriminator 6
	andl	%ebx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -61(%rbp)
.L21:
	.loc 2 171 14
	cmpl	$0, -60(%rbp)
	js	.L37
	.loc 2 174 15
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 174 14
	testl	%eax, %eax
	jns	.L33
.LBB7:
	.loc 2 175 13
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L33:
.LBE7:
	.loc 2 177 7
	cmpl	$10, -60(%rbp)
	jne	.L18
.LBE2:
	.loc 2 106 5
	jmp	.L16
.L36:
	.loc 2 103 5
	nop
	jmp	.L15
.L37:
.LBB8:
	.loc 2 172 13
	nop
.L15:
.LBE8:
	.loc 2 179 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	expand, .-expand
	.section	.rodata
.LC33:
	.string	"/usr/local/share/locale"
.LC34:
	.string	"David MacKenzie"
	.text
	.globl	main
	.type	main, @function
main:
.LFB48:
	.loc 2 183 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 183 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 187 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 188 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 189 3
	leaq	.LC33(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 190 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 192 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 193 23
	movb	$1, convert_entire_line(%rip)
	.loc 2 195 9
	jmp	.L39
.L48:
	.loc 2 197 7
	cmpl	$116, -16(%rbp)
	je	.L40
	cmpl	$116, -16(%rbp)
	jg	.L41
	cmpl	$105, -16(%rbp)
	je	.L42
	cmpl	$105, -16(%rbp)
	jg	.L41
	cmpl	$57, -16(%rbp)
	jg	.L41
	cmpl	$48, -16(%rbp)
	jge	.L43
	cmpl	$-131, -16(%rbp)
	je	.L44
	cmpl	$-130, -16(%rbp)
	je	.L45
	jmp	.L41
.L42:
	.loc 2 200 31
	movb	$0, convert_entire_line(%rip)
	.loc 2 201 11
	jmp	.L39
.L40:
	.loc 2 204 11
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	parse_tab_stops@PLT
	.loc 2 205 11
	jmp	.L39
.L43:
	.loc 2 209 15
	movq	optarg(%rip), %rax
	.loc 2 209 14
	testq	%rax, %rax
	je	.L46
	.loc 2 210 13
	movq	optarg(%rip), %rax
	.loc 2 210 37
	subq	$1, %rax
	.loc 2 210 13
	movq	%rax, %rdi
	call	parse_tab_stops@PLT
	jmp	.L39
.L46:
.LBB9:
	.loc 2 214 27
	movl	-16(%rbp), %eax
	movb	%al, -10(%rbp)
	.loc 2 215 27
	movb	$0, -9(%rbp)
	.loc 2 216 15
	leaq	-10(%rbp), %rax
	movq	%rax, %rdi
	call	parse_tab_stops@PLT
.LBE9:
	.loc 2 218 11
	jmp	.L39
.L45:
	.loc 2 220 9
	movl	$0, %edi
	call	usage
.L44:
	.loc 2 222 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC34(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L41:
	.loc 2 225 11
	movl	$1, %edi
	call	usage
.L39:
	.loc 2 195 15
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	shortopts(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -16(%rbp)
	.loc 2 195 9
	cmpl	$-1, -16(%rbp)
	jne	.L48
	.loc 2 229 3
	call	finalize_tab_stops@PLT
	.loc 2 231 27
	movl	optind(%rip), %eax
	.loc 2 231 3
	cmpl	%eax, -20(%rbp)
	jle	.L49
	.loc 2 231 42 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 231 3 discriminator 1
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L50
.L49:
	.loc 2 231 3 is_stmt 0 discriminator 2
	movl	$0, %eax
.L50:
	.loc 2 231 3 discriminator 4
	movq	%rax, %rdi
	call	set_file_list@PLT
	.loc 2 233 3 is_stmt 1 discriminator 4
	call	expand
	.loc 2 235 3 discriminator 4
	call	cleanup_file_list_stdin@PLT
	.loc 2 237 10 discriminator 4
	movl	exit_status(%rip), %eax
	.loc 2 238 1 discriminator 4
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L52
	.loc 2 238 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	main, .-main
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
	.file 21 "/usr/include/ctype.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/error.h"
	.file 26 "src/expand-common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x93d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF143
	.byte	0xc
	.long	.LASF144
	.long	.LASF145
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
	.uleb128 0x7
	.byte	0x8
	.long	0xae
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	0xae
	.uleb128 0x9
	.long	.LASF62
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x241
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xa8
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xa8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xa8
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xa8
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xa8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xa8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xa8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xa8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xa8
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x25a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x260
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x266
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x276
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x281
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x28c
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x260
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x292
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xba
	.uleb128 0xb
	.long	.LASF146
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x255
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0xd
	.long	0xae
	.long	0x276
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x27c
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x287
	.uleb128 0xd
	.long	0xae
	.long	0x2a2
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb5
	.uleb128 0x8
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2b9
	.uleb128 0x7
	.byte	0x8
	.long	0x241
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2a8
	.long	0x2ee
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2e3
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2ee
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0x9c
	.uleb128 0x11
	.long	.LASF56
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0xf
	.long	.LASF58
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF59
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF63
	.byte	0x20
	.byte	0xc
	.byte	0x32
	.byte	0x8
	.long	0x3b7
	.uleb128 0xa
	.long	.LASF64
	.byte	0xc
	.byte	0x34
	.byte	0xf
	.long	0x2a2
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x38
	.byte	0x8
	.long	0x3bc
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
	.long	0x375
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0xa8
	.long	0x3d2
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF67
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3c2
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3c2
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF73
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x427
	.uleb128 0xd
	.long	0x2a8
	.long	0x43e
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x42e
	.uleb128 0x11
	.long	.LASF74
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x43e
	.uleb128 0x11
	.long	.LASF75
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x43e
	.uleb128 0x11
	.long	.LASF76
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x46a
	.uleb128 0x7
	.byte	0x8
	.long	0xa8
	.uleb128 0x11
	.long	.LASF77
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x46a
	.uleb128 0xf
	.long	.LASF78
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF79
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF80
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF81
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF82
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
	.long	0x4d1
	.uleb128 0x15
	.long	.LASF83
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x4e6
	.uleb128 0x16
	.long	.LASF84
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
	.byte	0x2f
	.byte	0x1
	.long	0x545
	.uleb128 0x17
	.long	.LASF85
	.value	0x100
	.uleb128 0x17
	.long	.LASF86
	.value	0x200
	.uleb128 0x17
	.long	.LASF87
	.value	0x400
	.uleb128 0x17
	.long	.LASF88
	.value	0x800
	.uleb128 0x17
	.long	.LASF89
	.value	0x1000
	.uleb128 0x17
	.long	.LASF90
	.value	0x2000
	.uleb128 0x17
	.long	.LASF91
	.value	0x4000
	.uleb128 0x17
	.long	.LASF92
	.value	0x8000
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.uleb128 0x16
	.long	.LASF94
	.byte	0x2
	.uleb128 0x16
	.long	.LASF95
	.byte	0x4
	.uleb128 0x16
	.long	.LASF96
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x563
	.uleb128 0x19
	.long	.LASF97
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF98
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xb5
	.long	0x56e
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x563
	.uleb128 0xf
	.long	.LASF99
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x56e
	.uleb128 0xf
	.long	.LASF100
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x2a2
	.uleb128 0x1a
	.long	.LASF147
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x5e0
	.uleb128 0x16
	.long	.LASF101
	.byte	0
	.uleb128 0x16
	.long	.LASF102
	.byte	0x1
	.uleb128 0x16
	.long	.LASF103
	.byte	0x2
	.uleb128 0x16
	.long	.LASF104
	.byte	0x3
	.uleb128 0x16
	.long	.LASF105
	.byte	0x4
	.uleb128 0x16
	.long	.LASF106
	.byte	0x5
	.uleb128 0x16
	.long	.LASF107
	.byte	0x6
	.uleb128 0x16
	.long	.LASF108
	.byte	0x7
	.uleb128 0x16
	.long	.LASF109
	.byte	0x8
	.uleb128 0x16
	.long	.LASF110
	.byte	0x9
	.uleb128 0x16
	.long	.LASF111
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x58b
	.uleb128 0x11
	.long	.LASF112
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xd
	.long	0x5e0
	.long	0x5fd
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5f2
	.uleb128 0x11
	.long	.LASF113
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x5fd
	.uleb128 0xf
	.long	.LASF114
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x428
	.uleb128 0xf
	.long	.LASF115
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF116
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF117
	.byte	0x1a
	.byte	0x14
	.byte	0xd
	.long	0x63f
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF118
	.uleb128 0xf
	.long	.LASF119
	.byte	0x1a
	.byte	0x17
	.byte	0xf
	.long	0x2d
	.uleb128 0xf
	.long	.LASF120
	.byte	0x1a
	.byte	0x23
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0xb5
	.long	0x66e
	.uleb128 0xe
	.long	0x39
	.byte	0x21
	.byte	0
	.uleb128 0x8
	.long	0x65e
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x2
	.byte	0x33
	.byte	0x13
	.long	0x66e
	.uleb128 0x9
	.byte	0x3
	.quad	shortopts
	.uleb128 0xd
	.long	0x3b7
	.long	0x699
	.uleb128 0xe
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x689
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x2
	.byte	0x35
	.byte	0x1c
	.long	0x699
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF131
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x723
	.uleb128 0x1d
	.long	.LASF123
	.byte	0x2
	.byte	0xb6
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x2
	.byte	0xb6
	.byte	0x18
	.long	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.byte	0xb8
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1b
	.long	.LASF125
	.byte	0x2
	.byte	0xd5
	.byte	0x14
	.long	0x723
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xae
	.long	0x733
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.long	.LASF134
	.byte	0x2
	.byte	0x61
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x81c
	.uleb128 0x1e
	.string	"fp"
	.byte	0x2
	.byte	0x64
	.byte	0x9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.Ldebug_ranges0+0
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.byte	0x6c
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x2
	.byte	0x6f
	.byte	0xc
	.long	0x63f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x1b
	.long	.LASF127
	.byte	0x2
	.byte	0x76
	.byte	0x11
	.long	0x4ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x2
	.byte	0x79
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x7f8
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x2
	.byte	0x88
	.byte	0x1d
	.long	0x4ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x2
	.byte	0x89
	.byte	0x18
	.long	0x63f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x23
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x23
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0x23
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x23
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF132
	.byte	0x2
	.byte	0x3f
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x84a
	.uleb128 0x1d
	.long	.LASF133
	.byte	0x2
	.byte	0x3f
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF135
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ef
	.uleb128 0x26
	.long	.LASF136
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.long	.LASF137
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x8a5
	.uleb128 0x28
	.long	.LASF136
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2a2
	.byte	0
	.uleb128 0x28
	.long	.LASF138
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2a2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x87a
	.uleb128 0x29
	.long	.LASF137
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x8ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.long	.LASF138
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x29
	.long	.LASF139
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x904
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.long	.LASF140
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x8a5
	.long	0x8ff
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x8ef
	.uleb128 0x7
	.byte	0x8
	.long	0x8a5
	.uleb128 0x2a
	.long	.LASF141
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF142
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.byte	0
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF119:
	.string	"max_column_width"
.LASF9:
	.string	"__off_t"
.LASF92:
	.string	"_ISgraph"
.LASF109:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF98:
	.string	"GETOPT_VERSION_CHAR"
.LASF122:
	.string	"longopts"
.LASF147:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF32:
	.string	"_shortbuf"
.LASF90:
	.string	"_ISspace"
.LASF102:
	.string	"shell_quoting_style"
.LASF97:
	.string	"GETOPT_HELP_CHAR"
.LASF20:
	.string	"_IO_buf_base"
.LASF57:
	.string	"long long unsigned int"
.LASF87:
	.string	"_ISalpha"
.LASF35:
	.string	"_codecvt"
.LASF88:
	.string	"_ISdigit"
.LASF69:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF113:
	.string	"quoting_style_vals"
.LASF82:
	.string	"uintmax_t"
.LASF136:
	.string	"program"
.LASF108:
	.string	"escape_quoting_style"
.LASF101:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF75:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF13:
	.string	"_flags"
.LASF142:
	.string	"emit_stdin_note"
.LASF36:
	.string	"_wide_data"
.LASF96:
	.string	"_ISalnum"
.LASF30:
	.string	"_cur_column"
.LASF79:
	.string	"program_invocation_short_name"
.LASF106:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF78:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF93:
	.string	"_ISblank"
.LASF83:
	.string	"TIMESPEC_HZ"
.LASF105:
	.string	"shell_escape_always_quoting_style"
.LASF72:
	.string	"timezone"
.LASF95:
	.string	"_ISpunct"
.LASF100:
	.string	"program_name"
.LASF134:
	.string	"expand"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF64:
	.string	"name"
.LASF49:
	.string	"sys_nerr"
.LASF143:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF111:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF116:
	.string	"error_one_per_line"
.LASF80:
	.string	"Version"
.LASF130:
	.string	"last_tab"
.LASF22:
	.string	"_IO_save_base"
.LASF77:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"stdout"
.LASF99:
	.string	"version_etc_copyright"
.LASF121:
	.string	"shortopts"
.LASF58:
	.string	"optarg"
.LASF73:
	.string	"getdate_err"
.LASF59:
	.string	"optind"
.LASF14:
	.string	"_IO_read_ptr"
.LASF146:
	.string	"_IO_lock_t"
.LASF62:
	.string	"_IO_FILE"
.LASF114:
	.string	"error_print_progname"
.LASF139:
	.string	"map_prog"
.LASF76:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF50:
	.string	"sys_errlist"
.LASF25:
	.string	"_markers"
.LASF117:
	.string	"convert_entire_line"
.LASF107:
	.string	"c_maybe_quoting_style"
.LASF118:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF120:
	.string	"exit_status"
.LASF138:
	.string	"node"
.LASF21:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF63:
	.string	"option"
.LASF66:
	.string	"flag"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF70:
	.string	"tzname"
.LASF42:
	.string	"FILE"
.LASF81:
	.string	"exit_failure"
.LASF104:
	.string	"shell_escape_quoting_style"
.LASF112:
	.string	"quoting_style_args"
.LASF61:
	.string	"optopt"
.LASF71:
	.string	"daylight"
.LASF128:
	.string	"tab_index"
.LASF54:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF103:
	.string	"shell_always_quoting_style"
.LASF94:
	.string	"_IScntrl"
.LASF11:
	.string	"__time_t"
.LASF89:
	.string	"_ISxdigit"
.LASF110:
	.string	"clocale_quoting_style"
.LASF86:
	.string	"_ISlower"
.LASF60:
	.string	"opterr"
.LASF8:
	.string	"__uintmax_t"
.LASF10:
	.string	"__off64_t"
.LASF126:
	.string	"convert"
.LASF16:
	.string	"_IO_read_base"
.LASF127:
	.string	"column"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"_sys_siglist"
.LASF137:
	.string	"infomap"
.LASF65:
	.string	"has_arg"
.LASF132:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF144:
	.string	"src/expand.c"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF124:
	.string	"argv"
.LASF125:
	.string	"tab_stop"
.LASF68:
	.string	"__daylight"
.LASF133:
	.string	"status"
.LASF145:
	.string	"/root/coreutils"
.LASF129:
	.string	"next_tab_column"
.LASF85:
	.string	"_ISupper"
.LASF23:
	.string	"_IO_backup_base"
.LASF115:
	.string	"error_message_count"
.LASF140:
	.string	"lc_messages"
.LASF123:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF141:
	.string	"emit_mandatory_arg_note"
.LASF67:
	.string	"__tzname"
.LASF131:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF135:
	.string	"emit_ancillary_info"
.LASF91:
	.string	"_ISprint"
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
