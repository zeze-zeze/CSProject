	.file	"fmt.c"
	.text
.Ltext0:
	.p2align 4
	.type	fmt_paragraph, @function
fmt_paragraph:
.LFB148:
	.file 1 "src/fmt.c"
	.loc 1 849 1 view -0
	.cfi_startproc
	.loc 1 850 3 view .LVU1
	.loc 1 851 3 view .LVU2
	.loc 1 852 3 view .LVU3
	.loc 1 853 3 view .LVU4
	.loc 1 855 3 view .LVU5
	.loc 1 855 13 is_stmt 0 view .LVU6
	movq	word_limit(%rip), %rsi
	.loc 1 849 1 view .LVU7
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	.loc 1 859 3 view .LVU8
	leaq	unused_word_type(%rip), %r8
	.loc 1 849 1 view .LVU9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 857 22 view .LVU10
	movl	max_width(%rip), %r9d
	.loc 1 849 1 view .LVU11
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	.loc 1 859 14 view .LVU12
	leaq	-40(%rsi), %rcx
	.loc 1 849 1 view .LVU13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	.loc 1 856 16 view .LVU14
	movl	8(%rsi), %eax
	.loc 1 855 25 view .LVU15
	movq	$0, 24(%rsi)
	.loc 1 856 3 is_stmt 1 view .LVU16
	.loc 1 857 22 is_stmt 0 view .LVU17
	movl	%r9d, 8(%rsi)
	.loc 1 856 16 view .LVU18
	movl	%eax, -4(%rsp)
.LVL0:
	.loc 1 857 3 is_stmt 1 view .LVU19
	.loc 1 859 3 view .LVU20
	.loc 1 859 32 view .LVU21
	.loc 1 859 3 is_stmt 0 view .LVU22
	cmpq	%r8, %rcx
	jb	.L2
	.loc 1 862 42 view .LVU23
	movl	other_indent(%rip), %r13d
	movl	first_indent(%rip), %r12d
	.loc 1 861 12 view .LVU24
	movabsq	$9223372036854775807, %rbp
.LBB75:
.LBB76:
	.loc 1 944 18 view .LVU25
	movl	goal_width(%rip), %r10d
.LBE76:
.LBE75:
	.loc 1 875 49 view .LVU26
	movl	last_line_length(%rip), %r11d
.LVL1:
	.p2align 4,,10
	.p2align 3
.L13:
	.loc 1 861 7 is_stmt 1 view .LVU27
	.loc 1 862 7 view .LVU28
	.loc 1 862 42 is_stmt 0 view .LVU29
	cmpq	%r8, %rcx
	movl	%r13d, %r15d
	.loc 1 867 15 view .LVU30
	movl	8(%rcx), %ebx
	.loc 1 867 11 view .LVU31
	movq	%rcx, %rdx
	.loc 1 862 42 view .LVU32
	cmove	%r12d, %r15d
.LVL2:
	.loc 1 866 7 is_stmt 1 view .LVU33
	.loc 1 867 7 view .LVU34
	.loc 1 861 12 is_stmt 0 view .LVU35
	movq	%rbp, %rdi
	.loc 1 867 11 view .LVU36
	addl	%ebx, %r15d
.LVL3:
	.loc 1 867 11 view .LVU37
	jmp	.L8
.LVL4:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 1 877 11 is_stmt 1 view .LVU38
	.loc 1 877 14 is_stmt 0 view .LVU39
	cmpq	%rdi, %rax
	jge	.L6
	.loc 1 879 15 is_stmt 1 view .LVU40
.LVL5:
	.loc 1 880 15 view .LVU41
	.loc 1 880 33 is_stmt 0 view .LVU42
	movq	%rdx, 32(%rcx)
	.loc 1 881 15 is_stmt 1 view .LVU43
	.loc 1 881 34 is_stmt 0 view .LVU44
	movq	%rax, %rdi
	movl	%r15d, 20(%rcx)
.LVL6:
.L6:
	.loc 1 888 11 is_stmt 1 view .LVU45
	.loc 1 888 14 is_stmt 0 view .LVU46
	cmpq	%rdx, %rsi
	je	.L7
	.loc 1 891 11 is_stmt 1 view .LVU47
	.loc 1 891 33 is_stmt 0 view .LVU48
	movl	8(%rdx), %eax
.LVL7:
	.loc 1 891 33 view .LVU49
	addl	-28(%rdx), %eax
	.loc 1 891 15 view .LVU50
	addl	%eax, %r15d
.LVL8:
	.loc 1 893 13 is_stmt 1 view .LVU51
	.loc 1 893 7 is_stmt 0 view .LVU52
	cmpl	%r15d, %r9d
	jle	.L7
.LVL9:
.L8:
	.loc 1 868 7 is_stmt 1 view .LVU53
	.loc 1 870 11 view .LVU54
	.loc 1 870 12 is_stmt 0 view .LVU55
	addq	$40, %rdx
.LVL10:
	.loc 1 874 11 is_stmt 1 view .LVU56
.LBB79:
.LBI75:
	.loc 1 937 1 view .LVU57
.LBB77:
	.loc 1 939 3 view .LVU58
	.loc 1 940 3 view .LVU59
	.loc 1 942 3 view .LVU60
	.loc 1 942 6 is_stmt 0 view .LVU61
	cmpq	%rdx, %rsi
	je	.L15
	.loc 1 944 3 is_stmt 1 view .LVU62
.LVL11:
	.loc 1 945 3 view .LVU63
	.loc 1 944 5 is_stmt 0 view .LVU64
	movl	%r10d, %eax
	subl	%r15d, %eax
.LVL12:
	.loc 1 945 10 view .LVU65
	leal	(%rax,%rax,4), %eax
.LVL13:
	.loc 1 945 10 view .LVU66
	addl	%eax, %eax
	cltq
	.loc 1 945 8 view .LVU67
	imulq	%rax, %rax
.LVL14:
	.loc 1 946 3 is_stmt 1 view .LVU68
	.loc 1 946 6 is_stmt 0 view .LVU69
	cmpq	32(%rdx), %rsi
	je	.L4
	.loc 1 948 7 is_stmt 1 view .LVU70
.LVL15:
	.loc 1 949 7 view .LVU71
	.loc 1 948 9 is_stmt 0 view .LVU72
	movl	%r15d, %r14d
	subl	20(%rdx), %r14d
.LVL16:
	.loc 1 949 15 view .LVU73
	leal	(%r14,%r14,4), %r14d
.LVL17:
	.loc 1 949 15 view .LVU74
	addl	%r14d, %r14d
	movslq	%r14d, %r14
	imulq	%r14, %r14
	sarq	%r14
	.loc 1 949 12 view .LVU75
	addq	%r14, %rax
.LVL18:
.L4:
	.loc 1 949 12 view .LVU76
.LBE77:
.LBE79:
	.loc 1 874 17 view .LVU77
	addq	24(%rdx), %rax
.LVL19:
	.loc 1 875 11 is_stmt 1 view .LVU78
	.loc 1 875 14 is_stmt 0 view .LVU79
	cmpq	%r8, %rcx
	jne	.L5
	.loc 1 875 29 discriminator 1 view .LVU80
	testl	%r11d, %r11d
	jle	.L5
	.loc 1 876 13 is_stmt 1 view .LVU81
	.loc 1 876 22 is_stmt 0 view .LVU82
	movl	%r15d, %r14d
	subl	%r11d, %r14d
	leal	(%r14,%r14,4), %r14d
	addl	%r14d, %r14d
	movslq	%r14d, %r14
	imulq	%r14, %r14
	sarq	%r14
	.loc 1 876 19 view .LVU83
	addq	%r14, %rax
.LVL20:
	.loc 1 876 19 view .LVU84
	jmp	.L5
.LVL21:
	.p2align 4,,10
	.p2align 3
.L15:
.LBB80:
.LBB78:
	.loc 1 943 12 view .LVU85
	xorl	%eax, %eax
	jmp	.L4
.LVL22:
	.p2align 4,,10
	.p2align 3
.L7:
	.loc 1 943 12 view .LVU86
.LBE78:
.LBE80:
	.loc 1 894 7 is_stmt 1 discriminator 2 view .LVU87
.LBB81:
.LBI81:
	.loc 1 904 1 discriminator 2 view .LVU88
.LBB82:
	.loc 1 906 3 discriminator 2 view .LVU89
	.loc 1 908 3 discriminator 2 view .LVU90
	.loc 1 910 3 discriminator 2 view .LVU91
	.loc 1 908 8 is_stmt 0 discriminator 2 view .LVU92
	movl	$4900, %r14d
	.loc 1 910 6 discriminator 2 view .LVU93
	cmpq	%r8, %rcx
	jbe	.L9
	.loc 1 912 7 is_stmt 1 view .LVU94
	.loc 1 912 11 is_stmt 0 view .LVU95
	movzbl	-24(%rcx), %eax
	.loc 1 912 10 view .LVU96
	testb	$2, %al
	je	.L10
	.loc 1 914 11 is_stmt 1 view .LVU97
	.loc 1 914 15 is_stmt 0 view .LVU98
	andl	$8, %eax
	.loc 1 917 18 view .LVU99
	cmpb	$1, %al
	sbbq	%r14, %r14
	andl	$362500, %r14d
	addq	$2400, %r14
.LVL23:
.L9:
	.loc 1 925 3 is_stmt 1 view .LVU100
	.loc 1 925 7 is_stmt 0 view .LVU101
	movzbl	16(%rcx), %eax
	.loc 1 925 6 view .LVU102
	testb	$1, %al
	je	.L11
	.loc 1 926 5 is_stmt 1 view .LVU103
	.loc 1 926 10 is_stmt 0 view .LVU104
	subq	$1600, %r14
.LVL24:
.L12:
	.loc 1 930 3 is_stmt 1 view .LVU105
	.loc 1 930 3 is_stmt 0 view .LVU106
.LBE82:
.LBE81:
	.loc 1 894 31 view .LVU107
	addq	%r14, %rdi
.LVL25:
	.loc 1 859 52 view .LVU108
	subq	$40, %rcx
.LVL26:
	.loc 1 894 31 view .LVU109
	movq	%rdi, 64(%rcx)
	.loc 1 859 47 is_stmt 1 view .LVU110
.LVL27:
	.loc 1 859 32 view .LVU111
	.loc 1 859 3 is_stmt 0 view .LVU112
	cmpq	%r8, %rcx
	jnb	.L13
.LVL28:
.L2:
	.loc 1 897 3 is_stmt 1 view .LVU113
	.loc 1 897 22 is_stmt 0 view .LVU114
	movl	-4(%rsp), %eax
	movl	%eax, 8(%rsi)
	.loc 1 898 1 view .LVU115
	popq	%rbx
	.cfi_remember_state
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
.LVL29:
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
.LBB84:
.LBB83:
	.loc 1 927 8 is_stmt 1 view .LVU116
	.loc 1 927 11 is_stmt 0 view .LVU117
	testb	$8, %al
	je	.L12
	.loc 1 928 5 is_stmt 1 view .LVU118
	.loc 1 928 13 is_stmt 0 view .LVU119
	movl	$22500, %eax
	addl	$2, %ebx
	movslq	%ebx, %rbx
	cqto
	idivq	%rbx
	.loc 1 928 10 view .LVU120
	addq	%rax, %r14
.LVL30:
	.loc 1 928 10 view .LVU121
	jmp	.L12
.LVL31:
	.p2align 4,,10
	.p2align 3
.L10:
	.loc 1 919 12 is_stmt 1 view .LVU122
	.loc 1 920 14 is_stmt 0 view .LVU123
	movl	$3300, %r14d
	.loc 1 919 15 view .LVU124
	testb	$4, %al
	jne	.L9
	.loc 1 921 12 is_stmt 1 view .LVU125
	.loc 1 921 15 is_stmt 0 view .LVU126
	leaq	40+unused_word_type(%rip), %rax
	.loc 1 908 8 view .LVU127
	movl	$4900, %r14d
	.loc 1 921 15 view .LVU128
	cmpq	%rax, %rcx
	jbe	.L9
	.loc 1 921 32 view .LVU129
	testb	$8, -64(%rcx)
	je	.L9
	.loc 1 922 9 is_stmt 1 view .LVU130
	.loc 1 922 17 is_stmt 0 view .LVU131
	movl	-32(%rcx), %eax
	leal	2(%rax), %r14d
	movl	$40000, %eax
	movslq	%r14d, %r14
	cqto
.LVL32:
	.loc 1 922 17 view .LVU132
	idivq	%r14
	.loc 1 922 14 view .LVU133
	leaq	4900(%rax), %r14
.LVL33:
	.loc 1 922 14 view .LVU134
	jmp	.L9
.LBE83:
.LBE84:
	.cfi_endproc
.LFE148:
	.size	fmt_paragraph, .-fmt_paragraph
	.p2align 4
	.type	get_space, @function
get_space:
.LVL34:
.LFB145:
	.loc 1 748 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 748 1 is_stmt 0 view .LVU136
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 748 1 view .LVU137
	movl	%esi, %eax
	movq	%rdi, %rbx
	jmp	.L30
.LVL35:
	.p2align 4,,10
	.p2align 3
.L31:
	.loc 1 753 12 is_stmt 1 view .LVU138
	.loc 1 753 15 is_stmt 0 view .LVU139
	cmpl	$9, %eax
	jne	.L36
	.loc 1 755 11 is_stmt 1 view .LVU140
	.loc 1 756 34 is_stmt 0 view .LVU141
	movl	in_column(%rip), %edx
	.loc 1 755 16 view .LVU142
	movb	$1, tabs(%rip)
	.loc 1 756 11 is_stmt 1 view .LVU143
	.loc 1 756 34 is_stmt 0 view .LVU144
	testl	%edx, %edx
	leal	7(%rdx), %eax
.LVL36:
	.loc 1 756 34 view .LVU145
	cmovns	%edx, %eax
	sarl	$3, %eax
	.loc 1 756 50 view .LVU146
	leal	8(,%rax,8), %eax
	movl	%eax, in_column(%rip)
	.loc 1 760 7 is_stmt 1 view .LVU147
.LVL37:
.LBB85:
.LBI85:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 2 66 1 view .LVU148
.LBB86:
	.loc 2 68 3 view .LVU149
	.loc 2 68 10 is_stmt 0 view .LVU150
	movq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	jnb	.L38
.L34:
	.loc 2 68 10 view .LVU151
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbx)
	movzbl	(%rax), %eax
.LVL38:
.L30:
	.loc 2 68 10 view .LVU152
.LBE86:
.LBE85:
	.loc 1 749 3 is_stmt 1 view .LVU153
	.loc 1 751 7 view .LVU154
	.loc 1 751 10 is_stmt 0 view .LVU155
	cmpl	$32, %eax
	jne	.L31
	.loc 1 752 9 is_stmt 1 view .LVU156
	.loc 1 752 18 is_stmt 0 view .LVU157
	addl	$1, in_column(%rip)
	.loc 1 760 7 is_stmt 1 view .LVU158
.LVL39:
.LBB88:
	.loc 2 66 1 view .LVU159
.LBB87:
	.loc 2 68 3 view .LVU160
	.loc 2 68 10 is_stmt 0 view .LVU161
	movq	8(%rbx), %rax
.LVL40:
	.loc 2 68 10 view .LVU162
	cmpq	16(%rbx), %rax
	jb	.L34
.L38:
	.loc 2 68 10 view .LVU163
	movq	%rbx, %rdi
	call	__uflow@PLT
.LVL41:
	jmp	.L30
.LVL42:
	.p2align 4,,10
	.p2align 3
.L36:
	.loc 2 68 10 view .LVU164
.LBE87:
.LBE88:
	.loc 1 762 1 view .LVU165
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL43:
	.loc 1 762 1 view .LVU166
	ret
	.cfi_endproc
.LFE145:
	.size	get_space, .-get_space
	.p2align 4
	.type	get_prefix, @function
get_prefix:
.LVL44:
.LFB144:
	.loc 1 718 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 719 3 view .LVU168
	.loc 1 721 3 view .LVU169
	.loc 1 718 1 is_stmt 0 view .LVU170
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LBB89:
.LBB90:
	.loc 2 68 10 view .LVU171
	movq	8(%rdi), %rax
.LBE90:
.LBE89:
	.loc 1 721 13 view .LVU172
	movl	$0, in_column(%rip)
	.loc 1 722 3 is_stmt 1 view .LVU173
.LVL45:
.LBB93:
.LBI89:
	.loc 2 66 1 view .LVU174
.LBB91:
	.loc 2 68 3 view .LVU175
	.loc 2 68 10 is_stmt 0 view .LVU176
	cmpq	16(%rdi), %rax
	jnb	.L53
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rdi)
	movzbl	(%rax), %esi
.LVL46:
.L41:
	.loc 2 68 10 view .LVU177
.LBE91:
.LBE93:
	.loc 1 722 7 view .LVU178
	movq	%rbp, %rdi
	call	get_space
.LVL47:
	.loc 1 723 3 is_stmt 1 view .LVU179
	.loc 1 723 6 is_stmt 0 view .LVU180
	movl	prefix_length(%rip), %edx
	testl	%edx, %edx
	jne	.L42
	.loc 1 724 5 is_stmt 1 view .LVU181
	.loc 1 725 25 is_stmt 0 view .LVU182
	movl	prefix_lead_space(%rip), %edx
	cmpl	%edx, in_column(%rip)
	cmovle	in_column(%rip), %edx
	.loc 1 724 24 view .LVU183
	movl	%edx, next_prefix_indent(%rip)
.L39:
	.loc 1 741 1 view .LVU184
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL48:
	.loc 1 741 1 view .LVU185
	ret
.LVL49:
	.p2align 4,,10
	.p2align 3
.L42:
	.cfi_restore_state
.LBB94:
	.loc 1 728 7 is_stmt 1 view .LVU186
	.loc 1 729 7 view .LVU187
	.loc 1 729 26 is_stmt 0 view .LVU188
	movl	in_column(%rip), %edx
	.loc 1 730 14 view .LVU189
	movq	prefix(%rip), %rbx
	.loc 1 729 26 view .LVU190
	movl	%edx, next_prefix_indent(%rip)
	.loc 1 730 7 is_stmt 1 view .LVU191
.LVL50:
	.loc 1 730 24 view .LVU192
	movzbl	(%rbx), %edx
	.loc 1 730 7 is_stmt 0 view .LVU193
	testb	%dl, %dl
	jne	.L47
.L44:
	.loc 1 738 7 is_stmt 1 view .LVU194
.LBE94:
	.loc 1 741 1 is_stmt 0 view .LVU195
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LBB101:
	.loc 1 738 11 view .LVU196
	movq	%rbp, %rdi
	movl	%eax, %esi
.LBE101:
	.loc 1 741 1 view .LVU197
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL51:
	.loc 1 741 1 view .LVU198
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL52:
.LBB102:
	.loc 1 738 11 view .LVU199
	jmp	get_space
.LVL53:
	.p2align 4,,10
	.p2align 3
.L45:
	.cfi_restore_state
.LBB95:
.LBB96:
.LBB97:
	.loc 2 68 10 view .LVU200
	leaq	1(%rax), %rdx
.LVL54:
	.loc 2 68 10 view .LVU201
	movq	%rdx, 8(%rbp)
	movzbl	(%rax), %eax
.L46:
.LVL55:
	.loc 2 68 10 view .LVU202
.LBE97:
.LBE96:
.LBE95:
	.loc 1 730 36 is_stmt 1 view .LVU203
	.loc 1 730 24 is_stmt 0 view .LVU204
	movzbl	1(%rbx), %edx
	.loc 1 730 37 view .LVU205
	addq	$1, %rbx
.LVL56:
	.loc 1 730 24 is_stmt 1 view .LVU206
	.loc 1 730 7 is_stmt 0 view .LVU207
	testb	%dl, %dl
	je	.L44
.L47:
.LBB100:
	.loc 1 732 11 is_stmt 1 view .LVU208
.LVL57:
	.loc 1 733 11 view .LVU209
	.loc 1 733 14 is_stmt 0 view .LVU210
	cmpl	%edx, %eax
	jne	.L39
	.loc 1 735 11 is_stmt 1 discriminator 2 view .LVU211
	.loc 1 735 20 is_stmt 0 discriminator 2 view .LVU212
	addl	$1, in_column(%rip)
	.loc 1 736 11 is_stmt 1 discriminator 2 view .LVU213
.LVL58:
.LBB99:
.LBI96:
	.loc 2 66 1 discriminator 2 view .LVU214
.LBB98:
	.loc 2 68 3 discriminator 2 view .LVU215
	.loc 2 68 10 is_stmt 0 discriminator 2 view .LVU216
	movq	8(%rbp), %rax
.LVL59:
	.loc 2 68 10 discriminator 2 view .LVU217
	cmpq	16(%rbp), %rax
	jb	.L45
	.loc 2 68 10 view .LVU218
	movq	%rbp, %rdi
	call	__uflow@PLT
.LVL60:
	.loc 2 68 10 view .LVU219
	jmp	.L46
.LVL61:
	.p2align 4,,10
	.p2align 3
.L53:
	.loc 2 68 10 view .LVU220
.LBE98:
.LBE99:
.LBE100:
.LBE102:
.LBB103:
.LBB92:
	call	__uflow@PLT
.LVL62:
	.loc 2 68 10 view .LVU221
	movl	%eax, %esi
	jmp	.L41
.LBE92:
.LBE103:
	.cfi_endproc
.LFE144:
	.size	get_prefix, .-get_prefix
	.p2align 4
	.type	put_space, @function
put_space:
.LVL63:
.LFB154:
	.loc 1 1010 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 1011 3 view .LVU223
	.loc 1 1013 3 view .LVU224
	.loc 1 1010 1 is_stmt 0 view .LVU225
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 1013 29 view .LVU226
	movl	out_column(%rip), %edx
	.loc 1 1014 6 view .LVU227
	cmpb	$0, tabs(%rip)
	.loc 1 1013 16 view .LVU228
	leal	(%rdx,%rdi), %ebx
.LVL64:
	.loc 1 1014 3 is_stmt 1 view .LVU229
	.loc 1 1014 6 is_stmt 0 view .LVU230
	je	.L55
	.loc 1 1016 7 is_stmt 1 view .LVU231
	.loc 1 1016 33 is_stmt 0 view .LVU232
	testl	%ebx, %ebx
	leal	7(%rbx), %eax
	.loc 1 1017 22 view .LVU233
	leal	1(%rdx), %ecx
	.loc 1 1016 33 view .LVU234
	cmovns	%ebx, %eax
	movl	%eax, %ebp
	.loc 1 1016 18 view .LVU235
	andl	$-8, %eax
.LVL65:
	.loc 1 1017 7 is_stmt 1 view .LVU236
	.loc 1 1016 33 is_stmt 0 view .LVU237
	sarl	$3, %ebp
	.loc 1 1017 10 view .LVU238
	cmpl	%eax, %ecx
	jge	.L55
	.loc 1 1018 15 is_stmt 1 view .LVU239
	cmpl	%eax, %edx
	jge	.L55
.LVL66:
	.p2align 4,,10
	.p2align 3
.L60:
	.loc 1 1020 13 view .LVU240
.LBB104:
.LBI104:
	.loc 2 108 1 view .LVU241
.LBB105:
	.loc 2 110 3 view .LVU242
	.loc 2 110 10 is_stmt 0 view .LVU243
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L68
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	$9, (%rax)
.L59:
.LVL67:
	.loc 2 110 10 view .LVU244
.LBE105:
.LBE104:
	.loc 1 1021 13 is_stmt 1 view .LVU245
	.loc 1 1021 38 is_stmt 0 view .LVU246
	movl	out_column(%rip), %edx
	testl	%edx, %edx
	leal	7(%rdx), %eax
	cmovns	%edx, %eax
	sarl	$3, %eax
	.loc 1 1021 49 view .LVU247
	addl	$1, %eax
	.loc 1 1021 54 view .LVU248
	leal	0(,%rax,8), %edx
	.loc 1 1021 24 view .LVU249
	movl	%edx, out_column(%rip)
	.loc 1 1018 15 is_stmt 1 view .LVU250
	cmpl	%eax, %ebp
	jg	.L60
.LVL68:
.L55:
	.loc 1 1024 9 view .LVU251
	cmpl	%edx, %ebx
	jle	.L54
	.p2align 4,,10
	.p2align 3
.L57:
	.loc 1 1026 7 view .LVU252
.LVL69:
.LBB107:
.LBI107:
	.loc 2 108 1 view .LVU253
.LBB108:
	.loc 2 110 3 view .LVU254
	.loc 2 110 10 is_stmt 0 view .LVU255
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L69
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	$32, (%rax)
.L62:
.LVL70:
	.loc 2 110 10 view .LVU256
.LBE108:
.LBE107:
	.loc 1 1027 7 is_stmt 1 view .LVU257
	.loc 1 1027 17 is_stmt 0 view .LVU258
	movl	out_column(%rip), %eax
	addl	$1, %eax
	movl	%eax, out_column(%rip)
	.loc 1 1024 9 is_stmt 1 view .LVU259
	cmpl	%ebx, %eax
	jl	.L57
.L54:
	.loc 1 1029 1 is_stmt 0 view .LVU260
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL71:
	.loc 1 1029 1 view .LVU261
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL72:
	.p2align 4,,10
	.p2align 3
.L69:
	.cfi_restore_state
.LBB110:
.LBB109:
	.loc 2 110 10 view .LVU262
	movl	$32, %esi
	call	__overflow@PLT
.LVL73:
	jmp	.L62
.LVL74:
	.p2align 4,,10
	.p2align 3
.L68:
	.loc 2 110 10 view .LVU263
.LBE109:
.LBE110:
.LBB111:
.LBB106:
	movl	$9, %esi
	call	__overflow@PLT
.LVL75:
	jmp	.L59
.LBE106:
.LBE111:
	.cfi_endproc
.LFE154:
	.size	put_space, .-put_space
	.p2align 4
	.type	set_other_indent, @function
