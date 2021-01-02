	.file	"nl.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s"
	.text
	.p2align 4
	.type	build_type_arg, @function
build_type_arg:
.LVL0:
.LFB136:
	.file 1 "src/nl.c"
	.loc 1 246 1 view -0
	.cfi_startproc
	.loc 1 247 3 view .LVU1
	.loc 1 248 3 view .LVU2
	.loc 1 250 3 view .LVU3
	.loc 1 250 11 is_stmt 0 view .LVU4
	movq	optarg(%rip), %rcx
	movzbl	(%rcx), %eax
	.loc 1 250 3 view .LVU5
	cmpb	$112, %al
	je	.L2
	jg	.L3
	cmpb	$97, %al
	je	.L4
	xorl	%r8d, %r8d
	cmpb	$110, %al
	jne	.L15
.L4:
	.loc 1 255 7 is_stmt 1 view .LVU6
	.loc 1 255 14 is_stmt 0 view .LVU7
	movq	%rcx, (%rdi)
	.loc 1 256 7 is_stmt 1 view .LVU8
	.loc 1 248 8 is_stmt 0 view .LVU9
	movl	$1, %r8d
.L15:
	.loc 1 274 1 view .LVU10
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 250 3 view .LVU11
	xorl	%r8d, %r8d
	cmpb	$116, %al
	je	.L4
	.loc 1 274 1 view .LVU12
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 1 246 1 view .LVU13
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 258 22 view .LVU14
	leaq	1(%rcx), %rax
	movq	%rsi, %r12
	.loc 1 258 7 is_stmt 1 view .LVU15
	.loc 1 246 1 is_stmt 0 view .LVU16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 258 22 view .LVU17
	movq	%rax, optarg(%rip)
	.loc 1 258 14 view .LVU18
	movq	%rcx, (%rdi)
	.loc 1 259 7 is_stmt 1 view .LVU19
	.loc 1 265 16 is_stmt 0 view .LVU20
	movq	optarg(%rip), %rbp
	.loc 1 259 22 view .LVU21
	movq	$0, (%rsi)
	.loc 1 260 7 is_stmt 1 view .LVU22
	.loc 1 261 23 is_stmt 0 view .LVU23
	movq	%rdx, 32(%rsi)
	.loc 1 265 16 view .LVU24
	movq	%rbp, %rdi
.LVL1:
	.loc 1 260 25 view .LVU25
	movq	$0, 8(%rsi)
	.loc 1 261 7 is_stmt 1 view .LVU26
	.loc 1 262 7 view .LVU27
	.loc 1 262 25 is_stmt 0 view .LVU28
	movq	$0, 40(%rsi)
	.loc 1 263 7 is_stmt 1 view .LVU29
	.loc 1 263 25 is_stmt 0 view .LVU30
	movq	$710, rpl_re_syntax_options(%rip)
	.loc 1 265 7 is_stmt 1 view .LVU31
	.loc 1 265 16 is_stmt 0 view .LVU32
	call	strlen@PLT
.LVL2:
	.loc 1 265 16 view .LVU33
	movq	%r12, %rdx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	call	rpl_re_compile_pattern@PLT
.LVL3:
	.loc 1 266 7 is_stmt 1 view .LVU34
	.loc 1 266 10 is_stmt 0 view .LVU35
	testq	%rax, %rax
	jne	.L19
	.loc 1 274 1 view .LVU36
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	.loc 1 248 8 view .LVU37
	movl	$1, %r8d
	.loc 1 273 3 is_stmt 1 view .LVU38
	.loc 1 274 1 is_stmt 0 view .LVU39
	movl	%r8d, %eax
.LVL4:
	.loc 1 274 1 view .LVU40
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL5:
	.loc 1 274 1 view .LVU41
	ret
.LVL6:
.L19:
	.cfi_restore_state
.LBB63:
	.loc 1 267 9 is_stmt 1 view .LVU42
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rdx
	xorl	%esi, %esi
	xorl	%eax, %eax
.LVL7:
	.loc 1 267 9 is_stmt 0 view .LVU43
	movl	$1, %edi
	call	error@PLT
.LVL8:
	.loc 1 267 9 view .LVU44
.LBE63:
	.cfi_endproc
.LFE136:
	.size	build_type_arg, .-build_type_arg
	.section	.rodata.str1.1
.LC1:
	.string	"line number overflow"
	.text
	.p2align 4
	.type	print_lineno, @function
print_lineno:
.LFB137:
	.loc 1 280 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 281 3 view .LVU46
	.loc 1 280 1 is_stmt 0 view .LVU47
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 281 6 view .LVU48
	cmpb	$0, line_no_overflow(%rip)
	jne	.L29
	.loc 1 284 3 is_stmt 1 view .LVU49
.LVL9:
.LBB72:
.LBI72:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 1 view .LVU50
.LBB73:
	.loc 2 107 3 view .LVU51
	.loc 2 107 10 is_stmt 0 view .LVU52
	movq	separator_str(%rip), %r8
	movq	line_no(%rip), %rcx
	xorl	%eax, %eax
	movl	$1, %edi
	movl	lineno_width(%rip), %edx
	movq	lineno_format(%rip), %rsi
	call	__printf_chk@PLT
.LVL10:
	.loc 2 107 10 view .LVU53
.LBE73:
.LBE72:
	.loc 1 286 3 is_stmt 1 view .LVU54
	.loc 1 286 7 is_stmt 0 view .LVU55
	movq	page_incr(%rip), %rax
	addq	line_no(%rip), %rax
	movq	%rax, line_no(%rip)
	.loc 1 286 6 view .LVU56
	jno	.L20
	.loc 1 287 5 is_stmt 1 view .LVU57
	.loc 1 287 22 is_stmt 0 view .LVU58
	movb	$1, line_no_overflow(%rip)
.L20:
	.loc 1 288 1 view .LVU59
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L29:
	.cfi_restore_state
.LBB74:
.LBI74:
	.loc 1 279 1 is_stmt 1 view .LVU60
