	.file	"find-mount-point.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"cannot get current directory"
.LC1:
	.string	"cannot change to directory %s"
.LC2:
	.string	"."
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"cannot stat current directory (now %s)"
	.section	.rodata.str1.1
.LC4:
	.string	".."
.LC5:
	.string	"cannot stat %s"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"failed to return to initial working directory"
	.text
	.p2align 4
	.globl	find_mount_point
	.type	find_mount_point, @function
find_mount_point:
.LVL0:
.LFB135:
	.file 1 "src/find-mount-point.c"
	.loc 1 33 1 view -0
	.cfi_startproc
	.loc 1 33 1 is_stmt 0 view .LVU1
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.loc 1 38 7 view .LVU2
	leaq	-368(%rbp), %r14
	.loc 1 33 1 view .LVU3
	pushq	%r13
	pushq	%r12
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rdi, %r12
	.loc 1 38 7 view .LVU4
	movq	%r14, %rdi
.LVL1:
	.loc 1 33 1 view .LVU5
	pushq	%rbx
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$328, %rsp
	.loc 1 33 1 view .LVU6
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	.loc 1 34 3 is_stmt 1 view .LVU7
	.loc 1 35 3 view .LVU8
	.loc 1 36 3 view .LVU9
.LVL2:
	.loc 1 38 3 view .LVU10
	.loc 1 38 7 is_stmt 0 view .LVU11
	call	save_cwd@PLT
.LVL3:
	.loc 1 38 7 view .LVU12
	movl	%eax, %r15d
	call	__errno_location@PLT
.LVL4:
	movq	%rax, %r13
	.loc 1 38 6 view .LVU13
	testl	%r15d, %r15d
	jne	.L26
	.loc 1 44 3 is_stmt 1 view .LVU14
	.loc 1 44 7 is_stmt 0 view .LVU15
	movl	24(%rbx), %eax
	andl	$61440, %eax
	.loc 1 44 6 view .LVU16
	cmpl	$16384, %eax
	je	.L27
.LBB13:
	.loc 1 57 7 is_stmt 1 view .LVU17
	.loc 1 57 20 is_stmt 0 view .LVU18
	movq	%r12, %rdi
	call	dir_name@PLT
.LVL5:
.LBB14:
	.loc 1 59 7 view .LVU19
	movq	%rax, %rdi
.LBE14:
	.loc 1 57 20 view .LVU20
	movq	%rax, %r12
.LVL6:
	.loc 1 58 7 is_stmt 1 view .LVU21
	.loc 1 59 7 view .LVU22
	.loc 1 59 7 view .LVU23
.LBB21:
	.loc 1 59 7 view .LVU24
	.loc 1 59 7 view .LVU25
	call	strlen@PLT
.LVL7:
	.loc 1 59 7 is_stmt 0 view .LVU26
	movq	%rsp, %rcx
	leaq	1(%rax), %r8
.LVL8:
	.loc 1 59 7 is_stmt 1 view .LVU27
	addq	$24, %rax
	movq	%rax, %rdx
	andq	$-4096, %rax
	subq	%rax, %rcx
	andq	$-16, %rdx
	movq	%rcx, %rax
	cmpq	%rax, %rsp
	je	.L8
.L28:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L28
.L8:
	andl	$4095, %edx
	subq	%rdx, %rsp
	testq	%rdx, %rdx
	je	.L9
	orq	$0, -8(%rsp,%rdx)
.L9:
	leaq	15(%rsp), %rdi
.LBB15:
.LBB16:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 34 10 is_stmt 0 view .LVU28
	movq	%r8, %rdx
	movq	%r12, %rsi
.LBE16:
.LBE15:
	.loc 1 59 7 view .LVU29
	andq	$-16, %rdi
.LVL9:
	.loc 1 59 7 is_stmt 1 view .LVU30
.LBB19:
.LBI15:
	.loc 2 31 1 view .LVU31
.LBB17:
	.loc 2 34 3 view .LVU32
	.loc 2 34 10 is_stmt 0 view .LVU33
	call	memcpy@PLT
.LVL10:
	.loc 2 34 10 view .LVU34
.LBE17:
.LBE19:
.LBE21:
	.loc 1 60 7 view .LVU35
	movq	%r12, %rdi
.LBB22:
.LBB20:
.LBB18:
	.loc 2 34 10 view .LVU36
	movq	%rax, %r15
.LVL11:
	.loc 2 34 10 view .LVU37
.LBE18:
.LBE20:
.LBE22:
	.loc 1 59 7 is_stmt 1 view .LVU38
	.loc 1 60 7 view .LVU39
	call	free@PLT
.LVL12:
	.loc 1 62 7 view .LVU40
	.loc 1 62 11 is_stmt 0 view .LVU41
	movq	%r15, %rdi
	call	chdir@PLT
.LVL13:
	.loc 1 62 10 view .LVU42
	testl	%eax, %eax
	js	.L29
	.loc 1 68 7 is_stmt 1 view .LVU43
.LVL14:
.LBB23:
.LBI23:
	.file 3 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.loc 3 453 1 view .LVU44
.LBB24:
	.loc 3 455 3 view .LVU45
	.loc 3 455 10 is_stmt 0 view .LVU46
	leaq	-352(%rbp), %rdx
.LVL15:
	.loc 3 455 10 view .LVU47
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	call	__xstat@PLT
.LVL16:
	.loc 3 455 10 view .LVU48
