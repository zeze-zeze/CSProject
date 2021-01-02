	.file	"copy.c"
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
	.type	ptr_align, @function
ptr_align:
.LFB33:
	.loc 1 502 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 503 15
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 504 35
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	.loc 1 504 15
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 505 25
	movq	-8(%rbp), %rax
	.loc 1 505 37
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, %rax
	.loc 1 505 23
	negq	%rax
	movq	%rax, %rdx
	.loc 1 505 10
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 506 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ptr_align, .-ptr_align
	.type	is_nul, @function
is_nul:
.LFB34:
	.loc 1 513 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 513 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 514 24
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 527 6
	cmpq	$0, -48(%rbp)
	jne	.L23
	.loc 1 528 14
	movl	$1, %eax
	jmp	.L19
.L23:
	.loc 1 531 9
	nop
.L18:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 544 7 discriminator 1
	movb	%al, -17(%rbp)
	.loc 1 545 11 discriminator 1
	movzbl	-17(%rbp), %eax
	.loc 1 545 10 discriminator 1
	testb	%al, %al
	je	.L14
	.loc 1 546 16
	movl	$0, %eax
	jmp	.L19
.L14:
	.loc 1 547 9
	addq	$1, -16(%rbp)
	.loc 1 548 14
	subq	$1, -48(%rbp)
	.loc 1 549 10
	cmpq	$0, -48(%rbp)
	jne	.L15
	.loc 1 550 16
	movl	$1, %eax
	jmp	.L19
.L15:
	.loc 1 551 11
	movq	-48(%rbp), %rax
	andl	$15, %eax
	.loc 1 551 10
	testq	%rax, %rax
	je	.L22
	.loc 1 544 7 discriminator 2
	jmp	.L18
.L22:
	.loc 1 552 9
	nop
	.loc 1 556 11
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 1 556 35
	testl	%eax, %eax
	sete	%al
.L19:
	.loc 1 557 1 discriminator 3
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L20
	.loc 1 557 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	is_nul, .-is_nul
	.type	is_ENOTSUP, @function
is_ENOTSUP:
.LFB45:
	.loc 1 760 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 761 28
	cmpl	$95, -4(%rbp)
	sete	%al
	.loc 1 762 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	is_ENOTSUP, .-is_ENOTSUP
	.type	extent_scan_free, @function
extent_scan_free:
.LFB46:
	.file 2 "src/extent-scan.h"
	.loc 2 67 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 68 13
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 68 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 69 18
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 2 70 18
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	.loc 2 71 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	extent_scan_free, .-extent_scan_free
	.type	io_blksize, @function
