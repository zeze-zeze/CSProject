	.file	"cksum.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"r"
.LC1:
	.string	"%s"
.LC2:
	.string	"%s: file too long"
.LC3:
	.string	"%u %s %s\n"
.LC4:
	.string	"%u %s\n"
.LC5:
	.string	"write error"
.LC6:
	.string	"-: %s"
	.text
	.p2align 4
	.type	cksum, @function
cksum:
.LVL0:
.LFB139:
	.file 1 "src/cksum.c"
	.loc 1 178 1 view -0
	.cfi_startproc
	.loc 1 178 1 is_stmt 0 view .LVU1
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
	leaq	-65536(%rsp), %r11
	.cfi_def_cfa 11, 65592
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	.cfi_def_cfa_register 7
	subq	$72, %rsp
	.cfi_def_cfa_offset 65664
	.loc 1 178 1 view .LVU2
	movl	%esi, 12(%rsp)
	movq	%rdi, %r12
	movq	%fs:40, %rax
	movq	%rax, 65592(%rsp)
	xorl	%eax, %eax
	.loc 1 179 3 is_stmt 1 view .LVU3
	.loc 1 180 3 view .LVU4
.LVL1:
	.loc 1 181 3 view .LVU5
	.loc 1 182 3 view .LVU6
	.loc 1 183 3 view .LVU7
	.loc 1 184 3 view .LVU8
	.loc 1 185 3 view .LVU9
	.loc 1 187 3 view .LVU10
	.loc 1 187 7 is_stmt 0 view .LVU11
	cmpb	$45, (%rdi)
	je	.L38
.L3:
	.loc 1 195 7 is_stmt 1 view .LVU12
	.loc 1 195 12 is_stmt 0 view .LVU13
	leaq	.LC0(%rip), %rsi
.LVL2:
	.loc 1 195 12 view .LVU14
	movq	%r12, %rdi
.LVL3:
	.loc 1 195 12 view .LVU15
	call	fopen@PLT
.LVL4:
	movq	%rax, %r15
.LVL5:
	.loc 1 196 7 is_stmt 1 view .LVU16
	.loc 1 196 10 is_stmt 0 view .LVU17
	testq	%rax, %rax
	je	.L36
.LVL6:
.L4:
	.loc 1 203 3 is_stmt 1 view .LVU18
	movl	$2, %esi
	movq	%r15, %rdi
	.loc 1 181 13 is_stmt 0 view .LVU19
	xorl	%r14d, %r14d
	.loc 1 180 17 view .LVU20
	xorl	%ebx, %ebx
	.loc 1 203 3 view .LVU21
	call	fadvise@PLT
.LVL7:
	.loc 1 205 3 is_stmt 1 view .LVU22
	leaq	48(%rsp), %rbp
	leaq	crctab(%rip), %r13
.LVL8:
	.p2align 4,,10
	.p2align 3
.L6:
	.loc 1 205 9 view .LVU23
.LBB68:
.LBI68:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 345 1 view .LVU24
.LBB69:
	.loc 2 348 3 view .LVU25
	.loc 2 350 7 view .LVU26
	.loc 2 356 7 view .LVU27
	.loc 2 362 3 view .LVU28
	.loc 2 382 3 view .LVU29
	.loc 2 382 10 is_stmt 0 view .LVU30
	movq	%r15, %rcx
	movl	$65536, %edx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	fread_unlocked@PLT
.LVL9:
	.loc 2 382 10 view .LVU31
.LBE69:
.LBE68:
	.loc 1 205 9 view .LVU32
	testq	%rax, %rax
	je	.L39
.LBB70:
	.loc 1 207 7 is_stmt 1 view .LVU33
.LVL10:
	.loc 1 209 7 view .LVU34
	addq	%rax, %r14
.LVL11:
	.loc 1 209 10 is_stmt 0 view .LVU35
	jc	.L9
	.loc 1 212 13 is_stmt 1 view .LVU36
.LVL12:
	.loc 1 212 13 is_stmt 0 view .LVU37
	leaq	0(%rbp,%rax), %rdx
	.loc 1 207 22 view .LVU38
	movq	%rbp, %rax
.LVL13:
	.p2align 4,,10
	.p2align 3
.L10:
	.loc 1 213 9 is_stmt 1 view .LVU39
	.loc 1 213 53 is_stmt 0 view .LVU40
	addq	$1, %rax
.LVL14:
	.loc 1 213 20 view .LVU41
	movq	%rbx, %rcx
	.loc 1 213 41 view .LVU42
	shrq	$24, %rbx
.LVL15:
	.loc 1 213 48 view .LVU43
	xorb	-1(%rax), %bl
	.loc 1 213 20 view .LVU44
	salq	$8, %rcx
.LVL16:
	.loc 1 213 57 view .LVU45
	movzbl	%bl, %ebx
	.loc 1 213 13 view .LVU46
	xorq	0(%r13,%rbx,8), %rcx
	movq	%rcx, %rbx
.LVL17:
	.loc 1 212 13 is_stmt 1 view .LVU47
	.loc 1 212 13 is_stmt 0 view .LVU48
	cmpq	%rdx, %rax
	jne	.L10
	.loc 1 214 7 is_stmt 1 view .LVU49
.LVL18:
.LBB71:
.LBI71:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 3 128 1 view .LVU50
.LBB72:
	.loc 3 130 3 view .LVU51
	.loc 3 130 10 is_stmt 0 view .LVU52
	movl	(%r15), %eax
.LVL19:
	.loc 3 130 10 view .LVU53
.LBE72:
.LBE71:
	.loc 1 214 10 view .LVU54
	testb	$16, %al
	je	.L6
.LVL20:
	.loc 1 214 10 view .LVU55
.LBE70:
	.loc 1 218 3 is_stmt 1 view .LVU56
.LBB74:
.LBI74:
	.loc 3 135 1 view .LVU57
.LBB75:
	.loc 3 137 3 view .LVU58
	.loc 3 137 3 is_stmt 0 view .LVU59
.LBE75:
.LBE74:
	.loc 1 218 6 view .LVU60
	testb	$32, %al
	jne	.L40
.LVL21:
.L13:
	.loc 1 226 3 is_stmt 1 view .LVU61
	.loc 1 226 8 is_stmt 0 view .LVU62
	cmpb	$45, (%r12)
	jne	.L25
	.loc 1 226 6 view .LVU63
	cmpb	$0, 1(%r12)
	jne	.L25
.L16:
	.loc 1 232 3 is_stmt 1 view .LVU64
	.loc 1 232 8 is_stmt 0 view .LVU65
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	call	umaxtostr@PLT
.LVL22:
	movq	%rax, %r9
.LVL23:
	.loc 1 234 3 is_stmt 1 view .LVU66
	.loc 1 234 10 view .LVU67
	.loc 1 234 3 is_stmt 0 view .LVU68
	testq	%r14, %r14
	je	.L17
	.loc 1 234 3 view .LVU69
	leaq	crctab(%rip), %rcx
.LVL24:
	.p2align 4,,10
	.p2align 3
.L18:
	.loc 1 235 5 is_stmt 1 discriminator 2 view .LVU70
	.loc 1 235 16 is_stmt 0 discriminator 2 view .LVU71
	movq	%rbx, %rdx
	.loc 1 235 37 discriminator 2 view .LVU72
	shrq	$24, %rbx
.LVL25:
	.loc 1 235 44 discriminator 2 view .LVU73
	xorq	%r14, %rbx
	.loc 1 235 16 discriminator 2 view .LVU74
	salq	$8, %rdx
.LVL26:
	.loc 1 235 54 discriminator 2 view .LVU75
	movzbl	%bl, %eax
	.loc 1 235 9 discriminator 2 view .LVU76
	xorq	(%rcx,%rax,8), %rdx
	.loc 1 234 3 discriminator 2 view .LVU77
	shrq	$8, %r14
.LVL27:
	.loc 1 235 9 discriminator 2 view .LVU78
	movq	%rdx, %rbx
.LVL28:
	.loc 1 234 18 is_stmt 1 discriminator 2 view .LVU79
	.loc 1 234 10 discriminator 2 view .LVU80
	.loc 1 234 3 is_stmt 0 discriminator 2 view .LVU81
	jne	.L18
.LVL29:
.L17:
	.loc 1 237 3 is_stmt 1 view .LVU82
	.loc 1 239 3 view .LVU83
	.loc 1 237 9 is_stmt 0 view .LVU84
	movq	%rbx, %rdx
	.loc 1 239 6 view .LVU85
	cmpb	$0, 12(%rsp)
	.loc 1 237 9 view .LVU86
	notq	%rdx
	.loc 1 239 6 view .LVU87
	je	.L19
	.loc 1 240 5 is_stmt 1 view .LVU88
.LVL30:
.LBB77:
.LBI77:
	.loc 2 105 1 view .LVU89
