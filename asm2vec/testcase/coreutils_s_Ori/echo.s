	.file	"echo.c"
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
	.section	.rodata
.LC18:
	.string	"src/echo.c"
.LC19:
	.string	"status == EXIT_SUCCESS"
	.align 8
.LC20:
	.string	"Usage: %s [SHORT-OPTION]... [STRING]...\n  or:  %s LONG-OPTION\n"
	.align 8
.LC21:
	.string	"Echo the STRING(s) to standard output.\n\n  -n             do not output the trailing newline\n"
	.align 8
.LC22:
	.string	"  -e             enable interpretation of backslash escapes\n  -E             disable interpretation of backslash escapes (default)\n"
	.align 8
.LC23:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC24:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC25:
	.string	"\nIf -e is in effect, the following sequences are recognized:\n\n"
	.align 8
.LC26:
	.string	"  \\\\      backslash\n  \\a      alert (BEL)\n  \\b      backspace\n  \\c      produce no further output\n  \\e      escape\n  \\f      form feed\n  \\n      new line\n  \\r      carriage return\n  \\t      horizontal tab\n  \\v      vertical tab\n"
	.align 8
.LC27:
	.string	"  \\0NNN   byte with octal value NNN (1 to 3 digits)\n  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\n"
	.align 8
.LC28:
	.string	"\nNOTE: your shell may have its own version of %s, which usually supersedes\nthe version described here.  Please refer to your shell's documentation\nfor details about the options it supports.\n"