set_other_indent:
.LVL76:
.LFB139:
	.loc 1 494 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 495 3 view .LVU265
	.loc 1 495 6 is_stmt 0 view .LVU266
	cmpb	$0, split(%rip)
	je	.L71
	.loc 1 496 5 is_stmt 1 view .LVU267
	.loc 1 496 18 is_stmt 0 view .LVU268
	movl	first_indent(%rip), %eax
	movl	%eax, other_indent(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	.loc 1 497 8 is_stmt 1 view .LVU269
	.loc 1 497 11 is_stmt 0 view .LVU270
	cmpb	$0, crown(%rip)
	je	.L73
	.loc 1 499 7 is_stmt 1 view .LVU271
	.loc 1 499 50 is_stmt 0 view .LVU272
	movl	in_column(%rip), %eax
	testb	%dil, %dil
	cmove	first_indent(%rip), %eax
	.loc 1 499 20 view .LVU273
	movl	%eax, other_indent(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	.loc 1 501 8 is_stmt 1 view .LVU274
	.loc 1 501 11 is_stmt 0 view .LVU275
	cmpb	$0, tagged(%rip)
	movl	first_indent(%rip), %eax
	je	.L76
	.loc 1 503 7 is_stmt 1 view .LVU276
	.loc 1 503 10 is_stmt 0 view .LVU277
	testb	%dil, %dil
	je	.L77
	.loc 1 503 39 discriminator 1 view .LVU278
	movl	in_column(%rip), %edx
	.loc 1 503 26 discriminator 1 view .LVU279
	cmpl	%eax, %edx
	je	.L77
	.loc 1 505 11 is_stmt 1 view .LVU280
	.loc 1 505 24 is_stmt 0 view .LVU281
	movl	%edx, other_indent(%rip)
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.loc 1 518 7 is_stmt 1 view .LVU282
	.loc 1 518 20 is_stmt 0 view .LVU283
	movl	%eax, other_indent(%rip)
.L70:
	.loc 1 520 1 view .LVU284
	ret
	.p2align 4,,10
	.p2align 3
.L77:
.LBB114:
.LBI114:
	.loc 1 493 1 is_stmt 1 view .LVU285
.LVL77:
.LBB115:
	.loc 1 513 12 view .LVU286
	.loc 1 513 15 is_stmt 0 view .LVU287
	cmpl	other_indent(%rip), %eax
	jne	.L70
	.loc 1 514 9 is_stmt 1 view .LVU288
	.loc 1 514 55 is_stmt 0 view .LVU289
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$3, %eax
	.loc 1 514 22 view .LVU290
	movl	%eax, other_indent(%rip)
	ret
.LBE115:
.LBE114:
	.cfi_endproc
.LFE139:
	.size	set_other_indent, .-set_other_indent
	.p2align 4
	.type	put_word.isra.0, @function
put_word.isra.0:
.LFB156:
	.loc 1 995 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 997 3 view .LVU292
	.loc 1 998 3 view .LVU293
	.loc 1 1000 3 view .LVU294
.LVL78:
	.loc 1 1001 3 view .LVU295
	.loc 1 1001 10 is_stmt 0 view .LVU296
	movl	(%rsi), %eax
.LVL79:
	.loc 1 1001 23 is_stmt 1 view .LVU297
	.loc 1 1001 3 is_stmt 0 view .LVU298
	testl	%eax, %eax
	je	.L90
	subl	$1, %eax
	.loc 1 995 1 view .LVU299
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
.LVL80:
	.loc 1 995 1 view .LVU300
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	1(%rdi,%rax), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
.LVL81:
	.p2align 4,,10
	.p2align 3
.L84:
	.loc 1 1002 5 is_stmt 1 view .LVU301
.LBB116:
.LBB117:
	.loc 2 110 10 is_stmt 0 view .LVU302
	movq	stdout(%rip), %rdi
.LBE117:
.LBE116:
	.loc 1 1002 5 view .LVU303
	addq	$1, %rbx
.LVL82:
	.loc 1 1002 5 view .LVU304
	movzbl	-1(%rbx), %esi
.LVL83:
.LBB120:
.LBI116:
	.loc 2 108 1 is_stmt 1 view .LVU305
.LBB118:
	.loc 2 110 3 view .LVU306
	.loc 2 110 10 is_stmt 0 view .LVU307
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L93
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	%sil, (%rax)
.LVL84:
.L83:
	.loc 2 110 10 view .LVU308
.LBE118:
.LBE120:
	.loc 1 1001 31 is_stmt 1 view .LVU309
	.loc 1 1001 23 view .LVU310
	.loc 1 1001 3 is_stmt 0 view .LVU311
	cmpq	%rbp, %rbx
	jne	.L84
.LVL85:
	.loc 1 1001 3 view .LVU312
	movl	(%r12), %eax
	.loc 1 1003 3 is_stmt 1 view .LVU313
	.loc 1 1004 1 is_stmt 0 view .LVU314
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL86:
	.loc 1 1003 14 view .LVU315
	addl	%eax, out_column(%rip)
	.loc 1 1004 1 view .LVU316
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL87:
	.loc 1 1004 1 view .LVU317
	ret
.LVL88:
	.p2align 4,,10
	.p2align 3
.L93:
	.cfi_restore_state
.LBB121:
.LBB119:
	.loc 2 110 10 view .LVU318
	call	__overflow@PLT
.LVL89:
	.loc 2 110 10 view .LVU319
	jmp	.L83
.LVL90:
	.p2align 4,,10
	.p2align 3
.L90:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.loc 2 110 10 view .LVU320
.LBE119:
.LBE121:
	.loc 1 1003 3 is_stmt 1 view .LVU321
	.loc 1 1003 14 is_stmt 0 view .LVU322
	addl	%eax, out_column(%rip)
	ret
	.cfi_endproc
.LFE156:
	.size	put_word.isra.0, .-put_word.isra.0
	.p2align 4
	.type	put_line, @function
put_line:
.LVL91:
.LFB152:
	.loc 1 972 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 973 3 view .LVU324
	.loc 1 975 3 view .LVU325
	.loc 1 972 1 is_stmt 0 view .LVU326
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%esi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 976 3 view .LVU327
	movl	prefix_indent(%rip), %edi
.LVL92:
	.loc 1 975 14 view .LVU328
	movl	$0, out_column(%rip)
	.loc 1 976 3 is_stmt 1 view .LVU329
	call	put_space
.LVL93:
	.loc 1 977 3 view .LVU330
	movq	stdout(%rip), %rsi
	movq	prefix(%rip), %rdi
	call	fputs_unlocked@PLT
.LVL94:
	.loc 1 978 3 view .LVU331
	.loc 1 978 14 is_stmt 0 view .LVU332
	movl	prefix_length(%rip), %eax
	addl	out_column(%rip), %eax
	.loc 1 979 3 view .LVU333
	subl	%eax, %ebx
.LVL95:
	.loc 1 978 14 view .LVU334
	movl	%eax, out_column(%rip)
	.loc 1 979 3 is_stmt 1 view .LVU335
	movl	%ebx, %edi
	call	put_space
.LVL96:
	.loc 1 981 3 view .LVU336
	.loc 1 981 14 is_stmt 0 view .LVU337
	movq	32(%r13), %r12
	.loc 1 981 11 view .LVU338
	leaq	-40(%r12), %rbp
.LVL97:
	.loc 1 982 3 is_stmt 1 view .LVU339
	.loc 1 982 10 view .LVU340
	.loc 1 982 3 is_stmt 0 view .LVU341
	cmpq	%rbp, %r13
	je	.L95
	movq	%r13, %rbx
.LVL98:
	.p2align 4,,10
	.p2align 3
.L96:
	.loc 1 984 7 is_stmt 1 discriminator 2 view .LVU342
	movq	(%rbx), %rdi
	leaq	8(%rbx), %rsi
	.loc 1 982 25 is_stmt 0 discriminator 2 view .LVU343
	addq	$40, %rbx
.LVL99:
	.loc 1 984 7 discriminator 2 view .LVU344
	call	put_word.isra.0
.LVL100:
	.loc 1 985 7 is_stmt 1 discriminator 2 view .LVU345
	movl	-28(%rbx), %edi
	call	put_space
.LVL101:
	.loc 1 982 24 discriminator 2 view .LVU346
	.loc 1 982 10 discriminator 2 view .LVU347
	.loc 1 982 3 is_stmt 0 discriminator 2 view .LVU348
	cmpq	%rbx, %rbp
	jne	.L96
	subq	%r13, %r12
	subq	$80, %r12
	shrq	$3, %r12
	leaq	40(%r13,%r12,8), %rbp
.LVL102:
.L95:
	.loc 1 987 3 is_stmt 1 view .LVU349
	movq	0(%rbp), %rdi
	leaq	8(%rbp), %rsi
	call	put_word.isra.0
.LVL103:
	.loc 1 988 3 view .LVU350
	.loc 1 988 20 is_stmt 0 view .LVU351
	movl	out_column(%rip), %eax
.LBB122:
.LBB123:
	.loc 2 110 10 view .LVU352
	movq	stdout(%rip), %rdi
.LBE123:
.LBE122:
	.loc 1 988 20 view .LVU353
	movl	%eax, last_line_length(%rip)
	.loc 1 989 3 is_stmt 1 view .LVU354
.LVL104:
.LBB127:
.LBI122:
	.loc 2 108 1 view .LVU355
.LBB124:
	.loc 2 110 3 view .LVU356
	.loc 2 110 10 is_stmt 0 view .LVU357
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L100
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	$10, (%rax)
.LVL105:
	.loc 2 110 10 view .LVU358
.LBE124:
.LBE127:
	.loc 1 990 1 view .LVU359
	addq	$8, %rsp
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
	ret
.LVL106:
	.p2align 4,,10
	.p2align 3
.L100:
	.cfi_restore_state
	.loc 1 990 1 view .LVU360
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
.LBB128:
.LBB125:
	.loc 2 110 10 view .LVU361
	movl	$10, %esi
.LBE125:
.LBE128:
	.loc 1 990 1 view .LVU362
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
.LBB129:
.LBB126:
	.loc 2 110 10 view .LVU363
	jmp	__overflow@PLT
.LVL107:
.LBE126:
.LBE129:
	.cfi_endproc
.LFE152:
	.size	put_line, .-put_line
	.p2align 4
	.type	put_paragraph, @function
put_paragraph:
.LVL108:
.LFB151:
	.loc 1 959 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 960 3 view .LVU365
	.loc 1 962 3 view .LVU366
	.loc 1 959 1 is_stmt 0 view .LVU367
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	.loc 1 962 3 view .LVU368
	leaq	unused_word_type(%rip), %rdi
.LVL109:
	.loc 1 959 1 view .LVU369
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 962 3 view .LVU370
	movl	first_indent(%rip), %esi
	call	put_line
.LVL110:
	.loc 1 963 3 is_stmt 1 view .LVU371
	.loc 1 963 10 is_stmt 0 view .LVU372
	movq	32+unused_word_type(%rip), %rbx
.LVL111:
	.loc 1 963 30 is_stmt 1 view .LVU373
	.loc 1 963 3 is_stmt 0 view .LVU374
	cmpq	%rbp, %rbx
	je	.L101
	.p2align 4,,10
	.p2align 3
.L103:
	.loc 1 964 5 is_stmt 1 discriminator 3 view .LVU375
	movl	other_indent(%rip), %esi
	movq	%rbx, %rdi
	call	put_line
.LVL112:
	.loc 1 963 43 discriminator 3 view .LVU376
	.loc 1 963 45 is_stmt 0 discriminator 3 view .LVU377
	movq	32(%rbx), %rbx
.LVL113:
	.loc 1 963 30 is_stmt 1 discriminator 3 view .LVU378
	.loc 1 963 3 is_stmt 0 discriminator 3 view .LVU379
	cmpq	%rbx, %rbp
	jne	.L103
.L101:
	.loc 1 965 1 view .LVU380
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL114:
	.loc 1 965 1 view .LVU381
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL115:
	.loc 1 965 1 view .LVU382
	ret
	.cfi_endproc
.LFE151:
	.size	put_paragraph, .-put_paragraph
	.p2align 4
	.type	flush_paragraph, @function
flush_paragraph:
.LFB147:
	.loc 1 785 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 786 3 view .LVU384
	.loc 1 787 3 view .LVU385
	.loc 1 788 3 view .LVU386
	.loc 1 789 3 view .LVU387
	.loc 1 793 3 view .LVU388
	.loc 1 785 1 is_stmt 0 view .LVU389
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 793 18 view .LVU390
	movq	word_limit(%rip), %r12
	.loc 1 785 1 view .LVU391
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 793 6 view .LVU392
	leaq	unused_word_type(%rip), %rbx
	cmpq	%rbx, %r12
	je	.L118
	.loc 1 806 3 is_stmt 1 view .LVU393
	call	fmt_paragraph
.LVL116:
	.loc 1 810 3 view .LVU394
	.loc 1 811 3 view .LVU395
	.loc 1 812 3 view .LVU396
	.loc 1 812 10 is_stmt 0 view .LVU397
	movq	32+unused_word_type(%rip), %rdx
.LVL117:
	.loc 1 812 30 is_stmt 1 view .LVU398
	.loc 1 812 3 is_stmt 0 view .LVU399
	cmpq	%rdx, %r12
	je	.L115
	movq	24(%rdx), %rsi
	movq	%r12, %rbp
	.loc 1 811 14 view .LVU400
	movabsq	$9223372036854775807, %rax
	.loc 1 819 10 view .LVU401
	movabsq	$9223372036854775798, %r8
.LVL118:
	.p2align 4,,10
	.p2align 3
.L112:
	.loc 1 814 7 is_stmt 1 view .LVU402
	movq	%rdx, %rdi
	.loc 1 814 27 is_stmt 0 view .LVU403
	movq	32(%rdx), %rdx
.LVL119:
	.loc 1 814 27 view .LVU404
	movq	%rsi, %rcx
	.loc 1 814 39 view .LVU405
	movq	24(%rdx), %rsi
	.loc 1 814 24 view .LVU406
	subq	%rsi, %rcx
	.loc 1 814 10 view .LVU407
	cmpq	%rax, %rcx
	jge	.L110
	.loc 1 814 10 view .LVU408
	movq	%rcx, %rax
.LVL120:
	.loc 1 814 10 view .LVU409
	movq	%rdi, %rbp
.LVL121:
.L110:
	.loc 1 819 7 is_stmt 1 view .LVU410
	.loc 1 820 20 is_stmt 0 view .LVU411
	leaq	9(%rax), %rcx
	cmpq	%r8, %rax
	cmovle	%rcx, %rax
.LVL122:
	.loc 1 812 30 is_stmt 1 view .LVU412
	.loc 1 812 3 is_stmt 0 view .LVU413
	cmpq	%rdx, %r12
	jne	.L112
.LVL123:
.L109:
	.loc 1 822 3 is_stmt 1 view .LVU414
	movq	%rbp, %rdi
	call	put_paragraph
.LVL124:
	.loc 1 827 3 view .LVU415
	.loc 1 827 45 is_stmt 0 view .LVU416
	movq	wptr(%rip), %r12
	.loc 1 827 58 view .LVU417
	movq	0(%rbp), %rsi
.LVL125:
.LBB130:
.LBI130:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 38 1 is_stmt 1 view .LVU418
.LBB131:
	.loc 3 40 3 view .LVU419
	.loc 3 40 10 is_stmt 0 view .LVU420
	movl	$5000, %ecx
	leaq	parabuf(%rip), %rdi
.LBE131:
.LBE130:
	.loc 1 827 45 view .LVU421
	movq	%r12, %rdx
	subq	%rsi, %rdx
.LVL126:
.LBB133:
.LBB132:
	.loc 3 40 10 view .LVU422
	call	__memmove_chk@PLT
.LVL127:
	.loc 3 40 10 view .LVU423
.LBE132:
.LBE133:
	.loc 1 828 3 is_stmt 1 view .LVU424
	.loc 1 828 22 is_stmt 0 view .LVU425
	movq	0(%rbp), %rdx
.LVL128:
	.loc 1 829 3 is_stmt 1 view .LVU426
	.loc 1 828 29 is_stmt 0 view .LVU427
	leaq	parabuf(%rip), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	.loc 1 829 8 view .LVU428
	cltq
	subq	%rax, %r12
	movq	%rax, %rcx
	movq	%r12, wptr(%rip)
	.loc 1 833 3 is_stmt 1 view .LVU429
.LVL129:
	.loc 1 833 25 view .LVU430
	.loc 1 833 27 is_stmt 0 view .LVU431
	movq	word_limit(%rip), %r12
	.loc 1 829 8 view .LVU432
	negq	%rcx
	.loc 1 833 3 view .LVU433
	cmpq	%rbp, %r12
	jb	.L113
	.loc 1 833 3 view .LVU434
	movq	%rbp, %rax
	jmp	.L114
.LVL130:
	.p2align 4,,10
	.p2align 3
.L119:
	.loc 1 833 3 view .LVU435
	movq	(%rax), %rdx
.L114:
	.loc 1 834 5 is_stmt 1 discriminator 3 view .LVU436
	.loc 1 834 13 is_stmt 0 discriminator 3 view .LVU437
	addq	%rcx, %rdx
	.loc 1 833 43 discriminator 3 view .LVU438
	addq	$40, %rax
.LVL131:
	.loc 1 834 13 discriminator 3 view .LVU439
	movq	%rdx, -40(%rax)
	.loc 1 833 42 is_stmt 1 discriminator 3 view .LVU440
.LVL132:
	.loc 1 833 25 discriminator 3 view .LVU441
	.loc 1 833 3 is_stmt 0 discriminator 3 view .LVU442
	cmpq	%r12, %rax
	jbe	.L119
.LVL133:
.L113:
	.loc 1 839 3 is_stmt 1 view .LVU443
.LBB134:
.LBI134:
	.loc 3 38 1 view .LVU444
.LBB135:
	.loc 3 40 3 view .LVU445
.LBE135:
.LBE134:
	.loc 1 839 43 is_stmt 0 view .LVU446
	movq	%r12, %rdx
.LBB139:
.LBB136:
	.loc 3 40 10 view .LVU447
	movq	%rbp, %rsi
	movl	$40000, %ecx
.LBE136:
.LBE139:
	.loc 1 839 43 view .LVU448
	subq	%rbp, %rdx
	.loc 1 840 29 view .LVU449
	subq	%rbx, %rbp
.LVL134:
.LBB140:
.LBB137:
	.loc 3 40 10 view .LVU450
	leaq	unused_word_type(%rip), %rdi
.LVL135:
	.loc 3 40 10 view .LVU451
.LBE137:
.LBE140:
	.loc 1 840 14 view .LVU452
	subq	%rbp, %r12
.LVL136:
	.loc 1 839 3 view .LVU453
	addq	$40, %rdx
.LVL137:
.LBB141:
.LBB138:
	.loc 3 40 10 view .LVU454
	call	__memmove_chk@PLT
.LVL138:
	.loc 3 40 10 view .LVU455
.LBE138:
.LBE141:
	.loc 1 840 3 is_stmt 1 view .LVU456
	.loc 1 841 1 is_stmt 0 view .LVU457
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	.loc 1 840 14 view .LVU458
	movq	%r12, word_limit(%rip)
	.loc 1 841 1 view .LVU459
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L118:
	.cfi_restore_state
	.loc 1 795 7 is_stmt 1 view .LVU460
	movq	wptr(%rip), %rdx
	leaq	parabuf(%rip), %rbx
	movl	$1, %esi
	movq	stdout(%rip), %rcx
	movq	%rbx, %rdi
	subq	%rbx, %rdx
	call	fwrite_unlocked@PLT
.LVL139:
	.loc 1 796 7 view .LVU461
	.loc 1 796 12 is_stmt 0 view .LVU462
	movq	%rbx, wptr(%rip)
	.loc 1 797 7 is_stmt 1 view .LVU463
	.loc 1 841 1 is_stmt 0 view .LVU464
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL140:
	.p2align 4,,10
	.p2align 3
.L115:
	.cfi_restore_state
	.loc 1 812 3 view .LVU465
	movq	%r12, %rbp
	jmp	.L109
	.cfi_endproc
.LFE147:
	.size	flush_paragraph, .-flush_paragraph
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"(['`\""
.LC1:
	.string	")]'\""
.LC2:
	.string	".?!"
	.text
	.p2align 4
	.type	get_line, @function
get_line:
.LVL141:
.LFB143:
	.loc 1 664 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 665 3 view .LVU467
	.loc 1 666 3 view .LVU468
	.loc 1 667 3 view .LVU469
	.loc 1 669 3 view .LVU470
	.loc 1 670 3 view .LVU471
	.loc 1 664 1 is_stmt 0 view .LVU472
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
.LBB146:
.LBB147:
	.loc 1 775 28 view .LVU473
	leaq	.LC1(%rip), %r13
.LBE147:
.LBE146:
	.loc 1 664 1 view .LVU474
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	__ctype_b_loc@PLT
.LVL142:
	.loc 1 664 1 view .LVU475
	movq	word_limit(%rip), %rdx
	movq	%rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L138:
	.loc 1 672 3 is_stmt 1 view .LVU476
	.loc 1 677 7 view .LVU477
	.loc 1 677 24 is_stmt 0 view .LVU478
	movq	wptr(%rip), %rax
	movq	%rax, (%rdx)
	jmp	.L125
.LVL143:
	.p2align 4,,10
	.p2align 3
.L121:
	.loc 1 685 11 is_stmt 1 view .LVU479
	.loc 1 685 16 is_stmt 0 view .LVU480
	leaq	1(%rax), %rdx
	.loc 1 685 19 view .LVU481
	movb	%r12b, (%rax)
	.loc 1 686 11 is_stmt 1 view .LVU482
.LVL144:
.LBB152:
.LBI152:
	.loc 2 66 1 view .LVU483
.LBB153:
	.loc 2 68 3 view .LVU484
	.loc 2 68 10 is_stmt 0 view .LVU485
	movq	8(%r15), %rax
.LBE153:
.LBE152:
	.loc 1 685 16 view .LVU486
	movq	%rdx, wptr(%rip)
.LBB157:
.LBB154:
	.loc 2 68 10 view .LVU487
	cmpq	16(%r15), %rax
	jnb	.L160
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%r15)
	movzbl	(%rax), %r12d
.LVL145:
	.loc 2 68 10 view .LVU488
.LBE154:
.LBE157:
	.loc 1 688 13 is_stmt 1 view .LVU489
.LBB158:
.LBB155:
	.loc 2 68 10 is_stmt 0 view .LVU490
	movq	%rdx, %rax
.L124:
	.loc 2 68 10 view .LVU491
.LBE155:
.LBE158:
	.loc 1 688 27 discriminator 1 view .LVU492
	movq	8(%rsp), %rdi
	movslq	%r12d, %rcx
	movq	(%rdi), %r14
	.loc 1 688 23 discriminator 1 view .LVU493
	testb	$32, 1(%r14,%rcx,2)
	jne	.L126
.LVL146:
.L125:
	.loc 1 678 7 is_stmt 1 view .LVU494
	.loc 1 680 11 view .LVU495
	.loc 1 680 14 is_stmt 0 view .LVU496
	leaq	5000+parabuf(%rip), %rbx
.LVL147:
	.loc 1 680 14 view .LVU497
	cmpq	%rbx, %rax
	jne	.L121
	.loc 1 682 15 is_stmt 1 view .LVU498
	movl	$1, %edi
	call	set_other_indent
.LVL148:
	.loc 1 683 15 view .LVU499
	call	flush_paragraph
.LVL149:
	movq	wptr(%rip), %rax
	jmp	.L121
.LVL150:
	.p2align 4,,10
	.p2align 3
.L160:
.LBB159:
.LBB156:
	.loc 2 68 10 is_stmt 0 view .LVU500
	movq	%r15, %rdi
	call	__uflow@PLT
.LVL151:
	movl	%eax, %r12d
.LVL152:
	.loc 2 68 10 view .LVU501
.LBE156:
.LBE159:
	.loc 1 688 13 is_stmt 1 view .LVU502
	movq	wptr(%rip), %rax
.LVL153:
	.loc 1 688 7 is_stmt 0 view .LVU503
	cmpl	$-1, %r12d
	jne	.L124
	movq	8(%rsp), %rbx
.LVL154:
	.loc 1 688 7 view .LVU504
	movq	(%rbx), %r14
.L126:
	.loc 1 689 7 is_stmt 1 view .LVU505
	.loc 1 689 58 is_stmt 0 view .LVU506
	movq	word_limit(%rip), %rsi
	.loc 1 689 17 view .LVU507
	movl	in_column(%rip), %edi
	.loc 1 689 58 view .LVU508
	movq	(%rsi), %rbx
	.loc 1 689 39 view .LVU509
	movq	%rsi, 16(%rsp)
	.loc 1 689 46 view .LVU510
	subq	%rbx, %rax
	.loc 1 689 39 view .LVU511
	movl	%eax, 8(%rsi)
	.loc 1 689 17 view .LVU512
	addl	%eax, %edi
.LBB160:
.LBB148:
	.loc 1 773 14 view .LVU513
	movsbl	(%rbx), %esi
	.loc 1 770 34 view .LVU514
	cltq
.LBE148:
.LBE160:
	.loc 1 689 17 view .LVU515
	movl	%edi, 24(%rsp)
.LBB161:
.LBB149:
	.loc 1 770 15 view .LVU516
	leaq	-1(%rbx,%rax), %rbp
.LBE149:
.LBE161:
	.loc 1 689 17 view .LVU517
	movl	%edi, in_column(%rip)
	.loc 1 690 7 is_stmt 1 view .LVU518
.LVL155:
.LBB162:
.LBI146:
	.loc 1 767 1 view .LVU519
.LBB150:
	.loc 1 769 3 view .LVU520
	.loc 1 770 3 view .LVU521
	.loc 1 771 3 view .LVU522
	.loc 1 773 3 view .LVU523
	.loc 1 773 14 is_stmt 0 view .LVU524
	leaq	.LC0(%rip), %rdi
	call	strchr@PLT
.LVL156:
	.loc 1 774 3 is_stmt 1 view .LVU525
	.loc 1 774 17 is_stmt 0 view .LVU526
	movzbl	0(%rbp), %esi
.LVL157:
	.loc 1 773 14 view .LVU527
	movq	%rax, %r10
	.loc 1 774 14 view .LVU528
	movl	$4, %eax
	.loc 1 773 12 view .LVU529
	andb	(%r14,%rsi,2), %al
	movq	16(%rsp), %rsi
.LVL158:
	.loc 1 773 14 view .LVU530
	testq	%r10, %r10
	setne	%dl
	.loc 1 773 12 view .LVU531
	movzbl	16(%rsi), %edi
	orl	%edx, %eax
	movl	%edi, %edx
	movb	%dil, 31(%rsp)
	andl	$-6, %edx
	orl	%edx, %eax
	movb	%al, 16(%rsi)
	.loc 1 775 3 is_stmt 1 view .LVU532
	.loc 1 775 9 view .LVU533
	cmpq	%rbp, %rbx
	jb	.L127
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L129:
	.loc 1 776 5 view .LVU534
	.loc 1 776 11 is_stmt 0 view .LVU535
	leaq	-1(%rbp), %rax
.LVL159:
	.loc 1 775 9 is_stmt 1 view .LVU536
	cmpq	%rax, %rbx
	je	.L162
	movq	%rax, %rbp
.LVL160:
.L127:
	.loc 1 775 28 is_stmt 0 view .LVU537
	movsbl	0(%rbp), %r14d
	movq	%r13, %rdi
	movl	%r14d, %esi
	call	strchr@PLT
.LVL161:
	.loc 1 775 25 view .LVU538
	testq	%rax, %rax
	jne	.L129
.LVL162:
.L128:
	.loc 1 777 3 is_stmt 1 view .LVU539
	.loc 1 777 15 is_stmt 0 view .LVU540
	movl	%r14d, %esi
	leaq	.LC2(%rip), %rdi
	call	strchr@PLT
.LVL163:
	.loc 1 777 13 view .LVU541
	movq	16(%rsp), %rbx
.LVL164:
	.loc 1 777 13 view .LVU542
.LBE150:
.LBE162:
	.loc 1 695 11 view .LVU543
	movl	%r12d, %esi
	movq	%r15, %rdi
.LBB163:
.LBB151:
	.loc 1 777 15 view .LVU544
	testq	%rax, %rax
	.loc 1 777 13 view .LVU545
	setne	%al
	leal	(%rax,%rax), %edx
	movzbl	16(%rbx), %eax
	movb	%al, 16(%rsp)
.LVL165:
	.loc 1 777 13 view .LVU546
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 16(%rbx)
	.loc 1 777 13 view .LVU547
.LBE151:
.LBE163:
	.loc 1 694 7 is_stmt 1 view .LVU548
.LVL166:
	.loc 1 695 7 view .LVU549
	.loc 1 695 11 is_stmt 0 view .LVU550
	call	get_space
.LVL167:
	.loc 1 696 37 view .LVU551
	movl	in_column(%rip), %edx
	subl	24(%rsp), %edx
	.loc 1 695 11 view .LVU552
	movl	%eax, %r12d
.LVL168:
	.loc 1 696 7 is_stmt 1 view .LVU553
	.loc 1 696 17 is_stmt 0 view .LVU554
	movq	word_limit(%rip), %rax
.LVL169:
	.loc 1 696 25 view .LVU555
	movl	%edx, 12(%rax)
	.loc 1 697 7 is_stmt 1 view .LVU556
	.loc 1 698 28 is_stmt 0 view .LVU557
	cmpl	$-1, %r12d
	je	.L130
	.loc 1 698 32 discriminator 2 view .LVU558
	movzbl	16(%rax), %ecx
	.loc 1 698 28 discriminator 2 view .LVU559
	testb	$2, %cl
	je	.L144
	.loc 1 699 46 discriminator 1 view .LVU560
	cmpl	$1, %edx
	setg	%dl
	.loc 1 699 32 discriminator 1 view .LVU561
	cmpl	$10, %r12d
	sete	%sil
	.loc 1 699 46 discriminator 1 view .LVU562
	orb	%sil, %dl
	je	.L163
.L131:
	.loc 1 697 25 view .LVU563
	leal	0(,%rdx,8), %ecx
	movzbl	16(%rax), %edx
	andl	$-9, %edx
	orl	%ecx, %edx
	movb	%dl, 16(%rax)
	.loc 1 700 7 is_stmt 1 view .LVU564
	.loc 1 700 10 is_stmt 0 view .LVU565
	cmpl	$10, %r12d
	je	.L133
.L142:
	.loc 1 700 33 discriminator 1 view .LVU566
	cmpb	$0, uniform(%rip)
	jne	.L133
	.loc 1 702 7 is_stmt 1 view .LVU567
	.loc 1 702 10 is_stmt 0 view .LVU568
	leaq	39920+unused_word_type(%rip), %rsi
.LVL170:
	.loc 1 702 10 view .LVU569
	cmpq	%rsi, %rax
	je	.L140
	.loc 1 707 7 is_stmt 1 view .LVU570
	.loc 1 707 17 is_stmt 0 view .LVU571
	leaq	40(%rax), %rdx
	movq	%rdx, word_limit(%rip)
	.loc 1 709 9 is_stmt 1 view .LVU572
	jmp	.L138
.LVL171:
	.p2align 4,,10
	.p2align 3
.L130:
	.loc 1 697 25 is_stmt 0 view .LVU573
	orb	$8, 16(%rax)
	.loc 1 700 7 is_stmt 1 view .LVU574
.L133:
	.loc 1 701 9 view .LVU575
	.loc 1 701 51 is_stmt 0 view .LVU576
	xorl	%edx, %edx
	testb	$8, 16(%rax)
	.loc 1 702 10 view .LVU577
	leaq	39920+unused_word_type(%rip), %rsi
.LVL172:
	.loc 1 701 51 view .LVU578
	setne	%dl
	addl	$1, %edx
	.loc 1 701 27 view .LVU579
	movl	%edx, 12(%rax)
	.loc 1 702 7 is_stmt 1 view .LVU580
	.loc 1 702 10 is_stmt 0 view .LVU581
	cmpq	%rsi, %rax
	je	.L140
.LVL173:
.L136:
	.loc 1 707 7 is_stmt 1 view .LVU582
	.loc 1 707 17 is_stmt 0 view .LVU583
	leaq	40(%rax), %rdx
	movq	%rdx, word_limit(%rip)
	.loc 1 709 9 is_stmt 1 view .LVU584
	.loc 1 709 3 is_stmt 0 view .LVU585
	cmpl	$10, %r12d
	je	.L137
	cmpl	$-1, %r12d
	jne	.L138
.L137:
	.loc 1 710 3 is_stmt 1 view .LVU586
	.loc 1 711 1 is_stmt 0 view .LVU587
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	.loc 1 710 10 view .LVU588
	movq	%r15, %rdi
	.loc 1 711 1 view .LVU589
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL174:
	.loc 1 711 1 view .LVU590
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL175:
	.loc 1 710 10 view .LVU591
	jmp	get_prefix
.LVL176:
	.p2align 4,,10
	.p2align 3
.L162:
	.cfi_restore_state
	.loc 1 710 10 view .LVU592
	movsbl	-1(%rbp), %r14d
	jmp	.L128
.LVL177:
	.p2align 4,,10
	.p2align 3
.L144:
	.loc 1 710 10 view .LVU593
	xorl	%edx, %edx
	jmp	.L131
.LVL178:
	.p2align 4,,10
	.p2align 3
.L140:
	.loc 1 704 11 is_stmt 1 view .LVU594
	movl	$1, %edi
	call	set_other_indent
.LVL179:
	.loc 1 705 11 view .LVU595
	call	flush_paragraph
.LVL180:
	.loc 1 705 11 is_stmt 0 view .LVU596
	movq	word_limit(%rip), %rax
	jmp	.L136
.L163:
	.loc 1 697 25 view .LVU597
	andl	$-9, %ecx
	movb	%cl, 16(%rax)
	.loc 1 700 7 is_stmt 1 view .LVU598
	jmp	.L142
.LVL181:
.L161:
	.loc 1 700 7 is_stmt 0 view .LVU599
	movsbl	0(%rbp), %r14d
	jmp	.L128
	.cfi_endproc
.LFE143:
	.size	get_line, .-get_line
	.section	.rodata.str1.1
.LC3:
	.string	"src/fmt.c"
.LC4:
	.string	"word < word_limit"
	.text
	.p2align 4
	.type	fmt, @function
fmt:
.LVL182:
.LFB138:
	.loc 1 477 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 478 3 view .LVU601
	.loc 1 477 1 is_stmt 0 view .LVU602
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	.loc 1 478 3 view .LVU603
	movl	$2, %esi
	.loc 1 477 1 view .LVU604
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
.LBB190:
.LBB191:
	.loc 1 565 8 view .LVU605
	leaq	parabuf(%rip), %r13
.LBE191:
.LBE190:
	.loc 1 477 1 view .LVU606
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
.LBB256:
.LBB252:
	.loc 1 566 14 view .LVU607
	leaq	unused_word_type(%rip), %r12
.LBE252:
.LBE256:
	.loc 1 477 1 view .LVU608
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 478 3 view .LVU609
	call	fadvise@PLT
.LVL183:
	.loc 1 479 3 is_stmt 1 view .LVU610
	.loc 1 481 15 is_stmt 0 view .LVU611
	movq	%rbx, %rdi
	.loc 1 479 8 view .LVU612
	movb	$0, tabs(%rip)
	.loc 1 480 3 is_stmt 1 view .LVU613
	.loc 1 480 16 is_stmt 0 view .LVU614
	movl	$0, other_indent(%rip)
	.loc 1 481 3 is_stmt 1 view .LVU615
	.loc 1 481 15 is_stmt 0 view .LVU616
	call	get_prefix
.LVL184:
	.loc 1 481 13 view .LVU617
	movl	%eax, next_char(%rip)
	.loc 1 482 3 is_stmt 1 view .LVU618
	.loc 1 481 15 is_stmt 0 view .LVU619
	movl	%eax, %ebp
	.p2align 4,,10
	.p2align 3
.L207:
	.loc 1 482 9 is_stmt 1 view .LVU620
.LVL185:
.LBB257:
.LBI190:
	.loc 1 538 1 view .LVU621
.LBB253:
	.loc 1 540 3 view .LVU622
	.loc 1 542 3 view .LVU623
	.loc 1 542 20 is_stmt 0 view .LVU624
	movl	$0, last_line_length(%rip)
	.loc 1 543 3 is_stmt 1 view .LVU625
.LVL186:
	.loc 1 547 3 view .LVU626
	.p2align 4,,10
	.p2align 3
.L165:
	.loc 1 547 9 view .LVU627
	movl	next_prefix_indent(%rip), %edi
	movl	in_column(%rip), %eax
	cmpl	$10, %ebp
	je	.L191
	cmpl	$-1, %ebp
	je	.L191
	.loc 1 548 10 is_stmt 0 view .LVU628
	cmpl	%edi, prefix_lead_space(%rip)
	jg	.L192
	.loc 1 549 44 view .LVU629
	movl	prefix_full_length(%rip), %edx
	addl	%edi, %edx
	.loc 1 549 10 view .LVU630
	cmpl	%eax, %edx
	jle	.L260
.L192:
	.loc 1 551 7 is_stmt 1 view .LVU631
.LVL187:
.LBB192:
.LBI192:
	.loc 1 619 1 view .LVU632
.LBB193:
	.loc 1 621 3 view .LVU633
	.loc 1 623 3 view .LVU634
	.loc 1 623 14 is_stmt 0 view .LVU635
	movl	$0, out_column(%rip)
	.loc 1 624 3 is_stmt 1 view .LVU636
	.loc 1 624 6 is_stmt 0 view .LVU637
	cmpl	%eax, %edi
	jge	.L257
	movl	$1, %r14d
.L166:
	.loc 1 626 7 is_stmt 1 view .LVU638
	call	put_space
.LVL188:
	.loc 1 627 7 view .LVU639
	.loc 1 627 35 is_stmt 0 view .LVU640
	movl	in_column(%rip), %eax
	movl	out_column(%rip), %edi
	.loc 1 627 14 view .LVU641
	movq	prefix(%rip), %r15
.LVL189:
	.loc 1 627 24 is_stmt 1 view .LVU642
	.loc 1 627 35 is_stmt 0 view .LVU643
	movl	%eax, %edx
	.loc 1 627 7 view .LVU644
	cmpl	%edi, %eax
	jne	.L170
	jmp	.L169
.LVL190:
	.p2align 4,,10
	.p2align 3
.L171:
.LBB194:
.LBB195:
	.loc 2 110 10 view .LVU645
	leaq	1(%rdx), %rcx
	movq	%rcx, 40(%rdi)
	movb	%sil, (%rdx)
.LVL191:
.L172:
	.loc 2 110 10 view .LVU646
.LBE195:
.LBE194:
	.loc 1 627 55 is_stmt 1 view .LVU647
	.loc 1 627 65 is_stmt 0 view .LVU648
	movl	out_column(%rip), %ecx
	.loc 1 627 35 view .LVU649
	movl	%eax, %edx
	.loc 1 627 65 view .LVU650
	leal	1(%rcx), %edi
	movl	%edi, out_column(%rip)
	.loc 1 627 24 is_stmt 1 view .LVU651
	.loc 1 627 7 is_stmt 0 view .LVU652
	cmpl	%eax, %edi
	je	.L169
.L170:
	.loc 1 627 51 view .LVU653
	movzbl	(%r15), %esi
	.loc 1 627 48 view .LVU654
	testb	%sil, %sil
	je	.L261
	.loc 1 628 9 is_stmt 1 view .LVU655
.LBB198:
.LBB196:
	.loc 2 110 10 is_stmt 0 view .LVU656
	movq	stdout(%rip), %rdi
.LBE196:
.LBE198:
	.loc 1 628 9 view .LVU657
	addq	$1, %r15
.LVL192:
.LBB199:
.LBI194:
	.loc 2 108 1 is_stmt 1 view .LVU658
.LBB197:
	.loc 2 110 3 view .LVU659
	.loc 2 110 10 is_stmt 0 view .LVU660
	movq	40(%rdi), %rdx
	cmpq	48(%rdi), %rdx
	jb	.L171
	call	__overflow@PLT
.LVL193:
	.loc 2 110 10 view .LVU661
	movl	in_column(%rip), %eax
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L261:
	.loc 2 110 10 view .LVU662
.LBE197:
.LBE199:
	movl	%edi, %edx
	movl	%eax, %edi
.L169:
	.loc 1 629 7 is_stmt 1 view .LVU663
	.loc 1 629 10 is_stmt 0 view .LVU664
	testb	%r14b, %r14b
	jne	.L262
	.loc 1 631 7 is_stmt 1 view .LVU665
	.loc 1 631 10 is_stmt 0 view .LVU666
	cmpl	$-1, %ebp
	jne	.L188
.L175:
	.loc 1 631 55 view .LVU667
	movl	prefix_length(%rip), %eax
	addl	next_prefix_indent(%rip), %eax
	.loc 1 631 20 view .LVU668
	cmpl	in_column(%rip), %eax
	jle	.L263
.LVL194:
.L179:
	.loc 1 631 20 view .LVU669
.LBE193:
.LBE192:
	.loc 1 554 11 is_stmt 1 view .LVU670
	.loc 1 554 21 is_stmt 0 view .LVU671
	movl	$-1, next_char(%rip)
	.loc 1 555 11 is_stmt 1 view .LVU672
.LVL195:
	.loc 1 555 11 is_stmt 0 view .LVU673
.LBE253:
.LBE257:
	.loc 1 487 1 view .LVU674
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL196:
	.loc 1 487 1 view .LVU675
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
.LVL197:
	.p2align 4,,10
	.p2align 3
.L257:
	.cfi_restore_state
.LBB258:
.LBB254:
.LBB217:
.LBB212:
	.loc 1 626 7 is_stmt 1 view .LVU676
	call	put_space
.LVL198:
	.loc 1 627 7 view .LVU677
	.loc 1 627 35 is_stmt 0 view .LVU678
	movl	out_column(%rip), %edi
	movl	in_column(%rip), %eax
	.loc 1 627 14 view .LVU679
	movq	prefix(%rip), %r15
.LVL199:
	.loc 1 627 24 is_stmt 1 view .LVU680
	.loc 1 627 7 is_stmt 0 view .LVU681
	cmpl	%edi, %eax
	je	.L264
.L214:
	.loc 1 624 6 view .LVU682
	movl	$1, %r14d
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L263:
	.loc 1 632 9 is_stmt 1 view .LVU683
.LVL200:
.LBB200:
.LBI200:
	.loc 2 108 1 view .LVU684
.LBB201:
	.loc 2 110 3 view .LVU685
	.loc 2 110 10 is_stmt 0 view .LVU686
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L265
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	$10, (%rax)
.LVL201:
	.loc 2 110 10 view .LVU687
.LBE201:
.LBE200:
	.loc 1 639 3 is_stmt 1 view .LVU688
	.loc 1 639 3 is_stmt 0 view .LVU689
.LBE212:
.LBE217:
	.loc 1 552 7 is_stmt 1 view .LVU690
	jmp	.L179
.LVL202:
	.p2align 4,,10
	.p2align 3
.L191:
	.loc 1 551 7 view .LVU691
.LBB218:
	.loc 1 619 1 view .LVU692
.LBB213:
	.loc 1 621 3 view .LVU693
	.loc 1 623 3 view .LVU694
	.loc 1 623 14 is_stmt 0 view .LVU695
	movl	$0, out_column(%rip)
	.loc 1 624 3 is_stmt 1 view .LVU696
	cmpl	$10, %ebp
	setne	%r14b
	cmpl	$-1, %ebp
	setne	%dl
	andl	%edx, %r14d
	.loc 1 624 6 is_stmt 0 view .LVU697
	cmpl	%eax, %edi
	jl	.L166
	.loc 1 624 38 view .LVU698
	testb	%r14b, %r14b
	jne	.L266
.LVL203:
.L168:
	.loc 1 639 3 is_stmt 1 view .LVU699
	.loc 1 639 3 is_stmt 0 view .LVU700
.LBE213:
.LBE218:
	.loc 1 552 7 is_stmt 1 view .LVU701
	.loc 1 552 10 is_stmt 0 view .LVU702
	cmpl	$-1, %ebp
	je	.L179
.L188:
.LVL204:
	.loc 1 557 7 is_stmt 1 view .LVU703
.LBB219:
.LBI219:
	.loc 2 108 1 view .LVU704
.LBB220:
	.loc 2 110 3 view .LVU705
	.loc 2 110 10 is_stmt 0 view .LVU706
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jnb	.L267
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	$10, (%rax)
.L190:
.LVL205:
	.loc 2 110 10 view .LVU707
.LBE220:
.LBE219:
	.loc 1 558 7 is_stmt 1 view .LVU708
	.loc 1 558 11 is_stmt 0 view .LVU709
	movq	%rbx, %rdi
	call	get_prefix
.LVL206:
	movl	%eax, %ebp
.LVL207:
	.loc 1 558 11 view .LVU710
	jmp	.L165
.LVL208:
	.p2align 4,,10
	.p2align 3
.L262:
.LBB222:
.LBB214:
	.loc 1 630 9 is_stmt 1 view .LVU711
	subl	%edx, %edi
	call	put_space
.LVL209:
	.loc 1 631 7 view .LVU712
	.loc 1 631 10 is_stmt 0 view .LVU713
	cmpl	$-1, %ebp
	jne	.L185
	jmp	.L175
.LVL210:
	.p2align 4,,10
	.p2align 3
.L181:
.LBB203:
.LBB204:
	.loc 2 110 10 view .LVU714
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rdi)
	movb	%bpl, (%rax)
