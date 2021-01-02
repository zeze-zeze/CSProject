	.file	"dircolors.c"
	.text
.Ltext0:
	.p2align 4
	.type	append_quoted, @function
append_quoted:
.LVL0:
.LFB138:
	.file 1 "src/dircolors.c"
	.loc 1 196 1 view -0
	.cfi_startproc
	.loc 1 197 3 view .LVU1
	.loc 1 199 3 view .LVU2
	.loc 1 199 9 view .LVU3
	.loc 1 199 10 is_stmt 0 view .LVU4
	movzbl	(%rdi), %eax
	.loc 1 199 9 view .LVU5
	testb	%al, %al
	je	.L25
	.loc 1 196 1 view .LVU6
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$1, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$1, %ebx
	jmp	.L2
.LVL1:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 1 204 11 is_stmt 1 view .LVU7
.LBB58:
	.loc 1 204 11 view .LVU8
	.loc 1 204 11 view .LVU9
.LBE58:
	.loc 1 204 11 view .LVU10
	.loc 1 204 11 view .LVU11
.LBB59:
	cmpq	%rcx, %rdx
	je	.L29
.L8:
	.loc 1 204 11 discriminator 3 view .LVU12
	leaq	1(%rdx), %rax
	movq	%rax, 24+lsc_obstack(%rip)
	movb	$39, (%rdx)
.LBE59:
	.loc 1 205 11 discriminator 3 view .LVU13
.LBB60:
	.loc 1 205 11 discriminator 3 view .LVU14
.LVL2:
	.loc 1 205 11 discriminator 3 view .LVU15
.LBB61:
	.loc 1 205 11 discriminator 3 view .LVU16
	.loc 1 205 11 discriminator 3 view .LVU17
	movq	24+lsc_obstack(%rip), %rax
.LBE61:
	cmpq	%rax, 32+lsc_obstack(%rip)
	je	.L30
.L9:
	.loc 1 205 11 discriminator 3 view .LVU18
	leaq	1(%rax), %rdx
	movq	%rdx, 24+lsc_obstack(%rip)
	movb	$92, (%rax)
.LBE60:
	.loc 1 206 11 discriminator 3 view .LVU19
.LBB62:
	.loc 1 206 11 discriminator 3 view .LVU20
.LVL3:
	.loc 1 206 11 discriminator 3 view .LVU21
.LBB63:
	.loc 1 206 11 discriminator 3 view .LVU22
	.loc 1 206 11 discriminator 3 view .LVU23
	movq	24+lsc_obstack(%rip), %rax
.LBE63:
	cmpq	%rax, 32+lsc_obstack(%rip)
	je	.L31
.L10:
	.loc 1 206 11 discriminator 3 view .LVU24
	leaq	1(%rax), %rdx
.LBE62:
	.loc 1 207 26 is_stmt 0 discriminator 3 view .LVU25
	movl	$1, %ebx
.LVL4:
.LBB64:
	.loc 1 206 11 discriminator 3 view .LVU26
	movq	%rdx, 24+lsc_obstack(%rip)
	movb	$39, (%rax)
.LBE64:
	.loc 1 207 11 is_stmt 1 discriminator 3 view .LVU27
.LVL5:
	.loc 1 208 11 discriminator 3 view .LVU28
	movq	32+lsc_obstack(%rip), %rcx
	movq	24+lsc_obstack(%rip), %rdx
.LVL6:
	.p2align 4,,10
	.p2align 3
.L6:
	.loc 1 226 7 view .LVU29
.LBB65:
	.loc 1 226 7 view .LVU30
	.loc 1 226 7 view .LVU31
.LBE65:
	.loc 1 226 7 view .LVU32
	.loc 1 226 7 view .LVU33
.LBB66:
	cmpq	%rdx, %rcx
	je	.L32
.L12:
	.loc 1 226 7 discriminator 3 view .LVU34
	leaq	1(%rdx), %rax
.LBE66:
	.loc 1 227 7 is_stmt 0 discriminator 3 view .LVU35
	addq	$1, %rbp
.LVL7:
.LBB67:
	.loc 1 226 7 discriminator 3 view .LVU36
	movq	%rax, 24+lsc_obstack(%rip)
	movzbl	-1(%rbp), %eax
	movb	%al, (%rdx)
.LBE67:
	.loc 1 227 7 is_stmt 1 discriminator 3 view .LVU37
.LVL8:
	.loc 1 199 9 discriminator 3 view .LVU38
	.loc 1 199 10 is_stmt 0 discriminator 3 view .LVU39
	movzbl	0(%rbp), %eax
	.loc 1 199 9 discriminator 3 view .LVU40
	testb	%al, %al
	je	.L33
.LVL9:
.L2:
	.loc 1 201 7 is_stmt 1 view .LVU41
	movq	32+lsc_obstack(%rip), %rcx
	movq	24+lsc_obstack(%rip), %rdx
	cmpb	$61, %al
	je	.L3
	jg	.L4
	cmpb	$39, %al
	je	.L5
	cmpb	$58, %al
	jne	.L15
.L3:
	.loc 1 217 11 view .LVU42
	.loc 1 217 14 is_stmt 0 view .LVU43
	testb	%bl, %bl
	je	.L15
	.loc 1 218 13 is_stmt 1 view .LVU44
.LBB68:
	.loc 1 218 13 view .LVU45
.LVL10:
	.loc 1 218 13 view .LVU46
.LBE68:
	.loc 1 218 13 view .LVU47
	.loc 1 218 13 view .LVU48
.LBB69:
	cmpq	%rcx, %rdx
	je	.L34
.L11:
	.loc 1 218 13 discriminator 3 view .LVU49
	leaq	1(%rdx), %rax
	movq	%rax, 24+lsc_obstack(%rip)
	movb	$92, (%rdx)
	movq	32+lsc_obstack(%rip), %rcx
	movq	24+lsc_obstack(%rip), %rdx
	.loc 1 218 13 is_stmt 0 discriminator 3 view .LVU50
.LBE69:
	.loc 1 226 7 is_stmt 1 discriminator 3 view .LVU51
.LBB70:
	.loc 1 226 7 discriminator 3 view .LVU52
.LVL11:
	.loc 1 226 7 discriminator 3 view .LVU53
.LBE70:
	.loc 1 226 7 discriminator 3 view .LVU54
	.loc 1 226 7 discriminator 3 view .LVU55
.LBB71:
	cmpq	%rdx, %rcx
	jne	.L12
.LVL12:
	.p2align 4,,10
	.p2align 3
.L32:
	.loc 1 226 7 discriminator 1 view .LVU56
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL13:
	movq	24+lsc_obstack(%rip), %rdx
	jmp	.L12
.LVL14:
	.p2align 4,,10
	.p2align 3
.L4:
	.loc 1 226 7 is_stmt 0 discriminator 1 view .LVU57
.LBE71:
	.loc 1 201 7 view .LVU58
	andl	$-3, %eax
	xorl	$1, %ebx
.LVL15:
	.loc 1 201 7 view .LVU59
	cmpb	$92, %al
	cmovne	%r12d, %ebx
	jmp	.L6
.LVL16:
	.p2align 4,,10
	.p2align 3
.L15:
	.loc 1 222 26 view .LVU60
	movl	$1, %ebx
.LVL17:
	.loc 1 222 26 view .LVU61
	jmp	.L6
.LVL18:
	.p2align 4,,10
	.p2align 3
.L33:
	.loc 1 229 1 view .LVU62
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL19:
	.loc 1 229 1 view .LVU63
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL20:
	.loc 1 229 1 view .LVU64
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL21:
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
.LBB72:
	.loc 1 204 11 is_stmt 1 discriminator 1 view .LVU65
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL22:
	movq	24+lsc_obstack(%rip), %rdx
	jmp	.L8
.LVL23:
	.p2align 4,,10
	.p2align 3
.L31:
	.loc 1 204 11 is_stmt 0 discriminator 1 view .LVU66
.LBE72:
.LBB73:
	.loc 1 206 11 is_stmt 1 discriminator 1 view .LVU67
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL24:
	movq	24+lsc_obstack(%rip), %rax
	jmp	.L10
.LVL25:
	.p2align 4,,10
	.p2align 3
.L30:
	.loc 1 206 11 is_stmt 0 discriminator 1 view .LVU68
.LBE73:
.LBB74:
	.loc 1 205 11 is_stmt 1 discriminator 1 view .LVU69
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL26:
	movq	24+lsc_obstack(%rip), %rax
	jmp	.L9
.LVL27:
	.p2align 4,,10
	.p2align 3
.L34:
	.loc 1 205 11 is_stmt 0 discriminator 1 view .LVU70
.LBE74:
.LBB75:
	.loc 1 218 13 is_stmt 1 discriminator 1 view .LVU71
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL28:
	movq	24+lsc_obstack(%rip), %rdx
	jmp	.L11
.LVL29:
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.loc 1 218 13 is_stmt 0 discriminator 1 view .LVU72
	ret
.LBE75:
	.cfi_endproc
.LFE138:
	.size	append_quoted, .-append_quoted
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"none"
.LC1:
	.string	"NORMAL"
.LC2:
	.string	"TERM"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"%s:%lu: invalid line;  missing second token"
	.section	.rodata.str1.1
.LC4:
	.string	"OPTIONS"
.LC5:
	.string	"COLOR"
.LC6:
	.string	"EIGHTBIT"
.LC7:
	.string	"<internal>"
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"%s:%lu: unrecognized keyword %s"
	.text
	.p2align 4
	.type	dc_parse_stream, @function
dc_parse_stream:
.LVL30:
.LFB139:
	.loc 1 240 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 240 1 is_stmt 0 view .LVU74
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
	.loc 1 253 10 view .LVU75
	leaq	.LC2(%rip), %rdi
.LVL31:
	.loc 1 240 1 view .LVU76
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.loc 1 240 1 view .LVU77
	movq	%rsi, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	.loc 1 241 3 is_stmt 1 view .LVU78
.LVL32:
	.loc 1 242 3 view .LVU79
	.loc 1 243 3 view .LVU80
	.loc 1 243 9 is_stmt 0 view .LVU81
	movq	$0, 40(%rsp)
	.loc 1 244 3 is_stmt 1 view .LVU82
	.loc 1 244 10 is_stmt 0 view .LVU83
	movq	$0, 48(%rsp)
	.loc 1 245 3 is_stmt 1 view .LVU84
	.loc 1 246 3 view .LVU85
	.loc 1 247 3 view .LVU86
.LVL33:
	.loc 1 250 3 view .LVU87
	.loc 1 253 3 view .LVU88
	.loc 1 253 10 is_stmt 0 view .LVU89
	call	getenv@PLT
.LVL34:
	.loc 1 254 3 is_stmt 1 view .LVU90
	.loc 1 254 6 is_stmt 0 view .LVU91
	testq	%rax, %rax
	je	.L76
	movq	%rax, %rdi
	.loc 1 255 10 discriminator 1 view .LVU92
	cmpb	$0, (%rax)
	leaq	.LC0(%rip), %rax
.LVL35:
	.loc 1 255 10 discriminator 1 view .LVU93
	cmovne	%rdi, %rax
	movq	%rax, 16(%rsp)
.LVL36:
.L36:
.LBB108:
	.loc 1 290 14 view .LVU94
	movl	$3, (%rsp)
	leaq	G_line(%rip), %r12
	xorl	%ebx, %ebx
	movb	$1, 7(%rsp)
.LVL37:
	.p2align 4,,10
	.p2align 3
.L37:
	.loc 1 290 14 view .LVU95
.LBE108:
	.loc 1 257 3 is_stmt 1 view .LVU96
.LBB155:
	.loc 1 259 7 view .LVU97
	.loc 1 260 7 view .LVU98
	.loc 1 262 7 view .LVU99
	addq	$1, %rbx
.LVL38:
	.loc 1 264 7 view .LVU100
	.loc 1 264 10 is_stmt 0 view .LVU101
	testq	%r13, %r13
	je	.L38
.L132:
	.loc 1 266 11 is_stmt 1 view .LVU102
.LVL39:
.LBB109:
.LBI109:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 2 118 1 view .LVU103
.LBB110:
	.loc 2 120 3 view .LVU104
	.loc 2 120 10 is_stmt 0 view .LVU105
	leaq	48(%rsp), %rsi
.LVL40:
	.loc 2 120 10 view .LVU106
	leaq	40(%rsp), %rdi
.LVL41:
	.loc 2 120 10 view .LVU107
	movq	%r13, %rcx
	movl	$10, %edx
	call	__getdelim@PLT
.LVL42:
	.loc 2 120 10 view .LVU108
.LBE110:
.LBE109:
	.loc 1 266 14 view .LVU109
	testq	%rax, %rax
	jle	.L127
	.loc 1 271 11 is_stmt 1 view .LVU110
	.loc 1 271 16 is_stmt 0 view .LVU111
	movq	40(%rsp), %r14
.LVL43:
.L41:
	.loc 1 281 7 is_stmt 1 view .LVU112
.LBB111:
.LBI111:
	.loc 1 143 1 view .LVU113
.LBB112:
	.loc 1 145 3 view .LVU114
	.loc 1 146 3 view .LVU115
	.loc 1 147 3 view .LVU116
	.loc 1 149 3 view .LVU117
	.loc 1 150 3 view .LVU118
	.loc 1 152 3 view .LVU119
	.loc 1 152 18 is_stmt 0 view .LVU120
	call	__ctype_b_loc@PLT
.LVL44:
	movq	(%rax), %rcx
	movq	%rax, %r15
.LVL45:
.L42:
	.loc 1 152 18 is_stmt 1 view .LVU121
	movzbl	(%r14), %edx
.LVL46:
.LBB113:
.LBI113:
	.file 3 "src/system.h"
	.loc 3 156 29 view .LVU122
.LBB114:
	.loc 3 156 50 view .LVU123
	.loc 3 156 50 is_stmt 0 view .LVU124
.LBE114:
.LBE113:
	.loc 1 152 3 view .LVU125
	testb	$32, 1(%rcx,%rdx,2)
	jne	.L43
	.loc 1 156 3 is_stmt 1 view .LVU126
	.loc 1 156 6 is_stmt 0 view .LVU127
	testb	%dl, %dl
	je	.L37
	cmpb	$35, %dl
	je	.L37
	movq	%r14, %rbp
.LVL47:
	.p2align 4,,10
	.p2align 3
.L45:
	.loc 1 163 7 is_stmt 1 view .LVU128
	.loc 1 161 11 is_stmt 0 view .LVU129
	movzbl	1(%rbp), %eax
	.loc 1 163 7 view .LVU130
	addq	$1, %rbp
.LVL48:
	.loc 1 161 9 is_stmt 1 view .LVU131
	.loc 1 161 11 is_stmt 0 view .LVU132
	movq	%rax, %rdx
.LVL49:
.LBB115:
.LBI115:
	.loc 3 156 29 is_stmt 1 view .LVU133
.LBB116:
	.loc 3 156 50 view .LVU134
	.loc 3 156 50 is_stmt 0 view .LVU135
.LBE116:
.LBE115:
	.loc 1 161 9 view .LVU136
	movzwl	(%rcx,%rax,2), %eax
	shrw	$13, %ax
	xorl	$1, %eax
	.loc 1 161 35 view .LVU137
	testb	%dl, %dl
	setne	%dl
	testb	%al, %dl
	jne	.L45
	.loc 1 166 3 is_stmt 1 view .LVU138
	.loc 1 166 41 is_stmt 0 view .LVU139
	movq	%rbp, %rsi
	.loc 1 166 14 view .LVU140
	movq	%r14, %rdi
	.loc 1 166 41 view .LVU141
	subq	%r14, %rsi
	.loc 1 166 14 view .LVU142
	call	xstrndup@PLT
.LVL50:
	.loc 1 167 6 view .LVU143
	cmpb	$0, 0(%rbp)
	.loc 1 166 14 view .LVU144
	movq	%rax, %r14
.LVL51:
	.loc 1 167 3 is_stmt 1 view .LVU145
	.loc 1 167 6 is_stmt 0 view .LVU146
	je	.L80
	.loc 1 174 10 view .LVU147
	movq	(%r15), %rcx
	.p2align 4,,10
	.p2align 3
.L47:
	.loc 1 170 3 is_stmt 1 view .LVU148
	.loc 1 172 7 view .LVU149
	.loc 1 174 10 is_stmt 0 view .LVU150
	movzbl	1(%rbp), %edx
	.loc 1 172 7 view .LVU151
	addq	$1, %rbp
.LVL52:
	.loc 1 174 9 is_stmt 1 view .LVU152
.LBB117:
.LBI117:
	.loc 3 156 29 view .LVU153
.LBB118:
	.loc 3 156 50 view .LVU154
	.loc 3 156 50 is_stmt 0 view .LVU155
.LBE118:
.LBE117:
	.loc 1 174 3 view .LVU156
	testb	$32, 1(%rcx,%rdx,2)
	jne	.L47
	.loc 1 176 3 is_stmt 1 view .LVU157
	.loc 1 176 6 is_stmt 0 view .LVU158
	testb	%dl, %dl
	je	.L80
	.loc 1 172 7 view .LVU159
	movq	%rbp, %rsi
	.loc 1 176 6 view .LVU160
	cmpb	$35, %dl
	je	.L80
.LVL53:
	.p2align 4,,10
	.p2align 3
.L48:
	.loc 1 182 5 is_stmt 1 view .LVU161
	movq	%rsi, %rdi
	.loc 1 181 10 is_stmt 0 view .LVU162
	movzbl	1(%rsi), %eax
	.loc 1 182 5 view .LVU163
	addq	$1, %rsi
.LVL54:
	.loc 1 181 9 is_stmt 1 view .LVU164
	.loc 1 181 21 is_stmt 0 view .LVU165
	testb	%al, %al
	setne	%dl
	cmpb	$35, %al
	setne	%al
	.loc 1 181 9 view .LVU166
	testb	%al, %dl
	jne	.L48
	.loc 1 184 3 is_stmt 1 view .LVU167
.LVL55:
	.loc 1 184 13 view .LVU168
.LBB119:
.LBI119:
	.loc 3 156 29 view .LVU169
.LBB120:
	.loc 3 156 50 view .LVU170
	.loc 3 156 50 is_stmt 0 view .LVU171
.LBE120:
.LBE119:
	.loc 1 184 13 view .LVU172
	movzbl	-1(%rsi), %eax
	.loc 1 184 3 view .LVU173
	testb	$32, 1(%rcx,%rax,2)
	jne	.L52
.L51:
	.loc 1 186 3 is_stmt 1 view .LVU174
.LVL56:
	.loc 1 188 3 view .LVU175
	.loc 1 188 33 is_stmt 0 view .LVU176
	subq	%rbp, %rsi
	.loc 1 188 10 view .LVU177
	movq	%rbp, %rdi
	call	xstrndup@PLT
.LVL57:
	movq	%rax, %rbp
.LVL58:
	.loc 1 188 10 view .LVU178
.LBE112:
.LBE111:
	.loc 1 283 7 is_stmt 1 view .LVU179
	.loc 1 283 10 is_stmt 0 view .LVU180
	testq	%r14, %r14
	je	.L37
	.loc 1 286 7 is_stmt 1 view .LVU181
	.loc 1 286 10 is_stmt 0 view .LVU182
	testq	%rax, %rax
	je	.L50
	.loc 1 295 7 is_stmt 1 view .LVU183
.LVL59:
	.loc 1 296 7 view .LVU184
	.loc 1 296 11 is_stmt 0 view .LVU185
	leaq	.LC2(%rip), %rsi
	movq	%r14, %rdi
	call	c_strcasecmp@PLT
.LVL60:
	.loc 1 296 10 view .LVU186
	testl	%eax, %eax
	je	.L128
	.loc 1 305 11 is_stmt 1 view .LVU187
	.loc 1 305 14 is_stmt 0 view .LVU188
	movl	(%rsp), %eax
	cmpl	$2, %eax
	je	.L79
.LVL61:
	.loc 1 308 11 is_stmt 1 view .LVU189
	.loc 1 308 14 is_stmt 0 view .LVU190
	testl	%eax, %eax
	je	.L54
.LVL62:
	.loc 1 310 15 is_stmt 1 view .LVU191
	.loc 1 310 24 is_stmt 0 view .LVU192
	movzbl	(%r14), %eax
	.loc 1 310 18 view .LVU193
	cmpb	$46, %al
	je	.L129
.L57:
	.loc 1 318 20 is_stmt 1 view .LVU194
	.loc 1 318 23 is_stmt 0 view .LVU195
	cmpb	$42, %al
	je	.L130
	.loc 1 325 20 is_stmt 1 view .LVU196
	.loc 1 325 24 is_stmt 0 view .LVU197
	leaq	.LC4(%rip), %rsi
	movq	%r14, %rdi
	call	c_strcasecmp@PLT
.LVL63:
	.loc 1 325 23 view .LVU198
	testl	%eax, %eax
	je	.L54
	.loc 1 326 27 view .LVU199
	leaq	.LC5(%rip), %rsi
	movq	%r14, %rdi
	call	c_strcasecmp@PLT
.LVL64:
	.loc 1 326 24 view .LVU200
	testl	%eax, %eax
	je	.L54
	.loc 1 327 27 view .LVU201
	leaq	.LC6(%rip), %rsi
	movq	%r14, %rdi
	call	c_strcasecmp@PLT
.LVL65:
	.loc 1 327 24 view .LVU202
	testl	%eax, %eax
	jne	.L131
.LVL66:
	.p2align 4,,10
	.p2align 3
.L54:
	.loc 1 366 7 is_stmt 1 view .LVU203
	movq	%r14, %rdi
	.loc 1 262 7 is_stmt 0 view .LVU204
	addq	$1, %rbx
	.loc 1 366 7 view .LVU205
	call	free@PLT
.LVL67:
	.loc 1 367 7 is_stmt 1 view .LVU206
	movq	%rbp, %rdi
	call	free@PLT
.LVL68:
	.loc 1 367 7 is_stmt 0 view .LVU207
.LBE155:
	.loc 1 257 3 is_stmt 1 view .LVU208
.LBB156:
	.loc 1 259 7 view .LVU209
	.loc 1 260 7 view .LVU210
	.loc 1 262 7 view .LVU211
	.loc 1 264 7 view .LVU212
	.loc 1 264 10 is_stmt 0 view .LVU213
	testq	%r13, %r13
	jne	.L132
.L38:
	.loc 1 275 11 is_stmt 1 view .LVU214
	.loc 1 275 14 is_stmt 0 view .LVU215
	leaq	4304+G_line(%rip), %rax
	cmpq	%rax, %r12
	je	.L35
	.loc 1 277 11 is_stmt 1 view .LVU216
.LVL69:
	.loc 1 278 11 view .LVU217
	.loc 1 278 26 is_stmt 0 view .LVU218
	movq	%r12, %rdi
	.loc 1 278 23 view .LVU219
	movq	%r12, %r14
	.loc 1 278 26 view .LVU220
	call	strlen@PLT
.LVL70:
	.loc 1 278 23 view .LVU221
	leaq	1(%r12,%rax), %r12
.LVL71:
	.loc 1 278 23 view .LVU222
	jmp	.L41
.LVL72:
	.p2align 4,,10
	.p2align 3
