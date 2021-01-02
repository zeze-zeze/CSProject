	.file	"tee.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a"
.LC1:
	.string	"w"
.LC2:
	.string	"standard output"
.LC3:
	.string	"%s"
.LC4:
	.string	"read error"
	.text
	.p2align 4
	.type	tee_files, @function
tee_files:
.LVL0:
.LFB141:
	.file 1 "src/tee.c"
	.loc 1 185 1 view -0
	.cfi_startproc
	.loc 1 185 1 is_stmt 0 view .LVU1
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$4096, %rsp
	.cfi_def_cfa_offset 8248
	orq	$0, (%rsp)
	subq	$72, %rsp
	.cfi_def_cfa_offset 8320
	.loc 1 195 6 view .LVU2
	leaq	.LC0(%rip), %r13
	.loc 1 185 1 view .LVU3
	movl	%edi, 20(%rsp)
	movl	%edi, %ebx
	.loc 1 199 3 view .LVU4
	movq	stdin(%rip), %rdi
.LVL1:
	.loc 1 185 1 view .LVU5
	movq	%rsi, 40(%rsp)
	.loc 1 199 3 view .LVU6
	movl	$2, %esi
.LVL2:
	.loc 1 185 1 view .LVU7
	movq	%fs:40, %rax
	movq	%rax, 8248(%rsp)
	xorl	%eax, %eax
	.loc 1 186 3 is_stmt 1 view .LVU8
.LVL3:
	.loc 1 187 3 view .LVU9
	.loc 1 188 3 view .LVU10
	.loc 1 189 3 view .LVU11
	.loc 1 190 3 view .LVU12
	.loc 1 191 3 view .LVU13
	.loc 1 192 3 view .LVU14
	.loc 1 195 6 is_stmt 0 view .LVU15
	cmpb	$0, append(%rip)
	leaq	.LC1(%rip), %rax
	cmove	%rax, %r13
.LVL4:
	.loc 1 197 3 is_stmt 1 view .LVU16
	.file 2 "./lib/xbinary-io.h"
	.loc 2 42 3 view .LVU17
	.file 3 "./lib/binary-io.h"
	.loc 3 68 3 view .LVU18
	.loc 3 52 3 view .LVU19
	.loc 1 198 3 view .LVU20
	.loc 2 42 3 view .LVU21
	.loc 3 68 3 view .LVU22
	.loc 3 52 3 view .LVU23
	.loc 1 199 3 view .LVU24
	call	fadvise@PLT
.LVL5:
	.loc 1 204 3 view .LVU25
	.loc 1 204 34 is_stmt 0 view .LVU26
	leal	1(%rbx), %edi
	.loc 1 204 17 view .LVU27
	movslq	%edi, %rdi
.LVL6:
.LBB44:
.LBI44:
	.file 4 "./lib/xalloc.h"
	.loc 4 99 1 is_stmt 1 view .LVU28
.LBB45:
	.loc 4 101 3 view .LVU29
	.loc 4 101 7 is_stmt 0 view .LVU30
	movq	%rdi, %rax
	shrq	$61, %rax
	setne	%al
	salq	$3, %rdi
.LVL7:
	.loc 4 101 7 view .LVU31
	js	.L59
	movzbl	%al, %eax
	.loc 4 101 6 view .LVU32
	testq	%rax, %rax
	jne	.L59
	.loc 4 103 3 is_stmt 1 view .LVU33
	.loc 4 103 10 is_stmt 0 view .LVU34
	call	xmalloc@PLT
.LVL8:
.LBE45:
.LBE44:
	.loc 1 205 8 view .LVU35
	movq	40(%rsp), %rbx
.LVL9:
	.loc 1 207 24 view .LVU36
	movl	$5, %edx
	xorl	%edi, %edi
.LBB48:
.LBB46:
	.loc 4 103 10 view .LVU37
	movq	%rax, 24(%rsp)
.LVL10:
	.loc 4 103 10 view .LVU38
	movq	%rax, %r14
.LVL11:
	.loc 4 103 10 view .LVU39
.LBE46:
.LBE48:
	.loc 1 205 3 is_stmt 1 view .LVU40
	.loc 1 207 24 is_stmt 0 view .LVU41
	leaq	.LC2(%rip), %rsi
	.loc 1 205 8 view .LVU42
	leaq	-8(%rbx), %rax
.LVL12:
	.loc 1 205 8 view .LVU43
	movq	%rax, 32(%rsp)
.LVL13:
	.loc 1 206 3 is_stmt 1 view .LVU44
	.loc 1 206 18 is_stmt 0 view .LVU45
	movq	stdout(%rip), %rax
.LVL14:
	.loc 1 206 18 view .LVU46
	movq	%rax, (%r14)
	.loc 1 207 3 is_stmt 1 view .LVU47
	.loc 1 207 24 is_stmt 0 view .LVU48
	call	dcgettext@PLT
.LVL15:
	.file 5 "src/system.h"
	.loc 5 700 3 is_stmt 1 view .LVU49
	.loc 1 208 3 is_stmt 0 view .LVU50
	movq	stdout(%rip), %rdi
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.loc 1 207 12 view .LVU51
	movq	%rax, -8(%rbx)
	.loc 1 208 3 is_stmt 1 view .LVU52
	movl	$2, %edx
	call	setvbuf@PLT
.LVL16:
	.loc 1 209 3 view .LVU53
	.loc 1 211 3 view .LVU54
	.loc 1 211 15 view .LVU55
	.loc 1 211 3 is_stmt 0 view .LVU56
	movl	20(%rsp), %eax
	testl	%eax, %eax
	jle	.L31
	subl	$1, %eax
	movq	%rbx, %rbp
	leaq	8(%r14), %r12
	.loc 1 191 8 view .LVU57
	movb	$1, 16(%rsp)
	leaq	8(%rbx,%rax,8), %r14
.LVL17:
	.loc 1 217 11 view .LVU58
	leaq	.LC3(%rip), %r15
	.loc 1 209 12 view .LVU59
	movl	$1, %ebx
	jmp	.L10
.LVL18:
	.p2align 4,,10
	.p2align 3
.L8:
	.loc 1 224 11 is_stmt 1 view .LVU60
	xorl	%ecx, %ecx
	movl	$2, %edx
	xorl	%esi, %esi
	addq	$8, %rbp
	call	setvbuf@PLT
.LVL19:
	.loc 1 225 11 view .LVU61
	.loc 1 225 20 is_stmt 0 view .LVU62
	addq	$1, %rbx
.LVL20:
	.loc 1 211 28 is_stmt 1 view .LVU63
	.loc 1 211 15 view .LVU64
	addq	$8, %r12
	.loc 1 211 3 is_stmt 0 view .LVU65
	cmpq	%rbp, %r14
	je	.L64
.LVL21:
.L10:
	.loc 1 214 7 is_stmt 1 view .LVU66
	.loc 1 214 24 is_stmt 0 view .LVU67
	movq	0(%rbp), %rdi
	movq	%r13, %rsi
	call	fopen_safer@PLT
.LVL22:
	.loc 1 214 22 view .LVU68
	movq	%rax, (%r12)
	.loc 1 215 7 is_stmt 1 view .LVU69
	.loc 1 214 24 is_stmt 0 view .LVU70
	movq	%rax, %rdi
	.loc 1 215 10 view .LVU71
	testq	%rax, %rax
	jne	.L8
	.loc 1 217 11 is_stmt 1 view .LVU72
	movq	0(%rbp), %rdx
	movl	$3, %esi
	call	quotearg_n_style_colon@PLT
.LVL23:
	movq	%rax, 8(%rsp)
	.loc 1 219 18 is_stmt 0 view .LVU73
	call	__errno_location@PLT
.LVL24:
	.loc 1 217 11 view .LVU74
	xorl	%edi, %edi
	movq	8(%rsp), %rcx
	movq	%r15, %rdx
	.loc 1 219 18 view .LVU75
	movq	%rax, %r8
	.loc 1 218 18 view .LVU76
	movl	output_error(%rip), %eax
	.loc 1 217 11 view .LVU77
	movl	(%r8), %esi
	.loc 1 218 18 view .LVU78
	subl	$3, %eax
	.loc 1 217 11 view .LVU79
	cmpl	$1, %eax
	setbe	%dil
	xorl	%eax, %eax
	addq	$8, %rbp
	addq	$8, %r12
	call	error@PLT
.LVL25:
	.loc 1 220 11 is_stmt 1 view .LVU80
	.loc 1 220 14 is_stmt 0 view .LVU81
	movb	$0, 16(%rsp)
.LVL26:
	.loc 1 211 28 is_stmt 1 view .LVU82
	.loc 1 211 15 view .LVU83
	.loc 1 211 3 is_stmt 0 view .LVU84
	cmpq	%rbp, %r14
	jne	.L10
.L64:
	.loc 1 229 9 is_stmt 1 view .LVU85
	testq	%rbx, %rbx
	je	.L11
.LVL27:
.L7:
	.loc 1 229 9 is_stmt 0 view .LVU86
	movl	20(%rsp), %eax
	movq	40(%rsp), %rcx
	leaq	48(%rsp), %r13
.LVL28:
	.loc 1 229 9 view .LVU87
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L23:
.LVL29:
	.loc 1 231 7 is_stmt 1 view .LVU88
.LBB49:
.LBI49:
	.file 6 "/usr/include/x86_64-linux-gnu/bits/unistd.h"
	.loc 6 34 1 view .LVU89
.LBB50:
	.loc 6 36 3 view .LVU90
	.loc 6 38 7 view .LVU91
	.loc 6 41 7 view .LVU92
	.loc 6 44 3 view .LVU93
	.loc 6 44 10 is_stmt 0 view .LVU94
	movl	$8192, %edx
	movq	%r13, %rsi
	xorl	%edi, %edi
	call	read@PLT
.LVL30:
	movq	%rax, %rbp
.LVL31:
	.loc 6 44 10 view .LVU95
.LBE50:
.LBE49:
	.loc 1 232 7 is_stmt 1 view .LVU96
	.loc 1 232 10 is_stmt 0 view .LVU97
	testq	%rax, %rax
	jns	.L12
	.loc 1 232 29 discriminator 1 view .LVU98
	call	__errno_location@PLT
.LVL32:
	.loc 1 232 26 discriminator 1 view .LVU99
	cmpl	$4, (%rax)
	je	.L13
.L14:
	.loc 1 261 3 is_stmt 1 view .LVU100
	.loc 1 261 6 is_stmt 0 view .LVU101
	cmpq	$-1, %rbp
	je	.L65
.LVL33:
.L15:
	.loc 1 268 15 is_stmt 1 discriminator 1 view .LVU102
	.loc 1 268 3 is_stmt 0 discriminator 1 view .LVU103
	movl	20(%rsp), %eax
	testl	%eax, %eax
	jle	.L24
.LVL34:
.L11:
	.loc 1 271 9 view .LVU104
	movq	24(%rsp), %r12
	movl	20(%rsp), %r13d
	.loc 1 264 10 view .LVU105
	movl	$1, %ebx
.LVL35:
	.loc 1 271 9 view .LVU106
	leaq	.LC3(%rip), %rbp
	movq	40(%rsp), %r14
	jmp	.L26
.LVL36:
	.p2align 4,,10
	.p2align 3
.L25:
	.loc 1 268 28 is_stmt 1 discriminator 2 view .LVU107
	.loc 1 268 15 discriminator 2 view .LVU108
	addq	$1, %rbx
.LVL37:
	.loc 1 268 3 is_stmt 0 discriminator 2 view .LVU109
	cmpl	%ebx, %r13d
	jl	.L24
.LVL38:
.L26:
	.loc 1 269 5 is_stmt 1 view .LVU110
	.loc 1 269 20 is_stmt 0 view .LVU111
	movq	(%r12,%rbx,8), %rdi
	.loc 1 269 8 view .LVU112
	testq	%rdi, %rdi
	je	.L25
	.loc 1 269 27 discriminator 1 view .LVU113
	call	rpl_fclose@PLT
.LVL39:
	.loc 1 269 24 discriminator 1 view .LVU114
	testl	%eax, %eax
	je	.L25
	.loc 1 271 9 is_stmt 1 view .LVU115
	movq	-8(%r14,%rbx,8), %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	addq	$1, %rbx
.LVL40:
	.loc 1 271 9 is_stmt 0 view .LVU116
	call	quotearg_n_style_colon@PLT
.LVL41:
	movq	%rax, %r15
	.loc 1 271 19 view .LVU117
	call	__errno_location@PLT
.LVL42:
	.loc 1 271 9 view .LVU118
	movq	%r15, %rcx
	movq	%rbp, %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL43:
	.loc 1 272 9 is_stmt 1 view .LVU119
	.loc 1 272 12 is_stmt 0 view .LVU120
	movb	$0, 16(%rsp)
.LVL44:
	.loc 1 268 28 is_stmt 1 view .LVU121
	.loc 1 268 15 view .LVU122
	.loc 1 268 3 is_stmt 0 view .LVU123
	cmpl	%ebx, %r13d
	jge	.L26
	.p2align 4,,10
	.p2align 3
