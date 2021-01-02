	.file	"set-fields.c"
	.text
.Ltext0:
	.p2align 4
	.type	compare_ranges, @function
compare_ranges:
.LVL0:
.LFB136:
	.file 1 "src/set-fields.c"
	.loc 1 62 1 view -0
	.cfi_startproc
	.loc 1 62 1 is_stmt 0 view .LVU1
	endbr64
	.loc 1 63 3 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 64 3 view .LVU3
	.loc 1 65 3 view .LVU4
	.loc 1 65 33 is_stmt 0 view .LVU5
	movl	(%rsi), %edx
	movl	$-1, %eax
	cmpl	%edx, (%rdi)
	jl	.L1
	.loc 1 65 43 discriminator 1 view .LVU6
	setg	%al
	movzbl	%al, %eax
.L1:
	.loc 1 66 1 view .LVU7
	ret
	.cfi_endproc
.LFE136:
	.size	compare_ranges, .-compare_ranges
	.p2align 4
	.type	add_range_pair, @function
add_range_pair:
.LVL2:
.LFB135:
	.loc 1 49 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 50 3 view .LVU9
	.loc 1 49 1 is_stmt 0 view .LVU10
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 50 13 view .LVU11
	movq	n_frp(%rip), %rdx
	movq	n_frp_allocated(%rip), %rax
	movq	frp(%rip), %rdi
.LVL3:
	.loc 1 50 6 view .LVU12
	cmpq	%rax, %rdx
	je	.L17
.LVL4:
.L6:
	.loc 1 52 3 is_stmt 1 view .LVU13
	.loc 1 52 6 is_stmt 0 view .LVU14
	movq	%rdx, %rax
	.loc 1 54 3 view .LVU15
	addq	$1, %rdx
	.loc 1 52 6 view .LVU16
	salq	$4, %rax
	addq	%rax, %rdi
	.loc 1 52 17 view .LVU17
	movq	%rbp, (%rdi)
	.loc 1 53 3 is_stmt 1 view .LVU18
	.loc 1 53 17 is_stmt 0 view .LVU19
	movq	%rbx, 8(%rdi)
	.loc 1 54 3 is_stmt 1 view .LVU20
	movq	%rdx, n_frp(%rip)
	.loc 1 55 1 is_stmt 0 view .LVU21
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL5:
	.loc 1 55 1 view .LVU22
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL6:
	.loc 1 55 1 view .LVU23
	ret
.LVL7:
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
.LBB22:
	.loc 1 51 5 is_stmt 1 view .LVU24
.LBB23:
.LBI23:
	.file 2 "./lib/xalloc.h"
	.loc 2 174 1 view .LVU25
.LBB24:
	.loc 2 176 3 view .LVU26
	.loc 2 178 3 view .LVU27
	.loc 2 178 6 is_stmt 0 view .LVU28
	testq	%rdi, %rdi
	je	.L18
	.loc 2 200 7 is_stmt 1 view .LVU29
	.loc 2 200 10 is_stmt 0 view .LVU30
	movabsq	$384307168202282324, %rdx
	cmpq	%rdx, %rax
	ja	.L12
	.loc 2 203 7 is_stmt 1 view .LVU31
	.loc 2 203 14 is_stmt 0 view .LVU32
	movq	%rax, %rdx
	shrq	%rdx
	.loc 2 203 9 view .LVU33
	leaq	1(%rax,%rdx), %rax
.LVL8:
	.loc 2 203 9 view .LVU34
	movq	%rax, %rsi
	salq	$4, %rsi
.LVL9:
.L8:
	.loc 2 206 3 is_stmt 1 view .LVU35
	.loc 2 206 7 is_stmt 0 view .LVU36
	movq	%rax, n_frp_allocated(%rip)
	.loc 2 207 3 is_stmt 1 view .LVU37
	.loc 2 207 10 is_stmt 0 view .LVU38
	call	xrealloc@PLT
.LVL10:
	.loc 2 207 10 view .LVU39
	movq	n_frp(%rip), %rdx
.LBE24:
.LBE23:
	.loc 1 51 9 view .LVU40
	movq	%rax, frp(%rip)
.LBB27:
.LBB26:
	.loc 2 207 10 view .LVU41
	movq	%rax, %rdi
.LVL11:
	.loc 2 207 10 view .LVU42
	jmp	.L6
.LVL12:
	.p2align 4,,10
	.p2align 3
.L18:
	.loc 2 180 7 is_stmt 1 view .LVU43
	.loc 2 180 10 is_stmt 0 view .LVU44
	testq	%rax, %rax
	je	.L13
	.loc 2 191 7 is_stmt 1 view .LVU45
	.loc 2 191 11 is_stmt 0 view .LVU46
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rax, %rsi
	shrq	$60, %rcx
	setne	%dl
	salq	$4, %rsi
	js	.L12
	.loc 2 191 10 view .LVU47
	testq	%rdx, %rdx
	je	.L8
.L12:
	.loc 2 192 9 is_stmt 1 view .LVU48
	call	xalloc_die@PLT
.LVL13:
	.p2align 4,,10
	.p2align 3
.L13:
	.loc 2 192 9 is_stmt 0 view .LVU49
	movl	$128, %esi
.LBB25:
	.loc 2 189 13 view .LVU50
	movl	$8, %eax
.LVL14:
	.loc 2 189 13 view .LVU51
	jmp	.L8
.LBE25:
.LBE26:
.LBE27:
.LBE22:
	.cfi_endproc
.LFE135:
	.size	add_range_pair, .-add_range_pair
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"invalid byte or character range"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"invalid field range"
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"byte/character positions are numbered from 1"
	.section	.rodata.str1.1
.LC3:
	.string	"fields are numbered from 1"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"invalid range with no endpoint: -"
	.section	.rodata.str1.1
.LC5:
	.string	"invalid decreasing range"
.LC6:
	.string	"0123456789"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"byte/character offset %s is too large"
	.section	.rodata.str1.1
.LC8:
	.string	"field number %s is too large"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"invalid byte/character position %s"
	.section	.rodata.str1.1
.LC10:
	.string	"invalid field value %s"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"missing list of byte/character positions"
	.section	.rodata.str1.1
.LC12:
	.string	"missing list of fields"
	.text
	.p2align 4
	.globl	set_fields
	.type	set_fields, @function
set_fields:
.LVL15:
.LFB138:
	.loc 1 139 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 139 1 is_stmt 0 view .LVU53
	endbr64
	.loc 1 140 3 is_stmt 1 view .LVU54
.LVL16:
	.loc 1 141 3 view .LVU55
	.loc 1 142 3 view .LVU56
	.loc 1 143 3 view .LVU57
	.loc 1 144 3 view .LVU58
	.loc 1 146 3 view .LVU59
	.loc 1 151 3 view .LVU60
	.loc 1 139 1 is_stmt 0 view .LVU61
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 151 6 view .LVU62
	andl	$1, %eax
	.loc 1 139 1 view .LVU63
	movl	%esi, 28(%rsp)
	.loc 1 151 6 view .LVU64
	movl	%eax, 24(%rsp)
	je	.L72
	.loc 1 151 40 discriminator 1 view .LVU65
	cmpb	$45, (%rdi)
	je	.L97
.L72:
	.loc 1 141 13 view .LVU66
	xorl	%edi, %edi
.LVL17:
	.loc 1 142 8 view .LVU67
	xorl	%edx, %edx
.LVL18:
.L20:
.LBB40:
	.loc 1 242 21 view .LVU68
	movl	%edx, %ebp
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movl	$1, %ebx
	jmp	.L22
.LVL19:
	.p2align 4,,10
	.p2align 3
.L23:
	.loc 1 242 21 view .LVU69
.LBE40:
	.loc 1 181 12 is_stmt 1 view .LVU70
	.loc 1 181 15 is_stmt 0 view .LVU71
	cmpb	$44, %r13b
	je	.L32
	movq	%rdi, 16(%rsp)
	movb	%dl, 8(%rsp)
	.loc 1 182 19 view .LVU72
	call	__ctype_b_loc@PLT
.LVL20:
.LBB47:
.LBI47:
	.file 3 "src/system.h"
	.loc 3 156 29 is_stmt 1 view .LVU73
.LBB48:
	.loc 3 156 50 view .LVU74
	.loc 3 156 50 is_stmt 0 view .LVU75
.LBE48:
.LBE47:
	.loc 1 182 50 view .LVU76
	movzbl	8(%rsp), %edx
	movq	16(%rsp), %rdi
	.loc 1 182 19 view .LVU77
	movq	%rax, %r9
	movzbl	%r13b, %eax
	movq	(%r9), %r9
	.loc 1 182 50 view .LVU78
	testb	$1, (%r9,%rax,2)
	jne	.L32
	testb	%r13b, %r13b
	jne	.L33
.LVL21:
.L32:
	.loc 1 184 11 is_stmt 1 view .LVU79
	.loc 1 186 11 view .LVU80
	.loc 1 186 14 is_stmt 0 view .LVU81
	testb	%bpl, %bpl
	je	.L35
	.loc 1 188 15 is_stmt 1 view .LVU82
