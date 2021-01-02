	.file	"selinux.c"
	.text
.Ltext0:
	.type	computecon, @function
computecon:
.LFB47:
	.file 1 "src/selinux.c"
	.loc 1 73 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 1 73 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 74 9
	movq	$0, -32(%rbp)
	.loc 1 75 9
	movq	$0, -24(%rbp)
	.loc 1 77 7
	movl	$-1, -40(%rbp)
	.loc 1 79 15
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	dir_name@PLT
	movq	%rax, -16(%rbp)
	.loc 1 80 6
	cmpq	$0, -16(%rbp)
	je	.L9
	.loc 1 82 7
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	getcon@PLT
	.loc 1 82 6
	testl	%eax, %eax
	js	.L10
	.loc 1 84 7
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_getfilecon@PLT
	.loc 1 84 6
	testl	%eax, %eax
	js	.L11
	.loc 1 86 12
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	mode_to_security_class@PLT
	movw	%ax, -42(%rbp)
	.loc 1 87 6
	cmpw	$0, -42(%rbp)
	je	.L12
	.loc 1 89 8
	movzwl	-42(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	call	security_compute_create@PLT
	movl	%eax, -40(%rbp)
	jmp	.L3
.L9:
	.loc 1 81 5
	nop
	jmp	.L3
.L10:
	.loc 1 83 5
	nop
	jmp	.L3
.L11:
	.loc 1 85 5
	nop
	jmp	.L3
.L12:
	.loc 1 88 5
	nop
.L3:
	.loc 1 92 13
	call	__errno_location@PLT
	.loc 1 92 7
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 1 93 3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 94 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 1 95 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 1 96 3
	call	__errno_location@PLT
	.loc 1 96 9
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 97 10
	movl	-40(%rbp), %eax
	.loc 1 98 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	computecon, .-computecon
	.globl	defaultcon
	.type	defaultcon, @function
defaultcon:
.LFB48:
	.loc 1 112 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	.loc 1 112 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 113 7
	movl	$-1, -72(%rbp)
	.loc 1 114 9
	movq	$0, -64(%rbp)
	.loc 1 115 9
	movq	$0, -56(%rbp)
	.loc 1 116 13
	movq	$0, -48(%rbp)
	.loc 1 116 27
	movq	$0, -40(%rbp)
	.loc 1 119 9
	movq	$0, -32(%rbp)
	.loc 1 121 9
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 121 6
	cmpb	$47, %al
	je	.L14
	.loc 1 124 17
	movq	-96(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	canonicalize_filename_mode@PLT
	movq	%rax, -32(%rbp)
	.loc 1 125 10
	cmpq	$0, -32(%rbp)
	je	.L27
	.loc 1 127 12
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
.L14:
	.loc 1 130 7
	movl	-100(%rbp), %ecx
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	selabel_lookup@PLT
	.loc 1 130 6
	testl	%eax, %eax
	jns	.L17
	.loc 1 137 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 1 137 10
	cmpl	$2, %eax
	jne	.L28
	.loc 1 138 9
	call	__errno_location@PLT
	.loc 1 138 15
	movl	$61, (%rax)
	.loc 1 139 7
	jmp	.L28
.L17:
	.loc 1 141 7
	leaq	-56(%rbp), %rdx
	movl	-100(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	computecon
	.loc 1 141 6
	testl	%eax, %eax
	js	.L29
	.loc 1 143 20
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	context_new@PLT
	movq	%rax, -48(%rbp)
	.loc 1 143 6
	cmpq	$0, -48(%rbp)
	je	.L30
	.loc 1 145 20
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	context_new@PLT
	movq	%rax, -40(%rbp)
	.loc 1 145 6
	cmpq	$0, -40(%rbp)
	je	.L31
	.loc 1 148 19
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	context_type_get@PLT
	movq	%rax, -24(%rbp)
	.loc 1 148 6
	cmpq	$0, -24(%rbp)
	je	.L32
	.loc 1 150 7
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	context_type_set@PLT
	.loc 1 150 6
	testl	%eax, %eax
	jne	.L33
	.loc 1 152 18
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	context_str@PLT
	movq	%rax, -16(%rbp)
	.loc 1 152 6
	cmpq	$0, -16(%rbp)
	je	.L34
	.loc 1 155 8
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	setfscreatecon@PLT
	movl	%eax, -72(%rbp)
	jmp	.L16
.L27:
	.loc 1 126 9
	nop
	jmp	.L16
.L28:
	.loc 1 139 7
	nop
	jmp	.L16
.L29:
	.loc 1 142 5
	nop
	jmp	.L16
.L30:
	.loc 1 144 5
	nop
	jmp	.L16
.L31:
	.loc 1 146 5
	nop
	jmp	.L16
.L32:
	.loc 1 149 5
	nop
	jmp	.L16
.L33:
	.loc 1 151 5
	nop
	jmp	.L16
.L34:
	.loc 1 153 5
	nop
.L16:
	.loc 1 158 13
	call	__errno_location@PLT
	.loc 1 158 7
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	.loc 1 159 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	context_free@PLT
	.loc 1 160 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	context_free@PLT
	.loc 1 161 3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 1 162 3
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 1 163 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 164 3
	call	__errno_location@PLT
	.loc 1 164 9
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 165 10
	movl	-72(%rbp), %eax
	.loc 1 166 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	defaultcon, .-defaultcon
	.type	restorecon_private, @function
restorecon_private:
.LFB49:
	.loc 1 179 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	.loc 1 179 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 180 7
	movl	$-1, -224(%rbp)
	.loc 1 182 9
	movq	$0, -208(%rbp)
	.loc 1 183 9
	movq	$0, -200(%rbp)
	.loc 1 184 13
	movq	$0, -192(%rbp)
	.loc 1 184 27
	movq	$0, -184(%rbp)
	.loc 1 189 6
	cmpq	$0, -232(%rbp)
	jne	.L36
.LBB2:
	.loc 1 191 11
	leaq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	getfscreatecon@PLT
	.loc 1 191 10
	testl	%eax, %eax
	jns	.L37
	.loc 1 192 16
	movl	-224(%rbp), %eax
	jmp	.L55
.L37:
	.loc 1 193 11
	movq	-200(%rbp), %rax
	.loc 1 193 10
	testq	%rax, %rax
	jne	.L39
	.loc 1 195 11
	call	__errno_location@PLT
	.loc 1 195 17
	movl	$61, (%rax)
	.loc 1 196 18
	movl	-224(%rbp), %eax
	jmp	.L55
.L39:
	.loc 1 198 12
	movq	-200(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lsetfilecon@PLT
	movl	%eax, -224(%rbp)
	.loc 1 199 17
	call	__errno_location@PLT
	.loc 1 199 11
	movl	(%rax), %eax
	movl	%eax, -212(%rbp)
	.loc 1 200 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 1 201 7
	call	__errno_location@PLT
	.loc 1 201 13
	movl	-212(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 202 14
	movl	-224(%rbp), %eax
	jmp	.L55
.L36:
.LBE2:
	.loc 1 205 8
	movq	-240(%rbp), %rax
	movl	$131072, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -220(%rbp)
	.loc 1 206 6
	cmpl	$-1, -220(%rbp)
	jne	.L40
	.loc 1 206 20 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 1 206 16 discriminator 1
	cmpl	$40, %eax
	jne	.L57
.L40:
	.loc 1 209 6
	cmpl	$-1, -220(%rbp)
	je	.L42
	.loc 1 211 11
	leaq	-160(%rbp), %rdx
	movl	-220(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 1 211 10
	testl	%eax, %eax
	jns	.L43
	.loc 1 212 9
	jmp	.L41
.L42:
	.loc 1 216 11
	leaq	-160(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 1 216 10
	testl	%eax, %eax
	js	.L58
.L43:
	.loc 1 220 54
	movl	-136(%rbp), %eax
	.loc 1 220 7
	movl	%eax, %ecx
	movq	-240(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	selabel_lookup@PLT
	.loc 1 220 6
	testl	%eax, %eax
	jns	.L44
	.loc 1 227 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 1 227 10
	cmpl	$2, %eax
	jne	.L59
	.loc 1 228 9
	call	__errno_location@PLT
	.loc 1 228 15
	movl	$61, (%rax)
	.loc 1 229 7
	jmp	.L59
.L44:
	.loc 1 231 20
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	context_new@PLT
	movq	%rax, -192(%rbp)
	.loc 1 231 6
	cmpq	$0, -192(%rbp)
	je	.L60
	.loc 1 234 6
	cmpl	$-1, -220(%rbp)
	je	.L47
	.loc 1 236 11
	leaq	-200(%rbp), %rdx
	movl	-220(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	rpl_fgetfilecon@PLT
	.loc 1 236 10
	testl	%eax, %eax
	jns	.L48
	.loc 1 237 9
	jmp	.L41
.L47:
	.loc 1 241 11
	leaq	-200(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_lgetfilecon@PLT
	.loc 1 241 10
	testl	%eax, %eax
	js	.L61
.L48:
	.loc 1 245 20
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	context_new@PLT
	movq	%rax, -184(%rbp)
	.loc 1 245 6
	cmpq	$0, -184(%rbp)
	je	.L62
	.loc 1 248 19
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	context_type_get@PLT
	movq	%rax, -176(%rbp)
	.loc 1 248 6
	cmpq	$0, -176(%rbp)
	je	.L63
	.loc 1 250 7
	movq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	context_type_set@PLT
	.loc 1 250 6
	testl	%eax, %eax
	jne	.L64
	.loc 1 252 18
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	context_str@PLT
	movq	%rax, -168(%rbp)
	.loc 1 252 6
	cmpq	$0, -168(%rbp)
	je	.L65
	.loc 1 255 6
	cmpl	$-1, -220(%rbp)
	je	.L53
	.loc 1 256 10
	movq	-168(%rbp), %rdx
	movl	-220(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fsetfilecon@PLT
	movl	%eax, -224(%rbp)
	jmp	.L41
.L53:
	.loc 1 258 10
	movq	-168(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lsetfilecon@PLT
	movl	%eax, -224(%rbp)
	jmp	.L41
.L57:
	.loc 1 207 5
	nop
	jmp	.L41
.L58:
	.loc 1 217 9
	nop
	jmp	.L41
.L59:
	.loc 1 229 7
	nop
	jmp	.L41
.L60:
	.loc 1 232 5
	nop
	jmp	.L41
.L61:
	.loc 1 242 9
	nop
	jmp	.L41
.L62:
	.loc 1 246 5
	nop
	jmp	.L41
.L63:
	.loc 1 249 5
	nop
	jmp	.L41
.L64:
	.loc 1 251 5
	nop
	jmp	.L41
.L65:
	.loc 1 253 5
	nop
.L41:
	.loc 1 261 13
	call	__errno_location@PLT
	.loc 1 261 7
	movl	(%rax), %eax
	movl	%eax, -216(%rbp)
	.loc 1 262 6
	cmpl	$-1, -220(%rbp)
	je	.L54
	.loc 1 263 5
	movl	-220(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L54:
	.loc 1 264 3
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	context_free@PLT
	.loc 1 265 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	context_free@PLT
	.loc 1 266 3
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 1 267 3
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
	.loc 1 268 3
	call	__errno_location@PLT
	.loc 1 268 9
	movl	-216(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 269 10
	movl	-224(%rbp), %eax
.L55:
	.loc 1 270 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L56
	.loc 1 270 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	restorecon_private, .-restorecon_private
	.globl	restorecon
	.type	restorecon, @function
restorecon:
.LFB50:
	.loc 1 287 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, %eax
	movb	%al, -100(%rbp)
	.loc 1 287 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 288 9
	movq	$0, -56(%rbp)
	.loc 1 290 9
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 290 6
	cmpb	$47, %al
	je	.L67
	.loc 1 295 17
	movq	-96(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	canonicalize_filename_mode@PLT
	movq	%rax, -56(%rbp)
	.loc 1 296 10
	cmpq	$0, -56(%rbp)
	jne	.L68
	.loc 1 297 16
	movl	$0, %eax
	jmp	.L75
.L68:
	.loc 1 298 12
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
.L67:
	.loc 1 301 7
	movzbl	-100(%rbp), %eax
	xorl	$1, %eax
	.loc 1 301 6
	testb	%al, %al
	je	.L70
.LBB3:
	.loc 1 303 17
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	restorecon_private
	.loc 1 303 12
	cmpl	$-1, %eax
	setne	%al
	movb	%al, -65(%rbp)
	.loc 1 304 17
	call	__errno_location@PLT
	.loc 1 304 11
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	.loc 1 305 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 306 7
	call	__errno_location@PLT
	.loc 1 306 13
	movl	-60(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 307 14
	movzbl	-65(%rbp), %eax
	jmp	.L75
.L70:
.LBE3:
	.loc 1 310 15
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	.loc 1 311 14
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	xfts_open@PLT
	movq	%rax, -48(%rbp)
	.loc 1 313 7
	movl	$0, -64(%rbp)
.LBB4:
	.loc 1 314 3
	jmp	.L71
.L72:
	.loc 1 315 48
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 1 315 9
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	restorecon_private
	.loc 1 315 8
	testl	%eax, %eax
	jns	.L71
	.loc 1 316 13
	call	__errno_location@PLT
	.loc 1 316 11
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
.L71:
	.loc 1 314 28
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_read@PLT
	movq	%rax, -40(%rbp)
	.loc 1 314 3
	cmpq	$0, -40(%rbp)
	jne	.L72
.LBE4:
	.loc 1 318 7
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 1 318 6
	testl	%eax, %eax
	je	.L73
	.loc 1 319 11
	call	__errno_location@PLT
	.loc 1 319 9
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
.L73:
	.loc 1 321 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fts_close@PLT
	.loc 1 321 6
	testl	%eax, %eax
	je	.L74
	.loc 1 322 11
	call	__errno_location@PLT
	.loc 1 322 9
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
.L74:
	.loc 1 324 3
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 325 10
	cmpl	$0, -64(%rbp)
	sete	%al
.L75:
	.loc 1 326 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L76
	.loc 1 326 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	restorecon, .-restorecon
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 6 "/usr/include/selinux/selinux.h"
	.file 7 "/usr/include/selinux/context.h"
	.file 8 "./lib/sys/select.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 11 "/usr/include/signal.h"
	.file 12 "/usr/include/unistd.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/errno.h"
	.file 15 "src/version.h"
	.file 16 "./lib/exitfail.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/canonicalize.h"
	.file 25 "./lib/i-ring.h"
	.file 26 "./lib/fts_.h"
	.file 27 "/usr/include/dirent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdb6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF190
	.byte	0xc
	.long	.LASF191
	.long	.LASF192
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
	.byte	0x2
	.byte	0x91
	.byte	0x19
	.long	0x42
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0x92
	.byte	0x19
	.long	0x3b
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0x93
	.byte	0x19
	.long	0x3b
	.uleb128 0x5
	.long	.LASF10
	.byte	0x2
	.byte	0x94
	.byte	0x19
	.long	0x42
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0x96
	.byte	0x1a
	.long	0x3b
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x97
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF14
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF15
	.byte	0x2
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x5
	.long	.LASF16
	.byte	0x2
	.byte	0xae
	.byte	0x1d
	.long	0x63
	.uleb128 0x5
	.long	.LASF17
	.byte	0x2
	.byte	0xb3
	.byte	0x1c
	.long	0x63
	.uleb128 0x5
	.long	.LASF18
	.byte	0x2
	.byte	0xc4
	.byte	0x21
	.long	0x63
	.uleb128 0x7
	.byte	0x8
	.long	0x102
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0x8
	.long	0x102
	.uleb128 0x5
	.long	.LASF20
	.byte	0x3
	.byte	0x3b
	.byte	0x11
	.long	0x6a
	.uleb128 0x5
	.long	.LASF21
	.byte	0x3
	.byte	0x45
	.byte	0x12
	.long	0x9a
	.uleb128 0x5
	.long	.LASF22
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF40
	.byte	0x10
	.byte	0x5
	.byte	0xa
	.byte	0x8
	.long	0x15a
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0xc
	.byte	0xc
	.long	0xca
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x10
	.byte	0x15
	.long	0xf0
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF30
	.byte	0x8
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF26
	.uleb128 0x5
	.long	.LASF27
	.byte	0x6
	.byte	0x7e
	.byte	0x18
	.long	0x34
	.uleb128 0x7
	.byte	0x8
	.long	0x109
	.uleb128 0x8
	.long	0x181
	.uleb128 0x7
	.byte	0x8
	.long	0xfc
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.byte	0xc
	.byte	0xa
	.long	0x1a9
	.uleb128 0xd
	.string	"ptr"
	.byte	0x7
	.byte	0xd
	.byte	0x9
	.long	0xd6
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF28
	.byte	0x7
	.byte	0xe
	.byte	0x4
	.long	0x192
	.uleb128 0x5
	.long	.LASF29
	.byte	0x7
	.byte	0x10
	.byte	0x17
	.long	0x1c1
	.uleb128 0x7
	.byte	0x8
	.long	0x1a9
	.uleb128 0xe
	.long	0xfc
	.long	0x1d7
	.uleb128 0xf
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF31
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x1c7
	.uleb128 0x10
	.long	.LASF32
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF33
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0x10
	.long	.LASF34
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x1c7
	.uleb128 0x10
	.long	.LASF35
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF36
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0xb
	.long	.LASF37
	.byte	0x9
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x5
	.long	.LASF38
	.byte	0x4
	.byte	0x8f
	.byte	0x1a
	.long	0x63
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF39
	.uleb128 0x9
	.long	.LASF41
	.byte	0x90
	.byte	0xa
	.byte	0x2e
	.byte	0x8
	.long	0x310
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x30
	.byte	0xd
	.long	0x6a
	.byte	0
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x35
	.byte	0xd
	.long	0x8e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF44
	.byte	0xa
	.byte	0x3d
	.byte	0xf
	.long	0xa6
	.byte	0x10
	.uleb128 0xa
	.long	.LASF45
	.byte	0xa
	.byte	0x3e
	.byte	0xe
	.long	0x9a
	.byte	0x18
	.uleb128 0xa
	.long	.LASF46
	.byte	0xa
	.byte	0x40
	.byte	0xd
	.long	0x76
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF47
	.byte	0xa
	.byte	0x41
	.byte	0xd
	.long	0x82
	.byte	0x20
	.uleb128 0xa
	.long	.LASF48
	.byte	0xa
	.byte	0x43
	.byte	0x9
	.long	0x57
	.byte	0x24
	.uleb128 0xa
	.long	.LASF49
	.byte	0xa
	.byte	0x45
	.byte	0xd
	.long	0x6a
	.byte	0x28
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa
	.byte	0x4a
	.byte	0xd
	.long	0xb2
	.byte	0x30
	.uleb128 0xa
	.long	.LASF51
	.byte	0xa
	.byte	0x4e
	.byte	0x11
	.long	0xd8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF52
	.byte	0xa
	.byte	0x50
	.byte	0x10
	.long	0xe4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF53
	.byte	0xa
	.byte	0x5b
	.byte	0x15
	.long	0x132
	.byte	0x48
	.uleb128 0xa
	.long	.LASF54
	.byte	0xa
	.byte	0x5c
	.byte	0x15
	.long	0x132
	.byte	0x58
	.uleb128 0xa
	.long	.LASF55
	.byte	0xa
	.byte	0x5d
	.byte	0x15
	.long	0x132
	.byte	0x68
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x6a
	.byte	0x17
	.long	0x310
	.byte	0x78
	.byte	0
	.uleb128 0xe
	.long	0xf0
	.long	0x320
	.uleb128 0xf
	.long	0x42
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x187
	.long	0x330
	.uleb128 0xf
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x320
	.uleb128 0xb
	.long	.LASF57
	.byte	0xb
	.value	0x11e
	.byte	0x1a
	.long	0x330
	.uleb128 0xb
	.long	.LASF58
	.byte	0xb
	.value	0x11f
	.byte	0x1a
	.long	0x330
	.uleb128 0xb
	.long	.LASF59
	.byte	0xc
	.value	0x21f
	.byte	0xf
	.long	0x18c
	.uleb128 0xb
	.long	.LASF60
	.byte	0xc
	.value	0x221
	.byte	0xf
	.long	0x18c
	.uleb128 0x10
	.long	.LASF61
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0xfc
	.uleb128 0x10
	.long	.LASF62
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF63
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF64
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF65
	.byte	0xe
	.byte	0x2d
	.byte	0xe
	.long	0xfc
	.uleb128 0x10
	.long	.LASF66
	.byte	0xe
	.byte	0x2e
	.byte	0xe
	.long	0xfc
	.uleb128 0x10
	.long	.LASF67
	.byte	0xf
	.byte	0x1
	.byte	0x14
	.long	0x181
	.uleb128 0x10
	.long	.LASF68
	.byte	0x10
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x11
	.string	"DIR"
	.byte	0x1b
	.byte	0x7f
	.byte	0x1c
	.long	0x3d5
	.uleb128 0x12
	.long	.LASF100
	.uleb128 0x9
	.long	.LASF69
	.byte	0xd8
	.byte	0x11
	.byte	0x31
	.byte	0x8
	.long	0x561
	.uleb128 0xa
	.long	.LASF70
	.byte	0x11
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0x11
	.byte	0x36
	.byte	0x9
	.long	0xfc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF72
	.byte	0x11
	.byte	0x37
	.byte	0x9
	.long	0xfc
	.byte	0x10
	.uleb128 0xa
	.long	.LASF73
	.byte	0x11
	.byte	0x38
	.byte	0x9
	.long	0xfc
	.byte	0x18
	.uleb128 0xa
	.long	.LASF74
	.byte	0x11
	.byte	0x39
	.byte	0x9
	.long	0xfc
	.byte	0x20
	.uleb128 0xa
	.long	.LASF75
	.byte	0x11
	.byte	0x3a
	.byte	0x9
	.long	0xfc
	.byte	0x28
	.uleb128 0xa
	.long	.LASF76
	.byte	0x11
	.byte	0x3b
	.byte	0x9
	.long	0xfc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF77
	.byte	0x11
	.byte	0x3c
	.byte	0x9
	.long	0xfc
	.byte	0x38
	.uleb128 0xa
	.long	.LASF78
	.byte	0x11
	.byte	0x3d
	.byte	0x9
	.long	0xfc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF79
	.byte	0x11
	.byte	0x40
	.byte	0x9
	.long	0xfc
	.byte	0x48
	.uleb128 0xa
	.long	.LASF80
	.byte	0x11
	.byte	0x41
	.byte	0x9
	.long	0xfc
	.byte	0x50
	.uleb128 0xa
	.long	.LASF81
	.byte	0x11
	.byte	0x42
	.byte	0x9
	.long	0xfc
	.byte	0x58
	.uleb128 0xa
	.long	.LASF82
	.byte	0x11
	.byte	0x44
	.byte	0x16
	.long	0x57a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF83
	.byte	0x11
	.byte	0x46
	.byte	0x14
	.long	0x580
	.byte	0x68
	.uleb128 0xa
	.long	.LASF84
	.byte	0x11
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xa
	.long	.LASF85
	.byte	0x11
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xa
	.long	.LASF86
	.byte	0x11
	.byte	0x4a
	.byte	0xb
	.long	0xb2
	.byte	0x78
	.uleb128 0xa
	.long	.LASF87
	.byte	0x11
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xa
	.long	.LASF88
	.byte	0x11
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xa
	.long	.LASF89
	.byte	0x11
	.byte	0x4f
	.byte	0x8
	.long	0x586
	.byte	0x83
	.uleb128 0xa
	.long	.LASF90
	.byte	0x11
	.byte	0x51
	.byte	0xf
	.long	0x596
	.byte	0x88
	.uleb128 0xa
	.long	.LASF91
	.byte	0x11
	.byte	0x59
	.byte	0xd
	.long	0xbe
	.byte	0x90
	.uleb128 0xa
	.long	.LASF92
	.byte	0x11
	.byte	0x5b
	.byte	0x17
	.long	0x5a1
	.byte	0x98
	.uleb128 0xa
	.long	.LASF93
	.byte	0x11
	.byte	0x5c
	.byte	0x19
	.long	0x5ac
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF94
	.byte	0x11
	.byte	0x5d
	.byte	0x14
	.long	0x580
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF95
	.byte	0x11
	.byte	0x5e
	.byte	0x9
	.long	0xd6
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF96
	.byte	0x11
	.byte	0x5f
	.byte	0xa
	.long	0x126
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF97
	.byte	0x11
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF98
	.byte	0x11
	.byte	0x62
	.byte	0x8
	.long	0x5b2
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF99
	.byte	0x12
	.byte	0x7
	.byte	0x19
	.long	0x3da
	.uleb128 0x13
	.long	.LASF193
	.byte	0x11
	.byte	0x2b
	.byte	0xe
	.uleb128 0x12
	.long	.LASF101
	.uleb128 0x7
	.byte	0x8
	.long	0x575
	.uleb128 0x7
	.byte	0x8
	.long	0x3da
	.uleb128 0xe
	.long	0x102
	.long	0x596
	.uleb128 0xf
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x56d
	.uleb128 0x12
	.long	.LASF102
	.uleb128 0x7
	.byte	0x8
	.long	0x59c
	.uleb128 0x12
	.long	.LASF103
	.uleb128 0x7
	.byte	0x8
	.long	0x5a7
	.uleb128 0xe
	.long	0x102
	.long	0x5c2
	.uleb128 0xf
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.long	.LASF104
	.byte	0x13
	.byte	0x89
	.byte	0xe
	.long	0x5ce
	.uleb128 0x7
	.byte	0x8
	.long	0x561
	.uleb128 0x10
	.long	.LASF105
	.byte	0x13
	.byte	0x8a
	.byte	0xe
	.long	0x5ce
	.uleb128 0x10
	.long	.LASF106
	.byte	0x13
	.byte	0x8b
	.byte	0xe
	.long	0x5ce
	.uleb128 0x10
	.long	.LASF107
	.byte	0x14
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	0x187
	.long	0x603
	.uleb128 0x14
	.byte	0
	.uleb128 0x8
	.long	0x5f8
	.uleb128 0x10
	.long	.LASF108
	.byte	0x14
	.byte	0x1b
	.byte	0x1a
	.long	0x603
	.uleb128 0x10
	.long	.LASF109
	.byte	0x14
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF110
	.byte	0x14
	.byte	0x1f
	.byte	0x1a
	.long	0x603
	.uleb128 0xe
	.long	0x109
	.long	0x637
	.uleb128 0x14
	.byte	0
	.uleb128 0x8
	.long	0x62c
	.uleb128 0x10
	.long	.LASF111
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x637
	.uleb128 0x10
	.long	.LASF112
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x181
	.uleb128 0x15
	.long	.LASF126
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x6a9
	.uleb128 0x16
	.long	.LASF113
	.byte	0
	.uleb128 0x16
	.long	.LASF114
	.byte	0x1
	.uleb128 0x16
	.long	.LASF115
	.byte	0x2
	.uleb128 0x16
	.long	.LASF116
	.byte	0x3
	.uleb128 0x16
	.long	.LASF117
	.byte	0x4
	.uleb128 0x16
	.long	.LASF118
	.byte	0x5
	.uleb128 0x16
	.long	.LASF119
	.byte	0x6
	.uleb128 0x16
	.long	.LASF120
	.byte	0x7
	.uleb128 0x16
	.long	.LASF121
	.byte	0x8
	.uleb128 0x16
	.long	.LASF122
	.byte	0x9
	.uleb128 0x16
	.long	.LASF123
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x654
	.uleb128 0xb
	.long	.LASF124
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x603
	.uleb128 0xe
	.long	0x6a9
	.long	0x6c6
	.uleb128 0x14
	.byte	0
	.uleb128 0x8
	.long	0x6bb
	.uleb128 0xb
	.long	.LASF125
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x6c6
	.uleb128 0x15
	.long	.LASF127
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x18
	.byte	0x1c
	.byte	0x6
	.long	0x703
	.uleb128 0x16
	.long	.LASF128
	.byte	0
	.uleb128 0x16
	.long	.LASF129
	.byte	0x1
	.uleb128 0x16
	.long	.LASF130
	.byte	0x2
	.uleb128 0x16
	.long	.LASF131
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF132
	.byte	0x20
	.byte	0x19
	.byte	0x1f
	.byte	0x8
	.long	0x752
	.uleb128 0xa
	.long	.LASF133
	.byte	0x19
	.byte	0x21
	.byte	0x7
	.long	0x752
	.byte	0
	.uleb128 0xa
	.long	.LASF134
	.byte	0x19
	.byte	0x22
	.byte	0x7
	.long	0x57
	.byte	0x10
	.uleb128 0xa
	.long	.LASF135
	.byte	0x19
	.byte	0x23
	.byte	0x10
	.long	0x3b
	.byte	0x14
	.uleb128 0xa
	.long	.LASF136
	.byte	0x19
	.byte	0x24
	.byte	0x10
	.long	0x3b
	.byte	0x18
	.uleb128 0xa
	.long	.LASF137
	.byte	0x19
	.byte	0x25
	.byte	0x8
	.long	0x762
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.long	0x57
	.long	0x762
	.uleb128 0xf
	.long	0x42
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF138
	.uleb128 0x5
	.long	.LASF132
	.byte	0x19
	.byte	0x27
	.byte	0x17
	.long	0x703
	.uleb128 0x17
	.byte	0x8
	.byte	0x1a
	.byte	0xab
	.byte	0x9
	.long	0x796
	.uleb128 0x18
	.string	"ht"
	.byte	0x1a
	.byte	0xb8
	.byte	0x24
	.long	0x79b
	.uleb128 0x19
	.long	.LASF139
	.byte	0x1a
	.byte	0xbe
	.byte	0x2b
	.long	0x7a6
	.byte	0
	.uleb128 0x12
	.long	.LASF140
	.uleb128 0x7
	.byte	0x8
	.long	0x796
	.uleb128 0x12
	.long	.LASF141
	.uleb128 0x7
	.byte	0x8
	.long	0x7a1
	.uleb128 0xc
	.byte	0x80
	.byte	0x1a
	.byte	0x50
	.byte	0x9
	.long	0x86c
	.uleb128 0xa
	.long	.LASF142
	.byte	0x1a
	.byte	0x51
	.byte	0x19
	.long	0x978
	.byte	0
	.uleb128 0xa
	.long	.LASF143
	.byte	0x1a
	.byte	0x52
	.byte	0x19
	.long	0x978
	.byte	0x8
	.uleb128 0xa
	.long	.LASF144
	.byte	0x1a
	.byte	0x53
	.byte	0x1a
	.long	0x97e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF145
	.byte	0x1a
	.byte	0x54
	.byte	0xf
	.long	0x10e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF146
	.byte	0x1a
	.byte	0x55
	.byte	0xf
	.long	0xfc
	.byte	0x20
	.uleb128 0xa
	.long	.LASF147
	.byte	0x1a
	.byte	0x56
	.byte	0xd
	.long	0x57
	.byte	0x28
	.uleb128 0xa
	.long	.LASF148
	.byte	0x1a
	.byte	0x57
	.byte	0xd
	.long	0x57
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF149
	.byte	0x1a
	.byte	0x59
	.byte	0x10
	.long	0x126
	.byte	0x30
	.uleb128 0xa
	.long	.LASF150
	.byte	0x1a
	.byte	0x5a
	.byte	0x10
	.long	0x126
	.byte	0x38
	.uleb128 0xa
	.long	.LASF151
	.byte	0x1a
	.byte	0x5b
	.byte	0xf
	.long	0x9a4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1a
	.byte	0xa0
	.byte	0xd
	.long	0x57
	.byte	0x48
	.uleb128 0xa
	.long	.LASF153
	.byte	0x1a
	.byte	0xa9
	.byte	0x1c
	.long	0x79b
	.byte	0x50
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1a
	.byte	0xbf
	.byte	0xb
	.long	0x775
	.byte	0x58
	.uleb128 0xa
	.long	.LASF155
	.byte	0x1a
	.byte	0xc4
	.byte	0x10
	.long	0x769
	.byte	0x60
	.byte	0
	.uleb128 0x1a
	.long	.LASF156
	.value	0x100
	.byte	0x1a
	.byte	0xc7
	.byte	0x10
	.long	0x973
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1a
	.byte	0xc8
	.byte	0x19
	.long	0x978
	.byte	0
	.uleb128 0xa
	.long	.LASF157
	.byte	0x1a
	.byte	0xc9
	.byte	0x19
	.long	0x978
	.byte	0x8
	.uleb128 0xa
	.long	.LASF158
	.byte	0x1a
	.byte	0xca
	.byte	0x19
	.long	0x978
	.byte	0x10
	.uleb128 0xa
	.long	.LASF159
	.byte	0x1a
	.byte	0xcb
	.byte	0xe
	.long	0x9b6
	.byte	0x18
	.uleb128 0xa
	.long	.LASF160
	.byte	0x1a
	.byte	0xce
	.byte	0xe
	.long	0x63
	.byte	0x20
	.uleb128 0xa
	.long	.LASF161
	.byte	0x1a
	.byte	0xcf
	.byte	0xf
	.long	0xd6
	.byte	0x28
	.uleb128 0xa
	.long	.LASF162
	.byte	0x1a
	.byte	0xd0
	.byte	0xf
	.long	0xfc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF146
	.byte	0x1a
	.byte	0xd1
	.byte	0xf
	.long	0xfc
	.byte	0x38
	.uleb128 0xa
	.long	.LASF163
	.byte	0x1a
	.byte	0xd2
	.byte	0xd
	.long	0x57
	.byte	0x40
	.uleb128 0xa
	.long	.LASF164
	.byte	0x1a
	.byte	0xd3
	.byte	0xd
	.long	0x57
	.byte	0x44
	.uleb128 0xa
	.long	.LASF149
	.byte	0x1a
	.byte	0xd4
	.byte	0x10
	.long	0x126
	.byte	0x48
	.uleb128 0xa
	.long	.LASF165
	.byte	0x1a
	.byte	0xd6
	.byte	0xe
	.long	0x9bc
	.byte	0x50
	.uleb128 0xa
	.long	.LASF166
	.byte	0x1a
	.byte	0xda
	.byte	0x13
	.long	0x22c
	.byte	0x58
	.uleb128 0xa
	.long	.LASF167
	.byte	0x1a
	.byte	0xdc
	.byte	0x10
	.long	0x126
	.byte	0x60
	.uleb128 0xa
	.long	.LASF168
	.byte	0x1a
	.byte	0xec
	.byte	0x1c
	.long	0x34
	.byte	0x68
	.uleb128 0xa
	.long	.LASF169
	.byte	0x1a
	.byte	0xf0
	.byte	0x1c
	.long	0x34
	.byte	0x6a
	.uleb128 0xa
	.long	.LASF170
	.byte	0x1a
	.byte	0xf6
	.byte	0x1c
	.long	0x34
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF171
	.byte	0x1a
	.byte	0xf8
	.byte	0x15
	.long	0x9c2
	.byte	0x70
	.uleb128 0x1b
	.long	.LASF172
	.byte	0x1a
	.byte	0xf9
	.byte	0xe
	.long	0x9d2
	.value	0x100
	.byte	0
	.uleb128 0x8
	.long	0x86c
	.uleb128 0x7
	.byte	0x8
	.long	0x86c
	.uleb128 0x7
	.byte	0x8
	.long	0x978
	.uleb128 0x1c
	.long	0x57
	.long	0x998
	.uleb128 0x1d
	.long	0x998
	.uleb128 0x1d
	.long	0x998
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x99e
	.uleb128 0x7
	.byte	0x8
	.long	0x973
	.uleb128 0x7
	.byte	0x8
	.long	0x984
	.uleb128 0x11
	.string	"FTS"
	.byte	0x1a
	.byte	0xc5
	.byte	0x3
	.long	0x7ac
	.uleb128 0x7
	.byte	0x8
	.long	0x3c9
	.uleb128 0x7
	.byte	0x8
	.long	0x9aa
	.uleb128 0xe
	.long	0x23f
	.long	0x9d2
	.uleb128 0xf
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x102
	.long	0x9e1
	.uleb128 0x1e
	.long	0x42
	.byte	0
	.uleb128 0x5
	.long	.LASF173
	.byte	0x1a
	.byte	0xfa
	.byte	0x3
	.long	0x86c
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.value	0x11d
	.byte	0x1
	.long	0x762
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xadf
	.uleb128 0x20
	.long	.LASF174
	.byte	0x1
	.value	0x11d
	.byte	0x24
	.long	0xae4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF175
	.byte	0x1
	.value	0x11e
	.byte	0x19
	.long	0x181
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF176
	.byte	0x1
	.value	0x11e
	.byte	0x24
	.long	0x762
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x21
	.long	.LASF177
	.byte	0x1
	.value	0x120
	.byte	0x9
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF178
	.byte	0x1
	.value	0x136
	.byte	0xf
	.long	0xaea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"fts"
	.byte	0x1
	.value	0x137
	.byte	0x8
	.long	0x9bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.value	0x139
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xabc
	.uleb128 0x22
	.string	"ok"
	.byte	0x1
	.value	0x12f
	.byte	0xc
	.long	0x762
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.value	0x130
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x22
	.string	"ent"
	.byte	0x1
	.value	0x13a
	.byte	0x10
	.long	0xafa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF174
	.uleb128 0x7
	.byte	0x8
	.long	0xadf
	.uleb128 0xe
	.long	0x181
	.long	0xafa
	.uleb128 0xf
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x9e1
	.uleb128 0x25
	.long	.LASF194
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.long	0x57
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xc14
	.uleb128 0x26
	.long	.LASF174
	.byte	0x1
	.byte	0xb2
	.byte	0x2c
	.long	0xae4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x26
	.long	.LASF175
	.byte	0x1
	.byte	0xb2
	.byte	0x48
	.long	0x181
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x27
	.string	"rc"
	.byte	0x1
	.byte	0xb4
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x27
	.string	"sb"
	.byte	0x1
	.byte	0xb5
	.byte	0xf
	.long	0x23f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.long	.LASF179
	.byte	0x1
	.byte	0xb6
	.byte	0x9
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.long	.LASF180
	.byte	0x1
	.byte	0xb7
	.byte	0x9
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x28
	.long	.LASF181
	.byte	0x1
	.byte	0xb8
	.byte	0xd
	.long	0x1b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x28
	.long	.LASF182
	.byte	0x1
	.byte	0xb8
	.byte	0x1b
	.long	0x1b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.long	.LASF183
	.byte	0x1
	.byte	0xb9
	.byte	0xf
	.long	0x181
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.long	.LASF184
	.byte	0x1
	.byte	0xba
	.byte	0x9
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.string	"fd"
	.byte	0x1
	.byte	0xbb
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x29
	.long	.LASF188
	.byte	0x1
	.value	0x104
	.byte	0x2
	.quad	.L41
	.uleb128 0x22
	.string	"err"
	.byte	0x1
	.value	0x105
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x27
	.string	"err"
	.byte	0x1
	.byte	0xc7
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF186
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	0x57
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xd01
	.uleb128 0x26
	.long	.LASF174
	.byte	0x1
	.byte	0x6e
	.byte	0x24
	.long	0xae4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF175
	.byte	0x1
	.byte	0x6f
	.byte	0x19
	.long	0x181
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF187
	.byte	0x1
	.byte	0x6f
	.byte	0x26
	.long	0x11a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.string	"rc"
	.byte	0x1
	.byte	0x71
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF179
	.byte	0x1
	.byte	0x72
	.byte	0x9
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF180
	.byte	0x1
	.byte	0x73
	.byte	0x9
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF181
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.long	0x1b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF182
	.byte	0x1
	.byte	0x74
	.byte	0x1b
	.long	0x1b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF183
	.byte	0x1
	.byte	0x75
	.byte	0xf
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF184
	.byte	0x1
	.byte	0x76
	.byte	0x9
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF177
	.byte	0x1
	.byte	0x77
	.byte	0x9
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF188
	.byte	0x1
	.byte	0x9d
	.byte	0x2
	.quad	.L16
	.uleb128 0x27
	.string	"err"
	.byte	0x1
	.byte	0x9e
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2c
	.long	.LASF195
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	0x57
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF175
	.byte	0x1
	.byte	0x48
	.byte	0x19
	.long	0x181
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF187
	.byte	0x1
	.byte	0x48
	.byte	0x26
	.long	0x11a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"con"
	.byte	0x1
	.byte	0x48
	.byte	0x33
	.long	0x18c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF179
	.byte	0x1
	.byte	0x4a
	.byte	0x9
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF180
	.byte	0x1
	.byte	0x4b
	.byte	0x9
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF189
	.byte	0x1
	.byte	0x4c
	.byte	0x14
	.long	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x27
	.string	"rc"
	.byte	0x1
	.byte	0x4d
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"dir"
	.byte	0x1
	.byte	0x4f
	.byte	0x9
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF188
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.quad	.L3
	.uleb128 0x27
	.string	"err"
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
.LASF142:
	.string	"fts_cur"
.LASF13:
	.string	"__off_t"
.LASF9:
	.string	"__gid_t"
.LASF140:
	.string	"hash_table"
.LASF71:
	.string	"_IO_read_ptr"
.LASF121:
	.string	"locale_quoting_style"
.LASF83:
	.string	"_chain"
.LASF55:
	.string	"st_ctim"
.LASF120:
	.string	"escape_quoting_style"
.LASF126:
	.string	"quoting_style"
.LASF22:
	.string	"size_t"
.LASF144:
	.string	"fts_array"
.LASF179:
	.string	"scon"
.LASF89:
	.string	"_shortbuf"
.LASF114:
	.string	"shell_quoting_style"
.LASF141:
	.string	"cycle_check_state"
.LASF136:
	.string	"ir_back"
.LASF165:
	.string	"fts_fts"
.LASF175:
	.string	"path"
.LASF77:
	.string	"_IO_buf_base"
.LASF158:
	.string	"fts_link"
.LASF25:
	.string	"long long unsigned int"
.LASF164:
	.string	"fts_symfd"
.LASF137:
	.string	"ir_empty"
.LASF29:
	.string	"context_t"
.LASF92:
	.string	"_codecvt"
.LASF161:
	.string	"fts_pointer"
.LASF41:
	.string	"stat"
.LASF66:
	.string	"program_invocation_short_name"
.LASF26:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF125:
	.string	"quoting_style_vals"
.LASF150:
	.string	"fts_nitems"
.LASF166:
	.string	"fts_level"
.LASF17:
	.string	"__blkcnt_t"
.LASF11:
	.string	"__mode_t"
.LASF129:
	.string	"CAN_ALL_BUT_LAST"
.LASF113:
	.string	"literal_quoting_style"
.LASF84:
	.string	"_fileno"
.LASF72:
	.string	"_IO_read_end"
.LASF33:
	.string	"__timezone"
.LASF139:
	.string	"state"
.LASF58:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"_gl_cxxalias_dummy"
.LASF70:
	.string	"_flags"
.LASF93:
	.string	"_wide_data"
.LASF78:
	.string	"_IO_buf_end"
.LASF87:
	.string	"_cur_column"
.LASF181:
	.string	"scontext"
.LASF118:
	.string	"c_quoting_style"
.LASF102:
	.string	"_IO_codecvt"
.LASF188:
	.string	"quit"
.LASF149:
	.string	"fts_pathlen"
.LASF110:
	.string	"_sys_errlist"
.LASF163:
	.string	"fts_errno"
.LASF65:
	.string	"program_invocation_name"
.LASF86:
	.string	"_old_offset"
.LASF91:
	.string	"_offset"
.LASF189:
	.string	"tclass"
.LASF48:
	.string	"__pad0"
.LASF117:
	.string	"shell_escape_always_quoting_style"
.LASF147:
	.string	"fts_rfd"
.LASF36:
	.string	"timezone"
.LASF152:
	.string	"fts_options"
.LASF148:
	.string	"fts_cwd_fd"
.LASF52:
	.string	"st_blocks"
.LASF112:
	.string	"program_name"
.LASF46:
	.string	"st_uid"
.LASF101:
	.string	"_IO_marker"
.LASF104:
	.string	"stdin"
.LASF27:
	.string	"security_class_t"
.LASF2:
	.string	"unsigned int"
.LASF156:
	.string	"_ftsent"
.LASF95:
	.string	"_freeres_buf"
.LASF194:
	.string	"restorecon_private"
.LASF174:
	.string	"selabel_handle"
.LASF178:
	.string	"ftspath"
.LASF128:
	.string	"CAN_EXISTING"
.LASF3:
	.string	"long unsigned int"
.LASF75:
	.string	"_IO_write_ptr"
.LASF191:
	.string	"src/selinux.c"
.LASF107:
	.string	"sys_nerr"
.LASF190:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF123:
	.string	"custom_quoting_style"
.LASF1:
	.string	"short unsigned int"
.LASF67:
	.string	"Version"
.LASF79:
	.string	"_IO_save_base"
.LASF12:
	.string	"__nlink_t"
.LASF143:
	.string	"fts_child"
.LASF60:
	.string	"environ"
.LASF90:
	.string	"_lock"
.LASF85:
	.string	"_flags2"
.LASF97:
	.string	"_mode"
.LASF105:
	.string	"stdout"
.LASF50:
	.string	"st_size"
.LASF168:
	.string	"fts_info"
.LASF38:
	.string	"ptrdiff_t"
.LASF111:
	.string	"version_etc_copyright"
.LASF45:
	.string	"st_mode"
.LASF172:
	.string	"fts_name"
.LASF61:
	.string	"optarg"
.LASF24:
	.string	"tv_nsec"
.LASF159:
	.string	"fts_dirp"
.LASF37:
	.string	"getdate_err"
.LASF7:
	.string	"__dev_t"
.LASF62:
	.string	"optind"
.LASF18:
	.string	"__syscall_slong_t"
.LASF186:
	.string	"defaultcon"
.LASF130:
	.string	"CAN_MISSING"
.LASF76:
	.string	"_IO_write_end"
.LASF133:
	.string	"ir_data"
.LASF193:
	.string	"_IO_lock_t"
.LASF69:
	.string	"_IO_FILE"
.LASF16:
	.string	"__blksize_t"
.LASF135:
	.string	"ir_front"
.LASF151:
	.string	"fts_compar"
.LASF20:
	.string	"dev_t"
.LASF59:
	.string	"__environ"
.LASF32:
	.string	"__daylight"
.LASF195:
	.string	"computecon"
.LASF170:
	.string	"fts_instr"
.LASF108:
	.string	"sys_errlist"
.LASF82:
	.string	"_markers"
.LASF56:
	.string	"__glibc_reserved"
.LASF44:
	.string	"st_nlink"
.LASF119:
	.string	"c_maybe_quoting_style"
.LASF154:
	.string	"fts_cycle"
.LASF138:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF43:
	.string	"st_ino"
.LASF100:
	.string	"__dirstream"
.LASF145:
	.string	"fts_dev"
.LASF176:
	.string	"recurse"
.LASF5:
	.string	"short int"
.LASF51:
	.string	"st_blksize"
.LASF98:
	.string	"_unused2"
.LASF183:
	.string	"contype"
.LASF171:
	.string	"fts_statp"
.LASF169:
	.string	"fts_flags"
.LASF109:
	.string	"_sys_nerr"
.LASF40:
	.string	"timespec"
.LASF88:
	.string	"_vtable_offset"
.LASF34:
	.string	"tzname"
.LASF99:
	.string	"FILE"
.LASF68:
	.string	"exit_failure"
.LASF116:
	.string	"shell_escape_quoting_style"
.LASF157:
	.string	"fts_parent"
.LASF10:
	.string	"__ino_t"
.LASF124:
	.string	"quoting_style_args"
.LASF64:
	.string	"optopt"
.LASF35:
	.string	"daylight"
.LASF49:
	.string	"st_rdev"
.LASF39:
	.string	"long double"
.LASF19:
	.string	"char"
.LASF115:
	.string	"shell_always_quoting_style"
.LASF187:
	.string	"mode"
.LASF23:
	.string	"tv_sec"
.LASF122:
	.string	"clocale_quoting_style"
.LASF63:
	.string	"opterr"
.LASF132:
	.string	"I_ring"
.LASF8:
	.string	"__uid_t"
.LASF131:
	.string	"CAN_NOLINKS"
.LASF14:
	.string	"__off64_t"
.LASF185:
	.string	"restorecon"
.LASF73:
	.string	"_IO_read_base"
.LASF134:
	.string	"ir_default_val"
.LASF81:
	.string	"_IO_save_end"
.LASF57:
	.string	"_sys_siglist"
.LASF167:
	.string	"fts_namelen"
.LASF162:
	.string	"fts_accpath"
.LASF47:
	.string	"st_gid"
.LASF96:
	.string	"__pad5"
.LASF15:
	.string	"__time_t"
.LASF155:
	.string	"fts_fd_ring"
.LASF106:
	.string	"stderr"
.LASF53:
	.string	"st_atim"
.LASF127:
	.string	"canonicalize_mode_t"
.LASF153:
	.string	"fts_leaf_optimization_works_ht"
.LASF146:
	.string	"fts_path"
.LASF192:
	.string	"/root/coreutils"
.LASF173:
	.string	"FTSENT"
.LASF21:
	.string	"mode_t"
.LASF184:
	.string	"constr"
.LASF80:
	.string	"_IO_backup_base"
.LASF54:
	.string	"st_mtim"
.LASF182:
	.string	"tcontext"
.LASF180:
	.string	"tcon"
.LASF177:
	.string	"newpath"
.LASF94:
	.string	"_freeres_list"
.LASF42:
	.string	"st_dev"
.LASF103:
	.string	"_IO_wide_data"
.LASF160:
	.string	"fts_number"
.LASF31:
	.string	"__tzname"
.LASF28:
	.string	"context_s_t"
.LASF74:
	.string	"_IO_write_base"
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
