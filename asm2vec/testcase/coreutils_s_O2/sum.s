	.file	"sum.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s"
.LC1:
	.string	"%d %s"
.LC2:
	.string	" %s"
	.text
	.p2align 4
	.type	sysv_sum_file, @function
sysv_sum_file:
.LVL0:
.LFB141:
	.file 1 "src/sum.c"
	.loc 1 153 1 view -0
	.cfi_startproc
	.loc 1 153 1 is_stmt 0 view .LVU1
	endbr64
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
	subq	$696, %rsp
	.cfi_def_cfa_offset 8944
	.loc 1 164 19 view .LVU2
	movzbl	(%rdi), %r14d
	.loc 1 153 1 view .LVU3
	movl	%esi, 12(%rsp)
	movq	%rdi, %r12
	movq	%fs:40, %rax
	movq	%rax, 8872(%rsp)
	xorl	%eax, %eax
	.loc 1 154 3 is_stmt 1 view .LVU4
	.loc 1 155 3 view .LVU5
	.loc 1 156 3 view .LVU6
.LVL1:
	.loc 1 157 3 view .LVU7
	.loc 1 158 3 view .LVU8
	.loc 1 159 3 view .LVU9
	.loc 1 162 3 view .LVU10
	.loc 1 164 3 view .LVU11
	.loc 1 164 19 is_stmt 0 view .LVU12
	subl	$45, %r14d
	je	.L29
.L3:
	.loc 1 174 7 is_stmt 1 view .LVU13
.LVL2:
.LBB68:
.LBI68:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/fcntl2.h"
	.loc 2 41 1 view .LVU14
.LBB69:
	.loc 2 43 3 view .LVU15
	.loc 2 46 3 view .LVU16
	.loc 2 48 7 view .LVU17
	.loc 2 53 7 view .LVU18
	.loc 2 53 14 is_stmt 0 view .LVU19
	xorl	%esi, %esi
.LVL3:
	.loc 2 53 14 view .LVU20
	movq	%r12, %rdi
.LVL4:
	.loc 2 53 14 view .LVU21
	xorl	%eax, %eax
	call	open@PLT
.LVL5:
	.loc 2 53 14 view .LVU22
	movl	%eax, %r15d
.LVL6:
	.loc 2 53 14 view .LVU23
.LBE69:
.LBE68:
	.loc 1 175 7 is_stmt 1 view .LVU24
	.loc 1 175 10 is_stmt 0 view .LVU25
	cmpl	$-1, %eax
	je	.L27
.LVL7:
.L4:
	.loc 1 168 10 view .LVU26
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	leaq	672(%rsp), %r13
.LVL8:
	.p2align 4,,10
	.p2align 3
.L9:
	.loc 1 182 3 is_stmt 1 view .LVU27
.LBB70:
	.loc 1 184 7 view .LVU28
	.loc 1 184 27 is_stmt 0 view .LVU29
	movl	$8192, %edx
	movq	%r13, %rsi
	movl	%r15d, %edi
	call	safe_read@PLT
.LVL9:
	.loc 1 186 7 is_stmt 1 view .LVU30
	.loc 1 186 10 is_stmt 0 view .LVU31
	testq	%rax, %rax
	je	.L6
	.loc 1 189 7 is_stmt 1 view .LVU32
	.loc 1 189 10 is_stmt 0 view .LVU33
	cmpq	$-1, %rax
	je	.L30
	movq	%r13, %rdx
	leaq	0(%r13,%rax), %rsi
	.p2align 4,,10
	.p2align 3
.L8:
.LVL10:
.LBB71:
	.loc 1 198 9 is_stmt 1 discriminator 3 view .LVU34
	.loc 1 198 17 is_stmt 0 discriminator 3 view .LVU35
	movzbl	(%rdx), %ecx
	addq	$1, %rdx
.LVL11:
	.loc 1 198 11 discriminator 3 view .LVU36
	addl	%ecx, %ebx
.LVL12:
	.loc 1 197 42 is_stmt 1 discriminator 3 view .LVU37
	.loc 1 197 26 discriminator 3 view .LVU38
	.loc 1 197 7 is_stmt 0 discriminator 3 view .LVU39
	cmpq	%rsi, %rdx
	jne	.L8
.LBE71:
	.loc 1 199 7 is_stmt 1 view .LVU40
	.loc 1 199 19 is_stmt 0 view .LVU41
	addq	%rax, %rbp
.LVL13:
	.loc 1 199 19 view .LVU42
.LBE70:
	.loc 1 182 9 is_stmt 1 view .LVU43
	.loc 1 183 5 is_stmt 0 view .LVU44
	jmp	.L9
.LVL14:
.L29:
	.loc 1 164 19 view .LVU45
	movzbl	1(%rdi), %r14d
.LVL15:
	.loc 1 166 3 is_stmt 1 view .LVU46
	.loc 1 166 6 is_stmt 0 view .LVU47
	testl	%r14d, %r14d
	jne	.L3
	.loc 1 168 7 is_stmt 1 view .LVU48
.LVL16:
	.loc 1 169 7 view .LVU49
	.loc 1 169 23 is_stmt 0 view .LVU50
	movb	$1, have_read_stdin(%rip)
	.loc 1 170 7 is_stmt 1 view .LVU51
.LVL17:
	.loc 1 168 10 is_stmt 0 view .LVU52
	xorl	%r15d, %r15d
	jmp	.L4
.LVL18:
.L6:
	.loc 1 202 3 is_stmt 1 view .LVU53
	.loc 1 202 6 is_stmt 0 view .LVU54
	testl	%r14d, %r14d
	je	.L10
	.loc 1 202 20 discriminator 1 view .LVU55
	movl	%r15d, %edi
	call	close@PLT
.LVL19:
	.loc 1 202 17 discriminator 1 view .LVU56
	testl	%eax, %eax
	jne	.L27
.L10:
	.loc 1 208 3 is_stmt 1 view .LVU57
	.loc 1 208 10 is_stmt 0 view .LVU58
	movzwl	%bx, %eax
	.loc 1 208 40 view .LVU59
	shrl	$16, %ebx
.LVL20:
	.loc 1 211 3 view .LVU60
	leaq	16(%rsp), %rsi
	movl	$1, %ecx
	.loc 1 208 20 view .LVU61
	addl	%eax, %ebx
.LVL21:
	.loc 1 209 3 is_stmt 1 view .LVU62
	.loc 1 211 3 is_stmt 0 view .LVU63
	movl	$512, %r8d
	xorl	%edx, %edx
	movq	%rbp, %rdi
	call	human_readable@PLT
.LVL22:
	.loc 1 209 17 view .LVU64
	movzwl	%bx, %r14d
	.loc 1 209 32 view .LVU65
	sarl	$16, %ebx
.LVL23:
.LBB72:
.LBB73:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 107 10 view .LVU66
	leaq	.LC1(%rip), %rsi
.LBE73:
.LBE72:
	.loc 1 209 12 view .LVU67
	addl	%ebx, %r14d
.LVL24:
	.loc 1 211 3 is_stmt 1 view .LVU68
	movq	%rax, %rcx
.LVL25:
.LBB75:
.LBI72:
	.loc 3 105 1 view .LVU69
.LBB74:
	.loc 3 107 3 view .LVU70
	.loc 3 107 10 is_stmt 0 view .LVU71
	movl	$1, %edi
	xorl	%eax, %eax
	movl	%r14d, %edx
	call	__printf_chk@PLT
.LVL26:
	.loc 3 107 10 view .LVU72
.LBE74:
.LBE75:
	.loc 1 213 3 is_stmt 1 view .LVU73
	.loc 1 213 6 is_stmt 0 view .LVU74
	movl	12(%rsp), %eax
	testl	%eax, %eax
	jne	.L31
.L11:
	.loc 1 215 3 is_stmt 1 view .LVU75
.LVL27:
.LBB76:
.LBI76:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 4 108 1 view .LVU76
.LBB77:
	.loc 4 110 3 view .LVU77
	.loc 4 110 10 is_stmt 0 view .LVU78
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L32
	leaq	1(%rax), %rdx
.LBE77:
.LBE76:
	.loc 1 217 10 view .LVU79
	movl	$1, %r12d
.LVL28:
.LBB81:
.LBB78:
	.loc 4 110 10 view .LVU80
	movq	%rdx, 40(%rdi)
	movb	$10, (%rax)
.LVL29:
.L1:
	.loc 4 110 10 view .LVU81