.LVL22:
	.loc 1 190 15 view .LVU83
	.loc 1 190 18 is_stmt 0 view .LVU84
	testb	%dl, %dl
	jne	.L36
	.loc 1 190 18 view .LVU85
	testb	%r15b, %r15b
	jne	.L38
	.loc 1 193 19 is_stmt 1 view .LVU86
	.loc 1 193 22 is_stmt 0 view .LVU87
	movl	24(%rsp), %eax
	testl	%eax, %eax
	je	.L98
	.loc 1 194 29 view .LVU88
	movl	$1, %ebx
.LVL23:
.L37:
	.loc 1 204 19 is_stmt 1 view .LVU89
	movq	$-1, %rsi
	movq	%rbx, %rdi
.LVL24:
	.loc 1 204 19 is_stmt 0 view .LVU90
	call	add_range_pair
.LVL25:
.L39:
	.loc 1 228 11 is_stmt 1 view .LVU91
	.loc 1 228 14 is_stmt 0 view .LVU92
	cmpb	$0, (%r14)
	je	.L44
.L103:
	.loc 1 228 14 view .LVU93
	xorl	%edi, %edi
	.loc 1 184 21 view .LVU94
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	.loc 1 233 25 view .LVU95
	xorl	%r15d, %r15d
.LVL26:
	.loc 1 232 25 view .LVU96
	xorl	%edx, %edx
.LVL27:
.L30:
	.loc 1 232 25 view .LVU97
	addq	$1, %r14
.L22:
.LVL28:
	.loc 1 159 3 is_stmt 1 view .LVU98
	.loc 1 161 7 view .LVU99
	.loc 1 161 11 is_stmt 0 view .LVU100
	movzbl	(%r14), %r13d
	.loc 1 161 10 view .LVU101
	cmpb	$45, %r13b
	jne	.L23
	.loc 1 163 11 is_stmt 1 view .LVU102
.LVL29:
	.loc 1 165 11 view .LVU103
	.loc 1 165 14 is_stmt 0 view .LVU104
	testb	%bpl, %bpl
	jne	.L99
	.loc 1 166 13 is_stmt 1 view .LVU105
	.loc 1 170 11 view .LVU106
.LVL30:
	.loc 1 171 11 view .LVU107
	.loc 1 173 11 view .LVU108
	.loc 1 173 32 is_stmt 0 view .LVU109
	testq	%rdi, %rdi
	sete	%cl
	.loc 1 173 14 view .LVU110
	andb	%dl, %cl
	movl	%ecx, %r12d
	jne	.L100
	.loc 1 174 13 is_stmt 1 view .LVU111
	.loc 1 178 11 view .LVU112
	.loc 1 178 44 is_stmt 0 view .LVU113
	testb	%dl, %dl
	je	.L101
	movq	%rdi, %rbx
.LVL31:
	.loc 1 170 22 view .LVU114
	movl	%edx, %ebp
	.loc 1 179 17 view .LVU115
	xorl	%edi, %edi
.LVL32:
	.loc 1 179 17 view .LVU116
	jmp	.L30
.LVL33:
	.p2align 4,,10
	.p2align 3
.L35:
	.loc 1 219 15 is_stmt 1 view .LVU117
	.loc 1 219 18 is_stmt 0 view .LVU118
	testq	%rdi, %rdi
	je	.L102
	.loc 1 220 17 is_stmt 1 view .LVU119
	.loc 1 224 15 view .LVU120
	movq	%rdi, %rsi
	call	add_range_pair
.LVL34:
	.loc 1 225 15 view .LVU121
	.loc 1 228 11 view .LVU122
	.loc 1 228 14 is_stmt 0 view .LVU123
	cmpb	$0, (%r14)
	jne	.L103
.L44:
	.loc 1 278 3 is_stmt 1 view .LVU124
	.loc 1 278 7 is_stmt 0 view .LVU125
	movq	n_frp(%rip), %rsi
	.loc 1 278 6 view .LVU126
	testq	%rsi, %rsi
	je	.L104
	.loc 1 279 5 is_stmt 1 view .LVU127
	.loc 1 283 3 view .LVU128
	movq	frp(%rip), %rdi
	movl	$16, %edx
	leaq	compare_ranges(%rip), %rcx
.LBB49:
	.loc 1 286 15 is_stmt 0 view .LVU129
	xorl	%ebx, %ebx
.LVL35:
	.loc 1 286 3 view .LVU130
	movq	$-2, %r12
.LBE49:
	.loc 1 283 3 view .LVU131
	call	qsort@PLT
.LVL36:
	.loc 1 286 3 is_stmt 1 view .LVU132
.LBB53:
	.loc 1 286 8 view .LVU133
	.loc 1 286 22 view .LVU134
	.loc 1 286 24 is_stmt 0 view .LVU135
	movq	n_frp(%rip), %rdx
	movq	frp(%rip), %r15
.LVL37:
	.loc 1 286 3 view .LVU136
	testq	%rdx, %rdx
	je	.L58
.LVL38:
	.p2align 4,,10
	.p2align 3
.L61:
	.loc 1 288 7 is_stmt 1 view .LVU137
.LBB50:
	.loc 1 288 12 view .LVU138
	.loc 1 288 19 is_stmt 0 view .LVU139
	addq	$1, %rbx
.LVL39:
	.loc 1 288 30 is_stmt 1 view .LVU140
	.loc 1 288 7 is_stmt 0 view .LVU141
	cmpq	%rdx, %rbx
	jnb	.L58
	movq	%rbx, %rbp
	salq	$4, %rbp
	.loc 1 290 31 view .LVU142
	leaq	-16(%rbp), %r13
	.loc 1 293 41 view .LVU143
	leaq	16(%rbp), %r14
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L60:
	.loc 1 292 15 is_stmt 1 discriminator 2 view .LVU144
	.loc 1 292 27 is_stmt 0 discriminator 2 view .LVU145
	cmpq	%rax, 8(%rdi)
	cmovnb	8(%rdi), %rax
	.loc 1 293 41 discriminator 2 view .LVU146
	leaq	(%r15,%r14), %rsi
	.loc 1 293 57 discriminator 2 view .LVU147
	addq	%r12, %rdx
	.loc 1 293 15 discriminator 2 view .LVU148
	salq	$4, %rdx
	.loc 1 292 25 discriminator 2 view .LVU149
	movq	%rax, 8(%rcx)
	.loc 1 293 15 is_stmt 1 discriminator 2 view .LVU150
.LVL40:
.LBB51:
.LBI51:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 4 38 1 discriminator 2 view .LVU151
.LBB52:
	.loc 4 40 3 discriminator 2 view .LVU152
	.loc 4 40 10 is_stmt 0 discriminator 2 view .LVU153
	call	memmove@PLT
.LVL41:
	.loc 4 40 10 discriminator 2 view .LVU154
.LBE52:
.LBE51:
	.loc 1 294 15 is_stmt 1 discriminator 2 view .LVU155
	.loc 1 294 20 is_stmt 0 discriminator 2 view .LVU156
	movq	n_frp(%rip), %rax
	movq	frp(%rip), %r15
	leaq	-1(%rax), %rdx
	movq	%rdx, n_frp(%rip)
	.loc 1 295 15 is_stmt 1 discriminator 2 view .LVU157
.LVL42:
	.loc 1 288 41 discriminator 2 view .LVU158
	.loc 1 288 30 discriminator 2 view .LVU159
	.loc 1 288 7 is_stmt 0 discriminator 2 view .LVU160
	cmpq	%rbx, %rdx
	jbe	.L58
.L62:
	.loc 1 290 11 is_stmt 1 view .LVU161
	.loc 1 290 31 is_stmt 0 view .LVU162
	leaq	(%r15,%r13), %rcx
	.loc 1 290 18 view .LVU163
	leaq	(%r15,%rbp), %rdi
	.loc 1 290 34 view .LVU164
	movq	8(%rcx), %rax
	.loc 1 290 14 view .LVU165
	cmpq	%rax, (%rdi)
	jbe	.L60
	movq	n_frp(%rip), %rdx
.LVL43:
	.loc 1 290 14 view .LVU166
.LBE50:
	.loc 1 286 22 is_stmt 1 view .LVU167
	subq	$1, %r12
	.loc 1 286 3 is_stmt 0 view .LVU168
	cmpq	%rdx, %rbx
	jb	.L61
.LVL44:
	.p2align 4,,10
	.p2align 3
.L58:
	.loc 1 286 3 view .LVU169
.LBE53:
	.loc 1 302 3 is_stmt 1 view .LVU170
	movq	%r15, %rdi
	.loc 1 302 6 is_stmt 0 view .LVU171
	testb	$2, 28(%rsp)
	jne	.L105
.L63:
	.loc 1 308 3 is_stmt 1 view .LVU172
	movq	n_frp(%rip), %rax
	leaq	1(%rax), %rsi
	movq	%rsi, n_frp(%rip)
	.loc 1 309 3 view .LVU173
	.loc 1 309 9 is_stmt 0 view .LVU174
	salq	$4, %rsi
	call	xrealloc@PLT
.LVL45:
	.loc 1 310 26 view .LVU175
	movq	n_frp(%rip), %rdx
	.loc 1 309 7 view .LVU176
	movq	%rax, frp(%rip)
	.loc 1 310 3 is_stmt 1 view .LVU177
	.loc 1 310 26 is_stmt 0 view .LVU178
	salq	$4, %rdx
	leaq	-16(%rax,%rdx), %rax
	.loc 1 310 41 view .LVU179
	movq	$-1, 8(%rax)
	.loc 1 310 21 view .LVU180
	movq	$-1, (%rax)