.L52:
.LBB124:
.LBB123:
	.loc 1 185 5 is_stmt 1 view .LVU223
	.loc 1 184 38 view .LVU224
	movq	%rdi, %rsi
	.loc 1 184 13 is_stmt 0 view .LVU225
	movzbl	-1(%rdi), %eax
	.loc 1 184 38 view .LVU226
	subq	$1, %rdi
.LVL73:
	.loc 1 184 13 is_stmt 1 view .LVU227
.LBB122:
	.loc 3 156 29 view .LVU228
.LBB121:
	.loc 3 156 50 view .LVU229
	.loc 3 156 50 is_stmt 0 view .LVU230
.LBE121:
.LBE122:
	.loc 1 184 3 view .LVU231
	testb	$32, 1(%rcx,%rax,2)
	je	.L51
	jmp	.L52
.LVL74:
	.p2align 4,,10
	.p2align 3
.L43:
	.loc 1 153 5 is_stmt 1 view .LVU232
	.loc 1 152 43 view .LVU233
	addq	$1, %r14
.LVL75:
	.loc 1 152 43 is_stmt 0 view .LVU234
	jmp	.L42
.LVL76:
	.p2align 4,,10
	.p2align 3
.L80:
	.loc 1 152 43 view .LVU235
.LBE123:
.LBE124:
	.loc 1 283 7 is_stmt 1 view .LVU236
	.loc 1 283 10 is_stmt 0 view .LVU237
	testq	%r14, %r14
	je	.L37
.LVL77:
.L50:
	.loc 1 288 11 is_stmt 1 view .LVU238
	movq	8(%rsp), %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL78:
	.loc 1 288 24 is_stmt 0 view .LVU239
	movl	$5, %edx
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 288 11 view .LVU240
	movq	%rax, %r15
	.loc 1 288 24 view .LVU241
	call	dcgettext@PLT
.LVL79:
	.loc 1 288 11 view .LVU242
	movq	%rbx, %r8
	movq	%r15, %rcx
	xorl	%esi, %esi
	.loc 1 288 24 view .LVU243
	movq	%rax, %rdx
	.loc 1 288 11 view .LVU244
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	error@PLT
.LVL80:
	.loc 1 290 11 is_stmt 1 view .LVU245
	.loc 1 291 11 view .LVU246
	movq	%r14, %rdi
	call	free@PLT
.LVL81:
	.loc 1 292 11 view .LVU247
	.loc 1 290 14 is_stmt 0 view .LVU248
	movb	$0, 7(%rsp)
	.loc 1 292 11 view .LVU249
	jmp	.L37
.LVL82:
	.p2align 4,,10
	.p2align 3