io_blksize:
.LFB47:
	.file 3 "src/ioblksize.h"
	.loc 3 76 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 77 10
	movq	72(%rbp), %rax
	testq	%rax, %rax
	jle	.L28
	.loc 3 77 10 is_stmt 0 discriminator 1
	movq	72(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L28
	.loc 3 77 10 discriminator 3
	movq	72(%rbp), %rax
	cmpq	$131071, %rax
	jle	.L28
	.loc 3 77 10 discriminator 5
	movq	72(%rbp), %rax
	testq	%rax, %rax
	jle	.L29
	.loc 3 77 10 discriminator 7
	movq	72(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L29
	.loc 3 77 10 discriminator 9
	movq	72(%rbp), %rax
	jmp	.L32
.L29:
	.loc 3 77 10 discriminator 10
	movl	$512, %eax
	jmp	.L32
.L28:
	.loc 3 77 10 discriminator 6
	movl	$131072, %eax
.L32:
	.loc 3 78 1 is_stmt 1 discriminator 15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	io_blksize, .-io_blksize
	.type	ignorable_ctx_err, @function
ignorable_ctx_err:
.LFB58:
	.file 4 "src/selinux.h"
	.loc 4 28 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 4 29 25
	cmpl	$95, -4(%rbp)
	je	.L34
	.loc 4 29 25 is_stmt 0 discriminator 2
	cmpl	$61, -4(%rbp)
	jne	.L35
.L34:
	.loc 4 29 25 discriminator 3
	movl	$1, %eax
	jmp	.L36
.L35:
	.loc 4 29 25 discriminator 4
	movl	$0, %eax
.L36:
	.loc 4 29 25 discriminator 6
	andl	$1, %eax
	.loc 4 30 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	ignorable_ctx_err, .-ignorable_ctx_err
	.local	top_level_src_name
	.comm	top_level_src_name,8,8
	.local	top_level_dst_name
	.comm	top_level_dst_name,8,8
	.type	follow_fstatat, @function
follow_fstatat:
.LFB59:
	.file 5 "src/copy.c"
	.loc 5 159 1
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
	.loc 5 159 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 5 160 16
	movl	-184(%rbp), %ecx
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	fstatat@PLT
	movl	%eax, -164(%rbp)
	.loc 5 183 10
	movl	-164(%rbp), %eax
	.loc 5 184 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	follow_fstatat, .-follow_fstatat
	.type	utimens_symlink, @function
utimens_symlink:
.LFB60:
	.loc 5 190 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 5 191 13
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lutimens@PLT
	movl	%eax, -4(%rbp)
	.loc 5 195 6
	cmpl	$0, -4(%rbp)
	je	.L42
	.loc 5 195 14 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 195 11 discriminator 1
	cmpl	$38, %eax
	jne	.L42
	.loc 5 196 9
	movl	$0, -4(%rbp)
.L42:
	.loc 5 197 10
	movl	-4(%rbp), %eax
	.loc 5 198 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	utimens_symlink, .-utimens_symlink
	.type	punch_hole, @function
punch_hole:
.LFB61:
	.loc 5 206 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 5 207 7
	movl	$0, -4(%rbp)
	.loc 5 211 9
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	fallocate@PLT
	movl	%eax, -4(%rbp)
	.loc 5 213 6
	cmpl	$0, -4(%rbp)
	jns	.L45
	.loc 5 213 31 discriminator 1
	call	__errno_location@PLT
	.loc 5 213 19 discriminator 1
	movl	(%rax), %eax
	movl	%eax, %edi
	call	is_ENOTSUP
	.loc 5 213 15 discriminator 1
	testb	%al, %al
	jne	.L46
	.loc 5 213 41 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 213 38 discriminator 2
	cmpl	$38, %eax
	jne	.L45
.L46:
	.loc 5 214 9
	movl	$0, -4(%rbp)
.L45:
	.loc 5 217 10
	movl	-4(%rbp), %eax
	.loc 5 218 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	punch_hole, .-punch_hole
	.section	.rodata
.LC0:
	.string	"cannot lseek %s"
.LC1:
	.string	"error deallocating %s"
	.text
	.type	create_hole, @function
create_hole:
.LFB62:
	.loc 5 225 1
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
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movq	%rcx, -56(%rbp)
	movb	%al, -40(%rbp)
	.loc 5 226 20
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -24(%rbp)
	.loc 5 228 6
	cmpq	$0, -24(%rbp)
	jns	.L49
	.loc 5 230 7
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 230 24
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 230 17
	call	__errno_location@PLT
	.loc 5 230 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 231 14
	movl	$0, %eax
	jmp	.L50
.L49:
	.loc 5 238 6
	cmpb	$0, -40(%rbp)
	je	.L51
	.loc 5 238 22 discriminator 1
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	punch_hole
	.loc 5 238 19 discriminator 1
	testl	%eax, %eax
	jns	.L51
	.loc 5 240 7
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 240 24
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 240 17
	call	__errno_location@PLT
	.loc 5 240 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 241 14
	movl	$0, %eax
	jmp	.L50
.L51:
	.loc 5 244 10
	movl	$1, %eax
.L50:
	.loc 5 245 1
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	create_hole, .-create_hole
	.section	.rodata
.LC2:
	.string	"error copying %s to %s"
.LC3:
	.string	"error reading %s"
.LC4:
	.string	"error writing %s"
.LC5:
	.string	"overflow reading %s"
	.text
	.type	sparse_copy, @function
sparse_copy:
.LFB63:
	.loc 5 265 1
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
	subq	$168, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -116(%rbp)
	movl	%esi, -120(%rbp)
	movq	%rdx, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	%r8, -144(%rbp)
	movl	%r9d, %eax
	movb	%al, -148(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 5 265 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 5 266 25
	movq	-184(%rbp), %rax
	movb	$0, (%rax)
	.loc 5 267 17
	movq	-176(%rbp), %rax
	movq	$0, (%rax)
	.loc 5 270 6
	cmpq	$0, -144(%rbp)
	jne	.L53
	.loc 5 271 11
	jmp	.L54
.L62:
.LBB3:
	.loc 5 276 17
	movabsq	$9223372036854775807, %rax
	movq	%rax, -56(%rbp)
	.loc 5 277 62
	cmpq	$-1, -56(%rbp)
	je	.L55
	.loc 5 277 62 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	andq	$-1073741824, %rax
	jmp	.L56
.L55:
	.loc 5 277 62 discriminator 2
	movq	$-1073741824, %rax
.L56:
	.loc 5 277 19 is_stmt 1 discriminator 4
	movq	%rax, -48(%rbp)
	.loc 5 279 45 discriminator 4
	movq	-48(%rbp), %rax
	cmpq	%rax, 32(%rbp)
	cmovbe	32(%rbp), %rax
	movq	%rax, %rcx
	.loc 5 278 28 discriminator 4
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %eax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movl	%eax, %edi
	call	copy_file_range@PLT
	movq	%rax, -96(%rbp)
	.loc 5 280 12 discriminator 4
	cmpq	$0, -96(%rbp)
	jne	.L57
	.loc 5 286 17
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	.loc 5 286 16
	testq	%rax, %rax
	je	.L94
	.loc 5 288 20
	movl	$1, %eax
	jmp	.L92
.L57:
	.loc 5 290 12
	cmpq	$0, -96(%rbp)
	jns	.L60
	.loc 5 292 17
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 292 16
	cmpl	$38, %eax
	je	.L53
	.loc 5 292 36 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 292 33 discriminator 1
	cmpl	$22, %eax
	je	.L53
	.loc 5 293 20
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 293 17
	cmpl	$9, %eax
	je	.L53
	.loc 5 293 38 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 293 35 discriminator 1
	cmpl	$18, %eax
	je	.L53
	.loc 5 295 17
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 295 16
	cmpl	$4, %eax
	jne	.L61
	.loc 5 296 24
	movq	$0, -96(%rbp)
	jmp	.L60
.L61:
	.loc 5 299 17
	movq	-168(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r13
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	.loc 5 299 34
	leaq	.LC2(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 299 27
	call	__errno_location@PLT
	.loc 5 299 17
	movl	(%rax), %eax
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 301 24
	movl	$0, %eax
	jmp	.L92
.L60:
	.loc 5 304 20
	movq	-96(%rbp), %rax
	subq	%rax, 32(%rbp)
	.loc 5 305 23
	movq	-176(%rbp), %rax
	movq	(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, (%rax)
.L54:
.LBE3:
	.loc 5 271 11
	cmpq	$0, 32(%rbp)
	jne	.L62
	jmp	.L53
.L94:
.LBB4:
	.loc 5 287 15
	nop
.L53:
.LBE4:
	.loc 5 308 8
	movb	$0, -108(%rbp)
	.loc 5 309 9
	movq	$0, -104(%rbp)
	.loc 5 311 9
	jmp	.L63
.L90:
.LBB5:
	.loc 5 313 43
	movq	32(%rbp), %rax
	cmpq	%rax, -136(%rbp)
	cmovbe	-136(%rbp), %rax
	movq	%rax, %rdx
	.loc 5 313 24
	movq	-128(%rbp), %rcx
	movl	-116(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movq	%rax, -88(%rbp)
	.loc 5 314 10
	cmpq	$0, -88(%rbp)
	jns	.L64
	.loc 5 316 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 316 14
	cmpl	$4, %eax
	jne	.L65
	.loc 5 317 13
	jmp	.L63
.L65:
	.loc 5 318 11
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 318 28
	leaq	.LC3(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 318 21
	call	__errno_location@PLT
	.loc 5 318 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 319 18
	movl	$0, %eax
	jmp	.L92
.L64:
	.loc 5 321 10
	cmpq	$0, -88(%rbp)
	je	.L95
	.loc 5 323 18
	movq	-88(%rbp), %rax
	subq	%rax, 32(%rbp)
	.loc 5 324 21
	movq	-176(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 327 44
	cmpq	$0, -144(%rbp)
	je	.L68
	.loc 5 327 44 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax
	jmp	.L69
.L68:
	.loc 5 327 44 discriminator 2
	movq	-136(%rbp), %rax
.L69:
	.loc 5 327 14 is_stmt 1 discriminator 4
	movq	%rax, -80(%rbp)
	.loc 5 328 13 discriminator 4
	movq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 5 329 13 discriminator 4
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 5 331 13 discriminator 4
	jmp	.L70
.L89:
.LBB6:
	.loc 5 333 16
	movzbl	-108(%rbp), %eax
	movb	%al, -107(%rbp)
	.loc 5 334 19
	movq	-88(%rbp), %rax
	.loc 5 334 17
	cmpq	%rax, -80(%rbp)
	cmovbe	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 5 336 14
	cmpq	$0, -144(%rbp)
	je	.L71
	.loc 5 336 25 discriminator 1
	cmpq	$0, -80(%rbp)
	je	.L71
	.loc 5 337 25
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_nul
	movb	%al, -108(%rbp)
.L71:
	.loc 5 339 54
	movzbl	-108(%rbp), %eax
	cmpb	-107(%rbp), %al
	je	.L72
	.loc 5 339 54 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L72
	.loc 5 339 54 discriminator 3
	movl	$1, %eax
	jmp	.L73
.L72:
	.loc 5 339 54 discriminator 4
	movl	$0, %eax
.L73:
	.loc 5 339 16 is_stmt 1 discriminator 6
	movb	%al, -106(%rbp)
	andb	$1, -106(%rbp)
	.loc 5 340 37 discriminator 6
	movq	-80(%rbp), %rax
	.loc 5 340 62 discriminator 6
	cmpq	%rax, -88(%rbp)
	jne	.L74
	.loc 5 340 49 discriminator 1
	movzbl	-108(%rbp), %eax
	xorl	$1, %eax
	.loc 5 340 46 discriminator 1
	testb	%al, %al
	jne	.L75
.L74:
	.loc 5 340 62 discriminator 4
	cmpq	$0, -80(%rbp)
	jne	.L76
.L75:
	.loc 5 340 62 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L77
.L76:
	.loc 5 340 62 discriminator 6
	movl	$0, %eax
.L77:
	.loc 5 340 16 is_stmt 1 discriminator 8
	movb	%al, -105(%rbp)
	andb	$1, -105(%rbp)
	.loc 5 342 14 discriminator 8
	cmpb	$0, -106(%rbp)
	jne	.L78
	.loc 5 342 26 discriminator 1
	cmpb	$0, -105(%rbp)
	je	.L79
.L78:
	.loc 5 344 19
	movzbl	-106(%rbp), %eax
	xorl	$1, %eax
	.loc 5 344 18
	testb	%al, %al
	je	.L80
	.loc 5 345 23
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
.L80:
	.loc 5 347 19
	movzbl	-107(%rbp), %eax
	xorl	$1, %eax
	.loc 5 347 18
	testb	%al, %al
	je	.L81
	.loc 5 349 23
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	movl	-120(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	full_write@PLT
	.loc 5 349 57
	movq	-104(%rbp), %rdx
	.loc 5 349 22
	cmpq	%rdx, %rax
	je	.L82
	.loc 5 351 23
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 351 40
	leaq	.LC4(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 351 33
	call	__errno_location@PLT
	.loc 5 351 23
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 353 30
	movl	$0, %eax
	jmp	.L92
.L81:
	.loc 5 358 25
	movq	-104(%rbp), %rcx
	movzbl	-148(%rbp), %edx
	movq	-168(%rbp), %rsi
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	call	create_hole
	.loc 5 358 23
	xorl	$1, %eax
	.loc 5 358 22
	testb	%al, %al
	je	.L82
	.loc 5 359 28
	movl	$0, %eax
	jmp	.L92
.L82:
	.loc 5 362 20
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 5 363 21
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 5 365 18
	cmpb	$0, -105(%rbp)
	je	.L86
	.loc 5 367 22
	cmpq	$0, -80(%rbp)
	jne	.L84
	.loc 5 368 28
	movq	$0, -88(%rbp)
.L84:
	.loc 5 370 22
	cmpb	$0, -106(%rbp)
	je	.L85
	.loc 5 371 27
	movq	$0, -80(%rbp)
	.loc 5 365 18
	jmp	.L86
.L85:
	.loc 5 373 27
	movq	$0, -104(%rbp)
	.loc 5 365 18
	jmp	.L86
.L79:
	.loc 5 378 19
	movq	-104(%rbp), %rdx
	movl	$0, %ecx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx
	addq	%rax, %rdx
	cmpq	-80(%rbp), %rdx
	jnb	.L87
	movl	$1, %ecx
.L87:
	movq	%rax, -104(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	.loc 5 378 18
	testb	%al, %al
	je	.L86
	.loc 5 380 19
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 380 32
	leaq	.LC5(%rip), %rdi
	call	gettext@PLT
	.loc 5 380 19
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 381 26
	movl	$0, %eax
	jmp	.L92
.L86:
	.loc 5 385 18
	movq	-88(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 5 386 16
	movq	-80(%rbp), %rax
	addq	%rax, -72(%rbp)
.L70:
.LBE6:
	.loc 5 331 13
	cmpq	$0, -88(%rbp)
	jne	.L89
	.loc 5 389 29
	movq	-184(%rbp), %rax
	movzbl	-108(%rbp), %edx
	movb	%dl, (%rax)
.L63:
.LBE5:
	.loc 5 311 9
	cmpq	$0, 32(%rbp)
	jne	.L90
	jmp	.L67
.L95:
.LBB7:
	.loc 5 322 9
	nop
.L67:
.LBE7:
	.loc 5 399 6
	cmpb	$0, -108(%rbp)
	je	.L91
	.loc 5 399 22 discriminator 1
	movq	-104(%rbp), %rcx
	movzbl	-148(%rbp), %edx
	movq	-168(%rbp), %rsi
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	call	create_hole
	.loc 5 399 20 discriminator 1
	xorl	$1, %eax
	.loc 5 399 17 discriminator 1
	testb	%al, %al
	je	.L91
	.loc 5 400 12
	movl	$0, %eax
	jmp	.L92
.L91:
	.loc 5 402 12
	movl	$1, %eax
.L92:
	.loc 5 403 1 discriminator 1
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L93
	.loc 5 403 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L93:
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	sparse_copy, .-sparse_copy
	.type	clone_file, @function
clone_file:
.LFB64:
	.loc 5 409 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 5 411 10
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	$1074041865, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ioctl@PLT
	.loc 5 418 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	clone_file, .-clone_file
	.type	write_zeros, @function
write_zeros:
.LFB65:
	.loc 5 424 1
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
	.loc 5 431 13
	movq	zeros.7384(%rip), %rax
	.loc 5 431 6
	testq	%rax, %rax
	jne	.L100
.LBB8:
	.loc 5 434 15
	movq	nz.7385(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	.loc 5 434 13
	movq	%rax, zeros.7384(%rip)
	.loc 5 435 17
	movq	zeros.7384(%rip), %rax
	.loc 5 435 10
	testq	%rax, %rax
	jne	.L100
	.loc 5 437 17
	leaq	fallback.7386(%rip), %rax
	movq	%rax, zeros.7384(%rip)
	.loc 5 438 14
	movq	$1024, nz.7385(%rip)
.LBE8:
	.loc 5 442 9
	jmp	.L100
.L103:
.LBB9:
	.loc 5 444 18
	movq	-32(%rbp), %rdx
	movq	nz.7385(%rip), %rax
	.loc 5 444 14
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 5 445 12
	movq	zeros.7384(%rip), %rcx
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	full_write@PLT
	.loc 5 445 10
	cmpq	%rax, -8(%rbp)
	je	.L101
	.loc 5 446 16
	movl	$0, %eax
	jmp	.L102
.L101:
	.loc 5 447 15
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.L100:
.LBE9:
	.loc 5 442 9
	cmpq	$0, -32(%rbp)
	jne	.L103
	.loc 5 450 10
	movl	$1, %eax
.L102:
	.loc 5 451 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	write_zeros, .-write_zeros
	.section	.rodata
.LC6:
	.string	"%s: write failed"
	.align 8
.LC7:
	.string	"%s: failed to get extents info"
.LC8:
	.string	"failed to extend %s"
	.text
	.type	extent_copy, @function
extent_copy:
.LFB66:
	.loc 5 471 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -100(%rbp)
	movl	%esi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%r8, -128(%rbp)
	movq	%r9, -136(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -160(%rbp)
	.loc 5 471 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 5 472 9
	movq	$0, -80(%rbp)
	.loc 5 473 9
	movq	$0, -72(%rbp)
	.loc 5 477 9
	movq	$0, -64(%rbp)
	.loc 5 479 8
	movb	$1, -94(%rbp)
.L130:
.LBB10:
	.loc 5 482 12
	movb	$0, -93(%rbp)
.LBB11:
	.loc 5 483 25
	movl	$0, -92(%rbp)
	.loc 5 483 7
	jmp	.L105
.L126:
.LBB12:
	.loc 5 489 17
	movl	-92(%rbp), %edx
	.loc 5 489 23
	movq	-160(%rbp), %rax
	movq	24(%rax), %rax
	.loc 5 489 14
	cmpq	%rax, %rdx
	jnb	.L106
	.loc 5 491 31
	movq	-160(%rbp), %rax
	movq	40(%rax), %rcx
	.loc 5 491 41
	movl	-92(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 5 491 25
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 5 492 29
	movq	-160(%rbp), %rax
	movq	40(%rax), %rcx
	.loc 5 492 39
	movl	-92(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 5 492 23
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L107
.L106:
	.loc 5 496 16
	subl	$1, -92(%rbp)
	.loc 5 497 48
	movq	-160(%rbp), %rax
	movq	40(%rax), %rcx
	.loc 5 497 58
	movl	-92(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 5 497 61
	movq	8(%rax), %rdx
	.loc 5 497 25
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 5 498 23
	movq	$0, -48(%rbp)
.L107:
	.loc 5 508 42
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 5 508 14
	cmpq	%rax, -136(%rbp)
	jge	.L108
	.loc 5 510 18
	movq	-136(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.L109
	.loc 5 511 27
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
.L109:
	.loc 5 512 23
	movq	-136(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
.L108:
	.loc 5 515 37
	movq	-56(%rbp), %rax
	subq	-80(%rbp), %rax
	.loc 5 515 25
	subq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 5 517 29
	movb	$0, -94(%rbp)
	.loc 5 519 14
	cmpq	$0, -32(%rbp)
	je	.L110
	.loc 5 521 19
	movq	-56(%rbp), %rcx
	movl	-100(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 5 521 18
	testq	%rax, %rax
	jns	.L111
	.loc 5 523 19
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 523 36
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 523 29
	call	__errno_location@PLT
	.loc 5 523 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L112
.L138:
	.loc 5 535 21
	nop
	jmp	.L112
.L139:
.LBB13:
	.loc 5 584 17
	nop
.L112:
.LBE13:
	.loc 5 525 19
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	extent_scan_free
	.loc 5 526 26
	movl	$0, %eax
	jmp	.L113
.L111:
	.loc 5 529 18
	cmpb	$0, -93(%rbp)
	je	.L114
	.loc 5 529 33 discriminator 1
	cmpl	$3, 16(%rbp)
	je	.L115
.L114:
	.loc 5 530 23
	movzbl	-93(%rbp), %eax
	xorl	$1, %eax
	.loc 5 530 19
	testb	%al, %al
	je	.L116
	.loc 5 530 37 discriminator 1
	cmpl	$1, 16(%rbp)
	je	.L116
.L115:
	.loc 5 532 25
	cmpl	$3, 16(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rcx
	movq	-152(%rbp), %rsi
	movl	-104(%rbp), %eax
	movl	%eax, %edi
	call	create_hole
	.loc 5 532 23
	xorl	$1, %eax
	.loc 5 532 22
	testb	%al, %al
	jne	.L138
	.loc 5 536 37
	movb	$1, -94(%rbp)
	jmp	.L110
.L116:
.LBB14:
	.loc 5 543 25
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 5 544 22
	cmpb	$0, -93(%rbp)
	je	.L118
	.loc 5 545 30
	movq	-136(%rbp), %rax
	subq	-64(%rbp), %rax
	.loc 5 545 28
	cmpq	%rax, -32(%rbp)
	cmovle	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.L118:
	.loc 5 547 25
	movq	-40(%rbp), %rdx
	movl	-104(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	write_zeros
	.loc 5 547 23
	xorl	$1, %eax
	.loc 5 547 22
	testb	%al, %al
	je	.L119
	.loc 5 549 23
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 5 549 40
	leaq	.LC6(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 549 33
	call	__errno_location@PLT
	.loc 5 549 23
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 551 23
	jmp	.L112
.L119:
	.loc 5 554 28
	movq	-136(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	cmovle	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.L110:
.LBE14:
	.loc 5 558 26
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB15:
	.loc 5 576 28
	movb	$0, -93(%rbp)
	.loc 5 577 28
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 5 580 22
	movq	-48(%rbp), %rdi
	cmpl	$3, 16(%rbp)
	jne	.L120
	.loc 5 580 22 is_stmt 0 discriminator 1
	movq	-128(%rbp), %r10
	jmp	.L121
.L120:
	.loc 5 580 22 discriminator 2
	movl	$0, %r10d
.L121:
	.loc 5 580 22 discriminator 4
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	-104(%rbp), %esi
	movl	-100(%rbp), %eax
	subq	$8, %rsp
	leaq	-95(%rbp), %r8
	pushq	%r8
	leaq	-88(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	pushq	-152(%rbp)
	pushq	-144(%rbp)
	movl	$1, %r9d
	movq	%r10, %r8
	movl	%eax, %edi
	call	sparse_copy
	addq	$48, %rsp
	.loc 5 580 20 is_stmt 1 discriminator 4
	xorl	$1, %eax
	.loc 5 580 18 discriminator 4
	testb	%al, %al
	jne	.L139
	.loc 5 586 36
	movq	-88(%rbp), %rdx
	.loc 5 586 24
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 5 587 19
	movq	-88(%rbp), %rax
	.loc 5 587 18
	testq	%rax, %rax
	je	.L123
	.loc 5 588 35
	movzbl	-95(%rbp), %eax
	movb	%al, -94(%rbp)
.L123:
.LBE15:
	.loc 5 596 14
	movq	-64(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jne	.L124
	.loc 5 598 38
	movq	-160(%rbp), %rax
	movb	$1, 33(%rax)
	.loc 5 599 15
	jmp	.L125
.L124:
.LBE12:
	.loc 5 483 69 discriminator 2
	addl	$1, -92(%rbp)
.L105:
	.loc 5 483 34 discriminator 1
	movl	-92(%rbp), %edx
	.loc 5 483 40 discriminator 1
	movq	-160(%rbp), %rax
	movq	24(%rax), %rax
	.loc 5 483 7 discriminator 1
	cmpq	%rax, %rdx
	jb	.L126
	.loc 5 483 51 discriminator 3
	cmpb	$0, -93(%rbp)
	jne	.L126
.L125:
.LBE11:
	.loc 5 604 7
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	extent_scan_free
	.loc 5 606 15
	movq	-160(%rbp), %rax
	movzbl	33(%rax), %eax
	.loc 5 606 10
	testb	%al, %al
	jne	.L140
	.loc 5 608 13
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	extent_scan_read@PLT
	.loc 5 608 11
	xorl	$1, %eax
	.loc 5 608 10
	testb	%al, %al
	je	.L130
	.loc 5 608 46 discriminator 1
	movq	-160(%rbp), %rax
	movzbl	33(%rax), %eax
	.loc 5 608 40 discriminator 1
	xorl	$1, %eax
	.loc 5 608 37 discriminator 1
	testb	%al, %al
	je	.L130
	.loc 5 610 11
	movq	-144(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 5 610 28
	leaq	.LC7(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 610 21
	call	__errno_location@PLT
	.loc 5 610 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 612 18
	movl	$0, %eax
	jmp	.L113
.L140:
	.loc 5 607 9
	nop
.LBE10:
	.loc 5 624 6
	movq	-64(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jl	.L131
	.loc 5 624 34 discriminator 1
	cmpb	$0, -94(%rbp)
	je	.L132
.L131:
	.loc 5 625 7
	cmpl	$1, 16(%rbp)
	je	.L133
	.loc 5 626 13 discriminator 1
	movq	-136(%rbp), %rdx
	movl	-104(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ftruncate@PLT
	.loc 5 625 7 discriminator 1
	testl	%eax, %eax
	setne	%al
	jmp	.L134
.L133:
	.loc 5 627 15 discriminator 2
	movq	-136(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	-104(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	write_zeros
	.loc 5 625 7 discriminator 2
	xorl	$1, %eax
.L134:
	.loc 5 625 7 is_stmt 0 discriminator 4
	testb	%al, %al
	je	.L132
	.loc 5 629 7 is_stmt 1
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 629 24
	leaq	.LC8(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 629 17
	call	__errno_location@PLT
	.loc 5 629 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 630 14
	movl	$0, %eax
	jmp	.L113
.L132:
	.loc 5 633 6
	cmpl	$3, 16(%rbp)
	jne	.L135
	.loc 5 633 36 discriminator 1
	movq	-64(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jge	.L135
	.loc 5 634 10
	movq	-136(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	movl	-104(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	punch_hole
	.loc 5 634 7
	testl	%eax, %eax
	jns	.L135
	.loc 5 636 7
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 636 24
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 636 17
	call	__errno_location@PLT
	.loc 5 636 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 637 14
	movl	$0, %eax
	jmp	.L113
.L135:
	.loc 5 640 10
	movl	$1, %eax
.L113:
	.loc 5 641 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L136
	call	__stack_chk_fail@PLT
.L136:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	extent_copy, .-extent_copy
	.type	lseek_copy, @function
lseek_copy:
.LFB67:
	.loc 5 659 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -100(%rbp)
	movl	%esi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%r8, -128(%rbp)
	movq	%r9, -136(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -152(%rbp)
	.loc 5 659 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 5 660 9
	movq	$0, -72(%rbp)
	.loc 5 661 9
	movq	$0, -64(%rbp)
	.loc 5 662 9
	movq	$0, -56(%rbp)
	.loc 5 663 8
	movb	$1, -81(%rbp)
	.loc 5 665 9
	jmp	.L142
.L165:
.LBB16:
	.loc 5 667 23
	movq	-136(%rbp), %rcx
	movl	-100(%rbp), %eax
	movl	$4, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -48(%rbp)
	.loc 5 668 10
	cmpq	$0, -48(%rbp)
	jns	.L143
	.loc 5 670 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 670 14
	cmpl	$6, %eax
	jne	.L172
	.loc 5 672 19
	movq	16(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 5 673 14
	movq	-48(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jg	.L143
	.loc 5 676 32
	movl	-100(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, 16(%rbp)
	.loc 5 677 18
	cmpq	$0, 16(%rbp)
	js	.L173
	.loc 5 681 18
	movq	16(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jle	.L174
	.loc 5 684 23
	movq	16(%rbp), %rax
	movq	%rax, -48(%rbp)
.L143:
	.loc 5 688 10
	movq	16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.L149
	.loc 5 689 24
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rbp)
.L149:
	.loc 5 691 11
	movq	-136(%rbp), %rcx
	movl	-100(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 5 691 10
	testq	%rax, %rax
	js	.L175
	.loc 5 694 25
	movb	$0, -81(%rbp)
	.loc 5 695 39
	movq	-136(%rbp), %rax
	subq	-72(%rbp), %rax
	.loc 5 695 13
	subq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 5 697 10
	cmpq	$0, -40(%rbp)
	je	.L151
	.loc 5 699 14
	cmpl	$1, 24(%rbp)
	je	.L152
	.loc 5 701 21
	cmpl	$3, 24(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rcx
	movq	-152(%rbp), %rsi
	movl	-104(%rbp), %eax
	movl	%eax, %edi
	call	create_hole
	.loc 5 701 19
	xorl	$1, %eax
	.loc 5 701 18
	testb	%al, %al
	je	.L153
	.loc 5 704 24
	movl	$0, %eax
	jmp	.L164
.L153:
	.loc 5 705 33
	movb	$1, -81(%rbp)
	jmp	.L151
.L152:
	.loc 5 712 21
	movq	-40(%rbp), %rdx
	movl	-104(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	write_zeros
	.loc 5 712 19
	xorl	$1, %eax
	.loc 5 712 18
	testb	%al, %al
	je	.L151
	.loc 5 714 19
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 5 714 36
	leaq	.LC6(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 714 29
	call	__errno_location@PLT
	.loc 5 714 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 716 26
	movl	$0, %eax
	jmp	.L164
.L151:
	.loc 5 721 13
	movq	-48(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 5 722 22
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 5 723 20
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 5 730 14
	movq	-32(%rbp), %rdi
	cmpl	$1, 24(%rbp)
	je	.L155
	.loc 5 730 14 is_stmt 0 discriminator 1
	movq	-128(%rbp), %r10
	jmp	.L156
.L155:
	.loc 5 730 14 discriminator 2
	movl	$0, %r10d
.L156:
	.loc 5 730 14 discriminator 4
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	-104(%rbp), %esi
	movl	-100(%rbp), %eax
	subq	$8, %rsp
	leaq	-82(%rbp), %r8
	pushq	%r8
	leaq	-80(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	pushq	-152(%rbp)
	pushq	-144(%rbp)
	movl	$1, %r9d
	movq	%r10, %r8
	movl	%eax, %edi
	call	sparse_copy
	addq	$48, %rsp
	.loc 5 730 12 is_stmt 1 discriminator 4
	xorl	$1, %eax
	.loc 5 730 10 discriminator 4
	testb	%al, %al
	je	.L157
	.loc 5 734 16
	movl	$0, %eax
	jmp	.L164
.L157:
	.loc 5 736 28
	movq	-80(%rbp), %rdx
	.loc 5 736 16
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 5 737 11
	movq	-80(%rbp), %rax
	.loc 5 737 10
	testq	%rax, %rax
	je	.L158
	.loc 5 738 27
	movzbl	-82(%rbp), %eax
	movb	%al, -81(%rbp)
.L158:
	.loc 5 739 18
	movq	-80(%rbp), %rax
	.loc 5 739 10
	cmpq	%rax, -32(%rbp)
	jle	.L159
	.loc 5 742 26
	movq	-56(%rbp), %rax
	movq	%rax, 16(%rbp)
	.loc 5 743 11
	jmp	.L163
.L159:
	.loc 5 746 19
	movq	-56(%rbp), %rcx
	movl	-100(%rbp), %eax
	movl	$3, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -136(%rbp)
	.loc 5 747 10
	cmpq	$0, -136(%rbp)
	jns	.L142
	.loc 5 749 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 749 14
	cmpl	$6, %eax
	je	.L176
	.loc 5 750 13
	jmp	.L162
.L142:
.LBE16:
	.loc 5 665 9
	cmpq	$0, -136(%rbp)
	jns	.L165
	jmp	.L163
.L174:
.LBB17:
	.loc 5 682 17
	nop
	jmp	.L163
.L176:
	.loc 5 751 11
	nop
.L163:
.LBE17:
	.loc 5 763 6
	movq	-56(%rbp), %rax
	cmpq	16(%rbp), %rax
	jl	.L166
	.loc 5 763 34 discriminator 1
	cmpb	$0, -81(%rbp)
	je	.L167
.L166:
	.loc 5 764 7
	cmpl	$1, 24(%rbp)
	jne	.L168
	.loc 5 765 15 discriminator 1
	movq	16(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	-104(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	write_zeros
	.loc 5 764 7 discriminator 1
	xorl	$1, %eax
	jmp	.L169
.L168:
	.loc 5 766 15 discriminator 2
	movl	-104(%rbp), %eax
	movq	16(%rbp), %rsi
	movl	%eax, %edi
	call	ftruncate@PLT
	.loc 5 764 7 discriminator 2
	testl	%eax, %eax
	setne	%al
.L169:
	.loc 5 764 7 is_stmt 0 discriminator 4
	testb	%al, %al
	je	.L167
	.loc 5 768 7 is_stmt 1
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 768 24
	leaq	.LC8(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 768 17
	call	__errno_location@PLT
	.loc 5 768 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 769 14
	movl	$0, %eax
	jmp	.L164
.L167:
	.loc 5 772 6
	cmpl	$3, 24(%rbp)
	jne	.L170
	.loc 5 772 36 discriminator 1
	movq	-56(%rbp), %rax
	cmpq	16(%rbp), %rax
	jge	.L170
	.loc 5 773 10
	movq	16(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movl	-104(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	punch_hole
	.loc 5 773 7
	testl	%eax, %eax
	jns	.L170
	.loc 5 775 7
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 775 24
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 775 17
	call	__errno_location@PLT
	.loc 5 775 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 776 14
	movl	$0, %eax
	jmp	.L164
.L170:
	.loc 5 779 10
	movl	$1, %eax
	jmp	.L164
.L172:
.LBB18:
	.loc 5 671 13
	nop
	jmp	.L162
.L173:
	.loc 5 678 17
	nop
	jmp	.L162
.L175:
	.loc 5 692 9
	nop
.L162:
.LBE18:
	.loc 5 782 3
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 782 20
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 782 13
	call	__errno_location@PLT
	.loc 5 782 3
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 783 10
	movl	$0, %eax
.L164:
	.loc 5 784 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L171
	call	__stack_chk_fail@PLT
.L171:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	lseek_copy, .-lseek_copy
	.type	is_ancestor, @function
is_ancestor:
.LFB68:
	.loc 5 794 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 5 795 9
	jmp	.L178
.L181:
	.loc 5 797 20
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 5 797 31
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 5 797 10
	cmpq	%rax, %rdx
	jne	.L179
	.loc 5 797 52 discriminator 1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 5 797 63 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 5 797 40 discriminator 1
	cmpq	%rax, %rdx
	jne	.L179
	.loc 5 798 16
	movl	$1, %eax
	jmp	.L180
.L179:
	.loc 5 799 17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L178:
	.loc 5 795 9
	cmpq	$0, -16(%rbp)
	jne	.L181
	.loc 5 801 10
	movl	$0, %eax
.L180:
	.loc 5 802 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	is_ancestor, .-is_ancestor
	.type	errno_unsupported, @function
errno_unsupported:
.LFB69:
	.loc 5 806 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 5 807 25
	cmpl	$95, -4(%rbp)
	je	.L183
	.loc 5 807 25 is_stmt 0 discriminator 2
	cmpl	$61, -4(%rbp)
	jne	.L184
.L183:
	.loc 5 807 25 discriminator 3
	movl	$1, %eax
	jmp	.L185
.L184:
	.loc 5 807 25 discriminator 4
	movl	$0, %eax
.L185:
	.loc 5 807 25 discriminator 6
	andl	$1, %eax
	.loc 5 808 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	errno_unsupported, .-errno_unsupported
	.type	copy_attr, @function
copy_attr:
.LFB70:
	.loc 5 900 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	.loc 5 901 10
	movl	$1, %eax
	.loc 5 902 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	copy_attr, .-copy_attr
	.section	.rodata
.LC9:
	.string	"cannot access %s"
	.text
	.type	copy_dir, @function
copy_dir:
.LFB71:
	.loc 5 923 1
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
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, %eax
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	%r9, -208(%rbp)
	movb	%al, -180(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -224(%rbp)
	.loc 5 923 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 5 926 21
	movq	-208(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 5 927 8
	movb	$1, -146(%rbp)
	.loc 5 929 16
	movq	-168(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	savedir@PLT
	movq	%rax, -136(%rbp)
	.loc 5 930 6
	cmpq	$0, -136(%rbp)
	jne	.L190
	.loc 5 934 7
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 934 24
	leaq	.LC9(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 934 17
	call	__errno_location@PLT
	.loc 5 934 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 935 14
	movl	$0, %eax
	jmp	.L197
.L190:
	.loc 5 940 8
	movq	-208(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 940 6
	cmpl	$3, %eax
	jne	.L192
	.loc 5 941 42
	movl	$2, -108(%rbp)
.L192:
	.loc 5 943 8
	movb	$0, -145(%rbp)
	.loc 5 944 9
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	.loc 5 945 9
	jmp	.L193
.L196:
.LBB19:
	.loc 5 948 24
	movq	-144(%rbp), %rcx
	movq	-168(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -128(%rbp)
	.loc 5 949 24
	movq	-144(%rbp), %rcx
	movq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -120(%rbp)
	.loc 5 950 32
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 950 12
	movb	%al, -147(%rbp)
	.loc 5 952 13
	movzbl	-180(%rbp), %edx
	leaq	-112(%rbp), %r9
	movq	-200(%rbp), %r8
	movq	-192(%rbp), %rcx
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rax
	pushq	$0
	leaq	-148(%rbp), %rdi
	pushq	%rdi
	leaq	-147(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	movq	%rax, %rdi
	call	copy_internal
	addq	$32, %rsp
	.loc 5 952 10
	movzbl	-146(%rbp), %edx
	.loc 5 952 13
	movzbl	%al, %eax
	.loc 5 952 10
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -146(%rbp)
	.loc 5 956 23
	movq	-224(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	-148(%rbp), %eax
	orl	%edx, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%dl
	movq	-224(%rbp), %rax
	movb	%dl, (%rax)
	.loc 5 958 7
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 5 959 7
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 5 964 11
	movzbl	-148(%rbp), %eax
	.loc 5 964 10
	testb	%al, %al
	jne	.L199
	.loc 5 967 29
	movzbl	-147(%rbp), %eax
	orb	-145(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -145(%rbp)
	.loc 5 968 16
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 5 968 13
	addq	$1, %rax
	addq	%rax, -144(%rbp)
.L193:
.LBE19:
	.loc 5 945 10
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 945 9
	testb	%al, %al
	jne	.L196
	jmp	.L195
.L199:
.LBB20:
	.loc 5 965 9
	nop
.L195:
.LBE20:
	.loc 5 970 3
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 5 971 43
	movq	-216(%rbp), %rax
	movzbl	-145(%rbp), %edx
	movb	%dl, (%rax)
	.loc 5 973 10
	movzbl	-146(%rbp), %eax
.L197:
	.loc 5 974 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L198
	.loc 5 974 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L198:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	copy_dir, .-copy_dir
	.section	.rodata
.LC10:
	.string	"clearing permissions for %s"
	.align 8
.LC11:
	.string	"failed to preserve ownership for %s"
	.text
	.type	set_owner, @function
set_owner:
.LFB72:
	.loc 5 992 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, %eax
	movq	%r9, -104(%rbp)
	movb	%al, -88(%rbp)
	.loc 5 993 9
	movq	-96(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -52(%rbp)
	.loc 5 994 9
	movq	-96(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -48(%rbp)
	.loc 5 1002 7
	movzbl	-88(%rbp), %eax
	xorl	$1, %eax
	.loc 5 1002 6
	testb	%al, %al
	je	.L201
	.loc 5 1002 21 discriminator 1
	movq	-72(%rbp), %rax
	movzbl	30(%rax), %eax
	.loc 5 1002 16 discriminator 1
	testb	%al, %al
	jne	.L202
	.loc 5 1002 41 discriminator 2
	movq	-72(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 1002 37 discriminator 2
	testb	%al, %al
	jne	.L202
	.loc 5 1002 57 discriminator 3
	movq	-72(%rbp), %rax
	movzbl	57(%rax), %eax
	.loc 5 1002 53 discriminator 3
	testb	%al, %al
	je	.L201
.L202:
.LBB21:
	.loc 5 1004 14
	movq	-104(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -44(%rbp)
	.loc 5 1006 11
	movq	-72(%rbp), %rax
	movzbl	30(%rax), %eax
	.loc 5 1006 61
	testb	%al, %al
	jne	.L203
	.loc 5 1006 31 discriminator 2
	movq	-72(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 1006 27 discriminator 2
	testb	%al, %al
	je	.L204
.L203:
	.loc 5 1006 61 discriminator 3
	movq	-96(%rbp), %rax
	movl	24(%rax), %eax
	jmp	.L205
.L204:
	.loc 5 1006 61 is_stmt 0 discriminator 4
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
.L205:
	.loc 5 1005 14 is_stmt 1
	movl	%eax, -40(%rbp)
	.loc 5 1007 47
	movl	-44(%rbp), %eax
	andl	-40(%rbp), %eax
	.loc 5 1007 14
	andl	$448, %eax
	movl	%eax, -36(%rbp)
	.loc 5 1011 19
	movl	-40(%rbp), %eax
	notl	%eax
	.loc 5 1011 49
	orb	$14, %ah
	.loc 5 1011 16
	andl	-44(%rbp), %eax
	andl	$4095, %eax
	.loc 5 1009 10
	testl	%eax, %eax
	je	.L201
	.loc 5 1012 14
	movl	-36(%rbp), %edx
	movl	-84(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	qset_acl@PLT
	.loc 5 1012 11
	testl	%eax, %eax
	je	.L201
	.loc 5 1014 17
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	owner_failure_ok
	.loc 5 1014 15
	xorl	$1, %eax
	.loc 5 1014 14
	testb	%al, %al
	je	.L206
	.loc 5 1015 13
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1015 30
	leaq	.LC10(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1015 23
	call	__errno_location@PLT
	.loc 5 1015 13
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L206:
	.loc 5 1017 20
	movq	-72(%rbp), %rax
	movzbl	50(%rax), %eax
	movzbl	%al, %eax
	.loc 5 1017 18
	negl	%eax
	jmp	.L207
.L201:
.LBE21:
	.loc 5 1021 6
	cmpl	$-1, -84(%rbp)
	je	.L208
	.loc 5 1023 11
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-84(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	fchown@PLT
	.loc 5 1023 10
	testl	%eax, %eax
	jne	.L209
	.loc 5 1024 16
	movl	$1, %eax
	jmp	.L207
.L209:
	.loc 5 1025 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 1025 10
	cmpl	$1, %eax
	je	.L210
	.loc 5 1025 29 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 1025 26 discriminator 1
	cmpl	$22, %eax
	jne	.L211
.L210:
.LBB22:
	.loc 5 1029 29
	call	__errno_location@PLT
	.loc 5 1029 15
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
.LBB23:
	.loc 5 1030 11
	movl	-48(%rbp), %edx
	movl	-84(%rbp), %eax
	movl	$-1, %esi
	movl	%eax, %edi
	call	fchown@PLT
	movl	%eax, -20(%rbp)
.LBE23:
	.loc 5 1031 11
	call	__errno_location@PLT
	.loc 5 1031 17
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L211
.L208:
.LBE22:
	.loc 5 1036 11
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	lchown@PLT
	.loc 5 1036 10
	testl	%eax, %eax
	jne	.L212
	.loc 5 1037 16
	movl	$1, %eax
	jmp	.L207
.L212:
	.loc 5 1038 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 1038 10
	cmpl	$1, %eax
	je	.L213
	.loc 5 1038 29 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 1038 26 discriminator 1
	cmpl	$22, %eax
	jne	.L211
.L213:
.LBB24:
	.loc 5 1042 29
	call	__errno_location@PLT
	.loc 5 1042 15
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
.LBB25:
	.loc 5 1043 11
	movl	-48(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	lchown@PLT
	movl	%eax, -28(%rbp)
.LBE25:
	.loc 5 1044 11
	call	__errno_location@PLT
	.loc 5 1044 17
	movl	-32(%rbp), %edx
	movl	%edx, (%rax)
.L211:
.LBE24:
	.loc 5 1048 9
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	chown_failure_ok
	.loc 5 1048 7
	xorl	$1, %eax
	.loc 5 1048 6
	testb	%al, %al
	je	.L214
	.loc 5 1050 7
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1050 24
	leaq	.LC11(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1050 17
	call	__errno_location@PLT
	.loc 5 1050 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1052 12
	movq	-72(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 5 1052 10
	testb	%al, %al
	je	.L214
	.loc 5 1053 16
	movl	$-1, %eax
	jmp	.L207
.L214:
	.loc 5 1056 10
	movl	$0, %eax
.L207:
	.loc 5 1057 1
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	set_owner, .-set_owner
	.type	set_author, @function
set_author:
.LFB73:
	.loc 5 1066 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 5 1090 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	set_author, .-set_author
	.section	.rodata
	.align 8
.LC12:
	.string	"failed to set default file creation context to %s"
	.align 8
.LC13:
	.string	"failed to get security context of %s"
	.align 8
.LC14:
	.string	"failed to set default file creation context for %s"
	.text
	.globl	set_process_security_ctx
	.type	set_process_security_ctx, @function
set_process_security_ctx:
.LFB74:
	.loc 5 1104 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, %eax
	movq	%r8, -80(%rbp)
	movb	%al, -72(%rbp)
	.loc 5 1104 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 5 1105 8
	movq	-80(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 5 1105 6
	testb	%al, %al
	je	.L217
.LBB26:
	.loc 5 1108 27
	movq	-80(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 5 1108 25
	xorl	$1, %eax
	.loc 5 1108 48
	testb	%al, %al
	jne	.L218
	.loc 5 1108 52 discriminator 2
	movq	-80(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 5 1108 48 discriminator 2
	testb	%al, %al
	je	.L219
.L218:
	.loc 5 1108 48 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L220
.L219:
	.loc 5 1108 48 discriminator 4
	movl	$0, %eax
.L220:
	.loc 5 1108 12 is_stmt 1 discriminator 6
	movb	%al, -34(%rbp)
	andb	$1, -34(%rbp)
	.loc 5 1109 26 discriminator 6
	movzbl	-34(%rbp), %eax
	xorl	$1, %eax
	.loc 5 1109 38 discriminator 6
	testb	%al, %al
	je	.L221
	.loc 5 1109 43 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	55(%rax), %eax
	.loc 5 1109 41 discriminator 1
	xorl	$1, %eax
	.loc 5 1109 38 discriminator 1
	testb	%al, %al
	je	.L221
	.loc 5 1109 38 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L222
.L221:
	.loc 5 1109 38 discriminator 4
	movl	$0, %eax
.L222:
	.loc 5 1109 12 is_stmt 1 discriminator 6
	movb	%al, -33(%rbp)
	andb	$1, -33(%rbp)
	.loc 5 1112 16 discriminator 6
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_lgetfilecon@PLT
	.loc 5 1112 10 discriminator 6
	testl	%eax, %eax
	js	.L223
	.loc 5 1114 15
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	setfscreatecon@PLT
	.loc 5 1114 14
	testl	%eax, %eax
	jns	.L224
	.loc 5 1116 18
	cmpb	$0, -34(%rbp)
	jne	.L225
	.loc 5 1116 30 discriminator 1
	cmpb	$0, -33(%rbp)
	je	.L226
	.loc 5 1116 69 discriminator 2
	call	__errno_location@PLT
	.loc 5 1116 50 discriminator 2
	movl	(%rax), %eax
	movl	%eax, %edi
	call	errno_unsupported
	.loc 5 1116 49 discriminator 2
	xorl	$1, %eax
	.loc 5 1116 46 discriminator 2
	testb	%al, %al
	je	.L226
.L225:
	.loc 5 1117 17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 5 1118 24
	leaq	.LC12(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1117 27
	call	__errno_location@PLT
	.loc 5 1117 17
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L226:
	.loc 5 1120 20
	movq	-80(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 5 1120 18
	testb	%al, %al
	je	.L224
	.loc 5 1122 19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 5 1123 26
	movl	$0, %eax
	jmp	.L232
.L224:
	.loc 5 1126 11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	jmp	.L231
.L223:
	.loc 5 1130 14
	cmpb	$0, -34(%rbp)
	jne	.L229
	.loc 5 1130 26 discriminator 1
	cmpb	$0, -33(%rbp)
	je	.L230
	.loc 5 1130 65 discriminator 2
	call	__errno_location@PLT
	.loc 5 1130 46 discriminator 2
	movl	(%rax), %eax
	movl	%eax, %edi
	call	errno_unsupported
	.loc 5 1130 45 discriminator 2
	xorl	$1, %eax
	.loc 5 1130 42 discriminator 2
	testb	%al, %al
	je	.L230
.L229:
	.loc 5 1132 15
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1133 22
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1132 25
	call	__errno_location@PLT
	.loc 5 1132 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L230:
	.loc 5 1136 16
	movq	-80(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 5 1136 14
	testb	%al, %al
	je	.L231
	.loc 5 1137 20
	movl	$0, %eax
	jmp	.L232
.L217:
.LBE26:
	.loc 5 1140 13
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	.loc 5 1140 11
	testq	%rax, %rax
	je	.L231
	.loc 5 1144 10
	cmpb	$0, -72(%rbp)
	je	.L231
	.loc 5 1144 22 discriminator 1
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	defaultcon@PLT
	.loc 5 1144 19 discriminator 1
	testl	%eax, %eax
	jns	.L231
	.loc 5 1145 35
	call	__errno_location@PLT
	.loc 5 1145 16
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable_ctx_err
	.loc 5 1145 14
	xorl	$1, %eax
	.loc 5 1145 11
	testb	%al, %al
	je	.L231
	.loc 5 1147 11
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1148 18
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1147 21
	call	__errno_location@PLT
	.loc 5 1147 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L231:
	.loc 5 1153 10
	movl	$1, %eax
.L232:
	.loc 5 1154 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L233
	call	__stack_chk_fail@PLT
.L233:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	set_process_security_ctx, .-set_process_security_ctx
	.section	.rodata
	.align 8
.LC15:
	.string	"failed to set the security context of %s"
	.text
	.globl	set_file_security_ctx
	.type	set_file_security_ctx, @function
set_file_security_ctx:
.LFB75:
	.loc 5 1166 1
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
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movq	%rdx, -56(%rbp)
	movb	%al, -44(%rbp)
	.loc 5 1167 24
	movq	-56(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 5 1167 22
	xorl	$1, %eax
	.loc 5 1168 22
	testb	%al, %al
	jne	.L235
	.loc 5 1168 26 discriminator 2
	movq	-56(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 5 1168 22 discriminator 2
	testb	%al, %al
	je	.L236
.L235:
	.loc 5 1168 22 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L237
.L236:
	.loc 5 1168 22 discriminator 4
	movl	$0, %eax
.L237:
	.loc 5 1167 8 is_stmt 1
	movb	%al, -18(%rbp)
	andb	$1, -18(%rbp)
	.loc 5 1169 22
	movzbl	-18(%rbp), %eax
	xorl	$1, %eax
	.loc 5 1169 34
	testb	%al, %al
	je	.L238
	.loc 5 1169 39 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	55(%rax), %eax
	.loc 5 1169 37 discriminator 1
	xorl	$1, %eax
	.loc 5 1169 34 discriminator 1
	testb	%al, %al
	je	.L238
	.loc 5 1169 34 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L239
.L238:
	.loc 5 1169 34 discriminator 4
	movl	$0, %eax
.L239:
	.loc 5 1169 8 is_stmt 1 discriminator 6
	movb	%al, -17(%rbp)
	andb	$1, -17(%rbp)
	.loc 5 1171 9 discriminator 6
	movzbl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	restorecon@PLT
	.loc 5 1171 7 discriminator 6
	xorl	$1, %eax
	.loc 5 1171 6 discriminator 6
	testb	%al, %al
	je	.L240
	.loc 5 1173 10
	cmpb	$0, -18(%rbp)
	jne	.L241
	.loc 5 1173 22 discriminator 1
	cmpb	$0, -17(%rbp)
	je	.L242
	.loc 5 1173 61 discriminator 2
	call	__errno_location@PLT
	.loc 5 1173 42 discriminator 2
	movl	(%rax), %eax
	movl	%eax, %edi
	call	errno_unsupported
	.loc 5 1173 41 discriminator 2
	xorl	$1, %eax
	.loc 5 1173 38 discriminator 2
	testb	%al, %al
	je	.L242
.L241:
	.loc 5 1174 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	.loc 5 1174 26
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1174 19
	call	__errno_location@PLT
	.loc 5 1174 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L242:
	.loc 5 1176 14
	movl	$0, %eax
	jmp	.L243
.L240:
	.loc 5 1179 10
	movl	$1, %eax
.L243:
	.loc 5 1180 1
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	set_file_security_ctx, .-set_file_security_ctx
	.type	fchmod_or_lchmod, @function
fchmod_or_lchmod:
.LFB76:
	.loc 5 1187 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	.loc 5 1189 6
	cmpl	$0, -4(%rbp)
	js	.L245
	.loc 5 1190 12
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fchmod@PLT
	jmp	.L246
.L245:
	.loc 5 1192 10
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lchmod@PLT
.L246:
	.loc 5 1193 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	fchmod_or_lchmod, .-fchmod_or_lchmod
	.type	infer_scantype, @function
infer_scantype:
.LFB77:
	.loc 5 1235 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 5 1237 13
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1236 6
	cmpl	$32768, %eax
	jne	.L248
	.loc 5 1238 13 discriminator 1
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	.loc 5 1238 34 discriminator 1
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	.loc 5 1238 44 discriminator 1
	leaq	511(%rax), %rcx
	testq	%rax, %rax
	cmovs	%rcx, %rax
	sarq	$9, %rax
	.loc 5 1236 7 discriminator 1
	cmpq	%rax, %rdx
	jl	.L249
.L248:
	.loc 5 1239 12
	movl	$1, %eax
	jmp	.L250
.L249:
	.loc 5 1242 31
	movl	-20(%rbp), %eax
	movl	$3, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 5 1242 29
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 5 1243 26
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 5 1243 6
	testq	%rax, %rax
	js	.L251
	.loc 5 1244 12
	movl	$3, %eax
	jmp	.L250
.L251:
	.loc 5 1245 12
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 1245 11
	cmpl	$22, %eax
	je	.L252
	.loc 5 1245 31 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 1245 28 discriminator 1
	cmpl	$95, %eax
	je	.L252
	.loc 5 1246 12
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 1246 44
	cmpl	$6, %eax
	jne	.L253
	.loc 5 1246 44 is_stmt 0 discriminator 1
	movl	$3, %eax
	jmp	.L250
.L253:
	.loc 5 1246 44 discriminator 2
	movl	$0, %eax
	jmp	.L250
.L252:
	.loc 5 1249 23 is_stmt 1
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 5 1250 3
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	extent_scan_init@PLT
	.loc 5 1251 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	extent_scan_read@PLT
	.loc 5 1252 14
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 5 1252 52
	testb	%al, %al
	je	.L255
	.loc 5 1252 52 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L250
.L255:
	.loc 5 1252 52 discriminator 2
	movl	$4, %eax
.L250:
	.loc 5 1253 1 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	infer_scantype, .-infer_scantype
	.section	.rodata
.LC16:
	.string	"cannot open %s for reading"
.LC17:
	.string	"cannot fstat %s"
	.align 8
.LC18:
	.string	"skipping file %s, as it was replaced while being copied"
.LC19:
	.string	"cannot remove %s"
.LC20:
	.string	"removed %s\n"
	.align 8
.LC21:
	.string	"not writing through dangling symlink %s"
.LC22:
	.string	"cannot create regular file %s"
.LC23:
	.string	"failed to clone %s from %s"
.LC24:
	.string	"preserving times for %s"
.LC25:
	.string	"preserving permissions for %s"
.LC26:
	.string	"failed to close %s"
	.text
	.type	copy_reg, @function
copy_reg:
.LFB78:
	.loc 5 1273 1
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
	subq	$552, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movl	%ecx, -556(%rbp)
	movl	%r8d, -560(%rbp)
	movq	%r9, -568(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -576(%rbp)
	.loc 5 1273 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 5 1275 9
	movq	$0, -480(%rbp)
	.loc 5 1276 9
	movq	$0, -464(%rbp)
	.loc 5 1280 10
	movq	-576(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -508(%rbp)
	.loc 5 1284 8
	movb	$1, -521(%rbp)
	.loc 5 1285 8
	movq	-552(%rbp), %rax
	movzbl	49(%rax), %eax
	movb	%al, -520(%rbp)
	.loc 5 1289 28
	movq	-552(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 1287 17
	cmpl	$2, %eax
	jne	.L258
	.loc 5 1287 17 is_stmt 0 discriminator 1
	movl	$131072, %edx
	jmp	.L259
.L258:
	.loc 5 1287 17 discriminator 2
	movl	$0, %edx
.L259:
	.loc 5 1287 17 discriminator 4
	movq	-536(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	movl	%eax, -504(%rbp)
	.loc 5 1290 6 is_stmt 1 discriminator 4
	cmpl	$0, -504(%rbp)
	jns	.L260
	.loc 5 1292 7
	movq	-536(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1292 24
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1292 17
	call	__errno_location@PLT
	.loc 5 1292 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1293 14
	movl	$0, %eax
	jmp	.L325
.L260:
	.loc 5 1296 7
	leaq	-336(%rbp), %rdx
	movl	-504(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 5 1296 6
	testl	%eax, %eax
	je	.L262
	.loc 5 1298 7
	movq	-536(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1298 24
	leaq	.LC17(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1298 17
	call	__errno_location@PLT
	.loc 5 1298 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1299 18
	movb	$0, -521(%rbp)
	.loc 5 1300 7
	jmp	.L263
.L262:
	.loc 5 1305 9
	movq	-576(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-328(%rbp), %rax
	.loc 5 1305 6
	cmpq	%rax, %rdx
	jne	.L264
	.loc 5 1305 9 discriminator 1
	movq	-576(%rbp), %rax
	movq	(%rax), %rdx
	movq	-336(%rbp), %rax
	.loc 5 1305 7 discriminator 1
	cmpq	%rax, %rdx
	je	.L265
.L264:
	.loc 5 1307 7
	movq	-536(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 1308 14
	leaq	.LC18(%rip), %rdi
	call	gettext@PLT
	.loc 5 1307 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1310 18
	movb	$0, -521(%rbp)
	.loc 5 1311 7
	jmp	.L263
.L265:
	.loc 5 1316 9
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 1316 7
	xorl	$1, %eax
	.loc 5 1316 6
	testb	%al, %al
	je	.L266
.LBB27:
	.loc 5 1319 33
	movq	-552(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 5 1319 29
	testb	%al, %al
	je	.L267
	.loc 5 1319 29 is_stmt 0 discriminator 1
	movl	$513, %eax
	jmp	.L268
.L267:
	.loc 5 1319 29 discriminator 2
	movl	$1, %eax
.L268:
	.loc 5 1318 11 is_stmt 1
	movl	%eax, -500(%rbp)
	.loc 5 1320 19
	movl	-500(%rbp), %edx
	movq	-544(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	movl	%eax, -516(%rbp)
	.loc 5 1321 20
	call	__errno_location@PLT
	.loc 5 1321 18
	movl	(%rax), %eax
	movl	%eax, -512(%rbp)
	.loc 5 1330 13
	movq	-552(%rbp), %rax
	movq	40(%rax), %rax
	.loc 5 1330 10
	testq	%rax, %rax
	jne	.L269
	.loc 5 1330 40 discriminator 1
	movq	-552(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 5 1330 36 discriminator 1
	testb	%al, %al
	je	.L270
.L269:
	.loc 5 1331 11
	cmpl	$0, -516(%rbp)
	js	.L270
	.loc 5 1333 17
	movq	-552(%rbp), %rdx
	movq	-544(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_file_security_ctx
	.loc 5 1333 15
	xorl	$1, %eax
	.loc 5 1333 14
	testb	%al, %al
	je	.L270
	.loc 5 1335 20
	movq	-552(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 5 1335 18
	testb	%al, %al
	je	.L270
	.loc 5 1337 30
	movb	$0, -521(%rbp)
	.loc 5 1338 19
	jmp	.L271
.L270:
	.loc 5 1343 10
	cmpl	$0, -516(%rbp)
	jns	.L266
	.loc 5 1343 29 discriminator 1
	movq	-552(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 5 1343 25 discriminator 1
	testb	%al, %al
	je	.L266
	.loc 5 1345 15
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	.loc 5 1345 14
	testl	%eax, %eax
	je	.L272
	.loc 5 1347 15
	movq	-544(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1347 32
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1347 25
	call	__errno_location@PLT
	.loc 5 1347 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1348 26
	movb	$0, -521(%rbp)
	.loc 5 1349 15
	jmp	.L263
.L272:
	.loc 5 1351 16
	movq	-552(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 5 1351 14
	testb	%al, %al
	je	.L273
	.loc 5 1352 13
	movq	-544(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 1352 21
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	.loc 5 1352 13
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L273:
	.loc 5 1355 20
	movq	-568(%rbp), %rax
	movb	$1, (%rax)
	.loc 5 1359 16
	movq	-552(%rbp), %rax
	movq	40(%rax), %rax
	.loc 5 1359 14
	testq	%rax, %rax
	je	.L266
	.loc 5 1362 47
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 1361 21
	movzbl	%al, %ecx
	movq	-552(%rbp), %rdi
	movl	-556(%rbp), %edx
	movq	-544(%rbp), %rsi
	movq	-536(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	set_process_security_ctx
	.loc 5 1361 19
	xorl	$1, %eax
	.loc 5 1361 18
	testb	%al, %al
	je	.L266
	.loc 5 1364 30
	movb	$0, -521(%rbp)
	.loc 5 1365 19
	jmp	.L263
.L266:
.LBE27:
	.loc 5 1371 7
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 1371 6
	testb	%al, %al
	je	.L274
.LBB28:
	.loc 5 1373 5
	nop
.L275:
	.loc 5 1375 11
	movl	$65, -496(%rbp)
	.loc 5 1377 36
	movl	-560(%rbp), %eax
	notl	%eax
	.loc 5 1376 19
	andl	-556(%rbp), %eax
	movl	%eax, %edx
	movl	-496(%rbp), %eax
	orb	$-128, %al
	movl	%eax, %ecx
	movq	-544(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	movl	%eax, -516(%rbp)
	.loc 5 1378 20
	call	__errno_location@PLT
	.loc 5 1378 18
	movl	(%rax), %eax
	movl	%eax, -512(%rbp)
	.loc 5 1390 10
	cmpl	$0, -516(%rbp)
	jns	.L276
	.loc 5 1390 25 discriminator 1
	cmpl	$17, -512(%rbp)
	jne	.L276
	.loc 5 1390 55 discriminator 2
	movq	-552(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 1390 52 discriminator 2
	xorl	$1, %eax
	.loc 5 1390 49 discriminator 2
	testb	%al, %al
	je	.L276
.LBB29:
	.loc 5 1393 15
	leaq	-192(%rbp), %rdx
	movq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 5 1393 14
	testl	%eax, %eax
	jne	.L276
	.loc 5 1394 18
	movl	-168(%rbp), %eax
	andl	$61440, %eax
	.loc 5 1394 15
	cmpl	$40960, %eax
	jne	.L276
	.loc 5 1396 20
	movq	-552(%rbp), %rax
	movzbl	62(%rax), %eax
	.loc 5 1396 18
	testb	%al, %al
	je	.L278
	.loc 5 1399 48
	movl	-560(%rbp), %eax
	notl	%eax
	.loc 5 1398 31
	andl	-556(%rbp), %eax
	movl	%eax, %edx
	movl	-496(%rbp), %ecx
	movq	-544(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	movl	%eax, -516(%rbp)
	.loc 5 1400 32
	call	__errno_location@PLT
	.loc 5 1400 30
	movl	(%rax), %eax
	movl	%eax, -512(%rbp)
	jmp	.L276
.L278:
	.loc 5 1404 19
	movq	-544(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 1404 32
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	.loc 5 1404 19
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1406 30
	movb	$0, -521(%rbp)
	jmp	.L263
.L276:
.LBE29:
	.loc 5 1414 10
	cmpl	$0, -516(%rbp)
	jns	.L279
	.loc 5 1414 25 discriminator 1
	cmpl	$21, -512(%rbp)
	jne	.L279
	.loc 5 1415 14
	movq	-544(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 1415 11
	testb	%al, %al
	je	.L279
	.loc 5 1415 36 discriminator 1
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 5 1415 35 discriminator 1
	leaq	-1(%rax), %rdx
	movq	-544(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 5 1415 24 discriminator 1
	cmpb	$47, %al
	jne	.L279
	.loc 5 1416 20
	movl	$20, -512(%rbp)
	jmp	.L279
.L274:
.LBE28:
	.loc 5 1420 27
	movl	$0, -560(%rbp)
.L279:
	.loc 5 1423 6
	cmpl	$0, -516(%rbp)
	jns	.L280
	.loc 5 1435 10
	cmpl	$2, -512(%rbp)
	jne	.L281
	.loc 5 1435 37 discriminator 1
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 1435 35 discriminator 1
	xorl	$1, %eax
	.loc 5 1435 32 discriminator 1
	testb	%al, %al
	je	.L281
	.loc 5 1435 52 discriminator 2
	movq	-552(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 1435 49 discriminator 2
	xorl	$1, %eax
	.loc 5 1435 46 discriminator 2
	testb	%al, %al
	je	.L281
	.loc 5 1437 20
	movq	-568(%rbp), %rax
	movb	$1, (%rax)
	.loc 5 1438 11
	jmp	.L275
.L281:
	.loc 5 1442 7
	movq	-544(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 1442 29
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 5 1442 7
	movl	-512(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1444 18
	movb	$0, -521(%rbp)
	.loc 5 1445 7
	jmp	.L263
.L280:
	.loc 5 1448 7
	leaq	-192(%rbp), %rdx
	movl	-516(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 5 1448 6
	testl	%eax, %eax
	je	.L282
	.loc 5 1450 7
	movq	-544(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1450 24
	leaq	.LC17(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1450 17
	call	__errno_location@PLT
	.loc 5 1450 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1451 18
	movb	$0, -521(%rbp)
	.loc 5 1452 7
	jmp	.L271
.L282:
	.loc 5 1456 6
	cmpb	$0, -520(%rbp)
	je	.L283
	.loc 5 1456 30 discriminator 1
	movq	-552(%rbp), %rax
	movl	68(%rax), %eax
	.loc 5 1456 26 discriminator 1
	testl	%eax, %eax
	je	.L283
.LBB30:
	.loc 5 1458 23
	movl	-504(%rbp), %edx
	movl	-516(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	clone_file
	.loc 5 1458 12
	testl	%eax, %eax
	sete	%al
	movb	%al, -518(%rbp)
	.loc 5 1459 10
	cmpb	$0, -518(%rbp)
	jne	.L284
	.loc 5 1459 24 discriminator 1
	movq	-552(%rbp), %rax
	movl	68(%rax), %eax
	.loc 5 1459 20 discriminator 1
	cmpl	$2, %eax
	jne	.L283
.L284:
	.loc 5 1461 15
	movzbl	-518(%rbp), %eax
	xorl	$1, %eax
	.loc 5 1461 14
	testb	%al, %al
	je	.L285
	.loc 5 1463 15
	movq	-536(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r13
	movq	-544(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	.loc 5 1463 32
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1463 25
	call	__errno_location@PLT
	.loc 5 1463 15
	movl	(%rax), %eax
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1465 26
	movb	$0, -521(%rbp)
	.loc 5 1466 15
	jmp	.L271
.L285:
	.loc 5 1468 30
	movb	$0, -520(%rbp)
.L283:
.LBE30:
	.loc 5 1472 6
	cmpb	$0, -520(%rbp)
	je	.L286
.LBB31:
	.loc 5 1475 30
	call	getpagesize@PLT
	.loc 5 1475 14
	cltq
	movq	%rax, -456(%rbp)
	.loc 5 1476 25
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	pushq	-104(%rbp)
	pushq	-112(%rbp)
	pushq	-120(%rbp)
	pushq	-128(%rbp)
	pushq	-136(%rbp)
	pushq	-144(%rbp)
	pushq	-152(%rbp)
	pushq	-160(%rbp)
	pushq	-168(%rbp)
	pushq	-176(%rbp)
	pushq	-184(%rbp)
	pushq	-192(%rbp)
	call	io_blksize
	addq	$144, %rsp
	movq	%rax, -472(%rbp)
	.loc 5 1477 26
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	jle	.L287
	.loc 5 1477 26 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L287
	.loc 5 1477 26 discriminator 3
	movq	-136(%rbp), %rax
	jmp	.L288
.L287:
	.loc 5 1477 26 discriminator 4
	movl	$512, %eax
.L288:
	.loc 5 1477 14 is_stmt 1 discriminator 6
	movq	%rax, -448(%rbp)
	.loc 5 1480 32 discriminator 6
	leaq	-416(%rbp), %rdx
	leaq	-336(%rbp), %rcx
	movl	-504(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	infer_scantype
	movl	%eax, -492(%rbp)
	.loc 5 1482 10 discriminator 6
	cmpl	$0, -492(%rbp)
	jne	.L289
	.loc 5 1484 11
	movq	-536(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1484 28
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1484 21
	call	__errno_location@PLT
	.loc 5 1484 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1485 22
	movb	$0, -521(%rbp)
	.loc 5 1486 11
	jmp	.L271
.L289:
	.loc 5 1489 12
	movl	-168(%rbp), %eax
	andl	$61440, %eax
	.loc 5 1490 12
	cmpl	$32768, %eax
	jne	.L291
	.loc 5 1490 17 discriminator 1
	movq	-552(%rbp), %rax
	movl	12(%rax), %eax
	.loc 5 1490 12 discriminator 1
	cmpl	$3, %eax
	je	.L292
	.loc 5 1491 21
	movq	-552(%rbp), %rax
	movl	12(%rax), %eax
	.loc 5 1491 16
	cmpl	$2, %eax
	jne	.L291
	.loc 5 1492 20
	cmpl	$1, -492(%rbp)
	je	.L291
.L292:
	.loc 5 1490 12 discriminator 3
	movl	$1, %eax
	jmp	.L293
.L291:
	.loc 5 1490 12 is_stmt 0 discriminator 2
	movl	$0, %eax
.L293:
	.loc 5 1488 12 is_stmt 1
	movb	%al, -517(%rbp)
	andb	$1, -517(%rbp)
	.loc 5 1494 7
	movl	-504(%rbp), %eax
	movl	$2, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	fdadvise@PLT
	.loc 5 1498 11
	movzbl	-517(%rbp), %eax
	xorl	$1, %eax
	.loc 5 1498 10
	testb	%al, %al
	je	.L294
.LBB32:
	.loc 5 1502 18
	movabsq	$9223372036854775807, %rax
	subq	-456(%rbp), %rax
	movq	%rax, -440(%rbp)
	.loc 5 1503 25
	pushq	-200(%rbp)
	pushq	-208(%rbp)
	pushq	-216(%rbp)
	pushq	-224(%rbp)
	pushq	-232(%rbp)
	pushq	-240(%rbp)
	pushq	-248(%rbp)
	pushq	-256(%rbp)
	pushq	-264(%rbp)
	pushq	-272(%rbp)
	pushq	-280(%rbp)
	pushq	-288(%rbp)
	pushq	-296(%rbp)
	pushq	-304(%rbp)
	pushq	-312(%rbp)
	pushq	-320(%rbp)
	pushq	-328(%rbp)
	pushq	-336(%rbp)
	call	io_blksize
	addq	$144, %rsp
	movq	%rax, %rcx
	movq	-440(%rbp), %rdx
	movq	-472(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	buffer_lcm@PLT
	movq	%rax, -432(%rbp)
	.loc 5 1508 15
	movl	-312(%rbp), %eax
	andl	$61440, %eax
	.loc 5 1508 14
	cmpl	$32768, %eax
	jne	.L295
	.loc 5 1508 59 discriminator 1
	movq	-288(%rbp), %rax
	.loc 5 1508 45 discriminator 1
	cmpq	%rax, -472(%rbp)
	jbe	.L295
	.loc 5 1509 35
	movq	-288(%rbp), %rax
	.loc 5 1509 44
	addq	$1, %rax
	.loc 5 1509 22
	movq	%rax, -472(%rbp)
.L295:
	.loc 5 1514 20
	movq	-432(%rbp), %rdx
	movq	-472(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -472(%rbp)
	.loc 5 1515 32
	movq	-472(%rbp), %rax
	movl	$0, %edx
	divq	-432(%rbp)
	movq	%rdx, %rax
	.loc 5 1515 20
	subq	%rax, -472(%rbp)
	.loc 5 1516 14
	cmpq	$0, -472(%rbp)
	je	.L296
	.loc 5 1516 29 discriminator 1
	movq	-440(%rbp), %rax
	cmpq	-472(%rbp), %rax
	jnb	.L294
.L296:
	.loc 5 1517 22
	movq	-432(%rbp), %rax
	movq	%rax, -472(%rbp)
.L294:
.LBE32:
	.loc 5 1520 19
	movq	-472(%rbp), %rdx
	movq	-456(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -480(%rbp)
	.loc 5 1521 13
	movq	-456(%rbp), %rdx
	movq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ptr_align
	movq	%rax, -424(%rbp)
	.loc 5 1524 12
	movb	$0, -522(%rbp)
	.loc 5 1525 11
	cmpl	$4, -492(%rbp)
	jne	.L297
	.loc 5 1526 16
	cmpb	$0, -517(%rbp)
	je	.L298
	.loc 5 1526 16 is_stmt 0 discriminator 1
	movq	-552(%rbp), %rax
	movl	12(%rax), %edi
	jmp	.L299
.L298:
	.loc 5 1526 16 discriminator 2
	movl	$1, %edi
.L299:
	.loc 5 1526 16 discriminator 4
	movq	-288(%rbp), %r9
	movq	-448(%rbp), %r10
	movq	-472(%rbp), %rcx
	movq	-424(%rbp), %rdx
	movl	-516(%rbp), %esi
	movl	-504(%rbp), %eax
	leaq	-416(%rbp), %r8
	pushq	%r8
	pushq	-544(%rbp)
	pushq	-536(%rbp)
	pushq	%rdi
	movq	%r10, %r8
	movl	%eax, %edi
	call	extent_copy
	addq	$32, %rsp
	.loc 5 1525 11 is_stmt 1 discriminator 4
	xorl	$1, %eax
	jmp	.L300
.L297:
	.loc 5 1525 11 is_stmt 0 discriminator 1
	cmpl	$3, -492(%rbp)
	jne	.L301
	.loc 5 1532 16 is_stmt 1
	cmpb	$0, -517(%rbp)
	je	.L302
	.loc 5 1532 16 is_stmt 0 discriminator 1
	movq	-552(%rbp), %rax
	movl	12(%rax), %edi
	jmp	.L303
.L302:
	.loc 5 1532 16 discriminator 2
	movl	$1, %edi
.L303:
	.loc 5 1532 16 discriminator 4
	movq	-288(%rbp), %r8
	movq	-416(%rbp), %r9
	movq	-448(%rbp), %r10
	movq	-472(%rbp), %rcx
	movq	-424(%rbp), %rdx
	movl	-516(%rbp), %esi
	movl	-504(%rbp), %eax
	pushq	-544(%rbp)
	pushq	-536(%rbp)
	pushq	%rdi
	pushq	%r8
	movq	%r10, %r8
	movl	%eax, %edi
	call	lseek_copy
	addq	$32, %rsp
	.loc 5 1525 11 is_stmt 1 discriminator 4
	xorl	$1, %eax
	jmp	.L300
.L301:
	.loc 5 1539 30
	movq	-552(%rbp), %rax
	movl	12(%rax), %eax
	.loc 5 1537 16
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %r9d
	cmpb	$0, -517(%rbp)
	je	.L305
	.loc 5 1537 16 is_stmt 0 discriminator 1
	movq	-448(%rbp), %r8
	jmp	.L306
.L305:
	.loc 5 1537 16 discriminator 2
	movl	$0, %r8d
.L306:
	.loc 5 1537 16 discriminator 4
	movq	-472(%rbp), %rcx
	movq	-424(%rbp), %rdx
	movl	-516(%rbp), %esi
	movl	-504(%rbp), %eax
	subq	$8, %rsp
	leaq	-522(%rbp), %rdi
	pushq	%rdi
	leaq	-488(%rbp), %rdi
	pushq	%rdi
	pushq	$-1
	pushq	-544(%rbp)
	pushq	-536(%rbp)
	movl	%eax, %edi
	call	sparse_copy
	addq	$48, %rsp
	.loc 5 1525 11 is_stmt 1 discriminator 4
	xorl	$1, %eax
.L300:
	.loc 5 1525 10 discriminator 5
	testb	%al, %al
	je	.L307
	.loc 5 1543 22
	movb	$0, -521(%rbp)
	.loc 5 1544 11
	jmp	.L271
.L307:
	.loc 5 1546 16
	movzbl	-522(%rbp), %eax
	.loc 5 1546 15
	testb	%al, %al
	je	.L286
	.loc 5 1546 37 discriminator 1
	movq	-488(%rbp), %rdx
	movl	-516(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ftruncate@PLT
	.loc 5 1546 34 discriminator 1
	testl	%eax, %eax
	jns	.L286
	.loc 5 1548 11
	movq	-544(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1548 28
	leaq	.LC8(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1548 21
	call	__errno_location@PLT
	.loc 5 1548 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1549 22
	movb	$0, -521(%rbp)
	.loc 5 1550 11
	jmp	.L271
.L286:
.LBE31:
	.loc 5 1554 8
	movq	-552(%rbp), %rax
	movzbl	31(%rax), %eax
	.loc 5 1554 6
	testb	%al, %al
	je	.L309
.LBB33:
	.loc 5 1557 21
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	%rax, -368(%rbp)
	movq	%rdx, -360(%rbp)
	.loc 5 1558 21
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, -352(%rbp)
	movq	%rdx, -344(%rbp)
	.loc 5 1560 11
	leaq	-368(%rbp), %rdx
	movq	-544(%rbp), %rcx
	movl	-516(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	fdutimens@PLT
	.loc 5 1560 10
	testl	%eax, %eax
	je	.L309
	.loc 5 1562 11
	movq	-544(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1562 28
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1562 21
	call	__errno_location@PLT
	.loc 5 1562 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1563 16
	movq	-552(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 5 1563 14
	testb	%al, %al
	je	.L309
	.loc 5 1565 26
	movb	$0, -521(%rbp)
	jmp	.L271
.L309:
.LBE33:
	.loc 5 1573 8
	movq	-552(%rbp), %rax
	movzbl	29(%rax), %eax
	.loc 5 1573 6
	testb	%al, %al
	je	.L327
	.loc 5 1573 34 discriminator 1
	movq	-576(%rbp), %rax
	movl	28(%rax), %edx
	movl	-164(%rbp), %eax
	.loc 5 1573 29 discriminator 1
	cmpl	%eax, %edx
	jne	.L312
	.loc 5 1573 34 discriminator 2
	movq	-576(%rbp), %rax
	movl	32(%rax), %edx
	movl	-160(%rbp), %eax
	.loc 5 1573 32 discriminator 2
	cmpl	%eax, %edx
	je	.L327
.L312:
	.loc 5 1575 58
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 1575 15
	movzbl	%al, %edi
	leaq	-192(%rbp), %r8
	movq	-576(%rbp), %rcx
	movl	-516(%rbp), %edx
	movq	-544(%rbp), %rsi
	movq	-552(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	set_owner
	.loc 5 1575 7
	cmpl	$-1, %eax
	je	.L313
	testl	%eax, %eax
	je	.L314
	jmp	.L311
.L313:
	.loc 5 1578 22
	movb	$0, -521(%rbp)
	.loc 5 1579 11
	jmp	.L271
.L314:
	.loc 5 1582 20
	andl	$-3585, -508(%rbp)
	.loc 5 1583 11
	jmp	.L311
.L327:
	.loc 5 1585 5
	nop
.L311:
	.loc 5 1590 8
	movq	-552(%rbp), %rax
	movzbl	53(%rax), %eax
	.loc 5 1590 6
	testb	%al, %al
	je	.L315
.LBB34:
	.loc 5 1592 12
	movb	$0, -519(%rbp)
	.loc 5 1594 15
	movl	-168(%rbp), %eax
	.loc 5 1594 24
	andl	$128, %eax
	.loc 5 1594 10
	testl	%eax, %eax
	jne	.L316
	.loc 5 1594 38 discriminator 1
	call	geteuid@PLT
	.loc 5 1594 35 discriminator 1
	testl	%eax, %eax
	je	.L316
	.loc 5 1596 28
	movq	-544(%rbp), %rcx
	movl	-516(%rbp), %eax
	movl	$384, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	fchmod_or_lchmod
	.loc 5 1596 26
	testl	%eax, %eax
	sete	%al
	movb	%al, -519(%rbp)
.L316:
	.loc 5 1600 12
	movq	-552(%rbp), %rdi
	movl	-516(%rbp), %ecx
	movq	-544(%rbp), %rdx
	movl	-504(%rbp), %esi
	movq	-536(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	copy_attr
	.loc 5 1600 11
	xorl	$1, %eax
	.loc 5 1600 10
	testb	%al, %al
	je	.L317
	.loc 5 1601 15
	movq	-552(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 5 1601 11
	testb	%al, %al
	je	.L317
	.loc 5 1602 20
	movb	$0, -521(%rbp)
.L317:
	.loc 5 1604 10
	cmpb	$0, -519(%rbp)
	je	.L315
	.loc 5 1605 59
	movl	-560(%rbp), %eax
	notl	%eax
	.loc 5 1605 9
	andl	-556(%rbp), %eax
	movl	%eax, %edx
	movq	-544(%rbp), %rcx
	movl	-516(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	fchmod_or_lchmod
.L315:
.LBE34:
	.loc 5 1608 3
	movq	-576(%rbp), %rdx
	movl	-516(%rbp), %ecx
	movq	-544(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	set_author
	.loc 5 1610 8
	movq	-552(%rbp), %rax
	movzbl	30(%rax), %eax
	.loc 5 1610 6
	testb	%al, %al
	jne	.L318
	.loc 5 1610 28 discriminator 1
	movq	-552(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 1610 24 discriminator 1
	testb	%al, %al
	je	.L319
.L318:
	.loc 5 1612 11
	movl	-508(%rbp), %edi
	movl	-516(%rbp), %ecx
	movq	-544(%rbp), %rdx
	movl	-504(%rbp), %esi
	movq	-536(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	copy_acl@PLT
	.loc 5 1612 10
	testl	%eax, %eax
	je	.L328
	.loc 5 1613 15
	movq	-552(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 5 1613 11
	testb	%al, %al
	je	.L328
	.loc 5 1614 20
	movb	$0, -521(%rbp)
	.loc 5 1612 10
	jmp	.L328
.L319:
	.loc 5 1616 13
	movq	-552(%rbp), %rax
	movzbl	57(%rax), %eax
	.loc 5 1616 11
	testb	%al, %al
	je	.L321
	.loc 5 1618 11
	movq	-552(%rbp), %rax
	movl	16(%rax), %edx
	movl	-516(%rbp), %ecx
	movq	-544(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	set_acl@PLT
	.loc 5 1618 10
	testl	%eax, %eax
	je	.L271
	.loc 5 1619 20
	movb	$0, -521(%rbp)
	jmp	.L271
.L321:
	.loc 5 1621 13
	movq	-552(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 5 1621 11
	testb	%al, %al
	je	.L322
	.loc 5 1621 44 discriminator 1
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 1621 41 discriminator 1
	testb	%al, %al
	je	.L322
	.loc 5 1623 56
	call	cached_umask
	.loc 5 1623 55
	notl	%eax
	.loc 5 1623 11
	andl	$438, %eax
	movl	%eax, %edx
	movl	-516(%rbp), %ecx
	movq	-544(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	set_acl@PLT
	.loc 5 1623 10
	testl	%eax, %eax
	je	.L271
	.loc 5 1624 20
	movb	$0, -521(%rbp)
	.loc 5 1623 10
	jmp	.L271
.L322:
	.loc 5 1626 11
	cmpl	$0, -560(%rbp)
	je	.L329
	.loc 5 1628 32
	call	cached_umask
	.loc 5 1628 30
	notl	%eax
	.loc 5 1628 27
	andl	%eax, -560(%rbp)
	.loc 5 1629 10
	cmpl	$0, -560(%rbp)
	je	.L329
	.loc 5 1630 14
	movl	-556(%rbp), %edx
	movq	-544(%rbp), %rcx
	movl	-516(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	fchmod_or_lchmod
	.loc 5 1630 11
	testl	%eax, %eax
	je	.L329
	.loc 5 1632 11
	movq	-544(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1632 28
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1632 21
	call	__errno_location@PLT
	.loc 5 1632 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1634 16
	movq	-552(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 5 1634 14
	testb	%al, %al
	je	.L329
	.loc 5 1635 24
	movb	$0, -521(%rbp)
	jmp	.L271
.L328:
	.loc 5 1612 10
	nop
	jmp	.L271
.L329:
	.loc 5 1639 1
	nop
.L271:
	.loc 5 1640 7
	movl	-516(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 5 1640 6
	testl	%eax, %eax
	jns	.L330
	.loc 5 1642 7
	movq	-544(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1642 24
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1642 17
	call	__errno_location@PLT
	.loc 5 1642 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1643 18
	movb	$0, -521(%rbp)
	jmp	.L263
.L330:
	.loc 5 1645 1
	nop
.L263:
	.loc 5 1646 7
	movl	-504(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 5 1646 6
	testl	%eax, %eax
	jns	.L324
	.loc 5 1648 7
	movq	-536(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 1648 24
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 1648 17
	call	__errno_location@PLT
	.loc 5 1648 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 1649 18
	movb	$0, -521(%rbp)
.L324:
	.loc 5 1652 3
	movq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 5 1653 3
	movq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 5 1654 10
	movzbl	-521(%rbp), %eax
.L325:
	.loc 5 1655 1 discriminator 1
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L326
	.loc 5 1655 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L326:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	copy_reg, .-copy_reg
	.type	same_file_ok, @function
same_file_ok:
.LFB79:
	.loc 5 1670 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%rcx, -384(%rbp)
	movq	%r8, -392(%rbp)
	movq	%r9, -400(%rbp)
	.loc 5 1670 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 5 1677 15
	movq	-368(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-384(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L332
	.loc 5 1677 15 is_stmt 0 discriminator 1
	movq	-368(%rbp), %rax
	movq	(%rax), %rdx
	movq	-384(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L332
	.loc 5 1677 15 discriminator 3
	movl	$1, %eax
	jmp	.L333
.L332:
	.loc 5 1677 15 discriminator 4
	movl	$0, %eax
.L333:
	.loc 5 1677 8 is_stmt 1 discriminator 6
	movb	%al, -347(%rbp)
	andb	$1, -347(%rbp)
	.loc 5 1679 15 discriminator 6
	movq	-400(%rbp), %rax
	movb	$0, (%rax)
	.loc 5 1686 6 discriminator 6
	cmpb	$0, -347(%rbp)
	je	.L334
	.loc 5 1686 16 discriminator 1
	movq	-392(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 5 1686 12 discriminator 1
	testb	%al, %al
	je	.L334
	.loc 5 1688 19
	movq	-400(%rbp), %rax
	movb	$1, (%rax)
	.loc 5 1689 14
	movl	$1, %eax
	jmp	.L364
.L334:
	.loc 5 1692 8
	movq	-392(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 1692 6
	cmpl	$2, %eax
	jne	.L336
	.loc 5 1694 17
	movzbl	-347(%rbp), %eax
	movb	%al, -348(%rbp)
	.loc 5 1699 11
	movq	-368(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1699 10
	cmpl	$40960, %eax
	jne	.L337
	.loc 5 1699 40 discriminator 1
	movq	-384(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1699 37 discriminator 1
	cmpl	$40960, %eax
	jne	.L337
.LBB35:
	.loc 5 1701 21
	movq	-376(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	same_name@PLT
	movb	%al, -346(%rbp)
	.loc 5 1702 16
	movzbl	-346(%rbp), %eax
	xorl	$1, %eax
	.loc 5 1702 14
	testb	%al, %al
	je	.L338
	.loc 5 1705 20
	movq	-392(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 1705 18
	testl	%eax, %eax
	je	.L339
	.loc 5 1706 24
	movl	$1, %eax
	jmp	.L364
.L339:
	.loc 5 1712 18
	cmpb	$0, -348(%rbp)
	je	.L338
	.loc 5 1714 31
	movq	-400(%rbp), %rax
	movb	$1, (%rax)
	.loc 5 1715 29
	movq	-392(%rbp), %rax
	movzbl	24(%rax), %eax
	movzbl	%al, %eax
	.loc 5 1715 19
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 5 1715 26
	andl	$1, %eax
	jmp	.L364
.L338:
	.loc 5 1719 11
	movzbl	-346(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 5 1719 18
	andl	$1, %eax
	jmp	.L364
.L337:
.LBE35:
	.loc 5 1722 19
	movq	-368(%rbp), %rax
	movq	%rax, -344(%rbp)
	.loc 5 1723 19
	movq	-384(%rbp), %rax
	movq	%rax, -336(%rbp)
	jmp	.L340
.L336:
	.loc 5 1727 11
	movzbl	-347(%rbp), %eax
	xorl	$1, %eax
	.loc 5 1727 10
	testb	%al, %al
	je	.L341
	.loc 5 1728 16
	movl	$1, %eax
	jmp	.L364
.L341:
	.loc 5 1730 11
	leaq	-320(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 5 1730 10
	testl	%eax, %eax
	jne	.L342
	.loc 5 1731 14
	leaq	-176(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 5 1731 11
	testl	%eax, %eax
	je	.L343
.L342:
	.loc 5 1732 16
	movl	$1, %eax
	jmp	.L364
.L343:
	.loc 5 1734 19
	leaq	-176(%rbp), %rax
	movq	%rax, -344(%rbp)
	.loc 5 1735 19
	leaq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	.loc 5 1737 19
	movq	-344(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-336(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L344
	.loc 5 1737 19 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rdx
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L344
	.loc 5 1737 19 discriminator 3
	movl	$1, %eax
	jmp	.L345
.L344:
	.loc 5 1737 19 discriminator 4
	movl	$0, %eax
.L345:
	.loc 5 1737 17 is_stmt 1 discriminator 6
	movb	%al, -348(%rbp)
	andb	$1, -348(%rbp)
	.loc 5 1744 11 discriminator 6
	movq	-344(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1744 10 discriminator 6
	cmpl	$40960, %eax
	jne	.L340
	.loc 5 1744 45 discriminator 1
	movq	-336(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1744 42 discriminator 1
	cmpl	$40960, %eax
	jne	.L340
	.loc 5 1745 15
	movq	-392(%rbp), %rax
	movzbl	21(%rax), %eax
	.loc 5 1745 11
	testb	%al, %al
	je	.L340
	.loc 5 1746 16
	movl	$1, %eax
	jmp	.L364
.L340:
	.loc 5 1754 8
	movq	-392(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 1754 6
	testl	%eax, %eax
	je	.L346
	.loc 5 1756 11
	movzbl	-348(%rbp), %eax
	xorl	$1, %eax
	.loc 5 1756 10
	testb	%al, %al
	je	.L347
	.loc 5 1774 19
	movq	-392(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 1774 16
	xorl	$1, %eax
	.loc 5 1774 14
	testb	%al, %al
	je	.L348
	.loc 5 1775 20
	movq	-392(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 1775 16
	cmpl	$2, %eax
	je	.L348
	.loc 5 1776 19
	movq	-344(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1776 16
	cmpl	$40960, %eax
	jne	.L348
	.loc 5 1777 21
	movq	-336(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1777 16
	cmpl	$40960, %eax
	je	.L348
	.loc 5 1778 20
	movl	$0, %eax
	jmp	.L364
.L348:
	.loc 5 1780 18
	movl	$1, %eax
	jmp	.L364
.L347:
	.loc 5 1784 16
	movq	-376(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	same_name@PLT
	movzbl	%al, %eax
	.loc 5 1784 7
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 5 1784 14
	andl	$1, %eax
	jmp	.L364
.L346:
	.loc 5 1804 8
	movq	-392(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 1804 6
	testb	%al, %al
	jne	.L349
	.loc 5 1804 24 discriminator 1
	movq	-392(%rbp), %rax
	movzbl	21(%rax), %eax
	.loc 5 1804 20 discriminator 1
	testb	%al, %al
	je	.L350
.L349:
	.loc 5 1810 11
	movq	-336(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1810 10
	cmpl	$40960, %eax
	jne	.L351
	.loc 5 1811 16
	movl	$1, %eax
	jmp	.L364
.L351:
	.loc 5 1815 10
	cmpb	$0, -348(%rbp)
	je	.L350
	.loc 5 1816 29
	movq	-336(%rbp), %rax
	movq	16(%rax), %rax
	.loc 5 1816 11
	cmpq	$1, %rax
	jbe	.L350
	.loc 5 1817 16
	movq	-376(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	same_name@PLT
	.loc 5 1817 14
	xorl	$1, %eax
	.loc 5 1817 11
	testb	%al, %al
	je	.L350
	.loc 5 1818 19
	movq	-392(%rbp), %rax
	movzbl	24(%rax), %eax
	movzbl	%al, %eax
	.loc 5 1818 9
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 5 1818 16
	andl	$1, %eax
	jmp	.L364
.L350:
	.loc 5 1823 8
	movq	-344(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1823 6
	cmpl	$40960, %eax
	je	.L352
	.loc 5 1823 43 discriminator 1
	movq	-336(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1823 39 discriminator 1
	cmpl	$40960, %eax
	je	.L352
	.loc 5 1825 12
	movq	-344(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-336(%rbp), %rax
	movq	8(%rax), %rax
	.loc 5 1825 10
	cmpq	%rax, %rdx
	jne	.L353
	.loc 5 1825 12 discriminator 1
	movq	-344(%rbp), %rax
	movq	(%rax), %rdx
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	.loc 5 1825 11 discriminator 1
	cmpq	%rax, %rdx
	je	.L354
.L353:
	.loc 5 1826 16
	movl	$1, %eax
	jmp	.L364
.L354:
	.loc 5 1829 12
	movq	-392(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 5 1829 10
	testb	%al, %al
	je	.L352
	.loc 5 1831 23
	movq	-400(%rbp), %rax
	movb	$1, (%rax)
	.loc 5 1832 18
	movl	$1, %eax
	jmp	.L364
.L352:
	.loc 5 1856 8
	movq	-392(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 1856 6
	testb	%al, %al
	je	.L355
	.loc 5 1857 10
	movq	-368(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1857 7
	cmpl	$40960, %eax
	jne	.L355
	.loc 5 1858 25
	movq	-336(%rbp), %rax
	movq	16(%rax), %rax
	.loc 5 1858 7
	cmpq	$1, %rax
	jbe	.L355
.LBB36:
	.loc 5 1860 23
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	canonicalize_file_name@PLT
	movq	%rax, -328(%rbp)
	.loc 5 1861 10
	cmpq	$0, -328(%rbp)
	je	.L355
.LBB37:
	.loc 5 1863 27
	movq	-376(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	same_name@PLT
	movzbl	%al, %eax
	.loc 5 1863 11
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 5 1863 16
	movb	%al, -345(%rbp)
	andb	$1, -345(%rbp)
	.loc 5 1864 11
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 5 1865 18
	movzbl	-345(%rbp), %eax
	jmp	.L364
.L355:
.LBE37:
.LBE36:
	.loc 5 1870 8
	movq	-392(%rbp), %rax
	movzbl	58(%rax), %eax
	.loc 5 1870 6
	testb	%al, %al
	je	.L356
	.loc 5 1870 27 discriminator 1
	movq	-336(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1870 24 discriminator 1
	cmpl	$40960, %eax
	jne	.L356
	.loc 5 1871 12
	movl	$1, %eax
	jmp	.L364
.L356:
	.loc 5 1873 8
	movq	-392(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 1873 6
	cmpl	$2, %eax
	jne	.L357
	.loc 5 1875 14
	movq	-344(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1875 10
	cmpl	$40960, %eax
	je	.L358
	.loc 5 1876 20
	movq	-344(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -176(%rbp)
	movq	%rbx, -168(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -160(%rbp)
	movq	%rbx, -152(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	80(%rax), %rcx
	movq	88(%rax), %rbx
	movq	%rcx, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movq	96(%rax), %rcx
	movq	104(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	112(%rax), %rcx
	movq	120(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	136(%rax), %rdx
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	jmp	.L359
.L358:
	.loc 5 1877 16
	leaq	-176(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 5 1877 15
	testl	%eax, %eax
	je	.L359
	.loc 5 1878 16
	movl	$1, %eax
	jmp	.L364
.L359:
	.loc 5 1880 14
	movq	-336(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1880 10
	cmpl	$40960, %eax
	je	.L360
	.loc 5 1881 20
	movq	-336(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -320(%rbp)
	movq	%rbx, -312(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -304(%rbp)
	movq	%rbx, -296(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -288(%rbp)
	movq	%rbx, -280(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -272(%rbp)
	movq	%rbx, -264(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -256(%rbp)
	movq	%rbx, -248(%rbp)
	movq	80(%rax), %rcx
	movq	88(%rax), %rbx
	movq	%rcx, -240(%rbp)
	movq	%rbx, -232(%rbp)
	movq	96(%rax), %rcx
	movq	104(%rax), %rbx
	movq	%rcx, -224(%rbp)
	movq	%rbx, -216(%rbp)
	movq	112(%rax), %rcx
	movq	120(%rax), %rbx
	movq	%rcx, -208(%rbp)
	movq	%rbx, -200(%rbp)
	movq	136(%rax), %rdx
	movq	128(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	jmp	.L361
.L360:
	.loc 5 1882 16
	leaq	-320(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 5 1882 15
	testl	%eax, %eax
	je	.L361
	.loc 5 1883 16
	movl	$1, %eax
	jmp	.L364
.L361:
	.loc 5 1885 14
	movq	-168(%rbp), %rdx
	movq	-312(%rbp), %rax
	.loc 5 1885 10
	cmpq	%rax, %rdx
	jne	.L362
	.loc 5 1885 14 discriminator 1
	movq	-176(%rbp), %rdx
	movq	-320(%rbp), %rax
	.loc 5 1885 12 discriminator 1
	cmpq	%rax, %rdx
	je	.L363
.L362:
	.loc 5 1886 16
	movl	$1, %eax
	jmp	.L364
.L363:
	.loc 5 1888 12
	movq	-392(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 5 1888 10
	testb	%al, %al
	je	.L357
	.loc 5 1894 27
	movq	-336(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 1894 25
	cmpl	$40960, %eax
	setne	%dl
	.loc 5 1894 23
	movq	-400(%rbp), %rax
	movb	%dl, (%rax)
	.loc 5 1895 18
	movl	$1, %eax
	jmp	.L364
.L357:
	.loc 5 1899 10
	movl	$0, %eax
.L364:
	.loc 5 1900 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L365
	.loc 5 1900 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L365:
	addq	$392, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	same_file_ok, .-same_file_ok
	.type	writable_destination, @function
writable_destination:
.LFB80:
	.loc 5 1906 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 5 1907 11
	movl	-12(%rbp), %eax
	andl	$61440, %eax
	.loc 5 1909 11
	cmpl	$40960, %eax
	je	.L367
	.loc 5 1908 14
	call	can_write_any_file@PLT
	.loc 5 1908 11
	testb	%al, %al
	jne	.L367
	.loc 5 1909 14 discriminator 2
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	euidaccess@PLT
	.loc 5 1909 11 discriminator 2
	testl	%eax, %eax
	jne	.L368
.L367:
	.loc 5 1909 11 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L369
.L368:
	.loc 5 1909 11 discriminator 3
	movl	$0, %eax
.L369:
	.loc 5 1909 11 discriminator 5
	andl	$1, %eax
	.loc 5 1910 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	writable_destination, .-writable_destination
	.section	.rodata
	.align 8
.LC27:
	.string	"%s: replace %s, overriding mode %04lo (%s)? "
	.align 8
.LC28:
	.string	"%s: unwritable %s (mode %04lo, %s); try anyway? "
.LC29:
	.string	"%s: overwrite %s? "
	.text
	.type	overwrite_ok, @function
overwrite_ok:
.LFB81:
	.loc 5 1915 1
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
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 5 1915 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 5 1916 9
	movq	-88(%rbp), %rax
	movl	24(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	writable_destination
	.loc 5 1916 7
	xorl	$1, %eax
	.loc 5 1916 6
	testb	%al, %al
	je	.L372
.LBB38:
	.loc 5 1919 7
	movq	-88(%rbp), %rax
	movl	24(%rax), %eax
	leaq	-52(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	strmode@PLT
	.loc 5 1920 17
	movb	$0, -42(%rbp)
	.loc 5 1927 43
	movq	-88(%rbp), %rax
	movl	24(%rax), %eax
	.loc 5 1927 53
	movl	%eax, %eax
	.loc 5 1921 7
	andl	$4095, %eax
	movq	%rax, %r13
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	movq	program_name(%rip), %rbx
	.loc 5 1922 18
	movq	-72(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 1921 7
	testb	%al, %al
	jne	.L373
	.loc 5 1922 34
	movq	-72(%rbp), %rax
	movzbl	21(%rax), %eax
	.loc 5 1922 30
	testb	%al, %al
	jne	.L373
	.loc 5 1923 21
	movq	-72(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 5 1923 17
	testb	%al, %al
	je	.L374
.L373:
	.loc 5 1924 18
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	.loc 5 1921 7
	jmp	.L375
.L374:
	.loc 5 1925 18
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
.L375:
	.loc 5 1921 7
	movq	stderr(%rip), %rdi
	leaq	-52(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %r9
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movl	$0, %eax
	call	fprintf@PLT
.LBE38:
	jmp	.L376
.L372:
	.loc 5 1932 7
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	movq	program_name(%rip), %rbx
	.loc 5 1932 24
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 5 1932 7
	movq	stderr(%rip), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L376:
	.loc 5 1936 10
	call	yesno@PLT
	.loc 5 1937 1
	movq	-40(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L378
	call	__stack_chk_fail@PLT
.L378:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	overwrite_ok, .-overwrite_ok
	.globl	dest_info_init
	.type	dest_info_init, @function
dest_info_init:
.LFB82:
	.loc 5 1943 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 1945 7
	movq	triple_free@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	triple_compare@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	triple_hash@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$61, %edi
	call	hash_initialize@PLT
	.loc 5 1945 5
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	.loc 5 1950 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	dest_info_init, .-dest_info_init
	.globl	src_info_init
	.type	src_info_init, @function
src_info_init:
.LFB83:
	.loc 5 1956 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 1967 7
	movq	triple_free@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	triple_compare@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	triple_hash_no_name@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$61, %edi
	call	hash_initialize@PLT
	.loc 5 1967 5
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	.loc 5 1972 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	src_info_init, .-src_info_init
	.section	.rodata
.LC30:
	.string	"src/copy.c"
.LC31:
	.string	"x->move_mode"
	.text
	.type	abandon_move, @function
abandon_move:
.LFB84:
	.loc 5 1984 1
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
	.loc 5 1985 3
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	jne	.L382
	.loc 5 1985 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7624(%rip), %rcx
	movl	$1985, %edx
	leaq	.LC30(%rip), %rsi
	leaq	.LC31(%rip), %rdi
	call	__assert_fail@PLT
.L382:
	.loc 5 1986 12 is_stmt 1
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	.loc 5 1987 11
	cmpl	$2, %eax
	je	.L383
	.loc 5 1987 17 discriminator 2
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	.loc 5 1987 11 discriminator 2
	cmpl	$3, %eax
	je	.L384
	.loc 5 1988 21
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	.loc 5 1988 16
	cmpl	$4, %eax
	jne	.L385
	.loc 5 1989 24
	movq	-8(%rbp), %rax
	movzbl	61(%rax), %eax
	.loc 5 1989 20
	testb	%al, %al
	je	.L385
	.loc 5 1990 25
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	writable_destination
	.loc 5 1990 23
	xorl	$1, %eax
	.loc 5 1990 20
	testb	%al, %al
	je	.L385
.L384:
	.loc 5 1991 20
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	overwrite_ok
	.loc 5 1991 18
	xorl	$1, %eax
	.loc 5 1991 15
	testb	%al, %al
	je	.L385
.L383:
	.loc 5 1987 11 discriminator 1
	movl	$1, %eax
	jmp	.L386
.L385:
	.loc 5 1987 11 is_stmt 0 discriminator 4
	movl	$0, %eax
.L386:
	.loc 5 1987 11 discriminator 3
	andl	$1, %eax
	.loc 5 1992 1 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	abandon_move, .-abandon_move
	.section	.rodata
.LC32:
	.string	"%s -> %s"
.LC33:
	.string	" (backup: %s)"
	.text
	.type	emit_verbose, @function
emit_verbose:
.LFB85:
	.loc 5 1999 1
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 5 2000 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 5 2001 6
	cmpq	$0, -40(%rbp)
	je	.L389
	.loc 5 2002 5
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 2002 13
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	.loc 5 2002 5
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L389:
	.loc 5 2003 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 5 2004 1
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	emit_verbose, .-emit_verbose
	.section	.rodata
	.align 8
.LC34:
	.string	"failed to restore the default file creation context"
	.text
	.type	restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
.LFB86:
	.loc 5 2009 1
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
	.loc 5 2010 7
	movl	$0, %edi
	call	setfscreatecon@PLT
	.loc 5 2010 6
	testl	%eax, %eax
	je	.L392
.LBB39:
	.loc 5 2011 5
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L392:
.LBE39:
	.loc 5 2013 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	restore_default_fscreatecon_or_die, .-restore_default_fscreatecon_or_die
	.section	.rodata
	.align 8
.LC35:
	.string	"cannot create hard link %s to %s"
	.text
	.type	create_hard_link, @function
create_hard_link:
.LFB87:
	.loc 5 2024 1
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
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%ecx, %eax
	movl	%r8d, %ecx
	movb	%dl, -52(%rbp)
	movb	%al, -56(%rbp)
	movl	%ecx, %eax
	movb	%al, -60(%rbp)
	.loc 5 2025 13
	movzbl	-52(%rbp), %ecx
	cmpb	$0, -60(%rbp)
	je	.L394
	.loc 5 2025 13 is_stmt 0 discriminator 1
	movl	$1024, %esi
	jmp	.L395
.L394:
	.loc 5 2025 13 discriminator 2
	movl	$0, %esi
.L395:
	.loc 5 2025 13 discriminator 4
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$-1
	movl	%ecx, %r9d
	movl	%esi, %r8d
	movq	%rdx, %rcx
	movl	$-100, %edx
	movq	%rax, %rsi
	movl	$-100, %edi
	call	force_linkat@PLT
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	.loc 5 2028 6 is_stmt 1 discriminator 4
	cmpl	$0, -20(%rbp)
	jle	.L396
	.loc 5 2030 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 2030 22
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 5 2030 7
	movl	-20(%rbp), %eax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2032 14
	movl	$0, %eax
	jmp	.L397
.L396:
	.loc 5 2034 6
	cmpl	$0, -20(%rbp)
	jns	.L398
	.loc 5 2034 15 discriminator 1
	cmpb	$0, -56(%rbp)
	je	.L398
	.loc 5 2035 5
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 2035 13
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	.loc 5 2035 5
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L398:
	.loc 5 2036 10
	movl	$1, %eax
.L397:
	.loc 5 2037 1
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	create_hard_link, .-create_hard_link
	.type	should_dereference, @function
should_dereference:
.LFB88:
	.loc 5 2044 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	.loc 5 2045 11
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 2046 10
	cmpl	$4, %eax
	je	.L400
	.loc 5 2046 15 discriminator 2
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 2046 10 discriminator 2
	cmpl	$3, %eax
	jne	.L401
	.loc 5 2047 14
	cmpb	$0, -12(%rbp)
	je	.L401
.L400:
	.loc 5 2046 10 discriminator 1
	movl	$1, %eax
	jmp	.L402
.L401:
	.loc 5 2046 10 is_stmt 0 discriminator 3
	movl	$0, %eax
.L402:
	.loc 5 2046 10 discriminator 5
	andl	$1, %eax
	.loc 5 2048 1 is_stmt 1 discriminator 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	should_dereference, .-should_dereference
	.type	source_is_dst_backup, @function
source_is_dst_backup:
.LFB89:
	.loc 5 2055 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	.loc 5 2055 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 5 2056 23
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -224(%rbp)
	.loc 5 2057 25
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, -216(%rbp)
	.loc 5 2058 23
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -208(%rbp)
	.loc 5 2059 22
	movq	simple_backup_suffix(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -200(%rbp)
	.loc 5 2060 35
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	.loc 5 2060 6
	cmpq	%rax, -224(%rbp)
	jne	.L405
	.loc 5 2061 13
	movq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 5 2061 10
	testl	%eax, %eax
	jne	.L405
	.loc 5 2062 13
	movq	simple_backup_suffix(%rip), %rax
	movq	-248(%rbp), %rcx
	movq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	.loc 5 2060 7
	testl	%eax, %eax
	je	.L406
.L405:
	.loc 5 2063 12
	movl	$0, %eax
	jmp	.L410
.L406:
	.loc 5 2064 19
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -192(%rbp)
	.loc 5 2065 36
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	.loc 5 2065 20
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -184(%rbp)
	.loc 5 2066 3
	movq	simple_backup_suffix(%rip), %rbx
	.loc 5 2066 11
	movq	-192(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy@PLT
	.loc 5 2066 3
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 5 2068 25
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	movl	%eax, -228(%rbp)
	.loc 5 2069 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 5 2070 31
	cmpl	$0, -228(%rbp)
	jne	.L408
	.loc 5 2070 34 discriminator 1
	movq	-256(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	.loc 5 2070 31 discriminator 1
	cmpq	%rax, %rdx
	jne	.L408
	.loc 5 2070 34 discriminator 3
	movq	-256(%rbp), %rax
	movq	(%rax), %rdx
	movq	-176(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L408
	.loc 5 2070 31 discriminator 5
	movl	$1, %eax
	jmp	.L409
.L408:
	.loc 5 2070 31 is_stmt 0 discriminator 6
	movl	$0, %eax
.L409:
	.loc 5 2070 31 discriminator 8
	andl	$1, %eax
.L410:
	.loc 5 2071 1 is_stmt 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L411
	.loc 5 2071 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L411:
	addq	$264, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	source_is_dst_backup, .-source_is_dst_backup
	.section	.rodata
.LC36:
	.string	"cannot stat %s"
	.align 8
.LC37:
	.string	"-r not specified; omitting directory %s"
.LC38:
	.string	"omitting directory %s"
	.align 8
.LC39:
	.string	"warning: source file %s specified more than once"
.LC40:
	.string	"%s and %s are the same file"
	.align 8
.LC41:
	.string	"cannot overwrite non-directory %s with directory %s"
	.align 8
.LC42:
	.string	"will not overwrite just-created %s with %s"
	.align 8
.LC43:
	.string	"cannot overwrite directory %s with non-directory"
	.align 8
.LC44:
	.string	"cannot move directory onto non-directory: %s -> %s"
	.align 8
.LC45:
	.string	"backing up %s might destroy source;  %s not moved"
	.align 8
.LC46:
	.string	"backing up %s might destroy source;  %s not copied"
.LC47:
	.string	"cannot backup %s"
	.align 8
.LC48:
	.string	"will not copy %s through just-created symlink %s"
	.align 8
.LC49:
	.string	"cannot copy a directory, %s, into itself, %s"
	.align 8
.LC50:
	.string	"warning: source directory %s specified more than once"
	.align 8
.LC51:
	.string	"will not create hard link %s to directory %s"
.LC52:
	.string	"renamed "
	.align 8
.LC53:
	.string	"cannot move %s to a subdirectory of itself, %s"
.LC54:
	.string	"cannot move %s to %s"
	.align 8
.LC55:
	.string	"inter-device move failed: %s to %s; unable to remove target"
.LC56:
	.string	"copied "
	.align 8
.LC57:
	.string	"cannot copy cyclic symbolic link %s"
.LC58:
	.string	"cannot create directory %s"
.LC59:
	.string	"setting permissions for %s"
.LC60:
	.string	"created directory %s\n"
.LC61:
	.string	"."
	.align 8
.LC62:
	.string	"%s: can make relative symbolic links only in current directory"
	.align 8
.LC63:
	.string	"cannot create symbolic link %s to %s"
.LC64:
	.string	"cannot create fifo %s"
.LC65:
	.string	"cannot create special file %s"
.LC66:
	.string	"cannot read symbolic link %s"
	.align 8
.LC67:
	.string	"cannot create symbolic link %s"
.LC68:
	.string	"%s has unknown file type"
.LC69:
	.string	"cannot un-backup %s"
.LC70:
	.string	"%s -> %s (unbackup)\n"
	.text
	.type	copy_internal, @function
copy_internal:
.LFB90:
	.loc 5 2094 1 is_stmt 1
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
	subq	$856, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movl	%edx, %eax
	movq	%rcx, -832(%rbp)
	movq	%r8, -840(%rbp)
	movq	%r9, -848(%rbp)
	movl	16(%rbp), %edx
	movb	%al, -820(%rbp)
	movl	%edx, %eax
	movb	%al, -824(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -856(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -864(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -872(%rbp)
	.loc 5 2094 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 5 2097 10
	movl	$0, -780(%rbp)
	.loc 5 2098 10
	movl	$0, -776(%rbp)
	.loc 5 2101 8
	movb	$0, -790(%rbp)
	.loc 5 2102 9
	movq	$0, -736(%rbp)
	.loc 5 2103 9
	movq	$0, -728(%rbp)
	.loc 5 2105 8
	movb	$0, -788(%rbp)
	.loc 5 2106 8
	movb	$0, -787(%rbp)
	.loc 5 2107 8
	movb	$0, -786(%rbp)
	.loc 5 2109 19
	movq	-864(%rbp), %rax
	movb	$0, (%rax)
	.loc 5 2111 7
	movq	-848(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -768(%rbp)
	.loc 5 2112 8
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2112 6
	testb	%al, %al
	je	.L413
	.loc 5 2114 10
	cmpl	$0, -768(%rbp)
	jns	.L414
	.loc 5 2115 25
	movq	-816(%rbp), %rdx
	movq	-808(%rbp), %rax
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$-100, %edx
	movq	%rax, %rsi
	movl	$-100, %edi
	call	renameatu@PLT
	.loc 5 2117 33
	testl	%eax, %eax
	je	.L415
	.loc 5 2117 27 discriminator 1
	call	__errno_location@PLT
	.loc 5 2117 33 discriminator 1
	movl	(%rax), %eax
	jmp	.L416
.L415:
	.loc 5 2117 33 is_stmt 0 discriminator 2
	movl	$0, %eax
.L416:
	.loc 5 2115 22 is_stmt 1
	movl	%eax, -768(%rbp)
.L414:
	.loc 5 2118 30
	cmpl	$0, -768(%rbp)
	sete	%al
	.loc 5 2118 15
	movb	%al, -820(%rbp)
	.loc 5 2119 10
	cmpq	$0, -872(%rbp)
	je	.L413
	.loc 5 2120 27
	movzbl	-820(%rbp), %edx
	movq	-872(%rbp), %rax
	movb	%dl, (%rax)
.L413:
	.loc 5 2123 7
	cmpl	$0, -768(%rbp)
	jne	.L417
	.loc 5 2124 11 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	63(%rax), %eax
	.loc 5 2123 7 discriminator 1
	xorl	$1, %eax
	jmp	.L418
.L417:
	.loc 5 2125 32
	cmpl	$17, -768(%rbp)
	jne	.L419
	.loc 5 2125 36 discriminator 2
	movq	-848(%rbp), %rax
	movl	8(%rax), %eax
	.loc 5 2125 32 discriminator 2
	cmpl	$2, %eax
	je	.L420
.L419:
	.loc 5 2125 32 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L421
.L420:
	.loc 5 2125 32 discriminator 4
	movl	$0, %eax
.L421:
	.loc 5 2123 7 is_stmt 1 discriminator 3
	andl	$1, %eax
.L418:
	.loc 5 2123 6 discriminator 2
	testb	%al, %al
	je	.L422
.LBB40:
	.loc 5 2127 55
	cmpl	$0, -768(%rbp)
	jne	.L423
	.loc 5 2127 55 is_stmt 0 discriminator 1
	movq	-816(%rbp), %rax
	jmp	.L424
.L423:
	.loc 5 2127 55 discriminator 2
	movq	-808(%rbp), %rax
.L424:
	.loc 5 2127 19 is_stmt 1 discriminator 4
	movq	%rax, -712(%rbp)
	.loc 5 2129 12 discriminator 4
	movq	-848(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 2129 63 discriminator 4
	cmpl	$2, %eax
	jne	.L425
	.loc 5 2129 63 is_stmt 0 discriminator 1
	movl	$256, %eax
	jmp	.L426
.L425:
	.loc 5 2129 63 discriminator 2
	movl	$0, %eax
.L426:
	.loc 5 2128 11 is_stmt 1
	movl	%eax, -760(%rbp)
	.loc 5 2130 11
	movl	-760(%rbp), %ecx
	leaq	-624(%rbp), %rdx
	movq	-712(%rbp), %rax
	movq	%rax, %rsi
	movl	$-100, %edi
	call	follow_fstatat
	.loc 5 2130 10
	testl	%eax, %eax
	je	.L427
	.loc 5 2132 11
	movq	-712(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 2132 28
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2132 21
	call	__errno_location@PLT
	.loc 5 2132 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2133 18
	movl	$0, %eax
	jmp	.L598
.L427:
	.loc 5 2136 16
	movl	-600(%rbp), %eax
	movl	%eax, -780(%rbp)
	.loc 5 2138 11
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2138 10
	cmpl	$16384, %eax
	jne	.L429
	.loc 5 2138 35 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 5 2138 33 discriminator 1
	xorl	$1, %eax
	.loc 5 2138 30 discriminator 1
	testb	%al, %al
	je	.L429
	.loc 5 2140 11
	movq	-808(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 2140 27
	movq	-848(%rbp), %rax
	movzbl	25(%rax), %eax
	.loc 5 2140 24
	xorl	$1, %eax
	.loc 5 2140 11
	testb	%al, %al
	je	.L430
	.loc 5 2141 20
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	jmp	.L431
.L430:
	.loc 5 2142 20
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
.L431:
	.loc 5 2140 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2144 18
	movl	$0, %eax
	jmp	.L598
.L422:
.LBE40:
	.loc 5 2150 7
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	jne	.L432
	.loc 5 2150 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7688(%rip), %rcx
	movl	$2150, %edx
	leaq	.LC30(%rip), %rsi
	leaq	.LC31(%rip), %rdi
	call	__assert_fail@PLT
.L432:
	.loc 5 2151 7 is_stmt 1
	leaq	-624(%rbp), %rax
	movl	$144, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L429:
	.loc 5 2159 6
	cmpb	$0, -824(%rbp)
	je	.L433
	.loc 5 2159 28 discriminator 1
	movq	-848(%rbp), %rax
	movq	80(%rax), %rax
	.loc 5 2159 24 discriminator 1
	testq	%rax, %rax
	je	.L433
	.loc 5 2161 14
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2161 10
	cmpl	$16384, %eax
	je	.L434
	.loc 5 2162 16
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 2162 12
	testl	%eax, %eax
	jne	.L434
	.loc 5 2163 27
	movq	-848(%rbp), %rax
	movq	80(%rax), %rax
	.loc 5 2163 15
	leaq	-624(%rbp), %rdx
	movq	-808(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	seen_file@PLT
	.loc 5 2163 12
	testb	%al, %al
	je	.L434
	.loc 5 2165 11
	movq	-808(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 2165 24
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	.loc 5 2165 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2167 18
	movl	$1, %eax
	jmp	.L598
.L434:
	.loc 5 2170 7
	movq	-848(%rbp), %rax
	movq	80(%rax), %rax
	leaq	-624(%rbp), %rdx
	movq	-808(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	record_file@PLT
.L433:
	.loc 5 2173 22
	movzbl	-824(%rbp), %edx
	movq	-848(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	should_dereference
	movb	%al, -784(%rbp)
	.loc 5 2175 7
	movzbl	-820(%rbp), %eax
	xorl	$1, %eax
	.loc 5 2175 6
	testb	%al, %al
	je	.L435
	.loc 5 2177 10
	cmpl	$17, -768(%rbp)
	jne	.L436
	.loc 5 2177 41 discriminator 1
	movq	-848(%rbp), %rax
	movl	8(%rax), %eax
	.loc 5 2177 11 discriminator 1
	cmpl	$2, %eax
	je	.L437
.L436:
.LBB41:
	.loc 5 2186 19
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2191 16
	cmpl	$32768, %eax
	je	.L438
	.loc 5 2187 24
	movq	-848(%rbp), %rax
	movzbl	20(%rax), %eax
	.loc 5 2187 21
	xorl	$1, %eax
	.loc 5 2187 17
	testb	%al, %al
	jne	.L439
	.loc 5 2188 24
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2188 21
	cmpl	$16384, %eax
	je	.L439
	.loc 5 2188 46 discriminator 1
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2188 43 discriminator 1
	cmpl	$40960, %eax
	je	.L439
.L438:
	.loc 5 2189 20
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2189 16
	testb	%al, %al
	jne	.L439
	.loc 5 2189 36 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	58(%rax), %eax
	.loc 5 2189 32 discriminator 1
	testb	%al, %al
	jne	.L439
	.loc 5 2189 56 discriminator 2
	movq	-848(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 5 2189 52 discriminator 2
	testb	%al, %al
	jne	.L439
	.loc 5 2190 20
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 2190 16
	testl	%eax, %eax
	jne	.L439
	.loc 5 2191 20
	movq	-848(%rbp), %rax
	movzbl	21(%rax), %eax
	.loc 5 2191 16
	testb	%al, %al
	je	.L440
.L439:
	.loc 5 2191 16 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L441
.L440:
	.loc 5 2191 16 discriminator 2
	movl	$0, %eax
.L441:
	.loc 5 2185 16 is_stmt 1
	movb	%al, -783(%rbp)
	andb	$1, -783(%rbp)
	.loc 5 2192 63
	cmpb	$0, -783(%rbp)
	je	.L442
	.loc 5 2192 63 is_stmt 0 discriminator 1
	movl	$256, %eax
	jmp	.L443
.L442:
	.loc 5 2192 63 discriminator 2
	movl	$0, %eax
.L443:
	.loc 5 2192 15 is_stmt 1 discriminator 4
	movl	%eax, -756(%rbp)
	.loc 5 2193 15 discriminator 4
	movl	-756(%rbp), %ecx
	leaq	-480(%rbp), %rdx
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$-100, %edi
	call	follow_fstatat
	.loc 5 2193 14 discriminator 4
	testl	%eax, %eax
	jne	.L444
	.loc 5 2195 30
	movzbl	-783(%rbp), %eax
	movb	%al, -786(%rbp)
	.loc 5 2196 28
	movl	$17, -768(%rbp)
	jmp	.L437
.L444:
	.loc 5 2200 19
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 2200 18
	cmpl	$40, %eax
	jne	.L445
	.loc 5 2200 38 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 5 2200 34 discriminator 1
	testb	%al, %al
	jne	.L437
.L445:
	.loc 5 2202 24
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 2202 23
	cmpl	$2, %eax
	je	.L446
	.loc 5 2204 19
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 2204 36
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2204 29
	call	__errno_location@PLT
	.loc 5 2204 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2205 26
	movl	$0, %eax
	jmp	.L598
.L446:
	.loc 5 2208 25
	movb	$1, -820(%rbp)
.L437:
.LBE41:
	.loc 5 2212 10
	cmpl	$17, -768(%rbp)
	jne	.L435
.LBB42:
	.loc 5 2214 16
	movb	$0, -791(%rbp)
	.loc 5 2216 16
	movq	-848(%rbp), %rax
	movl	8(%rax), %eax
	.loc 5 2216 14
	cmpl	$2, %eax
	je	.L447
	.loc 5 2217 20
	leaq	-791(%rbp), %r8
	movq	-848(%rbp), %rdi
	leaq	-480(%rbp), %rcx
	movq	-816(%rbp), %rdx
	leaq	-624(%rbp), %rsi
	movq	-808(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	same_file_ok
	.loc 5 2217 18
	xorl	$1, %eax
	.loc 5 2217 15
	testb	%al, %al
	je	.L447
	.loc 5 2220 15
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-808(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 2220 28
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 5 2220 15
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2222 22
	movl	$0, %eax
	jmp	.L598
.L447:
	.loc 5 2225 16
	movq	-848(%rbp), %rax
	movzbl	59(%rax), %eax
	.loc 5 2225 14
	testb	%al, %al
	je	.L449
	.loc 5 2225 29 discriminator 1
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2225 25 discriminator 1
	cmpl	$16384, %eax
	je	.L449
.LBB43:
	.loc 5 2231 32
	movq	-848(%rbp), %rax
	movzbl	31(%rax), %eax
	.loc 5 2235 30
	testb	%al, %al
	je	.L450
	.loc 5 2232 38 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2232 37 discriminator 1
	xorl	$1, %eax
	.loc 5 2235 30 discriminator 1
	testb	%al, %al
	jne	.L451
	.loc 5 2233 46
	movq	-480(%rbp), %rdx
	.loc 5 2233 63
	movq	-624(%rbp), %rax
	.loc 5 2232 34
	cmpq	%rax, %rdx
	je	.L450
.L451:
	.loc 5 2235 30 discriminator 3
	movl	$1, %eax
	jmp	.L452
.L450:
	.loc 5 2235 30 is_stmt 0 discriminator 2
	movl	$0, %eax
.L452:
	.loc 5 2231 19 is_stmt 1
	movl	%eax, -752(%rbp)
	.loc 5 2237 24
	movl	-752(%rbp), %ecx
	leaq	-624(%rbp), %rdx
	leaq	-480(%rbp), %rsi
	movq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	utimecmp@PLT
	.loc 5 2237 18
	testl	%eax, %eax
	js	.L449
	.loc 5 2243 22
	cmpq	$0, -872(%rbp)
	je	.L453
	.loc 5 2244 39
	movq	-872(%rbp), %rax
	movb	$1, (%rax)
.L453:
	.loc 5 2251 34
	movq	-624(%rbp), %rdx
	movq	-616(%rbp), %rcx
	movq	-816(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remember_copied@PLT
	movq	%rax, -736(%rbp)
	.loc 5 2253 22
	cmpq	$0, -736(%rbp)
	je	.L454
	.loc 5 2257 29
	movzbl	-784(%rbp), %ecx
	.loc 5 2258 48
	movq	-848(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 5 2257 29
	movzbl	%al, %edx
	movq	-816(%rbp), %rsi
	movq	-736(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	create_hard_link
	.loc 5 2257 27
	xorl	$1, %eax
	.loc 5 2257 26
	testb	%al, %al
	jne	.L600
.L454:
	.loc 5 2264 26
	movl	$1, %eax
	jmp	.L598
.L449:
.LBE43:
	.loc 5 2275 16
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2275 14
	testb	%al, %al
	je	.L456
	.loc 5 2277 19
	leaq	-480(%rbp), %rdx
	movq	-816(%rbp), %rcx
	movq	-848(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	abandon_move
	.loc 5 2277 18
	testb	%al, %al
	je	.L457
	.loc 5 2281 22
	cmpq	$0, -872(%rbp)
	je	.L458
	.loc 5 2282 39
	movq	-872(%rbp), %rax
	movb	$1, (%rax)
.L458:
	.loc 5 2283 26
	movl	$1, %eax
	jmp	.L598
.L456:
	.loc 5 2288 21
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2288 18
	cmpl	$16384, %eax
	je	.L457
	.loc 5 2289 24
	movq	-848(%rbp), %rax
	movl	8(%rax), %eax
	.loc 5 2289 19
	cmpl	$2, %eax
	je	.L459
	.loc 5 2290 28
	movq	-848(%rbp), %rax
	movl	8(%rax), %eax
	.loc 5 2290 23
	cmpl	$3, %eax
	jne	.L457
	.loc 5 2291 32
	leaq	-480(%rbp), %rdx
	movq	-816(%rbp), %rcx
	movq	-848(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	overwrite_ok
	.loc 5 2291 30
	xorl	$1, %eax
	.loc 5 2291 27
	testb	%al, %al
	je	.L457
.L459:
	.loc 5 2292 24
	movl	$1, %eax
	jmp	.L598
.L457:
	.loc 5 2295 15
	movzbl	-791(%rbp), %eax
	.loc 5 2295 14
	testb	%al, %al
	je	.L460
	.loc 5 2296 20
	movl	$1, %eax
	jmp	.L598
.L460:
	.loc 5 2298 16
	movl	-456(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2298 14
	cmpl	$16384, %eax
	je	.L461
	.loc 5 2300 19
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2300 18
	cmpl	$16384, %eax
	jne	.L462
	.loc 5 2302 24
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2302 22
	testb	%al, %al
	je	.L463
	.loc 5 2302 40 discriminator 1
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 2302 36 discriminator 1
	testl	%eax, %eax
	jne	.L462
.L463:
	.loc 5 2309 23
	movq	-808(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 2310 24
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	.loc 5 2309 23
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2312 30
	movl	$0, %eax
	jmp	.L598
.L462:
	.loc 5 2323 18
	cmpb	$0, -824(%rbp)
	je	.L461
	.loc 5 2324 23
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 2324 19
	cmpl	$3, %eax
	je	.L461
	.loc 5 2325 34
	movq	-848(%rbp), %rax
	movq	72(%rax), %rax
	.loc 5 2325 22
	leaq	-480(%rbp), %rdx
	movq	-816(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	seen_file@PLT
	.loc 5 2325 19
	testb	%al, %al
	je	.L461
	.loc 5 2327 19
	movq	-808(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 2328 26
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	.loc 5 2327 19
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2330 26
	movl	$0, %eax
	jmp	.L598
.L461:
	.loc 5 2334 16
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2334 14
	cmpl	$16384, %eax
	je	.L464
	.loc 5 2336 19
	movl	-456(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2336 18
	cmpl	$16384, %eax
	jne	.L464
	.loc 5 2338 24
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2338 22
	testb	%al, %al
	je	.L465
	.loc 5 2338 40 discriminator 1
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 2338 36 discriminator 1
	testl	%eax, %eax
	jne	.L464
.L465:
	.loc 5 2345 23
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 2346 26
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	.loc 5 2345 23
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2348 30
	movl	$0, %eax
	jmp	.L598
.L464:
	.loc 5 2353 16
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2353 14
	testb	%al, %al
	je	.L466
	.loc 5 2356 19
	movl	-600(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2356 18
	cmpl	$16384, %eax
	jne	.L466
	.loc 5 2356 48 discriminator 1
	movl	-456(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2356 44 discriminator 1
	cmpl	$16384, %eax
	je	.L466
	.loc 5 2357 23
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 2357 19
	testl	%eax, %eax
	jne	.L466
	.loc 5 2359 19
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	movq	-808(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 5 2360 24
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	.loc 5 2359 19
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2362 26
	movl	$0, %eax
	jmp	.L598
.L466:
	.loc 5 2367 16
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 2367 14
	testl	%eax, %eax
	je	.L467
	.loc 5 2370 45
	movq	-808(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, -704(%rbp)
	.loc 5 2370 20
	movq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	dot_or_dotdot
	.loc 5 2370 18
	xorl	$1, %eax
	.loc 5 2370 15
	testb	%al, %al
	je	.L467
	.loc 5 2376 20
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2376 15
	testb	%al, %al
	jne	.L468
	.loc 5 2376 37 discriminator 1
	movl	-456(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2376 32 discriminator 1
	cmpl	$16384, %eax
	je	.L467
.L468:
.LBB44:
	.loc 5 2382 20
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 2382 18
	cmpl	$3, %eax
	je	.L469
	.loc 5 2383 22
	movq	-816(%rbp), %rdx
	leaq	-624(%rbp), %rcx
	movq	-704(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	source_is_dst_backup
	.loc 5 2383 19
	testb	%al, %al
	je	.L469
.LBB45:
	.loc 5 2386 27
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2386 23
	testb	%al, %al
	je	.L470
	.loc 5 2387 20
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	jmp	.L471
.L470:
	.loc 5 2388 20
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
.L471:
	.loc 5 2386 23
	movq	%rax, -696(%rbp)
	.loc 5 2389 19
	movq	-808(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rdx
	movq	-696(%rbp), %rax
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2392 26
	movl	$0, %eax
	jmp	.L598
.L469:
.LBE45:
	.loc 5 2395 34
	movq	-848(%rbp), %rax
	movl	(%rax), %edx
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$-100, %edi
	call	backup_file_rename@PLT
	movq	%rax, -688(%rbp)
	.loc 5 2403 18
	cmpq	$0, -688(%rbp)
	je	.L472
.LBB46:
	.loc 5 2405 19
	movq	-688(%rbp), %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L473:
	cmpq	%rdx, %rsp
	je	.L474
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L473
.L474:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L475
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L475:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -664(%rbp)
	movq	-672(%rbp), %rdx
	movq	-680(%rbp), %rcx
	movq	-664(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.LBE46:
	movq	%rax, -728(%rbp)
	.loc 5 2406 19
	movq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L476
.L472:
	.loc 5 2408 24
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 2408 23
	cmpl	$2, %eax
	je	.L476
	.loc 5 2410 19
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 2410 36
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2410 29
	call	__errno_location@PLT
	.loc 5 2410 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2411 26
	movl	$0, %eax
	jmp	.L598
.L476:
	.loc 5 2413 23
	movb	$1, -820(%rbp)
.LBE44:
	.loc 5 2377 13
	jmp	.L435
.L467:
	.loc 5 2415 22
	movl	-456(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2415 19
	cmpl	$16384, %eax
	je	.L435
	.loc 5 2417 26
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2417 23
	xorl	$1, %eax
	.loc 5 2417 20
	testb	%al, %al
	je	.L435
	.loc 5 2418 25
	movq	-848(%rbp), %rax
	movzbl	21(%rax), %eax
	.loc 5 2418 20
	testb	%al, %al
	jne	.L478
	.loc 5 2419 29
	movq	-848(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 5 2419 24
	testb	%al, %al
	je	.L435
	.loc 5 2420 34
	movq	-848(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 5 2420 28
	testb	%al, %al
	je	.L479
	.loc 5 2420 64 discriminator 1
	movq	-464(%rbp), %rax
	.loc 5 2420 51 discriminator 1
	cmpq	$1, %rax
	ja	.L478
.L479:
	.loc 5 2421 37
	movq	-848(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 2421 32
	cmpl	$2, %eax
	jne	.L435
	.loc 5 2422 41
	movl	-600(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2422 36
	cmpl	$32768, %eax
	je	.L435
.L478:
	.loc 5 2425 19
	movq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	.loc 5 2425 18
	testl	%eax, %eax
	je	.L480
	.loc 5 2425 45 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 2425 42 discriminator 1
	cmpl	$2, %eax
	je	.L480
	.loc 5 2427 19
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 2427 36
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2427 29
	call	__errno_location@PLT
	.loc 5 2427 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2428 26
	movl	$0, %eax
	jmp	.L598
.L480:
	.loc 5 2430 23
	movb	$1, -820(%rbp)
	.loc 5 2431 20
	movq	-848(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 5 2431 18
	testb	%al, %al
	je	.L435
	.loc 5 2432 17
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 2432 25
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	.loc 5 2432 17
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L435:
.LBE42:
	.loc 5 2439 6
	cmpb	$0, -824(%rbp)
	je	.L481
	.loc 5 2440 11
	movq	-848(%rbp), %rax
	movq	72(%rax), %rax
	.loc 5 2440 7
	testq	%rax, %rax
	je	.L481
	.loc 5 2441 13
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2441 10
	xorl	$1, %eax
	.loc 5 2441 7
	testb	%al, %al
	je	.L481
	.loc 5 2442 11
	movq	-848(%rbp), %rax
	movl	(%rax), %eax
	.loc 5 2442 7
	testl	%eax, %eax
	jne	.L481
.LBB47:
	.loc 5 2444 12
	movb	$1, -785(%rbp)
	.loc 5 2450 10
	cmpb	$0, -786(%rbp)
	je	.L482
	.loc 5 2451 22
	leaq	-480(%rbp), %rax
	movq	%rax, -720(%rbp)
	jmp	.L483
.L482:
	.loc 5 2454 15
	leaq	-192(%rbp), %rdx
	movq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 5 2454 14
	testl	%eax, %eax
	jne	.L484
	.loc 5 2455 26
	leaq	-192(%rbp), %rax
	movq	%rax, -720(%rbp)
	jmp	.L483
.L484:
	.loc 5 2457 22
	movb	$0, -785(%rbp)
.L483:
	.loc 5 2461 10
	cmpb	$0, -785(%rbp)
	je	.L481
	.loc 5 2462 14
	movq	-720(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 5 2462 11
	cmpl	$40960, %eax
	jne	.L481
	.loc 5 2463 26
	movq	-848(%rbp), %rax
	movq	72(%rax), %rax
	.loc 5 2463 14
	movq	-720(%rbp), %rdx
	movq	-816(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	seen_file@PLT
	.loc 5 2463 11
	testb	%al, %al
	je	.L481
	.loc 5 2465 11
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-808(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 2466 18
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	.loc 5 2465 11
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2468 18
	movl	$0, %eax
	jmp	.L598
.L481:
.LBE47:
	.loc 5 2476 8
	movq	-848(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 5 2476 6
	testb	%al, %al
	je	.L486
	.loc 5 2476 23 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2476 21 discriminator 1
	xorl	$1, %eax
	.loc 5 2476 18 discriminator 1
	testb	%al, %al
	je	.L486
	.loc 5 2476 39 discriminator 2
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2476 35 discriminator 2
	cmpl	$16384, %eax
	je	.L486
	.loc 5 2477 5
	movq	-728(%rbp), %rdx
	movq	-816(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	emit_verbose
.L486:
	.loc 5 2509 6
	cmpl	$0, -768(%rbp)
	jne	.L487
	.loc 5 2510 18
	movq	$0, -736(%rbp)
	jmp	.L488
.L487:
	.loc 5 2511 13
	movq	-848(%rbp), %rax
	movzbl	56(%rax), %eax
	.loc 5 2511 11
	testb	%al, %al
	je	.L489
	.loc 5 2511 28 discriminator 1
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2511 25 discriminator 1
	cmpl	$16384, %eax
	jne	.L489
	.loc 5 2513 10
	cmpb	$0, -824(%rbp)
	je	.L490
	.loc 5 2514 24
	movq	-624(%rbp), %rdx
	movq	-616(%rbp), %rcx
	movq	-816(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remember_copied@PLT
	movq	%rax, -736(%rbp)
	.loc 5 2513 10
	jmp	.L488
.L490:
	.loc 5 2516 24
	movq	-624(%rbp), %rdx
	movq	-616(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	src_to_dest_lookup@PLT
	movq	%rax, -736(%rbp)
	.loc 5 2513 10
	jmp	.L488
.L489:
	.loc 5 2518 13
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2518 11
	testb	%al, %al
	je	.L492
	.loc 5 2518 34 discriminator 1
	movq	-608(%rbp), %rax
	.loc 5 2518 25 discriminator 1
	cmpq	$1, %rax
	jne	.L492
	.loc 5 2520 22
	movq	-624(%rbp), %rdx
	movq	-616(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	src_to_dest_lookup@PLT
	movq	%rax, -736(%rbp)
	.loc 5 2520 20
	jmp	.L488
.L492:
	.loc 5 2522 13
	movq	-848(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 5 2522 11
	testb	%al, %al
	je	.L488
	.loc 5 2523 17
	movq	-848(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 5 2523 15
	xorl	$1, %eax
	.loc 5 2523 12
	testb	%al, %al
	je	.L488
	.loc 5 2524 26
	movq	-608(%rbp), %rax
	.loc 5 2524 12
	cmpq	$1, %rax
	ja	.L493
	.loc 5 2525 16
	cmpb	$0, -824(%rbp)
	je	.L494
	.loc 5 2526 24
	movq	-848(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 2526 20
	cmpl	$3, %eax
	je	.L493
.L494:
	.loc 5 2527 20
	movq	-848(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 2527 16
	cmpl	$4, %eax
	jne	.L488
.L493:
	.loc 5 2529 22
	movq	-624(%rbp), %rdx
	movq	-616(%rbp), %rcx
	movq	-816(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remember_copied@PLT
	movq	%rax, -736(%rbp)
.L488:
	.loc 5 2535 6
	cmpq	$0, -736(%rbp)
	je	.L495
	.loc 5 2540 11
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2540 10
	cmpl	$16384, %eax
	jne	.L496
	.loc 5 2544 15
	movq	-736(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	same_name@PLT
	.loc 5 2544 14
	testb	%al, %al
	je	.L497
	.loc 5 2546 15
	movq	top_level_dst_name(%rip), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	top_level_src_name(%rip), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 2546 28
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	.loc 5 2546 15
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2549 31
	movq	-864(%rbp), %rax
	movb	$1, (%rax)
	.loc 5 2550 15
	jmp	.L455
.L497:
	.loc 5 2552 20
	movq	-736(%rbp), %rdx
	movq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	same_name@PLT
	.loc 5 2552 19
	testb	%al, %al
	je	.L498
	.loc 5 2554 15
	movq	top_level_src_name(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 2554 28
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	.loc 5 2554 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2561 20
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2561 18
	testb	%al, %al
	je	.L499
	.loc 5 2561 32 discriminator 1
	cmpq	$0, -872(%rbp)
	je	.L499
	.loc 5 2562 35
	movq	-872(%rbp), %rax
	movb	$1, (%rax)
.L499:
	.loc 5 2565 22
	movl	$1, %eax
	jmp	.L598
.L498:
	.loc 5 2567 21
	movq	-848(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 2567 19
	cmpl	$4, %eax
	je	.L495
	.loc 5 2568 20
	cmpb	$0, -824(%rbp)
	je	.L501
	.loc 5 2569 28
	movq	-848(%rbp), %rax
	movl	4(%rax), %eax
	.loc 5 2569 24
	cmpl	$3, %eax
	je	.L495
.L501:
	.loc 5 2580 15
	movq	-736(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 2580 28
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	.loc 5 2580 15
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2582 15
	jmp	.L455
.L496:
	.loc 5 2587 17
	movzbl	-784(%rbp), %ecx
	.loc 5 2587 66
	movq	-848(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 5 2587 17
	movzbl	%al, %edx
	movq	-816(%rbp), %rsi
	movq	-736(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	create_hard_link
	.loc 5 2587 15
	xorl	$1, %eax
	.loc 5 2587 14
	testb	%al, %al
	jne	.L601
	.loc 5 2591 18
	movl	$1, %eax
	jmp	.L598
.L495:
	.loc 5 2595 8
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2595 6
	testb	%al, %al
	je	.L503
	.loc 5 2597 10
	cmpl	$17, -768(%rbp)
	jne	.L504
	.loc 5 2598 24
	movq	-816(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rename@PLT
	.loc 5 2598 61
	testl	%eax, %eax
	je	.L505
	.loc 5 2598 63 discriminator 1
	call	__errno_location@PLT
	.loc 5 2598 61 discriminator 1
	movl	(%rax), %eax
	jmp	.L506
.L505:
	.loc 5 2598 61 is_stmt 0 discriminator 2
	movl	$0, %eax
.L506:
	.loc 5 2598 22 is_stmt 1 discriminator 4
	movl	%eax, -768(%rbp)
.L504:
	.loc 5 2600 10
	cmpl	$0, -768(%rbp)
	jne	.L507
	.loc 5 2602 16
	movq	-848(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 5 2602 14
	testb	%al, %al
	je	.L508
	.loc 5 2604 23
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	.loc 5 2604 15
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 5 2605 15
	movq	-728(%rbp), %rdx
	movq	-816(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	emit_verbose
.L508:
	.loc 5 2608 16
	movq	-848(%rbp), %rax
	movq	40(%rax), %rax
	.loc 5 2608 14
	testq	%rax, %rax
	je	.L509
	.loc 5 2611 22
	movq	-848(%rbp), %rdx
	movq	-816(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_file_security_ctx
.L509:
	.loc 5 2614 14
	cmpq	$0, -872(%rbp)
	je	.L510
	.loc 5 2615 31
	movq	-872(%rbp), %rax
	movb	$1, (%rax)
.L510:
	.loc 5 2617 14
	cmpb	$0, -824(%rbp)
	je	.L511
	.loc 5 2617 37 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	63(%rax), %eax
	.loc 5 2617 35 discriminator 1
	xorl	$1, %eax
	.loc 5 2617 32 discriminator 1
	testb	%al, %al
	je	.L511
	.loc 5 2626 15
	movq	-848(%rbp), %rax
	movq	72(%rax), %rax
	leaq	-624(%rbp), %rdx
	movq	-816(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	record_file@PLT
.L511:
	.loc 5 2629 18
	movl	$1, %eax
	jmp	.L598
.L507:
	.loc 5 2637 10
	cmpl	$22, -768(%rbp)
	jne	.L512
	.loc 5 2642 11
	movq	top_level_dst_name(%rip), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	top_level_src_name(%rip), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 2642 24
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	.loc 5 2642 11
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2650 27
	movq	-864(%rbp), %rax
	movb	$1, (%rax)
	.loc 5 2654 18
	movl	$1, %eax
	jmp	.L598
.L512:
	.loc 5 2672 10
	cmpl	$18, -768(%rbp)
	je	.L513
	.loc 5 2684 11
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-808(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 2685 18
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 5 2684 11
	movl	-768(%rbp), %eax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2687 11
	movq	-624(%rbp), %rdx
	movq	-616(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	forget_created@PLT
	.loc 5 2688 18
	movl	$0, %eax
	jmp	.L598
.L513:
	.loc 5 2697 12
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2697 71
	cmpl	$16384, %eax
	jne	.L514
	.loc 5 2697 33 discriminator 1
	movq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	rmdir@PLT
	.loc 5 2697 71 discriminator 1
	testl	%eax, %eax
	setne	%al
	jmp	.L515
.L514:
	.loc 5 2697 52 discriminator 2
	movq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	.loc 5 2697 71 discriminator 2
	testl	%eax, %eax
	setne	%al
.L515:
	.loc 5 2697 10 discriminator 4
	testb	%al, %al
	je	.L516
	.loc 5 2698 14
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 2698 11
	cmpl	$2, %eax
	je	.L516
	.loc 5 2700 11
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r13
	movq	-808(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	.loc 5 2701 14
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2700 21
	call	__errno_location@PLT
	.loc 5 2700 11
	movl	(%rax), %eax
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2703 11
	movq	-624(%rbp), %rdx
	movq	-616(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	forget_created@PLT
	.loc 5 2704 18
	movl	$0, %eax
	jmp	.L598
.L516:
	.loc 5 2707 12
	movq	-848(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 5 2707 10
	testb	%al, %al
	je	.L517
	.loc 5 2707 26 discriminator 1
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2707 22 discriminator 1
	cmpl	$16384, %eax
	je	.L517
	.loc 5 2709 19
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	.loc 5 2709 11
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 5 2710 11
	movq	-728(%rbp), %rdx
	movq	-816(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	emit_verbose
.L517:
	.loc 5 2712 15
	movb	$1, -820(%rbp)
.L503:
	.loc 5 2719 21
	movq	-848(%rbp), %rax
	movzbl	57(%rax), %eax
	.loc 5 2719 54
	testb	%al, %al
	je	.L518
	.loc 5 2719 35 discriminator 1
	movq	-848(%rbp), %rax
	movl	16(%rax), %eax
	.loc 5 2719 54 discriminator 1
	andl	$4095, %eax
	jmp	.L519
.L518:
	.loc 5 2719 54 is_stmt 0 discriminator 2
	movl	-780(%rbp), %eax
	andl	$4095, %eax
.L519:
	.loc 5 2719 17 is_stmt 1 discriminator 4
	movl	%eax, -748(%rbp)
	.loc 5 2722 10 discriminator 4
	movq	-848(%rbp), %rax
	movzbl	29(%rax), %eax
	.loc 5 2722 31 discriminator 4
	xorl	$1, %eax
	.loc 5 2723 9 discriminator 4
	testb	%al, %al
	je	.L520
	.loc 5 2723 11 discriminator 1
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2723 9 discriminator 1
	cmpl	$16384, %eax
	jne	.L521
	.loc 5 2723 9 is_stmt 0 discriminator 3
	movl	$18, %eax
	jmp	.L523
.L521:
	.loc 5 2723 9 discriminator 4
	movl	$0, %eax
	jmp	.L523
.L520:
	.loc 5 2723 9 discriminator 2
	movl	$63, %eax
.L523:
	.loc 5 2720 23 is_stmt 1
	andl	-748(%rbp), %eax
	movl	%eax, -772(%rbp)
	.loc 5 2726 14
	movb	$1, -789(%rbp)
	.loc 5 2732 9
	movzbl	-820(%rbp), %eax
	movzbl	%al, %ecx
	movq	-848(%rbp), %rdi
	movl	-780(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-808(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	set_process_security_ctx
	.loc 5 2732 7
	xorl	$1, %eax
	.loc 5 2732 6
	testb	%al, %al
	je	.L524
	.loc 5 2733 12
	movl	$0, %eax
	jmp	.L598
.L524:
	.loc 5 2735 7
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2735 6
	cmpl	$16384, %eax
	jne	.L525
.LBB48:
	.loc 5 2744 11
	movq	-840(%rbp), %rdx
	leaq	-624(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_ancestor
	.loc 5 2744 10
	testb	%al, %al
	je	.L526
	.loc 5 2746 11
	movq	-808(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 2746 24
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	.loc 5 2746 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2748 11
	jmp	.L455
.L526:
	.loc 5 2753 13
	movl	$16, %eax
	subq	$1, %rax
	addq	$32, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L527:
	cmpq	%rdx, %rsp
	je	.L528
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L527
.L528:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L529
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L529:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -632(%rbp)
	.loc 5 2754 19
	movq	-632(%rbp), %rax
	movq	-840(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 5 2755 24
	movq	-616(%rbp), %rdx
	.loc 5 2755 16
	movq	-632(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 5 2756 24
	movq	-624(%rbp), %rdx
	.loc 5 2756 16
	movq	-632(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 5 2758 11
	movzbl	-820(%rbp), %eax
	.loc 5 2758 10
	testb	%al, %al
	jne	.L530
	.loc 5 2758 23 discriminator 1
	movl	-456(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2758 19 discriminator 1
	cmpl	$16384, %eax
	je	.L531
.L530:
	.loc 5 2764 48
	movl	-772(%rbp), %eax
	notl	%eax
	.loc 5 2764 15
	andl	-748(%rbp), %eax
	movl	%eax, %edx
	movq	-816(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mkdir@PLT
	.loc 5 2764 14
	testl	%eax, %eax
	je	.L532
	.loc 5 2766 15
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 2766 32
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2766 25
	call	__errno_location@PLT
	.loc 5 2766 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2768 15
	jmp	.L455
.L532:
	.loc 5 2775 15
	leaq	-480(%rbp), %rdx
	movq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 5 2775 14
	testl	%eax, %eax
	je	.L533
	.loc 5 2777 15
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 2777 32
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2777 25
	call	__errno_location@PLT
	.loc 5 2777 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2778 15
	jmp	.L455
.L533:
	.loc 5 2780 27
	movl	-456(%rbp), %eax
	.loc 5 2780 36
	andl	$448, %eax
	.loc 5 2780 19
	cmpl	$448, %eax
	je	.L534
	.loc 5 2784 24
	movl	-456(%rbp), %eax
	movl	%eax, -776(%rbp)
	.loc 5 2785 32
	movb	$1, -790(%rbp)
	.loc 5 2787 19
	movl	-776(%rbp), %eax
	orl	$448, %eax
	movl	%eax, %edx
	movq	-816(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lchmod@PLT
	.loc 5 2787 18
	testl	%eax, %eax
	je	.L534
	.loc 5 2789 19
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 2789 36
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2789 29
	call	__errno_location@PLT
	.loc 5 2789 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2791 19
	jmp	.L455
.L534:
	.loc 5 2799 16
	movq	-856(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 2799 15
	xorl	$1, %eax
	.loc 5 2799 14
	testb	%al, %al
	je	.L535
	.loc 5 2801 15
	movq	-480(%rbp), %rdx
	movq	-472(%rbp), %rcx
	movq	-816(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remember_copied@PLT
	.loc 5 2802 55
	movq	-856(%rbp), %rax
	movb	$1, (%rax)
.L535:
	.loc 5 2805 16
	movq	-848(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 5 2805 14
	testb	%al, %al
	je	.L538
	.loc 5 2807 20
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 2807 18
	testb	%al, %al
	je	.L537
	.loc 5 2808 17
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 2808 25
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	.loc 5 2808 17
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 5 2805 14
	jmp	.L538
.L537:
	.loc 5 2810 17
	movq	-816(%rbp), %rcx
	movq	-808(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	emit_verbose
	.loc 5 2805 14
	jmp	.L538
.L531:
	.loc 5 2815 31
	movl	$0, -772(%rbp)
	.loc 5 2820 16
	movq	-848(%rbp), %rax
	movq	40(%rax), %rax
	.loc 5 2820 14
	testq	%rax, %rax
	jne	.L539
	.loc 5 2820 43 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 5 2820 39 discriminator 1
	testb	%al, %al
	je	.L538
.L539:
	.loc 5 2821 19
	movq	-848(%rbp), %rdx
	movq	-816(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_file_security_ctx
	.loc 5 2821 17
	xorl	$1, %eax
	.loc 5 2821 16
	testb	%al, %al
	je	.L538
	.loc 5 2823 22
	movq	-848(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 5 2823 20
	testb	%al, %al
	jne	.L602
.L538:
	.loc 5 2829 12
	movq	-848(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 5 2829 10
	testb	%al, %al
	je	.L540
	.loc 5 2829 30 discriminator 1
	cmpq	$0, -832(%rbp)
	je	.L540
	.loc 5 2829 49 discriminator 2
	movq	-832(%rbp), %rax
	movq	(%rax), %rdx
	.loc 5 2829 67 discriminator 2
	movq	-624(%rbp), %rax
	.loc 5 2829 40 discriminator 2
	cmpq	%rax, %rdx
	jne	.L542
.L540:
	.loc 5 2840 24
	movzbl	-820(%rbp), %eax
	movzbl	%al, %edx
	movq	-848(%rbp), %r8
	movq	-632(%rbp), %rdi
	leaq	-624(%rbp), %rcx
	movq	-816(%rbp), %rsi
	movq	-808(%rbp), %rax
	pushq	-864(%rbp)
	pushq	-856(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	copy_dir
	addq	$16, %rsp
	movb	%al, -789(%rbp)
	jmp	.L542
.L525:
.LBE48:
	.loc 5 2845 13
	movq	-848(%rbp), %rax
	movzbl	58(%rax), %eax
	.loc 5 2845 11
	testb	%al, %al
	je	.L543
.LBB49:
	.loc 5 2847 23
	movb	$1, -787(%rbp)
	.loc 5 2848 11
	movq	-808(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 5 2848 10
	cmpb	$47, %al
	je	.L544
.LBB50:
	.loc 5 2856 24
	movq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	dir_name@PLT
	movq	%rax, -640(%rbp)
	.loc 5 2858 29
	movq	-640(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC61(%rip), %rdi
	call	strcmp@PLT
	.loc 5 2864 29
	testl	%eax, %eax
	je	.L545
	.loc 5 2862 32
	leaq	-336(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC61(%rip), %rdi
	call	stat@PLT
	.loc 5 2862 29
	testl	%eax, %eax
	jne	.L545
	.loc 5 2863 32
	leaq	-192(%rbp), %rdx
	movq	-640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 5 2863 29
	testl	%eax, %eax
	jne	.L545
	.loc 5 2864 32
	movq	-328(%rbp), %rdx
	movq	-184(%rbp), %rax
	.loc 5 2864 29
	cmpq	%rax, %rdx
	jne	.L546
	.loc 5 2864 32 discriminator 2
	movq	-336(%rbp), %rdx
	movq	-192(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L546
.L545:
	.loc 5 2864 29 discriminator 4
	movl	$1, %eax
	jmp	.L547
.L546:
	.loc 5 2864 29 is_stmt 0 discriminator 5
	movl	$0, %eax
.L547:
	.loc 5 2858 26 is_stmt 1
	movb	%al, -781(%rbp)
	andb	$1, -781(%rbp)
	.loc 5 2865 11
	movq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 5 2867 15
	movzbl	-781(%rbp), %eax
	xorl	$1, %eax
	.loc 5 2867 14
	testb	%al, %al
	je	.L544
	.loc 5 2869 15
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 5 2870 12
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	.loc 5 2869 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L455
.L544:
.LBE50:
	.loc 5 2877 35
	movq	-848(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 5 2876 17
	movzbl	%al, %ecx
	movq	-816(%rbp), %rdx
	movq	-808(%rbp), %rax
	movl	$-1, %r8d
	movl	$-100, %esi
	movq	%rax, %rdi
	call	force_symlinkat@PLT
	movl	%eax, -744(%rbp)
	.loc 5 2878 10
	cmpl	$0, -744(%rbp)
	jle	.L542
	.loc 5 2880 11
	movq	-808(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 2880 26
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 5 2880 11
	movl	-744(%rbp), %eax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2882 11
	jmp	.L455
.L543:
.LBE49:
	.loc 5 2899 13
	movq	-848(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 5 2899 11
	testb	%al, %al
	je	.L549
.LBB51:
	.loc 5 2903 24
	movq	-848(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 5 2904 23
	testb	%al, %al
	jne	.L550
	.loc 5 2904 27 discriminator 2
	movq	-848(%rbp), %rax
	movl	8(%rax), %eax
	.loc 5 2904 23 discriminator 2
	cmpl	$3, %eax
	jne	.L551
.L550:
	.loc 5 2904 23 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L552
.L551:
	.loc 5 2904 23 discriminator 4
	movl	$0, %eax
.L552:
	.loc 5 2903 12 is_stmt 1
	movb	%al, -782(%rbp)
	andb	$1, -782(%rbp)
	.loc 5 2905 13
	movzbl	-784(%rbp), %ecx
	movzbl	-782(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-808(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	create_hard_link
	.loc 5 2905 11
	xorl	$1, %eax
	.loc 5 2905 10
	testb	%al, %al
	je	.L542
	.loc 5 2906 9
	jmp	.L455
.L549:
.LBE51:
	.loc 5 2908 12
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2908 11
	cmpl	$32768, %eax
	je	.L553
	.loc 5 2909 17
	movq	-848(%rbp), %rax
	movzbl	20(%rax), %eax
	.loc 5 2909 12
	testb	%al, %al
	je	.L554
	.loc 5 2909 39 discriminator 1
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2909 35 discriminator 1
	cmpl	$40960, %eax
	je	.L554
.L553:
	.loc 5 2911 25
	movb	$1, -788(%rbp)
	.loc 5 2921 13
	movl	-748(%rbp), %eax
	andl	$511, %eax
	movl	%eax, %ecx
	leaq	-820(%rbp), %r9
	movl	-772(%rbp), %r8d
	movq	-848(%rbp), %rdx
	movq	-816(%rbp), %rsi
	movq	-808(%rbp), %rax
	subq	$8, %rsp
	leaq	-624(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	copy_reg
	addq	$16, %rsp
	.loc 5 2921 11
	xorl	$1, %eax
	.loc 5 2921 10
	testb	%al, %al
	je	.L542
	.loc 5 2923 9
	jmp	.L455
.L554:
	.loc 5 2925 12
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2925 11
	cmpl	$4096, %eax
	jne	.L556
	.loc 5 2931 39
	movl	-772(%rbp), %eax
	notl	%eax
	.loc 5 2931 11
	andl	-780(%rbp), %eax
	movl	%eax, %ecx
	movq	-816(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	rpl_mknod@PLT
	.loc 5 2931 10
	testl	%eax, %eax
	je	.L542
	.loc 5 2932 53
	movl	-772(%rbp), %eax
	notl	%eax
	.loc 5 2932 51
	andl	-780(%rbp), %eax
	.loc 5 2932 13
	andb	$-17, %ah
	movl	%eax, %edx
	movq	-816(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mkfifo@PLT
	.loc 5 2932 12
	testl	%eax, %eax
	je	.L542
	.loc 5 2934 13
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 2934 30
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2934 23
	call	__errno_location@PLT
	.loc 5 2934 13
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2935 13
	jmp	.L455
.L556:
	.loc 5 2938 12
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2938 11
	cmpl	$24576, %eax
	je	.L557
	.loc 5 2938 34 discriminator 1
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2938 31 discriminator 1
	cmpl	$8192, %eax
	je	.L557
	.loc 5 2938 56 discriminator 2
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2938 53 discriminator 2
	cmpl	$49152, %eax
	jne	.L558
.L557:
	.loc 5 2940 11
	movq	-584(%rbp), %rdx
	.loc 5 2940 39
	movl	-772(%rbp), %eax
	notl	%eax
	.loc 5 2940 11
	andl	-780(%rbp), %eax
	movl	%eax, %ecx
	movq	-816(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	rpl_mknod@PLT
	.loc 5 2940 10
	testl	%eax, %eax
	je	.L542
	.loc 5 2943 11
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 2943 28
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2943 21
	call	__errno_location@PLT
	.loc 5 2943 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2945 11
	jmp	.L455
.L558:
	.loc 5 2948 12
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2948 11
	cmpl	$40960, %eax
	jne	.L560
.LBB52:
	.loc 5 2950 65
	movq	-576(%rbp), %rax
	.loc 5 2950 28
	movq	%rax, %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	areadlink_with_size@PLT
	movq	%rax, -656(%rbp)
	.loc 5 2951 23
	movb	$1, -787(%rbp)
	.loc 5 2952 10
	cmpq	$0, -656(%rbp)
	jne	.L561
	.loc 5 2954 11
	movq	-808(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 2954 28
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2954 21
	call	__errno_location@PLT
	.loc 5 2954 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2956 11
	jmp	.L455
.L561:
	.loc 5 2960 43
	movq	-848(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 5 2959 25
	movzbl	%al, %ecx
	movq	-816(%rbp), %rdx
	movq	-656(%rbp), %rax
	movl	$-1, %r8d
	movl	$-100, %esi
	movq	%rax, %rdi
	call	force_symlinkat@PLT
	movl	%eax, -764(%rbp)
	.loc 5 2961 10
	cmpl	$0, -764(%rbp)
	jle	.L562
	.loc 5 2961 31 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	59(%rax), %eax
	.loc 5 2961 27 discriminator 1
	testb	%al, %al
	je	.L562
	.loc 5 2961 43 discriminator 2
	movzbl	-820(%rbp), %eax
	xorl	$1, %eax
	.loc 5 2961 40 discriminator 2
	testb	%al, %al
	je	.L562
	.loc 5 2961 55 discriminator 3
	movl	-456(%rbp), %eax
	andl	$61440, %eax
	.loc 5 2961 52 discriminator 3
	cmpl	$40960, %eax
	jne	.L562
	.loc 5 2962 20
	movq	-432(%rbp), %rbx
	.loc 5 2962 32
	movq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 5 2962 11
	cmpq	%rax, %rbx
	jne	.L562
.LBB53:
	.loc 5 2969 50
	movq	-432(%rbp), %rax
	.loc 5 2969 13
	movq	%rax, %rdx
	movq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	areadlink_with_size@PLT
	movq	%rax, -648(%rbp)
	.loc 5 2970 14
	cmpq	$0, -648(%rbp)
	je	.L562
	.loc 5 2972 19
	movq	-656(%rbp), %rdx
	movq	-648(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 5 2972 18
	testl	%eax, %eax
	jne	.L563
	.loc 5 2973 29
	movl	$0, -764(%rbp)
.L563:
	.loc 5 2974 15
	movq	-648(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L562:
.LBE53:
	.loc 5 2977 7
	movq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 5 2978 10
	cmpl	$0, -764(%rbp)
	jle	.L564
	.loc 5 2980 11
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 2980 34
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 5 2980 11
	movl	-764(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2982 11
	jmp	.L455
.L564:
	.loc 5 2985 12
	movq	-848(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 5 2985 10
	testb	%al, %al
	je	.L565
	.loc 5 2986 9
	call	restore_default_fscreatecon_or_die
.L565:
	.loc 5 2988 12
	movq	-848(%rbp), %rax
	movzbl	29(%rax), %eax
	.loc 5 2988 10
	testb	%al, %al
	je	.L542
	.loc 5 2993 18
	movl	-592(%rbp), %edx
	movl	-596(%rbp), %ecx
	movq	-816(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	lchown@PLT
	.loc 5 2992 14
	testl	%eax, %eax
	je	.L542
	.loc 5 2994 20
	movq	-848(%rbp), %rax
	movq	%rax, %rdi
	call	chown_failure_ok
	.loc 5 2994 18
	xorl	$1, %eax
	.loc 5 2994 15
	testb	%al, %al
	je	.L542
	.loc 5 2996 32
	leaq	.LC11(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 2996 25
	call	__errno_location@PLT
	.loc 5 2996 15
	movl	(%rax), %eax
	movq	-816(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 2998 20
	movq	-848(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 5 2998 18
	testb	%al, %al
	je	.L542
	.loc 5 2999 17
	jmp	.L455
.L560:
.LBE52:
	.loc 5 3012 7
	movq	-808(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 5 3012 20
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	.loc 5 3012 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 3013 7
	jmp	.L455
.L542:
	.loc 5 3018 7
	movzbl	-820(%rbp), %eax
	xorl	$1, %eax
	.loc 5 3018 6
	testb	%al, %al
	je	.L566
	.loc 5 3018 21 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	20(%rax), %eax
	.loc 5 3018 19 discriminator 1
	xorl	$1, %eax
	.loc 5 3018 16 discriminator 1
	testb	%al, %al
	je	.L566
	.loc 5 3018 43 discriminator 2
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 3018 39 discriminator 2
	cmpl	$16384, %eax
	je	.L566
	.loc 5 3019 12
	movq	-848(%rbp), %rax
	movq	40(%rax), %rax
	.loc 5 3019 7
	testq	%rax, %rax
	jne	.L567
	.loc 5 3019 39 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 5 3019 35 discriminator 1
	testb	%al, %al
	je	.L566
.L567:
	.loc 5 3021 13
	movq	-848(%rbp), %rdx
	movq	-816(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_file_security_ctx
	.loc 5 3021 11
	xorl	$1, %eax
	.loc 5 3021 10
	testb	%al, %al
	je	.L566
	.loc 5 3023 17
	movq	-848(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 5 3023 15
	testb	%al, %al
	jne	.L603
.L566:
	.loc 5 3028 6
	cmpb	$0, -824(%rbp)
	je	.L568
	.loc 5 3028 28 discriminator 1
	movq	-848(%rbp), %rax
	movq	72(%rax), %rax
	.loc 5 3028 24 discriminator 1
	testq	%rax, %rax
	je	.L568
.LBB54:
	.loc 5 3033 11
	leaq	-192(%rbp), %rdx
	movq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 5 3033 10
	testl	%eax, %eax
	jne	.L568
	.loc 5 3034 9
	movq	-848(%rbp), %rax
	movq	72(%rax), %rax
	leaq	-192(%rbp), %rdx
	movq	-816(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	record_file@PLT
.L568:
.LBE54:
	.loc 5 3039 8
	movq	-848(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 5 3039 6
	testb	%al, %al
	je	.L570
	.loc 5 3039 25 discriminator 1
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 3040 7 discriminator 1
	cmpl	$16384, %eax
	je	.L570
	.loc 5 3042 12
	movzbl	-789(%rbp), %eax
	jmp	.L598
.L570:
	.loc 5 3044 6
	cmpb	$0, -788(%rbp)
	je	.L571
	.loc 5 3045 12
	movzbl	-789(%rbp), %eax
	jmp	.L598
.L571:
	.loc 5 3059 8
	movq	-848(%rbp), %rax
	movzbl	31(%rax), %eax
	.loc 5 3059 6
	testb	%al, %al
	je	.L572
.LBB55:
	.loc 5 3062 21
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	.loc 5 3063 21
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	.loc 5 3068 11
	cmpb	$0, -787(%rbp)
	je	.L573
	.loc 5 3066 14 discriminator 1
	leaq	-192(%rbp), %rdx
	movq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	utimens_symlink
	.loc 5 3068 11 discriminator 1
	testl	%eax, %eax
	setne	%al
	jmp	.L574
.L573:
	.loc 5 3067 14 discriminator 2
	leaq	-192(%rbp), %rdx
	movq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	utimens@PLT
	.loc 5 3068 11 discriminator 2
	testl	%eax, %eax
	setne	%al
.L574:
	.loc 5 3065 10
	testb	%al, %al
	je	.L572
	.loc 5 3070 11
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 3070 28
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 3070 21
	call	__errno_location@PLT
	.loc 5 3070 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 3071 16
	movq	-848(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 5 3071 14
	testb	%al, %al
	je	.L572
	.loc 5 3072 20
	movl	$0, %eax
	jmp	.L598
.L572:
.LBE55:
	.loc 5 3077 7
	movzbl	-787(%rbp), %eax
	xorl	$1, %eax
	.loc 5 3077 6
	testb	%al, %al
	je	.L604
	.loc 5 3077 28 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	29(%rax), %eax
	.loc 5 3077 24 discriminator 1
	testb	%al, %al
	je	.L604
	.loc 5 3078 11
	movzbl	-820(%rbp), %eax
	.loc 5 3078 7
	testb	%al, %al
	jne	.L577
	.loc 5 3078 23 discriminator 1
	movl	-596(%rbp), %edx
	movl	-452(%rbp), %eax
	.loc 5 3078 19 discriminator 1
	cmpl	%eax, %edx
	jne	.L577
	.loc 5 3078 23 discriminator 2
	movl	-592(%rbp), %edx
	movl	-448(%rbp), %eax
	.loc 5 3078 22 discriminator 2
	cmpl	%eax, %edx
	je	.L604
.L577:
	.loc 5 3080 15
	movzbl	-820(%rbp), %eax
	movzbl	%al, %ecx
	leaq	-480(%rbp), %rdi
	leaq	-624(%rbp), %rdx
	movq	-816(%rbp), %rsi
	movq	-848(%rbp), %rax
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	set_owner
	.loc 5 3080 7
	cmpl	$-1, %eax
	je	.L578
	testl	%eax, %eax
	je	.L579
	jmp	.L576
.L578:
	.loc 5 3083 18
	movl	$0, %eax
	jmp	.L598
.L579:
	.loc 5 3086 20
	andl	$-3585, -780(%rbp)
	.loc 5 3087 11
	jmp	.L576
.L604:
	.loc 5 3089 5
	nop
.L576:
	.loc 5 3092 8
	movq	-848(%rbp), %rax
	movzbl	53(%rax), %eax
	.loc 5 3092 6
	testb	%al, %al
	je	.L580
	.loc 5 3092 30 discriminator 1
	movq	-848(%rbp), %rcx
	movq	-816(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rcx, %r8
	movl	$-1, %ecx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	copy_attr
	.loc 5 3092 28 discriminator 1
	xorl	$1, %eax
	.loc 5 3092 25 discriminator 1
	testb	%al, %al
	je	.L580
	.loc 5 3093 11
	movq	-848(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 5 3093 7
	testb	%al, %al
	je	.L580
	.loc 5 3094 12
	movl	$0, %eax
	jmp	.L598
.L580:
	.loc 5 3097 6
	cmpb	$0, -787(%rbp)
	je	.L581
	.loc 5 3098 12
	movzbl	-789(%rbp), %eax
	jmp	.L598
.L581:
	.loc 5 3100 3
	leaq	-624(%rbp), %rdx
	movq	-816(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	set_author
	.loc 5 3102 8
	movq	-848(%rbp), %rax
	movzbl	30(%rax), %eax
	.loc 5 3102 6
	testb	%al, %al
	jne	.L582
	.loc 5 3102 28 discriminator 1
	movq	-848(%rbp), %rax
	movzbl	24(%rax), %eax
	.loc 5 3102 24 discriminator 1
	testb	%al, %al
	je	.L583
.L582:
	.loc 5 3104 11
	movl	-780(%rbp), %ecx
	movq	-816(%rbp), %rdx
	movq	-808(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	copy_acl@PLT
	.loc 5 3104 10
	testl	%eax, %eax
	je	.L605
	.loc 5 3105 15
	movq	-848(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 5 3105 11
	testb	%al, %al
	je	.L605
	.loc 5 3106 16
	movl	$0, %eax
	jmp	.L598
.L583:
	.loc 5 3108 13
	movq	-848(%rbp), %rax
	movzbl	57(%rax), %eax
	.loc 5 3108 11
	testb	%al, %al
	je	.L586
	.loc 5 3110 11
	movq	-848(%rbp), %rax
	movl	16(%rax), %edx
	movq	-816(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	set_acl@PLT
	.loc 5 3110 10
	testl	%eax, %eax
	je	.L585
	.loc 5 3111 16
	movl	$0, %eax
	jmp	.L598
.L586:
	.loc 5 3113 13
	movq	-848(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 5 3113 11
	testb	%al, %al
	je	.L587
	.loc 5 3113 41 discriminator 1
	movzbl	-820(%rbp), %eax
	testb	%al, %al
	je	.L587
.LBB56:
	.loc 5 3115 33
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 3116 45
	cmpl	$16384, %eax
	je	.L588
	.loc 5 3115 55
	movl	-780(%rbp), %eax
	andl	$61440, %eax
	.loc 5 3115 52
	cmpl	$49152, %eax
	jne	.L589
.L588:
	.loc 5 3116 45 discriminator 1
	movl	$511, %eax
	jmp	.L590
.L589:
	.loc 5 3116 45 is_stmt 0
	movl	$438, %eax
.L590:
	.loc 5 3115 11 is_stmt 1
	movl	%eax, -740(%rbp)
	.loc 5 3117 57
	call	cached_umask
	.loc 5 3117 56
	notl	%eax
	movl	%eax, %edx
	.loc 5 3117 11
	movl	-740(%rbp), %eax
	andl	%eax, %edx
	movq	-816(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	set_acl@PLT
	.loc 5 3117 10
	testl	%eax, %eax
	je	.L606
	.loc 5 3118 16
	movl	$0, %eax
	jmp	.L598
.L587:
.LBE56:
	.loc 5 3122 10
	cmpl	$0, -772(%rbp)
	je	.L592
	.loc 5 3124 36
	call	cached_umask
	.loc 5 3124 34
	notl	%eax
	.loc 5 3124 31
	andl	%eax, -772(%rbp)
	.loc 5 3126 14
	cmpl	$0, -772(%rbp)
	je	.L592
	.loc 5 3126 38 discriminator 1
	movzbl	-790(%rbp), %eax
	xorl	$1, %eax
	.loc 5 3126 35 discriminator 1
	testb	%al, %al
	je	.L592
	.loc 5 3134 19
	movzbl	-820(%rbp), %eax
	.loc 5 3134 18
	testb	%al, %al
	je	.L593
	.loc 5 3134 30 discriminator 1
	leaq	-480(%rbp), %rdx
	movq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 5 3134 27 discriminator 1
	testl	%eax, %eax
	je	.L593
	.loc 5 3136 19
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 3136 36
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 3136 29
	call	__errno_location@PLT
	.loc 5 3136 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 3137 26
	movl	$0, %eax
	jmp	.L598
.L593:
	.loc 5 3139 24
	movl	-456(%rbp), %eax
	movl	%eax, -776(%rbp)
	.loc 5 3140 41
	movl	-776(%rbp), %eax
	notl	%eax
	.loc 5 3140 39
	andl	-772(%rbp), %eax
	.loc 5 3140 18
	testl	%eax, %eax
	je	.L592
	.loc 5 3141 34
	movb	$1, -790(%rbp)
.L592:
	.loc 5 3145 10
	cmpb	$0, -790(%rbp)
	je	.L585
	.loc 5 3147 15
	movl	-776(%rbp), %eax
	orl	-772(%rbp), %eax
	movl	%eax, %edx
	movq	-816(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lchmod@PLT
	.loc 5 3147 14
	testl	%eax, %eax
	je	.L585
	.loc 5 3149 15
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 3149 32
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 3149 25
	call	__errno_location@PLT
	.loc 5 3149 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 5 3151 20
	movq	-848(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 5 3151 18
	testb	%al, %al
	je	.L585
	.loc 5 3152 24
	movl	$0, %eax
	jmp	.L598
.L605:
	.loc 5 3104 10
	nop
	jmp	.L585
.L606:
	.loc 5 3114 5
	nop
.L585:
	.loc 5 3157 10
	movzbl	-789(%rbp), %eax
	jmp	.L598
.L600:
.LBB57:
	.loc 5 2260 27
	nop
	jmp	.L455
.L601:
.LBE57:
	.loc 5 2589 13
	nop
	jmp	.L455
.L602:
.LBB58:
	.loc 5 2824 19
	nop
	jmp	.L455
.L603:
.LBE58:
	.loc 5 3024 14
	nop
.L455:
	.loc 5 3161 8
	movq	-848(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 5 3161 6
	testb	%al, %al
	je	.L594
	.loc 5 3162 5
	call	restore_default_fscreatecon_or_die
.L594:
	.loc 5 3170 6
	cmpq	$0, -736(%rbp)
	jne	.L595
	.loc 5 3171 5
	movq	-624(%rbp), %rdx
	movq	-616(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	forget_created@PLT
.L595:
	.loc 5 3173 6
	cmpq	$0, -728(%rbp)
	je	.L596
	.loc 5 3175 11
	movq	-816(%rbp), %rdx
	movq	-728(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rename@PLT
	.loc 5 3175 10
	testl	%eax, %eax
	je	.L597
	.loc 5 3176 9
	movq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 5 3176 26
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 5 3176 19
	call	__errno_location@PLT
	.loc 5 3176 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L596
.L597:
	.loc 5 3179 16
	movq	-848(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 5 3179 14
	testb	%al, %al
	je	.L596
	.loc 5 3180 13
	movq	-816(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$1, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %r12
	movq	-728(%rbp), %rax
	movq	%rax, %rdx
	movl	$4, %esi
	movl	$0, %edi
	call	quotearg_n_style@PLT
	movq	%rax, %rbx
	.loc 5 3180 21
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	.loc 5 3180 13
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L596:
	.loc 5 3184 10
	movl	$0, %eax
.L598:
	.loc 5 3185 1 discriminator 4
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L599
	.loc 5 3185 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L599:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	copy_internal, .-copy_internal
	.section	.rodata
.LC71:
	.string	"co != NULL"
	.align 8
.LC72:
	.string	"VALID_BACKUP_TYPE (co->backup_type)"
	.align 8
.LC73:
	.string	"VALID_SPARSE_MODE (co->sparse_mode)"
	.align 8
.LC74:
	.string	"VALID_REFLINK_MODE (co->reflink_mode)"
	.align 8
.LC75:
	.string	"!(co->hard_link && co->symbolic_link)"
	.align 8
.LC76:
	.string	"! (co->reflink_mode == REFLINK_ALWAYS && co->sparse_mode != SPARSE_AUTO)"
	.text
	.type	valid_options, @function
valid_options:
.LFB91:
	.loc 5 3189 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 3190 3
	cmpq	$0, -8(%rbp)
	jne	.L608
	.loc 5 3190 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7724(%rip), %rcx
	movl	$3190, %edx
	leaq	.LC30(%rip), %rsi
	leaq	.LC71(%rip), %rdi
	call	__assert_fail@PLT
.L608:
	.loc 5 3191 3 is_stmt 1
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jbe	.L609
	.loc 5 3191 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7724(%rip), %rcx
	movl	$3191, %edx
	leaq	.LC30(%rip), %rsi
	leaq	.LC72(%rip), %rdi
	call	__assert_fail@PLT
.L609:
	.loc 5 3192 3 is_stmt 1
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$1, %eax
	je	.L610
	.loc 5 3192 3 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$2, %eax
	je	.L610
	.loc 5 3192 3 discriminator 2
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$3, %eax
	je	.L610
	.loc 5 3192 3 discriminator 3
	leaq	__PRETTY_FUNCTION__.7724(%rip), %rcx
	movl	$3192, %edx
	leaq	.LC30(%rip), %rsi
	leaq	.LC73(%rip), %rdi
	call	__assert_fail@PLT
.L610:
	.loc 5 3193 3 is_stmt 1
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L611
	.loc 5 3193 3 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	$1, %eax
	je	.L611
	.loc 5 3193 3 discriminator 2
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	$2, %eax
	je	.L611
	.loc 5 3193 3 discriminator 3
	leaq	__PRETTY_FUNCTION__.7724(%rip), %rcx
	movl	$3193, %edx
	leaq	.LC30(%rip), %rsi
	leaq	.LC74(%rip), %rdi
	call	__assert_fail@PLT
.L611:
	.loc 5 3194 3 is_stmt 1
	movq	-8(%rbp), %rax
	movzbl	23(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L612
	.loc 5 3194 3 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	58(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L612
	.loc 5 3194 3 discriminator 2
	leaq	__PRETTY_FUNCTION__.7724(%rip), %rcx
	movl	$3194, %edx
	leaq	.LC30(%rip), %rsi
	leaq	.LC75(%rip), %rdi
	call	__assert_fail@PLT
.L612:
	.loc 5 3195 3 is_stmt 1
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	$2, %eax
	jne	.L613
	.loc 5 3195 3 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$2, %eax
	je	.L613
	.loc 5 3195 3 discriminator 2
	leaq	__PRETTY_FUNCTION__.7724(%rip), %rcx
	movl	$3195, %edx
	leaq	.LC30(%rip), %rsi
	leaq	.LC76(%rip), %rdi
	call	__assert_fail@PLT
.L613:
	.loc 5 3198 10 is_stmt 1
	movl	$1, %eax
	.loc 5 3199 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	valid_options, .-valid_options
	.section	.rodata
.LC77:
	.string	"valid_options (options)"
	.text
	.globl	copy
	.type	copy, @function
copy:
.LFB92:
	.loc 5 3214 1
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
	movl	%edx, %eax
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movb	%al, -36(%rbp)
	.loc 5 3214 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 5 3215 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	valid_options
	testb	%al, %al
	jne	.L616
	.loc 5 3215 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7733(%rip), %rcx
	movl	$3215, %edx
	leaq	.LC30(%rip), %rsi
	leaq	.LC77(%rip), %rdi
	call	__assert_fail@PLT
.L616:
	.loc 5 3224 22 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, top_level_src_name(%rip)
	.loc 5 3225 22
	movq	-32(%rbp), %rax
	movq	%rax, top_level_dst_name(%rip)
	.loc 5 3227 8
	movb	$0, -9(%rbp)
	.loc 5 3228 10
	movzbl	-36(%rbp), %edx
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	leaq	-9(%rbp), %rcx
	pushq	%rcx
	pushq	$1
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	copy_internal
	addq	$32, %rsp
	.loc 5 3232 1
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L618
	call	__stack_chk_fail@PLT
.L618:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	copy, .-copy
	.globl	cp_options_default
	.type	cp_options_default, @function
cp_options_default:
.LFB93:
	.loc 5 3238 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 3239 3
	movq	-8(%rbp), %rax
	movl	$88, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 5 3253 48
	call	geteuid@PLT
	.loc 5 3253 59
	testl	%eax, %eax
	sete	%dl
	.loc 5 3253 45
	movq	-8(%rbp), %rax
	movb	%dl, 27(%rax)
	.loc 5 3253 26
	movq	-8(%rbp), %rax
	movzbl	27(%rax), %edx
	.loc 5 3253 23
	movq	-8(%rbp), %rax
	movb	%dl, 26(%rax)
	.loc 5 3255 19
	movq	-8(%rbp), %rax
	movl	$-1, 64(%rax)
	.loc 5 3256 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	cp_options_default, .-cp_options_default
	.globl	chown_failure_ok
	.type	chown_failure_ok, @function
chown_failure_ok:
.LFB94:
	.loc 5 3264 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 3269 12
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 3269 47
	cmpl	$1, %eax
	je	.L621
	.loc 5 3269 30 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 3269 27 discriminator 2
	cmpl	$22, %eax
	jne	.L622
.L621:
	.loc 5 3269 52 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	26(%rax), %eax
	.loc 5 3269 50 discriminator 3
	xorl	$1, %eax
	.loc 5 3269 47 discriminator 3
	testb	%al, %al
	je	.L622
	.loc 5 3269 47 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L623
.L622:
	.loc 5 3269 47 discriminator 6
	movl	$0, %eax
.L623:
	.loc 5 3269 47 discriminator 8
	andl	$1, %eax
	.loc 5 3270 1 is_stmt 1 discriminator 8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	chown_failure_ok, .-chown_failure_ok
	.type	owner_failure_ok, @function
owner_failure_ok:
.LFB95:
	.loc 5 3278 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 3279 12
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 3279 47
	cmpl	$1, %eax
	je	.L626
	.loc 5 3279 30 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 5 3279 27 discriminator 2
	cmpl	$22, %eax
	jne	.L627
.L626:
	.loc 5 3279 52 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	27(%rax), %eax
	.loc 5 3279 50 discriminator 3
	xorl	$1, %eax
	.loc 5 3279 47 discriminator 3
	testb	%al, %al
	je	.L627
	.loc 5 3279 47 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L628
.L627:
	.loc 5 3279 47 discriminator 6
	movl	$0, %eax
.L628:
	.loc 5 3279 47 discriminator 8
	andl	$1, %eax
	.loc 5 3280 1 is_stmt 1 discriminator 8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	owner_failure_ok, .-owner_failure_ok
	.globl	cached_umask
	.type	cached_umask, @function
cached_umask:
.LFB96:
	.loc 5 3290 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 5 3292 12
	movl	mask.7747(%rip), %eax
	.loc 5 3292 6
	cmpl	$-1, %eax
	jne	.L631
	.loc 5 3294 14
	movl	$0, %edi
	call	umask@PLT
	.loc 5 3294 12
	movl	%eax, mask.7747(%rip)
	.loc 5 3295 7
	movl	mask.7747(%rip), %eax
	movl	%eax, %edi
	call	umask@PLT
.L631:
	.loc 5 3297 10
	movl	mask.7747(%rip), %eax
	.loc 5 3298 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	cached_umask, .-cached_umask
	.local	stdin_rdev_status.7322
	.comm	stdin_rdev_status.7322,1,1
	.local	stdin_rdev.7321
	.comm	stdin_rdev.7321,8,8
	.local	zeros.7384
	.comm	zeros.7384,8,8
	.data
	.align 8
	.type	nz.7385, @object
	.size	nz.7385, 8
nz.7385:
	.quad	131072
	.local	fallback.7386
	.comm	fallback.7386,1024,32
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.7624, @object
	.size	__PRETTY_FUNCTION__.7624, 13
__PRETTY_FUNCTION__.7624:
	.string	"abandon_move"
	.align 8
	.type	__PRETTY_FUNCTION__.7688, @object
	.size	__PRETTY_FUNCTION__.7688, 14
__PRETTY_FUNCTION__.7688:
	.string	"copy_internal"
	.align 8
	.type	__PRETTY_FUNCTION__.7724, @object
	.size	__PRETTY_FUNCTION__.7724, 14
__PRETTY_FUNCTION__.7724:
	.string	"valid_options"
	.type	__PRETTY_FUNCTION__.7733, @object
	.size	__PRETTY_FUNCTION__.7733, 5
__PRETTY_FUNCTION__.7733:
	.string	"copy"
	.data
	.align 4
	.type	mask.7747, @object
	.size	mask.7747, 4
mask.7747:
	.long	-1
	.text
.Letext0:
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 12 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 15 "./lib/sys/select.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 18 "/usr/include/signal.h"
	.file 19 "/usr/include/unistd.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 21 "/usr/include/errno.h"
	.file 22 "src/version.h"
	.file 23 "./lib/exitfail.h"
	.file 24 "/usr/include/stdint.h"
	.file 25 "./lib/timespec.h"
	.file 26 "./lib/version-etc.h"
	.file 27 "./lib/progname.h"
	.file 28 "./lib/quotearg.h"
	.file 29 "./lib/backupfile.h"
	.file 30 "./lib/hash.h"
	.file 31 "src/copy.h"
	.file 32 "./lib/error.h"
	.file 33 "./lib/fadvise.h"
	.file 34 "./lib/quote.h"
	.file 35 "./lib/savedir.h"
	.file 36 "./lib/utimecmp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2bfe
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF442
	.byte	0xc
	.long	.LASF443
	.long	.LASF444
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x6
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
	.uleb128 0x5
	.long	0x49
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x7
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x7
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x7
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x7
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF12
	.byte	0x7
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF13
	.byte	0x7
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF14
	.byte	0x7
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF15
	.byte	0x7
	.byte	0x98
	.byte	0x19
	.long	0x76
	.uleb128 0x2
	.long	.LASF16
	.byte	0x7
	.byte	0x99
	.byte	0x1b
	.long	0x76
	.uleb128 0x2
	.long	.LASF17
	.byte	0x7
	.byte	0xa0
	.byte	0x1a
	.long	0x76
	.uleb128 0x2
	.long	.LASF18
	.byte	0x7
	.byte	0xae
	.byte	0x1d
	.long	0x76
	.uleb128 0x2
	.long	.LASF19
	.byte	0x7
	.byte	0xb3
	.byte	0x1c
	.long	0x76
	.uleb128 0x2
	.long	.LASF20
	.byte	0x7
	.byte	0xc1
	.byte	0x1b
	.long	0x76
	.uleb128 0x2
	.long	.LASF21
	.byte	0x7
	.byte	0xc4
	.byte	0x21
	.long	0x76
	.uleb128 0x8
	.byte	0x8
	.long	0x12b
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF22
	.uleb128 0x5
	.long	0x12b
	.uleb128 0x9
	.long	.LASF74
	.byte	0xd8
	.byte	0x8
	.byte	0x31
	.byte	0x8
	.long	0x2be
	.uleb128 0xa
	.long	.LASF23
	.byte	0x8
	.byte	0x33
	.byte	0x7
	.long	0x6a
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.long	0x125
	.byte	0x8
	.uleb128 0xa
	.long	.LASF25
	.byte	0x8
	.byte	0x37
	.byte	0x9
	.long	0x125
	.byte	0x10
	.uleb128 0xa
	.long	.LASF26
	.byte	0x8
	.byte	0x38
	.byte	0x9
	.long	0x125
	.byte	0x18
	.uleb128 0xa
	.long	.LASF27
	.byte	0x8
	.byte	0x39
	.byte	0x9
	.long	0x125
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0x8
	.byte	0x3a
	.byte	0x9
	.long	0x125
	.byte	0x28
	.uleb128 0xa
	.long	.LASF29
	.byte	0x8
	.byte	0x3b
	.byte	0x9
	.long	0x125
	.byte	0x30
	.uleb128 0xa
	.long	.LASF30
	.byte	0x8
	.byte	0x3c
	.byte	0x9
	.long	0x125
	.byte	0x38
	.uleb128 0xa
	.long	.LASF31
	.byte	0x8
	.byte	0x3d
	.byte	0x9
	.long	0x125
	.byte	0x40
	.uleb128 0xa
	.long	.LASF32
	.byte	0x8
	.byte	0x40
	.byte	0x9
	.long	0x125
	.byte	0x48
	.uleb128 0xa
	.long	.LASF33
	.byte	0x8
	.byte	0x41
	.byte	0x9
	.long	0x125
	.byte	0x50
	.uleb128 0xa
	.long	.LASF34
	.byte	0x8
	.byte	0x42
	.byte	0x9
	.long	0x125
	.byte	0x58
	.uleb128 0xa
	.long	.LASF35
	.byte	0x8
	.byte	0x44
	.byte	0x16
	.long	0x2d7
	.byte	0x60
	.uleb128 0xa
	.long	.LASF36
	.byte	0x8
	.byte	0x46
	.byte	0x14
	.long	0x2dd
	.byte	0x68
	.uleb128 0xa
	.long	.LASF37
	.byte	0x8
	.byte	0x48
	.byte	0x7
	.long	0x6a
	.byte	0x70
	.uleb128 0xa
	.long	.LASF38
	.byte	0x8
	.byte	0x49
	.byte	0x7
	.long	0x6a
	.byte	0x74
	.uleb128 0xa
	.long	.LASF39
	.byte	0x8
	.byte	0x4a
	.byte	0xb
	.long	0xd1
	.byte	0x78
	.uleb128 0xa
	.long	.LASF40
	.byte	0x8
	.byte	0x4d
	.byte	0x12
	.long	0x55
	.byte	0x80
	.uleb128 0xa
	.long	.LASF41
	.byte	0x8
	.byte	0x4e
	.byte	0xf
	.long	0x5c
	.byte	0x82
	.uleb128 0xa
	.long	.LASF42
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.long	0x2e3
	.byte	0x83
	.uleb128 0xa
	.long	.LASF43
	.byte	0x8
	.byte	0x51
	.byte	0xf
	.long	0x2f3
	.byte	0x88
	.uleb128 0xa
	.long	.LASF44
	.byte	0x8
	.byte	0x59
	.byte	0xd
	.long	0xdd
	.byte	0x90
	.uleb128 0xa
	.long	.LASF45
	.byte	0x8
	.byte	0x5b
	.byte	0x17
	.long	0x2fe
	.byte	0x98
	.uleb128 0xa
	.long	.LASF46
	.byte	0x8
	.byte	0x5c
	.byte	0x19
	.long	0x309
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x8
	.byte	0x5d
	.byte	0x14
	.long	0x2dd
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x8
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x8
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF50
	.byte	0x8
	.byte	0x60
	.byte	0x7
	.long	0x6a
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF51
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.long	0x30f
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x9
	.byte	0x7
	.byte	0x19
	.long	0x137
	.uleb128 0xb
	.long	.LASF445
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x8
	.byte	0x8
	.long	0x2d2
	.uleb128 0x8
	.byte	0x8
	.long	0x137
	.uleb128 0xd
	.long	0x12b
	.long	0x2f3
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2ca
	.uleb128 0xc
	.long	.LASF54
	.uleb128 0x8
	.byte	0x8
	.long	0x2f9
	.uleb128 0xc
	.long	.LASF55
	.uleb128 0x8
	.byte	0x8
	.long	0x304
	.uleb128 0xd
	.long	0x12b
	.long	0x31f
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x132
	.uleb128 0x5
	.long	0x31f
	.uleb128 0x2
	.long	.LASF56
	.byte	0xa
	.byte	0x3f
	.byte	0x11
	.long	0xd1
	.uleb128 0x2
	.long	.LASF57
	.byte	0xa
	.byte	0x4d
	.byte	0x13
	.long	0x10d
	.uleb128 0xf
	.long	.LASF58
	.byte	0xa
	.byte	0x89
	.byte	0xe
	.long	0x34e
	.uleb128 0x8
	.byte	0x8
	.long	0x2be
	.uleb128 0xf
	.long	.LASF59
	.byte	0xa
	.byte	0x8a
	.byte	0xe
	.long	0x34e
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa
	.byte	0x8b
	.byte	0xe
	.long	0x34e
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0x1a
	.byte	0xc
	.long	0x6a
	.uleb128 0xd
	.long	0x325
	.long	0x383
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.long	0x378
	.uleb128 0xf
	.long	.LASF62
	.byte	0xb
	.byte	0x1b
	.byte	0x1a
	.long	0x383
	.uleb128 0xf
	.long	.LASF63
	.byte	0xb
	.byte	0x1e
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF64
	.byte	0xb
	.byte	0x1f
	.byte	0x1a
	.long	0x383
	.uleb128 0x2
	.long	.LASF65
	.byte	0x6
	.byte	0x8f
	.byte	0x1a
	.long	0x76
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF66
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF67
	.uleb128 0x2
	.long	.LASF68
	.byte	0xc
	.byte	0x2f
	.byte	0x11
	.long	0xad
	.uleb128 0x2
	.long	.LASF69
	.byte	0xc
	.byte	0x3b
	.byte	0x11
	.long	0x89
	.uleb128 0x2
	.long	.LASF70
	.byte	0xc
	.byte	0x40
	.byte	0x11
	.long	0xa1
	.uleb128 0x2
	.long	.LASF71
	.byte	0xc
	.byte	0x45
	.byte	0x12
	.long	0xb9
	.uleb128 0x2
	.long	.LASF72
	.byte	0xc
	.byte	0x4f
	.byte	0x11
	.long	0x95
	.uleb128 0x2
	.long	.LASF73
	.byte	0xd
	.byte	0x7
	.byte	0x12
	.long	0xe9
	.uleb128 0x9
	.long	.LASF75
	.byte	0x10
	.byte	0xe
	.byte	0xa
	.byte	0x8
	.long	0x436
	.uleb128 0xa
	.long	.LASF76
	.byte	0xe
	.byte	0xc
	.byte	0xc
	.long	0xe9
	.byte	0
	.uleb128 0xa
	.long	.LASF77
	.byte	0xe
	.byte	0x10
	.byte	0x15
	.long	0x119
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x40e
	.uleb128 0x11
	.long	.LASF78
	.byte	0xf
	.value	0x30c
	.byte	0x1
	.long	0x6a
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF79
	.uleb128 0x8
	.byte	0x8
	.long	0x125
	.uleb128 0xd
	.long	0x125
	.long	0x465
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF80
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x455
	.uleb128 0xf
	.long	.LASF81
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF82
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x76
	.uleb128 0xf
	.long	.LASF83
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x455
	.uleb128 0xf
	.long	.LASF84
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF85
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x76
	.uleb128 0x11
	.long	.LASF86
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x6a
	.uleb128 0x9
	.long	.LASF87
	.byte	0x90
	.byte	0x11
	.byte	0x2e
	.byte	0x8
	.long	0x58b
	.uleb128 0xa
	.long	.LASF88
	.byte	0x11
	.byte	0x30
	.byte	0xd
	.long	0x89
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x11
	.byte	0x35
	.byte	0xd
	.long	0xad
	.byte	0x8
	.uleb128 0xa
	.long	.LASF90
	.byte	0x11
	.byte	0x3d
	.byte	0xf
	.long	0xc5
	.byte	0x10
	.uleb128 0xa
	.long	.LASF91
	.byte	0x11
	.byte	0x3e
	.byte	0xe
	.long	0xb9
	.byte	0x18
	.uleb128 0xa
	.long	.LASF92
	.byte	0x11
	.byte	0x40
	.byte	0xd
	.long	0x95
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF93
	.byte	0x11
	.byte	0x41
	.byte	0xd
	.long	0xa1
	.byte	0x20
	.uleb128 0xa
	.long	.LASF94
	.byte	0x11
	.byte	0x43
	.byte	0x9
	.long	0x6a
	.byte	0x24
	.uleb128 0xa
	.long	.LASF95
	.byte	0x11
	.byte	0x45
	.byte	0xd
	.long	0x89
	.byte	0x28
	.uleb128 0xa
	.long	.LASF96
	.byte	0x11
	.byte	0x4a
	.byte	0xd
	.long	0xd1
	.byte	0x30
	.uleb128 0xa
	.long	.LASF97
	.byte	0x11
	.byte	0x4e
	.byte	0x11
	.long	0xf5
	.byte	0x38
	.uleb128 0xa
	.long	.LASF98
	.byte	0x11
	.byte	0x50
	.byte	0x10
	.long	0x101
	.byte	0x40
	.uleb128 0xa
	.long	.LASF99
	.byte	0x11
	.byte	0x5b
	.byte	0x15
	.long	0x40e
	.byte	0x48
	.uleb128 0xa
	.long	.LASF100
	.byte	0x11
	.byte	0x5c
	.byte	0x15
	.long	0x40e
	.byte	0x58
	.uleb128 0xa
	.long	.LASF101
	.byte	0x11
	.byte	0x5d
	.byte	0x15
	.long	0x40e
	.byte	0x68
	.uleb128 0xa
	.long	.LASF102
	.byte	0x11
	.byte	0x6a
	.byte	0x17
	.long	0x590
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.long	0x4ba
	.uleb128 0xd
	.long	0x119
	.long	0x5a0
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uleb128 0x8
	.byte	0x8
	.long	0x5a0
	.uleb128 0xd
	.long	0x325
	.long	0x5b7
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x5a7
	.uleb128 0x11
	.long	.LASF103
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x5b7
	.uleb128 0x11
	.long	.LASF104
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x5b7
	.uleb128 0x11
	.long	.LASF105
	.byte	0x13
	.value	0x21f
	.byte	0xf
	.long	0x44f
	.uleb128 0x11
	.long	.LASF106
	.byte	0x13
	.value	0x221
	.byte	0xf
	.long	0x44f
	.uleb128 0xf
	.long	.LASF107
	.byte	0x14
	.byte	0x24
	.byte	0xe
	.long	0x125
	.uleb128 0xf
	.long	.LASF108
	.byte	0x14
	.byte	0x32
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF109
	.byte	0x14
	.byte	0x37
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF110
	.byte	0x14
	.byte	0x3b
	.byte	0xc
	.long	0x6a
	.uleb128 0xf
	.long	.LASF111
	.byte	0x15
	.byte	0x2d
	.byte	0xe
	.long	0x125
	.uleb128 0xf
	.long	.LASF112
	.byte	0x15
	.byte	0x2e
	.byte	0xe
	.long	0x125
	.uleb128 0x8
	.byte	0x8
	.long	0x63e
	.uleb128 0x13
	.uleb128 0xf
	.long	.LASF113
	.byte	0x16
	.byte	0x1
	.byte	0x14
	.long	0x31f
	.uleb128 0xf
	.long	.LASF114
	.byte	0x17
	.byte	0x12
	.byte	0x15
	.long	0x71
	.uleb128 0x2
	.long	.LASF115
	.byte	0x18
	.byte	0x66
	.byte	0x16
	.long	0x7d
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x29
	.byte	0x6
	.long	0x67b
	.uleb128 0x15
	.long	.LASF116
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x2a
	.byte	0x6
	.long	0x690
	.uleb128 0x16
	.long	.LASF117
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.long	0x132
	.long	0x69b
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.long	0x690
	.uleb128 0xf
	.long	.LASF118
	.byte	0x1a
	.byte	0x19
	.byte	0x13
	.long	0x69b
	.uleb128 0xf
	.long	.LASF119
	.byte	0x1b
	.byte	0x20
	.byte	0x14
	.long	0x31f
	.uleb128 0x17
	.long	.LASF133
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x20
	.byte	0x6
	.long	0x70d
	.uleb128 0x16
	.long	.LASF120
	.byte	0
	.uleb128 0x16
	.long	.LASF121
	.byte	0x1
	.uleb128 0x16
	.long	.LASF122
	.byte	0x2
	.uleb128 0x16
	.long	.LASF123
	.byte	0x3
	.uleb128 0x16
	.long	.LASF124
	.byte	0x4
	.uleb128 0x16
	.long	.LASF125
	.byte	0x5
	.uleb128 0x16
	.long	.LASF126
	.byte	0x6
	.uleb128 0x16
	.long	.LASF127
	.byte	0x7
	.uleb128 0x16
	.long	.LASF128
	.byte	0x8
	.uleb128 0x16
	.long	.LASF129
	.byte	0x9
	.uleb128 0x16
	.long	.LASF130
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x6b8
	.uleb128 0x11
	.long	.LASF131
	.byte	0x1c
	.value	0x10b
	.byte	0x1a
	.long	0x383
	.uleb128 0xd
	.long	0x70d
	.long	0x72a
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.long	0x71f
	.uleb128 0x11
	.long	.LASF132
	.byte	0x1c
	.value	0x10c
	.byte	0x21
	.long	0x72a
	.uleb128 0x17
	.long	.LASF134
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1d
	.byte	0x1e
	.byte	0x6
	.long	0x767
	.uleb128 0x16
	.long	.LASF135
	.byte	0
	.uleb128 0x16
	.long	.LASF136
	.byte	0x1
	.uleb128 0x16
	.long	.LASF137
	.byte	0x2
	.uleb128 0x16
	.long	.LASF138
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF139
	.byte	0x1d
	.byte	0x31
	.byte	0x14
	.long	0x31f
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF140
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF141
	.uleb128 0x2
	.long	.LASF142
	.byte	0x1e
	.byte	0x32
	.byte	0x1b
	.long	0x78d
	.uleb128 0xc
	.long	.LASF143
	.uleb128 0x17
	.long	.LASF144
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1f
	.byte	0x1c
	.byte	0x6
	.long	0x7bd
	.uleb128 0x16
	.long	.LASF145
	.byte	0
	.uleb128 0x16
	.long	.LASF146
	.byte	0x1
	.uleb128 0x16
	.long	.LASF147
	.byte	0x2
	.uleb128 0x16
	.long	.LASF148
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF149
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1f
	.byte	0x31
	.byte	0x6
	.long	0x7e2
	.uleb128 0x16
	.long	.LASF150
	.byte	0
	.uleb128 0x16
	.long	.LASF151
	.byte	0x1
	.uleb128 0x16
	.long	.LASF152
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.long	.LASF153
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1f
	.byte	0x3e
	.byte	0x6
	.long	0x80d
	.uleb128 0x16
	.long	.LASF154
	.byte	0x1
	.uleb128 0x16
	.long	.LASF155
	.byte	0x2
	.uleb128 0x16
	.long	.LASF156
	.byte	0x3
	.uleb128 0x16
	.long	.LASF157
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	.LASF158
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1f
	.byte	0x47
	.byte	0x6
	.long	0x838
	.uleb128 0x16
	.long	.LASF159
	.byte	0x1
	.uleb128 0x16
	.long	.LASF160
	.byte	0x2
	.uleb128 0x16
	.long	.LASF161
	.byte	0x3
	.uleb128 0x16
	.long	.LASF162
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF163
	.byte	0x58
	.byte	0x1f
	.byte	0x64
	.byte	0x8
	.long	0xa46
	.uleb128 0xa
	.long	.LASF134
	.byte	0x1f
	.byte	0x66
	.byte	0x14
	.long	0x73c
	.byte	0
	.uleb128 0xa
	.long	.LASF164
	.byte	0x1f
	.byte	0x69
	.byte	0x1c
	.long	0x80d
	.byte	0x4
	.uleb128 0xa
	.long	.LASF165
	.byte	0x1f
	.byte	0x6e
	.byte	0x14
	.long	0x7e2
	.byte	0x8
	.uleb128 0xa
	.long	.LASF166
	.byte	0x1f
	.byte	0x71
	.byte	0x14
	.long	0x792
	.byte	0xc
	.uleb128 0xa
	.long	.LASF167
	.byte	0x1f
	.byte	0x75
	.byte	0xa
	.long	0x3ea
	.byte	0x10
	.uleb128 0xa
	.long	.LASF168
	.byte	0x1f
	.byte	0x79
	.byte	0x8
	.long	0x77a
	.byte	0x14
	.uleb128 0xa
	.long	.LASF169
	.byte	0x1f
	.byte	0x7d
	.byte	0x8
	.long	0x77a
	.byte	0x15
	.uleb128 0xa
	.long	.LASF170
	.byte	0x1f
	.byte	0x84
	.byte	0x8
	.long	0x77a
	.byte	0x16
	.uleb128 0xa
	.long	.LASF171
	.byte	0x1f
	.byte	0x88
	.byte	0x8
	.long	0x77a
	.byte	0x17
	.uleb128 0xa
	.long	.LASF172
	.byte	0x1f
	.byte	0x8c
	.byte	0x8
	.long	0x77a
	.byte	0x18
	.uleb128 0xa
	.long	.LASF173
	.byte	0x1f
	.byte	0x8f
	.byte	0x8
	.long	0x77a
	.byte	0x19
	.uleb128 0xa
	.long	.LASF174
	.byte	0x1f
	.byte	0x93
	.byte	0x8
	.long	0x77a
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF175
	.byte	0x1f
	.byte	0x9a
	.byte	0x8
	.long	0x77a
	.byte	0x1b
	.uleb128 0xa
	.long	.LASF176
	.byte	0x1f
	.byte	0x9e
	.byte	0x8
	.long	0x77a
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF177
	.byte	0x1f
	.byte	0xa2
	.byte	0x8
	.long	0x77a
	.byte	0x1d
	.uleb128 0xa
	.long	.LASF178
	.byte	0x1f
	.byte	0xa3
	.byte	0x8
	.long	0x77a
	.byte	0x1e
	.uleb128 0xa
	.long	.LASF179
	.byte	0x1f
	.byte	0xa4
	.byte	0x8
	.long	0x77a
	.byte	0x1f
	.uleb128 0xa
	.long	.LASF180
	.byte	0x1f
	.byte	0xa5
	.byte	0x8
	.long	0x77a
	.byte	0x20
	.uleb128 0xa
	.long	.LASF181
	.byte	0x1f
	.byte	0xa8
	.byte	0x1a
	.long	0xa50
	.byte	0x28
	.uleb128 0xa
	.long	.LASF182
	.byte	0x1f
	.byte	0xb4
	.byte	0x8
	.long	0x77a
	.byte	0x30
	.uleb128 0xa
	.long	.LASF183
	.byte	0x1f
	.byte	0xb8
	.byte	0x8
	.long	0x77a
	.byte	0x31
	.uleb128 0xa
	.long	.LASF184
	.byte	0x1f
	.byte	0xbe
	.byte	0x8
	.long	0x77a
	.byte	0x32
	.uleb128 0xa
	.long	.LASF185
	.byte	0x1f
	.byte	0xc2
	.byte	0x8
	.long	0x77a
	.byte	0x33
	.uleb128 0xa
	.long	.LASF186
	.byte	0x1f
	.byte	0xcb
	.byte	0x8
	.long	0x77a
	.byte	0x34
	.uleb128 0xa
	.long	.LASF187
	.byte	0x1f
	.byte	0xcf
	.byte	0x8
	.long	0x77a
	.byte	0x35
	.uleb128 0xa
	.long	.LASF188
	.byte	0x1f
	.byte	0xd8
	.byte	0x8
	.long	0x77a
	.byte	0x36
	.uleb128 0xa
	.long	.LASF189
	.byte	0x1f
	.byte	0xe1
	.byte	0x8
	.long	0x77a
	.byte	0x37
	.uleb128 0xa
	.long	.LASF190
	.byte	0x1f
	.byte	0xe5
	.byte	0x8
	.long	0x77a
	.byte	0x38
	.uleb128 0xa
	.long	.LASF191
	.byte	0x1f
	.byte	0xe9
	.byte	0x8
	.long	0x77a
	.byte	0x39
	.uleb128 0xa
	.long	.LASF192
	.byte	0x1f
	.byte	0xed
	.byte	0x8
	.long	0x77a
	.byte	0x3a
	.uleb128 0xa
	.long	.LASF193
	.byte	0x1f
	.byte	0xf1
	.byte	0x8
	.long	0x77a
	.byte	0x3b
	.uleb128 0xa
	.long	.LASF194
	.byte	0x1f
	.byte	0xf4
	.byte	0x8
	.long	0x77a
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF195
	.byte	0x1f
	.byte	0xf7
	.byte	0x8
	.long	0x77a
	.byte	0x3d
	.uleb128 0xa
	.long	.LASF196
	.byte	0x1f
	.byte	0xfc
	.byte	0x8
	.long	0x77a
	.byte	0x3e
	.uleb128 0x18
	.long	.LASF197
	.byte	0x1f
	.value	0x100
	.byte	0x8
	.long	0x77a
	.byte	0x3f
	.uleb128 0x18
	.long	.LASF198
	.byte	0x1f
	.value	0x105
	.byte	0x7
	.long	0x6a
	.byte	0x40
	.uleb128 0x18
	.long	.LASF199
	.byte	0x1f
	.value	0x108
	.byte	0x15
	.long	0x7bd
	.byte	0x44
	.uleb128 0x18
	.long	.LASF200
	.byte	0x1f
	.value	0x113
	.byte	0xf
	.long	0xa56
	.byte	0x48
	.uleb128 0x18
	.long	.LASF201
	.byte	0x1f
	.value	0x116
	.byte	0xf
	.long	0xa56
	.byte	0x50
	.byte	0
	.uleb128 0x5
	.long	0x838
	.uleb128 0xc
	.long	.LASF202
	.uleb128 0x8
	.byte	0x8
	.long	0xa4b
	.uleb128 0x8
	.byte	0x8
	.long	0x781
	.uleb128 0x9
	.long	.LASF203
	.byte	0x18
	.byte	0x2
	.byte	0x17
	.byte	0x8
	.long	0xa91
	.uleb128 0xa
	.long	.LASF204
	.byte	0x2
	.byte	0x1a
	.byte	0x9
	.long	0x32a
	.byte	0
	.uleb128 0xa
	.long	.LASF205
	.byte	0x2
	.byte	0x1d
	.byte	0x9
	.long	0x32a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF206
	.byte	0x2
	.byte	0x20
	.byte	0x10
	.long	0x40
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	.LASF207
	.byte	0x30
	.byte	0x2
	.byte	0x24
	.byte	0x8
	.long	0xaf9
	.uleb128 0x19
	.string	"fd"
	.byte	0x2
	.byte	0x27
	.byte	0x7
	.long	0x6a
	.byte	0
	.uleb128 0xa
	.long	.LASF208
	.byte	0x2
	.byte	0x2a
	.byte	0x9
	.long	0x32a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF209
	.byte	0x2
	.byte	0x2d
	.byte	0x10
	.long	0x40
	.byte	0x10
	.uleb128 0xa
	.long	.LASF210
	.byte	0x2
	.byte	0x30
	.byte	0xa
	.long	0x2d
	.byte	0x18
	.uleb128 0xa
	.long	.LASF211
	.byte	0x2
	.byte	0x34
	.byte	0x8
	.long	0x77a
	.byte	0x20
	.uleb128 0xa
	.long	.LASF212
	.byte	0x2
	.byte	0x37
	.byte	0x8
	.long	0x77a
	.byte	0x21
	.uleb128 0xa
	.long	.LASF213
	.byte	0x2
	.byte	0x3a
	.byte	0x17
	.long	0xaf9
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa5c
	.uleb128 0xf
	.long	.LASF214
	.byte	0x20
	.byte	0x32
	.byte	0xf
	.long	0x5a1
	.uleb128 0xf
	.long	.LASF215
	.byte	0x20
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF216
	.byte	0x20
	.byte	0x39
	.byte	0xc
	.long	0x6a
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x21
	.byte	0x2d
	.byte	0xe
	.long	0xb56
	.uleb128 0x16
	.long	.LASF217
	.byte	0
	.uleb128 0x16
	.long	.LASF218
	.byte	0x2
	.uleb128 0x16
	.long	.LASF219
	.byte	0x5
	.uleb128 0x16
	.long	.LASF220
	.byte	0x4
	.uleb128 0x16
	.long	.LASF221
	.byte	0x3
	.uleb128 0x16
	.long	.LASF222
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x3
	.byte	0x49
	.byte	0x6
	.long	0xb6e
	.uleb128 0x15
	.long	.LASF223
	.long	0x20000
	.byte	0
	.uleb128 0xc
	.long	.LASF224
	.uleb128 0xf
	.long	.LASF225
	.byte	0x22
	.byte	0x19
	.byte	0x1f
	.long	0xb6e
	.uleb128 0x17
	.long	.LASF226
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x23
	.byte	0x1a
	.byte	0x6
	.long	0xbaa
	.uleb128 0x16
	.long	.LASF227
	.byte	0
	.uleb128 0x16
	.long	.LASF228
	.byte	0x1
	.uleb128 0x16
	.long	.LASF229
	.byte	0x2
	.uleb128 0x16
	.long	.LASF230
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x24
	.byte	0x1c
	.byte	0x1
	.long	0xbbf
	.uleb128 0x16
	.long	.LASF231
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF232
	.byte	0x18
	.byte	0x5
	.byte	0x7d
	.byte	0x8
	.long	0xbf4
	.uleb128 0xa
	.long	.LASF233
	.byte	0x5
	.byte	0x7f
	.byte	0x14
	.long	0xbf9
	.byte	0
	.uleb128 0x19
	.string	"ino"
	.byte	0x5
	.byte	0x80
	.byte	0x9
	.long	0x3c6
	.byte	0x8
	.uleb128 0x19
	.string	"dev"
	.byte	0x5
	.byte	0x81
	.byte	0x9
	.long	0x3d2
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0xbbf
	.uleb128 0x8
	.byte	0x8
	.long	0xbbf
	.uleb128 0x1a
	.long	.LASF234
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.long	0x31f
	.uleb128 0x9
	.byte	0x3
	.quad	top_level_src_name
	.uleb128 0x1a
	.long	.LASF235
	.byte	0x5
	.byte	0x94
	.byte	0x14
	.long	0x31f
	.uleb128 0x9
	.byte	0x3
	.quad	top_level_dst_name
	.uleb128 0x1b
	.long	.LASF236
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x5
	.value	0x4b0
	.byte	0x6
	.long	0xc5d
	.uleb128 0x16
	.long	.LASF237
	.byte	0
	.uleb128 0x16
	.long	.LASF238
	.byte	0x1
	.uleb128 0x16
	.long	.LASF239
	.byte	0x2
	.uleb128 0x16
	.long	.LASF240
	.byte	0x3
	.uleb128 0x16
	.long	.LASF241
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.long	.LASF334
	.byte	0x30
	.byte	0x5
	.value	0x4c4
	.byte	0x7
	.long	0xc86
	.uleb128 0x1d
	.long	.LASF242
	.byte	0x5
	.value	0x4c8
	.byte	0x9
	.long	0x32a
	.uleb128 0x1d
	.long	.LASF207
	.byte	0x5
	.value	0x4cb
	.byte	0x16
	.long	0xa91
	.byte	0
	.uleb128 0x1e
	.long	.LASF244
	.byte	0x5
	.value	0xcd9
	.byte	0x1
	.long	0x3ea
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc1
	.uleb128 0x1f
	.long	.LASF243
	.byte	0x5
	.value	0xcdb
	.byte	0x11
	.long	0x3ea
	.uleb128 0x9
	.byte	0x3
	.quad	mask.7747
	.byte	0
	.uleb128 0x20
	.long	.LASF254
	.byte	0x5
	.value	0xccd
	.byte	0x1
	.long	0x77a
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf3
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0xccd
	.byte	0x2c
	.long	0xcf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa46
	.uleb128 0x1e
	.long	.LASF245
	.byte	0x5
	.value	0xcbf
	.byte	0x1
	.long	0x77a
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0xd2b
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0xcbf
	.byte	0x2c
	.long	0xcf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF311
	.byte	0x5
	.value	0xca5
	.byte	0x1
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0xd59
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0xca5
	.byte	0x28
	.long	0xd59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x838
	.uleb128 0x1e
	.long	.LASF246
	.byte	0x5
	.value	0xc8b
	.byte	0x1
	.long	0x77a
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0xe08
	.uleb128 0x23
	.long	.LASF247
	.byte	0x5
	.value	0xc8b
	.byte	0x13
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0xc8b
	.byte	0x29
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF249
	.byte	0x5
	.value	0xc8c
	.byte	0xc
	.long	0x77a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF250
	.byte	0x5
	.value	0xc8c
	.byte	0x36
	.long	0xcf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF251
	.byte	0x5
	.value	0xc8d
	.byte	0xd
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF252
	.byte	0x5
	.value	0xc8d
	.byte	0x23
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF256
	.long	0xe1e
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7733
	.uleb128 0x1f
	.long	.LASF253
	.byte	0x5
	.value	0xc9b
	.byte	0x8
	.long	0x77a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x77a
	.uleb128 0xd
	.long	0x132
	.long	0xe1e
	.uleb128 0xe
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0xe0e
	.uleb128 0x20
	.long	.LASF255
	.byte	0x5
	.value	0xc74
	.byte	0x1
	.long	0x77a
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0xe69
	.uleb128 0x21
	.string	"co"
	.byte	0x5
	.value	0xc74
	.byte	0x29
	.long	0xcf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF256
	.long	0xe79
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7724
	.byte	0
	.uleb128 0xd
	.long	0x132
	.long	0xe79
	.uleb128 0xe
	.long	0x39
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.long	0xe69
	.uleb128 0x20
	.long	.LASF257
	.byte	0x5
	.value	0x825
	.byte	0x1
	.long	0x77a
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x1392
	.uleb128 0x23
	.long	.LASF247
	.byte	0x5
	.value	0x825
	.byte	0x1c
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x825
	.byte	0x32
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x23
	.long	.LASF258
	.byte	0x5
	.value	0x826
	.byte	0x15
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -836
	.uleb128 0x23
	.long	.LASF233
	.byte	0x5
	.value	0x827
	.byte	0x23
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x23
	.long	.LASF259
	.byte	0x5
	.value	0x828
	.byte	0x21
	.long	0xbf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x829
	.byte	0x29
	.long	0xcf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x23
	.long	.LASF260
	.byte	0x5
	.value	0x82a
	.byte	0x15
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x23
	.long	.LASF253
	.byte	0x5
	.value	0x82b
	.byte	0x16
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -872
	.uleb128 0x23
	.long	.LASF251
	.byte	0x5
	.value	0x82c
	.byte	0x16
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x23
	.long	.LASF252
	.byte	0x5
	.value	0x82d
	.byte	0x16
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x1f
	.long	.LASF261
	.byte	0x5
	.value	0x82f
	.byte	0xf
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x1f
	.long	.LASF262
	.byte	0x5
	.value	0x830
	.byte	0xf
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x1f
	.long	.LASF263
	.byte	0x5
	.value	0x831
	.byte	0xa
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -796
	.uleb128 0x1f
	.long	.LASF264
	.byte	0x5
	.value	0x832
	.byte	0xa
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x1f
	.long	.LASF265
	.byte	0x5
	.value	0x833
	.byte	0xa
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -764
	.uleb128 0x1f
	.long	.LASF266
	.byte	0x5
	.value	0x834
	.byte	0xa
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -788
	.uleb128 0x1f
	.long	.LASF267
	.byte	0x5
	.value	0x835
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -806
	.uleb128 0x1f
	.long	.LASF268
	.byte	0x5
	.value	0x836
	.byte	0x9
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x1f
	.long	.LASF269
	.byte	0x5
	.value	0x837
	.byte	0x9
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x1f
	.long	.LASF270
	.byte	0x5
	.value	0x838
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -805
	.uleb128 0x1f
	.long	.LASF271
	.byte	0x5
	.value	0x839
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x1f
	.long	.LASF272
	.byte	0x5
	.value	0x83a
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -803
	.uleb128 0x1f
	.long	.LASF273
	.byte	0x5
	.value	0x83b
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -802
	.uleb128 0x1f
	.long	.LASF198
	.byte	0x5
	.value	0x83f
	.byte	0x7
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x24
	.long	.LASF256
	.long	0xe79
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7688
	.uleb128 0x1f
	.long	.LASF164
	.byte	0x5
	.value	0x87d
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x25
	.long	.LASF336
	.byte	0x5
	.value	0xc57
	.byte	0x1
	.quad	.L455
	.uleb128 0x26
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x10a4
	.uleb128 0x1f
	.long	.LASF274
	.byte	0x5
	.value	0x84f
	.byte	0x13
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x1f
	.long	.LASF275
	.byte	0x5
	.value	0x850
	.byte	0xb
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.byte	0
	.uleb128 0x26
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x10dc
	.uleb128 0x1f
	.long	.LASF276
	.byte	0x5
	.value	0x889
	.byte	0x10
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -799
	.uleb128 0x1f
	.long	.LASF275
	.byte	0x5
	.value	0x890
	.byte	0xf
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -772
	.byte	0
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x100
	.long	0x11be
	.uleb128 0x1f
	.long	.LASF277
	.byte	0x5
	.value	0x8a6
	.byte	0x10
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -807
	.uleb128 0x1f
	.long	.LASF278
	.byte	0x5
	.value	0x93e
	.byte	0x17
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x26
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x112e
	.uleb128 0x1f
	.long	.LASF250
	.byte	0x5
	.value	0x8b7
	.byte	0x13
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.byte	0
	.uleb128 0x28
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x1f
	.long	.LASF279
	.byte	0x5
	.value	0x95b
	.byte	0x15
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x26
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x1177
	.uleb128 0x29
	.string	"fmt"
	.byte	0x5
	.value	0x951
	.byte	0x1f
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.byte	0
	.uleb128 0x28
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x1f
	.long	.LASF280
	.byte	0x5
	.value	0x965
	.byte	0x13
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x1f
	.long	.LASF281
	.byte	0x5
	.value	0x965
	.byte	0x13
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x1f
	.long	.LASF282
	.byte	0x5
	.value	0x965
	.byte	0x13
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x1207
	.uleb128 0x1f
	.long	.LASF283
	.byte	0x5
	.value	0x98c
	.byte	0xc
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -801
	.uleb128 0x1f
	.long	.LASF284
	.byte	0x5
	.value	0x98d
	.byte	0x13
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1f
	.long	.LASF285
	.byte	0x5
	.value	0x98e
	.byte	0x14
	.long	0x1398
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x130
	.long	0x1222
	.uleb128 0x29
	.string	"dir"
	.byte	0x5
	.value	0xab1
	.byte	0x18
	.long	0xbf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.byte	0
	.uleb128 0x26
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x129f
	.uleb128 0x29
	.string	"err"
	.byte	0x5
	.value	0xb3c
	.byte	0xb
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x28
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x1f
	.long	.LASF286
	.byte	0x5
	.value	0xb23
	.byte	0x17
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1f
	.long	.LASF287
	.byte	0x5
	.value	0xb24
	.byte	0x17
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1f
	.long	.LASF288
	.byte	0x5
	.value	0xb25
	.byte	0x11
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x1f
	.long	.LASF289
	.byte	0x5
	.value	0xb26
	.byte	0x10
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -797
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x12c6
	.uleb128 0x1f
	.long	.LASF290
	.byte	0x5
	.value	0xb57
	.byte	0xc
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -798
	.byte	0
	.uleb128 0x26
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x1321
	.uleb128 0x1f
	.long	.LASF291
	.byte	0x5
	.value	0xb86
	.byte	0xd
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x1f
	.long	.LASF292
	.byte	0x5
	.value	0xb8f
	.byte	0xb
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -780
	.uleb128 0x28
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x1f
	.long	.LASF293
	.byte	0x5
	.value	0xb98
	.byte	0x11
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x1347
	.uleb128 0x29
	.string	"sb"
	.byte	0x5
	.value	0xbd8
	.byte	0x13
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x26
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x136e
	.uleb128 0x1f
	.long	.LASF75
	.byte	0x5
	.value	0xbf5
	.byte	0x17
	.long	0x139e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x28
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x1f
	.long	.LASF294
	.byte	0x5
	.value	0xc2b
	.byte	0xb
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x58b
	.uleb128 0x8
	.byte	0x8
	.long	0x4ba
	.uleb128 0xd
	.long	0x40e
	.long	0x13ae
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.long	.LASF295
	.byte	0x5
	.value	0x805
	.byte	0x1
	.long	0x77a
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x148d
	.uleb128 0x23
	.long	.LASF278
	.byte	0x5
	.value	0x805
	.byte	0x23
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x23
	.long	.LASF296
	.byte	0x5
	.value	0x805
	.byte	0x3f
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x806
	.byte	0x23
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1f
	.long	.LASF297
	.byte	0x5
	.value	0x808
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.long	.LASF298
	.byte	0x5
	.value	0x809
	.byte	0xf
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1f
	.long	.LASF299
	.byte	0x5
	.value	0x80a
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1f
	.long	.LASF300
	.byte	0x5
	.value	0x80b
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1f
	.long	.LASF301
	.byte	0x5
	.value	0x810
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1f
	.long	.LASF302
	.byte	0x5
	.value	0x811
	.byte	0x9
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1f
	.long	.LASF303
	.byte	0x5
	.value	0x813
	.byte	0xf
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.long	.LASF304
	.byte	0x5
	.value	0x814
	.byte	0x7
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x2a
	.long	.LASF305
	.byte	0x5
	.value	0x7fb
	.byte	0x1
	.long	0x77a
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x14cf
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x7fb
	.byte	0x2e
	.long	0xcf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF260
	.byte	0x5
	.value	0x7fb
	.byte	0x36
	.long	0x77a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x20
	.long	.LASF306
	.byte	0x5
	.value	0x7e6
	.byte	0x1
	.long	0x77a
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x1556
	.uleb128 0x23
	.long	.LASF247
	.byte	0x5
	.value	0x7e6
	.byte	0x1f
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x7e6
	.byte	0x35
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF290
	.byte	0x5
	.value	0x7e7
	.byte	0x18
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.long	.LASF194
	.byte	0x5
	.value	0x7e7
	.byte	0x26
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF164
	.byte	0x5
	.value	0x7e7
	.byte	0x34
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.string	"err"
	.byte	0x5
	.value	0x7e9
	.byte	0x7
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.long	.LASF307
	.byte	0x5
	.value	0x7d8
	.byte	0x1
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x1587
	.uleb128 0x2c
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.byte	0
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x5
	.value	0x7ce
	.byte	0x1
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d7
	.uleb128 0x21
	.string	"src"
	.byte	0x5
	.value	0x7ce
	.byte	0x1b
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"dst"
	.byte	0x5
	.value	0x7ce
	.byte	0x2c
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF309
	.byte	0x5
	.value	0x7ce
	.byte	0x3d
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x20
	.long	.LASF310
	.byte	0x5
	.value	0x7bd
	.byte	0x1
	.long	0x77a
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x163c
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x7bd
	.byte	0x28
	.long	0xcf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x7be
	.byte	0x1b
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF262
	.byte	0x5
	.value	0x7bf
	.byte	0x22
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF256
	.long	0x164c
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7624
	.byte	0
	.uleb128 0xd
	.long	0x132
	.long	0x164c
	.uleb128 0xe
	.long	0x39
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.long	0x163c
	.uleb128 0x22
	.long	.LASF312
	.byte	0x5
	.value	0x7a3
	.byte	0x1
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x167f
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x7a3
	.byte	0x23
	.long	0xd59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF313
	.byte	0x5
	.value	0x796
	.byte	0x1
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x16ad
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x796
	.byte	0x24
	.long	0xd59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF314
	.byte	0x5
	.value	0x779
	.byte	0x1
	.long	0x77a
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1725
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x779
	.byte	0x28
	.long	0xcf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x779
	.byte	0x37
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF262
	.byte	0x5
	.value	0x77a
	.byte	0x22
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x1f
	.long	.LASF315
	.byte	0x5
	.value	0x77e
	.byte	0xc
	.long	0x1725
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x12b
	.long	0x1735
	.uleb128 0xe
	.long	0x39
	.byte	0xb
	.byte	0
	.uleb128 0x20
	.long	.LASF316
	.byte	0x5
	.value	0x771
	.byte	0x1
	.long	0x77a
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x1779
	.uleb128 0x23
	.long	.LASF317
	.byte	0x5
	.value	0x771
	.byte	0x23
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF167
	.byte	0x5
	.value	0x771
	.byte	0x30
	.long	0x3ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x20
	.long	.LASF318
	.byte	0x5
	.value	0x683
	.byte	0x1
	.long	0x77a
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x18d3
	.uleb128 0x23
	.long	.LASF247
	.byte	0x5
	.value	0x683
	.byte	0x1b
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x23
	.long	.LASF261
	.byte	0x5
	.value	0x683
	.byte	0x38
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x684
	.byte	0x1b
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x23
	.long	.LASF262
	.byte	0x5
	.value	0x684
	.byte	0x38
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x685
	.byte	0x28
	.long	0xcf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x23
	.long	.LASF277
	.byte	0x5
	.value	0x685
	.byte	0x31
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x1f
	.long	.LASF319
	.byte	0x5
	.value	0x687
	.byte	0x16
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1f
	.long	.LASF320
	.byte	0x5
	.value	0x688
	.byte	0x16
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1f
	.long	.LASF321
	.byte	0x5
	.value	0x689
	.byte	0xf
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1f
	.long	.LASF322
	.byte	0x5
	.value	0x68a
	.byte	0xf
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.long	.LASF323
	.byte	0x5
	.value	0x68c
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x1f
	.long	.LASF324
	.byte	0x5
	.value	0x68d
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -363
	.uleb128 0x26
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x188c
	.uleb128 0x29
	.string	"sn"
	.byte	0x5
	.value	0x6a5
	.byte	0x10
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -362
	.byte	0
	.uleb128 0x28
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x1f
	.long	.LASF325
	.byte	0x5
	.value	0x744
	.byte	0xd
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x28
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x1f
	.long	.LASF326
	.byte	0x5
	.value	0x747
	.byte	0x10
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -361
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF327
	.byte	0x5
	.value	0x4f5
	.byte	0x1
	.long	0x77a
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c0d
	.uleb128 0x23
	.long	.LASF247
	.byte	0x5
	.value	0x4f5
	.byte	0x17
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x4f5
	.byte	0x2d
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x4f6
	.byte	0x24
	.long	0xcf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x23
	.long	.LASF264
	.byte	0x5
	.value	0x4f7
	.byte	0x12
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x23
	.long	.LASF266
	.byte	0x5
	.value	0x4f7
	.byte	0x23
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x23
	.long	.LASF258
	.byte	0x5
	.value	0x4f7
	.byte	0x3e
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x23
	.long	.LASF261
	.byte	0x5
	.value	0x4f8
	.byte	0x1e
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x29
	.string	"buf"
	.byte	0x5
	.value	0x4fa
	.byte	0x9
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x1f
	.long	.LASF328
	.byte	0x5
	.value	0x4fb
	.byte	0x9
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x1f
	.long	.LASF329
	.byte	0x5
	.value	0x4fc
	.byte	0x9
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x1f
	.long	.LASF330
	.byte	0x5
	.value	0x4fd
	.byte	0x7
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x1f
	.long	.LASF331
	.byte	0x5
	.value	0x4fe
	.byte	0x7
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x1f
	.long	.LASF332
	.byte	0x5
	.value	0x4ff
	.byte	0x7
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x1f
	.long	.LASF263
	.byte	0x5
	.value	0x500
	.byte	0xa
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x29
	.string	"sb"
	.byte	0x5
	.value	0x501
	.byte	0xf
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1f
	.long	.LASF333
	.byte	0x5
	.value	0x502
	.byte	0xf
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1f
	.long	.LASF334
	.byte	0x5
	.value	0x503
	.byte	0x18
	.long	0xc5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1f
	.long	.LASF335
	.byte	0x5
	.value	0x504
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -537
	.uleb128 0x1f
	.long	.LASF183
	.byte	0x5
	.value	0x505
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x25
	.long	.LASF337
	.byte	0x5
	.value	0x66d
	.byte	0x1
	.quad	.L263
	.uleb128 0x25
	.long	.LASF338
	.byte	0x5
	.value	0x667
	.byte	0x1
	.quad	.L271
	.uleb128 0x25
	.long	.LASF339
	.byte	0x5
	.value	0x55d
	.byte	0x5
	.quad	.L275
	.uleb128 0x26
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x1a90
	.uleb128 0x1f
	.long	.LASF340
	.byte	0x5
	.value	0x526
	.byte	0xb
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.byte	0
	.uleb128 0x26
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x1ada
	.uleb128 0x1f
	.long	.LASF340
	.byte	0x5
	.value	0x55f
	.byte	0xb
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x28
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x1f
	.long	.LASF341
	.byte	0x5
	.value	0x570
	.byte	0x17
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x1b01
	.uleb128 0x1f
	.long	.LASF342
	.byte	0x5
	.value	0x5b2
	.byte	0xc
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -534
	.byte	0
	.uleb128 0x26
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x1bc2
	.uleb128 0x1f
	.long	.LASF343
	.byte	0x5
	.value	0x5c3
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x1f
	.long	.LASF344
	.byte	0x5
	.value	0x5c4
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x1f
	.long	.LASF345
	.byte	0x5
	.value	0x5c5
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x1f
	.long	.LASF236
	.byte	0x5
	.value	0x5c8
	.byte	0x15
	.long	0xc2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -508
	.uleb128 0x1f
	.long	.LASF346
	.byte	0x5
	.value	0x5d0
	.byte	0xc
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -533
	.uleb128 0x1f
	.long	.LASF347
	.byte	0x5
	.value	0x5f3
	.byte	0xd
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x1f
	.long	.LASF348
	.byte	0x5
	.value	0x5f4
	.byte	0xc
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -538
	.uleb128 0x28
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x1f
	.long	.LASF349
	.byte	0x5
	.value	0x5de
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x1f
	.long	.LASF350
	.byte	0x5
	.value	0x5df
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x1be9
	.uleb128 0x1f
	.long	.LASF75
	.byte	0x5
	.value	0x614
	.byte	0x17
	.long	0x139e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0
	.uleb128 0x28
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x1f
	.long	.LASF351
	.byte	0x5
	.value	0x638
	.byte	0xc
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -535
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF352
	.byte	0x5
	.value	0x4d1
	.byte	0x1
	.long	0xc2b
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c6f
	.uleb128 0x21
	.string	"fd"
	.byte	0x5
	.value	0x4d1
	.byte	0x15
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.string	"sb"
	.byte	0x5
	.value	0x4d1
	.byte	0x2c
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF334
	.byte	0x5
	.value	0x4d2
	.byte	0x27
	.long	0x1c6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF353
	.byte	0x5
	.value	0x4e1
	.byte	0x17
	.long	0x1c75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc5d
	.uleb128 0x8
	.byte	0x8
	.long	0xa91
	.uleb128 0x20
	.long	.LASF354
	.byte	0x5
	.value	0x4a2
	.byte	0x1
	.long	0x6a
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ccf
	.uleb128 0x23
	.long	.LASF355
	.byte	0x5
	.value	0x4a2
	.byte	0x17
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.long	.LASF274
	.byte	0x5
	.value	0x4a2
	.byte	0x29
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF167
	.byte	0x5
	.value	0x4a2
	.byte	0x36
	.long	0x3ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF356
	.byte	0x5
	.value	0x48c
	.byte	0x1
	.long	0x77a
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d42
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x48c
	.byte	0x24
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF357
	.byte	0x5
	.value	0x48d
	.byte	0x1d
	.long	0x77a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x48d
	.byte	0x3f
	.long	0xcf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF358
	.byte	0x5
	.value	0x48f
	.byte	0x8
	.long	0x77a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1f
	.long	.LASF359
	.byte	0x5
	.value	0x491
	.byte	0x8
	.long	0x77a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x1e
	.long	.LASF360
	.byte	0x5
	.value	0x44e
	.byte	0x1
	.long	0x77a
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dfb
	.uleb128 0x23
	.long	.LASF247
	.byte	0x5
	.value	0x44e
	.byte	0x27
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x44e
	.byte	0x3d
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF167
	.byte	0x5
	.value	0x44f
	.byte	0x22
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.long	.LASF258
	.byte	0x5
	.value	0x44f
	.byte	0x2d
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x44f
	.byte	0x4f
	.long	0xcf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x1f
	.long	.LASF358
	.byte	0x5
	.value	0x454
	.byte	0xc
	.long	0x77a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x1f
	.long	.LASF359
	.byte	0x5
	.value	0x455
	.byte	0xc
	.long	0x77a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x29
	.string	"con"
	.byte	0x5
	.value	0x456
	.byte	0xd
	.long	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF361
	.byte	0x5
	.value	0x429
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e4b
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x429
	.byte	0x19
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF330
	.byte	0x5
	.value	0x429
	.byte	0x27
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF261
	.byte	0x5
	.value	0x429
	.byte	0x45
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.long	.LASF362
	.byte	0x5
	.value	0x3dd
	.byte	0x1
	.long	0x6a
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fc6
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x3dd
	.byte	0x25
	.long	0xcf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x3dd
	.byte	0x34
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF330
	.byte	0x5
	.value	0x3dd
	.byte	0x42
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x23
	.long	.LASF261
	.byte	0x5
	.value	0x3de
	.byte	0x1f
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF258
	.byte	0x5
	.value	0x3de
	.byte	0x2c
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF262
	.byte	0x5
	.value	0x3df
	.byte	0x1f
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.string	"uid"
	.byte	0x5
	.value	0x3e1
	.byte	0x9
	.long	0x3f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"gid"
	.byte	0x5
	.value	0x3e2
	.byte	0x9
	.long	0x3de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1f39
	.uleb128 0x1f
	.long	.LASF363
	.byte	0x5
	.value	0x3ec
	.byte	0xe
	.long	0x3ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.long	.LASF364
	.byte	0x5
	.value	0x3ed
	.byte	0xe
	.long	0x3ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF365
	.byte	0x5
	.value	0x3ef
	.byte	0xe
	.long	0x3ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x26
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x1f81
	.uleb128 0x1f
	.long	.LASF366
	.byte	0x5
	.value	0x405
	.byte	0xf
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x29
	.string	"__x"
	.byte	0x5
	.value	0x406
	.byte	0xb
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x1f
	.long	.LASF366
	.byte	0x5
	.value	0x412
	.byte	0xf
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x29
	.string	"__x"
	.byte	0x5
	.value	0x413
	.byte	0xb
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF367
	.byte	0x5
	.value	0x396
	.byte	0x1
	.long	0x77a
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x210e
	.uleb128 0x23
	.long	.LASF368
	.byte	0x5
	.value	0x396
	.byte	0x17
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	.LASF369
	.byte	0x5
	.value	0x396
	.byte	0x30
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.long	.LASF258
	.byte	0x5
	.value	0x396
	.byte	0x42
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x23
	.long	.LASF261
	.byte	0x5
	.value	0x397
	.byte	0x1e
	.long	0x1392
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x23
	.long	.LASF259
	.byte	0x5
	.value	0x397
	.byte	0x37
	.long	0xbf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x398
	.byte	0x24
	.long	0xcf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x23
	.long	.LASF253
	.byte	0x5
	.value	0x399
	.byte	0x11
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x23
	.long	.LASF251
	.byte	0x5
	.value	0x39a
	.byte	0x11
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.long	.LASF370
	.byte	0x5
	.value	0x39c
	.byte	0x9
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1f
	.long	.LASF371
	.byte	0x5
	.value	0x39d
	.byte	0x9
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF372
	.byte	0x5
	.value	0x39e
	.byte	0x15
	.long	0x838
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.string	"ok"
	.byte	0x5
	.value	0x39f
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -162
	.uleb128 0x1f
	.long	.LASF373
	.byte	0x5
	.value	0x3af
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -161
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x1f
	.long	.LASF374
	.byte	0x5
	.value	0x3b3
	.byte	0xc
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1f
	.long	.LASF247
	.byte	0x5
	.value	0x3b4
	.byte	0xd
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1f
	.long	.LASF248
	.byte	0x5
	.value	0x3b5
	.byte	0xd
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1f
	.long	.LASF375
	.byte	0x5
	.value	0x3b6
	.byte	0xc
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -163
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF376
	.byte	0x5
	.value	0x37f
	.byte	0x1
	.long	0x77a
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x2180
	.uleb128 0x23
	.long	.LASF377
	.byte	0x5
	.value	0x37f
	.byte	0x18
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF378
	.byte	0x5
	.value	0x380
	.byte	0x10
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF379
	.byte	0x5
	.value	0x381
	.byte	0x18
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF380
	.byte	0x5
	.value	0x382
	.byte	0x10
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"x"
	.byte	0x5
	.value	0x383
	.byte	0x25
	.long	0xcf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.long	.LASF381
	.byte	0x5
	.value	0x325
	.byte	0x1
	.long	0x77a
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x21b4
	.uleb128 0x21
	.string	"err"
	.byte	0x5
	.value	0x325
	.byte	0x18
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF382
	.byte	0x5
	.value	0x319
	.byte	0x1
	.long	0x77a
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x21f7
	.uleb128 0x21
	.string	"sb"
	.byte	0x5
	.value	0x319
	.byte	0x21
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF259
	.byte	0x5
	.value	0x319
	.byte	0x3c
	.long	0x21f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xbf4
	.uleb128 0x20
	.long	.LASF383
	.byte	0x5
	.value	0x28f
	.byte	0x1
	.long	0x77a
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x2376
	.uleb128 0x23
	.long	.LASF378
	.byte	0x5
	.value	0x28f
	.byte	0x11
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x23
	.long	.LASF384
	.byte	0x5
	.value	0x28f
	.byte	0x1d
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.string	"buf"
	.byte	0x5
	.value	0x28f
	.byte	0x2c
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.long	.LASF344
	.byte	0x5
	.value	0x28f
	.byte	0x38
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.long	.LASF345
	.byte	0x5
	.value	0x290
	.byte	0x14
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.long	.LASF242
	.byte	0x5
	.value	0x290
	.byte	0x25
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.long	.LASF385
	.byte	0x5
	.value	0x290
	.byte	0x36
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF166
	.byte	0x5
	.value	0x291
	.byte	0x1e
	.long	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.long	.LASF247
	.byte	0x5
	.value	0x292
	.byte	0x19
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x292
	.byte	0x2f
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1f
	.long	.LASF386
	.byte	0x5
	.value	0x294
	.byte	0x9
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.long	.LASF387
	.byte	0x5
	.value	0x295
	.byte	0x9
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.long	.LASF388
	.byte	0x5
	.value	0x296
	.byte	0x9
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF348
	.byte	0x5
	.value	0x297
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x25
	.long	.LASF389
	.byte	0x5
	.value	0x30d
	.byte	0x2
	.quad	.L162
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x1f
	.long	.LASF390
	.byte	0x5
	.value	0x29b
	.byte	0xd
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.long	.LASF391
	.byte	0x5
	.value	0x2b7
	.byte	0xd
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF392
	.byte	0x5
	.value	0x2d1
	.byte	0xd
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF347
	.byte	0x5
	.value	0x2d8
	.byte	0xd
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.long	.LASF393
	.byte	0x5
	.value	0x2d9
	.byte	0xc
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF394
	.byte	0x5
	.value	0x1d2
	.byte	0x1
	.long	0x77a
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x256d
	.uleb128 0x23
	.long	.LASF378
	.byte	0x5
	.value	0x1d2
	.byte	0x12
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x23
	.long	.LASF384
	.byte	0x5
	.value	0x1d2
	.byte	0x1e
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.string	"buf"
	.byte	0x5
	.value	0x1d2
	.byte	0x2d
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.long	.LASF344
	.byte	0x5
	.value	0x1d2
	.byte	0x39
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.long	.LASF345
	.byte	0x5
	.value	0x1d3
	.byte	0x15
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.long	.LASF385
	.byte	0x5
	.value	0x1d3
	.byte	0x26
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.long	.LASF166
	.byte	0x5
	.value	0x1d4
	.byte	0x1f
	.long	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF247
	.byte	0x5
	.value	0x1d5
	.byte	0x1a
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x1d5
	.byte	0x30
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x23
	.long	.LASF353
	.byte	0x5
	.value	0x1d6
	.byte	0x22
	.long	0x1c75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	.LASF386
	.byte	0x5
	.value	0x1d8
	.byte	0x9
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.long	.LASF387
	.byte	0x5
	.value	0x1d9
	.byte	0x9
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.long	.LASF388
	.byte	0x5
	.value	0x1dd
	.byte	0x9
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.long	.LASF348
	.byte	0x5
	.value	0x1df
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x25
	.long	.LASF395
	.byte	0x5
	.value	0x20c
	.byte	0x11
	.quad	.L112
	.uleb128 0x28
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1f
	.long	.LASF396
	.byte	0x5
	.value	0x1e2
	.byte	0xc
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x28
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x29
	.string	"i"
	.byte	0x5
	.value	0x1e3
	.byte	0x19
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1f
	.long	.LASF242
	.byte	0x5
	.value	0x1e5
	.byte	0x11
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF392
	.byte	0x5
	.value	0x1e6
	.byte	0x11
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.long	.LASF391
	.byte	0x5
	.value	0x1e7
	.byte	0x11
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x2541
	.uleb128 0x1f
	.long	.LASF397
	.byte	0x5
	.value	0x21f
	.byte	0x19
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1f
	.long	.LASF347
	.byte	0x5
	.value	0x23f
	.byte	0x15
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.long	.LASF393
	.byte	0x5
	.value	0x242
	.byte	0x14
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -111
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF398
	.byte	0x5
	.value	0x1a7
	.byte	0x1
	.long	0x77a
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x262a
	.uleb128 0x21
	.string	"fd"
	.byte	0x5
	.value	0x1a7
	.byte	0x12
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF399
	.byte	0x5
	.value	0x1a7
	.byte	0x1c
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF400
	.byte	0x5
	.value	0x1a9
	.byte	0x10
	.long	0x125
	.uleb128 0x9
	.byte	0x3
	.quad	zeros.7384
	.uleb128 0x29
	.string	"nz"
	.byte	0x5
	.value	0x1aa
	.byte	0x11
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	nz.7385
	.uleb128 0x26
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x2609
	.uleb128 0x1f
	.long	.LASF401
	.byte	0x5
	.value	0x1b1
	.byte	0x13
	.long	0x262a
	.uleb128 0x9
	.byte	0x3
	.quad	fallback.7386
	.byte	0
	.uleb128 0x28
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x29
	.string	"n"
	.byte	0x5
	.value	0x1bc
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x12b
	.long	0x263b
	.uleb128 0x2f
	.long	0x39
	.value	0x3ff
	.byte	0
	.uleb128 0x20
	.long	.LASF402
	.byte	0x5
	.value	0x198
	.byte	0x1
	.long	0x6a
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x267f
	.uleb128 0x23
	.long	.LASF384
	.byte	0x5
	.value	0x198
	.byte	0x11
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.long	.LASF378
	.byte	0x5
	.value	0x198
	.byte	0x1e
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF403
	.byte	0x5
	.value	0x104
	.byte	0x1
	.long	0x77a
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x284a
	.uleb128 0x23
	.long	.LASF378
	.byte	0x5
	.value	0x104
	.byte	0x12
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x23
	.long	.LASF384
	.byte	0x5
	.value	0x104
	.byte	0x1e
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.string	"buf"
	.byte	0x5
	.value	0x104
	.byte	0x2d
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.long	.LASF344
	.byte	0x5
	.value	0x104
	.byte	0x39
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.long	.LASF345
	.byte	0x5
	.value	0x105
	.byte	0x15
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	.LASF404
	.byte	0x5
	.value	0x105
	.byte	0x25
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x23
	.long	.LASF247
	.byte	0x5
	.value	0x106
	.byte	0x1a
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.long	.LASF248
	.byte	0x5
	.value	0x106
	.byte	0x30
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	.LASF405
	.byte	0x5
	.value	0x107
	.byte	0x18
	.long	0x657
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.long	.LASF406
	.byte	0x5
	.value	0x107
	.byte	0x2b
	.long	0x284a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.long	.LASF407
	.byte	0x5
	.value	0x108
	.byte	0x14
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1f
	.long	.LASF408
	.byte	0x5
	.value	0x134
	.byte	0x8
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1f
	.long	.LASF409
	.byte	0x5
	.value	0x135
	.byte	0x9
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.Ldebug_ranges0+0
	.long	0x27ba
	.uleb128 0x1f
	.long	.LASF410
	.byte	0x5
	.value	0x114
	.byte	0x11
	.long	0x336
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF411
	.byte	0x5
	.value	0x115
	.byte	0x13
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.long	.LASF412
	.byte	0x5
	.value	0x116
	.byte	0x11
	.long	0x336
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1f
	.long	.LASF347
	.byte	0x5
	.value	0x139
	.byte	0xf
	.long	0x336
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.long	.LASF413
	.byte	0x5
	.value	0x147
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.long	.LASF414
	.byte	0x5
	.value	0x148
	.byte	0xd
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.long	.LASF415
	.byte	0x5
	.value	0x149
	.byte	0xd
	.long	0x125
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1f
	.long	.LASF416
	.byte	0x5
	.value	0x14d
	.byte	0x10
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -123
	.uleb128 0x1f
	.long	.LASF417
	.byte	0x5
	.value	0x153
	.byte	0x10
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -122
	.uleb128 0x1f
	.long	.LASF418
	.byte	0x5
	.value	0x154
	.byte	0x10
	.long	0x77a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x32a
	.uleb128 0x30
	.long	.LASF419
	.byte	0x5
	.byte	0xe0
	.byte	0x1
	.long	0x77a
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x28be
	.uleb128 0x31
	.string	"fd"
	.byte	0x5
	.byte	0xe0
	.byte	0x12
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF274
	.byte	0x5
	.byte	0xe0
	.byte	0x22
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF404
	.byte	0x5
	.byte	0xe0
	.byte	0x2d
	.long	0x77a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF420
	.byte	0x5
	.byte	0xe0
	.byte	0x40
	.long	0x32a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF421
	.byte	0x5
	.byte	0xe2
	.byte	0x9
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x30
	.long	.LASF422
	.byte	0x5
	.byte	0xcd
	.byte	0x1
	.long	0x6a
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x291c
	.uleb128 0x31
	.string	"fd"
	.byte	0x5
	.byte	0xcd
	.byte	0x11
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF423
	.byte	0x5
	.byte	0xcd
	.byte	0x1b
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF424
	.byte	0x5
	.byte	0xcd
	.byte	0x29
	.long	0x32a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"ret"
	.byte	0x5
	.byte	0xcf
	.byte	0x7
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF425
	.byte	0x5
	.byte	0xbd
	.byte	0x1
	.long	0x6a
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x296c
	.uleb128 0x32
	.long	.LASF317
	.byte	0x5
	.byte	0xbd
	.byte	0x1e
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF75
	.byte	0x5
	.byte	0xbd
	.byte	0x3b
	.long	0x296c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"err"
	.byte	0x5
	.byte	0xbf
	.byte	0x7
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x436
	.uleb128 0x30
	.long	.LASF426
	.byte	0x5
	.byte	0x9e
	.byte	0x1
	.long	0x6a
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a20
	.uleb128 0x32
	.long	.LASF427
	.byte	0x5
	.byte	0x9e
	.byte	0x15
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x32
	.long	.LASF428
	.byte	0x5
	.byte	0x9e
	.byte	0x28
	.long	0x31f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x31
	.string	"st"
	.byte	0x5
	.byte	0x9e
	.byte	0x3f
	.long	0x1398
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x32
	.long	.LASF429
	.byte	0x5
	.byte	0x9e
	.byte	0x47
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1a
	.long	.LASF326
	.byte	0x5
	.byte	0xa0
	.byte	0x7
	.long	0x6a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x34
	.uleb128 0x1a
	.long	.LASF430
	.byte	0x5
	.byte	0xa5
	.byte	0x14
	.long	0x3d2
	.uleb128 0x9
	.byte	0x3
	.quad	stdin_rdev.7321
	.uleb128 0x1a
	.long	.LASF431
	.byte	0x5
	.byte	0xa6
	.byte	0x1a
	.long	0x5c
	.uleb128 0x9
	.byte	0x3
	.quad	stdin_rdev_status.7322
	.uleb128 0x34
	.uleb128 0x35
	.long	.LASF446
	.byte	0x5
	.byte	0xa9
	.byte	0x17
	.long	0x4ba
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF432
	.byte	0x4
	.byte	0x1b
	.byte	0x1
	.long	0x77a
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a52
	.uleb128 0x31
	.string	"err"
	.byte	0x4
	.byte	0x1b
	.byte	0x18
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.long	.LASF433
	.byte	0x3
	.byte	0x4b
	.byte	0x1
	.long	0x2d
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a83
	.uleb128 0x31
	.string	"sb"
	.byte	0x3
	.byte	0x4b
	.byte	0x19
	.long	0x4ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.long	.LASF434
	.byte	0x2
	.byte	0x42
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ab1
	.uleb128 0x32
	.long	.LASF353
	.byte	0x2
	.byte	0x42
	.byte	0x27
	.long	0x1c75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF435
	.byte	0x1
	.value	0x2f7
	.byte	0x1
	.long	0x77a
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ae5
	.uleb128 0x21
	.string	"err"
	.byte	0x1
	.value	0x2f7
	.byte	0x11
	.long	0x6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	.LASF436
	.byte	0x1
	.value	0x200
	.byte	0x1
	.long	0x77a
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b47
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.value	0x200
	.byte	0x15
	.long	0x638
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF424
	.byte	0x1
	.value	0x200
	.byte	0x21
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x202
	.byte	0x18
	.long	0x2b47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF437
	.byte	0x1
	.value	0x20c
	.byte	0x11
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x50
	.uleb128 0x2a
	.long	.LASF438
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.long	0x47
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2baf
	.uleb128 0x21
	.string	"ptr"
	.byte	0x1
	.value	0x1f5
	.byte	0x18
	.long	0x638
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF439
	.byte	0x1
	.value	0x1f5
	.byte	0x24
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"p0"
	.byte	0x1
	.value	0x1f7
	.byte	0xf
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"p1"
	.byte	0x1
	.value	0x1f8
	.byte	0xf
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF440
	.byte	0x1
	.value	0x109
	.byte	0x1
	.long	0x77a
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF441
	.byte	0x1
	.value	0x109
	.byte	0x1c
	.long	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x29
	.string	"sep"
	.byte	0x1
	.value	0x10d
	.byte	0xc
	.long	0x12b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x37
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
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF316:
	.string	"writable_destination"
.LASF409:
	.string	"psize"
.LASF42:
	.string	"_shortbuf"
.LASF142:
	.string	"Hash_table"
.LASF445:
	.string	"_IO_lock_t"
.LASF357:
	.string	"recurse"
.LASF112:
	.string	"program_invocation_short_name"
.LASF331:
	.string	"dest_errno"
.LASF31:
	.string	"_IO_buf_end"
.LASF150:
	.string	"REFLINK_NEVER"
.LASF110:
	.string	"optopt"
.LASF76:
	.string	"tv_sec"
.LASF157:
	.string	"I_UNSPECIFIED"
.LASF446:
	.string	"stdin_st"
.LASF429:
	.string	"flags"
.LASF311:
	.string	"cp_options_default"
.LASF267:
	.string	"restore_dst_mode"
.LASF277:
	.string	"return_now"
.LASF175:
	.string	"owner_privileges"
.LASF29:
	.string	"_IO_write_end"
.LASF344:
	.string	"buf_size"
.LASF231:
	.string	"UTIMECMP_TRUNCATE_SOURCE"
.LASF396:
	.string	"empty_extent"
.LASF86:
	.string	"getdate_err"
.LASF97:
	.string	"st_blksize"
.LASF257:
	.string	"copy_internal"
.LASF285:
	.string	"dst_lstat_sb"
.LASF161:
	.string	"DEREF_COMMAND_LINE_ARGUMENTS"
.LASF214:
	.string	"error_print_progname"
.LASF135:
	.string	"no_backups"
.LASF372:
	.string	"non_command_line_options"
.LASF383:
	.string	"lseek_copy"
.LASF8:
	.string	"__uintmax_t"
.LASF381:
	.string	"errno_unsupported"
.LASF39:
	.string	"_old_offset"
.LASF35:
	.string	"_markers"
.LASF249:
	.string	"nonexistent_dst"
.LASF14:
	.string	"__nlink_t"
.LASF63:
	.string	"_sys_nerr"
.LASF103:
	.string	"_sys_siglist"
.LASF197:
	.string	"last_file"
.LASF369:
	.string	"dst_name_in"
.LASF126:
	.string	"c_maybe_quoting_style"
.LASF193:
	.string	"update"
.LASF332:
	.string	"source_desc"
.LASF167:
	.string	"mode"
.LASF236:
	.string	"scantype"
.LASF152:
	.string	"REFLINK_ALWAYS"
.LASF48:
	.string	"_freeres_buf"
.LASF177:
	.string	"preserve_ownership"
.LASF393:
	.string	"read_hole"
.LASF370:
	.string	"name_space"
.LASF326:
	.string	"result"
.LASF164:
	.string	"dereference"
.LASF74:
	.string	"_IO_FILE"
.LASF333:
	.string	"src_open_sb"
.LASF402:
	.string	"clone_file"
.LASF234:
	.string	"top_level_src_name"
.LASF309:
	.string	"backup_dst_name"
.LASF185:
	.string	"preserve_security_context"
.LASF373:
	.string	"new_first_dir_created"
.LASF440:
	.string	"dot_or_dotdot"
.LASF202:
	.string	"selabel_handle"
.LASF117:
	.string	"LOG10_TIMESPEC_HZ"
.LASF176:
	.string	"one_file_system"
.LASF23:
	.string	"_flags"
.LASF82:
	.string	"__timezone"
.LASF154:
	.string	"I_ALWAYS_YES"
.LASF246:
	.string	"copy"
.LASF405:
	.string	"max_n_read"
.LASF230:
	.string	"SAVEDIR_SORT_FASTREAD"
.LASF68:
	.string	"ino_t"
.LASF122:
	.string	"shell_always_quoting_style"
.LASF83:
	.string	"tzname"
.LASF248:
	.string	"dst_name"
.LASF229:
	.string	"SAVEDIR_SORT_INODE"
.LASF387:
	.string	"last_ext_len"
.LASF299:
	.string	"dstbaselen"
.LASF318:
	.string	"same_file_ok"
.LASF59:
	.string	"stdout"
.LASF400:
	.string	"zeros"
.LASF34:
	.string	"_IO_save_end"
.LASF245:
	.string	"chown_failure_ok"
.LASF361:
	.string	"set_author"
.LASF263:
	.string	"src_mode"
.LASF109:
	.string	"opterr"
.LASF140:
	.string	"float"
.LASF40:
	.string	"_cur_column"
.LASF54:
	.string	"_IO_codecvt"
.LASF281:
	.string	"__len"
.LASF352:
	.string	"infer_scantype"
.LASF79:
	.string	"long long unsigned int"
.LASF320:
	.string	"dst_sb_link"
.LASF237:
	.string	"ERROR_SCANTYPE"
.LASF113:
	.string	"Version"
.LASF382:
	.string	"is_ancestor"
.LASF115:
	.string	"uintmax_t"
.LASF310:
	.string	"abandon_move"
.LASF413:
	.string	"csize"
.LASF98:
	.string	"st_blocks"
.LASF364:
	.string	"new_mode"
.LASF203:
	.string	"extent_info"
.LASF240:
	.string	"LSEEK_SCANTYPE"
.LASF87:
	.string	"stat"
.LASF365:
	.string	"restrictive_temp_mode"
.LASF288:
	.string	"dst_parent"
.LASF270:
	.string	"delayed_ok"
.LASF297:
	.string	"srcbaselen"
.LASF61:
	.string	"sys_nerr"
.LASF182:
	.string	"preserve_links"
.LASF255:
	.string	"valid_options"
.LASF358:
	.string	"all_errors"
.LASF329:
	.string	"name_alloc"
.LASF137:
	.string	"numbered_existing_backups"
.LASF262:
	.string	"dst_sb"
.LASF62:
	.string	"sys_errlist"
.LASF271:
	.string	"copied_as_regular"
.LASF33:
	.string	"_IO_backup_base"
.LASF433:
	.string	"io_blksize"
.LASF44:
	.string	"_offset"
.LASF444:
	.string	"/root/coreutils"
.LASF269:
	.string	"dst_backup"
.LASF217:
	.string	"FADVISE_NORMAL"
.LASF37:
	.string	"_fileno"
.LASF391:
	.string	"ext_hole_size"
.LASF120:
	.string	"literal_quoting_style"
.LASF238:
	.string	"PLAIN_SCANTYPE"
.LASF434:
	.string	"extent_scan_free"
.LASF77:
	.string	"tv_nsec"
.LASF7:
	.string	"size_t"
.LASF300:
	.string	"suffixlen"
.LASF321:
	.string	"tmp_dst_sb"
.LASF207:
	.string	"extent_scan"
.LASF148:
	.string	"SPARSE_ALWAYS"
.LASF347:
	.string	"n_read"
.LASF13:
	.string	"__mode_t"
.LASF417:
	.string	"transition"
.LASF414:
	.string	"cbuf"
.LASF213:
	.string	"ext_info"
.LASF26:
	.string	"_IO_read_base"
.LASF141:
	.string	"_Bool"
.LASF93:
	.string	"st_gid"
.LASF132:
	.string	"quoting_style_vals"
.LASF283:
	.string	"lstat_ok"
.LASF430:
	.string	"stdin_rdev"
.LASF58:
	.string	"stdin"
.LASF28:
	.string	"_IO_write_ptr"
.LASF443:
	.string	"src/copy.c"
.LASF121:
	.string	"shell_quoting_style"
.LASF340:
	.string	"open_flags"
.LASF181:
	.string	"set_security_context"
.LASF90:
	.string	"st_nlink"
.LASF53:
	.string	"_IO_marker"
.LASF169:
	.string	"unlink_dest_before_opening"
.LASF218:
	.string	"FADVISE_SEQUENTIAL"
.LASF341:
	.string	"dangling_link_sb"
.LASF174:
	.string	"chown_privileges"
.LASF38:
	.string	"_flags2"
.LASF198:
	.string	"rename_errno"
.LASF380:
	.string	"dst_fd"
.LASF392:
	.string	"ext_len"
.LASF335:
	.string	"return_val"
.LASF397:
	.string	"nzeros"
.LASF436:
	.string	"is_nul"
.LASF127:
	.string	"escape_quoting_style"
.LASF204:
	.string	"ext_logical"
.LASF438:
	.string	"ptr_align"
.LASF403:
	.string	"sparse_copy"
.LASF323:
	.string	"same_link"
.LASF75:
	.string	"timespec"
.LASF22:
	.string	"char"
.LASF426:
	.string	"follow_fstatat"
.LASF336:
	.string	"un_backup"
.LASF276:
	.string	"use_lstat"
.LASF292:
	.string	"symlink_err"
.LASF50:
	.string	"_mode"
.LASF272:
	.string	"dest_is_symlink"
.LASF421:
	.string	"file_end"
.LASF220:
	.string	"FADVISE_DONTNEED"
.LASF428:
	.string	"filename"
.LASF145:
	.string	"SPARSE_UNUSED"
.LASF65:
	.string	"ptrdiff_t"
.LASF92:
	.string	"st_uid"
.LASF106:
	.string	"environ"
.LASF153:
	.string	"Interactive"
.LASF24:
	.string	"_IO_read_ptr"
.LASF171:
	.string	"hard_link"
.LASF187:
	.string	"preserve_xattr"
.LASF223:
	.string	"IO_BUFSIZE"
.LASF360:
	.string	"set_process_security_ctx"
.LASF227:
	.string	"SAVEDIR_SORT_NONE"
.LASF419:
	.string	"create_hole"
.LASF66:
	.string	"long long int"
.LASF377:
	.string	"src_path"
.LASF367:
	.string	"copy_dir"
.LASF57:
	.string	"ssize_t"
.LASF317:
	.string	"file"
.LASF210:
	.string	"ei_count"
.LASF73:
	.string	"time_t"
.LASF134:
	.string	"backup_type"
.LASF416:
	.string	"prev_hole"
.LASF129:
	.string	"clocale_quoting_style"
.LASF60:
	.string	"stderr"
.LASF404:
	.string	"punch_holes"
.LASF104:
	.string	"sys_siglist"
.LASF149:
	.string	"Reflink_type"
.LASF241:
	.string	"EXTENT_SCANTYPE"
.LASF89:
	.string	"st_ino"
.LASF183:
	.string	"data_copy_required"
.LASF319:
	.string	"src_sb_link"
.LASF27:
	.string	"_IO_write_base"
.LASF301:
	.string	"dstlen"
.LASF303:
	.string	"dst_back_sb"
.LASF159:
	.string	"DEREF_UNDEFINED"
.LASF408:
	.string	"make_hole"
.LASF293:
	.string	"dest_link_val"
.LASF411:
	.string	"copy_max"
.LASF378:
	.string	"src_fd"
.LASF216:
	.string	"error_one_per_line"
.LASF130:
	.string	"custom_quoting_style"
.LASF32:
	.string	"_IO_save_base"
.LASF9:
	.string	"__dev_t"
.LASF290:
	.string	"replace"
.LASF410:
	.string	"ssize_max"
.LASF226:
	.string	"savedir_option"
.LASF69:
	.string	"dev_t"
.LASF264:
	.string	"dst_mode"
.LASF313:
	.string	"dest_info_init"
.LASF235:
	.string	"top_level_dst_name"
.LASF324:
	.string	"same"
.LASF21:
	.string	"__syscall_slong_t"
.LASF186:
	.string	"require_preserve_context"
.LASF81:
	.string	"__daylight"
.LASF133:
	.string	"quoting_style"
.LASF180:
	.string	"explicit_no_preserve_mode"
.LASF371:
	.string	"namep"
.LASF353:
	.string	"scan"
.LASF279:
	.string	"tmp_backup"
.LASF314:
	.string	"overwrite_ok"
.LASF219:
	.string	"FADVISE_NOREUSE"
.LASF259:
	.string	"ancestors"
.LASF211:
	.string	"initial_scan_failed"
.LASF128:
	.string	"locale_quoting_style"
.LASF412:
	.string	"n_copied"
.LASF67:
	.string	"long double"
.LASF91:
	.string	"st_mode"
.LASF108:
	.string	"optind"
.LASF258:
	.string	"new_dst"
.LASF221:
	.string	"FADVISE_WILLNEED"
.LASF287:
	.string	"dst_parent_sb"
.LASF163:
	.string	"cp_options"
.LASF94:
	.string	"__pad0"
.LASF243:
	.string	"mask"
.LASF12:
	.string	"__ino_t"
.LASF49:
	.string	"__pad5"
.LASF0:
	.string	"long unsigned int"
.LASF244:
	.string	"cached_umask"
.LASF162:
	.string	"DEREF_ALWAYS"
.LASF139:
	.string	"simple_backup_suffix"
.LASF432:
	.string	"ignorable_ctx_err"
.LASF252:
	.string	"rename_succeeded"
.LASF147:
	.string	"SPARSE_AUTO"
.LASF190:
	.string	"recursive"
.LASF41:
	.string	"_vtable_offset"
.LASF136:
	.string	"simple_backups"
.LASF291:
	.string	"src_link_val"
.LASF143:
	.string	"hash_table"
.LASF124:
	.string	"shell_escape_always_quoting_style"
.LASF199:
	.string	"reflink_mode"
.LASF111:
	.string	"program_invocation_name"
.LASF284:
	.string	"tmp_buf"
.LASF107:
	.string	"optarg"
.LASF305:
	.string	"should_dereference"
.LASF343:
	.string	"buf_alignment"
.LASF302:
	.string	"dst_back"
.LASF11:
	.string	"__gid_t"
.LASF422:
	.string	"punch_hole"
.LASF195:
	.string	"stdin_tty"
.LASF286:
	.string	"dot_sb"
.LASF334:
	.string	"scan_inference"
.LASF338:
	.string	"close_src_and_dst_desc"
.LASF298:
	.string	"dstbase"
.LASF166:
	.string	"sparse_mode"
.LASF178:
	.string	"preserve_mode"
.LASF70:
	.string	"gid_t"
.LASF85:
	.string	"timezone"
.LASF131:
	.string	"quoting_style_args"
.LASF168:
	.string	"copy_as_regular"
.LASF201:
	.string	"src_info"
.LASF156:
	.string	"I_ASK_USER"
.LASF72:
	.string	"uid_t"
.LASF116:
	.string	"TIMESPEC_HZ"
.LASF155:
	.string	"I_ALWAYS_NO"
.LASF222:
	.string	"FADVISE_RANDOM"
.LASF362:
	.string	"set_owner"
.LASF25:
	.string	"_IO_read_end"
.LASF242:
	.string	"ext_start"
.LASF200:
	.string	"dest_info"
.LASF315:
	.string	"perms"
.LASF233:
	.string	"parent"
.LASF123:
	.string	"shell_escape_quoting_style"
.LASF5:
	.string	"short int"
.LASF100:
	.string	"st_mtim"
.LASF158:
	.string	"Dereference_symlink"
.LASF375:
	.string	"first_dir_created"
.LASF306:
	.string	"create_hard_link"
.LASF398:
	.string	"write_zeros"
.LASF6:
	.string	"long int"
.LASF427:
	.string	"dirfd"
.LASF225:
	.string	"quote_quoting_options"
.LASF250:
	.string	"options"
.LASF384:
	.string	"dest_fd"
.LASF424:
	.string	"length"
.LASF328:
	.string	"buf_alloc"
.LASF399:
	.string	"n_bytes"
.LASF407:
	.string	"last_write_made_hole"
.LASF192:
	.string	"symbolic_link"
.LASF189:
	.string	"reduce_diagnostics"
.LASF354:
	.string	"fchmod_or_lchmod"
.LASF423:
	.string	"offset"
.LASF251:
	.string	"copy_into_self"
.LASF55:
	.string	"_IO_wide_data"
.LASF437:
	.string	"word"
.LASF345:
	.string	"hole_size"
.LASF294:
	.string	"default_permissions"
.LASF105:
	.string	"__environ"
.LASF327:
	.string	"copy_reg"
.LASF441:
	.string	"file_name"
.LASF144:
	.string	"Sparse_type"
.LASF282:
	.string	"__new"
.LASF18:
	.string	"__blksize_t"
.LASF349:
	.string	"blcm_max"
.LASF78:
	.string	"_gl_cxxalias_dummy"
.LASF273:
	.string	"have_dst_lstat"
.LASF20:
	.string	"__ssize_t"
.LASF389:
	.string	"cannot_lseek"
.LASF10:
	.string	"__uid_t"
.LASF99:
	.string	"st_atim"
.LASF274:
	.string	"name"
.LASF239:
	.string	"ZERO_SCANTYPE"
.LASF394:
	.string	"extent_copy"
.LASF337:
	.string	"close_src_desc"
.LASF1:
	.string	"unsigned int"
.LASF350:
	.string	"blcm"
.LASF194:
	.string	"verbose"
.LASF278:
	.string	"srcbase"
.LASF374:
	.string	"local_copy_into_self"
.LASF46:
	.string	"_wide_data"
.LASF431:
	.string	"stdin_rdev_status"
.LASF43:
	.string	"_lock"
.LASF366:
	.string	"saved_errno"
.LASF179:
	.string	"preserve_timestamps"
.LASF266:
	.string	"omitted_permissions"
.LASF45:
	.string	"_codecvt"
.LASF325:
	.string	"abs_src"
.LASF114:
	.string	"exit_failure"
.LASF215:
	.string	"error_message_count"
.LASF254:
	.string	"owner_failure_ok"
.LASF191:
	.string	"set_mode"
.LASF368:
	.string	"src_name_in"
.LASF308:
	.string	"emit_verbose"
.LASF232:
	.string	"dir_list"
.LASF379:
	.string	"dst_path"
.LASF253:
	.string	"first_dir_created_per_command_line_arg"
.LASF418:
	.string	"last_chunk"
.LASF173:
	.string	"install_mode"
.LASF212:
	.string	"hit_final_extent"
.LASF261:
	.string	"src_sb"
.LASF2:
	.string	"unsigned char"
.LASF386:
	.string	"last_ext_start"
.LASF275:
	.string	"fstatat_flags"
.LASF80:
	.string	"__tzname"
.LASF247:
	.string	"src_name"
.LASF415:
	.string	"pbuf"
.LASF208:
	.string	"scan_start"
.LASF289:
	.string	"in_current_dir"
.LASF420:
	.string	"size"
.LASF265:
	.string	"dst_mode_bits"
.LASF206:
	.string	"ext_flags"
.LASF165:
	.string	"interactive"
.LASF280:
	.string	"__old"
.LASF47:
	.string	"_freeres_list"
.LASF17:
	.string	"__time_t"
.LASF385:
	.string	"src_total_size"
.LASF442:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF151:
	.string	"REFLINK_AUTO"
.LASF118:
	.string	"version_etc_copyright"
.LASF435:
	.string	"is_ENOTSUP"
.LASF96:
	.string	"st_size"
.LASF395:
	.string	"fail"
.LASF295:
	.string	"source_is_dst_backup"
.LASF84:
	.string	"daylight"
.LASF388:
	.string	"dest_pos"
.LASF312:
	.string	"src_info_init"
.LASF401:
	.string	"fallback"
.LASF228:
	.string	"SAVEDIR_SORT_NAME"
.LASF15:
	.string	"__off_t"
.LASF304:
	.string	"dst_back_status"
.LASF101:
	.string	"st_ctim"
.LASF439:
	.string	"alignment"
.LASF88:
	.string	"st_dev"
.LASF425:
	.string	"utimens_symlink"
.LASF4:
	.string	"signed char"
.LASF71:
	.string	"mode_t"
.LASF125:
	.string	"c_quoting_style"
.LASF268:
	.string	"earlier_file"
.LASF56:
	.string	"off_t"
.LASF3:
	.string	"short unsigned int"
.LASF209:
	.string	"fm_flags"
.LASF330:
	.string	"dest_desc"
.LASF64:
	.string	"_sys_errlist"
.LASF160:
	.string	"DEREF_NEVER"
.LASF351:
	.string	"access_changed"
.LASF224:
	.string	"quoting_options"
.LASF102:
	.string	"__glibc_reserved"
.LASF256:
	.string	"__PRETTY_FUNCTION__"
.LASF359:
	.string	"some_errors"
.LASF390:
	.string	"ext_end"
.LASF322:
	.string	"tmp_src_sb"
.LASF184:
	.string	"require_preserve"
.LASF346:
	.string	"make_holes"
.LASF19:
	.string	"__blkcnt_t"
.LASF205:
	.string	"ext_length"
.LASF348:
	.string	"wrote_hole_at_eof"
.LASF36:
	.string	"_chain"
.LASF339:
	.string	"open_with_O_CREAT"
.LASF95:
	.string	"st_rdev"
.LASF196:
	.string	"open_dangling_dest_symlink"
.LASF170:
	.string	"unlink_dest_after_failed_open"
.LASF52:
	.string	"FILE"
.LASF355:
	.string	"desc"
.LASF188:
	.string	"require_preserve_xattr"
.LASF260:
	.string	"command_line_arg"
.LASF363:
	.string	"old_mode"
.LASF406:
	.string	"total_n_read"
.LASF356:
	.string	"set_file_security_ctx"
.LASF119:
	.string	"program_name"
.LASF146:
	.string	"SPARSE_NEVER"
.LASF296:
	.string	"src_st"
.LASF138:
	.string	"numbered_backups"
.LASF307:
	.string	"restore_default_fscreatecon_or_die"
.LASF16:
	.string	"__off64_t"
.LASF51:
	.string	"_unused2"
.LASF30:
	.string	"_IO_buf_base"
.LASF172:
	.string	"move_mode"
.LASF342:
	.string	"clone_ok"
.LASF376:
	.string	"copy_attr"
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