.LVL46:
	.loc 1 311 1 view .LVU181
	addq	$40, %rsp
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
.LVL47:
	.p2align 4,,10
	.p2align 3
.L36:
	.cfi_restore_state
	.loc 1 196 21 is_stmt 1 view .LVU182
	.loc 1 201 15 view .LVU183
	.loc 1 201 18 is_stmt 0 view .LVU184
	testb	%r15b, %r15b
	je	.L37
.L38:
	.loc 1 209 19 is_stmt 1 view .LVU185
	.loc 1 209 22 is_stmt 0 view .LVU186
	cmpq	%rdi, %rbx
	ja	.L106
	.loc 1 210 21 is_stmt 1 view .LVU187
	.loc 1 212 19 view .LVU188
	movq	%rdi, %rsi
	movq	%rbx, %rdi
.LVL48:
	.loc 1 212 19 is_stmt 0 view .LVU189
	call	add_range_pair
.LVL49:
	.loc 1 212 19 view .LVU190
	jmp	.L39
.LVL50:
	.p2align 4,,10
	.p2align 3
.L101:
	.loc 1 163 21 view .LVU191
	movl	%edx, %r12d
	.loc 1 179 17 view .LVU192
	xorl	%edi, %edi
.LVL51:
	.loc 1 170 22 view .LVU193
	movl	$1, %ebp
	.loc 1 178 44 view .LVU194
	movl	$1, %ebx
.LVL52:
	.loc 1 178 44 view .LVU195
	jmp	.L30
.LVL53:
	.p2align 4,,10
	.p2align 3
.L33:
	.loc 1 235 12 is_stmt 1 view .LVU196
	.loc 1 235 16 is_stmt 0 view .LVU197
	movsbl	%r13b, %eax
	leal	-48(%rax), %r9d
	.loc 1 235 15 view .LVU198
	cmpl	$9, %r9d
	ja	.L45
.LBB54:
	.loc 1 239 11 is_stmt 1 view .LVU199
	.loc 1 240 11 view .LVU200
	.loc 1 240 14 is_stmt 0 view .LVU201
	testb	%r12b, %r12b
	je	.L46
	.loc 1 240 26 discriminator 1 view .LVU202
	cmpq	$0, num_start.7101(%rip)
	je	.L46
.L47:
	.loc 1 242 11 is_stmt 1 view .LVU203
.LVL54:
	.loc 1 244 11 view .LVU204
	.loc 1 247 27 is_stmt 0 view .LVU205
	testb	%bpl, %bpl
	movl	$1, %ecx
.LBB41:
	.loc 1 250 14 view .LVU206
	movabsq	$1844674407370955161, %rsi
.LBE41:
	.loc 1 247 27 view .LVU207
	cmove	%ecx, %edx
.LVL55:
	.loc 1 247 27 view .LVU208
	cmovne	%ebp, %r15d
.LVL56:
	.loc 1 250 11 is_stmt 1 view .LVU209
.LBB44:
	.loc 1 250 14 is_stmt 0 view .LVU210
	cmpq	%rsi, %rdi
	ja	.L49
	.loc 1 250 16 discriminator 1 view .LVU211
	leaq	(%rdi,%rdi,4), %rcx
	subl	$48, %eax
	cltq
	leaq	(%rax,%rcx,2), %rax
.LVL57:
	.loc 1 251 15 discriminator 1 view .LVU212
	cmpq	%rdi, %rax
	jb	.L49
	cmpq	$-1, %rax
	je	.L49
	movq	%rax, %rdi
.LBE44:
	.loc 1 242 21 view .LVU213
	movl	$1, %r12d
	jmp	.L30
.LVL58:
	.p2align 4,,10
	.p2align 3
.L46:
	.loc 1 241 13 is_stmt 1 view .LVU214
	.loc 1 241 23 is_stmt 0 view .LVU215
	movq	%r14, num_start.7101(%rip)
	jmp	.L47
.LVL59:
.L97:
	.loc 1 241 23 view .LVU216
.LBE54:
	.loc 1 151 37 discriminator 1 view .LVU217
	cmpb	$0, 1(%rdi)
	jne	.L72
	.loc 1 153 7 is_stmt 1 view .LVU218
.LVL60:
	.loc 1 154 7 view .LVU219
	.loc 1 155 7 view .LVU220
	.loc 1 156 7 view .LVU221
	.loc 1 156 15 is_stmt 0 view .LVU222
	addq	$1, %r14
.LVL61:
	.loc 1 153 13 view .LVU223
	movl	$1, %edi
	.loc 1 154 21 view .LVU224
	movl	$1, %edx
	jmp	.L20
.LVL62:
.L105:
	.loc 1 303 5 is_stmt 1 view .LVU225
.LBB55:
.LBI55:
	.loc 1 72 1 view .LVU226
.LBB56:
	.loc 1 74 3 view .LVU227
	.loc 1 75 3 view .LVU228
	.loc 1 77 3 view .LVU229
	.loc 1 77 7 is_stmt 0 view .LVU230
	movq	$0, frp(%rip)
.LVL63:
	.loc 1 78 3 is_stmt 1 view .LVU231
	.loc 1 81 11 is_stmt 0 view .LVU232
	movq	(%r15), %rax
	.loc 1 78 9 view .LVU233
	movq	$0, n_frp(%rip)
	.loc 1 79 3 is_stmt 1 view .LVU234
	.loc 1 79 19 is_stmt 0 view .LVU235
	movq	$0, n_frp_allocated(%rip)
	.loc 1 81 3 is_stmt 1 view .LVU236
	.loc 1 81 6 is_stmt 0 view .LVU237
	cmpq	$1, %rax
	ja	.L107
.LVL64:
.L64:
.LBB57:
	.loc 1 84 22 is_stmt 1 view .LVU238
	movq	%rdx, %rbp
	leaq	16(%r15), %rbx
	salq	$4, %rbp
	addq	%r15, %rbp
	.loc 1 84 3 is_stmt 0 view .LVU239
	cmpq	$1, %rdx
	jbe	.L70
.LVL65:
	.p2align 4,,10
	.p2align 3
.L69:
	.loc 1 86 7 is_stmt 1 view .LVU240
	.loc 1 86 21 is_stmt 0 view .LVU241
	movq	-8(%rbx), %rax
	.loc 1 86 32 view .LVU242
	movq	(%rbx), %rsi
	.loc 1 86 21 view .LVU243
	leaq	1(%rax), %rdi
	.loc 1 86 10 view .LVU244
	cmpq	%rsi, %rdi
	je	.L68
	.loc 1 89 7 view .LVU245
	subq	$1, %rsi
	movq	%rdx, 8(%rsp)
	.loc 1 89 7 is_stmt 1 view .LVU246
	call	add_range_pair
.LVL66:
	movq	8(%rsp), %rdx
.L68:
	.loc 1 84 29 view .LVU247
	.loc 1 84 22 view .LVU248
	addq	$16, %rbx
	.loc 1 84 3 is_stmt 0 view .LVU249
	cmpq	%rbx, %rbp
	jne	.L69
.L70:
.LBE57:
	.loc 1 92 3 is_stmt 1 view .LVU250
	.loc 1 92 13 is_stmt 0 view .LVU251
	salq	$4, %rdx
	movq	-8(%r15,%rdx), %rax
	.loc 1 92 6 view .LVU252
	cmpq	$-1, %rax
	jne	.L108
	.loc 1 95 3 is_stmt 1 view .LVU253
	movq	%r15, %rdi
	call	free@PLT
.LVL67:
	movq	frp(%rip), %rdi
	.loc 1 96 1 is_stmt 0 view .LVU254
	jmp	.L63
.L108:
	.loc 1 93 5 is_stmt 1 view .LVU255
	leaq	1(%rax), %rdi
	movq	$-1, %rsi
	call	add_range_pair
.LVL68:
	.loc 1 95 3 view .LVU256
	movq	%r15, %rdi
	call	free@PLT
.LVL69:
	movq	frp(%rip), %rdi
	jmp	.L63
.LVL70:
.L107:
	.loc 1 82 5 is_stmt 0 view .LVU257
	leaq	-1(%rax), %rsi
	movl	$1, %edi
	movq	%rdx, 8(%rsp)
	.loc 1 82 5 is_stmt 1 view .LVU258
	call	add_range_pair
.LVL71:
	.loc 1 82 5 is_stmt 0 view .LVU259
	movq	8(%rsp), %rdx
	jmp	.L64
.LVL72:
.L98:
	.loc 1 82 5 view .LVU260
.LBE56:
.LBE55:
	.loc 1 196 21 is_stmt 1 view .LVU261
	.loc 1 196 21 view .LVU262
	movl	$5, %edx
.LVL73:
	.loc 1 196 21 is_stmt 0 view .LVU263
	leaq	.LC4(%rip), %rsi
.LVL74:
.L96:
	.loc 1 279 5 discriminator 2 view .LVU264
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL75:
	movq	%rax, %rdx
