	.file	"fold.c"
	.text
.Ltext0:
	.p2align 4
	.type	adjust_column, @function
adjust_column:
.LVL0:
.LFB136:
	.file 1 "src/fold.c"
	.loc 1 95 1 view -0
	.cfi_startproc
	.loc 1 96 3 view .LVU1
	.loc 1 96 6 is_stmt 0 view .LVU2
	cmpb	$0, count_bytes(%rip)
	jne	.L2
	.loc 1 98 7 is_stmt 1 view .LVU3
	.loc 1 98 10 is_stmt 0 view .LVU4
	cmpb	$8, %sil
	je	.L8
	.loc 1 103 12 is_stmt 1 view .LVU5
	xorl	%eax, %eax
	.loc 1 103 15 is_stmt 0 view .LVU6
	cmpb	$13, %sil
	je	.L1
.LVL1:
.LBB68:
.LBI68:
	.loc 1 94 1 is_stmt 1 view .LVU7
.LBB69:
	.loc 1 105 12 view .LVU8
	.loc 1 105 15 is_stmt 0 view .LVU9
	cmpb	$9, %sil
	je	.L9
.LVL2:
.L2:
	.loc 1 108 9 is_stmt 1 view .LVU10
	.loc 1 108 15 is_stmt 0 view .LVU11
	leaq	1(%rdi), %rax
.LVL3:
.L1:
	.loc 1 108 15 view .LVU12
.LBE69:
.LBE68:
	.loc 1 113 1 view .LVU13
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	.loc 1 100 11 is_stmt 1 view .LVU14
	.loc 1 101 19 is_stmt 0 view .LVU15
	testq	%rdi, %rdi
	leaq	-1(%rdi), %rax
	movl	$0, %edi
.LVL4:
	.loc 1 101 19 view .LVU16
	cmove	%rdi, %rax
.LVL5:
	.loc 1 101 19 view .LVU17
	ret
.LVL6:
	.p2align 4,,10
	.p2align 3
.L9:
.LBB71:
.LBB70:
	.loc 1 106 9 is_stmt 1 view .LVU18
	.loc 1 106 16 is_stmt 0 view .LVU19
	andq	$-8, %rdi
.LVL7:
	.loc 1 106 16 view .LVU20
	leaq	8(%rdi), %rax
.LVL8:
	.loc 1 106 16 view .LVU21
	ret
.LBE70:
.LBE71:
	.cfi_endproc
.LFE136:
	.size	adjust_column, .-adjust_column
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"r"
.LC1:
	.string	"%s"
	.text
	.p2align 4
	.type	fold_file, @function
fold_file:
.LVL9:
.LFB137:
	.loc 1 121 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 122 3 view .LVU23
	.loc 1 123 3 view .LVU24
	.loc 1 124 3 view .LVU25
	.loc 1 125 3 view .LVU26
	.loc 1 126 3 view .LVU27
	.loc 1 127 3 view .LVU28
	.loc 1 128 3 view .LVU29
	.loc 1 130 3 view .LVU30
	.loc 1 121 1 is_stmt 0 view .LVU31
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 130 7 view .LVU32
	cmpb	$45, (%rdi)
	.loc 1 121 1 view .LVU33
	movq	%rdi, 16(%rsp)
	movq	%rsi, (%rsp)
	.loc 1 130 7 view .LVU34
	je	.L54
.L12:
	.loc 1 136 5 is_stmt 1 view .LVU35
	.loc 1 136 15 is_stmt 0 view .LVU36
	movq	16(%rsp), %rdi
.LVL10:
	.loc 1 136 15 view .LVU37
	leaq	.LC0(%rip), %rsi
.LVL11:
	.loc 1 136 15 view .LVU38
	call	fopen@PLT
.LVL12:
	movq	%rax, %r13
.LVL13:
	.loc 1 138 3 is_stmt 1 view .LVU39
	call	__errno_location@PLT
.LVL14:
	.loc 1 138 3 is_stmt 0 view .LVU40
	movq	%rax, 24(%rsp)
	.loc 1 138 6 view .LVU41
	testq	%r13, %r13
	je	.L53
.L14:
	.loc 1 144 3 is_stmt 1 view .LVU42
	movl	$2, %esi
	movq	%r13, %rdi
	.loc 1 125 10 is_stmt 0 view .LVU43
	xorl	%r12d, %r12d
	.loc 1 124 10 view .LVU44
	xorl	%r14d, %r14d
	.loc 1 144 3 view .LVU45
	call	fadvise@PLT
.LVL15:
	.loc 1 146 3 is_stmt 1 view .LVU46
.L16:
	.loc 1 146 9 view .LVU47
.LBB72:
.LBI72:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 2 66 1 view .LVU48
.LBB73:
	.loc 2 68 3 view .LVU49
	.loc 2 68 10 is_stmt 0 view .LVU50
	movq	8(%r13), %rax
	cmpq	16(%r13), %rax
	jnb	.L55
.L30:
	.loc 2 68 10 view .LVU51
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%r13)
	movzbl	(%rax), %ebx
.LVL16:
.L31:
	.loc 2 68 10 view .LVU52
.LBE73:
.LBE72:
	.loc 1 148 7 is_stmt 1 view .LVU53
	.loc 1 148 22 is_stmt 0 view .LVU54
	leaq	1(%r12), %rbp
	.loc 1 148 10 view .LVU55
	cmpq	allocated_out.7119(%rip), %rbp
	movq	line_out.7118(%rip), %r15
	jnb	.L56
.L17:
	.loc 1 151 7 is_stmt 1 view .LVU56
	.loc 1 151 10 is_stmt 0 view .LVU57
	cmpl	$10, %ebx
	je	.L18
	movsbl	%bl, %eax
	movb	%bl, 15(%rsp)
	movl	%eax, 8(%rsp)
.LVL17:
.L19:
	.loc 1 160 7 is_stmt 1 view .LVU58
	.loc 1 160 16 is_stmt 0 view .LVU59
	movl	8(%rsp), %esi
	movq	%r14, %rdi
	call	adjust_column
.LVL18:
	movq	%rax, %r14
.LVL19:
	.loc 1 162 7 is_stmt 1 view .LVU60
	.loc 1 162 10 is_stmt 0 view .LVU61
	cmpq	(%rsp), %rax
	jbe	.L21
	.loc 1 167 11 is_stmt 1 view .LVU62
	.loc 1 167 14 is_stmt 0 view .LVU63
	cmpb	$0, break_spaces(%rip)
	jne	.L57
.LVL20:
.L23:
	.loc 1 203 11 is_stmt 1 view .LVU64
	.loc 1 203 14 is_stmt 0 view .LVU65
	testq	%r12, %r12
	jne	.L29
	.loc 1 205 15 is_stmt 1 view .LVU66
.LVL21:
	.loc 1 205 38 is_stmt 0 view .LVU67
	movzbl	15(%rsp), %eax
	.loc 1 205 34 view .LVU68
	movl	$1, %r12d
	.loc 1 205 38 view .LVU69
	movb	%al, (%r15)
	.loc 1 206 15 is_stmt 1 view .LVU70
.LVL22:
	.loc 1 146 9 view .LVU71
.LBB75:
	.loc 2 66 1 view .LVU72
.LBB74:
	.loc 2 68 3 view .LVU73
	.loc 2 68 10 is_stmt 0 view .LVU74
	movq	8(%r13), %rax
	cmpq	16(%r13), %rax
	jb	.L30
.L55:
	.loc 2 68 10 view .LVU75
	movq	%r13, %rdi
	call	__uflow@PLT
.LVL23:
	movl	%eax, %ebx
.LVL24:
	.loc 2 68 10 view .LVU76
.LBE74:
.LBE75:
	.loc 1 146 9 view .LVU77
	cmpl	$-1, %eax
	jne	.L31
	.loc 1 218 3 is_stmt 1 view .LVU78
	.loc 1 218 15 is_stmt 0 view .LVU79
	movq	24(%rsp), %rax
.LVL25:
	.loc 1 218 15 view .LVU80
	movl	(%rax), %ebp
.LVL26:
	.loc 1 220 3 is_stmt 1 view .LVU81
	.loc 1 220 6 is_stmt 0 view .LVU82
	testq	%r12, %r12
	jne	.L58
	.loc 1 223 3 is_stmt 1 view .LVU83
.LVL27:
.LBB76:
.LBI76:
	.loc 2 135 1 view .LVU84
.LBB77:
	.loc 2 137 3 view .LVU85
	.loc 2 137 3 is_stmt 0 view .LVU86
.LBE77:
.LBE76:
	.loc 1 223 6 view .LVU87
	testb	$32, 0(%r13)
	jne	.L59
.L34:
	.loc 1 230 3 is_stmt 1 view .LVU88
	.loc 1 230 8 is_stmt 0 view .LVU89
	movq	16(%rsp), %rax
	cmpb	$45, (%rax)
	jne	.L37
	.loc 1 230 6 view .LVU90
	cmpb	$0, 1(%rax)
	jne	.L37
.L38:
	.loc 1 236 10 view .LVU91
	movl	$1, %eax
.LVL28:
.L10:
	.loc 1 237 1 view .LVU92
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
.LVL29:
	.loc 1 237 1 view .LVU93
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL30:
	.loc 1 237 1 view .LVU94
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL31:
	.loc 1 237 1 view .LVU95
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL32:
	.loc 1 237 1 view .LVU96
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL33:
	.loc 1 237 1 view .LVU97
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL34:
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
	.loc 1 209 11 is_stmt 1 view .LVU98
	.loc 1 209 34 is_stmt 0 view .LVU99
	movb	$10, (%r15,%r12)
	.loc 1 210 11 is_stmt 1 view .LVU100
	.loc 1 209 30 is_stmt 0 view .LVU101
	leaq	1(%r12), %rdx
.LVL35:
	.loc 1 210 11 view .LVU102
	movq	%r15, %rdi
	.loc 1 211 31 view .LVU103
	xorl	%r12d, %r12d
	.loc 1 210 11 view .LVU104
	movq	stdout(%rip), %rcx
	movl	$1, %esi
	.loc 1 211 18 view .LVU105
	xorl	%r14d, %r14d
.LVL36:
	.loc 1 210 11 view .LVU106
	call	fwrite_unlocked@PLT
.LVL37:
	.loc 1 210 11 view .LVU107
	movq	line_out.7118(%rip), %r15
	jmp	.L19
.LVL38:
	.p2align 4,,10
	.p2align 3
.L18:
	.loc 1 153 11 is_stmt 1 view .LVU108
	.loc 1 153 34 is_stmt 0 view .LVU109
	movb	$10, (%r15,%r12)
	.loc 1 154 11 is_stmt 1 view .LVU110
	movq	%rbp, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	stdout(%rip), %rcx
	.loc 1 155 31 is_stmt 0 view .LVU111
	xorl	%r12d, %r12d
	.loc 1 155 18 view .LVU112
	xorl	%r14d, %r14d
.LVL39:
	.loc 1 154 11 view .LVU113
	call	fwrite_unlocked@PLT
.LVL40:
	jmp	.L16
.LVL41:
	.p2align 4,,10
	.p2align 3
.L56:
.LBB79:
	.loc 1 149 9 is_stmt 1 view .LVU114
	.loc 1 149 20 is_stmt 0 view .LVU115
	movq	%r15, %rdi
	leaq	allocated_out.7119(%rip), %rsi
	call	x2realloc@PLT
.LVL42:
	.loc 1 149 18 view .LVU116
	movq	%rax, line_out.7118(%rip)
	.loc 1 149 20 view .LVU117
	movq	%rax, %r15
	jmp	.L17
.LVL43:
	.p2align 4,,10
	.p2align 3
.L57:
	.loc 1 149 20 view .LVU118
.LBE79:
	movq	%r12, %rbx
	jmp	.L22
.LVL44:
	.p2align 4,,10
	.p2align 3
.L60:
.LBB80:
	.loc 1 175 19 view .LVU119
	movq	%rbp, %rbx
.LVL45:
.L22:
	.loc 1 173 21 is_stmt 1 view .LVU120
	testq	%rbx, %rbx
	je	.L23
	.loc 1 175 19 view .LVU121
	.loc 1 176 23 is_stmt 0 view .LVU122
	call	__ctype_b_loc@PLT
.LVL46:
	movzbl	-1(%r15,%rbx), %ecx
	.loc 1 175 19 view .LVU123
	leaq	-1(%rbx), %rbp
.LVL47:
	.loc 1 176 19 is_stmt 1 view .LVU124
.LBB81:
.LBI81:
	.file 3 "src/system.h"
	.loc 3 156 29 view .LVU125
.LBB82:
	.loc 3 156 50 view .LVU126
	.loc 3 156 50 is_stmt 0 view .LVU127
