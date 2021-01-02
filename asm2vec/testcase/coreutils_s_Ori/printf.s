	.file	"printf.c"
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
	je	.L8
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L8
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L8:
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
	jne	.L9
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L10
.L9:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L10:
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
	.local	exit_status
	.comm	exit_status,4,4
	.local	posixly_correct
	.comm	posixly_correct,1,1
	.section	.rodata
	.align 8
.LC18:
	.string	"warning: %s: character(s) following character constant have been ignored"
	.section	.data.rel.ro.local,"aw"
	.align 8
	.type	cfcc_msg, @object
	.size	cfcc_msg, 8
cfcc_msg:
	.quad	.LC18
	.section	.rodata
	.align 8
.LC19:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC20:
	.string	"Usage: %s FORMAT [ARGUMENT]...\n  or:  %s OPTION\n"
	.align 8
.LC21:
	.string	"Print ARGUMENT(s) according to FORMAT, or execute according to OPTION:\n\n"
	.align 8
.LC22:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC23:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC24:
	.string	"\nFORMAT controls the output as in C printf.  Interpreted sequences are:\n\n  \\\"      double quote\n"
	.align 8
.LC25:
	.string	"  \\\\      backslash\n  \\a      alert (BEL)\n  \\b      backspace\n  \\c      produce no further output\n  \\e      escape\n  \\f      form feed\n  \\n      new line\n  \\r      carriage return\n  \\t      horizontal tab\n  \\v      vertical tab\n"
	.align 8
.LC26:
	.string	"  \\NNN    byte with octal value NNN (1 to 3 digits)\n  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\n  \\uHHHH  Unicode (ISO/IEC 10646) character with hex value HHHH (4 digits)\n  \\UHHHHHHHH  Unicode character with hex value HHHHHHHH (8 digits)\n"
	.align 8
.LC27:
	.ascii	"  %%      a single %\n  %b      ARGUMENT as a string with '\\"
	.ascii	"' escapes interpreted,\n          except that octal escapes "
	.ascii	"are of the form \\0 or \\0NNN\n  %q      ARGUMENT is printed"
	.ascii	" in a format tha"
	.string	"t can be reused as shell input,\n          escaping non-printable characters with the proposed POSIX $'' syntax.\n\nand all C format specifications ending with one of diouxXfeEgGcs, with\nARGUMENTs converted to proper type first.  Variable widths are handled.\n"
	.align 8
.LC28:
	.string	"\nNOTE: your shell may have its own version of %s, which usually supersedes\nthe version described here.  Please refer to your shell's documentation\nfor details about the options it supports.\n"