.LBE24:
.LBE23:
	.loc 1 68 10 view .LVU49
	testl	%eax, %eax
	jns	.L11
	.loc 1 70 11 is_stmt 1 view .LVU50
	movq	%r15, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL17:
	.loc 1 70 28 is_stmt 0 view .LVU51
	movl	$5, %edx
	leaq	.LC3(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 70 11 view .LVU52
	movq	%rax, %r12
.LVL18:
	.loc 1 70 28 view .LVU53
	call	dcgettext@PLT
.LVL19:
	.loc 1 70 11 view .LVU54
	movl	0(%r13), %esi
	movq	%r12, %rcx
	xorl	%edi, %edi
	.loc 1 70 28 view .LVU55
	movq	%rax, %rdx
	.loc 1 70 11 view .LVU56
	xorl	%eax, %eax
.LBE13:
	.loc 1 36 9 view .LVU57
	xorl	%r12d, %r12d
.LBB25:
	.loc 1 70 11 view .LVU58
	call	error@PLT
.LVL20:
	.loc 1 72 11 is_stmt 1 view .LVU59
	jmp	.L12
.LVL21:
	.p2align 4,,10
	.p2align 3
.L27:
	.loc 1 72 11 is_stmt 0 view .LVU60
.LBE25:
	.loc 1 47 7 is_stmt 1 view .LVU61
	.loc 1 48 7 view .LVU62
	.loc 1 47 17 is_stmt 0 view .LVU63
	movdqu	(%rbx), %xmm1
	movdqu	16(%rbx), %xmm2
	.loc 1 48 11 view .LVU64
	movq	%r12, %rdi
	.loc 1 47 17 view .LVU65
	movdqu	32(%rbx), %xmm3
	movdqu	48(%rbx), %xmm4
	movdqu	64(%rbx), %xmm5
	movdqu	80(%rbx), %xmm6
	movaps	%xmm1, -352(%rbp)
	movdqu	96(%rbx), %xmm7
	movdqu	112(%rbx), %xmm1
	movaps	%xmm2, -336(%rbp)
	movdqu	128(%rbx), %xmm2
	movaps	%xmm3, -320(%rbp)
	movaps	%xmm4, -304(%rbp)
	movaps	%xmm5, -288(%rbp)
	movaps	%xmm6, -272(%rbp)
	movaps	%xmm7, -256(%rbp)
	movaps	%xmm1, -240(%rbp)
	movaps	%xmm2, -224(%rbp)
	.loc 1 48 11 view .LVU66
	call	chdir@PLT
.LVL22:
	.loc 1 48 10 view .LVU67
	testl	%eax, %eax
	js	.L5
.LVL23:
.L11:
	.loc 1 48 10 view .LVU68
	leaq	-208(%rbp), %r12
.LBB26:
.LBB27:
.LBB28:
	.loc 3 455 10 view .LVU69
	leaq	.LC4(%rip), %rbx
.LVL24:
	.loc 3 455 10 view .LVU70
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L13:
.LBE28:
.LBE27:
	.loc 1 87 7 is_stmt 1 view .LVU71
	.loc 1 87 10 is_stmt 0 view .LVU72
	movq	-352(%rbp), %rax
	cmpq	%rax, -208(%rbp)
	jne	.L15
	.loc 1 87 41 discriminator 1 view .LVU73
	movq	-344(%rbp), %rax
	cmpq	%rax, -200(%rbp)
	je	.L15
	.loc 1 90 7 is_stmt 1 view .LVU74
	.loc 1 90 11 is_stmt 0 view .LVU75
	movq	%rbx, %rdi
	call	chdir@PLT
.LVL25:
	.loc 1 90 10 view .LVU76
	testl	%eax, %eax
	js	.L30
	.loc 1 95 7 is_stmt 1 view .LVU77
	.loc 1 95 17 is_stmt 0 view .LVU78
	movdqa	-208(%rbp), %xmm0
	movdqa	-192(%rbp), %xmm1
	movdqa	-176(%rbp), %xmm2
	movdqa	-160(%rbp), %xmm3
	movdqa	-144(%rbp), %xmm4
	movdqa	-128(%rbp), %xmm5
	movaps	%xmm0, -352(%rbp)
	movdqa	-112(%rbp), %xmm6
	movdqa	-96(%rbp), %xmm7
	movaps	%xmm1, -336(%rbp)
	movdqa	-80(%rbp), %xmm0
	movaps	%xmm2, -320(%rbp)
	movaps	%xmm3, -304(%rbp)
	movaps	%xmm4, -288(%rbp)
	movaps	%xmm5, -272(%rbp)
	movaps	%xmm6, -256(%rbp)
	movaps	%xmm7, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
.LBE26:
	.loc 1 79 9 is_stmt 1 view .LVU79
.L6:
	.loc 1 79 3 view .LVU80
.LBB31:
	.loc 1 81 7 view .LVU81
	.loc 1 82 7 view .LVU82
.LVL26:
.LBB30:
.LBI27:
	.loc 3 453 1 view .LVU83
.LBB29:
	.loc 3 455 3 view .LVU84
	.loc 3 455 10 is_stmt 0 view .LVU85
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movl	$1, %edi
	call	__xstat@PLT
.LVL27:
	.loc 3 455 10 view .LVU86
.LBE29:
.LBE30:
	.loc 1 82 10 view .LVU87
	testl	%eax, %eax
	jns	.L13
	.loc 1 84 11 is_stmt 1 view .LVU88
	leaq	.LC4(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL28:
	.loc 1 84 28 is_stmt 0 view .LVU89
	movl	$5, %edx
	leaq	.LC5(%rip), %rsi
	.loc 1 84 11 view .LVU90
	movq	%rax, %r12
.L23:
	.loc 1 92 28 view .LVU91
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL29:
	.loc 1 92 11 view .LVU92
	movl	0(%r13), %esi
	movq	%r12, %rcx
	xorl	%edi, %edi
	.loc 1 92 28 view .LVU93
	movq	%rax, %rdx
	.loc 1 92 11 view .LVU94
	xorl	%eax, %eax
.LBE31:
	.loc 1 36 9 view .LVU95
	xorl	%r12d, %r12d
.LBB32:
	.loc 1 92 11 view .LVU96
	call	error@PLT
.LVL30:
	.loc 1 93 11 is_stmt 1 view .LVU97
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L15:
.LBE32:
	.loc 1 99 3 view .LVU98
	.loc 1 99 8 is_stmt 0 view .LVU99
	call	xgetcwd@PLT
.LVL31:
	movq	%rax, %r12
.LVL32:
.L12:
.LBB33:
	.loc 1 104 5 is_stmt 1 view .LVU100
	.loc 1 105 9 is_stmt 0 view .LVU101
	movq	%r14, %rdi
	.loc 1 104 9 view .LVU102
	movl	0(%r13), %ebx
.LVL33:
	.loc 1 105 5 is_stmt 1 view .LVU103
	.loc 1 105 9 is_stmt 0 view .LVU104
	call	restore_cwd@PLT
.LVL34:
	.loc 1 105 8 view .LVU105
	testl	%eax, %eax
	jne	.L31
	.loc 1 108 5 is_stmt 1 view .LVU106
	movq	%r14, %rdi
	call	free_cwd@PLT
.LVL35:
	.loc 1 109 5 view .LVU107
	.loc 1 109 11 is_stmt 0 view .LVU108
	movl	%ebx, 0(%r13)
.LBE33:
	.loc 1 112 3 is_stmt 1 view .LVU109
.LVL36:
.L1:
	.loc 1 113 1 is_stmt 0 view .LVU110
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L32
	leaq	-40(%rbp), %rsp
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL37:
	.p2align 4,,10
	.p2align 3
.L30:
	.cfi_restore_state
.LBB35:
	.loc 1 92 11 is_stmt 1 view .LVU111
	leaq	.LC4(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL38:
	.loc 1 92 28 is_stmt 0 view .LVU112
	movl	$5, %edx
	leaq	.LC1(%rip), %rsi
	.loc 1 92 11 view .LVU113
	movq	%rax, %r12
	jmp	.L23
.LVL39:
	.p2align 4,,10
	.p2align 3
.L26:
	.loc 1 92 11 view .LVU114
.LBE35:
	.loc 1 40 7 is_stmt 1 view .LVU115
	.loc 1 40 24 is_stmt 0 view .LVU116
	movl	$5, %edx
	leaq	.LC0(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 41 14 view .LVU117
	xorl	%r12d, %r12d
.LVL40:
	.loc 1 40 24 view .LVU118
	call	dcgettext@PLT
.LVL41:
	.loc 1 40 7 view .LVU119
	movl	0(%r13), %esi
	xorl	%edi, %edi
	.loc 1 40 24 view .LVU120
	movq	%rax, %rdx
	.loc 1 40 7 view .LVU121
	xorl	%eax, %eax
	call	error@PLT
.LVL42:
	.loc 1 41 7 is_stmt 1 view .LVU122
	.loc 1 41 14 is_stmt 0 view .LVU123
	jmp	.L1
.LVL43:
.L29:
.LBB36:
	.loc 1 64 11 is_stmt 1 view .LVU124
	movq	%r15, %rsi
.LVL44:
.L24:
	.loc 1 64 11 is_stmt 0 view .LVU125
	movl	$4, %edi
	call	quotearg_style@PLT
.LVL45:
	.loc 1 64 28 view .LVU126
	movl	$5, %edx
	leaq	.LC1(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 64 11 view .LVU127
	movq	%rax, %r12
	.loc 1 64 28 view .LVU128
	call	dcgettext@PLT
.LVL46:
	.loc 1 64 11 view .LVU129
	movl	0(%r13), %esi
	movq	%r12, %rcx
	xorl	%edi, %edi
	.loc 1 64 28 view .LVU130
	movq	%rax, %rdx
	.loc 1 64 11 view .LVU131
	xorl	%eax, %eax
	.loc 1 65 18 view .LVU132
	xorl	%r12d, %r12d
	.loc 1 64 11 view .LVU133
	call	error@PLT
.LVL47:
	.loc 1 65 11 is_stmt 1 view .LVU134
	.loc 1 65 18 is_stmt 0 view .LVU135
	jmp	.L1
.LVL48:
.L5:
	.loc 1 65 18 view .LVU136
.LBE36:
	.loc 1 50 11 is_stmt 1 view .LVU137
	movq	%r12, %rsi
	jmp	.L24
.LVL49:
.L32:
	.loc 1 113 1 is_stmt 0 view .LVU138
	call	__stack_chk_fail@PLT
.LVL50:
.L31:
.LBB37:
.LBB34:
	.loc 1 106 7 is_stmt 1 view .LVU139
	movl	$5, %edx
	leaq	.LC6(%rip), %rsi
	xorl	%edi, %edi
	call	dcgettext@PLT
.LVL51:
	movl	0(%r13), %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	call	error@PLT
.LVL52:
.LBE34:
.LBE37:
	.cfi_endproc
.LFE135:
	.size	find_mount_point, .-find_mount_point
.Letext0:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 7 "./lib/sys/select.h"
	.file 8 "/usr/include/time.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 10 "/usr/include/signal.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/errno.h"
	.file 14 "src/version.h"
	.file 15 "./lib/exitfail.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 18 "/usr/include/stdio.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 20 "./lib/version-etc.h"
	.file 21 "./lib/progname.h"
	.file 22 "./lib/quotearg.h"
	.file 23 "./lib/error.h"
	.file 24 "./lib/save-cwd.h"
	.file 25 "/usr/include/string.h"
	.file 26 "./lib/dirname.h"
	.file 27 "/usr/include/stdlib.h"
	.file 28 "/usr/include/libintl.h"
	.file 29 "./lib/xgetcwd.h"
	.file 30 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xce3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF150
	.byte	0xc
	.long	.LASF151
	.long	.LASF152
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
	.byte	0x4
	.byte	0x91
	.byte	0x19
	.long	0x42
	.uleb128 0x5
	.long	.LASF8
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x3b
	.uleb128 0x5
	.long	.LASF9
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x3b
	.uleb128 0x5
	.long	.LASF10
	.byte	0x4
	.byte	0x94
	.byte	0x19
	.long	0x42
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0x96
	.byte	0x1a
	.long	0x3b
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0x97
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF13
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF14
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF15
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.long	0xd6
	.uleb128 0x5
	.long	.LASF16
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x63
	.uleb128 0x5
	.long	.LASF17
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x63
	.uleb128 0x5
	.long	.LASF18
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x63
	.uleb128 0x8
	.byte	0x8
	.long	0x107
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0x9
	.long	0x107
	.uleb128 0x5
	.long	.LASF20
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0xa
	.long	.LASF34
	.byte	0x10
	.byte	0x6
	.byte	0xa
	.byte	0x8
	.long	0x147
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.byte	0xc
	.byte	0xc
	.long	0xca
	.byte	0
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.byte	0x10
	.byte	0x15
	.long	0xf5
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF25
	.byte	0x7
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF23
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF24
	.uleb128 0x8
	.byte	0x8
	.long	0x10e
	.uleb128 0x9
	.long	0x162
	.uleb128 0xd
	.long	0x101
	.long	0x17d
	.uleb128 0xe
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF26
	.byte	0x8
	.byte	0x9f
	.byte	0xe
	.long	0x16d
	.uleb128 0xf
	.long	.LASF27
	.byte	0x8
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF28
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xf
	.long	.LASF29
	.byte	0x8
	.byte	0xa6
	.byte	0xe
	.long	0x16d
	.uleb128 0xf
	.long	.LASF30
	.byte	0x8
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF31
	.byte	0x8
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0xc
	.long	.LASF32
	.byte	0x8
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF33
	.uleb128 0xa
	.long	.LASF35
	.byte	0x90
	.byte	0x9
	.byte	0x2e
	.byte	0x8
	.long	0x2aa
	.uleb128 0xb
	.long	.LASF36
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.long	0x6a
	.byte	0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x9
	.byte	0x35
	.byte	0xd
	.long	0x8e
	.byte	0x8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x9
	.byte	0x3d
	.byte	0xf
	.long	0xa6
	.byte	0x10
	.uleb128 0xb
	.long	.LASF39
	.byte	0x9
	.byte	0x3e
	.byte	0xe
	.long	0x9a
	.byte	0x18
	.uleb128 0xb
	.long	.LASF40
	.byte	0x9
	.byte	0x40
	.byte	0xd
	.long	0x76
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF41
	.byte	0x9
	.byte	0x41
	.byte	0xd
	.long	0x82
	.byte	0x20
	.uleb128 0xb
	.long	.LASF42
	.byte	0x9
	.byte	0x43
	.byte	0x9
	.long	0x57
	.byte	0x24
	.uleb128 0xb
	.long	.LASF43
	.byte	0x9
	.byte	0x45
	.byte	0xd
	.long	0x6a
	.byte	0x28
	.uleb128 0xb
	.long	.LASF44
	.byte	0x9
	.byte	0x4a
	.byte	0xd
	.long	0xb2
	.byte	0x30
	.uleb128 0xb
	.long	.LASF45
	.byte	0x9
	.byte	0x4e
	.byte	0x11
	.long	0xdd
	.byte	0x38
	.uleb128 0xb
	.long	.LASF46
	.byte	0x9
	.byte	0x50
	.byte	0x10
	.long	0xe9
	.byte	0x40
	.uleb128 0xb
	.long	.LASF47
	.byte	0x9
	.byte	0x5b
	.byte	0x15
	.long	0x11f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF48
	.byte	0x9
	.byte	0x5c
	.byte	0x15
	.long	0x11f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF49
	.byte	0x9
	.byte	0x5d
	.byte	0x15
	.long	0x11f
	.byte	0x68
	.uleb128 0xb
	.long	.LASF50
	.byte	0x9
	.byte	0x6a
	.byte	0x17
	.long	0x2af
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.long	0x1d9
	.uleb128 0xd
	.long	0xf5
	.long	0x2bf
	.uleb128 0xe
	.long	0x42
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.uleb128 0x8
	.byte	0x8
	.long	0x2bf
	.uleb128 0xd
	.long	0x168
	.long	0x2d6
	.uleb128 0xe
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.long	0x2c6
	.uleb128 0xc
	.long	.LASF51
	.byte	0xa
	.value	0x11e
	.byte	0x1a
	.long	0x2d6
	.uleb128 0xc
	.long	.LASF52
	.byte	0xa
	.value	0x11f
	.byte	0x1a
	.long	0x2d6
	.uleb128 0xc
	.long	.LASF53
	.byte	0xb
	.value	0x21f
	.byte	0xf
	.long	0x302
	.uleb128 0x8
	.byte	0x8
	.long	0x101
	.uleb128 0xc
	.long	.LASF54
	.byte	0xb
	.value	0x221
	.byte	0xf
	.long	0x302
	.uleb128 0xf
	.long	.LASF55
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x101
	.uleb128 0xf
	.long	.LASF56
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF57
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF58
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF59
	.byte	0xd
	.byte	0x2d
	.byte	0xe
	.long	0x101
	.uleb128 0xf
	.long	.LASF60
	.byte	0xd
	.byte	0x2e
	.byte	0xe
	.long	0x101
	.uleb128 0x8
	.byte	0x8
	.long	0x368
	.uleb128 0x7
	.long	0x35d
	.uleb128 0x11
	.uleb128 0xf
	.long	.LASF61
	.byte	0xe
	.byte	0x1
	.byte	0x14
	.long	0x162
	.uleb128 0xf
	.long	.LASF62
	.byte	0xf
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xa
	.long	.LASF63
	.byte	0xd8
	.byte	0x10
	.byte	0x31
	.byte	0x8
	.long	0x508
	.uleb128 0xb
	.long	.LASF64
	.byte	0x10
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xb
	.long	.LASF65
	.byte	0x10
	.byte	0x36
	.byte	0x9
	.long	0x101
	.byte	0x8
	.uleb128 0xb
	.long	.LASF66
	.byte	0x10
	.byte	0x37
	.byte	0x9
	.long	0x101
	.byte	0x10
	.uleb128 0xb
	.long	.LASF67
	.byte	0x10
	.byte	0x38
	.byte	0x9
	.long	0x101
	.byte	0x18
	.uleb128 0xb
	.long	.LASF68
	.byte	0x10
	.byte	0x39
	.byte	0x9
	.long	0x101
	.byte	0x20
	.uleb128 0xb
	.long	.LASF69
	.byte	0x10
	.byte	0x3a
	.byte	0x9
	.long	0x101
	.byte	0x28
	.uleb128 0xb
	.long	.LASF70
	.byte	0x10
	.byte	0x3b
	.byte	0x9
	.long	0x101
	.byte	0x30
	.uleb128 0xb
	.long	.LASF71
	.byte	0x10
	.byte	0x3c
	.byte	0x9
	.long	0x101
	.byte	0x38
	.uleb128 0xb
	.long	.LASF72
	.byte	0x10
	.byte	0x3d
	.byte	0x9
	.long	0x101
	.byte	0x40
	.uleb128 0xb
	.long	.LASF73
	.byte	0x10
	.byte	0x40
	.byte	0x9
	.long	0x101
	.byte	0x48
	.uleb128 0xb
	.long	.LASF74
	.byte	0x10
	.byte	0x41
	.byte	0x9
	.long	0x101
	.byte	0x50
	.uleb128 0xb
	.long	.LASF75
	.byte	0x10
	.byte	0x42
	.byte	0x9
	.long	0x101
	.byte	0x58
	.uleb128 0xb
	.long	.LASF76
	.byte	0x10
	.byte	0x44
	.byte	0x16
	.long	0x521
	.byte	0x60
	.uleb128 0xb
	.long	.LASF77
	.byte	0x10
	.byte	0x46
	.byte	0x14
	.long	0x527
	.byte	0x68
	.uleb128 0xb
	.long	.LASF78
	.byte	0x10
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xb
	.long	.LASF79
	.byte	0x10
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xb
	.long	.LASF80
	.byte	0x10
	.byte	0x4a
	.byte	0xb
	.long	0xb2
	.byte	0x78
	.uleb128 0xb
	.long	.LASF81
	.byte	0x10
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xb
	.long	.LASF82
	.byte	0x10
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xb
	.long	.LASF83
	.byte	0x10
	.byte	0x4f
	.byte	0x8
	.long	0x52d
	.byte	0x83
	.uleb128 0xb
	.long	.LASF84
	.byte	0x10
	.byte	0x51
	.byte	0xf
	.long	0x53d
	.byte	0x88
	.uleb128 0xb
	.long	.LASF85
	.byte	0x10
	.byte	0x59
	.byte	0xd
	.long	0xbe
	.byte	0x90
	.uleb128 0xb
	.long	.LASF86
	.byte	0x10
	.byte	0x5b
	.byte	0x17
	.long	0x548
	.byte	0x98
	.uleb128 0xb
	.long	.LASF87
	.byte	0x10
	.byte	0x5c
	.byte	0x19
	.long	0x553
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF88
	.byte	0x10
	.byte	0x5d
	.byte	0x14
	.long	0x527
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF89
	.byte	0x10
	.byte	0x5e
	.byte	0x9
	.long	0xd6
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF90
	.byte	0x10
	.byte	0x5f
	.byte	0xa
	.long	0x113
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF91
	.byte	0x10
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x10
	.byte	0x62
	.byte	0x8
	.long	0x559
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF93
	.byte	0x11
	.byte	0x7
	.byte	0x19
	.long	0x381
	.uleb128 0x12
	.long	.LASF153
	.byte	0x10
	.byte	0x2b
	.byte	0xe
	.uleb128 0x13
	.long	.LASF94
	.uleb128 0x8
	.byte	0x8
	.long	0x51c
	.uleb128 0x8
	.byte	0x8
	.long	0x381
	.uleb128 0xd
	.long	0x107
	.long	0x53d
	.uleb128 0xe
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x514
	.uleb128 0x13
	.long	.LASF95
	.uleb128 0x8
	.byte	0x8
	.long	0x543
	.uleb128 0x13
	.long	.LASF96
	.uleb128 0x8
	.byte	0x8
	.long	0x54e
	.uleb128 0xd
	.long	0x107
	.long	0x569
	.uleb128 0xe
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF97
	.byte	0x12
	.byte	0x89
	.byte	0xe
	.long	0x575
	.uleb128 0x8
	.byte	0x8
	.long	0x508
	.uleb128 0xf
	.long	.LASF98
	.byte	0x12
	.byte	0x8a
	.byte	0xe
	.long	0x575
	.uleb128 0xf
	.long	.LASF99
	.byte	0x12
	.byte	0x8b
	.byte	0xe
	.long	0x575
	.uleb128 0xf
	.long	.LASF100
	.byte	0x13
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	0x168
	.long	0x5aa
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.long	0x59f
	.uleb128 0xf
	.long	.LASF101
	.byte	0x13
	.byte	0x1b
	.byte	0x1a
	.long	0x5aa
	.uleb128 0xf
	.long	.LASF102
	.byte	0x13
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	.LASF103
	.byte	0x13
	.byte	0x1f
	.byte	0x1a
	.long	0x5aa
	.uleb128 0xd
	.long	0x10e
	.long	0x5de
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.long	0x5d3
	.uleb128 0xf
	.long	.LASF104
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x5de
	.uleb128 0xf
	.long	.LASF105
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x162
	.uleb128 0x15
	.long	.LASF154
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x650
	.uleb128 0x16
	.long	.LASF106
	.byte	0
	.uleb128 0x16
	.long	.LASF107
	.byte	0x1
	.uleb128 0x16
	.long	.LASF108
	.byte	0x2
	.uleb128 0x16
	.long	.LASF109
	.byte	0x3
	.uleb128 0x16
	.long	.LASF110
	.byte	0x4
	.uleb128 0x16
	.long	.LASF111
	.byte	0x5
	.uleb128 0x16
	.long	.LASF112
	.byte	0x6
	.uleb128 0x16
	.long	.LASF113
	.byte	0x7
	.uleb128 0x16
	.long	.LASF114
	.byte	0x8
	.uleb128 0x16
	.long	.LASF115
	.byte	0x9
	.uleb128 0x16
	.long	.LASF116
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.long	0x5fb
	.uleb128 0xc
	.long	.LASF117
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x5aa
	.uleb128 0xd
	.long	0x650
	.long	0x66d
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.long	0x662
	.uleb128 0xc
	.long	.LASF118
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x66d
	.uleb128 0xf
	.long	.LASF119
	.byte	0x17
	.byte	0x32
	.byte	0xf
	.long	0x2c0
	.uleb128 0xf
	.long	.LASF120
	.byte	0x17
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0xf
	.long	.LASF121
	.byte	0x17
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF122
	.byte	0x10
	.byte	0x18
	.byte	0x18
	.byte	0x8
	.long	0x6cb
	.uleb128 0xb
	.long	.LASF123
	.byte	0x18
	.byte	0x1a
	.byte	0x9
	.long	0x57
	.byte	0
	.uleb128 0xb
	.long	.LASF124
	.byte	0x18
	.byte	0x1b
	.byte	0xb
	.long	0x101
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.long	.LASF155
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.long	0x101
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc2
	.uleb128 0x18
	.long	.LASF125
	.byte	0x1
	.byte	0x20
	.byte	0x1f
	.long	0x162
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x18
	.long	.LASF126
	.byte	0x1
	.byte	0x20
	.byte	0x38
	.long	0xbc2
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x19
	.string	"cwd"
	.byte	0x1
	.byte	0x22
	.byte	0x14
	.long	0x6a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x1
	.byte	0x23
	.byte	0xf
	.long	0x1d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1b
	.string	"mp"
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.long	0x101
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.quad	.L12
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0
	.long	0x9a3
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.long	0x101
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1b
	.string	"dir"
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.long	0x101
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x40
	.long	0x841
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.long	0x162
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.long	0x113
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1e
	.long	.LASF131
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.long	0x101
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x1f
	.long	0xbc8
	.quad	.LBI15
	.byte	.LVU31
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.long	0x82c
	.uleb128 0x20
	.long	0xbf1
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x20
	.long	0xbe5
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x20
	.long	0xbd9
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x21
	.quad	.LVL10
	.long	0xc31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x77
	.sleb128 15
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL7
	.long	0xc3c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0xbfe
	.quad	.LBI23
	.byte	.LVU44
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0x1
	.byte	0x44
	.byte	0xb
	.long	0x8a8
	.uleb128 0x20
	.long	0xc1d
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x20
	.long	0xc10
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x21
	.quad	.LVL16
	.long	0xc49
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x76
	.sleb128 -352
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL5
	.long	0xc56
	.long	0x8c0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL12
	.long	0xc62
	.long	0x8d8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL13
	.long	0xc6f
	.long	0x8f0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL17
	.long	0xc7c
	.long	0x90d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL19
	.long	0xc89
	.long	0x936
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL20
	.long	0xc95
	.long	0x94e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL45
	.long	0xc7c
	.long	0x965
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x24
	.quad	.LVL46
	.long	0xc89
	.long	0x98e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL47
	.long	0xc95
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0xc0
	.long	0xa8c
	.uleb128 0x19
	.string	"st"
	.byte	0x1
	.byte	0x51
	.byte	0x13
	.long	0x1d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1f
	.long	0xbfe
	.quad	.LBI27
	.byte	.LVU83
	.long	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x52
	.byte	0xb
	.long	0xa0e
	.uleb128 0x20
	.long	0xc1d
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x20
	.long	0xc10
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x21
	.quad	.LVL27
	.long	0xc49
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL25
	.long	0xc6f
	.long	0xa26
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL28
	.long	0xc7c
	.long	0xa43
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL29
	.long	0xc89
	.long	0xa5a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL30
	.long	0xc95
	.long	0xa72
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL38
	.long	0xc7c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x140
	.long	0xb28
	.uleb128 0x1e
	.long	.LASF132
	.byte	0x1
	.byte	0x68
	.byte	0x9
	.long	0x57
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x25
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0xafb
	.uleb128 0x24
	.quad	.LVL51
	.long	0xc89
	.long	0xae7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.quad	.LVL52
	.long	0xc95
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL34
	.long	0xca1
	.long	0xb13
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.quad	.LVL35
	.long	0xcad
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL3
	.long	0xcb9
	.long	0xb40
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL4
	.long	0xcc5
	.uleb128 0x24
	.quad	.LVL22
	.long	0xc6f
	.long	0xb65
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL31
	.long	0xcd1
	.uleb128 0x24
	.quad	.LVL41
	.long	0xc89
	.long	0xb9c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.quad	.LVL42
	.long	0xc95
	.long	0xbb4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL50
	.long	0xcdd
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2aa
	.uleb128 0x27
	.long	.LASF157
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.long	0xd6
	.byte	0x3
	.long	0xbfe
	.uleb128 0x28
	.long	.LASF133
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.long	0xd8
	.uleb128 0x28
	.long	.LASF134
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.long	0x363
	.uleb128 0x28
	.long	.LASF130
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.long	0x113
	.byte	0
	.uleb128 0x29
	.long	.LASF35
	.byte	0x3
	.value	0x1c5
	.byte	0x1
	.long	0x57
	.byte	0x3
	.long	0xc2b
	.uleb128 0x2a
	.long	.LASF135
	.byte	0x3
	.value	0x1c5
	.byte	0x1
	.long	0x162
	.uleb128 0x2a
	.long	.LASF136
	.byte	0x3
	.value	0x1c5
	.byte	0x1
	.long	0xc2b
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1d9
	.uleb128 0x2b
	.long	.LASF157
	.long	.LASF158
	.byte	0x1e
	.byte	0
	.uleb128 0x2c
	.long	.LASF137
	.long	.LASF137
	.byte	0x19
	.value	0x181
	.byte	0xf
	.uleb128 0x2c
	.long	.LASF138
	.long	.LASF138
	.byte	0x3
	.value	0x18d
	.byte	0xc
	.uleb128 0x2d
	.long	.LASF139
	.long	.LASF139
	.byte	0x1a
	.byte	0x25
	.byte	0x7
	.uleb128 0x2c
	.long	.LASF140
	.long	.LASF140
	.byte	0x1b
	.value	0x235
	.byte	0xd
	.uleb128 0x2c
	.long	.LASF141
	.long	.LASF141
	.byte	0xb
	.value	0x1f1
	.byte	0xc
	.uleb128 0x2c
	.long	.LASF142
	.long	.LASF142
	.byte	0x16
	.value	0x179
	.byte	0x7
	.uleb128 0x2d
	.long	.LASF143
	.long	.LASF143
	.byte	0x1c
	.byte	0x33
	.byte	0xe
	.uleb128 0x2d
	.long	.LASF144
	.long	.LASF144
	.byte	0x17
	.byte	0x28
	.byte	0xd
	.uleb128 0x2d
	.long	.LASF145
	.long	.LASF145
	.byte	0x18
	.byte	0x1f
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF146
	.long	.LASF146
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.uleb128 0x2d
	.long	.LASF147
	.long	.LASF147
	.byte	0x18
	.byte	0x1e
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF148
	.long	.LASF148
	.byte	0xd
	.byte	0x25
	.byte	0xd
	.uleb128 0x2d
	.long	.LASF149
	.long	.LASF149
	.byte	0x1d
	.byte	0x11
	.byte	0xe
	.uleb128 0x2e
	.long	.LASF159
	.long	.LASF159
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
	.uleb128 0x37
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL6-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL23-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL40-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL49-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL3-1-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL24-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL49-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU10
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU110
	.uleb128 .LVU111
	.uleb128 .LVU138
	.uleb128 .LVU139
	.uleb128 0
.LLST2:
	.quad	.LVL2-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL32-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL37-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU21
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU53
	.uleb128 .LVU124
	.uleb128 .LVU125
.LLST3:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL7-1-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU37
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU60
	.uleb128 .LVU124
	.uleb128 .LVU125
.LLST4:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL12-1-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU25
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU53
	.uleb128 .LVU124
	.uleb128 .LVU125
.LLST5:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL7-1-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU27
	.uleb128 .LVU34
.LLST6:
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU30
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU60
	.uleb128 .LVU124
	.uleb128 .LVU125
.LLST7:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL10-1-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x6
	.byte	0x77
	.sleb128 15
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x6
	.byte	0x77
	.sleb128 15
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU31
	.uleb128 .LVU34
.LLST8:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU31
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU37
.LLST9:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL10-1-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU31
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU37
.LLST10:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL10-1-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x6
	.byte	0x77
	.sleb128 15
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 .LVU44
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU48
.LLST11:
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x4
	.byte	0x76
	.sleb128 -352
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL16-1-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x4
	.byte	0x76
	.sleb128 -352
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU44
	.uleb128 .LVU48
.LLST12:
	.quad	.LVL14-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU83
	.uleb128 .LVU86
.LLST13:
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU83
	.uleb128 .LVU86
.LLST14:
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 .LVU103
	.uleb128 .LVU110
	.uleb128 .LVU139
	.uleb128 0
.LLST15:
	.quad	.LVL33-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL50-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x53
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
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"exit_failure"
.LASF13:
	.string	"__off_t"
.LASF9:
	.string	"__gid_t"
.LASF127:
	.string	"last_stat"
.LASF65:
	.string	"_IO_read_ptr"
.LASF114:
	.string	"locale_quoting_style"
.LASF77:
	.string	"_chain"
.LASF49:
	.string	"st_ctim"
.LASF154:
	.string	"quoting_style"
.LASF20:
	.string	"size_t"
.LASF129:
	.string	"__old"
.LASF83:
	.string	"_shortbuf"
.LASF135:
	.string	"__path"
.LASF107:
	.string	"shell_quoting_style"
.LASF156:
	.string	"done"
.LASF71:
	.string	"_IO_buf_base"
.LASF23:
	.string	"long long unsigned int"
.LASF134:
	.string	"__src"
.LASF140:
	.string	"free"
.LASF86:
	.string	"_codecvt"
.LASF35:
	.string	"stat"
.LASF24:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF118:
	.string	"quoting_style_vals"
.LASF113:
	.string	"escape_quoting_style"
.LASF11:
	.string	"__mode_t"
.LASF106:
	.string	"literal_quoting_style"
.LASF78:
	.string	"_fileno"
.LASF66:
	.string	"_IO_read_end"
.LASF141:
	.string	"chdir"
.LASF28:
	.string	"__timezone"
.LASF17:
	.string	"__blkcnt_t"
.LASF52:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF25:
	.string	"_gl_cxxalias_dummy"
.LASF64:
	.string	"_flags"
.LASF87:
	.string	"_wide_data"
.LASF72:
	.string	"_IO_buf_end"
.LASF81:
	.string	"_cur_column"
.LASF60:
	.string	"program_invocation_short_name"
.LASF111:
	.string	"c_quoting_style"
.LASF95:
	.string	"_IO_codecvt"
.LASF103:
	.string	"_sys_errlist"
.LASF59:
	.string	"program_invocation_name"
.LASF80:
	.string	"_old_offset"
.LASF85:
	.string	"_offset"
.LASF42:
	.string	"__pad0"
.LASF110:
	.string	"shell_escape_always_quoting_style"
.LASF31:
	.string	"timezone"
.LASF146:
	.string	"free_cwd"
.LASF46:
	.string	"st_blocks"
.LASF105:
	.string	"program_name"
.LASF40:
	.string	"st_uid"
.LASF94:
	.string	"_IO_marker"
.LASF97:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF150:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF139:
	.string	"dir_name"
.LASF137:
	.string	"strlen"
.LASF3:
	.string	"long unsigned int"
.LASF69:
	.string	"_IO_write_ptr"
.LASF155:
	.string	"find_mount_point"
.LASF124:
	.string	"name"
.LASF100:
	.string	"sys_nerr"
.LASF132:
	.string	"save_errno"
.LASF116:
	.string	"custom_quoting_style"
.LASF1:
	.string	"short unsigned int"
.LASF55:
	.string	"optarg"
.LASF121:
	.string	"error_one_per_line"
.LASF61:
	.string	"Version"
.LASF73:
	.string	"_IO_save_base"
.LASF142:
	.string	"quotearg_style"
.LASF54:
	.string	"environ"
.LASF158:
	.string	"__builtin_memcpy"
.LASF84:
	.string	"_lock"
.LASF151:
	.string	"src/find-mount-point.c"
.LASF79:
	.string	"_flags2"
.LASF91:
	.string	"_mode"
.LASF98:
	.string	"stdout"
.LASF44:
	.string	"st_size"
.LASF104:
	.string	"version_etc_copyright"
.LASF39:
	.string	"st_mode"
.LASF147:
	.string	"save_cwd"
.LASF22:
	.string	"tv_nsec"
.LASF32:
	.string	"getdate_err"
.LASF7:
	.string	"__dev_t"
.LASF56:
	.string	"optind"
.LASF18:
	.string	"__syscall_slong_t"
.LASF128:
	.string	"xdir"
.LASF123:
	.string	"desc"
.LASF70:
	.string	"_IO_write_end"
.LASF122:
	.string	"saved_cwd"
.LASF133:
	.string	"__dest"
.LASF126:
	.string	"file_stat"
.LASF153:
	.string	"_IO_lock_t"
.LASF63:
	.string	"_IO_FILE"
.LASF119:
	.string	"error_print_progname"
.LASF16:
	.string	"__blksize_t"
.LASF53:
	.string	"__environ"
.LASF27:
	.string	"__daylight"
.LASF144:
	.string	"error"
.LASF101:
	.string	"sys_errlist"
.LASF76:
	.string	"_markers"
.LASF50:
	.string	"__glibc_reserved"
.LASF38:
	.string	"st_nlink"
.LASF112:
	.string	"c_maybe_quoting_style"
.LASF0:
	.string	"unsigned char"
.LASF37:
	.string	"st_ino"
.LASF5:
	.string	"short int"
.LASF125:
	.string	"file"
.LASF45:
	.string	"st_blksize"
.LASF130:
	.string	"__len"
.LASF21:
	.string	"tv_sec"
.LASF102:
	.string	"_sys_nerr"
.LASF34:
	.string	"timespec"
.LASF82:
	.string	"_vtable_offset"
.LASF29:
	.string	"tzname"
.LASF131:
	.string	"__new"
.LASF93:
	.string	"FILE"
.LASF159:
	.string	"__stack_chk_fail"
.LASF109:
	.string	"shell_escape_quoting_style"
.LASF10:
	.string	"__ino_t"
.LASF117:
	.string	"quoting_style_args"
.LASF143:
	.string	"dcgettext"
.LASF58:
	.string	"optopt"
.LASF30:
	.string	"daylight"
.LASF43:
	.string	"st_rdev"
.LASF33:
	.string	"long double"
.LASF19:
	.string	"char"
.LASF108:
	.string	"shell_always_quoting_style"
.LASF115:
	.string	"clocale_quoting_style"
.LASF148:
	.string	"__errno_location"
.LASF57:
	.string	"opterr"
.LASF136:
	.string	"__statbuf"
.LASF8:
	.string	"__uid_t"
.LASF14:
	.string	"__off64_t"
.LASF67:
	.string	"_IO_read_base"
.LASF157:
	.string	"memcpy"
.LASF75:
	.string	"_IO_save_end"
.LASF51:
	.string	"_sys_siglist"
.LASF41:
	.string	"st_gid"
.LASF90:
	.string	"__pad5"
.LASF15:
	.string	"__time_t"
.LASF92:
	.string	"_unused2"
.LASF99:
	.string	"stderr"
.LASF47:
	.string	"st_atim"
.LASF152:
	.string	"/root/coreutils"
.LASF36:
	.string	"st_dev"
.LASF89:
	.string	"_freeres_buf"
.LASF149:
	.string	"xgetcwd"
.LASF74:
	.string	"_IO_backup_base"
.LASF48:
	.string	"st_mtim"
.LASF145:
	.string	"restore_cwd"
.LASF120:
	.string	"error_message_count"
.LASF88:
	.string	"_freeres_list"
.LASF96:
	.string	"_IO_wide_data"
.LASF138:
	.string	"__xstat"
.LASF26:
	.string	"__tzname"
.LASF68:
	.string	"_IO_write_base"
.LASF12:
	.string	"__nlink_t"
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
