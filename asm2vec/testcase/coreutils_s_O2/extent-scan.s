	.file	"extent-scan.c"
	.text
.Ltext0:
	.p2align 4
	.globl	extent_scan_init
	.type	extent_scan_init, @function
extent_scan_init:
.LVL0:
.LFB137:
	.file 1 "src/extent-scan.c"
	.loc 1 70 1 view -0
	.cfi_startproc
	.loc 1 70 1 is_stmt 0 view .LVU1
	endbr64
	.loc 1 71 3 is_stmt 1 view .LVU2
	.loc 1 75 29 is_stmt 0 view .LVU3
	xorl	%eax, %eax
	.loc 1 71 12 view .LVU4
	movl	%edi, (%rsi)
	.loc 1 72 3 is_stmt 1 view .LVU5
	.loc 1 73 3 view .LVU6
	.loc 1 73 18 is_stmt 0 view .LVU7
	movq	$0, 40(%rsi)
	.loc 1 74 3 is_stmt 1 view .LVU8
	.loc 1 74 20 is_stmt 0 view .LVU9
	movq	$0, 8(%rsi)
	.loc 1 75 3 is_stmt 1 view .LVU10
	.loc 1 76 3 view .LVU11
	.loc 1 72 18 is_stmt 0 view .LVU12
	movq	$0, 24(%rsi)
	.loc 1 75 29 view .LVU13
	movw	%ax, 32(%rsi)
	.loc 1 77 3 is_stmt 1 view .LVU14
	.loc 1 39 3 view .LVU15
	.loc 1 77 18 is_stmt 0 view .LVU16
	movl	$1, 16(%rsi)
	.loc 1 78 1 view .LVU17
	ret
	.cfi_endproc
.LFE137:
	.size	extent_scan_init, .-extent_scan_init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"src/extent-scan.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"scan->ei_count <= SIZE_MAX - fiemap->fm_mapped_extents"
	.align 8
.LC2:
	.string	"fm_extents[i].fe_logical <= OFF_T_MAX - fm_extents[i].fe_length"
	.text
	.p2align 4
	.globl	extent_scan_read
	.type	extent_scan_read, @function
extent_scan_read:
.LVL1:
.LFB138:
	.loc 1 88 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 88 1 is_stmt 0 view .LVU19
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 4192
	.loc 1 89 16 view .LVU20
	xorl	%r12d, %r12d
.LBB16:
	.loc 1 141 11 view .LVU21
	movabsq	$9223372036854775807, %r13
.LBE16:
	.loc 1 90 23 view .LVU22
	movq	40(%rdi), %rbx
	.loc 1 88 1 view .LVU23
	movq	%fs:40, %rax
	movq	%rax, 4120(%rsp)
	xorl	%eax, %eax
	.loc 1 89 3 is_stmt 1 view .LVU24
.LVL2:
	.loc 1 90 3 view .LVU25
	.loc 1 90 3 is_stmt 0 view .LVU26
	leaq	16(%rsp), %rax
	.loc 1 88 1 view .LVU27
	movq	%rdi, %rbp
	movq	%rax, 8(%rsp)
.LVL3:
.L29:
	.loc 1 92 3 is_stmt 1 view .LVU28
.LBB35:
	.loc 1 94 7 view .LVU29
	.loc 1 95 7 view .LVU30
	.loc 1 96 7 view .LVU31
	.loc 1 97 7 view .LVU32
	.loc 1 98 7 view .LVU33
	.loc 1 99 7 view .LVU34
	.loc 1 104 7 view .LVU35
.LBB17:
.LBI17:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 59 1 view .LVU36
.LBB18:
	.loc 2 71 3 view .LVU37
	.loc 2 71 10 is_stmt 0 view .LVU38
	movq	8(%rsp), %rdi
	xorl	%eax, %eax
	movl	$512, %ecx
.LBE18:
.LBE17:
	.loc 1 107 24 view .LVU39
	movl	16(%rbp), %edx
	.loc 1 113 11 view .LVU40
	movl	$3223348747, %esi
.LBB20:
.LBB19:
	.loc 2 71 10 view .LVU41
	rep stosq
.LVL4:
	.loc 2 71 10 view .LVU42
.LBE19:
.LBE20:
	.loc 1 106 7 is_stmt 1 view .LVU43
	.loc 1 106 30 is_stmt 0 view .LVU44
	movq	8(%rbp), %rax
	.loc 1 113 11 view .LVU45
	movl	0(%rbp), %edi
	.loc 1 107 24 view .LVU46
	movl	%edx, 32(%rsp)
	.loc 1 113 11 view .LVU47
	movq	8(%rsp), %rdx
	.loc 1 108 31 view .LVU48
	movl	$72, 40(%rsp)
	.loc 1 106 24 view .LVU49
	movq	%rax, 16(%rsp)
	.loc 1 107 7 is_stmt 1 view .LVU50
	.loc 1 108 7 view .LVU51
	.loc 1 109 7 view .LVU52
	.loc 1 109 45 is_stmt 0 view .LVU53
	notq	%rax
	movq	%rax, 24(%rsp)
	.loc 1 113 7 is_stmt 1 view .LVU54
	.loc 1 113 11 is_stmt 0 view .LVU55
	xorl	%eax, %eax
	call	ioctl@PLT
.LVL5:
	.loc 1 113 10 view .LVU56
	testl	%eax, %eax
	js	.L44
	.loc 1 121 7 is_stmt 1 view .LVU57
	.loc 1 121 17 is_stmt 0 view .LVU58
	movl	36(%rsp), %eax
	.loc 1 121 10 view .LVU59
	testl	%eax, %eax
	je	.L45
	.loc 1 127 7 is_stmt 1 view .LVU60
	movq	%rax, %rdx
	movq	24(%rbp), %rcx
	notq	%rdx
	cmpq	%rdx, %rcx
	ja	.L46
	.loc 1 128 7 view .LVU61
.LBB21:
.LBB22:
.LBB23:
	.file 3 "./lib/xalloc.h"
	.loc 3 114 7 is_stmt 0 view .LVU62
	movl	$24, %edx
.LBE23:
.LBE22:
	.loc 1 132 41 view .LVU63
	movq	40(%rbp), %rdi