.L128:
	.loc 1 298 11 is_stmt 1 view .LVU250
	.loc 1 298 15 is_stmt 0 view .LVU251
	movq	16(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	call	fnmatch@PLT
.LVL83:
	.loc 1 300 16 is_stmt 1 view .LVU252
	.loc 1 300 19 is_stmt 0 view .LVU253
	cmpl	$2, (%rsp)
	je	.L81
	.loc 1 301 19 view .LVU254
	movl	$0, (%rsp)
.LVL84:
	.loc 1 300 19 view .LVU255
	testl	%eax, %eax
	jne	.L54
.L81:
	.loc 1 300 19 view .LVU256
	movl	$2, (%rsp)
	jmp	.L54
.LVL85:
	.p2align 4,,10
	.p2align 3
.L79:
	.loc 1 310 24 view .LVU257
	movzbl	(%r14), %eax
	.loc 1 306 19 view .LVU258
	movl	$1, (%rsp)
.LVL86:
	.loc 1 310 15 is_stmt 1 view .LVU259
	.loc 1 310 18 is_stmt 0 view .LVU260
	cmpb	$46, %al
	jne	.L57
.L129:
	.loc 1 312 19 is_stmt 1 view .LVU261
.LBB125:
	.loc 1 312 19 view .LVU262
.LVL87:
	.loc 1 312 19 view .LVU263
.LBB126:
	.loc 1 312 19 view .LVU264
	.loc 1 312 19 view .LVU265
	movq	24+lsc_obstack(%rip), %rax
.LBE126:
	cmpq	%rax, 32+lsc_obstack(%rip)
	je	.L133
.L58:
	.loc 1 312 19 discriminator 3 view .LVU266
	leaq	1(%rax), %rdx
.LBE125:
	.loc 1 313 19 is_stmt 0 discriminator 3 view .LVU267
	movq	%r14, %rdi
.LBB127:
	.loc 1 312 19 discriminator 3 view .LVU268
	movq	%rdx, 24+lsc_obstack(%rip)
	movb	$42, (%rax)
.LBE127:
	.loc 1 313 19 is_stmt 1 discriminator 3 view .LVU269
	call	append_quoted
.LVL88:
	.loc 1 314 19 discriminator 3 view .LVU270
.LBB128:
	.loc 1 314 19 discriminator 3 view .LVU271
	.loc 1 314 19 discriminator 3 view .LVU272
.LBB129:
	.loc 1 314 19 discriminator 3 view .LVU273
	.loc 1 314 19 discriminator 3 view .LVU274
	movq	24+lsc_obstack(%rip), %rax
.LBE129:
	cmpq	%rax, 32+lsc_obstack(%rip)
	je	.L134
.L59:
	.loc 1 314 19 discriminator 3 view .LVU275
	leaq	1(%rax), %rdx
.LBE128:
	.loc 1 315 19 is_stmt 0 discriminator 3 view .LVU276
	movq	%rbp, %rdi
.LBB130:
	.loc 1 314 19 discriminator 3 view .LVU277
	movq	%rdx, 24+lsc_obstack(%rip)
	movb	$61, (%rax)
.LBE130:
	.loc 1 315 19 is_stmt 1 discriminator 3 view .LVU278
	call	append_quoted
.LVL89:
	.loc 1 316 19 discriminator 3 view .LVU279
.LBB131:
	.loc 1 316 19 discriminator 3 view .LVU280
	.loc 1 316 19 discriminator 3 view .LVU281
.LBB132:
	.loc 1 316 19 discriminator 3 view .LVU282
	.loc 1 316 19 discriminator 3 view .LVU283
	movq	24+lsc_obstack(%rip), %rax
.LBE132:
	cmpq	%rax, 32+lsc_obstack(%rip)
	je	.L124
.LVL90:
.L60:
	.loc 1 316 19 discriminator 3 view .LVU284
	leaq	1(%rax), %rdx
	movq	%rdx, 24+lsc_obstack(%rip)
	movb	$58, (%rax)
.LVL91:
	.loc 1 316 19 is_stmt 0 discriminator 3 view .LVU285
.LBE131:
	.loc 1 358 7 is_stmt 1 discriminator 3 view .LVU286
	jmp	.L54
.LVL92:
.L127:
	.loc 1 268 15 view .LVU287
	movq	40(%rsp), %rdi
	call	free@PLT
.LVL93:
	.loc 1 269 15 view .LVU288
.L35:
	.loc 1 269 15 is_stmt 0 view .LVU289
.LBE156:
	.loc 1 371 1 view .LVU290
	movq	56(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L135
	movzbl	7(%rsp), %eax
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
.LVL94:
	.loc 1 371 1 view .LVU291
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL95:
	.loc 1 371 1 view .LVU292
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL96:
	.loc 1 371 1 view .LVU293
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL97:
	.loc 1 371 1 view .LVU294
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL98:
	.p2align 4,,10
	.p2align 3
.L130:
	.cfi_restore_state
.LBB157:
	.loc 1 320 19 is_stmt 1 view .LVU295
	movq	%r14, %rdi
	call	append_quoted
.LVL99:
	.loc 1 321 19 view .LVU296
.LBB133:
	.loc 1 321 19 view .LVU297
	.loc 1 321 19 view .LVU298
.LBB134:
	.loc 1 321 19 view .LVU299
	.loc 1 321 19 view .LVU300
.LBE134:
	movq	24+lsc_obstack(%rip), %rax
	cmpq	%rax, 32+lsc_obstack(%rip)
	je	.L126
.LVL100:
.L68:
	.loc 1 321 19 is_stmt 0 view .LVU301
.LBE133:
.LBB135:
.LBB136:
	.loc 1 342 23 is_stmt 1 discriminator 3 view .LVU302
	movq	24+lsc_obstack(%rip), %rax
.LBE136:
	.loc 1 343 23 is_stmt 0 discriminator 3 view .LVU303
	movq	%rbp, %rdi
.LBB138:
	.loc 1 342 23 discriminator 3 view .LVU304
	leaq	1(%rax), %rdx
	movq	%rdx, 24+lsc_obstack(%rip)
	movb	$61, (%rax)
.LVL101:
	.loc 1 342 23 discriminator 3 view .LVU305
.LBE138:
	.loc 1 343 23 is_stmt 1 discriminator 3 view .LVU306
	call	append_quoted
.LVL102:
	.loc 1 344 23 discriminator 3 view .LVU307
.LBB139:
	.loc 1 344 23 discriminator 3 view .LVU308
	.loc 1 344 23 discriminator 3 view .LVU309
.LBB140:
	.loc 1 344 23 discriminator 3 view .LVU310
	.loc 1 344 23 discriminator 3 view .LVU311
.LBE140:
	movq	24+lsc_obstack(%rip), %rax
	cmpq	%rax, 32+lsc_obstack(%rip)
	je	.L124
.LVL103:
.L123:
	.loc 1 344 23 is_stmt 0 discriminator 3 view .LVU312
	movq	24+lsc_obstack(%rip), %rax
	jmp	.L60
.L124:
.LBE139:
.LBE135:
.LBB149:
	.loc 1 316 19 is_stmt 1 discriminator 1 view .LVU313
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL104:
	jmp	.L123
.LVL105:
.L133:
	.loc 1 316 19 is_stmt 0 discriminator 1 view .LVU314
.LBE149:
.LBB150:
	.loc 1 312 19 is_stmt 1 discriminator 1 view .LVU315
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL106:
	movq	24+lsc_obstack(%rip), %rax
	jmp	.L58
.LVL107:
.L134:
	.loc 1 312 19 is_stmt 0 discriminator 1 view .LVU316
.LBE150:
.LBB151:
	.loc 1 314 19 is_stmt 1 discriminator 1 view .LVU317
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL108:
	movq	24+lsc_obstack(%rip), %rax
	jmp	.L59
.LVL109:
.L76:
	.loc 1 314 19 is_stmt 0 discriminator 1 view .LVU318
.LBE151:
.LBE157:
	.loc 1 255 10 view .LVU319
	leaq	.LC0(%rip), %rax
.LVL110:
	.loc 1 255 10 view .LVU320
	movq	%rax, 16(%rsp)
	jmp	.L36
.LVL111:
.L131:
.LBB158:
	.loc 1 255 10 view .LVU321
	xorl	%r15d, %r15d
.LBB152:
	.loc 1 335 42 view .LVU322
	movq	%rbx, 24(%rsp)
	leaq	.LC1(%rip), %rsi
	movq	%r15, %rbx
.LVL112:
	.loc 1 335 42 view .LVU323
	jmp	.L65
.LVL113:
	.p2align 4,,10
	.p2align 3
.L137:
	.loc 1 335 55 is_stmt 1 discriminator 2 view .LVU324
	.loc 1 335 31 discriminator 2 view .LVU325
	addq	$1, %rbx
.LVL114:
	.loc 1 335 42 is_stmt 0 discriminator 2 view .LVU326
	leaq	slack_codes(%rip), %rax
	movq	(%rax,%rbx,8), %rsi
	.loc 1 335 19 discriminator 2 view .LVU327
	testq	%rsi, %rsi
	je	.L136
.LVL115:
.L65:
	.loc 1 336 25 view .LVU328
	movq	%r14, %rdi
	movl	%ebx, %r15d
.LVL116:
	.loc 1 336 21 is_stmt 1 view .LVU329
	.loc 1 336 25 is_stmt 0 view .LVU330
	call	c_strcasecmp@PLT
.LVL117:
	.loc 1 336 24 view .LVU331
	testl	%eax, %eax
	jne	.L137
.LBB141:
	.loc 1 341 23 view .LVU332
	movq	24+lsc_obstack(%rip), %rax
	cmpq	%rax, 32+lsc_obstack(%rip)
	movq	24(%rsp), %rbx
.LVL118:
	.loc 1 341 23 view .LVU333
.LBE141:
	.loc 1 339 19 is_stmt 1 view .LVU334
	.loc 1 341 23 view .LVU335
	.loc 1 341 23 view .LVU336
.LBB143:
	.loc 1 341 23 view .LVU337
	.loc 1 341 23 view .LVU338
.LBB142:
	.loc 1 341 23 view .LVU339
	.loc 1 341 23 view .LVU340
.LBE142:
	je	.L138
.L74:
	.loc 1 341 23 discriminator 3 view .LVU341
	leaq	ls_codes(%rip), %rax
	movslq	%r15d, %r15
	.loc 1 341 23 is_stmt 0 discriminator 3 view .LVU342
	movq	(%rax,%r15,8), %r15
.LVL119:
	.loc 1 341 23 discriminator 3 view .LVU343
	movq	24+lsc_obstack(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 24+lsc_obstack(%rip)
	movzbl	(%r15), %edx
	movb	%dl, (%rax)
.LBE143:
	.loc 1 341 23 is_stmt 1 discriminator 3 view .LVU344
.LBB144:
	.loc 1 341 23 discriminator 3 view .LVU345
.LVL120:
	.loc 1 341 23 discriminator 3 view .LVU346
.LBB145:
	.loc 1 341 23 discriminator 3 view .LVU347
	.loc 1 341 23 discriminator 3 view .LVU348
.LBE145:
	movq	24+lsc_obstack(%rip), %rax
	cmpq	%rax, 32+lsc_obstack(%rip)
	je	.L139
.L67:
	.loc 1 341 23 discriminator 6 view .LVU349
	movq	24+lsc_obstack(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 24+lsc_obstack(%rip)
	movzbl	1(%r15), %edx
	movb	%dl, (%rax)
.LBE144:
	.loc 1 341 23 discriminator 6 view .LVU350
	.loc 1 342 23 discriminator 6 view .LVU351
.LBB146:
	.loc 1 342 23 discriminator 6 view .LVU352
.LVL121:
	.loc 1 342 23 discriminator 6 view .LVU353
.LBB137:
	.loc 1 342 23 discriminator 6 view .LVU354
	.loc 1 342 23 discriminator 6 view .LVU355
.LBE137:
	movq	24+lsc_obstack(%rip), %rax
	cmpq	%rax, 32+lsc_obstack(%rip)
	jne	.L68
.LVL122:
.L126:
	.loc 1 342 23 discriminator 1 view .LVU356
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL123:
	jmp	.L68
.LVL124:
.L136:
	.loc 1 342 23 is_stmt 0 discriminator 1 view .LVU357
.LBE146:
.LBE152:
	.loc 1 358 24 view .LVU358
	cmpl	$3, (%rsp)
	movq	24(%rsp), %rbx
.LBB153:
	.loc 1 339 19 is_stmt 1 view .LVU359
.LVL125:
	.loc 1 339 19 is_stmt 0 view .LVU360
.LBE153:
	.loc 1 358 24 view .LVU361
	je	.L54
	.loc 1 360 11 is_stmt 1 view .LVU362
	movq	8(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L70
	.loc 1 361 30 is_stmt 0 view .LVU363
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL126:
	movq	%rax, %r15
.LVL127:
.L71:
	.loc 1 360 24 view .LVU364
	movl	$5, %edx
	leaq	.LC8(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL128:
	.loc 1 360 11 view .LVU365
	movq	%r14, %r9
	movq	%rbx, %r8
	movq	%r15, %rcx
	.loc 1 360 24 view .LVU366
	movq	%rax, %rdx
	.loc 1 360 11 view .LVU367
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	error@PLT
.LVL129:
	.loc 1 363 11 is_stmt 1 view .LVU368
	.loc 1 363 14 is_stmt 0 view .LVU369
	movb	$0, 7(%rsp)
	jmp	.L54
.LVL130:
.L70:
	.loc 1 361 50 view .LVU370
	movl	$5, %edx
	leaq	.LC7(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL131:
	movq	%rax, %r15
.LVL132:
	.loc 1 361 50 view .LVU371
	jmp	.L71
.LVL133:
.L138:
.LBB154:
.LBB147:
	.loc 1 341 23 is_stmt 1 discriminator 1 view .LVU372
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL134:
	jmp	.L74
.LVL135:
.L139:
	.loc 1 341 23 is_stmt 0 discriminator 1 view .LVU373
.LBE147:
.LBB148:
	.loc 1 341 23 is_stmt 1 discriminator 4 view .LVU374
	movl	$1, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_newchunk@PLT
.LVL136:
	jmp	.L67
.LVL137:
.L135:
	.loc 1 341 23 is_stmt 0 discriminator 4 view .LVU375
.LBE148:
.LBE154:
.LBE158:
	.loc 1 371 1 view .LVU376
	call	__stack_chk_fail@PLT
.LVL138:
	.cfi_endproc
.LFE139:
	.size	dc_parse_stream, .-dc_parse_stream
	.section	.rodata.str1.1
.LC9:
	.string	"dircolors"
.LC10:
	.string	" invocation"
.LC11:
	.string	""
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"Try '%s --help' for more information.\n"
	.section	.rodata.str1.1
.LC13:
	.string	"Usage: %s [OPTION]... [FILE]\n"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.ascii	"Output commands t"
	.string	"o set the LS_COLORS environment variable.\n\nDetermine format of output:\n  -b, --sh, --bourne-shell    output Bourne shell code to set LS_COLORS\n  -c, --csh, --c-shell        output C shell code to set LS_COLORS\n  -p, --print-database        output defaults\n"
	.align 8
.LC15:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC16:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC17:
	.string	"\nIf FILE is specified, read it to determine which colors to use for which\nfile types and extensions.  Otherwise, a precompiled database is used.\nFor details on the format of these files, run 'dircolors --print-database'.\n"
	.section	.rodata.str1.1
.LC18:
	.string	"["
.LC19:
	.string	"test invocation"
.LC20:
	.string	"coreutils"
.LC21:
	.string	"Multi-call invocation"
.LC22:
	.string	"sha224sum"
.LC23:
	.string	"sha2 utilities"
.LC24:
	.string	"sha256sum"
.LC25:
	.string	"sha384sum"
.LC26:
	.string	"sha512sum"
.LC27:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC29:
	.string	"GNU coreutils"
.LC30:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC32:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL139:
.LFB135:
	.loc 1 94 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 94 1 is_stmt 0 view .LVU378
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 96 5 view .LVU379
	movl	$5, %edx
	.loc 1 94 1 view .LVU380
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
	.loc 1 94 1 view .LVU381
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 95 3 is_stmt 1 view .LVU382
	.loc 1 95 6 is_stmt 0 view .LVU383
	testl	%edi, %edi
	je	.L141
	.loc 1 96 5 is_stmt 1 view .LVU384
	.loc 1 96 5 view .LVU385
	leaq	.LC12(%rip), %rsi
	xorl	%edi, %edi
.LVL140:
	.loc 1 96 5 is_stmt 0 view .LVU386
	call	dcgettext@PLT
.LVL141:
.LBB171:
.LBB172:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 4 100 10 view .LVU387
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE172:
.LBE171:
	.loc 1 96 5 view .LVU388
	movq	%rax, %rdx
.LVL142:
.LBB174:
.LBI171:
	.loc 4 98 1 is_stmt 1 view .LVU389
.LBB173:
	.loc 4 100 3 view .LVU390
	.loc 4 100 10 is_stmt 0 view .LVU391
	xorl	%eax, %eax
.LVL143:
	.loc 4 100 10 view .LVU392
	call	__fprintf_chk@PLT
.LVL144:
.L142:
	.loc 4 100 10 view .LVU393
.LBE173:
.LBE174:
	.loc 1 119 3 is_stmt 1 view .LVU394
	movl	%ebp, %edi
	call	exit@PLT
.LVL145:
.L141:
	.loc 1 99 7 view .LVU395
	.loc 1 99 15 is_stmt 0 view .LVU396
	leaq	.LC13(%rip), %rsi
	xorl	%edi, %edi
.LVL146:
.LBB175:
.LBB176:
	.loc 3 636 67 view .LVU397
	leaq	.LC24(%rip), %rbx
.LBE176:
.LBE175:
	.loc 1 99 15 view .LVU398
	call	dcgettext@PLT
.LVL147:
.LBB202:
.LBB203:
	.loc 4 107 10 view .LVU399
	movq	%r12, %rdx
	movl	$1, %edi
.LBE203:
.LBE202:
	.loc 1 99 15 view .LVU400
	movq	%rax, %rsi
.LVL148:
.LBB205:
.LBI202:
	.loc 4 105 1 is_stmt 1 view .LVU401
.LBB204:
	.loc 4 107 3 view .LVU402
	.loc 4 107 10 is_stmt 0 view .LVU403
	xorl	%eax, %eax
.LVL149:
	.loc 4 107 10 view .LVU404
	call	__printf_chk@PLT
.LVL150:
	.loc 4 107 10 view .LVU405
.LBE204:
.LBE205:
	.loc 1 100 7 is_stmt 1 view .LVU406
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC14(%rip), %rsi
	call	dcgettext@PLT
.LVL151:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL152:
	.loc 1 108 7 view .LVU407
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC15(%rip), %rsi
	call	dcgettext@PLT
.LVL153:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL154:
	.loc 1 109 7 view .LVU408
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC16(%rip), %rsi
	call	dcgettext@PLT
.LVL155:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL156:
	.loc 1 110 7 view .LVU409
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC17(%rip), %rsi
	call	dcgettext@PLT
.LVL157:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL158:
	.loc 1 116 7 view .LVU410
.LBB206:
.LBI175:
	.loc 3 634 1 view .LVU411
.LBB201:
	.loc 3 636 3 view .LVU412
	.loc 3 636 67 is_stmt 0 view .LVU413
	leaq	.LC18(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC25(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC19(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC20(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC21(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC22(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 3 646 3 is_stmt 1 view .LVU414
.LVL159:
	.loc 3 647 3 view .LVU415
	.loc 3 649 3 view .LVU416
	.loc 3 649 9 view .LVU417
	.loc 3 636 67 is_stmt 0 view .LVU418
	movq	%rax, 32(%rsp)
	leaq	.LC23(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC26(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC9(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 3 647 25 view .LVU419
	movq	%rsp, %rax
.LVL160:
	.p2align 4,,10
	.p2align 3
.L144:
	.loc 3 650 5 is_stmt 1 view .LVU420
	.loc 3 649 18 is_stmt 0 view .LVU421
	movq	16(%rax), %rdi
	.loc 3 650 13 view .LVU422
	addq	$16, %rax
.LVL161:
	.loc 3 649 9 is_stmt 1 view .LVU423
	testq	%rdi, %rdi
	je	.L143
	.loc 3 649 33 is_stmt 0 view .LVU424
	movl	$10, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 3 649 28 view .LVU425
	testb	%dl, %dl
	jne	.L144
.L143:
	.loc 3 652 3 is_stmt 1 view .LVU426
	.loc 3 652 15 is_stmt 0 view .LVU427
	movq	8(%rax), %r12
	.loc 3 655 11 view .LVU428
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	xorl	%edi, %edi
	.loc 3 652 6 view .LVU429
	testq	%r12, %r12
	je	.L145
	.loc 3 653 5 is_stmt 1 view .LVU430
.LVL162:
	.loc 3 655 3 view .LVU431
	.loc 3 655 11 is_stmt 0 view .LVU432
	call	dcgettext@PLT
.LVL163:
.LBB177:
.LBB178:
	.loc 4 107 10 view .LVU433
	leaq	.LC28(%rip), %rcx
	movl	$1, %edi
	leaq	.LC29(%rip), %rdx
.LBE178:
.LBE177:
	.loc 3 655 11 view .LVU434
	movq	%rax, %rsi
.LVL164:
.LBB182:
.LBI177:
	.loc 4 105 1 is_stmt 1 view .LVU435
.LBB179:
	.loc 4 107 3 view .LVU436
	.loc 4 107 10 is_stmt 0 view .LVU437
	xorl	%eax, %eax
.LVL165:
	.loc 4 107 10 view .LVU438
	call	__printf_chk@PLT
.LVL166:
	.loc 4 107 10 view .LVU439
.LBE179:
.LBE182:
	.loc 3 659 3 is_stmt 1 view .LVU440
	.loc 3 659 29 is_stmt 0 view .LVU441
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL167:
	movq	%rax, %rdi
.LVL168:
	.loc 3 660 3 is_stmt 1 view .LVU442
	.loc 3 660 6 is_stmt 0 view .LVU443
	testq	%rax, %rax
	je	.L146
	.loc 3 660 22 view .LVU444
	movl	$3, %edx
	leaq	.LC30(%rip), %rsi
	call	strncmp@PLT
.LVL169:
	.loc 3 660 19 view .LVU445
	testl	%eax, %eax
	jne	.L149
.LVL170:
.L146:
	.loc 3 669 3 is_stmt 1 view .LVU446
	.loc 3 669 11 is_stmt 0 view .LVU447
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC32(%rip), %rsi
	call	dcgettext@PLT
.LVL171:
.LBB183:
.LBB184:
	.loc 4 107 10 view .LVU448
	leaq	.LC9(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	movl	$1, %edi
.LBE184:
.LBE183:
	.loc 3 669 11 view .LVU449
	movq	%rax, %rsi
.LVL172:
.LBB190:
.LBI183:
	.loc 4 105 1 is_stmt 1 view .LVU450
.LBB185:
	.loc 4 107 3 view .LVU451
	.loc 4 107 10 is_stmt 0 view .LVU452
	xorl	%eax, %eax
.LVL173:
	.loc 4 107 10 view .LVU453
.LBE185:
.LBE190:
	.loc 3 671 3 view .LVU454
	leaq	.LC10(%rip), %r13
.LBB191:
.LBB186:
	.loc 4 107 10 view .LVU455
	call	__printf_chk@PLT
.LVL174:
	.loc 4 107 10 view .LVU456
.LBE186:
.LBE191:
	.loc 3 671 3 is_stmt 1 view .LVU457
	cmpq	%rbx, %r12
	leaq	.LC11(%rip), %rcx
	cmovne	%rcx, %r13
.L147:
	.loc 3 671 11 is_stmt 0 view .LVU458
	xorl	%edi, %edi
	leaq	.LC33(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL175:
.LBB192:
.LBB193:
	.loc 4 107 10 view .LVU459
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE193:
.LBE192:
	.loc 3 671 11 view .LVU460
	movq	%rax, %rsi
.LVL176:
.LBB195:
.LBI192:
	.loc 4 105 1 is_stmt 1 view .LVU461
.LBB194:
	.loc 4 107 3 view .LVU462
	.loc 4 107 10 is_stmt 0 view .LVU463
	xorl	%eax, %eax
.LVL177:
	.loc 4 107 10 view .LVU464
	call	__printf_chk@PLT
.LVL178:
	.loc 4 107 10 view .LVU465
.LBE194:
.LBE195:
	.loc 3 673 1 view .LVU466
	jmp	.L142
.LVL179:
.L145:
	.loc 3 655 3 is_stmt 1 view .LVU467
	.loc 3 655 11 is_stmt 0 view .LVU468
	call	dcgettext@PLT
.LVL180:
.LBB196:
.LBB180:
	.loc 4 107 10 view .LVU469
	leaq	.LC28(%rip), %rcx
	movl	$1, %edi
	leaq	.LC29(%rip), %rdx
.LBE180:
.LBE196:
	.loc 3 655 11 view .LVU470
	movq	%rax, %rsi
.LVL181:
.LBB197:
	.loc 4 105 1 is_stmt 1 view .LVU471
.LBB181:
	.loc 4 107 3 view .LVU472
	.loc 4 107 10 is_stmt 0 view .LVU473
	xorl	%eax, %eax
.LVL182:
	.loc 4 107 10 view .LVU474
	call	__printf_chk@PLT
.LVL183:
	.loc 4 107 10 view .LVU475
.LBE181:
.LBE197:
	.loc 3 659 3 is_stmt 1 view .LVU476
	.loc 3 659 29 is_stmt 0 view .LVU477
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL184:
	movq	%rax, %rdi
.LVL185:
	.loc 3 660 3 is_stmt 1 view .LVU478
	.loc 3 660 6 is_stmt 0 view .LVU479
	testq	%rax, %rax
	je	.L148
	.loc 3 660 22 view .LVU480
	movl	$3, %edx
	leaq	.LC30(%rip), %rsi
	call	strncmp@PLT
.LVL186:
	.loc 3 660 19 view .LVU481
	testl	%eax, %eax
	jne	.L167
.L148:
	.loc 3 669 3 is_stmt 1 view .LVU482
	.loc 3 669 11 is_stmt 0 view .LVU483
	movl	$5, %edx
	leaq	.LC32(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL187:
.LBB198:
.LBB187:
	.loc 4 107 10 view .LVU484
	leaq	.LC9(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	movl	$1, %edi
.LBE187:
.LBE198:
	.loc 3 669 11 view .LVU485
	movq	%rax, %rsi
.LVL188:
.LBB199:
	.loc 4 105 1 is_stmt 1 view .LVU486
.LBB188:
	.loc 4 107 3 view .LVU487
	.loc 4 107 10 is_stmt 0 view .LVU488
	xorl	%eax, %eax
.LVL189:
	.loc 4 107 10 view .LVU489
.LBE188:
.LBE199:
	.loc 3 646 15 view .LVU490
	leaq	.LC9(%rip), %r12
.LBB200:
.LBB189:
	.loc 4 107 10 view .LVU491
	call	__printf_chk@PLT
.LVL190:
	.loc 4 107 10 view .LVU492
.LBE189:
.LBE200:
	.loc 3 671 3 is_stmt 1 view .LVU493
	leaq	.LC10(%rip), %r13
	jmp	.L147
.L167:
	.loc 3 646 15 is_stmt 0 view .LVU494
	leaq	.LC9(%rip), %r12
.LVL191:
.L149:
	.loc 3 666 7 is_stmt 1 view .LVU495
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC31(%rip), %rsi
	call	dcgettext@PLT
.LVL192:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL193:
	jmp	.L146
.LBE201:
.LBE206:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC34:
	.string	"';\nexport LS_COLORS\n"
.LC35:
	.string	"LS_COLORS='"
.LC36:
	.string	"'\n"
.LC37:
	.string	"setenv LS_COLORS '"
.LC38:
	.string	"/usr/local/share/locale"
.LC39:
	.string	"H. Peter Anvin"
.LC40:
	.string	"bcp"
	.section	.rodata.str1.8
	.align 8
.LC41:
	.string	"the options to output dircolors' internal database and\nto select a shell syntax are mutually exclusive"
	.section	.rodata.str1.1
.LC42:
	.string	"SHELL"
.LC43:
	.string	"csh"
.LC44:
	.string	"tcsh"
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"no SHELL environment variable, and no shell type option given"
	.section	.rodata.str1.1
.LC46:
	.string	"-"
.LC47:
	.string	"r"
.LC48:
	.string	"%s"
.LC49:
	.string	"extra operand %s"
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"file operands cannot be combined with --print-database (-p)"
	.section	.rodata.str1.1
.LC51:
	.string	"%s\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL194:
.LFB141:
	.loc 1 397 1 view -0
	.cfi_startproc
	.loc 1 397 1 is_stmt 0 view .LVU497
	endbr64
	.loc 1 398 3 is_stmt 1 view .LVU498
.LVL195:
	.loc 1 399 3 view .LVU499
	.loc 1 400 3 view .LVU500
	.loc 1 401 3 view .LVU501
	.loc 1 403 33 view .LVU502
	.loc 1 404 3 view .LVU503
	.loc 1 397 1 is_stmt 0 view .LVU504
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	.loc 1 400 21 view .LVU505
	movl	$2, %r13d
	.loc 1 397 1 view .LVU506
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	.loc 1 401 8 view .LVU507
	xorl	%r12d, %r12d
	.loc 1 397 1 view .LVU508
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 404 3 view .LVU509
	movq	(%rsi), %rdi
.LVL196:
	.loc 1 404 3 view .LVU510
	call	set_program_name@PLT
.LVL197:
	.loc 1 405 3 is_stmt 1 view .LVU511
	leaq	.LC11(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL198:
	.loc 1 406 3 view .LVU512
	leaq	.LC38(%rip), %rsi
	leaq	.LC20(%rip), %rdi
	call	bindtextdomain@PLT
.LVL199:
	.loc 1 407 3 view .LVU513
	leaq	.LC20(%rip), %rdi
	call	textdomain@PLT
.LVL200:
	.loc 1 409 3 view .LVU514
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL201:
	.loc 1 411 3 view .LVU515
	.p2align 4,,10
	.p2align 3
.L169:
	.loc 1 411 9 view .LVU516
	.loc 1 411 18 is_stmt 0 view .LVU517
	xorl	%r8d, %r8d
	leaq	long_options(%rip), %rcx
	movq	%rbx, %rsi
	movl	%ebp, %edi
	leaq	.LC40(%rip), %rdx
	call	getopt_long@PLT
.LVL202:
	.loc 1 411 9 view .LVU518
	cmpl	$-1, %eax
	je	.L219
	.loc 1 412 5 is_stmt 1 view .LVU519
	cmpl	$98, %eax
	je	.L192
	jle	.L220
	cmpl	$99, %eax
	jne	.L221
	movl	$1, %r13d
.LVL203:
	.loc 1 412 5 is_stmt 0 view .LVU520
	jmp	.L169
.LVL204:
	.p2align 4,,10
	.p2align 3
.L220:
	.loc 1 412 5 view .LVU521
	cmpl	$-131, %eax
	jne	.L222
	.loc 1 426 7 is_stmt 1 view .LVU522
	.loc 1 426 28 view .LVU523
	.loc 1 428 7 view .LVU524
	movq	stdout(%rip), %rdi
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
.LVL205:
	.loc 1 428 7 is_stmt 0 view .LVU525
	xorl	%r9d, %r9d
	leaq	.LC39(%rip), %r8
	leaq	.LC29(%rip), %rdx
	leaq	.LC9(%rip), %rsi
	call	version_etc@PLT
.LVL206:
	.loc 1 428 7 is_stmt 1 view .LVU526
	xorl	%edi, %edi
	call	exit@PLT
.LVL207:
	.p2align 4,,10
	.p2align 3
.L221:
	.loc 1 412 5 is_stmt 0 view .LVU527
	cmpl	$112, %eax
	jne	.L218
	.loc 1 423 24 view .LVU528
	movl	$1, %r12d
.LVL208:
	.loc 1 423 24 view .LVU529
	jmp	.L169
.LVL209:
.L222:
	.loc 1 412 5 view .LVU530
	cmpl	$-130, %eax
	jne	.L218
	.loc 1 426 7 is_stmt 1 view .LVU531
	xorl	%edi, %edi
	call	usage
.LVL210:
	.p2align 4,,10
	.p2align 3
.L192:
	.loc 1 415 16 is_stmt 0 view .LVU532
	xorl	%r13d, %r13d
.LVL211:
	.loc 1 415 16 view .LVU533
	jmp	.L169
.LVL212:
.L219:
	.loc 1 434 3 is_stmt 1 view .LVU534
	.loc 1 434 8 is_stmt 0 view .LVU535
	movslq	optind(%rip), %rax
.LVL213:
	.loc 1 434 8 view .LVU536
	subl	%eax, %ebp
.LVL214:
	.loc 1 435 3 is_stmt 1 view .LVU537
	.loc 1 435 8 is_stmt 0 view .LVU538
	leaq	(%rbx,%rax,8), %rbx
.LVL215:
	.loc 1 439 3 is_stmt 1 view .LVU539
	.loc 1 439 6 is_stmt 0 view .LVU540
	cmpl	$2, %r13d
	je	.L176
	testb	%r12b, %r12b
	jne	.L223
.L176:
	.loc 1 447 3 is_stmt 1 view .LVU541
	.loc 1 447 8 is_stmt 0 view .LVU542
	movl	%r12d, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 1 447 6 view .LVU543
	cmpl	%ebp, %eax
	jl	.L224
	.loc 1 457 3 is_stmt 1 view .LVU544
	.loc 1 457 6 is_stmt 0 view .LVU545
	testb	%r12b, %r12b
	je	.L180
.LBB221:
	.loc 1 459 19 view .LVU546
	leaq	G_line(%rip), %rbx
.LVL216:
	.loc 1 463 16 view .LVU547
	orq	$-1, %rbp
.LVL217:
	.loc 1 459 19 view .LVU548
	movq	%rbx, %r13
.LVL218:
.L181:
	.loc 1 462 11 is_stmt 1 view .LVU549
	movq	%r13, %rdi
	call	puts@PLT
.LVL219:
	.loc 1 463 11 view .LVU550
	.loc 1 463 16 is_stmt 0 view .LVU551
	xorl	%eax, %eax
	movq	%r13, %rdi
	movq	%rbp, %rcx
	repnz scasb
.LVL220:
	.loc 1 463 16 view .LVU552
	movq	%rcx, %rax
	notq	%rax
	.loc 1 463 13 view .LVU553
	addq	%rax, %r13
.LVL221:
	.loc 1 460 13 is_stmt 1 view .LVU554
	.loc 1 460 16 is_stmt 0 view .LVU555
	movq	%r13, %rax
	subq	%rbx, %rax
	.loc 1 460 13 view .LVU556
	cmpq	$4303, %rax
	jbe	.L181
.LVL222:
.L182:
	.loc 1 460 13 view .LVU557
.LBE221:
	.loc 1 508 3 is_stmt 1 view .LVU558
	.loc 1 508 28 is_stmt 0 view .LVU559
	xorl	$1, %r12d
.LVL223:
	.loc 1 509 1 view .LVU560
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	.loc 1 508 28 view .LVU561
	movzbl	%r12b, %eax
	.loc 1 509 1 view .LVU562
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
.LVL224:
.L180:
	.cfi_restore_state
	.loc 1 469 7 is_stmt 1 view .LVU563
	.loc 1 469 10 is_stmt 0 view .LVU564
	cmpl	$2, %r13d
	je	.L225
.LVL225:
.L183:
	.loc 1 479 7 is_stmt 1 view .LVU565
	movq	free@GOTPCREL(%rip), %r8
	movq	malloc@GOTPCREL(%rip), %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_begin@PLT
.LVL226:
	.loc 1 480 7 view .LVU566
	.loc 1 480 10 is_stmt 0 view .LVU567
	testl	%ebp, %ebp
	je	.L226
	.loc 1 483 9 is_stmt 1 view .LVU568
	.loc 1 483 14 is_stmt 0 view .LVU569
	movq	(%rbx), %r14
.LVL227:
.LBB222:
.LBI222:
	.loc 1 374 1 is_stmt 1 view .LVU570
.LBB223:
	.loc 1 376 3 view .LVU571
	.loc 1 378 3 view .LVU572
	.loc 1 378 9 is_stmt 0 view .LVU573
	leaq	.LC46(%rip), %rsi
	movq	%r14, %rdi
	call	strcmp@PLT
.LVL228:
	.loc 1 378 6 view .LVU574
	testl	%eax, %eax
	je	.L187
	.loc 1 378 34 view .LVU575
	movq	stdin(%rip), %rdx
	leaq	.LC47(%rip), %rsi
	movq	%r14, %rdi
	call	freopen_safer@PLT
.LVL229:
	.loc 1 378 31 view .LVU576
	testq	%rax, %rax
	je	.L217
.L187:
	.loc 1 384 3 is_stmt 1 view .LVU577
	.loc 1 384 8 is_stmt 0 view .LVU578
	movq	stdin(%rip), %rdi
	movq	%r14, %rsi
	call	dc_parse_stream
.LVL230:
	.loc 1 386 7 view .LVU579
	movq	stdin(%rip), %rdi
	.loc 1 384 8 view .LVU580
	movl	%eax, %ebx
.LVL231:
	.loc 1 386 3 is_stmt 1 view .LVU581
	.loc 1 386 7 is_stmt 0 view .LVU582
	call	rpl_fclose@PLT
.LVL232:
	.loc 1 386 6 view .LVU583
	testl	%eax, %eax
	jne	.L217
	.loc 1 392 10 view .LVU584
	movl	%ebx, %r12d
.LVL233:
.L186:
	.loc 1 392 10 view .LVU585
.LBE223:
.LBE222:
	.loc 1 485 7 is_stmt 1 view .LVU586
	.loc 1 485 10 is_stmt 0 view .LVU587
	testb	%r12b, %r12b
	je	.L182
.LBB225:
	.loc 1 487 11 is_stmt 1 view .LVU588
.LBB226:
	.loc 1 487 24 view .LVU589
.LVL234:
	.loc 1 487 24 view .LVU590
	movq	24+lsc_obstack(%rip), %rax
	movq	16+lsc_obstack(%rip), %r14
	movq	%rax, %r15
	subq	%r14, %r15
.LVL235:
	.loc 1 487 24 is_stmt 0 view .LVU591
.LBE226:
	.loc 1 488 11 is_stmt 1 view .LVU592
.LBB227:
	.loc 1 488 21 view .LVU593
	.loc 1 488 21 view .LVU594
	.loc 1 488 21 view .LVU595
	cmpq	%r14, %rax
	je	.L227
.L188:
	.loc 1 488 21 discriminator 3 view .LVU596
	movq	48+lsc_obstack(%rip), %rdx
	movq	8+lsc_obstack(%rip), %rcx
.LBE227:
	.loc 1 500 22 is_stmt 0 discriminator 3 view .LVU597
	leaq	.LC34(%rip), %rbp
.LVL236:
	.loc 1 500 22 discriminator 3 view .LVU598
	leaq	.LC35(%rip), %rdi
.LBB228:
	.loc 1 488 21 discriminator 3 view .LVU599
	addq	%rdx, %rax
	notq	%rdx
	andq	%rdx, %rax
	.loc 1 488 21 is_stmt 1 discriminator 3 view .LVU600
	movq	32+lsc_obstack(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rbx
	subq	%rcx, %rsi
	subq	%rcx, %rbx
	cmpq	%rbx, %rsi
.LBE228:
	.loc 1 502 11 is_stmt 0 discriminator 3 view .LVU601
	movq	stdout(%rip), %rsi
.LBB229:
	.loc 1 488 21 discriminator 3 view .LVU602
	cmova	%rdx, %rax
.LBE229:
	.loc 1 500 22 discriminator 3 view .LVU603
	testl	%r13d, %r13d
.LBB230:
	.loc 1 488 21 discriminator 3 view .LVU604
	movq	%rax, 24+lsc_obstack(%rip)
	.loc 1 488 21 is_stmt 1 discriminator 3 view .LVU605
	movq	%rax, 16+lsc_obstack(%rip)
	.loc 1 488 21 discriminator 3 view .LVU606
.LVL237:
	.loc 1 488 21 is_stmt 0 discriminator 3 view .LVU607
.LBE230:
	.loc 1 489 11 is_stmt 1 discriminator 3 view .LVU608
	.loc 1 490 11 discriminator 3 view .LVU609
	.loc 1 492 11 discriminator 3 view .LVU610
	.loc 1 500 22 is_stmt 0 discriminator 3 view .LVU611
	leaq	.LC36(%rip), %rax
	cmovne	%rax, %rbp
	leaq	.LC37(%rip), %rax
	cmovne	%rax, %rdi
.LVL238:
	.loc 1 502 11 is_stmt 1 discriminator 3 view .LVU612
	call	fputs_unlocked@PLT
.LVL239:
	.loc 1 503 11 discriminator 3 view .LVU613
	movq	%r14, %rdi
	movq	%r15, %rdx
	movl	$1, %esi
	movq	stdout(%rip), %rcx
	call	fwrite_unlocked@PLT
.LVL240:
	.loc 1 504 11 discriminator 3 view .LVU614
	movq	stdout(%rip), %rsi
	movq	%rbp, %rdi
	call	fputs_unlocked@PLT
.LVL241:
	jmp	.L182
.LVL242:
.L226:
	.loc 1 504 11 is_stmt 0 discriminator 3 view .LVU615
.LBE225:
	.loc 1 481 9 is_stmt 1 view .LVU616
	.loc 1 481 14 is_stmt 0 view .LVU617
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	dc_parse_stream
.LVL243:
	movl	%eax, %r12d
.LVL244:
	.loc 1 481 14 view .LVU618
	jmp	.L186
.LVL245:
.L225:
	.loc 1 471 11 is_stmt 1 view .LVU619
.LBB232:
.LBI232:
	.loc 1 126 1 view .LVU620
.LBB233:
	.loc 1 128 3 view .LVU621
	.loc 1 130 3 view .LVU622
	.loc 1 130 11 is_stmt 0 view .LVU623
	leaq	.LC42(%rip), %rdi
	call	getenv@PLT
.LVL246:
	movq	%rax, %rdi
.LVL247:
	.loc 1 131 3 is_stmt 1 view .LVU624
	.loc 1 131 6 is_stmt 0 view .LVU625
	testq	%rax, %rax
	je	.L184
	.loc 1 131 21 view .LVU626
	cmpb	$0, (%rax)
	je	.L184
	.loc 1 134 3 is_stmt 1 view .LVU627
	.loc 1 134 11 is_stmt 0 view .LVU628
	call	last_component@PLT
.LVL248:
	.loc 1 136 7 view .LVU629
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	.loc 1 134 11 view .LVU630
	movq	%rax, %r13
.LVL249:
	.loc 1 136 3 is_stmt 1 view .LVU631
	.loc 1 136 7 is_stmt 0 view .LVU632
	call	strcmp@PLT
.LVL250:
	.loc 1 136 6 view .LVU633
	testl	%eax, %eax
	je	.L195
	.loc 1 136 31 view .LVU634
	movq	%r13, %rdi
	leaq	.LC44(%rip), %rsi
	.loc 1 136 28 view .LVU635
	xorl	%r13d, %r13d
.LVL251:
	.loc 1 136 31 view .LVU636
	call	strcmp@PLT
.LVL252:
	.loc 1 136 28 view .LVU637
	testl	%eax, %eax
	sete	%r13b
	jmp	.L183
.LVL253:
.L227:
	.loc 1 136 28 view .LVU638
.LBE233:
.LBE232:
.LBB235:
.LBB231:
	.loc 1 488 21 is_stmt 1 discriminator 1 view .LVU639
	orb	$2, 80+lsc_obstack(%rip)
	jmp	.L188
.LVL254:
.L217:
	.loc 1 488 21 is_stmt 0 discriminator 1 view .LVU640
.LBE231:
.LBE235:
.LBB236:
.LBB224:
	.loc 1 388 7 is_stmt 1 view .LVU641
	movq	%r14, %rdx
	xorl	%edi, %edi
	movl	$3, %esi
	call	quotearg_n_style_colon@PLT
.LVL255:
	movq	%rax, %r13
.LVL256:
	.loc 1 388 17 is_stmt 0 view .LVU642
	call	__errno_location@PLT
.LVL257:
	.loc 1 388 7 view .LVU643
	movq	%r13, %rcx
	leaq	.LC48(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL258:
	.loc 1 389 7 is_stmt 1 view .LVU644
	.loc 1 389 7 is_stmt 0 view .LVU645
.LBE224:
.LBE236:
	.loc 1 485 7 is_stmt 1 view .LVU646
	jmp	.L182
.LVL259:
.L195:
.LBB237:
.LBB234:
	.loc 1 137 12 is_stmt 0 view .LVU647
	movl	$1, %r13d
.LVL260:
	.loc 1 137 12 view .LVU648
	jmp	.L183
.LVL261:
.L224:
	.loc 1 137 12 view .LVU649
.LBE234:
.LBE237:
	.loc 1 449 7 is_stmt 1 view .LVU650
	.loc 1 449 54 is_stmt 0 view .LVU651
	testb	%r12b, %r12b
	je	.L228
	.loc 1 449 7 view .LVU652
	movq	(%rbx), %rdi
	call	quote@PLT
.LVL262:
	.loc 1 449 20 view .LVU653
	movl	$5, %edx
	leaq	.LC49(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 449 7 view .LVU654
	movq	%rax, %r12
.LVL263:
	.loc 1 449 20 view .LVU655
	call	dcgettext@PLT
.LVL264:
	.loc 1 449 7 view .LVU656
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 449 20 view .LVU657
	movq	%rax, %rdx
	.loc 1 449 7 view .LVU658
	xorl	%eax, %eax
	call	error@PLT
.LVL265:
	.loc 1 450 7 is_stmt 1 view .LVU659
	.loc 1 451 9 view .LVU660
	movl	$5, %edx
	leaq	.LC50(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL266:
.LBB238:
.LBB239:
	.loc 4 100 10 is_stmt 0 view .LVU661
	movq	stderr(%rip), %rdi
	movl	$1, %esi
	leaq	.LC51(%rip), %rdx
.LBE239:
.LBE238:
	.loc 1 451 9 view .LVU662
	movq	%rax, %rcx
.LVL267:
.LBB241:
.LBI238:
	.loc 4 98 1 is_stmt 1 view .LVU663
.LBB240:
	.loc 4 100 3 view .LVU664
	.loc 4 100 10 is_stmt 0 view .LVU665
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.LVL268:
.L218:
	.loc 4 100 10 view .LVU666
.LBE240:
.LBE241:
	.loc 1 444 7 is_stmt 1 view .LVU667
	movl	$1, %edi
	call	usage
.LVL269:
.L223:
	.loc 1 441 7 view .LVU668
	.loc 1 442 14 is_stmt 0 view .LVU669
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC41(%rip), %rsi
	call	dcgettext@PLT
.LVL270:
	.loc 1 441 7 view .LVU670
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 442 14 view .LVU671
	movq	%rax, %rdx
	.loc 1 441 7 view .LVU672
	xorl	%eax, %eax
	call	error@PLT
.LVL271:
	jmp	.L218
.LVL272:
.L184:
.LBB242:
	.loc 1 474 15 is_stmt 1 view .LVU673
	movl	$5, %edx
	leaq	.LC45(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL273:
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL274:
.L228:
	.loc 1 474 15 is_stmt 0 view .LVU674
.LBE242:
	.loc 1 449 7 view .LVU675
	movq	8(%rbx), %rdi
	call	quote@PLT
.LVL275:
	.loc 1 449 20 view .LVU676
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC49(%rip), %rsi
	.loc 1 449 7 view .LVU677
	movq	%rax, %r12
.LVL276:
	.loc 1 449 20 view .LVU678
	call	dcgettext@PLT
.LVL277:
	.loc 1 449 7 view .LVU679
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 449 20 view .LVU680
	movq	%rax, %rdx
	.loc 1 449 7 view .LVU681
	xorl	%eax, %eax
	call	error@PLT
.LVL278:
	.loc 1 450 7 is_stmt 1 view .LVU682
	jmp	.L218
	.cfi_endproc
.LFE141:
	.size	main, .-main
	.section	.rodata.str1.1
.LC52:
	.string	"bourne-shell"
.LC53:
	.string	"sh"
.LC54:
	.string	"c-shell"
.LC55:
	.string	"print-database"
.LC56:
	.string	"help"
.LC57:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 256
long_options:
	.quad	.LC52
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC53
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC43
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC54
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC55
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC56
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC57
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
	.section	.rodata.str1.1
.LC58:
	.string	"no"
.LC59:
	.string	"fi"
.LC60:
	.string	"rs"
.LC61:
	.string	"di"
.LC62:
	.string	"ln"
.LC63:
	.string	"or"
.LC64:
	.string	"mi"
.LC65:
	.string	"pi"
.LC66:
	.string	"so"
.LC67:
	.string	"bd"
.LC68:
	.string	"cd"
.LC69:
	.string	"do"
.LC70:
	.string	"ex"
.LC71:
	.string	"lc"
.LC72:
	.string	"rc"
.LC73:
	.string	"ec"
.LC74:
	.string	"su"
.LC75:
	.string	"sg"
.LC76:
	.string	"st"
.LC77:
	.string	"ow"
.LC78:
	.string	"tw"
.LC79:
	.string	"ca"
.LC80:
	.string	"mh"
.LC81:
	.string	"cl"
	.section	.data.rel.ro.local
	.align 32
	.type	ls_codes, @object
	.size	ls_codes, 304
ls_codes:
	.quad	.LC58
	.quad	.LC58
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC62
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.quad	.LC67
	.quad	.LC68
	.quad	.LC68
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC71
	.quad	.LC72
	.quad	.LC72
	.quad	.LC73
	.quad	.LC73
	.quad	.LC74
	.quad	.LC74
	.quad	.LC75
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC77
	.quad	.LC78
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	0
	.section	.rodata.str1.1
.LC82:
	.string	"NORM"
.LC83:
	.string	"FILE"
.LC84:
	.string	"RESET"
.LC85:
	.string	"DIR"
.LC86:
	.string	"LNK"
.LC87:
	.string	"LINK"
.LC88:
	.string	"SYMLINK"
.LC89:
	.string	"ORPHAN"
.LC90:
	.string	"MISSING"
.LC91:
	.string	"FIFO"
.LC92:
	.string	"PIPE"
.LC93:
	.string	"SOCK"
.LC94:
	.string	"BLK"
.LC95:
	.string	"BLOCK"
.LC96:
	.string	"CHR"
.LC97:
	.string	"CHAR"
.LC98:
	.string	"DOOR"
.LC99:
	.string	"EXEC"
.LC100:
	.string	"LEFT"
.LC101:
	.string	"LEFTCODE"
.LC102:
	.string	"RIGHT"
.LC103:
	.string	"RIGHTCODE"
.LC104:
	.string	"END"
.LC105:
	.string	"ENDCODE"
.LC106:
	.string	"SUID"
.LC107:
	.string	"SETUID"
.LC108:
	.string	"SGID"
.LC109:
	.string	"SETGID"
.LC110:
	.string	"STICKY"
.LC111:
	.string	"OTHER_WRITABLE"
.LC112:
	.string	"OWR"
.LC113:
	.string	"STICKY_OTHER_WRITABLE"
.LC114:
	.string	"OWT"
.LC115:
	.string	"CAPABILITY"
.LC116:
	.string	"MULTIHARDLINK"
.LC117:
	.string	"CLRTOEOL"
	.section	.data.rel.ro.local
	.align 32
	.type	slack_codes, @object
	.size	slack_codes, 304
slack_codes:
	.quad	.LC1
	.quad	.LC82
	.quad	.LC83
	.quad	.LC84
	.quad	.LC85
	.quad	.LC86
	.quad	.LC87
	.quad	.LC88
	.quad	.LC89
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.quad	.LC93
	.quad	.LC94
	.quad	.LC95
	.quad	.LC96
	.quad	.LC97
	.quad	.LC98
	.quad	.LC99
	.quad	.LC100
	.quad	.LC101
	.quad	.LC102
	.quad	.LC103
	.quad	.LC104
	.quad	.LC105
	.quad	.LC106
	.quad	.LC107
	.quad	.LC108
	.quad	.LC109
	.quad	.LC110
	.quad	.LC111
	.quad	.LC112
	.quad	.LC113
	.quad	.LC114
	.quad	.LC115
	.quad	.LC116
	.quad	.LC117
	.quad	0
	.local	lsc_obstack
	.comm	lsc_obstack,88,32
	.section	.rodata
	.align 32
	.type	G_line, @object
	.size	G_line, 4304
G_line:
	.string	"# Configuration file for dircolors, a utility to help you set the"
	.string	"# LS_COLORS environment variable used by GNU ls with the --color option."
	.string	"# Copyright (C) 1996-2020 Free Software Foundation, Inc."
	.string	"# Copying and distribution of this file, with or without modification,"
	.string	"# are permitted provided the copyright notice and this notice are preserved."
	.string	"# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the"
	.string	"# slackware version of dircolors) are recognized but ignored."
	.string	"# Below are TERM entries, which can be a glob patterns, to match"
	.string	"# against the TERM environment variable to determine if it is colorizable."
	.string	"TERM Eterm"
	.string	"TERM ansi"
	.string	"TERM *color*"
	.string	"TERM con[0-9]*x[0-9]*"
	.string	"TERM cons25"
	.string	"TERM console"
	.string	"TERM cygwin"
	.string	"TERM dtterm"
	.string	"TERM gnome"
	.string	"TERM hurd"
	.string	"TERM jfbterm"
	.string	"TERM konsole"
	.string	"TERM kterm"
	.string	"TERM linux"
	.string	"TERM linux-c"
	.string	"TERM mlterm"
	.string	"TERM putty"
	.string	"TERM rxvt*"
	.string	"TERM screen*"
	.string	"TERM st"
	.string	"TERM terminator"
	.string	"TERM tmux*"
	.string	"TERM vt100"
	.string	"TERM xterm*"
	.string	"# Below are the color init strings for the basic file types."
	.string	"# One can use codes for 256 or more colors supported by modern terminals."
	.string	"# The default color codes use the capabilities of an 8 color terminal"
	.string	"# with some additional attributes as per the following codes:"
	.string	"# Attribute codes:"
	.string	"# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed"
	.string	"# Text color codes:"
	.string	"# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white"
	.string	"# Background color codes:"
	.string	"# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white"
	.string	"#NORMAL 00 # no color code at all"
	.string	"#FILE 00 # regular file: use no color at all"
	.string	"RESET 0 # reset to \"normal\" color"
	.string	"DIR 01;34 # directory"
	.string	"LINK 01;36 # symbolic link. (If you set this to 'target' instead of a"
	.string	" # numerical value, the color is as for the file pointed to.)"
	.string	"MULTIHARDLINK 00 # regular file with more than one link"
	.string	"FIFO 40;33 # pipe"
	.string	"SOCK 01;35 # socket"
	.string	"DOOR 01;35 # door"
	.string	"BLK 40;33;01 # block device driver"
	.string	"CHR 40;33;01 # character device driver"
	.string	"ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ..."
	.ascii	"MISSING 00 # ... and the files th"
	.string	"ey point to"
	.string	"SETUID 37;41 # file that is setuid (u+s)"
	.string	"SETGID 30;43 # file that is setgid (g+s)"
	.string	"CAPABILITY 30;41 # file with capability"
	.string	"STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)"
	.string	"OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky"
	.string	"STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable"
	.string	"# This is for files with execute permission:"
	.string	"EXEC 01;32"
	.string	"# List any file extensions like '.gz' or '.tar' that you would like ls"
	.string	"# to colorize below. Put the extension, a space, and the color init string."
	.string	"# (and any comments you want to add after a '#')"
	.string	"# If you use DOS-style suffixes, you may want to uncomment the following:"
	.string	"#.cmd 01;32 # executables (bright green)"
	.string	"#.exe 01;32"
	.string	"#.com 01;32"
	.string	"#.btm 01;32"
	.string	"#.bat 01;32"
	.string	"# Or if you want to colorize scripts even if they do not have the"
	.string	"# executable bit actually set."
	.string	"#.sh 01;32"
	.string	"#.csh 01;32"
	.string	" # archives or compressed (bright red)"
	.string	".tar 01;31"
	.string	".tgz 01;31"
	.string	".arc 01;31"
	.string	".arj 01;31"
	.string	".taz 01;31"
	.string	".lha 01;31"
	.string	".lz4 01;31"
	.string	".lzh 01;31"
	.string	".lzma 01;31"
	.string	".tlz 01;31"
	.string	".txz 01;31"
	.string	".tzo 01;31"
	.string	".t7z 01;31"
	.string	".zip 01;31"
	.string	".z 01;31"
	.string	".dz 01;31"
	.string	".gz 01;31"
	.string	".lrz 01;31"
	.string	".lz 01;31"
	.string	".lzo 01;31"
	.string	".xz 01;31"
	.string	".zst 01;31"
	.string	".tzst 01;31"
	.string	".bz2 01;31"
	.string	".bz 01;31"
	.string	".tbz 01;31"
	.string	".tbz2 01;31"
	.string	".tz 01;31"
	.string	".deb 01;31"
	.string	".rpm 01;31"
	.string	".jar 01;31"
	.string	".war 01;31"
	.string	".ear 01;31"
	.string	".sar 01;31"
	.string	".rar 01;31"
	.string	".alz 01;31"
	.string	".ace 01;31"
	.string	".zoo 01;31"
	.string	".cpio 01;31"
	.string	".7z 01;31"
	.string	".rz 01;31"
	.string	".cab 01;31"
	.string	".wim 01;31"
	.string	".swm 01;31"
	.string	".dwm 01;31"
	.string	".esd 01;31"
	.string	"# image formats"
	.string	".jpg 01;35"
	.string	".jpeg 01;35"
	.string	".mjpg 01;35"
	.string	".mjpeg 01;35"
	.string	".gif 01;35"
	.string	".bmp 01;35"
	.string	".pbm 01;35"
	.string	".pgm 01;35"
	.string	".ppm 01;35"
	.string	".tga 01;35"
	.string	".xbm 01;35"
	.string	".xpm 01;35"
	.string	".tif 01;35"
	.string	".tiff 01;35"
	.string	".png 01;35"
	.string	".svg 01;35"
	.string	".svgz 01;35"
	.string	".mng 01;35"
	.string	".pcx 01;35"
	.string	".mov 01;35"
	.string	".mpg 01;35"
	.string	".mpeg 01;35"
	.string	".m2v 01;35"
	.string	".mkv 01;35"
	.string	".webm 01;35"
	.string	".webp 01;35"
	.string	".ogm 01;35"
	.string	".mp4 01;35"
	.string	".m4v 01;35"
	.string	".mp4v 01;35"
	.string	".vob 01;35"
	.string	".qt 01;35"
	.string	".nuv 01;35"
	.string	".wmv 01;35"
	.string	".asf 01;35"
	.string	".rm 01;35"
	.string	".rmvb 01;35"
	.string	".flc 01;35"
	.string	".avi 01;35"
	.string	".fli 01;35"
	.string	".flv 01;35"
	.string	".gl 01;35"
	.string	".dl 01;35"
	.string	".xcf 01;35"
	.string	".xwd 01;35"
	.string	".yuv 01;35"
	.string	".cgm 01;35"
	.string	".emf 01;35"
	.ascii	"# https://wiki.xiph.or"
	.string	"g/MIME_Types_and_File_Extensions"
	.string	".ogv 01;35"
	.string	".ogx 01;35"
	.string	"# audio formats"
	.string	".aac 00;36"
	.string	".au 00;36"
	.string	".flac 00;36"
	.string	".m4a 00;36"
	.string	".mid 00;36"
	.string	".midi 00;36"
	.string	".mka 00;36"
	.string	".mp3 00;36"
	.string	".mpc 00;36"
	.string	".ogg 00;36"
	.string	".ra 00;36"
	.string	".wav 00;36"
	.string	"# https://wiki.xiph.org/MIME_Types_and_File_Extensions"
	.string	".oga 00;36"
	.string	".opus 00;36"
	.string	".spx 00;36"
	.string	".xspf 00;36"
	.text
.Letext0:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 8 "./lib/sys/select.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 11 "/usr/include/time.h"
	.file 12 "/usr/include/signal.h"
	.file 13 "/usr/include/unistd.h"
	.file 14 "/usr/include/errno.h"
	.file 15 "src/version.h"
	.file 16 "./lib/exitfail.h"
	.file 17 "./lib/timespec.h"
	.file 18 "/usr/include/ctype.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 21 "/usr/include/stdio.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 23 "./lib/version-etc.h"
	.file 24 "./lib/progname.h"
	.file 25 "./lib/quotearg.h"
	.file 26 "./lib/error.h"
	.file 27 "./lib/obstack.h"
	.file 28 "./lib/quote.h"
	.file 29 "src/dircolors.h"
	.file 30 "/usr/include/libintl.h"
	.file 31 "/usr/include/string.h"
	.file 32 "./lib/stdio-safer.h"
	.file 33 "./lib/stdio.h"
	.file 34 "/usr/include/stdlib.h"
	.file 35 "./lib/basename-lgpl.h"
	.file 36 "/usr/include/locale.h"
	.file 37 "./lib/c-strcase.h"
	.file 38 "./lib/xstrndup.h"
	.file 39 "/usr/include/fnmatch.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x247a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF234
	.byte	0xc
	.long	.LASF235
	.long	.LASF236
	.long	.Ldebug_ranges0+0x660
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
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x5f
	.uleb128 0x5
	.long	.LASF8
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x5f
	.uleb128 0x5
	.long	.LASF9
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x5f
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x5
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
	.byte	0x6
	.byte	0x7
	.byte	0x12
	.long	0x7e
	.uleb128 0x5
	.long	.LASF13
	.byte	0x7
	.byte	0xd1
	.byte	0x17
	.long	0x3e
	.uleb128 0x9
	.long	.LASF16
	.byte	0x8
	.value	0x30c
	.byte	0x1
	.long	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0xa
	.long	.LASF17
	.byte	0x9
	.byte	0x24
	.byte	0xe
	.long	0x98
	.uleb128 0xa
	.long	.LASF18
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.long	0x53
	.uleb128 0xa
	.long	.LASF19
	.byte	0x9
	.byte	0x37
	.byte	0xc
	.long	0x53
	.uleb128 0xa
	.long	.LASF20
	.byte	0x9
	.byte	0x3b
	.byte	0xc
	.long	0x53
	.uleb128 0xb
	.long	.LASF54
	.byte	0x20
	.byte	0xa
	.byte	0x32
	.byte	0x8
	.long	0x14f
	.uleb128 0xc
	.long	.LASF21
	.byte	0xa
	.byte	0x34
	.byte	0xf
	.long	0x154
	.byte	0
	.uleb128 0xc
	.long	.LASF22
	.byte	0xa
	.byte	0x37
	.byte	0x7
	.long	0x53
	.byte	0x8
	.uleb128 0xc
	.long	.LASF23
	.byte	0xa
	.byte	0x38
	.byte	0x8
	.long	0x164
	.byte	0x10
	.uleb128 0xd
	.string	"val"
	.byte	0xa
	.byte	0x39
	.byte	0x7
	.long	0x53
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x10d
	.uleb128 0x7
	.byte	0x8
	.long	0xa5
	.uleb128 0x8
	.long	0x154
	.uleb128 0xe
	.long	0x154
	.uleb128 0x7
	.byte	0x8
	.long	0x53
	.uleb128 0xf
	.long	0x98
	.long	0x17a
	.uleb128 0x10
	.long	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0xb
	.byte	0x9f
	.byte	0xe
	.long	0x16a
	.uleb128 0xa
	.long	.LASF25
	.byte	0xb
	.byte	0xa0
	.byte	0xc
	.long	0x53
	.uleb128 0xa
	.long	.LASF26
	.byte	0xb
	.byte	0xa1
	.byte	0x11
	.long	0x5f
	.uleb128 0xa
	.long	.LASF27
	.byte	0xb
	.byte	0xa6
	.byte	0xe
	.long	0x16a
	.uleb128 0xa
	.long	.LASF28
	.byte	0xb
	.byte	0xae
	.byte	0xc
	.long	0x53
	.uleb128 0xa
	.long	.LASF29
	.byte	0xb
	.byte	0xaf
	.byte	0x11
	.long	0x5f
	.uleb128 0x9
	.long	.LASF30
	.byte	0xb
	.value	0x112
	.byte	0xc
	.long	0x53
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF31
	.uleb128 0x11
	.uleb128 0x4
	.long	0x1d6
	.uleb128 0x7
	.byte	0x8
	.long	0x1d6
	.uleb128 0xf
	.long	0x15a
	.long	0x1f2
	.uleb128 0x10
	.long	0x3e
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x1e2
	.uleb128 0x9
	.long	.LASF32
	.byte	0xc
	.value	0x11e
	.byte	0x1a
	.long	0x1f2
	.uleb128 0x9
	.long	.LASF33
	.byte	0xc
	.value	0x11f
	.byte	0x1a
	.long	0x1f2
	.uleb128 0x9
	.long	.LASF34
	.byte	0xd
	.value	0x21f
	.byte	0xf
	.long	0x21e
	.uleb128 0x7
	.byte	0x8
	.long	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0xd
	.value	0x221
	.byte	0xf
	.long	0x21e
	.uleb128 0xa
	.long	.LASF36
	.byte	0xe
	.byte	0x2d
	.byte	0xe
	.long	0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0xe
	.byte	0x2e
	.byte	0xe
	.long	0x98
	.uleb128 0xa
	.long	.LASF38
	.byte	0xf
	.byte	0x1
	.byte	0x14
	.long	0x154
	.uleb128 0xa
	.long	.LASF39
	.byte	0x10
	.byte	0x12
	.byte	0x15
	.long	0x5a
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x11
	.byte	0x29
	.byte	0x6
	.long	0x279
	.uleb128 0x13
	.long	.LASF40
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x11
	.byte	0x2a
	.byte	0x6
	.long	0x28e
	.uleb128 0x14
	.long	.LASF41
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x12
	.byte	0x2f
	.byte	0x1
	.long	0x2ed
	.uleb128 0x15
	.long	.LASF42
	.value	0x100
	.uleb128 0x15
	.long	.LASF43
	.value	0x200
	.uleb128 0x15
	.long	.LASF44
	.value	0x400
	.uleb128 0x15
	.long	.LASF45
	.value	0x800
	.uleb128 0x15
	.long	.LASF46
	.value	0x1000
	.uleb128 0x15
	.long	.LASF47
	.value	0x2000
	.uleb128 0x15
	.long	.LASF48
	.value	0x4000
	.uleb128 0x15
	.long	.LASF49
	.value	0x8000
	.uleb128 0x14
	.long	.LASF50
	.byte	0x1
	.uleb128 0x14
	.long	.LASF51
	.byte	0x2
	.uleb128 0x14
	.long	.LASF52
	.byte	0x4
	.uleb128 0x14
	.long	.LASF53
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF55
	.byte	0xd8
	.byte	0x13
	.byte	0x31
	.byte	0x8
	.long	0x474
	.uleb128 0xc
	.long	.LASF56
	.byte	0x13
	.byte	0x33
	.byte	0x7
	.long	0x53
	.byte	0
	.uleb128 0xc
	.long	.LASF57
	.byte	0x13
	.byte	0x36
	.byte	0x9
	.long	0x98
	.byte	0x8
	.uleb128 0xc
	.long	.LASF58
	.byte	0x13
	.byte	0x37
	.byte	0x9
	.long	0x98
	.byte	0x10
	.uleb128 0xc
	.long	.LASF59
	.byte	0x13
	.byte	0x38
	.byte	0x9
	.long	0x98
	.byte	0x18
	.uleb128 0xc
	.long	.LASF60
	.byte	0x13
	.byte	0x39
	.byte	0x9
	.long	0x98
	.byte	0x20
	.uleb128 0xc
	.long	.LASF61
	.byte	0x13
	.byte	0x3a
	.byte	0x9
	.long	0x98
	.byte	0x28
	.uleb128 0xc
	.long	.LASF62
	.byte	0x13
	.byte	0x3b
	.byte	0x9
	.long	0x98
	.byte	0x30
	.uleb128 0xc
	.long	.LASF63
	.byte	0x13
	.byte	0x3c
	.byte	0x9
	.long	0x98
	.byte	0x38
	.uleb128 0xc
	.long	.LASF64
	.byte	0x13
	.byte	0x3d
	.byte	0x9
	.long	0x98
	.byte	0x40
	.uleb128 0xc
	.long	.LASF65
	.byte	0x13
	.byte	0x40
	.byte	0x9
	.long	0x98
	.byte	0x48
	.uleb128 0xc
	.long	.LASF66
	.byte	0x13
	.byte	0x41
	.byte	0x9
	.long	0x98
	.byte	0x50
	.uleb128 0xc
	.long	.LASF67
	.byte	0x13
	.byte	0x42
	.byte	0x9
	.long	0x98
	.byte	0x58
	.uleb128 0xc
	.long	.LASF68
	.byte	0x13
	.byte	0x44
	.byte	0x16
	.long	0x48d
	.byte	0x60
	.uleb128 0xc
	.long	.LASF69
	.byte	0x13
	.byte	0x46
	.byte	0x14
	.long	0x493
	.byte	0x68
	.uleb128 0xc
	.long	.LASF70
	.byte	0x13
	.byte	0x48
	.byte	0x7
	.long	0x53
	.byte	0x70
	.uleb128 0xc
	.long	.LASF71
	.byte	0x13
	.byte	0x49
	.byte	0x7
	.long	0x53
	.byte	0x74
	.uleb128 0xc
	.long	.LASF72
	.byte	0x13
	.byte	0x4a
	.byte	0xb
	.long	0x66
	.byte	0x78
	.uleb128 0xc
	.long	.LASF73
	.byte	0x13
	.byte	0x4d
	.byte	0x12
	.long	0x30
	.byte	0x80
	.uleb128 0xc
	.long	.LASF74
	.byte	0x13
	.byte	0x4e
	.byte	0xf
	.long	0x45
	.byte	0x82
	.uleb128 0xc
	.long	.LASF75
	.byte	0x13
	.byte	0x4f
	.byte	0x8
	.long	0x499
	.byte	0x83
	.uleb128 0xc
	.long	.LASF76
	.byte	0x13
	.byte	0x51
	.byte	0xf
	.long	0x4a9
	.byte	0x88
	.uleb128 0xc
	.long	.LASF77
	.byte	0x13
	.byte	0x59
	.byte	0xd
	.long	0x72
	.byte	0x90
	.uleb128 0xc
	.long	.LASF78
	.byte	0x13
	.byte	0x5b
	.byte	0x17
	.long	0x4b4
	.byte	0x98
	.uleb128 0xc
	.long	.LASF79
	.byte	0x13
	.byte	0x5c
	.byte	0x19
	.long	0x4bf
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF80
	.byte	0x13
	.byte	0x5d
	.byte	0x14
	.long	0x493
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF81
	.byte	0x13
	.byte	0x5e
	.byte	0x9
	.long	0x8a
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF82
	.byte	0x13
	.byte	0x5f
	.byte	0xa
	.long	0xb6
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF83
	.byte	0x13
	.byte	0x60
	.byte	0x7
	.long	0x53
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF84
	.byte	0x13
	.byte	0x62
	.byte	0x8
	.long	0x4c5
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF85
	.byte	0x14
	.byte	0x7
	.byte	0x19
	.long	0x2ed
	.uleb128 0x16
	.long	.LASF237
	.byte	0x13
	.byte	0x2b
	.byte	0xe
	.uleb128 0x17
	.long	.LASF86
	.uleb128 0x7
	.byte	0x8
	.long	0x488
	.uleb128 0x7
	.byte	0x8
	.long	0x2ed
	.uleb128 0xf
	.long	0x9e
	.long	0x4a9
	.uleb128 0x10
	.long	0x3e
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x480
	.uleb128 0x17
	.long	.LASF87
	.uleb128 0x7
	.byte	0x8
	.long	0x4af
	.uleb128 0x17
	.long	.LASF88
	.uleb128 0x7
	.byte	0x8
	.long	0x4ba
	.uleb128 0xf
	.long	0x9e
	.long	0x4d5
	.uleb128 0x10
	.long	0x3e
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x15
	.byte	0x89
	.byte	0xe
	.long	0x4e1
	.uleb128 0x7
	.byte	0x8
	.long	0x474
	.uleb128 0xe
	.long	0x4e1
	.uleb128 0xa
	.long	.LASF90
	.byte	0x15
	.byte	0x8a
	.byte	0xe
	.long	0x4e1
	.uleb128 0xa
	.long	.LASF91
	.byte	0x15
	.byte	0x8b
	.byte	0xe
	.long	0x4e1
	.uleb128 0xa
	.long	.LASF92
	.byte	0x16
	.byte	0x1a
	.byte	0xc
	.long	0x53
	.uleb128 0xf
	.long	0x15a
	.long	0x51b
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.long	0x510
	.uleb128 0xa
	.long	.LASF93
	.byte	0x16
	.byte	0x1b
	.byte	0x1a
	.long	0x51b
	.uleb128 0xa
	.long	.LASF94
	.byte	0x16
	.byte	0x1e
	.byte	0xc
	.long	0x53
	.uleb128 0xa
	.long	.LASF95
	.byte	0x16
	.byte	0x1f
	.byte	0x1a
	.long	0x51b
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x53
	.byte	0x3
	.value	0x147
	.byte	0x1
	.long	0x562
	.uleb128 0x1a
	.long	.LASF96
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF97
	.sleb128 -131
	.byte	0
	.uleb128 0xf
	.long	0xa5
	.long	0x56d
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.long	0x562
	.uleb128 0xa
	.long	.LASF98
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x56d
	.uleb128 0xa
	.long	.LASF99
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0x154
	.uleb128 0x1b
	.long	.LASF140
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x5df
	.uleb128 0x14
	.long	.LASF100
	.byte	0
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.uleb128 0x14
	.long	.LASF102
	.byte	0x2
	.uleb128 0x14
	.long	.LASF103
	.byte	0x3
	.uleb128 0x14
	.long	.LASF104
	.byte	0x4
	.uleb128 0x14
	.long	.LASF105
	.byte	0x5
	.uleb128 0x14
	.long	.LASF106
	.byte	0x6
	.uleb128 0x14
	.long	.LASF107
	.byte	0x7
	.uleb128 0x14
	.long	.LASF108
	.byte	0x8
	.uleb128 0x14
	.long	.LASF109
	.byte	0x9
	.uleb128 0x14
	.long	.LASF110
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x58a
	.uleb128 0x9
	.long	.LASF111
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x51b
	.uleb128 0xf
	.long	0x5df
	.long	0x5fc
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.long	0x5f1
	.uleb128 0x9
	.long	.LASF112
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x5fc
	.uleb128 0xf
	.long	0xa5
	.long	0x61f
	.uleb128 0x1c
	.long	0x3e
	.value	0x10cf
	.byte	0
	.uleb128 0x8
	.long	0x60e
	.uleb128 0x1d
	.long	.LASF145
	.byte	0x1d
	.byte	0x1
	.byte	0x13
	.long	0x61f
	.uleb128 0x9
	.byte	0x3
	.quad	G_line
	.uleb128 0xa
	.long	.LASF113
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x1dc
	.uleb128 0xa
	.long	.LASF114
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0x37
	.uleb128 0xa
	.long	.LASF115
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x53
	.uleb128 0xb
	.long	.LASF116
	.byte	0x10
	.byte	0x1b
	.byte	0xa7
	.byte	0x8
	.long	0x693
	.uleb128 0xc
	.long	.LASF117
	.byte	0x1b
	.byte	0xa9
	.byte	0x9
	.long	0x98
	.byte	0
	.uleb128 0xc
	.long	.LASF118
	.byte	0x1b
	.byte	0xaa
	.byte	0x1a
	.long	0x693
	.byte	0x8
	.uleb128 0xc
	.long	.LASF119
	.byte	0x1b
	.byte	0xab
	.byte	0x8
	.long	0x699
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x65e
	.uleb128 0xf
	.long	0x9e
	.long	0x6a8
	.uleb128 0x1e
	.long	0x3e
	.byte	0
	.uleb128 0x1f
	.byte	0x8
	.byte	0x1b
	.byte	0xb5
	.byte	0x3
	.long	0x6c6
	.uleb128 0x20
	.string	"i"
	.byte	0x1b
	.byte	0xb7
	.byte	0x15
	.long	0xb6
	.uleb128 0x20
	.string	"p"
	.byte	0x1b
	.byte	0xb8
	.byte	0xb
	.long	0x8a
	.byte	0
	.uleb128 0x1f
	.byte	0x8
	.byte	0x1b
	.byte	0xbd
	.byte	0x3
	.long	0x6e8
	.uleb128 0x21
	.long	.LASF120
	.byte	0x1b
	.byte	0xbf
	.byte	0xd
	.long	0x6f7
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1b
	.byte	0xc0
	.byte	0xd
	.long	0x711
	.byte	0
	.uleb128 0x22
	.long	0x8a
	.long	0x6f7
	.uleb128 0x23
	.long	0xb6
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x6e8
	.uleb128 0x22
	.long	0x8a
	.long	0x711
	.uleb128 0x23
	.long	0x8a
	.uleb128 0x23
	.long	0xb6
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x6fd
	.uleb128 0x1f
	.byte	0x8
	.byte	0x1b
	.byte	0xc2
	.byte	0x3
	.long	0x739
	.uleb128 0x21
	.long	.LASF120
	.byte	0x1b
	.byte	0xc4
	.byte	0xc
	.long	0x744
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1b
	.byte	0xc5
	.byte	0xc
	.long	0x75a
	.byte	0
	.uleb128 0x24
	.long	0x744
	.uleb128 0x23
	.long	0x8a
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x739
	.uleb128 0x24
	.long	0x75a
	.uleb128 0x23
	.long	0x8a
	.uleb128 0x23
	.long	0x8a
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x74a
	.uleb128 0xb
	.long	.LASF122
	.byte	0x58
	.byte	0x1b
	.byte	0xae
	.byte	0x8
	.long	0x820
	.uleb128 0xc
	.long	.LASF123
	.byte	0x1b
	.byte	0xb0
	.byte	0x11
	.long	0xb6
	.byte	0
	.uleb128 0xc
	.long	.LASF124
	.byte	0x1b
	.byte	0xb1
	.byte	0x1a
	.long	0x693
	.byte	0x8
	.uleb128 0xc
	.long	.LASF125
	.byte	0x1b
	.byte	0xb2
	.byte	0x9
	.long	0x98
	.byte	0x10
	.uleb128 0xc
	.long	.LASF126
	.byte	0x1b
	.byte	0xb3
	.byte	0x9
	.long	0x98
	.byte	0x18
	.uleb128 0xc
	.long	.LASF127
	.byte	0x1b
	.byte	0xb4
	.byte	0x9
	.long	0x98
	.byte	0x20
	.uleb128 0xc
	.long	.LASF128
	.byte	0x1b
	.byte	0xb9
	.byte	0x5
	.long	0x6a8
	.byte	0x28
	.uleb128 0xc
	.long	.LASF129
	.byte	0x1b
	.byte	0xba
	.byte	0x13
	.long	0xb6
	.byte	0x30
	.uleb128 0xc
	.long	.LASF130
	.byte	0x1b
	.byte	0xc1
	.byte	0x5
	.long	0x6c6
	.byte	0x38
	.uleb128 0xc
	.long	.LASF131
	.byte	0x1b
	.byte	0xc6
	.byte	0x5
	.long	0x717
	.byte	0x40
	.uleb128 0xc
	.long	.LASF132
	.byte	0x1b
	.byte	0xc8
	.byte	0x9
	.long	0x8a
	.byte	0x48
	.uleb128 0x25
	.long	.LASF133
	.byte	0x1b
	.byte	0xc9
	.byte	0xc
	.long	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x25
	.long	.LASF134
	.byte	0x1b
	.byte	0xca
	.byte	0xc
	.long	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x25
	.long	.LASF135
	.byte	0x1b
	.byte	0xce
	.byte	0xc
	.long	0x37
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x760
	.uleb128 0xa
	.long	.LASF136
	.byte	0x1b
	.byte	0xe6
	.byte	0x26
	.long	0x831
	.uleb128 0x7
	.byte	0x8
	.long	0x1d7
	.uleb128 0xa
	.long	.LASF137
	.byte	0x1b
	.byte	0xe9
	.byte	0xc
	.long	0x53
	.uleb128 0x17
	.long	.LASF138
	.uleb128 0xa
	.long	.LASF139
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x843
	.uleb128 0x1b
	.long	.LASF141
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.long	0x879
	.uleb128 0x14
	.long	.LASF142
	.byte	0
	.uleb128 0x14
	.long	.LASF143
	.byte	0x1
	.uleb128 0x14
	.long	.LASF144
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.long	.LASF146
	.byte	0x1
	.byte	0x3c
	.byte	0x17
	.long	0x760
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0xf
	.long	0x15a
	.long	0x89f
	.uleb128 0x10
	.long	0x3e
	.byte	0x25
	.byte	0
	.uleb128 0x8
	.long	0x88f
	.uleb128 0x1d
	.long	.LASF147
	.byte	0x1
	.byte	0x3e
	.byte	0x1a
	.long	0x89f
	.uleb128 0x9
	.byte	0x3
	.quad	slack_codes
	.uleb128 0x1d
	.long	.LASF148
	.byte	0x1
	.byte	0x48
	.byte	0x1a
	.long	0x89f
	.uleb128 0x9
	.byte	0x3
	.quad	ls_codes
	.uleb128 0xf
	.long	0x14f
	.long	0x8e0
	.uleb128 0x10
	.long	0x3e
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x8d0
	.uleb128 0x1d
	.long	.LASF149
	.byte	0x1
	.byte	0x50
	.byte	0x1c
	.long	0x8e0
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x26
	.long	.LASF184
	.byte	0x1
	.value	0x18c
	.byte	0x1
	.long	0x53
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x101c
	.uleb128 0x27
	.long	.LASF150
	.byte	0x1
	.value	0x18c
	.byte	0xb
	.long	0x53
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x27
	.long	.LASF151
	.byte	0x1
	.value	0x18c
	.byte	0x18
	.long	0x21e
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x28
	.string	"ok"
	.byte	0x1
	.value	0x18e
	.byte	0x8
	.long	0x101c
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x29
	.long	.LASF152
	.byte	0x1
	.value	0x18f
	.byte	0x7
	.long	0x53
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0x29
	.long	.LASF153
	.byte	0x1
	.value	0x190
	.byte	0x15
	.long	0x854
	.long	.LLST62
	.long	.LVUS62
	.uleb128 0x29
	.long	.LASF154
	.byte	0x1
	.value	0x191
	.byte	0x8
	.long	0x101c
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x2a
	.quad	.LBB221
	.quad	.LBE221-.LBB221
	.long	0x9d8
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1cb
	.byte	0x13
	.long	0x154
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x2b
	.quad	.LVL219
	.long	0x22dd
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB242
	.quad	.LBE242-.LBB242
	.long	0xa2f
	.uleb128 0x2d
	.quad	.LVL273
	.long	0x22ea
	.long	0xa16
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC45
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL274
	.long	0x22f6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x570
	.long	0xb82
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x1e7
	.byte	0x12
	.long	0xb6
	.long	.LLST67
	.long	.LVUS67
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x1e8
	.byte	0x11
	.long	0x98
	.long	.LLST68
	.long	.LVUS68
	.uleb128 0x29
	.long	.LASF155
	.byte	0x1
	.value	0x1e9
	.byte	0x17
	.long	0x154
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x29
	.long	.LASF156
	.byte	0x1
	.value	0x1ea
	.byte	0x17
	.long	0x154
	.long	.LLST70
	.long	.LVUS70
	.uleb128 0x2a
	.quad	.LBB226
	.quad	.LBE226-.LBB226
	.long	0xab5
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x1e7
	.byte	0x18
	.long	0x1023
	.long	.LLST71
	.long	.LVUS71
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x5a0
	.long	0xae9
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.value	0x1e8
	.byte	0x15
	.long	0x1029
	.long	.LLST72
	.long	.LVUS72
	.uleb128 0x29
	.long	.LASF158
	.byte	0x1
	.value	0x1e8
	.byte	0x15
	.long	0x8a
	.long	.LLST73
	.long	.LVUS73
	.byte	0
	.uleb128 0x2f
	.long	0xb16
	.uleb128 0x30
	.long	.LASF159
	.byte	0x1
	.value	0x1f7
	.byte	0xb
	.long	0x154
	.uleb128 0x30
	.long	.LASF160
	.byte	0x1
	.value	0x1f7
	.byte	0xb
	.long	0x4e1
	.uleb128 0x30
	.long	.LASF161
	.byte	0x1
	.value	0x1f7
	.byte	0xb
	.long	0xb6
	.byte	0
	.uleb128 0x2d
	.quad	.LVL239
	.long	0x2302
	.long	0xb4a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.byte	0x3
	.quad	.LC35
	.byte	0x3
	.quad	.LC37
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x2d
	.quad	.LVL240
	.long	0x230f
	.long	0xb6d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL241
	.long	0x2302
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x102f
	.quad	.LBI222
	.value	.LVU570
	.long	.Ldebug_ranges0+0x540
	.byte	0x1
	.value	0x1e3
	.byte	0xe
	.long	0xc82
	.uleb128 0x32
	.long	0x1041
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x540
	.uleb128 0x34
	.long	0x104e
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x2d
	.quad	.LVL228
	.long	0x231c
	.long	0xbe1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC46
	.byte	0
	.uleb128 0x2d
	.quad	.LVL229
	.long	0x2328
	.long	0xc06
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC47
	.byte	0
	.uleb128 0x2d
	.quad	.LVL230
	.long	0x105b
	.long	0xc1e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL232
	.long	0x2334
	.uleb128 0x2d
	.quad	.LVL255
	.long	0x2341
	.long	0xc4d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL257
	.long	0x234e
	.uleb128 0x2b
	.quad	.LVL258
	.long	0x22f6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC48
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x1c19
	.quad	.LBI232
	.value	.LVU620
	.long	.Ldebug_ranges0+0x600
	.byte	0x1
	.value	0x1d7
	.byte	0x14
	.long	0xd1d
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x600
	.uleb128 0x34
	.long	0x1c2a
	.long	.LLST74
	.long	.LVUS74
	.uleb128 0x2d
	.quad	.LVL246
	.long	0x235a
	.long	0xcce
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC42
	.byte	0
	.uleb128 0x35
	.quad	.LVL248
	.long	0x2367
	.uleb128 0x2d
	.quad	.LVL250
	.long	0x231c
	.long	0xd00
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC43
	.byte	0
	.uleb128 0x2b
	.quad	.LVL252
	.long	0x231c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x222f
	.quad	.LBI238
	.value	.LVU663
	.long	.Ldebug_ranges0+0x630
	.byte	0x1
	.value	0x1c3
	.byte	0x9
	.long	0xd73
	.uleb128 0x32
	.long	0x224c
	.long	.LLST75
	.long	.LVUS75
	.uleb128 0x32
	.long	0x2240
	.long	.LLST76
	.long	.LVUS76
	.uleb128 0x2b
	.quad	.LVL268
	.long	0x2373
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC51
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL197
	.long	0x237f
	.uleb128 0x2d
	.quad	.LVL198
	.long	0x238b
	.long	0xda4
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x2d
	.quad	.LVL199
	.long	0x2397
	.long	0xdd0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC38
	.byte	0
	.uleb128 0x2d
	.quad	.LVL200
	.long	0x23a3
	.long	0xdef
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.byte	0
	.uleb128 0x35
	.quad	.LVL201
	.long	0x23af
	.uleb128 0x2d
	.quad	.LVL202
	.long	0x23bc
	.long	0xe39
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC40
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL206
	.long	0x23c8
	.long	0xe77
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC39
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL207
	.long	0x23d4
	.long	0xe8e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL210
	.long	0x1c37
	.long	0xea5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL226
	.long	0x23e1
	.long	0xece
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL243
	.long	0x105b
	.long	0xeea
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.quad	.LVL262
	.long	0x23ed
	.uleb128 0x2d
	.quad	.LVL264
	.long	0x22ea
	.long	0xf20
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC49
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL265
	.long	0x22f6
	.long	0xf42
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL266
	.long	0x22ea
	.long	0xf6b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC50
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL269
	.long	0x1c37
	.long	0xf82
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.quad	.LVL270
	.long	0x22ea
	.long	0xfab
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC41
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL271
	.long	0x22f6
	.long	0xfc7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.quad	.LVL275
	.long	0x23ed
	.uleb128 0x2d
	.quad	.LVL277
	.long	0x22ea
	.long	0xffd
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC49
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL278
	.long	0x22f6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF162
	.uleb128 0x7
	.byte	0x8
	.long	0x820
	.uleb128 0x7
	.byte	0x8
	.long	0x760
	.uleb128 0x36
	.long	.LASF181
	.byte	0x1
	.value	0x176
	.byte	0x1
	.long	0x101c
	.byte	0x1
	.long	0x105b
	.uleb128 0x37
	.long	.LASF163
	.byte	0x1
	.value	0x176
	.byte	0x1c
	.long	0x154
	.uleb128 0x38
	.string	"ok"
	.byte	0x1
	.value	0x178
	.byte	0x8
	.long	0x101c
	.byte	0
	.uleb128 0x39
	.long	.LASF238
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.long	0x101c
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x19c2
	.uleb128 0x3a
	.string	"fp"
	.byte	0x1
	.byte	0xef
	.byte	0x18
	.long	0x4e1
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x3b
	.long	.LASF163
	.byte	0x1
	.byte	0xef
	.byte	0x28
	.long	0x154
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x3c
	.long	.LASF164
	.byte	0x1
	.byte	0xf1
	.byte	0xa
	.long	0xb6
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x3c
	.long	.LASF165
	.byte	0x1
	.byte	0xf2
	.byte	0xf
	.long	0x154
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1d
	.long	.LASF166
	.byte	0x1
	.byte	0xf3
	.byte	0x9
	.long	0x98
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.long	.LASF167
	.byte	0x1
	.byte	0xf4
	.byte	0xa
	.long	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3c
	.long	.LASF168
	.byte	0x1
	.byte	0xf5
	.byte	0xf
	.long	0x154
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x3c
	.long	.LASF169
	.byte	0x1
	.byte	0xf6
	.byte	0xf
	.long	0x154
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x3d
	.string	"ok"
	.byte	0x1
	.byte	0xf7
	.byte	0x8
	.long	0x101c
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x1
	.byte	0xfa
	.byte	0x8
	.long	0x114e
	.uleb128 0x14
	.long	.LASF170
	.byte	0
	.uleb128 0x14
	.long	.LASF171
	.byte	0x1
	.uleb128 0x14
	.long	.LASF172
	.byte	0x2
	.uleb128 0x14
	.long	.LASF173
	.byte	0x3
	.byte	0
	.uleb128 0x3c
	.long	.LASF174
	.byte	0x1
	.byte	0xfa
	.byte	0x3a
	.long	0x1127
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x150
	.long	0x1995
	.uleb128 0x29
	.long	.LASF175
	.byte	0x1
	.value	0x103
	.byte	0xd
	.long	0x98
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.value	0x103
	.byte	0x15
	.long	0x98
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x29
	.long	.LASF176
	.byte	0x1
	.value	0x104
	.byte	0xc
	.long	0x101c
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x210
	.long	0x1214
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x138
	.byte	0x13
	.long	0x1029
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x2a
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.long	0x11f3
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.value	0x138
	.byte	0x13
	.long	0x1023
	.long	.LLST32
	.long	.LVUS32
	.byte	0
	.uleb128 0x2b
	.quad	.LVL106
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x250
	.long	0x127e
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x13a
	.byte	0x13
	.long	0x1029
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x2a
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.long	0x125d
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.value	0x13a
	.byte	0x13
	.long	0x1023
	.long	.LLST34
	.long	.LVUS34
	.byte	0
	.uleb128 0x2b
	.quad	.LVL108
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x290
	.long	0x12e8
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x13c
	.byte	0x13
	.long	0x1029
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x2a
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.long	0x12c7
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.value	0x13c
	.byte	0x13
	.long	0x1023
	.long	.LLST36
	.long	.LVUS36
	.byte	0
	.uleb128 0x2b
	.quad	.LVL104
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.long	0x133a
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x141
	.byte	0x13
	.long	0x1029
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x3e
	.quad	.LBB134
	.quad	.LBE134-.LBB134
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.value	0x141
	.byte	0x13
	.long	0x1023
	.long	.LLST38
	.long	.LVUS38
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x135c
	.uleb128 0x38
	.string	"__o"
	.byte	0x1
	.value	0x143
	.byte	0x13
	.long	0x1029
	.uleb128 0x3f
	.uleb128 0x30
	.long	.LASF157
	.byte	0x1
	.value	0x143
	.byte	0x13
	.long	0x1023
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x2c0
	.long	0x1535
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x14d
	.byte	0x17
	.long	0x53
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x350
	.long	0x13e2
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x155
	.byte	0x17
	.long	0x1029
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x2a
	.quad	.LBB142
	.quad	.LBE142-.LBB142
	.long	0x13c1
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.value	0x155
	.byte	0x17
	.long	0x1023
	.long	.LLST45
	.long	.LVUS45
	.byte	0
	.uleb128 0x2b
	.quad	.LVL134
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x390
	.long	0x144c
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x155
	.byte	0x17
	.long	0x1029
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x2a
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.long	0x142b
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.value	0x155
	.byte	0x17
	.long	0x1023
	.long	.LLST47
	.long	.LVUS47
	.byte	0
	.uleb128 0x2b
	.quad	.LVL136
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x310
	.long	0x14b6
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x156
	.byte	0x17
	.long	0x1029
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x2a
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.long	0x1495
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.value	0x156
	.byte	0x17
	.long	0x1023
	.long	.LLST41
	.long	.LVUS41
	.byte	0
	.uleb128 0x2b
	.quad	.LVL123
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.long	0x1508
	.uleb128 0x28
	.string	"__o"
	.byte	0x1
	.value	0x158
	.byte	0x17
	.long	0x1029
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x3e
	.quad	.LBB140
	.quad	.LBE140-.LBB140
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.value	0x158
	.byte	0x17
	.long	0x1023
	.long	.LLST43
	.long	.LVUS43
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL102
	.long	0x19c2
	.long	0x1520
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL117
	.long	0x2405
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x225a
	.quad	.LBI109
	.value	.LVU103
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.byte	0x1
	.value	0x10a
	.byte	0xf
	.long	0x15ab
	.uleb128 0x32
	.long	0x2283
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x32
	.long	0x2277
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x32
	.long	0x226b
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x2b
	.quad	.LVL42
	.long	0x2411
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x1bc5
	.quad	.LBI111
	.value	.LVU113
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.value	0x119
	.byte	0x7
	.long	0x1711
	.uleb128 0x32
	.long	0x1bea
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x32
	.long	0x1bde
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x32
	.long	0x1bd2
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x34
	.long	0x1bf6
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x41
	.long	0x1c00
	.uleb128 0x41
	.long	0x1c0c
	.uleb128 0x42
	.long	0x22c0
	.quad	.LBI113
	.value	.LVU122
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.byte	0x1
	.byte	0x98
	.byte	0x12
	.long	0x163d
	.uleb128 0x32
	.long	0x22d1
	.long	.LLST27
	.long	.LVUS27
	.byte	0
	.uleb128 0x42
	.long	0x22c0
	.quad	.LBI115
	.value	.LVU133
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.byte	0x1
	.byte	0xa1
	.byte	0xb
	.long	0x1671
	.uleb128 0x32
	.long	0x22d1
	.long	.LLST28
	.long	.LVUS28
	.byte	0
	.uleb128 0x42
	.long	0x22c0
	.quad	.LBI117
	.value	.LVU153
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.byte	0x1
	.byte	0xae
	.byte	0xa
	.long	0x16a5
	.uleb128 0x32
	.long	0x22d1
	.long	.LLST29
	.long	.LVUS29
	.byte	0
	.uleb128 0x43
	.long	0x22c0
	.quad	.LBI119
	.value	.LVU169
	.long	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.byte	0xb8
	.byte	0xd
	.long	0x16cd
	.uleb128 0x32
	.long	0x22d1
	.long	.LLST30
	.long	.LVUS30
	.byte	0
	.uleb128 0x35
	.quad	.LVL44
	.long	0x241e
	.uleb128 0x2d
	.quad	.LVL50
	.long	0x242a
	.long	0x16fb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x2b
	.quad	.LVL57
	.long	0x242a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL60
	.long	0x2405
	.long	0x1736
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x2d
	.quad	.LVL63
	.long	0x2405
	.long	0x175b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x2d
	.quad	.LVL64
	.long	0x2405
	.long	0x1780
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x2d
	.quad	.LVL65
	.long	0x2405
	.long	0x17a5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x2d
	.quad	.LVL67
	.long	0x2436
	.long	0x17bd
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL68
	.long	0x2436
	.long	0x17d5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL70
	.long	0x2443
	.long	0x17ed
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL78
	.long	0x2341
	.long	0x1811
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.uleb128 0x2d
	.quad	.LVL79
	.long	0x22ea
	.long	0x183a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL80
	.long	0x22f6
	.long	0x1862
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL81
	.long	0x2436
	.long	0x187a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL83
	.long	0x2450
	.long	0x189f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL88
	.long	0x19c2
	.long	0x18b7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL89
	.long	0x19c2
	.long	0x18cf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL93
	.long	0x2436
	.uleb128 0x2d
	.quad	.LVL99
	.long	0x19c2
	.long	0x18f4
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL126
	.long	0x2341
	.long	0x1918
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.uleb128 0x2d
	.quad	.LVL128
	.long	0x22ea
	.long	0x1941
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL129
	.long	0x22f6
	.long	0x196f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL131
	.long	0x22ea
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL34
	.long	0x235a
	.long	0x19b4
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x35
	.quad	.LVL138
	.long	0x245c
	.byte	0
	.uleb128 0x44
	.long	.LASF239
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bc5
	.uleb128 0x3a
	.string	"str"
	.byte	0x1
	.byte	0xc3
	.byte	0x1c
	.long	0x154
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x3c
	.long	.LASF177
	.byte	0x1
	.byte	0xc5
	.byte	0x8
	.long	0x101c
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.long	0x1a58
	.uleb128 0x3d
	.string	"__o"
	.byte	0x1
	.byte	0xcc
	.byte	0xb
	.long	0x1029
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x2f
	.long	0x1a37
	.uleb128 0x45
	.long	.LASF157
	.byte	0x1
	.byte	0xcc
	.byte	0xb
	.long	0x1023
	.byte	0
	.uleb128 0x2b
	.quad	.LVL22
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x40
	.long	0x1ac0
	.uleb128 0x3d
	.string	"__o"
	.byte	0x1
	.byte	0xcd
	.byte	0xb
	.long	0x1029
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2a
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0x1a9f
	.uleb128 0x3c
	.long	.LASF157
	.byte	0x1
	.byte	0xcd
	.byte	0xb
	.long	0x1023
	.long	.LLST4
	.long	.LVUS4
	.byte	0
	.uleb128 0x2b
	.quad	.LVL26
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x70
	.long	0x1b28
	.uleb128 0x3d
	.string	"__o"
	.byte	0x1
	.byte	0xce
	.byte	0xb
	.long	0x1029
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2a
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.long	0x1b07
	.uleb128 0x3c
	.long	.LASF157
	.byte	0x1
	.byte	0xce
	.byte	0xb
	.long	0x1023
	.long	.LLST6
	.long	.LVUS6
	.byte	0
	.uleb128 0x2b
	.quad	.LVL24
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x110
	.long	0x1b78
	.uleb128 0x3d
	.string	"__o"
	.byte	0x1
	.byte	0xda
	.byte	0xd
	.long	0x1029
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x2f
	.long	0x1b57
	.uleb128 0x45
	.long	.LASF157
	.byte	0x1
	.byte	0xda
	.byte	0xd
	.long	0x1023
	.byte	0
	.uleb128 0x2b
	.quad	.LVL28
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x3d
	.string	"__o"
	.byte	0x1
	.byte	0xe2
	.byte	0x7
	.long	0x1029
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x2f
	.long	0x1ba3
	.uleb128 0x45
	.long	.LASF157
	.byte	0x1
	.byte	0xe2
	.byte	0x7
	.long	0x1023
	.byte	0
	.uleb128 0x2b
	.quad	.LVL13
	.long	0x23f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	.LASF187
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.byte	0x1
	.long	0x1c19
	.uleb128 0x47
	.long	.LASF168
	.byte	0x1
	.byte	0x8f
	.byte	0x19
	.long	0x154
	.uleb128 0x47
	.long	.LASF178
	.byte	0x1
	.byte	0x8f
	.byte	0x26
	.long	0x21e
	.uleb128 0x48
	.string	"arg"
	.byte	0x1
	.byte	0x8f
	.byte	0x36
	.long	0x21e
	.uleb128 0x49
	.string	"p"
	.byte	0x1
	.byte	0x91
	.byte	0xf
	.long	0x154
	.uleb128 0x45
	.long	.LASF179
	.byte	0x1
	.byte	0x92
	.byte	0xf
	.long	0x154
	.uleb128 0x45
	.long	.LASF180
	.byte	0x1
	.byte	0x93
	.byte	0xf
	.long	0x154
	.byte	0
	.uleb128 0x4a
	.long	.LASF182
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.long	0x854
	.byte	0x1
	.long	0x1c37
	.uleb128 0x45
	.long	.LASF183
	.byte	0x1
	.byte	0x80
	.byte	0x9
	.long	0x98
	.byte	0
	.uleb128 0x4b
	.long	.LASF185
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x2175
	.uleb128 0x3b
	.long	.LASF186
	.byte	0x1
	.byte	0x5d
	.byte	0xc
	.long	0x53
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x43
	.long	0x222f
	.quad	.LBI171
	.value	.LVU389
	.long	.Ldebug_ranges0+0x3c0
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.long	0x1cb7
	.uleb128 0x32
	.long	0x224c
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x32
	.long	0x2240
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x2b
	.quad	.LVL144
	.long	0x2373
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x2175
	.quad	.LBI175
	.value	.LVU411
	.long	.Ldebug_ranges0+0x3f0
	.byte	0x1
	.byte	0x74
	.byte	0x7
	.long	0x1fce
	.uleb128 0x4c
	.long	0x2183
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x3f0
	.uleb128 0x4d
	.long	0x21c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.long	0x21cd
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x34
	.long	0x21da
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x34
	.long	0x21e7
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x31
	.long	0x2210
	.quad	.LBI177
	.value	.LVU435
	.long	.Ldebug_ranges0+0x420
	.byte	0x3
	.value	0x28f
	.byte	0x3
	.long	0x1d9d
	.uleb128 0x32
	.long	0x2221
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x2d
	.quad	.LVL166
	.long	0x2465
	.long	0x1d6f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.byte	0
	.uleb128 0x2b
	.quad	.LVL183
	.long	0x2465
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x2210
	.quad	.LBI183
	.value	.LVU450
	.long	.Ldebug_ranges0+0x470
	.byte	0x3
	.value	0x29d
	.byte	0x3
	.long	0x1e16
	.uleb128 0x32
	.long	0x2221
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x2d
	.quad	.LVL174
	.long	0x2465
	.long	0x1def
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.quad	.LVL190
	.long	0x2465
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x2210
	.quad	.LBI192
	.value	.LVU461
	.long	.Ldebug_ranges0+0x4e0
	.byte	0x3
	.value	0x29f
	.byte	0x3
	.long	0x1e5e
	.uleb128 0x32
	.long	0x2221
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x2b
	.quad	.LVL178
	.long	0x2465
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL163
	.long	0x22ea
	.long	0x1e87
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL167
	.long	0x238b
	.long	0x1ea3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL169
	.long	0x2471
	.long	0x1ec7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2d
	.quad	.LVL171
	.long	0x22ea
	.long	0x1ef0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL175
	.long	0x22ea
	.long	0x1f19
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x35
	.quad	.LVL180
	.long	0x22ea
	.uleb128 0x2d
	.quad	.LVL184
	.long	0x238b
	.long	0x1f42
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.quad	.LVL186
	.long	0x2471
	.long	0x1f66
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2d
	.quad	.LVL187
	.long	0x22ea
	.long	0x1f8f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL192
	.long	0x22ea
	.long	0x1fb8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL193
	.long	0x2302
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x2210
	.quad	.LBI202
	.value	.LVU401
	.long	.Ldebug_ranges0+0x510
	.byte	0x1
	.byte	0x63
	.byte	0x7
	.long	0x200f
	.uleb128 0x32
	.long	0x2221
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x2b
	.quad	.LVL150
	.long	0x2465
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL141
	.long	0x22ea
	.long	0x2038
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL145
	.long	0x23d4
	.long	0x2050
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL147
	.long	0x22ea
	.long	0x2074
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.uleb128 0x2d
	.quad	.LVL151
	.long	0x22ea
	.long	0x209d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL152
	.long	0x2302
	.long	0x20b5
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL153
	.long	0x22ea
	.long	0x20de
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL154
	.long	0x2302
	.long	0x20f6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL155
	.long	0x22ea
	.long	0x211f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2d
	.quad	.LVL156
	.long	0x2302
	.long	0x2137
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL157
	.long	0x22ea
	.long	0x2160
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2b
	.quad	.LVL158
	.long	0x2302
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.long	.LASF188
	.byte	0x3
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x21f5
	.uleb128 0x37
	.long	.LASF189
	.byte	0x3
	.value	0x27a
	.byte	0x22
	.long	0x154
	.uleb128 0x4f
	.long	.LASF190
	.byte	0x10
	.byte	0x3
	.value	0x27c
	.byte	0xa
	.long	0x21bb
	.uleb128 0x50
	.long	.LASF189
	.byte	0x3
	.value	0x27c
	.byte	0x20
	.long	0x154
	.byte	0
	.uleb128 0x50
	.long	.LASF191
	.byte	0x3
	.value	0x27c
	.byte	0x35
	.long	0x154
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x2190
	.uleb128 0x30
	.long	.LASF190
	.byte	0x3
	.value	0x27c
	.byte	0x43
	.long	0x2205
	.uleb128 0x30
	.long	.LASF191
	.byte	0x3
	.value	0x286
	.byte	0xf
	.long	0x154
	.uleb128 0x30
	.long	.LASF192
	.byte	0x3
	.value	0x287
	.byte	0x19
	.long	0x220a
	.uleb128 0x30
	.long	.LASF193
	.byte	0x3
	.value	0x293
	.byte	0xf
	.long	0x154
	.byte	0
	.uleb128 0xf
	.long	0x21bb
	.long	0x2205
	.uleb128 0x10
	.long	0x3e
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x21f5
	.uleb128 0x7
	.byte	0x8
	.long	0x21bb
	.uleb128 0x51
	.long	.LASF195
	.byte	0x4
	.byte	0x69
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x222f
	.uleb128 0x47
	.long	.LASF194
	.byte	0x4
	.byte	0x69
	.byte	0x20
	.long	0x15f
	.uleb128 0x52
	.byte	0
	.uleb128 0x51
	.long	.LASF196
	.byte	0x4
	.byte	0x62
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x225a
	.uleb128 0x47
	.long	.LASF160
	.byte	0x4
	.byte	0x62
	.byte	0x1b
	.long	0x4e7
	.uleb128 0x47
	.long	.LASF194
	.byte	0x4
	.byte	0x62
	.byte	0x3c
	.long	0x15f
	.uleb128 0x52
	.byte	0
	.uleb128 0x53
	.long	.LASF198
	.byte	0x2
	.byte	0x76
	.byte	0x1
	.long	0x8c
	.byte	0x3
	.long	0x2290
	.uleb128 0x47
	.long	.LASF197
	.byte	0x2
	.byte	0x76
	.byte	0x11
	.long	0x21e
	.uleb128 0x48
	.string	"__n"
	.byte	0x2
	.byte	0x76
	.byte	0x24
	.long	0x2290
	.uleb128 0x47
	.long	.LASF160
	.byte	0x2
	.byte	0x76
	.byte	0x2f
	.long	0x4e1
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb6
	.uleb128 0x53
	.long	.LASF199
	.byte	0x2
	.byte	0x65
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x22c0
	.uleb128 0x48
	.string	"__c"
	.byte	0x2
	.byte	0x65
	.byte	0x14
	.long	0x53
	.uleb128 0x47
	.long	.LASF160
	.byte	0x2
	.byte	0x65
	.byte	0x1f
	.long	0x4e1
	.byte	0
	.uleb128 0x4a
	.long	.LASF200
	.byte	0x3
	.byte	0x9c
	.byte	0x1d
	.long	0x29
	.byte	0x3
	.long	0x22dd
	.uleb128 0x48
	.string	"ch"
	.byte	0x3
	.byte	0x9c
	.byte	0x2c
	.long	0x9e
	.byte	0
	.uleb128 0x54
	.long	.LASF201
	.long	.LASF201
	.byte	0x15
	.value	0x278
	.byte	0xc
	.uleb128 0x55
	.long	.LASF202
	.long	.LASF202
	.byte	0x1e
	.byte	0x33
	.byte	0xe
	.uleb128 0x55
	.long	.LASF203
	.long	.LASF203
	.byte	0x1a
	.byte	0x28
	.byte	0xd
	.uleb128 0x54
	.long	.LASF204
	.long	.LASF204
	.byte	0x15
	.value	0x296
	.byte	0xc
	.uleb128 0x54
	.long	.LASF205
	.long	.LASF205
	.byte	0x15
	.value	0x2a3
	.byte	0xf
	.uleb128 0x55
	.long	.LASF206
	.long	.LASF206
	.byte	0x1f
	.byte	0x89
	.byte	0xc
	.uleb128 0x55
	.long	.LASF207
	.long	.LASF207
	.byte	0x20
	.byte	0x1b
	.byte	0x7
	.uleb128 0x54
	.long	.LASF208
	.long	.LASF208
	.byte	0x21
	.value	0x2be
	.byte	0x1
	.uleb128 0x54
	.long	.LASF209
	.long	.LASF209
	.byte	0x19
	.value	0x18d
	.byte	0x7
	.uleb128 0x55
	.long	.LASF210
	.long	.LASF210
	.byte	0xe
	.byte	0x25
	.byte	0xd
	.uleb128 0x54
	.long	.LASF211
	.long	.LASF211
	.byte	0x22
	.value	0x27a
	.byte	0xe
	.uleb128 0x55
	.long	.LASF212
	.long	.LASF212
	.byte	0x23
	.byte	0x42
	.byte	0xe
	.uleb128 0x55
	.long	.LASF213
	.long	.LASF213
	.byte	0x4
	.byte	0x58
	.byte	0xc
	.uleb128 0x55
	.long	.LASF214
	.long	.LASF214
	.byte	0x18
	.byte	0x25
	.byte	0xd
	.uleb128 0x55
	.long	.LASF215
	.long	.LASF215
	.byte	0x24
	.byte	0x7a
	.byte	0xe
	.uleb128 0x55
	.long	.LASF216
	.long	.LASF216
	.byte	0x1e
	.byte	0x56
	.byte	0xe
	.uleb128 0x55
	.long	.LASF217
	.long	.LASF217
	.byte	0x1e
	.byte	0x52
	.byte	0xe
	.uleb128 0x54
	.long	.LASF218
	.long	.LASF218
	.byte	0x22
	.value	0x253
	.byte	0xc
	.uleb128 0x55
	.long	.LASF219
	.long	.LASF219
	.byte	0xa
	.byte	0x42
	.byte	0xc
	.uleb128 0x55
	.long	.LASF220
	.long	.LASF220
	.byte	0x17
	.byte	0x3c
	.byte	0xd
	.uleb128 0x54
	.long	.LASF221
	.long	.LASF221
	.byte	0x22
	.value	0x269
	.byte	0xd
	.uleb128 0x55
	.long	.LASF222
	.long	.LASF222
	.byte	0x1b
	.byte	0xd7
	.byte	0xc
	.uleb128 0x55
	.long	.LASF223
	.long	.LASF223
	.byte	0x1c
	.byte	0x2c
	.byte	0xd
	.uleb128 0x55
	.long	.LASF224
	.long	.LASF224
	.byte	0x1b
	.byte	0xd5
	.byte	0xd
	.uleb128 0x55
	.long	.LASF225
	.long	.LASF225
	.byte	0x25
	.byte	0x2a
	.byte	0xc
	.uleb128 0x54
	.long	.LASF226
	.long	.LASF226
	.byte	0x15
	.value	0x25b
	.byte	0x12
	.uleb128 0x55
	.long	.LASF227
	.long	.LASF227
	.byte	0x12
	.byte	0x4f
	.byte	0x23
	.uleb128 0x55
	.long	.LASF228
	.long	.LASF228
	.byte	0x26
	.byte	0x17
	.byte	0xe
	.uleb128 0x54
	.long	.LASF229
	.long	.LASF229
	.byte	0x22
	.value	0x235
	.byte	0xd
	.uleb128 0x54
	.long	.LASF230
	.long	.LASF230
	.byte	0x1f
	.value	0x181
	.byte	0xf
	.uleb128 0x55
	.long	.LASF231
	.long	.LASF231
	.byte	0x27
	.byte	0x38
	.byte	0xc
	.uleb128 0x56
	.long	.LASF240
	.long	.LASF240
	.uleb128 0x55
	.long	.LASF232
	.long	.LASF232
	.byte	0x4
	.byte	0x5a
	.byte	0xc
	.uleb128 0x55
	.long	.LASF233
	.long	.LASF233
	.byte	0x1f
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
.LVUS58:
	.uleb128 0
	.uleb128 .LVU510
	.uleb128 .LVU510
	.uleb128 .LVU548
	.uleb128 .LVU563
	.uleb128 .LVU598
	.uleb128 .LVU615
	.uleb128 0
.LLST58:
	.quad	.LVL194
	.quad	.LVL196
	.value	0x1
	.byte	0x55
	.quad	.LVL196
	.quad	.LVL217
	.value	0x1
	.byte	0x56
	.quad	.LVL224
	.quad	.LVL236
	.value	0x1
	.byte	0x56
	.quad	.LVL242
	.quad	.LFE141
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS59:
	.uleb128 0
	.uleb128 .LVU511
	.uleb128 .LVU511
	.uleb128 .LVU547
	.uleb128 .LVU563
	.uleb128 .LVU581
	.uleb128 .LVU615
	.uleb128 .LVU638
	.uleb128 .LVU647
	.uleb128 0
.LLST59:
	.quad	.LVL194
	.quad	.LVL197-1
	.value	0x1
	.byte	0x54
	.quad	.LVL197-1
	.quad	.LVL216
	.value	0x1
	.byte	0x53
	.quad	.LVL224
	.quad	.LVL231
	.value	0x1
	.byte	0x53
	.quad	.LVL242
	.quad	.LVL253
	.value	0x1
	.byte	0x53
	.quad	.LVL259
	.quad	.LFE141
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS60:
	.uleb128 .LVU499
	.uleb128 .LVU557
	.uleb128 .LVU557
	.uleb128 .LVU560
	.uleb128 .LVU563
	.uleb128 .LVU585
	.uleb128 .LVU585
	.uleb128 .LVU615
	.uleb128 .LVU615
	.uleb128 .LVU618
	.uleb128 .LVU618
	.uleb128 .LVU619
	.uleb128 .LVU619
	.uleb128 .LVU638
	.uleb128 .LVU638
	.uleb128 .LVU640
	.uleb128 .LVU640
	.uleb128 .LVU645
	.uleb128 .LVU645
	.uleb128 .LVU647
	.uleb128 .LVU647
	.uleb128 0
.LLST60:
	.quad	.LVL195
	.quad	.LVL222
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL222
	.quad	.LVL223
	.value	0x1
	.byte	0x5c
	.quad	.LVL224
	.quad	.LVL233
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL233
	.quad	.LVL242
	.value	0x1
	.byte	0x5c
	.quad	.LVL242
	.quad	.LVL244
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL244
	.quad	.LVL245
	.value	0x1
	.byte	0x50
	.quad	.LVL245
	.quad	.LVL253
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL253
	.quad	.LVL254
	.value	0x1
	.byte	0x5c
	.quad	.LVL254
	.quad	.LVL258
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL258
	.quad	.LVL259
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL259
	.quad	.LFE141
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS61:
	.uleb128 .LVU518
	.uleb128 .LVU525
	.uleb128 .LVU527
	.uleb128 .LVU532
	.uleb128 .LVU532
	.uleb128 .LVU536
.LLST61:
	.quad	.LVL202
	.quad	.LVL205
	.value	0x1
	.byte	0x50
	.quad	.LVL207
	.quad	.LVL210-1
	.value	0x1
	.byte	0x50
	.quad	.LVL210
	.quad	.LVL213
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS62:
	.uleb128 .LVU501
	.uleb128 .LVU516
	.uleb128 .LVU516
	.uleb128 .LVU520
	.uleb128 .LVU521
	.uleb128 .LVU529
	.uleb128 .LVU530
	.uleb128 .LVU533
	.uleb128 .LVU534
	.uleb128 .LVU549
	.uleb128 .LVU563
	.uleb128 .LVU631
	.uleb128 .LVU638
	.uleb128 .LVU642
	.uleb128 .LVU649
	.uleb128 .LVU673
	.uleb128 .LVU674
	.uleb128 0
.LLST62:
	.quad	.LVL195
	.quad	.LVL201
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL201
	.quad	.LVL203
	.value	0x1
	.byte	0x5d
	.quad	.LVL204
	.quad	.LVL208
	.value	0x1
	.byte	0x5d
	.quad	.LVL209
	.quad	.LVL211
	.value	0x1
	.byte	0x5d
	.quad	.LVL212
	.quad	.LVL218
	.value	0x1
	.byte	0x5d
	.quad	.LVL224
	.quad	.LVL249
	.value	0x1
	.byte	0x5d
	.quad	.LVL253
	.quad	.LVL256
	.value	0x1
	.byte	0x5d
	.quad	.LVL261
	.quad	.LVL272
	.value	0x1
	.byte	0x5d
	.quad	.LVL274
	.quad	.LFE141
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS63:
	.uleb128 .LVU502
	.uleb128 .LVU516
	.uleb128 .LVU516
	.uleb128 .LVU529
	.uleb128 .LVU530
	.uleb128 .LVU557
	.uleb128 .LVU563
	.uleb128 .LVU585
	.uleb128 .LVU615
	.uleb128 .LVU618
	.uleb128 .LVU619
	.uleb128 .LVU638
	.uleb128 .LVU640
	.uleb128 .LVU655
	.uleb128 .LVU668
	.uleb128 .LVU678
.LLST63:
	.quad	.LVL195
	.quad	.LVL201
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL201
	.quad	.LVL208
	.value	0x1
	.byte	0x5c
	.quad	.LVL209
	.quad	.LVL222
	.value	0x1
	.byte	0x5c
	.quad	.LVL224
	.quad	.LVL233
	.value	0x1
	.byte	0x5c
	.quad	.LVL242
	.quad	.LVL244
	.value	0x1
	.byte	0x5c
	.quad	.LVL245
	.quad	.LVL253
	.value	0x1
	.byte	0x5c
	.quad	.LVL254
	.quad	.LVL263
	.value	0x1
	.byte	0x5c
	.quad	.LVL269
	.quad	.LVL276
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS64:
	.uleb128 .LVU549
	.uleb128 .LVU552
	.uleb128 .LVU554
	.uleb128 .LVU557
.LLST64:
	.quad	.LVL218
	.quad	.LVL220
	.value	0x1
	.byte	0x5d
	.quad	.LVL221
	.quad	.LVL222
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS67:
	.uleb128 .LVU591
	.uleb128 .LVU615
	.uleb128 .LVU638
	.uleb128 .LVU640
.LLST67:
	.quad	.LVL235
	.quad	.LVL242
	.value	0x1
	.byte	0x5f
	.quad	.LVL253
	.quad	.LVL254
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS68:
	.uleb128 .LVU607
	.uleb128 .LVU615
.LLST68:
	.quad	.LVL237
	.quad	.LVL242
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS69:
	.uleb128 .LVU612
	.uleb128 .LVU613
	.uleb128 .LVU613
	.uleb128 .LVU615
.LLST69:
	.quad	.LVL238
	.quad	.LVL239-1
	.value	0x1
	.byte	0x55
	.quad	.LVL239-1
	.quad	.LVL242
	.value	0x1f
	.byte	0x3
	.quad	.LC35
	.byte	0x3
	.quad	.LC37
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS70:
	.uleb128 .LVU612
	.uleb128 .LVU615
.LLST70:
	.quad	.LVL238
	.quad	.LVL242
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS71:
	.uleb128 .LVU590
	.uleb128 .LVU615
	.uleb128 .LVU638
	.uleb128 .LVU640
.LLST71:
	.quad	.LVL234
	.quad	.LVL242
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL253
	.quad	.LVL254
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS72:
	.uleb128 .LVU594
	.uleb128 .LVU615
	.uleb128 .LVU638
	.uleb128 .LVU640
.LLST72:
	.quad	.LVL235
	.quad	.LVL242
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL253
	.quad	.LVL254
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS73:
	.uleb128 .LVU595
	.uleb128 .LVU615
	.uleb128 .LVU638
	.uleb128 .LVU640
.LLST73:
	.quad	.LVL235
	.quad	.LVL242
	.value	0x1
	.byte	0x5e
	.quad	.LVL253
	.quad	.LVL254
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS65:
	.uleb128 .LVU570
	.uleb128 .LVU585
	.uleb128 .LVU640
	.uleb128 .LVU645
.LLST65:
	.quad	.LVL227
	.quad	.LVL233
	.value	0x1
	.byte	0x5e
	.quad	.LVL254
	.quad	.LVL258
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS66:
	.uleb128 .LVU581
	.uleb128 .LVU583
	.uleb128 .LVU583
	.uleb128 .LVU585
.LLST66:
	.quad	.LVL231
	.quad	.LVL232-1
	.value	0x1
	.byte	0x50
	.quad	.LVL232-1
	.quad	.LVL233
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS74:
	.uleb128 .LVU624
	.uleb128 .LVU629
	.uleb128 .LVU631
	.uleb128 .LVU633
	.uleb128 .LVU633
	.uleb128 .LVU636
	.uleb128 .LVU636
	.uleb128 .LVU637
	.uleb128 .LVU647
	.uleb128 .LVU648
.LLST74:
	.quad	.LVL247
	.quad	.LVL248-1
	.value	0x1
	.byte	0x50
	.quad	.LVL249
	.quad	.LVL250-1
	.value	0x1
	.byte	0x50
	.quad	.LVL250-1
	.quad	.LVL251
	.value	0x1
	.byte	0x5d
	.quad	.LVL251
	.quad	.LVL252-1
	.value	0x1
	.byte	0x55
	.quad	.LVL259
	.quad	.LVL260
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS75:
	.uleb128 .LVU663
	.uleb128 .LVU666
.LLST75:
	.quad	.LVL267
	.quad	.LVL268
	.value	0xa
	.byte	0x3
	.quad	.LC51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS76:
	.uleb128 .LVU663
	.uleb128 .LVU666
.LLST76:
	.quad	.LVL267
	.quad	.LVL268-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 .LVU295
	.uleb128 .LVU295
	.uleb128 0
.LLST9:
	.quad	.LVL30
	.quad	.LVL31
	.value	0x1
	.byte	0x55
	.quad	.LVL31
	.quad	.LVL97
	.value	0x1
	.byte	0x5d
	.quad	.LVL97
	.quad	.LVL98
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL98
	.quad	.LFE139
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 0
.LLST10:
	.quad	.LVL30
	.quad	.LVL34-1
	.value	0x1
	.byte	0x54
	.quad	.LVL34-1
	.quad	.LVL37
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL37
	.quad	.LVL109
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL109
	.quad	.LVL111
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL111
	.quad	.LFE139
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU79
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU203
	.uleb128 .LVU212
	.uleb128 .LVU284
	.uleb128 .LVU287
	.uleb128 .LVU292
	.uleb128 .LVU295
	.uleb128 .LVU301
	.uleb128 .LVU314
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU323
	.uleb128 .LVU323
	.uleb128 .LVU356
	.uleb128 .LVU357
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 0
.LLST11:
	.quad	.LVL32
	.quad	.LVL37
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL66
	.value	0x1
	.byte	0x53
	.quad	.LVL68
	.quad	.LVL90
	.value	0x1
	.byte	0x53
	.quad	.LVL92
	.quad	.LVL95
	.value	0x1
	.byte	0x53
	.quad	.LVL98
	.quad	.LVL100
	.value	0x1
	.byte	0x53
	.quad	.LVL105
	.quad	.LVL109
	.value	0x1
	.byte	0x53
	.quad	.LVL109
	.quad	.LVL111
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL111
	.quad	.LVL112
	.value	0x1
	.byte	0x53
	.quad	.LVL112
	.quad	.LVL122
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL124
	.quad	.LVL137
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL137
	.quad	.LFE139
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU95
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU293
	.uleb128 .LVU295
	.uleb128 .LVU318
	.uleb128 .LVU321
	.uleb128 0
.LLST12:
	.quad	.LVL37
	.quad	.LVL70
	.value	0x1
	.byte	0x5c
	.quad	.LVL70
	.quad	.LVL71
	.value	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL71
	.quad	.LVL96
	.value	0x1
	.byte	0x5c
	.quad	.LVL98
	.quad	.LVL109
	.value	0x1
	.byte	0x5c
	.quad	.LVL111
	.quad	.LFE139
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU112
	.uleb128 .LVU121
	.uleb128 .LVU217
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU223
.LLST13:
	.quad	.LVL43
	.quad	.LVL45
	.value	0x1
	.byte	0x5e
	.quad	.LVL69
	.quad	.LVL71
	.value	0x1
	.byte	0x5c
	.quad	.LVL71
	.quad	.LVL72
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU90
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU94
	.uleb128 .LVU95
	.uleb128 .LVU203
	.uleb128 .LVU207
	.uleb128 .LVU284
	.uleb128 .LVU287
	.uleb128 .LVU305
	.uleb128 .LVU314
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU320
	.uleb128 .LVU321
	.uleb128 0
.LLST14:
	.quad	.LVL34
	.quad	.LVL35
	.value	0x1
	.byte	0x50
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x55
	.quad	.LVL37
	.quad	.LVL66
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL68
	.quad	.LVL90
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL92
	.quad	.LVL101
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL105
	.quad	.LVL109
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	.LVL109
	.quad	.LVL110
	.value	0x1
	.byte	0x50
	.quad	.LVL111
	.quad	.LFE139
	.value	0x3
	.byte	0x91
	.sleb128 -112
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU87
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU284
	.uleb128 .LVU287
	.uleb128 .LVU305
	.uleb128 .LVU314
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU369
	.uleb128 .LVU369
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 0
.LLST15:
	.quad	.LVL33
	.quad	.LVL37
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL80
	.value	0x3
	.byte	0x91
	.sleb128 -121
	.quad	.LVL80
	.quad	.LVL82
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL82
	.quad	.LVL90
	.value	0x3
	.byte	0x91
	.sleb128 -121
	.quad	.LVL92
	.quad	.LVL101
	.value	0x3
	.byte	0x91
	.sleb128 -121
	.quad	.LVL105
	.quad	.LVL109
	.value	0x3
	.byte	0x91
	.sleb128 -121
	.quad	.LVL109
	.quad	.LVL111
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL111
	.quad	.LVL129
	.value	0x3
	.byte	0x91
	.sleb128 -121
	.quad	.LVL129
	.quad	.LVL130
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL130
	.quad	.LFE139
	.value	0x3
	.byte	0x91
	.sleb128 -121
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU88
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU191
	.uleb128 .LVU207
	.uleb128 .LVU255
	.uleb128 .LVU257
	.uleb128 .LVU259
	.uleb128 .LVU285
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 .LVU295
	.uleb128 .LVU318
	.uleb128 .LVU321
	.uleb128 .LVU375
	.uleb128 0
.LLST16:
	.quad	.LVL33
	.quad	.LVL37
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL61
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL61
	.quad	.LVL62
	.value	0x1
	.byte	0x50
	.quad	.LVL68
	.quad	.LVL84
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL85
	.quad	.LVL86
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL91
	.quad	.LVL94
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL94
	.quad	.LVL98
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.quad	.LVL109
	.quad	.LVL111
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL137
	.quad	.LFE139
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU118
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU207
	.uleb128 .LVU223
	.uleb128 .LVU232
	.uleb128 .LVU232
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 .LVU287
	.uleb128 .LVU295
	.uleb128 .LVU318
	.uleb128 .LVU321
	.uleb128 .LVU375
.LLST17:
	.quad	.LVL43
	.quad	.LVL51
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL51
	.quad	.LVL53
	.value	0x1
	.byte	0x50
	.quad	.LVL53
	.quad	.LVL68
	.value	0x1
	.byte	0x5e
	.quad	.LVL72
	.quad	.LVL74
	.value	0x1
	.byte	0x5e
	.quad	.LVL74
	.quad	.LVL76
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL76
	.quad	.LVL77
	.value	0x1
	.byte	0x50
	.quad	.LVL77
	.quad	.LVL92
	.value	0x1
	.byte	0x5e
	.quad	.LVL98
	.quad	.LVL109
	.value	0x1
	.byte	0x5e
	.quad	.LVL111
	.quad	.LVL137
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU119
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU207
	.uleb128 .LVU223
	.uleb128 .LVU238
	.uleb128 .LVU250
	.uleb128 .LVU287
	.uleb128 .LVU295
	.uleb128 .LVU318
	.uleb128 .LVU321
	.uleb128 .LVU375
.LLST18:
	.quad	.LVL43
	.quad	.LVL58
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL58
	.quad	.LVL60-1
	.value	0x1
	.byte	0x50
	.quad	.LVL60-1
	.quad	.LVL68
	.value	0x1
	.byte	0x56
	.quad	.LVL72
	.quad	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL82
	.quad	.LVL92
	.value	0x1
	.byte	0x56
	.quad	.LVL98
	.quad	.LVL109
	.value	0x1
	.byte	0x56
	.quad	.LVL111
	.quad	.LVL137
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU184
	.uleb128 .LVU203
	.uleb128 .LVU250
	.uleb128 .LVU287
	.uleb128 .LVU295
	.uleb128 .LVU318
	.uleb128 .LVU321
	.uleb128 .LVU360
	.uleb128 .LVU372
	.uleb128 .LVU375
.LLST19:
	.quad	.LVL59
	.quad	.LVL66
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL82
	.quad	.LVL92
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL98
	.quad	.LVL109
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL111
	.quad	.LVL125
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL133
	.quad	.LVL137
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 .LVU263
	.uleb128 .LVU284
	.uleb128 .LVU314
	.uleb128 .LVU318
.LLST31:
	.quad	.LVL87
	.quad	.LVL90
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL105
	.quad	.LVL109
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS32:
	.uleb128 .LVU265
	.uleb128 .LVU284
	.uleb128 .LVU314
	.uleb128 .LVU318
.LLST32:
	.quad	.LVL87
	.quad	.LVL90
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL105
	.quad	.LVL109
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS33:
	.uleb128 .LVU272
	.uleb128 .LVU284
	.uleb128 .LVU316
	.uleb128 .LVU318
.LLST33:
	.quad	.LVL88
	.quad	.LVL90
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL107
	.quad	.LVL109
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS34:
	.uleb128 .LVU274
	.uleb128 .LVU284
	.uleb128 .LVU316
	.uleb128 .LVU318
.LLST34:
	.quad	.LVL88
	.quad	.LVL90
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL107
	.quad	.LVL109
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS35:
	.uleb128 .LVU281
	.uleb128 .LVU284
.LLST35:
	.quad	.LVL89
	.quad	.LVL90
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS36:
	.uleb128 .LVU283
	.uleb128 .LVU284
.LLST36:
	.quad	.LVL89
	.quad	.LVL90
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS37:
	.uleb128 .LVU298
	.uleb128 .LVU301
.LLST37:
	.quad	.LVL99
	.quad	.LVL100
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS38:
	.uleb128 .LVU300
	.uleb128 .LVU301
.LLST38:
	.quad	.LVL99
	.quad	.LVL100
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS39:
	.uleb128 .LVU324
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU328
	.uleb128 .LVU329
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 .LVU343
	.uleb128 .LVU357
	.uleb128 .LVU364
	.uleb128 .LVU370
	.uleb128 .LVU371
	.uleb128 .LVU372
	.uleb128 .LVU373
.LLST39:
	.quad	.LVL113
	.quad	.LVL113
	.value	0x1
	.byte	0x53
	.quad	.LVL113
	.quad	.LVL114
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.quad	.LVL114
	.quad	.LVL115
	.value	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.quad	.LVL116
	.quad	.LVL118
	.value	0x1
	.byte	0x53
	.quad	.LVL118
	.quad	.LVL119
	.value	0x1
	.byte	0x5f
	.quad	.LVL124
	.quad	.LVL127
	.value	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.quad	.LVL130
	.quad	.LVL132
	.value	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.quad	.LVL133
	.quad	.LVL135
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS44:
	.uleb128 .LVU338
	.uleb128 .LVU356
	.uleb128 .LVU372
	.uleb128 .LVU375
.LLST44:
	.quad	.LVL118
	.quad	.LVL122
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL133
	.quad	.LVL137
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS45:
	.uleb128 .LVU340
	.uleb128 .LVU356
	.uleb128 .LVU372
	.uleb128 .LVU375
.LLST45:
	.quad	.LVL118
	.quad	.LVL122
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL133
	.quad	.LVL137
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS46:
	.uleb128 .LVU346
	.uleb128 .LVU356
	.uleb128 .LVU373
	.uleb128 .LVU375
.LLST46:
	.quad	.LVL120
	.quad	.LVL122
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL135
	.quad	.LVL137
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS47:
	.uleb128 .LVU348
	.uleb128 .LVU356
	.uleb128 .LVU373
	.uleb128 .LVU375
.LLST47:
	.quad	.LVL120
	.quad	.LVL122
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL135
	.quad	.LVL137
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS40:
	.uleb128 .LVU353
	.uleb128 .LVU356
.LLST40:
	.quad	.LVL121
	.quad	.LVL122
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS41:
	.uleb128 .LVU355
	.uleb128 .LVU356
.LLST41:
	.quad	.LVL121
	.quad	.LVL122
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS42:
	.uleb128 .LVU309
	.uleb128 .LVU312
.LLST42:
	.quad	.LVL102
	.quad	.LVL103
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS43:
	.uleb128 .LVU311
	.uleb128 .LVU312
.LLST43:
	.quad	.LVL102
	.quad	.LVL103
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU103
	.uleb128 .LVU108
.LLST20:
	.quad	.LVL39
	.quad	.LVL42
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU103
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU108
.LLST21:
	.quad	.LVL39
	.quad	.LVL40
	.value	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL42-1
	.value	0x1
	.byte	0x54
	.quad	.LVL42-1
	.quad	.LVL42
	.value	0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU103
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU108
.LLST22:
	.quad	.LVL39
	.quad	.LVL41
	.value	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.quad	.LVL41
	.quad	.LVL42-1
	.value	0x1
	.byte	0x55
	.quad	.LVL42-1
	.quad	.LVL42
	.value	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU113
	.uleb128 .LVU178
	.uleb128 .LVU223
	.uleb128 .LVU235
.LLST23:
	.quad	.LVL43
	.quad	.LVL58
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4480
	.sleb128 0
	.quad	.LVL72
	.quad	.LVL76
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4480
	.sleb128 0
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU113
	.uleb128 .LVU178
	.uleb128 .LVU223
	.uleb128 .LVU235
.LLST24:
	.quad	.LVL43
	.quad	.LVL58
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4459
	.sleb128 0
	.quad	.LVL72
	.quad	.LVL76
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4459
	.sleb128 0
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU113
	.uleb128 .LVU121
.LLST25:
	.quad	.LVL43
	.quad	.LVL45
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU120
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU175
	.uleb128 .LVU223
	.uleb128 .LVU232
	.uleb128 .LVU232
	.uleb128 .LVU235
.LLST26:
	.quad	.LVL43
	.quad	.LVL47
	.value	0x1
	.byte	0x5e
	.quad	.LVL47
	.quad	.LVL53
	.value	0x1
	.byte	0x56
	.quad	.LVL53
	.quad	.LVL55
	.value	0x1
	.byte	0x54
	.quad	.LVL55
	.quad	.LVL56
	.value	0x1
	.byte	0x55
	.quad	.LVL72
	.quad	.LVL74
	.value	0x1
	.byte	0x55
	.quad	.LVL74
	.quad	.LVL76
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU122
	.uleb128 .LVU124
.LLST27:
	.quad	.LVL46
	.quad	.LVL46
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU133
	.uleb128 .LVU135
.LLST28:
	.quad	.LVL49
	.quad	.LVL49
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 .LVU153
	.uleb128 .LVU155
.LLST29:
	.quad	.LVL52
	.quad	.LVL52
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS30:
	.uleb128 .LVU169
	.uleb128 .LVU171
	.uleb128 .LVU228
	.uleb128 .LVU230
.LLST30:
	.quad	.LVL55
	.quad	.LVL55
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	.LVL73
	.quad	.LVL73
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU64
	.uleb128 .LVU65
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LVL7
	.value	0x1
	.byte	0x56
	.quad	.LVL7
	.quad	.LVL8
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL20
	.value	0x1
	.byte	0x56
	.quad	.LVL21
	.quad	.LVL29
	.value	0x1
	.byte	0x56
	.quad	.LVL29
	.quad	.LFE138
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU2
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU61
	.uleb128 .LVU62
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 0
.LLST1:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1
	.quad	.LVL4
	.value	0x1
	.byte	0x53
	.quad	.LVL5
	.quad	.LVL6
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL6
	.quad	.LVL15
	.value	0x1
	.byte	0x53
	.quad	.LVL16
	.quad	.LVL17
	.value	0x1
	.byte	0x53
	.quad	.LVL18
	.quad	.LVL19
	.value	0x1
	.byte	0x53
	.quad	.LVL21
	.quad	.LVL29
	.value	0x1
	.byte	0x53
	.quad	.LVL29
	.quad	.LFE138
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU9
	.uleb128 .LVU29
	.uleb128 .LVU65
	.uleb128 .LVU70
.LLST2:
	.quad	.LVL1
	.quad	.LVL6
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL21
	.quad	.LVL27
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU15
	.uleb128 .LVU29
	.uleb128 .LVU66
	.uleb128 .LVU70
.LLST3:
	.quad	.LVL2
	.quad	.LVL6
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL27
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU17
	.uleb128 .LVU29
	.uleb128 .LVU66
	.uleb128 .LVU70
.LLST4:
	.quad	.LVL2
	.quad	.LVL6
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL27
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU21
	.uleb128 .LVU29
	.uleb128 .LVU66
	.uleb128 .LVU68
.LLST5:
	.quad	.LVL3
	.quad	.LVL6
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL25
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU23
	.uleb128 .LVU29
	.uleb128 .LVU66
	.uleb128 .LVU68
.LLST6:
	.quad	.LVL3
	.quad	.LVL6
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL25
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU46
	.uleb128 .LVU56
	.uleb128 .LVU70
	.uleb128 .LVU72
.LLST8:
	.quad	.LVL10
	.quad	.LVL12
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL27
	.quad	.LVL29
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU31
	.uleb128 .LVU41
	.uleb128 .LVU53
	.uleb128 .LVU57
	.uleb128 .LVU62
	.uleb128 .LVU65
.LLST7:
	.quad	.LVL6
	.quad	.LVL9
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL14
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	.LVL18
	.quad	.LVL21
	.value	0xa
	.byte	0x3
	.quad	lsc_obstack
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS48:
	.uleb128 0
	.uleb128 .LVU386
	.uleb128 .LVU386
	.uleb128 .LVU395
	.uleb128 .LVU395
	.uleb128 .LVU397
	.uleb128 .LVU397
	.uleb128 0
.LLST48:
	.quad	.LVL139
	.quad	.LVL140
	.value	0x1
	.byte	0x55
	.quad	.LVL140
	.quad	.LVL145
	.value	0x1
	.byte	0x56
	.quad	.LVL145
	.quad	.LVL146
	.value	0x1
	.byte	0x55
	.quad	.LVL146
	.quad	.LFE135
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS49:
	.uleb128 .LVU389
	.uleb128 .LVU392
	.uleb128 .LVU392
	.uleb128 .LVU393
.LLST49:
	.quad	.LVL142
	.quad	.LVL143
	.value	0x1
	.byte	0x50
	.quad	.LVL143
	.quad	.LVL144-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS50:
	.uleb128 .LVU389
	.uleb128 .LVU393
.LLST50:
	.quad	.LVL142
	.quad	.LVL144-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS51:
	.uleb128 .LVU415
	.uleb128 .LVU431
	.uleb128 .LVU431
	.uleb128 .LVU446
	.uleb128 .LVU467
	.uleb128 .LVU495
.LLST51:
	.quad	.LVL159
	.quad	.LVL162
	.value	0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.quad	.LVL162
	.quad	.LVL170
	.value	0x1
	.byte	0x5c
	.quad	.LVL179
	.quad	.LVL191
	.value	0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS52:
	.uleb128 .LVU416
	.uleb128 .LVU420
	.uleb128 .LVU420
	.uleb128 .LVU433
	.uleb128 .LVU467
	.uleb128 .LVU469
.LLST52:
	.quad	.LVL159
	.quad	.LVL160
	.value	0x1
	.byte	0x57
	.quad	.LVL160
	.quad	.LVL163-1
	.value	0x1
	.byte	0x50
	.quad	.LVL179
	.quad	.LVL180-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS53:
	.uleb128 .LVU442
	.uleb128 .LVU445
	.uleb128 .LVU478
	.uleb128 .LVU481
.LLST53:
	.quad	.LVL168
	.quad	.LVL169-1
	.value	0x1
	.byte	0x50
	.quad	.LVL185
	.quad	.LVL186-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS54:
	.uleb128 .LVU435
	.uleb128 .LVU438
	.uleb128 .LVU438
	.uleb128 .LVU439
	.uleb128 .LVU471
	.uleb128 .LVU474
	.uleb128 .LVU474
	.uleb128 .LVU475
.LLST54:
	.quad	.LVL164
	.quad	.LVL165
	.value	0x1
	.byte	0x50
	.quad	.LVL165
	.quad	.LVL166-1
	.value	0x1
	.byte	0x54
	.quad	.LVL181
	.quad	.LVL182
	.value	0x1
	.byte	0x50
	.quad	.LVL182
	.quad	.LVL183-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS55:
	.uleb128 .LVU450
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 .LVU456
	.uleb128 .LVU486
	.uleb128 .LVU489
	.uleb128 .LVU489
	.uleb128 .LVU492
.LLST55:
	.quad	.LVL172
	.quad	.LVL173
	.value	0x1
	.byte	0x50
	.quad	.LVL173
	.quad	.LVL174-1
	.value	0x1
	.byte	0x54
	.quad	.LVL188
	.quad	.LVL189
	.value	0x1
	.byte	0x50
	.quad	.LVL189
	.quad	.LVL190-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS56:
	.uleb128 .LVU461
	.uleb128 .LVU464
	.uleb128 .LVU464
	.uleb128 .LVU465
.LLST56:
	.quad	.LVL176
	.quad	.LVL177
	.value	0x1
	.byte	0x50
	.quad	.LVL177
	.quad	.LVL178-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS57:
	.uleb128 .LVU401
	.uleb128 .LVU404
	.uleb128 .LVU404
	.uleb128 .LVU405
.LLST57:
	.quad	.LVL148
	.quad	.LVL149
	.value	0x1
	.byte	0x50
	.quad	.LVL149
	.quad	.LVL150-1
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
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB58
	.quad	.LBE58
	.quad	.LBB59
	.quad	.LBE59
	.quad	.LBB72
	.quad	.LBE72
	.quad	0
	.quad	0
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB74
	.quad	.LBE74
	.quad	0
	.quad	0
	.quad	.LBB62
	.quad	.LBE62
	.quad	.LBB64
	.quad	.LBE64
	.quad	.LBB73
	.quad	.LBE73
	.quad	0
	.quad	0
	.quad	.LBB65
	.quad	.LBE65
	.quad	.LBB66
	.quad	.LBE66
	.quad	.LBB67
	.quad	.LBE67
	.quad	.LBB70
	.quad	.LBE70
	.quad	.LBB71
	.quad	.LBE71
	.quad	0
	.quad	0
	.quad	.LBB68
	.quad	.LBE68
	.quad	.LBB69
	.quad	.LBE69
	.quad	.LBB75
	.quad	.LBE75
	.quad	0
	.quad	0
	.quad	.LBB108
	.quad	.LBE108
	.quad	.LBB155
	.quad	.LBE155
	.quad	.LBB156
	.quad	.LBE156
	.quad	.LBB157
	.quad	.LBE157
	.quad	.LBB158
	.quad	.LBE158
	.quad	0
	.quad	0
	.quad	.LBB111
	.quad	.LBE111
	.quad	.LBB124
	.quad	.LBE124
	.quad	0
	.quad	0
	.quad	.LBB119
	.quad	.LBE119
	.quad	.LBB122
	.quad	.LBE122
	.quad	0
	.quad	0
	.quad	.LBB125
	.quad	.LBE125
	.quad	.LBB127
	.quad	.LBE127
	.quad	.LBB150
	.quad	.LBE150
	.quad	0
	.quad	0
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB130
	.quad	.LBE130
	.quad	.LBB151
	.quad	.LBE151
	.quad	0
	.quad	0
	.quad	.LBB131
	.quad	.LBE131
	.quad	.LBB149
	.quad	.LBE149
	.quad	0
	.quad	0
	.quad	.LBB135
	.quad	.LBE135
	.quad	.LBB152
	.quad	.LBE152
	.quad	.LBB153
	.quad	.LBE153
	.quad	.LBB154
	.quad	.LBE154
	.quad	0
	.quad	0
	.quad	.LBB136
	.quad	.LBE136
	.quad	.LBB138
	.quad	.LBE138
	.quad	.LBB146
	.quad	.LBE146
	.quad	0
	.quad	0
	.quad	.LBB141
	.quad	.LBE141
	.quad	.LBB143
	.quad	.LBE143
	.quad	.LBB147
	.quad	.LBE147
	.quad	0
	.quad	0
	.quad	.LBB144
	.quad	.LBE144
	.quad	.LBB148
	.quad	.LBE148
	.quad	0
	.quad	0
	.quad	.LBB171
	.quad	.LBE171
	.quad	.LBB174
	.quad	.LBE174
	.quad	0
	.quad	0
	.quad	.LBB175
	.quad	.LBE175
	.quad	.LBB206
	.quad	.LBE206
	.quad	0
	.quad	0
	.quad	.LBB177
	.quad	.LBE177
	.quad	.LBB182
	.quad	.LBE182
	.quad	.LBB196
	.quad	.LBE196
	.quad	.LBB197
	.quad	.LBE197
	.quad	0
	.quad	0
	.quad	.LBB183
	.quad	.LBE183
	.quad	.LBB190
	.quad	.LBE190
	.quad	.LBB191
	.quad	.LBE191
	.quad	.LBB198
	.quad	.LBE198
	.quad	.LBB199
	.quad	.LBE199
	.quad	.LBB200
	.quad	.LBE200
	.quad	0
	.quad	0
	.quad	.LBB192
	.quad	.LBE192
	.quad	.LBB195
	.quad	.LBE195
	.quad	0
	.quad	0
	.quad	.LBB202
	.quad	.LBE202
	.quad	.LBB205
	.quad	.LBE205
	.quad	0
	.quad	0
	.quad	.LBB222
	.quad	.LBE222
	.quad	.LBB236
	.quad	.LBE236
	.quad	0
	.quad	0
	.quad	.LBB225
	.quad	.LBE225
	.quad	.LBB235
	.quad	.LBE235
	.quad	0
	.quad	0
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
	.quad	0
	.quad	0
	.quad	.LBB232
	.quad	.LBE232
	.quad	.LBB237
	.quad	.LBE237
	.quad	0
	.quad	0
	.quad	.LBB238
	.quad	.LBE238
	.quad	.LBB241
	.quad	.LBE241
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB141
	.quad	.LFE141
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF160:
	.string	"__stream"
.LASF124:
	.string	"chunk"
.LASF13:
	.string	"size_t"
.LASF158:
	.string	"__value"
.LASF96:
	.string	"GETOPT_HELP_CHAR"
.LASF49:
	.string	"_ISgraph"
.LASF10:
	.string	"__ssize_t"
.LASF194:
	.string	"__fmt"
.LASF87:
	.string	"_IO_codecvt"
.LASF67:
	.string	"_IO_save_end"
.LASF32:
	.string	"_sys_siglist"
.LASF116:
	.string	"_obstack_chunk"
.LASF12:
	.string	"time_t"
.LASF166:
	.string	"input_line"
.LASF60:
	.string	"_IO_write_base"
.LASF197:
	.string	"__lineptr"
.LASF174:
	.string	"state"
.LASF115:
	.string	"error_one_per_line"
.LASF76:
	.string	"_lock"
.LASF132:
	.string	"extra_arg"
.LASF209:
	.string	"quotearg_n_style_colon"
.LASF65:
	.string	"_IO_save_base"
.LASF208:
	.string	"rpl_fclose"
.LASF69:
	.string	"_chain"
.LASF178:
	.string	"keyword"
.LASF73:
	.string	"_cur_column"
.LASF92:
	.string	"sys_nerr"
.LASF232:
	.string	"__printf_chk"
.LASF142:
	.string	"SHELL_SYNTAX_BOURNE"
.LASF169:
	.string	"term"
.LASF130:
	.string	"chunkfun"
.LASF94:
	.string	"_sys_nerr"
.LASF214:
	.string	"set_program_name"
.LASF119:
	.string	"contents"
.LASF34:
	.string	"__environ"
.LASF171:
	.string	"ST_TERMYES"
.LASF211:
	.string	"getenv"
.LASF6:
	.string	"long int"
.LASF221:
	.string	"exit"
.LASF145:
	.string	"G_line"
.LASF22:
	.string	"has_arg"
.LASF213:
	.string	"__fprintf_chk"
.LASF86:
	.string	"_IO_marker"
.LASF184:
	.string	"main"
.LASF201:
	.string	"puts"
.LASF129:
	.string	"alignment_mask"
.LASF48:
	.string	"_ISprint"
.LASF203:
	.string	"error"
.LASF177:
	.string	"need_backslash"
.LASF4:
	.string	"signed char"
.LASF55:
	.string	"_IO_FILE"
.LASF26:
	.string	"__timezone"
.LASF88:
	.string	"_IO_wide_data"
.LASF239:
	.string	"append_quoted"
.LASF234:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF111:
	.string	"quoting_style_args"
.LASF35:
	.string	"environ"
.LASF0:
	.string	"unsigned char"
.LASF80:
	.string	"_freeres_list"
.LASF187:
	.string	"parse_line"
.LASF188:
	.string	"emit_ancillary_info"
.LASF114:
	.string	"error_message_count"
.LASF24:
	.string	"__tzname"
.LASF162:
	.string	"_Bool"
.LASF180:
	.string	"arg_start"
.LASF11:
	.string	"char"
.LASF195:
	.string	"printf"
.LASF159:
	.string	"__ptr"
.LASF235:
	.string	"src/dircolors.c"
.LASF205:
	.string	"fwrite_unlocked"
.LASF237:
	.string	"_IO_lock_t"
.LASF163:
	.string	"filename"
.LASF210:
	.string	"__errno_location"
.LASF220:
	.string	"version_etc"
.LASF137:
	.string	"obstack_exit_failure"
.LASF29:
	.string	"timezone"
.LASF104:
	.string	"shell_escape_always_quoting_style"
.LASF212:
	.string	"last_component"
.LASF57:
	.string	"_IO_read_ptr"
.LASF206:
	.string	"strcmp"
.LASF89:
	.string	"stdin"
.LASF93:
	.string	"sys_errlist"
.LASF68:
	.string	"_markers"
.LASF99:
	.string	"program_name"
.LASF52:
	.string	"_ISpunct"
.LASF117:
	.string	"limit"
.LASF175:
	.string	"keywd"
.LASF106:
	.string	"c_maybe_quoting_style"
.LASF176:
	.string	"unrecognized"
.LASF191:
	.string	"node"
.LASF170:
	.string	"ST_TERMNO"
.LASF155:
	.string	"prefix"
.LASF36:
	.string	"program_invocation_name"
.LASF77:
	.string	"_offset"
.LASF149:
	.string	"long_options"
.LASF123:
	.string	"chunk_size"
.LASF18:
	.string	"optind"
.LASF109:
	.string	"clocale_quoting_style"
.LASF113:
	.string	"error_print_progname"
.LASF3:
	.string	"long unsigned int"
.LASF172:
	.string	"ST_TERMSURE"
.LASF186:
	.string	"status"
.LASF134:
	.string	"maybe_empty_object"
.LASF71:
	.string	"_flags2"
.LASF59:
	.string	"_IO_read_base"
.LASF125:
	.string	"object_base"
.LASF168:
	.string	"line"
.LASF54:
	.string	"option"
.LASF84:
	.string	"_unused2"
.LASF131:
	.string	"freefun"
.LASF161:
	.string	"__cnt"
.LASF46:
	.string	"_ISxdigit"
.LASF146:
	.string	"lsc_obstack"
.LASF150:
	.string	"argc"
.LASF72:
	.string	"_old_offset"
.LASF225:
	.string	"c_strcasecmp"
.LASF190:
	.string	"infomap"
.LASF151:
	.string	"argv"
.LASF101:
	.string	"shell_quoting_style"
.LASF135:
	.string	"alloc_failed"
.LASF207:
	.string	"freopen_safer"
.LASF15:
	.string	"long long int"
.LASF189:
	.string	"program"
.LASF38:
	.string	"Version"
.LASF39:
	.string	"exit_failure"
.LASF16:
	.string	"_gl_cxxalias_dummy"
.LASF42:
	.string	"_ISupper"
.LASF199:
	.string	"putc_unlocked"
.LASF105:
	.string	"c_quoting_style"
.LASF227:
	.string	"__ctype_b_loc"
.LASF51:
	.string	"_IScntrl"
.LASF62:
	.string	"_IO_write_end"
.LASF33:
	.string	"sys_siglist"
.LASF97:
	.string	"GETOPT_VERSION_CHAR"
.LASF63:
	.string	"_IO_buf_base"
.LASF183:
	.string	"shell"
.LASF152:
	.string	"optc"
.LASF2:
	.string	"unsigned int"
.LASF153:
	.string	"syntax"
.LASF122:
	.string	"obstack"
.LASF98:
	.string	"version_etc_copyright"
.LASF228:
	.string	"xstrndup"
.LASF112:
	.string	"quoting_style_vals"
.LASF100:
	.string	"literal_quoting_style"
.LASF27:
	.string	"tzname"
.LASF82:
	.string	"__pad5"
.LASF156:
	.string	"suffix"
.LASF23:
	.string	"flag"
.LASF138:
	.string	"quoting_options"
.LASF56:
	.string	"_flags"
.LASF193:
	.string	"lc_messages"
.LASF139:
	.string	"quote_quoting_options"
.LASF126:
	.string	"next_free"
.LASF83:
	.string	"_mode"
.LASF78:
	.string	"_codecvt"
.LASF41:
	.string	"LOG10_TIMESPEC_HZ"
.LASF240:
	.string	"__stack_chk_fail"
.LASF231:
	.string	"fnmatch"
.LASF31:
	.string	"long double"
.LASF233:
	.string	"strncmp"
.LASF85:
	.string	"FILE"
.LASF219:
	.string	"getopt_long"
.LASF226:
	.string	"__getdelim"
.LASF173:
	.string	"ST_GLOBAL"
.LASF44:
	.string	"_ISalpha"
.LASF20:
	.string	"optopt"
.LASF108:
	.string	"locale_quoting_style"
.LASF14:
	.string	"long long unsigned int"
.LASF50:
	.string	"_ISblank"
.LASF7:
	.string	"__off_t"
.LASF121:
	.string	"extra"
.LASF140:
	.string	"quoting_style"
.LASF53:
	.string	"_ISalnum"
.LASF37:
	.string	"program_invocation_short_name"
.LASF223:
	.string	"quote"
.LASF222:
	.string	"_obstack_begin"
.LASF148:
	.string	"ls_codes"
.LASF81:
	.string	"_freeres_buf"
.LASF47:
	.string	"_ISspace"
.LASF141:
	.string	"Shell_syntax"
.LASF19:
	.string	"opterr"
.LASF236:
	.string	"/root/coreutils"
.LASF9:
	.string	"__time_t"
.LASF204:
	.string	"fputs_unlocked"
.LASF66:
	.string	"_IO_backup_base"
.LASF215:
	.string	"setlocale"
.LASF75:
	.string	"_shortbuf"
.LASF200:
	.string	"to_uchar"
.LASF181:
	.string	"dc_parse_file"
.LASF102:
	.string	"shell_always_quoting_style"
.LASF8:
	.string	"__off64_t"
.LASF133:
	.string	"use_extra_arg"
.LASF127:
	.string	"chunk_limit"
.LASF107:
	.string	"escape_quoting_style"
.LASF198:
	.string	"getline"
.LASF64:
	.string	"_IO_buf_end"
.LASF144:
	.string	"SHELL_SYNTAX_UNKNOWN"
.LASF21:
	.string	"name"
.LASF196:
	.string	"fprintf"
.LASF143:
	.string	"SHELL_SYNTAX_C"
.LASF43:
	.string	"_ISlower"
.LASF192:
	.string	"map_prog"
.LASF167:
	.string	"input_line_size"
.LASF91:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF120:
	.string	"plain"
.LASF164:
	.string	"line_number"
.LASF185:
	.string	"usage"
.LASF218:
	.string	"atexit"
.LASF103:
	.string	"shell_escape_quoting_style"
.LASF74:
	.string	"_vtable_offset"
.LASF95:
	.string	"_sys_errlist"
.LASF40:
	.string	"TIMESPEC_HZ"
.LASF157:
	.string	"__o1"
.LASF25:
	.string	"__daylight"
.LASF230:
	.string	"strlen"
.LASF179:
	.string	"keyword_start"
.LASF182:
	.string	"guess_shell_syntax"
.LASF58:
	.string	"_IO_read_end"
.LASF30:
	.string	"getdate_err"
.LASF70:
	.string	"_fileno"
.LASF217:
	.string	"textdomain"
.LASF147:
	.string	"slack_codes"
.LASF79:
	.string	"_wide_data"
.LASF17:
	.string	"optarg"
.LASF154:
	.string	"print_database"
.LASF229:
	.string	"free"
.LASF45:
	.string	"_ISdigit"
.LASF202:
	.string	"dcgettext"
.LASF1:
	.string	"short unsigned int"
.LASF90:
	.string	"stdout"
.LASF165:
	.string	"next_G_line"
.LASF61:
	.string	"_IO_write_ptr"
.LASF28:
	.string	"daylight"
.LASF128:
	.string	"temp"
.LASF238:
	.string	"dc_parse_stream"
.LASF118:
	.string	"prev"
.LASF216:
	.string	"bindtextdomain"
.LASF136:
	.string	"obstack_alloc_failed_handler"
.LASF110:
	.string	"custom_quoting_style"
.LASF224:
	.string	"_obstack_newchunk"
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
