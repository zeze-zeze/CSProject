	.file	"operand2sig.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"abcdefghijklmnopqrstuvwxyz"
.LC1:
	.string	"%s: invalid signal"
	.text
	.p2align 4
	.globl	operand2sig
	.type	operand2sig, @function
operand2sig:
.LVL0:
.LFB135:
	.file 1 "src/operand2sig.c"
	.loc 1 37 1 view -0
	.cfi_startproc
	.loc 1 37 1 is_stmt 0 view .LVU1
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
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 37 1 view .LVU2
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 38 3 is_stmt 1 view .LVU3
	.loc 1 40 3 view .LVU4
	.loc 1 40 7 is_stmt 0 view .LVU5
	movsbl	(%rdi), %eax
	subl	$48, %eax
	.loc 1 40 6 view .LVU6
	cmpl	$9, %eax
	ja	.L2
.LBB2:
	.loc 1 53 7 is_stmt 1 view .LVU7
	.loc 1 54 7 view .LVU8
	.loc 1 54 21 is_stmt 0 view .LVU9
	call	__errno_location@PLT
.LVL1:
	.loc 1 54 32 view .LVU10
	movl	$10, %edx
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	.loc 1 54 27 view .LVU11
	movl	$0, (%rax)
	.loc 1 54 21 view .LVU12
	movq	%rax, %rbx
	.loc 1 54 32 view .LVU13
	call	strtol@PLT
.LVL2:
	.loc 1 55 7 is_stmt 1 view .LVU14
	.loc 1 56 7 view .LVU15
	.loc 1 56 25 is_stmt 0 view .LVU16
	movq	16(%rsp), %rdx
	.loc 1 56 66 view .LVU17
	cmpq	%rbp, %rdx
	je	.L28
	.loc 1 56 33 discriminator 1 view .LVU18
	cmpb	$0, (%rdx)
	jne	.L28
	.loc 1 56 42 discriminator 3 view .LVU19
	movl	(%rbx), %edx
	testl	%edx, %edx
	jne	.L28
	.loc 1 56 56 discriminator 5 view .LVU20
	movslq	%eax, %rdx
	.loc 1 56 51 discriminator 5 view .LVU21
	cmpq	%rax, %rdx
	je	.L4
	.p2align 4,,10
	.p2align 3
.L28:
	.loc 1 56 14 view .LVU22
	movl	$-1, 12(%rsp)
.LBE2:
	.loc 1 86 3 is_stmt 1 view .LVU23
	jmp	.L5
.LVL3:
	.p2align 4,,10
	.p2align 3
.L2:
.LBB3:
	.loc 1 70 7 view .LVU24
	.loc 1 70 23 is_stmt 0 view .LVU25
	call	xstrdup@PLT
.LVL4:
	.loc 1 73 13 view .LVU26
	leaq	.LC0(%rip), %r12
	.loc 1 72 25 view .LVU27
	movzbl	(%rax), %ebx
	.loc 1 70 23 view .LVU28
	movq	%rax, %r14
.LVL5:
	.loc 1 71 7 is_stmt 1 view .LVU29
	.loc 1 72 7 view .LVU30
	.loc 1 72 25 view .LVU31
	.loc 1 72 7 is_stmt 0 view .LVU32
	movq	%rax, %r15
	testb	%bl, %bl
	je	.L13
.LVL6:
	.p2align 4,,10
	.p2align 3
.L9:
	.loc 1 73 9 is_stmt 1 view .LVU33
	.loc 1 73 13 is_stmt 0 view .LVU34
	movsbl	%bl, %esi
	movq	%r12, %rdi
	call	strchr@PLT
.LVL7:
	.loc 1 73 12 view .LVU35
	testq	%rax, %rax
	je	.L12
	.loc 1 74 11 is_stmt 1 view .LVU36
	.loc 1 74 14 is_stmt 0 view .LVU37
	subl	$32, %ebx
	movb	%bl, (%r15)