.LBB75:
	.loc 1 282 5 view .LVU61
	movl	$5, %edx
	leaq	.LC1(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL11:
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL12:
.LBE75:
.LBE74:
	.cfi_endproc
.LFE137:
	.size	print_lineno, .-print_lineno
	.section	.rodata.str1.1
.LC2:
	.string	"r"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"error in regular expression search"
	.text
	.p2align 4
	.type	nl_file, @function
nl_file:
.LVL13:
.LFB145:
	.loc 1 435 1 view -0
	.cfi_startproc
	.loc 1 436 3 view .LVU63
	.loc 1 438 3 view .LVU64
	.loc 1 435 1 is_stmt 0 view .LVU65
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 438 7 view .LVU66
	cmpb	$45, (%rdi)
	je	.L73
.L32:
	.loc 1 445 7 is_stmt 1 view .LVU67
	.loc 1 445 16 is_stmt 0 view .LVU68
	leaq	.LC2(%rip), %rsi
	movq	%r13, %rdi
.LVL14:
	.loc 1 445 16 view .LVU69
	call	fopen@PLT
.LVL15:
	movq	%rax, %rbp
.LVL16:
	.loc 1 446 7 is_stmt 1 view .LVU70
	.loc 1 446 10 is_stmt 0 view .LVU71
	testq	%rax, %rax
	je	.L70
.LVL17:
.L33:
	.loc 1 453 3 is_stmt 1 view .LVU72
	movl	$2, %esi
	movq	%rbp, %rdi
.LBB112:
.LBB113:
.LBB114:
.LBB115:
	.loc 1 306 17 is_stmt 0 view .LVU73
	leaq	header_regex(%rip), %rbx
.LBE115:
.LBE114:
.LBE113:
.LBE112:
	.loc 1 453 3 view .LVU74
	call	fadvise@PLT
.LVL18:
	.loc 1 455 3 is_stmt 1 view .LVU75
.LBB160:
.LBI112:
	.loc 1 408 1 view .LVU76
.LBB158:
	.loc 1 410 3 view .LVU77
	.p2align 4,,10
	.p2align 3
.L35:
	.loc 1 410 9 view .LVU78
	.loc 1 410 10 is_stmt 0 view .LVU79
	movq	%rbp, %rsi
	leaq	line_buf(%rip), %rdi
	call	readlinebuffer@PLT
.LVL19:
	.loc 1 410 9 view .LVU80
	testq	%rax, %rax
	je	.L74
	.loc 1 412 7 is_stmt 1 view .LVU81
.LBB121:
.LBI121:
	.loc 1 387 1 view .LVU82
.LBB122:
	.loc 1 389 3 view .LVU83
	.loc 1 389 24 is_stmt 0 view .LVU84
	movq	8+line_buf(%rip), %r12
	.loc 1 389 10 view .LVU85
	leaq	-1(%r12), %r14
.LVL20:
	.loc 1 391 3 is_stmt 1 view .LVU86
	.loc 1 391 6 is_stmt 0 view .LVU87
	cmpq	$1, %r14
	jbe	.L36
	.loc 1 391 15 view .LVU88
	movq	section_del(%rip), %rax
	.loc 1 391 34 view .LVU89
	movq	16+line_buf(%rip), %r15
	.loc 1 391 15 view .LVU90
	movzwl	(%rax), %eax
	cmpw	%ax, (%r15)
	jne	.L36
	.loc 1 393 3 is_stmt 1 view .LVU91
	.loc 1 393 6 is_stmt 0 view .LVU92
	cmpq	header_del_len(%rip), %r14
	je	.L75
.L37:
	.loc 1 396 3 is_stmt 1 view .LVU93
	.loc 1 396 6 is_stmt 0 view .LVU94
	cmpq	body_del_len(%rip), %r14
	je	.L76
.L39:
	.loc 1 399 3 is_stmt 1 view .LVU95
	.loc 1 399 6 is_stmt 0 view .LVU96
	cmpq	footer_del_len(%rip), %r14
	je	.L77
.L36:
.LVL21:
	.loc 1 399 6 view .LVU97
.LBE122:
.LBE121:
	.loc 1 424 11 is_stmt 1 view .LVU98
.LBB126:
.LBI126:
	.loc 1 336 1 view .LVU99
.LBB127:
	.loc 1 338 3 view .LVU100
	.loc 1 340 3 view .LVU101
	.loc 1 340 11 is_stmt 0 view .LVU102
	movq	current_type(%rip), %rax
	movzbl	(%rax), %eax
	.loc 1 340 3 view .LVU103
	cmpb	$112, %al
	je	.L50
	jg	.L51
	cmpb	$97, %al
	je	.L52
	cmpb	$110, %al
	jne	.L54
.L60:
.LBB128:
	.loc 1 373 11 is_stmt 1 view .LVU104
	movq	stdout(%rip), %rsi
	movq	print_no_line_fmt(%rip), %rdi
	call	fputs_unlocked@PLT
.LVL22:
	.loc 1 374 11 view .LVU105
	movq	8+line_buf(%rip), %r12
.L54:
.LBE128:
	.loc 1 381 3 view .LVU106
	movq	stdout(%rip), %rcx
	movq	16+line_buf(%rip), %rdi
	movq	%r12, %rdx
	movl	$1, %esi
	call	fwrite_unlocked@PLT
.LVL23:
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L52:
	.loc 1 343 7 view .LVU107
	.loc 1 343 22 is_stmt 0 view .LVU108
	movq	blank_join(%rip), %rdx
	.loc 1 343 10 view .LVU109
	cmpq	$1, %rdx
	jle	.L67
	.loc 1 345 11 is_stmt 1 view .LVU110
	.loc 1 345 14 is_stmt 0 view .LVU111
	cmpq	$1, %r12
	ja	.L58
	.loc 1 345 38 view .LVU112
	movq	blank_lines.7320(%rip), %rax
	addq	$1, %rax
	.loc 1 345 35 view .LVU113
	movq	%rax, blank_lines.7320(%rip)
	cmpq	%rax, %rdx
	jne	.L60
.L58:
	.loc 1 347 15 is_stmt 1 view .LVU114
	call	print_lineno
.LVL24:
	.loc 1 348 15 view .LVU115
	movq	8+line_buf(%rip), %r12
	.loc 1 348 27 is_stmt 0 view .LVU116
	movq	$0, blank_lines.7320(%rip)
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L51:
	.loc 1 340 3 view .LVU117
	cmpb	$116, %al
	jne	.L54
	.loc 1 357 7 is_stmt 1 view .LVU118
	.loc 1 357 10 is_stmt 0 view .LVU119
	cmpq	$1, %r12
	jbe	.L60
.L67:
.LBB129:
	.loc 1 377 11 is_stmt 1 view .LVU120
	call	print_lineno
.LVL25:
	.loc 1 378 11 view .LVU121
	movq	8+line_buf(%rip), %r12
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L50:
.LBE129:
	.loc 1 366 7 view .LVU122
	.loc 1 366 15 is_stmt 0 view .LVU123
	movq	16+line_buf(%rip), %rsi
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movq	%r14, %r8
	movq	current_regex(%rip), %rdi
	movq	%r14, %rdx
	call	rpl_re_search@PLT
.LVL26:
	cmpq	$-2, %rax
	je	.L59
	cmpq	$-1, %rax
	je	.L60
.LBB130:
	.loc 1 377 11 is_stmt 1 view .LVU124
	call	print_lineno
.LVL27:
	.loc 1 378 11 view .LVU125
	movq	8+line_buf(%rip), %r12
	jmp	.L54
.LVL28:
	.p2align 4,,10
	.p2align 3
.L77:
	.loc 1 378 11 is_stmt 0 view .LVU126
.LBE130:
.LBE127:
.LBE126:
.LBB133:
.LBB123:
	.loc 1 400 11 view .LVU127
	movq	footer_del(%rip), %rsi
	movq	%r14, %rdx
	movq	%r15, %rdi
	call	memcmp@PLT
.LVL29:
	.loc 1 400 7 view .LVU128
	testl	%eax, %eax
	jne	.L36
	.loc 1 401 5 is_stmt 1 view .LVU129
.LVL30:
	.loc 1 401 5 is_stmt 0 view .LVU130
.LBE123:
.LBE133:
	.loc 1 421 11 is_stmt 1 view .LVU131
.LBB134:
.LBI134:
	.loc 1 325 1 view .LVU132
.LBB135:
	.loc 1 327 3 view .LVU133
	.loc 1 327 16 is_stmt 0 view .LVU134
	movq	footer_type(%rip), %rax
.LBB136:
.LBB137:
	.loc 1 293 6 view .LVU135
	cmpb	$0, reset_numbers(%rip)
.LBE137:
.LBE136:
	.loc 1 327 16 view .LVU136
	movq	%rax, current_type(%rip)
	.loc 1 328 3 is_stmt 1 view .LVU137
	.loc 1 328 17 is_stmt 0 view .LVU138
	leaq	footer_regex(%rip), %rax
	movq	%rax, current_regex(%rip)
	.loc 1 329 3 is_stmt 1 view .LVU139
.LBB141:
.LBI136:
	.loc 1 291 1 view .LVU140
.LBB140:
	.loc 1 293 3 view .LVU141
	.loc 1 293 6 is_stmt 0 view .LVU142
	je	.L42
.L41:
.LBB138:
.LBI138:
	.loc 1 291 1 is_stmt 1 view .LVU143
.LBB139:
	.loc 1 295 7 view .LVU144
	.loc 1 295 15 is_stmt 0 view .LVU145
	movq	starting_line_number(%rip), %rax
	.loc 1 296 24 view .LVU146
	movb	$0, line_no_overflow(%rip)
	.loc 1 295 15 view .LVU147
	movq	%rax, line_no(%rip)
	.loc 1 296 7 is_stmt 1 view .LVU148
.L42:
.LBE139:
.LBE138:
.LBE140:
.LBE141:
	.loc 1 330 3 view .LVU149
.LVL31:
.LBB142:
.LBI142:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 3 108 1 view .LVU150
.LBB143:
	.loc 3 110 3 view .LVU151
	.loc 3 110 10 is_stmt 0 view .LVU152
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L78
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	$10, (%rax)
	jmp	.L35
.LVL32:
	.p2align 4,,10
	.p2align 3
.L76:
	.loc 3 110 10 view .LVU153
.LBE143:
.LBE142:
.LBE135:
.LBE134:
.LBB147:
.LBB124:
	.loc 1 397 11 view .LVU154
	movq	body_del(%rip), %rsi
	movq	%r14, %rdx
	movq	%r15, %rdi
	call	memcmp@PLT
.LVL33:
	.loc 1 397 7 view .LVU155
	testl	%eax, %eax
	jne	.L39
.LVL34:
	.loc 1 397 7 view .LVU156
.LBE124:
.LBE147:
	.loc 1 418 11 is_stmt 1 view .LVU157
.LBB148:
.LBI148:
	.loc 1 314 1 view .LVU158
.LBB149:
	.loc 1 316 3 view .LVU159
	.loc 1 316 16 is_stmt 0 view .LVU160
	movq	body_type(%rip), %rax
.LBB150:
.LBB151:
	.loc 1 293 6 view .LVU161
	cmpb	$0, reset_numbers(%rip)
.LBE151:
.LBE150:
	.loc 1 316 16 view .LVU162
	movq	%rax, current_type(%rip)
	.loc 1 317 3 is_stmt 1 view .LVU163
	.loc 1 317 17 is_stmt 0 view .LVU164
	leaq	body_regex(%rip), %rax
	movq	%rax, current_regex(%rip)
	.loc 1 318 3 is_stmt 1 view .LVU165
.LBB153:
.LBI150:
	.loc 1 291 1 view .LVU166
.LBB152:
	.loc 1 293 3 view .LVU167
	.loc 1 293 6 is_stmt 0 view .LVU168
	jne	.L41
	jmp	.L42
.LVL35:
	.p2align 4,,10
	.p2align 3
.L75:
	.loc 1 293 6 view .LVU169
.LBE152:
.LBE153:
.LBE149:
.LBE148:
.LBB154:
.LBB125:
	.loc 1 394 11 view .LVU170
	movq	header_del(%rip), %rsi
	movq	%r14, %rdx
	movq	%r15, %rdi
	call	memcmp@PLT
.LVL36:
	.loc 1 394 7 view .LVU171
	testl	%eax, %eax
	jne	.L37
.LVL37:
	.loc 1 394 7 view .LVU172
.LBE125:
.LBE154:
	.loc 1 415 11 is_stmt 1 view .LVU173
.LBB155:
.LBI114:
	.loc 1 303 1 view .LVU174
.LBB120:
	.loc 1 305 3 view .LVU175
	.loc 1 305 16 is_stmt 0 view .LVU176
	movq	header_type(%rip), %rax
.LBB116:
.LBB117:
	.loc 1 293 6 view .LVU177
	cmpb	$0, reset_numbers(%rip)
.LBE117:
.LBE116:
	.loc 1 306 17 view .LVU178
	movq	%rbx, current_regex(%rip)
	.loc 1 305 16 view .LVU179
	movq	%rax, current_type(%rip)
	.loc 1 306 3 is_stmt 1 view .LVU180
	.loc 1 307 3 view .LVU181
.LBB119:
.LBI116:
	.loc 1 291 1 view .LVU182
.LBB118:
	.loc 1 293 3 view .LVU183
	.loc 1 293 6 is_stmt 0 view .LVU184
	je	.L42
	jmp	.L41
.LVL38:
	.p2align 4,,10
	.p2align 3
.L78:
	.loc 1 293 6 view .LVU185
.LBE118:
.LBE119:
.LBE120:
.LBE155:
.LBB156:
.LBB146:
.LBB145:
.LBB144:
	.loc 3 110 10 view .LVU186
	movl	$10, %esi
	call	__overflow@PLT
.LVL39:
	jmp	.L35
.LVL40:
	.p2align 4,,10
	.p2align 3
.L74:
	.loc 3 110 10 view .LVU187
.LBE144:
.LBE145:
.LBE146:
.LBE156:
.LBE158:
.LBE160:
	.loc 1 457 3 is_stmt 1 view .LVU188
.LBB161:
.LBI161:
	.loc 3 135 1 view .LVU189
.LBB162:
	.loc 3 137 3 view .LVU190
	.loc 3 137 3 is_stmt 0 view .LVU191
.LBE162:
.LBE161:
	.loc 1 457 6 view .LVU192
	testb	$32, 0(%rbp)
	jne	.L70
	.loc 1 462 3 is_stmt 1 view .LVU193
	.loc 1 462 7 is_stmt 0 view .LVU194
	cmpb	$45, 0(%r13)
	.loc 1 463 5 view .LVU195
	movq	%rbp, %rdi
	.loc 1 462 7 view .LVU196
	jne	.L65
.LVL41:
	.loc 1 462 6 view .LVU197
	cmpb	$0, 1(%r13)
	jne	.L65
	.loc 1 463 5 is_stmt 1 view .LVU198
	call	clearerr_unlocked@PLT
.LVL42:
	.loc 1 469 10 is_stmt 0 view .LVU199
	movl	$1, %eax
.L30:
	.loc 1 470 1 view .LVU200
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL43:
	.loc 1 470 1 view .LVU201
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL44:
	.loc 1 470 1 view .LVU202
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL45:
	.p2align 4,,10
	.p2align 3
.L73:
	.cfi_restore_state
	.loc 1 438 6 view .LVU203
	cmpb	$0, 1(%rdi)
	jne	.L32
	.loc 1 440 7 is_stmt 1 view .LVU204
	.loc 1 440 23 is_stmt 0 view .LVU205
	movb	$1, have_read_stdin(%rip)
	.loc 1 441 7 is_stmt 1 view .LVU206
	.loc 1 441 14 is_stmt 0 view .LVU207
	movq	stdin(%rip), %rbp
.LVL46:
	.loc 1 441 14 view .LVU208
	jmp	.L33
.LVL47:
	.p2align 4,,10
	.p2align 3
.L65:
	.loc 1 464 8 is_stmt 1 view .LVU209
	.loc 1 464 12 is_stmt 0 view .LVU210
	call	rpl_fclose@PLT
.LVL48:
	.loc 1 464 12 view .LVU211
	movl	%eax, %r8d
	.loc 1 469 10 view .LVU212
	movl	$1, %eax
	.loc 1 464 11 view .LVU213
	cmpl	$-1, %r8d
	jne	.L30
.L70:
	.loc 1 466 7 is_stmt 1 view .LVU214
	movq	%r13, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL49:
	movq	%rax, %r12
	.loc 1 466 17 is_stmt 0 view .LVU215
	call	__errno_location@PLT
.LVL50:
	.loc 1 466 7 view .LVU216
	movq	%r12, %rcx
	leaq	.LC0(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL51:
	.loc 1 467 7 is_stmt 1 view .LVU217
	.loc 1 470 1 is_stmt 0 view .LVU218
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	.loc 1 467 14 view .LVU219
	xorl	%eax, %eax
	.loc 1 470 1 view .LVU220
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL52:
	.loc 1 470 1 view .LVU221
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL53:
	.loc 1 470 1 view .LVU222
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL54:
.L59:
	.cfi_restore_state
.LBB163:
.LBB159:
.LBB157:
.LBB132:
.LBB131:
	.loc 1 370 11 is_stmt 1 view .LVU223
	movl	$5, %edx
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL55:
	movq	%rax, %r12
	call	__errno_location@PLT
.LVL56:
	movq	%r12, %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL57:
.LBE131:
.LBE132:
.LBE157:
.LBE159:
.LBE163:
	.cfi_endproc
.LFE145:
	.size	nl_file, .-nl_file
	.section	.rodata.str1.1
.LC4:
	.string	"nl"
.LC5:
	.string	" invocation"
.LC6:
	.string	""
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC8:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC9:
	.string	"Write each FILE to standard output, with line numbers added.\n"
	.align 8
.LC10:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.align 8
.LC11:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.align 8
.LC12:
	.string	"  -b, --body-numbering=STYLE      use STYLE for numbering body lines\n  -d, --section-delimiter=CC      use CC for logical page delimiters\n  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines\n"
	.align 8
.LC13:
	.ascii	"  -h, --header-numbering=STYLE    use STYLE for numbering he"
	.ascii	"ader lines\n  -i, --line-increment=NUMBER     line number in"
	.ascii	"crement at each line\n  -l, --join-blank-lines=NUMBER   grou"
	.ascii	"p of NUM"
	.string	"BER empty lines counted as one\n  -n, --number-format=FORMAT      insert line numbers according to FORMAT\n  -p, --no-renumber               do not reset line numbers for each section\n  -s, --number-separator=STRING   add STRING after (possible) line number\n"
	.align 8
.LC14:
	.string	"  -v, --starting-line-number=NUMBER  first line number for each section\n  -w, --number-width=NUMBER       use NUMBER columns for line numbers\n"
	.align 8
.LC15:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC16:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC17:
	.string	"\nDefault options are: -bt -d'\\:' -fn -hn -i1 -l1 -n'rn' -s<TAB> -v1 -w6\n\nCC are two delimiter characters used to construct logical page delimiters;\na missing second character implies ':'.\n"
	.align 8
.LC18:
	.string	"\nSTYLE is one of:\n\n  a      number all lines\n  t      number only nonempty lines\n  n      number no lines\n  pBRE   number only lines that contain a match for the basic regular\n         expression, BRE\n"
	.align 8
.LC19:
	.string	"\nFORMAT is one of:\n\n  ln     left justified, no leading zeros\n  rn     right justified, no leading zeros\n  rz     right justified, leading zeros\n\n"
	.section	.rodata.str1.1
.LC20:
	.string	"["
.LC21:
	.string	"test invocation"
.LC22:
	.string	"coreutils"
.LC23:
	.string	"Multi-call invocation"
.LC24:
	.string	"sha224sum"
.LC25:
	.string	"sha2 utilities"
.LC26:
	.string	"sha256sum"
.LC27:
	.string	"sha384sum"
.LC28:
	.string	"sha512sum"
.LC29:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC31:
	.string	"GNU coreutils"
.LC32:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC34:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL58:
.LFB135:
	.loc 1 174 1 view -0
	.cfi_startproc
	.loc 1 174 1 is_stmt 0 view .LVU225
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	.loc 1 176 5 view .LVU226
	movl	$5, %edx
	.loc 1 174 1 view .LVU227
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
	.loc 1 174 1 view .LVU228
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 175 3 is_stmt 1 view .LVU229
	.loc 1 175 6 is_stmt 0 view .LVU230
	testl	%edi, %edi
	je	.L80
	.loc 1 176 5 is_stmt 1 view .LVU231
	.loc 1 176 5 view .LVU232
	leaq	.LC7(%rip), %rsi
	xorl	%edi, %edi
.LVL59:
	.loc 1 176 5 is_stmt 0 view .LVU233
	call	dcgettext@PLT
.LVL60:
.LBB180:
.LBB181:
	.loc 2 100 10 view .LVU234
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE181:
.LBE180:
	.loc 1 176 5 view .LVU235
	movq	%rax, %rdx
.LVL61:
.LBB183:
.LBI180:
	.loc 2 98 1 is_stmt 1 view .LVU236
.LBB182:
	.loc 2 100 3 view .LVU237
	.loc 2 100 10 is_stmt 0 view .LVU238
	xorl	%eax, %eax
.LVL62:
	.loc 2 100 10 view .LVU239
	call	__fprintf_chk@PLT
.LVL63:
.L81:
	.loc 2 100 10 view .LVU240
.LBE182:
.LBE183:
	.loc 1 237 3 is_stmt 1 view .LVU241
	movl	%ebp, %edi
	call	exit@PLT
.LVL64:
.L80:
	.loc 1 179 7 view .LVU242
	.loc 1 179 15 is_stmt 0 view .LVU243
	xorl	%edi, %edi
.LVL65:
	.loc 1 179 15 view .LVU244
	leaq	.LC8(%rip), %rsi
	call	dcgettext@PLT
.LVL66:
.LBB184:
.LBB185:
	.loc 2 107 10 view .LVU245
	movq	%r12, %rdx
	movl	$1, %edi
.LBE185:
.LBE184:
	.loc 1 179 15 view .LVU246
	movq	%rax, %rsi
.LVL67:
.LBB187:
.LBI184:
	.loc 2 105 1 is_stmt 1 view .LVU247
.LBB186:
	.loc 2 107 3 view .LVU248
	.loc 2 107 10 is_stmt 0 view .LVU249
	xorl	%eax, %eax
.LVL68:
	.loc 2 107 10 view .LVU250
	call	__printf_chk@PLT
.LVL69:
	.loc 2 107 10 view .LVU251
.LBE186:
.LBE187:
	.loc 1 183 7 is_stmt 1 view .LVU252
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC9(%rip), %rsi
	call	dcgettext@PLT
.LVL70:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL71:
	.loc 1 187 7 view .LVU253
.LBB188:
.LBI188:
	.file 4 "src/system.h"
	.loc 4 581 1 view .LVU254
.LBB189:
	.loc 4 583 3 view .LVU255
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC10(%rip), %rsi
	call	dcgettext@PLT
.LVL72:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL73:
.LBE189:
.LBE188:
	.loc 1 188 7 view .LVU256
.LBB190:
.LBI190:
	.loc 4 588 1 view .LVU257
.LBB191:
	.loc 4 590 3 view .LVU258
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC11(%rip), %rsi
	call	dcgettext@PLT
.LVL74:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL75:
.LBE191:
.LBE190:
	.loc 1 190 7 view .LVU259
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC12(%rip), %rsi
	call	dcgettext@PLT
.LVL76:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL77:
	.loc 1 195 7 view .LVU260
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC13(%rip), %rsi
	call	dcgettext@PLT
.LVL78:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL79:
	.loc 1 203 7 view .LVU261
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC14(%rip), %rsi
	call	dcgettext@PLT
.LVL80:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL81:
	.loc 1 207 7 view .LVU262
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC15(%rip), %rsi
	call	dcgettext@PLT
.LVL82:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL83:
	.loc 1 208 7 view .LVU263
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC16(%rip), %rsi
	call	dcgettext@PLT
.LVL84:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL85:
	.loc 1 209 7 view .LVU264
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC17(%rip), %rsi
	call	dcgettext@PLT
.LVL86:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL87:
	.loc 1 216 7 view .LVU265
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC18(%rip), %rsi
	call	dcgettext@PLT
.LVL88:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL89:
	.loc 1 226 7 view .LVU266
	movl	$5, %edx
	movq	stdout(%rip), %r12
	xorl	%edi, %edi
	leaq	.LC19(%rip), %rsi
	call	dcgettext@PLT
.LVL90:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL91:
	.loc 1 235 7 view .LVU267
.LBB192:
.LBI192:
	.loc 4 634 1 view .LVU268
.LBB193:
	.loc 4 636 3 view .LVU269
	.loc 4 636 67 is_stmt 0 view .LVU270
	leaq	.LC20(%rip), %rax
	.loc 4 647 25 view .LVU271
	movq	%rsp, %rdx
	.loc 4 636 67 view .LVU272
	leaq	.LC26(%rip), %rcx
	movq	%rax, (%rsp)
	leaq	.LC21(%rip), %rax
	.loc 4 649 33 view .LVU273
	movl	$110, %edi
	movl	$108, %esi
	.loc 4 636 67 view .LVU274
	movq	%rax, 8(%rsp)
	leaq	.LC22(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC23(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC24(%rip), %rax
	movq	%rcx, 48(%rsp)
	leaq	.LC27(%rip), %rcx
	movq	%rax, 32(%rsp)
	leaq	.LC25(%rip), %rax
	movq	%rcx, 64(%rsp)
	leaq	.LC28(%rip), %rcx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 4 646 3 is_stmt 1 view .LVU275
.LVL92:
	.loc 4 647 3 view .LVU276
	.loc 4 649 3 view .LVU277
	.loc 4 649 9 view .LVU278
	.p2align 4,,10
	.p2align 3
.L101:
	.loc 4 650 5 view .LVU279
	.loc 4 649 18 is_stmt 0 view .LVU280
	movq	16(%rdx), %rax
	.loc 4 650 13 view .LVU281
	addq	$16, %rdx
.LVL93:
	.loc 4 649 9 is_stmt 1 view .LVU282
	testq	%rax, %rax
	je	.L82
	.loc 4 649 33 is_stmt 0 view .LVU283
	movzbl	(%rax), %ecx
	cmpl	%ecx, %edi
	jne	.L101
	movzbl	1(%rax), %ecx
	cmpl	%ecx, %esi
	jne	.L101
	.loc 4 649 28 view .LVU284
	cmpb	$0, 2(%rax)
	jne	.L101
.L82:
	.loc 4 652 3 is_stmt 1 view .LVU285
	.loc 4 652 15 is_stmt 0 view .LVU286
	movq	8(%rdx), %r12
	.loc 4 655 11 view .LVU287
	leaq	.LC29(%rip), %rsi
	movl	$5, %edx
.LVL94:
	.loc 4 655 11 view .LVU288
	xorl	%edi, %edi
	.loc 4 652 6 view .LVU289
	testq	%r12, %r12
	je	.L85
	.loc 4 653 5 is_stmt 1 view .LVU290
.LVL95:
	.loc 4 655 3 view .LVU291
	.loc 4 655 11 is_stmt 0 view .LVU292
	call	dcgettext@PLT
.LVL96:
.LBB194:
.LBB195:
	.loc 2 107 10 view .LVU293
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	movl	$1, %edi
.LBE195:
.LBE194:
	.loc 4 655 11 view .LVU294
	movq	%rax, %rsi
.LVL97:
.LBB199:
.LBI194:
	.loc 2 105 1 is_stmt 1 view .LVU295
.LBB196:
	.loc 2 107 3 view .LVU296
	.loc 2 107 10 is_stmt 0 view .LVU297
	xorl	%eax, %eax
.LVL98:
	.loc 2 107 10 view .LVU298
	leaq	.LC4(%rip), %r13
	call	__printf_chk@PLT
.LVL99:
	.loc 2 107 10 view .LVU299
.LBE196:
.LBE199:
	.loc 4 659 3 is_stmt 1 view .LVU300
	.loc 4 659 29 is_stmt 0 view .LVU301
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL100:
	movq	%rax, %rdi
.LVL101:
	.loc 4 660 3 is_stmt 1 view .LVU302
	.loc 4 660 6 is_stmt 0 view .LVU303
	testq	%rax, %rax
	je	.L86
	.loc 4 660 22 view .LVU304
	movl	$3, %edx
	leaq	.LC32(%rip), %rsi
	call	strncmp@PLT
.LVL102:
	.loc 4 660 19 view .LVU305
	testl	%eax, %eax
	jne	.L89
.LVL103:
.L86:
	.loc 4 669 3 is_stmt 1 view .LVU306
	.loc 4 669 11 is_stmt 0 view .LVU307
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC34(%rip), %rsi
	call	dcgettext@PLT
.LVL104:
.LBB200:
.LBB201:
	.loc 2 107 10 view .LVU308
	leaq	.LC4(%rip), %rcx
	movl	$1, %edi
	leaq	.LC30(%rip), %rdx
.LBE201:
.LBE200:
	.loc 4 669 11 view .LVU309
	movq	%rax, %rsi
.LVL105:
.LBB206:
.LBI200:
	.loc 2 105 1 is_stmt 1 view .LVU310
.LBB202:
	.loc 2 107 3 view .LVU311
	.loc 2 107 10 is_stmt 0 view .LVU312
	xorl	%eax, %eax
.LVL106:
	.loc 2 107 10 view .LVU313
	call	__printf_chk@PLT
.LVL107:
	.loc 2 107 10 view .LVU314
.LBE202:
.LBE206:
	.loc 4 671 3 is_stmt 1 view .LVU315
	cmpq	%r13, %r12
	leaq	.LC6(%rip), %rcx
	leaq	.LC5(%rip), %r13
	cmovne	%rcx, %r13
.L87:
	.loc 4 671 11 is_stmt 0 view .LVU316
	xorl	%edi, %edi
	leaq	.LC35(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL108:
.LBB207:
.LBB208:
	.loc 2 107 10 view .LVU317
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE208:
.LBE207:
	.loc 4 671 11 view .LVU318
	movq	%rax, %rsi
.LVL109:
.LBB210:
.LBI207:
	.loc 2 105 1 is_stmt 1 view .LVU319
.LBB209:
	.loc 2 107 3 view .LVU320
	.loc 2 107 10 is_stmt 0 view .LVU321
	xorl	%eax, %eax
.LVL110:
	.loc 2 107 10 view .LVU322
	call	__printf_chk@PLT
.LVL111:
	.loc 2 107 10 view .LVU323
.LBE209:
.LBE210:
	.loc 4 673 1 view .LVU324
	jmp	.L81
.LVL112:
.L85:
	.loc 4 655 3 is_stmt 1 view .LVU325
	.loc 4 655 11 is_stmt 0 view .LVU326
	call	dcgettext@PLT
.LVL113:
.LBB211:
.LBB197:
	.loc 2 107 10 view .LVU327
	leaq	.LC30(%rip), %rcx
	movl	$1, %edi
	leaq	.LC31(%rip), %rdx
.LBE197:
.LBE211:
	.loc 4 655 11 view .LVU328
	movq	%rax, %rsi
.LVL114:
.LBB212:
	.loc 2 105 1 is_stmt 1 view .LVU329
.LBB198:
	.loc 2 107 3 view .LVU330
	.loc 2 107 10 is_stmt 0 view .LVU331
	xorl	%eax, %eax
.LVL115:
	.loc 2 107 10 view .LVU332
	call	__printf_chk@PLT
.LVL116:
	.loc 2 107 10 view .LVU333
.LBE198:
.LBE212:
	.loc 4 659 3 is_stmt 1 view .LVU334
	.loc 4 659 29 is_stmt 0 view .LVU335
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL117:
	movq	%rax, %rdi
.LVL118:
	.loc 4 660 3 is_stmt 1 view .LVU336
	.loc 4 660 6 is_stmt 0 view .LVU337
	testq	%rax, %rax
	je	.L88
	.loc 4 660 22 view .LVU338
	movl	$3, %edx
	leaq	.LC32(%rip), %rsi
	call	strncmp@PLT
.LVL119:
	.loc 4 660 19 view .LVU339
	testl	%eax, %eax
	jne	.L107
.L88:
	.loc 4 669 3 is_stmt 1 view .LVU340
	.loc 4 669 11 is_stmt 0 view .LVU341
	movl	$5, %edx
	leaq	.LC34(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL120:
.LBB213:
.LBB203:
	.loc 2 107 10 view .LVU342
	leaq	.LC4(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	movl	$1, %edi
.LBE203:
.LBE213:
	.loc 4 669 11 view .LVU343
	movq	%rax, %rsi
.LVL121:
.LBB214:
	.loc 2 105 1 is_stmt 1 view .LVU344
.LBB204:
	.loc 2 107 3 view .LVU345
	.loc 2 107 10 is_stmt 0 view .LVU346
	xorl	%eax, %eax
.LVL122:
	.loc 2 107 10 view .LVU347
.LBE204:
.LBE214:
	.loc 4 646 15 view .LVU348
	leaq	.LC4(%rip), %r12
.LBB215:
.LBB205:
	.loc 2 107 10 view .LVU349
	call	__printf_chk@PLT
.LVL123:
	.loc 2 107 10 view .LVU350
.LBE205:
.LBE215:
	.loc 4 671 3 is_stmt 1 view .LVU351
	leaq	.LC5(%rip), %r13
	jmp	.L87
.L107:
	.loc 4 646 15 is_stmt 0 view .LVU352
	leaq	.LC4(%rip), %r13
	movq	%r13, %r12
.LVL124:
.L89:
	.loc 4 666 7 is_stmt 1 view .LVU353
	movq	stdout(%rip), %r14
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC33(%rip), %rsi
	call	dcgettext@PLT
.LVL125:
	movq	%rax, %rdi
	movq	%r14, %rsi
	call	fputs_unlocked@PLT
.LVL126:
	jmp	.L86
.LBE193:
.LBE192:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC36:
	.string	"/usr/local/share/locale"
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"invalid header numbering style: %s"
	.align 8
.LC38:
	.string	"invalid body numbering style: %s"
	.align 8
.LC39:
	.string	"invalid footer numbering style: %s"
	.section	.rodata.str1.1
.LC40:
	.string	"invalid starting line number"
.LC41:
	.string	"invalid line number increment"
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"invalid line number of blank lines"
	.align 8
.LC43:
	.string	"invalid line number field width"
	.section	.rodata.str1.1
.LC44:
	.string	"rn"
.LC45:
	.string	"rz"
	.section	.rodata.str1.8
	.align 8
.LC46:
	.string	"invalid line numbering format: %s"
	.section	.rodata.str1.1
.LC47:
	.string	"David MacKenzie"
.LC48:
	.string	"Scott Bartram"
.LC49:
	.string	"h:b:f:v:i:pl:s:w:n:d:"
.LC50:
	.string	"-"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL127:
.LFB146:
	.loc 1 474 1 view -0
	.cfi_startproc
	.loc 1 474 1 is_stmt 0 view .LVU355
	endbr64
	.loc 1 475 3 is_stmt 1 view .LVU356
	.loc 1 476 3 view .LVU357
	.loc 1 477 3 view .LVU358
.LVL128:
	.loc 1 479 33 view .LVU359
	.loc 1 480 3 view .LVU360
	.loc 1 474 1 is_stmt 0 view .LVU361
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	.loc 1 545 27 view .LVU362
	leaq	FORMAT_RIGHT_NOLZ(%rip), %r15
	.loc 1 474 1 view .LVU363
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 543 27 view .LVU364
	leaq	FORMAT_LEFT(%rip), %r14
	.loc 1 474 1 view .LVU365
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	.L115(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	.loc 1 477 8 view .LVU366
	movl	$1, %ebx
	.loc 1 474 1 view .LVU367
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 480 3 view .LVU368
	movq	(%rsi), %rdi
.LVL129:
	.loc 1 480 3 view .LVU369
	call	set_program_name@PLT
.LVL130:
	.loc 1 481 3 is_stmt 1 view .LVU370
	leaq	.LC6(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL131:
	.loc 1 482 3 view .LVU371
	leaq	.LC36(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	call	bindtextdomain@PLT
.LVL132:
	.loc 1 483 3 view .LVU372
	leaq	.LC22(%rip), %rdi
	call	textdomain@PLT
.LVL133:
	.loc 1 485 3 view .LVU373
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL134:
	.loc 1 487 3 view .LVU374
	.loc 1 487 19 is_stmt 0 view .LVU375
	movb	$0, have_read_stdin(%rip)
	.loc 1 489 3 is_stmt 1 view .LVU376
.LVL135:
.L131:
	.loc 1 489 9 view .LVU377
	.loc 1 489 15 is_stmt 0 view .LVU378
	xorl	%r8d, %r8d
	leaq	longopts(%rip), %rcx
	movq	%r12, %rsi
	movl	%r13d, %edi
	leaq	.LC49(%rip), %rdx
	call	getopt_long@PLT
.LVL136:
	.loc 1 489 9 view .LVU379
	cmpl	$-1, %eax
	je	.L145
	.loc 1 492 7 is_stmt 1 view .LVU380
	cmpl	$119, %eax
	jg	.L139
	cmpl	$97, %eax
	jle	.L146
	subl	$98, %eax
.LVL137:
	.loc 1 492 7 is_stmt 0 view .LVU381
	cmpl	$21, %eax
	ja	.L139
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L115:
	.long	.L125-.L115
	.long	.L139-.L115
	.long	.L124-.L115
	.long	.L139-.L115
	.long	.L123-.L115
	.long	.L139-.L115
	.long	.L122-.L115
	.long	.L121-.L115
	.long	.L139-.L115
	.long	.L139-.L115
	.long	.L120-.L115
	.long	.L139-.L115
	.long	.L119-.L115
	.long	.L139-.L115
	.long	.L118-.L115
	.long	.L139-.L115
	.long	.L139-.L115
	.long	.L117-.L115
	.long	.L139-.L115
	.long	.L139-.L115
	.long	.L116-.L115
	.long	.L114-.L115
	.section	.text.startup
.LVL138:
	.p2align 4,,10
	.p2align 3
.L149:
	.loc 1 492 7 view .LVU382
	cmpl	$-130, %eax
	je	.L113
.LVL139:
.L139:
	.loc 1 492 7 view .LVU383
	xorl	%ebx, %ebx
.LVL140:
	.loc 1 492 7 view .LVU384
	jmp	.L131
.LVL141:
.L114:
	.loc 1 538 11 is_stmt 1 view .LVU385
	.loc 1 539 38 is_stmt 0 view .LVU386
	movl	$5, %edx
	leaq	.LC43(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL142:
	.loc 1 538 26 view .LVU387
	movq	optarg(%rip), %rdi
	xorl	%r9d, %r9d
	leaq	.LC6(%rip), %rcx
	.loc 1 539 38 view .LVU388
	movq	%rax, %r8
	.loc 1 538 26 view .LVU389
	movl	$2147483647, %edx
	movl	$1, %esi
	call	xdectoimax@PLT
.LVL143:
	.loc 1 538 24 view .LVU390
	movl	%eax, lineno_width(%rip)
	.loc 1 540 11 is_stmt 1 view .LVU391
	jmp	.L131
.L116:
	.loc 1 519 11 view .LVU392
	.loc 1 520 46 is_stmt 0 view .LVU393
	movl	$5, %edx
	leaq	.LC40(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL144:
	.loc 1 519 34 view .LVU394
	movq	optarg(%rip), %rdi
	xorl	%r9d, %r9d
	leaq	.LC6(%rip), %rcx
	movabsq	$9223372036854775807, %rdx
	.loc 1 520 46 view .LVU395
	movq	%rax, %r8
	.loc 1 519 34 view .LVU396
	movabsq	$-9223372036854775808, %rsi
	call	xdectoimax@PLT
.LVL145:
	.loc 1 519 32 view .LVU397
	movq	%rax, starting_line_number(%rip)
	.loc 1 522 11 is_stmt 1 view .LVU398
	jmp	.L131
.L117:
	.loc 1 535 11 view .LVU399
	.loc 1 535 25 is_stmt 0 view .LVU400
	movq	optarg(%rip), %rax
	movq	%rax, separator_str(%rip)
	.loc 1 536 11 is_stmt 1 view .LVU401
	jmp	.L131
.L118:
	.loc 1 528 11 view .LVU402
	.loc 1 528 25 is_stmt 0 view .LVU403
	movb	$0, reset_numbers(%rip)
	.loc 1 529 11 is_stmt 1 view .LVU404
	jmp	.L131
.L119:
	.loc 1 542 11 view .LVU405
	.loc 1 542 15 is_stmt 0 view .LVU406
	movq	optarg(%rip), %rdi
	cmpb	$108, (%rdi)
	je	.L147
.L128:
	.loc 1 544 16 is_stmt 1 view .LVU407
	.loc 1 544 20 is_stmt 0 view .LVU408
	leaq	.LC44(%rip), %rsi
	movq	%rdi, 8(%rsp)
	call	strcmp@PLT
.LVL146:
	.loc 1 544 19 view .LVU409
	movq	8(%rsp), %rdi
	testl	%eax, %eax
	je	.L148
	.loc 1 546 16 is_stmt 1 view .LVU410
	.loc 1 546 20 is_stmt 0 view .LVU411
	leaq	.LC45(%rip), %rsi
	movq	%rdi, 8(%rsp)
	call	strcmp@PLT
.LVL147:
	.loc 1 546 19 view .LVU412
	movq	8(%rsp), %rdi
	testl	%eax, %eax
	jne	.L130
	.loc 1 547 13 is_stmt 1 view .LVU413
	.loc 1 547 27 is_stmt 0 view .LVU414
	leaq	FORMAT_RIGHT_LZ(%rip), %rax
	movq	%rax, lineno_format(%rip)
	jmp	.L131
.L120:
	.loc 1 531 11 is_stmt 1 view .LVU415
	.loc 1 532 36 is_stmt 0 view .LVU416
	movl	$5, %edx
	leaq	.LC42(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL148:
	.loc 1 531 24 view .LVU417
	movq	optarg(%rip), %rdi
	xorl	%r9d, %r9d
	leaq	.LC6(%rip), %rcx
	.loc 1 532 36 view .LVU418
	movq	%rax, %r8
	.loc 1 531 24 view .LVU419
	movl	$1, %esi
	movabsq	$9223372036854775807, %rdx
	call	xdectoimax@PLT
.LVL149:
	.loc 1 531 22 view .LVU420
	movq	%rax, blank_join(%rip)
	.loc 1 533 11 is_stmt 1 view .LVU421
	jmp	.L131
.L121:
	.loc 1 524 11 view .LVU422
	.loc 1 525 35 is_stmt 0 view .LVU423
	movl	$5, %edx
	leaq	.LC41(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL150:
	.loc 1 524 23 view .LVU424
	movq	optarg(%rip), %rdi
	xorl	%r9d, %r9d
	leaq	.LC6(%rip), %rcx
	movabsq	$9223372036854775807, %rdx
	.loc 1 525 35 view .LVU425
	movq	%rax, %r8
	.loc 1 524 23 view .LVU426
	movabsq	$-9223372036854775808, %rsi
	call	xdectoimax@PLT
.LVL151:
	.loc 1 524 21 view .LVU427
	movq	%rax, page_incr(%rip)
	.loc 1 526 11 is_stmt 1 view .LVU428
	jmp	.L131
.L122:
	.loc 1 495 11 view .LVU429
	.loc 1 495 17 is_stmt 0 view .LVU430
	leaq	header_fastmap(%rip), %rdx
	leaq	header_regex(%rip), %rsi
	leaq	header_type(%rip), %rdi
	call	build_type_arg
.LVL152:
	.loc 1 495 14 view .LVU431
	testb	%al, %al
	jne	.L131
	.loc 1 497 15 is_stmt 1 view .LVU432
	movq	optarg(%rip), %rdi
	call	quote@PLT
.LVL153:
	.loc 1 497 28 is_stmt 0 view .LVU433
	movl	$5, %edx
	leaq	.LC37(%rip), %rsi
	.loc 1 497 15 view .LVU434
	movq	%rax, %rbx
.LVL154:
	.loc 1 497 15 view .LVU435
	jmp	.L143
.LVL155:
.L123:
	.loc 1 511 11 is_stmt 1 view .LVU436
	.loc 1 511 17 is_stmt 0 view .LVU437
	leaq	footer_fastmap(%rip), %rdx
	leaq	footer_regex(%rip), %rsi
	leaq	footer_type(%rip), %rdi
	call	build_type_arg
.LVL156:
	.loc 1 511 14 view .LVU438
	testb	%al, %al
	jne	.L131
	.loc 1 513 15 is_stmt 1 view .LVU439
	movq	optarg(%rip), %rdi
	call	quote@PLT
.LVL157:
	.loc 1 513 28 is_stmt 0 view .LVU440
	movl	$5, %edx
	leaq	.LC39(%rip), %rsi
	.loc 1 513 15 view .LVU441
	movq	%rax, %rbx
.LVL158:
	.loc 1 513 15 view .LVU442
	jmp	.L143
.LVL159:
.L124:
	.loc 1 556 11 is_stmt 1 view .LVU443
	.loc 1 556 23 is_stmt 0 view .LVU444
	movq	optarg(%rip), %rax
	movq	%rax, section_del(%rip)
	.loc 1 557 11 is_stmt 1 view .LVU445
	jmp	.L131
.L125:
	.loc 1 503 11 view .LVU446
	.loc 1 503 17 is_stmt 0 view .LVU447
	leaq	body_fastmap(%rip), %rdx
	leaq	body_regex(%rip), %rsi
	leaq	body_type(%rip), %rdi
	call	build_type_arg
.LVL160:
	.loc 1 503 14 view .LVU448
	testb	%al, %al
	jne	.L131
	.loc 1 505 15 is_stmt 1 view .LVU449
	movq	optarg(%rip), %rdi
	call	quote@PLT
.LVL161:
	.loc 1 505 28 is_stmt 0 view .LVU450
	movl	$5, %edx
	leaq	.LC38(%rip), %rsi
	.loc 1 505 15 view .LVU451
	movq	%rax, %rbx
.LVL162:
.L143:
	.loc 1 550 28 view .LVU452
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL163:
	.loc 1 550 15 view .LVU453
	movq	%rbx, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 550 28 view .LVU454
	movq	%rax, %rdx
	.loc 1 550 15 view .LVU455
	xorl	%eax, %eax
	.loc 1 552 18 view .LVU456
	xorl	%ebx, %ebx
	.loc 1 550 15 view .LVU457
	call	error@PLT
.LVL164:
	.loc 1 552 15 is_stmt 1 view .LVU458
	.loc 1 552 15 is_stmt 0 view .LVU459
	jmp	.L131
.LVL165:
	.p2align 4,,10
	.p2align 3
.L146:
	.loc 1 492 7 view .LVU460
	cmpl	$-131, %eax
	jne	.L149
	.loc 1 558 9 is_stmt 1 view .LVU461
	.loc 1 558 30 view .LVU462
	.loc 1 559 9 view .LVU463
	subq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 88
	movq	stdout(%rip), %rdi
	xorl	%eax, %eax
.LVL166:
	.loc 1 559 9 is_stmt 0 view .LVU464
	movq	Version(%rip), %rcx
	pushq	$0
	.cfi_def_cfa_offset 96
	leaq	.LC47(%rip), %r9
	leaq	.LC48(%rip), %r8
	leaq	.LC31(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	call	version_etc@PLT
.LVL167:
	.loc 1 559 9 is_stmt 1 view .LVU465
	xorl	%edi, %edi
	call	exit@PLT
.LVL168:
.L147:
	.cfi_restore_state
	.loc 1 542 15 is_stmt 0 view .LVU466
	cmpb	$110, 1(%rdi)
	jne	.L128
	.loc 1 542 14 view .LVU467
	cmpb	$0, 2(%rdi)
	jne	.L128
	.loc 1 543 13 is_stmt 1 view .LVU468
	.loc 1 543 27 is_stmt 0 view .LVU469
	movq	%r14, lineno_format(%rip)
	jmp	.L131
.LVL169:
.L145:
	.loc 1 566 3 is_stmt 1 view .LVU470
	.loc 1 566 6 is_stmt 0 view .LVU471
	testb	%bl, %bl
	je	.L150
	.loc 1 570 3 is_stmt 1 view .LVU472
	.loc 1 570 9 is_stmt 0 view .LVU473
	orq	$-1, %rdx
	xorl	%r8d, %r8d
	movq	section_del(%rip), %rdi
	movq	%rdx, %rcx
	movl	%r8d, %eax
.LVL170:
	.loc 1 570 9 view .LVU474
	repnz scasb
	notq	%rcx
	leaq	-1(%rcx), %r15
.LVL171:
	.loc 1 572 3 is_stmt 1 view .LVU475
	.loc 1 570 9 is_stmt 0 view .LVU476
	movq	%rcx, %r14
	.loc 1 572 24 view .LVU477
	leaq	(%r15,%r15,2), %rdi
	.loc 1 572 18 view .LVU478
	movq	%rdi, header_del_len(%rip)
	.loc 1 573 3 is_stmt 1 view .LVU479
	.loc 1 573 16 is_stmt 0 view .LVU480
	addq	$1, %rdi
	call	xmalloc@PLT
.LVL172:
	.loc 1 574 3 view .LVU481
	movq	section_del(%rip), %rbp
	.loc 1 573 16 view .LVU482
	movq	%rax, %rdi
	.loc 1 573 14 view .LVU483
	movq	%rax, header_del(%rip)
	.loc 1 574 3 is_stmt 1 view .LVU484
.LVL173:
.LBB216:
.LBI216:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 5 95 1 view .LVU485
.LBB217:
	.loc 5 97 3 view .LVU486
	.loc 5 97 10 is_stmt 0 view .LVU487
	movq	%rbp, %rsi
	call	stpcpy@PLT
.LVL174:
	.loc 5 97 10 view .LVU488
.LBE217:
.LBE216:
.LBB219:
.LBB220:
	movq	%rbp, %rsi
.LBE220:
.LBE219:
.LBB223:
.LBB218:
	movq	%rax, %rdi
.LVL175:
	.loc 5 97 10 view .LVU489
.LBE218:
.LBE223:
.LBB224:
.LBI219:
	.loc 5 95 1 is_stmt 1 view .LVU490
.LBB221:
	.loc 5 97 3 view .LVU491
	.loc 5 97 10 is_stmt 0 view .LVU492
	call	stpcpy@PLT
.LVL176:
	.loc 5 97 10 view .LVU493
.LBE221:
.LBE224:
.LBB225:
.LBB226:
	movq	%rbp, %rsi
.LBE226:
.LBE225:
.LBB228:
.LBB222:
	movq	%rax, %rdi
.LVL177:
	.loc 5 97 10 view .LVU494
.LBE222:
.LBE228:
.LBB229:
.LBI225:
	.loc 5 95 1 is_stmt 1 view .LVU495
.LBB227:
	.loc 5 97 3 view .LVU496
	.loc 5 97 10 is_stmt 0 view .LVU497
	call	strcpy@PLT
.LVL178:
	.loc 5 97 10 view .LVU498
.LBE227:
.LBE229:
	.loc 1 576 3 is_stmt 1 view .LVU499
	.loc 1 576 22 is_stmt 0 view .LVU500
	leaq	(%r15,%r15), %rdi
	.loc 1 576 16 view .LVU501
	movq	%rdi, body_del_len(%rip)
	.loc 1 577 3 is_stmt 1 view .LVU502
	.loc 1 577 14 is_stmt 0 view .LVU503
	addq	$1, %rdi
	call	xmalloc@PLT
.LVL179:
	.loc 1 578 3 view .LVU504
	movq	section_del(%rip), %rsi
	.loc 1 577 14 view .LVU505
	movq	%rax, %rdi
	.loc 1 577 12 view .LVU506
	movq	%rax, body_del(%rip)
	.loc 1 578 3 is_stmt 1 view .LVU507
.LVL180:
.LBB230:
.LBI230:
	.loc 5 95 1 view .LVU508
.LBB231:
	.loc 5 97 3 view .LVU509
	.loc 5 97 10 is_stmt 0 view .LVU510
	movq	%rsi, 8(%rsp)
	call	stpcpy@PLT
.LVL181:
	.loc 5 97 10 view .LVU511
.LBE231:
.LBE230:
.LBB233:
.LBB234:
	movq	8(%rsp), %rsi
.LBE234:
.LBE233:
.LBB236:
.LBB232:
	movq	%rax, %rdi
.LVL182:
	.loc 5 97 10 view .LVU512
.LBE232:
.LBE236:
.LBB237:
.LBI233:
	.loc 5 95 1 is_stmt 1 view .LVU513
.LBB235:
	.loc 5 97 3 view .LVU514
	.loc 5 97 10 is_stmt 0 view .LVU515
	call	strcpy@PLT
.LVL183:
	.loc 5 97 10 view .LVU516
.LBE235:
.LBE237:
	.loc 1 580 3 is_stmt 1 view .LVU517
	.loc 1 581 16 is_stmt 0 view .LVU518
	movq	%r14, %rdi
	.loc 1 580 18 view .LVU519
	movq	%r15, footer_del_len(%rip)
	.loc 1 581 3 is_stmt 1 view .LVU520
	.loc 1 581 16 is_stmt 0 view .LVU521
	call	xmalloc@PLT
.LVL184:
.LBB238:
.LBB239:
	.loc 5 97 10 view .LVU522
	movq	section_del(%rip), %rsi
.LBE239:
.LBE238:
	.loc 1 581 16 view .LVU523
	movq	%rax, %rdi
	.loc 1 581 14 view .LVU524
	movq	%rax, footer_del(%rip)
	.loc 1 582 3 is_stmt 1 view .LVU525
.LVL185:
.LBB241:
.LBI238:
	.loc 5 95 1 view .LVU526
.LBB240:
	.loc 5 97 3 view .LVU527
	.loc 5 97 10 is_stmt 0 view .LVU528
	call	strcpy@PLT
.LVL186:
	.loc 5 97 10 view .LVU529
.LBE240:
.LBE241:
	.loc 1 585 3 is_stmt 1 view .LVU530
	leaq	line_buf(%rip), %rdi
	call	initbuffer@PLT
.LVL187:
	.loc 1 588 3 view .LVU531
	.loc 1 588 9 is_stmt 0 view .LVU532
	movq	separator_str(%rip), %rdi
	orq	$-1, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movq	%rdx, %rcx
	repnz scasb
	.loc 1 589 45 view .LVU533
	movslq	lineno_width(%rip), %rax
	.loc 1 588 9 view .LVU534
	notq	%rcx
	.loc 1 589 23 view .LVU535
	leaq	(%rcx,%rax), %rdi
	.loc 1 588 9 view .LVU536
	leaq	-1(%rcx), %rbp
.LVL188:
	.loc 1 589 3 is_stmt 1 view .LVU537
	.loc 1 589 23 is_stmt 0 view .LVU538
	call	xmalloc@PLT
.LVL189:
.LBB242:
.LBB243:
	.loc 5 71 10 view .LVU539
	movl	$32, %esi
.LBE243:
.LBE242:
	.loc 1 589 23 view .LVU540
	movq	%rax, %rcx
	.loc 1 589 21 view .LVU541
	movq	%rax, print_no_line_fmt(%rip)
	.loc 1 590 3 is_stmt 1 view .LVU542
	movslq	lineno_width(%rip), %rax
.LBB246:
.LBB244:
	.loc 5 71 10 is_stmt 0 view .LVU543
	movq	%rcx, %rdi
.LBE244:
.LBE246:
	.loc 1 590 3 view .LVU544
	addq	%rax, %rbp
.LVL190:
.LBB247:
.LBI242:
	.loc 5 59 1 is_stmt 1 view .LVU545
.LBB245:
	.loc 5 71 3 view .LVU546
	.loc 5 71 10 is_stmt 0 view .LVU547
	movq	%rbp, %rdx
	call	memset@PLT
.LVL191:
	.loc 5 71 10 view .LVU548
.LBE245:
.LBE247:
	.loc 1 591 3 is_stmt 1 view .LVU549
	.loc 1 591 41 is_stmt 0 view .LVU550
	movb	$0, (%rax,%rbp)
	.loc 1 593 3 is_stmt 1 view .LVU551
	.loc 1 593 11 is_stmt 0 view .LVU552
	movq	starting_line_number(%rip), %rax
	movq	%rax, line_no(%rip)
	.loc 1 594 3 is_stmt 1 view .LVU553
	.loc 1 594 16 is_stmt 0 view .LVU554
	movq	body_type(%rip), %rax
	movq	%rax, current_type(%rip)
	.loc 1 595 3 is_stmt 1 view .LVU555
	.loc 1 595 17 is_stmt 0 view .LVU556
	leaq	body_regex(%rip), %rax
	movq	%rax, current_regex(%rip)
	.loc 1 599 3 is_stmt 1 view .LVU557
	.loc 1 599 14 is_stmt 0 view .LVU558
	movl	optind(%rip), %eax
	.loc 1 599 6 view .LVU559
	cmpl	%r13d, %eax
	je	.L134
	.loc 1 602 5 discriminator 2 view .LVU560
	jge	.L136
	.p2align 4,,10
	.p2align 3
.L135:
	.loc 1 603 7 is_stmt 1 discriminator 2 view .LVU561
	.loc 1 603 26 is_stmt 0 discriminator 2 view .LVU562
	cltq
	.loc 1 603 13 discriminator 2 view .LVU563
	movq	(%r12,%rax,8), %rdi
	call	nl_file
.LVL192:
	andl	%eax, %ebx
.LVL193:
	.loc 1 602 27 is_stmt 1 discriminator 2 view .LVU564
	.loc 1 602 33 is_stmt 0 discriminator 2 view .LVU565
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
	.loc 1 602 12 is_stmt 1 discriminator 2 view .LVU566
	.loc 1 602 5 is_stmt 0 discriminator 2 view .LVU567
	cmpl	%r13d, %eax
	jl	.L135
.L136:
	.loc 1 605 3 is_stmt 1 view .LVU568
	.loc 1 605 6 is_stmt 0 view .LVU569
	cmpb	$0, have_read_stdin(%rip)
	jne	.L151
.L137:
	.loc 1 608 3 is_stmt 1 view .LVU570
	.loc 1 609 1 is_stmt 0 view .LVU571
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	.loc 1 608 28 view .LVU572
	xorl	$1, %ebx
.LVL194:
	.loc 1 608 28 view .LVU573
	movzbl	%bl, %eax
	.loc 1 609 1 view .LVU574
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL195:
	.loc 1 609 1 view .LVU575
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL196:
	.loc 1 609 1 view .LVU576
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL197:
.L148:
	.cfi_restore_state
	.loc 1 545 13 is_stmt 1 view .LVU577
	.loc 1 545 27 is_stmt 0 view .LVU578
	movq	%r15, lineno_format(%rip)
	jmp	.L131
.L151:
	.loc 1 605 26 discriminator 1 view .LVU579
	movq	stdin(%rip), %rdi
	call	rpl_fclose@PLT
.LVL198:
	.loc 1 605 23 discriminator 1 view .LVU580
	addl	$1, %eax
	jne	.L137
.LBB248:
	.loc 1 606 5 is_stmt 1 view .LVU581
	call	__errno_location@PLT
.LVL199:
	leaq	.LC50(%rip), %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL200:
.L130:
	.loc 1 606 5 is_stmt 0 view .LVU582
.LBE248:
	.loc 1 550 15 is_stmt 1 view .LVU583
	call	quote@PLT
.LVL201:
	.loc 1 550 28 is_stmt 0 view .LVU584
	movl	$5, %edx
	leaq	.LC46(%rip), %rsi
	.loc 1 550 15 view .LVU585
	movq	%rax, %rbx
.LVL202:
	.loc 1 550 15 view .LVU586
	jmp	.L143
.LVL203:
.L113:
	.loc 1 558 9 is_stmt 1 view .LVU587
	xorl	%edi, %edi
	call	usage
.LVL204:
.L134:
	.loc 1 600 5 view .LVU588
	.loc 1 600 10 is_stmt 0 view .LVU589
	leaq	.LC50(%rip), %rdi
	call	nl_file
.LVL205:
	movl	%eax, %ebx
.LVL206:
	.loc 1 600 10 view .LVU590
	jmp	.L136
.LVL207:
.L150:
	.loc 1 567 5 is_stmt 1 view .LVU591
	movl	$1, %edi
	call	usage
.LVL208:
	.loc 1 567 5 is_stmt 0 view .LVU592
	.cfi_endproc
.LFE146:
	.size	main, .-main
	.local	blank_lines.7320
	.comm	blank_lines.7320,8,8
	.section	.rodata.str1.1
.LC51:
	.string	"header-numbering"
.LC52:
	.string	"body-numbering"
.LC53:
	.string	"footer-numbering"
.LC54:
	.string	"starting-line-number"
.LC55:
	.string	"line-increment"
.LC56:
	.string	"no-renumber"
.LC57:
	.string	"join-blank-lines"
.LC58:
	.string	"number-separator"
.LC59:
	.string	"number-width"
.LC60:
	.string	"number-format"
.LC61:
	.string	"section-delimiter"
.LC62:
	.string	"help"
.LC63:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 448
longopts:
	.quad	.LC51
	.long	1
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC52
	.long	1
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC53
	.long	1
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC54
	.long	1
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC55
	.long	1
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC56
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC57
	.long	1
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC58
	.long	1
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC59
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC60
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC61
	.long	1
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC62
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC63
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
	.local	line_no_overflow
	.comm	line_no_overflow,1,1
	.local	line_no
	.comm	line_no,8,8
	.section	.data.rel.local,"aw"
	.align 8
	.type	lineno_format, @object
	.size	lineno_format, 8
lineno_format:
	.quad	FORMAT_RIGHT_NOLZ
	.data
	.align 4
	.type	lineno_width, @object
	.size	lineno_width, 4
lineno_width:
	.long	6
	.align 8
	.type	blank_join, @object
	.size	blank_join, 8
blank_join:
	.quad	1
	.type	reset_numbers, @object
	.size	reset_numbers, 1
reset_numbers:
	.byte	1
	.align 8
	.type	page_incr, @object
	.size	page_incr, 8
page_incr:
	.quad	1
	.align 8
	.type	starting_line_number, @object
	.size	starting_line_number, 8
starting_line_number:
	.quad	1
	.local	print_no_line_fmt
	.comm	print_no_line_fmt,8,8
	.local	line_buf
	.comm	line_buf,24,16
	.local	footer_del_len
	.comm	footer_del_len,8,8
	.local	footer_del
	.comm	footer_del,8,8
	.local	body_del_len
	.comm	body_del_len,8,8
	.local	body_del
	.comm	body_del,8,8
	.local	header_del_len
	.comm	header_del_len,8,8
	.local	header_del
	.comm	header_del,8,8
	.section	.data.rel.local
	.align 8
	.type	section_del, @object
	.size	section_del, 8
section_del:
	.quad	DEFAULT_SECTION_DELIMITERS
	.section	.rodata.str1.1
.LC64:
	.string	"\t"
	.section	.data.rel.local
	.align 8
	.type	separator_str, @object
	.size	separator_str, 8
separator_str:
	.quad	.LC64
	.local	current_regex
	.comm	current_regex,8,8
	.local	footer_fastmap
	.comm	footer_fastmap,256,32
	.local	header_fastmap
	.comm	header_fastmap,256,32
	.local	body_fastmap
	.comm	body_fastmap,256,32
	.local	footer_regex
	.comm	footer_regex,64,32
	.local	header_regex
	.comm	header_regex,64,32
	.local	body_regex
	.comm	body_regex,64,32
	.local	current_type
	.comm	current_type,8,8
	.section	.rodata.str1.1
.LC65:
	.string	"n"
	.section	.data.rel.local
	.align 8
	.type	footer_type, @object
	.size	footer_type, 8
footer_type:
	.quad	.LC65
	.align 8
	.type	header_type, @object
	.size	header_type, 8
header_type:
	.quad	.LC65
	.section	.rodata.str1.1
.LC66:
	.string	"t"
	.section	.data.rel.local
	.align 8
	.type	body_type, @object
	.size	body_type, 8
body_type:
	.quad	.LC66
	.section	.rodata
	.type	DEFAULT_SECTION_DELIMITERS, @object
	.size	DEFAULT_SECTION_DELIMITERS, 3
DEFAULT_SECTION_DELIMITERS:
	.string	"\\:"
	.align 8
	.type	FORMAT_LEFT, @object
	.size	FORMAT_LEFT, 8
FORMAT_LEFT:
	.string	"%-*ld%s"
	.align 8
	.type	FORMAT_RIGHT_LZ, @object
	.size	FORMAT_RIGHT_LZ, 8
FORMAT_RIGHT_LZ:
	.string	"%0*ld%s"
	.type	FORMAT_RIGHT_NOLZ, @object
	.size	FORMAT_RIGHT_NOLZ, 7
FORMAT_RIGHT_NOLZ:
	.string	"%*ld%s"
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
	.file 27 "./lib/regex.h"
	.file 28 "./lib/error.h"
	.file 29 "./lib/fadvise.h"
	.file 30 "./lib/linebuffer.h"
	.file 31 "./lib/quote.h"
	.file 32 "<built-in>"
	.file 33 "/usr/include/locale.h"
	.file 34 "/usr/include/libintl.h"
	.file 35 "/usr/include/stdlib.h"
	.file 36 "./lib/xdectoint.h"
	.file 37 "/usr/include/string.h"
	.file 38 "./lib/xalloc.h"
	.file 39 "./lib/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2423
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF258
	.byte	0xc
	.long	.LASF259
	.long	.LASF260
	.long	.Ldebug_ranges0+0x4e0
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
	.byte	0x48
	.byte	0x12
	.long	0x6d
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
	.long	0xaf
	.uleb128 0x8
	.long	0xa4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x9
	.long	0xaf
	.uleb128 0xa
	.long	.LASF62
	.byte	0xd8
	.byte	0x8
	.byte	0x31
	.byte	0x8
	.long	0x242
	.uleb128 0xb
	.long	.LASF13
	.byte	0x8
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xb
	.long	.LASF14
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.long	0xa4
	.byte	0x8
	.uleb128 0xb
	.long	.LASF15
	.byte	0x8
	.byte	0x37
	.byte	0x9
	.long	0xa4
	.byte	0x10
	.uleb128 0xb
	.long	.LASF16
	.byte	0x8
	.byte	0x38
	.byte	0x9
	.long	0xa4
	.byte	0x18
	.uleb128 0xb
	.long	.LASF17
	.byte	0x8
	.byte	0x39
	.byte	0x9
	.long	0xa4
	.byte	0x20
	.uleb128 0xb
	.long	.LASF18
	.byte	0x8
	.byte	0x3a
	.byte	0x9
	.long	0xa4
	.byte	0x28
	.uleb128 0xb
	.long	.LASF19
	.byte	0x8
	.byte	0x3b
	.byte	0x9
	.long	0xa4
	.byte	0x30
	.uleb128 0xb
	.long	.LASF20
	.byte	0x8
	.byte	0x3c
	.byte	0x9
	.long	0xa4
	.byte	0x38
	.uleb128 0xb
	.long	.LASF21
	.byte	0x8
	.byte	0x3d
	.byte	0x9
	.long	0xa4
	.byte	0x40
	.uleb128 0xb
	.long	.LASF22
	.byte	0x8
	.byte	0x40
	.byte	0x9
	.long	0xa4
	.byte	0x48
	.uleb128 0xb
	.long	.LASF23
	.byte	0x8
	.byte	0x41
	.byte	0x9
	.long	0xa4
	.byte	0x50
	.uleb128 0xb
	.long	.LASF24
	.byte	0x8
	.byte	0x42
	.byte	0x9
	.long	0xa4
	.byte	0x58
	.uleb128 0xb
	.long	.LASF25
	.byte	0x8
	.byte	0x44
	.byte	0x16
	.long	0x25b
	.byte	0x60
	.uleb128 0xb
	.long	.LASF26
	.byte	0x8
	.byte	0x46
	.byte	0x14
	.long	0x261
	.byte	0x68
	.uleb128 0xb
	.long	.LASF27
	.byte	0x8
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xb
	.long	.LASF28
	.byte	0x8
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xb
	.long	.LASF29
	.byte	0x8
	.byte	0x4a
	.byte	0xb
	.long	0x80
	.byte	0x78
	.uleb128 0xb
	.long	.LASF30
	.byte	0x8
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xb
	.long	.LASF31
	.byte	0x8
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xb
	.long	.LASF32
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.long	0x267
	.byte	0x83
	.uleb128 0xb
	.long	.LASF33
	.byte	0x8
	.byte	0x51
	.byte	0xf
	.long	0x277
	.byte	0x88
	.uleb128 0xb
	.long	.LASF34
	.byte	0x8
	.byte	0x59
	.byte	0xd
	.long	0x8c
	.byte	0x90
	.uleb128 0xb
	.long	.LASF35
	.byte	0x8
	.byte	0x5b
	.byte	0x17
	.long	0x282
	.byte	0x98
	.uleb128 0xb
	.long	.LASF36
	.byte	0x8
	.byte	0x5c
	.byte	0x19
	.long	0x28d
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x8
	.byte	0x5d
	.byte	0x14
	.long	0x261
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x8
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x8
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF40
	.byte	0x8
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.long	0x293
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x9
	.byte	0x7
	.byte	0x19
	.long	0xbb
	.uleb128 0xc
	.long	.LASF261
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.uleb128 0xd
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x256
	.uleb128 0x7
	.byte	0x8
	.long	0xbb
	.uleb128 0xe
	.long	0xaf
	.long	0x277
	.uleb128 0xf
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x24e
	.uleb128 0xd
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x27d
	.uleb128 0xd
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x288
	.uleb128 0xe
	.long	0xaf
	.long	0x2a3
	.uleb128 0xf
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb6
	.uleb128 0x9
	.long	0x2a3
	.uleb128 0x8
	.long	0x2a3
	.uleb128 0x10
	.long	.LASF46
	.byte	0xa
	.byte	0x89
	.byte	0xe
	.long	0x2bf
	.uleb128 0x7
	.byte	0x8
	.long	0x242
	.uleb128 0x8
	.long	0x2bf
	.uleb128 0x10
	.long	.LASF47
	.byte	0xa
	.byte	0x8a
	.byte	0xe
	.long	0x2bf
	.uleb128 0x10
	.long	.LASF48
	.byte	0xa
	.byte	0x8b
	.byte	0xe
	.long	0x2bf
	.uleb128 0x10
	.long	.LASF49
	.byte	0xb
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xe
	.long	0x2a9
	.long	0x2f9
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x2ee
	.uleb128 0x10
	.long	.LASF50
	.byte	0xb
	.byte	0x1b
	.byte	0x1a
	.long	0x2f9
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
	.long	0x2f9
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
	.uleb128 0xa
	.long	.LASF63
	.byte	0x20
	.byte	0xf
	.byte	0x32
	.byte	0x8
	.long	0x3c2
	.uleb128 0xb
	.long	.LASF64
	.byte	0xf
	.byte	0x34
	.byte	0xf
	.long	0x2a3
	.byte	0
	.uleb128 0xb
	.long	.LASF65
	.byte	0xf
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xb
	.long	.LASF66
	.byte	0xf
	.byte	0x38
	.byte	0x8
	.long	0x3c7
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0xf
	.byte	0x39
	.byte	0x7
	.long	0x61
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.long	0x380
	.uleb128 0x7
	.byte	0x8
	.long	0x61
	.uleb128 0xe
	.long	0xa4
	.long	0x3dd
	.uleb128 0xf
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x3cd
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
	.long	0x3cd
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
	.long	0x432
	.uleb128 0xe
	.long	0x2a9
	.long	0x449
	.uleb128 0xf
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.long	0x439
	.uleb128 0x12
	.long	.LASF74
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x449
	.uleb128 0x12
	.long	.LASF75
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x449
	.uleb128 0x12
	.long	.LASF76
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x475
	.uleb128 0x7
	.byte	0x8
	.long	0xa4
	.uleb128 0x12
	.long	.LASF77
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x475
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
	.long	0x2a3
	.uleb128 0x10
	.long	.LASF81
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0xe
	.long	0xaf
	.long	0x4c8
	.uleb128 0xf
	.long	0x35
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x16
	.byte	0x65
	.byte	0x15
	.long	0x74
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x17
	.byte	0x29
	.byte	0x6
	.long	0x4ec
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
	.long	0x501
	.uleb128 0x17
	.long	.LASF84
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x61
	.byte	0x4
	.value	0x147
	.byte	0x1
	.long	0x51f
	.uleb128 0x19
	.long	.LASF85
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF86
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0xb6
	.long	0x52a
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x51f
	.uleb128 0x10
	.long	.LASF87
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x52a
	.uleb128 0x10
	.long	.LASF88
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0x2a3
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x59c
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
	.uleb128 0x9
	.long	0x547
	.uleb128 0x12
	.long	.LASF100
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x2f9
	.uleb128 0xe
	.long	0x59c
	.long	0x5b9
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x5ae
	.uleb128 0x12
	.long	.LASF101
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x5b9
	.uleb128 0x2
	.long	.LASF102
	.byte	0x1b
	.byte	0x31
	.byte	0x10
	.long	0x29
	.uleb128 0x2
	.long	.LASF103
	.byte	0x1b
	.byte	0x48
	.byte	0x1b
	.long	0x35
	.uleb128 0x10
	.long	.LASF104
	.byte	0x1b
	.byte	0xd3
	.byte	0x15
	.long	0x5d7
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x40
	.byte	0x1b
	.value	0x19d
	.byte	0x8
	.long	0x6d7
	.uleb128 0x1c
	.long	.LASF106
	.byte	0x1b
	.value	0x1a1
	.byte	0x14
	.long	0x6dc
	.byte	0
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1b
	.value	0x1a4
	.byte	0x14
	.long	0x5cb
	.byte	0x8
	.uleb128 0x1c
	.long	.LASF108
	.byte	0x1b
	.value	0x1a7
	.byte	0x14
	.long	0x5cb
	.byte	0x10
	.uleb128 0x1c
	.long	.LASF109
	.byte	0x1b
	.value	0x1aa
	.byte	0x10
	.long	0x5d7
	.byte	0x18
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x1b
	.value	0x1af
	.byte	0x9
	.long	0xa4
	.byte	0x20
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x1b
	.value	0x1b5
	.byte	0x17
	.long	0x6e2
	.byte	0x28
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1b
	.value	0x1b8
	.byte	0xa
	.long	0x29
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF113
	.byte	0x1b
	.value	0x1be
	.byte	0xc
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF114
	.byte	0x1b
	.value	0x1c9
	.byte	0xc
	.long	0x3c
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF115
	.byte	0x1b
	.value	0x1cd
	.byte	0xc
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1b
	.value	0x1d1
	.byte	0xc
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF117
	.byte	0x1b
	.value	0x1d5
	.byte	0xc
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF118
	.byte	0x1b
	.value	0x1d8
	.byte	0xc
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF119
	.byte	0x1b
	.value	0x1db
	.byte	0xc
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x38
	.byte	0
	.uleb128 0xd
	.long	.LASF120
	.uleb128 0x7
	.byte	0x8
	.long	0x6d7
	.uleb128 0x7
	.byte	0x8
	.long	0x45
	.uleb128 0x10
	.long	.LASF121
	.byte	0x1c
	.byte	0x32
	.byte	0xf
	.long	0x433
	.uleb128 0x10
	.long	.LASF122
	.byte	0x1c
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF123
	.byte	0x1c
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1d
	.byte	0x2d
	.byte	0xe
	.long	0x73f
	.uleb128 0x17
	.long	.LASF124
	.byte	0
	.uleb128 0x17
	.long	.LASF125
	.byte	0x2
	.uleb128 0x17
	.long	.LASF126
	.byte	0x5
	.uleb128 0x17
	.long	.LASF127
	.byte	0x4
	.uleb128 0x17
	.long	.LASF128
	.byte	0x3
	.uleb128 0x17
	.long	.LASF129
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF130
	.byte	0x18
	.byte	0x1e
	.byte	0x1a
	.byte	0x8
	.long	0x774
	.uleb128 0xb
	.long	.LASF131
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.long	0x29
	.byte	0
	.uleb128 0xb
	.long	.LASF132
	.byte	0x1e
	.byte	0x1d
	.byte	0xa
	.long	0x29
	.byte	0x8
	.uleb128 0xb
	.long	.LASF106
	.byte	0x1e
	.byte	0x1e
	.byte	0x9
	.long	0xa4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	.LASF133
	.uleb128 0x10
	.long	.LASF134
	.byte	0x1f
	.byte	0x19
	.byte	0x1f
	.long	0x774
	.uleb128 0xe
	.long	0xb6
	.long	0x795
	.uleb128 0xf
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x785
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.long	0x795
	.uleb128 0x9
	.byte	0x3
	.quad	FORMAT_RIGHT_NOLZ
	.uleb128 0xe
	.long	0xb6
	.long	0x7c0
	.uleb128 0xf
	.long	0x35
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x7b0
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x1
	.byte	0x33
	.byte	0x13
	.long	0x7c0
	.uleb128 0x9
	.byte	0x3
	.quad	FORMAT_RIGHT_LZ
	.uleb128 0x1e
	.long	.LASF137
	.byte	0x1
	.byte	0x36
	.byte	0x13
	.long	0x7c0
	.uleb128 0x9
	.byte	0x3
	.quad	FORMAT_LEFT
	.uleb128 0xe
	.long	0xb6
	.long	0x801
	.uleb128 0xf
	.long	0x35
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0x7f1
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x1
	.byte	0x39
	.byte	0x13
	.long	0x801
	.uleb128 0x9
	.byte	0x3
	.quad	DEFAULT_SECTION_DELIMITERS
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.long	0x847
	.uleb128 0x17
	.long	.LASF141
	.byte	0
	.uleb128 0x17
	.long	.LASF142
	.byte	0x1
	.uleb128 0x17
	.long	.LASF143
	.byte	0x2
	.uleb128 0x17
	.long	.LASF144
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.long	.LASF145
	.byte	0x1
	.byte	0x43
	.byte	0x14
	.long	0x2a3
	.uleb128 0x9
	.byte	0x3
	.quad	body_type
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x1
	.byte	0x46
	.byte	0x14
	.long	0x2a3
	.uleb128 0x9
	.byte	0x3
	.quad	header_type
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x1
	.byte	0x49
	.byte	0x14
	.long	0x2a3
	.uleb128 0x9
	.byte	0x3
	.quad	footer_type
	.uleb128 0x1e
	.long	.LASF148
	.byte	0x1
	.byte	0x4c
	.byte	0x14
	.long	0x2a3
	.uleb128 0x9
	.byte	0x3
	.quad	current_type
	.uleb128 0x1e
	.long	.LASF149
	.byte	0x1
	.byte	0x4f
	.byte	0x21
	.long	0x5ef
	.uleb128 0x9
	.byte	0x3
	.quad	body_regex
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x1
	.byte	0x52
	.byte	0x21
	.long	0x5ef
	.uleb128 0x9
	.byte	0x3
	.quad	header_regex
	.uleb128 0x1e
	.long	.LASF151
	.byte	0x1
	.byte	0x55
	.byte	0x21
	.long	0x5ef
	.uleb128 0x9
	.byte	0x3
	.quad	footer_regex
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x1
	.byte	0x58
	.byte	0xd
	.long	0x4b8
	.uleb128 0x9
	.byte	0x3
	.quad	body_fastmap
	.uleb128 0x1e
	.long	.LASF153
	.byte	0x1
	.byte	0x59
	.byte	0xd
	.long	0x4b8
	.uleb128 0x9
	.byte	0x3
	.quad	header_fastmap
	.uleb128 0x1e
	.long	.LASF154
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.long	0x4b8
	.uleb128 0x9
	.byte	0x3
	.quad	footer_fastmap
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x1
	.byte	0x5d
	.byte	0x22
	.long	0x939
	.uleb128 0x9
	.byte	0x3
	.quad	current_regex
	.uleb128 0x7
	.byte	0x8
	.long	0x5ef
	.uleb128 0x1e
	.long	.LASF156
	.byte	0x1
	.byte	0x60
	.byte	0x14
	.long	0x2a3
	.uleb128 0x9
	.byte	0x3
	.quad	separator_str
	.uleb128 0x1e
	.long	.LASF157
	.byte	0x1
	.byte	0x63
	.byte	0x14
	.long	0x2a3
	.uleb128 0x9
	.byte	0x3
	.quad	section_del
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.long	0xa4
	.uleb128 0x9
	.byte	0x3
	.quad	header_del
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x1
	.byte	0x69
	.byte	0xf
	.long	0x29
	.uleb128 0x9
	.byte	0x3
	.quad	header_del_len
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x1
	.byte	0x6c
	.byte	0xe
	.long	0xa4
	.uleb128 0x9
	.byte	0x3
	.quad	body_del
	.uleb128 0x1e
	.long	.LASF161
	.byte	0x1
	.byte	0x6f
	.byte	0xf
	.long	0x29
	.uleb128 0x9
	.byte	0x3
	.quad	body_del_len
	.uleb128 0x1e
	.long	.LASF162
	.byte	0x1
	.byte	0x72
	.byte	0xe
	.long	0xa4
	.uleb128 0x9
	.byte	0x3
	.quad	footer_del
	.uleb128 0x1e
	.long	.LASF163
	.byte	0x1
	.byte	0x75
	.byte	0xf
	.long	0x29
	.uleb128 0x9
	.byte	0x3
	.quad	footer_del_len
	.uleb128 0x1e
	.long	.LASF164
	.byte	0x1
	.byte	0x78
	.byte	0x1a
	.long	0x73f
	.uleb128 0x9
	.byte	0x3
	.quad	line_buf
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x1
	.byte	0x7b
	.byte	0xe
	.long	0xa4
	.uleb128 0x9
	.byte	0x3
	.quad	print_no_line_fmt
	.uleb128 0x1e
	.long	.LASF166
	.byte	0x1
	.byte	0x7e
	.byte	0x11
	.long	0x4c8
	.uleb128 0x9
	.byte	0x3
	.quad	starting_line_number
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x1
	.byte	0x81
	.byte	0x11
	.long	0x4c8
	.uleb128 0x9
	.byte	0x3
	.quad	page_incr
	.uleb128 0x1e
	.long	.LASF168
	.byte	0x1
	.byte	0x84
	.byte	0xd
	.long	0xa5d
	.uleb128 0x9
	.byte	0x3
	.quad	reset_numbers
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF169
	.uleb128 0x1e
	.long	.LASF170
	.byte	0x1
	.byte	0x87
	.byte	0x11
	.long	0x4c8
	.uleb128 0x9
	.byte	0x3
	.quad	blank_join
	.uleb128 0x1e
	.long	.LASF171
	.byte	0x1
	.byte	0x8a
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	lineno_width
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x1
	.byte	0x8d
	.byte	0x14
	.long	0x2a3
	.uleb128 0x9
	.byte	0x3
	.quad	lineno_format
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x1
	.byte	0x90
	.byte	0x11
	.long	0x4c8
	.uleb128 0x9
	.byte	0x3
	.quad	line_no
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x1
	.byte	0x93
	.byte	0xd
	.long	0xa5d
	.uleb128 0x9
	.byte	0x3
	.quad	line_no_overflow
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x1
	.byte	0x96
	.byte	0xd
	.long	0xa5d
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0xe
	.long	0x3c2
	.long	0xaf8
	.uleb128 0xf
	.long	0x35
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.long	0xae8
	.uleb128 0x1e
	.long	.LASF176
	.byte	0x1
	.byte	0x98
	.byte	0x1c
	.long	0xaf8
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1f
	.long	.LASF198
	.byte	0x1
	.value	0x1d9
	.byte	0x1
	.long	0x61
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.long	0x12e5
	.uleb128 0x20
	.long	.LASF177
	.byte	0x1
	.value	0x1d9
	.byte	0xb
	.long	0x61
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x20
	.long	.LASF178
	.byte	0x1
	.value	0x1d9
	.byte	0x18
	.long	0x475
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.value	0x1db
	.byte	0x7
	.long	0x61
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.value	0x1dc
	.byte	0xa
	.long	0x29
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x21
	.string	"ok"
	.byte	0x1
	.value	0x1dd
	.byte	0x8
	.long	0xa5d
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x22
	.quad	.LBB248
	.quad	.LBE248-.LBB248
	.long	0xbdf
	.uleb128 0x23
	.quad	.LVL199
	.long	0x227b
	.uleb128 0x24
	.quad	.LVL200
	.long	0x2287
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
	.quad	.LC50
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x208e
	.quad	.LBI216
	.byte	.LVU485
	.long	.Ldebug_ranges0+0x370
	.byte	0x1
	.value	0x23e
	.byte	0x3
	.long	0xc28
	.uleb128 0x27
	.long	0x20ab
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x27
	.long	0x209f
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x24
	.quad	.LVL174
	.long	0x2293
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x208e
	.quad	.LBI219
	.byte	.LVU490
	.long	.Ldebug_ranges0+0x3a0
	.byte	0x1
	.value	0x23e
	.byte	0x3
	.long	0xc71
	.uleb128 0x27
	.long	0x20ab
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x27
	.long	0x209f
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x24
	.quad	.LVL176
	.long	0x2293
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x208e
	.quad	.LBI225
	.byte	.LVU495
	.long	.Ldebug_ranges0+0x3e0
	.byte	0x1
	.value	0x23e
	.byte	0x3
	.long	0xcba
	.uleb128 0x27
	.long	0x20ab
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x27
	.long	0x209f
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x24
	.quad	.LVL178
	.long	0x229e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x208e
	.quad	.LBI230
	.byte	.LVU508
	.long	.Ldebug_ranges0+0x410
	.byte	0x1
	.value	0x242
	.byte	0x3
	.long	0xd05
	.uleb128 0x27
	.long	0x20ab
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x27
	.long	0x209f
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x24
	.quad	.LVL181
	.long	0x2293
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x208e
	.quad	.LBI233
	.byte	.LVU513
	.long	.Ldebug_ranges0+0x440
	.byte	0x1
	.value	0x242
	.byte	0x3
	.long	0xd50
	.uleb128 0x27
	.long	0x20ab
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x27
	.long	0x209f
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x24
	.quad	.LVL183
	.long	0x229e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x208e
	.quad	.LBI238
	.byte	.LVU526
	.long	.Ldebug_ranges0+0x470
	.byte	0x1
	.value	0x246
	.byte	0x3
	.long	0xd92
	.uleb128 0x27
	.long	0x20ab
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x27
	.long	0x209f
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x23
	.quad	.LVL186
	.long	0x229e
	.byte	0
	.uleb128 0x26
	.long	0x20b8
	.quad	.LBI242
	.byte	.LVU545
	.long	.Ldebug_ranges0+0x4a0
	.byte	0x1
	.value	0x24e
	.byte	0x3
	.long	0xdee
	.uleb128 0x27
	.long	0x20e1
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x27
	.long	0x20d5
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x27
	.long	0x20c9
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x24
	.quad	.LVL191
	.long	0x22a9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL130
	.long	0x22b4
	.uleb128 0x28
	.quad	.LVL131
	.long	0x22c0
	.long	0xe1f
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
	.quad	.LC6
	.byte	0
	.uleb128 0x28
	.quad	.LVL132
	.long	0x22cc
	.long	0xe4b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC36
	.byte	0
	.uleb128 0x28
	.quad	.LVL133
	.long	0x22d8
	.long	0xe6a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.byte	0
	.uleb128 0x23
	.quad	.LVL134
	.long	0x22e4
	.uleb128 0x28
	.quad	.LVL136
	.long	0x22f1
	.long	0xeb4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC49
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
	.uleb128 0x28
	.quad	.LVL142
	.long	0x22fd
	.long	0xedd
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
	.quad	.LC43
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL143
	.long	0x2309
	.long	0xf0f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xc
	.long	0x7fffffff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.quad	.LVL144
	.long	0x22fd
	.long	0xf38
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
	.quad	.LC40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL145
	.long	0x2309
	.long	0xf79
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.byte	0x11
	.sleb128 -9223372036854775808
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xa
	.byte	0x10
	.uleb128 0x7fffffffffffffff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.quad	.LVL146
	.long	0x2315
	.long	0xfa0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC44
	.byte	0
	.uleb128 0x28
	.quad	.LVL147
	.long	0x2315
	.long	0xfc7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC45
	.byte	0
	.uleb128 0x28
	.quad	.LVL148
	.long	0x22fd
	.long	0xff0
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
	.quad	.LC42
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL149
	.long	0x2309
	.long	0x1027
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xa
	.byte	0x10
	.uleb128 0x7fffffffffffffff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.quad	.LVL150
	.long	0x22fd
	.long	0x1050
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
	.quad	.LC41
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL151
	.long	0x2309
	.long	0x1091
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xb
	.byte	0x11
	.sleb128 -9223372036854775808
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xa
	.byte	0x10
	.uleb128 0x7fffffffffffffff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.quad	.LVL152
	.long	0x17a3
	.long	0x10ca
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	header_type
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	header_regex
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	header_fastmap
	.byte	0
	.uleb128 0x23
	.quad	.LVL153
	.long	0x2321
	.uleb128 0x28
	.quad	.LVL156
	.long	0x17a3
	.long	0x1110
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	footer_type
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	footer_regex
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	footer_fastmap
	.byte	0
	.uleb128 0x23
	.quad	.LVL157
	.long	0x2321
	.uleb128 0x28
	.quad	.LVL160
	.long	0x17a3
	.long	0x1156
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	body_type
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	body_regex
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	body_fastmap
	.byte	0
	.uleb128 0x23
	.quad	.LVL161
	.long	0x2321
	.uleb128 0x28
	.quad	.LVL163
	.long	0x22fd
	.long	0x117a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.quad	.LVL164
	.long	0x2287
	.long	0x1198
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL167
	.long	0x232d
	.long	0x11de
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	.LC47
	.byte	0
	.uleb128 0x28
	.quad	.LVL168
	.long	0x2339
	.long	0x11f5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.quad	.LVL172
	.long	0x2346
	.long	0x1214
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x28
	.quad	.LVL179
	.long	0x2346
	.long	0x1230
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x28
	.quad	.LVL184
	.long	0x2346
	.long	0x1248
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL187
	.long	0x2352
	.long	0x1267
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	line_buf
	.byte	0
	.uleb128 0x23
	.quad	.LVL189
	.long	0x2346
	.uleb128 0x23
	.quad	.LVL192
	.long	0x12e5
	.uleb128 0x23
	.quad	.LVL198
	.long	0x235e
	.uleb128 0x23
	.quad	.LVL201
	.long	0x2321
	.uleb128 0x28
	.quad	.LVL204
	.long	0x1896
	.long	0x12b2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.quad	.LVL205
	.long	0x12e5
	.long	0x12d1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC50
	.byte	0
	.uleb128 0x24
	.quad	.LVL208
	.long	0x1896
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF192
	.byte	0x1
	.value	0x1b2
	.byte	0x1
	.long	0xa5d
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x16e0
	.uleb128 0x20
	.long	.LASF179
	.byte	0x1
	.value	0x1b2
	.byte	0x16
	.long	0x2a3
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2a
	.long	.LASF180
	.byte	0x1
	.value	0x1b4
	.byte	0x9
	.long	0x2bf
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x26
	.long	0x16e0
	.quad	.LBI112
	.byte	.LVU76
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x1c7
	.byte	0x3
	.long	0x15ef
	.uleb128 0x27
	.long	0x16ee
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x26
	.long	0x177f
	.quad	.LBI114
	.byte	.LVU174
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.value	0x19f
	.byte	0xb
	.long	0x138a
	.uleb128 0x2b
	.long	0x1789
	.quad	.LBI116
	.byte	.LVU182
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.value	0x133
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.long	0x16fb
	.quad	.LBI121
	.byte	.LVU82
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.value	0x19c
	.byte	0xf
	.long	0x140e
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0xa0
	.uleb128 0x2d
	.long	0x170d
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x28
	.quad	.LVL29
	.long	0x236b
	.long	0x13d4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL33
	.long	0x236b
	.long	0x13f2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL36
	.long	0x236b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x171b
	.quad	.LBI126
	.byte	.LVU99
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.value	0x1a8
	.byte	0xb
	.long	0x1501
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x2e
	.long	0x1740
	.long	.Ldebug_ranges0+0x120
	.long	0x14b1
	.uleb128 0x23
	.quad	.LVL22
	.long	0x2376
	.uleb128 0x23
	.quad	.LVL25
	.long	0x1793
	.uleb128 0x23
	.quad	.LVL27
	.long	0x1793
	.uleb128 0x28
	.quad	.LVL55
	.long	0x22fd
	.long	0x148a
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
	.quad	.LC3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL56
	.long	0x227b
	.uleb128 0x24
	.quad	.LVL57
	.long	0x2287
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
	.uleb128 0x28
	.quad	.LVL23
	.long	0x2383
	.long	0x14ce
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
	.uleb128 0x23
	.quad	.LVL24
	.long	0x1793
	.uleb128 0x24
	.quad	.LVL26
	.long	0x2390
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x176b
	.quad	.LBI134
	.byte	.LVU132
	.long	.Ldebug_ranges0+0x170
	.byte	0x1
	.value	0x1a5
	.byte	0xb
	.long	0x1590
	.uleb128 0x26
	.long	0x1789
	.quad	.LBI136
	.byte	.LVU140
	.long	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.value	0x149
	.byte	0x3
	.long	0x1558
	.uleb128 0x2f
	.long	0x1789
	.quad	.LBI138
	.byte	.LVU143
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.byte	0x1
	.value	0x123
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.long	0x2156
	.quad	.LBI142
	.byte	.LVU150
	.long	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.value	0x14a
	.byte	0x3
	.uleb128 0x27
	.long	0x2167
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x24
	.quad	.LVL39
	.long	0x239d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x1775
	.quad	.LBI148
	.byte	.LVU158
	.quad	.LBB148
	.quad	.LBE148-.LBB148
	.byte	0x1
	.value	0x1a2
	.byte	0xb
	.long	0x15cd
	.uleb128 0x2b
	.long	0x1789
	.quad	.LBI150
	.byte	.LVU166
	.long	.Ldebug_ranges0+0x200
	.byte	0x1
	.value	0x13e
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.quad	.LVL19
	.long	0x23aa
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	line_buf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x2138
	.quad	.LBI161
	.byte	.LVU189
	.quad	.LBB161
	.quad	.LBE161-.LBB161
	.byte	0x1
	.value	0x1c9
	.byte	0x7
	.long	0x1623
	.uleb128 0x27
	.long	0x2149
	.long	.LLST10
	.long	.LVUS10
	.byte	0
	.uleb128 0x28
	.quad	.LVL15
	.long	0x23b6
	.long	0x1648
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x28
	.quad	.LVL18
	.long	0x23c2
	.long	0x1665
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x28
	.quad	.LVL42
	.long	0x23ce
	.long	0x167d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL48
	.long	0x235e
	.uleb128 0x28
	.quad	.LVL49
	.long	0x23db
	.long	0x16ac
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL50
	.long	0x227b
	.uleb128 0x24
	.quad	.LVL51
	.long	0x2287
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
	.quad	.LC0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF181
	.byte	0x1
	.value	0x198
	.byte	0x1
	.byte	0x1
	.long	0x16fb
	.uleb128 0x33
	.string	"fp"
	.byte	0x1
	.value	0x198
	.byte	0x15
	.long	0x2bf
	.byte	0
	.uleb128 0x34
	.long	.LASF262
	.byte	0x1
	.value	0x183
	.byte	0x1
	.long	0x81c
	.byte	0x1
	.long	0x171b
	.uleb128 0x35
	.string	"len"
	.byte	0x1
	.value	0x185
	.byte	0xa
	.long	0x29
	.byte	0
	.uleb128 0x32
	.long	.LASF182
	.byte	0x1
	.value	0x150
	.byte	0x1
	.byte	0x1
	.long	0x176b
	.uleb128 0x36
	.long	.LASF183
	.byte	0x1
	.value	0x152
	.byte	0x13
	.long	0x4c8
	.uleb128 0x9
	.byte	0x3
	.quad	blank_lines.7320
	.uleb128 0x37
	.uleb128 0x38
	.uleb128 0x39
	.long	.LASF184
	.byte	0x1
	.value	0x17d
	.byte	0x3
	.long	0x2a3
	.uleb128 0x39
	.long	.LASF185
	.byte	0x1
	.value	0x17d
	.byte	0x3
	.long	0x2bf
	.uleb128 0x39
	.long	.LASF186
	.byte	0x1
	.value	0x17d
	.byte	0x3
	.long	0x29
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF187
	.byte	0x1
	.value	0x145
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF188
	.byte	0x1
	.value	0x13a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF189
	.byte	0x1
	.value	0x12f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.long	.LASF190
	.byte	0x1
	.value	0x123
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF191
	.byte	0x1
	.value	0x117
	.byte	0x1
	.byte	0x1
	.long	0x17a3
	.uleb128 0x37
	.byte	0
	.uleb128 0x3b
	.long	.LASF193
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.long	0xa5d
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x1890
	.uleb128 0x3c
	.long	.LASF194
	.byte	0x1
	.byte	0xf4
	.byte	0x1e
	.long	0x1890
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x3c
	.long	.LASF195
	.byte	0x1
	.byte	0xf5
	.byte	0x2b
	.long	0x939
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x3c
	.long	.LASF110
	.byte	0x1
	.byte	0xf5
	.byte	0x39
	.long	0xa4
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x3d
	.long	.LASF196
	.byte	0x1
	.byte	0xf7
	.byte	0xf
	.long	0x2a3
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x3e
	.long	.LASF197
	.byte	0x1
	.byte	0xf8
	.byte	0x8
	.long	0xa5d
	.byte	0x1
	.uleb128 0x22
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.long	0x185d
	.uleb128 0x24
	.quad	.LVL8
	.long	0x2287
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LVL2
	.long	0x23e8
	.long	0x1875
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL3
	.long	0x23f5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2a3
	.uleb128 0x3f
	.long	.LASF199
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fdf
	.uleb128 0x3c
	.long	.LASF200
	.byte	0x1
	.byte	0xad
	.byte	0xc
	.long	0x61
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x40
	.long	0x210d
	.quad	.LBI180
	.byte	.LVU236
	.long	.Ldebug_ranges0+0x230
	.byte	0x1
	.byte	0xb0
	.byte	0x5
	.long	0x1915
	.uleb128 0x27
	.long	0x212a
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x27
	.long	0x211e
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x24
	.quad	.LVL63
	.long	0x2402
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
	.uleb128 0x40
	.long	0x20ee
	.quad	.LBI184
	.byte	.LVU247
	.long	.Ldebug_ranges0+0x260
	.byte	0x1
	.byte	0xb3
	.byte	0x7
	.long	0x1955
	.uleb128 0x27
	.long	0x20ff
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x24
	.quad	.LVL69
	.long	0x240e
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
	.uleb128 0x41
	.long	0x2084
	.quad	.LBI188
	.byte	.LVU254
	.quad	.LBB188
	.quad	.LBE188-.LBB188
	.byte	0x1
	.byte	0xbb
	.byte	0x7
	.long	0x19b8
	.uleb128 0x28
	.quad	.LVL72
	.long	0x22fd
	.long	0x19a3
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
	.quad	.LVL73
	.long	0x2376
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x207a
	.quad	.LBI190
	.byte	.LVU257
	.quad	.LBB190
	.quad	.LBE190-.LBB190
	.byte	0x1
	.byte	0xbc
	.byte	0x7
	.long	0x1a1b
	.uleb128 0x28
	.quad	.LVL74
	.long	0x22fd
	.long	0x1a06
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
	.quad	.LVL75
	.long	0x2376
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x1fdf
	.quad	.LBI192
	.byte	.LVU268
	.quad	.LBB192
	.quad	.LBE192-.LBB192
	.byte	0x1
	.byte	0xeb
	.byte	0x7
	.long	0x1d34
	.uleb128 0x42
	.long	0x1fed
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.uleb128 0x43
	.long	0x202a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.long	0x2037
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x2d
	.long	0x2044
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x2d
	.long	0x2051
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x26
	.long	0x20ee
	.quad	.LBI194
	.byte	.LVU295
	.long	.Ldebug_ranges0+0x290
	.byte	0x4
	.value	0x28f
	.byte	0x3
	.long	0x1b06
	.uleb128 0x27
	.long	0x20ff
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x28
	.quad	.LVL99
	.long	0x240e
	.long	0x1ad8
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
	.quad	.LC31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.byte	0
	.uleb128 0x24
	.quad	.LVL116
	.long	0x240e
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
	.quad	.LC31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x20ee
	.quad	.LBI200
	.byte	.LVU310
	.long	.Ldebug_ranges0+0x2e0
	.byte	0x4
	.value	0x29d
	.byte	0x3
	.long	0x1b7e
	.uleb128 0x27
	.long	0x20ff
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x28
	.quad	.LVL107
	.long	0x240e
	.long	0x1b57
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
	.quad	.LC30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL123
	.long	0x240e
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
	.quad	.LC30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x20ee
	.quad	.LBI207
	.byte	.LVU319
	.long	.Ldebug_ranges0+0x340
	.byte	0x4
	.value	0x29f
	.byte	0x3
	.long	0x1bc5
	.uleb128 0x27
	.long	0x20ff
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x24
	.quad	.LVL111
	.long	0x240e
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
	.uleb128 0x28
	.quad	.LVL96
	.long	0x22fd
	.long	0x1bee
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
	.quad	.LC29
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL100
	.long	0x22c0
	.long	0x1c0a
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
	.uleb128 0x28
	.quad	.LVL102
	.long	0x241a
	.long	0x1c2e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x28
	.quad	.LVL104
	.long	0x22fd
	.long	0x1c57
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
	.quad	.LC34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL108
	.long	0x22fd
	.long	0x1c80
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
	.quad	.LC35
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.quad	.LVL113
	.long	0x22fd
	.uleb128 0x28
	.quad	.LVL117
	.long	0x22c0
	.long	0x1ca9
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
	.uleb128 0x28
	.quad	.LVL119
	.long	0x241a
	.long	0x1ccd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x28
	.quad	.LVL120
	.long	0x22fd
	.long	0x1cf6
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
	.quad	.LC34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL125
	.long	0x22fd
	.long	0x1d1f
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
	.quad	.LC33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL126
	.long	0x2376
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LVL60
	.long	0x22fd
	.long	0x1d5d
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
	.uleb128 0x28
	.quad	.LVL64
	.long	0x2339
	.long	0x1d75
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL66
	.long	0x22fd
	.long	0x1d99
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
	.byte	0
	.uleb128 0x28
	.quad	.LVL70
	.long	0x22fd
	.long	0x1dc2
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
	.uleb128 0x28
	.quad	.LVL71
	.long	0x2376
	.long	0x1dda
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL76
	.long	0x22fd
	.long	0x1e03
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
	.uleb128 0x28
	.quad	.LVL77
	.long	0x2376
	.long	0x1e1b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL78
	.long	0x22fd
	.long	0x1e44
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
	.quad	.LC13
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL79
	.long	0x2376
	.long	0x1e5c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL80
	.long	0x22fd
	.long	0x1e85
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
	.quad	.LC14
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL81
	.long	0x2376
	.long	0x1e9d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL82
	.long	0x22fd
	.long	0x1ec6
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
	.quad	.LC15
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL83
	.long	0x2376
	.long	0x1ede
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL84
	.long	0x22fd
	.long	0x1f07
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
	.quad	.LC16
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL85
	.long	0x2376
	.long	0x1f1f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL86
	.long	0x22fd
	.long	0x1f48
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
	.quad	.LC17
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL87
	.long	0x2376
	.long	0x1f60
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL88
	.long	0x22fd
	.long	0x1f89
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
	.quad	.LC18
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x28
	.quad	.LVL89
	.long	0x2376
	.long	0x1fa1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL90
	.long	0x22fd
	.long	0x1fca
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
	.quad	.LC19
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL91
	.long	0x2376
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF201
	.byte	0x4
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x205f
	.uleb128 0x44
	.long	.LASF202
	.byte	0x4
	.value	0x27a
	.byte	0x22
	.long	0x2a3
	.uleb128 0x1b
	.long	.LASF203
	.byte	0x10
	.byte	0x4
	.value	0x27c
	.byte	0xa
	.long	0x2025
	.uleb128 0x1c
	.long	.LASF202
	.byte	0x4
	.value	0x27c
	.byte	0x20
	.long	0x2a3
	.byte	0
	.uleb128 0x1c
	.long	.LASF204
	.byte	0x4
	.value	0x27c
	.byte	0x35
	.long	0x2a3
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x1ffa
	.uleb128 0x39
	.long	.LASF203
	.byte	0x4
	.value	0x27c
	.byte	0x43
	.long	0x206f
	.uleb128 0x39
	.long	.LASF204
	.byte	0x4
	.value	0x286
	.byte	0xf
	.long	0x2a3
	.uleb128 0x39
	.long	.LASF205
	.byte	0x4
	.value	0x287
	.byte	0x19
	.long	0x2074
	.uleb128 0x39
	.long	.LASF206
	.byte	0x4
	.value	0x293
	.byte	0xf
	.long	0x2a3
	.byte	0
	.uleb128 0xe
	.long	0x2025
	.long	0x206f
	.uleb128 0xf
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x205f
	.uleb128 0x7
	.byte	0x8
	.long	0x2025
	.uleb128 0x3a
	.long	.LASF207
	.byte	0x4
	.value	0x24c
	.byte	0x1
	.byte	0x3
	.uleb128 0x3a
	.long	.LASF208
	.byte	0x4
	.value	0x245
	.byte	0x1
	.byte	0x3
	.uleb128 0x45
	.long	.LASF211
	.byte	0x5
	.byte	0x5f
	.byte	0x1
	.long	0xa4
	.byte	0x3
	.long	0x20b8
	.uleb128 0x46
	.long	.LASF209
	.byte	0x5
	.byte	0x5f
	.byte	0x1
	.long	0xaa
	.uleb128 0x46
	.long	.LASF210
	.byte	0x5
	.byte	0x5f
	.byte	0x1
	.long	0x2ae
	.byte	0
	.uleb128 0x45
	.long	.LASF212
	.byte	0x5
	.byte	0x3b
	.byte	0x1
	.long	0x43
	.byte	0x3
	.long	0x20ee
	.uleb128 0x46
	.long	.LASF209
	.byte	0x5
	.byte	0x3b
	.byte	0x1
	.long	0x43
	.uleb128 0x46
	.long	.LASF213
	.byte	0x5
	.byte	0x3b
	.byte	0x1
	.long	0x61
	.uleb128 0x46
	.long	.LASF214
	.byte	0x5
	.byte	0x3b
	.byte	0x1
	.long	0x29
	.byte	0
	.uleb128 0x45
	.long	.LASF215
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x210d
	.uleb128 0x46
	.long	.LASF216
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x2ae
	.uleb128 0x47
	.byte	0
	.uleb128 0x45
	.long	.LASF217
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x2138
	.uleb128 0x46
	.long	.LASF185
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2c5
	.uleb128 0x46
	.long	.LASF216
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x2ae
	.uleb128 0x47
	.byte	0
	.uleb128 0x48
	.long	.LASF218
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x2156
	.uleb128 0x46
	.long	.LASF185
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.long	0x2bf
	.byte	0
	.uleb128 0x48
	.long	.LASF219
	.byte	0x3
	.byte	0x6c
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x2174
	.uleb128 0x49
	.string	"__c"
	.byte	0x3
	.byte	0x6c
	.byte	0x17
	.long	0x61
	.byte	0
	.uleb128 0x48
	.long	.LASF220
	.byte	0x3
	.byte	0x65
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x219e
	.uleb128 0x49
	.string	"__c"
	.byte	0x3
	.byte	0x65
	.byte	0x14
	.long	0x61
	.uleb128 0x46
	.long	.LASF185
	.byte	0x3
	.byte	0x65
	.byte	0x1f
	.long	0x2bf
	.byte	0
	.uleb128 0x4a
	.long	0x1793
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x227b
	.uleb128 0x31
	.long	0x20ee
	.quad	.LBI72
	.byte	.LVU50
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.byte	0x1
	.value	0x11c
	.byte	0x3
	.long	0x2200
	.uleb128 0x27
	.long	0x20ff
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x24
	.quad	.LVL10
	.long	0x240e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x1793
	.quad	.LBI74
	.byte	.LVU60
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.byte	0x1
	.value	0x117
	.byte	0x1
	.uleb128 0x4c
	.long	0x17a1
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0x28
	.quad	.LVL11
	.long	0x22fd
	.long	0x2260
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
	.quad	.LC1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL12
	.long	0x2287
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	.LASF221
	.long	.LASF221
	.byte	0x13
	.byte	0x25
	.byte	0xd
	.uleb128 0x4d
	.long	.LASF222
	.long	.LASF222
	.byte	0x1c
	.byte	0x28
	.byte	0xd
	.uleb128 0x4e
	.long	.LASF211
	.long	.LASF224
	.byte	0x20
	.byte	0
	.uleb128 0x4e
	.long	.LASF223
	.long	.LASF225
	.byte	0x20
	.byte	0
	.uleb128 0x4e
	.long	.LASF212
	.long	.LASF226
	.byte	0x20
	.byte	0
	.uleb128 0x4d
	.long	.LASF227
	.long	.LASF227
	.byte	0x19
	.byte	0x25
	.byte	0xd
	.uleb128 0x4d
	.long	.LASF228
	.long	.LASF228
	.byte	0x21
	.byte	0x7a
	.byte	0xe
	.uleb128 0x4d
	.long	.LASF229
	.long	.LASF229
	.byte	0x22
	.byte	0x56
	.byte	0xe
	.uleb128 0x4d
	.long	.LASF230
	.long	.LASF230
	.byte	0x22
	.byte	0x52
	.byte	0xe
	.uleb128 0x4f
	.long	.LASF231
	.long	.LASF231
	.byte	0x23
	.value	0x253
	.byte	0xc
	.uleb128 0x4d
	.long	.LASF232
	.long	.LASF232
	.byte	0xf
	.byte	0x42
	.byte	0xc
	.uleb128 0x4d
	.long	.LASF233
	.long	.LASF233
	.byte	0x22
	.byte	0x33
	.byte	0xe
	.uleb128 0x4d
	.long	.LASF234
	.long	.LASF234
	.byte	0x24
	.byte	0x1e
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF235
	.long	.LASF235
	.byte	0x25
	.byte	0x89
	.byte	0xc
	.uleb128 0x4d
	.long	.LASF236
	.long	.LASF236
	.byte	0x1f
	.byte	0x2c
	.byte	0xd
	.uleb128 0x4d
	.long	.LASF237
	.long	.LASF237
	.byte	0x18
	.byte	0x3c
	.byte	0xd
	.uleb128 0x4f
	.long	.LASF238
	.long	.LASF238
	.byte	0x23
	.value	0x269
	.byte	0xd
	.uleb128 0x4d
	.long	.LASF239
	.long	.LASF239
	.byte	0x26
	.byte	0x35
	.byte	0x7
	.uleb128 0x4d
	.long	.LASF240
	.long	.LASF240
	.byte	0x1e
	.byte	0x22
	.byte	0x6
	.uleb128 0x4f
	.long	.LASF241
	.long	.LASF241
	.byte	0x27
	.value	0x2be
	.byte	0x1
	.uleb128 0x4e
	.long	.LASF242
	.long	.LASF243
	.byte	0x20
	.byte	0
	.uleb128 0x4f
	.long	.LASF244
	.long	.LASF244
	.byte	0xa
	.value	0x296
	.byte	0xc
	.uleb128 0x4f
	.long	.LASF245
	.long	.LASF245
	.byte	0xa
	.value	0x2a3
	.byte	0xf
	.uleb128 0x4f
	.long	.LASF246
	.long	.LASF246
	.byte	0x1b
	.value	0x229
	.byte	0x11
	.uleb128 0x4f
	.long	.LASF247
	.long	.LASF247
	.byte	0xa
	.value	0x35b
	.byte	0xc
	.uleb128 0x4d
	.long	.LASF248
	.long	.LASF248
	.byte	0x1e
	.byte	0x30
	.byte	0x14
	.uleb128 0x4d
	.long	.LASF249
	.long	.LASF249
	.byte	0xa
	.byte	0xf6
	.byte	0xe
	.uleb128 0x4d
	.long	.LASF250
	.long	.LASF250
	.byte	0x1d
	.byte	0x48
	.byte	0x6
	.uleb128 0x4f
	.long	.LASF251
	.long	.LASF251
	.byte	0xa
	.value	0x2fd
	.byte	0xd
	.uleb128 0x4f
	.long	.LASF252
	.long	.LASF252
	.byte	0x1a
	.value	0x18d
	.byte	0x7
	.uleb128 0x4f
	.long	.LASF253
	.long	.LASF253
	.byte	0x25
	.value	0x181
	.byte	0xf
	.uleb128 0x4f
	.long	.LASF254
	.long	.LASF254
	.byte	0x1b
	.value	0x21a
	.byte	0x14
	.uleb128 0x4d
	.long	.LASF255
	.long	.LASF255
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x4d
	.long	.LASF256
	.long	.LASF256
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x4d
	.long	.LASF257
	.long	.LASF257
	.byte	0x25
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0xb
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x1c
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS21:
	.uleb128 0
	.uleb128 .LVU369
	.uleb128 .LVU369
	.uleb128 .LVU576
	.uleb128 .LVU576
	.uleb128 .LVU577
	.uleb128 .LVU577
	.uleb128 0
.LLST21:
	.quad	.LVL127
	.quad	.LVL129
	.value	0x1
	.byte	0x55
	.quad	.LVL129
	.quad	.LVL196
	.value	0x1
	.byte	0x5d
	.quad	.LVL196
	.quad	.LVL197
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL197
	.quad	.LFE146
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU575
	.uleb128 .LVU575
	.uleb128 .LVU577
	.uleb128 .LVU577
	.uleb128 0
.LLST22:
	.quad	.LVL127
	.quad	.LVL130-1
	.value	0x1
	.byte	0x54
	.quad	.LVL130-1
	.quad	.LVL195
	.value	0x1
	.byte	0x5c
	.quad	.LVL195
	.quad	.LVL197
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL197
	.quad	.LFE146
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU379
	.uleb128 .LVU381
	.uleb128 .LVU382
	.uleb128 .LVU383
	.uleb128 .LVU460
	.uleb128 .LVU464
	.uleb128 .LVU470
	.uleb128 .LVU474
	.uleb128 .LVU587
	.uleb128 .LVU588
	.uleb128 .LVU591
	.uleb128 .LVU592
.LLST23:
	.quad	.LVL136
	.quad	.LVL137
	.value	0x1
	.byte	0x50
	.quad	.LVL138
	.quad	.LVL139
	.value	0x1
	.byte	0x50
	.quad	.LVL165
	.quad	.LVL166
	.value	0x1
	.byte	0x50
	.quad	.LVL169
	.quad	.LVL170
	.value	0x1
	.byte	0x50
	.quad	.LVL203
	.quad	.LVL204-1
	.value	0x1
	.byte	0x50
	.quad	.LVL207
	.quad	.LVL208-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU475
	.uleb128 .LVU537
	.uleb128 .LVU537
	.uleb128 .LVU545
.LLST24:
	.quad	.LVL171
	.quad	.LVL188
	.value	0x1
	.byte	0x5f
	.quad	.LVL188
	.quad	.LVL190
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU359
	.uleb128 .LVU377
	.uleb128 .LVU377
	.uleb128 .LVU384
	.uleb128 .LVU385
	.uleb128 .LVU435
	.uleb128 .LVU436
	.uleb128 .LVU442
	.uleb128 .LVU443
	.uleb128 .LVU452
	.uleb128 .LVU459
	.uleb128 .LVU460
	.uleb128 .LVU460
	.uleb128 .LVU573
	.uleb128 .LVU577
	.uleb128 .LVU586
	.uleb128 .LVU587
	.uleb128 .LVU590
	.uleb128 .LVU590
	.uleb128 .LVU591
	.uleb128 .LVU591
	.uleb128 0
.LLST25:
	.quad	.LVL128
	.quad	.LVL135
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL135
	.quad	.LVL140
	.value	0x1
	.byte	0x53
	.quad	.LVL141
	.quad	.LVL154
	.value	0x1
	.byte	0x53
	.quad	.LVL155
	.quad	.LVL158
	.value	0x1
	.byte	0x53
	.quad	.LVL159
	.quad	.LVL162
	.value	0x1
	.byte	0x53
	.quad	.LVL164
	.quad	.LVL165
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL165
	.quad	.LVL194
	.value	0x1
	.byte	0x53
	.quad	.LVL197
	.quad	.LVL202
	.value	0x1
	.byte	0x53
	.quad	.LVL203
	.quad	.LVL206
	.value	0x1
	.byte	0x53
	.quad	.LVL206
	.quad	.LVL207
	.value	0x1
	.byte	0x50
	.quad	.LVL207
	.quad	.LFE146
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU485
	.uleb128 .LVU489
.LLST26:
	.quad	.LVL173
	.quad	.LVL175
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU485
	.uleb128 .LVU488
.LLST27:
	.quad	.LVL173
	.quad	.LVL174-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU489
	.uleb128 .LVU494
.LLST28:
	.quad	.LVL175
	.quad	.LVL177
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 .LVU489
	.uleb128 .LVU493
.LLST29:
	.quad	.LVL175
	.quad	.LVL176-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS30:
	.uleb128 .LVU494
	.uleb128 .LVU498
.LLST30:
	.quad	.LVL177
	.quad	.LVL178
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 .LVU494
	.uleb128 .LVU498
.LLST31:
	.quad	.LVL177
	.quad	.LVL178-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS32:
	.uleb128 .LVU508
	.uleb128 .LVU511
	.uleb128 .LVU511
	.uleb128 .LVU512
.LLST32:
	.quad	.LVL180
	.quad	.LVL181-1
	.value	0x1
	.byte	0x54
	.quad	.LVL181-1
	.quad	.LVL182
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LVUS33:
	.uleb128 .LVU508
	.uleb128 .LVU511
.LLST33:
	.quad	.LVL180
	.quad	.LVL181-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS34:
	.uleb128 .LVU512
	.uleb128 .LVU516
	.uleb128 .LVU516
	.uleb128 .LVU516
.LLST34:
	.quad	.LVL182
	.quad	.LVL183-1
	.value	0x1
	.byte	0x54
	.quad	.LVL183-1
	.quad	.LVL183
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LVUS35:
	.uleb128 .LVU512
	.uleb128 .LVU516
.LLST35:
	.quad	.LVL182
	.quad	.LVL183-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS36:
	.uleb128 .LVU526
	.uleb128 .LVU529
.LLST36:
	.quad	.LVL185
	.quad	.LVL186-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS37:
	.uleb128 .LVU526
	.uleb128 .LVU529
.LLST37:
	.quad	.LVL185
	.quad	.LVL186-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS38:
	.uleb128 .LVU545
	.uleb128 .LVU548
.LLST38:
	.quad	.LVL190
	.quad	.LVL191
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS39:
	.uleb128 .LVU545
	.uleb128 .LVU548
.LLST39:
	.quad	.LVL190
	.quad	.LVL191
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS40:
	.uleb128 .LVU545
	.uleb128 .LVU548
.LLST40:
	.quad	.LVL190
	.quad	.LVL191-1
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 0
.LLST5:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x55
	.quad	.LVL14
	.quad	.LVL44
	.value	0x1
	.byte	0x5d
	.quad	.LVL44
	.quad	.LVL45
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL45
	.quad	.LVL47
	.value	0x1
	.byte	0x55
	.quad	.LVL47
	.quad	.LVL53
	.value	0x1
	.byte	0x5d
	.quad	.LVL53
	.quad	.LVL54
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL54
	.quad	.LFE145
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU70
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU201
	.uleb128 .LVU208
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU221
	.uleb128 .LVU223
	.uleb128 0
.LLST6:
	.quad	.LVL16
	.quad	.LVL17
	.value	0x1
	.byte	0x50
	.quad	.LVL17
	.quad	.LVL41
	.value	0x1
	.byte	0x56
	.quad	.LVL41
	.quad	.LVL42-1
	.value	0x1
	.byte	0x55
	.quad	.LVL42-1
	.quad	.LVL43
	.value	0x1
	.byte	0x56
	.quad	.LVL46
	.quad	.LVL47
	.value	0x1
	.byte	0x56
	.quad	.LVL47
	.quad	.LVL48-1
	.value	0x1
	.byte	0x55
	.quad	.LVL48-1
	.quad	.LVL52
	.value	0x1
	.byte	0x56
	.quad	.LVL54
	.quad	.LFE145
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU76
	.uleb128 .LVU187
	.uleb128 .LVU223
	.uleb128 0
.LLST7:
	.quad	.LVL18
	.quad	.LVL40
	.value	0x1
	.byte	0x56
	.quad	.LVL54
	.quad	.LFE145
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU86
	.uleb128 .LVU97
	.uleb128 .LVU126
	.uleb128 .LVU130
	.uleb128 .LVU153
	.uleb128 .LVU156
	.uleb128 .LVU169
	.uleb128 .LVU172
.LLST8:
	.quad	.LVL20
	.quad	.LVL21
	.value	0x1
	.byte	0x5e
	.quad	.LVL28
	.quad	.LVL30
	.value	0x1
	.byte	0x5e
	.quad	.LVL32
	.quad	.LVL34
	.value	0x1
	.byte	0x5e
	.quad	.LVL35
	.quad	.LVL37
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU150
	.uleb128 .LVU153
	.uleb128 .LVU185
	.uleb128 .LVU187
.LLST9:
	.quad	.LVL31
	.quad	.LVL32
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL40
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU189
	.uleb128 .LVU191
.LLST10:
	.quad	.LVL40
	.quad	.LVL40
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LFE136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2-1
	.value	0x1
	.byte	0x54
	.quad	.LVL2-1
	.quad	.LVL5
	.value	0x1
	.byte	0x5c
	.quad	.LVL5
	.quad	.LVL6
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL6
	.quad	.LFE136
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST2:
	.quad	.LVL0
	.quad	.LVL2-1
	.value	0x1
	.byte	0x51
	.quad	.LVL2-1
	.quad	.LFE136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU34
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU44
.LLST3:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x1
	.byte	0x50
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x50
	.quad	.LVL7
	.quad	.LVL8-1
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST11:
	.quad	.LVL58
	.quad	.LVL59
	.value	0x1
	.byte	0x55
	.quad	.LVL59
	.quad	.LVL64
	.value	0x1
	.byte	0x56
	.quad	.LVL64
	.quad	.LVL65
	.value	0x1
	.byte	0x55
	.quad	.LVL65
	.quad	.LFE135
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU236
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU240
.LLST12:
	.quad	.LVL61
	.quad	.LVL62
	.value	0x1
	.byte	0x50
	.quad	.LVL62
	.quad	.LVL63-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU236
	.uleb128 .LVU240
.LLST13:
	.quad	.LVL61
	.quad	.LVL63-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU247
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU251
.LLST14:
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x50
	.quad	.LVL68
	.quad	.LVL69-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU276
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 .LVU306
	.uleb128 .LVU325
	.uleb128 .LVU353
.LLST15:
	.quad	.LVL92
	.quad	.LVL95
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	.LVL95
	.quad	.LVL103
	.value	0x1
	.byte	0x5c
	.quad	.LVL112
	.quad	.LVL124
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU277
	.uleb128 .LVU288
.LLST16:
	.quad	.LVL92
	.quad	.LVL94
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU302
	.uleb128 .LVU305
	.uleb128 .LVU336
	.uleb128 .LVU339
.LLST17:
	.quad	.LVL101
	.quad	.LVL102-1
	.value	0x1
	.byte	0x50
	.quad	.LVL118
	.quad	.LVL119-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU295
	.uleb128 .LVU298
	.uleb128 .LVU298
	.uleb128 .LVU299
	.uleb128 .LVU329
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU333
.LLST18:
	.quad	.LVL97
	.quad	.LVL98
	.value	0x1
	.byte	0x50
	.quad	.LVL98
	.quad	.LVL99-1
	.value	0x1
	.byte	0x54
	.quad	.LVL114
	.quad	.LVL115
	.value	0x1
	.byte	0x50
	.quad	.LVL115
	.quad	.LVL116-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU310
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 .LVU314
	.uleb128 .LVU344
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU350
.LLST19:
	.quad	.LVL105
	.quad	.LVL106
	.value	0x1
	.byte	0x50
	.quad	.LVL106
	.quad	.LVL107-1
	.value	0x1
	.byte	0x54
	.quad	.LVL121
	.quad	.LVL122
	.value	0x1
	.byte	0x50
	.quad	.LVL122
	.quad	.LVL123-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU319
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 .LVU323
.LLST20:
	.quad	.LVL109
	.quad	.LVL110
	.value	0x1
	.byte	0x50
	.quad	.LVL110
	.quad	.LVL111-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU50
	.uleb128 .LVU53
.LLST4:
	.quad	.LVL9
	.quad	.LVL10-1
	.value	0x9
	.byte	0x3
	.quad	lineno_format
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
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB112
	.quad	.LBE112
	.quad	.LBB160
	.quad	.LBE160
	.quad	.LBB163
	.quad	.LBE163
	.quad	0
	.quad	0
	.quad	.LBB114
	.quad	.LBE114
	.quad	.LBB155
	.quad	.LBE155
	.quad	0
	.quad	0
	.quad	.LBB116
	.quad	.LBE116
	.quad	.LBB119
	.quad	.LBE119
	.quad	0
	.quad	0
	.quad	.LBB121
	.quad	.LBE121
	.quad	.LBB133
	.quad	.LBE133
	.quad	.LBB147
	.quad	.LBE147
	.quad	.LBB154
	.quad	.LBE154
	.quad	0
	.quad	0
	.quad	.LBB126
	.quad	.LBE126
	.quad	.LBB157
	.quad	.LBE157
	.quad	0
	.quad	0
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB129
	.quad	.LBE129
	.quad	.LBB130
	.quad	.LBE130
	.quad	.LBB131
	.quad	.LBE131
	.quad	0
	.quad	0
	.quad	.LBB134
	.quad	.LBE134
	.quad	.LBB156
	.quad	.LBE156
	.quad	0
	.quad	0
	.quad	.LBB136
	.quad	.LBE136
	.quad	.LBB141
	.quad	.LBE141
	.quad	0
	.quad	0
	.quad	.LBB142
	.quad	.LBE142
	.quad	.LBB145
	.quad	.LBE145
	.quad	0
	.quad	0
	.quad	.LBB150
	.quad	.LBE150
	.quad	.LBB153
	.quad	.LBE153
	.quad	0
	.quad	0
	.quad	.LBB180
	.quad	.LBE180
	.quad	.LBB183
	.quad	.LBE183
	.quad	0
	.quad	0
	.quad	.LBB184
	.quad	.LBE184
	.quad	.LBB187
	.quad	.LBE187
	.quad	0
	.quad	0
	.quad	.LBB194
	.quad	.LBE194
	.quad	.LBB199
	.quad	.LBE199
	.quad	.LBB211
	.quad	.LBE211
	.quad	.LBB212
	.quad	.LBE212
	.quad	0
	.quad	0
	.quad	.LBB200
	.quad	.LBE200
	.quad	.LBB206
	.quad	.LBE206
	.quad	.LBB213
	.quad	.LBE213
	.quad	.LBB214
	.quad	.LBE214
	.quad	.LBB215
	.quad	.LBE215
	.quad	0
	.quad	0
	.quad	.LBB207
	.quad	.LBE207
	.quad	.LBB210
	.quad	.LBE210
	.quad	0
	.quad	0
	.quad	.LBB216
	.quad	.LBE216
	.quad	.LBB223
	.quad	.LBE223
	.quad	0
	.quad	0
	.quad	.LBB219
	.quad	.LBE219
	.quad	.LBB224
	.quad	.LBE224
	.quad	.LBB228
	.quad	.LBE228
	.quad	0
	.quad	0
	.quad	.LBB225
	.quad	.LBE225
	.quad	.LBB229
	.quad	.LBE229
	.quad	0
	.quad	0
	.quad	.LBB230
	.quad	.LBE230
	.quad	.LBB236
	.quad	.LBE236
	.quad	0
	.quad	0
	.quad	.LBB233
	.quad	.LBE233
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
	.quad	.LBB242
	.quad	.LBE242
	.quad	.LBB246
	.quad	.LBE246
	.quad	.LBB247
	.quad	.LBE247
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB146
	.quad	.LFE146
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF185:
	.string	"__stream"
.LASF7:
	.string	"size_t"
.LASF85:
	.string	"GETOPT_HELP_CHAR"
.LASF108:
	.string	"used"
.LASF216:
	.string	"__fmt"
.LASF44:
	.string	"_IO_codecvt"
.LASF218:
	.string	"ferror_unlocked"
.LASF111:
	.string	"translate"
.LASF24:
	.string	"_IO_save_end"
.LASF250:
	.string	"fadvise"
.LASF137:
	.string	"FORMAT_LEFT"
.LASF102:
	.string	"__re_long_size_t"
.LASF74:
	.string	"_sys_siglist"
.LASF55:
	.string	"time_t"
.LASF187:
	.string	"proc_footer"
.LASF17:
	.string	"_IO_write_base"
.LASF257:
	.string	"strncmp"
.LASF123:
	.string	"error_one_per_line"
.LASF152:
	.string	"body_fastmap"
.LASF33:
	.string	"_lock"
.LASF151:
	.string	"footer_regex"
.LASF262:
	.string	"check_section"
.LASF114:
	.string	"regs_allocated"
.LASF252:
	.string	"quotearg_n_style_colon"
.LASF22:
	.string	"_IO_save_base"
.LASF156:
	.string	"separator_str"
.LASF247:
	.string	"__overflow"
.LASF241:
	.string	"rpl_fclose"
.LASF219:
	.string	"putchar_unlocked"
.LASF26:
	.string	"_chain"
.LASF142:
	.string	"Body"
.LASF30:
	.string	"_cur_column"
.LASF49:
	.string	"sys_nerr"
.LASF246:
	.string	"rpl_re_search"
.LASF167:
	.string	"page_incr"
.LASF51:
	.string	"_sys_nerr"
.LASF146:
	.string	"header_type"
.LASF227:
	.string	"set_program_name"
.LASF76:
	.string	"__environ"
.LASF6:
	.string	"long int"
.LASF248:
	.string	"readlinebuffer"
.LASF238:
	.string	"exit"
.LASF226:
	.string	"__builtin_memset"
.LASF65:
	.string	"has_arg"
.LASF255:
	.string	"__fprintf_chk"
.LASF43:
	.string	"_IO_marker"
.LASF161:
	.string	"body_del_len"
.LASF112:
	.string	"re_nsub"
.LASF222:
	.string	"error"
.LASF170:
	.string	"blank_join"
.LASF243:
	.string	"__builtin_memcmp"
.LASF182:
	.string	"proc_text"
.LASF240:
	.string	"initbuffer"
.LASF129:
	.string	"FADVISE_RANDOM"
.LASF4:
	.string	"signed char"
.LASF208:
	.string	"emit_stdin_note"
.LASF62:
	.string	"_IO_FILE"
.LASF104:
	.string	"rpl_re_syntax_options"
.LASF69:
	.string	"__timezone"
.LASF45:
	.string	"_IO_wide_data"
.LASF165:
	.string	"print_no_line_fmt"
.LASF258:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF100:
	.string	"quoting_style_args"
.LASF77:
	.string	"environ"
.LASF135:
	.string	"FORMAT_RIGHT_NOLZ"
.LASF2:
	.string	"unsigned char"
.LASF37:
	.string	"_freeres_list"
.LASF175:
	.string	"have_read_stdin"
.LASF153:
	.string	"header_fastmap"
.LASF195:
	.string	"regexp"
.LASF201:
	.string	"emit_ancillary_info"
.LASF122:
	.string	"error_message_count"
.LASF118:
	.string	"not_eol"
.LASF67:
	.string	"__tzname"
.LASF169:
	.string	"_Bool"
.LASF251:
	.string	"clearerr_unlocked"
.LASF125:
	.string	"FADVISE_SEQUENTIAL"
.LASF12:
	.string	"char"
.LASF215:
	.string	"printf"
.LASF184:
	.string	"__ptr"
.LASF174:
	.string	"line_no_overflow"
.LASF245:
	.string	"fwrite_unlocked"
.LASF261:
	.string	"_IO_lock_t"
.LASF221:
	.string	"__errno_location"
.LASF237:
	.string	"version_etc"
.LASF72:
	.string	"timezone"
.LASF93:
	.string	"shell_escape_always_quoting_style"
.LASF103:
	.string	"reg_syntax_t"
.LASF193:
	.string	"build_type_arg"
.LASF14:
	.string	"_IO_read_ptr"
.LASF141:
	.string	"Header"
.LASF235:
	.string	"strcmp"
.LASF46:
	.string	"stdin"
.LASF180:
	.string	"stream"
.LASF50:
	.string	"sys_errlist"
.LASF120:
	.string	"re_dfa_t"
.LASF25:
	.string	"_markers"
.LASF88:
	.string	"program_name"
.LASF179:
	.string	"file"
.LASF138:
	.string	"DEFAULT_SECTION_DELIMITERS"
.LASF95:
	.string	"c_maybe_quoting_style"
.LASF106:
	.string	"buffer"
.LASF244:
	.string	"fputs_unlocked"
.LASF204:
	.string	"node"
.LASF126:
	.string	"FADVISE_NOREUSE"
.LASF78:
	.string	"program_invocation_name"
.LASF105:
	.string	"re_pattern_buffer"
.LASF34:
	.string	"_offset"
.LASF136:
	.string	"FORMAT_RIGHT_LZ"
.LASF166:
	.string	"starting_line_number"
.LASF59:
	.string	"optind"
.LASF98:
	.string	"clocale_quoting_style"
.LASF211:
	.string	"stpcpy"
.LASF121:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF223:
	.string	"strcpy"
.LASF140:
	.string	"section"
.LASF28:
	.string	"_flags2"
.LASF16:
	.string	"_IO_read_base"
.LASF63:
	.string	"option"
.LASF256:
	.string	"__printf_chk"
.LASF41:
	.string	"_unused2"
.LASF107:
	.string	"allocated"
.LASF186:
	.string	"__cnt"
.LASF177:
	.string	"argc"
.LASF188:
	.string	"proc_body"
.LASF29:
	.string	"_old_offset"
.LASF203:
	.string	"infomap"
.LASF178:
	.string	"argv"
.LASF164:
	.string	"line_buf"
.LASF90:
	.string	"shell_quoting_style"
.LASF150:
	.string	"header_regex"
.LASF213:
	.string	"__ch"
.LASF53:
	.string	"long long int"
.LASF202:
	.string	"program"
.LASF80:
	.string	"Version"
.LASF81:
	.string	"exit_failure"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF143:
	.string	"Footer"
.LASF168:
	.string	"reset_numbers"
.LASF220:
	.string	"putc_unlocked"
.LASF94:
	.string	"c_quoting_style"
.LASF127:
	.string	"FADVISE_DONTNEED"
.LASF19:
	.string	"_IO_write_end"
.LASF160:
	.string	"body_del"
.LASF173:
	.string	"line_no"
.LASF110:
	.string	"fastmap"
.LASF190:
	.string	"reset_lineno"
.LASF75:
	.string	"sys_siglist"
.LASF158:
	.string	"header_del"
.LASF189:
	.string	"proc_header"
.LASF183:
	.string	"blank_lines"
.LASF8:
	.string	"__intmax_t"
.LASF86:
	.string	"GETOPT_VERSION_CHAR"
.LASF20:
	.string	"_IO_buf_base"
.LASF1:
	.string	"unsigned int"
.LASF109:
	.string	"syntax"
.LASF87:
	.string	"version_etc_copyright"
.LASF101:
	.string	"quoting_style_vals"
.LASF89:
	.string	"literal_quoting_style"
.LASF116:
	.string	"no_sub"
.LASF192:
	.string	"nl_file"
.LASF70:
	.string	"tzname"
.LASF39:
	.string	"__pad5"
.LASF259:
	.string	"src/nl.c"
.LASF66:
	.string	"flag"
.LASF113:
	.string	"can_be_null"
.LASF133:
	.string	"quoting_options"
.LASF13:
	.string	"_flags"
.LASF206:
	.string	"lc_messages"
.LASF134:
	.string	"quote_quoting_options"
.LASF40:
	.string	"_mode"
.LASF124:
	.string	"FADVISE_NORMAL"
.LASF35:
	.string	"_codecvt"
.LASF154:
	.string	"footer_fastmap"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF128:
	.string	"FADVISE_WILLNEED"
.LASF181:
	.string	"process_file"
.LASF82:
	.string	"intmax_t"
.LASF54:
	.string	"long double"
.LASF117:
	.string	"not_bol"
.LASF159:
	.string	"header_del_len"
.LASF147:
	.string	"footer_type"
.LASF42:
	.string	"FILE"
.LASF130:
	.string	"linebuffer"
.LASF157:
	.string	"section_del"
.LASF176:
	.string	"longopts"
.LASF232:
	.string	"getopt_long"
.LASF234:
	.string	"xdectoimax"
.LASF155:
	.string	"current_regex"
.LASF254:
	.string	"rpl_re_compile_pattern"
.LASF61:
	.string	"optopt"
.LASF97:
	.string	"locale_quoting_style"
.LASF131:
	.string	"size"
.LASF57:
	.string	"long long unsigned int"
.LASF132:
	.string	"length"
.LASF9:
	.string	"__off_t"
.LASF139:
	.string	"quoting_style"
.LASF79:
	.string	"program_invocation_short_name"
.LASF236:
	.string	"quote"
.LASF171:
	.string	"lineno_width"
.LASF207:
	.string	"emit_mandatory_arg_note"
.LASF38:
	.string	"_freeres_buf"
.LASF60:
	.string	"opterr"
.LASF260:
	.string	"/root/coreutils"
.LASF11:
	.string	"__time_t"
.LASF115:
	.string	"fastmap_accurate"
.LASF119:
	.string	"newline_anchor"
.LASF212:
	.string	"memset"
.LASF149:
	.string	"body_regex"
.LASF23:
	.string	"_IO_backup_base"
.LASF228:
	.string	"setlocale"
.LASF32:
	.string	"_shortbuf"
.LASF91:
	.string	"shell_always_quoting_style"
.LASF10:
	.string	"__off64_t"
.LASF249:
	.string	"fopen"
.LASF242:
	.string	"memcmp"
.LASF96:
	.string	"escape_quoting_style"
.LASF21:
	.string	"_IO_buf_end"
.LASF162:
	.string	"footer_del"
.LASF64:
	.string	"name"
.LASF217:
	.string	"fprintf"
.LASF210:
	.string	"__src"
.LASF205:
	.string	"map_prog"
.LASF48:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF191:
	.string	"print_lineno"
.LASF148:
	.string	"current_type"
.LASF224:
	.string	"__builtin_stpcpy"
.LASF199:
	.string	"usage"
.LASF231:
	.string	"atexit"
.LASF92:
	.string	"shell_escape_quoting_style"
.LASF239:
	.string	"xmalloc"
.LASF225:
	.string	"__builtin_strcpy"
.LASF31:
	.string	"_vtable_offset"
.LASF144:
	.string	"Text"
.LASF52:
	.string	"_sys_errlist"
.LASF209:
	.string	"__dest"
.LASF83:
	.string	"TIMESPEC_HZ"
.LASF68:
	.string	"__daylight"
.LASF253:
	.string	"strlen"
.LASF198:
	.string	"main"
.LASF15:
	.string	"_IO_read_end"
.LASF145:
	.string	"body_type"
.LASF200:
	.string	"status"
.LASF73:
	.string	"getdate_err"
.LASF27:
	.string	"_fileno"
.LASF230:
	.string	"textdomain"
.LASF36:
	.string	"_wide_data"
.LASF58:
	.string	"optarg"
.LASF196:
	.string	"errmsg"
.LASF233:
	.string	"dcgettext"
.LASF3:
	.string	"short unsigned int"
.LASF47:
	.string	"stdout"
.LASF172:
	.string	"lineno_format"
.LASF18:
	.string	"_IO_write_ptr"
.LASF163:
	.string	"footer_del_len"
.LASF71:
	.string	"daylight"
.LASF214:
	.string	"__len"
.LASF194:
	.string	"typep"
.LASF197:
	.string	"rval"
.LASF229:
	.string	"bindtextdomain"
.LASF99:
	.string	"custom_quoting_style"
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
