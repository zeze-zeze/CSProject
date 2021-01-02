	.file	"factor.c"
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
	.string	"-debug"
.LC19:
	.string	"help"
.LC20:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 128
long_options:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC20
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
.LC21:
	.string	"src/factor.c"
.LC22:
	.string	"d1 != 0"
	.text
	.type	mod2, @function
mod2:
.LFB46:
	.file 2 "src/factor.c"
	.loc 2 407 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	.loc 2 410 3
	cmpq	$0, -64(%rbp)
	jne	.L11
	.loc 2 410 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6955(%rip), %rcx
	movl	$410, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	call	__assert_fail@PLT
.L11:
	.loc 2 412 6 is_stmt 1
	cmpq	$0, -48(%rbp)
	jne	.L12
	.loc 2 414 11
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 415 14
	movq	-56(%rbp), %rax
	jmp	.L13
.L12:
.LBB2:
	.loc 2 418 3
#APP
# 418 "src/factor.c" 1
	bsr	-64(%rbp),%rax
# 0 "" 2
#NO_APP
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	xorl	$63, %eax
	movl	%eax, -28(%rbp)
.LBE2:
.LBB3:
	.loc 2 419 3
#APP
# 419 "src/factor.c" 1
	bsr	-48(%rbp),%rax
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	xorl	$63, %eax
	movl	%eax, -24(%rbp)