.L12:
	.loc 1 72 29 is_stmt 1 discriminator 2 view .LVU38
	.loc 1 72 25 is_stmt 0 discriminator 2 view .LVU39
	movzbl	1(%r15), %ebx
	.loc 1 72 30 discriminator 2 view .LVU40
	addq	$1, %r15
.LVL8:
	.loc 1 72 25 is_stmt 1 discriminator 2 view .LVU41
	.loc 1 72 7 is_stmt 0 discriminator 2 view .LVU42
	testb	%bl, %bl
	jne	.L9
.L13:
	.loc 1 78 7 is_stmt 1 view .LVU43
	.loc 1 78 13 is_stmt 0 view .LVU44
	leaq	12(%rsp), %r12
	movq	%r14, %rdi
	movq	%r12, %rsi
	call	str2sig@PLT
.LVL9:
	.loc 1 78 10 view .LVU45
	testl	%eax, %eax
	jne	.L10
.L27:
	movl	12(%rsp), %r12d
	.loc 1 83 7 is_stmt 1 view .LVU46
	movq	%r14, %rdi
	call	free@PLT
.LVL10:
.LBE3:
	.loc 1 86 3 view .LVU47
	.loc 1 86 6 is_stmt 0 view .LVU48
	testl	%r12d, %r12d
	jns	.L8
.LVL11:
.L5:
	.loc 1 88 7 is_stmt 1 view .LVU49
	movq	%rbp, %rdi
	call	quote@PLT
