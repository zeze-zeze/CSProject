	.file	"chown-core.c"
	.text
.Ltext0:
	.globl	chopt_init
	.type	chopt_init, @function
chopt_init:
.LFB46:
	.file 1 "src/chown-core.c"
	.loc 1 59 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 60 20
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	.loc 1 61 23
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 62 34
	movq	-8(%rbp), %rax
	movb	$1, 16(%rax)
	.loc 1 63 18
	movq	-8(%rbp), %rax
	movb	$0, 4(%rax)
	.loc 1 64 23
	movq	-8(%rbp), %rax
	movb	$0, 17(%rax)
	.loc 1 65 20
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	.loc 1 66 21
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	.loc 1 67 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	chopt_init, .-chopt_init
	.globl	chopt_free
	.type	chopt_free, @function
chopt_free:
.LFB47:
	.loc 1 71 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 72 14
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 1 72 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 73 14
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 73 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 74 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	chopt_free, .-chopt_free
	.globl	gid_to_name
	.type	gid_to_name, @function
gid_to_name:
.LFB48:
	.loc 1 82 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	.loc 1 82 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 84 23
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	getgrgid@PLT
	movq	%rax, -40(%rbp)
	.loc 1 85 10
	cmpq	$0, -40(%rbp)
	je	.L4
	.loc 1 85 10 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L5
.L4:
	.loc 1 87 19 is_stmt 1
	movl	-52(%rbp), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
.L5:
	.loc 1 85 10 discriminator 2
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 1 88 1 discriminator 2
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	.loc 1 88 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	gid_to_name, .-gid_to_name
	.globl	uid_to_name
	.type	uid_to_name, @function
uid_to_name:
.LFB49:
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	.loc 1 96 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 98 24
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	getpwuid@PLT
	movq	%rax, -40(%rbp)
	.loc 1 99 10
	cmpq	$0, -40(%rbp)
	je	.L9
	.loc 1 99 10 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L10
.L9:
	.loc 1 101 19 is_stmt 1
	movl	-52(%rbp), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
.L10:
	.loc 1 99 10 discriminator 2
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 1 102 1 discriminator 2
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L12
	.loc 1 102 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	uid_to_name, .-uid_to_name
	.type	user_group_str, @function
user_group_str:
.LFB50:
	.loc 1 108 1 is_stmt 1
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
	movq	%rsi, -48(%rbp)
	.loc 1 109 9
	movq	$0, -24(%rbp)
	.loc 1 111 6
	cmpq	$0, -40(%rbp)
	je	.L14
	.loc 1 113 10
	cmpq	$0, -48(%rbp)
	je	.L15
	.loc 1 115 27
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 1 115 47
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 115 45
	addq	%rbx, %rax
	.loc 1 115 18
	addq	$2, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -24(%rbp)
	.loc 1 116 11
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movw	$58, (%rax)
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	jmp	.L16
.L15:
	.loc 1 120 18
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -24(%rbp)
	jmp	.L16
.L14:
	.loc 1 123 11
	cmpq	$0, -48(%rbp)
	je	.L16
	.loc 1 125 14
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -24(%rbp)
.L16:
	.loc 1 128 10
	movq	-24(%rbp), %rax
	.loc 1 129 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	user_group_str, .-user_group_str
	.section	.rodata
	.align 8
.LC0:
	.string	"neither symbolic link %s nor referent has been changed\n"
	.align 8
.LC1:
	.string	"changed ownership of %s from %s to %s\n"
	.align 8
.LC2:
	.string	"changed group of %s from %s to %s\n"
.LC3:
	.string	"no change to ownership of %s\n"
	.align 8
.LC4:
	.string	"failed to change ownership of %s from %s to %s\n"
	.align 8
.LC5:
	.string	"failed to change group of %s from %s to %s\n"
	.align 8
.LC6:
	.string	"failed to change ownership of %s\n"
	.align 8
.LC7:
	.string	"failed to change ownership of %s to %s\n"
	.align 8
.LC8:
	.string	"failed to change group of %s to %s\n"
	.align 8
.LC9:
	.string	"ownership of %s retained as %s\n"
.LC10:
	.string	"group of %s retained as %s\n"
.LC11:
	.string	"ownership of %s retained\n"
	.text
	.type	describe_change, @function
describe_change:
.LFB51:
	.loc 1 139 1
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
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	.loc 1 144 6
	cmpl	$1, -60(%rbp)
	jne	.L19
	.loc 1 146 7
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 1 146 15
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	.loc 1 146 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 148 7
	jmp	.L18
.L19:
	.loc 1 151 10
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	user_group_str
	movq	%rax, -24(%rbp)
	.loc 1 152 14
	cmpq	$0, -96(%rbp)
	je	.L21
	.loc 1 152 14 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rdx
	jmp	.L22
.L21:
	.loc 1 152 14 discriminator 2
	movl	$0, %edx
.L22:
	.loc 1 152 14 discriminator 4
	cmpq	$0, -88(%rbp)
	je	.L23
	.loc 1 152 14 discriminator 5
	movq	-72(%rbp), %rax
	jmp	.L24
.L23:
	.loc 1 152 14 discriminator 6
	movl	$0, %eax
.L24:
	.loc 1 152 14 discriminator 8
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	user_group_str
	movq	%rax, -32(%rbp)
	.loc 1 154 3 is_stmt 1 discriminator 8
	cmpl	$4, -60(%rbp)
	je	.L25
	.loc 1 154 3 is_stmt 0
	cmpl	$4, -60(%rbp)
	ja	.L26
	cmpl	$2, -60(%rbp)
	je	.L27
	cmpl	$3, -60(%rbp)
	je	.L28
	jmp	.L26
.L27:
	.loc 1 157 11 is_stmt 1
	cmpq	$0, -88(%rbp)
	je	.L29
	.loc 1 157 21 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	jmp	.L30
.L29:
	.loc 1 157 11 discriminator 2
	cmpq	$0, -96(%rbp)
	je	.L31
	.loc 1 158 24
	leaq	.LC2(%rip), %rdi
	call	gettext@PLT
	jmp	.L30
.L31:
	.loc 1 159 16
	leaq	.LC3(%rip), %rdi
	call	gettext@PLT
.L30:
	.loc 1 157 11 discriminator 3
	movq	%rax, -40(%rbp)
	.loc 1 160 7 discriminator 3
	jmp	.L33
.L28:
	.loc 1 162 10
	cmpq	$0, -32(%rbp)
	je	.L34
	.loc 1 164 15
	cmpq	$0, -88(%rbp)
	je	.L35
	.loc 1 164 25 discriminator 1
	leaq	.LC4(%rip), %rdi
	call	gettext@PLT
	jmp	.L36
.L35:
	.loc 1 164 15 discriminator 2
	cmpq	$0, -96(%rbp)
	je	.L37
	.loc 1 165 28
	leaq	.LC5(%rip), %rdi
	call	gettext@PLT
	jmp	.L36
.L37:
	.loc 1 166 20
	leaq	.LC6(%rip), %rdi
	call	gettext@PLT
.L36:
	.loc 1 164 15 discriminator 3
	movq	%rax, -40(%rbp)
	.loc 1 177 7 discriminator 3
	jmp	.L33
.L34:
	.loc 1 170 15
	cmpq	$0, -88(%rbp)
	je	.L40
	.loc 1 170 25 discriminator 1
	leaq	.LC7(%rip), %rdi
	call	gettext@PLT
	jmp	.L41
.L40:
	.loc 1 170 15 discriminator 2
	cmpq	$0, -96(%rbp)
	je	.L42
	.loc 1 171 28
	leaq	.LC8(%rip), %rdi
	call	gettext@PLT
	jmp	.L41
.L42:
	.loc 1 172 20
	leaq	.LC6(%rip), %rdi
	call	gettext@PLT
.L41:
	.loc 1 170 15 discriminator 3
	movq	%rax, -40(%rbp)
	.loc 1 173 11 discriminator 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 174 20 discriminator 3
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 175 16 discriminator 3
	movq	$0, -24(%rbp)
	.loc 1 177 7 discriminator 3
	jmp	.L33
.L25:
	.loc 1 179 11
	cmpq	$0, -88(%rbp)
	je	.L44
	.loc 1 179 21 discriminator 1
	leaq	.LC9(%rip), %rdi
	call	gettext@PLT
	jmp	.L45
.L44:
	.loc 1 179 11 discriminator 2
	cmpq	$0, -96(%rbp)
	je	.L46
	.loc 1 180 24
	leaq	.LC10(%rip), %rdi
	call	gettext@PLT
	jmp	.L45
.L46:
	.loc 1 181 16
	leaq	.LC11(%rip), %rdi
	call	gettext@PLT
.L45:
	.loc 1 179 11 discriminator 3
	movq	%rax, -40(%rbp)
	.loc 1 182 7 discriminator 3
	jmp	.L33
.L26:
	.loc 1 184 7
	call	abort@PLT
.L33:
	.loc 1 187 3
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 189 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 190 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L18:
	.loc 1 191 1
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	describe_change, .-describe_change
	.type	restricted_chown, @function
