	.file	"group-list.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"failed to get groups for user %s"
	.align 8
.LC1:
	.string	"failed to get groups for the current process"
	.text
	.globl	print_group_list
	.type	print_group_list, @function
print_group_list:
.LFB46:
	.file 1 "src/group-list.c"
	.loc 1 39 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movl	%ecx, -84(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -88(%rbp)
	movl	%edx, %eax
	movb	%al, -92(%rbp)
	.loc 1 39 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 40 8
	movb	$1, -49(%rbp)
	.loc 1 41 18
	movq	$0, -32(%rbp)
	.loc 1 43 6
	cmpq	$0, -72(%rbp)
	je	.L2
	.loc 1 45 13
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	getpwuid@PLT
	movq	%rax, -32(%rbp)
	.loc 1 46 10
	cmpq	$0, -32(%rbp)
	jne	.L2
	.loc 1 47 12
	movb	$0, -49(%rbp)
.L2:
	.loc 1 50 8
	movzbl	-88(%rbp), %edx
	movl	-80(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	print_group
	.loc 1 50 7
	xorl	$1, %eax
	.loc 1 50 6
	testb	%al, %al
	je	.L3
	.loc 1 51 8
	movb	$0, -49(%rbp)
.L3:
	.loc 1 53 6
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	je	.L4
	.loc 1 55 7
	movsbl	-92(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 1 56 12
	movzbl	-88(%rbp), %edx
	movl	-84(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	print_group
	.loc 1 56 11
	xorl	$1, %eax
	.loc 1 56 10
	testb	%al, %al
	je	.L4
	.loc 1 57 12
	movb	$0, -49(%rbp)
.L4:
.LBB2:
	.loc 1 63 20
	cmpq	$0, -32(%rbp)
	je	.L5
	.loc 1 63 20 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	jmp	.L6
.L5:
	.loc 1 63 20 discriminator 2
	movl	-84(%rbp), %eax
.L6:
	.loc 1 63 20 discriminator 4
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	xgetgroups@PLT
	movl	%eax, -44(%rbp)
	.loc 1 64 8 is_stmt 1 discriminator 4
	cmpl	$0, -44(%rbp)
	jns	.L7
	.loc 1 66 12
	cmpq	$0, -72(%rbp)
	je	.L8
	.loc 1 68 13
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 1 68 30
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 68 23
	call	__errno_location@PLT
	.loc 1 68 13
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L9
.L8:
	.loc 1 73 30
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 73 23
	call	__errno_location@PLT
	.loc 1 73 13
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L9:
	.loc 1 75 16
	movl	$0, %eax
	jmp	.L10
.L7:
.LBB3:
	.loc 1 78 14
	movl	$0, -48(%rbp)
	.loc 1 78 5
	jmp	.L11
.L13:
	.loc 1 79 17
	movq	-40(%rbp), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 79 10
	cmpl	%eax, -80(%rbp)
	je	.L12
	.loc 1 79 38 discriminator 1
	movq	-40(%rbp), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 79 29 discriminator 1
	cmpl	%eax, -84(%rbp)
	je	.L12
	.loc 1 81 11
	movsbl	-92(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 1 82 16
	movzbl	-88(%rbp), %edx
	.loc 1 82 35
	movq	-40(%rbp), %rax
	movl	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	.loc 1 82 16
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	print_group
	.loc 1 82 15
	xorl	$1, %eax
	.loc 1 82 14
	testb	%al, %al
	je	.L12
	.loc 1 83 16
	movb	$0, -49(%rbp)
.L12:
	.loc 1 78 36 discriminator 2
	addl	$1, -48(%rbp)
.L11:
	.loc 1 78 5 discriminator 1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L13
.LBE3:
	.loc 1 85 5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE2:
	.loc 1 87 10
	movzbl	-49(%rbp), %eax
.L10:
	.loc 1 88 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	print_group_list, .-print_group_list
	.type	gidtostr_ptr, @function
gidtostr_ptr:
.LFB47:
	.loc 1 95 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 97 21
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 97 10
	movl	%eax, %eax
	leaq	buf.6344(%rip), %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	.loc 1 98 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	gidtostr_ptr, .-gidtostr_ptr
	.section	.rodata
	.align 8
.LC2:
	.string	"cannot find name for group ID %lu"
	.text
	.globl	print_group
	.type	print_group, @function
print_group:
.LFB48:
	.loc 1 104 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movl	%esi, %eax
	movb	%al, -56(%rbp)
	.loc 1 105 17
	movq	$0, -32(%rbp)
	.loc 1 106 8
	movb	$1, -33(%rbp)
	.loc 1 108 6
	cmpb	$0, -56(%rbp)
	je	.L18
	.loc 1 110 13
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	getgrgid@PLT
	movq	%rax, -32(%rbp)
	.loc 1 111 10
	cmpq	$0, -32(%rbp)
	jne	.L18
	.loc 1 113 11
	movl	-52(%rbp), %eax
	movl	%eax, %ebx
	.loc 1 113 24
	leaq	.LC2(%rip), %rdi
	call	gettext@PLT
	.loc 1 113 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 115 14
	movb	$0, -33(%rbp)
.L18:
	.loc 1 119 32
	cmpq	$0, -32(%rbp)
	je	.L19
	.loc 1 119 32 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L20
.L19:
	.loc 1 119 34 is_stmt 1 discriminator 2
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	gidtostr_ptr
.L20:
	.loc 1 119 9 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 1 120 3 discriminator 4
	movq	stdout(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 121 10 discriminator 4
	movzbl	-33(%rbp), %eax
	.loc 1 122 1 discriminator 4
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	print_group, .-print_group
	.local	buf.6344
	.comm	buf.6344,21,16
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 9 "./lib/sys/select.h"
	.file 10 "/usr/include/pwd.h"
	.file 11 "/usr/include/grp.h"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/signal.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 16 "/usr/include/errno.h"
	.file 17 "src/version.h"
	.file 18 "./lib/exitfail.h"
	.file 19 "/usr/include/stdint.h"
	.file 20 "./lib/version-etc.h"
	.file 21 "./lib/progname.h"
	.file 22 "./lib/quotearg.h"
	.file 23 "./lib/error.h"
	.file 24 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7e6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF126
	.byte	0xc
	.long	.LASF127
	.long	.LASF128
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
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x8
	.long	0xba
	.uleb128 0x9
	.long	.LASF60
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x24d
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xb4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xb4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xb4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xb4
	.byte	0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xb4
	.byte	0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xb4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x266
	.byte	0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x26c
	.byte	0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x9c
	.byte	0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x272
	.byte	0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x282
	.byte	0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xa8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x28d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x298
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x26c
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x29e
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xc6
	.uleb128 0xb
	.long	.LASF129
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x261
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0xd
	.long	0xba
	.long	0x282
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x259
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x288
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x293
	.uleb128 0xd
	.long	0xba
	.long	0x2ae
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xc1
	.uleb128 0x8
	.long	0x2ae
	.uleb128 0xf
	.long	.LASF47
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2c5
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xf
	.long	.LASF48
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2c5
	.uleb128 0xf
	.long	.LASF49
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2c5
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2b4
	.long	0x2fa
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2ef
	.uleb128 0xf
	.long	.LASF51
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2fa
	.uleb128 0xf
	.long	.LASF52
	.byte	0x7
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF53
	.byte	0x7
	.byte	0x1f
	.byte	0x1a
	.long	0x2fa
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
	.byte	0x8
	.byte	0x40
	.byte	0x11
	.long	0x90
	.uleb128 0x8
	.long	0x331
	.uleb128 0x2
	.long	.LASF57
	.byte	0x8
	.byte	0x4f
	.byte	0x11
	.long	0x84
	.uleb128 0x11
	.long	.LASF58
	.byte	0x9
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF59
	.uleb128 0x9
	.long	.LASF61
	.byte	0x30
	.byte	0xa
	.byte	0x31
	.byte	0x8
	.long	0x3cb
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x33
	.byte	0x9
	.long	0xb4
	.byte	0
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x34
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF64
	.byte	0xa
	.byte	0x36
	.byte	0xb
	.long	0x84
	.byte	0x10
	.uleb128 0xa
	.long	.LASF65
	.byte	0xa
	.byte	0x37
	.byte	0xb
	.long	0x90
	.byte	0x14
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x20
	.byte	0xb
	.byte	0x2a
	.byte	0x8
	.long	0x40d
	.uleb128 0xa
	.long	.LASF70
	.byte	0xb
	.byte	0x2c
	.byte	0xb
	.long	0xb4
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0xb
	.byte	0x2d
	.byte	0xb
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF72
	.byte	0xb
	.byte	0x2e
	.byte	0xd
	.long	0x90
	.byte	0x10
	.uleb128 0xa
	.long	.LASF73
	.byte	0xb
	.byte	0x2f
	.byte	0xc
	.long	0x40d
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb4
	.uleb128 0xd
	.long	0xb4
	.long	0x423
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF74
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x413
	.uleb128 0xf
	.long	.LASF75
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF76
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF77
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x413
	.uleb128 0xf
	.long	.LASF78
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF79
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF80
	.byte	0xc
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x478
	.uleb128 0xd
	.long	0x2b4
	.long	0x48f
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x47f
	.uleb128 0x11
	.long	.LASF81
	.byte	0xd
	.value	0x11e
	.byte	0x1a
	.long	0x48f
	.uleb128 0x11
	.long	.LASF82
	.byte	0xd
	.value	0x11f
	.byte	0x1a
	.long	0x48f
	.uleb128 0x11
	.long	.LASF83
	.byte	0xe
	.value	0x21f
	.byte	0xf
	.long	0x40d
	.uleb128 0x11
	.long	.LASF84
	.byte	0xe
	.value	0x221
	.byte	0xf
	.long	0x40d
	.uleb128 0xf
	.long	.LASF85
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF86
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF87
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF88
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF89
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF90
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF91
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2ae
	.uleb128 0xf
	.long	.LASF92
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF93
	.byte	0x13
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0xd
	.long	0xc1
	.long	0x53f
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x534
	.uleb128 0xf
	.long	.LASF94
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x53f
	.uleb128 0xf
	.long	.LASF95
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x2ae
	.uleb128 0x13
	.long	.LASF130
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x5b1
	.uleb128 0x14
	.long	.LASF96
	.byte	0
	.uleb128 0x14
	.long	.LASF97
	.byte	0x1
	.uleb128 0x14
	.long	.LASF98
	.byte	0x2
	.uleb128 0x14
	.long	.LASF99
	.byte	0x3
	.uleb128 0x14
	.long	.LASF100
	.byte	0x4
	.uleb128 0x14
	.long	.LASF101
	.byte	0x5
	.uleb128 0x14
	.long	.LASF102
	.byte	0x6
	.uleb128 0x14
	.long	.LASF103
	.byte	0x7
	.uleb128 0x14
	.long	.LASF104
	.byte	0x8
	.uleb128 0x14
	.long	.LASF105
	.byte	0x9
	.uleb128 0x14
	.long	.LASF106
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x55c
	.uleb128 0x11
	.long	.LASF107
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x2fa
	.uleb128 0xd
	.long	0x5b1
	.long	0x5ce
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5c3
	.uleb128 0x11
	.long	.LASF108
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x5ce
	.uleb128 0xf
	.long	.LASF109
	.byte	0x17
	.byte	0x32
	.byte	0xf
	.long	0x479
	.uleb128 0xf
	.long	.LASF110
	.byte	0x17
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF111
	.byte	0x17
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF112
	.uleb128 0xf
	.long	.LASF113
	.byte	0x18
	.byte	0x19
	.byte	0x1f
	.long	0x604
	.uleb128 0x15
	.long	.LASF116
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.long	0x682
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x682
	.uleb128 0x16
	.string	"gid"
	.byte	0x1
	.byte	0x67
	.byte	0x14
	.long	0x331
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.byte	0x67
	.byte	0x1e
	.long	0x682
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"grp"
	.byte	0x1
	.byte	0x69
	.byte	0x11
	.long	0x689
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"ok"
	.byte	0x1
	.byte	0x6a
	.byte	0x8
	.long	0x682
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x77
	.byte	0x9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF115
	.uleb128 0x7
	.byte	0x8
	.long	0x3cb
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0xb4
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d7
	.uleb128 0x16
	.string	"gid"
	.byte	0x1
	.byte	0x5e
	.byte	0x1c
	.long	0x6d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0x60
	.byte	0xf
	.long	0x6dd
	.uleb128 0x9
	.byte	0x3
	.quad	buf.6344
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x33d
	.uleb128 0xd
	.long	0xba
	.long	0x6ed
	.uleb128 0xe
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x15
	.long	.LASF117
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	0x682
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x7dd
	.uleb128 0x17
	.long	.LASF118
	.byte	0x1
	.byte	0x24
	.byte	0x1f
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.long	.LASF119
	.byte	0x1
	.byte	0x25
	.byte	0x19
	.long	0x342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x17
	.long	.LASF120
	.byte	0x1
	.byte	0x25
	.byte	0x25
	.long	0x331
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.long	.LASF121
	.byte	0x1
	.byte	0x25
	.byte	0x31
	.long	0x331
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x17
	.long	.LASF122
	.byte	0x1
	.byte	0x26
	.byte	0x18
	.long	0x682
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.long	.LASF123
	.byte	0x1
	.byte	0x26
	.byte	0x28
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x18
	.string	"ok"
	.byte	0x1
	.byte	0x28
	.byte	0x8
	.long	0x682
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x18
	.string	"pwd"
	.byte	0x1
	.byte	0x29
	.byte	0x12
	.long	0x7dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x1
	.byte	0x3d
	.byte	0xc
	.long	0x7e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF125
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.byte	0xe
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x362
	.uleb128 0x7
	.byte	0x8
	.long	0x331
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF92:
	.string	"exit_failure"
.LASF11:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF104:
	.string	"locale_quoting_style"
.LASF27:
	.string	"_chain"
.LASF130:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF33:
	.string	"_shortbuf"
.LASF65:
	.string	"pw_gid"
.LASF97:
	.string	"shell_quoting_style"
.LASF21:
	.string	"_IO_buf_base"
.LASF119:
	.string	"ruid"
.LASF59:
	.string	"long long unsigned int"
.LASF36:
	.string	"_codecvt"
.LASF10:
	.string	"__gid_t"
.LASF68:
	.string	"pw_shell"
.LASF76:
	.string	"__timezone"
.LASF54:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF108:
	.string	"quoting_style_vals"
.LASF93:
	.string	"uintmax_t"
.LASF103:
	.string	"escape_quoting_style"
.LASF96:
	.string	"literal_quoting_style"
.LASF28:
	.string	"_fileno"
.LASF123:
	.string	"delim"
.LASF69:
	.string	"group"
.LASF82:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF58:
	.string	"_gl_cxxalias_dummy"
.LASF14:
	.string	"_flags"
.LASF37:
	.string	"_wide_data"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF90:
	.string	"program_invocation_short_name"
.LASF101:
	.string	"c_quoting_style"
.LASF45:
	.string	"_IO_codecvt"
.LASF53:
	.string	"_sys_errlist"
.LASF89:
	.string	"program_invocation_name"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF56:
	.string	"gid_t"
.LASF100:
	.string	"shell_escape_always_quoting_style"
.LASF79:
	.string	"timezone"
.LASF95:
	.string	"program_name"
.LASF73:
	.string	"gr_mem"
.LASF47:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF117:
	.string	"print_group_list"
.LASF39:
	.string	"_freeres_buf"
.LASF71:
	.string	"gr_passwd"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF50:
	.string	"sys_nerr"
.LASF57:
	.string	"uid_t"
.LASF126:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF106:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF111:
	.string	"error_one_per_line"
.LASF91:
	.string	"Version"
.LASF23:
	.string	"_IO_save_base"
.LASF84:
	.string	"environ"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF118:
	.string	"username"
.LASF48:
	.string	"stdout"
.LASF63:
	.string	"pw_passwd"
.LASF94:
	.string	"version_etc_copyright"
.LASF16:
	.string	"_IO_read_end"
.LASF85:
	.string	"optarg"
.LASF114:
	.string	"use_name"
.LASF80:
	.string	"getdate_err"
.LASF86:
	.string	"optind"
.LASF122:
	.string	"use_names"
.LASF20:
	.string	"_IO_write_end"
.LASF129:
	.string	"_IO_lock_t"
.LASF60:
	.string	"_IO_FILE"
.LASF109:
	.string	"error_print_progname"
.LASF124:
	.string	"groups"
.LASF83:
	.string	"__environ"
.LASF75:
	.string	"__daylight"
.LASF41:
	.string	"_mode"
.LASF44:
	.string	"_IO_marker"
.LASF51:
	.string	"sys_errlist"
.LASF26:
	.string	"_markers"
.LASF120:
	.string	"rgid"
.LASF67:
	.string	"pw_dir"
.LASF102:
	.string	"c_maybe_quoting_style"
.LASF115:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF131:
	.string	"gidtostr_ptr"
.LASF70:
	.string	"gr_name"
.LASF5:
	.string	"short int"
.LASF113:
	.string	"quote_quoting_options"
.LASF52:
	.string	"_sys_nerr"
.LASF77:
	.string	"tzname"
.LASF61:
	.string	"passwd"
.LASF43:
	.string	"FILE"
.LASF99:
	.string	"shell_escape_quoting_style"
.LASF127:
	.string	"src/group-list.c"
.LASF107:
	.string	"quoting_style_args"
.LASF88:
	.string	"optopt"
.LASF78:
	.string	"daylight"
.LASF121:
	.string	"egid"
.LASF55:
	.string	"long double"
.LASF125:
	.string	"n_groups"
.LASF13:
	.string	"char"
.LASF98:
	.string	"shell_always_quoting_style"
.LASF66:
	.string	"pw_gecos"
.LASF105:
	.string	"clocale_quoting_style"
.LASF87:
	.string	"opterr"
.LASF9:
	.string	"__uid_t"
.LASF8:
	.string	"__uintmax_t"
.LASF12:
	.string	"__off64_t"
.LASF112:
	.string	"quoting_options"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF81:
	.string	"_sys_siglist"
.LASF40:
	.string	"__pad5"
.LASF42:
	.string	"_unused2"
.LASF49:
	.string	"stderr"
.LASF62:
	.string	"pw_name"
.LASF128:
	.string	"/root/coreutils"
.LASF24:
	.string	"_IO_backup_base"
.LASF72:
	.string	"gr_gid"
.LASF110:
	.string	"error_message_count"
.LASF64:
	.string	"pw_uid"
.LASF32:
	.string	"_vtable_offset"
.LASF38:
	.string	"_freeres_list"
.LASF46:
	.string	"_IO_wide_data"
.LASF74:
	.string	"__tzname"
.LASF18:
	.string	"_IO_write_base"
.LASF116:
	.string	"print_group"
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