.LVL12:
	.loc 1 88 20 is_stmt 0 view .LVU50
	movl	$5, %edx
	leaq	.LC1(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 88 7 view .LVU51
	movq	%rax, %r12
	.loc 1 88 20 view .LVU52
	call	dcgettext@PLT
.LVL13:
	.loc 1 88 7 view .LVU53
	movq	%r12, %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.loc 1 88 20 view .LVU54
	movq	%rax, %rdx
	.loc 1 88 7 view .LVU55
	xorl	%eax, %eax
	call	error@PLT
.LVL14:
	.loc 1 89 7 is_stmt 1 view .LVU56
	.loc 1 89 14 is_stmt 0 view .LVU57
	movl	$-1, %eax
	.p2align 4,,10
	.p2align 3
.L1:
	.loc 1 93 1 view .LVU58
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L30
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL15:
	.loc 1 93 1 view .LVU59
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL16:
	.loc 1 93 1 view .LVU60
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL17:
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
.LBB4:
	.loc 1 78 11 discriminator 1 view .LVU61
	cmpb	$83, (%r14)
	je	.L31
.L15:
	.loc 1 81 9 is_stmt 1 view .LVU62
	.loc 1 83 7 is_stmt 0 view .LVU63
	movq	%r14, %rdi
	.loc 1 81 16 view .LVU64
	movl	$-1, 12(%rsp)
	.loc 1 83 7 is_stmt 1 view .LVU65
	call	free@PLT
.LVL18:
.LBE4:
	.loc 1 86 3 view .LVU66
	jmp	.L5
.LVL19:
.L4:
.LBB5:
	.loc 1 58 7 discriminator 10 view .LVU67
	.loc 1 58 10 is_stmt 0 discriminator 10 view .LVU68
	cmpl	$-1, %edx
	je	.L28
	.loc 1 63 11 is_stmt 1 view .LVU69
	.loc 1 63 43 is_stmt 0 view .LVU70
	cmpl	$254, %edx
	movl	$255, %eax
.LVL20:
	.loc 1 63 43 view .LVU71
	movl	$127, %r12d
	cmovg	%eax, %r12d
	.loc 1 63 18 view .LVU72
	andl	%edx, %r12d
	movl	%r12d, 12(%rsp)
.LBE5:
	.loc 1 86 3 is_stmt 1 view .LVU73
.LVL21:
.L8:
	.loc 1 86 21 is_stmt 0 discriminator 1 view .LVU74
	movq	%r13, %rsi
	movl	%r12d, %edi
	call	sig2str@PLT
.LVL22:
	.loc 1 86 18 discriminator 1 view .LVU75
	testl	%eax, %eax
	jne	.L5
	.loc 1 92 3 is_stmt 1 view .LVU76
	.loc 1 92 10 is_stmt 0 view .LVU77
	movl	12(%rsp), %eax
	jmp	.L1
.LVL23:
	.p2align 4,,10
	.p2align 3
.L31:
.LBB6:
	.loc 1 79 35 view .LVU78
	cmpb	$73, 1(%r14)
	jne	.L15
	.loc 1 79 56 discriminator 1 view .LVU79
	cmpb	$71, 2(%r14)
	jne	.L15
	.loc 1 80 37 view .LVU80
	leaq	3(%r14), %rdi
	.loc 1 80 20 view .LVU81
	movq	%r12, %rsi
	call	str2sig@PLT
.LVL24:
	.loc 1 80 17 view .LVU82
	testl	%eax, %eax
	jne	.L15
	jmp	.L27
.LVL25:
.L30:
	.loc 1 80 17 view .LVU83
.LBE6:
	.loc 1 93 1 view .LVU84
	call	__stack_chk_fail@PLT
.LVL26:
	.cfi_endproc
.LFE135:
	.size	operand2sig, .-operand2sig
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "./lib/sys/select.h"
	.file 9 "/usr/include/signal.h"
	.file 10 "/usr/include/time.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/errno.h"
	.file 14 "src/version.h"
	.file 15 "./lib/exitfail.h"
	.file 16 "./lib/version-etc.h"
	.file 17 "./lib/progname.h"
	.file 18 "./lib/quotearg.h"
	.file 19 "./lib/error.h"
	.file 20 "./lib/quote.h"
	.file 21 "/usr/include/stdlib.h"
	.file 22 "./lib/xalloc.h"
	.file 23 "/usr/include/string.h"
	.file 24 "./lib/sig2str.h"
	.file 25 "/usr/include/libintl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7b9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF109
	.byte	0xc
	.long	.LASF110
	.long	.LASF111
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
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
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x96
	.uleb128 0x9
	.long	.LASF112
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x229
	.uleb128 0xa
	.long	.LASF11
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0xa
	.long	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x90
	.byte	0x58
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x242
	.byte	0x60
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x248
	.byte	0x68
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x78
	.byte	0x78
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x24e
	.byte	0x83
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x25e
	.byte	0x88
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x84
	.byte	0x90
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x269
	.byte	0x98
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x274
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x248
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x27a
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xa2
	.uleb128 0xb
	.long	.LASF113
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF41
	.uleb128 0x7
	.byte	0x8
	.long	0x23d
	.uleb128 0x7
	.byte	0x8
	.long	0xa2
	.uleb128 0xd
	.long	0x96
	.long	0x25e
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x235
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x7
	.byte	0x8
	.long	0x264
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x26f
	.uleb128 0xd
	.long	0x96
	.long	0x28a
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x9d
	.uleb128 0x8
	.long	0x28a
	.uleb128 0xf
	.long	.LASF44
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2a1
	.uleb128 0x7
	.byte	0x8
	.long	0x229
	.uleb128 0xf
	.long	.LASF45
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF46
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x290
	.long	0x2d6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2cb
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2d6
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.byte	0x1f
	.byte	0x1a
	.long	0x2d6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF51
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF52
	.uleb128 0x11
	.long	.LASF53
	.byte	0x8
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x321
	.uleb128 0xd
	.long	0x290
	.long	0x338
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x328
	.uleb128 0x11
	.long	.LASF55
	.byte	0x9
	.value	0x11e
	.byte	0x1a
	.long	0x338
	.uleb128 0x11
	.long	.LASF56
	.byte	0x9
	.value	0x11f
	.byte	0x1a
	.long	0x338
	.uleb128 0xd
	.long	0x90
	.long	0x367
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF57
	.byte	0xa
	.byte	0x9f
	.byte	0xe
	.long	0x357
	.uleb128 0xf
	.long	.LASF58
	.byte	0xa
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF59
	.byte	0xa
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa
	.byte	0xa6
	.byte	0xe
	.long	0x357
	.uleb128 0xf
	.long	.LASF61
	.byte	0xa
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF62
	.byte	0xa
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF63
	.byte	0xa
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x11
	.long	.LASF64
	.byte	0xb
	.value	0x21f
	.byte	0xf
	.long	0x3c9
	.uleb128 0x7
	.byte	0x8
	.long	0x90
	.uleb128 0x11
	.long	.LASF65
	.byte	0xb
	.value	0x221
	.byte	0xf
	.long	0x3c9
	.uleb128 0xf
	.long	.LASF66
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF67
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF68
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF69
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0x2d
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0x2e
	.byte	0xe
	.long	0x90
	.uleb128 0xf
	.long	.LASF72
	.byte	0xe
	.byte	0x1
	.byte	0x14
	.long	0x28a
	.uleb128 0xf
	.long	.LASF73
	.byte	0xf
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0xd
	.long	0x9d
	.long	0x447
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x43c
	.uleb128 0xf
	.long	.LASF74
	.byte	0x10
	.byte	0x19
	.byte	0x13
	.long	0x447
	.uleb128 0xf
	.long	.LASF75
	.byte	0x11
	.byte	0x20
	.byte	0x14
	.long	0x28a
	.uleb128 0x13
	.long	.LASF114
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x12
	.byte	0x20
	.byte	0x6
	.long	0x4b9
	.uleb128 0x14
	.long	.LASF76
	.byte	0
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.uleb128 0x14
	.long	.LASF78
	.byte	0x2
	.uleb128 0x14
	.long	.LASF79
	.byte	0x3
	.uleb128 0x14
	.long	.LASF80
	.byte	0x4
	.uleb128 0x14
	.long	.LASF81
	.byte	0x5
	.uleb128 0x14
	.long	.LASF82
	.byte	0x6
	.uleb128 0x14
	.long	.LASF83
	.byte	0x7
	.uleb128 0x14
	.long	.LASF84
	.byte	0x8
	.uleb128 0x14
	.long	.LASF85
	.byte	0x9
	.uleb128 0x14
	.long	.LASF86
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x464
	.uleb128 0x11
	.long	.LASF87
	.byte	0x12
	.value	0x10b
	.byte	0x1a
	.long	0x2d6
	.uleb128 0xd
	.long	0x4b9
	.long	0x4d6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x4cb
	.uleb128 0x11
	.long	.LASF88
	.byte	0x12
	.value	0x10c
	.byte	0x21
	.long	0x4d6
	.uleb128 0xf
	.long	.LASF89
	.byte	0x13
	.byte	0x32
	.byte	0xf
	.long	0x322
	.uleb128 0xf
	.long	.LASF90
	.byte	0x13
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF91
	.byte	0x13
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF92
	.uleb128 0xf
	.long	.LASF93
	.byte	0x14
	.byte	0x19
	.byte	0x1f
	.long	0x50c
	.uleb128 0x15
	.long	.LASF115
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	0x65
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x73a
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.byte	0x24
	.byte	0x1a
	.long	0x28a
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.byte	0x24
	.byte	0x29
	.long	0x90
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x17
	.long	.LASF96
	.byte	0x1
	.byte	0x26
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.long	.Ldebug_ranges0+0
	.long	0x5e2
	.uleb128 0x17
	.long	.LASF97
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"l"
	.byte	0x1
	.byte	0x36
	.byte	0x10
	.long	0x71
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x37
	.byte	0xb
	.long	0x65
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1a
	.quad	.LVL1
	.long	0x73a
	.uleb128 0x1b
	.quad	.LVL2
	.long	0x746
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x30
	.long	0x6ab
	.uleb128 0x1d
	.long	.LASF98
	.byte	0x1
	.byte	0x46
	.byte	0xd
	.long	0x90
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.byte	0x47
	.byte	0xd
	.long	0x90
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1a
	.quad	.LVL4
	.long	0x752
	.uleb128 0x1e
	.quad	.LVL7
	.long	0x75e
	.long	0x642
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0
	.uleb128 0x1e
	.quad	.LVL9
	.long	0x76a
	.long	0x660
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL10
	.long	0x776
	.long	0x678
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL18
	.long	0x776
	.long	0x690
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL24
	.long	0x76a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL12
	.long	0x783
	.long	0x6c3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL13
	.long	0x78f
	.long	0x6ec
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
	.uleb128 0x1e
	.quad	.LVL14
	.long	0x79b
	.long	0x70e
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
	.uleb128 0x1e
	.quad	.LVL22
	.long	0x7a7
	.long	0x72c
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL26
	.long	0x7b3
	.byte	0
	.uleb128 0x1f
	.long	.LASF99
	.long	.LASF99
	.byte	0xd
	.byte	0x25
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF100
	.long	.LASF100
	.byte	0x15
	.byte	0xb0
	.byte	0x11
	.uleb128 0x1f
	.long	.LASF101
	.long	.LASF101
	.byte	0x16
	.byte	0x40
	.byte	0x7
	.uleb128 0x1f
	.long	.LASF102
	.long	.LASF102
	.byte	0x17
	.byte	0xe2
	.byte	0xe
	.uleb128 0x1f
	.long	.LASF103
	.long	.LASF103
	.byte	0x18
	.byte	0x23
	.byte	0x5
	.uleb128 0x20
	.long	.LASF104
	.long	.LASF104
	.byte	0x15
	.value	0x235
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF105
	.long	.LASF105
	.byte	0x14
	.byte	0x2c
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF106
	.long	.LASF106
	.byte	0x19
	.byte	0x33
	.byte	0xe
	.uleb128 0x1f
	.long	.LASF107
	.long	.LASF107
	.byte	0x13
	.byte	0x28
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF108
	.long	.LASF108
	.byte	0x18
	.byte	0x22
	.byte	0x5
	.uleb128 0x21
	.long	.LASF116
	.long	.LASF116
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL4-1-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL1-1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL4-1-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LFE135-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU14
	.uleb128 .LVU24
	.uleb128 .LVU67
	.uleb128 .LVU71
.LLST2:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU15
	.uleb128 .LVU24
	.uleb128 .LVU67
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU74
.LLST3:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU29
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU49
	.uleb128 .LVU61
	.uleb128 .LVU67
	.uleb128 .LVU78
	.uleb128 .LVU83
.LLST4:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL6-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL17-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL23-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU31
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU49
	.uleb128 .LVU61
	.uleb128 .LVU67
	.uleb128 .LVU78
	.uleb128 .LVU83
.LLST5:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL6-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL17-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL23-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x5f
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"shell_escape_always_quoting_style"
.LASF99:
	.string	"__errno_location"
.LASF66:
	.string	"optarg"
.LASF27:
	.string	"_old_offset"
.LASF65:
	.string	"environ"
.LASF75:
	.string	"program_name"
.LASF88:
	.string	"quoting_style_vals"
.LASF47:
	.string	"sys_nerr"
.LASF22:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF95:
	.string	"signame"
.LASF113:
	.string	"_IO_lock_t"
.LASF32:
	.string	"_offset"
.LASF57:
	.string	"__tzname"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF101:
	.string	"xstrdup"
.LASF18:
	.string	"_IO_buf_base"
.LASF36:
	.string	"_freeres_buf"
.LASF64:
	.string	"__environ"
.LASF23:
	.string	"_markers"
.LASF56:
	.string	"sys_siglist"
.LASF62:
	.string	"timezone"
.LASF61:
	.string	"daylight"
.LASF97:
	.string	"endp"
.LASF105:
	.string	"quote"
.LASF104:
	.string	"free"
.LASF50:
	.string	"_sys_errlist"
.LASF87:
	.string	"quoting_style_args"
.LASF46:
	.string	"stderr"
.LASF69:
	.string	"optopt"
.LASF51:
	.string	"long long int"
.LASF111:
	.string	"/root/coreutils"
.LASF92:
	.string	"quoting_options"
.LASF59:
	.string	"__timezone"
.LASF31:
	.string	"_lock"
.LASF58:
	.string	"__daylight"
.LASF6:
	.string	"long int"
.LASF63:
	.string	"getdate_err"
.LASF108:
	.string	"sig2str"
.LASF100:
	.string	"strtol"
.LASF28:
	.string	"_cur_column"
.LASF90:
	.string	"error_message_count"
.LASF49:
	.string	"_sys_nerr"
.LASF85:
	.string	"clocale_quoting_style"
.LASF112:
	.string	"_IO_FILE"
.LASF52:
	.string	"long double"
.LASF70:
	.string	"program_invocation_name"
.LASF2:
	.string	"unsigned char"
.LASF78:
	.string	"shell_always_quoting_style"
.LASF86:
	.string	"custom_quoting_style"
.LASF102:
	.string	"strchr"
.LASF93:
	.string	"quote_quoting_options"
.LASF4:
	.string	"signed char"
.LASF89:
	.string	"error_print_progname"
.LASF54:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned int"
.LASF41:
	.string	"_IO_marker"
.LASF30:
	.string	"_shortbuf"
.LASF13:
	.string	"_IO_read_end"
.LASF114:
	.string	"quoting_style"
.LASF15:
	.string	"_IO_write_base"
.LASF39:
	.string	"_unused2"
.LASF74:
	.string	"version_etc_copyright"
.LASF12:
	.string	"_IO_read_ptr"
.LASF25:
	.string	"_fileno"
.LASF55:
	.string	"_sys_siglist"
.LASF19:
	.string	"_IO_buf_end"
.LASF77:
	.string	"shell_quoting_style"
.LASF79:
	.string	"shell_escape_quoting_style"
.LASF81:
	.string	"c_quoting_style"
.LASF98:
	.string	"upcased"
.LASF10:
	.string	"char"
.LASF96:
	.string	"signum"
.LASF67:
	.string	"optind"
.LASF91:
	.string	"error_one_per_line"
.LASF34:
	.string	"_wide_data"
.LASF35:
	.string	"_freeres_list"
.LASF72:
	.string	"Version"
.LASF60:
	.string	"tzname"
.LASF37:
	.string	"__pad5"
.LASF103:
	.string	"str2sig"
.LASF40:
	.string	"FILE"
.LASF3:
	.string	"short unsigned int"
.LASF71:
	.string	"program_invocation_short_name"
.LASF0:
	.string	"long unsigned int"
.LASF115:
	.string	"operand2sig"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF76:
	.string	"literal_quoting_style"
.LASF8:
	.string	"__off_t"
.LASF24:
	.string	"_chain"
.LASF84:
	.string	"locale_quoting_style"
.LASF83:
	.string	"escape_quoting_style"
.LASF43:
	.string	"_IO_wide_data"
.LASF110:
	.string	"src/operand2sig.c"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF109:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF94:
	.string	"operand"
.LASF29:
	.string	"_vtable_offset"
.LASF33:
	.string	"_codecvt"
.LASF107:
	.string	"error"
.LASF20:
	.string	"_IO_save_base"
.LASF48:
	.string	"sys_errlist"
.LASF53:
	.string	"_gl_cxxalias_dummy"
.LASF68:
	.string	"opterr"
.LASF73:
	.string	"exit_failure"
.LASF116:
	.string	"__stack_chk_fail"
.LASF82:
	.string	"c_maybe_quoting_style"
.LASF106:
	.string	"dcgettext"
.LASF45:
	.string	"stdout"
.LASF42:
	.string	"_IO_codecvt"
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