.LBE82:
.LBE81:
	.loc 1 176 23 view .LVU128
	movq	(%rax), %rax
	.loc 1 176 22 view .LVU129
	testb	$1, (%rax,%rcx,2)
	je	.L60
.LVL48:
	.loc 1 183 15 is_stmt 1 view .LVU130
.LBB83:
	.loc 1 185 19 view .LVU131
	.loc 1 188 19 view .LVU132
	.loc 1 189 19 view .LVU133
	movq	stdout(%rip), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movl	$1, %esi
	call	fwrite_unlocked@PLT
.LVL49:
	.loc 1 191 19 view .LVU134
.LBB84:
.LBI84:
	.loc 2 108 1 view .LVU135
.LBB85:
	.loc 2 110 3 view .LVU136
	.loc 2 110 10 is_stmt 0 view .LVU137
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L61
	leaq	1(%rax), %rcx
	movq	%rcx, 40(%rdi)
	movb	$10, (%rax)
.L26:
.LVL50:
	.loc 2 110 10 view .LVU138
.LBE85:
.LBE84:
	.loc 1 194 19 is_stmt 1 view .LVU139
	movq	line_out.7118(%rip), %r15
.LVL51:
	.loc 1 194 19 is_stmt 0 view .LVU140
	subq	%rbx, %r12
.LVL52:
.LBB87:
.LBI87:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 4 38 1 is_stmt 1 view .LVU141
.LBB88:
	.loc 4 40 3 view .LVU142
	.loc 4 40 10 is_stmt 0 view .LVU143
	movq	%r12, %rdx
.LBE88:
.LBE87:
	.loc 1 194 47 view .LVU144
	leaq	(%r15,%rbx), %rsi
.LVL53:
.LBB90:
.LBB89:
	.loc 4 40 10 view .LVU145
	movq	%r15, %rdi
	call	memmove@PLT
.LVL54:
	.loc 4 40 10 view .LVU146
.LBE89:
.LBE90:
	.loc 1 196 19 is_stmt 1 view .LVU147
	.loc 1 197 19 view .LVU148
	.loc 1 197 40 view .LVU149
	.loc 1 197 19 is_stmt 0 view .LVU150
	testq	%r12, %r12
	je	.L42
	movq	%r15, %rdx
	leaq	(%r12,%r15), %rcx
	.loc 1 197 31 view .LVU151
	xorl	%r14d, %r14d
.LVL55:
	.p2align 4,,10
	.p2align 3
.L28:
	.loc 1 198 21 is_stmt 1 discriminator 3 view .LVU152
	.loc 1 198 30 is_stmt 0 discriminator 3 view .LVU153
	movsbl	(%rdx), %esi
	movq	%r14, %rdi
	call	adjust_column
.LVL56:
	addq	$1, %rdx
.LVL57:
	.loc 1 198 30 discriminator 3 view .LVU154
	movq	%rax, %r14
.LVL58:
	.loc 1 197 56 is_stmt 1 discriminator 3 view .LVU155
	.loc 1 197 40 discriminator 3 view .LVU156
	.loc 1 197 19 is_stmt 0 discriminator 3 view .LVU157
	cmpq	%rdx, %rcx
	jne	.L28
	jmp	.L19
.LVL59:
	.p2align 4,,10
	.p2align 3
.L54:
	.loc 1 197 19 discriminator 3 view .LVU158
.LBE83:
.LBE80:
	.loc 1 130 6 view .LVU159
	cmpb	$0, 1(%rdi)
	jne	.L12
	.loc 1 132 7 is_stmt 1 view .LVU160
	.loc 1 132 15 is_stmt 0 view .LVU161
	movq	stdin(%rip), %r13
.LVL60:
	.loc 1 133 7 is_stmt 1 view .LVU162
	.loc 1 133 23 is_stmt 0 view .LVU163
	movb	$1, have_read_stdin(%rip)
	.loc 1 138 3 is_stmt 1 view .LVU164
	call	__errno_location@PLT
.LVL61:
	.loc 1 138 3 is_stmt 0 view .LVU165
	movq	%rax, 24(%rsp)
	.loc 1 138 6 view .LVU166
	testq	%r13, %r13
	jne	.L14
.LVL62:
.L53:
	.loc 1 232 7 is_stmt 1 view .LVU167
	movq	16(%rsp), %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL63:
	leaq	.LC1(%rip), %rdx
	xorl	%edi, %edi
	movq	%rax, %rcx
	movq	24(%rsp), %rax
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL64:
	.loc 1 233 7 view .LVU168
	.loc 1 237 1 is_stmt 0 view .LVU169
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
.LVL65:
	.loc 1 233 14 view .LVU170
	xorl	%eax, %eax
	.loc 1 237 1 view .LVU171
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL66:
	.loc 1 237 1 view .LVU172
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL67:
	.p2align 4,,10
	.p2align 3
.L58:
	.cfi_restore_state
	.loc 1 221 5 is_stmt 1 view .LVU173
	movq	stdout(%rip), %rcx
	movq	line_out.7118(%rip), %rdi
	movq	%r12, %rdx
	movl	$1, %esi
	call	fwrite_unlocked@PLT
.LVL68:
	.loc 1 223 3 view .LVU174
.LBB93:
	.loc 2 135 1 view .LVU175
.LBB78:
	.loc 2 137 3 view .LVU176
	.loc 2 137 3 is_stmt 0 view .LVU177
.LBE78:
.LBE93:
	.loc 1 223 6 view .LVU178
	testb	$32, 0(%r13)
	je	.L34
.L59:
	.loc 1 225 7 is_stmt 1 view .LVU179
	movq	16(%rsp), %rbx
.LVL69:
	.loc 1 225 7 is_stmt 0 view .LVU180
	xorl	%edi, %edi
	movl	$3, %esi
	movq	%rbx, %rdx
	call	quotearg_n_style_colon@PLT
.LVL70:
	xorl	%edi, %edi
	leaq	.LC1(%rip), %rdx
	movl	%ebp, %esi
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	error@PLT
.LVL71:
	.loc 1 226 7 is_stmt 1 view .LVU181
	.loc 1 226 12 is_stmt 0 view .LVU182
	cmpb	$45, (%rbx)
	je	.L62
.L44:
	.loc 1 227 9 is_stmt 1 view .LVU183
	movq	%r13, %rdi
	call	rpl_fclose@PLT
.LVL72:
	.loc 1 228 14 is_stmt 0 view .LVU184
	xorl	%eax, %eax
	jmp	.L10
.LVL73:
	.p2align 4,,10
	.p2align 3
.L37:
	.loc 1 230 33 discriminator 1 view .LVU185
	movq	%r13, %rdi
	call	rpl_fclose@PLT
.LVL74:
	.loc 1 230 30 discriminator 1 view .LVU186
	cmpl	$-1, %eax
	jne	.L38
	jmp	.L53
.LVL75:
	.p2align 4,,10
	.p2align 3
.L21:
	.loc 1 215 7 is_stmt 1 view .LVU187
	.loc 1 215 30 is_stmt 0 view .LVU188
	movzbl	15(%rsp), %eax
.LVL76:
	.loc 1 215 30 view .LVU189
	movb	%al, (%r15,%r12)
	.loc 1 215 26 view .LVU190
	addq	$1, %r12
.LVL77:
	.loc 1 215 26 view .LVU191
	jmp	.L16
.LVL78:
.L62:
	.loc 1 228 14 view .LVU192
	xorl	%eax, %eax
	.loc 1 226 10 view .LVU193
	cmpb	$0, 1(%rbx)
	je	.L10
	jmp	.L44
.LVL79:
.L42:
.LBB94:
.LBB92:
	.loc 1 197 31 view .LVU194
	xorl	%r14d, %r14d
	jmp	.L19
.LVL80:
.L61:
.LBB91:
.LBB86:
	.loc 2 110 10 view .LVU195
	movl	$10, %esi
	call	__overflow@PLT
.LVL81:
	jmp	.L26
.LBE86:
.LBE91:
.LBE92:
.LBE94:
	.cfi_endproc
.LFE137:
	.size	fold_file, .-fold_file
	.section	.rodata.str1.1
.LC2:
	.string	"fold"
.LC3:
	.string	" invocation"
.LC4:
	.string	""
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC6:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC7:
	.string	"Wrap input lines in each FILE, writing to standard output.\n"
	.align 8
.LC8:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.align 8
.LC9:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.align 8
.LC10:
	.string	"  -b, --bytes         count bytes rather than columns\n  -s, --spaces        break at spaces\n  -w, --width=WIDTH   use WIDTH columns instead of 80\n"
	.align 8
.LC11:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC12:
	.string	"      --version  output version information and exit\n"
	.section	.rodata.str1.1
.LC13:
	.string	"["
.LC14:
	.string	"test invocation"
.LC15:
	.string	"coreutils"
.LC16:
	.string	"Multi-call invocation"
.LC17:
	.string	"sha224sum"
.LC18:
	.string	"sha2 utilities"
.LC19:
	.string	"sha256sum"
.LC20:
	.string	"sha384sum"
.LC21:
	.string	"sha512sum"
.LC22:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC24:
	.string	"GNU coreutils"
.LC25:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC27:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL82:
.LFB135:
	.loc 1 61 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 61 1 is_stmt 0 view .LVU197
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 63 5 view .LVU198
	movl	$5, %edx
	.loc 1 61 1 view .LVU199
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
	.loc 1 61 1 view .LVU200
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 62 3 is_stmt 1 view .LVU201
	.loc 1 62 6 is_stmt 0 view .LVU202
	testl	%edi, %edi
	je	.L64
	.loc 1 63 5 is_stmt 1 view .LVU203
	.loc 1 63 5 view .LVU204
	leaq	.LC5(%rip), %rsi
	xorl	%edi, %edi
.LVL83:
	.loc 1 63 5 is_stmt 0 view .LVU205
	call	dcgettext@PLT
.LVL84:
.LBB111:
.LBB112:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 5 100 10 view .LVU206
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE112:
.LBE111:
	.loc 1 63 5 view .LVU207
	movq	%rax, %rdx
.LVL85:
.LBB114:
.LBI111:
	.loc 5 98 1 is_stmt 1 view .LVU208
.LBB113:
	.loc 5 100 3 view .LVU209
	.loc 5 100 10 is_stmt 0 view .LVU210
	xorl	%eax, %eax
.LVL86:
	.loc 5 100 10 view .LVU211
	call	__fprintf_chk@PLT
.LVL87:
.L65:
	.loc 5 100 10 view .LVU212
.LBE113:
.LBE114:
	.loc 1 86 3 is_stmt 1 view .LVU213
	movl	%ebp, %edi
	call	exit@PLT
.LVL88:
.L64:
	.loc 1 66 7 view .LVU214
	.loc 1 66 15 is_stmt 0 view .LVU215
	leaq	.LC6(%rip), %rsi
	xorl	%edi, %edi
.LVL89:
.LBB115:
.LBB116:
	.loc 3 636 67 view .LVU216
	leaq	.LC19(%rip), %rbx
.LBE116:
.LBE115:
	.loc 1 66 15 view .LVU217
	call	dcgettext@PLT
.LVL90:
.LBB142:
.LBB143:
	.loc 5 107 10 view .LVU218
	movq	%r12, %rdx
	movl	$1, %edi
.LBE143:
.LBE142:
	.loc 1 66 15 view .LVU219
	movq	%rax, %rsi
.LVL91:
.LBB145:
.LBI142:
	.loc 5 105 1 is_stmt 1 view .LVU220
.LBB144:
	.loc 5 107 3 view .LVU221
	.loc 5 107 10 is_stmt 0 view .LVU222
	xorl	%eax, %eax
.LVL92:
	.loc 5 107 10 view .LVU223
	call	__printf_chk@PLT
.LVL93:
	.loc 5 107 10 view .LVU224
.LBE144:
.LBE145:
	.loc 1 70 7 is_stmt 1 view .LVU225
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC7(%rip), %rsi
	call	dcgettext@PLT
.LVL94:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL95:
	.loc 1 74 7 view .LVU226
.LBB146:
.LBI146:
	.loc 3 581 1 view .LVU227
.LBB147:
	.loc 3 583 3 view .LVU228
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC8(%rip), %rsi
	call	dcgettext@PLT
.LVL96:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL97:
.LBE147:
.LBE146:
	.loc 1 75 7 view .LVU229
.LBB148:
.LBI148:
	.loc 3 588 1 view .LVU230
.LBB149:
	.loc 3 590 3 view .LVU231
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC9(%rip), %rsi
	call	dcgettext@PLT
.LVL98:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL99:
.LBE149:
.LBE148:
	.loc 1 77 7 view .LVU232
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC10(%rip), %rsi
	call	dcgettext@PLT
.LVL100:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL101:
	.loc 1 82 7 view .LVU233
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC11(%rip), %rsi
	call	dcgettext@PLT
