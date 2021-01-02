	.file	"remove.c"
	.text
.Ltext0:
	.type	dot_or_dotdot, @function
dot_or_dotdot:
.LFB28:
	.file 1 "src/system.h"
	.loc 1 266 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 267 16
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 267 6
	cmpb	$46, %al
	jne	.L2
.LBB2:
	.loc 1 269 38
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 269 27
	cmpb	$46, %al
	jne	.L3
	.loc 1 269 27 is_stmt 0 discriminator 1
	movl	$2, %edx
	jmp	.L4
.L3:
	.loc 1 269 27 discriminator 2
	movl	$1, %edx
.L4:
	.loc 1 269 27 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 269 12 is_stmt 1 discriminator 4
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	.loc 1 270 21 discriminator 4
	cmpb	$0, -1(%rbp)
	je	.L5
	.loc 1 270 21 is_stmt 0 discriminator 2
	cmpb	$47, -1(%rbp)
	jne	.L6
.L5:
	.loc 1 270 21 discriminator 3
	movl	$1, %eax
	jmp	.L7
.L6:
	.loc 1 270 21 discriminator 4
	movl	$0, %eax
.L7:
	.loc 1 270 21 discriminator 6
	andl	$1, %eax
	jmp	.L8
.L2:
.LBE2:
	.loc 1 273 12 is_stmt 1
	movl	$0, %eax
.L8:
	.loc 1 274 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	dot_or_dotdot, .-dot_or_dotdot
	.type	readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
.LFB29:
	.loc 1 279 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L13:
.LBB3:
	.loc 1 282 33
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -8(%rbp)
	.loc 1 283 10
	cmpq	$0, -8(%rbp)
	je	.L10
	.loc 1 283 44 discriminator 1
	movq	-8(%rbp), %rax
	addq	$19, %rax
	.loc 1 283 27 discriminator 1
	movq	%rax, %rdi
	call	dot_or_dotdot
	.loc 1 283 25 discriminator 1
	xorl	$1, %eax
	.loc 1 283 22 discriminator 1
	testb	%al, %al
	je	.L13
.L10:
	.loc 1 284 16
	movq	-8(%rbp), %rax
.LBE3:
	.loc 1 286 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	readdir_ignoring_dot_and_dotdot, .-readdir_ignoring_dot_and_dotdot
	.type	is_empty_dir, @function
is_empty_dir:
.LFB30:
	.loc 1 293 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 297 12
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	$198912, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	openat@PLT
	movl	%eax, -24(%rbp)
	.loc 1 301 6
	cmpl	$0, -24(%rbp)
	jns	.L16
	.loc 1 302 12
	movl	$0, %eax
	jmp	.L17
.L16:
	.loc 1 304 10
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	fdopendir@PLT
	movq	%rax, -16(%rbp)
	.loc 1 305 6
	cmpq	$0, -16(%rbp)
	jne	.L18
	.loc 1 307 7
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 1 308 14
	movl	$0, %eax
	jmp	.L17
.L18:
	.loc 1 311 3
	call	__errno_location@PLT
	.loc 1 311 9
	movl	$0, (%rax)
	.loc 1 312 8
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	readdir_ignoring_dot_and_dotdot
	movq	%rax, -8(%rbp)
	.loc 1 313 17
	call	__errno_location@PLT
	.loc 1 313 15
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 314 3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	.loc 1 315 3
	call	__errno_location@PLT
	.loc 1 315 9
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 316 6
	cmpq	$0, -8(%rbp)
	je	.L19
	.loc 1 317 12
	movl	$0, %eax
	jmp	.L17
.L19:
	.loc 1 318 34
	cmpl	$0, -20(%rbp)
	sete	%al
.L17:
	.loc 1 319 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	is_empty_dir, .-is_empty_dir
	.type	cache_fstatat, @function
cache_fstatat:
.LFB46:
	.file 2 "src/remove.c"
	.loc 2 71 1
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
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	.loc 2 72 9
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 72 6
	cmpq	$-1, %rax
	jne	.L21
	.loc 2 72 28 discriminator 1
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	fstatat@PLT
	.loc 2 72 25 discriminator 1
	testl	%eax, %eax
	je	.L21
	.loc 2 74 19
	movq	-40(%rbp), %rax
	movq	$-2, 48(%rax)
	.loc 2 75 20
	call	__errno_location@PLT
	movl	(%rax), %eax
	movslq	%eax, %rdx
	.loc 2 75 18
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
.L21:
	.loc 2 77 14
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 77 6
	testq	%rax, %rax
	js	.L22
	.loc 2 78 12
	movl	$0, %eax
	jmp	.L23
.L22:
	.loc 2 79 19
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	.loc 2 79 3
	call	__errno_location@PLT
	.loc 2 79 11
	movl	%ebx, %edx
	.loc 2 79 9
	movl	%edx, (%rax)
	.loc 2 80 10
	movl	$-1, %eax
.L23:
	.loc 2 81 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	cache_fstatat, .-cache_fstatat
	.type	cache_stat_init, @function
cache_stat_init:
.LFB47:
	.loc 2 86 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 87 15
	movq	-8(%rbp), %rax
	movq	$-1, 48(%rax)
	.loc 2 88 10
	movq	-8(%rbp), %rax
	.loc 2 89 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	cache_stat_init, .-cache_stat_init
	.type	write_protected_non_symlink, @function
write_protected_non_symlink:
.LFB48:
	.loc 2 99 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 100 7
	call	can_write_any_file@PLT
	.loc 2 100 6
	testb	%al, %al
	je	.L27
	.loc 2 101 12
	movl	$0, %eax
	jmp	.L28
.L27:
	.loc 2 102 7
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$256, %ecx
	movl	%eax, %edi
	call	cache_fstatat
	.loc 2 102 6
	testl	%eax, %eax
	je	.L29
	.loc 2 103 12
	movl	$-1, %eax
	jmp	.L28
.L29:
	.loc 2 104 7
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 2 104 6
	cmpl	$40960, %eax
	jne	.L30
	.loc 2 105 12
	movl	$0, %eax
	jmp	.L28
.L30:
	.loc 2 155 9
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$512, %ecx
	movl	$2, %edx
	movl	%eax, %edi
	call	faccessat@PLT
	.loc 2 155 8
	testl	%eax, %eax
	jne	.L31
	.loc 2 156 14
	movl	$0, %eax
	jmp	.L28
.L31:
	.loc 2 158 12
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 158 32
	cmpl	$13, %eax
	jne	.L32
	.loc 2 158 32 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L28
.L32:
	.loc 2 158 32 discriminator 2
	movl	$-1, %eax
.L28:
	.loc 2 160 1 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	write_protected_non_symlink, .-write_protected_non_symlink
	.section	.rodata
.LC0:
	.string	"cannot remove %s"
	.align 8
.LC1:
	.string	"%s: descend into write-protected directory %s? "
	.align 8
.LC2:
	.string	"%s: descend into directory %s? "
	.align 8
.LC3:
	.string	"%s: remove write-protected %s %s? "
.LC4:
	.string	"%s: remove %s %s? "
	.text
	.type	prompt, @function
