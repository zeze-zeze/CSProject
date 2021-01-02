	.file	"test.c"
	.text
.Ltext0:
	.type	initialize_exit_failure, @function
initialize_exit_failure:
.LFB6:
	.file 1 "src/system.h"
	.loc 1 100 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 101 6
	cmpl	$1, -4(%rbp)
	je	.L3
	.loc 1 102 18
	movl	-4(%rbp), %eax
	movl	%eax, exit_failure(%rip)
.L3:
	.loc 1 103 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	initialize_exit_failure, .-initialize_exit_failure
	.type	to_uchar, @function
to_uchar:
.LFB11:
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
	je	.L11
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L11
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L11:
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
	jne	.L12
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L13
.L12:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L13:
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
	.local	pos
	.comm	pos,4,4
	.local	argc
	.comm	argc,4,4
	.local	argv
	.comm	argv,8,8
	.type	test_syntax_error, @function
test_syntax_error:
.LFB55:
	.file 2 "src/test.c"
	.loc 2 92 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L16
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L16:
	.loc 2 92 1
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 2 94 3
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 2 95 3
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	verror@PLT
	.loc 2 96 3
	movl	$2, %edi
	call	exit@PLT
	.cfi_endproc
.LFE55:
	.size	test_syntax_error, .-test_syntax_error
	.type	advance, @function
advance:
.LFB56:
	.loc 2 105 1
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
	.loc 2 106 3
	movl	pos(%rip), %eax
	addl	$1, %eax
	movl	%eax, pos(%rip)
	.loc 2 108 6
	cmpb	$0, -4(%rbp)
	je	.L20
	.loc 2 108 16 discriminator 1
	movl	pos(%rip), %edx
	movl	argc(%rip), %eax
	.loc 2 108 9 discriminator 1
	cmpl	%eax, %edx
	jl	.L20
	.loc 2 109 5
	call	beyond
.L20:
	.loc 2 110 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	advance, .-advance
	.type	unary_advance, @function
unary_advance:
.LFB57:
	.loc 2 114 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 115 3
	movl	$1, %edi
	call	advance
	.loc 2 116 3
	movl	pos(%rip), %eax
	addl	$1, %eax
	movl	%eax, pos(%rip)
	.loc 2 117 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	unary_advance, .-unary_advance
	.section	.rodata
.LC18:
	.string	"missing argument after %s"
	.text
	.type	beyond, @function
