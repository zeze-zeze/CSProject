	.file	"tsort.c"
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
	jmp	.L3
.L5:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L3:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L4
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L5
.L4:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L6
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L6:
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
	je	.L7
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L7
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L7:
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
	jne	.L8
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L9
.L8:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L9:
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
	je	.L10
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L10:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	head
	.comm	head,8,8
	.local	zeros
	.comm	zeros,8,8
	.local	loop
	.comm	loop,8,8
	.local	n_strings
	.comm	n_strings,8,8
	.section	.rodata
	.align 8
.LC19:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC20:
	.string	"Usage: %s [OPTION] [FILE]\nWrite totally ordered list consistent with the partial ordering in FILE.\n"
.LC21:
	.string	"\n"
	.align 8
.LC22:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC23:
	.string	"      --version  output version information and exit\n"
.LC24:
	.string	"tsort"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/tsort.c"
	.loc 2 77 1 is_stmt 1
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
	.loc 2 78 6
	cmpl	$0, -20(%rbp)
	je	.L12
	.loc 2 79 5
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
	jmp	.L13
.L12:
	.loc 2 82 7
	movq	program_name(%rip), %rbx
	.loc 2 82 15
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	.loc 2 82 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 87 7
	call	emit_stdin_note
	.loc 2 89 7
	movq	stdout(%rip), %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 92 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 93 7
	movq	stdout(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 94 7
	leaq	.LC24(%rip), %rdi
	call	emit_ancillary_info
.L13:
	.loc 2 97 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	new_item, @function
new_item:
.LFB47:
	.loc 2 103 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 104 20
	movl	$56, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 106 32
	cmpq	$0, -24(%rbp)
	je	.L15
	.loc 2 106 19 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, %rdx
	jmp	.L16
.L15:
	.loc 2 106 32 discriminator 2
	movl	$0, %edx
.L16:
	.loc 2 106 10 discriminator 4
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 107 22 discriminator 4
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 107 14 discriminator 4
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 107 11 discriminator 4
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 108 14 discriminator 4
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	.loc 2 111 12 discriminator 4
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	.loc 2 112 12 discriminator 4
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 2 113 10 discriminator 4
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	.loc 2 115 10 discriminator 4
	movq	-8(%rbp), %rax
	.loc 2 116 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	new_item, .-new_item
	.section	.rodata
.LC25:
	.string	"src/tsort.c"
.LC26:
	.string	"root"
.LC27:
	.string	"str && p && p->str"
	.align 8
.LC28:
	.string	"str && s && s->str && !STREQ (str, s->str)"
	.align 8
.LC29:
	.string	"str && p && p->str && !STREQ (str, p->str)"
	.text
	.type	search_item, @function
search_item:
.LFB48:
	.loc 2 128 1
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
	.loc 2 132 3
	cmpq	$0, -56(%rbp)
	jne	.L19
	.loc 2 132 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6308(%rip), %rcx
	movl	$132, %edx
	leaq	.LC25(%rip), %rsi
	leaq	.LC26(%rip), %rdi
	call	__assert_fail@PLT
.L19:
	.loc 2 136 11 is_stmt 1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 136 6
	testq	%rax, %rax
	jne	.L20
	.loc 2 137 27
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	new_item
	.loc 2 137 25
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L21
.L20:
	.loc 2 140 5
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 141 9
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 141 5
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L52:
	.loc 2 146 7
	cmpq	$0, -64(%rbp)
	je	.L22
	.loc 2 146 7 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)
	je	.L22
	.loc 2 146 7 discriminator 3
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L53
.L22:
	.loc 2 146 7 discriminator 5
	leaq	__PRETTY_FUNCTION__.6308(%rip), %rcx
	movl	$146, %edx
	leaq	.LC25(%rip), %rsi
	leaq	.LC27(%rip), %rdi
	call	__assert_fail@PLT
.L53:
	.loc 2 147 11 is_stmt 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -44(%rbp)
	.loc 2 148 10
	cmpl	$0, -44(%rbp)
	jne	.L24
	.loc 2 149 16
	movq	-40(%rbp), %rax
	jmp	.L21
.L24:
	.loc 2 152 10
	cmpl	$0, -44(%rbp)
	jns	.L25
	.loc 2 153 11
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L26
.L25:
	.loc 2 155 11
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.L26:
	.loc 2 157 10
	cmpq	$0, -32(%rbp)
	jne	.L27
	.loc 2 160 15
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	new_item
	movq	%rax, -32(%rbp)
	.loc 2 163 14
	cmpl	$0, -44(%rbp)
	jns	.L28
	.loc 2 164 21
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L29
.L28:
	.loc 2 166 22
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L29:
	.loc 2 169 11
	cmpq	$0, -64(%rbp)
	je	.L30
	.loc 2 169 11 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)
	je	.L30
	.loc 2 169 11 discriminator 3
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L30
	.loc 2 169 11 discriminator 5
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L54
.L30:
	.loc 2 169 11 discriminator 7
	leaq	__PRETTY_FUNCTION__.6308(%rip), %rcx
	movl	$169, %edx
	leaq	.LC25(%rip), %rsi
	leaq	.LC28(%rip), %rdi
	call	__assert_fail@PLT
.L54:
	.loc 2 170 15 is_stmt 1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 170 14
	testl	%eax, %eax
	jns	.L32
	.loc 2 172 21
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 172 17
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 173 17
	movl	$-1, -44(%rbp)
	jmp	.L34
.L32:
	.loc 2 177 21
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 177 17
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 178 17
	movl	$1, -44(%rbp)
	.loc 2 181 17
	jmp	.L34
.L38:
	.loc 2 183 15
	cmpq	$0, -64(%rbp)
	je	.L35
	.loc 2 183 15 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)
	je	.L35
	.loc 2 183 15 discriminator 3
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L35
	.loc 2 183 15 discriminator 5
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L55
.L35:
	.loc 2 183 15 discriminator 7
	leaq	__PRETTY_FUNCTION__.6308(%rip), %rcx
	movl	$183, %edx
	leaq	.LC25(%rip), %rsi
	leaq	.LC29(%rip), %rdi
	call	__assert_fail@PLT
