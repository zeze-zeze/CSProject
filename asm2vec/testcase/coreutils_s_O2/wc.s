	.file	"wc.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" %s"
	.text
	.p2align 4
	.type	write_counts, @function
write_counts:
.LVL0:
.LFB171:
	.file 1 "src/wc.c"
	.loc 1 177 1 view -0
	.cfi_startproc
	.loc 1 177 1 is_stmt 0 view .LVU1
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r8, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%r9, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	.loc 1 179 15 view .LVU2
	leaq	1+format_sp_int.8232(%rip), %rbp
	.loc 1 177 1 view .LVU3
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 177 1 view .LVU4
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 178 3 is_stmt 1 view .LVU5
	.loc 1 179 3 view .LVU6
.LVL1:
	.loc 1 180 3 view .LVU7
	.loc 1 182 3 view .LVU8
	.loc 1 182 6 is_stmt 0 view .LVU9
	cmpb	$0, print_lines(%rip)
	jne	.L21
.LVL2:
.L2:
	.loc 1 187 3 is_stmt 1 view .LVU10
	.loc 1 187 6 is_stmt 0 view .LVU11
	cmpb	$0, print_words(%rip)
	jne	.L22
.LVL3:
.L3:
	.loc 1 192 3 is_stmt 1 view .LVU12
	.loc 1 192 6 is_stmt 0 view .LVU13
	cmpb	$0, print_chars(%rip)
	jne	.L23
.LVL4:
.L4:
	.loc 1 197 3 is_stmt 1 view .LVU14
	.loc 1 197 6 is_stmt 0 view .LVU15
	cmpb	$0, print_bytes(%rip)
	jne	.L24
.LVL5:
.L5:
	.loc 1 202 3 is_stmt 1 view .LVU16
	.loc 1 202 6 is_stmt 0 view .LVU17
	cmpb	$0, print_linelength(%rip)
	jne	.L25
.L6:
	.loc 1 206 3 is_stmt 1 view .LVU18
	.loc 1 206 6 is_stmt 0 view .LVU19
	testq	%r12, %r12
	je	.L7
	.loc 1 207 5 is_stmt 1 view .LVU20
	.loc 1 207 20 is_stmt 0 view .LVU21
	movl	$10, %esi
	movq	%r12, %rdi
	call	strchr@PLT
.LVL6:
	.loc 1 207 5 view .LVU22
	testq	%rax, %rax
	je	.L8
	.loc 1 207 42 discriminator 1 view .LVU23
	movq	%r12, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL7:
	movq	%rax, %r12
.LVL8:
.L8:
.LBB142:
.LBI142:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 1 is_stmt 1 discriminator 4 view .LVU24
.LBB143:
	.loc 2 107 3 discriminator 4 view .LVU25
	.loc 2 107 10 is_stmt 0 discriminator 4 view .LVU26
	movq	%r12, %rdx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL9:
.L7:
	.loc 2 107 10 discriminator 4 view .LVU27
.LBE143:
.LBE142:
	.loc 1 208 3 is_stmt 1 view .LVU28
.LBB144:
.LBI144:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 3 108 1 view .LVU29
.LBB145:
	.loc 3 110 3 view .LVU30
	.loc 3 110 10 is_stmt 0 view .LVU31
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L26
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	$10, (%rax)
.LVL10:
.L1:
	.loc 3 110 10 view .LVU32
.LBE145:
.LBE144:
	.loc 1 209 1 view .LVU33
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L27
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL11:
	.loc 1 209 1 view .LVU34
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL12:
	.loc 1 209 1 view .LVU35
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL13:
	.loc 1 209 1 view .LVU36
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL14:
	.loc 1 209 1 view .LVU37
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL15:
	.loc 1 209 1 view .LVU38
	ret
.LVL16:
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	.loc 1 204 7 is_stmt 1 view .LVU39
	movq	%rsp, %rsi
	movq	%r13, %rdi
	call	umaxtostr@PLT
.LVL17:
.LBB147:
.LBB148:
	.loc 2 107 10 is_stmt 0 view .LVU40
	movl	number_width(%rip), %edx
	movq	%rbp, %rsi
	movl	$1, %edi
.LBE148:
.LBE147:
	.loc 1 204 7 view .LVU41
	movq	%rax, %rcx
.LVL18:
.LBB150:
.LBI147:
	.loc 2 105 1 is_stmt 1 view .LVU42
.LBB149:
	.loc 2 107 3 view .LVU43
	.loc 2 107 10 is_stmt 0 view .LVU44
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL19:
	.loc 2 107 10 view .LVU45
	jmp	.L6
.LVL20:
	.p2align 4,,10
	.p2align 3
.L24:
	.loc 2 107 10 view .LVU46
.LBE149:
.LBE150:
	.loc 1 199 7 is_stmt 1 view .LVU47
	movq	%rsp, %rsi
	movq	%r14, %rdi
	call	umaxtostr@PLT
.LVL21:
.LBB151:
.LBB152:
	.loc 2 107 10 is_stmt 0 view .LVU48
	movl	number_width(%rip), %edx
	movq	%rbp, %rsi
	movl	$1, %edi
.LBE152:
.LBE151:
	.loc 1 199 7 view .LVU49
	movq	%rax, %rcx
.LVL22:
.LBB155:
.LBI151:
	.loc 2 105 1 is_stmt 1 view .LVU50
.LBB153:
	.loc 2 107 3 view .LVU51
	.loc 2 107 10 is_stmt 0 view .LVU52
	xorl	%eax, %eax
.LBE153:
.LBE155:
	.loc 1 200 18 view .LVU53
	leaq	format_sp_int.8232(%rip), %rbp
.LVL23:
.LBB156:
.LBB154:
	.loc 2 107 10 view .LVU54
	call	__printf_chk@PLT
.LVL24:
	.loc 2 107 10 view .LVU55
.LBE154:
.LBE156:
	.loc 1 200 7 is_stmt 1 view .LVU56
	.loc 1 200 7 is_stmt 0 view .LVU57
	jmp	.L5
.LVL25:
	.p2align 4,,10
	.p2align 3
.L23:
	.loc 1 194 7 is_stmt 1 view .LVU58
	movq	%rsp, %rsi
	movq	%r15, %rdi
	call	umaxtostr@PLT
.LVL26:
.LBB157:
.LBB158:
	.loc 2 107 10 is_stmt 0 view .LVU59
	movl	number_width(%rip), %edx
	movq	%rbp, %rsi
	movl	$1, %edi
.LBE158:
.LBE157:
	.loc 1 194 7 view .LVU60
	movq	%rax, %rcx
.LVL27:
.LBB161:
.LBI157:
	.loc 2 105 1 is_stmt 1 view .LVU61
.LBB159:
	.loc 2 107 3 view .LVU62
	.loc 2 107 10 is_stmt 0 view .LVU63
	xorl	%eax, %eax
.LBE159:
.LBE161:
	.loc 1 195 18 view .LVU64
	leaq	format_sp_int.8232(%rip), %rbp
.LVL28:
.LBB162:
.LBB160:
	.loc 2 107 10 view .LVU65
	call	__printf_chk@PLT
.LVL29:
	.loc 2 107 10 view .LVU66
.LBE160:
.LBE162:
	.loc 1 195 7 is_stmt 1 view .LVU67
	.loc 1 195 7 is_stmt 0 view .LVU68
	jmp	.L4
.LVL30:
	.p2align 4,,10
	.p2align 3
.L22:
	.loc 1 189 7 is_stmt 1 view .LVU69
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	call	umaxtostr@PLT
.LVL31:
.LBB163:
.LBB164:
	.loc 2 107 10 is_stmt 0 view .LVU70
	movl	number_width(%rip), %edx
	movq	%rbp, %rsi
	movl	$1, %edi
.LBE164:
.LBE163:
	.loc 1 189 7 view .LVU71
	movq	%rax, %rcx
.LVL32:
.LBB167:
.LBI163:
	.loc 2 105 1 is_stmt 1 view .LVU72
.LBB165:
	.loc 2 107 3 view .LVU73
	.loc 2 107 10 is_stmt 0 view .LVU74
	xorl	%eax, %eax
.LBE165:
.LBE167:
	.loc 1 190 18 view .LVU75
	leaq	format_sp_int.8232(%rip), %rbp
.LVL33:
.LBB168:
.LBB166:
	.loc 2 107 10 view .LVU76
	call	__printf_chk@PLT
.LVL34:
	.loc 2 107 10 view .LVU77
.LBE166:
.LBE168:
	.loc 1 190 7 is_stmt 1 view .LVU78
	.loc 1 190 7 is_stmt 0 view .LVU79
	jmp	.L3
.LVL35:
	.p2align 4,,10
	.p2align 3
.L21:
	.loc 1 184 7 is_stmt 1 view .LVU80
	movq	%rsp, %rsi
	call	umaxtostr@PLT
.LVL36:
.LBB169:
.LBB170:
	.loc 2 107 10 is_stmt 0 view .LVU81
	movl	number_width(%rip), %edx
	movq	%rbp, %rsi
	movl	$1, %edi
.LBE170:
.LBE169:
	.loc 1 184 7 view .LVU82
	movq	%rax, %rcx
.LVL37:
.LBB173:
.LBI169:
	.loc 2 105 1 is_stmt 1 view .LVU83
.LBB171:
	.loc 2 107 3 view .LVU84
	.loc 2 107 10 is_stmt 0 view .LVU85
	xorl	%eax, %eax
.LBE171:
.LBE173:
	.loc 1 185 18 view .LVU86
	subq	$1, %rbp
.LVL38:
.LBB174:
.LBB172:
	.loc 2 107 10 view .LVU87
	call	__printf_chk@PLT
.LVL39:
	.loc 2 107 10 view .LVU88
.LBE172:
.LBE174:
	.loc 1 185 7 is_stmt 1 view .LVU89
	.loc 1 185 7 is_stmt 0 view .LVU90
	jmp	.L2
.LVL40:
	.p2align 4,,10
	.p2align 3
.L26:
.LBB175:
.LBB146:
	.loc 3 110 10 view .LVU91
	movl	$10, %esi
	call	__overflow@PLT
.LVL41:
	jmp	.L1
.LVL42:
.L27:
	.loc 3 110 10 view .LVU92
.LBE146:
.LBE175:
	.loc 1 209 1 view .LVU93
	call	__stack_chk_fail@PLT
.LVL43:
	.cfi_endproc
.LFE171:
	.size	write_counts, .-write_counts
	.section	.rodata.str1.1
.LC1:
	.string	"standard input"
.LC2:
	.string	"%s"
	.text
	.p2align 4
	.type	wc, @function
wc:
.LVL44:
.LFB172:
	.loc 1 217 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 217 1 is_stmt 0 view .LVU95
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
	leaq	-16384(%rsp), %r11
	.cfi_def_cfa 11, 16440
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	.cfi_def_cfa_register 7
	subq	$120, %rsp
	.cfi_def_cfa_offset 16560
	.loc 1 217 1 view .LVU96
	movl	%edi, 28(%rsp)
	movq	%rdx, %rbx
	movq	%rcx, %rbp
	movq	%rsi, 56(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 16488(%rsp)
	xorl	%eax, %eax
	.loc 1 218 3 is_stmt 1 view .LVU97
.LVL45:
	.loc 1 219 3 view .LVU98
	.loc 1 220 3 view .LVU99
	.loc 1 221 3 view .LVU100
	.loc 1 222 3 view .LVU101
	.loc 1 223 3 view .LVU102
	movq	%rsi, 72(%rsp)
	.loc 1 223 38 is_stmt 0 view .LVU103
	testq	%rsi, %rsi
	je	.L143
.LVL46:
.L29:
	.loc 1 225 3 is_stmt 1 discriminator 4 view .LVU104
	.loc 1 230 3 discriminator 4 view .LVU105
	.loc 1 230 7 is_stmt 0 discriminator 4 view .LVU106
	call	__ctype_get_mb_cur_max@PLT
.LVL47:
	movzbl	print_bytes(%rip), %r12d
	.loc 1 230 6 discriminator 4 view .LVU107
	cmpq	$1, %rax
	jbe	.L30
	.loc 1 232 7 is_stmt 1 view .LVU108
.LVL48:
	.loc 1 233 7 view .LVU109
	.loc 1 233 19 is_stmt 0 view .LVU110
	movzbl	print_chars(%rip), %eax
	movb	%al, 67(%rsp)
.LVL49:
.L31:
	.loc 1 241 3 is_stmt 1 view .LVU111
	.loc 1 241 35 is_stmt 0 view .LVU112
	cmpb	$0, print_words(%rip)
	jne	.L33
	.loc 1 241 35 discriminator 2 view .LVU113
	movzbl	print_linelength(%rip), %eax
	movb	%al, 8(%rsp)
	testb	%al, %al
	jne	.L33
.LVL50:
	.loc 1 244 3 is_stmt 1 discriminator 6 view .LVU114
	.loc 1 244 6 is_stmt 0 discriminator 6 view .LVU115
	cmpb	$1, %r12b
	jne	.L34
	cmpb	$0, 67(%rsp)
	jne	.L34
	.loc 1 244 50 discriminator 1 view .LVU116
	cmpb	$0, print_lines(%rip)
	jne	.L35
.L40:
.LBB207:
	.loc 1 259 7 is_stmt 1 view .LVU117
.LVL51:
	.loc 1 261 7 view .LVU118
	.loc 1 261 22 is_stmt 0 view .LVU119
	movl	(%rbx), %eax
	.loc 1 261 10 view .LVU120
	testl	%eax, %eax
	jg	.L144
.L37:
	.loc 1 267 7 is_stmt 1 view .LVU121
	.loc 1 267 10 is_stmt 0 view .LVU122
	testl	%eax, %eax
	je	.L41
.LVL52:
.L43:
	.loc 1 267 10 view .LVU123
.LBE207:
	.loc 1 225 33 view .LVU124
	movq	$0, 40(%rsp)
.LVL53:
.L42:
.LBB218:
	.loc 1 298 11 is_stmt 1 view .LVU125
	movl	28(%rsp), %ebp
	movl	$2, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	96(%rsp), %r15
	movl	%ebp, %edi
	call	fdadvise@PLT
.LVL54:
	.loc 1 299 11 view .LVU126
	movq	40(%rsp), %rbx
.LVL55:
	.loc 1 299 17 is_stmt 0 view .LVU127
	jmp	.L48
.LVL56:
	.p2align 4,,10
	.p2align 3
.L33:
	.loc 1 299 17 view .LVU128
.LBE218:
	.loc 1 244 3 is_stmt 1 view .LVU129
	.loc 1 245 5 view .LVU130
	movl	28(%rsp), %edi
	movl	$2, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	fdadvise@PLT
.LVL57:
	.loc 1 257 3 view .LVU131
.L51:
	.loc 1 361 8 view .LVU132
	.loc 1 361 12 is_stmt 0 view .LVU133
	call	__ctype_get_mb_cur_max@PLT
.LVL58:
	.loc 1 361 11 view .LVU134
	cmpq	$1, %rax
	jbe	.L107
.LBB219:
	.loc 1 363 7 is_stmt 1 view .LVU135
.LVL59:
	.loc 1 364 7 view .LVU136
	.loc 1 365 7 view .LVU137
	leaq	96(%rsp), %r15
	.loc 1 375 14 is_stmt 0 view .LVU138
	xorl	%r13d, %r13d
	.loc 1 366 12 view .LVU139
	xorl	%r14d, %r14d
	.loc 1 364 17 view .LVU140
	xorl	%r12d, %r12d
.LVL60:
	.loc 1 365 17 view .LVU141
	movq	$0, 88(%rsp)
	.loc 1 366 7 is_stmt 1 view .LVU142
.LVL61:
	.loc 1 375 7 view .LVU143
	.loc 1 380 7 view .LVU144
	.loc 1 363 12 is_stmt 0 view .LVU145
	xorl	%ebp, %ebp
.LVL62:
	.loc 1 363 12 view .LVU146
.LBE219:
	.loc 1 225 25 view .LVU147
	xorl	%ebx, %ebx
.LVL63:
	.loc 1 225 46 view .LVU148
	movq	$0, 32(%rsp)
	.loc 1 225 33 view .LVU149
	movq	$0, 40(%rsp)
	.loc 1 225 17 view .LVU150
	movq	$0, 16(%rsp)
	.loc 1 225 9 view .LVU151
	movq	$0, (%rsp)
	movq	%r15, 48(%rsp)
.LVL64:
	.p2align 4,,10
	.p2align 3
.L61:
.LBB243:
	.loc 1 380 13 is_stmt 1 view .LVU152
	.loc 1 380 28 is_stmt 0 view .LVU153
	movq	48(%rsp), %rax
.LVL65:
	.loc 1 380 28 view .LVU154
	movl	$16384, %edx
	movl	28(%rsp), %edi
	subq	%r13, %rdx
	leaq	(%rax,%r13), %rsi
	call	safe_read@PLT
.LVL66:
	.loc 1 380 13 view .LVU155
	testq	%rax, %rax
	je	.L145
.LBB220:
	.loc 1 382 11 is_stmt 1 view .LVU156
	.loc 1 384 11 view .LVU157
	.loc 1 386 11 view .LVU158
	.loc 1 386 14 is_stmt 0 view .LVU159
	cmpq	$-1, %rax
	je	.L146
	.loc 1 393 11 is_stmt 1 view .LVU160
	.loc 1 394 11 view .LVU161
.LVL67:
	.loc 1 395 11 view .LVU162
	.loc 1 395 22 is_stmt 0 view .LVU163
	addq	%rax, %r13
.LVL68:
	.loc 1 393 17 view .LVU164
	addq	%rax, 40(%rsp)
.LVL69:
	.loc 1 394 13 view .LVU165
	movq	48(%rsp), %r15
	movl	%r14d, %eax
	movq	%r13, %r14
.LVL70:
	.loc 1 394 13 view .LVU166
	movl	%eax, %r13d
.LVL71:
	.p2align 4,,10
	.p2align 3
.L81:
	.loc 1 396 11 is_stmt 1 view .LVU167
.LBB221:
	.loc 1 398 15 view .LVU168
	.loc 1 399 15 view .LVU169
	.loc 1 400 15 view .LVU170
	.loc 1 402 15 view .LVU171
	.loc 1 402 18 is_stmt 0 view .LVU172
	testb	%r13b, %r13b
	jne	.L64
	.loc 1 402 42 discriminator 1 view .LVU173
	movzbl	(%r15), %ecx
.LVL72:
.LBB222:
.LBI222:
	.file 4 "./lib/mbchar.h"
	.loc 4 316 1 is_stmt 1 discriminator 1 view .LVU174
.LBB223:
	.loc 4 318 3 discriminator 1 view .LVU175
	.loc 4 318 51 is_stmt 0 discriminator 1 view .LVU176
	leaq	is_basic_table(%rip), %rsi
	.loc 4 318 45 discriminator 1 view .LVU177
	movl	%ecx, %eax
	shrb	$5, %al
	.loc 4 318 26 discriminator 1 view .LVU178
	andl	$7, %eax
	.loc 4 318 51 discriminator 1 view .LVU179
	movl	(%rsi,%rax,4), %eax
	shrl	%cl, %eax
.LBE223:
.LBE222:
	.loc 1 402 29 discriminator 1 view .LVU180
	movl	%eax, %edi
	andl	$1, %edi
	je	.L64
	.loc 1 406 19 is_stmt 1 view .LVU181
.LVL73:
	.loc 1 407 19 view .LVU182
	.loc 1 402 32 is_stmt 0 view .LVU183
	movsbl	%cl, %eax
	movl	%eax, 84(%rsp)
	.loc 1 408 19 is_stmt 1 view .LVU184
.LVL74:
	.loc 1 443 15 view .LVU185
	leal	-9(%rcx), %eax
	cmpb	$23, %al
	ja	.L65
	leaq	.L67(%rip), %rsi
	movzbl	%al, %eax
	movslq	(%rsi,%rax,4), %rax
	addq	%rsi, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L67:
	.long	.L108-.L67
	.long	.L109-.L67
	.long	.L110-.L67
	.long	.L111-.L67
	.long	.L111-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L65-.L67
	.long	.L112-.L67
	.text
.LVL75:
	.p2align 4,,10
	.p2align 3
.L30:
	.loc 1 443 15 is_stmt 0 view .LVU186
.LBE221:
.LBE220:
.LBE243:
	.loc 1 238 7 is_stmt 1 view .LVU187
	.loc 1 238 33 is_stmt 0 view .LVU188
	movzbl	print_chars(%rip), %eax
	testb	%r12b, %r12b
	.loc 1 239 19 view .LVU189
	movb	$0, 67(%rsp)
	.loc 1 238 33 view .LVU190
	cmove	%eax, %r12d
	.loc 1 239 7 is_stmt 1 view .LVU191
.LVL76:
	.loc 1 239 7 is_stmt 0 view .LVU192
	jmp	.L31
.LVL77:
	.p2align 4,,10
	.p2align 3
.L65:
	.loc 1 239 7 view .LVU193
	movb	%cl, 8(%rsp)
.LBB244:
.LBB238:
.LBB227:
	.loc 1 466 19 is_stmt 1 discriminator 1 view .LVU194
	.loc 1 480 24 discriminator 1 view .LVU195
	movb	%dil, 68(%rsp)
	.loc 1 480 37 is_stmt 0 discriminator 1 view .LVU196
	call	__ctype_b_loc@PLT
.LVL78:
	.loc 1 480 37 discriminator 1 view .LVU197
.LBE227:
.LBE238:
.LBE244:
	.file 5 "src/system.h"
	.loc 5 156 50 is_stmt 1 discriminator 1 view .LVU198
.LBB245:
.LBB239:
.LBB228:
	.loc 1 480 37 is_stmt 0 discriminator 1 view .LVU199
	movzbl	8(%rsp), %ecx
	.loc 1 406 21 discriminator 1 view .LVU200
	movl	$1, %edx
	.loc 1 480 37 discriminator 1 view .LVU201
	movq	(%rax), %rax
	movzwl	(%rax,%rcx,2), %eax
	.loc 1 480 34 discriminator 1 view .LVU202
	testb	$64, %ah
	je	.L79
	.loc 1 482 23 is_stmt 1 view .LVU203
	.loc 1 482 30 is_stmt 0 view .LVU204
	addq	$1, %r12
.LVL79:
	.loc 1 483 23 is_stmt 1 view .LVU205
	.loc 1 483 23 is_stmt 0 view .LVU206
.LBE228:
.LBE239:
.LBE245:
	.loc 5 156 50 is_stmt 1 view .LVU207
.LBB246:
.LBB240:
.LBB229:
	.loc 1 483 26 is_stmt 0 view .LVU208
	testb	$32, %ah
	jne	.L69
	.loc 1 485 31 view .LVU209
	movzbl	68(%rsp), %edi
	movzbl	%dil, %ebp
.LVL80:
	.p2align 4,,10
	.p2align 3
.L79:
	.loc 1 490 15 is_stmt 1 discriminator 1 view .LVU210
	.loc 1 490 17 is_stmt 0 discriminator 1 view .LVU211
	addq	%rdx, %r15
.LVL81:
	.loc 1 491 15 is_stmt 1 discriminator 1 view .LVU212
	.loc 1 491 26 is_stmt 0 discriminator 1 view .LVU213
	subq	%rdx, %r14
.LVL82:
	.loc 1 492 15 is_stmt 1 discriminator 1 view .LVU214
	.loc 1 492 20 is_stmt 0 discriminator 1 view .LVU215
	addq	$1, %rbx
.LVL83:
.L76:
	.loc 1 492 20 discriminator 1 view .LVU216
.LBE229:
	.loc 1 494 17 is_stmt 1 view .LVU217
	.loc 1 494 11 is_stmt 0 view .LVU218
	testq	%r14, %r14
	jne	.L81
	.loc 1 494 11 view .LVU219
	movl	%r13d, %eax
	movq	%r14, %r13
.LVL84:
	.loc 1 494 11 view .LVU220
	movl	%eax, %r14d
.LVL85:
	.loc 1 494 11 view .LVU221
	jmp	.L61
.LVL86:
	.p2align 4,,10
	.p2align 3
.L111:
.LBB230:
	.loc 1 407 29 view .LVU222
	movl	$1, %edx
.LVL87:
.L68:
	.loc 1 447 19 is_stmt 1 view .LVU223
	.loc 1 450 19 view .LVU224
	movq	32(%rsp), %rax
	cmpq	%r12, %rax
	cmovnb	%rax, %r12
.LVL88:
	.loc 1 450 19 is_stmt 0 view .LVU225
	movq	%r12, 32(%rsp)
.LVL89:
	.loc 1 452 19 is_stmt 1 view .LVU226
	.loc 1 453 19 view .LVU227
	.loc 1 452 27 is_stmt 0 view .LVU228
	xorl	%r12d, %r12d
.LVL90:
.L69:
	.loc 1 459 19 is_stmt 1 view .LVU229
	.loc 1 462 19 view .LVU230
	.loc 1 463 19 view .LVU231
	.loc 1 464 19 view .LVU232
	.loc 1 462 25 is_stmt 0 view .LVU233
	addq	%rbp, 16(%rsp)
.LVL91:
	.loc 1 463 27 view .LVU234
	xorl	%ebp, %ebp
	.loc 1 464 19 view .LVU235
	jmp	.L79
.LVL92:
	.p2align 4,,10
	.p2align 3
.L109:
	.loc 1 407 29 view .LVU236
	movl	$1, %edx
.LVL93:
.L70:
	.loc 1 446 19 is_stmt 1 view .LVU237
	.loc 1 446 24 is_stmt 0 view .LVU238
	addq	$1, (%rsp)
.LVL94:
	.loc 1 446 24 view .LVU239
	jmp	.L68
.LVL95:
	.p2align 4,,10
	.p2align 3
.L108:
	.loc 1 407 29 view .LVU240
	movl	$1, %edx
.LVL96:
.L71:
	.loc 1 455 19 is_stmt 1 view .LVU241
	.loc 1 455 27 is_stmt 0 view .LVU242
	andq	$-8, %r12
.LVL97:
	.loc 1 455 27 view .LVU243
	addq	$8, %r12
.LVL98:
	.loc 1 456 19 is_stmt 1 view .LVU244
	jmp	.L69
.LVL99:
	.p2align 4,,10
	.p2align 3
.L112:
	.loc 1 407 29 is_stmt 0 view .LVU245
	movl	$1, %edx
.LVL100:
.L66:
	.loc 1 458 19 is_stmt 1 view .LVU246
	.loc 1 458 26 is_stmt 0 view .LVU247
	addq	$1, %r12
.LVL101:
	.loc 1 458 26 view .LVU248
	jmp	.L69
.LVL102:
	.p2align 4,,10
	.p2align 3
.L110:
	.loc 1 407 29 view .LVU249
	movl	$1, %edx
	jmp	.L69
.LVL103:
.L107:
	.loc 1 407 29 view .LVU250
	leaq	96(%rsp), %r15
.LBE230:
.LBE240:
.LBE246:
.LBB247:
	.loc 1 517 12 view .LVU251
	xorl	%ebx, %ebx
.LVL104:
	.loc 1 518 17 view .LVU252
	xorl	%ebp, %ebp
.LVL105:
	.loc 1 518 17 view .LVU253
.LBE247:
	.loc 1 225 46 view .LVU254
	xorl	%r12d, %r12d
.LVL106:
	.loc 1 225 33 view .LVU255
	movq	$0, 40(%rsp)
	movzbl	%bl, %r13d
	movq	%rbp, %rbx
	.loc 1 225 9 view .LVU256
	movq	$0, (%rsp)
	movq	%r15, 16(%rsp)
.LVL107:
	.p2align 4,,10
	.p2align 3
.L60:
.LBB268:
	.loc 1 520 13 is_stmt 1 view .LVU257
	.loc 1 520 28 is_stmt 0 view .LVU258
	movq	16(%rsp), %rsi
	movl	28(%rsp), %edi
	movl	$16384, %edx
	call	safe_read@PLT
.LVL108:
	.loc 1 520 13 view .LVU259
	leaq	.L88(%rip), %r9
	testq	%rax, %rax
	je	.L147
.LBB248:
	.loc 1 522 11 is_stmt 1 view .LVU260
.LVL109:
	.loc 1 523 11 view .LVU261
	.loc 1 523 14 is_stmt 0 view .LVU262
	cmpq	$-1, %rax
	je	.L148
	.loc 1 530 11 is_stmt 1 view .LVU263
	.loc 1 530 11 is_stmt 0 view .LVU264
	movq	16(%rsp), %r14
	.loc 1 530 17 view .LVU265
	addq	%rax, 40(%rsp)
.LVL110:
	.loc 1 530 17 view .LVU266
	leaq	(%r14,%rax), %r15
	.loc 1 522 23 view .LVU267
	movq	%r15, %rcx
	movq	%r12, %r15
	movq	%rbp, %r12
.LVL111:
	.loc 1 522 23 view .LVU268
	movq	%rbx, %rbp
.LVL112:
	.p2align 4,,10
	.p2align 3
.L94:
	.loc 1 531 11 is_stmt 1 view .LVU269
	.loc 1 533 15 view .LVU270
	.loc 1 533 23 is_stmt 0 view .LVU271
	movzbl	(%r14), %ebx
	.loc 1 533 25 view .LVU272
	addq	$1, %r14
.LVL113:
	.loc 1 533 25 view .LVU273
	leal	-9(%rbx), %eax
	cmpb	$23, %al
	ja	.L86
	.loc 1 533 25 view .LVU274
	movzbl	%al, %eax
	movslq	(%r9,%rax,4), %rax
	addq	%r9, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L88:
	.long	.L92-.L88
	.long	.L91-.L88
	.long	.L90-.L88
	.long	.L89-.L88
	.long	.L89-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L87-.L88
	.text
	.p2align 4,,10
	.p2align 3
.L86:
	.loc 1 556 19 is_stmt 1 view .LVU275
	movq	%rcx, 8(%rsp)
	.loc 1 556 23 is_stmt 0 view .LVU276
	call	__ctype_b_loc@PLT
.LVL114:
.LBB249:
.LBI249:
	.loc 5 156 29 is_stmt 1 view .LVU277
.LBB250:
	.loc 5 156 50 view .LVU278
	.loc 5 156 50 is_stmt 0 view .LVU279
.LBE250:
.LBE249:
	.loc 1 556 22 view .LVU280
	movq	8(%rsp), %rcx
	leaq	.L88(%rip), %r9
	.loc 1 556 23 view .LVU281
	movq	%rax, %r8
	movzbl	%bl, %eax
	movq	(%r8), %rsi
	movzwl	(%rsi,%rax,2), %eax
	.loc 1 556 22 view .LVU282
	testb	$64, %ah
	je	.L93
	.loc 1 558 23 is_stmt 1 view .LVU283
	.loc 1 558 30 is_stmt 0 view .LVU284
	addq	$1, %rbp
.LVL115:
	.loc 1 559 23 is_stmt 1 view .LVU285
	.loc 1 559 23 is_stmt 0 view .LVU286
.LBE248:
.LBE268:
	.loc 5 156 50 is_stmt 1 view .LVU287
.LBB269:
.LBB263:
	.loc 1 559 26 is_stmt 0 view .LVU288
	testb	$32, %ah
	jne	.L90
.LVL116:
	.loc 1 559 26 view .LVU289
.LBE263:
.LBE269:
	.loc 5 156 50 is_stmt 1 view .LVU290
.LBB270:
.LBB264:
.LBB251:
.LBI251:
	.loc 1 163 1 view .LVU291
.LBE251:
.LBE264:
.LBE270:
	.loc 1 165 3 view .LVU292
.LBB271:
.LBB265:
.LBB260:
.LBB252:
.LBI252:
	.file 6 "/usr/include/wchar.h"
	.loc 6 318 1 view .LVU293
.LBB253:
	.loc 6 319 3 view .LVU294
.LBE253:
.LBE252:
.LBE260:
	.loc 1 560 30 is_stmt 0 view .LVU295
	movzbl	%bl, %edi
.LVL117:
.LBB261:
.LBB255:
.LBB254:
	.loc 6 320 21 view .LVU296
	call	btowc@PLT
.LVL118:
	.loc 6 320 21 view .LVU297
.LBE254:
.LBE255:
.LBB256:
.LBI256:
	.loc 1 155 1 is_stmt 1 view .LVU298
.LBB257:
	.loc 1 157 3 view .LVU299
	.loc 1 157 10 is_stmt 0 view .LVU300
	movzbl	posixly_correct(%rip), %esi
	.loc 1 158 10 view .LVU301
	movq	8(%rsp), %rcx
	leaq	.L88(%rip), %r9
	testb	%sil, %sil
	jne	.L116
	cmpl	$160, %eax
	je	.L90
	cmpl	$8199, %eax
	je	.L90
	.loc 1 159 30 view .LVU302
	cmpl	$8239, %eax
	je	.L90
	cmpl	$8288, %eax
	je	.L90
.LBE257:
.LBE256:
.LBE261:
	.loc 1 562 31 view .LVU303
	movl	$1, %r13d
.LVL119:
.LBB262:
.LBB259:
.LBB258:
	.loc 1 562 31 view .LVU304
	jmp	.L93
.LVL120:
	.p2align 4,,10
	.p2align 3
.L91:
	.loc 1 562 31 view .LVU305
.LBE258:
.LBE259:
.LBE262:
	.loc 1 536 19 is_stmt 1 view .LVU306
	.loc 1 536 24 is_stmt 0 view .LVU307
	addq	$1, (%rsp)
.LVL121:
.L89:
	.loc 1 537 19 is_stmt 1 view .LVU308
	.loc 1 540 19 view .LVU309
	cmpq	%rbp, %r15
	cmovb	%rbp, %r15
.LVL122:
	.loc 1 542 19 view .LVU310
	.loc 1 543 19 view .LVU311
	.loc 1 542 27 is_stmt 0 view .LVU312
	xorl	%ebp, %ebp
.LVL123:
.L90:
	.loc 1 549 19 is_stmt 1 view .LVU313
	.loc 1 552 19 view .LVU314
	.loc 1 552 25 is_stmt 0 view .LVU315
	addq	%r13, %r12
.LVL124:
	.loc 1 553 19 is_stmt 1 view .LVU316
	.loc 1 554 19 view .LVU317
	.loc 1 553 27 is_stmt 0 view .LVU318
	xorl	%r13d, %r13d
.LVL125:
.L93:
	.loc 1 567 17 is_stmt 1 view .LVU319
	.loc 1 567 11 is_stmt 0 view .LVU320
	cmpq	%r14, %rcx
	jne	.L94
	.loc 1 567 11 view .LVU321
	movq	%rbp, %rbx
	movq	%r12, %rbp
.LVL126:
	.loc 1 567 11 view .LVU322
	movq	%r15, %r12
.LVL127:
	.loc 1 567 11 view .LVU323
	jmp	.L60
.LVL128:
	.p2align 4,,10
	.p2align 3
.L87:
	.loc 1 548 19 is_stmt 1 view .LVU324
	.loc 1 548 26 is_stmt 0 view .LVU325
	addq	$1, %rbp
.LVL129:
	.loc 1 548 26 view .LVU326
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L92:
	.loc 1 545 19 is_stmt 1 view .LVU327
	.loc 1 545 27 is_stmt 0 view .LVU328
	andq	$-8, %rbp
.LVL130:
	.loc 1 545 27 view .LVU329
	addq	$8, %rbp
.LVL131:
	.loc 1 546 19 is_stmt 1 view .LVU330
	jmp	.L90
.LVL132:
	.p2align 4,,10
	.p2align 3
.L50:
	.loc 1 546 19 is_stmt 0 view .LVU331
.LBE265:
.LBE271:
.LBB272:
	.loc 1 301 15 is_stmt 1 view .LVU332
	.loc 1 301 18 is_stmt 0 view .LVU333
	cmpq	$-1, %rax
	je	.L149
	.loc 1 307 15 is_stmt 1 view .LVU334
	.loc 1 307 21 is_stmt 0 view .LVU335
	addq	%rax, %rbx
.LVL133:
.L48:
	.loc 1 299 17 is_stmt 1 view .LVU336
	.loc 1 299 32 is_stmt 0 view .LVU337
	movl	$16384, %edx
	movq	%r15, %rsi
	movl	%ebp, %edi
	call	safe_read@PLT
.LVL134:
	.loc 1 299 17 view .LVU338
	testq	%rax, %rax
	jne	.L50
	movq	%rbx, 40(%rsp)
.LBE272:
	.loc 1 225 46 view .LVU339
	xorl	%r12d, %r12d
	movq	%rax, %rbx
.LVL135:
	.loc 1 225 17 view .LVU340
	xorl	%r13d, %r13d
	.loc 1 225 9 view .LVU341
	movq	$0, (%rsp)
	.loc 1 218 8 view .LVU342
	movb	$1, 8(%rsp)
	jmp	.L46
.LVL136:
.L41:
.LBB273:
.LBB208:
.LBI208:
	.loc 5 705 1 is_stmt 1 discriminator 1 view .LVU343
.LBB209:
	.loc 5 707 3 discriminator 1 view .LVU344
	.loc 5 707 33 is_stmt 0 discriminator 1 view .LVU345
	movl	32(%rbx), %eax
	andl	$53248, %eax
.LBE209:
.LBE208:
	.loc 1 267 29 discriminator 1 view .LVU346
	cmpl	$32768, %eax
	jne	.L43
	.loc 1 268 30 view .LVU347
	movq	56(%rbx), %r12
.LVL137:
	.loc 1 268 11 view .LVU348
	testq	%r12, %r12
	js	.L43
.LBB210:
	.loc 1 270 11 is_stmt 1 view .LVU349
	.loc 1 270 18 is_stmt 0 view .LVU350
	movq	%r12, 40(%rsp)
.LVL138:
	.loc 1 271 11 is_stmt 1 view .LVU351
	movq	page_size(%rip), %r13
	.loc 1 271 14 is_stmt 0 view .LVU352
	cmpq	$-1, %rbp
	je	.L150
.LVL139:
	.loc 1 274 11 is_stmt 1 view .LVU353
	.loc 1 274 23 is_stmt 0 view .LVU354
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r13
	.loc 1 274 14 view .LVU355
	testq	%rdx, %rdx
	jne	.L98
	movl	$1, %esi
	xorl	%ebp, %ebp
.LVL140:
.L99:
.LBB211:
	.loc 1 289 15 is_stmt 1 view .LVU356
	.loc 1 289 76 is_stmt 0 view .LVU357
	movabsq	$2305843009213693951, %rdx
	.loc 1 289 51 view .LVU358
	movq	64(%rbx), %rax
	leaq	-1(%rax), %rcx
	.loc 1 289 76 view .LVU359
	addq	$1, %rax
	cmpq	%rdx, %rcx
	movl	$513, %ecx
	cmovbe	%rax, %rcx
	.loc 1 289 48 view .LVU360
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rcx
	.loc 1 289 38 view .LVU361
	subq	%rdx, %r12
.LVL141:
	.loc 1 290 15 is_stmt 1 view .LVU362
	.loc 1 290 18 is_stmt 0 view .LVU363
	cmpq	%rbp, %r12
	jle	.L43
	.loc 1 290 18 discriminator 4 view .LVU364
	testb	%sil, %sil
	je	.L43
	.loc 1 291 27 view .LVU365
	movl	28(%rsp), %edi
	movl	$1, %edx
	movq	%r12, %rsi
	call	lseek@PLT
.LVL142:
	.loc 1 291 19 view .LVU366
	testq	%rax, %rax
	js	.L43
	.loc 1 292 17 is_stmt 1 view .LVU367
	.loc 1 292 32 is_stmt 0 view .LVU368
	subq	%rbp, %r12
.LVL143:
	.loc 1 292 32 view .LVU369
	movq	%r12, 40(%rsp)
.LVL144:
	.loc 1 292 32 view .LVU370
.LBE211:
.LBE210:
	.loc 1 296 7 is_stmt 1 view .LVU371
	jmp	.L42
.LVL145:
	.p2align 4,,10
	.p2align 3
.L64:
	.loc 1 296 7 is_stmt 0 view .LVU372
.LBE273:
.LBB274:
.LBB241:
.LBB231:
	.loc 1 412 19 is_stmt 1 view .LVU373
	.loc 1 414 19 view .LVU374
	.loc 1 414 32 is_stmt 0 view .LVU375
	movq	88(%rsp), %rax
	.loc 1 416 23 view .LVU376
	leaq	88(%rsp), %r13
	movq	%r14, %rdx
	movq	%r15, %rsi
	leaq	84(%rsp), %rdi
	movq	%r13, %rcx
.LVL146:
	.loc 1 414 32 view .LVU377
	movq	%rax, 8(%rsp)
	.loc 1 416 19 is_stmt 1 view .LVU378
	.loc 1 416 23 is_stmt 0 view .LVU379
	call	rpl_mbrtowc@PLT
.LVL147:
	.loc 1 417 19 is_stmt 1 view .LVU380
	.loc 1 417 22 is_stmt 0 view .LVU381
	cmpq	$-2, %rax
	je	.L151
	.loc 1 424 19 is_stmt 1 view .LVU382
	.loc 1 424 22 is_stmt 0 view .LVU383
	cmpq	$-1, %rax
	je	.L152
	.loc 1 434 23 view .LVU384
	movq	%r13, %rdi
	movq	%rax, 8(%rsp)
	.loc 1 434 19 is_stmt 1 view .LVU385
	.loc 1 434 23 is_stmt 0 view .LVU386
	call	mbsinit@PLT
.LVL148:
	.loc 1 436 22 view .LVU387
	movq	8(%rsp), %rdx
	.loc 1 434 22 view .LVU388
	testl	%eax, %eax
	sete	%r13b
.LVL149:
	.loc 1 436 19 is_stmt 1 view .LVU389
	.loc 1 436 22 is_stmt 0 view .LVU390
	testq	%rdx, %rdx
	jne	.L77
	.loc 1 438 23 is_stmt 1 view .LVU391
	.loc 1 438 33 is_stmt 0 view .LVU392
	movl	$0, 84(%rsp)
	.loc 1 439 23 is_stmt 1 view .LVU393
.LVL150:
	.loc 1 443 15 view .LVU394
	xorl	%edi, %edi
	.loc 1 439 25 is_stmt 0 view .LVU395
	movl	$1, %edx
.LVL151:
.L78:
	.loc 1 439 25 view .LVU396
	movq	%rdx, 8(%rsp)
.LVL152:
	.loc 1 466 19 is_stmt 1 discriminator 1 view .LVU397
	.loc 1 466 31 is_stmt 0 discriminator 1 view .LVU398
	movl	%edi, 68(%rsp)
	call	iswprint@PLT
.LVL153:
	.loc 1 466 28 discriminator 1 view .LVU399
	movq	8(%rsp), %rdx
	testl	%eax, %eax
	je	.L79
	.loc 1 470 23 is_stmt 1 view .LVU400
	.loc 1 470 26 is_stmt 0 view .LVU401
	cmpb	$0, print_linelength(%rip)
	movl	68(%rsp), %edi
	jne	.L153
.LVL154:
.L80:
	.loc 1 476 27 view .LVU402
	movl	84(%rsp), %ecx
	movq	%rdx, 8(%rsp)
.LVL155:
	.loc 1 476 23 is_stmt 1 view .LVU403
	.loc 1 476 27 is_stmt 0 view .LVU404
	movl	%ecx, %edi
	movl	%ecx, 68(%rsp)
	call	iswspace@PLT
.LVL156:
	.loc 1 476 26 view .LVU405
	movq	8(%rsp), %rdx
	testl	%eax, %eax
	jne	.L69
.LVL157:
.LBB224:
.LBI224:
	.loc 1 155 1 is_stmt 1 discriminator 1 view .LVU406
.LBB225:
	.loc 1 157 3 discriminator 1 view .LVU407
	.loc 1 157 10 is_stmt 0 discriminator 1 view .LVU408
	movzbl	posixly_correct(%rip), %eax
	.loc 1 158 10 discriminator 1 view .LVU409
	testb	%al, %al
	jne	.L113
	.loc 1 158 10 view .LVU410
	movl	68(%rsp), %ecx
	cmpl	$160, %ecx
	je	.L69
	cmpl	$8199, %ecx
	je	.L69
	.loc 1 159 30 view .LVU411
	cmpl	$8239, %ecx
	je	.L69
	cmpl	$8288, %ecx
	je	.L69
.LBE225:
.LBE224:
	.loc 1 478 31 view .LVU412
	movl	$1, %ebp
.LVL158:
	.loc 1 478 31 view .LVU413
	jmp	.L79
.LVL159:
	.p2align 4,,10
	.p2align 3
.L77:
	.loc 1 443 15 is_stmt 1 view .LVU414
	movl	84(%rsp), %edi
	leal	-9(%rdi), %eax
	cmpl	$23, %eax
	ja	.L78
	leaq	.L100(%rip), %rsi
	movslq	(%rsi,%rax,4), %rax
	addq	%rsi, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L100:
	.long	.L71-.L100
	.long	.L70-.L100
	.long	.L69-.L100
	.long	.L68-.L100
	.long	.L68-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L78-.L100
	.long	.L66-.L100
	.text
.LVL160:
	.p2align 4,,10
	.p2align 3
.L152:
	.loc 1 430 23 view .LVU415
	.loc 1 430 24 is_stmt 0 view .LVU416
	addq	$1, %r15
.LVL161:
	.loc 1 431 23 is_stmt 1 view .LVU417
	.loc 1 431 33 is_stmt 0 view .LVU418
	subq	$1, %r14
.LVL162:
	.loc 1 432 23 is_stmt 1 view .LVU419
	.loc 1 412 28 is_stmt 0 view .LVU420
	movl	$1, %r13d
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L151:
	.loc 1 420 29 view .LVU421
	movq	8(%rsp), %rax
.LVL163:
	.loc 1 420 29 view .LVU422
	movq	%r14, %r13
	.loc 1 420 23 is_stmt 1 view .LVU423
.LVL164:
	.loc 1 420 29 is_stmt 0 view .LVU424
	movq	%rax, 88(%rsp)
	.loc 1 422 23 is_stmt 1 view .LVU425
.LVL165:
	.loc 1 422 23 is_stmt 0 view .LVU426
.LBE231:
	.loc 1 497 11 is_stmt 1 view .LVU427
	.loc 1 497 14 is_stmt 0 view .LVU428
	testq	%r14, %r14
	je	.L142
	.loc 1 499 15 is_stmt 1 view .LVU429
	.loc 1 499 18 is_stmt 0 view .LVU430
	cmpq	$16384, %r14
	jne	.L82
	.loc 1 502 19 is_stmt 1 view .LVU431
	.loc 1 502 20 is_stmt 0 view .LVU432
	addq	$1, %r15
.LVL166:
	.loc 1 503 19 is_stmt 1 view .LVU433
	.loc 1 503 29 is_stmt 0 view .LVU434
	movl	$16383, %r13d
.LVL167:
.L82:
	.loc 1 505 15 is_stmt 1 view .LVU435
.LBB232:
.LBI232:
	.file 7 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 7 38 1 view .LVU436
.LBB233:
	.loc 7 40 3 view .LVU437
	.loc 7 40 10 is_stmt 0 view .LVU438
	movq	48(%rsp), %rdi
	movl	$16385, %ecx
	movq	%r13, %rdx
	movq	%r15, %rsi
	call	__memmove_chk@PLT
.LVL168:
.L142:
	.loc 7 40 10 view .LVU439
.LBE233:
.LBE232:
.LBB235:
	.loc 1 412 28 view .LVU440
	movl	$1, %r14d
.LVL169:
	.loc 1 412 28 view .LVU441
.LBE235:
	.loc 1 507 11 is_stmt 1 view .LVU442
.LBB236:
.LBB234:
	.loc 7 40 10 is_stmt 0 view .LVU443
	jmp	.L61
.LVL170:
.L113:
	.loc 7 40 10 view .LVU444
.LBE234:
.LBE236:
.LBB237:
	.loc 1 478 31 view .LVU445
	movzbl	%al, %ebp
.LVL171:
	.loc 1 478 31 view .LVU446
	jmp	.L79
.LVL172:
.L153:
.LBB226:
	.loc 1 472 27 is_stmt 1 view .LVU447
	.loc 1 472 39 is_stmt 0 view .LVU448
	call	wcwidth@PLT
.LVL173:
	.loc 1 473 27 is_stmt 1 view .LVU449
	.loc 1 474 37 is_stmt 0 view .LVU450
	movq	8(%rsp), %rdx
	movslq	%eax, %rcx
	addq	%r12, %rcx
	testl	%eax, %eax
	cmovg	%rcx, %r12
.LVL174:
	.loc 1 474 37 view .LVU451
	jmp	.L80
.LVL175:
.L116:
	.loc 1 474 37 view .LVU452
.LBE226:
.LBE237:
.LBE241:
.LBE274:
.LBB275:
.LBB266:
	.loc 1 562 31 view .LVU453
	movzbl	%sil, %r13d
.LVL176:
	.loc 1 562 31 view .LVU454
	jmp	.L93
.LVL177:
.L143:
	.loc 1 562 31 view .LVU455
.LBE266:
.LBE275:
	.loc 1 223 40 discriminator 1 view .LVU456
	movl	$5, %edx
.LVL178:
	.loc 1 223 40 discriminator 1 view .LVU457
	leaq	.LC1(%rip), %rsi
.LVL179:
	.loc 1 223 40 discriminator 1 view .LVU458
	xorl	%edi, %edi
.LVL180:
	.loc 1 223 40 discriminator 1 view .LVU459
	call	dcgettext@PLT
.LVL181:
	.loc 1 223 40 discriminator 1 view .LVU460
	movq	%rax, 72(%rsp)
	jmp	.L29
.LVL182:
.L145:
	.loc 1 218 8 view .LVU461
	movb	$1, 8(%rsp)
	movq	%r12, %r15
.LVL183:
.L63:
.LBB276:
	.loc 1 510 7 is_stmt 1 view .LVU462
	movq	32(%rsp), %rax
	.loc 1 512 13 is_stmt 0 view .LVU463
	movq	16(%rsp), %r13
.LVL184:
	.loc 1 512 13 view .LVU464
	movq	%r15, %r12
.LVL185:
	.loc 1 512 13 view .LVU465
	cmpq	%r15, %rax
	cmovnb	%rax, %r12
.LVL186:
	.loc 1 512 7 is_stmt 1 view .LVU466
	.loc 1 512 13 is_stmt 0 view .LVU467
	addq	%rbp, %r13
.LVL187:
	.p2align 4,,10
	.p2align 3
.L46:
	.loc 1 512 13 view .LVU468
.LBE276:
	.loc 1 574 3 is_stmt 1 view .LVU469
	.loc 1 575 11 is_stmt 0 view .LVU470
	movq	40(%rsp), %r15
	movzbl	67(%rsp), %eax
	.loc 1 577 3 view .LVU471
	movq	%r12, %r8
	movq	%r13, %rsi
	.loc 1 575 11 view .LVU472
	cmpb	%al, print_chars(%rip)
	.loc 1 577 3 view .LVU473
	movq	(%rsp), %r14
	.loc 1 575 11 view .LVU474
	cmova	%r15, %rbx
.LVL188:
	.loc 1 577 3 is_stmt 1 view .LVU475
	movq	56(%rsp), %r9
	movq	%r15, %rcx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	call	write_counts
.LVL189:
	.loc 1 578 3 view .LVU476
	.loc 1 578 15 is_stmt 0 view .LVU477
	addq	%r14, total_lines(%rip)
	.loc 1 579 3 is_stmt 1 view .LVU478
	.loc 1 579 15 is_stmt 0 view .LVU479
	addq	%r13, total_words(%rip)
	.loc 1 580 3 is_stmt 1 view .LVU480
	.loc 1 580 15 is_stmt 0 view .LVU481
	addq	%rbx, total_chars(%rip)
	.loc 1 581 3 is_stmt 1 view .LVU482
	.loc 1 581 15 is_stmt 0 view .LVU483
	addq	%r15, total_bytes(%rip)
	.loc 1 582 3 is_stmt 1 view .LVU484
	.loc 1 582 6 is_stmt 0 view .LVU485
	cmpq	%r12, max_line_length(%rip)
	jnb	.L28
	.loc 1 583 5 is_stmt 1 view .LVU486
	.loc 1 583 21 is_stmt 0 view .LVU487
	movq	%r12, max_line_length(%rip)
	.loc 1 585 3 is_stmt 1 view .LVU488
.L28:
	.loc 1 586 1 is_stmt 0 view .LVU489
	movq	16488(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L154
	movzbl	8(%rsp), %eax
	addq	$16504, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
.LVL190:
	.loc 1 586 1 view .LVU490
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL191:
	.loc 1 586 1 view .LVU491
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL192:
	.loc 1 586 1 view .LVU492
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL193:
	.loc 1 586 1 view .LVU493
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL194:
	.loc 1 586 1 view .LVU494
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL195:
.L146:
	.cfi_restore_state
.LBB277:
.LBB242:
	.loc 1 388 15 view .LVU495
	movq	72(%rsp), %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	movq	%r12, %r15
	.loc 1 388 15 is_stmt 1 view .LVU496
	call	quotearg_n_style_colon@PLT
.LVL196:
	.loc 1 388 15 is_stmt 0 view .LVU497
	movq	%rax, %r14
.LVL197:
	.loc 1 388 25 view .LVU498
	call	__errno_location@PLT
.LVL198:
	.loc 1 388 15 view .LVU499
	movq	%r14, %rcx
	leaq	.LC2(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL199:
	.loc 1 389 15 is_stmt 1 view .LVU500
	.loc 1 390 15 view .LVU501
	.loc 1 389 18 is_stmt 0 view .LVU502
	movb	$0, 8(%rsp)
	jmp	.L63
.LVL200:
.L147:
	.loc 1 389 18 view .LVU503
.LBE242:
.LBE277:
	.loc 1 218 8 view .LVU504
	movb	$1, 8(%rsp)
	movq	%rbx, %rax
.LVL201:
	.loc 1 218 8 view .LVU505
	movzbl	%r13b, %ebx
.LVL202:
	.loc 1 218 8 view .LVU506
	movq	%rbp, %r13
.LVL203:
	.loc 1 218 8 view .LVU507
	movq	%rax, %rbp
.LVL204:
.L85:
.LBB278:
	.loc 1 569 7 is_stmt 1 view .LVU508
	cmpq	%rbp, %r12
	cmovb	%rbp, %r12
.LVL205:
	.loc 1 571 7 view .LVU509
	.loc 1 571 13 is_stmt 0 view .LVU510
	addq	%rbx, %r13
.LVL206:
	.loc 1 571 13 view .LVU511
.LBE278:
	.loc 1 225 25 view .LVU512
	xorl	%ebx, %ebx
	jmp	.L46
.LVL207:
.L148:
.LBB279:
.LBB267:
	.loc 1 525 15 view .LVU513
	movq	72(%rsp), %rdx
	movq	%rbx, %rax
.LVL208:
	.loc 1 525 15 view .LVU514
	movl	$3, %esi
	xorl	%edi, %edi
	movzbl	%r13b, %ebx
.LVL209:
	.loc 1 525 15 view .LVU515
	movq	%rbp, %r13
.LVL210:
	.loc 1 525 15 view .LVU516
	movq	%rax, %rbp
.LVL211:
	.loc 1 525 15 is_stmt 1 view .LVU517
	call	quotearg_n_style_colon@PLT
.LVL212:
	.loc 1 525 15 is_stmt 0 view .LVU518
	movq	%rax, %r14
	.loc 1 525 25 view .LVU519
	call	__errno_location@PLT
.LVL213:
	.loc 1 525 15 view .LVU520
	movq	%r14, %rcx
	leaq	.LC2(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL214:
	.loc 1 526 15 is_stmt 1 view .LVU521
	.loc 1 527 15 view .LVU522
	.loc 1 526 18 is_stmt 0 view .LVU523
	movb	$0, 8(%rsp)
	.loc 1 527 15 view .LVU524
	jmp	.L85
.LVL215:
.L144:
	.loc 1 527 15 view .LVU525
.LBE267:
.LBE279:
.LBB280:
	.loc 1 262 9 is_stmt 1 view .LVU526
.LBB212:
.LBI212:
	.file 8 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.loc 8 467 1 view .LVU527
.LBB213:
	.loc 8 469 3 view .LVU528
	.loc 8 469 10 is_stmt 0 view .LVU529
	movl	28(%rsp), %esi
.LBE213:
.LBE212:
	.loc 1 262 27 view .LVU530
	leaq	8(%rbx), %rdx
.LVL216:
.LBB215:
.LBB214:
	.loc 8 469 10 view .LVU531
	movl	$1, %edi
	call	__fxstat@PLT
.LVL217:
	.loc 8 469 10 view .LVU532
.LBE214:
.LBE215:
	.loc 1 262 25 view .LVU533
	movl	%eax, (%rbx)
	jmp	.L37
.LVL218:
.L149:
	.loc 1 303 19 view .LVU534
	movq	72(%rsp), %rdx
	movl	$3, %esi
	xorl	%edi, %edi
.LBE280:
	.loc 1 225 17 view .LVU535
	xorl	%r13d, %r13d
	movq	%rbx, 40(%rsp)
.LBB281:
	.loc 1 303 19 is_stmt 1 view .LVU536
.LBE281:
	.loc 1 225 25 is_stmt 0 view .LVU537
	xorl	%ebx, %ebx
.LVL219:
.LBB282:
	.loc 1 303 19 view .LVU538
	call	quotearg_n_style_colon@PLT
.LVL220:
	.loc 1 303 19 view .LVU539
	movq	%rax, %r12
	.loc 1 303 29 view .LVU540
	call	__errno_location@PLT
.LVL221:
	.loc 1 303 19 view .LVU541
	movq	%r12, %rcx
	leaq	.LC2(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
.LBE282:
	.loc 1 225 46 view .LVU542
	xorl	%r12d, %r12d
.LBB283:
	.loc 1 303 19 view .LVU543
	call	error@PLT
.LVL222:
	.loc 1 304 19 is_stmt 1 view .LVU544
	.loc 1 305 19 view .LVU545
.LBE283:
	.loc 1 225 9 is_stmt 0 view .LVU546
	movq	$0, (%rsp)
.LBB284:
	.loc 1 305 19 view .LVU547
	jmp	.L46
.LVL223:
.L155:
	.loc 1 305 19 view .LVU548
	subq	%rbp, 40(%rsp)
.LVL224:
.L98:
	.loc 1 296 7 is_stmt 1 discriminator 1 view .LVU549
.LBE284:
	.loc 1 225 9 is_stmt 0 discriminator 1 view .LVU550
	movq	$0, (%rsp)
	.loc 1 225 46 discriminator 1 view .LVU551
	xorl	%r12d, %r12d
.LVL225:
	.loc 1 225 25 discriminator 1 view .LVU552
	xorl	%ebx, %ebx
.LVL226:
	.loc 1 225 17 discriminator 1 view .LVU553
	xorl	%r13d, %r13d
	.loc 1 218 8 discriminator 1 view .LVU554
	movb	$1, 8(%rsp)
	jmp	.L46
.LVL227:
.L150:
.LBB285:
.LBB216:
	.loc 1 272 13 is_stmt 1 view .LVU555
	.loc 1 272 27 is_stmt 0 view .LVU556
	movl	28(%rsp), %edi
	movl	$1, %edx
	xorl	%esi, %esi
	call	lseek@PLT
.LVL228:
	.loc 1 274 23 view .LVU557
	xorl	%edx, %edx
	.loc 1 272 27 view .LVU558
	movq	%rax, %rbp
.LVL229:
	.loc 1 274 11 is_stmt 1 view .LVU559
	.loc 1 274 23 is_stmt 0 view .LVU560
	movq	%r12, %rax
.LVL230:
	.loc 1 274 23 view .LVU561
	divq	%r13
	.loc 1 274 14 view .LVU562
	testq	%rdx, %rdx
	je	.L45
	.loc 1 284 15 is_stmt 1 view .LVU563
	.loc 1 284 49 is_stmt 0 view .LVU564
	cmpq	40(%rsp), %rbp
	jbe	.L155
.LBE216:
.LBE285:
	.loc 1 225 9 view .LVU565
	movq	$0, (%rsp)
	.loc 1 225 46 view .LVU566
	xorl	%r12d, %r12d
.LVL231:
	.loc 1 225 25 view .LVU567
	xorl	%ebx, %ebx
.LVL232:
	.loc 1 225 17 view .LVU568
	xorl	%r13d, %r13d
.LBB286:
.LBB217:
	.loc 1 284 49 view .LVU569
	movq	$0, 40(%rsp)
.LVL233:
	.loc 1 284 49 view .LVU570
.LBE217:
.LBE286:
	.loc 1 218 8 view .LVU571
	movb	$1, 8(%rsp)
	jmp	.L46
.LVL234:
.L34:
	.loc 1 245 5 is_stmt 1 view .LVU572
	movl	28(%rsp), %edi
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$2, %ecx
	call	fdadvise@PLT
.LVL235:
	.loc 1 257 3 view .LVU573
	.loc 1 257 6 is_stmt 0 view .LVU574
	cmpb	$1, 67(%rsp)
	je	.L51
	testb	%r12b, %r12b
	je	.L38
.L141:
	.loc 1 257 3 is_stmt 1 view .LVU575
	.loc 1 257 35 is_stmt 0 view .LVU576
	cmpb	$0, print_lines(%rip)
	je	.L40
	.p2align 4,,10
	.p2align 3
.L52:
.LBB287:
.LBB288:
	.loc 1 334 21 view .LVU577
	movq	$0, (%rsp)
	xorl	%r13d, %r13d
	leaq	96(%rsp), %r15
	movabsq	$-8608480567731124087, %r14
	movq	$0, 40(%rsp)
.LVL236:
	.p2align 4,,10
	.p2align 3
.L58:
	.loc 1 334 21 view .LVU578
.LBE288:
	.loc 1 316 13 is_stmt 1 view .LVU579
	.loc 1 316 28 is_stmt 0 view .LVU580
	movl	28(%rsp), %edi
	movl	$16384, %edx
	movq	%r15, %rsi
	call	safe_read@PLT
.LVL237:
	.loc 1 316 13 view .LVU581
	testq	%rax, %rax
	je	.L156
.LBB289:
	.loc 1 318 11 is_stmt 1 view .LVU582
	.loc 1 318 14 is_stmt 0 view .LVU583
	cmpq	$-1, %rax
	je	.L157
	.loc 1 325 11 is_stmt 1 view .LVU584
	.loc 1 327 11 view .LVU585
.LVL238:
	.loc 1 328 11 view .LVU586
	.loc 1 325 17 is_stmt 0 view .LVU587
	addq	%rax, 40(%rsp)
.LVL239:
	.loc 1 328 17 view .LVU588
	leaq	(%r15,%rax), %rbp
.LVL240:
	.loc 1 329 11 is_stmt 1 view .LVU589
	.loc 1 331 11 view .LVU590
	mulq	%r14
.LVL241:
	.loc 1 331 11 is_stmt 0 view .LVU591
	movq	%rdx, %rbx
	shrq	$3, %rbx
	.loc 1 331 14 view .LVU592
	testb	%r13b, %r13b
	jne	.L105
	.loc 1 334 21 is_stmt 1 view .LVU593
	cmpq	%r15, %rbp
	je	.L106
	movq	(%rsp), %rdx
	.loc 1 327 17 is_stmt 0 view .LVU594
	movq	%r15, %rax
.LVL242:
	.p2align 4,,10
	.p2align 3
.L56:
	.loc 1 335 17 is_stmt 1 view .LVU595
	.loc 1 335 28 is_stmt 0 view .LVU596
	addq	$1, %rax
.LVL243:
	.loc 1 335 31 view .LVU597
	xorl	%ecx, %ecx
	cmpb	$10, -1(%rax)
	sete	%cl
	.loc 1 335 23 view .LVU598
	addq	%rcx, %rdx
.LVL244:
	.loc 1 334 21 is_stmt 1 view .LVU599
	cmpq	%rax, %rbp
	jne	.L56
	movq	%rdx, %rax
.LVL245:
	.loc 1 334 21 is_stmt 0 view .LVU600
	subq	(%rsp), %rax
	.loc 1 335 23 view .LVU601
	movq	%rdx, (%rsp)
.LVL246:
	.loc 1 335 23 view .LVU602
	cmpq	%rax, %rbx
	setnb	%r13b
.LVL247:
	.loc 1 335 23 view .LVU603
	jmp	.L58
.LVL248:
	.p2align 4,,10
	.p2align 3
.L105:
	.loc 1 335 23 view .LVU604
	movq	(%rsp), %r12
	.loc 1 327 17 view .LVU605
	movq	%r15, %rdi
	jmp	.L54
.LVL249:
	.p2align 4,,10
	.p2align 3
.L57:
	.loc 1 342 19 is_stmt 1 view .LVU606
	leaq	1(%rax), %rdi
.LVL250:
	.loc 1 343 19 view .LVU607
	addq	$1, %r12
.LVL251:
.L54:
	.loc 1 340 21 view .LVU608
	.loc 1 340 48 is_stmt 0 view .LVU609
	movq	%rbp, %rdx
	.loc 1 340 27 view .LVU610
	movl	$10, %esi
	.loc 1 340 48 view .LVU611
	subq	%rdi, %rdx
	.loc 1 340 27 view .LVU612
	call	memchr@PLT
.LVL252:
	.loc 1 340 21 view .LVU613
	testq	%rax, %rax
	jne	.L57
	movq	%r12, %rax
.LVL253:
	.loc 1 340 21 view .LVU614
	subq	(%rsp), %rax
	movq	%r12, (%rsp)
.LVL254:
	.loc 1 340 21 view .LVU615
	cmpq	%rax, %rbx
	setnb	%r13b
.LVL255:
	.loc 1 340 21 view .LVU616
	jmp	.L58
.LVL256:
.L38:
	.loc 1 340 21 view .LVU617
.LBE289:
.LBE287:
	.loc 1 311 8 is_stmt 1 view .LVU618
	.loc 1 311 11 is_stmt 0 view .LVU619
	cmpb	$0, 67(%rsp)
	je	.L52
	jmp	.L51
.LVL257:
	.p2align 4,,10
	.p2align 3
.L156:
	.loc 1 218 8 view .LVU620
	movb	$1, 8(%rsp)
	movq	%rax, %rbx
	.loc 1 225 46 view .LVU621
	xorl	%r12d, %r12d
	.loc 1 225 17 view .LVU622
	xorl	%r13d, %r13d
.LVL258:
	.loc 1 225 17 view .LVU623
	jmp	.L46
.LVL259:
	.p2align 4,,10
	.p2align 3
.L157:
.LBB293:
.LBB290:
	.loc 1 320 15 is_stmt 1 view .LVU624
	movq	72(%rsp), %rdx
	movl	$3, %esi
	xorl	%edi, %edi
.LBE290:
.LBE293:
	.loc 1 225 25 is_stmt 0 view .LVU625
	xorl	%ebx, %ebx
	.loc 1 225 17 view .LVU626
	xorl	%r13d, %r13d
.LVL260:
.LBB294:
.LBB291:
	.loc 1 320 15 view .LVU627
	call	quotearg_n_style_colon@PLT
.LVL261:
	.loc 1 320 15 view .LVU628
	movq	%rax, %r12
	.loc 1 320 25 view .LVU629
	call	__errno_location@PLT
.LVL262:
	.loc 1 320 15 view .LVU630
	movq	%r12, %rcx
	leaq	.LC2(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
.LBE291:
.LBE294:
	.loc 1 225 46 view .LVU631
	xorl	%r12d, %r12d
.LBB295:
.LBB292:
	.loc 1 320 15 view .LVU632
	call	error@PLT
.LVL263:
	.loc 1 321 15 is_stmt 1 view .LVU633
	.loc 1 322 15 view .LVU634
	jmp	.L46
.LVL264:
	.p2align 4,,10
	.p2align 3
.L106:
	.loc 1 334 21 is_stmt 0 view .LVU635
	movl	$1, %r13d
.LVL265:
	.loc 1 353 11 is_stmt 1 view .LVU636
	jmp	.L58
.LVL266:
.L45:
	.loc 1 353 11 is_stmt 0 view .LVU637
	movq	%rbp, %rsi
	notq	%rsi
	shrq	$63, %rsi
	jmp	.L99
.LVL267:
.L35:
	.loc 1 353 11 view .LVU638
.LBE292:
.LBE295:
	.loc 1 245 5 is_stmt 1 view .LVU639
	movl	28(%rsp), %edi
	movl	$2, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	fdadvise@PLT
.LVL268:
	jmp	.L141
.LVL269:
.L154:
	.loc 1 586 1 is_stmt 0 view .LVU640
	call	__stack_chk_fail@PLT
.LVL270:
	.cfi_endproc
.LFE172:
	.size	wc, .-wc
	.section	.rodata.str1.1
.LC3:
	.string	"wc"
.LC4:
	.string	" invocation"
.LC5:
	.string	""
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC7:
	.string	"Usage: %s [OPTION]... [FILE]...\n  or:  %s [OPTION]... --files0-from=F\n"
	.align 8
.LC8:
	.string	"Print newline, word, and byte counts for each FILE, and a total line if\nmore than one FILE is specified.  A word is a non-zero-length sequence of\ncharacters delimited by white space.\n"
	.align 8
.LC9:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.align 8
.LC10:
	.ascii	"\nThe options below may be used to select whi"
	.string	"ch counts are printed, always in\nthe following order: newline, word, character, byte, maximum line length.\n  -c, --bytes            print the byte counts\n  -m, --chars            print the character counts\n  -l, --lines            print the newline counts\n"
	.align 8
.LC11:
	.ascii	"      --files0-from=F    read input from the"
	.string	" files specified by\n                           NUL-terminated names in file F;\n                           If F is - then read names from standard input\n  -L, --max-line-length  print the maximum display width\n  -w, --words            print the word counts\n"
	.align 8
.LC12:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC13:
	.string	"      --version  output version information and exit\n"
	.section	.rodata.str1.1
.LC14:
	.string	"["
.LC15:
	.string	"test invocation"
.LC16:
	.string	"coreutils"
.LC17:
	.string	"Multi-call invocation"
.LC18:
	.string	"sha224sum"
.LC19:
	.string	"sha2 utilities"
.LC20:
	.string	"sha256sum"
.LC21:
	.string	"sha384sum"
.LC22:
	.string	"sha512sum"
.LC23:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC25:
	.string	"GNU coreutils"
.LC26:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC28:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL271:
.LFB168:
	.loc 1 113 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 113 1 is_stmt 0 view .LVU642
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	.loc 1 115 5 view .LVU643
	movl	$5, %edx
	.loc 1 113 1 view .LVU644
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %ebp
	subq	$136, %rsp
	.cfi_def_cfa_offset 176
	movq	program_name(%rip), %r12
	.loc 1 113 1 view .LVU645
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 114 3 is_stmt 1 view .LVU646
	.loc 1 114 6 is_stmt 0 view .LVU647
	testl	%edi, %edi
	je	.L159
	.loc 1 115 5 is_stmt 1 view .LVU648
	.loc 1 115 5 view .LVU649
	leaq	.LC6(%rip), %rsi
	xorl	%edi, %edi
.LVL272:
	.loc 1 115 5 is_stmt 0 view .LVU650
	call	dcgettext@PLT
.LVL273:
.LBB310:
.LBB311:
	.loc 2 100 10 view .LVU651
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE311:
.LBE310:
	.loc 1 115 5 view .LVU652
	movq	%rax, %rdx
.LVL274:
.LBB313:
.LBI310:
	.loc 2 98 1 is_stmt 1 view .LVU653
.LBB312:
	.loc 2 100 3 view .LVU654
	.loc 2 100 10 is_stmt 0 view .LVU655
	xorl	%eax, %eax
.LVL275:
	.loc 2 100 10 view .LVU656
	call	__fprintf_chk@PLT
.LVL276:
.L160:
	.loc 2 100 10 view .LVU657
.LBE312:
.LBE313:
	.loc 1 150 3 is_stmt 1 view .LVU658
	movl	%ebp, %edi
	call	exit@PLT
.LVL277:
.L159:
	.loc 1 118 7 view .LVU659
	.loc 1 118 15 is_stmt 0 view .LVU660
	leaq	.LC7(%rip), %rsi
	xorl	%edi, %edi
.LVL278:
	.loc 1 118 15 view .LVU661
	call	dcgettext@PLT
.LVL279:
.LBB314:
.LBB315:
	.loc 2 107 10 view .LVU662
	movq	%r12, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE315:
.LBE314:
	.loc 1 118 15 view .LVU663
	movq	%rax, %rsi
.LVL280:
.LBB317:
.LBI314:
	.loc 2 105 1 is_stmt 1 view .LVU664
.LBB316:
	.loc 2 107 3 view .LVU665
	.loc 2 107 10 is_stmt 0 view .LVU666
	xorl	%eax, %eax
.LVL281:
	.loc 2 107 10 view .LVU667
	call	__printf_chk@PLT
.LVL282:
	.loc 2 107 10 view .LVU668
.LBE316:
.LBE317:
	.loc 1 123 7 is_stmt 1 view .LVU669
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC8(%rip), %rsi
	call	dcgettext@PLT
.LVL283:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL284:
	.loc 1 129 7 view .LVU670
.LBB318:
.LBI318:
	.loc 5 581 1 view .LVU671
.LBB319:
	.loc 5 583 3 view .LVU672
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC9(%rip), %rsi
	call	dcgettext@PLT
.LVL285:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL286:
.LBE319:
.LBE318:
	.loc 1 131 7 view .LVU673
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC10(%rip), %rsi
	call	dcgettext@PLT
.LVL287:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL288:
	.loc 1 139 7 view .LVU674
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC11(%rip), %rsi
	call	dcgettext@PLT
.LVL289:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL290:
	.loc 1 146 7 view .LVU675
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC12(%rip), %rsi
	call	dcgettext@PLT
.LVL291:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL292:
	.loc 1 147 7 view .LVU676
	movl	$5, %edx
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	leaq	.LC13(%rip), %rsi
	call	dcgettext@PLT
.LVL293:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL294:
	.loc 1 148 7 view .LVU677
.LBB320:
.LBI320:
	.loc 5 634 1 view .LVU678
.LBB321:
	.loc 5 636 3 view .LVU679
	.loc 5 636 67 is_stmt 0 view .LVU680
	leaq	.LC14(%rip), %rax
	.loc 5 647 25 view .LVU681
	movq	%rsp, %rdx
	.loc 5 636 67 view .LVU682
	leaq	.LC20(%rip), %rcx
	movq	%rax, (%rsp)
	leaq	.LC15(%rip), %rax
	.loc 5 649 33 view .LVU683
	movl	$119, %edi
	movl	$99, %esi
	.loc 5 636 67 view .LVU684
	movq	%rax, 8(%rsp)
	leaq	.LC16(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC17(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC18(%rip), %rax
	movq	%rcx, 48(%rsp)
	leaq	.LC21(%rip), %rcx
	movq	%rax, 32(%rsp)
	leaq	.LC19(%rip), %rax
	movq	%rcx, 64(%rsp)
	leaq	.LC22(%rip), %rcx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 5 646 3 is_stmt 1 view .LVU685
.LVL295:
	.loc 5 647 3 view .LVU686
	.loc 5 649 3 view .LVU687
	.loc 5 649 9 view .LVU688
	.p2align 4,,10
	.p2align 3
.L180:
	.loc 5 650 5 view .LVU689
	.loc 5 649 18 is_stmt 0 view .LVU690
	movq	16(%rdx), %rax
	.loc 5 650 13 view .LVU691
	addq	$16, %rdx
.LVL296:
	.loc 5 649 9 is_stmt 1 view .LVU692
	testq	%rax, %rax
	je	.L161
	.loc 5 649 33 is_stmt 0 view .LVU693
	movzbl	(%rax), %ecx
	cmpl	%ecx, %edi
	jne	.L180
	movzbl	1(%rax), %ecx
	cmpl	%ecx, %esi
	jne	.L180
	.loc 5 649 28 view .LVU694
	cmpb	$0, 2(%rax)
	jne	.L180
.L161:
	.loc 5 652 3 is_stmt 1 view .LVU695
	.loc 5 652 15 is_stmt 0 view .LVU696
	movq	8(%rdx), %r12
	.loc 5 655 11 view .LVU697
	leaq	.LC23(%rip), %rsi
	movl	$5, %edx
.LVL297:
	.loc 5 655 11 view .LVU698
	xorl	%edi, %edi
	.loc 5 652 6 view .LVU699
	testq	%r12, %r12
	je	.L164
	.loc 5 653 5 is_stmt 1 view .LVU700
.LVL298:
	.loc 5 655 3 view .LVU701
	.loc 5 655 11 is_stmt 0 view .LVU702
	call	dcgettext@PLT
.LVL299:
.LBB322:
.LBB323:
	.loc 2 107 10 view .LVU703
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	$1, %edi
.LBE323:
.LBE322:
	.loc 5 655 11 view .LVU704
	movq	%rax, %rsi
.LVL300:
.LBB327:
.LBI322:
	.loc 2 105 1 is_stmt 1 view .LVU705
.LBB324:
	.loc 2 107 3 view .LVU706
	.loc 2 107 10 is_stmt 0 view .LVU707
	xorl	%eax, %eax
.LVL301:
	.loc 2 107 10 view .LVU708
	leaq	.LC3(%rip), %r13
	call	__printf_chk@PLT
.LVL302:
	.loc 2 107 10 view .LVU709
.LBE324:
.LBE327:
	.loc 5 659 3 is_stmt 1 view .LVU710
	.loc 5 659 29 is_stmt 0 view .LVU711
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL303:
	movq	%rax, %rdi
.LVL304:
	.loc 5 660 3 is_stmt 1 view .LVU712
	.loc 5 660 6 is_stmt 0 view .LVU713
	testq	%rax, %rax
	je	.L165
	.loc 5 660 22 view .LVU714
	movl	$3, %edx
	leaq	.LC26(%rip), %rsi
	call	strncmp@PLT
.LVL305:
	.loc 5 660 19 view .LVU715
	testl	%eax, %eax
	jne	.L168
.LVL306:
.L165:
	.loc 5 669 3 is_stmt 1 view .LVU716
	.loc 5 669 11 is_stmt 0 view .LVU717
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC28(%rip), %rsi
	call	dcgettext@PLT
.LVL307:
.LBB328:
.LBB329:
	.loc 2 107 10 view .LVU718
	leaq	.LC3(%rip), %rcx
	movl	$1, %edi
	leaq	.LC24(%rip), %rdx
.LBE329:
.LBE328:
	.loc 5 669 11 view .LVU719
	movq	%rax, %rsi
.LVL308:
.LBB334:
.LBI328:
	.loc 2 105 1 is_stmt 1 view .LVU720
.LBB330:
	.loc 2 107 3 view .LVU721
	.loc 2 107 10 is_stmt 0 view .LVU722
	xorl	%eax, %eax
.LVL309:
	.loc 2 107 10 view .LVU723
	call	__printf_chk@PLT
.LVL310:
	.loc 2 107 10 view .LVU724
.LBE330:
.LBE334:
	.loc 5 671 3 is_stmt 1 view .LVU725
	cmpq	%r13, %r12
	leaq	.LC5(%rip), %rcx
	leaq	.LC4(%rip), %r13
	cmovne	%rcx, %r13
.L166:
	.loc 5 671 11 is_stmt 0 view .LVU726
	xorl	%edi, %edi
	leaq	.LC29(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL311:
.LBB335:
.LBB336:
	.loc 2 107 10 view .LVU727
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE336:
.LBE335:
	.loc 5 671 11 view .LVU728
	movq	%rax, %rsi
.LVL312:
.LBB338:
.LBI335:
	.loc 2 105 1 is_stmt 1 view .LVU729
.LBB337:
	.loc 2 107 3 view .LVU730
	.loc 2 107 10 is_stmt 0 view .LVU731
	xorl	%eax, %eax
.LVL313:
	.loc 2 107 10 view .LVU732
	call	__printf_chk@PLT
.LVL314:
	.loc 2 107 10 view .LVU733
.LBE337:
.LBE338:
	.loc 5 673 1 view .LVU734
	jmp	.L160
.LVL315:
.L164:
	.loc 5 655 3 is_stmt 1 view .LVU735
	.loc 5 655 11 is_stmt 0 view .LVU736
	call	dcgettext@PLT
.LVL316:
.LBB339:
.LBB325:
	.loc 2 107 10 view .LVU737
	leaq	.LC24(%rip), %rcx
	movl	$1, %edi
	leaq	.LC25(%rip), %rdx
.LBE325:
.LBE339:
	.loc 5 655 11 view .LVU738
	movq	%rax, %rsi
.LVL317:
.LBB340:
	.loc 2 105 1 is_stmt 1 view .LVU739
.LBB326:
	.loc 2 107 3 view .LVU740
	.loc 2 107 10 is_stmt 0 view .LVU741
	xorl	%eax, %eax
.LVL318:
	.loc 2 107 10 view .LVU742
	call	__printf_chk@PLT
.LVL319:
	.loc 2 107 10 view .LVU743
.LBE326:
.LBE340:
	.loc 5 659 3 is_stmt 1 view .LVU744
	.loc 5 659 29 is_stmt 0 view .LVU745
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL320:
	movq	%rax, %rdi
.LVL321:
	.loc 5 660 3 is_stmt 1 view .LVU746
	.loc 5 660 6 is_stmt 0 view .LVU747
	testq	%rax, %rax
	je	.L167
	.loc 5 660 22 view .LVU748
	movl	$3, %edx
	leaq	.LC26(%rip), %rsi
	call	strncmp@PLT
.LVL322:
	.loc 5 660 19 view .LVU749
	testl	%eax, %eax
	jne	.L186
.L167:
	.loc 5 669 3 is_stmt 1 view .LVU750
	.loc 5 669 11 is_stmt 0 view .LVU751
	movl	$5, %edx
	leaq	.LC28(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL323:
.LBB341:
.LBB331:
	.loc 2 107 10 view .LVU752
	leaq	.LC3(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	movl	$1, %edi
.LBE331:
.LBE341:
	.loc 5 669 11 view .LVU753
	movq	%rax, %rsi
.LVL324:
.LBB342:
	.loc 2 105 1 is_stmt 1 view .LVU754
.LBB332:
	.loc 2 107 3 view .LVU755
	.loc 2 107 10 is_stmt 0 view .LVU756
	xorl	%eax, %eax
.LVL325:
	.loc 2 107 10 view .LVU757
.LBE332:
.LBE342:
	.loc 5 646 15 view .LVU758
	leaq	.LC3(%rip), %r12
.LBB343:
.LBB333:
	.loc 2 107 10 view .LVU759
	call	__printf_chk@PLT
.LVL326:
	.loc 2 107 10 view .LVU760
.LBE333:
.LBE343:
	.loc 5 671 3 is_stmt 1 view .LVU761
	leaq	.LC4(%rip), %r13
	jmp	.L166
.L186:
	.loc 5 646 15 is_stmt 0 view .LVU762
	leaq	.LC3(%rip), %r13
	movq	%r13, %r12
.LVL327:
.L168:
	.loc 5 666 7 is_stmt 1 view .LVU763
	movq	stdout(%rip), %r14
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	call	dcgettext@PLT
.LVL328:
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	fputs_unlocked@PLT
.LVL329:
	jmp	.L165
.LBE321:
.LBE320:
	.cfi_endproc
.LFE168:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC31:
	.string	"/usr/local/share/locale"
.LC32:
	.string	"POSIXLY_CORRECT"
.LC33:
	.string	"David MacKenzie"
.LC34:
	.string	"Paul Rubin"
.LC35:
	.string	"clLmw"
.LC36:
	.string	"extra operand %s"
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"file operands cannot be combined with --files0-from"
	.section	.rodata.str1.1
.LC38:
	.string	"%s\n"
.LC39:
	.string	"-"
.LC40:
	.string	"r"
.LC41:
	.string	"cannot open %s for reading"
	.section	.rodata.str1.8
	.align 8
.LC43:
	.string	"cannot read file names from %s"
	.section	.rodata.str1.1
.LC44:
	.string	"%s: read error"
.LC45:
	.string	"src/wc.c"
	.section	.rodata.str1.8
	.align 8
.LC46:
	.string	"!\"unexpected error code from argv_iter\""
	.align 8
.LC47:
	.string	"when reading file names from stdin, no file name of %s allowed"
	.section	.rodata.str1.1
.LC48:
	.string	"total"
.LC49:
	.string	"invalid zero-length file name"
.LC50:
	.string	"%s:%lu: %s"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL330:
.LFB176:
	.loc 1 681 1 view -0
	.cfi_startproc
	.loc 1 681 1 is_stmt 0 view .LVU765
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
	leaq	.L195(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx
	subq	$520, %rsp
	.cfi_def_cfa_offset 576
	.loc 1 691 3 view .LVU766
	movq	(%rsi), %rdi
.LVL331:
	.loc 1 681 1 view .LVU767
	movq	%fs:40, %rax
	movq	%rax, 504(%rsp)
	xorl	%eax, %eax
	.loc 1 682 3 is_stmt 1 view .LVU768
	.loc 1 683 3 view .LVU769
	.loc 1 684 3 view .LVU770
	.loc 1 685 3 view .LVU771
	.loc 1 686 3 view .LVU772
.LVL332:
	.loc 1 687 3 view .LVU773
	.loc 1 688 3 view .LVU774
	.loc 1 690 33 view .LVU775
	.loc 1 691 3 view .LVU776
	call	set_program_name@PLT
.LVL333:
	.loc 1 692 3 view .LVU777
	leaq	.LC5(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL334:
	.loc 1 693 3 view .LVU778
	leaq	.LC31(%rip), %rsi
	leaq	.LC16(%rip), %rdi
	call	bindtextdomain@PLT
.LVL335:
	.loc 1 694 3 view .LVU779
	leaq	.LC16(%rip), %rdi
	call	textdomain@PLT
.LVL336:
	.loc 1 696 3 view .LVU780
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL337:
	.loc 1 698 3 view .LVU781
	.loc 1 698 15 is_stmt 0 view .LVU782
	call	getpagesize@PLT
.LVL338:
	.loc 1 701 3 view .LVU783
	movq	stdout(%rip), %rdi
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.loc 1 698 15 view .LVU784
	cltq
	.loc 1 701 3 view .LVU785
	movl	$1, %edx
	.loc 1 698 15 view .LVU786
	movq	%rax, page_size(%rip)
	.loc 1 701 3 is_stmt 1 view .LVU787
	call	setvbuf@PLT
.LVL339:
	.loc 1 703 3 view .LVU788
	.loc 1 703 22 is_stmt 0 view .LVU789
	leaq	.LC32(%rip), %rdi
	call	getenv@PLT
.LVL340:
	.loc 1 705 57 view .LVU790
	movb	$0, print_bytes(%rip)
	.loc 1 705 43 view .LVU791
	movb	$0, print_chars(%rip)
	.loc 1 703 49 view .LVU792
	testq	%rax, %rax
	.loc 1 705 29 view .LVU793
	movb	$0, print_words(%rip)
	.loc 1 705 15 view .LVU794
	movb	$0, print_lines(%rip)
	.loc 1 706 20 view .LVU795
	movb	$0, print_linelength(%rip)
	.loc 1 707 75 view .LVU796
	movq	$0, max_line_length(%rip)
	.loc 1 707 57 view .LVU797
	movq	$0, total_bytes(%rip)
	.loc 1 707 43 view .LVU798
	movq	$0, total_chars(%rip)
	.loc 1 707 29 view .LVU799
	movq	$0, total_words(%rip)
	.loc 1 707 15 view .LVU800
	movq	$0, total_lines(%rip)
	.loc 1 703 19 view .LVU801
	setne	posixly_correct(%rip)
	.loc 1 705 3 is_stmt 1 view .LVU802
	.loc 1 706 3 view .LVU803
	.loc 1 707 3 view .LVU804
	.loc 1 709 3 view .LVU805
	.loc 1 686 9 is_stmt 0 view .LVU806
	xorl	%r12d, %r12d
.LVL341:
	.p2align 4,,10
	.p2align 3
.L188:
	.loc 1 709 9 is_stmt 1 view .LVU807
	.loc 1 709 18 is_stmt 0 view .LVU808
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%rbp, %rsi
	movl	%ebx, %edi
	leaq	.LC35(%rip), %rdx
	call	getopt_long@PLT
.LVL342:
	.loc 1 709 9 view .LVU809
	cmpl	$-1, %eax
	je	.L303
	.loc 1 710 5 is_stmt 1 view .LVU810
	cmpl	$128, %eax
	jg	.L302
	cmpl	$98, %eax
	jle	.L304
	subl	$99, %eax
.LVL343:
	.loc 1 710 5 is_stmt 0 view .LVU811
	cmpl	$29, %eax
	ja	.L302
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L195:
	.long	.L199-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L198-.L195
	.long	.L197-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L196-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L302-.L195
	.long	.L194-.L195
	.section	.text.startup
.L194:
	.loc 1 733 9 is_stmt 1 view .LVU812
	.loc 1 733 20 is_stmt 0 view .LVU813
	movq	optarg(%rip), %r12
.LVL344:
	.loc 1 734 9 is_stmt 1 view .LVU814
	jmp	.L188
.L196:
	.loc 1 725 9 view .LVU815
	.loc 1 725 21 is_stmt 0 view .LVU816
	movb	$1, print_words(%rip)
	.loc 1 726 9 is_stmt 1 view .LVU817
	jmp	.L188
.L197:
	.loc 1 717 9 view .LVU818
	.loc 1 717 21 is_stmt 0 view .LVU819
	movb	$1, print_chars(%rip)
	.loc 1 718 9 is_stmt 1 view .LVU820
	jmp	.L188
.L198:
	.loc 1 721 9 view .LVU821
	.loc 1 721 21 is_stmt 0 view .LVU822
	movb	$1, print_lines(%rip)
	.loc 1 722 9 is_stmt 1 view .LVU823
	jmp	.L188
.L199:
	.loc 1 713 9 view .LVU824
	.loc 1 713 21 is_stmt 0 view .LVU825
	movb	$1, print_bytes(%rip)
	.loc 1 714 9 is_stmt 1 view .LVU826
	jmp	.L188
.LVL345:
	.p2align 4,,10
	.p2align 3
.L304:
	.loc 1 710 5 is_stmt 0 view .LVU827
	cmpl	$-130, %eax
	je	.L191
	cmpl	$76, %eax
	jne	.L305
	.loc 1 729 9 is_stmt 1 view .LVU828
	.loc 1 729 26 is_stmt 0 view .LVU829
	movb	$1, print_linelength(%rip)
	.loc 1 730 9 is_stmt 1 view .LVU830
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L305:
	.loc 1 710 5 is_stmt 0 view .LVU831
	cmpl	$-131, %eax
	je	.L193
.LVL346:
.L302:
.LBB379:
	.loc 1 761 11 is_stmt 1 view .LVU832
	movl	$1, %edi
	call	usage
.LVL347:
	.p2align 4,,10
	.p2align 3
.L193:
	.loc 1 761 11 is_stmt 0 view .LVU833
.LBE379:
	.loc 1 736 7 is_stmt 1 view .LVU834
	.loc 1 736 28 view .LVU835
	.loc 1 738 7 view .LVU836
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 584
	movq	stdout(%rip), %rdi
	xorl	%eax, %eax
.LVL348:
	.loc 1 738 7 is_stmt 0 view .LVU837
	movq	Version(%rip), %rcx
	pushq	$0
	.cfi_def_cfa_offset 592
	leaq	.LC33(%rip), %r9
	leaq	.LC34(%rip), %r8
	leaq	.LC25(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	call	version_etc@PLT
.LVL349:
	.loc 1 738 7 is_stmt 1 view .LVU838
	xorl	%edi, %edi
	call	exit@PLT
.LVL350:
.L303:
	.cfi_restore_state
	.loc 1 744 3 view .LVU839
	.loc 1 744 6 is_stmt 0 view .LVU840
	cmpb	$0, print_lines(%rip)
	jne	.L202
	.loc 1 744 22 discriminator 1 view .LVU841
	cmpb	$0, print_words(%rip)
	je	.L306
.L202:
	.loc 1 748 3 is_stmt 1 view .LVU842
.LVL351:
	.loc 1 749 3 view .LVU843
	.loc 1 750 3 view .LVU844
	movslq	optind(%rip), %rax
.LVL352:
	.loc 1 750 6 is_stmt 0 view .LVU845
	testq	%r12, %r12
	je	.L203
.LBB390:
	.loc 1 752 7 is_stmt 1 view .LVU846
	.loc 1 756 7 view .LVU847
	.loc 1 756 10 is_stmt 0 view .LVU848
	cmpl	%eax, %ebx
	jg	.L307
	.loc 1 764 7 is_stmt 1 view .LVU849
	.loc 1 764 11 is_stmt 0 view .LVU850
	leaq	.LC39(%rip), %rsi
	movq	%r12, %rdi
	call	strcmp@PLT
.LVL353:
	.loc 1 764 10 view .LVU851
	testl	%eax, %eax
	jne	.L205
	.loc 1 765 9 is_stmt 1 view .LVU852
	.loc 1 765 16 is_stmt 0 view .LVU853
	movq	stdin(%rip), %rbp
.LVL354:
.L206:
	.loc 1 776 7 is_stmt 1 view .LVU854
	.loc 1 777 7 view .LVU855
	.loc 1 777 11 is_stmt 0 view .LVU856
	movq	%rbp, %rdi
	call	fileno@PLT
.LVL355:
.LBB380:
.LBB381:
	.loc 8 469 10 view .LVU857
	leaq	352(%rsp), %rdx
	movl	$1, %edi
.LBE381:
.LBE380:
	.loc 1 777 11 view .LVU858
	movl	%eax, %esi
.LVL356:
.LBB383:
.LBI380:
	.loc 8 467 1 is_stmt 1 view .LVU859
.LBB382:
	.loc 8 469 3 view .LVU860
	.loc 8 469 10 is_stmt 0 view .LVU861
	call	__fxstat@PLT
.LVL357:
	.loc 8 469 10 view .LVU862
.LBE382:
.LBE383:
	.loc 1 777 10 view .LVU863
	testl	%eax, %eax
	jne	.L207
	.loc 1 778 14 view .LVU864
	movl	376(%rsp), %eax
	andl	$61440, %eax
	.loc 1 778 11 view .LVU865
	cmpl	$32768, %eax
	je	.L308
.L207:
	.loc 1 792 11 is_stmt 1 view .LVU866
.LVL358:
	.loc 1 793 11 view .LVU867
	.loc 1 794 11 view .LVU868
	.loc 1 794 16 is_stmt 0 view .LVU869
	movq	%rbp, %rdi
	call	argv_iter_init_stream@PLT
.LVL359:
	movq	%rax, %rbp
.LVL360:
	.loc 1 794 16 view .LVU870
.LBE390:
	.loc 1 805 3 is_stmt 1 view .LVU871
	.loc 1 805 6 is_stmt 0 view .LVU872
	testq	%rax, %rax
	je	.L234
	.loc 1 808 3 is_stmt 1 view .LVU873
.LVL361:
.LBB391:
.LBI391:
	.loc 1 625 1 view .LVU874
.LBB392:
	.loc 1 627 3 view .LVU875
.LBB393:
.LBI393:
	.file 9 "./lib/xalloc.h"
	.loc 9 99 1 view .LVU876
.LBB394:
	.loc 9 101 3 view .LVU877
	.loc 9 103 3 view .LVU878
	.loc 9 103 10 is_stmt 0 view .LVU879
	movl	$152, %edi
	call	xmalloc@PLT
.LVL362:
	.loc 9 103 10 view .LVU880
.LBE394:
.LBE393:
.LBE392:
.LBE391:
	.loc 1 748 8 view .LVU881
	movb	$0, 39(%rsp)
.LBB416:
.LBB409:
.LBB400:
.LBB395:
	.loc 9 103 10 view .LVU882
	movq	%rax, 8(%rsp)
.LVL363:
	.loc 9 103 10 view .LVU883
.LBE395:
.LBE400:
	.loc 1 629 3 is_stmt 1 view .LVU884
.L221:
	.loc 1 634 5 view .LVU885
	.loc 1 634 23 is_stmt 0 view .LVU886
	movq	8(%rsp), %rax
	xorl	%ebx, %ebx
.LBE409:
.LBE416:
.LBB417:
.LBB418:
	.loc 1 653 7 view .LVU887
	movl	$1, %ecx
.LBE418:
.LBE417:
.LBB427:
.LBB410:
	.loc 1 634 23 view .LVU888
	movl	$1, (%rax)
	.loc 1 643 3 is_stmt 1 view .LVU889
.LVL364:
	.loc 1 643 3 is_stmt 0 view .LVU890
.LBE410:
.LBE427:
	.loc 1 809 3 is_stmt 1 view .LVU891
.LBB428:
.LBI417:
	.loc 1 651 1 view .LVU892
.LBB423:
	.loc 1 653 3 view .LVU893
	.loc 1 655 3 view .LVU894
.L228:
	.loc 1 675 3 view .LVU895
	.loc 1 675 3 is_stmt 0 view .LVU896
.LBE423:
.LBE428:
	.loc 1 809 16 view .LVU897
	movl	%ecx, number_width(%rip)
	.loc 1 811 3 is_stmt 1 view .LVU898
.LVL365:
	.loc 1 812 3 view .LVU899
.LBB429:
	.loc 1 812 8 view .LVU900
	.loc 1 812 8 is_stmt 0 view .LVU901
.LBE429:
	.loc 1 809 16 view .LVU902
	xorl	%r13d, %r13d
	.loc 1 811 6 view .LVU903
	movl	$1, %r14d
	leaq	60(%rsp), %r15
	jmp	.L253
.LVL366:
.L312:
.LBB460:
.LBB430:
	.loc 1 834 22 discriminator 1 view .LVU904
	cmpb	$0, 1(%r12)
	jne	.L243
	.loc 1 834 52 discriminator 2 view .LVU905
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	call	strcmp@PLT
.LVL367:
	.loc 1 834 49 discriminator 2 view .LVU906
	movq	16(%rsp), %r8
	testl	%eax, %eax
	je	.L309
	.loc 1 844 7 is_stmt 1 view .LVU907
	.loc 1 844 10 is_stmt 0 view .LVU908
	cmpb	$0, (%r8)
	je	.L245
.LVL368:
	.loc 1 867 9 is_stmt 1 view .LVU909
	.loc 1 867 43 is_stmt 0 view .LVU910
	testq	%rbx, %rbx
	jne	.L257
	movq	8(%rsp), %rdx
.LVL369:
.L249:
.LBB431:
.LBB432:
.LBB433:
.LBB434:
.LBB435:
.LBB436:
	.file 10 "/usr/include/x86_64-linux-gnu/bits/fcntl2.h"
	.loc 10 53 14 view .LVU911
	movq	%r8, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rdx, 24(%rsp)
.LVL370:
	.loc 10 53 14 view .LVU912
.LBE436:
.LBE435:
.LBE434:
.LBI433:
	.loc 1 589 1 is_stmt 1 view .LVU913
.LBB443:
	.loc 1 599 7 view .LVU914
.LBB439:
.LBI435:
	.loc 10 41 1 view .LVU915
.LBB437:
	.loc 10 43 3 view .LVU916
	.loc 10 46 3 view .LVU917
	.loc 10 48 7 view .LVU918
	.loc 10 53 7 view .LVU919
	.loc 10 53 14 is_stmt 0 view .LVU920
	movq	%r8, 16(%rsp)
	call	open@PLT
.LVL371:
	.loc 10 53 14 view .LVU921
.LBE437:
.LBE439:
	.loc 1 600 10 view .LVU922
	movq	16(%rsp), %r8
	movq	24(%rsp), %rdx
	cmpl	$-1, %eax
.LBB440:
.LBB438:
	.loc 10 53 14 view .LVU923
	movl	%eax, %edi
.LVL372:
	.loc 10 53 14 view .LVU924
.LBE438:
.LBE440:
	.loc 1 600 7 is_stmt 1 view .LVU925
	.loc 1 600 10 is_stmt 0 view .LVU926
	je	.L300
.LBB441:
	.loc 1 607 11 is_stmt 1 view .LVU927
	.loc 1 607 21 is_stmt 0 view .LVU928
	xorl	%ecx, %ecx
	movq	%r8, %rsi
	movq	%r8, 40(%rsp)
	movl	%eax, 24(%rsp)
.LVL373:
	.loc 1 607 21 view .LVU929
	call	wc
.LVL374:
	.loc 1 608 15 view .LVU930
	movl	24(%rsp), %edi
	.loc 1 607 21 view .LVU931
	movb	%al, 16(%rsp)
.LVL375:
	.loc 1 608 11 is_stmt 1 view .LVU932
	.loc 1 608 15 is_stmt 0 view .LVU933
	call	close@PLT
.LVL376:
	.loc 1 608 14 view .LVU934
	movzbl	16(%rsp), %edx
	movq	40(%rsp), %r8
	testl	%eax, %eax
	jne	.L300
.LVL377:
.L250:
	.loc 1 608 14 view .LVU935
	andl	%edx, %r14d
.LVL378:
.L246:
	.loc 1 608 14 view .LVU936
.LBE441:
.LBE443:
.LBE433:
.LBE432:
.LBE431:
	.loc 1 869 7 is_stmt 1 view .LVU937
	.loc 1 869 10 is_stmt 0 view .LVU938
	testq	%rbx, %rbx
	jne	.L252
	.loc 1 870 9 is_stmt 1 view .LVU939
	.loc 1 870 27 is_stmt 0 view .LVU940
	movq	8(%rsp), %rax
	movl	$1, (%rax)
.L252:
.LBE430:
	.loc 1 812 26 is_stmt 1 view .LVU941
.LVL379:
	.loc 1 812 24 view .LVU942
	addq	$1, %r13
.LVL380:
.L253:
.LBB455:
	.loc 1 814 7 view .LVU943
	.loc 1 815 7 view .LVU944
	.loc 1 816 7 view .LVU945
	.loc 1 816 25 is_stmt 0 view .LVU946
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	argv_iter@PLT
.LVL381:
	movq	%rax, %r8
.LVL382:
	.loc 1 817 7 is_stmt 1 view .LVU947
	.loc 1 817 10 is_stmt 0 view .LVU948
	testq	%rax, %rax
	je	.L310
	.loc 1 834 7 is_stmt 1 view .LVU949
	.loc 1 834 10 is_stmt 0 view .LVU950
	testq	%r12, %r12
	je	.L311
	.loc 1 834 25 discriminator 1 view .LVU951
	cmpb	$45, (%r12)
	je	.L312
.L243:
	.loc 1 844 7 is_stmt 1 view .LVU952
	.loc 1 844 10 is_stmt 0 view .LVU953
	cmpb	$0, (%r8)
	je	.L245
.L241:
.LVL383:
	.loc 1 867 9 is_stmt 1 view .LVU954
	.loc 1 867 43 is_stmt 0 view .LVU955
	xorl	%edx, %edx
	testq	%rbx, %rbx
	je	.L248
.LVL384:
.L257:
	.loc 1 867 43 view .LVU956
	imulq	$152, %r13, %rdx
.L248:
	.loc 1 867 15 discriminator 4 view .LVU957
	addq	8(%rsp), %rdx
.LBB450:
.LBB446:
	.loc 1 591 17 discriminator 4 view .LVU958
	movq	%r8, %rdi
	movq	%r8, 16(%rsp)
	leaq	.LC39(%rip), %rsi
.LBE446:
.LBE450:
	.loc 1 867 15 discriminator 4 view .LVU959
	movq	%rdx, 24(%rsp)
.LVL385:
.LBB451:
.LBI431:
	.loc 1 589 1 is_stmt 1 discriminator 4 view .LVU960
.LBB447:
	.loc 1 591 3 discriminator 4 view .LVU961
	.loc 1 591 17 is_stmt 0 discriminator 4 view .LVU962
	call	strcmp@PLT
.LVL386:
	.loc 1 591 14 discriminator 4 view .LVU963
	movq	16(%rsp), %r8
	movq	24(%rsp), %rdx
	testl	%eax, %eax
	jne	.L249
.LVL387:
	.loc 1 593 7 is_stmt 1 view .LVU964
	.loc 1 595 14 is_stmt 0 view .LVU965
	orq	$-1, %rcx
	movq	%r8, %rsi
	xorl	%edi, %edi
	.loc 1 593 23 view .LVU966
	movb	$1, have_read_stdin(%rip)
	.loc 1 594 7 is_stmt 1 view .LVU967
.LVL388:
	.loc 1 594 7 is_stmt 0 view .LVU968
.LBE447:
.LBE451:
.LBE455:
.LBE460:
	.file 11 "./lib/xbinary-io.h"
	.loc 11 42 3 is_stmt 1 view .LVU969
	.file 12 "./lib/binary-io.h"
	.loc 12 68 3 view .LVU970
	.loc 12 52 3 view .LVU971
.LBB461:
.LBB456:
.LBB452:
.LBB448:
	.loc 1 595 7 view .LVU972
	.loc 1 595 14 is_stmt 0 view .LVU973
	call	wc
.LVL389:
	.loc 1 595 14 view .LVU974
	movl	%eax, %edx
	jmp	.L250
.LVL390:
.L309:
	.loc 1 595 14 view .LVU975
.LBE448:
.LBE452:
	.loc 1 838 11 is_stmt 1 view .LVU976
	movq	%r8, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL391:
	.loc 1 838 24 is_stmt 0 view .LVU977
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC47(%rip), %rsi
	.loc 1 838 11 view .LVU978
	movq	%rax, %r14
.LVL392:
	.loc 1 838 24 view .LVU979
	call	dcgettext@PLT
.LVL393:
	.loc 1 838 11 view .LVU980
	xorl	%esi, %esi
	xorl	%edi, %edi
	movq	%r14, %rcx
	.loc 1 838 24 view .LVU981
	movq	%rax, %rdx
	.loc 1 838 11 view .LVU982
	xorl	%eax, %eax
	call	error@PLT
.LVL394:
	.loc 1 841 11 is_stmt 1 view .LVU983
	.loc 1 844 7 view .LVU984
	.loc 1 844 10 is_stmt 0 view .LVU985
	movq	16(%rsp), %r8
	cmpb	$0, (%r8)
	jne	.L301
.LVL395:
.L245:
	.loc 1 850 11 is_stmt 1 view .LVU986
.LBB453:
	.loc 1 857 15 view .LVU987
	.loc 1 857 47 is_stmt 0 view .LVU988
	movq	%rbp, %rdi
	call	argv_iter_n_args@PLT
.LVL396:
	.loc 1 858 15 view .LVU989
	movl	$5, %edx
	leaq	.LC49(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 857 47 view .LVU990
	movq	%rax, %r14
.LVL397:
	.loc 1 858 15 is_stmt 1 view .LVU991
	call	dcgettext@PLT
.LVL398:
	.loc 1 858 15 is_stmt 0 view .LVU992
	movq	%r12, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	movq	%rax, 16(%rsp)
	call	quotearg_n_style_colon@PLT
.LVL399:
	movq	16(%rsp), %r9
	movq	%r14, %r8
	xorl	%esi, %esi
	movq	%rax, %rcx
	leaq	.LC50(%rip), %rdx
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	error@PLT
.LVL400:
.L301:
	.loc 1 858 15 view .LVU993
.LBE453:
	.loc 1 865 12 view .LVU994
	xorl	%r14d, %r14d
	jmp	.L246
.LVL401:
.L311:
	.loc 1 844 7 is_stmt 1 view .LVU995
	.loc 1 844 10 is_stmt 0 view .LVU996
	cmpb	$0, (%rax)
	jne	.L241
	.loc 1 850 11 is_stmt 1 view .LVU997
	.loc 1 851 13 view .LVU998
	movl	$5, %edx
	leaq	.LC49(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 865 12 is_stmt 0 view .LVU999
	xorl	%r14d, %r14d
.LVL402:
	.loc 1 851 13 view .LVU1000
	call	dcgettext@PLT
.LVL403:
	.loc 1 851 13 view .LVU1001
	leaq	.LC2(%rip), %rdx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	error@PLT
.LVL404:
	jmp	.L246
.LVL405:
.L310:
	.loc 1 819 11 is_stmt 1 view .LVU1002
	movl	60(%rsp), %eax
.LVL406:
	.loc 1 819 11 is_stmt 0 view .LVU1003
	cmpl	$3, %eax
	je	.L234
	cmpl	$4, %eax
	jne	.L313
	.loc 1 824 15 is_stmt 1 view .LVU1004
	movq	%r12, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	.loc 1 826 18 is_stmt 0 view .LVU1005
	xorl	%r14d, %r14d
.LVL407:
	.loc 1 824 15 view .LVU1006
	call	quotearg_n_style_colon@PLT
.LVL408:
	.loc 1 824 32 view .LVU1007
	movl	$5, %edx
	leaq	.LC44(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 824 15 view .LVU1008
	movq	%rax, %r13
.LVL409:
	.loc 1 824 32 view .LVU1009
	call	dcgettext@PLT
.LVL410:
	movq	%rax, %r12
.LVL411:
	.loc 1 824 25 view .LVU1010
	call	__errno_location@PLT
.LVL412:
	.loc 1 824 15 view .LVU1011
	movq	%r13, %rcx
	movq	%r12, %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL413:
	.loc 1 826 15 is_stmt 1 view .LVU1012
	.loc 1 827 15 view .LVU1013
	.loc 1 827 15 is_stmt 0 view .LVU1014
.LBE456:
.LBE461:
	.loc 1 877 3 is_stmt 1 view .LVU1015
.L238:
	.loc 1 880 3 view .LVU1016
	.loc 1 880 6 is_stmt 0 view .LVU1017
	cmpb	$0, 39(%rsp)
	jne	.L314
.L254:
	.loc 1 883 3 is_stmt 1 view .LVU1018
	.loc 1 883 11 is_stmt 0 view .LVU1019
	movq	%rbp, %rdi
	call	argv_iter_n_args@PLT
.LVL414:
	.loc 1 883 6 view .LVU1020
	cmpq	$1, %rax
	jbe	.L255
	.loc 1 884 5 is_stmt 1 view .LVU1021
	.loc 1 885 36 is_stmt 0 view .LVU1022
	movl	$5, %edx
	leaq	.LC48(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL415:
	.loc 1 884 5 view .LVU1023
	movq	max_line_length(%rip), %r8
	movq	total_bytes(%rip), %rcx
	movq	total_chars(%rip), %rdx
	movq	total_words(%rip), %rsi
	.loc 1 885 36 view .LVU1024
	movq	%rax, %r9
	.loc 1 884 5 view .LVU1025
	movq	total_lines(%rip), %rdi
	call	write_counts
.LVL416:
.L255:
	.loc 1 887 3 is_stmt 1 view .LVU1026
	movq	%rbp, %rdi
	call	argv_iter_free@PLT
.LVL417:
	.loc 1 889 3 view .LVU1027
	movq	8(%rsp), %rdi
	call	free@PLT
.LVL418:
	.loc 1 891 3 view .LVU1028
	.loc 1 891 6 is_stmt 0 view .LVU1029
	cmpb	$0, have_read_stdin(%rip)
	jne	.L315
.L256:
	.loc 1 894 3 is_stmt 1 view .LVU1030
	.loc 1 894 28 is_stmt 0 view .LVU1031
	xorl	$1, %r14d
.LVL419:
	.loc 1 895 1 view .LVU1032
	movq	504(%rsp), %rbx
	xorq	%fs:40, %rbx
	.loc 1 894 28 view .LVU1033
	movzbl	%r14b, %eax
	.loc 1 895 1 view .LVU1034
	jne	.L316
	addq	$520, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL420:
	.loc 1 895 1 view .LVU1035
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL421:
.L313:
	.cfi_restore_state
.LBB462:
.LBB457:
	.loc 1 819 11 view .LVU1036
	cmpl	$2, %eax
	je	.L317
	.loc 1 831 15 is_stmt 1 discriminator 1 view .LVU1037
	.loc 1 831 15 discriminator 1 view .LVU1038
	leaq	__PRETTY_FUNCTION__.8386(%rip), %rcx
	movl	$831, %edx
	leaq	.LC45(%rip), %rsi
	leaq	.LC46(%rip), %rdi
	call	__assert_fail@PLT
.LVL422:
.L317:
.LDL1:
	.loc 1 831 15 is_stmt 0 discriminator 1 view .LVU1039
.LBE457:
.LBE462:
	.loc 1 877 3 is_stmt 1 discriminator 1 view .LVU1040
	.loc 1 877 13 is_stmt 0 discriminator 1 view .LVU1041
	testq	%r12, %r12
	sete	%al
	.loc 1 877 6 discriminator 1 view .LVU1042
	andb	%r14b, %al
	movl	%eax, %ebx
	je	.L238
	.loc 1 877 28 discriminator 1 view .LVU1043
	movq	%rbp, %rdi
	movl	%ebx, %r14d
.LVL423:
	.loc 1 877 28 discriminator 1 view .LVU1044
	call	argv_iter_n_args@PLT
.LVL424:
	.loc 1 877 25 discriminator 1 view .LVU1045
	testq	%rax, %rax
	jne	.L238
	.loc 1 878 5 is_stmt 1 view .LVU1046
.LVL425:
.LBB463:
.LBI463:
	.loc 1 589 1 view .LVU1047
.LBB464:
	.loc 1 591 3 view .LVU1048
	.loc 1 593 7 view .LVU1049
	.loc 1 595 14 is_stmt 0 view .LVU1050
	movq	8(%rsp), %rdx
	orq	$-1, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 593 23 view .LVU1051
	movb	$1, have_read_stdin(%rip)
	.loc 1 594 7 is_stmt 1 view .LVU1052
.LVL426:
	.loc 1 594 7 is_stmt 0 view .LVU1053
.LBE464:
.LBE463:
	.loc 11 42 3 is_stmt 1 view .LVU1054
	.loc 12 68 3 view .LVU1055
	.loc 12 52 3 view .LVU1056
.LBB466:
.LBB465:
	.loc 1 595 7 view .LVU1057
	.loc 1 595 14 is_stmt 0 view .LVU1058
	call	wc
.LVL427:
	movl	%eax, %r14d
.LVL428:
	.loc 1 595 14 view .LVU1059
	jmp	.L238
.LVL429:
.L300:
	.loc 1 595 14 view .LVU1060
.LBE465:
.LBE466:
.LBB467:
.LBB458:
.LBB454:
.LBB449:
.LBB445:
.LBB444:
.LBB442:
	.loc 1 610 15 is_stmt 1 view .LVU1061
	movq	%r8, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL430:
	movq	%rax, 16(%rsp)
	.loc 1 610 25 is_stmt 0 view .LVU1062
	call	__errno_location@PLT
.LVL431:
	.loc 1 610 15 view .LVU1063
	movq	16(%rsp), %rcx
	leaq	.LC2(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL432:
	.loc 1 611 15 is_stmt 1 view .LVU1064
	.loc 1 611 22 is_stmt 0 view .LVU1065
	xorl	%edx, %edx
	jmp	.L250
.LVL433:
.L314:
	.loc 1 611 22 view .LVU1066
.LBE442:
.LBE444:
.LBE445:
.LBE449:
.LBE454:
.LBE458:
.LBE467:
	.loc 1 881 5 is_stmt 1 view .LVU1067
	leaq	64(%rsp), %rdi
	call	readtokens0_free@PLT
.LVL434:
	jmp	.L254
.L315:
	.loc 1 891 26 is_stmt 0 discriminator 1 view .LVU1068
	xorl	%edi, %edi
	call	close@PLT
.LVL435:
	.loc 1 891 23 discriminator 1 view .LVU1069
	testl	%eax, %eax
	je	.L256
.LBB468:
	.loc 1 892 5 is_stmt 1 view .LVU1070
	call	__errno_location@PLT
.LVL436:
	leaq	.LC39(%rip), %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL437:
.L306:
	.loc 1 892 5 is_stmt 0 view .LVU1071
.LBE468:
	.loc 1 744 37 discriminator 2 view .LVU1072
	cmpb	$0, print_chars(%rip)
	jne	.L202
	.loc 1 744 52 discriminator 3 view .LVU1073
	cmpb	$0, print_bytes(%rip)
	jne	.L202
	.loc 1 744 7 discriminator 4 view .LVU1074
	cmpb	$0, print_linelength(%rip)
	jne	.L202
	.loc 1 746 5 is_stmt 1 view .LVU1075
	.loc 1 746 45 is_stmt 0 view .LVU1076
	movb	$1, print_bytes(%rip)
	.loc 1 746 31 view .LVU1077
	movb	$1, print_words(%rip)
	.loc 1 746 17 view .LVU1078
	movb	$1, print_lines(%rip)
	jmp	.L202
.LVL438:
.L203:
.LBB469:
	.loc 1 799 7 is_stmt 1 view .LVU1079
	.loc 1 800 7 view .LVU1080
	.loc 1 800 46 is_stmt 0 view .LVU1081
	cmpl	%eax, %ebx
	jle	.L261
	.loc 1 800 37 discriminator 1 view .LVU1082
	movslq	%eax, %rdx
	.loc 1 801 38 discriminator 1 view .LVU1083
	subl	%eax, %ebx
.LVL439:
	.loc 1 800 46 discriminator 1 view .LVU1084
	leaq	0(%rbp,%rdx,8), %rcx
	.loc 1 801 47 discriminator 1 view .LVU1085
	movslq	%ebx, %rbx
	.loc 1 800 46 discriminator 1 view .LVU1086
	movq	%rcx, 16(%rsp)
.LVL440:
	.loc 1 801 7 is_stmt 1 discriminator 1 view .LVU1087
.L216:
	.loc 1 802 7 discriminator 4 view .LVU1088
	.loc 1 802 12 is_stmt 0 discriminator 4 view .LVU1089
	movq	16(%rsp), %rdi
	call	argv_iter_init_argv@PLT
.LVL441:
	movq	%rax, %rbp
.LVL442:
	.loc 1 802 12 discriminator 4 view .LVU1090
.LBE469:
	.loc 1 805 3 is_stmt 1 discriminator 4 view .LVU1091
	.loc 1 805 6 is_stmt 0 discriminator 4 view .LVU1092
	testq	%rax, %rax
	je	.L234
	.loc 1 808 3 is_stmt 1 view .LVU1093
.LVL443:
.LBB470:
	.loc 1 625 1 view .LVU1094
.LBB411:
	.loc 1 627 3 view .LVU1095
.LBB401:
	.loc 9 99 1 view .LVU1096
.LBB396:
	.loc 9 101 3 view .LVU1097
	.loc 9 103 3 view .LVU1098
	.loc 9 103 10 is_stmt 0 view .LVU1099
	imulq	$152, %rbx, %rdi
	call	xmalloc@PLT
.LVL444:
	.loc 9 103 10 view .LVU1100
.LBE396:
.LBE401:
.LBE411:
.LBE470:
	.loc 1 748 8 view .LVU1101
	movb	$0, 39(%rsp)
.LBB471:
.LBB412:
.LBB402:
.LBB397:
	.loc 9 103 10 view .LVU1102
	movq	%rax, 8(%rsp)
.LVL445:
	.loc 9 103 10 view .LVU1103
.LBE397:
.LBE402:
	.loc 1 629 3 is_stmt 1 view .LVU1104
.L258:
	.loc 1 630 7 is_stmt 0 view .LVU1105
	cmpq	$1, %rbx
	je	.L318
.L222:
	.loc 1 630 7 view .LVU1106
	movq	8(%rsp), %rax
.LBE412:
.LBE471:
	.loc 1 748 8 view .LVU1107
	xorl	%r13d, %r13d
	leaq	8(%rax), %r15
.LVL446:
.LBB472:
.LBB413:
.LBB403:
	.loc 1 637 26 is_stmt 1 view .LVU1108
	jmp	.L227
.LVL447:
.L224:
.LBB404:
.LBI404:
	.loc 8 467 1 view .LVU1109
.LBB405:
	.loc 8 469 3 view .LVU1110
	.loc 8 469 10 is_stmt 0 view .LVU1111
	movq	%r15, %rdx
	xorl	%esi, %esi
	movl	$1, %edi
	call	__fxstat@PLT
.LVL448:
.L226:
	.loc 8 469 10 view .LVU1112
.LBE405:
.LBE404:
	.loc 1 637 39 view .LVU1113
	addq	$1, %r13
.LVL449:
	.loc 1 638 27 view .LVU1114
	movl	%eax, -8(%r15)
	.loc 1 637 38 is_stmt 1 view .LVU1115
.LVL450:
	.loc 1 637 38 is_stmt 0 view .LVU1116
	addq	$152, %r15
	.loc 1 637 26 is_stmt 1 view .LVU1117
	.loc 1 637 7 is_stmt 0 view .LVU1118
	cmpq	%rbx, %r13
	je	.L319
.LVL451:
.L227:
	.loc 1 638 9 is_stmt 1 view .LVU1119
	.loc 1 638 36 is_stmt 0 view .LVU1120
	movq	16(%rsp), %rax
	movq	(%rax,%r13,8), %r14
	.loc 1 640 30 view .LVU1121
	testq	%r14, %r14
	je	.L224
	.loc 1 638 43 view .LVU1122
	leaq	.LC39(%rip), %rsi
	movq	%r14, %rdi
	call	strcmp@PLT
.LVL452:
	.loc 1 638 40 view .LVU1123
	testl	%eax, %eax
	je	.L224
.LVL453:
.LBB406:
.LBI406:
	.loc 8 453 1 is_stmt 1 view .LVU1124
.LBB407:
	.loc 8 455 3 view .LVU1125
	.loc 8 455 10 is_stmt 0 view .LVU1126
	movq	%r15, %rdx
	movq	%r14, %rsi
	movl	$1, %edi
	call	__xstat@PLT
.LVL454:
	.loc 8 455 10 view .LVU1127
	jmp	.L226
.L319:
.LVL455:
	.loc 8 455 10 view .LVU1128
.LBE407:
.LBE406:
.LBE403:
.LBE413:
.LBE472:
.LBB473:
.LBB424:
	.loc 1 655 18 view .LVU1129
	movq	8(%rsp), %rdx
	.loc 1 653 7 view .LVU1130
	movl	$1, %ecx
	.loc 1 655 18 view .LVU1131
	cmpl	$0, (%rdx)
	jg	.L228
.LVL456:
.LBB419:
.LBB420:
	.loc 1 660 26 is_stmt 1 view .LVU1132
.LBE420:
	.loc 1 657 11 is_stmt 0 view .LVU1133
	movl	$1, %edi
	.loc 1 658 17 view .LVU1134
	xorl	%eax, %eax
.LBB421:
	.loc 1 660 19 view .LVU1135
	xorl	%ecx, %ecx
	jmp	.L230
.LVL457:
.L263:
	.loc 1 666 29 view .LVU1136
	movl	$7, %edi
.LVL458:
.L229:
	.loc 1 660 38 is_stmt 1 view .LVU1137
	.loc 1 660 39 is_stmt 0 view .LVU1138
	addq	$1, %rcx
.LVL459:
	.loc 1 660 39 view .LVU1139
	addq	$152, %rdx
	.loc 1 660 26 is_stmt 1 view .LVU1140
	.loc 1 660 7 is_stmt 0 view .LVU1141
	cmpq	%rbx, %rcx
	je	.L320
.LVL460:
.L230:
	.loc 1 661 9 is_stmt 1 view .LVU1142
	.loc 1 661 12 is_stmt 0 view .LVU1143
	cmpl	$0, (%rdx)
	jne	.L229
	.loc 1 663 13 is_stmt 1 view .LVU1144
	.loc 1 663 17 is_stmt 0 view .LVU1145
	movl	32(%rdx), %esi
	andl	$61440, %esi
	.loc 1 663 16 view .LVU1146
	cmpl	$32768, %esi
	jne	.L263
	.loc 1 664 15 is_stmt 1 view .LVU1147
.LVL461:
	.loc 1 664 29 is_stmt 0 view .LVU1148
	addq	56(%rdx), %rax
.LVL462:
	.loc 1 664 29 view .LVU1149
	jmp	.L229
.LVL463:
.L205:
	.loc 1 664 29 view .LVU1150
.LBE421:
.LBE419:
.LBE424:
.LBE473:
.LBB474:
	.loc 1 768 11 is_stmt 1 view .LVU1151
	.loc 1 768 20 is_stmt 0 view .LVU1152
	leaq	.LC40(%rip), %rsi
	movq	%r12, %rdi
	call	fopen@PLT
.LVL464:
	movq	%rax, %rbp
.LVL465:
	.loc 1 769 11 is_stmt 1 view .LVU1153
	.loc 1 769 14 is_stmt 0 view .LVU1154
	testq	%rax, %rax
	jne	.L206
.LBB384:
	.loc 1 770 13 is_stmt 1 view .LVU1155
	movq	%r12, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL466:
	.loc 1 770 13 is_stmt 0 view .LVU1156
	movl	$5, %edx
	leaq	.LC41(%rip), %rsi
	xorl	%edi, %edi
	movq	%rax, %r13
	call	dcgettext@PLT
.LVL467:
	movq	%rax, %r12
.LVL468:
	.loc 1 770 13 view .LVU1157
	call	__errno_location@PLT
.LVL469:
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL470:
.L320:
	.loc 1 770 13 view .LVU1158
.LBE384:
.LBE474:
.LBB475:
.LBB425:
	.loc 1 653 7 view .LVU1159
	movl	$1, %ecx
.LVL471:
.LBB422:
	.loc 1 669 49 view .LVU1160
	movl	$10, %esi
	jmp	.L231
.LVL472:
.L232:
	.loc 1 670 9 is_stmt 1 view .LVU1161
	.loc 1 669 49 is_stmt 0 view .LVU1162
	xorl	%edx, %edx
	.loc 1 670 14 view .LVU1163
	addl	$1, %ecx
.LVL473:
	.loc 1 669 35 is_stmt 1 view .LVU1164
	.loc 1 669 49 is_stmt 0 view .LVU1165
	divq	%rsi
.LVL474:
.L231:
	.loc 1 669 14 is_stmt 1 view .LVU1166
	.loc 1 669 7 is_stmt 0 view .LVU1167
	cmpq	$9, %rax
	ja	.L232
	.loc 1 671 7 is_stmt 1 view .LVU1168
	cmpl	%edi, %ecx
	cmovl	%edi, %ecx
.LVL475:
	.loc 1 671 7 is_stmt 0 view .LVU1169
	jmp	.L228
.LVL476:
.L318:
	.loc 1 671 7 view .LVU1170
.LBE422:
.LBE425:
.LBE475:
.LBB476:
.LBB414:
	.loc 1 631 28 view .LVU1171
	movzbl	print_words(%rip), %eax
	movzbl	print_lines(%rip), %ecx
	addl	%eax, %ecx
	.loc 1 631 42 view .LVU1172
	movzbl	print_chars(%rip), %eax
	addl	%eax, %ecx
	.loc 1 632 16 view .LVU1173
	movzbl	print_bytes(%rip), %eax
	addl	%eax, %ecx
	.loc 1 632 30 view .LVU1174
	movzbl	print_linelength(%rip), %eax
	addl	%eax, %ecx
	.loc 1 631 11 view .LVU1175
	cmpl	$1, %ecx
	jne	.L222
	.loc 1 634 5 is_stmt 1 view .LVU1176
	.loc 1 634 23 is_stmt 0 view .LVU1177
	movq	8(%rsp), %rax
	movl	$1, (%rax)
	.loc 1 643 3 is_stmt 1 view .LVU1178
.LVL477:
	.loc 1 643 3 is_stmt 0 view .LVU1179
.LBE414:
.LBE476:
	.loc 1 809 3 is_stmt 1 view .LVU1180
.LBB477:
	.loc 1 651 1 view .LVU1181
.LBB426:
	.loc 1 653 3 view .LVU1182
	.loc 1 655 3 view .LVU1183
	.loc 1 655 3 is_stmt 0 view .LVU1184
	jmp	.L228
.LVL478:
.L261:
	.loc 1 655 3 view .LVU1185
.LBE426:
.LBE477:
.LBB478:
	.loc 1 800 46 view .LVU1186
	leaq	stdin_only.8376(%rip), %rax
	.loc 1 801 47 view .LVU1187
	movl	$1, %ebx
.LVL479:
	.loc 1 800 46 view .LVU1188
	movq	%rax, 16(%rsp)
	jmp	.L216
.LVL480:
.L308:
	.loc 1 800 46 view .LVU1189
.LBE478:
.LBB479:
	.loc 1 779 25 view .LVU1190
	pxor	%xmm2, %xmm2
	cvtsi2sdq	400(%rsp), %xmm2
	movsd	%xmm2, 8(%rsp)
	.loc 1 779 28 view .LVU1191
	call	physmem_available@PLT
.LVL481:
	movsd	.LC42(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC30(%rip), %xmm0
	comisd	%xmm0, %xmm1
	jbe	.L321
.L208:
	.loc 1 779 11 discriminator 4 view .LVU1192
	comisd	8(%rsp), %xmm0
	jb	.L207
	.loc 1 781 11 is_stmt 1 view .LVU1193
.LVL482:
	.loc 1 782 11 view .LVU1194
	leaq	64(%rsp), %r13
	movq	%r13, %rdi
	call	readtokens0_init@PLT
.LVL483:
	.loc 1 783 11 view .LVU1195
	.loc 1 783 17 is_stmt 0 view .LVU1196
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	readtokens0@PLT
.LVL484:
	movb	%al, 39(%rsp)
	.loc 1 783 14 view .LVU1197
	testb	%al, %al
	je	.L211
	.loc 1 783 47 discriminator 1 view .LVU1198
	movq	%rbp, %rdi
	call	rpl_fclose@PLT
.LVL485:
	.loc 1 783 44 discriminator 1 view .LVU1199
	testl	%eax, %eax
	jne	.L211
	.loc 1 786 11 is_stmt 1 view .LVU1200
	.loc 1 786 17 is_stmt 0 view .LVU1201
	movq	72(%rsp), %rax
	.loc 1 787 18 view .LVU1202
	movq	64(%rsp), %rbx
.LVL486:
	.loc 1 788 16 view .LVU1203
	movq	%rax, %rdi
	.loc 1 786 17 view .LVU1204
	movq	%rax, 16(%rsp)
.LVL487:
	.loc 1 787 11 is_stmt 1 view .LVU1205
	.loc 1 788 11 view .LVU1206
	.loc 1 788 16 is_stmt 0 view .LVU1207
	call	argv_iter_init_argv@PLT
.LVL488:
	.loc 1 788 16 view .LVU1208
	movq	%rax, %rbp
.LVL489:
	.loc 1 788 16 view .LVU1209
.LBE479:
	.loc 1 805 3 is_stmt 1 view .LVU1210
	.loc 1 805 6 is_stmt 0 view .LVU1211
	testq	%rax, %rax
	je	.L234
	.loc 1 808 3 is_stmt 1 view .LVU1212
.LVL490:
.LBB480:
	.loc 1 625 1 view .LVU1213
.LBB415:
	.loc 1 627 3 view .LVU1214
	testq	%rbx, %rbx
	movl	$1, %edi
.LBB408:
.LBB398:
	.loc 9 101 7 is_stmt 0 view .LVU1215
	movl	$152, %edx
	cmovne	%rbx, %rdi
.LVL491:
	.loc 9 101 7 view .LVU1216
.LBE398:
	.loc 9 99 1 is_stmt 1 view .LVU1217
.LBB399:
	.loc 9 101 3 view .LVU1218
	.loc 9 101 7 is_stmt 0 view .LVU1219
	movq	%rdx, %rax
.LVL492:
	.loc 9 101 7 view .LVU1220
	mulq	%rdi
	seto	%dl
	movzbl	%dl, %edx
	testq	%rax, %rax
	js	.L234
	.loc 9 101 6 view .LVU1221
	testq	%rdx, %rdx
	jne	.L234
.LVL493:
	.loc 9 103 3 is_stmt 1 view .LVU1222
	.loc 9 103 10 is_stmt 0 view .LVU1223
	movq	%rax, %rdi
	call	xmalloc@PLT
.LVL494:
	movq	%rax, 8(%rsp)
.LVL495:
	.loc 9 103 10 view .LVU1224
.LBE399:
.LBE408:
	.loc 1 629 3 is_stmt 1 view .LVU1225
	.loc 1 629 6 is_stmt 0 view .LVU1226
	testq	%rbx, %rbx
	jne	.L258
	jmp	.L221
.LVL496:
.L321:
	.loc 1 629 6 view .LVU1227
.LBE415:
.LBE480:
.LBB481:
	.loc 1 779 28 discriminator 2 view .LVU1228
	call	physmem_available@PLT
.LVL497:
	mulsd	.LC42(%rip), %xmm0
	jmp	.L208
.LVL498:
.L191:
	.loc 1 779 28 discriminator 2 view .LVU1229
.LBE481:
	.loc 1 736 7 is_stmt 1 view .LVU1230
	xorl	%edi, %edi
	call	usage
.LVL499:
.L307:
.LBB482:
	.loc 1 758 11 view .LVU1231
	movq	0(%rbp,%rax,8), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL500:
	.loc 1 758 24 is_stmt 0 view .LVU1232
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC36(%rip), %rsi
	.loc 1 758 11 view .LVU1233
	movq	%rax, %r12
.LVL501:
	.loc 1 758 24 view .LVU1234
	call	dcgettext@PLT
.LVL502:
	.loc 1 758 11 view .LVU1235
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 758 24 view .LVU1236
	movq	%rax, %rdx
	.loc 1 758 11 view .LVU1237
	xorl	%eax, %eax
	call	error@PLT
.LVL503:
	.loc 1 759 11 is_stmt 1 view .LVU1238
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC37(%rip), %rsi
	call	dcgettext@PLT
.LVL504:
.LBB385:
.LBB386:
	.loc 2 100 10 is_stmt 0 view .LVU1239
	movq	stderr(%rip), %rdi
	movl	$1, %esi
	leaq	.LC38(%rip), %rdx
.LBE386:
.LBE385:
	.loc 1 759 11 view .LVU1240
	movq	%rax, %rcx
.LVL505:
.LBB388:
.LBI385:
	.loc 2 98 1 is_stmt 1 view .LVU1241
.LBB387:
	.loc 2 100 3 view .LVU1242
	.loc 2 100 10 is_stmt 0 view .LVU1243
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.LVL506:
	.loc 2 100 10 view .LVU1244
	jmp	.L302
.LVL507:
.L211:
	.loc 2 100 10 view .LVU1245
.LBE387:
.LBE388:
.LBB389:
	.loc 1 784 13 is_stmt 1 view .LVU1246
	movq	%r12, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL508:
	movl	$5, %edx
	leaq	.LC43(%rip), %rsi
	xorl	%edi, %edi
	movq	%rax, %r12
.LVL509:
	.loc 1 784 13 is_stmt 0 view .LVU1247
	call	dcgettext@PLT
.LVL510:
	movq	%r12, %rcx
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL511:
.L316:
	.loc 1 784 13 view .LVU1248
.LBE389:
.LBE482:
	.loc 1 895 1 view .LVU1249
	call	__stack_chk_fail@PLT
.LVL512:
.L234:
.LBB483:
.LBB459:
	.loc 1 829 15 is_stmt 1 view .LVU1250
	call	xalloc_die@PLT
.LVL513:
.LBE459:
.LBE483:
	.cfi_endproc
.LFE176:
	.size	main, .-main
	.section	.rodata
	.type	format_sp_int.8232, @object
	.size	format_sp_int.8232, 5
format_sp_int.8232:
	.string	" %*s"
	.type	__PRETTY_FUNCTION__.8386, @object
	.size	__PRETTY_FUNCTION__.8386, 5
__PRETTY_FUNCTION__.8386:
	.string	"main"
	.local	stdin_only.8376
	.comm	stdin_only.8376,8,8
	.section	.rodata.str1.1
.LC51:
	.string	"bytes"
.LC52:
	.string	"chars"
.LC53:
	.string	"lines"
.LC54:
	.string	"words"
.LC55:
	.string	"files0-from"
.LC56:
	.string	"max-line-length"
.LC57:
	.string	"help"
.LC58:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 288
longopts:
	.quad	.LC51
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC52
	.long	0
	.zero	4
	.quad	0
	.long	109
	.zero	4
	.quad	.LC53
	.long	0
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC54
	.long	0
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC55
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC56
	.long	0
	.zero	4
	.quad	0
	.long	76
	.zero	4
	.quad	.LC57
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC58
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
	.local	posixly_correct
	.comm	posixly_correct,1,1
	.local	page_size
	.comm	page_size,8,8
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.local	number_width
	.comm	number_width,4,4
	.local	print_linelength
	.comm	print_linelength,1,1
	.local	print_bytes
	.comm	print_bytes,1,1
	.local	print_chars
	.comm	print_chars,1,1
	.local	print_words
	.comm	print_words,1,1
	.local	print_lines
	.comm	print_lines,1,1
	.local	max_line_length
	.comm	max_line_length,8,8
	.local	total_bytes
	.comm	total_bytes,8,8
	.local	total_chars
	.comm	total_chars,8,8
	.local	total_words
	.comm	total_words,8,8
	.local	total_lines
	.comm	total_lines,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC30:
	.long	0
	.long	1097072640
	.align 8
.LC42:
	.long	0
	.long	1071644672
	.text
.Letext0:
	.file 13 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 18 "/usr/include/stdio.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 22 "./lib/sys/select.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 24 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 25 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
	.file 26 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 27 "/usr/include/time.h"
	.file 28 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 29 "/usr/include/signal.h"
	.file 30 "/usr/include/unistd.h"
	.file 31 "/usr/include/errno.h"
	.file 32 "src/version.h"
	.file 33 "./lib/exitfail.h"
	.file 34 "/usr/include/stdint.h"
	.file 35 "./lib/timespec.h"
	.file 36 "/usr/include/ctype.h"
	.file 37 "./lib/xalloc-oversized.h"
	.file 38 "./lib/version-etc.h"
	.file 39 "./lib/progname.h"
	.file 40 "./lib/quotearg.h"
	.file 41 "./lib/argv-iter.h"
	.file 42 "./lib/error.h"
	.file 43 "./lib/fadvise.h"
	.file 44 "./lib/obstack.h"
	.file 45 "./lib/readtokens0.h"
	.file 46 "/usr/include/libintl.h"
	.file 47 "/usr/include/string.h"
	.file 48 "./lib/physmem.h"
	.file 49 "./lib/stdio.h"
	.file 50 "/usr/include/assert.h"
	.file 51 "/usr/include/locale.h"
	.file 52 "/usr/include/stdlib.h"
	.file 53 "./lib/safe-read.h"
	.file 54 "./lib/wchar.h"
	.file 55 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
	.file 56 "./lib/inttostr.h"
	.file 57 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3671
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF354
	.byte	0xc
	.long	.LASF355
	.long	.LASF356
	.long	.Ldebug_ranges0+0xcf0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF7
	.byte	0xd
	.byte	0xd1
	.byte	0x17
	.long	0x29
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.long	0x3c
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
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
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF8
	.byte	0xe
	.byte	0x49
	.byte	0x1b
	.long	0x29
	.uleb128 0x3
	.long	.LASF9
	.byte	0xe
	.byte	0x91
	.byte	0x19
	.long	0x29
	.uleb128 0x3
	.long	.LASF10
	.byte	0xe
	.byte	0x92
	.byte	0x19
	.long	0x3c
	.uleb128 0x3
	.long	.LASF11
	.byte	0xe
	.byte	0x93
	.byte	0x19
	.long	0x3c
	.uleb128 0x3
	.long	.LASF12
	.byte	0xe
	.byte	0x94
	.byte	0x19
	.long	0x29
	.uleb128 0x3
	.long	.LASF13
	.byte	0xe
	.byte	0x96
	.byte	0x1a
	.long	0x3c
	.uleb128 0x3
	.long	.LASF14
	.byte	0xe
	.byte	0x97
	.byte	0x1b
	.long	0x29
	.uleb128 0x3
	.long	.LASF15
	.byte	0xe
	.byte	0x98
	.byte	0x19
	.long	0x72
	.uleb128 0x3
	.long	.LASF16
	.byte	0xe
	.byte	0x99
	.byte	0x1b
	.long	0x72
	.uleb128 0x3
	.long	.LASF17
	.byte	0xe
	.byte	0xa0
	.byte	0x1a
	.long	0x72
	.uleb128 0x3
	.long	.LASF18
	.byte	0xe
	.byte	0xae
	.byte	0x1d
	.long	0x72
	.uleb128 0x3
	.long	.LASF19
	.byte	0xe
	.byte	0xb3
	.byte	0x1c
	.long	0x72
	.uleb128 0x3
	.long	.LASF20
	.byte	0xe
	.byte	0xc4
	.byte	0x21
	.long	0x72
	.uleb128 0x8
	.byte	0x8
	.long	0x120
	.uleb128 0x4
	.long	0x115
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x4
	.long	0x120
	.uleb128 0x9
	.byte	0x4
	.byte	0xf
	.byte	0x10
	.byte	0x3
	.long	0x14e
	.uleb128 0xa
	.long	.LASF22
	.byte	0xf
	.byte	0x12
	.byte	0x13
	.long	0x3c
	.uleb128 0xa
	.long	.LASF23
	.byte	0xf
	.byte	0x13
	.byte	0xa
	.long	0x14e
	.byte	0
	.uleb128 0xb
	.long	0x120
	.long	0x15e
	.uleb128 0xc
	.long	0x29
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0xf
	.byte	0xd
	.byte	0x9
	.long	0x182
	.uleb128 0xe
	.long	.LASF24
	.byte	0xf
	.byte	0xf
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0xe
	.long	.LASF25
	.byte	0xf
	.byte	0x14
	.byte	0x5
	.long	0x12c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF26
	.byte	0xf
	.byte	0x15
	.byte	0x3
	.long	0x15e
	.uleb128 0xf
	.long	.LASF73
	.byte	0xd8
	.byte	0x10
	.byte	0x31
	.byte	0x8
	.long	0x315
	.uleb128 0xe
	.long	.LASF27
	.byte	0x10
	.byte	0x33
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0xe
	.long	.LASF28
	.byte	0x10
	.byte	0x36
	.byte	0x9
	.long	0x115
	.byte	0x8
	.uleb128 0xe
	.long	.LASF29
	.byte	0x10
	.byte	0x37
	.byte	0x9
	.long	0x115
	.byte	0x10
	.uleb128 0xe
	.long	.LASF30
	.byte	0x10
	.byte	0x38
	.byte	0x9
	.long	0x115
	.byte	0x18
	.uleb128 0xe
	.long	.LASF31
	.byte	0x10
	.byte	0x39
	.byte	0x9
	.long	0x115
	.byte	0x20
	.uleb128 0xe
	.long	.LASF32
	.byte	0x10
	.byte	0x3a
	.byte	0x9
	.long	0x115
	.byte	0x28
	.uleb128 0xe
	.long	.LASF33
	.byte	0x10
	.byte	0x3b
	.byte	0x9
	.long	0x115
	.byte	0x30
	.uleb128 0xe
	.long	.LASF34
	.byte	0x10
	.byte	0x3c
	.byte	0x9
	.long	0x115
	.byte	0x38
	.uleb128 0xe
	.long	.LASF35
	.byte	0x10
	.byte	0x3d
	.byte	0x9
	.long	0x115
	.byte	0x40
	.uleb128 0xe
	.long	.LASF36
	.byte	0x10
	.byte	0x40
	.byte	0x9
	.long	0x115
	.byte	0x48
	.uleb128 0xe
	.long	.LASF37
	.byte	0x10
	.byte	0x41
	.byte	0x9
	.long	0x115
	.byte	0x50
	.uleb128 0xe
	.long	.LASF38
	.byte	0x10
	.byte	0x42
	.byte	0x9
	.long	0x115
	.byte	0x58
	.uleb128 0xe
	.long	.LASF39
	.byte	0x10
	.byte	0x44
	.byte	0x16
	.long	0x32e
	.byte	0x60
	.uleb128 0xe
	.long	.LASF40
	.byte	0x10
	.byte	0x46
	.byte	0x14
	.long	0x334
	.byte	0x68
	.uleb128 0xe
	.long	.LASF41
	.byte	0x10
	.byte	0x48
	.byte	0x7
	.long	0x66
	.byte	0x70
	.uleb128 0xe
	.long	.LASF42
	.byte	0x10
	.byte	0x49
	.byte	0x7
	.long	0x66
	.byte	0x74
	.uleb128 0xe
	.long	.LASF43
	.byte	0x10
	.byte	0x4a
	.byte	0xb
	.long	0xcd
	.byte	0x78
	.uleb128 0xe
	.long	.LASF44
	.byte	0x10
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0xe
	.long	.LASF45
	.byte	0x10
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0xe
	.long	.LASF46
	.byte	0x10
	.byte	0x4f
	.byte	0x8
	.long	0x33a
	.byte	0x83
	.uleb128 0xe
	.long	.LASF47
	.byte	0x10
	.byte	0x51
	.byte	0xf
	.long	0x34a
	.byte	0x88
	.uleb128 0xe
	.long	.LASF48
	.byte	0x10
	.byte	0x59
	.byte	0xd
	.long	0xd9
	.byte	0x90
	.uleb128 0xe
	.long	.LASF49
	.byte	0x10
	.byte	0x5b
	.byte	0x17
	.long	0x355
	.byte	0x98
	.uleb128 0xe
	.long	.LASF50
	.byte	0x10
	.byte	0x5c
	.byte	0x19
	.long	0x360
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x10
	.byte	0x5d
	.byte	0x14
	.long	0x334
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF52
	.byte	0x10
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF53
	.byte	0x10
	.byte	0x5f
	.byte	0xa
	.long	0x30
	.byte	0xb8
	.uleb128 0xe
	.long	.LASF54
	.byte	0x10
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF55
	.byte	0x10
	.byte	0x62
	.byte	0x8
	.long	0x366
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF56
	.byte	0x11
	.byte	0x7
	.byte	0x19
	.long	0x18e
	.uleb128 0x10
	.long	.LASF357
	.byte	0x10
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF57
	.uleb128 0x8
	.byte	0x8
	.long	0x329
	.uleb128 0x8
	.byte	0x8
	.long	0x18e
	.uleb128 0xb
	.long	0x120
	.long	0x34a
	.uleb128 0xc
	.long	0x29
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x321
	.uleb128 0x11
	.long	.LASF58
	.uleb128 0x8
	.byte	0x8
	.long	0x350
	.uleb128 0x11
	.long	.LASF59
	.uleb128 0x8
	.byte	0x8
	.long	0x35b
	.uleb128 0xb
	.long	0x120
	.long	0x376
	.uleb128 0xc
	.long	0x29
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x127
	.uleb128 0x4
	.long	0x376
	.uleb128 0x12
	.long	0x376
	.uleb128 0x3
	.long	.LASF60
	.byte	0x12
	.byte	0x3f
	.byte	0x11
	.long	0xcd
	.uleb128 0x13
	.long	.LASF61
	.byte	0x12
	.byte	0x89
	.byte	0xe
	.long	0x39e
	.uleb128 0x8
	.byte	0x8
	.long	0x315
	.uleb128 0x12
	.long	0x39e
	.uleb128 0x13
	.long	.LASF62
	.byte	0x12
	.byte	0x8a
	.byte	0xe
	.long	0x39e
	.uleb128 0x13
	.long	.LASF63
	.byte	0x12
	.byte	0x8b
	.byte	0xe
	.long	0x39e
	.uleb128 0x13
	.long	.LASF64
	.byte	0x13
	.byte	0x1a
	.byte	0xc
	.long	0x66
	.uleb128 0xb
	.long	0x37c
	.long	0x3d8
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.long	0x3cd
	.uleb128 0x13
	.long	.LASF65
	.byte	0x13
	.byte	0x1b
	.byte	0x1a
	.long	0x3d8
	.uleb128 0x13
	.long	.LASF66
	.byte	0x13
	.byte	0x1e
	.byte	0xc
	.long	0x66
	.uleb128 0x13
	.long	.LASF67
	.byte	0x13
	.byte	0x1f
	.byte	0x1a
	.long	0x3d8
	.uleb128 0x3
	.long	.LASF68
	.byte	0xd
	.byte	0x8f
	.byte	0x1a
	.long	0x72
	.uleb128 0x15
	.long	.LASF69
	.byte	0xd
	.value	0x141
	.byte	0x18
	.long	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF70
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF71
	.uleb128 0x3
	.long	.LASF72
	.byte	0x14
	.byte	0x7
	.byte	0x12
	.long	0xe5
	.uleb128 0xf
	.long	.LASF74
	.byte	0x10
	.byte	0x15
	.byte	0xa
	.byte	0x8
	.long	0x45c
	.uleb128 0xe
	.long	.LASF75
	.byte	0x15
	.byte	0xc
	.byte	0xc
	.long	0xe5
	.byte	0
	.uleb128 0xe
	.long	.LASF76
	.byte	0x15
	.byte	0x10
	.byte	0x15
	.long	0x109
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.long	.LASF77
	.byte	0x16
	.value	0x30c
	.byte	0x1
	.long	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF78
	.uleb128 0x13
	.long	.LASF79
	.byte	0x17
	.byte	0x24
	.byte	0xe
	.long	0x115
	.uleb128 0x13
	.long	.LASF80
	.byte	0x17
	.byte	0x32
	.byte	0xc
	.long	0x66
	.uleb128 0x13
	.long	.LASF81
	.byte	0x17
	.byte	0x37
	.byte	0xc
	.long	0x66
	.uleb128 0x13
	.long	.LASF82
	.byte	0x17
	.byte	0x3b
	.byte	0xc
	.long	0x66
	.uleb128 0xf
	.long	.LASF83
	.byte	0x20
	.byte	0x18
	.byte	0x32
	.byte	0x8
	.long	0x4e2
	.uleb128 0xe
	.long	.LASF84
	.byte	0x18
	.byte	0x34
	.byte	0xf
	.long	0x376
	.byte	0
	.uleb128 0xe
	.long	.LASF85
	.byte	0x18
	.byte	0x37
	.byte	0x7
	.long	0x66
	.byte	0x8
	.uleb128 0xe
	.long	.LASF86
	.byte	0x18
	.byte	0x38
	.byte	0x8
	.long	0x4e7
	.byte	0x10
	.uleb128 0x17
	.string	"val"
	.byte	0x18
	.byte	0x39
	.byte	0x7
	.long	0x66
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	0x4a0
	.uleb128 0x8
	.byte	0x8
	.long	0x66
	.uleb128 0x3
	.long	.LASF87
	.byte	0x19
	.byte	0x14
	.byte	0x17
	.long	0x3c
	.uleb128 0x3
	.long	.LASF88
	.byte	0x1a
	.byte	0x6
	.byte	0x15
	.long	0x182
	.uleb128 0xb
	.long	0x115
	.long	0x515
	.uleb128 0xc
	.long	0x29
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	.LASF89
	.byte	0x1b
	.byte	0x9f
	.byte	0xe
	.long	0x505
	.uleb128 0x13
	.long	.LASF90
	.byte	0x1b
	.byte	0xa0
	.byte	0xc
	.long	0x66
	.uleb128 0x13
	.long	.LASF91
	.byte	0x1b
	.byte	0xa1
	.byte	0x11
	.long	0x72
	.uleb128 0x13
	.long	.LASF92
	.byte	0x1b
	.byte	0xa6
	.byte	0xe
	.long	0x505
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1b
	.byte	0xae
	.byte	0xc
	.long	0x66
	.uleb128 0x13
	.long	.LASF94
	.byte	0x1b
	.byte	0xaf
	.byte	0x11
	.long	0x72
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1b
	.value	0x112
	.byte	0xc
	.long	0x66
	.uleb128 0xf
	.long	.LASF96
	.byte	0x90
	.byte	0x1c
	.byte	0x2e
	.byte	0x8
	.long	0x63b
	.uleb128 0xe
	.long	.LASF97
	.byte	0x1c
	.byte	0x30
	.byte	0xd
	.long	0x85
	.byte	0
	.uleb128 0xe
	.long	.LASF98
	.byte	0x1c
	.byte	0x35
	.byte	0xd
	.long	0xa9
	.byte	0x8
	.uleb128 0xe
	.long	.LASF99
	.byte	0x1c
	.byte	0x3d
	.byte	0xf
	.long	0xc1
	.byte	0x10
	.uleb128 0xe
	.long	.LASF100
	.byte	0x1c
	.byte	0x3e
	.byte	0xe
	.long	0xb5
	.byte	0x18
	.uleb128 0xe
	.long	.LASF101
	.byte	0x1c
	.byte	0x40
	.byte	0xd
	.long	0x91
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF102
	.byte	0x1c
	.byte	0x41
	.byte	0xd
	.long	0x9d
	.byte	0x20
	.uleb128 0xe
	.long	.LASF103
	.byte	0x1c
	.byte	0x43
	.byte	0x9
	.long	0x66
	.byte	0x24
	.uleb128 0xe
	.long	.LASF104
	.byte	0x1c
	.byte	0x45
	.byte	0xd
	.long	0x85
	.byte	0x28
	.uleb128 0xe
	.long	.LASF105
	.byte	0x1c
	.byte	0x4a
	.byte	0xd
	.long	0xcd
	.byte	0x30
	.uleb128 0xe
	.long	.LASF106
	.byte	0x1c
	.byte	0x4e
	.byte	0x11
	.long	0xf1
	.byte	0x38
	.uleb128 0xe
	.long	.LASF107
	.byte	0x1c
	.byte	0x50
	.byte	0x10
	.long	0xfd
	.byte	0x40
	.uleb128 0xe
	.long	.LASF108
	.byte	0x1c
	.byte	0x5b
	.byte	0x15
	.long	0x434
	.byte	0x48
	.uleb128 0xe
	.long	.LASF109
	.byte	0x1c
	.byte	0x5c
	.byte	0x15
	.long	0x434
	.byte	0x58
	.uleb128 0xe
	.long	.LASF110
	.byte	0x1c
	.byte	0x5d
	.byte	0x15
	.long	0x434
	.byte	0x68
	.uleb128 0xe
	.long	.LASF111
	.byte	0x1c
	.byte	0x6a
	.byte	0x17
	.long	0x640
	.byte	0x78
	.byte	0
	.uleb128 0x4
	.long	0x56a
	.uleb128 0xb
	.long	0x109
	.long	0x650
	.uleb128 0xc
	.long	0x29
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.uleb128 0x7
	.long	0x650
	.uleb128 0x8
	.byte	0x8
	.long	0x650
	.uleb128 0xb
	.long	0x37c
	.long	0x66c
	.uleb128 0xc
	.long	0x29
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.long	0x65c
	.uleb128 0x16
	.long	.LASF112
	.byte	0x1d
	.value	0x11e
	.byte	0x1a
	.long	0x66c
	.uleb128 0x16
	.long	.LASF113
	.byte	0x1d
	.value	0x11f
	.byte	0x1a
	.long	0x66c
	.uleb128 0x16
	.long	.LASF114
	.byte	0x1e
	.value	0x21f
	.byte	0xf
	.long	0x698
	.uleb128 0x8
	.byte	0x8
	.long	0x115
	.uleb128 0x16
	.long	.LASF115
	.byte	0x1e
	.value	0x221
	.byte	0xf
	.long	0x698
	.uleb128 0x13
	.long	.LASF116
	.byte	0x1f
	.byte	0x2d
	.byte	0xe
	.long	0x115
	.uleb128 0x13
	.long	.LASF117
	.byte	0x1f
	.byte	0x2e
	.byte	0xe
	.long	0x115
	.uleb128 0x8
	.byte	0x8
	.long	0x6c9
	.uleb128 0x19
	.uleb128 0x13
	.long	.LASF118
	.byte	0x20
	.byte	0x1
	.byte	0x14
	.long	0x376
	.uleb128 0x13
	.long	.LASF119
	.byte	0x21
	.byte	0x12
	.byte	0x15
	.long	0x6d
	.uleb128 0x3
	.long	.LASF120
	.byte	0x22
	.byte	0x66
	.byte	0x16
	.long	0x79
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x23
	.byte	0x29
	.byte	0x6
	.long	0x706
	.uleb128 0x1b
	.long	.LASF121
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x23
	.byte	0x2a
	.byte	0x6
	.long	0x71b
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x9
	.byte	0
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x24
	.byte	0x2f
	.byte	0x1
	.long	0x77a
	.uleb128 0x1d
	.long	.LASF123
	.value	0x100
	.uleb128 0x1d
	.long	.LASF124
	.value	0x200
	.uleb128 0x1d
	.long	.LASF125
	.value	0x400
	.uleb128 0x1d
	.long	.LASF126
	.value	0x800
	.uleb128 0x1d
	.long	.LASF127
	.value	0x1000
	.uleb128 0x1d
	.long	.LASF128
	.value	0x2000
	.uleb128 0x1d
	.long	.LASF129
	.value	0x4000
	.uleb128 0x1d
	.long	.LASF130
	.value	0x8000
	.uleb128 0x1c
	.long	.LASF131
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF133
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF135
	.byte	0x25
	.byte	0x22
	.byte	0x13
	.long	0x401
	.uleb128 0x1e
	.byte	0x5
	.byte	0x4
	.long	0x66
	.byte	0x5
	.value	0x147
	.byte	0x1
	.long	0x7a4
	.uleb128 0x1f
	.long	.LASF136
	.sleb128 -130
	.uleb128 0x1f
	.long	.LASF137
	.sleb128 -131
	.byte	0
	.uleb128 0xb
	.long	0x127
	.long	0x7af
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.long	0x7a4
	.uleb128 0x13
	.long	.LASF138
	.byte	0x26
	.byte	0x19
	.byte	0x13
	.long	0x7af
	.uleb128 0x13
	.long	.LASF139
	.byte	0x27
	.byte	0x20
	.byte	0x14
	.long	0x376
	.uleb128 0x20
	.long	.LASF153
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x28
	.byte	0x20
	.byte	0x6
	.long	0x821
	.uleb128 0x1c
	.long	.LASF140
	.byte	0
	.uleb128 0x1c
	.long	.LASF141
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF142
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF143
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF146
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x7
	.uleb128 0x1c
	.long	.LASF148
	.byte	0x8
	.uleb128 0x1c
	.long	.LASF149
	.byte	0x9
	.uleb128 0x1c
	.long	.LASF150
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x7cc
	.uleb128 0x16
	.long	.LASF151
	.byte	0x28
	.value	0x10b
	.byte	0x1a
	.long	0x3d8
	.uleb128 0xb
	.long	0x821
	.long	0x83e
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.long	0x833
	.uleb128 0x16
	.long	.LASF152
	.byte	0x28
	.value	0x10c
	.byte	0x21
	.long	0x83e
	.uleb128 0x20
	.long	.LASF154
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x29
	.byte	0x19
	.byte	0x6
	.long	0x87b
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF157
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF158
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.long	.LASF159
	.byte	0x2a
	.byte	0x32
	.byte	0xf
	.long	0x656
	.uleb128 0x13
	.long	.LASF160
	.byte	0x2a
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x13
	.long	.LASF161
	.byte	0x2a
	.byte	0x39
	.byte	0xc
	.long	0x66
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x2b
	.byte	0x2d
	.byte	0xe
	.long	0x8d2
	.uleb128 0x1c
	.long	.LASF162
	.byte	0
	.uleb128 0x1c
	.long	.LASF163
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF164
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF166
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF167
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF168
	.uleb128 0xb
	.long	0x43
	.long	0x8e4
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.long	0x8d9
	.uleb128 0x16
	.long	.LASF169
	.byte	0x4
	.value	0x139
	.byte	0x1b
	.long	0x8e4
	.uleb128 0xf
	.long	.LASF170
	.byte	0x10
	.byte	0x2c
	.byte	0xa7
	.byte	0x8
	.long	0x92b
	.uleb128 0xe
	.long	.LASF171
	.byte	0x2c
	.byte	0xa9
	.byte	0x9
	.long	0x115
	.byte	0
	.uleb128 0xe
	.long	.LASF172
	.byte	0x2c
	.byte	0xaa
	.byte	0x1a
	.long	0x92b
	.byte	0x8
	.uleb128 0xe
	.long	.LASF173
	.byte	0x2c
	.byte	0xab
	.byte	0x8
	.long	0x931
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x8f6
	.uleb128 0xb
	.long	0x120
	.long	0x940
	.uleb128 0x21
	.long	0x29
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x2c
	.byte	0xb5
	.byte	0x3
	.long	0x95e
	.uleb128 0x22
	.string	"i"
	.byte	0x2c
	.byte	0xb7
	.byte	0x15
	.long	0x30
	.uleb128 0x22
	.string	"p"
	.byte	0x2c
	.byte	0xb8
	.byte	0xb
	.long	0x48
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x2c
	.byte	0xbd
	.byte	0x3
	.long	0x980
	.uleb128 0xa
	.long	.LASF174
	.byte	0x2c
	.byte	0xbf
	.byte	0xd
	.long	0x98f
	.uleb128 0xa
	.long	.LASF175
	.byte	0x2c
	.byte	0xc0
	.byte	0xd
	.long	0x9a9
	.byte	0
	.uleb128 0x23
	.long	0x48
	.long	0x98f
	.uleb128 0x24
	.long	0x30
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x980
	.uleb128 0x23
	.long	0x48
	.long	0x9a9
	.uleb128 0x24
	.long	0x48
	.uleb128 0x24
	.long	0x30
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x995
	.uleb128 0x9
	.byte	0x8
	.byte	0x2c
	.byte	0xc2
	.byte	0x3
	.long	0x9d1
	.uleb128 0xa
	.long	.LASF174
	.byte	0x2c
	.byte	0xc4
	.byte	0xc
	.long	0x9dc
	.uleb128 0xa
	.long	.LASF175
	.byte	0x2c
	.byte	0xc5
	.byte	0xc
	.long	0x9f2
	.byte	0
	.uleb128 0x25
	.long	0x9dc
	.uleb128 0x24
	.long	0x48
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9d1
	.uleb128 0x25
	.long	0x9f2
	.uleb128 0x24
	.long	0x48
	.uleb128 0x24
	.long	0x48
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9e2
	.uleb128 0xf
	.long	.LASF176
	.byte	0x58
	.byte	0x2c
	.byte	0xae
	.byte	0x8
	.long	0xab8
	.uleb128 0xe
	.long	.LASF177
	.byte	0x2c
	.byte	0xb0
	.byte	0x11
	.long	0x30
	.byte	0
	.uleb128 0xe
	.long	.LASF178
	.byte	0x2c
	.byte	0xb1
	.byte	0x1a
	.long	0x92b
	.byte	0x8
	.uleb128 0xe
	.long	.LASF179
	.byte	0x2c
	.byte	0xb2
	.byte	0x9
	.long	0x115
	.byte	0x10
	.uleb128 0xe
	.long	.LASF180
	.byte	0x2c
	.byte	0xb3
	.byte	0x9
	.long	0x115
	.byte	0x18
	.uleb128 0xe
	.long	.LASF181
	.byte	0x2c
	.byte	0xb4
	.byte	0x9
	.long	0x115
	.byte	0x20
	.uleb128 0xe
	.long	.LASF182
	.byte	0x2c
	.byte	0xb9
	.byte	0x5
	.long	0x940
	.byte	0x28
	.uleb128 0xe
	.long	.LASF183
	.byte	0x2c
	.byte	0xba
	.byte	0x13
	.long	0x30
	.byte	0x30
	.uleb128 0xe
	.long	.LASF184
	.byte	0x2c
	.byte	0xc1
	.byte	0x5
	.long	0x95e
	.byte	0x38
	.uleb128 0xe
	.long	.LASF185
	.byte	0x2c
	.byte	0xc6
	.byte	0x5
	.long	0x9af
	.byte	0x40
	.uleb128 0xe
	.long	.LASF186
	.byte	0x2c
	.byte	0xc8
	.byte	0x9
	.long	0x48
	.byte	0x48
	.uleb128 0x26
	.long	.LASF187
	.byte	0x2c
	.byte	0xc9
	.byte	0xc
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x26
	.long	.LASF188
	.byte	0x2c
	.byte	0xca
	.byte	0xc
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x26
	.long	.LASF189
	.byte	0x2c
	.byte	0xce
	.byte	0xc
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.long	.LASF190
	.byte	0x2c
	.byte	0xe6
	.byte	0x26
	.long	0xac4
	.uleb128 0x8
	.byte	0x8
	.long	0x651
	.uleb128 0x13
	.long	.LASF191
	.byte	0x2c
	.byte	0xe9
	.byte	0xc
	.long	0x66
	.uleb128 0x27
	.long	.LASF192
	.value	0x120
	.byte	0x2d
	.byte	0x1c
	.byte	0x8
	.long	0xb33
	.uleb128 0xe
	.long	.LASF193
	.byte	0x2d
	.byte	0x1e
	.byte	0xa
	.long	0x30
	.byte	0
	.uleb128 0x17
	.string	"tok"
	.byte	0x2d
	.byte	0x1f
	.byte	0xa
	.long	0x698
	.byte	0x8
	.uleb128 0xe
	.long	.LASF194
	.byte	0x2d
	.byte	0x20
	.byte	0xb
	.long	0xb33
	.byte	0x10
	.uleb128 0xe
	.long	.LASF195
	.byte	0x2d
	.byte	0x21
	.byte	0x12
	.long	0x9f8
	.byte	0x18
	.uleb128 0xe
	.long	.LASF196
	.byte	0x2d
	.byte	0x22
	.byte	0x12
	.long	0x9f8
	.byte	0x70
	.uleb128 0xe
	.long	.LASF197
	.byte	0x2d
	.byte	0x23
	.byte	0x12
	.long	0x9f8
	.byte	0xc8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x30
	.uleb128 0x28
	.long	.LASF198
	.byte	0x1
	.byte	0x3a
	.byte	0x12
	.long	0x6e2
	.uleb128 0x9
	.byte	0x3
	.quad	total_lines
	.uleb128 0x28
	.long	.LASF199
	.byte	0x1
	.byte	0x3b
	.byte	0x12
	.long	0x6e2
	.uleb128 0x9
	.byte	0x3
	.quad	total_words
	.uleb128 0x28
	.long	.LASF200
	.byte	0x1
	.byte	0x3c
	.byte	0x12
	.long	0x6e2
	.uleb128 0x9
	.byte	0x3
	.quad	total_chars
	.uleb128 0x28
	.long	.LASF201
	.byte	0x1
	.byte	0x3d
	.byte	0x12
	.long	0x6e2
	.uleb128 0x9
	.byte	0x3
	.quad	total_bytes
	.uleb128 0x28
	.long	.LASF202
	.byte	0x1
	.byte	0x3e
	.byte	0x12
	.long	0x6e2
	.uleb128 0x9
	.byte	0x3
	.quad	max_line_length
	.uleb128 0x28
	.long	.LASF203
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.long	0x8d2
	.uleb128 0x9
	.byte	0x3
	.quad	print_lines
	.uleb128 0x28
	.long	.LASF204
	.byte	0x1
	.byte	0x41
	.byte	0x1a
	.long	0x8d2
	.uleb128 0x9
	.byte	0x3
	.quad	print_words
	.uleb128 0x28
	.long	.LASF205
	.byte	0x1
	.byte	0x41
	.byte	0x27
	.long	0x8d2
	.uleb128 0x9
	.byte	0x3
	.quad	print_chars
	.uleb128 0x28
	.long	.LASF206
	.byte	0x1
	.byte	0x41
	.byte	0x34
	.long	0x8d2
	.uleb128 0x9
	.byte	0x3
	.quad	print_bytes
	.uleb128 0x28
	.long	.LASF207
	.byte	0x1
	.byte	0x42
	.byte	0xd
	.long	0x8d2
	.uleb128 0x9
	.byte	0x3
	.quad	print_linelength
	.uleb128 0x28
	.long	.LASF208
	.byte	0x1
	.byte	0x45
	.byte	0xc
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	number_width
	.uleb128 0x28
	.long	.LASF209
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.long	0x8d2
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x28
	.long	.LASF210
	.byte	0x1
	.byte	0x4b
	.byte	0xf
	.long	0x30
	.uleb128 0x9
	.byte	0x3
	.quad	page_size
	.uleb128 0x28
	.long	.LASF211
	.byte	0x1
	.byte	0x4e
	.byte	0xd
	.long	0x8d2
	.uleb128 0x9
	.byte	0x3
	.quad	posixly_correct
	.uleb128 0xf
	.long	.LASF212
	.byte	0x98
	.byte	0x1
	.byte	0x51
	.byte	0x8
	.long	0xc94
	.uleb128 0xe
	.long	.LASF213
	.byte	0x1
	.byte	0x55
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x17
	.string	"st"
	.byte	0x1
	.byte	0x58
	.byte	0xf
	.long	0x56a
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0xc6d
	.uleb128 0x1a
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0xcae
	.uleb128 0x1c
	.long	.LASF214
	.byte	0x80
	.byte	0
	.uleb128 0xb
	.long	0x4e2
	.long	0xcbe
	.uleb128 0xc
	.long	0x29
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0xcae
	.uleb128 0x28
	.long	.LASF215
	.byte	0x1
	.byte	0x62
	.byte	0x1c
	.long	0xcbe
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x29
	.long	.LASF267
	.byte	0x1
	.value	0x2a8
	.byte	0x1
	.long	0x66
	.quad	.LFB176
	.quad	.LFE176-.LFB176
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bbe
	.uleb128 0x2a
	.long	.LASF216
	.byte	0x1
	.value	0x2a8
	.byte	0xb
	.long	0x66
	.long	.LLST70
	.long	.LVUS70
	.uleb128 0x2a
	.long	.LASF217
	.byte	0x1
	.value	0x2a8
	.byte	0x18
	.long	0x698
	.long	.LLST71
	.long	.LVUS71
	.uleb128 0x2b
	.string	"ok"
	.byte	0x1
	.value	0x2aa
	.byte	0x8
	.long	0x8d2
	.long	.LLST72
	.long	.LVUS72
	.uleb128 0x2c
	.long	.LASF218
	.byte	0x1
	.value	0x2ab
	.byte	0x7
	.long	0x66
	.long	.LLST73
	.long	.LVUS73
	.uleb128 0x2c
	.long	.LASF219
	.byte	0x1
	.value	0x2ac
	.byte	0xa
	.long	0x30
	.long	.LLST74
	.long	.LVUS74
	.uleb128 0x2c
	.long	.LASF220
	.byte	0x1
	.value	0x2ad
	.byte	0xa
	.long	0x698
	.long	.LLST75
	.long	.LVUS75
	.uleb128 0x2c
	.long	.LASF221
	.byte	0x1
	.value	0x2ae
	.byte	0x9
	.long	0x115
	.long	.LLST76
	.long	.LVUS76
	.uleb128 0x2c
	.long	.LASF212
	.byte	0x1
	.value	0x2af
	.byte	0x13
	.long	0x1bbe
	.long	.LLST77
	.long	.LVUS77
	.uleb128 0x2d
	.string	"tok"
	.byte	0x1
	.value	0x2b0
	.byte	0x11
	.long	0xad6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x2c
	.long	.LASF222
	.byte	0x1
	.value	0x2ec
	.byte	0x8
	.long	0x8d2
	.long	.LLST78
	.long	.LVUS78
	.uleb128 0x2b
	.string	"ai"
	.byte	0x1
	.value	0x2ed
	.byte	0x19
	.long	0x1bc9
	.long	.LLST79
	.long	.LVUS79
	.uleb128 0x2e
	.long	.LASF248
	.byte	0x1
	.value	0x368
	.byte	0x2
	.quad	.LDL1
	.uleb128 0x2f
	.long	.LASF358
	.long	0x1bdf
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.8386
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x7f0
	.long	0x1172
	.uleb128 0x2c
	.long	.LASF223
	.byte	0x1
	.value	0x2f0
	.byte	0xd
	.long	0x39e
	.long	.LLST80
	.long	.LVUS80
	.uleb128 0x2d
	.string	"st"
	.byte	0x1
	.value	0x308
	.byte	0x13
	.long	0x56a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x31
	.quad	.LBB384
	.quad	.LBE384-.LBB384
	.long	0xeb7
	.uleb128 0x32
	.quad	.LVL466
	.long	0x33a3
	.long	0xe61
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL467
	.long	0x33b0
	.long	0xe8a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC41
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x34
	.quad	.LVL469
	.long	0x33bc
	.uleb128 0x35
	.quad	.LVL470
	.long	0x33c8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB389
	.quad	.LBE389-.LBB389
	.long	0xf31
	.uleb128 0x32
	.quad	.LVL508
	.long	0x33a3
	.long	0xee9
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL510
	.long	0x33b0
	.long	0xf12
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC43
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x35
	.quad	.LVL511
	.long	0x33c8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x32bb
	.quad	.LBI380
	.value	.LVU859
	.long	.Ldebug_ranges0+0x860
	.byte	0x1
	.value	0x309
	.byte	0xb
	.long	0xf81
	.uleb128 0x37
	.long	0x32da
	.long	.LLST81
	.long	.LVUS81
	.uleb128 0x37
	.long	0x32cd
	.long	.LLST82
	.long	.LVUS82
	.uleb128 0x35
	.quad	.LVL357
	.long	0x33d4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x335a
	.quad	.LBI385
	.value	.LVU1241
	.long	.Ldebug_ranges0+0x890
	.byte	0x1
	.value	0x2f7
	.byte	0xb
	.long	0xfd7
	.uleb128 0x37
	.long	0x3377
	.long	.LLST83
	.long	.LVUS83
	.uleb128 0x37
	.long	0x336b
	.long	.LLST84
	.long	.LVUS84
	.uleb128 0x35
	.quad	.LVL506
	.long	0x33e1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC38
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL347
	.long	0x2ac0
	.long	0xfee
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.quad	.LVL353
	.long	0x33ed
	.long	0x1013
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC39
	.byte	0
	.uleb128 0x32
	.quad	.LVL355
	.long	0x33f9
	.long	0x102b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL359
	.long	0x3406
	.long	0x1043
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL464
	.long	0x3412
	.long	0x1068
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC40
	.byte	0
	.uleb128 0x34
	.quad	.LVL481
	.long	0x341e
	.uleb128 0x32
	.quad	.LVL483
	.long	0x342a
	.long	0x108d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL484
	.long	0x3436
	.long	0x10ab
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL485
	.long	0x3442
	.long	0x10c3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL488
	.long	0x344f
	.long	0x10dd
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -560
	.byte	0x6
	.byte	0
	.uleb128 0x34
	.quad	.LVL497
	.long	0x341e
	.uleb128 0x32
	.quad	.LVL500
	.long	0x33a3
	.long	0x1101
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x32
	.quad	.LVL502
	.long	0x33b0
	.long	0x112a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC36
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL503
	.long	0x33c8
	.long	0x114c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL504
	.long	0x33b0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC37
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.Ldebug_ranges0+0xcc0
	.long	0x11a9
	.uleb128 0x38
	.long	.LASF224
	.byte	0x1
	.value	0x31f
	.byte	0x14
	.long	0x1be4
	.uleb128 0x9
	.byte	0x3
	.quad	stdin_only.8376
	.uleb128 0x35
	.quad	.LVL441
	.long	0x344f
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -560
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.Ldebug_ranges0+0xa70
	.long	0x1666
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x32c
	.byte	0xc
	.long	0x66
	.long	.LLST101
	.long	.LVUS101
	.uleb128 0x39
	.long	.Ldebug_ranges0+0xae0
	.uleb128 0x2c
	.long	.LASF225
	.byte	0x1
	.value	0x32e
	.byte	0xc
	.long	0x8d2
	.long	.LLST102
	.long	.LVUS102
	.uleb128 0x38
	.long	.LASF226
	.byte	0x1
	.value	0x32f
	.byte	0x1a
	.long	0x850
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x2c
	.long	.LASF227
	.byte	0x1
	.value	0x330
	.byte	0xd
	.long	0x115
	.long	.LLST103
	.long	.LVUS103
	.uleb128 0x31
	.quad	.LBB453
	.quad	.LBE453-.LBB453
	.long	0x12c6
	.uleb128 0x2c
	.long	.LASF228
	.byte	0x1
	.value	0x359
	.byte	0x21
	.long	0x29
	.long	.LLST112
	.long	.LVUS112
	.uleb128 0x32
	.quad	.LVL396
	.long	0x345b
	.long	0x1247
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL398
	.long	0x33b0
	.long	0x1270
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC49
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL399
	.long	0x3467
	.long	0x1292
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL400
	.long	0x33c8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC50
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.byte	0x91
	.sleb128 -560
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x1caa
	.quad	.LBI431
	.value	.LVU960
	.long	.Ldebug_ranges0+0xb50
	.byte	0x1
	.value	0x363
	.byte	0xf
	.long	0x1495
	.uleb128 0x37
	.long	0x1cc9
	.long	.LLST104
	.long	.LVUS104
	.uleb128 0x37
	.long	0x1cbc
	.long	.LLST105
	.long	.LVUS105
	.uleb128 0x36
	.long	0x1caa
	.quad	.LBI433
	.value	.LVU913
	.long	.Ldebug_ranges0+0xbb0
	.byte	0x1
	.value	0x24d
	.byte	0x1
	.long	0x1444
	.uleb128 0x37
	.long	0x1cc9
	.long	.LLST106
	.long	.LVUS106
	.uleb128 0x37
	.long	0x1cbc
	.long	.LLST107
	.long	.LVUS107
	.uleb128 0x3a
	.long	0x1cd6
	.long	.Ldebug_ranges0+0xbe0
	.uleb128 0x3b
	.long	0x1cd7
	.long	.LLST108
	.long	.LVUS108
	.uleb128 0x36
	.long	0x325a
	.quad	.LBI435
	.value	.LVU915
	.long	.Ldebug_ranges0+0xc20
	.byte	0x1
	.value	0x257
	.byte	0x10
	.long	0x1397
	.uleb128 0x37
	.long	0x3277
	.long	.LLST109
	.long	.LVUS109
	.uleb128 0x37
	.long	0x326b
	.long	.LLST110
	.long	.LVUS110
	.uleb128 0x35
	.quad	.LVL371
	.long	0x3474
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -560
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x1ce3
	.long	.Ldebug_ranges0+0xc60
	.uleb128 0x3b
	.long	0x1ce4
	.long	.LLST111
	.long	.LVUS111
	.uleb128 0x32
	.quad	.LVL374
	.long	0x1cf3
	.long	0x13d5
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -552
	.byte	0x94
	.byte	0x4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -560
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL376
	.long	0x3480
	.long	0x13f0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -552
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x32
	.quad	.LVL430
	.long	0x3467
	.long	0x140c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x34
	.quad	.LVL431
	.long	0x33bc
	.uleb128 0x35
	.quad	.LVL432
	.long	0x33c8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -560
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL386
	.long	0x33ed
	.long	0x146b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -560
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC39
	.byte	0
	.uleb128 0x35
	.quad	.LVL389
	.long	0x1cf3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -560
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -552
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL367
	.long	0x33ed
	.long	0x14bc
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -560
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC39
	.byte	0
	.uleb128 0x32
	.quad	.LVL381
	.long	0x348d
	.long	0x14da
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL391
	.long	0x33a3
	.long	0x14f9
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -560
	.byte	0x6
	.byte	0
	.uleb128 0x32
	.quad	.LVL393
	.long	0x33b0
	.long	0x1522
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC47
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL394
	.long	0x33c8
	.long	0x1544
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL403
	.long	0x33b0
	.long	0x156e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC49
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL404
	.long	0x33c8
	.long	0x1599
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x32
	.quad	.LVL408
	.long	0x3467
	.long	0x15bc
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL410
	.long	0x33b0
	.long	0x15e6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC44
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x34
	.quad	.LVL412
	.long	0x33bc
	.uleb128 0x32
	.quad	.LVL413
	.long	0x33c8
	.long	0x1617
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL422
	.long	0x3499
	.long	0x1657
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC46
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC45
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x33f
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.8386
	.byte	0
	.uleb128 0x34
	.quad	.LVL513
	.long	0x34a5
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB468
	.quad	.LBE468-.LBB468
	.long	0x16a9
	.uleb128 0x34
	.quad	.LVL436
	.long	0x33bc
	.uleb128 0x35
	.quad	.LVL437
	.long	0x33c8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC39
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x1c5d
	.quad	.LBI391
	.value	.LVU874
	.long	.Ldebug_ranges0+0x8c0
	.byte	0x1
	.value	0x328
	.byte	0xd
	.long	0x1881
	.uleb128 0x37
	.long	0x1c7c
	.long	.LLST85
	.long	.LVUS85
	.uleb128 0x37
	.long	0x1c6f
	.long	.LLST86
	.long	.LVUS86
	.uleb128 0x39
	.long	.Ldebug_ranges0+0x8c0
	.uleb128 0x3b
	.long	0x1c89
	.long	.LLST87
	.long	.LVUS87
	.uleb128 0x36
	.long	0x3217
	.quad	.LBI393
	.value	.LVU876
	.long	.Ldebug_ranges0+0x950
	.byte	0x1
	.value	0x273
	.byte	0x1d
	.long	0x177a
	.uleb128 0x37
	.long	0x3232
	.long	.LLST88
	.long	.LVUS88
	.uleb128 0x37
	.long	0x3228
	.long	.LLST89
	.long	.LVUS89
	.uleb128 0x32
	.quad	.LVL362
	.long	0x34b1
	.long	0x173d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x98
	.byte	0
	.uleb128 0x32
	.quad	.LVL444
	.long	0x34b1
	.long	0x1758
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x98
	.byte	0x1e
	.byte	0
	.uleb128 0x35
	.quad	.LVL494
	.long	0x34b1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0x98
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x1c96
	.quad	.LBB403
	.quad	.LBE403-.LBB403
	.uleb128 0x3b
	.long	0x1c97
	.long	.LLST90
	.long	.LVUS90
	.uleb128 0x3d
	.long	0x32bb
	.quad	.LBI404
	.value	.LVU1109
	.quad	.LBB404
	.quad	.LBE404-.LBB404
	.byte	0x1
	.value	0x27f
	.byte	0x20
	.long	0x17fc
	.uleb128 0x37
	.long	0x32da
	.long	.LLST91
	.long	.LVUS91
	.uleb128 0x37
	.long	0x32cd
	.long	.LLST92
	.long	.LVUS92
	.uleb128 0x35
	.quad	.LVL448
	.long	0x33d4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	0x32ee
	.quad	.LBI406
	.value	.LVU1124
	.quad	.LBB406
	.quad	.LBE406-.LBB406
	.byte	0x1
	.value	0x280
	.byte	0x20
	.long	0x185d
	.uleb128 0x37
	.long	0x330d
	.long	.LLST93
	.long	.LVUS93
	.uleb128 0x37
	.long	0x3300
	.long	.LLST94
	.long	.LVUS94
	.uleb128 0x35
	.quad	.LVL454
	.long	0x34bd
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL452
	.long	0x33ed
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x1bf4
	.quad	.LBI417
	.value	.LVU892
	.long	.Ldebug_ranges0+0x9b0
	.byte	0x1
	.value	0x329
	.byte	0x12
	.long	0x1905
	.uleb128 0x37
	.long	0x1c13
	.long	.LLST95
	.long	.LVUS95
	.uleb128 0x37
	.long	0x1c06
	.long	.LLST96
	.long	.LVUS96
	.uleb128 0x39
	.long	.Ldebug_ranges0+0x9b0
	.uleb128 0x3b
	.long	0x1c20
	.long	.LLST97
	.long	.LVUS97
	.uleb128 0x3a
	.long	0x1c2d
	.long	.Ldebug_ranges0+0xa10
	.uleb128 0x3b
	.long	0x1c2e
	.long	.LLST98
	.long	.LVUS98
	.uleb128 0x3b
	.long	0x1c3b
	.long	.LLST99
	.long	.LVUS99
	.uleb128 0x3a
	.long	0x1c48
	.long	.Ldebug_ranges0+0xa40
	.uleb128 0x3b
	.long	0x1c49
	.long	.LLST100
	.long	.LVUS100
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x1caa
	.quad	.LBI463
	.value	.LVU1047
	.long	.Ldebug_ranges0+0xc90
	.byte	0x1
	.value	0x36e
	.byte	0xb
	.long	0x1961
	.uleb128 0x37
	.long	0x1cc9
	.long	.LLST113
	.long	.LVUS113
	.uleb128 0x37
	.long	0x1cbc
	.long	.LLST114
	.long	.LVUS114
	.uleb128 0x35
	.quad	.LVL427
	.long	0x1cf3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -568
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LVL333
	.long	0x34ca
	.uleb128 0x32
	.quad	.LVL334
	.long	0x34d6
	.long	0x1992
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x32
	.quad	.LVL335
	.long	0x34e2
	.long	0x19be
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.byte	0
	.uleb128 0x32
	.quad	.LVL336
	.long	0x34ee
	.long	0x19dd
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.byte	0
	.uleb128 0x34
	.quad	.LVL337
	.long	0x34fa
	.uleb128 0x34
	.quad	.LVL338
	.long	0x3507
	.uleb128 0x32
	.quad	.LVL339
	.long	0x3514
	.long	0x1a18
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL340
	.long	0x3521
	.long	0x1a37
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.byte	0
	.uleb128 0x32
	.quad	.LVL342
	.long	0x352e
	.long	0x1a74
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL349
	.long	0x353a
	.long	0x1aba
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC34
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.byte	0
	.uleb128 0x32
	.quad	.LVL350
	.long	0x3546
	.long	0x1ad1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL414
	.long	0x345b
	.long	0x1ae9
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL415
	.long	0x33b0
	.long	0x1b12
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC48
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x34
	.quad	.LVL416
	.long	0x2702
	.uleb128 0x32
	.quad	.LVL417
	.long	0x3553
	.long	0x1b37
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL418
	.long	0x355f
	.long	0x1b51
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -568
	.byte	0x6
	.byte	0
	.uleb128 0x32
	.quad	.LVL424
	.long	0x345b
	.long	0x1b69
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL434
	.long	0x356c
	.long	0x1b82
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.byte	0
	.uleb128 0x32
	.quad	.LVL435
	.long	0x3480
	.long	0x1b99
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL499
	.long	0x2ac0
	.long	0x1bb0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.quad	.LVL512
	.long	0x3578
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc6d
	.uleb128 0x11
	.long	.LASF229
	.uleb128 0x8
	.byte	0x8
	.long	0x1bc4
	.uleb128 0xb
	.long	0x127
	.long	0x1bdf
	.uleb128 0xc
	.long	0x29
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	0x1bcf
	.uleb128 0xb
	.long	0x115
	.long	0x1bf4
	.uleb128 0xc
	.long	0x29
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LASF233
	.byte	0x1
	.value	0x28b
	.byte	0x1
	.long	0x66
	.byte	0x1
	.long	0x1c57
	.uleb128 0x3f
	.long	.LASF219
	.byte	0x1
	.value	0x28b
	.byte	0x1e
	.long	0x30
	.uleb128 0x3f
	.long	.LASF212
	.byte	0x1
	.value	0x28b
	.byte	0x3c
	.long	0x1c57
	.uleb128 0x40
	.long	.LASF230
	.byte	0x1
	.value	0x28d
	.byte	0x7
	.long	0x66
	.uleb128 0x41
	.uleb128 0x40
	.long	.LASF231
	.byte	0x1
	.value	0x291
	.byte	0xb
	.long	0x66
	.uleb128 0x40
	.long	.LASF232
	.byte	0x1
	.value	0x292
	.byte	0x11
	.long	0x6e2
	.uleb128 0x41
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.value	0x294
	.byte	0x13
	.long	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc94
	.uleb128 0x3e
	.long	.LASF234
	.byte	0x1
	.value	0x271
	.byte	0x1
	.long	0x1bbe
	.byte	0x1
	.long	0x1ca4
	.uleb128 0x3f
	.long	.LASF219
	.byte	0x1
	.value	0x271
	.byte	0x1b
	.long	0x30
	.uleb128 0x3f
	.long	.LASF235
	.byte	0x1
	.value	0x271
	.byte	0x30
	.long	0x1ca4
	.uleb128 0x40
	.long	.LASF212
	.byte	0x1
	.value	0x273
	.byte	0x13
	.long	0x1bbe
	.uleb128 0x41
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.value	0x27d
	.byte	0x13
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x11b
	.uleb128 0x3e
	.long	.LASF236
	.byte	0x1
	.value	0x24d
	.byte	0x1
	.long	0x8d2
	.byte	0x1
	.long	0x1cf3
	.uleb128 0x3f
	.long	.LASF235
	.byte	0x1
	.value	0x24d
	.byte	0x16
	.long	0x376
	.uleb128 0x3f
	.long	.LASF212
	.byte	0x1
	.value	0x24d
	.byte	0x2c
	.long	0x1bbe
	.uleb128 0x41
	.uleb128 0x42
	.string	"fd"
	.byte	0x1
	.value	0x257
	.byte	0xb
	.long	0x66
	.uleb128 0x41
	.uleb128 0x42
	.string	"ok"
	.byte	0x1
	.value	0x25f
	.byte	0x10
	.long	0x8d2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.string	"wc"
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.long	0x8d2
	.quad	.LFB172
	.quad	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.long	0x26f1
	.uleb128 0x44
	.string	"fd"
	.byte	0x1
	.byte	0xd8
	.byte	0x9
	.long	0x66
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x45
	.long	.LASF237
	.byte	0x1
	.byte	0xd8
	.byte	0x19
	.long	0x376
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x45
	.long	.LASF212
	.byte	0x1
	.byte	0xd8
	.byte	0x31
	.long	0x1bbe
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x45
	.long	.LASF238
	.byte	0x1
	.byte	0xd8
	.byte	0x40
	.long	0x386
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x46
	.string	"ok"
	.byte	0x1
	.byte	0xda
	.byte	0x8
	.long	0x8d2
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x47
	.string	"buf"
	.byte	0x1
	.byte	0xdb
	.byte	0x8
	.long	0x26f1
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16464
	.uleb128 0x48
	.long	.LASF239
	.byte	0x1
	.byte	0xdc
	.byte	0xa
	.long	0x30
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x48
	.long	.LASF240
	.byte	0x1
	.byte	0xdd
	.byte	0xd
	.long	0x6e2
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x48
	.long	.LASF241
	.byte	0x1
	.byte	0xdd
	.byte	0x14
	.long	0x6e2
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x48
	.long	.LASF242
	.byte	0x1
	.byte	0xdd
	.byte	0x1b
	.long	0x6e2
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x48
	.long	.LASF243
	.byte	0x1
	.byte	0xdd
	.byte	0x22
	.long	0x6e2
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x48
	.long	.LASF244
	.byte	0x1
	.byte	0xdd
	.byte	0x29
	.long	0x6e2
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x48
	.long	.LASF245
	.byte	0x1
	.byte	0xde
	.byte	0x8
	.long	0x8d2
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x48
	.long	.LASF246
	.byte	0x1
	.byte	0xde
	.byte	0x15
	.long	0x8d2
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x48
	.long	.LASF247
	.byte	0x1
	.byte	0xde
	.byte	0x22
	.long	0x8d2
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x48
	.long	.LASF235
	.byte	0x1
	.byte	0xdf
	.byte	0xf
	.long	0x376
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x2e
	.long	.LASF249
	.byte	0x1
	.value	0x1cd
	.byte	0x11
	.quad	.L69
	.uleb128 0x2e
	.long	.LASF250
	.byte	0x1
	.value	0x227
	.byte	0x11
	.quad	.L90
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x160
	.long	0x204d
	.uleb128 0x2c
	.long	.LASF251
	.byte	0x1
	.value	0x103
	.byte	0xc
	.long	0x8d2
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x220
	.long	0x1f1e
	.uleb128 0x2c
	.long	.LASF252
	.byte	0x1
	.value	0x10e
	.byte	0x12
	.long	0x30
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x31
	.quad	.LBB211
	.quad	.LBE211-.LBB211
	.long	0x1efb
	.uleb128 0x2c
	.long	.LASF253
	.byte	0x1
	.value	0x121
	.byte	0x15
	.long	0x386
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x35
	.quad	.LVL142
	.long	0x3581
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16532
	.byte	0x94
	.byte	0x4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL228
	.long	0x3581
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16532
	.byte	0x94
	.byte	0x4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	0x314d
	.quad	.LBI208
	.value	.LVU343
	.quad	.LBB208
	.quad	.LBE208-.LBB208
	.byte	0x1
	.value	0x10b
	.byte	0x20
	.long	0x1f53
	.uleb128 0x37
	.long	0x315f
	.long	.LLST30
	.long	.LVUS30
	.byte	0
	.uleb128 0x36
	.long	0x32bb
	.quad	.LBI212
	.value	.LVU527
	.long	.Ldebug_ranges0+0x260
	.byte	0x1
	.value	0x106
	.byte	0x1b
	.long	0x1fac
	.uleb128 0x37
	.long	0x32da
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x37
	.long	0x32cd
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x35
	.quad	.LVL217
	.long	0x33d4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16532
	.byte	0x94
	.byte	0x4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL54
	.long	0x358e
	.long	0x1fd3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x32
	.quad	.LVL134
	.long	0x359a
	.long	0x1ff8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x4000
	.byte	0
	.uleb128 0x32
	.quad	.LVL220
	.long	0x3467
	.long	0x201e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -16488
	.byte	0x6
	.byte	0
	.uleb128 0x34
	.quad	.LVL221
	.long	0x33bc
	.uleb128 0x35
	.quad	.LVL222
	.long	0x33c8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x600
	.long	0x2143
	.uleb128 0x2c
	.long	.LASF254
	.byte	0x1
	.value	0x13b
	.byte	0xc
	.long	0x8d2
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x650
	.long	0x211d
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x147
	.byte	0x11
	.long	0x115
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x148
	.byte	0x11
	.long	0x115
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x2c
	.long	.LASF255
	.byte	0x1
	.value	0x149
	.byte	0x15
	.long	0x6e2
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x32
	.quad	.LVL252
	.long	0x35a6
	.long	0x20c8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x32
	.quad	.LVL261
	.long	0x3467
	.long	0x20ee
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -16488
	.byte	0x6
	.byte	0
	.uleb128 0x34
	.quad	.LVL262
	.long	0x33bc
	.uleb128 0x35
	.quad	.LVL263
	.long	0x33c8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL237
	.long	0x359a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16532
	.byte	0x94
	.byte	0x4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x4000
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x290
	.long	0x2443
	.uleb128 0x2c
	.long	.LASF256
	.byte	0x1
	.value	0x16b
	.byte	0xc
	.long	0x8d2
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x2c
	.long	.LASF257
	.byte	0x1
	.value	0x16c
	.byte	0x11
	.long	0x6e2
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x38
	.long	.LASF258
	.byte	0x1
	.value	0x16d
	.byte	0x11
	.long	0x4f9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16472
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x1
	.value	0x16e
	.byte	0xc
	.long	0x8d2
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x2c
	.long	.LASF172
	.byte	0x1
	.value	0x177
	.byte	0xe
	.long	0x30
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x320
	.long	0x2414
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x17e
	.byte	0x17
	.long	0x376
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x2c
	.long	.LASF260
	.byte	0x1
	.value	0x180
	.byte	0x15
	.long	0x4f9
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x390
	.long	0x234e
	.uleb128 0x38
	.long	.LASF261
	.byte	0x1
	.value	0x18e
	.byte	0x17
	.long	0x40d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16476
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x18f
	.byte	0x16
	.long	0x30
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x2c
	.long	.LASF262
	.byte	0x1
	.value	0x190
	.byte	0x14
	.long	0x8d2
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x31
	.quad	.LBB226
	.quad	.LBE226-.LBB226
	.long	0x225e
	.uleb128 0x2c
	.long	.LASF230
	.byte	0x1
	.value	0x1d8
	.byte	0x1f
	.long	0x66
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x34
	.quad	.LVL173
	.long	0x35b2
	.byte	0
	.uleb128 0x3d
	.long	0x312f
	.quad	.LBI222
	.value	.LVU174
	.quad	.LBB222
	.quad	.LBE222-.LBB222
	.byte	0x1
	.value	0x192
	.byte	0x20
	.long	0x2293
	.uleb128 0x37
	.long	0x3141
	.long	.LLST43
	.long	.LVUS43
	.byte	0
	.uleb128 0x3d
	.long	0x2aa3
	.quad	.LBI224
	.value	.LVU406
	.quad	.LBB224
	.quad	.LBE224-.LBB224
	.byte	0x1
	.value	0x1dc
	.byte	0x33
	.long	0x22c8
	.uleb128 0x37
	.long	0x2ab4
	.long	.LLST44
	.long	.LVUS44
	.byte	0
	.uleb128 0x34
	.quad	.LVL78
	.long	0x35bf
	.uleb128 0x32
	.quad	.LVL147
	.long	0x35cb
	.long	0x2301
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16476
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL148
	.long	0x35d8
	.long	0x2319
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL153
	.long	0x35e5
	.long	0x2335
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16492
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x35
	.quad	.LVL156
	.long	0x35f1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16492
	.byte	0x94
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x3285
	.quad	.LBI232
	.value	.LVU436
	.long	.Ldebug_ranges0+0x420
	.byte	0x1
	.value	0x1f9
	.byte	0xf
	.long	0x23bb
	.uleb128 0x37
	.long	0x32ae
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x37
	.long	0x32a2
	.long	.LLST47
	.long	.LVUS47
	.uleb128 0x37
	.long	0x3296
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x35
	.quad	.LVL168
	.long	0x35fd
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -16512
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.value	0x4001
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL196
	.long	0x3467
	.long	0x23e0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -16488
	.byte	0x6
	.byte	0
	.uleb128 0x34
	.quad	.LVL198
	.long	0x33bc
	.uleb128 0x35
	.quad	.LVL199
	.long	0x33c8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL66
	.long	0x359a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16532
	.byte	0x94
	.byte	0x4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x91
	.sleb128 -16512
	.byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0xa
	.value	0x4000
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x450
	.long	0x25e2
	.uleb128 0x2c
	.long	.LASF256
	.byte	0x1
	.value	0x205
	.byte	0xc
	.long	0x8d2
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x2c
	.long	.LASF257
	.byte	0x1
	.value	0x206
	.byte	0x11
	.long	0x6e2
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x4e0
	.long	0x25b9
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x20a
	.byte	0x17
	.long	0x376
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x3d
	.long	0x323d
	.quad	.LBI249
	.value	.LVU277
	.quad	.LBB249
	.quad	.LBE249-.LBB249
	.byte	0x1
	.value	0x22c
	.byte	0x17
	.long	0x24c7
	.uleb128 0x37
	.long	0x324e
	.long	.LLST52
	.long	.LVUS52
	.byte	0
	.uleb128 0x36
	.long	0x2a87
	.quad	.LBI251
	.value	.LVU291
	.long	.Ldebug_ranges0+0x550
	.byte	0x1
	.value	0x230
	.byte	0x1e
	.long	0x2553
	.uleb128 0x37
	.long	0x2a98
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x49
	.long	0x331b
	.quad	.LBI252
	.value	.LVU293
	.long	.Ldebug_ranges0+0x5a0
	.byte	0x1
	.byte	0xa5
	.byte	0xa
	.long	0x252e
	.uleb128 0x37
	.long	0x332d
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x35
	.quad	.LVL118
	.long	0x3608
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x2aa3
	.quad	.LBI256
	.value	.LVU298
	.long	.Ldebug_ranges0+0x5d0
	.byte	0x1
	.byte	0xa5
	.byte	0xa
	.uleb128 0x37
	.long	0x2ab4
	.long	.LLST55
	.long	.LVUS55
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LVL114
	.long	0x35bf
	.uleb128 0x32
	.quad	.LVL212
	.long	0x3467
	.long	0x2585
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -16488
	.byte	0x6
	.byte	0
	.uleb128 0x34
	.quad	.LVL213
	.long	0x33bc
	.uleb128 0x35
	.quad	.LVL214
	.long	0x33c8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL108
	.long	0x359a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16532
	.byte	0x94
	.byte	0x4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -16544
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x4000
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LVL47
	.long	0x3615
	.uleb128 0x32
	.quad	.LVL57
	.long	0x358e
	.long	0x261a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16532
	.byte	0x94
	.byte	0x4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x34
	.quad	.LVL58
	.long	0x3615
	.uleb128 0x32
	.quad	.LVL181
	.long	0x33b0
	.long	0x2650
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL189
	.long	0x2702
	.long	0x268d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -16520
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x5
	.byte	0x91
	.sleb128 -16504
	.byte	0x6
	.byte	0
	.uleb128 0x32
	.quad	.LVL235
	.long	0x358e
	.long	0x26b8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16532
	.byte	0x94
	.byte	0x4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x32
	.quad	.LVL268
	.long	0x358e
	.long	0x26e3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -16532
	.byte	0x94
	.byte	0x4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x34
	.quad	.LVL270
	.long	0x3578
	.byte	0
	.uleb128 0xb
	.long	0x120
	.long	0x2702
	.uleb128 0x4b
	.long	0x29
	.value	0x4000
	.byte	0
	.uleb128 0x4c
	.long	.LASF359
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.quad	.LFB171
	.quad	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a77
	.uleb128 0x45
	.long	.LASF240
	.byte	0x1
	.byte	0xab
	.byte	0x19
	.long	0x6e2
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x45
	.long	.LASF241
	.byte	0x1
	.byte	0xac
	.byte	0x19
	.long	0x6e2
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x45
	.long	.LASF242
	.byte	0x1
	.byte	0xad
	.byte	0x19
	.long	0x6e2
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x45
	.long	.LASF243
	.byte	0x1
	.byte	0xae
	.byte	0x19
	.long	0x6e2
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x45
	.long	.LASF244
	.byte	0x1
	.byte	0xaf
	.byte	0x19
	.long	0x6e2
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x45
	.long	.LASF235
	.byte	0x1
	.byte	0xb0
	.byte	0x1b
	.long	0x376
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x28
	.long	.LASF263
	.byte	0x1
	.byte	0xb2
	.byte	0x15
	.long	0x1bdf
	.uleb128 0x9
	.byte	0x3
	.quad	format_sp_int.8232
	.uleb128 0x48
	.long	.LASF264
	.byte	0x1
	.byte	0xb3
	.byte	0xf
	.long	0x376
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x47
	.string	"buf"
	.byte	0x1
	.byte	0xb4
	.byte	0x8
	.long	0x2a77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4d
	.long	0x333b
	.quad	.LBI142
	.value	.LVU24
	.quad	.LBB142
	.quad	.LBE142-.LBB142
	.byte	0x1
	.byte	0xcf
	.byte	0x5
	.long	0x282c
	.uleb128 0x37
	.long	0x334c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x35
	.quad	.LVL9
	.long	0x362a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	0x3385
	.quad	.LBI144
	.value	.LVU29
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd0
	.byte	0x3
	.long	0x2867
	.uleb128 0x37
	.long	0x3396
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x35
	.quad	.LVL41
	.long	0x3636
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	0x333b
	.quad	.LBI147
	.value	.LVU42
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xcc
	.byte	0x7
	.long	0x28a8
	.uleb128 0x37
	.long	0x334c
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x35
	.quad	.LVL19
	.long	0x362a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	0x333b
	.quad	.LBI151
	.value	.LVU50
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xc7
	.byte	0x7
	.long	0x28e3
	.uleb128 0x37
	.long	0x334c
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x35
	.quad	.LVL24
	.long	0x362a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	0x333b
	.quad	.LBI157
	.value	.LVU61
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xc2
	.byte	0x7
	.long	0x291e
	.uleb128 0x37
	.long	0x334c
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x35
	.quad	.LVL29
	.long	0x362a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	0x333b
	.quad	.LBI163
	.value	.LVU72
	.long	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xbd
	.byte	0x7
	.long	0x2959
	.uleb128 0x37
	.long	0x334c
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x35
	.quad	.LVL34
	.long	0x362a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	0x333b
	.quad	.LBI169
	.value	.LVU83
	.long	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0xb8
	.byte	0x7
	.long	0x299a
	.uleb128 0x37
	.long	0x334c
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x35
	.quad	.LVL39
	.long	0x362a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL6
	.long	0x3643
	.long	0x29b7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x32
	.quad	.LVL7
	.long	0x3467
	.long	0x29d9
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL17
	.long	0x364f
	.long	0x29f7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL21
	.long	0x364f
	.long	0x2a15
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL26
	.long	0x364f
	.long	0x2a33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL31
	.long	0x364f
	.long	0x2a51
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL36
	.long	0x364f
	.long	0x2a69
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.quad	.LVL43
	.long	0x3578
	.byte	0
	.uleb128 0xb
	.long	0x120
	.long	0x2a87
	.uleb128 0xc
	.long	0x29
	.byte	0x14
	.byte	0
	.uleb128 0x4e
	.long	.LASF265
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.long	0x66
	.byte	0x1
	.long	0x2aa3
	.uleb128 0x4f
	.string	"c"
	.byte	0x1
	.byte	0xa3
	.byte	0x10
	.long	0x66
	.byte	0
	.uleb128 0x4e
	.long	.LASF266
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	0x66
	.byte	0x1
	.long	0x2ac0
	.uleb128 0x4f
	.string	"wc"
	.byte	0x1
	.byte	0x9b
	.byte	0x14
	.long	0x4ed
	.byte	0
	.uleb128 0x50
	.long	.LASF268
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.long	0x30af
	.uleb128 0x45
	.long	.LASF269
	.byte	0x1
	.byte	0x70
	.byte	0xc
	.long	0x66
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x49
	.long	0x335a
	.quad	.LBI310
	.value	.LVU653
	.long	.Ldebug_ranges0+0x6b0
	.byte	0x1
	.byte	0x73
	.byte	0x5
	.long	0x2b40
	.uleb128 0x37
	.long	0x3377
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0x37
	.long	0x336b
	.long	.LLST62
	.long	.LVUS62
	.uleb128 0x35
	.quad	.LVL276
	.long	0x33e1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	0x333b
	.quad	.LBI314
	.value	.LVU664
	.long	.Ldebug_ranges0+0x6e0
	.byte	0x1
	.byte	0x76
	.byte	0x7
	.long	0x2b87
	.uleb128 0x37
	.long	0x334c
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x35
	.quad	.LVL282
	.long	0x362a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	0x320d
	.quad	.LBI318
	.value	.LVU671
	.quad	.LBB318
	.quad	.LBE318-.LBB318
	.byte	0x1
	.byte	0x81
	.byte	0x7
	.long	0x2beb
	.uleb128 0x32
	.quad	.LVL285
	.long	0x33b0
	.long	0x2bd6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x35
	.quad	.LVL286
	.long	0x365b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	0x3172
	.quad	.LBI320
	.value	.LVU678
	.quad	.LBB320
	.quad	.LBE320-.LBB320
	.byte	0x1
	.byte	0x94
	.byte	0x7
	.long	0x2f08
	.uleb128 0x51
	.long	0x3180
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.uleb128 0x52
	.long	0x31bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3b
	.long	0x31ca
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x3b
	.long	0x31d7
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x3b
	.long	0x31e4
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x36
	.long	0x333b
	.quad	.LBI322
	.value	.LVU705
	.long	.Ldebug_ranges0+0x710
	.byte	0x5
	.value	0x28f
	.byte	0x3
	.long	0x2cd8
	.uleb128 0x37
	.long	0x334c
	.long	.LLST67
	.long	.LVUS67
	.uleb128 0x32
	.quad	.LVL302
	.long	0x362a
	.long	0x2caa
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.uleb128 0x35
	.quad	.LVL319
	.long	0x362a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x333b
	.quad	.LBI328
	.value	.LVU720
	.long	.Ldebug_ranges0+0x760
	.byte	0x5
	.value	0x29d
	.byte	0x3
	.long	0x2d51
	.uleb128 0x37
	.long	0x334c
	.long	.LLST68
	.long	.LVUS68
	.uleb128 0x32
	.quad	.LVL310
	.long	0x362a
	.long	0x2d2a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL326
	.long	0x362a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x333b
	.quad	.LBI335
	.value	.LVU729
	.long	.Ldebug_ranges0+0x7c0
	.byte	0x5
	.value	0x29f
	.byte	0x3
	.long	0x2d99
	.uleb128 0x37
	.long	0x334c
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x35
	.quad	.LVL314
	.long	0x362a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL299
	.long	0x33b0
	.long	0x2dc2
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL303
	.long	0x34d6
	.long	0x2dde
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL305
	.long	0x3668
	.long	0x2e02
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x32
	.quad	.LVL307
	.long	0x33b0
	.long	0x2e2b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL311
	.long	0x33b0
	.long	0x2e54
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x34
	.quad	.LVL316
	.long	0x33b0
	.uleb128 0x32
	.quad	.LVL320
	.long	0x34d6
	.long	0x2e7d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.quad	.LVL322
	.long	0x3668
	.long	0x2ea1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x32
	.quad	.LVL323
	.long	0x33b0
	.long	0x2eca
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL328
	.long	0x33b0
	.long	0x2ef3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x35
	.quad	.LVL329
	.long	0x365b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LVL273
	.long	0x33b0
	.long	0x2f31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL277
	.long	0x3546
	.long	0x2f49
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL279
	.long	0x33b0
	.long	0x2f6d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x32
	.quad	.LVL283
	.long	0x33b0
	.long	0x2f96
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL284
	.long	0x365b
	.long	0x2fae
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL287
	.long	0x33b0
	.long	0x2fd7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL288
	.long	0x365b
	.long	0x2fef
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL289
	.long	0x33b0
	.long	0x3018
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL290
	.long	0x365b
	.long	0x3030
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL291
	.long	0x33b0
	.long	0x3059
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x32
	.quad	.LVL292
	.long	0x365b
	.long	0x3071
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL293
	.long	0x33b0
	.long	0x309a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x35
	.quad	.LVL294
	.long	0x365b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x53
	.long	.LASF360
	.byte	0xb
	.byte	0x28
	.byte	0x1
	.byte	0x3
	.long	0x30d4
	.uleb128 0x4f
	.string	"fd"
	.byte	0xb
	.byte	0x28
	.byte	0x17
	.long	0x66
	.uleb128 0x54
	.long	.LASF270
	.byte	0xb
	.byte	0x28
	.byte	0x1f
	.long	0x66
	.byte	0
	.uleb128 0x55
	.long	.LASF361
	.byte	0xb
	.byte	0x21
	.byte	0x18
	.byte	0x3
	.uleb128 0x56
	.long	.LASF271
	.byte	0xc
	.byte	0x42
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x3106
	.uleb128 0x4f
	.string	"fd"
	.byte	0xc
	.byte	0x42
	.byte	0x16
	.long	0x66
	.uleb128 0x54
	.long	.LASF270
	.byte	0xc
	.byte	0x42
	.byte	0x1e
	.long	0x66
	.byte	0
	.uleb128 0x56
	.long	.LASF272
	.byte	0xc
	.byte	0x32
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x312f
	.uleb128 0x4f
	.string	"fd"
	.byte	0xc
	.byte	0x32
	.byte	0x13
	.long	0x66
	.uleb128 0x54
	.long	.LASF270
	.byte	0xc
	.byte	0x32
	.byte	0x26
	.long	0x66
	.byte	0
	.uleb128 0x57
	.long	.LASF273
	.byte	0x4
	.value	0x13c
	.byte	0x1
	.long	0x8d2
	.byte	0x3
	.long	0x314d
	.uleb128 0x58
	.string	"c"
	.byte	0x4
	.value	0x13c
	.byte	0x10
	.long	0x120
	.byte	0
	.uleb128 0x3e
	.long	.LASF274
	.byte	0x5
	.value	0x2c1
	.byte	0x1
	.long	0x8d2
	.byte	0x3
	.long	0x316c
	.uleb128 0x58
	.string	"sb"
	.byte	0x5
	.value	0x2c1
	.byte	0x24
	.long	0x316c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x63b
	.uleb128 0x59
	.long	.LASF362
	.byte	0x5
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x31f2
	.uleb128 0x3f
	.long	.LASF275
	.byte	0x5
	.value	0x27a
	.byte	0x22
	.long	0x376
	.uleb128 0x5a
	.long	.LASF276
	.byte	0x10
	.byte	0x5
	.value	0x27c
	.byte	0xa
	.long	0x31b8
	.uleb128 0x5b
	.long	.LASF275
	.byte	0x5
	.value	0x27c
	.byte	0x20
	.long	0x376
	.byte	0
	.uleb128 0x5b
	.long	.LASF277
	.byte	0x5
	.value	0x27c
	.byte	0x35
	.long	0x376
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x318d
	.uleb128 0x40
	.long	.LASF276
	.byte	0x5
	.value	0x27c
	.byte	0x43
	.long	0x3202
	.uleb128 0x40
	.long	.LASF277
	.byte	0x5
	.value	0x286
	.byte	0xf
	.long	0x376
	.uleb128 0x40
	.long	.LASF278
	.byte	0x5
	.value	0x287
	.byte	0x19
	.long	0x3207
	.uleb128 0x40
	.long	.LASF279
	.byte	0x5
	.value	0x293
	.byte	0xf
	.long	0x376
	.byte	0
	.uleb128 0xb
	.long	0x31b8
	.long	0x3202
	.uleb128 0xc
	.long	0x29
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	0x31f2
	.uleb128 0x8
	.byte	0x8
	.long	0x31b8
	.uleb128 0x5c
	.long	.LASF363
	.byte	0x5
	.value	0x245
	.byte	0x1
	.byte	0x3
	.uleb128 0x56
	.long	.LASF280
	.byte	0x9
	.byte	0x63
	.byte	0x1
	.long	0x48
	.byte	0x3
	.long	0x323d
	.uleb128 0x4f
	.string	"n"
	.byte	0x9
	.byte	0x63
	.byte	0x12
	.long	0x30
	.uleb128 0x4f
	.string	"s"
	.byte	0x9
	.byte	0x63
	.byte	0x1c
	.long	0x30
	.byte	0
	.uleb128 0x4e
	.long	.LASF281
	.byte	0x5
	.byte	0x9c
	.byte	0x1d
	.long	0x4a
	.byte	0x3
	.long	0x325a
	.uleb128 0x4f
	.string	"ch"
	.byte	0x5
	.byte	0x9c
	.byte	0x2c
	.long	0x120
	.byte	0
	.uleb128 0x5d
	.long	.LASF284
	.byte	0xa
	.byte	0x29
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x3285
	.uleb128 0x54
	.long	.LASF282
	.byte	0xa
	.byte	0x29
	.byte	0x13
	.long	0x376
	.uleb128 0x54
	.long	.LASF283
	.byte	0xa
	.byte	0x29
	.byte	0x1f
	.long	0x66
	.uleb128 0x5e
	.byte	0
	.uleb128 0x5d
	.long	.LASF285
	.byte	0x7
	.byte	0x26
	.byte	0x1
	.long	0x48
	.byte	0x3
	.long	0x32bb
	.uleb128 0x54
	.long	.LASF286
	.byte	0x7
	.byte	0x26
	.byte	0x1
	.long	0x48
	.uleb128 0x54
	.long	.LASF287
	.byte	0x7
	.byte	0x26
	.byte	0x1
	.long	0x6c3
	.uleb128 0x54
	.long	.LASF288
	.byte	0x7
	.byte	0x26
	.byte	0x1
	.long	0x30
	.byte	0
	.uleb128 0x57
	.long	.LASF289
	.byte	0x8
	.value	0x1d3
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x32e8
	.uleb128 0x3f
	.long	.LASF290
	.byte	0x8
	.value	0x1d3
	.byte	0x1
	.long	0x66
	.uleb128 0x3f
	.long	.LASF291
	.byte	0x8
	.value	0x1d3
	.byte	0x1
	.long	0x32e8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x56a
	.uleb128 0x57
	.long	.LASF96
	.byte	0x8
	.value	0x1c5
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x331b
	.uleb128 0x3f
	.long	.LASF282
	.byte	0x8
	.value	0x1c5
	.byte	0x1
	.long	0x376
	.uleb128 0x3f
	.long	.LASF291
	.byte	0x8
	.value	0x1c5
	.byte	0x1
	.long	0x32e8
	.byte	0
	.uleb128 0x57
	.long	.LASF292
	.byte	0x6
	.value	0x13e
	.byte	0x1
	.long	0x4ed
	.byte	0x3
	.long	0x333b
	.uleb128 0x58
	.string	"__c"
	.byte	0x6
	.value	0x13e
	.byte	0x1
	.long	0x66
	.byte	0
	.uleb128 0x5d
	.long	.LASF293
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x335a
	.uleb128 0x54
	.long	.LASF294
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x381
	.uleb128 0x5e
	.byte	0
	.uleb128 0x5d
	.long	.LASF295
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x3385
	.uleb128 0x54
	.long	.LASF296
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x3a4
	.uleb128 0x54
	.long	.LASF294
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x381
	.uleb128 0x5e
	.byte	0
	.uleb128 0x56
	.long	.LASF297
	.byte	0x3
	.byte	0x6c
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x33a3
	.uleb128 0x4f
	.string	"__c"
	.byte	0x3
	.byte	0x6c
	.byte	0x17
	.long	0x66
	.byte	0
	.uleb128 0x5f
	.long	.LASF298
	.long	.LASF298
	.byte	0x28
	.value	0x179
	.byte	0x7
	.uleb128 0x60
	.long	.LASF299
	.long	.LASF299
	.byte	0x2e
	.byte	0x33
	.byte	0xe
	.uleb128 0x60
	.long	.LASF300
	.long	.LASF300
	.byte	0x1f
	.byte	0x25
	.byte	0xd
	.uleb128 0x60
	.long	.LASF301
	.long	.LASF301
	.byte	0x2a
	.byte	0x28
	.byte	0xd
	.uleb128 0x5f
	.long	.LASF302
	.long	.LASF302
	.byte	0x8
	.value	0x18b
	.byte	0xc
	.uleb128 0x60
	.long	.LASF303
	.long	.LASF303
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x60
	.long	.LASF304
	.long	.LASF304
	.byte	0x2f
	.byte	0x89
	.byte	0xc
	.uleb128 0x5f
	.long	.LASF305
	.long	.LASF305
	.byte	0x12
	.value	0x312
	.byte	0xc
	.uleb128 0x60
	.long	.LASF306
	.long	.LASF306
	.byte	0x29
	.byte	0x23
	.byte	0x17
	.uleb128 0x60
	.long	.LASF307
	.long	.LASF307
	.byte	0x12
	.byte	0xf6
	.byte	0xe
	.uleb128 0x60
	.long	.LASF308
	.long	.LASF308
	.byte	0x30
	.byte	0x18
	.byte	0x8
	.uleb128 0x60
	.long	.LASF309
	.long	.LASF309
	.byte	0x2d
	.byte	0x26
	.byte	0x6
	.uleb128 0x60
	.long	.LASF310
	.long	.LASF310
	.byte	0x2d
	.byte	0x28
	.byte	0x6
	.uleb128 0x5f
	.long	.LASF311
	.long	.LASF311
	.byte	0x31
	.value	0x2be
	.byte	0x1
	.uleb128 0x60
	.long	.LASF312
	.long	.LASF312
	.byte	0x29
	.byte	0x21
	.byte	0x17
	.uleb128 0x60
	.long	.LASF313
	.long	.LASF313
	.byte	0x29
	.byte	0x27
	.byte	0x8
	.uleb128 0x5f
	.long	.LASF314
	.long	.LASF314
	.byte	0x28
	.value	0x18d
	.byte	0x7
	.uleb128 0x60
	.long	.LASF284
	.long	.LASF315
	.byte	0xa
	.byte	0x1b
	.byte	0xc
	.uleb128 0x5f
	.long	.LASF316
	.long	.LASF316
	.byte	0x1e
	.value	0x161
	.byte	0xc
	.uleb128 0x60
	.long	.LASF317
	.long	.LASF317
	.byte	0x29
	.byte	0x25
	.byte	0x7
	.uleb128 0x60
	.long	.LASF318
	.long	.LASF318
	.byte	0x32
	.byte	0x45
	.byte	0xd
	.uleb128 0x60
	.long	.LASF319
	.long	.LASF319
	.byte	0x9
	.byte	0x2f
	.byte	0x1b
	.uleb128 0x60
	.long	.LASF320
	.long	.LASF320
	.byte	0x9
	.byte	0x35
	.byte	0x7
	.uleb128 0x5f
	.long	.LASF321
	.long	.LASF321
	.byte	0x8
	.value	0x18d
	.byte	0xc
	.uleb128 0x60
	.long	.LASF322
	.long	.LASF322
	.byte	0x27
	.byte	0x25
	.byte	0xd
	.uleb128 0x60
	.long	.LASF323
	.long	.LASF323
	.byte	0x33
	.byte	0x7a
	.byte	0xe
	.uleb128 0x60
	.long	.LASF324
	.long	.LASF324
	.byte	0x2e
	.byte	0x56
	.byte	0xe
	.uleb128 0x60
	.long	.LASF325
	.long	.LASF325
	.byte	0x2e
	.byte	0x52
	.byte	0xe
	.uleb128 0x5f
	.long	.LASF326
	.long	.LASF326
	.byte	0x34
	.value	0x253
	.byte	0xc
	.uleb128 0x5f
	.long	.LASF327
	.long	.LASF327
	.byte	0x1e
	.value	0x3d0
	.byte	0xc
	.uleb128 0x5f
	.long	.LASF328
	.long	.LASF328
	.byte	0x12
	.value	0x134
	.byte	0xc
	.uleb128 0x5f
	.long	.LASF329
	.long	.LASF329
	.byte	0x34
	.value	0x27a
	.byte	0xe
	.uleb128 0x60
	.long	.LASF330
	.long	.LASF330
	.byte	0x18
	.byte	0x42
	.byte	0xc
	.uleb128 0x60
	.long	.LASF331
	.long	.LASF331
	.byte	0x26
	.byte	0x3c
	.byte	0xd
	.uleb128 0x5f
	.long	.LASF332
	.long	.LASF332
	.byte	0x34
	.value	0x269
	.byte	0xd
	.uleb128 0x60
	.long	.LASF333
	.long	.LASF333
	.byte	0x29
	.byte	0x29
	.byte	0x6
	.uleb128 0x5f
	.long	.LASF334
	.long	.LASF334
	.byte	0x34
	.value	0x235
	.byte	0xd
	.uleb128 0x60
	.long	.LASF335
	.long	.LASF335
	.byte	0x2d
	.byte	0x27
	.byte	0x6
	.uleb128 0x61
	.long	.LASF364
	.long	.LASF364
	.uleb128 0x5f
	.long	.LASF336
	.long	.LASF336
	.byte	0x1e
	.value	0x14e
	.byte	0x10
	.uleb128 0x60
	.long	.LASF337
	.long	.LASF337
	.byte	0x2b
	.byte	0x47
	.byte	0x6
	.uleb128 0x60
	.long	.LASF338
	.long	.LASF338
	.byte	0x35
	.byte	0x2a
	.byte	0xf
	.uleb128 0x60
	.long	.LASF339
	.long	.LASF339
	.byte	0x2f
	.byte	0x5b
	.byte	0xe
	.uleb128 0x5f
	.long	.LASF340
	.long	.LASF340
	.byte	0x6
	.value	0x16f
	.byte	0xc
	.uleb128 0x60
	.long	.LASF341
	.long	.LASF341
	.byte	0x24
	.byte	0x4f
	.byte	0x23
	.uleb128 0x5f
	.long	.LASF342
	.long	.LASF342
	.byte	0x36
	.value	0x2eb
	.byte	0x1
	.uleb128 0x5f
	.long	.LASF343
	.long	.LASF343
	.byte	0x6
	.value	0x124
	.byte	0xc
	.uleb128 0x60
	.long	.LASF344
	.long	.LASF344
	.byte	0x37
	.byte	0x78
	.byte	0xc
	.uleb128 0x60
	.long	.LASF345
	.long	.LASF345
	.byte	0x37
	.byte	0x82
	.byte	0xc
	.uleb128 0x62
	.long	.LASF365
	.long	.LASF366
	.byte	0x39
	.byte	0
	.uleb128 0x5f
	.long	.LASF292
	.long	.LASF346
	.byte	0x6
	.value	0x13c
	.byte	0xf
	.uleb128 0x60
	.long	.LASF347
	.long	.LASF347
	.byte	0x34
	.byte	0x61
	.byte	0xf
	.uleb128 0x63
	.uleb128 0x7
	.byte	0x9e
	.uleb128 0x5
	.byte	0x20
	.byte	0x25
	.byte	0x2a
	.byte	0x73
	.byte	0
	.uleb128 0x60
	.long	.LASF348
	.long	.LASF348
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x5f
	.long	.LASF349
	.long	.LASF349
	.byte	0x12
	.value	0x35b
	.byte	0xc
	.uleb128 0x60
	.long	.LASF350
	.long	.LASF350
	.byte	0x2f
	.byte	0xe2
	.byte	0xe
	.uleb128 0x60
	.long	.LASF351
	.long	.LASF351
	.byte	0x38
	.byte	0x1d
	.byte	0x7
	.uleb128 0x5f
	.long	.LASF352
	.long	.LASF352
	.byte	0x12
	.value	0x296
	.byte	0xc
	.uleb128 0x60
	.long	.LASF353
	.long	.LASF353
	.byte	0x2f
	.byte	0x8c
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.uleb128 0x5e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5f
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
	.uleb128 0x60
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
	.uleb128 0x61
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
	.uleb128 0x62
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
	.uleb128 0x63
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS70:
	.uleb128 0
	.uleb128 .LVU767
	.uleb128 .LVU767
	.uleb128 .LVU885
	.uleb128 .LVU885
	.uleb128 .LVU1071
	.uleb128 .LVU1071
	.uleb128 .LVU1084
	.uleb128 .LVU1084
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1158
	.uleb128 .LVU1185
	.uleb128 .LVU1185
	.uleb128 .LVU1188
	.uleb128 .LVU1188
	.uleb128 .LVU1189
	.uleb128 .LVU1189
	.uleb128 .LVU1203
	.uleb128 .LVU1203
	.uleb128 .LVU1227
	.uleb128 .LVU1227
	.uleb128 .LVU1248
	.uleb128 .LVU1248
	.uleb128 0
.LLST70:
	.quad	.LVL330
	.quad	.LVL331
	.value	0x1
	.byte	0x55
	.quad	.LVL331
	.quad	.LVL363
	.value	0x1
	.byte	0x53
	.quad	.LVL363
	.quad	.LVL437
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL437
	.quad	.LVL439
	.value	0x1
	.byte	0x53
	.quad	.LVL439
	.quad	.LVL463
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL463
	.quad	.LVL470
	.value	0x1
	.byte	0x53
	.quad	.LVL470
	.quad	.LVL478
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL478
	.quad	.LVL479
	.value	0x1
	.byte	0x53
	.quad	.LVL479
	.quad	.LVL480
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL480
	.quad	.LVL486
	.value	0x1
	.byte	0x53
	.quad	.LVL486
	.quad	.LVL496
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL496
	.quad	.LVL511
	.value	0x1
	.byte	0x53
	.quad	.LVL511
	.quad	.LFE176
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS71:
	.uleb128 0
	.uleb128 .LVU777
	.uleb128 .LVU777
	.uleb128 .LVU854
	.uleb128 .LVU854
	.uleb128 .LVU1071
	.uleb128 .LVU1071
	.uleb128 .LVU1090
	.uleb128 .LVU1090
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 .LVU1153
	.uleb128 .LVU1153
	.uleb128 .LVU1185
	.uleb128 .LVU1185
	.uleb128 .LVU1189
	.uleb128 .LVU1189
	.uleb128 .LVU1229
	.uleb128 .LVU1229
	.uleb128 .LVU1245
	.uleb128 .LVU1245
	.uleb128 0
.LLST71:
	.quad	.LVL330
	.quad	.LVL333-1
	.value	0x1
	.byte	0x54
	.quad	.LVL333-1
	.quad	.LVL354
	.value	0x1
	.byte	0x56
	.quad	.LVL354
	.quad	.LVL437
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL437
	.quad	.LVL442
	.value	0x1
	.byte	0x56
	.quad	.LVL442
	.quad	.LVL463
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL463
	.quad	.LVL465
	.value	0x1
	.byte	0x56
	.quad	.LVL465
	.quad	.LVL478
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL478
	.quad	.LVL480
	.value	0x1
	.byte	0x56
	.quad	.LVL480
	.quad	.LVL498
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL498
	.quad	.LVL507
	.value	0x1
	.byte	0x56
	.quad	.LVL507
	.quad	.LFE176
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS72:
	.uleb128 .LVU899
	.uleb128 .LVU904
	.uleb128 .LVU904
	.uleb128 .LVU979
	.uleb128 .LVU995
	.uleb128 .LVU1000
	.uleb128 .LVU1002
	.uleb128 .LVU1006
	.uleb128 .LVU1013
	.uleb128 .LVU1016
	.uleb128 .LVU1016
	.uleb128 .LVU1032
	.uleb128 .LVU1036
	.uleb128 .LVU1044
	.uleb128 .LVU1059
	.uleb128 .LVU1060
	.uleb128 .LVU1060
	.uleb128 .LVU1071
.LLST72:
	.quad	.LVL365
	.quad	.LVL366
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL366
	.quad	.LVL392
	.value	0x1
	.byte	0x5e
	.quad	.LVL401
	.quad	.LVL402
	.value	0x1
	.byte	0x5e
	.quad	.LVL405
	.quad	.LVL407
	.value	0x1
	.byte	0x5e
	.quad	.LVL413
	.quad	.LVL413
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL413
	.quad	.LVL419
	.value	0x1
	.byte	0x5e
	.quad	.LVL421
	.quad	.LVL423
	.value	0x1
	.byte	0x5e
	.quad	.LVL428
	.quad	.LVL429
	.value	0x1
	.byte	0x50
	.quad	.LVL429
	.quad	.LVL437
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS73:
	.uleb128 .LVU809
	.uleb128 .LVU811
	.uleb128 .LVU827
	.uleb128 .LVU832
	.uleb128 .LVU833
	.uleb128 .LVU837
	.uleb128 .LVU839
	.uleb128 .LVU845
	.uleb128 .LVU1071
	.uleb128 .LVU1079
	.uleb128 .LVU1229
	.uleb128 .LVU1231
.LLST73:
	.quad	.LVL342
	.quad	.LVL343
	.value	0x1
	.byte	0x50
	.quad	.LVL345
	.quad	.LVL346
	.value	0x1
	.byte	0x50
	.quad	.LVL347
	.quad	.LVL348
	.value	0x1
	.byte	0x50
	.quad	.LVL350
	.quad	.LVL352
	.value	0x1
	.byte	0x50
	.quad	.LVL437
	.quad	.LVL438
	.value	0x1
	.byte	0x50
	.quad	.LVL498
	.quad	.LVL499-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS74:
	.uleb128 .LVU868
	.uleb128 .LVU885
	.uleb128 .LVU1088
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1185
	.uleb128 .LVU1206
	.uleb128 .LVU1227
.LLST74:
	.quad	.LVL358
	.quad	.LVL363
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL440
	.quad	.LVL463
	.value	0x1
	.byte	0x53
	.quad	.LVL470
	.quad	.LVL478
	.value	0x1
	.byte	0x53
	.quad	.LVL487
	.quad	.LVL496
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS75:
	.uleb128 .LVU867
	.uleb128 .LVU885
	.uleb128 .LVU1087
	.uleb128 .LVU1088
	.uleb128 .LVU1090
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1185
	.uleb128 .LVU1205
	.uleb128 .LVU1208
	.uleb128 .LVU1208
	.uleb128 .LVU1227
.LLST75:
	.quad	.LVL358
	.quad	.LVL363
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL440
	.quad	.LVL440
	.value	0x1
	.byte	0x52
	.quad	.LVL442
	.quad	.LVL463
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL470
	.quad	.LVL478
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL487
	.quad	.LVL488-1
	.value	0x1
	.byte	0x50
	.quad	.LVL488-1
	.quad	.LVL496
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	0
	.quad	0
.LVUS76:
	.uleb128 .LVU773
	.uleb128 .LVU807
	.uleb128 .LVU807
	.uleb128 .LVU832
	.uleb128 .LVU833
	.uleb128 .LVU1010
	.uleb128 .LVU1036
	.uleb128 .LVU1066
	.uleb128 .LVU1071
	.uleb128 .LVU1157
	.uleb128 .LVU1158
	.uleb128 .LVU1234
	.uleb128 .LVU1245
	.uleb128 .LVU1247
	.uleb128 .LVU1250
	.uleb128 0
.LLST76:
	.quad	.LVL332
	.quad	.LVL341
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL341
	.quad	.LVL346
	.value	0x1
	.byte	0x5c
	.quad	.LVL347
	.quad	.LVL411
	.value	0x1
	.byte	0x5c
	.quad	.LVL421
	.quad	.LVL433
	.value	0x1
	.byte	0x5c
	.quad	.LVL437
	.quad	.LVL468
	.value	0x1
	.byte	0x5c
	.quad	.LVL470
	.quad	.LVL501
	.value	0x1
	.byte	0x5c
	.quad	.LVL507
	.quad	.LVL509
	.value	0x1
	.byte	0x5c
	.quad	.LVL512
	.quad	.LFE176
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS77:
	.uleb128 .LVU890
	.uleb128 .LVU1071
	.uleb128 .LVU1128
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1170
	.uleb128 .LVU1179
	.uleb128 .LVU1185
	.uleb128 .LVU1248
	.uleb128 .LVU1250
.LLST77:
	.quad	.LVL364
	.quad	.LVL437
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	.LVL455
	.quad	.LVL463
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	.LVL470
	.quad	.LVL476
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	.LVL477
	.quad	.LVL478
	.value	0x1
	.byte	0x50
	.quad	.LVL511
	.quad	.LVL512
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	0
	.quad	0
.LVUS78:
	.uleb128 .LVU843
	.uleb128 .LVU885
	.uleb128 .LVU1079
	.uleb128 .LVU1105
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1185
	.uleb128 .LVU1194
	.uleb128 .LVU1194
	.uleb128 .LVU1227
	.uleb128 .LVU1227
	.uleb128 .LVU1229
	.uleb128 .LVU1231
	.uleb128 .LVU1245
	.uleb128 .LVU1245
	.uleb128 .LVU1248
.LLST78:
	.quad	.LVL351
	.quad	.LVL363
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL438
	.quad	.LVL445
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL463
	.quad	.LVL470
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL478
	.quad	.LVL482
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL482
	.quad	.LVL496
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL496
	.quad	.LVL498
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL499
	.quad	.LVL507
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL507
	.quad	.LVL511
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS79:
	.uleb128 .LVU870
	.uleb128 .LVU880
	.uleb128 .LVU880
	.uleb128 .LVU1035
	.uleb128 .LVU1036
	.uleb128 .LVU1071
	.uleb128 .LVU1090
	.uleb128 .LVU1100
	.uleb128 .LVU1100
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1185
	.uleb128 .LVU1209
	.uleb128 .LVU1220
	.uleb128 .LVU1220
	.uleb128 .LVU1227
	.uleb128 .LVU1248
	.uleb128 0
.LLST79:
	.quad	.LVL360
	.quad	.LVL362-1
	.value	0x1
	.byte	0x50
	.quad	.LVL362-1
	.quad	.LVL420
	.value	0x1
	.byte	0x56
	.quad	.LVL421
	.quad	.LVL437
	.value	0x1
	.byte	0x56
	.quad	.LVL442
	.quad	.LVL444-1
	.value	0x1
	.byte	0x50
	.quad	.LVL444-1
	.quad	.LVL463
	.value	0x1
	.byte	0x56
	.quad	.LVL470
	.quad	.LVL478
	.value	0x1
	.byte	0x56
	.quad	.LVL489
	.quad	.LVL492
	.value	0x1
	.byte	0x50
	.quad	.LVL492
	.quad	.LVL496
	.value	0x1
	.byte	0x56
	.quad	.LVL511
	.quad	.LFE176
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS80:
	.uleb128 .LVU854
	.uleb128 .LVU870
	.uleb128 .LVU1153
	.uleb128 .LVU1156
	.uleb128 .LVU1156
	.uleb128 .LVU1158
	.uleb128 .LVU1189
	.uleb128 .LVU1209
	.uleb128 .LVU1227
	.uleb128 .LVU1229
	.uleb128 .LVU1245
	.uleb128 .LVU1248
.LLST80:
	.quad	.LVL354
	.quad	.LVL360
	.value	0x1
	.byte	0x56
	.quad	.LVL465
	.quad	.LVL466-1
	.value	0x1
	.byte	0x50
	.quad	.LVL466-1
	.quad	.LVL470
	.value	0x1
	.byte	0x56
	.quad	.LVL480
	.quad	.LVL489
	.value	0x1
	.byte	0x56
	.quad	.LVL496
	.quad	.LVL498
	.value	0x1
	.byte	0x56
	.quad	.LVL507
	.quad	.LVL511
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS81:
	.uleb128 .LVU859
	.uleb128 .LVU862
	.uleb128 .LVU862
	.uleb128 .LVU862
.LLST81:
	.quad	.LVL356
	.quad	.LVL357-1
	.value	0x1
	.byte	0x51
	.quad	.LVL357-1
	.quad	.LVL357
	.value	0x4
	.byte	0x91
	.sleb128 -224
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS82:
	.uleb128 .LVU859
	.uleb128 .LVU862
.LLST82:
	.quad	.LVL356
	.quad	.LVL357-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS83:
	.uleb128 .LVU1241
	.uleb128 .LVU1245
.LLST83:
	.quad	.LVL505
	.quad	.LVL507
	.value	0xa
	.byte	0x3
	.quad	.LC38
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS84:
	.uleb128 .LVU1241
	.uleb128 .LVU1244
.LLST84:
	.quad	.LVL505
	.quad	.LVL506-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS101:
	.uleb128 .LVU901
	.uleb128 .LVU904
	.uleb128 .LVU904
	.uleb128 .LVU942
	.uleb128 .LVU942
	.uleb128 .LVU943
	.uleb128 .LVU943
	.uleb128 .LVU1009
	.uleb128 .LVU1036
	.uleb128 .LVU1066
.LLST101:
	.quad	.LVL365
	.quad	.LVL366
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL366
	.quad	.LVL379
	.value	0x1
	.byte	0x5d
	.quad	.LVL379
	.quad	.LVL380
	.value	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.quad	.LVL380
	.quad	.LVL409
	.value	0x1
	.byte	0x5d
	.quad	.LVL421
	.quad	.LVL433
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS102:
	.uleb128 .LVU904
	.uleb128 .LVU909
	.uleb128 .LVU944
	.uleb128 .LVU954
	.uleb128 .LVU975
	.uleb128 .LVU984
	.uleb128 .LVU984
	.uleb128 .LVU986
	.uleb128 .LVU995
	.uleb128 .LVU1060
	.uleb128 .LVU1066
	.uleb128 .LVU1071
	.uleb128 .LVU1248
	.uleb128 .LVU1250
.LLST102:
	.quad	.LVL366
	.quad	.LVL368
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL380
	.quad	.LVL383
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL390
	.quad	.LVL394
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL394
	.quad	.LVL395
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL401
	.quad	.LVL429
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL433
	.quad	.LVL437
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL511
	.quad	.LVL512
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS103:
	.uleb128 .LVU904
	.uleb128 .LVU906
	.uleb128 .LVU906
	.uleb128 .LVU911
	.uleb128 .LVU911
	.uleb128 .LVU921
	.uleb128 .LVU921
	.uleb128 .LVU932
	.uleb128 .LVU947
	.uleb128 .LVU956
	.uleb128 .LVU956
	.uleb128 .LVU963
	.uleb128 .LVU963
	.uleb128 .LVU964
	.uleb128 .LVU964
	.uleb128 .LVU974
	.uleb128 .LVU974
	.uleb128 .LVU975
	.uleb128 .LVU975
	.uleb128 .LVU977
	.uleb128 .LVU977
	.uleb128 .LVU986
	.uleb128 .LVU995
	.uleb128 .LVU1001
	.uleb128 .LVU1002
	.uleb128 .LVU1003
	.uleb128 .LVU1003
	.uleb128 .LVU1007
	.uleb128 .LVU1036
	.uleb128 .LVU1039
	.uleb128 .LVU1039
	.uleb128 .LVU1045
.LLST103:
	.quad	.LVL366
	.quad	.LVL367-1
	.value	0x1
	.byte	0x50
	.quad	.LVL367-1
	.quad	.LVL369
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL369
	.quad	.LVL371-1
	.value	0x1
	.byte	0x58
	.quad	.LVL371-1
	.quad	.LVL375
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL382
	.quad	.LVL384
	.value	0x1
	.byte	0x50
	.quad	.LVL384
	.quad	.LVL386-1
	.value	0x1
	.byte	0x58
	.quad	.LVL386-1
	.quad	.LVL387
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL387
	.quad	.LVL389-1
	.value	0x1
	.byte	0x58
	.quad	.LVL389-1
	.quad	.LVL390
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL390
	.quad	.LVL391-1
	.value	0x1
	.byte	0x58
	.quad	.LVL391-1
	.quad	.LVL395
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL401
	.quad	.LVL403-1
	.value	0x1
	.byte	0x50
	.quad	.LVL405
	.quad	.LVL406
	.value	0x1
	.byte	0x50
	.quad	.LVL406
	.quad	.LVL408-1
	.value	0x1
	.byte	0x58
	.quad	.LVL421
	.quad	.LVL422-1
	.value	0x1
	.byte	0x58
	.quad	.LVL422
	.quad	.LVL424-1
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LVUS112:
	.uleb128 .LVU991
	.uleb128 .LVU992
	.uleb128 .LVU992
	.uleb128 .LVU993
.LLST112:
	.quad	.LVL397
	.quad	.LVL398-1
	.value	0x1
	.byte	0x50
	.quad	.LVL398-1
	.quad	.LVL400
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS104:
	.uleb128 .LVU912
	.uleb128 .LVU921
	.uleb128 .LVU921
	.uleb128 .LVU929
	.uleb128 .LVU960
	.uleb128 .LVU963
	.uleb128 .LVU963
	.uleb128 .LVU975
.LLST104:
	.quad	.LVL370
	.quad	.LVL371-1
	.value	0x1
	.byte	0x51
	.quad	.LVL371-1
	.quad	.LVL373
	.value	0x3
	.byte	0x91
	.sleb128 -552
	.quad	.LVL385
	.quad	.LVL386-1
	.value	0x1
	.byte	0x51
	.quad	.LVL386-1
	.quad	.LVL390
	.value	0x3
	.byte	0x91
	.sleb128 -552
	.quad	0
	.quad	0
.LVUS105:
	.uleb128 .LVU912
	.uleb128 .LVU921
	.uleb128 .LVU921
	.uleb128 .LVU932
	.uleb128 .LVU960
	.uleb128 .LVU963
	.uleb128 .LVU963
	.uleb128 .LVU964
	.uleb128 .LVU964
	.uleb128 .LVU974
	.uleb128 .LVU974
	.uleb128 .LVU975
.LLST105:
	.quad	.LVL370
	.quad	.LVL371-1
	.value	0x1
	.byte	0x55
	.quad	.LVL371-1
	.quad	.LVL375
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL385
	.quad	.LVL386-1
	.value	0x1
	.byte	0x55
	.quad	.LVL386-1
	.quad	.LVL387
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL387
	.quad	.LVL389-1
	.value	0x1
	.byte	0x58
	.quad	.LVL389-1
	.quad	.LVL390
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	0
	.quad	0
.LVUS106:
	.uleb128 .LVU912
	.uleb128 .LVU921
	.uleb128 .LVU921
	.uleb128 .LVU929
.LLST106:
	.quad	.LVL370
	.quad	.LVL371-1
	.value	0x1
	.byte	0x51
	.quad	.LVL371-1
	.quad	.LVL373
	.value	0x3
	.byte	0x91
	.sleb128 -552
	.quad	0
	.quad	0
.LVUS107:
	.uleb128 .LVU912
	.uleb128 .LVU921
	.uleb128 .LVU921
	.uleb128 .LVU932
.LLST107:
	.quad	.LVL370
	.quad	.LVL371-1
	.value	0x1
	.byte	0x55
	.quad	.LVL371-1
	.quad	.LVL375
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	0
	.quad	0
.LVUS108:
	.uleb128 .LVU924
	.uleb128 .LVU930
	.uleb128 .LVU930
	.uleb128 .LVU935
.LLST108:
	.quad	.LVL372
	.quad	.LVL374-1
	.value	0x1
	.byte	0x50
	.quad	.LVL374-1
	.quad	.LVL377
	.value	0x3
	.byte	0x91
	.sleb128 -552
	.quad	0
	.quad	0
.LVUS109:
	.uleb128 .LVU915
	.uleb128 .LVU924
.LLST109:
	.quad	.LVL370
	.quad	.LVL372
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS110:
	.uleb128 .LVU915
	.uleb128 .LVU921
	.uleb128 .LVU921
	.uleb128 .LVU924
.LLST110:
	.quad	.LVL370
	.quad	.LVL371-1
	.value	0x1
	.byte	0x55
	.quad	.LVL371-1
	.quad	.LVL372
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	0
	.quad	0
.LVUS111:
	.uleb128 .LVU932
	.uleb128 .LVU934
	.uleb128 .LVU934
	.uleb128 .LVU935
.LLST111:
	.quad	.LVL375
	.quad	.LVL376-1
	.value	0x1
	.byte	0x50
	.quad	.LVL376-1
	.quad	.LVL377
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	0
	.quad	0
.LVUS85:
	.uleb128 .LVU874
	.uleb128 .LVU885
	.uleb128 .LVU1094
	.uleb128 .LVU1128
	.uleb128 .LVU1170
	.uleb128 .LVU1179
	.uleb128 .LVU1213
	.uleb128 .LVU1227
.LLST85:
	.quad	.LVL361
	.quad	.LVL363
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL443
	.quad	.LVL455
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL476
	.quad	.LVL477
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	.LVL490
	.quad	.LVL496
	.value	0x3
	.byte	0x91
	.sleb128 -560
	.quad	0
	.quad	0
.LVUS86:
	.uleb128 .LVU874
	.uleb128 .LVU885
	.uleb128 .LVU1094
	.uleb128 .LVU1128
	.uleb128 .LVU1170
	.uleb128 .LVU1179
	.uleb128 .LVU1213
	.uleb128 .LVU1227
.LLST86:
	.quad	.LVL361
	.quad	.LVL363
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL443
	.quad	.LVL455
	.value	0x1
	.byte	0x53
	.quad	.LVL476
	.quad	.LVL477
	.value	0x1
	.byte	0x53
	.quad	.LVL490
	.quad	.LVL496
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS87:
	.uleb128 .LVU883
	.uleb128 .LVU885
	.uleb128 .LVU885
	.uleb128 .LVU1071
	.uleb128 .LVU1103
	.uleb128 .LVU1105
	.uleb128 .LVU1105
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1185
	.uleb128 .LVU1224
	.uleb128 .LVU1227
	.uleb128 .LVU1248
	.uleb128 .LVU1250
.LLST87:
	.quad	.LVL363
	.quad	.LVL363
	.value	0x1
	.byte	0x50
	.quad	.LVL363
	.quad	.LVL437
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	.LVL445
	.quad	.LVL445
	.value	0x1
	.byte	0x50
	.quad	.LVL445
	.quad	.LVL463
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	.LVL470
	.quad	.LVL478
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	.LVL495
	.quad	.LVL496
	.value	0x1
	.byte	0x50
	.quad	.LVL511
	.quad	.LVL512
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	0
	.quad	0
.LVUS88:
	.uleb128 .LVU876
	.uleb128 .LVU883
	.uleb128 .LVU1096
	.uleb128 .LVU1103
	.uleb128 .LVU1216
	.uleb128 .LVU1224
.LLST88:
	.quad	.LVL361
	.quad	.LVL363
	.value	0x3
	.byte	0x8
	.byte	0x98
	.byte	0x9f
	.quad	.LVL443
	.quad	.LVL445
	.value	0x3
	.byte	0x8
	.byte	0x98
	.byte	0x9f
	.quad	.LVL491
	.quad	.LVL495
	.value	0x3
	.byte	0x8
	.byte	0x98
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS89:
	.uleb128 .LVU876
	.uleb128 .LVU883
	.uleb128 .LVU1096
	.uleb128 .LVU1103
	.uleb128 .LVU1216
	.uleb128 .LVU1222
.LLST89:
	.quad	.LVL361
	.quad	.LVL363
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL443
	.quad	.LVL445
	.value	0x1
	.byte	0x53
	.quad	.LVL491
	.quad	.LVL493
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS90:
	.uleb128 .LVU1108
	.uleb128 .LVU1109
	.uleb128 .LVU1109
	.uleb128 .LVU1114
	.uleb128 .LVU1114
	.uleb128 .LVU1116
	.uleb128 .LVU1116
	.uleb128 .LVU1128
.LLST90:
	.quad	.LVL446
	.quad	.LVL447
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL447
	.quad	.LVL449
	.value	0x1
	.byte	0x5d
	.quad	.LVL449
	.quad	.LVL450
	.value	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL450
	.quad	.LVL455
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS91:
	.uleb128 .LVU1109
	.uleb128 .LVU1112
.LLST91:
	.quad	.LVL447
	.quad	.LVL448
	.value	0xd
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x98
	.byte	0x1e
	.byte	0x91
	.sleb128 -568
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS92:
	.uleb128 .LVU1109
	.uleb128 .LVU1112
.LLST92:
	.quad	.LVL447
	.quad	.LVL448
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS93:
	.uleb128 .LVU1124
	.uleb128 .LVU1127
.LLST93:
	.quad	.LVL453
	.quad	.LVL454
	.value	0xd
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x98
	.byte	0x1e
	.byte	0x91
	.sleb128 -568
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS94:
	.uleb128 .LVU1124
	.uleb128 .LVU1127
.LLST94:
	.quad	.LVL453
	.quad	.LVL454
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS95:
	.uleb128 .LVU892
	.uleb128 .LVU896
	.uleb128 .LVU1128
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1170
	.uleb128 .LVU1181
	.uleb128 .LVU1185
.LLST95:
	.quad	.LVL364
	.quad	.LVL364
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	.LVL455
	.quad	.LVL463
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	.LVL470
	.quad	.LVL476
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	.LVL477
	.quad	.LVL478
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS96:
	.uleb128 .LVU892
	.uleb128 .LVU895
	.uleb128 .LVU1128
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1170
	.uleb128 .LVU1181
	.uleb128 .LVU1185
.LLST96:
	.quad	.LVL364
	.quad	.LVL364
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL455
	.quad	.LVL463
	.value	0x1
	.byte	0x53
	.quad	.LVL470
	.quad	.LVL476
	.value	0x1
	.byte	0x53
	.quad	.LVL477
	.quad	.LVL478
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS97:
	.uleb128 .LVU894
	.uleb128 .LVU895
	.uleb128 .LVU895
	.uleb128 .LVU896
	.uleb128 .LVU1128
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1161
	.uleb128 .LVU1161
	.uleb128 .LVU1169
	.uleb128 .LVU1183
	.uleb128 .LVU1185
.LLST97:
	.quad	.LVL364
	.quad	.LVL364
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL364
	.quad	.LVL364
	.value	0x1
	.byte	0x52
	.quad	.LVL455
	.quad	.LVL463
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL470
	.quad	.LVL472
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL472
	.quad	.LVL475
	.value	0x1
	.byte	0x52
	.quad	.LVL477
	.quad	.LVL478
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS98:
	.uleb128 .LVU1132
	.uleb128 .LVU1136
	.uleb128 .LVU1136
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1170
.LLST98:
	.quad	.LVL456
	.quad	.LVL457
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL457
	.quad	.LVL463
	.value	0x1
	.byte	0x55
	.quad	.LVL470
	.quad	.LVL476
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS99:
	.uleb128 .LVU1132
	.uleb128 .LVU1136
	.uleb128 .LVU1148
	.uleb128 .LVU1149
	.uleb128 .LVU1149
	.uleb128 .LVU1150
	.uleb128 .LVU1165
	.uleb128 .LVU1166
.LLST99:
	.quad	.LVL456
	.quad	.LVL457
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL461
	.quad	.LVL462
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 56
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	.LVL462
	.quad	.LVL463
	.value	0x1
	.byte	0x50
	.quad	.LVL473
	.quad	.LVL474
	.value	0xc
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS100:
	.uleb128 .LVU1132
	.uleb128 .LVU1136
	.uleb128 .LVU1136
	.uleb128 .LVU1150
	.uleb128 .LVU1158
	.uleb128 .LVU1160
.LLST100:
	.quad	.LVL456
	.quad	.LVL457
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL457
	.quad	.LVL463
	.value	0x1
	.byte	0x52
	.quad	.LVL470
	.quad	.LVL471
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LVUS113:
	.uleb128 .LVU1047
	.uleb128 .LVU1059
.LLST113:
	.quad	.LVL425
	.quad	.LVL428
	.value	0x3
	.byte	0x91
	.sleb128 -568
	.quad	0
	.quad	0
.LVUS114:
	.uleb128 .LVU1047
	.uleb128 .LVU1059
.LLST114:
	.quad	.LVL425
	.quad	.LVL428
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU455
	.uleb128 .LVU455
	.uleb128 .LVU459
	.uleb128 .LVU459
	.uleb128 0
.LLST14:
	.quad	.LVL44
	.quad	.LVL46
	.value	0x1
	.byte	0x55
	.quad	.LVL46
	.quad	.LVL177
	.value	0x4
	.byte	0x91
	.sleb128 -16532
	.quad	.LVL177
	.quad	.LVL180
	.value	0x1
	.byte	0x55
	.quad	.LVL180
	.quad	.LFE172
	.value	0x4
	.byte	0x91
	.sleb128 -16532
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU455
	.uleb128 .LVU455
	.uleb128 .LVU458
	.uleb128 .LVU458
	.uleb128 0
.LLST15:
	.quad	.LVL44
	.quad	.LVL46
	.value	0x1
	.byte	0x54
	.quad	.LVL46
	.quad	.LVL177
	.value	0x4
	.byte	0x91
	.sleb128 -16504
	.quad	.LVL177
	.quad	.LVL179
	.value	0x1
	.byte	0x54
	.quad	.LVL179
	.quad	.LFE172
	.value	0x4
	.byte	0x91
	.sleb128 -16504
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU455
	.uleb128 .LVU455
	.uleb128 .LVU457
	.uleb128 .LVU457
	.uleb128 .LVU461
	.uleb128 .LVU461
	.uleb128 .LVU525
	.uleb128 .LVU525
	.uleb128 .LVU534
	.uleb128 .LVU534
	.uleb128 .LVU548
	.uleb128 .LVU548
	.uleb128 .LVU553
	.uleb128 .LVU553
	.uleb128 .LVU555
	.uleb128 .LVU555
	.uleb128 .LVU568
	.uleb128 .LVU568
	.uleb128 .LVU572
	.uleb128 .LVU572
	.uleb128 .LVU578
	.uleb128 .LVU578
	.uleb128 .LVU617
	.uleb128 .LVU617
	.uleb128 .LVU620
	.uleb128 .LVU620
	.uleb128 .LVU637
	.uleb128 .LVU637
	.uleb128 .LVU640
	.uleb128 .LVU640
	.uleb128 0
.LLST16:
	.quad	.LVL44
	.quad	.LVL46
	.value	0x1
	.byte	0x51
	.quad	.LVL46
	.quad	.LVL55
	.value	0x1
	.byte	0x53
	.quad	.LVL55
	.quad	.LVL56
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL63
	.value	0x1
	.byte	0x53
	.quad	.LVL63
	.quad	.LVL75
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL75
	.quad	.LVL77
	.value	0x1
	.byte	0x53
	.quad	.LVL77
	.quad	.LVL103
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL103
	.quad	.LVL104
	.value	0x1
	.byte	0x53
	.quad	.LVL104
	.quad	.LVL136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL136
	.quad	.LVL145
	.value	0x1
	.byte	0x53
	.quad	.LVL145
	.quad	.LVL177
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL177
	.quad	.LVL178
	.value	0x1
	.byte	0x51
	.quad	.LVL178
	.quad	.LVL182
	.value	0x1
	.byte	0x53
	.quad	.LVL182
	.quad	.LVL215
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL215
	.quad	.LVL218
	.value	0x1
	.byte	0x53
	.quad	.LVL218
	.quad	.LVL223
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL223
	.quad	.LVL226
	.value	0x1
	.byte	0x53
	.quad	.LVL226
	.quad	.LVL227
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL227
	.quad	.LVL232
	.value	0x1
	.byte	0x53
	.quad	.LVL232
	.quad	.LVL234
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL234
	.quad	.LVL236
	.value	0x1
	.byte	0x53
	.quad	.LVL236
	.quad	.LVL256
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL256
	.quad	.LVL257
	.value	0x1
	.byte	0x53
	.quad	.LVL257
	.quad	.LVL266
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL266
	.quad	.LVL269
	.value	0x1
	.byte	0x53
	.quad	.LVL269
	.quad	.LFE172
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU123
	.uleb128 .LVU128
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 .LVU331
	.uleb128 .LVU343
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 .LVU356
	.uleb128 .LVU372
	.uleb128 .LVU455
	.uleb128 .LVU455
	.uleb128 .LVU460
	.uleb128 .LVU460
	.uleb128 .LVU461
	.uleb128 .LVU461
	.uleb128 .LVU468
	.uleb128 .LVU495
	.uleb128 .LVU525
	.uleb128 .LVU525
	.uleb128 .LVU534
	.uleb128 .LVU548
	.uleb128 .LVU549
	.uleb128 .LVU555
	.uleb128 .LVU559
	.uleb128 .LVU559
	.uleb128 .LVU561
	.uleb128 .LVU561
	.uleb128 .LVU578
	.uleb128 .LVU578
	.uleb128 .LVU617
	.uleb128 .LVU617
	.uleb128 .LVU620
	.uleb128 .LVU620
	.uleb128 .LVU637
	.uleb128 .LVU637
	.uleb128 .LVU640
.LLST17:
	.quad	.LVL44
	.quad	.LVL46
	.value	0x1
	.byte	0x52
	.quad	.LVL46
	.quad	.LVL52
	.value	0x1
	.byte	0x56
	.quad	.LVL56
	.quad	.LVL62
	.value	0x1
	.byte	0x56
	.quad	.LVL62
	.quad	.LVL75
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL75
	.quad	.LVL77
	.value	0x1
	.byte	0x56
	.quad	.LVL77
	.quad	.LVL103
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL103
	.quad	.LVL105
	.value	0x1
	.byte	0x56
	.quad	.LVL105
	.quad	.LVL132
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL136
	.quad	.LVL139
	.value	0x1
	.byte	0x56
	.quad	.LVL139
	.quad	.LVL140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL145
	.quad	.LVL177
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL177
	.quad	.LVL181-1
	.value	0x1
	.byte	0x52
	.quad	.LVL181-1
	.quad	.LVL182
	.value	0x1
	.byte	0x56
	.quad	.LVL182
	.quad	.LVL187
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL195
	.quad	.LVL215
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL215
	.quad	.LVL218
	.value	0x1
	.byte	0x56
	.quad	.LVL223
	.quad	.LVL224
	.value	0x1
	.byte	0x56
	.quad	.LVL227
	.quad	.LVL229
	.value	0x1
	.byte	0x56
	.quad	.LVL229
	.quad	.LVL230
	.value	0x1
	.byte	0x50
	.quad	.LVL230
	.quad	.LVL236
	.value	0x1
	.byte	0x56
	.quad	.LVL236
	.quad	.LVL256
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL256
	.quad	.LVL257
	.value	0x1
	.byte	0x56
	.quad	.LVL257
	.quad	.LVL266
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL266
	.quad	.LVL269
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU98
	.uleb128 .LVU462
	.uleb128 .LVU462
	.uleb128 .LVU495
	.uleb128 .LVU495
	.uleb128 .LVU501
	.uleb128 .LVU501
	.uleb128 .LVU503
	.uleb128 .LVU503
	.uleb128 .LVU508
	.uleb128 .LVU508
	.uleb128 .LVU513
	.uleb128 .LVU513
	.uleb128 .LVU522
	.uleb128 .LVU522
	.uleb128 .LVU525
	.uleb128 .LVU525
	.uleb128 .LVU545
	.uleb128 .LVU545
	.uleb128 .LVU548
	.uleb128 .LVU548
	.uleb128 .LVU634
	.uleb128 .LVU634
	.uleb128 .LVU635
	.uleb128 .LVU635
	.uleb128 .LVU640
	.uleb128 .LVU640
	.uleb128 0
.LLST18:
	.quad	.LVL45
	.quad	.LVL183
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL183
	.quad	.LVL195
	.value	0x4
	.byte	0x91
	.sleb128 -16552
	.quad	.LVL195
	.quad	.LVL199
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL199
	.quad	.LVL200
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL200
	.quad	.LVL204
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL204
	.quad	.LVL207
	.value	0x4
	.byte	0x91
	.sleb128 -16552
	.quad	.LVL207
	.quad	.LVL214
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL214
	.quad	.LVL215
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL215
	.quad	.LVL222
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL222
	.quad	.LVL223
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL223
	.quad	.LVL263
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL263
	.quad	.LVL264
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL264
	.quad	.LVL269
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL269
	.quad	.LFE172
	.value	0x4
	.byte	0x91
	.sleb128 -16552
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU155
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU250
	.uleb128 .LVU259
	.uleb128 .LVU269
	.uleb128 .LVU331
	.uleb128 .LVU336
	.uleb128 .LVU338
	.uleb128 .LVU343
	.uleb128 .LVU372
	.uleb128 .LVU426
	.uleb128 .LVU426
	.uleb128 .LVU434
	.uleb128 .LVU434
	.uleb128 .LVU435
	.uleb128 .LVU435
	.uleb128 .LVU444
	.uleb128 .LVU444
	.uleb128 .LVU452
	.uleb128 .LVU461
	.uleb128 .LVU462
	.uleb128 .LVU495
	.uleb128 .LVU497
	.uleb128 .LVU503
	.uleb128 .LVU505
	.uleb128 .LVU513
	.uleb128 .LVU514
	.uleb128 .LVU534
	.uleb128 .LVU539
	.uleb128 .LVU581
	.uleb128 .LVU591
	.uleb128 .LVU620
	.uleb128 .LVU628
.LLST19:
	.quad	.LVL66
	.quad	.LVL68
	.value	0x1
	.byte	0x50
	.quad	.LVL68
	.quad	.LVL71
	.value	0x1
	.byte	0x5d
	.quad	.LVL71
	.quad	.LVL75
	.value	0x1
	.byte	0x5e
	.quad	.LVL77
	.quad	.LVL85
	.value	0x1
	.byte	0x5e
	.quad	.LVL85
	.quad	.LVL86
	.value	0x1
	.byte	0x5d
	.quad	.LVL86
	.quad	.LVL103
	.value	0x1
	.byte	0x5e
	.quad	.LVL108
	.quad	.LVL112
	.value	0x1
	.byte	0x50
	.quad	.LVL132
	.quad	.LVL133
	.value	0x1
	.byte	0x50
	.quad	.LVL134
	.quad	.LVL136
	.value	0x1
	.byte	0x50
	.quad	.LVL145
	.quad	.LVL165
	.value	0x1
	.byte	0x5e
	.quad	.LVL165
	.quad	.LVL166
	.value	0x1
	.byte	0x5d
	.quad	.LVL166
	.quad	.LVL167
	.value	0x4
	.byte	0xa
	.value	0x3fff
	.byte	0x9f
	.quad	.LVL167
	.quad	.LVL170
	.value	0x1
	.byte	0x5d
	.quad	.LVL170
	.quad	.LVL175
	.value	0x1
	.byte	0x5e
	.quad	.LVL182
	.quad	.LVL183
	.value	0x1
	.byte	0x50
	.quad	.LVL195
	.quad	.LVL196-1
	.value	0x1
	.byte	0x50
	.quad	.LVL200
	.quad	.LVL201
	.value	0x1
	.byte	0x50
	.quad	.LVL207
	.quad	.LVL208
	.value	0x1
	.byte	0x50
	.quad	.LVL218
	.quad	.LVL220-1
	.value	0x1
	.byte	0x50
	.quad	.LVL237
	.quad	.LVL241
	.value	0x1
	.byte	0x50
	.quad	.LVL257
	.quad	.LVL261-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU105
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU239
	.uleb128 .LVU240
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU441
	.uleb128 .LVU444
	.uleb128 .LVU455
	.uleb128 .LVU461
	.uleb128 .LVU490
	.uleb128 .LVU490
	.uleb128 .LVU494
	.uleb128 .LVU494
	.uleb128 .LVU495
	.uleb128 .LVU495
	.uleb128 .LVU525
	.uleb128 .LVU525
	.uleb128 .LVU578
	.uleb128 .LVU578
	.uleb128 .LVU595
	.uleb128 .LVU595
	.uleb128 .LVU604
	.uleb128 .LVU604
	.uleb128 .LVU606
	.uleb128 .LVU606
	.uleb128 .LVU617
	.uleb128 .LVU617
	.uleb128 .LVU620
	.uleb128 .LVU620
	.uleb128 .LVU637
	.uleb128 .LVU637
	.uleb128 .LVU640
	.uleb128 .LVU640
	.uleb128 0
.LLST20:
	.quad	.LVL46
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL75
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL75
	.quad	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL94
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL95
	.quad	.LVL103
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL103
	.quad	.LVL107
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL107
	.quad	.LVL132
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL132
	.quad	.LVL145
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL145
	.quad	.LVL169
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL170
	.quad	.LVL177
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL182
	.quad	.LVL190
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL190
	.quad	.LVL194
	.value	0x1
	.byte	0x5e
	.quad	.LVL194
	.quad	.LVL195
	.value	0x4
	.byte	0x91
	.sleb128 -16560
	.quad	.LVL195
	.quad	.LVL215
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL215
	.quad	.LVL236
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL236
	.quad	.LVL242
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL242
	.quad	.LVL248
	.value	0x1
	.byte	0x51
	.quad	.LVL248
	.quad	.LVL249
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL249
	.quad	.LVL256
	.value	0x1
	.byte	0x5c
	.quad	.LVL256
	.quad	.LVL257
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL257
	.quad	.LVL266
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL266
	.quad	.LVL269
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL269
	.quad	.LFE172
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU105
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU234
	.uleb128 .LVU236
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU323
	.uleb128 .LVU323
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU441
	.uleb128 .LVU444
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 .LVU455
	.uleb128 .LVU461
	.uleb128 .LVU468
	.uleb128 .LVU468
	.uleb128 .LVU493
	.uleb128 .LVU495
	.uleb128 .LVU503
	.uleb128 .LVU503
	.uleb128 .LVU508
	.uleb128 .LVU508
	.uleb128 .LVU513
	.uleb128 .LVU513
	.uleb128 .LVU517
	.uleb128 .LVU517
	.uleb128 .LVU525
	.uleb128 .LVU525
	.uleb128 .LVU640
	.uleb128 .LVU640
	.uleb128 0
.LLST21:
	.quad	.LVL46
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL75
	.value	0x4
	.byte	0x91
	.sleb128 -16544
	.quad	.LVL75
	.quad	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL91
	.value	0x4
	.byte	0x91
	.sleb128 -16544
	.quad	.LVL92
	.quad	.LVL103
	.value	0x4
	.byte	0x91
	.sleb128 -16544
	.quad	.LVL103
	.quad	.LVL107
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL107
	.quad	.LVL112
	.value	0x1
	.byte	0x56
	.quad	.LVL112
	.quad	.LVL127
	.value	0x1
	.byte	0x5c
	.quad	.LVL127
	.quad	.LVL128
	.value	0x1
	.byte	0x56
	.quad	.LVL128
	.quad	.LVL132
	.value	0x1
	.byte	0x5c
	.quad	.LVL132
	.quad	.LVL145
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL145
	.quad	.LVL169
	.value	0x4
	.byte	0x91
	.sleb128 -16544
	.quad	.LVL170
	.quad	.LVL175
	.value	0x4
	.byte	0x91
	.sleb128 -16544
	.quad	.LVL175
	.quad	.LVL177
	.value	0x1
	.byte	0x5c
	.quad	.LVL182
	.quad	.LVL187
	.value	0x4
	.byte	0x91
	.sleb128 -16544
	.quad	.LVL187
	.quad	.LVL193
	.value	0x1
	.byte	0x5d
	.quad	.LVL195
	.quad	.LVL200
	.value	0x4
	.byte	0x91
	.sleb128 -16544
	.quad	.LVL200
	.quad	.LVL204
	.value	0x1
	.byte	0x56
	.quad	.LVL204
	.quad	.LVL207
	.value	0x1
	.byte	0x5d
	.quad	.LVL207
	.quad	.LVL211
	.value	0x1
	.byte	0x56
	.quad	.LVL211
	.quad	.LVL215
	.value	0x1
	.byte	0x5d
	.quad	.LVL215
	.quad	.LVL269
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL269
	.quad	.LFE172
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU105
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU441
	.uleb128 .LVU444
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 .LVU455
	.uleb128 .LVU461
	.uleb128 .LVU491
	.uleb128 .LVU495
	.uleb128 .LVU503
	.uleb128 .LVU503
	.uleb128 .LVU578
	.uleb128 .LVU617
	.uleb128 .LVU620
	.uleb128 .LVU637
	.uleb128 .LVU640
	.uleb128 .LVU640
	.uleb128 0
.LLST22:
	.quad	.LVL46
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL75
	.value	0x1
	.byte	0x53
	.quad	.LVL75
	.quad	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL103
	.value	0x1
	.byte	0x53
	.quad	.LVL103
	.quad	.LVL145
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL145
	.quad	.LVL169
	.value	0x1
	.byte	0x53
	.quad	.LVL170
	.quad	.LVL175
	.value	0x1
	.byte	0x53
	.quad	.LVL175
	.quad	.LVL177
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL182
	.quad	.LVL191
	.value	0x1
	.byte	0x53
	.quad	.LVL195
	.quad	.LVL200
	.value	0x1
	.byte	0x53
	.quad	.LVL200
	.quad	.LVL236
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL256
	.quad	.LVL257
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL266
	.quad	.LVL269
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL269
	.quad	.LFE172
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU105
	.uleb128 .LVU125
	.uleb128 .LVU128
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU165
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU250
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU266
	.uleb128 .LVU331
	.uleb128 .LVU340
	.uleb128 .LVU340
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU372
	.uleb128 .LVU461
	.uleb128 .LVU525
	.uleb128 .LVU525
	.uleb128 .LVU534
	.uleb128 .LVU534
	.uleb128 .LVU538
	.uleb128 .LVU538
	.uleb128 .LVU548
	.uleb128 .LVU548
	.uleb128 .LVU549
	.uleb128 .LVU555
	.uleb128 .LVU578
	.uleb128 .LVU578
	.uleb128 .LVU588
	.uleb128 .LVU617
	.uleb128 .LVU620
	.uleb128 .LVU620
	.uleb128 .LVU635
	.uleb128 .LVU637
	.uleb128 .LVU640
	.uleb128 .LVU640
	.uleb128 0
.LLST23:
	.quad	.LVL46
	.quad	.LVL53
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL69
	.value	0x4
	.byte	0x91
	.sleb128 -16520
	.quad	.LVL75
	.quad	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL103
	.quad	.LVL107
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL107
	.quad	.LVL110
	.value	0x4
	.byte	0x91
	.sleb128 -16520
	.quad	.LVL132
	.quad	.LVL135
	.value	0x1
	.byte	0x53
	.quad	.LVL135
	.quad	.LVL136
	.value	0x4
	.byte	0x91
	.sleb128 -16520
	.quad	.LVL136
	.quad	.LVL144
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL144
	.quad	.LVL145
	.value	0x1
	.byte	0x5c
	.quad	.LVL182
	.quad	.LVL215
	.value	0x4
	.byte	0x91
	.sleb128 -16520
	.quad	.LVL215
	.quad	.LVL218
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL218
	.quad	.LVL219
	.value	0x1
	.byte	0x53
	.quad	.LVL219
	.quad	.LVL223
	.value	0x4
	.byte	0x91
	.sleb128 -16520
	.quad	.LVL223
	.quad	.LVL224
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL227
	.quad	.LVL236
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL236
	.quad	.LVL239
	.value	0x4
	.byte	0x91
	.sleb128 -16520
	.quad	.LVL256
	.quad	.LVL257
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL257
	.quad	.LVL264
	.value	0x4
	.byte	0x91
	.sleb128 -16520
	.quad	.LVL266
	.quad	.LVL269
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL269
	.quad	.LFE172
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU105
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU441
	.uleb128 .LVU444
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 .LVU455
	.uleb128 .LVU461
	.uleb128 .LVU466
	.uleb128 .LVU466
	.uleb128 .LVU492
	.uleb128 .LVU495
	.uleb128 .LVU503
	.uleb128 .LVU503
	.uleb128 .LVU525
	.uleb128 .LVU525
	.uleb128 .LVU640
	.uleb128 .LVU640
	.uleb128 0
.LLST24:
	.quad	.LVL46
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL75
	.value	0x4
	.byte	0x91
	.sleb128 -16528
	.quad	.LVL75
	.quad	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL89
	.value	0x4
	.byte	0x91
	.sleb128 -16528
	.quad	.LVL89
	.quad	.LVL90
	.value	0x1
	.byte	0x5c
	.quad	.LVL90
	.quad	.LVL103
	.value	0x4
	.byte	0x91
	.sleb128 -16528
	.quad	.LVL103
	.quad	.LVL107
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL107
	.quad	.LVL111
	.value	0x1
	.byte	0x5c
	.quad	.LVL111
	.quad	.LVL132
	.value	0x1
	.byte	0x5f
	.quad	.LVL132
	.quad	.LVL145
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL145
	.quad	.LVL169
	.value	0x4
	.byte	0x91
	.sleb128 -16528
	.quad	.LVL170
	.quad	.LVL175
	.value	0x4
	.byte	0x91
	.sleb128 -16528
	.quad	.LVL175
	.quad	.LVL177
	.value	0x1
	.byte	0x5f
	.quad	.LVL182
	.quad	.LVL186
	.value	0x4
	.byte	0x91
	.sleb128 -16528
	.quad	.LVL186
	.quad	.LVL192
	.value	0x1
	.byte	0x5c
	.quad	.LVL195
	.quad	.LVL200
	.value	0x4
	.byte	0x91
	.sleb128 -16528
	.quad	.LVL200
	.quad	.LVL215
	.value	0x1
	.byte	0x5c
	.quad	.LVL215
	.quad	.LVL269
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL269
	.quad	.LFE172
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU109
	.uleb128 .LVU123
	.uleb128 .LVU128
	.uleb128 .LVU141
	.uleb128 .LVU250
	.uleb128 .LVU255
	.uleb128 .LVU343
	.uleb128 .LVU348
	.uleb128 .LVU525
	.uleb128 .LVU534
	.uleb128 .LVU572
	.uleb128 .LVU578
	.uleb128 .LVU617
	.uleb128 .LVU620
	.uleb128 .LVU638
	.uleb128 .LVU640
.LLST25:
	.quad	.LVL48
	.quad	.LVL52
	.value	0x1
	.byte	0x5c
	.quad	.LVL56
	.quad	.LVL60
	.value	0x1
	.byte	0x5c
	.quad	.LVL103
	.quad	.LVL106
	.value	0x1
	.byte	0x5c
	.quad	.LVL136
	.quad	.LVL137
	.value	0x1
	.byte	0x5c
	.quad	.LVL215
	.quad	.LVL218
	.value	0x1
	.byte	0x5c
	.quad	.LVL234
	.quad	.LVL236
	.value	0x1
	.byte	0x5c
	.quad	.LVL256
	.quad	.LVL257
	.value	0x1
	.byte	0x5c
	.quad	.LVL267
	.quad	.LVL269
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU111
	.uleb128 .LVU186
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU455
	.uleb128 .LVU461
	.uleb128 0
.LLST26:
	.quad	.LVL49
	.quad	.LVL75
	.value	0x4
	.byte	0x91
	.sleb128 -16493
	.quad	.LVL76
	.quad	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL177
	.value	0x4
	.byte	0x91
	.sleb128 -16493
	.quad	.LVL182
	.quad	.LFE172
	.value	0x4
	.byte	0x91
	.sleb128 -16493
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU114
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU132
	.uleb128 .LVU331
	.uleb128 .LVU372
	.uleb128 .LVU525
	.uleb128 .LVU640
.LLST27:
	.quad	.LVL50
	.quad	.LVL56
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL57
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL132
	.quad	.LVL145
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL215
	.quad	.LVL269
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU104
	.uleb128 .LVU455
	.uleb128 .LVU461
	.uleb128 0
.LLST28:
	.quad	.LVL46
	.quad	.LVL177
	.value	0x4
	.byte	0x91
	.sleb128 -16488
	.quad	.LVL182
	.quad	.LFE172
	.value	0x4
	.byte	0x91
	.sleb128 -16488
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 .LVU118
	.uleb128 .LVU125
	.uleb128 .LVU343
	.uleb128 .LVU372
	.uleb128 .LVU525
	.uleb128 .LVU534
	.uleb128 .LVU548
	.uleb128 .LVU549
	.uleb128 .LVU549
	.uleb128 .LVU555
	.uleb128 .LVU555
	.uleb128 .LVU572
	.uleb128 .LVU637
	.uleb128 .LVU638
.LLST29:
	.quad	.LVL51
	.quad	.LVL53
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL136
	.quad	.LVL145
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL215
	.quad	.LVL218
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL223
	.quad	.LVL224
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL224
	.quad	.LVL227
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL227
	.quad	.LVL234
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL266
	.quad	.LVL267
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 .LVU351
	.uleb128 .LVU362
	.uleb128 .LVU362
	.uleb128 .LVU370
	.uleb128 .LVU548
	.uleb128 .LVU552
	.uleb128 .LVU555
	.uleb128 .LVU567
	.uleb128 .LVU567
	.uleb128 .LVU570
	.uleb128 .LVU637
	.uleb128 .LVU638
.LLST31:
	.quad	.LVL138
	.quad	.LVL141
	.value	0x1
	.byte	0x5c
	.quad	.LVL141
	.quad	.LVL144
	.value	0x4
	.byte	0x91
	.sleb128 -16520
	.quad	.LVL223
	.quad	.LVL225
	.value	0x1
	.byte	0x5c
	.quad	.LVL227
	.quad	.LVL231
	.value	0x1
	.byte	0x5c
	.quad	.LVL231
	.quad	.LVL233
	.value	0x4
	.byte	0x91
	.sleb128 -16520
	.quad	.LVL266
	.quad	.LVL267
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS32:
	.uleb128 .LVU362
	.uleb128 .LVU369
.LLST32:
	.quad	.LVL141
	.quad	.LVL143
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS30:
	.uleb128 .LVU344
	.uleb128 .LVU372
	.uleb128 .LVU548
	.uleb128 .LVU553
	.uleb128 .LVU553
	.uleb128 .LVU555
	.uleb128 .LVU555
	.uleb128 .LVU568
	.uleb128 .LVU568
	.uleb128 .LVU572
	.uleb128 .LVU637
	.uleb128 .LVU638
.LLST30:
	.quad	.LVL136
	.quad	.LVL145
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.quad	.LVL223
	.quad	.LVL226
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.quad	.LVL226
	.quad	.LVL227
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.quad	.LVL227
	.quad	.LVL232
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.quad	.LVL232
	.quad	.LVL234
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.quad	.LVL266
	.quad	.LVL267
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS33:
	.uleb128 .LVU527
	.uleb128 .LVU531
	.uleb128 .LVU531
	.uleb128 .LVU532
	.uleb128 .LVU532
	.uleb128 .LVU532
.LLST33:
	.quad	.LVL215
	.quad	.LVL216
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.quad	.LVL216
	.quad	.LVL217-1
	.value	0x1
	.byte	0x51
	.quad	.LVL217-1
	.quad	.LVL217
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS34:
	.uleb128 .LVU527
	.uleb128 .LVU532
.LLST34:
	.quad	.LVL215
	.quad	.LVL217
	.value	0x4
	.byte	0x91
	.sleb128 -16532
	.quad	0
	.quad	0
.LVUS56:
	.uleb128 .LVU578
	.uleb128 .LVU603
	.uleb128 .LVU604
	.uleb128 .LVU616
	.uleb128 .LVU620
	.uleb128 .LVU623
	.uleb128 .LVU624
	.uleb128 .LVU627
	.uleb128 .LVU635
	.uleb128 .LVU636
.LLST56:
	.quad	.LVL236
	.quad	.LVL247
	.value	0x1
	.byte	0x5d
	.quad	.LVL248
	.quad	.LVL255
	.value	0x1
	.byte	0x5d
	.quad	.LVL257
	.quad	.LVL258
	.value	0x1
	.byte	0x5d
	.quad	.LVL259
	.quad	.LVL260
	.value	0x1
	.byte	0x5d
	.quad	.LVL264
	.quad	.LVL265
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS57:
	.uleb128 .LVU586
	.uleb128 .LVU595
	.uleb128 .LVU595
	.uleb128 .LVU600
	.uleb128 .LVU604
	.uleb128 .LVU606
	.uleb128 .LVU606
	.uleb128 .LVU607
	.uleb128 .LVU607
	.uleb128 .LVU613
	.uleb128 .LVU613
	.uleb128 .LVU614
	.uleb128 .LVU635
	.uleb128 .LVU637
.LLST57:
	.quad	.LVL238
	.quad	.LVL242
	.value	0x1
	.byte	0x5f
	.quad	.LVL242
	.quad	.LVL245
	.value	0x1
	.byte	0x50
	.quad	.LVL248
	.quad	.LVL249
	.value	0x1
	.byte	0x5f
	.quad	.LVL249
	.quad	.LVL250
	.value	0x1
	.byte	0x50
	.quad	.LVL250
	.quad	.LVL252-1
	.value	0x1
	.byte	0x55
	.quad	.LVL252
	.quad	.LVL253
	.value	0x1
	.byte	0x50
	.quad	.LVL264
	.quad	.LVL266
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS58:
	.uleb128 .LVU589
	.uleb128 .LVU617
	.uleb128 .LVU635
	.uleb128 .LVU637
.LLST58:
	.quad	.LVL240
	.quad	.LVL256
	.value	0x1
	.byte	0x56
	.quad	.LVL264
	.quad	.LVL266
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS59:
	.uleb128 .LVU590
	.uleb128 .LVU602
	.uleb128 .LVU604
	.uleb128 .LVU615
	.uleb128 .LVU635
	.uleb128 .LVU637
.LLST59:
	.quad	.LVL240
	.quad	.LVL246
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL248
	.quad	.LVL254
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL264
	.quad	.LVL266
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LVUS35:
	.uleb128 .LVU136
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU232
	.uleb128 .LVU232
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU250
	.uleb128 .LVU372
	.uleb128 .LVU413
	.uleb128 .LVU414
	.uleb128 .LVU441
	.uleb128 .LVU444
	.uleb128 .LVU446
	.uleb128 .LVU447
	.uleb128 .LVU452
	.uleb128 .LVU461
	.uleb128 .LVU468
	.uleb128 .LVU495
	.uleb128 .LVU503
.LLST35:
	.quad	.LVL59
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL75
	.value	0x1
	.byte	0x56
	.quad	.LVL77
	.quad	.LVL90
	.value	0x1
	.byte	0x56
	.quad	.LVL90
	.quad	.LVL92
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL92
	.quad	.LVL103
	.value	0x1
	.byte	0x56
	.quad	.LVL145
	.quad	.LVL158
	.value	0x1
	.byte	0x56
	.quad	.LVL159
	.quad	.LVL169
	.value	0x1
	.byte	0x56
	.quad	.LVL170
	.quad	.LVL171
	.value	0x1
	.byte	0x56
	.quad	.LVL172
	.quad	.LVL175
	.value	0x1
	.byte	0x56
	.quad	.LVL182
	.quad	.LVL187
	.value	0x1
	.byte	0x56
	.quad	.LVL195
	.quad	.LVL200
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS36:
	.uleb128 .LVU137
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU225
	.uleb128 .LVU227
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU250
	.uleb128 .LVU372
	.uleb128 .LVU402
	.uleb128 .LVU403
	.uleb128 .LVU441
	.uleb128 .LVU444
	.uleb128 .LVU451
	.uleb128 .LVU461
	.uleb128 .LVU465
	.uleb128 .LVU465
	.uleb128 .LVU468
	.uleb128 .LVU495
	.uleb128 .LVU503
.LLST36:
	.quad	.LVL59
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL75
	.value	0x1
	.byte	0x5c
	.quad	.LVL77
	.quad	.LVL88
	.value	0x1
	.byte	0x5c
	.quad	.LVL89
	.quad	.LVL90
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL90
	.quad	.LVL97
	.value	0x1
	.byte	0x5c
	.quad	.LVL98
	.quad	.LVL103
	.value	0x1
	.byte	0x5c
	.quad	.LVL145
	.quad	.LVL154
	.value	0x1
	.byte	0x5c
	.quad	.LVL155
	.quad	.LVL169
	.value	0x1
	.byte	0x5c
	.quad	.LVL170
	.quad	.LVL174
	.value	0x1
	.byte	0x5c
	.quad	.LVL182
	.quad	.LVL185
	.value	0x1
	.byte	0x5c
	.quad	.LVL185
	.quad	.LVL187
	.value	0x1
	.byte	0x5f
	.quad	.LVL195
	.quad	.LVL200
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS37:
	.uleb128 .LVU143
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU210
	.uleb128 .LVU216
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU223
	.uleb128 .LVU236
	.uleb128 .LVU237
	.uleb128 .LVU240
	.uleb128 .LVU241
	.uleb128 .LVU245
	.uleb128 .LVU246
	.uleb128 .LVU249
	.uleb128 .LVU250
	.uleb128 .LVU372
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 .LVU389
	.uleb128 .LVU389
	.uleb128 .LVU415
	.uleb128 .LVU415
	.uleb128 .LVU441
	.uleb128 .LVU444
	.uleb128 .LVU452
	.uleb128 .LVU461
	.uleb128 .LVU462
	.uleb128 .LVU495
	.uleb128 .LVU498
.LLST37:
	.quad	.LVL61
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL70
	.value	0x1
	.byte	0x5e
	.quad	.LVL70
	.quad	.LVL71
	.value	0x1
	.byte	0x50
	.quad	.LVL71
	.quad	.LVL74
	.value	0x1
	.byte	0x5d
	.quad	.LVL74
	.quad	.LVL75
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL80
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL84
	.value	0x1
	.byte	0x5d
	.quad	.LVL84
	.quad	.LVL86
	.value	0x1
	.byte	0x50
	.quad	.LVL86
	.quad	.LVL87
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL92
	.quad	.LVL93
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL96
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL99
	.quad	.LVL100
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL102
	.quad	.LVL103
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL145
	.quad	.LVL145
	.value	0x1
	.byte	0x5d
	.quad	.LVL145
	.quad	.LVL149
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL149
	.quad	.LVL160
	.value	0x1
	.byte	0x5d
	.quad	.LVL160
	.quad	.LVL169
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL170
	.quad	.LVL175
	.value	0x1
	.byte	0x5d
	.quad	.LVL182
	.quad	.LVL183
	.value	0x1
	.byte	0x5e
	.quad	.LVL195
	.quad	.LVL197
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS38:
	.uleb128 .LVU144
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU164
	.uleb128 .LVU443
	.uleb128 .LVU444
	.uleb128 .LVU461
	.uleb128 .LVU464
	.uleb128 .LVU495
	.uleb128 .LVU503
.LLST38:
	.quad	.LVL61
	.quad	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL68
	.value	0x1
	.byte	0x5d
	.quad	.LVL169
	.quad	.LVL170
	.value	0x1
	.byte	0x5d
	.quad	.LVL182
	.quad	.LVL184
	.value	0x1
	.byte	0x5d
	.quad	.LVL195
	.quad	.LVL200
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS39:
	.uleb128 .LVU162
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU250
	.uleb128 .LVU372
	.uleb128 .LVU441
	.uleb128 .LVU444
	.uleb128 .LVU452
.LLST39:
	.quad	.LVL67
	.quad	.LVL71
	.value	0x4
	.byte	0x91
	.sleb128 -16512
	.quad	.LVL71
	.quad	.LVL75
	.value	0x1
	.byte	0x5f
	.quad	.LVL77
	.quad	.LVL103
	.value	0x1
	.byte	0x5f
	.quad	.LVL145
	.quad	.LVL169
	.value	0x1
	.byte	0x5f
	.quad	.LVL170
	.quad	.LVL175
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS40:
	.uleb128 .LVU152
	.uleb128 .LVU154
	.uleb128 .LVU377
	.uleb128 .LVU380
	.uleb128 .LVU424
	.uleb128 .LVU439
	.uleb128 .LVU439
	.uleb128 .LVU444
.LLST40:
	.quad	.LVL64
	.quad	.LVL65
	.value	0x1
	.byte	0x50
	.quad	.LVL146
	.quad	.LVL147-1
	.value	0x1
	.byte	0x50
	.quad	.LVL164
	.quad	.LVL168-1
	.value	0x1
	.byte	0x50
	.quad	.LVL168
	.quad	.LVL170
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS41:
	.uleb128 .LVU182
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU210
	.uleb128 .LVU222
	.uleb128 .LVU223
	.uleb128 .LVU236
	.uleb128 .LVU237
	.uleb128 .LVU240
	.uleb128 .LVU241
	.uleb128 .LVU245
	.uleb128 .LVU246
	.uleb128 .LVU249
	.uleb128 .LVU250
	.uleb128 .LVU380
	.uleb128 .LVU387
	.uleb128 .LVU387
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 .LVU396
	.uleb128 .LVU397
	.uleb128 .LVU399
	.uleb128 .LVU399
	.uleb128 .LVU403
	.uleb128 .LVU414
	.uleb128 .LVU415
	.uleb128 .LVU415
	.uleb128 .LVU422
	.uleb128 .LVU447
	.uleb128 .LVU449
	.uleb128 .LVU449
	.uleb128 .LVU452
.LLST41:
	.quad	.LVL73
	.quad	.LVL75
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL80
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL86
	.quad	.LVL87
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL92
	.quad	.LVL93
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL96
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL99
	.quad	.LVL100
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL102
	.quad	.LVL103
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL147
	.quad	.LVL148-1
	.value	0x1
	.byte	0x50
	.quad	.LVL148-1
	.quad	.LVL150
	.value	0x4
	.byte	0x91
	.sleb128 -16552
	.quad	.LVL150
	.quad	.LVL151
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL152
	.quad	.LVL153-1
	.value	0x1
	.byte	0x51
	.quad	.LVL153-1
	.quad	.LVL155
	.value	0x4
	.byte	0x91
	.sleb128 -16552
	.quad	.LVL159
	.quad	.LVL160
	.value	0x1
	.byte	0x51
	.quad	.LVL160
	.quad	.LVL163
	.value	0x1
	.byte	0x50
	.quad	.LVL172
	.quad	.LVL173-1
	.value	0x1
	.byte	0x51
	.quad	.LVL173-1
	.quad	.LVL175
	.value	0x4
	.byte	0x91
	.sleb128 -16552
	.quad	0
	.quad	0
.LVUS42:
	.uleb128 .LVU171
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU186
	.uleb128 .LVU193
	.uleb128 .LVU210
	.uleb128 .LVU222
	.uleb128 .LVU223
	.uleb128 .LVU236
	.uleb128 .LVU237
	.uleb128 .LVU240
	.uleb128 .LVU241
	.uleb128 .LVU245
	.uleb128 .LVU246
	.uleb128 .LVU249
	.uleb128 .LVU250
	.uleb128 .LVU372
	.uleb128 .LVU452
.LLST42:
	.quad	.LVL71
	.quad	.LVL74
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL74
	.quad	.LVL75
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL80
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL86
	.quad	.LVL87
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL92
	.quad	.LVL93
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL96
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL99
	.quad	.LVL100
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL102
	.quad	.LVL103
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL145
	.quad	.LVL175
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS45:
	.uleb128 .LVU449
	.uleb128 .LVU452
.LLST45:
	.quad	.LVL173
	.quad	.LVL175
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS43:
	.uleb128 .LVU174
	.uleb128 .LVU176
.LLST43:
	.quad	.LVL72
	.quad	.LVL72
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LVUS44:
	.uleb128 .LVU406
	.uleb128 .LVU414
	.uleb128 .LVU444
	.uleb128 .LVU447
.LLST44:
	.quad	.LVL157
	.quad	.LVL159
	.value	0x4
	.byte	0x91
	.sleb128 -16492
	.quad	.LVL170
	.quad	.LVL172
	.value	0x4
	.byte	0x91
	.sleb128 -16492
	.quad	0
	.quad	0
.LVUS46:
	.uleb128 .LVU436
	.uleb128 .LVU439
.LLST46:
	.quad	.LVL167
	.quad	.LVL168
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS47:
	.uleb128 .LVU436
	.uleb128 .LVU439
.LLST47:
	.quad	.LVL167
	.quad	.LVL168
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS48:
	.uleb128 .LVU436
	.uleb128 .LVU439
.LLST48:
	.quad	.LVL167
	.quad	.LVL168
	.value	0x4
	.byte	0x91
	.sleb128 -16512
	.quad	0
	.quad	0
.LVUS49:
	.uleb128 .LVU257
	.uleb128 .LVU304
	.uleb128 .LVU305
	.uleb128 .LVU317
	.uleb128 .LVU317
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU331
	.uleb128 .LVU452
	.uleb128 .LVU454
	.uleb128 .LVU503
	.uleb128 .LVU507
	.uleb128 .LVU507
	.uleb128 .LVU508
	.uleb128 .LVU513
	.uleb128 .LVU516
	.uleb128 .LVU516
	.uleb128 .LVU525
.LLST49:
	.quad	.LVL107
	.quad	.LVL119
	.value	0x1
	.byte	0x5d
	.quad	.LVL120
	.quad	.LVL124
	.value	0x1
	.byte	0x5d
	.quad	.LVL124
	.quad	.LVL125
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL125
	.quad	.LVL132
	.value	0x1
	.byte	0x5d
	.quad	.LVL175
	.quad	.LVL176
	.value	0x1
	.byte	0x5d
	.quad	.LVL200
	.quad	.LVL203
	.value	0x1
	.byte	0x5d
	.quad	.LVL203
	.quad	.LVL204
	.value	0x1
	.byte	0x53
	.quad	.LVL207
	.quad	.LVL210
	.value	0x1
	.byte	0x5d
	.quad	.LVL210
	.quad	.LVL215
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS50:
	.uleb128 .LVU257
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU329
	.uleb128 .LVU330
	.uleb128 .LVU331
	.uleb128 .LVU452
	.uleb128 .LVU455
	.uleb128 .LVU503
	.uleb128 .LVU506
	.uleb128 .LVU506
	.uleb128 .LVU508
	.uleb128 .LVU508
	.uleb128 .LVU513
	.uleb128 .LVU513
	.uleb128 .LVU515
	.uleb128 .LVU515
	.uleb128 .LVU518
	.uleb128 .LVU518
	.uleb128 .LVU525
.LLST50:
	.quad	.LVL107
	.quad	.LVL112
	.value	0x1
	.byte	0x53
	.quad	.LVL112
	.quad	.LVL122
	.value	0x1
	.byte	0x56
	.quad	.LVL122
	.quad	.LVL123
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL123
	.quad	.LVL126
	.value	0x1
	.byte	0x56
	.quad	.LVL126
	.quad	.LVL128
	.value	0x1
	.byte	0x53
	.quad	.LVL128
	.quad	.LVL130
	.value	0x1
	.byte	0x56
	.quad	.LVL131
	.quad	.LVL132
	.value	0x1
	.byte	0x56
	.quad	.LVL175
	.quad	.LVL177
	.value	0x1
	.byte	0x56
	.quad	.LVL200
	.quad	.LVL202
	.value	0x1
	.byte	0x53
	.quad	.LVL202
	.quad	.LVL204
	.value	0x1
	.byte	0x50
	.quad	.LVL204
	.quad	.LVL207
	.value	0x1
	.byte	0x56
	.quad	.LVL207
	.quad	.LVL209
	.value	0x1
	.byte	0x53
	.quad	.LVL209
	.quad	.LVL212-1
	.value	0x1
	.byte	0x50
	.quad	.LVL212-1
	.quad	.LVL215
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS51:
	.uleb128 .LVU261
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU331
	.uleb128 .LVU452
	.uleb128 .LVU455
	.uleb128 .LVU513
	.uleb128 .LVU525
.LLST51:
	.quad	.LVL109
	.quad	.LVL112
	.value	0x4
	.byte	0x91
	.sleb128 -16544
	.quad	.LVL112
	.quad	.LVL132
	.value	0x1
	.byte	0x5e
	.quad	.LVL175
	.quad	.LVL177
	.value	0x1
	.byte	0x5e
	.quad	.LVL207
	.quad	.LVL215
	.value	0x4
	.byte	0x91
	.sleb128 -16544
	.quad	0
	.quad	0
.LVUS52:
	.uleb128 .LVU277
	.uleb128 .LVU279
.LLST52:
	.quad	.LVL114
	.quad	.LVL114
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS53:
	.uleb128 .LVU291
	.uleb128 .LVU296
	.uleb128 .LVU296
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 .LVU305
	.uleb128 .LVU452
	.uleb128 .LVU455
.LLST53:
	.quad	.LVL116
	.quad	.LVL117
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL117
	.quad	.LVL118-1
	.value	0x1
	.byte	0x55
	.quad	.LVL118-1
	.quad	.LVL120
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL175
	.quad	.LVL177
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS54:
	.uleb128 .LVU293
	.uleb128 .LVU296
	.uleb128 .LVU296
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 .LVU297
.LLST54:
	.quad	.LVL116
	.quad	.LVL117
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL117
	.quad	.LVL118-1
	.value	0x1
	.byte	0x55
	.quad	.LVL118-1
	.quad	.LVL118
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS55:
	.uleb128 .LVU297
	.uleb128 .LVU305
	.uleb128 .LVU452
	.uleb128 .LVU455
.LLST55:
	.quad	.LVL118
	.quad	.LVL120
	.value	0x1
	.byte	0x50
	.quad	.LVL175
	.quad	.LVL177
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL35
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36-1
	.value	0x1
	.byte	0x55
	.quad	.LVL36-1
	.quad	.LFE171
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x54
	.quad	.LVL2
	.quad	.LVL11
	.value	0x1
	.byte	0x53
	.quad	.LVL11
	.quad	.LVL16
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL16
	.quad	.LFE171
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST2:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x51
	.quad	.LVL2
	.quad	.LVL15
	.value	0x1
	.byte	0x5f
	.quad	.LVL15
	.quad	.LVL16
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL16
	.quad	.LVL35
	.value	0x1
	.byte	0x5f
	.quad	.LVL35
	.quad	.LVL36-1
	.value	0x1
	.byte	0x51
	.quad	.LVL36-1
	.quad	.LFE171
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST3:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x52
	.quad	.LVL2
	.quad	.LVL14
	.value	0x1
	.byte	0x5e
	.quad	.LVL14
	.quad	.LVL16
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL16
	.quad	.LVL35
	.value	0x1
	.byte	0x5e
	.quad	.LVL35
	.quad	.LVL36-1
	.value	0x1
	.byte	0x52
	.quad	.LVL36-1
	.quad	.LFE171
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST4:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x58
	.quad	.LVL2
	.quad	.LVL13
	.value	0x1
	.byte	0x5d
	.quad	.LVL13
	.quad	.LVL16
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL16
	.quad	.LVL35
	.value	0x1
	.byte	0x5d
	.quad	.LVL35
	.quad	.LVL36-1
	.value	0x1
	.byte	0x58
	.quad	.LVL36-1
	.quad	.LFE171
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST5:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x59
	.quad	.LVL2
	.quad	.LVL8
	.value	0x1
	.byte	0x5c
	.quad	.LVL8
	.quad	.LVL16
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	.LVL16
	.quad	.LVL35
	.value	0x1
	.byte	0x5c
	.quad	.LVL35
	.quad	.LVL36-1
	.value	0x1
	.byte	0x59
	.quad	.LVL36-1
	.quad	.LVL40
	.value	0x1
	.byte	0x5c
	.quad	.LVL40
	.quad	.LFE171
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU7
	.uleb128 .LVU35
	.uleb128 .LVU39
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU55
	.uleb128 .LVU57
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU77
	.uleb128 .LVU79
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST6:
	.quad	.LVL1
	.quad	.LVL12
	.value	0x1
	.byte	0x56
	.quad	.LVL16
	.quad	.LVL23
	.value	0x1
	.byte	0x56
	.quad	.LVL23
	.quad	.LVL24-1
	.value	0x1
	.byte	0x54
	.quad	.LVL24
	.quad	.LVL25
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+13857
	.sleb128 0
	.quad	.LVL25
	.quad	.LVL28
	.value	0x1
	.byte	0x56
	.quad	.LVL28
	.quad	.LVL29-1
	.value	0x1
	.byte	0x54
	.quad	.LVL29
	.quad	.LVL30
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+13857
	.sleb128 0
	.quad	.LVL30
	.quad	.LVL33
	.value	0x1
	.byte	0x56
	.quad	.LVL33
	.quad	.LVL34-1
	.value	0x1
	.byte	0x54
	.quad	.LVL34
	.quad	.LVL35
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+13857
	.sleb128 0
	.quad	.LVL35
	.quad	.LVL38
	.value	0x1
	.byte	0x56
	.quad	.LVL38
	.quad	.LVL39-1
	.value	0x1
	.byte	0x54
	.quad	.LVL39-1
	.quad	.LVL39
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.quad	.LVL39
	.quad	.LVL40
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+13857
	.sleb128 0
	.quad	.LVL40
	.quad	.LFE171
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU24
	.uleb128 .LVU27
.LLST7:
	.quad	.LVL8
	.quad	.LVL9
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU29
	.uleb128 .LVU32
	.uleb128 .LVU91
	.uleb128 .LVU92
.LLST8:
	.quad	.LVL9
	.quad	.LVL10
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL42
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU42
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU46
.LLST9:
	.quad	.LVL18
	.quad	.LVL19-1
	.value	0x1
	.byte	0x54
	.quad	.LVL19-1
	.quad	.LVL20
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU50
	.uleb128 .LVU55
.LLST10:
	.quad	.LVL22
	.quad	.LVL24-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU61
	.uleb128 .LVU66
.LLST11:
	.quad	.LVL27
	.quad	.LVL29-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU72
	.uleb128 .LVU77
.LLST12:
	.quad	.LVL32
	.quad	.LVL34-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU83
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU88
.LLST13:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x1
	.byte	0x56
	.quad	.LVL38
	.quad	.LVL39-1
	.value	0x1
	.byte	0x54
	.quad	.LVL39-1
	.quad	.LVL39
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS60:
	.uleb128 0
	.uleb128 .LVU650
	.uleb128 .LVU650
	.uleb128 .LVU659
	.uleb128 .LVU659
	.uleb128 .LVU661
	.uleb128 .LVU661
	.uleb128 0
.LLST60:
	.quad	.LVL271
	.quad	.LVL272
	.value	0x1
	.byte	0x55
	.quad	.LVL272
	.quad	.LVL277
	.value	0x1
	.byte	0x56
	.quad	.LVL277
	.quad	.LVL278
	.value	0x1
	.byte	0x55
	.quad	.LVL278
	.quad	.LFE168
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS61:
	.uleb128 .LVU653
	.uleb128 .LVU656
	.uleb128 .LVU656
	.uleb128 .LVU657
.LLST61:
	.quad	.LVL274
	.quad	.LVL275
	.value	0x1
	.byte	0x50
	.quad	.LVL275
	.quad	.LVL276-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS62:
	.uleb128 .LVU653
	.uleb128 .LVU657
.LLST62:
	.quad	.LVL274
	.quad	.LVL276-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS63:
	.uleb128 .LVU664
	.uleb128 .LVU667
	.uleb128 .LVU667
	.uleb128 .LVU668
.LLST63:
	.quad	.LVL280
	.quad	.LVL281
	.value	0x1
	.byte	0x50
	.quad	.LVL281
	.quad	.LVL282-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS64:
	.uleb128 .LVU686
	.uleb128 .LVU701
	.uleb128 .LVU701
	.uleb128 .LVU716
	.uleb128 .LVU735
	.uleb128 .LVU763
.LLST64:
	.quad	.LVL295
	.quad	.LVL298
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	.LVL298
	.quad	.LVL306
	.value	0x1
	.byte	0x5c
	.quad	.LVL315
	.quad	.LVL327
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS65:
	.uleb128 .LVU687
	.uleb128 .LVU698
.LLST65:
	.quad	.LVL295
	.quad	.LVL297
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS66:
	.uleb128 .LVU712
	.uleb128 .LVU715
	.uleb128 .LVU746
	.uleb128 .LVU749
.LLST66:
	.quad	.LVL304
	.quad	.LVL305-1
	.value	0x1
	.byte	0x50
	.quad	.LVL321
	.quad	.LVL322-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS67:
	.uleb128 .LVU705
	.uleb128 .LVU708
	.uleb128 .LVU708
	.uleb128 .LVU709
	.uleb128 .LVU739
	.uleb128 .LVU742
	.uleb128 .LVU742
	.uleb128 .LVU743
.LLST67:
	.quad	.LVL300
	.quad	.LVL301
	.value	0x1
	.byte	0x50
	.quad	.LVL301
	.quad	.LVL302-1
	.value	0x1
	.byte	0x54
	.quad	.LVL317
	.quad	.LVL318
	.value	0x1
	.byte	0x50
	.quad	.LVL318
	.quad	.LVL319-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS68:
	.uleb128 .LVU720
	.uleb128 .LVU723
	.uleb128 .LVU723
	.uleb128 .LVU724
	.uleb128 .LVU754
	.uleb128 .LVU757
	.uleb128 .LVU757
	.uleb128 .LVU760
.LLST68:
	.quad	.LVL308
	.quad	.LVL309
	.value	0x1
	.byte	0x50
	.quad	.LVL309
	.quad	.LVL310-1
	.value	0x1
	.byte	0x54
	.quad	.LVL324
	.quad	.LVL325
	.value	0x1
	.byte	0x50
	.quad	.LVL325
	.quad	.LVL326-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS69:
	.uleb128 .LVU729
	.uleb128 .LVU732
	.uleb128 .LVU732
	.uleb128 .LVU733
.LLST69:
	.quad	.LVL312
	.quad	.LVL313
	.value	0x1
	.byte	0x50
	.quad	.LVL313
	.quad	.LVL314-1
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
	.quad	.LFB176
	.quad	.LFE176-.LFB176
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB144
	.quad	.LBE144
	.quad	.LBB175
	.quad	.LBE175
	.quad	0
	.quad	0
	.quad	.LBB147
	.quad	.LBE147
	.quad	.LBB150
	.quad	.LBE150
	.quad	0
	.quad	0
	.quad	.LBB151
	.quad	.LBE151
	.quad	.LBB155
	.quad	.LBE155
	.quad	.LBB156
	.quad	.LBE156
	.quad	0
	.quad	0
	.quad	.LBB157
	.quad	.LBE157
	.quad	.LBB161
	.quad	.LBE161
	.quad	.LBB162
	.quad	.LBE162
	.quad	0
	.quad	0
	.quad	.LBB163
	.quad	.LBE163
	.quad	.LBB167
	.quad	.LBE167
	.quad	.LBB168
	.quad	.LBE168
	.quad	0
	.quad	0
	.quad	.LBB169
	.quad	.LBE169
	.quad	.LBB173
	.quad	.LBE173
	.quad	.LBB174
	.quad	.LBE174
	.quad	0
	.quad	0
	.quad	.LBB207
	.quad	.LBE207
	.quad	.LBB218
	.quad	.LBE218
	.quad	.LBB272
	.quad	.LBE272
	.quad	.LBB273
	.quad	.LBE273
	.quad	.LBB280
	.quad	.LBE280
	.quad	.LBB281
	.quad	.LBE281
	.quad	.LBB282
	.quad	.LBE282
	.quad	.LBB283
	.quad	.LBE283
	.quad	.LBB284
	.quad	.LBE284
	.quad	.LBB285
	.quad	.LBE285
	.quad	.LBB286
	.quad	.LBE286
	.quad	0
	.quad	0
	.quad	.LBB210
	.quad	.LBE210
	.quad	.LBB216
	.quad	.LBE216
	.quad	.LBB217
	.quad	.LBE217
	.quad	0
	.quad	0
	.quad	.LBB212
	.quad	.LBE212
	.quad	.LBB215
	.quad	.LBE215
	.quad	0
	.quad	0
	.quad	.LBB219
	.quad	.LBE219
	.quad	.LBB243
	.quad	.LBE243
	.quad	.LBB244
	.quad	.LBE244
	.quad	.LBB245
	.quad	.LBE245
	.quad	.LBB246
	.quad	.LBE246
	.quad	.LBB274
	.quad	.LBE274
	.quad	.LBB276
	.quad	.LBE276
	.quad	.LBB277
	.quad	.LBE277
	.quad	0
	.quad	0
	.quad	.LBB220
	.quad	.LBE220
	.quad	.LBB238
	.quad	.LBE238
	.quad	.LBB239
	.quad	.LBE239
	.quad	.LBB240
	.quad	.LBE240
	.quad	.LBB241
	.quad	.LBE241
	.quad	.LBB242
	.quad	.LBE242
	.quad	0
	.quad	0
	.quad	.LBB221
	.quad	.LBE221
	.quad	.LBB227
	.quad	.LBE227
	.quad	.LBB228
	.quad	.LBE228
	.quad	.LBB229
	.quad	.LBE229
	.quad	.LBB230
	.quad	.LBE230
	.quad	.LBB231
	.quad	.LBE231
	.quad	.LBB235
	.quad	.LBE235
	.quad	.LBB237
	.quad	.LBE237
	.quad	0
	.quad	0
	.quad	.LBB232
	.quad	.LBE232
	.quad	.LBB236
	.quad	.LBE236
	.quad	0
	.quad	0
	.quad	.LBB247
	.quad	.LBE247
	.quad	.LBB268
	.quad	.LBE268
	.quad	.LBB269
	.quad	.LBE269
	.quad	.LBB270
	.quad	.LBE270
	.quad	.LBB271
	.quad	.LBE271
	.quad	.LBB275
	.quad	.LBE275
	.quad	.LBB278
	.quad	.LBE278
	.quad	.LBB279
	.quad	.LBE279
	.quad	0
	.quad	0
	.quad	.LBB248
	.quad	.LBE248
	.quad	.LBB263
	.quad	.LBE263
	.quad	.LBB264
	.quad	.LBE264
	.quad	.LBB265
	.quad	.LBE265
	.quad	.LBB266
	.quad	.LBE266
	.quad	.LBB267
	.quad	.LBE267
	.quad	0
	.quad	0
	.quad	.LBB251
	.quad	.LBE251
	.quad	.LBB260
	.quad	.LBE260
	.quad	.LBB261
	.quad	.LBE261
	.quad	.LBB262
	.quad	.LBE262
	.quad	0
	.quad	0
	.quad	.LBB252
	.quad	.LBE252
	.quad	.LBB255
	.quad	.LBE255
	.quad	0
	.quad	0
	.quad	.LBB256
	.quad	.LBE256
	.quad	.LBB259
	.quad	.LBE259
	.quad	0
	.quad	0
	.quad	.LBB287
	.quad	.LBE287
	.quad	.LBB293
	.quad	.LBE293
	.quad	.LBB294
	.quad	.LBE294
	.quad	.LBB295
	.quad	.LBE295
	.quad	0
	.quad	0
	.quad	.LBB288
	.quad	.LBE288
	.quad	.LBB289
	.quad	.LBE289
	.quad	.LBB290
	.quad	.LBE290
	.quad	.LBB291
	.quad	.LBE291
	.quad	.LBB292
	.quad	.LBE292
	.quad	0
	.quad	0
	.quad	.LBB310
	.quad	.LBE310
	.quad	.LBB313
	.quad	.LBE313
	.quad	0
	.quad	0
	.quad	.LBB314
	.quad	.LBE314
	.quad	.LBB317
	.quad	.LBE317
	.quad	0
	.quad	0
	.quad	.LBB322
	.quad	.LBE322
	.quad	.LBB327
	.quad	.LBE327
	.quad	.LBB339
	.quad	.LBE339
	.quad	.LBB340
	.quad	.LBE340
	.quad	0
	.quad	0
	.quad	.LBB328
	.quad	.LBE328
	.quad	.LBB334
	.quad	.LBE334
	.quad	.LBB341
	.quad	.LBE341
	.quad	.LBB342
	.quad	.LBE342
	.quad	.LBB343
	.quad	.LBE343
	.quad	0
	.quad	0
	.quad	.LBB335
	.quad	.LBE335
	.quad	.LBB338
	.quad	.LBE338
	.quad	0
	.quad	0
	.quad	.LBB379
	.quad	.LBE379
	.quad	.LBB390
	.quad	.LBE390
	.quad	.LBB474
	.quad	.LBE474
	.quad	.LBB479
	.quad	.LBE479
	.quad	.LBB481
	.quad	.LBE481
	.quad	.LBB482
	.quad	.LBE482
	.quad	0
	.quad	0
	.quad	.LBB380
	.quad	.LBE380
	.quad	.LBB383
	.quad	.LBE383
	.quad	0
	.quad	0
	.quad	.LBB385
	.quad	.LBE385
	.quad	.LBB388
	.quad	.LBE388
	.quad	0
	.quad	0
	.quad	.LBB391
	.quad	.LBE391
	.quad	.LBB416
	.quad	.LBE416
	.quad	.LBB427
	.quad	.LBE427
	.quad	.LBB470
	.quad	.LBE470
	.quad	.LBB471
	.quad	.LBE471
	.quad	.LBB472
	.quad	.LBE472
	.quad	.LBB476
	.quad	.LBE476
	.quad	.LBB480
	.quad	.LBE480
	.quad	0
	.quad	0
	.quad	.LBB393
	.quad	.LBE393
	.quad	.LBB400
	.quad	.LBE400
	.quad	.LBB401
	.quad	.LBE401
	.quad	.LBB402
	.quad	.LBE402
	.quad	.LBB408
	.quad	.LBE408
	.quad	0
	.quad	0
	.quad	.LBB417
	.quad	.LBE417
	.quad	.LBB428
	.quad	.LBE428
	.quad	.LBB473
	.quad	.LBE473
	.quad	.LBB475
	.quad	.LBE475
	.quad	.LBB477
	.quad	.LBE477
	.quad	0
	.quad	0
	.quad	.LBB419
	.quad	.LBE419
	.quad	.LBB422
	.quad	.LBE422
	.quad	0
	.quad	0
	.quad	.LBB420
	.quad	.LBE420
	.quad	.LBB421
	.quad	.LBE421
	.quad	0
	.quad	0
	.quad	.LBB429
	.quad	.LBE429
	.quad	.LBB460
	.quad	.LBE460
	.quad	.LBB461
	.quad	.LBE461
	.quad	.LBB462
	.quad	.LBE462
	.quad	.LBB467
	.quad	.LBE467
	.quad	.LBB483
	.quad	.LBE483
	.quad	0
	.quad	0
	.quad	.LBB430
	.quad	.LBE430
	.quad	.LBB455
	.quad	.LBE455
	.quad	.LBB456
	.quad	.LBE456
	.quad	.LBB457
	.quad	.LBE457
	.quad	.LBB458
	.quad	.LBE458
	.quad	.LBB459
	.quad	.LBE459
	.quad	0
	.quad	0
	.quad	.LBB431
	.quad	.LBE431
	.quad	.LBB450
	.quad	.LBE450
	.quad	.LBB451
	.quad	.LBE451
	.quad	.LBB452
	.quad	.LBE452
	.quad	.LBB454
	.quad	.LBE454
	.quad	0
	.quad	0
	.quad	.LBB433
	.quad	.LBE433
	.quad	.LBB445
	.quad	.LBE445
	.quad	0
	.quad	0
	.quad	.LBB434
	.quad	.LBE434
	.quad	.LBB443
	.quad	.LBE443
	.quad	.LBB444
	.quad	.LBE444
	.quad	0
	.quad	0
	.quad	.LBB435
	.quad	.LBE435
	.quad	.LBB439
	.quad	.LBE439
	.quad	.LBB440
	.quad	.LBE440
	.quad	0
	.quad	0
	.quad	.LBB441
	.quad	.LBE441
	.quad	.LBB442
	.quad	.LBE442
	.quad	0
	.quad	0
	.quad	.LBB463
	.quad	.LBE463
	.quad	.LBB466
	.quad	.LBE466
	.quad	0
	.quad	0
	.quad	.LBB469
	.quad	.LBE469
	.quad	.LBB478
	.quad	.LBE478
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB176
	.quad	.LFE176
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF111:
	.string	"__glibc_reserved"
.LASF296:
	.string	"__stream"
.LASF110:
	.string	"st_ctim"
.LASF233:
	.string	"compute_number_width"
.LASF7:
	.string	"size_t"
.LASF25:
	.string	"__value"
.LASF136:
	.string	"GETOPT_HELP_CHAR"
.LASF130:
	.string	"_ISgraph"
.LASF178:
	.string	"chunk"
.LASF106:
	.string	"st_blksize"
.LASF107:
	.string	"st_blocks"
.LASF294:
	.string	"__fmt"
.LASF58:
	.string	"_IO_codecvt"
.LASF221:
	.string	"files_from"
.LASF273:
	.string	"is_basic"
.LASF230:
	.string	"width"
.LASF302:
	.string	"__fxstat"
.LASF38:
	.string	"_IO_save_end"
.LASF342:
	.string	"rpl_mbrtowc"
.LASF361:
	.string	"xset_binary_mode_error"
.LASF11:
	.string	"__gid_t"
.LASF112:
	.string	"_sys_siglist"
.LASF109:
	.string	"st_mtim"
.LASF170:
	.string	"_obstack_chunk"
.LASF72:
	.string	"time_t"
.LASF250:
	.string	"word_separator"
.LASF31:
	.string	"_IO_write_base"
.LASF284:
	.string	"open"
.LASF324:
	.string	"bindtextdomain"
.LASF258:
	.string	"state"
.LASF161:
	.string	"error_one_per_line"
.LASF47:
	.string	"_lock"
.LASF186:
	.string	"extra_arg"
.LASF314:
	.string	"quotearg_n_style_colon"
.LASF232:
	.string	"regular_total"
.LASF96:
	.string	"stat"
.LASF219:
	.string	"nfiles"
.LASF89:
	.string	"__tzname"
.LASF36:
	.string	"_IO_save_base"
.LASF349:
	.string	"__overflow"
.LASF298:
	.string	"quotearg_style"
.LASF311:
	.string	"rpl_fclose"
.LASF297:
	.string	"putchar_unlocked"
.LASF40:
	.string	"_chain"
.LASF242:
	.string	"chars"
.LASF44:
	.string	"_cur_column"
.LASF64:
	.string	"sys_nerr"
.LASF305:
	.string	"fileno"
.LASF22:
	.string	"__wch"
.LASF9:
	.string	"__dev_t"
.LASF184:
	.string	"chunkfun"
.LASF282:
	.string	"__path"
.LASF66:
	.string	"_sys_nerr"
.LASF322:
	.string	"set_program_name"
.LASF173:
	.string	"contents"
.LASF114:
	.string	"__environ"
.LASF214:
	.string	"FILES0_FROM_OPTION"
.LASF329:
	.string	"getenv"
.LASF6:
	.string	"long int"
.LASF332:
	.string	"exit"
.LASF285:
	.string	"memmove"
.LASF207:
	.string	"print_linelength"
.LASF350:
	.string	"strchr"
.LASF85:
	.string	"has_arg"
.LASF303:
	.string	"__fprintf_chk"
.LASF57:
	.string	"_IO_marker"
.LASF267:
	.string	"main"
.LASF365:
	.string	"__memmove_chk"
.LASF183:
	.string	"alignment_mask"
.LASF129:
	.string	"_ISprint"
.LASF271:
	.string	"set_binary_mode"
.LASF301:
	.string	"error"
.LASF88:
	.string	"mbstate_t"
.LASF346:
	.string	"__btowc_alias"
.LASF318:
	.string	"__assert_fail"
.LASF135:
	.string	"__xalloc_count_type"
.LASF167:
	.string	"FADVISE_RANDOM"
.LASF4:
	.string	"signed char"
.LASF18:
	.string	"__blksize_t"
.LASF363:
	.string	"emit_stdin_note"
.LASF73:
	.string	"_IO_FILE"
.LASF91:
	.string	"__timezone"
.LASF59:
	.string	"_IO_wide_data"
.LASF101:
	.string	"st_uid"
.LASF156:
	.string	"AI_ERR_EOF"
.LASF358:
	.string	"__PRETTY_FUNCTION__"
.LASF354:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF310:
	.string	"readtokens0"
.LASF151:
	.string	"quoting_style_args"
.LASF115:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF51:
	.string	"_freeres_list"
.LASF309:
	.string	"readtokens0_init"
.LASF104:
	.string	"st_rdev"
.LASF209:
	.string	"have_read_stdin"
.LASF208:
	.string	"number_width"
.LASF264:
	.string	"format_int"
.LASF362:
	.string	"emit_ancillary_info"
.LASF160:
	.string	"error_message_count"
.LASF20:
	.string	"__syscall_slong_t"
.LASF168:
	.string	"_Bool"
.LASF243:
	.string	"bytes"
.LASF163:
	.string	"FADVISE_SEQUENTIAL"
.LASF21:
	.string	"char"
.LASF293:
	.string	"printf"
.LASF335:
	.string	"readtokens0_free"
.LASF169:
	.string	"is_basic_table"
.LASF357:
	.string	"_IO_lock_t"
.LASF240:
	.string	"lines"
.LASF300:
	.string	"__errno_location"
.LASF331:
	.string	"version_etc"
.LASF347:
	.string	"__ctype_get_mb_cur_max"
.LASF191:
	.string	"obstack_exit_failure"
.LASF94:
	.string	"timezone"
.LASF144:
	.string	"shell_escape_always_quoting_style"
.LASF13:
	.string	"__mode_t"
.LASF292:
	.string	"btowc"
.LASF251:
	.string	"skip_read"
.LASF28:
	.string	"_IO_read_ptr"
.LASF249:
	.string	"mb_word_separator"
.LASF231:
	.string	"minimum_width"
.LASF355:
	.string	"src/wc.c"
.LASF304:
	.string	"strcmp"
.LASF61:
	.string	"stdin"
.LASF263:
	.string	"format_sp_int"
.LASF223:
	.string	"stream"
.LASF65:
	.string	"sys_errlist"
.LASF39:
	.string	"_markers"
.LASF139:
	.string	"program_name"
.LASF235:
	.string	"file"
.LASF133:
	.string	"_ISpunct"
.LASF171:
	.string	"limit"
.LASF248:
	.string	"argv_iter_done"
.LASF146:
	.string	"c_maybe_quoting_style"
.LASF352:
	.string	"fputs_unlocked"
.LASF277:
	.string	"node"
.LASF253:
	.string	"hi_pos"
.LASF164:
	.string	"FADVISE_NOREUSE"
.LASF116:
	.string	"program_invocation_name"
.LASF202:
	.string	"max_line_length"
.LASF48:
	.string	"_offset"
.LASF177:
	.string	"chunk_size"
.LASF102:
	.string	"st_gid"
.LASF280:
	.string	"xnmalloc"
.LASF205:
	.string	"print_chars"
.LASF80:
	.string	"optind"
.LASF338:
	.string	"safe_read"
.LASF149:
	.string	"clocale_quoting_style"
.LASF159:
	.string	"error_print_progname"
.LASF225:
	.string	"skip_file"
.LASF0:
	.string	"long unsigned int"
.LASF269:
	.string	"status"
.LASF188:
	.string	"maybe_empty_object"
.LASF42:
	.string	"_flags2"
.LASF105:
	.string	"st_size"
.LASF30:
	.string	"_IO_read_base"
.LASF196:
	.string	"o_tok"
.LASF179:
	.string	"object_base"
.LASF83:
	.string	"option"
.LASF348:
	.string	"__printf_chk"
.LASF254:
	.string	"long_lines"
.LASF55:
	.string	"_unused2"
.LASF315:
	.string	"__open_alias"
.LASF185:
	.string	"freefun"
.LASF127:
	.string	"_ISxdigit"
.LASF216:
	.string	"argc"
.LASF43:
	.string	"_old_offset"
.LASF276:
	.string	"infomap"
.LASF217:
	.string	"argv"
.LASF289:
	.string	"fstat"
.LASF19:
	.string	"__blkcnt_t"
.LASF141:
	.string	"shell_quoting_style"
.LASF189:
	.string	"alloc_failed"
.LASF12:
	.string	"__ino_t"
.LASF197:
	.string	"o_tok_len"
.LASF364:
	.string	"__stack_chk_fail"
.LASF70:
	.string	"long long int"
.LASF26:
	.string	"__mbstate_t"
.LASF275:
	.string	"program"
.LASF118:
	.string	"Version"
.LASF119:
	.string	"exit_failure"
.LASF77:
	.string	"_gl_cxxalias_dummy"
.LASF157:
	.string	"AI_ERR_MEM"
.LASF224:
	.string	"stdin_only"
.LASF123:
	.string	"_ISupper"
.LASF145:
	.string	"c_quoting_style"
.LASF165:
	.string	"FADVISE_DONTNEED"
.LASF236:
	.string	"wc_file"
.LASF341:
	.string	"__ctype_b_loc"
.LASF132:
	.string	"_IScntrl"
.LASF266:
	.string	"iswnbspace"
.LASF33:
	.string	"_IO_write_end"
.LASF345:
	.string	"iswspace"
.LASF120:
	.string	"uintmax_t"
.LASF195:
	.string	"o_data"
.LASF113:
	.string	"sys_siglist"
.LASF206:
	.string	"print_bytes"
.LASF212:
	.string	"fstatus"
.LASF256:
	.string	"in_word"
.LASF137:
	.string	"GETOPT_VERSION_CHAR"
.LASF34:
	.string	"_IO_buf_base"
.LASF218:
	.string	"optc"
.LASF1:
	.string	"unsigned int"
.LASF246:
	.string	"count_chars"
.LASF252:
	.string	"end_pos"
.LASF176:
	.string	"obstack"
.LASF138:
	.string	"version_etc_copyright"
.LASF274:
	.string	"usable_st_size"
.LASF340:
	.string	"wcwidth"
.LASF152:
	.string	"quoting_style_vals"
.LASF154:
	.string	"argv_iter_err"
.LASF140:
	.string	"literal_quoting_style"
.LASF103:
	.string	"__pad0"
.LASF92:
	.string	"tzname"
.LASF53:
	.string	"__pad5"
.LASF328:
	.string	"setvbuf"
.LASF259:
	.string	"in_shift"
.LASF86:
	.string	"flag"
.LASF260:
	.string	"backup_state"
.LASF193:
	.string	"n_tok"
.LASF211:
	.string	"posixly_correct"
.LASF290:
	.string	"__fd"
.LASF194:
	.string	"tok_len"
.LASF27:
	.string	"_flags"
.LASF279:
	.string	"lc_messages"
.LASF210:
	.string	"page_size"
.LASF180:
	.string	"next_free"
.LASF54:
	.string	"_mode"
.LASF339:
	.string	"memchr"
.LASF366:
	.string	"__builtin___memmove_chk"
.LASF200:
	.string	"total_chars"
.LASF162:
	.string	"FADVISE_NORMAL"
.LASF49:
	.string	"_codecvt"
.LASF24:
	.string	"__count"
.LASF122:
	.string	"LOG10_TIMESPEC_HZ"
.LASF99:
	.string	"st_nlink"
.LASF60:
	.string	"off_t"
.LASF229:
	.string	"argv_iterator"
.LASF166:
	.string	"FADVISE_WILLNEED"
.LASF247:
	.string	"count_complicated"
.LASF261:
	.string	"wide_char"
.LASF237:
	.string	"file_x"
.LASF71:
	.string	"long double"
.LASF353:
	.string	"strncmp"
.LASF336:
	.string	"lseek"
.LASF56:
	.string	"FILE"
.LASF215:
	.string	"longopts"
.LASF97:
	.string	"st_dev"
.LASF330:
	.string	"getopt_long"
.LASF74:
	.string	"timespec"
.LASF333:
	.string	"argv_iter_free"
.LASF23:
	.string	"__wchb"
.LASF192:
	.string	"Tokens"
.LASF125:
	.string	"_ISalpha"
.LASF82:
	.string	"optopt"
.LASF239:
	.string	"bytes_read"
.LASF148:
	.string	"locale_quoting_style"
.LASF78:
	.string	"long long unsigned int"
.LASF203:
	.string	"print_lines"
.LASF131:
	.string	"_ISblank"
.LASF15:
	.string	"__off_t"
.LASF175:
	.string	"extra"
.LASF153:
	.string	"quoting_style"
.LASF134:
	.string	"_ISalnum"
.LASF117:
	.string	"program_invocation_short_name"
.LASF245:
	.string	"count_bytes"
.LASF52:
	.string	"_freeres_buf"
.LASF128:
	.string	"_ISspace"
.LASF222:
	.string	"read_tokens"
.LASF327:
	.string	"getpagesize"
.LASF343:
	.string	"mbsinit"
.LASF81:
	.string	"opterr"
.LASF356:
	.string	"/root/coreutils"
.LASF17:
	.string	"__time_t"
.LASF360:
	.string	"xset_binary_mode"
.LASF199:
	.string	"total_words"
.LASF37:
	.string	"_IO_backup_base"
.LASF323:
	.string	"setlocale"
.LASF46:
	.string	"_shortbuf"
.LASF281:
	.string	"to_uchar"
.LASF319:
	.string	"xalloc_die"
.LASF87:
	.string	"wint_t"
.LASF321:
	.string	"__xstat"
.LASF201:
	.string	"total_bytes"
.LASF359:
	.string	"write_counts"
.LASF142:
	.string	"shell_always_quoting_style"
.LASF16:
	.string	"__off64_t"
.LASF307:
	.string	"fopen"
.LASF187:
	.string	"use_extra_arg"
.LASF181:
	.string	"chunk_limit"
.LASF147:
	.string	"escape_quoting_style"
.LASF35:
	.string	"_IO_buf_end"
.LASF255:
	.string	"plines"
.LASF204:
	.string	"print_words"
.LASF84:
	.string	"name"
.LASF295:
	.string	"fprintf"
.LASF287:
	.string	"__src"
.LASF124:
	.string	"_ISlower"
.LASF278:
	.string	"map_prog"
.LASF227:
	.string	"file_name"
.LASF63:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF174:
	.string	"plain"
.LASF270:
	.string	"mode"
.LASF76:
	.string	"tv_nsec"
.LASF268:
	.string	"usage"
.LASF306:
	.string	"argv_iter_init_stream"
.LASF326:
	.string	"atexit"
.LASF143:
	.string	"shell_escape_quoting_style"
.LASF241:
	.string	"words"
.LASF320:
	.string	"xmalloc"
.LASF45:
	.string	"_vtable_offset"
.LASF67:
	.string	"_sys_errlist"
.LASF8:
	.string	"__uintmax_t"
.LASF286:
	.string	"__dest"
.LASF155:
	.string	"AI_ERR_OK"
.LASF158:
	.string	"AI_ERR_READ"
.LASF121:
	.string	"TIMESPEC_HZ"
.LASF228:
	.string	"file_number"
.LASF313:
	.string	"argv_iter_n_args"
.LASF68:
	.string	"ptrdiff_t"
.LASF90:
	.string	"__daylight"
.LASF234:
	.string	"get_input_fstatus"
.LASF351:
	.string	"umaxtostr"
.LASF100:
	.string	"st_mode"
.LASF10:
	.string	"__uid_t"
.LASF29:
	.string	"_IO_read_end"
.LASF238:
	.string	"current_pos"
.LASF95:
	.string	"getdate_err"
.LASF308:
	.string	"physmem_available"
.LASF337:
	.string	"fdadvise"
.LASF41:
	.string	"_fileno"
.LASF312:
	.string	"argv_iter_init_argv"
.LASF325:
	.string	"textdomain"
.LASF50:
	.string	"_wide_data"
.LASF79:
	.string	"optarg"
.LASF198:
	.string	"total_lines"
.LASF283:
	.string	"__oflag"
.LASF334:
	.string	"free"
.LASF126:
	.string	"_ISdigit"
.LASF299:
	.string	"dcgettext"
.LASF3:
	.string	"short unsigned int"
.LASF62:
	.string	"stdout"
.LASF220:
	.string	"files"
.LASF32:
	.string	"_IO_write_ptr"
.LASF272:
	.string	"__gl_setmode"
.LASF93:
	.string	"daylight"
.LASF317:
	.string	"argv_iter"
.LASF98:
	.string	"st_ino"
.LASF213:
	.string	"failed"
.LASF182:
	.string	"temp"
.LASF14:
	.string	"__nlink_t"
.LASF226:
	.string	"ai_err"
.LASF288:
	.string	"__len"
.LASF291:
	.string	"__statbuf"
.LASF344:
	.string	"iswprint"
.LASF316:
	.string	"close"
.LASF172:
	.string	"prev"
.LASF75:
	.string	"tv_sec"
.LASF262:
	.string	"wide"
.LASF190:
	.string	"obstack_alloc_failed_handler"
.LASF69:
	.string	"wchar_t"
.LASF150:
	.string	"custom_quoting_style"
.LASF257:
	.string	"linepos"
.LASF265:
	.string	"isnbspace"
.LASF108:
	.string	"st_atim"
.LASF244:
	.string	"linelength"
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