beyond:
.LFB58:
	.loc 2 125 1
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
	.loc 2 126 65
	movq	argv(%rip), %rax
	movl	argc(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 126 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 126 22
	leaq	.LC18(%rip), %rdi
	call	gettext@PLT
	.loc 2 126 3
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
	.cfi_endproc
.LFE58:
	.size	beyond, .-beyond
	.section	.rodata
.LC19:
	.string	"invalid integer %s"
	.text
	.type	find_int, @function
find_int:
.LFB59:
	.loc 2 134 1
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
	.loc 2 138 10
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 138 3
	jmp	.L24
.L25:
	.loc 2 138 46
	addq	$1, -32(%rbp)
.L24:
	.loc 2 138 20 discriminator 1
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	.loc 2 138 3 discriminator 1
	testl	%eax, %eax
	jne	.L25
	.loc 2 141 7
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 141 6
	cmpb	$43, %al
	jne	.L26
	.loc 2 143 8
	addq	$1, -32(%rbp)
	.loc 2 144 20
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L27
.L26:
	.loc 2 148 20
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 149 13
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 149 16
	cmpb	$45, %al
	sete	%al
	movzbl	%al, %eax
	.loc 2 149 9
	addq	%rax, -32(%rbp)
.L27:
	.loc 2 152 7
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 152 6
	cmpl	$9, %eax
	ja	.L28
	.loc 2 154 13
	jmp	.L29
.L30:
	.loc 2 155 10
	addq	$1, -32(%rbp)
.L29:
	.loc 2 154 14
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 154 13
	cmpl	$9, %eax
	jbe	.L30
	.loc 2 156 13
	jmp	.L31
.L32:
	.loc 2 157 10
	addq	$1, -32(%rbp)
.L31:
	.loc 2 156 14
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	.loc 2 156 13
	testl	%eax, %eax
	jne	.L32
	.loc 2 158 12
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 158 10
	testb	%al, %al
	jne	.L28
	.loc 2 159 16
	movq	-24(%rbp), %rax
	jmp	.L34
.L28:
	.loc 2 162 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 162 22
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	.loc 2 162 3
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
.L34:
	.loc 2 163 1 discriminator 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	find_int, .-find_int
	.type	get_mtime, @function
get_mtime:
.LFB60:
	.loc 2 169 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	.loc 2 169 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 171 14
	leaq	-160(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 171 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -161(%rbp)
	.loc 2 174 10
	movq	-192(%rbp), %rcx
	movq	zero.6316(%rip), %rax
	movq	8+zero.6316(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	.loc 2 176 6
	cmpb	$0, -161(%rbp)
	je	.L36
	.loc 2 177 14
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	-192(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L36:
	.loc 2 178 10
	movzbl	-161(%rbp), %eax
	.loc 2 179 1
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	get_mtime, .-get_mtime
	.section	.rodata
.LC20:
	.string	"="
.LC21:
	.string	"!="
.LC22:
	.string	"=="
.LC23:
	.string	"-nt"
.LC24:
	.string	"-ot"
.LC25:
	.string	"-ef"
.LC26:
	.string	"-eq"
.LC27:
	.string	"-ne"
.LC28:
	.string	"-lt"
.LC29:
	.string	"-le"
.LC30:
	.string	"-gt"
.LC31:
	.string	"-ge"
	.text
	.type	binop, @function
binop:
.LFB61:
	.loc 2 184 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 185 12
	movq	-8(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 189 30
	testl	%eax, %eax
	je	.L40
	.loc 2 185 34
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 185 30
	testl	%eax, %eax
	je	.L40
	.loc 2 185 56 discriminator 1
	movq	-8(%rbp), %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 185 52 discriminator 1
	testl	%eax, %eax
	je	.L40
	.loc 2 186 12 discriminator 2
	movq	-8(%rbp), %rax
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 185 73 discriminator 2
	testl	%eax, %eax
	je	.L40
	.loc 2 187 12
	movq	-8(%rbp), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 186 32
	testl	%eax, %eax
	je	.L40
	.loc 2 187 34
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 187 30
	testl	%eax, %eax
	je	.L40
	.loc 2 187 56 discriminator 1
	movq	-8(%rbp), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 187 52 discriminator 1
	testl	%eax, %eax
	je	.L40
	.loc 2 188 12 discriminator 2
	movq	-8(%rbp), %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 187 74 discriminator 2
	testl	%eax, %eax
	je	.L40
	.loc 2 188 34
	movq	-8(%rbp), %rax
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 188 30
	testl	%eax, %eax
	je	.L40
	.loc 2 188 56 discriminator 1
	movq	-8(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 188 52 discriminator 1
	testl	%eax, %eax
	je	.L40
	.loc 2 189 12 discriminator 2
	movq	-8(%rbp), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 188 74 discriminator 2
	testl	%eax, %eax
	je	.L40
	.loc 2 189 34 discriminator 2
	movq	-8(%rbp), %rax
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 189 30 discriminator 2
	testl	%eax, %eax
	jne	.L41
.L40:
	.loc 2 189 30 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L42
.L41:
	.loc 2 189 30 discriminator 3
	movl	$0, %eax
.L42:
	.loc 2 189 30 discriminator 5
	andl	$1, %eax
	.loc 2 190 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	binop, .-binop
	.section	.rodata
.LC32:
	.string	")"
.LC33:
	.string	"%s expected"
.LC34:
	.string	"%s expected, found %s"
.LC35:
	.string	"-l"
	.text
	.type	term, @function
term:
.LFB62:
	.loc 2 212 1
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
	.loc 2 214 8
	movb	$0, -21(%rbp)
	.loc 2 217 9
	jmp	.L45
.L47:
	.loc 2 219 7
	movl	$1, %edi
	call	advance
	.loc 2 220 7
	movzbl	-21(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 220 15
	movb	%al, -21(%rbp)
	andb	$1, -21(%rbp)
.L45:
	.loc 2 217 14
	movl	pos(%rip), %edx
	movl	argc(%rip), %eax
	.loc 2 217 9
	cmpl	%eax, %edx
	jge	.L46
	.loc 2 217 28 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 217 33 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 217 21 discriminator 1
	cmpb	$33, %al
	jne	.L46
	.loc 2 217 51 discriminator 2
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 217 56 discriminator 2
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 217 44 discriminator 2
	testb	%al, %al
	je	.L47
.L46:
	.loc 2 223 11
	movl	pos(%rip), %edx
	movl	argc(%rip), %eax
	.loc 2 223 6
	cmpl	%eax, %edx
	jl	.L48
	.loc 2 224 5
	call	beyond
.L48:
	.loc 2 227 11
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 227 16
	movzbl	(%rax), %eax
	.loc 2 227 6
	cmpb	$40, %al
	jne	.L49
	.loc 2 227 34 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 227 39 discriminator 1
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 227 27 discriminator 1
	testb	%al, %al
	jne	.L49
.LBB2:
	.loc 2 231 7
	movl	$1, %edi
	call	advance
	.loc 2 233 18
	movl	$1, -20(%rbp)
	.loc 2 233 7
	jmp	.L50
.L53:
	.loc 2 236 12
	cmpl	$4, -20(%rbp)
	jne	.L51
	.loc 2 238 26
	movl	argc(%rip), %edx
	movl	pos(%rip), %eax
	.loc 2 238 19
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	.loc 2 239 13
	jmp	.L52
.L51:
	.loc 2 235 17
	addl	$1, -20(%rbp)
.L50:
	.loc 2 234 16 discriminator 1
	movl	pos(%rip), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	.loc 2 234 24 discriminator 1
	movl	argc(%rip), %eax
	.loc 2 233 7 discriminator 1
	cmpl	%eax, %edx
	jge	.L52
	.loc 2 234 36
	movq	argv(%rip), %rax
	movl	pos(%rip), %ecx
	movl	-20(%rbp), %edx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 234 31
	testl	%eax, %eax
	jne	.L53
.L52:
	.loc 2 242 15
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	posixtest
	movb	%al, -22(%rbp)
	.loc 2 243 15
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 243 10
	testq	%rax, %rax
	jne	.L54
	.loc 2 244 9
	leaq	.LC32(%rip), %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 244 28
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	.loc 2 244 9
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
.L54:
	.loc 2 246 17
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 246 22
	movzbl	(%rax), %eax
	.loc 2 246 12
	cmpb	$41, %al
	jne	.L55
	.loc 2 246 40 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 246 45 discriminator 1
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 246 33 discriminator 1
	testb	%al, %al
	je	.L56
.L55:
	.loc 2 248 64
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 247 11
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r12
	leaq	.LC32(%rip), %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %rbx
	.loc 2 247 30
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	.loc 2 247 11
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
.L56:
	.loc 2 249 7
	movl	$0, %edi
	call	advance
.LBE2:
	.loc 2 228 5
	jmp	.L57
.L49:
	.loc 2 253 22
	movl	argc(%rip), %edx
	movl	pos(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 253 11
	cmpl	$3, %eax
	jle	.L58
	.loc 2 253 31 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 253 28 discriminator 1
	testl	%eax, %eax
	jne	.L58
	.loc 2 253 69 discriminator 2
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 253 58 discriminator 2
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	binop
	.loc 2 253 55 discriminator 2
	testb	%al, %al
	je	.L58
	.loc 2 254 13
	movl	$1, %edi
	call	binary_operator
	movb	%al, -22(%rbp)
	.loc 2 254 11
	jmp	.L57
.L58:
	.loc 2 255 22
	movl	argc(%rip), %edx
	movl	pos(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 255 11
	cmpl	$2, %eax
	jle	.L59
	.loc 2 255 42 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 255 31 discriminator 1
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	binop
	.loc 2 255 28 discriminator 1
	testb	%al, %al
	je	.L59
	.loc 2 256 13
	movl	$0, %edi
	call	binary_operator
	movb	%al, -22(%rbp)
	.loc 2 256 11
	jmp	.L57
.L59:
	.loc 2 259 16
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 259 21
	movzbl	(%rax), %eax
	.loc 2 259 11
	cmpb	$45, %al
	jne	.L60
	.loc 2 259 39 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 259 44 discriminator 1
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 259 32 discriminator 1
	testb	%al, %al
	je	.L60
	.loc 2 259 55 discriminator 2
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 259 60 discriminator 2
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 259 48 discriminator 2
	testb	%al, %al
	jne	.L60
	.loc 2 260 13
	call	unary_operator
	movb	%al, -22(%rbp)
	.loc 2 260 11
	jmp	.L57
.L60:
	.loc 2 263 20
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 263 25
	movzbl	(%rax), %eax
	.loc 2 263 13
	testb	%al, %al
	setne	%al
	movb	%al, -22(%rbp)
	.loc 2 264 7
	movl	$0, %edi
	call	advance
.L57:
	.loc 2 267 18
	movzbl	-21(%rbp), %eax
	xorb	-22(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	.loc 2 268 1
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	term, .-term
	.section	.rodata
.LC36:
	.string	"-nt does not accept -l"
.LC37:
	.string	"-ef does not accept -l"
.LC38:
	.string	"-ot does not accept -l"
.LC39:
	.string	"%s: unknown binary operator"
	.text
	.type	binary_operator, @function
binary_operator:
.LFB63:
	.loc 2 272 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$440, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movb	%al, -436(%rbp)
	.loc 2 272 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 278 6
	cmpb	$0, -436(%rbp)
	je	.L63
	.loc 2 279 5
	movl	$0, %edi
	call	advance
.L63:
	.loc 2 280 12
	movl	pos(%rip), %eax
	.loc 2 280 6
	addl	$1, %eax
	movl	%eax, -424(%rbp)
	.loc 2 282 18
	movl	argc(%rip), %eax
	subl	$2, %eax
	.loc 2 282 6
	cmpl	%eax, -424(%rbp)
	jge	.L64
	.loc 2 282 26 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 282 23 discriminator 1
	testl	%eax, %eax
	jne	.L64
	.loc 2 284 14
	movb	$1, -432(%rbp)
	.loc 2 285 7
	movl	$0, %edi
	call	advance
	jmp	.L65
.L64:
	.loc 2 288 12
	movb	$0, -432(%rbp)
.L65:
	.loc 2 290 11
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 290 15
	movzbl	(%rax), %eax
	.loc 2 290 6
	cmpb	$45, %al
	jne	.L66
	.loc 2 293 18
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 293 22
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 293 10
	cmpb	$108, %al
	je	.L67
	.loc 2 293 40 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 293 44 discriminator 1
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 293 33 discriminator 1
	cmpb	$103, %al
	jne	.L68
.L67:
	.loc 2 294 21
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 294 25
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 294 13
	cmpb	$101, %al
	je	.L69
	.loc 2 294 43 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 294 47 discriminator 1
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 294 36 discriminator 1
	cmpb	$116, %al
	je	.L69
.L68:
	.loc 2 295 20
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 295 24
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 295 12
	cmpb	$101, %al
	jne	.L70
	.loc 2 295 42 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 295 46 discriminator 1
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 295 35 discriminator 1
	cmpb	$113, %al
	je	.L69
.L70:
	.loc 2 296 20
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 296 24
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 296 12
	cmpb	$110, %al
	jne	.L71
	.loc 2 296 42 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 296 46 discriminator 1
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 296 35 discriminator 1
	cmpb	$101, %al
	jne	.L71
.L69:
	.loc 2 297 19
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 297 23
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 2 297 11
	testb	%al, %al
	jne	.L71
.LBB3:
	.loc 2 303 28
	cmpb	$0, -436(%rbp)
	je	.L72
	.loc 2 302 53
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 302 30
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	umaxtostr@PLT
	jmp	.L73
.L72:
	.loc 2 303 44 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 303 30 discriminator 1
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	find_int
.L73:
	.loc 2 301 23
	movq	%rax, -416(%rbp)
	.loc 2 306 28
	cmpb	$0, -432(%rbp)
	je	.L74
	.loc 2 305 53
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 305 30
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	umaxtostr@PLT
	jmp	.L75
.L74:
	.loc 2 306 44 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 306 30 discriminator 1
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	find_int
.L75:
	.loc 2 304 23
	movq	%rax, -408(%rbp)
	.loc 2 307 21
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strintcmp@PLT
	movl	%eax, -420(%rbp)
	.loc 2 308 35
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 308 39
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 308 16
	cmpb	$101, %al
	sete	%al
	movb	%al, -429(%rbp)
	.loc 2 309 15
	movl	pos(%rip), %eax
	addl	$3, %eax
	movl	%eax, pos(%rip)
	.loc 2 310 23
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 310 27
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 311 19
	cmpb	$108, %al
	jne	.L76
	.loc 2 311 19 is_stmt 0 discriminator 1
	movzbl	-429(%rbp), %eax
	cmpl	%eax, -420(%rbp)
	setl	%al
	jmp	.L106
.L76:
	.loc 2 311 25 is_stmt 1 discriminator 2
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 311 29 discriminator 2
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 311 19 discriminator 2
	cmpb	$103, %al
	jne	.L78
	.loc 2 311 48 discriminator 4
	movzbl	-429(%rbp), %eax
	negl	%eax
	.loc 2 311 19 discriminator 4
	cmpl	%eax, -420(%rbp)
	setg	%al
	jmp	.L106
.L78:
	.loc 2 312 26 discriminator 5
	cmpl	$0, -420(%rbp)
	setne	%al
	movzbl	%al, %edx
	.loc 2 311 19 discriminator 5
	movzbl	-429(%rbp), %eax
	cmpl	%eax, %edx
	sete	%al
	jmp	.L106
.L71:
.LBE3:
	.loc 2 315 19
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 315 23
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 315 7
	cmpl	$111, %eax
	je	.L81
	cmpl	$111, %eax
	jg	.L108
	cmpl	$101, %eax
	je	.L83
	cmpl	$110, %eax
	jne	.L108
	.loc 2 321 19
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 321 23
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 321 14
	cmpb	$116, %al
	jne	.L109
	.loc 2 321 42 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 321 46 discriminator 1
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 2 321 34 discriminator 1
	testb	%al, %al
	jne	.L109
.LBB4:
	.loc 2 326 19
	movl	pos(%rip), %eax
	addl	$3, %eax
	movl	%eax, pos(%rip)
	.loc 2 327 18
	cmpb	$0, -436(%rbp)
	jne	.L87
	.loc 2 327 26 discriminator 1
	cmpb	$0, -432(%rbp)
	je	.L88
.L87:
	.loc 2 328 36
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 2 328 17
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
.L88:
	.loc 2 329 35
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 329 20
	movq	(%rax), %rax
	leaq	-400(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_mtime
	movb	%al, -426(%rbp)
	.loc 2 330 35
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 330 20
	movq	(%rax), %rax
	leaq	-384(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_mtime
	movb	%al, -425(%rbp)
	.loc 2 331 25
	cmpb	$0, -426(%rbp)
	je	.L89
	.loc 2 331 29 discriminator 1
	movzbl	-425(%rbp), %eax
	xorl	$1, %eax
	.loc 2 331 25 discriminator 1
	testb	%al, %al
	jne	.L90
	.loc 2 331 36 discriminator 4
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	-400(%rbp), %rdi
	movq	-392(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	timespec_cmp@PLT
	.loc 2 331 33 discriminator 4
	testl	%eax, %eax
	jle	.L89
.L90:
	.loc 2 331 25 discriminator 5
	movl	$1, %eax
	jmp	.L91
.L89:
	.loc 2 331 25 is_stmt 0 discriminator 6
	movl	$0, %eax
.L91:
	.loc 2 331 25 discriminator 8
	andl	$1, %eax
	jmp	.L106
.L83:
.LBE4:
	.loc 2 336 19 is_stmt 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 336 23
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 336 14
	cmpb	$102, %al
	jne	.L110
	.loc 2 336 42 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 336 46 discriminator 1
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 2 336 34 discriminator 1
	testb	%al, %al
	jne	.L110
	.loc 2 339 19
	movl	pos(%rip), %eax
	addl	$3, %eax
	movl	%eax, pos(%rip)
	.loc 2 340 18
	cmpb	$0, -436(%rbp)
	jne	.L93
	.loc 2 340 26 discriminator 1
	cmpb	$0, -432(%rbp)
	je	.L94
.L93:
	.loc 2 341 36
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 341 17
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
.L94:
	.loc 2 342 33
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 342 23
	movq	(%rax), %rax
	leaq	-368(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 345 23
	testl	%eax, %eax
	jne	.L95
	.loc 2 343 36
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 343 26
	movq	(%rax), %rax
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 343 23
	testl	%eax, %eax
	jne	.L95
	.loc 2 344 34
	movq	-368(%rbp), %rdx
	.loc 2 344 55
	movq	-224(%rbp), %rax
	.loc 2 344 23
	cmpq	%rax, %rdx
	jne	.L95
	.loc 2 345 34 discriminator 3
	movq	-360(%rbp), %rdx
	.loc 2 345 55 discriminator 3
	movq	-216(%rbp), %rax
	.loc 2 345 23 discriminator 3
	cmpq	%rax, %rdx
	jne	.L95
	.loc 2 345 23 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L96
.L95:
	.loc 2 345 23 discriminator 1
	movl	$0, %eax
.L96:
	.loc 2 345 23 discriminator 5
	andl	$1, %eax
	jmp	.L106
.L81:
	.loc 2 350 26 is_stmt 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 350 30
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 350 14
	cmpb	$116, %al
	jne	.L111
	.loc 2 350 51 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 350 55 discriminator 1
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 2 350 34 discriminator 1
	testb	%al, %al
	jne	.L111
.LBB5:
	.loc 2 355 19
	movl	pos(%rip), %eax
	addl	$3, %eax
	movl	%eax, pos(%rip)
	.loc 2 356 18
	cmpb	$0, -436(%rbp)
	jne	.L98
	.loc 2 356 26 discriminator 1
	cmpb	$0, -432(%rbp)
	je	.L99
.L98:
	.loc 2 357 36
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	.loc 2 357 17
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
.L99:
	.loc 2 358 35
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 358 20
	movq	(%rax), %rax
	leaq	-400(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_mtime
	movb	%al, -428(%rbp)
	.loc 2 359 35
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 359 20
	movq	(%rax), %rax
	leaq	-384(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_mtime
	movb	%al, -427(%rbp)
	.loc 2 360 25
	cmpb	$0, -427(%rbp)
	je	.L100
	.loc 2 360 29 discriminator 1
	movzbl	-428(%rbp), %eax
	xorl	$1, %eax
	.loc 2 360 25 discriminator 1
	testb	%al, %al
	jne	.L101
	.loc 2 360 36 discriminator 4
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	-400(%rbp), %rdi
	movq	-392(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	timespec_cmp@PLT
	.loc 2 360 33 discriminator 4
	testl	%eax, %eax
	jns	.L100
.L101:
	.loc 2 360 25 discriminator 5
	movl	$1, %eax
	jmp	.L102
.L100:
	.loc 2 360 25 is_stmt 0 discriminator 6
	movl	$0, %eax
.L102:
	.loc 2 360 25 discriminator 8
	andl	$1, %eax
	jmp	.L106
.L108:
.LBE5:
	.loc 2 318 11 is_stmt 1
	nop
	jmp	.L85
.L109:
	.loc 2 333 11
	nop
	jmp	.L85
.L110:
	.loc 2 347 11
	nop
	jmp	.L85
.L111:
	.loc 2 362 11
	nop
.L85:
	.loc 2 366 71
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 366 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 366 26
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	.loc 2 366 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
.L66:
	.loc 2 369 11
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 369 15
	movzbl	(%rax), %eax
	.loc 2 369 6
	cmpb	$61, %al
	jne	.L103
	.loc 2 370 16
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 370 20
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 370 7
	testb	%al, %al
	je	.L104
	.loc 2 370 33 discriminator 1
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 370 37 discriminator 1
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 370 24 discriminator 1
	cmpb	$61, %al
	jne	.L103
	.loc 2 370 57 discriminator 2
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 370 61 discriminator 2
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 370 49 discriminator 2
	testb	%al, %al
	jne	.L103
.L104:
.LBB6:
	.loc 2 372 20
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	argv(%rip), %rax
	movl	pos(%rip), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 372 12
	testl	%eax, %eax
	sete	%al
	movb	%al, -431(%rbp)
	.loc 2 373 11
	movl	pos(%rip), %eax
	addl	$3, %eax
	movl	%eax, pos(%rip)
	.loc 2 374 14
	movzbl	-431(%rbp), %eax
	jmp	.L106
.L103:
.LBE6:
	.loc 2 377 7
	movq	argv(%rip), %rax
	movl	-424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 377 6
	testl	%eax, %eax
	jne	.L105
.LBB7:
	.loc 2 379 21
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	argv(%rip), %rax
	movl	pos(%rip), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 379 12
	testl	%eax, %eax
	setne	%al
	movb	%al, -430(%rbp)
	.loc 2 380 11
	movl	pos(%rip), %eax
	addl	$3, %eax
	movl	%eax, pos(%rip)
	.loc 2 381 14
	movzbl	-430(%rbp), %eax
	jmp	.L106
.L105:
.LBE7:
	.loc 2 385 3
	call	abort@PLT
.L106:
	.loc 2 386 1 discriminator 4
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L107
	.loc 2 386 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L107:
	addq	$440, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	binary_operator, .-binary_operator
	.section	.rodata
.LC40:
	.string	"%s: unary operator expected"
	.text
	.type	unary_operator, @function
unary_operator:
.LFB64:
	.loc 2 390 1 is_stmt 1
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
	.loc 2 390 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 393 15
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 393 20
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$71, %eax
	cmpl	$51, %eax
	ja	.L113
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L115(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L115(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L115:
	.long	.L135-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L125-.L115
	.long	.L113-.L115
	.long	.L134-.L115
	.long	.L133-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L132-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L131-.L115
	.long	.L130-.L115
	.long	.L129-.L115
	.long	.L128-.L115
	.long	.L127-.L115
	.long	.L126-.L115
	.long	.L125-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L124-.L115
	.long	.L113-.L115
	.long	.L113-.L115
	.long	.L123-.L115
	.long	.L113-.L115
	.long	.L122-.L115
	.long	.L113-.L115
	.long	.L121-.L115
	.long	.L120-.L115
	.long	.L119-.L115
	.long	.L118-.L115
	.long	.L113-.L115
	.long	.L117-.L115
	.long	.L116-.L115
	.long	.L113-.L115
	.long	.L114-.L115
	.text
.L113:
	.loc 2 396 71
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 396 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 396 26
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 2 396 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
.L128:
	.loc 2 405 7
	call	unary_advance
	.loc 2 406 24
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 406 14
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 406 46
	testl	%eax, %eax
	sete	%al
	jmp	.L171
.L121:
	.loc 2 409 7
	call	unary_advance
	.loc 2 410 30
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 410 14
	movq	(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	euidaccess@PLT
	.loc 2 410 47
	testl	%eax, %eax
	sete	%al
	jmp	.L171
.L117:
	.loc 2 413 7
	call	unary_advance
	.loc 2 414 30
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 414 14
	movq	(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	euidaccess@PLT
	.loc 2 414 47
	testl	%eax, %eax
	sete	%al
	jmp	.L171
.L116:
	.loc 2 417 7
	call	unary_advance
	.loc 2 418 30
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 418 14
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	euidaccess@PLT
	.loc 2 418 47
	testl	%eax, %eax
	sete	%al
	jmp	.L171
.L134:
.LBB8:
	.loc 2 422 9
	call	unary_advance
	.loc 2 423 23
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 423 13
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 423 12
	testl	%eax, %eax
	je	.L137
	.loc 2 424 18
	movl	$0, %eax
	jmp	.L171
.L137:
	.loc 2 425 33
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	.loc 2 426 33
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	.loc 2 427 17
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	timespec_cmp@PLT
	.loc 2 427 45
	testl	%eax, %eax
	setg	%al
	jmp	.L171
.L133:
.LBE8:
.LBB9:
	.loc 2 432 9
	call	unary_advance
	.loc 2 433 23
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 433 13
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 433 12
	testl	%eax, %eax
	je	.L139
	.loc 2 434 18
	movl	$0, %eax
	jmp	.L171
.L139:
	.loc 2 435 9
	call	__errno_location@PLT
	.loc 2 435 15
	movl	$0, (%rax)
	.loc 2 436 22
	call	geteuid@PLT
	movl	%eax, -240(%rbp)
	.loc 2 437 15
	movl	$-1, -236(%rbp)
	.loc 2 438 44
	movl	-240(%rbp), %eax
	cmpl	-236(%rbp), %eax
	jne	.L140
	.loc 2 438 37 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 438 16 discriminator 2
	testl	%eax, %eax
	jne	.L141
.L140:
	.loc 2 438 63 discriminator 3
	movl	-148(%rbp), %eax
	.loc 2 438 44 discriminator 3
	cmpl	%eax, -240(%rbp)
	jne	.L141
	.loc 2 438 44 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L142
.L141:
	.loc 2 438 44 discriminator 6
	movl	$0, %eax
.L142:
	.loc 2 438 44 discriminator 8
	andl	$1, %eax
	jmp	.L171
.L135:
.LBE9:
.LBB10:
	.loc 2 443 9 is_stmt 1
	call	unary_advance
	.loc 2 444 23
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 444 13
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 444 12
	testl	%eax, %eax
	je	.L143
	.loc 2 445 18
	movl	$0, %eax
	jmp	.L171
.L143:
	.loc 2 446 9
	call	__errno_location@PLT
	.loc 2 446 15
	movl	$0, (%rax)
	.loc 2 447 22
	call	getegid@PLT
	movl	%eax, -232(%rbp)
	.loc 2 448 15
	movl	$-1, -228(%rbp)
	.loc 2 449 44
	movl	-232(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jne	.L144
	.loc 2 449 37 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 449 16 discriminator 2
	testl	%eax, %eax
	jne	.L145
.L144:
	.loc 2 449 63 discriminator 3
	movl	-144(%rbp), %eax
	.loc 2 449 44 discriminator 3
	cmpl	%eax, -232(%rbp)
	jne	.L145
	.loc 2 449 44 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L146
.L145:
	.loc 2 449 44 discriminator 6
	movl	$0, %eax
.L146:
	.loc 2 449 44 discriminator 8
	andl	$1, %eax
	jmp	.L171
.L127:
.LBE10:
	.loc 2 453 7 is_stmt 1
	call	unary_advance
	.loc 2 456 25
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 456 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 457 15
	testl	%eax, %eax
	jne	.L147
	.loc 2 457 18 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 457 15 discriminator 1
	cmpl	$32768, %eax
	jne	.L147
	.loc 2 457 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L148
.L147:
	.loc 2 457 15 discriminator 4
	movl	$0, %eax
.L148:
	.loc 2 457 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L129:
	.loc 2 460 7 is_stmt 1
	call	unary_advance
	.loc 2 461 25
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 461 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 462 15
	testl	%eax, %eax
	jne	.L149
	.loc 2 462 18 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 462 15 discriminator 1
	cmpl	$16384, %eax
	jne	.L149
	.loc 2 462 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L150
.L149:
	.loc 2 462 15 discriminator 4
	movl	$0, %eax
.L150:
	.loc 2 462 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L120:
	.loc 2 465 7 is_stmt 1
	call	unary_advance
	.loc 2 466 25
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 466 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 467 15
	testl	%eax, %eax
	jne	.L151
	.loc 2 467 30 discriminator 1
	movq	-128(%rbp), %rax
	.loc 2 467 15 discriminator 1
	testq	%rax, %rax
	jle	.L151
	.loc 2 467 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L152
.L151:
	.loc 2 467 15 discriminator 4
	movl	$0, %eax
.L152:
	.loc 2 467 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L132:
	.loc 2 470 7 is_stmt 1
	call	unary_advance
	.loc 2 471 25
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 471 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 472 15
	testl	%eax, %eax
	jne	.L153
	.loc 2 472 18 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 472 15 discriminator 1
	cmpl	$49152, %eax
	jne	.L153
	.loc 2 472 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L154
.L153:
	.loc 2 472 15 discriminator 4
	movl	$0, %eax
.L154:
	.loc 2 472 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L130:
	.loc 2 475 7 is_stmt 1
	call	unary_advance
	.loc 2 476 25
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 476 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 477 15
	testl	%eax, %eax
	jne	.L155
	.loc 2 477 18 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 477 15 discriminator 1
	cmpl	$8192, %eax
	jne	.L155
	.loc 2 477 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L156
.L155:
	.loc 2 477 15 discriminator 4
	movl	$0, %eax
.L156:
	.loc 2 477 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L131:
	.loc 2 480 7 is_stmt 1
	call	unary_advance
	.loc 2 481 25
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 481 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 482 15
	testl	%eax, %eax
	jne	.L157
	.loc 2 482 18 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 482 15 discriminator 1
	cmpl	$24576, %eax
	jne	.L157
	.loc 2 482 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L158
.L157:
	.loc 2 482 15 discriminator 4
	movl	$0, %eax
.L158:
	.loc 2 482 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L122:
	.loc 2 485 7 is_stmt 1
	call	unary_advance
	.loc 2 486 25
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 486 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 487 15
	testl	%eax, %eax
	jne	.L159
	.loc 2 487 18 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 487 15 discriminator 1
	cmpl	$4096, %eax
	jne	.L159
	.loc 2 487 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L160
.L159:
	.loc 2 487 15 discriminator 4
	movl	$0, %eax
.L160:
	.loc 2 487 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L125:
	.loc 2 493 7 is_stmt 1
	call	unary_advance
	.loc 2 494 26
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 494 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 2 495 15
	testl	%eax, %eax
	jne	.L161
	.loc 2 495 18 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 495 15 discriminator 1
	cmpl	$40960, %eax
	jne	.L161
	.loc 2 495 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L162
.L161:
	.loc 2 495 15 discriminator 4
	movl	$0, %eax
.L162:
	.loc 2 495 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L118:
	.loc 2 498 7 is_stmt 1
	call	unary_advance
	.loc 2 499 25
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 499 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 500 15
	testl	%eax, %eax
	jne	.L163
	.loc 2 500 27 discriminator 1
	movl	-152(%rbp), %eax
	.loc 2 500 36 discriminator 1
	andl	$2048, %eax
	.loc 2 500 15 discriminator 1
	testl	%eax, %eax
	je	.L163
	.loc 2 500 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L164
.L163:
	.loc 2 500 15 discriminator 4
	movl	$0, %eax
.L164:
	.loc 2 500 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L126:
	.loc 2 503 7 is_stmt 1
	call	unary_advance
	.loc 2 504 25
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 504 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 505 15
	testl	%eax, %eax
	jne	.L165
	.loc 2 505 27 discriminator 1
	movl	-152(%rbp), %eax
	.loc 2 505 36 discriminator 1
	andl	$1024, %eax
	.loc 2 505 15 discriminator 1
	testl	%eax, %eax
	je	.L165
	.loc 2 505 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L166
.L165:
	.loc 2 505 15 discriminator 4
	movl	$0, %eax
.L166:
	.loc 2 505 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L124:
	.loc 2 508 7 is_stmt 1
	call	unary_advance
	.loc 2 509 25
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 509 15
	movq	(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 510 15
	testl	%eax, %eax
	jne	.L167
	.loc 2 510 27 discriminator 1
	movl	-152(%rbp), %eax
	.loc 2 510 36 discriminator 1
	andl	$512, %eax
	.loc 2 510 15 discriminator 1
	testl	%eax, %eax
	je	.L167
	.loc 2 510 15 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L168
.L167:
	.loc 2 510 15 discriminator 4
	movl	$0, %eax
.L168:
	.loc 2 510 15 discriminator 6
	andl	$1, %eax
	jmp	.L171
.L119:
.LBB11:
	.loc 2 516 9 is_stmt 1
	call	unary_advance
	.loc 2 517 29
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 517 15
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	find_int
	movq	%rax, -224(%rbp)
	.loc 2 518 9
	call	__errno_location@PLT
	.loc 2 518 15
	movl	$0, (%rax)
	.loc 2 519 14
	movq	-224(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -216(%rbp)
	.loc 2 520 17
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 520 61
	cmpl	$34, %eax
	je	.L169
	.loc 2 520 33 discriminator 1
	cmpq	$0, -216(%rbp)
	js	.L169
	.loc 2 520 44 discriminator 3
	movl	$2147483648, %eax
	cmpq	%rax, -216(%rbp)
	jge	.L169
	.loc 2 520 64 discriminator 5
	movq	-216(%rbp), %rax
	movl	%eax, %edi
	call	isatty@PLT
	.loc 2 520 61 discriminator 5
	testl	%eax, %eax
	je	.L169
	.loc 2 520 61 is_stmt 0 discriminator 7
	movl	$1, %eax
	jmp	.L170
.L169:
	.loc 2 520 61 discriminator 8
	movl	$0, %eax
.L170:
	.loc 2 520 61 discriminator 10
	andl	$1, %eax
	jmp	.L171
.L123:
.LBE11:
	.loc 2 524 7 is_stmt 1
	call	unary_advance
	.loc 2 525 18
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 525 27
	movzbl	(%rax), %eax
	.loc 2 525 31
	testb	%al, %al
	setne	%al
	jmp	.L171
.L114:
	.loc 2 528 7
	call	unary_advance
	.loc 2 529 18
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 529 27
	movzbl	(%rax), %eax
	.loc 2 529 31
	testb	%al, %al
	sete	%al
.L171:
	.loc 2 531 1 discriminator 2
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L172
	.loc 2 531 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L172:
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	unary_operator, .-unary_operator
	.section	.rodata
.LC41:
	.string	"-a"
	.text
	.type	and, @function
and:
.LFB65:
	.loc 2 540 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 541 8
	movb	$1, -1(%rbp)
.L177:
	.loc 2 545 16
	call	term
	.loc 2 545 13
	movzbl	-1(%rbp), %edx
	.loc 2 545 16
	movzbl	%al, %eax
	.loc 2 545 13
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -1(%rbp)
	.loc 2 546 18
	movl	pos(%rip), %edx
	movl	argc(%rip), %eax
	.loc 2 546 10
	cmpl	%eax, %edx
	jge	.L174
	.loc 2 546 28 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 546 11 discriminator 1
	testl	%eax, %eax
	je	.L175
.L174:
	.loc 2 547 16
	movzbl	-1(%rbp), %eax
	jmp	.L178
.L175:
	.loc 2 548 7
	movl	$0, %edi
	call	advance
	.loc 2 545 7
	jmp	.L177
.L178:
	.loc 2 550 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	and, .-and
	.section	.rodata
.LC42:
	.string	"-o"
	.text
	.type	or, @function
or:
.LFB66:
	.loc 2 559 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 560 8
	movb	$0, -1(%rbp)
.L183:
	.loc 2 564 16
	call	and
	.loc 2 564 13
	orb	-1(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -1(%rbp)
	.loc 2 565 18
	movl	pos(%rip), %edx
	movl	argc(%rip), %eax
	.loc 2 565 10
	cmpl	%eax, %edx
	jge	.L180
	.loc 2 565 28 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 565 11 discriminator 1
	testl	%eax, %eax
	je	.L181
.L180:
	.loc 2 566 16
	movzbl	-1(%rbp), %eax
	jmp	.L184
.L181:
	.loc 2 567 7
	movl	$0, %edi
	call	advance
	.loc 2 564 7
	jmp	.L183
.L184:
	.loc 2 569 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	or, .-or
	.type	expr, @function
expr:
.LFB67:
	.loc 2 577 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 578 11
	movl	pos(%rip), %edx
	movl	argc(%rip), %eax
	.loc 2 578 6
	cmpl	%eax, %edx
	jl	.L186
	.loc 2 579 5
	call	beyond
.L186:
	.loc 2 581 10
	call	or
	.loc 2 582 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	expr, .-expr
	.type	one_argument, @function
one_argument:
.LFB68:
	.loc 2 586 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 587 14
	movq	argv(%rip), %rcx
	.loc 2 587 18
	movl	pos(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, pos(%rip)
	cltq
	.loc 2 587 14
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	.loc 2 587 21
	movzbl	(%rax), %eax
	.loc 2 587 25
	testb	%al, %al
	setne	%al
	.loc 2 588 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	one_argument, .-one_argument
	.section	.rodata
.LC43:
	.string	"!"
	.text
	.type	two_arguments, @function
two_arguments:
.LFB69:
	.loc 2 592 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 595 7
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 595 6
	testl	%eax, %eax
	jne	.L191
	.loc 2 597 7
	movl	$0, %edi
	call	advance
	.loc 2 598 17
	call	one_argument
	movzbl	%al, %eax
	.loc 2 598 7
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 598 13
	movb	%al, -1(%rbp)
	andb	$1, -1(%rbp)
	jmp	.L192
.L191:
	.loc 2 600 16
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 600 21
	movzbl	(%rax), %eax
	.loc 2 600 11
	cmpb	$45, %al
	jne	.L193
	.loc 2 601 19
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 601 24
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 601 12
	testb	%al, %al
	je	.L193
	.loc 2 602 19
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 602 24
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 2 602 12
	testb	%al, %al
	jne	.L193
	.loc 2 604 15
	call	unary_operator
	movb	%al, -1(%rbp)
	.loc 2 604 13
	jmp	.L192
.L193:
	.loc 2 607 5
	call	beyond
.L192:
	.loc 2 608 10
	movzbl	-1(%rbp), %eax
	.loc 2 609 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	two_arguments, .-two_arguments
	.section	.rodata
.LC44:
	.string	"("
.LC45:
	.string	"%s: binary operator expected"
	.text
	.type	three_arguments, @function
three_arguments:
.LFB70:
	.loc 2 613 1
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
	.loc 2 616 18
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 616 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	binop
	.loc 2 616 6
	testb	%al, %al
	je	.L196
	.loc 2 617 13
	movl	$0, %edi
	call	binary_operator
	movb	%al, -17(%rbp)
	jmp	.L197
.L196:
	.loc 2 618 12
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 618 11
	testl	%eax, %eax
	jne	.L198
	.loc 2 620 7
	movl	$1, %edi
	call	advance
	.loc 2 621 16
	call	two_arguments
	movzbl	%al, %eax
	.loc 2 621 7
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 621 13
	movb	%al, -17(%rbp)
	andb	$1, -17(%rbp)
	jmp	.L197
.L198:
	.loc 2 623 12
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 623 11
	testl	%eax, %eax
	jne	.L199
	.loc 2 623 38 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 623 35 discriminator 1
	testl	%eax, %eax
	jne	.L199
	.loc 2 625 7
	movl	$0, %edi
	call	advance
	.loc 2 626 15
	call	one_argument
	movb	%al, -17(%rbp)
	.loc 2 627 7
	movl	$0, %edi
	call	advance
	jmp	.L197
.L199:
	.loc 2 629 12
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 629 11
	testl	%eax, %eax
	je	.L200
	.loc 2 629 43 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 629 40 discriminator 1
	testl	%eax, %eax
	jne	.L201
.L200:
	.loc 2 630 13
	call	expr
	movb	%al, -17(%rbp)
	.loc 2 630 11
	jmp	.L197
.L201:
	.loc 2 632 70
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 632 5
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 632 24
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	.loc 2 632 5
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
.L197:
	.loc 2 633 10
	movzbl	-17(%rbp), %eax
	.loc 2 634 1
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	three_arguments, .-three_arguments
	.type	posixtest, @function
posixtest:
.LFB71:
	.loc 2 639 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 2 642 3
	cmpl	$4, -20(%rbp)
	je	.L204
	cmpl	$4, -20(%rbp)
	jg	.L205
	cmpl	$3, -20(%rbp)
	je	.L206
	cmpl	$3, -20(%rbp)
	jg	.L205
	cmpl	$1, -20(%rbp)
	je	.L207
	cmpl	$2, -20(%rbp)
	je	.L208
	jmp	.L205
.L207:
	.loc 2 645 17
	call	one_argument
	movb	%al, -1(%rbp)
	.loc 2 646 9
	jmp	.L209
.L208:
	.loc 2 649 17
	call	two_arguments
	movb	%al, -1(%rbp)
	.loc 2 650 9
	jmp	.L209
.L206:
	.loc 2 653 17
	call	three_arguments
	movb	%al, -1(%rbp)
	.loc 2 654 9
	jmp	.L209
.L204:
	.loc 2 657 13
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 657 12
	testl	%eax, %eax
	jne	.L210
	.loc 2 659 13
	movl	$1, %edi
	call	advance
	.loc 2 660 22
	call	three_arguments
	movzbl	%al, %eax
	.loc 2 660 13
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 660 19
	movb	%al, -1(%rbp)
	andb	$1, -1(%rbp)
	.loc 2 661 13
	jmp	.L209
.L210:
	.loc 2 663 13
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 663 12
	testl	%eax, %eax
	jne	.L205
	.loc 2 663 39 discriminator 1
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	addq	$3, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 663 36 discriminator 1
	testl	%eax, %eax
	jne	.L205
	.loc 2 665 13
	movl	$0, %edi
	call	advance
	.loc 2 666 21
	call	two_arguments
	movb	%al, -1(%rbp)
	.loc 2 667 13
	movl	$0, %edi
	call	advance
	.loc 2 668 13
	jmp	.L209
.L205:
	.loc 2 673 12
	cmpl	$0, -20(%rbp)
	jg	.L211
	.loc 2 674 11
	call	abort@PLT
.L211:
	.loc 2 675 17
	call	expr
	movb	%al, -1(%rbp)
.L209:
	.loc 2 678 10
	movzbl	-1(%rbp), %eax
	.loc 2 679 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	posixtest, .-posixtest
	.section	.rodata
	.align 8
.LC46:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC47:
	.string	"Usage: test EXPRESSION\n  or:  test\n  or:  [ EXPRESSION ]\n  or:  [ ]\n  or:  [ OPTION\n"
	.align 8
.LC48:
	.string	"Exit with the status determined by EXPRESSION.\n\n"
	.align 8
.LC49:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC50:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC51:
	.string	"\nAn omitted EXPRESSION defaults to false.  Otherwise,\nEXPRESSION is true or false and sets exit status.  It is one of:\n"
	.align 8
.LC52:
	.string	"\n  ( EXPRESSION )               EXPRESSION is true\n  ! EXPRESSION                 EXPRESSION is false\n  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\n  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\n"
	.align 8
.LC53:
	.string	"\n  -n STRING            the length of STRING is nonzero\n  STRING               equivalent to -n STRING\n  -z STRING            the length of STRING is zero\n  STRING1 = STRING2    the strings are equal\n  STRING1 != STRING2   the strings are not equal\n"
	.align 8
.LC54:
	.ascii	"\n  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\n "
	.ascii	" INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal t"
	.ascii	"o"
	.string	" INTEGER2\n  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\n  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\n  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\n  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\n"
	.align 8
.LC55:
	.string	"\n  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\n  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\n  FILE1 -ot FILE2   FILE1 is older than FILE2\n"
	.align 8
.LC56:
	.string	"\n  -b FILE     FILE exists and is block special\n  -c FILE     FILE exists and is character special\n  -d FILE     FILE exists and is a directory\n  -e FILE     FILE exists\n"
	.align 8
.LC57:
	.ascii	"  -f FILE     FILE"
	.string	" exists and is a regular file\n  -g FILE     FILE exists and is set-group-ID\n  -G FILE     FILE exists and is owned by the effective group ID\n  -h FILE     FILE exists and is a symbolic link (same as -L)\n  -k FILE     FILE exists and has its sticky bit set\n"
	.align 8
.LC58:
	.ascii	"  -L FILE     FILE exists and is a symbolic link (same as -h"
	.ascii	")\n  -N FILE     FILE exists and has been mo"
	.string	"dified since it was last read\n  -O FILE     FILE exists and is owned by the effective user ID\n  -p FILE     FILE exists and is a named pipe\n  -r FILE     FILE exists and read permission is granted\n  -s FILE     FILE exists and has a size greater than zero\n"
	.align 8
.LC59:
	.ascii	"  -S FILE     FILE exists and "
	.string	"is a socket\n  -t FD       file descriptor FD is opened on a terminal\n  -u FILE     FILE exists and its set-user-ID bit is set\n  -w FILE     FILE exists and write permission is granted\n  -x FILE     FILE exists and execute (or search) permission is granted\n"
	.align 8
.LC60:
	.string	"\nExcept for -h and -L, all FILE-related tests dereference symbolic links.\nBeware that parentheses need to be escaped (e.g., by backslashes) for shells.\nINTEGER may also be -l STRING, which evaluates to the length of STRING.\n"
	.align 8
.LC61:
	.string	"\nNOTE: Binary -a and -o are inherently ambiguous.  Use 'test EXPR1 && test\nEXPR2' or 'test EXPR1 || test EXPR2' instead.\n"
	.align 8
.LC62:
	.string	"\nNOTE: [ honors the --help and --version options, but test does not.\ntest treats each of those as it treats any other nonempty STRING.\n"
.LC63:
	.string	"test and/or ["
	.align 8
.LC64:
	.string	"\nNOTE: your shell may have its own version of %s, which usually supersedes\nthe version described here.  Please refer to your shell's documentation\nfor details about the options it supports.\n"
.LC65:
	.string	"test"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB72:
	.loc 2 685 1
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
	.loc 2 686 6
	cmpl	$0, -20(%rbp)
	je	.L214
	.loc 2 687 5
	movq	program_name(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L215
.L214:
	.loc 2 690 7
	movq	stdout(%rip), %rbx
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 697 7
	movq	stdout(%rip), %rbx
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 701 7
	movq	stdout(%rip), %rbx
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 702 7
	movq	stdout(%rip), %rbx
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 703 7
	movq	stdout(%rip), %rbx
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 708 7
	movq	stdout(%rip), %rbx
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 715 7
	movq	stdout(%rip), %rbx
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 723 7
	movq	stdout(%rip), %rbx
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 732 7
	movq	stdout(%rip), %rbx
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 738 7
	movq	stdout(%rip), %rbx
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 745 7
	movq	stdout(%rip), %rbx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 752 7
	movq	stdout(%rip), %rbx
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 760 7
	movq	stdout(%rip), %rbx
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 767 7
	movq	stdout(%rip), %rbx
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 773 7
	movq	stdout(%rip), %rbx
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 778 7
	movq	stdout(%rip), %rbx
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 783 7
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 783 15
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	.loc 2 783 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 784 7
	leaq	.LC65(%rip), %rdi
	call	emit_ancillary_info
.L215:
	.loc 2 786 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE72:
	.size	usage, .-usage
	.section	.rodata
.LC66:
	.string	"/usr/local/share/locale"
.LC67:
	.string	"extra argument %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB73:
	.loc 2 806 1
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
	.loc 2 818 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 819 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 820 3
	leaq	.LC66(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 821 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 823 3
	movl	$2, %edi
	call	initialize_exit_failure
	.loc 2 824 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 827 8
	movq	-48(%rbp), %rax
	movq	%rax, argv(%rip)
	.loc 2 855 8
	movl	-36(%rbp), %eax
	movl	%eax, argc(%rip)
	.loc 2 856 7
	movl	$1, pos(%rip)
	.loc 2 858 11
	movl	pos(%rip), %edx
	movl	argc(%rip), %eax
	.loc 2 858 6
	cmpl	%eax, %edx
	jl	.L217
	.loc 2 859 5
	movl	$1, %eax
	jmp	.L218
.L217:
	.loc 2 861 11
	movl	argc(%rip), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	posixtest
	movb	%al, -17(%rbp)
	.loc 2 863 11
	movl	pos(%rip), %edx
	movl	argc(%rip), %eax
	.loc 2 863 6
	cmpl	%eax, %edx
	je	.L219
	.loc 2 864 59
	movq	argv(%rip), %rax
	movl	pos(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 864 5
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 864 24
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	.loc 2 864 5
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_syntax_error
.L219:
	.loc 2 866 3
	movzbl	-17(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
.L218:
	.loc 2 867 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	zero.6316, @object
	.size	zero.6316, 16
zero.6316:
	.zero	16
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.file 5 "<built-in>"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 11 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 14 "./lib/sys/select.h"
	.file 15 "/usr/include/time.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 17 "/usr/include/signal.h"
	.file 18 "/usr/include/unistd.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 20 "/usr/include/errno.h"
	.file 21 "src/version.h"
	.file 22 "./lib/exitfail.h"
	.file 23 "/usr/include/stdint.h"
	.file 24 "./lib/timespec.h"
	.file 25 "/usr/include/ctype.h"
	.file 26 "./lib/version-etc.h"
	.file 27 "./lib/progname.h"
	.file 28 "./lib/quotearg.h"
	.file 29 "./lib/quote.h"
	.file 30 "./lib/error.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1032
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
	.long	.LASF0
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF1
	.byte	0x4
	.byte	0x28
	.byte	0x1b
	.long	0x4c
	.uleb128 0x4
	.long	.LASF206
	.long	0x55
	.uleb128 0x5
	.long	0x65
	.long	0x65
	.uleb128 0x6
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF207
	.byte	0x18
	.byte	0x5
	.byte	0
	.long	0xa2
	.uleb128 0x8
	.long	.LASF2
	.byte	0x5
	.byte	0
	.long	0xa2
	.byte	0
	.uleb128 0x8
	.long	.LASF3
	.byte	0x5
	.byte	0
	.long	0xa2
	.byte	0x4
	.uleb128 0x8
	.long	.LASF4
	.byte	0x5
	.byte	0
	.long	0xa9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF5
	.byte	0x5
	.byte	0
	.long	0xa9
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF11
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.long	0xc7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x6
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF14
	.byte	0x6
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF15
	.byte	0x6
	.byte	0x92
	.byte	0x19
	.long	0xa2
	.uleb128 0x2
	.long	.LASF16
	.byte	0x6
	.byte	0x93
	.byte	0x19
	.long	0xa2
	.uleb128 0x2
	.long	.LASF17
	.byte	0x6
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF18
	.byte	0x6
	.byte	0x96
	.byte	0x1a
	.long	0xa2
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF20
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0xd3
	.uleb128 0x2
	.long	.LASF21
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0xd3
	.uleb128 0x2
	.long	.LASF22
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0xd3
	.uleb128 0x2
	.long	.LASF23
	.byte	0x6
	.byte	0xae
	.byte	0x1d
	.long	0xd3
	.uleb128 0x2
	.long	.LASF24
	.byte	0x6
	.byte	0xb3
	.byte	0x1c
	.long	0xd3
	.uleb128 0x2
	.long	.LASF25
	.byte	0x6
	.byte	0xc4
	.byte	0x21
	.long	0xd3
	.uleb128 0xc
	.byte	0x8
	.long	0x17c
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF26
	.uleb128 0xd
	.long	0x17c
	.uleb128 0xe
	.long	.LASF73
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x30f
	.uleb128 0xf
	.long	.LASF27
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0xc7
	.byte	0
	.uleb128 0xf
	.long	.LASF28
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x176
	.byte	0x8
	.uleb128 0xf
	.long	.LASF29
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x176
	.byte	0x10
	.uleb128 0xf
	.long	.LASF30
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x176
	.byte	0x18
	.uleb128 0xf
	.long	.LASF31
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x176
	.byte	0x20
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x176
	.byte	0x28
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x176
	.byte	0x30
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x176
	.byte	0x38
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x176
	.byte	0x40
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x176
	.byte	0x48
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x176
	.byte	0x50
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x176
	.byte	0x58
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x328
	.byte	0x60
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x32e
	.byte	0x68
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0xc7
	.byte	0x70
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0xc7
	.byte	0x74
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x12e
	.byte	0x78
	.uleb128 0xf
	.long	.LASF44
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0xb2
	.byte	0x80
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0xb9
	.byte	0x82
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x334
	.byte	0x83
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x344
	.byte	0x88
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x13a
	.byte	0x90
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x34f
	.byte	0x98
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x35a
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF51
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x32e
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF52
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xa9
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF53
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF54
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0xc7
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x360
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x188
	.uleb128 0x10
	.long	.LASF208
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF57
	.uleb128 0xc
	.byte	0x8
	.long	0x323
	.uleb128 0xc
	.byte	0x8
	.long	0x188
	.uleb128 0x5
	.long	0x17c
	.long	0x344
	.uleb128 0x6
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x31b
	.uleb128 0x11
	.long	.LASF58
	.uleb128 0xc
	.byte	0x8
	.long	0x34a
	.uleb128 0x11
	.long	.LASF59
	.uleb128 0xc
	.byte	0x8
	.long	0x355
	.uleb128 0x5
	.long	0x17c
	.long	0x370
	.uleb128 0x6
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x183
	.uleb128 0xd
	.long	0x370
	.uleb128 0x2
	.long	.LASF60
	.byte	0x9
	.byte	0x34
	.byte	0x18
	.long	0x40
	.uleb128 0x12
	.long	.LASF61
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x393
	.uleb128 0xc
	.byte	0x8
	.long	0x30f
	.uleb128 0x12
	.long	.LASF62
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x393
	.uleb128 0x12
	.long	.LASF63
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x393
	.uleb128 0x12
	.long	.LASF64
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0xc7
	.uleb128 0x5
	.long	0x376
	.long	0x3c8
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.long	0x3bd
	.uleb128 0x12
	.long	.LASF65
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x3c8
	.uleb128 0x12
	.long	.LASF66
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF67
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x3c8
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
	.byte	0xb
	.byte	0x40
	.byte	0x11
	.long	0xfe
	.uleb128 0x2
	.long	.LASF71
	.byte	0xb
	.byte	0x4f
	.byte	0x11
	.long	0xf2
	.uleb128 0x2
	.long	.LASF72
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0x146
	.uleb128 0xe
	.long	.LASF74
	.byte	0x10
	.byte	0xd
	.byte	0xa
	.byte	0x8
	.long	0x44b
	.uleb128 0xf
	.long	.LASF75
	.byte	0xd
	.byte	0xc
	.byte	0xc
	.long	0x146
	.byte	0
	.uleb128 0xf
	.long	.LASF76
	.byte	0xd
	.byte	0x10
	.byte	0x15
	.long	0x16a
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x423
	.uleb128 0x14
	.long	.LASF77
	.byte	0xe
	.value	0x30c
	.byte	0x1
	.long	0xc7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF78
	.uleb128 0x5
	.long	0x176
	.long	0x474
	.uleb128 0x6
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF79
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x464
	.uleb128 0x12
	.long	.LASF80
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF81
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0xd3
	.uleb128 0x12
	.long	.LASF82
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x464
	.uleb128 0x12
	.long	.LASF83
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF84
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0xd3
	.uleb128 0x14
	.long	.LASF85
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0xc7
	.uleb128 0xe
	.long	.LASF86
	.byte	0x90
	.byte	0x10
	.byte	0x2e
	.byte	0x8
	.long	0x59a
	.uleb128 0xf
	.long	.LASF87
	.byte	0x10
	.byte	0x30
	.byte	0xd
	.long	0xe6
	.byte	0
	.uleb128 0xf
	.long	.LASF88
	.byte	0x10
	.byte	0x35
	.byte	0xd
	.long	0x10a
	.byte	0x8
	.uleb128 0xf
	.long	.LASF89
	.byte	0x10
	.byte	0x3d
	.byte	0xf
	.long	0x122
	.byte	0x10
	.uleb128 0xf
	.long	.LASF90
	.byte	0x10
	.byte	0x3e
	.byte	0xe
	.long	0x116
	.byte	0x18
	.uleb128 0xf
	.long	.LASF91
	.byte	0x10
	.byte	0x40
	.byte	0xd
	.long	0xf2
	.byte	0x1c
	.uleb128 0xf
	.long	.LASF92
	.byte	0x10
	.byte	0x41
	.byte	0xd
	.long	0xfe
	.byte	0x20
	.uleb128 0xf
	.long	.LASF93
	.byte	0x10
	.byte	0x43
	.byte	0x9
	.long	0xc7
	.byte	0x24
	.uleb128 0xf
	.long	.LASF94
	.byte	0x10
	.byte	0x45
	.byte	0xd
	.long	0xe6
	.byte	0x28
	.uleb128 0xf
	.long	.LASF95
	.byte	0x10
	.byte	0x4a
	.byte	0xd
	.long	0x12e
	.byte	0x30
	.uleb128 0xf
	.long	.LASF96
	.byte	0x10
	.byte	0x4e
	.byte	0x11
	.long	0x152
	.byte	0x38
	.uleb128 0xf
	.long	.LASF97
	.byte	0x10
	.byte	0x50
	.byte	0x10
	.long	0x15e
	.byte	0x40
	.uleb128 0xf
	.long	.LASF98
	.byte	0x10
	.byte	0x5b
	.byte	0x15
	.long	0x423
	.byte	0x48
	.uleb128 0xf
	.long	.LASF99
	.byte	0x10
	.byte	0x5c
	.byte	0x15
	.long	0x423
	.byte	0x58
	.uleb128 0xf
	.long	.LASF100
	.byte	0x10
	.byte	0x5d
	.byte	0x15
	.long	0x423
	.byte	0x68
	.uleb128 0xf
	.long	.LASF101
	.byte	0x10
	.byte	0x6a
	.byte	0x17
	.long	0x59a
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.long	0x16a
	.long	0x5aa
	.uleb128 0x6
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.uleb128 0xc
	.byte	0x8
	.long	0x5aa
	.uleb128 0x5
	.long	0x376
	.long	0x5c1
	.uleb128 0x6
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.long	0x5b1
	.uleb128 0x14
	.long	.LASF102
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x5c1
	.uleb128 0x14
	.long	.LASF103
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x5c1
	.uleb128 0x14
	.long	.LASF104
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x5ed
	.uleb128 0xc
	.byte	0x8
	.long	0x176
	.uleb128 0x14
	.long	.LASF105
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x5ed
	.uleb128 0x12
	.long	.LASF106
	.byte	0x13
	.byte	0x24
	.byte	0xe
	.long	0x176
	.uleb128 0x12
	.long	.LASF107
	.byte	0x13
	.byte	0x32
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF108
	.byte	0x13
	.byte	0x37
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF109
	.byte	0x13
	.byte	0x3b
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF110
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0x176
	.uleb128 0x12
	.long	.LASF111
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0x176
	.uleb128 0x12
	.long	.LASF112
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0x370
	.uleb128 0x12
	.long	.LASF113
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0xce
	.uleb128 0x2
	.long	.LASF114
	.byte	0x17
	.byte	0x66
	.byte	0x16
	.long	0xda
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x684
	.uleb128 0x17
	.long	.LASF115
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x699
	.uleb128 0x18
	.long	.LASF116
	.byte	0x9
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x19
	.byte	0x2f
	.byte	0x1
	.long	0x6f8
	.uleb128 0x19
	.long	.LASF117
	.value	0x100
	.uleb128 0x19
	.long	.LASF118
	.value	0x200
	.uleb128 0x19
	.long	.LASF119
	.value	0x400
	.uleb128 0x19
	.long	.LASF120
	.value	0x800
	.uleb128 0x19
	.long	.LASF121
	.value	0x1000
	.uleb128 0x19
	.long	.LASF122
	.value	0x2000
	.uleb128 0x19
	.long	.LASF123
	.value	0x4000
	.uleb128 0x19
	.long	.LASF124
	.value	0x8000
	.uleb128 0x18
	.long	.LASF125
	.byte	0x1
	.uleb128 0x18
	.long	.LASF126
	.byte	0x2
	.uleb128 0x18
	.long	.LASF127
	.byte	0x4
	.uleb128 0x18
	.long	.LASF128
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x183
	.long	0x703
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.long	0x6f8
	.uleb128 0x12
	.long	.LASF129
	.byte	0x1a
	.byte	0x19
	.byte	0x13
	.long	0x703
	.uleb128 0x12
	.long	.LASF130
	.byte	0x1b
	.byte	0x20
	.byte	0x14
	.long	0x370
	.uleb128 0x1a
	.long	.LASF209
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x1c
	.byte	0x20
	.byte	0x6
	.long	0x775
	.uleb128 0x18
	.long	.LASF131
	.byte	0
	.uleb128 0x18
	.long	.LASF132
	.byte	0x1
	.uleb128 0x18
	.long	.LASF133
	.byte	0x2
	.uleb128 0x18
	.long	.LASF134
	.byte	0x3
	.uleb128 0x18
	.long	.LASF135
	.byte	0x4
	.uleb128 0x18
	.long	.LASF136
	.byte	0x5
	.uleb128 0x18
	.long	.LASF137
	.byte	0x6
	.uleb128 0x18
	.long	.LASF138
	.byte	0x7
	.uleb128 0x18
	.long	.LASF139
	.byte	0x8
	.uleb128 0x18
	.long	.LASF140
	.byte	0x9
	.uleb128 0x18
	.long	.LASF141
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.long	0x720
	.uleb128 0x14
	.long	.LASF142
	.byte	0x1c
	.value	0x10b
	.byte	0x1a
	.long	0x3c8
	.uleb128 0x5
	.long	0x775
	.long	0x792
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.long	0x787
	.uleb128 0x14
	.long	.LASF143
	.byte	0x1c
	.value	0x10c
	.byte	0x21
	.long	0x792
	.uleb128 0x11
	.long	.LASF144
	.uleb128 0x12
	.long	.LASF145
	.byte	0x1d
	.byte	0x19
	.byte	0x1f
	.long	0x7a4
	.uleb128 0x12
	.long	.LASF146
	.byte	0x1e
	.byte	0x32
	.byte	0xf
	.long	0x5ab
	.uleb128 0x12
	.long	.LASF147
	.byte	0x1e
	.byte	0x35
	.byte	0x15
	.long	0xa2
	.uleb128 0x12
	.long	.LASF148
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.long	0xc7
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x2
	.byte	0x3b
	.byte	0x6
	.long	0x7fa
	.uleb128 0x18
	.long	.LASF149
	.byte	0
	.uleb128 0x18
	.long	.LASF150
	.byte	0x1
	.uleb128 0x18
	.long	.LASF151
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.string	"pos"
	.byte	0x2
	.byte	0x47
	.byte	0xc
	.long	0xc7
	.uleb128 0x9
	.byte	0x3
	.quad	pos
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x2
	.byte	0x48
	.byte	0xc
	.long	0xc7
	.uleb128 0x9
	.byte	0x3
	.quad	argc
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x2
	.byte	0x49
	.byte	0xf
	.long	0x5ed
	.uleb128 0x9
	.byte	0x3
	.quad	argv
	.uleb128 0x1d
	.long	.LASF158
	.byte	0x2
	.value	0x325
	.byte	0x1
	.long	0xc7
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x890
	.uleb128 0x1e
	.long	.LASF154
	.byte	0x2
	.value	0x325
	.byte	0xb
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x2
	.value	0x325
	.byte	0x19
	.long	0x5ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.long	.LASF156
	.byte	0x2
	.value	0x327
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF157
	.uleb128 0x20
	.long	.LASF159
	.byte	0x2
	.value	0x2ac
	.byte	0x1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c7
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x2
	.value	0x2ac
	.byte	0xc
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x21
	.long	.LASF162
	.byte	0x2
	.value	0x27e
	.byte	0x1
	.long	0x890
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x90b
	.uleb128 0x1e
	.long	.LASF161
	.byte	0x2
	.value	0x27e
	.byte	0x10
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF156
	.byte	0x2
	.value	0x280
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x21
	.long	.LASF163
	.byte	0x2
	.value	0x264
	.byte	0x1
	.long	0x890
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x93f
	.uleb128 0x1f
	.long	.LASF156
	.byte	0x2
	.value	0x266
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x21
	.long	.LASF164
	.byte	0x2
	.value	0x24f
	.byte	0x1
	.long	0x890
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x973
	.uleb128 0x1f
	.long	.LASF156
	.byte	0x2
	.value	0x251
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x22
	.long	.LASF165
	.byte	0x2
	.value	0x249
	.byte	0x1
	.long	0x890
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF166
	.byte	0x2
	.value	0x240
	.byte	0x1
	.long	0x890
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.string	"or"
	.byte	0x2
	.value	0x22e
	.byte	0x1
	.long	0x890
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e4
	.uleb128 0x1f
	.long	.LASF156
	.byte	0x2
	.value	0x230
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x24
	.string	"and"
	.byte	0x2
	.value	0x21b
	.byte	0x1
	.long	0x890
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0xa18
	.uleb128 0x1f
	.long	.LASF156
	.byte	0x2
	.value	0x21d
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x21
	.long	.LASF167
	.byte	0x2
	.value	0x185
	.byte	0x1
	.long	0x890
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0xb28
	.uleb128 0x1f
	.long	.LASF168
	.byte	0x2
	.value	0x187
	.byte	0xf
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xa84
	.uleb128 0x1f
	.long	.LASF169
	.byte	0x2
	.value	0x1a9
	.byte	0x19
	.long	0x423
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1f
	.long	.LASF170
	.byte	0x2
	.value	0x1aa
	.byte	0x19
	.long	0x423
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x25
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xabc
	.uleb128 0x1f
	.long	.LASF171
	.byte	0x2
	.value	0x1b4
	.byte	0xf
	.long	0x40b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1f
	.long	.LASF172
	.byte	0x2
	.value	0x1b5
	.byte	0xf
	.long	0x40b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.uleb128 0x25
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xaf4
	.uleb128 0x1f
	.long	.LASF173
	.byte	0x2
	.value	0x1bf
	.byte	0xf
	.long	0x3ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x1f
	.long	.LASF174
	.byte	0x2
	.value	0x1c0
	.byte	0xf
	.long	0x3ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x26
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x27
	.string	"fd"
	.byte	0x2
	.value	0x202
	.byte	0x12
	.long	0xd3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x27
	.string	"arg"
	.byte	0x2
	.value	0x203
	.byte	0x15
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF175
	.byte	0x2
	.value	0x10f
	.byte	0x1
	.long	0x890
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0xd0d
	.uleb128 0x1e
	.long	.LASF176
	.byte	0x2
	.value	0x10f
	.byte	0x17
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x27
	.string	"op"
	.byte	0x2
	.value	0x111
	.byte	0x7
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x1f
	.long	.LASF168
	.byte	0x2
	.value	0x112
	.byte	0xf
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x2
	.value	0x112
	.byte	0x19
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.long	.LASF178
	.byte	0x2
	.value	0x114
	.byte	0x8
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xc16
	.uleb128 0x1f
	.long	.LASF179
	.byte	0x2
	.value	0x12b
	.byte	0x10
	.long	0xd0d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.long	.LASF180
	.byte	0x2
	.value	0x12c
	.byte	0x10
	.long	0xd0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"l"
	.byte	0x2
	.value	0x12d
	.byte	0x17
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x27
	.string	"r"
	.byte	0x2
	.value	0x130
	.byte	0x17
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x27
	.string	"cmp"
	.byte	0x2
	.value	0x133
	.byte	0xf
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x1f
	.long	.LASF181
	.byte	0x2
	.value	0x134
	.byte	0x10
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -445
	.byte	0
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xc6c
	.uleb128 0x27
	.string	"lt"
	.byte	0x2
	.value	0x144
	.byte	0x1f
	.long	0x423
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x27
	.string	"rt"
	.byte	0x2
	.value	0x144
	.byte	0x23
	.long	0x423
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x27
	.string	"le"
	.byte	0x2
	.value	0x145
	.byte	0x14
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -442
	.uleb128 0x27
	.string	"re"
	.byte	0x2
	.value	0x145
	.byte	0x18
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -441
	.byte	0
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xcc2
	.uleb128 0x27
	.string	"lt"
	.byte	0x2
	.value	0x161
	.byte	0x1f
	.long	0x423
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x27
	.string	"rt"
	.byte	0x2
	.value	0x161
	.byte	0x23
	.long	0x423
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x27
	.string	"le"
	.byte	0x2
	.value	0x162
	.byte	0x14
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x27
	.string	"re"
	.byte	0x2
	.value	0x162
	.byte	0x18
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -443
	.byte	0
	.uleb128 0x25
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xce9
	.uleb128 0x1f
	.long	.LASF156
	.byte	0x2
	.value	0x174
	.byte	0xc
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -447
	.byte	0
	.uleb128 0x26
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1f
	.long	.LASF156
	.byte	0x2
	.value	0x17b
	.byte	0xc
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -446
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x17c
	.long	0xd1d
	.uleb128 0x6
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x28
	.long	.LASF182
	.byte	0x2
	.byte	0xd3
	.byte	0x1
	.long	0x890
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0xd7f
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0xd5
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1c
	.long	.LASF183
	.byte	0x2
	.byte	0xd6
	.byte	0x8
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x2
	.byte	0xe5
	.byte	0xb
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF184
	.byte	0x2
	.byte	0xb7
	.byte	0x1
	.long	0x890
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0xdaf
	.uleb128 0x29
	.string	"s"
	.byte	0x2
	.byte	0xb7
	.byte	0x14
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF185
	.byte	0x2
	.byte	0xa8
	.byte	0x1
	.long	0x890
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0xe27
	.uleb128 0x2a
	.long	.LASF186
	.byte	0x2
	.byte	0xa8
	.byte	0x18
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.long	.LASF170
	.byte	0x2
	.byte	0xa8
	.byte	0x33
	.long	0xe27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1c
	.long	.LASF187
	.byte	0x2
	.byte	0xaa
	.byte	0xf
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1b
	.string	"ok"
	.byte	0x2
	.byte	0xab
	.byte	0x8
	.long	0x890
	.uleb128 0x3
	.byte	0x91
	.sleb128 -177
	.uleb128 0x1c
	.long	.LASF188
	.byte	0x2
	.byte	0xad
	.byte	0x20
	.long	0x44b
	.uleb128 0x9
	.byte	0x3
	.quad	zero.6316
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x423
	.uleb128 0x28
	.long	.LASF189
	.byte	0x2
	.byte	0x85
	.byte	0x1
	.long	0x370
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0xe7b
	.uleb128 0x2a
	.long	.LASF190
	.byte	0x2
	.byte	0x85
	.byte	0x17
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"p"
	.byte	0x2
	.byte	0x87
	.byte	0xf
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF191
	.byte	0x2
	.byte	0x88
	.byte	0xf
	.long	0x370
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.long	.LASF192
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF210
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF195
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xedb
	.uleb128 0x29
	.string	"f"
	.byte	0x2
	.byte	0x68
	.byte	0xf
	.long	0x890
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF193
	.byte	0x2
	.byte	0x5b
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xf1a
	.uleb128 0x2a
	.long	.LASF194
	.byte	0x2
	.byte	0x5b
	.byte	0x20
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.uleb128 0x1b
	.string	"ap"
	.byte	0x2
	.byte	0x5d
	.byte	0xb
	.long	0x37b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x30
	.long	.LASF196
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xfbf
	.uleb128 0x1e
	.long	.LASF197
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x31
	.long	.LASF198
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xf75
	.uleb128 0x32
	.long	.LASF197
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x370
	.byte	0
	.uleb128 0x32
	.long	.LASF199
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x370
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0xf4a
	.uleb128 0x1f
	.long	.LASF198
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xfcf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF199
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1f
	.long	.LASF200
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xfd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	.LASF201
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x370
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x5
	.long	0xf75
	.long	0xfcf
	.uleb128 0x6
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	0xfbf
	.uleb128 0xc
	.byte	0x8
	.long	0xf75
	.uleb128 0x33
	.long	.LASF202
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0xab
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x100b
	.uleb128 0x29
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x17c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF211
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF160
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.long	0xc7
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF113:
	.string	"exit_failure"
.LASF11:
	.string	"short int"
.LASF124:
	.string	"_ISgraph"
.LASF139:
	.string	"locale_quoting_style"
.LASF40:
	.string	"_chain"
.LASF100:
	.string	"st_ctim"
.LASF209:
	.string	"quoting_style"
.LASF0:
	.string	"size_t"
.LASF86:
	.string	"stat"
.LASF46:
	.string	"_shortbuf"
.LASF190:
	.string	"string"
.LASF2:
	.string	"gp_offset"
.LASF122:
	.string	"_ISspace"
.LASF60:
	.string	"va_list"
.LASF132:
	.string	"shell_quoting_style"
.LASF175:
	.string	"binary_operator"
.LASF34:
	.string	"_IO_buf_base"
.LASF174:
	.string	"NO_GID"
.LASF172:
	.string	"NO_UID"
.LASF78:
	.string	"long long unsigned int"
.LASF180:
	.string	"rbuf"
.LASF162:
	.string	"posixtest"
.LASF119:
	.string	"_ISalpha"
.LASF163:
	.string	"three_arguments"
.LASF49:
	.string	"_codecvt"
.LASF16:
	.string	"__gid_t"
.LASF120:
	.string	"_ISdigit"
.LASF68:
	.string	"long long int"
.LASF10:
	.string	"signed char"
.LASF143:
	.string	"quoting_style_vals"
.LASF88:
	.string	"st_ino"
.LASF114:
	.string	"uintmax_t"
.LASF197:
	.string	"program"
.LASF138:
	.string	"escape_quoting_style"
.LASF18:
	.string	"__mode_t"
.LASF131:
	.string	"literal_quoting_style"
.LASF41:
	.string	"_fileno"
.LASF130:
	.string	"program_name"
.LASF29:
	.string	"_IO_read_end"
.LASF81:
	.string	"__timezone"
.LASF24:
	.string	"__blkcnt_t"
.LASF103:
	.string	"sys_siglist"
.LASF12:
	.string	"long int"
.LASF77:
	.string	"_gl_cxxalias_dummy"
.LASF169:
	.string	"atime"
.LASF27:
	.string	"_flags"
.LASF206:
	.string	"__builtin_va_list"
.LASF50:
	.string	"_wide_data"
.LASF171:
	.string	"euid"
.LASF44:
	.string	"_cur_column"
.LASF111:
	.string	"program_invocation_short_name"
.LASF58:
	.string	"_IO_codecvt"
.LASF67:
	.string	"_sys_errlist"
.LASF110:
	.string	"program_invocation_name"
.LASF43:
	.string	"_old_offset"
.LASF48:
	.string	"_offset"
.LASF125:
	.string	"_ISblank"
.LASF115:
	.string	"TIMESPEC_HZ"
.LASF93:
	.string	"__pad0"
.LASF135:
	.string	"shell_escape_always_quoting_style"
.LASF191:
	.string	"number_start"
.LASF84:
	.string	"timezone"
.LASF53:
	.string	"__pad5"
.LASF127:
	.string	"_ISpunct"
.LASF97:
	.string	"st_blocks"
.LASF188:
	.string	"zero"
.LASF91:
	.string	"st_uid"
.LASF156:
	.string	"value"
.LASF181:
	.string	"xe_operator"
.LASF57:
	.string	"_IO_marker"
.LASF61:
	.string	"stdin"
.LASF7:
	.string	"unsigned int"
.LASF52:
	.string	"_freeres_buf"
.LASF4:
	.string	"overflow_arg_area"
.LASF6:
	.string	"long unsigned int"
.LASF200:
	.string	"map_prog"
.LASF32:
	.string	"_IO_write_ptr"
.LASF64:
	.string	"sys_nerr"
.LASF71:
	.string	"uid_t"
.LASF203:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF141:
	.string	"custom_quoting_style"
.LASF9:
	.string	"short unsigned int"
.LASF148:
	.string	"error_one_per_line"
.LASF112:
	.string	"Version"
.LASF36:
	.string	"_IO_save_base"
.LASF19:
	.string	"__nlink_t"
.LASF154:
	.string	"margc"
.LASF185:
	.string	"get_mtime"
.LASF184:
	.string	"binop"
.LASF105:
	.string	"environ"
.LASF47:
	.string	"_lock"
.LASF42:
	.string	"_flags2"
.LASF54:
	.string	"_mode"
.LASF150:
	.string	"TEST_FALSE"
.LASF62:
	.string	"stdout"
.LASF155:
	.string	"margv"
.LASF179:
	.string	"lbuf"
.LASF95:
	.string	"st_size"
.LASF129:
	.string	"version_etc_copyright"
.LASF90:
	.string	"st_mode"
.LASF106:
	.string	"optarg"
.LASF76:
	.string	"tv_nsec"
.LASF118:
	.string	"_ISlower"
.LASF85:
	.string	"getdate_err"
.LASF14:
	.string	"__dev_t"
.LASF186:
	.string	"filename"
.LASF107:
	.string	"optind"
.LASF25:
	.string	"__syscall_slong_t"
.LASF1:
	.string	"__gnuc_va_list"
.LASF28:
	.string	"_IO_read_ptr"
.LASF161:
	.string	"nargs"
.LASF165:
	.string	"one_argument"
.LASF70:
	.string	"gid_t"
.LASF208:
	.string	"_IO_lock_t"
.LASF168:
	.string	"stat_buf"
.LASF73:
	.string	"_IO_FILE"
.LASF146:
	.string	"error_print_progname"
.LASF23:
	.string	"__blksize_t"
.LASF149:
	.string	"TEST_TRUE"
.LASF20:
	.string	"__off_t"
.LASF104:
	.string	"__environ"
.LASF72:
	.string	"time_t"
.LASF167:
	.string	"unary_operator"
.LASF177:
	.string	"stat_spare"
.LASF65:
	.string	"sys_errlist"
.LASF176:
	.string	"l_is_l"
.LASF39:
	.string	"_markers"
.LASF166:
	.string	"expr"
.LASF101:
	.string	"__glibc_reserved"
.LASF202:
	.string	"to_uchar"
.LASF89:
	.string	"st_nlink"
.LASF137:
	.string	"c_maybe_quoting_style"
.LASF116:
	.string	"LOG10_TIMESPEC_HZ"
.LASF157:
	.string	"_Bool"
.LASF8:
	.string	"unsigned char"
.LASF211:
	.string	"initialize_exit_failure"
.LASF199:
	.string	"node"
.LASF35:
	.string	"_IO_buf_end"
.LASF151:
	.string	"TEST_FAILURE"
.LASF164:
	.string	"two_arguments"
.LASF96:
	.string	"st_blksize"
.LASF145:
	.string	"quote_quoting_options"
.LASF75:
	.string	"tv_sec"
.LASF66:
	.string	"_sys_nerr"
.LASF74:
	.string	"timespec"
.LASF45:
	.string	"_vtable_offset"
.LASF82:
	.string	"tzname"
.LASF5:
	.string	"reg_save_area"
.LASF194:
	.string	"format"
.LASF134:
	.string	"shell_escape_quoting_style"
.LASF17:
	.string	"__ino_t"
.LASF204:
	.string	"src/test.c"
.LASF142:
	.string	"quoting_style_args"
.LASF109:
	.string	"optopt"
.LASF83:
	.string	"daylight"
.LASF173:
	.string	"egid"
.LASF170:
	.string	"mtime"
.LASF187:
	.string	"finfo"
.LASF69:
	.string	"long double"
.LASF26:
	.string	"char"
.LASF133:
	.string	"shell_always_quoting_style"
.LASF126:
	.string	"_IScntrl"
.LASF22:
	.string	"__time_t"
.LASF121:
	.string	"_ISxdigit"
.LASF140:
	.string	"clocale_quoting_style"
.LASF193:
	.string	"test_syntax_error"
.LASF108:
	.string	"opterr"
.LASF189:
	.string	"find_int"
.LASF210:
	.string	"unary_advance"
.LASF15:
	.string	"__uid_t"
.LASF183:
	.string	"negated"
.LASF13:
	.string	"__uintmax_t"
.LASF21:
	.string	"__off64_t"
.LASF144:
	.string	"quoting_options"
.LASF30:
	.string	"_IO_read_base"
.LASF38:
	.string	"_IO_save_end"
.LASF136:
	.string	"c_quoting_style"
.LASF102:
	.string	"_sys_siglist"
.LASF198:
	.string	"infomap"
.LASF92:
	.string	"st_gid"
.LASF159:
	.string	"usage"
.LASF195:
	.string	"advance"
.LASF33:
	.string	"_IO_write_end"
.LASF192:
	.string	"beyond"
.LASF55:
	.string	"_unused2"
.LASF63:
	.string	"stderr"
.LASF98:
	.string	"st_atim"
.LASF153:
	.string	"argv"
.LASF80:
	.string	"__daylight"
.LASF128:
	.string	"_ISalnum"
.LASF160:
	.string	"status"
.LASF205:
	.string	"/root/coreutils"
.LASF87:
	.string	"st_dev"
.LASF117:
	.string	"_ISupper"
.LASF37:
	.string	"_IO_backup_base"
.LASF3:
	.string	"fp_offset"
.LASF99:
	.string	"st_mtim"
.LASF147:
	.string	"error_message_count"
.LASF201:
	.string	"lc_messages"
.LASF152:
	.string	"argc"
.LASF51:
	.string	"_freeres_list"
.LASF178:
	.string	"r_is_l"
.LASF59:
	.string	"_IO_wide_data"
.LASF56:
	.string	"FILE"
.LASF94:
	.string	"st_rdev"
.LASF182:
	.string	"term"
.LASF79:
	.string	"__tzname"
.LASF158:
	.string	"main"
.LASF31:
	.string	"_IO_write_base"
.LASF196:
	.string	"emit_ancillary_info"
.LASF123:
	.string	"_ISprint"
.LASF207:
	.string	"__va_list_tag"
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