.LVL102:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL103:
	.loc 1 83 7 view .LVU234
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC12(%rip), %rsi
	call	dcgettext@PLT
.LVL104:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL105:
	.loc 1 84 7 view .LVU235
.LBB150:
.LBI115:
	.loc 3 634 1 view .LVU236
.LBB141:
	.loc 3 636 3 view .LVU237
	.loc 3 636 67 is_stmt 0 view .LVU238
	leaq	.LC13(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC20(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC14(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC15(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC16(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC17(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 3 646 3 is_stmt 1 view .LVU239
.LVL106:
	.loc 3 647 3 view .LVU240
	.loc 3 649 3 view .LVU241
	.loc 3 649 9 view .LVU242
	.loc 3 636 67 is_stmt 0 view .LVU243
	movq	%rax, 32(%rsp)
	leaq	.LC18(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC21(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC2(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 3 647 25 view .LVU244
	movq	%rsp, %rax
.LVL107:
	.p2align 4,,10
	.p2align 3
.L67:
	.loc 3 650 5 is_stmt 1 view .LVU245
	.loc 3 649 18 is_stmt 0 view .LVU246
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU247
	addq	$16, %rax
.LVL108:
	.loc 3 649 9 is_stmt 1 view .LVU248
	testq	%rdi, %rdi
	je	.L66
	.loc 3 649 33 is_stmt 0 view .LVU249
	movl	$5, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU250
	testb	%dl, %dl
	jne	.L67
.L66:
	.loc 3 652 3 is_stmt 1 view .LVU251
	.loc 3 652 15 is_stmt 0 view .LVU252
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU253
	movl	$5, %edx
	leaq	.LC22(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU254
	testq	%r12, %r12
	je	.L68
	.loc 3 653 5 is_stmt 1 view .LVU255
.LVL109:
	.loc 3 655 3 view .LVU256
	.loc 3 655 11 is_stmt 0 view .LVU257
	call	dcgettext@PLT
.LVL110:
.LBB117:
.LBB118:
	.loc 5 107 10 view .LVU258
	leaq	.LC23(%rip), %rcx
	movl	$1, %edi
	leaq	.LC24(%rip), %rdx
.LBE118:
.LBE117:
	.loc 3 655 11 view .LVU259
	movq	%rax, %rsi
.LVL111:
.LBB122:
.LBI117:
	.loc 5 105 1 is_stmt 1 view .LVU260
.LBB119:
	.loc 5 107 3 view .LVU261
	.loc 5 107 10 is_stmt 0 view .LVU262
	xorl	%eax, %eax
.LVL112:
	.loc 5 107 10 view .LVU263
	call	__printf_chk@PLT
.LVL113:
	.loc 5 107 10 view .LVU264
.LBE119:
.LBE122:
	.loc 3 659 3 is_stmt 1 view .LVU265
	.loc 3 659 29 is_stmt 0 view .LVU266
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL114:
	movq	%rax, %rdi
.LVL115:
	.loc 3 660 3 is_stmt 1 view .LVU267
	.loc 3 660 6 is_stmt 0 view .LVU268
	testq	%rax, %rax
	je	.L69
	.loc 3 660 22 view .LVU269
	movl	$3, %edx
	leaq	.LC25(%rip), %rsi
	call	strncmp@PLT
.LVL116:
	.loc 3 660 19 view .LVU270
	testl	%eax, %eax
	jne	.L72
.LVL117:
.L69:
	.loc 3 669 3 is_stmt 1 view .LVU271
	.loc 3 669 11 is_stmt 0 view .LVU272
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	call	dcgettext@PLT
.LVL118:
.LBB123:
.LBB124:
	.loc 5 107 10 view .LVU273
	leaq	.LC2(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	movl	$1, %edi
.LBE124:
.LBE123:
	.loc 3 669 11 view .LVU274
	movq	%rax, %rsi
.LVL119:
.LBB130:
.LBI123:
	.loc 5 105 1 is_stmt 1 view .LVU275
.LBB125:
	.loc 5 107 3 view .LVU276
	.loc 5 107 10 is_stmt 0 view .LVU277
	xorl	%eax, %eax
.LVL120:
	.loc 5 107 10 view .LVU278
.LBE125:
.LBE130:
	.loc 3 671 3 view .LVU279
	leaq	.LC3(%rip), %r13
.LBB131:
.LBB126:
	.loc 5 107 10 view .LVU280
	call	__printf_chk@PLT
.LVL121:
	.loc 5 107 10 view .LVU281
.LBE126:
.LBE131:
	.loc 3 671 3 is_stmt 1 view .LVU282
	cmpq	%rbx, %r12
	leaq	.LC4(%rip), %rcx
	cmovne	%rcx, %r13
.L70:
	.loc 3 671 11 is_stmt 0 view .LVU283
	xorl	%edi, %edi
	leaq	.LC28(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL122:
.LBB132:
.LBB133:
	.loc 5 107 10 view .LVU284
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE133:
.LBE132:
	.loc 3 671 11 view .LVU285
	movq	%rax, %rsi
.LVL123:
.LBB135:
.LBI132:
	.loc 5 105 1 is_stmt 1 view .LVU286
.LBB134:
	.loc 5 107 3 view .LVU287
	.loc 5 107 10 is_stmt 0 view .LVU288
	xorl	%eax, %eax
.LVL124:
	.loc 5 107 10 view .LVU289
	call	__printf_chk@PLT
.LVL125:
	.loc 5 107 10 view .LVU290
.LBE134:
.LBE135:
	.loc 3 673 1 view .LVU291
	jmp	.L65
.LVL126:
.L68:
	.loc 3 655 3 is_stmt 1 view .LVU292
	.loc 3 655 11 is_stmt 0 view .LVU293
	call	dcgettext@PLT
.LVL127:
.LBB136:
.LBB120:
	.loc 5 107 10 view .LVU294
	leaq	.LC23(%rip), %rcx
	movl	$1, %edi
	leaq	.LC24(%rip), %rdx
.LBE120:
.LBE136:
	.loc 3 655 11 view .LVU295
	movq	%rax, %rsi
.LVL128:
.LBB137:
	.loc 5 105 1 is_stmt 1 view .LVU296
.LBB121:
	.loc 5 107 3 view .LVU297
	.loc 5 107 10 is_stmt 0 view .LVU298
	xorl	%eax, %eax
.LVL129:
	.loc 5 107 10 view .LVU299
	call	__printf_chk@PLT
.LVL130:
	.loc 5 107 10 view .LVU300
.LBE121:
.LBE137:
	.loc 3 659 3 is_stmt 1 view .LVU301
	.loc 3 659 29 is_stmt 0 view .LVU302
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL131:
	movq	%rax, %rdi
.LVL132:
	.loc 3 660 3 is_stmt 1 view .LVU303
	.loc 3 660 6 is_stmt 0 view .LVU304
	testq	%rax, %rax
	je	.L71
	.loc 3 660 22 view .LVU305
	movl	$3, %edx
	leaq	.LC25(%rip), %rsi
	call	strncmp@PLT
.LVL133:
	.loc 3 660 19 view .LVU306
	testl	%eax, %eax
	jne	.L90
.L71:
	.loc 3 669 3 is_stmt 1 view .LVU307
	.loc 3 669 11 is_stmt 0 view .LVU308
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL134:
.LBB138:
.LBB127:
	.loc 5 107 10 view .LVU309
	leaq	.LC2(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	movl	$1, %edi
.LBE127:
.LBE138:
	.loc 3 669 11 view .LVU310
	movq	%rax, %rsi
.LVL135:
.LBB139:
	.loc 5 105 1 is_stmt 1 view .LVU311
.LBB128:
	.loc 5 107 3 view .LVU312
	.loc 5 107 10 is_stmt 0 view .LVU313
	xorl	%eax, %eax
.LVL136:
	.loc 5 107 10 view .LVU314
.LBE128:
.LBE139:
	.loc 3 646 15 view .LVU315
	leaq	.LC2(%rip), %r12
.LBB140:
.LBB129:
	.loc 5 107 10 view .LVU316
	call	__printf_chk@PLT
.LVL137:
	.loc 5 107 10 view .LVU317
.LBE129:
.LBE140:
	.loc 3 671 3 is_stmt 1 view .LVU318
	leaq	.LC3(%rip), %r13
	jmp	.L70
.L90:
	.loc 3 646 15 is_stmt 0 view .LVU319
	leaq	.LC2(%rip), %r12
.LVL138:
.L72:
	.loc 3 666 7 is_stmt 1 view .LVU320
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC26(%rip), %rsi
	call	dcgettext@PLT
.LVL139:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL140:
	jmp	.L69
.LBE141:
.LBE150:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC29:
	.string	"/usr/local/share/locale"
.LC30:
	.string	"invalid number of columns"
.LC31:
	.string	"David MacKenzie"
.LC32:
	.string	"-"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL141:
.LFB138:
	.loc 1 241 1 view -0
	.cfi_startproc
	.loc 1 241 1 is_stmt 0 view .LVU322
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 242 10 view .LVU323
	movl	$80, %r13d
	.loc 1 241 1 view .LVU324
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
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 248 3 view .LVU325
	movq	(%rsi), %rdi
.LVL142:
	.loc 1 241 1 view .LVU326
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	.loc 1 242 3 is_stmt 1 view .LVU327
.LVL143:
	.loc 1 243 3 view .LVU328
	.loc 1 244 3 view .LVU329
	.loc 1 245 3 view .LVU330
	.loc 1 247 33 view .LVU331
	.loc 1 248 3 view .LVU332
.LBB151:
	.loc 1 279 22 is_stmt 0 view .LVU333
	leaq	6(%rsp), %r12
.LBE151:
	.loc 1 248 3 view .LVU334
	call	set_program_name@PLT
.LVL144:
	.loc 1 249 3 is_stmt 1 view .LVU335
	leaq	.LC4(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL145:
	.loc 1 250 3 view .LVU336
	leaq	.LC29(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	call	bindtextdomain@PLT
.LVL146:
	.loc 1 251 3 view .LVU337
	leaq	.LC15(%rip), %rdi
	call	textdomain@PLT
.LVL147:
	.loc 1 253 3 view .LVU338
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL148:
	.loc 1 255 3 view .LVU339
	.loc 1 255 48 is_stmt 0 view .LVU340
	movb	$0, have_read_stdin(%rip)
	.loc 1 255 30 view .LVU341
	movb	$0, count_bytes(%rip)
	.loc 1 255 16 view .LVU342
	movb	$0, break_spaces(%rip)
	.loc 1 257 3 is_stmt 1 view .LVU343
.LVL149:
.L92:
	.loc 1 257 9 view .LVU344
	.loc 1 257 18 is_stmt 0 view .LVU345
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	leaq	shortopts(%rip), %rdx
	call	getopt_long@PLT
.LVL150:
	.loc 1 257 9 view .LVU346
	cmpl	$-1, %eax
	je	.L117
.LBB152:
	.loc 1 259 7 is_stmt 1 view .LVU347
	.loc 1 261 7 view .LVU348
	cmpl	$98, %eax
	je	.L93
	jg	.L94
	cmpl	$-130, %eax
	je	.L95
	cmpl	$-129, %eax
	jge	.L96
	cmpl	$-131, %eax
	jne	.L98
	.loc 1 287 9 view .LVU349
	.loc 1 287 30 view .LVU350
	.loc 1 289 9 view .LVU351
	movq	stdout(%rip), %rdi
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
.LVL151:
	.loc 1 289 9 is_stmt 0 view .LVU352
	xorl	%r9d, %r9d
	leaq	.LC31(%rip), %r8
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	call	version_etc@PLT
.LVL152:
	.loc 1 289 9 is_stmt 1 view .LVU353
	xorl	%edi, %edi
	call	exit@PLT
.LVL153:
	.p2align 4,,10
	.p2align 3
.L94:
	.loc 1 261 7 is_stmt 0 view .LVU354
	cmpl	$115, %eax
	jne	.L118
	.loc 1 268 11 is_stmt 1 view .LVU355
	.loc 1 268 24 is_stmt 0 view .LVU356
	movb	$1, break_spaces(%rip)
	.loc 1 269 11 is_stmt 1 view .LVU357
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L96:
	.loc 1 261 7 is_stmt 0 view .LVU358
	leal	-48(%rax), %edx
	cmpl	$9, %edx
	ja	.L98
	.loc 1 273 11 is_stmt 1 view .LVU359
	.loc 1 273 15 is_stmt 0 view .LVU360
	movq	optarg(%rip), %rdx
	.loc 1 273 14 view .LVU361
	testq	%rdx, %rdx
	je	.L103
	.loc 1 274 13 is_stmt 1 view .LVU362
	.loc 1 274 19 is_stmt 0 view .LVU363
	subq	$1, %rdx
	movq	%rdx, optarg(%rip)
	.p2align 4,,10
	.p2align 3
.L101:
	.loc 1 281 11 is_stmt 1 view .LVU364
	.loc 1 283 11 view .LVU365
	.loc 1 284 31 is_stmt 0 view .LVU366
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL154:
	.loc 1 283 19 view .LVU367
	movq	optarg(%rip), %rdi
	xorl	%r9d, %r9d
	leaq	.LC4(%rip), %rcx
	.loc 1 284 31 view .LVU368
	movq	%rax, %r8
	.loc 1 283 19 view .LVU369
	movq	$-10, %rdx
	movl	$1, %esi
	call	xdectoumax@PLT
.LVL155:
	movq	%rax, %r13
.LVL156:
	.loc 1 285 11 is_stmt 1 view .LVU370
	.loc 1 285 11 is_stmt 0 view .LVU371
	jmp	.L92
.LVL157:
	.p2align 4,,10
	.p2align 3
.L118:
	.loc 1 261 7 view .LVU372
	cmpl	$119, %eax
	je	.L101
.L98:
	.loc 1 289 9 is_stmt 1 view .LVU373
	.loc 1 289 57 view .LVU374
	.loc 1 292 11 view .LVU375
	movl	$1, %edi
	call	usage
.LVL158:
	.p2align 4,,10
	.p2align 3
.L93:
	.loc 1 264 11 view .LVU376
	.loc 1 264 23 is_stmt 0 view .LVU377
	movb	$1, count_bytes(%rip)
	.loc 1 265 11 is_stmt 1 view .LVU378
	jmp	.L92
.L103:
	.loc 1 277 15 view .LVU379
	.loc 1 277 28 is_stmt 0 view .LVU380
	movb	%al, 6(%rsp)
	.loc 1 278 15 is_stmt 1 view .LVU381
	.loc 1 278 28 is_stmt 0 view .LVU382
	movb	$0, 7(%rsp)
	.loc 1 279 15 is_stmt 1 view .LVU383
	.loc 1 279 22 is_stmt 0 view .LVU384
	movq	%r12, optarg(%rip)
	jmp	.L101
.L117:
	.loc 1 279 22 view .LVU385
.LBE152:
	.loc 1 296 3 is_stmt 1 view .LVU386
	.loc 1 296 12 is_stmt 0 view .LVU387
	movl	optind(%rip), %eax
.LVL159:
	.loc 1 296 6 view .LVU388
	cmpl	%ebp, %eax
	je	.L105
.LVL160:
	.loc 1 301 24 is_stmt 1 view .LVU389
	.loc 1 301 7 is_stmt 0 view .LVU390
	jge	.L119
	movslq	%eax, %rdx
	notl	%eax
.LVL161:
	.loc 1 301 7 view .LVU391
	addl	%ebp, %eax
	leaq	(%rbx,%rdx,8), %r12
	addq	%rdx, %rax
	leaq	8(%rbx,%rax,8), %rbp
.LVL162:
	.loc 1 300 10 view .LVU392
	movl	$1, %ebx
.LVL163:
	.p2align 4,,10
	.p2align 3
.L108:
	.loc 1 302 9 is_stmt 1 discriminator 3 view .LVU393
	.loc 1 302 15 is_stmt 0 discriminator 3 view .LVU394
	movq	(%r12), %rdi
	movq	%r13, %rsi
	addq	$8, %r12
	call	fold_file
.LVL164:
	andl	%eax, %ebx
.LVL165:
	.loc 1 301 34 is_stmt 1 discriminator 3 view .LVU395
	.loc 1 301 24 discriminator 3 view .LVU396
	.loc 1 301 7 is_stmt 0 discriminator 3 view .LVU397
	cmpq	%rbp, %r12
	jne	.L108
.LVL166:
.L107:
	.loc 1 305 3 is_stmt 1 view .LVU398
	.loc 1 305 6 is_stmt 0 view .LVU399
	cmpb	$0, have_read_stdin(%rip)
	jne	.L120
.L109:
	.loc 1 308 3 is_stmt 1 view .LVU400
	.loc 1 308 28 is_stmt 0 view .LVU401
	xorl	$1, %ebx
.LVL167:
	.loc 1 309 1 view .LVU402
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	.loc 1 308 28 view .LVU403
	movzbl	%bl, %eax
	.loc 1 309 1 view .LVU404
	jne	.L121
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL168:
	.loc 1 309 1 view .LVU405
	ret
.LVL169:
.L120:
	.cfi_restore_state
	.loc 1 305 26 discriminator 1 view .LVU406
	movq	stdin(%rip), %rdi
	call	rpl_fclose@PLT
.LVL170:
	.loc 1 305 23 discriminator 1 view .LVU407
	addl	$1, %eax
	jne	.L109
.LBB153:
	.loc 1 306 5 is_stmt 1 view .LVU408
	call	__errno_location@PLT
.LVL171:
	leaq	.LC32(%rip), %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL172:
.L105:
	.loc 1 306 5 is_stmt 0 view .LVU409
.LBE153:
	.loc 1 297 5 is_stmt 1 view .LVU410
	.loc 1 297 10 is_stmt 0 view .LVU411
	movq	%r13, %rsi
	leaq	.LC32(%rip), %rdi
	call	fold_file
.LVL173:
	movl	%eax, %ebx
.LVL174:
	.loc 1 297 10 view .LVU412
	jmp	.L107
.LVL175:
.L119:
	.loc 1 300 10 view .LVU413
	movl	$1, %ebx
.LVL176:
	.loc 1 300 10 view .LVU414
	jmp	.L107
.LVL177:
.L95:
.LBB154:
	.loc 1 287 9 is_stmt 1 view .LVU415
	xorl	%edi, %edi
	call	usage
.LVL178:
.L121:
	.loc 1 287 9 is_stmt 0 view .LVU416
.LBE154:
	.loc 1 309 1 view .LVU417
	call	__stack_chk_fail@PLT
.LVL179:
	.cfi_endproc
.LFE138:
	.size	main, .-main
	.local	line_out.7118
	.comm	line_out.7118,8,8
	.local	allocated_out.7119
	.comm	allocated_out.7119,8,8
	.section	.rodata.str1.1
.LC33:
	.string	"bytes"
.LC34:
	.string	"spaces"
.LC35:
	.string	"width"
.LC36:
	.string	"help"
.LC37:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 192
longopts:
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC35
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC36
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC37
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
	.align 32
	.type	shortopts, @object
	.size	shortopts, 35
shortopts:
	.string	"bsw:0::1::2::3::4::5::6::7::8::9::"
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.local	count_bytes
	.comm	count_bytes,1,1
	.local	break_spaces
	.comm	break_spaces,1,1
	.text
.Letext0:
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 13 "./lib/sys/select.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/signal.h"
	.file 18 "/usr/include/unistd.h"
	.file 19 "/usr/include/errno.h"
	.file 20 "src/version.h"
	.file 21 "./lib/exitfail.h"
	.file 22 "./lib/timespec.h"
	.file 23 "/usr/include/ctype.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/fadvise.h"
	.file 29 "/usr/include/stdlib.h"
	.file 30 "/usr/include/libintl.h"
	.file 31 "./lib/xdectoint.h"
	.file 32 "/usr/include/locale.h"
	.file 33 "./lib/stdio.h"
	.file 34 "./lib/xalloc.h"
	.file 35 "/usr/include/string.h"
	.file 36 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x18b2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF193
	.byte	0xc
	.long	.LASF194
	.long	.LASF195
	.long	.Ldebug_ranges0+0x310
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x6
	.byte	0xd1
	.byte	0x17
	.long	0x35
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
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x7
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.long	.LASF9
	.byte	0x7
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x2
	.long	.LASF10
	.byte	0x7
	.byte	0xa0
	.byte	0x1a
	.long	0x6d
	.uleb128 0x7
	.byte	0x8
	.long	0x9e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.long	0x9e
	.uleb128 0x9
	.long	.LASF61
	.byte	0xd8
	.byte	0x8
	.byte	0x31
	.byte	0x8
	.long	0x231
	.uleb128 0xa
	.long	.LASF12
	.byte	0x8
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF13
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.long	0x98
	.byte	0x8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x8
	.byte	0x37
	.byte	0x9
	.long	0x98
	.byte	0x10
	.uleb128 0xa
	.long	.LASF15
	.byte	0x8
	.byte	0x38
	.byte	0x9
	.long	0x98
	.byte	0x18
	.uleb128 0xa
	.long	.LASF16
	.byte	0x8
	.byte	0x39
	.byte	0x9
	.long	0x98
	.byte	0x20
	.uleb128 0xa
	.long	.LASF17
	.byte	0x8
	.byte	0x3a
	.byte	0x9
	.long	0x98
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x8
	.byte	0x3b
	.byte	0x9
	.long	0x98
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x8
	.byte	0x3c
	.byte	0x9
	.long	0x98
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x8
	.byte	0x3d
	.byte	0x9
	.long	0x98
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x8
	.byte	0x40
	.byte	0x9
	.long	0x98
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x8
	.byte	0x41
	.byte	0x9
	.long	0x98
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x8
	.byte	0x42
	.byte	0x9
	.long	0x98
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x8
	.byte	0x44
	.byte	0x16
	.long	0x24a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x8
	.byte	0x46
	.byte	0x14
	.long	0x250
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x8
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x8
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x8
	.byte	0x4a
	.byte	0xb
	.long	0x74
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x8
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x8
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.long	0x256
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x8
	.byte	0x51
	.byte	0xf
	.long	0x266
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x8
	.byte	0x59
	.byte	0xd
	.long	0x80
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x8
	.byte	0x5b
	.byte	0x17
	.long	0x271
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x8
	.byte	0x5c
	.byte	0x19
	.long	0x27c
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x8
	.byte	0x5d
	.byte	0x14
	.long	0x250
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x8
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x8
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x8
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x9
	.byte	0x7
	.byte	0x19
	.long	0xaa
	.uleb128 0xb
	.long	.LASF196
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x7
	.byte	0x8
	.long	0x245
	.uleb128 0x7
	.byte	0x8
	.long	0xaa
	.uleb128 0xd
	.long	0x9e
	.long	0x266
	.uleb128 0xe
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x23d
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x26c
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x277
	.uleb128 0xd
	.long	0x9e
	.long	0x292
	.uleb128 0xe
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa5
	.uleb128 0x8
	.long	0x292
	.uleb128 0xf
	.long	0x292
	.uleb128 0x10
	.long	.LASF45
	.byte	0xa
	.byte	0x89
	.byte	0xe
	.long	0x2ae
	.uleb128 0x7
	.byte	0x8
	.long	0x231
	.uleb128 0xf
	.long	0x2ae
	.uleb128 0x10
	.long	.LASF46
	.byte	0xa
	.byte	0x8a
	.byte	0xe
	.long	0x2ae
	.uleb128 0x10
	.long	.LASF47
	.byte	0xa
	.byte	0x8b
	.byte	0xe
	.long	0x2ae
	.uleb128 0x10
	.long	.LASF48
	.byte	0xb
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x298
	.long	0x2e8
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x2dd
	.uleb128 0x10
	.long	.LASF49
	.byte	0xb
	.byte	0x1b
	.byte	0x1a
	.long	0x2e8
	.uleb128 0x10
	.long	.LASF50
	.byte	0xb
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF51
	.byte	0xb
	.byte	0x1f
	.byte	0x1a
	.long	0x2e8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF52
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF53
	.uleb128 0x2
	.long	.LASF54
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0x8c
	.uleb128 0x12
	.long	.LASF55
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF56
	.uleb128 0x10
	.long	.LASF57
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF58
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF59
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF60
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF62
	.byte	0x20
	.byte	0xf
	.byte	0x32
	.byte	0x8
	.long	0x3b1
	.uleb128 0xa
	.long	.LASF63
	.byte	0xf
	.byte	0x34
	.byte	0xf
	.long	0x292
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0xf
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF65
	.byte	0xf
	.byte	0x38
	.byte	0x8
	.long	0x3b6
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0xf
	.byte	0x39
	.byte	0x7
	.long	0x61
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x36f
	.uleb128 0x7
	.byte	0x8
	.long	0x61
	.uleb128 0xd
	.long	0x98
	.long	0x3cc
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF66
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x3bc
	.uleb128 0x10
	.long	.LASF67
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF68
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0x10
	.long	.LASF69
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x3bc
	.uleb128 0x10
	.long	.LASF70
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF71
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x12
	.long	.LASF72
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x8
	.long	0x421
	.uleb128 0xd
	.long	0x298
	.long	0x438
	.uleb128 0xe
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x428
	.uleb128 0x12
	.long	.LASF73
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x438
	.uleb128 0x12
	.long	.LASF74
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x438
	.uleb128 0x12
	.long	.LASF75
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x464
	.uleb128 0x7
	.byte	0x8
	.long	0x98
	.uleb128 0x12
	.long	.LASF76
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x464
	.uleb128 0x10
	.long	.LASF77
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0x98
	.uleb128 0x10
	.long	.LASF78
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x98
	.uleb128 0x7
	.byte	0x8
	.long	0x495
	.uleb128 0x15
	.uleb128 0x10
	.long	.LASF79
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0x292
	.uleb128 0x10
	.long	.LASF80
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x4c6
	.uleb128 0x17
	.long	.LASF81
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x4db
	.uleb128 0x18
	.long	.LASF82
	.byte	0x9
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x17
	.byte	0x2f
	.byte	0x1
	.long	0x53a
	.uleb128 0x19
	.long	.LASF83
	.value	0x100
	.uleb128 0x19
	.long	.LASF84
	.value	0x200
	.uleb128 0x19
	.long	.LASF85
	.value	0x400
	.uleb128 0x19
	.long	.LASF86
	.value	0x800
	.uleb128 0x19
	.long	.LASF87
	.value	0x1000
	.uleb128 0x19
	.long	.LASF88
	.value	0x2000
	.uleb128 0x19
	.long	.LASF89
	.value	0x4000
	.uleb128 0x19
	.long	.LASF90
	.value	0x8000
	.uleb128 0x18
	.long	.LASF91
	.byte	0x1
	.uleb128 0x18
	.long	.LASF92
	.byte	0x2
	.uleb128 0x18
	.long	.LASF93
	.byte	0x4
	.uleb128 0x18
	.long	.LASF94
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.byte	0x5
	.byte	0x4
	.long	0x61
	.byte	0x3
	.value	0x147
	.byte	0x1
	.long	0x558
	.uleb128 0x1b
	.long	.LASF95
	.sleb128 -130
	.uleb128 0x1b
	.long	.LASF96
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xa5
	.long	0x563
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x558
	.uleb128 0x10
	.long	.LASF97
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x563
	.uleb128 0x10
	.long	.LASF98
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0x292
	.uleb128 0x1c
	.long	.LASF197
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x5d5
	.uleb128 0x18
	.long	.LASF99
	.byte	0
	.uleb128 0x18
	.long	.LASF100
	.byte	0x1
	.uleb128 0x18
	.long	.LASF101
	.byte	0x2
	.uleb128 0x18
	.long	.LASF102
	.byte	0x3
	.uleb128 0x18
	.long	.LASF103
	.byte	0x4
	.uleb128 0x18
	.long	.LASF104
	.byte	0x5
	.uleb128 0x18
	.long	.LASF105
	.byte	0x6
	.uleb128 0x18
	.long	.LASF106
	.byte	0x7
	.uleb128 0x18
	.long	.LASF107
	.byte	0x8
	.uleb128 0x18
	.long	.LASF108
	.byte	0x9
	.uleb128 0x18
	.long	.LASF109
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x580
	.uleb128 0x12
	.long	.LASF110
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x2e8
	.uleb128 0xd
	.long	0x5d5
	.long	0x5f2
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x5e7
	.uleb128 0x12
	.long	.LASF111
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x5f2
	.uleb128 0x10
	.long	.LASF112
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x422
	.uleb128 0x10
	.long	.LASF113
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF114
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1c
	.byte	0x2d
	.byte	0xe
	.long	0x65b
	.uleb128 0x18
	.long	.LASF115
	.byte	0
	.uleb128 0x18
	.long	.LASF116
	.byte	0x2
	.uleb128 0x18
	.long	.LASF117
	.byte	0x5
	.uleb128 0x18
	.long	.LASF118
	.byte	0x4
	.uleb128 0x18
	.long	.LASF119
	.byte	0x3
	.uleb128 0x18
	.long	.LASF120
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.long	0x671
	.uleb128 0x9
	.byte	0x3
	.quad	break_spaces
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF121
	.uleb128 0x1d
	.long	.LASF123
	.byte	0x1
	.byte	0x2a
	.byte	0xd
	.long	0x671
	.uleb128 0x9
	.byte	0x3
	.quad	count_bytes
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.long	0x671
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0xd
	.long	0xa5
	.long	0x6b4
	.uleb128 0xe
	.long	0x35
	.byte	0x22
	.byte	0
	.uleb128 0x8
	.long	0x6a4
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x1
	.byte	0x2f
	.byte	0x13
	.long	0x6b4
	.uleb128 0x9
	.byte	0x3
	.quad	shortopts
	.uleb128 0xd
	.long	0x3b1
	.long	0x6df
	.uleb128 0xe
	.long	0x35
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x6cf
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x1
	.byte	0x31
	.byte	0x1c
	.long	0x6df
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.long	0x61
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e3
	.uleb128 0x1f
	.long	.LASF127
	.byte	0x1
	.byte	0xf0
	.byte	0xb
	.long	0x61
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x1f
	.long	.LASF128
	.byte	0x1
	.byte	0xf0
	.byte	0x18
	.long	0x464
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x20
	.long	.LASF129
	.byte	0x1
	.byte	0xf2
	.byte	0xa
	.long	0x29
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xf3
	.byte	0x7
	.long	0x61
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x20
	.long	.LASF130
	.byte	0x1
	.byte	0xf4
	.byte	0x7
	.long	0x61
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x21
	.string	"ok"
	.byte	0x1
	.byte	0xf5
	.byte	0x8
	.long	0x671
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x2d0
	.long	0x882
	.uleb128 0x23
	.long	.LASF131
	.byte	0x1
	.value	0x103
	.byte	0xc
	.long	0x9e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x24
	.quad	.LVL152
	.long	0x176d
	.long	0x7e8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL153
	.long	0x1779
	.long	0x7ff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL154
	.long	0x1786
	.long	0x828
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL155
	.long	0x1792
	.long	0x857
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xf6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL158
	.long	0xf3f
	.long	0x86e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.quad	.LVL178
	.long	0xf3f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB153
	.quad	.LBE153-.LBB153
	.long	0x8c5
	.uleb128 0x28
	.quad	.LVL171
	.long	0x179e
	.uleb128 0x26
	.quad	.LVL172
	.long	0x17aa
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LVL144
	.long	0x17b6
	.uleb128 0x24
	.quad	.LVL145
	.long	0x17c2
	.long	0x8f6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x24
	.quad	.LVL146
	.long	0x17ce
	.long	0x922
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.byte	0
	.uleb128 0x24
	.quad	.LVL147
	.long	0x17da
	.long	0x941
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.byte	0
	.uleb128 0x28
	.quad	.LVL148
	.long	0x17e6
	.uleb128 0x24
	.quad	.LVL150
	.long	0x17f3
	.long	0x98b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	shortopts
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL164
	.long	0x9f3
	.long	0x9a3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL170
	.long	0x17ff
	.uleb128 0x24
	.quad	.LVL173
	.long	0x9f3
	.long	0x9d5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL179
	.long	0x180c
	.byte	0
	.uleb128 0xd
	.long	0x9e
	.long	0x9f3
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.long	.LASF198
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	0x671
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0xf17
	.uleb128 0x1f
	.long	.LASF132
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.long	0x292
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1f
	.long	.LASF129
	.byte	0x1
	.byte	0x78
	.byte	0x29
	.long	0x29
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x20
	.long	.LASF133
	.byte	0x1
	.byte	0x7a
	.byte	0x9
	.long	0x2ae
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.byte	0x7b
	.byte	0x7
	.long	0x61
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.byte	0x7c
	.byte	0xa
	.long	0x29
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x20
	.long	.LASF135
	.byte	0x1
	.byte	0x7d
	.byte	0xa
	.long	0x29
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x1d
	.long	.LASF136
	.byte	0x1
	.byte	0x7e
	.byte	0x10
	.long	0x98
	.uleb128 0x9
	.byte	0x3
	.quad	line_out.7118
	.uleb128 0x1d
	.long	.LASF137
	.byte	0x1
	.byte	0x7f
	.byte	0x11
	.long	0x29
	.uleb128 0x9
	.byte	0x3
	.quad	allocated_out.7119
	.uleb128 0x20
	.long	.LASF138
	.byte	0x1
	.byte	0x80
	.byte	0x7
	.long	0x61
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x2a
	.long	.LASF199
	.byte	0x1
	.byte	0x9f
	.byte	0x5
	.uleb128 0x27
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.long	0xb0a
	.uleb128 0x26
	.quad	.LVL42
	.long	0x1815
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	allocated_out.7119
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xb34
	.uleb128 0x2c
	.long	.LASF139
	.byte	0x1
	.byte	0x9a
	.byte	0xb
	.long	0x292
	.uleb128 0x2c
	.long	.LASF140
	.byte	0x1
	.byte	0x9a
	.byte	0xb
	.long	0x2ae
	.uleb128 0x2c
	.long	.LASF141
	.byte	0x1
	.byte	0x9a
	.byte	0xb
	.long	0x29
	.byte	0
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x90
	.long	0xcc7
	.uleb128 0x20
	.long	.LASF142
	.byte	0x1
	.byte	0xa9
	.byte	0x14
	.long	0x671
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x20
	.long	.LASF143
	.byte	0x1
	.byte	0xaa
	.byte	0x16
	.long	0x29
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x22
	.long	.Ldebug_ranges0+0xc0
	.long	0xc86
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xb9
	.byte	0x1a
	.long	0x29
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x2b
	.long	0xbaa
	.uleb128 0x2c
	.long	.LASF139
	.byte	0x1
	.byte	0xbd
	.byte	0x13
	.long	0x292
	.uleb128 0x2c
	.long	.LASF140
	.byte	0x1
	.byte	0xbd
	.byte	0x13
	.long	0x2ae
	.uleb128 0x2c
	.long	.LASF141
	.byte	0x1
	.byte	0xbd
	.byte	0x13
	.long	0x29
	.byte	0
	.uleb128 0x2d
	.long	0x16a7
	.quad	.LBI84
	.byte	.LVU135
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0xbf
	.byte	0x13
	.long	0xbe4
	.uleb128 0x2e
	.long	0x16b8
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x26
	.quad	.LVL81
	.long	0x1821
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1609
	.quad	.LBI87
	.byte	.LVU141
	.long	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0xc2
	.byte	0x13
	.long	0xc48
	.uleb128 0x2e
	.long	0x1632
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x2e
	.long	0x1626
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x2e
	.long	0x161a
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x26
	.quad	.LVL54
	.long	0x182e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL49
	.long	0x1839
	.long	0xc6b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL56
	.long	0xf17
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x15ec
	.quad	.LBI81
	.byte	.LVU125
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.byte	0x1
	.byte	0xb0
	.byte	0x17
	.long	0xcb9
	.uleb128 0x2e
	.long	0x15fd
	.long	.LLST14
	.long	.LVUS14
	.byte	0
	.uleb128 0x28
	.quad	.LVL46
	.long	0x1846
	.byte	0
	.uleb128 0x2b
	.long	0xcf1
	.uleb128 0x2c
	.long	.LASF139
	.byte	0x1
	.byte	0xd2
	.byte	0xb
	.long	0x292
	.uleb128 0x2c
	.long	.LASF140
	.byte	0x1
	.byte	0xd2
	.byte	0xb
	.long	0x2ae
	.uleb128 0x2c
	.long	.LASF141
	.byte	0x1
	.byte	0xd2
	.byte	0xb
	.long	0x29
	.byte	0
	.uleb128 0x2b
	.long	0xd1b
	.uleb128 0x2c
	.long	.LASF139
	.byte	0x1
	.byte	0xdd
	.byte	0x5
	.long	0x292
	.uleb128 0x2c
	.long	.LASF140
	.byte	0x1
	.byte	0xdd
	.byte	0x5
	.long	0x2ae
	.uleb128 0x2c
	.long	.LASF141
	.byte	0x1
	.byte	0xdd
	.byte	0x5
	.long	0x29
	.byte	0
	.uleb128 0x2d
	.long	0x16ef
	.quad	.LBI72
	.byte	.LVU48
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x92
	.byte	0xf
	.long	0xd56
	.uleb128 0x2e
	.long	0x1700
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x26
	.quad	.LVL23
	.long	0x1852
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1689
	.quad	.LBI76
	.byte	.LVU84
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xdf
	.byte	0x7
	.long	0xd7d
	.uleb128 0x2e
	.long	0x169a
	.long	.LLST11
	.long	.LVUS11
	.byte	0
	.uleb128 0x24
	.quad	.LVL12
	.long	0x185f
	.long	0xda4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x28
	.quad	.LVL14
	.long	0x179e
	.uleb128 0x24
	.quad	.LVL15
	.long	0x186b
	.long	0xdce
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x24
	.quad	.LVL18
	.long	0xf17
	.long	0xdec
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL37
	.long	0x1839
	.long	0xe09
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.quad	.LVL40
	.long	0x1839
	.long	0xe2c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL61
	.long	0x179e
	.uleb128 0x24
	.quad	.LVL63
	.long	0x1877
	.long	0xe5d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.quad	.LVL64
	.long	0x17aa
	.long	0xe81
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x24
	.quad	.LVL68
	.long	0x1839
	.long	0xe9e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL70
	.long	0x1877
	.long	0xec0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL71
	.long	0x17aa
	.long	0xeea
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x24
	.quad	.LVL72
	.long	0x17ff
	.long	0xf02
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL74
	.long	0x17ff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF154
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0x29
	.byte	0x1
	.long	0xf3f
	.uleb128 0x31
	.long	.LASF134
	.byte	0x1
	.byte	0x5e
	.byte	0x17
	.long	0x29
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.byte	0x5e
	.byte	0x24
	.long	0x9e
	.byte	0
	.uleb128 0x33
	.long	.LASF145
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x153d
	.uleb128 0x1f
	.long	.LASF146
	.byte	0x1
	.byte	0x3c
	.byte	0xc
	.long	0x61
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x2d
	.long	0x165e
	.quad	.LBI111
	.byte	.LVU208
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.long	0xfbe
	.uleb128 0x2e
	.long	0x167b
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x2e
	.long	0x166f
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x26
	.quad	.LVL87
	.long	0x1884
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x153d
	.quad	.LBI115
	.byte	.LVU236
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.long	0x12d1
	.uleb128 0x34
	.long	0x154b
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x180
	.uleb128 0x36
	.long	0x1588
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x37
	.long	0x1595
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x37
	.long	0x15a2
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x37
	.long	0x15af
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x38
	.long	0x163f
	.quad	.LBI117
	.byte	.LVU260
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0x10a2
	.uleb128 0x2e
	.long	0x1650
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x24
	.quad	.LVL113
	.long	0x1890
	.long	0x1074
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.byte	0
	.uleb128 0x26
	.quad	.LVL130
	.long	0x1890
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	0x163f
	.quad	.LBI123
	.byte	.LVU275
	.long	.Ldebug_ranges0+0x200
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0x111a
	.uleb128 0x2e
	.long	0x1650
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x24
	.quad	.LVL121
	.long	0x1890
	.long	0x10f3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL137
	.long	0x1890
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	0x163f
	.quad	.LBI132
	.byte	.LVU286
	.long	.Ldebug_ranges0+0x270
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0x1161
	.uleb128 0x2e
	.long	0x1650
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x26
	.quad	.LVL125
	.long	0x1890
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL110
	.long	0x1786
	.long	0x118a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL114
	.long	0x17c2
	.long	0x11a6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL116
	.long	0x189c
	.long	0x11ca
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x24
	.quad	.LVL118
	.long	0x1786
	.long	0x11f3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL122
	.long	0x1786
	.long	0x121c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL127
	.long	0x1786
	.uleb128 0x24
	.quad	.LVL131
	.long	0x17c2
	.long	0x1245
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL133
	.long	0x189c
	.long	0x1269
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x24
	.quad	.LVL134
	.long	0x1786
	.long	0x1292
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL139
	.long	0x1786
	.long	0x12bb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL140
	.long	0x18a8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x163f
	.quad	.LBI142
	.byte	.LVU220
	.long	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.byte	0x42
	.byte	0x7
	.long	0x1311
	.uleb128 0x2e
	.long	0x1650
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x26
	.quad	.LVL93
	.long	0x1890
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x15e2
	.quad	.LBI146
	.byte	.LVU227
	.quad	.LBB146
	.quad	.LBE146-.LBB146
	.byte	0x1
	.byte	0x4a
	.byte	0x7
	.long	0x1374
	.uleb128 0x24
	.quad	.LVL96
	.long	0x1786
	.long	0x135f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL97
	.long	0x18a8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x15d8
	.quad	.LBI148
	.byte	.LVU230
	.quad	.LBB148
	.quad	.LBE148-.LBB148
	.byte	0x1
	.byte	0x4b
	.byte	0x7
	.long	0x13d7
	.uleb128 0x24
	.quad	.LVL98
	.long	0x1786
	.long	0x13c2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL99
	.long	0x18a8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL84
	.long	0x1786
	.long	0x1400
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL88
	.long	0x1779
	.long	0x1418
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL90
	.long	0x1786
	.long	0x143c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x24
	.quad	.LVL94
	.long	0x1786
	.long	0x1465
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL95
	.long	0x18a8
	.long	0x147d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL100
	.long	0x1786
	.long	0x14a6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL101
	.long	0x18a8
	.long	0x14be
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL102
	.long	0x1786
	.long	0x14e7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL103
	.long	0x18a8
	.long	0x14ff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL104
	.long	0x1786
	.long	0x1528
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL105
	.long	0x18a8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF200
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x15bd
	.uleb128 0x3a
	.long	.LASF147
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x292
	.uleb128 0x3b
	.long	.LASF148
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0x1583
	.uleb128 0x3c
	.long	.LASF147
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x292
	.byte	0
	.uleb128 0x3c
	.long	.LASF149
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x292
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x1558
	.uleb128 0x3d
	.long	.LASF148
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0x15cd
	.uleb128 0x3d
	.long	.LASF149
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x292
	.uleb128 0x3d
	.long	.LASF150
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0x15d2
	.uleb128 0x3d
	.long	.LASF151
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x292
	.byte	0
	.uleb128 0xd
	.long	0x1583
	.long	0x15cd
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x15bd
	.uleb128 0x7
	.byte	0x8
	.long	0x1583
	.uleb128 0x3e
	.long	.LASF152
	.byte	0x3
	.value	0x24c
	.byte	0x1
	.byte	0x3
	.uleb128 0x3e
	.long	.LASF153
	.byte	0x3
	.value	0x245
	.byte	0x1
	.byte	0x3
	.uleb128 0x30
	.long	.LASF155
	.byte	0x3
	.byte	0x9c
	.byte	0x1d
	.long	0x45
	.byte	0x3
	.long	0x1609
	.uleb128 0x32
	.string	"ch"
	.byte	0x3
	.byte	0x9c
	.byte	0x2c
	.long	0x9e
	.byte	0
	.uleb128 0x3f
	.long	.LASF159
	.byte	0x4
	.byte	0x26
	.byte	0x1
	.long	0x43
	.byte	0x3
	.long	0x163f
	.uleb128 0x31
	.long	.LASF156
	.byte	0x4
	.byte	0x26
	.byte	0x1
	.long	0x43
	.uleb128 0x31
	.long	.LASF157
	.byte	0x4
	.byte	0x26
	.byte	0x1
	.long	0x48f
	.uleb128 0x31
	.long	.LASF158
	.byte	0x4
	.byte	0x26
	.byte	0x1
	.long	0x29
	.byte	0
	.uleb128 0x3f
	.long	.LASF160
	.byte	0x5
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x165e
	.uleb128 0x31
	.long	.LASF161
	.byte	0x5
	.byte	0x69
	.byte	0x20
	.long	0x29d
	.uleb128 0x40
	.byte	0
	.uleb128 0x3f
	.long	.LASF162
	.byte	0x5
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1689
	.uleb128 0x31
	.long	.LASF140
	.byte	0x5
	.byte	0x62
	.byte	0x1b
	.long	0x2b4
	.uleb128 0x31
	.long	.LASF161
	.byte	0x5
	.byte	0x62
	.byte	0x3c
	.long	0x29d
	.uleb128 0x40
	.byte	0
	.uleb128 0x41
	.long	.LASF163
	.byte	0x2
	.byte	0x87
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x16a7
	.uleb128 0x31
	.long	.LASF140
	.byte	0x2
	.byte	0x87
	.byte	0x1
	.long	0x2ae
	.byte	0
	.uleb128 0x41
	.long	.LASF164
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x16c5
	.uleb128 0x32
	.string	"__c"
	.byte	0x2
	.byte	0x6c
	.byte	0x17
	.long	0x61
	.byte	0
	.uleb128 0x41
	.long	.LASF165
	.byte	0x2
	.byte	0x65
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x16ef
	.uleb128 0x32
	.string	"__c"
	.byte	0x2
	.byte	0x65
	.byte	0x14
	.long	0x61
	.uleb128 0x31
	.long	.LASF140
	.byte	0x2
	.byte	0x65
	.byte	0x1f
	.long	0x2ae
	.byte	0
	.uleb128 0x41
	.long	.LASF166
	.byte	0x2
	.byte	0x42
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x170d
	.uleb128 0x31
	.long	.LASF167
	.byte	0x2
	.byte	0x42
	.byte	0x16
	.long	0x2ae
	.byte	0
	.uleb128 0x42
	.long	0xf17
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x176d
	.uleb128 0x2e
	.long	0xf28
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x34
	.long	0xf34
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x43
	.long	0xf17
	.quad	.LBI68
	.byte	.LVU7
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uleb128 0x2e
	.long	0xf34
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x2e
	.long	0xf28
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.byte	0
	.uleb128 0x44
	.long	.LASF168
	.long	.LASF168
	.byte	0x18
	.byte	0x3c
	.byte	0xd
	.uleb128 0x45
	.long	.LASF169
	.long	.LASF169
	.byte	0x1d
	.value	0x269
	.byte	0xd
	.uleb128 0x44
	.long	.LASF170
	.long	.LASF170
	.byte	0x1e
	.byte	0x33
	.byte	0xe
	.uleb128 0x44
	.long	.LASF171
	.long	.LASF171
	.byte	0x1f
	.byte	0x1f
	.byte	0x1
	.uleb128 0x44
	.long	.LASF172
	.long	.LASF172
	.byte	0x13
	.byte	0x25
	.byte	0xd
	.uleb128 0x44
	.long	.LASF173
	.long	.LASF173
	.byte	0x1b
	.byte	0x28
	.byte	0xd
	.uleb128 0x44
	.long	.LASF174
	.long	.LASF174
	.byte	0x19
	.byte	0x25
	.byte	0xd
	.uleb128 0x44
	.long	.LASF175
	.long	.LASF175
	.byte	0x20
	.byte	0x7a
	.byte	0xe
	.uleb128 0x44
	.long	.LASF176
	.long	.LASF176
	.byte	0x1e
	.byte	0x56
	.byte	0xe
	.uleb128 0x44
	.long	.LASF177
	.long	.LASF177
	.byte	0x1e
	.byte	0x52
	.byte	0xe
	.uleb128 0x45
	.long	.LASF178
	.long	.LASF178
	.byte	0x1d
	.value	0x253
	.byte	0xc
	.uleb128 0x44
	.long	.LASF179
	.long	.LASF179
	.byte	0xf
	.byte	0x42
	.byte	0xc
	.uleb128 0x45
	.long	.LASF180
	.long	.LASF180
	.byte	0x21
	.value	0x2be
	.byte	0x1
	.uleb128 0x46
	.long	.LASF201
	.long	.LASF201
	.uleb128 0x44
	.long	.LASF181
	.long	.LASF181
	.byte	0x22
	.byte	0x3d
	.byte	0x7
	.uleb128 0x45
	.long	.LASF182
	.long	.LASF182
	.byte	0xa
	.value	0x35b
	.byte	0xc
	.uleb128 0x47
	.long	.LASF159
	.long	.LASF202
	.byte	0x24
	.byte	0
	.uleb128 0x45
	.long	.LASF183
	.long	.LASF183
	.byte	0xa
	.value	0x2a3
	.byte	0xf
	.uleb128 0x44
	.long	.LASF184
	.long	.LASF184
	.byte	0x17
	.byte	0x4f
	.byte	0x23
	.uleb128 0x45
	.long	.LASF185
	.long	.LASF185
	.byte	0xa
	.value	0x35a
	.byte	0xc
	.uleb128 0x44
	.long	.LASF186
	.long	.LASF186
	.byte	0xa
	.byte	0xf6
	.byte	0xe
	.uleb128 0x44
	.long	.LASF187
	.long	.LASF187
	.byte	0x1c
	.byte	0x48
	.byte	0x6
	.uleb128 0x45
	.long	.LASF188
	.long	.LASF188
	.byte	0x1a
	.value	0x18d
	.byte	0x7
	.uleb128 0x44
	.long	.LASF189
	.long	.LASF189
	.byte	0x5
	.byte	0x58
	.byte	0xc
	.uleb128 0x44
	.long	.LASF190
	.long	.LASF190
	.byte	0x5
	.byte	0x5a
	.byte	0xc
	.uleb128 0x44
	.long	.LASF191
	.long	.LASF191
	.byte	0x23
	.byte	0x8c
	.byte	0xc
	.uleb128 0x45
	.long	.LASF192
	.long	.LASF192
	.byte	0xa
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
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x43
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
.LVUS30:
	.uleb128 0
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU392
	.uleb128 .LVU392
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU416
	.uleb128 .LVU416
	.uleb128 0
.LLST30:
	.quad	.LVL141
	.quad	.LVL142
	.value	0x1
	.byte	0x55
	.quad	.LVL142
	.quad	.LVL162
	.value	0x1
	.byte	0x56
	.quad	.LVL162
	.quad	.LVL172
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL172
	.quad	.LVL178
	.value	0x1
	.byte	0x56
	.quad	.LVL178
	.quad	.LFE138
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU412
	.uleb128 .LVU412
	.uleb128 .LVU413
	.uleb128 .LVU413
	.uleb128 .LVU414
	.uleb128 .LVU414
	.uleb128 .LVU415
	.uleb128 .LVU415
	.uleb128 .LVU416
	.uleb128 .LVU416
	.uleb128 0
.LLST31:
	.quad	.LVL141
	.quad	.LVL144-1
	.value	0x1
	.byte	0x54
	.quad	.LVL144-1
	.quad	.LVL163
	.value	0x1
	.byte	0x53
	.quad	.LVL163
	.quad	.LVL172
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL172
	.quad	.LVL174
	.value	0x1
	.byte	0x53
	.quad	.LVL174
	.quad	.LVL175
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL175
	.quad	.LVL176
	.value	0x1
	.byte	0x53
	.quad	.LVL176
	.quad	.LVL177
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL177
	.quad	.LVL178
	.value	0x1
	.byte	0x53
	.quad	.LVL178
	.quad	.LFE138
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS32:
	.uleb128 .LVU328
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU405
	.uleb128 .LVU406
	.uleb128 0
.LLST32:
	.quad	.LVL143
	.quad	.LVL149
	.value	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.quad	.LVL149
	.quad	.LVL156
	.value	0x1
	.byte	0x5d
	.quad	.LVL156
	.quad	.LVL157
	.value	0x1
	.byte	0x50
	.quad	.LVL157
	.quad	.LVL168
	.value	0x1
	.byte	0x5d
	.quad	.LVL169
	.quad	.LFE138
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS33:
	.uleb128 .LVU389
	.uleb128 .LVU391
	.uleb128 .LVU413
	.uleb128 .LVU415
.LLST33:
	.quad	.LVL160
	.quad	.LVL161
	.value	0x1
	.byte	0x50
	.quad	.LVL175
	.quad	.LVL177
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS34:
	.uleb128 .LVU346
	.uleb128 .LVU352
	.uleb128 .LVU354
	.uleb128 .LVU367
	.uleb128 .LVU372
	.uleb128 .LVU376
	.uleb128 .LVU376
	.uleb128 .LVU388
	.uleb128 .LVU415
	.uleb128 .LVU416
.LLST34:
	.quad	.LVL150
	.quad	.LVL151
	.value	0x1
	.byte	0x50
	.quad	.LVL153
	.quad	.LVL154-1
	.value	0x1
	.byte	0x50
	.quad	.LVL157
	.quad	.LVL158-1
	.value	0x1
	.byte	0x50
	.quad	.LVL158
	.quad	.LVL159
	.value	0x1
	.byte	0x50
	.quad	.LVL177
	.quad	.LVL178-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS35:
	.uleb128 .LVU389
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 .LVU402
	.uleb128 .LVU406
	.uleb128 .LVU409
	.uleb128 .LVU412
	.uleb128 .LVU413
	.uleb128 .LVU413
	.uleb128 .LVU415
.LLST35:
	.quad	.LVL160
	.quad	.LVL163
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL163
	.quad	.LVL167
	.value	0x1
	.byte	0x53
	.quad	.LVL169
	.quad	.LVL172
	.value	0x1
	.byte	0x53
	.quad	.LVL174
	.quad	.LVL175
	.value	0x1
	.byte	0x50
	.quad	.LVL175
	.quad	.LVL177
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST3:
	.quad	.LVL9
	.quad	.LVL10
	.value	0x1
	.byte	0x55
	.quad	.LVL10
	.quad	.LVL59
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL59
	.quad	.LVL61-1
	.value	0x1
	.byte	0x55
	.quad	.LVL61-1
	.quad	.LFE137
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 0
.LLST4:
	.quad	.LVL9
	.quad	.LVL11
	.value	0x1
	.byte	0x54
	.quad	.LVL11
	.quad	.LVL29
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL29
	.quad	.LVL34
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	.LVL34
	.quad	.LVL59
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL59
	.quad	.LVL61-1
	.value	0x1
	.byte	0x54
	.quad	.LVL61-1
	.quad	.LVL65
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL65
	.quad	.LVL67
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	.LVL67
	.quad	.LFE137
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU39
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU96
	.uleb128 .LVU98
	.uleb128 .LVU158
	.uleb128 .LVU162
	.uleb128 .LVU172
	.uleb128 .LVU173
	.uleb128 0
.LLST5:
	.quad	.LVL13
	.quad	.LVL14-1
	.value	0x1
	.byte	0x50
	.quad	.LVL14-1
	.quad	.LVL32
	.value	0x1
	.byte	0x5d
	.quad	.LVL34
	.quad	.LVL59
	.value	0x1
	.byte	0x5d
	.quad	.LVL60
	.quad	.LVL66
	.value	0x1
	.byte	0x5d
	.quad	.LVL67
	.quad	.LFE137
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU52
	.uleb128 .LVU58
	.uleb128 .LVU76
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU92
	.uleb128 .LVU108
	.uleb128 .LVU118
	.uleb128 .LVU173
	.uleb128 .LVU180
	.uleb128 .LVU185
	.uleb128 .LVU187
.LLST6:
	.quad	.LVL16
	.quad	.LVL17
	.value	0x1
	.byte	0x53
	.quad	.LVL24
	.quad	.LVL25
	.value	0x1
	.byte	0x50
	.quad	.LVL25
	.quad	.LVL28
	.value	0x1
	.byte	0x53
	.quad	.LVL38
	.quad	.LVL43
	.value	0x1
	.byte	0x53
	.quad	.LVL67
	.quad	.LVL69
	.value	0x1
	.byte	0x53
	.quad	.LVL73
	.quad	.LVL75
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU26
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU106
	.uleb128 .LVU108
	.uleb128 .LVU113
	.uleb128 .LVU114
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU167
	.uleb128 .LVU173
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 0
.LLST7:
	.quad	.LVL9
	.quad	.LVL15
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL15
	.quad	.LVL19
	.value	0x1
	.byte	0x5e
	.quad	.LVL19
	.quad	.LVL20
	.value	0x1
	.byte	0x50
	.quad	.LVL20
	.quad	.LVL33
	.value	0x1
	.byte	0x5e
	.quad	.LVL34
	.quad	.LVL36
	.value	0x1
	.byte	0x5e
	.quad	.LVL38
	.quad	.LVL39
	.value	0x1
	.byte	0x5e
	.quad	.LVL41
	.quad	.LVL43
	.value	0x1
	.byte	0x5e
	.quad	.LVL43
	.quad	.LVL44
	.value	0x1
	.byte	0x50
	.quad	.LVL44
	.quad	.LVL54
	.value	0x1
	.byte	0x5e
	.quad	.LVL54
	.quad	.LVL55
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL55
	.quad	.LVL58
	.value	0x1
	.byte	0x5e
	.quad	.LVL58
	.quad	.LVL59
	.value	0x1
	.byte	0x50
	.quad	.LVL59
	.quad	.LVL62
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL75
	.value	0x1
	.byte	0x5e
	.quad	.LVL75
	.quad	.LVL76
	.value	0x1
	.byte	0x50
	.quad	.LVL76
	.quad	.LVL79
	.value	0x1
	.byte	0x5e
	.quad	.LVL79
	.quad	.LVL80
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL80
	.quad	.LFE137
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU27
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU95
	.uleb128 .LVU98
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU107
	.uleb128 .LVU108
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU141
	.uleb128 .LVU148
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU167
	.uleb128 .LVU173
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 0
.LLST8:
	.quad	.LVL9
	.quad	.LVL15
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL15
	.quad	.LVL21
	.value	0x1
	.byte	0x5c
	.quad	.LVL21
	.quad	.LVL22
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL22
	.quad	.LVL31
	.value	0x1
	.byte	0x5c
	.quad	.LVL34
	.quad	.LVL34
	.value	0x1
	.byte	0x5c
	.quad	.LVL34
	.quad	.LVL35
	.value	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL37-1
	.value	0x1
	.byte	0x51
	.quad	.LVL38
	.quad	.LVL38
	.value	0x1
	.byte	0x5c
	.quad	.LVL38
	.quad	.LVL41
	.value	0x1
	.byte	0x56
	.quad	.LVL41
	.quad	.LVL52
	.value	0x1
	.byte	0x5c
	.quad	.LVL54
	.quad	.LVL59
	.value	0x1
	.byte	0x5c
	.quad	.LVL59
	.quad	.LVL62
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL67
	.quad	.LVL75
	.value	0x1
	.byte	0x5c
	.quad	.LVL75
	.quad	.LVL77
	.value	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.quad	.LVL77
	.quad	.LFE137
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU81
	.uleb128 .LVU94
	.uleb128 .LVU173
	.uleb128 .LVU187
	.uleb128 .LVU192
	.uleb128 .LVU194
.LLST9:
	.quad	.LVL26
	.quad	.LVL30
	.value	0x1
	.byte	0x56
	.quad	.LVL67
	.quad	.LVL75
	.value	0x1
	.byte	0x56
	.quad	.LVL78
	.quad	.LVL79
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU130
	.uleb128 .LVU158
	.uleb128 .LVU194
	.uleb128 0
.LLST12:
	.quad	.LVL48
	.quad	.LVL59
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL79
	.quad	.LFE137
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU158
	.uleb128 .LVU194
	.uleb128 0
.LLST13:
	.quad	.LVL44
	.quad	.LVL45
	.value	0x1
	.byte	0x56
	.quad	.LVL45
	.quad	.LVL47
	.value	0x1
	.byte	0x53
	.quad	.LVL47
	.quad	.LVL48
	.value	0x1
	.byte	0x56
	.quad	.LVL48
	.quad	.LVL59
	.value	0x1
	.byte	0x53
	.quad	.LVL79
	.quad	.LFE137
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU149
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU156
	.uleb128 .LVU194
	.uleb128 .LVU195
.LLST15:
	.quad	.LVL54
	.quad	.LVL55
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL55
	.quad	.LVL57
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL57
	.quad	.LVL58
	.value	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL79
	.quad	.LVL80
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU135
	.uleb128 .LVU138
	.uleb128 .LVU195
	.uleb128 0
.LLST16:
	.quad	.LVL49
	.quad	.LVL50
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL80
	.quad	.LFE137
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU141
	.uleb128 .LVU146
.LLST17:
	.quad	.LVL52
	.quad	.LVL54
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU140
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU146
.LLST18:
	.quad	.LVL51
	.quad	.LVL53
	.value	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL53
	.quad	.LVL54-1
	.value	0x1
	.byte	0x54
	.quad	.LVL54-1
	.quad	.LVL54
	.value	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU140
	.uleb128 .LVU146
.LLST19:
	.quad	.LVL51
	.quad	.LVL54
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU125
	.uleb128 .LVU127
.LLST14:
	.quad	.LVL47
	.quad	.LVL47
	.value	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU48
	.uleb128 .LVU52
	.uleb128 .LVU72
	.uleb128 .LVU76
.LLST10:
	.quad	.LVL15
	.quad	.LVL16
	.value	0x1
	.byte	0x5d
	.quad	.LVL22
	.quad	.LVL24
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU175
	.uleb128 .LVU177
.LLST11:
	.quad	.LVL27
	.quad	.LVL27
	.value	0x1
	.byte	0x5d
	.quad	.LVL68
	.quad	.LVL68
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 0
.LLST20:
	.quad	.LVL82
	.quad	.LVL83
	.value	0x1
	.byte	0x55
	.quad	.LVL83
	.quad	.LVL88
	.value	0x1
	.byte	0x56
	.quad	.LVL88
	.quad	.LVL89
	.value	0x1
	.byte	0x55
	.quad	.LVL89
	.quad	.LFE135
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU208
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU212
.LLST21:
	.quad	.LVL85
	.quad	.LVL86
	.value	0x1
	.byte	0x50
	.quad	.LVL86
	.quad	.LVL87-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU208
	.uleb128 .LVU212
.LLST22:
	.quad	.LVL85
	.quad	.LVL87-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU240
	.uleb128 .LVU256
	.uleb128 .LVU256
	.uleb128 .LVU271
	.uleb128 .LVU292
	.uleb128 .LVU320
.LLST23:
	.quad	.LVL106
	.quad	.LVL109
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	.LVL109
	.quad	.LVL117
	.value	0x1
	.byte	0x5c
	.quad	.LVL126
	.quad	.LVL138
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU241
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU258
	.uleb128 .LVU292
	.uleb128 .LVU294
.LLST24:
	.quad	.LVL106
	.quad	.LVL107
	.value	0x1
	.byte	0x57
	.quad	.LVL107
	.quad	.LVL110-1
	.value	0x1
	.byte	0x50
	.quad	.LVL126
	.quad	.LVL127-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU267
	.uleb128 .LVU270
	.uleb128 .LVU303
	.uleb128 .LVU306
.LLST25:
	.quad	.LVL115
	.quad	.LVL116-1
	.value	0x1
	.byte	0x50
	.quad	.LVL132
	.quad	.LVL133-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU260
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 .LVU264
	.uleb128 .LVU296
	.uleb128 .LVU299
	.uleb128 .LVU299
	.uleb128 .LVU300
.LLST26:
	.quad	.LVL111
	.quad	.LVL112
	.value	0x1
	.byte	0x50
	.quad	.LVL112
	.quad	.LVL113-1
	.value	0x1
	.byte	0x54
	.quad	.LVL128
	.quad	.LVL129
	.value	0x1
	.byte	0x50
	.quad	.LVL129
	.quad	.LVL130-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU275
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU281
	.uleb128 .LVU311
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 .LVU317
.LLST27:
	.quad	.LVL119
	.quad	.LVL120
	.value	0x1
	.byte	0x50
	.quad	.LVL120
	.quad	.LVL121-1
	.value	0x1
	.byte	0x54
	.quad	.LVL135
	.quad	.LVL136
	.value	0x1
	.byte	0x50
	.quad	.LVL136
	.quad	.LVL137-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU286
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU290
.LLST28:
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
.LVUS29:
	.uleb128 .LVU220
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU224
.LLST29:
	.quad	.LVL91
	.quad	.LVL92
	.value	0x1
	.byte	0x50
	.quad	.LVL92
	.quad	.LVL93-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL4
	.value	0x1
	.byte	0x55
	.quad	.LVL4
	.quad	.LVL5
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.quad	.LVL5
	.quad	.LVL6
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x55
	.quad	.LVL7
	.quad	.LFE136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU7
	.uleb128 .LVU10
	.uleb128 .LVU18
	.uleb128 0
.LLST1:
	.quad	.LVL1
	.quad	.LVL2
	.value	0x1
	.byte	0x54
	.quad	.LVL6
	.quad	.LFE136
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU7
	.uleb128 .LVU10
	.uleb128 .LVU18
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 0
.LLST2:
	.quad	.LVL1
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x55
	.quad	.LVL7
	.quad	.LVL8
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL8
	.quad	.LFE136
	.value	0x1
	.byte	0x50
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
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB68
	.quad	.LBE68
	.quad	.LBB71
	.quad	.LBE71
	.quad	0
	.quad	0
	.quad	.LBB72
	.quad	.LBE72
	.quad	.LBB75
	.quad	.LBE75
	.quad	0
	.quad	0
	.quad	.LBB76
	.quad	.LBE76
	.quad	.LBB93
	.quad	.LBE93
	.quad	0
	.quad	0
	.quad	.LBB80
	.quad	.LBE80
	.quad	.LBB94
	.quad	.LBE94
	.quad	0
	.quad	0
	.quad	.LBB83
	.quad	.LBE83
	.quad	.LBB92
	.quad	.LBE92
	.quad	0
	.quad	0
	.quad	.LBB84
	.quad	.LBE84
	.quad	.LBB91
	.quad	.LBE91
	.quad	0
	.quad	0
	.quad	.LBB87
	.quad	.LBE87
	.quad	.LBB90
	.quad	.LBE90
	.quad	0
	.quad	0
	.quad	.LBB111
	.quad	.LBE111
	.quad	.LBB114
	.quad	.LBE114
	.quad	0
	.quad	0
	.quad	.LBB115
	.quad	.LBE115
	.quad	.LBB150
	.quad	.LBE150
	.quad	0
	.quad	0
	.quad	.LBB117
	.quad	.LBE117
	.quad	.LBB122
	.quad	.LBE122
	.quad	.LBB136
	.quad	.LBE136
	.quad	.LBB137
	.quad	.LBE137
	.quad	0
	.quad	0
	.quad	.LBB123
	.quad	.LBE123
	.quad	.LBB130
	.quad	.LBE130
	.quad	.LBB131
	.quad	.LBE131
	.quad	.LBB138
	.quad	.LBE138
	.quad	.LBB139
	.quad	.LBE139
	.quad	.LBB140
	.quad	.LBE140
	.quad	0
	.quad	0
	.quad	.LBB132
	.quad	.LBE132
	.quad	.LBB135
	.quad	.LBE135
	.quad	0
	.quad	0
	.quad	.LBB142
	.quad	.LBE142
	.quad	.LBB145
	.quad	.LBE145
	.quad	0
	.quad	0
	.quad	.LBB151
	.quad	.LBE151
	.quad	.LBB152
	.quad	.LBE152
	.quad	.LBB154
	.quad	.LBE154
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB138
	.quad	.LFE138
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF160:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF90:
	.string	"_ISgraph"
.LASF107:
	.string	"locale_quoting_style"
.LASF25:
	.string	"_chain"
.LASF96:
	.string	"GETOPT_VERSION_CHAR"
.LASF126:
	.string	"longopts"
.LASF197:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF131:
	.string	"optargbuf"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF174:
	.string	"set_program_name"
.LASF31:
	.string	"_shortbuf"
.LASF88:
	.string	"_ISspace"
.LASF101:
	.string	"shell_always_quoting_style"
.LASF100:
	.string	"shell_quoting_style"
.LASF95:
	.string	"GETOPT_HELP_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF157:
	.string	"__src"
.LASF85:
	.string	"_ISalpha"
.LASF164:
	.string	"putchar_unlocked"
.LASF178:
	.string	"atexit"
.LASF86:
	.string	"_ISdigit"
.LASF68:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF111:
	.string	"quoting_style_vals"
.LASF147:
	.string	"program"
.LASF106:
	.string	"escape_quoting_style"
.LASF99:
	.string	"literal_quoting_style"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF74:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"_gl_cxxalias_dummy"
.LASF171:
	.string	"xdectoumax"
.LASF12:
	.string	"_flags"
.LASF153:
	.string	"emit_stdin_note"
.LASF35:
	.string	"_wide_data"
.LASF94:
	.string	"_ISalnum"
.LASF29:
	.string	"_cur_column"
.LASF78:
	.string	"program_invocation_short_name"
.LASF104:
	.string	"c_quoting_style"
.LASF177:
	.string	"textdomain"
.LASF43:
	.string	"_IO_codecvt"
.LASF51:
	.string	"_sys_errlist"
.LASF190:
	.string	"__printf_chk"
.LASF77:
	.string	"program_invocation_name"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF91:
	.string	"_ISblank"
.LASF138:
	.string	"saved_errno"
.LASF103:
	.string	"shell_escape_always_quoting_style"
.LASF71:
	.string	"timezone"
.LASF180:
	.string	"rpl_fclose"
.LASF154:
	.string	"adjust_column"
.LASF93:
	.string	"_ISpunct"
.LASF98:
	.string	"program_name"
.LASF168:
	.string	"version_etc"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF193:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF162:
	.string	"fprintf"
.LASF202:
	.string	"__builtin_memmove"
.LASF140:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF176:
	.string	"bindtextdomain"
.LASF17:
	.string	"_IO_write_ptr"
.LASF63:
	.string	"name"
.LASF70:
	.string	"daylight"
.LASF48:
	.string	"sys_nerr"
.LASF129:
	.string	"width"
.LASF143:
	.string	"logical_end"
.LASF3:
	.string	"short unsigned int"
.LASF114:
	.string	"error_one_per_line"
.LASF79:
	.string	"Version"
.LASF21:
	.string	"_IO_save_base"
.LASF155:
	.string	"to_uchar"
.LASF76:
	.string	"environ"
.LASF32:
	.string	"_lock"
.LASF142:
	.string	"found_blank"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF175:
	.string	"setlocale"
.LASF136:
	.string	"line_out"
.LASF46:
	.string	"stdout"
.LASF116:
	.string	"FADVISE_SEQUENTIAL"
.LASF130:
	.string	"optc"
.LASF97:
	.string	"version_etc_copyright"
.LASF167:
	.string	"__fp"
.LASF135:
	.string	"offset_out"
.LASF125:
	.string	"shortopts"
.LASF57:
	.string	"optarg"
.LASF141:
	.string	"__cnt"
.LASF72:
	.string	"getdate_err"
.LASF132:
	.string	"filename"
.LASF58:
	.string	"optind"
.LASF13:
	.string	"_IO_read_ptr"
.LASF187:
	.string	"fadvise"
.LASF182:
	.string	"__overflow"
.LASF156:
	.string	"__dest"
.LASF9:
	.string	"__off64_t"
.LASF196:
	.string	"_IO_lock_t"
.LASF61:
	.string	"_IO_FILE"
.LASF112:
	.string	"error_print_progname"
.LASF123:
	.string	"count_bytes"
.LASF137:
	.string	"allocated_out"
.LASF150:
	.string	"map_prog"
.LASF75:
	.string	"__environ"
.LASF54:
	.string	"time_t"
.LASF163:
	.string	"ferror_unlocked"
.LASF186:
	.string	"fopen"
.LASF173:
	.string	"error"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF166:
	.string	"getc_unlocked"
.LASF181:
	.string	"x2realloc"
.LASF105:
	.string	"c_maybe_quoting_style"
.LASF121:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF149:
	.string	"node"
.LASF20:
	.string	"_IO_buf_end"
.LASF191:
	.string	"strncmp"
.LASF5:
	.string	"short int"
.LASF62:
	.string	"option"
.LASF158:
	.string	"__len"
.LASF65:
	.string	"flag"
.LASF50:
	.string	"_sys_nerr"
.LASF30:
	.string	"_vtable_offset"
.LASF69:
	.string	"tzname"
.LASF10:
	.string	"__time_t"
.LASF41:
	.string	"FILE"
.LASF80:
	.string	"exit_failure"
.LASF169:
	.string	"exit"
.LASF189:
	.string	"__fprintf_chk"
.LASF120:
	.string	"FADVISE_RANDOM"
.LASF201:
	.string	"__stack_chk_fail"
.LASF102:
	.string	"shell_escape_quoting_style"
.LASF170:
	.string	"dcgettext"
.LASF117:
	.string	"FADVISE_NOREUSE"
.LASF110:
	.string	"quoting_style_args"
.LASF60:
	.string	"optopt"
.LASF188:
	.string	"quotearg_n_style_colon"
.LASF183:
	.string	"fwrite_unlocked"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF118:
	.string	"FADVISE_DONTNEED"
.LASF92:
	.string	"_IScntrl"
.LASF81:
	.string	"TIMESPEC_HZ"
.LASF199:
	.string	"rescan"
.LASF87:
	.string	"_ISxdigit"
.LASF108:
	.string	"clocale_quoting_style"
.LASF84:
	.string	"_ISlower"
.LASF172:
	.string	"__errno_location"
.LASF59:
	.string	"opterr"
.LASF185:
	.string	"__uflow"
.LASF115:
	.string	"FADVISE_NORMAL"
.LASF15:
	.string	"_IO_read_base"
.LASF134:
	.string	"column"
.LASF23:
	.string	"_IO_save_end"
.LASF73:
	.string	"_sys_siglist"
.LASF124:
	.string	"have_read_stdin"
.LASF161:
	.string	"__fmt"
.LASF148:
	.string	"infomap"
.LASF34:
	.string	"_codecvt"
.LASF64:
	.string	"has_arg"
.LASF145:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF184:
	.string	"__ctype_b_loc"
.LASF18:
	.string	"_IO_write_end"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF128:
	.string	"argv"
.LASF122:
	.string	"break_spaces"
.LASF67:
	.string	"__daylight"
.LASF146:
	.string	"status"
.LASF195:
	.string	"/root/coreutils"
.LASF159:
	.string	"memmove"
.LASF83:
	.string	"_ISupper"
.LASF37:
	.string	"_freeres_buf"
.LASF22:
	.string	"_IO_backup_base"
.LASF109:
	.string	"custom_quoting_style"
.LASF165:
	.string	"putc_unlocked"
.LASF113:
	.string	"error_message_count"
.LASF151:
	.string	"lc_messages"
.LASF127:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF198:
	.string	"fold_file"
.LASF179:
	.string	"getopt_long"
.LASF119:
	.string	"FADVISE_WILLNEED"
.LASF133:
	.string	"istream"
.LASF192:
	.string	"fputs_unlocked"
.LASF152:
	.string	"emit_mandatory_arg_note"
.LASF66:
	.string	"__tzname"
.LASF144:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF200:
	.string	"emit_ancillary_info"
.LASF194:
	.string	"src/fold.c"
.LASF89:
	.string	"_ISprint"
.LASF139:
	.string	"__ptr"
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