.LC29:
	.string	"printf"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/printf.c"
	.loc 2 88 1 is_stmt 1
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
	.loc 2 89 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 90 5
	movq	program_name(%rip), %rbx
	leaq	.LC19(%rip), %rdi
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
	.loc 2 93 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 93 15
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	.loc 2 93 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 98 7
	movq	stdout(%rip), %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 102 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 103 7
	movq	stdout(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 104 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 110 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 122 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 128 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 138 15
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	.loc 2 138 7
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 139 7
	leaq	.LC29(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 141 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC30:
	.string	"%s"
.LC31:
	.string	"%s: expected a numeric value"
	.align 8
.LC32:
	.string	"%s: value not completely converted"
	.text
	.type	verify_numeric, @function
verify_numeric:
.LFB47:
	.loc 2 146 1
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 147 7
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 147 6
	testl	%eax, %eax
	je	.L16
	.loc 2 149 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 149 17
	call	__errno_location@PLT
	.loc 2 149 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC30(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 150 19
	movl	$1, exit_status(%rip)
	.loc 2 160 1
	jmp	.L20
.L16:
	.loc 2 152 12
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 152 11
	testb	%al, %al
	je	.L20
	.loc 2 154 10
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L18
	.loc 2 155 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 155 22
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 155 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L19
.L18:
	.loc 2 157 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 157 22
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 157 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L19:
	.loc 2 158 19
	movl	$1, exit_status(%rip)
.L20:
	.loc 2 160 1
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	verify_numeric, .-verify_numeric
	.type	vstrtoimax, @function
vstrtoimax:
.LFB48:
	.loc 2 189 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 189 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	je	.L22
	.loc 2 189 1 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$39, %al
	jne	.L23
.L22:
	.loc 2 189 1 discriminator 3
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L23
.LBB2:
	.loc 2 189 1 discriminator 5
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	movzbl	-25(%rbp), %eax
	movq	%rax, -16(%rbp)
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L28
	.loc 2 189 1 discriminator 7
	movzbl	posixly_correct(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L28
	.loc 2 189 1 discriminator 8
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.LBE2:
	jmp	.L28
.L23:
	.loc 2 189 1 discriminator 6
	call	__errno_location@PLT
	movl	$0, (%rax)
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoimax@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_numeric
	jmp	.L25
.L28:
	.loc 2 189 1
	nop
.L25:
	.loc 2 189 1 discriminator 9
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L27
	.loc 2 189 1
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	vstrtoimax, .-vstrtoimax
	.type	vstrtoumax, @function
vstrtoumax:
.LFB49:
	.loc 2 190 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 190 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	je	.L30
	.loc 2 190 1 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$39, %al
	jne	.L31
.L30:
	.loc 2 190 1 discriminator 3
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L31
.LBB3:
	.loc 2 190 1 discriminator 5
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	movzbl	-25(%rbp), %eax
	movq	%rax, -16(%rbp)
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L36
	.loc 2 190 1 discriminator 7
	movzbl	posixly_correct(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L36
	.loc 2 190 1 discriminator 8
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.LBE3:
	jmp	.L36
.L31:
	.loc 2 190 1 discriminator 6
	call	__errno_location@PLT
	movl	$0, (%rax)
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoumax@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_numeric
	jmp	.L33
.L36:
	.loc 2 190 1
	nop
.L33:
	.loc 2 190 1 discriminator 9
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L35
	.loc 2 190 1
	call	__stack_chk_fail@PLT
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	vstrtoumax, .-vstrtoumax
	.type	vstrtold, @function
vstrtold:
.LFB50:
	.loc 2 191 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 2 191 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	je	.L38
	.loc 2 191 1 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$39, %al
	jne	.L39
.L38:
	.loc 2 191 1 discriminator 3
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L39
.LBB4:
	.loc 2 191 1 discriminator 5
	addq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -41(%rbp)
	movzbl	-41(%rbp), %eax
	movw	%ax, -58(%rbp)
	filds	-58(%rbp)
	fstpt	-32(%rbp)
	addq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L44
	.loc 2 191 1 discriminator 7
	movzbl	posixly_correct(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L44
	.loc 2 191 1 discriminator 8
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.LBE4:
	jmp	.L44
.L39:
	.loc 2 191 1 discriminator 6
	call	__errno_location@PLT
	movl	$0, (%rax)
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cl_strtold@PLT
	fstpt	-32(%rbp)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_numeric
	jmp	.L41
.L44:
	.loc 2 191 1
	nop
.L41:
	.loc 2 191 1 discriminator 9
	fldt	-32(%rbp)
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L43
	fstp	%st(0)
	.loc 2 191 1
	call	__stack_chk_fail@PLT
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	vstrtold, .-vstrtold
	.type	print_esc_char, @function
print_esc_char:
.LFB51:
	.loc 2 197 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 198 3
	movsbl	-4(%rbp), %eax
	subl	$97, %eax
	cmpl	$21, %eax
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
	.long	.L56-.L48
	.long	.L55-.L48
	.long	.L54-.L48
	.long	.L46-.L48
	.long	.L53-.L48
	.long	.L52-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L51-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L46-.L48
	.long	.L50-.L48
	.long	.L46-.L48
	.long	.L49-.L48
	.long	.L46-.L48
	.long	.L47-.L48
	.text
.L56:
	.loc 2 201 7
	movl	$7, %edi
	call	putchar_unlocked@PLT
	.loc 2 202 7
	jmp	.L57
.L55:
	.loc 2 204 7
	movl	$8, %edi
	call	putchar_unlocked@PLT
	.loc 2 205 7
	jmp	.L57
.L54:
	.loc 2 207 7
	movl	$0, %edi
	call	exit@PLT
.L53:
	.loc 2 210 7
	movl	$27, %edi
	call	putchar_unlocked@PLT
	.loc 2 211 7
	jmp	.L57
.L52:
	.loc 2 213 7
	movl	$12, %edi
	call	putchar_unlocked@PLT
	.loc 2 214 7
	jmp	.L57
.L51:
	.loc 2 216 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 217 7
	jmp	.L57
.L50:
	.loc 2 219 7
	movl	$13, %edi
	call	putchar_unlocked@PLT
	.loc 2 220 7
	jmp	.L57
.L49:
	.loc 2 222 7
	movl	$9, %edi
	call	putchar_unlocked@PLT
	.loc 2 223 7
	jmp	.L57
.L47:
	.loc 2 225 7
	movl	$11, %edi
	call	putchar_unlocked@PLT
	.loc 2 226 7
	jmp	.L57
.L46:
	.loc 2 228 7
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 229 7
	nop
.L57:
	.loc 2 231 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	print_esc_char, .-print_esc_char
	.section	.rodata
	.align 8
.LC34:
	.string	"missing hexadecimal number in escape"
.LC35:
	.string	"\"\\abcefnrtv"
	.align 8
.LC36:
	.string	"invalid universal character name \\%c%0*x"
	.text
	.type	print_esc, @function
print_esc:
.LFB52:
	.loc 2 241 1
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
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	.loc 2 242 15
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	.loc 2 243 7
	movl	$0, -36(%rbp)
	.loc 2 246 7
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 246 6
	cmpb	$120, %al
	jne	.L59
	.loc 2 249 23
	movl	$0, -32(%rbp)
	.loc 2 249 28
	addq	$1, -24(%rbp)
	.loc 2 249 7
	jmp	.L60
.L66:
	.loc 2 252 31
	movl	-36(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	.loc 2 252 38
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L61
	.loc 2 252 38 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	jg	.L61
	.loc 2 252 38 discriminator 3
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$87, %eax
	jmp	.L62
.L61:
	.loc 2 252 38 discriminator 4
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L63
	.loc 2 252 38 discriminator 6
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	jg	.L63
	.loc 2 252 38 discriminator 8
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$55, %eax
	jmp	.L62
.L63:
	.loc 2 252 38 discriminator 9
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
.L62:
	.loc 2 252 19 is_stmt 1 discriminator 12
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	.loc 2 251 12 discriminator 12
	addl	$1, -32(%rbp)
	.loc 2 251 26 discriminator 12
	addq	$1, -24(%rbp)
.L60:
	.loc 2 249 7 discriminator 1
	cmpl	$1, -32(%rbp)
	jg	.L65
	.loc 2 250 30
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	.loc 2 250 27
	testl	%eax, %eax
	jne	.L66
.L65:
	.loc 2 253 10
	cmpl	$0, -32(%rbp)
	jne	.L67
.LBB5:
	.loc 2 254 9
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L67:
.LBE5:
	.loc 2 255 7
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	jmp	.L68
.L59:
	.loc 2 257 12
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 257 11
	cmpb	$47, %al
	jle	.L69
	.loc 2 257 12 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$55, %al
	jg	.L69
	.loc 2 262 23
	movl	$0, -32(%rbp)
	.loc 2 262 41
	cmpb	$0, -60(%rbp)
	je	.L70
	.loc 2 262 44 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 262 41 discriminator 1
	cmpb	$48, %al
	jne	.L70
	.loc 2 262 41 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L71
.L70:
	.loc 2 262 41 discriminator 4
	movl	$0, %eax
.L71:
	.loc 2 262 41 discriminator 6
	cltq
	.loc 2 262 30 is_stmt 1 discriminator 6
	addq	%rax, -24(%rbp)
	.loc 2 262 7 discriminator 6
	jmp	.L72
.L74:
	.loc 2 265 31
	movl	-36(%rbp), %eax
	leal	0(,%rax,8), %edx
	.loc 2 265 37
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 265 19
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	.loc 2 264 12
	addl	$1, -32(%rbp)
	.loc 2 264 26
	addq	$1, -24(%rbp)
.L72:
	.loc 2 262 7 discriminator 7
	cmpl	$2, -32(%rbp)
	jg	.L73
	.loc 2 263 30
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 263 27
	cmpb	$47, %al
	jle	.L73
	.loc 2 263 30 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$55, %al
	jle	.L74
.L73:
	.loc 2 266 7
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	jmp	.L68
.L69:
	.loc 2 268 12
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 268 11
	testb	%al, %al
	je	.L75
	.loc 2 268 43 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 268 18 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC35(%rip), %rdi
	call	strchr@PLT
	.loc 2 268 15 discriminator 1
	testq	%rax, %rax
	je	.L75
	.loc 2 269 23
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 269 21
	movzbl	(%rax), %eax
	.loc 2 269 5
	movsbl	%al, %eax
	movl	%eax, %edi
	call	print_esc_char
	jmp	.L68
.L75:
	.loc 2 270 12
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 270 11
	cmpb	$117, %al
	je	.L76
	.loc 2 270 25 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 270 22 discriminator 1
	cmpb	$85, %al
	jne	.L77
.L76:
.LBB6:
	.loc 2 272 12
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -37(%rbp)
	.loc 2 275 17
	movl	$0, -28(%rbp)
	.loc 2 276 46
	cmpb	$117, -37(%rbp)
	jne	.L78
	.loc 2 276 46 is_stmt 0 discriminator 1
	movl	$4, %eax
	jmp	.L79
.L78:
	.loc 2 276 46 discriminator 2
	movl	$8, %eax
.L79:
	.loc 2 276 23 is_stmt 1 discriminator 4
	movl	%eax, -32(%rbp)
	.loc 2 276 52 discriminator 4
	addq	$1, -24(%rbp)
	.loc 2 276 7 discriminator 4
	jmp	.L80
.L86:
	.loc 2 280 17
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	.loc 2 280 14
	testl	%eax, %eax
	jne	.L81
.LBB7:
	.loc 2 281 13
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L81:
.LBE7:
	.loc 2 282 33
	movl	-28(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	.loc 2 282 40
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L82
	.loc 2 282 40 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	jg	.L82
	.loc 2 282 40 discriminator 3
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$87, %eax
	jmp	.L83
.L82:
	.loc 2 282 40 discriminator 4
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L84
	.loc 2 282 40 discriminator 6
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	jg	.L84
	.loc 2 282 40 discriminator 8
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$55, %eax
	jmp	.L83
.L84:
	.loc 2 282 40 discriminator 9
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
.L83:
	.loc 2 282 21 is_stmt 1 discriminator 12
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	.loc 2 278 12 discriminator 12
	subl	$1, -32(%rbp)
	.loc 2 278 26 discriminator 12
	addq	$1, -24(%rbp)
.L80:
	.loc 2 276 7 discriminator 5
	cmpl	$0, -32(%rbp)
	jg	.L86
	.loc 2 290 10
	cmpl	$159, -28(%rbp)
	ja	.L87
	.loc 2 291 12
	cmpl	$36, -28(%rbp)
	je	.L87
	.loc 2 291 33 discriminator 1
	cmpl	$64, -28(%rbp)
	je	.L87
	.loc 2 291 54 discriminator 2
	cmpl	$96, -28(%rbp)
	jne	.L88
.L87:
	.loc 2 292 11
	cmpl	$55295, -28(%rbp)
	jbe	.L89
	.loc 2 292 35 discriminator 1
	cmpl	$57343, -28(%rbp)
	ja	.L89
.L88:
.LBB8:
	.loc 2 293 9
	cmpb	$117, -37(%rbp)
	jne	.L90
	.loc 2 293 9 is_stmt 0 discriminator 1
	movl	$4, %r12d
	jmp	.L91
.L90:
	.loc 2 293 9 discriminator 2
	movl	$8, %r12d
.L91:
	.loc 2 293 9 discriminator 4
	movsbl	-37(%rbp), %ebx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movl	-28(%rbp), %edx
	movl	%edx, %r9d
	movl	%r12d, %r8d
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L89:
.LBE8:
	.loc 2 296 7 is_stmt 1
	movq	stdout(%rip), %rax
	movl	-28(%rbp), %ecx
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_unicode_char@PLT
.LBE6:
	.loc 2 271 5
	jmp	.L68
.L77:
	.loc 2 300 7
	movl	$92, %edi
	call	putchar_unlocked@PLT
	.loc 2 301 11
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 301 10
	testb	%al, %al
	je	.L68
	.loc 2 303 11
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 2 304 12
	addq	$1, -24(%rbp)
.L68:
	.loc 2 307 12
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	.loc 2 307 23
	subl	$1, %eax
	.loc 2 308 1
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	print_esc, .-print_esc
	.type	print_esc_string, @function
print_esc_string:
.LFB53:
	.loc 2 314 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 315 3
	jmp	.L94
.L97:
	.loc 2 316 9
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 316 8
	cmpb	$92, %al
	jne	.L95
	.loc 2 317 14
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	print_esc
	cltq
	.loc 2 317 11
	addq	%rax, -8(%rbp)
	jmp	.L96
.L95:
	.loc 2 319 7
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L96:
	.loc 2 315 19
	addq	$1, -8(%rbp)
.L94:
	.loc 2 315 10 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 315 3 discriminator 1
	testb	%al, %al
	jne	.L97
	.loc 2 320 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	print_esc_string, .-print_esc_string
	.section	.rodata
.LC37:
	.string	"ld"
.LC38:
	.string	"L"
	.text
	.type	print_direc, @function
print_direc:
.LFB54:
	.loc 2 335 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%ecx, %eax
	movl	%r8d, -92(%rbp)
	movl	%r9d, %ecx
	movb	%dl, -84(%rbp)
	movb	%al, -88(%rbp)
	movl	%ecx, %eax
	movb	%al, -96(%rbp)
.LBB9:
	.loc 2 346 5
	movsbl	-84(%rbp), %eax
	subl	$65, %eax
	cmpl	$55, %eax
	ja	.L99
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L101(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L101(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L101:
	.long	.L102-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L102-.L101
	.long	.L102-.L101
	.long	.L102-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L100-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L102-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L100-.L101
	.long	.L102-.L101
	.long	.L102-.L101
	.long	.L102-.L101
	.long	.L99-.L101
	.long	.L100-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L100-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L100-.L101
	.long	.L99-.L101
	.long	.L99-.L101
	.long	.L100-.L101
	.text
.L100:
	.loc 2 349 25
	leaq	.LC37(%rip), %rax
	movq	%rax, -64(%rbp)
	.loc 2 350 29
	movq	$1, -56(%rbp)
	.loc 2 351 9
	jmp	.L103
.L102:
	.loc 2 355 25
	leaq	.LC38(%rip), %rax
	movq	%rax, -64(%rbp)
	.loc 2 356 29
	movq	$1, -56(%rbp)
	.loc 2 357 9
	jmp	.L103
.L99:
	.loc 2 360 25
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 2 361 29
	movq	$0, -56(%rbp)
	.loc 2 362 9
	nop
.L103:
	.loc 2 365 25
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 365 9
	addq	$2, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -48(%rbp)
	.loc 2 366 9
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy@PLT
	movq	%rax, -40(%rbp)
	.loc 2 367 9
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy@PLT
	movq	%rax, -40(%rbp)
	.loc 2 368 7
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 368 10
	movzbl	-84(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 369 8
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
.LBE9:
	.loc 2 372 3
	movsbl	-84(%rbp), %eax
	subl	$65, %eax
	cmpl	$55, %eax
	ja	.L104
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L106(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L106(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L106:
	.long	.L109-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L109-.L106
	.long	.L109-.L106
	.long	.L109-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L105-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L109-.L106
	.long	.L104-.L106
	.long	.L110-.L106
	.long	.L108-.L106
	.long	.L109-.L106
	.long	.L109-.L106
	.long	.L109-.L106
	.long	.L104-.L106
	.long	.L108-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L105-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L107-.L106
	.long	.L104-.L106
	.long	.L105-.L106
	.long	.L104-.L106
	.long	.L104-.L106
	.long	.L105-.L106
	.text
.L108:
.LBB10:
	.loc 2 377 24
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	vstrtoimax
	movq	%rax, -32(%rbp)
	.loc 2 378 13
	movzbl	-88(%rbp), %eax
	xorl	$1, %eax
	.loc 2 378 12
	testb	%al, %al
	je	.L111
	.loc 2 380 17
	movzbl	-96(%rbp), %eax
	xorl	$1, %eax
	.loc 2 380 16
	testb	%al, %al
	je	.L112
	.loc 2 381 15
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
.LBE10:
	.loc 2 393 7
	jmp	.L104
.L112:
.LBB11:
	.loc 2 383 15
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
.LBE11:
	.loc 2 393 7
	jmp	.L104
.L111:
.LBB12:
	.loc 2 387 17
	movzbl	-96(%rbp), %eax
	xorl	$1, %eax
	.loc 2 387 16
	testb	%al, %al
	je	.L114
	.loc 2 388 15
	movq	-32(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
.LBE12:
	.loc 2 393 7
	jmp	.L104
.L114:
.LBB13:
	.loc 2 390 15
	movq	-32(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	16(%rbp), %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
.LBE13:
	.loc 2 393 7
	jmp	.L104
.L105:
.LBB14:
	.loc 2 400 25
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	vstrtoumax
	movq	%rax, -24(%rbp)
	.loc 2 401 13
	movzbl	-88(%rbp), %eax
	xorl	$1, %eax
	.loc 2 401 12
	testb	%al, %al
	je	.L115
	.loc 2 403 17
	movzbl	-96(%rbp), %eax
	xorl	$1, %eax
	.loc 2 403 16
	testb	%al, %al
	je	.L116
	.loc 2 404 15
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
.LBE14:
	.loc 2 416 7
	jmp	.L104
.L116:
.LBB15:
	.loc 2 406 15
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
.LBE15:
	.loc 2 416 7
	jmp	.L104
.L115:
.LBB16:
	.loc 2 410 17
	movzbl	-96(%rbp), %eax
	xorl	$1, %eax
	.loc 2 410 16
	testb	%al, %al
	je	.L118
	.loc 2 411 15
	movq	-24(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
.LBE16:
	.loc 2 416 7
	jmp	.L104
.L118:
.LBB17:
	.loc 2 413 15
	movq	-24(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	16(%rbp), %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
.LBE17:
	.loc 2 416 7
	jmp	.L104
.L109:
.LBB18:
	.loc 2 427 27
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	vstrtold
	fstpt	-16(%rbp)
	.loc 2 428 13
	movzbl	-88(%rbp), %eax
	xorl	$1, %eax
	.loc 2 428 12
	testb	%al, %al
	je	.L119
	.loc 2 430 17
	movzbl	-96(%rbp), %eax
	xorl	$1, %eax
	.loc 2 430 16
	testb	%al, %al
	je	.L120
	.loc 2 431 15
	movq	-48(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	addq	$16, %rsp
.LBE18:
	.loc 2 443 7
	jmp	.L104
.L120:
.LBB19:
	.loc 2 433 15
	movq	-48(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	addq	$16, %rsp
.LBE19:
	.loc 2 443 7
	jmp	.L104
.L119:
.LBB20:
	.loc 2 437 17
	movzbl	-96(%rbp), %eax
	xorl	$1, %eax
	.loc 2 437 16
	testb	%al, %al
	je	.L122
	.loc 2 438 15
	movl	-92(%rbp), %edx
	movq	-48(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	addq	$16, %rsp
.LBE20:
	.loc 2 443 7
	jmp	.L104
.L122:
.LBB21:
	.loc 2 440 15
	movl	-92(%rbp), %ecx
	movq	-48(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	movl	16(%rbp), %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	addq	$16, %rsp
.LBE21:
	.loc 2 443 7
	jmp	.L104
.L110:
	.loc 2 446 11
	movzbl	-88(%rbp), %eax
	xorl	$1, %eax
	.loc 2 446 10
	testb	%al, %al
	je	.L123
	.loc 2 447 21
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 447 9
	movsbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	.loc 2 450 7
	jmp	.L104
.L123:
	.loc 2 449 34
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 449 9
	movsbl	%al, %edx
	movl	-92(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	.loc 2 450 7
	jmp	.L104
.L107:
	.loc 2 453 11
	movzbl	-88(%rbp), %eax
	xorl	$1, %eax
	.loc 2 453 10
	testb	%al, %al
	je	.L125
	.loc 2 455 15
	movzbl	-96(%rbp), %eax
	xorl	$1, %eax
	.loc 2 455 14
	testb	%al, %al
	je	.L126
	.loc 2 456 13
	movq	24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	.loc 2 467 7
	jmp	.L129
.L126:
	.loc 2 458 13
	movq	24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	.loc 2 467 7
	jmp	.L129
.L125:
	.loc 2 462 15
	movzbl	-96(%rbp), %eax
	xorl	$1, %eax
	.loc 2 462 14
	testb	%al, %al
	je	.L128
	.loc 2 463 13
	movq	24(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
	.loc 2 467 7
	jmp	.L129
.L128:
	.loc 2 465 13
	movq	24(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	16(%rbp), %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	xprintf@PLT
.L129:
	.loc 2 467 7
	nop
.L104:
	.loc 2 470 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 471 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	print_direc, .-print_direc
	.section	.rodata
.LC39:
	.string	"invalid field width: %s"
.LC40:
	.string	"invalid precision: %s"
	.align 8
.LC41:
	.string	"%.*s: invalid conversion specification"
	.text
	.type	print_formatted, @function
print_formatted:
.LFB55:
	.loc 2 479 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$376, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -360(%rbp)
	movl	%esi, -364(%rbp)
	movq	%rdx, -376(%rbp)
	.loc 2 479 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 480 7
	movl	-364(%rbp), %eax
	movl	%eax, -332(%rbp)
	.loc 2 485 7
	movl	$0, -340(%rbp)
	.loc 2 487 7
	movl	$0, -336(%rbp)
	.loc 2 490 10
	movq	-360(%rbp), %rax
	movq	%rax, -328(%rbp)
	.loc 2 490 3
	jmp	.L131
.L171:
	.loc 2 492 15
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 492 7
	cmpl	$37, %eax
	je	.L132
	cmpl	$92, %eax
	je	.L133
	jmp	.L174
.L132:
	.loc 2 495 26
	movq	-328(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -328(%rbp)
	.loc 2 495 23
	movq	%rax, -312(%rbp)
	.loc 2 496 24
	movq	$1, -320(%rbp)
	.loc 2 497 45
	movb	$0, -342(%rbp)
	.loc 2 497 28
	movzbl	-342(%rbp), %eax
	movb	%al, -343(%rbp)
	.loc 2 498 15
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 498 14
	cmpb	$37, %al
	jne	.L135
	.loc 2 500 15
	movl	$37, %edi
	call	putchar_unlocked@PLT
	.loc 2 501 15
	jmp	.L136
.L135:
	.loc 2 503 15
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 503 14
	cmpb	$98, %al
	jne	.L137
	.loc 2 507 18
	cmpl	$0, -364(%rbp)
	jle	.L175
	.loc 2 509 19
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	print_esc_string
	.loc 2 510 19
	addq	$8, -376(%rbp)
	.loc 2 511 19
	subl	$1, -364(%rbp)
	.loc 2 513 15
	jmp	.L175
.L137:
	.loc 2 516 15
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 516 14
	cmpb	$113, %al
	jne	.L139
	.loc 2 518 18
	cmpl	$0, -364(%rbp)
	jle	.L176
	.loc 2 520 19
	movq	stdout(%rip), %rbx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	quotearg_style@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 522 19
	addq	$8, -376(%rbp)
	.loc 2 523 19
	subl	$1, -364(%rbp)
	.loc 2 525 15
	jmp	.L176
.L139:
	.loc 2 528 11
	leaq	-288(%rbp), %rax
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 2 531 51
	movb	$1, -200(%rbp)
	.loc 2 531 45
	movzbl	-200(%rbp), %eax
	.loc 2 531 41
	movb	%al, -168(%rbp)
	.loc 2 531 35
	movzbl	-168(%rbp), %eax
	.loc 2 531 31
	movb	%al, -171(%rbp)
	.loc 2 531 25
	movzbl	-171(%rbp), %eax
	.loc 2 531 21
	movb	%al, -173(%rbp)
	.loc 2 531 15
	movzbl	-173(%rbp), %eax
	.loc 2 530 71
	movb	%al, -177(%rbp)
	.loc 2 530 65
	movzbl	-177(%rbp), %eax
	.loc 2 530 61
	movb	%al, -183(%rbp)
	.loc 2 530 55
	movzbl	-183(%rbp), %eax
	.loc 2 530 51
	movb	%al, -217(%rbp)
	.loc 2 530 45
	movzbl	-217(%rbp), %eax
	.loc 2 530 41
	movb	%al, -185(%rbp)
	.loc 2 530 35
	movzbl	-185(%rbp), %eax
	.loc 2 530 31
	movb	%al, -218(%rbp)
	.loc 2 530 25
	movzbl	-218(%rbp), %eax
	.loc 2 530 21
	movb	%al, -186(%rbp)
	.loc 2 530 15
	movzbl	-186(%rbp), %eax
	.loc 2 529 69
	movb	%al, -219(%rbp)
	.loc 2 529 63
	movzbl	-219(%rbp), %eax
	.loc 2 529 59
	movb	%al, -187(%rbp)
	.loc 2 529 53
	movzbl	-187(%rbp), %eax
	.loc 2 529 49
	movb	%al, -188(%rbp)
	.loc 2 529 43
	movzbl	-188(%rbp), %eax
	.loc 2 529 39
	movb	%al, -189(%rbp)
	.loc 2 529 33
	movzbl	-189(%rbp), %eax
	.loc 2 529 29
	movb	%al, -223(%rbp)
	.loc 2 529 23
	movzbl	-223(%rbp), %eax
	.loc 2 529 19
	movb	%al, -191(%rbp)
.L149:
	.loc 2 534 21
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$32, %eax
	cmpl	$41, %eax
	ja	.L177
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L143(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L143(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L143:
	.long	.L178-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L146-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L142-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L178-.L143
	.long	.L177-.L143
	.long	.L178-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L144-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L177-.L143
	.long	.L142-.L143
	.text
.L142:
	.loc 2 541 57
	movb	$0, -200(%rbp)
	.loc 2 541 51
	movzbl	-200(%rbp), %eax
	.loc 2 541 47
	movb	%al, -168(%rbp)
	.loc 2 541 41
	movzbl	-168(%rbp), %eax
	.loc 2 541 37
	movb	%al, -173(%rbp)
	.loc 2 541 31
	movzbl	-173(%rbp), %eax
	.loc 2 541 27
	movb	%al, -177(%rbp)
	.loc 2 541 21
	movzbl	-177(%rbp), %eax
	.loc 2 540 65
	movb	%al, -219(%rbp)
	.loc 2 540 59
	movzbl	-219(%rbp), %eax
	.loc 2 540 55
	movb	%al, -187(%rbp)
	.loc 2 540 49
	movzbl	-187(%rbp), %eax
	.loc 2 540 45
	movb	%al, -189(%rbp)
	.loc 2 540 39
	movzbl	-189(%rbp), %eax
	.loc 2 540 35
	movb	%al, -223(%rbp)
	.loc 2 540 29
	movzbl	-223(%rbp), %eax
	.loc 2 540 25
	movb	%al, -191(%rbp)
	.loc 2 542 17
	jmp	.L147
.L146:
	.loc 2 546 65
	movb	$0, -171(%rbp)
	.loc 2 546 59
	movzbl	-171(%rbp), %eax
	.loc 2 546 55
	movb	%al, -173(%rbp)
	.loc 2 546 49
	movzbl	-173(%rbp), %eax
	.loc 2 546 45
	movb	%al, -183(%rbp)
	.loc 2 546 39
	movzbl	-183(%rbp), %eax
	.loc 2 546 35
	movb	%al, -188(%rbp)
	.loc 2 546 29
	movzbl	-188(%rbp), %eax
	.loc 2 546 25
	movb	%al, -189(%rbp)
	.loc 2 547 17
	jmp	.L147
.L144:
	.loc 2 549 35
	movb	$0, -173(%rbp)
	.loc 2 549 29
	movzbl	-173(%rbp), %eax
	.loc 2 549 25
	movb	%al, -189(%rbp)
	.loc 2 550 17
	jmp	.L147
.L178:
	.loc 2 544 17
	nop
.L147:
	.loc 2 533 20
	addq	$1, -328(%rbp)
	.loc 2 533 36
	addq	$1, -320(%rbp)
	.loc 2 534 13
	jmp	.L149
.L177:
	.loc 2 552 17
	nop
.L148:
	endbr64
	.loc 2 556 15
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 556 14
	cmpb	$42, %al
	jne	.L155
	.loc 2 558 15
	addq	$1, -328(%rbp)
	.loc 2 559 15
	addq	$1, -320(%rbp)
	.loc 2 560 18
	cmpl	$0, -364(%rbp)
	jle	.L151
.LBB22:
	.loc 2 562 36
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	vstrtoimax
	movq	%rax, -304(%rbp)
	.loc 2 563 22
	movabsq	$-2147483649, %rax
	cmpq	%rax, -304(%rbp)
	jle	.L152
	.loc 2 563 40 discriminator 1
	movl	$2147483648, %eax
	cmpq	%rax, -304(%rbp)
	jge	.L152
	.loc 2 564 33
	movq	-304(%rbp), %rax
	movl	%eax, -340(%rbp)
	.loc 2 568 19
	addq	$8, -376(%rbp)
	.loc 2 569 19
	subl	$1, -364(%rbp)
.LBE22:
	jmp	.L153
.L152:
.LBB24:
.LBB23:
	.loc 2 566 21
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L151:
.LBE23:
.LBE24:
	.loc 2 572 29
	movl	$0, -340(%rbp)
.L153:
	.loc 2 573 32
	movb	$1, -343(%rbp)
	jmp	.L154
.L156:
	.loc 2 578 17
	addq	$1, -328(%rbp)
	.loc 2 579 17
	addq	$1, -320(%rbp)
.L155:
	.loc 2 576 20
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 576 19
	cmpl	$9, %eax
	jbe	.L156
.L154:
	.loc 2 581 15
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 581 14
	cmpb	$46, %al
	jne	.L166
	.loc 2 583 15
	addq	$1, -328(%rbp)
	.loc 2 584 15
	addq	$1, -320(%rbp)
	.loc 2 585 23
	movb	$0, -189(%rbp)
	.loc 2 586 19
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 586 18
	cmpb	$42, %al
	jne	.L164
	.loc 2 588 19
	addq	$1, -328(%rbp)
	.loc 2 589 19
	addq	$1, -320(%rbp)
	.loc 2 590 22
	cmpl	$0, -364(%rbp)
	jle	.L159
.LBB25:
	.loc 2 592 39
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	vstrtoimax
	movq	%rax, -296(%rbp)
	.loc 2 593 26
	cmpq	$0, -296(%rbp)
	jns	.L160
	.loc 2 598 37
	movl	$-1, -336(%rbp)
	jmp	.L161
.L160:
	.loc 2 600 31
	movl	$2147483648, %eax
	cmpq	%rax, -296(%rbp)
	jl	.L162
.LBB26:
	.loc 2 601 25
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L162:
.LBE26:
	.loc 2 604 35
	movq	-296(%rbp), %rax
	movl	%eax, -336(%rbp)
.L161:
	.loc 2 605 23
	addq	$8, -376(%rbp)
	.loc 2 606 23
	subl	$1, -364(%rbp)
.LBE25:
	jmp	.L163
.L159:
	.loc 2 609 31
	movl	$0, -336(%rbp)
.L163:
	.loc 2 610 34
	movb	$1, -342(%rbp)
	jmp	.L166
.L165:
	.loc 2 615 21
	addq	$1, -328(%rbp)
	.loc 2 616 21
	addq	$1, -320(%rbp)
.L164:
	.loc 2 613 24
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 613 23
	cmpl	$9, %eax
	jbe	.L165
	.loc 2 620 17
	jmp	.L166
.L167:
	.loc 2 622 13
	addq	$1, -328(%rbp)
.L166:
	.loc 2 620 18
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 620 17
	cmpb	$108, %al
	je	.L167
	.loc 2 620 31 discriminator 1
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 620 28 discriminator 1
	cmpb	$76, %al
	je	.L167
	.loc 2 620 44 discriminator 2
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 620 41 discriminator 2
	cmpb	$104, %al
	je	.L167
	.loc 2 621 21
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 621 18
	cmpb	$106, %al
	je	.L167
	.loc 2 621 34 discriminator 1
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 621 31 discriminator 1
	cmpb	$116, %al
	je	.L167
	.loc 2 621 47 discriminator 2
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 621 44 discriminator 2
	cmpb	$122, %al
	je	.L167
.LBB27:
	.loc 2 625 40
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 625 27
	movb	%al, -341(%rbp)
	.loc 2 626 21
	movzbl	-341(%rbp), %eax
	cltq
	movzbl	-288(%rbp,%rax), %eax
	.loc 2 626 16
	testb	%al, %al
	jne	.L168
.LBB28:
	.loc 2 627 15
	movq	-328(%rbp), %rax
	addq	$1, %rax
	subq	-312(%rbp), %rax
	movl	%eax, %ebx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	-312(%rbp), %rdx
	movq	%rdx, %r8
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L168:
.LBE28:
.LBE27:
	.loc 2 632 11
	cmpl	$0, -364(%rbp)
	jle	.L169
	.loc 2 635 47 discriminator 1
	subl	$1, -364(%rbp)
	.loc 2 635 56 discriminator 1
	movq	-376(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -376(%rbp)
	.loc 2 632 11 discriminator 1
	movq	(%rax), %rax
	jmp	.L170
.L169:
	.loc 2 632 11 is_stmt 0 discriminator 2
	leaq	.LC16(%rip), %rax
.L170:
	.loc 2 632 11 discriminator 4
	movzbl	-342(%rbp), %r9d
	movzbl	-343(%rbp), %ecx
	.loc 2 632 51 is_stmt 1 discriminator 4
	movq	-328(%rbp), %rdx
	movzbl	(%rdx), %edx
	.loc 2 632 11 discriminator 4
	movsbl	%dl, %edx
	movl	-340(%rbp), %r8d
	movq	-320(%rbp), %rsi
	movq	-312(%rbp), %rdi
	pushq	%rax
	movl	-336(%rbp), %eax
	pushq	%rax
	call	print_direc
	addq	$16, %rsp
	.loc 2 636 11 discriminator 4
	jmp	.L136
.L133:
	.loc 2 639 16
	movq	-328(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	print_esc
	cltq
	.loc 2 639 13
	addq	%rax, -328(%rbp)
	.loc 2 640 11
	jmp	.L136
.L174:
	.loc 2 643 11
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	jmp	.L136
.L175:
	.loc 2 513 15
	nop
	jmp	.L136
.L176:
	.loc 2 525 15
	nop
.L136:
	.loc 2 490 24 discriminator 2
	addq	$1, -328(%rbp)
.L131:
	.loc 2 490 20 discriminator 1
	movq	-328(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 490 3 discriminator 1
	testb	%al, %al
	jne	.L171
	.loc 2 647 20
	movl	-332(%rbp), %eax
	subl	-364(%rbp), %eax
	.loc 2 648 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L173
	call	__stack_chk_fail@PLT
.L173:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	print_formatted, .-print_formatted
	.section	.rodata
.LC42:
	.string	"/usr/local/share/locale"
.LC43:
	.string	"POSIXLY_CORRECT"
.LC44:
	.string	"--help"
.LC45:
	.string	"--version"
.LC46:
	.string	"David MacKenzie"
.LC47:
	.string	"--"
.LC48:
	.string	"missing operand"
	.align 8
.LC49:
	.string	"warning: ignoring excess arguments, starting with %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB56:
	.loc 2 652 1
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
	.loc 2 657 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 658 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 659 3
	leaq	.LC42(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 660 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 662 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 664 15
	movl	$0, exit_status(%rip)
	.loc 2 666 22
	leaq	.LC43(%rip), %rdi
	call	getenv@PLT
	.loc 2 666 49
	testq	%rax, %rax
	setne	%al
	.loc 2 666 19
	movb	%al, posixly_correct(%rip)
	.loc 2 670 6
	cmpl	$2, -36(%rbp)
	jne	.L180
	.loc 2 672 11
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 672 10
	testl	%eax, %eax
	jne	.L181
	.loc 2 673 9
	movl	$0, %edi
	call	usage
.L181:
	.loc 2 675 11
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 675 10
	testl	%eax, %eax
	jne	.L180
	.loc 2 677 11
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC46(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	.loc 2 679 18
	movl	$0, %eax
	jmp	.L182
.L180:
	.loc 2 685 6
	cmpl	$1, -36(%rbp)
	jle	.L183
	.loc 2 685 19 discriminator 1
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 685 16 discriminator 1
	testl	%eax, %eax
	jne	.L183
	.loc 2 687 7
	subl	$1, -36(%rbp)
	.loc 2 688 7
	addq	$8, -48(%rbp)
.L183:
	.loc 2 691 6
	cmpl	$1, -36(%rbp)
	jg	.L184
	.loc 2 693 20
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	.loc 2 693 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 694 7
	movl	$1, %edi
	call	usage
.L184:
	.loc 2 697 10
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 698 8
	subl	$2, -36(%rbp)
	.loc 2 699 8
	addq	$16, -48(%rbp)
.L186:
	.loc 2 703 19 discriminator 2
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_formatted
	movl	%eax, -28(%rbp)
	.loc 2 704 12 discriminator 2
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	.loc 2 705 12 discriminator 2
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -48(%rbp)
	.loc 2 707 3 discriminator 2
	cmpl	$0, -28(%rbp)
	jle	.L185
	.loc 2 707 24 discriminator 1
	cmpl	$0, -36(%rbp)
	jg	.L186
.L185:
	.loc 2 709 6
	cmpl	$0, -36(%rbp)
	jle	.L187
	.loc 2 710 5
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 711 12
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	.loc 2 710 5
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L187:
	.loc 2 714 10
	movl	exit_status(%rip), %eax
.L182:
	.loc 2 715 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
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
	.file 11 "/usr/include/time.h"
	.file 12 "/usr/include/signal.h"
	.file 13 "/usr/include/unistd.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/include/errno.h"
	.file 16 "src/version.h"
	.file 17 "./lib/exitfail.h"
	.file 18 "/usr/include/stdint.h"
	.file 19 "./lib/timespec.h"
	.file 20 "/usr/include/ctype.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd55
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF163
	.byte	0xc
	.long	.LASF164
	.long	.LASF165
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
	.byte	0x48
	.byte	0x12
	.long	0x71
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
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
	.long	.LASF157
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
	.long	0x90
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
	.long	0x9c
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
	.long	.LASF166
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
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2c5
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2c5
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2c5
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2b4
	.long	0x2fa
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2ef
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2fa
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF53
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2fa
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0xa8
	.uleb128 0x11
	.long	.LASF57
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF58
	.uleb128 0xd
	.long	0xb4
	.long	0x361
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF59
	.byte	0xb
	.byte	0x9f
	.byte	0xe
	.long	0x351
	.uleb128 0xf
	.long	.LASF60
	.byte	0xb
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF62
	.byte	0xb
	.byte	0xa6
	.byte	0xe
	.long	0x351
	.uleb128 0xf
	.long	.LASF63
	.byte	0xb
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF64
	.byte	0xb
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF65
	.byte	0xb
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x3b6
	.uleb128 0xd
	.long	0x2b4
	.long	0x3cd
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x3bd
	.uleb128 0x11
	.long	.LASF66
	.byte	0xc
	.value	0x11e
	.byte	0x1a
	.long	0x3cd
	.uleb128 0x11
	.long	.LASF67
	.byte	0xc
	.value	0x11f
	.byte	0x1a
	.long	0x3cd
	.uleb128 0x11
	.long	.LASF68
	.byte	0xd
	.value	0x21f
	.byte	0xf
	.long	0x3f9
	.uleb128 0x7
	.byte	0x8
	.long	0xb4
	.uleb128 0x11
	.long	.LASF69
	.byte	0xd
	.value	0x221
	.byte	0xf
	.long	0x3f9
	.uleb128 0xf
	.long	.LASF70
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF71
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF74
	.byte	0xf
	.byte	0x2d
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF75
	.byte	0xf
	.byte	0x2e
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF76
	.byte	0x10
	.byte	0x1
	.byte	0x14
	.long	0x2ae
	.uleb128 0xf
	.long	.LASF77
	.byte	0x11
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0xd
	.long	0xba
	.long	0x47c
	.uleb128 0xe
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x12
	.byte	0x65
	.byte	0x15
	.long	0x78
	.uleb128 0x2
	.long	.LASF79
	.byte	0x12
	.byte	0x66
	.byte	0x16
	.long	0x84
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x29
	.byte	0x6
	.long	0x4ac
	.uleb128 0x14
	.long	.LASF80
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x2a
	.byte	0x6
	.long	0x4c1
	.uleb128 0x15
	.long	.LASF81
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2f
	.byte	0x1
	.long	0x520
	.uleb128 0x16
	.long	.LASF82
	.value	0x100
	.uleb128 0x16
	.long	.LASF83
	.value	0x200
	.uleb128 0x16
	.long	.LASF84
	.value	0x400
	.uleb128 0x16
	.long	.LASF85
	.value	0x800
	.uleb128 0x16
	.long	.LASF86
	.value	0x1000
	.uleb128 0x16
	.long	.LASF87
	.value	0x2000
	.uleb128 0x16
	.long	.LASF88
	.value	0x4000
	.uleb128 0x16
	.long	.LASF89
	.value	0x8000
	.uleb128 0x15
	.long	.LASF90
	.byte	0x1
	.uleb128 0x15
	.long	.LASF91
	.byte	0x2
	.uleb128 0x15
	.long	.LASF92
	.byte	0x4
	.uleb128 0x15
	.long	.LASF93
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0xc1
	.long	0x52b
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x520
	.uleb128 0xf
	.long	.LASF94
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x52b
	.uleb128 0xf
	.long	.LASF95
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x2ae
	.uleb128 0x17
	.long	.LASF167
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x59d
	.uleb128 0x15
	.long	.LASF96
	.byte	0
	.uleb128 0x15
	.long	.LASF97
	.byte	0x1
	.uleb128 0x15
	.long	.LASF98
	.byte	0x2
	.uleb128 0x15
	.long	.LASF99
	.byte	0x3
	.uleb128 0x15
	.long	.LASF100
	.byte	0x4
	.uleb128 0x15
	.long	.LASF101
	.byte	0x5
	.uleb128 0x15
	.long	.LASF102
	.byte	0x6
	.uleb128 0x15
	.long	.LASF103
	.byte	0x7
	.uleb128 0x15
	.long	.LASF104
	.byte	0x8
	.uleb128 0x15
	.long	.LASF105
	.byte	0x9
	.uleb128 0x15
	.long	.LASF106
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x548
	.uleb128 0x11
	.long	.LASF107
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2fa
	.uleb128 0xd
	.long	0x59d
	.long	0x5ba
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5af
	.uleb128 0x11
	.long	.LASF108
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x5ba
	.uleb128 0xf
	.long	.LASF109
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x3b7
	.uleb128 0xf
	.long	.LASF110
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF111
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF112
	.uleb128 0xf
	.long	.LASF113
	.byte	0x19
	.byte	0x19
	.byte	0x1f
	.long	0x5f0
	.uleb128 0x18
	.long	.LASF114
	.byte	0x2
	.byte	0x4c
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	exit_status
	.uleb128 0x18
	.long	.LASF115
	.byte	0x2
	.byte	0x4f
	.byte	0xd
	.long	0x62d
	.uleb128 0x9
	.byte	0x3
	.quad	posixly_correct
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF116
	.uleb128 0x18
	.long	.LASF117
	.byte	0x2
	.byte	0x53
	.byte	0x1a
	.long	0x2b4
	.uleb128 0x9
	.byte	0x3
	.quad	cfcc_msg
	.uleb128 0x19
	.long	.LASF152
	.byte	0x2
	.value	0x28b
	.byte	0x1
	.long	0x65
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ae
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x2
	.value	0x28b
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x2
	.value	0x28b
	.byte	0x18
	.long	0x3f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x2
	.value	0x28d
	.byte	0x9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x2
	.value	0x28e
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.long	.LASF139
	.byte	0x2
	.value	0x1de
	.byte	0x1
	.long	0x65
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x844
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x2
	.value	0x1de
	.byte	0x1e
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x2
	.value	0x1de
	.byte	0x2a
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x2
	.value	0x1de
	.byte	0x37
	.long	0x3f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x2
	.value	0x1e0
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x1d
	.string	"f"
	.byte	0x2
	.value	0x1e1
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1b
	.long	.LASF123
	.byte	0x2
	.value	0x1e2
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x2
	.value	0x1e3
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1b
	.long	.LASF125
	.byte	0x2
	.value	0x1e4
	.byte	0x8
	.long	0x62d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -359
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x2
	.value	0x1e5
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x1b
	.long	.LASF127
	.byte	0x2
	.value	0x1e6
	.byte	0x8
	.long	0x62d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -358
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x2
	.value	0x1e7
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1d
	.string	"ok"
	.byte	0x2
	.value	0x1e8
	.byte	0x8
	.long	0x46c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1e
	.long	.LASF168
	.byte	0x2
	.value	0x22a
	.byte	0x9
	.quad	.L148
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0xf0
	.long	0x7d7
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x2
	.value	0x232
	.byte	0x1c
	.long	0x47c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x20
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0
	.uleb128 0x21
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x80f
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x2
	.value	0x250
	.byte	0x20
	.long	0x47c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x20
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0
	.uleb128 0x22
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x2
	.value	0x271
	.byte	0x1b
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -357
	.uleb128 0x20
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF137
	.byte	0x2
	.value	0x14b
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x988
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x2
	.value	0x14b
	.byte	0x1a
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x2
	.value	0x14b
	.byte	0x28
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x2
	.value	0x14b
	.byte	0x35
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x2
	.value	0x14c
	.byte	0x13
	.long	0x62d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.long	.LASF126
	.byte	0x2
	.value	0x14c
	.byte	0x29
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x2
	.value	0x14d
	.byte	0x13
	.long	0x62d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x2
	.value	0x14d
	.byte	0x27
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x2
	.value	0x14e
	.byte	0x1a
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"p"
	.byte	0x2
	.value	0x150
	.byte	0x9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x93d
	.uleb128 0x1d
	.string	"q"
	.byte	0x2
	.value	0x156
	.byte	0xb
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x2
	.value	0x157
	.byte	0x11
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF136
	.byte	0x2
	.value	0x158
	.byte	0xc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0
	.long	0x957
	.uleb128 0x1d
	.string	"arg"
	.byte	0x2
	.value	0x179
	.byte	0x12
	.long	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x50
	.long	0x971
	.uleb128 0x1d
	.string	"arg"
	.byte	0x2
	.value	0x190
	.byte	0x13
	.long	0x488
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x1d
	.string	"arg"
	.byte	0x2
	.value	0x1ab
	.byte	0x15
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF138
	.byte	0x2
	.value	0x139
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b8
	.uleb128 0x25
	.string	"str"
	.byte	0x2
	.value	0x139
	.byte	0x1f
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF140
	.byte	0x2
	.byte	0xf0
	.byte	0x1
	.long	0x65
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xa8b
	.uleb128 0x27
	.long	.LASF141
	.byte	0x2
	.byte	0xf0
	.byte	0x18
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF142
	.byte	0x2
	.byte	0xf0
	.byte	0x27
	.long	0x62d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.byte	0xf2
	.byte	0xf
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF143
	.byte	0x2
	.byte	0xf3
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.long	.LASF144
	.byte	0x2
	.byte	0xf4
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x22
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1b
	.long	.LASF145
	.byte	0x2
	.value	0x110
	.byte	0xc
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x1b
	.long	.LASF146
	.byte	0x2
	.value	0x111
	.byte	0x14
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x20
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF147
	.byte	0x2
	.byte	0xc4
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xab7
	.uleb128 0x2a
	.string	"c"
	.byte	0x2
	.byte	0xc4
	.byte	0x16
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF148
	.byte	0x2
	.byte	0xbf
	.byte	0x1
	.long	0x32a
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xb26
	.uleb128 0x2a
	.string	"s"
	.byte	0x2
	.byte	0xbf
	.byte	0x1
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"end"
	.byte	0x2
	.byte	0xbf
	.byte	0x1
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"val"
	.byte	0x2
	.byte	0xbf
	.byte	0x1
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x28
	.string	"ch"
	.byte	0x2
	.byte	0xbf
	.byte	0x1
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF149
	.byte	0x2
	.byte	0xbe
	.byte	0x1
	.long	0x488
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xb94
	.uleb128 0x2a
	.string	"s"
	.byte	0x2
	.byte	0xbe
	.byte	0x1
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"end"
	.byte	0x2
	.byte	0xbe
	.byte	0x1
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"val"
	.byte	0x2
	.byte	0xbe
	.byte	0x1
	.long	0x488
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x28
	.string	"ch"
	.byte	0x2
	.byte	0xbe
	.byte	0x1
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF150
	.byte	0x2
	.byte	0xbd
	.byte	0x1
	.long	0x47c
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xc02
	.uleb128 0x2a
	.string	"s"
	.byte	0x2
	.byte	0xbd
	.byte	0x1
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"end"
	.byte	0x2
	.byte	0xbd
	.byte	0x1
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"val"
	.byte	0x2
	.byte	0xbd
	.byte	0x1
	.long	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x28
	.string	"ch"
	.byte	0x2
	.byte	0xbd
	.byte	0x1
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF151
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xc3d
	.uleb128 0x2a
	.string	"s"
	.byte	0x2
	.byte	0x91
	.byte	0x1d
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"end"
	.byte	0x2
	.byte	0x91
	.byte	0x2c
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2b
	.long	.LASF153
	.byte	0x2
	.byte	0x57
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xc6b
	.uleb128 0x27
	.long	.LASF154
	.byte	0x2
	.byte	0x57
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x23
	.long	.LASF155
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xd10
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.long	.LASF158
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xcc6
	.uleb128 0x2d
	.long	.LASF156
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2ae
	.byte	0
	.uleb128 0x2d
	.long	.LASF159
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2ae
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xc9b
	.uleb128 0x1b
	.long	.LASF158
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xd20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.long	.LASF159
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1b
	.long	.LASF160
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xd25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1b
	.long	.LASF161
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xcc6
	.long	0xd20
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xd10
	.uleb128 0x7
	.byte	0x8
	.long	0xcc6
	.uleb128 0x2e
	.long	.LASF162
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x49
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0xba
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF89:
	.string	"_ISgraph"
.LASF104:
	.string	"locale_quoting_style"
.LASF27:
	.string	"_chain"
.LASF130:
	.string	"prec"
.LASF167:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF33:
	.string	"_shortbuf"
.LASF87:
	.string	"_ISspace"
.LASF97:
	.string	"shell_quoting_style"
.LASF21:
	.string	"_IO_buf_base"
.LASF58:
	.string	"long long unsigned int"
.LASF141:
	.string	"escstart"
.LASF124:
	.string	"direc_length"
.LASF84:
	.string	"_ISalpha"
.LASF36:
	.string	"_codecvt"
.LASF85:
	.string	"_ISdigit"
.LASF61:
	.string	"__timezone"
.LASF54:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF108:
	.string	"quoting_style_vals"
.LASF79:
	.string	"uintmax_t"
.LASF156:
	.string	"program"
.LASF103:
	.string	"escape_quoting_style"
.LASF148:
	.string	"vstrtold"
.LASF96:
	.string	"literal_quoting_style"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF67:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF57:
	.string	"_gl_cxxalias_dummy"
.LASF14:
	.string	"_flags"
.LASF37:
	.string	"_wide_data"
.LASF93:
	.string	"_ISalnum"
.LASF31:
	.string	"_cur_column"
.LASF75:
	.string	"program_invocation_short_name"
.LASF101:
	.string	"c_quoting_style"
.LASF149:
	.string	"vstrtoumax"
.LASF45:
	.string	"_IO_codecvt"
.LASF126:
	.string	"field_width"
.LASF53:
	.string	"_sys_errlist"
.LASF74:
	.string	"program_invocation_name"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF90:
	.string	"_ISblank"
.LASF80:
	.string	"TIMESPEC_HZ"
.LASF100:
	.string	"shell_escape_always_quoting_style"
.LASF64:
	.string	"timezone"
.LASF92:
	.string	"_ISpunct"
.LASF95:
	.string	"program_name"
.LASF44:
	.string	"_IO_marker"
.LASF47:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF39:
	.string	"_freeres_buf"
.LASF73:
	.string	"optopt"
.LASF131:
	.string	"conversion"
.LASF0:
	.string	"long unsigned int"
.LASF122:
	.string	"save_argc"
.LASF134:
	.string	"argument"
.LASF19:
	.string	"_IO_write_ptr"
.LASF144:
	.string	"esc_length"
.LASF50:
	.string	"sys_nerr"
.LASF129:
	.string	"width"
.LASF163:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF146:
	.string	"uni_value"
.LASF3:
	.string	"short unsigned int"
.LASF111:
	.string	"error_one_per_line"
.LASF139:
	.string	"print_formatted"
.LASF143:
	.string	"esc_value"
.LASF76:
	.string	"Version"
.LASF8:
	.string	"__intmax_t"
.LASF151:
	.string	"verify_numeric"
.LASF23:
	.string	"_IO_save_base"
.LASF69:
	.string	"environ"
.LASF164:
	.string	"src/printf.c"
.LASF34:
	.string	"_lock"
.LASF41:
	.string	"_mode"
.LASF48:
	.string	"stdout"
.LASF127:
	.string	"have_precision"
.LASF94:
	.string	"version_etc_copyright"
.LASF70:
	.string	"optarg"
.LASF65:
	.string	"getdate_err"
.LASF71:
	.string	"optind"
.LASF15:
	.string	"_IO_read_ptr"
.LASF150:
	.string	"vstrtoimax"
.LASF136:
	.string	"length_modifier_len"
.LASF78:
	.string	"intmax_t"
.LASF166:
	.string	"_IO_lock_t"
.LASF157:
	.string	"_IO_FILE"
.LASF109:
	.string	"error_print_progname"
.LASF160:
	.string	"map_prog"
.LASF68:
	.string	"__environ"
.LASF56:
	.string	"time_t"
.LASF51:
	.string	"sys_errlist"
.LASF26:
	.string	"_markers"
.LASF135:
	.string	"length_modifier"
.LASF162:
	.string	"to_uchar"
.LASF102:
	.string	"c_maybe_quoting_style"
.LASF81:
	.string	"LOG10_TIMESPEC_HZ"
.LASF116:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF147:
	.string	"print_esc_char"
.LASF114:
	.string	"exit_status"
.LASF159:
	.string	"node"
.LASF22:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF29:
	.string	"_flags2"
.LASF113:
	.string	"quote_quoting_options"
.LASF121:
	.string	"args_used"
.LASF52:
	.string	"_sys_nerr"
.LASF32:
	.string	"_vtable_offset"
.LASF62:
	.string	"tzname"
.LASF138:
	.string	"print_esc_string"
.LASF77:
	.string	"exit_failure"
.LASF120:
	.string	"format"
.LASF99:
	.string	"shell_escape_quoting_style"
.LASF168:
	.string	"no_more_flag_characters"
.LASF107:
	.string	"quoting_style_args"
.LASF140:
	.string	"print_esc"
.LASF63:
	.string	"daylight"
.LASF55:
	.string	"long double"
.LASF133:
	.string	"length"
.LASF13:
	.string	"char"
.LASF98:
	.string	"shell_always_quoting_style"
.LASF91:
	.string	"_IScntrl"
.LASF12:
	.string	"__time_t"
.LASF128:
	.string	"precision"
.LASF86:
	.string	"_ISxdigit"
.LASF105:
	.string	"clocale_quoting_style"
.LASF125:
	.string	"have_field_width"
.LASF83:
	.string	"_ISlower"
.LASF72:
	.string	"opterr"
.LASF142:
	.string	"octal_0"
.LASF9:
	.string	"__uintmax_t"
.LASF11:
	.string	"__off64_t"
.LASF112:
	.string	"quoting_options"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF66:
	.string	"_sys_siglist"
.LASF158:
	.string	"infomap"
.LASF115:
	.string	"posixly_correct"
.LASF153:
	.string	"usage"
.LASF40:
	.string	"__pad5"
.LASF123:
	.string	"direc_start"
.LASF20:
	.string	"_IO_write_end"
.LASF42:
	.string	"_unused2"
.LASF49:
	.string	"stderr"
.LASF119:
	.string	"argv"
.LASF60:
	.string	"__daylight"
.LASF154:
	.string	"status"
.LASF165:
	.string	"/root/coreutils"
.LASF145:
	.string	"esc_char"
.LASF82:
	.string	"_ISupper"
.LASF106:
	.string	"custom_quoting_style"
.LASF117:
	.string	"cfcc_msg"
.LASF24:
	.string	"_IO_backup_base"
.LASF110:
	.string	"error_message_count"
.LASF161:
	.string	"lc_messages"
.LASF118:
	.string	"argc"
.LASF38:
	.string	"_freeres_list"
.LASF137:
	.string	"print_direc"
.LASF46:
	.string	"_IO_wide_data"
.LASF43:
	.string	"FILE"
.LASF132:
	.string	"start"
.LASF59:
	.string	"__tzname"
.LASF152:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
.LASF155:
	.string	"emit_ancillary_info"
.LASF88:
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
