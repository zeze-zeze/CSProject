	.file	"extent-scan.c"
	.text
.Ltext0:
	.type	extent_need_sync, @function
extent_need_sync:
.LFB47:
	.file 1 "src/extent-scan.c"
	.loc 1 34 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 39 10
	movl	$1, %eax
	.loc 1 64 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	extent_need_sync, .-extent_need_sync
	.globl	extent_scan_init
	.type	extent_scan_init, @function
extent_scan_init:
.LFB48:
	.loc 1 70 1
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
	.loc 1 71 12
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 72 18
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	.loc 1 73 18
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 1 74 20
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 1 75 29
	movq	-16(%rbp), %rax
	movb	$0, 32(%rax)
	.loc 1 76 26
	movq	-16(%rbp), %rax
	movb	$0, 33(%rax)
	.loc 1 77 20
	call	extent_need_sync
	.loc 1 77 59
	movzbl	%al, %edx
	.loc 1 77 18
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 78 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	extent_scan_init, .-extent_scan_init
	.section	.rodata
.LC0:
	.string	"src/extent-scan.c"
	.align 8
.LC1:
	.string	"scan->ei_count <= SIZE_MAX - fiemap->fm_mapped_extents"
	.align 8
.LC2:
	.string	"fm_extents[i].fe_logical <= OFF_T_MAX - fm_extents[i].fe_length"
	.text
	.globl	extent_scan_read
	.type	extent_scan_read, @function