restricted_chown:
.LFB52:
	.loc 1 216 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	%edi, -180(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	%ecx, -184(%rbp)
	movl	%r8d, -204(%rbp)
	movl	%r9d, -208(%rbp)
	.loc 1 216 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 217 19
	movl	$2, -176(%rbp)
	.loc 1 219 7
	movl	$2304, -172(%rbp)
	.loc 1 222 6
	cmpl	$-1, -208(%rbp)
	jne	.L49
	.loc 1 222 34 discriminator 1
	cmpl	$-1, 16(%rbp)
	jne	.L49
	.loc 1 223 12
	movl	$5, %eax
	jmp	.L66
.L49:
	.loc 1 225 9
	movq	-200(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 225 6
	cmpl	$32768, %eax
	je	.L51
	.loc 1 227 11
	movq	-200(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 227 10
	cmpl	$16384, %eax
	jne	.L52
	.loc 1 228 20
	orl	$65536, -172(%rbp)
	jmp	.L51
.L52:
	.loc 1 230 16
	movl	$5, %eax
	jmp	.L66
.L51:
	.loc 1 233 8
	movl	-172(%rbp), %edx
	movq	-192(%rbp), %rcx
	movl	-180(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	openat@PLT
	movl	%eax, -168(%rbp)
	.loc 1 234 6
	cmpl	$0, -168(%rbp)
	jns	.L53
	.loc 1 235 14 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 1 234 7 discriminator 1
	cmpl	$13, %eax
	jne	.L54
	.loc 1 235 33
	movq	-200(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 235 30
	cmpl	$32768, %eax
	jne	.L54
	.loc 1 236 28
	movl	-172(%rbp), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-192(%rbp), %rcx
	movl	-180(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	openat@PLT
	movl	%eax, -168(%rbp)
	.loc 1 236 14
	cmpl	$0, -168(%rbp)
	jns	.L53
.L54:
	.loc 1 237 13
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 1 237 52
	cmpl	$13, %eax
	jne	.L55
	.loc 1 237 52 is_stmt 0 discriminator 1
	movl	$5, %eax
	jmp	.L66
.L55:
	.loc 1 237 52 discriminator 2
	movl	$6, %eax
	jmp	.L66
.L53:
	.loc 1 239 7 is_stmt 1
	leaq	-160(%rbp), %rdx
	movl	-168(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 1 239 6
	testl	%eax, %eax
	je	.L57
	.loc 1 240 12
	movl	$6, -176(%rbp)
	jmp	.L58
.L57:
	.loc 1 241 14
	movq	-200(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	.loc 1 241 11
	cmpq	%rax, %rdx
	jne	.L59
	.loc 1 241 14 discriminator 1
	movq	-200(%rbp), %rax
	movq	(%rax), %rdx
	movq	-160(%rbp), %rax
	.loc 1 241 12 discriminator 1
	cmpq	%rax, %rdx
	je	.L60
.L59:
	.loc 1 242 12
	movl	$4, -176(%rbp)
	jmp	.L58
.L60:
	.loc 1 243 11
	cmpl	$-1, -208(%rbp)
	je	.L61
	.loc 1 243 61 discriminator 1
	movl	-132(%rbp), %eax
	.loc 1 243 40 discriminator 1
	cmpl	%eax, -208(%rbp)
	jne	.L58
.L61:
	.loc 1 244 12
	cmpl	$-1, 16(%rbp)
	je	.L62
	.loc 1 244 64 discriminator 1
	movl	-128(%rbp), %eax
	.loc 1 244 43 discriminator 1
	cmpl	%eax, 16(%rbp)
	jne	.L58
.L62:
	.loc 1 246 11
	movl	-204(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-168(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	fchown@PLT
	.loc 1 246 10
	testl	%eax, %eax
	jne	.L63
	.loc 1 248 21
	movl	-168(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 1 249 29
	testl	%eax, %eax
	jne	.L64
	.loc 1 249 29 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L65
.L64:
	.loc 1 249 29 discriminator 2
	movl	$6, %eax
.L65:
	.loc 1 248 18 is_stmt 1
	movl	%eax, -176(%rbp)
	.loc 1 250 18
	movl	-176(%rbp), %eax
	jmp	.L66
.L63:
	.loc 1 254 18
	movl	$6, -176(%rbp)
.L58:
	.loc 1 258 21
	call	__errno_location@PLT
	.loc 1 258 7
	movl	(%rax), %eax
	movl	%eax, -164(%rbp)
	.loc 1 259 3
	movl	-168(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 1 260 3
	call	__errno_location@PLT
	.loc 1 260 9
	movl	-164(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 261 10
	movl	-176(%rbp), %eax
.L66:
	.loc 1 262 1 discriminator 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L67
	.loc 1 262 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	restricted_chown, .-restricted_chown
	.section	.rodata
.LC12:
	.string	"/"
	.align 8
.LC13:
	.string	"it is dangerous to operate recursively on %s"
	.align 8
.LC14:
	.string	"it is dangerous to operate recursively on %s (same as %s)"
	.align 8
.LC15:
	.string	"use --no-preserve-root to override this failsafe"
.LC16:
	.string	"cannot access %s"
.LC17:
	.string	"%s"
.LC18:
	.string	"cannot read directory %s"
	.align 8
.LC19:
	.string	"WARNING: Circular directory structure.\nThis almost certainly means that you have a corrupted file system.\nNOTIFY YOUR SYSTEM MANAGER.\nThe following directory is part of the cycle:\n  %s\n"
.LC20:
	.string	"cannot dereference %s"
.LC21:
	.string	"changing ownership of %s"
.LC22:
	.string	"changing group of %s"
	.text
	.type	change_file_owner, @function
change_file_owner:
.LFB53:
	.loc 1 275 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$272, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movl	%edx, -260(%rbp)
	movl	%ecx, -264(%rbp)
	movl	%r8d, -268(%rbp)
	movl	%r9d, -272(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -280(%rbp)
	.loc 1 275 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 276 15
	movq	-256(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -216(%rbp)
	.loc 1 277 15
	movq	-256(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -208(%rbp)
	.loc 1 280 8
	movb	$1, -236(%rbp)
	.loc 1 282 8
	movb	$1, -234(%rbp)
	.loc 1 284 14
	movq	-256(%rbp), %rax
	movzwl	104(%rax), %eax
	movzwl	%ax, %eax
	cmpl	$10, %eax
	ja	.L133
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L71(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L71(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L71:
	.long	.L133-.L71
	.long	.L76-.L71
	.long	.L75-.L71
	.long	.L133-.L71
	.long	.L74-.L71
	.long	.L133-.L71
	.long	.L73-.L71
	.long	.L72-.L71
	.long	.L133-.L71
	.long	.L133-.L71
	.long	.L70-.L71
	.text
.L76:
	.loc 1 287 16
	movq	-280(%rbp), %rax
	movzbl	4(%rax), %eax
	.loc 1 287 10
	testb	%al, %al
	je	.L134
	.loc 1 289 15
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 289 14
	testq	%rax, %rax
	je	.L78
	.loc 1 289 15 discriminator 1
	movq	-256(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L78
	.loc 1 289 15 is_stmt 0 discriminator 2
	movq	-256(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L78
	.loc 1 293 15 is_stmt 1
	movq	-216(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L79
	.loc 1 293 15 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L80
.L79:
	.loc 1 293 15 discriminator 2
	leaq	.LC12(%rip), %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L80:
	.loc 1 293 15 discriminator 4
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 295 15 is_stmt 1 discriminator 4
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
.LBB2:
	.loc 1 297 15 discriminator 4
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -200(%rbp)
.LBE2:
	.loc 1 298 22 discriminator 4
	movl	$0, %eax
	jmp	.L130
.L78:
	.loc 1 300 18
	movl	$1, %eax
	jmp	.L130
.L73:
	.loc 1 305 18
	movq	-280(%rbp), %rax
	movzbl	4(%rax), %eax
	.loc 1 305 11
	xorl	$1, %eax
	.loc 1 305 10
	testb	%al, %al
	je	.L135
	.loc 1 306 16
	movl	$1, %eax
	jmp	.L130
.L70:
	.loc 1 317 14
	movq	-256(%rbp), %rax
	movq	88(%rax), %rax
	.loc 1 317 10
	testq	%rax, %rax
	jne	.L84
	.loc 1 317 37 discriminator 1
	movq	-256(%rbp), %rax
	movq	32(%rax), %rax
	.loc 1 317 31 discriminator 1
	testq	%rax, %rax
	jne	.L84
	.loc 1 319 27
	movq	-256(%rbp), %rax
	movq	$1, 32(%rax)
	.loc 1 320 11
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
	.loc 1 321 18
	movl	$1, %eax
	jmp	.L130
.L84:
	.loc 1 323 18
	movq	-280(%rbp), %rax
	movzbl	17(%rax), %eax
	.loc 1 323 11
	xorl	$1, %eax
	.loc 1 323 10
	testb	%al, %al
	je	.L85
	.loc 1 324 9
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 1 324 35
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 1 324 9
	movq	-256(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L85:
	.loc 1 326 10
	movb	$0, -236(%rbp)
	.loc 1 327 7
	jmp	.L82
.L72:
	.loc 1 330 18
	movq	-280(%rbp), %rax
	movzbl	17(%rax), %eax
	.loc 1 330 11
	xorl	$1, %eax
	.loc 1 330 10
	testb	%al, %al
	je	.L86
	.loc 1 331 9
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rdx
	movq	-256(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rdx, %rcx
	leaq	.LC17(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L86:
	.loc 1 332 10
	movb	$0, -236(%rbp)
	.loc 1 333 7
	jmp	.L82
.L74:
	.loc 1 336 18
	movq	-280(%rbp), %rax
	movzbl	17(%rax), %eax
	.loc 1 336 11
	xorl	$1, %eax
	.loc 1 336 10
	testb	%al, %al
	je	.L87
	.loc 1 337 9
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 1 337 35
	leaq	.LC18(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 1 337 9
	movq	-256(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L87:
	.loc 1 339 10
	movb	$0, -236(%rbp)
	.loc 1 340 7
	jmp	.L82
.L75:
	.loc 1 343 11
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cycle_warning_required@PLT
	.loc 1 343 10
	testb	%al, %al
	je	.L136
	.loc 1 345 11
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 346 18
	movl	$0, %eax
	jmp	.L130
.L133:
	.loc 1 351 7
	nop
	jmp	.L82
.L134:
	.loc 1 302 7
	nop
	jmp	.L82
.L135:
	.loc 1 307 7
	nop
	jmp	.L82
.L136:
	.loc 1 348 7
	nop
.L82:
	.loc 1 354 7
	movzbl	-236(%rbp), %eax
	xorl	$1, %eax
	.loc 1 354 6
	testb	%al, %al
	je	.L89
	.loc 1 356 16
	movb	$0, -235(%rbp)
	.loc 1 357 18
	movq	$0, -224(%rbp)
	jmp	.L90
.L89:
	.loc 1 359 11
	cmpl	$-1, -268(%rbp)
	jne	.L91
	.loc 1 359 39 discriminator 1
	cmpl	$-1, -272(%rbp)
	jne	.L91
	.loc 1 360 20
	movq	-280(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 360 12
	cmpl	$2, %eax
	jne	.L91
	.loc 1 361 22
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 361 12
	testq	%rax, %rax
	jne	.L91
	.loc 1 362 22
	movq	-280(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 1 362 15
	xorl	$1, %eax
	.loc 1 362 12
	testb	%al, %al
	je	.L91
	.loc 1 364 16
	movb	$1, -235(%rbp)
	.loc 1 365 18
	movq	-256(%rbp), %rax
	addq	$112, %rax
	movq	%rax, -224(%rbp)
	jmp	.L90
.L91:
	.loc 1 369 18
	movq	-256(%rbp), %rax
	addq	$112, %rax
	movq	%rax, -224(%rbp)
	.loc 1 373 16
	movq	-280(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 1 373 10
	testb	%al, %al
	je	.L92
	.loc 1 373 45 discriminator 1
	movq	-224(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 373 42 discriminator 1
	cmpl	$40960, %eax
	jne	.L92
	.loc 1 375 15
	movq	-248(%rbp), %rax
	movl	44(%rax), %eax
	leaq	-176(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movl	$0, %ecx
	movl	%eax, %edi
	call	fstatat@PLT
	.loc 1 375 14
	testl	%eax, %eax
	je	.L93
	.loc 1 377 26
	movq	-280(%rbp), %rax
	movzbl	17(%rax), %eax
	.loc 1 377 19
	xorl	$1, %eax
	.loc 1 377 18
	testb	%al, %al
	je	.L94
	.loc 1 378 17
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 1 378 34
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 378 27
	call	__errno_location@PLT
	.loc 1 378 17
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L94:
	.loc 1 380 18
	movb	$0, -236(%rbp)
.L93:
	.loc 1 383 22
	leaq	-176(%rbp), %rax
	movq	%rax, -224(%rbp)
.L92:
	.loc 1 389 19
	cmpb	$0, -236(%rbp)
	je	.L95
	.loc 1 387 19
	cmpl	$-1, -268(%rbp)
	je	.L96
	.loc 1 388 52
	movq	-224(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 388 23
	cmpl	%eax, -268(%rbp)
	jne	.L95
.L96:
	.loc 1 389 19
	cmpl	$-1, -272(%rbp)
	je	.L97
	.loc 1 390 52
	movq	-224(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 390 23
	cmpl	%eax, -272(%rbp)
	jne	.L95
.L97:
	.loc 1 389 19 discriminator 2
	movl	$1, %eax
	jmp	.L98
.L95:
	.loc 1 389 19 is_stmt 0 discriminator 1
	movl	$0, %eax
.L98:
	.loc 1 386 16 is_stmt 1
	movb	%al, -235(%rbp)
	andb	$1, -235(%rbp)
.L90:
	.loc 1 394 6
	cmpb	$0, -236(%rbp)
	je	.L99
	.loc 1 395 10
	movq	-256(%rbp), %rax
	movzwl	104(%rax), %eax
	.loc 1 395 7
	cmpw	$1, %ax
	je	.L100
	.loc 1 395 10 discriminator 1
	movq	-256(%rbp), %rax
	movzwl	104(%rax), %eax
	cmpw	$2, %ax
	je	.L100
	.loc 1 395 10 is_stmt 0 discriminator 2
	movq	-256(%rbp), %rax
	movzwl	104(%rax), %eax
	cmpw	$6, %ax
	je	.L100
	.loc 1 395 10 discriminator 3
	movq	-256(%rbp), %rax
	movzwl	104(%rax), %eax
	cmpw	$4, %ax
	jne	.L99
.L100:
	.loc 1 396 10 is_stmt 1
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 396 7
	testq	%rax, %rax
	je	.L99
	.loc 1 396 10 discriminator 1
	movq	-224(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L99
	.loc 1 396 10 is_stmt 0 discriminator 2
	movq	-224(%rbp), %rax
	movq	(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L99
	.loc 1 398 7 is_stmt 1
	movq	-216(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L101
	.loc 1 398 7 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L102
.L101:
	.loc 1 398 7 discriminator 2
	leaq	.LC12(%rip), %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-216(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L102:
	.loc 1 398 7 discriminator 4
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 399 14 is_stmt 1 discriminator 4
	movl	$0, %eax
	jmp	.L130
.L99:
	.loc 1 402 6
	cmpb	$0, -235(%rbp)
	je	.L103
	.loc 1 404 19
	movq	-280(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 1 404 12
	xorl	$1, %eax
	.loc 1 404 10
	testb	%al, %al
	je	.L104
	.loc 1 406 17
	movq	-248(%rbp), %rax
	movl	44(%rax), %eax
	movl	-264(%rbp), %ecx
	movl	-260(%rbp), %edx
	movq	-208(%rbp), %rsi
	movl	%eax, %edi
	call	lchownat@PLT
	.loc 1 406 14
	testl	%eax, %eax
	sete	%al
	movb	%al, -236(%rbp)
	.loc 1 411 15
	movzbl	-236(%rbp), %eax
	xorl	$1, %eax
	.loc 1 411 14
	testb	%al, %al
	je	.L105
	.loc 1 411 22 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 1 411 19 discriminator 1
	cmpl	$95, %eax
	jne	.L105
	.loc 1 413 18
	movb	$1, -236(%rbp)
	.loc 1 414 31
	movb	$0, -234(%rbp)
	jmp	.L105
.L104:
.LBB3:
	.loc 1 430 15
	movq	-248(%rbp), %rax
	movl	44(%rax), %eax
	movl	-268(%rbp), %r9d
	movl	-264(%rbp), %r8d
	movl	-260(%rbp), %ecx
	movq	-224(%rbp), %rdx
	movq	-208(%rbp), %rsi
	subq	$8, %rsp
	movl	-272(%rbp), %edi
	pushq	%rdi
	movl	%eax, %edi
	call	restricted_chown
	addq	$16, %rsp
	movl	%eax, -232(%rbp)
	.loc 1 432 11
	cmpl	$6, -232(%rbp)
	je	.L106
	cmpl	$6, -232(%rbp)
	ja	.L107
	cmpl	$5, -232(%rbp)
	je	.L108
	cmpl	$5, -232(%rbp)
	ja	.L107
	cmpl	$2, -232(%rbp)
	je	.L137
	cmpl	$2, -232(%rbp)
	jb	.L107
	movl	-232(%rbp), %eax
	subl	$3, %eax
	cmpl	$1, %eax
	ja	.L107
	jmp	.L132
.L108:
	.loc 1 438 21
	movq	-248(%rbp), %rax
	movl	44(%rax), %eax
	movl	-264(%rbp), %ecx
	movl	-260(%rbp), %edx
	movq	-208(%rbp), %rsi
	movl	%eax, %edi
	call	chownat@PLT
	.loc 1 438 18
	testl	%eax, %eax
	sete	%al
	movb	%al, -236(%rbp)
	.loc 1 439 15
	jmp	.L105
.L106:
	.loc 1 442 18
	movb	$0, -236(%rbp)
	.loc 1 443 15
	jmp	.L105
.L132:
	.loc 1 448 24
	movb	$0, -235(%rbp)
	.loc 1 449 18
	movb	$0, -236(%rbp)
	.loc 1 450 15
	jmp	.L105
.L107:
	.loc 1 453 15
	call	abort@PLT
.L137:
	.loc 1 435 15
	nop
.L105:
.LBE3:
	.loc 1 464 10
	cmpb	$0, -235(%rbp)
	je	.L103
	.loc 1 464 23 discriminator 1
	movzbl	-236(%rbp), %eax
	xorl	$1, %eax
	.loc 1 464 20 discriminator 1
	testb	%al, %al
	je	.L103
	.loc 1 464 37 discriminator 2
	movq	-280(%rbp), %rax
	movzbl	17(%rax), %eax
	.loc 1 464 30 discriminator 2
	xorl	$1, %eax
	.loc 1 464 27 discriminator 2
	testb	%al, %al
	je	.L103
	.loc 1 465 9
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	cmpl	$-1, -260(%rbp)
	je	.L111
	.loc 1 466 29
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	jmp	.L112
.L111:
	.loc 1 467 29
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
.L112:
	.loc 1 465 19
	call	__errno_location@PLT
	.loc 1 465 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L103:
	.loc 1 471 12
	movq	-280(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 471 6
	cmpl	$2, %eax
	je	.L113
.LBB4:
	.loc 1 475 10
	cmpb	$0, -235(%rbp)
	je	.L114
	.loc 1 474 20
	cmpb	$0, -236(%rbp)
	je	.L114
	.loc 1 474 26 discriminator 1
	cmpb	$0, -234(%rbp)
	je	.L114
	.loc 1 475 10
	cmpl	$-1, -260(%rbp)
	je	.L115
	.loc 1 475 55 discriminator 2
	movq	-224(%rbp), %rax
	movl	28(%rax), %eax
	.loc 1 475 35 discriminator 2
	cmpl	%eax, -260(%rbp)
	jne	.L116
.L115:
	.loc 1 475 13 discriminator 5
	cmpl	$-1, -264(%rbp)
	je	.L114
	.loc 1 476 58
	movq	-224(%rbp), %rax
	movl	32(%rax), %eax
	.loc 1 476 38
	cmpl	%eax, -264(%rbp)
	je	.L114
.L116:
	.loc 1 475 10 discriminator 4
	movl	$1, %eax
	jmp	.L117
.L114:
	.loc 1 475 10 is_stmt 0 discriminator 6
	movl	$0, %eax
.L117:
	.loc 1 473 12 is_stmt 1
	movb	%al, -233(%rbp)
	andb	$1, -233(%rbp)
	.loc 1 478 10
	cmpb	$0, -233(%rbp)
	jne	.L118
	.loc 1 478 27 discriminator 1
	movq	-280(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 478 19 discriminator 1
	testl	%eax, %eax
	jne	.L113
.L118:
.LBB5:
	.loc 1 481 14
	movzbl	-236(%rbp), %eax
	xorl	$1, %eax
	.loc 1 482 14
	testb	%al, %al
	je	.L119
	.loc 1 482 14 is_stmt 0 discriminator 1
	movl	$3, %eax
	jmp	.L120
.L119:
	.loc 1 482 16 is_stmt 1 discriminator 2
	movzbl	-234(%rbp), %eax
	xorl	$1, %eax
	.loc 1 482 14 discriminator 2
	testb	%al, %al
	je	.L121
	.loc 1 482 14 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L120
.L121:
	.loc 1 483 16 is_stmt 1 discriminator 4
	movzbl	-233(%rbp), %eax
	xorl	$1, %eax
	.loc 1 482 14 discriminator 4
	testb	%al, %al
	je	.L123
	.loc 1 482 14 is_stmt 0 discriminator 6
	movl	$4, %eax
	jmp	.L120
.L123:
	.loc 1 482 14 discriminator 7
	movl	$2, %eax
.L120:
	.loc 1 480 30 is_stmt 1
	movl	%eax, -228(%rbp)
	.loc 1 485 73
	cmpq	$0, -224(%rbp)
	je	.L125
	.loc 1 485 40 discriminator 1
	movq	-224(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %edi
	call	uid_to_name
	jmp	.L126
.L125:
	.loc 1 485 73 discriminator 2
	movl	$0, %eax
.L126:
	.loc 1 485 17 discriminator 4
	movq	%rax, -192(%rbp)
	.loc 1 486 73 discriminator 4
	cmpq	$0, -224(%rbp)
	je	.L127
	.loc 1 486 40 discriminator 1
	movq	-224(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	call	gid_to_name
	jmp	.L128
.L127:
	.loc 1 486 73 discriminator 2
	movl	$0, %eax
.L128:
	.loc 1 486 17 discriminator 4
	movq	%rax, -184(%rbp)
	.loc 1 489 51 discriminator 4
	movq	-280(%rbp), %rax
	movq	32(%rax), %r8
	.loc 1 489 33 discriminator 4
	movq	-280(%rbp), %rax
	movq	24(%rax), %rdi
	.loc 1 487 11 discriminator 4
	movq	-184(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movl	-228(%rbp), %esi
	movq	-216(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	describe_change
	.loc 1 490 11 discriminator 4
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 491 11 discriminator 4
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L113:
.LBE5:
.LBE4:
	.loc 1 495 15
	movq	-280(%rbp), %rax
	movzbl	4(%rax), %eax
	.loc 1 495 8
	xorl	$1, %eax
	.loc 1 495 6
	testb	%al, %al
	je	.L129
	.loc 1 496 5
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
.L129:
	.loc 1 498 10
	movzbl	-236(%rbp), %eax
.L130:
	.loc 1 499 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L131
	.loc 1 499 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L131:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	change_file_owner, .-change_file_owner
	.section	.rodata
.LC23:
	.string	"fts_read failed"
.LC24:
	.string	"fts_close failed"
	.text
	.globl	chown_files
	.type	chown_files, @function
chown_files:
.LFB54:
	.loc 1 515 1 is_stmt 1
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
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	.loc 1 516 8
	movb	$1, -37(%rbp)
	.loc 1 523 21
	cmpl	$-1, -72(%rbp)
	jne	.L139
	.loc 1 519 49
	cmpl	$-1, -76(%rbp)
	jne	.L139
	.loc 1 520 30
	movq	16(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 1 520 22
	testb	%al, %al
	jne	.L139
	.loc 1 521 30
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 521 22
	cmpl	$2, %eax
	je	.L140
.L139:
	.loc 1 523 21 discriminator 1
	movl	$0, %eax
	jmp	.L141
.L140:
	.loc 1 523 21 is_stmt 0
	movl	$8, %eax
.L141:
	.loc 1 519 7 is_stmt 1
	movl	%eax, -36(%rbp)
	.loc 1 525 14
	movl	-60(%rbp), %eax
	orl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	xfts_open@PLT
	movq	%rax, -32(%rbp)
.L146:
.LBB6:
	.loc 1 531 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -24(%rbp)
	.loc 1 532 10
	cmpq	$0, -24(%rbp)
	jne	.L142
	.loc 1 534 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 1 534 14
	testl	%eax, %eax
	je	.L149
	.loc 1 537 26
	movq	16(%rbp), %rax
	movzbl	17(%rax), %eax
	.loc 1 537 19
	xorl	$1, %eax
	.loc 1 537 18
	testb	%al, %al
	je	.L144
	.loc 1 538 34
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 538 27
	call	__errno_location@PLT
	.loc 1 538 17
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L144:
	.loc 1 539 18
	movb	$0, -37(%rbp)
	.loc 1 541 11
	jmp	.L149
.L142:
	.loc 1 544 13
	movl	-76(%rbp), %r8d
	movl	-72(%rbp), %edi
	movl	-68(%rbp), %ecx
	movl	-64(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	change_file_owner
	addq	$16, %rsp
	.loc 1 544 10
	movzbl	-37(%rbp), %edx
	.loc 1 544 13
	movzbl	%al, %eax
	.loc 1 544 10
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -37(%rbp)
.LBE6:
	.loc 1 528 5
	jmp	.L146
.L149:
.LBB7:
	.loc 1 541 11
	nop
.LBE7:
	.loc 1 548 7
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_close@PLT
	.loc 1 548 6
	testl	%eax, %eax
	je	.L147
	.loc 1 550 24
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 550 17
	call	__errno_location@PLT
	.loc 1 550 7
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 551 10
	movb	$0, -37(%rbp)
.L147:
	.loc 1 554 10
	movzbl	-37(%rbp), %eax
	.loc 1 555 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	chown_files, .-chown_files
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/pwd.h"
	.file 12 "/usr/include/grp.h"
	.file 13 "/usr/include/time.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 15 "/usr/include/signal.h"
	.file 16 "/usr/include/unistd.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 18 "/usr/include/errno.h"
	.file 19 "src/version.h"
	.file 20 "./lib/exitfail.h"
	.file 21 "/usr/include/stdint.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/dev-ino.h"
	.file 26 "src/chown-core.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/i-ring.h"
	.file 29 "./lib/fts_.h"
	.file 30 "/usr/include/dirent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1157
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF242
	.byte	0xc
	.long	.LASF243
	.long	.LASF244
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
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
	.byte	0x3
	.byte	0x48
	.byte	0x12
	.long	0x71
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF18
	.byte	0x3
	.byte	0xae
	.byte	0x1d
	.long	0x71
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3
	.byte	0xb3
	.byte	0x1c
	.long	0x71
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.byte	0xc4
	.byte	0x21
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x8
	.long	0x11a
	.uleb128 0x9
	.long	.LASF69
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x2ad
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x114
	.byte	0x8
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x114
	.byte	0x10
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x114
	.byte	0x20
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x114
	.byte	0x28
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x114
	.byte	0x30
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x114
	.byte	0x38
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x114
	.byte	0x40
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x114
	.byte	0x48
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x114
	.byte	0x50
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x114
	.byte	0x58
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x2c6
	.byte	0x60
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x2cc
	.byte	0x68
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0xcc
	.byte	0x78
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF40
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF41
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x2d2
	.byte	0x83
	.uleb128 0xa
	.long	.LASF42
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x2e2
	.byte	0x88
	.uleb128 0xa
	.long	.LASF43
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xd8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF44
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x2ed
	.byte	0x98
	.uleb128 0xa
	.long	.LASF45
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x2f8
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x2cc
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF49
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x2fe
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x126
	.uleb128 0xb
	.long	.LASF245
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x7
	.byte	0x8
	.long	0x2c1
	.uleb128 0x7
	.byte	0x8
	.long	0x126
	.uleb128 0xd
	.long	0x11a
	.long	0x2e2
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2b9
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2e8
	.uleb128 0xc
	.long	.LASF54
	.uleb128 0x7
	.byte	0x8
	.long	0x2f3
	.uleb128 0xd
	.long	0x11a
	.long	0x30e
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x121
	.uleb128 0x8
	.long	0x30e
	.uleb128 0xf
	.long	.LASF55
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x325
	.uleb128 0x7
	.byte	0x8
	.long	0x2ad
	.uleb128 0xf
	.long	.LASF56
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x325
	.uleb128 0xf
	.long	.LASF57
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x325
	.uleb128 0xf
	.long	.LASF58
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x314
	.long	0x35a
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x34f
	.uleb128 0xf
	.long	.LASF59
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x35a
	.uleb128 0xf
	.long	.LASF60
	.byte	0x7
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0x7
	.byte	0x1f
	.byte	0x1a
	.long	0x35a
	.uleb128 0x2
	.long	.LASF62
	.byte	0x2
	.byte	0x8f
	.byte	0x1a
	.long	0x71
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF63
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF64
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x2f
	.byte	0x11
	.long	0xa8
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x3b
	.byte	0x11
	.long	0x84
	.uleb128 0x2
	.long	.LASF67
	.byte	0x8
	.byte	0x40
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x4f
	.byte	0x11
	.long	0x90
	.uleb128 0x9
	.long	.LASF70
	.byte	0x10
	.byte	0x9
	.byte	0xa
	.byte	0x8
	.long	0x3f5
	.uleb128 0xa
	.long	.LASF71
	.byte	0x9
	.byte	0xc
	.byte	0xc
	.long	0xe4
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0x9
	.byte	0x10
	.byte	0x15
	.long	0x108
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF73
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF74
	.uleb128 0x9
	.long	.LASF75
	.byte	0x30
	.byte	0xb
	.byte	0x31
	.byte	0x8
	.long	0x472
	.uleb128 0xa
	.long	.LASF76
	.byte	0xb
	.byte	0x33
	.byte	0x9
	.long	0x114
	.byte	0
	.uleb128 0xa
	.long	.LASF77
	.byte	0xb
	.byte	0x34
	.byte	0x9
	.long	0x114
	.byte	0x8
	.uleb128 0xa
	.long	.LASF78
	.byte	0xb
	.byte	0x36
	.byte	0xb
	.long	0x90
	.byte	0x10
	.uleb128 0xa
	.long	.LASF79
	.byte	0xb
	.byte	0x37
	.byte	0xb
	.long	0x9c
	.byte	0x14
	.uleb128 0xa
	.long	.LASF80
	.byte	0xb
	.byte	0x38
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0xa
	.long	.LASF81
	.byte	0xb
	.byte	0x39
	.byte	0x9
	.long	0x114
	.byte	0x20
	.uleb128 0xa
	.long	.LASF82
	.byte	0xb
	.byte	0x3a
	.byte	0x9
	.long	0x114
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.long	.LASF83
	.byte	0x20
	.byte	0xc
	.byte	0x2a
	.byte	0x8
	.long	0x4b4
	.uleb128 0xa
	.long	.LASF84
	.byte	0xc
	.byte	0x2c
	.byte	0xb
	.long	0x114
	.byte	0
	.uleb128 0xa
	.long	.LASF85
	.byte	0xc
	.byte	0x2d
	.byte	0xb
	.long	0x114
	.byte	0x8
	.uleb128 0xa
	.long	.LASF86
	.byte	0xc
	.byte	0x2e
	.byte	0xd
	.long	0x9c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF87
	.byte	0xc
	.byte	0x2f
	.byte	0xc
	.long	0x4b4
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x114
	.uleb128 0xd
	.long	0x114
	.long	0x4ca
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF88
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x4ba
	.uleb128 0xf
	.long	.LASF89
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF90
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF91
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x4ba
	.uleb128 0xf
	.long	.LASF92
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF93
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF94
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF95
	.byte	0x90
	.byte	0xe
	.byte	0x2e
	.byte	0x8
	.long	0x5f0
	.uleb128 0xa
	.long	.LASF96
	.byte	0xe
	.byte	0x30
	.byte	0xd
	.long	0x84
	.byte	0
	.uleb128 0xa
	.long	.LASF97
	.byte	0xe
	.byte	0x35
	.byte	0xd
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF98
	.byte	0xe
	.byte	0x3d
	.byte	0xf
	.long	0xc0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF99
	.byte	0xe
	.byte	0x3e
	.byte	0xe
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF100
	.byte	0xe
	.byte	0x40
	.byte	0xd
	.long	0x90
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF101
	.byte	0xe
	.byte	0x41
	.byte	0xd
	.long	0x9c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF102
	.byte	0xe
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF103
	.byte	0xe
	.byte	0x45
	.byte	0xd
	.long	0x84
	.byte	0x28
	.uleb128 0xa
	.long	.LASF104
	.byte	0xe
	.byte	0x4a
	.byte	0xd
	.long	0xcc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF105
	.byte	0xe
	.byte	0x4e
	.byte	0x11
	.long	0xf0
	.byte	0x38
	.uleb128 0xa
	.long	.LASF106
	.byte	0xe
	.byte	0x50
	.byte	0x10
	.long	0xfc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF107
	.byte	0xe
	.byte	0x5b
	.byte	0x15
	.long	0x3cd
	.byte	0x48
	.uleb128 0xa
	.long	.LASF108
	.byte	0xe
	.byte	0x5c
	.byte	0x15
	.long	0x3cd
	.byte	0x58
	.uleb128 0xa
	.long	.LASF109
	.byte	0xe
	.byte	0x5d
	.byte	0x15
	.long	0x3cd
	.byte	0x68
	.uleb128 0xa
	.long	.LASF110
	.byte	0xe
	.byte	0x6a
	.byte	0x17
	.long	0x5f5
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x51f
	.uleb128 0xd
	.long	0x108
	.long	0x605
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x605
	.uleb128 0xd
	.long	0x314
	.long	0x61c
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x60c
	.uleb128 0x11
	.long	.LASF111
	.byte	0xf
	.value	0x11e
	.byte	0x1a
	.long	0x61c
	.uleb128 0x11
	.long	.LASF112
	.byte	0xf
	.value	0x11f
	.byte	0x1a
	.long	0x61c
	.uleb128 0x11
	.long	.LASF113
	.byte	0x10
	.value	0x21f
	.byte	0xf
	.long	0x4b4
	.uleb128 0x11
	.long	.LASF114
	.byte	0x10
	.value	0x221
	.byte	0xf
	.long	0x4b4
	.uleb128 0xf
	.long	.LASF115
	.byte	0x11
	.byte	0x24
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF116
	.byte	0x11
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF117
	.byte	0x11
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF118
	.byte	0x11
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF119
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF120
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x114
	.uleb128 0xf
	.long	.LASF121
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x30e
	.uleb128 0xf
	.long	.LASF122
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x13
	.string	"DIR"
	.byte	0x1e
	.byte	0x7f
	.byte	0x1c
	.long	0x6c1
	.uleb128 0xc
	.long	.LASF123
	.uleb128 0x2
	.long	.LASF124
	.byte	0x15
	.byte	0x65
	.byte	0x15
	.long	0x78
	.uleb128 0xd
	.long	0x121
	.long	0x6dd
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x6d2
	.uleb128 0xf
	.long	.LASF125
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x6dd
	.uleb128 0xf
	.long	.LASF126
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x30e
	.uleb128 0x14
	.long	.LASF141
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x74f
	.uleb128 0x15
	.long	.LASF127
	.byte	0
	.uleb128 0x15
	.long	.LASF128
	.byte	0x1
	.uleb128 0x15
	.long	.LASF129
	.byte	0x2
	.uleb128 0x15
	.long	.LASF130
	.byte	0x3
	.uleb128 0x15
	.long	.LASF131
	.byte	0x4
	.uleb128 0x15
	.long	.LASF132
	.byte	0x5
	.uleb128 0x15
	.long	.LASF133
	.byte	0x6
	.uleb128 0x15
	.long	.LASF134
	.byte	0x7
	.uleb128 0x15
	.long	.LASF135
	.byte	0x8
	.uleb128 0x15
	.long	.LASF136
	.byte	0x9
	.uleb128 0x15
	.long	.LASF137
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x6fa
	.uleb128 0x11
	.long	.LASF138
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x35a
	.uleb128 0xd
	.long	0x74f
	.long	0x76c
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x761
	.uleb128 0x11
	.long	.LASF139
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x76c
	.uleb128 0x9
	.long	.LASF140
	.byte	0x10
	.byte	0x19
	.byte	0x19
	.byte	0x8
	.long	0x7a6
	.uleb128 0xa
	.long	.LASF97
	.byte	0x19
	.byte	0x1b
	.byte	0x9
	.long	0x39d
	.byte	0
	.uleb128 0xa
	.long	.LASF96
	.byte	0x19
	.byte	0x1c
	.byte	0x9
	.long	0x3a9
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF142
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x17
	.byte	0x6
	.long	0x7d1
	.uleb128 0x15
	.long	.LASF143
	.byte	0x1
	.uleb128 0x15
	.long	.LASF144
	.byte	0x2
	.uleb128 0x15
	.long	.LASF145
	.byte	0x3
	.uleb128 0x15
	.long	.LASF146
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.long	.LASF147
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x1f
	.byte	0x6
	.long	0x7f6
	.uleb128 0x15
	.long	.LASF148
	.byte	0
	.uleb128 0x15
	.long	.LASF149
	.byte	0x1
	.uleb128 0x15
	.long	.LASF150
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF151
	.byte	0x28
	.byte	0x1a
	.byte	0x2b
	.byte	0x8
	.long	0x85f
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1a
	.byte	0x2e
	.byte	0x12
	.long	0x7d1
	.byte	0
	.uleb128 0xa
	.long	.LASF153
	.byte	0x1a
	.byte	0x31
	.byte	0x8
	.long	0x864
	.byte	0x4
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1a
	.byte	0x35
	.byte	0x13
	.long	0x86b
	.byte	0x8
	.uleb128 0xa
	.long	.LASF155
	.byte	0x1a
	.byte	0x38
	.byte	0x8
	.long	0x864
	.byte	0x10
	.uleb128 0xa
	.long	.LASF156
	.byte	0x1a
	.byte	0x3b
	.byte	0x8
	.long	0x864
	.byte	0x11
	.uleb128 0xa
	.long	.LASF157
	.byte	0x1a
	.byte	0x3e
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0xa
	.long	.LASF158
	.byte	0x1a
	.byte	0x41
	.byte	0x9
	.long	0x114
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	0x7f6
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF159
	.uleb128 0x7
	.byte	0x8
	.long	0x77e
	.uleb128 0xf
	.long	.LASF160
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x606
	.uleb128 0xf
	.long	.LASF161
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF162
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF163
	.byte	0x20
	.byte	0x1c
	.byte	0x1f
	.byte	0x8
	.long	0x8e4
	.uleb128 0xa
	.long	.LASF164
	.byte	0x1c
	.byte	0x21
	.byte	0x7
	.long	0x8e4
	.byte	0
	.uleb128 0xa
	.long	.LASF165
	.byte	0x1c
	.byte	0x22
	.byte	0x7
	.long	0x65
	.byte	0x10
	.uleb128 0xa
	.long	.LASF166
	.byte	0x1c
	.byte	0x23
	.byte	0x10
	.long	0x40
	.byte	0x14
	.uleb128 0xa
	.long	.LASF167
	.byte	0x1c
	.byte	0x24
	.byte	0x10
	.long	0x40
	.byte	0x18
	.uleb128 0xa
	.long	.LASF168
	.byte	0x1c
	.byte	0x25
	.byte	0x8
	.long	0x864
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.long	0x65
	.long	0x8f4
	.uleb128 0xe
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF163
	.byte	0x1c
	.byte	0x27
	.byte	0x17
	.long	0x895
	.uleb128 0x16
	.byte	0x8
	.byte	0x1d
	.byte	0xab
	.byte	0x9
	.long	0x921
	.uleb128 0x17
	.string	"ht"
	.byte	0x1d
	.byte	0xb8
	.byte	0x24
	.long	0x926
	.uleb128 0x18
	.long	.LASF169
	.byte	0x1d
	.byte	0xbe
	.byte	0x2b
	.long	0x931
	.byte	0
	.uleb128 0xc
	.long	.LASF170
	.uleb128 0x7
	.byte	0x8
	.long	0x921
	.uleb128 0xc
	.long	.LASF171
	.uleb128 0x7
	.byte	0x8
	.long	0x92c
	.uleb128 0x19
	.byte	0x80
	.byte	0x1d
	.byte	0x50
	.byte	0x9
	.long	0x9f7
	.uleb128 0xa
	.long	.LASF172
	.byte	0x1d
	.byte	0x51
	.byte	0x19
	.long	0xb03
	.byte	0
	.uleb128 0xa
	.long	.LASF173
	.byte	0x1d
	.byte	0x52
	.byte	0x19
	.long	0xb03
	.byte	0x8
	.uleb128 0xa
	.long	.LASF174
	.byte	0x1d
	.byte	0x53
	.byte	0x1a
	.long	0xb09
	.byte	0x10
	.uleb128 0xa
	.long	.LASF175
	.byte	0x1d
	.byte	0x54
	.byte	0xf
	.long	0x3a9
	.byte	0x18
	.uleb128 0xa
	.long	.LASF176
	.byte	0x1d
	.byte	0x55
	.byte	0xf
	.long	0x114
	.byte	0x20
	.uleb128 0xa
	.long	.LASF177
	.byte	0x1d
	.byte	0x56
	.byte	0xd
	.long	0x65
	.byte	0x28
	.uleb128 0xa
	.long	.LASF178
	.byte	0x1d
	.byte	0x57
	.byte	0xd
	.long	0x65
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF179
	.byte	0x1d
	.byte	0x59
	.byte	0x10
	.long	0x2d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF180
	.byte	0x1d
	.byte	0x5a
	.byte	0x10
	.long	0x2d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF181
	.byte	0x1d
	.byte	0x5b
	.byte	0xf
	.long	0xb2f
	.byte	0x40
	.uleb128 0xa
	.long	.LASF182
	.byte	0x1d
	.byte	0xa0
	.byte	0xd
	.long	0x65
	.byte	0x48
	.uleb128 0xa
	.long	.LASF183
	.byte	0x1d
	.byte	0xa9
	.byte	0x1c
	.long	0x926
	.byte	0x50
	.uleb128 0xa
	.long	.LASF184
	.byte	0x1d
	.byte	0xbf
	.byte	0xb
	.long	0x900
	.byte	0x58
	.uleb128 0xa
	.long	.LASF185
	.byte	0x1d
	.byte	0xc4
	.byte	0x10
	.long	0x8f4
	.byte	0x60
	.byte	0
	.uleb128 0x1a
	.long	.LASF186
	.value	0x100
	.byte	0x1d
	.byte	0xc7
	.byte	0x10
	.long	0xafe
	.uleb128 0xa
	.long	.LASF184
	.byte	0x1d
	.byte	0xc8
	.byte	0x19
	.long	0xb03
	.byte	0
	.uleb128 0xa
	.long	.LASF187
	.byte	0x1d
	.byte	0xc9
	.byte	0x19
	.long	0xb03
	.byte	0x8
	.uleb128 0xa
	.long	.LASF188
	.byte	0x1d
	.byte	0xca
	.byte	0x19
	.long	0xb03
	.byte	0x10
	.uleb128 0xa
	.long	.LASF189
	.byte	0x1d
	.byte	0xcb
	.byte	0xe
	.long	0xb41
	.byte	0x18
	.uleb128 0xa
	.long	.LASF190
	.byte	0x1d
	.byte	0xce
	.byte	0xe
	.long	0x71
	.byte	0x20
	.uleb128 0xa
	.long	.LASF191
	.byte	0x1d
	.byte	0xcf
	.byte	0xf
	.long	0x47
	.byte	0x28
	.uleb128 0xa
	.long	.LASF192
	.byte	0x1d
	.byte	0xd0
	.byte	0xf
	.long	0x114
	.byte	0x30
	.uleb128 0xa
	.long	.LASF176
	.byte	0x1d
	.byte	0xd1
	.byte	0xf
	.long	0x114
	.byte	0x38
	.uleb128 0xa
	.long	.LASF193
	.byte	0x1d
	.byte	0xd2
	.byte	0xd
	.long	0x65
	.byte	0x40
	.uleb128 0xa
	.long	.LASF194
	.byte	0x1d
	.byte	0xd3
	.byte	0xd
	.long	0x65
	.byte	0x44
	.uleb128 0xa
	.long	.LASF179
	.byte	0x1d
	.byte	0xd4
	.byte	0x10
	.long	0x2d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF195
	.byte	0x1d
	.byte	0xd6
	.byte	0xe
	.long	0xb47
	.byte	0x50
	.uleb128 0xa
	.long	.LASF196
	.byte	0x1d
	.byte	0xda
	.byte	0x13
	.long	0x383
	.byte	0x58
	.uleb128 0xa
	.long	.LASF197
	.byte	0x1d
	.byte	0xdc
	.byte	0x10
	.long	0x2d
	.byte	0x60
	.uleb128 0xa
	.long	.LASF198
	.byte	0x1d
	.byte	0xec
	.byte	0x1c
	.long	0x50
	.byte	0x68
	.uleb128 0xa
	.long	.LASF199
	.byte	0x1d
	.byte	0xf0
	.byte	0x1c
	.long	0x50
	.byte	0x6a
	.uleb128 0xa
	.long	.LASF200
	.byte	0x1d
	.byte	0xf6
	.byte	0x1c
	.long	0x50
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF201
	.byte	0x1d
	.byte	0xf8
	.byte	0x15
	.long	0xb4d
	.byte	0x70
	.uleb128 0x1b
	.long	.LASF202
	.byte	0x1d
	.byte	0xf9
	.byte	0xe
	.long	0xb5d
	.value	0x100
	.byte	0
	.uleb128 0x8
	.long	0x9f7
	.uleb128 0x7
	.byte	0x8
	.long	0x9f7
	.uleb128 0x7
	.byte	0x8
	.long	0xb03
	.uleb128 0x1c
	.long	0x65
	.long	0xb23
	.uleb128 0x1d
	.long	0xb23
	.uleb128 0x1d
	.long	0xb23
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb29
	.uleb128 0x7
	.byte	0x8
	.long	0xafe
	.uleb128 0x7
	.byte	0x8
	.long	0xb0f
	.uleb128 0x13
	.string	"FTS"
	.byte	0x1d
	.byte	0xc5
	.byte	0x3
	.long	0x937
	.uleb128 0x7
	.byte	0x8
	.long	0x6b5
	.uleb128 0x7
	.byte	0x8
	.long	0xb35
	.uleb128 0xd
	.long	0x51f
	.long	0xb5d
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x11a
	.long	0xb6c
	.uleb128 0x1e
	.long	0x39
	.byte	0
	.uleb128 0x2
	.long	.LASF203
	.byte	0x1d
	.byte	0xfa
	.byte	0x3
	.long	0x9f7
	.uleb128 0x14
	.long	.LASF204
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.long	0xba9
	.uleb128 0x15
	.long	.LASF205
	.byte	0x2
	.uleb128 0x15
	.long	.LASF206
	.byte	0x3
	.uleb128 0x15
	.long	.LASF207
	.byte	0x4
	.uleb128 0x15
	.long	.LASF208
	.byte	0x5
	.uleb128 0x15
	.long	.LASF209
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.long	.LASF239
	.byte	0x1
	.value	0x1ff
	.byte	0x1
	.long	0x864
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xc88
	.uleb128 0x20
	.long	.LASF210
	.byte	0x1
	.value	0x1ff
	.byte	0x15
	.long	0x4b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF211
	.byte	0x1
	.value	0x1ff
	.byte	0x20
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.string	"uid"
	.byte	0x1
	.value	0x200
	.byte	0x14
	.long	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"gid"
	.byte	0x1
	.value	0x200
	.byte	0x1f
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.long	.LASF212
	.byte	0x1
	.value	0x201
	.byte	0x14
	.long	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF213
	.byte	0x1
	.value	0x201
	.byte	0x28
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.long	.LASF214
	.byte	0x1
	.value	0x202
	.byte	0x29
	.long	0xc88
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"ok"
	.byte	0x1
	.value	0x204
	.byte	0x8
	.long	0x864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x23
	.long	.LASF215
	.byte	0x1
	.value	0x207
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"fts"
	.byte	0x1
	.value	0x20d
	.byte	0x8
	.long	0xb47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.Ldebug_ranges0+0
	.uleb128 0x22
	.string	"ent"
	.byte	0x1
	.value	0x211
	.byte	0xf
	.long	0xc8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x85f
	.uleb128 0x7
	.byte	0x8
	.long	0xb6c
	.uleb128 0x25
	.long	.LASF226
	.byte	0x1
	.value	0x10f
	.byte	0x1
	.long	0x864
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xe5b
	.uleb128 0x21
	.string	"fts"
	.byte	0x1
	.value	0x10f
	.byte	0x19
	.long	0xb47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x21
	.string	"ent"
	.byte	0x1
	.value	0x10f
	.byte	0x26
	.long	0xc8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x21
	.string	"uid"
	.byte	0x1
	.value	0x110
	.byte	0x1a
	.long	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x21
	.string	"gid"
	.byte	0x1
	.value	0x110
	.byte	0x25
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x20
	.long	.LASF212
	.byte	0x1
	.value	0x111
	.byte	0x1a
	.long	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x20
	.long	.LASF213
	.byte	0x1
	.value	0x111
	.byte	0x2e
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x20
	.long	.LASF214
	.byte	0x1
	.value	0x112
	.byte	0x2f
	.long	0xc88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x23
	.long	.LASF216
	.byte	0x1
	.value	0x114
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x23
	.long	.LASF217
	.byte	0x1
	.value	0x115
	.byte	0xf
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x23
	.long	.LASF218
	.byte	0x1
	.value	0x116
	.byte	0x16
	.long	0xe5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x23
	.long	.LASF219
	.byte	0x1
	.value	0x117
	.byte	0xf
	.long	0x51f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x22
	.string	"ok"
	.byte	0x1
	.value	0x118
	.byte	0x8
	.long	0x864
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x23
	.long	.LASF220
	.byte	0x1
	.value	0x119
	.byte	0x8
	.long	0x864
	.uleb128 0x3
	.byte	0x91
	.sleb128 -251
	.uleb128 0x23
	.long	.LASF221
	.byte	0x1
	.value	0x11a
	.byte	0x8
	.long	0x864
	.uleb128 0x3
	.byte	0x91
	.sleb128 -250
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xdcb
	.uleb128 0x22
	.string	"__x"
	.byte	0x1
	.value	0x129
	.byte	0xf
	.long	0xc8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xdf2
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.value	0x1ad
	.byte	0x1b
	.long	0xb78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x27
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x23
	.long	.LASF222
	.byte	0x1
	.value	0x1d9
	.byte	0xc
	.long	0x864
	.uleb128 0x3
	.byte	0x91
	.sleb128 -249
	.uleb128 0x27
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x23
	.long	.LASF223
	.byte	0x1
	.value	0x1e0
	.byte	0x1e
	.long	0x7a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x23
	.long	.LASF224
	.byte	0x1
	.value	0x1e5
	.byte	0x11
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x23
	.long	.LASF225
	.byte	0x1
	.value	0x1e6
	.byte	0x11
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5f0
	.uleb128 0x28
	.long	.LASF227
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.long	0xb78
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xf42
	.uleb128 0x29
	.long	.LASF228
	.byte	0x1
	.byte	0xd4
	.byte	0x17
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x29
	.long	.LASF217
	.byte	0x1
	.byte	0xd4
	.byte	0x2b
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x29
	.long	.LASF229
	.byte	0x1
	.byte	0xd5
	.byte	0x26
	.long	0xe5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2a
	.string	"uid"
	.byte	0x1
	.byte	0xd6
	.byte	0x19
	.long	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.string	"gid"
	.byte	0x1
	.byte	0xd6
	.byte	0x24
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x29
	.long	.LASF212
	.byte	0x1
	.byte	0xd7
	.byte	0x19
	.long	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x29
	.long	.LASF213
	.byte	0x1
	.byte	0xd7
	.byte	0x2d
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF230
	.byte	0x1
	.byte	0xd9
	.byte	0x13
	.long	0xb78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2c
	.string	"st"
	.byte	0x1
	.byte	0xda
	.byte	0xf
	.long	0x51f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.long	.LASF231
	.byte	0x1
	.byte	0xdb
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2c
	.string	"fd"
	.byte	0x1
	.byte	0xdc
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	.LASF232
	.byte	0x1
	.value	0x102
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x2d
	.long	.LASF246
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xfee
	.uleb128 0x29
	.long	.LASF217
	.byte	0x1
	.byte	0x88
	.byte	0x1e
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF222
	.byte	0x1
	.byte	0x88
	.byte	0x37
	.long	0x7a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.long	.LASF233
	.byte	0x1
	.byte	0x89
	.byte	0x1e
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF234
	.byte	0x1
	.byte	0x89
	.byte	0x34
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF235
	.byte	0x1
	.byte	0x8a
	.byte	0x1e
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF83
	.byte	0x1
	.byte	0x8a
	.byte	0x30
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.string	"fmt"
	.byte	0x1
	.byte	0x8c
	.byte	0xf
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF236
	.byte	0x1
	.byte	0x8d
	.byte	0x9
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF237
	.byte	0x1
	.byte	0x8e
	.byte	0x9
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF238
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0x114
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x103e
	.uleb128 0x29
	.long	.LASF235
	.byte	0x1
	.byte	0x6b
	.byte	0x1d
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF83
	.byte	0x1
	.byte	0x6b
	.byte	0x2f
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF237
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.long	.LASF240
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	0x114
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x108f
	.uleb128 0x2a
	.string	"uid"
	.byte	0x1
	.byte	0x5f
	.byte	0x14
	.long	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.string	"buf"
	.byte	0x1
	.byte	0x61
	.byte	0x8
	.long	0x108f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"pwd"
	.byte	0x1
	.byte	0x62
	.byte	0x12
	.long	0x109f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xd
	.long	0x11a
	.long	0x109f
	.uleb128 0xe
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x409
	.uleb128 0x2e
	.long	.LASF241
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x114
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f6
	.uleb128 0x2a
	.string	"gid"
	.byte	0x1
	.byte	0x51
	.byte	0x14
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.string	"buf"
	.byte	0x1
	.byte	0x53
	.byte	0x8
	.long	0x108f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"grp"
	.byte	0x1
	.byte	0x54
	.byte	0x11
	.long	0x10f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x472
	.uleb128 0x2f
	.long	.LASF247
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x112a
	.uleb128 0x29
	.long	.LASF214
	.byte	0x1
	.byte	0x46
	.byte	0x22
	.long	0x112a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x7f6
	.uleb128 0x30
	.long	.LASF248
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF214
	.byte	0x1
	.byte	0x3a
	.byte	0x22
	.long	0x112a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x16
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x5
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2c
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
.LASF150:
	.string	"V_off"
.LASF110:
	.string	"__glibc_reserved"
.LASF109:
	.string	"st_ctim"
.LASF7:
	.string	"size_t"
.LASF222:
	.string	"changed"
.LASF86:
	.string	"gr_gid"
.LASF193:
	.string	"fts_errno"
.LASF211:
	.string	"bit_flags"
.LASF105:
	.string	"st_blksize"
.LASF106:
	.string	"st_blocks"
.LASF53:
	.string	"_IO_codecvt"
.LASF235:
	.string	"user"
.LASF33:
	.string	"_IO_save_end"
.LASF242:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF66:
	.string	"dev_t"
.LASF11:
	.string	"__gid_t"
.LASF236:
	.string	"old_spec"
.LASF223:
	.string	"ch_status"
.LASF180:
	.string	"fts_nitems"
.LASF111:
	.string	"_sys_siglist"
.LASF108:
	.string	"st_mtim"
.LASF191:
	.string	"fts_pointer"
.LASF26:
	.string	"_IO_write_base"
.LASF169:
	.string	"state"
.LASF162:
	.string	"error_one_per_line"
.LASF42:
	.string	"_lock"
.LASF95:
	.string	"stat"
.LASF88:
	.string	"__tzname"
.LASF31:
	.string	"_IO_save_base"
.LASF87:
	.string	"gr_mem"
.LASF232:
	.string	"saved_errno"
.LASF35:
	.string	"_chain"
.LASF225:
	.string	"old_grp"
.LASF157:
	.string	"user_name"
.LASF39:
	.string	"_cur_column"
.LASF58:
	.string	"sys_nerr"
.LASF9:
	.string	"__dev_t"
.LASF68:
	.string	"uid_t"
.LASF60:
	.string	"_sys_nerr"
.LASF185:
	.string	"fts_fd_ring"
.LASF170:
	.string	"hash_table"
.LASF113:
	.string	"__environ"
.LASF75:
	.string	"passwd"
.LASF6:
	.string	"long int"
.LASF81:
	.string	"pw_dir"
.LASF52:
	.string	"_IO_marker"
.LASF218:
	.string	"file_stats"
.LASF199:
	.string	"fts_flags"
.LASF209:
	.string	"RC_error"
.LASF182:
	.string	"fts_options"
.LASF82:
	.string	"pw_shell"
.LASF145:
	.string	"CH_FAILED"
.LASF4:
	.string	"signed char"
.LASF18:
	.string	"__blksize_t"
.LASF172:
	.string	"fts_cur"
.LASF241:
	.string	"gid_to_name"
.LASF69:
	.string	"_IO_FILE"
.LASF90:
	.string	"__timezone"
.LASF54:
	.string	"_IO_wide_data"
.LASF100:
	.string	"st_uid"
.LASF176:
	.string	"fts_path"
.LASF174:
	.string	"fts_array"
.LASF138:
	.string	"quoting_style_args"
.LASF114:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF46:
	.string	"_freeres_list"
.LASF103:
	.string	"st_rdev"
.LASF80:
	.string	"pw_gecos"
.LASF151:
	.string	"Chown_option"
.LASF158:
	.string	"group_name"
.LASF161:
	.string	"error_message_count"
.LASF227:
	.string	"restricted_chown"
.LASF20:
	.string	"__syscall_slong_t"
.LASF159:
	.string	"_Bool"
.LASF248:
	.string	"chopt_init"
.LASF21:
	.string	"char"
.LASF228:
	.string	"cwd_fd"
.LASF245:
	.string	"_IO_lock_t"
.LASF178:
	.string	"fts_cwd_fd"
.LASF93:
	.string	"timezone"
.LASF131:
	.string	"shell_escape_always_quoting_style"
.LASF13:
	.string	"__mode_t"
.LASF23:
	.string	"_IO_read_ptr"
.LASF142:
	.string	"Change_status"
.LASF231:
	.string	"open_flags"
.LASF62:
	.string	"ptrdiff_t"
.LASF143:
	.string	"CH_NOT_APPLIED"
.LASF55:
	.string	"stdin"
.LASF166:
	.string	"ir_front"
.LASF59:
	.string	"sys_errlist"
.LASF34:
	.string	"_markers"
.LASF126:
	.string	"program_name"
.LASF217:
	.string	"file"
.LASF146:
	.string	"CH_NO_CHANGE_REQUESTED"
.LASF243:
	.string	"src/chown-core.c"
.LASF181:
	.string	"fts_compar"
.LASF85:
	.string	"gr_passwd"
.LASF168:
	.string	"ir_empty"
.LASF133:
	.string	"c_maybe_quoting_style"
.LASF220:
	.string	"do_chown"
.LASF119:
	.string	"program_invocation_name"
.LASF43:
	.string	"_offset"
.LASF91:
	.string	"tzname"
.LASF101:
	.string	"st_gid"
.LASF173:
	.string	"fts_child"
.LASF116:
	.string	"optind"
.LASF239:
	.string	"chown_files"
.LASF123:
	.string	"__dirstream"
.LASF237:
	.string	"spec"
.LASF65:
	.string	"ino_t"
.LASF136:
	.string	"clocale_quoting_style"
.LASF160:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF247:
	.string	"chopt_free"
.LASF167:
	.string	"ir_back"
.LASF230:
	.string	"status"
.LASF37:
	.string	"_flags2"
.LASF104:
	.string	"st_size"
.LASF25:
	.string	"_IO_read_base"
.LASF234:
	.string	"old_group"
.LASF50:
	.string	"_unused2"
.LASF246:
	.string	"describe_change"
.LASF83:
	.string	"group"
.LASF38:
	.string	"_old_offset"
.LASF19:
	.string	"__blkcnt_t"
.LASF128:
	.string	"shell_quoting_style"
.LASF12:
	.string	"__ino_t"
.LASF63:
	.string	"long long int"
.LASF194:
	.string	"fts_symfd"
.LASF219:
	.string	"stat_buf"
.LASF121:
	.string	"Version"
.LASF122:
	.string	"exit_failure"
.LASF73:
	.string	"_gl_cxxalias_dummy"
.LASF132:
	.string	"c_quoting_style"
.LASF28:
	.string	"_IO_write_end"
.LASF203:
	.string	"FTSENT"
.LASF240:
	.string	"uid_to_name"
.LASF112:
	.string	"sys_siglist"
.LASF171:
	.string	"cycle_check_state"
.LASF205:
	.string	"RC_ok"
.LASF187:
	.string	"fts_parent"
.LASF8:
	.string	"__intmax_t"
.LASF29:
	.string	"_IO_buf_base"
.LASF1:
	.string	"unsigned int"
.LASF125:
	.string	"version_etc_copyright"
.LASF139:
	.string	"quoting_style_vals"
.LASF127:
	.string	"literal_quoting_style"
.LASF208:
	.string	"RC_do_ordinary_chown"
.LASF102:
	.string	"__pad0"
.LASF78:
	.string	"pw_uid"
.LASF48:
	.string	"__pad5"
.LASF156:
	.string	"force_silent"
.LASF22:
	.string	"_flags"
.LASF188:
	.string	"fts_link"
.LASF49:
	.string	"_mode"
.LASF44:
	.string	"_codecvt"
.LASF98:
	.string	"st_nlink"
.LASF201:
	.string	"fts_statp"
.LASF124:
	.string	"intmax_t"
.LASF64:
	.string	"long double"
.LASF51:
	.string	"FILE"
.LASF96:
	.string	"st_dev"
.LASF70:
	.string	"timespec"
.LASF233:
	.string	"old_user"
.LASF212:
	.string	"required_uid"
.LASF118:
	.string	"optopt"
.LASF135:
	.string	"locale_quoting_style"
.LASF74:
	.string	"long long unsigned int"
.LASF15:
	.string	"__off_t"
.LASF189:
	.string	"fts_dirp"
.LASF141:
	.string	"quoting_style"
.LASF84:
	.string	"gr_name"
.LASF120:
	.string	"program_invocation_short_name"
.LASF221:
	.string	"symlink_changed"
.LASF47:
	.string	"_freeres_buf"
.LASF177:
	.string	"fts_rfd"
.LASF117:
	.string	"opterr"
.LASF244:
	.string	"/root/coreutils"
.LASF17:
	.string	"__time_t"
.LASF186:
	.string	"_ftsent"
.LASF163:
	.string	"I_ring"
.LASF144:
	.string	"CH_SUCCEEDED"
.LASF32:
	.string	"_IO_backup_base"
.LASF41:
	.string	"_shortbuf"
.LASF147:
	.string	"Verbosity"
.LASF79:
	.string	"pw_gid"
.LASF226:
	.string	"change_file_owner"
.LASF148:
	.string	"V_high"
.LASF129:
	.string	"shell_always_quoting_style"
.LASF140:
	.string	"dev_ino"
.LASF16:
	.string	"__off64_t"
.LASF184:
	.string	"fts_cycle"
.LASF195:
	.string	"fts_fts"
.LASF200:
	.string	"fts_instr"
.LASF134:
	.string	"escape_quoting_style"
.LASF30:
	.string	"_IO_buf_end"
.LASF190:
	.string	"fts_number"
.LASF179:
	.string	"fts_pathlen"
.LASF215:
	.string	"stat_flags"
.LASF57:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF153:
	.string	"recurse"
.LASF229:
	.string	"orig_st"
.LASF72:
	.string	"tv_nsec"
.LASF152:
	.string	"verbosity"
.LASF130:
	.string	"shell_escape_quoting_style"
.LASF154:
	.string	"root_dev_ino"
.LASF40:
	.string	"_vtable_offset"
.LASF198:
	.string	"fts_info"
.LASF61:
	.string	"_sys_errlist"
.LASF77:
	.string	"pw_passwd"
.LASF183:
	.string	"fts_leaf_optimization_works_ht"
.LASF213:
	.string	"required_gid"
.LASF155:
	.string	"affect_symlink_referent"
.LASF214:
	.string	"chopt"
.LASF89:
	.string	"__daylight"
.LASF196:
	.string	"fts_level"
.LASF204:
	.string	"RCH_status"
.LASF76:
	.string	"pw_name"
.LASF99:
	.string	"st_mode"
.LASF10:
	.string	"__uid_t"
.LASF175:
	.string	"fts_dev"
.LASF24:
	.string	"_IO_read_end"
.LASF94:
	.string	"getdate_err"
.LASF216:
	.string	"file_full_name"
.LASF192:
	.string	"fts_accpath"
.LASF36:
	.string	"_fileno"
.LASF45:
	.string	"_wide_data"
.LASF115:
	.string	"optarg"
.LASF206:
	.string	"RC_excluded"
.LASF3:
	.string	"short unsigned int"
.LASF56:
	.string	"stdout"
.LASF238:
	.string	"user_group_str"
.LASF210:
	.string	"files"
.LASF27:
	.string	"_IO_write_ptr"
.LASF197:
	.string	"fts_namelen"
.LASF149:
	.string	"V_changes_only"
.LASF92:
	.string	"daylight"
.LASF97:
	.string	"st_ino"
.LASF14:
	.string	"__nlink_t"
.LASF224:
	.string	"old_usr"
.LASF202:
	.string	"fts_name"
.LASF207:
	.string	"RC_inode_changed"
.LASF67:
	.string	"gid_t"
.LASF164:
	.string	"ir_data"
.LASF71:
	.string	"tv_sec"
.LASF137:
	.string	"custom_quoting_style"
.LASF107:
	.string	"st_atim"
.LASF165:
	.string	"ir_default_val"
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