.LBE21:
	.loc 1 128 22 view .LVU64
	addq	%rax, %rcx
.LBB30:
.LBB27:
.LBB24:
	.loc 3 114 7 view .LVU65
	movq	%rdx, %rax
.LBE24:
.LBE27:
.LBE30:
	.loc 1 128 22 view .LVU66
	movq	%rcx, 24(%rbp)
.LBB31:
	.loc 1 132 9 is_stmt 1 view .LVU67
	.loc 1 132 35 is_stmt 0 view .LVU68
	subq	%rdi, %rbx
.LVL6:
	.loc 1 133 9 is_stmt 1 view .LVU69
.LBB28:
.LBI22:
	.loc 3 112 1 view .LVU70
.LBB25:
	.loc 3 114 3 view .LVU71
	.loc 3 114 7 is_stmt 0 view .LVU72
	mulq	%rcx
	seto	%dl
	movzbl	%dl, %edx
	testq	%rax, %rax
	js	.L40
	.loc 3 114 6 view .LVU73
	testq	%rdx, %rdx
	jne	.L40
	.loc 3 116 3 is_stmt 1 view .LVU74
	.loc 3 116 10 is_stmt 0 view .LVU75
	leaq	(%rcx,%rcx,2), %rsi
	salq	$3, %rsi
	call	xrealloc@PLT
.LVL7:
	.loc 3 116 10 view .LVU76
.LBE25:
.LBE28:
.LBE31:
	.loc 1 139 29 view .LVU77
	movl	36(%rsp), %r9d
.LBB32:
	.loc 1 133 24 view .LVU78
	movq	%rax, 40(%rbp)
	.loc 1 135 9 is_stmt 1 view .LVU79
.LVL8:
	.loc 1 135 17 is_stmt 0 view .LVU80
	addq	%rax, %rbx
.LVL9:
	.loc 1 135 17 view .LVU81
.LBE32:
	.loc 1 138 7 is_stmt 1 view .LVU82
	.loc 1 139 7 view .LVU83
	.loc 1 139 19 view .LVU84
	.loc 1 139 7 is_stmt 0 view .LVU85
	testl	%r9d, %r9d
	je	.L13
	.loc 1 139 14 view .LVU86
	xorl	%r8d, %r8d
	leaq	48(%rsp), %r11
.LVL10:
.L22:
	.loc 1 141 11 is_stmt 1 view .LVU87
	movl	%r8d, %ecx
	movq	%r13, %rdi
	leaq	0(,%rcx,8), %rdx
	subq	%rcx, %rdx
	leaq	(%r11,%rdx,8), %rdx
	movq	16(%rdx), %rsi
	movq	(%rdx), %rcx
	subq	%rsi, %rdi
	cmpq	%rdi, %rcx
	ja	.L47
	.loc 1 144 11 view .LVU88
	.loc 1 146 11 view .LVU89
	.loc 1 146 14 is_stmt 0 view .LVU90
	testl	%r12d, %r12d
	je	.L15
	.loc 1 147 32 discriminator 1 view .LVU91
	movl	40(%rdx), %r10d
	movq	8(%rbx), %r14
	movq	(%rbx), %rdi
	.loc 1 147 42 discriminator 1 view .LVU92
	movl	%r10d, %r15d
	addq	%r14, %rdi
	andl	$-2, %r15d
	.loc 1 146 18 discriminator 1 view .LVU93
	cmpl	%r15d, 16(%rbx)
	je	.L48
.L16:
	.loc 1 156 16 is_stmt 1 discriminator 1 view .LVU94
	.loc 1 157 27 is_stmt 0 discriminator 1 view .LVU95
	cmpq	%rdi, %rcx
	jnb	.L19
.L18:
.LVL11:
.LBB33:
	.loc 1 174 15 is_stmt 1 view .LVU96
	.loc 1 176 15 view .LVU97
	.loc 1 174 29 is_stmt 0 view .LVU98
	movq	%rdi, %r10
	subq	%rcx, %r10
.LVL12:
	.loc 1 176 18 view .LVU99
	cmpq	%r10, %rsi
	ja	.L44
	.loc 1 182 15 is_stmt 1 view .LVU100
	.loc 1 183 39 is_stmt 0 view .LVU101
	addq	%rsi, %rcx
	.loc 1 182 40 view .LVU102
	movq	%rdi, (%rdx)
	.loc 1 183 15 is_stmt 1 view .LVU103
	.loc 1 183 39 is_stmt 0 view .LVU104
	subq	%rdi, %rcx
	movq	%rcx, 16(%rdx)
	.loc 1 185 15 is_stmt 1 view .LVU105
.LVL13:
	.loc 1 186 15 view .LVU106
.L17:
	.loc 1 186 15 is_stmt 0 view .LVU107
.LBE33:
	.loc 1 139 50 is_stmt 1 discriminator 2 view .LVU108
	.loc 1 139 19 discriminator 2 view .LVU109
	.loc 1 139 7 is_stmt 0 discriminator 2 view .LVU110
	cmpl	%r9d, %r8d
	jb	.L22
.LVL14:
.L13:
	.loc 1 198 7 is_stmt 1 view .LVU111
	.loc 1 198 10 is_stmt 0 view .LVU112
	testb	$1, 16(%rbx)
	jne	.L23
	.loc 1 198 10 view .LVU113
	movzbl	33(%rbp), %edx
	.loc 1 203 7 is_stmt 1 view .LVU114
	.loc 1 203 10 is_stmt 0 view .LVU115
	cmpl	$72, %r12d
	jbe	.L49
	.loc 1 203 10 view .LVU116
	movq	%rax, %r9
	.loc 1 203 22 discriminator 1 view .LVU117
	testb	%dl, %dl
	jne	.L26
	.loc 1 204 9 is_stmt 1 view .LVU118
.LVL15:
	.loc 1 204 36 is_stmt 0 view .LVU119
	leal	-1(%r12), %eax
	.loc 1 204 34 view .LVU120
	leaq	(%rax,%rax,2), %rdx