.LVL76:
.L57:
	.loc 1 279 5 discriminator 4 view .LVU265
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL77:
	.loc 1 279 5 is_stmt 1 discriminator 4 view .LVU266
	movl	$1, %edi
	call	usage@PLT
.LVL78:
.L49:
.LBB58:
.LBB45:
.LBB42:
	.loc 1 256 15 view .LVU267
	.loc 1 256 28 is_stmt 0 view .LVU268
	movq	num_start.7101(%rip), %rbp
.LVL79:
	.loc 1 256 28 view .LVU269
	leaq	.LC6(%rip), %rsi
	movq	%rbp, %rdi
	call	strspn@PLT
.LVL80:
	.loc 1 257 31 view .LVU270
	movq	%rbp, %rdi
	.loc 1 256 28 view .LVU271
	movq	%rax, %rsi
.LVL81:
	.loc 1 257 15 is_stmt 1 view .LVU272
	.loc 1 257 31 is_stmt 0 view .LVU273
	call	xstrndup@PLT
.LVL82:
	.loc 1 258 15 view .LVU274
	movq	%rax, %rdi
	.loc 1 257 31 view .LVU275
	movq	%rax, %rbp
.LVL83:
	.loc 1 258 15 is_stmt 1 view .LVU276
	call	quote@PLT
