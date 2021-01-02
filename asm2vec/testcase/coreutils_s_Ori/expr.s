	.file	"expr.c"
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
	je	.L9
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L9
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L9:
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
	jne	.L10
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L11
.L10:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L11:
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
	.local	args
	.comm	args,8,8
	.type	mbs_logical_cspn, @function
mbs_logical_cspn:
.LFB52:
	.file 2 "src/expr.c"
	.loc 2 118 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	.loc 2 118 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 119 10
	movq	$0, -160(%rbp)
	.loc 2 121 13
	movq	-176(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 121 6
	testb	%al, %al
	jne	.L14
	.loc 2 122 12
	movl	$0, %eax
	jmp	.L15
.L14:
	.loc 2 125 7
	call	__ctype_get_mb_cur_max@PLT
	.loc 2 125 6
	cmpq	$1, %rax
	jbe	.L16
.LBB2:
	.loc 2 129 12
	movq	-168(%rbp), %rax
	movq	%rax, -128(%rbp)
	movb	$0, -144(%rbp)
	leaq	-144(%rbp), %rax
	addq	$4, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$0, -132(%rbp)
	.loc 2 129 7
	jmp	.L17
.L34:
	.loc 2 131 11
	addq	$1, -160(%rbp)
	.loc 2 132 15
	movq	-120(%rbp), %rax
	.loc 2 132 14
	cmpq	$1, %rax
	jne	.L18
	.loc 2 134 36
	movq	-128(%rbp), %rax
	.loc 2 134 35
	movzbl	(%rax), %eax
	.loc 2 134 19
	movsbl	%al, %edx
	movq	-176(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mbschr@PLT
	.loc 2 134 18
	testq	%rax, %rax
	je	.L19
	.loc 2 135 24
	movq	-160(%rbp), %rax
	jmp	.L15
.L18:
.LBB3:
	.loc 2 141 20
	movq	-176(%rbp), %rax
	movq	%rax, -64(%rbp)
	movb	$0, -80(%rbp)
	leaq	-80(%rbp), %rax
	addq	$4, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$0, -68(%rbp)
	.loc 2 141 15
	jmp	.L21
.L30:
	.loc 2 144 21
	movzbl	-48(%rbp), %eax
	testb	%al, %al
	je	.L22
	.loc 2 144 21 is_stmt 0 discriminator 1
	movzbl	-112(%rbp), %eax
	testb	%al, %al
	je	.L22
	.loc 2 144 21 discriminator 3
	movl	-44(%rbp), %edx
	movl	-108(%rbp), %eax
	cmpl	%eax, %edx
	sete	%al
	jmp	.L23
.L22:
	.loc 2 144 21 discriminator 4
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L24
	.loc 2 144 21 discriminator 6
	movq	-56(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L24
	.loc 2 144 21 discriminator 8
	movl	$1, %eax
	jmp	.L25
.L24:
	.loc 2 144 21 discriminator 9
	movl	$0, %eax
.L25:
	.loc 2 144 21 discriminator 11
	andl	$1, %eax
.L23:
	.loc 2 144 20 is_stmt 1 discriminator 12
	testb	%al, %al
	je	.L26
	.loc 2 145 26
	movq	-160(%rbp), %rax
	jmp	.L15
.L26:
	.loc 2 143 20
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movb	$0, -68(%rbp)
.L21:
	.loc 2 142 20
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	mbuiter_multi_next@PLT
	movzbl	-48(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L27
	.loc 2 142 20 is_stmt 0 discriminator 2
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	je	.L28
.L27:
	.loc 2 142 20 discriminator 3
	movl	$1, %eax
	jmp	.L29
.L28:
	.loc 2 142 20 discriminator 4
	movl	$0, %eax
.L29:
	.loc 2 141 15 is_stmt 1
	testl	%eax, %eax
	jne	.L30
.L19:
.LBE3:
	.loc 2 129 52 discriminator 2
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movb	$0, -132(%rbp)
.L17:
	.loc 2 129 33 discriminator 1
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	mbuiter_multi_next@PLT
	movzbl	-112(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L31
	.loc 2 129 33 is_stmt 0 discriminator 4
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	je	.L32
.L31:
	.loc 2 129 33 discriminator 5
	movl	$1, %eax
	jmp	.L33
.L32:
	.loc 2 129 33 discriminator 6
	movl	$0, %eax
.L33:
	.loc 2 129 7 is_stmt 1 discriminator 8
	testl	%eax, %eax
	jne	.L34
	.loc 2 150 14
	movl	$0, %eax
	jmp	.L15
.L16:
.LBE2:
.LBB4:
	.loc 2 156 18
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	movq	%rax, -152(%rbp)
	.loc 2 157 16
	movq	-168(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 157 28
	testb	%al, %al
	je	.L35
	.loc 2 157 28 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax
	addq	$1, %rax
	jmp	.L15
.L35:
	.loc 2 157 28 discriminator 2
	movl	$0, %eax
.L15:
.LBE4:
	.loc 2 159 1 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L37
	.loc 2 159 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	mbs_logical_cspn, .-mbs_logical_cspn
	.type	mbs_logical_substr, @function
mbs_logical_substr:
.LFB53:
	.loc 2 170 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	.loc 2 170 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 173 17
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -96(%rbp)
	.loc 2 174 18
	call	__ctype_get_mb_cur_max@PLT
	.loc 2 174 47
	cmpq	$1, %rax
	jbe	.L39
	.loc 2 174 36 discriminator 1
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	mbslen@PLT
	jmp	.L40
.L39:
	.loc 2 174 47 discriminator 2
	movq	-96(%rbp), %rax
.L40:
	.loc 2 174 10 discriminator 4
	movq	%rax, -88(%rbp)
	.loc 2 176 6 discriminator 4
	movq	-88(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jb	.L41
	.loc 2 176 18 discriminator 1
	cmpq	$0, -144(%rbp)
	je	.L41
	.loc 2 176 30 discriminator 2
	cmpq	$0, -152(%rbp)
	je	.L41
	.loc 2 176 42 discriminator 3
	cmpq	$-1, -152(%rbp)
	jne	.L42
.L41:
	.loc 2 177 12
	leaq	.LC16(%rip), %rdi
	call	xstrdup@PLT
	jmp	.L43
.L42:
	.loc 2 180 17
	movq	-88(%rbp), %rax
	subq	-144(%rbp), %rax
	addq	$1, %rax
	.loc 2 180 10
	cmpq	%rax, -152(%rbp)
	cmovbe	-152(%rbp), %rax
	movq	%rax, -112(%rbp)
	.loc 2 182 7
	call	__ctype_get_mb_cur_max@PLT
	.loc 2 182 6
	cmpq	$1, %rax
	jne	.L44
	.loc 2 185 11
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -128(%rbp)
	.loc 2 186 34
	movq	-144(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-136(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 186 14
	movq	-112(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy@PLT
	movq	%rax, -120(%rbp)
	jmp	.L45
.L44:
.LBB5:
	.loc 2 194 18
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -128(%rbp)
	.loc 2 194 12
	movq	-128(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc 2 197 14
	movq	$1, -104(%rbp)
	.loc 2 198 12
	movq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movb	$0, -80(%rbp)
	leaq	-80(%rbp), %rax
	addq	$4, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$0, -68(%rbp)
	.loc 2 198 7
	jmp	.L46
.L53:
	.loc 2 203 14
	movq	-104(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jb	.L55
	.loc 2 207 11
	subq	$1, -112(%rbp)
	.loc 2 208 18
	movq	-56(%rbp), %rdx
	.loc 2 208 33
	movq	-64(%rbp), %rcx
	.loc 2 208 18
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy@PLT
	movq	%rax, -120(%rbp)
	jmp	.L48
.L55:
	.loc 2 204 13
	nop
.L48:
	.loc 2 200 12
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movb	$0, -68(%rbp)
	.loc 2 200 33
	addq	$1, -104(%rbp)
.L46:
	.loc 2 199 12
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	mbuiter_multi_next@PLT
	movzbl	-48(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L49
	.loc 2 199 12 is_stmt 0 discriminator 2
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	je	.L50
.L49:
	.loc 2 199 12 discriminator 3
	movl	$1, %eax
	jmp	.L51
.L50:
	.loc 2 199 12 discriminator 4
	movl	$0, %eax
.L51:
	.loc 2 198 7 is_stmt 1
	testl	%eax, %eax
	je	.L45
	.loc 2 199 30
	cmpq	$0, -112(%rbp)
	jne	.L53
.L45:
.LBE5:
	.loc 2 211 9
	movq	-120(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 212 10
	movq	-128(%rbp), %rax
.L43:
	.loc 2 213 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L54
	call	__stack_chk_fail@PLT
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	mbs_logical_substr, .-mbs_logical_substr
	.type	mbs_offset_to_chars, @function
mbs_offset_to_chars:
.LFB54:
	.loc 2 225 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 2 225 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 227 10
	movq	$0, -96(%rbp)
	.loc 2 228 8
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movb	$0, -80(%rbp)
	leaq	-80(%rbp), %rax
	addq	$4, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$0, -68(%rbp)
	.loc 2 228 3
	jmp	.L57
.L63:
.LBB6:
	.loc 2 230 21
	movq	-64(%rbp), %rax
	.loc 2 230 17
	subq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 2 231 13
	movq	-88(%rbp), %rax
	.loc 2 231 10
	cmpq	%rax, -112(%rbp)
	jbe	.L66
	.loc 2 233 7 discriminator 2
	addq	$1, -96(%rbp)
.LBE6:
	.loc 2 228 48 discriminator 2
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movb	$0, -68(%rbp)
.L57:
	.loc 2 228 29 discriminator 1
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	mbuiter_multi_next@PLT
	movzbl	-48(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L60
	.loc 2 228 29 is_stmt 0 discriminator 4
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	je	.L61
.L60:
	.loc 2 228 29 discriminator 5
	movl	$1, %eax
	jmp	.L62
.L61:
	.loc 2 228 29 discriminator 6
	movl	$0, %eax
.L62:
	.loc 2 228 3 is_stmt 1 discriminator 8
	testl	%eax, %eax
	jne	.L63
	jmp	.L59
.L66:
.LBB7:
	.loc 2 232 9
	nop
.L59:
.LBE7:
	.loc 2 235 10
	movq	-96(%rbp), %rax
	.loc 2 236 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L65
	call	__stack_chk_fail@PLT
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	mbs_offset_to_chars, .-mbs_offset_to_chars
	.section	.rodata
	.align 8
.LC18:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC19:
	.string	"Usage: %s EXPRESSION\n  or:  %s OPTION\n"
	.align 8
.LC20:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC21:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC22:
	.ascii	"\nPrint the value "
	.string	"of EXPRESSION to standard output.  A blank line below\nseparates increasing precedence groups.  EXPRESSION may be:\n\n  ARG1 | ARG2       ARG1 if it is neither null nor 0, otherwise ARG2\n\n  ARG1 & ARG2       ARG1 if neither argument is null or 0, otherwise 0\n"
	.align 8
.LC23:
	.ascii	"\n  ARG1 < ARG2       ARG1 is less"
	.string	" than ARG2\n  ARG1 <= ARG2      ARG1 is less than or equal to ARG2\n  ARG1 = ARG2       ARG1 is equal to ARG2\n  ARG1 != ARG2      ARG1 is unequal to ARG2\n  ARG1 >= ARG2      ARG1 is greater than or equal to ARG2\n  ARG1 > ARG2       ARG1 is greater than ARG2\n"
	.align 8
.LC24:
	.string	"\n  ARG1 + ARG2       arithmetic sum of ARG1 and ARG2\n  ARG1 - ARG2       arithmetic difference of ARG1 and ARG2\n"
	.align 8
.LC25:
	.string	"\n  ARG1 * ARG2       arithmetic product of ARG1 and ARG2\n  ARG1 / ARG2       arithmetic quotient of ARG1 divided by ARG2\n  ARG1 % ARG2       arithmetic remainder of ARG1 divided by ARG2\n"
	.align 8
.LC26:
	.ascii	"\n  STRING : REGEXP   anchored pattern match of REGEXP"
	.string	" in STRING\n\n  match STRING REGEXP        same as STRING : REGEXP\n  substr STRING POS LENGTH   substring of STRING, POS counted from 1\n  index STRING CHARS         index in STRING where any CHARS is found, or 0\n  length STRING              length of STRING\n"
	.align 8
.LC27:
	.string	"  + TOKEN                    interpret TOKEN as a string, even if it is a\n                               keyword like 'match' or an operator like '/'\n\n  ( EXPRESSION )             value of EXPRESSION\n"
	.align 8
.LC28:
	.ascii	"\nBeware that many operators need to"
	.string	" be escaped or quoted for shells.\nComparisons are arithmetic if both ARGs are numbers, else lexicographical.\nPattern matches return the string matched between \\( and \\) or null; if\n\\( and \\) are not used, they return the number of characters matched or 0.\n"
	.align 8
.LC29:
	.string	"\nExit status is 0 if EXPRESSION is neither null nor 0, 1 if EXPRESSION is null\nor 0, 2 if EXPRESSION is syntactically invalid, and 3 if an error occurred.\n"
.LC30:
	.string	"expr"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB55:
	.loc 2 242 1
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
	.loc 2 243 6
	cmpl	$0, -20(%rbp)
	je	.L68
	.loc 2 244 5
	movq	program_name(%rip), %rbx
	leaq	.LC18(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L69
.L68:
	.loc 2 247 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 247 15
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	.loc 2 247 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 252 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 253 7
	movq	stdout(%rip), %rbx
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 254 7
	movq	stdout(%rip), %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 255 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 264 7
	movq	stdout(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 273 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 280 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 286 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 295 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 301 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 308 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 313 7
	leaq	.LC30(%rip), %rdi
	call	emit_ancillary_info
.L69:
	.loc 2 315 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE55:
	.size	usage, .-usage
	.section	.rodata
.LC31:
	.string	"/usr/local/share/locale"
.LC32:
	.string	"8.32.87-e361b"
.LC33:
	.string	"Paul Eggert"
.LC34:
	.string	"James Youngman"
.LC35:
	.string	"Mike Parker"
.LC36:
	.string	"--"
.LC37:
	.string	"missing operand"
	.align 8
.LC38:
	.string	"syntax error: unexpected argument %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB56:
	.loc 2 321 1
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
	.loc 2 325 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 326 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 327 3
	leaq	.LC31(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 328 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 330 3
	movl	$3, %edi
	call	initialize_exit_failure
	.loc 2 331 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 333 3
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	pushq	$0
	leaq	.LC33(%rip), %rdx
	pushq	%rdx
	leaq	.LC34(%rip), %rdx
	pushq	%rdx
	leaq	.LC35(%rip), %rdx
	pushq	%rdx
	leaq	usage(%rip), %r9
	leaq	.LC32(%rip), %r8
	leaq	.LC11(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	parse_long_options@PLT
	addq	$32, %rsp
	.loc 2 338 16
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	.loc 2 339 6
	cmpl	$1, -28(%rbp)
	jbe	.L71
	.loc 2 339 21 discriminator 1
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 339 18 discriminator 1
	testl	%eax, %eax
	jne	.L71
	.loc 2 341 7
	subl	$1, -28(%rbp)
	.loc 2 342 7
	addq	$8, -48(%rbp)
.L71:
	.loc 2 345 6
	cmpl	$1, -28(%rbp)
	ja	.L72
	.loc 2 347 20
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 347 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 348 7
	movl	$2, %edi
	call	usage
.L72:
	.loc 2 351 15
	movq	-48(%rbp), %rax
	addq	$8, %rax
	.loc 2 351 8
	movq	%rax, args(%rip)
	.loc 2 353 7
	movl	$1, %edi
	call	eval
	movq	%rax, -24(%rbp)
	.loc 2 354 8
	call	nomoreargs
	.loc 2 354 7
	xorl	$1, %eax
	.loc 2 354 6
	testb	%al, %al
	je	.L73
.LBB8:
	.loc 2 355 5
	movq	args(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$8, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L73:
.LBE8:
	.loc 2 358 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	printv
	.loc 2 360 10
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	null
	movzbl	%al, %eax
	.loc 2 361 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	main, .-main
	.type	int_value, @function
int_value:
.LFB57:
	.loc 2 367 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 368 14
	movl	$24, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 369 11
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 370 24
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 2 370 3
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	mpz_init_set_ui@PLT
	.loc 2 371 10
	movq	-8(%rbp), %rax
	.loc 2 372 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	int_value, .-int_value
	.type	str_value, @function
str_value:
.LFB58:
	.loc 2 378 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 379 14
	movl	$24, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 380 11
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	.loc 2 381 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, %rdx
	.loc 2 381 10
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 382 10
	movq	-8(%rbp), %rax
	.loc 2 383 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	str_value, .-str_value
	.type	freev, @function
freev:
.LFB59:
	.loc 2 389 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 390 8
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 390 6
	cmpl	$1, %eax
	jne	.L80
	.loc 2 391 15
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 391 5
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L81
.L80:
	.loc 2 393 20
	movq	-8(%rbp), %rax
	addq	$8, %rax
	.loc 2 393 5
	movq	%rax, %rdi
	call	mpz_clear@PLT
.L81:
	.loc 2 394 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 395 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	freev, .-freev
	.type	printv, @function
printv:
.LFB60:
	.loc 2 401 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 402 12
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 402 3
	testl	%eax, %eax
	je	.L83
	cmpl	$1, %eax
	je	.L84
	jmp	.L87
.L83:
	.loc 2 405 36
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 2 405 7
	movq	stdout(%rip), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	mpz_out_str@PLT
	.loc 2 406 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 407 7
	jmp	.L86
.L84:
	.loc 2 409 17
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 409 7
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 410 7
	jmp	.L86
.L87:
	.loc 2 412 7
	call	abort@PLT
.L86:
	.loc 2 414 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	printv, .-printv
	.type	null, @function
null:
.LFB61:
	.loc 2 420 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 421 12
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 421 3
	testl	%eax, %eax
	je	.L89
	cmpl	$1, %eax
	je	.L90
	jmp	.L96
.L89:
	.loc 2 424 27
	movq	-24(%rbp), %rax
	addq	$8, %rax
	.loc 2 424 14
	movq	%rax, %rdi
	call	mpz_sgn@PLT
	.loc 2 424 31
	testl	%eax, %eax
	sete	%al
	jmp	.L92
.L90:
.LBB9:
	.loc 2 427 21
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 428 13
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 428 12
	testb	%al, %al
	jne	.L93
	.loc 2 429 18
	movl	$1, %eax
	jmp	.L92
.L93:
	.loc 2 431 16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 431 20
	cmpb	$45, %al
	sete	%al
	movzbl	%al, %eax
	.loc 2 431 12
	addq	%rax, -8(%rbp)
.L95:
	.loc 2 435 17
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 435 16
	cmpb	$48, %al
	je	.L94
	.loc 2 436 22
	movl	$0, %eax
	jmp	.L92
.L94:
	.loc 2 438 9
	addq	$1, -8(%rbp)
	.loc 2 438 16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 438 9
	testb	%al, %al
	jne	.L95
	.loc 2 440 16
	movl	$1, %eax
	jmp	.L92
.L96:
.LBE9:
	.loc 2 443 7
	call	abort@PLT
.L92:
	.loc 2 445 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	null, .-null
	.type	looks_like_integer, @function
looks_like_integer:
.LFB62:
	.loc 2 451 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 452 10
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 452 14
	cmpb	$45, %al
	sete	%al
	movzbl	%al, %eax
	.loc 2 452 6
	addq	%rax, -8(%rbp)
.L100:
	.loc 2 455 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 455 8
	cmpl	$9, %eax
	jbe	.L98
	.loc 2 456 14
	movl	$0, %eax
	jmp	.L99
.L98:
	.loc 2 457 3
	addq	$1, -8(%rbp)
	.loc 2 457 10
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 457 3
	testb	%al, %al
	jne	.L100
	.loc 2 459 10
	movl	$1, %eax
.L99:
	.loc 2 460 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	looks_like_integer, .-looks_like_integer
	.type	tostring, @function
tostring:
.LFB63:
	.loc 2 466 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 467 12
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 467 3
	testl	%eax, %eax
	je	.L102
	cmpl	$1, %eax
	je	.L107
	jmp	.L106
.L102:
.LBB10:
	.loc 2 471 46
	movq	-24(%rbp), %rax
	addq	$8, %rax
	.loc 2 471 19
	movq	%rax, %rdx
	movl	$10, %esi
	movl	$0, %edi
	call	mpz_get_str@PLT
	movq	%rax, -8(%rbp)
	.loc 2 472 24
	movq	-24(%rbp), %rax
	addq	$8, %rax
	.loc 2 472 9
	movq	%rax, %rdi
	call	mpz_clear@PLT
	.loc 2 473 16
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 474 17
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
.LBE10:
	.loc 2 476 7
	jmp	.L105
.L106:
	.loc 2 480 7
	call	abort@PLT
.L107:
	.loc 2 478 7
	nop
.L105:
	.loc 2 482 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	tostring, .-tostring
	.section	.rodata
.LC39:
	.string	"%s"
	.text
	.type	toarith, @function
toarith:
.LFB64:
	.loc 2 488 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 489 12
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 489 3
	testl	%eax, %eax
	je	.L109
	cmpl	$1, %eax
	je	.L110
	jmp	.L115
.L109:
	.loc 2 492 14
	movl	$1, %eax
	jmp	.L112
.L110:
.LBB11:
	.loc 2 495 15
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 497 15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	looks_like_integer
	.loc 2 497 13
	xorl	$1, %eax
	.loc 2 497 12
	testb	%al, %al
	je	.L113
	.loc 2 498 18
	movl	$0, %eax
	jmp	.L112
.L113:
	.loc 2 499 35
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	.loc 2 499 13
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	mpz_init_set_str@PLT
	.loc 2 499 12
	testl	%eax, %eax
	je	.L114
.LBB12:
	.loc 2 500 11
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC39(%rip), %rdx
	movl	$34, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	error@PLT
.L114:
.LBE12:
	.loc 2 501 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 502 17
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 503 16
	movl	$1, %eax
	jmp	.L112
.L115:
.LBE11:
	.loc 2 506 7
	call	abort@PLT
.L112:
	.loc 2 508 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	toarith, .-toarith
	.type	getsize, @function
getsize:
.LFB65:
	.loc 2 515 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 516 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mpz_sgn@PLT
	.loc 2 516 6
	testl	%eax, %eax
	jns	.L117
	.loc 2 517 12
	movq	$-1, %rax
	jmp	.L118
.L117:
	.loc 2 518 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mpz_fits_ulong_p@PLT
	.loc 2 518 6
	testl	%eax, %eax
	je	.L119
.LBB13:
	.loc 2 520 30
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mpz_get_ui@PLT
	movq	%rax, -8(%rbp)
	.loc 2 521 10
	cmpq	$-1, -8(%rbp)
	je	.L119
	.loc 2 522 16
	movq	-8(%rbp), %rax
	jmp	.L118
.L119:
.LBE13:
	.loc 2 524 10
	movq	$-2, %rax
.L118:
	.loc 2 525 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	getsize, .-getsize
	.type	nextarg, @function
nextarg:
.LFB66:
	.loc 2 532 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 533 7
	movq	args(%rip), %rax
	movq	(%rax), %rax
	.loc 2 533 6
	testq	%rax, %rax
	jne	.L121
	.loc 2 534 12
	movl	$0, %eax
	jmp	.L122
.L121:
.LBB14:
	.loc 2 537 16
	movq	args(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 537 12
	testl	%eax, %eax
	sete	%al
	movb	%al, -1(%rbp)
	.loc 2 538 12
	movq	args(%rip), %rax
	movzbl	-1(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, args(%rip)
	.loc 2 539 14
	movzbl	-1(%rbp), %eax
.L122:
.LBE14:
	.loc 2 541 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	nextarg, .-nextarg
	.type	nomoreargs, @function
nomoreargs:
.LFB67:
	.loc 2 547 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 548 10
	movq	args(%rip), %rax
	movq	(%rax), %rax
	.loc 2 548 16
	testq	%rax, %rax
	sete	%al
	.loc 2 549 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	nomoreargs, .-nomoreargs
	.section	.rodata
	.align 8
.LC40:
	.string	"syntax error: missing argument after %s"
	.text
	.type	require_more_args, @function
require_more_args:
.LFB68:
	.loc 2 556 1
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
	.loc 2 557 7
	call	nomoreargs
	.loc 2 557 6
	testb	%al, %al
	je	.L127
.LBB15:
	.loc 2 558 5
	movq	args(%rip), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$8, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L127:
.LBE15:
	.loc 2 560 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	require_more_args, .-require_more_args
	.section	.rodata
	.align 8
.LC41:
	.string	"error in regular expression matcher"
	.text
	.type	docolon, @function
docolon:
.LFB69:
	.loc 2 585 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$424, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -424(%rbp)
	movq	%rsi, -432(%rbp)
	.loc 2 585 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 586 10
	movq	$0, -416(%rbp)
	.loc 2 593 3
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	tostring
	.loc 2 594 3
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	tostring
	.loc 2 596 20
	movq	$0, -384(%rbp)
	.loc 2 597 17
	movq	$0, -376(%rbp)
	.loc 2 598 15
	movq	$0, -368(%rbp)
	.loc 2 600 20
	movq	$0, -352(%rbp)
	.loc 2 601 23
	movq	$0, -344(%rbp)
	.loc 2 602 21
	leaq	-288(%rbp), %rax
	movq	%rax, -320(%rbp)
	.loc 2 603 23
	movq	$0, -312(%rbp)
	.loc 2 604 21
	movq	$710, rpl_re_syntax_options(%rip)
	.loc 2 606 54
	movq	-432(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 606 12
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	.loc 2 606 37
	movq	-432(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 606 12
	leaq	-352(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_re_compile_pattern@PLT
	movq	%rax, -408(%rbp)
	.loc 2 607 6
	cmpq	$0, -408(%rbp)
	je	.L129
.LBB16:
	.loc 2 608 5
	movq	-408(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC39(%rip), %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L129:
.LBE16:
	.loc 2 609 28
	movzbl	-296(%rbp), %eax
	andl	$127, %eax
	movb	%al, -296(%rbp)
	.loc 2 611 58
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 611 45
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 611 14
	movq	%rax, %rdi
	.loc 2 611 41
	movq	-424(%rbp), %rax
	movq	8(%rax), %rsi
	.loc 2 611 14
	leaq	-384(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	rpl_re_match@PLT
	movq	%rax, -400(%rbp)
	.loc 2 612 6
	cmpq	$0, -400(%rbp)
	js	.L130
	.loc 2 615 20
	movq	-304(%rbp), %rax
	.loc 2 615 10
	testq	%rax, %rax
	je	.L131
	.loc 2 617 16
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 617 26
	movq	-368(%rbp), %rdx
	.loc 2 617 30
	addq	$8, %rdx
	movq	(%rdx), %rdx
	.loc 2 617 18
	addq	%rdx, %rax
	.loc 2 617 35
	movb	$0, (%rax)
	.loc 2 618 31
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 618 43
	movq	-376(%rbp), %rdx
	.loc 2 618 49
	addq	$8, %rdx
	movq	(%rdx), %rdx
	.loc 2 618 34
	addq	%rdx, %rax
	.loc 2 618 15
	movq	%rax, %rdi
	call	str_value
	movq	%rax, -416(%rbp)
	jmp	.L132
.L131:
.LBB17:
	.loc 2 624 23
	call	__ctype_get_mb_cur_max@PLT
	.loc 2 626 23
	cmpq	$1, %rax
	je	.L133
	.loc 2 626 25 discriminator 1
	movq	-400(%rbp), %rdx
	.loc 2 626 51 discriminator 1
	movq	-424(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 626 25 discriminator 1
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mbs_offset_to_chars
	jmp	.L134
.L133:
	.loc 2 626 23 discriminator 2
	movq	-400(%rbp), %rax
.L134:
	.loc 2 624 18
	movq	%rax, -392(%rbp)
	.loc 2 627 15
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	int_value
	movq	%rax, -416(%rbp)
	jmp	.L132
.L130:
.LBE17:
	.loc 2 630 11
	cmpq	$-1, -400(%rbp)
	jne	.L135
	.loc 2 633 20
	movq	-304(%rbp), %rax
	.loc 2 633 10
	testq	%rax, %rax
	je	.L136
	.loc 2 634 13
	leaq	.LC16(%rip), %rdi
	call	str_value
	movq	%rax, -416(%rbp)
	jmp	.L132
.L136:
	.loc 2 636 13
	movl	$0, %edi
	call	int_value
	movq	%rax, -416(%rbp)
	jmp	.L132
.L135:
.LBB18:
	.loc 2 639 5
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	cmpq	$-2, -400(%rbp)
	jne	.L137
	.loc 2 639 5 is_stmt 0 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	jmp	.L138
.L137:
	.loc 2 639 5 discriminator 2
	movl	$75, %eax
.L138:
	.loc 2 639 5 discriminator 4
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	error@PLT
.L132:
.LBE18:
	.loc 2 643 18 is_stmt 1
	movq	-384(%rbp), %rax
	.loc 2 643 6
	testq	%rax, %rax
	je	.L139
	.loc 2 645 20
	movq	-376(%rbp), %rax
	.loc 2 645 7
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 646 20
	movq	-368(%rbp), %rax
	.loc 2 646 7
	movq	%rax, %rdi
	call	free@PLT
.L139:
	.loc 2 648 21
	movq	$0, -320(%rbp)
	.loc 2 649 3
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_regfree@PLT
	.loc 2 650 10
	movq	-416(%rbp), %rax
	.loc 2 651 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L141
	call	__stack_chk_fail@PLT
.L141:
	addq	$424, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	docolon, .-docolon
	.section	.rodata
.LC42:
	.string	"("
	.align 8
.LC43:
	.string	"syntax error: expecting ')' after %s"
.LC44:
	.string	")"
	.align 8
.LC45:
	.string	"syntax error: expecting ')' instead of %s"
.LC46:
	.string	"syntax error: unexpected ')'"
	.text
	.type	eval7, @function
eval7:
.LFB70:
	.loc 2 657 1
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
	movl	%edi, %eax
	movb	%al, -36(%rbp)
	.loc 2 663 3
	call	require_more_args
	.loc 2 665 7
	leaq	.LC42(%rip), %rdi
	call	nextarg
	.loc 2 665 6
	testb	%al, %al
	je	.L143
	.loc 2 667 11
	movzbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	eval
	movq	%rax, -24(%rbp)
	.loc 2 668 11
	call	nomoreargs
	.loc 2 668 10
	testb	%al, %al
	je	.L144
.LBB19:
	.loc 2 669 9
	movq	args(%rip), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$8, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L144:
.LBE19:
	.loc 2 671 12
	leaq	.LC44(%rip), %rdi
	call	nextarg
	.loc 2 671 11
	xorl	$1, %eax
	.loc 2 671 10
	testb	%al, %al
	je	.L145
.LBB20:
	.loc 2 672 9
	movq	args(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$8, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L145:
.LBE20:
	.loc 2 674 14
	movq	-24(%rbp), %rax
	jmp	.L146
.L143:
	.loc 2 677 7
	leaq	.LC44(%rip), %rdi
	call	nextarg
	.loc 2 677 6
	testb	%al, %al
	je	.L147
.LBB21:
	.loc 2 678 5
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L147:
.LBE21:
	.loc 2 680 26
	movq	args(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, args(%rip)
	.loc 2 680 10
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	str_value
.L146:
	.loc 2 681 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	eval7, .-eval7
	.section	.rodata
.LC47:
	.string	"+"
.LC48:
	.string	"length"
.LC49:
	.string	"match"
.LC50:
	.string	"index"
.LC51:
	.string	"substr"
	.text
	.type	eval6, @function
eval6:
.LFB71:
	.loc 2 687 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, %eax
	movb	%al, -84(%rbp)
	.loc 2 697 7
	leaq	.LC47(%rip), %rdi
	call	nextarg
	.loc 2 697 6
	testb	%al, %al
	je	.L149
	.loc 2 699 7
	call	require_more_args
	.loc 2 700 30
	movq	args(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, args(%rip)
	.loc 2 700 14
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	str_value
	jmp	.L150
.L149:
	.loc 2 702 12
	leaq	.LC48(%rip), %rdi
	call	nextarg
	.loc 2 702 11
	testb	%al, %al
	je	.L151
	.loc 2 704 11
	movzbl	-84(%rbp), %eax
	movl	%eax, %edi
	call	eval6
	movq	%rax, -16(%rbp)
	.loc 2 705 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tostring
	.loc 2 706 34
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 706 11
	movq	%rax, %rdi
	call	mbslen@PLT
	movq	%rax, %rdi
	call	int_value
	movq	%rax, -72(%rbp)
	.loc 2 707 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 708 14
	movq	-72(%rbp), %rax
	jmp	.L150
.L151:
	.loc 2 710 12
	leaq	.LC49(%rip), %rdi
	call	nextarg
	.loc 2 710 11
	testb	%al, %al
	je	.L152
	.loc 2 712 11
	movzbl	-84(%rbp), %eax
	movl	%eax, %edi
	call	eval6
	movq	%rax, -64(%rbp)
	.loc 2 713 11
	movzbl	-84(%rbp), %eax
	movl	%eax, %edi
	call	eval6
	movq	%rax, -16(%rbp)
	.loc 2 714 10
	cmpb	$0, -84(%rbp)
	je	.L153
	.loc 2 716 15
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	docolon
	movq	%rax, -72(%rbp)
	.loc 2 717 11
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	jmp	.L154
.L153:
	.loc 2 720 11
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.L154:
	.loc 2 721 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 722 14
	movq	-72(%rbp), %rax
	jmp	.L150
.L152:
	.loc 2 724 12
	leaq	.LC50(%rip), %rdi
	call	nextarg
	.loc 2 724 11
	testb	%al, %al
	je	.L155
.LBB22:
	.loc 2 728 11
	movzbl	-84(%rbp), %eax
	movl	%eax, %edi
	call	eval6
	movq	%rax, -64(%rbp)
	.loc 2 729 11
	movzbl	-84(%rbp), %eax
	movl	%eax, %edi
	call	eval6
	movq	%rax, -16(%rbp)
	.loc 2 730 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tostring
	.loc 2 731 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tostring
	.loc 2 732 43
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 732 35
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 732 13
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mbs_logical_cspn
	movq	%rax, -8(%rbp)
	.loc 2 733 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	int_value
	movq	%rax, -72(%rbp)
	.loc 2 734 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 735 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 736 14
	movq	-72(%rbp), %rax
	jmp	.L150
.L155:
.LBE22:
	.loc 2 738 12
	leaq	.LC51(%rip), %rdi
	call	nextarg
	.loc 2 738 11
	testb	%al, %al
	je	.L156
	.loc 2 740 11
	movzbl	-84(%rbp), %eax
	movl	%eax, %edi
	call	eval6
	movq	%rax, -64(%rbp)
	.loc 2 741 12
	movzbl	-84(%rbp), %eax
	movl	%eax, %edi
	call	eval6
	movq	%rax, -56(%rbp)
	.loc 2 742 12
	movzbl	-84(%rbp), %eax
	movl	%eax, %edi
	call	eval6
	movq	%rax, -48(%rbp)
	.loc 2 743 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	tostring
	.loc 2 745 12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	toarith
	.loc 2 745 11
	xorl	$1, %eax
	.loc 2 745 10
	testb	%al, %al
	jne	.L157
	.loc 2 745 29 discriminator 1
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	toarith
	.loc 2 745 28 discriminator 1
	xorl	$1, %eax
	.loc 2 745 25 discriminator 1
	testb	%al, %al
	je	.L158
.L157:
	.loc 2 746 13
	leaq	.LC16(%rip), %rdi
	call	str_value
	movq	%rax, -72(%rbp)
	.loc 2 746 11
	jmp	.L159
.L158:
.LBB23:
	.loc 2 749 38
	movq	-56(%rbp), %rax
	addq	$8, %rax
	.loc 2 749 24
	movq	%rax, %rdi
	call	getsize
	movq	%rax, -40(%rbp)
	.loc 2 750 38
	movq	-48(%rbp), %rax
	addq	$8, %rax
	.loc 2 750 24
	movq	%rax, %rdi
	call	getsize
	movq	%rax, -32(%rbp)
	.loc 2 752 45
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 752 21
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mbs_logical_substr
	movq	%rax, -24(%rbp)
	.loc 2 753 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	str_value
	movq	%rax, -72(%rbp)
	.loc 2 754 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L159:
.LBE23:
	.loc 2 756 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 757 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 758 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 759 14
	movq	-72(%rbp), %rax
	jmp	.L150
.L156:
	.loc 2 762 12
	movzbl	-84(%rbp), %eax
	movl	%eax, %edi
	call	eval7
.L150:
	.loc 2 763 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	eval6, .-eval6
	.section	.rodata
.LC52:
	.string	":"
	.text
	.type	eval5, @function
eval5:
.LFB72:
	.loc 2 770 1
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
	.loc 2 778 7
	movzbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	eval6
	movq	%rax, -24(%rbp)
.L165:
	.loc 2 781 11
	leaq	.LC52(%rip), %rdi
	call	nextarg
	.loc 2 781 10
	testb	%al, %al
	je	.L161
	.loc 2 783 15
	movzbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	eval6
	movq	%rax, -16(%rbp)
	.loc 2 784 14
	cmpb	$0, -36(%rbp)
	je	.L162
	.loc 2 786 19
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	docolon
	movq	%rax, -8(%rbp)
	.loc 2 787 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 788 17
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L162:
	.loc 2 790 11
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	jmp	.L165
.L161:
	.loc 2 793 16
	movq	-24(%rbp), %rax
	.loc 2 795 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	eval5, .-eval5
	.section	.rodata
.LC53:
	.string	"*"
.LC54:
	.string	"/"
.LC55:
	.string	"%"
.LC56:
	.string	"non-integer argument"
.LC57:
	.string	"division by zero"
	.text
	.type	eval4, @function
eval4:
.LFB73:
	.loc 2 801 1
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
	.loc 2 809 7
	movzbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	eval5
	movq	%rax, -16(%rbp)
.L182:
	.loc 2 812 11
	leaq	.LC53(%rip), %rdi
	call	nextarg
	.loc 2 812 10
	testb	%al, %al
	je	.L169
	.loc 2 813 13
	movl	$0, -20(%rbp)
	jmp	.L170
.L169:
	.loc 2 814 16
	leaq	.LC54(%rip), %rdi
	call	nextarg
	.loc 2 814 15
	testb	%al, %al
	je	.L171
	.loc 2 815 13
	movl	$1, -20(%rbp)
	jmp	.L170
.L171:
	.loc 2 816 16
	leaq	.LC55(%rip), %rdi
	call	nextarg
	.loc 2 816 15
	testb	%al, %al
	je	.L172
	.loc 2 817 13
	movl	$2, -20(%rbp)
	jmp	.L170
.L172:
	.loc 2 819 16
	movq	-16(%rbp), %rax
	jmp	.L183
.L170:
	.loc 2 820 11
	movzbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	eval5
	movq	%rax, -8(%rbp)
	.loc 2 821 10
	cmpb	$0, -36(%rbp)
	je	.L174
	.loc 2 823 16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	toarith
	.loc 2 823 15
	xorl	$1, %eax
	.loc 2 823 14
	testb	%al, %al
	jne	.L175
	.loc 2 823 32 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	toarith
	.loc 2 823 31 discriminator 1
	xorl	$1, %eax
	.loc 2 823 28 discriminator 1
	testb	%al, %al
	je	.L176
.L175:
.LBB24:
	.loc 2 824 13
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L176:
.LBE24:
	.loc 2 825 14
	cmpl	$0, -20(%rbp)
	je	.L177
	.loc 2 825 47 discriminator 1
	movq	-8(%rbp), %rax
	addq	$8, %rax
	.loc 2 825 34 discriminator 1
	movq	%rax, %rdi
	call	mpz_sgn@PLT
	.loc 2 825 31 discriminator 1
	testl	%eax, %eax
	jne	.L177
.LBB25:
	.loc 2 826 13
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L177:
.LBE25:
	.loc 2 828 13
	cmpl	$0, -20(%rbp)
	je	.L178
	.loc 2 829 13
	cmpl	$1, -20(%rbp)
	jne	.L179
	.loc 2 829 13 is_stmt 0 discriminator 1
	movq	mpz_tdiv_q@GOTPCREL(%rip), %rax
	jmp	.L181
.L179:
	.loc 2 829 13 discriminator 2
	movq	mpz_tdiv_r@GOTPCREL(%rip), %rax
	jmp	.L181
.L178:
	.loc 2 828 13 is_stmt 1 discriminator 1
	movq	mpz_mul@GOTPCREL(%rip), %rax
.L181:
	.loc 2 830 33 discriminator 3
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	.loc 2 830 25 discriminator 3
	movq	-16(%rbp), %rcx
	leaq	8(%rcx), %rsi
	.loc 2 830 17 discriminator 3
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	.loc 2 828 13 discriminator 3
	movq	%rcx, %rdi
	call	*%rax
.LVL0:
.L174:
	.loc 2 832 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 812 10
	jmp	.L182
.L183:
	.loc 2 834 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	eval4, .-eval4
	.section	.rodata
.LC58:
	.string	"-"
	.text
	.type	eval3, @function
eval3:
.LFB74:
	.loc 2 840 1
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
	.loc 2 848 7
	movzbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	eval4
	movq	%rax, -16(%rbp)
.L194:
	.loc 2 851 11
	leaq	.LC47(%rip), %rdi
	call	nextarg
	.loc 2 851 10
	testb	%al, %al
	je	.L185
	.loc 2 852 13
	movl	$0, -20(%rbp)
	jmp	.L186
.L185:
	.loc 2 853 16
	leaq	.LC58(%rip), %rdi
	call	nextarg
	.loc 2 853 15
	testb	%al, %al
	je	.L187
	.loc 2 854 13
	movl	$1, -20(%rbp)
	jmp	.L186
.L187:
	.loc 2 856 16
	movq	-16(%rbp), %rax
	jmp	.L195
.L186:
	.loc 2 857 11
	movzbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	eval4
	movq	%rax, -8(%rbp)
	.loc 2 858 10
	cmpb	$0, -36(%rbp)
	je	.L189
	.loc 2 860 16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	toarith
	.loc 2 860 15
	xorl	$1, %eax
	.loc 2 860 14
	testb	%al, %al
	jne	.L190
	.loc 2 860 32 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	toarith
	.loc 2 860 31 discriminator 1
	xorl	$1, %eax
	.loc 2 860 28 discriminator 1
	testb	%al, %al
	je	.L191
.L190:
.LBB26:
	.loc 2 861 13
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L191:
.LBE26:
	.loc 2 862 34
	cmpl	$0, -20(%rbp)
	jne	.L192
	.loc 2 862 34 is_stmt 0 discriminator 1
	movq	mpz_add@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	jmp	.L193
.L192:
	.loc 2 862 34 discriminator 2
	movq	mpz_sub@GOTPCREL(%rip), %rax
	movq	%rax, %r8
.L193:
	.loc 2 862 66 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 2 862 58 discriminator 4
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rcx
	.loc 2 862 50 discriminator 4
	movq	-16(%rbp), %rax
	addq	$8, %rax
	.loc 2 862 34 discriminator 4
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.LVL1:
.L189:
	.loc 2 864 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 851 10
	jmp	.L194
.L195:
	.loc 2 866 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	eval3, .-eval3
	.section	.rodata
.LC59:
	.string	"<"
.LC60:
	.string	"<="
.LC61:
	.string	"="
.LC62:
	.string	"=="
.LC63:
	.string	"!="
.LC64:
	.string	">="
.LC65:
	.string	">"
.LC66:
	.string	"string comparison failed"
	.align 8
.LC67:
	.string	"set LC_ALL='C' to work around the problem"
	.align 8
.LC68:
	.string	"the strings compared were %s and %s"
	.text
	.type	eval2, @function
eval2:
.LFB75:
	.loc 2 872 1
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
	movl	%edi, %eax
	movb	%al, -52(%rbp)
	.loc 2 878 7
	movzbl	-52(%rbp), %eax
	movl	%eax, %edi
	call	eval3
	movq	%rax, -32(%rbp)
.L217:
.LBB27:
	.loc 2 886 12
	movb	$0, -41(%rbp)
	.loc 2 888 11
	leaq	.LC59(%rip), %rdi
	call	nextarg
	.loc 2 888 10
	testb	%al, %al
	je	.L197
	.loc 2 889 13
	movl	$0, -40(%rbp)
	jmp	.L198
.L197:
	.loc 2 890 16
	leaq	.LC60(%rip), %rdi
	call	nextarg
	.loc 2 890 15
	testb	%al, %al
	je	.L199
	.loc 2 891 13
	movl	$1, -40(%rbp)
	jmp	.L198
.L199:
	.loc 2 892 16
	leaq	.LC61(%rip), %rdi
	call	nextarg
	.loc 2 892 15
	testb	%al, %al
	jne	.L200
	.loc 2 892 33 discriminator 1
	leaq	.LC62(%rip), %rdi
	call	nextarg
	.loc 2 892 30 discriminator 1
	testb	%al, %al
	je	.L201
.L200:
	.loc 2 893 13
	movl	$2, -40(%rbp)
	jmp	.L198
.L201:
	.loc 2 894 16
	leaq	.LC63(%rip), %rdi
	call	nextarg
	.loc 2 894 15
	testb	%al, %al
	je	.L202
	.loc 2 895 13
	movl	$3, -40(%rbp)
	jmp	.L198
.L202:
	.loc 2 896 16
	leaq	.LC64(%rip), %rdi
	call	nextarg
	.loc 2 896 15
	testb	%al, %al
	je	.L203
	.loc 2 897 13
	movl	$4, -40(%rbp)
	jmp	.L198
.L203:
	.loc 2 898 16
	leaq	.LC65(%rip), %rdi
	call	nextarg
	.loc 2 898 15
	testb	%al, %al
	je	.L204
	.loc 2 899 13
	movl	$5, -40(%rbp)
	jmp	.L198
.L204:
	.loc 2 901 16
	movq	-32(%rbp), %rax
	jmp	.L218
.L198:
	.loc 2 902 11
	movzbl	-52(%rbp), %eax
	movl	%eax, %edi
	call	eval3
	movq	%rax, -24(%rbp)
	.loc 2 904 10
	cmpb	$0, -52(%rbp)
	je	.L219
.LBB28:
	.loc 2 907 11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	tostring
	.loc 2 908 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tostring
	.loc 2 910 39
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 910 15
	movq	%rax, %rdi
	call	looks_like_integer
	.loc 2 910 14
	testb	%al, %al
	je	.L207
	.loc 2 910 70 discriminator 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 910 46 discriminator 1
	movq	%rax, %rdi
	call	looks_like_integer
	.loc 2 910 43 discriminator 1
	testb	%al, %al
	je	.L207
	.loc 2 911 42
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 911 34
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 911 19
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strintcmp@PLT
	movl	%eax, -36(%rbp)
	.loc 2 911 17
	jmp	.L208
.L207:
	.loc 2 914 15
	call	__errno_location@PLT
	.loc 2 914 21
	movl	$0, (%rax)
	.loc 2 915 42
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 915 34
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 915 21
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcoll@PLT
	movl	%eax, -36(%rbp)
	.loc 2 917 19
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 917 18
	testl	%eax, %eax
	je	.L208
.LBB29:
	.loc 2 919 36
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 919 29
	call	__errno_location@PLT
	.loc 2 919 19
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 920 32
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	.loc 2 920 19
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 921 19
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movl	$8, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movl	$8, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L208:
	cmpl	$5, -40(%rbp)
	ja	.L209
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L211(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L211(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L211:
	.long	.L216-.L211
	.long	.L215-.L211
	.long	.L214-.L211
	.long	.L213-.L211
	.long	.L212-.L211
	.long	.L210-.L211
	.text
.L216:
.LBE29:
	.loc 2 930 37
	movl	-36(%rbp), %eax
	shrl	$31, %eax
	movb	%al, -41(%rbp)
	.loc 2 930 13
	jmp	.L206
.L215:
	.loc 2 931 37
	cmpl	$0, -36(%rbp)
	setle	%al
	movb	%al, -41(%rbp)
	.loc 2 931 13
	jmp	.L206
.L214:
	.loc 2 932 37
	cmpl	$0, -36(%rbp)
	sete	%al
	movb	%al, -41(%rbp)
	.loc 2 932 13
	jmp	.L206
.L213:
	.loc 2 933 37
	cmpl	$0, -36(%rbp)
	setne	%al
	movb	%al, -41(%rbp)
	.loc 2 933 13
	jmp	.L206
.L212:
	.loc 2 934 37
	movl	-36(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -41(%rbp)
	.loc 2 934 13
	jmp	.L206
.L210:
	.loc 2 935 37
	cmpl	$0, -36(%rbp)
	setg	%al
	movb	%al, -41(%rbp)
	.loc 2 935 13
	jmp	.L206
.L209:
	.loc 2 936 22
	call	abort@PLT
.L219:
	.loc 2 938 9
	nop
.L206:
.LBE28:
	.loc 2 940 7
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 941 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 942 11
	movzbl	-41(%rbp), %eax
	movq	%rax, %rdi
	call	int_value
	movq	%rax, -32(%rbp)
.LBE27:
	.loc 2 880 5
	jmp	.L217
.L218:
	.loc 2 944 1 discriminator 1
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	eval2, .-eval2
	.section	.rodata
.LC69:
	.string	"&"
	.text
	.type	eval1, @function
eval1:
.LFB76:
	.loc 2 950 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 2 957 7
	movzbl	-20(%rbp), %eax
	movl	%eax, %edi
	call	eval2
	movq	%rax, -16(%rbp)
.L229:
	.loc 2 960 11
	leaq	.LC69(%rip), %rdi
	call	nextarg
	.loc 2 960 10
	testb	%al, %al
	je	.L221
	.loc 2 962 31
	cmpb	$0, -20(%rbp)
	je	.L222
	.loc 2 962 35 discriminator 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	null
	.loc 2 962 34 discriminator 1
	xorl	$1, %eax
	.loc 2 962 31 discriminator 1
	testb	%al, %al
	je	.L222
	.loc 2 962 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L223
.L222:
	.loc 2 962 31 discriminator 4
	movl	$0, %eax
.L223:
	.loc 2 962 31 discriminator 6
	andl	$1, %eax
	.loc 2 962 15 is_stmt 1 discriminator 6
	movzbl	%al, %eax
	movl	%eax, %edi
	call	eval2
	movq	%rax, -8(%rbp)
	.loc 2 963 15 discriminator 6
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	null
	.loc 2 963 14 discriminator 6
	testb	%al, %al
	jne	.L224
	.loc 2 963 27 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	null
	.loc 2 963 24 discriminator 1
	testb	%al, %al
	je	.L225
.L224:
	.loc 2 965 15
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 966 15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 967 19
	movl	$0, %edi
	call	int_value
	movq	%rax, -16(%rbp)
	.loc 2 967 17
	jmp	.L227
.L225:
	.loc 2 970 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	jmp	.L229
.L221:
	.loc 2 973 16
	movq	-16(%rbp), %rax
	jmp	.L230
.L227:
	.loc 2 960 10 discriminator 1
	jmp	.L229
.L230:
	.loc 2 975 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	eval1, .-eval1
	.section	.rodata
.LC70:
	.string	"|"
	.text
	.type	eval, @function
eval:
.LFB77:
	.loc 2 981 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 2 988 7
	movzbl	-20(%rbp), %eax
	movl	%eax, %edi
	call	eval1
	movq	%rax, -16(%rbp)
.L238:
	.loc 2 991 11
	leaq	.LC70(%rip), %rdi
	call	nextarg
	.loc 2 991 10
	testb	%al, %al
	je	.L232
	.loc 2 993 31
	cmpb	$0, -20(%rbp)
	je	.L233
	.loc 2 993 34 discriminator 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	null
	.loc 2 993 31 discriminator 1
	testb	%al, %al
	je	.L233
	.loc 2 993 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L234
.L233:
	.loc 2 993 31 discriminator 4
	movl	$0, %eax
.L234:
	.loc 2 993 31 discriminator 6
	andl	$1, %eax
	.loc 2 993 15 is_stmt 1 discriminator 6
	movzbl	%al, %eax
	movl	%eax, %edi
	call	eval1
	movq	%rax, -8(%rbp)
	.loc 2 994 15 discriminator 6
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	null
	.loc 2 994 14 discriminator 6
	testb	%al, %al
	je	.L235
	.loc 2 996 15
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 997 17
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 998 19
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	null
	.loc 2 998 18
	testb	%al, %al
	je	.L238
	.loc 2 1000 19
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	.loc 2 1001 23
	movl	$0, %edi
	call	int_value
	movq	%rax, -16(%rbp)
	jmp	.L238
.L235:
	.loc 2 1005 13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	freev
	jmp	.L238
.L232:
	.loc 2 1008 16
	movq	-16(%rbp), %rax
	.loc 2 1010 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	eval, .-eval
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 11 "./lib/sys/select.h"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/signal.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 16 "/usr/include/errno.h"
	.file 17 "src/version.h"
	.file 18 "./lib/exitfail.h"
	.file 19 "./lib/timespec.h"
	.file 20 "./lib/version-etc.h"
	.file 21 "./lib/progname.h"
	.file 22 "./lib/quotearg.h"
	.file 23 "./lib/mini-gmp.h"
	.file 24 "./lib/regex.h"
	.file 25 "./lib/error.h"
	.file 26 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 27 "./lib/mbchar.h"
	.file 28 "./lib/mbuiter.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1570
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF216
	.byte	0xc
	.long	.LASF217
	.long	.LASF218
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
	.uleb128 0x4
	.long	0x6a
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x7b
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x7b
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x7b
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0xc1
	.byte	0x1b
	.long	0x7b
	.uleb128 0x8
	.byte	0x8
	.long	0xb8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x4
	.long	0xb8
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x3
	.long	0xe6
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x12
	.byte	0x13
	.long	0x40
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x13
	.byte	0xa
	.long	0xe6
	.byte	0
	.uleb128 0xb
	.long	0xb8
	.long	0xf6
	.uleb128 0xc
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.byte	0xd
	.byte	0x9
	.long	0x11a
	.uleb128 0xe
	.long	.LASF15
	.byte	0x5
	.byte	0xf
	.byte	0x7
	.long	0x6a
	.byte	0
	.uleb128 0xe
	.long	.LASF16
	.byte	0x5
	.byte	0x14
	.byte	0x5
	.long	0xc4
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x15
	.byte	0x3
	.long	0xf6
	.uleb128 0xf
	.long	.LASF113
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x2ad
	.uleb128 0xe
	.long	.LASF18
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x6a
	.byte	0
	.uleb128 0xe
	.long	.LASF19
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0xb2
	.byte	0x8
	.uleb128 0xe
	.long	.LASF20
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0xb2
	.byte	0x10
	.uleb128 0xe
	.long	.LASF21
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0xb2
	.byte	0x18
	.uleb128 0xe
	.long	.LASF22
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0xb2
	.byte	0x20
	.uleb128 0xe
	.long	.LASF23
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0xb2
	.byte	0x28
	.uleb128 0xe
	.long	.LASF24
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0xb2
	.byte	0x30
	.uleb128 0xe
	.long	.LASF25
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0xb2
	.byte	0x38
	.uleb128 0xe
	.long	.LASF26
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0xb2
	.byte	0x40
	.uleb128 0xe
	.long	.LASF27
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0xb2
	.byte	0x48
	.uleb128 0xe
	.long	.LASF28
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0xb2
	.byte	0x50
	.uleb128 0xe
	.long	.LASF29
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0xb2
	.byte	0x58
	.uleb128 0xe
	.long	.LASF30
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x2c6
	.byte	0x60
	.uleb128 0xe
	.long	.LASF31
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x2cc
	.byte	0x68
	.uleb128 0xe
	.long	.LASF32
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x6a
	.byte	0x70
	.uleb128 0xe
	.long	.LASF33
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x6a
	.byte	0x74
	.uleb128 0xe
	.long	.LASF34
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0x82
	.byte	0x78
	.uleb128 0xe
	.long	.LASF35
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x55
	.byte	0x80
	.uleb128 0xe
	.long	.LASF36
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x5c
	.byte	0x82
	.uleb128 0xe
	.long	.LASF37
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x2d2
	.byte	0x83
	.uleb128 0xe
	.long	.LASF38
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x2e2
	.byte	0x88
	.uleb128 0xe
	.long	.LASF39
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0x8e
	.byte	0x90
	.uleb128 0xe
	.long	.LASF40
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x2ed
	.byte	0x98
	.uleb128 0xe
	.long	.LASF41
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x2f8
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF42
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x2cc
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF43
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x4c
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF44
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x6a
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x2fe
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x126
	.uleb128 0x10
	.long	.LASF219
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF48
	.uleb128 0x8
	.byte	0x8
	.long	0x2c1
	.uleb128 0x8
	.byte	0x8
	.long	0x126
	.uleb128 0xb
	.long	0xb8
	.long	0x2e2
	.uleb128 0xc
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2b9
	.uleb128 0x11
	.long	.LASF49
	.uleb128 0x8
	.byte	0x8
	.long	0x2e8
	.uleb128 0x11
	.long	.LASF50
	.uleb128 0x8
	.byte	0x8
	.long	0x2f3
	.uleb128 0xb
	.long	0xb8
	.long	0x30e
	.uleb128 0xc
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xbf
	.uleb128 0x4
	.long	0x30e
	.uleb128 0x2
	.long	.LASF51
	.byte	0x8
	.byte	0x4d
	.byte	0x13
	.long	0xa6
	.uleb128 0x12
	.long	.LASF52
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x331
	.uleb128 0x8
	.byte	0x8
	.long	0x2ad
	.uleb128 0x12
	.long	.LASF53
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x331
	.uleb128 0x12
	.long	.LASF54
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x331
	.uleb128 0x12
	.long	.LASF55
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x6a
	.uleb128 0xb
	.long	0x314
	.long	0x366
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.long	0x35b
	.uleb128 0x12
	.long	.LASF56
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x366
	.uleb128 0x12
	.long	.LASF57
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF58
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x366
	.uleb128 0x2
	.long	.LASF59
	.byte	0x3
	.byte	0x8f
	.byte	0x1a
	.long	0x7b
	.uleb128 0x14
	.long	.LASF60
	.byte	0x3
	.value	0x141
	.byte	0x18
	.long	0x6a
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF62
	.uleb128 0x2
	.long	.LASF63
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0x9a
	.uleb128 0x15
	.long	.LASF64
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x6a
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF65
	.uleb128 0xb
	.long	0xb2
	.long	0x3e6
	.uleb128 0xc
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF66
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x3d6
	.uleb128 0x12
	.long	.LASF67
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF68
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0x7b
	.uleb128 0x12
	.long	.LASF69
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x3d6
	.uleb128 0x12
	.long	.LASF70
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF71
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0x7b
	.uleb128 0x15
	.long	.LASF72
	.byte	0xc
	.value	0x112
	.byte	0xc
	.long	0x6a
	.uleb128 0x16
	.uleb128 0x8
	.byte	0x8
	.long	0x43b
	.uleb128 0xb
	.long	0x314
	.long	0x452
	.uleb128 0xc
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.long	0x442
	.uleb128 0x15
	.long	.LASF73
	.byte	0xd
	.value	0x11e
	.byte	0x1a
	.long	0x452
	.uleb128 0x15
	.long	.LASF74
	.byte	0xd
	.value	0x11f
	.byte	0x1a
	.long	0x452
	.uleb128 0x15
	.long	.LASF75
	.byte	0xe
	.value	0x21f
	.byte	0xf
	.long	0x47e
	.uleb128 0x8
	.byte	0x8
	.long	0xb2
	.uleb128 0x15
	.long	.LASF76
	.byte	0xe
	.value	0x221
	.byte	0xf
	.long	0x47e
	.uleb128 0x12
	.long	.LASF77
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0xb2
	.uleb128 0x12
	.long	.LASF78
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF79
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF80
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x6a
	.uleb128 0x12
	.long	.LASF81
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xb2
	.uleb128 0x12
	.long	.LASF82
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xb2
	.uleb128 0x12
	.long	.LASF83
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x30e
	.uleb128 0x12
	.long	.LASF84
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x71
	.uleb128 0xb
	.long	0xb8
	.long	0x501
	.uleb128 0xc
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x29
	.byte	0x6
	.long	0x519
	.uleb128 0x18
	.long	.LASF85
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x17
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x2a
	.byte	0x6
	.long	0x52e
	.uleb128 0x19
	.long	.LASF86
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.long	0xbf
	.long	0x539
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.long	0x52e
	.uleb128 0x12
	.long	.LASF87
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x539
	.uleb128 0x12
	.long	.LASF88
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x30e
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x5ab
	.uleb128 0x19
	.long	.LASF89
	.byte	0
	.uleb128 0x19
	.long	.LASF90
	.byte	0x1
	.uleb128 0x19
	.long	.LASF91
	.byte	0x2
	.uleb128 0x19
	.long	.LASF92
	.byte	0x3
	.uleb128 0x19
	.long	.LASF93
	.byte	0x4
	.uleb128 0x19
	.long	.LASF94
	.byte	0x5
	.uleb128 0x19
	.long	.LASF95
	.byte	0x6
	.uleb128 0x19
	.long	.LASF96
	.byte	0x7
	.uleb128 0x19
	.long	.LASF97
	.byte	0x8
	.uleb128 0x19
	.long	.LASF98
	.byte	0x9
	.uleb128 0x19
	.long	.LASF99
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x556
	.uleb128 0x15
	.long	.LASF100
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x366
	.uleb128 0xb
	.long	0x5ab
	.long	0x5c8
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.long	0x5bd
	.uleb128 0x15
	.long	.LASF101
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x5c8
	.uleb128 0x2
	.long	.LASF102
	.byte	0x17
	.byte	0x3c
	.byte	0x25
	.long	0x39
	.uleb128 0x8
	.byte	0x8
	.long	0x5da
	.uleb128 0xd
	.byte	0x10
	.byte	0x17
	.byte	0x43
	.byte	0x9
	.long	0x61d
	.uleb128 0xe
	.long	.LASF103
	.byte	0x17
	.byte	0x45
	.byte	0x7
	.long	0x6a
	.byte	0
	.uleb128 0xe
	.long	.LASF104
	.byte	0x17
	.byte	0x47
	.byte	0x7
	.long	0x6a
	.byte	0x4
	.uleb128 0xe
	.long	.LASF105
	.byte	0x17
	.byte	0x4a
	.byte	0xe
	.long	0x5e6
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF106
	.byte	0x17
	.byte	0x4b
	.byte	0x3
	.long	0x5ec
	.uleb128 0x2
	.long	.LASF107
	.byte	0x17
	.byte	0x4d
	.byte	0x16
	.long	0x635
	.uleb128 0xb
	.long	0x61d
	.long	0x645
	.uleb128 0xc
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x61d
	.uleb128 0x12
	.long	.LASF108
	.byte	0x17
	.byte	0x52
	.byte	0x12
	.long	0x76
	.uleb128 0x2
	.long	.LASF109
	.byte	0x18
	.byte	0x2d
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.long	.LASF110
	.byte	0x18
	.byte	0x31
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.long	.LASF111
	.byte	0x18
	.byte	0x48
	.byte	0x1b
	.long	0x39
	.uleb128 0x12
	.long	.LASF112
	.byte	0x18
	.byte	0xd3
	.byte	0x15
	.long	0x66f
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x40
	.byte	0x18
	.value	0x19d
	.byte	0x8
	.long	0x76f
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x18
	.value	0x1a1
	.byte	0x14
	.long	0x774
	.byte	0
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x18
	.value	0x1a4
	.byte	0x14
	.long	0x663
	.byte	0x8
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x18
	.value	0x1a7
	.byte	0x14
	.long	0x663
	.byte	0x10
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x18
	.value	0x1aa
	.byte	0x10
	.long	0x66f
	.byte	0x18
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x18
	.value	0x1af
	.byte	0x9
	.long	0xb2
	.byte	0x20
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x18
	.value	0x1b5
	.byte	0x17
	.long	0x77a
	.byte	0x28
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x18
	.value	0x1b8
	.byte	0xa
	.long	0x2d
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x18
	.value	0x1be
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF123
	.byte	0x18
	.value	0x1c9
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x18
	.value	0x1cd
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x18
	.value	0x1d1
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x18
	.value	0x1d5
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x18
	.value	0x1d8
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x18
	.value	0x1db
	.byte	0xc
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x38
	.byte	0
	.uleb128 0x11
	.long	.LASF129
	.uleb128 0x8
	.byte	0x8
	.long	0x76f
	.uleb128 0x8
	.byte	0x8
	.long	0x4e
	.uleb128 0x14
	.long	.LASF130
	.byte	0x18
	.value	0x1e6
	.byte	0x11
	.long	0x319
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x18
	.byte	0x18
	.value	0x1f1
	.byte	0x8
	.long	0x7c6
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x18
	.value	0x1f3
	.byte	0xf
	.long	0x657
	.byte	0
	.uleb128 0x1c
	.long	.LASF133
	.byte	0x18
	.value	0x1f4
	.byte	0xd
	.long	0x7c6
	.byte	0x8
	.uleb128 0x1e
	.string	"end"
	.byte	0x18
	.value	0x1f5
	.byte	0xd
	.long	0x7c6
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x780
	.uleb128 0x12
	.long	.LASF134
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x43c
	.uleb128 0x12
	.long	.LASF135
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0x12
	.long	.LASF136
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x6a
	.uleb128 0x2
	.long	.LASF137
	.byte	0x1a
	.byte	0x6
	.byte	0x15
	.long	0x11a
	.uleb128 0xf
	.long	.LASF138
	.byte	0x30
	.byte	0x1b
	.byte	0xa9
	.byte	0x8
	.long	0x84a
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1b
	.byte	0xab
	.byte	0xf
	.long	0x30e
	.byte	0
	.uleb128 0xe
	.long	.LASF139
	.byte	0x1b
	.byte	0xac
	.byte	0xa
	.long	0x2d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF140
	.byte	0x1b
	.byte	0xad
	.byte	0x8
	.long	0x84a
	.byte	0x10
	.uleb128 0x1f
	.string	"wc"
	.byte	0x1b
	.byte	0xae
	.byte	0xb
	.long	0x39b
	.byte	0x14
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1b
	.byte	0xaf
	.byte	0x8
	.long	0x851
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF141
	.uleb128 0xb
	.long	0xb8
	.long	0x861
	.uleb128 0xc
	.long	0x39
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.long	0x47
	.long	0x86c
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.long	0x861
	.uleb128 0x15
	.long	.LASF142
	.byte	0x1b
	.value	0x139
	.byte	0x1b
	.long	0x86c
	.uleb128 0xf
	.long	.LASF143
	.byte	0x40
	.byte	0x1c
	.byte	0x75
	.byte	0x8
	.long	0x8c0
	.uleb128 0xe
	.long	.LASF144
	.byte	0x1c
	.byte	0x77
	.byte	0x8
	.long	0x84a
	.byte	0
	.uleb128 0xe
	.long	.LASF145
	.byte	0x1c
	.byte	0x78
	.byte	0xd
	.long	0x7f0
	.byte	0x4
	.uleb128 0xe
	.long	.LASF146
	.byte	0x1c
	.byte	0x79
	.byte	0x8
	.long	0x84a
	.byte	0xc
	.uleb128 0x1f
	.string	"cur"
	.byte	0x1c
	.byte	0x7a
	.byte	0x11
	.long	0x7fc
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF147
	.byte	0x1c
	.byte	0xd2
	.byte	0x1e
	.long	0x87e
	.uleb128 0x17
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x3b
	.byte	0x3
	.long	0x8e7
	.uleb128 0x19
	.long	.LASF148
	.byte	0x2
	.uleb128 0x19
	.long	.LASF149
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x47
	.byte	0x6
	.long	0x906
	.uleb128 0x19
	.long	.LASF152
	.byte	0
	.uleb128 0x19
	.long	.LASF153
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF154
	.byte	0x2
	.byte	0x4c
	.byte	0x16
	.long	0x8e7
	.uleb128 0x9
	.byte	0x10
	.byte	0x2
	.byte	0x52
	.byte	0x3
	.long	0x930
	.uleb128 0x20
	.string	"i"
	.byte	0x2
	.byte	0x54
	.byte	0xb
	.long	0x629
	.uleb128 0x20
	.string	"s"
	.byte	0x2
	.byte	0x55
	.byte	0xb
	.long	0xb2
	.byte	0
	.uleb128 0xf
	.long	.LASF155
	.byte	0x18
	.byte	0x2
	.byte	0x4f
	.byte	0x8
	.long	0x956
	.uleb128 0xe
	.long	.LASF156
	.byte	0x2
	.byte	0x51
	.byte	0x8
	.long	0x906
	.byte	0
	.uleb128 0x1f
	.string	"u"
	.byte	0x2
	.byte	0x56
	.byte	0x5
	.long	0x912
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF157
	.byte	0x2
	.byte	0x58
	.byte	0x18
	.long	0x930
	.uleb128 0x21
	.long	.LASF158
	.byte	0x2
	.byte	0x5b
	.byte	0xf
	.long	0x47e
	.uleb128 0x9
	.byte	0x3
	.quad	args
	.uleb128 0x22
	.long	.LASF159
	.byte	0x2
	.value	0x3d4
	.byte	0x1
	.long	0x9c8
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c8
	.uleb128 0x23
	.long	.LASF161
	.byte	0x2
	.value	0x3d4
	.byte	0xc
	.long	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"l"
	.byte	0x2
	.value	0x3d6
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"r"
	.byte	0x2
	.value	0x3d7
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x956
	.uleb128 0x22
	.long	.LASF160
	.byte	0x2
	.value	0x3b5
	.byte	0x1
	.long	0x9c8
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1e
	.uleb128 0x23
	.long	.LASF161
	.byte	0x2
	.value	0x3b5
	.byte	0xd
	.long	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"l"
	.byte	0x2
	.value	0x3b7
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"r"
	.byte	0x2
	.value	0x3b8
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF162
	.byte	0x2
	.value	0x367
	.byte	0x1
	.long	0x9c8
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0xb08
	.uleb128 0x23
	.long	.LASF161
	.byte	0x2
	.value	0x367
	.byte	0xd
	.long	0x84a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.string	"l"
	.byte	0x2
	.value	0x369
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x24
	.string	"r"
	.byte	0x2
	.value	0x371
	.byte	0xe
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.value	0x373
	.byte	0x9
	.long	0xab3
	.uleb128 0x19
	.long	.LASF163
	.byte	0
	.uleb128 0x19
	.long	.LASF164
	.byte	0x1
	.uleb128 0x19
	.long	.LASF165
	.byte	0x2
	.uleb128 0x19
	.long	.LASF166
	.byte	0x3
	.uleb128 0x19
	.long	.LASF167
	.byte	0x4
	.uleb128 0x19
	.long	.LASF168
	.byte	0x5
	.byte	0
	.uleb128 0x24
	.string	"fxn"
	.byte	0x2
	.value	0x375
	.byte	0xb
	.long	0xa7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"val"
	.byte	0x2
	.value	0x376
	.byte	0xc
	.long	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x25
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x24
	.string	"cmp"
	.byte	0x2
	.value	0x38a
	.byte	0xf
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF169
	.byte	0x2
	.value	0x347
	.byte	0x1
	.long	0x9c8
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0xb95
	.uleb128 0x23
	.long	.LASF161
	.byte	0x2
	.value	0x347
	.byte	0xd
	.long	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"l"
	.byte	0x2
	.value	0x349
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"r"
	.byte	0x2
	.value	0x34a
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.value	0x34b
	.byte	0x8
	.long	0xb73
	.uleb128 0x19
	.long	.LASF170
	.byte	0
	.uleb128 0x19
	.long	.LASF171
	.byte	0x1
	.byte	0
	.uleb128 0x24
	.string	"fxn"
	.byte	0x2
	.value	0x34b
	.byte	0x18
	.long	0xb57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0
	.uleb128 0x22
	.long	.LASF172
	.byte	0x2
	.value	0x320
	.byte	0x1
	.long	0x9c8
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0xc39
	.uleb128 0x23
	.long	.LASF161
	.byte	0x2
	.value	0x320
	.byte	0xd
	.long	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"l"
	.byte	0x2
	.value	0x322
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"r"
	.byte	0x2
	.value	0x323
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.value	0x324
	.byte	0x8
	.long	0xc06
	.uleb128 0x19
	.long	.LASF173
	.byte	0
	.uleb128 0x19
	.long	.LASF174
	.byte	0x1
	.uleb128 0x28
	.string	"mod"
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.string	"fxn"
	.byte	0x2
	.value	0x324
	.byte	0x22
	.long	0xbe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x27
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0
	.uleb128 0x22
	.long	.LASF175
	.byte	0x2
	.value	0x301
	.byte	0x1
	.long	0x9c8
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0xc97
	.uleb128 0x23
	.long	.LASF161
	.byte	0x2
	.value	0x301
	.byte	0xd
	.long	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"l"
	.byte	0x2
	.value	0x303
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"r"
	.byte	0x2
	.value	0x304
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.value	0x305
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF176
	.byte	0x2
	.value	0x2ae
	.byte	0x1
	.long	0x9c8
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0xd7d
	.uleb128 0x23
	.long	.LASF161
	.byte	0x2
	.value	0x2ae
	.byte	0xd
	.long	0x84a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.string	"l"
	.byte	0x2
	.value	0x2b0
	.byte	0xa
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"r"
	.byte	0x2
	.value	0x2b1
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.value	0x2b2
	.byte	0xa
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.string	"i1"
	.byte	0x2
	.value	0x2b3
	.byte	0xa
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"i2"
	.byte	0x2
	.value	0x2b4
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0xd3c
	.uleb128 0x24
	.string	"pos"
	.byte	0x2
	.value	0x2d6
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x24
	.string	"pos"
	.byte	0x2
	.value	0x2ed
	.byte	0x12
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"len"
	.byte	0x2
	.value	0x2ee
	.byte	0x12
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"s"
	.byte	0x2
	.value	0x2f0
	.byte	0x11
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF177
	.byte	0x2
	.value	0x290
	.byte	0x1
	.long	0x9c8
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0xdf2
	.uleb128 0x23
	.long	.LASF161
	.byte	0x2
	.value	0x290
	.byte	0xd
	.long	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.value	0x292
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x27
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x27
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0
	.uleb128 0x22
	.long	.LASF178
	.byte	0x2
	.value	0x248
	.byte	0x1
	.long	0x9c8
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0xee1
	.uleb128 0x2a
	.string	"sv"
	.byte	0x2
	.value	0x248
	.byte	0x11
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x2a
	.string	"pv"
	.byte	0x2
	.value	0x248
	.byte	0x1c
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.value	0x24a
	.byte	0xa
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2b
	.long	.LASF179
	.byte	0x2
	.value	0x24b
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2b
	.long	.LASF180
	.byte	0x2
	.value	0x24c
	.byte	0x1c
	.long	0x687
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2b
	.long	.LASF119
	.byte	0x2
	.value	0x24d
	.byte	0x8
	.long	0x4f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2b
	.long	.LASF181
	.byte	0x2
	.value	0x24e
	.byte	0x17
	.long	0x78d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2b
	.long	.LASF182
	.byte	0x2
	.value	0x24f
	.byte	0xc
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x27
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0xecf
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x270
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.byte	0
	.uleb128 0x27
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0
	.uleb128 0x2c
	.long	.LASF186
	.byte	0x2
	.value	0x22b
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0xf12
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.byte	0
	.uleb128 0x2d
	.long	.LASF220
	.byte	0x2
	.value	0x222
	.byte	0x1
	.long	0x84a
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF183
	.byte	0x2
	.value	0x213
	.byte	0x1
	.long	0x84a
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0xf85
	.uleb128 0x2a
	.string	"str"
	.byte	0x2
	.value	0x213
	.byte	0x16
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x24
	.string	"r"
	.byte	0x2
	.value	0x219
	.byte	0xc
	.long	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF184
	.byte	0x2
	.value	0x202
	.byte	0x1
	.long	0x2d
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0xfd8
	.uleb128 0x2a
	.string	"i"
	.byte	0x2
	.value	0x202
	.byte	0x10
	.long	0x645
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x24
	.string	"ul"
	.byte	0x2
	.value	0x208
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF185
	.byte	0x2
	.value	0x1e7
	.byte	0x1
	.long	0x84a
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x103b
	.uleb128 0x2a
	.string	"v"
	.byte	0x2
	.value	0x1e7
	.byte	0x11
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x24
	.string	"s"
	.byte	0x2
	.value	0x1ef
	.byte	0xf
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF187
	.byte	0x2
	.value	0x1d1
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1089
	.uleb128 0x2a
	.string	"v"
	.byte	0x2
	.value	0x1d1
	.byte	0x12
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x24
	.string	"s"
	.byte	0x2
	.value	0x1d7
	.byte	0xf
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF188
	.byte	0x2
	.value	0x1c2
	.byte	0x1
	.long	0x84a
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x10bc
	.uleb128 0x2a
	.string	"cp"
	.byte	0x2
	.value	0x1c2
	.byte	0x21
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF189
	.byte	0x2
	.value	0x1a3
	.byte	0x1
	.long	0x84a
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x110f
	.uleb128 0x2a
	.string	"v"
	.byte	0x2
	.value	0x1a3
	.byte	0xe
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x24
	.string	"cp"
	.byte	0x2
	.value	0x1ab
	.byte	0x15
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF190
	.byte	0x2
	.value	0x190
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x113d
	.uleb128 0x2a
	.string	"v"
	.byte	0x2
	.value	0x190
	.byte	0x10
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF191
	.byte	0x2
	.value	0x184
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x116b
	.uleb128 0x2a
	.string	"v"
	.byte	0x2
	.value	0x184
	.byte	0xf
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF192
	.byte	0x2
	.value	0x179
	.byte	0x1
	.long	0x9c8
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ab
	.uleb128 0x2a
	.string	"s"
	.byte	0x2
	.value	0x179
	.byte	0x18
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.value	0x17b
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF193
	.byte	0x2
	.value	0x16e
	.byte	0x1
	.long	0x9c8
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x11eb
	.uleb128 0x2a
	.string	"i"
	.byte	0x2
	.value	0x16e
	.byte	0x1e
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.value	0x170
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF197
	.byte	0x2
	.value	0x140
	.byte	0x1
	.long	0x6a
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x125e
	.uleb128 0x23
	.long	.LASF194
	.byte	0x2
	.value	0x140
	.byte	0xb
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF195
	.byte	0x2
	.value	0x140
	.byte	0x18
	.long	0x47e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"v"
	.byte	0x2
	.value	0x142
	.byte	0xa
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF196
	.byte	0x2
	.value	0x152
	.byte	0x10
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0
	.uleb128 0x30
	.long	.LASF198
	.byte	0x2
	.byte	0xf1
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x128c
	.uleb128 0x31
	.long	.LASF199
	.byte	0x2
	.byte	0xf1
	.byte	0xc
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x32
	.long	.LASF200
	.byte	0x2
	.byte	0xe0
	.byte	0x1
	.long	0x2d
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ff
	.uleb128 0x33
	.string	"s"
	.byte	0x2
	.byte	0xe0
	.byte	0x22
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"ofs"
	.byte	0x2
	.byte	0xe0
	.byte	0x2c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF201
	.byte	0x2
	.byte	0xe2
	.byte	0x13
	.long	0x8c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.string	"c"
	.byte	0x2
	.byte	0xe3
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x35
	.long	.Ldebug_ranges0+0
	.uleb128 0x34
	.string	"d"
	.byte	0x2
	.byte	0xe6
	.byte	0x11
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF202
	.byte	0x2
	.byte	0xa9
	.byte	0x1
	.long	0xb2
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x13d0
	.uleb128 0x33
	.string	"s"
	.byte	0x2
	.byte	0xa9
	.byte	0x21
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.string	"pos"
	.byte	0x2
	.byte	0xa9
	.byte	0x2b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.string	"len"
	.byte	0x2
	.byte	0xa9
	.byte	0x37
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x34
	.string	"v"
	.byte	0x2
	.byte	0xab
	.byte	0x9
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x21
	.long	.LASF203
	.byte	0x2
	.byte	0xab
	.byte	0xd
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.long	.LASF204
	.byte	0x2
	.byte	0xad
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF205
	.byte	0x2
	.byte	0xae
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.byte	0xb4
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x21
	.long	.LASF201
	.byte	0x2
	.byte	0xc4
	.byte	0x17
	.long	0x8c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.string	"idx"
	.byte	0x2
	.byte	0xc5
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF207
	.byte	0x2
	.byte	0x75
	.byte	0x1
	.long	0x2d
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x1489
	.uleb128 0x33
	.string	"s"
	.byte	0x2
	.byte	0x75
	.byte	0x1f
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x31
	.long	.LASF208
	.byte	0x2
	.byte	0x75
	.byte	0x2e
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x34
	.string	"idx"
	.byte	0x2
	.byte	0x77
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1468
	.uleb128 0x21
	.long	.LASF201
	.byte	0x2
	.byte	0x7f
	.byte	0x17
	.long	0x8c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.long	.LASF209
	.byte	0x2
	.byte	0x8b
	.byte	0x1f
	.long	0x8c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x34
	.string	"i"
	.byte	0x2
	.byte	0x9c
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF210
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x152e
	.uleb128 0x23
	.long	.LASF211
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1b
	.long	.LASF212
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x14e4
	.uleb128 0x1c
	.long	.LASF211
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x30e
	.byte	0
	.uleb128 0x1c
	.long	.LASF213
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x30e
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x14b9
	.uleb128 0x2b
	.long	.LASF212
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x153e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.long	.LASF213
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.long	.LASF214
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1543
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.long	.LASF215
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xb
	.long	0x14e4
	.long	0x153e
	.uleb128 0xc
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	0x152e
	.uleb128 0x8
	.byte	0x8
	.long	0x14e4
	.uleb128 0x36
	.long	.LASF221
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF199
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.long	0x6a
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"exit_failure"
.LASF5:
	.string	"short int"
.LASF97:
	.string	"locale_quoting_style"
.LASF31:
	.string	"_chain"
.LASF208:
	.string	"accept"
.LASF200:
	.string	"mbs_offset_to_chars"
.LASF171:
	.string	"minus"
.LASF150:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF190:
	.string	"printv"
.LASF151:
	.string	"valtype"
.LASF37:
	.string	"_shortbuf"
.LASF153:
	.string	"string"
.LASF51:
	.string	"ssize_t"
.LASF203:
	.string	"vlim"
.LASF90:
	.string	"shell_quoting_style"
.LASF156:
	.string	"type"
.LASF21:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_buf_base"
.LASF65:
	.string	"long long unsigned int"
.LASF192:
	.string	"str_value"
.LASF149:
	.string	"EXPR_FAILURE"
.LASF17:
	.string	"__mbstate_t"
.LASF187:
	.string	"tostring"
.LASF119:
	.string	"fastmap"
.LASF174:
	.string	"divide"
.LASF40:
	.string	"_codecvt"
.LASF144:
	.string	"in_shift"
.LASF68:
	.string	"__timezone"
.LASF61:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF101:
	.string	"quoting_style_vals"
.LASF184:
	.string	"getsize"
.LASF211:
	.string	"program"
.LASF96:
	.string	"escape_quoting_style"
.LASF128:
	.string	"newline_anchor"
.LASF168:
	.string	"greater_than"
.LASF32:
	.string	"_fileno"
.LASF202:
	.string	"mbs_logical_substr"
.LASF20:
	.string	"_IO_read_end"
.LASF145:
	.string	"state"
.LASF74:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF64:
	.string	"_gl_cxxalias_dummy"
.LASF81:
	.string	"program_invocation_name"
.LASF112:
	.string	"rpl_re_syntax_options"
.LASF11:
	.string	"__ssize_t"
.LASF126:
	.string	"not_bol"
.LASF26:
	.string	"_IO_buf_end"
.LASF35:
	.string	"_cur_column"
.LASF82:
	.string	"program_invocation_short_name"
.LASF94:
	.string	"c_quoting_style"
.LASF49:
	.string	"_IO_codecvt"
.LASF167:
	.string	"greater_equal"
.LASF58:
	.string	"_sys_errlist"
.LASF23:
	.string	"_IO_write_ptr"
.LASF170:
	.string	"plus"
.LASF34:
	.string	"_old_offset"
.LASF115:
	.string	"buffer"
.LASF197:
	.string	"main"
.LASF139:
	.string	"bytes"
.LASF191:
	.string	"freev"
.LASF85:
	.string	"TIMESPEC_HZ"
.LASF93:
	.string	"shell_escape_always_quoting_style"
.LASF71:
	.string	"timezone"
.LASF109:
	.string	"__re_size_t"
.LASF181:
	.string	"re_regs"
.LASF107:
	.string	"mpz_t"
.LASF132:
	.string	"num_regs"
.LASF88:
	.string	"program_name"
.LASF166:
	.string	"not_equal"
.LASF165:
	.string	"equal"
.LASF48:
	.string	"_IO_marker"
.LASF52:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF14:
	.string	"__wchb"
.LASF80:
	.string	"optopt"
.LASF152:
	.string	"integer"
.LASF0:
	.string	"long unsigned int"
.LASF91:
	.string	"shell_always_quoting_style"
.LASF173:
	.string	"multiply"
.LASF106:
	.string	"__mpz_struct"
.LASF147:
	.string	"mbui_iterator_t"
.LASF70:
	.string	"daylight"
.LASF55:
	.string	"sys_nerr"
.LASF204:
	.string	"blen"
.LASF72:
	.string	"getdate_err"
.LASF216:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF99:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF136:
	.string	"error_one_per_line"
.LASF209:
	.string	"aiter"
.LASF83:
	.string	"Version"
.LASF180:
	.string	"re_buffer"
.LASF27:
	.string	"_IO_save_base"
.LASF220:
	.string	"nomoreargs"
.LASF13:
	.string	"__wch"
.LASF111:
	.string	"reg_syntax_t"
.LASF76:
	.string	"environ"
.LASF104:
	.string	"_mp_size"
.LASF38:
	.string	"_lock"
.LASF45:
	.string	"_mode"
.LASF137:
	.string	"mbstate_t"
.LASF53:
	.string	"stdout"
.LASF155:
	.string	"valinfo"
.LASF201:
	.string	"iter"
.LASF59:
	.string	"ptrdiff_t"
.LASF87:
	.string	"version_etc_copyright"
.LASF41:
	.string	"_wide_data"
.LASF120:
	.string	"translate"
.LASF118:
	.string	"syntax"
.LASF178:
	.string	"docolon"
.LASF205:
	.string	"llen"
.LASF77:
	.string	"optarg"
.LASF214:
	.string	"map_prog"
.LASF39:
	.string	"_offset"
.LASF116:
	.string	"allocated"
.LASF164:
	.string	"less_equal"
.LASF19:
	.string	"_IO_read_ptr"
.LASF138:
	.string	"mbchar"
.LASF182:
	.string	"matchlen"
.LASF189:
	.string	"null"
.LASF219:
	.string	"_IO_lock_t"
.LASF123:
	.string	"regs_allocated"
.LASF113:
	.string	"_IO_FILE"
.LASF134:
	.string	"error_print_progname"
.LASF148:
	.string	"EXPR_INVALID"
.LASF8:
	.string	"__off_t"
.LASF75:
	.string	"__environ"
.LASF63:
	.string	"time_t"
.LASF117:
	.string	"used"
.LASF56:
	.string	"sys_errlist"
.LASF188:
	.string	"looks_like_integer"
.LASF105:
	.string	"_mp_d"
.LASF207:
	.string	"mbs_logical_cspn"
.LASF30:
	.string	"_markers"
.LASF124:
	.string	"fastmap_accurate"
.LASF221:
	.string	"initialize_exit_failure"
.LASF95:
	.string	"c_maybe_quoting_style"
.LASF86:
	.string	"LOG10_TIMESPEC_HZ"
.LASF141:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF162:
	.string	"eval2"
.LASF185:
	.string	"toarith"
.LASF213:
	.string	"node"
.LASF177:
	.string	"eval7"
.LASF130:
	.string	"regoff_t"
.LASF127:
	.string	"not_eol"
.LASF33:
	.string	"_flags2"
.LASF89:
	.string	"literal_quoting_style"
.LASF102:
	.string	"mp_limb_t"
.LASF57:
	.string	"_sys_nerr"
.LASF131:
	.string	"re_registers"
.LASF36:
	.string	"_vtable_offset"
.LASF69:
	.string	"tzname"
.LASF10:
	.string	"__time_t"
.LASF47:
	.string	"FILE"
.LASF196:
	.string	"u_argc"
.LASF160:
	.string	"eval1"
.LASF78:
	.string	"optind"
.LASF169:
	.string	"eval3"
.LASF172:
	.string	"eval4"
.LASF175:
	.string	"eval5"
.LASF176:
	.string	"eval6"
.LASF163:
	.string	"less_than"
.LASF100:
	.string	"quoting_style_args"
.LASF15:
	.string	"__count"
.LASF16:
	.string	"__value"
.LASF125:
	.string	"no_sub"
.LASF62:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF206:
	.string	"vlen"
.LASF129:
	.string	"re_dfa_t"
.LASF140:
	.string	"wc_valid"
.LASF98:
	.string	"clocale_quoting_style"
.LASF114:
	.string	"re_pattern_buffer"
.LASF154:
	.string	"TYPE"
.LASF79:
	.string	"opterr"
.LASF103:
	.string	"_mp_alloc"
.LASF143:
	.string	"mbuiter_multi"
.LASF186:
	.string	"require_more_args"
.LASF9:
	.string	"__off64_t"
.LASF179:
	.string	"errmsg"
.LASF161:
	.string	"evaluate"
.LASF29:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF212:
	.string	"infomap"
.LASF60:
	.string	"wchar_t"
.LASF142:
	.string	"is_basic_table"
.LASF198:
	.string	"usage"
.LASF44:
	.string	"__pad5"
.LASF24:
	.string	"_IO_write_end"
.LASF183:
	.string	"nextarg"
.LASF46:
	.string	"_unused2"
.LASF54:
	.string	"stderr"
.LASF108:
	.string	"mp_bits_per_limb"
.LASF67:
	.string	"__daylight"
.LASF199:
	.string	"status"
.LASF218:
	.string	"/root/coreutils"
.LASF122:
	.string	"can_be_null"
.LASF43:
	.string	"_freeres_buf"
.LASF18:
	.string	"_flags"
.LASF92:
	.string	"shell_escape_quoting_style"
.LASF28:
	.string	"_IO_backup_base"
.LASF146:
	.string	"next_done"
.LASF110:
	.string	"__re_long_size_t"
.LASF193:
	.string	"int_value"
.LASF157:
	.string	"VALUE"
.LASF135:
	.string	"error_message_count"
.LASF215:
	.string	"lc_messages"
.LASF194:
	.string	"argc"
.LASF217:
	.string	"src/expr.c"
.LASF42:
	.string	"_freeres_list"
.LASF50:
	.string	"_IO_wide_data"
.LASF133:
	.string	"start"
.LASF158:
	.string	"args"
.LASF66:
	.string	"__tzname"
.LASF195:
	.string	"argv"
.LASF22:
	.string	"_IO_write_base"
.LASF210:
	.string	"emit_ancillary_info"
.LASF121:
	.string	"re_nsub"
.LASF159:
	.string	"eval"
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