.LVL16:
	.loc 1 207 7 is_stmt 1 view .LVU121
	.loc 1 207 22 is_stmt 0 view .LVU122
	movq	%rax, 24(%rbp)
	.loc 1 209 7 is_stmt 1 view .LVU123
	.loc 1 212 9 view .LVU124
	.loc 1 212 49 is_stmt 0 view .LVU125
	movq	-16(%r9,%rdx,8), %rax
	addq	-24(%r9,%rdx,8), %rax
	.loc 1 212 26 view .LVU126
	movq	%rax, 8(%rbp)
	.loc 1 214 7 is_stmt 1 view .LVU127
.LVL17:
.L31:
	.loc 1 214 7 is_stmt 0 view .LVU128
.LBE35:
	.loc 1 218 3 is_stmt 1 view .LVU129
	.loc 1 218 10 is_stmt 0 view .LVU130
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 219 1 view .LVU131
	movq	4120(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L50
	addq	$4136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL18:
	.loc 1 219 1 view .LVU132
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL19:
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
.LBB36:
	.loc 1 156 16 is_stmt 1 discriminator 1 view .LVU133
	.loc 1 156 36 is_stmt 0 discriminator 1 view .LVU134
	movq	8(%rbp), %rdi
	.loc 1 156 29 discriminator 1 view .LVU135
	cmpq	%rdi, %rcx
	jb	.L18
	movl	40(%rdx), %r10d
.L19:
	.loc 1 190 15 is_stmt 1 view .LVU136
	.loc 1 190 40 is_stmt 0 view .LVU137
	movl	%r12d, %edx
	addl	$1, %r8d
.LVL20:
	.loc 1 194 17 view .LVU138
	addl	$1, %r12d
.LVL21:
	.loc 1 190 40 view .LVU139
	leaq	(%rdx,%rdx,2), %rdx
.LVL22:
	.loc 1 190 23 view .LVU140
	leaq	(%rax,%rdx,8), %rbx
.LVL23:
	.loc 1 191 15 is_stmt 1 view .LVU141
	.loc 1 191 36 is_stmt 0 view .LVU142
	movq	%rcx, (%rbx)
	.loc 1 192 15 is_stmt 1 view .LVU143
	.loc 1 192 35 is_stmt 0 view .LVU144
	movq	%rsi, 8(%rbx)
	.loc 1 193 15 is_stmt 1 view .LVU145
	.loc 1 193 34 is_stmt 0 view .LVU146
	movl	%r10d, 16(%rbx)
	.loc 1 194 15 is_stmt 1 view .LVU147
.LVL24:
	.loc 1 194 15 is_stmt 0 view .LVU148
	jmp	.L17
.LVL25:
	.p2align 4,,10
	.p2align 3
.L44:
	.loc 1 115 11 is_stmt 1 view .LVU149
	.loc 1 117 18 is_stmt 0 view .LVU150
	xorl	%eax, %eax
	.loc 1 115 14 view .LVU151
	cmpq	$0, 8(%rbp)
	jne	.L3
	.loc 1 116 13 is_stmt 1 view .LVU152
	.loc 1 116 39 is_stmt 0 view .LVU153
	movb	$1, 32(%rbp)
	.loc 1 117 18 view .LVU154
	xorl	%eax, %eax
	jmp	.L3
.LVL26:
	.p2align 4,,10
	.p2align 3
.L48:
	.loc 1 148 15 view .LVU155
	cmpq	%rdi, %rcx
	jne	.L16
	.loc 1 152 15 is_stmt 1 view .LVU156
	.loc 1 152 35 is_stmt 0 view .LVU157
	addq	%r14, %rsi
	.loc 1 154 34 view .LVU158
	movl	%r10d, 16(%rbx)
	addl	$1, %r8d
.LVL27:
	.loc 1 152 35 view .LVU159
	movq	%rsi, 8(%rbx)
	.loc 1 154 15 is_stmt 1 view .LVU160
	.loc 1 154 34 is_stmt 0 view .LVU161
	jmp	.L17
.LVL28:
.L49:
	.loc 1 207 7 is_stmt 1 view .LVU162
	.loc 1 207 22 is_stmt 0 view .LVU163
	movl	%r12d, %eax
	movq	%rax, 24(%rbp)
	.loc 1 209 7 is_stmt 1 view .LVU164
	.loc 1 209 10 is_stmt 0 view .LVU165
	testb	%dl, %dl
	jne	.L31
	.loc 1 212 9 is_stmt 1 view .LVU166
	.loc 1 212 49 is_stmt 0 view .LVU167
	movq	8(%rbx), %rax
	addq	(%rbx), %rax
	.loc 1 212 26 view .LVU168
	movq	%rax, 8(%rbp)
	.loc 1 214 7 is_stmt 1 view .LVU169
	.loc 1 214 10 is_stmt 0 view .LVU170
	cmpl	$72, %r12d
	jne	.L29
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L23:
	.loc 1 199 9 is_stmt 1 view .LVU171
	.loc 1 199 32 is_stmt 0 view .LVU172
	movb	$1, 33(%rbp)
	.loc 1 203 7 is_stmt 1 view .LVU173
.L26:
	.loc 1 207 7 view .LVU174
	.loc 1 207 22 is_stmt 0 view .LVU175
	movl	%r12d, %eax
	movq	%rax, 24(%rbp)
	.loc 1 209 7 is_stmt 1 view .LVU176
	jmp	.L31
.L45:
	.loc 1 123 11 view .LVU177
	.loc 1 124 35 is_stmt 0 view .LVU178
	cmpq	$0, 8(%rbp)
	.loc 1 123 34 view .LVU179
	movb	$1, 33(%rbp)
	.loc 1 124 11 is_stmt 1 view .LVU180
	.loc 1 124 35 is_stmt 0 view .LVU181
	setne	%al
	jmp	.L3
.LVL29:
.L47:
	.loc 1 141 11 is_stmt 1 discriminator 1 view .LVU182
	leaq	__PRETTY_FUNCTION__.7159(%rip), %rcx
	movl	$141, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.LVL30:
.L50:
	.loc 1 141 11 is_stmt 0 discriminator 1 view .LVU183
.LBE36:
	.loc 1 219 1 view .LVU184
	call	__stack_chk_fail@PLT
.LVL31:
.L40:
.LBB37:
.LBB34:
.LBB29:
.LBB26:
	.loc 3 115 5 is_stmt 1 view .LVU185
	call	xalloc_die@PLT
.LVL32:
.L46:
	.loc 3 115 5 is_stmt 0 view .LVU186
.LBE26:
.LBE29:
.LBE34:
	.loc 1 127 7 is_stmt 1 discriminator 1 view .LVU187
	leaq	__PRETTY_FUNCTION__.7159(%rip), %rcx
	movl	$127, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.LVL33:
.LBE37:
	.cfi_endproc
.LFE138:
	.size	extent_scan_read, .-extent_scan_read
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.7159, @object
	.size	__PRETTY_FUNCTION__.7159, 17
__PRETTY_FUNCTION__.7159:
	.string	"extent_scan_read"
	.text
.Letext0:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "./lib/sys/select.h"
	.file 8 "/usr/include/time.h"
	.file 9 "/usr/include/signal.h"
	.file 10 "/usr/include/unistd.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 12 "/usr/include/errno.h"
	.file 13 "src/version.h"
	.file 14 "./lib/exitfail.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 16 "./lib/xalloc-oversized.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "src/extent-scan.h"
	.file 25 "src/fiemap.h"
	.file 26 "/usr/include/x86_64-linux-gnu/sys/ioctl.h"
	.file 27 "/usr/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa9b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF138
	.byte	0xc
	.long	.LASF139
	.long	.LASF140
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
	.byte	0x4
	.byte	0x2a
	.byte	0x16
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF8
	.byte	0x4
	.byte	0x2d
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF9
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x6f
	.uleb128 0x5
	.long	.LASF10
	.byte	0x4
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
	.byte	0x5
	.byte	0x55
	.byte	0x11
	.long	0x82
	.uleb128 0x5
	.long	.LASF13
	.byte	0x6
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF16
	.byte	0x7
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
	.byte	0x8
	.byte	0x9f
	.byte	0xe
	.long	0xec
	.uleb128 0xc
	.long	.LASF18
	.byte	0x8
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF19
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.long	0x6f
	.uleb128 0xc
	.long	.LASF20
	.byte	0x8
	.byte	0xa6
	.byte	0xe
	.long	0xec
	.uleb128 0xc
	.long	.LASF21
	.byte	0x8
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF22
	.byte	0x8
	.byte	0xaf
	.byte	0x11
	.long	0x6f
	.uleb128 0x9
	.long	.LASF23
	.byte	0x8
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x5
	.long	.LASF24
	.byte	0x6
	.byte	0x8f
	.byte	0x1a
	.long	0x6f
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF25
	.uleb128 0xa
	.long	0xe7
	.long	0x174
	.uleb128 0xb
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x164
	.uleb128 0x9
	.long	.LASF26
	.byte	0x9
	.value	0x11e
	.byte	0x1a
	.long	0x174
	.uleb128 0x9
	.long	.LASF27
	.byte	0x9
	.value	0x11f
	.byte	0x1a
	.long	0x174
	.uleb128 0x9
	.long	.LASF28
	.byte	0xa
	.value	0x21f
	.byte	0xf
	.long	0x1a0
	.uleb128 0x7
	.byte	0x8
	.long	0x9c
	.uleb128 0x9
	.long	.LASF29
	.byte	0xa
	.value	0x221
	.byte	0xf
	.long	0x1a0
	.uleb128 0xc
	.long	.LASF30
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0x9c
	.uleb128 0xc
	.long	.LASF31
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF32
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF33
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF34
	.byte	0xc
	.byte	0x2d
	.byte	0xe
	.long	0x9c
	.uleb128 0xc
	.long	.LASF35
	.byte	0xc
	.byte	0x2e
	.byte	0xe
	.long	0x9c
	.uleb128 0xc
	.long	.LASF36
	.byte	0xd
	.byte	0x1
	.byte	0x14
	.long	0xe1
	.uleb128 0xc
	.long	.LASF37
	.byte	0xe
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x5
	.long	.LASF38
	.byte	0xf
	.byte	0x1a
	.byte	0x14
	.long	0x63
	.uleb128 0x5
	.long	.LASF39
	.byte	0xf
	.byte	0x1b
	.byte	0x14
	.long	0x76
	.uleb128 0x5
	.long	.LASF40
	.byte	0x10
	.byte	0x22
	.byte	0x13
	.long	0x151
	.uleb128 0xd
	.long	.LASF96
	.byte	0xd8
	.byte	0x11
	.byte	0x31
	.byte	0x8
	.long	0x3be
	.uleb128 0xe
	.long	.LASF41
	.byte	0x11
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF42
	.byte	0x11
	.byte	0x36
	.byte	0x9
	.long	0x9c
	.byte	0x8
	.uleb128 0xe
	.long	.LASF43
	.byte	0x11
	.byte	0x37
	.byte	0x9
	.long	0x9c
	.byte	0x10
	.uleb128 0xe
	.long	.LASF44
	.byte	0x11
	.byte	0x38
	.byte	0x9
	.long	0x9c
	.byte	0x18
	.uleb128 0xe
	.long	.LASF45
	.byte	0x11
	.byte	0x39
	.byte	0x9
	.long	0x9c
	.byte	0x20
	.uleb128 0xe
	.long	.LASF46
	.byte	0x11
	.byte	0x3a
	.byte	0x9
	.long	0x9c
	.byte	0x28
	.uleb128 0xe
	.long	.LASF47
	.byte	0x11
	.byte	0x3b
	.byte	0x9
	.long	0x9c
	.byte	0x30
	.uleb128 0xe
	.long	.LASF48
	.byte	0x11
	.byte	0x3c
	.byte	0x9
	.long	0x9c
	.byte	0x38
	.uleb128 0xe
	.long	.LASF49
	.byte	0x11
	.byte	0x3d
	.byte	0x9
	.long	0x9c
	.byte	0x40
	.uleb128 0xe
	.long	.LASF50
	.byte	0x11
	.byte	0x40
	.byte	0x9
	.long	0x9c
	.byte	0x48
	.uleb128 0xe
	.long	.LASF51
	.byte	0x11
	.byte	0x41
	.byte	0x9
	.long	0x9c
	.byte	0x50
	.uleb128 0xe
	.long	.LASF52
	.byte	0x11
	.byte	0x42
	.byte	0x9
	.long	0x9c
	.byte	0x58
	.uleb128 0xe
	.long	.LASF53
	.byte	0x11
	.byte	0x44
	.byte	0x16
	.long	0x3d7
	.byte	0x60
	.uleb128 0xe
	.long	.LASF54
	.byte	0x11
	.byte	0x46
	.byte	0x14
	.long	0x3dd
	.byte	0x68
	.uleb128 0xe
	.long	.LASF55
	.byte	0x11
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xe
	.long	.LASF56
	.byte	0x11
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xe
	.long	.LASF57
	.byte	0x11
	.byte	0x4a
	.byte	0xb
	.long	0x82
	.byte	0x78
	.uleb128 0xe
	.long	.LASF58
	.byte	0x11
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xe
	.long	.LASF59
	.byte	0x11
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xe
	.long	.LASF60
	.byte	0x11
	.byte	0x4f
	.byte	0x8
	.long	0x3e3
	.byte	0x83
	.uleb128 0xe
	.long	.LASF61
	.byte	0x11
	.byte	0x51
	.byte	0xf
	.long	0x3f3
	.byte	0x88
	.uleb128 0xe
	.long	.LASF62
	.byte	0x11
	.byte	0x59
	.byte	0xd
	.long	0x8e
	.byte	0x90
	.uleb128 0xe
	.long	.LASF63
	.byte	0x11
	.byte	0x5b
	.byte	0x17
	.long	0x3fe
	.byte	0x98
	.uleb128 0xe
	.long	.LASF64
	.byte	0x11
	.byte	0x5c
	.byte	0x19
	.long	0x409
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF65
	.byte	0x11
	.byte	0x5d
	.byte	0x14
	.long	0x3dd
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF66
	.byte	0x11
	.byte	0x5e
	.byte	0x9
	.long	0x9a
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF67
	.byte	0x11
	.byte	0x5f
	.byte	0xa
	.long	0xba
	.byte	0xb8
	.uleb128 0xe
	.long	.LASF68
	.byte	0x11
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x11
	.byte	0x62
	.byte	0x8
	.long	0x40f
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF70
	.byte	0x12
	.byte	0x7
	.byte	0x19
	.long	0x237
	.uleb128 0xf
	.long	.LASF141
	.byte	0x11
	.byte	0x2b
	.byte	0xe
	.uleb128 0x10
	.long	.LASF71
	.uleb128 0x7
	.byte	0x8
	.long	0x3d2
	.uleb128 0x7
	.byte	0x8
	.long	0x237
	.uleb128 0xa
	.long	0xa2
	.long	0x3f3
	.uleb128 0xb
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x3ca
	.uleb128 0x10
	.long	.LASF72
	.uleb128 0x7
	.byte	0x8
	.long	0x3f9
	.uleb128 0x10
	.long	.LASF73
	.uleb128 0x7
	.byte	0x8
	.long	0x404
	.uleb128 0xa
	.long	0xa2
	.long	0x41f
	.uleb128 0xb
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.long	.LASF74
	.byte	0x13
	.byte	0x89
	.byte	0xe
	.long	0x42b
	.uleb128 0x7
	.byte	0x8
	.long	0x3be
	.uleb128 0xc
	.long	.LASF75
	.byte	0x13
	.byte	0x8a
	.byte	0xe
	.long	0x42b
	.uleb128 0xc
	.long	.LASF76
	.byte	0x13
	.byte	0x8b
	.byte	0xe
	.long	0x42b
	.uleb128 0xc
	.long	.LASF77
	.byte	0x14
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	0xe7
	.long	0x460
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x455
	.uleb128 0xc
	.long	.LASF78
	.byte	0x14
	.byte	0x1b
	.byte	0x1a
	.long	0x460
	.uleb128 0xc
	.long	.LASF79
	.byte	0x14
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF80
	.byte	0x14
	.byte	0x1f
	.byte	0x1a
	.long	0x460
	.uleb128 0xa
	.long	0xa9
	.long	0x494
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x489
	.uleb128 0xc
	.long	.LASF81
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x494
	.uleb128 0xc
	.long	.LASF82
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0xe1
	.uleb128 0x12
	.long	.LASF142
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x506
	.uleb128 0x13
	.long	.LASF83
	.byte	0
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.uleb128 0x13
	.long	.LASF85
	.byte	0x2
	.uleb128 0x13
	.long	.LASF86
	.byte	0x3
	.uleb128 0x13
	.long	.LASF87
	.byte	0x4
	.uleb128 0x13
	.long	.LASF88
	.byte	0x5
	.uleb128 0x13
	.long	.LASF89
	.byte	0x6
	.uleb128 0x13
	.long	.LASF90
	.byte	0x7
	.uleb128 0x13
	.long	.LASF91
	.byte	0x8
	.uleb128 0x13
	.long	.LASF92
	.byte	0x9
	.uleb128 0x13
	.long	.LASF93
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x4b1
	.uleb128 0x9
	.long	.LASF94
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x460
	.uleb128 0xa
	.long	0x506
	.long	0x523
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x518
	.uleb128 0x9
	.long	.LASF95
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x523
	.uleb128 0xd
	.long	.LASF97
	.byte	0x18
	.byte	0x18
	.byte	0x17
	.byte	0x8
	.long	0x56a
	.uleb128 0xe
	.long	.LASF98
	.byte	0x18
	.byte	0x1a
	.byte	0x9
	.long	0xae
	.byte	0
	.uleb128 0xe
	.long	.LASF99
	.byte	0x18
	.byte	0x1d
	.byte	0x9
	.long	0xae
	.byte	0x8
	.uleb128 0xe
	.long	.LASF100
	.byte	0x18
	.byte	0x20
	.byte	0x10
	.long	0x3b
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	.LASF101
	.byte	0x30
	.byte	0x18
	.byte	0x24
	.byte	0x8
	.long	0x5d2
	.uleb128 0x14
	.string	"fd"
	.byte	0x18
	.byte	0x27
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF102
	.byte	0x18
	.byte	0x2a
	.byte	0x9
	.long	0xae
	.byte	0x8
	.uleb128 0xe
	.long	.LASF103
	.byte	0x18
	.byte	0x2d
	.byte	0x10
	.long	0x3b
	.byte	0x10
	.uleb128 0xe
	.long	.LASF104
	.byte	0x18
	.byte	0x30
	.byte	0xa
	.long	0xba
	.byte	0x18
	.uleb128 0xe
	.long	.LASF105
	.byte	0x18
	.byte	0x34
	.byte	0x8
	.long	0x5d2
	.byte	0x20
	.uleb128 0xe
	.long	.LASF106
	.byte	0x18
	.byte	0x37
	.byte	0x8
	.long	0x5d2
	.byte	0x21
	.uleb128 0xe
	.long	.LASF107
	.byte	0x18
	.byte	0x3a
	.byte	0x17
	.long	0x5d9
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF108
	.uleb128 0x7
	.byte	0x8
	.long	0x535
	.uleb128 0xd
	.long	.LASF109
	.byte	0x38
	.byte	0x19
	.byte	0xe
	.byte	0x8
	.long	0x63b
	.uleb128 0xe
	.long	.LASF110
	.byte	0x19
	.byte	0x12
	.byte	0xc
	.long	0x21f
	.byte	0
	.uleb128 0xe
	.long	.LASF111
	.byte	0x19
	.byte	0x16
	.byte	0xc
	.long	0x21f
	.byte	0x8
	.uleb128 0xe
	.long	.LASF112
	.byte	0x19
	.byte	0x19
	.byte	0xc
	.long	0x21f
	.byte	0x10
	.uleb128 0xe
	.long	.LASF113
	.byte	0x19
	.byte	0x1b
	.byte	0xc
	.long	0x63b
	.byte	0x18
	.uleb128 0xe
	.long	.LASF114
	.byte	0x19
	.byte	0x1e
	.byte	0xc
	.long	0x213
	.byte	0x28
	.uleb128 0xe
	.long	.LASF115
	.byte	0x19
	.byte	0x20
	.byte	0xc
	.long	0x64b
	.byte	0x2c
	.byte	0
	.uleb128 0xa
	.long	0x21f
	.long	0x64b
	.uleb128 0xb
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0x213
	.long	0x65b
	.uleb128 0xb
	.long	0x42
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	.LASF116
	.byte	0x20
	.byte	0x19
	.byte	0x23
	.byte	0x8
	.long	0x6c4
	.uleb128 0xe
	.long	.LASF117
	.byte	0x19
	.byte	0x26
	.byte	0xc
	.long	0x21f
	.byte	0
	.uleb128 0xe
	.long	.LASF118
	.byte	0x19
	.byte	0x29
	.byte	0xc
	.long	0x21f
	.byte	0x8
	.uleb128 0xe
	.long	.LASF103
	.byte	0x19
	.byte	0x2c
	.byte	0xc
	.long	0x213
	.byte	0x10
	.uleb128 0xe
	.long	.LASF119
	.byte	0x19
	.byte	0x2f
	.byte	0xc
	.long	0x213
	.byte	0x14
	.uleb128 0xe
	.long	.LASF120
	.byte	0x19
	.byte	0x32
	.byte	0xc
	.long	0x213
	.byte	0x18
	.uleb128 0xe
	.long	.LASF121
	.byte	0x19
	.byte	0x34
	.byte	0xc
	.long	0x213
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF122
	.byte	0x19
	.byte	0x37
	.byte	0x18
	.long	0x6c4
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.long	0x5df
	.long	0x6d3
	.uleb128 0x15
	.long	0x42
	.byte	0
	.uleb128 0x16
	.long	.LASF143
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	0x5d2
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x97f
	.uleb128 0x17
	.long	.LASF130
	.byte	0x1
	.byte	0x57
	.byte	0x27
	.long	0x97f
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x18
	.string	"si"
	.byte	0x1
	.byte	0x59
	.byte	0x10
	.long	0x3b
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x19
	.long	.LASF123
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.long	0x5d9
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1a
	.long	.LASF144
	.long	0x995
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7159
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0
	.long	0x971
	.uleb128 0x1c
	.value	0x1000
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.long	0x76b
	.uleb128 0x1d
	.string	"f"
	.byte	0x1
	.byte	0x5e
	.byte	0x1d
	.long	0x65b
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0x5e
	.byte	0x25
	.long	0x99a
	.byte	0
	.uleb128 0x1e
	.long	.LASF145
	.byte	0x1
	.byte	0x5e
	.byte	0x30
	.long	0x74c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4176
	.uleb128 0x19
	.long	.LASF116
	.byte	0x1
	.byte	0x5f
	.byte	0x16
	.long	0x9ab
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x19
	.long	.LASF122
	.byte	0x1
	.byte	0x60
	.byte	0x1d
	.long	0x9b1
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1f
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1
	.byte	0x61
	.byte	0xc
	.long	0x7b8
	.uleb128 0x13
	.long	.LASF124
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1
	.byte	0x62
	.byte	0xc
	.long	0x7cd
	.uleb128 0x13
	.long	.LASF125
	.byte	0x48
	.byte	0
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x8a
	.byte	0x14
	.long	0x3b
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x80
	.long	0x854
	.uleb128 0x19
	.long	.LASF126
	.byte	0x1
	.byte	0x84
	.byte	0x10
	.long	0xba
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x20
	.long	0x9ff
	.quad	.LBI22
	.byte	.LVU70
	.long	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x85
	.byte	0x1a
	.uleb128 0x21
	.long	0xa24
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x21
	.long	0xa1a
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x21
	.long	0xa10
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x22
	.quad	.LVL7
	.long	0xa65
	.uleb128 0x22
	.quad	.LVL32
	.long	0xa71
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x892
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.byte	0xa4
	.byte	0x18
	.long	0x21f
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.byte	0xa5
	.byte	0x18
	.long	0x21f
	.long	.LLST14
	.long	.LVUS14
	.byte	0
	.uleb128 0x24
	.long	0xa2f
	.quad	.LBI17
	.byte	.LVU36
	.long	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x68
	.byte	0x7
	.long	0x8d3
	.uleb128 0x21
	.long	0xa58
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x21
	.long	0xa4c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x21
	.long	0xa40
	.long	.LLST8
	.long	.LVUS8
	.byte	0
	.uleb128 0x25
	.quad	.LVL5
	.long	0xa7d
	.long	0x8f6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0xc020660b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -4184
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.quad	.LVL30
	.long	0xa89
	.long	0x935
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x8d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7159
	.byte	0
	.uleb128 0x27
	.quad	.LVL33
	.long	0xa89
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x7f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7159
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL31
	.long	0xa95
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x56a
	.uleb128 0xa
	.long	0xa9
	.long	0x995
	.uleb128 0xb
	.long	0x42
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x985
	.uleb128 0xa
	.long	0xa2
	.long	0x9ab
	.uleb128 0x28
	.long	0x42
	.value	0xfff
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x65b
	.uleb128 0x7
	.byte	0x8
	.long	0x5df
	.uleb128 0x29
	.long	.LASF146
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f2
	.uleb128 0x2a
	.long	.LASF129
	.byte	0x1
	.byte	0x45
	.byte	0x17
	.long	0x57
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF130
	.byte	0x1
	.byte	0x45
	.byte	0x33
	.long	0x97f
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2b
	.long	.LASF147
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	0x5d2
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF148
	.byte	0x3
	.byte	0x70
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.long	0xa2f
	.uleb128 0x2d
	.string	"p"
	.byte	0x3
	.byte	0x70
	.byte	0x12
	.long	0x9a
	.uleb128 0x2d
	.string	"n"
	.byte	0x3
	.byte	0x70
	.byte	0x1c
	.long	0xba
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.byte	0x70
	.byte	0x26
	.long	0xba
	.byte	0
	.uleb128 0x2e
	.long	.LASF149
	.byte	0x2
	.byte	0x3b
	.byte	0x1
	.long	0x9a
	.byte	0x3
	.long	0xa65
	.uleb128 0x2f
	.long	.LASF131
	.byte	0x2
	.byte	0x3b
	.byte	0x1
	.long	0x9a
	.uleb128 0x2f
	.long	.LASF132
	.byte	0x2
	.byte	0x3b
	.byte	0x1
	.long	0x57
	.uleb128 0x2f
	.long	.LASF133
	.byte	0x2
	.byte	0x3b
	.byte	0x1
	.long	0xba
	.byte	0
	.uleb128 0x30
	.long	.LASF134
	.long	.LASF134
	.byte	0x3
	.byte	0x3b
	.byte	0x7
	.uleb128 0x30
	.long	.LASF135
	.long	.LASF135
	.byte	0x3
	.byte	0x2f
	.byte	0x1b
	.uleb128 0x30
	.long	.LASF136
	.long	.LASF136
	.byte	0x1a
	.byte	0x29
	.byte	0xc
	.uleb128 0x30
	.long	.LASF137
	.long	.LASF137
	.byte	0x1b
	.byte	0x45
	.byte	0xd
	.uleb128 0x31
	.long	.LASF150
	.long	.LASF150
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
	.uleb128 0x2117
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 0
.LLST0:
	.quad	.LVL1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU25
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU128
	.uleb128 .LVU133
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU183
	.uleb128 .LVU185
	.uleb128 0
.LLST1:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL3-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL21-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL31-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU26
	.uleb128 .LVU69
	.uleb128 .LVU80
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU128
	.uleb128 .LVU133
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU183
	.uleb128 .LVU186
	.uleb128 0
.LLST2:
	.quad	.LVL2-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x48
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL32-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU31
	.uleb128 0
.LLST3:
	.quad	.LVL3-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -4184
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU32
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST4:
	.quad	.LVL3-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x4
	.byte	0x91
	.sleb128 -4144
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	.LVL14-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x4
	.byte	0x91
	.sleb128 -4144
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x4
	.byte	0x91
	.sleb128 -4144
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x4
	.byte	0x91
	.sleb128 -4144
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-1-.Ltext0
	.value	0x1
	.byte	0x5b
	.quad	.LVL30-1-.Ltext0
	.quad	.LFE138-.Ltext0
	.value	0x4
	.byte	0x91
	.sleb128 -4144
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU83
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU107
	.uleb128 .LVU133
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU149
	.uleb128 .LVU155
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU162
	.uleb128 .LVU182
	.uleb128 .LVU183
.LLST5:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL13-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL20-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU69
	.uleb128 .LVU81
	.uleb128 .LVU185
	.uleb128 .LVU186
.LLST9:
	.quad	.LVL6-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU70
	.uleb128 .LVU76
	.uleb128 .LVU185
	.uleb128 .LVU186
.LLST10:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x2
	.byte	0x48
	.byte	0x9f
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x2
	.byte	0x48
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU70
	.uleb128 .LVU76
	.uleb128 .LVU185
	.uleb128 .LVU186
.LLST11:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU70
	.uleb128 .LVU76
	.uleb128 .LVU185
	.uleb128 .LVU186
.LLST12:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU96
	.uleb128 .LVU107
.LLST13:
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU107
.LLST14:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x5a
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU36
	.uleb128 .LVU42
.LLST6:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU36
	.uleb128 .LVU42
.LLST7:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU36
	.uleb128 .LVU42
.LLST8:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -4184
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
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"exit_failure"
.LASF9:
	.string	"__off_t"
.LASF42:
	.string	"_IO_read_ptr"
.LASF91:
	.string	"locale_quoting_style"
.LASF54:
	.string	"_chain"
.LASF126:
	.string	"prev_idx"
.LASF142:
	.string	"quoting_style"
.LASF13:
	.string	"size_t"
.LASF115:
	.string	"fe_reserved"
.LASF60:
	.string	"_shortbuf"
.LASF124:
	.string	"headersize"
.LASF84:
	.string	"shell_quoting_style"
.LASF132:
	.string	"__ch"
.LASF48:
	.string	"_IO_buf_base"
.LASF14:
	.string	"long long unsigned int"
.LASF106:
	.string	"hit_final_extent"
.LASF75:
	.string	"stdout"
.LASF123:
	.string	"last_ei"
.LASF102:
	.string	"scan_start"
.LASF134:
	.string	"xrealloc"
.LASF19:
	.string	"__timezone"
.LASF15:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF95:
	.string	"quoting_style_vals"
.LASF144:
	.string	"__PRETTY_FUNCTION__"
.LASF90:
	.string	"escape_quoting_style"
.LASF121:
	.string	"fm_reserved"
.LASF83:
	.string	"literal_quoting_style"
.LASF55:
	.string	"_fileno"
.LASF43:
	.string	"_IO_read_end"
.LASF129:
	.string	"src_fd"
.LASF6:
	.string	"long int"
.LASF16:
	.string	"_gl_cxxalias_dummy"
.LASF130:
	.string	"scan"
.LASF104:
	.string	"ei_count"
.LASF64:
	.string	"_wide_data"
.LASF49:
	.string	"_IO_buf_end"
.LASF58:
	.string	"_cur_column"
.LASF35:
	.string	"program_invocation_short_name"
.LASF88:
	.string	"c_quoting_style"
.LASF72:
	.string	"_IO_codecvt"
.LASF111:
	.string	"fe_physical"
.LASF80:
	.string	"_sys_errlist"
.LASF34:
	.string	"program_invocation_name"
.LASF57:
	.string	"_old_offset"
.LASF62:
	.string	"_offset"
.LASF147:
	.string	"extent_need_sync"
.LASF1:
	.string	"short unsigned int"
.LASF125:
	.string	"count"
.LASF12:
	.string	"off_t"
.LASF7:
	.string	"__uint32_t"
.LASF87:
	.string	"shell_escape_always_quoting_style"
.LASF22:
	.string	"timezone"
.LASF105:
	.string	"initial_scan_failed"
.LASF82:
	.string	"program_name"
.LASF71:
	.string	"_IO_marker"
.LASF74:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF138:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF3:
	.string	"long unsigned int"
.LASF116:
	.string	"fiemap"
.LASF46:
	.string	"_IO_write_ptr"
.LASF100:
	.string	"ext_flags"
.LASF21:
	.string	"daylight"
.LASF77:
	.string	"sys_nerr"
.LASF93:
	.string	"custom_quoting_style"
.LASF143:
	.string	"extent_scan_read"
.LASF97:
	.string	"extent_info"
.LASF36:
	.string	"Version"
.LASF50:
	.string	"_IO_save_base"
.LASF29:
	.string	"environ"
.LASF61:
	.string	"_lock"
.LASF56:
	.string	"_flags2"
.LASF68:
	.string	"_mode"
.LASF118:
	.string	"fm_length"
.LASF66:
	.string	"_freeres_buf"
.LASF27:
	.string	"sys_siglist"
.LASF24:
	.string	"ptrdiff_t"
.LASF81:
	.string	"version_etc_copyright"
.LASF63:
	.string	"_codecvt"
.LASF30:
	.string	"optarg"
.LASF23:
	.string	"getdate_err"
.LASF31:
	.string	"optind"
.LASF47:
	.string	"_IO_write_end"
.LASF39:
	.string	"uint64_t"
.LASF131:
	.string	"__dest"
.LASF141:
	.string	"_IO_lock_t"
.LASF96:
	.string	"_IO_FILE"
.LASF112:
	.string	"fe_length"
.LASF98:
	.string	"ext_logical"
.LASF28:
	.string	"__environ"
.LASF99:
	.string	"ext_length"
.LASF119:
	.string	"fm_mapped_extents"
.LASF8:
	.string	"__uint64_t"
.LASF120:
	.string	"fm_extent_count"
.LASF148:
	.string	"xnrealloc"
.LASF78:
	.string	"sys_errlist"
.LASF53:
	.string	"_markers"
.LASF117:
	.string	"fm_start"
.LASF137:
	.string	"__assert_fail"
.LASF101:
	.string	"extent_scan"
.LASF122:
	.string	"fm_extents"
.LASF145:
	.string	"fiemap_buf"
.LASF89:
	.string	"c_maybe_quoting_style"
.LASF108:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF109:
	.string	"fiemap_extent"
.LASF133:
	.string	"__len"
.LASF40:
	.string	"__xalloc_count_type"
.LASF79:
	.string	"_sys_nerr"
.LASF59:
	.string	"_vtable_offset"
.LASF20:
	.string	"tzname"
.LASF70:
	.string	"FILE"
.LASF150:
	.string	"__stack_chk_fail"
.LASF86:
	.string	"shell_escape_quoting_style"
.LASF94:
	.string	"quoting_style_args"
.LASF33:
	.string	"optopt"
.LASF38:
	.string	"uint32_t"
.LASF114:
	.string	"fe_flags"
.LASF25:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF85:
	.string	"shell_always_quoting_style"
.LASF92:
	.string	"clocale_quoting_style"
.LASF32:
	.string	"opterr"
.LASF136:
	.string	"ioctl"
.LASF10:
	.string	"__off64_t"
.LASF44:
	.string	"_IO_read_base"
.LASF52:
	.string	"_IO_save_end"
.LASF26:
	.string	"_sys_siglist"
.LASF146:
	.string	"extent_scan_init"
.LASF67:
	.string	"__pad5"
.LASF69:
	.string	"_unused2"
.LASF76:
	.string	"stderr"
.LASF149:
	.string	"memset"
.LASF103:
	.string	"fm_flags"
.LASF18:
	.string	"__daylight"
.LASF135:
	.string	"xalloc_die"
.LASF140:
	.string	"/root/coreutils"
.LASF113:
	.string	"fe_reserved64"
.LASF110:
	.string	"fe_logical"
.LASF41:
	.string	"_flags"
.LASF51:
	.string	"_IO_backup_base"
.LASF127:
	.string	"new_logical"
.LASF65:
	.string	"_freeres_list"
.LASF73:
	.string	"_IO_wide_data"
.LASF107:
	.string	"ext_info"
.LASF17:
	.string	"__tzname"
.LASF45:
	.string	"_IO_write_base"
.LASF128:
	.string	"length_adjust"
.LASF139:
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