.LVL84:
	.loc 1 259 29 is_stmt 0 view .LVU277
	movl	$5, %edx
	.loc 1 258 15 view .LVU278
	movq	%rax, %r12
	testb	$4, 28(%rsp)
	je	.L51
	.loc 1 259 29 view .LVU279
	leaq	.LC7(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL85:
	movq	%rax, %rdx
.L52:
	.loc 1 258 15 view .LVU280
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	error@PLT
.LVL86:
	.loc 1 262 15 is_stmt 1 view .LVU281
	movq	%rbp, %rdi
	call	free@PLT
.LVL87:
	.loc 1 263 15 view .LVU282
	movl	$1, %edi
	call	usage@PLT
.LVL88:
.L106:
	.loc 1 263 15 is_stmt 0 view .LVU283
.LBE42:
.LBE45:
.LBE58:
	.loc 1 210 21 is_stmt 1 view .LVU284
	.loc 1 210 21 view .LVU285
	movl	$5, %edx
.LVL89:
	.loc 1 210 21 is_stmt 0 view .LVU286
	leaq	.LC5(%rip), %rsi
	jmp	.L96
.LVL90:
.L100:
	.loc 1 174 13 is_stmt 1 view .LVU287
	.loc 1 174 13 view .LVU288
	movl	$5, %edx
.LVL91:
	.loc 1 174 13 is_stmt 0 view .LVU289
	testb	$4, 28(%rsp)
	je	.L42
	.loc 1 174 13 discriminator 1 view .LVU290
	leaq	.LC2(%rip), %rsi
	xorl	%edi, %edi
.LVL92:
	.loc 1 174 13 discriminator 1 view .LVU291
	call	dcgettext@PLT
.LVL93:
	movq	%rax, %rdx
	jmp	.L57
.LVL94:
.L99:
	.loc 1 166 13 is_stmt 1 view .LVU292
	.loc 1 166 13 view .LVU293
	movl	$5, %edx
.LVL95:
	.loc 1 166 13 is_stmt 0 view .LVU294
	testb	$4, 28(%rsp)
	je	.L25
	.loc 1 166 13 discriminator 1 view .LVU295
	leaq	.LC0(%rip), %rsi
	xorl	%edi, %edi
.LVL96:
	.loc 1 166 13 discriminator 1 view .LVU296
	call	dcgettext@PLT
.LVL97:
	movq	%rax, %rdx
	jmp	.L57
.LVL98:
.L42:
	.loc 1 220 17 discriminator 2 view .LVU297
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
.LVL99:
	.loc 1 220 17 discriminator 2 view .LVU298
	call	dcgettext@PLT
.LVL100:
	movq	%rax, %rdx
	jmp	.L57
.LVL101:
.L25:
	.loc 1 166 13 discriminator 2 view .LVU299
	leaq	.LC1(%rip), %rsi
	xorl	%edi, %edi
.LVL102:
	.loc 1 166 13 discriminator 2 view .LVU300
	call	dcgettext@PLT
.LVL103:
	movq	%rax, %rdx
	jmp	.L57
.LVL104:
.L102:
	.loc 1 220 17 is_stmt 1 view .LVU301
	.loc 1 220 17 view .LVU302
	movl	$5, %edx
.LVL105:
	.loc 1 220 17 is_stmt 0 view .LVU303
	testb	$4, 28(%rsp)
	je	.L42
	.loc 1 220 17 discriminator 1 view .LVU304
	leaq	.LC2(%rip), %rsi
	call	dcgettext@PLT
.LVL106:
	.loc 1 220 17 discriminator 1 view .LVU305
	movq	%rax, %rdx
	jmp	.L57
.LVL107:
.L51:
.LBB59:
.LBB46:
.LBB43:
	.loc 1 260 29 view .LVU306
	leaq	.LC8(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL108:
	movq	%rax, %rdx
	jmp	.L52
.LVL109:
.L104:
	.loc 1 260 29 view .LVU307
.LBE43:
.LBE46:
.LBE59:
	.loc 1 279 5 is_stmt 1 view .LVU308
	.loc 1 279 5 view .LVU309
	movl	$5, %edx
	testb	$4, 28(%rsp)
	je	.L56
	.loc 1 279 5 is_stmt 0 discriminator 1 view .LVU310
	leaq	.LC11(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL110:
	movq	%rax, %rdx
	jmp	.L57
.LVL111:
	.p2align 4,,10
	.p2align 3
.L45:
	.loc 1 270 11 is_stmt 1 view .LVU311
	movq	%r14, %rdi
.LVL112:
	.loc 1 270 11 is_stmt 0 view .LVU312
	call	quote@PLT
.LVL113:
	.loc 1 271 25 view .LVU313
	movl	$5, %edx
	.loc 1 270 11 view .LVU314
	movq	%rax, %r12
.LVL114:
	.loc 1 270 11 view .LVU315
	testb	$4, 28(%rsp)
	je	.L53
	.loc 1 271 25 view .LVU316
	leaq	.LC9(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL115:
	movq	%rax, %rdx
.L54:
	.loc 1 270 11 view .LVU317
	xorl	%edi, %edi
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL116:
	.loc 1 274 11 is_stmt 1 view .LVU318
	movl	$1, %edi
	call	usage@PLT
.LVL117:
.L56:
	.loc 1 279 5 is_stmt 0 discriminator 2 view .LVU319
	leaq	.LC12(%rip), %rsi
	jmp	.L96
.LVL118:
.L53:
	.loc 1 272 25 view .LVU320
	leaq	.LC10(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL119:
	movq	%rax, %rdx
	jmp	.L54
	.cfi_endproc
.LFE138:
	.size	set_fields, .-set_fields
	.p2align 4
	.globl	reset_fields
	.type	reset_fields, @function
reset_fields:
.LFB139:
	.loc 1 315 1 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	.loc 1 316 3 view .LVU322
	.loc 1 315 1 is_stmt 0 view .LVU323
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 318 3 view .LVU324
	movq	frp(%rip), %rdi
	.loc 1 316 9 view .LVU325
	movq	$0, n_frp(%rip)
	.loc 1 317 3 is_stmt 1 view .LVU326
	.loc 1 317 19 is_stmt 0 view .LVU327
	movq	$0, n_frp_allocated(%rip)
	.loc 1 318 3 is_stmt 1 view .LVU328
	call	free@PLT
.LVL120:
	.loc 1 319 3 view .LVU329
	.loc 1 319 7 is_stmt 0 view .LVU330
	movq	$0, frp(%rip)
	.loc 1 320 1 view .LVU331
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE139:
	.size	reset_fields, .-reset_fields
	.local	num_start.7101
	.comm	num_start.7101,8,8
	.local	n_frp_allocated
	.comm	n_frp_allocated,8,8
	.globl	n_frp
	.bss
	.align 8
	.type	n_frp, @object
	.size	n_frp, 8
n_frp:
	.zero	8
	.globl	frp
	.align 8
	.type	frp, @object
	.size	frp, 8
frp:
	.zero	8
	.text
.Letext0:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 8 "./lib/sys/select.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/signal.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/errno.h"
	.file 14 "src/version.h"
	.file 15 "./lib/exitfail.h"
	.file 16 "/usr/include/stdint.h"
	.file 17 "./lib/timespec.h"
	.file 18 "/usr/include/ctype.h"
	.file 19 "./lib/xalloc-oversized.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 22 "/usr/include/stdio.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/quote.h"
	.file 29 "src/set-fields.h"
	.file 30 "/usr/include/stdlib.h"
	.file 31 "/usr/include/string.h"
	.file 32 "./lib/xstrndup.h"
	.file 33 "/usr/include/libintl.h"
	.file 34 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf64
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF151
	.byte	0xc
	.long	.LASF152
	.long	.LASF153
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
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF8
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF9
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF10
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x63
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
	.byte	0x6
	.byte	0x7
	.byte	0x12
	.long	0x8e
	.uleb128 0x5
	.long	.LASF13
	.byte	0x7
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF16
	.byte	0x8
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
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0xec
	.uleb128 0xc
	.long	.LASF18
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF19
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xc
	.long	.LASF20
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0xec
	.uleb128 0xc
	.long	.LASF21
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF22
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0x9
	.long	.LASF23
	.byte	0x9
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x5
	.long	.LASF24
	.byte	0x7
	.byte	0x8f
	.byte	0x1a
	.long	0x63
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF25
	.uleb128 0xd
	.uleb128 0x7
	.byte	0x8
	.long	0x164
	.uleb128 0xa
	.long	0xe7
	.long	0x17b
	.uleb128 0xb
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x16b
	.uleb128 0x9
	.long	.LASF26
	.byte	0xa
	.value	0x11e
	.byte	0x1a
	.long	0x17b
	.uleb128 0x9
	.long	.LASF27
	.byte	0xa
	.value	0x11f
	.byte	0x1a
	.long	0x17b
	.uleb128 0x9
	.long	.LASF28
	.byte	0xb
	.value	0x21f
	.byte	0xf
	.long	0x1a7
	.uleb128 0x7
	.byte	0x8
	.long	0x9c
	.uleb128 0x9
	.long	.LASF29
	.byte	0xb
	.value	0x221
	.byte	0xf
	.long	0x1a7
	.uleb128 0xc
	.long	.LASF30
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x9c
	.uleb128 0xc
	.long	.LASF31
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF32
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF33
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF34
	.byte	0xd
	.byte	0x2d
	.byte	0xe
	.long	0x9c
	.uleb128 0xc
	.long	.LASF35
	.byte	0xd
	.byte	0x2e
	.byte	0xe
	.long	0x9c
	.uleb128 0x7
	.byte	0x8
	.long	0x208
	.uleb128 0xe
	.uleb128 0xc
	.long	.LASF36
	.byte	0xe
	.byte	0x1
	.byte	0x14
	.long	0xe1
	.uleb128 0xc
	.long	.LASF37
	.byte	0xf
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x5
	.long	.LASF38
	.byte	0x10
	.byte	0x66
	.byte	0x16
	.long	0x6a
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x11
	.byte	0x29
	.byte	0x6
	.long	0x245
	.uleb128 0x10
	.long	.LASF39
	.long	0x3b9aca00
	.byte	0
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x11
	.byte	0x2a
	.byte	0x6
	.long	0x25a
	.uleb128 0x11
	.long	.LASF40
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x12
	.byte	0x2f
	.byte	0x1
	.long	0x2b9
	.uleb128 0x12
	.long	.LASF41
	.value	0x100
	.uleb128 0x12
	.long	.LASF42
	.value	0x200
	.uleb128 0x12
	.long	.LASF43
	.value	0x400
	.uleb128 0x12
	.long	.LASF44
	.value	0x800
	.uleb128 0x12
	.long	.LASF45
	.value	0x1000
	.uleb128 0x12
	.long	.LASF46
	.value	0x2000
	.uleb128 0x12
	.long	.LASF47
	.value	0x4000
	.uleb128 0x12
	.long	.LASF48
	.value	0x8000
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.uleb128 0x11
	.long	.LASF50
	.byte	0x2
	.uleb128 0x11
	.long	.LASF51
	.byte	0x4
	.uleb128 0x11
	.long	.LASF52
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF53
	.byte	0x13
	.byte	0x22
	.byte	0x13
	.long	0x151
	.uleb128 0x13
	.long	.LASF114
	.byte	0xd8
	.byte	0x14
	.byte	0x31
	.byte	0x8
	.long	0x44c
	.uleb128 0x14
	.long	.LASF54
	.byte	0x14
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x14
	.long	.LASF55
	.byte	0x14
	.byte	0x36
	.byte	0x9
	.long	0x9c
	.byte	0x8
	.uleb128 0x14
	.long	.LASF56
	.byte	0x14
	.byte	0x37
	.byte	0x9
	.long	0x9c
	.byte	0x10
	.uleb128 0x14
	.long	.LASF57
	.byte	0x14
	.byte	0x38
	.byte	0x9
	.long	0x9c
	.byte	0x18
	.uleb128 0x14
	.long	.LASF58
	.byte	0x14
	.byte	0x39
	.byte	0x9
	.long	0x9c
	.byte	0x20
	.uleb128 0x14
	.long	.LASF59
	.byte	0x14
	.byte	0x3a
	.byte	0x9
	.long	0x9c
	.byte	0x28
	.uleb128 0x14
	.long	.LASF60
	.byte	0x14
	.byte	0x3b
	.byte	0x9
	.long	0x9c
	.byte	0x30
	.uleb128 0x14
	.long	.LASF61
	.byte	0x14
	.byte	0x3c
	.byte	0x9
	.long	0x9c
	.byte	0x38
	.uleb128 0x14
	.long	.LASF62
	.byte	0x14
	.byte	0x3d
	.byte	0x9
	.long	0x9c
	.byte	0x40
	.uleb128 0x14
	.long	.LASF63
	.byte	0x14
	.byte	0x40
	.byte	0x9
	.long	0x9c
	.byte	0x48
	.uleb128 0x14
	.long	.LASF64
	.byte	0x14
	.byte	0x41
	.byte	0x9
	.long	0x9c
	.byte	0x50
	.uleb128 0x14
	.long	.LASF65
	.byte	0x14
	.byte	0x42
	.byte	0x9
	.long	0x9c
	.byte	0x58
	.uleb128 0x14
	.long	.LASF66
	.byte	0x14
	.byte	0x44
	.byte	0x16
	.long	0x465
	.byte	0x60
	.uleb128 0x14
	.long	.LASF67
	.byte	0x14
	.byte	0x46
	.byte	0x14
	.long	0x46b
	.byte	0x68
	.uleb128 0x14
	.long	.LASF68
	.byte	0x14
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x14
	.long	.LASF69
	.byte	0x14
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x14
	.long	.LASF70
	.byte	0x14
	.byte	0x4a
	.byte	0xb
	.long	0x76
	.byte	0x78
	.uleb128 0x14
	.long	.LASF71
	.byte	0x14
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0x14
	.long	.LASF72
	.byte	0x14
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0x14
	.long	.LASF73
	.byte	0x14
	.byte	0x4f
	.byte	0x8
	.long	0x471
	.byte	0x83
	.uleb128 0x14
	.long	.LASF74
	.byte	0x14
	.byte	0x51
	.byte	0xf
	.long	0x481
	.byte	0x88
	.uleb128 0x14
	.long	.LASF75
	.byte	0x14
	.byte	0x59
	.byte	0xd
	.long	0x82
	.byte	0x90
	.uleb128 0x14
	.long	.LASF76
	.byte	0x14
	.byte	0x5b
	.byte	0x17
	.long	0x48c
	.byte	0x98
	.uleb128 0x14
	.long	.LASF77
	.byte	0x14
	.byte	0x5c
	.byte	0x19
	.long	0x497
	.byte	0xa0
	.uleb128 0x14
	.long	.LASF78
	.byte	0x14
	.byte	0x5d
	.byte	0x14
	.long	0x46b
	.byte	0xa8
	.uleb128 0x14
	.long	.LASF79
	.byte	0x14
	.byte	0x5e
	.byte	0x9
	.long	0x9a
	.byte	0xb0
	.uleb128 0x14
	.long	.LASF80
	.byte	0x14
	.byte	0x5f
	.byte	0xa
	.long	0xba
	.byte	0xb8
	.uleb128 0x14
	.long	.LASF81
	.byte	0x14
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x14
	.long	.LASF82
	.byte	0x14
	.byte	0x62
	.byte	0x8
	.long	0x49d
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF83
	.byte	0x15
	.byte	0x7
	.byte	0x19
	.long	0x2c5
	.uleb128 0x15
	.long	.LASF154
	.byte	0x14
	.byte	0x2b
	.byte	0xe
	.uleb128 0x16
	.long	.LASF84
	.uleb128 0x7
	.byte	0x8
	.long	0x460
	.uleb128 0x7
	.byte	0x8
	.long	0x2c5
	.uleb128 0xa
	.long	0xa2
	.long	0x481
	.uleb128 0xb
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x458
	.uleb128 0x16
	.long	.LASF85
	.uleb128 0x7
	.byte	0x8
	.long	0x487
	.uleb128 0x16
	.long	.LASF86
	.uleb128 0x7
	.byte	0x8
	.long	0x492
	.uleb128 0xa
	.long	0xa2
	.long	0x4ad
	.uleb128 0xb
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.long	.LASF87
	.byte	0x16
	.byte	0x89
	.byte	0xe
	.long	0x4b9
	.uleb128 0x7
	.byte	0x8
	.long	0x44c
	.uleb128 0xc
	.long	.LASF88
	.byte	0x16
	.byte	0x8a
	.byte	0xe
	.long	0x4b9
	.uleb128 0xc
	.long	.LASF89
	.byte	0x16
	.byte	0x8b
	.byte	0xe
	.long	0x4b9
	.uleb128 0xc
	.long	.LASF90
	.byte	0x17
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	0xe7
	.long	0x4ee
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	0x4e3
	.uleb128 0xc
	.long	.LASF91
	.byte	0x17
	.byte	0x1b
	.byte	0x1a
	.long	0x4ee
	.uleb128 0xc
	.long	.LASF92
	.byte	0x17
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF93
	.byte	0x17
	.byte	0x1f
	.byte	0x1a
	.long	0x4ee
	.uleb128 0xa
	.long	0xa9
	.long	0x522
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	0x517
	.uleb128 0xc
	.long	.LASF94
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x522
	.uleb128 0xc
	.long	.LASF95
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0xe1
	.uleb128 0x18
	.long	.LASF155
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x594
	.uleb128 0x11
	.long	.LASF96
	.byte	0
	.uleb128 0x11
	.long	.LASF97
	.byte	0x1
	.uleb128 0x11
	.long	.LASF98
	.byte	0x2
	.uleb128 0x11
	.long	.LASF99
	.byte	0x3
	.uleb128 0x11
	.long	.LASF100
	.byte	0x4
	.uleb128 0x11
	.long	.LASF101
	.byte	0x5
	.uleb128 0x11
	.long	.LASF102
	.byte	0x6
	.uleb128 0x11
	.long	.LASF103
	.byte	0x7
	.uleb128 0x11
	.long	.LASF104
	.byte	0x8
	.uleb128 0x11
	.long	.LASF105
	.byte	0x9
	.uleb128 0x11
	.long	.LASF106
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x53f
	.uleb128 0x9
	.long	.LASF107
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x4ee
	.uleb128 0xa
	.long	0x594
	.long	0x5b1
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	0x5a6
	.uleb128 0x9
	.long	.LASF108
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x5b1
	.uleb128 0xc
	.long	.LASF109
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x165
	.uleb128 0xc
	.long	.LASF110
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0xc
	.long	.LASF111
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x16
	.long	.LASF112
	.uleb128 0xc
	.long	.LASF113
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x5e7
	.uleb128 0x13
	.long	.LASF115
	.byte	0x10
	.byte	0x1d
	.byte	0x14
	.byte	0x8
	.long	0x61e
	.uleb128 0x19
	.string	"lo"
	.byte	0x1d
	.byte	0x16
	.byte	0xf
	.long	0x221
	.byte	0
	.uleb128 0x19
	.string	"hi"
	.byte	0x1d
	.byte	0x17
	.byte	0xf
	.long	0x221
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.string	"frp"
	.byte	0x1d
	.byte	0x1b
	.byte	0x21
	.long	0x62a
	.uleb128 0x7
	.byte	0x8
	.long	0x5f8
	.uleb128 0xc
	.long	.LASF116
	.byte	0x1d
	.byte	0x1e
	.byte	0xf
	.long	0xba
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1d
	.byte	0x22
	.byte	0x1
	.long	0x65d
	.uleb128 0x11
	.long	.LASF117
	.byte	0x1
	.uleb128 0x11
	.long	.LASF118
	.byte	0x2
	.uleb128 0x11
	.long	.LASF119
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.long	0x61e
	.byte	0x1
	.byte	0x1c
	.byte	0x1a
	.uleb128 0x9
	.byte	0x3
	.quad	frp
	.uleb128 0x1b
	.long	0x630
	.byte	0x1
	.byte	0x1f
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	n_frp
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x1
	.byte	0x22
	.byte	0xf
	.long	0xba
	.uleb128 0x9
	.byte	0x3
	.quad	n_frp_allocated
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x1
	.value	0x13a
	.byte	0x1
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c4
	.uleb128 0x1e
	.quad	.LVL120
	.long	0xed4
	.byte	0
	.uleb128 0x1f
	.long	.LASF121
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0xcbe
	.uleb128 0x20
	.long	.LASF122
	.byte	0x1
	.byte	0x8a
	.byte	0x19
	.long	0xe1
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x20
	.long	.LASF123
	.byte	0x1
	.byte	0x8a
	.byte	0x30
	.long	0x3b
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x21
	.long	.LASF124
	.byte	0x1
	.byte	0x8c
	.byte	0xd
	.long	0x221
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x21
	.long	.LASF125
	.byte	0x1
	.byte	0x8d
	.byte	0xd
	.long	0x221
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x21
	.long	.LASF126
	.byte	0x1
	.byte	0x8e
	.byte	0x8
	.long	0xcbe
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x21
	.long	.LASF127
	.byte	0x1
	.byte	0x8f
	.byte	0x8
	.long	0xcbe
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x21
	.long	.LASF128
	.byte	0x1
	.byte	0x90
	.byte	0x8
	.long	0xcbe
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x21
	.long	.LASF129
	.byte	0x1
	.byte	0x92
	.byte	0x8
	.long	0xcbe
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x30
	.long	0x8c7
	.uleb128 0x1c
	.long	.LASF131
	.byte	0x1
	.byte	0xef
	.byte	0x1e
	.long	0xe1
	.uleb128 0x9
	.byte	0x3
	.quad	num_start.7101
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x23
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x100
	.byte	0x16
	.long	0xba
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x25
	.long	.LASF132
	.byte	0x1
	.value	0x101
	.byte	0x15
	.long	0x9c
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x26
	.quad	.LVL80
	.long	0xee1
	.long	0x7fa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x26
	.quad	.LVL82
	.long	0xeee
	.long	0x812
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL84
	.long	0xefa
	.long	0x82a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL85
	.long	0xf06
	.long	0x853
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL86
	.long	0xf12
	.long	0x875
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL87
	.long	0xed4
	.long	0x88d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL88
	.long	0xf1e
	.long	0x8a4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.quad	.LVL108
	.long	0xf06
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.Ldebug_ranges0+0xd0
	.long	0x96c
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x11e
	.byte	0xf
	.long	0xba
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x29
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.value	0x120
	.byte	0x13
	.long	0xba
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x2a
	.long	0xe9e
	.quad	.LBI51
	.value	.LVU151
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.byte	0x1
	.value	0x125
	.byte	0xf
	.uleb128 0x2b
	.long	0xec7
	.uleb128 0x2c
	.long	0xebb
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x2c
	.long	0xeaf
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x28
	.quad	.LVL41
	.long	0xf2b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0xe81
	.quad	.LBI47
	.value	.LVU73
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.byte	0x1
	.byte	0xb6
	.byte	0x13
	.long	0x9a0
	.uleb128 0x2c
	.long	0xe92
	.long	.LLST18
	.long	.LVUS18
	.byte	0
	.uleb128 0x2e
	.long	0xcc5
	.quad	.LBI55
	.value	.LVU226
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.byte	0x1
	.value	0x12f
	.byte	0x5
	.long	0xa71
	.uleb128 0x2f
	.long	0xcd2
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x2f
	.long	0xcdc
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x30
	.long	0xce6
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0xa15
	.uleb128 0x2f
	.long	0xce7
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x1e
	.quad	.LVL66
	.long	0xd56
	.byte	0
	.uleb128 0x26
	.quad	.LVL67
	.long	0xed4
	.long	0xa2d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL68
	.long	0xd56
	.long	0xa45
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x26
	.quad	.LVL69
	.long	0xed4
	.long	0xa5d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL71
	.long	0xd56
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL20
	.long	0xf36
	.uleb128 0x26
	.quad	.LVL25
	.long	0xd56
	.long	0xa9c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1e
	.quad	.LVL34
	.long	0xd56
	.uleb128 0x26
	.quad	.LVL36
	.long	0xf42
	.long	0xacd
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	compare_ranges
	.byte	0
	.uleb128 0x1e
	.quad	.LVL45
	.long	0xf4f
	.uleb128 0x26
	.quad	.LVL49
	.long	0xd56
	.long	0xaf2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL75
	.long	0xf06
	.long	0xb09
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.quad	.LVL77
	.long	0xf12
	.long	0xb25
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.quad	.LVL78
	.long	0xf1e
	.long	0xb3c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.quad	.LVL93
	.long	0xf06
	.long	0xb65
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL97
	.long	0xf06
	.long	0xb8e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL100
	.long	0xf06
	.long	0xbb2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x26
	.quad	.LVL103
	.long	0xf06
	.long	0xbd6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x26
	.quad	.LVL106
	.long	0xf06
	.long	0xbfa
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL110
	.long	0xf06
	.long	0xc23
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL113
	.long	0xefa
	.long	0xc3b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL115
	.long	0xf06
	.long	0xc64
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL116
	.long	0xf12
	.long	0xc86
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL117
	.long	0xf1e
	.long	0xc9d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.quad	.LVL119
	.long	0xf06
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF133
	.uleb128 0x31
	.long	.LASF156
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.long	0xcf3
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.byte	0x4a
	.byte	0x1c
	.long	0x62a
	.uleb128 0x32
	.string	"n"
	.byte	0x1
	.byte	0x4b
	.byte	0xa
	.long	0xba
	.uleb128 0x33
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.byte	0x54
	.byte	0xf
	.long	0xba
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF157
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	0x57
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0xd56
	.uleb128 0x35
	.string	"a"
	.byte	0x1
	.byte	0x3d
	.byte	0x1d
	.long	0x202
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x35
	.string	"b"
	.byte	0x1
	.byte	0x3d
	.byte	0x2c
	.long	0x202
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.long	.LASF134
	.byte	0x1
	.byte	0x3f
	.byte	0x7
	.long	0x57
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x21
	.long	.LASF135
	.byte	0x1
	.byte	0x40
	.byte	0x7
	.long	0x57
	.long	.LLST1
	.long	.LVUS1
	.byte	0
	.uleb128 0x36
	.long	.LASF158
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xe2d
	.uleb128 0x37
	.string	"lo"
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.long	0x221
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x37
	.string	"hi"
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.long	0x221
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x38
	.long	0xe2d
	.quad	.LBI23
	.value	.LVU25
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x33
	.byte	0xb
	.uleb128 0x2c
	.long	0xe53
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2c
	.long	0xe48
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2c
	.long	0xe3e
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x23
	.long	.Ldebug_ranges0+0
	.uleb128 0x2f
	.long	0xe5d
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x39
	.long	0xe67
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x1e
	.quad	.LVL10
	.long	0xf4f
	.uleb128 0x1e
	.quad	.LVL13
	.long	0xf5b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF159
	.byte	0x2
	.byte	0xae
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.long	0xe7b
	.uleb128 0x3b
	.string	"p"
	.byte	0x2
	.byte	0xae
	.byte	0x13
	.long	0x9a
	.uleb128 0x3b
	.string	"pn"
	.byte	0x2
	.byte	0xae
	.byte	0x1e
	.long	0xe7b
	.uleb128 0x3b
	.string	"s"
	.byte	0x2
	.byte	0xae
	.byte	0x29
	.long	0xba
	.uleb128 0x32
	.string	"n"
	.byte	0x2
	.byte	0xb0
	.byte	0xa
	.long	0xba
	.uleb128 0x33
	.uleb128 0x3c
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2
	.byte	0xba
	.byte	0x10
	.uleb128 0x11
	.long	.LASF136
	.byte	0x80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0x3d
	.long	.LASF160
	.byte	0x3
	.byte	0x9c
	.byte	0x1d
	.long	0x2d
	.byte	0x3
	.long	0xe9e
	.uleb128 0x3b
	.string	"ch"
	.byte	0x3
	.byte	0x9c
	.byte	0x2c
	.long	0xa2
	.byte	0
	.uleb128 0x3e
	.long	.LASF161
	.byte	0x4
	.byte	0x26
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.long	0xed4
	.uleb128 0x3f
	.long	.LASF137
	.byte	0x4
	.byte	0x26
	.byte	0x1
	.long	0x9a
	.uleb128 0x3f
	.long	.LASF138
	.byte	0x4
	.byte	0x26
	.byte	0x1
	.long	0x202
	.uleb128 0x3f
	.long	.LASF139
	.byte	0x4
	.byte	0x26
	.byte	0x1
	.long	0xba
	.byte	0
	.uleb128 0x40
	.long	.LASF140
	.long	.LASF140
	.byte	0x1e
	.value	0x235
	.byte	0xd
	.uleb128 0x40
	.long	.LASF141
	.long	.LASF141
	.byte	0x1f
	.value	0x115
	.byte	0xf
	.uleb128 0x41
	.long	.LASF142
	.long	.LASF142
	.byte	0x20
	.byte	0x17
	.byte	0xe
	.uleb128 0x41
	.long	.LASF143
	.long	.LASF143
	.byte	0x1c
	.byte	0x2c
	.byte	0xd
	.uleb128 0x41
	.long	.LASF144
	.long	.LASF144
	.byte	0x21
	.byte	0x33
	.byte	0xe
	.uleb128 0x41
	.long	.LASF145
	.long	.LASF145
	.byte	0x1b
	.byte	0x28
	.byte	0xd
	.uleb128 0x40
	.long	.LASF146
	.long	.LASF146
	.byte	0x3
	.value	0x2c7
	.byte	0x6
	.uleb128 0x42
	.long	.LASF161
	.long	.LASF162
	.byte	0x22
	.byte	0
	.uleb128 0x41
	.long	.LASF147
	.long	.LASF147
	.byte	0x12
	.byte	0x4f
	.byte	0x23
	.uleb128 0x40
	.long	.LASF148
	.long	.LASF148
	.byte	0x1e
	.value	0x33e
	.byte	0xd
	.uleb128 0x41
	.long	.LASF149
	.long	.LASF149
	.byte	0x2
	.byte	0x3b
	.byte	0x7
	.uleb128 0x41
	.long	.LASF150
	.long	.LASF150
	.byte	0x2
	.byte	0x2f
	.byte	0x1b
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x8
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x35
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS8:
	.uleb128 0
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU137
	.uleb128 .LVU182
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU225
	.uleb128 .LVU260
	.uleb128 .LVU265
	.uleb128 .LVU267
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU297
	.uleb128 .LVU299
	.uleb128 0
.LLST8:
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL17-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL28-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL30-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.quad	.LVL33-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL47-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL50-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.quad	.LVL53-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL59-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL61-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL72-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL78-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL90-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.quad	.LVL94-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL101-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 0
.LLST9:
	.quad	.LVL15-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL19-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL59-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL62-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU55
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU114
	.uleb128 .LVU117
	.uleb128 .LVU130
	.uleb128 .LVU182
	.uleb128 .LVU195
	.uleb128 .LVU196
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU225
	.uleb128 .LVU260
	.uleb128 0
.LLST10:
	.quad	.LVL16-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL33-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL47-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL53-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL59-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL72-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU56
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU90
	.uleb128 .LVU91
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU121
	.uleb128 .LVU122
	.uleb128 .LVU181
	.uleb128 .LVU182
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU190
	.uleb128 .LVU191
	.uleb128 .LVU193
	.uleb128 .LVU196
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 .LVU264
	.uleb128 .LVU283
	.uleb128 .LVU291
	.uleb128 .LVU292
	.uleb128 .LVU296
	.uleb128 .LVU297
	.uleb128 .LVU298
	.uleb128 .LVU299
	.uleb128 .LVU300
	.uleb128 .LVU301
	.uleb128 .LVU305
	.uleb128 .LVU307
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 0
.LLST11:
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL18-.Ltext0
	.quad	.LVL20-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL20-1-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL21-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL25-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL34-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL53-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL60-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL62-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL72-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL88-.Ltext0
	.quad	.LVL92-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL94-.Ltext0
	.quad	.LVL96-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL101-.Ltext0
	.quad	.LVL102-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL104-.Ltext0
	.quad	.LVL106-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL109-.Ltext0
	.quad	.LVL111-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL111-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL112-.Ltext0
	.quad	.LVL117-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL118-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU57
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU91
	.uleb128 .LVU98
	.uleb128 .LVU121
	.uleb128 .LVU182
	.uleb128 .LVU190
	.uleb128 .LVU191
	.uleb128 .LVU208
	.uleb128 .LVU208
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU225
	.uleb128 .LVU260
	.uleb128 .LVU263
	.uleb128 .LVU267
	.uleb128 .LVU270
	.uleb128 .LVU283
	.uleb128 .LVU286
	.uleb128 .LVU287
	.uleb128 .LVU289
	.uleb128 .LVU292
	.uleb128 .LVU294
	.uleb128 .LVU301
	.uleb128 .LVU303
	.uleb128 .LVU311
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 .LVU319
	.uleb128 .LVU320
	.uleb128 0
.LLST12:
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL20-1-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL21-.Ltext0
	.quad	.LVL25-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL28-.Ltext0
	.quad	.LVL34-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL47-.Ltext0
	.quad	.LVL49-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL50-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL56-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL60-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL72-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL78-.Ltext0
	.quad	.LVL80-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL88-.Ltext0
	.quad	.LVL89-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL90-.Ltext0
	.quad	.LVL91-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL94-.Ltext0
	.quad	.LVL95-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL104-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL111-.Ltext0
	.quad	.LVL113-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL113-1-.Ltext0
	.quad	.LVL117-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL118-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU58
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU96
	.uleb128 .LVU98
	.uleb128 .LVU136
	.uleb128 .LVU182
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU225
	.uleb128 .LVU260
	.uleb128 0
.LLST13:
	.quad	.LVL16-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL28-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL47-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL59-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL72-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU59
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU265
	.uleb128 .LVU267
	.uleb128 .LVU269
	.uleb128 .LVU283
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU297
	.uleb128 .LVU299
	.uleb128 .LVU306
	.uleb128 .LVU307
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 0
.LLST14:
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL22-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL30-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL34-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL53-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL60-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL62-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL78-.Ltext0
	.quad	.LVL79-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL88-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL90-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL94-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL101-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL109-.Ltext0
	.quad	.LVL111-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL111-.Ltext0
	.quad	.LVL117-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL118-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU60
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU267
	.uleb128 .LVU267
	.uleb128 .LVU283
	.uleb128 .LVU283
	.uleb128 .LVU306
	.uleb128 .LVU306
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU315
	.uleb128 .LVU319
	.uleb128 .LVU320
.LLST15:
	.quad	.LVL16-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL21-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL29-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL54-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL59-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL78-.Ltext0
	.quad	.LVL88-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL88-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL107-.Ltext0
	.quad	.LVL109-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL109-.Ltext0
	.quad	.LVL111-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL111-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU272
	.uleb128 .LVU274
.LLST16:
	.quad	.LVL81-.Ltext0
	.quad	.LVL82-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU276
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU283
	.uleb128 .LVU306
	.uleb128 .LVU307
.LLST17:
	.quad	.LVL83-.Ltext0
	.quad	.LVL84-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL84-1-.Ltext0
	.quad	.LVL88-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL107-.Ltext0
	.quad	.LVL109-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU134
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU169
.LLST19:
	.quad	.LVL36-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL39-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU140
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU169
.LLST20:
	.quad	.LVL39-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL42-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU151
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU154
.LLST21:
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL41-1-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU151
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU154
.LLST22:
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL41-1-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU73
	.uleb128 .LVU75
.LLST18:
	.quad	.LVL20-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU228
	.uleb128 .LVU231
.LLST23:
	.quad	.LVL62-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	frp
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU229
	.uleb128 .LVU238
	.uleb128 .LVU257
	.uleb128 .LVU259
	.uleb128 .LVU259
	.uleb128 .LVU260
.LLST24:
	.quad	.LVL62-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL70-.Ltext0
	.quad	.LVL71-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL71-1-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU238
	.uleb128 .LVU240
.LLST25:
	.quad	.LVL64-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.quad	.LVL1-.Ltext0
	.quad	.LFE136-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU4
	.uleb128 0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LFE136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 0
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST2:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	.LVL7-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST3:
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL5-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.quad	.LVL7-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU25
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 0
.LLST4:
	.quad	.LVL7-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU25
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 0
.LLST5:
	.quad	.LVL7-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	n_frp_allocated
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	n_frp_allocated
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU25
	.uleb128 .LVU39
	.uleb128 .LVU43
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 0
.LLST6:
	.quad	.LVL7-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	frp
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	frp
	.quad	.LVL13-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	frp
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU27
	.uleb128 .LVU39
	.uleb128 .LVU43
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST7:
	.quad	.LVL7-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL14-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	n_frp_allocated
	.quad	0
	.quad	0
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
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"exit_failure"
.LASF8:
	.string	"__off_t"
.LASF5:
	.string	"short int"
.LASF48:
	.string	"_ISgraph"
.LASF104:
	.string	"locale_quoting_style"
.LASF67:
	.string	"_chain"
.LASF141:
	.string	"strspn"
.LASF155:
	.string	"quoting_style"
.LASF13:
	.string	"size_t"
.LASF73:
	.string	"_shortbuf"
.LASF46:
	.string	"_ISspace"
.LASF98:
	.string	"shell_always_quoting_style"
.LASF97:
	.string	"shell_quoting_style"
.LASF61:
	.string	"_IO_buf_base"
.LASF132:
	.string	"bad_num"
.LASF14:
	.string	"long long unsigned int"
.LASF138:
	.string	"__src"
.LASF43:
	.string	"_ISalpha"
.LASF53:
	.string	"__xalloc_count_type"
.LASF140:
	.string	"free"
.LASF76:
	.string	"_codecvt"
.LASF149:
	.string	"xrealloc"
.LASF19:
	.string	"__timezone"
.LASF15:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF108:
	.string	"quoting_style_vals"
.LASF38:
	.string	"uintmax_t"
.LASF103:
	.string	"escape_quoting_style"
.LASF96:
	.string	"literal_quoting_style"
.LASF159:
	.string	"x2nrealloc"
.LASF56:
	.string	"_IO_read_end"
.LASF68:
	.string	"_fileno"
.LASF27:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF16:
	.string	"_gl_cxxalias_dummy"
.LASF54:
	.string	"_flags"
.LASF152:
	.string	"src/set-fields.c"
.LASF52:
	.string	"_ISalnum"
.LASF71:
	.string	"_cur_column"
.LASF35:
	.string	"program_invocation_short_name"
.LASF101:
	.string	"c_quoting_style"
.LASF85:
	.string	"_IO_codecvt"
.LASF131:
	.string	"num_start"
.LASF93:
	.string	"_sys_errlist"
.LASF34:
	.string	"program_invocation_name"
.LASF70:
	.string	"_old_offset"
.LASF75:
	.string	"_offset"
.LASF122:
	.string	"fieldstr"
.LASF115:
	.string	"field_range_pair"
.LASF39:
	.string	"TIMESPEC_HZ"
.LASF148:
	.string	"qsort"
.LASF100:
	.string	"shell_escape_always_quoting_style"
.LASF157:
	.string	"compare_ranges"
.LASF22:
	.string	"timezone"
.LASF143:
	.string	"quote"
.LASF51:
	.string	"_ISpunct"
.LASF95:
	.string	"program_name"
.LASF125:
	.string	"value"
.LASF84:
	.string	"_IO_marker"
.LASF87:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF151:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF162:
	.string	"__builtin_memmove"
.LASF3:
	.string	"long unsigned int"
.LASF59:
	.string	"_IO_write_ptr"
.LASF90:
	.string	"sys_nerr"
.LASF106:
	.string	"custom_quoting_style"
.LASF1:
	.string	"short unsigned int"
.LASF111:
	.string	"error_one_per_line"
.LASF36:
	.string	"Version"
.LASF63:
	.string	"_IO_save_base"
.LASF142:
	.string	"xstrndup"
.LASF29:
	.string	"environ"
.LASF74:
	.string	"_lock"
.LASF69:
	.string	"_flags2"
.LASF81:
	.string	"_mode"
.LASF88:
	.string	"stdout"
.LASF120:
	.string	"reset_fields"
.LASF24:
	.string	"ptrdiff_t"
.LASF94:
	.string	"version_etc_copyright"
.LASF77:
	.string	"_wide_data"
.LASF118:
	.string	"SETFLD_COMPLEMENT"
.LASF30:
	.string	"optarg"
.LASF23:
	.string	"getdate_err"
.LASF31:
	.string	"optind"
.LASF55:
	.string	"_IO_read_ptr"
.LASF137:
	.string	"__dest"
.LASF154:
	.string	"_IO_lock_t"
.LASF114:
	.string	"_IO_FILE"
.LASF109:
	.string	"error_print_progname"
.LASF130:
	.string	"n_frp_allocated"
.LASF28:
	.string	"__environ"
.LASF12:
	.string	"time_t"
.LASF145:
	.string	"error"
.LASF91:
	.string	"sys_errlist"
.LASF66:
	.string	"_markers"
.LASF160:
	.string	"to_uchar"
.LASF102:
	.string	"c_maybe_quoting_style"
.LASF40:
	.string	"LOG10_TIMESPEC_HZ"
.LASF133:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF134:
	.string	"a_start"
.LASF62:
	.string	"_IO_buf_end"
.LASF113:
	.string	"quote_quoting_options"
.LASF121:
	.string	"set_fields"
.LASF139:
	.string	"__len"
.LASF92:
	.string	"_sys_nerr"
.LASF72:
	.string	"_vtable_offset"
.LASF20:
	.string	"tzname"
.LASF49:
	.string	"_ISblank"
.LASF83:
	.string	"FILE"
.LASF99:
	.string	"shell_escape_quoting_style"
.LASF144:
	.string	"dcgettext"
.LASF107:
	.string	"quoting_style_args"
.LASF33:
	.string	"optopt"
.LASF21:
	.string	"daylight"
.LASF119:
	.string	"SETFLD_ERRMSG_USE_POS"
.LASF25:
	.string	"long double"
.LASF117:
	.string	"SETFLD_ALLOW_DASH"
.LASF11:
	.string	"char"
.LASF147:
	.string	"__ctype_b_loc"
.LASF50:
	.string	"_IScntrl"
.LASF10:
	.string	"__time_t"
.LASF128:
	.string	"dash_found"
.LASF45:
	.string	"_ISxdigit"
.LASF105:
	.string	"clocale_quoting_style"
.LASF42:
	.string	"_ISlower"
.LASF136:
	.string	"DEFAULT_MXFAST"
.LASF32:
	.string	"opterr"
.LASF7:
	.string	"__uintmax_t"
.LASF9:
	.string	"__off64_t"
.LASF112:
	.string	"quoting_options"
.LASF57:
	.string	"_IO_read_base"
.LASF65:
	.string	"_IO_save_end"
.LASF127:
	.string	"rhs_specified"
.LASF26:
	.string	"_sys_siglist"
.LASF126:
	.string	"lhs_specified"
.LASF146:
	.string	"usage"
.LASF80:
	.string	"__pad5"
.LASF60:
	.string	"_IO_write_end"
.LASF82:
	.string	"_unused2"
.LASF89:
	.string	"stderr"
.LASF18:
	.string	"__daylight"
.LASF150:
	.string	"xalloc_die"
.LASF153:
	.string	"/root/coreutils"
.LASF124:
	.string	"initial"
.LASF161:
	.string	"memmove"
.LASF41:
	.string	"_ISupper"
.LASF79:
	.string	"_freeres_buf"
.LASF64:
	.string	"_IO_backup_base"
.LASF156:
	.string	"complement_rp"
.LASF116:
	.string	"n_frp"
.LASF110:
	.string	"error_message_count"
.LASF135:
	.string	"b_start"
.LASF123:
	.string	"options"
.LASF78:
	.string	"_freeres_list"
.LASF158:
	.string	"add_range_pair"
.LASF86:
	.string	"_IO_wide_data"
.LASF129:
	.string	"in_digits"
.LASF17:
	.string	"__tzname"
.LASF58:
	.string	"_IO_write_base"
.LASF44:
	.string	"_ISdigit"
.LASF47:
	.string	"_ISprint"
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
