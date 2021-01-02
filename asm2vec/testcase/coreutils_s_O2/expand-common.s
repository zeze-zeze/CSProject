	.file	"expand-common.c"
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"'/' specifier only allowed with the last value"
	.text
	.p2align 4
	.type	set_extend_size, @function
set_extend_size:
.LVL0:
.LFB136:
	.file 1 "src/expand-common.c"
	.loc 1 97 1 view -0
	.cfi_startproc
	.loc 1 98 3 view .LVU1
	.loc 1 100 3 view .LVU2
	.loc 1 100 6 is_stmt 0 view .LVU3
	cmpq	$0, extend_size(%rip)
	.loc 1 97 1 view .LVU4
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$1, %eax
	.loc 1 97 1 view .LVU5
	movq	%rdi, %rbx
	.loc 1 100 6 view .LVU6
	jne	.L7
.LVL1:
	.loc 1 107 3 is_stmt 1 view .LVU7
	.loc 1 107 15 is_stmt 0 view .LVU8
	movq	%rbx, extend_size(%rip)
	.loc 1 109 3 is_stmt 1 view .LVU9
	.loc 1 110 1 is_stmt 0 view .LVU10
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL2:
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	.loc 1 102 7 is_stmt 1 view .LVU11
	.loc 1 103 14 is_stmt 0 view .LVU12
	movl	$5, %edx
	leaq	.LC0(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL3:
	.loc 1 102 7 view .LVU13
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 103 14 view .LVU14
	movq	%rax, %rdx
	.loc 1 102 7 view .LVU15
	xorl	%eax, %eax
	call	error@PLT
.LVL4:
	.loc 1 105 7 is_stmt 1 view .LVU16
	.loc 1 107 15 is_stmt 0 view .LVU17
	movq	%rbx, extend_size(%rip)
	.loc 1 105 10 view .LVU18
	xorl	%eax, %eax
.LVL5:
	.loc 1 107 3 is_stmt 1 view .LVU19
	.loc 1 109 3 view .LVU20
	.loc 1 110 1 is_stmt 0 view .LVU21
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL6:
	.loc 1 110 1 view .LVU22
	ret
	.cfi_endproc
.LFE136:
	.size	set_extend_size, .-set_extend_size
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"'+' specifier only allowed with the last value"
	.text
	.p2align 4
	.type	set_increment_size, @function
set_increment_size:
.LVL7:
.LFB137:
	.loc 1 114 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 115 3 view .LVU24
	.loc 1 117 3 view .LVU25
	.loc 1 117 6 is_stmt 0 view .LVU26
	cmpq	$0, increment_size(%rip)
	.loc 1 114 1 view .LVU27
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$1, %eax
	.loc 1 114 1 view .LVU28
	movq	%rdi, %rbx
	.loc 1 117 6 view .LVU29
	jne	.L13
.LVL8:
	.loc 1 124 3 is_stmt 1 view .LVU30
	.loc 1 124 18 is_stmt 0 view .LVU31
	movq	%rbx, increment_size(%rip)
	.loc 1 126 3 is_stmt 1 view .LVU32
	.loc 1 127 1 is_stmt 0 view .LVU33
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL9:
	.p2align 4,,10
	.p2align 3
.L13:
	.cfi_restore_state
	.loc 1 119 7 is_stmt 1 view .LVU34
	.loc 1 120 14 is_stmt 0 view .LVU35
	movl	$5, %edx
	leaq	.LC1(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL10:
	.loc 1 119 7 view .LVU36
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 120 14 view .LVU37
	movq	%rax, %rdx
	.loc 1 119 7 view .LVU38
	xorl	%eax, %eax
	call	error@PLT
.LVL11:
	.loc 1 122 7 is_stmt 1 view .LVU39
	.loc 1 124 18 is_stmt 0 view .LVU40
	movq	%rbx, increment_size(%rip)
	.loc 1 122 10 view .LVU41
	xorl	%eax, %eax
.LVL12:
	.loc 1 124 3 is_stmt 1 view .LVU42
	.loc 1 126 3 view .LVU43
	.loc 1 127 1 is_stmt 0 view .LVU44
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL13:
	.loc 1 127 1 view .LVU45
	ret
	.cfi_endproc
.LFE137:
	.size	set_increment_size, .-set_increment_size
	.p2align 4
	.globl	add_tab_stop
	.type	add_tab_stop, @function
add_tab_stop:
.LVL14:
.LFB135:
	.loc 1 79 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 79 1 is_stmt 0 view .LVU47
	endbr64
	.loc 1 80 3 is_stmt 1 view .LVU48
	.loc 1 79 1 is_stmt 0 view .LVU49
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 80 42 view .LVU50
	movq	first_free_tab(%rip), %rdx
	movq	tab_list(%rip), %rdi
.LVL15:
	.loc 1 80 42 view .LVU51
	movq	n_tabs_allocated(%rip), %rax
	.loc 1 80 73 view .LVU52
	testq	%rdx, %rdx
	je	.L27
	.loc 1 80 52 discriminator 1 view .LVU53
	leaq	0(,%rdx,8), %rcx
	.loc 1 80 73 discriminator 1 view .LVU54
	movq	-8(%rdi,%rcx), %rsi
.LVL16:
	.loc 1 81 3 is_stmt 1 discriminator 1 view .LVU55
	.loc 1 81 73 is_stmt 0 discriminator 1 view .LVU56
	cmpq	%rbx, %rsi
	jbe	.L34
.LVL17:
	.loc 1 83 3 is_stmt 1 view .LVU57
	.loc 1 83 6 is_stmt 0 view .LVU58
	cmpq	%rax, %rdx
	je	.L35
	.loc 1 85 3 is_stmt 1 view .LVU59
	.loc 1 85 26 is_stmt 0 view .LVU60
	addq	$1, %rdx
	.loc 1 85 30 view .LVU61
	movq	%rbx, (%rdi,%rcx)
	.loc 1 87 3 is_stmt 1 view .LVU62
	.loc 1 85 26 is_stmt 0 view .LVU63
	movq	%rdx, first_free_tab(%rip)
.LVL18:
.L14:
	.loc 1 93 1 view .LVU64
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL19:
	.loc 1 93 1 view .LVU65
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL20:
	.p2align 4,,10
	.p2align 3
.L27:
	.cfi_restore_state
	.loc 1 93 1 view .LVU66
	movq	%rbx, %rbp
.L15:
	.loc 1 83 3 is_stmt 1 discriminator 1 view .LVU67
	.loc 1 83 6 is_stmt 0 discriminator 1 view .LVU68
	cmpq	%rax, %rdx
	je	.L25
.L17:
	.loc 1 85 3 is_stmt 1 view .LVU69
	.loc 1 85 30 is_stmt 0 view .LVU70
	movq	%rbx, (%rdi,%rdx,8)
	.loc 1 87 3 is_stmt 1 view .LVU71
	.loc 1 85 26 is_stmt 0 view .LVU72
	leaq	1(%rdx), %rax
	.loc 1 87 6 view .LVU73
	cmpq	%rbp, max_column_width(%rip)
	.loc 1 85 26 view .LVU74
	movq	%rax, first_free_tab(%rip)
	.loc 1 87 6 view .LVU75
	jnb	.L14
	.loc 1 89 7 is_stmt 1 view .LVU76
	.loc 1 91 7 view .LVU77
	.loc 1 91 24 is_stmt 0 view .LVU78
	movq	%rbp, max_column_width(%rip)
	.loc 1 93 1 view .LVU79
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL21:
	.loc 1 93 1 view .LVU80
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL22:
	.p2align 4,,10
	.p2align 3
.L35:
	.cfi_restore_state
	.loc 1 81 73 view .LVU81
	xorl	%ebp, %ebp
.LVL23:
.L25:
.LBB13:
	.loc 1 84 5 is_stmt 1 view .LVU82
.LBB14:
.LBI14:
	.file 2 "./lib/xalloc.h"
	.loc 2 174 1 view .LVU83
.LBB15:
	.loc 2 176 3 view .LVU84
	.loc 2 178 3 view .LVU85
	.loc 2 178 6 is_stmt 0 view .LVU86
	testq	%rdi, %rdi
	je	.L36
	.loc 2 200 7 is_stmt 1 view .LVU87
	.loc 2 200 10 is_stmt 0 view .LVU88
	movabsq	$768614336404564649, %rdx
	cmpq	%rdx, %rax
	ja	.L23
	.loc 2 203 7 is_stmt 1 view .LVU89
	.loc 2 203 14 is_stmt 0 view .LVU90
	movq	%rax, %rdx
	shrq	%rdx
	.loc 2 203 9 view .LVU91
	leaq	1(%rax,%rdx), %rax
.LVL24:
	.loc 2 203 9 view .LVU92
	leaq	0(,%rax,8), %rsi
.LVL25:
.L19:
	.loc 2 206 3 is_stmt 1 view .LVU93
	.loc 2 206 7 is_stmt 0 view .LVU94
	movq	%rax, n_tabs_allocated(%rip)
	.loc 2 207 3 is_stmt 1 view .LVU95
	.loc 2 207 10 is_stmt 0 view .LVU96
	call	xrealloc@PLT
.LVL26:
	.loc 2 207 10 view .LVU97
	movq	first_free_tab(%rip), %rdx
.LBE15:
.LBE14:
	.loc 1 84 14 view .LVU98
	movq	%rax, tab_list(%rip)
.LBB18:
.LBB17:
	.loc 2 207 10 view .LVU99
	movq	%rax, %rdi
.LVL27:
	.loc 2 207 10 view .LVU100
	jmp	.L17
.LVL28:
	.p2align 4,,10
	.p2align 3
.L36:
	.loc 2 180 7 is_stmt 1 view .LVU101
	.loc 2 180 10 is_stmt 0 view .LVU102
	testq	%rax, %rax
	je	.L28
	.loc 2 191 7 is_stmt 1 view .LVU103
	.loc 2 191 11 is_stmt 0 view .LVU104
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rax, %rsi
	shrq	$61, %rcx
	setne	%dl
	salq	$3, %rsi
	js	.L23
	.loc 2 191 10 view .LVU105
	testq	%rdx, %rdx
	je	.L19
.L23:
	.loc 2 192 9 is_stmt 1 view .LVU106
	call	xalloc_die@PLT
.LVL29:
	.p2align 4,,10
	.p2align 3
.L28:
	.loc 2 192 9 is_stmt 0 view .LVU107
	movl	$128, %esi
.LBB16:
	.loc 2 189 13 view .LVU108
	movl	$16, %eax
.LVL30:
	.loc 2 189 13 view .LVU109
	jmp	.L19
.LVL31:
.L34:
	.loc 2 189 13 view .LVU110
	movq	%rbx, %rbp
	subq	%rsi, %rbp
	jmp	.L15
.LBE16:
.LBE17:
.LBE18:
.LBE13:
	.cfi_endproc
.LFE135:
	.size	add_tab_stop, .-add_tab_stop
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"'/' specifier not at start of number: %s"
	.align 8
.LC3:
	.string	"'+' specifier not at start of number: %s"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"0123456789"
.LC5:
	.string	"tab stop is too large %s"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"tab size contains invalid character(s): %s"
	.text
	.p2align 4
	.globl	parse_tab_stops
	.type	parse_tab_stops, @function
parse_tab_stops:
.LVL32:
.LFB138:
	.loc 1 133 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 133 1 is_stmt 0 view .LVU112
	endbr64
	.loc 1 134 3 is_stmt 1 view .LVU113
.LVL33:
	.loc 1 135 3 view .LVU114
	.loc 1 136 3 view .LVU115
	.loc 1 137 3 view .LVU116
	.loc 1 138 3 view .LVU117
	.loc 1 139 3 view .LVU118
	.loc 1 141 3 view .LVU119
	.loc 1 141 10 view .LVU120
	.loc 1 133 1 is_stmt 0 view .LVU121
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 141 10 view .LVU122
	movzbl	(%rdi), %r15d
	.loc 1 141 3 view .LVU123
	testb	%r15b, %r15b
	je	.L37
	.loc 1 139 8 view .LVU124
	movb	$1, 8(%rsp)
	movq	%rdi, %rbp
	.loc 1 135 13 view .LVU125
	xorl	%r14d, %r14d
	.loc 1 137 8 view .LVU126
	xorl	%r13d, %r13d
	.loc 1 138 15 view .LVU127
	movq	$0, (%rsp)
	.loc 1 136 8 view .LVU128
	xorl	%r12d, %r12d
	.loc 1 134 8 view .LVU129
	xorl	%ebx, %ebx
	jmp	.L51
.LVL34:
	.p2align 4,,10
	.p2align 3
.L82:
	.loc 1 143 28 discriminator 1 view .LVU130
	call	__ctype_b_loc@PLT
.LVL35:
.LBB19:
.LBI19:
	.file 3 "src/system.h"
	.loc 3 156 29 is_stmt 1 discriminator 1 view .LVU131
.LBB20:
	.loc 3 156 50 discriminator 1 view .LVU132
	.loc 3 156 50 is_stmt 0 discriminator 1 view .LVU133
.LBE20:
.LBE19:
	.loc 1 143 28 discriminator 1 view .LVU134
	movq	%rax, %r8
	movzbl	%r15b, %eax
	movq	(%r8), %rcx
	.loc 1 143 25 discriminator 1 view .LVU135
	testb	$1, (%rcx,%rax,2)
	jne	.L39
	.loc 1 168 12 is_stmt 1 view .LVU136
	.loc 1 168 15 is_stmt 0 view .LVU137
	cmpb	$47, %r15b
	je	.L79
	.loc 1 179 12 is_stmt 1 view .LVU138
	.loc 1 179 15 is_stmt 0 view .LVU139
	cmpb	$43, %r15b
	je	.L80
	.loc 1 190 12 is_stmt 1 view .LVU140
	.loc 1 190 16 is_stmt 0 view .LVU141
	movsbl	%r15b, %edx
	subl	$48, %edx
	.loc 1 190 15 view .LVU142
	cmpl	$9, %edx
	ja	.L47
	.loc 1 192 11 is_stmt 1 view .LVU143
	.loc 1 192 14 is_stmt 0 view .LVU144
	testb	%bl, %bl
	jne	.L48
	.loc 1 194 15 is_stmt 1 view .LVU145
.LVL36:
	.loc 1 195 15 view .LVU146
	.loc 1 196 15 view .LVU147
	.loc 1 200 11 view .LVU148
.LBB21:
	.loc 1 200 16 is_stmt 0 view .LVU149
	movq	%rbp, (%rsp)
	movslq	%edx, %r14
	movq	%rbp, %rax
	movl	$1, %ebx
.LVL37:
	.p2align 4,,10
	.p2align 3
.L41:
	.loc 1 200 16 view .LVU150
.LBE21:
	.loc 1 141 18 is_stmt 1 view .LVU151
	.loc 1 141 10 is_stmt 0 view .LVU152
	movzbl	1(%rax), %r15d
	.loc 1 141 23 view .LVU153
	leaq	1(%rax), %rbp
.LVL38:
	.loc 1 141 10 is_stmt 1 view .LVU154
	.loc 1 141 3 is_stmt 0 view .LVU155
	testb	%r15b, %r15b
	je	.L81
.LVL39:
.L51:
	.loc 1 143 7 is_stmt 1 view .LVU156
	.loc 1 143 10 is_stmt 0 view .LVU157
	cmpb	$44, %r15b
	jne	.L82
.L39:
	.loc 1 145 11 is_stmt 1 view .LVU158
	.loc 1 145 14 is_stmt 0 view .LVU159
	testb	%bl, %bl
	je	.L78
	.loc 1 147 15 is_stmt 1 view .LVU160
	.loc 1 149 25 is_stmt 0 view .LVU161
	movq	%r14, %rdi
	.loc 1 147 18 view .LVU162
	testb	%r12b, %r12b
	jne	.L83
.LVL40:
	.loc 1 155 20 is_stmt 1 view .LVU163
	.loc 1 155 23 is_stmt 0 view .LVU164
	testb	%r13b, %r13b
	je	.L44
	.loc 1 157 19 is_stmt 1 view .LVU165
	.loc 1 157 25 is_stmt 0 view .LVU166
	call	set_increment_size
.LVL41:
	.loc 1 157 25 view .LVU167
	movl	%eax, %r13d
.LVL42:
	.loc 1 157 22 view .LVU168
	testb	%al, %al
	je	.L50
	movq	%rbp, %rax
.LVL43:
	.loc 1 166 23 view .LVU169
	xorl	%ebx, %ebx
.LVL44:
	.loc 1 141 18 is_stmt 1 view .LVU170
	.loc 1 141 10 is_stmt 0 view .LVU171
	movzbl	1(%rax), %r15d
	.loc 1 141 23 view .LVU172
	leaq	1(%rax), %rbp
.LVL45:
	.loc 1 141 10 is_stmt 1 view .LVU173
	.loc 1 141 3 is_stmt 0 view .LVU174
	testb	%r15b, %r15b
	jne	.L51
	.p2align 4,,10
	.p2align 3
.L81:
	.loc 1 219 3 is_stmt 1 view .LVU175
	.loc 1 219 6 is_stmt 0 view .LVU176
	testb	%bl, %bl
	je	.L54
	.loc 1 219 6 view .LVU177
	cmpb	$0, 8(%rsp)
	je	.L50
	.loc 1 221 7 is_stmt 1 view .LVU178
	.loc 1 222 15 is_stmt 0 view .LVU179
	movq	%r14, %rdi
	.loc 1 221 10 view .LVU180
	testb	%r12b, %r12b
	jne	.L84
.LVL46:
	.loc 1 223 12 is_stmt 1 view .LVU181
	.loc 1 223 15 is_stmt 0 view .LVU182
	testb	%r13b, %r13b
	je	.L56
	.loc 1 224 9 is_stmt 1 view .LVU183
	.loc 1 224 15 is_stmt 0 view .LVU184
	call	set_increment_size
.LVL47:
	.loc 1 224 15 view .LVU185
	movb	%al, 8(%rsp)
.LVL48:
.L54:
	.loc 1 229 3 is_stmt 1 view .LVU186
	.loc 1 229 6 is_stmt 0 view .LVU187
	cmpb	$0, 8(%rsp)
	je	.L50
.LVL49:
.L37:
	.loc 1 231 1 view .LVU188
	addq	$24, %rsp
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
.LVL50:
	.p2align 4,,10
	.p2align 3
.L87:
	.cfi_restore_state
.LBB23:
	.loc 1 200 16 discriminator 1 view .LVU189
	leaq	(%r14,%r14,4), %rax
	movslq	%edx, %rdx
	leaq	(%rdx,%rax,2), %rax
	cmpq	%r14, %rax
	jb	.L49
	movq	%rax, %r14
.LVL51:
	.p2align 4,,10
	.p2align 3
.L78:
	.loc 1 200 16 discriminator 1 view .LVU190
	movq	%rbp, %rax
	jmp	.L41
.LVL52:
	.p2align 4,,10
	.p2align 3
.L44:
	.loc 1 200 16 discriminator 1 view .LVU191
.LBE23:
	.loc 1 164 17 is_stmt 1 view .LVU192
	call	add_tab_stop
.LVL53:
	.loc 1 164 17 is_stmt 0 view .LVU193
	movl	%r13d, %r12d
.LVL54:
	.loc 1 166 23 view .LVU194
	xorl	%ebx, %ebx
.LVL55:
	.loc 1 164 17 view .LVU195
	movq	%rbp, %rax
	jmp	.L41
.LVL56:
	.p2align 4,,10
	.p2align 3
.L79:
	.loc 1 170 11 is_stmt 1 view .LVU196
	.loc 1 170 14 is_stmt 0 view .LVU197
	testb	%bl, %bl
	jne	.L85
	.loc 1 177 28 view .LVU198
	xorl	%r13d, %r13d
.LVL57:
	.loc 1 177 28 view .LVU199
	movq	%rbp, %rax
	.loc 1 176 25 view .LVU200
	movl	$1, %r12d
.LVL58:
	.loc 1 176 25 view .LVU201
	jmp	.L41
.LVL59:
	.p2align 4,,10
	.p2align 3
.L83:
	.loc 1 149 19 is_stmt 1 view .LVU202
	.loc 1 149 25 is_stmt 0 view .LVU203
	call	set_extend_size
.LVL60:
	.loc 1 149 25 view .LVU204
	movl	%eax, %r12d
.LVL61:
	.loc 1 149 22 view .LVU205
	testb	%al, %al
	je	.L50
	movq	%rbp, %rax
	.loc 1 166 23 view .LVU206
	xorl	%ebx, %ebx
.LVL62:
	.loc 1 166 23 view .LVU207
	jmp	.L41
.LVL63:
	.p2align 4,,10
	.p2align 3
.L80:
	.loc 1 181 11 is_stmt 1 view .LVU208
	.loc 1 181 14 is_stmt 0 view .LVU209
	testb	%bl, %bl
	jne	.L86
	.loc 1 188 25 view .LVU210
	xorl	%r12d, %r12d
.LVL64:
	.loc 1 188 25 view .LVU211
	movq	%rbp, %rax
	.loc 1 187 28 view .LVU212
	movl	$1, %r13d
.LVL65:
	.loc 1 187 28 view .LVU213
	jmp	.L41
.LVL66:
	.p2align 4,,10
	.p2align 3
.L48:
	.loc 1 200 11 is_stmt 1 view .LVU214
.LBB24:
	.loc 1 200 15 is_stmt 0 view .LVU215
	movabsq	$1844674407370955161, %rax
	cmpq	%rax, %r14
	jbe	.L87
.L49:
.LVL67:
.LBB22:
	.loc 1 202 15 is_stmt 1 view .LVU216
	.loc 1 202 28 is_stmt 0 view .LVU217
	movq	(%rsp), %r15
	leaq	.LC4(%rip), %rsi
	movq	%r15, %rdi
	call	strspn@PLT
.LVL68:
	.loc 1 203 31 view .LVU218
	movq	%r15, %rdi
	movq	%r15, (%rsp)
.LVL69:
	.loc 1 203 31 view .LVU219
	movq	%rax, %rsi
	.loc 1 202 28 view .LVU220
	movq	%rax, %rbp
.LVL70:
	.loc 1 203 15 is_stmt 1 view .LVU221
	.loc 1 203 31 is_stmt 0 view .LVU222
	call	xstrndup@PLT
.LVL71:
	.loc 1 204 15 view .LVU223
	movq	%rax, %rdi
	.loc 1 203 31 view .LVU224
	movq	%rax, %r15
.LVL72:
	.loc 1 204 15 is_stmt 1 view .LVU225
	call	quote@PLT
.LVL73:
	.loc 1 204 28 is_stmt 0 view .LVU226
	movl	$5, %edx
	leaq	.LC5(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 204 15 view .LVU227
	movq	%rax, 8(%rsp)
.LVL74:
	.loc 1 204 28 view .LVU228
	call	dcgettext@PLT
.LVL75:
	.loc 1 204 15 view .LVU229
	movq	8(%rsp), %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 204 28 view .LVU230
	movq	%rax, %rdx
	.loc 1 204 15 view .LVU231
	xorl	%eax, %eax
	call	error@PLT
.LVL76:
	.loc 1 205 15 is_stmt 1 view .LVU232
	movq	%r15, %rdi
	call	free@PLT
.LVL77:
	.loc 1 206 15 view .LVU233
	.loc 1 207 15 view .LVU234
	.loc 1 207 21 is_stmt 0 view .LVU235
	movq	(%rsp), %r15
.LVL78:
	.loc 1 206 18 view .LVU236
	movb	$0, 8(%rsp)
	.loc 1 207 21 view .LVU237
	leaq	-1(%r15,%rbp), %rax
.LVL79:
	.loc 1 207 21 view .LVU238
	jmp	.L41
.LVL80:
	.p2align 4,,10
	.p2align 3
.L85:
	.loc 1 207 21 view .LVU239
.LBE22:
.LBE24:
	.loc 1 172 15 is_stmt 1 view .LVU240
	movq	%rbp, %rdi
	.loc 1 177 28 is_stmt 0 view .LVU241
	xorl	%r13d, %r13d
.LVL81:
	.loc 1 172 15 view .LVU242
	call	quote@PLT
.LVL82:
	.loc 1 172 28 view .LVU243
	movl	$5, %edx
	leaq	.LC2(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 172 15 view .LVU244
	movq	%rax, %r12
.LVL83:
	.loc 1 172 28 view .LVU245
	call	dcgettext@PLT
.LVL84:
	.loc 1 172 15 view .LVU246
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 172 28 view .LVU247
	movq	%rax, %rdx
	.loc 1 172 15 view .LVU248
	xorl	%eax, %eax
	.loc 1 176 25 view .LVU249
	movl	%ebx, %r12d
	.loc 1 172 15 view .LVU250
	call	error@PLT
.LVL85:
	.loc 1 174 15 is_stmt 1 view .LVU251
	.loc 1 174 18 is_stmt 0 view .LVU252
	movb	$0, 8(%rsp)
	.loc 1 172 15 view .LVU253
	movq	%rbp, %rax
	jmp	.L41
.LVL86:
	.p2align 4,,10
	.p2align 3
.L86:
	.loc 1 183 15 is_stmt 1 view .LVU254
	movq	%rbp, %rdi
	.loc 1 187 28 is_stmt 0 view .LVU255
	movl	%ebx, %r13d
.LVL87:
	.loc 1 183 15 view .LVU256
	call	quote@PLT
.LVL88:
	.loc 1 183 28 view .LVU257
	movl	$5, %edx
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 183 15 view .LVU258
	movq	%rax, %r12
.LVL89:
	.loc 1 183 28 view .LVU259
	call	dcgettext@PLT
.LVL90:
	.loc 1 183 15 view .LVU260
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 183 28 view .LVU261
	movq	%rax, %rdx
	.loc 1 183 15 view .LVU262
	xorl	%eax, %eax
	.loc 1 188 25 view .LVU263
	xorl	%r12d, %r12d
	.loc 1 183 15 view .LVU264
	call	error@PLT
.LVL91:
	.loc 1 185 15 is_stmt 1 view .LVU265
	.loc 1 185 18 is_stmt 0 view .LVU266
	movb	$0, 8(%rsp)
	.loc 1 183 15 view .LVU267
	movq	%rbp, %rax
	jmp	.L41
.LVL92:
.L56:
	.loc 1 226 9 is_stmt 1 view .LVU268
	.loc 1 231 1 is_stmt 0 view .LVU269
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
.LVL93:
	.loc 1 231 1 view .LVU270
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL94:
	.loc 1 231 1 view .LVU271
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL95:
	.loc 1 231 1 view .LVU272
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL96:
	.loc 1 231 1 view .LVU273
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL97:
	.loc 1 231 1 view .LVU274
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.loc 1 226 9 view .LVU275
	jmp	add_tab_stop
.LVL98:
.L84:
	.cfi_restore_state
	.loc 1 222 9 is_stmt 1 view .LVU276
	.loc 1 222 15 is_stmt 0 view .LVU277
	call	set_extend_size
.LVL99:
	.loc 1 222 15 view .LVU278
	movb	%al, 8(%rsp)
.LVL100:
	.loc 1 229 3 is_stmt 1 view .LVU279
	.loc 1 229 6 is_stmt 0 view .LVU280
	cmpb	$0, 8(%rsp)
	jne	.L37
	jmp	.L50
.LVL101:
	.p2align 4,,10
	.p2align 3
.L47:
	.loc 1 212 11 is_stmt 1 view .LVU281
	movq	%rbp, %rdi
	call	quote@PLT
.LVL102:
	.loc 1 212 24 is_stmt 0 view .LVU282
	movl	$5, %edx
	leaq	.LC6(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 212 11 view .LVU283
	movq	%rax, %r12
.LVL103:
	.loc 1 212 24 view .LVU284
	call	dcgettext@PLT
.LVL104:
	.loc 1 212 11 view .LVU285
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 212 24 view .LVU286
	movq	%rax, %rdx
	.loc 1 212 11 view .LVU287
	xorl	%eax, %eax
	call	error@PLT
.LVL105:
	.loc 1 214 11 is_stmt 1 view .LVU288
	.loc 1 215 11 view .LVU289
	.loc 1 219 3 view .LVU290
	.loc 1 229 3 view .LVU291
.L50:
	.loc 1 230 5 view .LVU292
	movl	$1, %edi
	call	exit@PLT
.LVL106:
	.cfi_endproc
.LFE138:
	.size	parse_tab_stops, .-parse_tab_stops
	.section	.rodata.str1.1
.LC7:
	.string	"tab size cannot be 0"
.LC8:
	.string	"tab sizes must be ascending"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"'/' specifier is mutually exclusive with '+'"
	.text
	.p2align 4
	.globl	finalize_tab_stops
	.type	finalize_tab_stops, @function
finalize_tab_stops:
.LFB140:
	.loc 1 264 1 view -0
	.cfi_startproc
	endbr64
	.loc 1 265 3 view .LVU294
	.loc 1 264 1 is_stmt 0 view .LVU295
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 265 3 view .LVU296
	movq	first_free_tab(%rip), %rcx
	movq	tab_list(%rip), %rsi
.LVL107:
.LBB31:
.LBI31:
	.loc 1 237 1 is_stmt 1 view .LVU297
.LBB32:
	.loc 1 239 3 view .LVU298
	.loc 1 241 3 view .LVU299
.LBB33:
	.loc 1 241 8 view .LVU300
	.loc 1 241 22 view .LVU301
	.loc 1 241 3 is_stmt 0 view .LVU302
	testq	%rcx, %rcx
	je	.L89
.LBE33:
	.loc 1 239 13 view .LVU303
	xorl	%edx, %edx
.LBB36:
	.loc 1 241 15 view .LVU304
	xorl	%eax, %eax
.LVL108:
	.p2align 4,,10
	.p2align 3
.L92:
	.loc 1 243 7 is_stmt 1 view .LVU305
	movq	%rdx, %rdi
	.loc 1 243 15 is_stmt 0 view .LVU306
	movq	(%rsi,%rax,8), %rdx
.LVL109:
	.loc 1 243 10 view .LVU307
	testq	%rdx, %rdx
	je	.L105
	.loc 1 245 7 is_stmt 1 view .LVU308
	.loc 1 245 10 is_stmt 0 view .LVU309
	cmpq	%rdx, %rdi
	jnb	.L106
	.loc 1 247 7 is_stmt 1 view .LVU310
.LVL110:
	.loc 1 241 35 view .LVU311
	.loc 1 241 36 is_stmt 0 view .LVU312
	addq	$1, %rax
.LVL111:
	.loc 1 241 22 is_stmt 1 view .LVU313
	.loc 1 241 3 is_stmt 0 view .LVU314
	cmpq	%rax, %rcx
	jne	.L92
.LBE36:
	.loc 1 250 3 is_stmt 1 view .LVU315
	.loc 1 250 7 is_stmt 0 view .LVU316
	movq	increment_size(%rip), %rax
.LVL112:
	.loc 1 250 6 view .LVU317
	testq	%rax, %rax
	je	.L98
	.loc 1 250 22 view .LVU318
	cmpq	$0, extend_size(%rip)
	jne	.L100
.L98:
.LVL113:
	.loc 1 250 22 view .LVU319
.LBE32:
.LBE31:
	.loc 1 271 8 is_stmt 1 view .LVU320
	.loc 1 271 11 is_stmt 0 view .LVU321
	cmpq	$1, %rcx
	je	.L107
.L96:
	.loc 1 274 5 is_stmt 1 view .LVU322
	.loc 1 274 14 is_stmt 0 view .LVU323
	movq	$0, tab_size(%rip)
.L88:
	.loc 1 275 1 view .LVU324
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L107:
	.cfi_restore_state
	.loc 1 271 49 discriminator 1 view .LVU325
	orq	extend_size(%rip), %rax
	jne	.L96
	.loc 1 272 5 is_stmt 1 view .LVU326
	.loc 1 272 14 is_stmt 0 view .LVU327
	movq	(%rsi), %rax
	movq	%rax, tab_size(%rip)
	jmp	.L88
.LVL114:
.L100:
.LBB41:
.LBB39:
.LBB37:
	.loc 1 251 5 is_stmt 1 view .LVU328
	movl	$5, %edx
	leaq	.LC9(%rip), %rsi
.LVL115:
	.loc 1 251 5 is_stmt 0 view .LVU329
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL116:
	.loc 1 251 5 view .LVU330
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL117:
	.p2align 4,,10
	.p2align 3
.L89:
	.loc 1 251 5 view .LVU331
.LBE37:
	.loc 1 250 3 is_stmt 1 view .LVU332
	.loc 1 250 7 is_stmt 0 view .LVU333
	movq	increment_size(%rip), %rdx
	movq	extend_size(%rip), %rax
	.loc 1 250 6 view .LVU334
	testq	%rdx, %rdx
	jne	.L108
.LVL118:
	.loc 1 250 6 view .LVU335
.LBE39:
.LBE41:
	.loc 1 268 5 is_stmt 1 view .LVU336
	.loc 1 270 68 is_stmt 0 view .LVU337
	testq	%rax, %rax
	movl	$8, %edx
	cmove	%rdx, %rax
.L94:
	.loc 1 268 33 view .LVU338
	movq	%rax, max_column_width(%rip)
	.loc 1 268 14 view .LVU339
	movq	%rax, tab_size(%rip)
	.loc 1 275 1 view .LVU340
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL119:
	.p2align 4,,10
	.p2align 3
.L106:
	.cfi_restore_state
.LBB42:
.LBB40:
.LBB38:
.LBB34:
	.loc 1 246 9 is_stmt 1 view .LVU341
	movl	$5, %edx
	leaq	.LC8(%rip), %rsi
.LVL120:
	.loc 1 246 9 is_stmt 0 view .LVU342
	xorl	%edi, %edi
.LVL121:
	.loc 1 246 9 view .LVU343
	call	dcgettext@PLT
.LVL122:
	.loc 1 246 9 view .LVU344
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL123:
	.p2align 4,,10
	.p2align 3
.L105:
	.loc 1 246 9 view .LVU345
.LBE34:
.LBB35:
	.loc 1 244 9 is_stmt 1 view .LVU346
	movl	$5, %edx
	leaq	.LC7(%rip), %rsi
.LVL124:
	.loc 1 244 9 is_stmt 0 view .LVU347
	xorl	%edi, %edi
.LVL125:
	.loc 1 244 9 view .LVU348
	call	dcgettext@PLT
.LVL126:
	.loc 1 244 9 view .LVU349
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL127:
.L108:
	.loc 1 244 9 view .LVU350
.LBE35:
.LBE38:
	.loc 1 250 22 view .LVU351
	testq	%rax, %rax
	jne	.L100
	.loc 1 250 7 view .LVU352
	movq	%rdx, %rax
	jmp	.L94
.LBE40:
.LBE42:
	.cfi_endproc
.LFE140:
	.size	finalize_tab_stops, .-finalize_tab_stops
	.p2align 4
	.globl	get_next_tab_column
	.type	get_next_tab_column, @function
get_next_tab_column:
.LVL128:
.LFB141:
	.loc 1 281 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 281 1 is_stmt 0 view .LVU354
	endbr64
	.loc 1 282 3 is_stmt 1 view .LVU355
	.loc 1 285 7 is_stmt 0 view .LVU356
	movq	tab_size(%rip), %rcx
	.loc 1 282 13 view .LVU357
	movb	$0, (%rdx)
	.loc 1 285 3 is_stmt 1 view .LVU358
	.loc 1 281 1 is_stmt 0 view .LVU359
	movq	%rdi, %rax
	.loc 1 285 6 view .LVU360
	testq	%rcx, %rcx
	jne	.L119
	.loc 1 290 11 is_stmt 1 view .LVU361
	movq	(%rsi), %rcx
	.loc 1 290 22 is_stmt 0 view .LVU362
	movq	first_free_tab(%rip), %rdi
.LVL129:
.LBB43:
	.loc 1 292 33 view .LVU363
	movq	tab_list(%rip), %r9
.LBE43:
	.loc 1 290 3 view .LVU364
	cmpq	%rcx, %rdi
	ja	.L114
	jmp	.L112
.LVL130:
	.p2align 4,,10
	.p2align 3
.L120:
	.loc 1 290 41 is_stmt 1 view .LVU365
	.loc 1 290 53 is_stmt 0 view .LVU366
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	.loc 1 290 11 is_stmt 1 view .LVU367
	.loc 1 290 3 is_stmt 0 view .LVU368
	cmpq	%rdi, %rcx
	je	.L112
.LVL131:
.L114:
.LBB44:
	.loc 1 292 9 is_stmt 1 view .LVU369
	.loc 1 292 19 is_stmt 0 view .LVU370
	movq	(%r9,%rcx,8), %r8
.LVL132:
	.loc 1 293 9 is_stmt 1 view .LVU371
	.loc 1 293 12 is_stmt 0 view .LVU372
	cmpq	%r8, %rax
	jnb	.L120
.LVL133:
.L109:
	.loc 1 293 12 view .LVU373
.LBE44:
	.loc 1 311 1 view .LVU374
	movq	%r8, %rax
	ret
.LVL134:
	.p2align 4,,10
	.p2align 3
.L119:
	.loc 1 299 5 is_stmt 1 view .LVU375
	.loc 1 299 43 is_stmt 0 view .LVU376
	xorl	%edx, %edx
.LVL135:
	.loc 1 299 19 view .LVU377
	leaq	(%rcx,%rax), %r8
	.loc 1 299 43 view .LVU378
	divq	%rcx
.LVL136:
	.loc 1 299 19 view .LVU379
	subq	%rdx, %r8
	.loc 1 311 1 view .LVU380
	movq	%r8, %rax
	ret
.LVL137:
	.p2align 4,,10
	.p2align 3
.L112:
	.loc 1 298 3 is_stmt 1 view .LVU381
	.loc 1 298 7 is_stmt 0 view .LVU382
	movq	extend_size(%rip), %rcx
	.loc 1 298 6 view .LVU383
	testq	%rcx, %rcx
	jne	.L119
	.loc 1 302 3 is_stmt 1 view .LVU384
	.loc 1 302 7 is_stmt 0 view .LVU385
	movq	increment_size(%rip), %r8
	.loc 1 302 6 view .LVU386
	testq	%r8, %r8
	jne	.L121
	.loc 1 309 3 is_stmt 1 view .LVU387
	.loc 1 309 13 is_stmt 0 view .LVU388
	movb	$1, (%rdx)
	.loc 1 310 3 is_stmt 1 view .LVU389
	.loc 1 311 1 is_stmt 0 view .LVU390
	movq	%r8, %rax
.LVL138:
	.loc 1 311 1 view .LVU391
	ret
.LVL139:
	.p2align 4,,10
	.p2align 3
.L121:
.LBB45:
	.loc 1 304 7 is_stmt 1 view .LVU392
	.loc 1 306 7 view .LVU393
	.loc 1 304 17 is_stmt 0 view .LVU394
	movq	tab_list(%rip), %rdx
.LVL140:
	.loc 1 306 21 view .LVU395
	leaq	(%r8,%rax), %rcx
	.loc 1 306 50 view .LVU396
	subq	-8(%rdx,%rdi,8), %rax
.LVL141:
	.loc 1 306 61 view .LVU397
	xorl	%edx, %edx
	divq	%r8
	.loc 1 306 21 view .LVU398
	subq	%rdx, %rcx
	movq	%rcx, %r8
	jmp	.L109
.LBE45:
	.cfi_endproc
.LFE141:
	.size	get_next_tab_column, .-get_next_tab_column
	.p2align 4
	.globl	set_file_list
	.type	set_file_list, @function
set_file_list:
.LVL142:
.LFB142:
	.loc 1 319 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 319 1 is_stmt 0 view .LVU400
	endbr64
	.loc 1 320 3 is_stmt 1 view .LVU401
	.loc 1 323 15 is_stmt 0 view .LVU402
	testq	%rdi, %rdi
	leaq	stdin_argv(%rip), %rax
	.loc 1 320 19 view .LVU403
	movb	$0, have_read_stdin(%rip)
	.loc 1 322 3 is_stmt 1 view .LVU404
	.loc 1 323 15 is_stmt 0 view .LVU405
	cmove	%rax, %rdi
.LVL143:
	.loc 1 323 15 view .LVU406
	movq	%rdi, file_list(%rip)
	.loc 1 326 1 view .LVU407
	ret
	.cfi_endproc
.LFE142:
	.size	set_file_list, .-set_file_list
	.section	.rodata.str1.1
.LC10:
	.string	"src/expand-common.c"
.LC11:
	.string	"prev_file"
.LC12:
	.string	"%s"
.LC13:
	.string	"r"
	.text
	.p2align 4
	.globl	next_file
	.type	next_file, @function
next_file:
.LVL144:
.LFB143:
	.loc 1 335 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 335 1 is_stmt 0 view .LVU409
	endbr64
	.loc 1 336 3 is_stmt 1 view .LVU410
	.loc 1 337 3 view .LVU411
	.loc 1 339 3 view .LVU412
	.loc 1 335 1 is_stmt 0 view .LVU413
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 339 6 view .LVU414
	testq	%rdi, %rdi
	je	.L126
	.loc 1 341 7 is_stmt 1 view .LVU415
	movq	prev_file.7181(%rip), %rdx
	testq	%rdx, %rdx
	je	.L148
	movq	%rdi, %r12
	.loc 1 342 7 view .LVU416
.LVL145:
.LBB46:
.LBI46:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 4 135 1 view .LVU417
.LBB47:
	.loc 4 137 3 view .LVU418
	.loc 4 137 3 is_stmt 0 view .LVU419
.LBE47:
.LBE46:
	.loc 1 342 10 view .LVU420
	testb	$32, (%rdi)
	jne	.L149
	.loc 1 347 7 is_stmt 1 view .LVU421
	.loc 1 347 11 is_stmt 0 view .LVU422
	cmpb	$45, (%rdx)
	.loc 1 348 9 view .LVU423
	movq	%r12, %rdi
	.loc 1 347 11 view .LVU424
	jne	.L130
.L151:
	.loc 1 347 10 view .LVU425
	cmpb	$0, 1(%rdx)
	jne	.L130
	.loc 1 348 9 is_stmt 1 view .LVU426
	call	clearerr_unlocked@PLT
.LVL146:
.L126:
	.loc 1 356 9 view .LVU427
	.loc 1 356 28 is_stmt 0 view .LVU428
	movq	file_list(%rip), %rax
	.loc 1 364 14 view .LVU429
	leaq	.LC13(%rip), %rbx
	.loc 1 356 16 view .LVU430
	movq	(%rax), %r12
.LVL147:
	.loc 1 356 28 view .LVU431
	leaq	8(%rax), %rdx
	movq	%rdx, file_list(%rip)
	.loc 1 356 9 view .LVU432
	testq	%r12, %r12
	jne	.L132
	jmp	.L138
.LVL148:
	.p2align 4,,10
	.p2align 3
.L135:
	.loc 1 364 9 is_stmt 1 view .LVU433
	.loc 1 364 14 is_stmt 0 view .LVU434
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	fopen@PLT
.LVL149:
	.loc 1 365 7 is_stmt 1 view .LVU435
	.loc 1 365 10 is_stmt 0 view .LVU436
	testq	%rax, %rax
	jne	.L150
.L137:
	.loc 1 371 7 is_stmt 1 view .LVU437
	movq	%r12, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL150:
	.loc 1 371 7 is_stmt 0 view .LVU438
	movq	%rax, %r12
.LVL151:
	.loc 1 371 17 view .LVU439
	call	__errno_location@PLT
.LVL152:
	.loc 1 371 7 view .LVU440
	movq	%r12, %rcx
	leaq	.LC12(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL153:
	.loc 1 372 7 is_stmt 1 view .LVU441
	.loc 1 356 28 is_stmt 0 view .LVU442
	movq	file_list(%rip), %rax
	.loc 1 372 19 view .LVU443
	movl	$1, exit_status(%rip)
	.loc 1 356 9 is_stmt 1 view .LVU444
	.loc 1 356 16 is_stmt 0 view .LVU445
	movq	(%rax), %r12
.LVL154:
	.loc 1 356 28 view .LVU446
	leaq	8(%rax), %rdx
	movq	%rdx, file_list(%rip)
	.loc 1 356 9 view .LVU447
	testq	%r12, %r12
	je	.L138
.L132:
	.loc 1 358 7 is_stmt 1 view .LVU448
	.loc 1 358 11 is_stmt 0 view .LVU449
	cmpb	$45, (%r12)
	jne	.L135
	.loc 1 358 10 view .LVU450
	cmpb	$0, 1(%r12)
	jne	.L135
	.loc 1 360 11 is_stmt 1 view .LVU451
	.loc 1 361 14 is_stmt 0 view .LVU452
	movq	stdin(%rip), %rax
	.loc 1 360 27 view .LVU453
	movb	$1, have_read_stdin(%rip)
	.loc 1 361 11 is_stmt 1 view .LVU454
.LVL155:
	.loc 1 365 7 view .LVU455
	.loc 1 365 10 is_stmt 0 view .LVU456
	testq	%rax, %rax
	je	.L137
.L150:
	.loc 1 367 11 is_stmt 1 view .LVU457
	.loc 1 368 11 is_stmt 0 view .LVU458
	movq	%rax, %rdi
	movl	$2, %esi
	movq	%rax, 8(%rsp)
	.loc 1 367 21 view .LVU459
	movq	%r12, prev_file.7181(%rip)
	.loc 1 368 11 is_stmt 1 view .LVU460
	call	fadvise@PLT
.LVL156:
	.loc 1 369 11 view .LVU461
	.loc 1 369 18 is_stmt 0 view .LVU462
	movq	8(%rsp), %rax
	.loc 1 375 1 view .LVU463
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL157:
	.loc 1 375 1 view .LVU464
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.LVL158:
	.p2align 4,,10
	.p2align 3
.L138:
	.cfi_restore_state
	.loc 1 375 1 view .LVU465
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	.loc 1 374 10 view .LVU466
	xorl	%eax, %eax
	.loc 1 375 1 view .LVU467
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL159:
	.loc 1 375 1 view .LVU468
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.LVL160:
	.p2align 4,,10
	.p2align 3
.L130:
	.cfi_restore_state
	.loc 1 349 12 is_stmt 1 view .LVU469
	.loc 1 349 16 is_stmt 0 view .LVU470
	call	rpl_fclose@PLT
.LVL161:
	.loc 1 349 15 view .LVU471
	testl	%eax, %eax
	je	.L126
	.loc 1 351 11 is_stmt 1 view .LVU472
	movq	prev_file.7181(%rip), %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL162:
	movq	%rax, %r12
.LVL163:
	.loc 1 351 21 is_stmt 0 view .LVU473
	call	__errno_location@PLT
.LVL164:
	.loc 1 351 11 view .LVU474
	movq	%r12, %rcx
	leaq	.LC12(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL165:
	.loc 1 352 11 is_stmt 1 view .LVU475
	.loc 1 352 23 is_stmt 0 view .LVU476
	movl	$1, exit_status(%rip)
	jmp	.L126
.LVL166:
	.p2align 4,,10
	.p2align 3
.L149:
	.loc 1 344 11 is_stmt 1 view .LVU477
	xorl	%edi, %edi
.LVL167:
	.loc 1 344 11 is_stmt 0 view .LVU478
	movl	$3, %esi
	call	quotearg_n_style_colon@PLT
.LVL168:
	movq	%rax, %r13
	.loc 1 344 21 view .LVU479
	call	__errno_location@PLT
.LVL169:
	.loc 1 344 11 view .LVU480
	xorl	%edi, %edi
	leaq	.LC12(%rip), %rdx
	movq	%r13, %rcx
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL170:
	.loc 1 345 11 is_stmt 1 view .LVU481
	movq	prev_file.7181(%rip), %rdx
	.loc 1 347 7 view .LVU482
	.loc 1 348 9 is_stmt 0 view .LVU483
	movq	%r12, %rdi
	.loc 1 345 23 view .LVU484
	movl	$1, exit_status(%rip)
	.loc 1 347 11 view .LVU485
	cmpb	$45, (%rdx)
	jne	.L130
.LVL171:
	.loc 1 347 11 view .LVU486
	jmp	.L151
.L148:
	.loc 1 341 7 is_stmt 1 discriminator 1 view .LVU487
	leaq	__PRETTY_FUNCTION__.7183(%rip), %rcx
	movl	$341, %edx
	leaq	.LC10(%rip), %rsi
	leaq	.LC11(%rip), %rdi
.LVL172:
	.loc 1 341 7 is_stmt 0 discriminator 1 view .LVU488
	call	__assert_fail@PLT
.LVL173:
	.cfi_endproc
.LFE143:
	.size	next_file, .-next_file
	.section	.rodata.str1.1
.LC14:
	.string	"-"
	.text
	.p2align 4
	.globl	cleanup_file_list_stdin
	.type	cleanup_file_list_stdin, @function
cleanup_file_list_stdin:
.LFB144:
	.loc 1 380 1 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	.loc 1 381 5 view .LVU490
	.loc 1 381 8 is_stmt 0 view .LVU491
	cmpb	$0, have_read_stdin(%rip)
	jne	.L161
	ret
	.p2align 4,,10
	.p2align 3
.L161:
	.loc 1 380 1 discriminator 1 view .LVU492
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 381 28 discriminator 1 view .LVU493
	movq	stdin(%rip), %rdi
	call	rpl_fclose@PLT
.LVL174:
	.loc 1 381 25 discriminator 1 view .LVU494
	testl	%eax, %eax
	jne	.L162
	.loc 1 383 1 view .LVU495
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L162:
	.cfi_restore_state
.LBB48:
	.loc 1 382 7 is_stmt 1 view .LVU496
	call	__errno_location@PLT
.LVL175:
	leaq	.LC14(%rip), %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL176:
.LBE48:
	.cfi_endproc
.LFE144:
	.size	cleanup_file_list_stdin, .-cleanup_file_list_stdin
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"  -t, --tabs=LIST  use comma separated list of tab positions.\n"
	.align 8
.LC16:
	.ascii	"                     The last specified position can be pref"
	.ascii	"ixed with '/'\n                     to specify a "
	.string	"tab size to use after the last\n                     explicitly specified tab stop.  Also a prefix of '+'\n                     can be used to align remaining tab stops relative to\n                     the last specified tab stop instead of the first column\n"
	.text
	.p2align 4
	.globl	emit_tab_list_info
	.type	emit_tab_list_info, @function
emit_tab_list_info:
.LFB145:
	.loc 1 388 1 view -0
	.cfi_startproc
	endbr64
	.loc 1 390 3 view .LVU498
	.loc 1 388 1 is_stmt 0 view .LVU499
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.loc 1 390 3 view .LVU500
	movl	$5, %edx
	movq	stdout(%rip), %rbp
	xorl	%edi, %edi
	leaq	.LC15(%rip), %rsi
	call	dcgettext@PLT
.LVL177:
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL178:
	.loc 1 393 3 is_stmt 1 view .LVU501
	movq	stdout(%rip), %rbp
	xorl	%edi, %edi
	leaq	.LC16(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL179:
	movq	%rbp, %rsi
	.loc 1 400 1 is_stmt 0 view .LVU502
	popq	%rbp
	.cfi_def_cfa_offset 8
	.loc 1 393 3 view .LVU503
	movq	%rax, %rdi
	jmp	fputs_unlocked@PLT
.LVL180:
	.cfi_endproc
.LFE145:
	.size	emit_tab_list_info, .-emit_tab_list_info
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.7183, @object
	.size	__PRETTY_FUNCTION__.7183, 10
__PRETTY_FUNCTION__.7183:
	.string	"next_file"
	.local	prev_file.7181
	.comm	prev_file.7181,8,8
	.globl	exit_status
	.bss
	.align 4
	.type	exit_status, @object
	.size	exit_status, 4
exit_status:
	.zero	4
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.section	.data.rel.local,"aw"
	.align 16
	.type	stdin_argv, @object
	.size	stdin_argv, 16
stdin_argv:
	.quad	.LC14
	.quad	0
	.local	file_list
	.comm	file_list,8,8
	.local	first_free_tab
	.comm	first_free_tab,8,8
	.local	n_tabs_allocated
	.comm	n_tabs_allocated,8,8
	.local	tab_list
	.comm	tab_list,8,8
	.globl	max_column_width
	.bss
	.align 8
	.type	max_column_width, @object
	.size	max_column_width, 8
max_column_width:
	.zero	8
	.local	increment_size
	.comm	increment_size,8,8
	.local	extend_size
	.comm	extend_size,8,8
	.local	tab_size
	.comm	tab_size,8,8
	.globl	convert_entire_line
	.type	convert_entire_line, @object
	.size	convert_entire_line, 1
convert_entire_line:
	.zero	1
	.text
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/time.h"
	.file 14 "/usr/include/signal.h"
	.file 15 "/usr/include/unistd.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 17 "/usr/include/errno.h"
	.file 18 "src/version.h"
	.file 19 "./lib/exitfail.h"
	.file 20 "/usr/include/stdint.h"
	.file 21 "./lib/timespec.h"
	.file 22 "/usr/include/ctype.h"
	.file 23 "./lib/xalloc-oversized.h"
	.file 24 "./lib/version-etc.h"
	.file 25 "./lib/progname.h"
	.file 26 "./lib/quotearg.h"
	.file 27 "./lib/error.h"
	.file 28 "./lib/fadvise.h"
	.file 29 "./lib/quote.h"
	.file 30 "src/expand-common.h"
	.file 31 "/usr/include/libintl.h"
	.file 32 "./lib/stdio.h"
	.file 33 "/usr/include/assert.h"
	.file 34 "/usr/include/string.h"
	.file 35 "./lib/xstrndup.h"
	.file 36 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1454
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF183
	.byte	0xc
	.long	.LASF184
	.long	.LASF185
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x5
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
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x6
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xae
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	0xae
	.uleb128 0x9
	.long	.LASF186
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x241
	.uleb128 0xa
	.long	.LASF13
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0xa8
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0xa8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0xa8
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0xa8
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0xa8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0xa8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0xa8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0xa8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0xa8
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x25a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x260
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x266
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x276
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x281
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x28c
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x260
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x292
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xba
	.uleb128 0xb
	.long	.LASF187
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x255
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0xd
	.long	0xae
	.long	0x276
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x27c
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x287
	.uleb128 0xd
	.long	0xae
	.long	0x2a2
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb5
	.uleb128 0x8
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF46
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x2b9
	.uleb128 0x7
	.byte	0x8
	.long	0x241
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF49
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2a8
	.long	0x2ee
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2e3
	.uleb128 0xf
	.long	.LASF50
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xf
	.long	.LASF51
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF52
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x2ee
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0x8f
	.byte	0x1a
	.long	0x71
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF56
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x9c
	.uleb128 0x11
	.long	.LASF57
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF58
	.uleb128 0xd
	.long	0xa8
	.long	0x361
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF59
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x351
	.uleb128 0xf
	.long	.LASF60
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF62
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x351
	.uleb128 0xf
	.long	.LASF63
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF64
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF65
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x3b6
	.uleb128 0xd
	.long	0x2a8
	.long	0x3cd
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x3bd
	.uleb128 0x11
	.long	.LASF66
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x3cd
	.uleb128 0x11
	.long	.LASF67
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x3cd
	.uleb128 0x11
	.long	.LASF68
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x3f9
	.uleb128 0x7
	.byte	0x8
	.long	0xa8
	.uleb128 0x11
	.long	.LASF69
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x3f9
	.uleb128 0xf
	.long	.LASF70
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF71
	.byte	0x10
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0x10
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0x10
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF74
	.byte	0x11
	.byte	0x2d
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF75
	.byte	0x11
	.byte	0x2e
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF76
	.byte	0x12
	.byte	0x1
	.byte	0x14
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF77
	.byte	0x13
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF78
	.byte	0x14
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x8
	.long	0x46c
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
	.byte	0x29
	.byte	0x6
	.long	0x495
	.uleb128 0x14
	.long	.LASF79
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x4aa
	.uleb128 0x15
	.long	.LASF80
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2f
	.byte	0x1
	.long	0x509
	.uleb128 0x16
	.long	.LASF81
	.value	0x100
	.uleb128 0x16
	.long	.LASF82
	.value	0x200
	.uleb128 0x16
	.long	.LASF83
	.value	0x400
	.uleb128 0x16
	.long	.LASF84
	.value	0x800
	.uleb128 0x16
	.long	.LASF85
	.value	0x1000
	.uleb128 0x16
	.long	.LASF86
	.value	0x2000
	.uleb128 0x16
	.long	.LASF87
	.value	0x4000
	.uleb128 0x16
	.long	.LASF88
	.value	0x8000
	.uleb128 0x15
	.long	.LASF89
	.byte	0x1
	.uleb128 0x15
	.long	.LASF90
	.byte	0x2
	.uleb128 0x15
	.long	.LASF91
	.byte	0x4
	.uleb128 0x15
	.long	.LASF92
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x17
	.byte	0x22
	.byte	0x13
	.long	0x317
	.uleb128 0xd
	.long	0xb5
	.long	0x520
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x515
	.uleb128 0xf
	.long	.LASF94
	.byte	0x18
	.byte	0x19
	.byte	0x13
	.long	0x520
	.uleb128 0xf
	.long	.LASF95
	.byte	0x19
	.byte	0x20
	.byte	0x14
	.long	0x2a2
	.uleb128 0x17
	.long	.LASF188
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x20
	.byte	0x6
	.long	0x592
	.uleb128 0x15
	.long	.LASF96
	.byte	0
	.uleb128 0x15
	.long	.LASF97
	.byte	0x1
	.uleb128 0x15
	.long	.LASF98
	.byte	0x2
	.uleb128 0x15
	.long	.LASF99
	.byte	0x3
	.uleb128 0x15
	.long	.LASF100
	.byte	0x4
	.uleb128 0x15
	.long	.LASF101
	.byte	0x5
	.uleb128 0x15
	.long	.LASF102
	.byte	0x6
	.uleb128 0x15
	.long	.LASF103
	.byte	0x7
	.uleb128 0x15
	.long	.LASF104
	.byte	0x8
	.uleb128 0x15
	.long	.LASF105
	.byte	0x9
	.uleb128 0x15
	.long	.LASF106
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x53d
	.uleb128 0x11
	.long	.LASF107
	.byte	0x1a
	.value	0x10b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xd
	.long	0x592
	.long	0x5af
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5a4
	.uleb128 0x11
	.long	.LASF108
	.byte	0x1a
	.value	0x10c
	.byte	0x21
	.long	0x5af
	.uleb128 0xf
	.long	.LASF109
	.byte	0x1b
	.byte	0x32
	.byte	0xf
	.long	0x3b7
	.uleb128 0xf
	.long	.LASF110
	.byte	0x1b
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF111
	.byte	0x1b
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x2d
	.byte	0xe
	.long	0x618
	.uleb128 0x15
	.long	.LASF112
	.byte	0
	.uleb128 0x15
	.long	.LASF113
	.byte	0x2
	.uleb128 0x15
	.long	.LASF114
	.byte	0x5
	.uleb128 0x15
	.long	.LASF115
	.byte	0x4
	.uleb128 0x15
	.long	.LASF116
	.byte	0x3
	.uleb128 0x15
	.long	.LASF117
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF118
	.uleb128 0xf
	.long	.LASF119
	.byte	0x1d
	.byte	0x19
	.byte	0x1f
	.long	0x618
	.uleb128 0xf
	.long	.LASF120
	.byte	0x1e
	.byte	0x14
	.byte	0xd
	.long	0x635
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF121
	.uleb128 0xf
	.long	.LASF122
	.byte	0x1e
	.byte	0x17
	.byte	0xf
	.long	0x2d
	.uleb128 0xf
	.long	.LASF123
	.byte	0x1e
	.byte	0x23
	.byte	0xc
	.long	0x65
	.uleb128 0x18
	.long	0x629
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	convert_entire_line
	.uleb128 0x19
	.long	.LASF124
	.byte	0x1
	.byte	0x24
	.byte	0x12
	.long	0x46c
	.uleb128 0x9
	.byte	0x3
	.quad	tab_size
	.uleb128 0x19
	.long	.LASF125
	.byte	0x1
	.byte	0x27
	.byte	0x12
	.long	0x46c
	.uleb128 0x9
	.byte	0x3
	.quad	extend_size
	.uleb128 0x19
	.long	.LASF126
	.byte	0x1
	.byte	0x2a
	.byte	0x12
	.long	0x46c
	.uleb128 0x9
	.byte	0x3
	.quad	increment_size
	.uleb128 0x18
	.long	0x63c
	.byte	0x1
	.byte	0x2d
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	max_column_width
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.byte	0x32
	.byte	0x13
	.long	0x6d0
	.uleb128 0x9
	.byte	0x3
	.quad	tab_list
	.uleb128 0x7
	.byte	0x8
	.long	0x46c
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.byte	0x35
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	n_tabs_allocated
	.uleb128 0x19
	.long	.LASF129
	.byte	0x1
	.byte	0x39
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	first_free_tab
	.uleb128 0x19
	.long	.LASF130
	.byte	0x1
	.byte	0x3c
	.byte	0xf
	.long	0x3f9
	.uleb128 0x9
	.byte	0x3
	.quad	file_list
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.byte	0x3f
	.byte	0xe
	.long	0x351
	.uleb128 0x9
	.byte	0x3
	.quad	stdin_argv
	.uleb128 0x19
	.long	.LASF132
	.byte	0x1
	.byte	0x45
	.byte	0xd
	.long	0x635
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x18
	.long	0x648
	.byte	0x1
	.byte	0x48
	.byte	0x5
	.uleb128 0x9
	.byte	0x3
	.quad	exit_status
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x1
	.value	0x183
	.byte	0x1
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ed
	.uleb128 0x1b
	.quad	.LVL177
	.long	0x1378
	.long	0x79e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL178
	.long	0x1384
	.long	0x7b6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL179
	.long	0x1378
	.long	0x7df
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1d
	.quad	.LVL180
	.long	0x1384
	.byte	0
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x1
	.value	0x17b
	.byte	0x1
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x85d
	.uleb128 0x1e
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x84f
	.uleb128 0x1f
	.quad	.LVL175
	.long	0x1391
	.uleb128 0x20
	.quad	.LVL176
	.long	0x139d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL174
	.long	0x13a9
	.byte	0
	.uleb128 0x21
	.long	.LASF139
	.byte	0x1
	.value	0x14e
	.byte	0x1
	.long	0x2b9
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0xa99
	.uleb128 0x22
	.string	"fp"
	.byte	0x1
	.value	0x14e
	.byte	0x12
	.long	0x2b9
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x23
	.long	.LASF135
	.byte	0x1
	.value	0x150
	.byte	0x10
	.long	0xa8
	.uleb128 0x9
	.byte	0x3
	.quad	prev_file.7181
	.uleb128 0x24
	.long	.LASF136
	.byte	0x1
	.value	0x151
	.byte	0x9
	.long	0xa8
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x25
	.long	.LASF189
	.long	0xaa9
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7183
	.uleb128 0x26
	.long	0x135a
	.quad	.LBI46
	.byte	.LVU417
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.byte	0x1
	.value	0x156
	.byte	0xb
	.long	0x907
	.uleb128 0x27
	.long	0x136b
	.long	.LLST32
	.long	.LVUS32
	.byte	0
	.uleb128 0x1f
	.quad	.LVL146
	.long	0x13b6
	.uleb128 0x1b
	.quad	.LVL149
	.long	0x13c3
	.long	0x932
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL150
	.long	0x13cf
	.long	0x954
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL152
	.long	0x1391
	.uleb128 0x1b
	.quad	.LVL153
	.long	0x139d
	.long	0x98b
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL156
	.long	0x13dc
	.long	0x9a9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1f
	.quad	.LVL161
	.long	0x13a9
	.uleb128 0x1b
	.quad	.LVL162
	.long	0x13cf
	.long	0x9d2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1f
	.quad	.LVL164
	.long	0x1391
	.uleb128 0x1b
	.quad	.LVL165
	.long	0x139d
	.long	0xa09
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL168
	.long	0x13cf
	.long	0xa25
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1f
	.quad	.LVL169
	.long	0x1391
	.uleb128 0x1b
	.quad	.LVL170
	.long	0x139d
	.long	0xa5c
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL173
	.long	0x13e8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x155
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7183
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xb5
	.long	0xaa9
	.uleb128 0xe
	.long	0x39
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.long	0xa99
	.uleb128 0x1a
	.long	.LASF137
	.byte	0x1
	.value	0x13e
	.byte	0x1
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0xae3
	.uleb128 0x28
	.long	.LASF138
	.byte	0x1
	.value	0x13e
	.byte	0x17
	.long	0x3f9
	.long	.LLST29
	.long	.LVUS29
	.byte	0
	.uleb128 0x21
	.long	.LASF140
	.byte	0x1
	.value	0x117
	.byte	0x1
	.long	0x46c
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0xb86
	.uleb128 0x28
	.long	.LASF141
	.byte	0x1
	.value	0x117
	.byte	0x26
	.long	0x478
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x29
	.long	.LASF190
	.byte	0x1
	.value	0x117
	.byte	0x36
	.long	0xb86
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.long	.LASF142
	.byte	0x1
	.value	0x118
	.byte	0x1c
	.long	0xb8c
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xf0
	.long	0xb5e
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x124
	.byte	0x13
	.long	0x46c
	.long	.LLST27
	.long	.LVUS27
	.byte	0
	.uleb128 0x2c
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x24
	.long	.LASF143
	.byte	0x1
	.value	0x130
	.byte	0x11
	.long	0x46c
	.long	.LLST28
	.long	.LVUS28
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2d
	.uleb128 0x7
	.byte	0x8
	.long	0x635
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.value	0x107
	.byte	0x1
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1a
	.uleb128 0x2d
	.long	0xd1a
	.quad	.LBI31
	.byte	.LVU297
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.value	0x109
	.byte	0x3
	.uleb128 0x27
	.long	0xd33
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x27
	.long	0xd27
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x2f
	.long	0xd3f
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x30
	.long	0xd4b
	.long	.Ldebug_ranges0+0xb0
	.long	0xcc0
	.uleb128 0x2f
	.long	0xd50
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x31
	.long	0xd5b
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0xc68
	.uleb128 0x1b
	.quad	.LVL122
	.long	0x1378
	.long	0xc4f
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL123
	.long	0x139d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0xd5a
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x1b
	.quad	.LVL126
	.long	0x1378
	.long	0xca6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL127
	.long	0x139d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0xd5d
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x1b
	.quad	.LVL116
	.long	0x1378
	.long	0xcfe
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL117
	.long	0x139d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF191
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.byte	0x1
	.long	0xd5f
	.uleb128 0x34
	.long	.LASF145
	.byte	0x1
	.byte	0xed
	.byte	0x26
	.long	0xd5f
	.uleb128 0x34
	.long	.LASF146
	.byte	0x1
	.byte	0xed
	.byte	0x33
	.long	0x2d
	.uleb128 0x35
	.long	.LASF147
	.byte	0x1
	.byte	0xef
	.byte	0xd
	.long	0x46c
	.uleb128 0x36
	.long	0xd5d
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.byte	0xf1
	.byte	0xf
	.long	0x2d
	.uleb128 0x38
	.uleb128 0x38
	.byte	0
	.uleb128 0x38
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x478
	.uleb128 0x39
	.long	.LASF148
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x10e8
	.uleb128 0x3a
	.long	.LASF149
	.byte	0x1
	.byte	0x84
	.byte	0x1e
	.long	0x2a2
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x3b
	.long	.LASF150
	.byte	0x1
	.byte	0x86
	.byte	0x8
	.long	0x635
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x3b
	.long	.LASF151
	.byte	0x1
	.byte	0x87
	.byte	0xd
	.long	0x46c
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x3b
	.long	.LASF152
	.byte	0x1
	.byte	0x88
	.byte	0x8
	.long	0x635
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x3b
	.long	.LASF153
	.byte	0x1
	.byte	0x89
	.byte	0x8
	.long	0x635
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x3b
	.long	.LASF154
	.byte	0x1
	.byte	0x8a
	.byte	0xf
	.long	0x2a2
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x3c
	.string	"ok"
	.byte	0x1
	.byte	0x8b
	.byte	0x8
	.long	0x635
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x30
	.long	0xf0e
	.uleb128 0x2c
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x3c
	.string	"len"
	.byte	0x1
	.byte	0xca
	.byte	0x16
	.long	0x2d
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x3b
	.long	.LASF155
	.byte	0x1
	.byte	0xcb
	.byte	0x15
	.long	0xa8
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x1b
	.quad	.LVL68
	.long	0x13f4
	.long	0xe75
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x1b
	.quad	.LVL71
	.long	0x1401
	.long	0xe93
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL73
	.long	0x140d
	.long	0xeab
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL75
	.long	0x1378
	.long	0xed4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL76
	.long	0x139d
	.long	0xef8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.quad	.LVL77
	.long	0x1419
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	0x133d
	.quad	.LBI19
	.byte	.LVU131
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.byte	0x1
	.byte	0x8f
	.byte	0x1c
	.long	0xf41
	.uleb128 0x27
	.long	0x134e
	.long	.LLST18
	.long	.LVUS18
	.byte	0
	.uleb128 0x1f
	.quad	.LVL35
	.long	0x1426
	.uleb128 0x1b
	.quad	.LVL41
	.long	0x10e8
	.long	0xf66
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL47
	.long	0x10e8
	.long	0xf7e
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL53
	.long	0x11fe
	.uleb128 0x1f
	.quad	.LVL60
	.long	0x1173
	.uleb128 0x1b
	.quad	.LVL82
	.long	0x140d
	.long	0xfb0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL84
	.long	0x1378
	.long	0xfda
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL85
	.long	0x139d
	.long	0xff8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL88
	.long	0x140d
	.long	0x1010
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL90
	.long	0x1378
	.long	0x1039
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL91
	.long	0x139d
	.long	0x1057
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL98
	.long	0x11fe
	.uleb128 0x1f
	.quad	.LVL99
	.long	0x1173
	.uleb128 0x1b
	.quad	.LVL102
	.long	0x140d
	.long	0x1089
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL104
	.long	0x1378
	.long	0x10b2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.quad	.LVL105
	.long	0x139d
	.long	0x10d4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL106
	.long	0x1432
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LASF156
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.long	0x635
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x1173
	.uleb128 0x3a
	.long	.LASF151
	.byte	0x1
	.byte	0x71
	.byte	0x1f
	.long	0x46c
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x3c
	.string	"ok"
	.byte	0x1
	.byte	0x73
	.byte	0x8
	.long	0x635
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1b
	.quad	.LVL10
	.long	0x1378
	.long	0x115a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL11
	.long	0x139d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LASF157
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.long	0x635
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x11fe
	.uleb128 0x3a
	.long	.LASF151
	.byte	0x1
	.byte	0x60
	.byte	0x1c
	.long	0x46c
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x3c
	.string	"ok"
	.byte	0x1
	.byte	0x62
	.byte	0x8
	.long	0x635
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1b
	.quad	.LVL3
	.long	0x1378
	.long	0x11e5
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL4
	.long	0x139d
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF158
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ef
	.uleb128 0x3a
	.long	.LASF151
	.byte	0x1
	.byte	0x4e
	.byte	0x19
	.long	0x46c
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x3b
	.long	.LASF159
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.long	0x46c
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x3b
	.long	.LASF160
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.long	0x46c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1e
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x12ed
	.uleb128 0x3f
	.long	0x12ef
	.quad	.LBI14
	.byte	.LVU83
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x54
	.byte	0x10
	.uleb128 0x27
	.long	0x1315
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x27
	.long	0x130a
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x27
	.long	0x1300
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.uleb128 0x2f
	.long	0x131f
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x40
	.long	0x1329
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x1f
	.quad	.LVL26
	.long	0x143f
	.uleb128 0x1f
	.quad	.LVL29
	.long	0x144b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0
	.uleb128 0x41
	.long	.LASF162
	.byte	0x2
	.byte	0xae
	.byte	0x1
	.long	0x47
	.byte	0x3
	.long	0x133d
	.uleb128 0x42
	.string	"p"
	.byte	0x2
	.byte	0xae
	.byte	0x13
	.long	0x47
	.uleb128 0x42
	.string	"pn"
	.byte	0x2
	.byte	0xae
	.byte	0x1e
	.long	0xb86
	.uleb128 0x42
	.string	"s"
	.byte	0x2
	.byte	0xae
	.byte	0x29
	.long	0x2d
	.uleb128 0x37
	.string	"n"
	.byte	0x2
	.byte	0xb0
	.byte	0xa
	.long	0x2d
	.uleb128 0x43
	.uleb128 0x44
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0xba
	.byte	0x10
	.uleb128 0x15
	.long	.LASF161
	.byte	0x80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	.LASF192
	.byte	0x3
	.byte	0x9c
	.byte	0x1d
	.long	0x49
	.byte	0x3
	.long	0x135a
	.uleb128 0x42
	.string	"ch"
	.byte	0x3
	.byte	0x9c
	.byte	0x2c
	.long	0xae
	.byte	0
	.uleb128 0x41
	.long	.LASF163
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.long	0x65
	.byte	0x3
	.long	0x1378
	.uleb128 0x34
	.long	.LASF164
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.long	0x2b9
	.byte	0
	.uleb128 0x46
	.long	.LASF165
	.long	.LASF165
	.byte	0x1f
	.byte	0x33
	.byte	0xe
	.uleb128 0x47
	.long	.LASF166
	.long	.LASF166
	.byte	0x9
	.value	0x296
	.byte	0xc
	.uleb128 0x46
	.long	.LASF167
	.long	.LASF167
	.byte	0x11
	.byte	0x25
	.byte	0xd
	.uleb128 0x46
	.long	.LASF168
	.long	.LASF168
	.byte	0x1b
	.byte	0x28
	.byte	0xd
	.uleb128 0x47
	.long	.LASF169
	.long	.LASF169
	.byte	0x20
	.value	0x2be
	.byte	0x1
	.uleb128 0x47
	.long	.LASF170
	.long	.LASF170
	.byte	0x9
	.value	0x2fd
	.byte	0xd
	.uleb128 0x46
	.long	.LASF171
	.long	.LASF171
	.byte	0x9
	.byte	0xf6
	.byte	0xe
	.uleb128 0x47
	.long	.LASF172
	.long	.LASF172
	.byte	0x1a
	.value	0x18d
	.byte	0x7
	.uleb128 0x46
	.long	.LASF173
	.long	.LASF173
	.byte	0x1c
	.byte	0x48
	.byte	0x6
	.uleb128 0x46
	.long	.LASF174
	.long	.LASF174
	.byte	0x21
	.byte	0x45
	.byte	0xd
	.uleb128 0x47
	.long	.LASF175
	.long	.LASF175
	.byte	0x22
	.value	0x115
	.byte	0xf
	.uleb128 0x46
	.long	.LASF176
	.long	.LASF176
	.byte	0x23
	.byte	0x17
	.byte	0xe
	.uleb128 0x46
	.long	.LASF177
	.long	.LASF177
	.byte	0x1d
	.byte	0x2c
	.byte	0xd
	.uleb128 0x47
	.long	.LASF178
	.long	.LASF178
	.byte	0x24
	.value	0x235
	.byte	0xd
	.uleb128 0x46
	.long	.LASF179
	.long	.LASF179
	.byte	0x16
	.byte	0x4f
	.byte	0x23
	.uleb128 0x47
	.long	.LASF180
	.long	.LASF180
	.byte	0x24
	.value	0x269
	.byte	0xd
	.uleb128 0x46
	.long	.LASF181
	.long	.LASF181
	.byte	0x2
	.byte	0x3b
	.byte	0x7
	.uleb128 0x46
	.long	.LASF182
	.long	.LASF182
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS30:
	.uleb128 0
	.uleb128 .LVU427
	.uleb128 .LVU427
	.uleb128 .LVU427
	.uleb128 .LVU427
	.uleb128 .LVU433
	.uleb128 .LVU435
	.uleb128 .LVU438
	.uleb128 .LVU455
	.uleb128 .LVU461
	.uleb128 .LVU461
	.uleb128 .LVU465
	.uleb128 .LVU469
	.uleb128 .LVU471
	.uleb128 .LVU471
	.uleb128 .LVU473
	.uleb128 .LVU473
	.uleb128 .LVU477
	.uleb128 .LVU477
	.uleb128 .LVU478
	.uleb128 .LVU478
	.uleb128 .LVU486
	.uleb128 .LVU486
	.uleb128 .LVU488
	.uleb128 .LVU488
	.uleb128 0
.LLST30:
	.quad	.LVL144-.Ltext0
	.quad	.LVL146-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL146-1-.Ltext0
	.quad	.LVL146-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL146-.Ltext0
	.quad	.LVL148-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL149-.Ltext0
	.quad	.LVL150-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL155-.Ltext0
	.quad	.LVL156-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL156-1-.Ltext0
	.quad	.LVL158-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	.LVL160-.Ltext0
	.quad	.LVL161-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL161-1-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL163-.Ltext0
	.quad	.LVL166-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL166-.Ltext0
	.quad	.LVL167-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL167-.Ltext0
	.quad	.LVL171-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL171-.Ltext0
	.quad	.LVL172-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL172-.Ltext0
	.quad	.LFE143-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 .LVU431
	.uleb128 .LVU439
	.uleb128 .LVU446
	.uleb128 .LVU464
	.uleb128 .LVU465
	.uleb128 .LVU468
.LLST31:
	.quad	.LVL147-.Ltext0
	.quad	.LVL151-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL154-.Ltext0
	.quad	.LVL157-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL158-.Ltext0
	.quad	.LVL159-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS32:
	.uleb128 .LVU417
	.uleb128 .LVU419
.LLST32:
	.quad	.LVL145-.Ltext0
	.quad	.LVL145-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU406
	.uleb128 .LVU406
	.uleb128 0
.LLST29:
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL143-.Ltext0
	.quad	.LFE142-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU363
	.uleb128 .LVU363
	.uleb128 .LVU373
	.uleb128 .LVU373
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 .LVU379
	.uleb128 .LVU379
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 .LVU391
	.uleb128 .LVU391
	.uleb128 .LVU392
	.uleb128 .LVU392
	.uleb128 .LVU397
	.uleb128 .LVU397
	.uleb128 0
.LLST25:
	.quad	.LVL128-.Ltext0
	.quad	.LVL129-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL129-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL133-.Ltext0
	.quad	.LVL134-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL134-.Ltext0
	.quad	.LVL136-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL136-.Ltext0
	.quad	.LVL137-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL137-.Ltext0
	.quad	.LVL138-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL138-.Ltext0
	.quad	.LVL139-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL139-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL141-.Ltext0
	.quad	.LFE141-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU373
	.uleb128 .LVU373
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 .LVU377
	.uleb128 .LVU377
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 .LVU395
	.uleb128 .LVU395
	.uleb128 0
.LLST26:
	.quad	.LVL128-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL133-.Ltext0
	.quad	.LVL134-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL134-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL135-.Ltext0
	.quad	.LVL137-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL137-.Ltext0
	.quad	.LVL140-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL140-.Ltext0
	.quad	.LFE141-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU365
	.uleb128 .LVU369
	.uleb128 .LVU371
	.uleb128 .LVU373
.LLST27:
	.quad	.LVL130-.Ltext0
	.quad	.LVL131-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL132-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU393
	.uleb128 0
.LLST28:
	.quad	.LVL139-.Ltext0
	.quad	.LFE141-.Ltext0
	.value	0x11
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.quad	tab_list
	.byte	0x6
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU297
	.uleb128 .LVU319
	.uleb128 .LVU328
	.uleb128 .LVU330
	.uleb128 .LVU331
	.uleb128 .LVU335
	.uleb128 .LVU341
	.uleb128 .LVU344
	.uleb128 .LVU345
	.uleb128 .LVU349
	.uleb128 .LVU350
	.uleb128 0
.LLST21:
	.quad	.LVL107-.Ltext0
	.quad	.LVL113-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL114-.Ltext0
	.quad	.LVL116-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL119-.Ltext0
	.quad	.LVL122-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL123-.Ltext0
	.quad	.LVL126-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL127-.Ltext0
	.quad	.LFE140-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU297
	.uleb128 .LVU319
	.uleb128 .LVU328
	.uleb128 .LVU329
	.uleb128 .LVU329
	.uleb128 .LVU330
	.uleb128 .LVU331
	.uleb128 .LVU335
	.uleb128 .LVU341
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 .LVU344
	.uleb128 .LVU345
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU349
	.uleb128 .LVU350
	.uleb128 0
.LLST22:
	.quad	.LVL107-.Ltext0
	.quad	.LVL113-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL114-.Ltext0
	.quad	.LVL115-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL115-.Ltext0
	.quad	.LVL116-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	tab_list
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL119-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL120-.Ltext0
	.quad	.LVL122-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	tab_list
	.quad	.LVL123-.Ltext0
	.quad	.LVL124-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL124-.Ltext0
	.quad	.LVL126-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	tab_list
	.quad	.LVL127-.Ltext0
	.quad	.LFE140-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU299
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU319
	.uleb128 .LVU331
	.uleb128 .LVU335
	.uleb128 .LVU341
	.uleb128 .LVU343
	.uleb128 .LVU345
	.uleb128 .LVU348
	.uleb128 .LVU350
	.uleb128 0
.LLST23:
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL108-.Ltext0
	.quad	.LVL109-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL109-.Ltext0
	.quad	.LVL110-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL110-.Ltext0
	.quad	.LVL113-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL119-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL123-.Ltext0
	.quad	.LVL125-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL127-.Ltext0
	.quad	.LFE140-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU301
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU317
	.uleb128 .LVU331
	.uleb128 .LVU335
	.uleb128 .LVU341
	.uleb128 .LVU344
	.uleb128 .LVU345
	.uleb128 .LVU349
	.uleb128 .LVU350
	.uleb128 0
.LLST24:
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL108-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL119-.Ltext0
	.quad	.LVL122-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL123-.Ltext0
	.quad	.LVL126-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL127-.Ltext0
	.quad	.LFE140-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU188
	.uleb128 .LVU189
	.uleb128 .LVU221
	.uleb128 .LVU238
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU272
	.uleb128 .LVU276
	.uleb128 0
.LLST11:
	.quad	.LVL32-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL34-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL38-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL45-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL50-.Ltext0
	.quad	.LVL70-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL79-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL80-.Ltext0
	.quad	.LVL95-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL98-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU114
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU188
	.uleb128 .LVU189
	.uleb128 .LVU190
	.uleb128 .LVU191
	.uleb128 .LVU195
	.uleb128 .LVU196
	.uleb128 .LVU207
	.uleb128 .LVU208
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU271
	.uleb128 .LVU276
	.uleb128 0
.LLST12:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL52-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL56-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL63-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL66-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL80-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL98-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU115
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU188
	.uleb128 .LVU189
	.uleb128 .LVU190
	.uleb128 .LVU191
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU216
	.uleb128 .LVU239
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 0
.LLST13:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL41-1-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL47-1-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL53-1-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL60-1-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL80-.Ltext0
	.quad	.LVL92-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL92-.Ltext0
	.quad	.LVL98-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL99-1-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU116
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU188
	.uleb128 .LVU189
	.uleb128 .LVU194
	.uleb128 .LVU196
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU205
	.uleb128 .LVU208
	.uleb128 .LVU211
	.uleb128 .LVU214
	.uleb128 .LVU245
	.uleb128 .LVU254
	.uleb128 .LVU259
	.uleb128 .LVU268
	.uleb128 .LVU273
	.uleb128 .LVU276
	.uleb128 .LVU284
.LLST14:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL50-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL56-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL59-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL66-.Ltext0
	.quad	.LVL83-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL86-.Ltext0
	.quad	.LVL89-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL92-.Ltext0
	.quad	.LVL96-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL98-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU117
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU168
	.uleb128 .LVU169
	.uleb128 .LVU188
	.uleb128 .LVU189
	.uleb128 .LVU199
	.uleb128 .LVU202
	.uleb128 .LVU213
	.uleb128 .LVU214
	.uleb128 .LVU242
	.uleb128 .LVU254
	.uleb128 .LVU256
	.uleb128 .LVU268
	.uleb128 .LVU274
	.uleb128 .LVU276
	.uleb128 .LVU292
.LLST15:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL43-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL50-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL59-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL66-.Ltext0
	.quad	.LVL81-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL86-.Ltext0
	.quad	.LVL87-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL92-.Ltext0
	.quad	.LVL97-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL98-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU118
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU188
	.uleb128 .LVU189
	.uleb128 .LVU219
	.uleb128 .LVU239
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 0
.LLST16:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL37-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL50-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL80-.Ltext0
	.quad	.LVL93-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL93-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL98-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU119
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU188
	.uleb128 .LVU189
	.uleb128 .LVU228
	.uleb128 .LVU234
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU281
	.uleb128 .LVU281
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU292
.LLST17:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL50-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL77-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL80-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL85-.Ltext0
	.quad	.LVL86-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL86-.Ltext0
	.quad	.LVL91-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL91-.Ltext0
	.quad	.LVL92-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL92-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL100-.Ltext0
	.quad	.LVL101-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL101-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL105-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU221
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU239
.LLST19:
	.quad	.LVL70-.Ltext0
	.quad	.LVL71-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL71-1-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU225
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU236
.LLST20:
	.quad	.LVL72-.Ltext0
	.quad	.LVL73-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL73-1-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU131
	.uleb128 .LVU133
.LLST18:
	.quad	.LVL35-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 0
.LLST2:
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL9-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL13-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	increment_size
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU25
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST3:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LFE137-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL6-.Ltext0
	.quad	.LFE136-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	extend_size
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU2
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LFE136-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST4:
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL15-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU55
	.uleb128 .LVU64
	.uleb128 .LVU81
	.uleb128 .LVU82
	.uleb128 .LVU110
	.uleb128 0
.LLST5:
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL31-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU57
	.uleb128 .LVU64
	.uleb128 .LVU81
	.uleb128 .LVU82
.LLST6:
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU83
	.uleb128 .LVU100
	.uleb128 .LVU101
	.uleb128 .LVU110
.LLST7:
	.quad	.LVL23-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU83
	.uleb128 .LVU100
	.uleb128 .LVU101
	.uleb128 .LVU110
.LLST8:
	.quad	.LVL23-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	n_tabs_allocated
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	n_tabs_allocated
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU83
	.uleb128 .LVU97
	.uleb128 .LVU101
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU110
.LLST9:
	.quad	.LVL23-.Ltext0
	.quad	.LVL26-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	tab_list
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	tab_list
	.quad	.LVL29-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	tab_list
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU85
	.uleb128 .LVU97
	.uleb128 .LVU101
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU110
.LLST10:
	.quad	.LVL23-.Ltext0
	.quad	.LVL26-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	n_tabs_allocated
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
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF122:
	.string	"max_column_width"
.LASF9:
	.string	"__off_t"
.LASF88:
	.string	"_ISgraph"
.LASF104:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF184:
	.string	"src/expand-common.c"
.LASF175:
	.string	"strspn"
.LASF188:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF80:
	.string	"LOG10_TIMESPEC_HZ"
.LASF32:
	.string	"_shortbuf"
.LASF128:
	.string	"n_tabs_allocated"
.LASF86:
	.string	"_ISspace"
.LASF98:
	.string	"shell_always_quoting_style"
.LASF97:
	.string	"shell_quoting_style"
.LASF137:
	.string	"set_file_list"
.LASF20:
	.string	"_IO_buf_base"
.LASF155:
	.string	"bad_num"
.LASF58:
	.string	"long long unsigned int"
.LASF143:
	.string	"end_tab"
.LASF83:
	.string	"_ISalpha"
.LASF93:
	.string	"__xalloc_count_type"
.LASF178:
	.string	"free"
.LASF35:
	.string	"_codecvt"
.LASF181:
	.string	"xrealloc"
.LASF61:
	.string	"__timezone"
.LASF126:
	.string	"increment_size"
.LASF54:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF108:
	.string	"quoting_style_vals"
.LASF189:
	.string	"__PRETTY_FUNCTION__"
.LASF103:
	.string	"escape_quoting_style"
.LASF191:
	.string	"validate_tab_stops"
.LASF127:
	.string	"tab_list"
.LASF96:
	.string	"literal_quoting_style"
.LASF162:
	.string	"x2nrealloc"
.LASF15:
	.string	"_IO_read_end"
.LASF138:
	.string	"list"
.LASF27:
	.string	"_fileno"
.LASF67:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF57:
	.string	"_gl_cxxalias_dummy"
.LASF13:
	.string	"_flags"
.LASF160:
	.string	"column_width"
.LASF36:
	.string	"_wide_data"
.LASF92:
	.string	"_ISalnum"
.LASF30:
	.string	"_cur_column"
.LASF75:
	.string	"program_invocation_short_name"
.LASF153:
	.string	"increment_tabval"
.LASF44:
	.string	"_IO_codecvt"
.LASF154:
	.string	"num_start"
.LASF52:
	.string	"_sys_errlist"
.LASF74:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF89:
	.string	"_ISblank"
.LASF79:
	.string	"TIMESPEC_HZ"
.LASF100:
	.string	"shell_escape_always_quoting_style"
.LASF124:
	.string	"tab_size"
.LASF64:
	.string	"timezone"
.LASF177:
	.string	"quote"
.LASF169:
	.string	"rpl_fclose"
.LASF91:
	.string	"_ISpunct"
.LASF95:
	.string	"program_name"
.LASF99:
	.string	"shell_escape_quoting_style"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF183:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF125:
	.string	"extend_size"
.LASF164:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF78:
	.string	"uintmax_t"
.LASF18:
	.string	"_IO_write_ptr"
.LASF49:
	.string	"sys_nerr"
.LASF106:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF70:
	.string	"optarg"
.LASF111:
	.string	"error_one_per_line"
.LASF76:
	.string	"Version"
.LASF142:
	.string	"last_tab"
.LASF22:
	.string	"_IO_save_base"
.LASF176:
	.string	"xstrndup"
.LASF69:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"stdout"
.LASF113:
	.string	"FADVISE_SEQUENTIAL"
.LASF158:
	.string	"add_tab_stop"
.LASF53:
	.string	"ptrdiff_t"
.LASF94:
	.string	"version_etc_copyright"
.LASF170:
	.string	"clearerr_unlocked"
.LASF146:
	.string	"entries"
.LASF159:
	.string	"prev_column"
.LASF82:
	.string	"_ISlower"
.LASF139:
	.string	"next_file"
.LASF65:
	.string	"getdate_err"
.LASF71:
	.string	"optind"
.LASF14:
	.string	"_IO_read_ptr"
.LASF173:
	.string	"fadvise"
.LASF10:
	.string	"__off64_t"
.LASF187:
	.string	"_IO_lock_t"
.LASF186:
	.string	"_IO_FILE"
.LASF109:
	.string	"error_print_progname"
.LASF68:
	.string	"__environ"
.LASF56:
	.string	"time_t"
.LASF149:
	.string	"stops"
.LASF145:
	.string	"tabs"
.LASF163:
	.string	"ferror_unlocked"
.LASF171:
	.string	"fopen"
.LASF168:
	.string	"error"
.LASF148:
	.string	"parse_tab_stops"
.LASF133:
	.string	"emit_tab_list_info"
.LASF25:
	.string	"_markers"
.LASF129:
	.string	"first_free_tab"
.LASF174:
	.string	"__assert_fail"
.LASF192:
	.string	"to_uchar"
.LASF120:
	.string	"convert_entire_line"
.LASF102:
	.string	"c_maybe_quoting_style"
.LASF135:
	.string	"prev_file"
.LASF121:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF123:
	.string	"exit_status"
.LASF131:
	.string	"stdin_argv"
.LASF21:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF136:
	.string	"file"
.LASF119:
	.string	"quote_quoting_options"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF62:
	.string	"tzname"
.LASF42:
	.string	"FILE"
.LASF77:
	.string	"exit_failure"
.LASF180:
	.string	"exit"
.LASF117:
	.string	"FADVISE_RANDOM"
.LASF144:
	.string	"finalize_tab_stops"
.LASF165:
	.string	"dcgettext"
.LASF114:
	.string	"FADVISE_NOREUSE"
.LASF107:
	.string	"quoting_style_args"
.LASF73:
	.string	"optopt"
.LASF172:
	.string	"quotearg_n_style_colon"
.LASF63:
	.string	"daylight"
.LASF190:
	.string	"tab_index"
.LASF156:
	.string	"set_increment_size"
.LASF150:
	.string	"have_tabval"
.LASF55:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF115:
	.string	"FADVISE_DONTNEED"
.LASF157:
	.string	"set_extend_size"
.LASF90:
	.string	"_IScntrl"
.LASF11:
	.string	"__time_t"
.LASF140:
	.string	"get_next_tab_column"
.LASF85:
	.string	"_ISxdigit"
.LASF105:
	.string	"clocale_quoting_style"
.LASF134:
	.string	"cleanup_file_list_stdin"
.LASF161:
	.string	"DEFAULT_MXFAST"
.LASF167:
	.string	"__errno_location"
.LASF72:
	.string	"opterr"
.LASF8:
	.string	"__uintmax_t"
.LASF112:
	.string	"FADVISE_NORMAL"
.LASF118:
	.string	"quoting_options"
.LASF16:
	.string	"_IO_read_base"
.LASF141:
	.string	"column"
.LASF24:
	.string	"_IO_save_end"
.LASF101:
	.string	"c_quoting_style"
.LASF66:
	.string	"_sys_siglist"
.LASF132:
	.string	"have_read_stdin"
.LASF39:
	.string	"__pad5"
.LASF179:
	.string	"__ctype_b_loc"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF60:
	.string	"__daylight"
.LASF130:
	.string	"file_list"
.LASF182:
	.string	"xalloc_die"
.LASF185:
	.string	"/root/coreutils"
.LASF152:
	.string	"extend_tabval"
.LASF81:
	.string	"_ISupper"
.LASF38:
	.string	"_freeres_buf"
.LASF23:
	.string	"_IO_backup_base"
.LASF110:
	.string	"error_message_count"
.LASF50:
	.string	"sys_errlist"
.LASF151:
	.string	"tabval"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF116:
	.string	"FADVISE_WILLNEED"
.LASF166:
	.string	"fputs_unlocked"
.LASF59:
	.string	"__tzname"
.LASF17:
	.string	"_IO_write_base"
.LASF147:
	.string	"prev_tab"
.LASF84:
	.string	"_ISdigit"
.LASF87:
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