.LBB78:
	.loc 2 107 3 view .LVU90
	.loc 2 107 10 is_stmt 0 view .LVU91
	movq	%r12, %r8
	movq	%r9, %rcx
	leaq	.LC3(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL31:
.L20:
	.loc 2 107 10 view .LVU92
.LBE78:
.LBE77:
	.loc 1 244 3 is_stmt 1 view .LVU93
.LBB79:
.LBI79:
	.loc 3 135 1 view .LVU94
.LBB80:
	.loc 3 137 3 view .LVU95
	.loc 3 137 3 is_stmt 0 view .LVU96
.LBE80:
.LBE79:
	.loc 1 244 6 view .LVU97
	movq	stdout(%rip), %rax
	testb	$32, (%rax)
	jne	.L41
	.loc 1 247 10 view .LVU98
	movl	$1, %eax
.LVL32:
.L1:
	.loc 1 248 1 view .LVU99
	movq	65592(%rsp), %rdi
	xorq	%fs:40, %rdi
	jne	.L42
	addq	$65608, %rsp
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
.LVL33:
	.loc 1 248 1 view .LVU100
	ret
.LVL34:
.L38:
	.cfi_restore_state
	.loc 1 187 6 view .LVU101
	cmpb	$0, 1(%rdi)
	jne	.L3
	.loc 1 189 7 is_stmt 1 view .LVU102
	.loc 1 190 23 is_stmt 0 view .LVU103
	movb	$1, have_read_stdin(%rip)
	.loc 1 189 10 view .LVU104
	movq	stdin(%rip), %r15
.LVL35:
	.loc 1 190 7 is_stmt 1 view .LVU105
	.loc 1 191 7 view .LVU106
	.loc 1 191 7 is_stmt 0 view .LVU107
	jmp	.L4
.LVL36:
.L25:
	.loc 1 226 29 discriminator 1 view .LVU108
	movq	%r15, %rdi
	call	rpl_fclose@PLT
.LVL37:
	.loc 1 226 26 discriminator 1 view .LVU109
	cmpl	$-1, %eax
	jne	.L16
.LVL38:
.L36:
	.loc 1 228 7 is_stmt 1 view .LVU110
	movq	%r12, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL39:
	movq	%rax, %r12
.LVL40:
	.loc 1 228 17 is_stmt 0 view .LVU111
	call	__errno_location@PLT
.LVL41:
	.loc 1 228 7 view .LVU112
	movq	%r12, %rcx
	leaq	.LC1(%rip), %rdx
	xorl	%edi, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL42:
	.loc 1 229 7 is_stmt 1 view .LVU113
	.loc 1 229 14 is_stmt 0 view .LVU114
	xorl	%eax, %eax
	jmp	.L1
.LVL43:
.L39:
	.loc 1 229 14 view .LVU115
	movl	(%r15), %eax
.LVL44:
	.loc 1 218 3 is_stmt 1 view .LVU116
.LBB81:
	.loc 3 135 1 view .LVU117
.LBB76:
	.loc 3 137 3 view .LVU118
	.loc 3 137 3 is_stmt 0 view .LVU119
.LBE76:
.LBE81:
	.loc 1 218 6 view .LVU120
	testb	$32, %al
	je	.L13
.L40:
	.loc 1 220 7 is_stmt 1 view .LVU121
	xorl	%edi, %edi
	movq	%r12, %rdx
	movl	$3, %esi
	call	quotearg_n_style_colon@PLT
.LVL45:
	movq	%rax, %r13
	.loc 1 220 17 is_stmt 0 view .LVU122
	call	__errno_location@PLT
.LVL46:
	.loc 1 220 7 view .LVU123
	xorl	%edi, %edi
	movq	%r13, %rcx
	leaq	.LC1(%rip), %rdx
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL47:
	.loc 1 221 7 is_stmt 1 view .LVU124
	.loc 1 221 12 is_stmt 0 view .LVU125
	cmpb	$45, (%r12)
	je	.L43
.L24:
	.loc 1 222 9 is_stmt 1 view .LVU126
	movq	%r15, %rdi
	call	rpl_fclose@PLT
.LVL48:
	.loc 1 223 14 is_stmt 0 view .LVU127
	xorl	%eax, %eax
	jmp	.L1
.LVL49:
.L19:
	.loc 1 242 5 is_stmt 1 view .LVU128
.LBB82:
.LBI82:
	.loc 2 105 1 view .LVU129
.LBB83:
	.loc 2 107 3 view .LVU130
	.loc 2 107 10 is_stmt 0 view .LVU131
	movq	%r9, %rcx
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL50:
	.loc 2 107 10 view .LVU132
	jmp	.L20
.LVL51:
.L43:
	.loc 2 107 10 view .LVU133
.LBE83:
.LBE82:
	.loc 1 223 14 view .LVU134
	xorl	%eax, %eax
	.loc 1 221 10 view .LVU135
	cmpb	$0, 1(%r12)
	je	.L1
	jmp	.L24
.LVL52:
.L9:
.LBB84:
.LBB73:
	.loc 1 210 9 is_stmt 1 view .LVU136
	movq	%r12, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL53:
	.loc 1 210 9 is_stmt 0 view .LVU137
	movl	$5, %edx
	leaq	.LC2(%rip), %rsi
	xorl	%edi, %edi
	movq	%rax, %r12
.LVL54:
	.loc 1 210 9 view .LVU138
	call	dcgettext@PLT
.LVL55:
	movq	%r12, %rcx
	xorl	%esi, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL56:
.L41:
	.loc 1 210 9 view .LVU139
.LBE73:
.LBE84:
.LBB85:
	.loc 1 245 5 is_stmt 1 view .LVU140
	movl	$5, %edx
	leaq	.LC5(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL57:
	movq	%rax, %r12
.LVL58:
	.loc 1 245 5 is_stmt 0 view .LVU141
	call	__errno_location@PLT
.LVL59:
	movq	%r12, %rcx
	movl	$1, %edi
	leaq	.LC6(%rip), %rdx
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL60:
.L42:
	.loc 1 245 5 view .LVU142
.LBE85:
	.loc 1 248 1 view .LVU143
	call	__stack_chk_fail@PLT
.LVL61:
	.cfi_endproc
.LFE139:
	.size	cksum, .-cksum
	.section	.rodata.str1.1
.LC7:
	.string	"cksum"
.LC8:
	.string	" invocation"
.LC9:
	.string	""
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC11:
	.string	"Usage: %s [FILE]...\n  or:  %s [OPTION]\n"
	.align 8
.LC12:
	.string	"Print CRC checksum and byte counts of each FILE.\n\n"
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
.LVL62:
.LFB140:
	.loc 1 252 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 252 1 is_stmt 0 view .LVU145
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 254 5 view .LVU146
	movl	$5, %edx
	.loc 1 252 1 view .LVU147
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
	.loc 1 252 1 view .LVU148
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 253 3 is_stmt 1 view .LVU149
	.loc 1 253 6 is_stmt 0 view .LVU150
	testl	%edi, %edi
	je	.L45
	.loc 1 254 5 is_stmt 1 view .LVU151
	.loc 1 254 5 view .LVU152
	leaq	.LC10(%rip), %rsi
	xorl	%edi, %edi
.LVL63:
	.loc 1 254 5 is_stmt 0 view .LVU153
	call	dcgettext@PLT
.LVL64:
.LBB98:
.LBB99:
	.loc 2 100 10 view .LVU154
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE99:
.LBE98:
	.loc 1 254 5 view .LVU155
	movq	%rax, %rdx
.LVL65:
.LBB101:
.LBI98:
	.loc 2 98 1 is_stmt 1 view .LVU156
.LBB100:
	.loc 2 100 3 view .LVU157
	.loc 2 100 10 is_stmt 0 view .LVU158
	xorl	%eax, %eax
.LVL66:
	.loc 2 100 10 view .LVU159
	call	__fprintf_chk@PLT
.LVL67:
.L46:
	.loc 2 100 10 view .LVU160
.LBE100:
.LBE101:
	.loc 1 270 3 is_stmt 1 view .LVU161
	movl	%ebp, %edi
	call	exit@PLT
.LVL68:
.L45:
	.loc 1 257 7 view .LVU162
	.loc 1 257 15 is_stmt 0 view .LVU163
	leaq	.LC11(%rip), %rsi
	xorl	%edi, %edi
.LVL69:
.LBB102:
.LBB103:
	.file 4 "src/system.h"
	.loc 4 636 67 view .LVU164
	leaq	.LC21(%rip), %rbx
.LBE103:
.LBE102:
	.loc 1 257 15 view .LVU165
	call	dcgettext@PLT
.LVL70:
.LBB129:
.LBB130:
	.loc 2 107 10 view .LVU166
	movq	%r12, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE130:
.LBE129:
	.loc 1 257 15 view .LVU167
	movq	%rax, %rsi
.LVL71:
.LBB132:
.LBI129:
	.loc 2 105 1 is_stmt 1 view .LVU168
.LBB131:
	.loc 2 107 3 view .LVU169
	.loc 2 107 10 is_stmt 0 view .LVU170
	xorl	%eax, %eax
.LVL72:
	.loc 2 107 10 view .LVU171
	call	__printf_chk@PLT
.LVL73:
	.loc 2 107 10 view .LVU172
.LBE131:
.LBE132:
	.loc 1 262 7 is_stmt 1 view .LVU173
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC12(%rip), %rsi
	call	dcgettext@PLT
.LVL74:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL75:
	.loc 1 266 7 view .LVU174
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC13(%rip), %rsi
	call	dcgettext@PLT
.LVL76:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL77:
	.loc 1 267 7 view .LVU175
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC14(%rip), %rsi
	call	dcgettext@PLT
.LVL78:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL79:
	.loc 1 268 7 view .LVU176
.LBB133:
.LBI102:
	.loc 4 634 1 view .LVU177
.LBB128:
	.loc 4 636 3 view .LVU178
	.loc 4 636 67 is_stmt 0 view .LVU179
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
	.loc 4 646 3 is_stmt 1 view .LVU180
.LVL80:
	.loc 4 647 3 view .LVU181
	.loc 4 649 3 view .LVU182
	.loc 4 649 9 view .LVU183
	.loc 4 636 67 is_stmt 0 view .LVU184
	movq	%rax, 32(%rsp)
	leaq	.LC20(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC23(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC7(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 4 647 25 view .LVU185
	movq	%rsp, %rax
.LVL81:
	.p2align 4,,10
	.p2align 3
.L48:
	.loc 4 650 5 is_stmt 1 view .LVU186
	.loc 4 649 18 is_stmt 0 view .LVU187
	movq	16(%rax), %rdi
	.loc 4 650 13 view .LVU188
	addq	$16, %rax
.LVL82:
	.loc 4 649 9 is_stmt 1 view .LVU189
	testq	%rdi, %rdi
	je	.L47
	.loc 4 649 33 is_stmt 0 view .LVU190
	movl	$6, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 4 649 28 view .LVU191
	testb	%dl, %dl
	jne	.L48
.L47:
	.loc 4 652 3 is_stmt 1 view .LVU192
	.loc 4 652 15 is_stmt 0 view .LVU193
	movq	8(%rax), %r12
	.loc 4 655 11 view .LVU194
	movl	$5, %edx
	leaq	.LC24(%rip), %rsi
	xorl	%edi, %edi
	.loc 4 652 6 view .LVU195
	testq	%r12, %r12
	je	.L49
	.loc 4 653 5 is_stmt 1 view .LVU196
.LVL83:
	.loc 4 655 3 view .LVU197
	.loc 4 655 11 is_stmt 0 view .LVU198
	call	dcgettext@PLT
.LVL84:
.LBB104:
.LBB105:
	.loc 2 107 10 view .LVU199
	leaq	.LC25(%rip), %rcx
	movl	$1, %edi
	leaq	.LC26(%rip), %rdx
.LBE105:
.LBE104:
	.loc 4 655 11 view .LVU200
	movq	%rax, %rsi
.LVL85:
.LBB109:
.LBI104:
	.loc 2 105 1 is_stmt 1 view .LVU201
.LBB106:
	.loc 2 107 3 view .LVU202
	.loc 2 107 10 is_stmt 0 view .LVU203
	xorl	%eax, %eax
.LVL86:
	.loc 2 107 10 view .LVU204
	call	__printf_chk@PLT
.LVL87:
	.loc 2 107 10 view .LVU205
.LBE106:
.LBE109:
	.loc 4 659 3 is_stmt 1 view .LVU206
	.loc 4 659 29 is_stmt 0 view .LVU207
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL88:
	movq	%rax, %rdi
.LVL89:
	.loc 4 660 3 is_stmt 1 view .LVU208
	.loc 4 660 6 is_stmt 0 view .LVU209
	testq	%rax, %rax
	je	.L50
	.loc 4 660 22 view .LVU210
	movl	$3, %edx
	leaq	.LC27(%rip), %rsi
	call	strncmp@PLT
.LVL90:
	.loc 4 660 19 view .LVU211
	testl	%eax, %eax
	jne	.L53
.LVL91:
.L50:
	.loc 4 669 3 is_stmt 1 view .LVU212
	.loc 4 669 11 is_stmt 0 view .LVU213
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	call	dcgettext@PLT
.LVL92:
.LBB110:
.LBB111:
	.loc 2 107 10 view .LVU214
	leaq	.LC7(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	$1, %edi
.LBE111:
.LBE110:
	.loc 4 669 11 view .LVU215
	movq	%rax, %rsi
.LVL93:
.LBB117:
.LBI110:
	.loc 2 105 1 is_stmt 1 view .LVU216
.LBB112:
	.loc 2 107 3 view .LVU217
	.loc 2 107 10 is_stmt 0 view .LVU218
	xorl	%eax, %eax
.LVL94:
	.loc 2 107 10 view .LVU219
.LBE112:
.LBE117:
	.loc 4 671 3 view .LVU220
	leaq	.LC8(%rip), %r13
.LBB118:
.LBB113:
	.loc 2 107 10 view .LVU221
	call	__printf_chk@PLT
.LVL95:
	.loc 2 107 10 view .LVU222
.LBE113:
.LBE118:
	.loc 4 671 3 is_stmt 1 view .LVU223
	cmpq	%rbx, %r12
	leaq	.LC9(%rip), %rcx
	cmovne	%rcx, %r13
.L51:
	.loc 4 671 11 is_stmt 0 view .LVU224
	xorl	%edi, %edi
	leaq	.LC30(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL96:
.LBB119:
.LBB120:
	.loc 2 107 10 view .LVU225
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE120:
.LBE119:
	.loc 4 671 11 view .LVU226
	movq	%rax, %rsi
.LVL97:
.LBB122:
.LBI119:
	.loc 2 105 1 is_stmt 1 view .LVU227
.LBB121:
	.loc 2 107 3 view .LVU228
	.loc 2 107 10 is_stmt 0 view .LVU229
	xorl	%eax, %eax
.LVL98:
	.loc 2 107 10 view .LVU230
	call	__printf_chk@PLT
.LVL99:
	.loc 2 107 10 view .LVU231
.LBE121:
.LBE122:
	.loc 4 673 1 view .LVU232
	jmp	.L46
.LVL100:
.L49:
	.loc 4 655 3 is_stmt 1 view .LVU233
	.loc 4 655 11 is_stmt 0 view .LVU234
	call	dcgettext@PLT
.LVL101:
.LBB123:
.LBB107:
	.loc 2 107 10 view .LVU235
	leaq	.LC25(%rip), %rcx
	movl	$1, %edi
	leaq	.LC26(%rip), %rdx
.LBE107:
.LBE123:
	.loc 4 655 11 view .LVU236
	movq	%rax, %rsi
.LVL102:
.LBB124:
	.loc 2 105 1 is_stmt 1 view .LVU237
.LBB108:
	.loc 2 107 3 view .LVU238
	.loc 2 107 10 is_stmt 0 view .LVU239
	xorl	%eax, %eax
.LVL103:
	.loc 2 107 10 view .LVU240
	call	__printf_chk@PLT
.LVL104:
	.loc 2 107 10 view .LVU241
.LBE108:
.LBE124:
	.loc 4 659 3 is_stmt 1 view .LVU242
	.loc 4 659 29 is_stmt 0 view .LVU243
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL105:
	movq	%rax, %rdi
.LVL106:
	.loc 4 660 3 is_stmt 1 view .LVU244
	.loc 4 660 6 is_stmt 0 view .LVU245
	testq	%rax, %rax
	je	.L52
	.loc 4 660 22 view .LVU246
	movl	$3, %edx
	leaq	.LC27(%rip), %rsi
	call	strncmp@PLT
.LVL107:
	.loc 4 660 19 view .LVU247
	testl	%eax, %eax
	jne	.L71
.L52:
	.loc 4 669 3 is_stmt 1 view .LVU248
	.loc 4 669 11 is_stmt 0 view .LVU249
	movl	$5, %edx
	leaq	.LC29(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL108:
.LBB125:
.LBB114:
	.loc 2 107 10 view .LVU250
	leaq	.LC7(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	movl	$1, %edi
.LBE114:
.LBE125:
	.loc 4 669 11 view .LVU251
	movq	%rax, %rsi
.LVL109:
.LBB126:
	.loc 2 105 1 is_stmt 1 view .LVU252
.LBB115:
	.loc 2 107 3 view .LVU253
	.loc 2 107 10 is_stmt 0 view .LVU254
	xorl	%eax, %eax
.LVL110:
	.loc 2 107 10 view .LVU255
.LBE115:
.LBE126:
	.loc 4 646 15 view .LVU256
	leaq	.LC7(%rip), %r12
.LBB127:
.LBB116:
	.loc 2 107 10 view .LVU257
	call	__printf_chk@PLT
.LVL111:
	.loc 2 107 10 view .LVU258
.LBE116:
.LBE127:
	.loc 4 671 3 is_stmt 1 view .LVU259
	leaq	.LC8(%rip), %r13
	jmp	.L51
.L71:
	.loc 4 646 15 is_stmt 0 view .LVU260
	leaq	.LC7(%rip), %r12
.LVL112:
.L53:
	.loc 4 666 7 is_stmt 1 view .LVU261
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC28(%rip), %rsi
	call	dcgettext@PLT
.LVL113:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL114:
	jmp	.L50
.LBE128:
.LBE133:
	.cfi_endproc
.LFE140:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC31:
	.string	"/usr/local/share/locale"
.LC32:
	.string	"Q. Frank Xia"
.LC33:
	.string	"-"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL115:
.LFB141:
	.loc 1 275 1 view -0
	.cfi_startproc
	.loc 1 275 1 is_stmt 0 view .LVU263
	endbr64
	.loc 1 276 3 is_stmt 1 view .LVU264
	.loc 1 277 3 view .LVU265
	.loc 1 279 33 view .LVU266
	.loc 1 280 3 view .LVU267
	.loc 1 275 1 is_stmt 0 view .LVU268
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 280 3 view .LVU269
	movq	(%rsi), %rdi
.LVL116:
	.loc 1 280 3 view .LVU270
	call	set_program_name@PLT
.LVL117:
	.loc 1 281 3 is_stmt 1 view .LVU271
	leaq	.LC9(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL118:
	.loc 1 282 3 view .LVU272
	leaq	.LC31(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	bindtextdomain@PLT
.LVL119:
	.loc 1 283 3 view .LVU273
	leaq	.LC17(%rip), %rdi
	call	textdomain@PLT
.LVL120:
	.loc 1 285 3 view .LVU274
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL121:
	.loc 1 289 3 view .LVU275
	movq	stdout(%rip), %rdi
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	$1, %edx
	call	setvbuf@PLT
.LVL122:
	.loc 1 291 3 view .LVU276
	subq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%rbp, %rsi
	leaq	.LC32(%rip), %rax
	pushq	$0
	.cfi_def_cfa_offset 48
	movl	$1, %r9d
	movq	Version(%rip), %r8
	leaq	.LC17(%rip), %rcx
	pushq	%rax
	.cfi_def_cfa_offset 56
	leaq	usage(%rip), %rax
	leaq	.LC7(%rip), %rdx
	movl	%r12d, %edi
	pushq	%rax
	.cfi_def_cfa_offset 64
	xorl	%eax, %eax
	call	parse_gnu_standard_options_only@PLT
.LVL123:
	.loc 1 294 3 view .LVU277
	.loc 1 296 14 is_stmt 0 view .LVU278
	movl	optind(%rip), %eax
	.loc 1 294 19 view .LVU279
	movb	$0, have_read_stdin(%rip)
	.loc 1 296 3 is_stmt 1 view .LVU280
	.loc 1 296 6 is_stmt 0 view .LVU281
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	cmpl	%r12d, %eax
	je	.L73
.LVL124:
	.loc 1 301 24 is_stmt 1 view .LVU282
	.loc 1 301 7 is_stmt 0 view .LVU283
	jge	.L80
	movslq	%eax, %rdx
	notl	%eax
.LVL125:
	.loc 1 301 7 view .LVU284
	addl	%r12d, %eax
	leaq	0(%rbp,%rdx,8), %rbx
	addq	%rdx, %rax
	leaq	8(%rbp,%rax,8), %r12
.LVL126:
	.loc 1 300 10 view .LVU285
	movl	$1, %ebp
.LVL127:
	.p2align 4,,10
	.p2align 3
.L77:
	.loc 1 302 9 is_stmt 1 discriminator 3 view .LVU286
	.loc 1 302 15 is_stmt 0 discriminator 3 view .LVU287
	movq	(%rbx), %rdi
	movl	$1, %esi
	addq	$8, %rbx
	call	cksum
.LVL128:
	andl	%eax, %ebp
.LVL129:
	.loc 1 301 34 is_stmt 1 discriminator 3 view .LVU288
	.loc 1 301 24 discriminator 3 view .LVU289
	.loc 1 301 7 is_stmt 0 discriminator 3 view .LVU290
	cmpq	%r12, %rbx
	jne	.L77
.L76:
	.loc 1 305 3 is_stmt 1 view .LVU291
	.loc 1 305 6 is_stmt 0 view .LVU292
	cmpb	$0, have_read_stdin(%rip)
	jne	.L81
.LVL130:
.L75:
	.loc 1 307 3 is_stmt 1 view .LVU293
	.loc 1 307 28 is_stmt 0 view .LVU294
	xorl	$1, %ebp
	.loc 1 308 1 view .LVU295
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	.loc 1 307 28 view .LVU296
	movzbl	%bpl, %eax
	.loc 1 308 1 view .LVU297
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL131:
.L81:
	.cfi_restore_state
	.loc 1 305 26 discriminator 1 view .LVU298
	movq	stdin(%rip), %rdi
	call	rpl_fclose@PLT
.LVL132:
	.loc 1 305 23 discriminator 1 view .LVU299
	addl	$1, %eax
	jne	.L75
.LBB134:
	.loc 1 306 5 is_stmt 1 view .LVU300
	call	__errno_location@PLT
.LVL133:
	leaq	.LC33(%rip), %rdx
	movl	$1, %edi
	movl	(%rax), %esi
	xorl	%eax, %eax
	call	error@PLT
.LVL134:
.L73:
	.loc 1 306 5 is_stmt 0 view .LVU301
.LBE134:
	.loc 1 297 5 is_stmt 1 view .LVU302
	.loc 1 297 10 is_stmt 0 view .LVU303
	xorl	%esi, %esi
	leaq	.LC33(%rip), %rdi
	call	cksum
.LVL135:
	movl	%eax, %ebp
.LVL136:
	.loc 1 297 10 view .LVU304
	jmp	.L76
.LVL137:
.L80:
	.loc 1 300 10 view .LVU305
	movl	$1, %ebp
.LVL138:
	.loc 1 300 10 view .LVU306
	jmp	.L75
	.cfi_endproc
.LFE141:
	.size	main, .-main
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.section	.rodata
	.align 32
	.type	crctab, @object
	.size	crctab, 2048
crctab:
	.quad	0
	.quad	79764919
	.quad	159529838
	.quad	222504665
	.quad	319059676
	.quad	398814059
	.quad	445009330
	.quad	507990021
	.quad	638119352
	.quad	583659535
	.quad	797628118
	.quad	726387553
	.quad	890018660
	.quad	835552979
	.quad	1015980042
	.quad	944750013
	.quad	1276238704
	.quad	1221641927
	.quad	1167319070
	.quad	1095957929
	.quad	1595256236
	.quad	1540665371
	.quad	1452775106
	.quad	1381403509
	.quad	1780037320
	.quad	1859660671
	.quad	1671105958
	.quad	1733955601
	.quad	2031960084
	.quad	2111593891
	.quad	1889500026
	.quad	1952343757
	.quad	2552477408
	.quad	2632100695
	.quad	2443283854
	.quad	2506133561
	.quad	2334638140
	.quad	2414271883
	.quad	2191915858
	.quad	2254759653
	.quad	3190512472
	.quad	3135915759
	.quad	3081330742
	.quad	3009969537
	.quad	2905550212
	.quad	2850959411
	.quad	2762807018
	.quad	2691435357
	.quad	3560074640
	.quad	3505614887
	.quad	3719321342
	.quad	3648080713
	.quad	3342211916
	.quad	3287746299
	.quad	3467911202
	.quad	3396681109
	.quad	4063920168
	.quad	4143685023
	.quad	4223187782
	.quad	4286162673
	.quad	3779000052
	.quad	3858754371
	.quad	3904687514
	.quad	3967668269
	.quad	881225847
	.quad	809987520
	.quad	1023691545
	.quad	969234094
	.quad	662832811
	.quad	591600412
	.quad	771767749
	.quad	717299826
	.quad	311336399
	.quad	374308984
	.quad	453813921
	.quad	533576470
	.quad	25881363
	.quad	88864420
	.quad	134795389
	.quad	214552010
	.quad	2023205639
	.quad	2086057648
	.quad	1897238633
	.quad	1976864222
	.quad	1804852699
	.quad	1867694188
	.quad	1645340341
	.quad	1724971778
	.quad	1587496639
	.quad	1516133128
	.quad	1461550545
	.quad	1406951526
	.quad	1302016099
	.quad	1230646740
	.quad	1142491917
	.quad	1087903418
	.quad	2896545431
	.quad	2825181984
	.quad	2770861561
	.quad	2716262478
	.quad	3215044683
	.quad	3143675388
	.quad	3055782693
	.quad	3001194130
	.quad	2326604591
	.quad	2389456536
	.quad	2200899649
	.quad	2280525302
	.quad	2578013683
	.quad	2640855108
	.quad	2418763421
	.quad	2498394922
	.quad	3769900519
	.quad	3832873040
	.quad	3912640137
	.quad	3992402750
	.quad	4088425275
	.quad	4151408268
	.quad	4197601365
	.quad	4277358050
	.quad	3334271071
	.quad	3263032808
	.quad	3476998961
	.quad	3422541446
	.quad	3585640067
	.quad	3514407732
	.quad	3694837229
	.quad	3640369242
	.quad	1762451694
	.quad	1842216281
	.quad	1619975040
	.quad	1682949687
	.quad	2047383090
	.quad	2127137669
	.quad	1938468188
	.quad	2001449195
	.quad	1325665622
	.quad	1271206113
	.quad	1183200824
	.quad	1111960463
	.quad	1543535498
	.quad	1489069629
	.quad	1434599652
	.quad	1363369299
	.quad	622672798
	.quad	568075817
	.quad	748617968
	.quad	677256519
	.quad	907627842
	.quad	853037301
	.quad	1067152940
	.quad	995781531
	.quad	51762726
	.quad	131386257
	.quad	177728840
	.quad	240578815
	.quad	269590778
	.quad	349224269
	.quad	429104020
	.quad	491947555
	.quad	4046411278
	.quad	4126034873
	.quad	4172115296
	.quad	4234965207
	.quad	3794477266
	.quad	3874110821
	.quad	3953728444
	.quad	4016571915
	.quad	3609705398
	.quad	3555108353
	.quad	3735388376
	.quad	3664026991
	.quad	3290680682
	.quad	3236090077
	.quad	3449943556
	.quad	3378572211
	.quad	3174993278
	.quad	3120533705
	.quad	3032266256
	.quad	2961025959
	.quad	2923101090
	.quad	2868635157
	.quad	2813903052
	.quad	2742672763
	.quad	2604032198
	.quad	2683796849
	.quad	2461293480
	.quad	2524268063
	.quad	2284983834
	.quad	2364738477
	.quad	2175806836
	.quad	2238787779
	.quad	1569362073
	.quad	1498123566
	.quad	1409854455
	.quad	1355396672
	.quad	1317987909
	.quad	1246755826
	.quad	1192025387
	.quad	1137557660
	.quad	2072149281
	.quad	2135122070
	.quad	1912620623
	.quad	1992383480
	.quad	1753615357
	.quad	1816598090
	.quad	1627664531
	.quad	1707420964
	.quad	295390185
	.quad	358241886
	.quad	404320391
	.quad	483945776
	.quad	43990325
	.quad	106832002
	.quad	186451547
	.quad	266083308
	.quad	932423249
	.quad	861060070
	.quad	1041341759
	.quad	986742920
	.quad	613929101
	.quad	542559546
	.quad	756411363
	.quad	701822548
	.quad	3316196985
	.quad	3244833742
	.quad	3425377559
	.quad	3370778784
	.quad	3601682597
	.quad	3530312978
	.quad	3744426955
	.quad	3689838204
	.quad	3819031489
	.quad	3881883254
	.quad	3928223919
	.quad	4007849240
	.quad	4037393693
	.quad	4100235434
	.quad	4180117107
	.quad	4259748804
	.quad	2310601993
	.quad	2373574846
	.quad	2151335527
	.quad	2231098320
	.quad	2596047829
	.quad	2659030626
	.quad	2470359227
	.quad	2550115596
	.quad	2947551409
	.quad	2876312838
	.quad	2788305887
	.quad	2733848168
	.quad	3165939309
	.quad	3094707162
	.quad	3040238851
	.quad	2985771188
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
	.file 13 "/usr/include/stdint.h"
	.file 14 "/usr/include/time.h"
	.file 15 "/usr/include/signal.h"
	.file 16 "/usr/include/unistd.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 18 "/usr/include/errno.h"
	.file 19 "src/version.h"
	.file 20 "./lib/exitfail.h"
	.file 21 "./lib/timespec.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/fadvise.h"
	.file 26 "./lib/error.h"
	.file 27 "./lib/xbinary-io.h"
	.file 28 "./lib/binary-io.h"
	.file 29 "/usr/include/locale.h"
	.file 30 "/usr/include/libintl.h"
	.file 31 "/usr/include/stdlib.h"
	.file 32 "./lib/long-options.h"
	.file 33 "./lib/stdio.h"
	.file 34 "/usr/include/string.h"
	.file 35 "./lib/inttostr.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1525
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF161
	.byte	0xc
	.long	.LASF162
	.long	.LASF163
	.long	.Ldebug_ranges0+0x1e0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x5
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
	.uleb128 0x5
	.long	0x43
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
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x66
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x6
	.byte	0x49
	.byte	0x1b
	.long	0x35
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x72
	.uleb128 0x2
	.long	.LASF10
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x72
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x72
	.uleb128 0x8
	.byte	0x8
	.long	0xaf
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x9
	.long	0xaf
	.uleb128 0xa
	.long	.LASF122
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x242
	.uleb128 0xb
	.long	.LASF13
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0xb
	.long	.LASF14
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0xa9
	.byte	0x8
	.uleb128 0xb
	.long	.LASF15
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0xa9
	.byte	0x10
	.uleb128 0xb
	.long	.LASF16
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0xa9
	.byte	0x18
	.uleb128 0xb
	.long	.LASF17
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0xa9
	.byte	0x20
	.uleb128 0xb
	.long	.LASF18
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0xa9
	.byte	0x28
	.uleb128 0xb
	.long	.LASF19
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0xa9
	.byte	0x30
	.uleb128 0xb
	.long	.LASF20
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0xa9
	.byte	0x38
	.uleb128 0xb
	.long	.LASF21
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0xa9
	.byte	0x40
	.uleb128 0xb
	.long	.LASF22
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0xa9
	.byte	0x48
	.uleb128 0xb
	.long	.LASF23
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0xa9
	.byte	0x50
	.uleb128 0xb
	.long	.LASF24
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0xa9
	.byte	0x58
	.uleb128 0xb
	.long	.LASF25
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x25b
	.byte	0x60
	.uleb128 0xb
	.long	.LASF26
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x261
	.byte	0x68
	.uleb128 0xb
	.long	.LASF27
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x66
	.byte	0x70
	.uleb128 0xb
	.long	.LASF28
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x66
	.byte	0x74
	.uleb128 0xb
	.long	.LASF29
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x85
	.byte	0x78
	.uleb128 0xb
	.long	.LASF30
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0xb
	.long	.LASF31
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0xb
	.long	.LASF32
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x267
	.byte	0x83
	.uleb128 0xb
	.long	.LASF33
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x277
	.byte	0x88
	.uleb128 0xb
	.long	.LASF34
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x91
	.byte	0x90
	.uleb128 0xb
	.long	.LASF35
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x282
	.byte	0x98
	.uleb128 0xb
	.long	.LASF36
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x28d
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x261
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF40
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x293
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xbb
	.uleb128 0xc
	.long	.LASF164
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xd
	.long	.LASF43
	.uleb128 0x8
	.byte	0x8
	.long	0x256
	.uleb128 0x8
	.byte	0x8
	.long	0xbb
	.uleb128 0xe
	.long	0xaf
	.long	0x277
	.uleb128 0xf
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x24e
	.uleb128 0xd
	.long	.LASF44
	.uleb128 0x8
	.byte	0x8
	.long	0x27d
	.uleb128 0xd
	.long	.LASF45
	.uleb128 0x8
	.byte	0x8
	.long	0x288
	.uleb128 0xe
	.long	0xaf
	.long	0x2a3
	.uleb128 0xf
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb6
	.uleb128 0x9
	.long	0x2a3
	.uleb128 0x5
	.long	0x2a3
	.uleb128 0x10
	.long	.LASF46
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x2bf
	.uleb128 0x8
	.byte	0x8
	.long	0x242
	.uleb128 0x5
	.long	0x2bf
	.uleb128 0x10
	.long	.LASF47
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x2bf
	.uleb128 0x10
	.long	.LASF48
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x2bf
	.uleb128 0x10
	.long	.LASF49
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x66
	.uleb128 0xe
	.long	0x2a9
	.long	0x2f9
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x2ee
	.uleb128 0x10
	.long	.LASF50
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x2f9
	.uleb128 0x10
	.long	.LASF51
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF52
	.byte	0xa
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
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x9d
	.uleb128 0x12
	.long	.LASF56
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x66
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0x2
	.long	.LASF58
	.byte	0xd
	.byte	0x4a
	.byte	0x1b
	.long	0x35
	.uleb128 0x9
	.long	0x350
	.uleb128 0x2
	.long	.LASF59
	.byte	0xd
	.byte	0x66
	.byte	0x16
	.long	0x79
	.uleb128 0xe
	.long	0xa9
	.long	0x37d
	.uleb128 0xf
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF60
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x36d
	.uleb128 0x10
	.long	.LASF61
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF62
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x72
	.uleb128 0x10
	.long	.LASF63
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x36d
	.uleb128 0x10
	.long	.LASF64
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF65
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x72
	.uleb128 0x12
	.long	.LASF66
	.byte	0xe
	.value	0x112
	.byte	0xc
	.long	0x66
	.uleb128 0x13
	.uleb128 0x8
	.byte	0x8
	.long	0x3d2
	.uleb128 0xe
	.long	0x2a9
	.long	0x3e9
	.uleb128 0xf
	.long	0x35
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.long	0x3d9
	.uleb128 0x12
	.long	.LASF67
	.byte	0xf
	.value	0x11e
	.byte	0x1a
	.long	0x3e9
	.uleb128 0x12
	.long	.LASF68
	.byte	0xf
	.value	0x11f
	.byte	0x1a
	.long	0x3e9
	.uleb128 0x12
	.long	.LASF69
	.byte	0x10
	.value	0x21f
	.byte	0xf
	.long	0x415
	.uleb128 0x8
	.byte	0x8
	.long	0xa9
	.uleb128 0x12
	.long	.LASF70
	.byte	0x10
	.value	0x221
	.byte	0xf
	.long	0x415
	.uleb128 0x10
	.long	.LASF71
	.byte	0x11
	.byte	0x24
	.byte	0xe
	.long	0xa9
	.uleb128 0x10
	.long	.LASF72
	.byte	0x11
	.byte	0x32
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF73
	.byte	0x11
	.byte	0x37
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF74
	.byte	0x11
	.byte	0x3b
	.byte	0xc
	.long	0x66
	.uleb128 0x10
	.long	.LASF75
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0xa9
	.uleb128 0x10
	.long	.LASF76
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0xa9
	.uleb128 0x10
	.long	.LASF77
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0x2a3
	.uleb128 0x10
	.long	.LASF78
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x6d
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x15
	.byte	0x29
	.byte	0x6
	.long	0x4a0
	.uleb128 0x15
	.long	.LASF79
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x4b5
	.uleb128 0x16
	.long	.LASF80
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.long	0xb6
	.long	0x4c0
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x4b5
	.uleb128 0x10
	.long	.LASF81
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x4c0
	.uleb128 0x10
	.long	.LASF82
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x2a3
	.uleb128 0x17
	.long	.LASF165
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x532
	.uleb128 0x16
	.long	.LASF83
	.byte	0
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.uleb128 0x16
	.long	.LASF85
	.byte	0x2
	.uleb128 0x16
	.long	.LASF86
	.byte	0x3
	.uleb128 0x16
	.long	.LASF87
	.byte	0x4
	.uleb128 0x16
	.long	.LASF88
	.byte	0x5
	.uleb128 0x16
	.long	.LASF89
	.byte	0x6
	.uleb128 0x16
	.long	.LASF90
	.byte	0x7
	.uleb128 0x16
	.long	.LASF91
	.byte	0x8
	.uleb128 0x16
	.long	.LASF92
	.byte	0x9
	.uleb128 0x16
	.long	.LASF93
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.long	0x4dd
	.uleb128 0x12
	.long	.LASF94
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x2f9
	.uleb128 0xe
	.long	0x532
	.long	0x54f
	.uleb128 0x11
	.byte	0
	.uleb128 0x9
	.long	0x544
	.uleb128 0x12
	.long	.LASF95
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x54f
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x19
	.byte	0x2d
	.byte	0xe
	.long	0x594
	.uleb128 0x16
	.long	.LASF96
	.byte	0
	.uleb128 0x16
	.long	.LASF97
	.byte	0x2
	.uleb128 0x16
	.long	.LASF98
	.byte	0x5
	.uleb128 0x16
	.long	.LASF99
	.byte	0x4
	.uleb128 0x16
	.long	.LASF100
	.byte	0x3
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF102
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x3d3
	.uleb128 0x10
	.long	.LASF103
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0x3c
	.uleb128 0x10
	.long	.LASF104
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x66
	.uleb128 0xe
	.long	0x35c
	.long	0x5c8
	.uleb128 0xf
	.long	0x35
	.byte	0xff
	.byte	0
	.uleb128 0x9
	.long	0x5b8
	.uleb128 0x18
	.long	.LASF105
	.byte	0x1
	.byte	0x70
	.byte	0x1c
	.long	0x5c8
	.uleb128 0x9
	.byte	0x3
	.quad	crctab
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.byte	0xa9
	.byte	0xd
	.long	0x5f9
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF107
	.uleb128 0x19
	.long	.LASF110
	.byte	0x1
	.value	0x112
	.byte	0x1
	.long	0x66
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e3
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.value	0x112
	.byte	0xb
	.long	0x66
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x1
	.value	0x112
	.byte	0x18
	.long	0x415
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x114
	.byte	0x7
	.long	0x66
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x1b
	.string	"ok"
	.byte	0x1
	.value	0x115
	.byte	0x8
	.long	0x5f9
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x1c
	.quad	.LBB134
	.quad	.LBE134-.LBB134
	.long	0x6b7
	.uleb128 0x1d
	.quad	.LVL133
	.long	0x141c
	.uleb128 0x1e
	.quad	.LVL134
	.long	0x1428
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL117
	.long	0x1434
	.uleb128 0x20
	.quad	.LVL118
	.long	0x1440
	.long	0x6e8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x20
	.quad	.LVL119
	.long	0x144c
	.long	0x714
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.byte	0
	.uleb128 0x20
	.quad	.LVL120
	.long	0x1458
	.long	0x733
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.uleb128 0x1d
	.quad	.LVL121
	.long	0x1464
	.uleb128 0x20
	.quad	.LVL122
	.long	0x1471
	.long	0x761
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.quad	.LVL123
	.long	0x147e
	.long	0x79e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.quad	.LVL128
	.long	0xce2
	.long	0x7b5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.quad	.LVL132
	.long	0x148a
	.uleb128 0x1e
	.quad	.LVL135
	.long	0xce2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0xce2
	.uleb128 0x22
	.long	.LASF112
	.byte	0x1
	.byte	0xfb
	.byte	0xc
	.long	0x66
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x23
	.long	0x1397
	.quad	.LBI98
	.byte	.LVU156
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xfe
	.byte	0x5
	.long	0x862
	.uleb128 0x24
	.long	0x13b4
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x24
	.long	0x13a8
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x1e
	.quad	.LVL67
	.long	0x1497
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x126b
	.quad	.LBI102
	.byte	.LVU177
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.value	0x10c
	.byte	0x7
	.long	0xb76
	.uleb128 0x26
	.long	0x1279
	.uleb128 0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x28
	.long	0x12b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.long	0x12c3
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x29
	.long	0x12d0
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x29
	.long	0x12dd
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x25
	.long	0x1378
	.quad	.LBI104
	.byte	.LVU201
	.long	.Ldebug_ranges0+0xc0
	.byte	0x4
	.value	0x28f
	.byte	0x3
	.long	0x947
	.uleb128 0x24
	.long	0x1389
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x20
	.quad	.LVL87
	.long	0x14a3
	.long	0x919
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x1e
	.quad	.LVL104
	.long	0x14a3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x1378
	.quad	.LBI110
	.byte	.LVU216
	.long	.Ldebug_ranges0+0x110
	.byte	0x4
	.value	0x29d
	.byte	0x3
	.long	0x9bf
	.uleb128 0x24
	.long	0x1389
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x20
	.quad	.LVL95
	.long	0x14a3
	.long	0x998
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL111
	.long	0x14a3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x1378
	.quad	.LBI119
	.byte	.LVU227
	.long	.Ldebug_ranges0+0x180
	.byte	0x4
	.value	0x29f
	.byte	0x3
	.long	0xa06
	.uleb128 0x24
	.long	0x1389
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x1e
	.quad	.LVL99
	.long	0x14a3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LVL84
	.long	0x14af
	.long	0xa2f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL88
	.long	0x1440
	.long	0xa4b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.quad	.LVL90
	.long	0x14bb
	.long	0xa6f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x20
	.quad	.LVL92
	.long	0x14af
	.long	0xa98
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL96
	.long	0x14af
	.long	0xac1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1d
	.quad	.LVL101
	.long	0x14af
	.uleb128 0x20
	.quad	.LVL105
	.long	0x1440
	.long	0xaea
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.quad	.LVL107
	.long	0x14bb
	.long	0xb0e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x20
	.quad	.LVL108
	.long	0x14af
	.long	0xb37
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL113
	.long	0x14af
	.long	0xb60
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1e
	.quad	.LVL114
	.long	0x14c7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x1378
	.quad	.LBI129
	.byte	.LVU168
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.value	0x101
	.byte	0x7
	.long	0xbbd
	.uleb128 0x24
	.long	0x1389
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x1e
	.quad	.LVL73
	.long	0x14a3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LVL64
	.long	0x14af
	.long	0xbe6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL68
	.long	0x14d4
	.long	0xbfe
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL70
	.long	0x14af
	.long	0xc22
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x20
	.quad	.LVL74
	.long	0x14af
	.long	0xc4b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL75
	.long	0x14c7
	.long	0xc63
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL76
	.long	0x14af
	.long	0xc8c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.quad	.LVL77
	.long	0x14c7
	.long	0xca4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL78
	.long	0x14af
	.long	0xccd
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1e
	.quad	.LVL79
	.long	0x14c7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF166
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.long	0x5f9
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x11c4
	.uleb128 0x22
	.long	.LASF113
	.byte	0x1
	.byte	0xb1
	.byte	0x14
	.long	0x2a3
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x22
	.long	.LASF114
	.byte	0x1
	.byte	0xb1
	.byte	0x1f
	.long	0x5f9
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.byte	0xb3
	.byte	0x11
	.long	0x11c4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65616
	.uleb128 0x2c
	.string	"crc"
	.byte	0x1
	.byte	0xb4
	.byte	0x11
	.long	0x350
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x2d
	.long	.LASF115
	.byte	0x1
	.byte	0xb5
	.byte	0xd
	.long	0x361
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x2d
	.long	.LASF116
	.byte	0x1
	.byte	0xb6
	.byte	0xa
	.long	0x29
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2c
	.string	"fp"
	.byte	0x1
	.byte	0xb7
	.byte	0x9
	.long	0x2bf
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x18
	.long	.LASF117
	.byte	0x1
	.byte	0xb8
	.byte	0x8
	.long	0x11d5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65648
	.uleb128 0x2c
	.string	"hp"
	.byte	0x1
	.byte	0xb9
	.byte	0xf
	.long	0x2a3
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.long	0xe7b
	.uleb128 0x2c
	.string	"cp"
	.byte	0x1
	.byte	0xcf
	.byte	0x16
	.long	0x11e5
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1c
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.long	0xe4b
	.uleb128 0x20
	.quad	.LVL53
	.long	0x14e1
	.long	0xe03
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL55
	.long	0x14af
	.long	0xe2c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1e
	.quad	.LVL56
	.long	0x1428
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x13e0
	.quad	.LBI71
	.byte	.LVU50
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.byte	0x1
	.byte	0xd6
	.byte	0xb
	.uleb128 0x24
	.long	0x13f1
	.long	.LLST12
	.long	.LVUS12
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0xeed
	.uleb128 0x20
	.quad	.LVL57
	.long	0x14af
	.long	0xeb9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1d
	.quad	.LVL59
	.long	0x141c
	.uleb128 0x1e
	.quad	.LVL60
	.long	0x1428
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x1306
	.quad	.LBI68
	.byte	.LVU24
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.byte	0x1
	.byte	0xcd
	.byte	0x18
	.long	0xf6d
	.uleb128 0x24
	.long	0x133f
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x24
	.long	0x1332
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x24
	.long	0x1325
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x24
	.long	0x1318
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1e
	.quad	.LVL9
	.long	0x14ee
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x13c2
	.quad	.LBI74
	.byte	.LVU57
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xda
	.byte	0x7
	.long	0xf94
	.uleb128 0x24
	.long	0x13d3
	.long	.LLST13
	.long	.LVUS13
	.byte	0
	.uleb128 0x30
	.long	0x1378
	.quad	.LBI77
	.byte	.LVU89
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.byte	0x1
	.byte	0xf0
	.byte	0x5
	.long	0xff4
	.uleb128 0x24
	.long	0x1389
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1e
	.quad	.LVL31
	.long	0x14a3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x73
	.sleb128 0
	.byte	0x20
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x13c2
	.quad	.LBI79
	.byte	.LVU94
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.byte	0x1
	.byte	0xf4
	.byte	0x7
	.long	0x101f
	.uleb128 0x31
	.long	0x13d3
	.byte	0
	.uleb128 0x30
	.long	0x1378
	.quad	.LBI82
	.byte	.LVU129
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.byte	0x1
	.byte	0xf2
	.byte	0x5
	.long	0x1072
	.uleb128 0x24
	.long	0x1389
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x1e
	.quad	.LVL50
	.long	0x14a3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LVL4
	.long	0x14fb
	.long	0x1097
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x20
	.quad	.LVL7
	.long	0x1507
	.long	0x10b4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x20
	.quad	.LVL22
	.long	0x1513
	.long	0x10d4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65648
	.byte	0
	.uleb128 0x20
	.quad	.LVL37
	.long	0x148a
	.long	0x10ec
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL39
	.long	0x14e1
	.long	0x110e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL41
	.long	0x141c
	.uleb128 0x20
	.quad	.LVL42
	.long	0x1428
	.long	0x1145
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL45
	.long	0x14e1
	.long	0x1167
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL46
	.long	0x141c
	.uleb128 0x20
	.quad	.LVL47
	.long	0x1428
	.long	0x119e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL48
	.long	0x148a
	.long	0x11b6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL61
	.long	0x151f
	.byte	0
	.uleb128 0xe
	.long	0x4a
	.long	0x11d5
	.uleb128 0x32
	.long	0x35
	.value	0xffff
	.byte	0
	.uleb128 0xe
	.long	0xaf
	.long	0x11e5
	.uleb128 0xf
	.long	0x35
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x4a
	.uleb128 0x33
	.long	.LASF167
	.byte	0x1b
	.byte	0x28
	.byte	0x1
	.byte	0x3
	.long	0x1210
	.uleb128 0x34
	.string	"fd"
	.byte	0x1b
	.byte	0x28
	.byte	0x17
	.long	0x66
	.uleb128 0x35
	.long	.LASF118
	.byte	0x1b
	.byte	0x28
	.byte	0x1f
	.long	0x66
	.byte	0
	.uleb128 0x36
	.long	.LASF168
	.byte	0x1b
	.byte	0x21
	.byte	0x18
	.byte	0x3
	.uleb128 0x37
	.long	.LASF119
	.byte	0x1c
	.byte	0x42
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x1242
	.uleb128 0x34
	.string	"fd"
	.byte	0x1c
	.byte	0x42
	.byte	0x16
	.long	0x66
	.uleb128 0x35
	.long	.LASF118
	.byte	0x1c
	.byte	0x42
	.byte	0x1e
	.long	0x66
	.byte	0
	.uleb128 0x37
	.long	.LASF120
	.byte	0x1c
	.byte	0x32
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x126b
	.uleb128 0x34
	.string	"fd"
	.byte	0x1c
	.byte	0x32
	.byte	0x13
	.long	0x66
	.uleb128 0x35
	.long	.LASF118
	.byte	0x1c
	.byte	0x32
	.byte	0x26
	.long	0x66
	.byte	0
	.uleb128 0x38
	.long	.LASF169
	.byte	0x4
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x12eb
	.uleb128 0x39
	.long	.LASF121
	.byte	0x4
	.value	0x27a
	.byte	0x22
	.long	0x2a3
	.uleb128 0x3a
	.long	.LASF123
	.byte	0x10
	.byte	0x4
	.value	0x27c
	.byte	0xa
	.long	0x12b1
	.uleb128 0x3b
	.long	.LASF121
	.byte	0x4
	.value	0x27c
	.byte	0x20
	.long	0x2a3
	.byte	0
	.uleb128 0x3b
	.long	.LASF124
	.byte	0x4
	.value	0x27c
	.byte	0x35
	.long	0x2a3
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x1286
	.uleb128 0x3c
	.long	.LASF123
	.byte	0x4
	.value	0x27c
	.byte	0x43
	.long	0x12fb
	.uleb128 0x3c
	.long	.LASF124
	.byte	0x4
	.value	0x286
	.byte	0xf
	.long	0x2a3
	.uleb128 0x3c
	.long	.LASF125
	.byte	0x4
	.value	0x287
	.byte	0x19
	.long	0x1300
	.uleb128 0x3c
	.long	.LASF126
	.byte	0x4
	.value	0x293
	.byte	0xf
	.long	0x2a3
	.byte	0
	.uleb128 0xe
	.long	0x12b1
	.long	0x12fb
	.uleb128 0xf
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x12eb
	.uleb128 0x8
	.byte	0x8
	.long	0x12b1
	.uleb128 0x3d
	.long	.LASF132
	.byte	0x2
	.value	0x159
	.byte	0x1
	.long	0x29
	.byte	0x3
	.long	0x1378
	.uleb128 0x39
	.long	.LASF127
	.byte	0x2
	.value	0x159
	.byte	0x22
	.long	0x45
	.uleb128 0x39
	.long	.LASF128
	.byte	0x2
	.value	0x159
	.byte	0x30
	.long	0x29
	.uleb128 0x3e
	.string	"__n"
	.byte	0x2
	.value	0x159
	.byte	0x3f
	.long	0x29
	.uleb128 0x39
	.long	.LASF129
	.byte	0x2
	.value	0x15a
	.byte	0x14
	.long	0x2c5
	.uleb128 0x3f
	.uleb128 0x3c
	.long	.LASF130
	.byte	0x2
	.value	0x16f
	.byte	0xe
	.long	0x29
	.uleb128 0x3c
	.long	.LASF131
	.byte	0x2
	.value	0x170
	.byte	0xd
	.long	0xa9
	.uleb128 0x3f
	.uleb128 0x40
	.string	"__c"
	.byte	0x2
	.value	0x176
	.byte	0x8
	.long	0x66
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	.LASF133
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x1397
	.uleb128 0x35
	.long	.LASF134
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x2ae
	.uleb128 0x42
	.byte	0
	.uleb128 0x41
	.long	.LASF135
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x13c2
	.uleb128 0x35
	.long	.LASF129
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x2c5
	.uleb128 0x35
	.long	.LASF134
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x2ae
	.uleb128 0x42
	.byte	0
	.uleb128 0x37
	.long	.LASF136
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x13e0
	.uleb128 0x35
	.long	.LASF129
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.long	0x2bf
	.byte	0
	.uleb128 0x37
	.long	.LASF137
	.byte	0x3
	.byte	0x80
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x13fe
	.uleb128 0x35
	.long	.LASF129
	.byte	0x3
	.byte	0x80
	.byte	0x1
	.long	0x2bf
	.byte	0
	.uleb128 0x37
	.long	.LASF138
	.byte	0x3
	.byte	0x42
	.byte	0x1
	.long	0x66
	.byte	0x3
	.long	0x141c
	.uleb128 0x35
	.long	.LASF139
	.byte	0x3
	.byte	0x42
	.byte	0x16
	.long	0x2bf
	.byte	0
	.uleb128 0x43
	.long	.LASF140
	.long	.LASF140
	.byte	0x12
	.byte	0x25
	.byte	0xd
	.uleb128 0x43
	.long	.LASF141
	.long	.LASF141
	.byte	0x1a
	.byte	0x28
	.byte	0xd
	.uleb128 0x43
	.long	.LASF142
	.long	.LASF142
	.byte	0x17
	.byte	0x25
	.byte	0xd
	.uleb128 0x43
	.long	.LASF143
	.long	.LASF143
	.byte	0x1d
	.byte	0x7a
	.byte	0xe
	.uleb128 0x43
	.long	.LASF144
	.long	.LASF144
	.byte	0x1e
	.byte	0x56
	.byte	0xe
	.uleb128 0x43
	.long	.LASF145
	.long	.LASF145
	.byte	0x1e
	.byte	0x52
	.byte	0xe
	.uleb128 0x44
	.long	.LASF146
	.long	.LASF146
	.byte	0x1f
	.value	0x253
	.byte	0xc
	.uleb128 0x44
	.long	.LASF147
	.long	.LASF147
	.byte	0x9
	.value	0x134
	.byte	0xc
	.uleb128 0x43
	.long	.LASF148
	.long	.LASF148
	.byte	0x20
	.byte	0x21
	.byte	0x6
	.uleb128 0x44
	.long	.LASF149
	.long	.LASF149
	.byte	0x21
	.value	0x2be
	.byte	0x1
	.uleb128 0x43
	.long	.LASF150
	.long	.LASF150
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x43
	.long	.LASF151
	.long	.LASF151
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x43
	.long	.LASF152
	.long	.LASF152
	.byte	0x1e
	.byte	0x33
	.byte	0xe
	.uleb128 0x43
	.long	.LASF153
	.long	.LASF153
	.byte	0x22
	.byte	0x8c
	.byte	0xc
	.uleb128 0x44
	.long	.LASF154
	.long	.LASF154
	.byte	0x9
	.value	0x296
	.byte	0xc
	.uleb128 0x44
	.long	.LASF155
	.long	.LASF155
	.byte	0x1f
	.value	0x269
	.byte	0xd
	.uleb128 0x44
	.long	.LASF156
	.long	.LASF156
	.byte	0x18
	.value	0x18d
	.byte	0x7
	.uleb128 0x44
	.long	.LASF132
	.long	.LASF157
	.byte	0x2
	.value	0x14c
	.byte	0xf
	.uleb128 0x43
	.long	.LASF158
	.long	.LASF158
	.byte	0x9
	.byte	0xf6
	.byte	0xe
	.uleb128 0x43
	.long	.LASF159
	.long	.LASF159
	.byte	0x19
	.byte	0x48
	.byte	0x6
	.uleb128 0x43
	.long	.LASF160
	.long	.LASF160
	.byte	0x23
	.byte	0x1d
	.byte	0x7
	.uleb128 0x45
	.long	.LASF170
	.long	.LASF170
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0xb
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
	.uleb128 0x5
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
.LVUS26:
	.uleb128 0
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 0
.LLST26:
	.quad	.LVL115
	.quad	.LVL116
	.value	0x1
	.byte	0x55
	.quad	.LVL116
	.quad	.LVL126
	.value	0x1
	.byte	0x5c
	.quad	.LVL126
	.quad	.LVL134
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL134
	.quad	.LFE141
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU306
	.uleb128 .LVU306
	.uleb128 0
.LLST27:
	.quad	.LVL115
	.quad	.LVL117-1
	.value	0x1
	.byte	0x54
	.quad	.LVL117-1
	.quad	.LVL127
	.value	0x1
	.byte	0x56
	.quad	.LVL127
	.quad	.LVL134
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL134
	.quad	.LVL136
	.value	0x1
	.byte	0x56
	.quad	.LVL136
	.quad	.LVL137
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL137
	.quad	.LVL138
	.value	0x1
	.byte	0x56
	.quad	.LVL138
	.quad	.LFE141
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU282
	.uleb128 .LVU284
	.uleb128 .LVU305
	.uleb128 0
.LLST28:
	.quad	.LVL124
	.quad	.LVL125
	.value	0x1
	.byte	0x50
	.quad	.LVL137
	.quad	.LFE141
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 .LVU282
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 .LVU293
	.uleb128 .LVU298
	.uleb128 .LVU301
	.uleb128 .LVU304
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 0
.LLST29:
	.quad	.LVL124
	.quad	.LVL127
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL127
	.quad	.LVL130
	.value	0x1
	.byte	0x56
	.quad	.LVL131
	.quad	.LVL134
	.value	0x1
	.byte	0x56
	.quad	.LVL136
	.quad	.LVL137
	.value	0x1
	.byte	0x50
	.quad	.LVL137
	.quad	.LFE141
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 0
.LLST16:
	.quad	.LVL62
	.quad	.LVL63
	.value	0x1
	.byte	0x55
	.quad	.LVL63
	.quad	.LVL68
	.value	0x1
	.byte	0x56
	.quad	.LVL68
	.quad	.LVL69
	.value	0x1
	.byte	0x55
	.quad	.LVL69
	.quad	.LFE140
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU156
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU160
.LLST17:
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x50
	.quad	.LVL66
	.quad	.LVL67-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU156
	.uleb128 .LVU160
.LLST18:
	.quad	.LVL65
	.quad	.LVL67-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU181
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 .LVU212
	.uleb128 .LVU233
	.uleb128 .LVU261
.LLST19:
	.quad	.LVL80
	.quad	.LVL83
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	.LVL83
	.quad	.LVL91
	.value	0x1
	.byte	0x5c
	.quad	.LVL100
	.quad	.LVL112
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU182
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU199
	.uleb128 .LVU233
	.uleb128 .LVU235
.LLST20:
	.quad	.LVL80
	.quad	.LVL81
	.value	0x1
	.byte	0x57
	.quad	.LVL81
	.quad	.LVL84-1
	.value	0x1
	.byte	0x50
	.quad	.LVL100
	.quad	.LVL101-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 .LVU208
	.uleb128 .LVU211
	.uleb128 .LVU244
	.uleb128 .LVU247
.LLST21:
	.quad	.LVL89
	.quad	.LVL90-1
	.value	0x1
	.byte	0x50
	.quad	.LVL106
	.quad	.LVL107-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU201
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU205
	.uleb128 .LVU237
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU241
.LLST22:
	.quad	.LVL85
	.quad	.LVL86
	.value	0x1
	.byte	0x50
	.quad	.LVL86
	.quad	.LVL87-1
	.value	0x1
	.byte	0x54
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x50
	.quad	.LVL103
	.quad	.LVL104-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU216
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU222
	.uleb128 .LVU252
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU258
.LLST23:
	.quad	.LVL93
	.quad	.LVL94
	.value	0x1
	.byte	0x50
	.quad	.LVL94
	.quad	.LVL95-1
	.value	0x1
	.byte	0x54
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
.LVUS24:
	.uleb128 .LVU227
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 .LVU231
.LLST24:
	.quad	.LVL97
	.quad	.LVL98
	.value	0x1
	.byte	0x50
	.quad	.LVL98
	.quad	.LVL99-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU168
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU172
.LLST25:
	.quad	.LVL71
	.quad	.LVL72
	.value	0x1
	.byte	0x50
	.quad	.LVL72
	.quad	.LVL73-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL3
	.value	0x1
	.byte	0x55
	.quad	.LVL3
	.quad	.LVL32
	.value	0x1
	.byte	0x5c
	.quad	.LVL32
	.quad	.LVL34
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL34
	.quad	.LVL36
	.value	0x1
	.byte	0x55
	.quad	.LVL36
	.quad	.LVL40
	.value	0x1
	.byte	0x5c
	.quad	.LVL40
	.quad	.LVL43
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL43
	.quad	.LVL54
	.value	0x1
	.byte	0x5c
	.quad	.LVL54
	.quad	.LVL56
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL58
	.value	0x1
	.byte	0x5c
	.quad	.LVL58
	.quad	.LFE139
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x54
	.quad	.LVL2
	.quad	.LVL34
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL34
	.quad	.LVL36
	.value	0x1
	.byte	0x54
	.quad	.LVL36
	.quad	.LFE139
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU75
	.uleb128 .LVU79
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU99
	.uleb128 .LVU101
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU110
	.uleb128 .LVU115
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU142
.LLST2:
	.quad	.LVL1
	.quad	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL15
	.value	0x1
	.byte	0x53
	.quad	.LVL15
	.quad	.LVL16
	.value	0x1
	.byte	0x52
	.quad	.LVL17
	.quad	.LVL21
	.value	0x1
	.byte	0x52
	.quad	.LVL21
	.quad	.LVL25
	.value	0x1
	.byte	0x53
	.quad	.LVL25
	.quad	.LVL26
	.value	0x1
	.byte	0x51
	.quad	.LVL28
	.quad	.LVL29
	.value	0x1
	.byte	0x51
	.quad	.LVL29
	.quad	.LVL29
	.value	0x1
	.byte	0x53
	.quad	.LVL29
	.quad	.LVL32
	.value	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x20
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL34
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL36
	.quad	.LVL38
	.value	0x1
	.byte	0x53
	.quad	.LVL43
	.quad	.LVL49
	.value	0x1
	.byte	0x53
	.quad	.LVL49
	.quad	.LVL51
	.value	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x20
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL51
	.quad	.LVL56
	.value	0x1
	.byte	0x53
	.quad	.LVL56
	.quad	.LVL60
	.value	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x20
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU6
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU35
	.uleb128 .LVU55
	.uleb128 .LVU78
	.uleb128 .LVU101
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU110
	.uleb128 .LVU115
	.uleb128 .LVU128
	.uleb128 .LVU133
	.uleb128 .LVU136
.LLST3:
	.quad	.LVL1
	.quad	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL11
	.value	0x1
	.byte	0x5e
	.quad	.LVL20
	.quad	.LVL27
	.value	0x1
	.byte	0x5e
	.quad	.LVL34
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL36
	.quad	.LVL38
	.value	0x1
	.byte	0x5e
	.quad	.LVL43
	.quad	.LVL49
	.value	0x1
	.byte	0x5e
	.quad	.LVL51
	.quad	.LVL52
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU31
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU39
	.uleb128 .LVU115
	.uleb128 .LVU116
	.uleb128 .LVU136
	.uleb128 .LVU137
.LLST4:
	.quad	.LVL9
	.quad	.LVL12
	.value	0x1
	.byte	0x50
	.quad	.LVL12
	.quad	.LVL13
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL43
	.quad	.LVL44
	.value	0x1
	.byte	0x50
	.quad	.LVL52
	.quad	.LVL53-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU16
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU100
	.uleb128 .LVU105
	.uleb128 0
.LLST5:
	.quad	.LVL5
	.quad	.LVL6
	.value	0x1
	.byte	0x50
	.quad	.LVL6
	.quad	.LVL33
	.value	0x1
	.byte	0x5f
	.quad	.LVL35
	.quad	.LFE139
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU66
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU92
	.uleb128 .LVU128
	.uleb128 .LVU132
.LLST6:
	.quad	.LVL23
	.quad	.LVL24
	.value	0x1
	.byte	0x50
	.quad	.LVL24
	.quad	.LVL31-1
	.value	0x1
	.byte	0x59
	.quad	.LVL49
	.quad	.LVL50-1
	.value	0x1
	.byte	0x59
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU34
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU53
	.uleb128 .LVU136
	.uleb128 .LVU139
.LLST11:
	.quad	.LVL10
	.quad	.LVL13
	.value	0x1
	.byte	0x56
	.quad	.LVL13
	.quad	.LVL19
	.value	0x1
	.byte	0x50
	.quad	.LVL52
	.quad	.LVL56
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU50
	.uleb128 .LVU53
.LLST12:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU24
	.uleb128 .LVU31
.LLST7:
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU24
	.uleb128 .LVU31
.LLST8:
	.quad	.LVL8
	.quad	.LVL9
	.value	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU24
	.uleb128 .LVU31
.LLST9:
	.quad	.LVL8
	.quad	.LVL9
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU24
	.uleb128 .LVU31
.LLST10:
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU57
	.uleb128 .LVU59
	.uleb128 .LVU117
	.uleb128 .LVU119
.LLST13:
	.quad	.LVL20
	.quad	.LVL20
	.value	0x1
	.byte	0x5f
	.quad	.LVL44
	.quad	.LVL44
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU89
	.uleb128 .LVU92
.LLST14:
	.quad	.LVL30
	.quad	.LVL31
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU129
	.uleb128 .LVU133
.LLST15:
	.quad	.LVL49
	.quad	.LVL51
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
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
	.quad	.LBB70
	.quad	.LBE70
	.quad	.LBB84
	.quad	.LBE84
	.quad	0
	.quad	0
	.quad	.LBB74
	.quad	.LBE74
	.quad	.LBB81
	.quad	.LBE81
	.quad	0
	.quad	0
	.quad	.LBB98
	.quad	.LBE98
	.quad	.LBB101
	.quad	.LBE101
	.quad	0
	.quad	0
	.quad	.LBB102
	.quad	.LBE102
	.quad	.LBB133
	.quad	.LBE133
	.quad	0
	.quad	0
	.quad	.LBB104
	.quad	.LBE104
	.quad	.LBB109
	.quad	.LBE109
	.quad	.LBB123
	.quad	.LBE123
	.quad	.LBB124
	.quad	.LBE124
	.quad	0
	.quad	0
	.quad	.LBB110
	.quad	.LBE110
	.quad	.LBB117
	.quad	.LBE117
	.quad	.LBB118
	.quad	.LBE118
	.quad	.LBB125
	.quad	.LBE125
	.quad	.LBB126
	.quad	.LBE126
	.quad	.LBB127
	.quad	.LBE127
	.quad	0
	.quad	0
	.quad	.LBB119
	.quad	.LBE119
	.quad	.LBB122
	.quad	.LBE122
	.quad	0
	.quad	0
	.quad	.LBB129
	.quad	.LBE129
	.quad	.LBB132
	.quad	.LBE132
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
.LASF133:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF97:
	.string	"FADVISE_SEQUENTIAL"
.LASF91:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF165:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF80:
	.string	"LOG10_TIMESPEC_HZ"
.LASF142:
	.string	"set_program_name"
.LASF32:
	.string	"_shortbuf"
.LASF85:
	.string	"shell_always_quoting_style"
.LASF128:
	.string	"__size"
.LASF84:
	.string	"shell_quoting_style"
.LASF20:
	.string	"_IO_buf_base"
.LASF57:
	.string	"long long unsigned int"
.LASF148:
	.string	"parse_gnu_standard_options_only"
.LASF58:
	.string	"uint_fast32_t"
.LASF35:
	.string	"_codecvt"
.LASF146:
	.string	"atexit"
.LASF62:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF95:
	.string	"quoting_style_vals"
.LASF59:
	.string	"uintmax_t"
.LASF121:
	.string	"program"
.LASF90:
	.string	"escape_quoting_style"
.LASF83:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF68:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF168:
	.string	"xset_binary_mode_error"
.LASF116:
	.string	"bytes_read"
.LASF36:
	.string	"_wide_data"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF76:
	.string	"program_invocation_short_name"
.LASF88:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF151:
	.string	"__printf_chk"
.LASF75:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF105:
	.string	"crctab"
.LASF79:
	.string	"TIMESPEC_HZ"
.LASF87:
	.string	"shell_escape_always_quoting_style"
.LASF65:
	.string	"timezone"
.LASF149:
	.string	"rpl_fclose"
.LASF167:
	.string	"xset_binary_mode"
.LASF82:
	.string	"program_name"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF161:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF135:
	.string	"fprintf"
.LASF120:
	.string	"__gl_setmode"
.LASF129:
	.string	"__stream"
.LASF0:
	.string	"long unsigned int"
.LASF144:
	.string	"bindtextdomain"
.LASF157:
	.string	"__fread_unlocked_alias"
.LASF18:
	.string	"_IO_write_ptr"
.LASF49:
	.string	"sys_nerr"
.LASF93:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF104:
	.string	"error_one_per_line"
.LASF77:
	.string	"Version"
.LASF22:
	.string	"_IO_save_base"
.LASF70:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF114:
	.string	"print_name"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF143:
	.string	"setlocale"
.LASF47:
	.string	"stdout"
.LASF38:
	.string	"_freeres_buf"
.LASF162:
	.string	"src/cksum.c"
.LASF81:
	.string	"version_etc_copyright"
.LASF139:
	.string	"__fp"
.LASF71:
	.string	"optarg"
.LASF130:
	.string	"__cnt"
.LASF66:
	.string	"getdate_err"
.LASF72:
	.string	"optind"
.LASF14:
	.string	"_IO_read_ptr"
.LASF159:
	.string	"fadvise"
.LASF10:
	.string	"__off64_t"
.LASF164:
	.string	"_IO_lock_t"
.LASF122:
	.string	"_IO_FILE"
.LASF102:
	.string	"error_print_progname"
.LASF160:
	.string	"umaxtostr"
.LASF125:
	.string	"map_prog"
.LASF69:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF136:
	.string	"ferror_unlocked"
.LASF158:
	.string	"fopen"
.LASF141:
	.string	"error"
.LASF50:
	.string	"sys_errlist"
.LASF25:
	.string	"_markers"
.LASF89:
	.string	"c_maybe_quoting_style"
.LASF107:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF124:
	.string	"node"
.LASF153:
	.string	"strncmp"
.LASF5:
	.string	"short int"
.LASF113:
	.string	"file"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF63:
	.string	"tzname"
.LASF42:
	.string	"FILE"
.LASF78:
	.string	"exit_failure"
.LASF155:
	.string	"exit"
.LASF150:
	.string	"__fprintf_chk"
.LASF101:
	.string	"FADVISE_RANDOM"
.LASF166:
	.string	"cksum"
.LASF170:
	.string	"__stack_chk_fail"
.LASF86:
	.string	"shell_escape_quoting_style"
.LASF152:
	.string	"dcgettext"
.LASF98:
	.string	"FADVISE_NOREUSE"
.LASF94:
	.string	"quoting_style_args"
.LASF74:
	.string	"optopt"
.LASF156:
	.string	"quotearg_n_style_colon"
.LASF64:
	.string	"daylight"
.LASF132:
	.string	"fread_unlocked"
.LASF54:
	.string	"long double"
.LASF137:
	.string	"feof_unlocked"
.LASF12:
	.string	"char"
.LASF99:
	.string	"FADVISE_DONTNEED"
.LASF118:
	.string	"mode"
.LASF11:
	.string	"__time_t"
.LASF92:
	.string	"clocale_quoting_style"
.LASF131:
	.string	"__cptr"
.LASF140:
	.string	"__errno_location"
.LASF73:
	.string	"opterr"
.LASF8:
	.string	"__uintmax_t"
.LASF96:
	.string	"FADVISE_NORMAL"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF67:
	.string	"_sys_siglist"
.LASF106:
	.string	"have_read_stdin"
.LASF134:
	.string	"__fmt"
.LASF123:
	.string	"infomap"
.LASF138:
	.string	"getc_unlocked"
.LASF115:
	.string	"length"
.LASF111:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF117:
	.string	"length_buf"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF109:
	.string	"argv"
.LASF145:
	.string	"textdomain"
.LASF61:
	.string	"__daylight"
.LASF112:
	.string	"status"
.LASF163:
	.string	"/root/coreutils"
.LASF119:
	.string	"set_binary_mode"
.LASF13:
	.string	"_flags"
.LASF23:
	.string	"_IO_backup_base"
.LASF147:
	.string	"setvbuf"
.LASF103:
	.string	"error_message_count"
.LASF126:
	.string	"lc_messages"
.LASF108:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF100:
	.string	"FADVISE_WILLNEED"
.LASF154:
	.string	"fputs_unlocked"
.LASF60:
	.string	"__tzname"
.LASF110:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF169:
	.string	"emit_ancillary_info"
.LASF127:
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
