	.file	"cp-hash.c"
	.text
.Ltext0:
	.local	src_to_dest
	.comm	src_to_dest,8,8
	.type	src_to_dest_hash, @function
src_to_dest_hash:
.LFB46:
	.file 1 "src/cp-hash.c"
	.loc 1 52 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 53 29
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 58 23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 58 32
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, %rax
	.loc 1 59 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	src_to_dest_hash, .-src_to_dest_hash
	.type	src_to_dest_compare, @function
src_to_dest_compare:
.LFB47:
	.loc 1 65 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 66 29
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 67 29
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 68 10
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 68 37
	cmpq	%rax, %rdx
	jne	.L4
	.loc 1 68 10 discriminator 1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 68 37 discriminator 1
	cmpq	%rax, %rdx
	jne	.L4
	.loc 1 68 37 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L5
.L4:
	.loc 1 68 37 discriminator 4
	movl	$0, %eax
.L5:
	.loc 1 68 37 discriminator 6
	andl	$1, %eax
	.loc 1 69 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	src_to_dest_compare, .-src_to_dest_compare
	.type	src_to_dest_free, @function
src_to_dest_free:
.LFB48:
	.loc 1 73 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 1 74 23
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 75 10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 75 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 76 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 77 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	src_to_dest_free, .-src_to_dest_free
	.globl	forget_created
	.type	forget_created, @function
forget_created:
.LFB49:
	.loc 1 83 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 1 83 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 87 16
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 88 16
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 89 14
	movq	$0, -16(%rbp)
	.loc 1 91 9
	movq	src_to_dest(%rip), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_remove@PLT
	movq	%rax, -40(%rbp)
	.loc 1 92 6
	cmpq	$0, -40(%rbp)
	je	.L11
	.loc 1 93 5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	src_to_dest_free
.L11:
	.loc 1 94 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	forget_created, .-forget_created
	.globl	src_to_dest_lookup
	.type	src_to_dest_lookup, @function
src_to_dest_lookup:
.LFB50:
	.loc 1 101 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 1 101 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 104 14
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 1 105 14
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 106 7
	movq	src_to_dest(%rip), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_lookup@PLT
	movq	%rax, -40(%rbp)
	.loc 1 107 22
	cmpq	$0, -40(%rbp)
	je	.L13
	.loc 1 107 22 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L15
.L13:
	.loc 1 107 22 discriminator 2
	movl	$0, %eax
.L15:
	.loc 1 108 1 is_stmt 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	src_to_dest_lookup, .-src_to_dest_lookup
	.globl	remember_copied
	.type	remember_copied, @function