.L24:
	.loc 1 275 3 is_stmt 1 view .LVU124
	movq	24(%rsp), %rdi
	call	free@PLT
.LVL45:
	.loc 1 277 3 view .LVU125
	.loc 1 278 1 is_stmt 0 view .LVU126
	movq	8248(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L66
	movzbl	16(%rsp), %eax
	addq	$8264, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL46:
	.p2align 4,,10
	.p2align 3
.L13:
	.cfi_restore_state
	.loc 1 229 9 is_stmt 1 view .LVU127
	testq	%rbx, %rbx
	jne	.L23
	.loc 1 229 9 is_stmt 0 view .LVU128
	jmp	.L14
.LVL47:
	.p2align 4,,10
	.p2align 3
.L12:
	.loc 1 234 7 is_stmt 1 view .LVU129
	.loc 1 234 10 is_stmt 0 view .LVU130
	je	.L15
.LVL48:
	.loc 1 239 19 is_stmt 1 view .LVU131
	.loc 1 239 7 is_stmt 0 view .LVU132
	movl	20(%rsp), %edx
	testl	%edx, %edx
	js	.L13
	movq	24(%rsp), %r15
	movq	32(%rsp), %r14
	jmp	.L22
.LVL49:
	.p2align 4,,10
	.p2align 3
.L17:
.LBB51:
	.loc 1 246 13 is_stmt 1 view .LVU133
	.loc 1 246 16 is_stmt 0 view .LVU134
	cmpq	%rax, %r12
	jne	.L20
	.loc 1 247 15 view .LVU135
	movq	%r12, %rdi
	movl	%r9d, 16(%rsp)
.LVL50:
	.loc 1 247 15 is_stmt 1 view .LVU136
	call	clearerr_unlocked@PLT
.LVL51:
	.loc 1 248 13 view .LVU137
	movl	16(%rsp), %r9d
.LVL52:
.L20:
	.loc 1 250 17 is_stmt 0 view .LVU138
	movq	(%r14), %rdx
	xorl	%edi, %edi
	movl	$3, %esi
	movl	%r9d, 16(%rsp)
	.loc 1 250 17 is_stmt 1 view .LVU139
	call	quotearg_n_style_colon@PLT
.LVL53:
	movl	16(%rsp), %r9d
	xorl	%edi, %edi
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	.loc 1 251 24 is_stmt 0 view .LVU140
	movl	output_error(%rip), %eax
	.loc 1 250 17 view .LVU141
	movl	%r9d, %esi
	.loc 1 251 24 view .LVU142
	subl	$3, %eax
	.loc 1 250 17 view .LVU143
	cmpl	$1, %eax
	setbe	%dil
	xorl	%eax, %eax
	call	error@PLT
.LVL54:
	.loc 1 254 13 is_stmt 1 view .LVU144
	.loc 1 254 28 is_stmt 0 view .LVU145
	movq	$0, (%r15)
	.loc 1 255 13 is_stmt 1 view .LVU146
	.loc 1 256 18 is_stmt 0 view .LVU147
	movb	$0, 16(%rsp)
.LVL55:
.L21:
	.loc 1 257 13 is_stmt 1 view .LVU148
	.loc 1 257 22 is_stmt 0 view .LVU149
	subq	$1, %rbx
.LVL56:
.L16:
	.loc 1 257 22 view .LVU150
.LBE51:
	.loc 1 239 32 is_stmt 1 discriminator 2 view .LVU151
	.loc 1 239 19 discriminator 2 view .LVU152
	addq	$8, %r15
	addq	$8, %r14
	.loc 1 239 7 is_stmt 0 discriminator 2 view .LVU153
	cmpq	8(%rsp), %r14
	je	.L13
.L22:
	.loc 1 240 9 is_stmt 1 view .LVU154
	.loc 1 240 24 is_stmt 0 view .LVU155
	movq	(%r15), %r12
	.loc 1 240 12 view .LVU156
	testq	%r12, %r12
	je	.L16
	.loc 1 241 16 view .LVU157
	movq	%r12, %rcx
	movl	$1, %edx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	fwrite_unlocked@PLT
.LVL57:
	.loc 1 241 13 view .LVU158
	cmpq	$1, %rax
	je	.L16
.LBB52:
	.loc 1 243 13 is_stmt 1 view .LVU159
	.loc 1 243 27 is_stmt 0 view .LVU160
	call	__errno_location@PLT
.LVL58:
	.loc 1 243 17 view .LVU161
	movl	(%rax), %r9d
.LVL59:
	.loc 1 244 13 is_stmt 1 view .LVU162
	movq	stdout(%rip), %rax
	.loc 1 244 40 is_stmt 0 view .LVU163
	cmpl	$32, %r9d
	jne	.L17
	.loc 1 245 43 discriminator 2 view .LVU164
	movl	output_error(%rip), %edx
	andl	$-3, %edx
	.loc 1 244 40 discriminator 2 view .LVU165
	cmpl	$1, %edx
	je	.L17
.LVL60:
	.loc 1 246 13 is_stmt 1 view .LVU166
	.loc 1 246 16 is_stmt 0 view .LVU167
	cmpq	%rax, %r12
	je	.L67
.LVL61:
.L19:
	.loc 1 254 13 is_stmt 1 view .LVU168
	.loc 1 254 28 is_stmt 0 view .LVU169
	movq	$0, (%r15)
	.loc 1 255 13 is_stmt 1 view .LVU170
	jmp	.L21
.LVL62:
.L65:
	.loc 1 255 13 is_stmt 0 view .LVU171
.LBE52:
	.loc 1 263 7 is_stmt 1 view .LVU172
	.loc 1 263 24 is_stmt 0 view .LVU173
	movl	$5, %edx
	leaq	.LC4(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL63:
	movq	%rax, %r12
	.loc 1 263 17 view .LVU174
	call	__errno_location@PLT
.LVL64:
	.loc 1 263 7 view .LVU175
	movq	%r12, %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL65:
	.loc 1 264 7 is_stmt 1 view .LVU176
	.loc 1 264 10 is_stmt 0 view .LVU177
	movb	$0, 16(%rsp)
	jmp	.L15
.LVL66:
.L31:
	.loc 1 191 8 view .LVU178
	movb	$1, 16(%rsp)
	.loc 1 209 12 view .LVU179
	movl	$1, %ebx
	jmp	.L7
.LVL67:
.L67:
.LBB53:
	.loc 1 247 15 is_stmt 1 view .LVU180
	movq	%r12, %rdi
	call	clearerr_unlocked@PLT
.LVL68:
	.loc 1 248 13 view .LVU181
	jmp	.L19
.LVL69:
.L59:
	.loc 1 248 13 is_stmt 0 view .LVU182
.LBE53:
.LBB54:
.LBB47:
	.loc 4 102 5 is_stmt 1 view .LVU183
	call	xalloc_die@PLT
.LVL70:
.L66:
	.loc 4 102 5 is_stmt 0 view .LVU184
.LBE47:
.LBE54:
	.loc 1 278 1 view .LVU185
	call	__stack_chk_fail@PLT
.LVL71:
	.cfi_endproc
.LFE141:
	.size	tee_files, .-tee_files
	.section	.rodata.str1.1
.LC5:
	.string	"tee"
.LC6:
	.string	" invocation"
.LC7:
	.string	""
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC9:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC10:
	.string	"Copy standard input to each FILE, and also to standard output.\n\n  -a, --append              append to the given FILEs, do not overwrite\n  -i, --ignore-interrupts   ignore interrupt signals\n"
	.align 8
.LC11:
	.string	"  -p                        diagnose errors writing to non pipes\n      --output-error[=MODE]   set behavior on write error.  See MODE below\n"
	.align 8
.LC12:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC13:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC14:
	.ascii	"\nMODE determines behavior with write errors on the outputs:"
	.ascii	"\n  'warn'         diagnose errors writing to any output\n  "
	.ascii	"'warn-nopipe'  diagnose errors writing to any output not a p"
	.ascii	"ipe\n  'exit'         exit on error writing to any output\n "
	.ascii	" 'exit-nopipe'  exit"
	.string	" on error writing to any output not a pipe\nThe default MODE for the -p option is 'warn-nopipe'.\nThe default operation when --output-error is not specified, is to\nexit immediately on error writing to a pipe, and diagnose errors\nwriting to non pipe outputs.\n"
	.section	.rodata.str1.1
.LC15:
	.string	"["
.LC16:
	.string	"test invocation"
.LC17:
	.string	"coreutils"
.LC18:
	.string	"Multi-call invocation"
.LC19:
	.string	"sha224sum"
.LC20:
	.string	"sha2 utilities"
.LC21:
	.string	"sha256sum"
.LC22:
	.string	"sha384sum"
.LC23:
	.string	"sha512sum"
.LC24:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC26:
	.string	"GNU coreutils"
.LC27:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC29:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL72:
.LFB139:
	.loc 1 82 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 82 1 is_stmt 0 view .LVU187
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 84 5 view .LVU188
	movl	$5, %edx
	.loc 1 82 1 view .LVU189
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$136, %rsp
	.cfi_def_cfa_offset 176
	movq	program_name(%rip), %r12
	.loc 1 82 1 view .LVU190
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 83 3 is_stmt 1 view .LVU191
	.loc 1 83 6 is_stmt 0 view .LVU192
	testl	%edi, %edi
	je	.L69
	.loc 1 84 5 is_stmt 1 view .LVU193
	.loc 1 84 5 view .LVU194
	leaq	.LC8(%rip), %rsi
	xorl	%edi, %edi
.LVL73:
	.loc 1 84 5 is_stmt 0 view .LVU195
	call	dcgettext@PLT
.LVL74:
.LBB67:
.LBB68:
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 7 100 10 view .LVU196
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE68:
.LBE67:
	.loc 1 84 5 view .LVU197
	movq	%rax, %rdx
.LVL75:
.LBB70:
.LBI67:
	.loc 7 98 1 is_stmt 1 view .LVU198
.LBB69:
	.loc 7 100 3 view .LVU199
	.loc 7 100 10 is_stmt 0 view .LVU200
	xorl	%eax, %eax
.LVL76:
	.loc 7 100 10 view .LVU201
	call	__fprintf_chk@PLT
.LVL77:
.L70:
	.loc 7 100 10 view .LVU202
.LBE69:
.LBE70:
	.loc 1 114 3 is_stmt 1 view .LVU203
	movl	%ebp, %edi
	call	exit@PLT
.LVL78:
.L69:
	.loc 1 87 7 view .LVU204
	.loc 1 87 15 is_stmt 0 view .LVU205
	leaq	.LC9(%rip), %rsi
	xorl	%edi, %edi
.LVL79:
.LBB71:
.LBB72:
	.loc 5 636 67 view .LVU206
	leaq	.LC21(%rip), %rbx
.LBE72:
.LBE71:
	.loc 1 87 15 view .LVU207
	call	dcgettext@PLT
.LVL80:
.LBB98:
.LBB99:
	.loc 7 107 10 view .LVU208
	movq	%r12, %rdx
	movl	$1, %edi
.LBE99:
.LBE98:
	.loc 1 87 15 view .LVU209
	movq	%rax, %rsi
.LVL81:
.LBB101:
.LBI98:
	.loc 7 105 1 is_stmt 1 view .LVU210
.LBB100:
	.loc 7 107 3 view .LVU211
	.loc 7 107 10 is_stmt 0 view .LVU212
	xorl	%eax, %eax
.LVL82:
	.loc 7 107 10 view .LVU213
	call	__printf_chk@PLT
.LVL83:
	.loc 7 107 10 view .LVU214
.LBE100:
.LBE101:
	.loc 1 88 7 is_stmt 1 view .LVU215
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC10(%rip), %rsi
	call	dcgettext@PLT
.LVL84:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL85:
	.loc 1 94 7 view .LVU216
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC11(%rip), %rsi
	call	dcgettext@PLT
.LVL86:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL87:
	.loc 1 98 7 view .LVU217
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC12(%rip), %rsi
	call	dcgettext@PLT
.LVL88:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL89:
	.loc 1 99 7 view .LVU218
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC13(%rip), %rsi
	call	dcgettext@PLT
.LVL90:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL91:
	.loc 1 100 7 view .LVU219
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC14(%rip), %rsi
	call	dcgettext@PLT
.LVL92:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL93:
	.loc 1 112 7 view .LVU220
.LBB102:
.LBI71:
	.loc 5 634 1 view .LVU221
.LBB97:
	.loc 5 636 3 view .LVU222
	.loc 5 636 67 is_stmt 0 view .LVU223
	leaq	.LC15(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC22(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC16(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC17(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC18(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC19(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 5 646 3 is_stmt 1 view .LVU224
.LVL94:
	.loc 5 647 3 view .LVU225
	.loc 5 649 3 view .LVU226
	.loc 5 649 9 view .LVU227
	.loc 5 636 67 is_stmt 0 view .LVU228
	movq	%rax, 32(%rsp)
	leaq	.LC20(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC23(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC5(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 5 647 25 view .LVU229
	movq	%rsp, %rax
.LVL95:
	.p2align 4,,10
	.p2align 3
.L72:
	.loc 5 650 5 is_stmt 1 view .LVU230
	.loc 5 649 18 is_stmt 0 view .LVU231
	movq	16(%rax), %rdi
	.loc 5 650 13 view .LVU232
	addq	$16, %rax
.LVL96:
	.loc 5 649 9 is_stmt 1 view .LVU233
	testq	%rdi, %rdi
	je	.L71
	.loc 5 649 33 is_stmt 0 view .LVU234
	movl	$4, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 5 649 28 view .LVU235
	testb	%dl, %dl
	jne	.L72
.L71:
	.loc 5 652 3 is_stmt 1 view .LVU236
	.loc 5 652 15 is_stmt 0 view .LVU237
	movq	8(%rax), %r12
	.loc 5 655 11 view .LVU238
	movl	$5, %edx
	leaq	.LC24(%rip), %rsi
	xorl	%edi, %edi
	.loc 5 652 6 view .LVU239
	testq	%r12, %r12
	je	.L73
	.loc 5 653 5 is_stmt 1 view .LVU240
.LVL97:
	.loc 5 655 3 view .LVU241
	.loc 5 655 11 is_stmt 0 view .LVU242
	call	dcgettext@PLT
.LVL98:
.LBB73:
.LBB74:
	.loc 7 107 10 view .LVU243
	leaq	.LC25(%rip), %rcx
	movl	$1, %edi
	leaq	.LC26(%rip), %rdx
.LBE74:
.LBE73:
	.loc 5 655 11 view .LVU244
	movq	%rax, %rsi
.LVL99:
.LBB78:
.LBI73:
	.loc 7 105 1 is_stmt 1 view .LVU245
.LBB75:
	.loc 7 107 3 view .LVU246
	.loc 7 107 10 is_stmt 0 view .LVU247
	xorl	%eax, %eax
.LVL100:
	.loc 7 107 10 view .LVU248
	call	__printf_chk@PLT
.LVL101:
	.loc 7 107 10 view .LVU249
.LBE75:
.LBE78:
	.loc 5 659 3 is_stmt 1 view .LVU250
	.loc 5 659 29 is_stmt 0 view .LVU251
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL102:
	movq	%rax, %rdi
.LVL103:
	.loc 5 660 3 is_stmt 1 view .LVU252
	.loc 5 660 6 is_stmt 0 view .LVU253
	testq	%rax, %rax
	je	.L74
	.loc 5 660 22 view .LVU254
	movl	$3, %edx
	leaq	.LC27(%rip), %rsi
	call	strncmp@PLT
.LVL104:
	.loc 5 660 19 view .LVU255
	testl	%eax, %eax
	jne	.L77
.LVL105:
.L74:
	.loc 5 669 3 is_stmt 1 view .LVU256
	.loc 5 669 11 is_stmt 0 view .LVU257
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	call	dcgettext@PLT
.LVL106:
.LBB79:
.LBB80:
	.loc 7 107 10 view .LVU258
	leaq	.LC5(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	$1, %edi
.LBE80:
.LBE79:
	.loc 5 669 11 view .LVU259
	movq	%rax, %rsi
.LVL107:
.LBB86:
.LBI79:
	.loc 7 105 1 is_stmt 1 view .LVU260
.LBB81:
	.loc 7 107 3 view .LVU261
	.loc 7 107 10 is_stmt 0 view .LVU262
	xorl	%eax, %eax
.LVL108:
	.loc 7 107 10 view .LVU263
.LBE81:
.LBE86:
	.loc 5 671 3 view .LVU264
	leaq	.LC6(%rip), %r13
.LBB87:
.LBB82:
	.loc 7 107 10 view .LVU265
	call	__printf_chk@PLT
.LVL109:
	.loc 7 107 10 view .LVU266
.LBE82:
.LBE87:
	.loc 5 671 3 is_stmt 1 view .LVU267
	cmpq	%rbx, %r12
	leaq	.LC7(%rip), %rcx
	cmovne	%rcx, %r13
.L75:
	.loc 5 671 11 is_stmt 0 view .LVU268
	xorl	%edi, %edi
	leaq	.LC30(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL110:
.LBB88:
.LBB89:
	.loc 7 107 10 view .LVU269
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE89:
.LBE88:
	.loc 5 671 11 view .LVU270
	movq	%rax, %rsi
.LVL111:
.LBB91:
.LBI88:
	.loc 7 105 1 is_stmt 1 view .LVU271
.LBB90:
	.loc 7 107 3 view .LVU272
	.loc 7 107 10 is_stmt 0 view .LVU273
	xorl	%eax, %eax
.LVL112:
	.loc 7 107 10 view .LVU274
	call	__printf_chk@PLT
.LVL113:
	.loc 7 107 10 view .LVU275
.LBE90:
.LBE91:
	.loc 5 673 1 view .LVU276
	jmp	.L70
.LVL114:
.L73:
	.loc 5 655 3 is_stmt 1 view .LVU277
	.loc 5 655 11 is_stmt 0 view .LVU278
	call	dcgettext@PLT
.LVL115:
.LBB92:
.LBB76:
	.loc 7 107 10 view .LVU279
	leaq	.LC25(%rip), %rcx
	movl	$1, %edi
	leaq	.LC26(%rip), %rdx
.LBE76:
.LBE92:
	.loc 5 655 11 view .LVU280
	movq	%rax, %rsi
.LVL116:
.LBB93:
	.loc 7 105 1 is_stmt 1 view .LVU281
.LBB77:
	.loc 7 107 3 view .LVU282
	.loc 7 107 10 is_stmt 0 view .LVU283
	xorl	%eax, %eax
.LVL117:
	.loc 7 107 10 view .LVU284
	call	__printf_chk@PLT
.LVL118:
	.loc 7 107 10 view .LVU285
.LBE77:
.LBE93:
	.loc 5 659 3 is_stmt 1 view .LVU286
	.loc 5 659 29 is_stmt 0 view .LVU287
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL119:
	movq	%rax, %rdi
.LVL120:
	.loc 5 660 3 is_stmt 1 view .LVU288
	.loc 5 660 6 is_stmt 0 view .LVU289
	testq	%rax, %rax
	je	.L76
	.loc 5 660 22 view .LVU290
	movl	$3, %edx
	leaq	.LC27(%rip), %rsi
	call	strncmp@PLT
.LVL121:
	.loc 5 660 19 view .LVU291
	testl	%eax, %eax
	jne	.L95
.L76:
	.loc 5 669 3 is_stmt 1 view .LVU292
	.loc 5 669 11 is_stmt 0 view .LVU293
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL122:
.LBB94:
.LBB83:
	.loc 7 107 10 view .LVU294
	leaq	.LC5(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	$1, %edi
.LBE83:
.LBE94:
	.loc 5 669 11 view .LVU295
	movq	%rax, %rsi
.LVL123:
.LBB95:
	.loc 7 105 1 is_stmt 1 view .LVU296
.LBB84:
	.loc 7 107 3 view .LVU297
	.loc 7 107 10 is_stmt 0 view .LVU298
	xorl	%eax, %eax
.LVL124:
	.loc 7 107 10 view .LVU299
.LBE84:
.LBE95:
	.loc 5 646 15 view .LVU300
	leaq	.LC5(%rip), %r12
.LBB96:
.LBB85:
	.loc 7 107 10 view .LVU301
	call	__printf_chk@PLT
.LVL125:
	.loc 7 107 10 view .LVU302
.LBE85:
.LBE96:
	.loc 5 671 3 is_stmt 1 view .LVU303
	leaq	.LC6(%rip), %r13
	jmp	.L75
.L95:
	.loc 5 646 15 is_stmt 0 view .LVU304
	leaq	.LC5(%rip), %r12
.LVL126:
.L77:
	.loc 5 666 7 is_stmt 1 view .LVU305
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC28(%rip), %rsi
	call	dcgettext@PLT
.LVL127:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL128:
	jmp	.L74
.LBE97:
.LBE102:
	.cfi_endproc
.LFE139:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC31:
	.string	"/usr/local/share/locale"
.LC32:
	.string	"--output-error"
.LC33:
	.string	"Richard M. Stallman"
.LC34:
	.string	"Mike Parker"
.LC35:
	.string	"David MacKenzie"
.LC36:
	.string	"aip"
.LC37:
	.string	"standard input"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL129:
.LFB140:
	.loc 1 119 1 view -0
	.cfi_startproc
	.loc 1 119 1 is_stmt 0 view .LVU307
	endbr64
	.loc 1 120 3 is_stmt 1 view .LVU308
	.loc 1 121 3 view .LVU309
	.loc 1 123 33 view .LVU310
	.loc 1 124 3 view .LVU311
	.loc 1 119 1 is_stmt 0 view .LVU312
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 134 18 view .LVU313
	leaq	long_options(%rip), %r12
	.loc 1 119 1 view .LVU314
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 124 3 view .LVU315
	movq	(%rsi), %rdi
.LVL130:
	.loc 1 119 1 view .LVU316
	movq	%rsi, %rbx
	.loc 1 124 3 view .LVU317
	call	set_program_name@PLT
.LVL131:
	.loc 1 125 3 is_stmt 1 view .LVU318
	leaq	.LC7(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL132:
	.loc 1 126 3 view .LVU319
	leaq	.LC31(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	bindtextdomain@PLT
.LVL133:
	.loc 1 127 3 view .LVU320
	leaq	.LC17(%rip), %rdi
	call	textdomain@PLT
.LVL134:
	.loc 1 129 3 view .LVU321
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL135:
	.loc 1 131 3 view .LVU322
	.loc 1 131 10 is_stmt 0 view .LVU323
	movb	$0, append(%rip)
	.loc 1 132 3 is_stmt 1 view .LVU324
	.loc 1 132 21 is_stmt 0 view .LVU325
	movb	$0, ignore_interrupts(%rip)
	.loc 1 134 3 is_stmt 1 view .LVU326
.L97:
	.loc 1 134 9 view .LVU327
	.loc 1 134 18 is_stmt 0 view .LVU328
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	leaq	.LC36(%rip), %rdx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	call	getopt_long@PLT
.LVL136:
	.loc 1 134 9 view .LVU329
	cmpl	$-1, %eax
	je	.L112
	.loc 1 136 7 is_stmt 1 view .LVU330
	cmpl	$97, %eax
	je	.L98
	jle	.L113
	cmpl	$105, %eax
	jne	.L114
	.loc 1 143 11 view .LVU331
	.loc 1 143 29 is_stmt 0 view .LVU332
	movb	$1, ignore_interrupts(%rip)
	.loc 1 144 11 is_stmt 1 view .LVU333
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L113:
	.loc 1 136 7 is_stmt 0 view .LVU334
	cmpl	$-131, %eax
	jne	.L115
	.loc 1 154 9 is_stmt 1 view .LVU335
	.loc 1 154 30 view .LVU336
	.loc 1 156 9 view .LVU337
	leaq	.LC35(%rip), %rax
.LVL137:
	.loc 1 156 9 is_stmt 0 view .LVU338
	pushq	$0
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	stdout(%rip), %rdi
	leaq	.LC33(%rip), %r9
	pushq	%rax
	.cfi_def_cfa_offset 48
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
	leaq	.LC34(%rip), %r8
	leaq	.LC26(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	call	version_etc@PLT
.LVL138:
	.loc 1 156 9 is_stmt 1 view .LVU339
	xorl	%edi, %edi
	call	exit@PLT
.LVL139:
	.p2align 4,,10
	.p2align 3
.L114:
	.cfi_restore_state
	.loc 1 136 7 is_stmt 0 view .LVU340
	cmpl	$112, %eax
	jne	.L102
	.loc 1 147 11 is_stmt 1 view .LVU341
	.loc 1 147 15 is_stmt 0 view .LVU342
	movq	optarg(%rip), %rsi
	.loc 1 147 14 view .LVU343
	testq	%rsi, %rsi
	je	.L106
	.loc 1 148 13 is_stmt 1 view .LVU344
	.loc 1 148 28 is_stmt 0 view .LVU345
	movq	argmatch_die(%rip), %r9
	movl	$4, %r8d
	leaq	output_error_types(%rip), %rcx
	leaq	output_error_args(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	call	__xargmatch_internal@PLT
.LVL140:
	.loc 1 148 28 view .LVU346
	movq	%rax, %r8
	leaq	output_error_types(%rip), %rax
	.loc 1 148 26 view .LVU347
	movl	(%rax,%r8,4), %eax
	movl	%eax, output_error(%rip)
	jmp	.L97
.LVL141:
.L115:
	.loc 1 136 7 view .LVU348
	cmpl	$-130, %eax
	jne	.L102
	.loc 1 154 9 is_stmt 1 view .LVU349
	xorl	%edi, %edi
	call	usage
.LVL142:
	.p2align 4,,10
	.p2align 3
.L98:
	.loc 1 139 11 view .LVU350
	.loc 1 139 18 is_stmt 0 view .LVU351
	movb	$1, append(%rip)
	.loc 1 140 11 is_stmt 1 view .LVU352
	jmp	.L97
.L106:
	.loc 1 151 13 view .LVU353
	.loc 1 151 26 is_stmt 0 view .LVU354
	movl	$2, output_error(%rip)
	jmp	.L97
.L112:
	.loc 1 163 3 is_stmt 1 view .LVU355
	.loc 1 163 6 is_stmt 0 view .LVU356
	cmpb	$0, ignore_interrupts(%rip)
	jne	.L116
.LVL143:
.L108:
	.loc 1 166 3 is_stmt 1 view .LVU357
	.loc 1 166 6 is_stmt 0 view .LVU358
	cmpl	$0, output_error(%rip)
	jne	.L117
.L109:
	.loc 1 172 3 is_stmt 1 view .LVU359
	.loc 1 172 39 is_stmt 0 view .LVU360
	movslq	optind(%rip), %rdx
	.loc 1 172 8 view .LVU361
	movl	%ebp, %edi
	subl	%edx, %edi
	leaq	(%rbx,%rdx,8), %rsi
	call	tee_files
.LVL144:
	.loc 1 173 7 view .LVU362
	xorl	%edi, %edi
	.loc 1 172 8 view .LVU363
	movl	%eax, %ebx
.LVL145:
	.loc 1 173 3 is_stmt 1 view .LVU364
	.loc 1 173 7 is_stmt 0 view .LVU365
	call	close@PLT
.LVL146:
	.loc 1 173 6 view .LVU366
	testl	%eax, %eax
	jne	.L118
	.loc 1 176 3 is_stmt 1 view .LVU367
	.loc 1 176 28 is_stmt 0 view .LVU368
	xorl	$1, %ebx
.LVL147:
	.loc 1 176 28 view .LVU369
	movzbl	%bl, %eax
	.loc 1 177 1 view .LVU370
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL148:
	.loc 1 177 1 view .LVU371
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL149:
.L116:
	.cfi_restore_state
	.loc 1 164 5 is_stmt 1 view .LVU372
	movl	$1, %esi
	movl	$2, %edi
	call	signal@PLT
.LVL150:
	.loc 1 164 5 is_stmt 0 view .LVU373
	jmp	.L108
.L117:
	.loc 1 167 5 is_stmt 1 view .LVU374
	movl	$1, %esi
	movl	$13, %edi
	call	signal@PLT
.LVL151:
	jmp	.L109
.LVL152:
.L102:
	.loc 1 156 9 view .LVU375
	.loc 1 156 57 view .LVU376
	.loc 1 159 11 view .LVU377
	movl	$1, %edi
	call	usage
.LVL153:
.L118:
.LBB103:
	.loc 1 174 5 view .LVU378
	movl	$5, %edx
	leaq	.LC37(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL154:
	movq	%rax, %r12
	call	__errno_location@PLT
.LVL155:
	movq	%r12, %rcx
	movl	$1, %edi
	leaq	.LC3(%rip), %rdx
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL156:
.LBE103:
	.cfi_endproc
.LFE140:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	output_error_types, @object
	.size	output_error_types, 16
output_error_types:
	.long	1
	.long	2
	.long	3
	.long	4
	.section	.rodata.str1.1
.LC38:
	.string	"warn"
.LC39:
	.string	"warn-nopipe"
.LC40:
	.string	"exit"
.LC41:
	.string	"exit-nopipe"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	output_error_args, @object
	.size	output_error_args, 40
output_error_args:
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	0
	.section	.rodata.str1.1
.LC42:
	.string	"append"
.LC43:
	.string	"ignore-interrupts"
.LC44:
	.string	"output-error"
.LC45:
	.string	"help"
.LC46:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	long_options, @object
	.size	long_options, 192
long_options:
	.quad	.LC42
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC43
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC44
	.long	2
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC45
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC46
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
	.local	output_error
	.comm	output_error,4,4
	.local	ignore_interrupts
	.comm	ignore_interrupts,1,1
	.local	append
	.comm	append,1,1
	.text
.Letext0:
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 12 "/usr/include/signal.h"
	.file 13 "./lib/sys/select.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/unistd.h"
	.file 18 "/usr/include/errno.h"
	.file 19 "src/version.h"
	.file 20 "./lib/exitfail.h"
	.file 21 "./lib/timespec.h"
	.file 22 "./lib/xalloc-oversized.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 24 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 25 "/usr/include/stdio.h"
	.file 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 27 "./lib/version-etc.h"
	.file 28 "./lib/progname.h"
	.file 29 "./lib/quotearg.h"
	.file 30 "./lib/quote.h"
	.file 31 "./lib/argmatch.h"
	.file 32 "./lib/error.h"
	.file 33 "./lib/fadvise.h"
	.file 34 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.file 35 "/usr/include/libintl.h"
	.file 36 "./lib/stdio-safer.h"
	.file 37 "./lib/stdio.h"
	.file 38 "/usr/include/stdlib.h"
	.file 39 "/usr/include/locale.h"
	.file 40 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1796
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF195
	.byte	0xc
	.long	.LASF196
	.long	.LASF197
	.long	.Ldebug_ranges0+0x200
	.quad	0
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
	.long	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF7
	.byte	0x8
	.byte	0x98
	.byte	0x19
	.long	0x5f
	.uleb128 0x5
	.long	.LASF8
	.byte	0x8
	.byte	0x99
	.byte	0x1b
	.long	0x5f
	.uleb128 0x5
	.long	.LASF9
	.byte	0x8
	.byte	0xa0
	.byte	0x1a
	.long	0x5f
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x8
	.byte	0xc1
	.byte	0x1b
	.long	0x5f
	.uleb128 0x7
	.byte	0x8
	.long	0x9e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.long	0x9e
	.uleb128 0x5
	.long	.LASF12
	.byte	0x9
	.byte	0x6c
	.byte	0x13
	.long	0x8c
	.uleb128 0x5
	.long	.LASF13
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0x7e
	.uleb128 0x5
	.long	.LASF14
	.byte	0xb
	.byte	0xd1
	.byte	0x17
	.long	0x3e
	.uleb128 0x9
	.long	.LASF18
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x5
	.long	.LASF17
	.byte	0xc
	.byte	0x48
	.byte	0x10
	.long	0xf5
	.uleb128 0x7
	.byte	0x8
	.long	0xfb
	.uleb128 0xa
	.long	0x106
	.uleb128 0xb
	.long	0x53
	.byte	0
	.uleb128 0xc
	.uleb128 0x7
	.byte	0x8
	.long	0x106
	.uleb128 0xd
	.long	0x128
	.long	0x11d
	.uleb128 0xe
	.long	0x3e
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x10d
	.uleb128 0x7
	.byte	0x8
	.long	0xa5
	.uleb128 0x8
	.long	0x122
	.uleb128 0xf
	.long	0x122
	.uleb128 0x9
	.long	.LASF19
	.byte	0xc
	.value	0x11e
	.byte	0x1a
	.long	0x11d
	.uleb128 0x9
	.long	.LASF20
	.byte	0xc
	.value	0x11f
	.byte	0x1a
	.long	0x11d
	.uleb128 0x10
	.long	.LASF21
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF22
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x53
	.uleb128 0x10
	.long	.LASF23
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x53
	.uleb128 0x10
	.long	.LASF24
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x53
	.uleb128 0x11
	.long	.LASF46
	.byte	0x20
	.byte	0xf
	.byte	0x32
	.byte	0x8
	.long	0x1be
	.uleb128 0x12
	.long	.LASF25
	.byte	0xf
	.byte	0x34
	.byte	0xf
	.long	0x122
	.byte	0
	.uleb128 0x12
	.long	.LASF26
	.byte	0xf
	.byte	0x37
	.byte	0x7
	.long	0x53
	.byte	0x8
	.uleb128 0x12
	.long	.LASF27
	.byte	0xf
	.byte	0x38
	.byte	0x8
	.long	0x1c3
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0xf
	.byte	0x39
	.byte	0x7
	.long	0x53
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x17c
	.uleb128 0x7
	.byte	0x8
	.long	0x53
	.uleb128 0xd
	.long	0x98
	.long	0x1d9
	.uleb128 0xe
	.long	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF28
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x1c9
	.uleb128 0x10
	.long	.LASF29
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x53
	.uleb128 0x10
	.long	.LASF30
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x5f
	.uleb128 0x10
	.long	.LASF31
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x1c9
	.uleb128 0x10
	.long	.LASF32
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x53
	.uleb128 0x10
	.long	.LASF33
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x5f
	.uleb128 0x9
	.long	.LASF34
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x53
	.uleb128 0x5
	.long	.LASF35
	.byte	0xb
	.byte	0x8f
	.byte	0x1a
	.long	0x5f
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF36
	.uleb128 0x9
	.long	.LASF37
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x24e
	.uleb128 0x7
	.byte	0x8
	.long	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x24e
	.uleb128 0x10
	.long	.LASF39
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF40
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF41
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x122
	.uleb128 0x10
	.long	.LASF42
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x5a
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x15
	.byte	0x29
	.byte	0x6
	.long	0x2a9
	.uleb128 0x15
	.long	.LASF43
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x2be
	.uleb128 0x16
	.long	.LASF44
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.long	.LASF45
	.byte	0x16
	.byte	0x22
	.byte	0x13
	.long	0x22e
	.uleb128 0x11
	.long	.LASF47
	.byte	0xd8
	.byte	0x17
	.byte	0x31
	.byte	0x8
	.long	0x451
	.uleb128 0x12
	.long	.LASF48
	.byte	0x17
	.byte	0x33
	.byte	0x7
	.long	0x53
	.byte	0
	.uleb128 0x12
	.long	.LASF49
	.byte	0x17
	.byte	0x36
	.byte	0x9
	.long	0x98
	.byte	0x8
	.uleb128 0x12
	.long	.LASF50
	.byte	0x17
	.byte	0x37
	.byte	0x9
	.long	0x98
	.byte	0x10
	.uleb128 0x12
	.long	.LASF51
	.byte	0x17
	.byte	0x38
	.byte	0x9
	.long	0x98
	.byte	0x18
	.uleb128 0x12
	.long	.LASF52
	.byte	0x17
	.byte	0x39
	.byte	0x9
	.long	0x98
	.byte	0x20
	.uleb128 0x12
	.long	.LASF53
	.byte	0x17
	.byte	0x3a
	.byte	0x9
	.long	0x98
	.byte	0x28
	.uleb128 0x12
	.long	.LASF54
	.byte	0x17
	.byte	0x3b
	.byte	0x9
	.long	0x98
	.byte	0x30
	.uleb128 0x12
	.long	.LASF55
	.byte	0x17
	.byte	0x3c
	.byte	0x9
	.long	0x98
	.byte	0x38
	.uleb128 0x12
	.long	.LASF56
	.byte	0x17
	.byte	0x3d
	.byte	0x9
	.long	0x98
	.byte	0x40
	.uleb128 0x12
	.long	.LASF57
	.byte	0x17
	.byte	0x40
	.byte	0x9
	.long	0x98
	.byte	0x48
	.uleb128 0x12
	.long	.LASF58
	.byte	0x17
	.byte	0x41
	.byte	0x9
	.long	0x98
	.byte	0x50
	.uleb128 0x12
	.long	.LASF59
	.byte	0x17
	.byte	0x42
	.byte	0x9
	.long	0x98
	.byte	0x58
	.uleb128 0x12
	.long	.LASF60
	.byte	0x17
	.byte	0x44
	.byte	0x16
	.long	0x46a
	.byte	0x60
	.uleb128 0x12
	.long	.LASF61
	.byte	0x17
	.byte	0x46
	.byte	0x14
	.long	0x470
	.byte	0x68
	.uleb128 0x12
	.long	.LASF62
	.byte	0x17
	.byte	0x48
	.byte	0x7
	.long	0x53
	.byte	0x70
	.uleb128 0x12
	.long	.LASF63
	.byte	0x17
	.byte	0x49
	.byte	0x7
	.long	0x53
	.byte	0x74
	.uleb128 0x12
	.long	.LASF64
	.byte	0x17
	.byte	0x4a
	.byte	0xb
	.long	0x66
	.byte	0x78
	.uleb128 0x12
	.long	.LASF65
	.byte	0x17
	.byte	0x4d
	.byte	0x12
	.long	0x30
	.byte	0x80
	.uleb128 0x12
	.long	.LASF66
	.byte	0x17
	.byte	0x4e
	.byte	0xf
	.long	0x45
	.byte	0x82
	.uleb128 0x12
	.long	.LASF67
	.byte	0x17
	.byte	0x4f
	.byte	0x8
	.long	0x476
	.byte	0x83
	.uleb128 0x12
	.long	.LASF68
	.byte	0x17
	.byte	0x51
	.byte	0xf
	.long	0x486
	.byte	0x88
	.uleb128 0x12
	.long	.LASF69
	.byte	0x17
	.byte	0x59
	.byte	0xd
	.long	0x72
	.byte	0x90
	.uleb128 0x12
	.long	.LASF70
	.byte	0x17
	.byte	0x5b
	.byte	0x17
	.long	0x491
	.byte	0x98
	.uleb128 0x12
	.long	.LASF71
	.byte	0x17
	.byte	0x5c
	.byte	0x19
	.long	0x49c
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF72
	.byte	0x17
	.byte	0x5d
	.byte	0x14
	.long	0x470
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF73
	.byte	0x17
	.byte	0x5e
	.byte	0x9
	.long	0x8a
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF74
	.byte	0x17
	.byte	0x5f
	.byte	0xa
	.long	0xc2
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF75
	.byte	0x17
	.byte	0x60
	.byte	0x7
	.long	0x53
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF76
	.byte	0x17
	.byte	0x62
	.byte	0x8
	.long	0x4a2
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF77
	.byte	0x18
	.byte	0x7
	.byte	0x19
	.long	0x2ca
	.uleb128 0x17
	.long	.LASF198
	.byte	0x17
	.byte	0x2b
	.byte	0xe
	.uleb128 0x18
	.long	.LASF78
	.uleb128 0x7
	.byte	0x8
	.long	0x465
	.uleb128 0x7
	.byte	0x8
	.long	0x2ca
	.uleb128 0xd
	.long	0x9e
	.long	0x486
	.uleb128 0xe
	.long	0x3e
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x45d
	.uleb128 0x18
	.long	.LASF79
	.uleb128 0x7
	.byte	0x8
	.long	0x48c
	.uleb128 0x18
	.long	.LASF80
	.uleb128 0x7
	.byte	0x8
	.long	0x497
	.uleb128 0xd
	.long	0x9e
	.long	0x4b2
	.uleb128 0xe
	.long	0x3e
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.long	.LASF81
	.byte	0x19
	.byte	0x89
	.byte	0xe
	.long	0x4be
	.uleb128 0x7
	.byte	0x8
	.long	0x451
	.uleb128 0xf
	.long	0x4be
	.uleb128 0x10
	.long	.LASF82
	.byte	0x19
	.byte	0x8a
	.byte	0xe
	.long	0x4be
	.uleb128 0x10
	.long	.LASF83
	.byte	0x19
	.byte	0x8b
	.byte	0xe
	.long	0x4be
	.uleb128 0x10
	.long	.LASF84
	.byte	0x1a
	.byte	0x1a
	.byte	0xc
	.long	0x53
	.uleb128 0xd
	.long	0x128
	.long	0x4f8
	.uleb128 0x19
	.byte	0
	.uleb128 0x8
	.long	0x4ed
	.uleb128 0x10
	.long	.LASF85
	.byte	0x1a
	.byte	0x1b
	.byte	0x1a
	.long	0x4f8
	.uleb128 0x10
	.long	.LASF86
	.byte	0x1a
	.byte	0x1e
	.byte	0xc
	.long	0x53
	.uleb128 0x10
	.long	.LASF87
	.byte	0x1a
	.byte	0x1f
	.byte	0x1a
	.long	0x4f8
	.uleb128 0x1a
	.byte	0x5
	.byte	0x4
	.long	0x53
	.byte	0x5
	.value	0x147
	.byte	0x1
	.long	0x53f
	.uleb128 0x1b
	.long	.LASF88
	.sleb128 -130
	.uleb128 0x1b
	.long	.LASF89
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xa5
	.long	0x54a
	.uleb128 0x19
	.byte	0
	.uleb128 0x8
	.long	0x53f
	.uleb128 0x10
	.long	.LASF90
	.byte	0x1b
	.byte	0x19
	.byte	0x13
	.long	0x54a
	.uleb128 0x10
	.long	.LASF91
	.byte	0x1c
	.byte	0x20
	.byte	0x14
	.long	0x122
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x1d
	.byte	0x20
	.byte	0x6
	.long	0x5bc
	.uleb128 0x16
	.long	.LASF92
	.byte	0
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.uleb128 0x16
	.long	.LASF94
	.byte	0x2
	.uleb128 0x16
	.long	.LASF95
	.byte	0x3
	.uleb128 0x16
	.long	.LASF96
	.byte	0x4
	.uleb128 0x16
	.long	.LASF97
	.byte	0x5
	.uleb128 0x16
	.long	.LASF98
	.byte	0x6
	.uleb128 0x16
	.long	.LASF99
	.byte	0x7
	.uleb128 0x16
	.long	.LASF100
	.byte	0x8
	.uleb128 0x16
	.long	.LASF101
	.byte	0x9
	.uleb128 0x16
	.long	.LASF102
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x567
	.uleb128 0x9
	.long	.LASF103
	.byte	0x1d
	.value	0x10b
	.byte	0x1a
	.long	0x4f8
	.uleb128 0xd
	.long	0x5bc
	.long	0x5d9
	.uleb128 0x19
	.byte	0
	.uleb128 0x8
	.long	0x5ce
	.uleb128 0x9
	.long	.LASF104
	.byte	0x1d
	.value	0x10c
	.byte	0x21
	.long	0x5d9
	.uleb128 0x18
	.long	.LASF105
	.uleb128 0x10
	.long	.LASF106
	.byte	0x1e
	.byte	0x19
	.byte	0x1f
	.long	0x5eb
	.uleb128 0x5
	.long	.LASF107
	.byte	0x1f
	.byte	0x3d
	.byte	0x10
	.long	0x107
	.uleb128 0x10
	.long	.LASF108
	.byte	0x1f
	.byte	0x3e
	.byte	0x19
	.long	0x5fc
	.uleb128 0x10
	.long	.LASF109
	.byte	0x20
	.byte	0x32
	.byte	0xf
	.long	0x107
	.uleb128 0x10
	.long	.LASF110
	.byte	0x20
	.byte	0x35
	.byte	0x15
	.long	0x37
	.uleb128 0x10
	.long	.LASF111
	.byte	0x20
	.byte	0x39
	.byte	0xc
	.long	0x53
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x21
	.byte	0x2d
	.byte	0xe
	.long	0x66b
	.uleb128 0x16
	.long	.LASF112
	.byte	0
	.uleb128 0x16
	.long	.LASF113
	.byte	0x2
	.uleb128 0x16
	.long	.LASF114
	.byte	0x5
	.uleb128 0x16
	.long	.LASF115
	.byte	0x4
	.uleb128 0x16
	.long	.LASF116
	.byte	0x3
	.uleb128 0x16
	.long	.LASF117
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.long	.LASF119
	.byte	0x1
	.byte	0x2b
	.byte	0xd
	.long	0x681
	.uleb128 0x9
	.byte	0x3
	.quad	append
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF118
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x1
	.byte	0x2e
	.byte	0xd
	.long	0x681
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_interrupts
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.long	0x6cf
	.uleb128 0x16
	.long	.LASF123
	.byte	0
	.uleb128 0x16
	.long	.LASF124
	.byte	0x1
	.uleb128 0x16
	.long	.LASF125
	.byte	0x2
	.uleb128 0x16
	.long	.LASF126
	.byte	0x3
	.uleb128 0x16
	.long	.LASF127
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x69e
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x1
	.byte	0x39
	.byte	0x1a
	.long	0x69e
	.uleb128 0x9
	.byte	0x3
	.quad	output_error
	.uleb128 0xd
	.long	0x1be
	.long	0x6fa
	.uleb128 0xe
	.long	0x3e
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x6ea
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x1
	.byte	0x3b
	.byte	0x1c
	.long	0x6fa
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0xd
	.long	0x128
	.long	0x725
	.uleb128 0xe
	.long	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x715
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x1
	.byte	0x45
	.byte	0x1a
	.long	0x725
	.uleb128 0x9
	.byte	0x3
	.quad	output_error_args
	.uleb128 0xd
	.long	0x6cf
	.long	0x750
	.uleb128 0xe
	.long	0x3e
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x740
	.uleb128 0x1d
	.long	.LASF130
	.byte	0x1
	.byte	0x49
	.byte	0x20
	.long	0x750
	.uleb128 0x9
	.byte	0x3
	.quad	output_error_types
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.long	0x681
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0xbcd
	.uleb128 0x1f
	.long	.LASF131
	.byte	0x1
	.byte	0xb8
	.byte	0x10
	.long	0x53
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1f
	.long	.LASF132
	.byte	0x1
	.byte	0xb8
	.byte	0x1f
	.long	0x24e
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x20
	.long	.LASF133
	.byte	0x1
	.byte	0xba
	.byte	0xa
	.long	0xc2
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.byte	0xbb
	.byte	0xa
	.long	0xbcd
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1d
	.long	.LASF135
	.byte	0x1
	.byte	0xbc
	.byte	0x8
	.long	0xbd3
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8272
	.uleb128 0x20
	.long	.LASF136
	.byte	0x1
	.byte	0xbd
	.byte	0xb
	.long	0xaa
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xbe
	.byte	0x7
	.long	0x53
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x21
	.string	"ok"
	.byte	0x1
	.byte	0xbf
	.byte	0x8
	.long	0x681
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x20
	.long	.LASF137
	.byte	0x1
	.byte	0xc0
	.byte	0xf
	.long	0x122
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x22
	.long	0x865
	.uleb128 0x23
	.long	.LASF138
	.byte	0x1
	.byte	0xf1
	.byte	0x10
	.long	0x122
	.uleb128 0x23
	.long	.LASF139
	.byte	0x1
	.byte	0xf1
	.byte	0x10
	.long	0x4be
	.uleb128 0x23
	.long	.LASF140
	.byte	0x1
	.byte	0xf1
	.byte	0x10
	.long	0xc2
	.byte	0
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x40
	.long	0x915
	.uleb128 0x20
	.long	.LASF141
	.byte	0x1
	.byte	0xf3
	.byte	0x11
	.long	0x53
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x20
	.long	.LASF142
	.byte	0x1
	.byte	0xf4
	.byte	0x12
	.long	0x681
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x25
	.quad	.LVL51
	.long	0x162a
	.long	0x8ae
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL53
	.long	0x1637
	.long	0x8ca
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x25
	.quad	.LVL54
	.long	0x1644
	.long	0x8f3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x6
	.byte	0x91
	.sleb128 -8304
	.byte	0x94
	.byte	0x4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x27
	.quad	.LVL58
	.long	0x1650
	.uleb128 0x28
	.quad	.LVL68
	.long	0x162a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x15ce
	.quad	.LBI44
	.byte	.LVU28
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xcc
	.byte	0x11
	.long	0x976
	.uleb128 0x2a
	.long	0x15e9
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x2a
	.long	0x15df
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x25
	.quad	.LVL8
	.long	0x165c
	.long	0x968
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xa
	.byte	0x73
	.sleb128 1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x33
	.byte	0x24
	.byte	0
	.uleb128 0x27
	.quad	.LVL70
	.long	0x1668
	.byte	0
	.uleb128 0x2b
	.long	0x15f4
	.quad	.LBI49
	.byte	.LVU89
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.byte	0x1
	.byte	0xe7
	.byte	0x14
	.long	0x9e3
	.uleb128 0x2a
	.long	0x161d
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x2a
	.long	0x1611
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x2a
	.long	0x1605
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x28
	.quad	.LVL30
	.long	0x1674
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x2000
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL5
	.long	0x1680
	.long	0x9fa
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x25
	.quad	.LVL15
	.long	0x168c
	.long	0xa23
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL16
	.long	0x1698
	.long	0xa44
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL19
	.long	0x1698
	.long	0xa65
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL22
	.long	0x16a5
	.long	0xa7d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL23
	.long	0x1637
	.long	0xa94
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x27
	.quad	.LVL24
	.long	0x1650
	.uleb128 0x25
	.quad	.LVL25
	.long	0x1644
	.long	0xac2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8312
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.quad	.LVL32
	.long	0x1650
	.uleb128 0x27
	.quad	.LVL39
	.long	0x16b1
	.uleb128 0x25
	.quad	.LVL41
	.long	0x1637
	.long	0xaf8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x27
	.quad	.LVL42
	.long	0x1650
	.uleb128 0x25
	.quad	.LVL43
	.long	0x1644
	.long	0xb28
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL45
	.long	0x16be
	.long	0xb43
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -8296
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.quad	.LVL57
	.long	0x16cb
	.long	0xb6c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL63
	.long	0x168c
	.long	0xb95
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x27
	.quad	.LVL64
	.long	0x1650
	.uleb128 0x25
	.quad	.LVL65
	.long	0x1644
	.long	0xbbf
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL71
	.long	0x16d8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x4be
	.uleb128 0xd
	.long	0x9e
	.long	0xbe4
	.uleb128 0x2c
	.long	0x3e
	.value	0x1fff
	.byte	0
	.uleb128 0x2d
	.long	.LASF146
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	0x53
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0xea8
	.uleb128 0x1f
	.long	.LASF143
	.byte	0x1
	.byte	0x76
	.byte	0xb
	.long	0x53
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x1f
	.long	.LASF144
	.byte	0x1
	.byte	0x76
	.byte	0x18
	.long	0x24e
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x21
	.string	"ok"
	.byte	0x1
	.byte	0x78
	.byte	0x8
	.long	0x681
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x20
	.long	.LASF145
	.byte	0x1
	.byte	0x79
	.byte	0x7
	.long	0x53
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x2e
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.long	0xcc7
	.uleb128 0x25
	.quad	.LVL154
	.long	0x168c
	.long	0xc93
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC37
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x27
	.quad	.LVL155
	.long	0x1650
	.uleb128 0x28
	.quad	.LVL156
	.long	0x1644
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL131
	.long	0x16e1
	.uleb128 0x25
	.quad	.LVL132
	.long	0x16ed
	.long	0xcf8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x25
	.quad	.LVL133
	.long	0x16f9
	.long	0xd24
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.byte	0
	.uleb128 0x25
	.quad	.LVL134
	.long	0x1705
	.long	0xd43
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.uleb128 0x27
	.quad	.LVL135
	.long	0x1711
	.uleb128 0x25
	.quad	.LVL136
	.long	0x171e
	.long	0xd86
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC36
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL138
	.long	0x172a
	.long	0xdcc
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC34
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.byte	0
	.uleb128 0x25
	.quad	.LVL139
	.long	0x1736
	.long	0xde3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL140
	.long	0x1743
	.long	0xe21
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	output_error_args
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	output_error_types
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x25
	.quad	.LVL142
	.long	0xea8
	.long	0xe38
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.quad	.LVL144
	.long	0x76b
	.uleb128 0x25
	.quad	.LVL146
	.long	0x174f
	.long	0xe5c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL150
	.long	0x175c
	.long	0xe78
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.quad	.LVL151
	.long	0x175c
	.long	0xe94
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.quad	.LVL153
	.long	0xea8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF147
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x1421
	.uleb128 0x1f
	.long	.LASF148
	.byte	0x1
	.byte	0x51
	.byte	0xc
	.long	0x53
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x29
	.long	0x1579
	.quad	.LBI67
	.byte	.LVU198
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.long	0xf27
	.uleb128 0x2a
	.long	0x1596
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x2a
	.long	0x158a
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x28
	.quad	.LVL77
	.long	0x1768
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x14bf
	.quad	.LBI71
	.byte	.LVU221
	.long	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x70
	.byte	0x7
	.long	0x123a
	.uleb128 0x30
	.long	0x14cd
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.uleb128 0x31
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x32
	.long	0x150a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x33
	.long	0x1517
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x33
	.long	0x1524
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x33
	.long	0x1531
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x34
	.long	0x155a
	.quad	.LBI73
	.byte	.LVU245
	.long	.Ldebug_ranges0+0xe0
	.byte	0x5
	.value	0x28f
	.byte	0x3
	.long	0x100b
	.uleb128 0x2a
	.long	0x156b
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x25
	.quad	.LVL101
	.long	0x1774
	.long	0xfdd
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x28
	.quad	.LVL118
	.long	0x1774
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0x155a
	.quad	.LBI79
	.byte	.LVU260
	.long	.Ldebug_ranges0+0x130
	.byte	0x5
	.value	0x29d
	.byte	0x3
	.long	0x1083
	.uleb128 0x2a
	.long	0x156b
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x25
	.quad	.LVL109
	.long	0x1774
	.long	0x105c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL125
	.long	0x1774
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0x155a
	.quad	.LBI88
	.byte	.LVU271
	.long	.Ldebug_ranges0+0x1a0
	.byte	0x5
	.value	0x29f
	.byte	0x3
	.long	0x10ca
	.uleb128 0x2a
	.long	0x156b
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x28
	.quad	.LVL113
	.long	0x1774
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL98
	.long	0x168c
	.long	0x10f3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL102
	.long	0x16ed
	.long	0x110f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL104
	.long	0x1780
	.long	0x1133
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x25
	.quad	.LVL106
	.long	0x168c
	.long	0x115c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL110
	.long	0x168c
	.long	0x1185
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x27
	.quad	.LVL115
	.long	0x168c
	.uleb128 0x25
	.quad	.LVL119
	.long	0x16ed
	.long	0x11ae
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL121
	.long	0x1780
	.long	0x11d2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x25
	.quad	.LVL122
	.long	0x168c
	.long	0x11fb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL127
	.long	0x168c
	.long	0x1224
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL128
	.long	0x178c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x155a
	.quad	.LBI98
	.byte	.LVU210
	.long	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.byte	0x57
	.byte	0x7
	.long	0x127a
	.uleb128 0x2a
	.long	0x156b
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x28
	.quad	.LVL83
	.long	0x1774
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL74
	.long	0x168c
	.long	0x12a3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL78
	.long	0x1736
	.long	0x12bb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL80
	.long	0x168c
	.long	0x12df
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x25
	.quad	.LVL84
	.long	0x168c
	.long	0x1308
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL85
	.long	0x178c
	.long	0x1320
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL86
	.long	0x168c
	.long	0x1349
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL87
	.long	0x178c
	.long	0x1361
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL88
	.long	0x168c
	.long	0x138a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL89
	.long	0x178c
	.long	0x13a2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL90
	.long	0x168c
	.long	0x13cb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL91
	.long	0x178c
	.long	0x13e3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL92
	.long	0x168c
	.long	0x140c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL93
	.long	0x178c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF200
	.byte	0x2
	.byte	0x28
	.byte	0x1
	.byte	0x3
	.long	0x1446
	.uleb128 0x36
	.string	"fd"
	.byte	0x2
	.byte	0x28
	.byte	0x17
	.long	0x53
	.uleb128 0x37
	.long	.LASF149
	.byte	0x2
	.byte	0x28
	.byte	0x1f
	.long	0x53
	.byte	0
	.uleb128 0x38
	.long	.LASF201
	.byte	0x2
	.byte	0x21
	.byte	0x18
	.byte	0x3
	.uleb128 0x39
	.long	.LASF150
	.byte	0x3
	.byte	0x42
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x1478
	.uleb128 0x36
	.string	"fd"
	.byte	0x3
	.byte	0x42
	.byte	0x16
	.long	0x53
	.uleb128 0x37
	.long	.LASF149
	.byte	0x3
	.byte	0x42
	.byte	0x1e
	.long	0x53
	.byte	0
	.uleb128 0x39
	.long	.LASF151
	.byte	0x3
	.byte	0x32
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x14a1
	.uleb128 0x36
	.string	"fd"
	.byte	0x3
	.byte	0x32
	.byte	0x13
	.long	0x53
	.uleb128 0x37
	.long	.LASF149
	.byte	0x3
	.byte	0x32
	.byte	0x26
	.long	0x53
	.byte	0
	.uleb128 0x3a
	.long	.LASF202
	.byte	0x5
	.value	0x2ba
	.byte	0x1
	.long	0x98
	.byte	0x3
	.long	0x14bf
	.uleb128 0x3b
	.string	"s"
	.byte	0x5
	.value	0x2ba
	.byte	0x17
	.long	0x122
	.byte	0
	.uleb128 0x3c
	.long	.LASF203
	.byte	0x5
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x153f
	.uleb128 0x3d
	.long	.LASF152
	.byte	0x5
	.value	0x27a
	.byte	0x22
	.long	0x122
	.uleb128 0x3e
	.long	.LASF153
	.byte	0x10
	.byte	0x5
	.value	0x27c
	.byte	0xa
	.long	0x1505
	.uleb128 0x3f
	.long	.LASF152
	.byte	0x5
	.value	0x27c
	.byte	0x20
	.long	0x122
	.byte	0
	.uleb128 0x3f
	.long	.LASF154
	.byte	0x5
	.value	0x27c
	.byte	0x35
	.long	0x122
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x14da
	.uleb128 0x40
	.long	.LASF153
	.byte	0x5
	.value	0x27c
	.byte	0x43
	.long	0x154f
	.uleb128 0x40
	.long	.LASF154
	.byte	0x5
	.value	0x286
	.byte	0xf
	.long	0x122
	.uleb128 0x40
	.long	.LASF155
	.byte	0x5
	.value	0x287
	.byte	0x19
	.long	0x1554
	.uleb128 0x40
	.long	.LASF156
	.byte	0x5
	.value	0x293
	.byte	0xf
	.long	0x122
	.byte	0
	.uleb128 0xd
	.long	0x1505
	.long	0x154f
	.uleb128 0xe
	.long	0x3e
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x153f
	.uleb128 0x7
	.byte	0x8
	.long	0x1505
	.uleb128 0x41
	.long	.LASF158
	.byte	0x7
	.byte	0x69
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x1579
	.uleb128 0x37
	.long	.LASF157
	.byte	0x7
	.byte	0x69
	.byte	0x20
	.long	0x12d
	.uleb128 0x42
	.byte	0
	.uleb128 0x41
	.long	.LASF159
	.byte	0x7
	.byte	0x62
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x15a4
	.uleb128 0x37
	.long	.LASF139
	.byte	0x7
	.byte	0x62
	.byte	0x1b
	.long	0x4c4
	.uleb128 0x37
	.long	.LASF157
	.byte	0x7
	.byte	0x62
	.byte	0x3c
	.long	0x12d
	.uleb128 0x42
	.byte	0
	.uleb128 0x39
	.long	.LASF160
	.byte	0x22
	.byte	0x65
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x15ce
	.uleb128 0x36
	.string	"__c"
	.byte	0x22
	.byte	0x65
	.byte	0x14
	.long	0x53
	.uleb128 0x37
	.long	.LASF139
	.byte	0x22
	.byte	0x65
	.byte	0x1f
	.long	0x4be
	.byte	0
	.uleb128 0x39
	.long	.LASF161
	.byte	0x4
	.byte	0x63
	.byte	0x1
	.long	0x8a
	.byte	0x3
	.long	0x15f4
	.uleb128 0x36
	.string	"n"
	.byte	0x4
	.byte	0x63
	.byte	0x12
	.long	0xc2
	.uleb128 0x36
	.string	"s"
	.byte	0x4
	.byte	0x63
	.byte	0x1c
	.long	0xc2
	.byte	0
	.uleb128 0x41
	.long	.LASF162
	.byte	0x6
	.byte	0x22
	.byte	0x1
	.long	0xaa
	.byte	0x3
	.long	0x162a
	.uleb128 0x37
	.long	.LASF163
	.byte	0x6
	.byte	0x22
	.byte	0xb
	.long	0x53
	.uleb128 0x37
	.long	.LASF164
	.byte	0x6
	.byte	0x22
	.byte	0x17
	.long	0x8a
	.uleb128 0x37
	.long	.LASF165
	.byte	0x6
	.byte	0x22
	.byte	0x25
	.long	0xc2
	.byte	0
	.uleb128 0x43
	.long	.LASF166
	.long	.LASF166
	.byte	0x19
	.value	0x2fd
	.byte	0xd
	.uleb128 0x43
	.long	.LASF167
	.long	.LASF167
	.byte	0x1d
	.value	0x18d
	.byte	0x7
	.uleb128 0x44
	.long	.LASF168
	.long	.LASF168
	.byte	0x20
	.byte	0x28
	.byte	0xd
	.uleb128 0x44
	.long	.LASF169
	.long	.LASF169
	.byte	0x12
	.byte	0x25
	.byte	0xd
	.uleb128 0x44
	.long	.LASF170
	.long	.LASF170
	.byte	0x4
	.byte	0x35
	.byte	0x7
	.uleb128 0x44
	.long	.LASF171
	.long	.LASF171
	.byte	0x4
	.byte	0x2f
	.byte	0x1b
	.uleb128 0x44
	.long	.LASF162
	.long	.LASF172
	.byte	0x6
	.byte	0x19
	.byte	0x10
	.uleb128 0x44
	.long	.LASF173
	.long	.LASF173
	.byte	0x21
	.byte	0x48
	.byte	0x6
	.uleb128 0x44
	.long	.LASF174
	.long	.LASF174
	.byte	0x23
	.byte	0x33
	.byte	0xe
	.uleb128 0x43
	.long	.LASF175
	.long	.LASF175
	.byte	0x19
	.value	0x134
	.byte	0xc
	.uleb128 0x44
	.long	.LASF176
	.long	.LASF176
	.byte	0x24
	.byte	0x17
	.byte	0x7
	.uleb128 0x43
	.long	.LASF177
	.long	.LASF177
	.byte	0x25
	.value	0x2be
	.byte	0x1
	.uleb128 0x43
	.long	.LASF178
	.long	.LASF178
	.byte	0x26
	.value	0x235
	.byte	0xd
	.uleb128 0x43
	.long	.LASF179
	.long	.LASF179
	.byte	0x19
	.value	0x2a3
	.byte	0xf
	.uleb128 0x45
	.long	.LASF204
	.long	.LASF204
	.uleb128 0x44
	.long	.LASF180
	.long	.LASF180
	.byte	0x1c
	.byte	0x25
	.byte	0xd
	.uleb128 0x44
	.long	.LASF181
	.long	.LASF181
	.byte	0x27
	.byte	0x7a
	.byte	0xe
	.uleb128 0x44
	.long	.LASF182
	.long	.LASF182
	.byte	0x23
	.byte	0x56
	.byte	0xe
	.uleb128 0x44
	.long	.LASF183
	.long	.LASF183
	.byte	0x23
	.byte	0x52
	.byte	0xe
	.uleb128 0x43
	.long	.LASF184
	.long	.LASF184
	.byte	0x26
	.value	0x253
	.byte	0xc
	.uleb128 0x44
	.long	.LASF185
	.long	.LASF185
	.byte	0xf
	.byte	0x42
	.byte	0xc
	.uleb128 0x44
	.long	.LASF186
	.long	.LASF186
	.byte	0x1b
	.byte	0x3c
	.byte	0xd
	.uleb128 0x43
	.long	.LASF187
	.long	.LASF187
	.byte	0x26
	.value	0x269
	.byte	0xd
	.uleb128 0x44
	.long	.LASF188
	.long	.LASF188
	.byte	0x1f
	.byte	0x59
	.byte	0xb
	.uleb128 0x43
	.long	.LASF189
	.long	.LASF189
	.byte	0x11
	.value	0x161
	.byte	0xc
	.uleb128 0x44
	.long	.LASF190
	.long	.LASF190
	.byte	0xc
	.byte	0x58
	.byte	0x17
	.uleb128 0x44
	.long	.LASF191
	.long	.LASF191
	.byte	0x7
	.byte	0x58
	.byte	0xc
	.uleb128 0x44
	.long	.LASF192
	.long	.LASF192
	.byte	0x7
	.byte	0x5a
	.byte	0xc
	.uleb128 0x44
	.long	.LASF193
	.long	.LASF193
	.byte	0x28
	.byte	0x8c
	.byte	0xc
	.uleb128 0x43
	.long	.LASF194
	.long	.LASF194
	.byte	0x19
	.value	0x296
	.byte	0xc
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x87
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LVL9
	.value	0x1
	.byte	0x53
	.quad	.LVL9
	.quad	.LVL69
	.value	0x4
	.byte	0x91
	.sleb128 -8300
	.quad	.LVL69
	.quad	.LVL70
	.value	0x1
	.byte	0x53
	.quad	.LVL70
	.quad	.LFE141
	.value	0x4
	.byte	0x91
	.sleb128 -8300
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x54
	.quad	.LVL2
	.quad	.LVL13
	.value	0x4
	.byte	0x91
	.sleb128 -8280
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x50
	.quad	.LVL14
	.quad	.LVL69
	.value	0x4
	.byte	0x91
	.sleb128 -8288
	.quad	.LVL69
	.quad	.LVL70
	.value	0x4
	.byte	0x91
	.sleb128 -8280
	.quad	.LVL70
	.quad	.LFE141
	.value	0x4
	.byte	0x91
	.sleb128 -8288
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU9
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU86
	.uleb128 .LVU88
	.uleb128 .LVU106
	.uleb128 .LVU127
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU184
.LLST2:
	.quad	.LVL3
	.quad	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL16
	.quad	.LVL18
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL18
	.quad	.LVL27
	.value	0x1
	.byte	0x53
	.quad	.LVL29
	.quad	.LVL35
	.value	0x1
	.byte	0x53
	.quad	.LVL46
	.quad	.LVL66
	.value	0x1
	.byte	0x53
	.quad	.LVL66
	.quad	.LVL67
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL69
	.value	0x1
	.byte	0x53
	.quad	.LVL69
	.quad	.LVL70
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU39
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU182
	.uleb128 .LVU184
	.uleb128 0
.LLST3:
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x50
	.quad	.LVL12
	.quad	.LVL17
	.value	0x1
	.byte	0x5e
	.quad	.LVL17
	.quad	.LVL66
	.value	0x4
	.byte	0x91
	.sleb128 -8296
	.quad	.LVL66
	.quad	.LVL67
	.value	0x1
	.byte	0x5e
	.quad	.LVL67
	.quad	.LVL69
	.value	0x4
	.byte	0x91
	.sleb128 -8296
	.quad	.LVL70
	.quad	.LFE141
	.value	0x4
	.byte	0x91
	.sleb128 -8296
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU12
	.uleb128 .LVU86
	.uleb128 .LVU88
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU102
	.uleb128 .LVU127
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU184
.LLST4:
	.quad	.LVL3
	.quad	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL29
	.quad	.LVL31
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL32-1
	.value	0x1
	.byte	0x50
	.quad	.LVL32-1
	.quad	.LVL33
	.value	0x1
	.byte	0x56
	.quad	.LVL46
	.quad	.LVL47
	.value	0x1
	.byte	0x56
	.quad	.LVL47
	.quad	.LVL49
	.value	0x1
	.byte	0x50
	.quad	.LVL49
	.quad	.LVL66
	.value	0x1
	.byte	0x56
	.quad	.LVL66
	.quad	.LVL67
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL69
	.value	0x1
	.byte	0x56
	.quad	.LVL69
	.quad	.LVL70
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU55
	.uleb128 .LVU60
	.uleb128 .LVU102
	.uleb128 .LVU104
	.uleb128 .LVU107
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU109
	.uleb128 .LVU110
	.uleb128 .LVU116
	.uleb128 .LVU131
	.uleb128 .LVU133
	.uleb128 .LVU178
	.uleb128 .LVU180
.LLST5:
	.quad	.LVL16
	.quad	.LVL18
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL33
	.quad	.LVL34
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL36
	.quad	.LVL36
	.value	0x1
	.byte	0x53
	.quad	.LVL36
	.quad	.LVL37
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL40
	.value	0x1
	.byte	0x53
	.quad	.LVL48
	.quad	.LVL49
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL66
	.quad	.LVL67
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU14
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU86
	.uleb128 .LVU88
	.uleb128 .LVU104
	.uleb128 .LVU107
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU136
	.uleb128 .LVU148
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 0
.LLST6:
	.quad	.LVL3
	.quad	.LVL18
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL18
	.quad	.LVL25
	.value	0x4
	.byte	0x91
	.sleb128 -8304
	.quad	.LVL25
	.quad	.LVL26
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL26
	.quad	.LVL27
	.value	0x4
	.byte	0x91
	.sleb128 -8304
	.quad	.LVL29
	.quad	.LVL34
	.value	0x4
	.byte	0x91
	.sleb128 -8304
	.quad	.LVL36
	.quad	.LVL43
	.value	0x4
	.byte	0x91
	.sleb128 -8304
	.quad	.LVL43
	.quad	.LVL44
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL44
	.quad	.LVL50
	.value	0x4
	.byte	0x91
	.sleb128 -8304
	.quad	.LVL55
	.quad	.LVL65
	.value	0x4
	.byte	0x91
	.sleb128 -8304
	.quad	.LVL65
	.quad	.LVL66
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL66
	.quad	.LVL67
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL69
	.value	0x4
	.byte	0x91
	.sleb128 -8304
	.quad	.LVL69
	.quad	.LVL70
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL70
	.quad	.LFE141
	.value	0x4
	.byte	0x91
	.sleb128 -8304
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU16
	.uleb128 .LVU87
	.uleb128 .LVU178
	.uleb128 .LVU180
	.uleb128 .LVU182
	.uleb128 .LVU184
.LLST7:
	.quad	.LVL4
	.quad	.LVL28
	.value	0x1
	.byte	0x5d
	.quad	.LVL66
	.quad	.LVL67
	.value	0x1
	.byte	0x5d
	.quad	.LVL69
	.quad	.LVL70
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU133
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU138
	.uleb128 .LVU162
	.uleb128 .LVU168
	.uleb128 .LVU180
	.uleb128 .LVU181
.LLST13:
	.quad	.LVL49
	.quad	.LVL51-1
	.value	0x1
	.byte	0x59
	.quad	.LVL51-1
	.quad	.LVL52
	.value	0x4
	.byte	0x91
	.sleb128 -8304
	.quad	.LVL59
	.quad	.LVL61
	.value	0x1
	.byte	0x59
	.quad	.LVL67
	.quad	.LVL68-1
	.value	0x1
	.byte	0x59
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU133
	.uleb128 .LVU148
	.uleb128 .LVU166
	.uleb128 .LVU171
	.uleb128 .LVU180
	.uleb128 .LVU182
.LLST14:
	.quad	.LVL49
	.quad	.LVL55
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL60
	.quad	.LVL62
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL69
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU28
	.uleb128 .LVU38
	.uleb128 .LVU182
	.uleb128 .LVU184
.LLST8:
	.quad	.LVL6
	.quad	.LVL10
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL69
	.quad	.LVL70
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU28
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU38
	.uleb128 .LVU182
	.uleb128 .LVU184
.LLST9:
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x55
	.quad	.LVL7
	.quad	.LVL9
	.value	0x9
	.byte	0x73
	.sleb128 1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL9
	.quad	.LVL10
	.value	0xf
	.byte	0x91
	.sleb128 -8300
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	.LVL69
	.quad	.LVL70
	.value	0x9
	.byte	0x73
	.sleb128 1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU89
	.uleb128 .LVU95
.LLST10:
	.quad	.LVL29
	.quad	.LVL31
	.value	0x4
	.byte	0xa
	.value	0x2000
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU89
	.uleb128 .LVU95
.LLST11:
	.quad	.LVL29
	.quad	.LVL31
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU89
	.uleb128 .LVU95
.LLST12:
	.quad	.LVL29
	.quad	.LVL31
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU316
	.uleb128 .LVU316
	.uleb128 .LVU371
	.uleb128 .LVU371
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 0
.LLST25:
	.quad	.LVL129
	.quad	.LVL130
	.value	0x1
	.byte	0x55
	.quad	.LVL130
	.quad	.LVL148
	.value	0x1
	.byte	0x56
	.quad	.LVL148
	.quad	.LVL149
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL149
	.quad	.LFE140
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 0
.LLST26:
	.quad	.LVL129
	.quad	.LVL131-1
	.value	0x1
	.byte	0x54
	.quad	.LVL131-1
	.quad	.LVL145
	.value	0x1
	.byte	0x53
	.quad	.LVL145
	.quad	.LVL149
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL149
	.quad	.LVL153
	.value	0x1
	.byte	0x53
	.quad	.LVL153
	.quad	.LFE140
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU364
	.uleb128 .LVU366
	.uleb128 .LVU366
	.uleb128 .LVU369
	.uleb128 .LVU378
	.uleb128 0
.LLST27:
	.quad	.LVL145
	.quad	.LVL146-1
	.value	0x1
	.byte	0x50
	.quad	.LVL146-1
	.quad	.LVL147
	.value	0x1
	.byte	0x53
	.quad	.LVL153
	.quad	.LFE140
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU329
	.uleb128 .LVU338
	.uleb128 .LVU340
	.uleb128 .LVU346
	.uleb128 .LVU348
	.uleb128 .LVU350
	.uleb128 .LVU350
	.uleb128 .LVU357
	.uleb128 .LVU372
	.uleb128 .LVU373
	.uleb128 .LVU375
	.uleb128 .LVU378
.LLST28:
	.quad	.LVL136
	.quad	.LVL137
	.value	0x1
	.byte	0x50
	.quad	.LVL139
	.quad	.LVL140-1
	.value	0x1
	.byte	0x50
	.quad	.LVL141
	.quad	.LVL142-1
	.value	0x1
	.byte	0x50
	.quad	.LVL142
	.quad	.LVL143
	.value	0x1
	.byte	0x50
	.quad	.LVL149
	.quad	.LVL150-1
	.value	0x1
	.byte	0x50
	.quad	.LVL152
	.quad	.LVL153-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 0
.LLST15:
	.quad	.LVL72
	.quad	.LVL73
	.value	0x1
	.byte	0x55
	.quad	.LVL73
	.quad	.LVL78
	.value	0x1
	.byte	0x56
	.quad	.LVL78
	.quad	.LVL79
	.value	0x1
	.byte	0x55
	.quad	.LVL79
	.quad	.LFE139
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU198
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
.LLST16:
	.quad	.LVL75
	.quad	.LVL76
	.value	0x1
	.byte	0x50
	.quad	.LVL76
	.quad	.LVL77-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU198
	.uleb128 .LVU202
.LLST17:
	.quad	.LVL75
	.quad	.LVL77-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU225
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU256
	.uleb128 .LVU277
	.uleb128 .LVU305
.LLST18:
	.quad	.LVL94
	.quad	.LVL97
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	.LVL97
	.quad	.LVL105
	.value	0x1
	.byte	0x5c
	.quad	.LVL114
	.quad	.LVL126
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU226
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 .LVU243
	.uleb128 .LVU277
	.uleb128 .LVU279
.LLST19:
	.quad	.LVL94
	.quad	.LVL95
	.value	0x1
	.byte	0x57
	.quad	.LVL95
	.quad	.LVL98-1
	.value	0x1
	.byte	0x50
	.quad	.LVL114
	.quad	.LVL115-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU252
	.uleb128 .LVU255
	.uleb128 .LVU288
	.uleb128 .LVU291
.LLST20:
	.quad	.LVL103
	.quad	.LVL104-1
	.value	0x1
	.byte	0x50
	.quad	.LVL120
	.quad	.LVL121-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU245
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 .LVU249
	.uleb128 .LVU281
	.uleb128 .LVU284
	.uleb128 .LVU284
	.uleb128 .LVU285
.LLST21:
	.quad	.LVL99
	.quad	.LVL100
	.value	0x1
	.byte	0x50
	.quad	.LVL100
	.quad	.LVL101-1
	.value	0x1
	.byte	0x54
	.quad	.LVL116
	.quad	.LVL117
	.value	0x1
	.byte	0x50
	.quad	.LVL117
	.quad	.LVL118-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU260
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 .LVU266
	.uleb128 .LVU296
	.uleb128 .LVU299
	.uleb128 .LVU299
	.uleb128 .LVU302
.LLST22:
	.quad	.LVL107
	.quad	.LVL108
	.value	0x1
	.byte	0x50
	.quad	.LVL108
	.quad	.LVL109-1
	.value	0x1
	.byte	0x54
	.quad	.LVL123
	.quad	.LVL124
	.value	0x1
	.byte	0x50
	.quad	.LVL124
	.quad	.LVL125-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU271
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU275
.LLST23:
	.quad	.LVL111
	.quad	.LVL112
	.value	0x1
	.byte	0x50
	.quad	.LVL112
	.quad	.LVL113-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU210
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU214
.LLST24:
	.quad	.LVL81
	.quad	.LVL82
	.value	0x1
	.byte	0x50
	.quad	.LVL82
	.quad	.LVL83-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB44
	.quad	.LBE44
	.quad	.LBB48
	.quad	.LBE48
	.quad	.LBB54
	.quad	.LBE54
	.quad	0
	.quad	0
	.quad	.LBB51
	.quad	.LBE51
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB53
	.quad	.LBE53
	.quad	0
	.quad	0
	.quad	.LBB67
	.quad	.LBE67
	.quad	.LBB70
	.quad	.LBE70
	.quad	0
	.quad	0
	.quad	.LBB71
	.quad	.LBE71
	.quad	.LBB102
	.quad	.LBE102
	.quad	0
	.quad	0
	.quad	.LBB73
	.quad	.LBE73
	.quad	.LBB78
	.quad	.LBE78
	.quad	.LBB92
	.quad	.LBE92
	.quad	.LBB93
	.quad	.LBE93
	.quad	0
	.quad	0
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB86
	.quad	.LBE86
	.quad	.LBB87
	.quad	.LBE87
	.quad	.LBB94
	.quad	.LBE94
	.quad	.LBB95
	.quad	.LBE95
	.quad	.LBB96
	.quad	.LBE96
	.quad	0
	.quad	0
	.quad	.LBB88
	.quad	.LBE88
	.quad	.LBB91
	.quad	.LBE91
	.quad	0
	.quad	0
	.quad	.LBB98
	.quad	.LBE98
	.quad	.LBB101
	.quad	.LBE101
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB140
	.quad	.LFE140
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF158:
	.string	"printf"
.LASF7:
	.string	"__off_t"
.LASF113:
	.string	"FADVISE_SEQUENTIAL"
.LASF100:
	.string	"locale_quoting_style"
.LASF61:
	.string	"_chain"
.LASF73:
	.string	"_freeres_buf"
.LASF89:
	.string	"GETOPT_VERSION_CHAR"
.LASF121:
	.string	"quoting_style"
.LASF14:
	.string	"size_t"
.LASF172:
	.string	"__read_alias"
.LASF180:
	.string	"set_program_name"
.LASF67:
	.string	"_shortbuf"
.LASF189:
	.string	"close"
.LASF12:
	.string	"ssize_t"
.LASF93:
	.string	"shell_quoting_style"
.LASF88:
	.string	"GETOPT_HELP_CHAR"
.LASF55:
	.string	"_IO_buf_base"
.LASF17:
	.string	"__sighandler_t"
.LASF15:
	.string	"long long unsigned int"
.LASF58:
	.string	"_IO_backup_base"
.LASF45:
	.string	"__xalloc_count_type"
.LASF178:
	.string	"free"
.LASF70:
	.string	"_codecvt"
.LASF171:
	.string	"xalloc_die"
.LASF30:
	.string	"__timezone"
.LASF130:
	.string	"output_error_types"
.LASF16:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF104:
	.string	"quoting_style_vals"
.LASF152:
	.string	"program"
.LASF99:
	.string	"escape_quoting_style"
.LASF92:
	.string	"literal_quoting_style"
.LASF62:
	.string	"_fileno"
.LASF50:
	.string	"_IO_read_end"
.LASF20:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF18:
	.string	"_gl_cxxalias_dummy"
.LASF128:
	.string	"long_options"
.LASF201:
	.string	"xset_binary_mode_error"
.LASF136:
	.string	"bytes_read"
.LASF10:
	.string	"__ssize_t"
.LASF56:
	.string	"_IO_buf_end"
.LASF65:
	.string	"_cur_column"
.LASF40:
	.string	"program_invocation_short_name"
.LASF97:
	.string	"c_quoting_style"
.LASF79:
	.string	"_IO_codecvt"
.LASF87:
	.string	"_sys_errlist"
.LASF192:
	.string	"__printf_chk"
.LASF39:
	.string	"program_invocation_name"
.LASF64:
	.string	"_old_offset"
.LASF135:
	.string	"buffer"
.LASF123:
	.string	"output_error_sigpipe"
.LASF43:
	.string	"TIMESPEC_HZ"
.LASF96:
	.string	"shell_escape_always_quoting_style"
.LASF33:
	.string	"timezone"
.LASF177:
	.string	"rpl_fclose"
.LASF200:
	.string	"xset_binary_mode"
.LASF91:
	.string	"program_name"
.LASF186:
	.string	"version_etc"
.LASF78:
	.string	"_IO_marker"
.LASF81:
	.string	"stdin"
.LASF134:
	.string	"descriptors"
.LASF2:
	.string	"unsigned int"
.LASF195:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF159:
	.string	"fprintf"
.LASF151:
	.string	"__gl_setmode"
.LASF139:
	.string	"__stream"
.LASF3:
	.string	"long unsigned int"
.LASF94:
	.string	"shell_always_quoting_style"
.LASF182:
	.string	"bindtextdomain"
.LASF53:
	.string	"_IO_write_ptr"
.LASF114:
	.string	"FADVISE_NOREUSE"
.LASF25:
	.string	"name"
.LASF188:
	.string	"__xargmatch_internal"
.LASF84:
	.string	"sys_nerr"
.LASF145:
	.string	"optc"
.LASF1:
	.string	"short unsigned int"
.LASF111:
	.string	"error_one_per_line"
.LASF41:
	.string	"Version"
.LASF57:
	.string	"_IO_save_base"
.LASF38:
	.string	"environ"
.LASF120:
	.string	"ignore_interrupts"
.LASF68:
	.string	"_lock"
.LASF63:
	.string	"_flags2"
.LASF75:
	.string	"_mode"
.LASF181:
	.string	"setlocale"
.LASF82:
	.string	"stdout"
.LASF129:
	.string	"output_error_args"
.LASF163:
	.string	"__fd"
.LASF119:
	.string	"append"
.LASF35:
	.string	"ptrdiff_t"
.LASF90:
	.string	"version_etc_copyright"
.LASF166:
	.string	"clearerr_unlocked"
.LASF147:
	.string	"usage"
.LASF21:
	.string	"optarg"
.LASF140:
	.string	"__cnt"
.LASF155:
	.string	"map_prog"
.LASF69:
	.string	"_offset"
.LASF34:
	.string	"getdate_err"
.LASF22:
	.string	"optind"
.LASF49:
	.string	"_IO_read_ptr"
.LASF173:
	.string	"fadvise"
.LASF124:
	.string	"output_error_warn"
.LASF8:
	.string	"__off64_t"
.LASF198:
	.string	"_IO_lock_t"
.LASF47:
	.string	"_IO_FILE"
.LASF109:
	.string	"error_print_progname"
.LASF164:
	.string	"__buf"
.LASF37:
	.string	"__environ"
.LASF199:
	.string	"tee_files"
.LASF168:
	.string	"error"
.LASF85:
	.string	"sys_errlist"
.LASF60:
	.string	"_markers"
.LASF196:
	.string	"src/tee.c"
.LASF131:
	.string	"nfiles"
.LASF133:
	.string	"n_outputs"
.LASF13:
	.string	"time_t"
.LASF108:
	.string	"argmatch_die"
.LASF98:
	.string	"c_maybe_quoting_style"
.LASF44:
	.string	"LOG10_TIMESPEC_HZ"
.LASF118:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF32:
	.string	"daylight"
.LASF161:
	.string	"xnmalloc"
.LASF154:
	.string	"node"
.LASF193:
	.string	"strncmp"
.LASF5:
	.string	"short int"
.LASF46:
	.string	"option"
.LASF106:
	.string	"quote_quoting_options"
.LASF27:
	.string	"flag"
.LASF86:
	.string	"_sys_nerr"
.LASF125:
	.string	"output_error_warn_nopipe"
.LASF31:
	.string	"tzname"
.LASF184:
	.string	"atexit"
.LASF77:
	.string	"FILE"
.LASF42:
	.string	"exit_failure"
.LASF187:
	.string	"exit"
.LASF191:
	.string	"__fprintf_chk"
.LASF117:
	.string	"FADVISE_RANDOM"
.LASF204:
	.string	"__stack_chk_fail"
.LASF95:
	.string	"shell_escape_quoting_style"
.LASF174:
	.string	"dcgettext"
.LASF127:
	.string	"output_error_exit_nopipe"
.LASF103:
	.string	"quoting_style_args"
.LASF24:
	.string	"optopt"
.LASF167:
	.string	"quotearg_n_style_colon"
.LASF179:
	.string	"fwrite_unlocked"
.LASF142:
	.string	"fail"
.LASF71:
	.string	"_wide_data"
.LASF190:
	.string	"signal"
.LASF36:
	.string	"long double"
.LASF122:
	.string	"output_error"
.LASF11:
	.string	"char"
.LASF115:
	.string	"FADVISE_DONTNEED"
.LASF149:
	.string	"mode"
.LASF137:
	.string	"mode_string"
.LASF9:
	.string	"__time_t"
.LASF107:
	.string	"argmatch_exit_fn"
.LASF101:
	.string	"clocale_quoting_style"
.LASF169:
	.string	"__errno_location"
.LASF23:
	.string	"opterr"
.LASF112:
	.string	"FADVISE_NORMAL"
.LASF105:
	.string	"quoting_options"
.LASF51:
	.string	"_IO_read_base"
.LASF59:
	.string	"_IO_save_end"
.LASF19:
	.string	"_sys_siglist"
.LASF157:
	.string	"__fmt"
.LASF153:
	.string	"infomap"
.LASF26:
	.string	"has_arg"
.LASF141:
	.string	"w_errno"
.LASF74:
	.string	"__pad5"
.LASF54:
	.string	"_IO_write_end"
.LASF76:
	.string	"_unused2"
.LASF83:
	.string	"stderr"
.LASF144:
	.string	"argv"
.LASF183:
	.string	"textdomain"
.LASF29:
	.string	"__daylight"
.LASF165:
	.string	"__nbytes"
.LASF148:
	.string	"status"
.LASF197:
	.string	"/root/coreutils"
.LASF176:
	.string	"fopen_safer"
.LASF150:
	.string	"set_binary_mode"
.LASF48:
	.string	"_flags"
.LASF126:
	.string	"output_error_exit"
.LASF102:
	.string	"custom_quoting_style"
.LASF175:
	.string	"setvbuf"
.LASF160:
	.string	"putc_unlocked"
.LASF170:
	.string	"xmalloc"
.LASF110:
	.string	"error_message_count"
.LASF156:
	.string	"lc_messages"
.LASF162:
	.string	"read"
.LASF66:
	.string	"_vtable_offset"
.LASF143:
	.string	"argc"
.LASF72:
	.string	"_freeres_list"
.LASF80:
	.string	"_IO_wide_data"
.LASF185:
	.string	"getopt_long"
.LASF116:
	.string	"FADVISE_WILLNEED"
.LASF194:
	.string	"fputs_unlocked"
.LASF28:
	.string	"__tzname"
.LASF146:
	.string	"main"
.LASF52:
	.string	"_IO_write_base"
.LASF203:
	.string	"emit_ancillary_info"
.LASF138:
	.string	"__ptr"
.LASF202:
	.string	"bad_cast"
.LASF132:
	.string	"files"
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