prompt:
.LFB49:
	.loc 2 179 1
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
	movl	%edx, %eax
	movq	%rcx, -272(%rbp)
	movl	%r8d, -264(%rbp)
	movq	%r9, -280(%rbp)
	movb	%al, -260(%rbp)
	.loc 2 179 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 180 7
	movq	-248(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -212(%rbp)
	.loc 2 181 15
	movq	-256(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -208(%rbp)
	.loc 2 182 15
	movq	-256(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -200(%rbp)
	.loc 2 183 6
	cmpq	$0, -280(%rbp)
	je	.L35
	.loc 2 184 17
	movq	-280(%rbp), %rax
	movl	$2, (%rax)
.L35:
	.loc 2 187 16
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 2 188 3
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	cache_stat_init
	.loc 2 190 37
	cmpb	$0, -260(%rbp)
	je	.L36
	.loc 2 190 37 is_stmt 0 discriminator 1
	movl	$4, %eax
	jmp	.L37
.L36:
	.loc 2 190 37 discriminator 2
	movl	$0, %eax
.L37:
	.loc 2 190 7 is_stmt 1 discriminator 4
	movl	%eax, -224(%rbp)
	.loc 2 191 7 discriminator 4
	movl	$0, -220(%rbp)
	.loc 2 193 8 discriminator 4
	movb	$0, -225(%rbp)
	.loc 2 194 6 discriminator 4
	cmpq	$0, -280(%rbp)
	je	.L38
	.loc 2 196 18
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	is_empty_dir
	movb	%al, -225(%rbp)
	.loc 2 197 38
	cmpb	$0, -225(%rbp)
	je	.L39
	.loc 2 197 38 is_stmt 0 discriminator 1
	movl	$4, %edx
	jmp	.L40
.L39:
	.loc 2 197 38 discriminator 2
	movl	$3, %edx
.L40:
	.loc 2 197 19 is_stmt 1 discriminator 4
	movq	-280(%rbp), %rax
	movl	%edx, (%rax)
.L38:
	.loc 2 203 10
	movq	-256(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 203 6
	testq	%rax, %rax
	je	.L41
	.loc 2 204 12
	movl	$3, %eax
	jmp	.L64
.L41:
	.loc 2 206 8
	movq	-272(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 206 6
	cmpl	$5, %eax
	jne	.L43
	.loc 2 207 12
	movl	$2, %eax
	jmp	.L64
.L43:
	.loc 2 209 7
	movl	$0, -216(%rbp)
	.loc 2 210 9
	movq	-272(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 210 7
	xorl	$1, %eax
	.loc 2 210 6
	testb	%al, %al
	je	.L44
	.loc 2 211 13
	movq	-272(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 211 7
	cmpl	$3, %eax
	je	.L45
	.loc 2 211 46 discriminator 1
	movq	-272(%rbp), %rax
	movzbl	25(%rax), %eax
	.loc 2 211 42 discriminator 1
	testb	%al, %al
	je	.L44
.L45:
	.loc 2 212 7
	cmpl	$10, -224(%rbp)
	je	.L44
	.loc 2 214 25
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rcx
	movl	-212(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write_protected_non_symlink
	movl	%eax, -220(%rbp)
	.loc 2 215 18
	call	__errno_location@PLT
	.loc 2 215 16
	movl	(%rax), %eax
	movl	%eax, -216(%rbp)
.L44:
	.loc 2 218 6
	cmpl	$0, -220(%rbp)
	jne	.L46
	.loc 2 218 27 discriminator 1
	movq	-272(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 218 23 discriminator 1
	cmpl	$3, %eax
	jne	.L47
.L46:
.LBB4:
	.loc 2 220 10
	cmpl	$0, -220(%rbp)
	js	.L48
	.loc 2 220 32 discriminator 1
	cmpl	$0, -224(%rbp)
	jne	.L48
	.loc 2 222 15
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rsi
	movl	-212(%rbp), %eax
	movl	$256, %ecx
	movl	%eax, %edi
	call	cache_fstatat
	.loc 2 222 14
	testl	%eax, %eax
	jne	.L49
	.loc 2 224 19
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 2 224 18
	cmpl	$40960, %eax
	jne	.L50
	.loc 2 225 29
	movl	$10, -224(%rbp)
	jmp	.L48
.L50:
	.loc 2 226 24
	movq	-192(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 2 226 23
	cmpl	$16384, %eax
	jne	.L48
	.loc 2 227 29
	movl	$4, -224(%rbp)
	jmp	.L48
.L49:
	.loc 2 233 31
	movl	$-1, -220(%rbp)
	.loc 2 234 26
	call	__errno_location@PLT
	.loc 2 234 24
	movl	(%rax), %eax
	movl	%eax, -216(%rbp)
.L48:
	.loc 2 238 10
	cmpl	$0, -220(%rbp)
	js	.L66
	.loc 2 239 9
	cmpl	$4, -224(%rbp)
	je	.L52
	cmpl	$10, -224(%rbp)
	jne	.L51
	.loc 2 243 18
	movq	-272(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 243 16
	cmpl	$3, %eax
	je	.L67
	.loc 2 244 22
	movl	$2, %eax
	jmp	.L64
.L52:
	.loc 2 251 22
	movq	-272(%rbp), %rax
	movzbl	9(%rax), %eax
	.loc 2 251 21
	xorl	$1, %eax
	.loc 2 251 16
	testb	%al, %al
	je	.L68
	.loc 2 251 39 discriminator 1
	movq	-272(%rbp), %rax
	movzbl	10(%rax), %eax
	.loc 2 251 38 discriminator 1
	xorl	$1, %eax
	.loc 2 251 18 discriminator 1
	testb	%al, %al
	jne	.L55
	.loc 2 251 66 discriminator 2
	movzbl	-225(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L68
.L55:
	.loc 2 253 33
	movl	$-1, -220(%rbp)
	.loc 2 254 26
	movl	$21, -216(%rbp)
	.loc 2 256 13
	jmp	.L68
.L66:
	.loc 2 259 7
	nop
	jmp	.L51
.L67:
	.loc 2 245 13
	nop
	jmp	.L51
.L68:
	.loc 2 256 13
	nop
.L51:
	.loc 2 259 33
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, -184(%rbp)
	.loc 2 261 10
	cmpl	$0, -220(%rbp)
	jns	.L56
	.loc 2 263 31
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 263 11
	movq	-184(%rbp), %rdx
	movl	-216(%rbp), %eax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 264 18
	movl	$4, %eax
	jmp	.L64
.L56:
	.loc 2 268 10
	cmpl	$4, -224(%rbp)
	jne	.L57
	.loc 2 269 11
	cmpl	$2, -264(%rbp)
	jne	.L57
	.loc 2 270 14
	movzbl	-225(%rbp), %eax
	xorl	$1, %eax
	.loc 2 270 11
	testb	%al, %al
	je	.L57
	.loc 2 271 9
	movq	program_name(%rip), %rbx
	cmpl	$0, -220(%rbp)
	je	.L58
	.loc 2 273 21
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	jmp	.L59
.L58:
	.loc 2 274 21
	leaq	.LC2(%rip), %rdi
	call	gettext@PLT
.L59:
	.loc 2 271 9
	movq	stderr(%rip), %rdi
	movq	-184(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L60
.L57:
	.loc 2 278 15
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rsi
	movl	-212(%rbp), %eax
	movl	$256, %ecx
	movl	%eax, %edi
	call	cache_fstatat
	.loc 2 278 14
	testl	%eax, %eax
	je	.L61
	.loc 2 280 32
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 280 25
	call	__errno_location@PLT
	.loc 2 280 15
	movl	(%rax), %eax
	movq	-184(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 281 22
	movl	$4, %eax
	jmp	.L64
.L61:
	.loc 2 284 11
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	file_type@PLT
	movq	%rax, %r12
	movq	program_name(%rip), %rbx
	cmpl	$0, -220(%rbp)
	je	.L62
	.loc 2 291 23
	leaq	.LC3(%rip), %rdi
	call	gettext@PLT
	jmp	.L63
.L62:
	.loc 2 292 23
	leaq	.LC4(%rip), %rdi
	call	gettext@PLT
.L63:
	.loc 2 284 11
	movq	stderr(%rip), %rdi
	movq	-184(%rbp), %rdx
	movq	%rdx, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movl	$0, %eax
	call	fprintf@PLT
.L60:
	.loc 2 296 12
	call	yesno@PLT
	.loc 2 296 11
	xorl	$1, %eax
	.loc 2 296 10
	testb	%al, %al
	je	.L47
	.loc 2 297 16
	movl	$3, %eax
	jmp	.L64
.L47:
.LBE4:
	.loc 2 299 10
	movl	$2, %eax
.L64:
	.loc 2 300 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L65
	.loc 2 300 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L65:
	addq	$272, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	prompt, .-prompt
	.type	nonexistent_file_errno, @function
nonexistent_file_errno:
.LFB50:
	.loc 2 307 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 320 3
	cmpl	$84, -4(%rbp)
	je	.L70
	cmpl	$84, -4(%rbp)
	jg	.L71
	cmpl	$22, -4(%rbp)
	je	.L70
	cmpl	$22, -4(%rbp)
	jg	.L71
	cmpl	$2, -4(%rbp)
	je	.L70
	cmpl	$20, -4(%rbp)
	jne	.L71
.L70:
	.loc 2 326 14
	movl	$1, %eax
	jmp	.L72
.L71:
	.loc 2 328 14
	movl	$0, %eax
.L72:
	.loc 2 330 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	nonexistent_file_errno, .-nonexistent_file_errno
	.type	ignorable_missing, @function
ignorable_missing:
.LFB51:
	.loc 2 335 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 2 336 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 336 34
	testb	%al, %al
	je	.L74
	.loc 2 336 37 discriminator 1
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	nonexistent_file_errno
	.loc 2 336 34 discriminator 1
	testb	%al, %al
	je	.L74
	.loc 2 336 34 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L75
.L74:
	.loc 2 336 34 discriminator 4
	movl	$0, %eax
.L75:
	.loc 2 336 34 discriminator 6
	andl	$1, %eax
	.loc 2 337 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	ignorable_missing, .-ignorable_missing
	.type	fts_skip_tree, @function
fts_skip_tree:
.LFB52:
	.loc 2 342 1
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
	.loc 2 343 3
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_fts_set@PLT
.LBB5:
	.loc 2 345 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -8(%rbp)
.LBE5:
	.loc 2 346 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	fts_skip_tree, .-fts_skip_tree
	.type	mark_ancestor_dirs, @function
mark_ancestor_dirs:
.LFB53:
	.loc 2 353 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 355 10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 355 3
	jmp	.L79
.L82:
	.loc 2 357 12
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 357 10
	testq	%rax, %rax
	jne	.L83
	.loc 2 359 21 discriminator 2
	movq	-8(%rbp), %rax
	movq	$1, 32(%rax)
	.loc 2 355 62 discriminator 2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L79:
	.loc 2 355 47 discriminator 1
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	.loc 2 355 3 discriminator 1
	testq	%rax, %rax
	jns	.L82
	.loc 2 361 1
	jmp	.L84
.L83:
	.loc 2 358 9
	nop
.L84:
	.loc 2 361 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	mark_ancestor_dirs, .-mark_ancestor_dirs
	.section	.rodata
.LC5:
	.string	"removed directory %s\n"
.LC6:
	.string	"removed %s\n"
	.text
	.type	excise, @function
excise:
.LFB54:
	.loc 2 368 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movl	%ecx, %eax
	movb	%al, -220(%rbp)
	.loc 2 368 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 369 36
	cmpb	$0, -220(%rbp)
	je	.L86
	.loc 2 369 36 is_stmt 0 discriminator 1
	movl	$512, %eax
	jmp	.L87
.L86:
	.loc 2 369 36 discriminator 2
	movl	$0, %eax
.L87:
	.loc 2 369 7 is_stmt 1 discriminator 4
	movl	%eax, -180(%rbp)
	.loc 2 370 37 discriminator 4
	movq	-208(%rbp), %rax
	movq	48(%rax), %rcx
	.loc 2 370 7 discriminator 4
	movq	-200(%rbp), %rax
	movl	44(%rax), %eax
	movl	-180(%rbp), %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	unlinkat@PLT
	.loc 2 370 6 discriminator 4
	testl	%eax, %eax
	jne	.L88
	.loc 2 372 12
	movq	-216(%rbp), %rax
	movzbl	26(%rax), %eax
	.loc 2 372 10
	testb	%al, %al
	je	.L89
	.loc 2 376 42
	movq	-208(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 374 11
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	cmpb	$0, -220(%rbp)
	je	.L90
	.loc 2 375 22
	leaq	.LC5(%rip), %rdi
	call	gettext@PLT
	jmp	.L91
.L90:
	.loc 2 376 22
	leaq	.LC6(%rip), %rdi
	call	gettext@PLT
.L91:
	.loc 2 374 11
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L89:
	.loc 2 378 14
	movl	$2, %eax
	jmp	.L92
.L88:
	.loc 2 385 7
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 385 6
	cmpl	$30, %eax
	jne	.L93
.LBB6:
	.loc 2 388 44
	movq	-208(%rbp), %rax
	movq	48(%rax), %rcx
	.loc 2 388 15
	movq	-200(%rbp), %rax
	movl	44(%rax), %eax
	leaq	-176(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lstatat@PLT
	.loc 2 388 10
	testl	%eax, %eax
	je	.L94
	.loc 2 389 27 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 388 12 discriminator 1
	cmpl	$2, %eax
	je	.L93
.L94:
	.loc 2 390 9
	call	__errno_location@PLT
	.loc 2 390 15
	movl	$30, (%rax)
.L93:
.LBE6:
	.loc 2 393 29
	call	__errno_location@PLT
	.loc 2 393 7
	movl	(%rax), %edx
	movq	-216(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ignorable_missing
	.loc 2 393 6
	testb	%al, %al
	je	.L96
	.loc 2 394 12
	movl	$2, %eax
	jmp	.L92
.L96:
	.loc 2 401 10
	movq	-208(%rbp), %rax
	movzwl	104(%rax), %eax
	.loc 2 401 6
	cmpw	$4, %ax
	jne	.L97
	.loc 2 402 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 402 7
	cmpl	$39, %eax
	je	.L98
	.loc 2 402 33 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 402 30 discriminator 1
	cmpl	$21, %eax
	je	.L98
	.loc 2 402 52 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 402 49 discriminator 2
	cmpl	$20, %eax
	je	.L98
	.loc 2 403 14
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 403 11
	cmpl	$17, %eax
	jne	.L97
.L98:
	.loc 2 404 14
	movq	-208(%rbp), %rax
	movl	64(%rax), %eax
	.loc 2 404 7
	cmpl	$1, %eax
	je	.L99
	.loc 2 404 41 discriminator 1
	movq	-208(%rbp), %rax
	movl	64(%rax), %eax
	.loc 2 404 35 discriminator 1
	cmpl	$13, %eax
	jne	.L97
.L99:
	.loc 2 405 5
	call	__errno_location@PLT
	.loc 2 405 16
	movq	-208(%rbp), %rdx
	movl	64(%rdx), %edx
	.loc 2 405 11
	movl	%edx, (%rax)
.L97:
	.loc 2 406 43
	movq	-208(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 406 3
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 406 20
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 406 13
	call	__errno_location@PLT
	.loc 2 406 3
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 407 3
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	mark_ancestor_dirs
	.loc 2 408 10
	movl	$4, %eax
.L92:
	.loc 2 409 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L100
	call	__stack_chk_fail@PLT
.L100:
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	excise, .-excise
	.section	.rodata
.LC7:
	.string	".."
.LC8:
	.string	"."
	.align 8
.LC9:
	.string	"refusing to remove %s or %s directory: skipping %s"
.LC10:
	.string	"/"
	.align 8
.LC11:
	.string	"it is dangerous to operate recursively on %s"
	.align 8
.LC12:
	.string	"it is dangerous to operate recursively on %s (same as %s)"
	.align 8
.LC13:
	.string	"use --no-preserve-root to override this failsafe"
	.align 8
.LC14:
	.string	"failed to stat %s: skipping %s"
	.align 8
.LC15:
	.string	"skipping %s, since it's on a different device"
	.align 8
.LC16:
	.string	"and --preserve-root=all is in effect"
	.align 8
.LC17:
	.string	"WARNING: Circular directory structure.\nThis almost certainly means that you have a corrupted file system.\nNOTIFY YOUR SYSTEM MANAGER.\nThe following directory is part of the cycle:\n  %s\n"
.LC18:
	.string	"traversal failed: %s"
	.align 8
.LC19:
	.string	"unexpected failure: fts_info=%d: %s\nplease report to %s"
.LC20:
	.string	"bug-coreutils@gnu.org"
	.text
	.type	rm_fts, @function
rm_fts:
.LFB55:
	.loc 2 419 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	.loc 2 419 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 2 420 14
	movq	-240(%rbp), %rax
	movzwl	104(%rax), %eax
	movzwl	%ax, %eax
	cmpl	$13, %eax
	ja	.L102
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L104(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L104(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L104:
	.long	.L102-.L104
	.long	.L107-.L104
	.long	.L106-.L104
	.long	.L103-.L104
	.long	.L103-.L104
	.long	.L102-.L104
	.long	.L103-.L104
	.long	.L105-.L104
	.long	.L103-.L104
	.long	.L102-.L104
	.long	.L103-.L104
	.long	.L103-.L104
	.long	.L103-.L104
	.long	.L103-.L104
	.text
.L107:
	.loc 2 423 14
	movq	-248(%rbp), %rax
	movzbl	9(%rax), %eax
	.loc 2 423 11
	xorl	$1, %eax
	.loc 2 423 10
	testb	%al, %al
	je	.L108
	.loc 2 424 17
	movq	-248(%rbp), %rax
	movzbl	10(%rax), %eax
	.loc 2 424 16
	xorl	$1, %eax
	.loc 2 424 11
	testb	%al, %al
	jne	.L109
	.loc 2 425 53 discriminator 1
	movq	-240(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 425 19 discriminator 1
	movq	-232(%rbp), %rax
	movl	44(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	is_empty_dir
	.loc 2 425 16 discriminator 1
	xorl	$1, %eax
	.loc 2 424 14 discriminator 1
	testb	%al, %al
	je	.L108
.L109:
.LBB7:
	.loc 2 431 22
	movq	-248(%rbp), %rax
	movzbl	10(%rax), %eax
	.loc 2 431 61
	testb	%al, %al
	je	.L110
	.loc 2 431 61 is_stmt 0 discriminator 1
	movl	$39, %eax
	jmp	.L111
.L110:
	.loc 2 431 61 discriminator 2
	movl	$21, %eax
.L111:
	.loc 2 431 15 is_stmt 1 discriminator 4
	movl	%eax, -204(%rbp)
	.loc 2 432 49 discriminator 4
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 432 11 discriminator 4
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 432 26 discriminator 4
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 432 11 discriminator 4
	movl	-204(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 433 11 discriminator 4
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	mark_ancestor_dirs
	.loc 2 434 11 discriminator 4
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fts_skip_tree
	.loc 2 435 18 discriminator 4
	movl	$4, %eax
	jmp	.L112
.L108:
.LBE7:
	.loc 2 439 14
	movq	-240(%rbp), %rax
	movq	88(%rax), %rax
	.loc 2 439 10
	testq	%rax, %rax
	jne	.L113
	.loc 2 444 49
	movq	-240(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 444 30
	movq	%rax, %rdi
	call	last_component@PLT
	.loc 2 444 15
	movq	%rax, %rdi
	call	dot_or_dotdot
	.loc 2 444 14
	testb	%al, %al
	je	.L114
	.loc 2 449 22
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 446 15
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$2, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r13
	leaq	.LC7(%rip), %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	leaq	.LC8(%rip), %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 2 447 22
	leaq	.LC9(%rip), %rdi
	call	gettext@PLT
	.loc 2 446 15
	movq	%r13, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 450 15
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fts_skip_tree
	.loc 2 451 22
	movl	$4, %eax
	jmp	.L112
.L114:
	.loc 2 457 15
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 457 14
	testq	%rax, %rax
	je	.L115
	.loc 2 457 15 discriminator 1
	movq	-240(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L115
	.loc 2 457 15 is_stmt 0 discriminator 2
	movq	-240(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L115
	.loc 2 459 15 is_stmt 1
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L116
	.loc 2 459 15 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC11(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L117
.L116:
	.loc 2 459 15 discriminator 2
	leaq	.LC10(%rip), %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	leaq	.LC12(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L117:
	.loc 2 459 15 discriminator 4
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 460 15 is_stmt 1 discriminator 4
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fts_skip_tree
	.loc 2 461 22 discriminator 4
	movl	$4, %eax
	jmp	.L112
.L115:
	.loc 2 467 16
	movq	-248(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 2 467 14
	testb	%al, %al
	je	.L113
.LBB8:
	.loc 2 469 20
	movb	$0, -218(%rbp)
	.loc 2 470 51
	movq	-240(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 470 30
	movl	$0, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -200(%rbp)
	.loc 2 473 18
	cmpq	$0, -200(%rbp)
	je	.L118
	.loc 2 473 30 discriminator 1
	leaq	-192(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 2 473 27 discriminator 1
	testl	%eax, %eax
	je	.L119
.L118:
	.loc 2 478 26
	movq	-240(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 475 19
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 2 476 26
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	.loc 2 475 19
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 479 26
	movb	$1, -218(%rbp)
.L119:
	.loc 2 482 15
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 484 18
	cmpb	$0, -218(%rbp)
	jne	.L120
	.loc 2 484 32 discriminator 1
	movq	-232(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 484 52 discriminator 1
	movq	-192(%rbp), %rax
	.loc 2 484 26 discriminator 1
	cmpq	%rax, %rdx
	je	.L113
.L120:
	.loc 2 486 23
	movzbl	-218(%rbp), %eax
	xorl	$1, %eax
	.loc 2 486 22
	testb	%al, %al
	je	.L122
	.loc 2 490 30
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 488 23
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 489 30
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	.loc 2 488 23
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 491 36
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	.loc 2 491 23
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L122:
	.loc 2 493 19
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fts_skip_tree
	.loc 2 494 26
	movl	$4, %eax
	jmp	.L112
.L113:
.LBE8:
.LBB9:
	.loc 2 501 28
	leaq	-216(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	%rcx, %r9
	movl	$2, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	prompt
	movl	%eax, -212(%rbp)
	.loc 2 504 12
	cmpl	$2, -212(%rbp)
	jne	.L123
	.loc 2 504 46 discriminator 1
	movl	-216(%rbp), %eax
	.loc 2 504 24 discriminator 1
	cmpl	$4, %eax
	jne	.L123
	.loc 2 508 17
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	excise
	movl	%eax, -212(%rbp)
	.loc 2 509 16
	cmpl	$2, -212(%rbp)
	jne	.L123
	.loc 2 510 15
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fts_skip_tree
.L123:
	.loc 2 513 12
	cmpl	$2, -212(%rbp)
	je	.L124
	.loc 2 515 13
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	mark_ancestor_dirs
	.loc 2 516 13
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fts_skip_tree
.L124:
	.loc 2 519 16
	movl	-212(%rbp), %eax
	jmp	.L112
.L103:
.LBE9:
.LBB10:
	.loc 2 534 16
	movq	-240(%rbp), %rax
	movzwl	104(%rax), %eax
	.loc 2 534 12
	cmpw	$6, %ax
	jne	.L125
	.loc 2 535 17
	movq	-248(%rbp), %rax
	movzbl	8(%rax), %eax
	.loc 2 535 13
	testb	%al, %al
	je	.L125
	.loc 2 536 35
	movq	-240(%rbp), %rax
	movq	88(%rax), %rax
	.loc 2 536 13
	testq	%rax, %rax
	jle	.L125
	.loc 2 537 30
	movq	-240(%rbp), %rax
	movq	112(%rax), %rdx
	.loc 2 537 45
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 537 13
	cmpq	%rax, %rdx
	je	.L125
	.loc 2 539 13
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	mark_ancestor_dirs
	.loc 2 541 20
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 540 13
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 540 26
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	.loc 2 540 13
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 542 20
	movl	$4, %eax
	jmp	.L112
.L125:
	.loc 2 545 26
	movq	-240(%rbp), %rax
	movzwl	104(%rax), %eax
	.loc 2 545 47
	cmpw	$6, %ax
	je	.L126
	.loc 2 545 53 discriminator 2
	movq	-240(%rbp), %rax
	movzwl	104(%rax), %eax
	.loc 2 545 47 discriminator 2
	cmpw	$4, %ax
	jne	.L127
.L126:
	.loc 2 545 47 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L128
.L127:
	.loc 2 545 47 discriminator 4
	movl	$0, %eax
.L128:
	.loc 2 545 14 is_stmt 1 discriminator 6
	movb	%al, -217(%rbp)
	andb	$1, -217(%rbp)
	.loc 2 546 28 discriminator 6
	movzbl	-217(%rbp), %edx
	movq	-248(%rbp), %rcx
	movq	-240(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	$0, %r9d
	movl	$3, %r8d
	movq	%rax, %rdi
	call	prompt
	movl	%eax, -208(%rbp)
	.loc 2 547 12 discriminator 6
	cmpl	$2, -208(%rbp)
	je	.L129
	.loc 2 548 18
	movl	-208(%rbp), %eax
	jmp	.L112
.L129:
	.loc 2 549 16
	movzbl	-217(%rbp), %ecx
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	excise
	jmp	.L112
.L106:
.LBE10:
	.loc 2 553 7
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC17(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 554 7
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fts_skip_tree
	.loc 2 555 14
	movl	$4, %eax
	jmp	.L112
.L105:
	.loc 2 561 14
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 560 7
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 560 33
	leaq	.LC18(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 560 7
	movq	-240(%rbp), %rax
	movl	64(%rax), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 562 7
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fts_skip_tree
	.loc 2 563 14
	movl	$4, %eax
	jmp	.L112
.L102:
	.loc 2 569 14
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 566 7
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 568 17
	movq	-240(%rbp), %rax
	movzwl	104(%rax), %eax
	.loc 2 566 7
	movzwl	%ax, %ebx
	.loc 2 566 20
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	.loc 2 566 7
	leaq	.LC20(%rip), %r9
	movq	%r12, %r8
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 571 7
	call	abort@PLT
.L112:
	.loc 2 573 1 discriminator 1
	movq	-40(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L130
	.loc 2 573 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L130:
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	rm_fts, .-rm_fts
	.section	.rodata
.LC21:
	.string	"fts_read failed"
.LC22:
	.string	"src/remove.c"
.LC23:
	.string	"VALID_STATUS (s)"
.LC24:
	.string	"fts_close failed"
	.text
	.globl	rm
	.type	rm, @function
rm:
.LFB56:
	.loc 2 579 1 is_stmt 1
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 580 18
	movl	$2, -44(%rbp)
	.loc 2 582 7
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 582 6
	testq	%rax, %rax
	je	.L132
.LBB11:
	.loc 2 584 11
	movl	$536, -40(%rbp)
	.loc 2 588 12
	movq	-64(%rbp), %rax
	movzbl	8(%rax), %eax
	.loc 2 588 10
	testb	%al, %al
	je	.L133
	.loc 2 589 19
	orl	$64, -40(%rbp)
.L133:
	.loc 2 591 18
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	xfts_open@PLT
	movq	%rax, -32(%rbp)
.L140:
.LBB12:
	.loc 2 597 17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -24(%rbp)
	.loc 2 598 14
	cmpq	$0, -24(%rbp)
	jne	.L134
	.loc 2 600 19
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 600 18
	testl	%eax, %eax
	je	.L142
	.loc 2 602 36
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 602 29
	call	__errno_location@PLT
	.loc 2 602 19
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 603 29
	movl	$4, -44(%rbp)
	.loc 2 605 15
	jmp	.L142
.L134:
	.loc 2 608 30
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rm_fts
	movl	%eax, -36(%rbp)
	.loc 2 610 11
	cmpl	$2, -36(%rbp)
	je	.L137
	.loc 2 610 11 is_stmt 0 discriminator 1
	cmpl	$3, -36(%rbp)
	je	.L137
	.loc 2 610 11 discriminator 2
	cmpl	$4, -36(%rbp)
	je	.L137
	.loc 2 610 11 discriminator 3
	leaq	__PRETTY_FUNCTION__.6446(%rip), %rcx
	movl	$610, %edx
	leaq	.LC22(%rip), %rsi
	leaq	.LC23(%rip), %rdi
	call	__assert_fail@PLT
.L137:
	.loc 2 611 11 is_stmt 1
	cmpl	$4, -36(%rbp)
	je	.L138
	.loc 2 611 11 is_stmt 0 discriminator 2
	cmpl	$3, -36(%rbp)
	jne	.L140
	.loc 2 611 11 discriminator 3
	cmpl	$2, -44(%rbp)
	jne	.L140
.L138:
	.loc 2 611 11 discriminator 4
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBE12:
	.loc 2 594 9 is_stmt 1 discriminator 4
	jmp	.L140
.L142:
.LBB13:
	.loc 2 605 15
	nop
.LBE13:
	.loc 2 614 11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_close@PLT
	.loc 2 614 10
	testl	%eax, %eax
	je	.L132
	.loc 2 616 28
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 616 21
	call	__errno_location@PLT
	.loc 2 616 11
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 617 21
	movl	$4, -44(%rbp)
.L132:
.LBE11:
	.loc 2 621 10
	movl	-44(%rbp), %eax
	.loc 2 622 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	rm, .-rm
	.section	.rodata
	.type	__PRETTY_FUNCTION__.6446, @object
	.size	__PRETTY_FUNCTION__.6446, 3
__PRETTY_FUNCTION__.6446:
	.string	"rm"
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 11 "./lib/sys/select.h"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 14 "/usr/include/signal.h"
	.file 15 "/usr/include/unistd.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 17 "/usr/include/errno.h"
	.file 18 "src/version.h"
	.file 19 "./lib/exitfail.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/dirent.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/dev-ino.h"
	.file 26 "src/remove.h"
	.file 27 "./lib/i-ring.h"
	.file 28 "./lib/fts_.h"
	.file 29 "/usr/include/dirent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12dc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF249
	.byte	0xc
	.long	.LASF250
	.long	.LASF251
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
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x71
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x71
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x113
	.uleb128 0x8
	.long	0x108
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x8
	.long	0x113
	.uleb128 0x9
	.long	.LASF66
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x2a6
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x108
	.byte	0x8
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x108
	.byte	0x10
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x108
	.byte	0x18
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x108
	.byte	0x20
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x108
	.byte	0x28
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x108
	.byte	0x30
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x108
	.byte	0x38
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x108
	.byte	0x40
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x108
	.byte	0x48
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x108
	.byte	0x50
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x108
	.byte	0x58
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2bf
	.byte	0x60
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2c5
	.byte	0x68
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xc0
	.byte	0x78
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2cb
	.byte	0x83
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2db
	.byte	0x88
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xcc
	.byte	0x90
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2e6
	.byte	0x98
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2f1
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2c5
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2f7
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x11f
	.uleb128 0xb
	.long	.LASF252
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF51
	.uleb128 0x7
	.byte	0x8
	.long	0x2ba
	.uleb128 0x7
	.byte	0x8
	.long	0x11f
	.uleb128 0xd
	.long	0x113
	.long	0x2db
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2b2
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x7
	.byte	0x8
	.long	0x2e1
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2ec
	.uleb128 0xd
	.long	0x113
	.long	0x307
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0x8
	.long	0x307
	.uleb128 0xf
	.long	.LASF54
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x31e
	.uleb128 0x7
	.byte	0x8
	.long	0x2a6
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x31e
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x31e
	.uleb128 0xf
	.long	.LASF57
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x30d
	.long	0x353
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x348
	.uleb128 0xf
	.long	.LASF58
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x353
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x353
	.uleb128 0x2
	.long	.LASF61
	.byte	0x3
	.byte	0x8f
	.byte	0x1a
	.long	0x71
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF62
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF63
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x2f
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x3b
	.byte	0x11
	.long	0x78
	.uleb128 0x9
	.long	.LASF67
	.byte	0x10
	.byte	0xa
	.byte	0xa
	.byte	0x8
	.long	0x3d6
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0xc
	.byte	0xc
	.long	0xd8
	.byte	0
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x10
	.byte	0x15
	.long	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF70
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF71
	.uleb128 0xd
	.long	0x108
	.long	0x3fa
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF72
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x3ea
	.uleb128 0xf
	.long	.LASF73
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF74
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF75
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x3ea
	.uleb128 0xf
	.long	.LASF76
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF77
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF78
	.byte	0xc
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF79
	.byte	0x90
	.byte	0xd
	.byte	0x2e
	.byte	0x8
	.long	0x520
	.uleb128 0xa
	.long	.LASF80
	.byte	0xd
	.byte	0x30
	.byte	0xd
	.long	0x78
	.byte	0
	.uleb128 0xa
	.long	.LASF81
	.byte	0xd
	.byte	0x35
	.byte	0xd
	.long	0x9c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF82
	.byte	0xd
	.byte	0x3d
	.byte	0xf
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF83
	.byte	0xd
	.byte	0x3e
	.byte	0xe
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF84
	.byte	0xd
	.byte	0x40
	.byte	0xd
	.long	0x84
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF85
	.byte	0xd
	.byte	0x41
	.byte	0xd
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF86
	.byte	0xd
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF87
	.byte	0xd
	.byte	0x45
	.byte	0xd
	.long	0x78
	.byte	0x28
	.uleb128 0xa
	.long	.LASF88
	.byte	0xd
	.byte	0x4a
	.byte	0xd
	.long	0xc0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF89
	.byte	0xd
	.byte	0x4e
	.byte	0x11
	.long	0xe4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF90
	.byte	0xd
	.byte	0x50
	.byte	0x10
	.long	0xf0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF91
	.byte	0xd
	.byte	0x5b
	.byte	0x15
	.long	0x3ae
	.byte	0x48
	.uleb128 0xa
	.long	.LASF92
	.byte	0xd
	.byte	0x5c
	.byte	0x15
	.long	0x3ae
	.byte	0x58
	.uleb128 0xa
	.long	.LASF93
	.byte	0xd
	.byte	0x5d
	.byte	0x15
	.long	0x3ae
	.byte	0x68
	.uleb128 0xa
	.long	.LASF94
	.byte	0xd
	.byte	0x6a
	.byte	0x17
	.long	0x520
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0xfc
	.long	0x530
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x530
	.uleb128 0xd
	.long	0x30d
	.long	0x547
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x537
	.uleb128 0x11
	.long	.LASF95
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x547
	.uleb128 0x11
	.long	.LASF96
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x547
	.uleb128 0x11
	.long	.LASF97
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x573
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0x11
	.long	.LASF98
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x573
	.uleb128 0xf
	.long	.LASF99
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF100
	.byte	0x10
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF101
	.byte	0x10
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF102
	.byte	0x10
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF103
	.byte	0x11
	.byte	0x2d
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF104
	.byte	0x11
	.byte	0x2e
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF105
	.byte	0x12
	.byte	0x1
	.byte	0x14
	.long	0x307
	.uleb128 0xf
	.long	.LASF106
	.byte	0x13
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x13
	.long	.LASF107
	.value	0x118
	.byte	0x14
	.byte	0x16
	.byte	0x8
	.long	0x636
	.uleb128 0xa
	.long	.LASF108
	.byte	0x14
	.byte	0x19
	.byte	0xd
	.long	0x9c
	.byte	0
	.uleb128 0xa
	.long	.LASF109
	.byte	0x14
	.byte	0x1a
	.byte	0xd
	.long	0xc0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF110
	.byte	0x14
	.byte	0x1f
	.byte	0x18
	.long	0x50
	.byte	0x10
	.uleb128 0xa
	.long	.LASF111
	.byte	0x14
	.byte	0x20
	.byte	0x13
	.long	0x49
	.byte	0x12
	.uleb128 0xa
	.long	.LASF112
	.byte	0x14
	.byte	0x21
	.byte	0xa
	.long	0x63b
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	0x5e6
	.uleb128 0xd
	.long	0x113
	.long	0x64b
	.uleb128 0xe
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1d
	.byte	0x62
	.byte	0x3
	.long	0x690
	.uleb128 0x15
	.long	.LASF113
	.byte	0
	.uleb128 0x15
	.long	.LASF114
	.byte	0x1
	.uleb128 0x15
	.long	.LASF115
	.byte	0x2
	.uleb128 0x15
	.long	.LASF116
	.byte	0x4
	.uleb128 0x15
	.long	.LASF117
	.byte	0x6
	.uleb128 0x15
	.long	.LASF118
	.byte	0x8
	.uleb128 0x15
	.long	.LASF119
	.byte	0xa
	.uleb128 0x15
	.long	.LASF120
	.byte	0xc
	.uleb128 0x15
	.long	.LASF121
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.string	"DIR"
	.byte	0x1d
	.byte	0x7f
	.byte	0x1c
	.long	0x69c
	.uleb128 0xc
	.long	.LASF122
	.uleb128 0xd
	.long	0x11a
	.long	0x6ac
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x6a1
	.uleb128 0xf
	.long	.LASF123
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x6ac
	.uleb128 0xf
	.long	.LASF124
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x307
	.uleb128 0x17
	.long	.LASF142
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x71e
	.uleb128 0x15
	.long	.LASF125
	.byte	0
	.uleb128 0x15
	.long	.LASF126
	.byte	0x1
	.uleb128 0x15
	.long	.LASF127
	.byte	0x2
	.uleb128 0x15
	.long	.LASF128
	.byte	0x3
	.uleb128 0x15
	.long	.LASF129
	.byte	0x4
	.uleb128 0x15
	.long	.LASF130
	.byte	0x5
	.uleb128 0x15
	.long	.LASF131
	.byte	0x6
	.uleb128 0x15
	.long	.LASF132
	.byte	0x7
	.uleb128 0x15
	.long	.LASF133
	.byte	0x8
	.uleb128 0x15
	.long	.LASF134
	.byte	0x9
	.uleb128 0x15
	.long	.LASF135
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x6c9
	.uleb128 0x11
	.long	.LASF136
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x353
	.uleb128 0xd
	.long	0x71e
	.long	0x73b
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x730
	.uleb128 0x11
	.long	.LASF137
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x73b
	.uleb128 0xf
	.long	.LASF138
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x531
	.uleb128 0xf
	.long	.LASF139
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF140
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF141
	.byte	0x10
	.byte	0x19
	.byte	0x19
	.byte	0x8
	.long	0x799
	.uleb128 0xa
	.long	.LASF81
	.byte	0x19
	.byte	0x1b
	.byte	0x9
	.long	0x396
	.byte	0
	.uleb128 0xa
	.long	.LASF80
	.byte	0x19
	.byte	0x1c
	.byte	0x9
	.long	0x3a2
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.long	.LASF143
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x17
	.byte	0x6
	.long	0x7be
	.uleb128 0x15
	.long	.LASF144
	.byte	0x3
	.uleb128 0x15
	.long	.LASF145
	.byte	0x4
	.uleb128 0x15
	.long	.LASF146
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	.LASF147
	.byte	0x20
	.byte	0x1a
	.byte	0x20
	.byte	0x8
	.long	0x84e
	.uleb128 0xa
	.long	.LASF148
	.byte	0x1a
	.byte	0x23
	.byte	0x8
	.long	0x853
	.byte	0
	.uleb128 0xa
	.long	.LASF149
	.byte	0x1a
	.byte	0x26
	.byte	0x17
	.long	0x799
	.byte	0x4
	.uleb128 0xa
	.long	.LASF150
	.byte	0x1a
	.byte	0x2f
	.byte	0x8
	.long	0x853
	.byte	0x8
	.uleb128 0xa
	.long	.LASF151
	.byte	0x1a
	.byte	0x32
	.byte	0x8
	.long	0x853
	.byte	0x9
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1a
	.byte	0x35
	.byte	0x8
	.long	0x853
	.byte	0xa
	.uleb128 0xa
	.long	.LASF153
	.byte	0x1a
	.byte	0x39
	.byte	0x13
	.long	0x85a
	.byte	0x10
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1a
	.byte	0x3d
	.byte	0x8
	.long	0x853
	.byte	0x18
	.uleb128 0xa
	.long	.LASF155
	.byte	0x1a
	.byte	0x40
	.byte	0x8
	.long	0x853
	.byte	0x19
	.uleb128 0xa
	.long	.LASF156
	.byte	0x1a
	.byte	0x43
	.byte	0x8
	.long	0x853
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF157
	.byte	0x1a
	.byte	0x4b
	.byte	0x8
	.long	0x853
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.long	0x7be
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF158
	.uleb128 0x7
	.byte	0x8
	.long	0x771
	.uleb128 0x17
	.long	.LASF159
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x4e
	.byte	0x6
	.long	0x88b
	.uleb128 0x15
	.long	.LASF160
	.byte	0x2
	.uleb128 0x15
	.long	.LASF161
	.byte	0x3
	.uleb128 0x15
	.long	.LASF162
	.byte	0x4
	.uleb128 0x15
	.long	.LASF163
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	.LASF164
	.byte	0x20
	.byte	0x1b
	.byte	0x1f
	.byte	0x8
	.long	0x8da
	.uleb128 0xa
	.long	.LASF165
	.byte	0x1b
	.byte	0x21
	.byte	0x7
	.long	0x8da
	.byte	0
	.uleb128 0xa
	.long	.LASF166
	.byte	0x1b
	.byte	0x22
	.byte	0x7
	.long	0x65
	.byte	0x10
	.uleb128 0xa
	.long	.LASF167
	.byte	0x1b
	.byte	0x23
	.byte	0x10
	.long	0x40
	.byte	0x14
	.uleb128 0xa
	.long	.LASF168
	.byte	0x1b
	.byte	0x24
	.byte	0x10
	.long	0x40
	.byte	0x18
	.uleb128 0xa
	.long	.LASF169
	.byte	0x1b
	.byte	0x25
	.byte	0x8
	.long	0x853
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.long	0x65
	.long	0x8ea
	.uleb128 0xe
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF164
	.byte	0x1b
	.byte	0x27
	.byte	0x17
	.long	0x88b
	.uleb128 0x18
	.byte	0x8
	.byte	0x1c
	.byte	0xab
	.byte	0x9
	.long	0x917
	.uleb128 0x19
	.string	"ht"
	.byte	0x1c
	.byte	0xb8
	.byte	0x24
	.long	0x91c
	.uleb128 0x1a
	.long	.LASF170
	.byte	0x1c
	.byte	0xbe
	.byte	0x2b
	.long	0x927
	.byte	0
	.uleb128 0xc
	.long	.LASF171
	.uleb128 0x7
	.byte	0x8
	.long	0x917
	.uleb128 0xc
	.long	.LASF172
	.uleb128 0x7
	.byte	0x8
	.long	0x922
	.uleb128 0x1b
	.byte	0x80
	.byte	0x1c
	.byte	0x50
	.byte	0x9
	.long	0x9ed
	.uleb128 0xa
	.long	.LASF173
	.byte	0x1c
	.byte	0x51
	.byte	0x19
	.long	0xaf9
	.byte	0
	.uleb128 0xa
	.long	.LASF174
	.byte	0x1c
	.byte	0x52
	.byte	0x19
	.long	0xaf9
	.byte	0x8
	.uleb128 0xa
	.long	.LASF175
	.byte	0x1c
	.byte	0x53
	.byte	0x1a
	.long	0xaff
	.byte	0x10
	.uleb128 0xa
	.long	.LASF176
	.byte	0x1c
	.byte	0x54
	.byte	0xf
	.long	0x3a2
	.byte	0x18
	.uleb128 0xa
	.long	.LASF177
	.byte	0x1c
	.byte	0x55
	.byte	0xf
	.long	0x108
	.byte	0x20
	.uleb128 0xa
	.long	.LASF178
	.byte	0x1c
	.byte	0x56
	.byte	0xd
	.long	0x65
	.byte	0x28
	.uleb128 0xa
	.long	.LASF179
	.byte	0x1c
	.byte	0x57
	.byte	0xd
	.long	0x65
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF180
	.byte	0x1c
	.byte	0x59
	.byte	0x10
	.long	0x2d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF181
	.byte	0x1c
	.byte	0x5a
	.byte	0x10
	.long	0x2d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF182
	.byte	0x1c
	.byte	0x5b
	.byte	0xf
	.long	0xb25
	.byte	0x40
	.uleb128 0xa
	.long	.LASF183
	.byte	0x1c
	.byte	0xa0
	.byte	0xd
	.long	0x65
	.byte	0x48
	.uleb128 0xa
	.long	.LASF184
	.byte	0x1c
	.byte	0xa9
	.byte	0x1c
	.long	0x91c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF185
	.byte	0x1c
	.byte	0xbf
	.byte	0xb
	.long	0x8f6
	.byte	0x58
	.uleb128 0xa
	.long	.LASF186
	.byte	0x1c
	.byte	0xc4
	.byte	0x10
	.long	0x8ea
	.byte	0x60
	.byte	0
	.uleb128 0x13
	.long	.LASF187
	.value	0x100
	.byte	0x1c
	.byte	0xc7
	.byte	0x10
	.long	0xaf4
	.uleb128 0xa
	.long	.LASF185
	.byte	0x1c
	.byte	0xc8
	.byte	0x19
	.long	0xaf9
	.byte	0
	.uleb128 0xa
	.long	.LASF188
	.byte	0x1c
	.byte	0xc9
	.byte	0x19
	.long	0xaf9
	.byte	0x8
	.uleb128 0xa
	.long	.LASF189
	.byte	0x1c
	.byte	0xca
	.byte	0x19
	.long	0xaf9
	.byte	0x10
	.uleb128 0xa
	.long	.LASF190
	.byte	0x1c
	.byte	0xcb
	.byte	0xe
	.long	0xb3c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF191
	.byte	0x1c
	.byte	0xce
	.byte	0xe
	.long	0x71
	.byte	0x20
	.uleb128 0xa
	.long	.LASF192
	.byte	0x1c
	.byte	0xcf
	.byte	0xf
	.long	0x47
	.byte	0x28
	.uleb128 0xa
	.long	.LASF193
	.byte	0x1c
	.byte	0xd0
	.byte	0xf
	.long	0x108
	.byte	0x30
	.uleb128 0xa
	.long	.LASF177
	.byte	0x1c
	.byte	0xd1
	.byte	0xf
	.long	0x108
	.byte	0x38
	.uleb128 0xa
	.long	.LASF194
	.byte	0x1c
	.byte	0xd2
	.byte	0xd
	.long	0x65
	.byte	0x40
	.uleb128 0xa
	.long	.LASF195
	.byte	0x1c
	.byte	0xd3
	.byte	0xd
	.long	0x65
	.byte	0x44
	.uleb128 0xa
	.long	.LASF180
	.byte	0x1c
	.byte	0xd4
	.byte	0x10
	.long	0x2d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF196
	.byte	0x1c
	.byte	0xd6
	.byte	0xe
	.long	0xb42
	.byte	0x50
	.uleb128 0xa
	.long	.LASF197
	.byte	0x1c
	.byte	0xda
	.byte	0x13
	.long	0x37c
	.byte	0x58
	.uleb128 0xa
	.long	.LASF198
	.byte	0x1c
	.byte	0xdc
	.byte	0x10
	.long	0x2d
	.byte	0x60
	.uleb128 0xa
	.long	.LASF199
	.byte	0x1c
	.byte	0xec
	.byte	0x1c
	.long	0x50
	.byte	0x68
	.uleb128 0xa
	.long	.LASF200
	.byte	0x1c
	.byte	0xf0
	.byte	0x1c
	.long	0x50
	.byte	0x6a
	.uleb128 0xa
	.long	.LASF201
	.byte	0x1c
	.byte	0xf6
	.byte	0x1c
	.long	0x50
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF202
	.byte	0x1c
	.byte	0xf8
	.byte	0x15
	.long	0xb48
	.byte	0x70
	.uleb128 0x1c
	.long	.LASF203
	.byte	0x1c
	.byte	0xf9
	.byte	0xe
	.long	0xb58
	.value	0x100
	.byte	0
	.uleb128 0x8
	.long	0x9ed
	.uleb128 0x7
	.byte	0x8
	.long	0x9ed
	.uleb128 0x7
	.byte	0x8
	.long	0xaf9
	.uleb128 0x1d
	.long	0x65
	.long	0xb19
	.uleb128 0x1e
	.long	0xb19
	.uleb128 0x1e
	.long	0xb19
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb1f
	.uleb128 0x7
	.byte	0x8
	.long	0xaf4
	.uleb128 0x7
	.byte	0x8
	.long	0xb05
	.uleb128 0x16
	.string	"FTS"
	.byte	0x1c
	.byte	0xc5
	.byte	0x3
	.long	0x92d
	.uleb128 0x8
	.long	0xb2b
	.uleb128 0x7
	.byte	0x8
	.long	0x690
	.uleb128 0x7
	.byte	0x8
	.long	0xb2b
	.uleb128 0xd
	.long	0x44f
	.long	0xb58
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x113
	.long	0xb67
	.uleb128 0x1f
	.long	0x39
	.byte	0
	.uleb128 0x2
	.long	.LASF204
	.byte	0x1c
	.byte	0xfa
	.byte	0x3
	.long	0x9ed
	.uleb128 0x8
	.long	0xb67
	.uleb128 0x17
	.long	.LASF205
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x23
	.byte	0x6
	.long	0xb9d
	.uleb128 0x15
	.long	.LASF206
	.byte	0x2
	.uleb128 0x15
	.long	.LASF207
	.byte	0x3
	.uleb128 0x15
	.long	.LASF208
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF205
	.byte	0x2
	.byte	0x29
	.byte	0x16
	.long	0xb78
	.uleb128 0x17
	.long	.LASF209
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x2e
	.byte	0x6
	.long	0xbc8
	.uleb128 0x15
	.long	.LASF210
	.byte	0x2
	.uleb128 0x15
	.long	.LASF211
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.string	"rm"
	.byte	0x2
	.value	0x242
	.byte	0x1
	.long	0x860
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xc84
	.uleb128 0x21
	.long	.LASF212
	.byte	0x2
	.value	0x242
	.byte	0x12
	.long	0xc84
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"x"
	.byte	0x2
	.value	0x242
	.byte	0x31
	.long	0xc8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF213
	.byte	0x2
	.value	0x244
	.byte	0x12
	.long	0x860
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF253
	.long	0xca0
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6446
	.uleb128 0x25
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x23
	.long	.LASF214
	.byte	0x2
	.value	0x248
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"fts"
	.byte	0x2
	.value	0x24f
	.byte	0xc
	.long	0xb42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.Ldebug_ranges0+0
	.uleb128 0x26
	.string	"ent"
	.byte	0x2
	.value	0x253
	.byte	0x13
	.long	0xca5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"s"
	.byte	0x2
	.value	0x260
	.byte	0x1a
	.long	0x860
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x10e
	.uleb128 0x7
	.byte	0x8
	.long	0x84e
	.uleb128 0xd
	.long	0x11a
	.long	0xca0
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0xc90
	.uleb128 0x7
	.byte	0x8
	.long	0xb67
	.uleb128 0x28
	.long	.LASF220
	.byte	0x2
	.value	0x1a2
	.byte	0x1
	.long	0x860
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd8
	.uleb128 0x22
	.string	"fts"
	.byte	0x2
	.value	0x1a2
	.byte	0xe
	.long	0xb42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x22
	.string	"ent"
	.byte	0x2
	.value	0x1a2
	.byte	0x1b
	.long	0xca5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x22
	.string	"x"
	.byte	0x2
	.value	0x1a2
	.byte	0x39
	.long	0xc8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0xd26
	.uleb128 0x26
	.string	"err"
	.byte	0x2
	.value	0x1af
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xd6f
	.uleb128 0x23
	.long	.LASF215
	.byte	0x2
	.value	0x1d5
	.byte	0x14
	.long	0x853
	.uleb128 0x3
	.byte	0x91
	.sleb128 -234
	.uleb128 0x23
	.long	.LASF216
	.byte	0x2
	.value	0x1d6
	.byte	0x15
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x23
	.long	.LASF217
	.byte	0x2
	.value	0x1d7
	.byte	0x1b
	.long	0x44f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xda5
	.uleb128 0x23
	.long	.LASF218
	.byte	0x2
	.value	0x1f4
	.byte	0x11
	.long	0xb9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x26
	.string	"s"
	.byte	0x2
	.value	0x1f5
	.byte	0x18
	.long	0x860
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.uleb128 0x25
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x23
	.long	.LASF219
	.byte	0x2
	.value	0x221
	.byte	0xe
	.long	0x853
	.uleb128 0x3
	.byte	0x91
	.sleb128 -233
	.uleb128 0x26
	.string	"s"
	.byte	0x2
	.value	0x222
	.byte	0x18
	.long	0x860
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF221
	.byte	0x2
	.value	0x16f
	.byte	0x1
	.long	0x860
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xe71
	.uleb128 0x22
	.string	"fts"
	.byte	0x2
	.value	0x16f
	.byte	0xe
	.long	0xb42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x22
	.string	"ent"
	.byte	0x2
	.value	0x16f
	.byte	0x1b
	.long	0xca5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x22
	.string	"x"
	.byte	0x2
	.value	0x16f
	.byte	0x39
	.long	0xc8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x21
	.long	.LASF219
	.byte	0x2
	.value	0x16f
	.byte	0x41
	.long	0x853
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x23
	.long	.LASF222
	.byte	0x2
	.value	0x171
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x25
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x26
	.string	"st"
	.byte	0x2
	.value	0x183
	.byte	0x13
	.long	0x44f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF223
	.byte	0x2
	.value	0x160
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xeaf
	.uleb128 0x22
	.string	"ent"
	.byte	0x2
	.value	0x160
	.byte	0x1d
	.long	0xca5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"p"
	.byte	0x2
	.value	0x162
	.byte	0xb
	.long	0xca5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF224
	.byte	0x2
	.value	0x155
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xf11
	.uleb128 0x22
	.string	"fts"
	.byte	0x2
	.value	0x155
	.byte	0x15
	.long	0xb42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"ent"
	.byte	0x2
	.value	0x155
	.byte	0x22
	.long	0xca5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x26
	.string	"__x"
	.byte	0x2
	.value	0x159
	.byte	0x3
	.long	0xca5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF225
	.byte	0x2
	.value	0x14e
	.byte	0x1
	.long	0x853
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xf53
	.uleb128 0x22
	.string	"x"
	.byte	0x2
	.value	0x14e
	.byte	0x2d
	.long	0xc8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF226
	.byte	0x2
	.value	0x14e
	.byte	0x34
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF227
	.byte	0x2
	.value	0x132
	.byte	0x1
	.long	0x853
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xf87
	.uleb128 0x21
	.long	.LASF226
	.byte	0x2
	.value	0x132
	.byte	0x1d
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF228
	.byte	0x2
	.byte	0xb0
	.byte	0x1
	.long	0x860
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x10ba
	.uleb128 0x2e
	.string	"fts"
	.byte	0x2
	.byte	0xb0
	.byte	0x14
	.long	0x10ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2e
	.string	"ent"
	.byte	0x2
	.byte	0xb0
	.byte	0x27
	.long	0x10c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2f
	.long	.LASF219
	.byte	0x2
	.byte	0xb0
	.byte	0x31
	.long	0x853
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x2e
	.string	"x"
	.byte	0x2
	.byte	0xb1
	.byte	0x22
	.long	0xc8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2f
	.long	.LASF229
	.byte	0x2
	.byte	0xb1
	.byte	0x38
	.long	0xba9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.long	.LASF230
	.byte	0x2
	.byte	0xb2
	.byte	0x12
	.long	0x10c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x30
	.long	.LASF231
	.byte	0x2
	.byte	0xb4
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x30
	.long	.LASF232
	.byte	0x2
	.byte	0xb5
	.byte	0xf
	.long	0x307
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x30
	.long	.LASF233
	.byte	0x2
	.byte	0xb6
	.byte	0xf
	.long	0x307
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x31
	.string	"st"
	.byte	0x2
	.byte	0xba
	.byte	0xf
	.long	0x44f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x30
	.long	.LASF234
	.byte	0x2
	.byte	0xbb
	.byte	0x10
	.long	0x10cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x30
	.long	.LASF235
	.byte	0x2
	.byte	0xbe
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x30
	.long	.LASF236
	.byte	0x2
	.byte	0xbf
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x30
	.long	.LASF237
	.byte	0x2
	.byte	0xc1
	.byte	0x8
	.long	0x853
	.uleb128 0x3
	.byte	0x91
	.sleb128 -241
	.uleb128 0x30
	.long	.LASF238
	.byte	0x2
	.byte	0xd1
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x23
	.long	.LASF239
	.byte	0x2
	.value	0x103
	.byte	0x13
	.long	0x307
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb37
	.uleb128 0x7
	.byte	0x8
	.long	0xb73
	.uleb128 0x7
	.byte	0x8
	.long	0xb9d
	.uleb128 0x7
	.byte	0x8
	.long	0x44f
	.uleb128 0x2d
	.long	.LASF240
	.byte	0x2
	.byte	0x60
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x1122
	.uleb128 0x2f
	.long	.LASF231
	.byte	0x2
	.byte	0x60
	.byte	0x22
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF212
	.byte	0x2
	.byte	0x61
	.byte	0x2a
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"buf"
	.byte	0x2
	.byte	0x62
	.byte	0x2b
	.long	0x10cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x32
	.long	.LASF241
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0x10cc
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x1153
	.uleb128 0x2e
	.string	"st"
	.byte	0x2
	.byte	0x55
	.byte	0x1f
	.long	0x10cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF242
	.byte	0x2
	.byte	0x46
	.byte	0x1
	.long	0x65
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x11b0
	.uleb128 0x2e
	.string	"fd"
	.byte	0x2
	.byte	0x46
	.byte	0x14
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF212
	.byte	0x2
	.byte	0x46
	.byte	0x24
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"st"
	.byte	0x2
	.byte	0x46
	.byte	0x37
	.long	0x10cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF222
	.byte	0x2
	.byte	0x46
	.byte	0x3f
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF243
	.byte	0x1
	.value	0x124
	.byte	0x1
	.long	0x853
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1232
	.uleb128 0x21
	.long	.LASF231
	.byte	0x1
	.value	0x124
	.byte	0x13
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"dir"
	.byte	0x1
	.value	0x124
	.byte	0x27
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF244
	.byte	0x1
	.value	0x126
	.byte	0x8
	.long	0xb3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"dp"
	.byte	0x1
	.value	0x127
	.byte	0x18
	.long	0x1232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF245
	.byte	0x1
	.value	0x128
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"fd"
	.byte	0x1
	.value	0x129
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x636
	.uleb128 0x28
	.long	.LASF246
	.byte	0x1
	.value	0x116
	.byte	0x1
	.long	0x1232
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x128d
	.uleb128 0x21
	.long	.LASF244
	.byte	0x1
	.value	0x116
	.byte	0x27
	.long	0xb3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x26
	.string	"dp"
	.byte	0x1
	.value	0x11a
	.byte	0x1c
	.long	0x1232
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF247
	.byte	0x1
	.value	0x109
	.byte	0x1
	.long	0x853
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF248
	.byte	0x1
	.value	0x109
	.byte	0x1c
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x26
	.string	"sep"
	.byte	0x1
	.value	0x10d
	.byte	0xc
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x2b
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF94:
	.string	"__glibc_reserved"
.LASF93:
	.string	"st_ctim"
.LASF7:
	.string	"size_t"
.LASF194:
	.string	"fts_errno"
.LASF214:
	.string	"bit_flags"
.LASF89:
	.string	"st_blksize"
.LASF90:
	.string	"st_blocks"
.LASF220:
	.string	"rm_fts"
.LASF52:
	.string	"_IO_codecvt"
.LASF32:
	.string	"_IO_save_end"
.LASF249:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF217:
	.string	"statbuf"
.LASF65:
	.string	"dev_t"
.LASF232:
	.string	"full_name"
.LASF10:
	.string	"__gid_t"
.LASF247:
	.string	"dot_or_dotdot"
.LASF181:
	.string	"fts_nitems"
.LASF95:
	.string	"_sys_siglist"
.LASF92:
	.string	"st_mtim"
.LASF228:
	.string	"prompt"
.LASF192:
	.string	"fts_pointer"
.LASF238:
	.string	"wp_errno"
.LASF25:
	.string	"_IO_write_base"
.LASF170:
	.string	"state"
.LASF140:
	.string	"error_one_per_line"
.LASF41:
	.string	"_lock"
.LASF244:
	.string	"dirp"
.LASF79:
	.string	"stat"
.LASF72:
	.string	"__tzname"
.LASF30:
	.string	"_IO_save_base"
.LASF246:
	.string	"readdir_ignoring_dot_and_dotdot"
.LASF151:
	.string	"recursive"
.LASF245:
	.string	"saved_errno"
.LASF34:
	.string	"_chain"
.LASF234:
	.string	"sbuf"
.LASF38:
	.string	"_cur_column"
.LASF57:
	.string	"sys_nerr"
.LASF8:
	.string	"__dev_t"
.LASF118:
	.string	"DT_REG"
.LASF117:
	.string	"DT_BLK"
.LASF59:
	.string	"_sys_nerr"
.LASF186:
	.string	"fts_fd_ring"
.LASF159:
	.string	"RM_status"
.LASF171:
	.string	"hash_table"
.LASF97:
	.string	"__environ"
.LASF6:
	.string	"long int"
.LASF51:
	.string	"_IO_marker"
.LASF200:
	.string	"fts_flags"
.LASF226:
	.string	"errnum"
.LASF183:
	.string	"fts_options"
.LASF209:
	.string	"Prompt_action"
.LASF4:
	.string	"signed char"
.LASF17:
	.string	"__blksize_t"
.LASF173:
	.string	"fts_cur"
.LASF115:
	.string	"DT_CHR"
.LASF66:
	.string	"_IO_FILE"
.LASF152:
	.string	"remove_empty_directories"
.LASF74:
	.string	"__timezone"
.LASF53:
	.string	"_IO_wide_data"
.LASF84:
	.string	"st_uid"
.LASF177:
	.string	"fts_path"
.LASF119:
	.string	"DT_LNK"
.LASF253:
	.string	"__PRETTY_FUNCTION__"
.LASF175:
	.string	"fts_array"
.LASF143:
	.string	"rm_interactive"
.LASF231:
	.string	"fd_cwd"
.LASF136:
	.string	"quoting_style_args"
.LASF98:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF250:
	.string	"src/remove.c"
.LASF87:
	.string	"st_rdev"
.LASF207:
	.string	"T_NO"
.LASF121:
	.string	"DT_WHT"
.LASF146:
	.string	"RMI_NEVER"
.LASF139:
	.string	"error_message_count"
.LASF149:
	.string	"interactive"
.LASF235:
	.string	"dirent_type"
.LASF19:
	.string	"__syscall_slong_t"
.LASF158:
	.string	"_Bool"
.LASF111:
	.string	"d_type"
.LASF20:
	.string	"char"
.LASF120:
	.string	"DT_SOCK"
.LASF225:
	.string	"ignorable_missing"
.LASF252:
	.string	"_IO_lock_t"
.LASF112:
	.string	"d_name"
.LASF162:
	.string	"RM_ERROR"
.LASF233:
	.string	"filename"
.LASF77:
	.string	"timezone"
.LASF129:
	.string	"shell_escape_always_quoting_style"
.LASF12:
	.string	"__mode_t"
.LASF22:
	.string	"_IO_read_ptr"
.LASF61:
	.string	"ptrdiff_t"
.LASF211:
	.string	"PA_REMOVE_DIR"
.LASF54:
	.string	"stdin"
.LASF167:
	.string	"ir_front"
.LASF224:
	.string	"fts_skip_tree"
.LASF58:
	.string	"sys_errlist"
.LASF33:
	.string	"_markers"
.LASF124:
	.string	"program_name"
.LASF212:
	.string	"file"
.LASF182:
	.string	"fts_compar"
.LASF169:
	.string	"ir_empty"
.LASF131:
	.string	"c_maybe_quoting_style"
.LASF205:
	.string	"Ternary"
.LASF103:
	.string	"program_invocation_name"
.LASF42:
	.string	"_offset"
.LASF85:
	.string	"st_gid"
.LASF174:
	.string	"fts_child"
.LASF100:
	.string	"optind"
.LASF237:
	.string	"is_empty"
.LASF122:
	.string	"__dirstream"
.LASF64:
	.string	"ino_t"
.LASF134:
	.string	"clocale_quoting_style"
.LASF138:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF168:
	.string	"ir_back"
.LASF36:
	.string	"_flags2"
.LASF243:
	.string	"is_empty_dir"
.LASF88:
	.string	"st_size"
.LASF223:
	.string	"mark_ancestor_dirs"
.LASF24:
	.string	"_IO_read_base"
.LASF239:
	.string	"quoted_name"
.LASF116:
	.string	"DT_DIR"
.LASF49:
	.string	"_unused2"
.LASF241:
	.string	"cache_stat_init"
.LASF37:
	.string	"_old_offset"
.LASF18:
	.string	"__blkcnt_t"
.LASF126:
	.string	"shell_quoting_style"
.LASF11:
	.string	"__ino_t"
.LASF156:
	.string	"verbose"
.LASF206:
	.string	"T_UNKNOWN"
.LASF62:
	.string	"long long int"
.LASF195:
	.string	"fts_symfd"
.LASF105:
	.string	"Version"
.LASF106:
	.string	"exit_failure"
.LASF70:
	.string	"_gl_cxxalias_dummy"
.LASF45:
	.string	"_freeres_list"
.LASF130:
	.string	"c_quoting_style"
.LASF27:
	.string	"_IO_write_end"
.LASF161:
	.string	"RM_USER_DECLINED"
.LASF216:
	.string	"parent"
.LASF204:
	.string	"FTSENT"
.LASF210:
	.string	"PA_DESCEND_INTO_DIR"
.LASF160:
	.string	"RM_OK"
.LASF236:
	.string	"write_protected"
.LASF242:
	.string	"cache_fstatat"
.LASF96:
	.string	"sys_siglist"
.LASF172:
	.string	"cycle_check_state"
.LASF188:
	.string	"fts_parent"
.LASF28:
	.string	"_IO_buf_base"
.LASF1:
	.string	"unsigned int"
.LASF123:
	.string	"version_etc_copyright"
.LASF137:
	.string	"quoting_style_vals"
.LASF125:
	.string	"literal_quoting_style"
.LASF86:
	.string	"__pad0"
.LASF75:
	.string	"tzname"
.LASF47:
	.string	"__pad5"
.LASF222:
	.string	"flag"
.LASF114:
	.string	"DT_FIFO"
.LASF218:
	.string	"is_empty_directory"
.LASF21:
	.string	"_flags"
.LASF227:
	.string	"nonexistent_file_errno"
.LASF193:
	.string	"fts_accpath"
.LASF221:
	.string	"excise"
.LASF107:
	.string	"dirent"
.LASF189:
	.string	"fts_link"
.LASF48:
	.string	"_mode"
.LASF43:
	.string	"_codecvt"
.LASF82:
	.string	"st_nlink"
.LASF202:
	.string	"fts_statp"
.LASF145:
	.string	"RMI_SOMETIMES"
.LASF63:
	.string	"long double"
.LASF50:
	.string	"FILE"
.LASF80:
	.string	"st_dev"
.LASF154:
	.string	"preserve_all_root"
.LASF67:
	.string	"timespec"
.LASF102:
	.string	"optopt"
.LASF133:
	.string	"locale_quoting_style"
.LASF71:
	.string	"long long unsigned int"
.LASF144:
	.string	"RMI_ALWAYS"
.LASF14:
	.string	"__off_t"
.LASF148:
	.string	"ignore_missing_files"
.LASF142:
	.string	"quoting_style"
.LASF104:
	.string	"program_invocation_short_name"
.LASF157:
	.string	"require_restore_cwd"
.LASF240:
	.string	"write_protected_non_symlink"
.LASF46:
	.string	"_freeres_buf"
.LASF163:
	.string	"RM_NONEMPTY_DIR"
.LASF178:
	.string	"fts_rfd"
.LASF101:
	.string	"opterr"
.LASF251:
	.string	"/root/coreutils"
.LASF16:
	.string	"__time_t"
.LASF187:
	.string	"_ftsent"
.LASF164:
	.string	"I_ring"
.LASF31:
	.string	"_IO_backup_base"
.LASF40:
	.string	"_shortbuf"
.LASF127:
	.string	"shell_always_quoting_style"
.LASF190:
	.string	"fts_dirp"
.LASF141:
	.string	"dev_ino"
.LASF15:
	.string	"__off64_t"
.LASF230:
	.string	"is_empty_p"
.LASF185:
	.string	"fts_cycle"
.LASF196:
	.string	"fts_fts"
.LASF201:
	.string	"fts_instr"
.LASF208:
	.string	"T_YES"
.LASF132:
	.string	"escape_quoting_style"
.LASF147:
	.string	"rm_options"
.LASF29:
	.string	"_IO_buf_end"
.LASF191:
	.string	"fts_number"
.LASF180:
	.string	"fts_pathlen"
.LASF150:
	.string	"one_file_system"
.LASF248:
	.string	"file_name"
.LASF56:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF219:
	.string	"is_dir"
.LASF229:
	.string	"mode"
.LASF69:
	.string	"tv_nsec"
.LASF109:
	.string	"d_off"
.LASF128:
	.string	"shell_escape_quoting_style"
.LASF153:
	.string	"root_dev_ino"
.LASF39:
	.string	"_vtable_offset"
.LASF199:
	.string	"fts_info"
.LASF60:
	.string	"_sys_errlist"
.LASF184:
	.string	"fts_leaf_optimization_works_ht"
.LASF110:
	.string	"d_reclen"
.LASF73:
	.string	"__daylight"
.LASF213:
	.string	"rm_status"
.LASF197:
	.string	"fts_level"
.LASF83:
	.string	"st_mode"
.LASF9:
	.string	"__uid_t"
.LASF176:
	.string	"fts_dev"
.LASF155:
	.string	"stdin_tty"
.LASF23:
	.string	"_IO_read_end"
.LASF108:
	.string	"d_ino"
.LASF78:
	.string	"getdate_err"
.LASF113:
	.string	"DT_UNKNOWN"
.LASF179:
	.string	"fts_cwd_fd"
.LASF35:
	.string	"_fileno"
.LASF44:
	.string	"_wide_data"
.LASF99:
	.string	"optarg"
.LASF3:
	.string	"short unsigned int"
.LASF55:
	.string	"stdout"
.LASF26:
	.string	"_IO_write_ptr"
.LASF198:
	.string	"fts_namelen"
.LASF76:
	.string	"daylight"
.LASF81:
	.string	"st_ino"
.LASF215:
	.string	"failed"
.LASF13:
	.string	"__nlink_t"
.LASF203:
	.string	"fts_name"
.LASF165:
	.string	"ir_data"
.LASF68:
	.string	"tv_sec"
.LASF135:
	.string	"custom_quoting_style"
.LASF91:
	.string	"st_atim"
.LASF166:
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