remember_copied:
.LFB51:
	.loc 1 116 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 120 9
	movl	$24, %edi
	call	xmalloc@PLT
	movq	%rax, -16(%rbp)
	.loc 1 121 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, %rdx
	.loc 1 121 13
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 1 122 15
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 1 123 15
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 125 20
	movq	src_to_dest(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_insert@PLT
	movq	%rax, -8(%rbp)
	.loc 1 126 6
	cmpq	$0, -8(%rbp)
	jne	.L18
	.loc 1 129 7
	call	xalloc_die@PLT
.L18:
	.loc 1 135 6
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L19
	.loc 1 137 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	src_to_dest_free
	.loc 1 138 14
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L20
.L19:
	.loc 1 142 10
	movl	$0, %eax
.L20:
	.loc 1 143 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	remember_copied, .-remember_copied
	.globl	hash_init
	.type	hash_init, @function
hash_init:
.LFB52:
	.loc 1 148 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 149 17
	leaq	src_to_dest_free(%rip), %r8
	leaq	src_to_dest_compare(%rip), %rcx
	leaq	src_to_dest_hash(%rip), %rdx
	movl	$0, %esi
	movl	$103, %edi
	call	hash_initialize@PLT
	.loc 1 149 15
	movq	%rax, src_to_dest(%rip)
	.loc 1 153 19
	movq	src_to_dest(%rip), %rax
	.loc 1 153 6
	testq	%rax, %rax
	jne	.L23
	.loc 1 154 5
	call	xalloc_die@PLT
.L23:
	.loc 1 155 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	hash_init, .-hash_init
	.globl	forget_all
	.type	forget_all, @function
forget_all:
.LFB53:
	.loc 1 162 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 163 3
	movq	src_to_dest(%rip), %rax
	movq	%rax, %rdi
	call	hash_free@PLT
	.loc 1 164 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	forget_all, .-forget_all
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "./lib/sys/select.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/include/signal.h"
	.file 9 "/usr/include/unistd.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 11 "/usr/include/errno.h"
	.file 12 "src/version.h"
	.file 13 "./lib/exitfail.h"
	.file 14 "/usr/include/stdint.h"
	.file 15 "./lib/timespec.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 18 "/usr/include/stdio.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 20 "./lib/version-etc.h"
	.file 21 "./lib/progname.h"
	.file 22 "./lib/quotearg.h"
	.file 23 "./lib/hash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x829
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF118
	.byte	0xc
	.long	.LASF119
	.long	.LASF120
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
	.byte	0x2
	.byte	0x49
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0x91
	.byte	0x19
	.long	0x42
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0x94
	.byte	0x19
	.long	0x42
	.uleb128 0x5
	.long	.LASF10
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x8
	.long	0xba
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0x2f
	.byte	0x11
	.long	0x82
	.uleb128 0x5
	.long	.LASF15
	.byte	0x3
	.byte	0x3b
	.byte	0x11
	.long	0x76
	.uleb128 0x5
	.long	.LASF16
	.byte	0x4
	.byte	0x7
	.byte	0x12
	.long	0xa6
	.uleb128 0x5
	.long	.LASF17
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF18
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF19
	.uleb128 0x7
	.byte	0x8
	.long	0xc1
	.uleb128 0x8
	.long	0x111
	.uleb128 0xa
	.long	0xb4
	.long	0x12c
	.uleb128 0xb
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0x11c
	.uleb128 0xc
	.long	.LASF22
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF23
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xc
	.long	.LASF24
	.byte	0x7
	.byte	0xa6
	.byte	0xe
	.long	0x11c
	.uleb128 0xc
	.long	.LASF25
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF26
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF28
	.uleb128 0xa
	.long	0x117
	.long	0x198
	.uleb128 0xb
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x188
	.uleb128 0x9
	.long	.LASF29
	.byte	0x8
	.value	0x11e
	.byte	0x1a
	.long	0x198
	.uleb128 0x9
	.long	.LASF30
	.byte	0x8
	.value	0x11f
	.byte	0x1a
	.long	0x198
	.uleb128 0x9
	.long	.LASF31
	.byte	0x9
	.value	0x21f
	.byte	0xf
	.long	0x1c4
	.uleb128 0x7
	.byte	0x8
	.long	0xb4
	.uleb128 0x9
	.long	.LASF32
	.byte	0x9
	.value	0x221
	.byte	0xf
	.long	0x1c4
	.uleb128 0xc
	.long	.LASF33
	.byte	0xa
	.byte	0x24
	.byte	0xe
	.long	0xb4
	.uleb128 0xc
	.long	.LASF34
	.byte	0xa
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF35
	.byte	0xa
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF36
	.byte	0xa
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF37
	.byte	0xb
	.byte	0x2d
	.byte	0xe
	.long	0xb4
	.uleb128 0xc
	.long	.LASF38
	.byte	0xb
	.byte	0x2e
	.byte	0xe
	.long	0xb4
	.uleb128 0x7
	.byte	0x8
	.long	0x225
	.uleb128 0xd
	.uleb128 0xc
	.long	.LASF39
	.byte	0xc
	.byte	0x1
	.byte	0x14
	.long	0x111
	.uleb128 0xc
	.long	.LASF40
	.byte	0xd
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x5
	.long	.LASF41
	.byte	0xe
	.byte	0x66
	.byte	0x16
	.long	0x6a
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xf
	.byte	0x29
	.byte	0x6
	.long	0x262
	.uleb128 0xf
	.long	.LASF42
	.long	0x3b9aca00
	.byte	0
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xf
	.byte	0x2a
	.byte	0x6
	.long	0x277
	.uleb128 0x10
	.long	.LASF43
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.long	.LASF103
	.byte	0xd8
	.byte	0x10
	.byte	0x31
	.byte	0x8
	.long	0x3fe
	.uleb128 0x12
	.long	.LASF44
	.byte	0x10
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x12
	.long	.LASF45
	.byte	0x10
	.byte	0x36
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0x12
	.long	.LASF46
	.byte	0x10
	.byte	0x37
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.uleb128 0x12
	.long	.LASF47
	.byte	0x10
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0x12
	.long	.LASF48
	.byte	0x10
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0x12
	.long	.LASF49
	.byte	0x10
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.uleb128 0x12
	.long	.LASF50
	.byte	0x10
	.byte	0x3b
	.byte	0x9
	.long	0xb4
	.byte	0x30
	.uleb128 0x12
	.long	.LASF51
	.byte	0x10
	.byte	0x3c
	.byte	0x9
	.long	0xb4
	.byte	0x38
	.uleb128 0x12
	.long	.LASF52
	.byte	0x10
	.byte	0x3d
	.byte	0x9
	.long	0xb4
	.byte	0x40
	.uleb128 0x12
	.long	.LASF53
	.byte	0x10
	.byte	0x40
	.byte	0x9
	.long	0xb4
	.byte	0x48
	.uleb128 0x12
	.long	.LASF54
	.byte	0x10
	.byte	0x41
	.byte	0x9
	.long	0xb4
	.byte	0x50
	.uleb128 0x12
	.long	.LASF55
	.byte	0x10
	.byte	0x42
	.byte	0x9
	.long	0xb4
	.byte	0x58
	.uleb128 0x12
	.long	.LASF56
	.byte	0x10
	.byte	0x44
	.byte	0x16
	.long	0x417
	.byte	0x60
	.uleb128 0x12
	.long	.LASF57
	.byte	0x10
	.byte	0x46
	.byte	0x14
	.long	0x41d
	.byte	0x68
	.uleb128 0x12
	.long	.LASF58
	.byte	0x10
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x12
	.long	.LASF59
	.byte	0x10
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x12
	.long	.LASF60
	.byte	0x10
	.byte	0x4a
	.byte	0xb
	.long	0x8e
	.byte	0x78
	.uleb128 0x12
	.long	.LASF61
	.byte	0x10
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0x12
	.long	.LASF62
	.byte	0x10
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0x12
	.long	.LASF63
	.byte	0x10
	.byte	0x4f
	.byte	0x8
	.long	0x423
	.byte	0x83
	.uleb128 0x12
	.long	.LASF64
	.byte	0x10
	.byte	0x51
	.byte	0xf
	.long	0x433
	.byte	0x88
	.uleb128 0x12
	.long	.LASF65
	.byte	0x10
	.byte	0x59
	.byte	0xd
	.long	0x9a
	.byte	0x90
	.uleb128 0x12
	.long	.LASF66
	.byte	0x10
	.byte	0x5b
	.byte	0x17
	.long	0x43e
	.byte	0x98
	.uleb128 0x12
	.long	.LASF67
	.byte	0x10
	.byte	0x5c
	.byte	0x19
	.long	0x449
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF68
	.byte	0x10
	.byte	0x5d
	.byte	0x14
	.long	0x41d
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF69
	.byte	0x10
	.byte	0x5e
	.byte	0x9
	.long	0xb2
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF70
	.byte	0x10
	.byte	0x5f
	.byte	0xa
	.long	0xea
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF71
	.byte	0x10
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF72
	.byte	0x10
	.byte	0x62
	.byte	0x8
	.long	0x44f
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF73
	.byte	0x11
	.byte	0x7
	.byte	0x19
	.long	0x277
	.uleb128 0x13
	.long	.LASF121
	.byte	0x10
	.byte	0x2b
	.byte	0xe
	.uleb128 0x14
	.long	.LASF74
	.uleb128 0x7
	.byte	0x8
	.long	0x412
	.uleb128 0x7
	.byte	0x8
	.long	0x277
	.uleb128 0xa
	.long	0xba
	.long	0x433
	.uleb128 0xb
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x40a
	.uleb128 0x14
	.long	.LASF75
	.uleb128 0x7
	.byte	0x8
	.long	0x439
	.uleb128 0x14
	.long	.LASF76
	.uleb128 0x7
	.byte	0x8
	.long	0x444
	.uleb128 0xa
	.long	0xba
	.long	0x45f
	.uleb128 0xb
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.long	.LASF77
	.byte	0x12
	.byte	0x89
	.byte	0xe
	.long	0x46b
	.uleb128 0x7
	.byte	0x8
	.long	0x3fe
	.uleb128 0xc
	.long	.LASF78
	.byte	0x12
	.byte	0x8a
	.byte	0xe
	.long	0x46b
	.uleb128 0xc
	.long	.LASF79
	.byte	0x12
	.byte	0x8b
	.byte	0xe
	.long	0x46b
	.uleb128 0xc
	.long	.LASF80
	.byte	0x13
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	0x117
	.long	0x4a0
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.long	0x495
	.uleb128 0xc
	.long	.LASF81
	.byte	0x13
	.byte	0x1b
	.byte	0x1a
	.long	0x4a0
	.uleb128 0xc
	.long	.LASF82
	.byte	0x13
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF83
	.byte	0x13
	.byte	0x1f
	.byte	0x1a
	.long	0x4a0
	.uleb128 0xa
	.long	0xc1
	.long	0x4d4
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.long	0x4c9
	.uleb128 0xc
	.long	.LASF84
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x4d4
	.uleb128 0xc
	.long	.LASF85
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x111
	.uleb128 0x16
	.long	.LASF122
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x546
	.uleb128 0x10
	.long	.LASF86
	.byte	0
	.uleb128 0x10
	.long	.LASF87
	.byte	0x1
	.uleb128 0x10
	.long	.LASF88
	.byte	0x2
	.uleb128 0x10
	.long	.LASF89
	.byte	0x3
	.uleb128 0x10
	.long	.LASF90
	.byte	0x4
	.uleb128 0x10
	.long	.LASF91
	.byte	0x5
	.uleb128 0x10
	.long	.LASF92
	.byte	0x6
	.uleb128 0x10
	.long	.LASF93
	.byte	0x7
	.uleb128 0x10
	.long	.LASF94
	.byte	0x8
	.uleb128 0x10
	.long	.LASF95
	.byte	0x9
	.uleb128 0x10
	.long	.LASF96
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x4f1
	.uleb128 0x9
	.long	.LASF97
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x4a0
	.uleb128 0xa
	.long	0x546
	.long	0x563
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.long	0x558
	.uleb128 0x9
	.long	.LASF98
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x563
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF99
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF100
	.uleb128 0x5
	.long	.LASF101
	.byte	0x17
	.byte	0x32
	.byte	0x1b
	.long	0x58f
	.uleb128 0x14
	.long	.LASF102
	.uleb128 0x11
	.long	.LASF104
	.byte	0x18
	.byte	0x1
	.byte	0x21
	.byte	0x8
	.long	0x5c9
	.uleb128 0x12
	.long	.LASF105
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.long	0xc6
	.byte	0
	.uleb128 0x12
	.long	.LASF106
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.long	0xd2
	.byte	0x8
	.uleb128 0x12
	.long	.LASF107
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x594
	.uleb128 0x17
	.long	.LASF110
	.byte	0x1
	.byte	0x2d
	.byte	0x14
	.long	0x5e4
	.uleb128 0x9
	.byte	0x3
	.quad	src_to_dest
	.uleb128 0x7
	.byte	0x8
	.long	0x583
	.uleb128 0x18
	.long	.LASF108
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF109
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF112
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.long	0xb4
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x68c
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.byte	0x73
	.byte	0x1e
	.long	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"ino"
	.byte	0x1
	.byte	0x73
	.byte	0x2a
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"dev"
	.byte	0x1
	.byte	0x73
	.byte	0x35
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"ent"
	.byte	0x1
	.byte	0x75
	.byte	0x17
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF111
	.byte	0x1
	.byte	0x76
	.byte	0x17
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x594
	.uleb128 0x19
	.long	.LASF113
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.long	0xb4
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f1
	.uleb128 0x1b
	.string	"ino"
	.byte	0x1
	.byte	0x64
	.byte	0x1b
	.long	0xc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"dev"
	.byte	0x1
	.byte	0x64
	.byte	0x26
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.string	"ent"
	.byte	0x1
	.byte	0x66
	.byte	0x16
	.long	0x594
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"e"
	.byte	0x1
	.byte	0x67
	.byte	0x1d
	.long	0x6f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5c9
	.uleb128 0x1d
	.long	.LASF123
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x754
	.uleb128 0x1b
	.string	"ino"
	.byte	0x1
	.byte	0x52
	.byte	0x17
	.long	0xc6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"dev"
	.byte	0x1
	.byte	0x52
	.byte	0x22
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.byte	0x54
	.byte	0x16
	.long	0x594
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"ent"
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1e
	.long	.LASF115
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x78d
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0x48
	.byte	0x19
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.byte	0x4a
	.byte	0x17
	.long	0x68c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF124
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	0x57c
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e4
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0x40
	.byte	0x22
	.long	0x21f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.byte	0x40
	.byte	0x31
	.long	0x21f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.byte	0x42
	.byte	0x1d
	.long	0x6f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.byte	0x43
	.byte	0x1d
	.long	0x6f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF116
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0xea
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0x33
	.byte	0x1f
	.long	0x21f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.byte	0x33
	.byte	0x29
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0x35
	.byte	0x1d
	.long	0x6f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
.LASF40:
	.string	"exit_failure"
.LASF10:
	.string	"__off_t"
.LASF102:
	.string	"hash_table"
.LASF45:
	.string	"_IO_read_ptr"
.LASF94:
	.string	"locale_quoting_style"
.LASF122:
	.string	"quoting_style"
.LASF17:
	.string	"size_t"
.LASF43:
	.string	"LOG10_TIMESPEC_HZ"
.LASF63:
	.string	"_shortbuf"
.LASF87:
	.string	"shell_quoting_style"
.LASF51:
	.string	"_IO_buf_base"
.LASF18:
	.string	"long long unsigned int"
.LASF113:
	.string	"src_to_dest_lookup"
.LASF66:
	.string	"_codecvt"
.LASF119:
	.string	"src/cp-hash.c"
.LASF112:
	.string	"remember_copied"
.LASF23:
	.string	"__timezone"
.LASF19:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF98:
	.string	"quoting_style_vals"
.LASF41:
	.string	"uintmax_t"
.LASF93:
	.string	"escape_quoting_style"
.LASF86:
	.string	"literal_quoting_style"
.LASF58:
	.string	"_fileno"
.LASF46:
	.string	"_IO_read_end"
.LASF30:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF20:
	.string	"_gl_cxxalias_dummy"
.LASF110:
	.string	"src_to_dest"
.LASF44:
	.string	"_flags"
.LASF67:
	.string	"_wide_data"
.LASF52:
	.string	"_IO_buf_end"
.LASF61:
	.string	"_cur_column"
.LASF38:
	.string	"program_invocation_short_name"
.LASF91:
	.string	"c_quoting_style"
.LASF75:
	.string	"_IO_codecvt"
.LASF117:
	.string	"table_size"
.LASF83:
	.string	"_sys_errlist"
.LASF37:
	.string	"program_invocation_name"
.LASF60:
	.string	"_old_offset"
.LASF65:
	.string	"_offset"
.LASF116:
	.string	"src_to_dest_hash"
.LASF42:
	.string	"TIMESPEC_HZ"
.LASF90:
	.string	"shell_escape_always_quoting_style"
.LASF26:
	.string	"timezone"
.LASF8:
	.string	"__dev_t"
.LASF85:
	.string	"program_name"
.LASF74:
	.string	"_IO_marker"
.LASF77:
	.string	"stdin"
.LASF114:
	.string	"probe"
.LASF2:
	.string	"unsigned int"
.LASF69:
	.string	"_freeres_buf"
.LASF3:
	.string	"long unsigned int"
.LASF49:
	.string	"_IO_write_ptr"
.LASF107:
	.string	"name"
.LASF80:
	.string	"sys_nerr"
.LASF118:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF96:
	.string	"custom_quoting_style"
.LASF1:
	.string	"short unsigned int"
.LASF39:
	.string	"Version"
.LASF53:
	.string	"_IO_save_base"
.LASF32:
	.string	"environ"
.LASF64:
	.string	"_lock"
.LASF59:
	.string	"_flags2"
.LASF71:
	.string	"_mode"
.LASF78:
	.string	"stdout"
.LASF84:
	.string	"version_etc_copyright"
.LASF33:
	.string	"optarg"
.LASF27:
	.string	"getdate_err"
.LASF34:
	.string	"optind"
.LASF50:
	.string	"_IO_write_end"
.LASF115:
	.string	"src_to_dest_free"
.LASF121:
	.string	"_IO_lock_t"
.LASF103:
	.string	"_IO_FILE"
.LASF5:
	.string	"short int"
.LASF15:
	.string	"dev_t"
.LASF31:
	.string	"__environ"
.LASF16:
	.string	"time_t"
.LASF99:
	.string	"float"
.LASF81:
	.string	"sys_errlist"
.LASF56:
	.string	"_markers"
.LASF108:
	.string	"forget_all"
.LASF92:
	.string	"c_maybe_quoting_style"
.LASF100:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF105:
	.string	"st_ino"
.LASF57:
	.string	"_chain"
.LASF82:
	.string	"_sys_nerr"
.LASF62:
	.string	"_vtable_offset"
.LASF24:
	.string	"tzname"
.LASF123:
	.string	"forget_created"
.LASF73:
	.string	"FILE"
.LASF89:
	.string	"shell_escape_quoting_style"
.LASF9:
	.string	"__ino_t"
.LASF97:
	.string	"quoting_style_args"
.LASF36:
	.string	"optopt"
.LASF25:
	.string	"daylight"
.LASF28:
	.string	"long double"
.LASF13:
	.string	"char"
.LASF88:
	.string	"shell_always_quoting_style"
.LASF95:
	.string	"clocale_quoting_style"
.LASF101:
	.string	"Hash_table"
.LASF35:
	.string	"opterr"
.LASF7:
	.string	"__uintmax_t"
.LASF11:
	.string	"__off64_t"
.LASF47:
	.string	"_IO_read_base"
.LASF55:
	.string	"_IO_save_end"
.LASF29:
	.string	"_sys_siglist"
.LASF104:
	.string	"Src_to_dest"
.LASF70:
	.string	"__pad5"
.LASF12:
	.string	"__time_t"
.LASF72:
	.string	"_unused2"
.LASF79:
	.string	"stderr"
.LASF22:
	.string	"__daylight"
.LASF120:
	.string	"/root/coreutils"
.LASF106:
	.string	"st_dev"
.LASF54:
	.string	"_IO_backup_base"
.LASF124:
	.string	"src_to_dest_compare"
.LASF111:
	.string	"ent_from_table"
.LASF68:
	.string	"_freeres_list"
.LASF76:
	.string	"_IO_wide_data"
.LASF21:
	.string	"__tzname"
.LASF48:
	.string	"_IO_write_base"
.LASF109:
	.string	"hash_init"
.LASF14:
	.string	"ino_t"
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