extent_scan_read:
.LFB49:
	.loc 1 88 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$96, %rsp
	movq	%rdi, -4184(%rbp)
	.loc 1 88 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 89 16
	movl	$0, -4168(%rbp)
	.loc 1 90 23
	movq	-4184(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -4160(%rbp)
.L27:
.LBB2:
	.loc 1 95 22
	leaq	-4112(%rbp), %rax
	movq	%rax, -4144(%rbp)
	.loc 1 96 29
	movq	-4144(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -4136(%rbp)
	.loc 1 104 7
	leaq	-4112(%rbp), %rax
	movl	$4096, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 106 30
	movq	-4184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	.loc 1 106 24
	movq	-4144(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 107 30
	movq	-4184(%rbp), %rax
	movl	16(%rax), %edx
	.loc 1 107 24
	movq	-4144(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 108 31
	movq	-4144(%rbp), %rax
	movl	$72, 24(%rax)
	.loc 1 109 51
	movq	-4184(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 109 45
	notq	%rax
	movq	%rax, %rdx
	.loc 1 109 25
	movq	-4144(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 113 11
	movq	-4184(%rbp), %rax
	movl	(%rax), %eax
	movq	-4144(%rbp), %rdx
	movl	$3223348747, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ioctl@PLT
	.loc 1 113 10
	testl	%eax, %eax
	jns	.L5
	.loc 1 115 19
	movq	-4184(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 115 14
	testq	%rax, %rax
	jne	.L6
	.loc 1 116 39
	movq	-4184(%rbp), %rax
	movb	$1, 32(%rax)
.L6:
	.loc 1 117 18
	movl	$0, %eax
	jmp	.L28
.L5:
	.loc 1 121 17
	movq	-4144(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 121 10
	testl	%eax, %eax
	jne	.L8
	.loc 1 123 34
	movq	-4184(%rbp), %rax
	movb	$1, 33(%rax)
	.loc 1 124 22
	movq	-4184(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 124 35
	testq	%rax, %rax
	setne	%al
	jmp	.L28
.L8:
	.loc 1 127 7
	movq	-4184(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-4144(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %eax
	notq	%rax
	cmpq	%rax, %rdx
	jbe	.L9
	.loc 1 127 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6315(%rip), %rcx
	movl	$127, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L9:
	.loc 1 128 22 is_stmt 1
	movq	-4184(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 1 128 31
	movq	-4144(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %eax
	.loc 1 128 22
	addq	%rax, %rdx
	movq	-4184(%rbp), %rax
	movq	%rdx, 24(%rax)
.LBB3:
	.loc 1 132 41
	movq	-4184(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 132 35
	movq	-4160(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	.loc 1 132 16
	movq	%rax, -4128(%rbp)
	.loc 1 133 26
	movq	-4184(%rbp), %rax
	movq	24(%rax), %rcx
	.loc 1 133 41
	movq	-4184(%rbp), %rax
	movq	40(%rax), %rax
	.loc 1 133 26
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xnrealloc@PLT
	.loc 1 133 24
	movq	-4184(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 1 135 23
	movq	-4184(%rbp), %rax
	movq	40(%rax), %rcx
	.loc 1 135 34
	movq	-4128(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 1 135 17
	addq	%rcx, %rax
	movq	%rax, -4160(%rbp)
.LBE3:
	.loc 1 138 20
	movl	$0, -4164(%rbp)
	.loc 1 139 14
	movl	$0, -4164(%rbp)
	.loc 1 139 7
	jmp	.L10
.L21:
	.loc 1 141 11
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movabsq	$9223372036854775807, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	%rax, %rcx
	jbe	.L11
	.loc 1 141 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6315(%rip), %rcx
	movl	$141, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L11:
	.loc 1 146 14 is_stmt 1
	cmpl	$0, -4168(%rbp)
	je	.L12
	.loc 1 146 28 discriminator 1
	movq	-4160(%rbp), %rax
	movl	16(%rax), %ecx
	.loc 1 147 29 discriminator 1
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 147 32 discriminator 1
	movl	40(%rax), %eax
	.loc 1 147 42 discriminator 1
	andl	$-2, %eax
	.loc 1 146 18 discriminator 1
	cmpl	%eax, %ecx
	jne	.L12
	.loc 1 148 26
	movq	-4160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 148 49
	movq	-4160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 148 40
	leaq	(%rdx,%rax), %rcx
	.loc 1 149 32
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 149 35
	movq	(%rax), %rax
	.loc 1 148 15
	cmpq	%rax, %rcx
	jne	.L12
	.loc 1 152 35
	movq	-4160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	.loc 1 152 48
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 152 51
	movq	16(%rax), %rax
	.loc 1 152 35
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	-4160(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 154 46
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 154 49
	movl	40(%rax), %edx
	.loc 1 154 34
	movq	-4160(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L13
.L12:
	.loc 1 156 19
	cmpl	$0, -4168(%rbp)
	jne	.L14
	.loc 1 156 36 discriminator 1
	movq	-4184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	.loc 1 156 61 discriminator 1
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 156 64 discriminator 1
	movq	(%rax), %rax
	.loc 1 156 29 discriminator 1
	cmpq	%rax, %rcx
	ja	.L15
.L14:
	.loc 1 157 20
	cmpl	$0, -4168(%rbp)
	je	.L16
	.loc 1 157 38 discriminator 1
	movq	-4160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 157 61 discriminator 1
	movq	-4160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 157 52 discriminator 1
	addq	%rdx, %rax
	movq	%rax, %rcx
	.loc 1 158 43 discriminator 1
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 158 46 discriminator 1
	movq	(%rax), %rax
	.loc 1 157 27 discriminator 1
	cmpq	%rax, %rcx
	jbe	.L16
.L15:
.LBB4:
	.loc 1 166 18
	cmpl	$0, -4168(%rbp)
	jne	.L17
	.loc 1 167 35
	movq	-4184(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 167 29
	movq	%rax, -4152(%rbp)
	jmp	.L18
.L17:
	.loc 1 172 40
	movq	-4160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 172 63
	movq	-4160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 172 54
	addq	%rdx, %rax
	.loc 1 172 31
	movq	%rax, -4152(%rbp)
.L18:
	.loc 1 174 55
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 174 58
	movq	(%rax), %rax
	.loc 1 174 29
	movq	-4152(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -4120(%rbp)
	.loc 1 176 45
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 176 48
	movq	16(%rax), %rax
	.loc 1 176 18
	cmpq	%rax, -4120(%rbp)
	jnb	.L19
	.loc 1 178 27
	movq	-4184(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 178 22
	testq	%rax, %rax
	jne	.L20
	.loc 1 179 47
	movq	-4184(%rbp), %rax
	movb	$1, 32(%rax)
.L20:
	.loc 1 180 26
	movl	$0, %eax
	jmp	.L28
.L19:
	.loc 1 182 25
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 182 40
	movq	-4152(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 1 183 39
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rax, %rdx
	movq	%rcx, %rax
	subq	-4120(%rbp), %rax
	movq	%rax, 16(%rdx)
	.loc 1 185 16
	subl	$1, -4164(%rbp)
	.loc 1 186 15
	jmp	.L13
.L16:
.LBE4:
	.loc 1 190 29
	movq	-4184(%rbp), %rax
	movq	40(%rax), %rcx
	.loc 1 190 40
	movl	-4168(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 1 190 23
	addq	%rcx, %rax
	movq	%rax, -4160(%rbp)
	.loc 1 191 48
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 191 51
	movq	(%rax), %rax
	movq	%rax, %rdx
	.loc 1 191 36
	movq	-4160(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 192 47
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 192 50
	movq	16(%rax), %rax
	movq	%rax, %rdx
	.loc 1 192 35
	movq	-4160(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 193 46
	movl	-4164(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 193 49
	movl	40(%rax), %edx
	.loc 1 193 34
	movq	-4160(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 1 194 17
	addl	$1, -4168(%rbp)
.L13:
	.loc 1 139 51 discriminator 2
	addl	$1, -4164(%rbp)
.L10:
	.loc 1 139 29 discriminator 1
	movq	-4144(%rbp), %rax
	movl	20(%rax), %eax
	.loc 1 139 7 discriminator 1
	cmpl	%eax, -4164(%rbp)
	jb	.L21
	.loc 1 198 18
	movq	-4160(%rbp), %rax
	movl	16(%rax), %eax
	.loc 1 198 30
	andl	$1, %eax
	.loc 1 198 10
	testl	%eax, %eax
	je	.L22
	.loc 1 199 32
	movq	-4184(%rbp), %rax
	movb	$1, 33(%rax)
.L22:
	.loc 1 203 10
	cmpl	$72, -4168(%rbp)
	jbe	.L23
	.loc 1 203 30 discriminator 1
	movq	-4184(%rbp), %rax
	movzbl	33(%rax), %eax
	.loc 1 203 25 discriminator 1
	xorl	$1, %eax
	.loc 1 203 22 discriminator 1
	testb	%al, %al
	je	.L23
	.loc 1 204 23
	movq	-4184(%rbp), %rax
	movq	40(%rax), %rcx
	.loc 1 204 17
	subl	$1, -4168(%rbp)
	.loc 1 204 36
	movl	-4168(%rbp), %edx
	.loc 1 204 34
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 1 204 41
	subq	$24, %rax
	.loc 1 204 17
	addq	%rcx, %rax
	movq	%rax, -4160(%rbp)
.L23:
	.loc 1 207 22
	movl	-4168(%rbp), %edx
	movq	-4184(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 1 209 15
	movq	-4184(%rbp), %rax
	movzbl	33(%rax), %eax
	.loc 1 209 10
	testb	%al, %al
	jne	.L30
	.loc 1 212 35
	movq	-4160(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 212 58
	movq	-4160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 212 49
	addq	%rax, %rdx
	.loc 1 212 26
	movq	-4184(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 214 10
	cmpl	$71, -4168(%rbp)
	ja	.L31
.LBE2:
	.loc 1 93 5
	jmp	.L27
.L30:
.LBB5:
	.loc 1 210 9
	nop
	jmp	.L25
.L31:
	.loc 1 215 9
	nop
.L25:
.LBE5:
	.loc 1 218 10
	movl	$1, %eax
.L28:
	.loc 1 219 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	extent_scan_read, .-extent_scan_read
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.6315, @object
	.size	__PRETTY_FUNCTION__.6315, 17
__PRETTY_FUNCTION__.6315:
	.string	"extent_scan_read"
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "./lib/sys/select.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/signal.h"
	.file 8 "/usr/include/unistd.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 10 "/usr/include/errno.h"
	.file 11 "src/version.h"
	.file 12 "./lib/exitfail.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 18 "./lib/version-etc.h"
	.file 19 "./lib/progname.h"
	.file 20 "./lib/quotearg.h"
	.file 21 "src/extent-scan.h"
	.file 22 "src/fiemap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x895
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF130
	.byte	0xc
	.long	.LASF131
	.long	.LASF132
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
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0x2d
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x6f
	.uleb128 0x5
	.long	.LASF10
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x6f
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0xa2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.long	0xa2
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0x55
	.byte	0x11
	.long	0x82
	.uleb128 0x5
	.long	.LASF13
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x7
	.byte	0x8
	.long	0xa9
	.uleb128 0x8
	.long	0xe1
	.uleb128 0xa
	.long	0x9c
	.long	0xfc
	.uleb128 0xb
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x6
	.byte	0x9f
	.byte	0xe
	.long	0xec
	.uleb128 0xc
	.long	.LASF18
	.byte	0x6
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF19
	.byte	0x6
	.byte	0xa1
	.byte	0x11
	.long	0x6f
	.uleb128 0xc
	.long	.LASF20
	.byte	0x6
	.byte	0xa6
	.byte	0xe
	.long	0xec
	.uleb128 0xc
	.long	.LASF21
	.byte	0x6
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF22
	.byte	0x6
	.byte	0xaf
	.byte	0x11
	.long	0x6f
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF24
	.uleb128 0xa
	.long	0xe7
	.long	0x168
	.uleb128 0xb
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x158
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.value	0x11e
	.byte	0x1a
	.long	0x168
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.value	0x11f
	.byte	0x1a
	.long	0x168
	.uleb128 0x9
	.long	.LASF27
	.byte	0x8
	.value	0x21f
	.byte	0xf
	.long	0x194
	.uleb128 0x7
	.byte	0x8
	.long	0x9c
	.uleb128 0x9
	.long	.LASF28
	.byte	0x8
	.value	0x221
	.byte	0xf
	.long	0x194
	.uleb128 0xc
	.long	.LASF29
	.byte	0x9
	.byte	0x24
	.byte	0xe
	.long	0x9c
	.uleb128 0xc
	.long	.LASF30
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF31
	.byte	0x9
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF32
	.byte	0x9
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF33
	.byte	0xa
	.byte	0x2d
	.byte	0xe
	.long	0x9c
	.uleb128 0xc
	.long	.LASF34
	.byte	0xa
	.byte	0x2e
	.byte	0xe
	.long	0x9c
	.uleb128 0xc
	.long	.LASF35
	.byte	0xb
	.byte	0x1
	.byte	0x14
	.long	0xe1
	.uleb128 0xc
	.long	.LASF36
	.byte	0xc
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x5
	.long	.LASF37
	.byte	0xd
	.byte	0x1a
	.byte	0x14
	.long	0x63
	.uleb128 0x5
	.long	.LASF38
	.byte	0xd
	.byte	0x1b
	.byte	0x14
	.long	0x76
	.uleb128 0xd
	.long	.LASF94
	.byte	0xd8
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0x3a6
	.uleb128 0xe
	.long	.LASF39
	.byte	0xe
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF40
	.byte	0xe
	.byte	0x36
	.byte	0x9
	.long	0x9c
	.byte	0x8
	.uleb128 0xe
	.long	.LASF41
	.byte	0xe
	.byte	0x37
	.byte	0x9
	.long	0x9c
	.byte	0x10
	.uleb128 0xe
	.long	.LASF42
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0x9c
	.byte	0x18
	.uleb128 0xe
	.long	.LASF43
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0x9c
	.byte	0x20
	.uleb128 0xe
	.long	.LASF44
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0x9c
	.byte	0x28
	.uleb128 0xe
	.long	.LASF45
	.byte	0xe
	.byte	0x3b
	.byte	0x9
	.long	0x9c
	.byte	0x30
	.uleb128 0xe
	.long	.LASF46
	.byte	0xe
	.byte	0x3c
	.byte	0x9
	.long	0x9c
	.byte	0x38
	.uleb128 0xe
	.long	.LASF47
	.byte	0xe
	.byte	0x3d
	.byte	0x9
	.long	0x9c
	.byte	0x40
	.uleb128 0xe
	.long	.LASF48
	.byte	0xe
	.byte	0x40
	.byte	0x9
	.long	0x9c
	.byte	0x48
	.uleb128 0xe
	.long	.LASF49
	.byte	0xe
	.byte	0x41
	.byte	0x9
	.long	0x9c
	.byte	0x50
	.uleb128 0xe
	.long	.LASF50
	.byte	0xe
	.byte	0x42
	.byte	0x9
	.long	0x9c
	.byte	0x58
	.uleb128 0xe
	.long	.LASF51
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0x3bf
	.byte	0x60
	.uleb128 0xe
	.long	.LASF52
	.byte	0xe
	.byte	0x46
	.byte	0x14
	.long	0x3c5
	.byte	0x68
	.uleb128 0xe
	.long	.LASF53
	.byte	0xe
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xe
	.long	.LASF54
	.byte	0xe
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xe
	.long	.LASF55
	.byte	0xe
	.byte	0x4a
	.byte	0xb
	.long	0x82
	.byte	0x78
	.uleb128 0xe
	.long	.LASF56
	.byte	0xe
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xe
	.long	.LASF57
	.byte	0xe
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xe
	.long	.LASF58
	.byte	0xe
	.byte	0x4f
	.byte	0x8
	.long	0x3cb
	.byte	0x83
	.uleb128 0xe
	.long	.LASF59
	.byte	0xe
	.byte	0x51
	.byte	0xf
	.long	0x3db
	.byte	0x88
	.uleb128 0xe
	.long	.LASF60
	.byte	0xe
	.byte	0x59
	.byte	0xd
	.long	0x8e
	.byte	0x90
	.uleb128 0xe
	.long	.LASF61
	.byte	0xe
	.byte	0x5b
	.byte	0x17
	.long	0x3e6
	.byte	0x98
	.uleb128 0xe
	.long	.LASF62
	.byte	0xe
	.byte	0x5c
	.byte	0x19
	.long	0x3f1
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF63
	.byte	0xe
	.byte	0x5d
	.byte	0x14
	.long	0x3c5
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF64
	.byte	0xe
	.byte	0x5e
	.byte	0x9
	.long	0x9a
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF65
	.byte	0xe
	.byte	0x5f
	.byte	0xa
	.long	0xba
	.byte	0xb8
	.uleb128 0xe
	.long	.LASF66
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF67
	.byte	0xe
	.byte	0x62
	.byte	0x8
	.long	0x3f7
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF68
	.byte	0xf
	.byte	0x7
	.byte	0x19
	.long	0x21f
	.uleb128 0xf
	.long	.LASF133
	.byte	0xe
	.byte	0x2b
	.byte	0xe
	.uleb128 0x10
	.long	.LASF69
	.uleb128 0x7
	.byte	0x8
	.long	0x3ba
	.uleb128 0x7
	.byte	0x8
	.long	0x21f
	.uleb128 0xa
	.long	0xa2
	.long	0x3db
	.uleb128 0xb
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x3b2
	.uleb128 0x10
	.long	.LASF70
	.uleb128 0x7
	.byte	0x8
	.long	0x3e1
	.uleb128 0x10
	.long	.LASF71
	.uleb128 0x7
	.byte	0x8
	.long	0x3ec
	.uleb128 0xa
	.long	0xa2
	.long	0x407
	.uleb128 0xb
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.long	.LASF72
	.byte	0x10
	.byte	0x89
	.byte	0xe
	.long	0x413
	.uleb128 0x7
	.byte	0x8
	.long	0x3a6
	.uleb128 0xc
	.long	.LASF73
	.byte	0x10
	.byte	0x8a
	.byte	0xe
	.long	0x413
	.uleb128 0xc
	.long	.LASF74
	.byte	0x10
	.byte	0x8b
	.byte	0xe
	.long	0x413
	.uleb128 0xc
	.long	.LASF75
	.byte	0x11
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	0xe7
	.long	0x448
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x43d
	.uleb128 0xc
	.long	.LASF76
	.byte	0x11
	.byte	0x1b
	.byte	0x1a
	.long	0x448
	.uleb128 0xc
	.long	.LASF77
	.byte	0x11
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF78
	.byte	0x11
	.byte	0x1f
	.byte	0x1a
	.long	0x448
	.uleb128 0xa
	.long	0xa9
	.long	0x47c
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x471
	.uleb128 0xc
	.long	.LASF79
	.byte	0x12
	.byte	0x19
	.byte	0x13
	.long	0x47c
	.uleb128 0xc
	.long	.LASF80
	.byte	0x13
	.byte	0x20
	.byte	0x14
	.long	0xe1
	.uleb128 0x12
	.long	.LASF134
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x14
	.byte	0x20
	.byte	0x6
	.long	0x4ee
	.uleb128 0x13
	.long	.LASF81
	.byte	0
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.uleb128 0x13
	.long	.LASF83
	.byte	0x2
	.uleb128 0x13
	.long	.LASF84
	.byte	0x3
	.uleb128 0x13
	.long	.LASF85
	.byte	0x4
	.uleb128 0x13
	.long	.LASF86
	.byte	0x5
	.uleb128 0x13
	.long	.LASF87
	.byte	0x6
	.uleb128 0x13
	.long	.LASF88
	.byte	0x7
	.uleb128 0x13
	.long	.LASF89
	.byte	0x8
	.uleb128 0x13
	.long	.LASF90
	.byte	0x9
	.uleb128 0x13
	.long	.LASF91
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x499
	.uleb128 0x9
	.long	.LASF92
	.byte	0x14
	.value	0x10b
	.byte	0x1a
	.long	0x448
	.uleb128 0xa
	.long	0x4ee
	.long	0x50b
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x500
	.uleb128 0x9
	.long	.LASF93
	.byte	0x14
	.value	0x10c
	.byte	0x21
	.long	0x50b
	.uleb128 0xd
	.long	.LASF95
	.byte	0x18
	.byte	0x15
	.byte	0x17
	.byte	0x8
	.long	0x552
	.uleb128 0xe
	.long	.LASF96
	.byte	0x15
	.byte	0x1a
	.byte	0x9
	.long	0xae
	.byte	0
	.uleb128 0xe
	.long	.LASF97
	.byte	0x15
	.byte	0x1d
	.byte	0x9
	.long	0xae
	.byte	0x8
	.uleb128 0xe
	.long	.LASF98
	.byte	0x15
	.byte	0x20
	.byte	0x10
	.long	0x3b
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	.LASF99
	.byte	0x30
	.byte	0x15
	.byte	0x24
	.byte	0x8
	.long	0x5ba
	.uleb128 0x14
	.string	"fd"
	.byte	0x15
	.byte	0x27
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF100
	.byte	0x15
	.byte	0x2a
	.byte	0x9
	.long	0xae
	.byte	0x8
	.uleb128 0xe
	.long	.LASF101
	.byte	0x15
	.byte	0x2d
	.byte	0x10
	.long	0x3b
	.byte	0x10
	.uleb128 0xe
	.long	.LASF102
	.byte	0x15
	.byte	0x30
	.byte	0xa
	.long	0xba
	.byte	0x18
	.uleb128 0xe
	.long	.LASF103
	.byte	0x15
	.byte	0x34
	.byte	0x8
	.long	0x5ba
	.byte	0x20
	.uleb128 0xe
	.long	.LASF104
	.byte	0x15
	.byte	0x37
	.byte	0x8
	.long	0x5ba
	.byte	0x21
	.uleb128 0xe
	.long	.LASF105
	.byte	0x15
	.byte	0x3a
	.byte	0x17
	.long	0x5c1
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF106
	.uleb128 0x7
	.byte	0x8
	.long	0x51d
	.uleb128 0xd
	.long	.LASF107
	.byte	0x38
	.byte	0x16
	.byte	0xe
	.byte	0x8
	.long	0x623
	.uleb128 0xe
	.long	.LASF108
	.byte	0x16
	.byte	0x12
	.byte	0xc
	.long	0x213
	.byte	0
	.uleb128 0xe
	.long	.LASF109
	.byte	0x16
	.byte	0x16
	.byte	0xc
	.long	0x213
	.byte	0x8
	.uleb128 0xe
	.long	.LASF110
	.byte	0x16
	.byte	0x19
	.byte	0xc
	.long	0x213
	.byte	0x10
	.uleb128 0xe
	.long	.LASF111
	.byte	0x16
	.byte	0x1b
	.byte	0xc
	.long	0x623
	.byte	0x18
	.uleb128 0xe
	.long	.LASF112
	.byte	0x16
	.byte	0x1e
	.byte	0xc
	.long	0x207
	.byte	0x28
	.uleb128 0xe
	.long	.LASF113
	.byte	0x16
	.byte	0x20
	.byte	0xc
	.long	0x633
	.byte	0x2c
	.byte	0
	.uleb128 0xa
	.long	0x213
	.long	0x633
	.uleb128 0xb
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0x207
	.long	0x643
	.uleb128 0xb
	.long	0x42
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	.LASF114
	.byte	0x20
	.byte	0x16
	.byte	0x23
	.byte	0x8
	.long	0x6ac
	.uleb128 0xe
	.long	.LASF115
	.byte	0x16
	.byte	0x26
	.byte	0xc
	.long	0x213
	.byte	0
	.uleb128 0xe
	.long	.LASF116
	.byte	0x16
	.byte	0x29
	.byte	0xc
	.long	0x213
	.byte	0x8
	.uleb128 0xe
	.long	.LASF101
	.byte	0x16
	.byte	0x2c
	.byte	0xc
	.long	0x207
	.byte	0x10
	.uleb128 0xe
	.long	.LASF117
	.byte	0x16
	.byte	0x2f
	.byte	0xc
	.long	0x207
	.byte	0x14
	.uleb128 0xe
	.long	.LASF118
	.byte	0x16
	.byte	0x32
	.byte	0xc
	.long	0x207
	.byte	0x18
	.uleb128 0xe
	.long	.LASF119
	.byte	0x16
	.byte	0x34
	.byte	0xc
	.long	0x207
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF120
	.byte	0x16
	.byte	0x37
	.byte	0x18
	.long	0x6ac
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.long	0x5c7
	.long	0x6bb
	.uleb128 0x15
	.long	0x42
	.byte	0
	.uleb128 0x16
	.long	.LASF135
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	0x5ba
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x805
	.uleb128 0x17
	.long	.LASF128
	.byte	0x1
	.byte	0x57
	.byte	0x27
	.long	0x805
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4200
	.uleb128 0x18
	.string	"si"
	.byte	0x1
	.byte	0x59
	.byte	0x10
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4184
	.uleb128 0x19
	.long	.LASF121
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.long	0x5c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4176
	.uleb128 0x1a
	.long	.LASF136
	.long	0x81b
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6315
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0
	.uleb128 0x1c
	.value	0x1000
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.long	0x743
	.uleb128 0x1d
	.string	"f"
	.byte	0x1
	.byte	0x5e
	.byte	0x1d
	.long	0x643
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0x5e
	.byte	0x25
	.long	0x820
	.byte	0
	.uleb128 0x19
	.long	.LASF122
	.byte	0x1
	.byte	0x5e
	.byte	0x30
	.long	0x724
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x19
	.long	.LASF114
	.byte	0x1
	.byte	0x5f
	.byte	0x16
	.long	0x831
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4160
	.uleb128 0x19
	.long	.LASF120
	.byte	0x1
	.byte	0x60
	.byte	0x1d
	.long	0x837
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4152
	.uleb128 0x1e
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1
	.byte	0x61
	.byte	0xc
	.long	0x788
	.uleb128 0x13
	.long	.LASF123
	.byte	0x20
	.byte	0
	.uleb128 0x1e
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1
	.byte	0x62
	.byte	0xc
	.long	0x79d
	.uleb128 0x13
	.long	.LASF124
	.byte	0x48
	.byte	0
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x8a
	.byte	0x14
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4180
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x7d1
	.uleb128 0x19
	.long	.LASF125
	.byte	0x1
	.byte	0x84
	.byte	0x10
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.byte	0
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x19
	.long	.LASF126
	.byte	0x1
	.byte	0xa4
	.byte	0x18
	.long	0x213
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4168
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.byte	0xa5
	.byte	0x18
	.long	0x213
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4136
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x552
	.uleb128 0xa
	.long	0xa9
	.long	0x81b
	.uleb128 0xb
	.long	0x42
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x80b
	.uleb128 0xa
	.long	0xa2
	.long	0x831
	.uleb128 0x21
	.long	0x42
	.value	0xfff
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x643
	.uleb128 0x7
	.byte	0x8
	.long	0x5c7
	.uleb128 0x22
	.long	.LASF137
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x87a
	.uleb128 0x17
	.long	.LASF129
	.byte	0x1
	.byte	0x45
	.byte	0x17
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.long	.LASF128
	.byte	0x1
	.byte	0x45
	.byte	0x33
	.long	0x805
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF138
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	0x5ba
	.quad	.LFB47
	.quad	.LFE47-.LFB47
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"exit_failure"
.LASF9:
	.string	"__off_t"
.LASF124:
	.string	"count"
.LASF40:
	.string	"_IO_read_ptr"
.LASF89:
	.string	"locale_quoting_style"
.LASF52:
	.string	"_chain"
.LASF125:
	.string	"prev_idx"
.LASF134:
	.string	"quoting_style"
.LASF13:
	.string	"size_t"
.LASF113:
	.string	"fe_reserved"
.LASF58:
	.string	"_shortbuf"
.LASF123:
	.string	"headersize"
.LASF82:
	.string	"shell_quoting_style"
.LASF46:
	.string	"_IO_buf_base"
.LASF14:
	.string	"long long unsigned int"
.LASF104:
	.string	"hit_final_extent"
.LASF73:
	.string	"stdout"
.LASF121:
	.string	"last_ei"
.LASF100:
	.string	"scan_start"
.LASF19:
	.string	"__timezone"
.LASF15:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF93:
	.string	"quoting_style_vals"
.LASF136:
	.string	"__PRETTY_FUNCTION__"
.LASF88:
	.string	"escape_quoting_style"
.LASF119:
	.string	"fm_reserved"
.LASF81:
	.string	"literal_quoting_style"
.LASF53:
	.string	"_fileno"
.LASF41:
	.string	"_IO_read_end"
.LASF129:
	.string	"src_fd"
.LASF6:
	.string	"long int"
.LASF16:
	.string	"_gl_cxxalias_dummy"
.LASF128:
	.string	"scan"
.LASF102:
	.string	"ei_count"
.LASF62:
	.string	"_wide_data"
.LASF47:
	.string	"_IO_buf_end"
.LASF56:
	.string	"_cur_column"
.LASF34:
	.string	"program_invocation_short_name"
.LASF86:
	.string	"c_quoting_style"
.LASF70:
	.string	"_IO_codecvt"
.LASF109:
	.string	"fe_physical"
.LASF78:
	.string	"_sys_errlist"
.LASF33:
	.string	"program_invocation_name"
.LASF55:
	.string	"_old_offset"
.LASF60:
	.string	"_offset"
.LASF138:
	.string	"extent_need_sync"
.LASF1:
	.string	"short unsigned int"
.LASF12:
	.string	"off_t"
.LASF7:
	.string	"__uint32_t"
.LASF85:
	.string	"shell_escape_always_quoting_style"
.LASF22:
	.string	"timezone"
.LASF103:
	.string	"initial_scan_failed"
.LASF80:
	.string	"program_name"
.LASF69:
	.string	"_IO_marker"
.LASF72:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF64:
	.string	"_freeres_buf"
.LASF3:
	.string	"long unsigned int"
.LASF114:
	.string	"fiemap"
.LASF44:
	.string	"_IO_write_ptr"
.LASF98:
	.string	"ext_flags"
.LASF21:
	.string	"daylight"
.LASF75:
	.string	"sys_nerr"
.LASF130:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF91:
	.string	"custom_quoting_style"
.LASF135:
	.string	"extent_scan_read"
.LASF95:
	.string	"extent_info"
.LASF35:
	.string	"Version"
.LASF48:
	.string	"_IO_save_base"
.LASF28:
	.string	"environ"
.LASF59:
	.string	"_lock"
.LASF54:
	.string	"_flags2"
.LASF66:
	.string	"_mode"
.LASF116:
	.string	"fm_length"
.LASF26:
	.string	"sys_siglist"
.LASF79:
	.string	"version_etc_copyright"
.LASF61:
	.string	"_codecvt"
.LASF29:
	.string	"optarg"
.LASF23:
	.string	"getdate_err"
.LASF30:
	.string	"optind"
.LASF45:
	.string	"_IO_write_end"
.LASF38:
	.string	"uint64_t"
.LASF133:
	.string	"_IO_lock_t"
.LASF94:
	.string	"_IO_FILE"
.LASF110:
	.string	"fe_length"
.LASF96:
	.string	"ext_logical"
.LASF27:
	.string	"__environ"
.LASF97:
	.string	"ext_length"
.LASF117:
	.string	"fm_mapped_extents"
.LASF8:
	.string	"__uint64_t"
.LASF118:
	.string	"fm_extent_count"
.LASF76:
	.string	"sys_errlist"
.LASF51:
	.string	"_markers"
.LASF115:
	.string	"fm_start"
.LASF99:
	.string	"extent_scan"
.LASF120:
	.string	"fm_extents"
.LASF122:
	.string	"fiemap_buf"
.LASF87:
	.string	"c_maybe_quoting_style"
.LASF106:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF107:
	.string	"fiemap_extent"
.LASF77:
	.string	"_sys_nerr"
.LASF57:
	.string	"_vtable_offset"
.LASF20:
	.string	"tzname"
.LASF68:
	.string	"FILE"
.LASF84:
	.string	"shell_escape_quoting_style"
.LASF92:
	.string	"quoting_style_args"
.LASF32:
	.string	"optopt"
.LASF37:
	.string	"uint32_t"
.LASF112:
	.string	"fe_flags"
.LASF24:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF83:
	.string	"shell_always_quoting_style"
.LASF90:
	.string	"clocale_quoting_style"
.LASF31:
	.string	"opterr"
.LASF10:
	.string	"__off64_t"
.LASF42:
	.string	"_IO_read_base"
.LASF50:
	.string	"_IO_save_end"
.LASF25:
	.string	"_sys_siglist"
.LASF137:
	.string	"extent_scan_init"
.LASF65:
	.string	"__pad5"
.LASF67:
	.string	"_unused2"
.LASF74:
	.string	"stderr"
.LASF101:
	.string	"fm_flags"
.LASF18:
	.string	"__daylight"
.LASF132:
	.string	"/root/coreutils"
.LASF111:
	.string	"fe_reserved64"
.LASF108:
	.string	"fe_logical"
.LASF39:
	.string	"_flags"
.LASF49:
	.string	"_IO_backup_base"
.LASF126:
	.string	"new_logical"
.LASF63:
	.string	"_freeres_list"
.LASF71:
	.string	"_IO_wide_data"
.LASF105:
	.string	"ext_info"
.LASF17:
	.string	"__tzname"
.LASF43:
	.string	"_IO_write_base"
.LASF127:
	.string	"length_adjust"
.LASF131:
	.string	"src/extent-scan.c"
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