.LVL211:
	.loc 2 110 10 view .LVU715
.LBE204:
.LBE203:
	.loc 1 637 7 is_stmt 1 view .LVU716
.LBB206:
.LBI206:
	.loc 2 66 1 view .LVU717
.LBB207:
	.loc 2 68 3 view .LVU718
	.loc 2 68 10 is_stmt 0 view .LVU719
	movq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	jnb	.L268
.L183:
	.loc 2 68 10 view .LVU720
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbx)
	movzbl	(%rax), %ebp
.LVL212:
	.loc 2 68 10 view .LVU721
	movl	$1, %eax
.L184:
.LVL213:
	.loc 2 68 10 view .LVU722
.LBE207:
.LBE206:
	.loc 1 634 9 is_stmt 1 view .LVU723
	cmpl	$10, %ebp
	je	.L168
	testb	%al, %al
	je	.L168
.L185:
	.loc 1 636 7 view .LVU724
.LVL214:
.LBB209:
.LBI203:
	.loc 2 108 1 view .LVU725
.LBB205:
	.loc 2 110 3 view .LVU726
	.loc 2 110 10 is_stmt 0 view .LVU727
	movq	stdout(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	48(%rdi), %rax
	jb	.L181
	.loc 2 110 10 view .LVU728
	movzbl	%bpl, %esi
	call	__overflow@PLT
.LVL215:
	.loc 2 110 10 view .LVU729
.LBE205:
.LBE209:
	.loc 1 637 7 is_stmt 1 view .LVU730
.LBB210:
	.loc 2 66 1 view .LVU731
.LBB208:
	.loc 2 68 3 view .LVU732
	.loc 2 68 10 is_stmt 0 view .LVU733
	movq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	jb	.L183
	.p2align 4,,10
	.p2align 3
.L268:
	.loc 2 68 10 view .LVU734
	movq	%rbx, %rdi
	call	__uflow@PLT
.LVL216:
	cmpl	$-1, %eax
	movl	%eax, %ebp
.LVL217:
	.loc 2 68 10 view .LVU735
	setne	%al
	jmp	.L184
.LVL218:
	.p2align 4,,10
	.p2align 3
.L267:
	.loc 2 68 10 view .LVU736
.LBE208:
.LBE210:
.LBE214:
.LBE222:
.LBB223:
.LBB221:
	.loc 2 110 10 view .LVU737
	movl	$10, %esi
	call	__overflow@PLT
.LVL219:
	jmp	.L190
.LVL220:
	.p2align 4,,10
	.p2align 3
.L260:
	.loc 2 110 10 view .LVU738
.LBE221:
.LBE223:
	.loc 1 563 3 is_stmt 1 view .LVU739
	.loc 1 563 17 is_stmt 0 view .LVU740
	movl	%edi, prefix_indent(%rip)
	.loc 1 564 3 is_stmt 1 view .LVU741
	.loc 1 567 7 is_stmt 0 view .LVU742
	movl	%ebp, %esi
	movq	%rbx, %rdi
	.loc 1 564 16 view .LVU743
	movl	%eax, first_indent(%rip)
	.loc 1 565 3 is_stmt 1 view .LVU744
	.loc 1 565 8 is_stmt 0 view .LVU745
	movq	%r13, wptr(%rip)
	.loc 1 566 3 is_stmt 1 view .LVU746
	.loc 1 566 14 is_stmt 0 view .LVU747
	movq	%r12, word_limit(%rip)
	.loc 1 567 3 is_stmt 1 view .LVU748
	.loc 1 567 7 is_stmt 0 view .LVU749
	call	get_line
.LVL221:
.LBB224:
.LBB225:
	.loc 1 649 30 view .LVU750
	movl	next_prefix_indent(%rip), %ecx
	movl	prefix_indent(%rip), %r8d
	.loc 1 651 24 view .LVU751
	xorl	%edi, %edi
.LBE225:
.LBE224:
	.loc 1 567 7 view .LVU752
	movl	%eax, %esi
.LVL222:
	.loc 1 568 3 is_stmt 1 view .LVU753
.LBB228:
.LBI224:
	.loc 1 647 1 view .LVU754
.LBB226:
	.loc 1 649 3 view .LVU755
	.loc 1 651 24 is_stmt 0 view .LVU756
	cmpl	%r8d, %ecx
	je	.L269
.LVL223:
.L193:
	.loc 1 651 24 view .LVU757
.LBE226:
.LBE228:
	.loc 1 568 3 view .LVU758
	call	set_other_indent
.LVL224:
	.loc 1 572 3 is_stmt 1 view .LVU759
	.loc 1 572 6 is_stmt 0 view .LVU760
	cmpb	$0, split(%rip)
	jne	.L194
	.loc 1 576 8 is_stmt 1 view .LVU761
	.loc 1 576 11 is_stmt 0 view .LVU762
	cmpb	$0, crown(%rip)
	je	.L195
	.loc 1 578 7 is_stmt 1 view .LVU763
.LVL225:
.LBB229:
.LBI229:
	.loc 1 647 1 view .LVU764
.LBB230:
	.loc 1 649 3 view .LVU765
	.loc 1 651 24 is_stmt 0 view .LVU766
	cmpl	%r8d, %ecx
	je	.L270
.LVL226:
	.p2align 4,,10
	.p2align 3
.L194:
	.loc 1 651 24 view .LVU767
.LBE230:
.LBE229:
	.loc 1 606 3 is_stmt 1 view .LVU768
	movq	word_limit(%rip), %rbp
	cmpq	%r12, %rbp
	jbe	.L271
	.loc 1 608 3 view .LVU769
	.loc 1 608 28 is_stmt 0 view .LVU770
	orb	$10, -24(%rbp)
	.loc 1 609 3 is_stmt 1 view .LVU771
	.loc 1 609 13 is_stmt 0 view .LVU772
	movl	%esi, next_char(%rip)
	.loc 1 610 3 is_stmt 1 view .LVU773
.LVL227:
	.loc 1 610 3 is_stmt 0 view .LVU774
.LBE254:
.LBE258:
	.loc 1 484 7 is_stmt 1 view .LVU775
	call	fmt_paragraph
.LVL228:
	.loc 1 485 7 view .LVU776
	movq	%rbp, %rdi
	call	put_paragraph
.LVL229:
	movl	next_char(%rip), %ebp
	jmp	.L207
.LVL230:
	.p2align 4,,10
	.p2align 3
.L264:
.LBB259:
.LBB255:
.LBB232:
.LBB215:
	.loc 1 630 9 view .LVU777
	xorl	%edi, %edi
	call	put_space
.LVL231:
	.loc 1 631 7 view .LVU778
	jmp	.L185
.LVL232:
	.p2align 4,,10
	.p2align 3
.L265:
.LBB211:
.LBB202:
	.loc 2 110 10 is_stmt 0 view .LVU779
	movl	$10, %esi
	call	__overflow@PLT
.LVL233:
	.loc 2 110 10 view .LVU780
.LBE202:
.LBE211:
	.loc 1 639 3 is_stmt 1 view .LVU781
	.loc 1 639 3 is_stmt 0 view .LVU782
.LBE215:
.LBE232:
	.loc 1 552 7 is_stmt 1 view .LVU783
	jmp	.L179
.LVL234:
	.p2align 4,,10
	.p2align 3
.L269:
.LBB233:
.LBB227:
	.loc 1 650 46 is_stmt 0 view .LVU784
	movl	prefix_full_length(%rip), %eax
.LVL235:
	.loc 1 650 46 view .LVU785
	addl	%ecx, %eax
	.loc 1 650 11 view .LVU786
	cmpl	in_column(%rip), %eax
	jg	.L193
	.loc 1 651 16 view .LVU787
	cmpl	$10, %esi
	setne	%al
	.loc 1 651 24 view .LVU788
	xorl	%edi, %edi
	cmpl	$-1, %esi
	setne	%dil
	andl	%eax, %edi
	jmp	.L193
.LVL236:
	.p2align 4,,10
	.p2align 3
.L195:
	.loc 1 651 24 view .LVU789
.LBE227:
.LBE233:
	.loc 1 587 8 is_stmt 1 view .LVU790
	.loc 1 587 11 is_stmt 0 view .LVU791
	cmpb	$0, tagged(%rip)
	je	.L272
	.loc 1 589 7 is_stmt 1 view .LVU792
.LVL237:
.LBB234:
.LBI234:
	.loc 1 647 1 view .LVU793
.LBB235:
	.loc 1 649 3 view .LVU794
	.loc 1 651 24 is_stmt 0 view .LVU795
	cmpl	%r8d, %ecx
	jne	.L194
	.loc 1 650 24 view .LVU796
	movl	in_column(%rip), %eax
	.loc 1 650 46 view .LVU797
	addl	prefix_full_length(%rip), %ecx
	.loc 1 650 11 view .LVU798
	cmpl	%eax, %ecx
	jg	.L194
	.loc 1 651 24 view .LVU799
	cmpl	$10, %esi
	je	.L194
	cmpl	$-1, %esi
	je	.L194
.LVL238:
	.loc 1 651 24 view .LVU800
.LBE235:
.LBE234:
	.loc 1 589 25 view .LVU801
	cmpl	first_indent(%rip), %eax
	jne	.L209
	jmp	.L194
.LVL239:
	.p2align 4,,10
	.p2align 3
.L273:
.LBB236:
.LBB237:
	.loc 1 650 24 view .LVU802
	movl	in_column(%rip), %edx
	.loc 1 650 46 view .LVU803
	addl	prefix_full_length(%rip), %eax
	.loc 1 650 11 view .LVU804
	cmpl	%edx, %eax
	jg	.L194
	.loc 1 651 24 view .LVU805
	cmpl	$10, %esi
	je	.L194
	.loc 1 651 24 view .LVU806
	cmpl	$-1, %esi
	je	.L194
.LVL240:
	.loc 1 651 24 view .LVU807
.LBE237:
.LBE236:
	.loc 1 595 32 view .LVU808
	cmpl	other_indent(%rip), %edx
	jne	.L194
.L209:
	.loc 1 591 11 is_stmt 1 view .LVU809
	.loc 1 593 15 view .LVU810
	.loc 1 593 19 is_stmt 0 view .LVU811
	movq	%rbx, %rdi
	call	get_line
.LVL241:
	.loc 1 593 19 view .LVU812
	movl	%eax, %esi
.LVL242:
	.loc 1 595 17 is_stmt 1 view .LVU813
.LBB239:
.LBI236:
	.loc 1 647 1 view .LVU814
.LBB238:
	.loc 1 649 3 view .LVU815
	.loc 1 649 30 is_stmt 0 view .LVU816
	movl	next_prefix_indent(%rip), %eax
.LVL243:
	.loc 1 651 24 view .LVU817
	cmpl	prefix_indent(%rip), %eax
	jne	.L194
	jmp	.L273
.LVL244:
	.p2align 4,,10
	.p2align 3
.L272:
	.loc 1 651 24 view .LVU818
.LBE238:
.LBE239:
	.loc 1 600 13 is_stmt 1 view .LVU819
.LBB240:
.LBI240:
	.loc 1 647 1 view .LVU820
.LBB241:
	.loc 1 649 3 view .LVU821
	.loc 1 651 24 is_stmt 0 view .LVU822
	cmpl	%r8d, %ecx
	jne	.L194
	.p2align 4,,10
	.p2align 3
.L199:
	.loc 1 650 24 view .LVU823
	movl	in_column(%rip), %eax
	.loc 1 650 46 view .LVU824
	addl	prefix_full_length(%rip), %ecx
	.loc 1 650 11 view .LVU825
	cmpl	%eax, %ecx
	jg	.L194
	.loc 1 651 24 view .LVU826
	cmpl	$10, %esi
	je	.L194
	cmpl	$-1, %esi
	je	.L194
.LVL245:
	.loc 1 651 24 view .LVU827
.LBE241:
.LBE240:
	.loc 1 600 28 view .LVU828
	cmpl	other_indent(%rip), %eax
	jne	.L194
	.loc 1 601 9 is_stmt 1 view .LVU829
	.loc 1 601 13 is_stmt 0 view .LVU830
	movq	%rbx, %rdi
	call	get_line
.LVL246:
.LBB244:
.LBB242:
	.loc 1 649 30 view .LVU831
	movl	next_prefix_indent(%rip), %ecx
	.loc 1 651 24 view .LVU832
	cmpl	prefix_indent(%rip), %ecx
.LBE242:
.LBE244:
	.loc 1 601 13 view .LVU833
	movl	%eax, %esi
.LVL247:
	.loc 1 600 13 is_stmt 1 view .LVU834
.LBB245:
	.loc 1 647 1 view .LVU835
.LBB243:
	.loc 1 649 3 view .LVU836
	.loc 1 651 24 is_stmt 0 view .LVU837
	jne	.L194
	jmp	.L199
.LVL248:
	.p2align 4,,10
	.p2align 3
.L270:
	.loc 1 651 24 view .LVU838
.LBE243:
.LBE245:
.LBB246:
.LBB231:
	.loc 1 650 46 view .LVU839
	addl	prefix_full_length(%rip), %ecx
	.loc 1 650 11 view .LVU840
	cmpl	in_column(%rip), %ecx
	jg	.L194
	.loc 1 651 24 view .LVU841
	cmpl	$10, %esi
	je	.L194
	cmpl	$-1, %esi
	jne	.L208
	jmp	.L194
.LVL249:
	.p2align 4,,10
	.p2align 3
.L274:
	.loc 1 651 24 view .LVU842
.LBE231:
.LBE246:
.LBB247:
.LBB248:
	.loc 1 650 24 view .LVU843
	movl	in_column(%rip), %edx
	.loc 1 650 46 view .LVU844
	addl	prefix_full_length(%rip), %eax
	.loc 1 650 11 view .LVU845
	cmpl	%edx, %eax
	jg	.L194
	.loc 1 651 24 view .LVU846
	cmpl	$10, %esi
	je	.L194
	.loc 1 651 24 view .LVU847
	cmpl	$-1, %esi
	je	.L194
.LVL250:
	.loc 1 651 24 view .LVU848
.LBE248:
.LBE247:
	.loc 1 584 32 view .LVU849
	cmpl	other_indent(%rip), %edx
	jne	.L194
.L208:
	.loc 1 580 11 is_stmt 1 view .LVU850
	.loc 1 582 15 view .LVU851
	.loc 1 582 19 is_stmt 0 view .LVU852
	movq	%rbx, %rdi
	call	get_line
.LVL251:
	.loc 1 582 19 view .LVU853
	movl	%eax, %esi
.LVL252:
	.loc 1 584 17 is_stmt 1 view .LVU854
.LBB250:
.LBI247:
	.loc 1 647 1 view .LVU855
.LBB249:
	.loc 1 649 3 view .LVU856
	.loc 1 649 30 is_stmt 0 view .LVU857
	movl	next_prefix_indent(%rip), %eax
.LVL253:
	.loc 1 651 24 view .LVU858
	cmpl	prefix_indent(%rip), %eax
	jne	.L194
	jmp	.L274
.LVL254:
.L271:
	.loc 1 651 24 view .LVU859
.LBE249:
.LBE250:
	.loc 1 606 3 is_stmt 1 view .LVU860
	leaq	__PRETTY_FUNCTION__.7252(%rip), %rcx
	movl	$606, %edx
	leaq	.LC3(%rip), %rsi
.LVL255:
	.loc 1 606 3 is_stmt 0 view .LVU861
	leaq	.LC4(%rip), %rdi
	call	__assert_fail@PLT
.LVL256:
.L266:
.LBB251:
.LBB216:
	.loc 1 626 7 is_stmt 1 view .LVU862
	call	put_space
.LVL257:
	.loc 1 627 7 view .LVU863
	.loc 1 627 35 is_stmt 0 view .LVU864
	movl	out_column(%rip), %edi
	movl	in_column(%rip), %eax
	.loc 1 627 14 view .LVU865
	movq	prefix(%rip), %r15
.LVL258:
	.loc 1 627 24 is_stmt 1 view .LVU866
	.loc 1 627 7 is_stmt 0 view .LVU867
	cmpl	%eax, %edi
	jne	.L214
	.loc 1 630 9 is_stmt 1 view .LVU868
	xorl	%edi, %edi
	call	put_space
.LVL259:
	.loc 1 631 7 view .LVU869
	.loc 1 631 10 is_stmt 0 view .LVU870
	cmpl	$-1, %ebp
	jne	.L185
	jmp	.L175
.LBE216:
.LBE251:
.LBE255:
.LBE259:
	.cfi_endproc
.LFE138:
	.size	fmt, .-fmt
	.section	.rodata.str1.1
.LC5:
	.string	"fmt"
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
	.string	"Usage: %s [-WIDTH] [OPTION]... [FILE]...\n"
	.align 8
.LC10:
	.string	"Reformat each paragraph in the FILE(s), writing to standard output.\nThe option -WIDTH is an abbreviated form of --width=DIGITS.\n"
	.align 8
.LC11:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.align 8
.LC12:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.align 8
.LC13:
	.ascii	"  -c, --crown-margin "
	.string	"       preserve indentation of first two lines\n  -p, --prefix=STRING       reformat only lines beginning with STRING,\n                              reattaching the prefix to reformatted lines\n  -s, --split-only          split long lines, but do not refill\n"
	.align 8
.LC14:
	.ascii	"  -t, --tagged-paragraph    i"
	.string	"ndentation of first line different from second\n  -u, --uniform-spacing     one space between words, two after sentences\n  -w, --width=WIDTH         maximum line width (default of 75 columns)\n  -g, --goal=WIDTH          goal width (default of 93% of width)\n"
	.align 8
.LC15:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC16:
	.string	"      --version  output version information and exit\n"
	.section	.rodata.str1.1
.LC17:
	.string	"["
.LC18:
	.string	"test invocation"
.LC19:
	.string	"coreutils"
.LC20:
	.string	"Multi-call invocation"
.LC21:
	.string	"sha224sum"
.LC22:
	.string	"sha2 utilities"
.LC23:
	.string	"sha256sum"
.LC24:
	.string	"sha384sum"
.LC25:
	.string	"sha512sum"
.LC26:
	.string	"\n%s online help: <%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"https://www.gnu.org/software/coreutils/"
	.section	.rodata.str1.1
.LC28:
	.string	"GNU coreutils"
.LC29:
	.string	"en_"
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
	.section	.rodata.str1.1
.LC31:
	.string	"Full documentation <%s%s>\n"
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.p2align 4
	.globl	usage
	.type	usage, @function
usage:
.LVL260:
.LFB135:
	.loc 1 264 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 264 1 is_stmt 0 view .LVU872
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 266 5 view .LVU873
	movl	$5, %edx
	.loc 1 264 1 view .LVU874
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
	.loc 1 264 1 view .LVU875
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	.loc 1 265 3 is_stmt 1 view .LVU876
	.loc 1 265 6 is_stmt 0 view .LVU877
	testl	%edi, %edi
	je	.L276
	.loc 1 266 5 is_stmt 1 view .LVU878
	.loc 1 266 5 view .LVU879
	leaq	.LC8(%rip), %rsi
	xorl	%edi, %edi
.LVL261:
	.loc 1 266 5 is_stmt 0 view .LVU880
	call	dcgettext@PLT
.LVL262:
.LBB276:
.LBB277:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 4 100 10 view .LVU881
	movq	stderr(%rip), %rdi
	movq	%r12, %rcx
	movl	$1, %esi
.LBE277:
.LBE276:
	.loc 1 266 5 view .LVU882
	movq	%rax, %rdx
.LVL263:
.LBB279:
.LBI276:
	.loc 4 98 1 is_stmt 1 view .LVU883
.LBB278:
	.loc 4 100 3 view .LVU884
	.loc 4 100 10 is_stmt 0 view .LVU885
	xorl	%eax, %eax
.LVL264:
	.loc 4 100 10 view .LVU886
	call	__fprintf_chk@PLT
.LVL265:
.L277:
	.loc 4 100 10 view .LVU887
.LBE278:
.LBE279:
	.loc 1 297 3 is_stmt 1 view .LVU888
	movl	%ebp, %edi
	call	exit@PLT
.LVL266:
.L276:
	.loc 1 269 7 view .LVU889
	.loc 1 269 15 is_stmt 0 view .LVU890
	leaq	.LC9(%rip), %rsi
	xorl	%edi, %edi
.LVL267:
.LBB280:
.LBB281:
	.file 5 "src/system.h"
	.loc 5 636 67 view .LVU891
	leaq	.LC23(%rip), %rbx
.LBE281:
.LBE280:
	.loc 1 269 15 view .LVU892
	call	dcgettext@PLT
.LVL268:
.LBB307:
.LBB308:
	.loc 4 107 10 view .LVU893
	movq	%r12, %rdx
	movl	$1, %edi
.LBE308:
.LBE307:
	.loc 1 269 15 view .LVU894
	movq	%rax, %rsi
.LVL269:
.LBB310:
.LBI307:
	.loc 4 105 1 is_stmt 1 view .LVU895
.LBB309:
	.loc 4 107 3 view .LVU896
	.loc 4 107 10 is_stmt 0 view .LVU897
	xorl	%eax, %eax
.LVL270:
	.loc 4 107 10 view .LVU898
	call	__printf_chk@PLT
.LVL271:
	.loc 4 107 10 view .LVU899
.LBE309:
.LBE310:
	.loc 1 270 7 is_stmt 1 view .LVU900
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC10(%rip), %rsi
	call	dcgettext@PLT
.LVL272:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL273:
	.loc 1 275 7 view .LVU901
.LBB311:
.LBI311:
	.loc 5 581 1 view .LVU902
.LBB312:
	.loc 5 583 3 view .LVU903
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC11(%rip), %rsi
	call	dcgettext@PLT
.LVL274:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL275:
.LBE312:
.LBE311:
	.loc 1 276 7 view .LVU904
.LBB313:
.LBI313:
	.loc 5 588 1 view .LVU905
.LBB314:
	.loc 5 590 3 view .LVU906
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC12(%rip), %rsi
	call	dcgettext@PLT
.LVL276:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL277:
.LBE314:
.LBE313:
	.loc 1 278 7 view .LVU907
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC13(%rip), %rsi
	call	dcgettext@PLT
.LVL278:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL279:
	.loc 1 287 7 view .LVU908
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC14(%rip), %rsi
	call	dcgettext@PLT
.LVL280:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL281:
	.loc 1 293 7 view .LVU909
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC15(%rip), %rsi
	call	dcgettext@PLT
.LVL282:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL283:
	.loc 1 294 7 view .LVU910
	movq	stdout(%rip), %r12
	movl	$5, %edx
	xorl	%edi, %edi
	leaq	.LC16(%rip), %rsi
	call	dcgettext@PLT
.LVL284:
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LVL285:
	.loc 1 295 7 view .LVU911
.LBB315:
.LBI280:
	.loc 5 634 1 view .LVU912
.LBB306:
	.loc 5 636 3 view .LVU913
	.loc 5 636 67 is_stmt 0 view .LVU914
	leaq	.LC17(%rip), %rax
	movq	%rbx, 48(%rsp)
	leaq	.LC24(%rip), %rbx
	movq	%rax, (%rsp)
	leaq	.LC18(%rip), %rax
	movq	%rax, 8(%rsp)
	leaq	.LC19(%rip), %rax
	movq	%rax, 16(%rsp)
	leaq	.LC20(%rip), %rax
	movq	%rax, 24(%rsp)
	leaq	.LC21(%rip), %rax
	movq	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	.loc 5 646 3 is_stmt 1 view .LVU915
.LVL286:
	.loc 5 647 3 view .LVU916
	.loc 5 649 3 view .LVU917
	.loc 5 649 9 view .LVU918
	.loc 5 636 67 is_stmt 0 view .LVU919
	movq	%rax, 32(%rsp)
	leaq	.LC22(%rip), %rax
	movq	%rbx, 64(%rsp)
	leaq	.LC25(%rip), %rbx
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	.LC5(%rip), %rbx
	movq	%rax, 88(%rsp)
	.loc 5 647 25 view .LVU920
	movq	%rsp, %rax
.LVL287:
	.p2align 4,,10
	.p2align 3
.L279:
	.loc 5 650 5 is_stmt 1 view .LVU921
	.loc 5 649 18 is_stmt 0 view .LVU922
	movq	16(%rax), %rdi
	.loc 5 650 13 view .LVU923
	addq	$16, %rax
.LVL288:
	.loc 5 649 9 is_stmt 1 view .LVU924
	testq	%rdi, %rdi
	je	.L278
	.loc 5 649 33 is_stmt 0 view .LVU925
	movl	$4, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	seta	%dl
	sbbb	$0, %dl
	.loc 5 649 28 view .LVU926
	testb	%dl, %dl
	jne	.L279
.L278:
	.loc 5 652 3 is_stmt 1 view .LVU927
	.loc 5 652 15 is_stmt 0 view .LVU928
	movq	8(%rax), %r12
	.loc 5 655 11 view .LVU929
	movl	$5, %edx
	leaq	.LC26(%rip), %rsi
	xorl	%edi, %edi
	.loc 5 652 6 view .LVU930
	testq	%r12, %r12
	je	.L280
	.loc 5 653 5 is_stmt 1 view .LVU931
.LVL289:
	.loc 5 655 3 view .LVU932
	.loc 5 655 11 is_stmt 0 view .LVU933
	call	dcgettext@PLT
.LVL290:
.LBB282:
.LBB283:
	.loc 4 107 10 view .LVU934
	leaq	.LC27(%rip), %rcx
	movl	$1, %edi
	leaq	.LC28(%rip), %rdx
.LBE283:
.LBE282:
	.loc 5 655 11 view .LVU935
	movq	%rax, %rsi
.LVL291:
.LBB287:
.LBI282:
	.loc 4 105 1 is_stmt 1 view .LVU936
.LBB284:
	.loc 4 107 3 view .LVU937
	.loc 4 107 10 is_stmt 0 view .LVU938
	xorl	%eax, %eax
.LVL292:
	.loc 4 107 10 view .LVU939
	call	__printf_chk@PLT
.LVL293:
	.loc 4 107 10 view .LVU940
.LBE284:
.LBE287:
	.loc 5 659 3 is_stmt 1 view .LVU941
	.loc 5 659 29 is_stmt 0 view .LVU942
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL294:
	movq	%rax, %rdi
.LVL295:
	.loc 5 660 3 is_stmt 1 view .LVU943
	.loc 5 660 6 is_stmt 0 view .LVU944
	testq	%rax, %rax
	je	.L281
	.loc 5 660 22 view .LVU945
	movl	$3, %edx
	leaq	.LC29(%rip), %rsi
	call	strncmp@PLT
.LVL296:
	.loc 5 660 19 view .LVU946
	testl	%eax, %eax
	jne	.L284
.LVL297:
.L281:
	.loc 5 669 3 is_stmt 1 view .LVU947
	.loc 5 669 11 is_stmt 0 view .LVU948
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC31(%rip), %rsi
	call	dcgettext@PLT
.LVL298:
.LBB288:
.LBB289:
	.loc 4 107 10 view .LVU949
	leaq	.LC5(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	movl	$1, %edi
.LBE289:
.LBE288:
	.loc 5 669 11 view .LVU950
	movq	%rax, %rsi
.LVL299:
.LBB295:
.LBI288:
	.loc 4 105 1 is_stmt 1 view .LVU951
.LBB290:
	.loc 4 107 3 view .LVU952
	.loc 4 107 10 is_stmt 0 view .LVU953
	xorl	%eax, %eax
.LVL300:
	.loc 4 107 10 view .LVU954
.LBE290:
.LBE295:
	.loc 5 671 3 view .LVU955
	leaq	.LC6(%rip), %r13
.LBB296:
.LBB291:
	.loc 4 107 10 view .LVU956
	call	__printf_chk@PLT
.LVL301:
	.loc 4 107 10 view .LVU957
.LBE291:
.LBE296:
	.loc 5 671 3 is_stmt 1 view .LVU958
	cmpq	%rbx, %r12
	leaq	.LC7(%rip), %rcx
	cmovne	%rcx, %r13
.L282:
	.loc 5 671 11 is_stmt 0 view .LVU959
	xorl	%edi, %edi
	leaq	.LC32(%rip), %rsi
	movl	$5, %edx
	call	dcgettext@PLT
.LVL302:
.LBB297:
.LBB298:
	.loc 4 107 10 view .LVU960
	movq	%r13, %rcx
	movq	%r12, %rdx
	movl	$1, %edi
.LBE298:
.LBE297:
	.loc 5 671 11 view .LVU961
	movq	%rax, %rsi
.LVL303:
.LBB300:
.LBI297:
	.loc 4 105 1 is_stmt 1 view .LVU962
.LBB299:
	.loc 4 107 3 view .LVU963
	.loc 4 107 10 is_stmt 0 view .LVU964
	xorl	%eax, %eax
.LVL304:
	.loc 4 107 10 view .LVU965
	call	__printf_chk@PLT
.LVL305:
	.loc 4 107 10 view .LVU966
.LBE299:
.LBE300:
	.loc 5 673 1 view .LVU967
	jmp	.L277
.LVL306:
.L280:
	.loc 5 655 3 is_stmt 1 view .LVU968
	.loc 5 655 11 is_stmt 0 view .LVU969
	call	dcgettext@PLT
.LVL307:
.LBB301:
.LBB285:
	.loc 4 107 10 view .LVU970
	leaq	.LC27(%rip), %rcx
	movl	$1, %edi
	leaq	.LC28(%rip), %rdx
.LBE285:
.LBE301:
	.loc 5 655 11 view .LVU971
	movq	%rax, %rsi
.LVL308:
.LBB302:
	.loc 4 105 1 is_stmt 1 view .LVU972
.LBB286:
	.loc 4 107 3 view .LVU973
	.loc 4 107 10 is_stmt 0 view .LVU974
	xorl	%eax, %eax
.LVL309:
	.loc 4 107 10 view .LVU975
	call	__printf_chk@PLT
.LVL310:
	.loc 4 107 10 view .LVU976
.LBE286:
.LBE302:
	.loc 5 659 3 is_stmt 1 view .LVU977
	.loc 5 659 29 is_stmt 0 view .LVU978
	movl	$5, %edi
	xorl	%esi, %esi
	call	setlocale@PLT
.LVL311:
	movq	%rax, %rdi
.LVL312:
	.loc 5 660 3 is_stmt 1 view .LVU979
	.loc 5 660 6 is_stmt 0 view .LVU980
	testq	%rax, %rax
	je	.L283
	.loc 5 660 22 view .LVU981
	movl	$3, %edx
	leaq	.LC29(%rip), %rsi
	call	strncmp@PLT
.LVL313:
	.loc 5 660 19 view .LVU982
	testl	%eax, %eax
	jne	.L302
.L283:
	.loc 5 669 3 is_stmt 1 view .LVU983
	.loc 5 669 11 is_stmt 0 view .LVU984
	movl	$5, %edx
	leaq	.LC31(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL314:
.LBB303:
.LBB292:
	.loc 4 107 10 view .LVU985
	leaq	.LC5(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	movl	$1, %edi
.LBE292:
.LBE303:
	.loc 5 669 11 view .LVU986
	movq	%rax, %rsi
.LVL315:
.LBB304:
	.loc 4 105 1 is_stmt 1 view .LVU987
.LBB293:
	.loc 4 107 3 view .LVU988
	.loc 4 107 10 is_stmt 0 view .LVU989
	xorl	%eax, %eax
.LVL316:
	.loc 4 107 10 view .LVU990
.LBE293:
.LBE304:
	.loc 5 646 15 view .LVU991
	leaq	.LC5(%rip), %r12
.LBB305:
.LBB294:
	.loc 4 107 10 view .LVU992
	call	__printf_chk@PLT
.LVL317:
	.loc 4 107 10 view .LVU993
.LBE294:
.LBE305:
	.loc 5 671 3 is_stmt 1 view .LVU994
	leaq	.LC6(%rip), %r13
	jmp	.L282
.L302:
	.loc 5 646 15 is_stmt 0 view .LVU995
	leaq	.LC5(%rip), %r12
.LVL318:
.L284:
	.loc 5 666 7 is_stmt 1 view .LVU996
	movq	stdout(%rip), %r13
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC30(%rip), %rsi
	call	dcgettext@PLT
.LVL319:
	movq	%rax, %rdi
	movq	%r13, %rsi
	call	fputs_unlocked@PLT
.LVL320:
	jmp	.L281
.LBE306:
.LBE315:
	.cfi_endproc
.LFE135:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC33:
	.string	"/usr/local/share/locale"
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"invalid option -- %c; -WIDTH is recognized only when it is the first\noption; use -w N instead"
	.section	.rodata.str1.1
.LC35:
	.string	"Ross Paterson"
.LC36:
	.string	"0123456789cstuw:p:g:"
.LC37:
	.string	"invalid width"
.LC38:
	.string	"r"
.LC39:
	.string	"%s"
.LC40:
	.string	"cannot open %s for reading"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL321:
.LFB136:
	.loc 1 318 1 view -0
	.cfi_startproc
	.loc 1 318 1 is_stmt 0 view .LVU998
	endbr64
	.loc 1 319 3 is_stmt 1 view .LVU999
	.loc 1 320 3 view .LVU1000
.LVL322:
	.loc 1 321 3 view .LVU1001
	.loc 1 322 3 view .LVU1002
	.loc 1 324 33 view .LVU1003
	.loc 1 325 3 view .LVU1004
	.loc 1 318 1 is_stmt 0 view .LVU1005
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	.loc 1 321 15 view .LVU1006
	xorl	%r13d, %r13d
	.loc 1 318 1 view .LVU1007
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 325 3 view .LVU1008
	movq	(%rsi), %rdi
.LVL323:
	.loc 1 325 3 view .LVU1009
	call	set_program_name@PLT
.LVL324:
	.loc 1 326 3 is_stmt 1 view .LVU1010
	leaq	.LC7(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
.LVL325:
	.loc 1 327 3 view .LVU1011
	leaq	.LC33(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	call	bindtextdomain@PLT
.LVL326:
	.loc 1 328 3 view .LVU1012
	leaq	.LC19(%rip), %rdi
	call	textdomain@PLT
.LVL327:
	.loc 1 330 3 view .LVU1013
	movq	close_stdout@GOTPCREL(%rip), %rdi
	call	atexit@PLT
.LVL328:
	.loc 1 332 3 view .LVU1014
	.loc 1 334 10 is_stmt 0 view .LVU1015
	leaq	.LC7(%rip), %rax
	.loc 1 332 36 view .LVU1016
	movb	$0, uniform(%rip)
	.loc 1 332 26 view .LVU1017
	movb	$0, split(%rip)
	.loc 1 332 18 view .LVU1018
	movb	$0, tagged(%rip)
	.loc 1 332 9 view .LVU1019
	movb	$0, crown(%rip)
	.loc 1 333 3 is_stmt 1 view .LVU1020
	.loc 1 333 13 is_stmt 0 view .LVU1021
	movl	$75, max_width(%rip)
	.loc 1 334 3 is_stmt 1 view .LVU1022
	.loc 1 334 10 is_stmt 0 view .LVU1023
	movq	%rax, prefix(%rip)
	.loc 1 335 3 is_stmt 1 view .LVU1024
	.loc 1 335 58 is_stmt 0 view .LVU1025
	movl	$0, prefix_full_length(%rip)
	.loc 1 335 37 view .LVU1026
	movl	$0, prefix_lead_space(%rip)
	.loc 1 335 17 view .LVU1027
	movl	$0, prefix_length(%rip)
	.loc 1 337 3 is_stmt 1 view .LVU1028
	.loc 1 337 6 is_stmt 0 view .LVU1029
	cmpl	$1, %r12d
	jle	.L304
	.loc 1 337 23 discriminator 1 view .LVU1030
	movq	8(%rbp), %rax
	.loc 1 337 16 discriminator 1 view .LVU1031
	cmpb	$45, (%rax)
	je	.L350
.LVL329:
.L304:
	.loc 1 321 15 view .LVU1032
	xorl	%r14d, %r14d
	leaq	.L310(%rip), %rbx
.LVL330:
	.p2align 4,,10
	.p2align 3
.L324:
	.loc 1 390 7 is_stmt 1 view .LVU1033
	.loc 1 390 55 view .LVU1034
	.loc 1 348 9 view .LVU1035
	.loc 1 348 21 is_stmt 0 view .LVU1036
	xorl	%r8d, %r8d
	leaq	long_options(%rip), %rcx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	leaq	.LC36(%rip), %rdx
	call	getopt_long@PLT
.LVL331:
	movl	%eax, %r15d
.LVL332:
	.loc 1 348 9 view .LVU1037
	cmpl	$-1, %eax
	je	.L351
	.loc 1 351 5 is_stmt 1 view .LVU1038
	cmpl	$119, %r15d
	jg	.L305
	cmpl	$98, %r15d
	jle	.L352
	leal	-99(%r15), %eax
.LVL333:
	.loc 1 351 5 is_stmt 0 view .LVU1039
	cmpl	$20, %eax
	ja	.L305
	movslq	(%rbx,%rax,4), %rax
	addq	%rbx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L310:
	.long	.L316-.L310
	.long	.L305-.L310
	.long	.L305-.L310
	.long	.L305-.L310
	.long	.L315-.L310
	.long	.L305-.L310
	.long	.L305-.L310
	.long	.L305-.L310
	.long	.L305-.L310
	.long	.L305-.L310
	.long	.L305-.L310
	.long	.L305-.L310
	.long	.L305-.L310
	.long	.L314-.L310
	.long	.L305-.L310
	.long	.L305-.L310
	.long	.L313-.L310
	.long	.L312-.L310
	.long	.L311-.L310
	.long	.L305-.L310
	.long	.L309-.L310
	.section	.text.startup
.L309:
	.loc 1 377 9 is_stmt 1 view .LVU1040
	.loc 1 377 26 is_stmt 0 view .LVU1041
	movq	optarg(%rip), %r13
.LVL334:
	.loc 1 378 9 is_stmt 1 view .LVU1042
	jmp	.L324
.L311:
	.loc 1 373 9 view .LVU1043
	.loc 1 373 17 is_stmt 0 view .LVU1044
	movb	$1, uniform(%rip)
	.loc 1 374 9 is_stmt 1 view .LVU1045
	jmp	.L324
.L312:
	.loc 1 369 9 view .LVU1046
	.loc 1 369 16 is_stmt 0 view .LVU1047
	movb	$1, tagged(%rip)
	.loc 1 370 9 is_stmt 1 view .LVU1048
	jmp	.L324
.L313:
	.loc 1 365 9 view .LVU1049
	.loc 1 365 15 is_stmt 0 view .LVU1050
	movb	$1, split(%rip)
	.loc 1 366 9 is_stmt 1 view .LVU1051
	jmp	.L324
.L314:
	.loc 1 385 9 view .LVU1052
	movq	optarg(%rip), %r15
.LVL335:
.LBB320:
.LBI320:
	.loc 1 454 1 view .LVU1053
.LBB321:
	.loc 1 456 3 view .LVU1054
	.loc 1 458 3 view .LVU1055
	.loc 1 458 21 is_stmt 0 view .LVU1056
	movl	$0, prefix_lead_space(%rip)
	.loc 1 459 3 is_stmt 1 view .LVU1057
	.loc 1 459 9 view .LVU1058
	cmpb	$32, (%r15)
	jne	.L319
	movl	$1, %eax
	subl	%r15d, %eax
	.p2align 4,,10
	.p2align 3
.L320:
	.loc 1 461 7 view .LVU1059
	leal	(%rax,%r15), %edx
	.loc 1 462 7 view .LVU1060
	.loc 1 462 8 is_stmt 0 view .LVU1061
	addq	$1, %r15
.LVL336:
	.loc 1 459 9 is_stmt 1 view .LVU1062
	cmpb	$32, (%r15)
	je	.L320
	movl	%edx, prefix_lead_space(%rip)
.L319:
	.loc 1 464 3 view .LVU1063
	.loc 1 465 24 is_stmt 0 view .LVU1064
	movq	%r15, %rdi
	.loc 1 464 10 view .LVU1065
	movq	%r15, prefix(%rip)
	.loc 1 465 3 is_stmt 1 view .LVU1066
	.loc 1 465 24 is_stmt 0 view .LVU1067
	call	strlen@PLT
.LVL337:
	.loc 1 465 22 view .LVU1068
	movl	%eax, prefix_full_length(%rip)
	.loc 1 466 3 is_stmt 1 view .LVU1069
	.loc 1 466 9 is_stmt 0 view .LVU1070
	cltq
	.loc 1 466 5 view .LVU1071
	addq	%r15, %rax
.LVL338:
	.loc 1 467 3 is_stmt 1 view .LVU1072
	.loc 1 467 9 view .LVU1073
	cmpq	%rax, %r15
	jb	.L321
	.loc 1 467 9 is_stmt 0 view .LVU1074
	jmp	.L322
	.p2align 4,,10
	.p2align 3
.L323:
	.loc 1 468 5 is_stmt 1 view .LVU1075
	.loc 1 468 6 is_stmt 0 view .LVU1076
	subq	$1, %rax
.LVL339:
	.loc 1 467 9 is_stmt 1 view .LVU1077
	cmpq	%rax, %r15
	je	.L322
.L321:
	.loc 1 467 16 is_stmt 0 view .LVU1078
	cmpb	$32, -1(%rax)
	je	.L323
.L322:
	.loc 1 469 3 is_stmt 1 view .LVU1079
	.loc 1 469 6 is_stmt 0 view .LVU1080
	movb	$0, (%rax)
	.loc 1 470 3 is_stmt 1 view .LVU1081
	.loc 1 470 21 is_stmt 0 view .LVU1082
	subq	%r15, %rax
.LVL340:
	.loc 1 470 17 view .LVU1083
	movl	%eax, prefix_length(%rip)
	.loc 1 471 1 view .LVU1084
	jmp	.L324
.LVL341:
.L315:
	.loc 1 471 1 view .LVU1085
.LBE321:
.LBE320:
	.loc 1 381 9 is_stmt 1 view .LVU1086
	.loc 1 381 27 is_stmt 0 view .LVU1087
	movq	optarg(%rip), %r14
.LVL342:
	.loc 1 382 9 is_stmt 1 view .LVU1088
	jmp	.L324
.L316:
	.loc 1 361 9 view .LVU1089
	.loc 1 361 15 is_stmt 0 view .LVU1090
	movb	$1, crown(%rip)
	.loc 1 362 9 is_stmt 1 view .LVU1091
	jmp	.L324
.LVL343:
	.p2align 4,,10
	.p2align 3
.L352:
	.loc 1 351 5 is_stmt 0 view .LVU1092
	cmpl	$-131, %r15d
	jne	.L353
	.loc 1 388 7 is_stmt 1 view .LVU1093
	.loc 1 388 28 view .LVU1094
	.loc 1 390 7 view .LVU1095
	movq	stdout(%rip), %rdi
	movq	Version(%rip), %rcx
	xorl	%eax, %eax
.LVL344:
	.loc 1 390 7 is_stmt 0 view .LVU1096
	xorl	%r9d, %r9d
	leaq	.LC35(%rip), %r8
	leaq	.LC28(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	call	version_etc@PLT
.LVL345:
	.loc 1 390 7 is_stmt 1 view .LVU1097
	xorl	%edi, %edi
	call	exit@PLT
.LVL346:
.L353:
	.loc 1 351 5 is_stmt 0 view .LVU1098
	cmpl	$-130, %r15d
	jne	.L305
	.loc 1 388 7 is_stmt 1 view .LVU1099
	xorl	%edi, %edi
	call	usage
.LVL347:
.L350:
	.loc 1 337 40 is_stmt 0 discriminator 2 view .LVU1100
	movsbl	1(%rax), %edx
	subl	$48, %edx
	.loc 1 337 37 discriminator 2 view .LVU1101
	cmpl	$9, %edx
	ja	.L304
	.loc 1 340 7 is_stmt 1 view .LVU1102
	.loc 1 340 24 is_stmt 0 view .LVU1103
	leaq	1(%rax), %r13
.LVL348:
	.loc 1 343 7 is_stmt 1 view .LVU1104
	.loc 1 343 15 is_stmt 0 view .LVU1105
	movq	0(%rbp), %rax
	.loc 1 345 11 view .LVU1106
	subl	$1, %r12d
.LVL349:
	.loc 1 344 11 view .LVU1107
	addq	$8, %rbp
.LVL350:
	.loc 1 343 15 view .LVU1108
	movq	%rax, 0(%rbp)
	.loc 1 344 7 is_stmt 1 view .LVU1109
.LVL351:
	.loc 1 345 7 view .LVU1110
	.loc 1 345 7 is_stmt 0 view .LVU1111
	jmp	.L304
.LVL352:
.L351:
	.loc 1 394 3 is_stmt 1 view .LVU1112
	.loc 1 394 6 is_stmt 0 view .LVU1113
	testq	%r13, %r13
	je	.L326
	.loc 1 398 7 is_stmt 1 view .LVU1114
	.loc 1 399 31 is_stmt 0 view .LVU1115
	movl	$5, %edx
	leaq	.LC37(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL353:
	.loc 1 398 19 view .LVU1116
	xorl	%r9d, %r9d
	movl	$2500, %edx
	xorl	%esi, %esi
	.loc 1 399 31 view .LVU1117
	movq	%rax, %r8
	.loc 1 398 19 view .LVU1118
	leaq	.LC7(%rip), %rcx
	movq	%r13, %rdi
	call	xdectoumax@PLT
.LVL354:
	.loc 1 398 17 view .LVU1119
	movl	%eax, max_width(%rip)
	.loc 1 402 3 is_stmt 1 view .LVU1120
	.loc 1 398 19 is_stmt 0 view .LVU1121
	movq	%rax, %rbx
	.loc 1 402 6 view .LVU1122
	testq	%r14, %r14
	je	.L337
	.loc 1 405 7 is_stmt 1 view .LVU1123
	.loc 1 406 32 is_stmt 0 view .LVU1124
	movl	$5, %edx
	leaq	.LC37(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL355:
	.loc 1 405 20 view .LVU1125
	movslq	%ebx, %rdx
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	.loc 1 406 32 view .LVU1126
	movq	%rax, %r8
	.loc 1 405 20 view .LVU1127
	leaq	.LC7(%rip), %rcx
	movq	%r14, %rdi
	call	xdectoumax@PLT
.LVL356:
	.loc 1 405 18 view .LVU1128
	movl	%eax, goal_width(%rip)
	.loc 1 407 7 is_stmt 1 view .LVU1129
.L335:
	.loc 1 415 3 view .LVU1130
	.loc 1 415 14 is_stmt 0 view .LVU1131
	movl	optind(%rip), %eax
	.loc 1 415 6 view .LVU1132
	cmpl	%r12d, %eax
	je	.L328
	.loc 1 419 14 is_stmt 1 view .LVU1133
	.loc 1 320 8 is_stmt 0 view .LVU1134
	movl	$1, %ebx
.LBB322:
.LBB323:
	.loc 1 427 27 view .LVU1135
	leaq	.LC38(%rip), %r13
.LVL357:
	.loc 1 427 27 view .LVU1136
.LBE323:
.LBE322:
	.loc 1 419 7 view .LVU1137
	jl	.L329
	jmp	.L330
.LVL358:
.L354:
.LBB326:
	.loc 1 422 14 view .LVU1138
	cmpb	$0, 1(%r14)
	jne	.L332
	.loc 1 423 13 is_stmt 1 view .LVU1139
	movq	stdin(%rip), %rdi
	call	fmt
.LVL359:
.L333:
	.loc 1 423 13 is_stmt 0 view .LVU1140
.LBE326:
	.loc 1 419 29 is_stmt 1 view .LVU1141
	.loc 1 419 35 is_stmt 0 view .LVU1142
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
	.loc 1 419 14 is_stmt 1 view .LVU1143
	.loc 1 419 7 is_stmt 0 view .LVU1144
	cmpl	%r12d, %eax
	jge	.L330
.LVL360:
.L329:
.LBB327:
	.loc 1 421 11 is_stmt 1 view .LVU1145
	.loc 1 421 28 is_stmt 0 view .LVU1146
	cltq
	.loc 1 421 17 view .LVU1147
	movq	0(%rbp,%rax,8), %r14
.LVL361:
	.loc 1 422 11 is_stmt 1 view .LVU1148
	.loc 1 422 15 is_stmt 0 view .LVU1149
	cmpb	$45, (%r14)
	je	.L354
.L332:
.LBB324:
	.loc 1 426 15 is_stmt 1 view .LVU1150
	.loc 1 427 15 view .LVU1151
	.loc 1 427 27 is_stmt 0 view .LVU1152
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	fopen@PLT
.LVL362:
	movq	%rax, %r15
.LVL363:
	.loc 1 428 15 is_stmt 1 view .LVU1153
	.loc 1 428 18 is_stmt 0 view .LVU1154
	testq	%rax, %rax
	je	.L334
	.loc 1 430 19 is_stmt 1 view .LVU1155
	movq	%rax, %rdi
	call	fmt
.LVL364:
	.loc 1 431 19 view .LVU1156
	.loc 1 431 23 is_stmt 0 view .LVU1157
	movq	%r15, %rdi
	call	rpl_fclose@PLT
.LVL365:
	.loc 1 431 22 view .LVU1158
	addl	$1, %eax
	jne	.L333
	.loc 1 433 23 is_stmt 1 view .LVU1159
	movq	%r14, %rdx
	movl	$3, %esi
	xorl	%edi, %edi
	call	quotearg_n_style_colon@PLT
.LVL366:
	movq	%rax, %r14
.LVL367:
	.loc 1 433 33 is_stmt 0 view .LVU1160
	call	__errno_location@PLT
.LVL368:
	.loc 1 433 23 view .LVU1161
	movq	%r14, %rcx
	leaq	.LC39(%rip), %rdx
.LVL369:
.L349:
	.loc 1 439 19 view .LVU1162
	movl	(%rax), %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	.loc 1 441 22 view .LVU1163
	xorl	%ebx, %ebx
.LVL370:
	.loc 1 439 19 view .LVU1164
	call	error@PLT
.LVL371:
	.loc 1 441 19 is_stmt 1 view .LVU1165
	.loc 1 441 19 is_stmt 0 view .LVU1166
	jmp	.L333
.LVL372:
.L328:
	.loc 1 441 19 view .LVU1167
.LBE324:
.LBE327:
	.loc 1 416 5 is_stmt 1 view .LVU1168
	movq	stdin(%rip), %rdi
	.loc 1 320 8 is_stmt 0 view .LVU1169
	movl	$1, %ebx
	.loc 1 416 5 view .LVU1170
	call	fmt
.LVL373:
.L330:
	.loc 1 447 3 is_stmt 1 view .LVU1171
	.loc 1 447 28 is_stmt 0 view .LVU1172
	xorl	$1, %ebx
.LVL374:
	.loc 1 448 1 view .LVU1173
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	.loc 1 447 28 view .LVU1174
	movzbl	%bl, %eax
	.loc 1 448 1 view .LVU1175
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL375:
	.loc 1 448 1 view .LVU1176
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL376:
	.loc 1 448 1 view .LVU1177
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL377:
.L334:
	.cfi_restore_state
.LBB328:
.LBB325:
	.loc 1 439 19 is_stmt 1 view .LVU1178
	movq	%r14, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL378:
	.loc 1 439 36 is_stmt 0 view .LVU1179
	movl	$5, %edx
	leaq	.LC40(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 439 19 view .LVU1180
	movq	%rax, %r15
.LVL379:
	.loc 1 439 36 view .LVU1181
	call	dcgettext@PLT
.LVL380:
	movq	%rax, %r14
.LVL381:
	.loc 1 439 29 view .LVU1182
	call	__errno_location@PLT
.LVL382:
	.loc 1 439 19 view .LVU1183
	movq	%r15, %rcx
	movq	%r14, %rdx
	jmp	.L349
.LVL383:
.L326:
	.loc 1 439 19 view .LVU1184
.LBE325:
.LBE328:
	.loc 1 402 3 is_stmt 1 view .LVU1185
	.loc 1 402 6 is_stmt 0 view .LVU1186
	testq	%r14, %r14
	jne	.L355
.LVL384:
.L337:
	.loc 1 412 7 is_stmt 1 view .LVU1187
	.loc 1 412 30 is_stmt 0 view .LVU1188
	imull	$187, max_width(%rip), %eax
	.loc 1 412 57 view .LVU1189
	movl	$200, %ecx
	cltd
	idivl	%ecx
	.loc 1 412 18 view .LVU1190
	movl	%eax, goal_width(%rip)
	jmp	.L335
.L305:
	.loc 1 354 9 is_stmt 1 view .LVU1191
	.loc 1 354 13 is_stmt 0 view .LVU1192
	leal	-48(%r15), %eax
	.loc 1 354 12 view .LVU1193
	cmpl	$9, %eax
	jbe	.L356
.L317:
	.loc 1 358 9 is_stmt 1 view .LVU1194
	movl	$1, %edi
	call	usage
.LVL385:
.L355:
	.loc 1 405 7 view .LVU1195
	.loc 1 406 32 is_stmt 0 view .LVU1196
	movl	$5, %edx
	leaq	.LC37(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL386:
	.loc 1 405 20 view .LVU1197
	xorl	%r9d, %r9d
	movl	$75, %edx
	xorl	%esi, %esi
	.loc 1 406 32 view .LVU1198
	movq	%rax, %r8
	.loc 1 405 20 view .LVU1199
	leaq	.LC7(%rip), %rcx
	movq	%r14, %rdi
	call	xdectoumax@PLT
.LVL387:
	.loc 1 405 18 view .LVU1200
	movl	%eax, goal_width(%rip)
	.loc 1 407 7 is_stmt 1 view .LVU1201
	.loc 1 408 9 view .LVU1202
	.loc 1 408 32 is_stmt 0 view .LVU1203
	addl	$10, %eax
	movl	%eax, max_width(%rip)
	jmp	.L335
.L356:
	.loc 1 355 11 is_stmt 1 view .LVU1204
	.loc 1 355 24 is_stmt 0 view .LVU1205
	xorl	%edi, %edi
	movl	$5, %edx
	leaq	.LC34(%rip), %rsi
	call	dcgettext@PLT
.LVL388:
	.loc 1 355 11 view .LVU1206
	movl	%r15d, %ecx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 355 24 view .LVU1207
	movq	%rax, %rdx
	.loc 1 355 11 view .LVU1208
	xorl	%eax, %eax
	call	error@PLT
.LVL389:
	jmp	.L317
	.cfi_endproc
.LFE136:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.7252, @object
	.size	__PRETTY_FUNCTION__.7252, 14
__PRETTY_FUNCTION__.7252:
	.string	"get_paragraph"
	.section	.rodata.str1.1
.LC41:
	.string	"crown-margin"
.LC42:
	.string	"prefix"
.LC43:
	.string	"split-only"
.LC44:
	.string	"tagged-paragraph"
.LC45:
	.string	"uniform-spacing"
.LC46:
	.string	"width"
.LC47:
	.string	"goal"
.LC48:
	.string	"help"
.LC49:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 320
long_options:
	.quad	.LC41
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC42
	.long	1
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC43
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC44
	.long	0
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC45
	.long	0
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC46
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC47
	.long	1
	.zero	4
	.quad	0
	.long	103
	.zero	4
	.quad	.LC48
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC49
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
	.local	last_line_length
	.comm	last_line_length,4,4
	.local	next_prefix_indent
	.comm	next_prefix_indent,4,4
	.local	next_char
	.comm	next_char,4,4
	.local	other_indent
	.comm	other_indent,4,4
	.local	first_indent
	.comm	first_indent,4,4
	.local	prefix_indent
	.comm	prefix_indent,4,4
	.local	tabs
	.comm	tabs,1,1
	.local	word_limit
	.comm	word_limit,8,8
	.local	unused_word_type
	.comm	unused_word_type,40000,32
	.local	wptr
	.comm	wptr,8,8
	.local	parabuf
	.comm	parabuf,5000,32
	.local	out_column
	.comm	out_column,4,4
	.local	in_column
	.comm	in_column,4,4
	.local	goal_width
	.comm	goal_width,4,4
	.local	prefix_length
	.comm	prefix_length,4,4
	.local	prefix_lead_space
	.comm	prefix_lead_space,4,4
	.local	prefix_full_length
	.comm	prefix_full_length,4,4
	.local	max_width
	.comm	max_width,4,4
	.local	prefix
	.comm	prefix,8,8
	.local	uniform
	.comm	uniform,1,1
	.local	split
	.comm	split,1,1
	.local	tagged
	.comm	tagged,1,1
	.local	crown
	.comm	crown,1,1
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
	.file 29 "/usr/include/string.h"
	.file 30 "/usr/include/assert.h"
	.file 31 "./lib/stdio.h"
	.file 32 "/usr/include/libintl.h"
	.file 33 "/usr/include/locale.h"
	.file 34 "/usr/include/stdlib.h"
	.file 35 "./lib/xdectoint.h"
	.file 36 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2754
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF254
	.byte	0xc
	.long	.LASF255
	.long	.LASF256
	.long	.Ldebug_ranges0+0x890
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
	.long	.LASF257
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
	.byte	0x5
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
	.long	.LASF258
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
	.uleb128 0x2
	.long	.LASF121
	.byte	0x1
	.byte	0x40
	.byte	0x12
	.long	0x6d
	.uleb128 0x2
	.long	.LASF122
	.byte	0x1
	.byte	0x81
	.byte	0x15
	.long	0x673
	.uleb128 0x9
	.long	.LASF123
	.byte	0x28
	.byte	0x1
	.byte	0x83
	.byte	0x8
	.long	0x70f
	.uleb128 0xa
	.long	.LASF124
	.byte	0x1
	.byte	0x88
	.byte	0x11
	.long	0x292
	.byte	0
	.uleb128 0xa
	.long	.LASF125
	.byte	0x1
	.byte	0x89
	.byte	0x9
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF126
	.byte	0x1
	.byte	0x8a
	.byte	0x9
	.long	0x61
	.byte	0xc
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x1
	.byte	0x8b
	.byte	0x12
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x1
	.byte	0x8c
	.byte	0x12
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x10
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x1
	.byte	0x8d
	.byte	0x12
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x10
	.uleb128 0x1d
	.long	.LASF130
	.byte	0x1
	.byte	0x8e
	.byte	0x12
	.long	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF131
	.byte	0x1
	.byte	0x92
	.byte	0x9
	.long	0x61
	.byte	0x14
	.uleb128 0xa
	.long	.LASF132
	.byte	0x1
	.byte	0x93
	.byte	0xa
	.long	0x65b
	.byte	0x18
	.uleb128 0xa
	.long	.LASF133
	.byte	0x1
	.byte	0x94
	.byte	0xb
	.long	0x70f
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x667
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x1
	.byte	0xae
	.byte	0xd
	.long	0x72b
	.uleb128 0x9
	.byte	0x3
	.quad	crown
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF134
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x1
	.byte	0xb1
	.byte	0xd
	.long	0x72b
	.uleb128 0x9
	.byte	0x3
	.quad	tagged
	.uleb128 0x1e
	.long	.LASF137
	.byte	0x1
	.byte	0xb4
	.byte	0xd
	.long	0x72b
	.uleb128 0x9
	.byte	0x3
	.quad	split
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x1
	.byte	0xb7
	.byte	0xd
	.long	0x72b
	.uleb128 0x9
	.byte	0x3
	.quad	uniform
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x1
	.byte	0xba
	.byte	0x14
	.long	0x292
	.uleb128 0x9
	.byte	0x3
	.quad	prefix
	.uleb128 0x1e
	.long	.LASF140
	.byte	0x1
	.byte	0xbe
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	max_width
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x1
	.byte	0xc3
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	prefix_full_length
	.uleb128 0x1e
	.long	.LASF142
	.byte	0x1
	.byte	0xc6
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	prefix_lead_space
	.uleb128 0x1e
	.long	.LASF143
	.byte	0x1
	.byte	0xc9
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	prefix_length
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x1
	.byte	0xcc
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	goal_width
	.uleb128 0x1e
	.long	.LASF145
	.byte	0x1
	.byte	0xd1
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	in_column
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x1
	.byte	0xd4
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	out_column
	.uleb128 0xd
	.long	0x9e
	.long	0x835
	.uleb128 0x1f
	.long	0x35
	.value	0x1387
	.byte	0
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x1
	.byte	0xd8
	.byte	0xd
	.long	0x824
	.uleb128 0x9
	.byte	0x3
	.quad	parabuf
	.uleb128 0x1e
	.long	.LASF148
	.byte	0x1
	.byte	0xdb
	.byte	0xe
	.long	0x98
	.uleb128 0x9
	.byte	0x3
	.quad	wptr
	.uleb128 0xd
	.long	0x667
	.long	0x872
	.uleb128 0x1f
	.long	0x35
	.value	0x3e7
	.byte	0
	.uleb128 0x1e
	.long	.LASF149
	.byte	0x1
	.byte	0xdf
	.byte	0xd
	.long	0x861
	.uleb128 0x9
	.byte	0x3
	.quad	unused_word_type
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x1
	.byte	0xe4
	.byte	0xe
	.long	0x70f
	.uleb128 0x9
	.byte	0x3
	.quad	word_limit
	.uleb128 0x1e
	.long	.LASF151
	.byte	0x1
	.byte	0xe8
	.byte	0xd
	.long	0x72b
	.uleb128 0x9
	.byte	0x3
	.quad	tabs
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x1
	.byte	0xeb
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	prefix_indent
	.uleb128 0x1e
	.long	.LASF153
	.byte	0x1
	.byte	0xee
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	first_indent
	.uleb128 0x1e
	.long	.LASF154
	.byte	0x1
	.byte	0xf1
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	other_indent
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x1
	.byte	0xfb
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	next_char
	.uleb128 0x1e
	.long	.LASF156
	.byte	0x1
	.byte	0xff
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	next_prefix_indent
	.uleb128 0x20
	.long	.LASF157
	.byte	0x1
	.value	0x104
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	last_line_length
	.uleb128 0xd
	.long	0x3b1
	.long	0x949
	.uleb128 0xe
	.long	0x35
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.long	0x939
	.uleb128 0x20
	.long	.LASF158
	.byte	0x1
	.value	0x12e
	.byte	0x1c
	.long	0x949
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x21
	.long	.LASF161
	.byte	0x1
	.value	0x3f1
	.byte	0x1
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.long	0xa39
	.uleb128 0x22
	.long	.LASF126
	.byte	0x1
	.value	0x3f1
	.byte	0x10
	.long	0x61
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x23
	.long	.LASF159
	.byte	0x1
	.value	0x3f3
	.byte	0x7
	.long	0x61
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x23
	.long	.LASF160
	.byte	0x1
	.value	0x3f3
	.byte	0x15
	.long	0x61
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x24
	.long	0x24c6
	.quad	.LBI104
	.value	.LVU241
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.value	0x3fc
	.byte	0xd
	.long	0x9ff
	.uleb128 0x25
	.long	0x24d7
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x26
	.quad	.LVL75
	.long	0x25f2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0x24c6
	.quad	.LBI107
	.value	.LVU253
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.value	0x402
	.byte	0x7
	.uleb128 0x25
	.long	0x24d7
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x26
	.quad	.LVL73
	.long	0x25f2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF184
	.byte	0x1
	.value	0x3e3
	.byte	0x1
	.byte	0x1
	.long	0xa69
	.uleb128 0x2a
	.string	"w"
	.byte	0x1
	.value	0x3e3
	.byte	0x11
	.long	0x70f
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x3e5
	.byte	0xf
	.long	0x292
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x3e6
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0x21
	.long	.LASF162
	.byte	0x1
	.value	0x3cb
	.byte	0x1
	.quad	.LFB152
	.quad	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.long	0xb7d
	.uleb128 0x2c
	.string	"w"
	.byte	0x1
	.value	0x3cb
	.byte	0x11
	.long	0x70f
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x22
	.long	.LASF163
	.byte	0x1
	.value	0x3cb
	.byte	0x18
	.long	0x61
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x23
	.long	.LASF164
	.byte	0x1
	.value	0x3cd
	.byte	0x9
	.long	0x70f
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x24
	.long	0x24c6
	.quad	.LBI122
	.value	.LVU355
	.long	.Ldebug_ranges0+0x220
	.byte	0x1
	.value	0x3dd
	.byte	0x3
	.long	0xb01
	.uleb128 0x25
	.long	0x24d7
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x2d
	.quad	.LVL107
	.long	0x25f2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL93
	.long	0x965
	.uleb128 0x2e
	.quad	.LVL94
	.long	0x25ff
	.uleb128 0x2f
	.quad	.LVL96
	.long	0x965
	.long	0xb33
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL100
	.long	0x2580
	.long	0xb53
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 -32
	.uleb128 0x30
	.long	0xa47
	.uleb128 0x2
	.byte	0x73
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.quad	.LVL101
	.long	0x965
	.uleb128 0x26
	.quad	.LVL103
	.long	0x2580
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 8
	.uleb128 0x30
	.long	0xa47
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF165
	.byte	0x1
	.value	0x3be
	.byte	0x1
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf8
	.uleb128 0x22
	.long	.LASF166
	.byte	0x1
	.value	0x3be
	.byte	0x16
	.long	0x70f
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x31
	.string	"w"
	.byte	0x1
	.value	0x3c0
	.byte	0x9
	.long	0x70f
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x2f
	.quad	.LVL110
	.long	0xa69
	.long	0xbe3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	unused_word_type
	.byte	0
	.uleb128 0x26
	.quad	.LVL112
	.long	0xa69
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF169
	.byte	0x1
	.value	0x3a9
	.byte	0x1
	.long	0x65b
	.byte	0x1
	.long	0xc3d
	.uleb128 0x33
	.long	.LASF167
	.byte	0x1
	.value	0x3a9
	.byte	0x12
	.long	0x70f
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0x3a9
	.byte	0x1c
	.long	0x61
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x3ab
	.byte	0x7
	.long	0x61
	.uleb128 0x34
	.long	.LASF168
	.byte	0x1
	.value	0x3ac
	.byte	0x8
	.long	0x65b
	.byte	0
	.uleb128 0x32
	.long	.LASF170
	.byte	0x1
	.value	0x388
	.byte	0x1
	.long	0x65b
	.byte	0x1
	.long	0xc6a
	.uleb128 0x33
	.long	.LASF171
	.byte	0x1
	.value	0x388
	.byte	0x12
	.long	0x70f
	.uleb128 0x34
	.long	.LASF168
	.byte	0x1
	.value	0x38a
	.byte	0x8
	.long	0x65b
	.byte	0
	.uleb128 0x21
	.long	.LASF172
	.byte	0x1
	.value	0x350
	.byte	0x1
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.long	0xd94
	.uleb128 0x23
	.long	.LASF173
	.byte	0x1
	.value	0x352
	.byte	0x9
	.long	0x70f
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x31
	.string	"w"
	.byte	0x1
	.value	0x352
	.byte	0x11
	.long	0x70f
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x353
	.byte	0x7
	.long	0x61
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x23
	.long	.LASF174
	.byte	0x1
	.value	0x354
	.byte	0x8
	.long	0x65b
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x23
	.long	.LASF175
	.byte	0x1
	.value	0x354
	.byte	0xf
	.long	0x65b
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x23
	.long	.LASF176
	.byte	0x1
	.value	0x355
	.byte	0x7
	.long	0x61
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x24
	.long	0xbf8
	.quad	.LBI75
	.value	.LVU57
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x36a
	.byte	0x13
	.long	0xd5b
	.uleb128 0x25
	.long	0xc17
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x25
	.long	0xc0a
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x35
	.long	.Ldebug_ranges0+0
	.uleb128 0x36
	.long	0xc24
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x36
	.long	0xc2f
	.long	.LLST9
	.long	.LVUS9
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0xc3d
	.quad	.LBI81
	.value	.LVU88
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.value	0x37e
	.byte	0x21
	.uleb128 0x25
	.long	0xc4f
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x36
	.long	0xc5c
	.long	.LLST11
	.long	.LVUS11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF177
	.byte	0x1
	.value	0x310
	.byte	0x1
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.long	0xf34
	.uleb128 0x23
	.long	.LASF178
	.byte	0x1
	.value	0x312
	.byte	0x9
	.long	0x70f
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x31
	.string	"w"
	.byte	0x1
	.value	0x313
	.byte	0x9
	.long	0x70f
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x23
	.long	.LASF179
	.byte	0x1
	.value	0x314
	.byte	0x7
	.long	0x61
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x23
	.long	.LASF180
	.byte	0x1
	.value	0x315
	.byte	0x8
	.long	0x65b
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x37
	.long	0xe32
	.uleb128 0x34
	.long	.LASF181
	.byte	0x1
	.value	0x31b
	.byte	0x7
	.long	0x292
	.uleb128 0x34
	.long	.LASF182
	.byte	0x1
	.value	0x31b
	.byte	0x7
	.long	0x2ae
	.uleb128 0x34
	.long	.LASF183
	.byte	0x1
	.value	0x31b
	.byte	0x7
	.long	0x29
	.byte	0
	.uleb128 0x24
	.long	0x2446
	.quad	.LBI130
	.value	.LVU418
	.long	.Ldebug_ranges0+0x270
	.byte	0x1
	.value	0x33b
	.byte	0x3
	.long	0xe97
	.uleb128 0x25
	.long	0x246f
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x25
	.long	0x2463
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x25
	.long	0x2457
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x26
	.quad	.LVL127
	.long	0x260c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	parabuf
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.value	0x1388
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x2446
	.quad	.LBI134
	.value	.LVU444
	.long	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.value	0x347
	.byte	0x3
	.long	0xef5
	.uleb128 0x25
	.long	0x246f
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x25
	.long	0x2463
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x25
	.long	0x2457
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x26
	.quad	.LVL138
	.long	0x260c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.value	0x9c40
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL116
	.long	0xc6a
	.uleb128 0x2f
	.quad	.LVL124
	.long	0xb7d
	.long	0xf1a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL139
	.long	0x2617
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF185
	.byte	0x1
	.value	0x2ff
	.byte	0x1
	.byte	0x1
	.long	0xf75
	.uleb128 0x2a
	.string	"w"
	.byte	0x1
	.value	0x2ff
	.byte	0x1a
	.long	0x70f
	.uleb128 0x34
	.long	.LASF173
	.byte	0x1
	.value	0x301
	.byte	0xf
	.long	0x292
	.uleb128 0x34
	.long	.LASF166
	.byte	0x1
	.value	0x302
	.byte	0xf
	.long	0x292
	.uleb128 0x2b
	.string	"fin"
	.byte	0x1
	.value	0x303
	.byte	0x11
	.long	0x45
	.byte	0
	.uleb128 0x38
	.long	.LASF186
	.byte	0x1
	.value	0x2eb
	.byte	0x1
	.long	0x61
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0xff8
	.uleb128 0x2c
	.string	"f"
	.byte	0x1
	.value	0x2eb
	.byte	0x12
	.long	0x2ae
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x2eb
	.byte	0x19
	.long	0x61
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x28
	.long	0x250e
	.quad	.LBI85
	.value	.LVU148
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.value	0x2f8
	.byte	0xb
	.uleb128 0x25
	.long	0x251f
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x26
	.quad	.LVL41
	.long	0x2624
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF187
	.byte	0x1
	.value	0x2cd
	.byte	0x1
	.long	0x61
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x1115
	.uleb128 0x2c
	.string	"f"
	.byte	0x1
	.value	0x2cd
	.byte	0x13
	.long	0x2ae
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0x2cf
	.byte	0x7
	.long	0x61
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x39
	.long	.Ldebug_ranges0+0xe0
	.long	0x10ca
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x2d8
	.byte	0x13
	.long	0x292
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x39
	.long	.Ldebug_ranges0+0x120
	.long	0x10b4
	.uleb128 0x31
	.string	"pc"
	.byte	0x1
	.value	0x2dc
	.byte	0x19
	.long	0x45
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x28
	.long	0x250e
	.quad	.LBI96
	.value	.LVU214
	.long	.Ldebug_ranges0+0x150
	.byte	0x1
	.value	0x2e0
	.byte	0xf
	.uleb128 0x25
	.long	0x251f
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x26
	.quad	.LVL60
	.long	0x2624
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LVL53
	.long	0xf75
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x250e
	.quad	.LBI89
	.value	.LVU174
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.value	0x2d2
	.byte	0x7
	.long	0x1100
	.uleb128 0x25
	.long	0x251f
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x2e
	.quad	.LVL62
	.long	0x2624
	.byte	0
	.uleb128 0x26
	.quad	.LVL47
	.long	0xf75
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF188
	.byte	0x1
	.value	0x297
	.byte	0x1
	.long	0x61
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x131d
	.uleb128 0x2c
	.string	"f"
	.byte	0x1
	.value	0x297
	.byte	0x11
	.long	0x2ae
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x297
	.byte	0x18
	.long	0x61
	.long	.LLST47
	.long	.LVUS47
	.uleb128 0x23
	.long	.LASF173
	.byte	0x1
	.value	0x299
	.byte	0x7
	.long	0x61
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x23
	.long	.LASF189
	.byte	0x1
	.value	0x29a
	.byte	0x9
	.long	0x98
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x23
	.long	.LASF190
	.byte	0x1
	.value	0x29b
	.byte	0x9
	.long	0x70f
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x24
	.long	0xf34
	.quad	.LBI146
	.value	.LVU519
	.long	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.value	0x2b2
	.byte	0x7
	.long	0x1251
	.uleb128 0x25
	.long	0xf42
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x2f0
	.uleb128 0x36
	.long	0xf4d
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x36
	.long	0xf5a
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x36
	.long	0xf67
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x2f
	.quad	.LVL156
	.long	0x2631
	.long	0x1210
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL161
	.long	0x2631
	.long	0x122e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL163
	.long	0x2631
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x250e
	.quad	.LBI152
	.value	.LVU483
	.long	.Ldebug_ranges0+0x350
	.byte	0x1
	.value	0x2ae
	.byte	0xf
	.long	0x128e
	.uleb128 0x25
	.long	0x251f
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x26
	.quad	.LVL151
	.long	0x2624
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL142
	.long	0x263d
	.uleb128 0x2f
	.quad	.LVL148
	.long	0x13c0
	.long	0x12b3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL149
	.long	0xd94
	.uleb128 0x2f
	.quad	.LVL167
	.long	0xf75
	.long	0x12de
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.quad	.LVL176
	.long	0xff8
	.long	0x12f7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x2f
	.quad	.LVL179
	.long	0x13c0
	.long	0x130f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL180
	.long	0xd94
	.byte	0
	.uleb128 0x32
	.long	.LASF191
	.byte	0x1
	.value	0x287
	.byte	0x1
	.long	0x72b
	.byte	0x1
	.long	0x133b
	.uleb128 0x2a
	.string	"c"
	.byte	0x1
	.value	0x287
	.byte	0x10
	.long	0x61
	.byte	0
	.uleb128 0x32
	.long	.LASF192
	.byte	0x1
	.value	0x26b
	.byte	0x1
	.long	0x61
	.byte	0x1
	.long	0x136f
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x26b
	.byte	0x12
	.long	0x2ae
	.uleb128 0x2a
	.string	"c"
	.byte	0x1
	.value	0x26b
	.byte	0x19
	.long	0x61
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x26d
	.byte	0xf
	.long	0x292
	.byte	0
	.uleb128 0x32
	.long	.LASF193
	.byte	0x1
	.value	0x21a
	.byte	0x1
	.long	0x72b
	.byte	0x1
	.long	0x13ab
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x21a
	.byte	0x16
	.long	0x2ae
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0x21c
	.byte	0x7
	.long	0x61
	.uleb128 0x3b
	.long	.LASF259
	.long	0x13bb
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7252
	.byte	0
	.uleb128 0xd
	.long	0xa5
	.long	0x13bb
	.uleb128 0xe
	.long	0x35
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.long	0x13ab
	.uleb128 0x29
	.long	.LASF194
	.byte	0x1
	.value	0x1ed
	.byte	0x1
	.byte	0x1
	.long	0x13dc
	.uleb128 0x33
	.long	.LASF195
	.byte	0x1
	.value	0x1ed
	.byte	0x18
	.long	0x72b
	.byte	0
	.uleb128 0x3c
	.string	"fmt"
	.byte	0x1
	.value	0x1dc
	.byte	0x1
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x183c
	.uleb128 0x2c
	.string	"f"
	.byte	0x1
	.value	0x1dc
	.byte	0xc
	.long	0x2ae
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x24
	.long	0x136f
	.quad	.LBI190
	.value	.LVU621
	.long	.Ldebug_ranges0+0x3a0
	.byte	0x1
	.value	0x1e2
	.byte	0xa
	.long	0x17e5
	.uleb128 0x25
	.long	0x1381
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x3a0
	.uleb128 0x36
	.long	0x138c
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x24
	.long	0x133b
	.quad	.LBI192
	.value	.LVU632
	.long	.Ldebug_ranges0+0x400
	.byte	0x1
	.value	0x227
	.byte	0xb
	.long	0x15de
	.uleb128 0x25
	.long	0x1358
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x25
	.long	0x134d
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x400
	.uleb128 0x36
	.long	0x1363
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0x24
	.long	0x24c6
	.quad	.LBI194
	.value	.LVU658
	.long	.Ldebug_ranges0+0x470
	.byte	0x1
	.value	0x274
	.byte	0x9
	.long	0x14c5
	.uleb128 0x25
	.long	0x24d7
	.long	.LLST62
	.long	.LVUS62
	.uleb128 0x2e
	.quad	.LVL193
	.long	0x25f2
	.byte	0
	.uleb128 0x24
	.long	0x24c6
	.quad	.LBI200
	.value	.LVU684
	.long	.Ldebug_ranges0+0x4b0
	.byte	0x1
	.value	0x278
	.byte	0x9
	.long	0x1501
	.uleb128 0x25
	.long	0x24d7
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x26
	.quad	.LVL233
	.long	0x25f2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x24c6
	.quad	.LBI203
	.value	.LVU725
	.long	.Ldebug_ranges0+0x4e0
	.byte	0x1
	.value	0x27c
	.byte	0x7
	.long	0x1541
	.uleb128 0x25
	.long	0x24d7
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x26
	.quad	.LVL215
	.long	0x25f2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x250e
	.quad	.LBI206
	.value	.LVU717
	.long	.Ldebug_ranges0+0x510
	.byte	0x1
	.value	0x27d
	.byte	0xb
	.long	0x157e
	.uleb128 0x25
	.long	0x251f
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x26
	.quad	.LVL216
	.long	0x2624
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL188
	.long	0x965
	.uleb128 0x2e
	.quad	.LVL198
	.long	0x965
	.uleb128 0x2e
	.quad	.LVL209
	.long	0x965
	.uleb128 0x2f
	.quad	.LVL231
	.long	0x965
	.long	0x15bc
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.quad	.LVL257
	.long	0x965
	.uleb128 0x26
	.quad	.LVL259
	.long	0x965
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x24c6
	.quad	.LBI219
	.value	.LVU704
	.long	.Ldebug_ranges0+0x540
	.byte	0x1
	.value	0x22d
	.byte	0x7
	.long	0x161a
	.uleb128 0x25
	.long	0x24d7
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x26
	.quad	.LVL219
	.long	0x25f2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x131d
	.quad	.LBI224
	.value	.LVU754
	.long	.Ldebug_ranges0+0x570
	.byte	0x1
	.value	0x238
	.byte	0x15
	.long	0x1643
	.uleb128 0x25
	.long	0x132f
	.long	.LLST67
	.long	.LVUS67
	.byte	0
	.uleb128 0x24
	.long	0x131d
	.quad	.LBI229
	.value	.LVU764
	.long	.Ldebug_ranges0+0x5b0
	.byte	0x1
	.value	0x242
	.byte	0xb
	.long	0x166c
	.uleb128 0x25
	.long	0x132f
	.long	.LLST68
	.long	.LVUS68
	.byte	0
	.uleb128 0x3d
	.long	0x131d
	.quad	.LBI234
	.value	.LVU793
	.quad	.LBB234
	.quad	.LBE234-.LBB234
	.byte	0x1
	.value	0x24d
	.byte	0xb
	.long	0x16a1
	.uleb128 0x25
	.long	0x132f
	.long	.LLST69
	.long	.LVUS69
	.byte	0
	.uleb128 0x24
	.long	0x131d
	.quad	.LBI236
	.value	.LVU814
	.long	.Ldebug_ranges0+0x5e0
	.byte	0x1
	.value	0x253
	.byte	0x12
	.long	0x16ca
	.uleb128 0x25
	.long	0x132f
	.long	.LLST70
	.long	.LVUS70
	.byte	0
	.uleb128 0x24
	.long	0x131d
	.quad	.LBI240
	.value	.LVU820
	.long	.Ldebug_ranges0+0x610
	.byte	0x1
	.value	0x258
	.byte	0xe
	.long	0x16f3
	.uleb128 0x25
	.long	0x132f
	.long	.LLST71
	.long	.LVUS71
	.byte	0
	.uleb128 0x24
	.long	0x131d
	.quad	.LBI247
	.value	.LVU855
	.long	.Ldebug_ranges0+0x650
	.byte	0x1
	.value	0x248
	.byte	0x12
	.long	0x171c
	.uleb128 0x25
	.long	0x132f
	.long	.LLST72
	.long	.LVUS72
	.byte	0
	.uleb128 0x2f
	.quad	.LVL206
	.long	0xff8
	.long	0x1734
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL221
	.long	0x1115
	.long	0x1752
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
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL224
	.long	0x13c0
	.uleb128 0x2f
	.quad	.LVL241
	.long	0x1115
	.long	0x1777
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL246
	.long	0x1115
	.long	0x178f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL251
	.long	0x1115
	.long	0x17a7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL256
	.long	0x2649
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x25e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7252
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL183
	.long	0x2655
	.long	0x1802
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2f
	.quad	.LVL184
	.long	0xff8
	.long	0x181a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL228
	.long	0xc6a
	.uleb128 0x26
	.quad	.LVL229
	.long	0xb7d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF196
	.byte	0x1
	.value	0x1c6
	.byte	0x1
	.byte	0x1
	.long	0x1861
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.value	0x1c6
	.byte	0x13
	.long	0x98
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x1c8
	.byte	0x9
	.long	0x98
	.byte	0
	.uleb128 0x3e
	.long	.LASF204
	.byte	0x1
	.value	0x13d
	.byte	0x1
	.long	0x61
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d49
	.uleb128 0x22
	.long	.LASF197
	.byte	0x1
	.value	0x13d
	.byte	0xb
	.long	0x61
	.long	.LLST83
	.long	.LVUS83
	.uleb128 0x22
	.long	.LASF198
	.byte	0x1
	.value	0x13d
	.byte	0x18
	.long	0x464
	.long	.LLST84
	.long	.LVUS84
	.uleb128 0x23
	.long	.LASF199
	.byte	0x1
	.value	0x13f
	.byte	0x7
	.long	0x61
	.long	.LLST85
	.long	.LVUS85
	.uleb128 0x31
	.string	"ok"
	.byte	0x1
	.value	0x140
	.byte	0x8
	.long	0x72b
	.long	.LLST86
	.long	.LVUS86
	.uleb128 0x23
	.long	.LASF200
	.byte	0x1
	.value	0x141
	.byte	0xf
	.long	0x292
	.long	.LLST87
	.long	.LVUS87
	.uleb128 0x23
	.long	.LASF201
	.byte	0x1
	.value	0x142
	.byte	0xf
	.long	0x292
	.long	.LLST88
	.long	.LVUS88
	.uleb128 0x39
	.long	.Ldebug_ranges0+0x800
	.long	0x1a34
	.uleb128 0x23
	.long	.LASF202
	.byte	0x1
	.value	0x1a5
	.byte	0x11
	.long	0x98
	.long	.LLST91
	.long	.LVUS91
	.uleb128 0x39
	.long	.Ldebug_ranges0+0x850
	.long	0x1a26
	.uleb128 0x23
	.long	.LASF203
	.byte	0x1
	.value	0x1aa
	.byte	0x15
	.long	0x2ae
	.long	.LLST92
	.long	.LVUS92
	.uleb128 0x2f
	.quad	.LVL362
	.long	0x2661
	.long	0x195b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL364
	.long	0x13dc
	.long	0x1973
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL365
	.long	0x266d
	.long	0x198b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL366
	.long	0x267a
	.long	0x19ad
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL368
	.long	0x2687
	.uleb128 0x2f
	.quad	.LVL371
	.long	0x2693
	.long	0x19d2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL378
	.long	0x269f
	.long	0x19ef
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL380
	.long	0x26ac
	.long	0x1a18
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
	.quad	.LC40
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2e
	.quad	.LVL382
	.long	0x2687
	.byte	0
	.uleb128 0x2e
	.quad	.LVL359
	.long	0x13dc
	.byte	0
	.uleb128 0x3d
	.long	0x183c
	.quad	.LBI320
	.value	.LVU1053
	.quad	.LBB320
	.quad	.LBE320-.LBB320
	.byte	0x1
	.value	0x181
	.byte	0x9
	.long	0x1a8a
	.uleb128 0x25
	.long	0x184a
	.long	.LLST89
	.long	.LVUS89
	.uleb128 0x36
	.long	0x1855
	.long	.LLST90
	.long	.LVUS90
	.uleb128 0x26
	.quad	.LVL337
	.long	0x26b8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LVL324
	.long	0x26c5
	.uleb128 0x2f
	.quad	.LVL325
	.long	0x26d1
	.long	0x1abb
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x2f
	.quad	.LVL326
	.long	0x26dd
	.long	0x1ae7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.byte	0
	.uleb128 0x2f
	.quad	.LVL327
	.long	0x26e9
	.long	0x1b06
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.uleb128 0x2e
	.quad	.LVL328
	.long	0x26f5
	.uleb128 0x2f
	.quad	.LVL331
	.long	0x2702
	.long	0x1b50
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC36
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.quad	.LVL345
	.long	0x270e
	.long	0x1b8e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.quad	.LVL346
	.long	0x271a
	.long	0x1ba5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.quad	.LVL347
	.long	0x1d49
	.long	0x1bbc
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.quad	.LVL353
	.long	0x26ac
	.long	0x1be5
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
	.quad	.LC37
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL354
	.long	0x2727
	.long	0x1c1b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x9c4
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.quad	.LVL355
	.long	0x26ac
	.long	0x1c44
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
	.quad	.LC37
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL356
	.long	0x2727
	.long	0x1c7f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.quad	.LVL373
	.long	0x13dc
	.uleb128 0x2f
	.quad	.LVL385
	.long	0x1d49
	.long	0x1ca3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.quad	.LVL386
	.long	0x26ac
	.long	0x1ccc
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
	.quad	.LC37
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL387
	.long	0x2727
	.long	0x1d01
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.quad	.LVL388
	.long	0x26ac
	.long	0x1d2a
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
	.quad	.LC34
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL389
	.long	0x2693
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
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	.LASF205
	.byte	0x1
	.value	0x107
	.byte	0x1
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x2397
	.uleb128 0x22
	.long	.LASF206
	.byte	0x1
	.value	0x107
	.byte	0xc
	.long	0x61
	.long	.LLST73
	.long	.LVUS73
	.uleb128 0x24
	.long	0x249b
	.quad	.LBI276
	.value	.LVU883
	.long	.Ldebug_ranges0+0x680
	.byte	0x1
	.value	0x10a
	.byte	0x5
	.long	0x1dcc
	.uleb128 0x25
	.long	0x24b8
	.long	.LLST74
	.long	.LVUS74
	.uleb128 0x25
	.long	0x24ac
	.long	.LLST75
	.long	.LVUS75
	.uleb128 0x26
	.quad	.LVL265
	.long	0x2733
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x2397
	.quad	.LBI280
	.value	.LVU912
	.long	.Ldebug_ranges0+0x6b0
	.byte	0x1
	.value	0x127
	.byte	0x7
	.long	0x20e4
	.uleb128 0x40
	.long	0x23a5
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x6b0
	.uleb128 0x41
	.long	0x23e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.long	0x23ef
	.long	.LLST76
	.long	.LVUS76
	.uleb128 0x36
	.long	0x23fc
	.long	.LLST77
	.long	.LVUS77
	.uleb128 0x36
	.long	0x2409
	.long	.LLST78
	.long	.LVUS78
	.uleb128 0x24
	.long	0x247c
	.quad	.LBI282
	.value	.LVU936
	.long	.Ldebug_ranges0+0x6e0
	.byte	0x5
	.value	0x28f
	.byte	0x3
	.long	0x1eb3
	.uleb128 0x25
	.long	0x248d
	.long	.LLST79
	.long	.LVUS79
	.uleb128 0x2f
	.quad	.LVL293
	.long	0x273f
	.long	0x1e85
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.byte	0
	.uleb128 0x26
	.quad	.LVL310
	.long	0x273f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x247c
	.quad	.LBI288
	.value	.LVU951
	.long	.Ldebug_ranges0+0x730
	.byte	0x5
	.value	0x29d
	.byte	0x3
	.long	0x1f2c
	.uleb128 0x25
	.long	0x248d
	.long	.LLST80
	.long	.LVUS80
	.uleb128 0x2f
	.quad	.LVL301
	.long	0x273f
	.long	0x1f05
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL317
	.long	0x273f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x247c
	.quad	.LBI297
	.value	.LVU962
	.long	.Ldebug_ranges0+0x7a0
	.byte	0x5
	.value	0x29f
	.byte	0x3
	.long	0x1f74
	.uleb128 0x25
	.long	0x248d
	.long	.LLST81
	.long	.LVUS81
	.uleb128 0x26
	.quad	.LVL305
	.long	0x273f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL290
	.long	0x26ac
	.long	0x1f9d
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
	.quad	.LC26
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL294
	.long	0x26d1
	.long	0x1fb9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.quad	.LVL296
	.long	0x274b
	.long	0x1fdd
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2f
	.quad	.LVL298
	.long	0x26ac
	.long	0x2006
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
	.quad	.LC31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL302
	.long	0x26ac
	.long	0x202f
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
	.quad	.LC32
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2e
	.quad	.LVL307
	.long	0x26ac
	.uleb128 0x2f
	.quad	.LVL311
	.long	0x26d1
	.long	0x2058
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.quad	.LVL313
	.long	0x274b
	.long	0x207c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2f
	.quad	.LVL314
	.long	0x26ac
	.long	0x20a5
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
	.quad	.LC31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL319
	.long	0x26ac
	.long	0x20ce
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
	.quad	.LC30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL320
	.long	0x25ff
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x247c
	.quad	.LBI307
	.value	.LVU895
	.long	.Ldebug_ranges0+0x7d0
	.byte	0x1
	.value	0x10d
	.byte	0x7
	.long	0x2126
	.uleb128 0x25
	.long	0x248d
	.long	.LLST82
	.long	.LVUS82
	.uleb128 0x26
	.quad	.LVL271
	.long	0x273f
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	0x243c
	.quad	.LBI311
	.value	.LVU902
	.quad	.LBB311
	.quad	.LBE311-.LBB311
	.byte	0x1
	.value	0x113
	.byte	0x7
	.long	0x218b
	.uleb128 0x2f
	.quad	.LVL274
	.long	0x26ac
	.long	0x2176
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
	.quad	.LVL275
	.long	0x25ff
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	0x2432
	.quad	.LBI313
	.value	.LVU905
	.quad	.LBB313
	.quad	.LBE313-.LBB313
	.byte	0x1
	.value	0x114
	.byte	0x7
	.long	0x21f0
	.uleb128 0x2f
	.quad	.LVL276
	.long	0x26ac
	.long	0x21db
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
	.quad	.LC12
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL277
	.long	0x25ff
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL262
	.long	0x26ac
	.long	0x2219
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
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL266
	.long	0x271a
	.long	0x2231
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL268
	.long	0x26ac
	.long	0x2255
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
	.byte	0
	.uleb128 0x2f
	.quad	.LVL272
	.long	0x26ac
	.long	0x227e
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
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL273
	.long	0x25ff
	.long	0x2296
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL278
	.long	0x26ac
	.long	0x22bf
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
	.quad	.LC13
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL279
	.long	0x25ff
	.long	0x22d7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL280
	.long	0x26ac
	.long	0x2300
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
	.quad	.LC14
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL281
	.long	0x25ff
	.long	0x2318
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL282
	.long	0x26ac
	.long	0x2341
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
	.quad	.LC15
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2f
	.quad	.LVL283
	.long	0x25ff
	.long	0x2359
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.quad	.LVL284
	.long	0x26ac
	.long	0x2382
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
	.quad	.LC16
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x26
	.quad	.LVL285
	.long	0x25ff
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF207
	.byte	0x5
	.value	0x27a
	.byte	0x1
	.byte	0x3
	.long	0x2417
	.uleb128 0x33
	.long	.LASF208
	.byte	0x5
	.value	0x27a
	.byte	0x22
	.long	0x292
	.uleb128 0x42
	.long	.LASF209
	.byte	0x10
	.byte	0x5
	.value	0x27c
	.byte	0xa
	.long	0x23dd
	.uleb128 0x43
	.long	.LASF208
	.byte	0x5
	.value	0x27c
	.byte	0x20
	.long	0x292
	.byte	0
	.uleb128 0x43
	.long	.LASF210
	.byte	0x5
	.value	0x27c
	.byte	0x35
	.long	0x292
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x23b2
	.uleb128 0x34
	.long	.LASF209
	.byte	0x5
	.value	0x27c
	.byte	0x43
	.long	0x2427
	.uleb128 0x34
	.long	.LASF210
	.byte	0x5
	.value	0x286
	.byte	0xf
	.long	0x292
	.uleb128 0x34
	.long	.LASF211
	.byte	0x5
	.value	0x287
	.byte	0x19
	.long	0x242c
	.uleb128 0x34
	.long	.LASF212
	.byte	0x5
	.value	0x293
	.byte	0xf
	.long	0x292
	.byte	0
	.uleb128 0xd
	.long	0x23dd
	.long	0x2427
	.uleb128 0xe
	.long	0x35
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x2417
	.uleb128 0x7
	.byte	0x8
	.long	0x23dd
	.uleb128 0x44
	.long	.LASF213
	.byte	0x5
	.value	0x24c
	.byte	0x1
	.byte	0x3
	.uleb128 0x44
	.long	.LASF214
	.byte	0x5
	.value	0x245
	.byte	0x1
	.byte	0x3
	.uleb128 0x45
	.long	.LASF218
	.byte	0x3
	.byte	0x26
	.byte	0x1
	.long	0x43
	.byte	0x3
	.long	0x247c
	.uleb128 0x46
	.long	.LASF215
	.byte	0x3
	.byte	0x26
	.byte	0x1
	.long	0x43
	.uleb128 0x46
	.long	.LASF216
	.byte	0x3
	.byte	0x26
	.byte	0x1
	.long	0x48f
	.uleb128 0x46
	.long	.LASF217
	.byte	0x3
	.byte	0x26
	.byte	0x1
	.long	0x29
	.byte	0
	.uleb128 0x45
	.long	.LASF219
	.byte	0x4
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x249b
	.uleb128 0x46
	.long	.LASF220
	.byte	0x4
	.byte	0x69
	.byte	0x20
	.long	0x29d
	.uleb128 0x47
	.byte	0
	.uleb128 0x45
	.long	.LASF221
	.byte	0x4
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x24c6
	.uleb128 0x46
	.long	.LASF182
	.byte	0x4
	.byte	0x62
	.byte	0x1b
	.long	0x2b4
	.uleb128 0x46
	.long	.LASF220
	.byte	0x4
	.byte	0x62
	.byte	0x3c
	.long	0x29d
	.uleb128 0x47
	.byte	0
	.uleb128 0x48
	.long	.LASF222
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x24e4
	.uleb128 0x49
	.string	"__c"
	.byte	0x2
	.byte	0x6c
	.byte	0x17
	.long	0x61
	.byte	0
	.uleb128 0x48
	.long	.LASF223
	.byte	0x2
	.byte	0x65
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x250e
	.uleb128 0x49
	.string	"__c"
	.byte	0x2
	.byte	0x65
	.byte	0x14
	.long	0x61
	.uleb128 0x46
	.long	.LASF182
	.byte	0x2
	.byte	0x65
	.byte	0x1f
	.long	0x2ae
	.byte	0
	.uleb128 0x48
	.long	.LASF224
	.byte	0x2
	.byte	0x42
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x252c
	.uleb128 0x46
	.long	.LASF225
	.byte	0x2
	.byte	0x42
	.byte	0x16
	.long	0x2ae
	.byte	0
	.uleb128 0x4a
	.long	0x13c0
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x2580
	.uleb128 0x40
	.long	0x13ce
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4b
	.long	0x13c0
	.quad	.LBI114
	.value	.LVU285
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.byte	0x1
	.value	0x1ed
	.byte	0x1
	.uleb128 0x25
	.long	0x13ce
	.long	.LLST26
	.long	.LVUS26
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0xa39
	.quad	.LFB156
	.quad	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.long	0x25f2
	.uleb128 0x4c
	.long	0xa47
	.uleb128 0x4c
	.long	0xa47
	.uleb128 0x36
	.long	0xa52
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x36
	.long	0xa5d
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x28
	.long	0x24c6
	.quad	.LBI116
	.value	.LVU305
	.long	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.value	0x3ea
	.byte	0x5
	.uleb128 0x25
	.long	0x24d7
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x2e
	.quad	.LVL89
	.long	0x25f2
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	.LASF226
	.long	.LASF226
	.byte	0xa
	.value	0x35b
	.byte	0xc
	.uleb128 0x4d
	.long	.LASF227
	.long	.LASF227
	.byte	0xa
	.value	0x296
	.byte	0xc
	.uleb128 0x4e
	.long	.LASF260
	.long	.LASF261
	.byte	0x24
	.byte	0
	.uleb128 0x4d
	.long	.LASF228
	.long	.LASF228
	.byte	0xa
	.value	0x2a3
	.byte	0xf
	.uleb128 0x4d
	.long	.LASF229
	.long	.LASF229
	.byte	0xa
	.value	0x35a
	.byte	0xc
	.uleb128 0x4f
	.long	.LASF230
	.long	.LASF230
	.byte	0x1d
	.byte	0xe2
	.byte	0xe
	.uleb128 0x4f
	.long	.LASF231
	.long	.LASF231
	.byte	0x17
	.byte	0x4f
	.byte	0x23
	.uleb128 0x4f
	.long	.LASF232
	.long	.LASF232
	.byte	0x1e
	.byte	0x45
	.byte	0xd
	.uleb128 0x4f
	.long	.LASF233
	.long	.LASF233
	.byte	0x1c
	.byte	0x48
	.byte	0x6
	.uleb128 0x4f
	.long	.LASF234
	.long	.LASF234
	.byte	0xa
	.byte	0xf6
	.byte	0xe
	.uleb128 0x4d
	.long	.LASF235
	.long	.LASF235
	.byte	0x1f
	.value	0x2be
	.byte	0x1
	.uleb128 0x4d
	.long	.LASF236
	.long	.LASF236
	.byte	0x1a
	.value	0x18d
	.byte	0x7
	.uleb128 0x4f
	.long	.LASF237
	.long	.LASF237
	.byte	0x13
	.byte	0x25
	.byte	0xd
	.uleb128 0x4f
	.long	.LASF238
	.long	.LASF238
	.byte	0x1b
	.byte	0x28
	.byte	0xd
	.uleb128 0x4d
	.long	.LASF239
	.long	.LASF239
	.byte	0x1a
	.value	0x179
	.byte	0x7
	.uleb128 0x4f
	.long	.LASF240
	.long	.LASF240
	.byte	0x20
	.byte	0x33
	.byte	0xe
	.uleb128 0x4d
	.long	.LASF241
	.long	.LASF241
	.byte	0x1d
	.value	0x181
	.byte	0xf
	.uleb128 0x4f
	.long	.LASF242
	.long	.LASF242
	.byte	0x19
	.byte	0x25
	.byte	0xd
	.uleb128 0x4f
	.long	.LASF243
	.long	.LASF243
	.byte	0x21
	.byte	0x7a
	.byte	0xe
	.uleb128 0x4f
	.long	.LASF244
	.long	.LASF244
	.byte	0x20
	.byte	0x56
	.byte	0xe
	.uleb128 0x4f
	.long	.LASF245
	.long	.LASF245
	.byte	0x20
	.byte	0x52
	.byte	0xe
	.uleb128 0x4d
	.long	.LASF246
	.long	.LASF246
	.byte	0x22
	.value	0x253
	.byte	0xc
	.uleb128 0x4f
	.long	.LASF247
	.long	.LASF247
	.byte	0xf
	.byte	0x42
	.byte	0xc
	.uleb128 0x4f
	.long	.LASF248
	.long	.LASF248
	.byte	0x18
	.byte	0x3c
	.byte	0xd
	.uleb128 0x4d
	.long	.LASF249
	.long	.LASF249
	.byte	0x22
	.value	0x269
	.byte	0xd
	.uleb128 0x4f
	.long	.LASF250
	.long	.LASF250
	.byte	0x23
	.byte	0x1f
	.byte	0x1
	.uleb128 0x4f
	.long	.LASF251
	.long	.LASF251
	.byte	0x4
	.byte	0x58
	.byte	0xc
	.uleb128 0x4f
	.long	.LASF252
	.long	.LASF252
	.byte	0x4
	.byte	0x5a
	.byte	0xc
	.uleb128 0x4f
	.long	.LASF253
	.long	.LASF253
	.byte	0x1d
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x25
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x34
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x4c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS21:
	.uleb128 0
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST21:
	.quad	.LVL63
	.quad	.LVL66
	.value	0x1
	.byte	0x55
	.quad	.LVL66
	.quad	.LFE154
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 .LVU229
	.uleb128 .LVU261
	.uleb128 .LVU262
	.uleb128 0
.LLST22:
	.quad	.LVL64
	.quad	.LVL71
	.value	0x1
	.byte	0x53
	.quad	.LVL72
	.quad	.LFE154
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 .LVU236
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU251
	.uleb128 .LVU263
	.uleb128 0
.LLST23:
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x50
	.quad	.LVL66
	.quad	.LVL68
	.value	0x14
	.byte	0x73
	.sleb128 7
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL74
	.quad	.LFE154
	.value	0x14
	.byte	0x73
	.sleb128 7
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU241
	.uleb128 .LVU244
	.uleb128 .LVU263
	.uleb128 0
.LLST24:
	.quad	.LVL66
	.quad	.LVL67
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.quad	.LVL74
	.quad	.LFE154
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 .LVU253
	.uleb128 .LVU256
	.uleb128 .LVU262
	.uleb128 .LVU263
.LLST25:
	.quad	.LVL69
	.quad	.LVL70
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	.LVL72
	.quad	.LVL74
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS30:
	.uleb128 0
	.uleb128 .LVU328
	.uleb128 .LVU328
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU349
.LLST30:
	.quad	.LVL91
	.quad	.LVL92
	.value	0x1
	.byte	0x55
	.quad	.LVL92
	.quad	.LVL98
	.value	0x1
	.byte	0x5d
	.quad	.LVL98
	.quad	.LVL99
	.value	0x1
	.byte	0x53
	.quad	.LVL99
	.quad	.LVL101
	.value	0x3
	.byte	0x73
	.sleb128 -40
	.byte	0x9f
	.quad	.LVL101
	.quad	.LVL102
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 0
.LLST31:
	.quad	.LVL91
	.quad	.LVL93-1
	.value	0x1
	.byte	0x54
	.quad	.LVL93-1
	.quad	.LVL95
	.value	0x1
	.byte	0x53
	.quad	.LVL95
	.quad	.LFE152
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS32:
	.uleb128 .LVU339
	.uleb128 .LVU349
.LLST32:
	.quad	.LVL97
	.quad	.LVL102
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS33:
	.uleb128 .LVU355
	.uleb128 .LVU358
	.uleb128 .LVU360
	.uleb128 0
.LLST33:
	.quad	.LVL104
	.quad	.LVL105
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL106
	.quad	.LFE152
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS34:
	.uleb128 0
	.uleb128 .LVU369
	.uleb128 .LVU369
	.uleb128 .LVU382
	.uleb128 .LVU382
	.uleb128 0
.LLST34:
	.quad	.LVL108
	.quad	.LVL109
	.value	0x1
	.byte	0x55
	.quad	.LVL109
	.quad	.LVL115
	.value	0x1
	.byte	0x56
	.quad	.LVL115
	.quad	.LFE151
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS35:
	.uleb128 .LVU373
	.uleb128 .LVU381
.LLST35:
	.quad	.LVL111
	.quad	.LVL114
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 .LVU21
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL26
	.value	0x1
	.byte	0x52
	.quad	.LVL26
	.quad	.LVL27
	.value	0x3
	.byte	0x72
	.sleb128 40
	.byte	0x9f
	.quad	.LVL27
	.quad	.LFE148
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU34
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU100
	.uleb128 .LVU122
	.uleb128 .LVU132
.LLST1:
	.quad	.LVL2
	.quad	.LVL4
	.value	0x1
	.byte	0x52
	.quad	.LVL4
	.quad	.LVL23
	.value	0x1
	.byte	0x51
	.quad	.LVL31
	.quad	.LVL32
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU33
	.uleb128 .LVU113
	.uleb128 .LVU116
	.uleb128 0
.LLST2:
	.quad	.LVL2
	.quad	.LVL28
	.value	0x1
	.byte	0x5f
	.quad	.LVL29
	.quad	.LFE148
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU38
	.uleb128 .LVU49
	.uleb128 .LVU78
	.uleb128 .LVU85
.LLST3:
	.quad	.LVL4
	.quad	.LVL7
	.value	0x1
	.byte	0x50
	.quad	.LVL19
	.quad	.LVL21
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU28
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU108
	.uleb128 .LVU116
	.uleb128 0
.LLST4:
	.quad	.LVL1
	.quad	.LVL4
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0x7fffffffffffffff
	.quad	.LVL4
	.quad	.LVL5
	.value	0x1
	.byte	0x55
	.quad	.LVL5
	.quad	.LVL6
	.value	0x1
	.byte	0x50
	.quad	.LVL6
	.quad	.LVL25
	.value	0x1
	.byte	0x55
	.quad	.LVL29
	.quad	.LFE148
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU19
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST5:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x50
	.quad	.LVL1
	.quad	.LFE148
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU57
	.uleb128 .LVU76
	.uleb128 .LVU85
	.uleb128 .LVU86
.LLST6:
	.quad	.LVL10
	.quad	.LVL18
	.value	0x1
	.byte	0x5f
	.quad	.LVL21
	.quad	.LVL22
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU57
	.uleb128 .LVU76
	.uleb128 .LVU85
	.uleb128 .LVU86
.LLST7:
	.quad	.LVL10
	.quad	.LVL18
	.value	0x1
	.byte	0x51
	.quad	.LVL21
	.quad	.LVL22
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU76
.LLST8:
	.quad	.LVL11
	.quad	.LVL12
	.value	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x50
	.quad	.LVL13
	.quad	.LVL15
	.value	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL15
	.quad	.LVL16
	.value	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x71
	.sleb128 20
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL16
	.quad	.LVL17
	.value	0x1
	.byte	0x5e
	.quad	.LVL17
	.quad	.LVL18
	.value	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x71
	.sleb128 20
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU68
	.uleb128 .LVU76
.LLST9:
	.quad	.LVL14
	.quad	.LVL18
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU88
	.uleb128 .LVU106
	.uleb128 .LVU116
	.uleb128 0
.LLST10:
	.quad	.LVL22
	.quad	.LVL24
	.value	0x1
	.byte	0x52
	.quad	.LVL29
	.quad	.LFE148
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU91
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU106
	.uleb128 .LVU116
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 0
.LLST11:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x4
	.byte	0xa
	.value	0x1324
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL24
	.value	0x1
	.byte	0x5e
	.quad	.LVL29
	.quad	.LVL31
	.value	0x1
	.byte	0x5e
	.quad	.LVL31
	.quad	.LVL33
	.value	0x4
	.byte	0xa
	.value	0x1324
	.byte	0x9f
	.quad	.LVL33
	.quad	.LFE148
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS36:
	.uleb128 .LVU395
	.uleb128 .LVU402
	.uleb128 .LVU402
	.uleb128 .LVU450
	.uleb128 .LVU450
	.uleb128 .LVU455
	.uleb128 .LVU465
	.uleb128 0
.LLST36:
	.quad	.LVL116
	.quad	.LVL118
	.value	0x1
	.byte	0x5c
	.quad	.LVL118
	.quad	.LVL134
	.value	0x1
	.byte	0x56
	.quad	.LVL134
	.quad	.LVL138-1
	.value	0x1
	.byte	0x54
	.quad	.LVL140
	.quad	.LFE147
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS37:
	.uleb128 .LVU398
	.uleb128 .LVU404
	.uleb128 .LVU404
	.uleb128 .LVU412
	.uleb128 .LVU412
	.uleb128 .LVU415
	.uleb128 .LVU430
	.uleb128 .LVU435
	.uleb128 .LVU435
	.uleb128 .LVU439
	.uleb128 .LVU439
	.uleb128 .LVU441
	.uleb128 .LVU441
	.uleb128 .LVU443
	.uleb128 .LVU465
	.uleb128 0
.LLST37:
	.quad	.LVL117
	.quad	.LVL119
	.value	0x1
	.byte	0x51
	.quad	.LVL119
	.quad	.LVL122
	.value	0x1
	.byte	0x55
	.quad	.LVL122
	.quad	.LVL124-1
	.value	0x1
	.byte	0x51
	.quad	.LVL129
	.quad	.LVL130
	.value	0x1
	.byte	0x56
	.quad	.LVL130
	.quad	.LVL131
	.value	0x1
	.byte	0x50
	.quad	.LVL131
	.quad	.LVL132
	.value	0x3
	.byte	0x70
	.sleb128 -40
	.byte	0x9f
	.quad	.LVL132
	.quad	.LVL133
	.value	0x1
	.byte	0x50
	.quad	.LVL140
	.quad	.LFE147
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS38:
	.uleb128 .LVU426
	.uleb128 .LVU435
	.uleb128 .LVU435
	.uleb128 .LVU451
.LLST38:
	.quad	.LVL128
	.quad	.LVL130
	.value	0xd
	.byte	0x71
	.sleb128 0
	.byte	0x3
	.quad	parabuf
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL130
	.quad	.LVL135
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS39:
	.uleb128 .LVU396
	.uleb128 .LVU402
	.uleb128 .LVU402
	.uleb128 .LVU409
	.uleb128 .LVU410
	.uleb128 .LVU414
	.uleb128 .LVU465
	.uleb128 0
.LLST39:
	.quad	.LVL116
	.quad	.LVL118
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0x7fffffffffffffff
	.quad	.LVL118
	.quad	.LVL120
	.value	0x1
	.byte	0x50
	.quad	.LVL121
	.quad	.LVL123
	.value	0x1
	.byte	0x50
	.quad	.LVL140
	.quad	.LFE147
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0x7fffffffffffffff
	.quad	0
	.quad	0
.LVUS40:
	.uleb128 .LVU418
	.uleb128 .LVU422
	.uleb128 .LVU422
	.uleb128 .LVU423
.LLST40:
	.quad	.LVL125
	.quad	.LVL126
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL126
	.quad	.LVL127-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS41:
	.uleb128 .LVU418
	.uleb128 .LVU423
.LLST41:
	.quad	.LVL125
	.quad	.LVL127-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS42:
	.uleb128 .LVU418
	.uleb128 .LVU423
.LLST42:
	.quad	.LVL125
	.quad	.LVL127
	.value	0xa
	.byte	0x3
	.quad	parabuf
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS43:
	.uleb128 .LVU444
	.uleb128 .LVU450
	.uleb128 .LVU450
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 .LVU454
	.uleb128 .LVU454
	.uleb128 .LVU455
.LLST43:
	.quad	.LVL133
	.quad	.LVL134
	.value	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.quad	.LVL134
	.quad	.LVL136
	.value	0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.quad	.LVL136
	.quad	.LVL137
	.value	0x10
	.byte	0x3
	.quad	word_limit
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.quad	.LVL137
	.quad	.LVL138-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS44:
	.uleb128 .LVU444
	.uleb128 .LVU450
	.uleb128 .LVU450
	.uleb128 .LVU455
.LLST44:
	.quad	.LVL133
	.quad	.LVL134
	.value	0x1
	.byte	0x56
	.quad	.LVL134
	.quad	.LVL138-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS45:
	.uleb128 .LVU444
	.uleb128 .LVU455
.LLST45:
	.quad	.LVL133
	.quad	.LVL138
	.value	0xa
	.byte	0x3
	.quad	unused_word_type
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 0
.LLST12:
	.quad	.LVL34
	.quad	.LVL35
	.value	0x1
	.byte	0x55
	.quad	.LVL35
	.quad	.LVL43
	.value	0x1
	.byte	0x53
	.quad	.LVL43
	.quad	.LFE145
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU145
	.uleb128 .LVU152
	.uleb128 .LVU162
	.uleb128 .LVU164
	.uleb128 0
.LLST13:
	.quad	.LVL34
	.quad	.LVL35
	.value	0x1
	.byte	0x54
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x50
	.quad	.LVL38
	.quad	.LVL40
	.value	0x1
	.byte	0x50
	.quad	.LVL42
	.quad	.LFE145
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU148
	.uleb128 .LVU152
	.uleb128 .LVU159
	.uleb128 .LVU164
.LLST14:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x1
	.byte	0x53
	.quad	.LVL39
	.quad	.LVL42
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST15:
	.quad	.LVL44
	.quad	.LVL46
	.value	0x1
	.byte	0x55
	.quad	.LVL46
	.quad	.LVL48
	.value	0x1
	.byte	0x56
	.quad	.LVL48
	.quad	.LVL49
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL49
	.quad	.LVL52
	.value	0x1
	.byte	0x56
	.quad	.LVL52
	.quad	.LVL53-1
	.value	0x1
	.byte	0x55
	.quad	.LVL53-1
	.quad	.LVL53
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL53
	.quad	.LVL61
	.value	0x1
	.byte	0x56
	.quad	.LVL61
	.quad	.LVL62-1
	.value	0x1
	.byte	0x55
	.quad	.LVL62-1
	.quad	.LFE144
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 .LVU179
	.uleb128 .LVU200
	.uleb128 .LVU202
	.uleb128 .LVU217
.LLST16:
	.quad	.LVL47
	.quad	.LVL53-1
	.value	0x1
	.byte	0x50
	.quad	.LVL55
	.quad	.LVL59
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU192
	.uleb128 .LVU198
	.uleb128 .LVU200
	.uleb128 .LVU220
.LLST18:
	.quad	.LVL50
	.quad	.LVL51
	.value	0x1
	.byte	0x53
	.quad	.LVL53
	.quad	.LVL61
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU200
	.uleb128 .LVU201
	.uleb128 .LVU209
	.uleb128 .LVU219
.LLST19:
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x51
	.quad	.LVL57
	.quad	.LVL60-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU200
	.uleb128 .LVU202
	.uleb128 .LVU214
	.uleb128 .LVU220
.LLST20:
	.quad	.LVL53
	.quad	.LVL55
	.value	0x1
	.byte	0x56
	.quad	.LVL58
	.quad	.LVL61
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU174
	.uleb128 .LVU177
	.uleb128 .LVU220
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST17:
	.quad	.LVL45
	.quad	.LVL46
	.value	0x1
	.byte	0x55
	.quad	.LVL61
	.quad	.LVL62-1
	.value	0x1
	.byte	0x55
	.quad	.LVL62-1
	.quad	.LFE144
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS46:
	.uleb128 0
	.uleb128 .LVU475
	.uleb128 .LVU475
	.uleb128 .LVU591
	.uleb128 .LVU591
	.uleb128 .LVU592
	.uleb128 .LVU592
	.uleb128 .LVU592
	.uleb128 .LVU592
	.uleb128 0
.LLST46:
	.quad	.LVL141
	.quad	.LVL142-1
	.value	0x1
	.byte	0x55
	.quad	.LVL142-1
	.quad	.LVL175
	.value	0x1
	.byte	0x5f
	.quad	.LVL175
	.quad	.LVL176-1
	.value	0x1
	.byte	0x55
	.quad	.LVL176-1
	.quad	.LVL176
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL176
	.quad	.LFE143
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS47:
	.uleb128 0
	.uleb128 .LVU475
	.uleb128 .LVU475
	.uleb128 .LVU501
	.uleb128 .LVU501
	.uleb128 .LVU503
	.uleb128 .LVU503
	.uleb128 .LVU553
	.uleb128 .LVU553
	.uleb128 .LVU555
	.uleb128 .LVU555
	.uleb128 .LVU590
	.uleb128 .LVU592
	.uleb128 0
.LLST47:
	.quad	.LVL141
	.quad	.LVL142-1
	.value	0x1
	.byte	0x54
	.quad	.LVL142-1
	.quad	.LVL152
	.value	0x1
	.byte	0x5c
	.quad	.LVL152
	.quad	.LVL153
	.value	0x1
	.byte	0x50
	.quad	.LVL153
	.quad	.LVL168
	.value	0x1
	.byte	0x5c
	.quad	.LVL168
	.quad	.LVL169
	.value	0x1
	.byte	0x50
	.quad	.LVL169
	.quad	.LVL174
	.value	0x1
	.byte	0x5c
	.quad	.LVL176
	.quad	.LFE143
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS48:
	.uleb128 .LVU549
	.uleb128 .LVU592
	.uleb128 .LVU593
	.uleb128 .LVU599
.LLST48:
	.quad	.LVL166
	.quad	.LVL176
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL177
	.quad	.LVL181
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LVUS49:
	.uleb128 .LVU471
	.uleb128 .LVU479
	.uleb128 .LVU479
	.uleb128 .LVU494
	.uleb128 .LVU494
	.uleb128 .LVU497
	.uleb128 .LVU497
	.uleb128 .LVU504
	.uleb128 .LVU504
	.uleb128 0
.LLST49:
	.quad	.LVL141
	.quad	.LVL143
	.value	0xa
	.byte	0x3
	.quad	parabuf+5000
	.byte	0x9f
	.quad	.LVL143
	.quad	.LVL146
	.value	0x1
	.byte	0x53
	.quad	.LVL146
	.quad	.LVL147
	.value	0xa
	.byte	0x3
	.quad	parabuf+5000
	.byte	0x9f
	.quad	.LVL147
	.quad	.LVL154
	.value	0x1
	.byte	0x53
	.quad	.LVL154
	.quad	.LFE143
	.value	0xa
	.byte	0x3
	.quad	parabuf+5000
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS50:
	.uleb128 .LVU472
	.uleb128 .LVU569
	.uleb128 .LVU569
	.uleb128 .LVU573
	.uleb128 .LVU573
	.uleb128 .LVU578
	.uleb128 .LVU578
	.uleb128 .LVU582
	.uleb128 .LVU582
	.uleb128 .LVU594
	.uleb128 .LVU594
	.uleb128 .LVU596
	.uleb128 .LVU596
	.uleb128 0
.LLST50:
	.quad	.LVL141
	.quad	.LVL170
	.value	0xa
	.byte	0x3
	.quad	unused_word_type+39920
	.byte	0x9f
	.quad	.LVL170
	.quad	.LVL171
	.value	0x1
	.byte	0x54
	.quad	.LVL171
	.quad	.LVL172
	.value	0xa
	.byte	0x3
	.quad	unused_word_type+39920
	.byte	0x9f
	.quad	.LVL172
	.quad	.LVL173
	.value	0x1
	.byte	0x54
	.quad	.LVL173
	.quad	.LVL178
	.value	0xa
	.byte	0x3
	.quad	unused_word_type+39920
	.byte	0x9f
	.quad	.LVL178
	.quad	.LVL180-1
	.value	0x1
	.byte	0x54
	.quad	.LVL180-1
	.quad	.LFE143
	.value	0xa
	.byte	0x3
	.quad	unused_word_type+39920
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS51:
	.uleb128 .LVU519
	.uleb128 .LVU525
	.uleb128 .LVU525
	.uleb128 .LVU546
	.uleb128 .LVU592
	.uleb128 .LVU593
	.uleb128 .LVU599
	.uleb128 0
.LLST51:
	.quad	.LVL155
	.quad	.LVL156-1
	.value	0x9
	.byte	0x3
	.quad	word_limit
	.quad	.LVL156-1
	.quad	.LVL165
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL176
	.quad	.LVL177
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL181
	.quad	.LFE143
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS52:
	.uleb128 .LVU521
	.uleb128 .LVU542
	.uleb128 .LVU592
	.uleb128 .LVU593
	.uleb128 .LVU599
	.uleb128 0
.LLST52:
	.quad	.LVL155
	.quad	.LVL164
	.value	0x1
	.byte	0x53
	.quad	.LVL176
	.quad	.LVL177
	.value	0x1
	.byte	0x53
	.quad	.LVL181
	.quad	.LFE143
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS53:
	.uleb128 .LVU522
	.uleb128 .LVU536
	.uleb128 .LVU536
	.uleb128 .LVU537
	.uleb128 .LVU537
	.uleb128 .LVU539
	.uleb128 .LVU592
	.uleb128 .LVU593
	.uleb128 .LVU599
	.uleb128 0
.LLST53:
	.quad	.LVL155
	.quad	.LVL159
	.value	0x1
	.byte	0x56
	.quad	.LVL159
	.quad	.LVL160
	.value	0x1
	.byte	0x50
	.quad	.LVL160
	.quad	.LVL162
	.value	0x1
	.byte	0x56
	.quad	.LVL176
	.quad	.LVL177
	.value	0x1
	.byte	0x50
	.quad	.LVL181
	.quad	.LFE143
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS54:
	.uleb128 .LVU523
	.uleb128 .LVU525
	.uleb128 .LVU527
	.uleb128 .LVU530
.LLST54:
	.quad	.LVL155
	.quad	.LVL156-1
	.value	0x2
	.byte	0x76
	.sleb128 0
	.quad	.LVL157
	.quad	.LVL158
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS55:
	.uleb128 .LVU483
	.uleb128 .LVU488
	.uleb128 .LVU500
	.uleb128 .LVU501
.LLST55:
	.quad	.LVL144
	.quad	.LVL145
	.value	0x1
	.byte	0x5f
	.quad	.LVL150
	.quad	.LVL152
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS56:
	.uleb128 0
	.uleb128 .LVU610
	.uleb128 .LVU610
	.uleb128 .LVU675
	.uleb128 .LVU675
	.uleb128 .LVU676
	.uleb128 .LVU676
	.uleb128 0
.LLST56:
	.quad	.LVL182
	.quad	.LVL183-1
	.value	0x1
	.byte	0x55
	.quad	.LVL183-1
	.quad	.LVL196
	.value	0x1
	.byte	0x53
	.quad	.LVL196
	.quad	.LVL197
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL197
	.quad	.LFE138
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS57:
	.uleb128 .LVU621
	.uleb128 .LVU673
	.uleb128 .LVU676
	.uleb128 .LVU774
	.uleb128 .LVU777
	.uleb128 0
.LLST57:
	.quad	.LVL185
	.quad	.LVL195
	.value	0x1
	.byte	0x53
	.quad	.LVL197
	.quad	.LVL227
	.value	0x1
	.byte	0x53
	.quad	.LVL230
	.quad	.LFE138
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS58:
	.uleb128 .LVU626
	.uleb128 .LVU627
	.uleb128 .LVU627
	.uleb128 .LVU669
	.uleb128 .LVU676
	.uleb128 .LVU689
	.uleb128 .LVU689
	.uleb128 .LVU691
	.uleb128 .LVU691
	.uleb128 .LVU699
	.uleb128 .LVU700
	.uleb128 .LVU703
	.uleb128 .LVU710
	.uleb128 .LVU711
	.uleb128 .LVU711
	.uleb128 .LVU714
	.uleb128 .LVU738
	.uleb128 .LVU753
	.uleb128 .LVU753
	.uleb128 .LVU757
	.uleb128 .LVU757
	.uleb128 .LVU774
	.uleb128 .LVU777
	.uleb128 .LVU782
	.uleb128 .LVU782
	.uleb128 .LVU784
	.uleb128 .LVU784
	.uleb128 .LVU785
	.uleb128 .LVU785
	.uleb128 .LVU812
	.uleb128 .LVU813
	.uleb128 .LVU817
	.uleb128 .LVU817
	.uleb128 .LVU831
	.uleb128 .LVU834
	.uleb128 .LVU838
	.uleb128 .LVU838
	.uleb128 .LVU853
	.uleb128 .LVU854
	.uleb128 .LVU858
	.uleb128 .LVU858
	.uleb128 .LVU861
	.uleb128 .LVU862
	.uleb128 0
.LLST58:
	.quad	.LVL186
	.quad	.LVL186
	.value	0x9
	.byte	0x3
	.quad	next_char
	.quad	.LVL186
	.quad	.LVL194
	.value	0x1
	.byte	0x56
	.quad	.LVL197
	.quad	.LVL201
	.value	0x1
	.byte	0x56
	.quad	.LVL201
	.quad	.LVL202
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL202
	.quad	.LVL203
	.value	0x1
	.byte	0x56
	.quad	.LVL203
	.quad	.LVL204
	.value	0x1
	.byte	0x56
	.quad	.LVL207
	.quad	.LVL208
	.value	0x1
	.byte	0x50
	.quad	.LVL208
	.quad	.LVL210
	.value	0x1
	.byte	0x56
	.quad	.LVL220
	.quad	.LVL222
	.value	0x1
	.byte	0x56
	.quad	.LVL222
	.quad	.LVL223
	.value	0x1
	.byte	0x50
	.quad	.LVL223
	.quad	.LVL227
	.value	0x1
	.byte	0x54
	.quad	.LVL230
	.quad	.LVL233
	.value	0x1
	.byte	0x56
	.quad	.LVL233
	.quad	.LVL234
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	.LVL234
	.quad	.LVL235
	.value	0x1
	.byte	0x50
	.quad	.LVL235
	.quad	.LVL241-1
	.value	0x1
	.byte	0x54
	.quad	.LVL242
	.quad	.LVL243
	.value	0x1
	.byte	0x50
	.quad	.LVL243
	.quad	.LVL246-1
	.value	0x1
	.byte	0x54
	.quad	.LVL247
	.quad	.LVL248
	.value	0x1
	.byte	0x50
	.quad	.LVL248
	.quad	.LVL251-1
	.value	0x1
	.byte	0x54
	.quad	.LVL252
	.quad	.LVL253
	.value	0x1
	.byte	0x50
	.quad	.LVL253
	.quad	.LVL255
	.value	0x1
	.byte	0x54
	.quad	.LVL256
	.quad	.LFE138
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS59:
	.uleb128 .LVU632
	.uleb128 .LVU669
	.uleb128 .LVU676
	.uleb128 .LVU687
	.uleb128 .LVU692
	.uleb128 .LVU699
	.uleb128 .LVU711
	.uleb128 .LVU721
	.uleb128 .LVU722
	.uleb128 .LVU735
	.uleb128 .LVU777
	.uleb128 .LVU780
	.uleb128 .LVU862
	.uleb128 0
.LLST59:
	.quad	.LVL187
	.quad	.LVL194
	.value	0x1
	.byte	0x56
	.quad	.LVL197
	.quad	.LVL201
	.value	0x1
	.byte	0x56
	.quad	.LVL202
	.quad	.LVL203
	.value	0x1
	.byte	0x56
	.quad	.LVL208
	.quad	.LVL212
	.value	0x1
	.byte	0x56
	.quad	.LVL213
	.quad	.LVL217
	.value	0x1
	.byte	0x56
	.quad	.LVL230
	.quad	.LVL233
	.value	0x1
	.byte	0x56
	.quad	.LVL256
	.quad	.LFE138
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS60:
	.uleb128 .LVU632
	.uleb128 .LVU669
	.uleb128 .LVU676
	.uleb128 .LVU689
	.uleb128 .LVU692
	.uleb128 .LVU700
	.uleb128 .LVU711
	.uleb128 .LVU736
	.uleb128 .LVU777
	.uleb128 .LVU782
	.uleb128 .LVU862
	.uleb128 0
.LLST60:
	.quad	.LVL187
	.quad	.LVL194
	.value	0x1
	.byte	0x53
	.quad	.LVL197
	.quad	.LVL201
	.value	0x1
	.byte	0x53
	.quad	.LVL202
	.quad	.LVL203
	.value	0x1
	.byte	0x53
	.quad	.LVL208
	.quad	.LVL218
	.value	0x1
	.byte	0x53
	.quad	.LVL230
	.quad	.LVL233
	.value	0x1
	.byte	0x53
	.quad	.LVL256
	.quad	.LFE138
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS61:
	.uleb128 .LVU642
	.uleb128 .LVU669
	.uleb128 .LVU680
	.uleb128 .LVU689
	.uleb128 .LVU711
	.uleb128 .LVU736
	.uleb128 .LVU777
	.uleb128 .LVU782
	.uleb128 .LVU866
	.uleb128 0
.LLST61:
	.quad	.LVL189
	.quad	.LVL194
	.value	0x1
	.byte	0x5f
	.quad	.LVL199
	.quad	.LVL201
	.value	0x1
	.byte	0x5f
	.quad	.LVL208
	.quad	.LVL218
	.value	0x1
	.byte	0x5f
	.quad	.LVL230
	.quad	.LVL233
	.value	0x1
	.byte	0x5f
	.quad	.LVL258
	.quad	.LFE138
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS62:
	.uleb128 .LVU645
	.uleb128 .LVU646
	.uleb128 .LVU658
	.uleb128 .LVU661
.LLST62:
	.quad	.LVL190
	.quad	.LVL191
	.value	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL192
	.quad	.LVL193-1
	.value	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS63:
	.uleb128 .LVU684
	.uleb128 .LVU687
	.uleb128 .LVU779
	.uleb128 .LVU780
.LLST63:
	.quad	.LVL200
	.quad	.LVL201
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL232
	.quad	.LVL233
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS64:
	.uleb128 .LVU714
	.uleb128 .LVU715
	.uleb128 .LVU725
	.uleb128 .LVU729
.LLST64:
	.quad	.LVL210
	.quad	.LVL211
	.value	0x1
	.byte	0x56
	.quad	.LVL214
	.quad	.LVL215
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS65:
	.uleb128 .LVU717
	.uleb128 .LVU722
	.uleb128 .LVU731
	.uleb128 .LVU736
.LLST65:
	.quad	.LVL211
	.quad	.LVL213
	.value	0x1
	.byte	0x53
	.quad	.LVL215
	.quad	.LVL218
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS66:
	.uleb128 .LVU704
	.uleb128 .LVU707
	.uleb128 .LVU736
	.uleb128 .LVU738
.LLST66:
	.quad	.LVL204
	.quad	.LVL205
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	.LVL218
	.quad	.LVL220
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS67:
	.uleb128 .LVU754
	.uleb128 .LVU757
	.uleb128 .LVU784
	.uleb128 .LVU785
	.uleb128 .LVU785
	.uleb128 .LVU789
.LLST67:
	.quad	.LVL222
	.quad	.LVL223
	.value	0x1
	.byte	0x50
	.quad	.LVL234
	.quad	.LVL235
	.value	0x1
	.byte	0x50
	.quad	.LVL235
	.quad	.LVL236
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS68:
	.uleb128 .LVU764
	.uleb128 .LVU767
	.uleb128 .LVU838
	.uleb128 .LVU842
.LLST68:
	.quad	.LVL225
	.quad	.LVL226
	.value	0x1
	.byte	0x54
	.quad	.LVL248
	.quad	.LVL249
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS69:
	.uleb128 .LVU793
	.uleb128 .LVU800
.LLST69:
	.quad	.LVL237
	.quad	.LVL238
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS70:
	.uleb128 .LVU802
	.uleb128 .LVU807
	.uleb128 .LVU814
	.uleb128 .LVU817
	.uleb128 .LVU817
	.uleb128 .LVU818
.LLST70:
	.quad	.LVL239
	.quad	.LVL240
	.value	0x1
	.byte	0x54
	.quad	.LVL242
	.quad	.LVL243
	.value	0x1
	.byte	0x50
	.quad	.LVL243
	.quad	.LVL244
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS71:
	.uleb128 .LVU820
	.uleb128 .LVU827
	.uleb128 .LVU835
	.uleb128 .LVU838
.LLST71:
	.quad	.LVL244
	.quad	.LVL245
	.value	0x1
	.byte	0x54
	.quad	.LVL247
	.quad	.LVL248
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS72:
	.uleb128 .LVU842
	.uleb128 .LVU848
	.uleb128 .LVU855
	.uleb128 .LVU858
	.uleb128 .LVU858
	.uleb128 .LVU859
.LLST72:
	.quad	.LVL249
	.quad	.LVL250
	.value	0x1
	.byte	0x54
	.quad	.LVL252
	.quad	.LVL253
	.value	0x1
	.byte	0x50
	.quad	.LVL253
	.quad	.LVL254
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS83:
	.uleb128 0
	.uleb128 .LVU1009
	.uleb128 .LVU1009
	.uleb128 .LVU1107
	.uleb128 .LVU1107
	.uleb128 .LVU1111
	.uleb128 .LVU1111
	.uleb128 .LVU1177
	.uleb128 .LVU1178
	.uleb128 0
.LLST83:
	.quad	.LVL321
	.quad	.LVL323
	.value	0x1
	.byte	0x55
	.quad	.LVL323
	.quad	.LVL349
	.value	0x1
	.byte	0x5c
	.quad	.LVL349
	.quad	.LVL351
	.value	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.quad	.LVL351
	.quad	.LVL376
	.value	0x1
	.byte	0x5c
	.quad	.LVL377
	.quad	.LFE136
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS84:
	.uleb128 0
	.uleb128 .LVU1010
	.uleb128 .LVU1010
	.uleb128 .LVU1108
	.uleb128 .LVU1108
	.uleb128 .LVU1110
	.uleb128 .LVU1110
	.uleb128 .LVU1176
	.uleb128 .LVU1178
	.uleb128 0
.LLST84:
	.quad	.LVL321
	.quad	.LVL324-1
	.value	0x1
	.byte	0x54
	.quad	.LVL324-1
	.quad	.LVL350
	.value	0x1
	.byte	0x56
	.quad	.LVL350
	.quad	.LVL351
	.value	0x3
	.byte	0x76
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL351
	.quad	.LVL375
	.value	0x1
	.byte	0x56
	.quad	.LVL377
	.quad	.LFE136
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS85:
	.uleb128 .LVU1037
	.uleb128 .LVU1039
	.uleb128 .LVU1039
	.uleb128 .LVU1053
	.uleb128 .LVU1085
	.uleb128 .LVU1092
	.uleb128 .LVU1092
	.uleb128 .LVU1096
	.uleb128 .LVU1096
	.uleb128 .LVU1098
	.uleb128 .LVU1098
	.uleb128 .LVU1100
	.uleb128 .LVU1100
	.uleb128 .LVU1100
	.uleb128 .LVU1112
	.uleb128 .LVU1116
	.uleb128 .LVU1116
	.uleb128 .LVU1138
	.uleb128 .LVU1167
	.uleb128 .LVU1171
	.uleb128 .LVU1184
	.uleb128 .LVU1187
	.uleb128 .LVU1187
	.uleb128 .LVU1195
	.uleb128 .LVU1195
	.uleb128 .LVU1197
	.uleb128 .LVU1197
	.uleb128 0
.LLST85:
	.quad	.LVL332
	.quad	.LVL333
	.value	0x1
	.byte	0x50
	.quad	.LVL333
	.quad	.LVL335
	.value	0x1
	.byte	0x5f
	.quad	.LVL341
	.quad	.LVL343
	.value	0x1
	.byte	0x5f
	.quad	.LVL343
	.quad	.LVL344
	.value	0x1
	.byte	0x50
	.quad	.LVL344
	.quad	.LVL346
	.value	0x1
	.byte	0x5f
	.quad	.LVL346
	.quad	.LVL347-1
	.value	0x1
	.byte	0x50
	.quad	.LVL347-1
	.quad	.LVL347
	.value	0x1
	.byte	0x5f
	.quad	.LVL352
	.quad	.LVL353-1
	.value	0x1
	.byte	0x50
	.quad	.LVL353-1
	.quad	.LVL358
	.value	0x1
	.byte	0x5f
	.quad	.LVL372
	.quad	.LVL373
	.value	0x1
	.byte	0x5f
	.quad	.LVL383
	.quad	.LVL384
	.value	0x1
	.byte	0x50
	.quad	.LVL384
	.quad	.LVL385
	.value	0x1
	.byte	0x5f
	.quad	.LVL385
	.quad	.LVL386-1
	.value	0x1
	.byte	0x50
	.quad	.LVL386-1
	.quad	.LFE136
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS86:
	.uleb128 .LVU1001
	.uleb128 .LVU1138
	.uleb128 .LVU1138
	.uleb128 .LVU1164
	.uleb128 .LVU1166
	.uleb128 .LVU1167
	.uleb128 .LVU1167
	.uleb128 .LVU1171
	.uleb128 .LVU1171
	.uleb128 .LVU1173
	.uleb128 .LVU1178
	.uleb128 .LVU1184
	.uleb128 .LVU1184
	.uleb128 0
.LLST86:
	.quad	.LVL322
	.quad	.LVL358
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL358
	.quad	.LVL370
	.value	0x1
	.byte	0x53
	.quad	.LVL371
	.quad	.LVL372
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL372
	.quad	.LVL373
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL373
	.quad	.LVL374
	.value	0x1
	.byte	0x53
	.quad	.LVL377
	.quad	.LVL383
	.value	0x1
	.byte	0x53
	.quad	.LVL383
	.quad	.LFE136
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS87:
	.uleb128 .LVU1002
	.uleb128 .LVU1032
	.uleb128 .LVU1033
	.uleb128 .LVU1100
	.uleb128 .LVU1100
	.uleb128 .LVU1104
	.uleb128 .LVU1104
	.uleb128 .LVU1136
	.uleb128 .LVU1167
	.uleb128 .LVU1171
	.uleb128 .LVU1184
	.uleb128 0
.LLST87:
	.quad	.LVL322
	.quad	.LVL329
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL330
	.quad	.LVL347
	.value	0x1
	.byte	0x5d
	.quad	.LVL347
	.quad	.LVL348
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL348
	.quad	.LVL357
	.value	0x1
	.byte	0x5d
	.quad	.LVL372
	.quad	.LVL373
	.value	0x1
	.byte	0x5d
	.quad	.LVL383
	.quad	.LFE136
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS88:
	.uleb128 .LVU1003
	.uleb128 .LVU1033
	.uleb128 .LVU1033
	.uleb128 .LVU1100
	.uleb128 .LVU1100
	.uleb128 .LVU1112
	.uleb128 .LVU1112
	.uleb128 .LVU1138
	.uleb128 .LVU1167
	.uleb128 .LVU1171
	.uleb128 .LVU1184
	.uleb128 0
.LLST88:
	.quad	.LVL322
	.quad	.LVL330
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL330
	.quad	.LVL347
	.value	0x1
	.byte	0x5e
	.quad	.LVL347
	.quad	.LVL352
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL352
	.quad	.LVL358
	.value	0x1
	.byte	0x5e
	.quad	.LVL372
	.quad	.LVL373
	.value	0x1
	.byte	0x5e
	.quad	.LVL383
	.quad	.LFE136
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS91:
	.uleb128 .LVU1138
	.uleb128 .LVU1140
	.uleb128 .LVU1148
	.uleb128 .LVU1160
	.uleb128 .LVU1178
	.uleb128 .LVU1182
.LLST91:
	.quad	.LVL358
	.quad	.LVL359
	.value	0x1
	.byte	0x5e
	.quad	.LVL361
	.quad	.LVL367
	.value	0x1
	.byte	0x5e
	.quad	.LVL377
	.quad	.LVL381
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS92:
	.uleb128 .LVU1153
	.uleb128 .LVU1156
	.uleb128 .LVU1156
	.uleb128 .LVU1162
	.uleb128 .LVU1178
	.uleb128 .LVU1179
	.uleb128 .LVU1179
	.uleb128 .LVU1181
.LLST92:
	.quad	.LVL363
	.quad	.LVL364-1
	.value	0x1
	.byte	0x50
	.quad	.LVL364-1
	.quad	.LVL369
	.value	0x1
	.byte	0x5f
	.quad	.LVL377
	.quad	.LVL378-1
	.value	0x1
	.byte	0x50
	.quad	.LVL378-1
	.quad	.LVL379
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS89:
	.uleb128 .LVU1053
	.uleb128 .LVU1085
.LLST89:
	.quad	.LVL335
	.quad	.LVL341
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS90:
	.uleb128 .LVU1072
	.uleb128 .LVU1083
.LLST90:
	.quad	.LVL338
	.quad	.LVL340
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS73:
	.uleb128 0
	.uleb128 .LVU880
	.uleb128 .LVU880
	.uleb128 .LVU889
	.uleb128 .LVU889
	.uleb128 .LVU891
	.uleb128 .LVU891
	.uleb128 0
.LLST73:
	.quad	.LVL260
	.quad	.LVL261
	.value	0x1
	.byte	0x55
	.quad	.LVL261
	.quad	.LVL266
	.value	0x1
	.byte	0x56
	.quad	.LVL266
	.quad	.LVL267
	.value	0x1
	.byte	0x55
	.quad	.LVL267
	.quad	.LFE135
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS74:
	.uleb128 .LVU883
	.uleb128 .LVU886
	.uleb128 .LVU886
	.uleb128 .LVU887
.LLST74:
	.quad	.LVL263
	.quad	.LVL264
	.value	0x1
	.byte	0x50
	.quad	.LVL264
	.quad	.LVL265-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS75:
	.uleb128 .LVU883
	.uleb128 .LVU887
.LLST75:
	.quad	.LVL263
	.quad	.LVL265-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS76:
	.uleb128 .LVU916
	.uleb128 .LVU932
	.uleb128 .LVU932
	.uleb128 .LVU947
	.uleb128 .LVU968
	.uleb128 .LVU996
.LLST76:
	.quad	.LVL286
	.quad	.LVL289
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	.LVL289
	.quad	.LVL297
	.value	0x1
	.byte	0x5c
	.quad	.LVL306
	.quad	.LVL318
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS77:
	.uleb128 .LVU917
	.uleb128 .LVU921
	.uleb128 .LVU921
	.uleb128 .LVU934
	.uleb128 .LVU968
	.uleb128 .LVU970
.LLST77:
	.quad	.LVL286
	.quad	.LVL287
	.value	0x1
	.byte	0x57
	.quad	.LVL287
	.quad	.LVL290-1
	.value	0x1
	.byte	0x50
	.quad	.LVL306
	.quad	.LVL307-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS78:
	.uleb128 .LVU943
	.uleb128 .LVU946
	.uleb128 .LVU979
	.uleb128 .LVU982
.LLST78:
	.quad	.LVL295
	.quad	.LVL296-1
	.value	0x1
	.byte	0x50
	.quad	.LVL312
	.quad	.LVL313-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS79:
	.uleb128 .LVU936
	.uleb128 .LVU939
	.uleb128 .LVU939
	.uleb128 .LVU940
	.uleb128 .LVU972
	.uleb128 .LVU975
	.uleb128 .LVU975
	.uleb128 .LVU976
.LLST79:
	.quad	.LVL291
	.quad	.LVL292
	.value	0x1
	.byte	0x50
	.quad	.LVL292
	.quad	.LVL293-1
	.value	0x1
	.byte	0x54
	.quad	.LVL308
	.quad	.LVL309
	.value	0x1
	.byte	0x50
	.quad	.LVL309
	.quad	.LVL310-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS80:
	.uleb128 .LVU951
	.uleb128 .LVU954
	.uleb128 .LVU954
	.uleb128 .LVU957
	.uleb128 .LVU987
	.uleb128 .LVU990
	.uleb128 .LVU990
	.uleb128 .LVU993
.LLST80:
	.quad	.LVL299
	.quad	.LVL300
	.value	0x1
	.byte	0x50
	.quad	.LVL300
	.quad	.LVL301-1
	.value	0x1
	.byte	0x54
	.quad	.LVL315
	.quad	.LVL316
	.value	0x1
	.byte	0x50
	.quad	.LVL316
	.quad	.LVL317-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS81:
	.uleb128 .LVU962
	.uleb128 .LVU965
	.uleb128 .LVU965
	.uleb128 .LVU966
.LLST81:
	.quad	.LVL303
	.quad	.LVL304
	.value	0x1
	.byte	0x50
	.quad	.LVL304
	.quad	.LVL305-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS82:
	.uleb128 .LVU895
	.uleb128 .LVU898
	.uleb128 .LVU898
	.uleb128 .LVU899
.LLST82:
	.quad	.LVL269
	.quad	.LVL270
	.value	0x1
	.byte	0x50
	.quad	.LVL270
	.quad	.LVL271-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 .LVU286
	.uleb128 0
.LLST26:
	.quad	.LVL77
	.quad	.LFE139
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 .LVU295
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 .LVU315
	.uleb128 .LVU318
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 0
.LLST27:
	.quad	.LVL78
	.quad	.LVL81
	.value	0x1
	.byte	0x55
	.quad	.LVL81
	.quad	.LVL86
	.value	0x1
	.byte	0x53
	.quad	.LVL88
	.quad	.LVL90
	.value	0x1
	.byte	0x53
	.quad	.LVL90
	.quad	.LFE156
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 .LVU297
	.uleb128 .LVU300
	.uleb128 .LVU312
	.uleb128 .LVU317
	.uleb128 .LVU317
	.uleb128 .LVU318
	.uleb128 .LVU320
	.uleb128 0
.LLST28:
	.quad	.LVL79
	.quad	.LVL80
	.value	0x2
	.byte	0x74
	.sleb128 0
	.quad	.LVL85
	.quad	.LVL87
	.value	0x2
	.byte	0x7c
	.sleb128 0
	.quad	.LVL87
	.quad	.LVL88
	.value	0x1
	.byte	0x50
	.quad	.LVL90
	.quad	.LFE156
	.value	0x2
	.byte	0x74
	.sleb128 0
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 .LVU305
	.uleb128 .LVU308
	.uleb128 .LVU318
	.uleb128 .LVU319
.LLST29:
	.quad	.LVL83
	.quad	.LVL84
	.value	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL88
	.quad	.LVL89-1
	.value	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
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
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB75
	.quad	.LBE75
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB80
	.quad	.LBE80
	.quad	0
	.quad	0
	.quad	.LBB81
	.quad	.LBE81
	.quad	.LBB84
	.quad	.LBE84
	.quad	0
	.quad	0
	.quad	.LBB85
	.quad	.LBE85
	.quad	.LBB88
	.quad	.LBE88
	.quad	0
	.quad	0
	.quad	.LBB89
	.quad	.LBE89
	.quad	.LBB93
	.quad	.LBE93
	.quad	.LBB103
	.quad	.LBE103
	.quad	0
	.quad	0
	.quad	.LBB94
	.quad	.LBE94
	.quad	.LBB101
	.quad	.LBE101
	.quad	.LBB102
	.quad	.LBE102
	.quad	0
	.quad	0
	.quad	.LBB95
	.quad	.LBE95
	.quad	.LBB100
	.quad	.LBE100
	.quad	0
	.quad	0
	.quad	.LBB96
	.quad	.LBE96
	.quad	.LBB99
	.quad	.LBE99
	.quad	0
	.quad	0
	.quad	.LBB104
	.quad	.LBE104
	.quad	.LBB111
	.quad	.LBE111
	.quad	0
	.quad	0
	.quad	.LBB107
	.quad	.LBE107
	.quad	.LBB110
	.quad	.LBE110
	.quad	0
	.quad	0
	.quad	.LBB116
	.quad	.LBE116
	.quad	.LBB120
	.quad	.LBE120
	.quad	.LBB121
	.quad	.LBE121
	.quad	0
	.quad	0
	.quad	.LBB122
	.quad	.LBE122
	.quad	.LBB127
	.quad	.LBE127
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB129
	.quad	.LBE129
	.quad	0
	.quad	0
	.quad	.LBB130
	.quad	.LBE130
	.quad	.LBB133
	.quad	.LBE133
	.quad	0
	.quad	0
	.quad	.LBB134
	.quad	.LBE134
	.quad	.LBB139
	.quad	.LBE139
	.quad	.LBB140
	.quad	.LBE140
	.quad	.LBB141
	.quad	.LBE141
	.quad	0
	.quad	0
	.quad	.LBB146
	.quad	.LBE146
	.quad	.LBB160
	.quad	.LBE160
	.quad	.LBB161
	.quad	.LBE161
	.quad	.LBB162
	.quad	.LBE162
	.quad	.LBB163
	.quad	.LBE163
	.quad	0
	.quad	0
	.quad	.LBB152
	.quad	.LBE152
	.quad	.LBB157
	.quad	.LBE157
	.quad	.LBB158
	.quad	.LBE158
	.quad	.LBB159
	.quad	.LBE159
	.quad	0
	.quad	0
	.quad	.LBB190
	.quad	.LBE190
	.quad	.LBB256
	.quad	.LBE256
	.quad	.LBB257
	.quad	.LBE257
	.quad	.LBB258
	.quad	.LBE258
	.quad	.LBB259
	.quad	.LBE259
	.quad	0
	.quad	0
	.quad	.LBB192
	.quad	.LBE192
	.quad	.LBB217
	.quad	.LBE217
	.quad	.LBB218
	.quad	.LBE218
	.quad	.LBB222
	.quad	.LBE222
	.quad	.LBB232
	.quad	.LBE232
	.quad	.LBB251
	.quad	.LBE251
	.quad	0
	.quad	0
	.quad	.LBB194
	.quad	.LBE194
	.quad	.LBB198
	.quad	.LBE198
	.quad	.LBB199
	.quad	.LBE199
	.quad	0
	.quad	0
	.quad	.LBB200
	.quad	.LBE200
	.quad	.LBB211
	.quad	.LBE211
	.quad	0
	.quad	0
	.quad	.LBB203
	.quad	.LBE203
	.quad	.LBB209
	.quad	.LBE209
	.quad	0
	.quad	0
	.quad	.LBB206
	.quad	.LBE206
	.quad	.LBB210
	.quad	.LBE210
	.quad	0
	.quad	0
	.quad	.LBB219
	.quad	.LBE219
	.quad	.LBB223
	.quad	.LBE223
	.quad	0
	.quad	0
	.quad	.LBB224
	.quad	.LBE224
	.quad	.LBB228
	.quad	.LBE228
	.quad	.LBB233
	.quad	.LBE233
	.quad	0
	.quad	0
	.quad	.LBB229
	.quad	.LBE229
	.quad	.LBB246
	.quad	.LBE246
	.quad	0
	.quad	0
	.quad	.LBB236
	.quad	.LBE236
	.quad	.LBB239
	.quad	.LBE239
	.quad	0
	.quad	0
	.quad	.LBB240
	.quad	.LBE240
	.quad	.LBB244
	.quad	.LBE244
	.quad	.LBB245
	.quad	.LBE245
	.quad	0
	.quad	0
	.quad	.LBB247
	.quad	.LBE247
	.quad	.LBB250
	.quad	.LBE250
	.quad	0
	.quad	0
	.quad	.LBB276
	.quad	.LBE276
	.quad	.LBB279
	.quad	.LBE279
	.quad	0
	.quad	0
	.quad	.LBB280
	.quad	.LBE280
	.quad	.LBB315
	.quad	.LBE315
	.quad	0
	.quad	0
	.quad	.LBB282
	.quad	.LBE282
	.quad	.LBB287
	.quad	.LBE287
	.quad	.LBB301
	.quad	.LBE301
	.quad	.LBB302
	.quad	.LBE302
	.quad	0
	.quad	0
	.quad	.LBB288
	.quad	.LBE288
	.quad	.LBB295
	.quad	.LBE295
	.quad	.LBB296
	.quad	.LBE296
	.quad	.LBB303
	.quad	.LBE303
	.quad	.LBB304
	.quad	.LBE304
	.quad	.LBB305
	.quad	.LBE305
	.quad	0
	.quad	0
	.quad	.LBB297
	.quad	.LBE297
	.quad	.LBB300
	.quad	.LBE300
	.quad	0
	.quad	0
	.quad	.LBB307
	.quad	.LBE307
	.quad	.LBB310
	.quad	.LBE310
	.quad	0
	.quad	0
	.quad	.LBB322
	.quad	.LBE322
	.quad	.LBB326
	.quad	.LBE326
	.quad	.LBB327
	.quad	.LBE327
	.quad	.LBB328
	.quad	.LBE328
	.quad	0
	.quad	0
	.quad	.LBB323
	.quad	.LBE323
	.quad	.LBB324
	.quad	.LBE324
	.quad	.LBB325
	.quad	.LBE325
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB136
	.quad	.LFE136
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF182:
	.string	"__stream"
.LASF7:
	.string	"size_t"
.LASF184:
	.string	"put_word"
.LASF173:
	.string	"start"
.LASF95:
	.string	"GETOPT_HELP_CHAR"
.LASF90:
	.string	"_ISgraph"
.LASF147:
	.string	"parabuf"
.LASF220:
	.string	"__fmt"
.LASF169:
	.string	"line_cost"
.LASF43:
	.string	"_IO_codecvt"
.LASF196:
	.string	"set_prefix"
.LASF23:
	.string	"_IO_save_end"
.LASF149:
	.string	"unused_word_type"
.LASF132:
	.string	"best_cost"
.LASF73:
	.string	"_sys_siglist"
.LASF54:
	.string	"time_t"
.LASF16:
	.string	"_IO_write_base"
.LASF253:
	.string	"strncmp"
.LASF114:
	.string	"error_one_per_line"
.LASF32:
	.string	"_lock"
.LASF236:
	.string	"quotearg_n_style_colon"
.LASF144:
	.string	"goal_width"
.LASF199:
	.string	"optchar"
.LASF21:
	.string	"_IO_save_base"
.LASF192:
	.string	"copy_rest"
.LASF226:
	.string	"__overflow"
.LASF239:
	.string	"quotearg_style"
.LASF166:
	.string	"finish"
.LASF222:
	.string	"putchar_unlocked"
.LASF25:
	.string	"_chain"
.LASF29:
	.string	"_cur_column"
.LASF48:
	.string	"sys_nerr"
.LASF252:
	.string	"__printf_chk"
.LASF50:
	.string	"_sys_nerr"
.LASF242:
	.string	"set_program_name"
.LASF165:
	.string	"put_paragraph"
.LASF75:
	.string	"__environ"
.LASF135:
	.string	"crown"
.LASF6:
	.string	"long int"
.LASF249:
	.string	"exit"
.LASF218:
	.string	"memmove"
.LASF230:
	.string	"strchr"
.LASF64:
	.string	"has_arg"
.LASF251:
	.string	"__fprintf_chk"
.LASF42:
	.string	"_IO_marker"
.LASF123:
	.string	"Word"
.LASF204:
	.string	"main"
.LASF260:
	.string	"__memmove_chk"
.LASF179:
	.string	"shift"
.LASF89:
	.string	"_ISprint"
.LASF156:
	.string	"next_prefix_indent"
.LASF232:
	.string	"__assert_fail"
.LASF185:
	.string	"check_punctuation"
.LASF120:
	.string	"FADVISE_RANDOM"
.LASF4:
	.string	"signed char"
.LASF214:
	.string	"emit_stdin_note"
.LASF61:
	.string	"_IO_FILE"
.LASF68:
	.string	"__timezone"
.LASF44:
	.string	"_IO_wide_data"
.LASF238:
	.string	"error"
.LASF202:
	.string	"file"
.LASF259:
	.string	"__PRETTY_FUNCTION__"
.LASF229:
	.string	"__uflow"
.LASF152:
	.string	"prefix_indent"
.LASF254:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF110:
	.string	"quoting_style_args"
.LASF76:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF36:
	.string	"_freeres_list"
.LASF243:
	.string	"setlocale"
.LASF207:
	.string	"emit_ancillary_info"
.LASF113:
	.string	"error_message_count"
.LASF176:
	.string	"saved_length"
.LASF66:
	.string	"__tzname"
.LASF134:
	.string	"_Bool"
.LASF116:
	.string	"FADVISE_SEQUENTIAL"
.LASF161:
	.string	"put_space"
.LASF11:
	.string	"char"
.LASF168:
	.string	"cost"
.LASF219:
	.string	"printf"
.LASF181:
	.string	"__ptr"
.LASF228:
	.string	"fwrite_unlocked"
.LASF257:
	.string	"_IO_lock_t"
.LASF237:
	.string	"__errno_location"
.LASF248:
	.string	"version_etc"
.LASF71:
	.string	"timezone"
.LASF103:
	.string	"shell_escape_always_quoting_style"
.LASF13:
	.string	"_IO_read_ptr"
.LASF145:
	.string	"in_column"
.LASF45:
	.string	"stdin"
.LASF49:
	.string	"sys_errlist"
.LASF124:
	.string	"text"
.LASF24:
	.string	"_markers"
.LASF98:
	.string	"program_name"
.LASF157:
	.string	"last_line_length"
.LASF93:
	.string	"_ISpunct"
.LASF138:
	.string	"uniform"
.LASF140:
	.string	"max_width"
.LASF195:
	.string	"same_paragraph"
.LASF105:
	.string	"c_maybe_quoting_style"
.LASF227:
	.string	"fputs_unlocked"
.LASF210:
	.string	"node"
.LASF139:
	.string	"prefix"
.LASF117:
	.string	"FADVISE_NOREUSE"
.LASF77:
	.string	"program_invocation_name"
.LASF33:
	.string	"_offset"
.LASF158:
	.string	"long_options"
.LASF194:
	.string	"set_other_indent"
.LASF58:
	.string	"optind"
.LASF108:
	.string	"clocale_quoting_style"
.LASF112:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF206:
	.string	"status"
.LASF27:
	.string	"_flags2"
.LASF203:
	.string	"in_stream"
.LASF15:
	.string	"_IO_read_base"
.LASF177:
	.string	"flush_paragraph"
.LASF143:
	.string	"prefix_length"
.LASF62:
	.string	"option"
.LASF171:
	.string	"this"
.LASF40:
	.string	"_unused2"
.LASF186:
	.string	"get_space"
.LASF183:
	.string	"__cnt"
.LASF87:
	.string	"_ISxdigit"
.LASF197:
	.string	"argc"
.LASF28:
	.string	"_old_offset"
.LASF193:
	.string	"get_paragraph"
.LASF209:
	.string	"infomap"
.LASF198:
	.string	"argv"
.LASF146:
	.string	"out_column"
.LASF100:
	.string	"shell_quoting_style"
.LASF163:
	.string	"indent"
.LASF126:
	.string	"space"
.LASF191:
	.string	"same_para"
.LASF52:
	.string	"long long int"
.LASF208:
	.string	"program"
.LASF79:
	.string	"Version"
.LASF80:
	.string	"exit_failure"
.LASF55:
	.string	"_gl_cxxalias_dummy"
.LASF178:
	.string	"split_point"
.LASF83:
	.string	"_ISupper"
.LASF223:
	.string	"putc_unlocked"
.LASF104:
	.string	"c_quoting_style"
.LASF118:
	.string	"FADVISE_DONTNEED"
.LASF231:
	.string	"__ctype_b_loc"
.LASF92:
	.string	"_IScntrl"
.LASF18:
	.string	"_IO_write_end"
.LASF187:
	.string	"get_prefix"
.LASF74:
	.string	"sys_siglist"
.LASF96:
	.string	"GETOPT_VERSION_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF127:
	.string	"paren"
.LASF1:
	.string	"unsigned int"
.LASF97:
	.string	"version_etc_copyright"
.LASF111:
	.string	"quoting_style_vals"
.LASF99:
	.string	"literal_quoting_style"
.LASF69:
	.string	"tzname"
.LASF38:
	.string	"__pad5"
.LASF65:
	.string	"flag"
.LASF121:
	.string	"COST"
.LASF154:
	.string	"other_indent"
.LASF225:
	.string	"__fp"
.LASF129:
	.string	"punct"
.LASF12:
	.string	"_flags"
.LASF212:
	.string	"lc_messages"
.LASF39:
	.string	"_mode"
.LASF141:
	.string	"prefix_full_length"
.LASF261:
	.string	"__builtin___memmove_chk"
.LASF115:
	.string	"FADVISE_NORMAL"
.LASF34:
	.string	"_codecvt"
.LASF82:
	.string	"LOG10_TIMESPEC_HZ"
.LASF119:
	.string	"FADVISE_WILLNEED"
.LASF53:
	.string	"long double"
.LASF233:
	.string	"fadvise"
.LASF122:
	.string	"WORD"
.LASF170:
	.string	"base_cost"
.LASF180:
	.string	"best_break"
.LASF41:
	.string	"FILE"
.LASF174:
	.string	"wcost"
.LASF130:
	.string	"final"
.LASF247:
	.string	"getopt_long"
.LASF133:
	.string	"next_break"
.LASF85:
	.string	"_ISalpha"
.LASF164:
	.string	"endline"
.LASF60:
	.string	"optopt"
.LASF107:
	.string	"locale_quoting_style"
.LASF56:
	.string	"long long unsigned int"
.LASF125:
	.string	"length"
.LASF91:
	.string	"_ISblank"
.LASF8:
	.string	"__off_t"
.LASF255:
	.string	"src/fmt.c"
.LASF258:
	.string	"quoting_style"
.LASF94:
	.string	"_ISalnum"
.LASF78:
	.string	"program_invocation_short_name"
.LASF213:
	.string	"emit_mandatory_arg_note"
.LASF37:
	.string	"_freeres_buf"
.LASF88:
	.string	"_ISspace"
.LASF59:
	.string	"opterr"
.LASF256:
	.string	"/root/coreutils"
.LASF10:
	.string	"__time_t"
.LASF224:
	.string	"getc_unlocked"
.LASF128:
	.string	"period"
.LASF22:
	.string	"_IO_backup_base"
.LASF175:
	.string	"best"
.LASF31:
	.string	"_shortbuf"
.LASF131:
	.string	"line_length"
.LASF189:
	.string	"end_of_parabuf"
.LASF101:
	.string	"shell_always_quoting_style"
.LASF9:
	.string	"__off64_t"
.LASF234:
	.string	"fopen"
.LASF142:
	.string	"prefix_lead_space"
.LASF150:
	.string	"word_limit"
.LASF106:
	.string	"escape_quoting_style"
.LASF20:
	.string	"_IO_buf_end"
.LASF190:
	.string	"end_of_word"
.LASF151:
	.string	"tabs"
.LASF63:
	.string	"name"
.LASF221:
	.string	"fprintf"
.LASF216:
	.string	"__src"
.LASF84:
	.string	"_ISlower"
.LASF211:
	.string	"map_prog"
.LASF47:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF235:
	.string	"rpl_fclose"
.LASF205:
	.string	"usage"
.LASF246:
	.string	"atexit"
.LASF102:
	.string	"shell_escape_quoting_style"
.LASF30:
	.string	"_vtable_offset"
.LASF51:
	.string	"_sys_errlist"
.LASF153:
	.string	"first_indent"
.LASF215:
	.string	"__dest"
.LASF81:
	.string	"TIMESPEC_HZ"
.LASF172:
	.string	"fmt_paragraph"
.LASF136:
	.string	"tagged"
.LASF67:
	.string	"__daylight"
.LASF241:
	.string	"strlen"
.LASF14:
	.string	"_IO_read_end"
.LASF72:
	.string	"getdate_err"
.LASF26:
	.string	"_fileno"
.LASF245:
	.string	"textdomain"
.LASF137:
	.string	"split"
.LASF35:
	.string	"_wide_data"
.LASF159:
	.string	"space_target"
.LASF57:
	.string	"optarg"
.LASF188:
	.string	"get_line"
.LASF86:
	.string	"_ISdigit"
.LASF148:
	.string	"wptr"
.LASF240:
	.string	"dcgettext"
.LASF3:
	.string	"short unsigned int"
.LASF46:
	.string	"stdout"
.LASF160:
	.string	"tab_target"
.LASF17:
	.string	"_IO_write_ptr"
.LASF200:
	.string	"max_width_option"
.LASF250:
	.string	"xdectoumax"
.LASF201:
	.string	"goal_width_option"
.LASF155:
	.string	"next_char"
.LASF70:
	.string	"daylight"
.LASF162:
	.string	"put_line"
.LASF217:
	.string	"__len"
.LASF167:
	.string	"next"
.LASF244:
	.string	"bindtextdomain"
.LASF109:
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