.L55:
	.loc 2 184 19 is_stmt 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 184 18
	testl	%eax, %eax
	jns	.L37
	.loc 2 186 30
	movq	-40(%rbp), %rax
	movl	$-1, 24(%rax)
	.loc 2 187 21
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L34
.L37:
	.loc 2 191 30
	movq	-40(%rbp), %rax
	movl	$1, 24(%rax)
	.loc 2 192 21
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.L34:
	.loc 2 181 17
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L38
	.loc 2 197 16
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 197 14
	testl	%eax, %eax
	je	.L39
	.loc 2 197 35 discriminator 1
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 197 48 discriminator 1
	movl	-44(%rbp), %edx
	negl	%edx
	.loc 2 197 31 discriminator 1
	cmpl	%edx, %eax
	jne	.L40
.L39:
	.loc 2 199 26
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	movl	-44(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 24(%rax)
	.loc 2 200 22
	movq	-32(%rbp), %rax
	jmp	.L21
.L40:
	.loc 2 203 16
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 203 14
	cmpl	%eax, -44(%rbp)
	jne	.L41
	.loc 2 206 17
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 207 18
	cmpl	$0, -44(%rbp)
	jns	.L42
	.loc 2 209 30
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 209 27
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 210 28
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L43
.L42:
	.loc 2 214 31
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 214 28
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 215 27
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L43:
	.loc 2 217 39
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	.loc 2 217 29
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	.loc 2 217 26
	movq	-16(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L44
.L41:
	.loc 2 222 18
	cmpl	$0, -44(%rbp)
	jns	.L45
	.loc 2 224 21
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 225 31
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 225 28
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 226 27
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 227 30
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 227 27
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 228 28
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L46
.L45:
	.loc 2 232 21
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 233 30
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 233 27
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 234 28
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 235 31
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 235 28
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 236 27
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L46:
	.loc 2 239 26
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	.loc 2 240 26
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	.loc 2 241 20
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 241 18
	cmpl	%eax, -44(%rbp)
	jne	.L47
	.loc 2 242 30
	movl	-44(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	.loc 2 242 28
	movq	-16(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L48
.L47:
	.loc 2 243 25
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 243 38
	movl	-44(%rbp), %edx
	negl	%edx
	.loc 2 243 23
	cmpl	%edx, %eax
	jne	.L48
	.loc 2 244 28
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 24(%rax)
.L48:
	.loc 2 245 26
	movq	-40(%rbp), %rax
	movl	$0, 24(%rax)
.L44:
	.loc 2 249 21
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 249 14
	cmpq	%rax, -16(%rbp)
	jne	.L49
	.loc 2 250 22
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L50
.L49:
	.loc 2 252 21
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L50:
	.loc 2 254 18
	movq	-32(%rbp), %rax
	jmp	.L21
.L27:
	.loc 2 258 12
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 258 10
	testl	%eax, %eax
	je	.L51
	.loc 2 260 13
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 261 13
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
.L51:
	.loc 2 264 9
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 146 7
	jmp	.L52
.L21:
	.loc 2 268 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	search_item, .-search_item
	.type	record_relation, @function
record_relation:
.LFB49:
	.loc 2 274 1
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
	.loc 2 277 8
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 277 6
	testl	%eax, %eax
	je	.L58
	.loc 2 279 8
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 279 15
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 2 280 11
	movl	$16, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 281 14
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 282 18
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 282 15
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 283 14
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L58:
	.loc 2 285 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	record_relation, .-record_relation
	.type	count_items, @function
count_items:
.LFB50:
	.loc 2 289 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 290 12
	movq	n_strings(%rip), %rax
	addq	$1, %rax
	movq	%rax, n_strings(%rip)
	.loc 2 291 10
	movl	$0, %eax
	.loc 2 292 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	count_items, .-count_items
	.type	scan_zeros, @function
scan_zeros:
.LFB51:
	.loc 2 296 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 298 8
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 298 6
	testq	%rax, %rax
	jne	.L62
	.loc 2 298 25 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 298 21 discriminator 1
	testq	%rax, %rax
	je	.L62
	.loc 2 300 16
	movq	head(%rip), %rax
	.loc 2 300 10
	testq	%rax, %rax
	jne	.L63
	.loc 2 301 14
	movq	-8(%rbp), %rax
	movq	%rax, head(%rip)
	jmp	.L64
.L63:
	.loc 2 303 14
	movq	zeros(%rip), %rax
	.loc 2 303 22
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
.L64:
	.loc 2 305 13
	movq	-8(%rbp), %rax
	movq	%rax, zeros(%rip)
.L62:
	.loc 2 308 10
	movl	$0, %eax
	.loc 2 309 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	scan_zeros, .-scan_zeros
	.section	.rodata
.LC30:
	.string	"%s"
	.text
	.type	detect_loop, @function
detect_loop:
.LFB52:
	.loc 2 331 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 332 8
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 332 6
	testq	%rax, %rax
	je	.L67
	.loc 2 337 16
	movq	loop(%rip), %rax
	.loc 2 337 10
	testq	%rax, %rax
	jne	.L68
	.loc 2 339 14
	movq	-40(%rbp), %rax
	movq	%rax, loop(%rip)
	jmp	.L67
.L68:
.LBB2:
	.loc 2 342 30
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -24(%rbp)
	.loc 2 344 17
	jmp	.L69
.L79:
	.loc 2 346 20
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 346 23
	movq	(%rax), %rdx
	.loc 2 346 29
	movq	loop(%rip), %rax
	.loc 2 346 18
	cmpq	%rax, %rdx
	jne	.L70
	.loc 2 348 24
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 348 22
	testq	%rax, %rax
	je	.L71
	.loc 2 351 29
	jmp	.L72
.L75:
.LBB3:
	.loc 2 353 50
	movq	loop(%rip), %rax
	.loc 2 353 40
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 355 51
	movq	loop(%rip), %rax
	.loc 2 355 27
	movq	(%rax), %rax
	movq	%rax, %rcx
	leaq	.LC30(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 358 36
	movq	loop(%rip), %rax
	.loc 2 358 30
	cmpq	%rax, -40(%rbp)
	jne	.L73
	.loc 2 361 32
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 361 35
	movq	(%rax), %rax
	.loc 2 361 40
	movq	32(%rax), %rdx
	.loc 2 361 47
	subq	$1, %rdx
	movq	%rdx, 32(%rax)
	.loc 2 362 37
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 362 40
	movq	8(%rax), %rdx
	.loc 2 362 34
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 363 31
	jmp	.L74
.L73:
	.loc 2 368 31
	movq	loop(%rip), %rax
	.loc 2 368 39
	movq	$0, 40(%rax)
	.loc 2 369 32
	movq	-16(%rbp), %rax
	movq	%rax, loop(%rip)
.L72:
.LBE3:
	.loc 2 351 30
	movq	loop(%rip), %rax
	.loc 2 351 29
	testq	%rax, %rax
	jne	.L75
.L74:
	.loc 2 372 29
	jmp	.L76
.L77:
.LBB4:
	.loc 2 374 50
	movq	loop(%rip), %rax
	.loc 2 374 40
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 376 31
	movq	loop(%rip), %rax
	.loc 2 376 39
	movq	$0, 40(%rax)
	.loc 2 377 32
	movq	-8(%rbp), %rax
	movq	%rax, loop(%rip)
.L76:
.LBE4:
	.loc 2 372 30
	movq	loop(%rip), %rax
	.loc 2 372 29
	testq	%rax, %rax
	jne	.L77
	.loc 2 382 30
	movl	$1, %eax
	jmp	.L78
.L71:
	.loc 2 386 32
	movq	loop(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 2 387 28
	movq	-40(%rbp), %rax
	movq	%rax, loop(%rip)
	.loc 2 388 23
	jmp	.L67
.L70:
	.loc 2 392 21
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 392 17
	addq	$8, %rax
	movq	%rax, -24(%rbp)
.L69:
	.loc 2 344 18
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 344 17
	testq	%rax, %rax
	jne	.L79
.L67:
.LBE2:
	.loc 2 397 10
	movl	$0, %eax
.L78:
	.loc 2 398 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	detect_loop, .-detect_loop
	.type	recurse_tree, @function
recurse_tree:
.LFB53:
	.loc 2 405 1
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
	.loc 2 406 11
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 406 6
	testq	%rax, %rax
	jne	.L81
	.loc 2 406 33 discriminator 1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 406 26 discriminator 1
	testq	%rax, %rax
	jne	.L81
	.loc 2 407 13
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.LVL0:
	jmp	.L82
.L81:
	.loc 2 410 15
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 410 10
	testq	%rax, %rax
	je	.L83
	.loc 2 411 13
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	recurse_tree
	.loc 2 411 12
	testb	%al, %al
	je	.L83
	.loc 2 412 18
	movl	$1, %eax
	jmp	.L82
.L83:
	.loc 2 413 12
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.LVL1:
	.loc 2 413 10
	testb	%al, %al
	je	.L84
	.loc 2 414 16
	movl	$1, %eax
	jmp	.L82
.L84:
	.loc 2 415 15
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 415 10
	testq	%rax, %rax
	je	.L85
	.loc 2 416 13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	recurse_tree
	.loc 2 416 12
	testb	%al, %al
	je	.L85
	.loc 2 417 18
	movl	$1, %eax
	jmp	.L82
.L85:
	.loc 2 420 10
	movl	$0, %eax
.L82:
	.loc 2 421 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	recurse_tree, .-recurse_tree
	.type	walk_tree, @function
walk_tree:
.LFB54:
	.loc 2 428 1
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
	.loc 2 429 11
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 429 6
	testq	%rax, %rax
	je	.L88
	.loc 2 430 5
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	recurse_tree
.L88:
	.loc 2 431 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	walk_tree, .-walk_tree
	.section	.rodata
.LC31:
	.string	"-"
.LC32:
	.string	"r"
.LC33:
	.string	" \t\n"
.LC34:
	.string	"len != 0"
	.align 8
.LC35:
	.string	"%s: input contains an odd number of tokens"
.LC36:
	.string	"%s: input contains a loop:"
.LC37:
	.string	"standard input"
	.text
	.type	tsort, @function
tsort:
.LFB55:
	.loc 2 437 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	.loc 2 437 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 438 8
	movb	$1, -98(%rbp)
	.loc 2 440 16
	movq	$0, -96(%rbp)
	.loc 2 441 16
	movq	$0, -88(%rbp)
	.loc 2 443 19
	movq	-120(%rbp), %rax
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 443 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -97(%rbp)
	.loc 2 446 10
	movl	$0, %edi
	call	new_item
	movq	%rax, -72(%rbp)
	.loc 2 448 7
	movzbl	-97(%rbp), %eax
	xorl	$1, %eax
	.loc 2 448 6
	testb	%al, %al
	je	.L90
	.loc 2 448 22 discriminator 1
	movq	stdin(%rip), %rdx
	movq	-120(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	freopen_safer@PLT
	.loc 2 448 17 discriminator 1
	testq	%rax, %rax
	jne	.L90
.LBB5:
	.loc 2 449 5
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC30(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L90:
.LBE5:
	.loc 2 451 3
	movq	stdin(%rip), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 453 3
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	init_tokenbuffer@PLT
.L95:
.LBB6:
	.loc 2 458 20
	movq	stdin(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$3, %edx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	readtoken@PLT
	movq	%rax, -64(%rbp)
	.loc 2 459 10
	cmpq	$-1, -64(%rbp)
	je	.L111
	.loc 2 462 7
	cmpq	$0, -64(%rbp)
	jne	.L93
	.loc 2 462 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6362(%rip), %rcx
	movl	$462, %edx
	leaq	.LC25(%rip), %rsi
	leaq	.LC34(%rip), %rdi
	call	__assert_fail@PLT
.L93:
	.loc 2 464 41 is_stmt 1
	movq	-40(%rbp), %rdx
	.loc 2 464 11
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	search_item
	movq	%rax, -88(%rbp)
	.loc 2 465 10
	cmpq	$0, -96(%rbp)
	je	.L94
	.loc 2 468 11
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	record_relation
	.loc 2 469 13
	movq	$0, -88(%rbp)
.L94:
	.loc 2 472 9
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBE6:
	.loc 2 456 5
	jmp	.L95
.L111:
.LBB7:
	.loc 2 460 9
	nop
.LBE7:
	.loc 2 475 6
	cmpq	$0, -88(%rbp)
	je	.L96
.LBB8:
	.loc 2 476 5
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L96:
.LBE8:
	.loc 2 480 3
	movq	-72(%rbp), %rax
	leaq	count_items(%rip), %rsi
	movq	%rax, %rdi
	call	walk_tree
	.loc 2 482 9
	jmp	.L97
.L104:
	.loc 2 485 7
	movq	-72(%rbp), %rax
	leaq	scan_zeros(%rip), %rsi
	movq	%rax, %rdi
	call	walk_tree
	.loc 2 487 13
	jmp	.L98
.L102:
.LBB9:
	.loc 2 489 37
	movq	head(%rip), %rax
	.loc 2 489 29
	movq	48(%rax), %rax
	movq	%rax, -80(%rbp)
	.loc 2 492 21
	movq	head(%rip), %rax
	.loc 2 492 11
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 495 41
	movq	head(%rip), %rax
	.loc 2 495 17
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 2 496 11
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 498 15
	movq	head(%rip), %rax
	.loc 2 498 21
	movq	$0, (%rax)
	.loc 2 499 20
	movq	n_strings(%rip), %rax
	subq	$1, %rax
	movq	%rax, n_strings(%rip)
	.loc 2 502 17
	jmp	.L99
.L101:
	.loc 2 504 16
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 504 21
	movq	32(%rax), %rdx
	.loc 2 504 28
	subq	$1, %rdx
	movq	%rdx, 32(%rax)
	.loc 2 505 20
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 505 25
	movq	32(%rax), %rax
	.loc 2 505 18
	testq	%rax, %rax
	jne	.L100
	.loc 2 507 24
	movq	zeros(%rip), %rax
	.loc 2 507 35
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rdx
	.loc 2 507 32
	movq	%rdx, 40(%rax)
	.loc 2 508 28
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 508 25
	movq	%rax, zeros(%rip)
.L100:
	.loc 2 511 17
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
.L99:
	.loc 2 502 17
	cmpq	$0, -80(%rbp)
	jne	.L101
	.loc 2 515 22
	movq	head(%rip), %rax
	movq	40(%rax), %rax
	.loc 2 515 16
	movq	%rax, head(%rip)
.L98:
.LBE9:
	.loc 2 487 14
	movq	head(%rip), %rax
	.loc 2 487 13
	testq	%rax, %rax
	jne	.L102
	.loc 2 519 21
	movq	n_strings(%rip), %rax
	.loc 2 519 10
	testq	%rax, %rax
	je	.L97
	.loc 2 522 11
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 522 24
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 2 522 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 523 14
	movb	$0, -98(%rbp)
.L103:
	.loc 2 527 13 discriminator 1
	movq	-72(%rbp), %rax
	leaq	detect_loop(%rip), %rsi
	movq	%rax, %rdi
	call	walk_tree
	.loc 2 528 18 discriminator 1
	movq	loop(%rip), %rax
	.loc 2 528 11 discriminator 1
	testq	%rax, %rax
	jne	.L103
.L97:
	.loc 2 482 20
	movq	n_strings(%rip), %rax
	.loc 2 482 9
	testq	%rax, %rax
	jne	.L104
	.loc 2 532 3
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 534 7
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 534 6
	testl	%eax, %eax
	je	.L105
.LBB10:
	.loc 2 535 5
	cmpb	$0, -97(%rbp)
	je	.L106
	.loc 2 535 5 is_stmt 0 discriminator 1
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	jmp	.L107
.L106:
	.loc 2 535 5 discriminator 2
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
.L107:
	.loc 2 535 5 discriminator 4
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC30(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L105:
.LBE10:
	.loc 2 538 10 is_stmt 1
	movzbl	-98(%rbp), %eax
	.loc 2 539 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L109
	call	__stack_chk_fail@PLT
.L109:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	tsort, .-tsort
	.section	.rodata
.LC38:
	.string	"/usr/local/share/locale"
.LC39:
	.string	"Mark Kettenis"
.LC40:
	.string	"extra operand %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB56:
	.loc 2 543 1
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
	.loc 2 547 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 548 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 549 3
	leaq	.LC38(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 550 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 552 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 554 3
	movq	Version(%rip), %rcx
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC39(%rip), %rdx
	pushq	%rdx
	leaq	usage(%rip), %rdx
	pushq	%rdx
	movl	$1, %r9d
	movq	%rcx, %r8
	leaq	.LC12(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	parse_gnu_standard_options_only@PLT
	addq	$32, %rsp
	.loc 2 558 16
	movl	optind(%rip), %eax
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 558 6
	cmpl	$1, %eax
	jle	.L113
	.loc 2 560 54
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 560 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 560 20
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 2 560 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 561 7
	movl	$1, %edi
	call	usage
.L113:
	.loc 2 564 22
	movl	optind(%rip), %eax
	.loc 2 564 8
	cmpl	%eax, -36(%rbp)
	je	.L114
	.loc 2 564 42 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 564 8 discriminator 1
	movq	(%rax), %rax
	jmp	.L115
.L114:
	.loc 2 564 8 is_stmt 0 discriminator 2
	leaq	.LC31(%rip), %rax
.L115:
	.loc 2 564 8 discriminator 4
	movq	%rax, %rdi
	call	tsort
	movb	%al, -17(%rbp)
	.loc 2 566 28 is_stmt 1 discriminator 4
	movzbl	-17(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 567 1 discriminator 4
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6308, @object
	.size	__PRETTY_FUNCTION__.6308, 12
__PRETTY_FUNCTION__.6308:
	.string	"search_item"
	.type	__PRETTY_FUNCTION__.6362, @object
	.size	__PRETTY_FUNCTION__.6362, 6
__PRETTY_FUNCTION__.6362:
	.string	"tsort"
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "./lib/sys/select.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/include/signal.h"
	.file 9 "/usr/include/unistd.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 11 "/usr/include/errno.h"
	.file 12 "src/version.h"
	.file 13 "./lib/exitfail.h"
	.file 14 "./lib/timespec.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 17 "/usr/include/stdio.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 19 "./lib/version-etc.h"
	.file 20 "./lib/progname.h"
	.file 21 "./lib/quotearg.h"
	.file 22 "./lib/error.h"
	.file 23 "./lib/fadvise.h"
	.file 24 "./lib/readtokens.h"
	.file 25 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc40
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF149
	.byte	0xc
	.long	.LASF150
	.long	.LASF151
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF7
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x96
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0x7
	.byte	0x12
	.long	0x82
	.uleb128 0x5
	.long	.LASF12
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0x7
	.byte	0x8
	.long	0x9d
	.uleb128 0x8
	.long	0xd5
	.uleb128 0xa
	.long	0x90
	.long	0xf0
	.uleb128 0xb
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF16
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0xe0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF18
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xc
	.long	.LASF19
	.byte	0x7
	.byte	0xa6
	.byte	0xe
	.long	0xe0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF21
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF23
	.uleb128 0xd
	.uleb128 0x7
	.byte	0x8
	.long	0x14c
	.uleb128 0xa
	.long	0xdb
	.long	0x163
	.uleb128 0xb
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x153
	.uleb128 0x9
	.long	.LASF24
	.byte	0x8
	.value	0x11e
	.byte	0x1a
	.long	0x163
	.uleb128 0x9
	.long	.LASF25
	.byte	0x8
	.value	0x11f
	.byte	0x1a
	.long	0x163
	.uleb128 0x9
	.long	.LASF26
	.byte	0x9
	.value	0x21f
	.byte	0xf
	.long	0x18f
	.uleb128 0x7
	.byte	0x8
	.long	0x90
	.uleb128 0x9
	.long	.LASF27
	.byte	0x9
	.value	0x221
	.byte	0xf
	.long	0x18f
	.uleb128 0xc
	.long	.LASF28
	.byte	0xa
	.byte	0x24
	.byte	0xe
	.long	0x90
	.uleb128 0xc
	.long	.LASF29
	.byte	0xa
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF30
	.byte	0xa
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF31
	.byte	0xa
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF32
	.byte	0xb
	.byte	0x2d
	.byte	0xe
	.long	0x90
	.uleb128 0xc
	.long	.LASF33
	.byte	0xb
	.byte	0x2e
	.byte	0xe
	.long	0x90
	.uleb128 0xc
	.long	.LASF34
	.byte	0xc
	.byte	0x1
	.byte	0x14
	.long	0xd5
	.uleb128 0xc
	.long	.LASF35
	.byte	0xd
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xe
	.byte	0x29
	.byte	0x6
	.long	0x21a
	.uleb128 0xf
	.long	.LASF36
	.long	0x3b9aca00
	.byte	0
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xe
	.byte	0x2a
	.byte	0x6
	.long	0x22f
	.uleb128 0x10
	.long	.LASF37
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.long	.LASF102
	.byte	0xd8
	.byte	0xf
	.byte	0x31
	.byte	0x8
	.long	0x3b6
	.uleb128 0x12
	.long	.LASF38
	.byte	0xf
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x12
	.long	.LASF39
	.byte	0xf
	.byte	0x36
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0x12
	.long	.LASF40
	.byte	0xf
	.byte	0x37
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0x12
	.long	.LASF41
	.byte	0xf
	.byte	0x38
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0x12
	.long	.LASF42
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0x12
	.long	.LASF43
	.byte	0xf
	.byte	0x3a
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0x12
	.long	.LASF44
	.byte	0xf
	.byte	0x3b
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0x12
	.long	.LASF45
	.byte	0xf
	.byte	0x3c
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0x12
	.long	.LASF46
	.byte	0xf
	.byte	0x3d
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0x12
	.long	.LASF47
	.byte	0xf
	.byte	0x40
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0x12
	.long	.LASF48
	.byte	0xf
	.byte	0x41
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0x12
	.long	.LASF49
	.byte	0xf
	.byte	0x42
	.byte	0x9
	.long	0x90
	.byte	0x58
	.uleb128 0x12
	.long	.LASF50
	.byte	0xf
	.byte	0x44
	.byte	0x16
	.long	0x3cf
	.byte	0x60
	.uleb128 0x12
	.long	.LASF51
	.byte	0xf
	.byte	0x46
	.byte	0x14
	.long	0x3d5
	.byte	0x68
	.uleb128 0x12
	.long	.LASF52
	.byte	0xf
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x12
	.long	.LASF53
	.byte	0xf
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x12
	.long	.LASF54
	.byte	0xf
	.byte	0x4a
	.byte	0xb
	.long	0x6a
	.byte	0x78
	.uleb128 0x12
	.long	.LASF55
	.byte	0xf
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0x12
	.long	.LASF56
	.byte	0xf
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0x12
	.long	.LASF57
	.byte	0xf
	.byte	0x4f
	.byte	0x8
	.long	0x3db
	.byte	0x83
	.uleb128 0x12
	.long	.LASF58
	.byte	0xf
	.byte	0x51
	.byte	0xf
	.long	0x3eb
	.byte	0x88
	.uleb128 0x12
	.long	.LASF59
	.byte	0xf
	.byte	0x59
	.byte	0xd
	.long	0x76
	.byte	0x90
	.uleb128 0x12
	.long	.LASF60
	.byte	0xf
	.byte	0x5b
	.byte	0x17
	.long	0x3f6
	.byte	0x98
	.uleb128 0x12
	.long	.LASF61
	.byte	0xf
	.byte	0x5c
	.byte	0x19
	.long	0x401
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF62
	.byte	0xf
	.byte	0x5d
	.byte	0x14
	.long	0x3d5
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF63
	.byte	0xf
	.byte	0x5e
	.byte	0x9
	.long	0x8e
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF64
	.byte	0xf
	.byte	0x5f
	.byte	0xa
	.long	0xae
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF65
	.byte	0xf
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF66
	.byte	0xf
	.byte	0x62
	.byte	0x8
	.long	0x407
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF67
	.byte	0x10
	.byte	0x7
	.byte	0x19
	.long	0x22f
	.uleb128 0x13
	.long	.LASF152
	.byte	0xf
	.byte	0x2b
	.byte	0xe
	.uleb128 0x14
	.long	.LASF68
	.uleb128 0x7
	.byte	0x8
	.long	0x3ca
	.uleb128 0x7
	.byte	0x8
	.long	0x22f
	.uleb128 0xa
	.long	0x96
	.long	0x3eb
	.uleb128 0xb
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x3c2
	.uleb128 0x14
	.long	.LASF69
	.uleb128 0x7
	.byte	0x8
	.long	0x3f1
	.uleb128 0x14
	.long	.LASF70
	.uleb128 0x7
	.byte	0x8
	.long	0x3fc
	.uleb128 0xa
	.long	0x96
	.long	0x417
	.uleb128 0xb
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.long	.LASF71
	.byte	0x11
	.byte	0x89
	.byte	0xe
	.long	0x423
	.uleb128 0x7
	.byte	0x8
	.long	0x3b6
	.uleb128 0xc
	.long	.LASF72
	.byte	0x11
	.byte	0x8a
	.byte	0xe
	.long	0x423
	.uleb128 0xc
	.long	.LASF73
	.byte	0x11
	.byte	0x8b
	.byte	0xe
	.long	0x423
	.uleb128 0xc
	.long	.LASF74
	.byte	0x12
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	0xdb
	.long	0x458
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.long	0x44d
	.uleb128 0xc
	.long	.LASF75
	.byte	0x12
	.byte	0x1b
	.byte	0x1a
	.long	0x458
	.uleb128 0xc
	.long	.LASF76
	.byte	0x12
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF77
	.byte	0x12
	.byte	0x1f
	.byte	0x1a
	.long	0x458
	.uleb128 0xa
	.long	0x9d
	.long	0x48c
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.long	0x481
	.uleb128 0xc
	.long	.LASF78
	.byte	0x13
	.byte	0x19
	.byte	0x13
	.long	0x48c
	.uleb128 0xc
	.long	.LASF79
	.byte	0x14
	.byte	0x20
	.byte	0x14
	.long	0xd5
	.uleb128 0x16
	.long	.LASF153
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x15
	.byte	0x20
	.byte	0x6
	.long	0x4fe
	.uleb128 0x10
	.long	.LASF80
	.byte	0
	.uleb128 0x10
	.long	.LASF81
	.byte	0x1
	.uleb128 0x10
	.long	.LASF82
	.byte	0x2
	.uleb128 0x10
	.long	.LASF83
	.byte	0x3
	.uleb128 0x10
	.long	.LASF84
	.byte	0x4
	.uleb128 0x10
	.long	.LASF85
	.byte	0x5
	.uleb128 0x10
	.long	.LASF86
	.byte	0x6
	.uleb128 0x10
	.long	.LASF87
	.byte	0x7
	.uleb128 0x10
	.long	.LASF88
	.byte	0x8
	.uleb128 0x10
	.long	.LASF89
	.byte	0x9
	.uleb128 0x10
	.long	.LASF90
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x4a9
	.uleb128 0x9
	.long	.LASF91
	.byte	0x15
	.value	0x10b
	.byte	0x1a
	.long	0x458
	.uleb128 0xa
	.long	0x4fe
	.long	0x51b
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.long	0x510
	.uleb128 0x9
	.long	.LASF92
	.byte	0x15
	.value	0x10c
	.byte	0x21
	.long	0x51b
	.uleb128 0xc
	.long	.LASF93
	.byte	0x16
	.byte	0x32
	.byte	0xf
	.long	0x14d
	.uleb128 0xc
	.long	.LASF94
	.byte	0x16
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0xc
	.long	.LASF95
	.byte	0x16
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x17
	.byte	0x2d
	.byte	0xe
	.long	0x584
	.uleb128 0x10
	.long	.LASF96
	.byte	0
	.uleb128 0x10
	.long	.LASF97
	.byte	0x2
	.uleb128 0x10
	.long	.LASF98
	.byte	0x5
	.uleb128 0x10
	.long	.LASF99
	.byte	0x4
	.uleb128 0x10
	.long	.LASF100
	.byte	0x3
	.uleb128 0x10
	.long	.LASF101
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.long	.LASF103
	.byte	0x10
	.byte	0x18
	.byte	0x1a
	.byte	0x8
	.long	0x5ac
	.uleb128 0x12
	.long	.LASF104
	.byte	0x18
	.byte	0x1c
	.byte	0xa
	.long	0xae
	.byte	0
	.uleb128 0x12
	.long	.LASF105
	.byte	0x18
	.byte	0x1d
	.byte	0x9
	.long	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF106
	.byte	0x18
	.byte	0x1f
	.byte	0x1c
	.long	0x584
	.uleb128 0x14
	.long	.LASF107
	.uleb128 0xc
	.long	.LASF108
	.byte	0x19
	.byte	0x19
	.byte	0x1f
	.long	0x5b8
	.uleb128 0x11
	.long	.LASF109
	.byte	0x10
	.byte	0x2
	.byte	0x2e
	.byte	0x8
	.long	0x5f1
	.uleb128 0x17
	.string	"suc"
	.byte	0x2
	.byte	0x30
	.byte	0x10
	.long	0x65a
	.byte	0
	.uleb128 0x12
	.long	.LASF110
	.byte	0x2
	.byte	0x31
	.byte	0x15
	.long	0x660
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF111
	.byte	0x38
	.byte	0x2
	.byte	0x35
	.byte	0x8
	.long	0x65a
	.uleb128 0x17
	.string	"str"
	.byte	0x2
	.byte	0x37
	.byte	0xf
	.long	0xd5
	.byte	0
	.uleb128 0x12
	.long	.LASF112
	.byte	0x2
	.byte	0x38
	.byte	0x10
	.long	0x65a
	.byte	0x8
	.uleb128 0x12
	.long	.LASF113
	.byte	0x2
	.byte	0x38
	.byte	0x17
	.long	0x65a
	.byte	0x10
	.uleb128 0x12
	.long	.LASF114
	.byte	0x2
	.byte	0x39
	.byte	0x7
	.long	0x57
	.byte	0x18
	.uleb128 0x12
	.long	.LASF115
	.byte	0x2
	.byte	0x3a
	.byte	0xa
	.long	0xae
	.byte	0x20
	.uleb128 0x12
	.long	.LASF116
	.byte	0x2
	.byte	0x3b
	.byte	0x10
	.long	0x65a
	.byte	0x28
	.uleb128 0x17
	.string	"top"
	.byte	0x2
	.byte	0x3c
	.byte	0x15
	.long	0x660
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5f1
	.uleb128 0x7
	.byte	0x8
	.long	0x5c9
	.uleb128 0x18
	.long	.LASF117
	.byte	0x2
	.byte	0x40
	.byte	0x15
	.long	0x65a
	.uleb128 0x9
	.byte	0x3
	.quad	head
	.uleb128 0x18
	.long	.LASF118
	.byte	0x2
	.byte	0x43
	.byte	0x15
	.long	0x65a
	.uleb128 0x9
	.byte	0x3
	.quad	zeros
	.uleb128 0x18
	.long	.LASF119
	.byte	0x2
	.byte	0x46
	.byte	0x15
	.long	0x65a
	.uleb128 0x9
	.byte	0x3
	.quad	loop
	.uleb128 0x18
	.long	.LASF120
	.byte	0x2
	.byte	0x49
	.byte	0xf
	.long	0xae
	.uleb128 0x9
	.byte	0x3
	.quad	n_strings
	.uleb128 0x19
	.long	.LASF140
	.byte	0x2
	.value	0x21e
	.byte	0x1
	.long	0x57
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x711
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x2
	.value	0x21e
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x2
	.value	0x21e
	.byte	0x18
	.long	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"ok"
	.byte	0x2
	.value	0x220
	.byte	0x8
	.long	0x711
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF123
	.uleb128 0x1c
	.long	.LASF129
	.byte	0x2
	.value	0x1b4
	.byte	0x1
	.long	0x711
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x844
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x2
	.value	0x1b4
	.byte	0x14
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1b
	.string	"ok"
	.byte	0x2
	.value	0x1b6
	.byte	0x8
	.long	0x711
	.uleb128 0x3
	.byte	0x91
	.sleb128 -114
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x2
	.value	0x1b7
	.byte	0x10
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.string	"j"
	.byte	0x2
	.value	0x1b8
	.byte	0x10
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.string	"k"
	.byte	0x2
	.value	0x1b9
	.byte	0x10
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.long	.LASF103
	.byte	0x2
	.value	0x1ba
	.byte	0x10
	.long	0x5ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x2
	.value	0x1bb
	.byte	0x8
	.long	0x711
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x1e
	.long	.LASF138
	.long	0x854
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6362
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x20
	.long	.Ldebug_ranges0+0
	.long	0x7eb
	.uleb128 0x1b
	.string	"len"
	.byte	0x2
	.value	0x1ca
	.byte	0xe
	.long	0xae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1f
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x832
	.uleb128 0x1b
	.string	"p"
	.byte	0x2
	.value	0x1e9
	.byte	0x1d
	.long	0x660
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x2
	.value	0x1ef
	.byte	0x11
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.uleb128 0xa
	.long	0x9d
	.long	0x854
	.uleb128 0xb
	.long	0x42
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x844
	.uleb128 0x22
	.long	.LASF135
	.byte	0x2
	.value	0x1ab
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x899
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x2
	.value	0x1ab
	.byte	0x19
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x2
	.value	0x1ab
	.byte	0x26
	.long	0x8a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	0x711
	.long	0x8a8
	.uleb128 0x24
	.long	0x65a
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x899
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x2
	.value	0x194
	.byte	0x1
	.long	0x711
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f2
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x2
	.value	0x194
	.byte	0x1c
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x2
	.value	0x194
	.byte	0x29
	.long	0x8a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF131
	.byte	0x2
	.value	0x14a
	.byte	0x1
	.long	0x711
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x98c
	.uleb128 0x25
	.string	"k"
	.byte	0x2
	.value	0x14a
	.byte	0x1b
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1b
	.string	"p"
	.byte	0x2
	.value	0x156
	.byte	0x1e
	.long	0x98c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x968
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x2
	.value	0x161
	.byte	0x28
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x26
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x2
	.value	0x176
	.byte	0x28
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x660
	.uleb128 0x27
	.long	.LASF132
	.byte	0x2
	.value	0x127
	.byte	0x1
	.long	0x711
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c4
	.uleb128 0x25
	.string	"k"
	.byte	0x2
	.value	0x127
	.byte	0x1a
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF133
	.byte	0x2
	.value	0x120
	.byte	0x1
	.long	0x711
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f8
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x2
	.value	0x120
	.byte	0x1b
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF136
	.byte	0x2
	.value	0x111
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xa42
	.uleb128 0x25
	.string	"j"
	.byte	0x2
	.value	0x111
	.byte	0x1f
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"k"
	.byte	0x2
	.value	0x111
	.byte	0x2f
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"p"
	.byte	0x2
	.value	0x113
	.byte	0x15
	.long	0x660
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF137
	.byte	0x2
	.byte	0x7f
	.byte	0x1
	.long	0x65a
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xae6
	.uleb128 0x29
	.long	.LASF125
	.byte	0x2
	.byte	0x7f
	.byte	0x1b
	.long	0x65a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"str"
	.byte	0x2
	.byte	0x7f
	.byte	0x2d
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"p"
	.byte	0x2
	.byte	0x81
	.byte	0x10
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"q"
	.byte	0x2
	.byte	0x81
	.byte	0x14
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"r"
	.byte	0x2
	.byte	0x81
	.byte	0x18
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"s"
	.byte	0x2
	.byte	0x81
	.byte	0x1c
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"t"
	.byte	0x2
	.byte	0x81
	.byte	0x20
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"a"
	.byte	0x2
	.byte	0x82
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF138
	.long	0xaf6
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6308
	.byte	0
	.uleb128 0xa
	.long	0x9d
	.long	0xaf6
	.uleb128 0xb
	.long	0x42
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.long	0xae6
	.uleb128 0x28
	.long	.LASF139
	.byte	0x2
	.byte	0x66
	.byte	0x1
	.long	0x65a
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xb3a
	.uleb128 0x2a
	.string	"str"
	.byte	0x2
	.byte	0x66
	.byte	0x17
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"k"
	.byte	0x2
	.byte	0x68
	.byte	0x10
	.long	0x65a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF141
	.byte	0x2
	.byte	0x4c
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xb68
	.uleb128 0x29
	.long	.LASF142
	.byte	0x2
	.byte	0x4c
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF143
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xc0d
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.long	.LASF145
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xbc3
	.uleb128 0x2e
	.long	.LASF144
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xd5
	.byte	0
	.uleb128 0x2e
	.long	.LASF146
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xd5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xb98
	.uleb128 0x1d
	.long	.LASF145
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xc1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1d
	.long	.LASF146
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1d
	.long	.LASF147
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xc22
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1d
	.long	.LASF148
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xa
	.long	0xbc3
	.long	0xc1d
	.uleb128 0xb
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xc0d
	.uleb128 0x7
	.byte	0x8
	.long	0xbc3
	.uleb128 0x2f
	.long	.LASF154
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF97:
	.string	"FADVISE_SEQUENTIAL"
.LASF88:
	.string	"locale_quoting_style"
.LASF51:
	.string	"_chain"
.LASF103:
	.string	"tokenbuffer"
.LASF36:
	.string	"TIMESPEC_HZ"
.LASF153:
	.string	"quoting_style"
.LASF12:
	.string	"size_t"
.LASF57:
	.string	"_shortbuf"
.LASF106:
	.string	"token_buffer"
.LASF82:
	.string	"shell_always_quoting_style"
.LASF112:
	.string	"left"
.LASF45:
	.string	"_IO_buf_base"
.LASF13:
	.string	"long long unsigned int"
.LASF110:
	.string	"next"
.LASF60:
	.string	"_codecvt"
.LASF18:
	.string	"__timezone"
.LASF132:
	.string	"scan_zeros"
.LASF14:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF92:
	.string	"quoting_style_vals"
.LASF138:
	.string	"__PRETTY_FUNCTION__"
.LASF144:
	.string	"program"
.LASF87:
	.string	"escape_quoting_style"
.LASF129:
	.string	"tsort"
.LASF80:
	.string	"literal_quoting_style"
.LASF52:
	.string	"_fileno"
.LASF40:
	.string	"_IO_read_end"
.LASF131:
	.string	"detect_loop"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"_gl_cxxalias_dummy"
.LASF38:
	.string	"_flags"
.LASF154:
	.string	"emit_stdin_note"
.LASF61:
	.string	"_wide_data"
.LASF46:
	.string	"_IO_buf_end"
.LASF55:
	.string	"_cur_column"
.LASF33:
	.string	"program_invocation_short_name"
.LASF85:
	.string	"c_quoting_style"
.LASF69:
	.string	"_IO_codecvt"
.LASF77:
	.string	"_sys_errlist"
.LASF32:
	.string	"program_invocation_name"
.LASF54:
	.string	"_old_offset"
.LASF59:
	.string	"_offset"
.LASF130:
	.string	"recurse_tree"
.LASF115:
	.string	"count"
.LASF109:
	.string	"successor"
.LASF128:
	.string	"action"
.LASF84:
	.string	"shell_escape_always_quoting_style"
.LASF116:
	.string	"qlink"
.LASF21:
	.string	"timezone"
.LASF79:
	.string	"program_name"
.LASF68:
	.string	"_IO_marker"
.LASF71:
	.string	"stdin"
.LASF127:
	.string	"head_str"
.LASF2:
	.string	"unsigned int"
.LASF63:
	.string	"_freeres_buf"
.LASF119:
	.string	"loop"
.LASF3:
	.string	"long unsigned int"
.LASF126:
	.string	"is_stdin"
.LASF43:
	.string	"_IO_write_ptr"
.LASF74:
	.string	"sys_nerr"
.LASF149:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF104:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF95:
	.string	"error_one_per_line"
.LASF34:
	.string	"Version"
.LASF47:
	.string	"_IO_save_base"
.LASF27:
	.string	"environ"
.LASF58:
	.string	"_lock"
.LASF53:
	.string	"_flags2"
.LASF113:
	.string	"right"
.LASF72:
	.string	"stdout"
.LASF25:
	.string	"sys_siglist"
.LASF78:
	.string	"version_etc_copyright"
.LASF135:
	.string	"walk_tree"
.LASF134:
	.string	"unused"
.LASF28:
	.string	"optarg"
.LASF147:
	.string	"map_prog"
.LASF22:
	.string	"getdate_err"
.LASF29:
	.string	"optind"
.LASF120:
	.string	"n_strings"
.LASF39:
	.string	"_IO_read_ptr"
.LASF133:
	.string	"count_items"
.LASF118:
	.string	"zeros"
.LASF111:
	.string	"item"
.LASF98:
	.string	"FADVISE_NOREUSE"
.LASF8:
	.string	"__off64_t"
.LASF152:
	.string	"_IO_lock_t"
.LASF102:
	.string	"_IO_FILE"
.LASF93:
	.string	"error_print_progname"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"__off_t"
.LASF26:
	.string	"__environ"
.LASF11:
	.string	"time_t"
.LASF81:
	.string	"shell_quoting_style"
.LASF65:
	.string	"_mode"
.LASF75:
	.string	"sys_errlist"
.LASF50:
	.string	"_markers"
.LASF86:
	.string	"c_maybe_quoting_style"
.LASF37:
	.string	"LOG10_TIMESPEC_HZ"
.LASF136:
	.string	"record_relation"
.LASF0:
	.string	"unsigned char"
.LASF146:
	.string	"node"
.LASF124:
	.string	"file"
.LASF108:
	.string	"quote_quoting_options"
.LASF137:
	.string	"search_item"
.LASF76:
	.string	"_sys_nerr"
.LASF150:
	.string	"src/tsort.c"
.LASF56:
	.string	"_vtable_offset"
.LASF19:
	.string	"tzname"
.LASF67:
	.string	"FILE"
.LASF35:
	.string	"exit_failure"
.LASF101:
	.string	"FADVISE_RANDOM"
.LASF83:
	.string	"shell_escape_quoting_style"
.LASF117:
	.string	"head"
.LASF91:
	.string	"quoting_style_args"
.LASF31:
	.string	"optopt"
.LASF20:
	.string	"daylight"
.LASF123:
	.string	"_Bool"
.LASF23:
	.string	"long double"
.LASF10:
	.string	"char"
.LASF99:
	.string	"FADVISE_DONTNEED"
.LASF9:
	.string	"__time_t"
.LASF89:
	.string	"clocale_quoting_style"
.LASF105:
	.string	"buffer"
.LASF30:
	.string	"opterr"
.LASF114:
	.string	"balance"
.LASF96:
	.string	"FADVISE_NORMAL"
.LASF107:
	.string	"quoting_options"
.LASF41:
	.string	"_IO_read_base"
.LASF49:
	.string	"_IO_save_end"
.LASF24:
	.string	"_sys_siglist"
.LASF145:
	.string	"infomap"
.LASF141:
	.string	"usage"
.LASF64:
	.string	"__pad5"
.LASF44:
	.string	"_IO_write_end"
.LASF66:
	.string	"_unused2"
.LASF73:
	.string	"stderr"
.LASF122:
	.string	"argv"
.LASF17:
	.string	"__daylight"
.LASF142:
	.string	"status"
.LASF151:
	.string	"/root/coreutils"
.LASF90:
	.string	"custom_quoting_style"
.LASF139:
	.string	"new_item"
.LASF48:
	.string	"_IO_backup_base"
.LASF94:
	.string	"error_message_count"
.LASF148:
	.string	"lc_messages"
.LASF121:
	.string	"argc"
.LASF62:
	.string	"_freeres_list"
.LASF70:
	.string	"_IO_wide_data"
.LASF100:
	.string	"FADVISE_WILLNEED"
.LASF16:
	.string	"__tzname"
.LASF140:
	.string	"main"
.LASF42:
	.string	"_IO_write_base"
.LASF143:
	.string	"emit_ancillary_info"
.LASF125:
	.string	"root"
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