.LC29:
	.string	"echo"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/echo.c"
	.loc 2 37 1 is_stmt 1
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
	.loc 2 40 3
	cmpl	$0, -20(%rbp)
	je	.L11
	.loc 2 40 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6196(%rip), %rcx
	movl	$40, %edx
	leaq	.LC18(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	call	__assert_fail@PLT
.L11:
	.loc 2 42 3 is_stmt 1
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 42 11
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	.loc 2 42 3
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 46 3
	movq	stdout(%rip), %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 51 3
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 59 3
	movq	stdout(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 60 3
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 61 3
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 66 3
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 78 3
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 82 11
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	.loc 2 82 3
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 83 3
	leaq	.LC29(%rip), %rdi
	call	emit_ancillary_info
	.loc 2 84 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	hextobin, @function
hextobin:
.LFB47:
	.loc 2 90 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 91 3
	movzbl	-4(%rbp), %eax
	subl	$65, %eax
	cmpl	$37, %eax
	ja	.L13
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L15(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L15(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L15:
	.long	.L20-.L15
	.long	.L19-.L15
	.long	.L18-.L15
	.long	.L17-.L15
	.long	.L16-.L15
	.long	.L14-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L13-.L15
	.long	.L20-.L15
	.long	.L19-.L15
	.long	.L18-.L15
	.long	.L17-.L15
	.long	.L16-.L15
	.long	.L14-.L15
	.text
.L13:
	.loc 2 93 23
	movzbl	-4(%rbp), %eax
	subl	$48, %eax
	jmp	.L21
.L20:
	.loc 2 94 32
	movl	$10, %eax
	jmp	.L21
.L19:
	.loc 2 95 32
	movl	$11, %eax
	jmp	.L21
.L18:
	.loc 2 96 32
	movl	$12, %eax
	jmp	.L21
.L17:
	.loc 2 97 32
	movl	$13, %eax
	jmp	.L21
.L16:
	.loc 2 98 32
	movl	$14, %eax
	jmp	.L21
.L14:
	.loc 2 99 32
	movl	$15, %eax
.L21:
	.loc 2 101 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	hextobin, .-hextobin
	.section	.rodata
.LC30:
	.string	"POSIXLY_CORRECT"
.LC31:
	.string	"-n"
.LC32:
	.string	"/usr/local/share/locale"
.LC33:
	.string	"--help"
.LC34:
	.string	"--version"
.LC35:
	.string	"Chet Ramey"
.LC36:
	.string	"Brian Fox"
	.text
	.globl	main
	.type	main, @function
main:
.LFB48:
	.loc 2 109 1
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
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 110 8
	movb	$1, -46(%rbp)
	.loc 2 111 28
	leaq	.LC30(%rip), %rdi
	call	getenv@PLT
	.loc 2 111 8
	testq	%rax, %rax
	setne	%al
	movb	%al, -43(%rbp)
	.loc 2 113 6
	movzbl	-43(%rbp), %eax
	xorl	$1, %eax
	.loc 2 114 6
	testb	%al, %al
	jne	.L23
	.loc 2 114 6 is_stmt 0 discriminator 2
	cmpl	$1, -52(%rbp)
	jle	.L24
	.loc 2 114 47 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 114 44 discriminator 3
	testl	%eax, %eax
	jne	.L24
.L23:
	.loc 2 114 6 discriminator 5
	movl	$1, %eax
	jmp	.L25
.L24:
	.loc 2 114 6 is_stmt 0 discriminator 6
	movl	$0, %eax
.L25:
	.loc 2 112 8 is_stmt 1
	movb	%al, -42(%rbp)
	andb	$1, -42(%rbp)
	.loc 2 119 8
	movb	$0, -45(%rbp)
	.loc 2 122 3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 123 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 124 3
	leaq	.LC32(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 125 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 127 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 131 6
	cmpb	$0, -42(%rbp)
	je	.L26
	.loc 2 131 21 discriminator 1
	cmpl	$2, -52(%rbp)
	jne	.L26
	.loc 2 133 11
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 133 10
	testl	%eax, %eax
	jne	.L27
	.loc 2 134 9
	movl	$0, %edi
	call	usage
.L27:
	.loc 2 136 11
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 136 10
	testl	%eax, %eax
	jne	.L26
	.loc 2 138 11
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC35(%rip), %r9
	leaq	.LC36(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	.loc 2 140 18
	movl	$0, %eax
	jmp	.L28
.L26:
	.loc 2 144 3
	subl	$1, -52(%rbp)
	.loc 2 145 3
	addq	$8, -64(%rbp)
	.loc 2 147 6
	cmpb	$0, -42(%rbp)
	je	.L71
	.loc 2 148 11
	jmp	.L30
.L40:
.LBB2:
	.loc 2 150 32
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 150 21
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	.loc 2 157 16
	movq	$0, -32(%rbp)
	.loc 2 157 9
	jmp	.L31
.L34:
	.loc 2 158 23
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$69, %eax
	cmpl	$41, %eax
	seta	%dl
	testb	%dl, %dl
	jne	.L72
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movabsq	$2203318222849, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L72
	.loc 2 161 15
	nop
	.loc 2 157 31
	addq	$1, -32(%rbp)
.L31:
	.loc 2 157 25 discriminator 1
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 157 9 discriminator 1
	testb	%al, %al
	jne	.L34
	.loc 2 166 12
	cmpq	$0, -32(%rbp)
	je	.L73
	.loc 2 171 15
	jmp	.L36
.L39:
	.loc 2 172 24
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 172 19
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 172 11
	cmpl	$110, %eax
	je	.L37
	cmpl	$110, %eax
	jg	.L36
	cmpl	$69, %eax
	je	.L38
	cmpl	$101, %eax
	jne	.L36
	.loc 2 175 21
	movb	$1, -45(%rbp)
	.loc 2 176 15
	jmp	.L36
.L38:
	.loc 2 179 21
	movb	$0, -45(%rbp)
	.loc 2 180 15
	jmp	.L36
.L37:
	.loc 2 183 30
	movb	$0, -46(%rbp)
	.loc 2 184 15
	nop
.L36:
	.loc 2 171 16
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 171 15
	testb	%al, %al
	jne	.L39
	.loc 2 187 13
	subl	$1, -52(%rbp)
	.loc 2 188 13
	addq	$8, -64(%rbp)
.L30:
.LBE2:
	.loc 2 148 11
	cmpl	$0, -52(%rbp)
	jle	.L71
	.loc 2 148 29 discriminator 1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 148 24 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 148 21 discriminator 1
	cmpb	$45, %al
	je	.L40
.L71:
	.loc 2 191 1
	nop
	jmp	.L29
.L72:
.LBB3:
	.loc 2 163 15
	nop
	jmp	.L29
.L73:
	.loc 2 167 11
	nop
.L29:
.LBE3:
	.loc 2 193 6
	cmpb	$0, -45(%rbp)
	jne	.L43
	.loc 2 193 13 discriminator 1
	cmpb	$0, -43(%rbp)
	je	.L68
	.loc 2 195 13
	jmp	.L43
.L66:
.LBB4:
	.loc 2 197 23
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 200 17
	jmp	.L44
.L65:
	.loc 2 202 18
	cmpb	$92, -44(%rbp)
	jne	.L74
	.loc 2 202 32 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 202 29 discriminator 1
	testb	%al, %al
	je	.L74
	.loc 2 204 33
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 204 31
	movzbl	(%rax), %eax
	.loc 2 204 29
	movb	%al, -44(%rbp)
	movzbl	-44(%rbp), %eax
	subl	$48, %eax
	cmpl	$72, %eax
	ja	.L46
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L48(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L48(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L48:
	.long	.L60-.L48
	.long	.L59-.L48
	.long	.L59-.L48
	.long	.L59-.L48
	.long	.L59-.L48
	.long	.L59-.L48
	.long	.L59-.L48
	.long	.L59-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L75-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L57-.L48
	.long	.L56-.L48
	.long	.L55-.L48
	.long	.L46-.L48
	.long	.L54-.L48
	.long	.L53-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L52-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L51-.L48
	.long	.L46-.L48
	.long	.L50-.L48
	.long	.L46-.L48
	.long	.L49-.L48
	.long	.L46-.L48
	.long	.L47-.L48
	.text
.L57:
	.loc 2 206 33
	movb	$7, -44(%rbp)
	.loc 2 206 21
	jmp	.L45
.L56:
	.loc 2 207 33
	movb	$8, -44(%rbp)
	.loc 2 207 21
	jmp	.L45
.L55:
	.loc 2 208 38
	movl	$0, %eax
	jmp	.L28
.L54:
	.loc 2 209 33
	movb	$27, -44(%rbp)
	.loc 2 209 21
	jmp	.L45
.L53:
	.loc 2 210 33
	movb	$12, -44(%rbp)
	.loc 2 210 21
	jmp	.L45
.L52:
	.loc 2 211 33
	movb	$10, -44(%rbp)
	.loc 2 211 21
	jmp	.L45
.L51:
	.loc 2 212 33
	movb	$13, -44(%rbp)
	.loc 2 212 21
	jmp	.L45
.L50:
	.loc 2 213 33
	movb	$9, -44(%rbp)
	.loc 2 213 21
	jmp	.L45
.L49:
	.loc 2 214 33
	movb	$11, -44(%rbp)
	.loc 2 214 21
	jmp	.L45
.L47:
.LBB5:
	.loc 2 217 44
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 217 39
	movb	%al, -41(%rbp)
	.loc 2 218 31
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-41(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	.loc 2 218 28
	testl	%eax, %eax
	je	.L76
	.loc 2 220 26
	addq	$1, -24(%rbp)
	.loc 2 221 29
	movzbl	-41(%rbp), %eax
	movl	%eax, %edi
	call	hextobin
	.loc 2 221 27
	movb	%al, -44(%rbp)
	.loc 2 222 30
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 222 28
	movb	%al, -41(%rbp)
	.loc 2 223 29
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-41(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	.loc 2 223 28
	testl	%eax, %eax
	je	.L77
	.loc 2 225 30
	addq	$1, -24(%rbp)
	.loc 2 226 40
	movzbl	-44(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %ebx
	.loc 2 226 42
	movzbl	-41(%rbp), %eax
	movl	%eax, %edi
	call	hextobin
	.loc 2 226 31
	addl	%ebx, %eax
	movb	%al, -44(%rbp)
.LBE5:
	.loc 2 229 23
	jmp	.L77
.L60:
	.loc 2 231 25
	movb	$0, -44(%rbp)
	.loc 2 232 37
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 232 26
	cmpb	$47, %al
	jle	.L74
	.loc 2 232 43 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 232 27 discriminator 1
	cmpb	$55, %al
	jg	.L74
	.loc 2 234 29
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 234 27
	movzbl	(%rax), %eax
	.loc 2 234 25
	movb	%al, -44(%rbp)
.L59:
	.loc 2 238 25
	subb	$48, -44(%rbp)
	.loc 2 239 34
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 239 26
	cmpb	$47, %al
	jle	.L63
	.loc 2 239 40 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 239 37 discriminator 1
	cmpb	$55, %al
	jg	.L63
	.loc 2 240 35
	movzbl	-44(%rbp), %eax
	leal	0(,%rax,8), %ecx
	.loc 2 240 40
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 240 38
	movzbl	(%rax), %eax
	.loc 2 240 35
	addl	%ecx, %eax
	.loc 2 240 27
	subl	$48, %eax
	movb	%al, -44(%rbp)
.L63:
	.loc 2 241 34
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 241 26
	cmpb	$47, %al
	jle	.L78
	.loc 2 241 40 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 241 37 discriminator 1
	cmpb	$55, %al
	jg	.L78
	.loc 2 242 35
	movzbl	-44(%rbp), %eax
	leal	0(,%rax,8), %ecx
	.loc 2 242 40
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 242 38
	movzbl	(%rax), %eax
	.loc 2 242 35
	addl	%ecx, %eax
	.loc 2 242 27
	subl	$48, %eax
	movb	%al, -44(%rbp)
	.loc 2 243 23
	jmp	.L78
.L76:
.LBB6:
	.loc 2 219 27
	nop
.L46:
.LBE6:
	.loc 2 247 31
	movl	$92, %edi
	call	putchar_unlocked@PLT
	.loc 2 247 21
	jmp	.L45
.L74:
	.loc 2 249 17
	nop
	jmp	.L45
.L75:
	.loc 2 244 21
	nop
	jmp	.L45
.L77:
	.loc 2 229 23
	nop
	jmp	.L45
.L78:
	.loc 2 243 23
	nop
.L45:
	.loc 2 250 15
	movzbl	-44(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L44:
	.loc 2 200 25
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 200 23
	movzbl	(%rax), %eax
	.loc 2 200 21
	movb	%al, -44(%rbp)
	.loc 2 200 17
	cmpb	$0, -44(%rbp)
	jne	.L65
	.loc 2 252 15
	subl	$1, -52(%rbp)
	.loc 2 253 15
	addq	$8, -64(%rbp)
	.loc 2 254 14
	cmpl	$0, -52(%rbp)
	jle	.L43
	.loc 2 255 13
	movl	$32, %edi
	call	putchar_unlocked@PLT
.L43:
.LBE4:
	.loc 2 195 13
	cmpl	$0, -52(%rbp)
	jg	.L66
	.loc 2 193 6
	jmp	.L67
.L69:
	.loc 2 262 11
	movq	stdout(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 263 15
	subl	$1, -52(%rbp)
	.loc 2 264 15
	addq	$8, -64(%rbp)
	.loc 2 265 14
	cmpl	$0, -52(%rbp)
	jle	.L68
	.loc 2 266 13
	movl	$32, %edi
	call	putchar_unlocked@PLT
.L68:
	.loc 2 260 13
	cmpl	$0, -52(%rbp)
	jg	.L69
.L67:
	.loc 2 270 6
	cmpb	$0, -46(%rbp)
	je	.L70
	.loc 2 271 5
	movl	$10, %edi
	call	putchar_unlocked@PLT
.L70:
	.loc 2 272 10
	movl	$0, %eax
.L28:
	.loc 2 273 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.6196, @object
	.size	__PRETTY_FUNCTION__.6196, 6
__PRETTY_FUNCTION__.6196:
	.string	"usage"
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "./lib/sys/select.h"
	.file 10 "/usr/include/time.h"
	.file 11 "/usr/include/signal.h"
	.file 12 "/usr/include/unistd.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/errno.h"
	.file 15 "src/version.h"
	.file 16 "./lib/exitfail.h"
	.file 17 "./lib/version-etc.h"
	.file 18 "./lib/progname.h"
	.file 19 "./lib/quotearg.h"
	.file 20 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7a4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF121
	.byte	0xc
	.long	.LASF122
	.long	.LASF123
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
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x96
	.uleb128 0x9
	.long	.LASF116
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x229
	.uleb128 0xa
	.long	.LASF11
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x90
	.byte	0x58
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x242
	.byte	0x60
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x248
	.byte	0x68
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x78
	.byte	0x78
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x24e
	.byte	0x83
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x25e
	.byte	0x88
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x84
	.byte	0x90
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x269
	.byte	0x98
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x274
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x248
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x27a
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xa2
	.uleb128 0xb
	.long	.LASF124
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF41
	.uleb128 0x7
	.byte	0x8
	.long	0x23d
	.uleb128 0x7
	.byte	0x8
	.long	0xa2
	.uleb128 0xd
	.long	0x96
	.long	0x25e
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x235
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x7
	.byte	0x8
	.long	0x264
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x26f
	.uleb128 0xd
	.long	0x96
	.long	0x28a
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x9d
	.uleb128 0x8
	.long	0x28a
	.uleb128 0xf
	.long	.LASF44
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2a1
	.uleb128 0x7
	.byte	0x8
	.long	0x229
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF47
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x290
	.long	0x2d6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2cb
	.uleb128 0xf
	.long	.LASF48
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2d6
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2d6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF51
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF52
	.uleb128 0x11
	.long	.LASF53
	.byte	0x9
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0xd
	.long	0x90
	.long	0x331
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF55
	.byte	0xa
	.byte	0x9f
	.byte	0xe
	.long	0x321
	.uleb128 0xf
	.long	.LASF56
	.byte	0xa
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF57
	.byte	0xa
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF58
	.byte	0xa
	.byte	0xa6
	.byte	0xe
	.long	0x321
	.uleb128 0xf
	.long	.LASF59
	.byte	0xa
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF61
	.byte	0xa
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x290
	.long	0x396
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x386
	.uleb128 0x11
	.long	.LASF62
	.byte	0xb
	.value	0x11e
	.byte	0x1a
	.long	0x396
	.uleb128 0x11
	.long	.LASF63
	.byte	0xb
	.value	0x11f
	.byte	0x1a
	.long	0x396
	.uleb128 0x11
	.long	.LASF64
	.byte	0xc
	.value	0x21f
	.byte	0xf
	.long	0x3c2
	.uleb128 0x7
	.byte	0x8
	.long	0x90
	.uleb128 0x11
	.long	.LASF65
	.byte	0xc
	.value	0x221
	.byte	0xf
	.long	0x3c2
	.uleb128 0xf
	.long	.LASF66
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF67
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF70
	.byte	0xe
	.byte	0x2d
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF71
	.byte	0xe
	.byte	0x2e
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF72
	.byte	0xf
	.byte	0x1
	.byte	0x14
	.long	0x28a
	.uleb128 0xf
	.long	.LASF73
	.byte	0x10
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2f
	.byte	0x1
	.long	0x494
	.uleb128 0x13
	.long	.LASF74
	.value	0x100
	.uleb128 0x13
	.long	.LASF75
	.value	0x200
	.uleb128 0x13
	.long	.LASF76
	.value	0x400
	.uleb128 0x13
	.long	.LASF77
	.value	0x800
	.uleb128 0x13
	.long	.LASF78
	.value	0x1000
	.uleb128 0x13
	.long	.LASF79
	.value	0x2000
	.uleb128 0x13
	.long	.LASF80
	.value	0x4000
	.uleb128 0x13
	.long	.LASF81
	.value	0x8000
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.uleb128 0x14
	.long	.LASF83
	.byte	0x2
	.uleb128 0x14
	.long	.LASF84
	.byte	0x4
	.uleb128 0x14
	.long	.LASF85
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x9d
	.long	0x49f
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x494
	.uleb128 0xf
	.long	.LASF86
	.byte	0x11
	.byte	0x19
	.byte	0x13
	.long	0x49f
	.uleb128 0xf
	.long	.LASF87
	.byte	0x12
	.byte	0x20
	.byte	0x14
	.long	0x28a
	.uleb128 0x15
	.long	.LASF125
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x20
	.byte	0x6
	.long	0x511
	.uleb128 0x14
	.long	.LASF88
	.byte	0
	.uleb128 0x14
	.long	.LASF89
	.byte	0x1
	.uleb128 0x14
	.long	.LASF90
	.byte	0x2
	.uleb128 0x14
	.long	.LASF91
	.byte	0x3
	.uleb128 0x14
	.long	.LASF92
	.byte	0x4
	.uleb128 0x14
	.long	.LASF93
	.byte	0x5
	.uleb128 0x14
	.long	.LASF94
	.byte	0x6
	.uleb128 0x14
	.long	.LASF95
	.byte	0x7
	.uleb128 0x14
	.long	.LASF96
	.byte	0x8
	.uleb128 0x14
	.long	.LASF97
	.byte	0x9
	.uleb128 0x14
	.long	.LASF98
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x4bc
	.uleb128 0x11
	.long	.LASF99
	.byte	0x13
	.value	0x10b
	.byte	0x1a
	.long	0x2d6
	.uleb128 0xd
	.long	0x511
	.long	0x52e
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x523
	.uleb128 0x11
	.long	.LASF100
	.byte	0x13
	.value	0x10c
	.byte	0x21
	.long	0x52e
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x20
	.byte	0x6
	.long	0x555
	.uleb128 0x14
	.long	.LASF101
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF112
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x65a
	.uleb128 0x17
	.long	.LASF102
	.byte	0x2
	.byte	0x6c
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF103
	.byte	0x2
	.byte	0x6c
	.byte	0x18
	.long	0x3c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.long	.LASF104
	.byte	0x2
	.byte	0x6e
	.byte	0x8
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x18
	.long	.LASF105
	.byte	0x2
	.byte	0x6f
	.byte	0x8
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -59
	.uleb128 0x18
	.long	.LASF106
	.byte	0x2
	.byte	0x70
	.byte	0x8
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x18
	.long	.LASF107
	.byte	0x2
	.byte	0x77
	.byte	0x8
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x19
	.long	.LASF108
	.byte	0x2
	.byte	0xbf
	.byte	0x1
	.quad	.L29
	.uleb128 0x19
	.long	.LASF109
	.byte	0x2
	.byte	0xf6
	.byte	0x15
	.quad	.L46
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0
	.long	0x619
	.uleb128 0x18
	.long	.LASF110
	.byte	0x2
	.byte	0x96
	.byte	0x15
	.long	0x28a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"i"
	.byte	0x2
	.byte	0x97
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1c
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1b
	.string	"s"
	.byte	0x2
	.byte	0xc5
	.byte	0x17
	.long	0x28a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"c"
	.byte	0x2
	.byte	0xc6
	.byte	0x19
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1b
	.string	"ch"
	.byte	0x2
	.byte	0xd9
	.byte	0x27
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF111
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x2
	.byte	0x59
	.byte	0x1
	.long	0x65
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x691
	.uleb128 0x1f
	.string	"c"
	.byte	0x2
	.byte	0x59
	.byte	0x19
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	.LASF113
	.byte	0x2
	.byte	0x24
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d2
	.uleb128 0x17
	.long	.LASF114
	.byte	0x2
	.byte	0x24
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF127
	.long	0x6e2
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6196
	.byte	0
	.uleb128 0xd
	.long	0x9d
	.long	0x6e2
	.uleb128 0xe
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x6d2
	.uleb128 0x22
	.long	.LASF128
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x78c
	.uleb128 0x23
	.long	.LASF115
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.long	.LASF117
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x742
	.uleb128 0x25
	.long	.LASF115
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x28a
	.byte	0
	.uleb128 0x25
	.long	.LASF118
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x28a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x717
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x79c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF118
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF119
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x7a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.long	.LASF120
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x742
	.long	0x79c
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x78c
	.uleb128 0x7
	.byte	0x8
	.long	0x742
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
	.uleb128 0x5
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"exit_failure"
.LASF8:
	.string	"__off_t"
.LASF81:
	.string	"_ISgraph"
.LASF96:
	.string	"locale_quoting_style"
.LASF24:
	.string	"_chain"
.LASF95:
	.string	"escape_quoting_style"
.LASF125:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF30:
	.string	"_shortbuf"
.LASF79:
	.string	"_ISspace"
.LASF89:
	.string	"shell_quoting_style"
.LASF18:
	.string	"_IO_buf_base"
.LASF54:
	.string	"long long unsigned int"
.LASF76:
	.string	"_ISalpha"
.LASF33:
	.string	"_codecvt"
.LASF77:
	.string	"_ISdigit"
.LASF57:
	.string	"__timezone"
.LASF51:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF100:
	.string	"quoting_style_vals"
.LASF127:
	.string	"__PRETTY_FUNCTION__"
.LASF115:
	.string	"program"
.LASF126:
	.string	"hextobin"
.LASF106:
	.string	"allow_options"
.LASF88:
	.string	"literal_quoting_style"
.LASF25:
	.string	"_fileno"
.LASF13:
	.string	"_IO_read_end"
.LASF63:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF53:
	.string	"_gl_cxxalias_dummy"
.LASF11:
	.string	"_flags"
.LASF34:
	.string	"_wide_data"
.LASF85:
	.string	"_ISalnum"
.LASF28:
	.string	"_cur_column"
.LASF71:
	.string	"program_invocation_short_name"
.LASF93:
	.string	"c_quoting_style"
.LASF42:
	.string	"_IO_codecvt"
.LASF50:
	.string	"_sys_errlist"
.LASF70:
	.string	"program_invocation_name"
.LASF27:
	.string	"_old_offset"
.LASF32:
	.string	"_offset"
.LASF82:
	.string	"_ISblank"
.LASF92:
	.string	"shell_escape_always_quoting_style"
.LASF60:
	.string	"timezone"
.LASF84:
	.string	"_ISpunct"
.LASF87:
	.string	"program_name"
.LASF110:
	.string	"temp"
.LASF41:
	.string	"_IO_marker"
.LASF44:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF36:
	.string	"_freeres_buf"
.LASF101:
	.string	"DEFAULT_ECHO_TO_XPG"
.LASF0:
	.string	"long unsigned int"
.LASF16:
	.string	"_IO_write_ptr"
.LASF47:
	.string	"sys_nerr"
.LASF121:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF98:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF72:
	.string	"Version"
.LASF20:
	.string	"_IO_save_base"
.LASF65:
	.string	"environ"
.LASF31:
	.string	"_lock"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF45:
	.string	"stdout"
.LASF86:
	.string	"version_etc_copyright"
.LASF66:
	.string	"optarg"
.LASF61:
	.string	"getdate_err"
.LASF67:
	.string	"optind"
.LASF12:
	.string	"_IO_read_ptr"
.LASF107:
	.string	"do_v9"
.LASF104:
	.string	"display_return"
.LASF124:
	.string	"_IO_lock_t"
.LASF116:
	.string	"_IO_FILE"
.LASF119:
	.string	"map_prog"
.LASF64:
	.string	"__environ"
.LASF56:
	.string	"__daylight"
.LASF48:
	.string	"sys_errlist"
.LASF23:
	.string	"_markers"
.LASF122:
	.string	"src/echo.c"
.LASF111:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF118:
	.string	"node"
.LASF19:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF49:
	.string	"_sys_nerr"
.LASF29:
	.string	"_vtable_offset"
.LASF58:
	.string	"tzname"
.LASF40:
	.string	"FILE"
.LASF91:
	.string	"shell_escape_quoting_style"
.LASF99:
	.string	"quoting_style_args"
.LASF69:
	.string	"optopt"
.LASF59:
	.string	"daylight"
.LASF94:
	.string	"c_maybe_quoting_style"
.LASF52:
	.string	"long double"
.LASF10:
	.string	"char"
.LASF90:
	.string	"shell_always_quoting_style"
.LASF83:
	.string	"_IScntrl"
.LASF78:
	.string	"_ISxdigit"
.LASF97:
	.string	"clocale_quoting_style"
.LASF108:
	.string	"just_echo"
.LASF75:
	.string	"_ISlower"
.LASF68:
	.string	"opterr"
.LASF9:
	.string	"__off64_t"
.LASF14:
	.string	"_IO_read_base"
.LASF22:
	.string	"_IO_save_end"
.LASF62:
	.string	"_sys_siglist"
.LASF117:
	.string	"infomap"
.LASF105:
	.string	"posixly_correct"
.LASF113:
	.string	"usage"
.LASF37:
	.string	"__pad5"
.LASF17:
	.string	"_IO_write_end"
.LASF39:
	.string	"_unused2"
.LASF46:
	.string	"stderr"
.LASF103:
	.string	"argv"
.LASF114:
	.string	"status"
.LASF123:
	.string	"/root/coreutils"
.LASF74:
	.string	"_ISupper"
.LASF21:
	.string	"_IO_backup_base"
.LASF109:
	.string	"not_an_escape"
.LASF120:
	.string	"lc_messages"
.LASF102:
	.string	"argc"
.LASF35:
	.string	"_freeres_list"
.LASF43:
	.string	"_IO_wide_data"
.LASF55:
	.string	"__tzname"
.LASF112:
	.string	"main"
.LASF15:
	.string	"_IO_write_base"
.LASF128:
	.string	"emit_ancillary_info"
.LASF80:
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
