	.file	"unexpand.c"
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
.LC20:
	.string	"tabs"
.LC21:
	.string	"all"
.LC22:
	.string	"first-only"
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
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
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
	.string	"Convert blanks in each FILE to tabs, writing to standard output.\n"
	.align 8
.LC28:
	.string	"  -a, --all        convert all blanks, instead of just initial blanks\n      --first-only  convert only leading sequences of blanks (overrides -a)\n  -t, --tabs=N     have tabs N characters apart instead of 8 (enables -a)\n"
	.align 8
.LC29:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC30:
	.string	"      --version  output version information and exit\n"
.LC31:
	.string	"unexpand"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/unexpand.c"
	.loc 2 73 1 is_stmt 1
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
	.loc 2 74 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 75 5
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
	.loc 2 78 7
	movq	program_name(%rip), %rbx
	.loc 2 78 15
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	.loc 2 78 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 82 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 86 7
	call	emit_stdin_note
	.loc 2 87 7
	call	emit_mandatory_arg_note
	.loc 2 89 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 94 7
	call	emit_tab_list_info@PLT
	.loc 2 95 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 96 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 97 7
	leaq	.LC31(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 99 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC32:
	.string	"input line is too long"
.LC33:
	.string	"write error"
	.text
	.type	unexpand, @function
unexpand:
.LFB47:
	.loc 2 107 1
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
	.loc 2 107 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 109 14
	movl	$0, %edi
	call	next_file@PLT
	movq	%rax, -64(%rbp)
	.loc 2 116 6
	cmpq	$0, -64(%rbp)
	je	.L44
	.loc 2 122 19
	movq	max_column_width(%rip), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -40(%rbp)
.L42:
.LBB2:
	.loc 2 130 12
	movb	$1, -80(%rbp)
	.loc 2 137 17
	movq	$0, -56(%rbp)
	.loc 2 140 17
	movq	$0, -32(%rbp)
	.loc 2 143 14
	movq	$0, -72(%rbp)
	.loc 2 146 12
	movb	$0, -79(%rbp)
	.loc 2 151 12
	movb	$1, -78(%rbp)
	.loc 2 154 14
	movq	$0, -48(%rbp)
	.loc 2 161 17
	jmp	.L18
.L20:
	.loc 2 162 13
	nop
.L18:
	.loc 2 161 23
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	getc_unlocked@PLT
	movl	%eax, -76(%rbp)
	.loc 2 161 17
	cmpl	$0, -76(%rbp)
	jns	.L19
	.loc 2 161 47 discriminator 1
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	next_file@PLT
	movq	%rax, -64(%rbp)
	.loc 2 161 38 discriminator 1
	cmpq	$0, -64(%rbp)
	jne	.L20
.L19:
	.loc 2 164 14
	cmpb	$0, -80(%rbp)
	je	.L21
.LBB3:
	.loc 2 166 31
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	.loc 2 166 20
	testl	%eax, %eax
	setne	%al
	movb	%al, -77(%rbp)
	.loc 2 168 18
	cmpb	$0, -77(%rbp)
	je	.L22
.LBB4:
	.loc 2 170 24
	movb	$0, -81(%rbp)
	.loc 2 172 37
	leaq	-81(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_next_tab_column@PLT
	movq	%rax, -32(%rbp)
	.loc 2 175 23
	movzbl	-81(%rbp), %eax
	.loc 2 175 22
	testb	%al, %al
	je	.L23
	.loc 2 176 29
	movb	$0, -80(%rbp)
.L23:
	.loc 2 178 22
	cmpb	$0, -80(%rbp)
	je	.L32
	.loc 2 180 26
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L25
.LBB5:
	.loc 2 181 25
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L25:
.LBE5:
	.loc 2 183 26
	cmpl	$9, -76(%rbp)
	jne	.L26
	.loc 2 185 34
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 2 187 30
	cmpq	$0, -48(%rbp)
	je	.L27
	.loc 2 188 46
	movq	-40(%rbp), %rax
	movb	$9, (%rax)
	jmp	.L27
.L26:
	.loc 2 192 33
	addq	$1, -56(%rbp)
	.loc 2 194 34
	movzbl	-78(%rbp), %eax
	xorl	$1, %eax
	.loc 2 194 30
	testb	%al, %al
	jne	.L28
	.loc 2 194 31 discriminator 1
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L29
.L28:
	.loc 2 198 34
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L30
	.loc 2 199 59
	movb	$1, -79(%rbp)
.L30:
	.loc 2 200 52
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 200 44
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 200 56
	movl	-76(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 201 42
	movb	$1, -78(%rbp)
	jmp	.L31
.L29:
	.loc 2 206 48
	movl	$9, -76(%rbp)
	.loc 2 206 44
	movq	-40(%rbp), %rax
	movb	$9, (%rax)
.L27:
	.loc 2 211 31
	movzbl	-79(%rbp), %eax
	movq	%rax, -48(%rbp)
	jmp	.L32
.L22:
.LBE4:
	.loc 2 214 23
	cmpl	$8, -76(%rbp)
	jne	.L33
	.loc 2 218 29
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 2 218 26
	subq	%rax, -56(%rbp)
	.loc 2 219 35
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 220 29
	movq	-72(%rbp), %rdx
	.loc 2 220 32
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	.loc 2 220 29
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	jmp	.L32
.L33:
	.loc 2 224 25
	addq	$1, -56(%rbp)
	.loc 2 225 22
	cmpq	$0, -56(%rbp)
	jne	.L32
.LBB6:
	.loc 2 226 21
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L32:
.LBE6:
	.loc 2 229 18
	cmpq	$0, -48(%rbp)
	je	.L34
	.loc 2 231 22
	cmpq	$1, -48(%rbp)
	jbe	.L35
	.loc 2 231 35 discriminator 1
	cmpb	$0, -79(%rbp)
	je	.L35
	.loc 2 232 38
	movq	-40(%rbp), %rax
	movb	$9, (%rax)
.L35:
	.loc 2 233 23
	movq	stdout(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 233 22
	cmpq	%rax, -48(%rbp)
	je	.L36
.LBB7:
	.loc 2 234 21
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L36:
.LBE7:
	.loc 2 235 27
	movq	$0, -48(%rbp)
	.loc 2 236 45
	movb	$0, -79(%rbp)
.L34:
	.loc 2 239 26
	movzbl	-77(%rbp), %eax
	movb	%al, -78(%rbp)
	.loc 2 240 23
	movzbl	-80(%rbp), %edx
	.loc 2 240 26
	movzbl	convert_entire_line(%rip), %eax
	.loc 2 240 46
	testb	%al, %al
	jne	.L37
	.loc 2 240 46 is_stmt 0 discriminator 2
	cmpb	$0, -77(%rbp)
	je	.L38
.L37:
	.loc 2 240 46 discriminator 3
	movl	$1, %eax
	jmp	.L39
.L38:
	.loc 2 240 46 discriminator 4
	movl	$0, %eax
.L39:
	.loc 2 240 23 is_stmt 1 discriminator 6
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -80(%rbp)
.L21:
.LBE3:
	.loc 2 243 14
	cmpl	$0, -76(%rbp)
	jns	.L40
	.loc 2 245 15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L15
.L40:
	.loc 2 249 15
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 249 14
	testl	%eax, %eax
	jns	.L31
.LBB8:
	.loc 2 250 13
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L31:
.LBE8:
	.loc 2 252 7
	cmpl	$10, -76(%rbp)
	jne	.L18
.LBE2:
	.loc 2 125 5
	jmp	.L42
.L44:
	.loc 2 117 5
	nop
.L15:
	.loc 2 254 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L43
	call	__stack_chk_fail@PLT
.L43:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	unexpand, .-unexpand
	.section	.rodata
.LC34:
	.string	"/usr/local/share/locale"
.LC35:
	.string	"David MacKenzie"
.LC36:
	.string	"tab stop value is too large"
.LC37:
	.string	",0123456789at:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB48:
	.loc 2 258 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 258 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 259 8
	movb	$0, -22(%rbp)
	.loc 2 260 13
	movq	$0, -16(%rbp)
	.loc 2 265 8
	movb	$0, -21(%rbp)
	.loc 2 268 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 269 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 270 3
	leaq	.LC34(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 271 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 2 273 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 275 9
	jmp	.L46
.L60:
	.loc 2 278 7
	cmpl	$128, -20(%rbp)
	je	.L47
	cmpl	$128, -20(%rbp)
	jg	.L48
	cmpl	$116, -20(%rbp)
	je	.L49
	cmpl	$116, -20(%rbp)
	jg	.L48
	cmpl	$97, -20(%rbp)
	je	.L50
	cmpl	$97, -20(%rbp)
	jg	.L48
	cmpl	$63, -20(%rbp)
	je	.L51
	cmpl	$63, -20(%rbp)
	jg	.L48
	cmpl	$44, -20(%rbp)
	je	.L52
	cmpl	$44, -20(%rbp)
	jg	.L48
	cmpl	$-131, -20(%rbp)
	je	.L53
	cmpl	$-130, -20(%rbp)
	je	.L54
	jmp	.L48
.L51:
	.loc 2 281 11
	movl	$1, %edi
	call	usage
.L50:
	.loc 2 283 31
	movb	$1, convert_entire_line(%rip)
	.loc 2 284 11
	jmp	.L46
.L49:
	.loc 2 286 31
	movb	$1, convert_entire_line(%rip)
	.loc 2 287 11
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	parse_tab_stops@PLT
	.loc 2 288 11
	jmp	.L46
.L47:
	.loc 2 290 30
	movb	$1, -21(%rbp)
	.loc 2 291 11
	jmp	.L46
.L52:
	.loc 2 293 14
	cmpb	$0, -22(%rbp)
	je	.L55
	.loc 2 294 13
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	add_tab_stop@PLT
.L55:
	.loc 2 295 23
	movb	$0, -22(%rbp)
	.loc 2 296 11
	jmp	.L46
.L54:
	.loc 2 297 9
	movl	$0, %edi
	call	usage
.L53:
	.loc 2 298 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC35(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L48:
	.loc 2 300 15
	movzbl	-22(%rbp), %eax
	xorl	$1, %eax
	.loc 2 300 14
	testb	%al, %al
	je	.L56
	.loc 2 302 22
	movq	$0, -16(%rbp)
	.loc 2 303 27
	movb	$1, -22(%rbp)
.L56:
.LBB9:
	.loc 2 305 16
	movq	-16(%rbp), %rax
	.loc 2 305 15
	movabsq	$1844674407370955161, %rdx
	cmpq	%rdx, %rax
	ja	.L57
	.loc 2 305 16 discriminator 1
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	subl	$48, %eax
	cltq
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L57
	.loc 2 305 16 is_stmt 0 discriminator 3
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	subl	$48, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 305 15 is_stmt 1 discriminator 3
	movl	$0, %eax
	jmp	.L58
.L57:
	.loc 2 305 15 is_stmt 0 discriminator 4
	movl	$1, %eax
.L58:
	.loc 2 305 14 is_stmt 1 discriminator 6
	testb	%al, %al
	je	.L67
.LBB10:
	.loc 2 306 13
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L67:
.LBE10:
.LBE9:
	.loc 2 307 11
	nop
.L46:
	.loc 2 275 15
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -20(%rbp)
	.loc 2 275 9
	cmpl	$-1, -20(%rbp)
	jne	.L60
	.loc 2 311 6
	cmpb	$0, -21(%rbp)
	je	.L61
	.loc 2 312 25
	movb	$0, convert_entire_line(%rip)
.L61:
	.loc 2 314 6
	cmpb	$0, -22(%rbp)
	je	.L62
	.loc 2 315 5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	add_tab_stop@PLT
.L62:
	.loc 2 317 3
	call	finalize_tab_stops@PLT
	.loc 2 319 27
	movl	optind(%rip), %eax
	.loc 2 319 3
	cmpl	%eax, -36(%rbp)
	jle	.L63
	.loc 2 319 42 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 319 3 discriminator 1
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L64
.L63:
	.loc 2 319 3 is_stmt 0 discriminator 2
	movl	$0, %eax
.L64:
	.loc 2 319 3 discriminator 4
	movq	%rax, %rdi
	call	set_file_list@PLT
	.loc 2 321 3 is_stmt 1 discriminator 4
	call	unexpand
	.loc 2 323 3 discriminator 4
	call	cleanup_file_list_stdin@PLT
	.loc 2 325 10 discriminator 4
	movl	exit_status(%rip), %eax
	.loc 2 326 1 discriminator 4
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L66
	.loc 2 326 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L66:
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
	.long	0x9bf
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF150
	.byte	0xc
	.long	.LASF151
	.long	.LASF152
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
	.long	.LASF153
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
	.long	.LASF154
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
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0x673
	.uleb128 0x16
	.long	.LASF121
	.byte	0x80
	.byte	0
	.uleb128 0xd
	.long	0x3b7
	.long	0x683
	.uleb128 0xe
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x673
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x2
	.byte	0x3d
	.byte	0x1c
	.long	0x683
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x2
	.value	0x101
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x743
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x2
	.value	0x101
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	.LASF123
	.byte	0x2
	.value	0x101
	.byte	0x18
	.long	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x2
	.value	0x103
	.byte	0x8
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x2
	.value	0x104
	.byte	0xd
	.long	0x4ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"c"
	.byte	0x2
	.value	0x105
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x2
	.value	0x109
	.byte	0x8
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x20
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x21
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF141
	.byte	0x2
	.byte	0x6a
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x89e
	.uleb128 0x23
	.string	"fp"
	.byte	0x2
	.byte	0x6d
	.byte	0x9
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x2
	.byte	0x72
	.byte	0x9
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x23
	.string	"c"
	.byte	0x2
	.byte	0x7f
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x2
	.byte	0x82
	.byte	0xc
	.long	0x63f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x2
	.byte	0x89
	.byte	0x11
	.long	0x4ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x2
	.byte	0x8c
	.byte	0x11
	.long	0x4ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x2
	.byte	0x8f
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x2
	.byte	0x92
	.byte	0xc
	.long	0x63f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -95
	.uleb128 0x1b
	.long	.LASF134
	.byte	0x2
	.byte	0x97
	.byte	0xc
	.long	0x63f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -94
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x2
	.byte	0x9a
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x88b
	.uleb128 0x1b
	.long	.LASF136
	.byte	0x2
	.byte	0xa6
	.byte	0x14
	.long	0x63f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x868
	.uleb128 0x1b
	.long	.LASF137
	.byte	0x2
	.byte	0xaa
	.byte	0x18
	.long	0x63f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x21
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF139
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x8cc
	.uleb128 0x26
	.long	.LASF140
	.byte	0x2
	.byte	0x48
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.LASF142
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x971
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.long	.LASF144
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x927
	.uleb128 0x29
	.long	.LASF143
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2a2
	.byte	0
	.uleb128 0x29
	.long	.LASF145
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2a2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x8fc
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x981
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF145
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x986
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x927
	.long	0x981
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x971
	.uleb128 0x7
	.byte	0x8
	.long	0x927
	.uleb128 0x2a
	.long	.LASF148
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF149
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
.LASF124:
	.string	"longopts"
.LASF154:
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
.LASF143:
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
.LASF149:
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
.LASF127:
	.string	"convert_first_only"
.LASF3:
	.string	"short unsigned int"
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
.LASF136:
	.string	"blank"
.LASF100:
	.string	"program_name"
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
.LASF150:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF111:
	.string	"custom_quoting_style"
.LASF135:
	.string	"pending"
.LASF116:
	.string	"error_one_per_line"
.LASF80:
	.string	"Version"
.LASF137:
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
.LASF58:
	.string	"optarg"
.LASF73:
	.string	"getdate_err"
.LASF59:
	.string	"optind"
.LASF14:
	.string	"_IO_read_ptr"
.LASF133:
	.string	"one_blank_before_tab_stop"
.LASF141:
	.string	"unexpand"
.LASF153:
	.string	"_IO_lock_t"
.LASF62:
	.string	"_IO_FILE"
.LASF114:
	.string	"error_print_progname"
.LASF146:
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
.LASF134:
	.string	"prev_blank"
.LASF120:
	.string	"exit_status"
.LASF145:
	.string	"node"
.LASF21:
	.string	"_IO_buf_end"
.LASF151:
	.string	"src/unexpand.c"
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
.LASF132:
	.string	"tab_index"
.LASF125:
	.string	"have_tabval"
.LASF128:
	.string	"pending_blank"
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
.LASF129:
	.string	"convert"
.LASF16:
	.string	"_IO_read_base"
.LASF130:
	.string	"column"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"_sys_siglist"
.LASF2:
	.string	"unsigned char"
.LASF144:
	.string	"infomap"
.LASF65:
	.string	"has_arg"
.LASF139:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF123:
	.string	"argv"
.LASF68:
	.string	"__daylight"
.LASF140:
	.string	"status"
.LASF152:
	.string	"/root/coreutils"
.LASF131:
	.string	"next_tab_column"
.LASF85:
	.string	"_ISupper"
.LASF23:
	.string	"_IO_backup_base"
.LASF115:
	.string	"error_message_count"
.LASF147:
	.string	"lc_messages"
.LASF122:
	.string	"argc"
.LASF126:
	.string	"tabval"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF148:
	.string	"emit_mandatory_arg_note"
.LASF67:
	.string	"__tzname"
.LASF138:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF142:
	.string	"emit_ancillary_info"
.LASF91:
	.string	"_ISprint"
.LASF121:
	.string	"CONVERT_FIRST_ONLY_OPTION"
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