.LBE78:
.LBE81:
	.loc 1 218 1 view .LVU82
	movq	8872(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L33
	addq	$8888, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
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
.LVL30:
	.loc 1 218 1 view .LVU83
	ret
.LVL31:
.L30:
	.cfi_restore_state
.LBB82:
	.loc 1 191 11 is_stmt 1 view .LVU84
	movq	%r12, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL32:
	.loc 1 191 11 is_stmt 0 view .LVU85
	movq	%rax, %r12
.LVL33:
	.loc 1 191 21 view .LVU86
	call	__errno_location@PLT
.LVL34:
	.loc 1 191 11 view .LVU87
	movq	%r12, %rcx
	leaq	.LC0(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	.loc 1 194 18 view .LVU88
	xorl	%r12d, %r12d
	.loc 1 191 11 view .LVU89
	call	error@PLT
.LVL35:
	.loc 1 192 11 is_stmt 1 view .LVU90
	.loc 1 192 14 is_stmt 0 view .LVU91
	testl	%r14d, %r14d
	je	.L1
	.loc 1 193 13 is_stmt 1 view .LVU92
	movl	%r15d, %edi
	call	close@PLT
.LVL36:
	jmp	.L1
.LVL37:
.L27:
	.loc 1 193 13 is_stmt 0 view .LVU93
.LBE82:
	.loc 1 204 7 is_stmt 1 view .LVU94
	movq	%r12, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL38:
	movq	%rax, %r12
.LVL39:
	.loc 1 204 17 is_stmt 0 view .LVU95
	call	__errno_location@PLT
.LVL40:
	.loc 1 204 7 view .LVU96
	movq	%r12, %rcx
	leaq	.LC0(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	.loc 1 205 14 view .LVU97
	xorl	%r12d, %r12d
	.loc 1 204 7 view .LVU98
	call	error@PLT
.LVL41:
	.loc 1 205 7 is_stmt 1 view .LVU99
	.loc 1 205 14 is_stmt 0 view .LVU100
	jmp	.L1
.LVL42:
.L31:
	.loc 1 214 5 is_stmt 1 view .LVU101
.LBB83:
.LBI83:
	.loc 3 105 1 view .LVU102
.LBB84:
	.loc 3 107 3 view .LVU103
	.loc 3 107 10 is_stmt 0 view .LVU104
	movq	%r12, %rdx
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL43:
	jmp	.L11
.LVL44:
.L32:
	.loc 3 107 10 view .LVU105
.LBE84:
.LBE83:
.LBB85:
.LBB79:
	.loc 4 110 10 view .LVU106
	movl	$10, %esi
.LBE79:
.LBE85:
	.loc 1 217 10 view .LVU107
	movl	$1, %r12d
.LVL45:
.LBB86:
.LBB80:
	.loc 4 110 10 view .LVU108
	call	__overflow@PLT
.LVL46:
	jmp	.L1
.LVL47:
.L33:
	.loc 4 110 10 view .LVU109
.LBE80:
.LBE86:
	.loc 1 218 1 view .LVU110
	call	__stack_chk_fail@PLT
.LVL48:
	.cfi_endproc
.LFE141:
	.size	sysv_sum_file, .-sysv_sum_file
	.section	.rodata.str1.1
.LC3:
	.string	"r"
.LC4:
	.string	"%05d %5s"
	.text
	.p2align 4
	.type	bsd_sum_file, @function
bsd_sum_file:
.LVL49:
.LFB140:
	.loc 1 89 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 89 1 is_stmt 0 view .LVU112
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$680, %rsp
	.cfi_def_cfa_offset 736
	.loc 1 95 19 view .LVU113
	movzbl	(%rdi), %ebx
	.loc 1 89 1 view .LVU114
	movq	%fs:40, %rax
	movq	%rax, 664(%rsp)
	xorl	%eax, %eax
	.loc 1 90 3 is_stmt 1 view .LVU115
	.loc 1 91 3 view .LVU116
.LVL50:
	.loc 1 92 3 view .LVU117
	.loc 1 93 3 view .LVU118
	.loc 1 94 3 view .LVU119
	.loc 1 95 3 view .LVU120
	.loc 1 95 19 is_stmt 0 view .LVU121
	subl	$45, %ebx
	je	.L60
.L36:
	.loc 1 105 7 is_stmt 1 view .LVU122
	.loc 1 105 12 is_stmt 0 view .LVU123
	leaq	.LC3(%rip), %rsi
.LVL51:
	.loc 1 105 12 view .LVU124
	movq	%r13, %rdi
.LVL52:
	.loc 1 105 12 view .LVU125
	call	fopen@PLT
.LVL53:
	movq	%rax, %r15
.LVL54:
	.loc 1 106 7 is_stmt 1 view .LVU126
	.loc 1 106 10 is_stmt 0 view .LVU127
	testq	%rax, %rax
	je	.L59
.LVL55:
.L37:
	.loc 1 113 3 is_stmt 1 view .LVU128
	movl	$2, %esi
	movq	%r15, %rdi
	.loc 1 92 13 is_stmt 0 view .LVU129
	xorl	%r14d, %r14d
	.loc 1 91 7 view .LVU130
	xorl	%r12d, %r12d
	.loc 1 113 3 view .LVU131
	call	fadvise@PLT
.LVL56:
	.loc 1 115 3 is_stmt 1 view .LVU132
	movq	16(%r15), %rsi
	movq	8(%r15), %rax
	.loc 1 115 9 is_stmt 0 view .LVU133
	jmp	.L39
.LVL57:
	.p2align 4,,10
	.p2align 3
.L40:
.LBB87:
.LBB88:
	.loc 4 68 10 view .LVU134
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%r15)
	movzbl	(%rax), %eax
.LVL58:
.L43:
	.loc 4 68 10 view .LVU135
.LBE88:
.LBE87:
	.loc 1 117 7 is_stmt 1 view .LVU136
	.loc 1 118 28 is_stmt 0 view .LVU137
	movl	%r12d, %edx
	.loc 1 118 52 view .LVU138
	sall	$15, %r12d
.LVL59:
	.loc 1 117 18 view .LVU139
	addq	$1, %r14
.LVL60:
	.loc 1 118 7 is_stmt 1 view .LVU140
	.loc 1 118 28 is_stmt 0 view .LVU141
	sarl	%edx
.LVL61:
	.loc 1 118 52 view .LVU142
	movzwl	%r12w, %r12d
	.loc 1 118 16 view .LVU143
	addl	%edx, %r12d
.LVL62:
	.loc 1 119 7 is_stmt 1 view .LVU144
	.loc 1 119 16 is_stmt 0 view .LVU145
	addl	%eax, %r12d
.LVL63:
	.loc 1 120 7 is_stmt 1 view .LVU146
	.loc 1 120 16 is_stmt 0 view .LVU147
	movq	%rcx, %rax
.LVL64:
	.loc 1 120 16 view .LVU148
	movzwl	%r12w, %r12d
.LVL65:
.L39:
	.loc 1 115 9 is_stmt 1 view .LVU149
.LBB90:
.LBI87:
	.loc 4 66 1 view .LVU150
.LBB89:
	.loc 4 68 3 view .LVU151
	.loc 4 68 10 is_stmt 0 view .LVU152
	cmpq	%rax, %rsi
	ja	.L40
	movq	%r15, %rdi
	call	__uflow@PLT
.LVL66:
	.loc 4 68 10 view .LVU153
.LBE89:
.LBE90:
	.loc 1 115 9 view .LVU154
	cmpl	$-1, %eax
	jne	.L61
	.loc 1 123 3 is_stmt 1 view .LVU155
.LVL67:
.LBB91:
.LBI91:
	.loc 4 135 1 view .LVU156
.LBB92:
	.loc 4 137 3 view .LVU157
	.loc 4 137 3 is_stmt 0 view .LVU158
.LBE92:
.LBE91:
	.loc 1 123 6 view .LVU159
	testb	$32, (%r15)
	jne	.L62
	.loc 1 131 3 is_stmt 1 view .LVU160
	.loc 1 131 6 is_stmt 0 view .LVU161
	testl	%ebx, %ebx
	je	.L45
	.loc 1 131 20 discriminator 1 view .LVU162
	movq	%r15, %rdi
	call	rpl_fclose@PLT
.LVL68:
	.loc 1 131 17 discriminator 1 view .LVU163
	testl	%eax, %eax
	jne	.L59
.L45:
	.loc 1 137 3 is_stmt 1 view .LVU164
	xorl	%edx, %edx
	movq	%rsp, %rsi
	movl	$1, %ecx
	movq	%r14, %rdi
	movl	$1024, %r8d
	call	human_readable@PLT
.LVL69:
.LBB93:
.LBB94:
	.loc 3 107 10 is_stmt 0 view .LVU165
	movl	%r12d, %edx
	movl	$1, %edi
	leaq	.LC4(%rip), %rsi
.LBE94:
.LBE93:
	.loc 1 137 3 view .LVU166
	movq	%rax, %rcx
.LVL70:
.LBB96:
.LBI93:
	.loc 3 105 1 is_stmt 1 view .LVU167
.LBB95:
	.loc 3 107 3 view .LVU168
	.loc 3 107 10 is_stmt 0 view .LVU169
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL71:
	.loc 3 107 10 view .LVU170
.LBE95:
.LBE96:
	.loc 1 139 3 is_stmt 1 view .LVU171
	.loc 1 139 6 is_stmt 0 view .LVU172
	cmpl	$1, %ebp
	jg	.L63
.L46:
	.loc 1 141 3 is_stmt 1 view .LVU173
.LVL72:
.LBB97:
.LBI97:
	.loc 4 108 1 view .LVU174
.LBB98:
	.loc 4 110 3 view .LVU175
	.loc 4 110 10 is_stmt 0 view .LVU176
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L64
	leaq	1(%rax), %rdx
.LBE98:
.LBE97:
	.loc 1 143 10 view .LVU177
	movl	$1, %r12d
.LVL73:
.LBB102:
.LBB99:
	.loc 4 110 10 view .LVU178
	movq	%rdx, 40(%rdi)
	movb	$10, (%rax)
.LVL74:
.L34:
	.loc 4 110 10 view .LVU179
.LBE99:
.LBE102:
	.loc 1 144 1 view .LVU180
	movq	664(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L65
	addq	$680, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL75:
	.loc 1 144 1 view .LVU181
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL76:
	.loc 1 144 1 view .LVU182
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL77:
	.loc 1 144 1 view .LVU183
	ret
.LVL78:
	.p2align 4,,10
	.p2align 3
.L60:
	.cfi_restore_state
	.loc 1 95 19 view .LVU184
	movzbl	1(%rdi), %ebx
.LVL79:
	.loc 1 97 3 is_stmt 1 view .LVU185
	.loc 1 97 6 is_stmt 0 view .LVU186
	testl	%ebx, %ebx
	jne	.L36
	.loc 1 99 7 is_stmt 1 view .LVU187
	.loc 1 100 23 is_stmt 0 view .LVU188
	movb	$1, have_read_stdin(%rip)
	.loc 1 99 10 view .LVU189
	movq	stdin(%rip), %r15
.LVL80:
	.loc 1 100 7 is_stmt 1 view .LVU190
	.loc 1 101 7 view .LVU191
	.loc 1 101 7 is_stmt 0 view .LVU192
	jmp	.L37
.LVL81:
	.p2align 4,,10
	.p2align 3
.L63:
	.loc 1 140 5 is_stmt 1 view .LVU193
.LBB103:
.LBI103:
	.loc 3 105 1 view .LVU194
.LBB104:
	.loc 3 107 3 view .LVU195
	.loc 3 107 10 is_stmt 0 view .LVU196
	movq	%r13, %rdx
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL82:
	jmp	.L46
.LVL83:
	.p2align 4,,10
	.p2align 3
.L59:
	.loc 3 107 10 view .LVU197
.LBE104:
.LBE103:
	.loc 1 133 7 is_stmt 1 view .LVU198
	movq	%r13, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL84:
	movq	%rax, %r12
	.loc 1 133 17 is_stmt 0 view .LVU199
	call	__errno_location@PLT
.LVL85:
	.loc 1 133 7 view .LVU200
	movq	%r12, %rcx
	leaq	.LC0(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	.loc 1 134 14 view .LVU201
	xorl	%r12d, %r12d
	.loc 1 133 7 view .LVU202
	call	error@PLT
.LVL86:
	.loc 1 134 7 is_stmt 1 view .LVU203
	.loc 1 134 14 is_stmt 0 view .LVU204
	jmp	.L34
.LVL87:
	.p2align 4,,10
	.p2align 3
.L62:
	.loc 1 125 7 is_stmt 1 view .LVU205
	movq	%r13, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL88:
	.loc 1 125 7 is_stmt 0 view .LVU206
	movq	%rax, %r12
.LVL89:
	.loc 1 125 17 view .LVU207
	call	__errno_location@PLT
.LVL90:
	.loc 1 125 7 view .LVU208
	movq	%r12, %rcx
	leaq	.LC0(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	.loc 1 128 14 view .LVU209
	xorl	%r12d, %r12d
	.loc 1 125 7 view .LVU210
	call	error@PLT
.LVL91:
	.loc 1 126 7 is_stmt 1 view .LVU211
	.loc 1 126 10 is_stmt 0 view .LVU212
	testl	%ebx, %ebx
	je	.L34
	.loc 1 127 9 is_stmt 1 view .LVU213
	movq	%r15, %rdi
	call	rpl_fclose@PLT
.LVL92:
	jmp	.L34
.LVL93:
.L64:
.LBB105:
.LBB100:
	.loc 4 110 10 is_stmt 0 view .LVU214
	movl	$10, %esi
.LBE100:
.LBE105:
	.loc 1 143 10 view .LVU215
	movl	$1, %r12d
.LVL94:
.LBB106:
.LBB101:
	.loc 4 110 10 view .LVU216
	call	__overflow@PLT
.LVL95:
	jmp	.L34
.LVL96:
.L65:
	.loc 4 110 10 view .LVU217
.LBE101:
.LBE106:
	.loc 1 144 1 view .LVU218
	call	__stack_chk_fail@PLT
.LVL97:
.L61:
	.loc 1 144 1 view .LVU219
	movq	16(%r15), %rsi
	movq	8(%r15), %rcx
	jmp	.L43
	.cfi_endproc
.LFE140:
	.size	bsd_sum_file, .-bsd_sum_file
	.section	.rodata.str1.1
.LC5:
	.string	"sum"
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
	.string	"Print checksum and block counts for each FILE.\n"
	.align 8
.LC11:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.align 8
.LC12:
	.string	"\n  -r              use BSD sum algorithm, use 1K blocks\n  -s, --sysv      use System V sum algorithm, use 512 bytes blocks\n"
	.align 8
.LC13:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC14:
	.string	"      --version  output version information and exit\n"
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
.LVL98:
.LFB139:
	.loc 1 54 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 54 1 is_stmt 0 view .LVU221
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 56 5 view .LVU222
	movl	$5, %edx
	.loc 1 54 1 view .LVU223
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
	.loc 1 54 1 view .LVU224
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 55 3 is_stmt 1 view .LVU225
	.loc 1 55 6 is_stmt 0 view .LVU226
	testl	%edi, %edi
	je	.L67
	.loc 1 56 5 is_stmt 1 view .LVU227
	.loc 1 56 5 view .LVU228
	leaq	.LC8(%rip), %rsi
	xorl	%edi, %edi
.LVL99:
	.loc 1 56 5 is_stmt 0 view .LVU229
	call	dcgettext@PLT
.LVL100:
.LBB121:
.LBB122:
	.loc 3 100 10 view .LVU230
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE122:
.LBE121:
	.loc 1 56 5 view .LVU231
	movq	%rax, %rdx
.LVL101:
.LBB124:
.LBI121:
	.loc 3 98 1 is_stmt 1 view .LVU232
.LBB123:
	.loc 3 100 3 view .LVU233
	.loc 3 100 10 is_stmt 0 view .LVU234
	xorl	%eax, %eax
.LVL102:
	.loc 3 100 10 view .LVU235
	call	__fprintf_chk@PLT
.LVL103:
.L68:
	.loc 3 100 10 view .LVU236
.LBE123:
.LBE124:
	.loc 1 78 3 is_stmt 1 view .LVU237
	movl	%ebp, %edi
	call	exit@PLT
.LVL104:
.L67:
	.loc 1 59 7 view .LVU238
	.loc 1 59 15 is_stmt 0 view .LVU239
	leaq	.LC9(%rip), %rsi
	xorl	%edi, %edi
.LVL105:
.LBB125:
.LBB126:
	.file 5 "src/system.h"
	.loc 5 636 67 view .LVU240
	leaq	.LC21(%rip), %rbx
.LBE126:
.LBE125:
	.loc 1 59 15 view .LVU241
	call	dcgettext@PLT
.LVL106:
.LBB152:
.LBB153:
	.loc 3 107 10 view .LVU242
	movq	%r12, %rdx
	movl	$1, %edi
.LBE153:
.LBE152:
	.loc 1 59 15 view .LVU243
	movq	%rax, %rsi
.LVL107:
.LBB155:
.LBI152:
	.loc 3 105 1 is_stmt 1 view .LVU244
.LBB154:
	.loc 3 107 3 view .LVU245
	.loc 3 107 10 is_stmt 0 view .LVU246
	xorl	%eax, %eax
.LVL108:
	.loc 3 107 10 view .LVU247
	call	__printf_chk@PLT
.LVL109:
	.loc 3 107 10 view .LVU248
.LBE154:
.LBE155:
	.loc 1 63 7 is_stmt 1 view .LVU249
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC10(%rip), %rsi
	call	dcgettext@PLT
.LVL110:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL111:
	.loc 1 67 7 view .LVU250
.LBB156:
.LBI156:
	.loc 5 581 1 view .LVU251
.LBB157:
	.loc 5 583 3 view .LVU252
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC11(%rip), %rsi
	call	dcgettext@PLT
.LVL112:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL113:
.LBE157:
.LBE156:
	.loc 1 69 7 view .LVU253
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC12(%rip), %rsi
	call	dcgettext@PLT
.LVL114:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL115:
	.loc 1 74 7 view .LVU254
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC13(%rip), %rsi
	call	dcgettext@PLT
.LVL116:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL117:
	.loc 1 75 7 view .LVU255
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC14(%rip), %rsi
	call	dcgettext@PLT
.LVL118:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL119:
	.loc 1 76 7 view .LVU256
.LBB158:
.LBI125:
	.loc 5 634 1 view .LVU257
.LBB151:
	.loc 5 636 3 view .LVU258
	.loc 5 636 67 is_stmt 0 view .LVU259
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
	.loc 5 646 3 is_stmt 1 view .LVU260
.LVL120:
	.loc 5 647 3 view .LVU261
	.loc 5 649 3 view .LVU262
	.loc 5 649 9 view .LVU263
	.loc 5 636 67 is_stmt 0 view .LVU264
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
	.loc 5 647 25 view .LVU265
	movq	%rsp, %rax
.LVL121:
	.p2align 4,,10
	.p2align 3
.L70:
	.loc 5 650 5 is_stmt 1 view .LVU266
	.loc 5 649 18 is_stmt 0 view .LVU267
	movq	16(%rax), %rdi
	.loc 5 650 13 view .LVU268
	addq	$16, %rax
.LVL122:
	.loc 5 649 9 is_stmt 1 view .LVU269
	testq	%rdi, %rdi
	je	.L69
	.loc 5 649 33 is_stmt 0 view .LVU270
	movl	$4, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 5 649 28 view .LVU271
	testb	%dl, %dl
	jne	.L70
.L69:
	.loc 5 652 3 is_stmt 1 view .LVU272
	.loc 5 652 15 is_stmt 0 view .LVU273
	movq	8(%rax), %r12
	.loc 5 655 11 view .LVU274
	movl	$5, %edx
	leaq	.LC24(%rip), %rsi
	xorl	%edi, %edi
	.loc 5 652 6 view .LVU275
	testq	%r12, %r12
	je	.L71
	.loc 5 653 5 is_stmt 1 view .LVU276
.LVL123:
	.loc 5 655 3 view .LVU277
	.loc 5 655 11 is_stmt 0 view .LVU278
	call	dcgettext@PLT
.LVL124:
.LBB127:
.LBB128:
	.loc 3 107 10 view .LVU279
	leaq	.LC25(%rip), %rcx
	movl	$1, %edi
	leaq	.LC26(%rip), %rdx
.LBE128:
.LBE127:
	.loc 5 655 11 view .LVU280
	movq	%rax, %rsi
.LVL125:
.LBB132:
.LBI127:
	.loc 3 105 1 is_stmt 1 view .LVU281
.LBB129:
	.loc 3 107 3 view .LVU282
	.loc 3 107 10 is_stmt 0 view .LVU283
	xorl	%eax, %eax
.LVL126:
	.loc 3 107 10 view .LVU284
	call	__printf_chk@PLT
.LVL127:
	.loc 3 107 10 view .LVU285
.LBE129:
.LBE132:
	.loc 5 659 3 is_stmt 1 view .LVU286
	.loc 5 659 29 is_stmt 0 view .LVU287
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL128:
	movq	%rax, %rdi
.LVL129:
	.loc 5 660 3 is_stmt 1 view .LVU288
	.loc 5 660 6 is_stmt 0 view .LVU289
	testq	%rax, %rax
	je	.L72
	.loc 5 660 22 view .LVU290
	movl	$3, %edx
	leaq	.LC27(%rip), %rsi
	call	strncmp@PLT
.LVL130:
	.loc 5 660 19 view .LVU291
	testl	%eax, %eax
	jne	.L75
.LVL131:
.L72:
	.loc 5 669 3 is_stmt 1 view .LVU292
	.loc 5 669 11 is_stmt 0 view .LVU293
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	call	dcgettext@PLT
.LVL132:
.LBB133:
.LBB134:
	.loc 3 107 10 view .LVU294
	leaq	.LC5(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	$1, %edi
.LBE134:
.LBE133:
	.loc 5 669 11 view .LVU295
	movq	%rax, %rsi
.LVL133:
.LBB140:
.LBI133:
	.loc 3 105 1 is_stmt 1 view .LVU296
.LBB135:
	.loc 3 107 3 view .LVU297
	.loc 3 107 10 is_stmt 0 view .LVU298
	xorl	%eax, %eax
.LVL134:
	.loc 3 107 10 view .LVU299
.LBE135:
.LBE140:
	.loc 5 671 3 view .LVU300
	leaq	.LC6(%rip), %r13
.LBB141:
.LBB136:
	.loc 3 107 10 view .LVU301
	call	__printf_chk@PLT
.LVL135:
	.loc 3 107 10 view .LVU302
.LBE136:
.LBE141:
	.loc 5 671 3 is_stmt 1 view .LVU303
	cmpq	%rbx, %r12
	leaq	.LC7(%rip), %rcx
	cmovne	%rcx, %r13
.L73:
	.loc 5 671 11 is_stmt 0 view .LVU304
	xorl	%edi, %edi
	leaq	.LC30(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL136:
.LBB142:
.LBB143:
	.loc 3 107 10 view .LVU305
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE143:
.LBE142:
	.loc 5 671 11 view .LVU306
	movq	%rax, %rsi
.LVL137:
.LBB145:
.LBI142:
	.loc 3 105 1 is_stmt 1 view .LVU307
.LBB144:
	.loc 3 107 3 view .LVU308
	.loc 3 107 10 is_stmt 0 view .LVU309
	xorl	%eax, %eax
.LVL138:
	.loc 3 107 10 view .LVU310
	call	__printf_chk@PLT
.LVL139:
	.loc 3 107 10 view .LVU311
.LBE144:
.LBE145:
	.loc 5 673 1 view .LVU312
	jmp	.L68
.LVL140:
.L71:
	.loc 5 655 3 is_stmt 1 view .LVU313
	.loc 5 655 11 is_stmt 0 view .LVU314
	call	dcgettext@PLT
.LVL141:
.LBB146:
.LBB130:
	.loc 3 107 10 view .LVU315
	leaq	.LC25(%rip), %rcx
	movl	$1, %edi
	leaq	.LC26(%rip), %rdx
.LBE130:
.LBE146:
	.loc 5 655 11 view .LVU316
	movq	%rax, %rsi
.LVL142:
.LBB147:
	.loc 3 105 1 is_stmt 1 view .LVU317
.LBB131:
	.loc 3 107 3 view .LVU318
	.loc 3 107 10 is_stmt 0 view .LVU319
	xorl	%eax, %eax
.LVL143:
	.loc 3 107 10 view .LVU320
	call	__printf_chk@PLT
.LVL144:
	.loc 3 107 10 view .LVU321
.LBE131:
.LBE147:
	.loc 5 659 3 is_stmt 1 view .LVU322
	.loc 5 659 29 is_stmt 0 view .LVU323
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL145:
	movq	%rax, %rdi
.LVL146:
	.loc 5 660 3 is_stmt 1 view .LVU324
	.loc 5 660 6 is_stmt 0 view .LVU325
	testq	%rax, %rax
	je	.L74
	.loc 5 660 22 view .LVU326
	movl	$3, %edx
	leaq	.LC27(%rip), %rsi
	call	strncmp@PLT
.LVL147:
	.loc 5 660 19 view .LVU327
	testl	%eax, %eax
	jne	.L93
.L74:
	.loc 5 669 3 is_stmt 1 view .LVU328
	.loc 5 669 11 is_stmt 0 view .LVU329
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL148:
.LBB148:
.LBB137:
	.loc 3 107 10 view .LVU330
	leaq	.LC5(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	$1, %edi
.LBE137:
.LBE148:
	.loc 5 669 11 view .LVU331
	movq	%rax, %rsi
.LVL149:
.LBB149:
	.loc 3 105 1 is_stmt 1 view .LVU332
.LBB138:
	.loc 3 107 3 view .LVU333
	.loc 3 107 10 is_stmt 0 view .LVU334
	xorl	%eax, %eax
.LVL150:
	.loc 3 107 10 view .LVU335
.LBE138:
.LBE149:
	.loc 5 646 15 view .LVU336
	leaq	.LC5(%rip), %r12
.LBB150:
.LBB139:
	.loc 3 107 10 view .LVU337
	call	__printf_chk@PLT
.LVL151:
	.loc 3 107 10 view .LVU338
.LBE139:
.LBE150:
	.loc 5 671 3 is_stmt 1 view .LVU339
	leaq	.LC6(%rip), %r13
	jmp	.L73
.L93:
	.loc 5 646 15 is_stmt 0 view .LVU340
	leaq	.LC5(%rip), %r12
.LVL152:
.L75:
	.loc 5 666 7 is_stmt 1 view .LVU341
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC28(%rip), %rsi
	call	dcgettext@PLT
.LVL153:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL154:
	jmp	.L72
.LBE151:
.LBE158:
	.cfi_endproc
.LFE139:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC31:
	.string	"/usr/local/share/locale"
.LC32:
	.string	"David MacKenzie"
.LC33:
	.string	"Kayvan Aghaiepour"
.LC34:
	.string	"rs"
.LC35:
	.string	"-"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL155:
.LFB142:
	.loc 1 222 1 view -0
	.cfi_startproc
	.loc 1 222 1 is_stmt 0 view .LVU343
	endbr64
	.loc 1 223 3 is_stmt 1 view .LVU344
	.loc 1 224 3 view .LVU345
	.loc 1 225 3 view .LVU346
	.loc 1 226 3 view .LVU347
.LVL156:
	.loc 1 228 33 view .LVU348
	.loc 1 229 3 view .LVU349
	.loc 1 222 1 is_stmt 0 view .LVU350
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	.loc 1 244 7 view .LVU351
	leaq	sysv_sum_file(%rip), %r13
	.loc 1 222 1 view .LVU352
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	.loc 1 226 10 view .LVU353
	leaq	bsd_sum_file(%rip), %r12
	.loc 1 222 1 view .LVU354
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %ebp
	.loc 1 247 20 view .LVU355
	movq	%r12, %r14
	.loc 1 222 1 view .LVU356
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.loc 1 229 3 view .LVU357
	movq	(%rsi), %rdi
.LVL157:
	.loc 1 222 1 view .LVU358
	movq	%rsi, %rbx
	.loc 1 229 3 view .LVU359
	call	set_program_name@PLT
.LVL158:
	.loc 1 230 3 is_stmt 1 view .LVU360
	leaq	.LC7(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL159:
	.loc 1 231 3 view .LVU361
	leaq	.LC31(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	bindtextdomain@PLT
.LVL160:
	.loc 1 232 3 view .LVU362
	leaq	.LC17(%rip), %rdi
	call	textdomain@PLT
.LVL161:
	.loc 1 234 3 view .LVU363
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL162:
	.loc 1 238 3 view .LVU364
	movq	stdout(%rip), %rdi
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	$1, %edx
	call	setvbuf@PLT
.LVL163:
	.loc 1 240 3 view .LVU365
	.loc 1 240 19 is_stmt 0 view .LVU366
	movb	$0, have_read_stdin(%rip)
	.loc 1 242 3 is_stmt 1 view .LVU367
.LVL164:
.L95:
	.loc 1 242 9 view .LVU368
	.loc 1 242 18 is_stmt 0 view .LVU369
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	leaq	.LC34(%rip), %rdx
	call	getopt_long@PLT
.LVL165:
	.loc 1 242 9 view .LVU370
	cmpl	$-1, %eax
	je	.L111
	.loc 1 244 7 is_stmt 1 view .LVU371
	cmpl	$114, %eax
	je	.L106
	jg	.L97
	cmpl	$-131, %eax
	jne	.L112
	.loc 1 254 9 view .LVU372
	.loc 1 254 30 view .LVU373
	.loc 1 256 9 view .LVU374
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	stdout(%rip), %rdi
	xorl	%eax, %eax
.LVL166:
	.loc 1 256 9 is_stmt 0 view .LVU375
	movq	Version(%rip), %rcx
	pushq	$0
	.cfi_def_cfa_offset 64
	leaq	.LC32(%rip), %r9
	leaq	.LC33(%rip), %r8
	leaq	.LC26(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	call	version_etc@PLT
.LVL167:
	.loc 1 256 9 is_stmt 1 view .LVU376
	xorl	%edi, %edi
	call	exit@PLT
.LVL168:
	.p2align 4,,10
	.p2align 3
.L97:
	.cfi_restore_state
	.loc 1 244 7 is_stmt 0 view .LVU377
	cmpl	$115, %eax
	jne	.L100
	movq	%r13, %r12
.LVL169:
	.loc 1 244 7 view .LVU378
	jmp	.L95
.LVL170:
.L112:
	.loc 1 244 7 view .LVU379
	cmpl	$-130, %eax
	jne	.L100
	.loc 1 254 9 is_stmt 1 view .LVU380
	xorl	%edi, %edi
	call	usage
.LVL171:
	.p2align 4,,10
	.p2align 3
.L106:
	.loc 1 247 20 is_stmt 0 view .LVU381
	movq	%r14, %r12
.LVL172:
	.loc 1 247 20 view .LVU382
	jmp	.L95
.LVL173:
.L111:
	.loc 1 263 3 is_stmt 1 view .LVU383
	.loc 1 263 15 is_stmt 0 view .LVU384
	movl	%ebp, %r14d
	subl	optind(%rip), %r14d
.LVL174:
	.loc 1 264 3 is_stmt 1 view .LVU385
	.loc 1 267 13 is_stmt 0 view .LVU386
	movl	$1, %r13d
	.loc 1 264 6 view .LVU387
	testl	%r14d, %r14d
	jg	.L102
	.loc 1 265 5 is_stmt 1 view .LVU388
	.loc 1 265 10 is_stmt 0 view .LVU389
	movl	%r14d, %esi
	leaq	.LC35(%rip), %rdi
	call	*%r12
.LVL175:
	.loc 1 265 10 view .LVU390
	movl	%eax, %r13d
.LVL176:
.L103:
	.loc 1 270 3 is_stmt 1 view .LVU391
	.loc 1 270 6 is_stmt 0 view .LVU392
	cmpb	$0, have_read_stdin(%rip)
	jne	.L113
.L105:
	.loc 1 272 3 is_stmt 1 view .LVU393
	.loc 1 272 28 is_stmt 0 view .LVU394
	xorl	$1, %r13d
.LVL177:
	.loc 1 273 1 view .LVU395
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
.LVL178:
	.loc 1 273 1 view .LVU396
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL179:
	.loc 1 272 28 view .LVU397
	movzbl	%r13b, %eax
	.loc 1 273 1 view .LVU398
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL180:
	.loc 1 273 1 view .LVU399
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
.LVL181:
	.loc 1 273 1 view .LVU400
	ret
.LVL182:
.L104:
	.cfi_restore_state
	.loc 1 268 7 is_stmt 1 discriminator 3 view .LVU401
	.loc 1 268 13 is_stmt 0 discriminator 3 view .LVU402
	movq	(%rbx,%rax,8), %rdi
	movl	%r14d, %esi
	call	*%r12
.LVL183:
	.loc 1 267 42 discriminator 3 view .LVU403
	addl	$1, optind(%rip)
	andl	%eax, %r13d
.LVL184:
	.loc 1 267 36 is_stmt 1 discriminator 3 view .LVU404
.L102:
	.loc 1 267 21 discriminator 1 view .LVU405
	.loc 1 267 28 is_stmt 0 discriminator 1 view .LVU406
	movslq	optind(%rip), %rax
	.loc 1 267 5 discriminator 1 view .LVU407
	cmpl	%ebp, %eax
	jl	.L104
	jmp	.L103
.L113:
	.loc 1 270 26 discriminator 1 view .LVU408
	movq	stdin(%rip), %rdi
	call	rpl_fclose@PLT
.LVL185:
	.loc 1 270 23 discriminator 1 view .LVU409
	addl	$1, %eax
	jne	.L105
.LBB159:
	.loc 1 271 5 is_stmt 1 view .LVU410
	leaq	.LC35(%rip), %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL186:
	movq	%rax, %r12
.LVL187:
	.loc 1 271 5 is_stmt 0 view .LVU411
	call	__errno_location@PLT
.LVL188:
	movq	%r12, %rcx
	movl	$1, %edi
	leaq	.LC0(%rip), %rdx
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL189:
.L100:
	.loc 1 271 5 view .LVU412
.LBE159:
	.loc 1 256 9 is_stmt 1 view .LVU413
	.loc 1 256 57 view .LVU414
	.loc 1 259 11 view .LVU415
	movl	$1, %edi
	call	usage
.LVL190:
	.loc 1 259 11 is_stmt 0 view .LVU416
	.cfi_endproc
.LFE142:
	.size	main, .-main
	.section	.rodata.str1.1
.LC36:
	.string	"sysv"
.LC37:
	.string	"help"
.LC38:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 128
longopts:
	.quad	.LC36
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC37
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC38
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
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
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
	.file 22 "/usr/include/stdint.h"
	.file 23 "./lib/timespec.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/fadvise.h"
	.file 29 "./lib/human.h"
	.file 30 "./lib/xbinary-io.h"
	.file 31 "./lib/binary-io.h"
	.file 32 "/usr/include/locale.h"
	.file 33 "/usr/include/libintl.h"
	.file 34 "/usr/include/stdlib.h"
	.file 35 "./lib/stdio.h"
	.file 36 "./lib/safe-read.h"
	.file 37 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1966
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF186
	.byte	0xc
	.long	.LASF187
	.long	.LASF188
	.long	.Ldebug_ranges0+0x2e0
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
	.byte	0x49
	.byte	0x1b
	.long	0x35
	.uleb128 0x2
	.long	.LASF9
	.byte	0x7
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.long	.LASF10
	.byte	0x7
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x7
	.byte	0xa0
	.byte	0x1a
	.long	0x6d
	.uleb128 0x7
	.byte	0x8
	.long	0xaa
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	0xaa
	.uleb128 0x9
	.long	.LASF62
	.byte	0xd8
	.byte	0x8
	.byte	0x31
	.byte	0x8
	.long	0x23d
	.uleb128 0xa
	.long	.LASF13
	.byte	0x8
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.long	0xa4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x8
	.byte	0x37
	.byte	0x9
	.long	0xa4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x8
	.byte	0x38
	.byte	0x9
	.long	0xa4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x8
	.byte	0x39
	.byte	0x9
	.long	0xa4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x8
	.byte	0x3a
	.byte	0x9
	.long	0xa4
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x8
	.byte	0x3b
	.byte	0x9
	.long	0xa4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x8
	.byte	0x3c
	.byte	0x9
	.long	0xa4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x8
	.byte	0x3d
	.byte	0x9
	.long	0xa4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x8
	.byte	0x40
	.byte	0x9
	.long	0xa4
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x8
	.byte	0x41
	.byte	0x9
	.long	0xa4
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x8
	.byte	0x42
	.byte	0x9
	.long	0xa4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x8
	.byte	0x44
	.byte	0x16
	.long	0x256
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x8
	.byte	0x46
	.byte	0x14
	.long	0x25c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x8
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x8
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x8
	.byte	0x4a
	.byte	0xb
	.long	0x80
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x8
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x8
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.long	0x262
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x8
	.byte	0x51
	.byte	0xf
	.long	0x272
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x8
	.byte	0x59
	.byte	0xd
	.long	0x8c
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x8
	.byte	0x5b
	.byte	0x17
	.long	0x27d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x8
	.byte	0x5c
	.byte	0x19
	.long	0x288
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x8
	.byte	0x5d
	.byte	0x14
	.long	0x25c
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x8
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x8
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x8
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.long	0x28e
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x9
	.byte	0x7
	.byte	0x19
	.long	0xb6
	.uleb128 0xb
	.long	.LASF189
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x251
	.uleb128 0x7
	.byte	0x8
	.long	0xb6
	.uleb128 0xd
	.long	0xaa
	.long	0x272
	.uleb128 0xe
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x249
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x278
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x283
	.uleb128 0xd
	.long	0xaa
	.long	0x29e
	.uleb128 0xe
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb1
	.uleb128 0x8
	.long	0x29e
	.uleb128 0xf
	.long	0x29e
	.uleb128 0x10
	.long	.LASF46
	.byte	0xa
	.byte	0x89
	.byte	0xe
	.long	0x2ba
	.uleb128 0x7
	.byte	0x8
	.long	0x23d
	.uleb128 0xf
	.long	0x2ba
	.uleb128 0x10
	.long	.LASF47
	.byte	0xa
	.byte	0x8a
	.byte	0xe
	.long	0x2ba
	.uleb128 0x10
	.long	.LASF48
	.byte	0xa
	.byte	0x8b
	.byte	0xe
	.long	0x2ba
	.uleb128 0x10
	.long	.LASF49
	.byte	0xb
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x2a4
	.long	0x2f4
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x2e9
	.uleb128 0x10
	.long	.LASF50
	.byte	0xb
	.byte	0x1b
	.byte	0x1a
	.long	0x2f4
	.uleb128 0x10
	.long	.LASF51
	.byte	0xb
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF52
	.byte	0xb
	.byte	0x1f
	.byte	0x1a
	.long	0x2f4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0x98
	.uleb128 0x12
	.long	.LASF56
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0x10
	.long	.LASF58
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0xa4
	.uleb128 0x10
	.long	.LASF59
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF60
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF61
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF63
	.byte	0x20
	.byte	0xf
	.byte	0x32
	.byte	0x8
	.long	0x3bd
	.uleb128 0xa
	.long	.LASF64
	.byte	0xf
	.byte	0x34
	.byte	0xf
	.long	0x29e
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0xf
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF66
	.byte	0xf
	.byte	0x38
	.byte	0x8
	.long	0x3c2
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
	.long	0x37b
	.uleb128 0x7
	.byte	0x8
	.long	0x61
	.uleb128 0xd
	.long	0xa4
	.long	0x3d8
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x3c8
	.uleb128 0x10
	.long	.LASF68
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF69
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0x10
	.long	.LASF70
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x3c8
	.uleb128 0x10
	.long	.LASF71
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x10
	.long	.LASF72
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x12
	.long	.LASF73
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0x14
	.uleb128 0x7
	.byte	0x8
	.long	0x42d
	.uleb128 0xd
	.long	0x2a4
	.long	0x444
	.uleb128 0xe
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x434
	.uleb128 0x12
	.long	.LASF74
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x444
	.uleb128 0x12
	.long	.LASF75
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x444
	.uleb128 0x12
	.long	.LASF76
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x470
	.uleb128 0x7
	.byte	0x8
	.long	0xa4
	.uleb128 0x12
	.long	.LASF77
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x470
	.uleb128 0x10
	.long	.LASF78
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0xa4
	.uleb128 0x10
	.long	.LASF79
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0xa4
	.uleb128 0x10
	.long	.LASF80
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0x29e
	.uleb128 0x10
	.long	.LASF81
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0x2
	.long	.LASF82
	.byte	0x16
	.byte	0x66
	.byte	0x16
	.long	0x74
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x17
	.byte	0x29
	.byte	0x6
	.long	0x4d7
	.uleb128 0x16
	.long	.LASF83
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x17
	.byte	0x2a
	.byte	0x6
	.long	0x4ec
	.uleb128 0x17
	.long	.LASF84
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x61
	.byte	0x5
	.value	0x147
	.byte	0x1
	.long	0x50a
	.uleb128 0x19
	.long	.LASF85
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF86
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xb1
	.long	0x515
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x50a
	.uleb128 0x10
	.long	.LASF87
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x515
	.uleb128 0x10
	.long	.LASF88
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0x29e
	.uleb128 0x1a
	.long	.LASF190
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x587
	.uleb128 0x17
	.long	.LASF89
	.byte	0
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.uleb128 0x17
	.long	.LASF91
	.byte	0x2
	.uleb128 0x17
	.long	.LASF92
	.byte	0x3
	.uleb128 0x17
	.long	.LASF93
	.byte	0x4
	.uleb128 0x17
	.long	.LASF94
	.byte	0x5
	.uleb128 0x17
	.long	.LASF95
	.byte	0x6
	.uleb128 0x17
	.long	.LASF96
	.byte	0x7
	.uleb128 0x17
	.long	.LASF97
	.byte	0x8
	.uleb128 0x17
	.long	.LASF98
	.byte	0x9
	.uleb128 0x17
	.long	.LASF99
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x532
	.uleb128 0x12
	.long	.LASF100
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x2f4
	.uleb128 0xd
	.long	0x587
	.long	0x5a4
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x599
	.uleb128 0x12
	.long	.LASF101
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x5a4
	.uleb128 0x10
	.long	.LASF102
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x42e
	.uleb128 0x10
	.long	.LASF103
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF104
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1c
	.byte	0x2d
	.byte	0xe
	.long	0x60d
	.uleb128 0x17
	.long	.LASF105
	.byte	0
	.uleb128 0x17
	.long	.LASF106
	.byte	0x2
	.uleb128 0x17
	.long	.LASF107
	.byte	0x5
	.uleb128 0x17
	.long	.LASF108
	.byte	0x4
	.uleb128 0x17
	.long	.LASF109
	.byte	0x3
	.uleb128 0x17
	.long	.LASF110
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1d
	.byte	0x2c
	.byte	0x1
	.long	0x659
	.uleb128 0x17
	.long	.LASF111
	.byte	0
	.uleb128 0x17
	.long	.LASF112
	.byte	0x1
	.uleb128 0x17
	.long	.LASF113
	.byte	0x2
	.uleb128 0x17
	.long	.LASF114
	.byte	0x4
	.uleb128 0x17
	.long	.LASF115
	.byte	0x8
	.uleb128 0x17
	.long	.LASF116
	.byte	0x10
	.uleb128 0x17
	.long	.LASF117
	.byte	0x20
	.uleb128 0x17
	.long	.LASF118
	.byte	0x40
	.uleb128 0x17
	.long	.LASF119
	.byte	0x80
	.uleb128 0x1b
	.long	.LASF120
	.value	0x100
	.byte	0
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x1
	.byte	0x2a
	.byte	0xd
	.long	0x66f
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF121
	.uleb128 0xd
	.long	0x3bd
	.long	0x686
	.uleb128 0xe
	.long	0x35
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x676
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x1
	.byte	0x2c
	.byte	0x1c
	.long	0x686
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1d
	.long	.LASF138
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	0x61
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x95d
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x1
	.byte	0xdd
	.byte	0xb
	.long	0x61
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.byte	0xdd
	.byte	0x18
	.long	0x470
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x1f
	.string	"ok"
	.byte	0x1
	.byte	0xdf
	.byte	0x8
	.long	0x66f
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x20
	.long	.LASF126
	.byte	0x1
	.byte	0xe0
	.byte	0x7
	.long	0x61
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x20
	.long	.LASF127
	.byte	0x1
	.byte	0xe1
	.byte	0x7
	.long	0x61
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x20
	.long	.LASF128
	.byte	0x1
	.byte	0xe2
	.byte	0xa
	.long	0x971
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x21
	.quad	.LBB159
	.quad	.LBE159-.LBB159
	.long	0x7ac
	.uleb128 0x22
	.quad	.LVL186
	.long	0x181f
	.long	0x778
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.byte	0
	.uleb128 0x24
	.quad	.LVL188
	.long	0x182c
	.uleb128 0x25
	.quad	.LVL189
	.long	0x1838
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL158
	.long	0x1844
	.uleb128 0x22
	.quad	.LVL159
	.long	0x1850
	.long	0x7dd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x22
	.quad	.LVL160
	.long	0x185c
	.long	0x809
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.byte	0
	.uleb128 0x22
	.quad	.LVL161
	.long	0x1868
	.long	0x828
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.uleb128 0x24
	.quad	.LVL162
	.long	0x1874
	.uleb128 0x22
	.quad	.LVL163
	.long	0x1881
	.long	0x856
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL165
	.long	0x188e
	.long	0x893
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL167
	.long	0x189a
	.long	0x8d9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.byte	0
	.uleb128 0x22
	.quad	.LVL168
	.long	0x18a6
	.long	0x8f0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL171
	.long	0x1090
	.long	0x907
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.quad	.LVL175
	.long	0x928
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL183
	.long	0x93c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL185
	.long	0x18b3
	.uleb128 0x25
	.quad	.LVL190
	.long	0x1090
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x66f
	.long	0x971
	.uleb128 0x28
	.long	0x29e
	.uleb128 0x28
	.long	0x61
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x95d
	.uleb128 0x29
	.long	.LASF136
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0x66f
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0xd0d
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.byte	0x98
	.byte	0x1c
	.long	0x29e
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x1
	.byte	0x98
	.byte	0x26
	.long	0x61
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1f
	.string	"fd"
	.byte	0x1
	.byte	0x9a
	.byte	0x7
	.long	0x61
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.byte	0x9b
	.byte	0x11
	.long	0xd0d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8272
	.uleb128 0x20
	.long	.LASF131
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.long	0x4b3
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x1
	.byte	0x9d
	.byte	0x8
	.long	0xd1e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8928
	.uleb128 0x1f
	.string	"r"
	.byte	0x1
	.byte	0x9e
	.byte	0x7
	.long	0x61
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x20
	.long	.LASF133
	.byte	0x1
	.byte	0x9f
	.byte	0x7
	.long	0x61
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0xa2
	.byte	0x10
	.long	0x3c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.byte	0xa4
	.byte	0x8
	.long	0x66f
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0
	.long	0xb29
	.uleb128 0x20
	.long	.LASF135
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.long	0x29
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x21
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0xa9b
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xc5
	.byte	0x13
	.long	0x29
	.long	.LLST11
	.long	.LVUS11
	.byte	0
	.uleb128 0x22
	.quad	.LVL9
	.long	0x18c0
	.long	0xac0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x2000
	.byte	0
	.uleb128 0x22
	.quad	.LVL32
	.long	0x181f
	.long	0xae2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL34
	.long	0x182c
	.uleb128 0x22
	.quad	.LVL35
	.long	0x1838
	.long	0xb14
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x25
	.quad	.LVL36
	.long	0x18cc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x1750
	.quad	.LBI68
	.byte	.LVU14
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.byte	0x1
	.byte	0xae
	.byte	0xc
	.long	0xb82
	.uleb128 0x2d
	.long	0x176d
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x2d
	.long	0x1761
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x25
	.quad	.LVL5
	.long	0x18d9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x177b
	.quad	.LBI72
	.byte	.LVU69
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xd3
	.byte	0x3
	.long	0xbcf
	.uleb128 0x2d
	.long	0x178c
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x25
	.quad	.LVL26
	.long	0x18e5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x17e3
	.quad	.LBI76
	.byte	.LVU76
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xd7
	.byte	0x3
	.long	0xc09
	.uleb128 0x2d
	.long	0x17f4
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x25
	.quad	.LVL46
	.long	0x18f1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x177b
	.quad	.LBI83
	.byte	.LVU102
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.byte	0x1
	.byte	0xd6
	.byte	0x5
	.long	0xc62
	.uleb128 0x2d
	.long	0x178c
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x25
	.quad	.LVL43
	.long	0x18e5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL19
	.long	0x18cc
	.long	0xc7a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL22
	.long	0x18fe
	.long	0xcab
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8928
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.value	0x200
	.byte	0
	.uleb128 0x22
	.quad	.LVL38
	.long	0x181f
	.long	0xccd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL40
	.long	0x182c
	.uleb128 0x22
	.quad	.LVL41
	.long	0x1838
	.long	0xcff
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x24
	.quad	.LVL48
	.long	0x190a
	.byte	0
	.uleb128 0xd
	.long	0x45
	.long	0xd1e
	.uleb128 0x2f
	.long	0x35
	.value	0x1fff
	.byte	0
	.uleb128 0xd
	.long	0xaa
	.long	0xd2f
	.uleb128 0x2f
	.long	0x35
	.value	0x28b
	.byte	0
	.uleb128 0x29
	.long	.LASF137
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x66f
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x1090
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.byte	0x58
	.byte	0x1b
	.long	0x29e
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x1
	.byte	0x58
	.byte	0x25
	.long	0x61
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.long	0x2ba
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x20
	.long	.LASF133
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.long	0x61
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x20
	.long	.LASF131
	.byte	0x1
	.byte	0x5c
	.byte	0xd
	.long	0x4b3
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x1f
	.string	"ch"
	.byte	0x1
	.byte	0x5d
	.byte	0x7
	.long	0x61
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x1
	.byte	0x5e
	.byte	0x8
	.long	0xd1e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.byte	0x5f
	.byte	0x8
	.long	0x66f
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x2e
	.long	0x1801
	.quad	.LBI87
	.byte	.LVU150
	.long	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x73
	.byte	0x10
	.long	0xe26
	.uleb128 0x2d
	.long	0x1812
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x25
	.quad	.LVL66
	.long	0x1913
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x17c5
	.quad	.LBI91
	.byte	.LVU156
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.byte	0x1
	.byte	0x7b
	.byte	0x7
	.long	0xe59
	.uleb128 0x2d
	.long	0x17d6
	.long	.LLST23
	.long	.LVUS23
	.byte	0
	.uleb128 0x2e
	.long	0x177b
	.quad	.LBI93
	.byte	.LVU167
	.long	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x89
	.byte	0x3
	.long	0xea6
	.uleb128 0x2d
	.long	0x178c
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x25
	.quad	.LVL71
	.long	0x18e5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x17e3
	.quad	.LBI97
	.byte	.LVU174
	.long	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x8d
	.byte	0x3
	.long	0xee0
	.uleb128 0x2d
	.long	0x17f4
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x25
	.quad	.LVL95
	.long	0x18f1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x177b
	.quad	.LBI103
	.byte	.LVU194
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.byte	0x1
	.byte	0x8c
	.byte	0x5
	.long	0xf39
	.uleb128 0x2d
	.long	0x178c
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x25
	.quad	.LVL82
	.long	0x18e5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL53
	.long	0x1920
	.long	0xf5e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x22
	.quad	.LVL56
	.long	0x192c
	.long	0xf7b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x22
	.quad	.LVL68
	.long	0x18b3
	.long	0xf93
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL69
	.long	0x18fe
	.long	0xfc2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.uleb128 0x22
	.quad	.LVL84
	.long	0x181f
	.long	0xfe4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL85
	.long	0x182c
	.uleb128 0x22
	.quad	.LVL86
	.long	0x1838
	.long	0x1016
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x22
	.quad	.LVL88
	.long	0x181f
	.long	0x1038
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL90
	.long	0x182c
	.uleb128 0x22
	.quad	.LVL91
	.long	0x1838
	.long	0x106a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x22
	.quad	.LVL92
	.long	0x18b3
	.long	0x1082
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL97
	.long	0x190a
	.byte	0
	.uleb128 0x30
	.long	.LASF139
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x162b
	.uleb128 0x1e
	.long	.LASF140
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.long	0x61
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x2e
	.long	0x179a
	.quad	.LBI121
	.byte	.LVU232
	.long	.Ldebug_ranges0+0x160
	.byte	0x1
	.byte	0x38
	.byte	0x5
	.long	0x110f
	.uleb128 0x2d
	.long	0x17b7
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x2d
	.long	0x17ab
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x25
	.quad	.LVL103
	.long	0x1938
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x16ab
	.quad	.LBI125
	.byte	.LVU257
	.long	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0x4c
	.byte	0x7
	.long	0x1422
	.uleb128 0x31
	.long	0x16b9
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x33
	.long	0x16f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.long	0x1703
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x34
	.long	0x1710
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x34
	.long	0x171d
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x35
	.long	0x177b
	.quad	.LBI127
	.byte	.LVU281
	.long	.Ldebug_ranges0+0x1c0
	.byte	0x5
	.value	0x28f
	.byte	0x3
	.long	0x11f3
	.uleb128 0x2d
	.long	0x178c
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x22
	.quad	.LVL127
	.long	0x18e5
	.long	0x11c5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x25
	.quad	.LVL144
	.long	0x18e5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x177b
	.quad	.LBI133
	.byte	.LVU296
	.long	.Ldebug_ranges0+0x210
	.byte	0x5
	.value	0x29d
	.byte	0x3
	.long	0x126b
	.uleb128 0x2d
	.long	0x178c
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x22
	.quad	.LVL135
	.long	0x18e5
	.long	0x1244
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL151
	.long	0x18e5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x177b
	.quad	.LBI142
	.byte	.LVU307
	.long	.Ldebug_ranges0+0x280
	.byte	0x5
	.value	0x29f
	.byte	0x3
	.long	0x12b2
	.uleb128 0x2d
	.long	0x178c
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x25
	.quad	.LVL139
	.long	0x18e5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL124
	.long	0x1944
	.long	0x12db
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL128
	.long	0x1850
	.long	0x12f7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL130
	.long	0x1950
	.long	0x131b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.quad	.LVL132
	.long	0x1944
	.long	0x1344
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL136
	.long	0x1944
	.long	0x136d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL141
	.long	0x1944
	.uleb128 0x22
	.quad	.LVL145
	.long	0x1850
	.long	0x1396
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL147
	.long	0x1950
	.long	0x13ba
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.quad	.LVL148
	.long	0x1944
	.long	0x13e3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL153
	.long	0x1944
	.long	0x140c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL154
	.long	0x195c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x177b
	.quad	.LBI152
	.byte	.LVU244
	.long	.Ldebug_ranges0+0x2b0
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.long	0x1462
	.uleb128 0x2d
	.long	0x178c
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x25
	.quad	.LVL109
	.long	0x18e5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x1746
	.quad	.LBI156
	.byte	.LVU251
	.quad	.LBB156
	.quad	.LBE156-.LBB156
	.byte	0x1
	.byte	0x43
	.byte	0x7
	.long	0x14c5
	.uleb128 0x22
	.quad	.LVL112
	.long	0x1944
	.long	0x14b0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL113
	.long	0x195c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL100
	.long	0x1944
	.long	0x14ee
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL104
	.long	0x18a6
	.long	0x1506
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL106
	.long	0x1944
	.long	0x152a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x22
	.quad	.LVL110
	.long	0x1944
	.long	0x1553
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL111
	.long	0x195c
	.long	0x156b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL114
	.long	0x1944
	.long	0x1594
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL115
	.long	0x195c
	.long	0x15ac
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL116
	.long	0x1944
	.long	0x15d5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x22
	.quad	.LVL117
	.long	0x195c
	.long	0x15ed
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL118
	.long	0x1944
	.long	0x1616
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.quad	.LVL119
	.long	0x195c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF191
	.byte	0x1e
	.byte	0x28
	.byte	0x1
	.byte	0x3
	.long	0x1650
	.uleb128 0x37
	.string	"fd"
	.byte	0x1e
	.byte	0x28
	.byte	0x17
	.long	0x61
	.uleb128 0x38
	.long	.LASF141
	.byte	0x1e
	.byte	0x28
	.byte	0x1f
	.long	0x61
	.byte	0
	.uleb128 0x39
	.long	.LASF192
	.byte	0x1e
	.byte	0x21
	.byte	0x18
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF142
	.byte	0x1f
	.byte	0x42
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1682
	.uleb128 0x37
	.string	"fd"
	.byte	0x1f
	.byte	0x42
	.byte	0x16
	.long	0x61
	.uleb128 0x38
	.long	.LASF141
	.byte	0x1f
	.byte	0x42
	.byte	0x1e
	.long	0x61
	.byte	0
	.uleb128 0x3a
	.long	.LASF143
	.byte	0x1f
	.byte	0x32
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x16ab
	.uleb128 0x37
	.string	"fd"
	.byte	0x1f
	.byte	0x32
	.byte	0x13
	.long	0x61
	.uleb128 0x38
	.long	.LASF141
	.byte	0x1f
	.byte	0x32
	.byte	0x26
	.long	0x61
	.byte	0
	.uleb128 0x3b
	.long	.LASF193
	.byte	0x5
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x172b
	.uleb128 0x3c
	.long	.LASF144
	.byte	0x5
	.value	0x27a
	.byte	0x22
	.long	0x29e
	.uleb128 0x3d
	.long	.LASF145
	.byte	0x10
	.byte	0x5
	.value	0x27c
	.byte	0xa
	.long	0x16f1
	.uleb128 0x3e
	.long	.LASF144
	.byte	0x5
	.value	0x27c
	.byte	0x20
	.long	0x29e
	.byte	0
	.uleb128 0x3e
	.long	.LASF146
	.byte	0x5
	.value	0x27c
	.byte	0x35
	.long	0x29e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x16c6
	.uleb128 0x3f
	.long	.LASF145
	.byte	0x5
	.value	0x27c
	.byte	0x43
	.long	0x173b
	.uleb128 0x3f
	.long	.LASF146
	.byte	0x5
	.value	0x286
	.byte	0xf
	.long	0x29e
	.uleb128 0x3f
	.long	.LASF147
	.byte	0x5
	.value	0x287
	.byte	0x19
	.long	0x1740
	.uleb128 0x3f
	.long	.LASF148
	.byte	0x5
	.value	0x293
	.byte	0xf
	.long	0x29e
	.byte	0
	.uleb128 0xd
	.long	0x16f1
	.long	0x173b
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x172b
	.uleb128 0x7
	.byte	0x8
	.long	0x16f1
	.uleb128 0x40
	.long	.LASF194
	.byte	0x5
	.value	0x245
	.byte	0x1
	.byte	0x3
	.uleb128 0x41
	.long	.LASF151
	.byte	0x2
	.byte	0x29
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x177b
	.uleb128 0x38
	.long	.LASF149
	.byte	0x2
	.byte	0x29
	.byte	0x13
	.long	0x29e
	.uleb128 0x38
	.long	.LASF150
	.byte	0x2
	.byte	0x29
	.byte	0x1f
	.long	0x61
	.uleb128 0x42
	.byte	0
	.uleb128 0x41
	.long	.LASF152
	.byte	0x3
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x179a
	.uleb128 0x38
	.long	.LASF153
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.long	0x2a9
	.uleb128 0x42
	.byte	0
	.uleb128 0x41
	.long	.LASF154
	.byte	0x3
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x17c5
	.uleb128 0x38
	.long	.LASF155
	.byte	0x3
	.byte	0x62
	.byte	0x1b
	.long	0x2c0
	.uleb128 0x38
	.long	.LASF153
	.byte	0x3
	.byte	0x62
	.byte	0x3c
	.long	0x2a9
	.uleb128 0x42
	.byte	0
	.uleb128 0x3a
	.long	.LASF156
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x17e3
	.uleb128 0x38
	.long	.LASF155
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.long	0x2ba
	.byte	0
	.uleb128 0x3a
	.long	.LASF157
	.byte	0x4
	.byte	0x6c
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x1801
	.uleb128 0x37
	.string	"__c"
	.byte	0x4
	.byte	0x6c
	.byte	0x17
	.long	0x61
	.byte	0
	.uleb128 0x3a
	.long	.LASF158
	.byte	0x4
	.byte	0x42
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x181f
	.uleb128 0x38
	.long	.LASF159
	.byte	0x4
	.byte	0x42
	.byte	0x16
	.long	0x2ba
	.byte	0
	.uleb128 0x43
	.long	.LASF160
	.long	.LASF160
	.byte	0x1a
	.value	0x18d
	.byte	0x7
	.uleb128 0x44
	.long	.LASF161
	.long	.LASF161
	.byte	0x13
	.byte	0x25
	.byte	0xd
	.uleb128 0x44
	.long	.LASF162
	.long	.LASF162
	.byte	0x1b
	.byte	0x28
	.byte	0xd
	.uleb128 0x44
	.long	.LASF163
	.long	.LASF163
	.byte	0x19
	.byte	0x25
	.byte	0xd
	.uleb128 0x44
	.long	.LASF164
	.long	.LASF164
	.byte	0x20
	.byte	0x7a
	.byte	0xe
	.uleb128 0x44
	.long	.LASF165
	.long	.LASF165
	.byte	0x21
	.byte	0x56
	.byte	0xe
	.uleb128 0x44
	.long	.LASF166
	.long	.LASF166
	.byte	0x21
	.byte	0x52
	.byte	0xe
	.uleb128 0x43
	.long	.LASF167
	.long	.LASF167
	.byte	0x22
	.value	0x253
	.byte	0xc
	.uleb128 0x43
	.long	.LASF168
	.long	.LASF168
	.byte	0xa
	.value	0x134
	.byte	0xc
	.uleb128 0x44
	.long	.LASF169
	.long	.LASF169
	.byte	0xf
	.byte	0x42
	.byte	0xc
	.uleb128 0x44
	.long	.LASF170
	.long	.LASF170
	.byte	0x18
	.byte	0x3c
	.byte	0xd
	.uleb128 0x43
	.long	.LASF171
	.long	.LASF171
	.byte	0x22
	.value	0x269
	.byte	0xd
	.uleb128 0x43
	.long	.LASF172
	.long	.LASF172
	.byte	0x23
	.value	0x2be
	.byte	0x1
	.uleb128 0x44
	.long	.LASF173
	.long	.LASF173
	.byte	0x24
	.byte	0x2a
	.byte	0xf
	.uleb128 0x43
	.long	.LASF174
	.long	.LASF174
	.byte	0x12
	.value	0x161
	.byte	0xc
	.uleb128 0x44
	.long	.LASF151
	.long	.LASF175
	.byte	0x2
	.byte	0x1b
	.byte	0xc
	.uleb128 0x44
	.long	.LASF176
	.long	.LASF176
	.byte	0x3
	.byte	0x5a
	.byte	0xc
	.uleb128 0x43
	.long	.LASF177
	.long	.LASF177
	.byte	0xa
	.value	0x35b
	.byte	0xc
	.uleb128 0x44
	.long	.LASF178
	.long	.LASF178
	.byte	0x1d
	.byte	0x4f
	.byte	0x7
	.uleb128 0x45
	.long	.LASF195
	.long	.LASF195
	.uleb128 0x43
	.long	.LASF179
	.long	.LASF179
	.byte	0xa
	.value	0x35a
	.byte	0xc
	.uleb128 0x44
	.long	.LASF180
	.long	.LASF180
	.byte	0xa
	.byte	0xf6
	.byte	0xe
	.uleb128 0x44
	.long	.LASF181
	.long	.LASF181
	.byte	0x1c
	.byte	0x48
	.byte	0x6
	.uleb128 0x44
	.long	.LASF182
	.long	.LASF182
	.byte	0x3
	.byte	0x58
	.byte	0xc
	.uleb128 0x44
	.long	.LASF183
	.long	.LASF183
	.byte	0x21
	.byte	0x33
	.byte	0xe
	.uleb128 0x44
	.long	.LASF184
	.long	.LASF184
	.byte	0x25
	.byte	0x8c
	.byte	0xc
	.uleb128 0x43
	.long	.LASF185
	.long	.LASF185
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
.LVUS37:
	.uleb128 0
	.uleb128 .LVU358
	.uleb128 .LVU358
	.uleb128 .LVU397
	.uleb128 .LVU397
	.uleb128 .LVU401
	.uleb128 .LVU401
	.uleb128 0
.LLST37:
	.quad	.LVL155
	.quad	.LVL157
	.value	0x1
	.byte	0x55
	.quad	.LVL157
	.quad	.LVL179
	.value	0x1
	.byte	0x56
	.quad	.LVL179
	.quad	.LVL182
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL182
	.quad	.LFE142
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS38:
	.uleb128 0
	.uleb128 .LVU360
	.uleb128 .LVU360
	.uleb128 .LVU396
	.uleb128 .LVU396
	.uleb128 .LVU401
	.uleb128 .LVU401
	.uleb128 0
.LLST38:
	.quad	.LVL155
	.quad	.LVL158-1
	.value	0x1
	.byte	0x54
	.quad	.LVL158-1
	.quad	.LVL178
	.value	0x1
	.byte	0x53
	.quad	.LVL178
	.quad	.LVL182
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL182
	.quad	.LFE142
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS39:
	.uleb128 .LVU391
	.uleb128 .LVU395
	.uleb128 .LVU401
	.uleb128 .LVU412
.LLST39:
	.quad	.LVL176
	.quad	.LVL177
	.value	0x1
	.byte	0x5d
	.quad	.LVL182
	.quad	.LVL189
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS40:
	.uleb128 .LVU370
	.uleb128 .LVU375
	.uleb128 .LVU377
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 .LVU390
	.uleb128 .LVU412
	.uleb128 .LVU416
.LLST40:
	.quad	.LVL165
	.quad	.LVL166
	.value	0x1
	.byte	0x50
	.quad	.LVL168
	.quad	.LVL171-1
	.value	0x1
	.byte	0x50
	.quad	.LVL171
	.quad	.LVL175-1
	.value	0x1
	.byte	0x50
	.quad	.LVL189
	.quad	.LVL190-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS41:
	.uleb128 .LVU385
	.uleb128 .LVU400
	.uleb128 .LVU401
	.uleb128 .LVU412
.LLST41:
	.quad	.LVL174
	.quad	.LVL181
	.value	0x1
	.byte	0x5e
	.quad	.LVL182
	.quad	.LVL189
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS42:
	.uleb128 .LVU348
	.uleb128 .LVU368
	.uleb128 .LVU368
	.uleb128 .LVU378
	.uleb128 .LVU379
	.uleb128 .LVU382
	.uleb128 .LVU383
	.uleb128 .LVU399
	.uleb128 .LVU401
	.uleb128 .LVU411
	.uleb128 .LVU412
	.uleb128 0
.LLST42:
	.quad	.LVL156
	.quad	.LVL164
	.value	0xa
	.byte	0x3
	.quad	bsd_sum_file
	.byte	0x9f
	.quad	.LVL164
	.quad	.LVL169
	.value	0x1
	.byte	0x5c
	.quad	.LVL170
	.quad	.LVL172
	.value	0x1
	.byte	0x5c
	.quad	.LVL173
	.quad	.LVL180
	.value	0x1
	.byte	0x5c
	.quad	.LVL182
	.quad	.LVL187
	.value	0x1
	.byte	0x5c
	.quad	.LVL189
	.quad	.LFE142
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL4
	.value	0x1
	.byte	0x55
	.quad	.LVL4
	.quad	.LVL14
	.value	0x1
	.byte	0x5c
	.quad	.LVL14
	.quad	.LVL18
	.value	0x1
	.byte	0x55
	.quad	.LVL18
	.quad	.LVL28
	.value	0x1
	.byte	0x5c
	.quad	.LVL28
	.quad	.LVL31
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL33
	.value	0x1
	.byte	0x5c
	.quad	.LVL33
	.quad	.LVL37
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL39
	.value	0x1
	.byte	0x5c
	.quad	.LVL39
	.quad	.LVL42
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL42
	.quad	.LVL45
	.value	0x1
	.byte	0x5c
	.quad	.LVL45
	.quad	.LFE141
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST1:
	.quad	.LVL0
	.quad	.LVL3
	.value	0x1
	.byte	0x54
	.quad	.LVL3
	.quad	.LVL14
	.value	0x4
	.byte	0x91
	.sleb128 -8932
	.quad	.LVL14
	.quad	.LVL18
	.value	0x1
	.byte	0x54
	.quad	.LVL18
	.quad	.LFE141
	.value	0x4
	.byte	0x91
	.sleb128 -8932
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU23
	.uleb128 .LVU26
	.uleb128 .LVU27
	.uleb128 .LVU45
	.uleb128 .LVU49
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU83
	.uleb128 .LVU84
	.uleb128 0
.LLST2:
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x50
	.quad	.LVL8
	.quad	.LVL14
	.value	0x1
	.byte	0x5f
	.quad	.LVL16
	.quad	.LVL18
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL18
	.quad	.LVL30
	.value	0x1
	.byte	0x5f
	.quad	.LVL31
	.quad	.LFE141
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU7
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU81
	.uleb128 .LVU84
	.uleb128 .LVU93
	.uleb128 .LVU101
	.uleb128 .LVU109
.LLST3:
	.quad	.LVL1
	.quad	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL14
	.value	0x1
	.byte	0x56
	.quad	.LVL14
	.quad	.LVL18
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL18
	.quad	.LVL29
	.value	0x1
	.byte	0x56
	.quad	.LVL31
	.quad	.LVL37
	.value	0x1
	.byte	0x56
	.quad	.LVL42
	.quad	.LVL47
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU62
	.uleb128 .LVU66
.LLST4:
	.quad	.LVL21
	.quad	.LVL23
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU68
	.uleb128 .LVU81
	.uleb128 .LVU101
	.uleb128 .LVU109
.LLST5:
	.quad	.LVL24
	.quad	.LVL29
	.value	0x1
	.byte	0x5e
	.quad	.LVL42
	.quad	.LVL47
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU11
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU60
	.uleb128 .LVU84
	.uleb128 .LVU93
.LLST6:
	.quad	.LVL1
	.quad	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL14
	.value	0x1
	.byte	0x53
	.quad	.LVL14
	.quad	.LVL18
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL18
	.quad	.LVL20
	.value	0x1
	.byte	0x53
	.quad	.LVL31
	.quad	.LVL37
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU46
	.uleb128 .LVU53
.LLST7:
	.quad	.LVL15
	.quad	.LVL18
	.value	0x8
	.byte	0x7e
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU30
	.uleb128 .LVU45
	.uleb128 .LVU53
	.uleb128 .LVU56
	.uleb128 .LVU84
	.uleb128 .LVU85
.LLST10:
	.quad	.LVL9
	.quad	.LVL14
	.value	0x1
	.byte	0x50
	.quad	.LVL18
	.quad	.LVL19-1
	.value	0x1
	.byte	0x50
	.quad	.LVL31
	.quad	.LVL32-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU38
.LLST11:
	.quad	.LVL10
	.quad	.LVL11
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x2050
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL12
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x204f
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU14
	.uleb128 .LVU23
.LLST8:
	.quad	.LVL2
	.quad	.LVL6
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU14
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU23
.LLST9:
	.quad	.LVL2
	.quad	.LVL5-1
	.value	0x1
	.byte	0x55
	.quad	.LVL5-1
	.quad	.LVL6
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU69
	.uleb128 .LVU72
.LLST12:
	.quad	.LVL25
	.quad	.LVL26
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU76
	.uleb128 .LVU81
	.uleb128 .LVU105
	.uleb128 .LVU109
.LLST13:
	.quad	.LVL27
	.quad	.LVL29
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL44
	.quad	.LVL47
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU102
	.uleb128 .LVU105
.LLST14:
	.quad	.LVL42
	.quad	.LVL44
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST15:
	.quad	.LVL49
	.quad	.LVL52
	.value	0x1
	.byte	0x55
	.quad	.LVL52
	.quad	.LVL76
	.value	0x1
	.byte	0x5d
	.quad	.LVL76
	.quad	.LVL78
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL81
	.value	0x1
	.byte	0x55
	.quad	.LVL81
	.quad	.LFE140
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST16:
	.quad	.LVL49
	.quad	.LVL51
	.value	0x1
	.byte	0x54
	.quad	.LVL51
	.quad	.LVL75
	.value	0x1
	.byte	0x56
	.quad	.LVL75
	.quad	.LVL78
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL81
	.value	0x1
	.byte	0x54
	.quad	.LVL81
	.quad	.LFE140
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU126
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU183
	.uleb128 .LVU190
	.uleb128 0
.LLST17:
	.quad	.LVL54
	.quad	.LVL55
	.value	0x1
	.byte	0x50
	.quad	.LVL55
	.quad	.LVL77
	.value	0x1
	.byte	0x5f
	.quad	.LVL80
	.quad	.LFE140
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU117
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU142
	.uleb128 .LVU144
	.uleb128 .LVU178
	.uleb128 .LVU184
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU197
	.uleb128 .LVU205
	.uleb128 .LVU207
	.uleb128 .LVU214
	.uleb128 .LVU216
	.uleb128 .LVU219
	.uleb128 0
.LLST18:
	.quad	.LVL50
	.quad	.LVL57
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL57
	.quad	.LVL59
	.value	0x1
	.byte	0x5c
	.quad	.LVL59
	.quad	.LVL61
	.value	0x1
	.byte	0x51
	.quad	.LVL62
	.quad	.LVL73
	.value	0x1
	.byte	0x5c
	.quad	.LVL78
	.quad	.LVL81
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL81
	.quad	.LVL83
	.value	0x1
	.byte	0x5c
	.quad	.LVL87
	.quad	.LVL89
	.value	0x1
	.byte	0x5c
	.quad	.LVL93
	.quad	.LVL94
	.value	0x1
	.byte	0x5c
	.quad	.LVL97
	.quad	.LFE140
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU118
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU179
	.uleb128 .LVU184
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU197
	.uleb128 .LVU205
	.uleb128 .LVU217
	.uleb128 .LVU219
	.uleb128 0
.LLST19:
	.quad	.LVL50
	.quad	.LVL57
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL57
	.quad	.LVL74
	.value	0x1
	.byte	0x5e
	.quad	.LVL78
	.quad	.LVL81
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL81
	.quad	.LVL83
	.value	0x1
	.byte	0x5e
	.quad	.LVL87
	.quad	.LVL96
	.value	0x1
	.byte	0x5e
	.quad	.LVL97
	.quad	.LFE140
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU135
	.uleb128 .LVU148
	.uleb128 .LVU153
	.uleb128 .LVU163
	.uleb128 .LVU205
	.uleb128 .LVU206
	.uleb128 .LVU219
	.uleb128 0
.LLST20:
	.quad	.LVL58
	.quad	.LVL64
	.value	0x1
	.byte	0x50
	.quad	.LVL66
	.quad	.LVL68-1
	.value	0x1
	.byte	0x50
	.quad	.LVL87
	.quad	.LVL88-1
	.value	0x1
	.byte	0x50
	.quad	.LVL97
	.quad	.LFE140
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU185
	.uleb128 .LVU193
.LLST21:
	.quad	.LVL79
	.quad	.LVL81
	.value	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU134
	.uleb128 .LVU135
	.uleb128 .LVU150
	.uleb128 .LVU153
.LLST22:
	.quad	.LVL57
	.quad	.LVL58
	.value	0x1
	.byte	0x5f
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU156
	.uleb128 .LVU158
.LLST23:
	.quad	.LVL67
	.quad	.LVL67
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU167
	.uleb128 .LVU170
.LLST24:
	.quad	.LVL70
	.quad	.LVL71
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU174
	.uleb128 .LVU179
	.uleb128 .LVU214
	.uleb128 .LVU217
.LLST25:
	.quad	.LVL72
	.quad	.LVL74
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL93
	.quad	.LVL96
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU194
	.uleb128 .LVU197
.LLST26:
	.quad	.LVL81
	.quad	.LVL83
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST27:
	.quad	.LVL98
	.quad	.LVL99
	.value	0x1
	.byte	0x55
	.quad	.LVL99
	.quad	.LVL104
	.value	0x1
	.byte	0x56
	.quad	.LVL104
	.quad	.LVL105
	.value	0x1
	.byte	0x55
	.quad	.LVL105
	.quad	.LFE139
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU232
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU236
.LLST28:
	.quad	.LVL101
	.quad	.LVL102
	.value	0x1
	.byte	0x50
	.quad	.LVL102
	.quad	.LVL103-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 .LVU232
	.uleb128 .LVU236
.LLST29:
	.quad	.LVL101
	.quad	.LVL103-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS30:
	.uleb128 .LVU261
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU292
	.uleb128 .LVU313
	.uleb128 .LVU341
.LLST30:
	.quad	.LVL120
	.quad	.LVL123
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	.LVL123
	.quad	.LVL131
	.value	0x1
	.byte	0x5c
	.quad	.LVL140
	.quad	.LVL152
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 .LVU262
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 .LVU279
	.uleb128 .LVU313
	.uleb128 .LVU315
.LLST31:
	.quad	.LVL120
	.quad	.LVL121
	.value	0x1
	.byte	0x57
	.quad	.LVL121
	.quad	.LVL124-1
	.value	0x1
	.byte	0x50
	.quad	.LVL140
	.quad	.LVL141-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS32:
	.uleb128 .LVU288
	.uleb128 .LVU291
	.uleb128 .LVU324
	.uleb128 .LVU327
.LLST32:
	.quad	.LVL129
	.quad	.LVL130-1
	.value	0x1
	.byte	0x50
	.quad	.LVL146
	.quad	.LVL147-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS33:
	.uleb128 .LVU281
	.uleb128 .LVU284
	.uleb128 .LVU284
	.uleb128 .LVU285
	.uleb128 .LVU317
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU321
.LLST33:
	.quad	.LVL125
	.quad	.LVL126
	.value	0x1
	.byte	0x50
	.quad	.LVL126
	.quad	.LVL127-1
	.value	0x1
	.byte	0x54
	.quad	.LVL142
	.quad	.LVL143
	.value	0x1
	.byte	0x50
	.quad	.LVL143
	.quad	.LVL144-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS34:
	.uleb128 .LVU296
	.uleb128 .LVU299
	.uleb128 .LVU299
	.uleb128 .LVU302
	.uleb128 .LVU332
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU338
.LLST34:
	.quad	.LVL133
	.quad	.LVL134
	.value	0x1
	.byte	0x50
	.quad	.LVL134
	.quad	.LVL135-1
	.value	0x1
	.byte	0x54
	.quad	.LVL149
	.quad	.LVL150
	.value	0x1
	.byte	0x50
	.quad	.LVL150
	.quad	.LVL151-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS35:
	.uleb128 .LVU307
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU311
.LLST35:
	.quad	.LVL137
	.quad	.LVL138
	.value	0x1
	.byte	0x50
	.quad	.LVL138
	.quad	.LVL139-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS36:
	.uleb128 .LVU244
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU248
.LLST36:
	.quad	.LVL107
	.quad	.LVL108
	.value	0x1
	.byte	0x50
	.quad	.LVL108
	.quad	.LVL109-1
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
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB70
	.quad	.LBE70
	.quad	.LBB82
	.quad	.LBE82
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
	.quad	.LBB81
	.quad	.LBE81
	.quad	.LBB85
	.quad	.LBE85
	.quad	.LBB86
	.quad	.LBE86
	.quad	0
	.quad	0
	.quad	.LBB87
	.quad	.LBE87
	.quad	.LBB90
	.quad	.LBE90
	.quad	0
	.quad	0
	.quad	.LBB93
	.quad	.LBE93
	.quad	.LBB96
	.quad	.LBE96
	.quad	0
	.quad	0
	.quad	.LBB97
	.quad	.LBE97
	.quad	.LBB102
	.quad	.LBE102
	.quad	.LBB105
	.quad	.LBE105
	.quad	.LBB106
	.quad	.LBE106
	.quad	0
	.quad	0
	.quad	.LBB121
	.quad	.LBE121
	.quad	.LBB124
	.quad	.LBE124
	.quad	0
	.quad	0
	.quad	.LBB125
	.quad	.LBE125
	.quad	.LBB158
	.quad	.LBE158
	.quad	0
	.quad	0
	.quad	.LBB127
	.quad	.LBE127
	.quad	.LBB132
	.quad	.LBE132
	.quad	.LBB146
	.quad	.LBE146
	.quad	.LBB147
	.quad	.LBE147
	.quad	0
	.quad	0
	.quad	.LBB133
	.quad	.LBE133
	.quad	.LBB140
	.quad	.LBE140
	.quad	.LBB141
	.quad	.LBE141
	.quad	.LBB148
	.quad	.LBE148
	.quad	.LBB149
	.quad	.LBE149
	.quad	.LBB150
	.quad	.LBE150
	.quad	0
	.quad	0
	.quad	.LBB142
	.quad	.LBE142
	.quad	.LBB145
	.quad	.LBE145
	.quad	0
	.quad	0
	.quad	.LBB152
	.quad	.LBE152
	.quad	.LBB155
	.quad	.LBE155
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB142
	.quad	.LFE142
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF152:
	.string	"printf"
.LASF5:
	.string	"short int"
.LASF106:
	.string	"FADVISE_SEQUENTIAL"
.LASF97:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF63:
	.string	"option"
.LASF86:
	.string	"GETOPT_VERSION_CHAR"
.LASF123:
	.string	"longopts"
.LASF190:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF133:
	.string	"checksum"
.LASF163:
	.string	"set_program_name"
.LASF32:
	.string	"_shortbuf"
.LASF174:
	.string	"close"
.LASF149:
	.string	"__path"
.LASF91:
	.string	"shell_always_quoting_style"
.LASF90:
	.string	"shell_quoting_style"
.LASF85:
	.string	"GETOPT_HELP_CHAR"
.LASF20:
	.string	"_IO_buf_base"
.LASF57:
	.string	"long long unsigned int"
.LASF150:
	.string	"__oflag"
.LASF23:
	.string	"_IO_backup_base"
.LASF114:
	.string	"human_group_digits"
.LASF178:
	.string	"human_readable"
.LASF157:
	.string	"putchar_unlocked"
.LASF167:
	.string	"atexit"
.LASF69:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF101:
	.string	"quoting_style_vals"
.LASF82:
	.string	"uintmax_t"
.LASF144:
	.string	"program"
.LASF96:
	.string	"escape_quoting_style"
.LASF89:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF120:
	.string	"human_B"
.LASF75:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF192:
	.string	"xset_binary_mode_error"
.LASF137:
	.string	"bsd_sum_file"
.LASF194:
	.string	"emit_stdin_note"
.LASF36:
	.string	"_wide_data"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF79:
	.string	"program_invocation_short_name"
.LASF94:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF176:
	.string	"__printf_chk"
.LASF78:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF135:
	.string	"bytes_read"
.LASF118:
	.string	"human_space_before_unit"
.LASF83:
	.string	"TIMESPEC_HZ"
.LASF93:
	.string	"shell_escape_always_quoting_style"
.LASF72:
	.string	"timezone"
.LASF172:
	.string	"rpl_fclose"
.LASF191:
	.string	"xset_binary_mode"
.LASF88:
	.string	"program_name"
.LASF170:
	.string	"version_etc"
.LASF131:
	.string	"total_bytes"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF186:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF115:
	.string	"human_suppress_point_zero"
.LASF143:
	.string	"__gl_setmode"
.LASF155:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF134:
	.string	"is_stdin"
.LASF165:
	.string	"bindtextdomain"
.LASF18:
	.string	"_IO_write_ptr"
.LASF64:
	.string	"name"
.LASF49:
	.string	"sys_nerr"
.LASF73:
	.string	"getdate_err"
.LASF99:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF104:
	.string	"error_one_per_line"
.LASF80:
	.string	"Version"
.LASF22:
	.string	"_IO_save_base"
.LASF128:
	.string	"sum_func"
.LASF77:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF130:
	.string	"print_name"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF164:
	.string	"setlocale"
.LASF47:
	.string	"stdout"
.LASF38:
	.string	"_freeres_buf"
.LASF116:
	.string	"human_autoscale"
.LASF126:
	.string	"optc"
.LASF87:
	.string	"version_etc_copyright"
.LASF159:
	.string	"__fp"
.LASF15:
	.string	"_IO_read_end"
.LASF58:
	.string	"optarg"
.LASF147:
	.string	"map_prog"
.LASF173:
	.string	"safe_read"
.LASF151:
	.string	"open"
.LASF59:
	.string	"optind"
.LASF14:
	.string	"_IO_read_ptr"
.LASF181:
	.string	"fadvise"
.LASF177:
	.string	"__overflow"
.LASF10:
	.string	"__off64_t"
.LASF189:
	.string	"_IO_lock_t"
.LASF62:
	.string	"_IO_FILE"
.LASF102:
	.string	"error_print_progname"
.LASF9:
	.string	"__off_t"
.LASF76:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF156:
	.string	"ferror_unlocked"
.LASF180:
	.string	"fopen"
.LASF162:
	.string	"error"
.LASF50:
	.string	"sys_errlist"
.LASF25:
	.string	"_markers"
.LASF158:
	.string	"getc_unlocked"
.LASF95:
	.string	"c_maybe_quoting_style"
.LASF121:
	.string	"_Bool"
.LASF117:
	.string	"human_base_1024"
.LASF2:
	.string	"unsigned char"
.LASF146:
	.string	"node"
.LASF184:
	.string	"strncmp"
.LASF136:
	.string	"sysv_sum_file"
.LASF129:
	.string	"file"
.LASF66:
	.string	"flag"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF70:
	.string	"tzname"
.LASF42:
	.string	"FILE"
.LASF81:
	.string	"exit_failure"
.LASF171:
	.string	"exit"
.LASF182:
	.string	"__fprintf_chk"
.LASF110:
	.string	"FADVISE_RANDOM"
.LASF195:
	.string	"__stack_chk_fail"
.LASF92:
	.string	"shell_escape_quoting_style"
.LASF183:
	.string	"dcgettext"
.LASF107:
	.string	"FADVISE_NOREUSE"
.LASF100:
	.string	"quoting_style_args"
.LASF61:
	.string	"optopt"
.LASF160:
	.string	"quotearg_n_style_colon"
.LASF71:
	.string	"daylight"
.LASF154:
	.string	"fprintf"
.LASF54:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF108:
	.string	"FADVISE_DONTNEED"
.LASF141:
	.string	"mode"
.LASF11:
	.string	"__time_t"
.LASF98:
	.string	"clocale_quoting_style"
.LASF187:
	.string	"src/sum.c"
.LASF124:
	.string	"argc"
.LASF161:
	.string	"__errno_location"
.LASF60:
	.string	"opterr"
.LASF179:
	.string	"__uflow"
.LASF8:
	.string	"__uintmax_t"
.LASF105:
	.string	"FADVISE_NORMAL"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF74:
	.string	"_sys_siglist"
.LASF122:
	.string	"have_read_stdin"
.LASF153:
	.string	"__fmt"
.LASF145:
	.string	"infomap"
.LASF35:
	.string	"_codecvt"
.LASF127:
	.string	"files_given"
.LASF65:
	.string	"has_arg"
.LASF139:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF125:
	.string	"argv"
.LASF166:
	.string	"textdomain"
.LASF68:
	.string	"__daylight"
.LASF140:
	.string	"status"
.LASF188:
	.string	"/root/coreutils"
.LASF119:
	.string	"human_SI"
.LASF142:
	.string	"set_binary_mode"
.LASF13:
	.string	"_flags"
.LASF113:
	.string	"human_floor"
.LASF132:
	.string	"hbuf"
.LASF175:
	.string	"__open_alias"
.LASF168:
	.string	"setvbuf"
.LASF103:
	.string	"error_message_count"
.LASF148:
	.string	"lc_messages"
.LASF112:
	.string	"human_round_to_nearest"
.LASF111:
	.string	"human_ceiling"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF169:
	.string	"getopt_long"
.LASF109:
	.string	"FADVISE_WILLNEED"
.LASF185:
	.string	"fputs_unlocked"
.LASF67:
	.string	"__tzname"
.LASF138:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF193:
	.string	"emit_ancillary_info"
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