.LBE3:
	.loc 2 420 7
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	.loc 2 421 3
	movl	-20(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movl	$64, %eax
	subl	-20(%rbp), %eax
	movq	-72(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rsi, %rax
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, -72(%rbp)
.LBB4:
	.loc 2 422 12
	movl	$0, -32(%rbp)
	.loc 2 422 3
	jmp	.L14
.L17:
	.loc 2 424 10
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	ja	.L15
	.loc 2 424 11 discriminator 1
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L16
	.loc 2 424 11 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L16
.L15:
	.loc 2 425 9 is_stmt 1
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
#APP
# 425 "src/factor.c" 1
	subq -72(%rbp),%rax
	sbbq -64(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -48(%rbp)
	movq	%rax, -56(%rbp)
.L16:
	.loc 2 426 7 discriminator 2
	movq	-64(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -72(%rbp)
	shrq	-64(%rbp)
	.loc 2 422 29 discriminator 2
	addl	$1, -32(%rbp)
.L14:
	.loc 2 422 3 discriminator 1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L17
.LBE4:
	.loc 2 429 7
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 430 10
	movq	-56(%rbp), %rax
.L13:
	.loc 2 431 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	mod2, .-mod2
	.type	gcd_odd, @function
gcd_odd:
.LFB47:
	.loc 2 435 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 436 11
	movq	-48(%rbp), %rax
	andl	$1, %eax
	.loc 2 436 6
	testq	%rax, %rax
	jne	.L19
.LBB5:
	.loc 2 438 17
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 439 9
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 440 9
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.L19:
.LBE5:
	.loc 2 442 6
	cmpq	$0, -40(%rbp)
	jne	.L20
	.loc 2 443 12
	movq	-48(%rbp), %rax
	jmp	.L21
.L20:
	.loc 2 446 5
	shrq	-48(%rbp)
.L25:
.LBB6:
	.loc 2 453 13
	jmp	.L22
.L23:
	.loc 2 454 11
	shrq	-40(%rbp)
.L22:
	.loc 2 453 17
	movq	-40(%rbp), %rax
	andl	$1, %eax
	.loc 2 453 13
	testq	%rax, %rax
	je	.L23
	.loc 2 455 9
	shrq	-40(%rbp)
	.loc 2 457 9
	movq	-40(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 458 10
	cmpq	$0, -16(%rbp)
	jne	.L24
	.loc 2 459 19
	movq	-40(%rbp), %rax
	addq	%rax, %rax
	.loc 2 459 25
	addq	$1, %rax
	jmp	.L21
.L24:
	.loc 2 461 14
	movq	-16(%rbp), %rax
	sarq	$63, %rax
	.loc 2 461 12
	movq	%rax, -8(%rbp)
	.loc 2 464 18
	movq	-8(%rbp), %rax
	andq	-16(%rbp), %rax
	.loc 2 464 9
	addq	%rax, -48(%rbp)
	.loc 2 467 14
	movq	-16(%rbp), %rax
	xorq	-8(%rbp), %rax
	.loc 2 467 9
	subq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBE6:
	.loc 2 449 5
	jmp	.L25
.L21:
	.loc 2 469 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	gcd_odd, .-gcd_odd
	.section	.rodata
.LC23:
	.string	"b0 & 1"
	.text
	.type	gcd2_odd, @function
gcd2_odd:
.LFB48:
	.loc 2 473 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	.loc 2 474 3
	movq	-40(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L27
	.loc 2 474 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6981(%rip), %rcx
	movl	$474, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC23(%rip), %rdi
	call	__assert_fail@PLT
.L27:
	.loc 2 476 12 is_stmt 1
	movq	-24(%rbp), %rax
	orq	-16(%rbp), %rax
	.loc 2 476 6
	testq	%rax, %rax
	jne	.L30
	.loc 2 478 11
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 479 14
	movq	-40(%rbp), %rax
	jmp	.L29
.L31:
	.loc 2 483 5
	movq	-16(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	shrq	-16(%rbp)
.L30:
	.loc 2 482 14
	movq	-24(%rbp), %rax
	andl	$1, %eax
	.loc 2 482 9
	testq	%rax, %rax
	je	.L31
.L40:
	.loc 2 487 15
	movq	-32(%rbp), %rax
	orq	-16(%rbp), %rax
	.loc 2 487 10
	testq	%rax, %rax
	jne	.L32
	.loc 2 489 15
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 490 18
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gcd_odd
	jmp	.L29
.L32:
	.loc 2 493 10
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	ja	.L33
	.loc 2 493 11 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L34
	.loc 2 493 11 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.L34
.L33:
	.loc 2 495 11 is_stmt 1
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 495 "src/factor.c" 1
	subq -40(%rbp),%rax
	sbbq -32(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
.L35:
	.loc 2 497 13 discriminator 1
	movq	-16(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	shrq	-16(%rbp)
	.loc 2 498 22 discriminator 1
	movq	-24(%rbp), %rax
	andl	$1, %eax
	.loc 2 498 11 discriminator 1
	testq	%rax, %rax
	je	.L35
	.loc 2 493 10
	jmp	.L36
.L34:
	.loc 2 500 15
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	ja	.L37
	.loc 2 500 16 discriminator 1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L38
	.loc 2 500 16 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L38
.L37:
	.loc 2 502 11 is_stmt 1
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
#APP
# 502 "src/factor.c" 1
	subq -24(%rbp),%rax
	sbbq -16(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -32(%rbp)
	movq	%rax, -40(%rbp)
.L39:
	.loc 2 504 13 discriminator 1
	movq	-32(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -40(%rbp)
	shrq	-32(%rbp)
	.loc 2 505 22 discriminator 1
	movq	-40(%rbp), %rax
	andl	$1, %eax
	.loc 2 505 11 discriminator 1
	testq	%rax, %rax
	je	.L39
.L36:
	.loc 2 487 10 discriminator 1
	jmp	.L40
.L38:
	.loc 2 511 7
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 512 10
	movq	-24(%rbp), %rax
.L29:
	.loc 2 513 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	gcd2_odd, .-gcd2_odd
	.type	factor_insert_multiplicity, @function
factor_insert_multiplicity:
.LFB49:
	.loc 2 518 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 2 519 34
	movq	-40(%rbp), %rax
	movzbl	250(%rax), %eax
	.loc 2 519 16
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	.loc 2 520 14
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -16(%rbp)
	.loc 2 521 18
	movq	-40(%rbp), %rax
	addq	$224, %rax
	movq	%rax, -8(%rbp)
	.loc 2 525 21
	movl	-20(%rbp), %eax
	subl	$1, %eax
	.loc 2 525 10
	movl	%eax, -28(%rbp)
	.loc 2 525 3
	jmp	.L42
.L45:
	.loc 2 527 12
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 527 10
	cmpq	%rax, -48(%rbp)
	jnb	.L51
	.loc 2 525 35 discriminator 2
	subl	$1, -28(%rbp)
.L42:
	.loc 2 525 3 discriminator 1
	cmpl	$0, -28(%rbp)
	jns	.L45
	jmp	.L44
.L51:
	.loc 2 528 9
	nop
.L44:
	.loc 2 531 6
	cmpl	$0, -28(%rbp)
	js	.L46
	.loc 2 531 17 discriminator 1
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 531 13 discriminator 1
	cmpq	%rax, -48(%rbp)
	je	.L47
.L46:
.LBB7:
	.loc 2 533 29
	movl	-20(%rbp), %eax
	subl	$1, %eax
	.loc 2 533 16
	movl	%eax, -24(%rbp)
	.loc 2 533 7
	jmp	.L48
.L49:
	.loc 2 535 23 discriminator 3
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 535 12 discriminator 3
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 535 23 discriminator 3
	movq	(%rax), %rax
	.loc 2 535 20 discriminator 3
	movq	%rax, (%rdx)
	.loc 2 536 23 discriminator 3
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 536 12 discriminator 3
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 536 23 discriminator 3
	movzbl	(%rax), %eax
	.loc 2 536 20 discriminator 3
	movb	%al, (%rdx)
	.loc 2 533 42 discriminator 3
	subl	$1, -24(%rbp)
.L48:
	.loc 2 533 7 discriminator 1
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.L49
.LBE7:
	.loc 2 538 8
	movl	-28(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 538 16
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 539 8
	movl	-28(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 539 16
	movl	-52(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 540 36
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	.loc 2 540 25
	movq	-40(%rbp), %rax
	movb	%dl, 250(%rax)
	jmp	.L50
.L47:
	.loc 2 544 12
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addl	%esi, %edx
	movb	%dl, (%rax)
	.loc 2 546 1
	nop
.L50:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	factor_insert_multiplicity, .-factor_insert_multiplicity
	.section	.rodata
.LC24:
	.string	"factors->plarge[1] == 0"
	.text
	.type	factor_insert_large, @function
factor_insert_large:
.LFB50:
	.loc 2 553 1
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
	.loc 2 554 6
	cmpq	$0, -16(%rbp)
	je	.L53
	.loc 2 556 7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L54
	.loc 2 556 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7012(%rip), %rcx
	movl	$556, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC24(%rip), %rdi
	call	__assert_fail@PLT
.L54:
	.loc 2 557 26 is_stmt 1
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 558 26
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 562 1
	jmp	.L56
.L53:
	.loc 2 561 5
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_insert_multiplicity
.L56:
	.loc 2 562 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	factor_insert_large, .-factor_insert_large
	.type	mpz_va_init, @function
mpz_va_init:
.LFB51:
	.loc 2 573 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L58
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L58:
	.loc 2 573 1
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 2 576 3
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 2 579 9
	jmp	.L59
.L62:
	.loc 2 580 5
	movq	-216(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.LVL0:
.L59:
	.loc 2 579 15
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L60
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L61
.L60:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L61:
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	.loc 2 579 9
	cmpq	$0, -216(%rbp)
	jne	.L62
	.loc 2 583 1
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	mpz_va_init, .-mpz_va_init
	.type	mp_factor_init, @function
mp_factor_init:
.LFB52:
	.loc 2 590 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 591 14
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 592 14
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 593 21
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 594 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	mp_factor_init, .-mp_factor_init
	.type	mp_factor_clear, @function
mp_factor_clear:
.LFB53:
	.loc 2 598 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.LBB8:
	.loc 2 599 21
	movl	$0, -4(%rbp)
	.loc 2 599 3
	jmp	.L66
.L67:
	.loc 2 600 23 discriminator 3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 600 26 discriminator 3
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 2 600 5 discriminator 3
	movq	%rax, %rdi
	call	mpz_clear@PLT
	.loc 2 599 52 discriminator 3
	addl	$1, -4(%rbp)
.L66:
	.loc 2 599 30 discriminator 1
	movl	-4(%rbp), %edx
	.loc 2 599 39 discriminator 1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 599 3 discriminator 1
	cmpq	%rax, %rdx
	jb	.L67
.LBE8:
	.loc 2 602 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 602 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 603 16
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 603 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 604 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	mp_factor_clear, .-mp_factor_clear
	.type	mp_factor_insert, @function
mp_factor_insert:
.LFB54:
	.loc 2 608 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 609 21
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 610 18
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 611 22
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 615 21
	movq	-24(%rbp), %rax
	subq	$1, %rax
	.loc 2 615 10
	movq	%rax, -40(%rbp)
	.loc 2 615 3
	jmp	.L69
.L72:
	.loc 2 617 21
	movq	-40(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 617 11
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	mpz_cmp@PLT
	.loc 2 617 10
	testl	%eax, %eax
	jle	.L78
	.loc 2 615 35 discriminator 2
	subq	$1, -40(%rbp)
.L69:
	.loc 2 615 3 discriminator 1
	cmpq	$0, -40(%rbp)
	jns	.L72
	jmp	.L71
.L78:
	.loc 2 618 9
	nop
.L71:
	.loc 2 621 6
	cmpq	$0, -40(%rbp)
	js	.L73
	.loc 2 621 26 discriminator 1
	movq	-40(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 621 16 discriminator 1
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	mpz_cmp@PLT
	.loc 2 621 13 discriminator 1
	testl	%eax, %eax
	je	.L74
.L73:
	.loc 2 623 34
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 2 623 11
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	movq	%rax, -16(%rbp)
	.loc 2 624 34
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 2 624 11
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 626 18
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 626 7
	movq	%rax, %rdi
	call	mpz_init@PLT
.LBB9:
	.loc 2 627 30
	movq	-24(%rbp), %rax
	subq	$1, %rax
	.loc 2 627 17
	movq	%rax, -32(%rbp)
	.loc 2 627 7
	jmp	.L75
.L76:
	.loc 2 629 31 discriminator 3
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 629 21 discriminator 3
	movq	-32(%rbp), %rax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 629 11 discriminator 3
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mpz_set@PLT
	.loc 2 630 23 discriminator 3
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 630 12 discriminator 3
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 630 23 discriminator 3
	movq	(%rax), %rax
	.loc 2 630 20 discriminator 3
	movq	%rax, (%rdx)
	.loc 2 627 43 discriminator 3
	subq	$1, -32(%rbp)
.L75:
	.loc 2 627 7 discriminator 1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jg	.L76
.LBE9:
	.loc 2 632 17
	movq	-40(%rbp), %rax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 632 7
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	mpz_set@PLT
	.loc 2 633 8
	movq	-40(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 633 16
	movq	$1, (%rax)
	.loc 2 635 18
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 636 18
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 637 36
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 2 637 25
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L77
.L74:
	.loc 2 641 12
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addq	$1, %rdx
	movq	%rdx, (%rax)
	.loc 2 643 1
	nop
.L77:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	mp_factor_insert, .-mp_factor_insert
	.type	mp_factor_insert_ui, @function
mp_factor_insert_ui:
.LFB55:
	.loc 2 647 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 647 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 650 3
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mpz_init_set_ui@PLT
	.loc 2 651 3
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mp_factor_insert
	.loc 2 652 3
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	mpz_clear@PLT
	.loc 2 653 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	mp_factor_insert_ui, .-mp_factor_insert_ui
	.section	.rodata
	.align 32
	.type	primes_diff, @object
	.size	primes_diff, 675
primes_diff:
	.ascii	"\001\002\002\004\002\004\002\004\006\002\006\004\002\004\006"
	.ascii	"\006\002\006\004\002\006\004\006\b\004\002\004\002\004\016\004"
	.ascii	"\006\002\n\002\006\006\004\006\006\002\n\002\004\002\f\f\004"
	.ascii	"\002\004\006\002\n\006\006\006\002\006\004\002\n\016\004\002"
	.ascii	"\004\016\006\n\002\004\006\b\006\006\004\006\b\004\b\n\002\n"
	.ascii	"\002\006\004\006\b\004\002\004\f\b\004\b\004\006\f\002\022\006"
	.ascii	"\n\006\006\002\006\n\006\006\002\006\006\004\002\f\n\002\004"
	.ascii	"\006\006\002\f\004\006\b\n\b\n\b\006\006\004\b\006\004\b\004"
	.ascii	"\016\n\f\002\n\002\004\002\n\016\004\002\004\016\004\002\004"
	.ascii	"\024\004\b\n\b\004\006\006\016\004\006\006\b\006\f\004\006\002"
	.ascii	"\n\002\006\n\002\n\002\006\022\004\002\004\006\006\b\006\006"
	.ascii	"\026\002\n\b\n\006\006\b\f\004\006\006\002\006\f\n\022\002\004"
	.ascii	"\006\002\006\004\002\004\f\002\006\"\006\006\b\022\n\016\004"
	.ascii	"\002\004\006\b\004\002\006\f\n\002\004\002\004\006\f\f\b\f\006"
	.ascii	"\004\006\b\004\b\004\016\004\006\002\004\006\002\006\n\024\006"
	.ascii	"\004\002\030\004\002\n\f\002\n\b\006\006\006\022\006\004\002"
	.ascii	"\f\n\f\b\020\016\006\004\002\004\002\n\f\006\006\022\002\020"
	.ascii	"\002\026\006\b\006\004\002\004\b\006\n\002\n\016\n\006\f\002"
	.ascii	"\004\002\n\f\002\020\002\006\004\002\n\b\022\030\004\006\b\020"
	.ascii	"\002\004\b\020\002\004\b\006\006\004\f\002\026\006\002\006\004"
	.ascii	"\006\016\006\004\002\006\004\006\f\006\006\016\004\006\f\b\006"
	.ascii	"\004\032\022\n\b\004\006\002\006\026\f\002\020\b\004\f\016\n"
	.ascii	"\002\004\b\006\006\004\002\004\006\b\004\002\006\n\002\n\b\004"
	.ascii	"\016\n\f\002\006\004\002\020\016\004\006"
	.string	"\b\006\004\022\b\n\006\006\b\n\f\016\004\006\006\002\034\002\n\b\004\016\004\b\f\006\f\004\006\024\n\002\020\032\004\002\f\006\004\f\006\b\004\b\026\002\004\002\f\034\002\006\006\006\004\006\002\f\004\f\002\n\002\020\002\020\006\024\020\b\004\002\004\002\026\b\f\006\n\002\004\006\002\006\n\002\f\n\002\n\016\006\004\006\b\006\006\020\f\002\004\016\006\004\b\n\b\006\006\026\006\002\n\016\004\006\022\002\n\016\004\002\n\016\004\b\022\004\006\002\004\006\002\f\004\024\026\f\002\004\006\006\002\006\026\002\006\020\006\f\002\006\f\020\002\004\006\016\004\002\022\030\n\006\002\n\002\n\002\n\006\002\n\002\n\006\b\036\n\002\n\b\006\n\022\006\f\f\002\022\006\004\006\006\022\002\n\016\006\004\002\004\030\002\f\006\020\b\006\006\022\020\002\004\006\002\006\006\n\006\f\f\022\002\006\004\022\b\030\004\002\004\006\002\f\004\016\036\n\006\f\016\006\n\f\002\004\006\b\006\n\002\004\016\006\006"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.align 32
	.type	primes_diff8, @object
	.size	primes_diff8, 675
primes_diff8:
	.ascii	"\032\032\036\036\036\036\"$ $\" $$$&($$$\",*(&.,02(*****($,2"
	.ascii	"00*.,4.(**,***20,.68@8.0680.*00240422.00**$.002.0:8><B@B>8@4"
	.ascii	"4,,,.*,0,...,6.*068<B<><<842.6:B<@>:84800*666066<B<<@B<<:668"
	.ascii	"><426204*0,08:604066*<<BDHFFH>@<:228:@><<<<4,\036(&&FFHN\\Zf"
	.ascii	"dDBBB4,$,420**.442<>@BD<846462.0*,(88:8JLHH@<BH68<D>@8<@FHFN"
	.ascii	"PRHB8:6..<<HHTNPPBB6<,0*.8@BFB<<<:2<266662BJLLP^VRH@><<266:,"
	.ascii	"@B<<:<>B0,0.06..8::BD><PTZ\\TRNPLF>FJHRZNDF><>6*$(,($$**02.8"
	.ascii	"@F>B<6BB<6<<<LD@BB"
	.string	"BFNJFBB>RJHBBJHN>BD@BHNHL`XV\\NHRH66<FBB8>RPN>BBF<,.4042<<@BJXVXJL>NB><BBBF20.*,426BB<@<8<B@<<DB@B<8<>FFDFJFFR>BNH<BJ<BJ@BB<426(8HRPNRLJ<<26BBHHH>LH<<>@<BJRTPLJRB40,4,406JNNNTPT^FHRJTTNBBH>FBBB><BBD<FJNPJXNLB<<<4*4<HHHFNP\\TDFFD>:0JRTZf`fdHBB>6:2*688\377\377\377\377\377\377\377\377"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.align 32
	.type	primes_dtab, @object
	.size	primes_dtab, 10800
primes_dtab:
	.quad	-6148914691236517205
	.quad	6148914691236517205
	.quad	-3689348814741910323
	.quad	3689348814741910323
	.quad	7905747460161236407
	.quad	2635249153387078802
	.quad	3353953467947191203
	.quad	1676976733973595601
	.quad	5675921253449092805
	.quad	1418980313362273201
	.quad	-1085102592571150095
	.quad	1085102592571150095
	.quad	-8737931403336103397
	.quad	970881267037344821
	.quad	-3208129404123400281
	.quad	802032351030850070
	.quad	3816567739388183093
	.quad	636094623231363848
	.quad	-1190112520884487201
	.quad	595056260442243600
	.quad	1495681951922396077
	.quad	498560650640798692
	.quad	-8098570568945656807
	.quad	449920587163647600
	.quad	-9008875012741874045
	.quad	428994048225803525
	.quad	5887258746928580303
	.quad	392483916461905353
	.quad	2436362424829563421
	.quad	348051774975651917
	.quad	-3751880150584993549
	.quad	312656679215416129
	.quad	5745707170499696405
	.quad	302405640552615600
	.quad	-1101298153654301589
	.quad	275324538413575397
	.quad	1818693077689674103
	.quad	259813296812810586
	.quad	9097024474706080249
	.quad	252695124297391118
	.quad	-7238595775759444305
	.quad	233503089540627235
	.quad	-6667497857967307813
	.quad	222249928598910260
	.quad	-829067149380204567
	.quad	207266787345051141
	.quad	-6656041676080766047
	.quad	190172619316593315
	.quad	4200743699953660269
	.quad	182641030432767837
	.quad	-2686419039860614313
	.quad	179094602657374287
	.quad	8619973866219416643
	.quad	172399477324388332
	.quad	-6430974998173972123
	.quad	169236184162472950
	.quad	-7999030616033345391
	.quad	163245522776190722
	.quad	9150747060186627967
	.quad	145249953336295682
	.quad	281629680514649643
	.quad	140814840257324821
	.quad	-2154364271382137415
	.quad	134647766961383588
	.quad	4246732448623781667
	.quad	132710389019493177
	.quad	-2352269378526721347
	.quad	123803651501406386
	.quad	8062815290495565607
	.quad	122163868037811600
	.quad	6579730370240349621
	.quad	117495185182863386
	.quad	2263404180823257867
	.quad	113170209041162893
	.quad	-8284465901366565097
	.quad	110459545351554201
	.quad	-8636914855320657115
	.quad	106628578460748853
	.quad	-1339707670157676933
	.quad	103054436165975148
	.quad	3770881385233444253
	.quad	101915713114417412
	.quad	2124755861893246783
	.quad	96579811904238490
	.quad	8124213711219232577
	.quad	95578984837873324
	.quad	-3932808381196960243
	.quad	93638294790403815
	.quad	2780916192016515319
	.quad	92697206400550510
	.quad	-4546117022904723621
	.quad	87425327363552377
	.quad	7527595115280579359
	.quad	82720825442643729
	.quad	1950316554048586955
	.quad	81263189752024456
	.quad	2094390156840385773
	.quad	80553467570784068
	.quad	7204522363551799129
	.quad	79170575423646144
	.quad	7255204782128442895
	.quad	77183029597111094
	.quad	-1148137597948727279
	.quad	76542506529915151
	.quad	2939720171109091891
	.quad	73493004277727297
	.quad	-71777214294589695
	.quad	71777214294589695
	.quad	-3016007586195858249
	.quad	70139711306880424
	.quad	-8091880299991550523
	.quad	68575256779589411
	.quad	-3063112484564316689
	.quad	68069166323651481
	.quad	-1265300135019788739
	.quad	66594743948409933
	.quad	-4201393668033492183
	.quad	65646776063023315
	.quad	5149444458738708755
	.quad	65182841249857072
	.quad	2707201348701401773
	.quad	62958170900032599
	.quad	-1141655170685607429
	.quad	60087114246610917
	.quad	9134400602415662215
	.quad	59314289626075728
	.quad	6365010734698503433
	.quad	58935284580541698
	.quad	-1396598920407032299
	.quad	58191621683626345
	.quad	3455281367280943203
	.quad	55730344633563600
	.quad	9196002980365592497
	.quad	54738112978366622
	.quad	-8505703319289706797
	.quad	53160645745560667
	.quad	-2695656010771309835
	.quad	52856000211202153
	.quad	8779186981255537313
	.quad	52257065364616293
	.quad	5600822016808749655
	.quad	51383688227603207
	.quad	-8695604154636927601
	.quad	50263607830271257
	.quad	3511310534137743069
	.quad	49455077945602015
	.quad	-1265475846745246285
	.quad	48672147951740241
	.quad	-3612286698507092353
	.quad	48163822646761231
	.quad	-5785354182500167859
	.quad	47420935922132523
	.quad	185861401246443845
	.quad	46465350311610961
	.quad	3220129888178724721
	.quad	46001855545410353
	.quad	2074694932495450793
	.quad	45102063749901104
	.quad	1849076971589024267
	.quad	44025642180691053
	.quad	-3549136033184022995
	.quad	43816494236839790
	.quad	8046375605237577039
	.quad	42799870240625409
	.quad	7540585914657253201
	.quad	42602180308798040
	.quad	-3067454025924367353
	.quad	42019918163347497
	.quad	-2831554395061511309
	.quad	41640505809728107
	.quad	205420312624827969
	.quad	41084062524965593
	.quad	686202733595322489
	.quad	40364866682077793
	.quad	3041111821262312197
	.quad	40014629227135686
	.quad	8127723090792113455
	.quad	39841779856824085
	.quad	-3199542333983883685
	.quad	39500522641776341
	.quad	8010277176057592351
	.quad	38510947961815347
	.quad	2386334448960373207
	.quad	37878324586672590
	.quad	1051952818867347139
	.quad	37569743530976683
	.quad	-5951755101938352325
	.quad	36967422993405915
	.quad	-476754817014362169
	.quad	36673447462643243
	.quad	5436172123882971989
	.quad	36241147492553146
	.quad	1805727346946616377
	.quad	35406418567580713
	.quad	7195288319381928355
	.quad	35271021173440825
	.quad	-4534966657677209547
	.quad	34097493666745936
	.quad	-5227139545566691957
	.quad	33723480939139948
	.quad	5133295029488295333
	.quad	33118032448311582
	.quad	-294885784482035461
	.quad	32765087164670606
	.quad	6386658317259721737
	.quad	32419585366800617
	.quad	1873749835858413299
	.quad	32306031652731263
	.quad	8184343991108570561
	.quad	31970093715267853
	.quad	8107768264083584867
	.quad	31425458387920871
	.quad	-5039414063981361487
	.quad	31107494222107169
	.quad	-1447407297937143449
	.quad	30795899956109435
	.quad	-7519887351179434519
	.quad	30693417759916059
	.quad	7810235958720518559
	.quad	30390023185682951
	.quad	-8335641286162391187
	.quad	30092567820080834
	.quad	5112468778937331161
	.quad	29897478239399597
	.quad	-8046237318096250301
	.quad	29800878955912038
	.quad	-3537331272454604985
	.quad	29234142747558718
	.quad	-28778071877862015
	.quad	28778071877862015
	.quad	-5995909037955359701
	.quad	28688559990217032
	.quad	-1796205373483310281
	.quad	28511196404496988
	.quad	-423738378415992763
	.quad	28249225227732850
	.quad	-4702660097698337893
	.quad	27992024391061535
	.quad	3544230707051608253
	.quad	27907328401981167
	.quad	7016889276180750689
	.quad	27409723735081057
	.quad	7711120491668837677
	.quad	27247775588935822
	.quad	-108033640255985661
	.quad	27008410063996415
	.quad	-1842004835146105733
	.quad	26695722248494285
	.quad	4578792394900801685
	.quad	26314898821268975
	.quad	-650449367902311411
	.quad	26017974716092456
	.quad	7799457855921701935
	.quad	25656111368163493
	.quad	3501582781529460967
	.quad	25373788271952615
	.quad	8027982755134170485
	.quad	25166090141486427
	.quad	-5691282339385355573
	.quad	24961764646426998
	.quad	8416482154761154775
	.quad	24827380987496031
	.quad	73688724661955599
	.quad	24562908220651866
	.quad	-7212993719706773155
	.quad	24368222026036395
	.quad	8193166224591101769
	.quad	24240136759145271
	.quad	8635666926574042369
	.quad	23987963684927895
	.quad	-6490962985833115187
	.quad	23863834506739394
	.quad	1757948926973591323
	.quad	23439319026314550
	.quad	3332912354597459765
	.quad	23145224684704581
	.quad	-6384534413644838631
	.quad	22801908620160137
	.quad	2229076349227541379
	.quad	22745677032934095
	.quad	4044353146489304861
	.quad	22468628591607249
	.quad	5536264624794968711
	.quad	22414026821032261
	.quad	-8944551842270290445
	.quad	22305615566758829
	.quad	-8633699276959355883
	.quad	22251802260204525
	.quad	-505691434678569353
	.quad	21986584116459537
	.quad	-5428057165886397955
	.quad	21625725760503577
	.quad	-6199139198632848151
	.quad	21524788884141833
	.quad	858986918449804499
	.quad	21474672961245112
	.quad	-4809406044709906273
	.quad	21375137976488472
	.quad	4964004106494246501
	.quad	21033915705484095
	.quad	-3999237364447814255
	.quad	20938415520669184
	.quad	-1399696322693703237
	.quad	20890989890950794
	.quad	-2682784651080645049
	.quad	20796780240935232
	.quad	-6467546433781298141
	.quad	20338196332645591
	.quad	-1984391788390270097
	.quad	20248895799900715
	.quad	-2348497341266613209
	.quad	20072626848432591
	.quad	-5182562113281154975
	.quad	19856559821000593
	.quad	-6654215044731940711
	.quad	19687026759561954
	.quad	1725094026021722149
	.quad	19603341204792297
	.quad	-175312245684673669
	.quad	19479138409408185
	.quad	-309703992842972535
	.quad	19356499552685783
	.quad	-8832308692996403721
	.quad	19076260676018150
	.quad	-7618068355877991965
	.quad	18997676697950104
	.quad	-6381780447199414991
	.quad	18881007240234955
	.quad	-9120160345699737625
	.quad	18765762028188760
	.quad	-5286453397511112673
	.quad	18614272526447579
	.quad	-6660810297427721747
	.quad	18502250826188115
	.quad	6965519813759503633
	.quad	18282204235589248
	.quad	7775675932353384541
	.quad	18210013893099261
	.quad	-8073844805568655565
	.quad	18102791043875909
	.quad	7497942008412795221
	.quad	18067330140753723
	.quad	-4902432469637649993
	.quad	17892089305246897
	.quad	-2982193862835910087
	.quad	17857448280454551
	.quad	1881958490676816623
	.quad	17754325383743553
	.quad	8370495880920635433
	.quad	17585075380085368
	.quad	-2755603063341959661
	.quad	17551611868420125
	.quad	-7980259688814970963
	.quad	17386186685871396
	.quad	5917535022704569239
	.quad	17353475139896097
	.quad	-4935237422900778075
	.quad	17256074905247475
	.quad	4836542834413267903
	.quad	16970325734783396
	.quad	-5833296705251874709
	.quad	16908106392034419
	.quad	-6210797638723801459
	.quad	16877167496532069
	.quad	-4439325829953802759
	.quad	16815628143764404
	.quad	-4900177709516680529
	.quad	16724156005176384
	.quad	-3759210244056229635
	.quad	16633673646266502
	.quad	-1403736120201711627
	.quad	16514542590608372
	.quad	-7523249141370413749
	.quad	16426308168931034
	.quad	8610659102608444377
	.quad	16339011579902171
	.quad	2852754513571068799
	.quad	16026710750399262
	.quad	-1551894340979901567
	.quad	15998910731751562
	.quad	-3568802593795914973
	.quad	15861344861315177
	.quad	-7892244902586238565
	.quad	15752983837497482
	.quad	-8528299969725161035
	.quad	15619597014148646
	.quad	6884505159775342347
	.quad	15540643701524474
	.quad	-943211557834268775
	.quad	15462484554660143
	.quad	-8171247166705646511
	.quad	15359487155461741
	.quad	-6006977666212096363
	.quad	15207538395473661
	.quad	6745111842892974913
	.quad	15157554703130280
	.quad	5399782811437464823
	.quad	15083192210719175
	.quad	-6874376554726586363
	.quad	15009555796346258
	.quad	1168843247562424879
	.quad	14985169840543908
	.quad	-5457969548082211715
	.quad	14912485104049758
	.quad	2171073962238033697
	.quad	14769210627469616
	.quad	2754557494723904451
	.quad	14651901567680342
	.quad	8710561218830743637
	.quad	14445375155606540
	.quad	-7644076903100908801
	.quad	14422786609624356
	.quad	-690135397925220949
	.quad	14377820790108769
	.quad	715544766241642809
	.quad	14310895324832856
	.quad	-8273171819270201693
	.quad	14288725076459761
	.quad	-9045589229667906575
	.quad	14222624574949538
	.quad	4069343235322552893
	.quad	14178896290322483
	.quad	-990999297896906073
	.quad	14157132827098658
	.quad	-6901650996208087789
	.quad	14113805718216948
	.quad	7286393982109686423
	.quad	13985401117293064
	.quad	-8071323296445208807
	.quad	13964227156479600
	.quad	-597746793646956081
	.quad	13901088224347815
	.quad	8864195903163884465
	.quad	13553816365694012
	.quad	-6531253936851077529
	.quad	13494326315808011
	.quad	7241656996161287925
	.quad	13435356208091443
	.quad	-8081303522515770259
	.quad	13357526483497140
	.quad	-6935659315776428985
	.quad	13185664098434275
	.quad	-7383934462435902847
	.quad	13092082380205501
	.quad	-6455712261916624529
	.quad	12963277634370731
	.quad	-7536406303414624101
	.quad	12926940486131430
	.quad	4001742941112638909
	.quad	12908848197137544
	.quad	6539390083352723113
	.quad	12872815124710084
	.quad	3589359513994909279
	.quad	12819141121410390
	.quad	-2473164029232655849
	.quad	12748268191920906
	.quad	6496406768894266627
	.quad	12713124792356686
	.quad	-2145560735345433051
	.quad	12695625652931556
	.quad	-5525172830850633349
	.quad	12643416088903051
	.quad	-2834102080665097665
	.quad	12540274693208396
	.quad	7535638193514030201
	.quad	12455600319857901
	.quad	-7600108313578244125
	.quad	12438802477214802
	.quad	7517637463798243631
	.quad	12405342349502052
	.quad	9155234298503263025
	.quad	12388679700275051
	.quad	-1235548832800371843
	.quad	12355488328003718
	.quad	-7026745074108174765
	.quad	12306033404742862
	.quad	5310611298519956951
	.quad	12208301835678061
	.quad	3355054568888736571
	.quad	12112110356999048
	.quad	-5120748681467380429
	.quad	12048820426982071
	.quad	7651274275550300087
	.quad	11955116055547343
	.quad	-2619937828415817531
	.quad	11908808310980988
	.quad	-4418666320296170767
	.quad	11878135269613362
	.quad	-8673164468267544153
	.quad	11832420829832938
	.quad	5579934072072959455
	.quad	11772012810280505
	.quad	4004035473669609867
	.quad	11742039512227594
	.quad	-572444876258244477
	.quad	11682548495066213
	.quad	-7283142796000296753
	.quad	11653028473600474
	.quad	8663154699613126933
	.quad	11550872932817502
	.quad	-4528151418468365887
	.quad	11522013787451312
	.quad	1503748272343466871
	.quad	11478994445369976
	.quad	4574425659049167865
	.quad	11464725962529242
	.quad	2904818967589724805
	.quad	11436295147991042
	.quad	3999263230310100443
	.quad	11393912337065813
	.quad	-8739728222460786947
	.quad	11379854456329149
	.quad	-8401375143588677165
	.quad	11337888182980670
	.quad	-5318792426872882323
	.quad	11268628023035767
	.quad	2237655738573095881
	.quad	11132615614791521
	.quad	5291098570751326591
	.quad	11092449833860223
	.quad	-5698904137948661717
	.quad	11065833277570216
	.quad	-6134177927446855091
	.quad	11052572842246585
	.quad	-3813561976254189643
	.quad	10895891360726256
	.quad	3782832609104846177
	.quad	10870208646853006
	.quad	-3365797918098858741
	.quad	10857412639028576
	.quad	5137887758388383013
	.quad	10793881845353745
	.quad	4062356771607158665
	.quad	10718619450150814
	.quad	2141235527998787187
	.quad	10706177639993935
	.quad	-74510795450644467
	.quad	10644399350092066
	.quad	3401151549489239557
	.quad	10595487693112895
	.quad	8806287668845887835
	.quad	10559097924275644
	.quad	5387754116223211881
	.quad	10522957258248460
	.quad	4184338195230307615
	.quad	10487063145940620
	.quad	7816768873102584337
	.quad	10380835156842741
	.quad	6114428349726497479
	.quad	10345902453005917
	.quad	-1445184202752846797
	.quad	10322744305377477
	.quad	-360892142302869931
	.quad	10311204065796283
	.quad	-2529897715828017351
	.quad	10242500873797641
	.quad	-4695720054102762725
	.quad	10185943718227251
	.quad	-1983303257513478945
	.quad	10118894170987137
	.quad	-7072427274573514601
	.quad	10074682727312698
	.quad	-8139738180873462137
	.quad	9987408810887683
	.quad	-7919907853247679603
	.quad	9912275160510237
	.quad	-5542915600080909725
	.quad	9880419964493600
	.quad	5176130752911552431
	.quad	9859296672212480
	.quad	-7879015087542787663
	.quad	9848768859428484
	.quad	8451891264459357693
	.quad	9827780540069020
	.quad	-4908659945106320281
	.quad	9817319890212640
	.quad	-4550652587797062495
	.quad	9765348900852065
	.quad	-9063260896814687643
	.quad	9703705456975040
	.quad	2843913349591299515
	.quad	9673174658473807
	.quad	-6393199854087523639
	.quad	9642835375697622
	.quad	-7785653247060219869
	.quad	9552948769399042
	.quad	6680145293117788997
	.quad	9543064704453984
	.quad	-4656643450110363979
	.quad	9464722459573910
	.quad	7043989920509285471
	.quad	9455020027529242
	.quad	-1318292404659425635
	.quad	9349591522407274
	.quad	736378363730699635
	.quad	9321245110515185
	.quad	-6582154780201344789
	.quad	9283716192103448
	.quad	-6719687003268005255
	.quad	9255767222132238
	.quad	-4452343837520282363
	.quad	9237227878672784
	.quad	2768395808960913199
	.quad	9227986029869710
	.quad	-2127407828770297765
	.quad	9209557700304319
	.quad	-3403153680430752685
	.quad	9172920971511462
	.quad	493864243916864545
	.quad	9145634146608602
	.quad	-7061999704587376445
	.quad	9100515083231155
	.quad	5309462069515218405
	.quad	9091544639580853
	.quad	-8748406826521400889
	.quad	9046956387302379
	.quad	-6649094308107680563
	.quad	8985262578523892
	.quad	3818109413220542191
	.quad	8941708227682768
	.quad	3798121302755084093
	.quad	8915777705997849
	.quad	-2747953225780855839
	.quad	8864365244454373
	.quad	-5100971957012338805
	.quad	8855854092035310
	.quad	-5453589407512598633
	.quad	8838880725304049
	.quad	7205621428505023513
	.quad	8830418417285568
	.quad	-8533486658204847365
	.quad	8788348772610553
	.quad	6859637185154901951
	.quad	8738391318668664
	.quad	34920480972474305
	.quad	8730120243118576
	.quad	5588609641870672049
	.quad	8664511072667708
	.quad	-2129469283027944485
	.quad	8656379199300587
	.quad	-5118820419143548951
	.quad	8632074905806996
	.quad	-2696791637118678027
	.quad	8615947722423891
	.quad	-7135954660338412641
	.quad	8607906707283971
	.quad	-2973070224606230567
	.quad	8567925719326312
	.quad	6700922766248032401
	.quad	8536207345538894
	.quad	4893170295825663531
	.quad	8465692553331597
	.quad	-8013406299836605037
	.quad	8373465308084226
	.quad	-8082465572848725153
	.quad	8358289113597440
	.quad	8552354007964753709
	.quad	8335627688074808
	.quad	-1387035686766994651
	.quad	8305602914772423
	.quad	-2053303207131729259
	.quad	8246197619002928
	.quad	-3336726819942996161
	.quad	8238831654180237
	.quad	-4342345461845137429
	.quad	8224139132282457
	.quad	6883725020842302691
	.quad	8194910739097979
	.quad	-4581171995367656621
	.quad	8137072815928342
	.quad	4089339915855400821
	.quad	8129900429135985
	.quad	-3424780465950475487
	.quad	8115593521209657
	.quad	-2409964811032637607
	.quad	8087130238364555
	.quad	-3863572545389976049
	.quad	8065913455928968
	.quad	-5373931548730039459
	.quad	8044807707679699
	.quad	4946971854333950281
	.quad	8030798464827841
	.quad	-8676121292355380275
	.quad	7989061963494825
	.quad	191571552474698935
	.quad	7982148019779122
	.quad	-5084121920015105739
	.quad	7906877014020382
	.quad	-8462315686656840053
	.quad	7886594302569282
	.quad	-5539539121665021267
	.quad	7879856503079688
	.quad	-7914729988165964413
	.quad	7859712004137005
	.quad	-1231875295437005361
	.quad	7846339461382199
	.quad	1017427547552923933
	.quad	7826365750407107
	.quad	-147822917503366293
	.quad	7780153552808752
	.quad	-388025748290062087
	.quad	7760514965801241
	.quad	-1169869111772424315
	.quad	7747477561406783
	.quad	-8205433788557333073
	.quad	7740975272223899
	.quad	-4895452382893200387
	.quad	7721533726960883
	.quad	2227793162265800425
	.quad	7708626859051212
	.quad	3252593890445660831
	.quad	7689347258736786
	.quad	-9089478208032744637
	.quad	7651075932687495
	.quad	5975920814941902737
	.quad	7632082777703579
	.quad	2047946411815051335
	.quad	7613183687044800
	.quad	499583548980234061
	.quad	7569447711821728
	.quad	-2856562580853015367
	.quad	7557043864690516
	.quad	5435268687022716271
	.quad	7538514129019023
	.quad	7749282890663670931
	.quad	7501725934814783
	.quad	-3723744851523046901
	.quad	7477399300247082
	.quad	-5922650543681918311
	.quad	7459257611690073
	.quad	-7104640228630969819
	.quad	7447211979697033
	.quad	-1849833305034397705
	.quad	7369853804917919
	.quad	-219516986200430999
	.quad	7317232873347699
	.quad	6646950057377760203
	.quad	7288322431335263
	.quad	3465575786986788547
	.quad	7265358043997460
	.quad	3358569605240866063
	.quad	7253930032917637
	.quad	-7497382055850567075
	.quad	7236855266265026
	.quad	-1677634114112354361
	.quad	7231181526346355
	.quad	-5345732248188806315
	.quad	7214213560308780
	.quad	-5135619327228948453
	.quad	7152673157700485
	.quad	-790269622609710625
	.quad	7119546149637032
	.quad	8330558160552983009
	.quad	7114054791249345
	.quad	-4291749196144767279
	.quad	7070427011770621
	.quad	2283815468048106505
	.quad	7048813172987983
	.quad	-2822260348553044715
	.quad	7038055732052480
	.quad	-6536578891291686919
	.quad	7005979519069332
	.quad	-4843402769636621977
	.quad	6968924848398017
	.quad	5963776123190253985
	.quad	6942696301734870
	.quad	7978095406079723339
	.quad	6937474266156281
	.quad	4419460277516595543
	.quad	6927053726515040
	.quad	3549841427887199375
	.quad	6906306279936185
	.quad	-2590950979348072995
	.quad	6890827072734236
	.quad	3417082297664423091
	.quad	6875417097916344
	.quad	-3597355375743879809
	.quad	6865182014778396
	.quad	8472193726675826049
	.quad	6860075892045203
	.quad	575390457553509965
	.quad	6849886399446547
	.quad	-5741113383444247261
	.quad	6834658789814580
	.quad	-1751316301050371173
	.quad	6814460315371094
	.quad	-8056416445323537113
	.quad	6804405781523257
	.quad	8540033378761222569
	.quad	6799389632771674
	.quad	7639218031260373343
	.quad	6784385462931059
	.quad	2142769465506019737
	.quad	6759525127779242
	.quad	13509149815971843
	.quad	6754574907985921
	.quad	5155128041029374877
	.quad	6729932168445659
	.quad	7414933503619154069
	.quad	6710347062098781
	.quad	8831387101034939713
	.quad	6700597193501471
	.quad	-2346676513894384593
	.quad	6666694641745410
	.quad	-6934966083166284439
	.quad	6642687819124793
	.quad	-3604688246744964371
	.quad	6614106874761402
	.quad	-7514850595416610601
	.quad	6609367278290774
	.quad	5111271597112943333
	.quad	6595189157565088
	.quad	3839504389493990929
	.quad	6585770822459675
	.quad	-4429061277776142789
	.quad	6581071735180004
	.quad	-9128488110260668501
	.quad	6543719075455676
	.quad	8647114765226362353
	.quad	6511381600321055
	.quad	-5845478647255864259
	.quad	6502200942442563
	.quad	-7623962112771270893
	.quad	6488478393847890
	.quad	1067594799074737291
	.quad	6470271509543862
	.quad	-632754959476211431
	.quad	6456683259961341
	.quad	1972982763563482277
	.quad	6447656090076739
	.quad	-6317641422951586625
	.quad	6407344242344408
	.quad	9181839706934750839
	.quad	6389589218465379
	.quad	7144372402727689649
	.quad	6367533335764429
	.quad	2923011461903683687
	.quad	6354372743268877
	.quad	-1553610277778906891
	.quad	6341266439913905
	.quad	9106380344923467373
	.quad	6323875239530185
	.quad	5123745449923425167
	.quad	6302269926105074
	.quad	-6100794569460933709
	.quad	6276537622902195
	.quad	-5959429003155744071
	.quad	6246780925739773
	.quad	386776507463642949
	.quad	6238330765542628
	.quad	273930725360519835
	.quad	6225698303648178
	.quad	-3274312605875693399
	.quad	6213116899194864
	.quad	-5296221034962722157
	.quad	6208934390343167
	.quad	8051613201895899655
	.quad	6150965012907486
	.quad	-5685850805791847799
	.quad	6146865735991186
	.quad	3394053874737659115
	.quad	6126451037432597
	.quad	6091886002480431587
	.quad	6110216652437744
	.quad	-3508725716964271313
	.quad	6102131681676993
	.quad	-2599672855959067531
	.quad	6074001999904363
	.quad	-2019982169202657247
	.quad	6066012520128099
	.quad	3817610859465636953
	.quad	6050096449232388
	.quad	-1151038261378152355
	.quad	6026378331822787
	.quad	4559058365788014387
	.quad	6014588873071259
	.quad	-1228185298834185801
	.quad	5991147799191150
	.quad	1352242672934920099
	.quad	5983374659004071
	.quad	-4866978446122785551
	.quad	5971752694629184
	.quad	5684136642847780781
	.quad	5933336787941316
	.quad	3761503440487103183
	.quad	5914313585671545
	.quad	4604297863960186065
	.quad	5910523573761471
	.quad	-5627521223634058303
	.quad	5880377454163070
	.quad	-1172240138733993005
	.quad	5832040491213895
	.quad	-3861759179308314721
	.quad	5824674478594743
	.quad	-8335669773919873119
	.quad	5820998445474771
	.quad	3635997653007195493
	.quad	5799039318990742
	.quad	-7032567947774428997
	.quad	5788121767715579
	.quad	-6665338739262649017
	.quad	5780866209247744
	.quad	8730959730172863019
	.quad	5759208265285529
	.quad	1965966492118624697
	.quad	5748440035434575
	.quad	-1123892396160109455
	.quad	5734144878367905
	.quad	-7783025518836162883
	.quad	5727023928503431
	.quad	5541449907555981749
	.quad	5712834956243280
	.quad	-2967593709797014917
	.quad	5674175353340372
	.quad	-8834929992880258659
	.quad	5670686773350615
	.quad	-8167087796834256503
	.quad	5663722466597958
	.quad	3792365305119791219
	.quad	5660246724059389
	.quad	2227595203031266551
	.quad	5639481526661434
	.quad	7162861218072729803
	.quad	5591616875934995
	.quad	-4392348028456742675
	.quad	5588229043838095
	.quad	9131333549640924099
	.quad	5578090134172830
	.quad	-6520113887809805295
	.quad	5567987948599321
	.quad	-1039331467846847289
	.quad	5557922287951055
	.quad	-9165084100419641805
	.quad	5551232041441333
	.quad	4327698144057422593
	.quad	5541226816974932
	.quad	1030049353860695467
	.quad	5537899751939222
	.quad	7432774234904805871
	.quad	5518020961325022
	.quad	-2303776224323451621
	.quad	5511426373979549
	.quad	-2965537898125381921
	.quad	5491736848380336
	.quad	-307354260079659295
	.quad	5488468929993915
	.quad	2670427501622741379
	.quad	5472187503325289
	.quad	306260796954561189
	.quad	5468942802760021
	.quad	6221489665461793301
	.quad	5443123066895707
	.quad	-8676660807303667009
	.quad	5439912731851828
	.quad	3021216082515388847
	.quad	5414365739274890
	.quad	-5761567296388626435
	.quad	5404847369970568
	.quad	445988860506231513
	.quad	5373359765135319
	.quad	8824913807370472649
	.quad	5348432610527559
	.quad	1371366279127380609
	.quad	5336055560806928
	.quad	4130663581948830541
	.quad	5329888492837200
	.quad	3861937468506908727
	.quad	5326810301388839
	.quad	-7624512332744674781
	.quad	5320664572745760
	.quad	-4791154917962613435
	.quad	5317597023265941
	.quad	1976248147684724235
	.quad	5284085956376268
	.quad	-4460115886355610365
	.quad	5272004593800957
	.quad	2553437089097932807
	.quad	5253985780036898
	.quad	-4311408481259383403
	.quad	5245022483283921
	.quad	8849416210013201399
	.quad	5230151424357684
	.quad	-501809983302951815
	.quad	5227187326072414
	.quad	-5310030773552961787
	.quad	5221269197200552
	.quad	-7490243355162652069
	.quad	5212417087795860
	.quad	-2167140789229927555
	.quad	5209473051033479
	.quad	-7993415743245441453
	.quad	5200660860927417
	.quad	-8551779864365209619
	.quad	5186039942004372
	.quad	-4307177388382308905
	.quad	5183125617788578
	.quad	-1704683714456497349
	.quad	5165708225625749
	.quad	-5326426521143724203
	.quad	5151282902460081
	.quad	-7815282585512447489
	.quad	5148407500337580
	.quad	-1529955394924978119
	.quad	5134078506459658
	.quad	1493332206687881639
	.quad	5114151392766717
	.quad	8536660971835696181
	.quad	5105658475978287
	.quad	-1178102814771055135
	.quad	5100012185156082
	.quad	-5570173341605920361
	.quad	5091566125782376
	.quad	2667182770227902671
	.quad	5080348133767433
	.quad	-3266346764770126819
	.quad	5071967026040569
	.quad	4501552424245893875
	.quad	5063613525585932
	.quad	720930418841340771
	.quad	5041471460428956
	.quad	-4708417106256020121
	.quad	5024991575513361
	.quad	8708590858647525865
	.quad	5022255397143901
	.quad	-7620507002438076939
	.quad	5016791970005317
	.quad	-7051843914387476925
	.quad	4997763227772839
	.quad	419130782307709585
	.quad	4989652170329876
	.quad	3982423268007006685
	.quad	4984259409270346
	.quad	-8280892122600809771
	.quad	4973508782342828
	.quad	3625859079828363063
	.quad	4960135540120879
	.quad	-6454133155920916369
	.quad	4949488616503770
	.quad	1319389410040302781
	.quad	4941533370937463
	.quad	-1430745060544469101
	.quad	4933603657049893
	.quad	-5444266397718054319
	.quad	4904744502448697
	.quad	783509172230827783
	.quad	4896932326442673
	.quad	-8521035137258776695
	.quad	4894333795094070
	.quad	-8142145836186168853
	.quad	4881382395795065
	.quad	-8992362191481402831
	.quad	4863365165755220
	.quad	-7923792358235522435
	.quad	4858241789230853
	.quad	6330002896710745427
	.quad	4850576932345398
	.quad	-1578666661110448411
	.quad	4827726792386692
	.quad	-3826384527975849969
	.quad	4825201170209142
	.quad	3157073861819323209
	.quad	4812612594236773
	.quad	-2450295352655466825
	.quad	4795098537486236
	.quad	-2596243907543645021
	.quad	4790117910597131
	.quad	-2724162309353941051
	.quad	4787631475138736
	.quad	-2067678018098947929
	.quad	4775237917087639
	.quad	7550937024755496109
	.quad	4757994344521421
	.quad	4515435936620477721
	.quad	4753090459600502
	.quad	6147333586918894033
	.quad	4743312952869517
	.quad	8753586770580370795
	.quad	4721459962556834
	.quad	-8390886654852797833
	.quad	4716631059501291
	.quad	-329658433791082107
	.quad	4709406197015458
	.quad	5671938404904314799
	.quad	4707002825646734
	.quad	-3319755624786883365
	.quad	4702203434542327
	.quad	-7793737633585608471
	.quad	4695022670834703
	.quad	4368842211300837587
	.quad	4692633954136238
	.quad	-9038577111439729577
	.quad	4678352542153069
	.quad	-2892965437452802749
	.quad	4673611369067532
	.quad	9128046033953075327
	.quad	4650048922034169
	.quad	3838254595432170429
	.quad	4624403127026711
	.quad	-8511044628859743135
	.quad	4610533385081117
	.quad	-1608272216268956661
	.quad	4608229846042855
	.quad	-7766323247404046313
	.quad	4603629666510993
	.quad	-4012959774818948059
	.quad	4596746592003376
	.quad	8147044222651021179
	.quad	4589884069099166
	.quad	-4601363915924068707
	.quad	4587601112586309
	.quad	1575783452037766515
	.quad	4580765848946995
	.quad	715272615355001137
	.quad	4555876530923574
	.quad	-9120915423263448997
	.quad	4553627270725636
	.quad	2259805719653351529
	.quad	4546892796083202
	.quad	-982799770192725927
	.quad	4529031199044819
	.quad	-7584013192353743089
	.quad	4522369226209745
	.quad	1848732600885093171
	.quad	4509103904597788
	.quad	7918624318961075541
	.quad	4506900579943696
	.quad	5944900932268923563
	.quad	4500303506638095
	.quad	-6250623812862419217
	.quad	4487167130554500
	.quad	250307164557241311
	.quad	4469770795665023
	.quad	-3256884579737046047
	.quad	4467605733521325
	.quad	-4423112358346519635
	.quad	4463281895405166
	.quad	-4514750361601298813
	.quad	4456811808096050
	.quad	1159306574341004809
	.quad	4441787641153275
	.quad	4406451013998937877
	.quad	4437513609263784
	.quad	7069995204013711295
	.quad	4435379676294674
	.quad	-5264189355006412623
	.quad	4416266237421487
	.quad	-8241975393085653031
	.quad	4391036437445739
	.quad	6965168149417759931
	.quad	4380608899004880
	.quad	-5673565820156814903
	.quad	4374376114230389
	.quad	7913867450441879219
	.quad	4372302458807668
	.quad	-3668411389451343795
	.quad	4361963602201360
	.quad	248514396644160823
	.quad	4359901695511593
	.quad	-4897673621079216015
	.quad	4349621333107651
	.quad	-6112684932273304165
	.quad	4347571075585564
	.quad	-876144439898737227
	.quad	4337348712369986
	.quad	-2611736716705062133
	.quad	4331238336160965
	.quad	-3368121776424790227
	.quad	4329205368155257
	.quad	-3044943706852080049
	.quad	4319069087733446
	.quad	-4140048576336873391
	.quad	4317047524855968
	.quad	-7050506665576123277
	.quad	4306968030284742
	.quad	6829897316169449281
	.quad	4300942894313255
	.quad	-7619960607594706567
	.quad	4292935553574482
	.quad	3465958616114135767
	.quad	4263171729537682
	.quad	4249088616471257105
	.quad	4253341958429686
	.quad	3804986389944698939
	.quad	4251381441278993
	.quad	8788607431760448597
	.quad	4241605903359289
	.quad	1752800561513829325
	.quad	4233817781434370
	.quad	4879106729557832355
	.quad	4227995432892402
	.quad	-4403933412520643011
	.quad	4218327023487205
	.quad	-483119008990343529
	.quad	4201034860785595
	.quad	-2840219635638245723
	.quad	4195302268298738
	.quad	3782231037113502985
	.quad	4183883890612282
	.quad	1969432979595319693
	.quad	4172527499142626
	.quad	1259533508989438071
	.quad	4170640758243172
	.quad	1013511721230608105
	.quad	4153736562420525
	.quad	-7864858728075851105
	.quad	4148132240546334
	.quad	-3518599352635230133
	.quad	4144404420065053
	.quad	-3286227236824183079
	.quad	4138825235294940
	.quad	8303721452852899215
	.quad	4133261051693827
	.quad	-3894358378426519935
	.quad	4116657905313446
	.quad	8295479824358343979
	.quad	4114821341447591
	.quad	-2668680981061920443
	.quad	4105663047787569
	.quad	8402743639522012307
	.quad	4092909712382860
	.quad	662169851526910561
	.quad	4087468219301917
	.quad	3695882972483317293
	.quad	4083848588379356
	.quad	2249204687898641943
	.quad	4082041175859604
	.quad	3597176270840553731
	.quad	4078431146077725
	.quad	4819602366300186347
	.quad	4056904348737530
	.quad	1184095245003998477
	.quad	4055120702068487
	.quad	-5642010081741904079
	.quad	4044451671499572
	.quad	8667990536934683111
	.quad	4039138181237037
	.quad	4512066355362951639
	.quad	4025036891492374
	.quad	-9024479893171782385
	.quad	4018023104706937
	.quad	-4450171672339328419
	.quad	4012778784796508
	.quad	5570491910157783347
	.quad	4007548136804160
	.quad	-3963994127936287547
	.quad	3991937691778738
	.quad	-1579330903011147723
	.quad	3978163483655283
	.quad	-5340370185598604833
	.quad	3976448388383175
	.quad	1326989558608440715
	.quad	3973022630564193
	.quad	5773287293449644569
	.quad	3967895047044429
	.quad	-2435239918567547773
	.quad	3966188792455289
	.quad	2150865800305837777
	.quad	3961078821926036
	.quad	636913102266188679
	.quad	3955982001653345
	.quad	5542313006524333505
	.quad	3947516386413342
	.quad	-4533822544297068681
	.quad	3942454386345277
	.quad	2355489170784911835
	.quad	3932369233363792
	.quad	-121592401931744865
	.quad	3922335546185318
	.quad	2961794536723541649
	.quad	3907380655308102
	.quad	-4538453655229832517
	.quad	3905726037202953
	.quad	3237639581556127689
	.quad	3900770580188105
	.quad	-202668643953707307
	.quad	3897473922186678
	.quad	1615206384900689007
	.quad	3882707656011271
	.quad	-1310149085293933273
	.quad	3876180725721696
	.quad	3089241480878392399
	.quad	3856730937426207
	.quad	-7329372723667342213
	.quad	3853508266912377
	.quad	7965727029532543901
	.quad	3851898950450939
	.quad	-1574111897798290551
	.quad	3848684346695086
	.quad	7976035414241991999
	.quad	3843872488791321
	.quad	-2555110353888117439
	.quad	3842271208854311
	.quad	-4886681631826236923
	.quad	3832691475942146
	.quad	4702636853335131697
	.quad	3829508838220791
	.quad	8923626764698659103
	.quad	3818411110269002
	.quad	4770120818895886933
	.quad	3794845520203569
	.quad	-6600836567537620297
	.quad	3787054829338852
	.quad	9005884281218462661
	.quad	3782395750196750
	.quad	-3614641199143741143
	.quad	3773111898897433
	.quad	-1256620950564754281
	.quad	3762338175343575
	.quad	5264593287281947813
	.quad	3757739676860776
	.quad	7211443149775049351
	.quad	3750100441900701
	.quad	-5241104937592188565
	.quad	3740974259523332
	.quad	8869993298771347341
	.quad	3739457545856385
	.quad	-2880785837721301255
	.quad	3736427805085993
	.quad	8564693030379004847
	.quad	3731892387964707
	.quad	3968043312159295591
	.quad	3725862264938305
	.quad	-8808441239150798603
	.quad	3721352445775580
	.quad	-1905210330141534121
	.quad	3713860292673555
	.quad	-8089244382494085927
	.quad	3712365480722389
	.quad	5515847262740016741
	.quad	3709379463846682
	.quad	7294361201795716019
	.quad	3698966126671255
	.quad	964270018673781889
	.quad	3694521144343991
	.quad	-5321105211900214729
	.quad	3690086832108331
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.local	dev_debug
	.comm	dev_debug,1,1
	.data
	.type	flag_prove_primality, @object
	.size	flag_prove_primality, 1
flag_prove_primality:
	.byte	1
	.text
	.type	factor_insert_refind, @function
factor_insert_refind:
.LFB56:
	.loc 2 708 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
.LBB10:
	.loc 2 709 21
	movl	$0, -4(%rbp)
	.loc 2 709 3
	jmp	.L82
.L83:
	.loc 2 710 24 discriminator 3
	movl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	.loc 2 710 21 discriminator 3
	movl	%eax, %edx
	leaq	primes_diff(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	.loc 2 710 7 discriminator 3
	addq	%rax, -32(%rbp)
	.loc 2 709 38 discriminator 3
	addl	$1, -4(%rbp)
.L82:
	.loc 2 709 3 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jb	.L83
.LBE10:
	.loc 2 711 3
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_insert_multiplicity
	.loc 2 712 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	factor_insert_refind, .-factor_insert_refind
	.type	factor_using_division, @function
factor_using_division:
.LFB57:
	.loc 2 750 1
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
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	.loc 2 751 10
	movq	-88(%rbp), %rax
	andl	$1, %eax
	.loc 2 751 6
	testq	%rax, %rax
	jne	.L85
.LBB11:
	.loc 2 755 10
	cmpq	$0, -88(%rbp)
	jne	.L86
	.loc 2 757 11
#APP
# 757 "src/factor.c" 1
	bsf	-80(%rbp), %rax
# 0 "" 2
#NO_APP
	movl	%eax, -64(%rbp)
	.loc 2 758 14
	movl	-64(%rbp), %eax
	movq	-80(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
	.loc 2 759 14
	movq	$0, -80(%rbp)
	.loc 2 760 15
	addl	$64, -64(%rbp)
	jmp	.L87
.L86:
	.loc 2 764 11
#APP
# 764 "src/factor.c" 1
	bsf	-88(%rbp), %rax
# 0 "" 2
#NO_APP
	movl	%eax, -64(%rbp)
	.loc 2 765 11
	movl	$64, %eax
	subl	-64(%rbp), %eax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movl	-64(%rbp), %eax
	movq	-88(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rsi, %rax
	movq	%rax, -88(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, -80(%rbp)
.L87:
	.loc 2 768 7
	movl	-64(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	factor_insert_multiplicity
.L85:
.LBE11:
	.loc 2 771 13
	movq	$3, -56(%rbp)
	.loc 2 773 10
	movl	$0, -60(%rbp)
	.loc 2 773 3
	jmp	.L88
.L92:
.LBB12:
	.loc 2 779 35
	movl	-60(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	primes_dtab(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 779 14
	movq	-88(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 780 11
	movq	-48(%rbp), %rax
#APP
# 780 "src/factor.c" 1
	mulq	-56(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	.loc 2 781 14
	movq	-32(%rbp), %rax
	cmpq	-80(%rbp), %rax
	ja	.L118
	.loc 2 783 14
	movq	-80(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 784 35
	movl	-60(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	primes_dtab(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 784 14
	movq	-32(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 2 785 15
	movl	-60(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+primes_dtab(%rip), %rax
	movq	(%rdx,%rax), %rax
	cmpq	%rax, -24(%rbp)
	seta	%al
	movzbl	%al, %eax
	.loc 2 785 14
	testq	%rax, %rax
	jne	.L119
	.loc 2 787 14
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 2 787 23
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 2 788 11
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_insert_multiplicity
.LBE12:
	.loc 2 776 9
	jmp	.L92
.L118:
.LBB13:
	.loc 2 782 13
	nop
	jmp	.L90
.L119:
	.loc 2 786 13
	nop
.L90:
.LBE13:
	.loc 2 790 26 discriminator 2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	.loc 2 790 23 discriminator 2
	movl	%eax, %edx
	leaq	primes_diff(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	.loc 2 790 9 discriminator 2
	addq	%rax, -56(%rbp)
	.loc 2 773 51 discriminator 2
	addl	$1, -60(%rbp)
.L88:
	.loc 2 773 3 discriminator 1
	cmpq	$0, -80(%rbp)
	je	.L93
	.loc 2 773 22 discriminator 3
	cmpl	$667, -60(%rbp)
	jbe	.L92
.L93:
	.loc 2 792 6
	cmpq	$0, -72(%rbp)
	je	.L95
	.loc 2 793 10
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 807 3
	jmp	.L95
.L115:
.LBB14:
	.loc 2 810 33
	movl	-60(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	primes_dtab(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
.L98:
	.loc 2 811 7 discriminator 2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L96
	.loc 2 811 7 is_stmt 0
	jmp	.L97
.L96:
	.loc 2 811 7 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	factor_insert_refind
	jmp	.L98
.L97:
	.loc 2 812 7 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L99
	.loc 2 812 7 is_stmt 0
	jmp	.L100
.L99:
	.loc 2 812 7 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	factor_insert_refind
	jmp	.L97
.L100:
	.loc 2 813 7 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L101
	.loc 2 813 7 is_stmt 0
	jmp	.L102
.L101:
	.loc 2 813 7 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	factor_insert_refind
	jmp	.L100
.L102:
	.loc 2 814 7 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L103
	.loc 2 814 7 is_stmt 0
	jmp	.L104
.L103:
	.loc 2 814 7 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	factor_insert_refind
	jmp	.L102
.L104:
	.loc 2 815 7 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L105
	.loc 2 815 7 is_stmt 0
	jmp	.L106
.L105:
	.loc 2 815 7 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	factor_insert_refind
	jmp	.L104
.L106:
	.loc 2 816 7 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L107
	.loc 2 816 7 is_stmt 0
	jmp	.L108
.L107:
	.loc 2 816 7 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$5, %ecx
	movq	%rax, %rdi
	call	factor_insert_refind
	jmp	.L106
.L108:
	.loc 2 817 7 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L109
	.loc 2 817 7 is_stmt 0
	jmp	.L110
.L109:
	.loc 2 817 7 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$6, %ecx
	movq	%rax, %rdi
	call	factor_insert_refind
	jmp	.L108
.L110:
	.loc 2 818 7 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$112, %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L120
	.loc 2 818 7 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	$7, %ecx
	movq	%rax, %rdi
	call	factor_insert_refind
	jmp	.L110
.L120:
	.loc 2 818 7
	nop
	.loc 2 820 24 is_stmt 1
	movl	-60(%rbp), %eax
	leaq	primes_diff8(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	.loc 2 820 9
	addq	%rax, -56(%rbp)
	.loc 2 821 13
	movq	-56(%rbp), %rax
	imulq	%rax, %rax
	.loc 2 821 10
	cmpq	%rax, -88(%rbp)
	jb	.L121
.LBE14:
	.loc 2 807 37
	addl	$8, -60(%rbp)
.L95:
	.loc 2 807 3 discriminator 1
	cmpl	$667, -60(%rbp)
	jbe	.L115
	jmp	.L114
.L121:
.LBB15:
	.loc 2 822 9
	nop
.L114:
.LBE15:
	.loc 2 825 10
	movq	-88(%rbp), %rax
	.loc 2 826 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	factor_using_division, .-factor_using_division
	.section	.rodata
.LC25:
	.string	"[trial division] "
	.text
	.type	mp_factor_using_division, @function
mp_factor_using_division:
.LFB58:
	.loc 2 830 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 830 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 834 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L123
	.loc 2 834 3 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	movl	$1, %esi
	leaq	.LC25(%rip), %rdi
	call	fwrite@PLT
.L123:
	.loc 2 836 3 is_stmt 1
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	mpz_init@PLT
	.loc 2 838 7
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mpz_scan1@PLT
	movq	%rax, -40(%rbp)
	.loc 2 839 3
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_fdiv_q_2exp@PLT
	.loc 2 840 9
	jmp	.L124
.L125:
	.loc 2 842 7
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	mp_factor_insert_ui
	.loc 2 843 7
	subq	$1, -40(%rbp)
.L124:
	.loc 2 840 9
	cmpq	$0, -40(%rbp)
	jne	.L125
	.loc 2 846 5
	movq	$3, -40(%rbp)
.LBB16:
	.loc 2 847 21
	movl	$1, -44(%rbp)
	.loc 2 847 3
	jmp	.L126
.L129:
	.loc 2 849 13
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mpz_divisible_ui_p@PLT
	.loc 2 849 10
	testl	%eax, %eax
	jne	.L127
	.loc 2 851 29
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -44(%rbp)
	.loc 2 851 27
	movl	%eax, %edx
	leaq	primes_diff(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	.loc 2 851 13
	addq	%rax, -40(%rbp)
	.loc 2 852 15
	movq	-40(%rbp), %rax
	imulq	%rax, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mpz_cmp_ui@PLT
	.loc 2 852 14
	testl	%eax, %eax
	jns	.L126
	.loc 2 853 13
	jmp	.L128
.L127:
	.loc 2 857 11
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_tdiv_q_ui@PLT
	.loc 2 858 11
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mp_factor_insert_ui
.L126:
	.loc 2 847 3 discriminator 1
	cmpl	$668, -44(%rbp)
	jbe	.L129
.L128:
.LBE16:
	.loc 2 862 3
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	mpz_clear@PLT
	.loc 2 863 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L130
	call	__stack_chk_fail@PLT
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	mp_factor_using_division, .-mp_factor_using_division
	.section	.rodata
	.align 32
	.type	binvert_table, @object
	.size	binvert_table, 128
binvert_table:
	.ascii	"\001\253\315\2679\243\305\357\361\033=\247)\0235\337\341\213"
	.ascii	"\255\227\031\203\245\317\321\373\035\207\t\363\025\277\301k\215"
	.ascii	"w\371c\205\257\261\333\375g\351\323\365\237\241KmW\331Ce\217"
	.ascii	"\221\273\335G\311\263\325\177\201+M7\271#Eoq\233\275'\251\223"
	.ascii	"\265_a\013-\027\231\003%OQ{\235\007\211s\225?A\353\r\367y\343"
	.ascii	"\005/1[}\347iSu\037!\313\355\327Y\303\345\017\021;]\307I3U\377"
	.text
	.type	mulredc, @function
mulredc:
.LFB59:
	.loc 2 964 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 2 967 3
	movq	-56(%rbp), %rax
#APP
# 967 "src/factor.c" 1
	mulq	-64(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	.loc 2 968 5
	movq	-40(%rbp), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 969 3
	movq	-24(%rbp), %rax
#APP
# 969 "src/factor.c" 1
	mulq	-72(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 2 970 6
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 971 6
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L132
	.loc 2 972 8
	movq	-72(%rbp), %rax
	addq	%rax, -48(%rbp)
.L132:
	.loc 2 974 10
	movq	-48(%rbp), %rax
	.loc 2 975 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	mulredc, .-mulredc
	.section	.rodata
	.align 8
.LC26:
	.string	"(a1 >> (W_TYPE_SIZE - 1)) == 0"
	.align 8
.LC27:
	.string	"(b1 >> (W_TYPE_SIZE - 1)) == 0"
	.align 8
.LC28:
	.string	"(m1 >> (W_TYPE_SIZE - 1)) == 0"
	.text
	.type	mulredc2, @function
mulredc2:
.LFB60:
	.loc 2 984 1
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
	movq	%r9, -128(%rbp)
	.loc 2 986 6
	negq	24(%rbp)
	.loc 2 987 3
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jns	.L135
	.loc 2 987 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7159(%rip), %rcx
	movl	$987, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC26(%rip), %rdi
	call	__assert_fail@PLT
.L135:
	.loc 2 988 3 is_stmt 1
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jns	.L136
	.loc 2 988 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7159(%rip), %rcx
	movl	$988, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC27(%rip), %rdi
	call	__assert_fail@PLT
.L136:
	.loc 2 989 3 is_stmt 1
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	jns	.L137
	.loc 2 989 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7159(%rip), %rcx
	movl	$989, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC28(%rip), %rdi
	call	__assert_fail@PLT
.L137:
	.loc 2 1004 3 is_stmt 1
	movq	-104(%rbp), %rax
#APP
# 1004 "src/factor.c" 1
	mulq	-120(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	.loc 2 1005 3
	movq	-104(%rbp), %rax
#APP
# 1005 "src/factor.c" 1
	mulq	-112(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 1006 5
	movq	24(%rbp), %rax
	imulq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1007 3
	movq	-40(%rbp), %rax
#APP
# 1007 "src/factor.c" 1
	mulq	16(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 1008 3
	movq	-40(%rbp), %rax
#APP
# 1008 "src/factor.c" 1
	mulq	-128(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 2 1009 13
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 2 1009 6
	addq	%rax, -64(%rbp)
	.loc 2 1010 3
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
#APP
# 1010 "src/factor.c" 1
	addq -24(%rbp),%rax
	adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -72(%rbp)
	movq	%rax, -64(%rbp)
	.loc 2 1011 3
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
#APP
# 1011 "src/factor.c" 1
	addq -48(%rbp),%rax
	adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -72(%rbp)
	movq	%rax, -64(%rbp)
	.loc 2 1012 3
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
#APP
# 1012 "src/factor.c" 1
	addq -16(%rbp),%rax
	adcq -8(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -72(%rbp)
	movq	%rax, -64(%rbp)
	.loc 2 1029 3
	movq	-96(%rbp), %rax
#APP
# 1029 "src/factor.c" 1
	mulq	-120(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	.loc 2 1030 3
	movq	-96(%rbp), %rax
#APP
# 1030 "src/factor.c" 1
	mulq	-112(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 2 1031 3
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
#APP
# 1031 "src/factor.c" 1
	addq -64(%rbp),%rax
	adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -48(%rbp)
	movq	%rax, -56(%rbp)
	.loc 2 1032 5
	movq	24(%rbp), %rax
	imulq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1033 3
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 1033 "src/factor.c" 1
	addq -72(%rbp),%rax
	adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -72(%rbp)
	movq	%rax, -64(%rbp)
	.loc 2 1034 3
	movq	-40(%rbp), %rax
#APP
# 1034 "src/factor.c" 1
	mulq	16(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 1035 3
	movq	-40(%rbp), %rax
#APP
# 1035 "src/factor.c" 1
	mulq	-128(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 2 1036 13
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 2 1036 6
	addq	%rax, -64(%rbp)
	.loc 2 1037 3
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
#APP
# 1037 "src/factor.c" 1
	addq -24(%rbp),%rax
	adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -72(%rbp)
	movq	%rax, -64(%rbp)
	.loc 2 1038 3
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
#APP
# 1038 "src/factor.c" 1
	addq -48(%rbp),%rax
	adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -72(%rbp)
	movq	%rax, -64(%rbp)
	.loc 2 1039 3
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
#APP
# 1039 "src/factor.c" 1
	addq -16(%rbp),%rax
	adcq -8(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -72(%rbp)
	movq	%rax, -64(%rbp)
	.loc 2 1041 6
	movq	-72(%rbp), %rax
	cmpq	-128(%rbp), %rax
	ja	.L138
	.loc 2 1041 7 discriminator 1
	movq	-72(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jne	.L139
	.loc 2 1041 7 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax
	cmpq	16(%rbp), %rax
	jb	.L139
.L138:
	.loc 2 1042 5 is_stmt 1
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
#APP
# 1042 "src/factor.c" 1
	subq 16(%rbp),%rax
	sbbq -128(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -72(%rbp)
	movq	%rax, -64(%rbp)
.L139:
	.loc 2 1044 8
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 1045 10
	movq	-64(%rbp), %rax
	.loc 2 1046 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	mulredc2, .-mulredc2
	.type	powm, @function
powm:
.LFB61:
	.loc 2 1050 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	.loc 2 1051 13
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1053 9
	movq	-32(%rbp), %rax
	andl	$1, %eax
	.loc 2 1053 6
	testq	%rax, %rax
	je	.L143
	.loc 2 1054 7
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1056 9
	jmp	.L143
.L144:
	.loc 2 1058 11
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mulredc
	movq	%rax, -24(%rbp)
	.loc 2 1059 9
	shrq	-32(%rbp)
	.loc 2 1061 13
	movq	-32(%rbp), %rax
	andl	$1, %eax
	.loc 2 1061 10
	testq	%rax, %rax
	je	.L143
	.loc 2 1062 13
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mulredc
	movq	%rax, -8(%rbp)
.L143:
	.loc 2 1056 9
	cmpq	$0, -32(%rbp)
	jne	.L144
	.loc 2 1065 10
	movq	-8(%rbp), %rax
	.loc 2 1066 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	powm, .-powm
	.type	powm2, @function
powm2:
.LFB62:
	.loc 2 1072 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	.loc 2 1077 6
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1078 6
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1079 6
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1080 6
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1082 6
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 2 1083 6
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 2 1085 10
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1085 21
	movl	$64, -60(%rbp)
	.loc 2 1085 3
	jmp	.L147
.L149:
	.loc 2 1087 13
	movq	-24(%rbp), %rax
	andl	$1, %eax
	.loc 2 1087 10
	testq	%rax, %rax
	je	.L148
	.loc 2 1089 16
	movq	-8(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	-104(%rbp)
	pushq	-16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mulredc2
	addq	$16, %rsp
	movq	%rax, -48(%rbp)
	.loc 2 1090 14
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.L148:
	.loc 2 1092 12 discriminator 2
	movq	-8(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	-104(%rbp)
	pushq	-16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mulredc2
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	.loc 2 1093 10 discriminator 2
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1085 44 discriminator 2
	subl	$1, -60(%rbp)
	.loc 2 1085 50 discriminator 2
	shrq	-24(%rbp)
.L147:
	.loc 2 1085 3 discriminator 1
	cmpl	$0, -60(%rbp)
	jne	.L149
	.loc 2 1095 10
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1095 3
	jmp	.L150
.L152:
	.loc 2 1097 13
	movq	-24(%rbp), %rax
	andl	$1, %eax
	.loc 2 1097 10
	testq	%rax, %rax
	je	.L151
	.loc 2 1099 16
	movq	-8(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	-104(%rbp)
	pushq	-16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mulredc2
	addq	$16, %rsp
	movq	%rax, -48(%rbp)
	.loc 2 1100 14
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.L151:
	.loc 2 1102 12 discriminator 2
	movq	-8(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	-104(%rbp)
	pushq	-16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mulredc2
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	.loc 2 1103 10 discriminator 2
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1095 28 discriminator 2
	shrq	-24(%rbp)
.L150:
	.loc 2 1095 3 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L152
	.loc 2 1105 8
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 1106 10
	movq	-48(%rbp), %rax
	.loc 2 1107 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	powm2, .-powm2
	.type	millerrabin, @function
millerrabin:
.LFB63:
	.loc 2 1112 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	%r9, -80(%rbp)
	.loc 2 1113 17
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	powm
	movq	%rax, -16(%rbp)
	.loc 2 1115 13
	movq	-40(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1117 6
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L155
	.loc 2 1117 16 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L156
.L155:
	.loc 2 1118 12
	movl	$1, %eax
	jmp	.L157
.L156:
.LBB17:
	.loc 2 1120 21
	movl	$1, -20(%rbp)
	.loc 2 1120 3
	jmp	.L158
.L161:
	.loc 2 1122 11
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	mulredc
	movq	%rax, -16(%rbp)
	.loc 2 1124 10
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L159
	.loc 2 1125 16
	movl	$1, %eax
	jmp	.L157
.L159:
	.loc 2 1126 10
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L160
	.loc 2 1127 16
	movl	$0, %eax
	jmp	.L157
.L160:
	.loc 2 1120 36 discriminator 2
	addl	$1, -20(%rbp)
.L158:
	.loc 2 1120 3 discriminator 1
	movl	-20(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jb	.L161
.LBE17:
	.loc 2 1129 10
	movl	$0, %eax
.L157:
	.loc 2 1130 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	millerrabin, .-millerrabin
	.type	millerrabin2, @function
millerrabin2:
.LFB64:
	.loc 2 1135 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	%r9, -112(%rbp)
	.loc 2 1135 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1138 8
	movq	-112(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	powm2
	movq	%rax, -32(%rbp)
	.loc 2 1139 6
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1141 16
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1141 6
	cmpq	%rax, -32(%rbp)
	jne	.L163
	.loc 2 1141 32 discriminator 1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	.loc 2 1141 20 discriminator 1
	cmpq	%rax, -40(%rbp)
	jne	.L163
	.loc 2 1142 12
	movl	$1, %eax
	jmp	.L170
.L163:
	.loc 2 1144 3
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rdi, %rax
#APP
# 1144 "src/factor.c" 1
	subq %rsi,%rax
	sbbq %rcx,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -24(%rbp)
	movq	%rax, -16(%rbp)
	.loc 2 1146 6
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L165
	.loc 2 1146 19 discriminator 1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L165
	.loc 2 1147 12
	movl	$1, %eax
	jmp	.L170
.L165:
.LBB18:
	.loc 2 1149 21
	movl	$1, -52(%rbp)
	.loc 2 1149 3
	jmp	.L166
.L169:
	.loc 2 1151 12
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	.loc 2 1151 46
	movq	-72(%rbp), %rax
	addq	$8, %rax
	.loc 2 1151 12
	movq	(%rax), %r9
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rax
	pushq	-80(%rbp)
	pushq	%rdi
	movq	%rax, %rdi
	call	mulredc2
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	.loc 2 1152 10
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1154 10
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L167
	.loc 2 1154 23 discriminator 1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L167
	.loc 2 1155 16
	movl	$1, %eax
	jmp	.L170
.L167:
	.loc 2 1156 20
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1156 10
	cmpq	%rax, -32(%rbp)
	jne	.L168
	.loc 2 1156 36 discriminator 1
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	.loc 2 1156 24 discriminator 1
	cmpq	%rax, -40(%rbp)
	jne	.L168
	.loc 2 1157 16
	movl	$0, %eax
	jmp	.L170
.L168:
	.loc 2 1149 36 discriminator 2
	addl	$1, -52(%rbp)
.L166:
	.loc 2 1149 3 discriminator 1
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L169
.LBE18:
	.loc 2 1159 10
	movl	$0, %eax
.L170:
	.loc 2 1160 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L171
	.loc 2 1160 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	millerrabin2, .-millerrabin2
	.type	mp_millerrabin, @function
mp_millerrabin:
.LFB65:
	.loc 2 1165 1 is_stmt 1
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
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	.loc 2 1166 3
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	mpz_powm@PLT
	.loc 2 1168 7
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mpz_cmp_ui@PLT
	.loc 2 1168 6
	testl	%eax, %eax
	je	.L173
	.loc 2 1168 33 discriminator 1
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mpz_cmp@PLT
	.loc 2 1168 30 discriminator 1
	testl	%eax, %eax
	jne	.L174
.L173:
	.loc 2 1169 12
	movl	$1, %eax
	jmp	.L175
.L174:
.LBB19:
	.loc 2 1171 26
	movq	$1, -8(%rbp)
	.loc 2 1171 3
	jmp	.L176
.L179:
	.loc 2 1173 7
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	mpz_powm_ui@PLT
	.loc 2 1174 11
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mpz_cmp@PLT
	.loc 2 1174 10
	testl	%eax, %eax
	jne	.L177
	.loc 2 1175 16
	movl	$1, %eax
	jmp	.L175
.L177:
	.loc 2 1176 11
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mpz_cmp_ui@PLT
	.loc 2 1176 10
	testl	%eax, %eax
	jne	.L178
	.loc 2 1177 16
	movl	$0, %eax
	jmp	.L175
.L178:
	.loc 2 1171 41 discriminator 2
	addq	$1, -8(%rbp)
.L176:
	.loc 2 1171 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L179
.LBE19:
	.loc 2 1179 10
	movl	$0, %eax
.L175:
	.loc 2 1180 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	mp_millerrabin, .-mp_millerrabin
	.section	.rodata
.LC29:
	.string	"(1) < (n)"
.LC30:
	.string	"(s1) < (n)"
	.align 8
.LC31:
	.string	"Lucas prime test failure.  This should not happen"
	.text
	.type	prime_p, @function
prime_p:
.LFB66:
	.loc 2 1186 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$496, %rsp
	movq	%rdi, -488(%rbp)
	.loc 2 1186 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1192 6
	cmpq	$1, -488(%rbp)
	ja	.L181
	.loc 2 1193 12
	movl	$0, %eax
	jmp	.L208
.L181:
	.loc 2 1196 6
	cmpq	$25030008, -488(%rbp)
	ja	.L183
	.loc 2 1197 12
	movl	$1, %eax
	jmp	.L208
.L183:
	.loc 2 1200 13
	movq	-488(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -440(%rbp)
	.loc 2 1201 10
	movl	$0, -468(%rbp)
	.loc 2 1201 3
	jmp	.L184
.L185:
	.loc 2 1202 7 discriminator 3
	shrq	-440(%rbp)
	.loc 2 1201 30 discriminator 3
	addl	$1, -468(%rbp)
.L184:
	.loc 2 1201 18 discriminator 1
	movq	-440(%rbp), %rax
	andl	$1, %eax
	.loc 2 1201 3 discriminator 1
	testq	%rax, %rax
	je	.L185
	.loc 2 1204 13
	movq	$2, -432(%rbp)
.LBB20:
	.loc 2 1205 3
	movq	-488(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	shrq	%rax
	andl	$127, %eax
	movq	%rax, %rdx
	leaq	binvert_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-336(%rbp), %rax
	imulq	%rax, %rax
	imulq	-344(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-336(%rbp), %rax
	imulq	%rax, %rax
	imulq	-344(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-336(%rbp), %rax
	imulq	%rax, %rax
	imulq	-344(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -328(%rbp)
.LBE20:
.LBB21:
.LBB22:
	.loc 2 1206 3
	cmpq	$1, -488(%rbp)
	ja	.L186
	.loc 2 1206 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7261(%rip), %rcx
	movl	$1206, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC29(%rip), %rdi
	call	__assert_fail@PLT
.L186:
	.loc 2 1206 3
	movq	-488(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	$0, -416(%rbp)
	movq	$1, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -408(%rbp)
.LBB23:
	movl	$64, -464(%rbp)
	jmp	.L187
.L190:
	.loc 2 1206 3 discriminator 11
	movq	-424(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-416(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -416(%rbp)
	shrq	-424(%rbp)
	salq	-408(%rbp)
	movq	-400(%rbp), %rax
	cmpq	-424(%rbp), %rax
	ja	.L188
	.loc 2 1206 3 discriminator 4
	movq	-400(%rbp), %rax
	cmpq	-424(%rbp), %rax
	jne	.L189
	.loc 2 1206 3 discriminator 5
	movq	-392(%rbp), %rax
	cmpq	-416(%rbp), %rax
	jb	.L189
.L188:
	.loc 2 1206 3 discriminator 7
	addq	$1, -408(%rbp)
	movq	-400(%rbp), %rdx
	movq	-392(%rbp), %rax
#APP
# 1206 "src/factor.c" 1
	subq -416(%rbp),%rax
	sbbq -424(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -400(%rbp)
	movq	%rax, -392(%rbp)
.L189:
	.loc 2 1206 3 discriminator 9
	subl	$1, -464(%rbp)
.L187:
	.loc 2 1206 3 discriminator 10
	cmpl	$0, -464(%rbp)
	jne	.L190
.LBE23:
	.loc 2 1206 3 discriminator 12
	movq	-392(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -312(%rbp)
.LBE22:
.LBE21:
.LBB24:
	.loc 2 1207 3 is_stmt 1 discriminator 12
	movq	-488(%rbp), %rax
	subq	-320(%rbp), %rax
	cmpq	%rax, -320(%rbp)
	setb	%al
	movzbl	%al, %eax
	negq	%rax
	movq	%rax, -304(%rbp)
	movq	-488(%rbp), %rax
	andq	-304(%rbp), %rax
	movq	%rax, %rdx
	movq	-320(%rbp), %rax
	addq	%rax, %rdx
	movq	-320(%rbp), %rax
	subq	-488(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -448(%rbp)
.LBE24:
	.loc 2 1210 8 discriminator 12
	movl	-468(%rbp), %edi
	movq	-320(%rbp), %r8
	movq	-440(%rbp), %rcx
	movq	-448(%rbp), %rdx
	movq	-328(%rbp), %rsi
	movq	-488(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	millerrabin
	.loc 2 1210 7 discriminator 12
	xorl	$1, %eax
	.loc 2 1210 6 discriminator 12
	testb	%al, %al
	je	.L191
	.loc 2 1211 12
	movl	$0, %eax
	jmp	.L208
.L191:
	.loc 2 1213 7
	movzbl	flag_prove_primality(%rip), %eax
	.loc 2 1213 6
	testb	%al, %al
	je	.L192
	.loc 2 1216 7
	movq	-488(%rbp), %rax
	leaq	-1(%rax), %rcx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %edi
	call	factor
.L192:
.LBB25:
	.loc 2 1221 21
	movl	$0, -460(%rbp)
	.loc 2 1221 3
	jmp	.L193
.L207:
	.loc 2 1223 11
	movzbl	flag_prove_primality(%rip), %eax
	.loc 2 1223 10
	testb	%al, %al
	je	.L194
	.loc 2 1225 20
	movb	$1, -469(%rbp)
.LBB26:
	.loc 2 1226 29
	movl	$0, -456(%rbp)
	.loc 2 1226 11
	jmp	.L195
.L197:
	.loc 2 1229 36 discriminator 4
	movq	-488(%rbp), %rax
	subq	$1, %rax
	.loc 2 1229 52 discriminator 4
	movl	-456(%rbp), %edx
	addq	$2, %rdx
	movq	-272(%rbp,%rdx,8), %rsi
	.loc 2 1229 19 discriminator 4
	movl	$0, %edx
	divq	%rsi
	movq	%rax, %rdi
	movq	-320(%rbp), %rsi
	movq	-328(%rbp), %rcx
	movq	-488(%rbp), %rdx
	movq	-448(%rbp), %rax
	movq	%rsi, %r8
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	powm
	.loc 2 1229 17 discriminator 4
	cmpq	%rax, -320(%rbp)
	setne	%al
	movb	%al, -469(%rbp)
	.loc 2 1226 71 discriminator 4
	addl	$1, -456(%rbp)
.L195:
	.loc 2 1226 47 discriminator 1
	movzbl	-22(%rbp), %eax
	movzbl	%al, %eax
	.loc 2 1226 11 discriminator 1
	cmpl	%eax, -456(%rbp)
	jnb	.L196
	.loc 2 1226 57 discriminator 3
	cmpb	$0, -469(%rbp)
	jne	.L197
	jmp	.L196
.L194:
.LBE26:
	.loc 2 1235 20
	cmpl	$24, -460(%rbp)
	sete	%al
	movb	%al, -469(%rbp)
.L196:
	.loc 2 1238 10
	cmpb	$0, -469(%rbp)
	je	.L198
	.loc 2 1239 16
	movl	$1, %eax
	jmp	.L208
.L198:
	.loc 2 1241 23
	movl	-460(%rbp), %eax
	leaq	primes_diff(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	.loc 2 1241 9
	addq	%rax, -432(%rbp)
.LBB27:
	.loc 2 1248 9
	movq	-320(%rbp), %rax
#APP
# 1248 "src/factor.c" 1
	mulq	-432(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -296(%rbp)
	movq	%rdx, -288(%rbp)
	.loc 2 1249 13
	cmpq	$0, -288(%rbp)
	sete	%al
	movzbl	%al, %eax
	.loc 2 1249 12
	testq	%rax, %rax
	je	.L199
	.loc 2 1250 18
	movq	-296(%rbp), %rax
	movl	$0, %edx
	divq	-488(%rbp)
	movq	%rdx, -448(%rbp)
	jmp	.L200
.L199:
.LBB28:
.LBB29:
	.loc 2 1254 13
	movq	-288(%rbp), %rax
	cmpq	-488(%rbp), %rax
	jb	.L201
	.loc 2 1254 13 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7261(%rip), %rcx
	movl	$1254, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC30(%rip), %rdi
	call	__assert_fail@PLT
.L201:
	.loc 2 1254 13
	movq	-488(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$0, -376(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	$0, -368(%rbp)
.LBB30:
	movl	$64, -452(%rbp)
	jmp	.L202
.L205:
	.loc 2 1254 13 discriminator 11
	movq	-384(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-376(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -376(%rbp)
	shrq	-384(%rbp)
	salq	-368(%rbp)
	movq	-360(%rbp), %rax
	cmpq	-384(%rbp), %rax
	ja	.L203
	.loc 2 1254 13 discriminator 4
	movq	-360(%rbp), %rax
	cmpq	-384(%rbp), %rax
	jne	.L204
	.loc 2 1254 13 discriminator 5
	movq	-352(%rbp), %rax
	cmpq	-376(%rbp), %rax
	jb	.L204
.L203:
	.loc 2 1254 13 discriminator 7
	addq	$1, -368(%rbp)
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rax
#APP
# 1254 "src/factor.c" 1
	subq -376(%rbp),%rax
	sbbq -384(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -360(%rbp)
	movq	%rax, -352(%rbp)
.L204:
	.loc 2 1254 13 discriminator 9
	subl	$1, -452(%rbp)
.L202:
	.loc 2 1254 13 discriminator 10
	cmpl	$0, -452(%rbp)
	jne	.L205
.LBE30:
	.loc 2 1254 13 discriminator 12
	movq	-352(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -280(%rbp)
.L200:
.LBE29:
.LBE28:
.LBE27:
	.loc 2 1258 12 is_stmt 1
	movl	-468(%rbp), %edi
	movq	-320(%rbp), %r8
	movq	-440(%rbp), %rcx
	movq	-448(%rbp), %rdx
	movq	-328(%rbp), %rsi
	movq	-488(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	millerrabin
	.loc 2 1258 11
	xorl	$1, %eax
	.loc 2 1258 10
	testb	%al, %al
	je	.L206
	.loc 2 1259 16
	movl	$0, %eax
	jmp	.L208
.L206:
	.loc 2 1221 54 discriminator 2
	addl	$1, -460(%rbp)
.L193:
	.loc 2 1221 3 discriminator 1
	cmpl	$667, -460(%rbp)
	jbe	.L207
.LBE25:
	.loc 2 1262 16
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 1262 3
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1263 3
	call	abort@PLT
.L208:
	.loc 2 1264 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L209
	.loc 2 1264 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	prime_p, .-prime_p
	.type	prime2_p, @function
prime2_p:
.LFB67:
	.loc 2 1268 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	.loc 2 1268 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1277 6
	cmpq	$0, -568(%rbp)
	jne	.L211
	.loc 2 1278 12
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	prime_p
	jmp	.L248
.L211:
	.loc 2 1280 21
	cmpq	$0, -576(%rbp)
	sete	%al
	movzbl	%al, %eax
	.loc 2 1280 15
	movq	-568(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1280 10
	movq	%rax, -360(%rbp)
	.loc 2 1281 15
	movq	-576(%rbp), %rax
	subq	$1, %rax
	.loc 2 1281 10
	movq	%rax, -368(%rbp)
	.loc 2 1282 10
	movq	-368(%rbp), %rax
	.loc 2 1282 6
	testq	%rax, %rax
	jne	.L213
	.loc 2 1284 7
	movq	-360(%rbp), %rax
#APP
# 1284 "src/factor.c" 1
	bsf	%rax, %rax
# 0 "" 2
#NO_APP
	movl	%eax, -544(%rbp)
	.loc 2 1286 17
	movq	-360(%rbp), %rdx
	.loc 2 1286 21
	movl	-544(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	.loc 2 1286 12
	movq	%rax, -384(%rbp)
	.loc 2 1287 12
	movq	$0, -376(%rbp)
	.loc 2 1288 9
	addl	$64, -544(%rbp)
	jmp	.L214
.L213:
	.loc 2 1292 7
	movq	-368(%rbp), %rax
#APP
# 1292 "src/factor.c" 1
	bsf	%rax, %rax
# 0 "" 2
#NO_APP
	movl	%eax, -544(%rbp)
	.loc 2 1293 7
	movq	-360(%rbp), %rdx
	movl	$64, %eax
	subl	-544(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	-368(%rbp), %rdx
	movl	-544(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rsi, %rax
	movq	%rax, -384(%rbp)
	movq	-360(%rbp), %rdx
	movl	-544(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -376(%rbp)
.L214:
	.loc 2 1296 13
	movq	$2, -512(%rbp)
.LBB31:
	.loc 2 1297 3
	movq	-576(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	shrq	%rax
	andl	$127, %eax
	movq	%rax, %rdx
	leaq	binvert_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-472(%rbp), %rax
	imulq	%rax, %rax
	imulq	-480(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-472(%rbp), %rax
	imulq	%rax, %rax
	imulq	-480(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-472(%rbp), %rax
	imulq	%rax, %rax
	imulq	-480(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, -464(%rbp)
.LBE31:
.LBB32:
	.loc 2 1298 3
	cmpq	$1, -568(%rbp)
	jbe	.L215
	.loc 2 1298 3 is_stmt 0 discriminator 1
	movq	$1, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$64, -536(%rbp)
	jmp	.L217
.L215:
	.loc 2 1298 3 discriminator 2
	movq	$0, -528(%rbp)
	movq	$1, -520(%rbp)
	movq	$128, -536(%rbp)
	jmp	.L217
.L219:
	.loc 2 1298 3 discriminator 10
	movq	-528(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-520(%rbp), %rax
	shrq	$63, %rax
	orq	%rdx, %rax
	movq	%rax, -528(%rbp)
	salq	-520(%rbp)
	movq	-528(%rbp), %rax
	cmpq	-568(%rbp), %rax
	ja	.L218
	.loc 2 1298 3 discriminator 4
	movq	-528(%rbp), %rax
	cmpq	-568(%rbp), %rax
	jne	.L217
	.loc 2 1298 3 discriminator 5
	movq	-520(%rbp), %rax
	cmpq	-576(%rbp), %rax
	jb	.L217
.L218:
	.loc 2 1298 3 discriminator 7
	movq	-528(%rbp), %rdx
	movq	-520(%rbp), %rax
#APP
# 1298 "src/factor.c" 1
	subq -576(%rbp),%rax
	sbbq -568(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -528(%rbp)
	movq	%rax, -520(%rbp)
.L217:
	.loc 2 1298 3 discriminator 9
	movq	-536(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -536(%rbp)
	testq	%rax, %rax
	jne	.L219
	.loc 2 1298 3 discriminator 11
	movq	-528(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -336(%rbp)
.LBE32:
	.loc 2 1299 3 is_stmt 1 discriminator 11
	movq	-328(%rbp), %rax
	movq	-328(%rbp), %rcx
	movq	-336(%rbp), %rdx
	movq	-336(%rbp), %rsi
#APP
# 1299 "src/factor.c" 1
	addq %rsi,%rdx
	adcq %rcx,%rax
# 0 "" 2
#NO_APP
	movq	%rax, -344(%rbp)
	movq	%rdx, -352(%rbp)
	movq	-344(%rbp), %rax
	cmpq	%rax, -568(%rbp)
	jb	.L220
	.loc 2 1299 3 is_stmt 0 discriminator 2
	movq	-344(%rbp), %rax
	cmpq	%rax, -568(%rbp)
	jne	.L221
	.loc 2 1299 3 discriminator 3
	movq	-352(%rbp), %rax
	cmpq	%rax, -576(%rbp)
	ja	.L221
.L220:
	.loc 2 1299 3 discriminator 4
	movq	-344(%rbp), %rdx
	movq	-352(%rbp), %rax
#APP
# 1299 "src/factor.c" 1
	subq -576(%rbp),%rax
	sbbq -568(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -344(%rbp)
	movq	%rax, -352(%rbp)
.L221:
	.loc 2 1302 9 is_stmt 1
	movq	-576(%rbp), %rax
	movq	%rax, -320(%rbp)
	.loc 2 1303 9
	movq	-568(%rbp), %rax
	movq	%rax, -312(%rbp)
	.loc 2 1305 8
	leaq	-336(%rbp), %r8
	movl	-544(%rbp), %edi
	leaq	-384(%rbp), %rcx
	leaq	-352(%rbp), %rdx
	movq	-464(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	millerrabin2
	.loc 2 1305 7
	xorl	$1, %eax
	.loc 2 1305 6
	testb	%al, %al
	je	.L222
	.loc 2 1306 12
	movl	$0, %eax
	jmp	.L248
.L222:
	.loc 2 1308 7
	movzbl	flag_prove_primality(%rip), %eax
	.loc 2 1308 6
	testb	%al, %al
	je	.L223
	.loc 2 1311 7
	movq	-368(%rbp), %rcx
	movq	-360(%rbp), %rax
	leaq	-272(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor
.L223:
.LBB33:
	.loc 2 1316 21
	movl	$0, -548(%rbp)
	.loc 2 1316 3
	jmp	.L224
.L247:
.LBB34:
	.loc 2 1321 11
	movzbl	flag_prove_primality(%rip), %eax
	.loc 2 1321 10
	testb	%al, %al
	je	.L225
	.loc 2 1323 20
	movb	$1, -549(%rbp)
	.loc 2 1324 29
	movq	-264(%rbp), %rax
	.loc 2 1324 14
	testq	%rax, %rax
	je	.L226
.LBB35:
.LBB36:
	.loc 2 1327 15
	movq	-272(%rbp), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	shrq	%rax
	andl	$127, %eax
	movq	%rax, %rdx
	leaq	binvert_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-448(%rbp), %rax
	imulq	%rax, %rax
	imulq	-456(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-448(%rbp), %rax
	imulq	%rax, %rax
	imulq	-456(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-448(%rbp), %rax
	imulq	%rax, %rax
	imulq	-456(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -440(%rbp)
.LBE36:
	.loc 2 1328 30
	movq	-368(%rbp), %rax
	.loc 2 1328 25
	imulq	-440(%rbp), %rax
	.loc 2 1328 20
	movq	%rax, -304(%rbp)
	.loc 2 1329 20
	movq	$0, -296(%rbp)
	.loc 2 1330 22
	leaq	-336(%rbp), %r9
	movq	-464(%rbp), %r8
	leaq	-320(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-352(%rbp), %rax
	leaq	-288(%rbp), %rsi
	leaq	8(%rsi), %rdi
	movq	%rax, %rsi
	call	powm2
	.loc 2 1330 20
	movq	%rax, -288(%rbp)
	.loc 2 1331 28
	movq	-288(%rbp), %rdx
	.loc 2 1331 38
	movq	-336(%rbp), %rax
	.loc 2 1331 42
	cmpq	%rax, %rdx
	jne	.L227
	.loc 2 1331 46 discriminator 2
	movq	-280(%rbp), %rdx
	.loc 2 1331 56 discriminator 2
	movq	-328(%rbp), %rax
	.loc 2 1331 42 discriminator 2
	cmpq	%rax, %rdx
	je	.L228
.L227:
	.loc 2 1331 42 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L229
.L228:
	.loc 2 1331 42 discriminator 4
	movl	$0, %eax
.L229:
	.loc 2 1331 24 is_stmt 1 discriminator 6
	movb	%al, -549(%rbp)
	andb	$1, -549(%rbp)
.L226:
.LBE35:
.LBB37:
	.loc 2 1333 29
	movl	$0, -540(%rbp)
	.loc 2 1333 11
	jmp	.L230
.L238:
	.loc 2 1338 28
	movl	-540(%rbp), %eax
	addq	$2, %rax
	movq	-272(%rbp,%rax,8), %rax
	.loc 2 1338 18
	cmpq	$2, %rax
	jne	.L231
	.loc 2 1339 17
	movq	-360(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-368(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movq	-360(%rbp), %rax
	shrq	%rax
	movq	%rax, -296(%rbp)
	jmp	.L232
.L231:
.LBB38:
.LBB39:
	.loc 2 1341 17
	movl	-540(%rbp), %eax
	addq	$2, %rax
	movq	-272(%rbp,%rax,8), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	shrq	%rax
	andl	$127, %eax
	movq	%rax, %rdx
	leaq	binvert_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-424(%rbp), %rax
	imulq	%rax, %rax
	imulq	-432(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-424(%rbp), %rax
	imulq	%rax, %rax
	imulq	-432(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-424(%rbp), %rax
	imulq	%rax, %rax
	imulq	-432(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -416(%rbp)
.LBE39:
	movq	-368(%rbp), %rax
	movq	-416(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -408(%rbp)
	movq	-360(%rbp), %rdx
	movl	-540(%rbp), %eax
	addq	$2, %rax
	movq	-272(%rbp,%rax,8), %rax
	cmpq	%rax, %rdx
	jb	.L233
.LBB40:
	.loc 2 1341 17 is_stmt 0 discriminator 15
	movl	-540(%rbp), %eax
	addq	$2, %rax
	movq	-272(%rbp,%rax,8), %rdx
	movq	-408(%rbp), %rax
#APP
# 1341 "src/factor.c" 1
	mulq	%rdx
# 0 "" 2
#NO_APP
	movq	%rax, -400(%rbp)
	movq	%rdx, -392(%rbp)
	movq	-360(%rbp), %rax
	subq	-392(%rbp), %rax
	imulq	-416(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -304(%rbp)
.LBE40:
	jmp	.L232
.L233:
	.loc 2 1341 17 discriminator 16
	movq	-408(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
.L232:
.LBE38:
	.loc 2 1342 22 is_stmt 1
	leaq	-336(%rbp), %r9
	movq	-464(%rbp), %r8
	leaq	-320(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-352(%rbp), %rax
	leaq	-288(%rbp), %rsi
	leaq	8(%rsi), %rdi
	movq	%rax, %rsi
	call	powm2
	.loc 2 1342 20
	movq	%rax, -288(%rbp)
	.loc 2 1343 28
	movq	-288(%rbp), %rdx
	.loc 2 1343 38
	movq	-336(%rbp), %rax
	.loc 2 1343 42
	cmpq	%rax, %rdx
	jne	.L234
	.loc 2 1343 46 discriminator 2
	movq	-280(%rbp), %rdx
	.loc 2 1343 56 discriminator 2
	movq	-328(%rbp), %rax
	.loc 2 1343 42 discriminator 2
	cmpq	%rax, %rdx
	je	.L235
.L234:
	.loc 2 1343 42 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L236
.L235:
	.loc 2 1343 42 discriminator 4
	movl	$0, %eax
.L236:
	.loc 2 1343 24 is_stmt 1 discriminator 6
	movb	%al, -549(%rbp)
	andb	$1, -549(%rbp)
	.loc 2 1333 71 discriminator 6
	addl	$1, -540(%rbp)
.L230:
	.loc 2 1333 47 discriminator 2
	movzbl	-22(%rbp), %eax
	movzbl	%al, %eax
	.loc 2 1333 11 discriminator 2
	cmpl	%eax, -540(%rbp)
	jnb	.L237
	.loc 2 1333 57 discriminator 3
	cmpb	$0, -549(%rbp)
	jne	.L238
	jmp	.L237
.L225:
.LBE37:
	.loc 2 1349 20
	cmpl	$24, -548(%rbp)
	sete	%al
	movb	%al, -549(%rbp)
.L237:
	.loc 2 1352 10
	cmpb	$0, -549(%rbp)
	je	.L239
	.loc 2 1353 16
	movl	$1, %eax
	jmp	.L248
.L239:
	.loc 2 1355 23
	movl	-548(%rbp), %eax
	leaq	primes_diff(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	.loc 2 1355 9
	addq	%rax, -512(%rbp)
.LBB41:
	.loc 2 1356 7
	movq	-512(%rbp), %rax
	cmpq	-568(%rbp), %rax
	jnb	.L241
	.loc 2 1356 7 is_stmt 0 discriminator 1
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	$0, -496(%rbp)
	movq	$64, -488(%rbp)
	jmp	.L243
.L241:
	.loc 2 1356 7 discriminator 2
	movq	$0, -504(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	$128, -488(%rbp)
	jmp	.L243
.L245:
	.loc 2 1356 7 discriminator 10
	movq	-504(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-496(%rbp), %rax
	shrq	$63, %rax
	orq	%rdx, %rax
	movq	%rax, -504(%rbp)
	salq	-496(%rbp)
	movq	-504(%rbp), %rax
	cmpq	-568(%rbp), %rax
	ja	.L244
	.loc 2 1356 7 discriminator 4
	movq	-504(%rbp), %rax
	cmpq	-568(%rbp), %rax
	jne	.L243
	.loc 2 1356 7 discriminator 5
	movq	-496(%rbp), %rax
	cmpq	-576(%rbp), %rax
	jb	.L243
.L244:
	.loc 2 1356 7 discriminator 7
	movq	-504(%rbp), %rdx
	movq	-496(%rbp), %rax
#APP
# 1356 "src/factor.c" 1
	subq -576(%rbp),%rax
	sbbq -568(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -504(%rbp)
	movq	%rax, -496(%rbp)
.L243:
	.loc 2 1356 7 discriminator 9
	movq	-488(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -488(%rbp)
	testq	%rax, %rax
	jne	.L245
	.loc 2 1356 7 discriminator 11
	movq	-504(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -352(%rbp)
.LBE41:
	.loc 2 1358 12 is_stmt 1 discriminator 11
	leaq	-336(%rbp), %r8
	movl	-544(%rbp), %edi
	leaq	-384(%rbp), %rcx
	leaq	-352(%rbp), %rdx
	movq	-464(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	millerrabin2
	.loc 2 1358 11 discriminator 11
	xorl	$1, %eax
	.loc 2 1358 10 discriminator 11
	testb	%al, %al
	je	.L246
	.loc 2 1359 16
	movl	$0, %eax
	jmp	.L248
.L246:
.LBE34:
	.loc 2 1316 54
	addl	$1, -548(%rbp)
.L224:
	.loc 2 1316 3 discriminator 1
	cmpl	$667, -548(%rbp)
	jbe	.L247
.LBE33:
	.loc 2 1362 16
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 1362 3
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1363 3
	call	abort@PLT
.L248:
	.loc 2 1364 1 discriminator 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L249
	.loc 2 1364 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	prime2_p, .-prime2_p
	.type	mp_prime_p, @function
mp_prime_p:
.LFB68:
	.loc 2 1368 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	.loc 2 1368 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1373 7
	movq	-152(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mpz_cmp_ui@PLT
	.loc 2 1373 6
	testl	%eax, %eax
	jg	.L251
	.loc 2 1374 12
	movl	$0, %eax
	jmp	.L266
.L251:
	.loc 2 1377 7
	movq	-152(%rbp), %rax
	movl	$25030009, %esi
	movq	%rax, %rdi
	call	mpz_cmp_ui@PLT
	.loc 2 1377 6
	testl	%eax, %eax
	jns	.L253
	.loc 2 1378 12
	movl	$1, %eax
	jmp	.L266
.L253:
	.loc 2 1380 3
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	mpz_init@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	mpz_va_init
	.loc 2 1383 3
	movq	-152(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_sub_ui@PLT
	.loc 2 1386 25
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mpz_scan1@PLT
	movq	%rax, -120(%rbp)
	.loc 2 1387 3
	movq	-120(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_tdiv_q_2exp@PLT
	.loc 2 1389 3
	leaq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	mpz_set_ui@PLT
	.loc 2 1392 8
	movq	-120(%rbp), %r8
	leaq	-80(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mp_millerrabin
	.loc 2 1392 7
	xorl	$1, %eax
	.loc 2 1392 6
	testb	%al, %al
	je	.L254
	.loc 2 1394 16
	movb	$0, -133(%rbp)
	.loc 2 1395 7
	jmp	.L255
.L254:
	.loc 2 1398 7
	movzbl	flag_prove_primality(%rip), %eax
	.loc 2 1398 6
	testb	%al, %al
	je	.L256
	.loc 2 1401 7
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mpz_set@PLT
	.loc 2 1402 7
	leaq	-112(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mp_factor
.L256:
.LBB42:
	.loc 2 1407 21
	movl	$0, -132(%rbp)
	.loc 2 1407 3
	jmp	.L257
.L265:
	.loc 2 1409 11
	movzbl	flag_prove_primality(%rip), %eax
	.loc 2 1409 10
	testb	%al, %al
	je	.L258
	.loc 2 1411 20
	movb	$1, -133(%rbp)
.LBB43:
	.loc 2 1412 34
	movq	$0, -128(%rbp)
	.loc 2 1412 11
	jmp	.L259
.L261:
	.loc 2 1414 46 discriminator 4
	movq	-112(%rbp), %rax
	.loc 2 1414 48 discriminator 4
	movq	-128(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	.loc 2 1414 15 discriminator 4
	leaq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_divexact@PLT
	.loc 2 1415 15 discriminator 4
	movq	-152(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	mpz_powm@PLT
	.loc 2 1416 26 discriminator 4
	leaq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mpz_cmp_ui@PLT
	.loc 2 1416 24 discriminator 4
	testl	%eax, %eax
	setne	%al
	movb	%al, -133(%rbp)
	.loc 2 1412 76 discriminator 4
	addq	$1, -128(%rbp)
.L259:
	.loc 2 1412 52 discriminator 1
	movq	-96(%rbp), %rax
	.loc 2 1412 11 discriminator 1
	cmpq	%rax, -128(%rbp)
	jnb	.L260
	.loc 2 1412 62 discriminator 3
	cmpb	$0, -133(%rbp)
	jne	.L261
	jmp	.L260
.L258:
.LBE43:
	.loc 2 1422 20
	cmpl	$24, -132(%rbp)
	sete	%al
	movb	%al, -133(%rbp)
.L260:
	.loc 2 1425 10
	cmpb	$0, -133(%rbp)
	jne	.L268
	.loc 2 1428 36
	movl	-132(%rbp), %eax
	leaq	primes_diff(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1428 7
	movzbl	%al, %edx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_add_ui@PLT
	.loc 2 1430 12
	movq	-120(%rbp), %r8
	leaq	-80(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mp_millerrabin
	.loc 2 1430 11
	xorl	$1, %eax
	.loc 2 1430 10
	testb	%al, %al
	je	.L264
	.loc 2 1432 20
	movb	$0, -133(%rbp)
	.loc 2 1433 11
	jmp	.L263
.L264:
	.loc 2 1407 54 discriminator 2
	addl	$1, -132(%rbp)
.L257:
	.loc 2 1407 3 discriminator 1
	cmpl	$667, -132(%rbp)
	jbe	.L265
.LBE42:
	.loc 2 1437 16
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 1437 3
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1438 3
	call	abort@PLT
.L268:
.LBB44:
	.loc 2 1426 9
	nop
.L263:
.LBE44:
	.loc 2 1441 7
	movzbl	flag_prove_primality(%rip), %eax
	.loc 2 1441 6
	testb	%al, %al
	je	.L269
	.loc 2 1442 5
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	mp_factor_clear
	jmp	.L255
.L269:
	.loc 2 1443 2
	nop
.L255:
	.loc 2 1444 3
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	mpz_clear@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	mpz_va_init
	.loc 2 1446 10
	movzbl	-133(%rbp), %eax
.L266:
	.loc 2 1447 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L267
	.loc 2 1447 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	mp_prime_p, .-mp_prime_p
	.section	.rodata
.LC32:
	.string	"a < n"
	.text
	.type	factor_using_pollard_rho, @function
factor_using_pollard_rho:
.LFB69:
	.loc 2 1452 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	.loc 2 1455 21
	movq	$1, -160(%rbp)
	.loc 2 1456 21
	movq	$1, -152(%rbp)
.LBB45:
.LBB46:
	.loc 2 1458 3
	cmpq	$1, -216(%rbp)
	ja	.L271
	.loc 2 1458 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7383(%rip), %rcx
	movl	$1458, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC29(%rip), %rdi
	call	__assert_fail@PLT
.L271:
	.loc 2 1458 3
	movq	-216(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$1, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -128(%rbp)
.LBB47:
	movl	$64, -196(%rbp)
	jmp	.L272
.L275:
	.loc 2 1458 3 discriminator 11
	movq	-144(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -136(%rbp)
	shrq	-144(%rbp)
	salq	-128(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-144(%rbp), %rax
	ja	.L273
	.loc 2 1458 3 discriminator 4
	movq	-120(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jne	.L274
	.loc 2 1458 3 discriminator 5
	movq	-112(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L274
.L273:
	.loc 2 1458 3 discriminator 7
	addq	$1, -128(%rbp)
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rax
#APP
# 1458 "src/factor.c" 1
	subq -136(%rbp),%rax
	sbbq -144(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -120(%rbp)
	movq	%rax, -112(%rbp)
.L274:
	.loc 2 1458 3 discriminator 9
	subl	$1, -196(%rbp)
.L272:
	.loc 2 1458 3 discriminator 10
	cmpl	$0, -196(%rbp)
	jne	.L275
.LBE47:
	.loc 2 1458 3 discriminator 12
	movq	-112(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBE46:
.LBE45:
.LBB48:
	.loc 2 1459 3 is_stmt 1 discriminator 12
	movq	-216(%rbp), %rax
	subq	-168(%rbp), %rax
	cmpq	%rax, -168(%rbp)
	setb	%al
	movzbl	%al, %eax
	negq	%rax
	movq	%rax, -88(%rbp)
	movq	-216(%rbp), %rax
	andq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	subq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
.LBE48:
	.loc 2 1460 9 discriminator 12
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 2 1460 5 discriminator 12
	movq	-184(%rbp), %rax
	movq	%rax, -176(%rbp)
	.loc 2 1462 9 discriminator 12
	jmp	.L276
.L289:
	.loc 2 1464 7
	movq	-224(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jb	.L277
	.loc 2 1464 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7383(%rip), %rcx
	movl	$1464, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC32(%rip), %rdi
	call	__assert_fail@PLT
.L277:
.LBB49:
	.loc 2 1466 7 is_stmt 1
	movq	-216(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	shrq	%rax
	andl	$127, %eax
	movq	%rax, %rdx
	leaq	binvert_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-72(%rbp), %rax
	imulq	%rax, %rax
	imulq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-72(%rbp), %rax
	imulq	%rax, %rax
	imulq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-72(%rbp), %rax
	imulq	%rax, %rax
	imulq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
.L281:
.LBE49:
	.loc 2 1472 19
	movq	-64(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	mulredc
	movq	%rax, -192(%rbp)
.LBB50:
	.loc 2 1473 15
	movq	-216(%rbp), %rax
	subq	-224(%rbp), %rax
	cmpq	%rax, -192(%rbp)
	setb	%al
	movzbl	%al, %eax
	negq	%rax
	movq	%rax, -56(%rbp)
	movq	-216(%rbp), %rax
	andq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	movq	-224(%rbp), %rax
	subq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
.LBE50:
.LBB51:
	.loc 2 1475 15
	movq	-184(%rbp), %rax
	cmpq	-192(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	negq	%rax
	movq	%rax, -48(%rbp)
	movq	-216(%rbp), %rax
	andq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	subq	-192(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBE51:
	.loc 2 1476 19
	movq	-64(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	mulredc
	movq	%rax, -168(%rbp)
	.loc 2 1478 21
	movq	-160(%rbp), %rax
	andl	$31, %eax
	.loc 2 1478 18
	cmpq	$1, %rax
	jne	.L278
	.loc 2 1480 23
	movq	-216(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gcd_odd
	.loc 2 1480 22
	cmpq	$1, %rax
	je	.L279
	.loc 2 1481 21
	jmp	.L280
.L279:
	.loc 2 1482 21
	movq	-192(%rbp), %rax
	movq	%rax, -176(%rbp)
.L278:
	.loc 2 1485 11
	subq	$1, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L281
	.loc 2 1487 13
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 2 1488 13
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	.loc 2 1489 13
	salq	-152(%rbp)
.LBB52:
	.loc 2 1490 34
	movq	$0, -104(%rbp)
	.loc 2 1490 11
	jmp	.L282
.L283:
	.loc 2 1492 19 discriminator 3
	movq	-64(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	mulredc
	movq	%rax, -192(%rbp)
.LBB53:
	.loc 2 1493 15 discriminator 3
	movq	-216(%rbp), %rax
	subq	-224(%rbp), %rax
	cmpq	%rax, -192(%rbp)
	setb	%al
	movzbl	%al, %eax
	negq	%rax
	movq	%rax, -8(%rbp)
	movq	-216(%rbp), %rax
	andq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	movq	-224(%rbp), %rax
	subq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
.LBE53:
	.loc 2 1490 49 discriminator 3
	addq	$1, -104(%rbp)
.L282:
	.loc 2 1490 11 discriminator 1
	movq	-104(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jb	.L283
.LBE52:
	.loc 2 1495 13
	movq	-192(%rbp), %rax
	movq	%rax, -176(%rbp)
	.loc 2 1468 7
	jmp	.L281
.L290:
	.loc 2 1498 5
	nop
.L280:
	.loc 2 1501 15 discriminator 1
	movq	-64(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	mulredc
	movq	%rax, -176(%rbp)
.LBB54:
	.loc 2 1502 11 discriminator 1
	movq	-216(%rbp), %rax
	subq	-224(%rbp), %rax
	cmpq	%rax, -176(%rbp)
	setb	%al
	movzbl	%al, %eax
	negq	%rax
	movq	%rax, -32(%rbp)
	movq	-216(%rbp), %rax
	andq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-224(%rbp), %rax
	subq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -176(%rbp)
.LBE54:
.LBB55:
	.loc 2 1504 11 discriminator 1
	movq	-184(%rbp), %rax
	cmpq	-176(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	negq	%rax
	movq	%rax, -24(%rbp)
	movq	-216(%rbp), %rax
	andq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	subq	-176(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBE55:
	.loc 2 1505 15 discriminator 1
	movq	-216(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gcd_odd
	movq	%rax, -16(%rbp)
	.loc 2 1507 7 discriminator 1
	cmpq	$1, -16(%rbp)
	je	.L290
	.loc 2 1509 10
	movq	-216(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L284
	.loc 2 1512 11
	movq	-224(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-232(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_using_pollard_rho
	.loc 2 1513 11
	jmp	.L270
.L284:
	.loc 2 1516 9
	movq	-216(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rax, -216(%rbp)
	.loc 2 1518 12
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	prime_p
	.loc 2 1518 11
	xorl	$1, %eax
	.loc 2 1518 10
	testb	%al, %al
	je	.L286
	.loc 2 1519 9
	movq	-224(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-232(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_using_pollard_rho
	jmp	.L287
.L286:
	.loc 2 1521 9
	movq	-16(%rbp), %rcx
	movq	-232(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_insert_multiplicity
.L287:
	.loc 2 1523 11
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	prime_p
	.loc 2 1523 10
	testb	%al, %al
	je	.L288
	.loc 2 1525 11
	movq	-216(%rbp), %rcx
	movq	-232(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_insert_multiplicity
	.loc 2 1526 11
	jmp	.L270
.L288:
	.loc 2 1529 9
	movq	-192(%rbp), %rax
	movl	$0, %edx
	divq	-216(%rbp)
	movq	%rdx, -192(%rbp)
	.loc 2 1530 9
	movq	-184(%rbp), %rax
	movl	$0, %edx
	divq	-216(%rbp)
	movq	%rdx, -184(%rbp)
	.loc 2 1531 9
	movq	-176(%rbp), %rax
	movl	$0, %edx
	divq	-216(%rbp)
	movq	%rdx, -176(%rbp)
.L276:
	.loc 2 1462 9
	cmpq	$1, -216(%rbp)
	jne	.L289
.L270:
	.loc 2 1533 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	factor_using_pollard_rho, .-factor_using_pollard_rho
	.type	factor_using_pollard_rho2, @function
factor_using_pollard_rho2:
.LFB70:
	.loc 2 1538 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -288(%rbp)
	.loc 2 1538 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1541 21
	movq	$1, -160(%rbp)
	.loc 2 1542 21
	movq	$1, -152(%rbp)
.LBB56:
	.loc 2 1544 3
	cmpq	$1, -264(%rbp)
	jbe	.L292
	.loc 2 1544 3 is_stmt 0 discriminator 1
	movq	$1, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$64, -128(%rbp)
	jmp	.L294
.L292:
	.loc 2 1544 3 discriminator 2
	movq	$0, -144(%rbp)
	movq	$1, -136(%rbp)
	movq	$128, -128(%rbp)
	jmp	.L294
.L296:
	.loc 2 1544 3 discriminator 10
	movq	-144(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	shrq	$63, %rax
	orq	%rdx, %rax
	movq	%rax, -144(%rbp)
	salq	-136(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-264(%rbp), %rax
	ja	.L295
	.loc 2 1544 3 discriminator 4
	movq	-144(%rbp), %rax
	cmpq	-264(%rbp), %rax
	jne	.L294
	.loc 2 1544 3 discriminator 5
	movq	-136(%rbp), %rax
	cmpq	-272(%rbp), %rax
	jb	.L294
.L295:
	.loc 2 1544 3 discriminator 7
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
#APP
# 1544 "src/factor.c" 1
	subq -272(%rbp),%rax
	sbbq -264(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -144(%rbp)
	movq	%rax, -136(%rbp)
.L294:
	.loc 2 1544 3 discriminator 9
	movq	-128(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	testq	%rax, %rax
	jne	.L296
	.loc 2 1544 3 discriminator 11
	movq	-144(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBE56:
	.loc 2 1545 3 is_stmt 1 discriminator 11
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
#APP
# 1545 "src/factor.c" 1
	addq -184(%rbp),%rax
	adcq -192(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -256(%rbp)
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rax
	cmpq	%rax, -264(%rbp)
	jb	.L297
	.loc 2 1545 3 is_stmt 0 discriminator 2
	movq	-256(%rbp), %rax
	cmpq	%rax, -264(%rbp)
	jne	.L298
	.loc 2 1545 3 discriminator 3
	movq	-216(%rbp), %rax
	cmpq	-272(%rbp), %rax
	jb	.L298
.L297:
	.loc 2 1545 3 discriminator 4
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
#APP
# 1545 "src/factor.c" 1
	subq -272(%rbp),%rax
	sbbq -264(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -256(%rbp)
	movq	%rax, -216(%rbp)
.L298:
	.loc 2 1546 11 is_stmt 1
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	.loc 2 1546 6
	movq	-248(%rbp), %rax
	movq	%rax, -240(%rbp)
	.loc 2 1547 11
	movq	-216(%rbp), %rax
	movq	%rax, -208(%rbp)
	.loc 2 1547 6
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
	.loc 2 1549 9
	jmp	.L299
.L328:
.LBB57:
	.loc 2 1551 7
	movq	-272(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	shrq	%rax
	andl	$127, %eax
	movq	%rax, %rdx
	leaq	binvert_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-104(%rbp), %rax
	imulq	%rax, %rax
	imulq	-112(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-104(%rbp), %rax
	imulq	%rax, %rax
	imulq	-112(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-104(%rbp), %rax
	imulq	%rax, %rax
	imulq	-112(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
.L307:
.LBE57:
	.loc 2 1557 20
	movq	-256(%rbp), %rcx
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %r8
	movq	-216(%rbp), %rdi
	movq	-216(%rbp), %rdx
	leaq	-224(%rbp), %rax
	pushq	-96(%rbp)
	pushq	-272(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mulredc2
	addq	$16, %rsp
	movq	%rax, -216(%rbp)
	.loc 2 1558 18
	movq	-224(%rbp), %rax
	movq	%rax, -256(%rbp)
	.loc 2 1559 15
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
#APP
# 1559 "src/factor.c" 1
	addq -280(%rbp),%rax
	adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -256(%rbp)
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rax
	cmpq	%rax, -264(%rbp)
	jb	.L300
	.loc 2 1559 15 is_stmt 0 discriminator 2
	movq	-256(%rbp), %rax
	cmpq	%rax, -264(%rbp)
	jne	.L301
	.loc 2 1559 15 discriminator 3
	movq	-216(%rbp), %rax
	cmpq	-272(%rbp), %rax
	jb	.L301
.L300:
	.loc 2 1559 15 discriminator 4
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
#APP
# 1559 "src/factor.c" 1
	subq -272(%rbp),%rax
	sbbq -264(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -256(%rbp)
	movq	%rax, -216(%rbp)
.L301:
	.loc 2 1561 15 is_stmt 1
	movq	-248(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-208(%rbp), %rax
#APP
# 1561 "src/factor.c" 1
	subq -216(%rbp),%rax
	sbbq %rcx,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -176(%rbp)
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rax
	testq	%rax, %rax
	jns	.L302
	.loc 2 1561 15 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
#APP
# 1561 "src/factor.c" 1
	addq -272(%rbp),%rax
	adcq -264(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -176(%rbp)
	movq	%rax, -168(%rbp)
.L302:
	.loc 2 1562 20 is_stmt 1
	movq	-264(%rbp), %r8
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rsi
	leaq	-224(%rbp), %rax
	pushq	-96(%rbp)
	pushq	-272(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mulredc2
	addq	$16, %rsp
	movq	%rax, -184(%rbp)
	.loc 2 1563 18
	movq	-224(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 2 1565 21
	movq	-160(%rbp), %rax
	andl	$31, %eax
	.loc 2 1565 18
	cmpq	$1, %rax
	jne	.L303
	.loc 2 1567 24
	movq	-272(%rbp), %rdi
	movq	-264(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rsi
	leaq	-232(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	gcd2_odd
	movq	%rax, -88(%rbp)
	.loc 2 1568 26
	movq	-232(%rbp), %rax
	.loc 2 1568 22
	testq	%rax, %rax
	jne	.L306
	.loc 2 1568 31 discriminator 1
	cmpq	$1, -88(%rbp)
	je	.L305
	.loc 2 1569 21
	jmp	.L306
.L305:
	.loc 2 1570 22
	movq	-256(%rbp), %rax
	movq	%rax, -240(%rbp)
	.loc 2 1570 31
	movq	-216(%rbp), %rax
	movq	%rax, -200(%rbp)
.L303:
	.loc 2 1573 11
	subq	$1, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L307
	.loc 2 1575 14
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	.loc 2 1575 23
	movq	-216(%rbp), %rax
	movq	%rax, -208(%rbp)
	.loc 2 1576 13
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	.loc 2 1577 13
	salq	-152(%rbp)
.LBB58:
	.loc 2 1578 34
	movq	$0, -120(%rbp)
	.loc 2 1578 11
	jmp	.L308
.L311:
	.loc 2 1580 20
	movq	-256(%rbp), %rcx
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %r8
	movq	-216(%rbp), %rdi
	movq	-216(%rbp), %rdx
	leaq	-224(%rbp), %rax
	pushq	-96(%rbp)
	pushq	-272(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mulredc2
	addq	$16, %rsp
	movq	%rax, -216(%rbp)
	.loc 2 1581 18
	movq	-224(%rbp), %rax
	movq	%rax, -256(%rbp)
	.loc 2 1582 15
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
#APP
# 1582 "src/factor.c" 1
	addq -280(%rbp),%rax
	adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -256(%rbp)
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rax
	cmpq	%rax, -264(%rbp)
	jb	.L309
	.loc 2 1582 15 is_stmt 0 discriminator 2
	movq	-256(%rbp), %rax
	cmpq	%rax, -264(%rbp)
	jne	.L310
	.loc 2 1582 15 discriminator 3
	movq	-216(%rbp), %rax
	cmpq	-272(%rbp), %rax
	jb	.L310
.L309:
	.loc 2 1582 15 discriminator 4
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
#APP
# 1582 "src/factor.c" 1
	subq -272(%rbp),%rax
	sbbq -264(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -256(%rbp)
	movq	%rax, -216(%rbp)
.L310:
	.loc 2 1578 49 is_stmt 1 discriminator 2
	addq	$1, -120(%rbp)
.L308:
	.loc 2 1578 11 discriminator 1
	movq	-120(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jb	.L311
.LBE58:
	.loc 2 1584 14
	movq	-256(%rbp), %rax
	movq	%rax, -240(%rbp)
	.loc 2 1584 23
	movq	-216(%rbp), %rax
	movq	%rax, -200(%rbp)
	.loc 2 1553 7
	jmp	.L307
.L331:
	.loc 2 1587 5
	nop
.L306:
	.loc 2 1590 16
	movq	-240(%rbp), %rcx
	movq	-240(%rbp), %rsi
	movq	-264(%rbp), %r8
	movq	-200(%rbp), %rdi
	movq	-200(%rbp), %rdx
	leaq	-224(%rbp), %rax
	pushq	-96(%rbp)
	pushq	-272(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mulredc2
	addq	$16, %rsp
	movq	%rax, -200(%rbp)
	.loc 2 1591 14
	movq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	.loc 2 1592 11
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
#APP
# 1592 "src/factor.c" 1
	addq -280(%rbp),%rax
	adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -240(%rbp)
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rax
	cmpq	%rax, -264(%rbp)
	jb	.L312
	.loc 2 1592 11 is_stmt 0 discriminator 2
	movq	-240(%rbp), %rax
	cmpq	%rax, -264(%rbp)
	jne	.L313
	.loc 2 1592 11 discriminator 3
	movq	-200(%rbp), %rax
	cmpq	-272(%rbp), %rax
	jb	.L313
.L312:
	.loc 2 1592 11 discriminator 4
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
#APP
# 1592 "src/factor.c" 1
	subq -272(%rbp),%rax
	sbbq -264(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -240(%rbp)
	movq	%rax, -200(%rbp)
.L313:
	.loc 2 1594 11 is_stmt 1
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rcx
	movq	-208(%rbp), %rax
#APP
# 1594 "src/factor.c" 1
	subq -200(%rbp),%rax
	sbbq %rcx,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -176(%rbp)
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rax
	testq	%rax, %rax
	jns	.L314
	.loc 2 1594 11 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
#APP
# 1594 "src/factor.c" 1
	addq -272(%rbp),%rax
	adcq -264(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -176(%rbp)
	movq	%rax, -168(%rbp)
.L314:
	.loc 2 1595 16 is_stmt 1
	movq	-272(%rbp), %rdi
	movq	-264(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-176(%rbp), %rsi
	leaq	-232(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	gcd2_odd
	movq	%rax, -88(%rbp)
	.loc 2 1597 17
	movq	-232(%rbp), %rax
	.loc 2 1597 7
	testq	%rax, %rax
	jne	.L315
	.loc 2 1597 22 discriminator 1
	cmpq	$1, -88(%rbp)
	je	.L331
.L315:
	.loc 2 1599 14
	movq	-232(%rbp), %rax
	.loc 2 1599 10
	testq	%rax, %rax
	jne	.L316
.LBB59:
.LBB60:
	.loc 2 1602 11
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	shrq	%rax
	andl	$127, %eax
	movq	%rax, %rdx
	leaq	binvert_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-48(%rbp), %rax
	imulq	%rax, %rax
	imulq	-56(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-48(%rbp), %rax
	imulq	%rax, %rax
	imulq	-56(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-48(%rbp), %rax
	imulq	%rax, %rax
	imulq	-56(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBE60:
	movq	-272(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-264(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L317
.LBB61:
	.loc 2 1602 11 is_stmt 0 discriminator 15
	movq	-32(%rbp), %rax
#APP
# 1602 "src/factor.c" 1
	mulq	-88(%rbp)
# 0 "" 2
#NO_APP
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-264(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)
.LBE61:
	jmp	.L318
.L317:
	.loc 2 1602 11 discriminator 16
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$0, -264(%rbp)
.L318:
.LBE59:
	.loc 2 1604 16 is_stmt 1
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	prime_p
	.loc 2 1604 15
	xorl	$1, %eax
	.loc 2 1604 14
	testb	%al, %al
	je	.L319
	.loc 2 1605 13
	movq	-280(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-288(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_using_pollard_rho
	jmp	.L320
.L319:
	.loc 2 1607 13
	movq	-88(%rbp), %rcx
	movq	-288(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_insert_multiplicity
	jmp	.L320
.L316:
.LBB62:
	.loc 2 1615 18
	movq	-232(%rbp), %rax
	.loc 2 1615 14
	cmpq	%rax, -264(%rbp)
	jne	.L321
	.loc 2 1615 24 discriminator 1
	movq	-272(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L321
	.loc 2 1618 15
	movq	-280(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-288(%rbp), %rdx
	movq	-272(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	factor_using_pollard_rho2
	.loc 2 1619 15
	jmp	.L291
.L321:
.LBB63:
	.loc 2 1622 11
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	shrq	%rax
	andl	$127, %eax
	movq	%rax, %rdx
	leaq	binvert_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-72(%rbp), %rax
	imulq	%rax, %rax
	imulq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-72(%rbp), %rax
	imulq	%rax, %rax
	imulq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-72(%rbp), %rax
	imulq	%rax, %rax
	imulq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBE63:
	.loc 2 1623 14
	movq	-272(%rbp), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)
	.loc 2 1624 14
	movq	$0, -264(%rbp)
	.loc 2 1626 16
	movq	-232(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prime2_p
	.loc 2 1626 15
	xorl	$1, %eax
	.loc 2 1626 14
	testb	%al, %al
	je	.L323
	.loc 2 1627 13
	movq	-280(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-232(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	factor_using_pollard_rho2
	jmp	.L320
.L323:
	.loc 2 1629 13
	movq	-232(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_insert_large
.L320:
.LBE62:
	.loc 2 1632 10
	cmpq	$0, -264(%rbp)
	jne	.L324
	.loc 2 1634 15
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	prime_p
	.loc 2 1634 14
	testb	%al, %al
	je	.L325
	.loc 2 1636 15
	movq	-272(%rbp), %rcx
	movq	-288(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_insert_multiplicity
	.loc 2 1637 15
	jmp	.L291
.L325:
	.loc 2 1640 11
	movq	-288(%rbp), %rdx
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_using_pollard_rho
	.loc 2 1641 11
	jmp	.L291
.L324:
	.loc 2 1644 11
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prime2_p
	.loc 2 1644 10
	testb	%al, %al
	je	.L327
	.loc 2 1646 11
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_insert_large
	.loc 2 1647 11
	jmp	.L291
.L327:
	.loc 2 1650 12
	movq	-256(%rbp), %rsi
	movq	-272(%rbp), %rdi
	movq	-264(%rbp), %rcx
	movq	-216(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mod2
	movq	%rax, -216(%rbp)
	.loc 2 1651 12
	movq	-248(%rbp), %rsi
	movq	-272(%rbp), %rdi
	movq	-264(%rbp), %rcx
	movq	-208(%rbp), %rdx
	leaq	-248(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mod2
	movq	%rax, -208(%rbp)
	.loc 2 1652 12
	movq	-240(%rbp), %rsi
	movq	-272(%rbp), %rdi
	movq	-264(%rbp), %rcx
	movq	-200(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	mod2
	movq	%rax, -200(%rbp)
.L299:
	.loc 2 1549 9
	cmpq	$0, -264(%rbp)
	jne	.L328
	.loc 2 1549 18 discriminator 1
	cmpq	$1, -272(%rbp)
	jne	.L328
.L291:
	.loc 2 1654 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L330
	call	__stack_chk_fail@PLT
.L330:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	factor_using_pollard_rho2, .-factor_using_pollard_rho2
	.section	.rodata
.LC33:
	.string	"[pollard-rho (%lu)] "
	.align 8
.LC34:
	.string	"[composite factor--restarting pollard-rho] "
	.text
	.type	mp_factor_using_pollard_rho, @function
mp_factor_using_pollard_rho:
.LFB71:
	.loc 2 1659 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	.loc 2 1659 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1663 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L333
	.loc 2 1663 3 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	-160(%rbp), %rdx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L333:
	.loc 2 1665 3 is_stmt 1
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	movq	mpz_init@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	mpz_va_init
	.loc 2 1666 3
	leaq	-80(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	mpz_init_set_si@PLT
	.loc 2 1667 3
	leaq	-112(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	mpz_init_set_si@PLT
	.loc 2 1668 3
	leaq	-96(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	mpz_init_set_si@PLT
	.loc 2 1669 3
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mpz_init_set_ui@PLT
	.loc 2 1671 26
	movq	$1, -136(%rbp)
	.loc 2 1672 26
	movq	$1, -128(%rbp)
	.loc 2 1674 9
	jmp	.L334
.L338:
	.loc 2 1680 15
	leaq	-112(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mul@PLT
	.loc 2 1681 15
	movq	-152(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mod@PLT
	.loc 2 1682 15
	movq	-160(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_add_ui@PLT
	.loc 2 1684 15
	leaq	-112(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_sub@PLT
	.loc 2 1685 15
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mul@PLT
	.loc 2 1686 15
	movq	-152(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mod@PLT
	.loc 2 1688 21
	movq	-136(%rbp), %rax
	andl	$31, %eax
	.loc 2 1688 18
	cmpq	$1, %rax
	jne	.L335
	.loc 2 1690 19
	movq	-152(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_gcd@PLT
	.loc 2 1691 23
	leaq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mpz_cmp_ui@PLT
	.loc 2 1691 22
	testl	%eax, %eax
	je	.L336
	.loc 2 1692 21
	jmp	.L337
.L336:
	.loc 2 1693 19
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mpz_set@PLT
.L335:
	.loc 2 1696 11
	subq	$1, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L338
	.loc 2 1698 11
	leaq	-112(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mpz_set@PLT
	.loc 2 1699 13
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	.loc 2 1700 13
	salq	-128(%rbp)
.LBB64:
	.loc 2 1701 39
	movq	$0, -120(%rbp)
	.loc 2 1701 11
	jmp	.L339
.L340:
	.loc 2 1703 15 discriminator 3
	leaq	-112(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mul@PLT
	.loc 2 1704 15 discriminator 3
	movq	-152(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mod@PLT
	.loc 2 1705 15 discriminator 3
	movq	-160(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_add_ui@PLT
	.loc 2 1701 54 discriminator 3
	addq	$1, -120(%rbp)
.L339:
	.loc 2 1701 11 discriminator 1
	movq	-120(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.L340
.LBE64:
	.loc 2 1707 11
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mpz_set@PLT
	.loc 2 1676 7
	jmp	.L338
.L347:
	.loc 2 1710 5
	nop
.L337:
	.loc 2 1713 11 discriminator 1
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mul@PLT
	.loc 2 1714 11 discriminator 1
	movq	-152(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mod@PLT
	.loc 2 1715 11 discriminator 1
	movq	-160(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_add_ui@PLT
	.loc 2 1717 11 discriminator 1
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_sub@PLT
	.loc 2 1718 11 discriminator 1
	movq	-152(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_gcd@PLT
	.loc 2 1720 14 discriminator 1
	leaq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mpz_cmp_ui@PLT
	.loc 2 1720 7 discriminator 1
	testl	%eax, %eax
	je	.L347
	.loc 2 1722 7
	leaq	-48(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_divexact@PLT
	.loc 2 1724 12
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	mp_prime_p
	.loc 2 1724 11
	xorl	$1, %eax
	.loc 2 1724 10
	testb	%al, %al
	je	.L341
	.loc 2 1726 11
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L342
	.loc 2 1726 11 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	movl	$1, %esi
	leaq	.LC34(%rip), %rdi
	call	fwrite@PLT
.L342:
	.loc 2 1727 11 is_stmt 1
	movq	-160(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-168(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mp_factor_using_pollard_rho
	jmp	.L343
.L341:
	.loc 2 1731 11
	leaq	-48(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mp_factor_insert
.L343:
	.loc 2 1734 11
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	mp_prime_p
	.loc 2 1734 10
	testb	%al, %al
	je	.L344
	.loc 2 1736 11
	movq	-152(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mp_factor_insert
	.loc 2 1737 11
	jmp	.L345
.L344:
	.loc 2 1740 7
	movq	-152(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mod@PLT
	.loc 2 1741 7
	movq	-152(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mod@PLT
	.loc 2 1742 7
	movq	-152(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_mod@PLT
.L334:
	.loc 2 1674 10
	movq	-152(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mpz_cmp_ui@PLT
	.loc 2 1674 9
	testl	%eax, %eax
	jne	.L338
.L345:
	.loc 2 1745 3
	leaq	-112(%rbp), %r8
	leaq	-96(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	pushq	$0
	leaq	-80(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movq	mpz_clear@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	mpz_va_init
	addq	$16, %rsp
	.loc 2 1746 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L346
	call	__stack_chk_fail@PLT
.L346:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	mp_factor_using_pollard_rho, .-mp_factor_using_pollard_rho
	.type	factor, @function
factor:
.LFB72:
	.loc 2 2208 1
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
	.loc 2 2209 21
	movq	-24(%rbp), %rax
	movb	$0, 250(%rax)
	.loc 2 2210 22
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 2212 10
	movq	-8(%rbp), %rax
	.loc 2 2212 6
	testq	%rax, %rax
	jne	.L349
	.loc 2 2212 15 discriminator 1
	cmpq	$1, -16(%rbp)
	jbe	.L354
.L349:
	.loc 2 2215 8
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	factor_using_division
	movq	%rax, -16(%rbp)
	.loc 2 2217 10
	movq	-8(%rbp), %rax
	.loc 2 2217 6
	testq	%rax, %rax
	jne	.L351
	.loc 2 2217 15 discriminator 1
	cmpq	$1, -16(%rbp)
	jbe	.L355
.L351:
	.loc 2 2220 7
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	prime2_p
	.loc 2 2220 6
	testb	%al, %al
	je	.L352
	.loc 2 2221 5
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor_insert_large
	jmp	.L348
.L352:
	.loc 2 2229 14
	movq	-8(%rbp), %rax
	.loc 2 2229 10
	testq	%rax, %rax
	jne	.L353
	.loc 2 2230 9
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	factor_using_pollard_rho
	jmp	.L348
.L353:
	.loc 2 2232 9
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	factor_using_pollard_rho2
	jmp	.L348
.L354:
	.loc 2 2213 5
	nop
	jmp	.L348
.L355:
	.loc 2 2218 5
	nop
.L348:
	.loc 2 2234 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	factor, .-factor
	.section	.rodata
.LC35:
	.string	"[is number prime?] "
	.text
	.type	mp_factor, @function
mp_factor:
.LFB73:
	.loc 2 2240 1
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
	.loc 2 2241 3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	mp_factor_init
	.loc 2 2243 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mpz_sgn@PLT
	.loc 2 2243 6
	testl	%eax, %eax
	je	.L360
	.loc 2 2245 7
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mp_factor_using_division
	.loc 2 2247 11
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mpz_cmp_ui@PLT
	.loc 2 2247 10
	testl	%eax, %eax
	je	.L360
	.loc 2 2249 11
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L358
	.loc 2 2249 11 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	movl	$1, %esi
	leaq	.LC35(%rip), %rdi
	call	fwrite@PLT
.L358:
	.loc 2 2250 15 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mp_prime_p
	.loc 2 2250 14
	testb	%al, %al
	je	.L359
	.loc 2 2251 13
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mp_factor_insert
	.loc 2 2256 1
	jmp	.L360
.L359:
	.loc 2 2253 13
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mp_factor_using_pollard_rho
.L360:
	.loc 2 2256 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	mp_factor, .-mp_factor
	.type	strto2uintmax, @function
strto2uintmax:
.LFB74:
	.loc 2 2260 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 2262 13
	movq	$0, -24(%rbp)
	.loc 2 2262 21
	movq	$0, -16(%rbp)
	.loc 2 2264 16
	movl	$4, -40(%rbp)
	.loc 2 2267 15
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.L365:
.LBB65:
	.loc 2 2270 26
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2270 24
	movzbl	(%rax), %eax
	.loc 2 2270 20
	movsbl	%al, %eax
	movl	%eax, -36(%rbp)
	.loc 2 2271 10
	cmpl	$0, -36(%rbp)
	je	.L372
	.loc 2 2274 11
	movl	-36(%rbp), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	seta	%al
	movzbl	%al, %eax
	.loc 2 2274 10
	testq	%rax, %rax
	je	.L364
	.loc 2 2276 15
	movl	$4, -40(%rbp)
	.loc 2 2277 11
	jmp	.L363
.L364:
	.loc 2 2280 11
	movl	$0, -40(%rbp)
.LBE65:
	.loc 2 2269 5
	jmp	.L365
.L372:
.LBB66:
	.loc 2 2272 9
	nop
.L363:
.LBE66:
	.loc 2 2283 9 discriminator 1
	jmp	.L366
.L370:
.LBB67:
	.loc 2 2285 26
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 2 2285 24
	movzbl	(%rax), %eax
	.loc 2 2285 20
	movsbl	%al, %eax
	movl	%eax, -32(%rbp)
	.loc 2 2286 10
	cmpl	$0, -32(%rbp)
	je	.L373
	.loc 2 2289 9
	subl	$48, -32(%rbp)
	.loc 2 2291 11
	movabsq	$1844674407370955161, %rax
	cmpq	%rax, -24(%rbp)
	seta	%al
	movzbl	%al, %eax
	.loc 2 2291 10
	testq	%rax, %rax
	je	.L369
	.loc 2 2293 15
	movl	$1, -40(%rbp)
	.loc 2 2294 11
	jmp	.L368
.L369:
	.loc 2 2296 10
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, -24(%rbp)
	.loc 2 2298 22
	movq	-16(%rbp), %rax
	shrq	$61, %rax
	.loc 2 2298 44
	movl	%eax, %edx
	.loc 2 2298 50
	movq	-16(%rbp), %rax
	shrq	$63, %rax
	.loc 2 2298 16
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	.loc 2 2299 22
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	.loc 2 2299 31
	movq	-16(%rbp), %rax
	addq	%rax, %rax
	.loc 2 2299 27
	cmpq	%rax, %rdx
	setb	%al
	movzbl	%al, %eax
	.loc 2 2299 16
	addl	%eax, -28(%rbp)
	.loc 2 2301 10
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, -16(%rbp)
	.loc 2 2302 10
	movl	-32(%rbp), %eax
	addq	%rax, -16(%rbp)
	.loc 2 2304 22
	movl	-32(%rbp), %eax
	cmpq	%rax, -16(%rbp)
	setb	%al
	movzbl	%al, %eax
	.loc 2 2304 16
	addl	%eax, -28(%rbp)
	.loc 2 2305 10
	movl	-28(%rbp), %eax
	addq	%rax, -24(%rbp)
	.loc 2 2306 11
	movl	-28(%rbp), %eax
	cmpq	%rax, -24(%rbp)
	setb	%al
	movzbl	%al, %eax
	.loc 2 2306 10
	testq	%rax, %rax
	je	.L366
	.loc 2 2308 15
	movl	$1, -40(%rbp)
	.loc 2 2309 11
	jmp	.L368
.L366:
.LBE67:
	.loc 2 2283 9
	cmpl	$0, -40(%rbp)
	je	.L370
	jmp	.L368
.L373:
.LBB68:
	.loc 2 2287 9
	nop
.L368:
.LBE68:
	.loc 2 2313 8
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 2314 8
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 2316 10
	movl	-40(%rbp), %eax
	.loc 2 2317 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	strto2uintmax, .-strto2uintmax
	.local	lbuf
	.comm	lbuf,16,16
	.type	lbuf_alloc, @function
lbuf_alloc:
.LFB75:
	.loc 2 2336 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 2337 11
	movq	lbuf(%rip), %rax
	.loc 2 2337 6
	testq	%rax, %rax
	jne	.L377
	.loc 2 2342 14
	movl	$1024, %edi
	call	xmalloc@PLT
	.loc 2 2342 12
	movq	%rax, lbuf(%rip)
	.loc 2 2343 18
	movq	lbuf(%rip), %rax
	.loc 2 2343 12
	movq	%rax, 8+lbuf(%rip)
	jmp	.L374
.L377:
	.loc 2 2338 5
	nop
.L374:
	.loc 2 2344 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	lbuf_alloc, .-lbuf_alloc
	.section	.rodata
.LC36:
	.string	"write error"
.LC37:
	.string	"%s"
	.text
	.type	lbuf_flush, @function
lbuf_flush:
.LFB76:
	.loc 2 2349 1
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
	.loc 2 2350 21
	movq	8+lbuf(%rip), %rdx
	.loc 2 2350 32
	movq	lbuf(%rip), %rax
	.loc 2 2350 26
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 2350 10
	movq	%rax, -24(%rbp)
	.loc 2 2351 38
	movq	lbuf(%rip), %rax
	.loc 2 2351 7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movl	$1, %edi
	call	full_write@PLT
	.loc 2 2351 6
	cmpq	%rax, -24(%rbp)
	je	.L379
.LBB69:
	.loc 2 2352 5
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L379:
.LBE69:
	.loc 2 2353 18
	movq	lbuf(%rip), %rax
	.loc 2 2353 12
	movq	%rax, 8+lbuf(%rip)
	.loc 2 2354 1
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	lbuf_flush, .-lbuf_flush
	.type	lbuf_putc, @function
lbuf_putc:
.LFB77:
	.loc 2 2361 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movb	%al, -36(%rbp)
	.loc 2 2362 8
	movq	8+lbuf(%rip), %rax
	.loc 2 2362 12
	leaq	1(%rax), %rdx
	movq	%rdx, 8+lbuf(%rip)
	.loc 2 2362 15
	movzbl	-36(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 2364 6
	cmpb	$10, -36(%rbp)
	jne	.L388
.LBB70:
	.loc 2 2366 29
	movq	8+lbuf(%rip), %rdx
	.loc 2 2366 40
	movq	lbuf(%rip), %rax
	.loc 2 2366 34
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 2366 14
	movq	%rax, -16(%rbp)
	.loc 2 2370 25
	movl	line_buffered.7542(%rip), %eax
	.loc 2 2370 10
	cmpl	$-1, %eax
	jne	.L382
	.loc 2 2371 25
	movl	$0, %edi
	call	isatty@PLT
	.loc 2 2371 47
	testl	%eax, %eax
	jne	.L383
	.loc 2 2371 50 discriminator 2
	movl	$1, %edi
	call	isatty@PLT
	.loc 2 2371 47 discriminator 2
	testl	%eax, %eax
	je	.L384
.L383:
	.loc 2 2371 47 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L385
.L384:
	.loc 2 2371 47 discriminator 4
	movl	$0, %eax
.L385:
	.loc 2 2371 23 is_stmt 1 discriminator 6
	movl	%eax, line_buffered.7542(%rip)
.L382:
	.loc 2 2372 11
	movl	line_buffered.7542(%rip), %eax
	.loc 2 2372 10
	testl	%eax, %eax
	je	.L386
	.loc 2 2373 9
	call	lbuf_flush
.LBE70:
	.loc 2 2394 1
	jmp	.L388
.L386:
.LBB72:
	.loc 2 2374 15
	cmpq	$511, -16(%rbp)
	jbe	.L388
.LBB71:
	.loc 2 2378 23
	movq	8+lbuf(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2382 29
	movq	lbuf(%rip), %rax
	.loc 2 2382 17
	addq	$512, %rax
	movq	%rax, -24(%rbp)
.L387:
	.loc 2 2383 17 discriminator 1
	subq	$1, -24(%rbp)
	.loc 2 2383 18 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2383 17 discriminator 1
	cmpb	$10, %al
	jne	.L387
	.loc 2 2384 16
	addq	$1, -24(%rbp)
	.loc 2 2386 20
	movq	-24(%rbp), %rax
	movq	%rax, 8+lbuf(%rip)
	.loc 2 2387 11
	call	lbuf_flush
	.loc 2 2390 41
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 2 2390 11
	movq	%rax, %rdx
	.loc 2 2390 23
	movq	lbuf(%rip), %rax
	.loc 2 2390 11
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 2391 26
	movq	lbuf(%rip), %rdx
	.loc 2 2391 39
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 2 2391 31
	addq	%rdx, %rax
	.loc 2 2391 20
	movq	%rax, 8+lbuf(%rip)
.L388:
.LBE71:
.LBE72:
	.loc 2 2394 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	lbuf_putc, .-lbuf_putc
	.type	lbuf_putint, @function
lbuf_putint:
.LFB78:
	.loc 2 2399 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 2399 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 2401 25
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, -48(%rbp)
	.loc 2 2402 42
	leaq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 2402 10
	movl	$20, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 2 2403 10
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 2 2405 3
	jmp	.L390
.L391:
	.loc 2 2406 10 discriminator 2
	movq	8+lbuf(%rip), %rax
	.loc 2 2406 14 discriminator 2
	leaq	1(%rax), %rdx
	movq	%rdx, 8+lbuf(%rip)
	.loc 2 2406 17 discriminator 2
	movb	$48, (%rax)
	.loc 2 2405 26 discriminator 2
	addq	$1, -56(%rbp)
.L390:
	.loc 2 2405 3 discriminator 1
	movq	-56(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L391
	.loc 2 2408 15
	movq	8+lbuf(%rip), %rax
	.loc 2 2408 3
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 2409 12
	movq	8+lbuf(%rip), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 8+lbuf(%rip)
	.loc 2 2410 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L392
	call	__stack_chk_fail@PLT
.L392:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	lbuf_putint, .-lbuf_putint
	.section	.rodata
.LC38:
	.string	"(r) < (1000000000)"
	.text
	.type	print_uintmaxes, @function
print_uintmaxes:
.LFB79:
	.loc 2 2414 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 2417 6
	cmpq	$0, -72(%rbp)
	jne	.L394
	.loc 2 2418 5
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	lbuf_putint
	.loc 2 2429 1
	jmp	.L401
.L394:
	.loc 2 2423 9
	movq	-72(%rbp), %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movq	%rax, -16(%rbp)
	.loc 2 2424 9
	movq	-72(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	imulq	$1000000000, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB73:
	.loc 2 2425 7
	cmpq	$999999999, -8(%rbp)
	jbe	.L396
	.loc 2 2425 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7570(%rip), %rcx
	movl	$2425, %edx
	leaq	.LC21(%rip), %rsi
	leaq	.LC38(%rip), %rdi
	call	__assert_fail@PLT
.L396:
	.loc 2 2425 7
	movq	$1000000000, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
.LBB74:
	movl	$64, -60(%rbp)
	jmp	.L397
.L400:
	.loc 2 2425 7 discriminator 11
	movq	-56(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -48(%rbp)
	shrq	-56(%rbp)
	salq	-40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	ja	.L398
	.loc 2 2425 7 discriminator 4
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L399
	.loc 2 2425 7 discriminator 5
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L399
.L398:
	.loc 2 2425 7 discriminator 7
	addq	$1, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 2425 "src/factor.c" 1
	subq -48(%rbp),%rax
	sbbq -56(%rbp),%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
.L399:
	.loc 2 2425 7 discriminator 9
	subl	$1, -60(%rbp)
.L397:
	.loc 2 2425 7 discriminator 10
	cmpl	$0, -60(%rbp)
	jne	.L400
.LBE74:
	.loc 2 2425 7 discriminator 12
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBE73:
	.loc 2 2426 7 is_stmt 1 discriminator 12
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_uintmaxes
	.loc 2 2427 7 discriminator 12
	movq	-8(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	lbuf_putint
.L401:
	.loc 2 2429 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	print_uintmaxes, .-print_uintmaxes
	.type	print_factors_single, @function
print_factors_single:
.LFB80:
	.loc 2 2434 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	.loc 2 2434 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 2437 3
	movq	-304(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_uintmaxes
	.loc 2 2438 3
	movl	$58, %edi
	call	lbuf_putc
	.loc 2 2440 3
	leaq	-272(%rbp), %rdx
	movq	-304(%rbp), %rcx
	movq	-296(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	factor
.LBB75:
	.loc 2 2442 21
	movl	$0, -280(%rbp)
	.loc 2 2442 3
	jmp	.L403
.L406:
.LBB76:
	.loc 2 2443 23
	movl	$0, -276(%rbp)
	.loc 2 2443 5
	jmp	.L404
.L405:
	.loc 2 2445 9 discriminator 3
	movl	$32, %edi
	call	lbuf_putc
	.loc 2 2446 9 discriminator 3
	movl	-280(%rbp), %eax
	addq	$2, %rax
	movq	-272(%rbp,%rax,8), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	print_uintmaxes
	.loc 2 2443 49 discriminator 3
	addl	$1, -276(%rbp)
.L404:
	.loc 2 2443 43 discriminator 1
	movl	-280(%rbp), %eax
	movzbl	-48(%rbp,%rax), %eax
	movzbl	%al, %eax
	.loc 2 2443 5 discriminator 1
	cmpl	%eax, -276(%rbp)
	jb	.L405
.LBE76:
	.loc 2 2442 51 discriminator 2
	addl	$1, -280(%rbp)
.L403:
	.loc 2 2442 39 discriminator 1
	movzbl	-22(%rbp), %eax
	movzbl	%al, %eax
	.loc 2 2442 3 discriminator 1
	cmpl	%eax, -280(%rbp)
	jb	.L406
.LBE75:
	.loc 2 2449 21
	movq	-264(%rbp), %rax
	.loc 2 2449 6
	testq	%rax, %rax
	je	.L407
	.loc 2 2451 7
	movl	$32, %edi
	call	lbuf_putc
	.loc 2 2452 7
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_uintmaxes
.L407:
	.loc 2 2455 3
	movl	$10, %edi
	call	lbuf_putc
	.loc 2 2456 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L408
	call	__stack_chk_fail@PLT
.L408:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	print_factors_single, .-print_factors_single
	.section	.rodata
	.align 8
.LC39:
	.string	"[using single-precision arithmetic] "
	.align 8
.LC40:
	.string	"%s is not a valid positive integer"
	.align 8
.LC41:
	.string	"[using arbitrary-precision arithmetic] "
	.text
	.type	print_factors, @function
print_factors:
.LFB81:
	.loc 2 2465 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	.loc 2 2465 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 2467 15
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 2 2468 9
	jmp	.L410
.L411:
	.loc 2 2469 8
	addq	$1, -88(%rbp)
.L410:
	.loc 2 2468 10
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2468 9
	cmpb	$32, %al
	je	.L411
	.loc 2 2470 10
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 2470 15
	cmpb	$43, %al
	sete	%al
	movzbl	%al, %eax
	.loc 2 2470 7
	addq	%rax, -88(%rbp)
	.loc 2 2478 22
	movq	-88(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strto2uintmax
	movl	%eax, -108(%rbp)
	.loc 2 2480 3
	cmpl	$0, -108(%rbp)
	je	.L412
	cmpl	$1, -108(%rbp)
	je	.L427
	jmp	.L426
.L412:
	.loc 2 2483 22
	movq	-104(%rbp), %rax
	movabsq	$9223372036854775807, %rdx
	andq	%rax, %rdx
	.loc 2 2483 28
	movq	-104(%rbp), %rax
	.loc 2 2483 10
	cmpq	%rax, %rdx
	jne	.L428
	.loc 2 2485 11
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L416
	.loc 2 2485 11 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	leaq	.LC39(%rip), %rdi
	call	fwrite@PLT
.L416:
	.loc 2 2486 11 is_stmt 1
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_factors_single
	.loc 2 2487 18
	movl	$1, %eax
	jmp	.L424
.L426:
	.loc 2 2496 7
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 2496 20
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 2 2496 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 2497 14
	movl	$0, %eax
	jmp	.L424
.L427:
	.loc 2 2493 7
	nop
	jmp	.L418
.L428:
	.loc 2 2489 7
	nop
.L418:
	.loc 2 2500 3
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L419
	.loc 2 2500 3 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	movl	$1, %esi
	leaq	.LC41(%rip), %rdi
	call	fwrite@PLT
.L419:
	.loc 2 2504 3 is_stmt 1
	movq	-88(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpz_init_set_str@PLT
	.loc 2 2506 3
	movq	stdout(%rip), %rax
	leaq	-48(%rbp), %rdx
	movl	$10, %esi
	movq	%rax, %rdi
	call	mpz_out_str@PLT
	.loc 2 2507 3
	movl	$58, %edi
	call	putchar_unlocked@PLT
	.loc 2 2508 3
	leaq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mp_factor
.LBB77:
	.loc 2 2510 21
	movl	$0, -116(%rbp)
	.loc 2 2510 3
	jmp	.L420
.L423:
.LBB78:
	.loc 2 2511 23
	movl	$0, -112(%rbp)
	.loc 2 2511 5
	jmp	.L421
.L422:
	.loc 2 2513 9 discriminator 3
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 2 2514 41 discriminator 3
	movq	-80(%rbp), %rax
	.loc 2 2514 43 discriminator 3
	movl	-116(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	.loc 2 2514 9 discriminator 3
	movq	stdout(%rip), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	mpz_out_str@PLT
	.loc 2 2511 49 discriminator 3
	addl	$1, -112(%rbp)
.L421:
	.loc 2 2511 32 discriminator 1
	movl	-112(%rbp), %edx
	.loc 2 2511 41 discriminator 1
	movq	-72(%rbp), %rax
	.loc 2 2511 43 discriminator 1
	movl	-116(%rbp), %ecx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	.loc 2 2511 5 discriminator 1
	cmpq	%rax, %rdx
	jb	.L422
.LBE78:
	.loc 2 2510 51 discriminator 2
	addl	$1, -116(%rbp)
.L420:
	.loc 2 2510 30 discriminator 1
	movl	-116(%rbp), %edx
	.loc 2 2510 39 discriminator 1
	movq	-64(%rbp), %rax
	.loc 2 2510 3 discriminator 1
	cmpq	%rax, %rdx
	jb	.L423
.LBE77:
	.loc 2 2517 3
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	mp_factor_clear
	.loc 2 2518 3
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	mpz_clear@PLT
	.loc 2 2519 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 2520 3
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush_unlocked@PLT
	.loc 2 2521 10
	movl	$1, %eax
.L424:
	.loc 2 2522 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L425
	.loc 2 2522 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L425:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	print_factors, .-print_factors
	.section	.rodata
	.align 8
.LC42:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC43:
	.string	"Usage: %s [NUMBER]...\n  or:  %s OPTION\n"
	.align 8
.LC44:
	.string	"Print the prime factors of each specified integer NUMBER.  If none\nare specified on the command line, read them from standard input.\n\n"
	.align 8
.LC45:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC46:
	.string	"      --version  output version information and exit\n"
.LC47:
	.string	"factor"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB82:
	.loc 2 2526 1 is_stmt 1
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
	.loc 2 2527 6
	cmpl	$0, -20(%rbp)
	je	.L430
	.loc 2 2528 5
	movq	program_name(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L431
.L430:
	.loc 2 2531 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 2531 15
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	.loc 2 2531 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 2536 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2541 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2542 7
	movq	stdout(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 2543 7
	leaq	.LC47(%rip), %rdi
	call	emit_ancillary_info
.L431:
	.loc 2 2545 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE82:
	.size	usage, .-usage
	.section	.rodata
.LC48:
	.string	"\n\t "
	.text
	.type	do_stdin, @function
do_stdin:
.LFB83:
	.loc 2 2550 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 2550 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 2551 8
	movb	$1, -41(%rbp)
	.loc 2 2554 3
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	init_tokenbuffer@PLT
.L435:
.LBB79:
	.loc 2 2558 29
	movq	stdin(%rip), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$3, %edx
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	call	readtoken@PLT
	movq	%rax, -40(%rbp)
	.loc 2 2560 10
	cmpq	$-1, -40(%rbp)
	je	.L439
	.loc 2 2562 39
	movq	-24(%rbp), %rax
	.loc 2 2562 13
	movq	%rax, %rdi
	call	print_factors
	.loc 2 2562 10
	movzbl	-41(%rbp), %edx
	.loc 2 2562 13
	movzbl	%al, %eax
	.loc 2 2562 10
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -41(%rbp)
.LBE79:
	.loc 2 2557 5
	jmp	.L435
.L439:
.LBB80:
	.loc 2 2561 9
	nop
.LBE80:
	.loc 2 2564 20
	movq	-24(%rbp), %rax
	.loc 2 2564 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 2566 10
	movzbl	-41(%rbp), %eax
	.loc 2 2567 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L437
	call	__stack_chk_fail@PLT
.L437:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	do_stdin, .-do_stdin
	.section	.rodata
.LC49:
	.string	"/usr/local/share/locale"
.LC50:
	.string	"Niels M\303\266ller"
.LC51:
	.string	"Niels Moller"
.LC52:
	.string	"Torbj\303\266rn Granlund"
.LC53:
	.string	"Torbjorn Granlund"
.LC54:
	.string	"Paul Rubin"
	.text
	.globl	main
	.type	main, @function
main:
.LFB84:
	.loc 2 2571 1
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
	.loc 2 2573 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 2574 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 2575 3
	leaq	.LC49(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 2576 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 2578 3
	call	lbuf_alloc
	.loc 2 2579 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 2580 3
	leaq	lbuf_flush(%rip), %rdi
	call	atexit@PLT
	.loc 2 2583 9
	jmp	.L441
.L446:
	.loc 2 2585 7
	cmpl	$128, -20(%rbp)
	je	.L442
	cmpl	$128, -20(%rbp)
	jg	.L443
	cmpl	$-131, -20(%rbp)
	je	.L444
	cmpl	$-130, -20(%rbp)
	je	.L445
	jmp	.L443
.L442:
	.loc 2 2588 21
	movb	$1, dev_debug(%rip)
	.loc 2 2589 11
	jmp	.L441
.L445:
	.loc 2 2591 9
	movl	$0, %edi
	call	usage
.L444:
	.loc 2 2593 9
	leaq	.LC50(%rip), %rsi
	leaq	.LC51(%rip), %rdi
	call	proper_name_utf8@PLT
	movq	%rax, %rbx
	leaq	.LC52(%rip), %rsi
	leaq	.LC53(%rip), %rdi
	call	proper_name_utf8@PLT
	movq	%rax, %rcx
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	pushq	%rbx
	movq	%rcx, %r9
	leaq	.LC54(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L443:
	.loc 2 2596 11
	movl	$1, %edi
	call	usage
.L441:
	.loc 2 2583 15
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -20(%rbp)
	.loc 2 2583 9
	cmpl	$-1, -20(%rbp)
	jne	.L446
	.loc 2 2605 12
	movl	optind(%rip), %eax
	.loc 2 2605 6
	cmpl	%eax, -36(%rbp)
	jg	.L447
	.loc 2 2606 10
	call	do_stdin
	movb	%al, -25(%rbp)
	jmp	.L448
.L447:
	.loc 2 2609 10
	movb	$1, -25(%rbp)
.LBB81:
	.loc 2 2610 16
	movl	optind(%rip), %eax
	movl	%eax, -24(%rbp)
	.loc 2 2610 7
	jmp	.L449
.L451:
	.loc 2 2611 34
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2611 15
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	print_factors
	.loc 2 2611 13
	xorl	$1, %eax
	.loc 2 2611 12
	testb	%al, %al
	je	.L450
	.loc 2 2612 14
	movb	$0, -25(%rbp)
.L450:
	.loc 2 2610 39 discriminator 2
	addl	$1, -24(%rbp)
.L449:
	.loc 2 2610 7 discriminator 1
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L451
.L448:
.LBE81:
	.loc 2 2630 28
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 2631 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.6955, @object
	.size	__PRETTY_FUNCTION__.6955, 5
__PRETTY_FUNCTION__.6955:
	.string	"mod2"
	.align 8
	.type	__PRETTY_FUNCTION__.6981, @object
	.size	__PRETTY_FUNCTION__.6981, 9
__PRETTY_FUNCTION__.6981:
	.string	"gcd2_odd"
	.align 16
	.type	__PRETTY_FUNCTION__.7012, @object
	.size	__PRETTY_FUNCTION__.7012, 20
__PRETTY_FUNCTION__.7012:
	.string	"factor_insert_large"
	.align 8
	.type	__PRETTY_FUNCTION__.7159, @object
	.size	__PRETTY_FUNCTION__.7159, 9
__PRETTY_FUNCTION__.7159:
	.string	"mulredc2"
	.align 8
	.type	__PRETTY_FUNCTION__.7261, @object
	.size	__PRETTY_FUNCTION__.7261, 8
__PRETTY_FUNCTION__.7261:
	.string	"prime_p"
	.align 16
	.type	__PRETTY_FUNCTION__.7383, @object
	.size	__PRETTY_FUNCTION__.7383, 25
__PRETTY_FUNCTION__.7383:
	.string	"factor_using_pollard_rho"
	.data
	.align 4
	.type	line_buffered.7542, @object
	.size	line_buffered.7542, 4
line_buffered.7542:
	.long	-1
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.7570, @object
	.size	__PRETTY_FUNCTION__.7570, 16
__PRETTY_FUNCTION__.7570:
	.string	"print_uintmaxes"
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.file 7 "<built-in>"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 14 "./lib/sys/select.h"
	.file 15 "./lib/mini-gmp.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/signal.h"
	.file 18 "/usr/include/unistd.h"
	.file 19 "/usr/include/errno.h"
	.file 20 "src/version.h"
	.file 21 "./lib/exitfail.h"
	.file 22 "/usr/include/stdint.h"
	.file 23 "./lib/timespec.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/quote.h"
	.file 29 "./lib/readtokens.h"
	.file 30 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2cb9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF232
	.byte	0xc
	.long	.LASF233
	.long	.LASF234
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
	.uleb128 0x5
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
	.long	.LASF26
	.byte	0x20
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.long	0xc2
	.uleb128 0x9
	.long	.LASF5
	.byte	0x4
	.byte	0x34
	.byte	0xf
	.long	0xc7
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
	.long	0xd2
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
	.long	0x80
	.uleb128 0x3
	.byte	0x8
	.long	0x46
	.uleb128 0x5
	.long	0xc7
	.uleb128 0x3
	.byte	0x8
	.long	0x57
	.uleb128 0xb
	.long	.LASF9
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0xe4
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0xb
	.long	.LASF10
	.byte	0x6
	.byte	0x28
	.byte	0x1b
	.long	0xf7
	.uleb128 0xc
	.long	.LASF235
	.long	0x100
	.uleb128 0xd
	.long	0x110
	.long	0x110
	.uleb128 0xe
	.long	0xe4
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF236
	.byte	0x18
	.byte	0x7
	.byte	0
	.long	0x14d
	.uleb128 0x10
	.long	.LASF11
	.byte	0x7
	.byte	0
	.long	0x14d
	.byte	0
	.uleb128 0x10
	.long	.LASF12
	.byte	0x7
	.byte	0
	.long	0x14d
	.byte	0x4
	.uleb128 0x10
	.long	.LASF13
	.byte	0x7
	.byte	0
	.long	0x154
	.byte	0x8
	.uleb128 0x10
	.long	.LASF14
	.byte	0x7
	.byte	0
	.long	0x154
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF15
	.uleb128 0x11
	.byte	0x8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF16
	.uleb128 0x5
	.long	0x156
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF17
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF19
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF20
	.uleb128 0xb
	.long	.LASF21
	.byte	0x8
	.byte	0x48
	.byte	0x12
	.long	0x177
	.uleb128 0xb
	.long	.LASF22
	.byte	0x8
	.byte	0x49
	.byte	0x1b
	.long	0xe4
	.uleb128 0xb
	.long	.LASF23
	.byte	0x8
	.byte	0x98
	.byte	0x19
	.long	0x177
	.uleb128 0xb
	.long	.LASF24
	.byte	0x8
	.byte	0x99
	.byte	0x1b
	.long	0x177
	.uleb128 0xb
	.long	.LASF25
	.byte	0x8
	.byte	0xa0
	.byte	0x1a
	.long	0x177
	.uleb128 0x8
	.long	.LASF27
	.byte	0xd8
	.byte	0x9
	.byte	0x31
	.byte	0x8
	.long	0x341
	.uleb128 0x9
	.long	.LASF28
	.byte	0x9
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF29
	.byte	0x9
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF30
	.byte	0x9
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF31
	.byte	0x9
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF32
	.byte	0x9
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF33
	.byte	0x9
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF34
	.byte	0x9
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF35
	.byte	0x9
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF36
	.byte	0x9
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF37
	.byte	0x9
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF38
	.byte	0x9
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF39
	.byte	0x9
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF40
	.byte	0x9
	.byte	0x44
	.byte	0x16
	.long	0x35a
	.byte	0x60
	.uleb128 0x9
	.long	.LASF41
	.byte	0x9
	.byte	0x46
	.byte	0x14
	.long	0x360
	.byte	0x68
	.uleb128 0x9
	.long	.LASF42
	.byte	0x9
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF43
	.byte	0x9
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF44
	.byte	0x9
	.byte	0x4a
	.byte	0xb
	.long	0x196
	.byte	0x78
	.uleb128 0x9
	.long	.LASF45
	.byte	0x9
	.byte	0x4d
	.byte	0x12
	.long	0x162
	.byte	0x80
	.uleb128 0x9
	.long	.LASF46
	.byte	0x9
	.byte	0x4e
	.byte	0xf
	.long	0x169
	.byte	0x82
	.uleb128 0x9
	.long	.LASF47
	.byte	0x9
	.byte	0x4f
	.byte	0x8
	.long	0x366
	.byte	0x83
	.uleb128 0x9
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.byte	0xf
	.long	0x376
	.byte	0x88
	.uleb128 0x9
	.long	.LASF49
	.byte	0x9
	.byte	0x59
	.byte	0xd
	.long	0x1a2
	.byte	0x90
	.uleb128 0x9
	.long	.LASF50
	.byte	0x9
	.byte	0x5b
	.byte	0x17
	.long	0x381
	.byte	0x98
	.uleb128 0x9
	.long	.LASF51
	.byte	0x9
	.byte	0x5c
	.byte	0x19
	.long	0x38c
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF52
	.byte	0x9
	.byte	0x5d
	.byte	0x14
	.long	0x360
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF53
	.byte	0x9
	.byte	0x5e
	.byte	0x9
	.long	0x154
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF54
	.byte	0x9
	.byte	0x5f
	.byte	0xa
	.long	0xd8
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF55
	.byte	0x9
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x9
	.byte	0x62
	.byte	0x8
	.long	0x392
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF57
	.byte	0xa
	.byte	0x7
	.byte	0x19
	.long	0x1ba
	.uleb128 0x12
	.long	.LASF237
	.byte	0x9
	.byte	0x2b
	.byte	0xe
	.uleb128 0x13
	.long	.LASF58
	.uleb128 0x3
	.byte	0x8
	.long	0x355
	.uleb128 0x3
	.byte	0x8
	.long	0x1ba
	.uleb128 0xd
	.long	0x3f
	.long	0x376
	.uleb128 0xe
	.long	0xe4
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x34d
	.uleb128 0x13
	.long	.LASF59
	.uleb128 0x3
	.byte	0x8
	.long	0x37c
	.uleb128 0x13
	.long	.LASF60
	.uleb128 0x3
	.byte	0x8
	.long	0x387
	.uleb128 0xd
	.long	0x3f
	.long	0x3a2
	.uleb128 0xe
	.long	0xe4
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.long	.LASF61
	.byte	0xb
	.byte	0x34
	.byte	0x18
	.long	0xeb
	.uleb128 0x2
	.long	.LASF62
	.byte	0xb
	.byte	0x89
	.byte	0xe
	.long	0x3ba
	.uleb128 0x3
	.byte	0x8
	.long	0x341
	.uleb128 0x2
	.long	.LASF63
	.byte	0xb
	.byte	0x8a
	.byte	0xe
	.long	0x3ba
	.uleb128 0x2
	.long	.LASF64
	.byte	0xb
	.byte	0x8b
	.byte	0xe
	.long	0x3ba
	.uleb128 0x2
	.long	.LASF65
	.byte	0xc
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	0xcd
	.long	0x3ef
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.long	0x3e4
	.uleb128 0x2
	.long	.LASF66
	.byte	0xc
	.byte	0x1b
	.byte	0x1a
	.long	0x3ef
	.uleb128 0x2
	.long	.LASF67
	.byte	0xc
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF68
	.byte	0xc
	.byte	0x1f
	.byte	0x1a
	.long	0x3ef
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF69
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF70
	.uleb128 0xb
	.long	.LASF71
	.byte	0xd
	.byte	0x7
	.byte	0x12
	.long	0x1ae
	.uleb128 0x15
	.long	.LASF72
	.byte	0xe
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF73
	.uleb128 0xb
	.long	.LASF74
	.byte	0xf
	.byte	0x3c
	.byte	0x25
	.long	0xe4
	.uleb128 0x3
	.byte	0x8
	.long	0x446
	.uleb128 0x16
	.byte	0x10
	.byte	0xf
	.byte	0x43
	.byte	0x9
	.long	0x489
	.uleb128 0x9
	.long	.LASF75
	.byte	0xf
	.byte	0x45
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0xf
	.byte	0x47
	.byte	0x7
	.long	0x57
	.byte	0x4
	.uleb128 0x9
	.long	.LASF77
	.byte	0xf
	.byte	0x4a
	.byte	0xe
	.long	0x452
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF78
	.byte	0xf
	.byte	0x4b
	.byte	0x3
	.long	0x458
	.uleb128 0x5
	.long	0x489
	.uleb128 0xb
	.long	.LASF79
	.byte	0xf
	.byte	0x4d
	.byte	0x16
	.long	0x4a6
	.uleb128 0xd
	.long	0x489
	.long	0x4b6
	.uleb128 0xe
	.long	0xe4
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF80
	.byte	0xf
	.byte	0x4f
	.byte	0x17
	.long	0x4c2
	.uleb128 0x3
	.byte	0x8
	.long	0x489
	.uleb128 0xb
	.long	.LASF81
	.byte	0xf
	.byte	0x50
	.byte	0x1d
	.long	0x4d4
	.uleb128 0x3
	.byte	0x8
	.long	0x495
	.uleb128 0x2
	.long	.LASF82
	.byte	0xf
	.byte	0x52
	.byte	0x12
	.long	0x63
	.uleb128 0xd
	.long	0x39
	.long	0x4f6
	.uleb128 0xe
	.long	0xe4
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF83
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x4e6
	.uleb128 0x2
	.long	.LASF84
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF85
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x177
	.uleb128 0x2
	.long	.LASF86
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x4e6
	.uleb128 0x2
	.long	.LASF87
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF88
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x177
	.uleb128 0x15
	.long	.LASF89
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x17
	.uleb128 0x3
	.byte	0x8
	.long	0x54b
	.uleb128 0xd
	.long	0xcd
	.long	0x562
	.uleb128 0xe
	.long	0xe4
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x552
	.uleb128 0x15
	.long	.LASF90
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x562
	.uleb128 0x15
	.long	.LASF91
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x562
	.uleb128 0x15
	.long	.LASF92
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x58e
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x15
	.long	.LASF93
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x58e
	.uleb128 0x2
	.long	.LASF94
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF95
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF96
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0xc7
	.uleb128 0x2
	.long	.LASF97
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xb
	.long	.LASF98
	.byte	0x16
	.byte	0x65
	.byte	0x15
	.long	0x17e
	.uleb128 0xb
	.long	.LASF99
	.byte	0x16
	.byte	0x66
	.byte	0x16
	.long	0x18a
	.uleb128 0x5
	.long	0x5dd
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x14d
	.byte	0x17
	.byte	0x29
	.byte	0x6
	.long	0x606
	.uleb128 0x19
	.long	.LASF100
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x14d
	.byte	0x17
	.byte	0x2a
	.byte	0x6
	.long	0x61b
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x9
	.byte	0
	.uleb128 0x1b
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x639
	.uleb128 0x1c
	.long	.LASF102
	.sleb128 -130
	.uleb128 0x1c
	.long	.LASF103
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x644
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.long	0x639
	.uleb128 0x2
	.long	.LASF104
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x644
	.uleb128 0x2
	.long	.LASF105
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0xc7
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x7
	.byte	0x4
	.long	0x14d
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x6b6
	.uleb128 0x1a
	.long	.LASF106
	.byte	0
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x6
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x7
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x8
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x9
	.uleb128 0x1a
	.long	.LASF116
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x661
	.uleb128 0x15
	.long	.LASF117
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x3ef
	.uleb128 0xd
	.long	0x6b6
	.long	0x6d3
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.long	0x6c8
	.uleb128 0x15
	.long	.LASF118
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x6d3
	.uleb128 0x2
	.long	.LASF119
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x54c
	.uleb128 0x2
	.long	.LASF120
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x14d
	.uleb128 0x2
	.long	.LASF121
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.long	.LASF122
	.uleb128 0x2
	.long	.LASF123
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x709
	.uleb128 0x8
	.long	.LASF124
	.byte	0x10
	.byte	0x1d
	.byte	0x1a
	.byte	0x8
	.long	0x742
	.uleb128 0x9
	.long	.LASF125
	.byte	0x1d
	.byte	0x1c
	.byte	0xa
	.long	0xd8
	.byte	0
	.uleb128 0x9
	.long	.LASF126
	.byte	0x1d
	.byte	0x1d
	.byte	0x9
	.long	0x39
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF127
	.byte	0x1d
	.byte	0x1f
	.byte	0x1c
	.long	0x71a
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x7
	.byte	0x4
	.long	0x14d
	.byte	0x1e
	.byte	0x19
	.byte	0x6
	.long	0x77f
	.uleb128 0x1a
	.long	.LASF130
	.byte	0
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF129
	.byte	0x1e
	.byte	0x26
	.byte	0x1b
	.long	0x74e
	.uleb128 0xb
	.long	.LASF135
	.byte	0x2
	.byte	0xa7
	.byte	0x20
	.long	0x43f
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x14d
	.byte	0x2
	.byte	0xde
	.byte	0x1
	.long	0x7ac
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x80
	.byte	0
	.uleb128 0xd
	.long	0xc2
	.long	0x7bc
	.uleb128 0xe
	.long	0xe4
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x7ac
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x2
	.byte	0xe2
	.byte	0x1c
	.long	0x7bc
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1f
	.long	.LASF137
	.value	0x100
	.byte	0x2
	.byte	0xea
	.byte	0x8
	.long	0x816
	.uleb128 0x9
	.long	.LASF138
	.byte	0x2
	.byte	0xec
	.byte	0x11
	.long	0x816
	.byte	0
	.uleb128 0xa
	.string	"p"
	.byte	0x2
	.byte	0xed
	.byte	0x11
	.long	0x826
	.byte	0x10
	.uleb128 0xa
	.string	"e"
	.byte	0x2
	.byte	0xee
	.byte	0x11
	.long	0x836
	.byte	0xe0
	.uleb128 0x9
	.long	.LASF139
	.byte	0x2
	.byte	0xef
	.byte	0x11
	.long	0x156
	.byte	0xfa
	.byte	0
	.uleb128 0xd
	.long	0x5dd
	.long	0x826
	.uleb128 0xe
	.long	0xe4
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.long	0x5dd
	.long	0x836
	.uleb128 0xe
	.long	0xe4
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.long	0x156
	.long	0x846
	.uleb128 0xe
	.long	0xe4
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.long	.LASF140
	.byte	0x18
	.byte	0x2
	.byte	0xf2
	.byte	0x8
	.long	0x877
	.uleb128 0xa
	.string	"p"
	.byte	0x2
	.byte	0xf4
	.byte	0x16
	.long	0x877
	.byte	0
	.uleb128 0xa
	.string	"e"
	.byte	0x2
	.byte	0xf5
	.byte	0x16
	.long	0x87d
	.byte	0x8
	.uleb128 0x9
	.long	.LASF139
	.byte	0x2
	.byte	0xf6
	.byte	0x15
	.long	0xe4
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x49a
	.uleb128 0x3
	.byte	0x8
	.long	0xe4
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0x14d
	.byte	0x2
	.value	0x291
	.byte	0x6
	.long	0x897
	.uleb128 0x20
	.string	"W"
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.long	0x15d
	.long	0x8a8
	.uleb128 0x21
	.long	0xe4
	.value	0x2a2
	.byte	0
	.uleb128 0x5
	.long	0x897
	.uleb128 0x22
	.long	.LASF142
	.byte	0x2
	.value	0x297
	.byte	0x1c
	.long	0x8a8
	.uleb128 0x9
	.byte	0x3
	.quad	primes_diff
	.uleb128 0x22
	.long	.LASF143
	.byte	0x2
	.value	0x2a1
	.byte	0x1c
	.long	0x8a8
	.uleb128 0x9
	.byte	0x3
	.quad	primes_diff8
	.uleb128 0x23
	.long	.LASF144
	.byte	0x10
	.byte	0x2
	.value	0x2a7
	.byte	0x8
	.long	0x906
	.uleb128 0x24
	.long	.LASF145
	.byte	0x2
	.value	0x2a9
	.byte	0xd
	.long	0x5dd
	.byte	0
	.uleb128 0x25
	.string	"lim"
	.byte	0x2
	.value	0x2a9
	.byte	0x13
	.long	0x5dd
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x8db
	.uleb128 0xd
	.long	0x906
	.long	0x91c
	.uleb128 0x21
	.long	0xe4
	.value	0x2a2
	.byte	0
	.uleb128 0x5
	.long	0x90b
	.uleb128 0x22
	.long	.LASF144
	.byte	0x2
	.value	0x2ad
	.byte	0x21
	.long	0x91c
	.uleb128 0x9
	.byte	0x3
	.quad	primes_dtab
	.uleb128 0x22
	.long	.LASF146
	.byte	0x2
	.value	0x2b9
	.byte	0xd
	.long	0x94f
	.uleb128 0x9
	.byte	0x3
	.quad	dev_debug
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF147
	.uleb128 0x22
	.long	.LASF148
	.byte	0x2
	.value	0x2bc
	.byte	0xd
	.long	0x94f
	.uleb128 0x9
	.byte	0x3
	.quad	flag_prove_primality
	.uleb128 0xd
	.long	0x15d
	.long	0x97d
	.uleb128 0xe
	.long	0xe4
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.long	0x96d
	.uleb128 0x22
	.long	.LASF149
	.byte	0x2
	.value	0x362
	.byte	0x1d
	.long	0x97d
	.uleb128 0x9
	.byte	0x3
	.quad	binvert_table
	.uleb128 0x23
	.long	.LASF150
	.byte	0x10
	.byte	0x2
	.value	0x911
	.byte	0xf
	.long	0x9c4
	.uleb128 0x25
	.string	"buf"
	.byte	0x2
	.value	0x913
	.byte	0x9
	.long	0x39
	.byte	0
	.uleb128 0x25
	.string	"end"
	.byte	0x2
	.value	0x914
	.byte	0x9
	.long	0x39
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.long	.LASF151
	.byte	0x2
	.value	0x915
	.byte	0x3
	.long	0x999
	.uleb128 0x9
	.byte	0x3
	.quad	lbuf
	.uleb128 0x26
	.long	.LASF155
	.byte	0x2
	.value	0xa0a
	.byte	0x1
	.long	0x57
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0xa5c
	.uleb128 0x27
	.long	.LASF152
	.byte	0x2
	.value	0xa0a
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF153
	.byte	0x2
	.value	0xa0a
	.byte	0x18
	.long	0x58e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"c"
	.byte	0x2
	.value	0xa16
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"ok"
	.byte	0x2
	.value	0xa2c
	.byte	0x8
	.long	0x94f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x29
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0xa32
	.byte	0x10
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF158
	.byte	0x2
	.value	0x9f5
	.byte	0x1
	.long	0x94f
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0xab5
	.uleb128 0x28
	.string	"ok"
	.byte	0x2
	.value	0x9f7
	.byte	0x8
	.long	0x94f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x22
	.long	.LASF124
	.byte	0x2
	.value	0x9f8
	.byte	0x10
	.long	0x742
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x22
	.long	.LASF154
	.byte	0x2
	.value	0x9fe
	.byte	0xe
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF156
	.byte	0x2
	.value	0x9dd
	.byte	0x1
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0xae5
	.uleb128 0x27
	.long	.LASF157
	.byte	0x2
	.value	0x9dd
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF159
	.byte	0x2
	.value	0x9a0
	.byte	0x1
	.long	0x94f
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0xbbd
	.uleb128 0x27
	.long	.LASF160
	.byte	0x2
	.value	0x9a0
	.byte	0x1c
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"str"
	.byte	0x2
	.value	0x9a3
	.byte	0xf
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"t1"
	.byte	0x2
	.value	0x9a8
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"t0"
	.byte	0x2
	.value	0x9a8
	.byte	0x11
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"err"
	.byte	0x2
	.value	0x9ae
	.byte	0x10
	.long	0x77f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.string	"t"
	.byte	0x2
	.value	0x9c5
	.byte	0x9
	.long	0x49a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF137
	.byte	0x2
	.value	0x9c6
	.byte	0x15
	.long	0x846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.uleb128 0x28
	.string	"j"
	.byte	0x2
	.value	0x9ce
	.byte	0x15
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x29
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x28
	.string	"k"
	.byte	0x2
	.value	0x9cf
	.byte	0x17
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF161
	.byte	0x2
	.value	0x981
	.byte	0x1
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0xc50
	.uleb128 0x2e
	.string	"t1"
	.byte	0x2
	.value	0x981
	.byte	0x21
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2e
	.string	"t0"
	.byte	0x2
	.value	0x981
	.byte	0x2f
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x22
	.long	.LASF137
	.byte	0x2
	.value	0x983
	.byte	0x12
	.long	0x7d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x29
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0x28
	.string	"j"
	.byte	0x2
	.value	0x98a
	.byte	0x15
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x29
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.uleb128 0x28
	.string	"k"
	.byte	0x2
	.value	0x98b
	.byte	0x17
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF162
	.byte	0x2
	.value	0x96d
	.byte	0x1
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0xd45
	.uleb128 0x2e
	.string	"t1"
	.byte	0x2
	.value	0x96d
	.byte	0x1c
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"t0"
	.byte	0x2
	.value	0x96d
	.byte	0x2a
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"q"
	.byte	0x2
	.value	0x96f
	.byte	0xd
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"r"
	.byte	0x2
	.value	0x96f
	.byte	0x10
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF188
	.long	0xd55
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7570
	.uleb128 0x29
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x22
	.long	.LASF163
	.byte	0x2
	.value	0x979
	.byte	0x7
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF164
	.byte	0x2
	.value	0x979
	.byte	0x7
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"__q"
	.byte	0x2
	.value	0x979
	.byte	0x7
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF165
	.byte	0x2
	.value	0x979
	.byte	0x7
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF166
	.byte	0x2
	.value	0x979
	.byte	0x7
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x28
	.string	"__i"
	.byte	0x2
	.value	0x979
	.byte	0x7
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0xd55
	.uleb128 0xe
	.long	0xe4
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0xd45
	.uleb128 0x2d
	.long	.LASF167
	.byte	0x2
	.value	0x95e
	.byte	0x1
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd9
	.uleb128 0x2e
	.string	"i"
	.byte	0x2
	.value	0x95e
	.byte	0x18
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF168
	.byte	0x2
	.value	0x95e
	.byte	0x22
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"buf"
	.byte	0x2
	.value	0x960
	.byte	0x8
	.long	0xdd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF169
	.byte	0x2
	.value	0x961
	.byte	0xf
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF170
	.byte	0x2
	.value	0x962
	.byte	0xa
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"z"
	.byte	0x2
	.value	0x963
	.byte	0xa
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xd
	.long	0x3f
	.long	0xde9
	.uleb128 0xe
	.long	0xe4
	.byte	0x14
	.byte	0
	.uleb128 0x2d
	.long	.LASF171
	.byte	0x2
	.value	0x938
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0xe76
	.uleb128 0x2e
	.string	"c"
	.byte	0x2
	.value	0x938
	.byte	0x11
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x22
	.long	.LASF172
	.byte	0x2
	.value	0x93e
	.byte	0xe
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF173
	.byte	0x2
	.value	0x941
	.byte	0x12
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	line_buffered.7542
	.uleb128 0x29
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0x22
	.long	.LASF174
	.byte	0x2
	.value	0x94a
	.byte	0x17
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF175
	.byte	0x2
	.value	0x94e
	.byte	0x11
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF176
	.byte	0x2
	.value	0x92c
	.byte	0x1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0xeb7
	.uleb128 0x22
	.long	.LASF125
	.byte	0x2
	.value	0x92e
	.byte	0xa
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.byte	0
	.uleb128 0x31
	.long	.LASF238
	.byte	0x2
	.value	0x91f
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF177
	.byte	0x2
	.value	0x8d3
	.byte	0x1
	.long	0x77f
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0xf9f
	.uleb128 0x2e
	.string	"hip"
	.byte	0x2
	.value	0x8d3
	.byte	0x1b
	.long	0xf9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"lop"
	.byte	0x2
	.value	0x8d3
	.byte	0x2b
	.long	0xf9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"s"
	.byte	0x2
	.value	0x8d3
	.byte	0x3c
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF178
	.byte	0x2
	.value	0x8d5
	.byte	0x10
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"hi"
	.byte	0x2
	.value	0x8d6
	.byte	0xd
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"lo"
	.byte	0x2
	.value	0x8d6
	.byte	0x15
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"err"
	.byte	0x2
	.value	0x8d8
	.byte	0x10
	.long	0x77f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x8db
	.byte	0xf
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x90
	.long	0xf8a
	.uleb128 0x28
	.string	"c"
	.byte	0x2
	.value	0x8de
	.byte	0x14
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x28
	.string	"c"
	.byte	0x2
	.value	0x8ed
	.byte	0x14
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x5dd
	.uleb128 0x2d
	.long	.LASF179
	.byte	0x2
	.value	0x8bf
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0xfe3
	.uleb128 0x2e
	.string	"t"
	.byte	0x2
	.value	0x8bf
	.byte	0x12
	.long	0x4c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x8bf
	.byte	0x28
	.long	0xfe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x846
	.uleb128 0x2d
	.long	.LASF180
	.byte	0x2
	.value	0x89f
	.byte	0x1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1037
	.uleb128 0x2e
	.string	"t1"
	.byte	0x2
	.value	0x89f
	.byte	0x13
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"t0"
	.byte	0x2
	.value	0x89f
	.byte	0x21
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x89f
	.byte	0x35
	.long	0x1037
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x7d7
	.uleb128 0x2d
	.long	.LASF181
	.byte	0x2
	.value	0x679
	.byte	0x1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x1135
	.uleb128 0x2e
	.string	"n"
	.byte	0x2
	.value	0x679
	.byte	0x24
	.long	0x4c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2e
	.string	"a"
	.byte	0x2
	.value	0x679
	.byte	0x39
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x67a
	.byte	0x31
	.long	0xfe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.string	"x"
	.byte	0x2
	.value	0x67c
	.byte	0x9
	.long	0x49a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"z"
	.byte	0x2
	.value	0x67c
	.byte	0xc
	.long	0x49a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"y"
	.byte	0x2
	.value	0x67c
	.byte	0xf
	.long	0x49a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"P"
	.byte	0x2
	.value	0x67c
	.byte	0x12
	.long	0x49a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"t"
	.byte	0x2
	.value	0x67d
	.byte	0x9
	.long	0x49a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"t2"
	.byte	0x2
	.value	0x67d
	.byte	0xc
	.long	0x49a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"k"
	.byte	0x2
	.value	0x687
	.byte	0x1a
	.long	0x43f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"l"
	.byte	0x2
	.value	0x688
	.byte	0x1a
	.long	0x43f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x34
	.long	.LASF183
	.byte	0x2
	.value	0x6ae
	.byte	0x5
	.quad	.L337
	.uleb128 0x29
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x6a5
	.byte	0x27
	.long	0x43f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF182
	.byte	0x2
	.value	0x600
	.byte	0x1
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x146d
	.uleb128 0x2e
	.string	"n1"
	.byte	0x2
	.value	0x600
	.byte	0x26
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2e
	.string	"n0"
	.byte	0x2
	.value	0x600
	.byte	0x34
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2e
	.string	"a"
	.byte	0x2
	.value	0x600
	.byte	0x4a
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x601
	.byte	0x2c
	.long	0x1037
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x28
	.string	"x1"
	.byte	0x2
	.value	0x603
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.string	"x0"
	.byte	0x2
	.value	0x603
	.byte	0x11
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x28
	.string	"z1"
	.byte	0x2
	.value	0x603
	.byte	0x15
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x28
	.string	"z0"
	.byte	0x2
	.value	0x603
	.byte	0x19
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.string	"y1"
	.byte	0x2
	.value	0x603
	.byte	0x1d
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x28
	.string	"y0"
	.byte	0x2
	.value	0x603
	.byte	0x21
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x28
	.string	"P1"
	.byte	0x2
	.value	0x603
	.byte	0x25
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x28
	.string	"P0"
	.byte	0x2
	.value	0x603
	.byte	0x29
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.string	"t1"
	.byte	0x2
	.value	0x603
	.byte	0x2d
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.string	"t0"
	.byte	0x2
	.value	0x603
	.byte	0x31
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.string	"ni"
	.byte	0x2
	.value	0x603
	.byte	0x35
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"g1"
	.byte	0x2
	.value	0x603
	.byte	0x39
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x28
	.string	"g0"
	.byte	0x2
	.value	0x603
	.byte	0x3d
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"r1m"
	.byte	0x2
	.value	0x603
	.byte	0x41
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.string	"k"
	.byte	0x2
	.value	0x605
	.byte	0x15
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.string	"l"
	.byte	0x2
	.value	0x606
	.byte	0x15
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x34
	.long	.LASF183
	.byte	0x2
	.value	0x633
	.byte	0x5
	.quad	.L306
	.uleb128 0x35
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0x12ec
	.uleb128 0x28
	.string	"_r1"
	.byte	0x2
	.value	0x608
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.string	"_r0"
	.byte	0x2
	.value	0x608
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"_i"
	.byte	0x2
	.value	0x608
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x35
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x1333
	.uleb128 0x28
	.string	"__n"
	.byte	0x2
	.value	0x60f
	.byte	0x7
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.long	.LASF184
	.byte	0x2
	.value	0x60f
	.byte	0x7
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x36
	.uleb128 0x37
	.long	.LASF185
	.byte	0x2
	.value	0x60f
	.byte	0x7
	.long	0x57
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.long	0x1358
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x62a
	.byte	0x22
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x35
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x1406
	.uleb128 0x28
	.string	"_di"
	.byte	0x2
	.value	0x642
	.byte	0xb
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"_q0"
	.byte	0x2
	.value	0x642
	.byte	0xb
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.long	0x13d3
	.uleb128 0x28
	.string	"__n"
	.byte	0x2
	.value	0x642
	.byte	0xb
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF184
	.byte	0x2
	.value	0x642
	.byte	0xb
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.uleb128 0x37
	.long	.LASF185
	.byte	0x2
	.value	0x642
	.byte	0xb
	.long	0x57
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x28
	.string	"_p1"
	.byte	0x2
	.value	0x642
	.byte	0xb
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"_p0"
	.byte	0x2
	.value	0x642
	.byte	0xb
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x22
	.long	.LASF186
	.byte	0x2
	.value	0x64d
	.byte	0x15
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x28
	.string	"__n"
	.byte	0x2
	.value	0x656
	.byte	0xb
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF184
	.byte	0x2
	.value	0x656
	.byte	0xb
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.uleb128 0x37
	.long	.LASF185
	.byte	0x2
	.value	0x656
	.byte	0xb
	.long	0x57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF187
	.byte	0x2
	.value	0x5aa
	.byte	0x1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x175b
	.uleb128 0x2e
	.string	"n"
	.byte	0x2
	.value	0x5aa
	.byte	0x25
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2e
	.string	"a"
	.byte	0x2
	.value	0x5aa
	.byte	0x3a
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x5ab
	.byte	0x2b
	.long	0x1037
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x28
	.string	"x"
	.byte	0x2
	.value	0x5ad
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x28
	.string	"z"
	.byte	0x2
	.value	0x5ad
	.byte	0x10
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.string	"y"
	.byte	0x2
	.value	0x5ad
	.byte	0x13
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.string	"P"
	.byte	0x2
	.value	0x5ad
	.byte	0x16
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.string	"t"
	.byte	0x2
	.value	0x5ad
	.byte	0x19
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"ni"
	.byte	0x2
	.value	0x5ad
	.byte	0x1c
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"g"
	.byte	0x2
	.value	0x5ad
	.byte	0x20
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"k"
	.byte	0x2
	.value	0x5af
	.byte	0x15
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.string	"l"
	.byte	0x2
	.value	0x5b0
	.byte	0x15
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF188
	.long	0x176b
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7383
	.uleb128 0x34
	.long	.LASF183
	.byte	0x2
	.value	0x5da
	.byte	0x5
	.quad	.L280
	.uleb128 0x35
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x1616
	.uleb128 0x22
	.long	.LASF189
	.byte	0x2
	.value	0x5b2
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x22
	.long	.LASF163
	.byte	0x2
	.value	0x5b2
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF164
	.byte	0x2
	.value	0x5b2
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"__q"
	.byte	0x2
	.value	0x5b2
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.long	.LASF165
	.byte	0x2
	.value	0x5b2
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.long	.LASF166
	.byte	0x2
	.value	0x5b2
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x28
	.string	"__i"
	.byte	0x2
	.value	0x5b2
	.byte	0x3
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x163c
	.uleb128 0x28
	.string	"_t"
	.byte	0x2
	.value	0x5b3
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x35
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x1683
	.uleb128 0x28
	.string	"__n"
	.byte	0x2
	.value	0x5ba
	.byte	0x7
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF184
	.byte	0x2
	.value	0x5ba
	.byte	0x7
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.uleb128 0x37
	.long	.LASF185
	.byte	0x2
	.value	0x5ba
	.byte	0x7
	.long	0x57
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x16a9
	.uleb128 0x28
	.string	"_t"
	.byte	0x2
	.value	0x5c1
	.byte	0xf
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x35
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x16ce
	.uleb128 0x28
	.string	"_t"
	.byte	0x2
	.value	0x5c3
	.byte	0xf
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x35
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x1714
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x5d2
	.byte	0x22
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x28
	.string	"_t"
	.byte	0x2
	.value	0x5d5
	.byte	0xf
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x1739
	.uleb128 0x28
	.string	"_t"
	.byte	0x2
	.value	0x5de
	.byte	0xb
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x28
	.string	"_t"
	.byte	0x2
	.value	0x5e0
	.byte	0xb
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x176b
	.uleb128 0xe
	.long	0xe4
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	0x175b
	.uleb128 0x2a
	.long	.LASF190
	.byte	0x2
	.value	0x557
	.byte	0x1
	.long	0x94f
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x186a
	.uleb128 0x2e
	.string	"n"
	.byte	0x2
	.value	0x557
	.byte	0x13
	.long	0x4c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x22
	.long	.LASF191
	.byte	0x2
	.value	0x559
	.byte	0x8
	.long	0x94f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -149
	.uleb128 0x28
	.string	"q"
	.byte	0x2
	.value	0x55a
	.byte	0x9
	.long	0x49a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"a"
	.byte	0x2
	.value	0x55a
	.byte	0xc
	.long	0x49a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"nm1"
	.byte	0x2
	.value	0x55a
	.byte	0xf
	.long	0x49a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"tmp"
	.byte	0x2
	.value	0x55a
	.byte	0x14
	.long	0x49a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF137
	.byte	0x2
	.value	0x55b
	.byte	0x15
	.long	0x846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"k"
	.byte	0x2
	.value	0x56a
	.byte	0x15
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x34
	.long	.LASF192
	.byte	0x2
	.value	0x5a3
	.byte	0x2
	.quad	.L255
	.uleb128 0x34
	.long	.LASF193
	.byte	0x2
	.value	0x5a0
	.byte	0x2
	.quad	.L263
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x28
	.string	"r"
	.byte	0x2
	.value	0x57f
	.byte	0x15
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x29
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x584
	.byte	0x22
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF194
	.byte	0x2
	.value	0x4f3
	.byte	0x1
	.long	0x94f
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb1
	.uleb128 0x2e
	.string	"n1"
	.byte	0x2
	.value	0x4f3
	.byte	0x15
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x2e
	.string	"n0"
	.byte	0x2
	.value	0x4f3
	.byte	0x23
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x28
	.string	"q"
	.byte	0x2
	.value	0x4f5
	.byte	0xd
	.long	0x816
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.string	"nm1"
	.byte	0x2
	.value	0x4f5
	.byte	0x13
	.long	0x816
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x22
	.long	.LASF195
	.byte	0x2
	.value	0x4f6
	.byte	0xd
	.long	0x816
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x28
	.string	"one"
	.byte	0x2
	.value	0x4f7
	.byte	0xd
	.long	0x816
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.string	"na"
	.byte	0x2
	.value	0x4f8
	.byte	0xd
	.long	0x816
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x28
	.string	"ni"
	.byte	0x2
	.value	0x4f9
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x28
	.string	"k"
	.byte	0x2
	.value	0x4fa
	.byte	0x10
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x22
	.long	.LASF137
	.byte	0x2
	.value	0x4fb
	.byte	0x12
	.long	0x7d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x28
	.string	"a"
	.byte	0x2
	.value	0x510
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x35
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x1985
	.uleb128 0x28
	.string	"__n"
	.byte	0x2
	.value	0x511
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x22
	.long	.LASF184
	.byte	0x2
	.value	0x511
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x36
	.uleb128 0x37
	.long	.LASF185
	.byte	0x2
	.value	0x511
	.byte	0x3
	.long	0x57
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x19cd
	.uleb128 0x28
	.string	"_r1"
	.byte	0x2
	.value	0x512
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x28
	.string	"_r0"
	.byte	0x2
	.value	0x512
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x28
	.string	"_i"
	.byte	0x2
	.value	0x512
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.byte	0
	.uleb128 0x29
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x28
	.string	"r"
	.byte	0x2
	.value	0x524
	.byte	0x15
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x29
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x22
	.long	.LASF191
	.byte	0x2
	.value	0x526
	.byte	0xc
	.long	0x94f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -565
	.uleb128 0x28
	.string	"e"
	.byte	0x2
	.value	0x527
	.byte	0x11
	.long	0x816
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.string	"y"
	.byte	0x2
	.value	0x527
	.byte	0x17
	.long	0x816
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x35
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x1a96
	.uleb128 0x28
	.string	"pi"
	.byte	0x2
	.value	0x52e
	.byte	0x19
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x29
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x28
	.string	"__n"
	.byte	0x2
	.value	0x52f
	.byte	0xf
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x22
	.long	.LASF184
	.byte	0x2
	.value	0x52f
	.byte	0xf
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x36
	.uleb128 0x37
	.long	.LASF185
	.byte	0x2
	.value	0x52f
	.byte	0xf
	.long	0x57
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x1b6a
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x535
	.byte	0x1d
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x29
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x28
	.string	"_di"
	.byte	0x2
	.value	0x53d
	.byte	0x11
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x28
	.string	"_q0"
	.byte	0x2
	.value	0x53d
	.byte	0x11
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x35
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x1b34
	.uleb128 0x28
	.string	"__n"
	.byte	0x2
	.value	0x53d
	.byte	0x11
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x22
	.long	.LASF184
	.byte	0x2
	.value	0x53d
	.byte	0x11
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x36
	.uleb128 0x37
	.long	.LASF185
	.byte	0x2
	.value	0x53d
	.byte	0x11
	.long	0x57
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x28
	.string	"_p1"
	.byte	0x2
	.value	0x53d
	.byte	0x11
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x28
	.string	"_p0"
	.byte	0x2
	.value	0x53d
	.byte	0x11
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x28
	.string	"_r1"
	.byte	0x2
	.value	0x54c
	.byte	0x7
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x28
	.string	"_r0"
	.byte	0x2
	.value	0x54c
	.byte	0x7
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x28
	.string	"_i"
	.byte	0x2
	.value	0x54c
	.byte	0x7
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF196
	.byte	0x2
	.value	0x4a1
	.byte	0x1
	.long	0x94f
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ebb
	.uleb128 0x2e
	.string	"n"
	.byte	0x2
	.value	0x4a1
	.byte	0x14
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x28
	.string	"k"
	.byte	0x2
	.value	0x4a3
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -484
	.uleb128 0x22
	.long	.LASF191
	.byte	0x2
	.value	0x4a4
	.byte	0x8
	.long	0x94f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -485
	.uleb128 0x22
	.long	.LASF195
	.byte	0x2
	.value	0x4a5
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x28
	.string	"one"
	.byte	0x2
	.value	0x4a5
	.byte	0x15
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x28
	.string	"ni"
	.byte	0x2
	.value	0x4a5
	.byte	0x1a
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x22
	.long	.LASF137
	.byte	0x2
	.value	0x4a6
	.byte	0x12
	.long	0x7d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x28
	.string	"q"
	.byte	0x2
	.value	0x4b0
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x28
	.string	"a"
	.byte	0x2
	.value	0x4b4
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2f
	.long	.LASF188
	.long	0x1ecb
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7261
	.uleb128 0x35
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1cbe
	.uleb128 0x28
	.string	"__n"
	.byte	0x2
	.value	0x4b5
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x22
	.long	.LASF184
	.byte	0x2
	.value	0x4b5
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x36
	.uleb128 0x37
	.long	.LASF185
	.byte	0x2
	.value	0x4b5
	.byte	0x3
	.long	0x57
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1d6f
	.uleb128 0x22
	.long	.LASF189
	.byte	0x2
	.value	0x4b6
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x22
	.long	.LASF163
	.byte	0x2
	.value	0x4b6
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x22
	.long	.LASF164
	.byte	0x2
	.value	0x4b6
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x28
	.string	"__q"
	.byte	0x2
	.value	0x4b6
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x22
	.long	.LASF165
	.byte	0x2
	.value	0x4b6
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x22
	.long	.LASF166
	.byte	0x2
	.value	0x4b6
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x29
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x28
	.string	"__i"
	.byte	0x2
	.value	0x4b6
	.byte	0x3
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x1d95
	.uleb128 0x28
	.string	"_t"
	.byte	0x2
	.value	0x4b7
	.byte	0x3
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x29
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x28
	.string	"r"
	.byte	0x2
	.value	0x4c5
	.byte	0x15
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x35
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x1dda
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x4ca
	.byte	0x1d
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.byte	0
	.uleb128 0x29
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x28
	.string	"s1"
	.byte	0x2
	.value	0x4df
	.byte	0x13
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x28
	.string	"s0"
	.byte	0x2
	.value	0x4df
	.byte	0x17
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x29
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x22
	.long	.LASF197
	.byte	0x2
	.value	0x4e5
	.byte	0x17
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x29
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x22
	.long	.LASF163
	.byte	0x2
	.value	0x4e6
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x22
	.long	.LASF164
	.byte	0x2
	.value	0x4e6
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x28
	.string	"__q"
	.byte	0x2
	.value	0x4e6
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x22
	.long	.LASF165
	.byte	0x2
	.value	0x4e6
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x22
	.long	.LASF166
	.byte	0x2
	.value	0x4e6
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x29
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x28
	.string	"__i"
	.byte	0x2
	.value	0x4e6
	.byte	0xd
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -468
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x1ecb
	.uleb128 0xe
	.long	0xe4
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x1ebb
	.uleb128 0x2a
	.long	.LASF198
	.byte	0x2
	.value	0x48b
	.byte	0x1
	.long	0x94f
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f6c
	.uleb128 0x2e
	.string	"n"
	.byte	0x2
	.value	0x48b
	.byte	0x1c
	.long	0x4c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"nm1"
	.byte	0x2
	.value	0x48b
	.byte	0x2a
	.long	0x4c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"x"
	.byte	0x2
	.value	0x48b
	.byte	0x37
	.long	0x4b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"y"
	.byte	0x2
	.value	0x48b
	.byte	0x42
	.long	0x4b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"q"
	.byte	0x2
	.value	0x48c
	.byte	0x1c
	.long	0x4c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"k"
	.byte	0x2
	.value	0x48c
	.byte	0x31
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x493
	.byte	0x1a
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF199
	.byte	0x2
	.value	0x46d
	.byte	0x1
	.long	0x94f
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x205f
	.uleb128 0x2e
	.string	"np"
	.byte	0x2
	.value	0x46d
	.byte	0x20
	.long	0x205f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"ni"
	.byte	0x2
	.value	0x46d
	.byte	0x2e
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"bp"
	.byte	0x2
	.value	0x46d
	.byte	0x43
	.long	0x205f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"qp"
	.byte	0x2
	.value	0x46e
	.byte	0x20
	.long	0x205f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"k"
	.byte	0x2
	.value	0x46e
	.byte	0x31
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2e
	.string	"one"
	.byte	0x2
	.value	0x46e
	.byte	0x45
	.long	0x205f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"y1"
	.byte	0x2
	.value	0x470
	.byte	0xd
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"y0"
	.byte	0x2
	.value	0x470
	.byte	0x11
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF200
	.byte	0x2
	.value	0x470
	.byte	0x15
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF201
	.byte	0x2
	.value	0x470
	.byte	0x1c
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"r1m"
	.byte	0x2
	.value	0x470
	.byte	0x23
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x47d
	.byte	0x15
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x5e9
	.uleb128 0x2a
	.long	.LASF202
	.byte	0x2
	.value	0x456
	.byte	0x1
	.long	0x94f
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x2122
	.uleb128 0x2e
	.string	"n"
	.byte	0x2
	.value	0x456
	.byte	0x18
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"ni"
	.byte	0x2
	.value	0x456
	.byte	0x25
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"b"
	.byte	0x2
	.value	0x456
	.byte	0x33
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"q"
	.byte	0x2
	.value	0x456
	.byte	0x40
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"k"
	.byte	0x2
	.value	0x457
	.byte	0x1b
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.string	"one"
	.byte	0x2
	.value	0x457
	.byte	0x28
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"y"
	.byte	0x2
	.value	0x459
	.byte	0xd
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"nm1"
	.byte	0x2
	.value	0x45b
	.byte	0xd
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x460
	.byte	0x15
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF203
	.byte	0x2
	.value	0x42d
	.byte	0x1
	.long	0x5dd
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x2220
	.uleb128 0x2e
	.string	"r1m"
	.byte	0x2
	.value	0x42d
	.byte	0x13
	.long	0xf9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"bp"
	.byte	0x2
	.value	0x42e
	.byte	0x19
	.long	0x205f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"ep"
	.byte	0x2
	.value	0x42e
	.byte	0x2e
	.long	0x205f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"np"
	.byte	0x2
	.value	0x42e
	.byte	0x43
	.long	0x205f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"ni"
	.byte	0x2
	.value	0x42f
	.byte	0x12
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.string	"one"
	.byte	0x2
	.value	0x42f
	.byte	0x27
	.long	0x205f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"r1"
	.byte	0x2
	.value	0x431
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"r0"
	.byte	0x2
	.value	0x431
	.byte	0x11
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"b1"
	.byte	0x2
	.value	0x431
	.byte	0x15
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"b0"
	.byte	0x2
	.value	0x431
	.byte	0x19
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"n1"
	.byte	0x2
	.value	0x431
	.byte	0x1d
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"n0"
	.byte	0x2
	.value	0x431
	.byte	0x21
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x432
	.byte	0x10
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.string	"e"
	.byte	0x2
	.value	0x433
	.byte	0xd
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.long	.LASF204
	.byte	0x2
	.value	0x419
	.byte	0x1
	.long	0x5dd
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x229c
	.uleb128 0x2e
	.string	"b"
	.byte	0x2
	.value	0x419
	.byte	0x11
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"e"
	.byte	0x2
	.value	0x419
	.byte	0x1e
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"n"
	.byte	0x2
	.value	0x419
	.byte	0x2b
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"ni"
	.byte	0x2
	.value	0x419
	.byte	0x38
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"one"
	.byte	0x2
	.value	0x419
	.byte	0x46
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"y"
	.byte	0x2
	.value	0x41b
	.byte	0xd
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF205
	.byte	0x2
	.value	0x3d5
	.byte	0x1
	.long	0x5dd
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x23db
	.uleb128 0x2e
	.string	"r1p"
	.byte	0x2
	.value	0x3d5
	.byte	0x16
	.long	0xf9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"a1"
	.byte	0x2
	.value	0x3d6
	.byte	0x15
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"a0"
	.byte	0x2
	.value	0x3d6
	.byte	0x23
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.string	"b1"
	.byte	0x2
	.value	0x3d6
	.byte	0x31
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.string	"b0"
	.byte	0x2
	.value	0x3d6
	.byte	0x3f
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.string	"m1"
	.byte	0x2
	.value	0x3d7
	.byte	0x15
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2e
	.string	"m0"
	.byte	0x2
	.value	0x3d7
	.byte	0x23
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"mi"
	.byte	0x2
	.value	0x3d7
	.byte	0x31
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"r1"
	.byte	0x2
	.value	0x3d9
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"r0"
	.byte	0x2
	.value	0x3d9
	.byte	0x11
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"q"
	.byte	0x2
	.value	0x3d9
	.byte	0x15
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"p1"
	.byte	0x2
	.value	0x3d9
	.byte	0x18
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"p0"
	.byte	0x2
	.value	0x3d9
	.byte	0x1c
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"t1"
	.byte	0x2
	.value	0x3d9
	.byte	0x2b
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"t0"
	.byte	0x2
	.value	0x3d9
	.byte	0x2f
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"s1"
	.byte	0x2
	.value	0x3d9
	.byte	0x33
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"s0"
	.byte	0x2
	.value	0x3d9
	.byte	0x37
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF188
	.long	0x23eb
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7159
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x23eb
	.uleb128 0xe
	.long	0xe4
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x23db
	.uleb128 0x32
	.long	.LASF206
	.byte	0x2
	.value	0x3c3
	.byte	0x1
	.long	0x5dd
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x24aa
	.uleb128 0x2e
	.string	"a"
	.byte	0x2
	.value	0x3c3
	.byte	0x14
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"b"
	.byte	0x2
	.value	0x3c3
	.byte	0x21
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"m"
	.byte	0x2
	.value	0x3c3
	.byte	0x2e
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"mi"
	.byte	0x2
	.value	0x3c3
	.byte	0x3b
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"rh"
	.byte	0x2
	.value	0x3c5
	.byte	0xd
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"rl"
	.byte	0x2
	.value	0x3c5
	.byte	0x11
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"q"
	.byte	0x2
	.value	0x3c5
	.byte	0x15
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"th"
	.byte	0x2
	.value	0x3c5
	.byte	0x18
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"tl"
	.byte	0x2
	.value	0x3c5
	.byte	0x1c
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"xh"
	.byte	0x2
	.value	0x3c5
	.byte	0x2b
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2d
	.long	.LASF207
	.byte	0x2
	.value	0x33d
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x2526
	.uleb128 0x2e
	.string	"t"
	.byte	0x2
	.value	0x33d
	.byte	0x21
	.long	0x4c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x33d
	.byte	0x37
	.long	0xfe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"q"
	.byte	0x2
	.value	0x33f
	.byte	0x9
	.long	0x49a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x340
	.byte	0x15
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x34f
	.byte	0x15
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF208
	.byte	0x2
	.value	0x2ec
	.byte	0x1
	.long	0x5dd
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x263a
	.uleb128 0x2e
	.string	"t1p"
	.byte	0x2
	.value	0x2ec
	.byte	0x23
	.long	0xf9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"t1"
	.byte	0x2
	.value	0x2ec
	.byte	0x32
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"t0"
	.byte	0x2
	.value	0x2ec
	.byte	0x40
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x2ed
	.byte	0x28
	.long	0x1037
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x303
	.byte	0xd
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x304
	.byte	0x10
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x25d0
	.uleb128 0x28
	.string	"cnt"
	.byte	0x2
	.value	0x2f1
	.byte	0x14
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x33
	.long	.Ldebug_ranges0+0
	.long	0x2616
	.uleb128 0x28
	.string	"q1"
	.byte	0x2
	.value	0x309
	.byte	0x15
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"q0"
	.byte	0x2
	.value	0x309
	.byte	0x19
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"hi"
	.byte	0x2
	.value	0x309
	.byte	0x1d
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"lo"
	.byte	0x2
	.value	0x309
	.byte	0x21
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x28
	.string	"q"
	.byte	0x2
	.value	0x329
	.byte	0x11
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"pd"
	.byte	0x2
	.value	0x32a
	.byte	0x21
	.long	0x263a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x906
	.uleb128 0x2d
	.long	.LASF209
	.byte	0x2
	.value	0x2c2
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x26bc
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x2c2
	.byte	0x27
	.long	0x1037
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"p"
	.byte	0x2
	.value	0x2c2
	.byte	0x3a
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x2
	.value	0x2c2
	.byte	0x4a
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.string	"off"
	.byte	0x2
	.value	0x2c3
	.byte	0x24
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x28
	.string	"j"
	.byte	0x2
	.value	0x2c5
	.byte	0x15
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF210
	.byte	0x2
	.value	0x286
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x270b
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x286
	.byte	0x29
	.long	0xfe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF211
	.byte	0x2
	.value	0x286
	.byte	0x44
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"pz"
	.byte	0x2
	.value	0x288
	.byte	0x9
	.long	0x49a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2d
	.long	.LASF212
	.byte	0x2
	.value	0x25f
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a7
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x25f
	.byte	0x26
	.long	0xfe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF211
	.byte	0x2
	.value	0x25f
	.byte	0x35
	.long	0x4c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF139
	.byte	0x2
	.value	0x261
	.byte	0x15
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x262
	.byte	0x12
	.long	0x877
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"e"
	.byte	0x2
	.value	0x263
	.byte	0x16
	.long	0x87d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x264
	.byte	0x8
	.long	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x28
	.string	"j"
	.byte	0x2
	.value	0x273
	.byte	0x11
	.long	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF213
	.byte	0x2
	.value	0x255
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x27f7
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x255
	.byte	0x25
	.long	0xfe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x257
	.byte	0x15
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF214
	.byte	0x2
	.value	0x24d
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x2827
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x24d
	.byte	0x24
	.long	0xfe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF215
	.byte	0x2
	.value	0x23c
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x287a
	.uleb128 0x27
	.long	.LASF216
	.byte	0x2
	.value	0x23c
	.byte	0x15
	.long	0x2885
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x39
	.uleb128 0x28
	.string	"ap"
	.byte	0x2
	.value	0x23e
	.byte	0xb
	.long	0x3a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.string	"mpz"
	.byte	0x2
	.value	0x242
	.byte	0xa
	.long	0x877
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x3a
	.long	0x2885
	.uleb128 0x3b
	.long	0x4c2
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x287a
	.uleb128 0x2d
	.long	.LASF217
	.byte	0x2
	.value	0x227
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x28ec
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x227
	.byte	0x26
	.long	0x1037
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"p1"
	.byte	0x2
	.value	0x228
	.byte	0x20
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"p0"
	.byte	0x2
	.value	0x228
	.byte	0x2e
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF188
	.long	0x28fc
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7012
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x28fc
	.uleb128 0xe
	.long	0xe4
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x28ec
	.uleb128 0x38
	.long	.LASF218
	.byte	0x2
	.value	0x204
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x29aa
	.uleb128 0x27
	.long	.LASF137
	.byte	0x2
	.value	0x204
	.byte	0x2d
	.long	0x1037
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF211
	.byte	0x2
	.value	0x205
	.byte	0x27
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"m"
	.byte	0x2
	.value	0x205
	.byte	0x3b
	.long	0x14d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.long	.LASF139
	.byte	0x2
	.value	0x207
	.byte	0x10
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"p"
	.byte	0x2
	.value	0x208
	.byte	0xe
	.long	0xf9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"e"
	.byte	0x2
	.value	0x209
	.byte	0x12
	.long	0x29aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x20c
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x28
	.string	"j"
	.byte	0x2
	.value	0x215
	.byte	0x10
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x156
	.uleb128 0x2a
	.long	.LASF219
	.byte	0x2
	.value	0x1d8
	.byte	0x1
	.long	0x5dd
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a32
	.uleb128 0x2e
	.string	"r1"
	.byte	0x2
	.value	0x1d8
	.byte	0x16
	.long	0xf9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"a1"
	.byte	0x2
	.value	0x1d8
	.byte	0x24
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"a0"
	.byte	0x2
	.value	0x1d8
	.byte	0x32
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"b1"
	.byte	0x2
	.value	0x1d8
	.byte	0x40
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"b0"
	.byte	0x2
	.value	0x1d8
	.byte	0x4e
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF188
	.long	0x23eb
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6981
	.byte	0
	.uleb128 0x32
	.long	.LASF220
	.byte	0x2
	.value	0x1b2
	.byte	0x1
	.long	0x5dd
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ac6
	.uleb128 0x2e
	.string	"a"
	.byte	0x2
	.value	0x1b2
	.byte	0x14
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"b"
	.byte	0x2
	.value	0x1b2
	.byte	0x21
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x2a95
	.uleb128 0x28
	.string	"t"
	.byte	0x2
	.value	0x1b6
	.byte	0x11
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x28
	.string	"t"
	.byte	0x2
	.value	0x1c2
	.byte	0x11
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF221
	.byte	0x2
	.value	0x1c3
	.byte	0x11
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF222
	.byte	0x2
	.value	0x196
	.byte	0x1
	.long	0x5dd
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2be7
	.uleb128 0x2e
	.string	"r1"
	.byte	0x2
	.value	0x196
	.byte	0x12
	.long	0xf9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"a1"
	.byte	0x2
	.value	0x196
	.byte	0x20
	.long	0x5dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"a0"
	.byte	0x2
	.value	0x196
	.byte	0x2e
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"d1"
	.byte	0x2
	.value	0x196
	.byte	0x3c
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"d0"
	.byte	0x2
	.value	0x196
	.byte	0x4a
	.long	0x5dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF223
	.byte	0x2
	.value	0x198
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF224
	.byte	0x2
	.value	0x198
	.byte	0xd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF188
	.long	0x2bf7
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6955
	.uleb128 0x28
	.string	"cnt"
	.byte	0x2
	.value	0x1a4
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x2ba0
	.uleb128 0x22
	.long	.LASF225
	.byte	0x2
	.value	0x1a2
	.byte	0x3
	.long	0x78b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x2bc6
	.uleb128 0x22
	.long	.LASF225
	.byte	0x2
	.value	0x1a3
	.byte	0x3
	.long	0x78b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x28
	.string	"i"
	.byte	0x2
	.value	0x1a6
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x46
	.long	0x2bf7
	.uleb128 0xe
	.long	0xe4
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x2be7
	.uleb128 0x2d
	.long	.LASF226
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ca1
	.uleb128 0x27
	.long	.LASF227
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x23
	.long	.LASF228
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x2c57
	.uleb128 0x24
	.long	.LASF227
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc7
	.byte	0
	.uleb128 0x24
	.long	.LASF229
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc7
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x2c2c
	.uleb128 0x22
	.long	.LASF228
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x2cb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF229
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	.LASF230
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x2cb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	.LASF231
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x2c57
	.long	0x2cb1
	.uleb128 0xe
	.long	0xe4
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x2ca1
	.uleb128 0x3
	.byte	0x8
	.long	0x2c57
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.quad	0
	.quad	0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB79-.Ltext0
	.quad	.LBE79-.Ltext0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF154:
	.string	"token_length"
.LASF9:
	.string	"size_t"
.LASF79:
	.string	"mpz_t"
.LASF102:
	.string	"GETOPT_HELP_CHAR"
.LASF82:
	.string	"mp_bits_per_limb"
.LASF220:
	.string	"gcd_odd"
.LASF59:
	.string	"_IO_codecvt"
.LASF168:
	.string	"min_width"
.LASF170:
	.string	"width"
.LASF39:
	.string	"_IO_save_end"
.LASF232:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF90:
	.string	"_sys_siglist"
.LASF71:
	.string	"time_t"
.LASF32:
	.string	"_IO_write_base"
.LASF121:
	.string	"error_one_per_line"
.LASF48:
	.string	"_lock"
.LASF202:
	.string	"millerrabin"
.LASF173:
	.string	"line_buffered"
.LASF132:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF224:
	.string	"cnta"
.LASF37:
	.string	"_IO_save_base"
.LASF41:
	.string	"_chain"
.LASF227:
	.string	"program"
.LASF45:
	.string	"_cur_column"
.LASF65:
	.string	"sys_nerr"
.LASF198:
	.string	"mp_millerrabin"
.LASF67:
	.string	"_sys_nerr"
.LASF74:
	.string	"mp_limb_t"
.LASF92:
	.string	"__environ"
.LASF179:
	.string	"mp_factor"
.LASF20:
	.string	"long int"
.LASF193:
	.string	"ret1"
.LASF192:
	.string	"ret2"
.LASF6:
	.string	"has_arg"
.LASF185:
	.string	"__invbits"
.LASF58:
	.string	"_IO_marker"
.LASF155:
	.string	"main"
.LASF190:
	.string	"mp_prime_p"
.LASF221:
	.string	"bgta"
.LASF149:
	.string	"binvert_table"
.LASF161:
	.string	"print_factors_single"
.LASF18:
	.string	"signed char"
.LASF27:
	.string	"_IO_FILE"
.LASF85:
	.string	"__timezone"
.LASF148:
	.string	"flag_prove_primality"
.LASF60:
	.string	"_IO_wide_data"
.LASF78:
	.string	"__mpz_struct"
.LASF188:
	.string	"__PRETTY_FUNCTION__"
.LASF124:
	.string	"tokenbuffer"
.LASF117:
	.string	"quoting_style_args"
.LASF93:
	.string	"environ"
.LASF16:
	.string	"unsigned char"
.LASF52:
	.string	"_freeres_list"
.LASF81:
	.string	"mpz_srcptr"
.LASF76:
	.string	"_mp_size"
.LASF129:
	.string	"strtol_error"
.LASF182:
	.string	"factor_using_pollard_rho2"
.LASF226:
	.string	"emit_ancillary_info"
.LASF235:
	.string	"__builtin_va_list"
.LASF120:
	.string	"error_message_count"
.LASF83:
	.string	"__tzname"
.LASF10:
	.string	"__gnuc_va_list"
.LASF147:
	.string	"_Bool"
.LASF151:
	.string	"lbuf"
.LASF183:
	.string	"factor_found"
.LASF217:
	.string	"factor_insert_large"
.LASF2:
	.string	"char"
.LASF80:
	.string	"mpz_ptr"
.LASF158:
	.string	"do_stdin"
.LASF181:
	.string	"mp_factor_using_pollard_rho"
.LASF208:
	.string	"factor_using_division"
.LASF159:
	.string	"print_factors"
.LASF237:
	.string	"_IO_lock_t"
.LASF88:
	.string	"timezone"
.LASF110:
	.string	"shell_escape_always_quoting_style"
.LASF223:
	.string	"cntd"
.LASF29:
	.string	"_IO_read_ptr"
.LASF150:
	.string	"lbuf_"
.LASF12:
	.string	"fp_offset"
.LASF62:
	.string	"stdin"
.LASF136:
	.string	"DEV_DEBUG_OPTION"
.LASF189:
	.string	"_redcify_q"
.LASF66:
	.string	"sys_errlist"
.LASF160:
	.string	"input"
.LASF212:
	.string	"mp_factor_insert"
.LASF40:
	.string	"_markers"
.LASF105:
	.string	"program_name"
.LASF236:
	.string	"__va_list_tag"
.LASF112:
	.string	"c_maybe_quoting_style"
.LASF126:
	.string	"buffer"
.LASF133:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF229:
	.string	"node"
.LASF140:
	.string	"mp_factors"
.LASF94:
	.string	"program_invocation_name"
.LASF49:
	.string	"_offset"
.LASF141:
	.string	"long_options"
.LASF145:
	.string	"binv"
.LASF131:
	.string	"LONGINT_OVERFLOW"
.LASF1:
	.string	"optind"
.LASF216:
	.string	"mpz_single_init"
.LASF115:
	.string	"clocale_quoting_style"
.LASF119:
	.string	"error_print_progname"
.LASF8:
	.string	"long unsigned int"
.LASF157:
	.string	"status"
.LASF43:
	.string	"_flags2"
.LASF238:
	.string	"lbuf_alloc"
.LASF31:
	.string	"_IO_read_base"
.LASF26:
	.string	"option"
.LASF56:
	.string	"_unused2"
.LASF146:
	.string	"dev_debug"
.LASF199:
	.string	"millerrabin2"
.LASF152:
	.string	"argc"
.LASF44:
	.string	"_old_offset"
.LASF228:
	.string	"infomap"
.LASF153:
	.string	"argv"
.LASF107:
	.string	"shell_quoting_style"
.LASF175:
	.string	"tlend"
.LASF69:
	.string	"long long int"
.LASF61:
	.string	"va_list"
.LASF163:
	.string	"__d1"
.LASF96:
	.string	"Version"
.LASF164:
	.string	"__d0"
.LASF97:
	.string	"exit_failure"
.LASF72:
	.string	"_gl_cxxalias_dummy"
.LASF219:
	.string	"gcd2_odd"
.LASF111:
	.string	"c_quoting_style"
.LASF34:
	.string	"_IO_write_end"
.LASF210:
	.string	"mp_factor_insert_ui"
.LASF99:
	.string	"uintmax_t"
.LASF134:
	.string	"LONGINT_INVALID"
.LASF11:
	.string	"gp_offset"
.LASF91:
	.string	"sys_siglist"
.LASF21:
	.string	"__intmax_t"
.LASF103:
	.string	"GETOPT_VERSION_CHAR"
.LASF35:
	.string	"_IO_buf_base"
.LASF15:
	.string	"unsigned int"
.LASF104:
	.string	"version_etc_copyright"
.LASF118:
	.string	"quoting_style_vals"
.LASF191:
	.string	"is_prime"
.LASF106:
	.string	"literal_quoting_style"
.LASF86:
	.string	"tzname"
.LASF207:
	.string	"mp_factor_using_division"
.LASF54:
	.string	"__pad5"
.LASF7:
	.string	"flag"
.LASF211:
	.string	"prime"
.LASF13:
	.string	"overflow_arg_area"
.LASF122:
	.string	"quoting_options"
.LASF201:
	.string	"nm1_0"
.LASF200:
	.string	"nm1_1"
.LASF205:
	.string	"mulredc2"
.LASF28:
	.string	"_flags"
.LASF176:
	.string	"lbuf_flush"
.LASF231:
	.string	"lc_messages"
.LASF123:
	.string	"quote_quoting_options"
.LASF169:
	.string	"umaxstr"
.LASF55:
	.string	"_mode"
.LASF50:
	.string	"_codecvt"
.LASF138:
	.string	"plarge"
.LASF101:
	.string	"LOG10_TIMESPEC_HZ"
.LASF98:
	.string	"intmax_t"
.LASF70:
	.string	"long double"
.LASF77:
	.string	"_mp_d"
.LASF57:
	.string	"FILE"
.LASF215:
	.string	"mpz_va_init"
.LASF130:
	.string	"LONGINT_OK"
.LASF184:
	.string	"__inv"
.LASF127:
	.string	"token_buffer"
.LASF4:
	.string	"optopt"
.LASF214:
	.string	"mp_factor_init"
.LASF135:
	.string	"UDItype"
.LASF114:
	.string	"locale_quoting_style"
.LASF125:
	.string	"size"
.LASF73:
	.string	"long long unsigned int"
.LASF209:
	.string	"factor_insert_refind"
.LASF206:
	.string	"mulredc"
.LASF14:
	.string	"reg_save_area"
.LASF178:
	.string	"lo_carry"
.LASF23:
	.string	"__off_t"
.LASF128:
	.string	"quoting_style"
.LASF95:
	.string	"program_invocation_short_name"
.LASF53:
	.string	"_freeres_buf"
.LASF218:
	.string	"factor_insert_multiplicity"
.LASF3:
	.string	"opterr"
.LASF177:
	.string	"strto2uintmax"
.LASF234:
	.string	"/root/coreutils"
.LASF25:
	.string	"__time_t"
.LASF139:
	.string	"nfactors"
.LASF38:
	.string	"_IO_backup_base"
.LASF47:
	.string	"_shortbuf"
.LASF142:
	.string	"primes_diff"
.LASF108:
	.string	"shell_always_quoting_style"
.LASF24:
	.string	"__off64_t"
.LASF196:
	.string	"prime_p"
.LASF197:
	.string	"dummy"
.LASF167:
	.string	"lbuf_putint"
.LASF194:
	.string	"prime2_p"
.LASF113:
	.string	"escape_quoting_style"
.LASF36:
	.string	"_IO_buf_end"
.LASF222:
	.string	"mod2"
.LASF5:
	.string	"name"
.LASF144:
	.string	"primes_dtab"
.LASF230:
	.string	"map_prog"
.LASF64:
	.string	"stderr"
.LASF19:
	.string	"short int"
.LASF225:
	.string	"__cbtmp"
.LASF156:
	.string	"usage"
.LASF109:
	.string	"shell_escape_quoting_style"
.LASF46:
	.string	"_vtable_offset"
.LASF68:
	.string	"_sys_errlist"
.LASF22:
	.string	"__uintmax_t"
.LASF162:
	.string	"print_uintmaxes"
.LASF100:
	.string	"TIMESPEC_HZ"
.LASF84:
	.string	"__daylight"
.LASF203:
	.string	"powm2"
.LASF180:
	.string	"factor"
.LASF30:
	.string	"_IO_read_end"
.LASF89:
	.string	"getdate_err"
.LASF172:
	.string	"buffered"
.LASF42:
	.string	"_fileno"
.LASF143:
	.string	"primes_diff8"
.LASF51:
	.string	"_wide_data"
.LASF186:
	.string	"ginv"
.LASF0:
	.string	"optarg"
.LASF213:
	.string	"mp_factor_clear"
.LASF233:
	.string	"src/factor.c"
.LASF17:
	.string	"short unsigned int"
.LASF63:
	.string	"stdout"
.LASF187:
	.string	"factor_using_pollard_rho"
.LASF33:
	.string	"_IO_write_ptr"
.LASF171:
	.string	"lbuf_putc"
.LASF75:
	.string	"_mp_alloc"
.LASF87:
	.string	"daylight"
.LASF166:
	.string	"__r0"
.LASF165:
	.string	"__r1"
.LASF204:
	.string	"powm"
.LASF195:
	.string	"a_prim"
.LASF137:
	.string	"factors"
.LASF116:
	.string	"custom_quoting_style"
.LASF174:
	.string	"tend"
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
